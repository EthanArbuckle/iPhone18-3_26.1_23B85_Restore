uint64_t sub_1002C9284()
{
  LODWORD(STACK[0xCD74]) = v1;
  v2 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * (v0 - 20897));
  return (*(v2 + 8 * ((v0 ^ 0x52C3) + v0 - 20897)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_1002C92F4@<X0>(_BYTE *a1@<X8>)
{
  v2 = (v1 - 13680) | 0x390C;
  a1[3] = LOBYTE(STACK[0x8957]) ^ 0x87;
  a1[2] = (8 * v2) ^ 0x70 ^ LOBYTE(STACK[0x8956]) ^ 0x97;
  a1[1] = LOBYTE(STACK[0x8955]) ^ 0x87;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1002C9394()
{
  v0 = 679 * (STACK[0x51B8] ^ 0x5847);
  v1 = STACK[0x57D8];
  v2 = STACK[0x3774];
  STACK[0x9948] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3774]));
  return (*(v1 + 8 * (v2 - 4746 + v0)))();
}

uint64_t sub_1002C93F8()
{
  v0 = STACK[0x51B8] - 12856;
  v1 = STACK[0xDF74];
  LODWORD(STACK[0xDF94]) = 16;
  LODWORD(STACK[0xDF90]) = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == -143113071) * LODWORD(STACK[0x173C])) ^ v0)))();
}

uint64_t sub_1002C9458(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(v9 + 4008);
  v12 = a6 + 3903 * (*(v11 + v8 % (11307 * (v6 ^ 0x49B1u) - 16718)) - 28);
  LOBYTE(v12) = *(v11 + v12 - 5896 * (((11655271 * v12) >> 32) >> 4));
  LOBYTE(v11) = v12 & 0x56 ^ 0xF9;
  *(*(v9 + 4000) + 4 * (a1 % 0x2240)) = (v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * (v11 ^ v12 & 0x32)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ (v10 - 74);
  return (*(STACK[0x57D8] + 8 * ((7269 * (v7 == 0)) ^ v6)))(a1 + 2717);
}

uint64_t sub_1002C95F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 - 3311;
  v4 = *(STACK[0x57D8] + 8 * (v3 - 5906));
  *(a1 + 3300) = v3;
  *(a1 + 3304) = a2;
  return v4();
}

uint64_t sub_1002C96D4(__n128 a1, double a2, double a3, double a4, double a5, double a6, __n128 a7, uint64_t a8, unsigned int a9)
{
  STACK[0x57A0] = 0;
  v16 = *(STACK[0x57D8] + 8 * (((a9 < ((2 * (v15 ^ 0x94A)) ^ 0x5846u)) * ((v15 ^ 0x94A) - 11103)) ^ v15));
  STACK[0x5620] = v12;
  return v16(a1, vdupq_n_s64(v10), vdupq_n_s64(v14), vdupq_n_s64(v9), vdupq_n_s64(v11), vdupq_n_s64(v13), a7, vdupq_n_s64(0xB13277D0BCA2A1A8));
}

uint64_t sub_1002C9774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v14 = *(STACK[0x57C0] + a8 * v13 + 8698028 - 5816 * (((((a8 * v13 + 8698028) >> 3) * v12) >> 32) >> 7));
  v15 = 6157 * (((v14 ^ 0xF223754F) + 232557233) ^ ((v14 ^ 0x6A48587F) - 1783126143) ^ ((v14 ^ 0x986B2DF7) + 1737806345)) + 50241120;
  v16 = *(v8 + 4 * (v15 - (((v15 * v11) >> 32) >> 12) * v10));
  v17 = ((v16 ^ 0xEFAD9095) + 63561542) ^ ((v16 ^ 0x5525C674) - 1186887259) ^ ((v16 ^ 0xBA88566B) + 1458313660);
  v18 = (BYTE1(v16) ^ 0xB6) * v13 + 6213569;
  v19 = (((HIBYTE(v16) ^ 0xA94D34E) + 1400889416) ^ ((HIBYTE(v16) ^ 0xBDCDC894) - 467207266) ^ ((HIBYTE(v16) ^ 0xB7591BB2) - 290314052)) * v13 - 338050869;
  v20 = *(STACK[0x57C0] + (BYTE2(v16) ^ 0x4F) * v13 + 6213569 - 5816 * (((11815591 * ((BYTE2(v16) ^ 0x4Fu) * v13 + 6213569)) >> 32) >> 4)) << 8;
  v21 = *(STACK[0x57C0] + v18 - 5816 * (((11815591 * v18) >> 32) >> 4));
  v22 = *(STACK[0x57C0] + v17 * v13 - 222981832 - 5816 * (((((v17 * v13 - 222981832) >> 3) * v12) >> 32) >> 7));
  *(v8 + 4 * (v9 + 6157 * a8 - ((((v9 + 6157 * a8) * v11) >> 32) >> 12) * v10)) = ((((((((*(STACK[0x57C0] + v19 - 5816 * ((((v19 >> 3) * v12) >> 32) >> 7)) << 16) ^ 0x8A07CC) & (v20 ^ 0xFFF0CC) | v20 & 0xF800) ^ 0x41A5B1) & (v21 ^ 0xFFFF3A) ^ v21 & 0x82) << 8) ^ 0x6046AB70) & (v22 ^ 0xFFFFFF37) | v22 & 0xFFFFFF8F) ^ 0x46BE27D;
  return (*(STACK[0x57D8] + 8 * ((a8 != 255) | (4 * (a8 != 255)) | a7)))();
}

uint64_t sub_1002C9B2C()
{
  LODWORD(STACK[0x91D0]) = -769884012;
  STACK[0x9228] = 0;
  return (*(STACK[0x57D8] + 8 * (((*v0 != 0) * ((v1 - 13986) ^ 0x61CA ^ (v1 + 317143673) & 0xED18EFFD)) ^ v1)))();
}

uint64_t sub_1002C9C7C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  LODWORD(STACK[0x4030]) = LODWORD(STACK[0x54C0]) | LODWORD(STACK[0x54D0]);
  LODWORD(STACK[0x3428]) = LODWORD(STACK[0x53A0]) | LODWORD(STACK[0x5600]);
  LODWORD(STACK[0x3420]) = LODWORD(STACK[0x5398]) | LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x3FE0]) = LODWORD(STACK[0x5390]) | LODWORD(STACK[0x5520]);
  LODWORD(STACK[0x3FCC]) = LODWORD(STACK[0x5388]) | LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x4040]) = LODWORD(STACK[0x5380]) | LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x4038]) = LODWORD(STACK[0x5378]) | LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x5530]) = STACK[0x5360] & (a7 ^ 0xEBB3C9A3);
  LODWORD(STACK[0x5360]) = v19 & (a5 ^ 0xA9E987E8);
  LODWORD(STACK[0x53B0]) = STACK[0x4298] & (a3 ^ 0x1FF99692);
  LODWORD(STACK[0x4278]) &= (((v11 - 34) | 0x10) - 1672411740) ^ a4;
  LODWORD(STACK[0x54D0]) = STACK[0x40B8] & (v12 ^ 0x98EDD6F);
  LODWORD(STACK[0x40C8]) = a2 & (LODWORD(STACK[0x3FD8]) ^ 0x2AB26F7A);
  LODWORD(STACK[0x53A0]) = STACK[0x4090] & (LODWORD(STACK[0x3750]) ^ 0x499C2F62);
  LODWORD(STACK[0x40B8]) = STACK[0x4080] & (v17 ^ 0xCFE57343);
  LODWORD(STACK[0x5600]) = STACK[0x4068] & (v14 ^ 0xA63AAD7D);
  LODWORD(STACK[0x4090]) = STACK[0x4028] & (v13 ^ 0x9EEB9488);
  LODWORD(STACK[0x5398]) = a8 & (v8 ^ 0x6E30CEB1);
  LODWORD(STACK[0x4088]) = STACK[0x4020] & (v15 ^ 0x63BC1D9C);
  LODWORD(STACK[0x54C0]) = STACK[0x4000] & (a1 ^ 0x14274CA8);
  LODWORD(STACK[0x4298]) = STACK[0x3FD0] & (v12 ^ 0x93E9804A) | LODWORD(STACK[0x3FC8]);
  LODWORD(STACK[0x5390]) = v10 & (v9 ^ 0x66D82ECE);
  LODWORD(STACK[0x4068]) = STACK[0x3FB8] & (a6 ^ 0x6E1E48E2);
  LODWORD(STACK[0x5520]) = STACK[0x38B0] & (v18 ^ 0xA55D12A3);
  LODWORD(STACK[0x4028]) = STACK[0x37E8] & (LODWORD(STACK[0x33D0]) ^ 0xB15F46E2);
  LODWORD(STACK[0x5388]) = STACK[0x3468] & (LODWORD(STACK[0x33E0]) ^ 0x1F985146);
  LODWORD(STACK[0x4020]) = STACK[0x33D8] & (LODWORD(STACK[0x5138]) ^ 0x45D41363);
  LODWORD(STACK[0x53D8]) = STACK[0x3450] & (LODWORD(STACK[0x33E8]) ^ 0x60F6E3D);
  LODWORD(STACK[0x3FD0]) = STACK[0x3444] & (v16 ^ 0x317D68DB);
  LODWORD(STACK[0x5380]) = STACK[0x3FC0] & (LODWORD(STACK[0x3458]) ^ 0xA2368915);
  LODWORD(STACK[0x38B0]) = STACK[0x3438] & (LODWORD(STACK[0x3460]) ^ 0x11266B9D);
  LODWORD(STACK[0x5138]) = STACK[0x3418] & (LODWORD(STACK[0x3430]) ^ 0xA9B05B50);
  LODWORD(STACK[0x37E8]) = STACK[0x3408] & (LODWORD(STACK[0x3478]) ^ 0x6649AEB0);
  LODWORD(STACK[0x5378]) = STACK[0x3400] & (LODWORD(STACK[0x4060]) ^ 0x4A67E15F);
  LODWORD(STACK[0x3750]) = STACK[0x3728] & (LODWORD(STACK[0x3FB0]) ^ 0x7E5D3EC0);
  LODWORD(STACK[0x53D0]) = STACK[0x33F8] & (v16 ^ 0xCF23EBD);
  return (*(STACK[0x57D8] + 8 * v11))();
}

uint64_t sub_1002CA194()
{
  v2 = ((v0 >> 4) ^ 0x2816FF4) & (((v1 ^ 0x1032) + 556219909) ^ v0);
  if ((((v0 >> 4) & 0x41 ^ 0xBF ^ v2 | (((v0 >> 4) & 0x9319A41 ^ 0xFFFEF5BF ^ v2) >> 2)) & 3) != 0)
  {
    return (*(STACK[0x57D8] + 8 * v1))(4294924617);
  }

  else
  {
    return (*(STACK[0x57D8] + 8 * v1))(0);
  }
}

uint64_t sub_1002CA200()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0xC8B8] = 0;
  return (*(v1 + 8 * (v0 - 2906)))(v2);
}

uint64_t sub_1002CA2AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, char a8)
{
  v19 = (((v12 ^ v18) & v14) << v15) | ((v12 ^ v18) >> a8);
  v20 = a6 & (4 * ((v19 ^ (2 * (v19 & v16))) & v16)) ^ v19 ^ (2 * (v19 & v16));
  v21 = (16 * (v20 & v16)) & (4 * (v16 & a4)) & v13 ^ v20;
  v22 = *(((v8 - a7) ^ 0xECB999C2 ^ v21) + v17 + 14679);
  v23 = (((v22 ^ 0x1F) - 31) ^ ((v22 ^ 0x39) - 57) ^ ((v22 ^ 0x23) - 35)) - (((v21 ^ 0xFFFFFFE0) + 58) ^ ((v21 ^ 0xFFFFFFAD) + 117) ^ ((v21 ^ 0xFFFFFFA3) + 123)) + 93;
  v24 = v23 & 0xFFFFFF9A ^ 0xFFFFFFDD;
  v25 = v23 ^ (2 * ((v23 ^ 0x60) & (2 * ((v23 ^ 0x60) & (2 * ((v23 ^ 0x60) & (2 * ((v23 ^ 0x60) & (2 * ((v23 ^ 0x60) & (2 * (v24 ^ v23 & 0x3A)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  LOBYTE(v24) = 16 * ~*(v17 + ((__PAIR64__(v10, v25 << 24) >> 28) ^ 0xBAu) + 260);
  v26 = *(v17 + ((*(v17 + (((v25 & 0xF) + v9) ^ 0x44u) + 2584) ^ 0xDE) & ~v24 ^ 0xE8 ^ (v24 & 0x97 | 8)) + 2068) ^ 0x65;
  *(STACK[0x8070] + v11 % 0x3282) = *(STACK[0x8070] + 12337 * v26 - 12930 * (((1328683 * (12337 * v26)) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((245 * (v12 != 255)) ^ v8)))();
}

uint64_t sub_1002CA524@<X0>(int a1@<W2>, unsigned int a2@<W3>, int a3@<W8>)
{
  v9 = *(STACK[0xDCB8] + a3 + (v4 ^ 0xECE) - 6152 * (((v4 ^ 0xECEu) + a3) / 0x1808));
  v10 = *(STACK[0xDCB0] + 4 * ((6419 * (v9 | ((v9 < 0x4C) << 8)) + 24186792) % 0x2240));
  v11 = (5621 * (((v10 ^ 0x3694362C) + 194749033) ^ ((v10 ^ 0x2674332F) + 461088620) ^ ((v10 ^ 0x10E005E5u) + 770675106)) + 1255020587) % 0x1808;
  v12 = *(STACK[0xDCB8] + v8 + 5621 * (BYTE1(v10) ^ 0x8F) - 6152 * (((89362129 * (v8 + 5621 * (BYTE1(v10) ^ 0x8Fu))) >> 32) >> 7));
  LOBYTE(v10) = *(STACK[0xDCB8] + (5621 * ((v7 + (HIBYTE(v10) ^ 0x77901FDC) + 1574) ^ ((HIBYTE(v10) ^ 0xD7064586) - 1915315904) ^ ((HIBYTE(v10) ^ 0xA0965A18) - 96041310)) - 169570818) % 0x1808);
  v13 = *(STACK[0xDCB8] + v8 + 5621 * (BYTE2(v10) ^ 0x38) - 6152 * (((89362129 * (v8 + 5621 * (BYTE2(v10) ^ 0x38u))) >> 32) >> 7));
  v14 = *(STACK[0xDCB8] + v11);
  LOBYTE(v11) = v12 & 0x18 ^ 0x72;
  v15 = v10 & 0xA ^ 0x6B;
  v16 = v14 & 0x5E ^ 0xD5;
  v17 = v13 & 0x98 ^ 0xB2;
  v18 = v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * (v16 ^ v14 & 0xAA)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16));
  v19 = (((v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & 0x3E ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0xA) << 16) | (((v13 ^ (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x98) << 8);
  v20 = ((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ v3) & ~v19 | v19 & (v5 + 3948);
  v21 = *(v6 + 152);
  *(STACK[0xDCB0] + 4 * (a2 % 0x2240)) = (((v20 << 8) ^ 0x403DF7DD) & (v18 ^ 0xFFFFFFA1) | v18 & 0x22) ^ 0xAF29AF39;
  return (*(STACK[0x57D8] + 8 * ((62 * (a1 != 0)) ^ v4)))(v21);
}

uint64_t sub_1002CA8F4()
{
  v0 = STACK[0x1AC4];
  STACK[0x95B0] = 0;
  LODWORD(STACK[0x6438]) = 0;
  return (*(STACK[0x57D8] + 8 * (v0 - 19626)))();
}

uint64_t sub_1002CA9D8()
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
  STACK[0xEED8] = v0;
  STACK[0xEED0] = 0;
  v10 = 16777619 * ((-289165025 * v9 + 7) ^ (-289165025 * v9)) % 7;
  v11 = *(&STACK[0xEED0] | v10);
  *(&STACK[0xEED0] | v10) = 0;
  LOBYTE(STACK[0xEED7]) = v11;
  v12 = 16777619 * ((-289165025 * v9 + 6) ^ (-289165025 * v9)) % 6;
  v13 = *(&STACK[0xEED0] | v12);
  *(&STACK[0xEED0] | v12) = STACK[0xEED6];
  LOBYTE(STACK[0xEED6]) = v13;
  v14 = 16777619 * ((-289165025 * v9 + 5) ^ (-289165025 * v9)) % 5;
  v15 = *(&STACK[0xEED0] | v14);
  *(&STACK[0xEED0] | v14) = STACK[0xEED5];
  LOBYTE(STACK[0xEED5]) = v15;
  v16 = STACK[0xEED0];
  LOBYTE(STACK[0xEED0]) = STACK[0xEED4];
  LOBYTE(STACK[0xEED4]) = v16;
  v17 = 16777619 * ((-289165025 * v9 + 3) ^ (-289165025 * v9)) % 3;
  v18 = *(&STACK[0xEED0] | v17);
  *(&STACK[0xEED0] | v17) = STACK[0xEED3];
  LOBYTE(STACK[0xEED3]) = v18;
  v19 = STACK[0xEED1];
  LOBYTE(STACK[0xEED2]) = STACK[0xEED0];
  LOWORD(STACK[0xEED0]) = v19;
  v20 = vdup_n_s32(-289165025 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -289165025 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEED0] = vmla_s32(v22, STACK[0xEED0], vdup_n_s32(0x1000193u));
  STACK[0xEED8] ^= STACK[0xEED0];
  STACK[0xEED8] = vmul_s32(vsub_s32(STACK[0xEED8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEEDA];
  LOWORD(STACK[0xEED9]) = STACK[0xEED8];
  LOBYTE(STACK[0xEED8]) = v23;
  v24 = (&STACK[0xEED8] | v17);
  v25 = *v24;
  *v24 = STACK[0xEEDB];
  LOBYTE(STACK[0xEEDB]) = v25;
  LOBYTE(v24) = STACK[0xEED8];
  LOBYTE(STACK[0xEED8]) = STACK[0xEEDC];
  LOBYTE(STACK[0xEEDC]) = v24;
  v26 = (&STACK[0xEED8] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEEDD];
  LOBYTE(STACK[0xEEDD]) = v24;
  v27 = (&STACK[0xEED8] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEEDE];
  LOBYTE(STACK[0xEEDE]) = v26;
  v28 = (&STACK[0xEED8] | v10);
  v29 = *v28;
  *v28 = STACK[0xEEDF];
  LOBYTE(STACK[0xEEDF]) = v29;
  v30 = STACK[0xEED8];
  v31 = (-289165025 * STACK[0xEED8]) ^ v9;
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
  *STACK[0x4420] = STACK[0xEED8];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_1002CAED4()
{
  v1 = STACK[0x57D8];
  STACK[0xD060] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 5926) ^ v0)))();
}

uint64_t sub_1002CAF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((v6 - 1) >> 32)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 ^ 0xFFFFBA52 ^ (((a5 + 13646) | 0x50) - 4777)) >= v6 - 1;
  }

  v8 = v7;
  return (*(STACK[0x57D8] + 8 * ((73 * v8) ^ a5)))();
}

uint64_t sub_1002CB00C(uint64_t a1)
{
  v1 = *(a1 + 3280) + 16 * *(a1 + 3264) + 12;
  v2 = STACK[0x57D8];
  v3 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2638]));
  *(a1 + 220) = *(a1 + 3180);
  *(a1 + 200) = v3;
  *(a1 + 208) = v1;
  return (*(v2 + 8 * (STACK[0x4D40] ^ 0x140E)))();
}

uint64_t sub_1002CB0C8@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, char a5@<W5>, char a6@<W6>, int a7@<W8>)
{
  LODWORD(STACK[0x4058]) = LODWORD(STACK[0x4300]) | LODWORD(STACK[0x5138]);
  LODWORD(STACK[0x42B0]) = LODWORD(STACK[0x5410]) | LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x42E8]) = LODWORD(STACK[0x5430]) | LODWORD(STACK[0x53A8]);
  LODWORD(STACK[0x4044]) = LODWORD(STACK[0x42F0]) | LODWORD(STACK[0x5370]);
  LODWORD(STACK[0x42F0]) = LODWORD(STACK[0x5358]) | LODWORD(STACK[0x5368]);
  LODWORD(STACK[0x42D8]) |= LODWORD(STACK[0x5360]);
  LODWORD(STACK[0x401C]) = LODWORD(STACK[0x4280]) | LODWORD(STACK[0x42F8]);
  LODWORD(STACK[0x4070]) = LODWORD(STACK[0x4278]) | LODWORD(STACK[0x4298]);
  LODWORD(STACK[0x4048]) = LODWORD(STACK[0x40C8]) | LODWORD(STACK[0x4290]);
  LODWORD(STACK[0x4018]) = LODWORD(STACK[0x40B8]) | LODWORD(STACK[0x40B0]);
  LODWORD(STACK[0x4300]) = LODWORD(STACK[0x40AC]) | LODWORD(STACK[0x4088]);
  LODWORD(STACK[0x4008]) = LODWORD(STACK[0x40A0]) | LODWORD(STACK[0x4040]);
  LODWORD(STACK[0x42F8]) = LODWORD(STACK[0x4098]) | LODWORD(STACK[0x4028]);
  LODWORD(STACK[0x40AC]) = LODWORD(STACK[0x4090]) | LODWORD(STACK[0x40C0]);
  v17 = v16 & 0x56 ^ 0xD1;
  v18 = v14 & 0xF6 ^ 0xA1;
  v19 = (((v16 ^ (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * (v17 ^ v16 & 0x22)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x56) << 16) | (((v14 ^ (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * (v14 & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xF6) << 8);
  v20 = v10 & 0x7A ^ 0x63;
  v21 = (v19 ^ 0xDFBFFF) & ((v10 ^ (2 * ((v10 ^ v8) & (2 * ((v10 ^ v8) & (2 * ((v10 ^ v8) & (2 * ((v10 ^ v8) & (2 * ((v10 ^ v8) & (2 * (v20 ^ v10 & 0xE)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x5E3FCD) | v19 & 0xA1C000;
  v22 = a7 & 0x70 ^ 0x66;
  LODWORD(STACK[0x5138]) = a7 ^ (2 * ((a7 ^ v8) & (2 * ((a7 ^ v8) & (2 * ((a7 ^ v8) & (2 * ((a7 ^ v8) & (2 * ((a7 ^ v8) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  LODWORD(STACK[0x5360]) = (v21 << 8) ^ 0xA18048FF;
  LODWORD(STACK[0x5430]) = (v21 << 8) & 0x144C3600;
  v23 = a5 & 0x3E ^ 0x45;
  LOBYTE(v21) = (a5 ^ v8) & (2 * ((a5 ^ v8) & (2 * ((a5 ^ v8) & (2 * ((a5 ^ v8) & (2 * ((a5 ^ v8) & (2 * (v23 ^ a5 & 0xA)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23;
  v24 = a4 & 0xD0 ^ 0x96;
  v25 = v11 & 0xEC ^ 0xBC;
  v26 = (((v11 ^ (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xEC) << 8) | (((a5 ^ (2 * v21)) ^ 0x3E) << 16);
  HIDWORD(v27) = a4;
  LODWORD(v27) = (((a4 ^ (2 * ((a4 ^ v8) & (2 * ((a4 ^ v8) & (2 * ((a4 ^ v8) & (2 * ((a4 ^ v8) & (2 * ((a4 ^ v8) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) & 0xFC ^ 0x1C9ED8A8) & ~v26 | v26 & 0x612700) ^ 0x1C9ED878;
  LODWORD(STACK[0x4290]) = v27 >> 2;
  v28 = a3 & 0x7C ^ 0xFFFFFFE4;
  LODWORD(STACK[0x4280]) = a3 ^ (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  LOBYTE(v28) = a2 & 0x8A ^ 0xAB;
  v29 = a1 & 0x8C ^ 0x2C;
  v30 = (((a1 ^ (2 * ((a1 ^ v8) & (2 * ((a1 ^ v8) & (2 * ((a1 ^ v8) & (2 * ((a1 ^ v8) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x8C) << 16) | (((a2 ^ (2 * ((a2 ^ v8) & (2 * ((a2 ^ v8) & (2 * ((a2 ^ v8) & (2 * ((a2 ^ v8) & (2 * ((a2 ^ v8) & (2 * ((a2 ^ v8) & 0x3E ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x8A) << 8);
  LOBYTE(v26) = (v15 & 0xB4 | 0x41) ^ v15 & 0x82;
  LODWORD(STACK[0x40C8]) = v13 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v13 ^ v8)) & 0x28 ^ 0x1C) & (v13 ^ v8))) ^ 0x1C) & (v13 ^ v8))) ^ 0x1C) & (v13 ^ v8))) ^ 0x5C) & (v13 ^ v8)));
  v31 = (((v15 ^ (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * (v15 & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xD72BE1) & ~v30 | v30 & 0x28D400) << 8;
  LODWORD(STACK[0x4298]) = v31 ^ 0x8D000FF;
  LODWORD(STACK[0x5410]) = v31 & 0xE0066900;
  v32 = STACK[0x5770];
  LOBYTE(v31) = *(STACK[0x5770] + 615);
  LOBYTE(v30) = v31 & 0x1E ^ 0xF5;
  v33 = *(STACK[0x52A0] + 2314);
  v34 = v33 & 0xE8 ^ 0x3A;
  v35 = (((v33 ^ (2 * ((v33 ^ v8) & (2 * ((v33 ^ v8) & (2 * ((v33 ^ v8) & (2 * ((v33 ^ v8) & (2 * ((v33 ^ v8) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0xE8) << 8) | (((v31 ^ (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * (v30 ^ v31 & 0xAA)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0x1E) << 16);
  v36 = STACK[0x5700];
  LOBYTE(v31) = *(STACK[0x5700] + 3983);
  v37 = v31 & 0xA6 ^ 0x99;
  v38 = ((v31 ^ (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * (v37 ^ v31 & 0x12)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x76D945) & ~v35 | v35 & 0x892600;
  v39 = *(STACK[0x5700] + 3338);
  v40 = v39 & 0x70 ^ 0xFFFFFFE6;
  LODWORD(STACK[0x40B0]) = v39 ^ (2 * ((v39 ^ v8) & (2 * ((v39 ^ v8) & (2 * ((v39 ^ v8) & (2 * ((v39 ^ v8) & (2 * ((v39 ^ v8) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40));
  v38 <<= 8;
  LODWORD(STACK[0x4278]) = v38 ^ 0x88000CFF;
  LODWORD(STACK[0x5368]) = v38 & 0x63AED300;
  v41 = STACK[0x5710];
  LOBYTE(v38) = *(STACK[0x5710] + 107);
  LOBYTE(v39) = v38 & 0x70 ^ 0xE6;
  v42 = STACK[0x57C0];
  LOBYTE(v40) = *(STACK[0x57C0] + 61);
  v43 = v40 & 0xA0 ^ 0x9E;
  v44 = (((v40 ^ (2 * ((v40 ^ v8) & (2 * ((v40 ^ v8) & (2 * ((v40 ^ v8) & (2 * ((v40 ^ v8) & (2 * ((v40 ^ v8) & (2 * v43) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43))) ^ 0xA0) << 8) | (((v38 ^ (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x70) << 16);
  v45 = STACK[0x57B0];
  LOBYTE(v38) = *(STACK[0x57B0] + 1419);
  LOBYTE(v40) = v38 & 0xF0 ^ 0x26;
  v46 = ((v38 ^ (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * ((v38 ^ v8) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0x966E3F) & ~v44 | v44 & 0x699100;
  v47 = v32[3763];
  v48 = v47 & 0xFFFFFFE4 ^ 0xFFFFFFB8;
  LODWORD(STACK[0x40A0]) = v47 ^ (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48));
  LODWORD(STACK[0x40B8]) = (v46 << 8) ^ 0x98010FF;
  LODWORD(STACK[0x5420]) = (v46 << 8) & 0xF6712200;
  LOBYTE(v48) = *(STACK[0x56D0] + 1753);
  v49 = STACK[0x56D0];
  LOBYTE(v46) = v48 & 0x78 ^ 0xE2;
  LOBYTE(v47) = *(STACK[0x5740] + 2625);
  LOBYTE(v40) = v47 & 0x2A ^ 0x5B;
  v50 = (((v48 ^ (2 * ((v48 ^ v8) & (2 * ((v48 ^ v8) & (2 * ((v48 ^ v8) & (2 * ((v48 ^ v8) & (2 * ((v48 ^ v8) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0x78) << 16) | (((v47 ^ (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & 0x1E ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0x2A) << 8);
  v51 = STACK[0x5760];
  LOBYTE(v46) = *(STACK[0x5760] + 2026);
  LODWORD(STACK[0x4088]) = ((v46 ^ (2 * ((v46 ^ v8) & (2 * ((v46 ^ v8) & (2 * ((v46 ^ v8) & (2 * ((v46 ^ v8) & (2 * ((v46 ^ v8) & (2 * ((v46 ^ v8) & (2 * (v46 | 0xD9)) & 0x5E ^ (v46 | 0xD9))) ^ (v46 | 0xD9))) ^ (v46 | 0xD9))) ^ (v46 | 0xD9))) ^ (v46 | 0xD9))) ^ (v46 | 0xD9)))) ^ 0x69110C) & ~v50 | v50 & 0x96EE00;
  v52 = v32[1768];
  v53 = v52 & 2 ^ 0x6F;
  LODWORD(STACK[0x4024]) = v52 ^ (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & 0x36 ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53));
  LOBYTE(v52) = v32[812];
  LOBYTE(v40) = v52 & 0xEA ^ 0xBB;
  v54 = STACK[0x5750];
  v55 = *(STACK[0x5750] + 1123);
  LOBYTE(v53) = v55 & 8 ^ 0xEA;
  v56 = (((v52 ^ (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & 0x1E ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0xEA) << 16) | (((v55 ^ (2 * ((v55 ^ v8) & (2 * ((v55 ^ v8) & (2 * ((v55 ^ v8) & (2 * ((v55 ^ v8) & (2 * ((v55 ^ v8) & (2 * v53) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53))) ^ 8) << 8);
  LOBYTE(v53) = *(STACK[0x5300] + 1836);
  v57 = v53 & 0xA8 ^ 0x1A;
  v58 = ((v53 ^ (2 * ((v53 ^ v8) & (2 * ((v53 ^ v8) & (2 * ((v53 ^ v8) & (2 * ((v53 ^ v8) & (2 * ((v53 ^ v8) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x5D3928) & ~v56 | v56 & 0xA2C600;
  v59 = *(STACK[0x5680] + 1002);
  v60 = v59 & 0x7A ^ 0x63;
  LODWORD(STACK[0x3FF8]) = v59 ^ (2 * ((v59 ^ v8) & (2 * ((v59 ^ v8) & (2 * ((v59 ^ v8) & (2 * ((v59 ^ v8) & (2 * ((v59 ^ v8) & (2 * (v60 ^ v59 & 0xE)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  v58 <<= 8;
  LODWORD(STACK[0x4090]) = v58 ^ 0x842FFF;
  LODWORD(STACK[0x5370]) = v58 & 0xB663D000;
  v61 = v41[1571];
  v62 = v61 & 0xFFFFFF8A ^ 0xFFFFFFAB;
  v63 = v61 ^ (2 * ((v61 ^ v8) & (2 * ((v61 ^ v8) & (2 * ((v61 ^ v8) & (2 * ((v61 ^ v8) & (2 * ((v61 ^ v8) & (2 * ((v61 ^ v8) & 0x3E ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62));
  LODWORD(STACK[0x3FC0]) = v63;
  LOBYTE(v61) = *(v36 + 539);
  v64 = v61 & 0x24 | 0xD8;
  LOBYTE(v61) = v61 ^ (2 * ((v61 ^ v8) & (2 * ((v61 ^ v8) & (2 * ((v61 ^ v8) & (2 * ((v61 ^ v8) & (2 * v64) ^ v64)) ^ v64)) ^ v64)) ^ v64));
  v65 = v32[1654];
  v66 = v65 & 0x70 ^ 0x66;
  v67 = ((v61 ^ v7) << 8) | (v63 << 16);
  v68 = ((v65 ^ (2 * ((v65 ^ v8) & (2 * ((v65 ^ v8) & (2 * ((v65 ^ v8) & (2 * ((v65 ^ v8) & (2 * ((v65 ^ v8) & (2 * v66) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) ^ 0x145E4C) & ~v67 | v67 & 0xEBA100;
  v69 = STACK[0x5730];
  v70 = *(STACK[0x5730] + 547);
  v71 = v70 & 0x28 ^ 0x5A;
  LODWORD(STACK[0x4060]) = v70 ^ (2 * ((v70 ^ v8) & (2 * ((v70 ^ v8) & (2 * ((v70 ^ v8) & (2 * ((v70 ^ v8) & (2 * ((v70 ^ v8) & (2 * v71) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71));
  v68 <<= 8;
  LODWORD(STACK[0x4080]) = v68 ^ 0x41A143FF;
  LODWORD(STACK[0x40C0]) = v68 & 0x301A8C00;
  LOBYTE(v68) = *(v49 + 1791);
  LOBYTE(v70) = v68 & 0x1A ^ 0xF3;
  LOBYTE(v71) = *(v49 + 1040);
  v72 = v71 & 0x20 | 0x5E;
  v73 = (((v68 ^ (2 * ((v68 ^ v8) & (2 * ((v68 ^ v8) & (2 * ((v68 ^ v8) & (2 * ((v68 ^ v8) & (2 * ((v68 ^ v8) & (2 * (v70 ^ v68 & 0x2E)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70))) ^ 0x1A) << 16) | (((v71 ^ (2 * ((v71 ^ v8) & (2 * ((v71 ^ v8) & (2 * ((v71 ^ v8) & (2 * ((v71 ^ v8) & (2 * ((v71 ^ v8) & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72))) ^ 0x20) << 8);
  v74 = v42;
  LOBYTE(v70) = *(v42 + 2352);
  LOBYTE(v71) = v70 & 0x16 ^ 0xF1;
  v75 = (v70 ^ (2 * ((v70 ^ v8) & (2 * ((v70 ^ v8) & (2 * ((v70 ^ v8) & (2 * ((v70 ^ v8) & (2 * ((v70 ^ v8) & (2 * (v71 ^ v70 & 0x22)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)));
  v76 = *STACK[0x52C0];
  v77 = v76 & 0x5E ^ 0xFFFFFFD5;
  LODWORD(STACK[0x4040]) = v76 ^ (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * (v77 ^ v76 & 0xAAAAAAAA)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77));
  v78 = ((v75 ^ 0xB83D56) & ~v73 | v73 & 0x47C200) << 8;
  LODWORD(STACK[0x4068]) = v78 ^ 0x602ADFF;
  LODWORD(STACK[0x53A8]) = v78 & 0x59C55200;
  LOBYTE(v78) = *(v45 + 1237);
  LOBYTE(v73) = v78 & 0x2C ^ 0x5C;
  LOBYTE(v76) = *(STACK[0x5580] + 1055);
  v79 = v76 & 0xFE ^ 0xA5;
  v80 = (((v78 ^ (2 * ((v78 ^ v8) & (2 * ((v78 ^ v8) & (2 * ((v78 ^ v8) & (2 * ((v78 ^ v8) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0x2C) << 16) | (((v76 ^ (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * v79) ^ v79)) ^ v79)) ^ v79)) ^ v79)) ^ v79)) ^ v79))) ^ 0xFE) << 8);
  LOBYTE(v42) = *(STACK[0x5780] + 979);
  v81 = STACK[0x5780];
  LOBYTE(v73) = v42 & 0x4C ^ 0xCC;
  v82 = ((v42 ^ (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0x5BA1B6) & ~v80 | v80 & 0xA45E00;
  LODWORD(v42) = v41[1275];
  v83 = v42 & 0xFFFFFFEC ^ 0xFFFFFFBC;
  LODWORD(STACK[0x4038]) = v42 ^ (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * v83) ^ v83)) ^ v83)) ^ v83)) ^ v83));
  v82 <<= 8;
  LODWORD(STACK[0x4028]) = v82 ^ 0x844A04FF;
  LODWORD(STACK[0x4098]) = v82 & 0x61146B00;
  LOBYTE(v82) = v51[600];
  LOBYTE(v42) = (v82 & 0xB4 | 0x43) ^ v82 & 0x8E;
  LOBYTE(v76) = v81[2587];
  v84 = v76 & 0x98 ^ 0xB2;
  v85 = (((v76 ^ (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * ((v76 ^ v8) & (2 * v84) ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v84))) ^ 0x98) << 16) | (((v82 ^ (2 * ((v82 ^ v8) & (2 * ((v82 ^ v8) & (2 * ((v82 ^ v8) & (2 * ((v82 ^ v8) & (2 * ((v82 ^ v8) & (2 * (v82 & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0x3A) << 8);
  LOBYTE(v82) = *(v54 + 1199);
  LOBYTE(v76) = v82 & 0x10 ^ 0xF6;
  v86 = (v82 ^ (2 * ((v82 ^ v8) & (2 * ((v82 ^ v8) & (2 * ((v82 ^ v8) & (2 * ((v82 ^ v8) & (2 * ((v82 ^ v8) & (2 * v76) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76)));
  LODWORD(STACK[0x4030]) = (v86 ^ 0x6475DB) & ~v85 | v85 & 0x9B8A00;
  v87 = v41[1973];
  v88 = v87 & 0xFFFFFFD0 ^ 0xFFFFFF96;
  LODWORD(STACK[0x4010]) = v87 ^ (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88));
  LOBYTE(v87) = *(v54 + 1457);
  LOBYTE(v88) = v87 & 0x28 ^ 0x5A;
  v89 = v74[1821];
  v90 = v89 & 0x14 ^ 0xF0;
  v91 = (((v89 ^ (2 * ((v89 ^ v8) & (2 * ((v89 ^ v8) & (2 * ((v89 ^ v8) & (2 * ((v89 ^ v8) & (2 * v90) ^ v90)) ^ v90)) ^ v90)) ^ v90))) ^ 0x14) << 8) | (((v87 ^ (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88))) ^ 0x28) << 16);
  LOBYTE(v87) = v81[3012];
  LOBYTE(v42) = v87 & 0xA4 ^ 0x98;
  LODWORD(v42) = ((v87 ^ (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * ((v87 ^ v8) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0x54473) & ~v91 | v91 & 0xFABB00;
  v92 = *(v45 + 1616);
  v93 = v92 & 0x4E ^ 0xFFFFFFCD;
  LODWORD(STACK[0x3FE0]) = v92 ^ (2 * ((v92 ^ v8) & (2 * ((v92 ^ v8) & (2 * ((v92 ^ v8) & (2 * ((v92 ^ v8) & (2 * ((v92 ^ v8) & (2 * (v93 ^ v92 & 0x3A)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93));
  LODWORD(v42) = v42 << 8;
  LODWORD(STACK[0x4020]) = v42 ^ 0x62B808FF;
  LODWORD(STACK[0x4078]) = v42 & 0x9C43E200;
  LOBYTE(v92) = v51[615];
  LOBYTE(v42) = v92 & 0x60 ^ 0xFE;
  LOBYTE(v93) = (v92 ^ v8) & (2 * ((v92 ^ v8) & (2 * ((v92 ^ v8) & (2 * ((v92 ^ v8) & (2 * ((v92 ^ v8) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42;
  v94 = STACK[0x56F0];
  LOBYTE(v42) = *(STACK[0x56F0] + 69);
  v95 = v42 & 0xD2 ^ 0x17;
  v96 = v81[1108];
  LOBYTE(v41) = v96 & 0xD4 ^ 0x90;
  v97 = ((v42 ^ (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * (v95 ^ v42 & 0x26)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95))) ^ 0xD2) << 8;
  v98 = (((v92 ^ (2 * v93)) ^ 0x60) << 8) | ((v97 & 0x6700 | ((v96 ^ (2 * ((v96 ^ v8) & (2 * ((v96 ^ v8) & (2 * ((v96 ^ v8) & (2 * ((v96 ^ v8) & (2 * v41) | v41)) ^ v41)) ^ v41)) ^ v41))) ^ 0x9825) & ~v97) << 16);
  v99 = v51[122];
  v100 = v51;
  v101 = v99 & 0x60 ^ 0x7E;
  LODWORD(STACK[0x3FCC]) = v99 ^ (2 * ((v99 ^ v8) & (2 * ((v99 ^ v8) & (2 * ((v99 ^ v8) & (2 * ((v99 ^ v8) & (2 * ((v99 ^ v8) & (2 * v101) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101));
  LODWORD(STACK[0x4000]) = v98 ^ 0x4064CFF;
  LODWORD(STACK[0x5358]) = v98 & 0xEBD8B300;
  LOBYTE(v98) = *(STACK[0x56E0] + 327);
  LOBYTE(v99) = v98 & 0x2A ^ 0xDB;
  v102 = LODWORD(STACK[0x4024]);
  LODWORD(STACK[0x3FD8]) = v102;
  LODWORD(v51) = (v102 << 8) & 0xFF00FFFF | (((v98 ^ (2 * ((v98 ^ v8) & (2 * ((v98 ^ v8) & (2 * ((v98 ^ v8) & (2 * ((v98 ^ v8) & (2 * ((v98 ^ v8) & (2 * ((v98 ^ v8) & 0x1E ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99))) ^ 0x2A) << 16);
  LOBYTE(v98) = *(v36 + 1017);
  LOBYTE(v54) = v98 & 0xE ^ 0xED;
  v103 = (((v98 ^ (2 * ((v98 ^ v8) & (2 * ((v98 ^ v8) & (2 * ((v98 ^ v8) & (2 * ((v98 ^ v8) & (2 * ((v98 ^ v8) & (2 * (v54 ^ v98 & 0x3A)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54))) ^ 0x34C47F) & ~v51 | v51 & 0xCB3B00) << 8;
  LODWORD(STACK[0x3FD0]) = v103 ^ 0x832980FF;
  LODWORD(STACK[0x3FC8]) = v103 & 0x6C167F00;
  LOBYTE(v103) = *(STACK[0x5790] + 3945);
  LOBYTE(v51) = v103 & 0xDC ^ 0x14;
  LOBYTE(v54) = v74[3118];
  LOBYTE(v88) = v54 & 0xE0 ^ 0x3E;
  v104 = (((v103 ^ (2 * ((v103 ^ v8) & (2 * ((v103 ^ v8) & (2 * ((v103 ^ v8) & (2 * ((v103 ^ v8) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0xDC) << 16) | (((v54 ^ (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88))) ^ 0xE0) << 8);
  LOBYTE(v54) = *(v69 + 1260);
  LOBYTE(v99) = v54 & 0x8C ^ 0xAC;
  LODWORD(v54) = ((v54 ^ (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * v99) ^ v99)) ^ v99)) ^ v99)) ^ v99))) ^ 0xEA1752) & ~v104 | v104 & 0x15E800;
  v105 = STACK[0x5740];
  LOBYTE(v104) = *(STACK[0x5740] + 3027);
  LOBYTE(v99) = v104 & 0x74 ^ 0x60;
  LOBYTE(v104) = v104 ^ (2 * ((v104 ^ v8) & (2 * ((v104 ^ v8) & (2 * ((v104 ^ v8) & (2 * ((v104 ^ v8) & (2 * v99) ^ v99)) ^ v99)) ^ v99)) ^ v99));
  v106 = v54 << 8;
  LODWORD(v54) = v104;
  LODWORD(STACK[0x4024]) = (v106 ^ 0x10A800FF) & (v104 ^ 0x5AAE906A) | v106 & 0xA5516F00;
  v107 = *(v69 + 1715);
  v108 = v107 & 0x70 ^ 0x66;
  LODWORD(v42) = v107 ^ (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * v108) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108));
  LODWORD(STACK[0x3FB0]) = v42;
  LOBYTE(v107) = *(v94 + 380);
  LOBYTE(v60) = v107 & 0x4A ^ 0x4B;
  LOBYTE(v60) = v107 ^ (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ 0x4A;
  v109 = STACK[0x55F0];
  LOBYTE(v107) = *(STACK[0x55F0] + 1078);
  LOBYTE(v36) = v107 & 0x42 ^ 0x4F;
  LODWORD(STACK[0x38C0]) = (((v60 << 8) | (v42 << 16)) ^ 0x8F07FF) & ((v107 ^ (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & (2 * ((v107 ^ v8) & 0x36 ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xFF0712) | (v60 << 8) & 0xF800;
  v110 = *(STACK[0x5630] + 137);
  v111 = v110 & 0xFFFFFFF8 ^ 0xFFFFFFA2;
  LODWORD(STACK[0x38A8]) = v110 ^ (2 * ((v110 ^ v8) & (2 * ((v110 ^ v8) & (2 * ((v110 ^ v8) & (2 * ((v110 ^ v8) & (2 * ((v110 ^ v8) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111));
  LOBYTE(v110) = v100[509];
  LOBYTE(v45) = v74[1525];
  LOBYTE(v94) = v45 & 0xD0 ^ 0x16;
  v112 = (((v110 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v110 ^ v8)) & 0x38 ^ 0x1C) & (v110 ^ v8))) ^ 0x1C) & (v110 ^ v8))) ^ 0x1C) & (v110 ^ v8))) ^ 0x5C) & (v110 ^ v8)))) ^ 0xDC) << 16) | (((v45 ^ (2 * ((v45 ^ v8) & (2 * ((v45 ^ v8) & (2 * ((v45 ^ v8) & (2 * ((v45 ^ v8) & (2 * ((v45 ^ v8) & (2 * v94) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94))) ^ 0xD0) << 8);
  LOBYTE(v94) = *(STACK[0x52F8] + 858);
  LOBYTE(v111) = v94 & 0xEC ^ 0xBC;
  LODWORD(v94) = ((v94 ^ (2 * ((v94 ^ v8) & (2 * ((v94 ^ v8) & (2 * ((v94 ^ v8) & (2 * ((v94 ^ v8) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0xF3018C) & ~v112 | v112 & 0xCFE00;
  v113 = *STACK[0x52F0];
  v114 = v113 & 0xFFFFFFBE ^ 0xFFFFFF85;
  LODWORD(STACK[0x3728]) = v113 ^ (2 * ((v113 ^ v8) & (2 * ((v113 ^ v8) & (2 * ((v113 ^ v8) & (2 * ((v113 ^ v8) & (2 * ((v113 ^ v8) & (2 * ((v113 ^ v8) & (2 * v114) ^ v114)) ^ v114)) ^ v114)) ^ v114)) ^ v114)) ^ v114));
  LODWORD(v94) = v94 << 8;
  LODWORD(STACK[0x3FB8]) = v94 ^ 0xC1E08FF;
  LODWORD(STACK[0x3FEC]) = v94 & 0x91E1B700;
  LOBYTE(v94) = *(v109 + 1662);
  LODWORD(v42) = v75 << 8;
  v115 = (v75 << 8) & 0xFF00FFFF | (((v94 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v94 ^ v8)) & 0x28 ^ 0x1C) & (v94 ^ v8))) ^ 0x1C) & (v94 ^ v8))) ^ 0x1C) & (v94 ^ v8))) ^ 0x5C) & (v94 ^ v8)))) ^ 0xDC) << 16);
  v116 = (v115 ^ 0x4AA1FF) & (v86 ^ 0x4AB138) | v115 & 0xB54E00;
  v117 = STACK[0x5720];
  v118 = *(STACK[0x5720] + 243);
  v119 = v118 & 0xFFFFFFEC ^ 0xFFFFFFBC;
  LODWORD(STACK[0x3478]) = v118 ^ (2 * ((v118 ^ v8) & (2 * ((v118 ^ v8) & (2 * ((v118 ^ v8) & (2 * ((v118 ^ v8) & (2 * v119) ^ v119)) ^ v119)) ^ v119)) ^ v119));
  v116 <<= 8;
  LODWORD(STACK[0x38B0]) = v116 ^ 0xA54812FF;
  LODWORD(STACK[0x3FF0]) = v116 & 0x5AA2ED00;
  LOBYTE(v116) = v32[3596];
  LOBYTE(v118) = v116 & 0x8A ^ 0x2B;
  LOBYTE(v119) = *(STACK[0xDCB8] + 3763);
  LOBYTE(v45) = v119 & 0x24 | 0xD8;
  v120 = ((v119 ^ (2 * ((v119 ^ v8) & (2 * ((v119 ^ v8) & (2 * ((v119 ^ v8) & (2 * ((v119 ^ v8) & (2 * v45) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v7) << 8) | (((v116 ^ (2 * ((v116 ^ v8) & (2 * ((v116 ^ v8) & (2 * ((v116 ^ v8) & (2 * ((v116 ^ v8) & (2 * ((v116 ^ v8) & (2 * ((v116 ^ v8) & 0x3E ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118))) ^ 0x8A) << 16);
  LODWORD(v94) = LODWORD(STACK[0x3FF8]);
  LODWORD(STACK[0x3750]) = v94;
  v121 = *(STACK[0x55D0] + 4089);
  v122 = v121 & 0xFFFFFFBC ^ 0xFFFFFF84;
  LODWORD(STACK[0x3460]) = v121 ^ (2 * ((v121 ^ v8) & (2 * ((v121 ^ v8) & (2 * ((v121 ^ v8) & (2 * ((v121 ^ v8) & (2 * ((v121 ^ v8) & (2 * v122) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122));
  v123 = ((v94 ^ 0xB1EDF7) & ~v120 | v120 & 0x4E1200) << 8;
  LODWORD(STACK[0x37E8]) = v123 ^ 0x1242FF;
  LODWORD(STACK[0x3B40]) = v123 & 0x4EA0B900;
  LOBYTE(v123) = v32[3414];
  LOBYTE(v74) = v123 & 0xAE ^ 0x9D;
  LOBYTE(v123) = v123 ^ (2 * ((v123 ^ v8) & (2 * ((v123 ^ v8) & (2 * ((v123 ^ v8) & (2 * ((v123 ^ v8) & (2 * ((v123 ^ v8) & (2 * (v74 ^ v123 & 0x1A)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74));
  v124 = STACK[0x55E0];
  LOBYTE(v74) = *(STACK[0x55E0] + 2094);
  LOBYTE(v121) = (v74 & 0xB4 | 0xA) ^ v74 & 0x7C;
  v125 = (v123 ^ 0xAE) << 8;
  LODWORD(v74) = ((v74 ^ (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * v121) ^ v121)) ^ v121)) ^ v121)) ^ v121)) ^ v121))) ^ 0xE802) & ~v125 | v125 & 0x1700;
  v126 = STACK[0x56D0];
  LOBYTE(v121) = *(STACK[0x56D0] + 84);
  LOBYTE(v120) = (v121 & 0xB4 | 0x42) ^ v121 & 0x8C;
  LODWORD(v74) = (((v121 ^ (2 * ((v121 ^ v8) & (2 * ((v121 ^ v8) & (2 * ((v121 ^ v8) & (2 * ((v121 ^ v8) & (2 * ((v121 ^ v8) & (2 * v120) ^ v120)) ^ v120)) ^ v120)) ^ v120)) ^ v120))) ^ 0x38) << 8) | (v74 << 16);
  v127 = *(STACK[0x5750] + 706);
  v128 = v127 & 0x26 | 0x59;
  LODWORD(STACK[0x3458]) = v127 ^ (2 * ((v127 ^ v8) & (2 * ((v127 ^ v8) & (2 * ((v127 ^ v8) & (2 * ((v127 ^ v8) & (2 * ((v127 ^ v8) & (2 * (((2 * (v127 & 0x26)) | 0x12) & (v127 ^ v8) ^ v128)) ^ v128)) ^ v128)) ^ v128)) ^ v128)) ^ v128));
  LODWORD(STACK[0x3468]) = v74 ^ 0x171051FF;
  LODWORD(STACK[0x3FAC]) = v74 & 0xE067AE00;
  LODWORD(v74) = *(STACK[0x52D8] + 2845);
  v129 = v74 & 0xFFFFFFFC ^ v7;
  v130 = v74 ^ (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * v129) ^ v129)) ^ v129)) ^ v129)) ^ v129)) ^ v129));
  HIDWORD(v27) = v130 ^ 4;
  LODWORD(v27) = ~v130 & 0xF8;
  HIDWORD(v27) = v27 >> 3;
  LODWORD(v27) = HIDWORD(v27);
  v131 = (v54 << 8) | ((v27 >> 29) << 16);
  LOBYTE(v74) = v32[2572];
  LOBYTE(v127) = v74 & 0x62 ^ 0x7F;
  v132 = (v131 ^ 0x920BFF) & ((v74 ^ (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & 0x16 ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127))) ^ 0x923FD1) | v131 & 0x6DC000;
  LOBYTE(v131) = v32[3672];
  LOBYTE(v74) = v131 & 0x2E ^ 0x5D;
  LOBYTE(v127) = *(STACK[0x5730] + 1609);
  LOBYTE(v54) = v127 & 0x84 | 0x28;
  LODWORD(v74) = (((v127 ^ (2 * ((v127 ^ v8) & (2 * ((v127 ^ v8) & (2 * ((v127 ^ v8) & (2 * ((v127 ^ v8) & (2 * ((v127 ^ v8) & (2 * v54) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54))) ^ 0x84) << 8) | (((v131 ^ (2 * ((v131 ^ v8) & (2 * ((v131 ^ v8) & (2 * ((v131 ^ v8) & (2 * ((v131 ^ v8) & (2 * ((v131 ^ v8) & (2 * (v74 ^ v131 & 0x1A)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0x2E) << 16);
  v133 = STACK[0x55C0];
  LOBYTE(v131) = *(STACK[0x55C0] + 1237);
  LOBYTE(v127) = v131 & 0xE8 ^ 0x3A;
  v134 = ((v131 ^ (2 * ((v131 ^ v8) & (2 * ((v131 ^ v8) & (2 * ((v131 ^ v8) & (2 * ((v131 ^ v8) & (2 * ((v131 ^ v8) & (2 * v127) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127))) ^ 0xA07AFF) & ~v74 | v74 & 0x5F8500;
  LODWORD(v74) = *(v124 + 1965);
  v135 = v74 & 0xFFFFFF90 ^ v12;
  LODWORD(STACK[0x3438]) = v74 ^ (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * v135) ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ v135));
  v134 <<= 8;
  LODWORD(STACK[0x3450]) = v134 ^ 0x60568FF;
  LODWORD(STACK[0x3FF8]) = v134 & 0xF9F09100;
  LOBYTE(v134) = *(STACK[0x55A0] + 2223);
  LOBYTE(v74) = v134 & 0xD8 ^ 0x92;
  v136 = ((v134 ^ (2 * ((v134 ^ v8) & (2 * ((v134 ^ v8) & (2 * ((v134 ^ v8) & (2 * ((v134 ^ v8) & (2 * ((v134 ^ v8) & (2 * v74) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0x433D) & (v125 ^ 0xFFFFC7FF) | v125 & 0xBC00;
  v137 = v105;
  LOBYTE(v134) = *(v105 + 4036);
  LOBYTE(v74) = v134 & 0xE0 ^ 0xBE;
  v138 = (((v134 ^ (2 * ((v134 ^ v8) & (2 * ((v134 ^ v8) & (2 * ((v134 ^ v8) & (2 * ((v134 ^ v8) & (2 * ((v134 ^ v8) & (2 * v74) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0xE0) << 8) | (v136 << 16);
  v139 = STACK[0x5680];
  LODWORD(STACK[0x3444]) = v138 ^ 0x301868FF;
  LODWORD(STACK[0x38A0]) = v138 & 0xCE829700;
  LOBYTE(v138) = *(STACK[0x5670] + 3543);
  LOBYTE(v134) = v138 & 0x74 ^ 0x60;
  LOBYTE(v74) = *(STACK[0x5790] + 2921);
  LOBYTE(v135) = v74 & 0xAC ^ 0x1C;
  v140 = (((v138 ^ (2 * ((v138 ^ v8) & (2 * ((v138 ^ v8) & (2 * ((v138 ^ v8) & (2 * ((v138 ^ v8) & (2 * v134) ^ v134)) ^ v134)) ^ v134)) ^ v134))) ^ 0x74) << 16) | (((v74 ^ (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * v135) ^ v135)) ^ v135)) ^ v135)) ^ v135))) ^ 0xAC) << 8);
  v141 = (LODWORD(STACK[0x3FC0]) ^ 0x36E63) & ~v140 | v140 & 0xFC9100;
  v142 = STACK[0x56E0];
  v143 = *(STACK[0x56E0] + 1442);
  LODWORD(v74) = v143 & 0xFFFFFF84 ^ 0xFFFFFFA8;
  LODWORD(STACK[0x3428]) = v143 ^ (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * v74) ^ v74)) ^ v74)) ^ v74)) ^ v74));
  v141 <<= 8;
  LODWORD(STACK[0x3FC0]) = v141 ^ 0xA01000FF;
  LODWORD(STACK[0x3B1C]) = v141 & 0x5DC97600;
  LOBYTE(v141) = *(STACK[0x5570] + 2883);
  LOBYTE(v74) = v141 & 0xD6 ^ 0x11;
  LODWORD(v42) = v42 & 0xFF00FFFF | (((v141 ^ (2 * ((v141 ^ v8) & (2 * ((v141 ^ v8) & (2 * ((v141 ^ v8) & (2 * ((v141 ^ v8) & (2 * ((v141 ^ v8) & (2 * (v74 ^ v141 & 0x22)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0xD6) << 16);
  LOBYTE(v141) = *(STACK[0x53F8] + 3247);
  LOBYTE(v143) = v141 & 0xE8 ^ 0xBA;
  LODWORD(STACK[0x3420]) = (v42 ^ 0x4CC0FF) & ((v141 ^ (2 * ((v141 ^ v8) & (2 * ((v141 ^ v8) & (2 * ((v141 ^ v8) & (2 * ((v141 ^ v8) & (2 * ((v141 ^ v8) & (2 * v143) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ v143))) ^ 0x4CC23A) | v42 & 0xB33D00;
  v144 = STACK[0x57C0];
  v145 = *(STACK[0x57C0] + 190);
  LODWORD(v124) = v145 & 0xFFFFFFB0 | 6;
  LODWORD(STACK[0x3410]) = v145 ^ (2 * ((v145 ^ v8) & (2 * ((v145 ^ v8) & (2 * ((v145 ^ v8) & (2 * ((v145 ^ v8) & (2 * ((v145 ^ v8) & (2 * v124) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124));
  v146 = *(v117 + 1912);
  LODWORD(v124) = v146 & 0x64 ^ 0xFFFFFFF8;
  LODWORD(STACK[0x3430]) = v146 ^ (2 * ((v146 ^ v8) & (2 * ((v146 ^ v8) & (2 * ((v146 ^ v8) & (2 * ((v146 ^ v8) & (2 * v124) ^ v124)) ^ v124)) ^ v124)) ^ v124));
  LOBYTE(v146) = *(STACK[0x5780] + 577);
  LOBYTE(v124) = v146 & a6 ^ 0xC7;
  LOBYTE(v143) = *(v133 + 911);
  LOBYTE(v42) = v143 & 0x54 ^ 0x50;
  LODWORD(v124) = (((v143 ^ (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * v42) | v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0x54) << 8) | ((((v146 ^ (2 * ((v146 ^ v8) & (2 * ((v146 ^ v8) & (2 * ((v146 ^ v8) & (2 * ((v146 ^ v8) & (2 * ((v146 ^ v8) & (2 * (v124 ^ v146 & 6)) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124))) ^ 0xDCCB) & (v97 ^ 0xFFFFFEFF) | v97 & 0x2300) << 16);
  LODWORD(STACK[0x3418]) = v124 ^ 0x21005BFF;
  LODWORD(STACK[0x3B10]) = v124 & 0x564FA400;
  LOBYTE(v124) = v32[3103];
  LOBYTE(v143) = v124 & 0xCC ^ 0x8C;
  LOBYTE(v42) = *(STACK[0x56C0] + 1222);
  LOBYTE(v74) = v42 & a6 ^ 0xC7;
  LODWORD(v124) = (((v124 ^ (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * v143) ^ v143)) ^ v143)) ^ v143)) ^ v143))) ^ 0xCC) << 16) | ((v42 ^ (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * (v74 ^ v42 & 6)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ a6) << 8);
  LOBYTE(v143) = *(v139 + 395);
  LOBYTE(v42) = v143 & 0x66 ^ 0xF9;
  v147 = (v143 ^ (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * (v42 ^ v143 & 0x12)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)));
  LOBYTE(v143) = *(STACK[0x56F0] + 1897);
  LOBYTE(v42) = v143 & 0xCE ^ 0x8D;
  LOBYTE(v81) = v143 ^ (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * (v42 ^ v143 & 0x3A)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42));
  LODWORD(v124) = ((v147 ^ 0xA10BFF) & ~v124 | v124 & 0x5EF400) << 8;
  LODWORD(STACK[0x3408]) = v124 ^ 0x464026FF;
  LODWORD(STACK[0x3448]) = v124 & 0x99B65100;
  LOBYTE(v124) = *(v142 + 160);
  LOBYTE(v42) = *(STACK[0x55B0] + 1495);
  LOBYTE(v135) = v42 & 0xB2 ^ 7;
  LODWORD(v124) = (((v124 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v124 ^ v8)) & 0x28 ^ 0x1C) & (v124 ^ v8))) ^ 0x1C) & (v124 ^ v8))) ^ 0x1C) & (v124 ^ v8))) ^ 0x5C) & (v124 ^ v8)))) ^ 0xDC) << 16) | (((v42 ^ (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * (v135 ^ v42 & 6)) ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ v135))) ^ 0xB2) << 8);
  LOBYTE(v143) = *(v137 + 1161);
  LOBYTE(v146) = v143 & 0x5C ^ 0x54;
  v148 = (v124 ^ 0xDF9FFF) & ((v143 ^ (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * ((v143 ^ v8) & (2 * v146) ^ v146)) ^ v146)) ^ v146)) ^ v146))) ^ 0xD61EF8) | v124 & 0x29E100;
  LODWORD(v124) = *(v144 + 3452);
  v149 = v124 & 0xFFFFFFB4 | 0xB;
  LODWORD(v42) = v149 ^ v124 & 0x7E;
  LODWORD(STACK[0x33F0]) = v124 ^ (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * v149) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42));
  v148 <<= 8;
  LODWORD(STACK[0x3400]) = v148 ^ 0x86141FF;
  LODWORD(STACK[0x3470]) = v148 & 0xB5981E00;
  LOBYTE(v148) = *(v144 + 668);
  LOBYTE(v124) = v148 & 0x84 ^ 0xA8;
  LOBYTE(v149) = *(STACK[0x5760] + 1404);
  LOBYTE(v42) = v149 & 0xE2 ^ 0xBF;
  v150 = (((v148 ^ (2 * ((v148 ^ v8) & (2 * ((v148 ^ v8) & (2 * ((v148 ^ v8) & (2 * ((v148 ^ v8) & (2 * v124) ^ v124)) ^ v124)) ^ v124)) ^ v124))) ^ 0x84) << 16) | (((v149 ^ (2 * ((v149 ^ v8) & (2 * ((v149 ^ v8) & (2 * ((v149 ^ v8) & (2 * ((v149 ^ v8) & (2 * ((v149 ^ v8) & (2 * ((v149 ^ v8) & 0x16 ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0xE2) << 8);
  LODWORD(v42) = (v147 ^ 0xD23240) & ~v150 | v150 & 0x2DCD00;
  LOBYTE(v150) = *(STACK[0x5580] + 1169);
  LOBYTE(v124) = v150 & 0xAE ^ 0x9D;
  LOBYTE(v54) = v150 ^ (2 * ((v150 ^ v8) & (2 * ((v150 ^ v8) & (2 * ((v150 ^ v8) & (2 * ((v150 ^ v8) & (2 * ((v150 ^ v8) & (2 * (v124 ^ v150 & 0x1A)) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124));
  LOBYTE(v150) = *STACK[0x5660];
  LOBYTE(v124) = v150 & 0x22 ^ 0x5F;
  LOBYTE(v149) = *(STACK[0x53E8] + 1950);
  LOBYTE(v74) = v149 & 0x6E ^ 0xFD;
  v151 = (((v150 ^ (2 * ((v150 ^ v8) & (2 * ((v150 ^ v8) & (2 * ((v150 ^ v8) & (2 * ((v150 ^ v8) & (2 * ((v150 ^ v8) & (2 * ((v150 ^ v8) & 0x16 ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124))) ^ 0x22) << 8) | (((v149 ^ (2 * ((v149 ^ v8) & (2 * ((v149 ^ v8) & (2 * ((v149 ^ v8) & (2 * ((v149 ^ v8) & (2 * ((v149 ^ v8) & (2 * (v74 ^ v149 & 0x1A)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0x6E) << 16);
  LOBYTE(v124) = *(v126 + 1882);
  LOBYTE(v149) = v124 & 0x1A ^ 0xF3;
  v152 = (((v124 ^ (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * ((v124 ^ v8) & (2 * (v149 ^ v124 & 0x2E)) ^ v149)) ^ v149)) ^ v149)) ^ v149)) ^ v149))) ^ 0x4E1388) & ~v151 | v151 & 0xB1EC00) << 8;
  LODWORD(STACK[0x33F8]) = v152 ^ 0xE02CFF;
  LODWORD(STACK[0x3A08]) = v152 & 0xF30DC100;
  HIDWORD(v27) = STACK[0x4290];
  LODWORD(v27) = STACK[0x4290];
  LODWORD(STACK[0x4290]) = ((v27 >> 30) << 8) & 0x56167800;
  v153 = LODWORD(STACK[0x40C8]);
  v154 = LODWORD(STACK[0x4088]) << 8;
  LODWORD(STACK[0x4280]) = v154 & 0xD54D9000;
  LODWORD(STACK[0x40B0]) = (LODWORD(STACK[0x4030]) << 8) & 0x91CF3100;
  v155 = LODWORD(STACK[0x3FCC]);
  LODWORD(STACK[0x5138]) = LODWORD(STACK[0x3FB0]);
  LODWORD(STACK[0x40A0]) = (LODWORD(STACK[0x38C0]) << 8) & 0x9927D100;
  LODWORD(STACK[0x33D0]) = LODWORD(STACK[0x3460]);
  LODWORD(STACK[0x33E0]) = LODWORD(STACK[0x3458]);
  LODWORD(STACK[0x4010]) = (v132 << 8) & 0xBA2BEC00;
  LODWORD(STACK[0x33D8]) = (v132 << 8) ^ 0x458000FF;
  LODWORD(STACK[0x33E8]) = LODWORD(STACK[0x3438]);
  LODWORD(STACK[0x3458]) = LODWORD(STACK[0x3428]);
  LODWORD(v41) = LODWORD(STACK[0x3420]) << 8;
  LODWORD(STACK[0x3460]) = LODWORD(STACK[0x3410]);
  LODWORD(STACK[0x38C0]) = v41 & 0xEED99400;
  LODWORD(STACK[0x3438]) = v41 ^ 0x112029FF;
  LODWORD(STACK[0x3478]) = v81;
  LODWORD(STACK[0x4060]) = LODWORD(STACK[0x33F0]);
  LODWORD(v42) = v42 << 8;
  LODWORD(STACK[0x3FB0]) = v54;
  LODWORD(STACK[0x3728]) = v42 ^ 0x2C4D18FF;
  LODWORD(STACK[0x38A8]) = v42 & 0x81A2C100;
  return (*(STACK[0x57D8] + 8 * v9))(v155, v154 ^ 0x2A245FFu, v153);
}

uint64_t sub_1002CDDC4()
{
  v2 = *(v0 + 3144);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8 ^ 0xE2C4DA) - 1846709294 + ((2 * (v2 & 0xFFFFFFF8)) & 0x1C589B0))) & 0xFFFFFFFFFFFFFFF8));
  v4 = (v3 + __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (0xC04B1708C6614E53 - ((v8 + v7) | 0xC04B1708C6614E53) + ((v8 + v7) | 0x3FB4E8F7399EB1ACLL)) ^ 0x5044AE615887A321;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = __ROR8__((v11 + v10 - ((2 * (v11 + v10)) & 0x6C3DA26CF7B51424) + 0x361ED1367BDA8A12) ^ 0x97AC4CF3ACAC9939, 8);
  v13 = (v11 + v10 - ((2 * (v11 + v10)) & 0x6C3DA26CF7B51424) + 0x361ED1367BDA8A12) ^ 0x97AC4CF3ACAC9939 ^ __ROR8__(v10, 61);
  v14 = (((2 * (v12 + v13)) & 0x68F4E562E17D774ELL) - (v12 + v13) - 0x347A72B170BEBBA8) ^ 0x2481AD0F7AA40CB4;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xD8C7B31FCA19D9DELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x5455012E8AB1C38FLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = 3903 * ((((((2 * (v20 + v19)) & 0x2F64A7DC491CA4E8) - (v20 + v19) + 0x684DAC11DB71AD8BLL) ^ 0x702CCADD573F36BuLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 4008381;
  v22 = *(v0 + 4000);
  *(v22 + 40291) = *(*(v0 + 4008) + v21 - 5896 * (((1456909 * v21) >> 32) >> 1));
  *(v22 + 36055) = *(v0 + 2795);
  v23 = *(v0 + 3984) + 3;
  *(v0 + 296) = v23;
  v24 = STACK[0x57D8];
  v25 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D50]) + 31730));
  *(v0 + 3152) = v23;
  *(v0 + 280) = v25;
  return (*(v24 + 8 * (v1 + 20570)))();
}

uint64_t sub_1002CE064@<X0>(unint64_t a1@<X8>)
{
  v6 = v3 + 20788;
  v7 = v3 + 125;
  v8 = *(v4 - 0x683CBC57EAB929DALL);
  v9 = 800103191 * (((v5 - 240) & 0x2D256C73 | ~((v5 - 240) | 0x2D256C73)) ^ 0xA39EDEEF);
  LODWORD(STACK[0x1D4E0]) = v9 + (*(v4 - 0x683CBC57EAB929C6) ^ 0x7D7EFD37) + ((2 * *(v4 - 0x683CBC57EAB929C6)) & 0xFAFDFA6E) - 1209295907;
  STACK[0x1D4F8] = a1;
  STACK[0x1D4E8] = v1;
  LODWORD(STACK[0x1D4C0]) = v9 + 1677507581 * (((v2 ^ 0x24B6BAB1) - 615955121) ^ ((v2 ^ 0xF6EE5679) + 152152455) ^ ((v2 ^ 0x446C5C) - 4484188)) - 2114955458;
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D500]) = v6 - v9 - 11338;
  LODWORD(STACK[0x1D4F0]) = v9 + (v8 ^ 0x3C3BB9FF) - 271781904 + ((v8 << (v7 ^ 0xFC)) & 0x787773FE);
  STACK[0x1D4D8] = v4 - 0x683CBC57EAB929D6;
  LODWORD(STACK[0x1D4C4]) = v9 + 881008405;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v6 + 6197)))(v5 - 240);
  return (*(v10 + 8 * v6))(v11);
}

uint64_t sub_1002CE25C@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v20 = v8 + a1;
  v21 = v8 - 1;
  v22 = __ROR8__((v17 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = v18 - (((0x1C64917143BAF700 - v22) | v13) + ((v22 + 0x639B6E8EBC4508FFLL) | (v10 + a2) ^ v19));
  v24 = v23 ^ a7;
  v25 = v23 ^ v7;
  v26 = __ROR8__(v24, 8);
  v27 = (v16 - ((v26 + v25) ^ v11 | v16) + ((v26 + v25) ^ v11 | v15)) ^ a5;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x1038643522CD1792;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xBFF6C21B210E4F37;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x9882E727DB37CF94;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__((v20 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = (__ROR8__(v33, 8) + v34) ^ a3;
  v37 = (v35 + 0x4E0B6541E4935D63) ^ 0x9FE3749E00AE5B9ELL;
  v38 = __ROR8__((v35 + 0x4E0B6541E4935D63) ^ 0xEFB85E912434B084, 8) + v37;
  v39 = v36 ^ __ROR8__(v34, 61);
  v40 = (v14 - (v38 | v14) + (v38 | 0x210A599D4D3B8891)) ^ 0x3E71CB0960D4A97ELL;
  v41 = __ROR8__(v36, 8);
  v42 = v40 ^ __ROR8__(v37, 61);
  v43 = __ROR8__(v40, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x77636128E1FFFA50) - 0x444E4F6B8F0002D8) ^ 0xA7B36FCF557D9EC5;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = ((2 * (v46 + v45)) & 0x17EF2238F7FB7824) - (v46 + v45);
  v48 = (a6 - ((v41 + v39) | a6) + ((v41 + v39) | v12)) ^ 0x43BB9A0EB0E58C4ELL;
  v49 = v48 ^ __ROR8__(v39, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (v47 + 0x74086EE3840243EDLL) ^ 0x25F4299DB7DC03DELL;
  v52 = a4 - ((v50 + v49) | a4) + ((v50 + v49) | 0x9D440C61A5B08E94);
  v53 = v51 ^ __ROR8__(v45, 61);
  v54 = __ROR8__(v51, 8);
  v55 = (((2 * (v54 + v53)) & 0x6EB37FD5E0B909C2) - (v54 + v53) + 0x48A640150FA37B1ELL) ^ 0x6AEA49DF4BAF7715;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xA199F9AE5F876A45;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xB2823E14A03C0367;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  *(v20 + 9) = (((((2 * ((v61 + v60) ^ 0x6FC94DEA9BDBFB21)) | 0xB1AC8FA2FFBAA3D0) - ((v61 + v60) ^ 0x6FC94DEA9BDBFB21) - 0x58D647D17FDD51E8) ^ 0x5E4E7696E37EBB4ALL) >> (8 * ((v20 + 9) & 7))) ^ ((v52 ^ 0x325FD88C2FD698DFLL) >> (8 * ((v17 + v21) & 7))) ^ *(v17 + v21);
  return (*(STACK[0x57D8] + 8 * ((31592 * (v21 == 0)) ^ v9)))();
}

uint64_t sub_1002CE634(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = STACK[0x51B8];
  v8 = 1978732275 * (v3 - (*(*v4 + (*v6 & a2)) & 0x7FFFFFFF ^ a3)) - LODWORD(STACK[0x7A34]) - 2127143474;
  v9 = 551690071 * ((-2 - ((~(v5 - 240) | 0xE1C814983F44C6CDLL) + ((v5 - 240) | 0x1E37EB67C0BB3932))) ^ 0x9055465671A9959ALL);
  LODWORD(STACK[0x1D4C0]) = (STACK[0x51B8] - 1079089617) ^ v9;
  LODWORD(STACK[0x1D4C4]) = v9 ^ (v7 + 920716205) ^ 0xF04;
  v10 = v7 + 920716205 - v9;
  LODWORD(STACK[0x1D4C8]) = v10 + 27;
  LODWORD(STACK[0x1D4CC]) = v10;
  STACK[0x1D4D8] = 1114252406 - v9;
  LODWORD(STACK[0x1D4D0]) = v9;
  STACK[0x1D4E0] = v8 + v9;
  v11 = STACK[0x57D8];
  v12 = (*(STACK[0x57D8] + 8 * (v7 ^ 0x2411)))(v5 - 240);
  return (*(v11 + 8 * SLODWORD(STACK[0x1D4D4])))(v12);
}

uint64_t sub_1002CE844@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 22440;
  LOWORD(STACK[0xD014]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1371)))();
}

uint64_t sub_1002CE8D8()
{
  v1 = *(STACK[0xA0D0] - 0x79296B4A625EDC74) != (LODWORD(STACK[0x2898]) + 58) && LODWORD(STACK[0x5C8C]) == 2;
  v2 = *(STACK[0x57D8] + 8 * ((202 * v1) ^ (STACK[0x51B8] + 777)));
  v3 = *(&off_101353600 + SLODWORD(STACK[0x2894]));
  STACK[0x53F0] = v3 - 4;
  STACK[0x4E98] = v3 + 33;
  return v2();
}

uint64_t sub_1002CE95C@<X0>(int a1@<W8>)
{
  v5 = v4 + v2;
  LODWORD(STACK[0xE44C]) = v5;
  LODWORD(STACK[0xE448]) = v3 ^ a1 ^ v1;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x4CF2 ^ ((v5 == -143113071) * ((a1 << 6) ^ 0x3E98)))))();
}

uint64_t sub_1002CE9BC()
{
  if (LODWORD(STACK[0x5790]) < 0x6190943A != v0 < 0x6190943A)
  {
    v1 = LODWORD(STACK[0x5790]) < 0x6190943A;
  }

  else
  {
    v1 = v0 < LODWORD(STACK[0x5790]);
  }

  return (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x57B0]) ^ (2 * !v1))))();
}

uint64_t sub_1002CF0F8()
{
  v7 = ((((4090 * (v2 ^ 0x3FE1)) ^ 0x61906A46) & (2 * v1)) + (v1 ^ 0xF0C82AD7)) * v0;
  *(v6 + 4 * (v7 - (((v7 * v5) >> 32) >> 12) * v4)) = *(v6 + 4 * (v7 + v3 - ((((v7 + v3) * v5) >> 32) >> 12) * v4));
  return (*(STACK[0x57D8] + 8 * ((13 * (v1 == 255317544)) ^ v2)))();
}

uint64_t sub_1002CF188(uint64_t a1)
{
  v2 = *(STACK[0x7BD0] - 0x683CBC57EAB92A3ELL);
  STACK[0x5BF0] = 0;
  STACK[0x6B68] = 0;
  return (*(STACK[0x57D8] + 8 * (((v2 != a1) * ((v1 ^ 0x1421) - 1737)) ^ v1)))();
}

uint64_t sub_1002CF1F4()
{
  *(*v2 + 4 * (*v3 ^ 0xD21C8094)) = v1;
  v4 = (((*v3 ^ 0x36B742D4) - 917979860) ^ ((*v3 ^ 0x4C009C97) - 1275108503) ^ ((v0 ^ 0x313B ^ *v3 ^ 0xA8AB4128) + 1465164073)) + 130735588;
  v5 = (v4 ^ 0xE219A0BC) & (2 * (v4 & 0xCA51A2B1)) ^ v4 & 0xCA51A2B1;
  v6 = ((2 * (v4 ^ 0x62BBA5DE)) ^ 0x51D40EDE) & (v4 ^ 0x62BBA5DE) ^ (2 * (v4 ^ 0x62BBA5DE)) & 0xA8EA076E;
  v7 = v6 ^ 0xA82A0121;
  v8 = (v6 ^ 0x80E0066D) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xA3A81DBC) & v7 ^ (4 * v7) & 0xA8EA076C;
  v10 = (v9 ^ 0xA0A80523) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x8420243)) ^ 0x8EA076F0) & (v9 ^ 0x8420243) ^ (16 * (v9 ^ 0x8420243)) & 0xA8EA0760;
  v12 = v10 ^ 0xA8EA076F ^ (v11 ^ LODWORD(STACK[0x2920])) & (v10 << 8);
  *v3 = v4 ^ (2 * ((v12 << 16) & 0x28EA0000 ^ v12 ^ ((v12 << 16) ^ 0x76F0000) & (((v11 ^ 0x204A010F) << 8) & 0xA8EA0000 ^ 0xE80000 ^ (((v11 ^ 0x204A010F) << 8) ^ 0xEA070000) & (v11 ^ 0x204A010F)))) ^ 0x494D2CFB;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1002CF3D4()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 + 3696) | 0x1C0) - 332)))();
}

uint64_t sub_1002CF670@<X0>(unint64_t a1@<X8>)
{
  STACK[0xA4F8] = a1;
  LODWORD(STACK[0x8B34]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1002CF6A0@<X0>(int a1@<W8>)
{
  v1[293] = -25;
  v1[1266] = -41;
  v1[3212] = 7;
  *STACK[0x5730] = -84;
  v1[315] = 96;
  *STACK[0x5740] = 4;
  v1[2239] = 44;
  v1[1288] = 45;
  return (*(STACK[0x57D8] + 8 * a1))(1935854957, 1935854957);
}

uint64_t sub_1002CF9A8()
{
  v0 = 863 * (STACK[0x51B8] ^ 0x5855);
  v1 = STACK[0x51B8] - 10755;
  *(STACK[0x9740] - 0x1883660EE814440ALL) = STACK[0xEC98];
  return (*(STACK[0x57D8] + 8 * ((4764 * (LODWORD(STACK[0xEC9C]) == (v0 ^ 0xF7784E8C))) ^ v1)))();
}

uint64_t sub_1002CFC08@<X0>(char a1@<W0>, char a2@<W2>, char a3@<W5>, char a4@<W8>)
{
  LODWORD(STACK[0x5410]) = LODWORD(STACK[0x38B0]) | LODWORD(STACK[0x3A08]);
  LODWORD(STACK[0x5370]) |= LODWORD(STACK[0x5368]);
  LODWORD(STACK[0x53D8]) = LODWORD(STACK[0x5390]) | LODWORD(STACK[0x5378]);
  LODWORD(STACK[0x5408]) = LODWORD(STACK[0x5380]) | LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x5400]) = LODWORD(STACK[0x38A0]) | LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x5420]) = LODWORD(STACK[0x37E8]) | LODWORD(STACK[0x5510]);
  LODWORD(STACK[0x3450]) = LODWORD(STACK[0x3750]) | LODWORD(STACK[0x53C8]);
  LODWORD(STACK[0x53A0]) |= LODWORD(STACK[0x3470]);
  LODWORD(STACK[0x3430]) = LODWORD(STACK[0x53D0]) | LODWORD(STACK[0x5388]);
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x3460]) | LODWORD(STACK[0x5358]);
  v12 = v9 & 0xC2 ^ 0xF;
  v13 = v4 & 0xEA ^ 0xBB;
  v14 = (v4 ^ (2 * ((v4 ^ v5) & (2 * ((v4 ^ v5) & (2 * ((v4 ^ v5) & (2 * ((v4 ^ v5) & (2 * ((v4 ^ v5) & (2 * ((v4 ^ v5) & 0x1E ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) << 8;
  v15 = v14 & 0xFF00FFFF | (((v9 ^ (2 * ((v9 ^ v5) & (2 * ((v9 ^ v5) & (2 * ((v9 ^ v5) & (2 * ((v9 ^ v5) & (2 * ((v9 ^ v5) & (2 * ((v9 ^ v5) & 0x36 ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xC2) << 16);
  v16 = v10 & 0xC0 | 0xE;
  LODWORD(STACK[0x5380]) = (((v15 ^ 0x701BFF) & ((v10 ^ (2 * ((v10 ^ v5) & (2 * ((v10 ^ v5) & (2 * ((v10 ^ v5) & (2 * ((v10 ^ v5) & (2 * ((v10 ^ v5) & 0x1C ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x70B1CA) | v15 & 0x8F4E00) << 8) & 0x78977200;
  LOBYTE(v15) = a3 & 0xC0 | 0xE;
  v17 = v11 & 0x10 ^ 0x76;
  v18 = (((a3 ^ (2 * ((a3 ^ v5) & (2 * ((a3 ^ v5) & (2 * ((a3 ^ v5) & (2 * ((a3 ^ v5) & (2 * ((a3 ^ v5) & 0x1C ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0xC0) << 16) | (((v11 ^ (2 * ((v11 ^ v5) & (2 * ((v11 ^ v5) & (2 * ((v11 ^ v5) & (2 * ((v11 ^ v5) & (2 * ((v11 ^ v5) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x10) << 8);
  v19 = a1 & 0xC8 ^ 0x8A;
  v20 = ((a1 ^ (2 * ((a1 ^ v5) & (2 * ((a1 ^ v5) & (2 * ((a1 ^ v5) & (2 * ((a1 ^ v5) & (2 * ((a1 ^ v5) & (2 * v19) | v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x9AF7CE) & ~v18 | v18 & 0x650800;
  v21 = a2 & 0x16 ^ 0x71;
  v22 = v14 & 0xFF00FFFF | (((a2 ^ (2 * ((a2 ^ v5) & (2 * ((a2 ^ v5) & (2 * ((a2 ^ v5) & (2 * ((a2 ^ v5) & (2 * ((a2 ^ v5) & (2 * (v21 ^ a2 & 0x22)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x16) << 16);
  v23 = v7 & 0xE4 ^ 0xB8;
  LODWORD(STACK[0x5358]) = (((v22 ^ 0x8810FF) & ((v7 ^ (2 * ((v7 ^ v5) & (2 * ((v7 ^ v5) & (2 * ((v7 ^ v5) & (2 * ((v7 ^ v5) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x88B227) | v22 & 0x774D00) << 8) & 0x24D7FD00;
  v24 = *STACK[0x5298];
  v25 = *(STACK[0x57B0] + 3892);
  LOBYTE(v22) = v25 & 8 ^ 0xEA;
  LOBYTE(v22) = v25 ^ (2 * ((v25 ^ v5) & (2 * ((v25 ^ v5) & (2 * ((v25 ^ v5) & (2 * ((v25 ^ v5) & (2 * ((v25 ^ v5) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  v26 = *(STACK[0x5790] + 228);
  v27 = v26 & 0x78 ^ 0x62;
  v28 = v24 & 0x82 ^ 0xAF;
  v29 = STACK[0x57C0];
  v30 = (((v24 ^ (2 * ((v24 ^ v5) & (2 * ((v24 ^ v5) & (2 * ((v24 ^ v5) & (2 * ((v24 ^ v5) & (2 * ((v24 ^ v5) & (2 * ((v24 ^ v5) & 0x36 ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x82) << 8) | (((v26 ^ (2 * ((v26 ^ v5) & (2 * ((v26 ^ v5) & (2 * ((v26 ^ v5) & (2 * ((v26 ^ v5) & (2 * ((v26 ^ v5) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x78) << 16);
  v31 = *(STACK[0x5700] + 1017);
  v32 = *(STACK[0x57C0] + 2352);
  v33 = v31 & a4 ^ v8;
  v34 = v32 & 0x10 ^ 0x76;
  v35 = (((v31 ^ (2 * ((v31 ^ v5) & (2 * ((v31 ^ v5) & (2 * ((v31 ^ v5) & (2 * ((v31 ^ v5) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0xAC) << 16) | (((v32 ^ (2 * ((v32 ^ v5) & (2 * ((v32 ^ v5) & (2 * ((v32 ^ v5) & (2 * ((v32 ^ v5) & (2 * ((v32 ^ v5) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x10) << 8);
  v36 = *(STACK[0x54A0] + 3361);
  v37 = v36 & 0x5C ^ 0x54;
  LODWORD(STACK[0x38B0]) = (((v22 ^ 0xB3225A) & ~v30 | v30 & 0x4CDD00) << 8) & 0x3975A800;
  LODWORD(STACK[0x3460]) = (((v35 ^ 0xF37FFF) & ((v36 ^ (2 * ((v36 ^ v5) & (2 * ((v36 ^ v5) & (2 * ((v36 ^ v5) & (2 * ((v36 ^ v5) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0xE12BC5) | v35 & 0x1ED400) << 8) & 0xE21FE200;
  LOBYTE(v30) = *(STACK[0x5730] + 547);
  v38 = v30 & 0xF2 ^ 0xA7;
  LOBYTE(v22) = *(STACK[0x5720] + 2147);
  v39 = v22 & 0x22 ^ 0xDF;
  v40 = *(STACK[0x52B0] + 2185);
  v41 = (((v30 ^ (2 * ((v30 ^ v5) & (2 * ((v30 ^ v5) & (2 * ((v30 ^ v5) & (2 * ((v30 ^ v5) & (2 * ((v30 ^ v5) & (2 * (v38 ^ v30 & 6)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xF2) << 16) | (((v22 ^ (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & 0x16 ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x22) << 8);
  v42 = v40 & 0x90 ^ 0x36;
  v43 = ((v40 ^ (2 * ((v40 ^ v5) & (2 * ((v40 ^ v5) & (2 * ((v40 ^ v5) & (2 * ((v40 ^ v5) & (2 * ((v40 ^ v5) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0xAB2F1D) & ~v41 | v41 & 0x54D000;
  v44 = *(STACK[0x55F0] + 1078);
  v45 = v44 & 0xE ^ 0x6D;
  v46 = v44 ^ (2 * ((v44 ^ v5) & (2 * ((v44 ^ v5) & (2 * ((v44 ^ v5) & (2 * ((v44 ^ v5) & (2 * ((v44 ^ v5) & (2 * (v45 ^ v44 & 0x3A)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45));
  LOBYTE(v44) = *(STACK[0x5780] + 979);
  v47 = v44 & 0x4C ^ 0xCC;
  v48 = STACK[0x5770];
  LOBYTE(v22) = *(STACK[0x5770] + 1290);
  v49 = v22 & 6 | 0x69;
  v50 = (((v44 ^ (2 * ((v44 ^ v5) & (2 * ((v44 ^ v5) & (2 * ((v44 ^ v5) & (2 * ((v44 ^ v5) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0x4C) << 8) | (((v22 ^ (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * (((4 * (((v22 & 6) >> 1) & 3)) | 0x32) & (v22 ^ v5) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49))) ^ 6) << 16);
  LOBYTE(v45) = *(STACK[0x52A0] + 2314);
  v51 = v45 & 0xFC ^ 0x24;
  v52 = ((v45 ^ (2 * ((v45 ^ v5) & (2 * ((v45 ^ v5) & (2 * ((v45 ^ v5) & (2 * ((v45 ^ v5) & (2 * ((v45 ^ v5) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x9B1CD6) & ~v50 | v50 & 0x64E300;
  LOBYTE(v45) = *(STACK[0x56D0] + 1753);
  v53 = (v45 & 0xB4 | 8) ^ v45 & 0x70;
  LOBYTE(v22) = *(STACK[0x5730] + 31);
  v54 = v22 & 0x1A ^ 0xF3;
  v55 = (((v45 ^ (2 * ((v45 ^ v5) & (2 * ((v45 ^ v5) & (2 * ((v45 ^ v5) & (2 * ((v45 ^ v5) & (2 * ((v45 ^ v5) & (2 * v53) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53))) ^ 0xC4) << 16) | (((v22 ^ (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * (v54 ^ v22 & 0x2E)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54))) ^ 0x1A) << 8);
  LOBYTE(v22) = *(STACK[0x5720] + 46);
  v56 = v22 & 0x32 ^ 0x47;
  v57 = (((v22 ^ (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * ((v22 ^ v5) & (2 * (v56 ^ v22 & 6)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56))) ^ 0x323A2) & ~v55 | v55 & 0xFCDC00) << 8;
  v58 = v57 ^ 0xE05862FF;
  LODWORD(STACK[0x3470]) = v57 & 0x1E841D00;
  LOBYTE(v57) = *(STACK[0x55E0] + 1639);
  v59 = v57 & 2 ^ 0xEF;
  v60 = *(v48 + 3596);
  v61 = v60 & 0x28 ^ 0x5A;
  v62 = (((v57 ^ (2 * ((v57 ^ v5) & (2 * ((v57 ^ v5) & (2 * ((v57 ^ v5) & (2 * ((v57 ^ v5) & (2 * ((v57 ^ v5) & (2 * ((v57 ^ v5) & 0x36 ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 2) << 16) | (((v60 ^ (2 * ((v60 ^ v5) & (2 * ((v60 ^ v5) & (2 * ((v60 ^ v5) & (2 * ((v60 ^ v5) & (2 * ((v60 ^ v5) & (2 * v61) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61))) ^ 0x28) << 8);
  v63 = *(v29 + 1510);
  v64 = v63 & 0xE2 ^ 0xBF;
  v65 = v63 ^ v5;
  LODWORD(STACK[0x3A08]) = ((v63 ^ (2 * (v65 & (2 * (v65 & (2 * (v65 & (2 * (v65 & (2 * (v65 & (2 * (v65 & 0x16 ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64))) ^ 0xDA0938) & ~v62 | v62 & 0x25F600;
  LODWORD(STACK[0x3458]) = (v20 << 8) & 0xBF4DFD00;
  LODWORD(STACK[0x3438]) = (v43 << 8) & 0x13FDF700;
  LODWORD(STACK[0x37E8]) = (v52 << 8) & 0xF5328500;
  return (*(STACK[0x57D8] + 8 * v6))(v58, (v43 << 8) ^ 0x440000FFu, 255, v46, 19732006);
}

uint64_t sub_1002D0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v7 = a6 < 0x6950E4D2;
  if (v7 == (v6 + 1546473812) < 0x6950E4D2)
  {
    v7 = v6 + 1546473812 < a6;
  }

  return (*(STACK[0x57D8] + 8 * (((4 * v7) | (16 * v7)) ^ LODWORD(STACK[0x57A0]))))();
}

uint64_t sub_1002D2A50()
{
  v1 = STACK[0x57D8];
  STACK[0x9E28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 7558) ^ v0)))();
}

uint64_t sub_1002D2AA0()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0xCAC] & 0x6793CFEF;
  v2 = STACK[0x51B8] - 22614;
  STACK[0xC2F8] = STACK[0x8B60];
  v3 = STACK[0xC560];
  v4 = v0 ^ v2 ^ (((v0 - v2) | (v2 - v0)) >> 31) ^ 1;
  LODWORD(STACK[0x5964]) = v4;
  STACK[0x6370] = 0x1883660EE8144416;
  STACK[0x7810] = v3;
  LODWORD(STACK[0xC0DC]) = -2013569045;
  STACK[0x8000] = &STACK[0x6370];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = v4 + 2101965952;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0x1141 ^ (13255 * ((v1 ^ 0x8ACB973F) + v2 < 0x225DF950)))))();
}

uint64_t sub_1002D2CD4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0xC0C0] = 0;
  return (*(v1 + 8 * (v0 - 8953)))(v2);
}

uint64_t sub_1002D2D74()
{
  v2 = STACK[0x9E88];
  STACK[0xEA10] = v1;
  STACK[0xEA18] = v2;
  return (*(STACK[0x57D8] + 8 * ((20457 * (v1 - v2 > (1797 * (((v0 - 6907) | 0xC0) ^ 0xC6u)) - 23352)) ^ v0)))();
}

uint64_t sub_1002D2DD8()
{
  v3 = v0 - 161027995;
  v4 = v3 < 0xFC94EF3C;
  v5 = ((v2 - 9691) | 0x4E0) + v1 - 57350080 < v3;
  if (v4 != v1 > 0x36B10C3)
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((4078 * ((((v2 ^ 0x37) + 1) ^ v5) & 1)) ^ v2)))();
}

uint64_t sub_1002D2E6C()
{
  v2 = *(v0 + 2992);
  v3 = *STACK[0x51E8];
  v4 = *STACK[0x51F0];
  v5 = *(v4 + ((((((2 * (v2 & 0xFFFFFFF8)) & 0xAAE773D0) + (v2 & 0xFFFFFFF8 ^ 0xD573B9EC)) & 0xFFFFFFF8) - 1118011712) & v3));
  v6 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = (((2 * (v5 + v6)) | 0xFDDC3AE7381135E4) - (v5 + v6) + 0x111E28C63F7650ELL) ^ 0x3C4123D9A3F92216;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x65F254DD188DB4FCLL;
  v10 = __ROR8__(v9, 8);
  v11 = v9 ^ __ROR8__(v8, 61);
  v12 = (v10 + v11 - ((2 * (v10 + v11)) & 0x23DC3C00967766) + 0x11EE1E004B3BB3) ^ 0x6FE1A8886152293ELL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xA1B29DC5D776132BLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0x9C30B47177A51DECLL) - (v16 + v15) + 0x31E7A5C7442D710ALL) ^ 0x211C7A794E37C61ALL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0x6D1664858CE2308) - (v19 + v18) + 0x7C974CDBD398EE7CLL) ^ 0x5BAF003BE67EC85ALL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x5455012E8AB1C38FLL;
  LODWORD(v22) = 3903 * ((((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v21, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 4008381;
  v23 = *(v0 + 4008);
  v24 = *(v23 + v22 - 5896 * (((1456909 * v22) >> 32) >> 1));
  v25 = *(v0 + 4000);
  v25[39128] = v24;
  v26 = *(v0 + 3752) - 0x30BDFED8F32E6725;
  v27 = *(v4 + (v3 & (((*(v0 + 3752) + 215062747) & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8));
  v28 = (__ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8) + v27) ^ 0x91364DCB68334DBLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x3D984236E1CD54AALL) - (v30 + v29) + 0x6133DEE48F1955AALL) ^ 0x25BEB18828088DFFLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * ((v33 + v32) ^ 0x543FF4475AED3B3)) & 0x3D9E3E283BF3964) - ((v33 + v32) ^ 0x543FF4475AED3B3) + 0x7E130E0EBE20634DLL) ^ 0x8EA20F99C3249286;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x67536EC0FB8B549DLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v1;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = __ROR8__((((2 * (v40 + v39)) & 0xB947C23FDD48DFDALL) - (v40 + v39) + 0x235C1EE0115B9012) ^ 0x72F5585B0BB144BLL, 8);
  v42 = (((2 * (v40 + v39)) & 0xB947C23FDD48DFDALL) - (v40 + v39) + 0x235C1EE0115B9012) ^ 0x72F5585B0BB144BLL ^ __ROR8__(v39, 61);
  v43 = (v41 + v42 - ((2 * (v41 + v42)) & 0x1E410DAEC5FCFA7ALL) - 0x70DF79289D0182C3) ^ 0xCFE9493D5E3BB6DCLL;
  LODWORD(v42) = 3903 * ((((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0x6F635C2EE5D7D2C6) >> (8 * (v26 & 7u))) ^ *v26) + 4008381;
  v25[37883] = *(v23 + v42 - 5896 * (((1456909 * v42) >> 32) >> 1));
  v44 = *(v0 + 3976);
  v45 = *++v44;
  v46 = __ROR8__(v44 & 0xFFFFFFFFFFFFFFF8, 8);
  v47 = (v46 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL;
  v48 = __ROR8__((v46 - 0x70824D863E123F43) ^ 0xD387EB17F911FF76, 8);
  v49 = __ROR8__((0xCA50F7C575C529BELL - ((v48 + v47) | 0xCA50F7C575C529BELL) + ((v48 + v47) | 0x35AF083A8A3AD641)) ^ 0xFD36CCD9585101ALL, 8);
  v50 = (0xCA50F7C575C529BELL - ((v48 + v47) | 0xCA50F7C575C529BELL) + ((v48 + v47) | 0x35AF083A8A3AD641)) ^ 0xFD36CCD9585101ALL ^ __ROR8__(v47, 61);
  v51 = (((2 * (v49 + v50)) | 0xD814DA9EA92562DELL) - (v49 + v50) - 0x6C0A6D4F5492B16FLL) ^ 0x97CBE2C4C1FA752FLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) & 0x7A722D814631508ELL) - (v53 + v52) - 0x3D3916C0A318A848) ^ 0x882327503F702E8BLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x2854CB5A8BDB8317;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xF7721CC6F3AEFBDCLL;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) | 0x88270FC4A3C9DBD0) - (v60 + v59) - 0x441387E251E4EDE8) ^ 0xA2A490D8CACF5DB5;
  LODWORD(v42) = (((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v59, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v44 & 7u))) ^ v45;
  v25[37550] = *(v23 + 3903 * v42 + 4008381 - 5896 * (((1456909 * (3903 * v42 + 4008381)) >> 32) >> 1));
  v62 = *(v0 + 3984) + 13;
  *(v0 + 296) = v62;
  v63 = STACK[0x57D8];
  v64 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x23B7));
  *(v0 + 3000) = v62;
  *(v0 + 280) = v64;
  return (*(v63 + 8 * (STACK[0x51B8] ^ 0x2346)))();
}

uint64_t sub_1002D3518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 + 3346)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1002D3780()
{
  v3 = *(STACK[0x44F0] + 260) & 1;
  v4 = STACK[0x13D0];
  *(v1 + 604) = STACK[0x13D0] + v0 + 1451493860;
  *(v1 + 616) = v4;
  *(v1 + 624) = v4 + v0 + 9133946 - 2;
  *(v1 + 600) = v0 + 9133946 - v4 + 634;
  *(v1 + 612) = (v0 + 9133946) ^ v4;
  *(v1 + 608) = v4;
  *(v1 + 592) = v3 ^ v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1002D3B24()
{
  v4 = *v0;
  v5 = STACK[0x57D8];
  STACK[0xB390] = *(STACK[0x57D8] + 8 * v3);
  return (*(v5 + 8 * (((v4 == v2) * ((((v1 + 42641268) | 0x48001292) - 1250591602) ^ (v1 - 859711774) & 0x333E5FDF)) ^ v1)))();
}

uint64_t sub_1002D3D88(uint64_t a1, uint64_t a2)
{
  v5 = 551690071 * ((v4 - 240) ^ 0x719D52CE4EED5357);
  *(a2 + 600) = ((v2 + 1668424031) ^ 6) - v5;
  *(a2 + 592) = (v2 - 1079089617) ^ v5;
  *(a2 + 596) = v5 ^ 0xDC8 ^ (v2 + 1668424031);
  *(a2 + 608) = v5;
  *(a2 + 624) = v5 + v3;
  *(a2 + 616) = 4151854225 - v5;
  *(a2 + 604) = v2 + 1668424031 - v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v2 + 9201)))(v4 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_1002D3F68@<X0>(int a1@<W8>)
{
  STACK[0x7ED8] += ((v1 - 520906954) | 0x42) ^ 0xFFFFFFFFFFFFA7D6;
  *(v2 + 1580) = STACK[0xCC08];
  *(v2 + 1576) = a1;
  return (*(STACK[0x57D8] + 8 * ((1674 * (v1 > 0x5E55366D)) ^ (v1 - 520928899))))();
}

uint64_t sub_1002D3FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, _DWORD *a7@<X8>)
{
  v11 = *(*v10 + ((((((2 * ((a4 + v7) & (v8 - 4472))) & 0x5E859950) + ((a4 + v7) & (v8 - 4472) ^ 0xAF42CCA9)) & 0xFFFFFFF8) + 798747968) & *a7));
  v12 = __ROR8__((a4 + v7) & ((v8 + 20848) - 25320), 8);
  v13 = (((2 * (v11 + v12)) & 0x7064AC8B9C9C9DB2) - (v11 + v12) + 0x47CDA9BA31B1B126) ^ 0x4EDECD66873285FDLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * ((v15 + v14) ^ 0x2FAC6B3B695782F6)) & 0x565AE0EECE3AA69ELL) - ((v15 + v14) ^ 0x2FAC6B3B695782F6) + 0x54D28F8898E2ACB0) ^ 0x3FF38BDF56A4F613;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v9;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a5;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0xFE3918722DDE63E4) - (v22 + v21) + 0xE373C6E910CE0DLL) ^ 0xF864369861004401;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((v25 + v24) & a1 ^ 0x12702840D0028ALL) + ((v25 + v24) ^ 0xD74D0290372D0D65) - (((v25 + v24) ^ 0xD74D0290372D0D65) & a1)) ^ a2;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = STACK[0x5550];
  v30 = (((v28 + v27) & a3 ^ 0x9190048054881094) + ((v28 + v27) & 0x4A2E73718A33E662 ^ 0x22633008203A641) - 1) ^ 0xD37FF86AEA4E7D35;
  *(STACK[0x57C0] + v7) = (((__ROR8__(v30, 8) + (v30 ^ __ROR8__(v27, 61))) ^ a6) >> (8 * ((a4 + v7) & 7))) ^ *(a4 + v7);
  return (*(STACK[0x57D8] + 8 * ((27615 * (v7 + 1 == v29)) ^ v8)))();
}

uint64_t sub_1002D4248()
{
  LODWORD(STACK[0x7E74]) = v0;
  v3 = 551690071 * ((~((v2 - 240) | 0x10F1396F5C378375) + ((v2 - 240) & 0x10F1396F5C378375)) ^ 0x9E93945EED252FDDLL);
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4CC]) = v1 - v3 - 720660172;
  STACK[0x1D4E0] = v3 + 4151854225u;
  LODWORD(STACK[0x1D4C8]) = v1 - v3 - 720660062;
  LODWORD(STACK[0x1D4C4]) = (v1 - 720664348) ^ v3;
  LODWORD(STACK[0x1D4C0]) = (v1 - 1079089617) ^ v3;
  STACK[0x1D4D8] = v0 - v3;
  v4 = v1 + 9201;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1002D4350()
{
  v2 = v0 + 926753849;
  v3 = (v2 ^ 0xA0AADBF6) & (2 * (v2 & 0xC8C2DBC7)) ^ v2 & 0xC8C2DBC7;
  v4 = ((2 * ((v0 + 926753849) ^ (v1 + 5989) ^ 0x302F152C)) ^ 0xF1DB2D7A) & ((v0 + 926753849) ^ (v1 + 5989) ^ 0x302F152C) ^ (2 * ((v0 + 926753849) ^ (v1 + 5989) ^ 0x302F152C)) & ((v1 ^ 0x45D7) - 118648426);
  v5 = v4 ^ 0x8249285;
  v6 = (v4 ^ 0x60090438) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ LODWORD(STACK[0x320])) & v5 ^ (4 * v5) & 0xF8ED96BC;
  v8 = (v7 ^ 0xE0A412B9) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x18498409)) ^ 0x8ED96BD0) & (v7 ^ 0x18498409) ^ (16 * (v7 ^ 0x18498409)) & 0xF8ED96B0;
  v10 = v8 ^ 0xF8ED96BD ^ (v9 ^ 0x88C90200) & (v8 << 8);
  v11 = STACK[0x57D8];
  v12 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x3CCF)))(v2 ^ (2 * ((v10 << 16) & 0x78ED0000 ^ v10 ^ ((v10 << 16) ^ 0x16BD0000) & (((v9 ^ 0x7024942D) << 8) & 0x78ED0000 ^ 0x10690000 ^ (((v9 ^ 0x7024942D) << 8) ^ 0x6D960000) & (v9 ^ 0x7024942D)))) ^ 0x1843F6BD);
  STACK[0xBB00] = v12;
  return (*(v11 + 8 * (((v12 != 0) | (8 * (v12 != 0))) ^ v1)))();
}

uint64_t sub_1002D4500()
{
  v2 = v0 + 2659;
  v3 = (((v1 ^ 0x620CBA63) - 1645001315) ^ ((v1 ^ 0x37A4735) - 58345269) ^ (((((v0 + 1363553143) & 0xAEB9FFDE) - 1284889236) ^ v1) + 1284866622)) & (v0 - 11524);
  v4 = v3 == 769884012;
  v5 = v3 != 769884012;
  if (v4)
  {
    v6 = -143113107;
  }

  else
  {
    v6 = -143113071;
  }

  LODWORD(STACK[0xDFFC]) = v6;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (4 * v5))))();
}

uint64_t sub_1002D4650@<X0>(unint64_t a1@<X8>)
{
  v7 = (((v3 ^ 0x5D5CD8B0) - 1566365872) ^ ((v3 ^ 0xC88C0057) + 930348969) ^ (((10 * (v5 ^ 0x1B2F) + 1204552803) ^ v3) - 1204574323)) + 443804344;
  v8 = 289235981 * ((((2 * (v6 - 240)) | 0xD8A70FE2) - (v6 - 240) + 330070031) ^ 0x6BD157CE);
  LODWORD(STACK[0x1D4D8]) = v7 ^ v8;
  STACK[0x1D4D0] = v1;
  STACK[0x1D4E0] = a1;
  LODWORD(STACK[0x1D4C4]) = v5 - v8 + 8925;
  STACK[0x1D4C8] = v4;
  STACK[0x1D4E8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v2 ^ 0x426B4D96) - v8;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (v5 + 26858)))(v6 - 240);
  return (*(v9 + 8 * v5))(v10);
}

uint64_t sub_1002D476C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v8 = v5;
  v9 = v7 + v5;
  v10 = __ROR8__(v9 & ((v3 - 1915903073) & 0x72322DFB ^ 0xFFFFFFFFFFFFD609), 8);
  v11 = (v10 + a2) ^ 0x9FE3749E00AE5B9ELL;
  v12 = __ROR8__((v10 + a2) ^ a1, 8);
  v13 = (((2 * (v12 + v11)) & 0x8259266162344CE4) - (v12 + v11) + 0x3ED36CCF4EE5D98DLL) ^ 0x21A8FE5B630AF862;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v6 - ((v15 + v14) | v6) + ((v15 + v14) | 0xD9D2B4A8123E6AD6)) ^ 0xC5D06BF337BC093BLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0x31DDCE9B586F6A6CLL) - (v18 + v17) + 0x671118B253C84ACALL) ^ 0xC912A0339FE9F505;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8) + v20;
  v22 = (((2 * v21) & 0x4CC9F8A887E37544) - v21 - 0x2664FC5443F1BAA3) ^ 0xFBD70A61F8024956;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xA199F9AE5F876A45;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xB2823E14A03C0367;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = v5 + 1;
  *(a3 + v8) = (((((2 * (v28 + v27)) | 0x912CEE967EAC9626) - (v28 + v27) - 0x4896774B3F564B13) ^ 0x21C70BE6382E5A90) >> (8 * (v9 & 7u))) ^ *v9;
  if (v4 < 0x3807EAEA != v29 > 0xC7F81515)
  {
    v30 = v4 < 0x3807EAEA;
  }

  else
  {
    v30 = v29 + 940042986 < v4;
  }

  return (*(STACK[0x57D8] + 8 * (((4 * v30) | (32 * v30)) ^ (v3 - 13901))))();
}

uint64_t sub_1002D4A24@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W3>, char a4@<W4>, char a5@<W8>)
{
  STACK[0x52B8] = v10;
  LODWORD(STACK[0x4DA0]) = LODWORD(STACK[0x54E0]) + LODWORD(STACK[0x5510]);
  v11 = LODWORD(STACK[0x53E8]) + LODWORD(STACK[0x5630]);
  LODWORD(STACK[0x4FE8]) = LODWORD(STACK[0x5408]) + LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x4D98]) = LODWORD(STACK[0x53D8]) + LODWORD(STACK[0x5440]);
  LODWORD(STACK[0x4F40]) = LODWORD(STACK[0x5430]) | LODWORD(STACK[0x5470]);
  LODWORD(STACK[0x4E08]) = LODWORD(STACK[0x5420]) | LODWORD(STACK[0x5450]);
  LODWORD(STACK[0x4DB8]) = LODWORD(STACK[0x5410]) | LODWORD(STACK[0x53F8]);
  v12 = v7 & 0x4C ^ 0xCC;
  v13 = v6 & 0x2C ^ 0xDC;
  v14 = v5 & 0xE2 ^ 0x3F;
  v15 = (((v6 ^ (2 * ((v6 ^ a5) & (2 * ((v6 ^ a5) & (2 * ((v6 ^ a5) & (2 * ((v6 ^ a5) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x2C) << 16) | (((v5 ^ (2 * ((v5 ^ a5) & (2 * ((v5 ^ a5) & (2 * ((v5 ^ a5) & (2 * ((v5 ^ a5) & (2 * ((v5 ^ a5) & (2 * ((v5 ^ a5) & 0x16 ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xE2) << 8);
  v16 = (((v7 ^ (2 * ((v7 ^ a5) & (2 * (((((v7 ^ a5) & (2 * ((v7 ^ a5) & (2 * v12) ^ v12))) ^ v12) << (((v8 + 70) | 0x48) + 50)) & (v7 ^ a5) ^ v12)) ^ v12))) ^ 0x40BCEF) & ~v15 | v15 & 0xBF4300) << 8;
  LOBYTE(v15) = a4 & 0xA6 ^ 0x99;
  v17 = a3 & 0xEA ^ 0xBB;
  v18 = (((a3 ^ (2 * ((a3 ^ a5) & (2 * ((a3 ^ a5) & (2 * ((a3 ^ a5) & (2 * ((a3 ^ a5) & (2 * ((a3 ^ a5) & (2 * ((a3 ^ a5) & 0x1E ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xEA) << 8) | (((a4 ^ (2 * ((a4 ^ a5) & (2 * ((a4 ^ a5) & (2 * ((a4 ^ a5) & (2 * ((a4 ^ a5) & (2 * ((a4 ^ a5) & (2 * (v15 ^ a4 & a2)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0xA6) << 16);
  v19 = a1 & 0xD8 ^ a2;
  v20 = ((v18 ^ 0x3FDBFF) & ((a1 ^ (2 * ((a1 ^ a5) & (2 * ((a1 ^ a5) & (2 * ((a1 ^ a5) & (2 * ((a1 ^ a5) & (2 * ((a1 ^ a5) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x375B5E) | v18 & 0xC8A400) << 8;
  LOBYTE(v18) = v9 & 0xE4 ^ 0x38;
  LODWORD(STACK[0x4FD0]) = (v16 ^ 0x310048FF) & ((v9 ^ (2 * ((v9 ^ a5) & (2 * ((v9 ^ a5) & (2 * ((v9 ^ a5) & (2 * ((v9 ^ a5) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x7184E9AD) | v16 & 0x8E7B1600;
  LODWORD(STACK[0x5630]) = v20 & 0x6802E700;
  v21 = *(STACK[0x5750] + 3323);
  v22 = STACK[0x5760];
  LOBYTE(v20) = *(STACK[0x5760] + 1404);
  LOBYTE(v18) = *(STACK[0x55E0] + 926);
  v23 = v18 & 0x94 ^ 0x30;
  v24 = STACK[0xDCB8];
  v25 = *(STACK[0xDCB8] + 3429);
  v26 = v25 & 0x78 ^ 0x62;
  v27 = (((v18 ^ (2 * ((v18 ^ a5) & (2 * ((v18 ^ a5) & (2 * ((v18 ^ a5) & (2 * ((v18 ^ a5) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x94) << 16) | (((v25 ^ (2 * ((v25 ^ a5) & (2 * ((v25 ^ a5) & (2 * ((v25 ^ a5) & (2 * ((v25 ^ a5) & (2 * ((v25 ^ a5) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x78) << 8);
  v28 = v21 & 0xC2 ^ 0x8F;
  v29 = (((v21 ^ (2 * ((v21 ^ a5) & (2 * ((v21 ^ a5) & (2 * ((v21 ^ a5) & (2 * ((v21 ^ a5) & (2 * ((v21 ^ a5) & (2 * ((v21 ^ a5) & 0x36 ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x8CE661) & ~v27 | v27 & 0x731900) << 8;
  v30 = v20 & 0xA ^ 0xEB;
  v31 = v29 ^ 0x701814FFu;
  LODWORD(STACK[0x5510]) = v29 & 0xFA36B00;
  LOBYTE(v29) = *(STACK[0x56D0] + 1753);
  v32 = v29 & 0x98 ^ 0x32;
  v33 = *(v24 + 2405);
  v34 = v33 & 0xA ^ 0x6B;
  v35 = (((v29 ^ (2 * ((v29 ^ a5) & (2 * ((v29 ^ a5) & (2 * ((v29 ^ a5) & (2 * ((v29 ^ a5) & (2 * ((v29 ^ a5) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0x98) << 16) | (((v33 ^ (2 * ((v33 ^ a5) & (2 * ((v33 ^ a5) & (2 * ((v33 ^ a5) & (2 * ((v33 ^ a5) & (2 * ((v33 ^ a5) & (2 * ((v33 ^ a5) & 0x3E ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0xA) << 8);
  STACK[0x55A0] = v24;
  v36 = *(v24 + 2223);
  v37 = v36 & 0xE6 ^ 0xB9;
  v38 = (v35 ^ 0x73FFFF) & ((v36 ^ (2 * ((v36 ^ a5) & (2 * ((v36 ^ a5) & (2 * ((v36 ^ a5) & (2 * ((v36 ^ a5) & (2 * ((v36 ^ a5) & (2 * (v37 ^ v36 & a2)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x12F613) | v35 & 0xED0900;
  LOBYTE(v35) = *(STACK[0x5770] + 3505);
  v39 = v35 & 0x78 ^ 0xE2;
  v40 = *(STACK[0x56F0] + 1897);
  LOBYTE(v18) = v40 & 0xC2 ^ 0x8F;
  v41 = v40 ^ a5;
  v42 = *(STACK[0x57A0] + 1146);
  v43 = (((v35 ^ (2 * ((v35 ^ a5) & (2 * ((v35 ^ a5) & (2 * ((v35 ^ a5) & (2 * ((v35 ^ a5) & (2 * ((v35 ^ a5) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x78) << 16) | (((v40 ^ (2 * (v41 & (2 * (v41 & (2 * (v41 & (2 * (v41 & (2 * (v41 & (2 * (v41 & 0x36 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xC2) << 8);
  v44 = v42 & 0x64 ^ 0xF8;
  LODWORD(STACK[0x5160]) = v11 << 8;
  v45 = (v42 ^ a5) & (2 * ((v42 ^ a5) & (2 * ((v42 ^ a5) & (2 * ((v42 ^ a5) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44;
  v46 = *(v22 + 615);
  v47 = ((v42 ^ (2 * v45)) ^ 0xE029E5) & ~v43 | v43 & 0x1FD600;
  v48 = v46 & 0x5A ^ 0xD3;
  v49 = *(STACK[0x57D8] + 8 * ((26772 * (v8 > 0x1E53908B)) ^ (v8 + 1700293899)));
  LODWORD(STACK[0x5170]) = (v47 << 8) & 0xD2152D00;
  LODWORD(STACK[0x5178]) = LODWORD(STACK[0x5460]) + LODWORD(STACK[0x5490]);
  return v49((v20 ^ (2 * ((v20 ^ a5) & (2 * ((v20 ^ a5) & (2 * ((v20 ^ a5) & (2 * ((v20 ^ a5) & (2 * ((v20 ^ a5) & (2 * ((v20 ^ a5) & 0x3E ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))), (v38 << 8) ^ 0xC000AFFu, v31, (v46 ^ (2 * ((v46 ^ a5) & (2 * ((v46 ^ a5) & (2 * ((v46 ^ a5) & (2 * ((v46 ^ a5) & (2 * ((v46 ^ a5) & (2 * (v48 ^ v46 & 0x2E)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))));
}

uint64_t sub_1002D5918(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = 7710;
  a3.n128_u8[2] = 30;
  a3.n128_u8[3] = 30;
  a3.n128_u8[4] = 30;
  a3.n128_u8[5] = 30;
  a3.n128_u8[6] = 30;
  a3.n128_u8[7] = 30;
  a4.n128_u16[0] = 4112;
  a4.n128_u8[2] = 16;
  a4.n128_u8[3] = 16;
  a4.n128_u8[4] = 16;
  a4.n128_u8[5] = 16;
  a4.n128_u8[6] = 16;
  a4.n128_u8[7] = 16;
  return (*(STACK[0x57D8] + 8 * v4))(a1, a2, a3, a4);
}

uint64_t sub_1002D5A2C()
{
  v11 = *(v5 + 4008);
  v12 = *(v11 + v2 - 5896 * ((((v2 >> 3) * v3) >> 64) >> 4));
  v13 = *(v5 + 4000);
  v14 = *(v13 + 4 * ((2717 * (v6 + v12 + ((v12 < 0x1C) << 8) + 1592) - 1867204981) % 0x2240));
  v15 = *(v11 + v10 + 3903 * (BYTE1(v14) ^ 0x64) - 5896 * (((1456909 * (v10 + 3903 * (BYTE1(v14) ^ 0x64u))) >> 32) >> 1));
  v16 = *(v11 + (3903 * (((HIBYTE(v14) ^ (v8 + 2985)) - 1561018754) ^ ((HIBYTE(v14) ^ (v9 + 2872)) + 658488194) ^ ((HIBYTE(v14) ^ 0x85CB05B0) + 1986197961)) + 329317810) % 0x1708);
  v17 = *(v11 + v10 + 3903 * (BYTE2(v14) ^ 0xC5) - 5896 * (((1456909 * (v10 + 3903 * (BYTE2(v14) ^ 0xC5u))) >> 32) >> 1));
  v18 = *(v11 + (3903 * (((v14 ^ 0xF1B97819) + 124191542) ^ ((v14 ^ 0xBCB29E3C) + v7) ^ ((v14 ^ 0x4D0BE6D4) - 1143628295)) + 909814811) % 0x1708);
  LOBYTE(v11) = v16 & 0x8A ^ 0x53;
  v19 = (v17 & 0xE4 | 0x11) ^ v17 & 0xE2;
  v20 = v15 & 0x96 ^ 0x59;
  v21 = v15 ^ 0x64;
  LODWORD(v11) = (((v16 ^ (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & 0x2E ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0x8A) << 16) | (((v17 ^ (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 6) << 8);
  v22 = v18 & 0xA8 ^ 0xE2;
  *(v13 + 4 * (v4 % 0x2240)) = ((((((v15 ^ (2 * (v21 & (2 * (v21 & (2 * (v21 & (2 * (v21 & (2 * (v21 & (2 * (v20 ^ v15 & 0x32)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x4DEB09) & ~v11 | v11 & 0xB21400) << 8) ^ 0x640E60DE) & ((v18 ^ (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x44) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xFFFFFF77) | (v18 ^ (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x44) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) & 0x21) ^ 0x65209B0F;
  return (*(STACK[0x57D8] + 8 * ((103 * (v1 == 0)) ^ v0)))();
}

uint64_t sub_1002D5DA0()
{
  v1 = STACK[0x6508];
  v2 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * ((13929 * ((v0 + 1902691658) >= 0xD2888246)) ^ (v0 + 4284))))(v1);
}

uint64_t sub_1002D6174@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0xDD4C]) = a1;
  STACK[0xDD50] = a1;
  v2 = a1 + 1977567870;
  v3 = (((v1 + 467412207) & 0xE4237ABF) + 1675017549) ^ v2;
  v4 = ((2 * (v2 & 0x8A20B58A)) & 0x400A04 | v2 & 0x8A20B58A) ^ (2 * (v2 & 0x8A20B58A)) & v3;
  v5 = ((2 * v3) ^ 0xD3EC1418) & v3 ^ (2 * v3) & (v1 - 369776766);
  v6 = v5 ^ 0x28120A04;
  v7 = (v5 ^ 0x4194000C) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xA7D82830) & v6 ^ (4 * v6) & 0xE9F60A0C;
  v9 = (v8 ^ 0xA1D00800) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x4826020C)) ^ 0x9F60A0C0) & (v8 ^ 0x4826020C) ^ (16 * (v8 ^ 0x4826020C)) & 0xE9F60A00;
  v11 = v9 ^ 0xE9F60A0C ^ (v10 ^ 0x89600000) & (v9 << 8);
  v12 = v2 ^ (2 * ((v11 << 16) & 0x69F60000 ^ v11 ^ ((v11 << 16) ^ 0xA0C0000) & (((v10 ^ 0x60960A0C) << 8) & 0xE9F60000 ^ 0x9F40000 ^ (((v10 ^ 0x60960A0C) << 8) ^ 0x760A0000) & (v10 ^ 0x60960A0C))));
  LODWORD(STACK[0xDD5C]) = v12 ^ 0x9BD82106;
  v13 = STACK[0x57D8];
  v14 = (*(STACK[0x57D8] + 8 * (v1 + 6580)))(v12 ^ 0x49C4A192);
  STACK[0xDD60] = v14;
  if (v14)
  {
    v15 = -143113071;
  }

  else
  {
    v15 = STACK[0x4C30];
  }

  LODWORD(STACK[0xDD6C]) = v15;
  return (*(v13 + 8 * ((27 * (v14 != 0)) ^ v1)))();
}

uint64_t sub_1002D6380@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x6D50]) = v2;
  LODWORD(STACK[0xD318]) = v3;
  LODWORD(STACK[0xD31C]) = a1;
  LODWORD(STACK[0x7154]) = STACK[0x57B0];
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1002D63CC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x6040] = 0;
  STACK[0x5A70] = 0;
  STACK[0x8040] = 0;
  return (*(STACK[0x57D8] + 8 * ((((((v1 - 22288) | 0x1C01) + 4988) ^ 0x3728 ^ (((v1 - 22288) | 0x1C01) - 1815145811) & 0x6C30D73F) * (a1 == 0x308E083E0C524CBELL)) ^ ((v1 - 22288) | 0x1C01))))();
}

uint64_t sub_1002D6490()
{
  LODWORD(STACK[0x57C0]) = ((v0 - 26486924) & 0x1943AFE) - 3293;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 | 0x53F0)))(1032);
  STACK[0xD8A8] = v2;
  return (*(v1 + 8 * ((7 * (v2 != 0)) ^ v0)))();
}

uint64_t sub_1002D6514()
{
  *v1 = v2 ^ 0x1D ^ (v0 - 92);
  v3 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v3 + 8 * (v0 + 3381)))();
}

uint64_t sub_1002D65E0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6497)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1002D6620@<X0>(unint64_t a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X5>, unint64_t a5@<X6>, unint64_t a6@<X7>, unint64_t a7@<X8>)
{
  STACK[0x5490] = 0;
  v15 = *(STACK[0x57D8] + 8 * (((a2 < ((v8 - 1076970332) & 0xDFFFDF77 ^ 0x9FCEDE73)) * ((v8 + 805312656) & 0xCFFFFD7E ^ 0x586D)) ^ (v8 - 12472)));
  *&STACK[0x55E0] = vdupq_n_s64(a4);
  *&STACK[0x55D0] = vdupq_n_s64(v12);
  *&STACK[0x55B0] = vdupq_n_s64(a7);
  *&STACK[0x55C0] = vdupq_n_s64(a5);
  *&STACK[0x55F0] = vdupq_n_s64(v10);
  STACK[0x5480] = v9;
  STACK[0x5470] = a3;
  *&STACK[0x5640] = vdupq_n_s64(v14);
  *&STACK[0x5630] = vdupq_n_s64(a6);
  *&STACK[0x5620] = vdupq_n_s64(0xBC372FD693E698B0);
  *&STACK[0x57C0] = vdupq_n_s64(0x90224A555BCB4C3CLL);
  *&STACK[0x57B0] = vdupq_n_s64(0x8A5DCA124299B0A7);
  *&STACK[0x57A0] = vdupq_n_s64(0xE74F54541981EA5DLL);
  *&STACK[0x5790] = vdupq_n_s64(0x69D9C8467BD3E599uLL);
  *&STACK[0x5760] = vdupq_n_s64(0x4EC11CE98093265uLL);
  *&STACK[0x5750] = vdupq_n_s64(v11);
  *&STACK[0x56F0] = vdupq_n_s64(0x73980E9077463D3AuLL);
  *&STACK[0x5610] = vdupq_n_s64(v13);
  *&STACK[0x5600] = vdupq_n_s64(0x9D7C7DD391C1621DLL);
  *&STACK[0x5740] = vdupq_n_s64(v7);
  *&STACK[0x5780] = vdupq_n_s64(a1);
  *&STACK[0x5730] = vdupq_n_s64(0x77B2E7EACCC4165EuLL);
  *&STACK[0x5720] = vdupq_n_s64(0xE7AA8E4652F5A623);
  *&STACK[0x5770] = vdupq_n_s64(0x14BB94248533614EuLL);
  return v15();
}

void *sub_1002D67FC()
{
  v0 = STACK[0x2B80];
  v1 = STACK[0x2B80] ^ 0xC69;
  v2 = STACK[0x57D8];
  STACK[0xAE08] = *(STACK[0x57D8] + 8 * STACK[0x2B80]);
  return (*(v2 + 8 * ((v1 + 2921) ^ v0)))(&STACK[0x85BC]);
}

uint64_t sub_1002D6840@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 | 0x6048)))(a1);
  *(STACK[0x98E0] + 24) = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1002D68D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = v12 + STACK[0x5780];
  v24 = __ROR8__((v23 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = a3 - (((0xB1F49ABE1B6CA29CLL - v24) | v9) + ((v24 + a5) | a7));
  v26 = v25 ^ a9;
  v27 = v25 ^ v14;
  v28 = __ROR8__(v26, 8);
  v29 = (v13 - ((v28 + v27) | v13) + ((v28 + v27) | v10)) ^ a6;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((v31 + v30 - (v17 & (2 * (v31 + v30))) + v18) ^ v19, 8);
  v33 = (v31 + v30 - (v17 & (2 * (v31 + v30))) + v18) ^ v19 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ a2;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((v20 & (2 * (v36 + v35))) - (v36 + v35) + v21) ^ v22;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - (a1 & (2 * (v39 + v38))) - 0x446C76F003E72D56) ^ 0x1A0A70A1A39FB8EFLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ a4;
  v43 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61));
  v44 = v12 - 1;
  *(v23 + 9) = *(STACK[0x5790] + v44) ^ (((v15 - (v43 | v15) + (v43 | a8)) ^ v16) >> (8 * ((v23 + 9) & 7))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * (((2 * (v44 != 0)) | (4 * (v44 != 0))) ^ v11)))();
}

uint64_t sub_1002D6A28()
{
  v0 = STACK[0x51B8];
  STACK[0xAC10] = 0;
  v1 = STACK[0x57D8];
  v2 = STACK[0xA54];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xA54]));
  return (*(v1 + 8 * ((v0 - 17164) ^ v2)))(0x308E083E0C524CBELL);
}

uint64_t sub_1002D6AA4@<X0>(unint64_t a1@<X8>)
{
  STACK[0xB1B0] = a1;
  LODWORD(STACK[0xAE38]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1002D6B98@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W8>)
{
  v8 = (v3 + v4 - 0x23B539C419760B5ALL);
  v9 = *(STACK[0x57D8] + 8 * a3);
  *v8 = (HIBYTE(v5) ^ 0xF1) - ((2 * (HIBYTE(v5) ^ 0xF1)) & 0xB8) - 36;
  v8[1] = (BYTE6(v5) ^ a1) - ((2 * (BYTE6(v5) ^ a1)) & 0xB8) - 36;
  v8[2] = BYTE5(v5) + (~(2 * BYTE5(v5)) | 0x47) - 35;
  v8[3] = (BYTE4(v5) ^ 0x3B) - ((2 * (BYTE4(v5) ^ 0x3B)) & 0xB8) - 36;
  v8[4] = (BYTE3(v5) ^ 0xA0) - ((2 * BYTE3(v5)) & 0xB8) - 36;
  v8[5] = (BYTE2(v5) ^ a2) - ((2 * (BYTE2(v5) ^ a2)) & 0xB8) - 36;
  v8[6] = (BYTE1(v5) ^ v7) - ((2 * (BYTE1(v5) ^ v7)) & 0xB8) - 36;
  v8[7] = v5 ^ v6;
  return v9();
}

uint64_t sub_1002D700C@<X0>(int a1@<W8>)
{
  v5 = 1978732275 * (v2 + (v1 & 0x7FFFFFFF ^ 0xC61726DB)) - 1467843365;
  v6 = (v4 - 866417683 + (v5 ^ 0x135202B)) ^ v5 ^ ((v5 ^ 0xEF352009) + 576434719) ^ ((v5 ^ 0xAB6E923D) + 1711276075) ^ ((v5 ^ 0x77FFFFF7) - 1164874271);
  LODWORD(STACK[0x5368]) = v6;
  LODWORD(STACK[0x56F0]) = v6 >> 3;
  return (*(STACK[0x57D8] + 8 * ((((a1 ^ 0x5ED0) - 18777) * (STACK[0x57C0] == v3)) | a1)))();
}

uint64_t sub_1002D7100()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 - 9783)))(v2);
}

uint64_t sub_1002D7314()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 14073 + 31 * (v0 ^ 0x518))))(0x308E083E0C524CBELL);
}

uint64_t sub_1002D74C0()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * (v0 | 0x290));
  return (*(v1 + 37880))();
}

uint64_t sub_1002D7518(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x5080] = v10;
  STACK[0x56D0] = v11;
  STACK[0x4FD8] = a8;
  LODWORD(STACK[0x4780]) = LODWORD(STACK[0x56F0]) | LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x53E0]) = STACK[0x50D8] & (LODWORD(STACK[0x5130]) ^ 0xA4A7EF83);
  v16 = LODWORD(STACK[0x5100]) ^ 0xA3323828;
  LODWORD(STACK[0x4810]) = LODWORD(STACK[0x4A98]) ^ 0x36BB8B00;
  LODWORD(STACK[0x5790]) = STACK[0x55A0] & v16;
  v17 = STACK[0x53E8] & (LODWORD(STACK[0x53B8]) ^ 0xDF646584);
  LODWORD(STACK[0x53D8]) &= LODWORD(STACK[0x5168]) ^ 0x4F80E2CE;
  LODWORD(STACK[0x55A0]) = STACK[0x5308] & (LODWORD(STACK[0x5170]) ^ 0x2BE085B0);
  LODWORD(STACK[0x4960]) = STACK[0x5248] & (LODWORD(STACK[0x5298]) ^ 0xCEA9FE28) | LODWORD(STACK[0x5220]);
  LODWORD(STACK[0x4970]) = STACK[0x5180] & (LODWORD(STACK[0x51F8]) ^ 0x7E843F29) | LODWORD(STACK[0x5178]);
  LODWORD(STACK[0x56F0]) = STACK[0x53B0] & (LODWORD(STACK[0x53F8]) ^ 0x8973F34E);
  v18 = v8 & 0x22 ^ 0x27;
  v19 = v14 & 0xE2 ^ 0x87;
  v20 = (((v8 ^ (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x44) & (2 * ((v8 ^ 0x44) & 6 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x22) << 16) | (((v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x44) & (2 * ((v14 ^ 0x44) & 6 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xE2) << 8);
  v21 = (v13 & 0xE4 | 0x13) ^ v13 & 0xEE;
  LODWORD(STACK[0x53C0]) = ((((v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xDA6D45) & (v20 ^ 0xDF6FFF) | v20 & 0x259200) << 8) & 0xB81E1000;
  v22 = v15 & 0xEE ^ 0x85;
  v23 = v12 & 0xB2 ^ 0x6F;
  v24 = v12 ^ 0x64;
  v25 = (((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * (v15 & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xEE) << 16) | (((v12 ^ (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v23 ^ v12 & 0x16)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0xB2) << 8);
  v26 = v9 & 0x22 ^ 0x27;
  LODWORD(STACK[0x53F8]) = ((((v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x44) & (2 * ((v9 ^ 0x44) & 6 ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xC7FD38) & ~v25 | v25 & 0x380200) << 8) & 0x94A23300;
  return (*(STACK[0x57D8] + 8 * (a2 + 6151)))(v17);
}

uint64_t sub_1002D7AE0()
{
  v4 = STACK[0x4488];
  *(v2 + 592) = STACK[0x4488];
  *(v2 + 600) = v1 - 289235981 * (((v0 | 0x354EC147) - (v0 & 0x354EC147)) ^ 0xB2CC1178) + 7356;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 + 17779)))(v3 - 240);
  v8 = *(v2 + 604) != (v1 ^ 0x67CF) - 20774 || *v4 == 0;
  return (*(v5 + 8 * ((v8 * (v1 ^ 0x5DB6)) ^ v1)))(v6);
}

uint64_t sub_1002D7C58()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x157A ^ (((v0 ^ 0x5202921Du) > 0x5AE20BBD) * (v0 ^ 0x306C)))))(0x308E083E0C524CBELL);
}

uint64_t sub_1002D7D84@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xD53C]) = 64 - v2;
  STACK[0xD530] = v1 + 28;
  v3 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * a1);
  return (*(v3 + 8 * (a1 ^ 0x1733)))();
}

uint64_t sub_1002D855C@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v5 = v3 + *(v4 + 3976);
  v6 = *(v5 - 48);
  v5 -= 48;
  v7 = __ROR8__(v5 & (a2 ^ 0xFFFFFFFFFFFFFFBCLL), 8);
  v8 = ((0x70824D863E123F42 - v7) & 0xA719318A1914C04ELL) + v7 - 0x70824D863E123F43 - ((v7 - 0x70824D863E123F43) & 0xA719318A1914C04ELL);
  v9 = v8 ^ 0x749EDA9DE0053F38;
  v8 ^= 0xF734953EF6B3AD4uLL;
  v10 = (__ROR8__(v9, 8) + v8) ^ 0x3A7C64F71FBFC65BLL;
  v11 = __ROR8__(v10, 8);
  v12 = v10 ^ __ROR8__(v8, 61);
  v13 = (((2 * (v11 + v12)) | 0x5BF89AD306150C6) - (v11 + v12) + 0x7D203B2967CF579DLL) ^ 0x791E4B5D0D586C23;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x4AE5CE6F63977933;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x2854CB5A8BDB8317;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = (v18 + v19 - ((2 * (v18 + v19)) & 0xF3A2F87F5B1801FALL) - 0x62E83C05273FF03) ^ 0xEA360F95E22FB21;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xE6B7173A9B2BB05DLL;
  LOBYTE(v5) = ((((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v21, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v5 & 7u))) ^ v6) - v3 + 8 * v3;
  *(*(v4 + 4272) + ((a1 + 11 * v3) & 0x7F)) = (((2 * v5) & 0xF7) - ((4 * v5) & 0x8F) - 49) ^ 0x2C;
  return (*(STACK[0x57D8] + 8 * ((7267 * (v3 == 63)) ^ v2)))();
}

uint64_t sub_1002D8834()
{
  v2 = STACK[0xBF40];
  STACK[0xE970] = v1;
  STACK[0xE978] = v2;
  return (*(STACK[0x57D8] + 8 * ((22720 * (v1 - v2 > (v0 - 4937) - 5180 + ((v0 - 887349428) & 0x34E3DFFB))) ^ v0)))();
}

uint64_t sub_1002D88AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W6>, uint64_t a4@<X7>, unsigned __int8 *a5@<X8>)
{
  v23 = *(v7 + (v11 & ((a2 & 0xFFFFFFF8) - 103642729)));
  v24 = (__ROR8__(a2 & 0xFFFFFFFFFFFFFFF8, 8) + v23) ^ a4;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v12 - ((v26 + v25) | v19) + ((v26 + v25) | v18)) ^ 0xD273DA3A933402D6;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v16;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v13;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ 0xC7DDC9F6CC45B721;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0x1BAA7661DBE774EELL) - (v36 + v35) + v15) ^ v21;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - (v22 & (2 * (v39 + v38))) + v17) ^ 0xB48744EFF8003C62;
  v41 = *(v7 + (v11 & ((a1 & 0x8985DF40) + (a1 & 0x767A20B8 | 0x8985DF46) + 1884072529)));
  v42 = (v41 + __ROR8__(a1 & 0xFFFFFFFFFFFFFFF8, 8)) ^ a4;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v38, 61));
  v45 = __ROR8__(v42, 8);
  v46 = (v14 - ((v45 + v43) | v14) + ((v45 + v43) | 0x7EC266C91F973B46)) ^ 0x6BF024272367510FLL;
  v47 = v46 ^ __ROR8__(v43, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v16;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v13;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__((((2 * ((v52 + v51) ^ 0xBF77ECD35297447DLL)) | 0x21162940510D8352) - ((v52 + v51) ^ 0xBF77ECD35297447DLL) + 0x6F74EB5FD7793E57) ^ 0xE8213185B65432F5, 8);
  v54 = (((2 * ((v52 + v51) ^ 0xBF77ECD35297447DLL)) | 0x21162940510D8352) - ((v52 + v51) ^ 0xBF77ECD35297447DLL) + 0x6F74EB5FD7793E57) ^ 0xE8213185B65432F5 ^ __ROR8__(v51, 61);
  v55 = (((2 * (v53 + v54)) | 0x92DD3D98759F10C0) - (v53 + v54) + 0x36916133C53077A0) ^ 0x6148BE69631D5218;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x5F8DEC3EA3980A1BLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (((v44 ^ 0xC1C3C8D2A4C54828) >> (v9 & 0x38)) ^ *a5) - ((((((2 * (v59 + v58)) | 0x86CD360CF2B78ECELL) - (v59 + v58) + 0x3C9964F986A43899) ^ 0x2A553D4DD9E8F4FLL) >> (v10 & 0x38)) ^ *v5);
  if (v8)
  {
    v61 = (v60 ^ v20) + a3 + ((2 * v60) & 0xEEF7AD36) == -143113071;
  }

  else
  {
    v61 = 0;
  }

  v62 = !v61;
  return (*(STACK[0x57D8] + 8 * (v6 ^ (4 * v62))))(a1 + 1, a2 + 1);
}

uint64_t sub_1002D8F38(unint64_t a1, double a2, double a3, __n128 a4, double a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v14 = *(STACK[0x57D8] + 8 * ((((v9 - 13743) | 0x820) + 1456122651) ^ (v9 + 1456113647) ^ (6065 * ((v9 + 1456113647) < 0xAC921F62))));
  STACK[0x56D0] = a1;
  *&STACK[0x5750] = a4;
  *&STACK[0x5740] = a6;
  *&STACK[0x5700] = a8;
  *&STACK[0x57B0] = v10;
  *&STACK[0x57A0] = a9;
  *&STACK[0x56F0] = a7;
  *&STACK[0x5730] = v11;
  *&STACK[0x5720] = v12;
  *&STACK[0x5710] = v13;
  return v14();
}

uint64_t sub_1002D9030(unint64_t a1)
{
  v3 = STACK[0xB988];
  v4 = STACK[0xCAD0];
  v5 = 1917435887 * ((-357895758 - ((v2 - 240) | 0xEAAAF1B2) + ((v2 - 240) | 0x15550E4D)) ^ 0xF3EE554B);
  LODWORD(STACK[0x1D4C0]) = v1 + 194287516 + v5 + 450;
  STACK[0x1D4C8] = &STACK[0xAE7C];
  STACK[0x1D4E8] = v3;
  LODWORD(STACK[0x1D4D0]) = v4 + v5;
  STACK[0x1D4D8] = a1;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 + 30481)))(v2 - 240);
  return (*(v6 + 8 * (v1 ^ 0x2D7F ^ (20783 * ((((LODWORD(STACK[0xAE7C]) ^ v1) & v1) >> (((v1 + 65) | 0x14) ^ 0x49 ^ __clz(LODWORD(STACK[0xAE7C]) ^ v1 | 1))) & 1)))))(v7);
}

uint64_t sub_1002D918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v26 = *(v12 + 8) + a1;
  v27 = *(*v8 + (*v17 & ((v26 & 0xFFFFFFF8) + a8) & 0xFFFFFFF8));
  v28 = (__ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8) + v27) ^ v25;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30) ^ v22;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v24 - ((v33 + v32) | v24) + ((v33 + v32) | ((v10 + 2891) + 0x5C61CF289162B964))) ^ 0xFE0A2B528B0A3ECALL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((v36 + v35) & v21 ^ 0x80211A1005012003) + ((v36 + v35) ^ 0x27CCE1E9DAAE57F8) - (((v36 + v35) ^ 0x27CCE1E9DAAE57F8) & v21)) ^ 0xB866CC80AB2B6347;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v18 - ((v39 + v38) | v18) + ((v39 + v38) | 0xC387718C326FCE81)) ^ 0xBE8DBB26DB83F69CLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) | 0x3B432BBB5DF1557ALL) - (v42 + v41) - 0x1DA195DDAEF8AABDLL) ^ 0x4F501D94B6207C1FLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((v45 + v44) & v20 ^ 0x11120C2500080085) + ((v45 + v44) ^ 0xEAE971923FF7F25ALL) - (((v45 + v44) ^ 0xEAE971923FF7F25ALL) & v20)) ^ 0xB8DB1FD9FD2E7A28;
  v47 = *(v13 + 8);
  v48 = *(*v8 + ((a8 + ((a2 + v47) & 0xFFFFFFF8) - 3) & *v17));
  v49 = __ROR8__(v46, 8) + (v46 ^ __ROR8__(v44, 61));
  v50 = __ROR8__((v47 + a1) & 0xFFFFFFFFFFFFFFF8, 8);
  v51 = (v19 - ((v50 + v48) | v19) + ((v50 + v48) | 0xB68E118161FF6AE5)) ^ 0x6D965BAB0579F59;
  v52 = v51 ^ __ROR8__(v48, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x2969CEE843BDB4FCLL) - (v53 + v52) + 0x6B4B188BDE212582) ^ 0x1EF39638D2529DFDLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) & 0xB8457E3D72B41CA4) - (v56 + v55) - 0x5C22BF1EB95A0E53) ^ 0x1B6A49B5CCCDEDDLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  LODWORD(v26) = ((v49 ^ v23) >> (8 * (v26 & 7u))) ^ *v26;
  v59 = __ROR8__(v57, 8);
  v60 = (v59 + v58 - ((2 * (v59 + v58)) & 0x8C4174EFBC663E24) - 0x39DF458821CCE0EELL) ^ 0xDA23AD4F3A955E16;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  LODWORD(v26) = v26 + v14;
  v63 = __ROR8__((((2 * (v62 + v61)) | 0x641592225DFCA74ALL) - (v62 + v61) + 0x4DF536EED101AC5BLL) ^ 0xCF0003BBC7126BB8, 8);
  v64 = (((2 * (v62 + v61)) | 0x641592225DFCA74ALL) - (v62 + v61) + 0x4DF536EED101AC5BLL) ^ 0xCF0003BBC7126BB8 ^ __ROR8__(v61, 61);
  v65 = ((v16 | (2 * (v63 + v64))) - (v63 + v64) + v15) ^ 0x60F30BF6BC489145;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xB20726EF1F63AAFLL;
  *(v47 + a1) = (((__ROR8__(v67, 8) + (v67 ^ __ROR8__(v66, 61))) ^ v23) >> (8 * ((v47 + a1) & 7))) ^ v26;
  return (*(STACK[0x57D8] + 8 * (((v9 <= v11 + 1) | (16 * (v9 <= v11 + 1))) ^ v10)))(a1 + 4, a2 + 4);
}

uint64_t sub_1002D96AC()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 10323)))(v1);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1002D96D8()
{
  LODWORD(STACK[0xA968]) = v1;
  v3 = STACK[0xC6C0];
  v4 = 1534937323 * ((~((v2 - 240) | 0x677F09C6A05E12FLL) + ((v2 - 240) & 0x677F09C6A05E12FLL)) ^ 0x34F087A15314E597);
  LODWORD(STACK[0x1D4D4]) = v4 ^ (v0 - 22614) ^ 0x63015A83;
  STACK[0x1D4D8] = v3 + v4;
  LODWORD(STACK[0x1D4C8]) = 1661029062 - v4 + v0 - 22614;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v0 + 1451493860;
  STACK[0x1D4C0] = v4;
  LODWORD(STACK[0x1D4E0]) = v4 + v0 + 1661010588;
  LODWORD(v4) = v0 + 9182;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1002D97CC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x55D0]) ^ LODWORD(STACK[0x4FB8]) ^ LODWORD(STACK[0x5780]) ^ STACK[0x5710] ^ LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x4F90]);
  LODWORD(STACK[0x5188]) = a1 - v9;
  v12 = LODWORD(STACK[0x56D0]) ^ (a2 - v10);
  v13 = LODWORD(STACK[0x56E0]) ^ (v8 - v7);
  v14 = v11 ^ LODWORD(STACK[0x53E8]) ^ 0xFBC59880;
  v15 = STACK[0x55E0];
  LODWORD(STACK[0x5190]) = a6;
  LODWORD(STACK[0x5360]) = a6 ^ 0x208D;
  v16 = STACK[0x53C8];
  v17 = STACK[0x4FB0];
  v18 = LODWORD(STACK[0x4FB0]) ^ LODWORD(STACK[0x53C8]) ^ (v15 + 1313409572 + ((2 * v15) & 0x9C921446 ^ 0xFFFF9C9B ^ a6 ^ 0x208D));
  v19 = STACK[0x53E0];
  v20 = (v18 - ((2 * v18) & 0x73B161F8) - 1176981252) ^ LODWORD(STACK[0x53E0]);
  v21 = STACK[0x5060];
  v22 = STACK[0x4FC8];
  v23 = STACK[0x5028];
  v24 = (v20 - ((2 * v20) & 0x5ABB055E) + 761103023) ^ LODWORD(STACK[0x5028]);
  v25 = STACK[0x50B0];
  v26 = v14 ^ LODWORD(STACK[0x50B0]) ^ (v24 - ((2 * v24) & 0xA865B10E) + 1412618375);
  v27 = STACK[0x4FD0];
  v28 = LODWORD(STACK[0x4FD0]) ^ LODWORD(STACK[0x5390]) ^ (((LODWORD(STACK[0x53A0]) + 2087976779 - (v6 & 0xF8E7FE96)) ^ v21 ^ v22) - 352295316 - ((2 * ((LODWORD(STACK[0x53A0]) + 2087976779 - (v6 & 0xF8E7FE96)) ^ v21 ^ v22)) & 0xD600CCD8));
  v29 = LODWORD(STACK[0x5160]) ^ LODWORD(STACK[0x5208]) ^ (v26 - ((2 * v26) & 0xA31454FC) + 1368009342);
  v30 = (v28 - ((2 * v28) & 0x85DF5244) - 1024480990) ^ LODWORD(STACK[0x5230]);
  LODWORD(STACK[0x5168]) = v12 ^ 0x8F94A01E;
  v31 = ((v30 - ((2 * v30) & 0xADA9E950) - 690686808) ^ LODWORD(STACK[0x5210]) ^ v12 ^ 0x8F94A01E) - ((2 * ((v30 - ((2 * v30) & 0xADA9E950) - 690686808) ^ LODWORD(STACK[0x5210]) ^ v12 ^ 0x8F94A01E)) & 0xAB971EBA) + 1439403869;
  v32 = (v31 ^ LODWORD(STACK[0x5220])) + 1244037592 - ((2 * (v31 ^ LODWORD(STACK[0x5220]))) & 0x944D03B0);
  v33 = (v32 ^ LODWORD(STACK[0x5250])) + 1076678866 - ((2 * (v32 ^ LODWORD(STACK[0x5250]))) & 0x8059A1A4);
  v34 = (v33 ^ LODWORD(STACK[0x5540])) - ((2 * (v33 ^ LODWORD(STACK[0x5540]))) & 0xEA5B02FE);
  v35 = LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x5228]) ^ (v29 - ((2 * v29) & 0x514B9662) + 681954097);
  v36 = ((v34 - 181567105) ^ LODWORD(STACK[0x5238])) - ((2 * ((v34 - 181567105) ^ LODWORD(STACK[0x5238]))) & 0x4A57136) - 2108508005;
  v37 = STACK[0x4FD8];
  v38 = (v37 ^ LODWORD(STACK[0x5380]) ^ v36) - ((2 * (v37 ^ LODWORD(STACK[0x5380]) ^ v36)) & 0xC32C9D64) + 1637240498;
  v39 = (v38 ^ LODWORD(STACK[0x5378])) - ((2 * (v38 ^ LODWORD(STACK[0x5378]))) & 0x822FF8EC) + 1092090998;
  v40 = STACK[0x5030];
  v41 = STACK[0x56F0];
  v42 = LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x5258]) ^ LODWORD(STACK[0x5198]) ^ LODWORD(STACK[0x56F0]) ^ ((v39 ^ v40) - ((2 * (v39 ^ v40)) & 0xCFF6FFCA) + 1744535525);
  v43 = v42 - ((2 * v42) & 0x17E6E1B4);
  v44 = LODWORD(STACK[0x54B0]) ^ LODWORD(STACK[0x5128]) ^ LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x5158]) ^ LODWORD(STACK[0x5130]) ^ 0x629C3D7E ^ (v35 - ((2 * v35) & 0x34F561D6) + 444248299);
  v45 = STACK[0x54D0];
  v46 = STACK[0x55B0];
  v47 = STACK[0x5338];
  v48 = STACK[0x5790];
  v49 = STACK[0x57A0];
  LODWORD(STACK[0x5018]) = (((v44 ^ (2 * (v44 & STACK[0x54D0]))) & STACK[0x5338]) << LODWORD(STACK[0x5790])) | (((v44 ^ (2 * (v44 & STACK[0x54D0]))) & STACK[0x55B0]) >> LODWORD(STACK[0x57A0]));
  LODWORD(STACK[0x5178]) = v13 ^ 0x8D069BE;
  v50 = STACK[0x4FC0];
  v51 = LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5260]) ^ LODWORD(STACK[0x4FC0]) ^ v13 ^ 0x8D069BE ^ 0xE2860F5E ^ (v43 + 200503514);
  v52 = STACK[0x54F0];
  LODWORD(STACK[0x4FB8]) = v51 ^ (2 * (v51 & STACK[0x54F0]));
  v53 = (2 * (v52 & (LODWORD(STACK[0x50E0]) ^ 0x77DE7206)) - ((4 * (v52 & (LODWORD(STACK[0x50E0]) ^ 0x77DE7206))) & 0x43542BF8) - 1582688772) ^ LODWORD(STACK[0x5240]);
  v54 = STACK[0x55A0];
  v55 = STACK[0x5440];
  LODWORD(STACK[0x55E0]) = (((v15 ^ (2 * (v15 & v45))) & STACK[0x55A0]) << v48) | (((v15 ^ (2 * (v15 & v45))) & STACK[0x5440]) >> v49);
  v56 = (2 * (v52 & (LODWORD(STACK[0x5400]) ^ 0x1A92DCBC)) + 2087976779 - ((4 * (v52 & (LODWORD(STACK[0x5400]) ^ 0x1A92DCBC))) & 0xF8E7FE94)) ^ v21;
  v57 = LODWORD(STACK[0x5408]) ^ 0x73A5BC29;
  v58 = STACK[0x5450];
  v59 = STACK[0x5500];
  LODWORD(STACK[0x5408]) = ((v53 & v47) << LODWORD(STACK[0x5450])) ^ ((v53 & v46) >> LODWORD(STACK[0x5500]));
  v60 = (2 * (v45 & v57) - ((4 * (v45 & v57)) & 0x90B3AE20) - 933636336) ^ LODWORD(STACK[0x5068]);
  LODWORD(STACK[0x55F0]) = ((v54 & v56) << v58) + ((v56 & v46) >> v49);
  LODWORD(STACK[0x5400]) = ((v55 & v60) >> v59) ^ ((v47 & v60) << v48);
  v61 = ((~(4 * (v45 & (LODWORD(STACK[0x53F8]) ^ 0x3F4C0190))) | 0x636DEBBB) + 2 * (v45 & (LODWORD(STACK[0x53F8]) ^ 0x3F4C0190)) + 1313409572) ^ v16;
  LODWORD(STACK[0x55D0]) = (((v22 ^ (2 * (v22 & v45))) & v47) << v48) ^ (((v22 ^ (2 * (v22 & v45))) & v46) >> v59);
  v62 = (~(4 * (v52 & (LODWORD(STACK[0x5650]) ^ 0x57C60D8))) | 0xA1F40D83) + 2 * (v52 & (LODWORD(STACK[0x5650]) ^ 0x57C60D8)) + 788920640;
  LODWORD(STACK[0x53F8]) = ((v54 & (v62 ^ LODWORD(STACK[0x5070]))) << v58) + ((v55 & (v62 ^ LODWORD(STACK[0x5070]))) >> v49);
  v63 = (2 * (v52 & (LODWORD(STACK[0x53F0]) ^ 0x429808B)) - ((4 * (v52 & (LODWORD(STACK[0x53F0]) ^ 0x429808B))) & 0x2A97DFC8) - 1790185500) ^ LODWORD(STACK[0x5078]);
  LODWORD(STACK[0x5600]) = ((v54 & v61) << v48) + ((v46 & v61) >> v49);
  LODWORD(STACK[0x53F0]) = ((v55 & v63) >> v59) ^ ((v63 & v47) << v58);
  LODWORD(STACK[0x5770]) = ((v55 & (v27 ^ (2 * (v27 & v45)))) >> v49) | (((v27 ^ (2 * (v27 & v45))) & v47) << v58);
  v64 = 2 * (v52 & (LODWORD(STACK[0x5620]) ^ 0x1475ED6A)) - ((4 * (v52 & (LODWORD(STACK[0x5620]) ^ 0x1475ED6A))) & 0x3332843C) + 429474335;
  LODWORD(STACK[0x53E8]) = ((v54 & (v64 ^ LODWORD(STACK[0x5080]))) << v48) | (((v64 ^ LODWORD(STACK[0x5080])) & v46) >> v59);
  v65 = (2 * (v52 & (LODWORD(STACK[0x5100]) ^ 0x7A9474B4)) - ((4 * (v52 & (LODWORD(STACK[0x5100]) ^ 0x7A9474B4))) & 0x536553C) + 43723423) ^ LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x5620]) = ((v54 & (v17 ^ (2 * (v17 & v45)))) << v58) | ((v55 & (v17 ^ (2 * (v17 & v45)))) >> v49);
  v66 = (2 * (v52 & (LODWORD(STACK[0x50F8]) ^ 0x6B4CFEFE)) - ((4 * (v52 & (LODWORD(STACK[0x50F8]) ^ 0x6B4CFEFE))) & 0x73B161F8) - 1176981252) ^ v19;
  v67 = (2 * (v45 & (LODWORD(STACK[0x5640]) ^ 0x1388B9FB)) - ((4 * (v45 & (LODWORD(STACK[0x5640]) ^ 0x1388B9FB))) & 0x267ACB28) + 322790805) ^ LODWORD(STACK[0x5098]);
  LODWORD(STACK[0x53E0]) = ((v65 & v46) >> v59) + ((v65 & v47) << v48);
  LODWORD(STACK[0x5780]) = ((v66 & v47) << v48) + ((v66 & v46) >> v59);
  v68 = (v55 & v67) >> v49;
  v69 = (v54 & v67) << v58;
  v70 = v69 & 0x800;
  if ((v69 & 0x800 & v68) != 0)
  {
    v70 = -v70;
  }

  v71 = v70 + v68;
  v72 = (2 * (v52 & (LODWORD(STACK[0x5470]) ^ 0x31F5ED85)) - ((4 * (v52 & (LODWORD(STACK[0x5470]) ^ 0x31F5ED85))) & 0x5ABB055C) + 761103023) ^ v23;
  v73 = (2 * (v45 & (LODWORD(STACK[0x5590]) ^ 0x455C9698)) - ((4 * (v45 & (LODWORD(STACK[0x5590]) ^ 0x455C9698))) & 0xC5F253C8) + 1660496357) ^ LODWORD(STACK[0x50A0]);
  LODWORD(STACK[0x53D8]) = v71 ^ v69 & 0xFFFFF7FF;
  v74 = (2 * (v45 & (LODWORD(STACK[0x53D0]) ^ 0x66918730)) - ((4 * (v45 & (LODWORD(STACK[0x53D0]) ^ 0x66918730))) & 0xA865B10C) + 1412618375) ^ v25;
  LODWORD(STACK[0x53D0]) = ((v54 & v73) << v58) ^ ((v46 & v73) >> v49);
  LODWORD(STACK[0x5700]) = ((v55 & v72) >> v59) ^ ((v72 & v47) << v48);
  v75 = LODWORD(STACK[0x5630]) ^ 0x5FDA5E8C ^ (2 * (v52 & STACK[0x50A8]) - ((4 * (v52 & STACK[0x50A8])) & 0xA47612E0) + 1379600752);
  LODWORD(STACK[0x5760]) = ((v54 & v74) << v58) | ((v55 & v74) >> v59);
  v76 = (2 * (v52 & (LODWORD(STACK[0x5480]) ^ 0x71EF6124)) - ((4 * (v52 & (LODWORD(STACK[0x5480]) ^ 0x71EF6124))) & 0x822FF8EC) + 1092090998) ^ v40;
  LODWORD(STACK[0x53C8]) = ((v75 & v46) >> v49) ^ ((v75 & v47) << v48);
  v77 = (2 * (v45 & (LODWORD(STACK[0x53C0]) ^ 0x621BB078)) - ((4 * (v45 & (LODWORD(STACK[0x53C0]) ^ 0x621BB078))) & 0x736B2230) + 968200472) ^ LODWORD(STACK[0x5218]);
  LODWORD(STACK[0x5750]) = ((v54 & v76) << v58) ^ ((v76 & v46) >> v49);
  v78 = v55;
  LODWORD(STACK[0x53C0]) = ((v55 & v77) >> v59) | ((v47 & v77) << v48);
  LODWORD(STACK[0x5590]) = (((v14 ^ (2 * (v14 & v45))) & v47) << v58) ^ (((v14 ^ (2 * (v14 & v45))) & v55) >> v49);
  v79 = 2 * (v52 & (LODWORD(STACK[0x53B8]) ^ 0x71C1905C)) - ((4 * (v52 & (LODWORD(STACK[0x53B8]) ^ 0x71C1905C))) & 0xE2951530) - 246773096;
  LODWORD(STACK[0x53B8]) = ((v54 & (v79 ^ LODWORD(STACK[0x5038]))) << v48) | (((v79 ^ LODWORD(STACK[0x5038])) & v46) >> v59);
  v80 = 2 * (v45 & (LODWORD(STACK[0x5430]) ^ 0x4145EE2C)) - ((4 * (v45 & (LODWORD(STACK[0x5430]) ^ 0x4145EE2C))) & 0xADA9E950) - 690686808;
  LODWORD(STACK[0x5740]) = ((v54 & (v80 ^ LODWORD(STACK[0x5210]))) << v58) + ((v55 & (v80 ^ LODWORD(STACK[0x5210]))) >> v49);
  v81 = (2 * (v52 & (LODWORD(STACK[0x53A8]) ^ 0x2776DD15)) - ((4 * (v52 & (LODWORD(STACK[0x53A8]) ^ 0x2776DD15))) & 0xB2918CD4) + 1497941611) ^ LODWORD(STACK[0x5268]);
  v82 = 2 * (v45 & (LODWORD(STACK[0x53B0]) ^ 0x56A13A)) - ((4 * (v45 & (LODWORD(STACK[0x53B0]) ^ 0x56A13A))) & 0xA31454FC) + 1368009342;
  LODWORD(STACK[0x5730]) = ((v54 & (v82 ^ LODWORD(STACK[0x5208]))) << v48) + ((v46 & (v82 ^ LODWORD(STACK[0x5208]))) >> v49);
  v83 = ((~(4 * (v52 & (LODWORD(STACK[0x5420]) ^ 0x43049912))) | 0x62A684A3) + 2 * (v52 & (LODWORD(STACK[0x5420]) ^ 0x43049912)) + 1319943599) ^ LODWORD(STACK[0x5040]);
  v84 = v47;
  LODWORD(STACK[0x53B0]) = ((v81 & v46) >> v59) | ((v81 & v47) << v48);
  LODWORD(STACK[0x53A8]) = ((v55 & v83) >> v59) + ((v83 & v47) << v58);
  v85 = (2 * (v45 & (LODWORD(STACK[0x5580]) ^ 0x7E47F545)) - ((4 * (v45 & (LODWORD(STACK[0x5580]) ^ 0x7E47F545))) & 0x387072E0) - 1674036880) ^ LODWORD(STACK[0x5048]);
  LODWORD(STACK[0x5470]) = (((v37 ^ (2 * (v37 & v52))) & v55) >> v49) ^ (((v37 ^ (2 * (v37 & v52))) & v54) << v58);
  v86 = LODWORD(STACK[0x53A0]) ^ (2 * (STACK[0x53A0] & v52));
  LODWORD(STACK[0x53A0]) = ((v47 & v85) << v48) + ((v46 & v85) >> v59);
  v87 = (2 * (v45 & (LODWORD(STACK[0x5398]) ^ 0x63468C6B)) - ((4 * (v45 & (LODWORD(STACK[0x5398]) ^ 0x63468C6B))) & 0x4A64A1AC) + 624054486) ^ LODWORD(STACK[0x5050]);
  LODWORD(STACK[0x5720]) = ((v86 & v54) << v48) + ((v86 & v55) >> v59);
  LODWORD(STACK[0x5398]) = ((v46 & v87) >> v49) ^ ((v47 & v87) << v58);
  v88 = (2 * (v45 & (LODWORD(STACK[0x5490]) ^ 0x476C54A6)) - ((4 * (v45 & (LODWORD(STACK[0x5490]) ^ 0x476C54A6))) & 0xF521F77C) + 2056321983) ^ LODWORD(STACK[0x5058]);
  LODWORD(STACK[0x5710]) = (((v41 ^ (2 * (v41 & v52))) & v55) >> v59) | (((v41 ^ (2 * (v41 & v52))) & v47) << v58);
  v89 = (2 * (v45 & (LODWORD(STACK[0x5660]) ^ 0x6CF4851D)) - 352295316 - ((4 * (v45 & (LODWORD(STACK[0x5660]) ^ 0x6CF4851D))) & 0xD600CCD8)) ^ LODWORD(STACK[0x5390]);
  LODWORD(STACK[0x5390]) = ((v54 & v88) << v48) | ((v46 & v88) >> v49);
  LODWORD(STACK[0x56F0]) = ((v54 & v89) << v58) + ((v55 & v89) >> v49);
  v90 = (2 * (v52 & (LODWORD(STACK[0x5298]) ^ 0x9646A64)) - ((4 * (v52 & (LODWORD(STACK[0x5298]) ^ 0x9646A64))) & 0xAB971EB8) + 1439403869) ^ LODWORD(STACK[0x5220]);
  v91 = LODWORD(STACK[0x5160]) ^ (2 * (STACK[0x5160] & v45));
  LODWORD(STACK[0x56E0]) = ((v54 & v90) << v58) + ((v55 & v90) >> v59);
  v92 = LODWORD(STACK[0x5680]) ^ (2 * (v52 & STACK[0x5680]));
  LODWORD(STACK[0x56D0]) = (((v91 & v46) >> v49) ^ -((v91 & v46) >> v49) ^ (((v91 & v54) << v48) - (((v91 & v46) >> v49) ^ ((v91 & v54) << v48)))) + ((v91 & v54) << v48);
  LODWORD(STACK[0x56C0]) = ((v54 & v92) << v58) | ((v55 & v92) >> v59);
  v93 = 2 * (v45 & (LODWORD(STACK[0x52A8]) ^ 0x355DF6B6)) - ((4 * (v45 & (LODWORD(STACK[0x52A8]) ^ 0x355DF6B6))) & 0x514B9660) + 681954097;
  LODWORD(STACK[0x5680]) = ((v54 & (v93 ^ LODWORD(STACK[0x5228]))) << v48) ^ ((v55 & (v93 ^ LODWORD(STACK[0x5228]))) >> v49);
  v94 = 2 * (v52 & (LODWORD(STACK[0x55C0]) ^ 0x67D1F1BC)) - ((4 * (v52 & (LODWORD(STACK[0x55C0]) ^ 0x67D1F1BC))) & 0x85DF5244) - 1024480990;
  LODWORD(STACK[0x5670]) = ((v55 & (v94 ^ LODWORD(STACK[0x5230]))) >> v59) | (((v94 ^ LODWORD(STACK[0x5230])) & v47) << v58);
  v95 = LODWORD(STACK[0x5168]) ^ (2 * (STACK[0x5168] & v52));
  LODWORD(STACK[0x5580]) = ((v95 & v54) << v58) ^ ((v95 & v46) >> v59);
  v96 = LODWORD(STACK[0x5198]) ^ (2 * (STACK[0x5198] & v52));
  LODWORD(STACK[0x5660]) = ((v96 & v46) >> v49) ^ ((v96 & v47) << v58);
  v97 = LODWORD(STACK[0x5140]) ^ (2 * (STACK[0x5140] & v45));
  LODWORD(STACK[0x55C0]) = ((v54 & v97) << v58) | ((v55 & v97) >> v59);
  v98 = (2 * (v45 & (LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x2EC]))) - ((4 * (v45 & (LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x2EC])))) & 0xC32C9D64) + 1637240498) ^ LODWORD(STACK[0x5378]);
  LODWORD(STACK[0x5650]) = ((v46 & v98) >> v49) | ((v47 & v98) << v48);
  v99 = 2 * (v52 & (LODWORD(STACK[0x54C0]) ^ 0x42EBDB0F)) - ((4 * (v52 & (LODWORD(STACK[0x54C0]) ^ 0x42EBDB0F))) & 0xEA5B02FC) - 181567105;
  LODWORD(STACK[0x5640]) = ((v54 & (v99 ^ LODWORD(STACK[0x5238]))) << v48) + ((v55 & (v99 ^ LODWORD(STACK[0x5238]))) >> v59);
  v100 = 2 * (v52 & (LODWORD(STACK[0x54B0]) ^ 0x258DF010)) - ((4 * (v52 & (LODWORD(STACK[0x54B0]) ^ 0x258DF010))) & 0x34F561D4) + 444248299;
  LODWORD(STACK[0x5630]) = ((v55 & (v100 ^ LODWORD(STACK[0x5248]))) >> v59) ^ (((v100 ^ LODWORD(STACK[0x5248])) & v47) << v58);
  v101 = (2 * (v45 & (LODWORD(STACK[0x5610]) ^ 0x77A0DA32)) + 1244037592 - ((4 * (v45 & (LODWORD(STACK[0x5610]) ^ 0x77A0DA32))) & 0x944D03B0)) ^ LODWORD(STACK[0x5250]);
  v102 = (2 * (v45 & (LODWORD(STACK[0x52A0]) ^ 0x7F356DD6)) - ((4 * (v45 & (LODWORD(STACK[0x52A0]) ^ 0x7F356DD6))) & 0x4A57134) - 2108508005) ^ LODWORD(STACK[0x5380]);
  v103 = v48;
  LODWORD(STACK[0x54C0]) = ((v55 & v101) >> v59) ^ ((v47 & v101) << v48);
  LODWORD(STACK[0x5610]) = ((v47 & v102) << v48) + ((v46 & v102) >> v59);
  LODWORD(STACK[0x54B0]) = (((v50 ^ (2 * (v50 & v52))) & v55) >> v59) + (((v50 ^ (2 * (v50 & v52))) & v47) << v48);
  v104 = LODWORD(STACK[0x5178]) ^ (2 * (STACK[0x5178] & v52));
  LODWORD(STACK[0x5570]) = ((v104 & v55) >> v59) + ((v104 & v54) << v48);
  v105 = 2 * (v52 & (LODWORD(STACK[0x54A0]) ^ 0x361285BA)) - ((4 * (v52 & (LODWORD(STACK[0x54A0]) ^ 0x361285BA))) & 0xCFF6FFC8) + 1744535525;
  LODWORD(STACK[0x54A0]) = (((v105 ^ LODWORD(STACK[0x5258])) & v46) >> v49) ^ (((v105 ^ LODWORD(STACK[0x5258])) & v47) << v58);
  v106 = (2 * (v45 & (LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x2F0]))) + 1076678866 - ((4 * (v45 & (LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x2F0])))) & 0x8059A1A4)) ^ LODWORD(STACK[0x5540]);
  v107 = ((v46 & v106) >> v49) ^ ((v47 & v106) << v48);
  LODWORD(STACK[0x5430]) = v107;
  v108 = LODWORD(STACK[0x5138]) ^ (2 * (STACK[0x5138] & v45));
  LODWORD(STACK[0x5490]) = ((v108 & v55) >> v49) + ((v108 & v54) << v58);
  v109 = LODWORD(STACK[0x5130]) ^ (2 * (STACK[0x5130] & v45));
  LODWORD(STACK[0x5480]) = ((v109 & v55) >> v49) ^ ((v109 & v47) << v58);
  v110 = (2 * (STACK[0x5158] & v52)) & 0x3227A9A2 ^ STACK[0x5158] & 0x3227A9A3 | ((2 * (STACK[0x5158] & v52)) ^ LODWORD(STACK[0x5158])) & 0xCDD8565C;
  v111 = 2 * (v45 & (LODWORD(STACK[0x5358]) ^ 0xA4867D5)) - ((4 * (v45 & (LODWORD(STACK[0x5358]) ^ 0xA4867D5))) & 0x11A7B4F8) - 1999381892;
  v112 = ((v54 & (v111 ^ LODWORD(STACK[0x5090]))) << v48) | ((v55 & (v111 ^ LODWORD(STACK[0x5090]))) >> v59);
  v113 = LODWORD(STACK[0x5128]) ^ (2 * (STACK[0x5128] & v45));
  v114 = STACK[0x51A0];
  v115 = STACK[0x5148];
  v116 = ((v110 & v47) << v58) ^ LODWORD(STACK[0x51A0]) ^ ((v110 & v46) >> v49) ^ LODWORD(STACK[0x5148]);
  v117 = STACK[0x4FF8];
  v118 = STACK[0x4FE8];
  v119 = LODWORD(STACK[0x4FE8]) ^ LODWORD(STACK[0x4FF8]) ^ ((v78 & v113) >> v49) ^ ((v54 & v113) << v58);
  LODWORD(STACK[0x5420]) = v119;
  v120 = (~((4 * (v52 & (LODWORD(STACK[0x5520]) ^ 0x7DB72AA4))) & 0xD0110484) + 2 * (v52 & (LODWORD(STACK[0x5520]) ^ 0x7DB72AA4)) - 402095548) ^ LODWORD(STACK[0x50D8]);
  v121 = LODWORD(STACK[0x5170]) ^ (2 * (v52 & STACK[0x5170]));
  v122 = ((v120 & v47) << v103) | ((v120 & v46) >> v59);
  v123 = (2 * (v45 & (LODWORD(STACK[0x5410]) ^ 0x7F9911DE)) - ((4 * (v45 & (LODWORD(STACK[0x5410]) ^ 0x7F9911DE))) & 0x225167C8) + 287880164) ^ LODWORD(STACK[0x50B8]);
  v124 = (2 * (v45 & (LODWORD(STACK[0x5510]) ^ 0x22BC6ACC)) - ((4 * (v45 & (LODWORD(STACK[0x5510]) ^ 0x22BC6ACC))) & 0x17E6E1B4) + 200503514) ^ LODWORD(STACK[0x5260]);
  v125 = ((v121 & v84) << v58) ^ v114 ^ ((v78 & v121) >> v59) ^ v115;
  LODWORD(STACK[0x5560]) = v125;
  v126 = ((v54 & v124) << v58) | ((v46 & v124) >> v59);
  v127 = 2 * (v52 & (LODWORD(STACK[0x5370]) ^ 0x5AD93BAF)) - ((4 * (v52 & (LODWORD(STACK[0x5370]) ^ 0x5AD93BAF))) & 0xC6EA30CC) + 1668618342;
  v128 = ((v78 & (v127 ^ LODWORD(STACK[0x50C0]))) >> v49) + (((v127 ^ LODWORD(STACK[0x50C0])) & v84) << v103);
  LODWORD(STACK[0x5168]) = v118 ^ v117 ^ v112;
  LODWORD(STACK[0x5358]) = v118 ^ v117 ^ (((v54 & v123) << v103) | ((v46 & v123) >> v49));
  LODWORD(STACK[0x5160]) = v118 ^ v117 ^ v128;
  LODWORD(STACK[0x5158]) = v122 ^ v114 ^ v115;
  v129 = v126 ^ v114 ^ v115;
  LODWORD(STACK[0x5410]) = v129;
  v130 = LODWORD(STACK[0x5550]) ^ v114 ^ v115 ^ LODWORD(STACK[0x5188]) ^ 0x1C759CC4;
  v131 = LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x54A0]) ^ v107 ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x54C0]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x54B0]) ^ LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x5720]) ^ v119;
  v132 = STACK[0x5590];
  LODWORD(STACK[0x5510]) = v131 ^ LODWORD(STACK[0x5490]) ^ LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x55D0]) ^ v129 ^ v116 ^ v125 ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5480]);
  v133 = v117 ^ LODWORD(STACK[0x5010]) ^ (v118 - 1403019561 - ((2 * v118) & 0x58BF464A) + 1102);
  LODWORD(STACK[0x5540]) = v117 ^ LODWORD(STACK[0x5290]) ^ (v118 - ((2 * v118) & 0x2CAED280) + 374827328);
  v134 = v115 - ((2 * v115) & STACK[0x2F4]);
  v135 = (v114 - 962684548 - ((2 * v114) & 0x8D3D32F8)) ^ LODWORD(STACK[0x5388]) ^ v115;
  v136 = (2 * (v45 & (LODWORD(STACK[0x5300]) ^ 0x2D5D2A08)) - ((4 * (v45 & (LODWORD(STACK[0x5300]) ^ 0x2D5D2A08))) & 0x4A934DB8) - 1521899812) ^ LODWORD(STACK[0x50F0]);
  v137 = LODWORD(STACK[0x5008]) ^ v117 ^ v118;
  LODWORD(STACK[0x5380]) = (v117 + 790213929 - ((2 * v117) & 0x5E33715A) + 900) ^ LODWORD(STACK[0x5288]) ^ v118;
  LODWORD(STACK[0x5378]) = v114 ^ LODWORD(STACK[0x5108]) ^ (v115 - ((2 * v115) & 0xE48F360) - 2027652688);
  LODWORD(STACK[0x5370]) = v114 ^ LODWORD(STACK[0x5110]) ^ (v134 - 1940794726);
  LODWORD(STACK[0x50E0]) = ((v78 & v136) >> v49) ^ ((v84 & v136) << v58);
  v138 = (2 * (v52 & (LODWORD(STACK[0x52B0]) ^ 0x2FD932E0)) - (STACK[0x2F8] & (4 * (v52 & (LODWORD(STACK[0x52B0]) ^ 0x2FD932E0)))) - 247940764) ^ LODWORD(STACK[0x5270]);
  v139 = (2 * (v45 & (LODWORD(STACK[0x52D8]) ^ 0x211E92F0)) - ((4 * (v45 & (LODWORD(STACK[0x52D8]) ^ 0x211E92F0))) & 0x3BAF05FC) + 500663039) ^ LODWORD(STACK[0x5278]);
  LODWORD(STACK[0x52B0]) = ((v54 & v138) << v103) | ((v138 & v46) >> v59);
  v140 = (2 * (v52 & (LODWORD(STACK[0x5320]) ^ 0x5968DE5F)) - ((4 * (v52 & (LODWORD(STACK[0x5320]) ^ 0x5968DE5F))) & 0xF882C924) + 2084660371) ^ LODWORD(STACK[0x51A8]);
  LODWORD(STACK[0x5300]) = ((v84 & v139) << v58) + ((v46 & v139) >> v59);
  v141 = v78;
  LODWORD(STACK[0x50D8]) = ((v54 & v140) << v103) | ((v78 & v140) >> v49);
  v142 = 2 * (v45 & (LODWORD(STACK[0x52B8]) ^ 0x1E3FA190)) - ((4 * (v45 & (LODWORD(STACK[0x52B8]) ^ 0x1E3FA190))) & 0xF4B6F240) + 2052815137;
  LODWORD(STACK[0x52D8]) = ((v54 & (v142 ^ LODWORD(STACK[0x50D0]))) << v103) ^ ((v78 & (v142 ^ LODWORD(STACK[0x50D0]))) >> v59);
  v143 = (2 * (v52 & (LODWORD(STACK[0x52C0]) ^ 0x17F1BEFF)) - ((4 * (v52 & (LODWORD(STACK[0x52C0]) ^ 0x17F1BEFF))) & 0x58534EFC) + 740927359) ^ LODWORD(STACK[0x50C8]);
  v144 = (2 * (v45 & (LODWORD(STACK[0x52F8]) ^ 0x581A00EE)) - ((4 * (v45 & (LODWORD(STACK[0x52F8]) ^ 0x581A00EE))) & 0xCDEAD384) - 420124221) ^ LODWORD(STACK[0x51B0]);
  LODWORD(STACK[0x52F8]) = ((v54 & v143) << v58) | ((v78 & v143) >> v49);
  LODWORD(STACK[0x5110]) = ((v84 & v144) << v103) + ((v46 & v144) >> v59);
  v145 = 2 * (v45 & (LODWORD(STACK[0x52E0]) ^ 0x7D8B4B04)) - ((4 * (v45 & (LODWORD(STACK[0x52E0]) ^ 0x7D8B4B04))) & 0xAF8123B4);
  v146 = (2 * (v52 & (LODWORD(STACK[0x52E8]) ^ 0x2223B424)) - ((4 * (v52 & (LODWORD(STACK[0x52E8]) ^ 0x2223B424))) & 0x41B5910C) - 1596274554) ^ LODWORD(STACK[0x51C0]);
  v147 = (2 * (v45 & (LODWORD(STACK[0x52D0]) ^ 0xA8254D4)) - ((4 * (v45 & (LODWORD(STACK[0x52D0]) ^ 0xA8254D4))) & 0x4A3533FC) + 622500350) ^ LODWORD(STACK[0x5280]);
  LODWORD(STACK[0x52E8]) = ((v78 & ((v145 - 675245605) ^ LODWORD(STACK[0x5120]))) >> v59) ^ ((v84 & ((v145 - 675245605) ^ LODWORD(STACK[0x5120]))) << v103);
  LODWORD(STACK[0x52E0]) = ((v54 & v146) << v58) | ((v146 & v46) >> v49);
  LOBYTE(v114) = v49;
  LODWORD(STACK[0x5108]) = ((v54 & v147) << v103) | ((v46 & v147) >> v49);
  v148 = (2 * (v52 & (LODWORD(STACK[0x5318]) ^ 0x63ADAA1C)) - ((4 * (v52 & (LODWORD(STACK[0x5318]) ^ 0x63ADAA1C))) & 0x3BF46110) - 1644547959) ^ LODWORD(STACK[0x5200]);
  v149 = (2 * (v52 & (LODWORD(STACK[0x5308]) ^ 0x3DDCB711)) - ((4 * (v52 & (LODWORD(STACK[0x5308]) ^ 0x3DDCB711))) & 0x3FB0B71C) + 534272911) ^ LODWORD(STACK[0x51C8]);
  LODWORD(STACK[0x5318]) = ((v78 & v148) >> v59) + ((v148 & v84) << v58);
  LODWORD(STACK[0x5308]) = ((v54 & v149) << v103) ^ ((v149 & v46) >> v59);
  v150 = 2 * (v45 & (LODWORD(STACK[0x5328]) ^ 0x2C053912)) - ((4 * (v45 & (LODWORD(STACK[0x5328]) ^ 0x2C053912))) & 0xF97E4AF4) + 2092901755;
  LODWORD(STACK[0x5100]) = ((v78 & (v150 ^ LODWORD(STACK[0x51D0]))) >> v49) | ((v84 & (v150 ^ LODWORD(STACK[0x51D0]))) << v58);
  v151 = 2 * (v52 & (LODWORD(STACK[0x52C8]) ^ 0x4464AA8E)) - ((4 * (v52 & (LODWORD(STACK[0x52C8]) ^ 0x4464AA8E))) & 0x31870C50) - 1732016600;
  LODWORD(STACK[0x50F8]) = (((v151 ^ LODWORD(STACK[0x51D8])) & v46) >> v59) | (((v151 ^ LODWORD(STACK[0x51D8])) & v84) << v103);
  v152 = 2 * (v45 & (LODWORD(STACK[0x5530]) ^ 0x1A044156)) - ((4 * (v45 & (LODWORD(STACK[0x5530]) ^ 0x1A044156))) & 0x9D380BE4) + 1318847986;
  LODWORD(STACK[0x50F0]) = ((v54 & (v152 ^ LODWORD(STACK[0x51E0]))) << v58) | ((v78 & (v152 ^ LODWORD(STACK[0x51E0]))) >> v49);
  v153 = 33686018 * LODWORD(STACK[0x5180]);
  v154 = v153 & 0x4B69A51C ^ 0xA5B4D28E;
  LODWORD(STACK[0x52D0]) = v154;
  v155 = (v78 & v154) >> v59;
  v156 = v54 & v154;
  LODWORD(STACK[0x52C8]) = v156;
  LODWORD(STACK[0x5550]) = v133;
  v157 = (((v133 ^ (2 * (v52 & v133))) & v46) >> v114) ^ (((v133 ^ (2 * (v52 & v133))) & v84) << v58) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5650]) ^ ((v156 << v103) | v155) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5420]) ^ v132;
  LODWORD(STACK[0x5520]) = v135;
  LODWORD(STACK[0x5530]) = v137;
  v158 = LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x54C0]) ^ LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5630]) ^ (((v54 & (v137 ^ (2 * (v137 & v45)))) << v103) | (((v137 ^ (2 * (v137 & v45))) & v46) >> v59)) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x54B0]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x5490]);
  v159 = LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x55D0]) ^ LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x5388]) = v116;
  v160 = v158 ^ v159 ^ v116 ^ LODWORD(STACK[0x5560]) ^ ((((v135 ^ (2 * (v135 & v45))) & v54) << v58) + (((v135 ^ (2 * (v135 & v45))) & v46) >> v59)) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5480]) ^ (v157 - ((2 * v157) & 0x71C6155C) + 954403502);
  v161 = LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x5580]);
  LODWORD(STACK[0x52C0]) = LODWORD(STACK[0x5510]) ^ v161;
  LODWORD(STACK[0x5510]) = v130;
  v162 = v84;
  LODWORD(STACK[0x5320]) = v160 ^ v161 ^ (((v130 ^ (2 * (v130 & v52))) & v84) << v103) ^ (((v130 ^ (2 * (v130 & v52))) & v78) >> v114);
  v163 = (2 * (v52 & (LODWORD(STACK[0x52F0]) ^ 0x39368CD0)) - ((4 * (v52 & (LODWORD(STACK[0x52F0]) ^ 0x39368CD0))) & 0x57593454) + 732731946) ^ LODWORD(STACK[0x51F8]);
  v164 = (v163 & v84) << v58;
  v165 = STACK[0x5190];
  v166 = v114;
  v167 = *(&off_101353600 + LODWORD(STACK[0x5190]) - 17204) - 12;
  v168 = STACK[0x57C0];
  v169 = *(v167 + (*(STACK[0x57C0] + 15) ^ 0x34));
  LODWORD(STACK[0x5128]) = ((v78 & v163) >> v114) ^ v164;
  v170 = *(&off_101353600 + v165 - 15834) - 8;
  v171 = v170[v168[13] ^ 0x9BLL];
  v172 = (v169 ^ 0xE0) & 0xFF00FFFF | ((v171 ^ 0x9F ^ (v171 >> 4) ^ (((v171 ^ 0x9F) & 0xFC) >> 2) ^ 0x3A) << 16);
  v173 = *(&off_101353600 + v165 - 16191) - 8;
  v174 = *(v167 + (v168[11] ^ 0xF6)) ^ 0xE | ((v173[v168[8] ^ 0x3CLL] ^ 0x50) << 24);
  v175 = v170[v168[14] ^ 0x6DLL];
  v176 = v172 & 0xFFFF00FF | ((v175 ^ 0x9F ^ (v175 >> 4) ^ (((v175 ^ 0x9F) & 0xFC) >> 2) ^ 0x5A) << 8);
  v177 = *(&off_101353600 + (v165 ^ 0x464B)) - 4;
  v178 = ((v177[v168[1] ^ 0x87] ^ (v168[1] - ((2 * v168[1]) & 0x56) + 43) ^ 0xE6) << 16) | ((v173[v168[2] ^ 0x18] ^ 0x88) << 8);
  v179 = v170[v168[7] ^ 0x9ALL];
  v180 = ((*(v167 + (v168[5] ^ 0x97)) ^ 0x1E) << 16) | ((v177[v168[4] ^ 0x6FLL] ^ (v168[4] - ((2 * v168[4]) & 0x56) + 43) ^ 0x3C) << 24) | v179 ^ 0x9F ^ (v179 >> 4) ^ (((v179 ^ 0x9F) & 0xFC) >> 2) ^ 0x57;
  v181 = v168[9] ^ 0x4DLL;
  STACK[0x50D0] = v167;
  v182 = v174 | ((*(v167 + v181) ^ 0x5A) << 16);
  LODWORD(v181) = v177[v168[3] ^ 0x19] ^ (v168[3] - ((2 * v168[3]) & 0x56) + 43) ^ 0xA5;
  v183 = v168[6] ^ 0xBDLL;
  STACK[0x50C8] = v170;
  LODWORD(v183) = v170[v183];
  v184 = v181 | v178;
  LODWORD(STACK[0x5188]) = v180 & 0xFFFF00FF | ((v183 ^ 0xF4 ^ (((v183 >> 2) ^ (v183 >> 4) ^ 0x2C) + (~(2 * ((v183 >> 2) ^ (v183 >> 4) ^ 0x2C)) | 0xD5) - 106)) << 8);
  v185 = v168[10] ^ 0xF1;
  STACK[0x50C0] = v173;
  LODWORD(STACK[0x52F0]) = v182 | ((v173[v185] ^ 0xD7) << 8);
  LODWORD(STACK[0x5178]) = v176 | ((v177[v168[12] ^ 0x62] ^ (v168[12] + (~(2 * v168[12]) | 0xA9) + 44) ^ 0x73) << 24);
  v186 = *v168;
  STACK[0x50B8] = v177;
  LODWORD(STACK[0x5180]) = v184 | ((v177[v186 ^ 0x52] ^ (v186 - ((2 * v186) & 0x56) + 43) ^ 0x22222222) << 24);
  LODWORD(v186) = v153 & 0xD3EFF508 ^ 0xE9F7FA84;
  v187 = (v54 & v186) << v58;
  LODWORD(STACK[0x50B0]) = v187 | ((v78 & v186) >> v59);
  LODWORD(STACK[0x50A8]) = v187 + ((v46 & v186) >> v59);
  v188 = v153;
  LODWORD(v186) = v153 & 0xADAA2AAE ^ 0xD6D51557;
  LODWORD(STACK[0x57C0]) = ((v78 & v186) >> v59) + ((v162 & v186) << v58);
  LODWORD(STACK[0x50A0]) = v52 & 0x56D51557;
  LODWORD(STACK[0x52A8]) = ((2 * (v52 & 0x56D51557)) & 0x80A2200 | 0x80851516) ^ (2 * (v52 & 0x56D51557)) & 0x80800006 | ((2 * (v52 & 0x56D51557)) | 0xD6D51557) & STACK[0x2FC] ^ (2 * (v52 & 0x56D51557)) & 0x4000000;
  LODWORD(STACK[0x5098]) = ((v54 & v186) << v103) | ((v46 & v186) >> v59);
  v189 = 33686018 * LODWORD(STACK[0x4FF0]);
  v190 = v189 & 0x2BE15548 ^ 0x15F0AAA4;
  LODWORD(STACK[0x5290]) = v190;
  LODWORD(STACK[0x5298]) = v78 & v190;
  LODWORD(STACK[0x52A0]) = ((v78 & v190) >> v59) | ((v190 & v162) << v103);
  v191 = v153 & 0x2BE15548 ^ 0x15F0AAA4;
  v192 = v54;
  LODWORD(STACK[0x5278]) = v46 & v191;
  LODWORD(STACK[0x5288]) = ((v54 & v191) << v58) | ((v46 & v191) >> v166);
  v193 = (((STACK[0x4FB8] & v78) >> v59) ^ ((STACK[0x4FB8] & v54) << v58) ^ LODWORD(STACK[0x5018])) % 0x101;
  LODWORD(v167) = LODWORD(STACK[0x52C0]) % 0x101;
  v194 = *(&off_101353600 + (v165 ^ 0x46EA));
  LODWORD(STACK[0x5270]) = *(v194 + 4 * v193) ^ (v193 - ((2 * v193) & 0x2C0) + 1531017056) ^ 0x4C1D27D3;
  LODWORD(v186) = v167 - ((2 * v167) & 0x2C0);
  v195 = 4 * v167;
  LODWORD(STACK[0x52C0]) = *(v194 + v195) ^ (v186 + 1531017056);
  LODWORD(STACK[0x5090]) = ((v78 & (v189 & 0x26149F40 ^ 0x930A4FA0)) >> v59) + (((v189 & 0x26149F40 ^ 0x930A4FA0) & v162) << v103);
  LODWORD(v194) = v188 & 0xC2CFF2BE ^ 0xE167F95F;
  LODWORD(v186) = (v162 & v194) << v103;
  LODWORD(STACK[0x5260]) = ((v46 & v194) >> v166) | v186;
  LODWORD(STACK[0x5268]) = ((v78 & v194) >> v59) | v186;
  LODWORD(v194) = (LODWORD(STACK[0x5088]) + 178001956) % 0x101u;
  v196 = STACK[0x5020];
  LODWORD(STACK[0x52B8]) = LODWORD(STACK[0x5088]) - LODWORD(STACK[0x5020]);
  v197 = ((LODWORD(STACK[0x5150]) ^ 0x5A86754D) - 236132537) ^ ((LODWORD(STACK[0x5150]) ^ 0x28ECF828) - 2088343004) ^ ((LODWORD(STACK[0x5150]) ^ 0xCF9275C7) + 1694033869);
  LODWORD(v186) = *(STACK[0x4FE0] + 4 * ((v196 - 1998346454) % 0x101u));
  LODWORD(v194) = *(STACK[0x4FE0] + 4 * v194) - 812182314;
  LODWORD(STACK[0x5258]) = v194 ^ 0x2DF09BA1 ^ (v194 >> 2) & 0x201017D1;
  LODWORD(STACK[0x5250]) = (v186 - 812182314) ^ 0xD20F645E ^ ((v186 - 812182314) >> 2) & 0x201017D1;
  v198 = STACK[0x5330];
  v199 = *(&off_101353600 + v165 - 16966);
  LODWORD(STACK[0x5248]) = (LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5118]) ^ 0x9ABEC99A) - v197;
  LODWORD(v194) = LODWORD(STACK[0x5320]) ^ LODWORD(STACK[0x5128]);
  v200 = *(&off_101353600 + v165 - 17025) - 4;
  LODWORD(STACK[0x5238]) = *&v200[4 * v193];
  LODWORD(STACK[0x5280]) = *&v200[4 * (v194 % 0x101)];
  STACK[0x5240] = *(&off_101353600 + (v165 ^ 0x4007)) + 4 * ((v198 ^ 0x50B65871u) % 0x101);
  v201 = *(v199 + v195 - 12) + 1527404193;
  v202 = LODWORD(STACK[0x5000]) ^ 0x22FFFF38 ^ v189 & 0x45FFFE70;
  if (*(v199 + v195 - 12) == 1368236637)
  {
    v202 = v162;
  }

  v203 = v189 & 0x45FFFE70 ^ 0x22FFFF38;
  LODWORD(STACK[0x5220]) = v203;
  LODWORD(STACK[0x5208]) = ((v202 & v203) << v103) | ((v203 & v46) >> v166);
  v204 = v188 & 0x45FFFE70 ^ 0x22FFFF38;
  LODWORD(STACK[0x5218]) = ((v162 & v204) << v103) | ((v46 & v204) >> v59);
  v205 = v189 & 0xA2BAE2B8 ^ 0xD15D715C;
  LODWORD(STACK[0x5088]) = ((v78 & v205) >> v59) | ((v205 & v162) << v58);
  v206 = v188;
  v207 = v188 & 0xA2BAE2B8 ^ 0xD15D715C;
  v208 = v166;
  v209 = (v46 & v207) >> v166;
  v210 = v192;
  LODWORD(STACK[0x5080]) = ((v192 & v207) << v103) | v209;
  v211 = v189 & 0x7704970C ^ 0x3B824B86;
  v212 = (v78 & v211) >> v208;
  LODWORD(STACK[0x51C8]) = v211;
  v213 = (v192 & v211) << v103;
  LODWORD(STACK[0x5230]) = v213 | v212;
  LODWORD(STACK[0x5228]) = v213 + v212;
  v214 = v188 & 0x7704970C ^ 0x3B824B86;
  v215 = (v46 & v214) >> v59;
  v216 = (v162 & v214) << v58;
  LODWORD(STACK[0x5200]) = v216 + v215;
  LODWORD(STACK[0x5210]) = v216 | v215;
  v217 = (v141 & v207) >> v59;
  LODWORD(STACK[0x5078]) = ((v192 & v207) << v58) | v217;
  v218 = v162 & v207;
  LODWORD(STACK[0x5070]) = v217 ^ (v218 << v58);
  LODWORD(STACK[0x5068]) = v217 + (v218 << v103);
  v219 = (v205 & v46) >> v208;
  LODWORD(STACK[0x5060]) = v219 + ((v205 & v162) << v103);
  v220 = v192 & v205;
  LODWORD(STACK[0x5058]) = (v220 << v103) + v219;
  LODWORD(STACK[0x5050]) = (v220 << v58) | v219;
  LODWORD(STACK[0x51F8]) = ((v192 & v214) << v58) + ((v141 & v214) >> v208);
  LOBYTE(v209) = v58;
  LODWORD(STACK[0x51D0]) = v211 & v46;
  LODWORD(STACK[0x51E0]) = ((v192 & v211) << v58) + ((v211 & v46) >> v208);
  LOBYTE(v219) = v59;
  LODWORD(STACK[0x51D8]) = ((v141 & v214) >> v59) | ((v162 & v214) << v103);
  v221 = v206 & 0xD3839C2E ^ 0xE9C1CE17;
  v222 = (v192 & v221) << v103;
  v223 = (v141 & v221) >> v59;
  v224 = v46 & v221;
  LODWORD(STACK[0x5048]) = v222 + ((v46 & v221) >> v208);
  LODWORD(STACK[0x5040]) = v222 + v223;
  v225 = (v162 & v221) << v103;
  LODWORD(STACK[0x5038]) = v225 + (v224 >> v59);
  LODWORD(STACK[0x5030]) = v223 + v225;
  v226 = v189 & 0xFAD27722 ^ 0xFD693B91;
  LODWORD(STACK[0x51B0]) = v226 & v162;
  v227 = v162;
  LODWORD(v228) = __ROR4__(v226 & v162 ^ LODWORD(STACK[0x300]), 20) ^ 0x2AB49BA9;
  HIDWORD(v228) = v228;
  LODWORD(STACK[0x51C0]) = ((v228 >> 12) << v103) | ((v226 & v46) >> v59);
  LODWORD(STACK[0x5028]) = (LODWORD(STACK[0x52C8]) << v58) ^ ((v46 & STACK[0x52D0]) >> v59);
  LODWORD(STACK[0x5330]) = ((v198 ^ 0xE2B5D500) + 1964996641) ^ ((v198 ^ 0x4A382929) - 577600502) ^ ((v198 ^ LODWORD(STACK[0x304])) + 1871776121);
  LODWORD(STACK[0x5368]) = ((LODWORD(STACK[0x5368]) ^ 0x2DA44697) - 2030384032) ^ ((LODWORD(STACK[0x5368]) ^ 0x54C562E8) - 6559711) ^ ((LODWORD(STACK[0x5368]) ^ 0x4BF04997) - 525417632);
  v229 = v189 & 0xD3EFF508 ^ 0xE9F7FA84;
  v230 = (v229 & v162) << v103;
  LODWORD(STACK[0x5020]) = ((v141 & v229) >> v208) + v230;
  LODWORD(STACK[0x5018]) = ((v229 & v46) >> v208) ^ v230;
  LODWORD(STACK[0x5010]) = ((STACK[0x52A8] & v162) << v58) ^ ((v141 & STACK[0x52A8]) >> v208);
  v231 = (LODWORD(STACK[0x5278]) >> v59) ^ ((v162 & v191) << v103);
  v232 = (LODWORD(STACK[0x5298]) >> v208) ^ ((v210 & STACK[0x5290]) << v58);
  v233 = LODWORD(STACK[0x52F8]) ^ LODWORD(STACK[0x50F8]);
  LODWORD(STACK[0x5008]) = v233 ^ v231;
  LODWORD(STACK[0x5000]) = v233 ^ v232;
  LODWORD(STACK[0x4FF8]) = v233 ^ LODWORD(STACK[0x52A0]);
  LODWORD(STACK[0x4FF0]) = v233 ^ LODWORD(STACK[0x5288]);
  v234 = STACK[0x5310];
  LODWORD(STACK[0x4FE8]) = (LODWORD(STACK[0x5310]) ^ 0x1BFDBAC0) + LODWORD(STACK[0x5270]);
  v235 = v206;
  v236 = v206 & 0x26149F40 ^ 0x930A4FA0;
  v237 = (v210 & v236) << v58;
  LODWORD(STACK[0x4FE0]) = v237 ^ LODWORD(STACK[0x5128]) ^ LODWORD(STACK[0x5320]);
  v238 = STACK[0x52B0];
  v239 = STACK[0x5308];
  LODWORD(STACK[0x4FD8]) = LODWORD(STACK[0x52B0]) ^ LODWORD(STACK[0x5260]) ^ STACK[0x5308] & 0xFBFFFFFF;
  v240 = v189 & 0xC2CFF2BE ^ 0xE167F95F;
  v241 = (v210 & v240) << v209;
  LODWORD(STACK[0x4FD0]) = v239 ^ v238 ^ (v241 | ((v141 & v240) >> v219));
  LODWORD(STACK[0x4FC8]) = v239 ^ v238 ^ ((v240 & v46) >> v208) ^ v241;
  LODWORD(STACK[0x4FC0]) = v239 ^ v238 ^ LODWORD(STACK[0x5268]);
  v242 = 500556723 * LODWORD(STACK[0x5248]) + LODWORD(STACK[0x5258]) + LODWORD(STACK[0x5250]);
  v243 = LODWORD(STACK[0x52E0]) ^ LODWORD(STACK[0x52E8]);
  LODWORD(STACK[0x4FB8]) = v243 ^ (-771298935 * LODWORD(STACK[0x5238]) - 1444081448) ^ 0x81AC7BBA ^ v201 ^ LODWORD(STACK[0x5208]);
  LODWORD(STACK[0x4FB0]) = v243 ^ ((v141 & STACK[0x5220]) >> v208) ^ ((v210 & STACK[0x5220]) << v209) ^ *(STACK[0x5240] - 8);
  LODWORD(STACK[0x4FA8]) = v243 ^ ((v141 & v204) >> v219) ^ ((v210 & v204) << v209);
  LODWORD(STACK[0x4FA0]) = v243 ^ LODWORD(STACK[0x5218]);
  v244 = v189 & 0xD3839C2E ^ 0xE9C1CE17;
  v245 = (v244 & v227) << v209;
  v246 = (v244 & v46) >> v208;
  v247 = v210 & v244;
  v248 = v141 & v244;
  v249 = v247 << v209;
  LODWORD(STACK[0x4F98]) = (v248 >> v219) + v245;
  LODWORD(STACK[0x4F90]) = v245 ^ v246;
  LODWORD(STACK[0x4F88]) = v249 | v246;
  LODWORD(STACK[0x4F80]) = (v248 >> v208) ^ v249;
  v250 = LODWORD(STACK[0x52D8]) ^ LODWORD(STACK[0x5300]);
  v251 = v235 & 0xFAD27722 ^ 0xFD693B91;
  v252 = (v227 & v251) << v209;
  v253 = (v210 & v251) << v209;
  v254 = v141 & v251;
  v255 = (v46 & v251) >> v219;
  v256 = v254 >> v219;
  v257 = ((STACK[0x51C8] & v227) << v103) ^ (LODWORD(STACK[0x51D0]) >> v219);
  v258 = LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x5110]);
  LODWORD(STACK[0x4F78]) = v258 ^ LODWORD(STACK[0x5230]);
  LODWORD(STACK[0x4F70]) = v258 ^ LODWORD(STACK[0x5200]);
  LODWORD(STACK[0x4F68]) = v258 ^ LODWORD(STACK[0x5228]);
  LODWORD(STACK[0x4F60]) = v258 ^ LODWORD(STACK[0x5210]);
  LODWORD(STACK[0x4F58]) = v258 ^ LODWORD(STACK[0x51F8]);
  LODWORD(STACK[0x4F50]) = v258 ^ v257;
  LODWORD(STACK[0x4F48]) = v258 ^ LODWORD(STACK[0x51E0]);
  LODWORD(STACK[0x4F40]) = v258 ^ LODWORD(STACK[0x51D8]);
  v259 = (v210 & v226) << v103;
  v260 = (v141 & v226) >> v208;
  v261 = v260 + (LODWORD(STACK[0x51B0]) << v103);
  LODWORD(STACK[0x4F38]) = v250 ^ v252 ^ v256;
  LODWORD(STACK[0x4F30]) = v250 ^ (v259 | ((v226 & v46) >> v208));
  LODWORD(STACK[0x4F28]) = v250 ^ (v253 | v255);
  LODWORD(STACK[0x4F20]) = v250 ^ v261;
  LODWORD(STACK[0x4F18]) = v250 ^ v260 ^ v259;
  LODWORD(STACK[0x4F10]) = v250 ^ (v252 | v255);
  LODWORD(STACK[0x4F08]) = v250 ^ LODWORD(STACK[0x51C0]);
  LODWORD(STACK[0x4F00]) = v250 ^ (v253 + (v254 >> v208));
  LODWORD(STACK[0x5170]) = LODWORD(STACK[0x52F0]) ^ 0x3C;
  v262 = 1626527313 * LODWORD(STACK[0x52B8]);
  v263 = (v46 & v236) >> v208;
  LODWORD(STACK[0x4EF8]) = v237 | v263;
  LODWORD(STACK[0x4EE8]) = v234 ^ 0xB77397F;
  LODWORD(STACK[0x4EE0]) = -1444081448 - 771298935 * LODWORD(STACK[0x5280]);
  LODWORD(STACK[0x4ED8]) = LODWORD(STACK[0x5108]) ^ v238;
  LODWORD(STACK[0x4ED0]) = -LODWORD(STACK[0x5330]);
  LODWORD(STACK[0x5330]) = LODWORD(STACK[0x5368]) + 1859571062;
  v264 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5190]));
  LODWORD(STACK[0x4EC8]) = LODWORD(STACK[0x50F0]) ^ -LODWORD(STACK[0x50F0]);
  LODWORD(STACK[0x4EC0]) = LODWORD(STACK[0x5100]) ^ LODWORD(STACK[0x57C0]);
  LODWORD(STACK[0x4EB8]) = LODWORD(STACK[0x5150]) ^ 0x54956DF4;
  LODWORD(STACK[0x4EB0]) = v262 - 970933478;
  v265 = STACK[0x52C0];
  LODWORD(STACK[0x4EA8]) = LODWORD(STACK[0x52C0]) ^ 0x33E2D82C;
  LODWORD(STACK[0x4EA0]) = v265 ^ LODWORD(STACK[0x308]);
  LODWORD(STACK[0x4E98]) = LODWORD(STACK[0x5348]) ^ v263;
  LODWORD(STACK[0x4E90]) = v242 - 1637395745;
  v266 = STACK[0x5328];
  LODWORD(STACK[0x4E88]) = LODWORD(STACK[0x5328]) ^ 0xD0E96EB1;
  LODWORD(STACK[0x4E80]) = v266 ^ 0x15A53F3F;
  LODWORD(STACK[0x4EF0]) = v239 & 0x4000000;
  LODWORD(STACK[0x4E78]) = -(v239 & 0x4000000);
  LODWORD(STACK[0x4E68]) = -1448161805;
  return v264();
}

uint64_t sub_1002DD5E0()
{
  v0 = 56 * LODWORD(STACK[0x37E0]);
  v1 = STACK[0x57D8];
  v2 = STACK[0x37DC];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x37DC]));
  return (*(v1 + 8 * ((v0 ^ 0x3D57) + v2)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_1002DD644()
{
  v1 = STACK[0x51B8] ^ 0x1099;
  v2 = (((v0 ^ 0x4A543461) + 1895538104) ^ (v0 + 1026534871) ^ ((((v1 - 18621) | 0x45) ^ 0xC99F36EF) + (v0 ^ 0xF3309F61))) == 984590862;
  return (*(STACK[0x57D8] + 8 * (((8 * v2) | (16 * v2)) ^ v1)))();
}

uint64_t sub_1002DD888()
{
  v2 = 1534937323 * ((~((v1 - 240) | 0x8359146C8807B8A2) + ((v1 - 240) & 0x8359146C8807B8A2)) ^ 0xB1DE6351B116BC1ALL);
  STACK[0x1D4D8] = STACK[0x8D20] + v2;
  LODWORD(STACK[0x1D4CC]) = v2 + v0 + 1451493860;
  STACK[0x1D4C0] = v2;
  LODWORD(STACK[0x1D4D4]) = (v0 - 1967074986) ^ v2;
  LODWORD(STACK[0x1D4C8]) = v0 - 1967074986 - v2 - 526;
  LODWORD(STACK[0x1D4E0]) = v2 + v0 - 1967074986 + 41;
  LODWORD(STACK[0x1D4D0]) = v2;
  v3 = v0 + 9182;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * v3))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

void *sub_1002DDA7C()
{
  STACK[0x8F98] = v1;
  LODWORD(STACK[0xB69C]) = STACK[0x6098];
  LODWORD(STACK[0xBF98]) = 0;
  STACK[0x8C28] = 0;
  LODWORD(STACK[0xB4E4]) = -769884012;
  STACK[0x6090] = 0;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x27F3 ^ (v0 + 11869))))(&STACK[0x6090]);
}

uint64_t sub_1002DDAF4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 7814)))(v2);
}

uint64_t sub_1002DDB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = STACK[0xFE78];
  v9 = *(STACK[0xFE78] + v7 - 5896 * ((((v7 >> 3) * v6) >> 64) >> 4));
  v10 = STACK[0x4ED0];
  v11 = STACK[0xFE70];
  v12 = *(STACK[0xFE70] + 4 * ((((v9 | ((v9 < 0x1C) << 8)) + 1019422144) * ((LODWORD(STACK[0x4ED0]) ^ 0x6B22C99F) - 1797444816) + 492923074) % 0x2240));
  v13 = *STACK[0x5490];
  v14 = *STACK[0x51F8];
  LODWORD(STACK[0x4F48]) = *STACK[0x55E0];
  LODWORD(STACK[0x4EF8]) = *STACK[0x5790];
  LODWORD(STACK[0x4EB8]) = *STACK[0x5378];
  LODWORD(STACK[0x4EC8]) = *STACK[0x5640];
  LODWORD(STACK[0x55D0]) = *STACK[0x5680];
  LODWORD(STACK[0x53B0]) = *STACK[0x52D0];
  LODWORD(STACK[0x5270]) = *STACK[0x5070];
  LODWORD(STACK[0x55A0]) = *STACK[0x57B0];
  v15 = *(v8 + 3903 * (BYTE1(v12) ^ 0x64) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v12) ^ 0x64u) + 4008381)) >> 32) >> 1));
  v16 = *(v8 + 3903 * (BYTE2(v12) ^ 0xC5) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE2(v12) ^ 0xC5u) + 4008381)) >> 32) >> 1));
  v17 = 3903 * (((HIBYTE(v12) ^ 0xDC6A27B6) - 1762331557) ^ ((HIBYTE(v12) ^ 0x57A8D5D0) + 490079805) ^ ((HIBYTE(v12) ^ 0x8BC2F22A) - 1050926649)) + 1421911582;
  LOBYTE(v12) = *(v8 + (3903 * (((v12 ^ 0x83D85FC4) + 1900569799) ^ ((v12 ^ 0x40E01D41) - 1301273020) ^ ((v12 ^ 0xC3384274) + 833124727)) - 616883023) % 0x1708);
  v18 = *(v8 + v17 % 0x1708);
  LOBYTE(v17) = v18 & 0xDA ^ 0xBB;
  v19 = v16 & 0xE6 ^ 0x81;
  v20 = *STACK[0x53D8];
  LOBYTE(v8) = (v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * (v16 & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19;
  v21 = *STACK[0x5310];
  v22 = v18 ^ (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & 0x3E ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  LOBYTE(v17) = v16 ^ (2 * v8) ^ 0xE6;
  LOBYTE(v8) = v15 & 0xE6 ^ 0x81;
  v23 = (v17 << 8) | ((v22 ^ 0xDA) << 16);
  v24 = ((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * (v15 & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0x962913) & ~v23;
  LOBYTE(v8) = v12 & 0x96 ^ 0x59;
  v25 = *STACK[0x51B0];
  v26 = ((((v24 | v23 & 0x69D600) << 8) ^ 0xE0E27B87) & ((v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * (v8 ^ v12 & 0x32)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0xFFFFFF79) | (v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * (v8 ^ v12 & 0x32)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) & 0x78) ^ 0x3A0EEA66;
  v27 = *STACK[0x5580];
  v28 = *STACK[0x5088];
  *(v11 + 4 * (a5 % 0x2240)) = v26;
  return (*(STACK[0x57D8] + 8 * ((502 * (v5 != 0)) ^ v10)))(v20, v13, v27, v28, a5 + 2717, v25, v21, v14);
}

uint64_t sub_1002DE13C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x9FCC]) = v1;
  STACK[0xA2D0] = v2;
  STACK[0xBF20] = v4;
  STACK[0x6940] = v3;
  STACK[0x5E60] = 0;
  LODWORD(STACK[0x94E0]) = -769884012;
  return (*(STACK[0x57D8] + 8 * (((a1 ^ 0x68CE ^ ((a1 + 4050) | 0x1804)) * (v5 == 0)) ^ a1)))();
}

uint64_t sub_1002DE30C()
{
  v1 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 ^ 0x6EC9)))();
  v2 = (*(v1 + 8 * (v0 ^ 0x6EC9)))(STACK[0xD708]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002DE348(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0xA2E8]) = a4;
  LODWORD(STACK[0xBC3C]) = v4;
  LODWORD(STACK[0xD378]) = v6;
  STACK[0xD380] = v5;
  LODWORD(STACK[0xD37C]) = STACK[0x57B0];
  STACK[0x1D4C0] = 0;
  LODWORD(STACK[0x1D4C8]) = (v7 - 1723133771) ^ (1917435887 * ((((v8 - 240) | 0x5581379B) - (v8 - 240) + ((v8 - 240) & 0xAA7EC860)) ^ 0xB33A6C9D));
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (v7 + 9178)))(v8 - 240);
  return (*(v9 + 8 * (((((v7 + 9) ^ (*STACK[0x4270] > 0)) & 1) * (9 * (v7 ^ 0x5D0D) - 12326)) ^ (v7 - 11551))))(v10);
}

uint64_t sub_1002DE470(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v19 = (((v13 ^ a8) & v15) << v16) | ((v13 ^ a8) >> v8);
  v20 = a6 & (4 * ((v19 ^ (2 * (v19 & v17))) & v17)) ^ v19 ^ (2 * (v19 & v17));
  v21 = *((v20 ^ 0x15A0 ^ (16 * (v20 & v17)) & (4 * (v17 & a4)) & v14) + v18 + 2845);
  v22 = ~*(((v11 | (v21 >> 4)) ^ 0xA2) + v18 + 260);
  LODWORD(v21) = ((((v22 >> 2) & 1) << 6) | 2) ^ (*(((v21 & 0xF | v10) ^ 0x74) + v18 + 777) ^ 0xFFFFFFC3) & ~(16 * v22);
  v23 = (v21 ^ 0x79) + 57;
  v24 = (((v21 ^ 0x79) - 71) & 0xC6 | 0x18) ^ v23 & 0x30;
  LODWORD(v21) = 12337 * ((*(v18 + (v21 ^ 0x32u) + 11037) ^ v23 ^ (2 * ((v23 ^ 0x44) & (2 * ((v23 ^ 0x44) & (2 * ((v23 ^ 0x44) & (2 * ((v23 ^ 0x44) & (2 * ((v23 ^ 0x44) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xE3);
  *(STACK[0x8070] + v12 % 0x3282) = *(STACK[0x8070] + v21 - 12930 * (((1328683 * v21) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((1222 * (v13 == 255)) ^ v9)))();
}

uint64_t sub_1002DE884@<X0>(int a1@<W8>)
{
  if ((a1 - v2 + v3 + 87) != (((a1 + 117) & 0xDF) + 1))
  {
    v1 = 1;
  }

  return (*(STACK[0x57D8] + 8 * ((v1 * ((a1 + 22613) ^ 0x70B0)) ^ (a1 + 17915))))();
}

uint64_t sub_1002DE8EC()
{
  v1 = STACK[0x57D8];
  STACK[0xD018] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x3B1A) + v0)))();
}

uint64_t sub_1002DE9E0(__n128 a1, double a2, __n128 a3, __n128 a4)
{
  v6 = *(STACK[0x57D8] + 8 * ((61 * (v4 > 0xF)) ^ v5));
  *&STACK[0x57B0] = vdupq_n_s64(0x5E44F7C862EFA918uLL);
  return v6(a1, vdupq_n_s64(0x1C64917143BAF700uLL), a3, a4, vdupq_n_s64(0x5B22D5A0AB3DBFB5uLL));
}

uint64_t sub_1002DEC00(uint64_t a1)
{
  v1 = *(a1 + 4352) + 16 * *(a1 + 3264);
  v2 = v1 - *STACK[0x4D48];
  v3 = (v2 & 0xFFFFFFFFFFFFFFF0) + *STACK[0x4D38];
  v4 = v2 & 0xF;
  if ((v4 - 9) > 6)
  {
    (*(*STACK[0x4E48] + 32 * *(v3 + 8) + 8))(*v3, &STACK[0xFBA8], 8, v1);
  }

  else
  {
    v5 = STACK[0x4E48];
    (*(*STACK[0x4E48] + 32 * *(v3 + 8) + 8))(*v3, &STACK[0xFBA8], (16 - v4), v1);
    (*(*v5 + 32 * *(v3 + 24) + 8))(*(v3 + 16), &STACK[0xFBA8] + (16 - v4), (v4 - 8), v1 + (16 - v4));
  }

  v6 = STACK[0xFBA8];
  v7 = STACK[0x57D8];
  v8 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4C34]) ^ 0x245F));
  STACK[0xEFC8] = STACK[0xFBA0] + 16 * STACK[0xFB90];
  STACK[0xEFD0] = v6;
  STACK[0xEFC0] = v8;
  return (*(v7 + 8 * (LODWORD(STACK[0x4D6C]) + 8829)))(&STACK[0xEED0]);
}

uint64_t sub_1002DED7C@<X0>(int a1@<W8>)
{
  v1 = a1 - 3547;
  v2 = STACK[0x57D8];
  v3 = STACK[0x7ED8];
  STACK[0x7ED8] += 16;
  *(&STACK[0x10120] + v3) = 0;
  v4 = (*(v2 + 8 * (a1 + 9304)))(0, &STACK[0x10120] + v3) == 0;
  return (*(v2 + 8 * ((11391 * v4) ^ v1)))();
}

uint64_t sub_1002DEE3C(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = (((v13 ^ a4) + 58) ^ ((v13 ^ 0x81) + 62) ^ ((v13 ^ 0x6C) - 47)) * a4 - 103;
  v15 = v14 & 0xFE ^ 0x20;
  *(v10 + (v13 ^ 0x82DFDE68)) = (*(v9 + (v13 ^ 0x82DFDE68)) - ((2 * *(v9 + (v13 ^ 0x82DFDE68))) & v7) + 91) ^ v14 ^ (2 * ((v14 ^ 0x3C) & (2 * ((v14 ^ 0x3C) & (2 * ((v14 ^ 0x3C) & (2 * ((v14 ^ 0x3C) & (2 * ((v14 ^ 0x3C) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ 0xB9;
  v16 = (((v13 ^ 0x389E2E4E) - 949890638) ^ ((v13 ^ 0xEFF9D2D1) + 268840239) ^ ((v13 ^ 0x55B822F7) - 1438130935)) - 1373938290;
  v17 = (v16 ^ 0x94D212D3) & (2 * (v16 & 0xD4C480DB)) ^ v16 & 0xD4C480DB;
  v18 = ((2 * (v16 ^ 0x3CD312E5)) ^ v11) & (v16 ^ 0x3CD312E5) ^ (2 * (v16 ^ 0x3CD312E5)) & a7;
  v19 = (v18 ^ 0xC006003C) & (4 * v17) ^ v17;
  v20 = ((4 * (v18 ^ 0x28109202)) ^ 0xA05E48F8) & (v18 ^ 0x28109202) ^ (4 * (v18 ^ 0x28109202)) & (a7 - 2);
  v21 = (v20 ^ v12) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x48019206)) ^ 0x817923E0) & (v20 ^ 0x48019206) ^ (16 * (v20 ^ 0x48019206)) & (a7 - 14);
  v23 = v22 ^ 0x6806901E;
  v24 = v21 ^ a7 ^ (v22 ^ 0x8011021E) & (v21 << 8);
  v25 = v16 ^ (2 * ((v24 << 16) & a1 ^ v24 ^ ((v24 << 16) ^ 0x123E0000) & ((v23 << 8) & a1 ^ 0x68050000 ^ ((v23 << 8) ^ 0x17920000) & v23)));
  return (*(STACK[0x57D8] + 8 * ((11 * ((((v25 ^ 0x18576798) + 1638982314) ^ ((v25 ^ 0x84788E64) - 39908523) ^ ((v25 ^ 0x98E84D5A) - 519059349)) - 2099257752 > 0xF)) ^ v8)))();
}

uint64_t sub_1002DF3B8()
{
  v4 = (v0 - 21350) | 0x400E;
  v5 = v0 + 8183;
  v8 = v1 == 0x79296B4A625EDF44 || v2 == 0 || v3 == -769884012;
  return (*(STACK[0x57D8] + 8 * ((v8 * (v4 - 17440)) ^ v5)))();
}

uint64_t sub_1002DF424@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *(a1 + 2708) = v2;
  *(a1 + 2704) = v3;
  return (*(STACK[0x57D8] + 8 * ((((a2 ^ (v2 < *(STACK[0xA660] + v4))) & 1) * ((a2 - 23934) ^ 0x12B3)) | a2)))();
}

uint64_t sub_1002DF514()
{
  v1 = STACK[0x2C7C];
  *v0 = 0x5E6653D96D0CF4EBLL;
  v0[1] = 0xF9E4F3B5C631896;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1002DF5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  LODWORD(STACK[0xC410]) = 813006154;
  return (*(STACK[0x57D8] + 8 * (v7 - 13555)))(a1, 21553, 840133462, 2090271397, a5, 4294947640, a7, 1280);
}

uint64_t sub_1002DF620()
{
  v2 = STACK[0x51B8];
  *(STACK[0xE5A0] + 8) = 1978732275 * ((v1 ^ 0xC61726DB) + v0) + 1978732275;
  return (*(STACK[0x57D8] + 8 * (v2 - 17962)))();
}

uint64_t sub_1002DF670@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  *(a2 + (v4 + v5)) = *(v8 + (v4 + v5));
  v9 = a1 + v4 + 3108;
  v11 = v9 > v7 && v9 < v2;
  return (*(STACK[0x57D8] + 8 * ((v11 * v6) ^ v3)))();
}

uint64_t sub_1002DF6F4()
{
  v0 = STACK[0xC3C8];
  v1 = STACK[0xECA8];
  v2 = (v1 ^ 0x1089FED) & (2 * (v1 & 0x98CDFE8)) ^ v1 & 0x98CDFE8;
  v3 = ((2 * (v1 ^ (STACK[0x51B8] + 50316135))) ^ 0x151988AA) & (v1 ^ (STACK[0x51B8] + 50316135)) ^ (2 * (v1 ^ (STACK[0x51B8] + 50316135))) & 0xA8CC454 ^ 0xA844455;
  v4 = (((2 * (v1 ^ (STACK[0x51B8] + 50316135))) ^ 0x151988AA) & (v1 ^ (STACK[0x51B8] + 50316135)) ^ (2 * (v1 ^ (STACK[0x51B8] + 50316135))) & 0xA8CC454 ^ 0x8000) & (4 * v2) ^ v2;
  v5 = ((4 * v3) ^ 0x2A331154) & v3 ^ (4 * v3) & 0xA8CC454;
  v6 = (v5 ^ 0xA000040) & (16 * v4) ^ v4;
  v7 = ((16 * (v5 ^ 0x8CC401)) ^ 0xA8CC4550) & (v5 ^ 0x8CC401) ^ (16 * (v5 ^ 0x8CC401)) & 0xA8CC450;
  v8 = STACK[0xECA8] ^ (2 * ((((v7 ^ 0x2008005) << 8) & 0xA8C0000 ^ 0x8840000 ^ (((v7 ^ 0x2008005) << 8) ^ 0x8CC40000) & (v7 ^ 0x2008005)) & (((v7 ^ 0x88C4400) & (v6 << 8) ^ v6) << 16) ^ (v7 ^ 0x88C4400) & (v6 << 8) ^ v6));
  v9 = STACK[0x57D8];
  STACK[0xD020] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xC4C]));
  return (*(v9 + 8 * (LODWORD(STACK[0xC48]) ^ (244 * (v8 != 160227304)))))(0xA729B82E8022AE18, 0x5E4E7696E37EBB4ALL, v0, 511644426);
}

uint64_t sub_1002DF92C()
{
  v3 = STACK[0x6A08];
  *(v0 + 360) = v2;
  STACK[0x6230] = v3;
  LODWORD(STACK[0x6974]) = -1435809422;
  return (*(STACK[0x57D8] + 8 * (v1 - 17575)))();
}

uint64_t sub_1002DF970()
{
  v0 = LODWORD(STACK[0x5780]) - 10623;
  v1 = STACK[0x57D8];
  LODWORD(STACK[0x5770]) = v0;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1002DFA0C()
{
  v0 = (STACK[0x51B8] - 22418) | 0x213;
  v1 = STACK[0x57D8];
  v2 = STACK[0xF88];
  STACK[0x7B40] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xF88]));
  return (*(v1 + 8 * ((v0 ^ 0x23E9) + v2)))();
}

uint64_t sub_1002DFA74()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1763117876) & 0x69175977) - 15601) ^ v0)))();
}

uint64_t sub_1002DFB08()
{
  v2 = (v1 - ((2 * v1) & 0x5133F6DEF2C2B8F8) - 0x57660490869EA384) ^ 0x1011FABB98A63F2FLL ^ v0;
  v3 = __ROR8__((v1 - ((2 * v1) & 0x5133F6DEF2C2B8F8) - 0x57660490869EA384) ^ 0x1011FABB98A63F2FLL, 8);
  v4 = (0xDD45F1438E63E1B3 - ((v3 + v2) | 0xDD45F1438E63E1B3) + ((v3 + v2) | 0x22BA0EBC719C1E4CLL)) ^ 0x1A72BFD69699763BLL;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0xE580B17D8CC5E551;
  v7 = __ROR8__(v6, 8);
  v8 = v6 ^ __ROR8__(v5, 61);
  v9 = (v7 + v8) ^ 0xE1A1FD5BD155F97ALL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xDA604B0C03A2BF99;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((((2 * (v13 + v12)) & 0x6AAA523FC664EB32) - (v13 + v12) + 0x4AAAD6E01CCD8A66) ^ 0xB09F342DD7F3BBA1, 8);
  v15 = (((2 * (v13 + v12)) & 0x6AAA523FC664EB32) - (v13 + v12) + 0x4AAAD6E01CCD8A66) ^ 0xB09F342DD7F3BBA1 ^ __ROR8__(v12, 61);
  v16 = (((2 * (v14 + v15)) & 0x109F1F162E698780) - (v14 + v15) - 0x84F8F8B1734C3C1) ^ 0x25407C92C82EEF91;
  v17 = ((__ROR8__(v16, 8) + (v16 ^ __ROR8__(v15, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  LODWORD(v17) = ((v17 ^ LODWORD(STACK[0x57C0]) ^ 0x66) + 9) ^ ((v17 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFFEF) - 126) ^ ((v17 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFF89) - 24);
  v18 = *(STACK[0x5740] + (STACK[0x5590] & ((((STACK[0x5348] & 0xCD3287C0) + (STACK[0x5670] ^ 0x669943E2)) & 0xFFFFFFF8) + 329446712)));
  v19 = (v18 + STACK[0x56E0] - ((2 * (v18 + STACK[0x56E0])) & 0xD0FE52AC644E1766) - 0x1780D6A9CDD8F44DLL) ^ 0x50F72882D3E068E0;
  v20 = __ROR8__(v19, 8);
  v21 = v19 ^ __ROR8__(v18, 61);
  v22 = (((2 * (v20 + v21)) | 0x120FC2C183BFEA6ALL) - (v20 + v21) - 0x907E160C1DFF535) ^ 0x31CF500A26DA9D42;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0x43D53593BB73BB96 - ((v24 + v23) | 0x43D53593BB73BB96) + ((v24 + v23) | 0xBC2ACA6C448C4469)) ^ 0x59AA7B11C849A138;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xE1A1FD5BD155F97ALL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((((2 * (v29 + v28)) & 0x6BAF7B6E599FC676) - (v29 + v28) - 0x35D7BDB72CCFE33CLL) ^ 0x10480944D092A35DLL, 8);
  v31 = (((2 * (v29 + v28)) & 0x6BAF7B6E599FC676) - (v29 + v28) - 0x35D7BDB72CCFE33CLL) ^ 0x10480944D092A35DLL ^ __ROR8__(v28, 61);
  v32 = (v30 + v31) ^ 0xFA35E2CDCB3E31C7;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xD2F00CE620E5D3AELL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((0xE4E5742E8D8202EALL - ((v36 + v35) | 0xE4E5742E8D8202EALL) + ((v36 + v35) | 0x1B1A8BD1727DFD15)) ^ 0xEF6980E0DC0D886ELL) >> STACK[0x5480];
  LODWORD(v37) = ((v37 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFDC) - 97) ^ ((v37 ^ LODWORD(STACK[0x54A0]) ^ 0x1B) + 90) ^ ((v37 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFC7) - 122);
  v38 = ((STACK[0x4FD8] & 0x629438A0C5E28DB4) - STACK[0x5010] + 0x4EB5E3AF9D0EB925) ^ 0xF63DE27B7CC9DA76;
  v39 = v38 ^ STACK[0x5018];
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x38C8B16AE7056877;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xE580B17D8CC5E551;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xE1A1FD5BD155F97ALL;
  v45 = __ROR8__(v44, 8);
  v46 = v44 ^ __ROR8__(v43, 61);
  v47 = (((2 * (v45 + v46)) | 0x2F5C997C24791790) - (v45 + v46) - 0x17AE4CBE123C8BC8) ^ 0xCDCE07B2119E3451;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xFA35E2CDCB3E31C7;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xD2F00CE620E5D3AELL;
  v52 = __ROR8__(v51, 8);
  v53 = __ROR8__(v50, 61);
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ (((v52 + (v51 ^ v53) - ((2 * (v52 + (v51 ^ v53))) & 0x25FD565B2D2F269ALL) + 0x12FEAB2D9697934DLL) ^ 0xE68DA01C38E7E636) >> STACK[0x54B0]);
  v54 = *(STACK[0x5370] + (LODWORD(STACK[0x50F0]) & (((STACK[0x5380] - 75864616) ^ 0xAC8170B4) - 767532404 + ((LODWORD(STACK[0x50F8]) + 1995754416) & 0x5902E160))));
  v55 = (v54 + STACK[0x5360]) ^ 0xB88801D4E1C76353;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x38C8B16AE7056877;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (((2 * (v59 + v58)) & 0x411AE5EFA030C71CLL) - (v59 + v58) - 0x208D72F7D018638FLL) ^ 0x3AF23C75A3227920;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (0xE1CCD1C423F28CB8 - ((v62 + v61) | 0xE1CCD1C423F28CB8) + ((v62 + v61) | 0x1E332E3BDC0D7347)) ^ 0xFF92D3600D588A3DLL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xDA604B0C03A2BF99;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xFA35E2CDCB3E31C7;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v69 + v68 - ((2 * (v69 + v68)) & 0x9DA4EA2DE8E51244) + 0x4ED27516F4728922) ^ 0x9C2279F0D4975A8CLL;
  v71 = ((__ROR8__(v70, 8) + (v70 ^ __ROR8__(v68, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5390];
  v72 = *(STACK[0x5260] + (LODWORD(STACK[0x50E8]) & ((STACK[0x5220] & 0xEBE63730) + (STACK[0x5220] | 0xEBE63733) - 1906966041)));
  v73 = (v72 + STACK[0x5338]) ^ 0xB88801D4E1C76353;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x38C8B16AE7056877;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = __ROR8__((((2 * (v77 + v76)) | 0xB13AA6DDF5EE26ECLL) - (v77 + v76) - 0x589D536EFAF71376) ^ 0xBD1DE2137632F627, 8);
  v79 = (((2 * (v77 + v76)) | 0xB13AA6DDF5EE26ECLL) - (v77 + v76) - 0x589D536EFAF71376) ^ 0xBD1DE2137632F627 ^ __ROR8__(v76, 61);
  v80 = (v78 + v79) ^ 0xE1A1FD5BD155F97ALL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xDA604B0C03A2BF99;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xFA35E2CDCB3E31C7;
  v85 = v84 ^ __ROR8__(v83, 61);
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ v71;
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ (((__ROR8__(v86, 8) + (v86 ^ __ROR8__(v85, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  v87 = STACK[0x52F8];
  v88 = ((v87 & 0x2F1E5F701A9A699CLL ^ 0x28125510100A219CLL) + (v87 ^ 0xC70C0AE76FB05C00) - ((v87 ^ 0xC70C0AE76FB05C00) & 0x2F1E5F701A9A699CLL)) ^ 0x509A544394ED56CFLL ^ STACK[0x5358];
  v89 = (__ROR8__(((v87 & 0x2F1E5F701A9A699CLL ^ 0x28125510100A219CLL) + (v87 ^ 0xC70C0AE76FB05C00) - ((v87 ^ 0xC70C0AE76FB05C00) & 0x2F1E5F701A9A699CLL)) ^ 0x509A544394ED56CFLL, 8) + v88) ^ 0x38C8B16AE7056877;
  v90 = __ROR8__(v89, 8);
  v91 = v89 ^ __ROR8__(v88, 61);
  v92 = (v90 + v91) ^ 0xE580B17D8CC5E551;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  v95 = (((v94 + v93) | 0x494829BFE9C662D1) - ((v94 + v93) | 0xB6B7D64016399D2ELL) - 0x494829BFE9C662D2) ^ 0xA8E9D4E438939BABLL;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0xDA604B0C03A2BF99;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0xFA35E2CDCB3E31C7;
  v100 = __ROR8__(v99, 8);
  v101 = v99 ^ __ROR8__(v98, 61);
  v102 = (((2 * (v100 + v101)) | 0x894F53EC929679C8) - (v100 + v101) + 0x3B585609B6B4C31CLL) ^ 0x1657A51069AEEF4ALL;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = ((((v104 + v103) & 0x7197F09E0EC9A643 ^ 0x197D00A0C812603) + ((v104 + v103) ^ 0x700829F5724891E4) - (((v104 + v103) ^ 0x700829F5724891E4) & 0x7197F09E0EC9A643)) ^ 0xF5ECD25AD2F142DCLL) >> STACK[0x5148];
  LODWORD(v105) = ((v105 ^ LODWORD(STACK[0x5150]) ^ 0x73) + 29) ^ ((v105 ^ LODWORD(STACK[0x5150]) ^ 0x66) + 10) ^ ((v105 ^ LODWORD(STACK[0x5150]) ^ 0x15) + 123);
  v106 = STACK[0x5270];
  LODWORD(STACK[0x5230]) = v17 - 106;
  LODWORD(STACK[0x4F70]) = v37 - 48;
  LODWORD(STACK[0x5378]) = v105 - 71;
  return (*(STACK[0x57D8] + 8 * v106))();
}

uint64_t sub_1002E0D28@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x5100]) = 2 * STACK[0x53B0];
  v2 = *(STACK[0x5268] + (((STACK[0x5260] + 2050767130) & LODWORD(STACK[0x50B8])) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x50C0] = v2 + STACK[0x5288];
  STACK[0x50C8] = __ROR8__(v2, 61);
  LODWORD(STACK[0x5130]) = v1 & 0xFFFFFFF8;
  LODWORD(STACK[0x50E0]) = (a1 - 233) | 0xE9;
  v3 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v4 = *v3;
  STACK[0x5180] = *STACK[0x51F0];
  STACK[0x5188] = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x51A0] = 8 * (v3 & 7);
  LODWORD(STACK[0x51B0]) = v4 ^ 0xFFFFFFF4;
  STACK[0x5178] = v3 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5108]) = 2 * (v3 & 0xFFFFFFF8);
  LODWORD(v3) = (52 * (((LODWORD(STACK[0x53D0]) - (a1 - 8894)) | (a1 - 8894 - LODWORD(STACK[0x53D0]))) >= 0)) ^ (a1 + 13790);
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 59;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_1002E0E7C()
{
  v1 = (v0 + 28128);
  v2 = STACK[0x5DD0];
  v3 = *(STACK[0x57D8] + 8 * v0);
  v4 = *(STACK[0x57D8] + 8 * ((v0 + 7508) ^ v0));
  STACK[0x5958] = v3;
  return v4(0, 0, v1, v2, &STACK[0xB0BC], &STACK[0x6428], &STACK[0xBD5C], &STACK[0x77EC]);
}

uint64_t sub_1002E0F64()
{
  v1 = STACK[0x57D8];
  STACK[0xCB60] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 710394669) & 0xD5A87DFD ^ 0x4A03) + v0)))();
}

uint64_t sub_1002E10EC()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0xC598]);
  STACK[0xC598] = 0;
  return (*(v1 + 8 * (v0 - 18587)))(v2);
}

uint64_t sub_1002E11D4@<X0>(int a1@<W1>, uint64_t a2@<X5>, _BYTE *a3@<X7>, char a4@<W8>)
{
  LODWORD(STACK[0x49E0]) = LODWORD(STACK[0x5410]) - LODWORD(STACK[0x5440]);
  v14 = *STACK[0x4F88];
  v15 = *v4;
  v16 = *(a2 + 4000);
  v17 = *v13;
  STACK[0x4AE8] = v16 + 36750;
  v18 = *(v16 + 36750);
  v19 = v17 & 0xA6 ^ 0xE1;
  v20 = v15 & 0x50 ^ 0xFE;
  v21 = v18 & 0x26 ^ 0xFFFFFFA1;
  LODWORD(STACK[0x56F0]) = v18 ^ (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x44444444) & (2 * (v21 ^ v18 & 2)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21));
  v22 = (((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x50) << 8) | (((v17 ^ (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * (((v19 ^ v17 & 2) << ((32 * a1) ^ 0xE0 | 1)) & (v17 ^ 0x44) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xA6) << 16);
  v23 = v14 & 0x38 ^ 0x2A;
  v24 = ((v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x449A86) & ~v22 | v22 & 0xBB6500;
  STACK[0x5150] = v16 + 39573;
  LOBYTE(v22) = *(v16 + 39573);
  v24 <<= 8;
  LODWORD(STACK[0x55F0]) = v24 ^ 0x280101FF;
  LODWORD(STACK[0x5720]) = v24 & 0x97F67000;
  LOBYTE(v24) = *STACK[0x53A8];
  v25 = v24 & 0xAC ^ 0x64;
  LOBYTE(v21) = (v24 ^ 0x64) & (2 * ((v24 ^ 0x64) & (2 * ((v24 ^ 0x64) & (2 * ((v24 ^ 0x64) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25;
  v26 = v22 & 0x30 ^ 0xAE;
  v27 = (v22 ^ (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)));
  LOBYTE(v22) = *v6;
  v28 = *v6 & 0xC8 | 0x32;
  v29 = (v27 << 16) | (((v22 ^ (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0xC8) << 8);
  v30 = *STACK[0x53F0];
  LODWORD(STACK[0x55E0]) = v27;
  v31 = (v29 ^ 0xC929FF) & (v27 ^ 0xE929FE) | v29 & 0x16D600;
  LOBYTE(v27) = *a3;
  v32 = *a3 & 0xF6 ^ 0x89;
  v33 = (((v24 ^ (2 * v21)) ^ 0xAC) << 16) | (((v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0xF6) << 8);
  STACK[0x5610] = v16 + 39823;
  LOBYTE(v21) = *(v16 + 39823);
  LOBYTE(v27) = (v21 & 0xE4 | 0x1A) ^ v21 & 0xFC;
  v34 = (v33 ^ 0x7FFBFF) & ((v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ (v5 + 2739)) | v33 & 0xA41F00;
  STACK[0x4FA0] = v16 + 36334;
  LOBYTE(v33) = *(v16 + 36334);
  LOBYTE(v27) = *v10;
  v35 = *v10 & 0xF2 ^ 0xF;
  v36 = v30 & 0xFFFFFF92 ^ 0xFFFFFFDF;
  v34 <<= 8;
  LODWORD(STACK[0x54C0]) = v30 ^ (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & 0x36 ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36));
  LODWORD(STACK[0x55A0]) = v34 ^ 0x1442FF;
  LODWORD(STACK[0x5790]) = v34 & 0xF42B9D00;
  v37 = *v7;
  v38 = (v37 & 0xFFFFFFE4 | 0x1A) ^ v37 & 0xFFFFFFFC;
  LODWORD(STACK[0x5490]) = v37 ^ (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38));
  v31 <<= 8;
  LODWORD(STACK[0x54E0]) = v31 ^ 0x5430FF;
  LODWORD(STACK[0x55B0]) = v31 & 0x3EABCF00;
  STACK[0x5770] = v16 + 37578;
  LOBYTE(v31) = *(v16 + 37578);
  LOBYTE(v18) = v31 & 0x38 ^ 0x2A;
  v39 = (((v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * (v35 ^ v27 & 0x16)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0xF2) << 8) ^ 0xFF7F;
  STACK[0x5230] = v16 + 40570;
  LOBYTE(v21) = *(v16 + 40570);
  LOBYTE(v27) = v21 & 0x32 ^ 0x2F;
  LOBYTE(v38) = *STACK[0x5780];
  LOBYTE(v36) = v38 & 0x46 ^ 0xF1;
  v40 = (((v31 ^ (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x38) << 16) | (((v38 ^ (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * (v36 ^ v38 & 0x22)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x46) << 8);
  v41 = (((v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * (v27 ^ v21 & 0x16)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x32) << 8) | (((v39 | 0x80) & ((v33 ^ (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * (v33 & 0x64)) ^ v33 & 0x64)) ^ v33 & 0x64)) ^ v33 & 0x64)) ^ v33 & 0x64))) ^ 0xFBD6) ^ v39 & 0x449) << 16);
  LOBYTE(v31) = *STACK[0x5108];
  v42 = v31 & a4 ^ 0xC7;
  LODWORD(STACK[0x53F8]) = ((v31 ^ (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x44) & (2 * ((v31 ^ 0x44) & 6 ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0xD0ED3A) & ~v40 | v40 & 0x2F1200;
  v43 = *STACK[0x4AD0];
  v44 = v43 & 0x4C ^ 0x74;
  LODWORD(STACK[0x53E8]) = v43 ^ (2 * ((v43 ^ 0x64) & (2 * ((v43 ^ 0x64) & (2 * ((v43 ^ 0x64) & (2 * ((v43 ^ 0x64) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44));
  LODWORD(STACK[0x54B0]) = v41 ^ 0x807FFF;
  LODWORD(STACK[0x55D0]) = v41 & 0xCE368000;
  v45 = *STACK[0x5620];
  v46 = v45 & 0x78 ^ 0xFFFFFFCA;
  LODWORD(STACK[0x5450]) = v45 ^ (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  STACK[0x5460] = v16 + 40072;
  LOBYTE(v45) = *(v16 + 40072);
  LOBYTE(v46) = v45 & 0xAE ^ 0x65;
  LOBYTE(v39) = *STACK[0x53A0];
  LOBYTE(v21) = v39 & 0x7A ^ 0x4B;
  v47 = (((v45 ^ (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x44) & (2 * (v46 ^ v45 & 0xA)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0xAE) << 16) | (((v39 ^ (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * (v21 ^ v39 & 0x1E)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x7A) << 8);
  STACK[0x4FC8] = v16 + 38826;
  LOBYTE(v44) = *(v16 + 38826);
  LOBYTE(v31) = v44 & 0x90 ^ 0x5E;
  STACK[0x50A0] = v16 + 40653;
  LOBYTE(v21) = *(v16 + 40653);
  LOBYTE(v27) = v21 & 0x3A ^ 0x2B;
  LOBYTE(v21) = v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * (v27 ^ v21 & 0x1E)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27));
  LOBYTE(v27) = *STACK[0x5070];
  LOBYTE(v38) = (v27 & 0xE4 | 2) ^ v27 & 0xC;
  v48 = (((v44 ^ (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x90) << 8) | (((v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xE8) << 16);
  LOBYTE(v27) = *STACK[0x57B0];
  LOBYTE(v38) = v27 & 0xCC ^ 0x34;
  LODWORD(STACK[0x53C8]) = ((v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xBDF496) & ~v48 | v48 & (v8 + 2688);
  STACK[0x4F20] = v16 + 40321;
  v49 = *(v16 + 40321);
  v50 = v49 & 0xFFFFFFF6 ^ 0xFFFFFF89;
  LODWORD(STACK[0x53C0]) = v49 ^ (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * v50) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50));
  STACK[0x54A0] = v16 + 35918;
  v51 = *(v16 + 35918);
  LOBYTE(v50) = v51 & 0x34 ^ 0x28;
  LOBYTE(v49) = (v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * v50) ^ v50)) ^ v50)) ^ v50)) ^ v50;
  LOBYTE(v50) = *STACK[0x5730];
  LOBYTE(v27) = v50 & 0xB6 ^ 0xE9;
  LOBYTE(v50) = v50 ^ (2 * ((v50 ^ 0x64) & (2 * ((v50 ^ 0x64) & (2 * ((v50 ^ 0x64) & (2 * ((v50 ^ 0x64) & (2 * ((v50 ^ 0x64) & (2 * (v27 ^ v50 & 0x12)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27));
  LOBYTE(v27) = *STACK[0x50E8];
  LOBYTE(v38) = v27 & 0xDE ^ 0xBD;
  v52 = (((v51 ^ (2 * v49)) ^ 0x34) << 16) | (v50 << 8);
  v53 = (v52 ^ 0x1201FF) & ((v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * (v38 ^ v27 & 0x3A)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0x12239F) | v52 & 0xEDDC00;
  STACK[0x4FE0] = v16 + 37080;
  LOBYTE(v27) = *(v16 + 37080);
  LOBYTE(v38) = v27 & 0xDE ^ 0x3D;
  v54 = *v11;
  v55 = v54 & 0xF2 ^ 0xFFFFFF8F;
  LODWORD(STACK[0x53B0]) = v54 ^ (2 * ((v54 ^ 0x64) & (2 * ((v54 ^ 0x64) & (2 * ((v54 ^ 0x64) & (2 * ((v54 ^ 0x64) & (2 * ((v54 ^ 0x64) & (2 * (v55 ^ v54 & 0x16)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55));
  LODWORD(STACK[0x53D8]) = (v53 << 8) ^ 0x21083AFF;
  LODWORD(STACK[0x5440]) = (v53 << 8) & 0xDC728400;
  LOBYTE(v55) = *STACK[0x5560];
  LOBYTE(v53) = v55 & 0x3A ^ 0xAB;
  v56 = (((v55 ^ (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * (v53 ^ v55 & 0x1E)) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53))) ^ 0x3A) << 8) | (((v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * (v38 ^ v27 & 0x3A)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xDE) << 16);
  LOBYTE(v53) = *STACK[0x5020];
  LOBYTE(v27) = v53 & 0xBA ^ 0x6B;
  v57 = ((v53 ^ (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * (v27 ^ v53 & 0x1E)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x1CA8E3) & ~v56 | v56 & 0xE35700;
  LOBYTE(v56) = *STACK[0x5398];
  LOBYTE(v27) = v56 & 0xB8 ^ 0xEA;
  LOBYTE(v54) = v56 ^ (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27));
  v57 <<= 8;
  LODWORD(STACK[0x53B8]) = v57 ^ 0xA15706FF;
  LODWORD(STACK[0x53E0]) = v57 & 0x5688F800;
  STACK[0x54F0] = v16 + 36915;
  LOBYTE(v57) = *(v16 + 36915);
  LOBYTE(v27) = v57 & 0x7A ^ 0x4B;
  LODWORD(STACK[0x5400]) = v21 ^ 0xFFFFFFC5;
  v58 = (v21 << 8) | (((v57 ^ (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * (v27 ^ v57 & 0x1E)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x7A) << 16);
  LOBYTE(v57) = *v9;
  LOBYTE(v21) = *v9 & 0x78 ^ 0x4A;
  v59 = ((v57 ^ (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xB40914) & (v58 ^ 0xFF65FF) | v58 & 0x4BF600;
  LOBYTE(v57) = *v12;
  LOBYTE(v21) = *v12 & 0xEE ^ 5;
  LOBYTE(v57) = v57 ^ (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * (v57 & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21));
  STACK[0x5290] = v16 + 37163;
  LOBYTE(v21) = *(v16 + 37163);
  LOBYTE(v27) = v21 & 0x48 ^ 0x72;
  STACK[0x5198] = v16 + 38743;
  LOBYTE(v38) = *(v16 + 38743);
  LOBYTE(v36) = v38 & 0x28 ^ 0x22;
  v60 = (((v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x48) << 16) | (((v38 ^ (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * (((2 * v36) & 0x44 | v36) ^ (2 * v36) & v38)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x28) << 8);
  v61 = (v57 ^ 0x5EA42F) & ~v60 | v60 & 0xA15B00;
  STACK[0x5600] = v16 + 37913;
  LOBYTE(v57) = *(v16 + 37913);
  LOBYTE(v60) = v57 & 0x60 ^ 0xC6;
  v62 = v57 ^ (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x44) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  LOBYTE(v57) = *STACK[0x4AD8];
  LOBYTE(v60) = v57 & 0xA6 ^ 0xE1;
  LOBYTE(v60) = v57 ^ (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x44) & (2 * (v60 ^ v57 & 2)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  STACK[0x4B48] = v16 + 38990;
  LOBYTE(v57) = *(v16 + 38990);
  LOBYTE(v27) = v57 & 0xDC ^ 0xBC;
  LOBYTE(v38) = *STACK[0x5028];
  v63 = v38 & 0xBE ^ 0xED;
  v64 = (((v57 ^ (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0xDC) << 16) | (((v38 ^ (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * (v63 ^ v38 & 0x1A)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63))) ^ 0xBE) << 8);
  LOBYTE(v45) = *STACK[0x5288];
  LOBYTE(v27) = v45 & 0xD8 ^ 0xBA;
  v65 = ((v45 ^ (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x196AEC) & ~v64 | v64 & 0xE69500;
  v66 = *STACK[0x5268];
  v67 = v66 & 0x7C ^ 0x4C;
  v68 = v66 ^ (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67));
  LOBYTE(v66) = *STACK[0x5740];
  LOBYTE(v67) = v66 & 0x72 ^ 0x4F;
  v69 = ((v66 ^ (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * (v67 ^ v66 & 0x16)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0x72) << 8;
  v70 = (v50 ^ 0x1A172) & ~(v69 | (v68 << 16)) | v69 & 0x5E00;
  STACK[0x53D0] = v16 + 39407;
  STACK[0x5410] = v16 + 37166;
  LOBYTE(v69) = *(v16 + 37166);
  LOBYTE(v67) = *STACK[0x5430];
  LOBYTE(v27) = v67 & 0xA2 ^ 0xE7;
  v71 = (v16 + 39572);
  v16 += 40735;
  STACK[0x5408] = v16;
  LOBYTE(v16) = *v16;
  LOBYTE(v36) = v16 & 0x48 ^ 0x72;
  LODWORD(STACK[0x4AA0]) = (((v70 << 8) ^ 0x665613FF) & ((v69 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v69 ^ 0x24)) & 0x58 ^ 0x2C) & (v69 ^ 0x24))) ^ 0x2C) & (v69 ^ 0x24))) ^ 0x2C) & (v69 ^ 0x24))) ^ 0x2C) & (v69 ^ 0x64)))) ^ 0x67F713AE) | (v70 << 8) & 0x8EC00) ^ 0x67F7D782;
  v72 = (((v67 ^ (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x44) & (2 * ((v67 ^ 0x44) & 6 ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0xA2) << 8) | (((v16 ^ (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x48) << 16);
  STACK[0x4EE0] = v71;
  LOBYTE(v69) = *v71;
  LOBYTE(v67) = *v71 & 0x2E ^ 0x25;
  LODWORD(v16) = LODWORD(STACK[0x53F8]) << 8;
  LODWORD(STACK[0x5270]) = v16 ^ 0x2F00A1FF;
  LODWORD(STACK[0x53E8]) = v16 & 0xD0374E00;
  LODWORD(STACK[0x52A8]) = ~v47;
  LODWORD(STACK[0x52A0]) = v47 & 0x3F2000;
  LODWORD(v16) = LODWORD(STACK[0x53C8]) << 8;
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x53C8]) = v16 & 0x40AEB700;
  LODWORD(STACK[0x5248]) = v16 ^ 0x20100FF;
  LODWORD(STACK[0x5298]) = LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x5308]) = v54;
  LODWORD(STACK[0x53B0]) = v62;
  LODWORD(STACK[0x52B0]) = (v59 << 8) ^ 0x4B0012FF;
  LODWORD(STACK[0x54C0]) = (v59 << 8) & 0xA0D58900;
  LODWORD(STACK[0x5278]) = v60;
  LODWORD(STACK[0x53C0]) = (v61 << 8) & 0x1DAB5600;
  LODWORD(STACK[0x5228]) = (v61 << 8) ^ 0xA05028FF;
  LODWORD(STACK[0x53F8]) = (v65 << 8) & 0xDF7A7700;
  LODWORD(STACK[0x5490]) = ((((v69 ^ (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x44) & (2 * (v67 ^ v69 & 0xA)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0x90D33) & ~v72 | v72 & 0xF6F200) << 8) & 0x7EFAE200;
  return (*(STACK[0x57D8] + 8 * a1))();
}

void *sub_1002E293C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0xB9A0] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 70888))(&STACK[0x84D8]);
}

uint64_t sub_1002E2998@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 ^ 0x4728) + *v1 + ((v3 - 1305158304) & 0x4DCB5B77) - 45128;
  v5 = v1[1] - 1;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = &STACK[0x10120] + a1;
  STACK[0x7ED8] = a1 + 64;
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;
  *(v10 + 2) = v7;
  *(v10 + 3) = v6;
  *v10 = v9;
  *(v10 + 1) = v8;
  *(v10 + 3) = 0;
  v11 = *(&off_101353600 + v3 - 7975);
  *(v10 + 8) = 0;
  *(v10 + 5) = 0;
  *(v10 + 6) = v11;
  v12 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v3 ^ 0x63C8)))();
  v13 = &STACK[0x10120] + STACK[0x7ED8];
  v14 = v1[9];
  v15 = v1[10];
  v16 = v1[11];
  v17 = v1[12];
  v18 = *v2 + 100;
  *(v13 - 16) = v1[13];
  v13 -= 64;
  *(v13 + 5) = v18;
  *(v13 + 3) = v15;
  *(v13 + 4) = v14 - 1;
  *(v13 + 1) = v17;
  *(v13 + 2) = v16;
  *(v13 + 3) = 0;
  *(v13 + 8) = 0;
  *(v13 + 5) = 0;
  *(v13 + 6) = v11;
  (*(v12 + 8 * (v3 + 23864)))();
  v19 = STACK[0x7ED8];
  *(&STACK[0x10120] + v19 - 64) = 0;
  STACK[0x7ED8] = v19 - 48;
  v20 = (*(v12 + 8 * (v3 ^ 0x63D0)))(0, &STACK[0x10120] + v19 - 64) == 0;
  return (*(v12 + 8 * ((188 * v20) ^ v3)))();
}

uint64_t sub_1002E2ADC()
{
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2716);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xF22BD088 | 0xDD42F75) - 1831847764 + (v2 & 0xFFFFFFF8 | (v3 - 232020463)))) & 0xFFFFFFFFFFFFFFF8));
  v5 = (v4 + __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x65F254DD188DB4FCLL;
  v8 = __ROR8__(v7, 8);
  v9 = v7 ^ __ROR8__(v6, 61);
  v10 = (v8 + v9) ^ 0x6FF046966119128DLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0xC74CC22CAF9EE074) - 0x1C599EE9A8308FC6) ^ 0x4214FCD380B96311;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ v1;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xD8C7B31FCA19D9DELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5455012E8AB1C38FLL;
  LOBYTE(v2) = (((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295);
  v20 = *(v0 + 2704);
  *(*(v0 + 4272) + ((LODWORD(STACK[0x4C24]) + 11 * v20) & 0x7F)) = (((2 * (v2 + 13 * v20)) & 0xF7) - 127) ^ 0x62;
  v21 = v20 + 1;
  LODWORD(v19) = *(v0 + 2712);
  v22 = *(STACK[0x57D8] + 8 * ((202 * (v20 != 95)) ^ v19));
  *(v0 + 2692) = v19;
  *(v0 + 2696) = v21;
  *(v0 + 2732) = v3;
  *(v0 + 2736) = 96;
  return v22();
}

uint64_t sub_1002E2CD8()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 365447397)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * ((19934 * (v0 == ((v0 + 1018120566) & 0xD918DB77 ^ 0x341E27A7))) ^ (v0 + 365430752))))(v3);
}

uint64_t sub_1002E2DA4()
{
  STACK[0xD478] = STACK[0x7D50] + 78;
  v1 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x173F)))();
}

uint64_t sub_1002E2EAC@<X0>(unint64_t a1@<X8>)
{
  STACK[0xE9E0] = a1;
  v4 = 289235981 * ((v3 - 240) ^ 0x8782D03F);
  v5 = STACK[0x51B8] - v4;
  *(v1 + 592) = v4 ^ 0x488;
  *(v1 + 612) = v5 - 22613;
  *(v1 + 600) = &STACK[0xA31C];
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2648])))(v3 - 240);
  LODWORD(STACK[0xE9EC]) = STACK[0x1D4D0];
  return (*(v6 + 8 * ((v2 ^ 0x1C4) + v2)))(v7);
}

uint64_t sub_1002E2FA4()
{
  v0 = LODWORD(STACK[0xD1C0]) + 1;
  LODWORD(STACK[0x8B2C]) = STACK[0xDCDC];
  LODWORD(STACK[0xCB74]) = v0;
  STACK[0x7C68] = 0x386D987F217E40C4;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2AD4])))();
}

uint64_t sub_1002E3018()
{
  v1 = v0 - 23887;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 3325)))();
  STACK[0x81C0] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002E3058@<X0>(uint64_t a1@<X8>)
{
  v4 = STACK[0x51B8] - 17130;
  v5 = STACK[0xE5A0];
  v6 = 1978732275 * (v2 - v3) + 311075559;
  *(v5 + 476) = v6 ^ 0x3410CA9 ^ ((v6 ^ 0xB3AFF7D6) + 1591388879) ^ ((v6 ^ 0xD3F55B80) + 1048577689) ^ ((v6 ^ 0xD0BF946) - 528571297) ^ ((v6 ^ 0x7FDBF7F7) - 1834046736) ^ *(v1 + (a1 & 0xFFFFFFFFD265232CLL)) & 0x7FFFFFFF;
  *(v5 + 516) = 0;
  return (*(STACK[0x57D8] + 8 * v4))();
}

uint64_t sub_1002E324C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x65D2)))();
  STACK[0xC390] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002E32BC()
{
  v0 = (STACK[0x51B8] + 1256753569) & 0xB5177FDF;
  v1 = STACK[0x51B8] - 20188;
  STACK[0x7ED8] -= 160;
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0x7ECC]) == -143113071) * (v0 ^ 0x147)) ^ v1)))();
}

uint64_t sub_1002E3334@<X0>(int a1@<W8>)
{
  v1 = a1 - 9776;
  v2 = STACK[0xAD20];
  v3 = *(STACK[0xAD20] - 0x1883660EE814440ALL) - 769884012 + (((LODWORD(STACK[0x9E4C]) ^ 0x5D53FF94) - 1565786004) ^ ((LODWORD(STACK[0x9E4C]) ^ 0x1C6965E5) - 476669413) ^ (((((3769 * ((a1 - 9776) ^ 0x3DF5) - 22581) | 0x402) - 1826220350) ^ LODWORD(STACK[0x9E4C])) + 1826219291));
  LODWORD(STACK[0xDF9C]) = v3;
  v4 = *(v2 - 0x1883660EE814440ELL) - 2061444849;
  v3 -= 2061444849;
  v5 = v3 < 0x26A4D8B;
  v6 = v4 < v3;
  if (v4 < 0x26A4D8B != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = (STACK[0x7B38] == 0) | v7 & 1;
  if (v8)
  {
    v9 = -143155721;
  }

  else
  {
    v9 = -143113071;
  }

  LODWORD(STACK[0xDFA0]) = v9;
  return (*(STACK[0x57D8] + 8 * (v1 | (8 * v8))))();
}

uint64_t sub_1002E3488()
{
  v1 = STACK[0x51B8];
  v2 = 1534937323 * ((v0 - 240 - 2 * ((v0 - 240) & 0x8BDE6C8FDF00DF20) - 0x7421937020FF20E0) ^ 0x46A6E44D19EE2467);
  STACK[0x1D4D8] = STACK[0xBF60] + v2;
  STACK[0x1D4C0] = v2;
  LODWORD(STACK[0x1D4E0]) = v2 + v1 - 1965800728 + 74;
  LODWORD(STACK[0x1D4D4]) = (v1 - 1965800728) ^ v2;
  LODWORD(STACK[0x1D4CC]) = v2 + 1451493860 + v1;
  LODWORD(STACK[0x1D4C8]) = v1 - 1965800728 - v2 - 1118;
  LODWORD(STACK[0x1D4D0]) = v2;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2462)))(v0 - 240);
  return (*(v3 + 8 * SLODWORD(STACK[0x1D4E4])))(v4);
}

uint64_t sub_1002E355C()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0xC488];
  STACK[0x6520] = 0x1883660EE8144416;
  STACK[0x7810] = v1;
  STACK[0x8000] = &STACK[0x6520];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2101965996;
  LODWORD(STACK[0xC0DC]) = -2013569068;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1002E35F8(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xC340];
  v4 = STACK[0x7ED8];
  STACK[0xC470] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = (v2 + 7040) + v4 - 8180;
  STACK[0x9008] = v3;
  STACK[0xB9D8] = 0;
  STACK[0xB0B0] = 0;
  LODWORD(STACK[0x67C8]) = 2101965948;
  v5 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * v2);
  return (*(v5 + 8 * (v2 + 3678)))(4294960487, a2, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_1002E36F0()
{
  STACK[0x57C0] = 0;
  v5 = STACK[0x51B8] ^ 0x15FE;
  v6 = STACK[0x51B8] - 22613;
  STACK[0x86A0] = 0x1883660EE8144416;
  STACK[0x7810] = v0;
  STACK[0x8000] = &STACK[0x86A0];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v3 ^ 0x34CEE7EE) - 473993098) ^ ((v3 ^ 0x8C3BD068) + 1531594740) ^ ((v3 ^ 0x4267DF76) - 1793701650)) - (((v1 ^ 0xF3658149) + 605296347) ^ ((v1 ^ 0xA6EC0269) + 1906152955) ^ ((v1 ^ 0xAF1B6BD8) + 2020277324)) + 2101965948;
  LODWORD(STACK[0xC0DC]) = (((v4 - v2) | (v2 - v4)) >> 31) - 2013592569 + v5 + v6 + 3623;
  return (*(STACK[0x57D8] + 8 * (v6 | 0x1140)))();
}

uint64_t sub_1002E385C@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X7>, int a5@<W8>)
{
  v22 = *(v14 + v21 + 4843 * v6 - (((((v21 + 4843 * v6) >> 3) * v18) >> 32) >> 7) * v13);
  v23 = a5 + 4843 * (((v22 ^ v19) + v20) ^ ((v22 ^ v15) + 653089290) ^ ((v22 ^ 0x1D353DFA) - 490028538));
  v24 = *(v14 + v23 - ((((v23 >> 3) * v18) >> 32) >> 7) * v13);
  if (v24)
  {
    a1 = -118;
  }

  v26 = a1 ^ 0xF1;
  v27 = a2 ^ a1;
  if (((v24 ^ 0xD6) & 2) == 0)
  {
    v27 = v26;
  }

  if (((v24 ^ 0xD6) & 4) != 0)
  {
    v27 ^= v7 ^ 0xC7;
  }

  if ((v24 & 8) != 0)
  {
    v27 ^= v8 ^ 0xC7;
  }

  if (((v24 ^ 0xD6) & 0x10) == 0)
  {
    v27 ^= v9 ^ 0xC7;
  }

  if ((v24 & 0x20) != 0)
  {
    v27 ^= v10 ^ 0xC7;
  }

  v28 = v11 ^ v27 ^ 0xC7;
  if (((v24 ^ 0xD6) & 0x40) == 0)
  {
    v28 = v27;
  }

  v29 = v24 < 0;
  v30 = a3 ^ v28;
  if (v29)
  {
    v30 = v28;
  }

  *(a4 + 4 * (v6 * v12 + 9469466 - ((((v6 * v12 + 9469466) * v17) >> 32) >> 12) * v16)) = v30 ^ 0x684FB6F1;
  return (*(STACK[0x57D8] + 8 * (((2 * (v6 != 255)) | (4 * (v6 != 255))) ^ v5)))();
}

uint64_t sub_1002E39F8()
{
  v2 = (v0 ^ 0x167D) - 143115748;
  v3 = STACK[0x9E48];
  if (LODWORD(STACK[0x9E48]) == -769884016)
  {
    v4 = -143113071;
  }

  else
  {
    v4 = -143155722;
  }

  if (v1 != v2)
  {
    v4 = v1;
  }

  LODWORD(STACK[0xDDDC]) = v4;
  v5 = v3 == -769884016 && v1 == v2;
  return (*(STACK[0x57D8] + 8 * ((22 * (((v0 ^ v5) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1002E3AB0@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W5>, uint64_t a6@<X6>, unsigned int a7@<W8>)
{
  v13 = v10 < v9;
  v14 = a7 < v8;
  v15 = (a7 | (v14 << 32)) + 0x26ACB9C990F2E53;
  v16 = (((*(a6 + 8 * v15 - 0x13565CE53494D140) ^ 0x8841A4C8B33D1179) + 0x6C01D964380DFA76) ^ ((*(a6 + 8 * v15 - 0x13565CE53494D140) ^ 0x8228E90A892DA181) + 0x666894A6021D4A8ELL) ^ ((*(a6 + 8 * v15 - 0x13565CE53494D140) ^ (((a3 - 15586) | 0x4938u) - 0x6D0E2AA55D782118)) + 0x76B1A8F629B8C36DLL)) * a4 + 0x6B05AE36670BFEC3;
  v17 = (a7 | (v14 << 32)) + 0x52793C757C2AB33CLL + (((v16 ^ v11 ^ 0x7D3C5A54A2F979A2) - 0x74CBD8DD0CC12A2CLL) ^ ((v16 ^ v11 ^ 0x7F0551E2CEAFD53BLL) - 0x76F2D36B609786B5) ^ ((v16 ^ v11 ^ 0x2390BB66C56AC99) - 0xBCE893FC26EFF17));
  v18 = (((v17 ^ 0x4D8551B52682551CLL) - 0x504E85EFDF79E9FLL) ^ v17 ^ ((v17 ^ 0x83C0C6822D4908ACLL) + 0x34BE809609C33CD1) ^ ((v17 ^ 0xF913FD23AAD1C8CELL) + 0x4E6DBB378E5BFCB3) ^ ((v17 ^ 0x7FD7D3FF7A6F5EFCLL) - 0x37566A14A11A957ELL)) >> 32;
  v19 = v17 - (((v18 ^ 0x2819F155E48063ABLL) - 0x57E36BE319228313) ^ ((v18 ^ 0x346D1E7BD0CEEFF1) - 0x4B9784CD2D6C0F49) ^ ((v18 ^ 0x1C74EF2E7CCF35B1) - 0x638E7598816DD509)) + 0x3783AB5D6F66DB2ALL;
  v20 = v19 - (v19 >> 16) + ((v19 - (v19 >> 16)) >> 8);
  v21 = a5 & (2 * v20);
  v22 = v20 ^ a1;
  v23 = v15 - 0x2E7D3EED8768E3 + ((((v20 + a2) ^ v16 ^ 0x840F5640A971A8DDLL) - 0x3982925869203F39) ^ (((v20 + a2) ^ v16 ^ 0x5C95B197A416A3B3) + 0x1EE78A709BB8CBA9) ^ (((v20 + a2) ^ v16 ^ 0xD89AE7D70D670B6ELL) - 0x651723CFCD369C8ALL));
  v24 = (((v23 ^ 0xFFBD3795249F0907) + 0x44EC422E23D96F9ALL) ^ v23 ^ ((v23 ^ 0x9DD88DD9AE692772) + 0x2689F862A92F41EDLL) ^ ((v23 ^ 0xC93E07768DB068EELL) + 0x726F72CD8AF60E71) ^ ((v23 ^ 0xEFF5377EFFFFDFFALL) + 0x54A442C5F8B9B965)) >> 32;
  v25 = v23 - (((v24 ^ 0x13871EDDBCCCE116) + 0x404B574AB0589233) ^ ((v24 ^ 0x97905C6195F401CALL) - 0x3BA3EA09669F8D11) ^ ((v24 ^ 0x841742BC6D966A98) - 0x2824F4D49EFDE643)) + 0xF1DBF524F816000;
  v26 = v25 - (v25 >> 16) + ((v25 - (v25 >> 16)) >> 8);
  v27 = v21 ^ v22 ^ a5 & (2 * v26) ^ v26;
  v28 = v15 + 0x1CAC7E6EF75A60C1 + ((((v26 + a2) ^ v16 ^ 0x70554E885E2385CFLL) + 0x25D59BF65EF03ABBLL) ^ (((v26 + a2) ^ v16 ^ 0x7C6125385E84A5FBLL) + 0x29E1F0465E571A8FLL) ^ (((v26 + a2) ^ v16 ^ 0xC346BB000A72034) + 0x59B4BECE00749F42));
  v29 = ((2 * (v28 ^ 0x101C4611B11222C8)) ^ 0x36F74CCFA05ACED2) & (v28 ^ 0x101C4611B11222C8) ^ (2 * (v28 ^ 0x101C4611B11222C8)) & v7;
  v30 = (v28 ^ 0x257C675713E2188) & (2 * (v28 & 0x8B67E076613F45A1)) ^ v28 & 0x8B67E076613F45A1;
  v31 = ((4 * (v29 ^ 0x8908A22050252129)) ^ 0x6DEE999F40B59DA4) & (v29 ^ 0x8908A22050252129) ^ (4 * (v29 ^ 0x8908A22050252129)) & v7;
  v32 = (v29 ^ 0x1233004380080600) & (4 * v30) ^ v30;
  v33 = (v31 ^ 0x96A800740250520) & (16 * v32);
  v34 = ((16 * (v31 ^ 0x9211266090086249)) ^ 0xB7BA667D02D67690) & (v31 ^ 0x9211266090086249) ^ (16 * (v31 ^ 0x9211266090086249)) & (v7 - 8);
  v35 = (v34 ^ 0x933A266500046600) & ((v33 ^ v32) << 8) ^ v33 ^ v32;
  v36 = (((v34 ^ 0x8418002D0290169) << 8) ^ 0x7BA667D02D676900) & (v34 ^ 0x8418002D0290169) ^ ((v34 ^ 0x8418002D0290169) << 8) & (v7 - 104);
  v37 = v35 ^ (v7 + 1) ^ (v36 ^ 0x1B22264000250000) & (v35 << 16);
  v38 = (v28 ^ (2 * ((v37 << 32) & 0x1B7BA66700000000 ^ v37 ^ ((v37 << 32) ^ 0x502D676900000000) & (((v36 ^ 0x80598027D0080669) << 16) & 0x1B7BA66700000000 ^ 0x1918264200000000 ^ (((v36 ^ 0x80598027D0080669) << 16) ^ 0x2667D02D00000000) & (v36 ^ 0x80598027D0080669))))) >> 32;
  v39 = v28 - (((v38 ^ 0x9C18AB9FB11C7FCALL) - 0x3A820A652711923) ^ ((v38 ^ 0xA7741ABB2F86FBEFLL) - 0x38C49182CCEB9D06) ^ ((v38 ^ 0x3B6CB1240358645ELL) + 0x5B23C5E21FCAFD49)) - 0x1448AAC31D7040F1;
  v40 = v39 - (v39 >> 16) + ((v39 - (v39 >> 16)) >> 8);
  v41 = v27 ^ a5 & (2 * v40) ^ v40;
  v42 = a7 - 1533359751 < v10;
  if (v13 != a7 - 1533359751 < 0xB21E354D)
  {
    v42 = v13;
  }

  return (*(STACK[0x57D8] + 8 * ((4 * v42) | (8 * v42) | a3)))(v41);
}

uint64_t sub_1002E43E4@<X0>(unint64_t a1@<X8>)
{
  v7 = 551690071 * ((((v6 - 240) | 0x545AAB8E) - (v6 - 240) + ((v6 - 240) & 0xABA55470)) ^ 0x1AB7F8D9);
  STACK[0x1D4D8] = v5;
  LODWORD(STACK[0x1D4D0]) = (v2 + 5433) ^ v7;
  STACK[0x1D4E8] = v3;
  LODWORD(STACK[0x1D4D4]) = ((v1 - ((2 * v1) & 0xC69117FE) + 1665698815) ^ (v2 + 1969799656)) - v7;
  STACK[0x1D4C0] = v4;
  STACK[0x1D4C8] = a1;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x6E94)))(v6 - 240);
  *v3 = *(v4 + (v1 - 16));
  v3[1] = *(v4 + (v1 - 15));
  v3[2] = *(v4 + (v1 - 14));
  v3[3] = *(v4 + (v1 - 13));
  v3[4] = *(v4 + (v1 - 12));
  v3[5] = *(v4 + (v1 - 11));
  v3[6] = *(v4 + (v1 - 10));
  v3[7] = *(v4 + (v1 - 9));
  v3[8] = *(v4 + (v1 - 8));
  v3[9] = *(v4 + (v1 - 7));
  v3[10] = *(v4 + (v1 - 6));
  v3[11] = *(v4 + (v1 - 5));
  v3[12] = *(v4 + (v1 - 4));
  v3[13] = *(v4 + (v1 - 3));
  v3[14] = *(v4 + (v1 - 2));
  v3[15] = *(v4 + (v1 - 1));
  return (*(v8 + 8 * v2))(v9);
}

uint64_t sub_1002E46C0()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] + 2922;
  v3 = STACK[0xB2A8];
  *(v3 + 112) = STACK[0x879C];
  v4 = STACK[0xD0A8];
  *v4 = *(v3 + 72);
  *(v4 + 8) = *(v3 + 80);
  *(v4 + 16) = *(v3 + 104);
  *(v4 + 24) = *(v3 + 112);
  *(v4 + 32) = v3 + 120;
  *(v4 + 40) = v3 + 128;
  *(v4 + 48) = &STACK[0xAFD8];
  *(v4 + 56) = &STACK[0x7940];
  *(v4 + 64) = v3 + 56;
  *(v4 + 72) = v3 + 64;
  STACK[0x1D4C8] = v4;
  LODWORD(STACK[0x1D4C0]) = v1 - 1089234077 * ((v0 - 240) ^ 0xE05DDC78) - 2786;
  v5 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 + 9273)))(v0 - 240);
  return (*(v5 + 8 * ((15 * (STACK[0xAFD8] == 0)) ^ v2)))();
}

uint64_t sub_1002E47E0(uint64_t a1, int a2, char a3, uint64_t a4, char a5, int a6, int a7, char a8)
{
  LODWORD(STACK[0x5388]) = v9;
  v18 = 362 * (v9 ^ 0x528B);
  LODWORD(STACK[0x51C8]) = v18;
  v19 = (v18 - 1104167467) & 0x41D03BFD;
  LODWORD(STACK[0x4DD8]) = v19;
  v20 = a2 & (v19 ^ 0xFFFFEE2C) ^ 0xE3770E1E;
  LODWORD(STACK[0x5350]) = v20;
  v21 = STACK[0x51A0];
  v22 = *(v8 + v20) ^ 0xDF ^ *(STACK[0x51A0] + (*(v8 + v20) ^ 0xD0));
  v23 = a2 & 0xFFFFFFF3 ^ 0xE3770E1E;
  LODWORD(STACK[0x5348]) = v23;
  v24 = STACK[0x51A8];
  v25 = (v22 << 8) | ((*(v8 + v23) ^ 0x72 ^ *(STACK[0x51A8] + (*(v8 + v23) ^ 0x62))) << 24);
  v26 = a2 & 0xFFFFFFF2 ^ 0xE3770E1F;
  LODWORD(STACK[0x5338]) = v26;
  v27 = STACK[0xD698];
  STACK[0x52D0] = STACK[0xD698];
  v28 = STACK[0x5198];
  v29 = v25 | ((*(v27 + v26) ^ 0xB ^ *(STACK[0x5198] + (*(v27 + v26) ^ 0x4ELL))) << 16);
  v30 = a2 & 0xFFFFFFF7 ^ 0xE3770E1A;
  LODWORD(STACK[0x5310]) = v30;
  v31 = *(v27 + v30) ^ *(v24 + (*(v27 + v30) ^ 0xBDLL));
  v32 = a2 & 0xFFFFFFF4 ^ 0xE3770E1B;
  LODWORD(STACK[0x5320]) = v32;
  v33 = *(v27 + v32) ^ 0x6A ^ *(v21 + (*(v27 + v32) ^ 0xC2)) | ((v31 ^ 0x88888888) << 24);
  v34 = a2 & 0xFFFFFFFD ^ 0xE3770E1A;
  LODWORD(STACK[0x52C0]) = v34;
  v35 = *(v8 + v34);
  v36 = *(v24 + (v35 ^ 0x59));
  LODWORD(STACK[0x5300]) = a2 ^ 0xE3770E1A;
  v37 = *(v27 + (a2 ^ 0xE3770E1A));
  LODWORD(v35) = ((v35 ^ v36 ^ 0xFF) << 8) | ((v37 ^ *(v24 + (v37 ^ 0xD5)) ^ 0xFFFFFFC1) << 24);
  v38 = a2 & 0xFFFFFFF6 ^ 0xE3770E1B;
  LODWORD(STACK[0x52D8]) = v38;
  v39 = v33 | ((*(v27 + v38) ^ 0x72 ^ *(v24 + (*(v27 + v38) ^ 0x62))) << 16);
  v40 = a2 & 0xFFFFFFF5 ^ 0xE3770E1A;
  LODWORD(STACK[0x5318]) = v40;
  v41 = STACK[0x5190];
  v42 = v39 | ((*(v27 + v40) ^ 0x1A ^ *(STACK[0x5190] + (*(v27 + v40) ^ 0xB8))) << 8);
  v43 = a2 & 0xFFFFFFFC ^ 0xE3770E1B;
  LODWORD(STACK[0x5340]) = v43;
  v44 = *(v27 + v43) ^ 0x41 ^ *(v28 + (*(v27 + v43) ^ 0x38)) | v35;
  LODWORD(v35) = a2 & 0xFFFFFFFE ^ 0xE3770E1B;
  LODWORD(STACK[0x52C8]) = v35;
  v45 = v44 | ((*(v27 + v35) ^ 0xCF ^ *(v24 + (*(v27 + v35) ^ 0x2ALL))) << 16);
  LODWORD(v35) = a2 & 0xFFFFFFF8 ^ 0xE3770E1F;
  LODWORD(STACK[0x5308]) = v35;
  LODWORD(v35) = *(v27 + v35) ^ 0x8B ^ *(v41 + (*(v27 + v35) ^ 0xALL));
  v46 = a2 & 0xFFFFFFF9 ^ 0xE3770E1E;
  LODWORD(STACK[0x52E0]) = v46;
  LODWORD(v35) = v35 | ((*(v27 + v46) ^ 0x69 ^ *(v21 + (*(v27 + v46) ^ 0xDFLL))) << 8);
  v47 = a2 & 0xFFFFFFFB ^ 0xE3770E1E;
  LODWORD(STACK[0x52E8]) = v47;
  LODWORD(v35) = v35 | ((*(v27 + v47) ^ 0xF2 ^ *(v28 + (*(v27 + v47) ^ 0x8CLL))) << 24);
  LODWORD(STACK[0x5328]) = a2;
  v48 = a2 & 0xFFFFFFFA ^ 0xE3770E1F;
  LODWORD(STACK[0x52F0]) = v48;
  LODWORD(v35) = v35 | ((*(v27 + v48) ^ 0x2F ^ *(v41 + (*(v27 + v48) ^ 0x73))) << 16);
  v49 = a2 & 0xFFFFFFF0 ^ 0xE3770E1F;
  LODWORD(STACK[0x52F8]) = v49;
  v50 = *(v27 + v49) ^ *(v21 + (*(v27 + v49) ^ 0xE3)) ^ 0x7F | v29;
  LOBYTE(v21) = STACK[0x57A0];
  LODWORD(v37) = LODWORD(STACK[0x53B8]) ^ LODWORD(STACK[0x50D8]) ^ (((((v45 ^ ((v45 & v17) >> 1) ^ 0xF6BE457B) & STACK[0x5550] | LODWORD(STACK[0x4E10])) ^ 0xF6BE457B) << a5) | ((LODWORD(STACK[0x4E18]) ^ (v45 ^ ((v45 & v17) >> 1) ^ 0xB77F44B4) & STACK[0x5790] ^ 0x20) >> v21));
  v51 = LODWORD(STACK[0x50D0]) ^ a7 ^ (((v35 ^ (((v35 ^ 0x58) & v11) >> 1) ^ 0x58) & v12) >> a8) ^ ((((v35 ^ (((v35 ^ 0x58) & v11) >> 1) ^ 0x414D1BEC) & v10 | LODWORD(STACK[0x4E24])) ^ 0x414D1BB4) << a3);
  v52 = LODWORD(STACK[0x50C0]) ^ v13 ^ (((((v50 ^ (((v50 ^ 0xAC) & v11) >> 1) ^ 0xB75F2F5A) & STACK[0x5550] | LODWORD(STACK[0x4E08])) ^ 0xB75F2FF7) << a3) + ((LODWORD(STACK[0x4FA0]) ^ 0x28 ^ (v50 ^ (((v50 ^ 0xAC) & v11) >> 1) ^ 0x3BEB415) & STACK[0x5790]) >> v21));
  v53 = v14 ^ LODWORD(STACK[0x50C8]) ^ (((v42 ^ ((v42 & v17) >> 1)) & v12) >> a8) ^ ((((v42 ^ ((v42 & v17) >> 1) ^ 0x9068FDEA) & v10 | LODWORD(STACK[0x4E20])) ^ 0x9068FDEA) << a5);
  LODWORD(STACK[0x5370]) = a6;
  v54 = STACK[0x5510];
  LODWORD(STACK[0x53B8]) = v37;
  v55 = 918796911 * ((a6 ^ 0xC69B7159) - v54 + v37) - ((918796911 * ((a6 ^ 0xC69B7159) - v54 + v37)) >> 16);
  v56 = STACK[0x5760];
  v57 = STACK[0x55C0];
  v58 = (LODWORD(STACK[0x5760]) ^ 0xE564C295) - LODWORD(STACK[0x55C0]);
  v59 = 918796911 * (v37 + v58) - ((918796911 * (v37 + v58)) >> 16);
  v60 = v51;
  v61 = 932560261 * (v51 ^ (v59 - (v59 >> 8))) - ((932560261 * (v51 ^ (v59 - (v59 >> 8)))) >> 16);
  v62 = 1909235489 * ((v61 + (v61 >> 8)) ^ v52) + ((1909235489 * ((v61 + (v61 >> 8)) ^ v52)) >> 16);
  v63 = -1166749743 * ((v62 + (v62 >> 8)) ^ v53) + ((-1166749743 * ((v62 + (v62 >> 8)) ^ v53)) >> 16);
  v64 = STACK[0xD6A0];
  v65 = (v63 ^ (v63 >> 8)) + STACK[0xD6A0];
  LODWORD(STACK[0x5330]) = LODWORD(STACK[0x5368]) < 0x2D188B0B;
  v66 = STACK[0x5470];
  v67 = STACK[0x5470] & 0x10000;
  if ((v65 & v67) != 0)
  {
    v67 = -v67;
  }

  if ((v55 & 0x10) != 0)
  {
    v68 = -16;
  }

  else
  {
    v68 = 16;
  }

  v69 = v68 + v55;
  v70 = v69 ^ 0x10;
  v71 = v60;
  LODWORD(STACK[0x53B0]) = v60;
  v72 = 932560261 * (((v69 ^ 0x10) - (v69 >> 8)) ^ v60);
  v73 = HIWORD(v72) + v72 - 2 * HIWORD(v72);
  v74 = v65 ^ v66 & 0xFFFEFFFF ^ (v67 + v65);
  v75 = v55 ^ LODWORD(STACK[0x55A0]) ^ v70;
  v76 = LODWORD(STACK[0x5730]) ^ v58;
  v77 = v58 & 8;
  if ((v76 & v58 & 8) != 0)
  {
    v77 = -v77;
  }

  v78 = (v77 + v76) ^ v58 & 0xFFFFFFF7;
  if ((v65 & 0x40000) != 0)
  {
    v79 = -262144;
  }

  else
  {
    v79 = 0x40000;
  }

  v80 = LODWORD(STACK[0x5680]) ^ v65 ^ (v79 + v65);
  v81 = 932560261 * (v71 ^ (v55 - (v55 >> 8))) - ((932560261 * (v71 ^ (v55 - (v55 >> 8)))) >> 16);
  LODWORD(STACK[0x52B8]) = v52;
  v82 = 1909235489 * ((v81 + (v81 >> 8)) ^ v52) + ((1909235489 * ((v81 + (v81 >> 8)) ^ v52)) >> 16);
  LODWORD(STACK[0x52A8]) = v53;
  v83 = -1166749743 * ((v82 + (v82 >> 8)) ^ v53) + ((-1166749743 * ((v82 + (v82 >> 8)) ^ v53)) >> 16);
  v84 = v83 ^ (v83 >> 8);
  LODWORD(STACK[0x52B0]) = v84;
  LODWORD(STACK[0x53A8]) += v84 ^ v64;
  v85 = 1909235489 * ((v73 + (v73 >> 8)) ^ v52) + ((1909235489 * ((v73 + (v73 >> 8)) ^ v52)) >> 16);
  v86 = -1166749743 * ((v85 + (v85 >> 8)) ^ v53) + ((-1166749743 * ((v85 + (v85 >> 8)) ^ v53)) >> 16);
  v87 = (v86 ^ (v86 >> 8)) + v64;
  *(v16 - 152) = v64;
  LODWORD(STACK[0x57C0]) = v87;
  v88 = (v87 & 1) == 0;
  v89 = STACK[0x5780];
  if (v88)
  {
    v90 = v56;
  }

  else
  {
    v90 = STACK[0x5780];
  }

  LODWORD(STACK[0x5730]) = v90;
  v91 = STACK[0x5770];
  if (!v88)
  {
    v89 = STACK[0x5770];
  }

  LODWORD(STACK[0x5780]) = v89;
  v92 = STACK[0x5398];
  if (v88)
  {
    v93 = v91;
  }

  else
  {
    v93 = STACK[0x5398];
  }

  if (!v88)
  {
    v92 = v56;
  }

  LODWORD(STACK[0x5250]) = v92;
  v94 = STACK[0x5390];
  if (v88)
  {
    v95 = STACK[0x5390];
  }

  else
  {
    v95 = v78;
  }

  LODWORD(STACK[0x5680]) = v95;
  v96 = STACK[0x5750];
  if (!v88)
  {
    v78 = STACK[0x5750];
  }

  LODWORD(STACK[0x5228]) = v78;
  if (v88)
  {
    v97 = STACK[0x5740];
  }

  else
  {
    v97 = v94;
  }

  if (!v88)
  {
    v96 = STACK[0x5740];
  }

  LODWORD(STACK[0x5248]) = v96;
  v98 = STACK[0x5700];
  v99 = STACK[0x56F0];
  if (v88)
  {
    v100 = STACK[0x5700];
  }

  else
  {
    v100 = STACK[0x56F0];
  }

  LODWORD(STACK[0x55A0]) = v100;
  v101 = STACK[0x5720];
  if (!v88)
  {
    v99 = STACK[0x5720];
  }

  LODWORD(STACK[0x56F0]) = v99;
  v102 = STACK[0x5710];
  if (v88)
  {
    v98 = STACK[0x5710];
  }

  LODWORD(STACK[0x5200]) = v98;
  if (!v88)
  {
    v101 = v102;
  }

  LODWORD(STACK[0x5700]) = v101;
  v103 = v80 ^ 0x40000;
  v104 = STACK[0x56E0];
  v105 = STACK[0x56D0];
  if (v88)
  {
    v106 = STACK[0x56E0];
  }

  else
  {
    v106 = STACK[0x56D0];
  }

  LODWORD(STACK[0x5220]) = v106;
  if (v88)
  {
    v104 = v103;
  }

  LODWORD(STACK[0x5288]) = v104;
  if (v88)
  {
    v107 = STACK[0x56C0];
  }

  else
  {
    v107 = v103;
  }

  if (v88)
  {
    v108 = v105;
  }

  else
  {
    v108 = STACK[0x56C0];
  }

  LODWORD(STACK[0x56D0]) = v108;
  v109 = STACK[0x5650];
  v110 = STACK[0x5640];
  if (v88)
  {
    v111 = STACK[0x5650];
  }

  else
  {
    v111 = STACK[0x5640];
  }

  LODWORD(STACK[0x5218]) = v111;
  v112 = STACK[0x5660];
  if (v88)
  {
    v109 = STACK[0x5660];
  }

  LODWORD(STACK[0x5280]) = v109;
  v113 = STACK[0x5670];
  if (v88)
  {
    v114 = STACK[0x5670];
  }

  else
  {
    v114 = v112;
  }

  if (v88)
  {
    v113 = v110;
  }

  LODWORD(STACK[0x5640]) = v113;
  v115 = STACK[0x5630];
  v116 = STACK[0x5600];
  if (v88)
  {
    v117 = STACK[0x5600];
  }

  else
  {
    v117 = STACK[0x5630];
  }

  LODWORD(STACK[0x5298]) = v117;
  v118 = STACK[0x5620];
  if (!v88)
  {
    v115 = STACK[0x5620];
  }

  LODWORD(STACK[0x51F8]) = v115;
  v119 = STACK[0x5610];
  if (v88)
  {
    v120 = STACK[0x5610];
  }

  else
  {
    v120 = v116;
  }

  if (v88)
  {
    v119 = v118;
  }

  LODWORD(STACK[0x5600]) = v119;
  v121 = STACK[0x55D0];
  if (v88)
  {
    v122 = STACK[0x55D0];
  }

  else
  {
    v122 = v57;
  }

  LODWORD(STACK[0x5210]) = v122;
  v123 = STACK[0x55E0];
  if (v88)
  {
    v121 = STACK[0x55E0];
  }

  LODWORD(STACK[0x5278]) = v121;
  v124 = STACK[0x55F0];
  if (v88)
  {
    v125 = v57;
  }

  else
  {
    v125 = STACK[0x55F0];
  }

  LODWORD(STACK[0x5240]) = v125;
  if (v88)
  {
    v126 = v124;
  }

  else
  {
    v126 = v123;
  }

  v127 = STACK[0x5540];
  v128 = STACK[0x5530];
  if (v88)
  {
    v129 = STACK[0x5540];
  }

  else
  {
    v129 = STACK[0x5530];
  }

  LODWORD(STACK[0x5208]) = v129;
  if (v88)
  {
    v127 = v54;
  }

  LODWORD(STACK[0x5268]) = v127;
  v130 = STACK[0x5520];
  if (v88)
  {
    v131 = STACK[0x5520];
  }

  else
  {
    v131 = v54;
  }

  if (v88)
  {
    v130 = v128;
  }

  LODWORD(STACK[0x5530]) = v130;
  v132 = STACK[0x5590];
  v133 = STACK[0x5580];
  if (v88)
  {
    v134 = STACK[0x5590];
  }

  else
  {
    v134 = STACK[0x5580];
  }

  LODWORD(STACK[0x5470]) = v134;
  if (!v88)
  {
    v133 = v75;
  }

  LODWORD(STACK[0x5270]) = v133;
  v135 = STACK[0x55B0];
  if (v88)
  {
    v132 = STACK[0x55B0];
  }

  LODWORD(STACK[0x5238]) = v132;
  if (v88)
  {
    v135 = v75;
  }

  LODWORD(STACK[0x5590]) = v135;
  v136 = STACK[0x54E0];
  v137 = STACK[0x54D0];
  if (v88)
  {
    v138 = STACK[0x54E0];
  }

  else
  {
    v138 = STACK[0x54D0];
  }

  v139 = STACK[0x5500];
  if (!v88)
  {
    v137 = STACK[0x5500];
  }

  LODWORD(STACK[0x5260]) = v137;
  if (v88)
  {
    v140 = v139;
  }

  else
  {
    v140 = STACK[0x54F0];
  }

  if (v88)
  {
    v141 = STACK[0x54F0];
  }

  else
  {
    v141 = v136;
  }

  v142 = STACK[0x54A0];
  if (v88)
  {
    v143 = v74;
  }

  else
  {
    v143 = STACK[0x54A0];
  }

  LODWORD(STACK[0x5390]) = v143;
  if (v88)
  {
    v144 = STACK[0x5570];
  }

  else
  {
    v144 = v74;
  }

  v145 = STACK[0x5480];
  if (v88)
  {
    v146 = STACK[0x5480];
  }

  else
  {
    v146 = STACK[0x5570];
  }

  LODWORD(STACK[0x5380]) = v146;
  if (v88)
  {
    v147 = v142;
  }

  else
  {
    v147 = v145;
  }

  v148 = STACK[0x54B0];
  if (v88)
  {
    v149 = STACK[0x54C0];
  }

  else
  {
    v149 = STACK[0x54B0];
  }

  v150 = STACK[0x5460];
  if (v88)
  {
    v151 = STACK[0x5460];
  }

  else
  {
    v151 = STACK[0x54C0];
  }

  LODWORD(STACK[0x5398]) = v151;
  if (v88)
  {
    v152 = STACK[0x5490];
  }

  else
  {
    v152 = v150;
  }

  if (v88)
  {
    v153 = v148;
  }

  else
  {
    v153 = STACK[0x5490];
  }

  LODWORD(STACK[0x54B0]) = v153;
  if (v88)
  {
    v154 = STACK[0x5450];
  }

  else
  {
    v154 = STACK[0x5430];
  }

  if (v88)
  {
    v155 = STACK[0x5430];
  }

  else
  {
    v155 = STACK[0x5410];
  }

  v156 = STACK[0x5400];
  if (v88)
  {
    v157 = STACK[0x5410];
  }

  else
  {
    v157 = STACK[0x5400];
  }

  if (!v88)
  {
    v156 = STACK[0x5450];
  }

  v158 = STACK[0x53F8];
  if (v88)
  {
    v159 = STACK[0x5408];
  }

  else
  {
    v159 = STACK[0x53F8];
  }

  v160 = STACK[0x5420];
  if (v88)
  {
    v161 = STACK[0x5420];
  }

  else
  {
    v161 = STACK[0x5408];
  }

  LODWORD(STACK[0x5258]) = v161;
  v162 = STACK[0x5440];
  if (v88)
  {
    v163 = v158;
  }

  else
  {
    v163 = STACK[0x5440];
  }

  LODWORD(STACK[0x5230]) = v163;
  if (v88)
  {
    v164 = v162;
  }

  else
  {
    v164 = v160;
  }

  v165 = STACK[0x53E8];
  v166 = STACK[0x53C0];
  if (v88)
  {
    v167 = STACK[0x53C0];
  }

  else
  {
    v167 = STACK[0x53E8];
  }

  LODWORD(STACK[0x52A0]) = v167;
  v168 = STACK[0x53C8];
  if (v88)
  {
    v169 = STACK[0x53C8];
  }

  else
  {
    v169 = v166;
  }

  v170 = STACK[0x53E0];
  if (v88)
  {
    v168 = STACK[0x53E0];
  }

  LODWORD(STACK[0x53C0]) = v168;
  if (v88)
  {
    v170 = v165;
  }

  v171 = STACK[0x53F0];
  v172 = STACK[0x53D8];
  if (v88)
  {
    v173 = STACK[0x53D8];
  }

  else
  {
    v173 = STACK[0x53F0];
  }

  LODWORD(STACK[0x5290]) = v173;
  v174 = v15;
  if (v88)
  {
    v172 = v15;
  }

  v175 = STACK[0x53D0];
  if (!v88)
  {
    v171 = STACK[0x53D0];
    v175 = v174;
  }

  v176 = (STACK[0x57C0] & 2) == 0;
  v177 = STACK[0x5730];
  if ((STACK[0x57C0] & 2) != 0)
  {
    v178 = v93;
  }

  else
  {
    v178 = STACK[0x5730];
  }

  LODWORD(STACK[0x5760]) = v178;
  if (v176)
  {
    v179 = v93;
  }

  else
  {
    v179 = v177;
  }

  LODWORD(STACK[0x5770]) = v179;
  v180 = STACK[0x5780];
  if (v176)
  {
    v181 = STACK[0x5250];
  }

  else
  {
    v181 = STACK[0x5780];
  }

  if (!v176)
  {
    v180 = STACK[0x5250];
  }

  LODWORD(STACK[0x5780]) = v180;
  v182 = STACK[0x5228];
  if (v176)
  {
    v183 = v97;
  }

  else
  {
    v183 = STACK[0x5228];
  }

  LODWORD(STACK[0x5740]) = v183;
  if (v176)
  {
    v184 = v182;
  }

  else
  {
    v184 = v97;
  }

  LODWORD(STACK[0x5730]) = v184;
  v185 = STACK[0x5680];
  v186 = STACK[0x5248];
  if (v176)
  {
    v187 = STACK[0x5248];
  }

  else
  {
    v187 = STACK[0x5680];
  }

  LODWORD(STACK[0x5750]) = v187;
  if (!v176)
  {
    v185 = v186;
  }

  v188 = STACK[0x56F0];
  v189 = STACK[0x5200];
  if (v176)
  {
    v190 = STACK[0x5200];
  }

  else
  {
    v190 = STACK[0x56F0];
  }

  LODWORD(STACK[0x5710]) = v190;
  if (v176)
  {
    v191 = v188;
  }

  else
  {
    v191 = v189;
  }

  LODWORD(STACK[0x56F0]) = v191;
  v192 = STACK[0x55A0];
  v193 = STACK[0x5700];
  if (v176)
  {
    v194 = STACK[0x5700];
  }

  else
  {
    v194 = STACK[0x55A0];
  }

  LODWORD(STACK[0x5720]) = v194;
  v195 = *(v16 - 152);
  if (v176)
  {
    v196 = v192;
  }

  else
  {
    v196 = v193;
  }

  LODWORD(STACK[0x5700]) = v196;
  v197 = STACK[0x5220];
  if (v176)
  {
    v198 = v107;
  }

  else
  {
    v198 = STACK[0x5220];
  }

  LODWORD(STACK[0x56C0]) = v198;
  if (v176)
  {
    v199 = v197;
  }

  else
  {
    v199 = v107;
  }

  LODWORD(STACK[0x56E0]) = v199;
  v200 = STACK[0x5288];
  v201 = STACK[0x56D0];
  if (v176)
  {
    v202 = STACK[0x5288];
  }

  else
  {
    v202 = STACK[0x56D0];
  }

  LODWORD(STACK[0x5680]) = v202;
  if (v176)
  {
    v203 = v201;
  }

  else
  {
    v203 = v200;
  }

  LODWORD(STACK[0x56D0]) = v203;
  v204 = STACK[0x5218];
  if (v176)
  {
    v205 = STACK[0x5218];
  }

  else
  {
    v205 = v114;
  }

  LODWORD(STACK[0x5650]) = v205;
  if (v176)
  {
    v206 = v114;
  }

  else
  {
    v206 = v204;
  }

  LODWORD(STACK[0x5670]) = v206;
  v207 = STACK[0x5280];
  v208 = STACK[0x5640];
  if (v176)
  {
    v209 = STACK[0x5280];
  }

  else
  {
    v209 = STACK[0x5640];
  }

  LODWORD(STACK[0x5660]) = v209;
  if (v176)
  {
    v210 = v208;
  }

  else
  {
    v210 = v207;
  }

  LODWORD(STACK[0x5640]) = v210;
  v211 = STACK[0x51F8];
  if (v176)
  {
    v212 = STACK[0x51F8];
  }

  else
  {
    v212 = v120;
  }

  LODWORD(STACK[0x5630]) = v212;
  if (v176)
  {
    v213 = v120;
  }

  else
  {
    v213 = v211;
  }

  LODWORD(STACK[0x5610]) = v213;
  v214 = STACK[0x5298];
  v215 = STACK[0x5600];
  if (v176)
  {
    v216 = STACK[0x5600];
  }

  else
  {
    v216 = STACK[0x5298];
  }

  LODWORD(STACK[0x5620]) = v216;
  if (v176)
  {
    v217 = v214;
  }

  else
  {
    v217 = v215;
  }

  LODWORD(STACK[0x5600]) = v217;
  v218 = STACK[0x5210];
  if (v176)
  {
    v219 = v126;
  }

  else
  {
    v219 = STACK[0x5210];
  }

  LODWORD(STACK[0x55F0]) = v219;
  if (v176)
  {
    v220 = v218;
  }

  else
  {
    v220 = v126;
  }

  LODWORD(STACK[0x55D0]) = v220;
  v221 = STACK[0x5278];
  v222 = STACK[0x5240];
  if (v176)
  {
    v223 = STACK[0x5240];
  }

  else
  {
    v223 = STACK[0x5278];
  }

  LODWORD(STACK[0x55C0]) = v223;
  if (v176)
  {
    v224 = v221;
  }

  else
  {
    v224 = v222;
  }

  LODWORD(STACK[0x55E0]) = v224;
  v225 = STACK[0x5208];
  if (v176)
  {
    v226 = STACK[0x5208];
  }

  else
  {
    v226 = v131;
  }

  LODWORD(STACK[0x5540]) = v226;
  if (v176)
  {
    v227 = v131;
  }

  else
  {
    v227 = v225;
  }

  LODWORD(STACK[0x5520]) = v227;
  v228 = STACK[0x5268];
  v229 = STACK[0x5530];
  if (v176)
  {
    v230 = STACK[0x5268];
  }

  else
  {
    v230 = STACK[0x5530];
  }

  LODWORD(STACK[0x5510]) = v230;
  if (v176)
  {
    v231 = v229;
  }

  else
  {
    v231 = v228;
  }

  LODWORD(STACK[0x5530]) = v231;
  if (v176)
  {
    v232 = v140;
  }

  else
  {
    v232 = v138;
  }

  LODWORD(STACK[0x5500]) = v232;
  if (v176)
  {
    v233 = v138;
  }

  else
  {
    v233 = v140;
  }

  LODWORD(STACK[0x54E0]) = v233;
  v234 = STACK[0x5270];
  v235 = STACK[0x5238];
  if (v176)
  {
    v236 = STACK[0x5270];
  }

  else
  {
    v236 = STACK[0x5238];
  }

  LODWORD(STACK[0x5580]) = v236;
  if (v176)
  {
    v234 = v235;
  }

  LODWORD(STACK[0x55B0]) = v234;
  v237 = STACK[0x5470];
  v238 = STACK[0x5590];
  if (v176)
  {
    v239 = STACK[0x5590];
  }

  else
  {
    v239 = STACK[0x5470];
  }

  LODWORD(STACK[0x55A0]) = v239;
  if (v176)
  {
    v240 = v237;
  }

  else
  {
    v240 = v238;
  }

  LODWORD(STACK[0x5590]) = v240;
  v241 = STACK[0x5260];
  if (v176)
  {
    v242 = STACK[0x5260];
  }

  else
  {
    v242 = v141;
  }

  LODWORD(STACK[0x54D0]) = v242;
  if (v176)
  {
    v243 = v141;
  }

  else
  {
    v243 = v241;
  }

  LODWORD(STACK[0x54F0]) = v243;
  if (v176)
  {
    v244 = v147;
  }

  else
  {
    v244 = v144;
  }

  LODWORD(STACK[0x54A0]) = v244;
  if (v176)
  {
    v245 = v144;
  }

  else
  {
    v245 = v147;
  }

  LODWORD(STACK[0x5570]) = v245;
  if (v176)
  {
    v246 = v149;
  }

  else
  {
    v246 = v152;
  }

  LODWORD(STACK[0x54C0]) = v246;
  if (v176)
  {
    v247 = v152;
  }

  else
  {
    v247 = v149;
  }

  LODWORD(STACK[0x5490]) = v247;
  v248 = STACK[0x5390];
  v249 = STACK[0x5380];
  if (v176)
  {
    v250 = STACK[0x5380];
  }

  else
  {
    v250 = STACK[0x5390];
  }

  LODWORD(STACK[0x5480]) = v250;
  if (v176)
  {
    v251 = v248;
  }

  else
  {
    v251 = v249;
  }

  LODWORD(STACK[0x5470]) = v251;
  if (v176)
  {
    v252 = v154;
  }

  else
  {
    v252 = v157;
  }

  LODWORD(STACK[0x5450]) = v252;
  if (v176)
  {
    v253 = v157;
  }

  else
  {
    v253 = v154;
  }

  LODWORD(STACK[0x5410]) = v253;
  if (v176)
  {
    v254 = v155;
  }

  else
  {
    v254 = v156;
  }

  LODWORD(STACK[0x5430]) = v254;
  if (v176)
  {
    v255 = v156;
  }

  else
  {
    v255 = v155;
  }

  LODWORD(STACK[0x5400]) = v255;
  if (v176)
  {
    v256 = v159;
  }

  else
  {
    v256 = v164;
  }

  LODWORD(STACK[0x5408]) = v256;
  if (v176)
  {
    v257 = v164;
  }

  else
  {
    v257 = v159;
  }

  LODWORD(STACK[0x5440]) = v257;
  v258 = STACK[0x5398];
  v259 = STACK[0x54B0];
  if (v176)
  {
    v260 = STACK[0x5398];
  }

  else
  {
    v260 = STACK[0x54B0];
  }

  LODWORD(STACK[0x5460]) = v260;
  if (v176)
  {
    v261 = v259;
  }

  else
  {
    v261 = v258;
  }

  LODWORD(STACK[0x54B0]) = v261;
  v262 = STACK[0x5258];
  v263 = STACK[0x5230];
  if (v176)
  {
    v264 = STACK[0x5230];
  }

  else
  {
    v264 = STACK[0x5258];
  }

  LODWORD(STACK[0x53F8]) = v264;
  if (v176)
  {
    v265 = v262;
  }

  else
  {
    v265 = v263;
  }

  LODWORD(STACK[0x5420]) = v265;
  if (v176)
  {
    v266 = v169;
  }

  else
  {
    v266 = v170;
  }

  LODWORD(STACK[0x53C8]) = v266;
  if (v176)
  {
    v267 = v170;
  }

  else
  {
    v267 = v169;
  }

  LODWORD(STACK[0x53E8]) = v267;
  if (v176)
  {
    v268 = v172;
  }

  else
  {
    v268 = v171;
  }

  LODWORD(STACK[0x5380]) = v268;
  if (v176)
  {
    v269 = v171;
  }

  else
  {
    v269 = v172;
  }

  LODWORD(STACK[0x53F0]) = v269;
  v270 = STACK[0x52A0];
  v271 = STACK[0x53C0];
  if (v176)
  {
    v272 = STACK[0x53C0];
  }

  else
  {
    v272 = STACK[0x52A0];
  }

  LODWORD(STACK[0x53E0]) = v272;
  if (v176)
  {
    v273 = v270;
  }

  else
  {
    v273 = v271;
  }

  LODWORD(STACK[0x53C0]) = v273;
  v274 = STACK[0x5290];
  if (v176)
  {
    v275 = STACK[0x5290];
  }

  else
  {
    v275 = v175;
  }

  LODWORD(STACK[0x53D8]) = v275;
  if (v176)
  {
    v276 = v175;
  }

  else
  {
    v276 = v274;
  }

  LODWORD(STACK[0x53D0]) = v276;
  v277 = STACK[0x52B0];
  v278 = LODWORD(STACK[0x53A8]) + 2 * (LODWORD(STACK[0x52B0]) & v195);
  if (STACK[0x53A8])
  {
    v279 = STACK[0x53B0];
  }

  else
  {
    v279 = STACK[0x53B8];
  }

  v280 = STACK[0x52B8];
  if (STACK[0x53A8])
  {
    v281 = STACK[0x53B8];
  }

  else
  {
    v281 = STACK[0x52B8];
  }

  if (STACK[0x53A8])
  {
    v282 = STACK[0x52A8];
  }

  else
  {
    v280 = STACK[0x52A8];
    v282 = STACK[0x53B0];
  }

  if ((v278 & 2) != 0)
  {
    v283 = v279;
  }

  else
  {
    v283 = v280;
  }

  if ((v278 & 2) != 0)
  {
    v279 = v280;
    v284 = v281;
  }

  else
  {
    v284 = v282;
  }

  v285 = STACK[0x50E8];
  v286 = LODWORD(STACK[0x50E8]) ^ LODWORD(STACK[0x5108]);
  v287 = STACK[0x5128];
  v288 = v286 ^ LODWORD(STACK[0x4F80]) ^ LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x5128]) ^ (v284 - 446381419 - ((2 * v284) & 0xCAC9852A));
  v289 = (v283 ^ LODWORD(STACK[0x50B8])) - 446381419 - ((2 * (v283 ^ LODWORD(STACK[0x50B8]))) & 0xCAC9852A);
  LODWORD(STACK[0x5398]) = v181;
  v290 = v286 ^ v287 ^ v181 ^ v289;
  v291 = v285 ^ LODWORD(STACK[0x50A8]) ^ LODWORD(STACK[0x5780]) ^ ((v279 ^ LODWORD(STACK[0x50B0])) - 446381419 - ((2 * (v279 ^ LODWORD(STACK[0x50B0]))) & 0xCAC9852A));
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v290);
  v292 = *(v195 + 4 * HIBYTE(v290));
  v293 = v288 ^ LODWORD(STACK[0x5770]);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v293);
  v294 = *(v195 + 4 * BYTE2(v293));
  STACK[0xD6A0] = v195;
  v295 = *(v195 + 4 * v291);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v291);
  v296 = *(v195 + 4 * BYTE2(v291));
  STACK[0xD6A0] = v195;
  v297 = *(v195 + 4 * HIBYTE(v291));
  STACK[0xD6A0] = v195 + 4 * v293;
  HIDWORD(v298) = *(v195 + 4 * v293);
  LODWORD(v298) = HIDWORD(v298);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v290);
  v299 = *(v195 + 4 * BYTE1(v290));
  v300 = (v195 + 4 * BYTE1(v291));
  STACK[0xD6A0] = v300;
  v301 = (v298 >> 16) ^ __ROR4__(v292, 24) ^ __ROR4__(*v300, 8);
  if ((v278 & 2) != 0)
  {
    v281 = v282;
  }

  v302 = v286 ^ LODWORD(STACK[0x4F98]) ^ LODWORD(STACK[0x4F90]);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v293);
  v303 = *(v195 + 4 * BYTE1(v293));
  v304 = v302 ^ LODWORD(STACK[0x5760]) ^ ((v281 ^ v287) - 446381419 - ((2 * (v281 ^ v287)) & 0xCAC9852A));
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v304);
  v305 = *(v195 + 4 * HIBYTE(v304));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v290);
  v306 = *(v195 + 4 * BYTE2(v290));
  v307 = v296 ^ __ROR4__(v303, 8) ^ __ROR4__(v305, 24);
  STACK[0xD6A0] = v195 + 4 * v304;
  v308 = *(v195 + 4 * v304);
  v309 = HIBYTE(v293);
  STACK[0xD6A0] = v195 + 4 * v309;
  v310 = *(v195 + 4 * v309);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v304);
  v311 = *(v195 + 4 * BYTE2(v304));
  v312 = BYTE1(v304);
  STACK[0xD6A0] = v195 + 4 * v312;
  v313 = *(v195 + 4 * v312);
  STACK[0xD6A0] = v195 + 4 * v290;
  v314 = v307 ^ __ROR4__(*(v195 + 4 * v290), 16);
  v315 = STACK[0x5100];
  v316 = LODWORD(STACK[0x5100]) ^ LODWORD(STACK[0x5120]);
  v317 = v316 ^ LODWORD(STACK[0x4F70]) ^ LODWORD(STACK[0x4F78]) ^ v294 ^ __ROR4__(v297, 24) ^ __ROR4__(v299, 8) ^ __ROR4__(v308, 16);
  v318 = v316 ^ LODWORD(STACK[0x4F68]) ^ __ROR4__(v295, 16) ^ v306 ^ __ROR4__(v310, 24);
  v319 = __ROR4__(v313, 8);
  v320 = v195 + LODWORD(STACK[0x5378]) + v277;
  LODWORD(STACK[0x5378]) = v320;
  v321 = v278 - v320;
  v322 = LODWORD(STACK[0x57C0]) + LODWORD(STACK[0x5560]);
  v323 = v314 + v278 - v322;
  v324 = v322;
  LODWORD(STACK[0x5560]) = v322;
  v325 = v316 ^ LODWORD(STACK[0x50A0]);
  LODWORD(STACK[0x5390]) = v185;
  v326 = v325 ^ v185 ^ v323;
  v327 = v316 ^ LODWORD(STACK[0x5098]) ^ LODWORD(STACK[0x5740]) ^ ((((v301 ^ v311 ^ 0xD983FF8F) + 1663468280) ^ ((v301 ^ v311 ^ 0x108F6B3C) - 1440082363) ^ ((v301 ^ v311 ^ 0xC90C94B3) + 1940515276)) + v278 - v320 - 1146999064);
  v328 = v317 ^ LODWORD(STACK[0x5730]);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v328);
  v329 = *(v195 + 4 * BYTE1(v328));
  v330 = v318 ^ v319 ^ LODWORD(STACK[0x5750]);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v330);
  v331 = *(v195 + 4 * BYTE1(v330));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v327);
  v332 = *(v195 + 4 * BYTE2(v327));
  STACK[0xD6A0] = v195;
  v333 = *(v195 + 4 * BYTE1(v326));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v330);
  v334 = *(v195 + 4 * BYTE2(v330));
  STACK[0xD6A0] = v195;
  v335 = *(v195 + 4 * v327);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v328);
  v336 = *(v195 + 4 * BYTE2(v328));
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v328);
  v337 = STACK[0x5118];
  v338 = *(v195 + 4 * HIBYTE(v328));
  v339 = LODWORD(STACK[0x4F48]) ^ LODWORD(STACK[0x4FC0]) ^ LODWORD(STACK[0x5118]) ^ LODWORD(STACK[0x4F60]) ^ __ROR4__(v329, 8);
  STACK[0xD6A0] = v195 + 4 * v326;
  v340 = *(v195 + 4 * v326);
  STACK[0xD6A0] = v195 + 4 * v330;
  v341 = v339 ^ LODWORD(STACK[0x5700]) ^ __ROR4__(*(v195 + 4 * v330), 16);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v327);
  v342 = *(v195 + 4 * BYTE1(v327));
  v330 >>= 24;
  STACK[0xD6A0] = v195 + 4 * v330;
  v327 >>= 24;
  v343 = *(v195 + 4 * v330);
  STACK[0xD6A0] = v195 + 4 * v327;
  v344 = v341 ^ __ROR4__(*(v195 + 4 * v327), 24);
  v345 = v337 ^ LODWORD(STACK[0x4FB8]);
  v346 = v345 ^ LODWORD(STACK[0x4F50]) ^ LODWORD(STACK[0x4F58]) ^ LODWORD(STACK[0x5710]) ^ v332 ^ __ROR4__(v333, 8) ^ __ROR4__(v343, 24);
  v347 = BYTE2(v326);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v326);
  v326 >>= 24;
  v348 = *(v195 + 4 * v347);
  STACK[0xD6A0] = v195 + 4 * v326;
  v349 = *(v195 + 4 * v326);
  STACK[0xD6A0] = v195 + 4 * v328;
  v350 = v346 ^ __ROR4__(*(v195 + 4 * v328), 16);
  v351 = v345 ^ LODWORD(STACK[0x5090]) ^ __ROR4__(v331, 8) ^ LODWORD(STACK[0x56F0]) ^ __ROR4__(v335, 16) ^ v336 ^ __ROR4__(v349, 24);
  v352 = v345 ^ LODWORD(STACK[0x5088]) ^ LODWORD(STACK[0x5720]) ^ v334 ^ __ROR4__(v338, 24) ^ __ROR4__(v340, 16) ^ __ROR4__(v342, 8);
  v353 = v344 ^ v348;
  STACK[0xD6A0] = v195 + 4 * BYTE1(v351);
  v354 = *(v195 + 4 * BYTE1(v351));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v353);
  v355 = *(v195 + 4 * BYTE2(v353));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v350);
  v356 = *(v195 + 4 * BYTE2(v350));
  STACK[0xD6A0] = v195;
  v357 = *(v195 + 4 * v351);
  STACK[0xD6A0] = v195 + 4 * v350;
  v358 = *(v195 + 4 * v350);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v351);
  v359 = *(v195 + 4 * HIBYTE(v351));
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v352);
  v360 = *(v195 + 4 * HIBYTE(v352));
  v361 = STACK[0x50F8];
  v362 = v315 ^ LODWORD(STACK[0x50F8]) ^ LODWORD(STACK[0x5080]) ^ LODWORD(STACK[0x56D0]) ^ __ROR4__(v358, 16);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v350);
  v363 = *(v195 + 4 * BYTE1(v350));
  STACK[0xD6A0] = v195 + 4 * BYTE1(v352);
  v364 = v362 ^ __ROR4__(*(v195 + 4 * BYTE1(v352)), 8);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v353);
  v365 = v364 ^ __ROR4__(*(v195 + 4 * HIBYTE(v353)), 24);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v352);
  v366 = *(v195 + 4 * BYTE2(v352));
  STACK[0xD6A0] = v195 + 4 * BYTE1(v353);
  v367 = *(v195 + 4 * BYTE1(v353));
  v368 = BYTE2(v351);
  STACK[0xD6A0] = v195 + 4 * v368;
  v369 = *(v195 + 4 * v368);
  v370 = v315 ^ v361 ^ LODWORD(STACK[0x4F40]);
  v371 = v370 ^ LODWORD(STACK[0x4F38]) ^ LODWORD(STACK[0x56E0]) ^ __ROR4__(v354, 8);
  STACK[0xD6A0] = v195 + 4 * v353;
  v372 = *(v195 + 4 * v353);
  STACK[0xD6A0] = v195 + 4 * v352;
  v373 = v371 ^ v355 ^ __ROR4__(*(v195 + 4 * v352), 16);
  v350 >>= 24;
  STACK[0xD6A0] = v195 + 4 * v350;
  v374 = v373 ^ __ROR4__(*(v195 + 4 * v350), 24);
  v375 = v370 ^ LODWORD(STACK[0x4F30]) ^ LODWORD(STACK[0x56C0]) ^ __ROR4__(v359, 24) ^ __ROR4__(v363, 8) ^ v366 ^ __ROR4__(v372, 16);
  v376 = v365 ^ v369;
  v377 = v361 ^ LODWORD(STACK[0x5078]) ^ v315 ^ LODWORD(STACK[0x5168]) ^ LODWORD(STACK[0x5160]) ^ LODWORD(STACK[0x5170]);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v374);
  v378 = *(v195 + 4 * HIBYTE(v374));
  STACK[0xD6A0] = v195 + 4 * BYTE1(v376);
  v379 = *(v195 + 4 * BYTE1(v376));
  v380 = v377 ^ LODWORD(STACK[0x5680]) ^ v356;
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v376);
  v381 = *(v195 + 4 * HIBYTE(v376));
  v382 = v380 ^ __ROR4__(v357, 16);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v375);
  v383 = *(v195 + 4 * HIBYTE(v375));
  v384 = v382 ^ __ROR4__(v360, 24);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v374);
  v385 = *(v195 + 4 * BYTE2(v374));
  v386 = v384 ^ __ROR4__(v367, 8);
  STACK[0xD6A0] = v195 + 4 * v386;
  v387 = *(v195 + 4 * v386);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v374);
  v388 = *(v195 + 4 * BYTE1(v374));
  STACK[0xD6A0] = v195 + 4 * BYTE1(v375);
  v389 = *(v195 + 4 * BYTE1(v375));
  STACK[0xD6A0] = v195 + 4 * v376;
  v390 = *(v195 + 4 * v376);
  STACK[0xD6A0] = v195 + 4 * v375;
  v391 = *(v195 + 4 * v375);
  v392 = BYTE2(v376);
  STACK[0xD6A0] = v195 + 4 * v392;
  v393 = *(v195 + 4 * v392);
  v394 = v315 ^ v361 ^ LODWORD(STACK[0x5070]) ^ LODWORD(STACK[0x5670]) ^ __ROR4__(v379, 8);
  v395 = BYTE2(v375);
  STACK[0xD6A0] = v195 + 4 * v395;
  v396 = *(v195 + 4 * v395);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v386);
  v397 = v394 ^ v385;
  v398 = *(v195 + 4 * BYTE1(v386));
  v399 = v397 ^ __ROR4__(v391, 16);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v386);
  v400 = *(v195 + 4 * BYTE2(v386));
  STACK[0xD6A0] = v195 + 4 * v374;
  v386 >>= 24;
  v401 = *(v195 + 4 * v374);
  STACK[0xD6A0] = v195 + 4 * v386;
  v402 = v399 ^ __ROR4__(*(v195 + 4 * v386), 24);
  v403 = v315 ^ v361 ^ LODWORD(STACK[0x4F00]) ^ LODWORD(STACK[0x4F08]) ^ LODWORD(STACK[0x5650]) ^ __ROR4__(v381, 24);
  v404 = v315 ^ v361 ^ LODWORD(STACK[0x4F20]) ^ LODWORD(STACK[0x4F28]) ^ LODWORD(STACK[0x5640]) ^ __ROR4__(v383, 24) ^ __ROR4__(v388, 8) ^ __ROR4__(v390, 16) ^ v400;
  v405 = v315 ^ v361 ^ LODWORD(STACK[0x4F18]) ^ LODWORD(STACK[0x4F10]) ^ LODWORD(STACK[0x5660]) ^ __ROR4__(v378, 24) ^ __ROR4__(v387, 16) ^ __ROR4__(v389, 8) ^ v393;
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v404);
  v406 = *(v195 + 4 * HIBYTE(v404));
  STACK[0xD6A0] = v195 + 4 * BYTE1(v402);
  v407 = *(v195 + 4 * BYTE1(v402));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v405);
  v408 = *(v195 + 4 * BYTE2(v405));
  STACK[0xD6A0] = v195;
  v409 = *(v195 + 4 * BYTE2(v402));
  v410 = v403 ^ v396;
  STACK[0xD6A0] = v195 + 4 * BYTE1(v405);
  v411 = *(v195 + 4 * BYTE1(v405));
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v405);
  v412 = *(v195 + 4 * HIBYTE(v405));
  v413 = v410 ^ __ROR4__(v398, 8) ^ __ROR4__(v401, 16);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v404);
  v414 = *(v195 + 4 * BYTE2(v404));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v413);
  v415 = *(v195 + 4 * BYTE2(v413));
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v413);
  v416 = *(v195 + 4 * HIBYTE(v413));
  STACK[0xD6A0] = v195 + 4 * v413;
  v417 = *(v195 + 4 * v413);
  v418 = BYTE1(v413);
  STACK[0xD6A0] = v195 + 4 * v418;
  v419 = *(v195 + 4 * v418);
  v420 = v402;
  STACK[0xD6A0] = v195 + 4 * v402;
  v402 >>= 24;
  v421 = *(v195 + 4 * v420);
  STACK[0xD6A0] = v195 + 4 * v402;
  v422 = *(v195 + 4 * v402);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v404);
  v423 = *(v195 + 4 * BYTE1(v404));
  STACK[0xD6A0] = v195 + 4 * v405;
  v424 = v414 ^ __ROR4__(v407, 8) ^ __ROR4__(v416, 24) ^ __ROR4__(*(v195 + 4 * v405), 16);
  v425 = v404;
  STACK[0xD6A0] = v195 + 4 * v404;
  v426 = LODWORD(STACK[0x50E0]) ^ LODWORD(STACK[0x50F0]);
  v427 = v426 ^ LODWORD(STACK[0x4EF0]) ^ LODWORD(STACK[0x4EF8]) ^ LODWORD(STACK[0x5620]) ^ __ROR4__(v412, 24) ^ v415 ^ __ROR4__(v421, 16) ^ __ROR4__(v423, 8);
  v428 = v426 ^ LODWORD(STACK[0x5060]) ^ LODWORD(STACK[0x5600]) ^ __ROR4__(v406, 24) ^ v409 ^ __ROR4__(v411, 8) ^ __ROR4__(v417, 16);
  v429 = v426 ^ LODWORD(STACK[0x4EE0]) ^ LODWORD(STACK[0x4EE8]) ^ LODWORD(STACK[0x5610]) ^ (v424 + LODWORD(STACK[0x5068]));
  v430 = *(v195 + 4 * v425);
  v431 = v426 ^ LODWORD(STACK[0x5058]) ^ LODWORD(STACK[0x5630]) ^ v408 ^ __ROR4__(v419, 8) ^ __ROR4__(v422, 24);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v429);
  v432 = *(v195 + 4 * HIBYTE(v429));
  v434 = __ROR4__(v430, 16);
  v433 = v431 ^ v434;
  v435 = ((v431 ^ v434) >> 8);
  STACK[0xD6A0] = v195 + 4 * v435;
  v436 = *(v195 + 4 * v435);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v427);
  v437 = *(v195 + 4 * BYTE2(v427));
  STACK[0xD6A0] = v195;
  v438 = *(v195 + 4 * BYTE1(v428));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v433);
  v439 = *(v195 + 4 * BYTE2(v433));
  STACK[0xD6A0] = v195;
  v440 = *(v195 + 4 * BYTE1(v429));
  STACK[0xD6A0] = v195 + 4 * v428;
  v441 = *(v195 + 4 * v428);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v433);
  HIDWORD(v442) = v436;
  LODWORD(v442) = v436;
  v443 = (v442 >> 8) ^ __ROR4__(v432, 24);
  v444 = __ROR4__(*(v195 + 4 * HIBYTE(v433)), 13) ^ 0x4BEDE904;
  STACK[0xD6A0] = v195 + 4 * v433;
  HIDWORD(v442) = *(v195 + 4 * v433);
  LODWORD(v442) = HIDWORD(v442);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v427);
  v445 = (v442 >> 16) ^ __ROR4__(v438, 8);
  v446 = *(v195 + 4 * HIBYTE(v427));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v428);
  v447 = v445 ^ __ROR4__(v446, 24);
  v448 = v443 ^ *(v195 + 4 * BYTE2(v428));
  v428 >>= 24;
  STACK[0xD6A0] = v195 + 4 * v428;
  v449 = *(v195 + 4 * v428);
  STACK[0xD6A0] = v195 + 4 * v427;
  v450 = *(v195 + 4 * v427);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v429);
  v451 = v448 ^ __ROR4__(v450, 16);
  v452 = v447 ^ *(v195 + 4 * BYTE2(v429));
  v453 = BYTE1(v427);
  STACK[0xD6A0] = v195 + 4 * v453;
  v454 = *(v195 + 4 * v453);
  STACK[0xD6A0] = v195 + 4 * v429;
  v455 = v439 ^ __ROR4__(v449, 24) ^ __ROR4__(v454, 8) ^ __ROR4__(*(v195 + 4 * v429), 16);
  LODWORD(STACK[0x53B0]) = v455;
  v456 = v437 ^ __ROR4__(v440, 8) ^ __ROR4__(v441, 16) ^ __ROR4__(v444, 11) ^ 0x20897DBD;
  LODWORD(STACK[0x53A8]) = v278;
  v457 = v452 - v324 + v278;
  LODWORD(STACK[0x53B8]) = v457;
  v458 = STACK[0x4DF0];
  v459 = LODWORD(STACK[0x4DF0]) ^ LODWORD(STACK[0x5048]) ^ LODWORD(STACK[0x55E0]) ^ v457;
  STACK[0xD6A0] = v195 + 4 * (LOBYTE(STACK[0x4DF0]) ^ LOBYTE(STACK[0x5048]) ^ LOBYTE(STACK[0x55E0]) ^ v457);
  v460 = *(v195 + 4 * v459);
  v461 = (v458 ^ LODWORD(STACK[0x55C0]) ^ v455) + LODWORD(STACK[0x5028]) - 2 * ((v458 ^ LODWORD(STACK[0x55C0]) ^ v455) & STACK[0x5028]);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v461);
  v462 = v458 ^ LODWORD(STACK[0x5050]) ^ LODWORD(STACK[0x55D0]) ^ v451;
  v463 = v451;
  v464 = *(v195 + 4 * HIBYTE(v461));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v462);
  v465 = *(v195 + 4 * BYTE2(v462));
  STACK[0xD6A0] = v195;
  v466 = *(v195 + 4 * BYTE2(v461));
  LODWORD(STACK[0x52B8]) = v321 + v456;
  STACK[0xD6A0] = v195 + 4 * BYTE1(v462);
  v467 = *(v195 + 4 * BYTE1(v462));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v459);
  v468 = *(v195 + 4 * BYTE2(v459));
  STACK[0xD6A0] = v195 + 4 * BYTE1(v461);
  v469 = v321 + v456 + 1984408673;
  v470 = v458 ^ LODWORD(STACK[0x4ED0]);
  v471 = v470 ^ LODWORD(STACK[0x4ED8]) ^ LODWORD(STACK[0x55F0]) ^ v469;
  v472 = *(v195 + 4 * BYTE1(v461));
  STACK[0xD6A0] = v195 + 4 * (v470 ^ LOBYTE(STACK[0x4ED8]) ^ LOBYTE(STACK[0x55F0]) ^ v469);
  v473 = *(v195 + 4 * v471);
  STACK[0xD6A0] = v195 + 4 * v462;
  v474 = *(v195 + 4 * v462);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v471);
  v475 = *(v195 + 4 * BYTE1(v471));
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v459);
  v462 >>= 24;
  v476 = *(v195 + 4 * HIBYTE(v459));
  STACK[0xD6A0] = v195 + 4 * v462;
  v477 = *(v195 + 4 * v462);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v471);
  v478 = *(v195 + 4 * BYTE2(v471));
  STACK[0xD6A0] = v195 + 4 * v461;
  v479 = *(v195 + 4 * v461);
  v480 = BYTE1(v459);
  STACK[0xD6A0] = v195 + 4 * v480;
  v471 >>= 24;
  v481 = *(v195 + 4 * v480);
  STACK[0xD6A0] = v195 + 4 * v471;
  v482 = STACK[0x5158];
  v483 = STACK[0x4FA8];
  v484 = LODWORD(STACK[0x5158]) ^ LODWORD(STACK[0x4FA8]);
  v485 = v484 ^ LODWORD(STACK[0x5040]) ^ LODWORD(STACK[0x5580]) ^ __ROR4__(v464, 24) ^ __ROR4__(v474, 16) ^ v478 ^ __ROR4__(v481, 8);
  v486 = v484 ^ LODWORD(STACK[0x4EC0]) ^ LODWORD(STACK[0x55A0]) ^ __ROR4__(v467, 8);
  v487 = v484 ^ LODWORD(STACK[0x5010]) ^ LODWORD(STACK[0x5590]) ^ __ROR4__(v460, 16) ^ v466 ^ __ROR4__(v475, 8) ^ __ROR4__(v477, 24);
  v488 = v484 ^ LODWORD(STACK[0x4EB8]) ^ LODWORD(STACK[0x4EB0]) ^ LODWORD(STACK[0x55B0]) ^ v465 ^ __ROR4__(v472, 8) ^ __ROR4__(v473, 16) ^ __ROR4__(v476, 24);
  v489 = *(v195 + 4 * v471);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v487);
  v490 = *(v195 + 4 * BYTE2(v487));
  STACK[0xD6A0] = v195;
  v491 = *(v195 + 4 * v488);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v485);
  v492 = *(v195 + 4 * BYTE1(v485));
  STACK[0xD6A0] = v195 + 4 * BYTE1(v487);
  v493 = *(v195 + 4 * BYTE1(v487));
  v494 = v486 ^ v468 ^ __ROR4__(v479, 16) ^ __ROR4__(v489, 24);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v494);
  v495 = *(v195 + 4 * HIBYTE(v494));
  STACK[0xD6A0] = v195 + 4 * v494;
  v496 = *(v195 + 4 * v494);
  STACK[0xD6A0] = v195 + 4 * v485;
  v497 = *(v195 + 4 * v485);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v488);
  v498 = *(v195 + 4 * HIBYTE(v488));
  STACK[0xD6A0] = v195 + 4 * v487;
  v499 = *(v195 + 4 * v487);
  STACK[0xD6A0] = v195 + 4 * BYTE2(v488);
  v500 = *(v195 + 4 * BYTE2(v488));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v485);
  v501 = *(v195 + 4 * BYTE2(v485));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v494);
  v502 = *(v195 + 4 * BYTE2(v494));
  STACK[0xD6A0] = v195 + 4 * BYTE1(v488);
  v485 >>= 24;
  v503 = *(v195 + 4 * BYTE1(v488));
  STACK[0xD6A0] = v195 + 4 * v485;
  v504 = HIBYTE(v487);
  v505 = *(v195 + 4 * v485);
  STACK[0xD6A0] = v195 + 4 * v504;
  v506 = *(v195 + 4 * v504);
  v507 = BYTE1(v494);
  STACK[0xD6A0] = v195 + 4 * v507;
  v508 = v482 ^ LODWORD(STACK[0x4FC8]);
  v509 = v508 ^ LODWORD(STACK[0x4EA0]) ^ LODWORD(STACK[0x4EA8]) ^ LODWORD(STACK[0x5480]) ^ __ROR4__(v499, 16) ^ v502 ^ __ROR4__(v503, 8);
  v510 = v508 ^ LODWORD(STACK[0x5038]) ^ LODWORD(STACK[0x54A0]) ^ __ROR4__(v491, 16) ^ v501 ^ __ROR4__(v506, 24) ^ __ROR4__(*(v195 + 4 * v507), 8);
  v511 = v482 ^ LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x4FD0]) ^ LODWORD(STACK[0x4E98]) ^ LODWORD(STACK[0x5470]) ^ v490 ^ __ROR4__(v492, 8) ^ __ROR4__(v496, 16) ^ __ROR4__(v498, 24);
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v510);
  v512 = v508 ^ LODWORD(STACK[0x5030]) ^ LODWORD(STACK[0x5570]) ^ __ROR4__(v493, 8) ^ __ROR4__(v495, 24) ^ __ROR4__(v497, 16) ^ v500;
  v513 = *(v195 + 4 * HIBYTE(v510));
  STACK[0xD6A0] = v195 + 4 * BYTE2(v512);
  v514 = *(v195 + 4 * BYTE2(v512));
  STACK[0xD6A0] = v195;
  v515 = *(v195 + 4 * BYTE2(v511));
  LODWORD(v442) = __ROR4__(v505, 24);
  LOBYTE(v505) = v509 ^ v442;
  v516 = (v509 ^ v442) >> 24;
  STACK[0xD6A0] = v195 + 4 * v516;
  v517 = *(v195 + 4 * v516);
  STACK[0xD6A0] = v195 + 4 * ((v509 ^ v442) >> 16);
  v518 = *(v195 + 4 * ((v509 ^ v442) >> 16));
  STACK[0xD6A0] = v195 + 4 * ((v509 ^ v442) >> 8);
  v519 = *(v195 + 4 * ((v509 ^ v442) >> 8));
  STACK[0xD6A0] = v195 + 4 * HIBYTE(v511);
  v520 = *(v195 + 4 * HIBYTE(v511));
  STACK[0xD6A0] = v195 + 4 * v512;
  v521 = *(v195 + 4 * v512);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v510);
  v522 = *(v195 + 4 * BYTE1(v510));
  STACK[0xD6A0] = v195 + 4 * v505;
  v523 = *(v195 + 4 * v505);
  STACK[0xD6A0] = v195 + 4 * v510;
  v524 = *(v195 + 4 * v510);
  STACK[0xD6A0] = v195 + 4 * v511;
  v525 = *(v195 + 4 * v511);
  v526 = BYTE1(v512);
  STACK[0xD6A0] = v195 + 4 * BYTE1(v512);
  v512 >>= 24;
  v527 = *(v195 + 4 * v526);
  STACK[0xD6A0] = v195 + 4 * v512;
  v528 = *(v195 + 4 * v512);
  v529 = BYTE2(v510);
  STACK[0xD6A0] = v195 + 4 * v529;
  v530 = *(v195 + 4 * v529);
  v531 = BYTE1(v511);
  STACK[0xD6A0] = v195 + 4 * v531;
  v532 = *(v195 + 4 * v531);
  STACK[0xD6A0] = v195;
  v533 = LODWORD(STACK[0x5110]) ^ v483;
  v534 = v533 ^ LODWORD(STACK[0x4E90]) ^ LODWORD(STACK[0x5358]) ^ LODWORD(STACK[0x5430]) ^ __ROR4__(v519, 8) ^ __ROR4__(v520, 24) ^ __ROR4__(v521, 16) ^ v530;
  v535 = v533 ^ LODWORD(STACK[0x4FF0]) ^ LODWORD(STACK[0x5410]) ^ __ROR4__(__ROR4__(v513 ^ 0xCB1AC86A, 27) ^ 0x63590D59, 29) ^ v518 ^ __ROR4__(v525, 16) ^ __ROR4__(v527, 8);
  v536 = v533 ^ LODWORD(STACK[0x4E88]) ^ LODWORD(STACK[0x5450]) ^ v515 ^ __ROR4__(v522, 8) ^ __ROR4__(v523, 16) ^ __ROR4__(v528, 24);
  v537 = v533 ^ LODWORD(STACK[0x4FE8]) ^ LODWORD(STACK[0x5400]) ^ v514 ^ __ROR4__(v517, 24) ^ __ROR4__(v524, 16) ^ __ROR4__(v532, 8);
  v538 = STACK[0xD678];
  v539 = *(STACK[0xD678] + 4 * BYTE1(v537)) ^ __ROR4__(*(STACK[0xD678] + 4 * BYTE2(v535)), 24);
  STACK[0xD678] += 4 * v534;
  v540 = v539 ^ __ROR4__(*(v538 + 4 * v536), 8);
  LODWORD(STACK[0x52B0]) = *(v538 + 4 * v534);
  STACK[0xD678] = v538 + 4 * BYTE1(v536);
  LODWORD(STACK[0x52A8]) = *(v538 + 4 * BYTE1(v536));
  STACK[0xD678] = v538 + 4 * BYTE1(v534);
  v541 = *(v538 + 4 * BYTE1(v534));
  STACK[0xD678] = v538 + 4 * BYTE2(v536);
  v542 = *(v538 + 4 * BYTE2(v536));
  STACK[0xD678] = v538 + 4 * BYTE2(v534);
  v543 = *(v538 + 4 * BYTE2(v534));
  STACK[0xD678] = v538 + 4 * v537;
  v534 >>= 24;
  v544 = *(v538 + 4 * BYTE1(v535));
  v545 = *(v538 + 4 * v537);
  STACK[0xD678] = v538 + 4 * v534;
  v546 = v544 ^ 0x158F2F12 ^ __ROR4__(v543, 24);
  LODWORD(v442) = __ROR4__(v545, 8);
  LODWORD(STACK[0x52A0]) = *(v538 + 4 * v534);
  v536 >>= 24;
  STACK[0xD678] = v538 + 4 * v536;
  LODWORD(STACK[0x5288]) = v540 ^ 0x158F2F12;
  LODWORD(STACK[0x5280]) = (v540 ^ 0x158F2F12) & 0x796C745E ^ v540 & 4;
  v547 = *(v538 + 4 * v535);
  v548 = *(v538 + 4 * HIBYTE(v537));
  LODWORD(STACK[0x5298]) = *(v538 + 4 * BYTE2(v537));
  LODWORD(STACK[0x5290]) = *(v538 + 4 * HIBYTE(v535));
  LODWORD(STACK[0x5278]) = LODWORD(STACK[0x53C8]) - ((2 * LODWORD(STACK[0x53C8])) & 0x6AA27D02) + 894516865;
  v549 = *(v538 + 4 * v536);
  STACK[0xD678] = v538;
  v550 = (v546 ^ v442) + 53943785 - ((2 * (v546 ^ v442)) & 0x66E3CB8);
  v551 = LODWORD(STACK[0x51B0]) ^ LODWORD(STACK[0x5180]);
  v552 = v551 ^ LODWORD(STACK[0x5178]);
  v553 = v552 ^ LODWORD(STACK[0x53C0]) ^ __ROR4__(v547, 8) ^ __ROR4__(v548, 16) ^ v541 ^ __ROR4__(v542, 24);
  v554 = STACK[0x4E80];
  v555 = LODWORD(STACK[0x4E78]) ^ LODWORD(STACK[0x4E80]) ^ ((LODWORD(STACK[0x53B8]) ^ LODWORD(STACK[0x5150]) ^ LODWORD(STACK[0x5530])) + v482 - 2 * ((LODWORD(STACK[0x53B8]) ^ LODWORD(STACK[0x5150]) ^ LODWORD(STACK[0x5530])) & v482));
  v556 = v458 ^ LODWORD(STACK[0x5018]) ^ LODWORD(STACK[0x5540]) ^ v469;
  v557 = STACK[0xD6A0];
  STACK[0xD6A0] += 4 * BYTE2(v556);
  v558 = v470 ^ v554 ^ LODWORD(STACK[0x5510]);
  v559 = *(v557 + 4 * BYTE2(v556));
  STACK[0xD6A0] = v557;
  v560 = *(v557 + 4 * BYTE1(v555));
  v561 = v558 ^ LODWORD(STACK[0x53B0]);
  STACK[0xD6A0] = v557 + 4 * BYTE1(v561);
  v562 = *(v557 + 4 * BYTE1(v561));
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v556);
  v563 = *(v557 + 4 * HIBYTE(v556));
  STACK[0xD6A0] = v557 + 4 * v556;
  v564 = *(v557 + 4 * v556);
  v565 = v458 ^ LODWORD(STACK[0x5020]) ^ LODWORD(STACK[0x5520]) ^ v463;
  STACK[0xD6A0] = v557 + 4 * (v458 ^ LOBYTE(STACK[0x5020]) ^ LOBYTE(STACK[0x5520]) ^ v463);
  v566 = *(v557 + 4 * v565);
  STACK[0xD6A0] = v557 + 4 * BYTE2(v565);
  LODWORD(v538) = *(v557 + 4 * BYTE2(v565));
  v567 = v553 ^ 0x88F5A61F;
  STACK[0xD6A0] = v557 + 4 * BYTE1(v565);
  v568 = *(v557 + 4 * BYTE1(v565));
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v555);
  v569 = *(v557 + 4 * HIBYTE(v555));
  v570 = BYTE1(v556);
  STACK[0xD6A0] = v557 + 4 * v570;
  v571 = *(v557 + 4 * v570);
  STACK[0xD6A0] = v557 + 4 * BYTE2(v561);
  v572 = *(v557 + 4 * BYTE2(v561));
  STACK[0xD6A0] = v557 + 4 * v561;
  v573 = *(v557 + 4 * v561);
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v565);
  v561 >>= 24;
  v574 = *(v557 + 4 * HIBYTE(v565));
  STACK[0xD6A0] = v557 + 4 * v561;
  v575 = *(v557 + 4 * v561);
  STACK[0xD6A0] = v557 + 4 * BYTE2(v555);
  v576 = *(v557 + 4 * BYTE2(v555));
  STACK[0xD6A0] = v557 + 4 * v555;
  v577 = v484 ^ LODWORD(STACK[0x5500]) ^ __ROR4__(v563, 24);
  LODWORD(v538) = v484 ^ LODWORD(STACK[0x5008]) ^ LODWORD(STACK[0x54F0]) ^ __ROR4__(v562, 8) ^ __ROR4__(v564, 16) ^ v538;
  v578 = LODWORD(STACK[0x4EC8]) ^ LODWORD(STACK[0x4FB0]) ^ LODWORD(STACK[0x4E70]) ^ v482 ^ LODWORD(STACK[0x54D0]) ^ v559 ^ __ROR4__(v560, 8) ^ __ROR4__(v566, 16) ^ __ROR4__(v575, 24);
  v579 = *(v557 + 4 * v555);
  v580 = v484 ^ LODWORD(STACK[0x4E60]) ^ LODWORD(STACK[0x4E68]) ^ LODWORD(STACK[0x54E0]) ^ __ROR4__(v571, 8) ^ v572 ^ __ROR4__(v574, 24);
  STACK[0xD6A0] = v557 + 4 * v578;
  v581 = *(v557 + 4 * v578);
  LODWORD(v442) = __ROR4__(v579, 16);
  v582 = v580 ^ v442;
  v583 = (v580 ^ v442);
  STACK[0xD6A0] = v557 + 4 * v583;
  v584 = *(v557 + 4 * v583);
  v585 = v538 ^ __ROR4__(v569, 24);
  STACK[0xD6A0] = v557 + 4 * BYTE2(v585);
  v586 = *(v557 + 4 * BYTE2(v585));
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v582);
  LODWORD(v538) = *(v557 + 4 * HIBYTE(v582));
  STACK[0xD6A0] = v557 + 4 * BYTE2(v578);
  v587 = v577 ^ __ROR4__(v568, 8) ^ __ROR4__(v573, 16);
  v588 = *(v557 + 4 * BYTE2(v578));
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v585);
  v589 = *(v557 + 4 * HIBYTE(v585));
  STACK[0xD6A0] = v557 + 4 * BYTE1(v585);
  v590 = *(v557 + 4 * BYTE1(v585));
  STACK[0xD6A0] = v557 + 4 * BYTE1(v582);
  v591 = *(v557 + 4 * BYTE1(v582));
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v578);
  v592 = (v587 ^ v576) + LODWORD(STACK[0x4DE8]) - 2 * ((v587 ^ v576) & STACK[0x4DE8]);
  v593 = *(v557 + 4 * HIBYTE(v578));
  STACK[0xD6A0] = v557 + 4 * BYTE1(v592);
  v594 = *(v557 + 4 * BYTE1(v592));
  v595 = v551 ^ LODWORD(STACK[0x5188]) ^ 0xC2CA4F17;
  STACK[0xD6A0] = v557 + 4 * v592;
  v596 = *(v557 + 4 * v592);
  STACK[0xD6A0] = v557 + 4 * BYTE1(v578);
  v597 = *(v557 + 4 * BYTE1(v578));
  v598 = BYTE2(v582);
  STACK[0xD6A0] = v557 + 4 * v598;
  v599 = *(v557 + 4 * v598);
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v592);
  v600 = *(v557 + 4 * HIBYTE(v592));
  v601 = BYTE2(v592);
  STACK[0xD6A0] = v557 + 4 * v601;
  v602 = *(v557 + 4 * v601);
  STACK[0xD6A0] = v557 + 4 * v585;
  v603 = __PAIR64__(v590, __ROR4__(v538, 24));
  v604 = v508 ^ LODWORD(STACK[0x4E50]) ^ LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x5490]) ^ v603 ^ v588;
  LODWORD(v603) = v590;
  v605 = (v603 >> 8) ^ __ROR4__(v584, 16) ^ __ROR4__(v593, 24);
  if (v605 == v602)
  {
    v606 = 690160786;
  }

  else
  {
    v606 = STACK[0x4DE0];
  }

  v607 = v508 ^ LODWORD(STACK[0x5460]) ^ v602 ^ v605 ^ (((LODWORD(STACK[0x4E38]) ^ (((v606 & STACK[0x53A0]) >> 1) ^ 0x3F045876) & STACK[0x5790] ^ 0x20) >> LODWORD(STACK[0x57A0])) + ((LODWORD(STACK[0x4DF8]) ^ 0x5D526134 ^ (((v606 & STACK[0x53A0]) >> 1) ^ 0x747165A6) & STACK[0x4E00]) << LODWORD(STACK[0x57B0])));
  v608 = v508 ^ LODWORD(STACK[0x5000]) ^ LODWORD(STACK[0x54B0]) ^ __ROR4__(v589, 24) ^ __ROR4__(v596, 16) ^ __ROR4__(v597, 8) ^ v599;
  v609 = v508 ^ LODWORD(STACK[0x4FF8]) ^ LODWORD(STACK[0x54C0]) ^ __ROR4__(v581, 16) ^ v586;
  v610 = *(v557 + 4 * v585);
  STACK[0xD6A0] = v557 + 4 * BYTE1(v607);
  v611 = v604 ^ __ROR4__(v594, 8);
  v613 = __ROR4__(v610, 16);
  v612 = v611 ^ v613;
  v614 = *(v557 + 4 * BYTE1(v607));
  v615 = ((v611 ^ v613) >> 8);
  STACK[0xD6A0] = v557 + 4 * v615;
  v616 = *(v557 + 4 * v615);
  v617 = v609 ^ __ROR4__(v591, 8) ^ __ROR4__(v600, 24);
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v617);
  v618 = *(v557 + 4 * HIBYTE(v617));
  STACK[0xD6A0] = v557 + 4 * BYTE2(v607);
  v619 = v595 ^ LODWORD(STACK[0x53E8]) ^ __ROR4__(v549, 16);
  v620 = *(v557 + 4 * BYTE2(v607));
  STACK[0xD6A0] = v557;
  v621 = *(v557 + 4 * BYTE1(v608));
  v622 = v619 ^ (v550 + 115);
  STACK[0xD6A0] = v557 + 4 * BYTE2(v612);
  v623 = *(v557 + 4 * BYTE2(v612));
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v608);
  v624 = *(v557 + 4 * HIBYTE(v608));
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v607);
  v625 = *(v557 + 4 * HIBYTE(v607));
  STACK[0xD6A0] = v557 + 4 * HIBYTE(v612);
  v626 = *(v557 + 4 * HIBYTE(v612));
  STACK[0xD6A0] = v557 + 4 * BYTE1(v617);
  v627 = *(v557 + 4 * BYTE1(v617));
  STACK[0xD6A0] = v557 + 4 * v608;
  v628 = *(v557 + 4 * v608);
  STACK[0xD6A0] = v557 + 4 * v612;
  v629 = *(v557 + 4 * v612);
  STACK[0xD6A0] = v557 + 4 * v607;
  v630 = *(v557 + 4 * v607);
  STACK[0xD6A0] = v557 + 4 * BYTE2(v608);
  v631 = *(v557 + 4 * BYTE2(v608));
  STACK[0xD6A0] = v557 + 4 * v617;
  v632 = *(v557 + 4 * v617);
  v633 = BYTE2(v617);
  STACK[0xD6A0] = v557 + 4 * v633;
  v634 = *(v557 + 4 * v633);
  STACK[0xD6A0] = v557;
  v635 = v533 ^ LODWORD(STACK[0x4FD8]) ^ LODWORD(STACK[0x5440]) ^ __ROR4__(v616, 8) ^ __ROR4__(v618, 24) ^ __ROR4__(v630, 16) ^ v631;
  v636 = v533 ^ LODWORD(STACK[0x4E28]) ^ LODWORD(STACK[0x53F8]) ^ __ROR4__(v621, 8) ^ __ROR4__(v625, 24) ^ __ROR4__(v629, 16) ^ v634;
  v637 = STACK[0xD678];
  v638 = __ROR4__(*(STACK[0xD678] + 4 * v635), 8) ^ 0x158F2F12 ^ *(STACK[0xD678] + 4 * BYTE1(v636));
  v639 = v533 ^ LODWORD(STACK[0x4E34]) ^ LODWORD(STACK[0x5358]) ^ LODWORD(STACK[0x5408]) ^ v620 ^ __ROR4__(v626, 24) ^ (v627 >> 8) ^ (v627 << 24) ^ __ROR4__(v628, 16);
  v640 = __ROR4__(*(STACK[0xD678] + 4 * BYTE2(v639)), 24);
  v641 = (v638 ^ v640) - ((2 * (v638 ^ v640)) & 0xC3ED40E0);
  v642 = v552 ^ LODWORD(STACK[0x53E0]) ^ (LODWORD(STACK[0x5288]) + 2037150810 - 2 * LODWORD(STACK[0x5280])) ^ __ROR4__(STACK[0x52A0], 16) ^ 0xE416FD57;
  v643 = v552 ^ LODWORD(STACK[0x5278]) ^ __ROR4__(STACK[0x5298], 24) ^ __ROR4__(STACK[0x5290], 16) ^ __ROR4__(STACK[0x52B0], 8) ^ LODWORD(STACK[0x52A8]) ^ 0xBDA4989E;
  v644 = STACK[0x5560];
  if (STACK[0x5560])
  {
    v645 = v567;
  }

  else
  {
    v645 = v622;
  }

  if (v644)
  {
    v646 = v622;
  }

  else
  {
    v646 = v642;
  }

  if (v644)
  {
    v647 = v642;
  }

  else
  {
    v647 = v643;
  }

  if (v644)
  {
    v648 = v643;
  }

  else
  {
    v648 = v567;
  }

  v649 = LODWORD(STACK[0x53B0]) + ((((LODWORD(STACK[0x52B8]) + 1907748525) ^ 0xE9301495) + LODWORD(STACK[0x53B8]) + 417557079) ^ v463);
  v650 = v533 ^ LODWORD(STACK[0x4FE0]) ^ LODWORD(STACK[0x5420]) ^ __ROR4__(v614, 8) ^ v623;
  STACK[0xD678] = v637 + 4 * BYTE1(v635);
  v651 = STACK[0x5380];
  v653 = __ROR4__(__ROR4__(v650 ^ __ROR4__(v624, 24) ^ __ROR4__(v632, 16), 27) ^ 0x8DDF8371, 5);
  v652 = v653 ^ 0xFC1B;
  v654 = *(v637 + 4 * BYTE1(v635));
  STACK[0xD678] = v637 + 4 * ((v653 ^ 0x8C6EFC1B) >> 16);
  v655 = *(v637 + 4 * BYTE1(v639));
  v656 = *(v637 + 4 * v636);
  v657 = *(v637 + 4 * ((v653 ^ 0x8C6EFC1B) >> 16));
  v658 = (v653 ^ 0x8C6EFC1B) >> 24;
  STACK[0xD678] = v637 + 4 * v658;
  v660 = __PAIR64__(v657, __ROR4__(*(v637 + 4 * HIBYTE(v635)), 16));
  v659 = v655 ^ __ROR4__(v656, 8) ^ v660;
  v661 = v659 ^ 0x12158F2F;
  LODWORD(v660) = v657;
  v662 = v660 >> 24;
  v663 = (v662 ^ 0x6CB3259B) & (v659 ^ 0x12158F2F) ^ v659 & 0x59010D13;
  v664 = *(v637 + 4 * v658);
  STACK[0xD678] = v637 + 4 * v639;
  v665 = v661 + (v662 ^ 0xB5B22888);
  v666 = *(v637 + 4 * v639);
  v667 = v665 + ((2 * v663) ^ 0xDFFDE5F9);
  STACK[0xD678] = v637 + 4 * HIBYTE(v652);
  v668 = *(v637 + 4 * HIBYTE(v652));
  STACK[0xD678] = v637 + 4 * BYTE2(v635);
  v669 = *(v637 + 4 * BYTE2(v635));
  STACK[0xD678] = v637 + 4 * BYTE2(v636);
  v670 = v649 - 1702951683;
  v671 = v552 ^ 0x763DAB15 ^ v651 ^ (v649 - 1702951683) ^ (v667 + 1);
  v672 = v552 ^ LODWORD(STACK[0x53D8]) ^ (v649 - 1702951683) ^ (v641 + 1643552880) ^ __ROR4__(v664, 16) ^ 0xA5E383D0;
  v673 = v552 ^ 0xD19A0CB2 ^ LODWORD(STACK[0x53F0]) ^ (v649 - 1702951683) ^ __ROR4__(*(v637 + 4 * v652), 8) ^ __ROR4__(*(v637 + 4 * HIBYTE(v639)), 16) ^ v654 ^ __ROR4__(*(v637 + 4 * BYTE2(v636)), 24);
  v674 = v552 ^ 0xD19A0CB2 ^ LODWORD(STACK[0x53D0]) ^ (v649 - 1702951683) ^ __ROR4__(*(v637 + 4 * HIBYTE(v636)), 16) ^ __ROR4__(v666, 8) ^ v668 ^ __ROR4__(v669, 24);
  if (v644)
  {
    v675 = v671;
  }

  else
  {
    v675 = v672;
  }

  if (v644)
  {
    v676 = v672;
  }

  else
  {
    v676 = v673;
  }

  if (v644)
  {
    v671 = v674;
  }

  else
  {
    v673 = v674;
  }

  if ((v644 & 2) != 0)
  {
    v677 = v648;
  }

  else
  {
    v677 = v646;
  }

  if ((v644 & 2) != 0)
  {
    v678 = v645;
  }

  else
  {
    v646 = v648;
    v678 = v647;
  }

  if ((v644 & 2) != 0)
  {
    v679 = v647;
  }

  else
  {
    v679 = v645;
  }

  if ((v644 & 2) != 0)
  {
    v680 = v671;
  }

  else
  {
    v680 = v676;
  }

  if ((v644 & 2) != 0)
  {
    v671 = v676;
  }

  v681 = 2 * v670;
  v682 = (2013866453 * (v678 ^ (v649 - ((2 * v670) & 0xA8E46EC8) - 286180255))) ^ v679;
  if ((v644 & 2) != 0)
  {
    v683 = v673;
  }

  else
  {
    v683 = v675;
  }

  if ((v644 & 2) != 0)
  {
    v673 = v675;
  }

  v684 = v682 ^ (2013866453 * (v680 ^ 0x4F775E4B));
  v685 = v671 ^ v677 ^ v670 ^ v684 ^ 0xFD8E4A56;
  v686 = v683 ^ v646 ^ v685 ^ 0x8384B9BC;
  v687 = v685 ^ v678 ^ v671 ^ v673 ^ v683 ^ (-871366779 * (v673 ^ 0x4F775E4B)) ^ v684 ^ v686 ^ 0x2A78C48E ^ (-871366779 * (v686 ^ 0x2A78C48E));
  v688 = (v687 ^ 0xFD8E4A56) + 710880085 * ((((v671 ^ 0xA960FC49) + 1191638930) ^ ((v671 ^ 0xE502198C) + 191107669) ^ ((v671 ^ 0x315BB8E) - 311185321)) + 1753843504 - (v684 ^ 0xFD8E4A56 ^ (v649 - (v681 & 0x53F8FA64) + 1148944943)));
  v689 = v680 ^ 0xEAA13A23 ^ v687;
  v690 = v670 ^ 0x5999FDB8;
  v691 = v673 ^ 0x9B31B6BC;
  v692 = v689 ^ v686;
  v693 = 1122450391 * (v690 + (v691 ^ v689 ^ v686)) + 1122450391 + (v684 ^ 0x54723764);
  v694 = STACK[0x5388];
  v695 = *(&off_101353600 + (LODWORD(STACK[0x5388]) ^ 0x5235)) - 4;
  v696 = STACK[0x52D0];
  *(v696 + LODWORD(STACK[0x52C0])) = v695[BYTE1(v693) ^ 0x44] ^ BYTE1(v693) ^ 0x12;
  v697 = v689 ^ v685 ^ 0x8384B9BC;
  v698 = v688 + 1434653753 * ((((v697 ^ 0x75C6F96) - 123498390) ^ ((v697 ^ 0xB1218BBA) + 1323201606) ^ ((v697 ^ 0xDF5867B3) + 547854413)) - (((v683 ^ 0x761B0874) - 693259916) ^ ((v683 ^ 0x489799B5) - 400482125) ^ ((v683 ^ 0x71FBCF8A) - 783452530))) - 1435957896;
  *(v696 + LODWORD(STACK[0x52D8])) = v695[BYTE2(v698) ^ 0xE4] ^ BYTE2(v698) ^ 0x14;
  v699 = *(&off_101353600 + v694 - 19612) - 8;
  *(v696 + LODWORD(STACK[0x5348])) = v699[HIBYTE(v692) ^ 0xBELL] ^ 0x58;
  *(v696 + LODWORD(STACK[0x52C8])) = v699[BYTE2(v693) ^ 0xB7] ^ 0xEA;
  *(v696 + LODWORD(STACK[0x5350])) = v695[((v692 ^ 0xEAB0) >> 8) ^ 0x2BLL] ^ ((v692 ^ 0xEAB0) >> 8) ^ 0x17;
  v700 = *(&off_101353600 + (v694 ^ 0x57B3));
  *(v696 + LODWORD(STACK[0x5300])) = (*(v700 + (HIBYTE(v693) ^ 0x4FLL)) - 83) ^ 0x56;
  v701 = v697 ^ (v649 + 61114524 - (v681 & 0xD24B073E));
  v702 = *(&off_101353600 + v694 - 19802) - 8;
  *(v696 + LODWORD(STACK[0x52E0])) = v702[BYTE1(v701) ^ 0xA1] ^ 0xB8;
  *(v696 + LODWORD(STACK[0x5310])) = (*(v700 + (HIBYTE(v698) ^ 0x56) - ((2 * (HIBYTE(v698) ^ 0x56)) & 0x6E) + 55) - 83) ^ 0xA;
  *(v696 + LODWORD(STACK[0x52E8])) = v702[HIBYTE(v701) ^ 0xFELL] ^ 0x93;
  *(v696 + LODWORD(STACK[0x52F0])) = v695[BYTE2(v701) ^ 0x3FLL] ^ BYTE2(v701) ^ 0xDB;
  *(v696 + LODWORD(STACK[0x5320])) = v699[(v688 + 57 * ((((v697 ^ 0x96) + 106) ^ ((v697 ^ 0xBA) + 70) ^ ((v697 ^ 0xB3) + 77)) - (((v683 ^ 0x74) + 116) ^ ((v683 ^ 0xB5) - 77) ^ ((v683 ^ 0x8A) - 114))) + 120) ^ 0x8BLL] ^ 0x9C;
  *(v696 + LODWORD(STACK[0x5338])) = v699[BYTE2(v692) ^ 0xC5] ^ 0xB0;
  v703 = STACK[0xD698];
  *(v703 + LODWORD(STACK[0x52F8])) = v699[v692 ^ 0xBBLL] ^ 0x14;
  *(v703 + LODWORD(STACK[0x5318])) = (*(v700 + (BYTE1(v698) ^ 0x47)) - 83) ^ 0xD6;
  *(v703 + LODWORD(STACK[0x5308])) = v701 ^ 0xD5 ^ v695[v701 ^ 0x1CLL];
  *(v703 + LODWORD(STACK[0x5340])) = v702[v693 ^ 9] ^ 0x9E;
  STACK[0xD678] = v637;
  LODWORD(v702) = (((LODWORD(STACK[0x5328]) ^ 0x148CE340) - 344777536) ^ ((LODWORD(STACK[0x5328]) ^ 0x1D11FD0F) - 487718159) ^ ((LODWORD(STACK[0x5328]) ^ 0xEAEA1055) + 353759147)) + 1334264588;
  LODWORD(v695) = (v702 ^ 0x4BCFA2DC) & (2 * (v702 & 0x93EFCB1E)) ^ v702 & 0x93EFCB1E;
  LODWORD(v699) = ((2 * (v702 ^ 0x4D18B4D4)) ^ 0xBDEEFF94) & (v702 ^ 0x4D18B4D4) ^ (2 * (v702 ^ 0x4D18B4D4)) & 0xDEF77FCA;
  LODWORD(v695) = (v699 ^ 0x9CE67C80) & (4 * v695) ^ v695;
  LODWORD(v699) = ((4 * (v699 ^ 0x4211004A)) ^ 0x7BDDFF28) & (v699 ^ 0x4211004A) ^ (4 * (v699 ^ 0x4211004A)) & 0xDEF77FC8;
  LODWORD(v695) = (v699 ^ 0x5AD57F00) & (16 * v695) ^ v695;
  LODWORD(v699) = ((16 * (v699 ^ 0x842200C2)) ^ 0xEF77FCA0) & (v699 ^ 0x842200C2) ^ (16 * (v699 ^ 0x842200C2)) & 0xDEF77FC0;
  LODWORD(v695) = v695 ^ 0xDEF77FCA ^ (v699 ^ 0xCE777C00) & (v695 << 8);
  LODWORD(v702) = v702 ^ (2 * ((v695 << 16) & 0x5EF70000 ^ v695 ^ ((v695 << 16) ^ 0x7FCA0000) & (((v699 ^ 0x1080034A) << 8) & 0x5EF70000 ^ 0x8800000 ^ (((v699 ^ 0x1080034A) << 8) ^ 0xF77F0000) & (v699 ^ 0x1080034A))));
  LODWORD(v695) = (((v702 ^ 0xF5A7A77C) + 2057986580) ^ ((v702 ^ 0xC1E3A2B7) + 1324247001) ^ ((v702 ^ 0xA7C13141) + 684520495)) + 277846309;
  v704 = v695 >= LODWORD(STACK[0x5368]);
  v705 = LODWORD(STACK[0x5330]) ^ (v695 < 0x2D188B0B);
  v706 = !v704;
  if (v705)
  {
    v707 = STACK[0x5330];
  }

  else
  {
    v707 = v706;
  }

  return (*(STACK[0x57D8] + 8 * ((57 * v707) ^ v694)))();
}

uint64_t sub_1002E8AAC()
{
  v1 = STACK[0x51B8] - 19522;
  v2 = STACK[0x51B8] - 740526358;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2468)))(48);
  v5 = (v0 - 1882634842);
  STACK[0xE3F8] = v5;
  *(STACK[0x6AB8] + 16 * v5) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (v2 ^ 0xD3DCC315 ^ v1)) | LODWORD(STACK[0x1D5C]))))();
}

uint64_t sub_1002E8B8C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 10946)))(v2);
}

uint64_t sub_1002E8BE4()
{
  v0 = STACK[0x51B8] - 21864;
  v1 = STACK[0x51B8] - 21670;
  STACK[0x6D60] = STACK[0x6428];
  LODWORD(STACK[0x6014]) = STACK[0xB0BC];
  return (*(STACK[0x57D8] + 8 * (v0 + v1 + 21510)))();
}

uint64_t sub_1002E8C80(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = v10 ^ 0x1EFF;
  v14 = (10 * (v10 ^ 0x3B46u) - 6548) & v9;
  v15 = *(v7 + ((v14 - 103642729) & a1));
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0x978DFD49084BD9ACLL) - (v16 + v15) - 0x4BC6FEA48425ECD6) ^ 0xBFD0AFED1B7BD0B1;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x153242EE3CF06A49;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0xB7877B66EA545126) - 0x243C424C8AD5D76DLL) ^ 0xF9B669744D1F1108;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xE5AF1AB32EBD3CDDLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v12;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * ((v28 + v27) ^ 0x29134D945B9CBEE6)) | 0x8B6FA4841A8BBC90) - ((v28 + v27) ^ 0x29134D945B9CBEE6) + 0x3A482DBDF2BA21B8) ^ 0x4482BF730F0BBAD6;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x5F8DEC3EA3980A1BLL;
  return (*(STACK[0x57D8] + 8 * ((5760 * ((((((__ROR8__(v31, 8) + (v31 ^ __ROR8__(v30, 61))) ^ a7) >> (8 * (v9 & 7u))) ^ v8) ^ *(v11 + 2876)) == -769884012)) ^ v13)))();
}

uint64_t sub_1002E8E70()
{
  v1 = v0 - 1689;
  v2 = (v1 - 951223700) & STACK[0x1A04];
  v3 = STACK[0x57D8];
  STACK[0x8660] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * ((v2 + 5877) ^ v1)))();
}

uint64_t sub_1002E8EDC(uint64_t a1)
{
  v1 = ((a1 + 0xA7D16FD84FCBCAFLL) ^ 0xF7415509FC8D330BLL) & (2 * ((a1 + 0xA7D16FD84FCBCAFLL) & 0xF64159ADE129B38BLL)) ^ (a1 + 0xA7D16FD84FCBCAFLL) & 0xF64159ADE129B38BLL;
  v2 = ((2 * ((a1 + 0xA7D16FD84FCBCAFLL) ^ STACK[0x57A0] ^ 0x33C14612FC9F0685)) ^ 0x8B003F7E3B6DC304) & ((a1 + 0xA7D16FD84FCBCAFLL) ^ STACK[0x57A0] ^ 0x33C14612FC9F0685) ^ (2 * ((a1 + 0xA7D16FD84FCBCAFLL) ^ STACK[0x57A0] ^ 0x33C14612FC9F0685)) & 0xC5801FBF1DB6E182;
  v3 = v2 ^ 0x4480008104922082;
  v4 = (v2 ^ 0x81000F3E0924C000) & (4 * v1) ^ v1;
  v5 = ((4 * v3) ^ 0x16007EFC76DB8608) & v3 ^ (4 * v3) & 0xC5801FBF1DB6E180;
  v6 = (v5 ^ 0x4001EBC14928000) & (16 * v4) ^ v4;
  v7 = ((16 * (v5 ^ 0xC180010309246182)) ^ 0x5801FBF1DB6E1820) & (v5 ^ 0xC180010309246182) ^ (16 * (v5 ^ 0xC180010309246182)) & 0xC5801FBF1DB6E180;
  v8 = (v7 ^ 0x40001BB119260000) & (v6 << 8) ^ v6;
  v9 = (((v7 ^ 0x8580040E0490E182) << 8) ^ 0x801FBF1DB6E18200) & (v7 ^ 0x8580040E0490E182) ^ ((v7 ^ 0x8580040E0490E182) << 8) & 0xC5801FBF1DB6E100;
  v10 = v8 ^ 0xC5801FBF1DB6E182 ^ (v9 ^ 0x80001F1D14A00000) & (v8 << 16);
  v11 = ((a1 + 0xA7D16FD84FCBCAFLL) ^ (2 * ((v10 << 32) & 0x45801FBF00000000 ^ v10 ^ ((v10 << 32) ^ 0x1DB6E18200000000) & (((v9 ^ 0x458000A209166182) << 16) & 0x45801FBF00000000 ^ 0x4000020900000000 ^ (((v9 ^ 0x458000A209166182) << 16) ^ 0x1FBF1DB600000000) & (v9 ^ 0x458000A209166182))))) >> 26;
  v12 = a1 - 0x7812BC4B083FF2C9 - (((v11 ^ 0xECC7A840A358AB67) - 0x1C6553BBF0B98DC7) ^ ((v11 ^ 0x79541985F8F867D4) + 0x76091D8154E6BE8CLL) ^ ((v11 ^ 0x9593B1D8CBF9B945) - 0x65314A2398189FE5));
  v13 = ((((v12 - 0x41409BE8141F0C07) ^ 0xCA22F17D8DDD8D47) + 0x34C3D8A331096F5) ^ (v12 - 0x41409BE8141F0C07) ^ (((v12 - 0x41409BE8141F0C07) ^ 0x727FF30161A2591DLL) - 0x44EEC0092090BD51) ^ (((v12 - 0x41409BE8141F0C07) ^ 0x2163EE8110370FE5) - 0x17F2DD895105EBA9) ^ (((v12 - 0x41409BE8141F0C07) ^ 0xAFAFDFF5BD7A3FF3) + 0x66C1130203B72441)) >> 10;
  v14 = v12 - 0x6BA2624259CD16EELL + (((v13 ^ 0x52360A2CB5F304BBLL) + 0x4D094BD506D7BD13) ^ ((v13 ^ 0xC8ABD3F7BFA2F2D7) - 0x286B6DF1F379B481) ^ ((v13 ^ 0x9A907D97C841BAD5) - 0x7A50C391849AFC83));
  v15 = (v14 ^ 0xD61D0DDEDB15358ALL) & (2 * (v14 & 0xD49DAD9C9346318ALL)) ^ v14 & 0xD49DAD9C9346318ALL;
  v16 = ((2 * (v14 ^ 0x7F1706D7F919749ALL)) ^ 0x57155696D4BE8A20) & (v14 ^ 0x7F1706D7F919749ALL) ^ (2 * (v14 ^ 0x7F1706D7F919749ALL)) & 0xAB8AAB4B6A5F4510;
  v17 = v16 ^ 0xA88AA9492A414510;
  v18 = (v16 ^ 0x200020240180000) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0xAE2AAD2DA97D1440) & v17 ^ (4 * v17) & 0xAB8AAB4B6A5F4510;
  v20 = (v19 ^ 0xAA0AA909285D0400) & (16 * v18) ^ v18;
  v21 = ((16 * (v19 ^ 0x180024242024110)) ^ 0xB8AAB4B6A5F45100) & (v19 ^ 0x180024242024110) ^ (16 * (v19 ^ 0x180024242024110)) & 0xAB8AAB4B6A5F4510;
  v22 = (v21 ^ 0xA88AA00220544100) & (v20 << 8) ^ v20;
  v23 = (((v21 ^ 0x3000B494A0B0410) << 8) ^ 0x8AAB4B6A5F451000) & (v21 ^ 0x3000B494A0B0410) ^ ((v21 ^ 0x3000B494A0B0410) << 8) & 0xAB8AAB4B6A5F4500;
  v24 = v22 ^ 0xAB8AAB4B6A5F4510 ^ (v23 ^ 0x8A8A0B4A4A450000) & (v22 << 16);
  v25 = (v14 ^ (2 * ((v24 << 32) & 0x2B8AAB4B00000000 ^ v24 ^ ((v24 << 32) ^ 0x6A5F451000000000) & (((v23 ^ 0x2100A001201A4510) << 16) & 0x2B8AAB4B00000000 ^ 0x80810000000000 ^ (((v23 ^ 0x2100A001201A4510) << 16) ^ 0x2B4B6A5F00000000) & (v23 ^ 0x2100A001201A4510))))) >> 6;
  v26 = v14 + (((v25 ^ 0x680EC4E69DF5193CLL) + 0x49515EA1F22E2FA8) ^ ((v25 ^ 0xCF6D59DEA537EC0ELL) - 0x11CD3C663513256ALL) ^ ((v25 ^ 0xA43DEEDC11DD17DCLL) - 0x7A9D8B6481F9DEB8));
  v27 = v26 + 0x371E181BDCB49BFLL;
  v28 = ((((v26 + 0x5E064C31C9697F88) ^ 0x38419A8B0F050D01) - 0x5DFF1E99DB5472E7) ^ (v26 + 0x5E064C31C9697F88) ^ (((v26 + 0x5E064C31C9697F88) ^ 0x80CF051914DB9D12) + 0x1A8E7EF43F751D0CLL) ^ (((v26 + 0x5E064C31C9697F88) ^ 0x604EA5632E109200) - 0x5F02171FA41EDE4) ^ (((v26 + 0x5E064C31C9697F88) ^ 0xBD7EBEE3E19F7DF7) + 0x273FC50ECA31FDEFLL)) >> 26;
  v29 = v27 - (((v28 ^ 0xC83CFD3ADE01FAAELL) + 0x2F0A78C9E7E2C4CALL) ^ ((v28 ^ 0xAEFD8A4F459E037DLL) + 0x49CB0FBC7C7D3D1BLL) ^ ((v28 ^ 0x66C1776CF43EFD66) - 0x7E080D6032223CFELL));
  v30 = ((((v29 + 0x2ECEBD22DF6D6E6FLL) ^ 0x7B8471BAA9E3A077) - 0x29462121F83DDDCELL) ^ (v29 + 0x2ECEBD22DF6D6E6FLL) ^ (((v29 + 0x2ECEBD22DF6D6E6FLL) ^ 0x39BA78CB4BD34D81) - 0x6B7828501A0D3038) ^ (((v29 + 0x2ECEBD22DF6D6E6FLL) ^ 0x6E23A215DC056AB2) - 0x3CE1F28E8DDB170BLL) ^ (((v29 + 0x2ECEBD22DF6D6E6FLL) ^ 0x7EDFFBFF6FEBFAFCLL) - 0x2C1DAB643E358744)) >> 9;
  v31 = v29 - (((v30 ^ 0x68839CC12C75F886) - 0x49E32064E89604E6) ^ ((v30 ^ 0xC0B16604FEB06EBELL) + 0x1E2E255EC5AC6D22) ^ ((v30 ^ 0xA81B9BED9F6D7906) + 0x7684D8B7A4717A9ALL));
  v32 = ((v31 - 0x11583C48794EDB02) ^ 0xED12CA0B7D8A3818) & (2 * ((v31 - 0x11583C48794EDB02) & 0xCC1ACB427D92B85ALL)) ^ (v31 - 0x11583C48794EDB02) & 0xCC1ACB427D92B85ALL;
  v33 = ((2 * ((v31 - 0x11583C48794EDB02) ^ 0xE506D88F77AB182CLL)) ^ 0x5238279A147340ECLL) & ((v31 - 0x11583C48794EDB02) ^ 0xE506D88F77AB182CLL) ^ (2 * ((v31 - 0x11583C48794EDB02) ^ 0xE506D88F77AB182CLL)) & 0x291C13CD0A39A076;
  v34 = v33 ^ 0x290410450A08A012;
  v35 = (v33 ^ 0x18030800110060) & (4 * v32) ^ v32;
  v36 = ((4 * v34) ^ 0xA4704F3428E681D8) & v34 ^ (4 * v34) & 0x291C13CD0A39A074;
  v37 = (v36 ^ 0x2010030408208040) & (16 * v35) ^ v35;
  v38 = ((16 * (v36 ^ 0x90C10C902192026)) ^ 0x91C13CD0A39A0760) & (v36 ^ 0x90C10C902192026) ^ (16 * (v36 ^ 0x90C10C902192026)) & 0x291C13CD0A39A070;
  v39 = (v38 ^ 0x10010C002180000) & (v37 << 8) ^ v37;
  v40 = (((v38 ^ 0x281C030D0821A016) << 8) ^ 0x1C13CD0A39A07600) & (v38 ^ 0x281C030D0821A016) ^ ((v38 ^ 0x281C030D0821A016) << 8) & 0x291C13CD0A39A000;
  v41 = v39 ^ 0x291C13CD0A39A076 ^ (v40 ^ 0x810010808200000) & (v39 << 16);
  v42 = ((v31 - 0x11583C48794EDB02) ^ (2 * ((v41 << 32) & 0x291C13CD00000000 ^ v41 ^ ((v41 << 32) ^ 0xA39A07600000000) & (((v40 ^ 0x210C12C502198076) << 16) & 0x291C13CD00000000 ^ 0x281011C400000000 ^ (((v40 ^ 0x210C12C502198076) << 16) ^ 0x13CD0A3900000000) & (v40 ^ 0x210C12C502198076))))) >> 6;
  v43 = v31 - 0x18CD23F10EBBBDACLL + (((v42 ^ 0xC0D54193C765B2FELL) + 0x2D4DC1D4A80B7363) ^ ((v42 ^ 0xB5A06EC811BC9A85) + 0x5838EE8F7ED25B1ALL) ^ ((v42 ^ 0x774D64EA977EAF99) - 0x652A1B5207EF91FALL));
  v44 = (v43 ^ 0xEBCCD4F2C62756D0) & (2 * (v43 & 0xE3EEE6F4E4365485)) ^ v43 & 0xE3EEE6F4E4365485;
  v45 = ((2 * (v43 ^ 0x6A845872062776D0)) ^ 0x12D57D0DC42244AALL) & (v43 ^ 0x6A845872062776D0) ^ (2 * (v43 ^ 0x6A845872062776D0)) & 0x896ABE86E2112254;
  v46 = v45 ^ 0x892A828222112255;
  v47 = (v45 ^ 0x403C0480000000) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x25AAFA1B88448954) & v46 ^ (4 * v46) & 0x896ABE86E2112254;
  v49 = (v48 ^ 0x12ABA0280000050) & (16 * v47) ^ v47;
  v50 = ((16 * (v48 ^ 0x8840048462112201)) ^ 0x96ABE86E21122550) & (v48 ^ 0x8840048462112201) ^ (16 * (v48 ^ 0x8840048462112201)) & 0x896ABE86E2112250;
  v51 = (v50 ^ 0x802AA80620102000) & (v49 << 8) ^ v49;
  v52 = (((v50 ^ 0x9401680C2010205) << 8) ^ 0x6ABE86E211225500) & (v50 ^ 0x9401680C2010205) ^ ((v50 ^ 0x9401680C2010205) << 8) & 0x896ABE86E2112200;
  v53 = v51 ^ 0x896ABE86E2112255 ^ (v52 ^ 0x82A868200000000) & (v51 << 16);
  v54 = v43 ^ (2 * ((v53 << 32) & 0x96ABE8600000000 ^ v53 ^ ((v53 << 32) ^ 0x6211225500000000) & (((v52 ^ 0x81403804E2112255) << 16) & 0x96ABE8600000000 ^ 0x1681C8600000000 ^ (((v52 ^ 0x81403804E2112255) << 16) ^ 0x3E86E21100000000) & (v52 ^ 0x81403804E2112255))));
  v55 = ((((v54 >> 25) ^ 0xAC06C1DEBA33677DLL) - 0x6F14703C99E6BF8BLL) ^ (((v54 >> 25) ^ 0x69E469A861F4CEF3) + 0x550927B5BDDEE9FBLL) ^ (((v54 >> 25) ^ 0xC5E2A80101DB1CE2) - 0x6F019E3220EC414)) + (((v54 ^ 0x83D3349AEBCB2F11) - 0x71B8C4B9204C256BLL) ^ ((v54 ^ 0x5FF428DAEADA92B8) + 0x52602706DEA2673ELL) ^ ((v54 ^ 0x3393252AD9BFD415) + 0x3E072AF6EDC72191));
  v56 = ((v55 + 0x58FBE8802D2671F1) ^ 0xD7F6001C9FCF5F6ELL) & (2 * ((v55 + 0x58FBE8802D2671F1) & 0x87F6925EDFCC5F6FLL)) ^ (v55 + 0x58FBE8802D2671F1) & 0x87F6925EDFCC5F6FLL;
  v57 = ((2 * ((v55 + 0x58FBE8802D2671F1) ^ 0xD4F6240990CFF134)) ^ 0xA6016CAE9E075CB6) & ((v55 + 0x58FBE8802D2671F1) ^ 0xD4F6240990CFF134) ^ (2 * ((v55 + 0x58FBE8802D2671F1) ^ 0xD4F6240990CFF134)) & 0x5300B6574F03AE5ALL;
  v58 = v57 ^ 0x510092514100A249;
  v59 = (v57 ^ 0x20000060E030C10) & (4 * v56) ^ v56;
  v60 = ((4 * v58) ^ 0x4C02D95D3C0EB96CLL) & v58 ^ (4 * v58) & 0x5300B6574F03AE58;
  v61 = (v60 ^ 0x400090550C02A840) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x1300260243010613)) ^ 0x300B6574F03AE5B0) & (v60 ^ 0x1300260243010613) ^ (16 * (v60 ^ 0x1300260243010613)) & 0x5300B6574F03AE50;
  v63 = (v62 ^ 0x100024544002A400) & (v61 << 8) ^ v61;
  v64 = (((v62 ^ 0x430092030F010A4BLL) << 8) ^ 0xB6574F03AE5B00) & (v62 ^ 0x430092030F010A4BLL) ^ ((v62 ^ 0x430092030F010A4BLL) << 8) & 0x5300B6574F03AE00;
  v65 = v63 ^ 0x5300B6574F03AE5BLL ^ (v64 ^ 0x164703020000) & (v63 << 16);
  v66 = ((v55 + 0x58FBE8802D2671F1) ^ (2 * ((v65 << 32) & 0x5300B65700000000 ^ v65 ^ ((v65 << 32) ^ 0x4F03AE5B00000000) & (((v64 ^ 0x5300A0104C01A45BLL) << 16) & 0x5300B65700000000 ^ 0x4100B05400000000 ^ (((v64 ^ 0x5300A0104C01A45BLL) << 16) ^ 0x36574F0300000000) & (v64 ^ 0x5300A0104C01A45BLL))))) >> 10;
  v67 = v55 - (((v66 ^ 0x33D6FEDFD3F0DBDFLL) + 0x3BC81CF43F3760FDLL) ^ ((v66 ^ 0x5D6C902CE094E142) + 0x557272070C535A62) ^ ((v66 ^ 0x6E93935FA6F4485DLL) + 0x668D71744A33F37FLL));
  v68 = ((v67 + 0x3CFC58402E536A33) ^ 0x8E09790457E7BD88) & (2 * ((v67 + 0x3CFC58402E536A33) & 0xAC2D422657F73111)) ^ (v67 + 0x3CFC58402E536A33) & 0xAC2D422657F73111;
  v69 = ((2 * ((v67 + 0x3CFC58402E536A33) ^ 0xCE137D08792FFF8ALL)) ^ 0xC47C7E5C5DB19D36) & ((v67 + 0x3CFC58402E536A33) ^ 0xCE137D08792FFF8ALL) ^ (2 * ((v67 + 0x3CFC58402E536A33) ^ 0xCE137D08792FFF8ALL)) & 0x623E3F2E2ED8CE9ALL;
  v70 = v69 ^ 0x2202012222484289;
  v71 = (v69 ^ 0x403C18080C908C00) & (4 * v68) ^ v68;
  v72 = ((4 * v70) ^ 0x88F8FCB8BB633A6CLL) & v70 ^ (4 * v70) & 0x623E3F2E2ED8CE98;
  v73 = (v72 ^ 0x383C282A400A00) & (16 * v71) ^ v71;
  v74 = ((16 * (v72 ^ 0x620603060498C493)) ^ 0x23E3F2E2ED8CE9B0) & (v72 ^ 0x620603060498C493) ^ (16 * (v72 ^ 0x620603060498C493)) & 0x623E3F2E2ED8CE90;
  return (*(STACK[0x57D8] + 8 * STACK[0x57A0]))(4220058472, 3340619165, (((v74 ^ 0x222232222C88C800) & (v73 << 8) ^ v73 ^ 0x623E3F2E2ED8CE9BLL ^ ((((v74 ^ 0x401C0D0C0250060BLL) << 8) ^ 0x3E3F2E2ED8CE9B00) & (v74 ^ 0x401C0D0C0250060BLL) ^ ((v74 ^ 0x401C0D0C0250060BLL) << 8) & 0x623E3F2E2ED8CE00 ^ 0x223E2E2E08C80000) & (((v74 ^ 0x222232222C88C800) & (v73 << 8) ^ v73) << 16)) << 32) ^ 0x2ED8CE9B00000000, 420740537);
}

void *sub_1002EA610@<X0>(unint64_t a1@<X8>)
{
  STACK[0x9358] = v1;
  LODWORD(STACK[0x86E4]) = v2;
  STACK[0x88E0] = v3;
  STACK[0x7A58] = a1;
  STACK[0xB790] = v4;
  STACK[0x8D40] = 0x79CEC8CF5A6FCEBALL;
  LODWORD(STACK[0xA2FC]) = -769884012;
  LODWORD(STACK[0xAA30]) = -769884012;
  STACK[0x5E90] = 0;
  return (*(STACK[0x57D8] + 8 * (v5 - 8168 + v5 + 11880)))(&STACK[0x5E90]);
}

uint64_t sub_1002EA7B8()
{
  v2 = *(v0 + 3072);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0x3BEF30D8) + (v2 & 0xC410CF20 | 0x3BEF30DD) + 1457588175)) & 0xFFFFFFFFFFFFFFF8));
  v4 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (((2 * (v3 + v4)) & 0x35CB1987B5D63F76) - (v3 + v4) + 0x651A733C2514E044) ^ 0xA7B54D961AE558A0;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x65F254DD188DB4FCLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (0xF3F95DB3A3508807 - ((v9 + v8) | 0xF3F95DB3A3508807) + ((v9 + v8) | 0xC06A24C5CAF77F8)) ^ 0x63F6E4DA3DB66575;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xA1B29DC5D776132BLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0x13C8F7B16055ABD2) - (v14 + v13) - 0x9E47BD8B02AD5E9) ^ 0xE6E05B9945CF9D05;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((v17 + v16 - ((2 * (v17 + v16)) & 0x4CA5116A238632D0) - 0x59AD774AEE3CE698) ^ 0x7E953BAADBDAC0B6, 8);
  v19 = (v17 + v16 - ((2 * (v17 + v16)) & 0x4CA5116A238632D0) - 0x59AD774AEE3CE698) ^ 0x7E953BAADBDAC0B6 ^ __ROR8__(v16, 61);
  LODWORD(v15) = 3903 * ((((__ROR8__((v18 + v19) ^ 0x5455012E8AB1C38FLL, 8) + ((v18 + v19) ^ 0x5455012E8AB1C38FLL ^ __ROR8__(v19, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 4008381;
  v20 = *(v0 + 4008);
  v21 = *(v20 + v15 - 5896 * (((1456909 * v15) >> 32) >> 1));
  v22 = *(v0 + 4000);
  *(v22 + 36554) = v21;
  v23 = *(v0 + 3976);
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v24 - ((2 * v24 + 0x1EFB64F383DB817ALL) & 0x8E3FCE826E7718AELL) - 0x2962664506D6B2ECLL;
  v26 = __ROR8__(v25 ^ 0x94980C56CE2A7321, 8);
  v25 ^= 0xEF759F98C14476CDLL;
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0xA8715602305A48E8) - 0x2BC754FEE7D2DB8CLL) ^ 0xEE44CFF60792E22FLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xFBC18F8B9568C440;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0xAF7BFC366947E5C3 - ((v31 + v30) | 0xAF7BFC366947E5C3) + ((v31 + v30) | 0x508403C996B81A3CLL)) ^ 0x1A61CDA6F52F630FLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((v34 + v33) & 0x22F6585EC05ED6C3 ^ 0xC2081AC05046C3) + ((v34 + v33) ^ 0xAF35D5651C8F981CLL) - (((v34 + v33) ^ 0xAF35D5651C8F981CLL) & 0x22F6585EC05ED6C3)) ^ 0xA5974661570ACDC8;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0x855B39F2B3F38F6ELL) - (v37 + v36) - 0x42AD9CF959F9C7B7) ^ 0xB5DF803FAA573C6BLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (0x7E577BACFA054D04 - ((v40 + v39) | 0x7E577BACFA054D04) + ((v40 + v39) | 0x81A8845305FAB2FBLL)) ^ 0x671F93699ED102A6;
  LODWORD(v23) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v39, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v23 & 7u))) ^ *v23;
  *(v22 + 37799) = *(v20 + 3903 * (2 * (v23 & 3) + (v23 ^ 0x403)) - 5896 * (((1391348531 * (2 * (v23 & 3) + (v23 ^ 0x403))) >> 32) >> 1));
  v42 = *(v0 + 3984) + 5;
  *(v0 + 296) = v42;
  v43 = STACK[0x57D8];
  v44 = *(STACK[0x57D8] + 8 * (v1 + 10077));
  *(v0 + 3080) = v42;
  *(v0 + 280) = v44;
  return (*(v43 + 8 * (STACK[0x4D40] ^ 0x15E8)))();
}

uint64_t sub_1002EACD4()
{
  v1 = STACK[0x57D8];
  STACK[0xBE60] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2982 ^ (v0 + 10543))))();
}

uint64_t sub_1002EAD58(uint64_t a1)
{
  v4.i64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v4.i64[1] = 0x1E1E1E1E1E1E1E1ELL;
  v5.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v5.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + v1) = vaddq_s8(vsubq_s8(*v2, vandq_s8(vaddq_s8(*v2, *v2), v4)), v5);
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_1002EAE1C()
{
  v0 = STACK[0x51B8] - 81;
  v1 = STACK[0x23A8] & 0x379BCF9E;
  v2 = STACK[0xA790];
  STACK[0x5C50] = STACK[0xA790];
  return (*(STACK[0x57D8] + 8 * (((((v2 == 0) ^ v0) & 1) * (v1 ^ 0x138B4B71)) ^ LODWORD(STACK[0x23AC]))))();
}

uint64_t sub_1002EAEAC()
{
  STACK[0x9170] = v1;
  LODWORD(STACK[0xC554]) = STACK[0x6C48];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1002EAF4C()
{
  v0 = STACK[0x51B8] - 22614;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0xB0B0]);
  return (*(v1 + 8 * (v0 ^ 0x3E74 ^ (v0 | 1))))(v2);
}

uint64_t sub_1002EB008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x94B4]) = v5;
  v7 = STACK[0x2798];
  v8 = STACK[0x51B8];
  v9 = STACK[0x51B8] - 1079089617;
  v10 = 551690071 * ((~((v6 - 240) | 0x2B801821B3DADD06) + ((v6 - 240) & 0x2B801821B3DADD06)) ^ 0xA5E2B51002C871AELL);
  *(a4 + 624) = v10 + v5;
  *(a4 + 596) = v10 ^ v7 ^ 0xD9E;
  *(a4 + 608) = v10;
  *(a4 + 600) = (v7 ^ 0x17) - v10;
  *(a4 + 616) = 4151854225u - v10;
  *(a4 + 604) = v7 - v10;
  *(a4 + 592) = v9 ^ v10;
  v11 = STACK[0x57D8];
  v12 = (*(STACK[0x57D8] + 8 * (v8 ^ v4)))(v6 - 240);
  return (*(v11 + 8 * SLODWORD(STACK[0x1D4D4])))(v12);
}

uint64_t sub_1002EB0E8@<X0>(int a1@<W0>, unsigned int a2@<W1>, char a3@<W2>, unsigned int a4@<W6>, unsigned __int8 a5@<W8>)
{
  v19 = STACK[0x5680] ^ STACK[0x5670];
  v20 = LODWORD(STACK[0x5660]) ^ v10;
  v21 = v8 + (a3 ^ STACK[0x56D0]);
  LODWORD(STACK[0x5620]) = v21;
  v22 = STACK[0x5770];
  v23 = v9 + (v19 ^ (((STACK[0x5770] & a2) >> v14) | ((v13 & a2) << v16)));
  LODWORD(STACK[0x5530]) = v23;
  v24 = STACK[0x4E90];
  HIDWORD(v26) = *(v12 + 4 * v6);
  LODWORD(v26) = HIDWORD(v26);
  v25 = v26 >> 8;
  LODWORD(STACK[0x5330]) = v25;
  HIDWORD(v26) = *(v12 + 4 * v7);
  LODWORD(v26) = HIDWORD(v26);
  v27 = v26 >> 24;
  LODWORD(STACK[0x5328]) = v27;
  v28 = *(v12 + 4 * a5);
  LODWORD(STACK[0x5370]) = v28;
  v29 = *(v12 + 4 * v5);
  LODWORD(STACK[0x5360]) = v29;
  LODWORD(STACK[0x5030]) = v11;
  v30 = (v11 + 15189);
  v32 = v21 ^ (((v22 & (v24 & 0x51FCFBFC ^ 0x28FE7DFE)) >> v14) + ((v13 & (v24 & 0x51FCFBFC ^ 0x28FE7DFE)) << v16)) ^ __ROR4__(v28, 16) ^ v25 ^ v29 ^ v27 ^ ((((v30 ^ 0xE7FCA774) & v24 ^ 0xF3FE7DFE) & v13) << v16) ^ ((((v30 ^ 0xE7FCA774) & v24 ^ 0xF3FE7DFE) & a4) >> v14);
  v33 = v18 ^ LODWORD(STACK[0x56F0]);
  v34 = a1 + v20;
  LODWORD(STACK[0x5520]) = v34;
  v35 = v34 ^ v33;
  v36 = STACK[0x5630];
  v37 = v23 ^ LODWORD(STACK[0x5630]);
  v38 = v32 ^ v37;
  v39 = v32;
  LODWORD(STACK[0x5610]) = v32;
  v40 = v32 ^ v37 ^ v35 ^ v36;
  LODWORD(STACK[0x5580]) = v40;
  v41 = (((a4 & (v24 & 0x5E65B06A ^ 0xAF32D835)) >> v14) + ((v13 & (v24 & 0x5E65B06A ^ 0xAF32D835)) << v16)) ^ (((v22 & (v24 & 0x2265B06A ^ 0x9132D835)) >> v14) + ((v13 & (v24 & 0x2265B06A ^ 0x9132D835)) << v16)) ^ __ROR4__(*(v12 + 4 * BYTE2(v40)), 16) ^ __ROR4__(*(v12 + 4 * HIBYTE(v40)), 8) ^ __ROR4__(*(v12 + 4 * BYTE1(v40)), 24) ^ *(v12 + 4 * (v32 ^ v37 ^ v35 ^ v36));
  LODWORD(STACK[0x5780]) = v32 ^ v37 ^ v15;
  v42 = STACK[0x4A20];
  v43 = v34 ^ LODWORD(STACK[0x4A20]) ^ v32 ^ v37 ^ v15;
  LODWORD(STACK[0x5670]) = v43;
  LODWORD(STACK[0x5680]) = v41 ^ v37;
  v44 = v43 ^ v41 ^ v37;
  v45 = v44 ^ v32 ^ v37 ^ v35;
  v46 = v44;
  LODWORD(STACK[0x55D0]) = v44;
  v47 = (((a4 & (v24 & 0xA781BD26 ^ 0x53C0DE93)) >> v14) | ((v13 & (v24 & 0xA781BD26 ^ 0x53C0DE93)) << v16)) ^ (((v22 & (v24 & 0x581BD26 ^ 0x2C0DE93)) >> v14) | ((v13 & (v24 & 0x581BD26 ^ 0x2C0DE93)) << v16)) ^ __ROR4__(*(v12 + 4 * BYTE2(v45)), 16) ^ *(v12 + 4 * (v44 ^ v32 ^ v37 ^ v35)) ^ __ROR4__(*(v12 + 4 * BYTE1(v45)), 24) ^ __ROR4__(*(v12 + 4 * HIBYTE(v45)), 8);
  v48 = v47 ^ v35;
  v51 = *(v12 + 4 * ((v47 ^ v35) >> 24)) << 24;
  v50 = HIDWORD(v51);
  v49 = v51;
  v52 = v50 & 0x258904 | v49 & 0x48000000 | v50 & 0xDA76FB | v49 & 0xB7000000;
  v53 = (((a4 & (v24 & 0x189F278C ^ 0x8C4F93C6)) >> v14) | ((v13 & (v24 & 0x189F278C ^ 0x8C4F93C6)) << v16)) ^ (((v22 & (v24 & 0xD69F278C ^ 0xEB4F93C6)) >> v14) | ((v13 & (v24 & 0xD69F278C ^ 0xEB4F93C6)) << v16)) ^ __ROR4__(*(v12 + 4 * BYTE1(v48)), 24) ^ __ROR4__(*(v12 + 4 * BYTE2(v48)), 16);
  v54 = v39 ^ v41;
  LODWORD(STACK[0x5650]) = v54;
  v55 = v47 ^ v38;
  v56 = v47 ^ v54;
  LODWORD(STACK[0x5560]) = v56;
  v57 = v48;
  LODWORD(STACK[0x5730]) = v48;
  v58 = v53 ^ *(v12 + 4 * v48) ^ v56 ^ v52;
  v59 = ((a4 & (v24 & 0x6B607DDE ^ 0xB5B03EEF)) >> v14) ^ ((v13 & (v24 & 0x6B607DDE ^ 0xB5B03EEF)) << v16) ^ (((v22 & (v24 & 0x1B607DDE ^ 0x8DB03EEF)) >> v14) | ((v13 & (v24 & 0x1B607DDE ^ 0x8DB03EEF)) << v16));
  v60 = v47 ^ v38 ^ v15 ^ v46;
  LODWORD(STACK[0x5720]) = v60;
  LODWORD(STACK[0x56D0]) = v58;
  v61 = v58 ^ v55 ^ v60;
  LODWORD(STACK[0x55E0]) = v61 ^ v18;
  v62 = v57 ^ v42 ^ v61 ^ v18;
  v63 = v59 ^ __ROR4__(*(v12 + 4 * BYTE1(v62)), 24) ^ __ROR4__(*(v12 + 4 * HIBYTE(v62)), 8) ^ *(v12 + 4 * (v57 ^ v42 ^ v61 ^ v18));
  LODWORD(v26) = __ROR4__(*(v12 + 4 * BYTE2(v62)), 16);
  v64 = v58 ^ v55 ^ v36;
  LODWORD(STACK[0x5590]) = v64;
  v65 = v63 ^ v26 ^ v58;
  v66 = v64 ^ v65;
  v67 = v61 ^ v15 ^ v66;
  v68 = v66;
  LODWORD(STACK[0x5380]) = v66;
  v69 = v67 ^ v18 ^ v62;
  v70 = v69 ^ v36;
  v71 = (((a4 & (v24 & 0x31EDEB4A ^ 0x98F6F5A5)) >> v14) + ((v13 & (v24 & 0x31EDEB4A ^ 0x98F6F5A5)) << v16)) ^ (((v22 & (v24 & 0x43EDEB4A ^ 0xA1F6F5A5)) >> v14) | ((v13 & (v24 & 0x43EDEB4A ^ 0xA1F6F5A5)) << v16)) ^ __ROR4__(*(v12 + 4 * HIBYTE(v70)), 8) ^ __ROR4__(*(v12 + 4 * BYTE1(v70)), 24) ^ *(v12 + 4 * (v69 ^ v36)) ^ __ROR4__(*(v12 + 4 * BYTE2(v70)), 16);
  LODWORD(STACK[0x5570]) = v71;
  LODWORD(STACK[0x5540]) = v61;
  v72 = v71 ^ v65 ^ v61 ^ v69;
  v73 = v71 ^ v65;
  LODWORD(STACK[0x5550]) = v73;
  LODWORD(STACK[0x56C0]) = v72 ^ v15;
  v74 = (((a4 & (v24 & 0xB3B34FAC ^ 0xD9D9A7D6)) >> v14) + ((v13 & (v24 & 0xB3B34FAC ^ 0xD9D9A7D6)) << v16)) ^ (((v22 & (v24 & 0xF1B34FAC ^ 0x78D9A7D6)) >> v14) + ((v13 & (v24 & 0xF1B34FAC ^ 0x78D9A7D6)) << v16)) ^ __ROR4__(*(v12 + 4 * ((v72 ^ v15) >> 16)), 16) ^ __ROR4__(*(v12 + 4 * ((v72 ^ v15) >> 8)), 24) ^ __ROR4__(*(v12 + 4 * ((v72 ^ v15) >> 24)), 8) ^ *(v12 + 4 * (v72 ^ v15));
  v75 = v74 ^ v73;
  v76 = v74 ^ v68 ^ v18;
  LODWORD(STACK[0x55C0]) = v76;
  v77 = v68 ^ v18 ^ v61 ^ v75;
  v78 = v75;
  LODWORD(STACK[0x55B0]) = v75;
  LODWORD(STACK[0x5310]) = v77;
  v79 = v77 ^ v18 ^ v72;
  LODWORD(STACK[0x5660]) = v79 ^ v36;
  v80 = (((a4 & (v24 & 0xE0E8EA62 ^ 0x70747531)) >> v14) | ((v13 & (v24 & 0xE0E8EA62 ^ 0x70747531)) << v16)) ^ (((v22 & (v24 & 0x92E8EA62 ^ 0xC9747531)) >> v14) | ((v13 & (v24 & 0x92E8EA62 ^ 0xC9747531)) << v16)) ^ __ROR4__(*(v12 + 4 * ((v79 ^ v36) >> 16)), 16) ^ __ROR4__(*(v12 + 4 * ((v79 ^ v36) >> 24)), 8) ^ *(v12 + 4 * (v79 ^ v36));
  LODWORD(v26) = __ROR4__(*(v12 + 4 * ((v79 ^ v36) >> 8)), 24);
  v81 = v77 ^ v18 ^ v36;
  LODWORD(STACK[0x5600]) = v81;
  v82 = v18 ^ v15 ^ v81 ^ v79;
  v83 = v80 ^ v26 ^ v78;
  v84 = v83 ^ v42 ^ v76;
  LODWORD(STACK[0x55F0]) = v83;
  v85 = v82 ^ v84;
  v86 = ((v22 & (v24 & 0xD8BE7190 ^ 0x6C5F38C8)) >> v14) ^ ((v13 & (v24 & 0xD8BE7190 ^ 0x6C5F38C8)) << v16) ^ (((a4 & (v24 & 0xACBE7190 ^ 0xD65F38C8)) >> v14) + ((v13 & (v24 & 0xACBE7190 ^ 0xD65F38C8)) << v16)) ^ __ROR4__(*(v12 + 4 * ((v82 ^ v84) >> 24)), 8) ^ *(v12 + 4 * (v82 ^ v84));
  LODWORD(v26) = __ROR4__(*(v12 + 4 * BYTE2(v85)), 16);
  v87 = v85;
  LODWORD(STACK[0x55A0]) = v85;
  v88 = *(v12 + 4 * BYTE1(v85));
  v89 = v13;
  v90 = v86 ^ v26 ^ v83 ^ __ROR4__(v88, 24);
  v91 = v89;
  v92 = (((a4 & (v24 & 0x19BEC392 ^ 0x8CDF61C9)) >> v14) | ((v89 & (v24 & 0x19BEC392 ^ 0x8CDF61C9)) << v16)) ^ (((v22 & (v24 & 0xC5BEC392 ^ 0xE2DF61C9)) >> v14) + ((v89 & (v24 & 0xC5BEC392 ^ 0xE2DF61C9)) << v16));
  v93 = v87 ^ v42 ^ v90 ^ v77;
  LODWORD(STACK[0x52C8]) = v90 ^ v77;
  LODWORD(STACK[0x57B0]) = v93;
  v94 = v92 ^ __ROR4__(*(v12 + 4 * BYTE1(v93)), 24) ^ *(v12 + 4 * (v87 ^ v42 ^ v90 ^ v77)) ^ __ROR4__(*(v12 + 4 * BYTE2(v93)), 16) ^ __ROR4__(*(v12 + 4 * HIBYTE(v93)), 8);
  v95 = v36;
  LODWORD(STACK[0x52D8]) = ((v84 ^ v15 ^ v90 ^ v77 ^ v94) & 0x94B030D ^ v36 & 0x10B030D | v36 & 0xF4905CF2) ^ (v84 ^ v15 ^ v90 ^ v77 ^ v94) & 0xF6B4FCF2;
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x4E44]) ^ LODWORD(STACK[0x4E80]) ^ v45;
  v96 = STACK[0x5408];
  LODWORD(STACK[0x52F0]) = LODWORD(STACK[0x5560]) ^ (LODWORD(STACK[0x4E38]) + LODWORD(STACK[0x5408]));
  v97 = (v22 | LODWORD(STACK[0x4958])) - (LODWORD(STACK[0x4950]) ^ 0xBDBDBDBD ^ v22);
  v98 = v22;
  v99 = (v22 & STACK[0x4968]) >> v14;
  LODWORD(STACK[0x52E0]) = v99;
  v100 = (v99 + v96) ^ v42 ^ v55;
  LODWORD(STACK[0x52D0]) = v100;
  LODWORD(STACK[0x5308]) = v65 ^ (LODWORD(STACK[0x4FD0]) + LODWORD(STACK[0x53E0]));
  LODWORD(STACK[0x52E8]) = (v67 ^ v95) + LODWORD(STACK[0x4A10]) - 2 * ((v67 ^ v95) & STACK[0x4A10]);
  v101 = STACK[0x53E8];
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x4FC8]) ^ LODWORD(STACK[0x53E8]) ^ v62;
  v102 = STACK[0x4FF8];
  v103 = LODWORD(STACK[0x4F98]) ^ LODWORD(STACK[0x4FF8]) ^ v90;
  LODWORD(STACK[0x5560]) = v103;
  v104 = 16843009 * (v103 - v100 - 34);
  v105 = v104 & STACK[0x5750];
  v106 = (2 * v105) ^ v104;
  v107 = 2 * v105;
  v108 = v91;
  v109 = (v106 & v91) << v16;
  v110 = v98;
  v111 = (v106 & v98) >> v14;
  v112 = LODWORD(STACK[0x4AD0]) ^ LODWORD(STACK[0x5008]);
  LODWORD(STACK[0x5318]) = v112;
  v113 = LODWORD(STACK[0x56F0]) ^ v112;
  v114 = v111 ^ v109;
  v115 = (v111 ^ v109) & 0x2000;
  if ((v115 & v113) != 0)
  {
    v115 = -v115;
  }

  LODWORD(STACK[0x52C0]) = (v115 + v113) ^ v114 & 0xFFFFDFFF;
  LODWORD(STACK[0x5300]) = v107;
  v116 = v107 & 0x2000000;
  if ((v107 & 0x2000000 & v104) != 0)
  {
    v116 = -v116;
  }

  LODWORD(STACK[0x5388]) = v104;
  v117 = (v116 + v104) ^ v107 & 0xFDFFFFFF;
  v118 = v117 & v110;
  v119 = v108;
  v120 = (v118 >> v14) + ((v117 & v108) << v16);
  v121 = STACK[0x4E88];
  v122 = LODWORD(STACK[0x4E70]) | LODWORD(STACK[0x4E88]);
  v123 = LODWORD(STACK[0x5580]) ^ v122;
  LODWORD(STACK[0x5368]) = v122;
  v124 = v123 ^ v120;
  v125 = LODWORD(STACK[0x4AD8]) ^ v121;
  v126 = v125 ^ LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x52A0]) = v125 ^ LODWORD(STACK[0x5670]);
  LODWORD(STACK[0x5580]) = LODWORD(STACK[0x4F80]) ^ LODWORD(STACK[0x5650]);
  LODWORD(STACK[0x52B8]) = LODWORD(STACK[0x4FF0]) ^ v95 ^ LODWORD(STACK[0x5680]);
  LODWORD(STACK[0x55D0]) ^= LODWORD(STACK[0x4FE8]) ^ LODWORD(STACK[0x4AE0]);
  v127 = LODWORD(STACK[0x4FC0]) ^ v95 ^ LODWORD(STACK[0x55E0]);
  LODWORD(STACK[0x52A8]) = LODWORD(STACK[0x4960]) ^ v18 ^ LODWORD(STACK[0x5380]);
  v128 = LODWORD(STACK[0x4970]) ^ v70;
  v129 = (v97 >> v14) | v101;
  v130 = STACK[0x5590];
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x5590]) ^ v129;
  v131 = STACK[0x53D8];
  v132 = LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x5380]) = v132;
  LODWORD(STACK[0x5680]) = v132 ^ v130 ^ LODWORD(STACK[0x5570]);
  v133 = LODWORD(STACK[0x53A0]) ^ v95 ^ LODWORD(STACK[0x5540]);
  v134 = STACK[0x5550];
  LODWORD(STACK[0x5650]) = LODWORD(STACK[0x5550]) ^ (LODWORD(STACK[0x4E68]) | v131);
  LODWORD(STACK[0x5670]) = v133 ^ v134;
  LODWORD(STACK[0x5590]) = v94 ^ v90;
  v135 = v90 ^ v84;
  LODWORD(STACK[0x5610]) = LODWORD(STACK[0x5398]) ^ v95 ^ v84;
  v136 = LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x5320]) = v136;
  LODWORD(STACK[0x55E0]) = LODWORD(STACK[0x5310]) ^ v136 ^ v84;
  v137 = a4;
  v138 = (v106 & a4) >> v14;
  v139 = v138 | v109;
  v140 = v95;
  v141 = (v138 | v109) ^ v95 ^ v122 ^ LODWORD(STACK[0x5780]);
  v142 = LODWORD(STACK[0x4FB8]) | v102;
  LODWORD(STACK[0x5070]) = v142;
  LODWORD(STACK[0x5780]) = (v138 | v109) ^ v95 ^ v142 ^ LODWORD(STACK[0x52C8]);
  v143 = v104 ^ (2 * v105);
  LODWORD(STACK[0x5270]) = v143;
  v144 = STACK[0x5770];
  v145 = (v143 & STACK[0x5770]) >> v14;
  v146 = (v143 & v137) >> v14;
  v147 = (v143 & v119) << v16;
  v148 = v145;
  v149 = v145 ^ v147 ^ v126;
  v150 = v145 ^ v147;
  v151 = v146 | v147;
  v152 = v147;
  v153 = LODWORD(STACK[0x52A0]) ^ (v146 | v147);
  v154 = v127 ^ (v138 | v109);
  LODWORD(STACK[0x5288]) = v138 | v109;
  v155 = v114 ^ v128;
  LODWORD(STACK[0x5550]) = v154 - 432178877 - (v114 ^ v128) - v124;
  v156 = ((v154 + 67 - (v114 ^ v128) - v124) & 1) == 0;
  if ((v154 + 67 - (v114 ^ v128) - v124))
  {
    v157 = v141;
  }

  else
  {
    v157 = v149;
  }

  LODWORD(STACK[0x5570]) = v157;
  if (((v154 + 67 - (v114 ^ v128) - v124) & 1) == 0)
  {
    v149 = v124;
  }

  LODWORD(STACK[0x5540]) = v149;
  if ((v154 + 67 - (v114 ^ v128) - v124))
  {
    v158 = v153;
  }

  else
  {
    v158 = v141;
  }

  LODWORD(STACK[0x52C8]) = v158;
  if ((v154 + 67 - (v114 ^ v128) - v124))
  {
    v159 = v124;
  }

  else
  {
    v159 = v153;
  }

  LODWORD(STACK[0x5298]) = v159;
  v160 = LODWORD(STACK[0x4E34]) ^ LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x5310]) = v160;
  v161 = v111 + v109;
  LODWORD(STACK[0x5290]) = v160 ^ v18 ^ v135 ^ (v111 + v109) ^ v140;
  v162 = STACK[0x4AC8];
  v163 = v140;
  v164 = LODWORD(STACK[0x5760]) ^ v140 ^ (LODWORD(STACK[0x4940]) + LODWORD(STACK[0x4AC8]));
  v165 = STACK[0x52D8];
  LODWORD(STACK[0x5248]) = LODWORD(STACK[0x52D8]) ^ LODWORD(STACK[0x4FA0]) ^ (v111 + v109) ^ v140;
  v166 = v146 ^ v152;
  LODWORD(STACK[0x51E0]) = v164 ^ LODWORD(STACK[0x57B0]) ^ v146 ^ v152 ^ v165;
  v167 = LODWORD(STACK[0x5000]) + LODWORD(STACK[0x5008]);
  LODWORD(STACK[0x5068]) = v167;
  v168 = v150 ^ v167 ^ LODWORD(STACK[0x5530]);
  v169 = v150;
  LODWORD(STACK[0x4E28]) = v150;
  v170 = LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x53C0]) ^ v139;
  v171 = LODWORD(STACK[0x5520]) ^ v167 ^ v151;
  if (v156)
  {
    v172 = LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x53C0]) ^ v139;
  }

  else
  {
    v172 = v168;
  }

  LODWORD(STACK[0x5198]) = v172;
  if (!v156)
  {
    v168 = v171;
  }

  LODWORD(STACK[0x5260]) = v168;
  v173 = STACK[0x52C0];
  if (v156)
  {
    v170 = STACK[0x52C0];
  }

  LODWORD(STACK[0x5258]) = v170;
  if (v156)
  {
    v173 = v171;
  }

  LODWORD(STACK[0x51A0]) = v173;
  v174 = STACK[0x4948];
  v175 = (v144 & STACK[0x4948]) >> v14;
  LODWORD(STACK[0x52C0]) = v175;
  v176 = v175 + v162;
  LODWORD(STACK[0x5280]) = v176;
  v177 = v176 ^ v163 ^ v135;
  v178 = LODWORD(STACK[0x52E0]) | LODWORD(STACK[0x5408]);
  LODWORD(STACK[0x51B0]) = v178;
  v179 = LODWORD(STACK[0x5720]) ^ v178;
  v180 = LODWORD(STACK[0x52F0]) ^ v151;
  LODWORD(STACK[0x5218]) = v148;
  v181 = v179 ^ (v148 + v152);
  LODWORD(STACK[0x5250]) = v148 + v152;
  v182 = (v109 | v111) ^ LODWORD(STACK[0x52D0]);
  v183 = v109 | v111;
  v184 = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x4FE0]) ^ v139;
  if (v156)
  {
    v185 = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x4FE0]) ^ v139;
  }

  else
  {
    v185 = v180;
  }

  LODWORD(STACK[0x52D8]) = v185;
  if (v156)
  {
    v186 = v181;
  }

  else
  {
    v186 = v184;
  }

  LODWORD(STACK[0x5720]) = v186;
  if (v156)
  {
    v187 = v182;
  }

  else
  {
    v187 = v181;
  }

  LODWORD(STACK[0x5278]) = v187;
  if (v156)
  {
    v188 = v180;
  }

  else
  {
    v188 = v182;
  }

  LODWORD(STACK[0x52F0]) = v188;
  v189 = v166 ^ LODWORD(STACK[0x5580]);
  v190 = v146 ^ v152;
  LODWORD(STACK[0x5228]) = v166;
  LODWORD(STACK[0x52F8]) = v114;
  v191 = v114 ^ LODWORD(STACK[0x5378]);
  v192 = LODWORD(STACK[0x52B8]) ^ v114;
  v193 = LODWORD(STACK[0x55D0]) ^ v151;
  if (v156)
  {
    v194 = LODWORD(STACK[0x55D0]) ^ v151;
  }

  else
  {
    v194 = v114 ^ LODWORD(STACK[0x5378]);
  }

  LODWORD(STACK[0x52E0]) = v194;
  if (!v156)
  {
    v191 = v189;
  }

  LODWORD(STACK[0x55D0]) = v191;
  if (v156)
  {
    v195 = v189;
  }

  else
  {
    v195 = v192;
  }

  if (v156)
  {
    v196 = v192;
  }

  else
  {
    v196 = v193;
  }

  LODWORD(STACK[0x5580]) = v196;
  v197 = LODWORD(STACK[0x52A8]) ^ v109;
  v198 = v109;
  LODWORD(STACK[0x5200]) = v109;
  v199 = v138;
  LODWORD(STACK[0x51F8]) = v138;
  v200 = v197 ^ v138;
  LODWORD(STACK[0x5220]) = v152;
  v201 = v146 + v152;
  v202 = (v146 + v152) ^ LODWORD(STACK[0x52E8]);
  v203 = v201;
  LODWORD(STACK[0x5238]) = v201;
  v204 = LODWORD(STACK[0x5308]) ^ (v148 + v152);
  if (v156)
  {
    v205 = v155;
  }

  else
  {
    v205 = LODWORD(STACK[0x5308]) ^ (v148 + v152);
  }

  LODWORD(STACK[0x5378]) = v205;
  if (!v156)
  {
    v204 = v200;
  }

  LODWORD(STACK[0x52D0]) = v204;
  if (v156)
  {
    v155 = v202;
  }

  LODWORD(STACK[0x51D8]) = v155;
  if (v156)
  {
    v202 = v200;
  }

  LODWORD(STACK[0x52B8]) = v202;
  v206 = LODWORD(STACK[0x4FC8]) | LODWORD(STACK[0x53E8]);
  LODWORD(STACK[0x51A8]) = v206;
  v207 = LODWORD(STACK[0x56D0]) ^ v206 ^ v151;
  v208 = v161;
  LODWORD(STACK[0x5210]) = v161;
  v209 = v161 ^ LODWORD(STACK[0x52B0]);
  v210 = v148 | v152;
  if (v156)
  {
    v211 = v209;
  }

  else
  {
    v211 = v154;
  }

  if (v156)
  {
    v212 = v154;
  }

  else
  {
    v212 = LODWORD(STACK[0x5358]) ^ v210;
  }

  if (v156)
  {
    v213 = v207;
  }

  else
  {
    v213 = v209;
  }

  if (v156)
  {
    v214 = LODWORD(STACK[0x5358]) ^ v210;
  }

  else
  {
    v214 = v207;
  }

  v215 = ((STACK[0x5710] & v174) >> LODWORD(STACK[0x5790])) | v162;
  LODWORD(STACK[0x5268]) = v215;
  v216 = v177 ^ v151 ^ LODWORD(STACK[0x5590]);
  v217 = LODWORD(STACK[0x5590]) ^ v215 ^ v183;
  v218 = STACK[0x53A8];
  v219 = LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x53A8]) ^ (v199 + v198);
  v220 = v199 + v198;
  LODWORD(STACK[0x52A8]) = v199 + v198;
  v221 = LODWORD(STACK[0x5410]) + LODWORD(STACK[0x5400]);
  v222 = LODWORD(STACK[0x5600]) ^ v221;
  v223 = v221;
  LODWORD(STACK[0x5060]) = v221;
  v224 = v222 ^ v208;
  v225 = v169 ^ LODWORD(STACK[0x5390]) ^ LODWORD(STACK[0x55C0]);
  v226 = LODWORD(STACK[0x5660]) ^ v218 ^ v151;
  if (v156)
  {
    v227 = v224;
  }

  else
  {
    v227 = LODWORD(STACK[0x5660]) ^ v218 ^ v151;
  }

  LODWORD(STACK[0x52A0]) = v227;
  if (v156)
  {
    v228 = v226;
  }

  else
  {
    v228 = v219;
  }

  if (v156)
  {
    v229 = v219;
  }

  else
  {
    v229 = v225;
  }

  LODWORD(STACK[0x52B0]) = v229;
  if (v156)
  {
    v230 = v225;
  }

  else
  {
    v230 = v224;
  }

  v231 = LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5380]);
  v232 = LODWORD(STACK[0x5650]) ^ v203;
  v233 = LODWORD(STACK[0x5680]) ^ v208;
  v234 = v183;
  LODWORD(STACK[0x5240]) = v183;
  v235 = LODWORD(STACK[0x5670]) ^ v183;
  v236 = v231 ^ v190;
  if (v156)
  {
    v237 = v236;
  }

  else
  {
    v237 = v232;
  }

  if (v156)
  {
    v238 = v232;
  }

  else
  {
    v238 = v233;
  }

  if (v156)
  {
    v239 = v233;
  }

  else
  {
    v239 = v235;
  }

  if (v156)
  {
    v240 = v235;
  }

  else
  {
    v240 = v236;
  }

  v241 = LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x4FB0]);
  v242 = LODWORD(STACK[0x55F0]) ^ v223 ^ v220;
  v243 = v210;
  LODWORD(STACK[0x5230]) = v210;
  v244 = LODWORD(STACK[0x5610]) ^ v210;
  LODWORD(STACK[0x5208]) = v151;
  v245 = LODWORD(STACK[0x55E0]) ^ v151;
  v246 = v241 ^ v234;
  if (v156)
  {
    v247 = LODWORD(STACK[0x55E0]) ^ v151;
  }

  else
  {
    v247 = v246;
  }

  if (v156)
  {
    v248 = v246;
  }

  else
  {
    v248 = v242;
  }

  if (v156)
  {
    v245 = v244;
  }

  else
  {
    v242 = v244;
  }

  v249 = LODWORD(STACK[0x5108]) + LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x5058]) = v249;
  v250 = v151 ^ LODWORD(STACK[0x5560]);
  v251 = LODWORD(STACK[0x57B0]) ^ v249 ^ v243;
  if (v156)
  {
    v252 = STACK[0x5290];
  }

  else
  {
    v252 = STACK[0x5780];
  }

  if (v156)
  {
    v253 = v151 ^ LODWORD(STACK[0x5560]);
  }

  else
  {
    v253 = STACK[0x5290];
  }

  if (v156)
  {
    v250 = v251;
    v254 = STACK[0x5780];
  }

  else
  {
    v254 = v251;
  }

  if (v156)
  {
    v255 = v216;
  }

  else
  {
    v255 = STACK[0x5248];
  }

  v256 = STACK[0x51E0];
  if (v156)
  {
    v257 = STACK[0x5248];
  }

  else
  {
    v257 = STACK[0x51E0];
  }

  if (!v156)
  {
    v256 = v217;
    v217 = v216;
  }

  v258 = (STACK[0x5550] & 2) == 0;
  v259 = STACK[0x5570];
  v260 = STACK[0x5298];
  if ((STACK[0x5550] & 2) != 0)
  {
    v261 = STACK[0x5298];
  }

  else
  {
    v261 = STACK[0x5570];
  }

  LODWORD(STACK[0x57B0]) = v261;
  if (v258)
  {
    v262 = v260;
  }

  else
  {
    v262 = v259;
  }

  LODWORD(STACK[0x55C0]) = v262;
  v263 = STACK[0x5540];
  v264 = STACK[0x52C8];
  if (v258)
  {
    v265 = STACK[0x52C8];
  }

  else
  {
    v265 = STACK[0x5540];
  }

  LODWORD(STACK[0x5780]) = v265;
  if (v258)
  {
    v266 = v263;
  }

  else
  {
    v266 = v264;
  }

  LODWORD(STACK[0x5730]) = v266;
  v267 = STACK[0x52E0];
  if (v258)
  {
    v268 = v195;
  }

  else
  {
    v268 = STACK[0x52E0];
  }

  LODWORD(STACK[0x55B0]) = v268;
  if (v258)
  {
    v269 = v267;
  }

  else
  {
    v269 = v195;
  }

  LODWORD(STACK[0x5308]) = v269;
  v270 = STACK[0x55D0];
  v271 = STACK[0x5580];
  if (v258)
  {
    v272 = STACK[0x55D0];
  }

  else
  {
    v272 = STACK[0x5580];
  }

  LODWORD(STACK[0x5650]) = v272;
  if (v258)
  {
    v273 = v271;
  }

  else
  {
    v273 = v270;
  }

  LODWORD(STACK[0x5600]) = v273;
  if (v258)
  {
    v274 = v237;
  }

  else
  {
    v274 = v239;
  }

  LODWORD(STACK[0x55F0]) = v274;
  if (!v258)
  {
    v239 = v237;
  }

  LODWORD(STACK[0x5610]) = v239;
  v275 = STACK[0x5260];
  v276 = STACK[0x5258];
  if (v258)
  {
    v277 = STACK[0x5258];
  }

  else
  {
    v277 = STACK[0x5260];
  }

  LODWORD(STACK[0x5660]) = v277;
  if (v258)
  {
    v278 = v275;
  }

  else
  {
    v278 = v276;
  }

  LODWORD(STACK[0x56D0]) = v278;
  v279 = STACK[0x5720];
  v280 = STACK[0x52F0];
  if (v258)
  {
    v281 = STACK[0x52F0];
  }

  else
  {
    v281 = STACK[0x5720];
  }

  LODWORD(STACK[0x5580]) = v281;
  if (v258)
  {
    v282 = v279;
  }

  else
  {
    v282 = v280;
  }

  LODWORD(STACK[0x55A0]) = v282;
  if (v258)
  {
    v283 = v213;
  }

  else
  {
    v283 = v212;
  }

  LODWORD(STACK[0x5680]) = v283;
  if (v258)
  {
    v284 = v212;
  }

  else
  {
    v284 = v213;
  }

  LODWORD(STACK[0x52F0]) = v284;
  if (v258)
  {
    v285 = v211;
  }

  else
  {
    v285 = v214;
  }

  LODWORD(STACK[0x52E0]) = v285;
  if (v258)
  {
    v286 = v214;
  }

  else
  {
    v286 = v211;
  }

  LODWORD(STACK[0x52E8]) = v286;
  if (v258)
  {
    v287 = v252;
  }

  else
  {
    v287 = v250;
  }

  LODWORD(STACK[0x5298]) = v287;
  if (v258)
  {
    v252 = v250;
  }

  LODWORD(STACK[0x55D0]) = v252;
  v288 = STACK[0x5378];
  v289 = STACK[0x52B8];
  if (v258)
  {
    v290 = STACK[0x5378];
  }

  else
  {
    v290 = STACK[0x52B8];
  }

  LODWORD(STACK[0x52C8]) = v290;
  if (v258)
  {
    v291 = v289;
  }

  else
  {
    v291 = v288;
  }

  LODWORD(STACK[0x52B8]) = v291;
  v292 = STACK[0x52D0];
  v293 = STACK[0x51D8];
  if (v258)
  {
    v294 = STACK[0x52D0];
  }

  else
  {
    v294 = STACK[0x51D8];
  }

  LODWORD(STACK[0x5720]) = v294;
  if (v258)
  {
    v295 = v293;
  }

  else
  {
    v295 = v292;
  }

  LODWORD(STACK[0x52D0]) = v295;
  if (v258)
  {
    v296 = v230;
  }

  else
  {
    v296 = v228;
  }

  LODWORD(STACK[0x5260]) = v296;
  if (v258)
  {
    v297 = v228;
  }

  else
  {
    v297 = v230;
  }

  LODWORD(STACK[0x5590]) = v297;
  if (v258)
  {
    v298 = v245;
  }

  else
  {
    v298 = v248;
  }

  LODWORD(STACK[0x5290]) = v298;
  if (v258)
  {
    v299 = v248;
  }

  else
  {
    v299 = v245;
  }

  LODWORD(STACK[0x5378]) = v299;
  if (v258)
  {
    v300 = v242;
  }

  else
  {
    v300 = v247;
  }

  LODWORD(STACK[0x5248]) = v300;
  if (v258)
  {
    v301 = v247;
  }

  else
  {
    v301 = v242;
  }

  LODWORD(STACK[0x5258]) = v301;
  v302 = STACK[0x52D8];
  v303 = STACK[0x5278];
  if (v258)
  {
    v304 = STACK[0x52D8];
  }

  else
  {
    v304 = STACK[0x5278];
  }

  LODWORD(STACK[0x5540]) = v304;
  if (v258)
  {
    v305 = v303;
  }

  else
  {
    v305 = v302;
  }

  LODWORD(STACK[0x5670]) = v305;
  if (v258)
  {
    v306 = v238;
  }

  else
  {
    v306 = v240;
  }

  LODWORD(STACK[0x52D8]) = v306;
  if (v258)
  {
    v307 = v240;
  }

  else
  {
    v307 = v238;
  }

  LODWORD(STACK[0x55E0]) = v307;
  if (v258)
  {
    v308 = v256;
  }

  else
  {
    v308 = v255;
  }

  LODWORD(STACK[0x5570]) = v308;
  if (v258)
  {
    v309 = v255;
  }

  else
  {
    v309 = v256;
  }

  LODWORD(STACK[0x5278]) = v309;
  if (v258)
  {
    v310 = v217;
  }

  else
  {
    v310 = v257;
  }

  LODWORD(STACK[0x5358]) = v310;
  if (v258)
  {
    v311 = v257;
  }

  else
  {
    v311 = v217;
  }

  LODWORD(STACK[0x5560]) = v311;
  if (v258)
  {
    v312 = v253;
  }

  else
  {
    v312 = v254;
  }

  LODWORD(STACK[0x56C0]) = v312;
  if (v258)
  {
    v313 = v254;
  }

  else
  {
    v313 = v253;
  }

  LODWORD(STACK[0x5550]) = v313;
  v314 = STACK[0x5710];
  v315 = STACK[0x4E90];
  v316 = STACK[0x5700];
  v317 = STACK[0x5770];
  v318 = (((STACK[0x5710] & (STACK[0x4E90] & 0xCAADBCC8 ^ 0x6556DE64)) >> LODWORD(STACK[0x5790])) + ((STACK[0x5700] & (STACK[0x4E90] & 0xCAADBCC8 ^ 0x6556DE64)) << LODWORD(STACK[0x57A0]))) ^ (((STACK[0x5770] & (STACK[0x4E90] & 0x7CADBCC8 ^ 0xBE56DE64)) >> LODWORD(STACK[0x5790])) + ((STACK[0x5700] & (STACK[0x4E90] & 0x7CADBCC8 ^ 0xBE56DE64)) << LODWORD(STACK[0x57A0]))) ^ LODWORD(STACK[0x5620]) ^ HIWORD(LODWORD(STACK[0x5370])) ^ (LODWORD(STACK[0x5370]) << 16) ^ LODWORD(STACK[0x5328]) ^ LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5360]);
  v319 = STACK[0x4AE0];
  v320 = LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x4AE0]) ^ v318;
  v321 = v318;
  LODWORD(STACK[0x5328]) = v318;
  v322 = STACK[0x5630];
  LODWORD(v324) = (LODWORD(STACK[0x5630]) << 7) ^ __ROR4__(v320, 25) ^ 0x19E95ED3;
  v323 = v324;
  HIDWORD(v324) = v324;
  HIDWORD(v324) = (v324 >> 3) & 0xE000000F;
  LODWORD(v324) = HIDWORD(v324);
  v325 = 8 * (v324 >> 7) + (v323 >> 7);
  v326 = ((v317 & (v315 & 0x4C38AF70 ^ 0xA61C57B8)) >> LODWORD(STACK[0x5790])) + ((v316 & (v315 & 0x4C38AF70 ^ 0xA61C57B8)) << LODWORD(STACK[0x57A0]));
  v327 = v314;
  v328 = ((v314 & (v315 & 0x3038AF70 ^ 0x981C57B8)) >> LODWORD(STACK[0x5790])) | ((v316 & (v315 & 0x3038AF70 ^ 0x981C57B8)) << LODWORD(STACK[0x57A0]));
  v329 = LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5630]) ^ v325;
  v330 = v329 ^ LODWORD(STACK[0x5760]);
  v331 = v319 ^ LODWORD(STACK[0x56F0]) ^ 0x5233D2BD ^ v330;
  LODWORD(STACK[0x5360]) = v330;
  v332 = v328 ^ v326 ^ __ROR4__(*(v12 + 4 * BYTE1(v331)), 24) ^ __ROR4__(*(v12 + 4 * HIBYTE(v331)), 8);
  v333 = *(v12 + 4 * BYTE2(v331));
  LODWORD(STACK[0x51D8]) = v331;
  v334 = v332 ^ __ROR4__(v333, 16) ^ *(v12 + 4 * v331) ^ v321;
  LODWORD(STACK[0x51E0]) = v325 ^ 0x5233D2BD;
  v335 = v334;
  LODWORD(STACK[0x51C8]) = v334;
  v336 = (v325 ^ 0x5233D2BD) + (v334 ^ v322) - 2 * ((v325 ^ 0x5233D2BD) & (v334 ^ v322));
  v337 = ((v317 & (v315 & 0x60206F5E ^ 0x301037AF)) >> LODWORD(STACK[0x5790])) ^ ((v316 & (v315 & 0x60206F5E ^ 0x301037AF)) << LODWORD(STACK[0x57A0])) ^ (((v327 & (v315 & 0xC2206F5E ^ 0x611037AF)) >> LODWORD(STACK[0x5790])) + ((v316 & (v315 & 0xC2206F5E ^ 0x611037AF)) << LODWORD(STACK[0x57A0])));
  v338 = LODWORD(STACK[0x4E78]) ^ LODWORD(STACK[0x5740]) ^ v330 ^ v331 ^ 0xA0C1204F;
  v339 = STACK[0x5740];
  v340 = v338 ^ v336 ^ LODWORD(STACK[0x5740]);
  v341 = v336 ^ LODWORD(STACK[0x5740]);
  LODWORD(STACK[0x5370]) = v341;
  v342 = v337 ^ __ROR4__(*(v12 + 4 * BYTE1(v340)), 24) ^ __ROR4__(*(v12 + 4 * BYTE2(v340)), 16) ^ v335 ^ __ROR4__(*(v12 + 4 * HIBYTE(v340)), 8) ^ *(v12 + 4 * v340);
  v343 = (((v327 & (v315 & 0x12E8BE9C ^ 0x9745F4Eu)) >> LODWORD(STACK[0x5790])) | ((v316 & (v315 & 0x12E8BE9C ^ 0x9745F4E)) << LODWORD(STACK[0x57A0]))) ^ (((v317 & (v315 & 0xDCE8BE9C ^ 0x6E745F4E)) >> LODWORD(STACK[0x5790])) | ((v316 & (v315 & 0xDCE8BE9C ^ 0x6E745F4E)) << LODWORD(STACK[0x57A0])));
  v344 = v329 ^ 0x5233D2BD;
  LODWORD(STACK[0x5330]) = v329 ^ 0x5233D2BD;
  v345 = v340 ^ v339;
  v346 = v339;
  v347 = v344 ^ v342;
  v348 = v347 ^ v322 ^ v340 ^ v339;
  v349 = v347;
  LODWORD(STACK[0x5178]) = v347;
  v350 = v343 ^ __ROR4__(*(v12 + 4 * BYTE2(v348)), 16) ^ __ROR4__(*(v12 + 4 * BYTE1(v348)), 24) ^ __ROR4__(*(v12 + 4 * HIBYTE(v348)), 8) ^ *(v12 + 4 * v348);
  v351 = v336 ^ v350;
  v352 = STACK[0x4A20];
  v353 = v351 ^ LODWORD(STACK[0x4A20]) ^ v345;
  v354 = (*(v12 + 4 * BYTE1(v353)) << (*(v12 + 4 * BYTE1(v353)) & 8) << (*(v12 + 4 * BYTE1(v353)) & 8 ^ 8)) + HIBYTE(*(v12 + 4 * BYTE1(v353)));
  v355 = ((v327 & (v315 & 0x3C9F2CD8 ^ 0x9E4F966C)) >> LODWORD(STACK[0x5790])) ^ ((v316 & (v315 & 0x3C9F2CD8 ^ 0x9E4F966C)) << LODWORD(STACK[0x57A0])) ^ (((v317 & (v315 & 0x4C9F2CD8 ^ 0xA64F966C)) >> LODWORD(STACK[0x5790])) + ((v316 & (v315 & 0x4C9F2CD8 ^ 0xA64F966C)) << LODWORD(STACK[0x57A0]))) ^ *(v12 + 4 * v353) ^ __ROR4__(*(v12 + 4 * HIBYTE(v353)), 8);
  v356 = v342;
  LODWORD(STACK[0x5190]) = v342;
  v357 = v350 ^ v342;
  LODWORD(STACK[0x51D0]) = v350 ^ v342;
  v358 = v355 ^ v350 ^ v342 ^ v354 ^ __ROR4__(*(v12 + 4 * BYTE2(v353)), 16);
  v359 = ((v327 & (v315 & 0x60836E40 ^ 0x3041B720u)) >> LODWORD(STACK[0x5790])) | ((v316 & (v315 & 0x60836E40 ^ 0x3041B720)) << LODWORD(STACK[0x57A0]));
  v360 = v316;
  v361 = ((v317 & (v315 & 0x12836E40 ^ 0x941B720)) >> LODWORD(STACK[0x5790])) | ((v316 & (v315 & 0x12836E40 ^ 0x941B720)) << LODWORD(STACK[0x57A0]));
  v362 = v356 ^ LODWORD(STACK[0x5760]) ^ v341;
  LODWORD(STACK[0x5180]) = v362;
  v363 = v352;
  v364 = v357 ^ v352 ^ v362;
  LODWORD(STACK[0x5188]) = v364;
  v365 = v351 ^ v349;
  v366 = v322 ^ v364;
  v367 = v358;
  LODWORD(STACK[0x5168]) = v358;
  v368 = v358 ^ v366;
  v369 = v365 ^ v363 ^ v353 ^ v368;
  v370 = v359 ^ v361 ^ *(v12 + 4 * (v365 ^ v363 ^ v353 ^ v368)) ^ __ROR4__(*(v12 + 4 * HIBYTE(v369)), 8) ^ __ROR4__(*(v12 + 4 * BYTE1(v369)), 24) ^ v367 ^ __ROR4__(*(v12 + 4 * BYTE2(v369)), 16);
  v371 = ((v317 & (v315 & 0x3B38CA6A ^ 0x1D9C6535)) >> LODWORD(STACK[0x5790])) ^ ((v360 & (v315 & 0x3B38CA6A ^ 0x1D9C6535)) << LODWORD(STACK[0x57A0])) ^ (((v327 & (v315 & 0x7938CA6A ^ 0xBC9C6535)) >> LODWORD(STACK[0x5790])) + ((v360 & (v315 & 0x7938CA6A ^ 0xBC9C6535)) << LODWORD(STACK[0x57A0])));
  v372 = v346;
  v373 = v368 ^ v346;
  v374 = v368 ^ v346 ^ v365;
  LODWORD(STACK[0x5158]) = v374;
  v375 = v374 ^ LODWORD(STACK[0x5760]) ^ v369;
  v376 = STACK[0x5760];
  LODWORD(STACK[0x5150]) = v370;
  v377 = v370 ^ v376;
  v378 = v377 ^ v373;
  v379 = v375 ^ v377 ^ v373;
  v380 = v371 ^ __ROR4__(*(v12 + 4 * HIBYTE(v379)), 8) ^ v370 ^ *(v12 + 4 * (v375 ^ v377 ^ v373)) ^ __ROR4__(*(v12 + 4 * BYTE2(v379)), 16) ^ __ROR4__(*(v12 + 4 * BYTE1(v379)), 24);
  v381 = v315 & 0x75372DB0 ^ 0xBA9B96D8;
  v382 = v315;
  v383 = v315 & 0x7372DB0 ^ 0x39B96D8;
  v384 = v327;
  *(v17 - 152) = v30;
  v385 = ((v317 & v381 ^ v327 & v383) >> LODWORD(STACK[0x5790])) ^ ((v360 & (v381 ^ v383)) << LODWORD(STACK[0x57A0]));
  v386 = v377 ^ v365;
  v387 = v380 ^ v377 ^ v373 ^ v377 ^ v365;
  LODWORD(STACK[0x5148]) = v387;
  v388 = v380;
  LODWORD(STACK[0x5170]) = v380;
  v389 = v387 ^ v379;
  LODWORD(STACK[0x51C0]) = v389 ^ v363;
  v390 = v385 ^ __ROR4__(*(v12 + 4 * ((v389 ^ v363) >> 16)), 16) ^ __ROR4__(*(v12 + 4 * ((v389 ^ v363) >> 8)), 24) ^ *(v12 + 4 * (v389 ^ v363)) ^ __ROR4__(*(v12 + 4 * ((v389 ^ v363) >> 24)), 8);
  v391 = ((v317 & (v382 & 0x73E5E0D0 ^ 0x39F2F068)) >> LODWORD(STACK[0x5790])) ^ ((v360 & (v382 & 0x73E5E0D0 ^ 0x39F2F068)) << LODWORD(STACK[0x57A0]));
  v392 = v382;
  v393 = v382 & 0x7E5E0D0 ^ 0x83F2F068;
  v394 = v360;
  v395 = v391 ^ (((v327 & v393) >> LODWORD(STACK[0x5790])) + ((v360 & v393) << LODWORD(STACK[0x57A0])));
  v396 = v390 ^ v388;
  LODWORD(STACK[0x5160]) = v390 ^ v388 ^ v386;
  v397 = v390 ^ v388 ^ v386 ^ v372;
  v398 = v397 ^ v389;
  v399 = v398 ^ v322;
  v400 = v395 ^ __ROR4__(*(v12 + 4 * BYTE2(v399)), 16) ^ __ROR4__(*(v12 + 4 * HIBYTE(v399)), 8) ^ v396 ^ *(v12 + 4 * (v398 ^ v322)) ^ __ROR4__(*(v12 + 4 * BYTE1(v399)), 24);
  v401 = ((v317 & (v392 & 0xE036D50A ^ 0x701B6A85)) >> LODWORD(STACK[0x5790])) + ((v394 & (v392 & 0xE036D50A ^ 0x701B6A85)) << LODWORD(STACK[0x57A0]));
  v402 = ((v384 & (v392 & 0x3C36D50A ^ 0x1E1B6A85u)) >> LODWORD(STACK[0x5790])) ^ ((v394 & (v392 & 0x3C36D50A ^ 0x1E1B6A85)) << LODWORD(STACK[0x57A0]));
  v403 = v390 ^ v378;
  LODWORD(STACK[0x5140]) = v400 ^ v390 ^ v378;
  v404 = v400 ^ v390 ^ v378 ^ v397;
  v405 = v398 ^ LODWORD(STACK[0x5760]) ^ v404;
  LODWORD(STACK[0x5088]) = v402 ^ v401 ^ __ROR4__(*(v12 + 4 * BYTE1(v405)), 24) ^ __ROR4__(*(v12 + 4 * HIBYTE(v405)), 8) ^ v400 ^ __ROR4__(*(v12 + 4 * BYTE2(v405)), 16) ^ *(v12 + 4 * (v398 ^ LOBYTE(STACK[0x5760]) ^ v404));
  LODWORD(STACK[0x5080]) = LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x4978]);
  v406 = LODWORD(STACK[0x49D8]) + 387389207 - (STACK[0x4A08] & 0xC0C0C0C);
  LODWORD(STACK[0x5530]) = ((v317 & v406) >> LODWORD(STACK[0x5790])) | ((v394 & v406) << LODWORD(STACK[0x57A0]));
  LODWORD(STACK[0x5078]) = LODWORD(STACK[0x52C0]) | LODWORD(STACK[0x4AC8]);
  v407 = LODWORD(STACK[0x51F8]) ^ LODWORD(STACK[0x5200]);
  v408 = LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x5620]);
  v409 = STACK[0x5008];
  v410 = LODWORD(STACK[0x5520]) ^ (LODWORD(STACK[0x4AD0]) + LODWORD(STACK[0x5008]));
  LODWORD(STACK[0x5200]) = LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x5328]);
  LODWORD(STACK[0x51F8]) = LODWORD(STACK[0x5000]) ^ v409 ^ LODWORD(STACK[0x56F0]);
  v411 = LODWORD(STACK[0x5300]) + LODWORD(STACK[0x5388]) - 2 * (STACK[0x5300] & LODWORD(STACK[0x5388]));
  LODWORD(STACK[0x5520]) = LODWORD(STACK[0x4FE8]) ^ v322 ^ ((v411 & v394) << LODWORD(STACK[0x57A0])) ^ ((v411 & v317) >> LODWORD(STACK[0x5790])) ^ LODWORD(STACK[0x5370]);
  v412 = (LODWORD(STACK[0x4E44]) | LODWORD(STACK[0x4E80])) ^ LODWORD(STACK[0x51C8]);
  v413 = LODWORD(STACK[0x4FF0]) ^ v340;
  LODWORD(STACK[0x5178]) ^= LODWORD(STACK[0x5350]) ^ v322;
  v414 = v322;
  v415 = LODWORD(STACK[0x4FE0]) ^ v322 ^ LODWORD(STACK[0x5180]);
  LODWORD(STACK[0x5180]) = LODWORD(STACK[0x4FD8]) ^ LODWORD(STACK[0x5408]) ^ v348;
  v416 = STACK[0x53E0];
  v417 = LODWORD(STACK[0x53B8]) ^ LODWORD(STACK[0x53E0]) ^ LODWORD(STACK[0x5168]);
  v418 = STACK[0x5208];
  LODWORD(STACK[0x5318]) = LODWORD(STACK[0x5208]) ^ LODWORD(STACK[0x51B0]) ^ LODWORD(STACK[0x5190]);
  LODWORD(STACK[0x56F0]) = v417 ^ v418;
  v419 = LODWORD(STACK[0x49D0]) ^ LODWORD(STACK[0x5188]);
  v420 = LODWORD(STACK[0x4FD0]) ^ v416;
  v421 = v420 ^ v414 ^ v373;
  v422 = STACK[0x5740];
  v423 = LODWORD(STACK[0x5740]) ^ v414;
  LODWORD(STACK[0x5190]) = v423 ^ LODWORD(STACK[0x4A10]) ^ LODWORD(STACK[0x5158]);
  v424 = LODWORD(STACK[0x5380]) ^ LODWORD(STACK[0x5150]);
  v425 = LODWORD(STACK[0x5380]) ^ v386;
  v426 = STACK[0x52A8];
  LODWORD(STACK[0x51C8]) = v410 ^ LODWORD(STACK[0x52A8]);
  LODWORD(STACK[0x5208]) = v426 ^ v413;
  LODWORD(STACK[0x5380]) = v425 ^ v426;
  v427 = STACK[0x5198];
  v428 = STACK[0x51A0];
  if (v258)
  {
    v429 = STACK[0x51A0];
  }

  else
  {
    v429 = STACK[0x5198];
  }

  LODWORD(STACK[0x5620]) = v429;
  if (v258)
  {
    v428 = v427;
  }

  LODWORD(STACK[0x5328]) = v428;
  v430 = STACK[0x52A0];
  v431 = STACK[0x52B0];
  if (v258)
  {
    v432 = STACK[0x52B0];
  }

  else
  {
    v432 = STACK[0x52A0];
  }

  LODWORD(STACK[0x52C0]) = v432;
  if (v258)
  {
    v431 = v430;
  }

  LODWORD(STACK[0x52A8]) = v431;
  v433 = v420 ^ v369;
  v434 = LODWORD(STACK[0x5270]) ^ LODWORD(STACK[0x4AF0]);
  if (LODWORD(STACK[0x49F0]) == 255)
  {
    v434 = 0;
  }

  v435 = v434 & STACK[0x5270];
  v436 = STACK[0x5218] & LODWORD(STACK[0x5220]);
  LODWORD(STACK[0x5220]) = LODWORD(STACK[0x5218]) ^ LODWORD(STACK[0x53A0]) ^ v379 ^ (v435 << LODWORD(STACK[0x57A0]));
  v437 = STACK[0x5210];
  LODWORD(STACK[0x5270]) = v415 ^ LODWORD(STACK[0x5210]);
  LODWORD(STACK[0x5300]) = v421 ^ v437;
  LODWORD(STACK[0x5188]) = v437 ^ LODWORD(STACK[0x51A8]) ^ v365;
  v438 = LODWORD(STACK[0x4FB0]) ^ v414 ^ LODWORD(STACK[0x5148]);
  v439 = LODWORD(STACK[0x4F90]) ^ v414 ^ v378;
  v440 = v423 ^ LODWORD(STACK[0x5390]) ^ v378;
  v441 = LODWORD(STACK[0x53A8]) ^ v414 ^ v403;
  v442 = LODWORD(STACK[0x5320]) ^ v396;
  v443 = v407 ^ v408;
  LODWORD(STACK[0x5210]) = v407 ^ v424;
  LODWORD(STACK[0x5320]) = v407 ^ LODWORD(STACK[0x49C0]) ^ v414 ^ v404;
  v444 = v414 ^ (LODWORD(STACK[0x4E34]) | LODWORD(STACK[0x53D0]));
  v445 = LODWORD(STACK[0x4AD8]) + LODWORD(STACK[0x4E88]);
  LODWORD(STACK[0x5050]) = v445;
  v446 = STACK[0x5228];
  v447 = LODWORD(STACK[0x5228]) ^ LODWORD(STACK[0x5338]) ^ LODWORD(STACK[0x51E0]);
  v448 = LODWORD(STACK[0x5228]) ^ v445 ^ LODWORD(STACK[0x51D8]);
  v449 = LODWORD(STACK[0x5228]) ^ v412;
  LODWORD(STACK[0x5218]) = v438 ^ LODWORD(STACK[0x5228]);
  LODWORD(STACK[0x5630]) = v446 ^ LODWORD(STACK[0x4B38]) ^ v400;
  v450 = STACK[0x5238];
  LODWORD(STACK[0x51D8]) = LODWORD(STACK[0x5238]) ^ v419;
  v451 = LODWORD(STACK[0x4B40]) + LODWORD(STACK[0x53E8]);
  LODWORD(STACK[0x5048]) = v451;
  LODWORD(STACK[0x5168]) = v450 ^ v451 ^ v353;
  LODWORD(STACK[0x5228]) = v441 ^ v450;
  v452 = STACK[0x5400];
  v453 = LODWORD(STACK[0x5410]) | LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x5038]) = v453;
  LODWORD(STACK[0x51E0]) = v450 ^ v453 ^ v399;
  v454 = v450 ^ LODWORD(STACK[0x5280]);
  v455 = STACK[0x5250];
  v456 = LODWORD(STACK[0x5080]) ^ LODWORD(STACK[0x5250]);
  v457 = LODWORD(STACK[0x5250]) - 2 * v436;
  LODWORD(STACK[0x5238]) = LODWORD(STACK[0x5178]) ^ LODWORD(STACK[0x5250]);
  v458 = v433 ^ v455;
  v459 = LODWORD(STACK[0x51F8]) ^ LODWORD(STACK[0x5230]);
  v460 = v439 ^ LODWORD(STACK[0x5230]);
  v461 = LODWORD(STACK[0x5078]) ^ v422 ^ LODWORD(STACK[0x5230]);
  LODWORD(STACK[0x5310]) ^= v455 ^ v405;
  v462 = v461 ^ v405;
  v463 = LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x5160]);
  v464 = STACK[0x5088];
  v465 = LODWORD(STACK[0x5088]) ^ LODWORD(STACK[0x5160]);
  v466 = STACK[0x5288];
  v467 = LODWORD(STACK[0x5180]) ^ LODWORD(STACK[0x5288]);
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x5288]);
  v468 = LODWORD(STACK[0x4A18]) ^ v452;
  LODWORD(STACK[0x5040]) = v468;
  v469 = STACK[0x5170];
  LODWORD(STACK[0x5280]) = v440 ^ LODWORD(STACK[0x5170]);
  LODWORD(STACK[0x5250]) = v468 ^ v469 ^ v466;
  LODWORD(STACK[0x51F8]) = v462 ^ v465;
  v470 = STACK[0x5268];
  v471 = v466 ^ LODWORD(STACK[0x5268]) ^ v465;
  v472 = LODWORD(STACK[0x4A38]) ^ LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x5360]);
  v473 = STACK[0x5240];
  v474 = LODWORD(STACK[0x5240]) ^ LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x51D0]);
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x5240]) ^ v453 ^ LODWORD(STACK[0x51C0]);
  v475 = v473 ^ v444;
  v476 = v472 ^ 0x2D9F47FB ^ v473;
  v477 = STACK[0x52F8];
  v478 = LODWORD(STACK[0x52F8]) ^ LODWORD(STACK[0x5200]);
  LODWORD(STACK[0x5268]) = LODWORD(STACK[0x52F8]) ^ v442;
  v479 = v477 ^ v463;
  v480 = v423 ^ v470 ^ v477;
  v481 = LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x5760]);
  LODWORD(STACK[0x5360]) = v475 ^ v481;
  v482 = v454 ^ v464;
  v483 = v480 ^ v481 ^ v464;
  v484 = STACK[0x5188];
  v485 = -432178877 - v448 + LODWORD(STACK[0x5188]) - v458;
  v486 = (v485 & 1) == 0;
  v487 = 67 - v448 + LODWORD(STACK[0x5188]) - v458;
  LODWORD(STACK[0x4E24]) = v485;
  v488 = STACK[0x51C8];
  if (v486)
  {
    v489 = v456;
  }

  else
  {
    v489 = STACK[0x51C8];
  }

  if (v486)
  {
    v490 = v443;
  }

  else
  {
    v490 = v456;
  }

  LODWORD(STACK[0x52F8]) = v490;
  if (v486)
  {
    v491 = v459;
  }

  else
  {
    v491 = v443;
  }

  LODWORD(STACK[0x5288]) = v491;
  if (!v486)
  {
    v488 = v459;
  }

  LODWORD(STACK[0x51C8]) = v488;
  if (v486)
  {
    v492 = v476;
  }

  else
  {
    v492 = v448;
  }

  LODWORD(STACK[0x51D0]) = v492;
  if (v486)
  {
    v476 = v447;
  }

  LODWORD(STACK[0x5240]) = v476;
  if (!v486)
  {
    v448 = v478;
  }

  LODWORD(STACK[0x5200]) = v448;
  if (v486)
  {
    v493 = v478;
  }

  else
  {
    v493 = v447;
  }

  LODWORD(STACK[0x51C0]) = v493;
  v494 = LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x5370]) ^ v457;
  v495 = STACK[0x5208];
  if (v486)
  {
    v496 = STACK[0x5208];
  }

  else
  {
    v496 = v449;
  }

  LODWORD(STACK[0x5370]) = v496;
  v497 = STACK[0x5520];
  if (v486)
  {
    v498 = v449;
  }

  else
  {
    v498 = STACK[0x5520];
  }

  LODWORD(STACK[0x5180]) = v498;
  if (v486)
  {
    v499 = v494;
  }

  else
  {
    v499 = v495;
  }

  if (v486)
  {
    v494 = v497;
  }

  LODWORD(STACK[0x5190]) = v494;
  v500 = STACK[0x5380];
  v501 = STACK[0x5220];
  if (v486)
  {
    v502 = STACK[0x5380];
  }

  else
  {
    v502 = STACK[0x5220];
  }

  LODWORD(STACK[0x5530]) = v502;
  if (v486)
  {
    v500 = v460;
  }

  LODWORD(STACK[0x5520]) = v500;
  v503 = STACK[0x5210];
  if (!v486)
  {
    v501 = STACK[0x5210];
  }

  LODWORD(STACK[0x5380]) = v501;
  if (!v486)
  {
    v503 = v460;
  }

  LODWORD(STACK[0x5330]) = v503;
  if (v486)
  {
    v504 = STACK[0x5238];
  }

  else
  {
    v504 = v467;
  }

  if (v486)
  {
    v505 = STACK[0x5270];
  }

  else
  {
    v505 = STACK[0x5238];
  }

  if (v486)
  {
    v506 = v467;
  }

  else
  {
    v506 = STACK[0x5318];
  }

  if (v486)
  {
    v507 = STACK[0x5318];
  }

  else
  {
    v507 = STACK[0x5270];
  }

  if (v486)
  {
    v508 = STACK[0x51D8];
  }

  else
  {
    v508 = v484;
  }

  if (v486)
  {
    v509 = v484;
  }

  else
  {
    v509 = STACK[0x5168];
  }

  if (v486)
  {
    v510 = STACK[0x5168];
  }

  else
  {
    v510 = v474;
  }

  if (v486)
  {
    v511 = v474;
  }

  else
  {
    v511 = STACK[0x51D8];
  }

  v512 = STACK[0x5230];
  if (v486)
  {
    v513 = STACK[0x5230];
  }

  else
  {
    v513 = v458;
  }

  v514 = STACK[0x5300];
  if (v486)
  {
    v512 = STACK[0x5300];
  }

  LODWORD(STACK[0x5238]) = v512;
  if (v486)
  {
    v515 = STACK[0x56F0];
  }

  else
  {
    v515 = v514;
  }

  if (v486)
  {
    v516 = v458;
  }

  else
  {
    v516 = STACK[0x56F0];
  }

  v517 = STACK[0x51F8];
  if (v486)
  {
    v518 = STACK[0x51F8];
  }

  else
  {
    v518 = v482;
  }

  LODWORD(STACK[0x5300]) = v518;
  if (v486)
  {
    v517 = v471;
  }

  LODWORD(STACK[0x5208]) = v517;
  if (v486)
  {
    v519 = v483;
  }

  else
  {
    v519 = v471;
  }

  LODWORD(STACK[0x51D8]) = v519;
  if (v486)
  {
    v520 = v482;
  }

  else
  {
    v520 = v483;
  }

  if (v486)
  {
    v521 = STACK[0x51E0];
  }

  else
  {
    v521 = STACK[0x5268];
  }

  if (v486)
  {
    v522 = v479;
  }

  else
  {
    v522 = STACK[0x51E0];
  }

  if (v486)
  {
    v523 = STACK[0x5228];
  }

  else
  {
    v523 = v479;
  }

  if (v486)
  {
    v524 = STACK[0x5268];
  }

  else
  {
    v524 = STACK[0x5228];
  }

  v525 = STACK[0x5218];
  v526 = STACK[0x5368];
  if (v486)
  {
    v527 = STACK[0x5218];
  }

  else
  {
    v527 = STACK[0x5368];
  }

  if (v486)
  {
    v525 = LODWORD(STACK[0x4E28]) ^ LODWORD(STACK[0x5280]);
  }

  else
  {
    v526 = STACK[0x5250];
  }

  if (v486)
  {
    v528 = STACK[0x5250];
  }

  else
  {
    v528 = LODWORD(STACK[0x4E28]) ^ LODWORD(STACK[0x5280]);
  }

  if (v486)
  {
    v529 = STACK[0x5310];
  }

  else
  {
    v529 = STACK[0x5630];
  }

  v530 = STACK[0x5360];
  if (v486)
  {
    v531 = STACK[0x5630];
  }

  else
  {
    v531 = STACK[0x5360];
  }

  v532 = STACK[0x5320];
  if (!v486)
  {
    v530 = STACK[0x5320];
    v532 = STACK[0x5310];
  }

  v533 = (v487 & 2) == 0;
  v534 = v489;
  v535 = STACK[0x5288];
  if ((v487 & 2) != 0)
  {
    v536 = STACK[0x5288];
  }

  else
  {
    v536 = v534;
  }

  LODWORD(STACK[0x5178]) = v536;
  if (v533)
  {
    v537 = v535;
  }

  else
  {
    v537 = v534;
  }

  LODWORD(STACK[0x5170]) = v537;
  v538 = STACK[0x52F8];
  v539 = STACK[0x51C8];
  if (v533)
  {
    v540 = STACK[0x52F8];
  }

  else
  {
    v540 = STACK[0x51C8];
  }

  LODWORD(STACK[0x5288]) = v540;
  if (v533)
  {
    v541 = v539;
  }

  else
  {
    v541 = v538;
  }

  LODWORD(STACK[0x5160]) = v541;
  v542 = STACK[0x51D0];
  v543 = STACK[0x51C0];
  if (v533)
  {
    v544 = STACK[0x51C0];
  }

  else
  {
    v544 = STACK[0x51D0];
  }

  LODWORD(STACK[0x5158]) = v544;
  if (v533)
  {
    v545 = v542;
  }

  else
  {
    v545 = v543;
  }

  LODWORD(STACK[0x5318]) = v545;
  v546 = STACK[0x5240];
  v547 = STACK[0x5200];
  if (v533)
  {
    v548 = STACK[0x5240];
  }

  else
  {
    v548 = STACK[0x5200];
  }

  LODWORD(STACK[0x5150]) = v548;
  if (v533)
  {
    v549 = v547;
  }

  else
  {
    v549 = v546;
  }

  LODWORD(STACK[0x52F8]) = v549;
  v550 = STACK[0x5180];
  if (v533)
  {
    v551 = v499;
  }

  else
  {
    v551 = STACK[0x5180];
  }

  LODWORD(STACK[0x5320]) = v551;
  if (v533)
  {
    v499 = v550;
  }

  LODWORD(STACK[0x5360]) = v499;
  v552 = STACK[0x5370];
  v553 = STACK[0x5190];
  if (v533)
  {
    v554 = STACK[0x5370];
  }

  else
  {
    v554 = STACK[0x5190];
  }

  LODWORD(STACK[0x5148]) = v554;
  if (v533)
  {
    v555 = v553;
  }

  else
  {
    v555 = v552;
  }

  LODWORD(STACK[0x5370]) = v555;
  if (v533)
  {
    v556 = v507;
  }

  else
  {
    v556 = v504;
  }

  LODWORD(STACK[0x51C0]) = v556;
  if (v533)
  {
    v507 = v504;
  }

  LODWORD(STACK[0x5140]) = v507;
  if (v533)
  {
    v557 = v505;
  }

  else
  {
    v557 = v506;
  }

  LODWORD(STACK[0x5280]) = v557;
  if (v533)
  {
    v558 = v506;
  }

  else
  {
    v558 = v505;
  }

  LODWORD(STACK[0x5200]) = v558;
  if (v533)
  {
    v559 = v509;
  }

  else
  {
    v559 = v511;
  }

  LODWORD(STACK[0x56F0]) = v559;
  if (v533)
  {
    v560 = v511;
  }

  else
  {
    v560 = v509;
  }

  LODWORD(STACK[0x5088]) = v560;
  if (v533)
  {
    v561 = v508;
  }

  else
  {
    v561 = v510;
  }

  LODWORD(STACK[0x5310]) = v561;
  if (v533)
  {
    v562 = v510;
  }

  else
  {
    v562 = v508;
  }

  LODWORD(STACK[0x5368]) = v562;
  if (v533)
  {
    v563 = v515;
  }

  else
  {
    v563 = v513;
  }

  LODWORD(STACK[0x5268]) = v563;
  if (v533)
  {
    v564 = v513;
  }

  else
  {
    v564 = v515;
  }

  LODWORD(STACK[0x5080]) = v564;
  v565 = STACK[0x5530];
  v566 = STACK[0x5330];
  if (v533)
  {
    v567 = STACK[0x5530];
  }

  else
  {
    v567 = STACK[0x5330];
  }

  LODWORD(STACK[0x51E0]) = v567;
  if (v533)
  {
    v568 = v566;
  }

  else
  {
    v568 = v565;
  }

  LODWORD(STACK[0x5530]) = v568;
  v569 = STACK[0x5520];
  v570 = STACK[0x5380];
  if (v533)
  {
    v571 = STACK[0x5380];
  }

  else
  {
    v571 = STACK[0x5520];
  }

  LODWORD(STACK[0x51F8]) = v571;
  if (v533)
  {
    v572 = v569;
  }

  else
  {
    v572 = v570;
  }

  LODWORD(STACK[0x5270]) = v572;
  if (v533)
  {
    v573 = v523;
  }

  else
  {
    v573 = v521;
  }

  LODWORD(STACK[0x5218]) = v573;
  if (v533)
  {
    v574 = v521;
  }

  else
  {
    v574 = v523;
  }

  LODWORD(STACK[0x5220]) = v574;
  v575 = STACK[0x5238];
  if (v533)
  {
    v576 = v516;
  }

  else
  {
    v576 = STACK[0x5238];
  }

  LODWORD(STACK[0x5330]) = v576;
  if (v533)
  {
    v577 = v575;
  }

  else
  {
    v577 = v516;
  }

  LODWORD(STACK[0x5078]) = v577;
  if (v533)
  {
    v578 = v526;
  }

  else
  {
    v578 = v525;
  }

  LODWORD(STACK[0x5210]) = v578;
  if (v533)
  {
    v579 = v525;
  }

  else
  {
    v579 = v526;
  }

  LODWORD(STACK[0x5238]) = v579;
  if (v533)
  {
    v580 = v528;
  }

  else
  {
    v580 = v527;
  }

  LODWORD(STACK[0x5230]) = v580;
  if (v533)
  {
    v581 = v527;
  }

  else
  {
    v581 = v528;
  }

  LODWORD(STACK[0x5240]) = v581;
  v582 = STACK[0x5208];
  if (v533)
  {
    v583 = v520;
  }

  else
  {
    v583 = STACK[0x5208];
  }

  LODWORD(STACK[0x51D0]) = v583;
  if (v533)
  {
    v584 = v582;
  }

  else
  {
    v584 = v520;
  }

  LODWORD(STACK[0x5180]) = v584;
  v585 = STACK[0x5760];
  if (v533)
  {
    v586 = v522;
  }

  else
  {
    v586 = v524;
  }

  LODWORD(STACK[0x5630]) = v586;
  if (v533)
  {
    v587 = v524;
  }

  else
  {
    v587 = v522;
  }

  LODWORD(STACK[0x5208]) = v587;
  v588 = STACK[0x5770];
  v589 = STACK[0x57A0];
  v590 = STACK[0x5300];
  v591 = STACK[0x51D8];
  if (v533)
  {
    v592 = STACK[0x51D8];
  }

  else
  {
    v592 = STACK[0x5300];
  }

  LODWORD(STACK[0x5188]) = v592;
  if (v533)
  {
    v593 = v590;
  }

  else
  {
    v593 = v591;
  }

  LODWORD(STACK[0x51C8]) = v593;
  if (v533)
  {
    v594 = v532;
  }

  else
  {
    v594 = v531;
  }

  LODWORD(STACK[0x51D8]) = v594;
  if (v533)
  {
    v595 = v531;
  }

  else
  {
    v595 = v532;
  }

  LODWORD(STACK[0x5520]) = v595;
  if (v533)
  {
    v596 = v529;
  }

  else
  {
    v596 = v530;
  }

  LODWORD(STACK[0x5300]) = v596;
  if (v533)
  {
    v597 = v530;
  }

  else
  {
    v597 = v529;
  }

  LODWORD(STACK[0x5228]) = v597;
  v598 = STACK[0x52B8];
  v599 = LODWORD(STACK[0x52B8]) ^ LODWORD(STACK[0x52D0]);
  LODWORD(STACK[0x5250]) = v599;
  v600 = STACK[0x5308];
  v601 = STACK[0x55B0];
  v602 = STACK[0x5328];
  v603 = STACK[0x55C0];
  v604 = STACK[0x5580];
  v605 = STACK[0x55A0];
  v606 = STACK[0x5540];
  v607 = STACK[0x52E8];
  v608 = STACK[0x52C8];
  v609 = STACK[0x5260];
  v610 = STACK[0x52A8];
  v611 = v599 ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5328]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x57B0]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x52E0]) ^ LODWORD(STACK[0x52F0]) ^ LODWORD(STACK[0x52E8]) ^ LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x52C8]) ^ LODWORD(STACK[0x52D8]) ^ LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x52C0]) ^ LODWORD(STACK[0x5260]) ^ LODWORD(STACK[0x52A8]);
  v612 = LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5248]);
  LODWORD(STACK[0x5028]) = v612;
  v613 = v612 ^ LODWORD(STACK[0x5290]);
  LODWORD(STACK[0x5020]) = v613;
  v614 = STACK[0x5258];
  v615 = STACK[0x5298];
  v616 = STACK[0x5278];
  v617 = STACK[0x5560];
  v618 = STACK[0x5570];
  v619 = v613 ^ LODWORD(STACK[0x5378]) ^ LODWORD(STACK[0x5258]) ^ LODWORD(STACK[0x5298]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x55D0]) ^ v611 ^ LODWORD(STACK[0x5278]) ^ LODWORD(STACK[0x5358]) ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x5570]);
  LODWORD(STACK[0x5190]) = v619;
  v620 = v615 ^ 0xF06FF7F3;
  v621 = STACK[0x4E24];
  v622 = (v593 ^ (LODWORD(STACK[0x4E24]) + v558 + v620 - LODWORD(STACK[0x5360]))) + v602;
  v623 = v606;
  v624 = ((((v622 ^ v606) - LODWORD(STACK[0x5368])) ^ v596) + v592) ^ v618;
  v625 = STACK[0x5388];
  v626 = v605;
  v627 = v610 - LODWORD(STACK[0x5388]) + v604 - v605 + LODWORD(STACK[0x56F0]) + v624;
  v628 = STACK[0x5150];
  v619 ^= 0xFFF64810;
  LODWORD(STACK[0x5380]) = v619;
  v629 = STACK[0x5240];
  v630 = v601 + v617 - v598 - v600 + v616 + v621 - LODWORD(STACK[0x5240]);
  v631 = STACK[0x5238];
  LODWORD(STACK[0x5168]) = v630 + LODWORD(STACK[0x5238]) + LODWORD(STACK[0x5630]) + LODWORD(STACK[0x51D0]) + (((v627 ^ v628) + v608 + v619) ^ v607);
  v632 = v625 ^ 0xFFF64810 ^ v609 ^ v608 ^ v600 ^ v602 ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x57B0]) ^ v603 ^ LODWORD(STACK[0x5780]) ^ v601 ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5650]) ^ v604;
  v633 = v626 ^ LODWORD(STACK[0x5670]) ^ v623 ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x52E0]);
  v634 = STACK[0x52F0];
  v635 = v607 ^ LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x5010]) = v635;
  v636 = STACK[0x52C0];
  v637 = LODWORD(STACK[0x5250]) ^ LODWORD(STACK[0x52D8]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x52C0]) ^ v610 ^ v632 ^ v633 ^ v634 ^ v635;
  v638 = LODWORD(STACK[0x5020]) ^ v614;
  LODWORD(STACK[0x4FF0]) = v638;
  v639 = STACK[0x5358];
  v640 = STACK[0x5178];
  v641 = v638 ^ LODWORD(STACK[0x5378]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5298]) ^ LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x55D0]) ^ v637 ^ LODWORD(STACK[0x5358]) ^ v616 ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x5570]) ^ v621 ^ LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5370]) ^ LODWORD(STACK[0x5320]) ^ LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x5178]);
  v642 = STACK[0x5170];
  v643 = STACK[0x5160];
  v644 = STACK[0x5158];
  v645 = STACK[0x52F8];
  v646 = STACK[0x5148];
  v647 = STACK[0x51C0];
  v648 = STACK[0x5140];
  v649 = STACK[0x5088];
  v650 = STACK[0x5268];
  v651 = STACK[0x5078];
  v652 = STACK[0x5080];
  v653 = STACK[0x5230];
  v654 = LODWORD(STACK[0x5310]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x5268]) ^ LODWORD(STACK[0x5078]) ^ LODWORD(STACK[0x5080]) ^ LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x5270]) ^ LODWORD(STACK[0x51E0]) ^ LODWORD(STACK[0x51F8]) ^ LODWORD(STACK[0x5230]) ^ v631 ^ v629;
  v655 = STACK[0x5210];
  v656 = STACK[0x5218];
  v657 = STACK[0x5208];
  v658 = STACK[0x5220];
  v659 = STACK[0x5228];
  v660 = v641 ^ LODWORD(STACK[0x5160]) ^ LODWORD(STACK[0x5170]) ^ LODWORD(STACK[0x5158]) ^ v628 ^ LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x52F8]) ^ LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x5148]) ^ LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x5200]) ^ LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x5088]) ^ v654 ^ LODWORD(STACK[0x5210]) ^ LODWORD(STACK[0x5208]) ^ LODWORD(STACK[0x5218]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5228]) ^ LODWORD(STACK[0x51D8]) ^ LODWORD(STACK[0x5300]) ^ LODWORD(STACK[0x51D0]);
  v661 = STACK[0x5180];
  v662 = LODWORD(STACK[0x5188]) ^ LODWORD(STACK[0x5180]);
  LODWORD(STACK[0x4FE8]) = v662;
  LODWORD(STACK[0x4E18]) = v660 ^ v662 ^ LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5190]);
  v663 = LODWORD(STACK[0x5168]) ^ v644;
  LODWORD(STACK[0x5168]) = v663;
  v664 = v646;
  v665 = (v645 + v650 - v646 + v642 + v663) ^ LODWORD(STACK[0x5780]);
  v666 = v653 + v649 + LODWORD(STACK[0x56D0]) - v634 - v661 + LODWORD(STACK[0x5680]);
  v667 = v658 + LODWORD(STACK[0x5730]);
  v668 = v656 ^ v643 ^ v659;
  v669 = LODWORD(STACK[0x5590]) + LODWORD(STACK[0x57B0]) - LODWORD(STACK[0x5620]) - LODWORD(STACK[0x5720]) + v652 - v648;
  v670 = STACK[0x5318];
  v671 = STACK[0x5310];
  v672 = LODWORD(STACK[0x5290]) - LODWORD(STACK[0x56C0]);
  v673 = v657 - v639;
  v674 = STACK[0x5248];
  v675 = ((((((((v668 ^ (((v666 + v665) ^ v636) - v667)) + v669) ^ LODWORD(STACK[0x5670])) + LODWORD(STACK[0x5318])) ^ LODWORD(STACK[0x5310])) + v672) ^ v647) + v657 - v639) ^ LODWORD(STACK[0x5248]);
  v676 = v655 - v640;
  v677 = STACK[0x5610];
  v678 = LODWORD(STACK[0x5660]) + LODWORD(STACK[0x5258]) + v651;
  v679 = STACK[0x55F0];
  v680 = LODWORD(STACK[0x55E0]) + LODWORD(STACK[0x5650]);
  v681 = LODWORD(STACK[0x5378]) - v680 + ((((v675 + v655 - v640) ^ LODWORD(STACK[0x5610])) - v678) ^ LODWORD(STACK[0x55F0]));
  if ((STACK[0x5378] & 0x40000) != 0)
  {
    v682 = -262144;
  }

  else
  {
    v682 = 0x40000;
  }

  v683 = v682 + LODWORD(STACK[0x5378]);
  if (LODWORD(STACK[0x5300]) >= 0xBFC486F9)
  {
    v684 = LODWORD(STACK[0x5300]) + 1077639431;
  }

  else
  {
    v684 = STACK[0x5300];
  }

  if (LODWORD(STACK[0x5300]) >= 0xBFC486F9)
  {
    v685 = -1077639431;
  }

  else
  {
    v685 = 0;
  }

  LODWORD(STACK[0x5378]) = v685;
  v686 = STACK[0x5750];
  v156 = v684 == 0;
  v687 = v642 + LODWORD(STACK[0x52F8]) - v664 + LODWORD(STACK[0x5268]) + LODWORD(STACK[0x5168]);
  v688 = STACK[0x5780];
  v689 = v636;
  v690 = STACK[0x5670];
  v691 = (((((v668 ^ (((v666 + (v687 ^ LODWORD(STACK[0x5780]))) ^ v636) - v667)) + v669) ^ LODWORD(STACK[0x5670])) + v670) ^ v671) + v672;
  v692 = STACK[0x51C0];
  v693 = v677;
  LODWORD(STACK[0x5168]) = v683 ^ 0x40000;
  v694 = ((((((v691 ^ v692) + v673) ^ v674) + v676) ^ v677) - v678) ^ v679;
  v695 = (v683 ^ 0x40000) - v680;
  v696 = STACK[0x5790];
  v697 = v695 + v694;
  v698 = LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5370]);
  v699 = v698 ^ v697;
  v700 = STACK[0x52E0];
  v701 = STACK[0x5288];
  v702 = STACK[0x55C0];
  v703 = LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x55C0]);
  v704 = v703 ^ ((((((v698 ^ v681) + LODWORD(STACK[0x52E0])) ^ LODWORD(STACK[0x5530])) + LODWORD(STACK[0x5320])) ^ LODWORD(STACK[0x5550])) + LODWORD(STACK[0x5270]));
  v705 = STACK[0x5550];
  v706 = v703 ^ (((((v699 + LODWORD(STACK[0x52E0])) ^ LODWORD(STACK[0x5530])) + LODWORD(STACK[0x5320])) ^ LODWORD(STACK[0x5550])) + LODWORD(STACK[0x5270]));
  v707 = STACK[0x55D0];
  v708 = STACK[0x52D8];
  v709 = STACK[0x4E24];
  v710 = STACK[0x51F8];
  v711 = STACK[0x51D8];
  v712 = LODWORD(STACK[0x55D0]) + LODWORD(STACK[0x52D8]) - LODWORD(STACK[0x4E24]) - LODWORD(STACK[0x51F8]) + LODWORD(STACK[0x51D8]);
  v713 = v706 + v712;
  v714 = STACK[0x5260];
  v715 = (v704 + v712) ^ LODWORD(STACK[0x5260]);
  v716 = STACK[0x5600];
  v717 = STACK[0x51E0];
  v718 = STACK[0x5280];
  v719 = LODWORD(STACK[0x5600]) - LODWORD(STACK[0x52D0]) - LODWORD(STACK[0x51E0]) - LODWORD(STACK[0x5280]);
  LODWORD(STACK[0x5020]) = v715 + v719;
  LODWORD(STACK[0x5018]) = (v713 ^ v714) + v719;
  v720 = STACK[0x56D0];
  v721 = v716 ^ LODWORD(STACK[0x5388]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5328]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x57B0]) ^ v688 ^ v702 ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5580]) ^ v690 ^ LODWORD(STACK[0x55A0]);
  v722 = STACK[0x52F0];
  v723 = STACK[0x52C8];
  v724 = STACK[0x55E0];
  v725 = LODWORD(STACK[0x5250]) ^ LODWORD(STACK[0x52C8]) ^ v708 ^ v693 ^ LODWORD(STACK[0x55E0]) ^ v679 ^ v721 ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5680]) ^ v700 ^ LODWORD(STACK[0x52F0]) ^ LODWORD(STACK[0x52E8]) ^ LODWORD(STACK[0x5720]) ^ v689 ^ v714 ^ LODWORD(STACK[0x52A8]);
  v726 = STACK[0x56C0];
  v727 = STACK[0x5298];
  v728 = STACK[0x5358];
  v729 = LODWORD(STACK[0x4FF0]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5298]) ^ v705 ^ v707 ^ LODWORD(STACK[0x5358]) ^ v725 ^ LODWORD(STACK[0x5278]) ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x5168]) ^ v709 ^ LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x5160]) ^ v701 ^ LODWORD(STACK[0x5178]) ^ LODWORD(STACK[0x5170]) ^ LODWORD(STACK[0x5158]) ^ LODWORD(STACK[0x5150]) ^ LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x52F8]) ^ LODWORD(STACK[0x5370]) ^ LODWORD(STACK[0x5320]) ^ LODWORD(STACK[0x5148]) ^ v692 ^ v718 ^ LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x5200]) ^ LODWORD(STACK[0x5088]) ^ LODWORD(STACK[0x5310]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x5268]) ^ LODWORD(STACK[0x5078]) ^ LODWORD(STACK[0x5080]) ^ LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x5270]) ^ v717 ^ v710 ^ LODWORD(STACK[0x5230]) ^ LODWORD(STACK[0x5238]);
  v730 = STACK[0x5300];
  v731 = STACK[0x5378];
  if (!v156)
  {
    v731 = STACK[0x5300];
  }

  LODWORD(STACK[0x5178]) = v731;
  v732 = STACK[0x51D0];
  LODWORD(STACK[0x4E10]) = v729 ^ LODWORD(STACK[0x5240]) ^ LODWORD(STACK[0x5210]) ^ LODWORD(STACK[0x5208]) ^ LODWORD(STACK[0x5218]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5228]) ^ v711 ^ v730 ^ LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x4FE8]) ^ LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5380]);
  v733 = LODWORD(STACK[0x5780]) + v585 - 2 * (STACK[0x5780] & v585);
  v734 = STACK[0x5730];
  v735 = STACK[0x5308];
  v736 = STACK[0x5580];
  v737 = v700;
  v738 = LODWORD(STACK[0x52A0]) ^ LODWORD(STACK[0x52B0]) ^ LODWORD(STACK[0x5730]) ^ v720 ^ LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x5580]) ^ v700 ^ v722;
  v739 = v723;
  v740 = STACK[0x5290];
  v741 = v738 ^ LODWORD(STACK[0x5010]) ^ v723 ^ v708 ^ v724 ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5290]) ^ v726 ^ v727;
  v742 = v728;
  v743 = (v728 & (v588 >> v696)) << v696;
  v744 = LODWORD(STACK[0x5700]) << v589;
  v745 = (((v742 & v744) >> v589) | v743) ^ (2 * ((((v742 & v744) >> v589) | v743) & v686));
  v746 = LODWORD(STACK[0x5328]) ^ v585;
  v747 = v720 ^ v585;
  v748 = STACK[0x5740];
  v749 = LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5740]);
  LODWORD(STACK[0x5328]) = v749;
  v750 = LODWORD(STACK[0x5028]) ^ v749;
  LODWORD(STACK[0x5358]) = v746;
  LODWORD(STACK[0x5330]) = v747;
  v751 = v750 ^ v746 ^ v747;
  v752 = LODWORD(STACK[0x57B0]) ^ v585;
  v753 = LODWORD(STACK[0x5660]) ^ v748;
  v754 = LODWORD(STACK[0x55C0]) ^ v585;
  LODWORD(STACK[0x4E08]) = v752;
  LODWORD(STACK[0x5320]) = v753;
  LODWORD(STACK[0x5318]) = v754;
  v755 = v751 ^ v753 ^ v752 ^ v754;
  v756 = v734 ^ v585;
  v757 = LODWORD(STACK[0x55B0]) ^ v585;
  v758 = LODWORD(STACK[0x5600]) ^ v748;
  LODWORD(STACK[0x5310]) = v756;
  LODWORD(STACK[0x5308]) = v757;
  LODWORD(STACK[0x4DF8]) = v758;
  LODWORD(STACK[0x4E00]) = v735 ^ v748;
  v759 = v755 ^ v756 ^ v757 ^ v758 ^ v735 ^ v748;
  v760 = LODWORD(STACK[0x5670]) ^ v585;
  v761 = LODWORD(STACK[0x5650]) ^ v585;
  LODWORD(STACK[0x4DE8]) = v736 ^ v585;
  LODWORD(STACK[0x4DE0]) = v761;
  LODWORD(STACK[0x4DF0]) = v760;
  v762 = v761 ^ v736 ^ v585 ^ v760;
  v763 = LODWORD(STACK[0x55A0]) ^ v585;
  LODWORD(STACK[0x5300]) = v763;
  v764 = v762 ^ v763;
  v765 = LODWORD(STACK[0x5540]) ^ v585;
  LODWORD(STACK[0x5378]) = v765;
  v766 = v759 ^ v764 ^ v765;
  v767 = LODWORD(STACK[0x5720]) ^ v585;
  v768 = v722 ^ v585;
  LODWORD(STACK[0x4E20]) = v768;
  v769 = LODWORD(STACK[0x52B8]) ^ v585;
  v770 = LODWORD(STACK[0x52E8]) ^ v748;
  v771 = LODWORD(STACK[0x5680]) ^ v748;
  LODWORD(STACK[0x52F0]) = v737 ^ v748;
  LODWORD(STACK[0x52E0]) = v771;
  LODWORD(STACK[0x52E8]) = v770;
  LODWORD(STACK[0x52F8]) = v767;
  LODWORD(STACK[0x5720]) = v769;
  v772 = v766 ^ v771 ^ v737 ^ v748 ^ v768 ^ v770 ^ v767 ^ v769;
  v773 = LODWORD(STACK[0x52D0]) ^ v748;
  v774 = LODWORD(STACK[0x52C0]) ^ v585;
  LODWORD(STACK[0x52D8]) = v773;
  LODWORD(STACK[0x52C8]) = v739 ^ v585;
  LODWORD(STACK[0x52B8]) = v708 ^ v585;
  v775 = LODWORD(STACK[0x5610]) ^ v748;
  LODWORD(STACK[0x56F0]) = v775;
  LODWORD(STACK[0x52D0]) = v724 ^ v585;
  v776 = v773 ^ v739 ^ v585 ^ v708 ^ v585 ^ v775 ^ v724 ^ v585;
  v777 = STACK[0x55F0];
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x55F0]) ^ v748;
  LODWORD(STACK[0x52C0]) = v774;
  v778 = v772 ^ v776 ^ v777 ^ v748 ^ v774;
  v779 = LODWORD(STACK[0x52A8]) ^ v585;
  v780 = STACK[0x55D0];
  LODWORD(STACK[0x55E0]) = v741 ^ LODWORD(STACK[0x55D0]);
  v781 = v780 ^ v748;
  v782 = STACK[0x5260];
  LODWORD(STACK[0x52A8]) = v779;
  LODWORD(STACK[0x5288]) = v782 ^ v585;
  LODWORD(STACK[0x56D0]) = v740 ^ v748;
  v783 = STACK[0x5258];
  LODWORD(STACK[0x5730]) = LODWORD(STACK[0x5258]) ^ v748;
  LODWORD(STACK[0x5290]) = v726 ^ v585;
  LODWORD(STACK[0x5298]) = v727 ^ v748;
  v784 = STACK[0x5550];
  LODWORD(STACK[0x5280]) = LODWORD(STACK[0x5550]) ^ v748;
  LODWORD(STACK[0x52A0]) = v781;
  v785 = STACK[0x5168];
  LODWORD(STACK[0x5370]) = v733;
  LODWORD(STACK[0x56C0]) = v785 ^ v585;
  v786 = v778 ^ v779 ^ v782 ^ v585 ^ v740 ^ v748 ^ v783 ^ v748 ^ v726 ^ v585 ^ v727 ^ v748 ^ v784 ^ v748 ^ v781 ^ v733 ^ v785 ^ v585;
  v787 = STACK[0x4E90];
  v788 = STACK[0x4E90] & (4 * (v745 & v686)) ^ v745;
  v789 = STACK[0x5710];
  v790 = ((v732 & v744) >> v589) + ((v732 & (LODWORD(STACK[0x5710]) >> v696)) << v696);
  v791 = v790 ^ (2 * (v790 & v686));
  v792 = 4 * (v686 & STACK[0x4E90]);
  v793 = v792 & (16 * (v788 & v686)) & STACK[0x4E90] ^ v788;
  v794 = STACK[0x4E90] & (4 * (v791 & v686)) ^ v791;
  v795 = ((STACK[0x5278] & v744) >> v589) ^ ((STACK[0x5278] & (v588 >> v696)) << v696);
  LODWORD(STACK[0x4DD0]) = v792 & (16 * (v794 & v686)) & STACK[0x4E90] ^ v794;
  v796 = v787 & (4 * ((v795 ^ (2 * (v795 & v686))) & v686)) ^ v795 ^ (2 * (v795 & v686));
  v797 = ((STACK[0x5188] & v744) >> v589) | ((STACK[0x5188] & (v789 >> v696)) << v696);
  v798 = v787 & (4 * ((v797 ^ (2 * (v797 & v686))) & v686)) ^ v797 ^ (2 * (v797 & v686));
  v799 = ((STACK[0x5560] & v744) >> v589) ^ ((STACK[0x5560] & (v789 >> v696)) << v696);
  v800 = v787 & (4 * ((v799 ^ (2 * (v799 & v686))) & v686)) ^ v799 ^ (2 * (v799 & v686));
  v801 = v792 & (16 * (v796 & v686)) & v787 ^ v796;
  v802 = ((STACK[0x5180] & v744) >> v589) ^ ((STACK[0x5180] & (v588 >> v696)) << v696);
  v803 = v787 & (4 * ((v802 ^ (2 * (v802 & v686))) & v686)) ^ v802 ^ (2 * (v802 & v686));
  LODWORD(STACK[0x4DC0]) = v792 & (16 * (v798 & v686)) & v787 ^ v798;
  v804 = STACK[0x5570];
  LODWORD(STACK[0x5368]) = v588 >> v696;
  v805 = ((v804 & v744) >> v589) + ((v804 & (v588 >> v696)) << v696);
  LODWORD(STACK[0x4DB8]) = v792 & (16 * (v803 & v686)) & v787 ^ v803;
  v806 = v787 & (4 * ((v805 ^ (2 * (v805 & v686))) & v686)) ^ v805 ^ (2 * (v805 & v686));
  v807 = v792 & (16 * (v806 & v686)) & v787 ^ v806;
  LODWORD(STACK[0x5360]) = v744;
  v808 = STACK[0x51C8];
  LODWORD(STACK[0x5278]) = v789 >> v696;
  v809 = ((v808 & (v789 >> v696)) << v696) | ((v808 & v744) >> v589);
  v810 = v787 & (4 * ((v809 ^ (2 * (v809 & v686))) & v686)) ^ v809 ^ (2 * (v809 & v686));
  v811 = v792 & (16 * (v800 & v686)) & v787 ^ v800;
  LODWORD(STACK[0x4DA0]) = v792 & (16 * (v810 & v686)) & v787 ^ v810;
  LODWORD(STACK[0x4DD8]) = v793;
  v812 = v793 ^ (2 * (v793 & v686));
  v813 = v789;
  v814 = STACK[0x5700];
  v815 = ((v812 & STACK[0x5700]) << v589) | ((v812 & v789) >> v696);
  LODWORD(STACK[0x4DC8]) = v801;
  v816 = (((v801 ^ (2 * (v801 & v686))) & v814) << v589) + (((v801 ^ (2 * (v801 & v686))) & v789) >> v696);
  LODWORD(STACK[0x4D98]) = (LODWORD(STACK[0x51C0]) ^ v748) + (LODWORD(STACK[0x5268]) ^ v748);
  v817 = LODWORD(STACK[0x5000]) | LODWORD(STACK[0x5008]);
  v818 = STACK[0x5660];
  v819 = STACK[0x5670];
  v820 = STACK[0x5248];
  v821 = LODWORD(STACK[0x5198]) ^ LODWORD(STACK[0x51A0]) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x57B0]) ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x5250]) ^ LODWORD(STACK[0x5610]) ^ v777 ^ v782 ^ LODWORD(STACK[0x5248]) ^ v783 ^ v784 ^ v785 ^ 0x45C3C48E;
  v822 = STACK[0x55E0];
  v823 = (LODWORD(STACK[0x55E0]) ^ 0x45C3C48E ^ v786) - v821;
  v824 = STACK[0x5018];
  v825 = STACK[0x5020];
  LODWORD(STACK[0x4D58]) = (1199782617 * LODWORD(STACK[0x5020])) ^ (1199782617 * LODWORD(STACK[0x5018]));
  v826 = (v822 ^ 0xBA3C3B71) + (v786 ^ v821);
  v827 = ((v813 & STACK[0x49E8]) >> v696) ^ ((v814 & STACK[0x49E8]) << v589);
  LODWORD(STACK[0x4C68]) = v818 ^ LODWORD(STACK[0x5620]);
  LODWORD(STACK[0x4BA8]) = v819 ^ LODWORD(STACK[0x5580]);
  LODWORD(STACK[0x4BA0]) = v816 ^ v815;
  v828 = STACK[0x53B8];
  v829 = STACK[0x53E0];
  v830 = STACK[0x4E28];
  LODWORD(STACK[0x4B98]) = LODWORD(STACK[0x4E28]) ^ (LODWORD(STACK[0x53B8]) + LODWORD(STACK[0x53E0])) ^ LODWORD(STACK[0x5190]);
  v831 = LODWORD(STACK[0x4FB8]) ^ LODWORD(STACK[0x4FF8]);
  LODWORD(STACK[0x4B90]) = LODWORD(STACK[0x5238]) ^ v748;
  LODWORD(STACK[0x4B88]) = LODWORD(STACK[0x5210]) ^ v748;
  LODWORD(STACK[0x4B80]) = LODWORD(STACK[0x5178]) ^ v585;
  v832 = LODWORD(STACK[0x5630]) ^ v585;
  LODWORD(STACK[0x5270]) ^= v585;
  LODWORD(STACK[0x5268]) = LODWORD(STACK[0x51E0]) ^ v748;
  v833 = LODWORD(STACK[0x5200]) ^ v748;
  LODWORD(STACK[0x5260]) = LODWORD(STACK[0x51F8]) ^ v585;
  LODWORD(STACK[0x5258]) = LODWORD(STACK[0x51D8]) ^ v585;
  LODWORD(STACK[0x5250]) = LODWORD(STACK[0x5530]) ^ v748;
  LODWORD(STACK[0x4B70]) = LODWORD(STACK[0x5220]) ^ v748;
  v834 = STACK[0x5590];
  LODWORD(STACK[0x4B68]) = LODWORD(STACK[0x5590]) ^ v585;
  LODWORD(STACK[0x4B60]) = v820 ^ v834;
  LODWORD(STACK[0x5248]) = v820 ^ v585;
  LODWORD(STACK[0x4B58]) = LODWORD(STACK[0x5240]) ^ v748;
  LODWORD(STACK[0x4B50]) = LODWORD(STACK[0x5208]) ^ v748;
  LODWORD(STACK[0x5240]) = LODWORD(STACK[0x5228]) ^ v585;
  LODWORD(STACK[0x4B48]) = LODWORD(STACK[0x5218]) ^ v585;
  LODWORD(STACK[0x4B30]) = LODWORD(STACK[0x5520]) ^ v748;
  LODWORD(STACK[0x4B28]) = LODWORD(STACK[0x5230]) ^ v748;
  LODWORD(STACK[0x4DA8]) = v811;
  v835 = v811 ^ (2 * (v811 & v686));
  LODWORD(STACK[0x4B20]) = (v835 & v588) >> v696;
  LODWORD(STACK[0x4B18]) = (v835 & v814) << v589;
  LODWORD(STACK[0x4B78]) = v832;
  LODWORD(STACK[0x4B10]) = v833 ^ v832;
  LODWORD(v837) = __ROR4__(STACK[0x4E20], 15) ^ 0x57F5D430;
  HIDWORD(v837) = v837;
  v836 = v837 >> 17;
  LODWORD(STACK[0x4B08]) = v836 ^ 0x6A182BFA;
  LODWORD(STACK[0x4B00]) = 831575401 * v825;
  LODWORD(STACK[0x4AF8]) = 1563118941 * v823;
  v838 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5030]));
  LODWORD(STACK[0x4AF0]) = 1457838453 * v826 + 1457838453;
  LODWORD(STACK[0x4AE8]) = LODWORD(STACK[0x4A38]) ^ 0x864A2AD3;
  LODWORD(STACK[0x4AE0]) = v836 ^ 0xEA182BFA;
  LODWORD(STACK[0x4AD8]) = v830 ^ v817;
  LODWORD(STACK[0x4AD0]) = v830 ^ LODWORD(STACK[0x5068]);
  LODWORD(STACK[0x4AC8]) = v830 ^ (LODWORD(STACK[0x4E70]) + LODWORD(STACK[0x4E88]));
  LODWORD(STACK[0x4AC0]) = v830 ^ LODWORD(STACK[0x5050]);
  v839 = STACK[0x4A30];
  v840 = STACK[0x4E80];
  LODWORD(STACK[0x4AB8]) = v830 ^ (LODWORD(STACK[0x4A30]) | LODWORD(STACK[0x4E80]));
  LODWORD(STACK[0x4AB0]) = v839 ^ v840 ^ v830;
  LODWORD(STACK[0x4AA8]) = v830 ^ (831575401 * v824);
  LODWORD(STACK[0x4AA0]) = v830 ^ LODWORD(STACK[0x51B0]);
  LODWORD(STACK[0x4A98]) = LODWORD(STACK[0x4E38]) ^ LODWORD(STACK[0x5408]) ^ v830;
  LODWORD(STACK[0x4A90]) = v830 ^ LODWORD(STACK[0x5048]);
  LODWORD(STACK[0x4A88]) = v830 ^ LODWORD(STACK[0x51A8]);
  LODWORD(STACK[0x4A80]) = v830 ^ (v828 | v829);
  LODWORD(STACK[0x4A78]) = v830 ^ LODWORD(STACK[0x4A28]);
  v841 = STACK[0x53B0];
  v842 = STACK[0x53D8];
  LODWORD(STACK[0x4A70]) = v830 ^ (LODWORD(STACK[0x53B0]) | LODWORD(STACK[0x53D8]));
  LODWORD(STACK[0x4A68]) = v830 ^ LODWORD(STACK[0x49E0]);
  LODWORD(STACK[0x4A60]) = v830 ^ LODWORD(STACK[0x5060]);
  LODWORD(STACK[0x4A58]) = LODWORD(STACK[0x5040]) ^ v830;
  LODWORD(STACK[0x4A50]) = v830 ^ LODWORD(STACK[0x5038]);
  LODWORD(STACK[0x5238]) = v830 ^ LODWORD(STACK[0x5058]);
  LODWORD(STACK[0x4A48]) = v831 ^ v830;
  LODWORD(STACK[0x4A40]) = LODWORD(STACK[0x4E68]) ^ v842 ^ v830;
  LODWORD(STACK[0x4A38]) = v830 ^ (v841 + v842);
  LODWORD(STACK[0x4A30]) = v827 ^ v830;
  LODWORD(STACK[0x4A28]) = v830 ^ LODWORD(STACK[0x5070]);
  v843 = STACK[0xCEA8];
  STACK[0x4A20] = STACK[0xCEA8];
  LODWORD(STACK[0x4DB0]) = v807;
  LODWORD(STACK[0x4A18]) = v807 & v686;
  LODWORD(STACK[0x4A10]) = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5378]);
  LODWORD(STACK[0x5228]) = 3;
  LODWORD(STACK[0x4A08]) = LODWORD(STACK[0x4E50]) ^ 0xC0C0C0C;
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x4E78]) ^ 0x29292929;
  STACK[0x57B0] = v843 + 9376;
  return v838(4294942958, 24386, 30936, 4294963073, 4470, 13527, 251);
}

uint64_t sub_1002F0800(uint64_t a1, uint64_t a2, int a3)
{
  v7 = STACK[0x51B8];
  v8 = *v6;
  v9 = 1978732275 * (v3 - (*(*v4 + (v8 & a2)) & 0x7FFFFFFF ^ a3)) + 1256620604;
  *(v5 + 492) = *(*v4 + (v8 & 0x75C5FB70)) & 0x7FFFFFFF ^ v9 ^ ((v9 ^ (((STACK[0x51B8] - 22549) | 0x1C04) - 1214493181)) + 42276748) ^ ((v9 ^ 0x13F5731D) - 1494479137) ^ ((v9 ^ 0x9D746494) + 678238552) ^ ((v9 ^ 0x73FBFFFD) - 958234049) ^ 0x48DA4A5;
  return (*(STACK[0x57D8] + 8 * (v7 - 16479)))();
}

uint64_t sub_1002F0924()
{
  v0 = STACK[0x2EA4];
  v1 = STACK[0x57D8];
  STACK[0xB838] = *(STACK[0x57D8] + 8 * LODWORD(STACK[0x2EA4]));
  return (*(v1 + 8 * ((23460 * (((v0 + 14378) ^ 0x6097B31F) + v0 == -1914848746)) ^ (v0 + 10635))))();
}

uint64_t sub_1002F09C8@<X0>(_BYTE *a1@<X8>)
{
  v3 = &STACK[0x1D280] + v2;
  v3[16] = *a1;
  v3[17] = a1[1];
  v3[18] = a1[2];
  v3[19] = a1[3];
  v3[20] = a1[4];
  v3[21] = a1[5];
  v3[22] = a1[6];
  v3[23] = a1[7];
  v3[24] = a1[8];
  v3[25] = a1[9];
  v3[26] = a1[10];
  v3[27] = a1[11];
  v3[28] = a1[12];
  v3[29] = a1[13];
  v3[30] = a1[14];
  v3[31] = a1[15];
  *v3 = *a1;
  *(v3 + 1) = *(a1 + 1);
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1002F0BBC()
{
  v1 = STACK[0x57D8];
  STACK[0x9270] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 6682 + v0 + 5479)))();
}

uint64_t sub_1002F0C54()
{
  v1 = *(STACK[0x69C8] + 4);
  LODWORD(STACK[0x59DC]) = v0 - 7097 + *STACK[0x69C8] - ((2 * *STACK[0x69C8]) & 0xE12AE03A) - 258649063;
  LODWORD(STACK[0x66E8]) = v1 - 258641891 - ((2 * v1) & 0xE12AE03A);
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1002F0D04@<X0>(unint64_t a1@<X4>, int a2@<W6>, unint64_t a3@<X8>)
{
  v10 = STACK[0x57D8];
  STACK[0xB0E0] = *(STACK[0x57D8] + 8 * v4);
  STACK[0x9CD8] = v5;
  v11 = STACK[0x7ED8];
  v12 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x71A8] = v12;
  STACK[0x7ED8] = v11 + (((v6 - 12994) | 0x5854u) ^ 0x5FD6);
  STACK[0xA390] = a3;
  STACK[0x8790] = v3;
  STACK[0x57C0] = a1;
  *(v12 + 70) = 64;
  *(v12 + 71) = a2;
  *(v12 + 36) = v12 + 24;
  *(v12 + 204) = v7;
  *(v12 + 205) = a2;
  *(v12 + 103) = v12 + 296;
  *(v12 + 208) = 1;
  *(v12 + 209) = a2;
  *(v12 + 105) = &STACK[0x8BE8];
  *(v12 + 342) = v7;
  *(v12 + 343) = a2;
  *(v12 + 172) = v12 + 848;
  *(v12 + 476) = v7;
  *(v12 + 477) = a2;
  *(v12 + 239) = v12 + 1384;
  STACK[0x55F0] = v8;
  if (a3 | v9)
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  return (*(v10 + 8 * (v14 | (16 * v14) | v6)))();
}

uint64_t sub_1002F10D8()
{
  v1 = STACK[0x1118];
  STACK[0x87A0] = 0;
  LODWORD(STACK[0x6EA4]) = 0;
  LODWORD(STACK[0x9CEC]) = 103679699;
  LODWORD(STACK[0x7134]) = v0;
  v2 = STACK[0x57D8];
  STACK[0xC440] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 134712))();
}

uint64_t sub_1002F11E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v23 = v10 - 1;
  v24 = (a2 + v23);
  v25 = a3 + v23 + v9;
  v26 = __ROR8__((a2 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = (v13 | (2 * (v26 + v15))) - (v26 + v15) + a4;
  v28 = v27 ^ v19;
  v29 = v27 ^ v22;
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x1F7B92942DEF21EFLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x1C02DF5B258263EDLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = ((v21 | (2 * (v34 + v33))) - (v34 + v33) + a6) ^ 0xBC372FD693E698B0;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = ((v37 - 0x6283822C6E3E9DE3) | 0x73980E9077463D3ALL) - ((v37 - 0x6283822C6E3E9DE3) | a7) + a7;
  v39 = v38 ^ 0x90224A555BCB4C3CLL;
  v40 = v38 ^ v8;
  v41 = (__ROR8__(v35, 8) + v36) ^ 0x224C09CA440C0C0BLL;
  v42 = (__ROR8__(v39, 8) + v40) ^ v12;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = v41 ^ __ROR8__(v36, 61);
  v45 = __ROR8__(v42, 8) + v43;
  v46 = ((2 * v45) | 0x77B2E7EACCC4165ELL) - v45;
  v47 = (__ROR8__(v41, 8) + v44) ^ 0xA199F9AE5F876A45;
  v48 = v47 ^ __ROR8__(v44, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v17;
  v50 = __ROR8__(v49, 8) + (v49 ^ __ROR8__(v48, 61));
  v51 = (v46 + a1) ^ 0xE7AA8E4652F5A623 ^ __ROR8__(v43, 61);
  v52 = __ROR8__((v46 + a1) ^ 0xE7AA8E4652F5A623, 8);
  v53 = (v52 + v51 - ((2 * (v52 + v51)) & 0x14BB94248533614ELL) - 0x75A235EDBD664F59) ^ 0xE74F54541981EA5DLL;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (a5 - ((v55 + v54) | a5) + ((v55 + v54) | 0x69D9C8467BD3E599)) ^ 0x4EC11CE98093265 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__((a5 - ((v55 + v54) | a5) + ((v55 + v54) | 0x69D9C8467BD3E599)) ^ 0x4EC11CE98093265, 8) + v56) ^ v20;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v7;
  *v25 = (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ v14) >> (8 * (v25 & 7u))) ^ ((v50 ^ v16) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(STACK[0x57D8] + 8 * (((v23 == 0) * v18) ^ v11)))();
}

uint64_t sub_1002F1474()
{
  v0 = STACK[0x51B8] - 22613;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0x7100]);
  STACK[0x7100] = 0;
  return (*(v1 + 8 * (v0 ^ 0xF07)))(v2);
}

uint64_t sub_1002F1500()
{
  LODWORD(STACK[0xA114]) = v0 + (LODWORD(STACK[0x244C]) | 0xD46) + LODWORD(STACK[0xC094]) - 410918960;
  v1 = STACK[0x57D8];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2464]));
  return (*(v1 + 8 * SLODWORD(STACK[0x2458])))();
}

uint64_t sub_1002F15AC()
{
  v1 = STACK[0x57D8];
  STACK[0xB568] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 9316) ^ 0x3632) + v0)))();
}

uint64_t sub_1002F1610()
{
  v2 = (STACK[0x3AEC] & 0xF34DD2BF) - 769884570;
  v3 = STACK[0x51B8] + 6474;
  *(v0 + 4736) = LODWORD(STACK[0x77FC]) + v1;
  return (*(STACK[0x57D8] + 8 * (v3 ^ (16 * (*(STACK[0x60B8] + 60) == v2)))))();
}

uint64_t sub_1002F1674()
{
  v0 = STACK[0x51B8];
  *(STACK[0xE5A0] + 736) = STACK[0x867C];
  return (*(STACK[0x57D8] + 8 * (v0 - 20439)))();
}

uint64_t sub_1002F1738()
{
  v0 = LODWORD(STACK[0x176C]) | 0x1488;
  v1 = STACK[0x57D8];
  v2 = STACK[0x1768];
  STACK[0xBE60] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1768]));
  return (*(v1 + 8 * ((v0 - 6020) ^ v2 ^ (15103 * (LODWORD(STACK[0x1764]) < 0xC3CB7E9F)))))();
}

uint64_t sub_1002F1898@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0x7E68] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * ((((a1 + 1333787468) & 0xBAEEFFF7) - 175034073) ^ a1)))();
}

uint64_t sub_1002F1914@<X0>(int a1@<W8>)
{
  v5 = STACK[0x1D14];
  v6 = v1 ^ a1 ^ (v2 ^ 0x6202E233u) & STACK[0x1D14];
  v7 = 1534937323 * ((v4 - 240) ^ 0xCD7888C2C6EEFB47);
  *(v3 + 616) = v6 + v7;
  v8 = STACK[0x51B8];
  *(v3 + 604) = v7 + 1451493860 + STACK[0x51B8];
  *(v3 + 600) = LODWORD(STACK[0x1D10]) - v7;
  *(v3 + 592) = v7;
  *(v3 + 624) = (v5 ^ 0x16) + v7;
  *(v3 + 612) = v5 ^ v7;
  *(v3 + 608) = v7;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (v8 ^ 0x2462)))(v4 - 240);
  return (*(v9 + 8 * SLODWORD(STACK[0x1D4E4])))(v10);
}

uint64_t sub_1002F19D8@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 22437;
  LOWORD(STACK[0xD012]) = a1;
  return (*(STACK[0x57D8] + 8 * ((4990 * ((v2 ^ 0x184A9DA6u) < 0x6616F455)) ^ (v1 - 22453))))();
}

uint64_t sub_1002F1B80()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 20731 + v0 + 20026)))();
}

uint64_t sub_1002F1C68()
{
  STACK[0x7420] = v1;
  LODWORD(STACK[0xABD0]) = STACK[0x9E3C];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1002FFA98()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x9AC)))(1032);
  STACK[0xD1B0] = v2 + 0x32FE2E1BBD6F5B40;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 474582015) & 0xE3B659FF) - 22582)) ^ v0)))();
}

uint64_t sub_1002FFD5C(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 39;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1002FFE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xB520];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 - 1569404569 + (v7 ^ 0x5D8B3229) + 3447)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1002FFFC8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0x9B78] = 0;
  return (*(v1 + 8 * (v0 - 8198)))(v2);
}

uint64_t sub_100300004()
{
  STACK[0x9EC0] = &STACK[0x743C];
  LODWORD(STACK[0x9E1C]) = 43686634;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_100300130(uint64_t a1, uint64_t a2, int8x16_t a3, int64x2_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, int8x16_t *a11)
{
  v24.i64[0] = a2 + v11 - 7;
  v24.i64[1] = a2 + v11 - 8;
  v25.i64[0] = a2 + v11 + 3;
  v25.i64[1] = a2 + v11 + 2;
  v26.i64[0] = a2 + v11 + 1;
  v27.i64[0] = a2 + v11 + 5;
  v27.i64[1] = a2 + v11 + 4;
  v28.i64[0] = a2 + v11 + 7;
  v26.i64[1] = a2 + v11;
  v28.i64[1] = v15 + v11 + v13;
  v29 = vandq_s8(v28, v23);
  v30 = vandq_s8(v27, v23);
  v31 = vandq_s8(v25, v23);
  v32 = vandq_s8(v26, v23);
  v33 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v36 = vdupq_n_s64(v21);
  v37 = vdupq_n_s64(v20);
  v38 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v39 = vaddq_s64(v35, v37);
  v40 = vaddq_s64(v34, v37);
  v41 = vaddq_s64(v33, v37);
  v42 = vdupq_n_s64(a10);
  v43 = veorq_s8(v41, v42);
  v44 = veorq_s8(v40, v42);
  v45 = vdupq_n_s64(v17);
  v46 = veorq_s8(v40, v45);
  v47 = veorq_s8(v41, v45);
  v48 = vdupq_n_s64(v18);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v46), v48);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v47), v48);
  v52 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v53 = veorq_s8(v49, v50);
  v54 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v55 = vdupq_n_s64(v22);
  v56 = veorq_s8(vaddq_s64(v54, v52), v55);
  v57 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v58 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53), v55);
  v60 = veorq_s8(v59, v58);
  v61 = veorq_s8(v56, v57);
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), a3), v64), a4), a5);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), a3), v63), a4), a5);
  v67 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = vdupq_n_s64(v16);
  v74 = veorq_s8(v72, v73);
  v75 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v76 = veorq_s8(v71, v73);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v78 = veorq_s8(v74, v75);
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vdupq_n_s64(a8);
  v81 = veorq_s8(vaddq_s64(v79, v77), v80);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78), v80);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v84 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v85 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v84);
  v87 = vaddq_s64(v85, v83);
  v88 = vdupq_n_s64(v19);
  v89 = veorq_s8(v87, v88);
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL)));
  v93 = vdupq_n_s64(a9);
  v179.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), veorq_s8(v89, v91)), v93), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v36)));
  v179.val[2] = vshlq_u64(veorq_s8(v92, v93), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v36)));
  v94 = veorq_s8(v39, v42);
  v95 = veorq_s8(v39, v45);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v48);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v55);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), a3), v100), a4), a5);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v73);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v80);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v88);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v106.i64[0] = a2 + v11 - 5;
  v106.i64[1] = a2 + v11 - 6;
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v107.i64[0] = a2 + v11 - 3;
  v107.i64[1] = a2 + v11 - 4;
  v110 = vaddq_s64(v38, v37);
  v179.val[1] = vshlq_u64(veorq_s8(v109, v93), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v36)));
  v111 = veorq_s8(v110, v42);
  v112 = veorq_s8(v110, v45);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v48);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v55);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v117, v117), a3), v117), a4), a5);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v73);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v80);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v88);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v127 = vandq_s8(v107, v23);
  v128 = vaddq_s64(v126, v125);
  v129 = vandq_s8(v106, v23);
  v179.val[0] = vshlq_u64(veorq_s8(v128, v93), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v36)));
  v130 = vandq_s8(v24, v23);
  v131 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v37);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v37);
  v134 = a11[25];
  v130.i64[0] = vqtbl4q_s8(v179, v134).u64[0];
  v179.val[0] = veorq_s8(v133, v42);
  v179.val[1] = veorq_s8(v132, v42);
  v135 = veorq_s8(v132, v45);
  v179.val[2] = veorq_s8(v133, v45);
  v179.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v135), v48);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v179.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL), v179.val[2]), v48);
  v136 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v179.val[2], 3uLL), v179.val[2], 0x3DuLL));
  v179.val[2] = veorq_s8(v179.val[1], v179.val[3]);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL);
  v179.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v179.val[2]);
  v179.val[1] = veorq_s8(vaddq_s64(v179.val[3], v136), v55);
  v179.val[0] = veorq_s8(v179.val[0], v55);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v137 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v179.val[2], 3uLL), v179.val[2], 0x3DuLL));
  v179.val[2] = veorq_s8(v179.val[1], v179.val[3]);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL);
  v179.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v179.val[2]);
  v179.val[1] = vaddq_s64(v179.val[3], v137);
  v179.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179.val[1], v179.val[1]), a3), v179.val[1]), a4), a5);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v179.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179.val[0], v179.val[0]), a3), v179.val[0]), a4), a5);
  v138 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v179.val[2], 3uLL), v179.val[2], 0x3DuLL));
  v179.val[2] = veorq_s8(v179.val[1], v179.val[3]);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL);
  v179.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v179.val[2]);
  v179.val[1] = veorq_s8(vaddq_s64(v179.val[3], v138), v73);
  v179.val[0] = veorq_s8(v179.val[0], v73);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v139 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v179.val[2], 3uLL), v179.val[2], 0x3DuLL));
  v179.val[2] = veorq_s8(v179.val[1], v179.val[3]);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL);
  v179.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v179.val[2]);
  v179.val[1] = veorq_s8(vaddq_s64(v179.val[3], v139), v80);
  v179.val[0] = veorq_s8(v179.val[0], v80);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v140 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v179.val[2], 3uLL), v179.val[2], 0x3DuLL));
  v179.val[2] = veorq_s8(v179.val[1], v179.val[3]);
  v179.val[3] = vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL);
  v179.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v179.val[2]);
  v179.val[1] = veorq_s8(vaddq_s64(v179.val[3], v140), v88);
  v179.val[0] = veorq_s8(v179.val[0], v88);
  v141 = vaddq_s64(v131, v37);
  v179.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), veorq_s8(v179.val[1], vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL))), v93), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v36)));
  v179.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL), veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v179.val[2], 3uLL), v179.val[2], 0x3DuLL))), v93), vnegq_s64(vandq_s8(vshlq_n_s64(v106, 3uLL), v36)));
  v142 = veorq_s8(v141, v42);
  v143 = veorq_s8(v141, v45);
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v48);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v55);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), a3), v148), a4), a5);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v73);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), v80);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v88);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL)));
  v154.i64[0] = a2 + v11 - 1;
  v154.i64[1] = a2 + v11 - 2;
  v179.val[1] = vshlq_u64(veorq_s8(v156, v93), vnegq_s64(vandq_s8(vshlq_n_s64(v107, 3uLL), v36)));
  v157 = vandq_s8(v154, v23);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v37);
  v159 = veorq_s8(v158, v42);
  v160 = veorq_s8(v158, v45);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v48);
  v162 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v164 = veorq_s8(v161, v162);
  v165 = veorq_s8(vaddq_s64(v163, v164), v55);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), a3), v167), a4), a5);
  v169 = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v171 = veorq_s8(v168, v169);
  v172 = veorq_s8(vaddq_s64(v170, v171), v73);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v80);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v88);
  v179.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL))), v93), vnegq_s64(vandq_s8(vshlq_n_s64(v154, 3uLL), v36)));
  v130.i64[1] = vqtbl4q_s8(v179, v134).u64[0];
  v177 = vrev64q_s8(v130);
  *(a2 + v11 - 8) = veorq_s8(vextq_s8(v177, v177, 8uLL), *(a1 + v11));
  return (*(STACK[0x57D8] + 8 * ((30 * (v14 == 0)) ^ v12)))(a1 - 16, a2 - 16);
}

uint64_t sub_1003011AC@<X0>(int a1@<W8>)
{
  STACK[0x8738] = v1 + 1;
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((((v1 & 0xFFFFFFF8) - 403017778) ^ 0xB07907F8) + 1633619956 + ((((v1 & 0xFFFFFFF8) << (((a1 + 50) | 0x10u) - 83)) + 1341448094) & 0x60F20FF0) + 477) & 0xFFFFFFF8));
  v3 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (v2 + v3 - ((2 * (v2 + v3)) & 0x3C8476C9B6FC9894) + 0x1E423B64DB7E4C4ALL) ^ 0xEA546A2D4420702DLL;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x153242EE3CF06A49;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x2275D4C73835399BLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) & 0x8DBF19AAAC00F0B0) - (v10 + v9) - 0x46DF8CD556007859) ^ 0x5C8F69998742BB7ALL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xC7DDC9F6CC45B721;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((v15 + v14) & 0xB85327A3E084E317 ^ 0x800025A300804203) + ((v15 + v14) ^ 0x79538200F927B974) - (((v15 + v14) ^ 0x79538200F927B974) & 0xB85327A3E084E317)) ^ 0x692685064071801BLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) | 0xC922C93937D01806) - ((v18 + v17) | 0x36DD36C6C82FE7F9) + 0x36DD36C6C82FE7F9) ^ 0x96AF25079448121DLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  LOBYTE(v19) = (((((2 * (v21 + v20)) & 0x27D2EB88D75B0B88) - (v21 + v20) - 0x13E975C46BAD85C5) ^ 0x2DD542E930973213) >> (8 * (v1 & 7u))) ^ *v1;
  return (*(STACK[0x57D8] + 8 * ((70 * ((((v19 ^ 0x77) - 92) ^ ((v19 ^ 0xDB) + 16) ^ ((v19 ^ 0xAC) + 121)) != 41)) ^ a1)))(103679699);
}

uint64_t sub_1003014D4@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0xBA80] + v1;
  STACK[0x8980] = a1;
  LODWORD(STACK[0x7E70]) = v3;
  STACK[0x8878] = v4;
  return (*(STACK[0x57D8] + 8 * ((101 * (((v4 == 0) ^ (v2 - 62)) & 1)) ^ v2)))();
}

uint64_t sub_10030163C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v18 = v9 ^ 0x33A1;
  v19 = (v9 ^ 0x59FB) + 4908;
  LODWORD(STACK[0x5780]) = v19;
  v20 = (v19 ^ 0xAB81722) * v12;
  v21 = 678756352 * v12;
  v22 = 9 * v8;
  v23 = (1634639241 * v8) >> 7;
  v24 = v23 | (v22 << 25);
  HIDWORD(v26) = v23;
  LODWORD(v26) = 40090311 * v24;
  v25 = v26 >> 1;
  v27 = 1371168271 * v11;
  STACK[0x57B0] = 2 * (v9 ^ 0x59FBu);
  v28 = v20 >> (2 * (v9 ^ 0xFB) - 70);
  v29 = 1855423424 * v11;
  v30 = v29 & 0x10000;
  v31 = v29 & 0xFFFFFFC0 | (v27 >> 26);
  v32 = (61538744 * v10) | ((1618305079 * v10) >> 29);
  if ((v21 & v30) != 0)
  {
    v30 = -v30;
  }

  v33 = (v31 & 0xFFFEFFFF ^ v32 ^ (v30 + v21 + v28)) + v24;
  v34 = (1648754688 * v33) | ((1045704995 * v33) >> 15);
  v35 = (1868645280 * v31) | ((326830621 * v31) >> 27);
  v36 = ((1398145024 * v32) | ((1322625451 * v32) >> 15)) - v25 - v35 + v34 - 2 * v34;
  v37 = -370079551 * v35;
  v38 = (1811939328 * v34) | ((-696396837 * v34) >> 6);
  v39 = 146866176 * v35;
  v40 = (-965236164 * v36) | ((-241309041 * v36) >> 30);
  v41 = (-2070151168 * v25) | ((130933031 * v25) >> 14);
  v42 = ((v39 & 0xFFFF0000 | HIWORD(v37)) + v38 - v40) ^ v41;
  v43 = -1452503031 * (((v42 ^ 0xBACFDEFE) - 1467259623) ^ ((v42 ^ 0xEEB46CE4) - 51325181) ^ ((v42 ^ 0x547BB21A) + 1178536445)) + 148361946;
  HIDWORD(v44) = v42;
  LODWORD(v44) = ((v43 ^ 0xCA43E26A) + 785662061) ^ v43 ^ ((v43 ^ 0x93205514) + 2008545043) ^ ((v43 ^ 0xBD74157E) + 1508095865) ^ ((v43 ^ 0xFF7FFFF8) + 468213248);
  v45 = ((353370112 * v40) | ((v40 * (a8 + 2282)) >> 12)) + 1891477600 - 2 * (((353370112 * v40) | ((v40 * (a8 + 2282)) >> 12)) & 0x70BDA872 ^ ((v40 * (a8 + 2282)) >> 12) & 0x12);
  v46 = (914854400 * v38) | ((228279241 * v38) >> 23);
  v47 = (((v44 >> 2) ^ 0xB5836524) - 1246336178) ^ (((v44 >> 2) ^ 0x96BA04BC) - 1769010474) ^ (((v44 >> 2) ^ 0x25E376E6) + 634812560);
  v48 = (v46 ^ ((415236096 * v41) | ((-1483163549 * v41) >> 10))) - (((v45 ^ 0xFB3B1DB7) + 80011849) ^ ((v45 ^ 0x5B7EBC68) - 1535032424) ^ ((v45 ^ 0xD0F809BF) + 789050945)) - v47 + 53426817;
  v49 = ((v48 ^ 0x682E0AE4) - 80986925) ^ v48 ^ ((v48 ^ 0xE419B1A0) + 1998292887) ^ ((v48 ^ 0x9F37AD72) + 204839749) ^ ((v48 ^ 0x7FFDDFFF) - 318772790) ^ (1937113521 * (v47 - 1571495109 * (v46 - (v45 ^ 0x70BDA860))) - 326726040);
  v50 = v47 - (((v49 ^ 0x81185EB3) - 522788141) ^ ((v49 ^ 0x1C32B404) + 2113669222) ^ ((v49 ^ 0xF58118AC) - 1806719794));
  LODWORD(STACK[0x5750]) = v45;
  v51 = v49 ^ 0x9E31439E ^ v45;
  v52 = v48 - (((v49 ^ 0xDAF908CE) - 1153977168) ^ ((v49 ^ 0xD116F67C) - 1328002530) ^ ((v49 ^ 0x63440CA9) + 42643657));
  v53 = (((-1292414311 * v50 + 944960781) ^ 0x25A1E7C3) + 1347440351) ^ (-1292414311 * v50 + 944960781) ^ (((-1292414311 * v50 + 944960781) ^ 0xA62A52DF) - 740557885) ^ (((-1292414311 * v50 + 944960781) ^ (a4 + 3959)) + 1124840729) ^ (((-1292414311 * v50 + 944960781) ^ (a6 + 576)) + 1250842343);
  v54 = -619396797 * (((v51 ^ 0x30232E6E) - 807612014) ^ ((v51 ^ 0xDEBD92D0) + 558001456) ^ ((v51 ^ 0x68B9A55B) - 1756996955)) - 931728933;
  v55 = (v54 ^ 0x328E7A14) & (2 * (v54 & 0xBB2E7A14)) ^ v54 & 0xBB2E7A14;
  v56 = ((2 * (v54 ^ 0x64C68A1C)) ^ 0xBFD1E010) & (v54 ^ 0x64C68A1C) ^ (2 * (v54 ^ 0x64C68A1C)) & 0xDFE8F008;
  v57 = v56 ^ 0x40281008;
  v58 = (v56 ^ 0x9DC0E000) & (4 * v55) ^ v55;
  v59 = ((4 * v57) ^ 0x7FA3C020) & v57 ^ (4 * v57) & 0xDFE8F008;
  v60 = v58 ^ 0xDFE8F008 ^ (v59 ^ 0x5FA0C000) & (16 * v58);
  v61 = (16 * (v59 ^ 0x80483008)) & 0xDFE8F000 ^ 0x160F008 ^ ((16 * (v59 ^ 0x80483008)) ^ 0xFE8F0080) & (v59 ^ 0x80483008);
  v62 = (v60 << 8) & 0xDFE8F000 ^ v60 ^ ((v60 << 8) ^ 0xE8F00800) & v61;
  v63 = v54 ^ (2 * ((v62 << 16) & 0x5FE80000 ^ v62 ^ ((v62 << 16) ^ 0x70080000) & ((v61 << 8) & 0x5FE80000 ^ 0x17080000 ^ ((v61 << 8) ^ 0xE8F00000) & v61)));
  v64 = v50 * (v13 + 3451) + 657778132;
  v65 = (v64 ^ 0xB0A9B1F1) & (2 * (v64 & 0x22ADC000)) ^ v64 & 0x22ADC000;
  v66 = (2 * (v64 ^ 0xF4EB31F1)) & 0xD646E008 ^ 0x52420005 ^ ((2 * (v64 ^ 0xF4EB31F1)) ^ v17) & (v64 ^ 0xF4EB31F1);
  v67 = (4 * v65) & 0x96460000 ^ v65 ^ ((4 * v65) | 0x30) & v66;
  v68 = (4 * v66) & 0xD646FBDC ^ 0x86441089 ^ ((4 * v66) ^ 0x591BEF74) & v66;
  v69 = (16 * v67) & 0xD646FBD0 ^ v67 ^ ((16 * v67) ^ 0x1C0) & v68;
  v70 = (16 * v68) & 0xD646FBD0 ^ 0x9200420D ^ ((16 * v68) ^ 0x646FBDD0) & v68;
  v71 = v69 ^ (v69 << 8) & 0xD646FB00 ^ ((v69 << 8) ^ 0x1DC00) & v70 ^ 0xD6462201;
  v72 = (v71 << 16) & 0x56460000 ^ v71 ^ ((v71 << 16) ^ 0x7BDD0000) & ((v70 << 8) & 0x56460000 ^ 0x10040000 ^ ((v70 << 8) ^ 0x46FB0000) & v70);
  v73 = 1915416461 * (((v49 ^ 0xD6CE1545) - 1224693467) ^ ((v49 ^ 0x3A497C9) + 1651125161) ^ ((v49 ^ 0xBDC17097) - 602944265)) - 331594280;
  v74 = -1856537496 * (((v49 ^ 0x31E5EAE9) + 1345017481) ^ ((v49 ^ 0x3400F6F7) + 1439582871) ^ ((v49 ^ 0x6D4EEE05) + 209736293)) + 507837436;
  v75 = (2 * (v74 & 0xA7C28E08)) & 0x48810000 ^ v74 & 0xA7C28E08 ^ ((2 * (v74 & 0xA7C28E08)) | 8) & (v74 ^ 0xCF410E4E);
  v76 = (2 * (v74 ^ 0xCF410E4E)) & 0x68838040 ^ 0x28808042 ^ ((2 * (v74 ^ 0xCF410E4E)) ^ 0xD1070080) & (v74 ^ 0xCF410E4E);
  v77 = v75 ^ 0x68838046 ^ (4 * v75) & 0x68838040 ^ ((4 * v75) ^ 0x10) & v76;
  v78 = (4 * v76) & 0x68838040 ^ 0x48818042 ^ ((4 * v76) ^ 0xA20E0108) & v76;
  v79 = (16 * v77) & 0x68838040 ^ v77 ^ ((16 * v77) ^ 0x88380420) & v78;
  v80 = (16 * v78) & 0x68838040 ^ 0x60838042 ^ ((16 * v78) ^ 0x88380420) & v78;
  v81 = (v79 << 8) & 0x68838000 ^ v79 ^ ((v79 << 8) ^ 0x83804200) & v80;
  v82 = (v81 << 16) & 0x68830000 ^ v81 ^ ((v81 << 16) ^ 0x420000) & ((v80 << 8) & 0x68830000 ^ 0x68030000 ^ ((v80 << 8) ^ 0x83800000) & v80);
  LODWORD(STACK[0x5610]) = v51;
  v83 = 402653184 * (((v51 ^ a5) - 1025029481) ^ ((v51 ^ 3) + 1954672957) ^ ((v51 ^ 0xF) - 809607759)) - 578966174;
  v84 = (v83 ^ 0xC9ECD9FF) & (2 * (v83 & (v16 + 2))) ^ v83 & (v16 + 2) ^ (((((v83 & (v16 + 2)) >> 27) & 1) << 28) | 0x402C8020);
  v85 = (2 * (v83 ^ 0xC9ECD9FF)) & 0x50000000 ^ 0x50000001 ^ ((2 * (v83 ^ 0xC9ECD9FF)) ^ 0xA4911480) & (v83 ^ 0xC9ECD9FF);
  v86 = (4 * v84) & 0x536E8B60 ^ v84 ^ ((4 * v84) ^ 0xB20080) & v85;
  v87 = (4 * v85) & 0x536E8B60 ^ 0x12448261 ^ ((4 * v85) ^ 0x4DBA2D84) & v85;
  v88 = (16 * v86) & 0x536E8B60 ^ v86 ^ ((16 * v86) ^ 0xE80200) & v87;
  v89 = (16 * v87) & 0x536E8B60 ^ 0x41060961 ^ ((16 * v87) ^ 0x36E8B610) & v87;
  v90 = v88 ^ 0x510A0941 ^ (v88 << 8) & 0x536E8B00 ^ ((v88 << 8) ^ 0x66822000) & v89;
  v91 = (((v73 ^ 0x7CDA490B) - 799088028) ^ v73 ^ ((v73 ^ 0xCE7D07BF) + 1660529880) ^ ((v73 ^ 0x9E03EDD8) + 847726257) ^ ((v73 ^ (v14 - 2055)) - 748987244)) >> 29;
  v92 = (v63 >> 5) & 0x74AC20F ^ 0x1BD7DF0 ^ (v83 ^ (2 * ((v90 << 16) & 0x536E0000 ^ v90 ^ ((v90 << 16) ^ 0xB610000) & ((v89 << 8) & 0x536E0000 ^ 0x11640000 ^ ((v89 << 8) ^ 0x6E8B0000) & v89))) ^ 0x3A2A79AC) & ((v63 >> 5) ^ 0xFE56832E);
  v93 = -769784320 * v52 + 1319421967;
  v94 = v91 ^ 0x3BCC0712 ^ (v74 ^ (2 * v82) ^ 0x5C0D8998) & (v91 ^ 0xFFFFFFFD);
  v95 = ((((-1234628861 * v52 - 416779289) ^ 0xAEB3FF9F) + 1499822002) ^ (-1234628861 * v52 - 416779289) ^ (((-1234628861 * v52 - 416779289) ^ 0x827FC412) + 1974029373) ^ (((-1234628861 * v52 - 416779289) ^ 0x4B1A339A) - 1127433290) ^ (((-1234628861 * v52 - 416779289) ^ 0x6FFF7FC6) - 1742080022)) >> 23;
  v96 = (v95 ^ 0xFFFFFFEF) & (v93 ^ ((v93 ^ 0x58B89117) - 135531800) ^ ((v93 ^ 0x67354D2C) - 932827427) ^ ((v93 ^ 0x9186BFCB) + 1054202940) ^ ((v93 ^ 0xFEA7FFFF) + 1374985232) ^ 0x94D9475) ^ (v95 | 0x59E1087A);
  v97 = (v64 ^ (2 * v72) ^ 0xFE0FB97) & ((v53 >> 20) ^ 0xFFFFF75F) ^ (v53 >> 20) & 0x9FE;
  v98 = ((v97 ^ 0x6DADF913) - 1270486451) ^ ((v97 ^ 0x314D0F55) - 391832565) ^ ((v97 ^ 0x79A838E7) - 1606407239);
  v99 = ((573210624 * (v15 + v98 - 456)) | ((-1984412587 * (v15 + v98 - 456) + 988039324) >> 17)) + 609091584;
  v100 = (-1780201472 * (v94 - v96 - v92 - v98 - 56566273)) | ((-1009599351 * (v94 - v96 - v92 - v98 - 56566273)) >> 21);
  v101 = -805306368 * v96 + ((1810947693 * v96) >> 4);
  v102 = v101 + 581448832 * v92 + ((574967913 * v92) >> 25) + v100;
  v103 = -292872757 * ((v102 ^ v99) + 2 * (v102 & v99));
  v104 = (v103 << (v103 & 6) << (v103 & 6 ^ 6)) + (v103 >> 26);
  v105 = (119537664 * v100) | ((-1554935751 * v100) >> 11);
  v106 = (-1549008896 * v101) | ((-1705596693 * v101) >> 14);
  v107 = (v104 ^ (((1811939328 * v99) | ((952164123 * v99) >> 6)) - v105)) + v106;
  v108 = (839955076 * v105) | ((1283730593 * v105) >> 30);
  v109 = (1962934272 * v104) | ((1737594485 * v104) >> 8);
  v110 = -1110590336 * v107 + ((2138807161 * v107) >> 25);
  v111 = (-1945566411 * (v108 - v109)) ^ v110;
  v112 = (v108 ^ -v108 ^ (((2030043136 * v106) | ((-2034877831 * v106) >> 8)) - (v108 ^ ((2030043136 * v106) | ((-2034877831 * v106) >> 8))))) + ((2030043136 * v106) | ((-2034877831 * v106) >> 8)) + v109 + v110 - 2 * v110;
  LODWORD(STACK[0x5790]) = v112;
  v113 = 460303053 * (v112 ^ (v111 + 854107589));
  if (v113 >= 0xD03080EE)
  {
    v114 = -802127634;
  }

  else
  {
    v114 = 0;
  }

  v115 = v113 + 802127634;
  if (v113 < 0xD03080EE)
  {
    v115 = v113;
  }

  if (v115)
  {
    v114 = v113;
  }

  LODWORD(STACK[0x5760]) = v114;
  v116 = STACK[0x57D8];
  v117 = (*(STACK[0x57D8] + 8 * (v18 ^ 0x3D8A)))(1028);
  STACK[0xD4A8] = v117;
  return (*(v116 + 8 * ((250 * (v117 == 0)) ^ v18)))();
}

uint64_t sub_1003027D0()
{
  LODWORD(STACK[0x5480]) += LODWORD(STACK[0x51C0]);
  LODWORD(STACK[0x50E8]) -= LODWORD(STACK[0x5408]);
  LODWORD(STACK[0x5408]) = LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5440]) ^ LODWORD(STACK[0x5038]);
  v2 = STACK[0x5420];
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x54E0]) - LODWORD(STACK[0x5420]) + LODWORD(STACK[0x5500]);
  LODWORD(STACK[0x54C0]) += v1;
  LODWORD(STACK[0x50E0]) += LODWORD(STACK[0x5790]) ^ 0xA8FF233A;
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x5410]) ^ 0x3B3B3B3B;
  LODWORD(STACK[0x50D8]) = v2 >> 1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100302B68()
{
  v1 = (STACK[0x51B8] - 22614) | 1;
  v2 = STACK[0x51B8] + v0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0xA238]);
  return (*(v3 + 8 * (v2 ^ 0x3869 ^ v1)))(v4);
}

uint64_t sub_100302BC0()
{
  v0 = STACK[0x51B8] - 22046;
  LODWORD(STACK[0xC55C]) = LODWORD(STACK[0x6724]) << ((STACK[0x51B8] + 122) ^ 0xD4);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1764)))();
}

uint64_t sub_100302C2C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v5 & 0xC47AAFBF;
  v7 = v3 + a3 + 397687002 > (v4 + 1200164925);
  if ((v3 + a3 - 888019338) > 0xB35DAD9B != v4 + 1200164925 < (v6 ^ 0x17A6) + 1285691847)
  {
    v7 = (v3 + a3 - 888019338) > 0xB35DAD9B;
  }

  return (*(STACK[0x57D8] + 8 * ((!v7 * (v6 ^ 0x2F67)) ^ v6)))(4294924618);
}

uint64_t sub_100302CC8()
{
  v3 = (((LODWORD(STACK[0xB2FC]) ^ 0x1135CFAB) - 288739243) ^ ((LODWORD(STACK[0xB2FC]) ^ 0xC08F9A2E) + (((v1 + 67238577) | 0xB21080D8) ^ 0x8962B60D)) ^ ((LODWORD(STACK[0xB2FC]) ^ 0x3A6D511) - 61265169)) + 1538161894;
  v4 = v3 < 0x8991FC52;
  v5 = v0 + 1395984131 < v3;
  if ((v0 + 1395984131) < 0x8991FC52 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((7514 * v5) ^ (v1 + v2))))();
}

uint64_t sub_100302EB8()
{
  LODWORD(STACK[0xE4F4]) = v2;
  LODWORD(STACK[0xE4F0]) = v0;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100302EF4()
{
  v0 = STACK[0x51B8] - 18595;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xB948]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100302FF4()
{
  v0 = (STACK[0x51B8] - 22013) | 0x80;
  v1 = STACK[0x57D8];
  v2 = STACK[0xFB8];
  STACK[0x8CA8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xFB8]));
  return (*(v1 + 8 * ((v0 ^ 0x2ACD) + v2)))();
}

uint64_t sub_1003030BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5 + 853;
  *(STACK[0x9370] + 16) = ((v7 + 21729) ^ 0x5856) - v6;
  return (*(STACK[0x57D8] + 8 * (v7 + 3415)))(a1, a2, a3, 0x7D0ACAAAE9EC381DLL, a5, STACK[0x57C0]);
}

uint64_t sub_1003032B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7 - 103679699 + *(a7 + 68);
  *(a7 + 68) = v8;
  v9 = v8 + 1591513467;
  v10 = v7 + 1487833768;
  v11 = v8 > ((a4 + 348797389) & 0xEB35DF57 ^ 0xA12336D2);
  v12 = v10 < 0x5EDC917B;
  v13 = v9 < v10;
  if (v12 != v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (*(STACK[0x57D8] + 8 * ((26851 * v14) ^ a4)))();
}

uint64_t sub_10030334C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 6634)))();
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10030337C()
{
  v2 = *(v1 + 3064);
  v3 = *(v1 + 3076);
  v4 = *(v1 + 3080);
  v5 = *(v1 + 3099);
  v6 = *(v1 + 3100);
  v7 = *(v1 + 3104);
  LODWORD(STACK[0x57C0]) = *(v1 + 3160);
  return (*(STACK[0x57D8] + 8 * (v0 - 18019)))(v2, v4, v3, *(v1 + 3180), v6, v5, v7);
}

uint64_t sub_100303738()
{
  v0 = LODWORD(STACK[0x1EE4]) | 6;
  STACK[0x8B38] = STACK[0x7440];
  v1 = STACK[0x57D8];
  v2 = STACK[0x1EE8];
  STACK[0x8660] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1EE8]));
  return (*(v1 + 8 * ((v0 ^ 0x540) + v2)))();
}

uint64_t sub_1003037E4()
{
  LODWORD(STACK[0x62B4]) = v1;
  LODWORD(STACK[0xC224]) = -173137996;
  return (*(STACK[0x57D8] + 8 * (v0 - 8744)))();
}

uint64_t sub_1003038F4()
{
  STACK[0xE860] = v1;
  v2 = STACK[0xB678];
  STACK[0xE868] = STACK[0xB678];
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 > 9) * (((v0 - 507515433) & 0x1E3FEE9F) + ((v0 - 20791) ^ 0xFFFFD37B))) ^ (v0 - 4315))))();
}

uint64_t sub_10030396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x4730]) = v10;
  LODWORD(STACK[0x4740]) = v9;
  LODWORD(STACK[0x4738]) = v11;
  LODWORD(STACK[0x5780]) = -809727839;
  LODWORD(STACK[0x5790]) = 2064474284;
  LODWORD(STACK[0x5760]) = 505788600;
  LODWORD(STACK[0x5770]) = 84596021;
  STACK[0x5670] = v7 + 4;
  STACK[0x5660] = v7 + 6;
  STACK[0x5650] = v7 + 7;
  v12 = *(STACK[0x57D8] + 8 * (v8 ^ 0x1DED));
  LODWORD(STACK[0x5680]) = 974185183;
  return v12(a1, a2, a3, a4, 505788600, 84596021, a7, 3485239457);
}

uint64_t sub_100303B10()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x9D20] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20787));
  return (*(v1 + 8 * (v0 - 12504)))();
}

uint64_t sub_100303CB8()
{
  v0 = STACK[0x51B8] ^ 0x6CFC;
  v1 = STACK[0x57D8];
  v2 = STACK[0x17BC];
  STACK[0xBE60] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x17BC]));
  return (*(v1 + 8 * (v0 + v2 - 10659)))();
}

uint64_t sub_100303D04()
{
  v0 = STACK[0x51B8] ^ 0x4585;
  v1 = STACK[0x57D8];
  v2 = STACK[0x3F84];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3F84]));
  return (*(v1 + 8 * ((v0 + 4066) ^ v2)))();
}

uint64_t sub_100303D54()
{
  v6 = -338224375 * *(v1 + STACK[0x57B0]);
  v7 = v6 ^ v4;
  v8 = (v6 ^ v4) + v3;
  v9 = HIWORD(v8);
  v10 = (v8 - HIWORD(v8)) >> 8;
  v11 = STACK[0x57B0] + v0;
  v12 = STACK[0x57B0] + v5;
  v13 = v12 + v7 - v10 - v9;
  v14 = STACK[0x57B0] + v2 + v7 - v10 - v9;
  v15 = (v14 ^ v6) + v3;
  v16 = HIWORD(v15);
  v17 = (v15 - HIWORD(v15)) >> 8;
  v18 = v12 + (v14 ^ v6) - v17 - v16;
  v19 = (STACK[0x57B0] + v2 + (v14 ^ v6) - v17 - v16) ^ v6;
  v20 = (v19 + v3) >> 16;
  LODWORD(STACK[0x57C0]) ^= v13 ^ STACK[0x5780] & (v13 >> 1) ^ v18 ^ (v18 >> 1) & 0x7F666E1F ^ (v12 + v19 - ((v19 + v3 - v20) >> 8) - v20) ^ ((v12 + v19 - ((v19 + v3 - v20) >> 8) - v20) >> 1) & 0x7F666E1F;
  return (*(STACK[0x57D8] + 8 * ((222 * (v11 != 15)) ^ LODWORD(STACK[0x5790]))))();
}

uint64_t sub_1003040F8()
{
  v1 = STACK[0xA2D8];
  v2 = *(STACK[0xA2D8] + 8);
  v3 = STACK[0xA268];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0x57D8] + 8 * (((41 * ((v0 + 310838963) & 0xED78EFAE ^ 0x6311) - 23538) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1003042D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = ((STACK[0x53B0] | 0xB9C250C3D802555ALL) - STACK[0x5510] - 0x5CE12861EC012AADLL) ^ 0xE46929B50DC649FELL;
  v10 = v9 ^ STACK[0x53C0];
  v11 = __ROR8__(v9, 8);
  v12 = (0x37C53031216073AFLL - ((v11 + v10) | 0x37C53031216073AFLL) + ((v11 + v10) | 0xC83ACFCEDE9F8C50)) ^ 0xF0F27EA4399AE427;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = __ROR8__((v14 + v13 - ((2 * (v14 + v13)) & 0x3E7148FBAB23B50ELL) - 0x60C75B822A6E2579) ^ 0x7AB8150059543FD6, 8);
  v16 = (v14 + v13 - ((2 * (v14 + v13)) & 0x3E7148FBAB23B50ELL) - 0x60C75B822A6E2579) ^ 0x7AB8150059543FD6 ^ __ROR8__(v13, 61);
  v17 = (((2 * (v15 + v16)) | 0xEE037B0811F9D224) - (v15 + v16) + 0x8FE427BF70316EELL) ^ 0x16A040DFD9A91068;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0x1472C48DDDD1A964) + 0xA396246EEE8D4B2) ^ 0xD059294AED4A6B2BLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = *(STACK[0x5740] + (LODWORD(STACK[0x54D0]) & (((LODWORD(STACK[0x5500]) ^ 0xC8506290) & STACK[0x5348]) + 370413517 + ((LODWORD(STACK[0x53A0]) + 1680346305) ^ STACK[0x5670]) + 456)));
  v23 = (((2 * ((v22 + STACK[0x56E0]) ^ 0x7F3417A9B1642254)) | 0xECB3984837DA5368) - ((v22 + STACK[0x56E0]) ^ 0x7F3417A9B1642254) + 0x9A633DBE412D64CLL) ^ 0x31E5DA594B4E68B3;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25 - ((2 * (v24 + v25)) & 0x9BBF3FEE452D48DCLL) + 0x4DDF9FF72296A46ELL) ^ 0x75172E9DC593CC19;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xE580B17D8CC5E551;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xEA0468BCA83E4DD2) - (v30 + v29) + 0xAFDCBA1ABE0D916) ^ 0xEB5C36FA7AB5206CLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xDA604B0C03A2BF99;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (0x9049B9150B477566 - ((v35 + v34) | 0x9049B9150B477566) + ((v35 + v34) | 0x6FB646EAF4B88A99)) ^ 0x9583A4273F86BB5ELL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = *(STACK[0x5328] + (LODWORD(STACK[0x5218]) & (((STACK[0x5308] - 2015476596) ^ 0x9F81F480) + 1390149644 + ((LODWORD(STACK[0x5368]) + 264014104) & 0x3F03E900))));
  v40 = (v39 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x38C8B16AE7056877;
  v43 = __ROR8__(v42, 8);
  v44 = v42 ^ __ROR8__(v41, 61);
  v45 = (v43 + v44 - ((2 * (v43 + v44)) & 0x9B66DCD19BF1E024) - 0x324C919732070FEELL) ^ 0x2833DF15413D1543;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (v47 + v46 - ((2 * (v47 + v46)) & 0x22E8CF2AC00E0F5ALL) + 0x11746795600707ADLL) ^ 0xF0D59ACEB152FED7;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xDA604B0C03A2BF99;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__((0x9577F919D018EA45 - ((v52 + v51) | 0x9577F919D018EA45) + ((v52 + v51) | 0x6A8806E62FE715BALL)) ^ 0x90BDE42BE4D9247DLL, 8);
  v54 = (0x9577F919D018EA45 - ((v52 + v51) | 0x9577F919D018EA45) + ((v52 + v51) | 0x6A8806E62FE715BALL)) ^ 0x90BDE42BE4D9247DLL ^ __ROR8__(v51, 61);
  v55 = *(STACK[0x5320] + (STACK[0x5550] & STACK[0x5310]));
  v56 = (v55 + STACK[0x5300]) ^ 0xB88801D4E1C76353;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x38C8B16AE7056877;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xE580B17D8CC5E551;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xE1A1FD5BD155F97ALL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) & 0xA25DC4E592482A4CLL) - (v64 + v63) - 0x512EE272C9241527) ^ 0x74B1568135795540;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = *(STACK[0x5370] + (STACK[0x52B0] & ((STACK[0x5380] & 0x13954430) + (STACK[0x5380] | 0x13954434) + 1722217700)));
  v68 = (v67 + STACK[0x5360]) ^ 0xB88801D4E1C76353;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x38C8B16AE7056877;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = ((2 * (v72 + v71)) & 0x13CE216339CF8932) - (v72 + v71);
  v74 = *(STACK[0x5370] + (STACK[0x52B0] & ((STACK[0x5220] ^ 0xF48B9EF8) - 2052023774 + (STACK[0x5208] & 0xE9173DF0)) & (LODWORD(STACK[0x54F0]) ^ 0xFFFFE9D9)));
  v75 = (__ROR8__(v65, 8) + v66) ^ 0xFA35E2CDCB3E31C7;
  v76 = v75 ^ __ROR8__(v66, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v73 - 0x9E710B19CE7C49ALL) ^ 0x13985E33EFDDDE37 ^ __ROR8__(v71, 61);
  v79 = (__ROR8__((v73 - 0x9E710B19CE7C49ALL) ^ 0x13985E33EFDDDE37, 8) + v78) ^ 0xE1A1FD5BD155F97ALL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xDA604B0C03A2BF99;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((v74 + STACK[0x5338]) | 0x1190889AAED60AEDLL) - ((v74 + STACK[0x5338]) | 0xEE6F77655129F512) - 0x1190889AAED60AEELL) ^ 0xA918894E4F1169BELL;
  v85 = v84 ^ __ROR8__(v74, 61);
  v86 = __ROR8__(v84, 8);
  v87 = v53 + v54 - ((2 * (v53 + v54)) & 0xB9CDB394B57FB0A4);
  v88 = 0x5CFCA21C932E6C6ELL - ((v77 + v76) | 0x5CFCA21C932E6C6ELL) + ((v77 + v76) | 0xA3035DE36CD19391);
  v89 = (v86 + v85 - ((2 * (v86 + v85)) & 0x1F56E4E491756576) + 0xFAB727248BAB2BBLL) ^ 0x3763C318AFBFDACCLL;
  v90 = v89 ^ __ROR8__(v85, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0xE580B17D8CC5E551;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0xE1A1FD5BD155F97ALL;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = v83 + v82 - ((2 * (v83 + v82)) & 0xB654380223B5C2FELL);
  v97 = ((2 * (v95 + v94)) & 0x4A13791B9AC0C330) - (v95 + v94);
  v98 = *(STACK[0x5260] + (STACK[0x52A8] & STACK[0x4EB0]));
  v99 = (v98 + STACK[0x51A8]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v98, 61);
  v100 = __ROR8__((v98 + STACK[0x51A8]) ^ 0xB88801D4E1C76353, 8);
  v101 = ((2 * (v100 + v99)) | 0xD5A2C8DE823F701CLL) - (v100 + v99);
  v102 = (__ROR8__(v20, 8) + v21) ^ 0xFA35E2CDCB3E31C7;
  v103 = v102 ^ __ROR8__(v21, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5600] = (0x9894221431672B48 - ((v38 + v37) | 0x9894221431672B48) + ((v38 + v37) | 0x676BDDEBCE98D4B7)) ^ 0xB59BD10DEE7D0719 ^ __ROR8__(v37, 61);
  v105 = __ROR8__((0x9894221431672B48 - ((v38 + v37) | 0x9894221431672B48) + ((v38 + v37) | 0x676BDDEBCE98D4B7)) ^ 0xB59BD10DEE7D0719, 8);
  STACK[0x5560] = (v87 - 0x23192635A54027AELL) ^ 0xE16D52C7A5A0BFCLL ^ __ROR8__(v54, 61);
  STACK[0x5540] = __ROR8__((v87 - 0x23192635A54027AELL) ^ 0xE16D52C7A5A0BFCLL, 8);
  v106 = (v101 + 0x152E9B90BEE047F2) ^ 0xD219D505A61AD079 ^ __ROR8__(v99, 61);
  v107 = (__ROR8__((v101 + 0x152E9B90BEE047F2) ^ 0xD219D505A61AD079, 8) + v106) ^ 0xE580B17D8CC5E551;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (v96 - 0x24D5E3FEEE251E81) ^ 0x211FFECCDAE4D0B8 ^ __ROR8__(v82, 61);
  v111 = (((2 * (v109 + v108)) | 0x1727D85B7F70A68ALL) - (v109 + v108) + 0x746C13D24047ACBBLL) ^ 0x6A3211766EEDAA3FLL;
  v112 = v111 ^ __ROR8__(v108, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xDA604B0C03A2BF99;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = v115 + v114 - ((2 * (v115 + v114)) & 0x5D520341A88A776ELL);
  v117 = (__ROR8__((v96 - 0x24D5E3FEEE251E81) ^ 0x211FFECCDAE4D0B8, 8) + v110) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5500] = v117 ^ __ROR8__(v110, 61);
  STACK[0x54F0] = __ROR8__(v117, 8);
  v118 = *(STACK[0x5110] + (LODWORD(STACK[0x5098]) & (((a8 + 124043756) ^ STACK[0x5130]) + 1926693812 + ((LODWORD(STACK[0x52B8]) + 248133775) & STACK[0x5128]) + 3597)));
  v119 = (v97 + 0x5AF64372329F9E67) ^ 0x8096087E313D21FELL;
  v120 = v119 ^ __ROR8__(v94, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0xFA35E2CDCB3E31C7;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (v118 + STACK[0x5160] - ((2 * (v118 + STACK[0x5160])) & 0x327F7CD2C278CC9ELL) + 0x193FBE69613C664FLL) ^ 0xA1B7BFBD80FB051CLL;
  v124 = v123 ^ __ROR8__(v118, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (__ROR8__(v121, 8) + v122) ^ 0xD2F00CE620E5D3AELL;
  v127 = v126 ^ __ROR8__(v122, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (v125 + v124 - ((2 * (v125 + v124)) & 0xE1908D37E825F11CLL) + 0x70C8469BF412F88ELL) ^ 0x4800F7F1131790F9;
  v130 = v129 ^ __ROR8__(v124, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0xE580B17D8CC5E551;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = ((2 * (v133 + v132)) | 0x861FC2AEE43365A4) - (v133 + v132);
  v135 = (v116 + 0x2EA901A0D4453BB7) ^ 0xD49CE36D1F7B0A70;
  v136 = v135 ^ __ROR8__(v114, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0xD2F00CE620E5D3AELL;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = __ROR8__(v137, 8);
  v140 = (v134 - 0x430FE1577219B2D2) ^ 0xA2AE1C0CA34C4BA8 ^ __ROR8__(v132, 61);
  v141 = (__ROR8__((v134 - 0x430FE1577219B2D2) ^ 0xA2AE1C0CA34C4BA8, 8) + v140) ^ 0xDA604B0C03A2BF99;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0xFA35E2CDCB3E31C7;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = __ROR8__(v143, 8);
  v146 = STACK[0x4FE0] ^ ((STACK[0x4E88] | 0x5E6C737AF0E19351) - (STACK[0x4E88] | 0xA1938C850F1E6CAELL) - 0x5E6C737AF0E19352) ^ 0xE6E472AE11269CDBLL;
  v147 = __ROR8__(v146, 8);
  v148 = v146 ^ STACK[0x4E90];
  v149 = (v147 + v148) ^ 0x38C8B16AE7056877;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v152 = (((2 * (v151 + v150)) & 0x27D015DBB9A107ALL) - (v151 + v150) + 0x7EC17F512232F7C2) ^ 0x9B41CE2CAEF71293;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (((2 * ((v154 + v153) ^ 0x332982A0DFBE902ALL)) & 0x4C6C62E49411094ALL) - ((v154 + v153) ^ 0x332982A0DFBE902ALL) - 0x263631724A0884A6) ^ 0xB41B176BB1C120ALL;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0xDA604B0C03A2BF99;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = __ROR8__(v157, 8);
  v160 = (((__ROR8__(v104, 8) + (v104 ^ __ROR8__(v103, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]) ^ LODWORD(STACK[0x57C0]);
  v161 = ((v159 + v158) | 0x5D1461244C87E3BBLL) - ((v159 + v158) | 0xA2EB9EDBB3781C44);
  v162 = (((STACK[0x4DA0] << (STACK[0x5270] + 110)) & 0xE63560FD1AD60BE0) - STACK[0x4DA0] - 0x731AB07E8D6B05F1) ^ 0x346D4E559353995CLL ^ STACK[0x4DA8];
  v163 = (__ROR8__((((STACK[0x4DA0] << (STACK[0x5270] + 110)) & 0xE63560FD1AD60BE0) - STACK[0x4DA0] - 0x731AB07E8D6B05F1) ^ 0x346D4E559353995CLL, 8) + v162) ^ 0x38C8B16AE7056877;
  v164 = v163 ^ __ROR8__(v162, 61);
  v165 = (__ROR8__(v163, 8) + v164) ^ 0xE580B17D8CC5E551;
  v166 = v165 ^ __ROR8__(v164, 61);
  v167 = __ROR8__(v165, 8);
  v168 = (v145 + v144) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5450] = v168 ^ __ROR8__(v144, 61);
  STACK[0x5440] = __ROR8__(v168, 8);
  v169 = (v161 - 0x5D1461244C87E3BCLL) ^ 0xA72183E987B9D27CLL;
  v170 = v169 ^ __ROR8__(v158, 61);
  v171 = (__ROR8__(v169, 8) + v170) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x54C0] = v171 ^ __ROR8__(v170, 61);
  STACK[0x5460] = __ROR8__(v171, 8);
  v172 = (v167 + v166 - ((2 * (v167 + v166)) & 0x15E1FAA433B8EC7CLL) + 0xAF0FD5219DC763ELL) ^ 0xEB510009C8898F44;
  v173 = v172 ^ __ROR8__(v166, 61);
  v174 = __ROR8__(v172, 8);
  LODWORD(STACK[0x5620]) = ((v160 ^ 0xFFFFFFDE) + 122) ^ ((v160 ^ 0x66) - 62) ^ ((v160 ^ 0xFFFFFFB8) + 32);
  v175 = ((v105 + STACK[0x5600]) ^ 0xF4730B31AE70757BLL) >> STACK[0x5480];
  LODWORD(STACK[0x5600]) = ((v175 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFC9) + 51) ^ ((v175 ^ LODWORD(STACK[0x54A0]) ^ 0x62) - 102) ^ ((v175 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFAB) + 81);
  v176 = ((v174 + v173) | 0x4C3C132BC2A55ABDLL) - ((v174 + v173) | 0xB3C3ECD43D5AA542);
  v177 = *(STACK[0x5058] + (LODWORD(STACK[0x4EC0]) & ((STACK[0x4FD0] & 0x38B82118) + (STACK[0x4FD0] | 0x38B82119) + 1099175937)));
  v178 = (v177 + STACK[0x4FC8]) ^ 0xB88801D4E1C76353;
  v179 = v178 ^ __ROR8__(v177, 61);
  v180 = (__ROR8__(v178, 8) + v179) ^ 0x38C8B16AE7056877;
  v181 = v180 ^ __ROR8__(v179, 61);
  v182 = __ROR8__(v180, 8);
  v183 = ((v182 + v181) | 0x3BDAE953CCEC6E2FLL) - ((v182 + v181) | 0xC42516AC331391D0);
  v184 = (v176 - 0x4C3C132BC2A55ABELL) ^ 0x965C5827C107E524;
  v185 = v184 ^ __ROR8__(v173, 61);
  v186 = __ROR8__(v184, 8);
  v187 = (v183 - 0x3BDAE953CCEC6E30) ^ 0xDE5A582E40298B7ELL ^ __ROR8__(v181, 61);
  v188 = __ROR8__((v183 - 0x3BDAE953CCEC6E30) ^ 0xDE5A582E40298B7ELL, 8);
  v189 = __ROR8__(v88 ^ 0x71F351054C34403FLL, 8) + (v88 ^ 0x71F351054C34403FLL ^ __ROR8__(v76, 61));
  v190 = *(STACK[0x4B58] + ((LODWORD(STACK[0x4E08]) - 11) & STACK[0x4B88] & ((v8 | 0x87CCA3F) + 1908371163 + ((LODWORD(STACK[0x4E10]) ^ 0x87CD2A1) & v8))));
  v191 = (((2 * (v188 + v187)) & 0x91E1018EECC1900) - (v188 + v187) + 0x7B70F7F38899F37FLL) ^ 0x9AD10AA859CC0A05;
  v192 = v191 ^ __ROR8__(v187, 61);
  v193 = __ROR8__(v191, 8);
  v194 = (((2 * (v190 + STACK[0x4EB8])) | 0x1B4FEAF039EE984) - (v190 + STACK[0x4EB8]) - 0xDA7F5781CF74C2) ^ 0xB8527E8360081791;
  v195 = v194 ^ __ROR8__(v190, 61);
  v196 = __ROR8__(v194, 8);
  v197 = (((2 * (v196 + v195)) & 0xF15F557A46718166) - (v196 + v195) - 0x78AFAABD2338C0B4) ^ 0xBF98E4283BC2573BLL;
  v198 = v197 ^ __ROR8__(v195, 61);
  v199 = (__ROR8__(v197, 8) + v198) ^ 0xE580B17D8CC5E551;
  v200 = v199 ^ __ROR8__(v198, 61);
  v201 = (__ROR8__(v199, 8) + v200) ^ 0xE1A1FD5BD155F97ALL;
  v202 = v201 ^ __ROR8__(v200, 61);
  v203 = __ROR8__(v201, 8);
  v204 = ((2 * (v203 + v202)) | 0x77CA0E940CF51DB4) - (v203 + v202);
  v205 = (((2 * (v186 + v185)) & 0xB9DDC26433416020) - (v186 + v185) + 0x23111ECDE65F4FEFLL) ^ 0xD924FC002D617E28;
  v206 = v205 ^ __ROR8__(v185, 61);
  v207 = __ROR8__(v205, 8);
  v208 = (((2 * (v193 + v192)) & 0x83F03DAF5029F64ALL) - (v193 + v192) - 0x41F81ED7A814FB26) ^ 0x6467AA245449BB43;
  v209 = v208 ^ __ROR8__(v192, 61);
  v210 = (__ROR8__(v208, 8) + v209) ^ 0xFA35E2CDCB3E31C7;
  v211 = v210 ^ __ROR8__(v209, 61);
  v212 = __ROR8__(v210, 8);
  v213 = (v204 - 0x3BE5074A067A8EDALL) ^ 0xE1854C4605D83143 ^ __ROR8__(v202, 61);
  v214 = __ROR8__((v204 - 0x3BE5074A067A8EDALL) ^ 0xE1854C4605D83143, 8);
  STACK[0x5540] += STACK[0x5560];
  STACK[0x5560] = v189 - ((2 * v189) & 0x7828FE2DE531EBCCLL);
  v215 = STACK[0x4998];
  STACK[0x33F0] = 2 * STACK[0x4998];
  v216 = (v215 - ((2 * v215) & 0x47648197BACBC6DELL) - 0x5C4DBF34229A1C91) ^ 0x1B3A411F3CA2803CLL ^ STACK[0x49A0];
  v217 = (__ROR8__((v215 - ((2 * v215) & 0x47648197BACBC6DELL) - 0x5C4DBF34229A1C91) ^ 0x1B3A411F3CA2803CLL, 8) + v216) ^ 0x38C8B16AE7056877;
  v218 = v217 ^ __ROR8__(v216, 61);
  v219 = (__ROR8__(v217, 8) + v218) ^ 0xE580B17D8CC5E551;
  v220 = v219 ^ __ROR8__(v218, 61);
  v221 = (__ROR8__(v219, 8) + v220) ^ 0xE1A1FD5BD155F97ALL;
  v222 = v221 ^ __ROR8__(v220, 61);
  v223 = __ROR8__(v221, 8);
  STACK[0x54F0] = ((2 * (STACK[0x54F0] + STACK[0x5500])) | 0x1D078F2870A0DCAELL) - (STACK[0x54F0] + STACK[0x5500]);
  STACK[0x5500] = v128 + v127;
  v224 = ((2 * (v223 + v222)) | 0x63CB503FC445B1F2) - (v223 + v222);
  LODWORD(v202) = (STACK[0x4BA8] ^ 0x355E9E17) - 1348806862 + ((LODWORD(STACK[0x4B40]) - 1790792904) | LODWORD(STACK[0x4B18]));
  v225 = STACK[0x4B98] & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4E88] = v225;
  v226 = STACK[0x4B80];
  v227 = *(STACK[0x4B80] + (v225 & v202));
  v228 = (v227 + STACK[0x4B78]) ^ 0xB88801D4E1C76353;
  v229 = v228 ^ __ROR8__(v227, 61);
  v230 = __ROR8__(v228, 8);
  v231 = (v224 + 0x4E1A57E01DDD2707) ^ 0x6B85E313E1806760 ^ __ROR8__(v222, 61);
  v232 = __ROR8__((v224 + 0x4E1A57E01DDD2707) ^ 0x6B85E313E1806760, 8);
  v233 = (((v230 + v229) | STACK[0x4AC8] ^ 0x595CD513F45B5B06) - ((v230 + v229) | 0xA6A32AEC0BA4DEE6) - 0x595CD513F45B211ALL) ^ 0x61946479135E496ELL;
  v234 = v233 ^ __ROR8__(v229, 61);
  v235 = v139 + v138;
  v236 = ((v207 + v206) ^ 0x489C95D0EC7336C4 | 0x202C2303E048FD9DLL) - ((v207 + v206) ^ 0x489C95D0EC7336C4 | 0xDFD3DCFC1FB70262);
  v237 = (__ROR8__(v233, 8) + v234) ^ 0xE580B17D8CC5E551;
  v238 = v237 ^ __ROR8__(v234, 61);
  v239 = __ROR8__(v237, 8);
  v240 = v212 + v211 - ((2 * (v212 + v211)) & 0xE82C14A546D3D5B8);
  v241 = ((v214 + v213) & 0xD8171681B931C015 ^ 0xD004028129318001) + ((v214 + v213) & 0x27E8E97E46CE3FEALL ^ 0x7086152060A0F0BLL);
  v242 = (((2 * (v239 + v238)) & 0xC8612FC63196C6BCLL) - (v239 + v238) + 0x1BCF681CE7349CA1) ^ 0xFA6E9547366165DBLL;
  v243 = v242 ^ __ROR8__(v238, 61);
  v244 = (__ROR8__(v242, 8) + v243) ^ 0xDA604B0C03A2BF99;
  v245 = v244 ^ __ROR8__(v243, 61);
  v246 = (__ROR8__(v244, 8) + v245) ^ 0xFA35E2CDCB3E31C7;
  v247 = v246 ^ __ROR8__(v245, 61);
  v248 = __ROR8__(v246, 8);
  v249 = v232 + v231 - ((2 * (v232 + v231)) & 0x4E60A2C44A21D216);
  v250 = ((v248 + v247) | 0xFA7460BF8F8D87BALL) - ((v248 + v247) | 0x58B9F4070727845);
  LODWORD(v232) = STACK[0x4B38] + 109987978;
  LODWORD(v237) = LODWORD(STACK[0x4A60]) ^ 0x5BE5C174 | v232;
  LODWORD(v232) = (LODWORD(STACK[0x4AD0]) ^ 0x5BE5D9F8) & v232;
  v251 = (v236 - 0x202C2303E048FD9ELL) ^ 0xBA40BA352CDE18F7 ^ __ROR8__(v206, 61);
  STACK[0x53E0] = __ROR8__((v236 - 0x202C2303E048FD9ELL) ^ 0xBA40BA352CDE18F7, 8);
  v252 = *(v226 + (STACK[0x4AF8] & (v237 + 398995243 + v232)));
  v253 = (v252 + STACK[0x4B20]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v252, 61);
  v254 = __ROR8__((v252 + STACK[0x4B20]) ^ 0xB88801D4E1C76353, 8);
  v255 = (v240 + 0x74160A52A369EADCLL) ^ 0xA6E606B4838C3972 ^ __ROR8__(v211, 61);
  v256 = __ROR8__((v240 + 0x74160A52A369EADCLL) ^ 0xA6E606B4838C3972, 8);
  v257 = (v241 - 1) ^ 0x2D39811EE405BECCLL ^ __ROR8__(v213, 61);
  v258 = (__ROR8__((v241 - 1) ^ 0x2D39811EE405BECCLL, 8) + v257) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x53A0] = v258 ^ __ROR8__(v257, 61);
  STACK[0x5378] = __ROR8__(v258, 8);
  v259 = (v249 + 0x273051622510E90BLL) ^ 0xDD05B3AFEE2ED8CCLL ^ __ROR8__(v231, 61);
  v260 = (__ROR8__((v249 + 0x273051622510E90BLL) ^ 0xDD05B3AFEE2ED8CCLL, 8) + v259) ^ 0xD2F00CE620E5D3AELL;
  v261 = v260 ^ __ROR8__(v259, 61);
  v262 = __ROR8__(v260, 8);
  v263 = (v250 + 0x58B9F4070727845) ^ 0x28846C59AF685414;
  v264 = v263 ^ __ROR8__(v247, 61);
  v265 = __ROR8__(v263, 8);
  v266 = (v254 + v253 - ((2 * (v254 + v253)) & 0x5C0E6D3CD326512ALL) + 0x2E07369E69932895) ^ 0x16CF87F48E9640E2;
  v267 = v266 ^ __ROR8__(v253, 61);
  v268 = (__ROR8__(v266, 8) + v267) ^ 0xE580B17D8CC5E551;
  v269 = v268 ^ __ROR8__(v267, 61);
  v270 = (__ROR8__(v268, 8) + v269) ^ 0xE1A1FD5BD155F97ALL;
  v271 = v270 ^ __ROR8__(v269, 61);
  v272 = (__ROR8__(v270, 8) + v271) ^ 0xDA604B0C03A2BF99;
  v273 = v272 ^ __ROR8__(v271, 61);
  v274 = __ROR8__(v272, 8);
  STACK[0x5408] = ((2 * v235) | 0x4A0FDD74A5833168) - v235;
  LODWORD(v269) = (((((STACK[0x5440] + STACK[0x5450]) | 0x730416BA3B603F74) - ((STACK[0x5440] + STACK[0x5450]) | 0x8CFBE945C49FC08BLL) - 0x730416BA3B603F75) ^ 0x87771D8B95104A0FLL) >> STACK[0x5148]) ^ LODWORD(STACK[0x5150]);
  v275 = (((v274 + v273) | 0x9D62ECDAD94C1851) - ((v274 + v273) | 0x629D132526B3E7AELL) + 0x629D132526B3E7AELL) ^ 0x67570E1712722996;
  v276 = v275 ^ __ROR8__(v273, 61);
  v277 = (__ROR8__(v275, 8) + v276) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v253) = ((v269 ^ 0xFFFFFFB0) - 111) ^ ((v269 ^ 0x56) + 119) ^ ((v269 ^ 0xFFFFFFE6) - 57);
  v278 = ((2 * ((STACK[0x5460] + STACK[0x54C0]) ^ 0x32EB6F77ACCC8680)) & 0x4D7FA014A0C16F76) - ((STACK[0x5460] + STACK[0x54C0]) ^ 0x32EB6F77ACCC8680);
  v279 = STACK[0x53E0] + v251;
  v280 = ((2 * ((v256 + v255) ^ 0x14895B3EFE716D4ALL)) | 0xA27889F9854CD19ALL) - ((v256 + v255) ^ 0x14895B3EFE716D4ALL);
  v281 = STACK[0x5378] + STACK[0x53A0];
  v282 = ((__ROR8__(v277, 8) + (v277 ^ __ROR8__(v276, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B28];
  LODWORD(v256) = ((v282 ^ LODWORD(STACK[0x4B30]) ^ 0xFFFFFFD2) - 39) ^ ((v282 ^ LODWORD(STACK[0x4B30]) ^ 0xFFFFFFA0) - 85) ^ ((v282 ^ LODWORD(STACK[0x4B30]) ^ 0x72) + 121);
  v283 = (STACK[0x3A08] + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v284 = STACK[0x4858];
  STACK[0x4EB0] = v283;
  v285 = *(STACK[0x4A48] + (v284 & v283));
  v286 = v285 + STACK[0x3B40];
  v287 = __ROR8__(v285, 61);
  STACK[0x4E08] = v286;
  STACK[0x4E10] = v287;
  v288 = v286 ^ 0xB88801D4E1C76353 ^ v287;
  v289 = __ROR8__(v286 ^ 0xB88801D4E1C76353, 8) + v288;
  v290 = (((2 * v289) & 0xAF565F3AF0997A82) - v289 + 0x2854D06287B342BELL) ^ 0x109C610860B62AC9;
  v291 = __ROR8__(v290, 8);
  v292 = v290 ^ __ROR8__(v288, 61);
  v293 = (((2 * (v291 + v292)) & 0xA76821CAC6102FD2) - (v291 + v292) + 0x2C4BEF1A9CF7E816) ^ 0xC9CB5E6710320D47;
  v294 = v293 ^ __ROR8__(v292, 61);
  v295 = __ROR8__(v293, 8);
  v296 = (((v295 + v294) | 0xB6F660D091BFA74DLL) - ((v295 + v294) | 0x49099F2F6E4058B2) + 0x49099F2F6E4058B2) ^ 0x57579D8B40EA5E37;
  v297 = v296 ^ __ROR8__(v294, 61);
  v298 = (__ROR8__(v296, 8) + v297) ^ 0xDA604B0C03A2BF99;
  v299 = v298 ^ __ROR8__(v297, 61);
  v300 = __ROR8__(v298, 8);
  v301 = (v300 + v299 - ((2 * (v300 + v299)) & 0xF0B1A227C0D858D2) - 0x7A72EEC1F93D397) ^ 0x26D33DE2B521DAELL ^ __ROR8__(v299, 61);
  v302 = (__ROR8__((v300 + v299 - ((2 * (v300 + v299)) & 0xF0B1A227C0D858D2) - 0x7A72EEC1F93D397) ^ 0x26D33DE2B521DAELL, 8) + v301) ^ 0xD2F00CE620E5D3AELL;
  v303 = v302 ^ __ROR8__(v301, 61);
  v304 = __ROR8__(v302, 8);
  LODWORD(v302) = (((((v304 + v303) | 0xFAD86DD84FBACE1DLL) - ((v304 + v303) | 0x5279227B04531E2) + 0x5279227B04531E2) ^ 0xEAB66E9E1CABB66) >> STACK[0x3B10]) ^ LODWORD(STACK[0x3B1C]);
  v305 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v306 = *STACK[0x51E8];
  v307 = *STACK[0x51F0];
  STACK[0x53A0] = v306;
  STACK[0x53E0] = v307;
  v308 = *(v307 + (v306 & ((v305 & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x4E90] = v305 & 0xFFFFFFFFFFFFFFF8;
  v309 = __ROR8__(v305 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4FE0] = v309;
  STACK[0x4B40] = v308 + v309;
  v310 = __ROR8__(v308, 61);
  v311 = (((2 * (v308 + v309)) & 0x2EFF581FA117D4AELL) - (v308 + v309) + 0x688053F02F7415A8) ^ 0xD0085224CEB376FBLL;
  STACK[0x4AD0] = v310;
  v312 = v311 ^ v310;
  v313 = (__ROR8__(v311, 8) + (v311 ^ v310)) ^ 0x38C8B16AE7056877;
  v314 = v313 ^ __ROR8__(v312, 61);
  v315 = (__ROR8__(v313, 8) + v314) ^ 0xE580B17D8CC5E551;
  v316 = v315 ^ __ROR8__(v314, 61);
  v317 = (__ROR8__(v315, 8) + v316) ^ 0xE1A1FD5BD155F97ALL;
  v318 = v317 ^ __ROR8__(v316, 61);
  v319 = __ROR8__(v317, 8);
  v320 = (v319 + v318 - ((2 * (v319 + v318)) & 0xCFAEA0FDBADCBA98) - 0x1828AF812291A2B4) ^ 0x3DB71B72DECCE2D5;
  v321 = v320 ^ __ROR8__(v318, 61);
  v322 = __ROR8__(v320, 8);
  v323 = (v322 + v321 - ((2 * (v322 + v321)) & 0x27409FAB6CD9B7E2) - 0x6C5FB02A4993240FLL) ^ 0x6995AD187D52EA36;
  v324 = v323 ^ __ROR8__(v321, 61);
  v325 = __ROR8__(v323, 8);
  v326 = (v325 + v324 - ((2 * (v325 + v324)) & 0xBD563B97B328AAC8) - 0x2154E234266BAA9CLL) ^ 0xC5B112DF97186CALL;
  v327 = v326 ^ __ROR8__(v324, 61);
  v328 = __ROR8__(v326, 8);
  v329 = LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x5620]) + 93;
  LODWORD(STACK[0x4F70]) = LODWORD(STACK[0x5600]) + 23;
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ ((STACK[0x5540] ^ 0xF4730B31AE70757BLL) >> STACK[0x54B0]);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x52C8]) ^ (((STACK[0x5560] - 0x43EB80E90D670A1ALL) ^ 0x486774275CE8809DLL) >> STACK[0x52C0]);
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ (((STACK[0x54F0] - 0xE83C79438506E57) ^ 0xFAF0CCA596201B2CLL) >> STACK[0x5390]);
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ ((STACK[0x5500] ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x51C0]) ^ (((STACK[0x5408] + 0x5AF81145AD3E674CLL) ^ 0x5174E58BFCB1EDCFLL) >> STACK[0x51B0]);
  LODWORD(STACK[0x5378]) = v253 + 8;
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ (((v278 - 0x26BFD00A5060B7BCLL) ^ 0x1FD84BB3AD23BBBFLL) >> STACK[0x50C0]);
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5040]) ^ ((v279 ^ 0xF4730B31AE70757BLL) >> STACK[0x5038]);
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x4F48]) ^ (((v280 + 0x2EC3BB033D599733) ^ 0x31C614F392A770FCLL) >> STACK[0x4F10]);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ ((v281 ^ 0xF4730B31AE70757BLL) >> STACK[0x4EC8]);
  v330 = LODWORD(STACK[0x52A0]);
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x4B60]) ^ (((v262 + v261) ^ 0xF4730B31AE70757BLL) >> STACK[0x4DD0]);
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x4B70]) ^ (((v265 + v264) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B68]);
  LODWORD(STACK[0x5248]) = v256 - 6;
  LODWORD(STACK[0x4F98]) = (((v302 ^ 0xFFFFFFB1) - 50) ^ ((v302 ^ 0xFFFFFFF5) - 118) ^ ((v302 ^ 0x44) + 57)) - 12;
  LODWORD(v280) = LODWORD(STACK[0x53A8]) ^ (12894 * (((v329 == 22) | (2 * (v329 == 22))) == 0));
  LODWORD(v310) = *v305 ^ 0x7E;
  v331 = 8 * (v305 & 7);
  STACK[0x53A8] = v331;
  v332 = *(STACK[0x57D8] + 8 * v280);
  LODWORD(STACK[0x5408]) = v310;
  LODWORD(STACK[0x5310]) = v310 ^ (((((2 * (v328 + v327)) | 0x5FA94C77871520ALL) - (v328 + v327) - 0x2FD4A63BC38A905) ^ 0xF68E41521248DC7ELL) >> v331);
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 22;
  LODWORD(STACK[0x54F0]) = 188;
  LODWORD(STACK[0x5270]) = 48;
  LODWORD(STACK[0x52B8]) = 12;
  STACK[0x52F8] = v329;
  return v332(v330);
}