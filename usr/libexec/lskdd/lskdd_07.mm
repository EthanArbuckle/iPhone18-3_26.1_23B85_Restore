uint64_t sub_1001CAA08()
{
  v1 = STACK[0x57D8];
  STACK[0xC328] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + v0 + 10112 + 2434)))();
}

uint64_t sub_1001CAA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0xA818];
  v7 = STACK[0x9088];
  v8 = STACK[0xA818] - STACK[0x9CC0];
  STACK[0x57C0] = STACK[0xA818];
  v9 = v6 - v7;
  v11 = v8 > 0xF && v9 > 0xF;
  return (*(STACK[0x57D8] + 8 * ((v11 * ((v5 ^ 0x197) - 9981)) ^ v5)))(a1, 0x4BFFBDD902313A66, 0x4FF6C2DA0D61A05FLL, 0x5558EA530DE8D9B8, a5, 0x550240E3F6432114, 0x58EFACCBC8D7665BLL, 0xAAA715ACF2172647);
}

uint64_t sub_1001CAC28@<X0>(int a1@<W8>)
{
  if (STACK[0xAF60])
  {
    v1 = LODWORD(STACK[0x9C68]) == a1 - 22614;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * ((v2 * (a1 - 22579)) ^ (a1 + 6508))))();
}

uint64_t sub_1001CADF0()
{
  v1 = STACK[0x2454] & 0xEB8B9DF7;
  LODWORD(STACK[0x6CF0]) = LODWORD(STACK[0xC92C]) + v0;
  v2 = STACK[0x57D8];
  v3 = STACK[0x2460];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2460]));
  return (*(v2 + 8 * ((v1 ^ 0x13B8) + v3)))();
}

uint64_t sub_1001CAF04@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 88) = 832136629;
  *(a1 + 104) = 103679703;
  return (*(STACK[0x57D8] + 8 * (v1 - 16125)))();
}

uint64_t sub_1001CB09C()
{
  v1 = STACK[0x86D4];
  STACK[0x7ED8] += (v0 - 10580) ^ 0xFFFFFFFFFFFFD0F2;
  return (*(STACK[0x57D8] + 8 * ((22322 * (v1 == -143113071)) ^ (v0 - 10580))))();
}

uint64_t sub_1001CB104@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W6>, int a4@<W8>)
{
  v9 = *(v7 + (a4 ^ a1) + (v4 ^ a3));
  *(STACK[0x5720] + v4) = *(v8 + (v9 ^ 0xBCu ^ (((4 * v9) ^ 0x2C) + 68))) ^ v6;
  return (*(STACK[0x57D8] + 8 * (((v4 == 255) * a2) ^ v5)))();
}

uint64_t sub_1001CB248@<X0>(int a1@<W8>)
{
  v10 = *(v9 + ((2659 * (v1 ^ 0x54C6)) ^ 0x2104) * a1 + 8698028 - 5816 * (((((((2659 * (v1 ^ 0x54C6)) ^ 0x2104u) * a1 + 8698028) >> 3) * v6) >> 32) >> 7));
  v11 = (((v10 ^ 0x419ECC7C) - 1100926076) ^ ((v10 ^ 0x592C0BC1) - 1496058817) ^ ((v10 ^ 0x18B2C77A) - 414369658)) * v2 + 39121578;
  v12 = *(v8 + 4 * (v11 - (((v11 * v5) >> 32) >> 12) * v4));
  v13 = ((v12 ^ 0x9EF1DB7A) + 2035624633) ^ ((v12 ^ 0xD8B96677) + 1058903990) ^ ((v12 ^ 0x4648BD87) - 1578349498);
  v14 = (((HIBYTE(v12) ^ 0xB01A08B1) + 161542889) ^ ((HIBYTE(v12) ^ 0x90644FD6) + 702461328) ^ ((HIBYTE(v12) ^ 0x207E470F) - 1715159721)) * v7 + 1545838555;
  v15 = *(v9 + (BYTE2(v12) ^ 0x4F) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE2(v12) ^ 0x4Fu) * v7 + 6213569)) >> 32) >> 4)) << 8;
  v16 = *(v9 + (BYTE1(v12) ^ 0xB6) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE1(v12) ^ 0xB6u) * v7 + 6213569)) >> 32) >> 4));
  v17 = *(v9 + v13 * v7 - 1023529026 - 5816 * (((((v13 * v7 - 1023529026) >> 3) * v6) >> 32) >> 7));
  *(v8 + 4 * (a1 * v2 + 9469466 - ((((a1 * v2 + 9469466) * v5) >> 32) >> 12) * v4)) = ((((((((*(v9 + v14 - 5816 * ((((v14 >> 3) * v6) >> 32) >> 7)) << 16) ^ 0xC4FE41) & (v15 ^ 0xFF39F7) | v15 & 0x100) ^ LODWORD(STACK[0x36A4])) & (v16 ^ (v3 + 86)) ^ v16 & 0x6E) << 8) ^ 0x13EC1EE4) & (v17 ^ 0xFFFFFF20) | v17 & 0x1B) ^ 0x31417F6D;
  return (*(STACK[0x57D8] + 8 * ((2423 * (a1 == 255)) ^ v1)))();
}

uint64_t sub_1001CB4F8()
{
  v0 = STACK[0x51B8];
  LODWORD(STACK[0x8B2C]) += 4;
  return (*(STACK[0x57D8] + 8 * (v0 - 16505)))(STACK[0xDCF8]);
}

uint64_t sub_1001CB594()
{
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 + 14975)))(&STACK[0xB6A2], v1, 5);
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1001CB650()
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
  STACK[0xEEB0] = 0;
  STACK[0xEEB8] = v0;
  v10 = 16777619 * ((-289165025 * v9 + 7) ^ (-289165025 * v9)) % 7;
  v11 = *(&STACK[0xEEB0] | v10);
  *(&STACK[0xEEB0] | v10) = 0;
  LOBYTE(STACK[0xEEB7]) = v11;
  v12 = 16777619 * ((-289165025 * v9 + 6) ^ (-289165025 * v9)) % 6;
  v13 = *(&STACK[0xEEB0] | v12);
  *(&STACK[0xEEB0] | v12) = STACK[0xEEB6];
  LOBYTE(STACK[0xEEB6]) = v13;
  v14 = 16777619 * ((-289165025 * v9 + 5) ^ (-289165025 * v9)) % 5;
  v15 = *(&STACK[0xEEB0] | v14);
  *(&STACK[0xEEB0] | v14) = STACK[0xEEB5];
  LOBYTE(STACK[0xEEB5]) = v15;
  v16 = STACK[0xEEB0];
  LOBYTE(STACK[0xEEB0]) = STACK[0xEEB4];
  LOBYTE(STACK[0xEEB4]) = v16;
  v17 = 16777619 * ((-289165025 * v9 + 3) ^ (-289165025 * v9)) % 3;
  v18 = *(&STACK[0xEEB0] | v17);
  *(&STACK[0xEEB0] | v17) = STACK[0xEEB3];
  LOBYTE(STACK[0xEEB3]) = v18;
  v19 = STACK[0xEEB1];
  LOBYTE(STACK[0xEEB2]) = STACK[0xEEB0];
  LOWORD(STACK[0xEEB0]) = v19;
  v20 = vdup_n_s32(-289165025 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -289165025 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEEB0] = vmla_s32(v22, STACK[0xEEB0], vdup_n_s32(0x1000193u));
  STACK[0xEEB8] ^= STACK[0xEEB0];
  STACK[0xEEB8] = vmul_s32(vsub_s32(STACK[0xEEB8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEEBA];
  LOWORD(STACK[0xEEB9]) = STACK[0xEEB8];
  LOBYTE(STACK[0xEEB8]) = v23;
  v24 = (&STACK[0xEEB8] | v17);
  v25 = *v24;
  *v24 = STACK[0xEEBB];
  LOBYTE(STACK[0xEEBB]) = v25;
  LOBYTE(v24) = STACK[0xEEB8];
  LOBYTE(STACK[0xEEB8]) = STACK[0xEEBC];
  LOBYTE(STACK[0xEEBC]) = v24;
  v26 = (&STACK[0xEEB8] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEEBD];
  LOBYTE(STACK[0xEEBD]) = v24;
  v27 = (&STACK[0xEEB8] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEEBE];
  LOBYTE(STACK[0xEEBE]) = v26;
  v28 = (&STACK[0xEEB8] | v10);
  v29 = *v28;
  *v28 = STACK[0xEEBF];
  LOBYTE(STACK[0xEEBF]) = v29;
  v30 = STACK[0xEEB8];
  v31 = (-289165025 * STACK[0xEEB8]) ^ v9;
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
  *STACK[0x4420] = STACK[0xEEB8];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_1001CBA60@<X0>(int *a1@<X8>)
{
  v3 = LODWORD(STACK[0x27F0]) | 0xA70u;
  v4 = *a1;
  v5 = *v2;
  v6 = STACK[0x57D8];
  STACK[0x6D18] = *(STACK[0x57D8] + 8 * v1);
  LODWORD(STACK[0xED5C]) = v4;
  v7 = STACK[0x7ED8];
  v8 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xA1A8] = v8;
  STACK[0x5DB8] = (v8 + 176);
  STACK[0x7ED8] = v7 + (v3 ^ 0xA99);
  v10 = (v4 - 103679699) > 0x39 && v5 != 0;
  return (*(v6 + 8 * ((225 * v10) ^ LODWORD(STACK[0x27EC]))))();
}

uint64_t sub_1001CBBA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x5388]) = v6;
  v8 = (((*(v7 + v4) ^ 0xFFFFFFD3) + ((a4 + 16658) ^ 0x20)) ^ ((*(v7 + v4) ^ 0xFFFFFFF7) + 109) ^ ((*(v7 + v4) ^ v5) + 53)) + 86;
  v9 = v8 & 0x5E ^ 0x69;
  LODWORD(STACK[0x5348]) = v8 ^ (2 * ((v8 ^ 0xC) & (2 * ((v8 ^ 0xC) & (2 * ((v8 ^ 0xC) & (2 * ((v8 ^ 0xC) & (2 * ((v8 ^ 0xC) & (2 * (v9 ^ v8 & 0x12)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ 0x25;
  return (*(STACK[0x57D8] + 8 * a4))();
}

uint64_t sub_1001CBC9C()
{
  v2 = 0x603BA2169EBD64A7 * ((*(*STACK[0x51F0] + (*STACK[0x51E8] & 0xAB7CC340)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x167AEF47A1A9D0B4) - STACK[0x8DF8]) + 0x31A0FC2E8B03C6F8;
  v3 = 1534937323 * ((v1 - 240) ^ 0xCD7888C2C6EEFB47);
  LODWORD(STACK[0x1D4D4]) = (v0 + 1794685601) ^ v3;
  STACK[0x1D4D8] = v3 + 0x31A0FC2E8B03C6F8;
  LODWORD(STACK[0x1D4E0]) = ((v0 + 1794685601) & 0x6FFF72D4) + v3;
  STACK[0x1D4C0] = v2 ^ v3;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 1794685601) ^ 0xD46) - v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = v0 ^ 0x2462;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1001CBDCC()
{
  v1 = STACK[0xC0C0];
  STACK[0xDBB0] = STACK[0xC0C0];
  LODWORD(STACK[0xDBBC]) = STACK[0x7B8C];
  v2 = STACK[0xC7C8];
  v3 = *(STACK[0xC7C8] + 160);
  STACK[0xDBC0] = v3;
  LODWORD(STACK[0xDBC8]) = *(v2 + 168);
  if (v1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0x57D8] + 8 * ((v5 * (((v0 - 135979022) & 0x81ADEF7) - 22419)) ^ v0)))();
}

uint64_t sub_1001CBE64()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 1260338317) & 0xB4E0FE7F) - 11502) ^ v0)))();
}

uint64_t sub_1001CBF14()
{
  STACK[0x5750] = -832714442;
  LODWORD(STACK[0x5178]) = LODWORD(STACK[0x5550]) ^ 0xEAC18E5B;
  LODWORD(STACK[0x4FE8]) = (v0 + 1898412422) ^ LODWORD(STACK[0x5770]);
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1001CC278()
{
  LODWORD(STACK[0x5750]) = v2;
  LODWORD(STACK[0x57C0]) = v1;
  v3 = *(STACK[0x57D8] + 8 * v0);
  LODWORD(STACK[0x5730]) = (v0 - 578351555) & 0x2278FFF7;
  return v3();
}

uint64_t sub_1001CC55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x71A8];
  STACK[0x9370] = STACK[0x71A8];
  v8 = STACK[0x55C0];
  *v7 = STACK[0x55D0];
  v7[1] = v8;
  v9 = STACK[0x7ED8];
  v10 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xBD78] = (v10 + 520);
  STACK[0x7ED8] = v9 + 544;
  v11 = *(a6 + 4) - 1172461588;
  if (v11 < 0)
  {
    v11 = 1172461588 - *(a6 + 4);
  }

  LODWORD(STACK[0xCDCC]) = 32 * v11;
  STACK[0x6DF8] = *v7;
  STACK[0x5E38] = v8;
  *(v10 + 130) = 130;
  *(v10 + 131) = 1172461588;
  *(v10 + 66) = v10;
  return (*(STACK[0x57D8] + 8 * v6))((v6 - 22803) | 0x5913u);
}

uint64_t sub_1001CCB14(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  v12 = v8 < v10;
  v13 = 8 * ((a6 | ((a6 < a8) << 32)) + 0x616C1122A7DFACD1) - 0xB60891573C13E08;
  *(v9 + v13) = *(a5 + v13) ^ 0xCFCFCFCFCFCFCFCFLL;
  v14 = v11 + a6 - 1450;
  if (v12 == v14 < 0x6D587FA)
  {
    v12 = v8 > v14;
  }

  return (*(STACK[0x57D8] + 8 * ((92 * v12) ^ a3)))();
}

uint64_t sub_1001CD428(int a1, unsigned int a2)
{
  v5 = v2 + 1 + v4;
  v6 = (a2 < v4) ^ (v5 < v4);
  v7 = v5 < a2;
  if (v6)
  {
    v7 = a2 < v4;
  }

  return (*(STACK[0x57D8] + 8 * (((8 * !v7) | (32 * !v7)) ^ v3)))((a1 + 1));
}

uint64_t sub_1001CD5A8()
{
  v0 = STACK[0x51B8] + 1956;
  v1 = STACK[0x51B8] - 3527;
  STACK[0x8A50] = 0x55A8D952E5D4689ELL;
  if (STACK[0xA978])
  {
    v2 = STACK[0x64A0] == 0;
  }

  else
  {
    v2 = 1;
  }

  v5 = v2 || STACK[0x9190] == 0 || STACK[0xA270] == 0;
  return (*(STACK[0x57D8] + 8 * ((59 * (((v0 ^ v5) & 1) == 0)) ^ v1)))();
}

uint64_t sub_1001CD704@<X0>(unsigned int a1@<W8>)
{
  STACK[0x8DA8] = STACK[0xB420];
  v3 = STACK[0x8C54];
  *(v1 + 4748) = STACK[0x8C54];
  v4 = STACK[0x8EA0];
  STACK[0x6698] = STACK[0x8EA0];
  v5 = *(v4 + 12);
  STACK[0xAD78] = v4 + 12;
  v6 = v3 ^ v2;
  STACK[0x8978] = v6;
  v7 = ((v5 ^ 0xD75F27BDBD4BDFF7) + v6 + ((v5 << (-49 * (a1 ^ 0xF9) + 99)) & 0x17A97BFEELL) + 0x28A0D84242B42009) ^ a1;
  return (*(STACK[0x57D8] + 8 * ((18335 * (((v7 & a1) >> (__clz(v7 | 1) ^ 0x3Fu)) & 1)) ^ (a1 + 8126))))();
}

uint64_t sub_1001CD938()
{
  *STACK[0xAB80] = -769884012;
  v1 = LODWORD(STACK[0xAD74]) == ((v0 - 138777795) & 0x845B2DB) - 769896363;
  LOBYTE(STACK[0xCBDB]) = v1;
  return (*(STACK[0x57D8] + 8 * (((v0 - 29) ^ v1) & 1 ^ v0)))();
}

uint64_t sub_1001CD9C0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v15 = *v12 & 0xFFFFFFF8;
  v16 = *(*v11 + (v15 & (v8 - 1799741565 + ((a7 + v7) & 0xFFFFFFF8))));
  v17 = (__ROR8__((a7 + v7) & 0xFFFFFFFFFFFFFFF8, 8) + v16) ^ v9;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ a2;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a5;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a4;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v13;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = *(*v11 + (v15 & (((v14 + v7) & 0xFFFFFFF8) - 1799729871)));
  v30 = (__ROR8__(v27, 8) + v28) ^ a3;
  v31 = (v29 + __ROR8__((v14 + v7) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v9;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a2;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v30, 8) + (v30 ^ __ROR8__(v28, 61));
  v36 = (__ROR8__(v33, 8) + v34) ^ a5;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0x2C1A04E8ACB56968) - (v38 + v37) - 0x160D0274565AB4B5) ^ 0xB2C2099F0B17BFEBLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v13;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ a1;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = ((a6 - (v35 | a6) + (v35 | 0x5B29E90B301E15B6)) ^ 0xE123B26B77CBB9B2) >> (8 * ((a7 + v7) & 7));
  v47 = (((2 * (v45 + v44)) | 0xED51B08326CC7C56) - (v45 + v44) + 0x95727BE6C99C1D5) ^ 0xB3929C06EA52364DLL;
  *(v14 + v7) = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v44, 61))) ^ v10) >> (8 * ((v14 + v7) & 7))) ^ v46 ^ *(a7 + v7);
  return (*(STACK[0x57D8] + 8 * ((28444 * (v7 == 15)) ^ v8)))();
}

uint64_t sub_1001CDD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(STACK[0x57D8] + 8 * a5);
  STACK[0x57B0] = v7 & 0x18;
  return v8((a5 + 1096365251) & 0xBEA6BEF7, v5 - a2 - 8, v6 - (v7 & 0x18));
}

uint64_t sub_1001CDDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = (STACK[0x55A0] & 2) == 0;
  v10 = STACK[0x56D0];
  if ((STACK[0x55A0] & 2) != 0)
  {
    v10 = STACK[0x55D0];
  }

  LODWORD(STACK[0x55D0]) = v10;
  v11 = STACK[0x5770];
  if (v9)
  {
    v11 = STACK[0x5740];
  }

  LODWORD(STACK[0x53B0]) = v11;
  v12 = STACK[0x5730];
  if (!v9)
  {
    v12 = STACK[0x5720];
  }

  LODWORD(STACK[0x53C0]) = v12;
  v13 = STACK[0x5710];
  if (!v9)
  {
    v13 = STACK[0x5700];
  }

  LODWORD(STACK[0x5408]) = v13;
  v14 = STACK[0x5780];
  if (!v9)
  {
    v14 = STACK[0x5790];
  }

  LODWORD(STACK[0x52F0]) = v14;
  v15 = STACK[0x56F0];
  if (!v9)
  {
    v15 = STACK[0x56E0];
  }

  LODWORD(STACK[0x53F8]) = v15;
  v16 = STACK[0x56C0];
  if (!v9)
  {
    v16 = STACK[0x5680];
  }

  LODWORD(STACK[0x5348]) = v16;
  v17 = (STACK[0x5610] & 2) == 0;
  v18 = STACK[0x5340];
  if ((STACK[0x5610] & 2) == 0)
  {
    v18 = STACK[0x5560];
  }

  LODWORD(STACK[0x5260]) = v18;
  v19 = STACK[0x52E8];
  if (!v17)
  {
    v19 = STACK[0x52E0];
  }

  LODWORD(STACK[0x5250]) = v19;
  v20 = STACK[0x5220];
  if (!v17)
  {
    v20 = STACK[0x5218];
  }

  LODWORD(STACK[0x4EA0]) = v20;
  v21 = STACK[0x5550];
  if (v17)
  {
    v21 = STACK[0x5510];
  }

  LODWORD(STACK[0x4ED8]) = v21;
  v22 = STACK[0x5330];
  if (!v17)
  {
    v22 = STACK[0x52F8];
  }

  LODWORD(STACK[0x5220]) = v22;
  v23 = a1 + v6 - a4;
  v24 = v23 >> 16;
  v25 = (v23 - (v23 >> 16)) >> 8;
  v26 = (a1 + a5 - a4 - v25 - v24) >> 28;
  v27 = a1 + ((a1 + a5 + v26 - a4 - ((a1 + a5 + v26 - a4 - v25 - v24) >> 9) - v25 - v24) >> 5) + v26 - a4 - ((a1 + a5 + v26 - a4 - v25 - v24) >> 9) - v25 - v24 + a5;
  v28 = (v27 ^ 0xC6DEAB7B1FCC3051) + ((v27 ^ 0xC6DEAB7B1FCC3051) >> 31) - (((v27 ^ 0xC6DEAB7B1FCC3051) + ((v27 ^ 0xC6DEAB7B1FCC3051) >> 31)) >> 11);
  v29 = v28 - (v28 >> 4);
  v30 = v29 - 0x150E0E14639DEF1ELL - ((v29 - 0x150E0E14639DEF1ELL) >> 29) + ((v29 - 0x150E0E14639DEF1ELL - ((v29 - 0x150E0E14639DEF1ELL) >> 29)) >> 8);
  v31 = v30 + (v30 >> 5);
  v32 = v31 - 0x7C4DA37DFA0ED59ALL - ((v31 - 0x7C4DA37DFA0ED59ALL) >> 26) - ((v31 - 0x7C4DA37DFA0ED59ALL - ((v31 - 0x7C4DA37DFA0ED59ALL) >> 26)) >> 10);
  v33 = v32 + (v32 >> 6);
  LODWORD(v27) = v33 ^ v27;
  v34 = v33 - 0x4FC3C3DC8A3C2A8FLL + ((v33 - 0x4FC3C3DC8A3C2A8FLL) >> 31) + ((v33 - 0x4FC3C3DC8A3C2A8FLL + ((v33 - 0x4FC3C3DC8A3C2A8FLL) >> 31)) >> 14);
  v35 = v34 + (v34 >> 1);
  LODWORD(v29) = v35 ^ v29;
  v36 = v35 - 0x7E2AE693E8C0C7A1 - ((v35 - 0x7E2AE693E8C0C7A1) >> 29) - ((v35 - 0x7E2AE693E8C0C7A1 - ((v35 - 0x7E2AE693E8C0C7A1) >> 29)) >> 10);
  v37 = v36 - (v36 >> 3);
  v38 = (v37 ^ 0xE1405AAA5108FA3DLL) - ((v37 ^ 0xE1405AAA5108FA3DLL) >> 27) - (((v37 ^ 0xE1405AAA5108FA3DLL) - ((v37 ^ 0xE1405AAA5108FA3DLL) >> 27)) >> 15);
  v39 = v38 + (v38 >> 6);
  v40 = v27 ^ v8 ^ v39;
  v41 = v39 - 0x2A93955B7AC7D164 - ((v39 - 0x2A93955B7AC7D164) >> 29) - ((v39 - 0x2A93955B7AC7D164 - ((v39 - 0x2A93955B7AC7D164) >> 29)) >> 14);
  v42 = v41 - (v41 >> 5);
  v43 = v29 ^ v7 ^ v42;
  v44 = (v42 ^ 0xF41EE78BEC54E232) - ((v42 ^ 0xF41EE78BEC54E232) >> 27) + (((v42 ^ 0xF41EE78BEC54E232) - ((v42 ^ 0xF41EE78BEC54E232) >> 27)) >> 13);
  LODWORD(STACK[0x52F8]) = v40 & 0x7F;
  LODWORD(STACK[0x5720]) = v40 & 0xFFFFFF80;
  v45 = v37 ^ v31 ^ v5 ^ (v44 - (v44 >> 2));
  LODWORD(v29) = v45 & 7 ^ 3;
  LODWORD(STACK[0x5770]) = v29;
  LODWORD(v29) = -v29;
  LODWORD(STACK[0x5330]) = v29;
  v46 = v29 & 7;
  LODWORD(STACK[0x52E0]) = v45 & 0xFFFFFFF8;
  if ((v45 & 7) == 3)
  {
    v47 = 0;
  }

  else
  {
    v47 = 255;
  }

  LODWORD(STACK[0x56C0]) = v46;
  v48 = v47 << v46;
  LODWORD(STACK[0x5710]) = v48;
  LODWORD(STACK[0x5700]) = (218103808 * v48) & v43;
  if ((v45 & 7) == 3)
  {
    v49 = 0;
  }

  else
  {
    v49 = ~v48;
  }

  LODWORD(STACK[0x53A0]) = ((v49 & v40) - ((2 * (v49 & v40)) & 0x1A) + 13);
  LODWORD(STACK[0x5740]) = v40;
  v50 = 16843009 * (v40 ^ 0x1C ^ ((v40 ^ 0x461C) >> 8) ^ ((v40 ^ 0x5C2D461C) >> 16) ^ HIBYTE(v40) ^ 0x8A);
  LODWORD(STACK[0x5730]) = v43;
  v51 = 16843009 * (v43 ^ 0x72 ^ ((v43 ^ 0x4A72) >> 8) ^ ((v43 ^ 0x2794A72) >> 16) ^ HIBYTE(v43) ^ 0xC5);
  STACK[0x57A0] = STACK[0xD3E8];
  LODWORD(STACK[0x5510]) = v51;
  LODWORD(STACK[0x56F0]) = v50;
  LODWORD(STACK[0x5550]) = v51 ^ v50;
  v52 = LODWORD(STACK[0x5590]) ^ 0x95A4C3C4;
  LODWORD(STACK[0x5560]) = v45;
  LODWORD(STACK[0x5380]) = v45 ^ 0x6BECF0E3;
  v53 = *(STACK[0x57D8] + 8 * STACK[0x57C0]);
  STACK[0x57B0] = STACK[0x57C0] - 6577;
  return v53(4253200069, 0x2304218231B23EA8, a2, a3, 3055129804, v52, 0x21C794296FD88DA4, 881092772);
}

uint64_t sub_1001CE4D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = STACK[0xAD50];
  v3 = STACK[0x7ED8];
  STACK[0x8948] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = (a2 + 7011) + v3 - 8180;
  STACK[0x5AC8] = v2;
  STACK[0x8CD8] = 0;
  STACK[0xA238] = 0;
  LODWORD(STACK[0xBAB4]) = 2101965948;
  v4 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * a2);
  return (*(v4 + 8 * (a2 ^ 0x1643)))(4294960487, a1, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_1001CE5B8()
{
  v2 = LODWORD(STACK[0x1E64]) + v0;
  LODWORD(STACK[0xD008]) = v1 ^ 0xD21C723D;
  v3 = v2 + (v1 ^ 0xF2A9);
  LODWORD(STACK[0xD00C]) = v3;
  v4 = v3 + 1996868114;
  v5 = (((LODWORD(STACK[0xC2BC]) ^ 0xB843CFAC) + 1203515476) ^ ((LODWORD(STACK[0xC2BC]) ^ 0xA8C684EA) + 1463384854) ^ ((LODWORD(STACK[0xC2BC]) ^ 0xC299CBD2) + 1030108206)) + 1226984102;
  v6 = v3 > 0x88FA35ED;
  v7 = v6 ^ (v5 < 0x7705CA12);
  v8 = v4 > v5;
  if (!v7)
  {
    v6 = v8;
  }

  return (*(STACK[0x57D8] + 8 * ((2 * v6) | (8 * v6) | LODWORD(STACK[0x1E68]))))();
}

uint64_t sub_1001CE7B8()
{
  v0 = STACK[0x2B3C];
  LODWORD(STACK[0x5F88]) = -769884012;
  v1 = STACK[0xC380];
  v2 = *(STACK[0x9030] + 16);
  v3 = STACK[0x9030] + 108;
  STACK[0x6C28] = STACK[0x58C8];
  LODWORD(STACK[0x597C]) = v1;
  STACK[0xA448] = v2;
  LOBYTE(STACK[0xC5F3]) = 29;
  STACK[0xABB0] = v3;
  STACK[0x6CC0] = &STACK[0x5F88];
  LODWORD(STACK[0x73F8]) = 16;
  LODWORD(STACK[0x5D74]) = -2060912363;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1001CE86C()
{
  STACK[0x5FE8] = STACK[0x7AF8];
  LODWORD(STACK[0xB8AC]) = v1 + 2;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1001CE930()
{
  v0 = STACK[0x25EC];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 5510)))(LODWORD(STACK[0x6C48]) - 2101965948 + ((v0 + 1625501828) & 0x9F1C6BE7) - 804);
  STACK[0x6558] = v2;
  return (*(v1 + 8 * (((((v0 - 22004) ^ (v2 == 0)) & 1) == 0) | v0)))();
}

uint64_t sub_1001CEB18()
{
  STACK[0x7058] = v0;
  LODWORD(STACK[0x8644]) = v1;
  return (*(STACK[0x57D8] + 8 * (v2 - 8935)))();
}

uint64_t sub_1001CEB40()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((6677 * ((v0 ^ 0xC55CC527) > LODWORD(STACK[0x1408]))) ^ (v0 - 22289 + ((v0 + 379441890) & 0xE9627B56)))))();
}

uint64_t sub_1001CEBB0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA608]) = v1 | 0x4000;
  if (STACK[0x5D48])
  {
    v2 = STACK[0x7D20] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0x57D8] + 8 * ((v3 * ((a1 - 8670) ^ (a1 - 28669) ^ 0x56C3)) ^ a1)))();
}

uint64_t sub_1001CEC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v19 = STACK[0x57B0];
  v20 = *(STACK[0x5640] + 2 * ((LODWORD(STACK[0x57B0]) - 806) ^ v9 ^ v11)) ^ v12;
  *(v10 + 4 * (((((v9 ^ (2 * (v9 & a8))) & v8) >> v15) + ((v9 ^ (2 * (v9 & a8))) << v17)) ^ v18)) = ((((v20 ^ (2 * (v20 & a8))) & a7) >> v15) + (((v20 ^ (2 * (v20 & a8))) & v14) << v17)) ^ v16;
  return (*(STACK[0x57D8] + 8 * (((v9 != 255) * v13) ^ v19)))();
}

uint64_t sub_1001CEE78()
{
  v1 = STACK[0x51B8];
  STACK[0xAC48] = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 1670)))();
}

uint64_t sub_1001CEF68()
{
  v0 = STACK[0x2E8C];
  STACK[0x7AA8] = STACK[0x60D8];
  LODWORD(STACK[0x8404]) = -769883756;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1001CEFA0()
{
  v1 = STACK[0xCDF8];
  STACK[0xDC28] = STACK[0xCDF8];
  v2 = STACK[0x9DB0];
  v3 = *(v1 - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDC34]) = v3 + ((v0 + 1572407394) & 0xA246EACD ^ 0xA09);
  v4 = *(v1 - 0x1883660EE814440ELL) - 516460446;
  v3 -= 516460442;
  v5 = v3 < ((v0 - 5852) | 0x800u) + 1585503453;
  v6 = v4 < v3;
  if (v5 != v4 < 0x5E80E4DE)
  {
    v6 = v5;
  }

  v7 = v2 == 0 || v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDC38]) = v8;
  return (*(STACK[0x57D8] + 8 * ((54 * v7) ^ v0)))();
}

uint64_t sub_1001CF180()
{
  STACK[0xE1B0] = v1;
  v2 = STACK[0xBD10];
  STACK[0xE1B8] = STACK[0xBD10];
  return (*(STACK[0x57D8] + 8 * ((24974 * (((((v1 - v2) ^ v0) & (v1 - v2)) >> (__clz((v1 - v2) ^ v0 | 1) ^ 0x3Fu)) & 1)) ^ (((((v0 + 6199) | 0x4016) - 22450) ^ 0x12FC) + v0))))();
}

uint64_t sub_1001CF208()
{
  v1 = STACK[0x57D8];
  STACK[0x8860] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 7552 + 158 * (v0 ^ 0x9BB))))();
}

uint64_t sub_1001CF254()
{
  LODWORD(STACK[0x1D4C8]) = -1606516495 - 16169987 * ((v1 - 240) ^ 0x558E3528) + v0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9231)))(v1 - 240);
  return (*(v2 + 8 * (v0 - 6900)))(v3);
}

uint64_t sub_1001CF2F0@<X0>(int a1@<W8>)
{
  v5 = v1 + 7007;
  v6 = STACK[0x57D8];
  STACK[0xC9B8] = *(STACK[0x57D8] + 8 * a1);
  v7 = v1 - 21628;
  STACK[0xAE60] = v3;
  LODWORD(STACK[0xBCCC]) = v4;
  v8 = STACK[0x7ED8];
  STACK[0x7390] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v8 + 32;
  STACK[0x7B48] = v2;
  STACK[0x5AD0] = *(v6 + 8 * v7);
  return (*(v6 + 8 * ((v5 ^ 0x6C09) + v7)))();
}

uint64_t sub_1001CF3FC@<X0>(int a1@<W0>, int a2@<W8>)
{
  v12 = STACK[0x54E0];
  v13 = 16843009 * LODWORD(STACK[0x54E0]);
  v14 = v8 + v7;
  v15 = (v8 + a1) >> 16;
  v16 = v2 + v8 - ((v14 - ((v14 - ((v8 + a1 - v15) >> 8) - v15) >> 15) - ((v8 + a1 - v15) >> 8) - v15) >> 1) - ((v14 - ((v8 + a1 - v15) >> 8) - v15) >> 15) - ((v8 + a1 - v15) >> 8) - v15 - a2;
  v17 = v16 ^ v6;
  v18 = (v16 ^ 0x532879D) - ((v16 ^ 0x532879Du) >> 12) - (((v16 ^ 0x532879D) - ((v16 ^ 0x532879Du) >> 12)) >> 3);
  v19 = v18 ^ v4;
  v20 = (v18 ^ 0xB598EF62) - ((v18 ^ 0xB598EF62) >> 12) + (((v18 ^ 0xB598EF62) - ((v18 ^ 0xB598EF62) >> 12)) >> 5);
  v21 = v20 - 703006089 - ((v20 - 703006089) >> 12) + ((v20 - 703006089 - ((v20 - 703006089) >> 12)) >> 4);
  v22 = v17 ^ v21;
  v23 = (v21 ^ 0x23D5A77A) + ((v21 ^ 0x23D5A77A) >> 13) + (((v21 ^ 0x23D5A77A) + ((v21 ^ 0x23D5A77A) >> 13)) >> 1);
  v24 = v19 ^ v23;
  v25 = v23 - 1713108986 - ((v23 - 1713108986) >> 14) + ((v23 - 1713108986 - ((v23 - 1713108986) >> 14)) >> 5);
  v26 = (v25 ^ 0xAD9C4459) - ((v25 ^ 0xAD9C4459) >> 12) - (((v25 ^ 0xAD9C4459) - ((v25 ^ 0xAD9C4459) >> 12)) >> 2);
  v27 = v22 ^ v26;
  v28 = v26 + 1278014022 - ((v26 + 1278014022) >> 10) - ((v26 + 1278014022 - ((v26 + 1278014022) >> 10)) >> 6);
  v29 = v24 ^ v28;
  v30 = v20 ^ v3 ^ v25 ^ (v28 - 642588001 + ((v28 - 642588001) >> 11) - ((v28 - 642588001 + ((v28 - 642588001) >> 11)) >> 5));
  v31 = v27 & 0xFE ^ 0x7A;
  v32 = 16843009 * v31;
  v33 = v30 & 7 ^ 2;
  v34 = -v33 & 7;
  if ((v30 & 7) == 2)
  {
    v35 = 0;
  }

  else
  {
    v35 = 255;
  }

  LODWORD(STACK[0x57C0]) = v34;
  v36 = v35 << v34;
  v37 = 16843009 * v36;
  v38 = 16843009 * (v27 ^ 0x80 ^ ((v27 ^ 0x6680) >> 8) ^ ((v27 ^ 0x5ED46680) >> 16) ^ HIBYTE(v27) ^ 0x79);
  LODWORD(STACK[0x5780]) = v29;
  v39 = 16843009 * (v29 ^ 0xD9 ^ ((v29 ^ 0x5ED9) >> 8) ^ ((v29 ^ 0xCE0C5ED9) >> 16) ^ HIBYTE(v29) ^ v9);
  LODWORD(STACK[0x5198]) = v38;
  v40 = v38 ^ 0xB0B0B0B0 ^ v39;
  LODWORD(STACK[0x5280]) = v39 ^ 0x97979797;
  v41 = *(&off_101353600 + v5 - 6360) + 4 * (v40 % 0x101);
  v42 = STACK[0x56E0];
  v43 = *(&off_101353600 + v5 - 5802) + 4 * (LODWORD(STACK[0x56E0]) % 0x101);
  v44 = *(&off_101353600 + v5 - 7007) - 4;
  v45 = 4 * v10;
  v46 = *&v44[v45];
  v47 = *&v44[4 * v33];
  LODWORD(STACK[0x5500]) = v46 ^ 0xEE8EE7E4 ^ (v46 >> 2) & 0x37818C77;
  LODWORD(STACK[0x5228]) = v47 ^ 0x1171181B ^ (v47 >> 2) & 0x37818C77;
  v48 = LODWORD(STACK[0x5270]) + 170550321 * (v12 - v31);
  v49 = *(&off_101353600 + v5 - 6448) + v45;
  v50 = STACK[0x55E0];
  v51 = (-1004798841 * LODWORD(STACK[0x55E0])) ^ LODWORD(STACK[0x5298]);
  LODWORD(STACK[0x5168]) = v13;
  v52 = v13 & 0xFE | LODWORD(STACK[0x5760]);
  LODWORD(STACK[0x5260]) = v51 ^ (-1004798841 * v52);
  LODWORD(STACK[0x5160]) = v32;
  LODWORD(STACK[0x5298]) = v32 >> 1;
  v53 = (v27 & 0xFFFFFF01 | (2 * (v31 >> 1))) ^ 0xEA78600;
  v54 = v30 ^ 0xEA7867A;
  LODWORD(STACK[0x51A0]) = (-655608487 * (v30 ^ 0xEA7867A)) ^ LODWORD(STACK[0x5510]);
  v55 = v53 - (v27 ^ 0xEA7867A);
  v56 = v53 ^ v27 ^ 0xEA7867A ^ v48 ^ (4 * (v53 ^ v27 ^ 0xEA7867A));
  LODWORD(STACK[0x5760]) = v33;
  LODWORD(STACK[0x56D0]) = (v33 | v30 & 0xFFFFFFF8) ^ 0xEA78678;
  v57 = LODWORD(STACK[0x5278]) + 1904656529 * (v31 - v12);
  LODWORD(STACK[0x5190]) = 1493172224 * v36;
  LODWORD(STACK[0x54E0]) = ((v37 ^ 0x5900E018) + (~v37 & 0xA6FF1FE7)) & ~v37;
  if ((v30 & 7) == 2)
  {
    v58 = 0;
  }

  else
  {
    v58 = ~v36;
  }

  v59 = v27 & v58;
  v60 = *(v41 - 2) ^ 0x32B147E7;
  LODWORD(STACK[0x5238]) = *(v43 - 1) - 1136014433;
  LODWORD(STACK[0x5180]) = LODWORD(STACK[0x5250]) - v11;
  LODWORD(STACK[0x5270]) = *(v49 - 2);
  v61 = STACK[0x5730];
  LODWORD(STACK[0x5188]) = (2 * LODWORD(STACK[0x5730]) + 4) & 0xE;
  LODWORD(STACK[0x5250]) = v56 + 1922463553 * v55;
  LODWORD(STACK[0x5178]) = 36364439 * v55;
  LODWORD(STACK[0x5200]) = v54;
  LODWORD(STACK[0x51B0]) = v57 + v54;
  LODWORD(STACK[0x5150]) = 380597639 * (v52 - v50);
  LODWORD(STACK[0x5140]) = (v30 >> 2) & 1;
  LODWORD(STACK[0x5148]) = v30 ^ v61;
  LODWORD(STACK[0x51D8]) = LODWORD(STACK[0x5258]) - 96654418;
  LODWORD(STACK[0x5210]) = ~v37;
  LODWORD(STACK[0x5560]) = v37;
  LODWORD(STACK[0x5158]) = v59;
  LODWORD(STACK[0x57B0]) = v37 ^ v59;
  LODWORD(STACK[0x5138]) = v10 >> 2;
  LODWORD(STACK[0x5240]) = v60;
  LODWORD(STACK[0x5218]) = v60 >> 3;
  LODWORD(STACK[0x5278]) = v47 ^ 0xD3AD3DD7;
  LODWORD(STACK[0x51C8]) = (v47 ^ 0xD3AD3DD7) >> 2;
  LODWORD(STACK[0x5510]) = v40;
  LODWORD(STACK[0x51D0]) = 16 * v40;
  LODWORD(STACK[0x51A8]) = 16 * v42;
  LODWORD(STACK[0x5258]) = v52;
  LODWORD(STACK[0x51E0]) = v52 ^ v50;
  v62 = STACK[0x5720];
  LODWORD(STACK[0x5208]) = v27;
  LODWORD(STACK[0x51C0]) = v27 ^ v62;
  return (*(STACK[0x57D8] + 8 * v5))(0x32FDA531675DD1FDLL, 1561458156, LODWORD(STACK[0x5710]) ^ 0xBA82A9A8, 0x25AB6CCD6ACAFB00);
}

uint64_t sub_1001D0E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  *v13 = v14;
  *(v13 + 8) = v15;
  *(v13 + 16) = v12;
  v16 = *v9;
  v17 = *(*v9 + (*a7 & ((((v12 & 0xFFFFFFF8) << (v8 + 116)) | 0x11473B4F) + 1905826675 + ((((v8 - 714429206) & 0x2A9559DE) - 144963070) ^ v12 & 0xFFFFFFF8)) & 0xFFFFFFF8));
  v18 = (v17 + __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8)) ^ a2;
  v19 = __ROR8__(v18, 8);
  v20 = v18 ^ __ROR8__(v17, 61);
  v21 = (v19 + v20) ^ v10;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a1;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a6;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xDA604B0C03A2BF99;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((v29 + v28) | 0xBAAB7CAC0AC143F5) - ((v29 + v28) | 0x45548353F53EBC0ALL) + 0x45548353F53EBC0ALL) ^ 0x409E9E61C1FF7232;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a3;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((((v34 + v33) | 0xCAAAD35B29F3BB82) - ((v34 + v33) | 0x35552CA4D60C447DLL) + 0x35552CA4D60C447DLL) ^ 0x3ED9D86A8783CEF9) >> (8 * (v12 & 7u))) ^ *v12;
  v36 = *(v16 + (*a7 & (((v12 + 1) & 0xFFFFFFF8) - 1201960184 - ((v12 + 1) & 0x3E1F51E8) + ((v12 + 1) & 0x3E1F51E8 | 0xC1E0AE10))));
  v37 = (v36 + __ROR8__((v12 + 1) & 0xFFFFFFFFFFFFFFF8, 8)) ^ a2;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) & 0x6902F27940C109CCLL) - (v39 + v38) + 0x4B7E86C35F9F7B19) ^ 0x73B637A9B89A136ELL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ a1;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ a6;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = __ROR8__((((v46 + v45) ^ 0xC25480024A96B2C1) - ((2 * ((v46 + v45) ^ 0xC25480024A96B2C1)) & 0x198322201BE341FCLL) + 0xCC191100DF1A0FELL) ^ 0x14F55A1E44C5ADA6, 8);
  v48 = (((v46 + v45) ^ 0xC25480024A96B2C1) - ((2 * ((v46 + v45) ^ 0xC25480024A96B2C1)) & 0x198322201BE341FCLL) + 0xCC191100DF1A0FELL) ^ 0x14F55A1E44C5ADA6 ^ __ROR8__(v45, 61);
  v49 = (v47 + v48) ^ a4;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ a3;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = v35 + 16 * ((((v53 + v52 - ((2 * (v53 + v52)) & 0xE8EA0ACF3C28A3DELL) + 0x747505679E1451EFLL) ^ 0x80060E5630642494) >> (8 * ((v12 + 1) & 7))) ^ *(v12 + 1));
  *(v13 + 24) = (v54 - 47 * (((2789 * v54) >> 16) >> 1) + 17);
  *(v13 + 32) = a8;
  *(v13 + 40) = 41;
  *(v13 + 48) = v11;
  *(v13 + 56) = 37;
  v55 = STACK[0x8158];
  *(v13 + 64) = STACK[0x8158];
  *(v13 + 72) = v15;
  STACK[0x7ED8] += 6576;
  if (v11)
  {
    v56 = a8 == 0;
  }

  else
  {
    v56 = 1;
  }

  v59 = v56 || v55 == 0 || v14 == 0;
  return (*(STACK[0x57D8] + 8 * ((71 * v59) ^ v8)))();
}

uint64_t sub_1001D12F4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = a2 ^ (a2 << 23) ^ ((a2 ^ (a2 << 23)) >> 17) ^ v3 ^ (v3 >> 26);
  v5 = v4 + v3;
  v6 = v3 ^ (v3 << 23) ^ ((v3 ^ (v3 << 23)) >> 17) ^ v4 ^ (v4 >> 26);
  v7 = v4 ^ (v4 << 23) ^ ((v4 ^ (v4 << 23)) >> 17) ^ v6 ^ (v6 >> 26);
  v8 = (v6 + v4) | (v5 + 95);
  LODWORD(STACK[0x57A0]) = (v7 + v6) & 7;
  v9 = -(v7 + v6) & 7;
  if (((v7 + v6) & 7) != 0)
  {
    v10 = 255;
  }

  else
  {
    v10 = 0;
  }

  LODWORD(STACK[0x5790]) = v9;
  v11 = v10 << v9;
  LODWORD(STACK[0x49F0]) = v11;
  v12 = 16843009 * v11;
  v13 = v6 ^ (v6 << 23) ^ ((v6 ^ (v6 << 23)) >> 17) ^ v7 ^ (v7 >> 26);
  v14 = v13 ^ (v13 << 23);
  v15 = v7 ^ (v7 << 23) ^ ((v7 ^ (v7 << 23)) >> 17) ^ v13 ^ (v13 >> 26);
  v16 = v15 ^ (v15 << 23);
  v17 = v14 ^ (v14 >> 17) ^ v15 ^ (v15 >> 26);
  v18 = v16 ^ (v16 >> 17) ^ v17 ^ (v17 >> 26);
  v19 = v17 ^ (v17 << 23) ^ ((v17 ^ (v17 << 23)) >> 17) ^ v18 ^ (v18 >> 26);
  v20 = v19 ^ (v19 << 23);
  v21 = v18 ^ (v18 << 23) ^ ((v18 ^ (v18 << 23)) >> 17) ^ v19 ^ (v19 >> 26);
  v22 = v21 ^ (v21 << 23);
  v23 = v21 ^ v20 ^ (v20 >> 17) ^ (v21 >> 26);
  v24 = v23 ^ (v23 << 23);
  v25 = v22 ^ (v22 >> 17) ^ v23 ^ (v23 >> 26);
  v26 = v24 ^ (v24 >> 17) ^ v25 ^ (v25 >> 26);
  v27 = v25 ^ (v25 << 23) ^ ((v25 ^ (v25 << 23)) >> 17) ^ v26 ^ (v26 >> 26);
  v28 = v26 ^ (v26 << 23) ^ ((v26 ^ (v26 << 23)) >> 17) ^ v27 ^ (v27 >> 26);
  v29 = v27 ^ (v27 << 23) ^ ((v27 ^ (v27 << 23)) >> 17) ^ v28 ^ (v28 >> 26);
  v30 = v28 ^ (v28 << 23) ^ ((v28 ^ (v28 << 23)) >> 17) ^ v29 ^ (v29 >> 26);
  v31 = v29 ^ (v29 << 23) ^ ((v29 ^ (v29 << 23)) >> 17) ^ v30 ^ (v30 >> 26);
  v32 = 16843009 * ((v8 ^ ((v5 - 12449) >> 8)) ^ 0x4F);
  v33 = v30 ^ (v30 << 23) ^ ((v30 ^ (v30 << 23)) >> 17) ^ v31 ^ (v31 >> 26);
  v34 = v31 ^ (v31 << 23) ^ ((v31 ^ (v31 << 23)) >> 17) ^ v33 ^ (v33 >> 26);
  v35 = v34 ^ (v34 >> 26) ^ v33 ^ (v33 << 23) ^ ((v33 ^ (v33 << 23)) >> 17);
  v36 = v34 ^ (v34 << 23) ^ ((v34 ^ (v34 << 23)) >> 17) ^ v35 ^ (v35 >> 26);
  v37 = v35 ^ (v35 << 23) ^ ((v35 ^ (v35 << 23)) >> 17) ^ v36 ^ (v36 >> 26);
  v38 = v36 ^ (v36 << 23) ^ ((v36 ^ (v36 << 23)) >> 17) ^ v37 ^ (v37 >> 26);
  v39 = v37 ^ (v37 << 23) ^ ((v37 ^ (v37 << 23)) >> 17) ^ v38 ^ (v38 >> 26);
  v40 = v38 ^ (v38 << 23) ^ ((v38 ^ (v38 << 23)) >> 17) ^ v39 ^ (v39 >> 26);
  v41 = v39 ^ (v39 << 23) ^ ((v39 ^ (v39 << 23)) >> 17) ^ v40 ^ (v40 >> 26);
  v42 = v41 ^ (v41 << 23);
  v43 = v40 ^ (v40 << 23) ^ ((v40 ^ (v40 << 23)) >> 17) ^ v41 ^ (v41 >> 26);
  v44 = v43 ^ (v43 << 23);
  v45 = v42 ^ (v42 >> 17) ^ v43 ^ (v43 >> 26);
  LODWORD(STACK[0x4E78]) = v32;
  LODWORD(STACK[0x5760]) = v32 ^ 0xF2F2F2F2;
  STACK[0x53C8] = v44 ^ (v44 >> 17) ^ v45 ^ (v45 >> 26);
  LODWORD(STACK[0x4AF0]) = v12;
  LODWORD(STACK[0x5700]) = ~v12;
  return (*(STACK[0x57D8] + 8 * v2))(v2 ^ 0x4EE5u, (v2 - 16735), a1, &off_101353600, 13447, 38);
}

uint64_t sub_1001D1684()
{
  **(v3 + 816) = v1;
  *(v3 + 835) = 1;
  *(v3 + 828) = v0;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0xCAE08E0E ^ ((12154 * (v2 ^ 0xCAE09D00) - 21746) * (v2 > 0x87AAC640)))))();
}

uint64_t sub_1001D16F4()
{
  v0 = STACK[0xF90] & 0xC2E7A3D7;
  v1 = STACK[0x57D8];
  v2 = STACK[0xF94];
  STACK[0x7B40] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xF94]));
  return (*(v1 + 8 * ((v0 ^ 0x23E1) + v2)))();
}

uint64_t sub_1001D1758(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int a8)
{
  v23 = STACK[0x53B8] + a6;
  v24 = *(STACK[0x57C0] + (v11 & ((v23 & 0xFFFFFFF8 ^ 0x4D700AF) + 2131966410 + (((v23 & 0xFFFFFFF8) << (v9 + 55)) | 0xF651FEA1))));
  v25 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (((2 * (v25 + v24)) & 0x9C54734D57F6FAA0) - (v25 + v24) + 0x31D5C659540482AFLL) ^ 0x895DC78DB5C3E1FCLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x38C8B16AE7056877;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x37921153F632B8D0) - (v30 + v29) + 0x6436F75604E6A397) ^ 0x81B6462B882346C6;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xE1A1FD5BD155F97ALL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0xFE5893D76785F386) - (v35 + v34) - 0x7F2C49EBB3C2F9C3) ^ 0xA54C02E7B060465ALL ^ __ROR8__(v34, 61);
  v37 = (__ROR8__((((2 * (v35 + v34)) | 0xFE5893D76785F386) - (v35 + v34) - 0x7F2C49EBB3C2F9C3) ^ 0xA54C02E7B060465ALL, 8) + v36) ^ 0xFA35E2CDCB3E31C7;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v23) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ v12) >> (8 * (v23 & 7u))) ^ *v23;
  LODWORD(v23) = (((v23 ^ 0x6A6C4102) - 2070186938) ^ ((v23 ^ 0xF6D927FD) + 405672635) ^ ((v23 ^ 0x9CB566FF) + 1916949433)) * a7;
  LODWORD(v23) = (1618768328 - v23) ^ (v23 + 372806216) ^ (((v23 + 372806216) ^ v18) - 585788869) ^ (((v23 + 372806216) ^ 0x5A259B52) - 747675458) ^ (((v23 + 372806216) ^ 0x87300968) + 242938504) ^ 0x61FBC63D;
  v40 = ((v23 ^ v8 ^ 0x3CAFB3D5) - 1018147797) ^ ((v23 ^ v8 ^ 0xF21FDD2A) + 232792790) ^ ((v23 ^ v8 ^ 0x83515200) + 2091822592);
  LODWORD(v38) = a6 + 1712137766 + v40;
  v41 = (v38 ^ 0xF7944691) & (2 * (v38 & 0xE7D416D9)) ^ v38 & 0xE7D416D9;
  LODWORD(v39) = ((2 * (v38 ^ 0xF79C4A83)) ^ 0x2090B8B4) & (v38 ^ 0xF79C4A83) ^ (2 * (v38 ^ 0xF79C4A83)) & v19;
  v42 = ((4 * (v39 ^ 0x1048444A)) ^ 0x41217168) & (v39 ^ 0x1048444A) ^ (4 * (v39 ^ 0x1048444A)) & (v19 - 2);
  LODWORD(v39) = (v42 ^ 0x5040) & (16 * ((v39 ^ 0x81802) & (4 * v41) ^ v41)) ^ (v39 ^ 0x81802) & (4 * v41) ^ v41;
  v43 = ((16 * (v42 ^ v21)) ^ 0x485C5A0) & (v42 ^ v21) ^ (16 * (v42 ^ v21)) & (v19 - 10);
  LODWORD(v39) = v39 ^ v19 ^ (v43 ^ 0x4400) & (v39 << 8);
  LODWORD(v38) = (v38 ^ (2 * ((v39 << 16) & v15 ^ v39 ^ ((v39 << 16) ^ 0x5C5A0000) & (((v43 ^ (v21 + 3144)) << 8) & v15 ^ (((v43 ^ (v21 + 3144)) << 8) ^ 0x485C0000) & (v43 ^ (v21 + 3144)) ^ 0x10000000)))) >> 16;
  v44 = v40 + (((v38 ^ 0xDFD811D) + 1400186420) ^ ((v38 ^ 0x761E54FF) + 680981458) ^ ((v38 ^ 0x7BE33236) + 627807513));
  LODWORD(v38) = ((((a6 + 960783471 + v44) ^ 0x7336CE94) - 987604735) ^ (a6 + 960783471 + v44) ^ (((a6 + 960783471 + v44) ^ 0x9535E615) + 589394306) ^ (((a6 + 960783471 + v44) ^ 0x50167D54) - 436016446) ^ (((a6 + 960783471 + v44) ^ 0xFFFE3DBC) + 1240115756)) >> 8;
  v45 = a6 + v44 + (((v38 ^ 0x7283BDF9) + 746005978) ^ ((v38 ^ 0x18942A81) + 1180742306) ^ ((v38 ^ 0x6A5E7C10) + 883614769));
  v46 = (v45 - 1991462077) ^ (((v45 - 1991462077) ^ 0xC303AC7A) + 1123739482) ^ (((v45 - 1991462077) ^ 0xACF799F3) + 755946193) ^ (((v45 - 1991462077) ^ 0xEF0D5EAE) + 1861490062) ^ (((v45 - 1991462077) ^ 0xFEFFDFFB) + 2131137753) ^ 0x55F51E;
  v47 = ((v46 ^ v23 ^ 0x6F5953DE) - 1868125150) ^ ((v46 ^ v23 ^ 0xABD10E0B) + 1412362741) ^ ((v46 ^ v23 ^ 0xAD95DE3A) + 1382687174);
  LODWORD(v23) = a6 - 1230861649 + v47;
  LODWORD(v38) = ((2 * (v23 ^ 0xC1E54E4C)) ^ 0xE73F6E18) & (v23 ^ 0xC1E54E4C) ^ (2 * (v23 ^ 0xC1E54E4C)) & v16;
  v48 = v38 ^ 0x10809104;
  LODWORD(v39) = (v23 ^ 0xA170FC4C) & (2 * (v23 & v14)) ^ v23 & v14;
  LODWORD(v38) = (v38 ^ 0x431F3604) & (4 * v39) ^ v39;
  LODWORD(v39) = ((4 * v48) ^ 0xCE7EDC30) & v48 ^ (4 * v48) & v16;
  v49 = ((16 * (v39 ^ 0x3181230C)) ^ 0x39FB70C0) & (v39 ^ 0x3181230C) ^ (16 * (v39 ^ 0x3181230C)) & (v16 - 12);
  LODWORD(v38) = (v39 ^ v10) & (16 * v38) ^ v38 ^ v16 ^ (v49 ^ 0x319B3000) & (((v39 ^ v10) & (16 * v38) ^ v38) << 8);
  v50 = (v23 ^ (2 * ((v38 << 16) & v13 ^ v38 ^ ((v38 << 16) ^ 0x370C0000) & (((v49 ^ 0x4204870C) << 8) & v13 ^ 0x60080000 ^ (((v49 ^ 0x4204870C) << 8) ^ 0x1FB70000) & (v49 ^ 0x4204870C))))) >> 16;
  LODWORD(v23) = a6 + 1 + v20;
  v51 = (v22 < v20) ^ (v23 < v20);
  v52 = v22 > v23;
  v53 = (v45 - 839859311) ^ a1;
  if (v51)
  {
    v52 = v22 < v20;
  }

  v54 = v47 + (((v50 ^ 0x23DC9F1D) + 200213745) ^ ((v50 ^ 0x8C7A5F31) - 1538669347) ^ ((v50 ^ 0xAFA6F371) - 2020251491));
  v55 = a6 + 1633619956 + v54;
  v56 = ((2 * (v55 ^ 0x6B488649)) ^ 0x69849A06) & (v55 ^ 0x6B488649) ^ (2 * (v55 ^ 0x6B488649)) & (v17 + 2);
  v57 = (v55 ^ 0xDF488249) & (2 * (v55 & 0xDF8ACB4A)) ^ v55 & 0xDF8ACB4A;
  v58 = v56 ^ 0x94424501;
  v59 = (v56 ^ 0x20000801) & (4 * v57) ^ v57;
  v60 = ((4 * v58) ^ 0xD309340C) & v58 ^ (4 * v58) & v17;
  v61 = (v60 ^ 0x90000403) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x24C24903)) ^ 0x4C24D030) & (v60 ^ 0x24C24903) ^ (16 * (v60 ^ 0x24C24903)) & v17;
  v63 = v61 ^ (v17 + 3) ^ (v62 ^ 0x4004003) & (v61 << 8);
  v64 = (v55 ^ (2 * ((v63 << 16) & a8 ^ v63 ^ ((v63 << 16) ^ 0x4D030000) & (((v62 ^ 0xB0C20D03) << 8) & a8 ^ 0x34820000 ^ (((v62 ^ 0xB0C20D03) << 8) ^ 0xC24D0000) & (v62 ^ 0xB0C20D03))))) >> 8;
  return (*(STACK[0x57D8] + 8 * ((460 * v52) ^ v9)))(v53 ^ (a6 + 912252639 + v54 + (((v64 ^ 0xD2C383F6) - 1784497205) ^ ((v64 ^ 0x98E60A3F) - 544787964) ^ ((v64 ^ 0x4A9B8398) + 234535845)) + 1223));
}

uint64_t sub_1001D22C4@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v15 = v4 < v9;
  v16 = a2 + v3;
  v17 = *v7 & 0xFFFFFFF8;
  v18 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = *(*v10 + (v17 & ((v16 & 0xFFFFFFF8 ^ 0x328EABA8) + 292382098 + ((2 * (v16 & 0xFFFFFFF8)) | 0x9AE2A8AF))));
  v20 = v6 + v3;
  v21 = ((((v18 + v19) << (((v2 - 73) | 0xCA) ^ 0xDFu)) & 0x5C01291C2F92A0C8) - (v18 + v19) + 0x51FF6B71E836AF9BLL) ^ 0x58EC0FAD5EB59B40;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v13;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v8;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = (v26 + v27) ^ a1;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF887455E88108A0CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) & 0xD5309E50C002BA8BLL ^ 0x852094404002B088) + ((v32 + v31) & 0x2ACF61AF3FFD4574 ^ 0x224F00291B794531) - 1) ^ 0x831CDF0CFA9B71E1;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xA1FAE2DD4D569CC8;
  v36 = *(*v10 + (v17 & ((v20 & 0xFFFFFFF8 ^ 0xF4CE67A2) - 368029607 + ((2 * (v20 & 0xFFFFFFF8)) & 0xE99CCF40) + 494)));
  v37 = (v36 + __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x91364DCB68334DBLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0x15D9EAB8EE38F34) + 0xAECF55C771C79ALL) ^ 0x4423A03960601FCFLL;
  v41 = (((2 * v35) | 0xA23E5B06AFC6B25ALL) - v35 + 0x2EE0D27CA81CA6D3) ^ 0x302C00B426700E04;
  v42 = v40 ^ __ROR8__(v38, 61);
  v43 = (__ROR8__(v40, 8) + v42) ^ v8;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x67536EC0FB8B549DLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v34, 61));
  v49 = (((2 * (v47 + v46)) | 0x2D0E2DD8937F002) - (v47 + v46) - 0x168716EC49BF801) ^ 0xF9EF34304C8B720DLL;
  v50 = v49 ^ __ROR8__(v46, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v12;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v14;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = v3 + 1;
  *v20 = (((v11 - (v48 | v11) + (v48 | 0xE37936EB1CD7CC86)) ^ 0x8C1A6AC5F9001E40) >> (8 * (v16 & 7u))) ^ (((v55 + v54 - ((2 * (v55 + v54)) & 0x69296BF020227B24) + 0x3494B5F810113D92) ^ 0x5BF7E9D6F5C6EF54uLL) >> (8 * (v20 & 7u))) ^ *v16;
  if (v15 == v56 > 0x85DD9D7D)
  {
    v15 = v56 + v9 < v4;
  }

  return (*(STACK[0x57D8] + 8 * ((!v15 * v5) ^ v2)))(v56 + v9 < v4);
}

uint64_t sub_1001D270C()
{
  v1 = (LODWORD(STACK[0xE4C4]) + v0);
  LODWORD(STACK[0xE4DC]) = v1;
  STACK[0xE4E0] = STACK[0xA030];
  v2 = STACK[0xAAB0] + v1;
  LODWORD(v1) = ((v1 - 149) < 0x2C) * (STACK[0x2D50] ^ 0x4A3);
  v3 = STACK[0x51B8] + 7004;
  STACK[0xE4E8] = v2;
  return (*(STACK[0x57D8] + 8 * (v1 ^ v3)))();
}

uint64_t sub_1001D27E0()
{
  v2 = *(v1 - 0x683CBC57EAB92A3ELL);
  STACK[0x75E0] = 0;
  STACK[0xBF40] = 0;
  return (*(STACK[0x57D8] + 8 * (((((v2 == 0x308E083E0C524CBELL) ^ (v0 + 67) & 0x97) & 1) * (3 * (v0 ^ 0x2C53) - 4862)) ^ v0)))();
}

uint64_t sub_1001D2884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 - 6761);
  v7 = *(STACK[0x57D8] + 8 * v6);
  STACK[0x5540] = v5 & 0xFFFFFFF0;
  STACK[0x5570] = 16 - (v5 & 0xFFFFFFF0);
  return v7(0xEA92E9031C9122D2, 0x101237000, a3, v6, 0xD13410E5269E20D1, 0x190AF362A80C1C4, v4, 0xD41E37D406F24860);
}

uint64_t sub_1001D2950@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v20 = a7 + v9 + STACK[0x57C0] + v16;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = v21 - ((v18 + 2 * v21) & a1) + a3;
  v23 = v22 ^ a4;
  v24 = v22 ^ a5;
  v25 = (__ROR8__(v23, 8) + v24) ^ v12;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v17;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = ((v15 & (2 * ((v29 + v28) ^ v14))) - ((v29 + v28) ^ v14) + a2) ^ a6;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v19;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v11;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  *v20 = (((v10 & (2 * (v38 + v37))) - (v38 + v37) - 0x46657311DF59E19CLL) ^ 0xFFF2D49B1AC860D6) >> (8 * (v20 & 7u));
  return (*(STACK[0x57D8] + 8 * (((v9 == 1) * v13) ^ v8)))();
}

uint64_t sub_1001D2A60(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x49D03C23 ^ (v2 - 2560506) & 0x49F73FFF)))(a1, a2, 1238384546, 998, 43);
}

uint64_t sub_1001D2B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v16.val[0].i64[0] = a2 & 8;
  v16.val[0].i64[1] = v16.val[0].i64[0] | 1;
  v16.val[1].i64[0] = v16.val[0].i64[0] | 2;
  v16.val[1].i64[1] = v16.val[0].i64[0] | 3;
  v16.val[2].i64[0] = (v8 + v11) & a2 | 4;
  v16.val[2].i64[1] = v16.val[0].i64[0] | v10;
  v16.val[3].i64[0] = v16.val[0].i64[0] | 6;
  v16.val[3].i64[1] = v16.val[0].i64[0] | 7;
  *(a1 + (a4 + a2)) = veor_s8(veor_s8(veor_s8(veor_s8(*(v4 + a2), *(v5 + v16.val[0].i64[0])), veor_s8(*(v6 + v16.val[1].i64[0]), *(v7 + v16.val[0].i64[0]))), v13), vmul_s8(*&vqtbl4q_s8(v16, v12[26]), v14));
  return (*(STACK[0x57D8] + 8 * (((16 * (a3 != a2)) | (32 * (a3 != a2))) ^ v9)))();
}

uint64_t sub_1001D2BAC()
{
  v1 = STACK[0x57D8];
  STACK[0xD9E0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3E89 ^ (v0 + 8145))))();
}

uint64_t sub_1001D2C28@<X0>(int a1@<W8>)
{
  v3 = a1 + v1;
  v4 = STACK[0x5D60];
  v5 = 1534937323 * ((v2 - 240) ^ 0xCD7888C2C6EEFB47);
  LODWORD(STACK[0x1D4D4]) = (v3 + 1269343908) ^ v5;
  LODWORD(STACK[0x1D4C8]) = 1269343751 - v5 + v3 + 702;
  STACK[0x1D4C0] = v4 ^ v5;
  LODWORD(STACK[0x1D4D0]) = v5;
  STACK[0x1D4D8] = v5;
  LODWORD(STACK[0x1D4E0]) = v3 + 1269343751 + v5;
  LODWORD(STACK[0x1D4CC]) = v5 + a1 + 1451493860;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2462)))(v2 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1001D2D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x57D8];
  STACK[0x8CB8] = *(STACK[0x57D8] + 8 * (v3 - 19810));
  return (*(v4 + 8 * (v3 - 20348 + v3 - 19810)))(a1, a2, a3, &STACK[0x1D270]);
}

uint64_t sub_1001D2DDC@<X0>(int a1@<W8>)
{
  v3 = &STACK[0x1D280] + v1;
  *v3 = *v2;
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  v3[4] = v2[4];
  v3[5] = v2[5];
  v3[6] = v2[6];
  v3[7] = v2[7];
  v3[8] = v2[8];
  v3[9] = v2[9];
  v3[10] = v2[10];
  v3[11] = v2[11];
  v3[12] = v2[12];
  v3[13] = v2[13];
  v3[14] = v2[14];
  v3[15] = v2[15];
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1001D3048()
{
  v1 = STACK[0x57D8];
  STACK[0xB2F0] = *(STACK[0x57D8] + 8 * (v0 - 17178));
  return (*(v1 + 8 * ((v0 - 17178) ^ 0x1719)))();
}

uint64_t sub_1001D30EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  v13 = *(v12 + 8);
  v14 = STACK[0x5770];
  v15 = *(v9 + ((((v13 + v14) & 0xFFFFFFF8 ^ 0x4CD5B580) + 1155625453 + ((((v13 + v14) & 0xFFFFFFF8) << ((v6 ^ 0x5E) + 18)) | 0x665494FD)) & v10));
  v16 = (v6 + 1945692198) & 0x8C075D7E ^ 0xB057743BD1A8ADEALL ^ (__ROR8__((v13 + STACK[0x5770]) & 0xFFFFFFFFFFFFFFF8, 8) + v15);
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0xB5A136704380AEELL) - (v18 + v17) - 0x5AD09B3821C0578) ^ 0x701587008E6FBD0BLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a3;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x1C031738E4A64104;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v7;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v11;
  v28 = __ROR8__(v27, 8);
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (((2 * (v28 + v29)) & 0x3FCFFA01A4D4A3EALL) - (v28 + v29) - 0x1FE7FD00D26A51F6) ^ 0xEB387091DC6394A5;
  v31 = ((((__ROR8__(v30, 8) + (v30 ^ __ROR8__(v29, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * ((v13 + v14) & 7))) ^ *(v13 + v14)) + HIDWORD(a6);
  v32 = v13 + 4 * STACK[0x5790];
  v33 = *(v9 + (((v32 & 0x4C9BD5E0) + (v32 & 0xB3642A18 | 0x4C9BD5E2) - 1418729847) & v10));
  v34 = (__ROR8__(v32 & 0xFFFFFFFFFFFFFFF8, 8) + v33) ^ 0xB057743BD1A8F5BCLL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a2;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a3;
  v39 = __ROR8__(v38, 8);
  v40 = v38 ^ __ROR8__(v37, 61);
  v41 = (v39 + v40) ^ 0x1C031738E4A64104;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v7;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v11;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  *v32 = v31 ^ (((__ROR8__((0x548261A2429FE712 - ((v47 + v46) | 0x548261A2429FE712) + ((v47 + v46) | 0xAB7D9E5DBD6018EDLL)) ^ 0xA05DEC334C962242, 8) + ((0x548261A2429FE712 - ((v47 + v46) | 0x548261A2429FE712) + ((v47 + v46) | 0xAB7D9E5DBD6018EDLL)) ^ 0xA05DEC334C962242 ^ __ROR8__(v46, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * (v32 & 7u)));
  v48 = *(v12 + 8) + v14;
  v49 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v48 & 0xFFFFFFF8) + a4)) & 0xFFFFFFFFFFFFFFF8));
  v50 = (__ROR8__(v48 & 0xFFFFFFFFFFFFFFF8, 8) + v49) ^ 0xB057743BD1A8F5BCLL;
  v51 = __ROR8__(v50, 8);
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = (v51 + v52) ^ a2;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((2 * ((v55 + v54) ^ 0xC69240D4058D3DC2)) | 0x54648B21FA9C55F4) - ((v55 + v54) ^ 0xC69240D4058D3DC2) - 0x2A324590FD4E2AFALL) ^ 0x4ECBE13EE2AA3848;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x1C031738E4A64104;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v7;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ v11;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0xF597E86F1BDC7E81;
  *v48 = (((__ROR8__((((2 * v64) | 0x763B58E510F2EFD8) - v64 + 0x44E2538D77868814) ^ 0x45AA3673625333C2, 8) + ((((2 * v64) | 0x763B58E510F2EFD8) - v64 + 0x44E2538D77868814) ^ 0x45AA3673625333C2 ^ __ROR8__(v63, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * (v48 & 7u))) ^ HIDWORD(v31);
  return (*(STACK[0x57D8] + 8 * (v6 ^ (120 * (LODWORD(STACK[0x57A0]) + 1 != v8)))))();
}

uint64_t sub_1001D3700@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v16 = (((v12 ^ 0xDD270BAF) + 584643665) ^ ((v12 ^ 0x94D25E82) + a4) ^ (a3 + ((((v11 + a6) & 0x8D02D8FE) - 1679196829) ^ v12) + 2631)) + 593911779;
  v17 = ((v16 ^ 0xDB172857) + 1973487865) ^ v16 ^ ((v16 ^ 0x542E9A43) - 90653971) ^ ((v16 ^ (a7 + 3002)) + 1060745749) ^ (a8 + (v16 ^ (a1 + 32)) + 1676);
  *(a9 + v9 + v15 + (((v17 ^ (a5 + 2195)) + 1194378670) ^ ((v17 ^ 0x42CE435A) + 1046799202) ^ ((v17 ^ v13) + v14))) = *(v10 + (v17 ^ a2)) - 2 * (*(v10 + (v17 ^ a2)) & 0xF) + 15;
  return (*(STACK[0x57D8] + 8 * ((19 * (v17 != a2)) ^ v11)))();
}

uint64_t sub_1001D3964()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 14037 + ((v0 - 1290) | 0x4030))))(0x308E083E0C524CBELL);
}

uint64_t sub_1001D39CC@<X0>(int a1@<W8>)
{
  STACK[0x5770] = v2;
  v4 = v1 - 1172467032 + 2722 * (a1 ^ 0x6D54);
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  STACK[0x5780] = v5;
  return (*(STACK[0x57D8] + 8 * (a1 ^ (15 * (v3 >> 31)))))(0x8A47714CF38C4783, 0x91BE8DE8979CBE40, 0x6B2F4EEB4ACB4A24, 0xB0E9AE1327F5EFC4, STACK[0x51F0], 0x3597A775A565A512, 0x489D6DDF4C899D0FLL, 0xD237161E136A4A1ELL);
}

uint64_t sub_1001D3B84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v21 = v9 - 1;
  v22 = __ROR8__((v8 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((v15 - v22) & v16) + v22 + v14 - ((v22 + v14) & v17);
  v24 = v23 ^ ((v10 + 17295) - 0x41AFB49C26554F7FLL);
  v25 = (__ROR8__(v23 ^ v18, 8) + v24) ^ 0x56BE29CE5970DE13;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x603021A25DE8AD6FLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0x1154C7BD042B7CA4) + 0x8AA63DE8215BE52) ^ v12;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((((2 * (v32 + v31)) | 0xA59630C55EFA5B24) - (v32 + v31) - 0x52CB1862AF7D2D92) ^ 0xCB369B8775C647EBLL, 8);
  v34 = (((2 * (v32 + v31)) | 0xA59630C55EFA5B24) - (v32 + v31) - 0x52CB1862AF7D2D92) ^ 0xCB369B8775C647EBLL ^ __ROR8__(v31, 61);
  v35 = __ROR8__((a8 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = (v35 + a2) ^ v13;
  v37 = __ROR8__((v35 + a2) ^ a7, 8);
  v38 = (v20 - ((v33 + v34) | v20) + ((v33 + v34) | 0xE44631B961E1F3CDLL)) ^ 0x4689704E0AB4736DLL;
  v39 = v38 ^ __ROR8__(v34, 61);
  v40 = (v19 - ((v37 + v36) | v19) + ((v37 + v36) | a5)) ^ a6 ^ __ROR8__(v36, 61);
  v41 = (__ROR8__((v19 - ((v37 + v36) | v19) + ((v37 + v36) | a5)) ^ a6, 8) + v40) ^ a1;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x51FC477E33DE4033;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (__ROR8__(v38, 8) + v39) ^ 0x19466AED1FB80A73;
  v47 = (((2 * (v45 + v44)) | 0xFB12D427EBB9D3F2) - (v45 + v44) + 0x27695EC0A231607) ^ 0xDFC563D9B1D0E5F2;
  v48 = v47 ^ __ROR8__(v44, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v11 - ((v49 + v48) | v11) + ((v49 + v48) | 0xEE58C0C97566147BLL)) ^ 0x4FC139672AE17E3ELL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__(v46, 8) + (v46 ^ __ROR8__(v39, 61));
  v54 = (((2 * (v52 + v51)) & 0xC9AC650B913B0648) - (v52 + v51) - 0x64D63285C89D8325) ^ 0x29ABF36E975E7FBCLL;
  *(a8 + v21) = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v51, 61))) ^ a3) >> (8 * ((a8 + v21) & 7))) ^ ((v53 ^ a4) >> (8 * ((v8 + v21) & 7))) ^ *(v8 + v21);
  return (*(STACK[0x57D8] + 8 * ((9447 * (v21 != 0)) ^ v10)))();
}

uint64_t sub_1001D3E90()
{
  STACK[0x9DE8] = v1;
  LODWORD(STACK[0x5CF8]) = v3;
  v6 = STACK[0x7ED8];
  STACK[0x8C20] = v0 + STACK[0x7ED8];
  STACK[0x7ED8] = v6 + 32;
  STACK[0xAA78] = v2;
  STACK[0x5FD0] = 4;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v4 + 9152)))(&STACK[0x1D1CD], &STACK[0x675C], &STACK[0x5FD0], 0, 0);
  v9 = STACK[0x2B88];
  LODWORD(STACK[0x1D4C0]) = (v4 - 1079089617) ^ STACK[0x2B88];
  LODWORD(STACK[0x1D4C4]) = v9 ^ (v4 - 1451266701) ^ 0xDC5;
  LODWORD(STACK[0x1D4C8]) = ((v4 - 1451266701) ^ 0x79) - v9;
  LODWORD(STACK[0x1D4D0]) = v9;
  STACK[0x1D4E0] = v9;
  STACK[0x1D4D8] = v8 - v9;
  LODWORD(STACK[0x1D4CC]) = v4 - 1451266701 - v9;
  v10 = (*(v7 + 8 * (v4 + 9201)))(v5 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4D4])))(v10);
}

uint64_t sub_1001D4140(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  LODWORD(STACK[0x31E8]) = LODWORD(STACK[0x4DD8]) | LODWORD(STACK[0x4E18]);
  LODWORD(STACK[0x4B80]) = a2 | v6;
  LODWORD(STACK[0x4E18]) = (a5 ^ 0x6395917B ^ ((v7 ^ 0x15AB) - 1616429412) & 0x6058BBBD) & a6;
  return (*(STACK[0x57D8] + 8 * (v7 ^ 0x15AB)))();
}

uint64_t sub_1001D4220@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W5>, int a5@<W6>, unsigned __int8 a6@<W7>, int a7@<W8>)
{
  v22 = *(*(&off_101353600 + v7) + (v19 ^ v10) - 3) ^ ((v19 ^ v8) + (v19 ^ v13) - (v9 & (2 * ((v19 ^ v8) + (v19 ^ v13)))) + a7) ^ a5;
  v23 = ((((v19 ^ ((v19 & v18) >> 1)) & v15) >> LODWORD(STACK[0x53B8])) | ((v19 ^ ((v19 & v18) >> 1)) << STACK[0x53C0])) ^ a6;
  *(STACK[0xD708] + 4 * v23) = a1 ^ a4 ^ ((((v22 ^ ((v22 & v21) >> 1)) & STACK[0x57B0]) >> LODWORD(STACK[0x57C0])) + (((v22 ^ ((v22 & v21) >> 1)) & v20) << LODWORD(STACK[0x5760])));
  v24 = *(a2 + 4 * (v19 ^ v12));
  *(v17 + 4 * v23) = a4 ^ v14 ^ a1 ^ (v24 * a3 + 1178114843) ^ (v24 * v16 + 1091897556);
  return (*(STACK[0x57D8] + 8 * ((15 * (v19 != 255)) | v11)))();
}

uint64_t sub_1001D4340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a9 - 1;
  v25 = __ROR8__((a3 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = v25 - ((a2 + 2 * v25) & v16) + v17;
  v27 = v26 ^ a6;
  v28 = v26 ^ a7;
  v29 = (__ROR8__(v27, 8) + v28) ^ v19;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v13;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a4;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v20;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__((v18 - ((v37 + v36) | v18) + ((v37 + v36) | a1)) ^ a5, 8);
  v39 = (v18 - ((v37 + v36) | v18) + ((v37 + v36) | a1)) ^ a5 ^ __ROR8__(v36, 61);
  v40 = ((a8 & (2 * (v38 + v39))) - (v38 + v39) + v22) ^ v23;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *(v15 + v24) = *(v10 + (v24 & 0xF)) ^ *(a3 + v24) ^ *((v24 & 0xF) + v9 + 1) ^ (-25 * (v24 & 0xF)) ^ *(v11 + (v24 & 0xF)) ^ ((((v14 & (2 * (v42 + v41))) - (v42 + v41) + 0x3BB1AED85E904523) ^ v21) >> (8 * ((a3 + v24) & 7)));
  return (*(STACK[0x57D8] + 8 * (v12 | (32 * (v24 == 0)))))();
}

uint64_t sub_1001D46A4@<X0>(uint64_t a1@<X8>)
{
  v5 = STACK[0xE5A0];
  v6 = 1978732275 * (v3 - v4) + 133494713;
  v7 = (v6 ^ 0xF4626B27) & (2 * (v6 & 0xF80B0847)) ^ v6 & 0xF80B0847;
  v8 = ((2 * (v6 ^ 0xF4746BA5)) ^ 0x18FEC7C4) & (v6 ^ 0xF4746BA5) ^ (2 * (v6 ^ 0xF4746BA5)) & 0xC7F63E2;
  v9 = v8 ^ 0x4012022;
  v10 = (v8 ^ 0x7C4300) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x31FD8F88) & v9 ^ (4 * v9) & 0xC7F63E0;
  v12 = (v11 ^ 0x7D0382) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0xC026062)) ^ 0xC7F63E20) & (v11 ^ 0xC026062) ^ (16 * (v11 ^ 0xC026062)) & 0xC7F63E0;
  v14 = v12 ^ 0xC7F63E2 ^ (v13 ^ 0x4762200) & (v12 << 8);
  *(v5 + 492) = v6 ^ (2 * ((v14 << 16) & 0xC7F0000 ^ v14 ^ ((v14 << 16) ^ 0x63E20000) & (((v13 ^ 0x80941C2) << 8) & 0xC7F0000 ^ (((v13 ^ 0x80941C2) << 8) ^ 0x7F630000) & (v13 ^ 0x80941C2) ^ 0x1C0000))) ^ *(v1 + (v2 & 0x75C5FB70)) & 0x7FFFFFFF ^ 0xAE5AE91A;
  v15 = *(v1 + (a1 & 0xFFFFFFFFD265232CLL));
  v16 = STACK[0x51B8] - 19242;
  *(v5 + 476) = (v15 & 0x7FFFFFFF ^ 0x11CBAE4E) + 441179768 - 2 * ((v15 & 0x7FFFFFFF ^ 0x11CBAE4E | 0x7FFFFFF8) ^ (v15 | 0x7FFFFFFE) ^ ((v15 & 0x7FFFFFFF ^ 0x11CBAE4E) & 0x1A4BDE78 | 6)) + 6;
  *(v5 + 516) = 0;
  return (*(STACK[0x57D8] + 8 * v16))();
}

uint64_t sub_1001D489C(uint64_t a1)
{
  v1 = STACK[0x2CB8];
  v2 = STACK[0x2CB8] + 4846;
  v3 = STACK[0x57D8];
  STACK[0x99F0] = *(STACK[0x57D8] + 8 * STACK[0x2CB8]);
  return (*(v3 + 8 * ((v2 ^ 0x1F1) + v1)))(a1, 103679699);
}

uint64_t sub_1001D4910(int a1, int a2, uint64_t a3, int a4)
{
  v5 = *STACK[0x4F30];
  v6 = *STACK[0x52B0];
  LODWORD(STACK[0x4400]) = LODWORD(STACK[0x55D0]) | LODWORD(STACK[0x5490]);
  LODWORD(STACK[0x48D0]) = a2 | LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x55D0]) = a4 & (v4 ^ 0x307C4455);
  v7 = *STACK[0x5170];
  v8 = v6 & 0x74 ^ 0x48;
  v9 = v7 & 0xA ^ 0x93;
  v10 = (((v6 ^ (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0x74) << 16) | (((v7 ^ (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & 0x2E ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0xA) << 8);
  v11 = v5 & 0x62 ^ 0xC7;
  LODWORD(STACK[0x53B0]) = (((((v5 ^ (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x44) & (2 * ((v5 ^ 0x44) & 6 ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xF18C0FBF) & ~v10 | v10 & 0x73F000) ^ 0xF18C0FDD) << 8) & 0xE9477000;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1001D4B44(uint64_t a1)
{
  v2 = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3312) + 12;
  v3 = STACK[0x57D8];
  v4 = *(STACK[0x57D8] + 8 * (v1 ^ 0x150Du));
  *(a1 + 220) = 0;
  *(a1 + 200) = v4;
  *(a1 + 208) = v2;
  return (*(v3 + 8 * (LODWORD(STACK[0x4D68]) + 29280)))();
}

uint64_t sub_1001D4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xC054]) = v8 - 1569404569 + v7 + 1569403232 + 255;
  v9 = STACK[0xCD68];
  v10 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v10 + 8 * (v7 + 3313)))(v9, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1001D4C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v10 = v4 - 1;
  v11 = *(a4 + v10);
  v12 = v11 & 0xE3 ^ 0x1A;
  v13 = *(*v8 + ((*v9 & (((a1 + v10) & 0x7CB064F8) + ((a1 + v10) & 0x834F9B00 | 0x7CB064F8) + 2099389599)) & 0xFFFFFFFFFFFFFFF8));
  v14 = (__ROR8__((a1 + v10) & 0xFFFFFFFFFFFFFFF8, 8) + v13) ^ a3;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v16 + v15 - ((2 * (v16 + v15)) & 0xC1E4575EE6AD3EB2) + 0x60F22BAF73569F59) ^ 0x75C069414FA6F510;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0x58FB00A4DDBBED54) - (v19 + v18) - 0x2C7D80526EDDF6AALL) ^ 0xE08549556E8CF31;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0xC62ECFDDABDE4EF2 - ((v22 + v21) | 0xC62ECFDDABDE4EF2) + ((v22 + v21) | 0x39D130225421B10DLL)) ^ 0xDC7E2A917A9C8DD0;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v25 + v24 - ((2 * (v25 + v24)) & 0x7E8B9926071E9350) - 0x40BA336CFC70B658) ^ 0x78980565CFCAFE89;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v6;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30) ^ a2;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  *(a1 + v10) = v11 ^ (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ 0xE) & (2 * v11) & 0x1E ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ (((0x317989EE8BD53C92 - ((v33 + v32) ^ 0x3B42B71BAED9CB1CLL | 0x317989EE8BD53C92) + ((v33 + v32) ^ 0x3B42B71BAED9CB1CLL | 0xCE867611742AC36DLL)) ^ 0x340709D87E364059) >> (8 * ((a1 + v10) & 7))) ^ 0xE3;
  return (*(STACK[0x57D8] + 8 * ((29366 * (v10 == 0)) ^ v5)))();
}

uint64_t sub_1001D4EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x4AF0] = v12;
  STACK[0x5550] = v11;
  STACK[0x50F0] = v10;
  STACK[0x5120] = v9;
  STACK[0x5268] = a7;
  STACK[0x5730] = a8;
  return (*(STACK[0x57D8] + 8 * (v8 - 17945)))(86454940, 16068651);
}

uint64_t sub_1001D4FA4()
{
  v0 = STACK[0x51B8];
  *(STACK[0xB658] - 0x30BDFED8F32E6511) = 1978732275 * (LODWORD(STACK[0xD474]) + (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x2D5887C)) & 0x7FFFFFFF ^ LODWORD(STACK[0x250C]))) + 1978732275;
  return (*(STACK[0x57D8] + 8 * (v0 - 13861)))();
}

uint64_t sub_1001D5084@<X0>(int a1@<W0>, unint64_t a2@<X8>)
{
  STACK[0xCBD0] = v2 + v3;
  STACK[0x9A28] = a2;
  return (*(STACK[0x57D8] + 8 * ((19684 * (v4 == ((a1 - 12888) ^ 0x26CAB2FC))) ^ (a1 + 1390))))();
}

uint64_t sub_1001D50DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = *v10;
  *(v7 - 1) = *(v10 - 1);
  *v7 = v12;
  return (*(STACK[0x57D8] + 8 * (((((v9 == 0) ^ (v8 - 1)) & 1) * a7) ^ v11)))();
}

uint64_t sub_1001D522C()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x7ED8];
  STACK[0xAB60] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v1 + 32;
  LODWORD(STACK[0x851C]) = 0;
  STACK[0x9EC0] = &STACK[0x851C];
  LODWORD(STACK[0x9E1C]) = -847333591;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_1001D5358@<X0>(int a1@<W8>)
{
  v1 = STACK[0x8330];
  v2 = STACK[0x76A8] + 64;
  LODWORD(STACK[0xBCA0]) = -769883996;
  STACK[0xBD50] = v2;
  STACK[0xBE50] = 0;
  STACK[0x5E58] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0x683CBC57EAB92A3ELL) * ((3 * (a1 ^ 0x34BD) - 17780) ^ (a1 - 1790388979) & 0x6AB713FF)) ^ a1)))();
}

uint64_t sub_1001D5408@<X0>(char a1@<W8>)
{
  v11 = *(v4 + ((v7 + 1075864332 - (v7 & 0x4814A6A0) + (v7 | 0xB7EB595C)) & v3));
  v12 = (v11 + v8) ^ ((v5 + 6507) | 0x281u) ^ 0xB057743BD1A8C63FLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x8A47714CF38C4783;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xA26BE47A1A692F70;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x1C031738E4A64104;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x7D0ACAAAE9EC381DLL;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v19, 61);
  v23 = (v21 + v22 - ((2 * (v21 + v22)) & 0x9DE8E367F98BAFACLL) - 0x310B8E4C033A282ALL) ^ 0x9C05F9FAE41D0174;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0x82FCF5C2E0A91A1ELL - ((v25 + v24) | 0x82FCF5C2E0A91A1ELL) + ((v25 + v24) | 0x7D030A3D1F56E5E1)) ^ 0x76237853EEA0DF4ELL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  LODWORD(v27) = (((((2 * (v28 + v27)) & 0xEDE538587849EE0ELL) - (v28 + v27) + 0x90D63D3C3DB08F8) ^ 0x98B3EE3B5447B6B8) >> v9) ^ v6;
  v29 = *(v4 + (v3 & ((v10 ^ 0x9E8B3492) - 1768492801 + ((2 * v10) | 0xC2E996D9)) & 0xFFFFFFF8));
  v30 = (v29 + v2) ^ 0xB057743BD1A8F5BCLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x8A47714CF38C4783;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xA26BE47A1A692F70;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0xD63E52643E31F5C8) - (v36 + v35) - 0x6B1F29321F18FAE4) ^ 0x771C3E0AFBBEBBE0;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = __ROR8__((v39 + v38 - ((2 * (v39 + v38)) & 0x11EF7FD7D8DB3886) + 0x8F7BFEBEC6D9C43) ^ 0x75FD75410581A45ELL, 8);
  v41 = (v39 + v38 - ((2 * (v39 + v38)) & 0x11EF7FD7D8DB3886) + 0x8F7BFEBEC6D9C43) ^ 0x75FD75410581A45ELL ^ __ROR8__(v38, 61);
  v42 = (v40 + v41) ^ 0x52F1884918D8D6A2;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (0x771B798AFA95977FLL - ((v44 + v43) | 0x771B798AFA95977FLL) + ((v44 + v43) | 0x88E48675056A6880)) ^ 0x83C4F41BF49C522FLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((0x180B774DDBB12BE8 - ((v47 + v46) | 0x180B774DDBB12BE8) + ((v47 + v46) | 0xE7F488B2244ED417)) ^ 0x764A055AB3D26A57) >> a1) ^ v1;
  v49 = (((v27 ^ 0xF7DC5C93) + 1104385829) ^ ((v27 ^ 0x1FE3C338) - 1444149104) ^ ((v27 ^ 0xE83F9FAB) + 1580225565)) + 1448312982;
  v50 = (((v48 ^ 0x290349B1) - 1246704040) ^ ((v48 ^ 0xF5CA9B6A) + 1769544845) ^ ((v48 ^ 0xDCC9D2DB) + 1081759038)) + 1873790055;
  v51 = v50 < 0xC634C4E;
  v52 = v49 >= v50;
  v53 = (v49 < 0xC634C4E) ^ v51;
  v54 = !v52;
  if (v53)
  {
    v55 = v51;
  }

  else
  {
    v55 = v54;
  }

  return (*(STACK[0x57D8] + 8 * ((25915 * v55) ^ v5)))();
}

uint64_t sub_1001D58B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v17.val[0].i64[0] = (a7 + v11 + 7) & 0xF;
  v17.val[0].i64[1] = (v8 + v11 + 22) & 0xF;
  v17.val[1].i64[0] = (v8 + v11 + 21) & 0xF;
  v17.val[1].i64[1] = (v8 + v11 + 20) & 0xF;
  v17.val[2].i64[0] = (v8 + v11 + 19) & 0xF;
  v17.val[2].i64[1] = (v8 + v11 + 18) & 0xF;
  v17.val[3].i64[0] = (a4 + v11 + v10) & 0xF;
  v17.val[3].i64[1] = (((v9 + v11) ^ 8) + v7) & 0xF;
  *(a5 + v11) = veor_s8(veor_s8(veor_s8(*(v13 + v17.val[0].i64[0]), *(a6 + v11)), veor_s8(*(v17.val[0].i64[0] + a2 + 4), *(v14 + v17.val[0].i64[0]))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v17, xmmword_1012371A0), v15)));
  return (*(STACK[0x57D8] + 8 * ((240 * (a3 == v11)) ^ v12)))();
}

uint64_t sub_1001D5998()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20064));
  return (*(v1 + 8 * (v0 - 18047)))();
}

uint64_t sub_1001D5A10(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(*(v4 + 4000) + 4 * (v8 % (((v7 + 7269) | 0x18DA) ^ 0x789Bu)));
  *(*(v4 + 4008) + a1 - 5896 * ((((a1 >> 3) * v6) >> 64) >> 4)) = (((v9 ^ 0xC9) - 72) ^ ((v9 ^ 0x23) + 94) ^ ((v9 ^ a4) + 102)) - 116;
  return (*(STACK[0x57D8] + 8 * ((18458 * (v5 == 0)) ^ v7)))(a1 + 3903);
}

uint64_t sub_1001D5B0C()
{
  v1 = STACK[0x57D8];
  STACK[0xB838] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 7082 + v0 + 14380)))();
}

uint64_t sub_1001D5BA0()
{
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -1130472518;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_1001D5C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = v7 + (v10 ^ 0x666u) + v11 - 1334885908;
  v22 = v8 + (v11 - 1334876227);
  v23 = *v12 & 0xFFFFFFFFFFFFFFF8;
  v24 = *(*v19 + ((v13 + (v21 & 0x64E34550 | 0x9B1CBAAD) + (v21 & 0x9B1CBAA8 | 0x64E34552) + 1) & v23));
  v25 = (__ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8) + v24) ^ v20;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = (v26 + v27) ^ v14;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v15;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a7;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v18;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v16;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8) + v37;
  v39 = *(*v19 + (((v22 & 0xFFFFFFF8) + v13) & v23));
  v40 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = (((2 * v38) | 0x1ADEDCB9CCB8798) - v38 - 0xD6F6E5CE65C3CCLL) ^ 0x5F5B1ADB6DFDC9D7;
  v42 = (v40 + v39 - ((2 * (v40 + v39)) & 0x443FC08272EDE29ALL) - 0x5DE01FBEC6890EB3) ^ 0x5609B108A628CD2ALL;
  v43 = v42 ^ __ROR8__(v39, 61);
  v44 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v37, 61));
  v45 = __ROR8__(v42, 8);
  v46 = (((v45 + v43) ^ 0x703DA2946413BC6FLL) - ((2 * ((v45 + v43) ^ 0x703DA2946413BC6FLL)) & 0x82460764D77DFCC0) + 0x412303B26BBEFE60) ^ 0x242CE3C8335D2846;
  v47 = v46 ^ __ROR8__(v43, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v15;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v47, 61);
  v51 = (v49 + v50) ^ a7;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v18;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v16;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x5F8DEC3EA3980A1BLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  *v22 = (((v59 + v58 - ((2 * (v59 + v58)) & 0x1F8742DC826CC044) + 0xFC3A16E41366022) ^ 0xCE0069BCE5F3280ALL) >> (8 * (v22 & 7u))) ^ ((v44 ^ v17) >> (8 * (v21 & 7u))) ^ *v21;
  v60 = v11 + 1768561503 < v9;
  if (v9 < 0xB8FAB3A5 != (v11 + 1768561503) < 0xB8FAB3A5)
  {
    v60 = v9 < 0xB8FAB3A5;
  }

  return (*(STACK[0x57D8] + 8 * ((6698 * v60) ^ v10)))();
}

uint64_t sub_1001D5FC8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v13 = v7 - 1;
  v14 = v10 + a6 + v13;
  v15 = __ROR8__((v8 + v13) & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = v15 - ((a3 + 2 * v15) & 0x2AA0ABC1F94F07A2) - 0x45EE6BA49C2D1A39;
  v17 = v16 ^ 0x9E48E87A9E6AD591;
  v16 ^= 0xB8411BA9A731DA24;
  v18 = (__ROR8__(v17, 8) + v16) ^ 0x9D63C3648794ABC0;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__((((2 * ((v20 + v19) ^ 0x4E9FA08069BD117DLL)) & 0xF42A9DEE9A7260EALL) - ((v20 + v19) ^ 0x4E9FA08069BD117DLL) + 0x5EAB108B2C6CF8ALL) ^ 0xC2426338D8F8292BLL, 8);
  v22 = (((2 * ((v20 + v19) ^ 0x4E9FA08069BD117DLL)) & 0xF42A9DEE9A7260EALL) - ((v20 + v19) ^ 0x4E9FA08069BD117DLL) + 0x5EAB108B2C6CF8ALL) ^ 0xC2426338D8F8292BLL ^ __ROR8__(v19, 61);
  v23 = (v21 + v22) ^ a4;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a2;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = __ROR8__((((2 * (v27 + v26)) | 0x83899CE40040063ALL) - (v27 + v26) + 0x3E3B318DFFDFFCE3) ^ 0xC418C220ED9DD338, 8);
  v29 = (((2 * (v27 + v26)) | 0x83899CE40040063ALL) - (v27 + v26) + 0x3E3B318DFFDFFCE3) ^ 0xC418C220ED9DD338 ^ __ROR8__(v26, 61);
  v30 = v28 + v29;
  v31 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8) + a5;
  v32 = v31 ^ 0x5662268C9D216ADLL;
  v31 ^= 0x19BD561D2BFA5152uLL;
  v33 = (__ROR8__(v32, 8) + v31) ^ a1;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v30 ^ 0x2EAD2D51E70187D4, 8) + (v30 ^ 0x2EAD2D51E70187D4 ^ __ROR8__(v29, 61));
  v36 = __ROR8__(v33, 8);
  v37 = (((v36 + v34) & 0xACBA46F27EE00801 ^ 0x209044526AC00001) + ((v36 + v34) ^ 0xCC6B1AA49436A86CLL) - (((v36 + v34) ^ 0xCC6B1AA49436A86CLL) & 0xACBA46F27EE00801)) ^ 0x70E93863C81BB7FFLL;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v12;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v11;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (0xBDB5B16F710E0B8DLL - ((v43 + v42) | 0xBDB5B16F710E0B8DLL) + ((v43 + v42) | 0x424A4E908EF1F472)) ^ 0x47B76BB18D449D98;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v9;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  *v14 = (((((2 * (v35 ^ 0x4E7AE938E8DB7528)) | 0xAD22C7B496DB2F16) - (v35 ^ 0x4E7AE938E8DB7528) - 0x569163DA4B6D978BLL) ^ 0x472F9ACC3636AADELL) >> (8 * ((v8 + v13) & 7))) ^ (((((2 * (v48 + v47)) & 0x9307A233A3552064) - (v48 + v47) + 0x367C2EE62E556FCDLL) ^ 0x9967FA0BA4337986) >> (8 * (v14 & 7u))) ^ *(v8 + v13);
  return (*(STACK[0x57D8] + 8 * ((995 * (v13 == 0)) ^ v6)))();
}

uint64_t sub_1001D639C()
{
  v1 = v0 - 49;
  v2 = v0 + 14231;
  v3 = (v0 - 8365) | 0x2400;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * ((v0 - 49) ^ 0x5CB0)))(48) == 0;
  return (*(v4 + 8 * ((v5 * (v2 ^ 0x7C75 ^ v3)) ^ v1)))();
}

uint64_t sub_1001D6400()
{
  LODWORD(STACK[0xB87C]) = -769884012;
  LODWORD(STACK[0xB2A4]) = -769884012;
  STACK[0x6340] = 0;
  LODWORD(STACK[0x8404]) = -769884012;
  STACK[0x7AA8] = 0;
  STACK[0x64C0] = STACK[0x6120];
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xB87C];
  LODWORD(STACK[0x9094]) = -32197409;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1001D64B8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6ABB)))(STACK[0x57C0]);
  v3 = *(v1 + 8 * (((v2 != (*(v1 + 8 * (v0 + 25972)))()) * (((v0 - 5596) | 0x2804) - 10459)) ^ v0));
  return v3();
}

void *sub_1001D6584()
{
  v0 = STACK[0x2B48];
  v1 = 601 * (STACK[0x2B48] ^ 0x7EE);
  v2 = STACK[0x57D8];
  STACK[0xAE08] = *(STACK[0x57D8] + 8 * STACK[0x2B48]);
  return (*(v2 + 8 * (v0 ^ 0x1CA4 ^ v1)))(&STACK[0xA434]);
}

uint64_t sub_1001D65D4@<X0>(int a1@<W8>)
{
  v1 = STACK[0xB100];
  STACK[0x64C8] = *(STACK[0xB100] - 0x30BDFED8F32E6519);
  LODWORD(STACK[0x80B4]) = *(v1 - 0x30BDFED8F32E6511) + ((73 * (a1 ^ 0x4B19)) ^ 0xD21CA2AC) - ((2 * *(v1 - 0x30BDFED8F32E6511)) & 0xA4390128);
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1001D6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xC758];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (v7 - 20059));
  return (*(v9 + 8 * ((v7 - 15412) ^ (v7 - 20059))))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1001D6760()
{
  *v2 = 0;
  v3 = STACK[0x57D8];
  v4 = *(v3 + 8 * ((323 * ((*(STACK[0x57D8] + 8 * (v0 + 25633)))(v1 + 25, 493) == ((274 * ((v0 + 12806) ^ 0x4AB3)) ^ 0x125F3A22) + v0 - 308231003)) ^ (v0 + 12806)));
  return v4();
}

uint64_t sub_1001D67E0()
{
  v2 = *(v0 + 295);
  v3 = *(v0 + 2320);
  v4 = v3 & 0xFFFFFFF8;
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & 0xFFFFFFF8;
  v7 = *(v5 + (v6 & ((v3 & 0xFFFFFFF8 ^ 0xEFB73107) - 1558640731 + ((2 * (v3 & 0xFFFFFFF8)) & 0xDF6E6200))));
  v8 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (v7 + v8) ^ 0xC2AF3EAA3FF1B8E4;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) | 0x1AAE766E52E10E10) - (v13 + v12) + 0x72A8C4C8D68F78F8) ^ 0xE2A77DA148699585;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xA1B29DC5D776132BLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = __ROR8__((v18 + v17 - ((2 * (v18 + v17)) & 0xFD9A08968EAF79E6) - 0x132FBB4B8A8430DLL) ^ 0x11C9240AB2B2F41FLL, 8);
  v20 = (v18 + v17 - ((2 * (v18 + v17)) & 0xFD9A08968EAF79E6) - 0x132FBB4B8A8430DLL) ^ 0x11C9240AB2B2F41FLL ^ __ROR8__(v17, 61);
  v21 = (v19 + v20) ^ 0xD8C7B31FCA19D9DELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0xD483989D936CDCA2) - (v23 + v22) + 0x15BE33B1364991AFLL) ^ 0xBE14CD604307ADDELL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  LOBYTE(v3) = 8 * (v3 & 7);
  *(v0 + 1873) = (((v26 + v25 - ((2 * (v26 + v25)) & 0x5E4B9F1BDD82888ELL) - 0x50DA3072113EBBB9) ^ 0xC06AAF31E0C31AA7) >> v3) ^ v2;
  v27 = *(v5 + (v6 & (v4 - 1831847764)));
  v28 = (v27 + v8 - ((2 * (v27 + v8)) & 0xA7F7CF2F0AA2C5E4) - 0x2C0418687AAE9D0ELL) ^ 0x1154D93DBAA0DA16;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * ((v30 + v29) ^ 0xEF74EF8C111065D0)) & 0x519A5AB1A2E5B7E8) - ((v30 + v29) ^ 0xEF74EF8C111065D0) + 0x5732D2A72E8D240BLL) ^ 0xDDB469F62710F527;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x6FF046966119128DLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((v35 + v34 - ((2 * (v35 + v34)) & 0x11076A5F7E064B2ELL) - 0x777C4AD040FCDA69) ^ 0x293128EA687536BCLL, 8);
  v37 = (v35 + v34 - ((2 * (v35 + v34)) & 0x11076A5F7E064B2ELL) - 0x777C4AD040FCDA69) ^ 0x293128EA687536BCLL ^ __ROR8__(v34, 61);
  v38 = (v36 + v37) ^ v1;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xD8C7B31FCA19D9DELL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x5455012E8AB1C38FLL;
  **(v0 + 2304) = *(v0 + 2319) ^ v2 ^ (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3);
  v43 = (STACK[0x8070] + 6769);
  *(v0 + 2328) = v43;
  *(v0 + 2343) = *v43;
  v44 = *(v0 + 3920) + 26;
  *(v0 + 296) = v44;
  v45 = STACK[0x57D8];
  v46 = *(STACK[0x57D8] + 8 * (STACK[0x4D40] + 3225));
  *(v0 + 2344) = v44;
  *(v0 + 280) = v46;
  return (*(v45 + 8 * (LODWORD(STACK[0x4D6C]) + 8890)))();
}

uint64_t sub_1001D6BE8()
{
  v0 = STACK[0x51B8] - 14235;
  v1 = STACK[0xB458];
  v2 = *(STACK[0xB458] + 8);
  v3 = STACK[0x8050];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0x57D8] + 8 * (((v2 != 0) * (v0 - 8282)) ^ v0)))();
}

uint64_t sub_1001D6CF0()
{
  v1 = STACK[0x51B8] - 20806;
  LOWORD(STACK[0xD5A2]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1E67)))();
}

uint64_t sub_1001D6DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x57D8];
  STACK[0xD0E0] = *(STACK[0x57D8] + 8 * v6);
  return (*(v7 + 8 * (v6 ^ 0x1FD8)))(a1, a2, 1202120278, 2050767130, 0xFC71BDB19848BF39, a6, 3346828848, 3852262280);
}

uint64_t sub_1001D6F4C@<X0>(uint64_t a1@<X3>, char a2@<W4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v20 = __ROR8__((v6 + v7) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (v20 + a3) ^ v13;
  v22 = (v8 + v9) ^ v16 ^ (__ROR8__((v20 + a3) ^ a5, 8) + v21);
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - (v17 & (2 * (v24 + v23))) + v18) ^ v19;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = ((v11 & (2 * (v29 + v28))) - (v29 + v28) + a4) ^ v14;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v12;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x6B46B57808873547;
  *(a6 + v7) = *(v6 + v7) ^ (*(a6 + v7) + (v10 ^ (2 * *(a6 + v7)) | 0x55) - 42) ^ a2 ^ (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v6 + v7) & 7)));
  return (*(STACK[0x57D8] + 8 * (((v7 == 15) * v15) ^ v8)))();
}

uint64_t sub_1001D70E4()
{
  v0 = (STACK[0x51B8] - 22450) | 0x1211;
  v1 = STACK[0x51B8] + 1817;
  v2 = STACK[0x8388];
  STACK[0x9970] = STACK[0x8388];
  return (*(STACK[0x57D8] + 8 * (((v0 ^ 0x1266) * (v2 == 0)) ^ v1)))();
}

uint64_t sub_1001D7138()
{
  v4 = STACK[0x4D54];
  *(v2 + (v3 + v0)) = *(v1 + v3) - 2 * (*(v1 + v3) & 0xF) + 15;
  return (*(STACK[0x57D8] + 8 * ((27738 * (v3 + 1 == (v4 ^ 0x7764u) - 22610)) ^ v4)))();
}

uint64_t sub_1001D7214(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  if (v8 < v10 != v9 < v10)
  {
    v11 = v8 < v10;
  }

  else
  {
    v11 = v9 < v8;
  }

  return (*(STACK[0x57D8] + 8 * ((v11 * a3) ^ a8)))();
}

uint64_t sub_1001D861C()
{
  LODWORD(STACK[0x5750]) = 0;
  v1 = *(STACK[0x57D8] + 8 * v0);
  LODWORD(STACK[0x5720]) = 127;
  LODWORD(STACK[0x56D0]) = 218;
  return v1(188, 88, STACK[0x5670], 122);
}

uint64_t sub_1001D8874()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] + v0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xAFE8]);
  return (*(v3 + 8 * ((v1 + 2143) ^ v2)))(v4);
}

uint64_t sub_1001D88CC(int a1, uint64_t a2)
{
  v3 = STACK[0x51B8];
  v4 = STACK[0x51B8] - 4690;
  *(*(a2 - 0x79296B4A625EDC6CLL) + 4 * (a1 - 1527287028)) = v2;
  return (*(STACK[0x57D8] + 8 * (v3 + 190)))((v4 ^ 0x4605u) + a1);
}

uint64_t sub_1001D891C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * a2);
  return (*(v3 + 8 * (a2 ^ 0x1348)))(v2 + 534, a1, 1238384546, 998, 43);
}

uint64_t sub_1001D8B38()
{
  v2 = LODWORD(STACK[0x5C58]);
  v3 = 1534937323 * ((v1 - 240) ^ 0xCD7888C2C6EEFB47);
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  STACK[0x1D4D8] = v3;
  LODWORD(STACK[0x1D4E0]) = v3 + v0 - 946163352 + 3223;
  LODWORD(STACK[0x1D4D4]) = (v0 - 946163352) ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4C8]) = v0 - 946163352 - v3 - 877;
  STACK[0x1D4C0] = v2 ^ v3;
  v4 = v0 + 9182;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1001D8C54@<X0>(int a1@<W8>)
{
  v1 = ((STACK[0x5530] & 0x20000000 ^ 0xF1F34B3C) - 818968207) ^ ((STACK[0x5530] & 0x20000000) - 1088611219) ^ (((a1 + 649402321) ^ 0x811B14D1) + (STACK[0x5530] & 0x20000000 ^ 0xBFC7A42C));
  v2 = v1 + 108186097;
  v3 = STACK[0x5530] & 0xDFFFFFFF;
  v4 = (v2 ^ 0xB8256BAB) & (2 * (v2 & 0xBAB073C2)) ^ v2 & 0xBAB073C2;
  v5 = ((2 * (v2 ^ 0x99456E2B)) ^ 0x47EA3BD2) & (v2 ^ 0x99456E2B) ^ (2 * (v2 ^ 0x99456E2B)) & 0x23F51DE8;
  v6 = v5 ^ 0x20150429;
  v7 = (v5 ^ 0x3D41921) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x8FD477A4) & v6 ^ (4 * v6) & 0x23F51DE8;
  v9 = (v8 ^ 0x3D415A9) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x20210849)) ^ 0x3F51DE90) & (v8 ^ 0x20210849) ^ (16 * (v8 ^ 0x20210849)) & 0x23F51DE0;
  v11 = v9 ^ 0x23F51DE9 ^ (v10 ^ 0x23511C00) & (v9 << 8);
  LODWORD(STACK[0x5440]) = v1 + 108186097;
  v12 = (v1 + 108186097) ^ (2 * ((v11 << 16) & 0x23F50000 ^ v11 ^ ((v11 << 16) ^ 0x1DE90000) & (((v10 ^ 0xA40169) << 8) & 0x23F50000 ^ 0x2E00000 ^ (((v10 ^ 0xA40169) << 8) ^ 0x751D0000) & (v10 ^ 0xA40169))));
  LODWORD(STACK[0x5430]) = v12 ^ 0xFE984810;
  LODWORD(STACK[0x5420]) = v12 & 0x171C14A0;
  LODWORD(STACK[0x5410]) = -2077471093 - v1;
  v13 = STACK[0x5760];
  v14 = v13 - ((2 * v13) & 0x411628B8) + 545985628;
  v15 = v13 - ((2 * v13) & 0x848DBD46) + 1111940771;
  LODWORD(STACK[0x57C0]) = (((LODWORD(STACK[0x5620]) ^ 0x1C7F0784) + 534726146) ^ ((LODWORD(STACK[0x5620]) ^ 0x7FF0D257) + 2085655507) ^ ((LODWORD(STACK[0x5620]) ^ 0x9C702A33) - 1613730889)) - 1515787720;
  v16 = *(STACK[0x57D8] + 8 * (a1 ^ 0xD94B44E8 ^ (13471 * (a1 != -1513028351))));
  LODWORD(STACK[0x5408]) = 1385240788;
  LODWORD(STACK[0x5400]) = 1683220029;
  LODWORD(STACK[0x53F8]) = 1881374781;
  LODWORD(STACK[0x53F0]) = 1418284662;
  LODWORD(STACK[0x53E8]) = -1563563677;
  LODWORD(STACK[0x53E0]) = 1931516722;
  LODWORD(STACK[0x53D8]) = -503247811;
  LODWORD(STACK[0x53D0]) = 411439682;
  v17 = STACK[0x53C0];
  LODWORD(STACK[0x5450]) ^= LODWORD(STACK[0x53C0]) ^ v14;
  LODWORD(STACK[0x53C8]) = -2008927670;
  LODWORD(STACK[0x53C0]) = v17 ^ v15 ^ v3;
  LODWORD(STACK[0x53B8]) = 3161132;
  return v16(0x2EAD2D51E70187D4, 0x5FC4102E9580487DLL, 0x893772B00383F7DCLL, 0x9D63C3648794ABC0);
}

uint64_t sub_1001D91DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x3420]) = LODWORD(STACK[0x4E38]) | LODWORD(STACK[0x4E44]);
  LODWORD(STACK[0x32B4]) = LODWORD(STACK[0x4E50]) | LODWORD(STACK[0x4E28]);
  LODWORD(STACK[0x32C8]) = LODWORD(STACK[0x4E24]) | LODWORD(STACK[0x4E68]);
  LODWORD(STACK[0x32B8]) = LODWORD(STACK[0x4E20]) | LODWORD(STACK[0x4E78]);
  LODWORD(STACK[0x4E78]) = STACK[0x4E10] & (LODWORD(STACK[0x4E18]) ^ 0x70B059DC);
  v13 = v6 & 0x38 ^ 0x2A;
  v14 = a3 & 0x4E ^ 0x75;
  v15 = (((a3 ^ (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * (v14 ^ a3 & 0xAA)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0x4E) << 8) | (((v6 ^ (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x38) << 16);
  v16 = v10 & 0xE4 | 0xB;
  v17 = v16 ^ v10 & 0x1E;
  LODWORD(STACK[0x4E24]) = ((((v10 ^ (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * (v10 & (2 * v16) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x8B46D7) & ~v15 | v15 & 0x74B900) << 8) & 0x4F359900;
  v18 = v11 & 0xBE ^ 0xED;
  v19 = (((v12 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v12 ^ 0x24)) & 0x58 ^ 0x2C) & (v12 ^ 0x24))) ^ 0x2C) & (v12 ^ 0x24))) ^ 0x2C) & (v12 ^ 0x24))) ^ 0x2C) & (v12 ^ 0x64)))) ^ 0x2C) << 16) | (((v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * (v18 ^ v11 & 0x1A)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xBE) << 8);
  v20 = v9 & v7 ^ 0xC7;
  LODWORD(STACK[0x4E44]) = ((((v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ v8) & (2 * ((v9 ^ v8) & 6 ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x86C436) & ~v19 | v19 & 0x793B00) << 8) & 0x605C0400;
  return (*(STACK[0x57D8] + 8 * v5))(255, 21613735, 86454940, 16731286, a5, &STACK[0xEED0]);
}

uint64_t sub_1001D983C()
{
  v3 = 551690071 * ((v2 - 0x7ABE58CD706DCD90 - 2 * ((v2 - 240) & 0x8541A7328F923360)) ^ 0xF4DCF5FCC17F6037);
  LODWORD(STACK[0x1D4C8]) = ((v0 + 263925809) ^ 0xEC) - v3;
  LODWORD(STACK[0x1D4CC]) = v0 + 263925809 - v3;
  STACK[0x1D4E0] = v3 + v1;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4C4]) = v3 ^ (v0 + 263925809) ^ 0xD7A;
  STACK[0x1D4D8] = 4151854225u - v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9201)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1001D9914@<X0>(int a1@<W8>)
{
  v1 = STACK[0x5CB8];
  STACK[0xA4B8] = STACK[0x8438];
  LODWORD(STACK[0x9E98]) = 1070994972;
  STACK[0x71F8] = v1;
  LODWORD(STACK[0x755C]) = 1622156805;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1001D9980()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B2C])))(v2);
}

uint64_t sub_1001D99B0(uint64_t a1)
{
  v2 = STACK[0x57D8];
  STACK[0x6570] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 - 23375 + 2513 * (v1 ^ 0x7EE))))(a1, 38, 106);
}

uint64_t sub_1001D9A0C()
{
  v1 = *STACK[0x51F0];
  v2 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v1 + (((STACK[0x9B90] & 0x8AF787D8) + (STACK[0x9B90] & 0xFFFFFFF8 | LODWORD(STACK[0x2990])) - 280710851) & v2));
  v4 = (__ROR8__(STACK[0x9B90] & 0xFFFFFFFFFFFFFFF8, 8) + v3) ^ 0xB88801D4E1C76353;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (((2 * (v6 + v5)) & 0xC2463C836D17A35CLL) - (v6 + v5) + 0x1EDCE1BE49742E51) ^ 0x261450D4AE714626;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0xE580B17D8CC5E551;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xE1A1FD5BD155F97ALL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xDA604B0C03A2BF99;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xFA35E2CDCB3E31C7;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xD2F00CE620E5D3AELL;
  v18 = __ROR8__(v17, 8);
  v19 = __ROR8__(v16, 61);
  v20 = STACK[0x9B90] + 1;
  v21 = (((0x5E4CAD42733A0EFALL - ((v18 + (v17 ^ v19)) | 0x5E4CAD42733A0EFALL) + ((v18 + (v17 ^ v19)) | 0xA1B352BD8CC5F105)) ^ 0x55C0598C22B5847ELL) >> (8 * (STACK[0x9B90] & 7u))) ^ *STACK[0x9B90];
  v22 = *(v1 + (((v20 & 0xFFFFFFF8 ^ 0xDA7AF593) - 1614726289 + ((2 * (v20 & 0xFFFFFFF8)) & 0xB4F5EB20) + 2072) & v2));
  v23 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = (0xF720FCEC0EBFCFDELL - ((v22 + v23) | 0xF720FCEC0EBFCFDELL) + ((v22 + v23) | 0x8DF0313F1403021)) ^ 0xB05702C710875372;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = __ROR8__((((2 * (v26 + v25)) & 0xCB7C5ACAC5BF7FDELL) - (v26 + v25) + 0x1A41D29A9D204010) ^ 0x228963F07A252867, 8);
  v28 = (((2 * (v26 + v25)) & 0xCB7C5ACAC5BF7FDELL) - (v26 + v25) + 0x1A41D29A9D204010) ^ 0x228963F07A252867 ^ __ROR8__(v25, 61);
  v29 = (v27 + v28) ^ 0xE580B17D8CC5E551;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xE1A1FD5BD155F97ALL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((((2 * (v33 + v32)) & 0xCEA45A029FF24A60) - (v33 + v32) + 0x18ADD2FEB006DACFLL) ^ 0xC2CD99F2B3A46556, 8);
  v35 = (((2 * (v33 + v32)) & 0xCEA45A029FF24A60) - (v33 + v32) + 0x18ADD2FEB006DACFLL) ^ 0xC2CD99F2B3A46556 ^ __ROR8__(v32, 61);
  v36 = (v34 + v35) ^ 0xFA35E2CDCB3E31C7;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xE9A134DA5B60C5FELL) - (v38 + v37) - 0x74D09A6D2DB06300) ^ 0x59DF6974F2AA4EAELL;
  LODWORD(v20) = v21 + 16 * ((((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v20 & 7u))) ^ *v20);
  LOWORD(v20) = v20 - 47 * (((2789 * v20) >> 16) >> 1);
  LODWORD(STACK[0x7D08]) = (v20 ^ 0xFEB7F1CF) + 2 * (v20 & 0xF) + 21499458;
  return (*(STACK[0x57D8] + 8 * ((STACK[0x51B8] - 6636) ^ (27 * (v0 ^ 1)))))();
}

uint64_t sub_1001D9F38@<X0>(int a1@<W0>, int a2@<W8>)
{
  v9 = STACK[0x57D8];
  STACK[0xC668] = *(STACK[0x57D8] + 8 * v2);
  LODWORD(STACK[0xA8DC]) = v6;
  STACK[0x6F88] = v7;
  LODWORD(STACK[0xCDBC]) = v8;
  STACK[0xA140] = v5;
  LODWORD(STACK[0x995C]) = v3;
  STACK[0x9180] = v4;
  LODWORD(STACK[0x7AB4]) = a1;
  v10 = STACK[0x7ED8];
  v11 = (&STACK[0x10120] + STACK[0x7ED8]);
  STACK[0x67A8] = v11;
  STACK[0x7ED8] = v10 + 16;
  *v11 = 0;
  v11[1] = 0;
  STACK[0x7D28] = v11 + 4;
  return (*(v9 + 8 * (((3 * (a2 ^ 0x15FF)) ^ 0x1F6A) + a2)))();
}

uint64_t sub_1001D9FE0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v1);
  return (*(v2 + 8 * (v0 | 0x6307)))(v3);
}

uint64_t sub_1001DA180()
{
  v0 = STACK[0x51B8] - 15024;
  v1 = STACK[0x2378] | 0xB;
  v2 = STACK[0xC340];
  STACK[0xC378] = STACK[0xC340];
  return (*(STACK[0x57D8] + 8 * ((((v1 ^ 0xFFFFE3DF) + v0) * (v2 != 0)) ^ LODWORD(STACK[0x2374]))))();
}

uint64_t sub_1001DA260@<X0>(int a1@<W8>)
{
  v2 = 0;
  v3 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xEEC3B11C));
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v3 ^ 0xEEC3B11F) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3 ^ 0xEEC3B11F;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  v10 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  v11 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v10 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v10;
  STACK[0xEDD0] = 0;
  v12 = 16777619 * ((-289165025 * v11 + 7) ^ (-289165025 * v11)) % 7;
  v13 = 16777619 * ((-289165025 * v11 + 6) ^ (-289165025 * v11)) % 6;
  v14 = 16777619 * ((-289165025 * v11 + 5) ^ (-289165025 * v11)) % 5;
  v15 = 16777619 * ((-289165025 * v11 + 3) ^ (-289165025 * v11)) % 3;
  v16 = *(&STACK[0xEDD0] | v12);
  *(&STACK[0xEDD0] | v12) = STACK[0xEDD7];
  v17 = *(&STACK[0xEDD0] | v13);
  *(&STACK[0xEDD0] | v13) = STACK[0xEDD6];
  v18 = *(&STACK[0xEDD0] | v14);
  *(&STACK[0xEDD0] | v14) = STACK[0xEDD5];
  v19 = STACK[0xEDD0];
  LOBYTE(STACK[0xEDD0]) = STACK[0xEDD4];
  v20 = *(&STACK[0xEDD0] | v15);
  *(&STACK[0xEDD0] | v15) = STACK[0xEDD3];
  STACK[0xEDD8] = v1;
  v21 = vdup_n_s32(-289165025 * v11);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = -289165025 * v11 + 1;
  LOBYTE(STACK[0xEDD7]) = v16;
  LOBYTE(STACK[0xEDD6]) = v17;
  LOBYTE(STACK[0xEDD5]) = v18;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  LOBYTE(STACK[0xEDD4]) = v19;
  LOBYTE(STACK[0xEDD3]) = v20;
  v24 = STACK[0xEDD1];
  LOBYTE(STACK[0xEDD2]) = STACK[0xEDD0];
  LOWORD(STACK[0xEDD0]) = v24;
  v25 = vdup_n_s32(0x1000193u);
  STACK[0xEDD0] = vmla_s32(v23, STACK[0xEDD0], v25);
  v26 = STACK[0xEDD8];
  v27 = (-289165025 * STACK[0xEDD8]) ^ v11;
  v28 = vdupq_n_s32(v27);
  v29 = xmmword_1012370F0;
  v30 = xmmword_101237100;
  v31 = xmmword_101237110;
  v32 = xmmword_101237120;
  v33.i64[0] = 0x1000000010;
  v33.i64[1] = 0x1000000010;
  v34.i64[0] = 0x9393939393939393;
  v34.i64[1] = 0x9393939393939393;
  do
  {
    v35 = *(v26 + v2);
    v49.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237140), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v49.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237150), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v49.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237160), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v49.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_101237170), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v2) = vmulq_s8(vqtbl4q_s8(v49, xmmword_101237130), v34);
    v2 += 16;
    v32 = vaddq_s32(v32, v33);
    v31 = vaddq_s32(v31, v33);
    v30 = vaddq_s32(v30, v33);
    v29 = vaddq_s32(v29, v33);
  }

  while (v2 != 16);
  v36 = (v26 + 8);
  v37 = 1;
  for (i = 3; i > 2; --i)
  {
    v39 = 16777619 * ((v27 + v37) ^ v27) % v37;
    v40 = *(v26 + 8 * v39) ^ *v36;
    *v36 = v40;
    v41 = *(v26 + 8 * v39) ^ v40;
    *(v26 + 8 * v39) = v41;
    *v36-- ^= v41;
    --v37;
  }

  v42 = *(&STACK[0xEDD8] + v12);
  *(&STACK[0xEDD8] + v12) = STACK[0xEDDF];
  LOBYTE(STACK[0xEDDF]) = v42;
  v43 = *(&STACK[0xEDD8] + v13);
  *(&STACK[0xEDD8] + v13) = STACK[0xEDDE];
  LOBYTE(STACK[0xEDDE]) = v43;
  v44 = *(&STACK[0xEDD8] + v14);
  *(&STACK[0xEDD8] + v14) = STACK[0xEDDD];
  LOBYTE(STACK[0xEDDD]) = v44;
  v45 = STACK[0xEDD8];
  LOBYTE(STACK[0xEDD8]) = STACK[0xEDDC];
  LOBYTE(STACK[0xEDDC]) = v45;
  v46 = *(&STACK[0xEDD8] + v15);
  *(&STACK[0xEDD8] + v15) = STACK[0xEDDB];
  LOBYTE(STACK[0xEDDB]) = v46;
  v47 = STACK[0xEDD9];
  LOBYTE(STACK[0xEDDA]) = STACK[0xEDD8];
  LOWORD(STACK[0xEDD8]) = v47;
  STACK[0xEDD8] = vmla_s32(v23, STACK[0xEDD8], v25);
  *STACK[0x4420] = STACK[0xEDD8] ^ STACK[0xEDD0];
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1001DA6E8(int a1)
{
  v3 = LODWORD(STACK[0x4EC8]) - LODWORD(STACK[0x4ED0]);
  LODWORD(STACK[0x55A0]) = LODWORD(STACK[0x5740]) ^ ~(STACK[0x5170] & (553648128 * LODWORD(STACK[0x55A0])));
  LODWORD(STACK[0x4FD0]) = LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x51A0]) ^ v3;
  LODWORD(STACK[0x5170]) = LODWORD(STACK[0x5670]) ^ 0x3FED72DB;
  LODWORD(STACK[0x4FB8]) += (LODWORD(STACK[0x5440]) ^ 0xA8DC270A) + (LODWORD(STACK[0x4EF0]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x4FC8]) ^ 0xD8CE3CA7 ^ v2 ^ 0x4614) + 1;
  v4 = STACK[0x55E0];
  v5 = LODWORD(STACK[0x55E0]) ^ a1 ^ LODWORD(STACK[0x4F08]);
  v6 = STACK[0x4EE0] & 0x201017D1;
  LODWORD(STACK[0x4F78]) = 124184745 * LODWORD(STACK[0x4ED8]);
  LODWORD(STACK[0x4FA8]) = LODWORD(STACK[0x4F38]) | STACK[0x4F40] & 0x9DBF6DA7 ^ LODWORD(STACK[0x4F00]);
  v7 = LODWORD(STACK[0x5710]) ^ v1;
  LODWORD(STACK[0x51A0]) = LODWORD(STACK[0x5160]) ^ 0x59595959;
  LODWORD(STACK[0x4FC8]) = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x4F48]) ^ LODWORD(STACK[0x4F10]) ^ v6 ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x4F18]) ^ a1 ^ v4 ^ LODWORD(STACK[0x4F30]);
  v8 = STACK[0x56F0];
  v9 = *(STACK[0x57D8] + 8 * v2);
  LODWORD(STACK[0x5160]) = v5 ^ (4 * LODWORD(STACK[0x4F20]));
  LODWORD(STACK[0x55E0]) = v7 + 2 * LODWORD(STACK[0x4F28]);
  return v9((((v8 ^ 0x82FD29D1) + 467195097) ^ ((v8 ^ 0x15C5D37A) - 1931465100) ^ ((v8 ^ 0x916AD716) + 139405856)) + 817713553);
}

uint64_t sub_1001DAA34()
{
  STACK[0x6778] = STACK[0xBC88];
  LODWORD(STACK[0x77D4]) = STACK[0x7EF0];
  LODWORD(STACK[0x97A8]) = STACK[0xAF74];
  return (*(STACK[0x57D8] + 8 * LODWORD(STACK[0x13EC])))();
}

uint64_t sub_1001DAA94@<X0>(unsigned int a1@<W8>)
{
  v2 = 0;
  v3 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xEEC3B11C));
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v3 ^ 0xEEC3B11F) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3 ^ 0xEEC3B11F;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  v10 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  v11 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v10 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v10;
  STACK[0xEE10] = 0;
  STACK[0xEE18] = v1;
  v12 = 16777619 * ((-289165025 * v11 + 7) ^ (-289165025 * v11)) % 7;
  v13 = 16777619 * ((-289165025 * v11 + 6) ^ (-289165025 * v11)) % 6;
  v14 = 16777619 * ((-289165025 * v11 + 5) ^ (-289165025 * v11)) % 5;
  v15 = 16777619 * ((-289165025 * v11 + 3) ^ (-289165025 * v11)) % 3;
  v16 = *(&STACK[0xEE10] | v12);
  *(&STACK[0xEE10] | v12) = STACK[0xEE17];
  v17 = *(&STACK[0xEE10] | v13);
  *(&STACK[0xEE10] | v13) = STACK[0xEE16];
  v18 = *(&STACK[0xEE10] | v14);
  *(&STACK[0xEE10] | v14) = STACK[0xEE15];
  v19 = STACK[0xEE10];
  LOBYTE(STACK[0xEE10]) = STACK[0xEE14];
  v20 = *(&STACK[0xEE10] | v15);
  *(&STACK[0xEE10] | v15) = STACK[0xEE13];
  v21 = vdup_n_s32(-289165025 * v11);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = -289165025 * v11 + 1;
  LOBYTE(STACK[0xEE17]) = v16;
  LOBYTE(STACK[0xEE16]) = v17;
  LOBYTE(STACK[0xEE15]) = v18;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  LOBYTE(STACK[0xEE14]) = v19;
  LOBYTE(STACK[0xEE13]) = v20;
  v24 = STACK[0xEE11];
  LOBYTE(STACK[0xEE12]) = STACK[0xEE10];
  LOWORD(STACK[0xEE10]) = v24;
  v25 = vdup_n_s32(0x1000193u);
  STACK[0xEE10] = vmla_s32(v23, STACK[0xEE10], v25);
  v26 = STACK[0xEE18];
  v27 = (-289165025 * STACK[0xEE18]) ^ v11;
  v28 = vdupq_n_s32(v27);
  v29 = xmmword_1012370F0;
  v30 = xmmword_101237100;
  v31 = xmmword_101237110;
  v32 = xmmword_101237120;
  v33.i64[0] = 0x1000000010;
  v33.i64[1] = 0x1000000010;
  v34.i64[0] = 0x9393939393939393;
  v34.i64[1] = 0x9393939393939393;
  do
  {
    v35 = *(v26 + v2);
    v49.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237140), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v49.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237150), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v49.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237160), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v49.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_101237170), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v2) = vmulq_s8(vqtbl4q_s8(v49, xmmword_101237130), v34);
    v2 += 16;
    v32 = vaddq_s32(v32, v33);
    v31 = vaddq_s32(v31, v33);
    v30 = vaddq_s32(v30, v33);
    v29 = vaddq_s32(v29, v33);
  }

  while (v2 != 16);
  v36 = (v26 + 8);
  v37 = 1;
  for (i = 3; i > 2; --i)
  {
    v39 = 16777619 * ((v27 + v37) ^ v27) % v37;
    v40 = *(v26 + 8 * v39) ^ *v36;
    *v36 = v40;
    v41 = *(v26 + 8 * v39) ^ v40;
    *(v26 + 8 * v39) = v41;
    *v36-- ^= v41;
    --v37;
  }

  v42 = *(&STACK[0xEE18] + v12);
  *(&STACK[0xEE18] + v12) = STACK[0xEE1F];
  LOBYTE(STACK[0xEE1F]) = v42;
  v43 = *(&STACK[0xEE18] + v13);
  *(&STACK[0xEE18] + v13) = STACK[0xEE1E];
  LOBYTE(STACK[0xEE1E]) = v43;
  v44 = *(&STACK[0xEE18] + v14);
  *(&STACK[0xEE18] + v14) = STACK[0xEE1D];
  LOBYTE(STACK[0xEE1D]) = v44;
  v45 = STACK[0xEE18];
  LOBYTE(STACK[0xEE18]) = STACK[0xEE1C];
  LOBYTE(STACK[0xEE1C]) = v45;
  v46 = *(&STACK[0xEE18] + v15);
  *(&STACK[0xEE18] + v15) = STACK[0xEE1B];
  LOBYTE(STACK[0xEE1B]) = v46;
  v47 = STACK[0xEE19];
  LOBYTE(STACK[0xEE1A]) = STACK[0xEE18];
  LOWORD(STACK[0xEE18]) = v47;
  STACK[0xEE18] = vmla_s32(v23, STACK[0xEE18], v25);
  *STACK[0x4420] = STACK[0xEE18] ^ STACK[0xEE10];
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1001DB010@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x8180];
  v3 = STACK[0x9578];
  *v2 = a1;
  v2[1] = v3;
  v2[4] = 0;
  v2[5] = 0;
  *(STACK[0x4D10] + 4) += ((v1 - 8591) | 0x2509) ^ 0x2D9A;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1001DB06C()
{
  v2 = *(v0 + 3064);
  v3 = *(v0 + 3076);
  v4 = *(v0 + 3080);
  v5 = *(v0 + 3099);
  v6 = *(v0 + 3100);
  v7 = *(v0 + 3104);
  v8 = *(v0 + 3124);
  v9 = *(v0 + 3140);
  LODWORD(STACK[0x57C0]) = *(v0 + 3160);
  return (*(STACK[0x57D8] + 8 * v1))(v2, v4, v3, v8, v6, v5, v7, v9);
}

uint64_t sub_1001DB1E8@<X0>(int a1@<W8>)
{
  *v1 = a1 + 1;
  STACK[0x1D4C8] = 0;
  LODWORD(STACK[0x1D4C0]) = (v2 + 1717140968) ^ (1964904101 * ((((v3 - 240) | 0x49C251A9) + (~(v3 - 240) | 0xB63DAE56)) ^ 0xB3E0BA2C));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 1533)))(v3 - 240);
  LODWORD(STACK[0x744C]) = 0;
  v6 = *(STACK[0x4D10] + 16) != 14 * (v2 ^ 0x72DB) - 16394;
  return (*(v4 + 8 * (((2 * v6) | (4 * v6)) ^ v2)))(v5);
}

uint64_t sub_1001DB2CC()
{
  *(v0 + 12) = STACK[0x8F1C];
  *(v0 + 16) = STACK[0xC390];
  *(v0 + 24) = STACK[0x8F18];
  *(v0 + 216) = STACK[0xA900];
  *(v0 + 224) = STACK[0xBD24];
  v2 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 - 1569404569 + v1 + 1569403247 + 3327)))(v0 + 228);
}

uint64_t sub_1001DB3A0()
{
  LODWORD(STACK[0x1D4C0]) = STACK[0x51B8] - 289235981 * ((((v1 - 240) | 0xEE8FA1C2) - (v1 - 240) + ((v1 - 240) & 0x11705E38)) ^ 0x690D71FD) - 1555;
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x24D1)))(v1 - 240);
  LODWORD(STACK[0xCC08]) = STACK[0x1D4C4];
  v3 = STACK[0x7ED8];
  v4 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x73D8] = v4;
  STACK[0x7ED8] = v3 + ((2 * (v0 ^ 0x2A92u)) ^ 0x58D6);
  v5 = (*(v2 + 8 * (v0 ^ 0x7AE2)))(v4, 0, 120);
  STACK[0x9A78] = v4;
  return (*(v2 + 8 * (v0 + 10395)))(v5);
}

uint64_t sub_1001DB5C0()
{
  v2 = *v0;
  STACK[0x9200] = *v0;
  return (*(STACK[0x57D8] + 8 * (((v2 == 0) * (((v1 - 1443170138) & 0x5604AFBF ^ 0xFFFFCD32) + v1 - 5657)) ^ (v1 - 88))))();
}

uint64_t sub_1001DB630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x5E38];
  v8 = STACK[0x57D8];
  STACK[0x7D00] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3CA0]));
  return (*(v8 + 8 * SLODWORD(STACK[0x3C9C])))(a1, a2, a3, a4, 0xB057743BD1A8F5BCLL, a6, a7, v7);
}

uint64_t sub_1001DB6B4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xA1D8] = 0;
  return (*(v1 + 8 * (v0 - 18131)))(v2);
}

uint64_t sub_1001DB710()
{
  v1 = STACK[0x57D8];
  STACK[0x8690] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x59B7 ^ (v0 + 413713271) & 0xE75776FC)))();
}

uint64_t sub_1001DB778()
{
  v2 = STACK[0x9AB0];
  STACK[0xE880] = v1;
  STACK[0xE888] = v2;
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 > 9) * ((3 * (v0 ^ 0x3CBF)) ^ (v0 - 2073404619) & 0x7B9566FB ^ 0x7641)) ^ v0)))();
}

uint64_t sub_1001DB7E8@<X0>(int a1@<W8>)
{
  LOBYTE(STACK[0xDB2F]) = v1;
  STACK[0xDB20] = v2;
  LODWORD(STACK[0xDB1C]) = v3;
  return (*(STACK[0x57D8] + 8 * ((11 * (v3 == ((a1 + 1055441704) & 0xC1177BFF ^ 0xF7778F14) + ((a1 - 7095) | 0x5006))) ^ a1)))();
}

uint64_t sub_1001DB980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v6 = 379 * (STACK[0x51B8] ^ 0x5863);
  v7 = STACK[0x51B8] - 20645;
  LODWORD(STACK[0xA9AC]) = a6;
  return (*(STACK[0x57D8] + 8 * ((v6 - 7969) ^ v7)))(a1, a2, a3, a4, a5, STACK[0x7F58]);
}

uint64_t sub_1001DBA2C@<X0>(int a1@<W8>)
{
  if (STACK[0x57B0])
  {
    v1 = STACK[0x53F8];
  }

  else
  {
    v1 = STACK[0x53C0];
  }

  v2 = (STACK[0x57B0] & 2) == 0;
  v3 = STACK[0x55C0];
  if ((STACK[0x57B0] & 2) == 0)
  {
    v3 = STACK[0x5530];
  }

  LODWORD(STACK[0x53A8]) = v3;
  v4 = STACK[0x5640];
  if (v2)
  {
    v4 = STACK[0x5630];
  }

  LODWORD(STACK[0x5640]) = v4;
  if (v2)
  {
    v5 = v1;
  }

  else
  {
    v5 = STACK[0x5210];
  }

  LODWORD(STACK[0x52B0]) = v5;
  v6 = STACK[0x55B0];
  if (v2)
  {
    v6 = STACK[0x52E0];
  }

  LODWORD(STACK[0x5630]) = v6;
  v7 = STACK[0x53B8];
  if (!v2)
  {
    v7 = STACK[0x53A0];
  }

  LODWORD(STACK[0x5530]) = v7;
  v8 = STACK[0x55F0];
  if (!v2)
  {
    v8 = STACK[0x55E0];
  }

  LODWORD(STACK[0x5250]) = v8;
  v9 = STACK[0x52D8];
  if (!v2)
  {
    v9 = STACK[0x52D0];
  }

  LODWORD(STACK[0x52E0]) = v9;
  if (STACK[0x5500])
  {
    v10 = STACK[0x5510];
  }

  else
  {
    v10 = STACK[0x5520];
  }

  v11 = STACK[0x5238];
  if (STACK[0x5500])
  {
    v11 = STACK[0x5240];
  }

  v12 = (STACK[0x53C8] & 2) == 0;
  v13 = STACK[0x56D0];
  LODWORD(STACK[0x57C0]) = v10;
  if (v12)
  {
    v13 = v10;
  }

  LODWORD(STACK[0x52B8]) = v13;
  v14 = STACK[0x52C0];
  if (!v12)
  {
    v14 = STACK[0x5218];
  }

  LODWORD(STACK[0x52C0]) = v14;
  v15 = STACK[0x54E0];
  if (v12)
  {
    v15 = STACK[0x52C8];
  }

  LODWORD(STACK[0x5520]) = v15;
  v16 = STACK[0x5228];
  if (v12)
  {
    v16 = STACK[0x5220];
  }

  LODWORD(STACK[0x52D0]) = v16;
  v17 = STACK[0x5560];
  LODWORD(STACK[0x55C0]) = v11;
  if (!v12)
  {
    v17 = v11;
  }

  LODWORD(STACK[0x52D8]) = v17;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1001DBE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x51B8] - 2804;
  v7 = STACK[0xBD78];
  v8 = STACK[0x57D8];
  v9 = STACK[0x3D18];
  STACK[0x5F68] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3D18]));
  return (*(v8 + 8 * (v6 ^ 0x6B72 ^ v9)))(a1, a6, a3, a4, a5, a6, 395, v7);
}

uint64_t sub_1001DBFF0@<X0>(int a1@<W6>, int a2@<W7>, int a3@<W8>)
{
  v7 = *(v5 + 1368);
  v8 = a1 + 5621 * (*(v7 + (5621 * v3 + 26193860) % 0x1808u) + (a3 ^ 0x3D));
  LOBYTE(v8) = *(v7 + v8 - 6152 * (((v8 * v4) >> 32) >> 7));
  v9 = v8 & 0x58 ^ 0x52;
  *(*(v5 + 1360) + 4 * ((a2 + 6419 * v3) % 0x2240u)) = (v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ (v6 - 40);
  return (*(STACK[0x57D8] + 8 * ((23798 * (v3 == 255)) ^ a3)))();
}

uint64_t sub_1001DC0F0()
{
  v4 = v1 < 0xE31D3105;
  if (v4 == (v2 - 556112795) < 0xE31D3105)
  {
    v4 = v2 - 556112795 < v1;
  }

  return (*(STACK[0x57D8] + 8 * (((v3 ^ v0) * v4) ^ v3)))();
}

uint64_t sub_1001DC164()
{
  STACK[0xA9C0] = *STACK[0x8AC8];
  LODWORD(STACK[0xCD0C]) = *STACK[0x5CB0];
  STACK[0x80A0] = *STACK[0xA320];
  LODWORD(STACK[0x70AC]) = *STACK[0x7340];
  v1 = STACK[0x7ED8];
  STACK[0xBC98] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v1 + ((v0 + 17972) ^ 0x5179);
  STACK[0x61B0] = 0;
  LODWORD(STACK[0x944C]) = 103679699;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 + 2545)))();
}

uint64_t sub_1001DC29C()
{
  *(v2 + 600) = (v1 - 1723139400) ^ (((125994288 - (v3 | 0x7828530) + (v3 | 0xF87D7ACF)) ^ 0x1EC621C9) * v0);
  *(v2 + 592) = 0;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 + 3549)))(v4 - 240);
  v8 = *STACK[0x4270] != (((v1 - 10212) | 0x1880) ^ 0xFFFFE704) + 11 * (v1 ^ 0x680C) || *STACK[0x4420] == 0;
  return (*(v5 + 8 * ((49 * v8) ^ v1)))(v6);
}

uint64_t sub_1001DC3C0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, unsigned __int8 a7, int a8)
{
  LODWORD(STACK[0x5630]) = STACK[0x5630] & 0xFF00FFFF | (a7 << 16);
  LODWORD(STACK[0x4DE0]) = LODWORD(STACK[0x5388]) | (LODWORD(STACK[0x5460]) << 8);
  LODWORD(STACK[0x4DA8]) = LODWORD(STACK[0x54B0]) + LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x4E24]) = LODWORD(STACK[0x5480]) + LODWORD(STACK[0x54A0]);
  LODWORD(STACK[0x4F88]) = v13 + LODWORD(STACK[0x5440]);
  v22 = LODWORD(STACK[0x53E0]) + v20;
  LODWORD(STACK[0x4F20]) = LODWORD(STACK[0x5398]) | (LODWORD(STACK[0x5430]) << 8);
  LODWORD(STACK[0x4F00]) = v21 | (LODWORD(STACK[0x5420]) << 8);
  LODWORD(STACK[0x4F48]) = v9 | (LODWORD(STACK[0x5408]) << 8);
  v23 = LODWORD(STACK[0x5640]) - 15019;
  v24 = (v10 | (a3 << 16)) + LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x5440]) = v11;
  LODWORD(STACK[0x5430]) = (v12 ^ 0xE991E251) & STACK[0x53F0];
  LODWORD(STACK[0x5640]) = STACK[0x53D0] & (v17 ^ 0x9527B8C6);
  LODWORD(STACK[0x5408]) = ((a5 | (v8 << 16)) + v14) << 8;
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5410]) << 8;
  LODWORD(STACK[0x5420]) = (v18 ^ 0x79E0CECE) & STACK[0x53C8];
  LODWORD(STACK[0x5460]) = ((v19 | (v16 << 16)) + LODWORD(STACK[0x53A0])) << 8;
  LODWORD(STACK[0x54A0]) = LODWORD(STACK[0x5400]) << 8;
  LODWORD(STACK[0x54B0]) = STACK[0x53B8] & (v15 ^ 0x9993C895);
  LODWORD(STACK[0x5410]) = (LODWORD(STACK[0x53B0]) ^ 0x64494D66) & STACK[0x53A8];
  v25 = *(STACK[0x57D8] + 8 * v23);
  LODWORD(STACK[0x4E90]) = a8 & (a4 ^ 0xCAE75589);
  LODWORD(STACK[0x4F80]) = LODWORD(STACK[0x5620]) | (v24 << 8);
  LODWORD(STACK[0x5480]) = LODWORD(STACK[0x5390]) | (v22 << 16);
  return v25(a1, a2, 26193860);
}

uint64_t sub_1001DC6DC()
{
  v6 = ((STACK[0x5038] ^ 0xFC4BB14DDA631A71 | 0xB11EB14756E47C2FLL) - (STACK[0x5038] ^ 0xFC4BB14DDA631A71 | 0x4EE14EB8A91B83D0) + 0x4EE14EB8A91B83D0) ^ 0xF5DD01DE6D40050DLL;
  v7 = __ROR8__(v6, 8);
  v8 = v6 ^ STACK[0x5040];
  v9 = (v7 + v8) ^ 0x38C8B16AE7056877;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0xAA46CA7A938B49BCLL) + 0x5523653D49C5A4DELL) ^ 0xB0A3D440C500418FLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xE1A1FD5BD155F97ALL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) & 0x7D04DD19D84C5C7CLL) - (v16 + v15) - 0x3E826E8CEC262E3FLL) ^ 0x1B1DDA7F107B6E58;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xFA35E2CDCB3E31C7;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((((2 * (v21 + v20)) | 0xC8384B81A0AF1306) - (v21 + v20) + 0x1BE3DA3F2FA8767DLL) ^ 0x36EC2926F0B25A2DLL, 8) + ((((2 * (v21 + v20)) | 0xC8384B81A0AF1306) - (v21 + v20) + 0x1BE3DA3F2FA8767DLL) ^ 0x36EC2926F0B25A2DLL ^ __ROR8__(v20, 61));
  v23 = STACK[0x5158];
  LODWORD(STACK[0x5110]) = 2 * STACK[0x5158];
  v24 = *(STACK[0x5200] + ((((v23 ^ 0x1070B6B7) + 1774944867 + ((2 * v23) & 0x20E16D60)) & STACK[0x5208]) & 0xFFFFFFFFFFFFFFF8));
  v25 = (((2 * (v24 + STACK[0x5258])) & 0xF47C49190DBE8E30) - (v24 + STACK[0x5258]) - 0x7A3E248C86DF4719) ^ 0x3D49DAA798E7DBB4;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x38C8B16AE7056877;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xE580B17D8CC5E551;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = (v30 + v31 - ((2 * (v30 + v31)) & 0x555A8311D375F762) - 0x5552BE771645044FLL) ^ 0x4B0CBCD338EF02CBLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) | 0x2B3D924F1A67FBD2) - (v34 + v33) - 0x159EC9278D33FDE9) ^ 0xCFFE822B8E914270;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xFA35E2CDCB3E31C7;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0x34F89A79DD915318) - 0x6583B2C311375674) ^ 0x488C41DACE2D7A22;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = *(STACK[0x56F0] + (STACK[0x5190] & v2));
  v44 = (v43 + STACK[0x5440]) ^ 0xB88801D4E1C76353;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x38C8B16AE7056877;
  v47 = __ROR8__(v46, 8);
  v48 = v46 ^ __ROR8__(v45, 61);
  v49 = (((2 * (v47 + v48)) | 0x9B711149F931E712) - (v47 + v48) + 0x3247775B03670C77) ^ 0x283839D9705D16D8;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xE1A1FD5BD155F97ALL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - ((2 * (v53 + v52)) & 0x3BFEB7CCD80C434CLL) - 0x6200A41993F9DE5ALL) ^ 0x479F10EA6FA49E3FLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((v56 + v55) & 0xC03245C92E3A4AD6 ^ 0x803005092C0A0252) + ((v56 + v55) ^ 0x744FEAD602B0D98CLL) - (((v56 + v55) ^ 0x744FEAD602B0D98CLL) & 0xC03245C92E3A4AD6)) ^ 0x4E484DD2E7B4A29DLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (((2 * (v59 + v58)) & 0xB8372D5BF9D3B154) - (v59 + v58) + 0x23E4695203162755) ^ 0xF11465B423F3F4FBLL;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = *(STACK[0x5250] + (LODWORD(STACK[0x5170]) & (STACK[0x5298] + 51108078 - (STACK[0x5298] & 0x88CF96C8) + (STACK[0x5298] | 0x77306933) - 2311)));
  v64 = (((v63 + STACK[0x52C0]) | 0x5DC32A95B5DA1E6FLL) - ((v63 + STACK[0x52C0]) | 0xA23CD56A4A25E190) - 0x5DC32A95B5DA1E70) ^ 0xE54B2B41541D7D3CLL;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x38C8B16AE7056877;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (v68 + v67 - ((2 * (v68 + v67)) & 0x98F1845F83B37B58) + 0x4C78C22FC1D9BDACLL) ^ 0xA9F873524D1C58FDLL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xE1A1FD5BD155F97ALL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((v73 + v72) ^ 0x95A352C55442F03DLL | 0xEC81A9A8CB7D9B2DLL) - ((v73 + v72) ^ 0x95A352C55442F03DLL | 0x137E5657348264D2) + 0x137E5657348264D2) ^ 0xA342B0619C9DD489;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xFA35E2CDCB3E31C7;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ v1;
  v79 = __ROR8__(v78, 8) + (v78 ^ __ROR8__(v77, 61));
  v80 = *(STACK[0x5268] + (LODWORD(STACK[0x50B0]) & ((STACK[0x5260] | 0x610009E7) + 2050767130 + (STACK[0x5260] | 0x9EFFF618) + 1)));
  v81 = (v80 + STACK[0x5288]) ^ 0xB88801D4E1C76353;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x38C8B16AE7056877;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xE580B17D8CC5E551;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) | 0x19A5710DAB9F7C0ELL) - (v87 + v86) - 0xCD2B886D5CFBE07) ^ 0xED7345DD049A477DLL;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) & 0x48DFD206FB1ECE26) - (v90 + v89) - 0x246FE9037D8F6714) ^ 0x1F05DF081D22775;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (v93 + v92 - ((2 * (v93 + v92)) & 0xABCE9BD88E72EAB2) + 0x55E74DEC47397559) ^ 0xAFD2AF218C07449ELL;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (v96 + v95 - ((2 * (v96 + v95)) & 0xDEA968541BEA2BEALL) + 0x6F54B42A0DF515F5) ^ 0xBDA4B8CC2D10C65BLL;
  v98 = (((2 * v4) | 0x95DE8C1A78B5B85CLL) - v4 + 0x3510B9F2C3A523D2) ^ 0x726747D9DD9DBF7DLL;
  v99 = __ROR8__(v98, 8);
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ (((v22 - ((2 * v22) & 0x3021E99742011C5ELL) + 0x1810F4CBA1008E2FLL) ^ 0xEC63FFFA0F70FB54) >> STACK[0x57B0]);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x56E0]) ^ (((v42 + v41) ^ 0xF4730B31AE70757BLL) >> STACK[0x5670]);
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x5600]) ^ (((v62 + v61) ^ 0xF4730B31AE70757BLL) >> STACK[0x5450]);
  LODWORD(STACK[0x5020]) = LODWORD(STACK[0x5348]) ^ (((((2 * v79) & 0x75EB82F95D8946AALL) - v79 - 0x3AF5C17CAEC4A356) ^ 0x317935B2FF4B29D1) >> STACK[0x5328]);
  LODWORD(STACK[0x54B0]) = LODWORD(STACK[0x5198]) ^ (((__ROR8__(v97, 8) + (v97 ^ __ROR8__(v95, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5358]);
  v100 = (((v99 + (v98 ^ v5)) | 0xD2E0AA2F0BE6D16) - ((v99 + (v98 ^ v5)) | 0xF2D1F55D0F4192E9) - 0xD2E0AA2F0BE6D17) ^ 0x35E6BBC817BB0561;
  v101 = v100 ^ __ROR8__(v98 ^ v5, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) & 0x93A1AFFB50478EAELL) - (v102 + v101) - 0x49D0D7FDA823C758) ^ 0x53AF997FDB19DDF9;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xE1A1FD5BD155F97ALL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * (v107 + v106)) | 0x71190AB40D95FC64) - (v107 + v106) - 0x388C855A06CAFE32) ^ 0xE2ECCE56056841ABLL;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((v110 + v109) | 0x928F04EDB2BC7F78) - ((v110 + v109) | 0x6D70FB124D438087) + 0x6D70FB124D438087) ^ 0x68BAE62079824EBFLL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ v1;
  v114 = __ROR8__(v113, 8);
  v115 = __ROR8__(v112, 61);
  v116 = (v0 - 2051281020) & 0x7A445FE1;
  v117 = STACK[0x5180];
  LODWORD(STACK[0x5220]) = LODWORD(STACK[0x51C0]) ^ (((((v114 + (v113 ^ v115)) | 0xCED6DFC35A9343E5) - ((v114 + (v113 ^ v115)) | 0x3129203CA56CBC1ALL) + 0x3129203CA56CBC1ALL) ^ 0x3AA5D4F2F4E3369ELL) >> STACK[0x51A8]);
  v118 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v119 = v118 & 0xFFFFFFF8;
  LODWORD(v79) = 2 * (v118 & 0xFFFFFFF8);
  v120 = *(v117 + (v3 & ((((v79 & 0xC52CC8E0) + (v118 & 0xFFFFFFF8 ^ 0xE2966472)) & 0xFFFFFFF8) - 1750739800)));
  v121 = __ROR8__(v118 & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(v114) = *v118;
  v122 = (v120 + v121) ^ 0xB88801D4E1C76353;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0x38C8B16AE7056877;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v127 = __ROR8__((((2 * (v126 + v125)) & 0x30DF3F52448EC14CLL) - (v126 + v125) + 0x67906056DDB89F59) ^ 0x8210D12B517D7A08, 8);
  v128 = (((2 * (v126 + v125)) & 0x30DF3F52448EC14CLL) - (v126 + v125) + 0x67906056DDB89F59) ^ 0x8210D12B517D7A08 ^ __ROR8__(v125, 61);
  v129 = (v127 + v128) ^ 0xE1A1FD5BD155F97ALL;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0xDA604B0C03A2BF99;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0xFA35E2CDCB3E31C7;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((2 * (v135 + v134)) | 0xEAAA105356B3207CLL) - (v135 + v134) + 0xAAAF7D654A66FC2) ^ 0x27A504CF8BBC4390;
  v137 = (__ROR8__(v136, 8) + (v136 ^ __ROR8__(v134, 61))) ^ 0xF4730B31AE70757BLL;
  LOBYTE(v134) = 8 * (v118 & 7);
  v138 = v114 ^ 0xCDu ^ (v137 >> v134);
  v139 = STACK[0x57A0];
  v140 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((v119 ^ 0xCDD30908) - 1402392558 + (v79 & 0x9BA61210)) & 0xFFFFFFF8));
  v141 = (v140 + v121) ^ 0xB88801D4E1C76353;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0x38C8B16AE7056877;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0xE580B17D8CC5E551;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (((2 * (v147 + v146)) & 0x999C9DBED145C856) - (v147 + v146) - 0x4CCE4EDF68A2E42CLL) ^ 0x52904C7B4608E2AELL;
  v149 = v148 ^ __ROR8__(v146, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ 0xDA604B0C03A2BF99;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ 0xFA35E2CDCB3E31C7;
  v153 = v152 ^ __ROR8__(v151, 61);
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 60;
  v154 = (__ROR8__(v152, 8) + v153) ^ v1;
  LODWORD(v138) = *(v139 + 123914 + (((v138 ^ 0x79C94397412C1EBLL) - 0x79C94397412C1EBLL) ^ ((v138 ^ 0x478127D6C8721B2) - 0x478127D6C8721B2) ^ ((v138 ^ 0x3E486441895E061) - 0x3E486441895E061)) + 1595) ^ v114 ^ (((__ROR8__(v154, 8) + (v154 ^ __ROR8__(v153, 61))) ^ 0xF4730B31AE70757BLL) >> v134);
  LODWORD(STACK[0x52F0]) = -78 - 85 * (((v138 ^ 0x14) - 100) ^ ((v138 ^ 4) - 116) ^ ((v138 ^ 0xFFFFFFA9) + 39));
  LODWORD(v114) = LODWORD(STACK[0x53D0]) != 60;
  STACK[0x52F8] = 60;
  LODWORD(STACK[0x5338]) = 185;
  return (*(STACK[0x57D8] + 8 * (v116 + 8 * v114)))();
}

uint64_t sub_1001DDB74()
{
  v2 = STACK[0x51B8];
  v3 = 551690071 * ((~(v1 - 240) & 0x5590E75E2314AELL | (v1 - 240) & 0xFFAA6F18A1DCEB51) ^ 0x71C8C22910CE47F9);
  LODWORD(STACK[0x1D4C0]) = (STACK[0x51B8] - 1079089617) ^ v3;
  STACK[0x1D4E0] = v3 + 4151854225u;
  STACK[0x1D4D8] = v0 - v3;
  v4 = LODWORD(STACK[0xEA4]) - v3;
  LODWORD(STACK[0x1D4C8]) = v4 + 10;
  LODWORD(STACK[0x1D4C4]) = v3 ^ LODWORD(STACK[0xEA0]);
  LODWORD(STACK[0x1D4CC]) = v4;
  LODWORD(STACK[0x1D4D0]) = v3;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v2 + 9201)))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1001DDE0C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = STACK[0x51B8];
  v8 = 1978732275 * (v3 - (*(*v4 + (*v6 & a2)) & 0x7FFFFFFF ^ a3)) - 1573924888;
  v9 = (STACK[0x51B8] + 1830277819) ^ 0x13;
  v10 = 551690071 * ((((v5 - 240) | 0xD839E3872B1DB40DLL) - (v5 - 240) + ((v5 - 240) & 0x27C61C78D4E24BF0)) ^ 0xA9A4B14965F0E75ALL);
  LODWORD(STACK[0x1D4CC]) = STACK[0x51B8] + 1830277819 - v10;
  STACK[0x1D4D8] = v8 - v10;
  LODWORD(STACK[0x1D4D0]) = v10;
  LODWORD(STACK[0x1D4C0]) = (v7 - 1079089617) ^ v10;
  LODWORD(STACK[0x1D4C4]) = v10 ^ (v7 + 1830277819) ^ 0xF4B;
  LODWORD(STACK[0x1D4C8]) = v9 - v10;
  STACK[0x1D4E0] = v10 + 2721042409u;
  v11 = STACK[0x57D8];
  v12 = (*(STACK[0x57D8] + 8 * (v7 ^ 0x2411)))(v5 - 240);
  return (*(v11 + 8 * SLODWORD(STACK[0x1D4D4])))(v12);
}

uint64_t sub_1001DE15C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v13 = (((2 * (a2 - 787261481)) & 0x28A6) + ((a2 - 787261481) ^ 0x1453)) * v7;
  *(v6 + v13 - ((((v13 >> 3) * v10) >> 32) >> 7) * v12) = *(v5 + 4 * (a2 * v11 + 1858608133 - ((((a2 * v11 + 1858608133) * v9) >> 32) >> 12) * v8)) ^ 0x4D;
  return (*(STACK[0x57D8] + 8 * ((473 * (((v4 + 10916) ^ 0x45A3) + a2 != a4 + 2361)) ^ v4)))();
}

uint64_t sub_1001DE1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (v5 + 19299) | 0x612;
  v8 = STACK[0xDCB8];
  v9 = (*(STACK[0xDCB8] + (5621 * v6 + 26193860) % 0x1808u) - 76);
  LODWORD(STACK[0x5780]) = v7;
  v10 = *(v8 + (v9 * (v7 - 22589) + 5789630) % 0x1808u);
  LODWORD(STACK[0x5670]) = v6;
  v11 = (6419 * v6 + 36215998) % 0x2240u;
  v12 = STACK[0xDCB0];
  STACK[0x5720] = v11;
  STACK[0x5710] = v12;
  *(v12 + 4 * v11) = 1111003110;
  LODWORD(v8) = v10 & 0x30 | 0x46;
  LODWORD(STACK[0x5700]) = v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ 0x30;
  return (*(STACK[0x57D8] + 8 * v5))(a1, a2, a3, a4, a5, 0);
}

uint64_t sub_1001DE328@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, uint64_t a3@<X4>, _BYTE *a4@<X5>, uint64_t a5@<X8>)
{
  v21 = *STACK[0x868] & 0xFFFFFFFFFFFFFFF8;
  v22 = *(*v11 + (((v7 & 0x31471748 | 0xCEB8E8B6) - 103642729 + (v7 & 0xFFFFFFF8 | LODWORD(STACK[0x880])) + 1) & v21));
  v23 = v10 + v9;
  v24 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v16 | (2 * (v22 + v24))) - (v22 + v24) + v17) ^ v15;
  v26 = v25 ^ __ROR8__(v22, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v13;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v6;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - (v14 & (2 * (v31 + v30))) + v19) ^ v18;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (0xB73D9B72B74C50B6 - ((v34 + v33) | 0xB73D9B72B74C50B6) + ((v34 + v33) | v5)) ^ 0x8F1FAD7B84F61868;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = *(*v11 + (((v23 & 0xFFFFFFF8) - 103642730) & v21));
  v39 = (((2 * (v37 + v36)) & 0x668009F5347BE9E4) - (v37 + v36) + a5) ^ a3;
  v40 = v38 + __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = v39 ^ __ROR8__(v36, 61);
  v42 = (((2 * v40) | 0x41B47A46D5E613AELL) - v40 - 0x20DA3D236AF309D7) ^ 0xD4CC6C6AF5AD35B0;
  v43 = v42 ^ __ROR8__(v38, 61);
  v44 = __ROR8__(v42, 8);
  v45 = __ROR8__(v39, 8) + v41;
  v46 = (0xB4919D8C367245BLL - (v45 | 0xB4919D8C367245BLL) + (v45 | v8)) ^ v12;
  v47 = (0xFCE18777A8DDE8E2 - ((v44 + v43) | 0xFCE18777A8DDE8E2) + ((v44 + v43) | 0x31E78885722171DLL)) ^ 0x162C3A666BD27D54;
  v48 = v47 ^ __ROR8__(v43, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v6;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v46, 8) + (v46 ^ __ROR8__(v41, 61));
  v52 = (__ROR8__(v49, 8) + v50) ^ 0xE5AF1AB32EBD3CDDLL;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8) + v53;
  v55 = (v54 - ((2 * v54) & 0x254F5DE9CAC596DALL) - 0x6D58510B1A9D3493) ^ 0x557A670229277C4CLL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xA82620A559D2DA78;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x5F8DEC3EA3980A1BLL;
  *v23 = ((v51 ^ v20) >> (a1 & 0x38)) ^ (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ v20) >> (8 * (v23 & 7u))) ^ *a4;
  return (*(STACK[0x8B0] + 8 * ((45 * (a2 < STACK[0x890])) ^ LODWORD(STACK[0x8A0]))))(a1 + 8);
}

uint64_t sub_1001DE684@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W5>, unsigned __int8 a5@<W6>, int a6@<W8>)
{
  LODWORD(STACK[0x3320]) = LODWORD(STACK[0x4E20]) | LODWORD(STACK[0x4E24]);
  LODWORD(STACK[0x3FC8]) = LODWORD(STACK[0x4E44]) | LODWORD(STACK[0x4E68]);
  LODWORD(STACK[0x4E80]) = ((v9 + 859807608) ^ a6) & a2;
  LODWORD(STACK[0x4EF8]) = a3 & (a4 ^ 0xD7BDB505);
  LODWORD(STACK[0x4E44]) = v7 & (v8 ^ 0xB6DF8BA1);
  LODWORD(STACK[0x4E28]) = a1 & (a5 ^ 0xC9A0AE8D);
  v10 = *(STACK[0x57D8] + 8 * v9);
  LODWORD(STACK[0x4E68]) = (v6 << 8) ^ 0x57E78CFF;
  return v10();
}

uint64_t sub_1001DE7A4(unsigned int a1)
{
  v2 = (a1 + 1019741323) & 0x9A156FBD;
  v3 = *(v1 - 256);
  if ((*(v1 - 140) & 2) != 0)
  {
    v3 = STACK[0x420];
  }

  LODWORD(STACK[0x420]) = v3;
  LODWORD(STACK[0x364]) = 16843009 * LODWORD(STACK[0x43C]);
  LODWORD(STACK[0x3FC]) ^= v2 - 1814168221;
  v4 = 16843009 * LODWORD(STACK[0x3C0]);
  *(v1 - 256) = v4;
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0x2F4]) ^ v4;
  LODWORD(STACK[0x3C0]) = LODWORD(STACK[0x318]) ^ 0x2E2E2E2E;
  return (*(*(v1 - 120) + 8 * ((11516 * (a1 > 0xA96D90A)) ^ (a1 - 690136883))))(v2 - 20416 - 0x5656565656566DD4, 268336206, 4189626705, 0xB6774E500000000);
}

uint64_t sub_1001DE990()
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
  STACK[0xEF20] = 0;
  STACK[0xEF28] = v0;
  v10 = 16777619 * ((-548819963 * v9 + 7) ^ (-548819963 * v9)) % 7;
  v11 = *(&STACK[0xEF20] | v10);
  *(&STACK[0xEF20] | v10) = 0;
  LOBYTE(STACK[0xEF27]) = v11;
  v12 = 16777619 * ((-548819963 * v9 + 6) ^ (-548819963 * v9)) % 6;
  v13 = *(&STACK[0xEF20] | v12);
  *(&STACK[0xEF20] | v12) = STACK[0xEF26];
  LOBYTE(STACK[0xEF26]) = v13;
  v14 = 16777619 * ((-548819963 * v9 + 5) ^ (-548819963 * v9)) % 5;
  v15 = *(&STACK[0xEF20] | v14);
  *(&STACK[0xEF20] | v14) = STACK[0xEF25];
  LOBYTE(STACK[0xEF25]) = v15;
  v16 = STACK[0xEF20];
  LOBYTE(STACK[0xEF20]) = STACK[0xEF24];
  LOBYTE(STACK[0xEF24]) = v16;
  v17 = 16777619 * ((-548819963 * v9 + 3) ^ (-548819963 * v9)) % 3;
  v18 = *(&STACK[0xEF20] | v17);
  *(&STACK[0xEF20] | v17) = STACK[0xEF23];
  LOBYTE(STACK[0xEF23]) = v18;
  v19 = STACK[0xEF21];
  LOBYTE(STACK[0xEF22]) = STACK[0xEF20];
  LOWORD(STACK[0xEF20]) = v19;
  v20 = vdup_n_s32(-548819963 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -548819963 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEF20] = vmla_s32(v22, STACK[0xEF20], vdup_n_s32(0x1000193u));
  STACK[0xEF28] ^= STACK[0xEF20];
  STACK[0xEF28] = vmul_s32(vsub_s32(STACK[0xEF28], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEF2A];
  LOWORD(STACK[0xEF29]) = STACK[0xEF28];
  LOBYTE(STACK[0xEF28]) = v23;
  v24 = (&STACK[0xEF28] | v17);
  v25 = *v24;
  *v24 = STACK[0xEF2B];
  LOBYTE(STACK[0xEF2B]) = v25;
  LOBYTE(v24) = STACK[0xEF28];
  LOBYTE(STACK[0xEF28]) = STACK[0xEF2C];
  LOBYTE(STACK[0xEF2C]) = v24;
  v26 = (&STACK[0xEF28] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEF2D];
  LOBYTE(STACK[0xEF2D]) = v24;
  v27 = (&STACK[0xEF28] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEF2E];
  LOBYTE(STACK[0xEF2E]) = v26;
  v28 = (&STACK[0xEF28] | v10);
  v29 = *v28;
  *v28 = STACK[0xEF2F];
  LOBYTE(STACK[0xEF2F]) = v29;
  v30 = STACK[0xEF28];
  v31 = (-548819963 * STACK[0xEF28]) ^ v9;
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
  *STACK[0x4630] = STACK[0xEF28];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_1001DEDDC()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 22613;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2468)))(48);
  *(v0 + 1016) = v4;
  *STACK[0xB848] = v4;
  return (*(v3 + 8 * (((2 * (v4 != 0)) | (8 * (v4 != 0))) ^ ((v1 + 5580) | v2))))();
}

uint64_t sub_1001DEE50()
{
  v1 = STACK[0xC130];
  v2 = *(STACK[0xC130] + 8);
  v3 = STACK[0xA360];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0x57D8] + 8 * (((v2 == 0) * (((v0 ^ 0x121F) + 8064) ^ 0x63E7)) ^ v0)))();
}

uint64_t sub_1001F1050(int a1, uint64_t a2, int a3, int a4, unsigned __int8 a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x4E18]) = a1;
  LODWORD(STACK[0x55F0]) = STACK[0x55F0] | (a8 << 24);
  v16 = LODWORD(STACK[0x5700]) - 1092;
  LODWORD(STACK[0x5420]) = v16;
  v17 = (v16 + 1723668388) & 0xBBFAFFFF;
  v18 = STACK[0x4A08];
  LODWORD(STACK[0x5270]) = v17;
  v19 = 3 * (v17 ^ v18);
  LODWORD(STACK[0x4DF0]) = v19;
  v20 = STACK[0x53D8];
  v21 = LODWORD(STACK[0x53D8]) >> (v19 ^ 0x89);
  LODWORD(STACK[0x5510]) = (545 * (((BYTE2(a7) ^ 0x2614276A) - 125040132) ^ ((BYTE2(a7) ^ 0x859F370C) + 1527191966) ^ ((BYTE2(a7) ^ 0xA38B106E) + 2098413312)) + 503630374) % (v21 & 0x10 ^ (v21 & 0x10 | 0x600) ^ 0x10u);
  v22 = ((LODWORD(STACK[0x5380]) ^ 0x2580DD05) - 629202181) ^ ((LODWORD(STACK[0x5380]) ^ 0x23198B9B) - 588876699) ^ ((LODWORD(STACK[0x5380]) ^ 0x6995687) - 110712455);
  STACK[0x5680] = v13;
  LODWORD(STACK[0x5248]) = (545 * (((HIBYTE(v14) ^ 0x489C9D07) - 1218223460) ^ ((HIBYTE(v14) ^ 0x95E30E99) + 1780281606) ^ ((HIBYTE(v14) ^ 0xDD7F93EF) + 578841716)) + 9810) % 0x610;
  LODWORD(STACK[0x5410]) = (545 * (LODWORD(STACK[0x5408]) | ((a5 > 0xA3u) << 8)) - 50140) % 0x610u;
  LODWORD(STACK[0x5480]) = 545 * HIBYTE(v9) - 1552 * ((2767376 * (545 * HIBYTE(v9))) >> 32);
  LODWORD(STACK[0x5520]) = (a4 ^ 0xCC3590B2) & ((v11 << 8) ^ 0xFC7FD0FF) | (v11 << 8) & STACK[0x4A00];
  LODWORD(STACK[0x5700]) = v21 + (v20 << 16);
  v23 = STACK[0x5770];
  v24 = *(STACK[0x5770] + 4 * ((545 * (((v10 ^ 0x67EBCD1) - 1116519651) ^ ((v10 ^ 0x989140AD) + 597475169) ^ ((v10 ^ 0x9EEFFC7C) + 635569074)) - 952997262) % 0x610));
  v25 = v24 - 388831264 - ((2 * v24) & 0xD1A5DE82) + 1889;
  HIDWORD(v26) = *(STACK[0x5770] + 4 * (545 * BYTE2(v15) - 1552 * ((2767376 * (545 * BYTE2(v15))) >> 32)));
  LODWORD(v26) = HIDWORD(v26);
  LODWORD(STACK[0x5570]) = (HIBYTE(v25) ^ 0xD817063) & ((v25 << 8) ^ 0xCD5232FF) | (v25 << 8) & 0xF27E8F00;
  LODWORD(STACK[0x54E0]) = (v26 >> 8) - ((2 * (v26 >> 8)) & 0xE5E639D6);
  LODWORD(STACK[0x54F0]) = (545 * (((HIBYTE(v15) ^ 0xDB2B869C) + 198928582) ^ ((HIBYTE(v15) ^ 0x8F75CEF) - 670584137) ^ ((HIBYTE(v15) ^ 0xD3DCDA73) + 53228587)) + 789877350) % 0x610;
  v27 = *(v23 + 4 * (545 * v12 - 1552 * ((2767376 * (545 * v12)) >> 32)));
  STACK[0x54D0] = (v27 >> ((v8 & 0x18 ^ 0x18) + (v8 & 0x18u))) | (v27 << 8);
  LODWORD(STACK[0x54A0]) = 545 * HIBYTE(v12) - 1552 * ((2767376 * (545 * HIBYTE(v12))) >> 32);
  v28 = LODWORD(STACK[0x5158]) ^ a3;
  v29 = LODWORD(STACK[0x5180]) ^ a3;
  LODWORD(STACK[0x5530]) = (545 * v22 + 13625) % 0x610u;
  v30 = ((((v14 ^ 0x58) - 123) ^ ((v14 ^ 0x6B) - 72) ^ ((v14 ^ 0x20) - 3)) + 85);
  LODWORD(STACK[0x56F0]) = (545 * (LODWORD(STACK[0x56F0]) | ((LODWORD(STACK[0x56F0]) < 5u) << 8)) - 2725) % 0x610u;
  LODWORD(STACK[0x5050]) = (545 * (v30 | ((v30 < 0x25) << 8)) - 20165) % 0x610;
  v31 = STACK[0x5280];
  v32 = LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x53C8]);
  LODWORD(STACK[0x5180]) = 545 * BYTE1(v32) - 1552 * ((2767376 * (545 * BYTE1(v32))) >> 32);
  LODWORD(STACK[0x55C0]) = 545 * LODWORD(STACK[0x5130]) - 1552 * ((2767376 * (545 * LODWORD(STACK[0x5130]))) >> 32);
  LODWORD(STACK[0x55B0]) = LODWORD(STACK[0x5140]) - 1552 * ((2767376 * LODWORD(STACK[0x5140])) >> 32);
  LODWORD(STACK[0x5158]) = 545 * v32 - 1552 * ((2767376 * (545 * v32)) >> 32);
  v33 = STACK[0x5148];
  v34 = *(v23 + 4 * (545 * HIBYTE(v33) - 1552 * ((2767376 * (545 * HIBYTE(v33))) >> 32))) ^ __ROR4__(*(v23 + 4 * (545 * BYTE1(v33) - 1552 * ((2767376 * (545 * BYTE1(v33))) >> 32))), 16);
  LODWORD(v27) = 55 * HIBYTE(v31) - 885927505;
  v35 = (v27 ^ 4) & (2 * (v27 & 0x51)) ^ v27 & 0x51;
  v36 = ((2 * (v27 ^ 4)) ^ 0xAA) & (v27 ^ 4) ^ (2 * (v27 ^ 4)) & 0x54;
  LOBYTE(v27) = v27 ^ 0xAA ^ (2 * (((4 * (v36 ^ 0x55)) & 0x50 ^ 0x50 ^ ((4 * (v36 ^ 0x55)) ^ 0x50) & (v36 ^ 0x55)) & (16 * (v36 & (4 * v35) ^ v35)) ^ v36 & (4 * v35) ^ v35));
  v37 = STACK[0x57A0];
  LOBYTE(v27) = *((v27 ^ 0xB6u) + STACK[0x57A0] + 41792) ^ v27;
  v38 = *(STACK[0x57A0] + ((55 * BYTE2(v31)) ^ 0x4Cu) + 128854);
  v39 = ((v38 ^ 0xCA) + 54) ^ ((v38 ^ 7) - 7) ^ ((v38 ^ 0x70) - 112);
  v40 = v39 - 89;
  v41 = ((88 - v39) & 0x8B | 0x54) ^ (v39 - 89) & 0xAA;
  v42 = v40 ^ (2 * ((v40 ^ 0xA) & (2 * ((v40 ^ 0xA) & (2 * ((v40 ^ 0xA) & (2 * ((v40 ^ 0xA) & (2 * ((v40 ^ 0xA) & (2 * ((v40 ^ 0xA) & (2 * v41) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41));
  v43 = 545 * ((((v42 ^ 0xE6) + 26) ^ ((v42 ^ 0xEF) + 17) ^ ((v42 ^ 0x89) + 119)) + 115);
  LODWORD(STACK[0x53D8]) = v43 - 1552 * ((2767376 * v43) >> 32);
  v44 = *(v37 + (v33 ^ 0x20u) + 123144);
  LODWORD(STACK[0x53A8]) = (545 * (((BYTE1(LODWORD(STACK[0x5550])) ^ 0x58FB4DC2) - 893453544) ^ ((BYTE1(LODWORD(STACK[0x5550])) ^ 0xB0499AEB) + 571223103) ^ ((BYTE1(LODWORD(STACK[0x5550])) ^ 0xE8B2D71F) + 2063032779)) - 1718246244) % 0x610;
  v45 = 545 * (LODWORD(STACK[0x4E68]) - 85 * (((((v44 >> 7) | (2 * v44)) ^ 0x91) - 5) ^ ((((v44 >> 7) | (2 * v44)) ^ 0x43) + 41) ^ ((((v44 >> 7) | (2 * v44)) ^ 0x7D) + 23)));
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5150]) - 1552 * ((2767376 * LODWORD(STACK[0x5150])) >> 32);
  LODWORD(v27) = 545 * ((((v27 ^ 0x60) + 4) ^ ((v27 ^ 0xAD) - 49) ^ ((v27 ^ 0xF5) - 105)) - 105);
  LODWORD(STACK[0x5398]) = v27 - 1552 * ((2767376 * v27) >> 32);
  v46 = v34 ^ __ROR4__(*(v23 + 4 * (v45 - 1552 * ((2767376 * v45) >> 32))), 24);
  LODWORD(STACK[0x51D8]) = 545 * BYTE2(v32) - 1552 * ((2767376 * (545 * BYTE2(v32))) >> 32);
  LODWORD(STACK[0x51C8]) = 545 * HIBYTE(v32) - 1552 * ((2767376 * (545 * HIBYTE(v32))) >> 32);
  v47 = *(v23 + 4 * (545 * BYTE2(v33) - 1552 * ((2767376 * (545 * BYTE2(v33))) >> 32)));
  LODWORD(STACK[0x5390]) = 545 * BYTE1(v31) - 1552 * ((2767376 * (545 * BYTE1(v31))) >> 32);
  LODWORD(STACK[0x55D0]) = v46 ^ __ROR4__(v47, 8);
  LODWORD(STACK[0x5380]) = 545 * v31 - 1552 * ((2767376 * (545 * v31)) >> 32);
  LODWORD(STACK[0x5370]) = 545 * v29 - 1552 * ((2767376 * (545 * v29)) >> 32);
  LODWORD(STACK[0x5348]) = 545 * HIBYTE(v29) - 1552 * ((2767376 * (545 * HIBYTE(v29))) >> 32);
  LODWORD(STACK[0x5368]) = 545 * BYTE2(v29) - 1552 * ((2767376 * (545 * BYTE2(v29))) >> 32);
  v48 = (LODWORD(STACK[0x5160]) ^ 0xE9u) + 90816;
  LODWORD(STACK[0x5320]) = 545 * BYTE1(v29) - 1552 * ((2767376 * (545 * BYTE1(v29))) >> 32);
  v49 = STACK[0x52F8];
  v50 = WORD1(v49) - ((v49 >> 15) & 0x76) + 59;
  LOBYTE(v48) = (((*(v37 + v48) ^ 0xCD) + 51) ^ ((*(v37 + v48) ^ 0x3D) - 61) ^ ((*(v37 + v48) ^ 0x4D) - 77)) - (((v50 ^ 0xA3) - 50) ^ ((v50 ^ 0xCE) - 95) ^ ((v50 ^ 0x75) + 28)) - 60;
  LOBYTE(v50) = v48 & 0x5B ^ 0x48;
  LOBYTE(v48) = v48 ^ (2 * ((v48 ^ 0x4A) & (2 * ((v48 ^ 0x4A) & (2 * ((v48 ^ 0x4A) & (2 * ((v48 ^ 0x4A) & (2 * ((v48 ^ 0xA) & (2 * ((v48 ^ 2) & (2 * v48) & 0x16 ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50));
  LOBYTE(v50) = ((v48 ^ 0x21) + 101) ^ ((v48 ^ 0x27) + 99) ^ ((v48 ^ 0x50) + 22);
  LOBYTE(v48) = *((((v28 >> 19) & 0xE0 | (v28 >> 27)) ^ 2) + v37 + 63936);
  LOBYTE(v48) = (((v48 ^ 0xF6) + 10) ^ ((v48 ^ 0x19) - 25) ^ ((v48 ^ 0x52) - 82)) - 120;
  LOBYTE(v47) = v48 & 0xF0 ^ 0x26;
  LOBYTE(v48) = v48 ^ (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47));
  v51 = STACK[0x5190];
  LODWORD(STACK[0x53E0]) = 545 * HIBYTE(LODWORD(STACK[0x5190])) - 1552 * ((2767376 * (545 * HIBYTE(LODWORD(STACK[0x5190])))) >> 32);
  LODWORD(STACK[0x53C0]) = 545 * (-85 * v50 - 92) - 1552 * ((2767376 * (545 * (-85 * v50 - 92))) >> 32);
  v52 = STACK[0x5168];
  LODWORD(STACK[0x5408]) = 545 * LODWORD(STACK[0x5168]) - 1552 * ((2767376 * (545 * LODWORD(STACK[0x5168]))) >> 32);
  LOBYTE(v47) = *(v37 + (((v49 >> 19) & 0xE0 | (v49 >> 27)) ^ 0xDA) + 110272);
  LOBYTE(v27) = ((((4 * (v47 & 3)) | 0xC0) ^ v47 ^ 0x40) - 56) ^ ((((4 * (v47 & 3)) | 0xC0) ^ v47 ^ 0xD9) + 95) ^ ((((4 * (v47 & 3)) | 0xC0) ^ v47 ^ 0x7E) - 6);
  v53 = *(v23 + 4 * (545 * v28 - 1552 * ((2767376 * (545 * v28)) >> 32)));
  LOBYTE(v45) = *(v37 + (HIBYTE(v53) ^ 0x1D197)) ^ HIBYTE(v53);
  LODWORD(STACK[0x4E10]) = -85;
  LODWORD(STACK[0x5310]) = 545 * (117 * v27 - 85) - 1552 * ((2767376 * (545 * (117 * v27 - 85))) >> 32);
  LODWORD(STACK[0x5308]) = 545 * BYTE2(v52) - 1552 * ((2767376 * (545 * BYTE2(v52))) >> 32);
  LODWORD(STACK[0x5300]) = (LODWORD(STACK[0x4DE8]) - 85 * (((v45 ^ 0x75) - 24) ^ ((v45 ^ 0xAF) + 62) ^ ((v45 ^ 0x14) - 121))) | (v53 << 8);
  LODWORD(STACK[0x52E0]) = 545 * BYTE1(v51) - 1552 * ((2767376 * (545 * BYTE1(v51))) >> 32);
  LODWORD(STACK[0x52D0]) = 545 * v51 - 1552 * ((2767376 * (545 * v51)) >> 32);
  LODWORD(STACK[0x52A0]) = 545 * BYTE1(v28) - 1552 * ((2767376 * (545 * BYTE1(v28))) >> 32);
  v54 = 545 * (((HIBYTE(v52) ^ 0xC3D44A6) + 1829118153) ^ ((HIBYTE(v52) ^ 0xC8695C7E) - 1454229487) ^ ((HIBYTE(v52) ^ 0xC45418D8) - 1519420233)) + 9383857;
  LODWORD(STACK[0x52E8]) = v54 % 0x610;
  LODWORD(v48) = (117 * (((v48 ^ 0xAD) + 13) ^ ((v48 ^ 0xA2) + 4) ^ ((v48 ^ 0x3E) - 96)) - 69) * ((v54 & 0x221 ^ 0x221) + (v54 & 0x221));
  LODWORD(STACK[0x52F8]) = LODWORD(STACK[0x5170]) - 1552 * ((2767376 * LODWORD(STACK[0x5170])) >> 32);
  LODWORD(STACK[0x5208]) = v48 - 1552 * ((2767376 * v48) >> 32);
  LODWORD(STACK[0x51F8]) = 545 * BYTE2(v28) - 1552 * ((2767376 * (545 * BYTE2(v28))) >> 32);
  LODWORD(STACK[0x5200]) = 545 * BYTE1(v52) - 1552 * ((2767376 * (545 * BYTE1(v52))) >> 32);
  LODWORD(STACK[0x5280]) = LODWORD(STACK[0x5178]) - 1552 * ((2767376 * LODWORD(STACK[0x5178])) >> 32);
  LODWORD(STACK[0x5190]) = 545 * BYTE2(v51) - 1552 * ((2767376 * (545 * BYTE2(v51))) >> 32);
  v55 = STACK[0x56D0];
  LODWORD(v48) = 545 * STACK[0x56D0];
  LODWORD(STACK[0x5170]) = 545 * BYTE1(STACK[0x56D0]) - 1552 * ((2767376 * (545 * BYTE1(STACK[0x56D0]))) >> 32);
  v56 = STACK[0x51B0];
  LODWORD(STACK[0x5178]) = 545 * HIBYTE(LODWORD(STACK[0x51B0])) - 1552 * ((2767376 * (545 * HIBYTE(LODWORD(STACK[0x51B0])))) >> 32);
  v57 = STACK[0x5760];
  LODWORD(v48) = *(v23 + 4 * (v48 - 1552 * ((2767376 * v48) >> 32)));
  v58 = *(v37 + (((v57 & 0xBD ^ 0xBD) + (v57 & 0xBD)) ^ BYTE3(v48) ^ 0xD2) + 65728);
  LODWORD(STACK[0x5168]) = (LODWORD(STACK[0x4A10]) - 85 * (((((v58 >> 6) | (4 * v58)) ^ 0x30) + 94) ^ ((((v58 >> 6) | (4 * v58)) ^ 0x1E) - 12) ^ ((((v58 >> 6) | (4 * v58)) ^ 0xDA) + 56))) | (v48 << 8);
  LODWORD(STACK[0x5150]) = 545 * BYTE3(v55) - 1552 * ((2767376 * (545 * BYTE3(v55))) >> 32);
  LODWORD(STACK[0x5160]) = 545 * BYTE2(v56) - 1552 * ((2767376 * (545 * BYTE2(v56))) >> 32);
  v59 = STACK[0x5250];
  LODWORD(STACK[0x5138]) = 545 * HIBYTE(LODWORD(STACK[0x5250])) - 1552 * ((2767376 * (545 * HIBYTE(LODWORD(STACK[0x5250])))) >> 32);
  LODWORD(STACK[0x5140]) = 545 * BYTE1(v59) - 1552 * ((2767376 * (545 * BYTE1(v59))) >> 32);
  LODWORD(STACK[0x5148]) = 545 * LODWORD(STACK[0x5590]) - 1552 * ((2767376 * (545 * LODWORD(STACK[0x5590]))) >> 32);
  LODWORD(STACK[0x51A0]) -= 1552 * ((2767376 * LODWORD(STACK[0x51A0])) >> 32);
  LODWORD(STACK[0x5130]) = 545 * v59 - 1552 * ((2767376 * (545 * v59)) >> 32);
  LODWORD(STACK[0x56D0]) = 545 * BYTE2(v55) - 1552 * ((2767376 * (545 * BYTE2(v55))) >> 32);
  LODWORD(STACK[0x5070]) = 545 * BYTE2(v59) - 1552 * ((2767376 * (545 * BYTE2(v59))) >> 32);
  v60 = STACK[0x5470];
  LODWORD(STACK[0x5218]) -= 1552 * ((2767376 * LODWORD(STACK[0x5218])) >> 32);
  LODWORD(STACK[0x51C0]) -= 1552 * ((2767376 * LODWORD(STACK[0x51C0])) >> 32);
  LODWORD(v48) = ((v60 >> 3) & 0xE0 | (v60 >> 11)) - 172414808 - 2 * (((v60 >> 3) & 0x20 | (v60 >> 11) & 0x3E) ^ (v60 >> 11) & 0xE) + 2696;
  LODWORD(STACK[0x5060]) = 545 * v56 - 1552 * ((2767376 * (545 * v56)) >> 32);
  LOBYTE(v48) = *(v37 + (((v48 ^ 0x419401CD) - 41204669) ^ ((v48 ^ 0x5D105B06) - 519102838) ^ ((v48 ^ 0xE93D69A2) + 1428302894)) - 1235592039) ^ v48;
  LODWORD(STACK[0x5058]) = 545 * BYTE1(v56) - 1552 * ((2767376 * (545 * BYTE1(v56))) >> 32);
  v61 = STACK[0x5198];
  v62 = STACK[0x5228];
  LODWORD(STACK[0x5250]) = 545 * HIBYTE(LODWORD(STACK[0x5228])) - 1552 * ((2767376 * (545 * HIBYTE(LODWORD(STACK[0x5228])))) >> 32);
  LOBYTE(v47) = (((55 * HIBYTE(v61)) ^ 0xAA) + 19) ^ (((55 * HIBYTE(v61)) ^ LODWORD(STACK[0x49F8])) + 40) ^ (((55 * HIBYTE(v61)) ^ LODWORD(STACK[0x26D4])) + 0x80);
  LODWORD(v48) = 545 * (117 * (((v48 ^ 0x25) + 38) ^ ((v48 ^ 0xBA) - 69) ^ ((v48 ^ 0x5E) + 95)) + 86);
  LODWORD(STACK[0x51B0]) = v48 - 1552 * ((2767376 * v48) >> 32);
  LOBYTE(v48) = ((((55 * HIBYTE(v61)) ^ 0xCA) + 81) ^ (((55 * HIBYTE(v61)) ^ 0xF8) + 99) ^ (((55 * HIBYTE(v61)) ^ 0x18) - 125)) - v47;
  LODWORD(STACK[0x5068]) = 545 * BYTE2(v62) - 1552 * ((2767376 * (545 * BYTE2(v62))) >> 32);
  LOBYTE(v48) = *(((55 * HIBYTE(v61)) ^ 0x7Du) + v37 + 35392) ^ (v48 - 25) ^ (102 - v48) ^ (((v48 - 25) ^ 0x30) - 125) ^ (((v48 - 25) ^ 0x3B) - 118) ^ (((v48 - 25) ^ 0xB9) + 12);
  LOBYTE(v58) = ((v48 ^ 5) + 38) ^ ((v48 ^ 0xF) + 48) ^ ((v48 ^ 0x3C) + 29);
  v63 = 545 * BYTE2(v61);
  v64 = *(v23 + 4 * (v63 - 1552 * ((2767376 * v63) >> 32)));
  LODWORD(STACK[0x5010]) = v64;
  LODWORD(STACK[0x5188]) -= 1552 * ((2767376 * LODWORD(STACK[0x5188])) >> 32);
  LODWORD(STACK[0x5038]) = 545 * v61 - 1552 * ((2767376 * (545 * v61)) >> 32);
  LODWORD(STACK[0x5048]) = 545 * v62 - 1552 * ((2767376 * (545 * v62)) >> 32);
  v65 = *(v23 + 4 * (545 * v60 - 1552 * ((2767376 * (545 * v60)) >> 32)));
  LODWORD(STACK[0x5040]) = (v65 << ((v61 & 8 ^ 8) + (v61 & 8))) + (v65 >> ((v64 & 0x4F) + (v63 & 0xC9) + (~v64 & 0x4F) + ((~v64 & 0x4F | v64 | 0xB0) & ~v63 & 0xC9)));
  LODWORD(STACK[0x5030]) = 545 * (v58 - 36) - 1552 * ((2767376 * (545 * (v58 - 36))) >> 32);
  LODWORD(STACK[0x5198]) = 545 * BYTE1(v61) - 1552 * ((2767376 * (545 * BYTE1(v61))) >> 32);
  v66 = 2 * LODWORD(STACK[0x5630]);
  v67 = v66 & 0x5050504 ^ 0x83828382;
  v68 = STACK[0x5650];
  v69 = STACK[0x5660];
  LODWORD(STACK[0x5028]) = 545 * BYTE2(v60) - 1552 * ((2767376 * (545 * BYTE2(v60))) >> 32);
  LODWORD(STACK[0x5228]) = 545 * BYTE1(v62) - 1552 * ((2767376 * (545 * BYTE1(v62))) >> 32);
  v70 = 2 * LODWORD(STACK[0x5640]);
  LODWORD(v55) = v70 & 0x5050504 ^ 0x87838382;
  v71 = v70 & 0x5050504 ^ 0x85838102 ^ v55 & (v68 ^ 0x85028480);
  LODWORD(STACK[0x5018]) = 545 * HIBYTE(v60) - 1552 * ((2767376 * (545 * HIBYTE(v60))) >> 32);
  v72 = v66 & 0xC0C0C0C0 ^ 0x60A0A060;
  LODWORD(STACK[0x51A8]) -= 1552 * ((2767376 * LODWORD(STACK[0x51A8])) >> 32);
  LODWORD(STACK[0x4E00]) = v72;
  v73 = STACK[0x5780];
  v74 = STACK[0x5790];
  LODWORD(STACK[0x5470]) = ((v66 & 0x40C08080 ^ 0x4080A020 ^ (v68 ^ 0x4020A040) & v72) >> STACK[0x5780]) ^ ((v66 & 0xC0C040C0 ^ 0x60A02040 ^ (v69 ^ 0x80A0A020) & v72) << STACK[0x5790]);
  LODWORD(STACK[0x5210]) -= 1552 * ((2767376 * LODWORD(STACK[0x5210])) >> 32);
  v75 = STACK[0x5240];
  LOBYTE(v62) = *((((v75 >> 5) | (8 * (v75 & 0x1F))) ^ 0xE1) + v37 + 15680);
  LODWORD(STACK[0x5220]) -= 1552 * ((2767376 * LODWORD(STACK[0x5220])) >> 32);
  v76 = STACK[0x56E0];
  LODWORD(STACK[0x5008]) = 545 * HIBYTE(LODWORD(STACK[0x56E0])) - 1552 * ((2767376 * (545 * HIBYTE(LODWORD(STACK[0x56E0])))) >> 32);
  v77 = ((((v62 ^ 0xED) + 44) ^ ((v62 ^ 0xA4) + 99) ^ ((v62 ^ 0x85) + 68)) - 75);
  LODWORD(STACK[0x4FE8]) = 545 * BYTE2(v76) - 1552 * ((2767376 * (545 * BYTE2(v76))) >> 32);
  LODWORD(STACK[0x4FE0]) = 545 * BYTE1(v76) - 1552 * ((2767376 * (545 * BYTE1(v76))) >> 32);
  LOBYTE(v62) = *((HIBYTE(LODWORD(STACK[0x5258])) ^ 0xBAu) + v37 + 44672);
  LODWORD(STACK[0x5258]) = 545 * v76 - 1552 * ((2767376 * (545 * v76)) >> 32);
  v78 = (LODWORD(STACK[0x5080]) - 85 * (((v62 ^ 0xBE) + 59) ^ ((v62 ^ 0xCA) + 79) ^ ((v62 ^ 0xEF) + 108)));
  v79 = v78 | ((v78 < 0x23) << 8);
  LODWORD(v48) = STACK[0x5560];
  LODWORD(STACK[0x56E0]) = 545 * BYTE2(LODWORD(STACK[0x5560])) - 1552 * ((2767376 * (545 * BYTE2(LODWORD(STACK[0x5560])))) >> 32);
  v80 = v55 & STACK[0x5720];
  v81 = STACK[0x5720];
  v82 = STACK[0x57B0];
  v83 = (v55 & v57) << STACK[0x57B0];
  v84 = STACK[0x57C0];
  LODWORD(v37) = (v71 >> STACK[0x57C0]) + v83;
  LODWORD(STACK[0x4F10]) = (v80 >> STACK[0x57C0]) ^ v83;
  v85 = LODWORD(STACK[0x5340]) ^ ((((v68 ^ 0x850780) & v67 ^ (v66 & 0x404 | 0x202)) >> v73) | ((v66 & 0x5040000 ^ 0x81000000 ^ (v69 ^ 0x86008786) & v67) << v74));
  LODWORD(STACK[0x5590]) = 545 * BYTE1(v48) - 1552 * ((2767376 * (545 * BYTE1(v48))) >> 32);
  LODWORD(v71) = v85 ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5248])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5050])), 24);
  LODWORD(STACK[0x5248]) = 545 * BYTE3(v48) - 1552 * ((2767376 * (545 * BYTE3(v48))) >> 32);
  LODWORD(STACK[0x4F50]) = ((v81 & v67) >> v84) + ((v67 & v57) << v82);
  LODWORD(STACK[0x5050]) = 545 * v48 - 1552 * ((2767376 * (545 * v48)) >> 32);
  v86 = v66 & 0xB4B4B4B4 ^ 0x5ACACA5A;
  LODWORD(STACK[0x4DF8]) = v86;
  LODWORD(STACK[0x4FC8]) = ((v81 & v86) >> v73) | ((v86 & v57) << v82);
  LODWORD(STACK[0x5340]) = 545 * BYTE2(v75) - 1552 * ((2767376 * (545 * BYTE2(v75))) >> 32);
  v87 = v70 & 0x47474746 ^ 0xE6A2A0A1;
  v88 = v70 & 0x40034606 ^ 0x40A28021 ^ v87 & (v68 ^ 0x4046C7C1);
  LODWORD(STACK[0x4FD8]) = 545 * BYTE3(v75) - 1552 * ((2767376 * (545 * BYTE3(v75))) >> 32);
  LODWORD(STACK[0x5240]) = 545 * BYTE1(v75) - 1552 * ((2767376 * (545 * BYTE1(v75))) >> 32);
  v89 = v70 & 0x44010206 ^ 0x64A02021 ^ v87 & (v69 ^ LODWORD(STACK[0x49F0]));
  LODWORD(STACK[0x4FD0]) = (545 * (v77 | ((v77 < 0x5C) << 8)) - 50140) % 0x610;
  v90 = v87 & v81;
  v91 = (v87 & v57) << v82;
  LODWORD(STACK[0x4EF0]) = v91 + (v90 >> v84);
  LODWORD(STACK[0x4F00]) = (v88 >> v84) ^ v91;
  LODWORD(STACK[0x4F48]) = LODWORD(STACK[0x5268]) - 1552 * ((2767376 * LODWORD(STACK[0x5268])) >> 32);
  LODWORD(STACK[0x4F58]) = ((v81 & (v66 & 0x47474746 ^ 0xA0E3E2A3)) >> v73) + ((v66 & 0x44424606 ^ 0xA042E202 ^ (v69 ^ 0x870621E0) & (v66 & 0x47474746 ^ 0xA0E3E2A3)) << v74);
  LODWORD(STACK[0x4F08]) = (v89 << v82) | (v90 >> v73);
  LODWORD(STACK[0x4EF8]) = LODWORD(STACK[0x5260]) - 1552 * ((2767376 * LODWORD(STACK[0x5260])) >> 32);
  LODWORD(STACK[0x5260]) = (v79 - 35) * (((v64 & 1) == 0) ^ (v64 & 1 | 0x220u)) % 0x610;
  LODWORD(v91) = v66 & 0x8B8B8B8A ^ 0xC64D4CCD;
  LODWORD(STACK[0x4EE0]) = LODWORD(STACK[0x5288]) - 1552 * ((2767376 * LODWORD(STACK[0x5288])) >> 32);
  v92 = v91 & v57;
  LODWORD(STACK[0x4ED8]) = ((v66 & 0xB020A80 ^ 0x46044881 ^ (v68 ^ 0x5FC37B4F) & v91) >> v84) + (v92 << v74);
  LODWORD(STACK[0x4EE8]) = ((v70 & 0x8B808202 ^ 0xC4448247 ^ (v70 & 0x8B8B8B8A ^ 0xC44CCE4F) & (v69 ^ 0x8C884581)) << v74) ^ ((v70 & 0x888902 ^ 0x440C8847 ^ (v70 & 0x8B8B8B8A ^ 0xC44CCE4F) & (v68 ^ 0x44498889)) >> v73);
  LODWORD(STACK[0x4EB8]) = ((v81 & v91) >> v84) ^ (v92 << v82);
  LODWORD(STACK[0x5430]) = STACK[0x5430] ^ (((v66 & 0x88838308 ^ 0x80010048 ^ (v68 ^ 0x88468286) & v91) >> v84) + ((v66 & 0x83830808 ^ 0xC2014C48 ^ (v69 ^ 0x80CF8B8E) & v91) << v74));
  LODWORD(v91) = v70 & 0x35353534 ^ 0xBFBB8B9A;
  v93 = v91 & v57;
  LODWORD(STACK[0x4EC8]) = ((v91 & v81) >> v73) + (v93 << v82);
  LODWORD(v48) = v66 & 0x35353534 ^ 0x9B8A8B9A;
  v94 = v66 & 0x5053414 ^ 0x8188829A ^ (v69 ^ 0xA6913128) & v48;
  LODWORD(STACK[0x4EA0]) = ((v70 & 0x31152424 ^ 0xB99B0000 ^ v91 & (v68 ^ 0xA93A258A)) >> v84) + (v93 << v74);
  LODWORD(v83) = v81;
  LODWORD(STACK[0x4EA8]) = ((v81 & v48) >> v73) + (v94 << v82);
  LODWORD(STACK[0x4ED0]) = (((v68 ^ 0x90221128) & v48 ^ (v66 & 0x51004 | 0x80820082)) >> v84) ^ (v94 << v82);
  LODWORD(v91) = v70 & 0x42424242 ^ 0x61212323;
  LODWORD(STACK[0x4EB0]) = ((v91 & v57) << v74) ^ ((v91 & v81) >> v73);
  LODWORD(v48) = v66 & 0x42424242 ^ 0x23616121;
  v95 = v81 & v48;
  v96 = v57 & v48;
  LODWORD(STACK[0x4EC0]) = (v95 >> v84) ^ (v96 << v74);
  v97 = v70 & 0xCFCFCFCE ^ 0xA26EEC6D;
  v98 = v70 & STACK[0x49E8] ^ 0x2226AC65 ^ v97 & (v69 ^ 0x48EA6A83);
  LODWORD(STACK[0x4E88]) = ((v91 & (v69 ^ 0x60024302) ^ ((v70 & 0x2420040) + 16777248)) << v82) + ((v91 & (v68 ^ 0x3616143) ^ ((v70 & 0x2004000) + 16785441)) >> v73);
  LODWORD(STACK[0x4E90]) = (v95 >> v73) | (v96 << v82);
  LODWORD(STACK[0x4E80]) = (v98 << v74) | ((v70 & 0x8ECDC4C4 ^ 0x826CE445 ^ v97 & (v68 ^ 0x8E08E52B)) >> v84);
  LODWORD(v91) = v66 & 0xCFCFCFCE ^ 0xE42F2EEF;
  v99 = (v66 & 0xCC478CC4 ^ 0xC4270CE5 ^ (v68 ^ 0xCC828D0B) & v91) >> v84;
  LODWORD(v94) = v99 ^ ((v66 & 0x68E03CA ^ 0x240E22EA ^ (v69 ^ 0x45C2E40C) & v91) << v74) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5180])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5158])), 24) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x51D8])), 8) ^ *(v23 + 4 * LODWORD(STACK[0x51C8]));
  LODWORD(STACK[0x5288]) = v94;
  LODWORD(STACK[0x51C8]) = ((v97 & v81) >> v73) | ((v97 & v57) << v82);
  LODWORD(STACK[0x51D8]) = v99 ^ ((v91 & v57) << v82);
  v100 = v70 & 0x53535352 ^ 0xE8A8BAAB;
  v101 = v70 & 0x130212 ^ 0xA8088A2B ^ v100 & (v69 ^ LODWORD(STACK[0x26D8]));
  v102 = v100 & v81;
  LODWORD(STACK[0x5180]) = (v101 << v74) + (v102 >> v73);
  LODWORD(v91) = STACK[0x5680] ^ LODWORD(STACK[0x4F10]) ^ *(v23 + 4 * LODWORD(STACK[0x5410])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5510])), 8);
  LODWORD(STACK[0x4E08]) = v66;
  LODWORD(STACK[0x4E78]) = ((v66 & 0x42425242 ^ 0xA24078A8 ^ (v68 ^ 0xF2A37B00) & (v66 & 0x53535352 ^ 0xAAF9F8A9)) >> v73) | ((v57 & (v66 & 0x53535352 ^ 0xAAF9F8A9)) << v74);
  v103 = v102 >> v84;
  LODWORD(v102) = v57;
  LODWORD(STACK[0x4F10]) = (v101 << v82) | v103;
  LODWORD(STACK[0x5158]) = ((v100 & v57) << v74) + v103;
  LODWORD(v103) = v37 ^ *(v23 + 4 * LODWORD(STACK[0x56F0]));
  LODWORD(v95) = v91 ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5480])), 16);
  LODWORD(STACK[0x5268]) = LODWORD(STACK[0x4F50]) ^ 0xCC3590B2 ^ STACK[0x56C0] ^ LODWORD(STACK[0x5520]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5530])), 8);
  v104 = 16843009 * ((v94 ^ v71) ^ 0xBE);
  LODWORD(v65) = v104 ^ (2 * (v104 & STACK[0x5670]));
  v105 = v65 & v83;
  v106 = v105 >> v84;
  v107 = v65 & v102;
  v108 = v107 << v74;
  LODWORD(STACK[0x56F0]) = LODWORD(STACK[0x5500]) ^ v103 ^ ((v105 >> v84) + (v107 << v74));
  LODWORD(v103) = *(v23 + 4 * LODWORD(STACK[0x5348])) ^ LODWORD(STACK[0x4FC8]);
  LODWORD(v91) = *(v23 + 4 * LODWORD(STACK[0x5370]));
  LODWORD(STACK[0x4F50]) = v91;
  LODWORD(v103) = v103 ^ __ROR4__(v91, 24) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5368])), 8);
  LODWORD(v99) = *(v23 + 4 * LODWORD(STACK[0x5320]));
  LODWORD(v101) = v104 & (LODWORD(STACK[0x5630]) ^ 0x1EC6C84);
  LODWORD(STACK[0x4FC8]) = v104;
  LODWORD(v101) = v104 ^ (2 * v101);
  LODWORD(v91) = v69 ^ 0x635CC7F6;
  v109 = v101 & (v69 ^ 0x635CC7F6);
  v110 = v109 << v82;
  v111 = STACK[0x53D0];
  v112 = v101 & STACK[0x53D0];
  v113 = v112 >> v84;
  LODWORD(STACK[0x56C0]) = v95 ^ (v112 >> v84) ^ (v109 << v82);
  LODWORD(STACK[0x5348]) = v103 ^ __ROR4__(v99, 16);
  v114 = v105 >> v73;
  LODWORD(STACK[0x5680]) = ((v107 << v74) | v114) ^ v71;
  v115 = v65 & v91;
  v116 = v65 & v111;
  LODWORD(v103) = (v107 << v74) + (v116 >> v84);
  LODWORD(STACK[0x5590]) = v103 ^ LODWORD(STACK[0x4EF0]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x56E0])), 8) ^ *(v23 + 4 * LODWORD(STACK[0x5248])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5590])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5050])), 24);
  LODWORD(v99) = LODWORD(STACK[0x4F00]) ^ *(v23 + 4 * LODWORD(STACK[0x5008]));
  v117 = v115 << v82;
  LODWORD(v65) = (v115 << v82) | v114;
  LODWORD(STACK[0x56E0]) = LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x5540]) ^ v65;
  LODWORD(STACK[0x5530]) = v65 ^ v99 ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x4FE8])), 8) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x4FE0])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5258])), 24);
  v118 = v101 & v102;
  v119 = v118 << v74;
  LODWORD(STACK[0x5520]) = (v118 << v74) ^ LODWORD(STACK[0x4F08]) ^ (v112 >> v84) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x4EF8])), 16) ^ *(v23 + 4 * LODWORD(STACK[0x5260])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x4EE0])), 8) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x4F48])), 24);
  LODWORD(STACK[0x5510]) = STACK[0x5278] ^ LODWORD(STACK[0x4ED8]) ^ (v114 + (v115 << v82));
  LODWORD(v65) = *(v23 + 4 * LODWORD(STACK[0x4FD0]));
  LODWORD(STACK[0x5500]) = ((v112 >> v84) + (v118 << v74)) ^ LODWORD(STACK[0x4F58]) ^ *(v23 + 4 * LODWORD(STACK[0x4FD8])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5340])), 8) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5240])), 16) ^ BYTE3(v65) ^ (v65 << 8);
  LODWORD(v99) = LODWORD(STACK[0x4EB8]) ^ LODWORD(STACK[0x5700]) ^ *(v23 + 4 * LODWORD(STACK[0x54F0])) ^ (LODWORD(STACK[0x54E0]) + 1928535275) ^ LODWORD(STACK[0x5570]);
  v120 = v115 << v74;
  LODWORD(STACK[0x5670]) = v114 | v120;
  v121 = v116 >> v84;
  LODWORD(STACK[0x54F0]) = v99 ^ 0xAD1C6D60 ^ (v120 | (v116 >> v84));
  LODWORD(STACK[0x55F0]) ^= LODWORD(STACK[0x4EE8]) ^ __ROR4__(STACK[0x5318], 16) ^ *(v23 + 4 * LODWORD(STACK[0x54A0])) ^ STACK[0x54D0];
  v122 = v118 << v82;
  LODWORD(STACK[0x54E0]) = ((v112 >> v84) + (v118 << v82)) ^ LODWORD(STACK[0x4EC8]) ^ *(v23 + 4 * LODWORD(STACK[0x5138])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5140])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5130])), 24) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5070])), 8);
  v123 = v101 & v83;
  LODWORD(STACK[0x54D0]) = (v109 << v74) ^ LODWORD(STACK[0x4EA0]) ^ (v123 >> v84) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5170])), 16) ^ *(v23 + 4 * LODWORD(STACK[0x5150])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x56D0])), 8) ^ LODWORD(STACK[0x5168]);
  LODWORD(STACK[0x54A0]) = ((v107 << v82) + (v116 >> v73)) ^ LODWORD(STACK[0x4EA8]) ^ *(v23 + 4 * LODWORD(STACK[0x5178])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5160])), 8) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5060])), 24) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5058])), 16);
  LODWORD(STACK[0x5480]) = ((v107 << v74) | (v116 >> v73)) ^ LODWORD(STACK[0x4ED0]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x51A0])), 8) ^ *(v23 + 4 * LODWORD(STACK[0x5148])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5218])), 24) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x51C0])), 16);
  LODWORD(STACK[0x5470]) = *(v23 + 4 * LODWORD(STACK[0x53E0])) ^ LODWORD(STACK[0x4EB0]) ^ ((v109 << v82) | (v123 >> v84)) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x52E0])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x52D0])), 24) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5190])), 8);
  LODWORD(v120) = *(v23 + 4 * LODWORD(STACK[0x52A0]));
  STACK[0x5368] = v112 >> v73;
  LODWORD(v99) = (v112 >> v73) + (v109 << v74);
  LODWORD(STACK[0x5410]) = v99 ^ LODWORD(STACK[0x4EC0]) ^ __ROR4__(v120, 16) ^ *(v23 + 4 * LODWORD(STACK[0x5208])) ^ LODWORD(STACK[0x5300]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x51F8])), 8);
  LODWORD(v118) = (v107 << v82) + v106;
  LODWORD(STACK[0x5408]) = LODWORD(STACK[0x4E88]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5408])), 24) ^ *(v23 + 4 * LODWORD(STACK[0x52E8])) ^ v118 ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5308])), 8) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5200])), 16);
  v124 = v123 >> v73;
  LODWORD(STACK[0x53E0]) = LODWORD(STACK[0x55D0]) ^ LODWORD(STACK[0x4E80]) ^ (v119 + (v123 >> v73));
  LODWORD(STACK[0x53C0]) = LODWORD(STACK[0x4E90]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x53C0])), 8) ^ (v116 >> v84) ^ v117 ^ *(v23 + 4 * LODWORD(STACK[0x5310])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x52F8])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5280])), 24);
  LODWORD(v107) = LODWORD(STACK[0x51C8]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x53D8])), 8) ^ *(v23 + 4 * LODWORD(STACK[0x5398])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5390])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5380])), 24) ^ v103;
  v125 = LODWORD(STACK[0x51D8]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x55C0])), 24) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x55B0])), 8) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x53A8])), 16) ^ *(v23 + 4 * LODWORD(STACK[0x53A0])) ^ v118;
  LODWORD(STACK[0x53A8]) = v99 ^ LODWORD(STACK[0x5180]) ^ __ROR4__(STACK[0x5010], 8) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5038])), 24) ^ *(v23 + 4 * LODWORD(STACK[0x5030])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5198])), 16);
  STACK[0x5370] = v119;
  STACK[0x5218] = v123 >> v84;
  LODWORD(STACK[0x53A0]) = ((v123 >> v84) + v119) ^ LODWORD(STACK[0x4E78]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x51B0])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5028])), 8) ^ *(v23 + 4 * LODWORD(STACK[0x5018])) ^ LODWORD(STACK[0x5040]);
  LODWORD(STACK[0x5398]) = v117 ^ LODWORD(STACK[0x4F10]) ^ (v116 >> v73) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5068])), 8) ^ *(v23 + 4 * LODWORD(STACK[0x5250])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5048])), 24) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5228])), 16);
  LODWORD(v120) = *(v23 + 4 * LODWORD(STACK[0x5188]));
  STACK[0x5310] = v117;
  LODWORD(STACK[0x5390]) = v117 ^ LODWORD(STACK[0x5158]) ^ v106 ^ __ROR4__(v120, 24) ^ *(v23 + 4 * LODWORD(STACK[0x51A8])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5210])), 8) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5220])), 16);
  v126 = STACK[0x5490];
  LODWORD(v120) = *(STACK[0x5490] + 1);
  LODWORD(v99) = v120 & 0x21 ^ 0x37;
  LODWORD(v120) = (((v120 ^ 0x7A) & (2 * ((v120 ^ 0x7A) & (2 * ((v120 ^ 0x7A) & (2 * ((v120 ^ 0x7A) & (2 * ((v120 ^ 0x7A) & (2 * (((2 * v120) & 0xFFFFFFF7 ^ 0x5A) & (v120 ^ 0x7A) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99) << 25) ^ (v120 << 24);
  LODWORD(v99) = (2 * ((v120 ^ 0x55B8720E) & (LODWORD(STACK[0x5630]) ^ 0x1EFE4E4) ^ STACK[0x5630] & 0x74B8720E)) ^ 0x150C008;
  LODWORD(v120) = (v99 - 1044356312 - ((2 * v99) & 0x8380CF2C) + 1134) ^ v120;
  LODWORD(v99) = LODWORD(STACK[0x5400]) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5338])), 24) ^ *(v23 + 4 * LODWORD(STACK[0x52A8])) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x52F0])), 16) ^ __ROR4__(*(v23 + 4 * LODWORD(STACK[0x5298])), 8) ^ (((v120 & 0x9D6CDCBA ^ 0x80404492 ^ (v120 ^ 0xE0C06796) & (v68 ^ 0x8D89DD55)) >> v84) + (((v120 ^ 0xE0C06796) & v102) << v82));
  LODWORD(STACK[0x5700]) = v99;
  v127 = STACK[0x5350];
  LODWORD(v74) = STACK[0x5610];
  LODWORD(v65) = STACK[0x53C8];
  v128 = LODWORD(STACK[0x5350]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x53C8]) ^ v99;
  STACK[0x51C8] = v128;
  LODWORD(v82) = ((v128 ^ LODWORD(STACK[0x5750])) - 449890787 - ((2 * (v128 ^ LODWORD(STACK[0x5750]))) & 0xCA5E6C3A)) ^ 0xE52F361D;
  LODWORD(v99) = ((LODWORD(STACK[0x5290]) ^ v82) - 449890787 - ((2 * (LODWORD(STACK[0x5290]) ^ v82)) & 0xCA5E6C3A)) ^ 0xE52F361D;
  LODWORD(v128) = v74 ^ LODWORD(STACK[0x52B0]) ^ v65;
  LODWORD(STACK[0x52B0]) = v99;
  v129 = v128 ^ v99;
  LODWORD(v128) = LODWORD(STACK[0x5268]) ^ v122;
  STACK[0x5338] = v113;
  v130 = v128 ^ v113;
  STACK[0x5340] = v108;
  LODWORD(v99) = LODWORD(STACK[0x5348]) ^ v108;
  STACK[0x5380] = v121;
  LODWORD(v128) = v99 ^ v121;
  STACK[0x5228] = v122;
  LODWORD(v99) = STACK[0x55F0];
  LODWORD(STACK[0x51B0]) = v122 + v124;
  v131 = v99 ^ (v122 + v124);
  v132 = LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x5670]);
  STACK[0x5320] = v110;
  STACK[0x5300] = v124;
  v133 = v110 ^ v124;
  v134 = v133 ^ LODWORD(STACK[0x5288]);
  LODWORD(STACK[0x5220]) = v128;
  v135 = v107;
  v136 = v128 - 1044447163 + LODWORD(STACK[0x56E0]) + v107;
  v137 = *(v23 + 4 * (545 * BYTE1(v129) + 281220 - 1552 * ((2767376 * (545 * BYTE1(v129) + 281220)) >> 32)));
  v138 = STACK[0x56C0];
  LODWORD(STACK[0x5200]) = v130;
  if (v136)
  {
    v139 = v130;
  }

  else
  {
    v139 = v138;
  }

  if (v136)
  {
    v140 = STACK[0x5680];
  }

  else
  {
    v140 = STACK[0x56F0];
  }

  if (v136)
  {
    v141 = STACK[0x5530];
  }

  else
  {
    v141 = STACK[0x5590];
  }

  if (v136)
  {
    v142 = STACK[0x5520];
  }

  else
  {
    v142 = STACK[0x5500];
  }

  v143 = STACK[0x5510];
  LODWORD(STACK[0x51F8]) = v131;
  if (v136)
  {
    v144 = v131;
  }

  else
  {
    v144 = v143;
  }

  v145 = STACK[0x54F0];
  LODWORD(STACK[0x51C0]) = v132;
  if (v136)
  {
    v146 = v132;
  }

  else
  {
    v146 = v145;
  }

  v147 = STACK[0x54A0];
  if ((v136 & 1) == 0)
  {
    v147 = STACK[0x54D0];
  }

  v148 = STACK[0x5480];
  if (v136)
  {
    v148 = STACK[0x54E0];
    v149 = STACK[0x5408];
  }

  else
  {
    v149 = STACK[0x5410];
  }

  LODWORD(STACK[0x5208]) = v125;
  v150 = STACK[0x53E0];
  if (v136)
  {
    v151 = STACK[0x5470];
  }

  else
  {
    v150 = v125;
    v151 = STACK[0x53C0];
  }

  LODWORD(STACK[0x5210]) = v135;
  if (v136)
  {
    v152 = v135;
  }

  else
  {
    v152 = v134;
  }

  v153 = STACK[0x53A8];
  if (v136)
  {
    v153 = STACK[0x5398];
  }

  v154 = STACK[0x53A0];
  if (v136)
  {
    v154 = STACK[0x5390];
  }

  STACK[0x56D0] = v136 & 2;
  LODWORD(STACK[0x52F8]) = v139;
  LODWORD(STACK[0x52F0]) = v140;
  if ((v136 & 2) != 0)
  {
    v139 = v140;
  }

  LODWORD(STACK[0x5318]) = v139;
  LODWORD(STACK[0x52E8]) = v141;
  LODWORD(STACK[0x52D0]) = v142;
  LODWORD(STACK[0x5298]) = v144;
  LODWORD(STACK[0x5290]) = v146;
  if ((v136 & 2) != 0)
  {
    v155 = v146;
  }

  else
  {
    v155 = v144;
  }

  STACK[0x55C0] = v155;
  LODWORD(STACK[0x5268]) = v149;
  LODWORD(STACK[0x5260]) = v151;
  if ((v136 & 2) != 0)
  {
    v156 = v151;
  }

  else
  {
    v156 = v149;
  }

  STACK[0x5570] = v156;
  LODWORD(STACK[0x5288]) = v147;
  LODWORD(STACK[0x5278]) = v148;
  if ((v136 & 2) != 0)
  {
    v157 = v148;
  }

  else
  {
    v157 = v147;
  }

  STACK[0x55F0] = v157;
  LODWORD(STACK[0x52A8]) = v153;
  LODWORD(STACK[0x5258]) = v154;
  if ((v136 & 2) != 0)
  {
    v158 = v153;
  }

  else
  {
    v158 = v154;
  }

  LODWORD(STACK[0x53D8]) = v158;
  LODWORD(STACK[0x52E0]) = v150;
  LODWORD(STACK[0x52A0]) = v152;
  if ((v136 & 2) != 0)
  {
    v159 = v152;
  }

  else
  {
    v159 = v150;
  }

  STACK[0x55B0] = v159;
  v160 = (LODWORD(STACK[0x5560]) ^ 0xFFFFFF95) + ((2 * LODWORD(STACK[0x5560])) & 0x2A);
  LODWORD(STACK[0x5348]) = v70;
  v161 = v70 & 0xC0C0C0C0 ^ 0x20E060E0;
  v162 = STACK[0x5720];
  v163 = v161 & STACK[0x5760];
  v164 = STACK[0x5660];
  v165 = STACK[0x5790];
  LODWORD(STACK[0x5350]) = v127;
  v166 = (v163 << v165) ^ v127 ^ ((v161 & v162) >> v84);
  v167 = *(v126 + 2);
  v168 = v167 & 0x39 ^ 0xFFFFFFA3;
  v169 = (((v167 ^ 0x7A) & (2 * ((v167 ^ 0x7A) & (2 * ((v167 ^ 0x7A) & (2 * ((v167 ^ 0x7A) & (2 * ((v167 ^ 0x7A) & (2 * (((2 * v167) & 0xFFFFFFF7 ^ 0x42) & (v167 ^ 0x72) ^ v168)) ^ v168)) ^ v168)) ^ v168)) ^ v168)) ^ v168) << 25) ^ (v167 << 24);
  v170 = (2 * ((v169 ^ 0x3449FA0) & (LODWORD(STACK[0x5640]) ^ 0x32458DC7) ^ STACK[0x5640] & 0x3A449FA0)) ^ 0x64891B00;
  STACK[0x5430] = v170;
  v171 = (v170 - ((2 * v170) & 0x59F7D138) - 1392777060) ^ v169;
  LODWORD(v163) = v171 ^ LODWORD(STACK[0x26DC]);
  v172 = v171 & 0x70D4CD28 ^ 0x10D0C808 ^ v163 & (v164 ^ 0x13880ADF);
  v173 = ((71 - (v129 >> 29)) ^ 0xFFFFFFB8) & ((v129 >> 21) & 0x7F8 ^ 0xFFFFFFCF) ^ (-72 - -(v129 >> 29)) & 0x30;
  v174 = STACK[0x57A0];
  STACK[0x5240] = v172;
  v175 = (v172 << v165) + ((v163 & v162) >> v84);
  STACK[0x5138] = v173 ^ 0xFFFFFFAB;
  v176 = v174 + 156594 + (((v173 ^ 0xB8212DE20D727F40) + 0x47DED21DF28D8015) ^ ((v173 ^ 0xF682E1D706F42BBCLL) + 0x97D1E28F90BD4E9) ^ ((v173 ^ 0x4EA3CC350B8654A3) - 0x4EA3CC350B865408));
  LOBYTE(v173) = (((*(v176 + 1272) ^ 0x43) - 67) ^ ((*(v176 + 1272) ^ 0xEF) + 17) ^ ((*(v176 + 1272) ^ 0x11) - 17)) + (((v173 ^ 0x49) - 15) ^ ((v173 ^ 6) - 64) ^ ((v173 ^ 0x6E) - 40)) + 125;
  LOBYTE(v176) = v173 & 0x6F ^ 0x64;
  LOBYTE(v173) = v173 ^ (2 * ((v173 ^ 0x26) & (2 * ((v173 ^ 0x26) & (2 * ((v173 ^ 0x26) & (2 * ((v173 ^ 0x26) & (2 * ((v173 ^ 6) & (2 * ((v173 ^ 6) & (2 * v173) & 0x4E ^ v176)) ^ v176)) ^ v176)) ^ v176)) ^ v176)) ^ v176));
  v177 = 545 * ((((v173 ^ 0xC9) + 122) ^ ((v173 ^ 0x3D) - 114) ^ ((v173 ^ 0x30) - 127)) - 17) + 281220;
  v178 = v177 - 1552 * ((2767376 * v177) >> 32);
  LODWORD(STACK[0x5308]) = BYTE1(v129);
  v180 = HIWORD(v137) == (HIWORD(v137) - 1924) || BYTE1(v129) == (BYTE1(v129) - 93);
  v181 = (103 * v180) ^ LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x5248]) = v160 + 112;
  LODWORD(STACK[0x5250]) = v133;
  v182 = v175 ^ LODWORD(STACK[0x5700]);
  v183 = *(v23 + 4 * v178);
  LODWORD(STACK[0x5280]) = v182;
  STACK[0x51D8] = v183 ^ LODWORD(STACK[0x55E0]) ^ v182;
  LODWORD(STACK[0x5560]) = (LODWORD(STACK[0x5550]) >> 8) ^ 0xFFFFFF82;
  v184 = *(STACK[0x57D8] + 8 * v181);
  LODWORD(STACK[0x5420]) = v166 ^ v133;
  return v184();
}

uint64_t sub_1001F49E0@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v17 = a2 + 9625;
  v18 = STACK[0x53F8];
  v18[29] = a6;
  v18[19] = a7;
  v18[30] = a5;
  v18[21] = a4;
  v18[18] = v16;
  v18[17] = a8;
  v18[31] = a9;
  v18[27] = a1;
  LODWORD(STACK[0x5228]) = 5;
  v18[22] = v10;
  LODWORD(STACK[0x50D0]) = STACK[0x54D0];
  LODWORD(STACK[0x50E0]) = STACK[0x5450];
  v18[26] = v14;
  LODWORD(STACK[0x50F8]) = STACK[0x5430];
  LODWORD(STACK[0x50E8]) = STACK[0x54F0];
  v18[25] = v13;
  LODWORD(STACK[0x5100]) = STACK[0x5440];
  LODWORD(STACK[0x50F0]) = STACK[0x5460];
  v18[23] = v15;
  LODWORD(STACK[0x50C8]) = STACK[0x5490];
  LODWORD(STACK[0x50D8]) = STACK[0x54A0];
  v18[16] = v9;
  LODWORD(STACK[0x50A0]) = STACK[0x54C0];
  v18[20] = a3;
  LODWORD(STACK[0x50C0]) = STACK[0x5480];
  LODWORD(STACK[0x50A8]) = STACK[0x5510];
  v18[24] = v11;
  LODWORD(STACK[0x5098]) = STACK[0x54E0];
  LODWORD(STACK[0x5090]) = STACK[0x5500];
  LODWORD(STACK[0x50B0]) = STACK[0x5470];
  v18[28] = v12;
  LODWORD(STACK[0x50B8]) = STACK[0x5420];
  return (*(STACK[0x57D8] + 8 * v17))();
}

uint64_t sub_1001F4C80(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = *(*(v7 + 4000) + 4 * (a5 % (((a1 - 5671) | 0x1F) ^ 0x36DFu)));
  *(*(v7 + 4008) + a3 - 5896 * ((((a3 >> 3) * v5) >> 64) >> 4)) = (((v8 ^ 0x7F) - 16) ^ ((v8 ^ 0x58) - 55) ^ ((v8 ^ 0xD6) + 71)) - 70;
  return (*(STACK[0x57D8] + 8 * ((5035 * (v6 == 0)) ^ a1)))();
}

uint64_t sub_1001F4D1C(uint64_t a1, unsigned int a2)
{
  v6 = *(*(v5 + 4000) + a1 - 35072 * (v4 / 0x2240));
  *(*(v5 + 4008) + a2 % ((v2 + 434407331) & 0xE61B3FFF ^ 0x8F1)) = (((v6 ^ 0xCF) + 121) ^ ((v6 ^ 0x8A) + 62) ^ ((v6 ^ 0xB4) + 4)) - 43;
  return (*(STACK[0x57D8] + 8 * ((37 * (v3 != 0)) | (v2 - 17982))))(a1 + 10868, a2 + 3903);
}

uint64_t sub_1001F4DE4()
{
  v1 = STACK[0x51B8] - 14726;
  v2 = v0 == 0;
  if (v0)
  {
    v3 = STACK[0xCE08] - 0x30BDFED8F32E6625;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16;
  }

  LODWORD(STACK[0x7C54]) = v4;
  STACK[0x6E20] = v3;
  STACK[0xCCC8] = STACK[0x6510];
  STACK[0x9830] = &STACK[0xB610];
  LODWORD(STACK[0x8724]) = -189581135;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1001F5030()
{
  v6 = STACK[0x51B8];
  v7 = (v4 ^ 0x719D52CE4EED5357) * v3;
  *(v1 + 616) = 4151811568 - v7;
  *(v1 + 592) = (v6 + v2) ^ v7;
  *(v1 + 596) = v7 ^ LODWORD(STACK[0x34DC]);
  *(v1 + 600) = LODWORD(STACK[0x34E0]) - v7;
  *(v1 + 624) = v0 + v7;
  *(v1 + 604) = LODWORD(STACK[0x34E4]) - v7;
  *(v1 + 608) = v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v6 + 9201)))(v5 - 240);
  return (*(v8 + 8 * *(v1 + 612)))(v9);
}

uint64_t sub_1001F50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  *v5 = v6[27];
  v6[27] = v8;
  v9 = v6[25];
  v6[25] = v6[26];
  v6[26] = v9;
  v10 = v6[28];
  v6[28] = v6[31];
  v6[31] = v10;
  v11 = v6[29];
  v6[29] = v6[30];
  v6[30] = v11;
  v12 = v6[32];
  v6[32] = v6[35];
  v6[35] = v12;
  v13 = v6[33];
  v6[33] = v6[34];
  v6[34] = v13;
  v14 = v6[36];
  v6[36] = v6[39];
  v6[39] = v14;
  v15 = v6[37];
  v6[37] = v6[38];
  v6[38] = v15;
  v16 = v6[40];
  v6[40] = v6[43];
  v6[43] = v16;
  v17 = v6[41];
  v6[41] = v6[42];
  v6[42] = v17;
  v18 = v6[44];
  v6[44] = v6[47];
  v6[47] = v18;
  v19 = v6[45];
  v6[45] = v6[46];
  v6[46] = v19;
  v20 = v6[48];
  v6[48] = v6[51];
  v6[51] = v20;
  v21 = v6[49];
  v6[49] = v6[50];
  v6[50] = v21;
  v22 = v6[52];
  v6[52] = v6[55];
  v6[55] = v22;
  v23 = v6[53];
  v6[53] = v6[54];
  v6[54] = v23;
  v24 = v6[56];
  v6[56] = v6[59];
  v6[59] = v24;
  v25 = v6[57];
  v6[57] = v6[58];
  v6[58] = v25;
  v26 = v6[60];
  v6[60] = v6[63];
  v6[63] = v26;
  v27 = v6[61];
  v6[61] = v6[62];
  v6[62] = v27;
  v28 = v6[64];
  v6[64] = v6[67];
  v6[67] = v28;
  v29 = v6[65];
  v6[65] = v6[66];
  v6[66] = v29;
  v30 = v6[68];
  v6[68] = v6[71];
  v6[71] = v30;
  v31 = v6[69];
  v6[69] = v6[70];
  v6[70] = v31;
  v32 = v6[72];
  v6[72] = v6[75];
  v6[75] = v32;
  v33 = v6[73];
  v6[73] = v6[74];
  v6[74] = v33;
  v34 = v6[76];
  v6[76] = v6[79];
  v6[79] = v34;
  v35 = v6[77];
  v6[77] = v6[78];
  v6[78] = v35;
  v36 = v6[80];
  v6[80] = v6[83];
  v6[83] = v36;
  v37 = v6[81];
  v6[81] = v6[82];
  v6[82] = v37;
  v38 = v6[84];
  v6[84] = v6[87];
  v6[87] = v38;
  v39 = v6[85];
  v6[85] = v6[86];
  v6[86] = v39;
  v40 = STACK[0x57D8];
  STACK[0xAD38] = *(STACK[0x57D8] + 8 * v7);
  return (*(v40 + 8 * ((((v7 + 7161) | 0x4008) - 9906) ^ v7)))(a1, a2, a3, a4, a5, 92);
}

uint64_t sub_1001F5320(unint64_t a1)
{
  LODWORD(STACK[0xBB14]) = v2;
  LODWORD(STACK[0xE8E8]) = -143113071;
  STACK[0x69A8] = a1;
  LOBYTE(STACK[0xE8EF]) = 1;
  v3 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * (v1 + 3285)))();
}

uint64_t sub_1001F5654@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W8>)
{
  *(***(v8 + 3936) + (v7 + a4)) = *(*(v8 + 3952) + (v7 + a4)) ^ 0x78;
  v10 = ***(v8 + 3944);
  v11 = v10 + v9;
  v12 = v10 > a2;
  if (v7 + a1 < v9 == v12)
  {
    v12 = v7 + a1 < v11;
  }

  return (*(STACK[0x57D8] + 8 * (((a6 & ~(a7 ^ a3 ^ v12)) * a5) | a7)))();
}

uint64_t sub_1001F581C()
{
  v2 = *(v0 + 864);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v4 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (((2 * (v4 + v3)) & 0xC8A85DA55FAC798ALL) - (v4 + v3) + 0x1BABD12D5029C33ALL) ^ 0xD904EF876FD87BDELL;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (0x3C855565C672363ELL - ((v7 + v6) | 0x3C855565C672363ELL) + ((v7 + v6) | 0xC37AAA9A398DC9C1)) ^ 0xA688FE4721007D3DLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (0x24F7AEF83F6D398FLL - ((v10 + v9) | 0x24F7AEF83F6D398FLL) + ((v10 + v9) | 0xDB085107C092C670)) ^ 0xB4F81791A18BD4FDLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xA1B29DC5D776132BLL;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v12, 61);
  v16 = (v14 + v15) ^ v1;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0x81683A92312CDEACLL) - (v18 + v17) - 0x40B41D4918966F57) ^ 0x678C51A92D704977;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5455012E8AB1C38FLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = 5621 * ((((((2 * (v23 + v22)) | 0xBB2BF2E2CECB5994) - (v23 + v22) + 0x226A068E989A5336) ^ 0xB2DA99CD6967F22ALL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 32028458;
  *(STACK[0xDCB8] + 3975) = *(STACK[0xDCB8] + v24 - 6152 * (((89362129 * v24) >> 32) >> 7));
  v25 = STACK[0xDCA0];
  *(v0 + 872) = STACK[0xDCA0];
  v25 += 43;
  *(v0 + 880) = v25;
  *(v0 + 296) = v25;
  v26 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2302));
  return (*(v26 + 8 * (*(v0 + 3812) ^ 0x25E2)))();
}

uint64_t sub_1001F5AB8()
{
  v4 = *(v0 + 295);
  v5 = *(v0 + 2176);
  v6 = v5 & 0xFFFFFFF8;
  v7 = STACK[0x51E8];
  v8 = STACK[0x51F0];
  v9 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v5 & 0xFFC6FEF8) + (v5 & 0x390100 | 0xFFC6FEFA) - 1828111950)) & 0xFFFFFFFFFFFFFFF8));
  v10 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (v9 + v10) ^ 0xC2AF3EAA3FF1B8E4;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) & 0xBF2B4B01B66E2E02) - (v13 + v12) - 0x5F95A580DB371702) ^ 0xC5980EA23C455C02;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x6FF046966119128DLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) & 0x19DB81A69834523 ^ 0x11A80028810100) + ((v18 + v17) ^ 0x38E153B452264FFLL) - (((v18 + v17) ^ 0x38E153B452264FFLL) & 0x19DB81A69834523)) ^ 0xA3A130E4FBD732F7;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ v3;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) & 0x464C09D1C958688ALL) - (v23 + v22) - 0x232604E8E4AC3446) ^ 0x41E4808D14A1264;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0xB2027B54DFCFFE74) - 0x26FEC255901800C6) ^ 0x8D543C84E5563CB5;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  LOBYTE(v5) = 8 * (v5 & 7);
  *(v0 + 1862) = (((0xF5D773689C7ADBCBLL - ((v29 + v28) | 0xF5D773689C7ADBCBLL) + ((v29 + v28) | 0xA288C9763852434)) ^ 0x6567EC2B6D877AD4) >> v5) ^ v4;
  LOBYTE(v27) = *(v0 + 2151);
  **(v0 + 2160) = v27;
  v30 = *(*v8 + ((v6 + ((-1263480442 - v6) | 0x60E95115) + ((v6 + 1263480440) | 0x60E95115) + 837216152) & *v7 & 0xFFFFFFFFFFFFFFF8));
  v31 = (v30 + v10) ^ 0xC2AF3EAA3FF1B8E4;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (((2 * (v32 + v33)) & 0x6DE11F649DCF091ALL) - (v32 + v33) - 0x36F08FB24EE7848ELL) ^ 0xACFD2490A995CF8ELL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0x9AB41E73E9C6B362) + 0x4D5A0F39F4E359B1) ^ 0x22AA49AF95FA4B3CLL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0x16D32544966DDAELL) - (v39 + v38) - 0xB6992A24B36ED7) ^ 0xA10404EFF3C57DFCLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v3;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xD8C7B31FCA19D9DELL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x5455012E8AB1C38FLL;
  *(STACK[0x8070] + 12106) ^= v4 ^ *(v0 + 2175) ^ v27 ^ (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v45, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v5);
  v47 = (STACK[0x8070] + 11513);
  *(v0 + 2184) = v47;
  *(v0 + 2199) = *v47;
  v48 = *(v0 + 3920) + 18;
  *(v0 + 296) = v48;
  v49 = STACK[0x57D8];
  v50 = *(STACK[0x57D8] + 8 * (v2 ^ 0x5119u));
  *(v0 + 2200) = v48;
  *(v0 + 280) = v50;
  return (*(v49 + 8 * (v1 + 9870)))();
}

uint64_t sub_1001F5F48(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char a4)
{
  *(STACK[0x8070] + 12734) = a2[1];
  *(STACK[0x8070] + 12141) = a2[2];
  *(STACK[0x8070] + 11548) = a2[3];
  *(STACK[0x8070] + 10955) = a2[4];
  *(STACK[0x8070] + 10362) = a2[5];
  *(STACK[0x8070] + 9769) = a2[6];
  *(STACK[0x8070] + 9176) = a2[7];
  *(STACK[0x8070] + 8583) = a2[8];
  *(STACK[0x8070] + 7990) = a2[9];
  *(STACK[0x8070] + 7397) = a2[10];
  *(STACK[0x8070] + 6804) = a2[11];
  *(STACK[0x8070] + 6211) = a2[12];
  *(STACK[0x8070] + 5618) = a2[13];
  *(STACK[0x8070] + 5025) = a2[14];
  v5 = STACK[0x5790];
  *(STACK[0x8070] + 4432) = a2[15];
  v7 = *(a1 + 16);
  v6 = (a1 + 16);
  *(STACK[0x8070] + 3839) = v7;
  v8 = 12337 * (((*(a2 - 3) ^ 0x1771BA12) - 393329170) ^ ((*(a2 - 3) ^ 0x702D66E5) - 1882023653) ^ ((*(a2 - 3) ^ 0x675CDC40) - 1734138944)) + 148759546;
  v9 = *(STACK[0x8070] + (12337 * (((*a2 ^ 0x30CF7696) + ((v5 - 1344176873) & 0x501E7DED ^ 0xCF30BCC6)) ^ ((*a2 ^ 0xB80E67DB) + 1207015461) ^ ((*a2 ^ 0x88C111FA) + 2000612870)) + 5477628) % 0x3282) ^ *(a2 - 15) ^ 0xB7;
  v10 = *(a2 - 14) ^ 0xB7;
  v11 = *(a2 - 2);
  a2[1] = v9;
  LOBYTE(v8) = v10 ^ *(STACK[0x8070] + v8 % 0x3282);
  v12 = *(a2 - 13) ^ 0xFFFFFFB7;
  v13 = *(a2 - 1);
  a2[2] = v8;
  v14 = *(STACK[0x8070] + (12337 * (((v11 ^ 0x44E464FF) - 1155818751) ^ ((v11 ^ 0x3199ABC0) - 832154560) ^ ((v11 ^ 0x757DCF88u) - 1971179400)) + 125948433) % 0x3282) ^ v12;
  a2[3] = v14;
  v15 = *(a2 - 12) ^ a4 ^ *(STACK[0x8070] + (12337 * (((v13 ^ 0x2D9E5297) - 765350551) ^ ((v13 ^ 0x4B2C2317) - 1261183767) ^ ((v13 ^ 0x66B27137u) - 1722970423)) + 139000979) % 0x3282);
  a2[4] = v15;
  v16 = *(a2 - 11) ^ v9;
  v17 = *(a2 - 10) ^ v8;
  v18 = *(STACK[0x8070] + 5980);
  v19 = *(a2 - 9) ^ v14;
  v20 = *(a2 - 8) ^ v15;
  v21 = *(a2 - 7) ^ v16;
  LOBYTE(v8) = v16 ^ v18;
  v22 = v18 ^ *(a2 - 3);
  v23 = *(STACK[0x8070] + 3000);
  v24 = *(STACK[0x8070] + 12518);
  v25 = *(a2 - 6) ^ v17;
  LOBYTE(v11) = v17 ^ v23;
  v26 = *(STACK[0x8070] + 4588);
  a2[14] = v25 ^ v23 ^ *(a2 - 2);
  v27 = *(a2 - 5) ^ v19;
  v28 = v19 ^ v24;
  a2[15] = v24 ^ v13 ^ v27;
  a2[13] = v21 ^ v22;
  v29 = *(a2 - 4) ^ v20;
  LOBYTE(v19) = v20 ^ v26;
  v30 = v26 ^ *a2;
  a2[5] = v8;
  a2[6] = v11;
  a2[7] = v28;
  a2[9] = v21;
  a2[10] = v25;
  a2[11] = v27;
  a2[8] = v19;
  a2[12] = v29;
  *v6 = v29 ^ v30;
  v31 = *(STACK[0x8070] + 5980);
  v32 = *(STACK[0x8070] + 12518);
  LOBYTE(v13) = *(STACK[0x8070] + 4588);
  v33 = *(STACK[0x8070] + 3000);
  a2[1] ^= v31 ^ *(STACK[0x8070] + 12734);
  a2[2] ^= *(STACK[0x8070] + 12141) ^ v33;
  a2[3] ^= *(STACK[0x8070] + 11548) ^ v32;
  a2[4] ^= *(STACK[0x8070] + 10955) ^ v13;
  a2[5] = v31 ^ *(STACK[0x8070] + 10362) ^ v8;
  a2[6] = v33 ^ *(STACK[0x8070] + 9769) ^ v11;
  a2[7] = v32 ^ *(STACK[0x8070] + 9176) ^ v28;
  a2[8] = v13 ^ *(STACK[0x8070] + 8583) ^ v19;
  a2[9] = v31 ^ *(STACK[0x8070] + 7990) ^ v21;
  a2[10] = v33 ^ *(STACK[0x8070] + 7397) ^ v25;
  v34 = v32 ^ *(STACK[0x8070] + 6804) ^ v27;
  HIDWORD(v35) = v34 ^ 0x17;
  LODWORD(v35) = (v34 ^ 0xFFFFFFBF) << 24;
  v36 = (((v35 >> 29) ^ 0x49) >> 3) | (32 * ((v35 >> 29) ^ 0x49));
  a2[11] = (v36 + (~(2 * v36) | 0xA7) - 83) ^ 0x32;
  a2[12] ^= *(STACK[0x8070] + 6211) ^ v13;
  a2[13] ^= *(STACK[0x8070] + 5618) ^ v31;
  a2[14] ^= *(STACK[0x8070] + 5025) ^ v33;
  a2[15] ^= *(STACK[0x8070] + 4432) ^ v32;
  *v6 ^= *(STACK[0x8070] + 3839) ^ v13;
  return (*(STACK[0x57D8] + 8 * ((21230 * (v4 == 0)) ^ v5)))(v6, v6);
}

uint64_t sub_1001F6680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unsigned int a53, unsigned __int8 a54, char a55, unsigned __int8 a56, char a57, char a58, unsigned __int8 a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(a46) = HIBYTE(a8);
  HIDWORD(v69) = v67;
  LODWORD(v69) = v67;
  HIDWORD(v69) = (v69 >> 14) & 0xFC000003;
  LODWORD(v69) = HIDWORD(v69);
  v70 = 1633 * ((v69 >> 11) >> 15) + 3837550;
  v71 = 1633 * ((((16 * v67) & 0xFF00000u) - 1830638354) >> 20);
  v72 = *(&a66 + v70 - 2696 * (((407830723 * v70) >> 32) >> 8));
  v73 = v72 & 0xFFFFFFEF ^ 0x27;
  HIDWORD(v69) = v72;
  LODWORD(v69) = (((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * (v72 & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73) << 25) ^ (v72 << 24);
  HIDWORD(v75) = *(&a66 + 1633 * BYTE2(a53) + 3837550 - 2696 * (((12744711 * (1633 * BYTE2(a53) + 3837550)) >> 32) >> 3));
  LODWORD(a43) = *(&a66 + 1633 * BYTE1(a53) + 3837550 - 2696 * (((12744711 * (1633 * BYTE1(a53) + 3837550)) >> 32) >> 3));
  HIDWORD(v77) = *(&a66 + 1633 * a53 + 3837550 - 2696 * (((12744711 * (1633 * a53 + 3837550)) >> 32) >> 3));
  LODWORD(v75) = *(&a66 + 1633 * HIBYTE(a53) + 3837550 - 2696 * (((12744711 * (1633 * HIBYTE(a53) + 3837550)) >> 32) >> 3));
  LODWORD(a44) = *(&a66 + 1633 * a59 + 3837550 - 2696 * (((12744711 * (1633 * a59 + 3837550)) >> 32) >> 3));
  LODWORD(v76) = *(&a66 + v71 - 2696 * (((12744711 * v71) >> 32) >> 3));
  LODWORD(a45) = *(&a66 + (1633 * a45 + 3837550) % 0xA88u);
  LODWORD(v77) = *(&a66 + 1633 * a54 + 3837550 - 2696 * (((12744711 * (1633 * a54 + 3837550)) >> 32) >> 3));
  HIDWORD(v76) = *(&a66 + 1633 * a56 + 3837550 - 2696 * (((12744711 * (1633 * a56 + 3837550)) >> 32) >> 3));
  return (*(v68 + 8 * v66))(2129432, ((v69 >> 25) >> 3) | (32 * (v69 >> 25)), &STACK[0x207FB8], 255, 3233857729, 5440, -2696, 2831622, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v75, v76, v77, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_1001F6A48()
{
  v1 = STACK[0xA5C0] - 0x79CEC8CF5A6FCEB2;
  v2 = STACK[0x57D8];
  STACK[0xD540] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * ((v0 + 3896) ^ v0 ^ (13212 * ((v0 - 1712500797) > 0xDE095ACD)))))(v1);
}

uint64_t sub_1001F6B54(uint64_t a1, unsigned int a2)
{
  LODWORD(STACK[0x4E08]) = LODWORD(STACK[0x4DE0]) | LODWORD(STACK[0x4E18]);
  LODWORD(STACK[0x4B50]) = LODWORD(STACK[0x4DD8]) | LODWORD(STACK[0x4DF0]);
  LODWORD(STACK[0x4DF8]) |= LODWORD(STACK[0x4DA0]);
  LODWORD(STACK[0x4E18]) = LODWORD(STACK[0x4DC8]) << 8;
  return (*(STACK[0x57D8] + 8 * (a2 ^ 0xEFF7CF03 ^ (((2826 * (a2 ^ 0xEFF7DA43)) ^ 0x1548) * (a2 > 0x3CB913CF)))))();
}

uint64_t sub_1001F6C14()
{
  v3 = STACK[0x1B68];
  LODWORD(STACK[0x1D4D0]) = STACK[0x1B68];
  LODWORD(STACK[0x1D4C4]) = (v0 + 805129929) ^ v3;
  STACK[0x1D4E0] = v3 + 4151854225u;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 805130296) ^ 0x1C) - v3;
  STACK[0x1D4D8] = v1 - v3;
  LODWORD(STACK[0x1D4CC]) = v0 + 805130296 - v3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5, &STACK[0x1D270], &STACK[0x67A7]);
}

uint64_t sub_1001F6CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x77A8];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 + 3368)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1001F6DD4@<X0>(int a1@<W8>)
{
  v3 = STACK[0x1F28];
  LODWORD(STACK[0x1D4D0]) = STACK[0x1F28];
  STACK[0x1D4E0] = v3 + 36;
  LODWORD(STACK[0x1D4C4]) = v3 ^ (a1 - 365493293) ^ 0xDCC;
  v4 = a1 - 365493293 - v3;
  LODWORD(STACK[0x1D4CC]) = v4;
  STACK[0x1D4D8] = v1 - v3;
  LODWORD(STACK[0x1D4C8]) = v4 - 6;
  LODWORD(STACK[0x1D4C0]) = (a1 - 1079089617) ^ v3;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2411)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1001F6F18()
{
  v0 = LODWORD(STACK[0x2078]) | 0x2520;
  v1 = STACK[0x57D8];
  v2 = STACK[0x207C];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x207C]));
  return (*(v1 + 8 * (v2 ^ 0x20AB ^ v0)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_1001F6FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *(v13 + 528) + 4 * v7;
  v23 = *STACK[0x51E8];
  v24 = *v14;
  v25 = *(*v14 + (((v22 & 0xFFFFFFF8 & v18) + (v22 & 0xFFFFFFF8 | (v18 + 4)) - 2072072818) & v23 & 0xFFFFFFFFFFFFFFF8));
  v26 = (__ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8) + v25) ^ (STACK[0x5770] - 0x4FA88BC42E575A37);
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v12;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v19 - ((v32 + v31) | v19) + ((v32 + v31) | 0x86F7A9796B2D6E25)) ^ 0x9AF4BE418F8B2F21;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ a2;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - ((2 * (v37 + v36)) & 0x1FA6CFE5BE14D116) - 0x702C980D20F59775) ^ 0xDD22EFBBC7D2BE29;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = *(v11 + 8) + 4 * v7;
  v42 = v40 + v39;
  v43 = *(*v14 + (((v41 & 0xFFFFFFF8) - 133448597) & v23 & 0xFFFFFFF8));
  v44 = (__ROR8__(v41 & 0xFFFFFFFFFFFFFFF8, 8) + v43) ^ v20;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a7;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v12;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = __ROR8__((((2 * (v50 + v49)) & 0xF2B69C69361855CELL) - (v50 + v49) - 0x795B4E349B0C2AE8) ^ 0x9AA7A6F38055941CLL, 8);
  v52 = (((2 * (v50 + v49)) & 0xF2B69C69361855CELL) - (v50 + v49) - 0x795B4E349B0C2AE8) ^ 0x9AA7A6F38055941CLL ^ __ROR8__(v49, 61);
  v53 = (a6 - (v42 | a6) + (v42 | v9)) ^ 0x959107C8E1AB086CLL;
  v54 = (((2 * (v51 + v52)) | 0xA7A0ACC750127AE2) - (v51 + v52) - 0x53D05663A8093D71) ^ 0x2EDA9CC941E5056CLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ a3;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) | 0x8DBA696EA645A6F8) - (v58 + v57) + 0x3922CB48ACDD2C84) ^ 0xCDFD46D9A2D4E9D3;
  v60 = __ROR8__(v53, 8) + (v53 ^ __ROR8__(v39, 61));
  v61 = v59 ^ __ROR8__(v57, 61);
  v62 = __ROR8__(v59, 8);
  v63 = ((2 * (v62 + v61)) | 0x8E6F592232F2C6E2) - (v62 + v61);
  v64 = *(STACK[0x57C0] + 8) + 4 * v7;
  v65 = *(v24 + (v23 & ((v64 & 0xFFFFFFF8 & v17) - 1098992547 + (v64 & 0xFFFFFFF8 | (v17 + 6))) & 0xFFFFFFF8));
  v66 = (__ROR8__(v64 & 0xFFFFFFFFFFFFFFF8, 8) + v65) ^ v20;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0xBBA5166C06A9FFD6) - (v68 + v67) + 0x222D74C9FCAB0014) ^ 0xA86A05850F274797;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ v12;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (v73 + v72 - ((2 * (v73 + v72)) & 0x139A93E9404007FELL) - 0x7632B60B5FDFFC01) ^ 0x95CE5ECC448642FBLL;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ a2;
  v77 = __ROR8__(v76, 8);
  v78 = v76 ^ __ROR8__(v75, 61);
  v79 = (v77 + v78 - ((2 * (v77 + v78)) & 0x43B00F662753E480) - 0x5E27F84CEC560DC0) ^ 0xF3298FFA0B7124E2;
  v80 = v79 ^ __ROR8__(v78, 61);
  LODWORD(v63) = (((v63 + 0x38C8536EE6869C8FLL) ^ 0x568921798EE5DD31) >> (8 * (v41 & 7u))) ^ *v41;
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xB20726EF1F63AAFLL;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = *(v24 + ((((v22 - 4) & 0xFFFFFFF8 & v15) + ((v22 - 4) & 0xFFFFFFF8 | (v15 + 4)) - 326508972) & v23));
  v85 = (__ROR8__((v22 - 4) & 0xFFFFFFFFFFFFFFF8, 8) + v84) ^ v20;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ a7;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ v12;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ v8;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ a2;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ a3;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = HIDWORD(v16) + ((((((2 * v60) & 0xAF76A1D44FCB6E58) - v60 + 0x2844AF15D81A48D3) ^ 0xB9FA22FD4F86F693) >> (8 * (v22 & 7u))) ^ *v22) + HIDWORD(v21) + STACK[0x5760] * v63 + STACK[0x57A0] * ((((((2 * (v83 + v82)) | 0x5638CEED9ABB3EBCLL) - (v83 + v82) - 0x2B1C6776CD5D9F5ELL) ^ 0xBAA2EA9E5AC1211ELL) >> (8 * (v64 & 7u))) ^ *v64);
  v98 = (__ROR8__(v95, 8) + v96) ^ 0xB20726EF1F63AAFLL;
  v99 = __ROR8__(v98, 8);
  v100 = __ROR8__(v96, 61);
  *(v22 - 4) = v97 ^ (((((2 * (v99 + (v98 ^ v100))) | 0x2E0F7F38675859CELL) - (v99 + (v98 ^ v100)) - 0x1707BF9C33AC2CE7) ^ 0x86B93274A43092A7) >> (8 * ((v22 - 4) & 7)));
  return (*(STACK[0x57D8] + 8 * ((70 * (v7 + 1 != v10)) ^ STACK[0x5780])))();
}

uint64_t sub_1001F765C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v9 = v4 - 1;
  v10 = v2 + v9 + v3;
  v11 = (__ROR8__((a2 + v9) & 0xFFFFFFFFFFFFFFF8, 8) - 0x5B3EC18598D49E0ALL) & 0xF9FFFFFFFFFFFFFFLL;
  v12 = v11 ^ 0x8F18BD9A62CD5640;
  v11 ^= 0xA9114E495B9659F5;
  v13 = (__ROR8__(v12, 8) + v11) ^ 0x9D63C3648794ABC0;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v11, 61);
  v16 = (((2 * (v14 + v15)) | 0x522ADAC7A4B9BB72) - (v14 + v15) - 0x29156D63D25CDDB9) ^ 0xA0221FD3D1DF2A65;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v7;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (0x963C7FB52C12E7F9 - ((v20 + v19) | 0x963C7FB52C12E7F9) + ((v20 + v19) | 0x69C3804AD3ED1806)) ^ 0x87506FB3287C789DLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v6;
  v24 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8) - 0x5B3EC18598D49E0ALL;
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = v24 ^ 0x8B18BD9A62CD5640;
  v24 ^= 0xAD114E495B9659F5;
  v27 = __ROR8__(v26, 8);
  v28 = __ROR8__(v23, 8) + v25;
  v29 = (0x9C681BC7BAA1E4D1 - ((v27 + v24) | 0x9C681BC7BAA1E4D1) + ((v27 + v24) | 0x6397E438455E1B2ELL)) ^ 0xFEF4275CC2CAB0EELL;
  v30 = v29 ^ __ROR8__(v24, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v28 - ((2 * v28) & 0xC32E0D7C3767078CLL) + 0x619706BE1BB383C6) ^ 0x4F3A2BEFFCB20412;
  v33 = (((2 * (v31 + v30)) & 0x942E65EE602EA2C2) - (v31 + v30) - 0x4A1732F730175162) ^ 0x3CDFBFB8CC6B5942;
  v34 = v33 ^ __ROR8__(v30, 61);
  v35 = __ROR8__(v32, 8) + (v32 ^ __ROR8__(v25, 61));
  v36 = __ROR8__(v33, 8);
  v37 = (((2 * (v36 + v34)) & 0xB5518463AD05BBB6) - (v36 + v34) + 0x25573DCE297D2224) ^ 0xD753457A2A18247;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a1;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v6;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0xBE7E0D15EF5656BCLL) - (v43 + v42) - 0x5F3F068AF7AB2B5FLL) ^ 0x8E6DD424EF555375;
  *v10 = (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v42, 61))) ^ v8) >> (8 * (v10 & 7u))) ^ (((0xD3449D662B87B9C4 - (v35 | 0xD3449D662B87B9C4) + (v35 | 0x2CBB6299D478463BLL)) ^ 0x737F72B741F80E46) >> (8 * ((a2 + v9) & 7))) ^ *(a2 + v9);
  return (*(STACK[0x57D8] + 8 * ((14775 * (v9 == 0)) ^ v5)))();
}

uint64_t sub_1001F79FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X7>, int8x16_t *a5@<X8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int8x16_t a8@<Q2>, int8x16_t a9@<Q3>, int8x16_t a10@<Q4>, int8x16_t a11@<Q5>, int8x16_t a12@<Q6>, int8x16_t a13@<Q7>)
{
  v27.i64[0] = v15 + a2;
  v27.i64[1] = a1 + a2 - 4;
  v28.i64[0] = a1 + a2 - 7;
  v29.i64[0] = a1 + a2 - 5;
  v28.i64[1] = a1 + a2 - 8;
  v29.i64[1] = a1 + a2 - 6;
  v30.i64[0] = a1 + a2 - 1;
  v30.i64[1] = a1 + a2 - 2;
  v31 = vandq_s8(v30, *&STACK[0x4D70]);
  v32 = vandq_s8(v29, *&STACK[0x4D70]);
  v33 = vandq_s8(v28, *&STACK[0x4D70]);
  v34 = vandq_s8(v27, *&STACK[0x4D70]);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0x4BD0]);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0x4BD0]);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0x4BD0]);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x4BD0]);
  v39 = vaddq_s64(vsubq_s64(vorrq_s8(v38, a8), vorrq_s8(v38, v25)), v25);
  v40 = vaddq_s64(vsubq_s64(vorrq_s8(v37, a8), vorrq_s8(v37, v25)), v25);
  v41 = veorq_s8(v40, v24);
  v42 = veorq_s8(v39, v24);
  v43 = veorq_s8(v39, a9);
  v44 = veorq_s8(v40, a9);
  v45 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v43), a12);
  v46 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v44), a12);
  v47 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v48 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v48);
  v51 = veorq_s8(vaddq_s64(v49, v47), v20);
  v52 = veorq_s8(v50, v20);
  v53 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = vaddq_s64(v56, v54);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, a7), vorrq_s8(v58, a11)), a11), v19);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v57, a7), vorrq_s8(v57, a11)), a11), v19);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v62);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v61);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), a13), v64), v21), v22);
  v66 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), a13), v63), v21), v22);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v66);
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68), v23);
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69), v23);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, v26), vorrq_s8(v71, a10)), a10), v18);
  v73 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, v26), vorrq_s8(v70, a10)), a10), v18);
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v74, v73);
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), a6);
  v80 = veorq_s8(v78, a6);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = vdupq_n_s64(v14);
  v83 = vaddq_s64(vsubq_s64(vorrq_s8(v36, a8), vorrq_s8(v36, v25)), v25);
  v120.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v81), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v82)));
  v120.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL))), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v82)));
  v84 = veorq_s8(v83, v24);
  v85 = veorq_s8(v83, a9);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85), a12);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), v20);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v90, a7), vorrq_s8(v90, a11)), a11), v19);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), a13), v93), v21), v22);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v23);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, v26), vorrq_s8(v96, a10)), a10), v18);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), a6);
  v100 = vaddq_s64(vsubq_s64(vorrq_s8(v35, a8), vorrq_s8(v35, v25)), v25);
  v120.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL))), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v82)));
  v101 = veorq_s8(v100, v24);
  v102 = veorq_s8(v100, a9);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), a12);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v20);
  v106 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v108 = veorq_s8(v105, v106);
  v109 = vaddq_s64(v107, v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, a7), vorrq_s8(v109, a11)), a11), v19);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), a13), v112), v21), v22);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v23);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, v26), vorrq_s8(v115, a10)), a10), v18);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), a6);
  v120.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL))), v17), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v82)));
  *(v16 + a2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v120, a5[26])), *(a1 + a2 - 8));
  return (*(STACK[0x57D8] + 8 * (((a4 == a2) * v13) ^ a3)))();
}

uint64_t sub_1001F7F60@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 0x683CBC57EAB92A36);
  STACK[0xA350] = 0;
  STACK[0x7C80] = 0;
  return (*(STACK[0x57D8] + 8 * (((((v2 == 0x308E083E0C524CBELL) ^ (((v1 + 127) & 0x36) + 15)) & 1) * (((((v1 - 172178049) & 0xA433F36) - 9246) | 0xE0) ^ 0x1297)) ^ (v1 - 172178049) & 0xA433F36)))();
}

uint64_t sub_1001F7FF0@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0xA898] + v1;
  STACK[0xC900] = a1;
  LODWORD(STACK[0xCC58]) = v3;
  STACK[0x6A90] = v4;
  return (*(STACK[0x57D8] + 8 * ((93 * (*(STACK[0x8088] - 0x683CBC57EAB929C2) & 1 | (LODWORD(STACK[0xC1CC]) == ((v2 + 622093769) & 0xDAEB76F1) - 39882 + 5189 * (v2 ^ 0x59B3)))) ^ v2)))();
}

uint64_t sub_1001F8160()
{
  v0 = STACK[0x57D8];
  v1 = STACK[0x3AB8];
  STACK[0x8660] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3AB8]));
  return (*(v0 + 8 * (v1 ^ 0x37C ^ ((LODWORD(STACK[0x3AB4]) > 0x707399C) * LODWORD(STACK[0x3ABC])))))();
}

uint64_t sub_1001F8338()
{
  v3 = *(v1 + 2968);
  v4 = *STACK[0x51E8];
  v5 = *STACK[0x51F0];
  v6 = *(v5 + (((v3 & 0xFFFFFFF8 ^ 0x50096928) - 489053735 + ((2 * (v3 & 0xFFFFFFF8)) | 0x5FED2DA7)) & v4));
  v7 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = (v6 + v7 - ((2 * (v6 + v7)) & 0x9915881FFC427488) + 0x4C8AC40FFE213A44) ^ 0x8E25FAA5C1D082A0;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x65F254DD188DB4FCLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x6FF046966119128DLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0x7FB0423F75BA911ALL) - (v14 + v13) + 0x4027DEE04522B772) ^ 0xE19543259254A459;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0xDD05418C442FDC20) - 0x117D5F39DDE811F0) ^ 0x1868087D7F2A6FCLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__((((2 * (v20 + v19)) & 0x1D764FD3DC24977ALL) - (v20 + v19) + 0x7144D81611EDB442) ^ 0xA9836B09DBF46D9CLL, 8);
  v22 = (((2 * (v20 + v19)) & 0x1D764FD3DC24977ALL) - (v20 + v19) + 0x7144D81611EDB442) ^ 0xA9836B09DBF46D9CLL ^ __ROR8__(v19, 61);
  v23 = (v21 + v22 - ((2 * (v21 + v22)) & 0xB84E09B565AEA0ALL) + 0x5C2704DAB2D7505) ^ 0x51977163219CB68ALL;
  LODWORD(v23) = 3903 * ((((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v3 & 7u))) ^ *(v1 + 295)) + 4008381;
  v24 = *(v1 + 4008);
  v25 = *(v24 + v23 - 5896 * (((1456909 * v23) >> 32) >> 1));
  v26 = *(v1 + 4000);
  *(v26 + 36803) = v25;
  v27 = *(v1 + 3752) - 0x30BDFED8F32E671DLL;
  v28 = *(v5 + (v4 & (((*(v1 + 3752) + 215062755) & 0xB5AA9F40 | 0x4A5560BB) - 555828759 + ((*(v1 + 3752) + 215062755) & 0x4A5560B8 | 0xB5AA9F44) + 1) & 0xFFFFFFF8));
  v29 = (__ROR8__(v27 & 0xFFFFFFFFFFFFFFF8, 8) + v28) ^ 0x91364DCB68334DBLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x448D6F6CA711D855;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (0x5B1D11A3D3BDCD8ELL - ((v33 + v32) | 0x5B1D11A3D3BDCD8ELL) + ((v33 + v32) | 0xA4E2EE5C2C423271)) ^ 0x5110108F24E81009;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x67536EC0FB8B549DLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v2;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * ((v40 + v39) ^ 0x5064E08C3CFD1EA9)) | 0xB385B3416D4B808ELL) - ((v40 + v39) ^ 0x5064E08C3CFD1EA9) - 0x59C2D9A0B6A5C047) ^ 0x2DD572492BB85AB7;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0x978252CB748AC580) - (v43 + v42) + 0x343ED69A45BA9D3FLL) ^ 0x74F71970797F56DELL;
  LODWORD(v42) = 3903 * ((((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v42, 61))) ^ 0x6F635C2EE5D7D2C6) >> (8 * (v27 & 7u))) ^ *v27) + 4008381;
  *(v26 + 39627) = *(v24 + v42 - 5896 * (((1456909 * v42) >> 32) >> 1));
  v45 = *(v1 + 3984) + 24;
  *(v1 + 296) = v45;
  v46 = STACK[0x57D8];
  v47 = *(STACK[0x57D8] + 8 * (STACK[0x4D40] + 3291));
  *(v1 + 2976) = v45;
  *(v1 + 280) = v47;
  return (*(v46 + 8 * (v0 + 8890)))();
}

uint64_t sub_1001F882C()
{
  v0 = STACK[0x57D8];
  v1 = STACK[0x1CF8];
  v2 = STACK[0x1CF8] + 20021;
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * STACK[0x1CF8]);
  return (*(v0 + 8 * ((v2 ^ 0x5F00) + v1)))();
}

uint64_t sub_1001F88C4@<X0>(uint64_t a1@<X8>)
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
  *(v3 - 0x55A8D952E5D46896) = *v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1001F8E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = STACK[0x4BFC];
  v6 = STACK[0x6DF8];
  v7 = STACK[0x57D8];
  v8 = STACK[0x5E38];
  STACK[0x5F68] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x4BFC]));
  return (*(v7 + 8 * (v5 ^ 0x6B3B ^ (v5 - 817700178) & 0x30BD5DE3)))(a1, v6, a3, a4, a5, STACK[0x57C0], 395, v8);
}

uint64_t sub_1001F8EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x58F0];
  v8 = STACK[0x57D8];
  STACK[0xD060] = *(STACK[0x57D8] + 8 * v6);
  return (*(v8 + 8 * (v6 + v6 + 8796 - 3116)))(v7, a2, a3, a4, a5, a6, 0xF41651499F5E3C67, 0xE5AF1AB32EBD3CDDLL);
}

uint64_t sub_1001F8F50@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  STACK[0x6BF8] = v5;
  *(a1 + 4072) = a2;
  STACK[0xB2E0] = v4;
  LODWORD(STACK[0x651C]) = v3;
  STACK[0x7F28] = v6;
  LODWORD(STACK[0xB654]) = v7;
  STACK[0x8778] = v9;
  STACK[0xA3E8] = v8;
  v10 = STACK[0x7ED8];
  v11 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xC6C8] = v11;
  STACK[0x6330] = (v11 + 16);
  STACK[0x6FC8] = (v11 + 32);
  STACK[0x7ED8] = v10 + 80;
  STACK[0x7BB0] = 0;
  return (*(STACK[0x57D8] + 8 * ((74 * (((v2 + (v2 ^ 0x6F)) ^ (v5 == 0)) & 1)) ^ v2)))();
}

uint64_t sub_1001F900C()
{
  v0 = STACK[0x2054];
  v1 = LODWORD(STACK[0x2054]) + 16622;
  v2 = STACK[0x57D8];
  STACK[0xCB60] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2054]));
  return (*(v2 + 8 * (v0 ^ 0x55A2 ^ v1)))();
}

uint64_t sub_1001F92E4@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0xBF50] + v1;
  STACK[0xBF40] = a1;
  LODWORD(STACK[0x9A84]) = v3;
  STACK[0xAF88] = v4;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1001F9404@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, unint64_t a3@<X8>)
{
  v4 = __ROR8__(a3 & 0xFFFFFFFFFFFFFFF8, 8) + a2;
  v5 = __ROR8__(v4 ^ 0x5662268C9D216ADLL, 8);
  v4 ^= 0x19BD561D2BFA5152uLL;
  v6 = (v5 + v4) ^ a1;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x1038643522CD1792;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xBFF6C21B210E4F37;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ ((v3 + 17319) | 0x1000u) ^ 0x9882E727DB3797C2;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x5FD252103B569EALL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x7B5626353E243BAALL;
  *a3 = (((__ROR8__(v16, 8) + (v16 ^ __ROR8__(v15, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * (a3 & 7u))) ^ 0x13;
  return (*(STACK[0x57D8] + 8 * (v3 + 4921)))(0x1C64917143BAF700);
}

uint64_t sub_1001F95F0()
{
  *STACK[0xC330] = STACK[0xA648];
  *STACK[0xCC80] = STACK[0x8EDC];
  return (*(STACK[0x57D8] + 8 * (v0 + 1388)))();
}

uint64_t sub_1001F970C@<X0>(int a1@<W8>)
{
  v6 = (a1 - 22613);
  STACK[0x6208] = v1 ^ v6 ^ (v2 - v6 + v3);
  v7 = 551690071 * ((0xCAEE4BE0F0FEC9E8 - ((v5 - 240) | 0xCAEE4BE0F0FEC9E8) + STACK[0x2530]) ^ 0x448CE6D141EC6540);
  LODWORD(STACK[0x1D4C8]) = (v6 ^ 0x9631D7C3) - v7;
  STACK[0x1D4D8] = v4 - v7;
  LODWORD(STACK[0x1D4D0]) = v7;
  LODWORD(STACK[0x1D4C4]) = v7 ^ v6 ^ 0x9631D915;
  LODWORD(STACK[0x1D4C0]) = (a1 - 1079089617) ^ v7;
  STACK[0x1D4E0] = v7 + 4151854225u;
  LODWORD(STACK[0x1D4CC]) = (v6 ^ 0x9631D7D1) - v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (a1 + 9201)))(v5 - 240);
  return (*(v8 + 8 * SLODWORD(STACK[0x1D4D4])))(v9);
}

uint64_t sub_1001F980C()
{
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 2014418728;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1001F9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] - 22614;
  v8 = STACK[0x51B8] - 20915;
  v9 = STACK[0x57D8];
  v10 = STACK[0xBD78];
  STACK[0x7D00] = *(STACK[0x57D8] + 8 * v8);
  return (*(v9 + 8 * (v7 + v8 + 5278)))(a1, a2, a3, a4, a5, a6, a7, v10);
}

uint64_t sub_1001F9928()
{
  *STACK[0x87A8] = 0;
  *STACK[0x83A0] = -769884012;
  *STACK[0x60A0] = -143113071;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1001F9984@<X0>(unint64_t a1@<X8>)
{
  STACK[0xBBD8] = a1;
  LODWORD(STACK[0x91D0]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1001F99C0()
{
  v0 = STACK[0x2C80];
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * STACK[0x2C80]);
  return (*(v1 + 8 * ((6551 * ((v0 ^ 0xFC9BF20C) > 0xB7512ADA)) ^ (v0 - 295))))();
}

uint64_t sub_1001F9A30@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x6D50]) = v2;
  LODWORD(STACK[0xD318]) = v3;
  LODWORD(STACK[0xD31C]) = a1;
  LODWORD(STACK[0x7154]) = v3;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1001F9BE8@<X0>(char a1@<W2>, char a2@<W5>, char a3@<W6>, char a4@<W8>)
{
  v10 = a4 & 0x40 ^ 0x4E;
  v11 = v4 & 0xF8 ^ 0x22;
  v12 = a4 ^ (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & 0x1C ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  v13 = v4 ^ (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  v14 = a1 & 0xD0 ^ 0x16;
  LODWORD(STACK[0x4318]) = LODWORD(STACK[0x54D0]) | LODWORD(STACK[0x54E0]);
  LODWORD(STACK[0x42D0]) = LODWORD(STACK[0x5430]) | LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x4320]) = LODWORD(STACK[0x5408]) | LODWORD(STACK[0x5420]);
  v15 = ((v12 ^ 0x40) << 16) | ((v13 ^ 0xF8) << 8);
  v16 = (((a1 ^ (2 * ((a1 ^ 0x34) & (2 * ((a1 ^ 0x34) & (2 * ((a1 ^ 0x34) & (2 * ((a1 ^ 0x34) & (2 * ((a1 ^ 0x34) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xD78173) & ~v15 | v15 & 0x287E00) << 8;
  LODWORD(STACK[0x5500]) = v16 ^ 0x204054FF;
  LODWORD(STACK[0x43F0]) = v16 & 0x9EBFA800;
  v17 = STACK[0x54F0];
  v18 = STACK[0x54F0] & 0xD8 ^ 0x12;
  HIDWORD(v19) = v17 ^ (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18));
  LODWORD(v19) = BYTE4(v19) & 0xF8 ^ 0xD8;
  v20 = STACK[0x5510];
  LOBYTE(v16) = (v20 & 0xB4 | 0x41) ^ v20 & 0x82;
  v21 = STACK[0x5520];
  LOBYTE(v18) = STACK[0x5520] & 0xE2 ^ 0x3F;
  v22 = (((v21 ^ (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & 0x16 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xE2) << 8) | (((v20 ^ (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * (v20 & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x36) << 16);
  v23 = STACK[0x5540];
  LOBYTE(v16) = STACK[0x5540] & 0x68 ^ 0xFA;
  v24 = (((v23 ^ (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x75E0E5) & ~v22 | v22 & 0x8A1F00) << 8;
  v25 = v24 ^ 0x820050FF;
  LODWORD(STACK[0x43E8]) = v24 & 0x6D3F2F00;
  LOBYTE(v24) = v9 & 0xA ^ 0xEB;
  LOBYTE(v21) = v8 & 0x9A ^ 0x33;
  v26 = (((v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * (v21 ^ v8 & 0x2E)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x9A) << 8) | (((v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & 0x3E ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xA) << 16);
  v27 = STACK[0x5600];
  v28 = (v27 & 0xB4 | 0x48) ^ v27 & 0xF0;
  v29 = (((v27 ^ (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0xF8BB81) & ~v26 | v26 & 0x74400) << 8;
  v30 = v29 ^ 0x70428FFu;
  LODWORD(STACK[0x43C8]) = v29 & 0x30631600;
  v31 = v7 & 0xF0 ^ 0xA6;
  LOBYTE(v29) = (v6 & 0xB4 | 0xA) ^ v6 & 0x7C;
  v32 = (((v7 ^ (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0xF0) << 16) | (((v6 ^ (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xC8) << 8);
  LOBYTE(v29) = v5 & 0x6A ^ 0x7B;
  v33 = (v5 ^ (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & 0x1E ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)));
  v34 = ((v33 ^ 0x432A39) & ~v32 | v32 & 0xBCD500) << 8;
  v35 = v34 ^ 0xACC0A8FF;
  LODWORD(STACK[0x5138]) = v34 & 0x11350400;
  v36 = a3 & 0xFA ^ 0xA3;
  v37 = a2 & 0x96 ^ 0x31;
  v38 = (a2 ^ (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * (v37 ^ a2 & 0x22)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)));
  v39 = (v38 << 8) & 0xFF00FFFF | (((a3 ^ (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * (v36 ^ a3 & 0xE)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xFA) << 16);
  v40 = (v39 ^ 0x3E68FF) & (v38 ^ 0x3EECD8) | v39 & 0xC11300;
  LOBYTE(v39) = *(STACK[0x5750] + 2443);
  v41 = *(STACK[0x56D0] + 1791);
  LOBYTE(v34) = v41 & 0x1A ^ 0xF3;
  v42 = (v39 & 0xB4 | 0x42) ^ v39 & 0x8C;
  LOBYTE(v24) = v41 ^ (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * (v34 ^ v41 & 0x2E)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ 0x1A;
  v43 = *(STACK[0x5770] + 1654);
  v44 = (((v39 ^ (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0x38) << 8) | (v24 << 16);
  LOBYTE(v24) = (v43 & 0xB4 | 2) ^ v43 & 0xC;
  v45 = *(STACK[0x57C0] + 3452);
  v46 = ((v43 ^ (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xF249B4) & ~v44 | v44 & 0xDB600;
  LOBYTE(v24) = v45 & 0xD0 ^ 0x96;
  v47 = v45 ^ (2 * ((v45 ^ 0x34) & (2 * ((v45 ^ 0x34) & (2 * ((v45 ^ 0x34) & (2 * ((v45 ^ 0x34) & (2 * ((v45 ^ 0x34) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  v48 = *(STACK[0x5730] + 949);
  LOBYTE(v22) = v48 & 0xE0 ^ 0xBE;
  v49 = *(STACK[0x5780] + 577);
  v50 = 2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * (v49 & 0xB4)) ^ v49 & 0xB4)) ^ v49 & 0xB4)) ^ v49 & 0xB4);
  v51 = v49 ^ (2 * ((v50 ^ v49) & 0x34 ^ v50 & v49)) ^ 0xB4;
  v52 = *(STACK[0x55E0] + 1965);
  v53 = (v51 << 16) | (((v48 ^ (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xE0) << 8);
  LOBYTE(v22) = v52 & 0xB6 | 1;
  LODWORD(STACK[0x4348]) = ((((v52 ^ (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * (v52 & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xDF318C) & ~v53 | v53 & 0x20CE00) << 8) & 0x18BB700;
  LOBYTE(v53) = *(STACK[0x5670] + 3543);
  v54 = v53 & 0x48 ^ 0xCA;
  LOBYTE(v53) = v53 ^ (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * v54) | v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54));
  v55 = *(STACK[0x54B0] + 3854);
  LOBYTE(v34) = v55 & 0x8C ^ 0xAC;
  v56 = *(STACK[0x5490] + 463);
  v57 = ~v56 | 0x9D;
  HIDWORD(v19) = v19 >> 3;
  LODWORD(v19) = HIDWORD(v19);
  LODWORD(STACK[0x43A8]) = v19 >> 29;
  LODWORD(STACK[0x4340]) = (v40 << 8) & 0x51716800;
  v58 = v47;
  LODWORD(STACK[0x4370]) = (v46 << 8) & 0x48F4F800;
  v59 = (((v55 ^ (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x8C) << 16) | (((v56 ^ (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & 0x16 ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x62) << 8);
  v60 = ((v53 ^ 0x105E1B) & ~v59 | v59 & 0xEFA100) << 8;
  v61 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5640]));
  LODWORD(STACK[0x43D8]) = v60 & 0xF8A6B800;
  return v61(v25, v30, v58, v33, v35, (v46 << 8) ^ 0x50203FFu, v60 ^ 0x70104FFu, 1);
}

uint64_t sub_1001FAAB0()
{
  v1 = (v0 - 296484870) & 0x11ABFFFF;
  v2 = STACK[0x56D0];
  if ((STACK[0x53C8] & 2) != 0)
  {
    v2 = STACK[0x57C0];
  }

  LODWORD(STACK[0x5288]) = v2;
  LODWORD(STACK[0x54E0]) = STACK[0x5720] & 0xFE;
  v3 = LODWORD(STACK[0x5730]) ^ 0xBDBEFD00;
  LODWORD(STACK[0x5580]) = v3;
  LODWORD(STACK[0x5220]) = v3 & 0xFFFFFFF8;
  LODWORD(STACK[0x5170]) = LODWORD(STACK[0x5780]) ^ ~(STACK[0x56E0] & LODWORD(STACK[0x5740]));
  v4 = (v1 ^ 0x10114C3) * (LODWORD(STACK[0x53F8]) ^ 0x75);
  LODWORD(STACK[0x56E0]) = v4;
  LODWORD(STACK[0x53F8]) = v4 ^ 0x75757575;
  STACK[0x57C0] = STACK[0xD700];
  v5 = ((LODWORD(STACK[0x5750]) ^ 0xEE591DDD) - 545027663) ^ ((LODWORD(STACK[0x5750]) ^ 0xAD19A9AD) - 1664926271) ^ ((LODWORD(STACK[0x5750]) ^ 0x47E736DD) + 1983750833);
  v6 = *(STACK[0x57D8] + 8 * v0);
  LODWORD(STACK[0x56D0]) = v1 ^ 0x6BB;
  return v6(v5, (v5 + 1424659769), 4287343386, 0xBC09FE717998DE13);
}

uint64_t sub_1001FAD10()
{
  v1 = STACK[0xA560];
  STACK[0xB150] = STACK[0xA560];
  return (*(STACK[0x57D8] + 8 * (((v1 == 0x683CBC57EAB92A3ELL) * (((v0 - 907104579) & 0x361153B5 ^ 0xFFFFE478) + ((v0 + 1911135342) & 0x8E167AD6))) ^ v0)))();
}

uint64_t sub_1001FADA0()
{
  *v1 = -769884012;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 85541415;
  *(v1 + 32) = 0;
  *(v1 + 40) = 85541415;
  STACK[0xB430] = v1 + 40;
  *(v1 + 48) = 0;
  STACK[0x6CE8] = v1 + 48;
  *(v1 + 56) = 85541415;
  STACK[0x6C18] = v1 + 56;
  *(v1 + 64) = 0;
  STACK[0xB908] = v1 + 64;
  *(v1 + 72) = 85541415;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *v2 = -769884012;
  v3 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v3 + 8 * ((((v0 + 938068533) & 0xC8167BED) - 13097) ^ v0)))();
}

uint64_t sub_1001FAE9C()
{
  v1 = STACK[0x51B8] + 3586;
  LODWORD(STACK[0x6D34]) = v0;
  v2 = STACK[0x57D8];
  v3 = STACK[0x3778];
  STACK[0x5C20] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3778]));
  return (*(v2 + 8 * (v1 - 14673 + v3)))();
}

uint64_t sub_1001FAFB4(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v19 = STACK[0x690];
  v20 = STACK[0x698];
  v21 = STACK[0x688];
  LODWORD(STACK[0x6B0]) = v8;
  v22 = LODWORD(STACK[0x4FC]) - (v8 & 2 ^ 0xEA ^ ((v8 & 0x42 | 0x80) & (v8 & 0x42 ^ 0xD1) | 0x28));
  HIDWORD(v24) = a2;
  LODWORD(v24) = a2;
  v23 = v24 >> 11;
  v25 = __PAIR64__(a3, __ROR4__(a2, 6));
  LODWORD(STACK[0x610]) = v17;
  LODWORD(STACK[0x4F4]) = v21 ^ 0x906C3740;
  v26 = v23 ^ v25 ^ (a2 << 7) & 0xCB776A80 ^ ((((a2 ^ 0x906C3740) >> (v22 + 77)) - ((2 * ((a2 ^ 0x906C3740) >> (v22 + 77))) & 0x78672014) - 1137471478) ^ 0x88BB051E) & ((a2 << 7) ^ 0xC9E45FFF);
  LODWORD(STACK[0x660]) = v19;
  v27 = v21 & 0x5CECBEC8 ^ a2 & 0x69B0B43C ^ a3 & 0xACCBEF24 ^ (a3 ^ v18) & (v20 ^ 0x3CA7D864) ^ (a3 ^ 0x4C7E348F) & (v21 ^ 0x906C3740) ^ (v17 ^ 0x6B08610F) & (a2 ^ 0x6F93C8BF) ^ (v19 ^ 0x2B8D533) & (a2 ^ 0x906C3740);
  LODWORD(v25) = a3;
  v28 = (v25 >> 11) ^ __ROR4__(a3, 6) ^ __ROR4__(a3, 25) ^ 0xCF0E3E1;
  v29 = v28 ^ v12 ^ ((v12 ^ 0xCD10E552) + 256488880) ^ ((v12 ^ 0x571636C4) - 1789958598) ^ ((v12 ^ 0xD87F236B) + 438727575) ^ ((v12 ^ 0x7FDF5FFF) - 1115287805);
  LODWORD(STACK[0x698]) = v21;
  LODWORD(STACK[0x618]) = v20;
  v30 = ((v9 ^ 0x72FC5C2) - 1515176567) ^ v9 ^ ((v9 ^ 0x74C298EF) - 698523482) ^ ((v9 ^ 0xD170A547) + 1945066766) ^ ((v9 ^ 0xFFFDFFDF) + 1566705558) ^ v28;
  v31 = v14 - 1886052455 + (((v30 ^ 0x462324C1) - 946056321) ^ ((v30 ^ 0x7CD859EF) - 43569583) ^ ((v30 ^ 0x768EE28A) - 147745482));
  LODWORD(STACK[0x688]) = a2;
  LODWORD(STACK[0x690]) = a3;
  LODWORD(STACK[0x4F0]) = a3 ^ v18;
  v32 = v20 ^ a2 & 0x9EC5DA0C ^ a3 & 0x3B8798E3 ^ (v21 ^ 0x9EC5DA0C ^ v20) & (a2 ^ 0x906C3740) ^ (v17 ^ 0x2B1512A4) & (a3 ^ v18) ^ v19 & 0xBAF73FA1 ^ (v19 ^ v18) & (a3 ^ 0xAA65B5E6);
  v33 = v31 ^ ((((v29 ^ 0x96B7BDE5) - 142880225) ^ ((v29 ^ 0x47A89E3E) + 644149702) ^ ((v29 ^ 0xFDAC14C8) - 1671398604)) - v12 - 265857511);
  v34 = v10 - a6 + (v31 | 0x214A078) - (v31 & 0xFDEB5F87);
  v35 = v15 - (v11 - v10);
  v36 = v35 - (a6 - 1691091697) + 1024366860;
  v37 = v11 - v10 + (v36 ^ 0xD7FFDC3A);
  v38 = v26 ^ (v10 + 34906233) ^ (a6 - 1691091697);
  v39 = ((v26 ^ 0xED3356F7) + 2028128373) ^ ((v26 ^ 0x50E880C) - 1864427888) ^ ((v26 ^ 0x34F5D6B4) - 1591457736);
  v40 = v37 + ((2 * v36) & 0xAFFFB874);
  v41 = ((v27 ^ 0x8607DF7D) - 348185943) ^ ((v27 ^ 0xA7356A80) - 905072810) ^ ((v27 ^ 0x4A66D6F1) + 660476709);
  v42 = (((v38 ^ v28 ^ 0xAC21F492) + 1679858703) ^ ((v38 ^ v28 ^ 0x8545AF99) + 1296353030) ^ ((v38 ^ v28 ^ 0xE4B9CB55) + 750298058)) - (((v38 ^ 0x3308A69D) - 83243518) ^ ((v38 ^ 0x3CCE9202) - 187696481) ^ ((v38 ^ 0xD30E3CD0) + 453989453));
  v43 = (((v40 - 870077553) ^ (v35 - 564214077) ^ 0x53C66023) + 1305325444) ^ (((v40 - 870077553) ^ (v35 - 564214077) ^ 0xE769EC4F) - 111008784) ^ (((v40 - 870077553) ^ (v35 - 564214077) ^ 0xB4AF8C6C) - 1432075315);
  v44 = v13 - a8 + v12;
  v45 = v12 - v9 + 532240563;
  v46 = v45 ^ 0x38A702 ^ v32;
  v32 ^= 0xB9FA815E;
  v47 = ((v9 ^ 0x6BC10827) - 916524946) ^ v9 ^ ((v9 ^ 0xCBD860C0) + 1766299787) ^ ((v9 ^ 0x460694A1) - 459707156) ^ ((v9 ^ 0xBB7FFBF3) + 434111418) ^ v32;
  v34 += 1691091698;
  v48 = v27 ^ (a6 - 1691091697) ^ v34;
  v49 = v48 ^ v32;
  v50 = ((v48 ^ 0xADDD3FAD) - 21680607) ^ ((v48 ^ 0xCFF40AC) + 1603752226) ^ ((v48 ^ 0xCA761C0D) - 1726083711);
  v51 = (v14 - 909123856 + (((v47 ^ 0x6D85BD6A) + 448246856) ^ ((v47 ^ 0xE037F16C) - 1761216446) ^ ((v47 ^ 0x69106DEF) + 505570499))) ^ (v46 - v45);
  v52 = v14 + v13;
  v53 = (((v44 - 1648245743) ^ (v14 + v13 + 1049766026) ^ 0x4C13FCBC) - 1837190300) ^ (((v44 - 1648245743) ^ (v14 + v13 + 1049766026) ^ 0x4F8B3A99) - 1847167673) ^ (((v44 - 1648245743) ^ (v14 + v13 + 1049766026) ^ 0x398C625) - 571110917);
  v54 = (v42 + 250374161) ^ v33;
  v55 = v11;
  v56 = v14 + 1566574517 + v45;
  LODWORD(STACK[0x5B8]) = v56;
  v57 = ((2 * (v34 - (a6 - 1691091697))) & 0xFBD6BF0E ^ 0x11469700) + ((v34 - (a6 - 1691091697)) ^ 0xF54CB46F);
  v58 = STACK[0x4E8];
  v59 = *(STACK[0x4E8] + 4 * ((173 * (((v16 ^ 0x5F939AEE) + 1777106097) ^ ((v16 ^ 0xDC58ADC3) - 366523490) ^ ((v16 ^ 0x83CB3725) - 1246441092)) + 730958308) % 0xC0));
  v60 = ((v59 ^ 0xE0D76257) - 1465086905) ^ ((v59 ^ 0xBB8208F1) - 201726239) ^ ((v59 ^ 0x934AD395) - 617529979);
  v61 = STACK[0x6E0];
  v62 = v40 - 1253027504;
  v63 = LODWORD(STACK[0x668]) + v55 + v39 + *(STACK[0x6E0] + 4 * ((251 * v16) % 0x114u)) + v40 - 1253027504 + v41 + v60;
  LODWORD(STACK[0x6C0]) = v16 + 880894196;
  v64 = *(v58 + 4 * ((173 * (((v16 ^ 0x16E364D9) + 1382008003) ^ ((v16 ^ 0x1E78A9D0) + 1522797004) ^ ((v16 ^ 0x89BCD2Bu) + 1277652273)) - 1937262386) % 0xC0)) ^ v16;
  v65 = v52 - 1350142384;
  v66 = LODWORD(STACK[0x6B8]) - (v52 - 1350142384);
  v67 = v65;
  LODWORD(STACK[0x5C0]) = v65;
  v68 = v66 - a8 + *(v61 + 4 * ((251 * (v16 + 24820) + 30989) % 0x114u));
  v69 = v53 + v9;
  v70 = ((v54 ^ 0x8051A159) - 781092927) ^ ((v54 ^ 0xB143339A) - 530324220) ^ ((v54 ^ 0x311292C3) + 1613907035);
  v71 = v68 + (v51 ^ ((((v49 ^ 0xDB53828C) - 2009361662) ^ ((v49 ^ 0x8A967731) - 637638979) ^ ((v49 ^ 0x8353B0ED) - 801398431)) - v50 - 1237443164));
  v72 = (v57 + 34906233) ^ (a6 + v43 + 1623412853);
  LODWORD(STACK[0x590]) = v72;
  v73 = v71 + (((v64 ^ 0x957E3B4A) + 430928267) ^ ((v64 ^ 0x820A399D) + 249262942) ^ ((v64 ^ 0x3F908F36) - 1287535113));
  v74 = (v56 ^ 0x8A7EBE8) - 1657381623;
  LODWORD(STACK[0x578]) = v56 ^ 0x8A7EBE8;
  LODWORD(STACK[0x568]) = v74 ^ 0x6C71F328;
  v75 = (v53 - (v56 ^ 0x8A7EBE8) - 781952581) ^ v74 ^ 0x6C71F328;
  v76 = ((v75 ^ 0x11585DA) - 18187738) ^ ((v75 ^ 0x5B7AD2A0) - 1534775968) ^ ((v75 ^ 0x67C858E9) - 1741183209);
  v77 = a6 + v43 + v62 + 249480592;
  LODWORD(STACK[0x5C8]) = v77;
  LODWORD(v58) = v57 - 1622475390;
  v78 = (((v43 - v57 - 1884210815) ^ (v57 - 1622475390) ^ 0x18E6D014) - 1320567196) ^ (((v43 - v57 - 1884210815) ^ (v57 - 1622475390) ^ 0x5B565860) - 218548712) ^ (((v43 - v57 - 1884210815) ^ (v57 - 1622475390) ^ 0x126674CF) - 1144448327);
  v79 = ((v74 ^ 0x9D6D66A0) + 249784952) ^ ((v74 ^ 0x77F5CBB4) - 461650076) ^ ((v74 ^ LODWORD(STACK[0x4C4])) + 683695481);
  v80 = ((v74 ^ 0x39F2738) - 1877922832) ^ ((v74 ^ 0xA64428E2) + 902439990) ^ ((v74 ^ 0xF40DF361) + 1736703927);
  v81 = (v58 ^ 0x51D6FCBB) + 820443019 + v78;
  v82 = (v77 - v78 - 439092825) ^ ((v58 ^ 0x51D6FCBB) + 694192728);
  v83 = v69 + v67;
  v84 = (((v69 + v67 - v76 + 2111107023) ^ (v80 + 1728551403) ^ 0x90EFFA46) + 1116200260) ^ (((v69 + v67 - v76 + 2111107023) ^ (v80 + 1728551403) ^ 0xE1758C0F) + 857582347) ^ (((v69 + v67 - v76 + 2111107023) ^ (v80 + 1728551403) ^ 0x719A7649) - 1544400563);
  LODWORD(v61) = v73 + v70;
  LODWORD(STACK[0x5E0]) = v73 + v70;
  v85 = ((v74 ^ 0x862F7A23) + 362903285) ^ ((v74 ^ 0x66B9F5A1) - 180881033) ^ ((v74 ^ 0xB1407339) + 583958511);
  v86 = ((v82 ^ 0xDE85F06F) - 403141437) ^ ((v82 ^ 0x26C6D01C) + 532393138) ^ ((v82 ^ 0xF8432073) - 1052877601);
  v87 = (((v80 - 1532057218 + v76) ^ 0x1361BE11) - 349159927) ^ (((v80 - 1532057218 + v76) ^ 0xD39FAA8C) + 734931606) ^ (((v80 - 1532057218 + v76) ^ 0xC83B1317) + 812290831);
  v88 = STACK[0x680];
  v89 = ((LODWORD(STACK[0x680]) ^ 0x1234C2F0) - 305447664) ^ ((LODWORD(STACK[0x680]) ^ 0x70B9655) - 118199893);
  v90 = (((v81 ^ 0xCC0B7399) - 228961646) ^ ((v81 ^ 0x90FF97A9) - 1364281694) ^ ((v81 ^ 0x5431E3BA) + 1784726195)) - v86;
  v86 -= 244837848;
  LODWORD(STACK[0x668]) = v86;
  v91 = (v58 ^ 0x51D6FCBB) + 1587641795 + v86;
  v92 = v72 - 199244023;
  v93 = v72 - 199244023 - (v58 ^ 0x51D6FCBB);
  LODWORD(STACK[0x600]) = v93;
  v94 = v93 - v91 + v90 + 524690585;
  v95 = (v58 ^ 0x51D6FCBB) + 1065442926;
  LODWORD(STACK[0x5F8]) = v95;
  v96 = (v90 + 48846379) ^ v95;
  v97 = v89 ^ ((v88 ^ 0xE44103B8) + 465501256);
  v98 = (v96 + 2095644515) ^ v88 ^ v94;
  v99 = STACK[0x6B0];
  v100 = (((v98 ^ LODWORD(STACK[0x6B0]) ^ 0x214DA4B8) - 1863582411) ^ ((v98 ^ LODWORD(STACK[0x6B0]) ^ 0xBC980FCA) + 222189127) ^ ((v98 ^ LODWORD(STACK[0x6B0]) ^ 0x89F037A7) + 945188396)) - (((v98 ^ 0xE4009B43) + 1436992208) ^ ((v98 ^ 0xD53DBF53) + 1687938784) ^ ((v98 ^ 0xC043730D) + 1910844034));
  LODWORD(STACK[0x608]) = v84;
  v101 = v87 - v84;
  LODWORD(STACK[0x5F0]) = v85 + 2099801601;
  v102 = (v87 - v84 - 506224782) ^ (v85 + 2099801601);
  v103 = v99 ^ 0xE55BCBC8;
  v104 = (v99 ^ 0xE55BCBC8 ^ (v102 + 2095644515)) - (v102 + 2095644515);
  v69 -= 1479685262;
  LODWORD(STACK[0x580]) = v69;
  v105 = v69 ^ v56 ^ 0x8A7EBE8;
  v106 = v105 - v79;
  LODWORD(STACK[0x5E8]) = v105 - v79;
  v107 = v84 + v85;
  v108 = v106 + v101 - (v84 + v85) - 1075630032;
  v109 = v104 ^ ((v103 ^ v108) - v108);
  LODWORD(STACK[0x628]) = v96;
  v110 = v97 - 1054378760 + v91;
  v111 = v110 ^ (v63 + 935718223);
  v112 = 2 * ((v110 & (v63 + 935718223)) + 1277242355 - ((2 * (v110 & (v63 + 935718223))) & 0x184257E2)) - 4;
  v113 = ((v112 ^ 0xBDB2CAD7) - 759783543) ^ ((v112 ^ 0x87B58295) - 390998069) ^ ((v112 ^ 0xA2451FA0) - 851358976);
  v114 = v91 - v96 + 1388322424;
  LODWORD(STACK[0x598]) = v114;
  LODWORD(STACK[0x6B8]) = (v114 ^ v94) + 1540151434;
  v115 = (v90 - v91 + v96 - ((((2 * v96 - 735065604) ^ 0xF2690192) - 1682282553) ^ (((2 * v96 - 735065604) ^ 0xAD250F23) - 990484104) ^ (((2 * v96 - 735065604) ^ 0x5F4C0EB1) + 916416742)) + 120292259) ^ ((v114 ^ v94) + 1540151434);
  LODWORD(STACK[0x5B0]) = v115;
  v116 = (((v111 ^ 0x27FEE6A8) + 904657016) ^ ((v111 ^ 0xAF407DD1) - 1118477553) ^ ((v111 ^ 0x88BE9B79) - 1700035161)) + v113 + 451478516 + (((v115 ^ 0x765843AA) - 1377592888) ^ ((v115 ^ 0x8979C239) + 1388451925) ^ ((v115 ^ 0xFF218193) + 614095871));
  LODWORD(STACK[0x6B0]) = v116;
  LODWORD(STACK[0x620]) = v102;
  v117 = v107 - v102 + 1199969182;
  v118 = (v117 ^ v108) + 1540151434;
  v119 = ((v118 ^ (v101 - v107 - v102 - 1286822029) ^ 0x3B5D506C) - 1183578085) ^ ((v118 ^ (v101 - v107 - v102 - 1286822029) ^ 0xE49ECD82) + 1723307509) ^ ((v118 ^ (v101 - v107 - v102 - 1286822029) ^ 0xDFC39DEE) + 1575667097);
  LODWORD(STACK[0x570]) = v119;
  LODWORD(STACK[0x5A8]) = v61 + 555162759;
  v120 = v61 + 555162759 - v107 - v119 + 497721644 + (((v109 ^ (v100 - 1688975048) ^ 0x3CD2D080) - 679949298) ^ ((v109 ^ (v100 - 1688975048) ^ 0xB6F4E60B) + 1566505607) ^ ((v109 ^ (v100 - 1688975048) ^ 0x8A26368B) + 1636575751));
  v121 = STACK[0x6C8];
  v122 = *(STACK[0x6C8] + (439 * (v116 & 0xF) - 974 * (((3781107 * (v116 & 0xF)) >> 16) >> 7)));
  LODWORD(STACK[0x550]) = v122 - ((2 * v122) & 0x4E) - 788960729;
  v123 = *(v121 + (439 * (v120 & 0xF) - 974 * (((3781107 * (v120 & 0xF)) >> 16) >> 7)));
  LODWORD(STACK[0x558]) = v123;
  LODWORD(STACK[0x5A0]) = (v122 - ((2 * v122) & 0x4E) + 39) & 0xF;
  v124 = ((v122 - ((2 * v122) & 0x4E) + 39) & 0xF ^ 0x8774BF09 | (16 * v123)) ^ 0x8774BF0E;
  LODWORD(STACK[0x548]) = v124;
  LODWORD(STACK[0x588]) = v114 ^ v94;
  v125 = 439 * (*(v121 + (((((1264494781 - (v114 ^ v94)) & 0x6FFBFD9D) + (((v114 ^ v94) + 882988866) & 0x6FFBFD9D)) & 0x5D7AD18D) + ((((1073741517 - v124) & 0x207682C4) + ((v124 + 306) & 0x2C4)) ^ 0x92F3B2EE)) * (v124 + 306) % 0x3CE) ^ LODWORD(STACK[0x6A8]));
  LODWORD(STACK[0x540]) = v125;
  LODWORD(STACK[0x560]) = (v125 + 134334) % (((833 - v125) ^ (v125 + 134334)) & 0x3CEu);
  HIDWORD(v25) = STACK[0x678];
  LODWORD(v25) = STACK[0x678];
  v126 = (v25 >> 2) ^ __ROR4__(STACK[0x678], 13);
  LODWORD(v25) = __ROR4__(STACK[0x678], 22);
  LODWORD(STACK[0x538]) = v126 ^ v25;
  v127 = v62 + (((v126 ^ v25 ^ 0xD20039CB) + 1029111385) ^ ((v126 ^ v25 ^ 0xD350A56F) + 1007051517) ^ ((v126 ^ v25 ^ 0x96E671D) - 432496497)) - v83;
  v128 = STACK[0x6D0];
  v129 = STACK[0x658];
  v130 = (HIDWORD(v25) ^ 0xCF7D5D7B) & (LODWORD(STACK[0x658]) ^ 0xE55BCBC8);
  LODWORD(STACK[0x678]) = v63 + v127;
  v131 = STACK[0x650];
  LODWORD(STACK[0x630]) = STACK[0x650];
  v132 = STACK[0x670];
  v133 = STACK[0x648];
  v134 = LODWORD(STACK[0x648]) ^ 0xF17E571D;
  v135 = v134 & (v129 ^ 0xFB00DA4E);
  v136 = (HIDWORD(v25) ^ 0x2889BE5C) & v134;
  v137 = (LODWORD(STACK[0x670]) ^ 0x97BE6439) & v134;
  v138 = v128 & 0x6C388247 ^ v129 & 0x2A2696B3 ^ STACK[0x648] & 0x66C03324;
  LODWORD(STACK[0x640]) = v128;
  LODWORD(STACK[0x6D0]) = v129;
  LODWORD(STACK[0x4E0]) = v131 ^ 0xF17E571D;
  LODWORD(STACK[0x638]) = HIDWORD(v25);
  LODWORD(STACK[0x680]) = v133;
  LODWORD(STACK[0x4E4]) = v128 ^ 0xE55BCBC8;
  LODWORD(STACK[0x4D8]) = v132 ^ 0xF17E571D;
  v139 = v133 & 0xD3896412 ^ v128 & 0x74D4DA87 ^ v135 ^ v132 & 0x84326CC ^ (v131 ^ 0x3B445126) & (v128 ^ 0xE55BCBC8) ^ (v132 ^ 0x4F908BA1) & (v128 ^ 0xE55BCBC8) ^ (v132 ^ 0xF17E571D) & (v129 ^ 0xED18ED04) ^ HIDWORD(v25) & 0xDA441FB8 ^ (HIDWORD(v25) ^ 0xE55BCBC8) & (v131 ^ 0x2B3A48A5) ^ v136;
  v140 = v138 ^ (v128 ^ 0xE55BCBC8) & (v129 ^ 0x7DA24D45) ^ v131 & 0x70ADE089 ^ v132 & 0x7B86A6C6 ^ (v131 ^ 0xF17E571D) & (v133 ^ 0x81D3B794) ^ (v132 ^ 0xF17E571D) & (v131 ^ 0x8AF8F1DB) ^ v137 ^ (HIDWORD(v25) ^ 0x119ACF02) & (v128 ^ 0xE55BCBC8) ^ v130;
  v141 = v58 ^ v140 ^ v92;
  v142 = v139 ^ 0x69EF0577;
  v143 = ((((v139 ^ 0x69EF0577 ^ LODWORD(STACK[0x568]) ^ 0x4CEF48D8) - 1290750168) ^ ((v139 ^ 0x69EF0577 ^ LODWORD(STACK[0x568]) ^ 0x2BDFFE99) - 736099993) ^ ((v139 ^ 0x69EF0577 ^ LODWORD(STACK[0x568]) ^ 0x46223FB1) - 1176649649)) - (((v74 ^ 0x86487B08) + 365328352) ^ ((v74 ^ 0x391625FF) - 1432868567) ^ ((v74 ^ 0xEE88A24C) + 2097589916)) - 479495587) ^ (((v105 - 199244023) ^ v139 ^ 0x755A8314) - (v105 - 199244023)) ^ ((((v141 ^ v142 ^ 0xEDAFC9CD) + 895971701) ^ ((v141 ^ v142 ^ 0x98D8ED71) + 1074812361) ^ ((v141 ^ v142 ^ 0x1D640BAD) - 978537707)) - (((v141 ^ 0xA5D63C6F) + 2099152087) ^ ((v141 ^ 0x9608651) - 777502999) ^ ((v141 ^ 0xD810134C) + 14199798)) - 74286557);
  v144 = v117 - v118;
  LODWORD(STACK[0x5D0]) = v118;
  LODWORD(STACK[0x504]) = v144;
  v145 = ((2 * (v118 - v144)) & 0xFFF7B7BE) + ((v118 - v144) ^ 0xFFFBDBDF);
  LODWORD(STACK[0x658]) = v145;
  v146 = LODWORD(STACK[0x678]) + (((v143 ^ 0xE5673C5) + 2029659205) ^ ((v143 ^ 0x3512B750) + 1136582866) ^ ((v143 ^ 0x3B44C495) + 1307087637));
  v147 = LODWORD(STACK[0x570]) + v145;
  LODWORD(STACK[0x678]) = v147;
  v148 = v146 - v147 - 1083354024;
  v149 = LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x538]);
  LODWORD(STACK[0x5D8]) = v132;
  HIDWORD(v25) = v132;
  LODWORD(v25) = v132;
  v150 = (v25 >> 13) ^ __ROR4__(v132, 2) ^ __ROR4__(v132, 22);
  v151 = ((v150 ^ 0x3DEC69F0 ^ LODWORD(STACK[0x580])) - LODWORD(STACK[0x580])) ^ ((v150 ^ LODWORD(STACK[0x5B8]) ^ 0x354B8218) - LODWORD(STACK[0x578])) ^ ((((v149 ^ v150 ^ 0x82584D59) + 1297189092) ^ ((v149 ^ v150 ^ 0x741EFDA6) - 1156106211) ^ ((v149 ^ v150 ^ 0xC39422B6) + 211674893)) - (((v149 ^ 0xE689C2E3) - 1308578459) ^ ((v149 ^ 0xDB21FC0A) - 1884777586) ^ ((v149 ^ 0x3596C550) + 1629465304)) + 1641823307);
  v152 = *(v121 + (439 * ((LODWORD(STACK[0x6B0]) >> 20) & 0xF) - 974 * (((3781107 * ((LODWORD(STACK[0x6B0]) >> 20) & 0xF)) >> 16) >> 7)));
  v153 = (*(v121 + (439 * (HIBYTE(LODWORD(STACK[0x6B0])) & 0xF) - 974 * (((3781107 * (HIBYTE(LODWORD(STACK[0x6B0])) & 0xFu)) >> 16) >> 7))) << 8) ^ (*(v121 + (439 * (LODWORD(STACK[0x6B0]) >> 28) - 974 * (((3781107 * (LODWORD(STACK[0x6B0]) >> 28)) >> 16) >> 7))) << 12) | *(v121 + (439 * (HIWORD(LODWORD(STACK[0x6B0])) & 0xF) - 974 * (((3781107 * (HIWORD(LODWORD(STACK[0x6B0])) & 0xFu)) >> 16) >> 7)));
  v154 = *(v121 + (439 * (LODWORD(STACK[0x6B0]) >> 12) - 974 * (((3781107 * (LODWORD(STACK[0x6B0]) >> 12)) >> 16) >> 7)));
  v155 = v154 - ((2 * v154) & 0x172);
  v156 = *(v121 + (439 * ((LODWORD(STACK[0x6B0]) >> 8) & 0xF) - 974 * (((3781107 * ((LODWORD(STACK[0x6B0]) >> 8) & 0xF)) >> 16) >> 7)));
  v157 = v156 - ((2 * v156) & 0x1AA);
  LOBYTE(v133) = STACK[0x6B0];
  v158 = *(v121 + (439 * (v133 >> 4) - 974 * (((3781107 * (v133 >> 4)) >> 16) >> 7)));
  v159 = ((((v152 - ((2 * v152) & 0x13C)) << 12) - 1388716032) ^ 0x1D8ECA ^ (((v153 - ((2 * v153) & 0xD733E)) << 8) + 129605376)) & ((v157 + 1700023509) ^ 0xABB30E);
  LODWORD(STACK[0x570]) = v159;
  v160 = v159 ^ (v157 + 1700023509) & 0xE35;
  LODWORD(STACK[0x590]) = v160;
  LODWORD(STACK[0x580]) = v160 << 8;
  v161 = (v160 << 8) ^ ((v155 << 12) - 1587834880);
  v162 = STACK[0x550];
  v163 = (v161 ^ 0x43140320) & (LODWORD(STACK[0x550]) ^ 0x2F069510);
  v164 = (*(v121 + (439 * (HIBYTE(v120) & 0xF) - 974 * (((3781107 * (HIBYTE(v120) & 0xF)) >> 16) >> 7))) << 8) ^ (*(v121 + (439 * (v120 >> 28) - 974 * (((3781107 * (v120 >> 28)) >> 16) >> 7))) << 12);
  LODWORD(STACK[0x578]) = v164;
  v165 = ((v164 | *(v121 + (439 * (BYTE2(v120) & 0xF) - 974 * (((3781107 * (HIWORD(v120) & 0xF)) >> 16) >> 7)))) << 8) ^ (*(v121 + (439 * ((v120 >> 20) & 0xF) - 974 * (((3781107 * ((v120 >> 20) & 0xF)) >> 16) >> 7))) << 12);
  LODWORD(STACK[0x568]) = v165;
  v166 = *(v121 + (439 * (v120 >> 12) - 974 * (((3781107 * (v120 >> 12)) >> 16) >> 7)));
  v167 = v163 ^ v162 & 0x804903D0;
  v168 = v165 | *(v121 + (439 * ((v120 >> 8) & 0xF) - 974 * (((3781107 * ((v120 >> 8) & 0xF)) >> 16) >> 7)));
  LODWORD(STACK[0x550]) = v168;
  v169 = ((v166 << 12) - 714106908 - ((v166 << 13) & 0xFFFF3FFF)) ^ 0xD56F97E4 ^ (v168 << 8);
  v170 = 439 * LODWORD(STACK[0x548]) + 312568;
  v171 = LODWORD(STACK[0x540]) + 312568 - 974 * ((4409618 * (LODWORD(STACK[0x540]) + 312568)) >> 32);
  LOBYTE(v155) = *(v121 + (439 * (v120 >> 4) - 974 * (((3781107 * (v120 >> 4)) >> 16) >> 7)));
  v172 = v169 | LODWORD(STACK[0x558]);
  v173 = v169;
  LODWORD(STACK[0x538]) = v169;
  LOBYTE(v172) = v155 ^ (v172 >> 4);
  v174 = *(v121 + v170 % 0x3CE) ^ (*(v121 + v171) >> 4);
  v175 = (v158 - ((2 * v158) & 0x12) + 728339721) ^ (v167 >> 4);
  v176 = v175 & 0xF ^ 0xB;
  v177 = 439 * (v176 & 0xFFFFFF0F | (16 * (v172 & 0xF)));
  v178 = *(v121 + (439 * v174 + 134334 - 974 * ((4409618 * (439 * v174 + 134334)) >> 32))) << (-43 * ((v133 & 0xF4 ^ 0xF4) + (v133 & 0xF4u)));
  v179 = LODWORD(STACK[0x598]) - LODWORD(STACK[0x6B8]);
  LODWORD(v61) = v179;
  LODWORD(STACK[0x598]) = v179;
  LODWORD(v178) = v178 ^ *(v121 + (v177 + 134334 - 974 * ((4409618 * (v177 + 134334)) >> 32)));
  v180 = 439 * v178 + 312568;
  LODWORD(v178) = (v179 & 0x132 ^ 0x132) + (v179 & 0x132) + v178;
  v181 = *(v121 + (v177 + 312568 - 974 * ((4409618 * (v177 + 312568)) >> 32)));
  v182 = *(v121 + v180 % 0x3CE);
  v183 = (((v144 & 0x1B7 ^ 0x841D5032) + 10049068) ^ ((v144 & 0x1B7 ^ 0xFF8B5DF7) + 2064604143) ^ ((v144 & 0x1B7 ^ 0x7B960DC5) - 15594531)) + (((v144 & 0x1B7 ^ 0x120A34A4) + 1505142221) ^ ((v144 & 0x1B7 ^ 0xCECCD951) - 2056239046) ^ ((v144 & 0x1B7 ^ 0xDCC6EC42) - 1753580245));
  LODWORD(STACK[0x5B8]) = v183;
  v184 = (v175 >> 4) ^ 0xE;
  LODWORD(STACK[0x558]) = v184;
  v185 = 439 * (v184 | v172 & 0xF0);
  LODWORD(v178) = *(v121 + LODWORD(STACK[0x560])) ^ (16 * *(v121 + 439 * v178 % 0x3CEu));
  v186 = 439 * (*(v121 + (v185 + 134334 - 974 * ((4409618 * (v185 + 134334)) >> 32))) ^ (16 * *(v121 + (((v181 ^ (v182 >> 4) ^ 0x7E6FF1FC) + 966454395 + ((2 * (v181 ^ (v182 >> 4))) & 0x1F8)) * (v183 + 801073414) + 1207247547 * v183 + 2038596450) % 0x3CE)));
  v187 = *(v121 + (v185 + 312568 - 974 * ((4409618 * (v185 + 312568)) >> 32)));
  v188 = *(v121 + (v186 + 312568 - 974 * ((4409618 * (v186 + 312568)) >> 32)));
  v189 = ((v188 >> 6) | (4 * v188)) & 0xFFFFFFC3 ^ ((v187 >> 2) | (v187 << 6));
  v190 = v161 ^ 0x9884E28E;
  v191 = (v173 >> 8) & 0xF0 | ((v161 ^ 0xE28E) >> 12);
  v192 = 439 * ((v189 >> 6) | (4 * v189)) + 134334;
  v193 = 439 * (((v191 ^ 0xA788462F) + 1806751363) ^ ((v191 ^ 0xF3076DEE) + 1061158212) ^ ((v191 ^ 0x548F2BCB) - 1732789401));
  LODWORD(STACK[0x528]) = v193;
  v194 = 439 * (*(v121 + (v193 - 889062234) % 0x3CE) ^ (16 * *(v121 + (v192 - 974 * ((4409618 * v192) >> 32)))));
  LODWORD(STACK[0x524]) = v194;
  LODWORD(v178) = v178 ^ (*(v121 + (v186 + 134334 - 974 * ((4409618 * (v186 + 134334)) >> 32))) << 8);
  v195 = *(v121 + (v194 + 134334 - 974 * ((4409618 * (v194 + 134334)) >> 32)));
  LODWORD(STACK[0x518]) = v195;
  v196 = ((v195 << 12) ^ (-4096 * v195) ^ (v178 - ((v195 << 12) ^ v178))) + v178;
  v197 = STACK[0x5A0] & 0xFFFFFF0F | (16 * (v178 & 0xF));
  v198 = STACK[0x6D0] & 0x11B;
  v199 = *(v121 + (439 * (((v197 ^ 0x5234048A) + 2112075576) ^ ((v197 ^ 0xC376E1DA) - 324971928) ^ ((v197 ^ 0x9142E557) - 1097509141)) - 182784865) % 0x3CE);
  LODWORD(STACK[0x560]) = v199;
  LODWORD(v178) = 439 * ((((v198 ^ 0x79F47723) + 680049347) ^ (v198 + 1384041954) ^ ((v198 ^ 0x3819BF50) + 1768256178)) + (((v198 ^ 0xB2E4D8F) + 1098152637) ^ ((v198 ^ 0x48B45BCC) + 49179904) ^ ((v198 ^ 0x439A174B) + 163586169)) + (((v199 & 0xF ^ 0x31FB6B22) - 838560678) ^ ((v199 & 0xF ^ 0x55488102) - 1430815110) ^ ((v199 & 0xF) - 132))) - 1035422269;
  LODWORD(STACK[0x5A0]) = v178 % 0x3CE;
  v200 = ((v140 ^ 0x998BE9CB) + 742738281) ^ ((v140 ^ 0x81E7D6AC) + 875132432) ^ ((v140 ^ 0x3D1C6AAE) - 1999451634);
  v201 = (v178 % 0x3CE) & 0xE1;
  v202 = ((2 * (LODWORD(STACK[0x588]) - v61)) & 0xE78F3E7C) + ((LODWORD(STACK[0x588]) - v61) ^ 0xF3C79F3E);
  LODWORD(STACK[0x670]) = v202;
  v203 = STACK[0x5B0];
  v204 = v200 - LODWORD(STACK[0x5C0]) + LODWORD(STACK[0x5C8]) + LODWORD(STACK[0x5A8]) + (((v151 ^ 0x83677C1D) - 143748219) ^ ((v151 ^ 0x8B0FCE7E) - 16375320) ^ ((v151 ^ 0x868B263) + 2086755835));
  v205 = v202 + (((v203 ^ 0xC6B360A9) + 487111365) ^ ((v203 ^ 0x8F8400E8) + 1413470854) ^ ((v203 ^ 0x49376041) - 1836271059)) + (((v201 ^ 0x9E3668B9) + 2067361029) ^ (v201 - 91190846) ^ ((v201 ^ 0xE29AB352) + 127252208)) + (((v201 ^ 0x35736148) - 1597994992) ^ ((v201 ^ 0xFB824FCB) + 1848747661) ^ ((v201 ^ 0xCEF12E83) + 1531103173)) + 560870366;
  LODWORD(STACK[0x650]) = v205;
  v206 = v204 + 1748559830 + v205;
  LODWORD(STACK[0x648]) = v206;
  v207 = (((*(v121 + 439 * (HIBYTE(v148) & 0xF) % (((439 * (HIBYTE(v148) & 0xF)) & 0x3CE ^ 0x3CE) + ((439 * (HIBYTE(v148) & 0xF)) & 0x3CE))) << 8) ^ (*(v121 + (439 * (v148 >> 28) - 974 * (((3781107 * (v148 >> 28)) >> 16) >> 7))) << 12) | *(v121 + (439 * (BYTE2(v148) & 0xF) - 974 * (((3781107 * (HIWORD(v148) & 0xF)) >> 16) >> 7)))) << 8) ^ (*(v121 + (439 * ((v148 >> 20) & 0xF) - 974 * (((3781107 * ((v148 >> 20) & 0xF)) >> 16) >> 7))) << 12);
  v208 = (*(v121 + (439 * (HIBYTE(v206) & 0xF) - 974 * (((3781107 * (HIBYTE(v206) & 0xF)) >> 16) >> 7))) << 8) ^ (*(v121 + (439 * (v206 >> 28) - 974 * (((3781107 * (v206 >> 28)) >> 16) >> 7))) << 12) ^ (16 * *(v121 + (439 * ((v206 >> 20) & 0xF) - 974 * (((3781107 * ((v206 >> 20) & 0xF)) >> 16) >> 7))));
  v209 = *(v121 + (439 * (v206 >> 12) - 974 * (((3781107 * (v206 >> 12)) >> 16) >> 7)));
  v210 = v208 ^ *(v121 + (439 * (BYTE2(v206) & 0xF) - 974 * (((3781107 * (HIWORD(v206) & 0xF)) >> 16) >> 7)));
  v211 = v208;
  LODWORD(STACK[0x540]) = v208;
  v212 = (*(v121 + (439 * ((v206 >> 8) & 0xF) - 974 * (((3781107 * ((v206 >> 8) & 0xF)) >> 16) >> 7))) << 8) | (v210 << 16);
  LODWORD(STACK[0x514]) = v210;
  v213 = v212 ^ (v209 << 12);
  v214 = v207 | *(v121 + (439 * ((v148 >> 8) & 0xF) - 974 * (((3781107 * ((v148 >> 8) & 0xF)) >> 16) >> 7)));
  v215 = *(v121 + (439 * (v206 & 0xF) - 974 * (((3781107 * (v206 & 0xF)) >> 16) >> 7)));
  v216 = (v213 | v215) ^ (16 * *(v121 + (439 * (v206 >> 4) - 974 * (((3781107 * (v206 >> 4)) >> 16) >> 7))));
  v214 <<= 8;
  LODWORD(v178) = v214 ^ (*(v121 + (439 * (v148 >> 12) - 974 * (((3781107 * (v148 >> 12)) >> 16) >> 7))) << 12);
  v217 = 16 * *(v121 + (439 * (v148 >> 4) - 974 * (((3781107 * (v148 >> 4)) >> 16) >> 7)));
  v218 = (v214 & v217 & 0x100) == 0;
  v219 = *(v121 + (439 * (v148 & 0xF) - 974 * (((3781107 * (v148 & 0xF)) >> 16) >> 7)));
  v220 = v178 | v219;
  if (v218)
  {
    v221 = v217 & 0x100;
  }

  else
  {
    v221 = -(v217 & 0x100);
  }

  v222 = v221 + v220;
  v223 = (v221 + v220) ^ v217 & 0xFFFFFEFF;
  v224 = 439 * (v223 & 0xF0 | (v216 >> 4));
  v225 = v203 & 0xCCC44C4B;
  v226 = ((v203 & 0xCCC44C4B ^ 0x911E5B75) - 230524919) ^ ((v203 & 0xCCC44C4B ^ 0x11F8185F) + 1923365667);
  v227 = v215 & 0xF;
  LODWORD(STACK[0x5C8]) = v227;
  v228 = 439 * (v227 & 0xFFFFFF0F | (16 * (v219 & 0xF)));
  v229 = ((v203 & 0xCCC44C4B ^ 0xE275BBE8) - 852733195) ^ ((v203 & 0xCCC44C4B ^ 0x8FA0E931) - 1594294226) ^ ((v203 & 0xCCC44C4B ^ 0x6DD552D9) + 1116519366);
  v230 = *(v121 + (v228 + 134334 - 974 * ((4409618 * (v228 + 134334)) >> 32))) ^ LODWORD(STACK[0x6A8]);
  LODWORD(STACK[0x5B0]) = v230;
  v231 = (v230 + 712) * (((~(2 * v216) + v216) ^ v216) & 0x1B7);
  v232 = 439 * (*(v121 + (v228 + 312568 - 974 * ((4409618 * (v228 + 312568)) >> 32))) ^ (*(v121 + (v231 - 974 * ((4409618 * v231) >> 32))) >> 4)) + 134334;
  v233 = 439 * (*(v121 + (v224 + 134334 - 974 * ((4409618 * (v224 + 134334)) >> 32))) ^ (16 * *(v121 + (v232 - 974 * ((4409618 * v232) >> 32)))));
  LODWORD(STACK[0x5A8]) = v233;
  v234 = 439 * (*(v121 + (v224 + 312568) % (((775 - v224) ^ (v224 + 312568)) & 0x3CEu)) ^ (*(v121 + (v233 + 312568 - 974 * ((4409618 * (v233 + 312568)) >> 32))) >> 4)) + 134334;
  v235 = 439 * ((v223 >> 4) & 0xF0 | (v216 >> 8) & 0xF);
  v236 = 439 * (*(v121 + (v235 + 134334 - 974 * ((4409618 * (v235 + 134334)) >> 32))) ^ (16 * *(v121 + (v234 - 974 * ((4409618 * v234) >> 32)))));
  LODWORD(STACK[0x548]) = v236;
  v237 = *(v121 + (v235 + 312568 - 974 * ((4409618 * (v235 + 312568)) >> 32)));
  v238 = *(v121 + (v236 + 312568 - 974 * ((4409618 * (v236 + 312568)) >> 32)));
  v239 = ((v238 >> 5) | (8 * v238)) & 0xFFFFFF87 ^ ((v237 >> 1) | (v237 << 7));
  v240 = 439 * (((v239 & 0x80) != 0) | (2 * v239)) + 134334;
  LODWORD(STACK[0x588]) = v213;
  v241 = 439 * ((v222 >> 8) & 0xF0 | (v213 >> 12));
  v242 = *(v121 + (v240 - 974 * ((4409618 * v240) >> 32)));
  v243 = v229 + (v226 ^ ((v225 ^ 0x4C220F61) + 796797981));
  v244 = *(v121 + (v241 + 134334 - 974 * ((4409618 * (v241 + 134334)) >> 32))) ^ (16 * v242);
  LODWORD(STACK[0x534]) = 439 * v244;
  v245 = 439 * (*(v121 + (v241 + 312568 - 974 * ((4409618 * (v241 + 312568)) >> 32))) ^ (*(v121 + (439 * v244 + 312568 - 974 * ((4409618 * (439 * v244 + 312568)) >> 32))) >> 4)) + 134334;
  v246 = 439 * ((v222 >> 12) & 0xF0 | HIWORD(v213) & 0xF);
  v247 = 439 * (*(v121 + (v246 + 134334 - 974 * ((4409618 * (v246 + 134334)) >> 32))) ^ (16 * *(v121 + (v245 - 974 * ((4409618 * v245) >> 32)))));
  LODWORD(STACK[0x510]) = v247;
  v248 = 439 * (*(v121 + (v246 + 312568 - 974 * ((4409618 * (v246 + 312568)) >> 32))) ^ (*(v121 + (v247 + 312568 - 974 * ((4409618 * (v247 + 312568)) >> 32))) >> 4)) + 134334;
  v249 = 439 * (HIWORD(v222) & 0xF0 | (v210 >> 4));
  v250 = 439 * (*(v121 + (v249 + 134334 - 974 * ((4409618 * (v249 + 134334)) >> 32))) ^ (16 * *(v121 + (v248 - 974 * ((4409618 * v248) >> 32)))));
  LODWORD(STACK[0x508]) = v250;
  v251 = (439 * (v196 & 0xF0 | v176) + 8780) % ((1337674748 - 72334787 * v243) & 0x84E64FEE);
  v252 = 439 * (*(v121 + (v249 + 312568 - 974 * ((4409618 * (v249 + 312568)) >> 32))) ^ (*(v121 + (v250 + 312568 - 974 * ((4409618 * (v250 + 312568)) >> 32))) >> 4)) + 134334;
  v253 = 439 * ((v222 >> 20) & 0xF0 | (v211 >> 8) & 0xF);
  LODWORD(STACK[0x500]) = v253;
  v254 = STACK[0x504];
  v255 = LODWORD(STACK[0x504]) ^ 0xE72DEEF5;
  LODWORD(STACK[0x5C0]) = v255;
  v256 = 439 * (*(v121 + (v253 + 134334 - 974 * ((4409618 * (v253 + 134334)) >> 32))) ^ (16 * *(v121 + (v252 - 974 * ((4409618 * v252) >> 32)))));
  LODWORD(STACK[0x504]) = (v256 + 134334) % (v255 & 0x3CE | v254 & 0x3CE ^ 0x10A);
  v218 = LODWORD(STACK[0x6C0]) == 880894259;
  v257 = LODWORD(STACK[0x5F8]) ^ LODWORD(STACK[0x618]) ^ (LODWORD(STACK[0x600]) - 766042045);
  v258 = v257 ^ ((((LODWORD(STACK[0x610]) ^ 0x1ECEADCA) - 516861386) ^ ((LODWORD(STACK[0x610]) ^ 0x41AA9781) - 1101698945) ^ ((LODWORD(STACK[0x610]) ^ 0x4FF6B00C) - 1341566988)) + 278039111);
  v259 = (((v258 ^ 0x1BA0785C) + 1461410134) ^ ((v258 ^ 0x848D49E8) - 935958302) ^ ((v258 ^ 0xF4106F4) + 1140467710)) - (((v257 ^ 0x9261822D) + 636179156) ^ ((v257 ^ 0x938E3769) + 604301208) ^ ((v257 ^ 0x91838204) + 638145275));
  v260 = LODWORD(STACK[0x610]) ^ 0x10928A47;
  v261 = (v260 ^ LODWORD(STACK[0x5F0])) - LODWORD(STACK[0x5F0]);
  v262 = (v260 ^ (LODWORD(STACK[0x5E8]) - 1999644743)) - (LODWORD(STACK[0x5E8]) - 1999644743);
  LODWORD(STACK[0x668]) += (((LODWORD(STACK[0x618]) ^ 0xE5FD87A2) + 436369502) ^ ((LODWORD(STACK[0x618]) ^ 0xC065FBCB) + 1067058229) ^ ((LODWORD(STACK[0x618]) ^ 0xB5F44B29) + 1242281175)) + 867687217;
  v263 = ((v262 ^ v261 ^ (v259 + 1259327861) ^ 0x832F3148) - 177718535) ^ ((v262 ^ v261 ^ (v259 + 1259327861) ^ 0x8F88A3BB) - 103831540) ^ ((v262 ^ v261 ^ (v259 + 1259327861) ^ 0xCA792F3) + 2061539652);
  v264 = 439 * (*(v121 + (LODWORD(STACK[0x528]) - 888884000) % 0x3CEu) ^ (*(v121 + (LODWORD(STACK[0x524]) + 312568 - 974 * ((4409618 * (LODWORD(STACK[0x524]) + 312568)) >> 32))) >> 4)) + 134334;
  v265 = 16 * (((STACK[0x518] & 0xF ^ 0xF) + (STACK[0x518] & 0xF)) & HIWORD(LODWORD(STACK[0x538])));
  v266 = HIWORD(v190) & 0xF;
  v267 = (v266 ^ 0xE4BE174A) & ~v265 | v265 & 0xB0;
  v268 = ((v267 ^ 0xEBD3268B) + 2107395706) ^ ((v267 ^ 0x86EDB0FF) + 279107598) ^ ((v267 ^ 0x8980813C) + 533719503);
  v269 = *(v121 + (439 * v268 - 471858415) % 0x3CE) ^ (16 * *(v121 + (v264 - 974 * ((4409618 * v264) >> 32))));
  v270 = ((LODWORD(STACK[0x5E0]) + 555162827) & 0x1B7 ^ 0x1B7) + ((LODWORD(STACK[0x5E0]) + 555162827) & 0x1B7);
  LODWORD(STACK[0x618]) = v263 - LODWORD(STACK[0x608]);
  v271 = (v268 - 1928428787) * v270;
  v269 *= 439;
  LOBYTE(v268) = BYTE1(LODWORD(STACK[0x550]));
  v272 = (v268 & 0xC0 | (LODWORD(STACK[0x570]) >> 12)) ^ 0x328C3AC9;
  v273 = 439 * (*(v121 + v271 % 0x3CE) ^ (*(v121 + (v269 + 312568 - 974 * ((4409618 * (v269 + 312568)) >> 32))) >> 4)) + 134334;
  v274 = v272 | v268 & 0x30;
  v275 = v269 + 134334 - 974 * ((4409618 * (v269 + 134334)) >> 32);
  v276 = 439 * (*(v121 + (439 * (((v274 ^ 0x7B0E895) - 1032850017) ^ ((v274 ^ 0xC1FC883D) + 69440823) ^ ((v274 ^ 0xF4C05A6E) + 824133478)) - 530003332) % 0x3CE) ^ (16 * *(v121 + (v273 - 974 * ((4409618 * v273) >> 32)))));
  v277 = v276 + 134334 - 974 * ((4409618 * (v276 + 134334)) >> 32);
  v278 = *(v121 + 439 * (((2 * v272) & 0x190 ^ 0x180) + (v274 ^ 0x328C380Eu)) % 0x3CE) ^ (*(v121 + (v276 + 312568 - 974 * ((4409618 * (v276 + 312568)) >> 32))) >> 4);
  v279 = (LODWORD(STACK[0x568]) >> 12) & 0xF0 | HIBYTE(LODWORD(STACK[0x580])) & 0xF;
  v280 = 439 * (((v279 ^ 0xBD225128) + 66486694) ^ ((v279 ^ 0xBC4F5D2C) + 43748770) ^ ((v279 ^ 0x16D0C09) - 1078338427));
  v281 = *(v121 + (v280 - 1055883385) % 0x3CE) ^ (16 * *(v121 + (439 * v278 + 134334 - 974 * ((4409618 * (439 * v278 + 134334)) >> 32))));
  v282 = v280 - 1055705151;
  v283 = (LODWORD(STACK[0x590]) >> 20) & 0xF;
  v284 = ((LODWORD(STACK[0x578]) >> 8) & 0xF0 | 0xBBF8D20C) & (v283 ^ 0xFFFADFF6) & 0xFFFFFFFC | (LODWORD(STACK[0x580]) >> 28) & 3;
  v285 = (439 * (((v284 ^ 0x445A092C) - 2114450282) ^ ((v284 ^ 0x826E7C29) + 1204582801) ^ ((v284 ^ 0x7DCCA708) - 1200708942)) + 1379542363) % 0x3CE;
  v286 = *(v121 + v251) - ((2 * *(v121 + v251)) & 0x76);
  v287 = 439 * v281;
  v288 = 439 * v281 + 134334 - 974 * ((4409618 * (439 * v281 + 134334)) >> 32);
  v289 = 439 * ((v196 >> 4) & 0xF0 | LODWORD(STACK[0x558])) + 8780;
  v290 = v289 - 974 * ((4409618 * v289) >> 32);
  v291 = (16 * v286 + 711717808) ^ (LODWORD(STACK[0x560]) - ((2 * LODWORD(STACK[0x560])) & 0x100) - 182348928);
  v292 = v196 ^ (*(v121 + v275) << 16);
  v293 = ((v196 >> 8) & 0xF0 ^ 0x49EC44DF) & ((v190 >> 12) ^ 0x49EC44F5);
  v294 = *(v121 + v282 % 0x3CE) ^ (*(v121 + (v287 + 312568 - 974 * ((4409618 * (v287 + 312568)) >> 32))) >> 4);
  v295 = *(v121 + (439 * (((v293 ^ 0x4A3F9DF0) - 1908048125) ^ ((v293 ^ 0x2683CF82) - 486986383) ^ ((v293 ^ 0x255016ADu) - 517278624)) + 849946986) % 0x3CE);
  v296 = v292 ^ (*(v121 + v277) << 20);
  v297 = ((v292 >> 12) & 0xF0 ^ 0x516C41DD) & (v266 ^ 0x516C41FD) | HIWORD(v190) & 2;
  v298 = *(v121 + (439 * (((v297 ^ 0x706EC6CB) - 1616324011) ^ ((v297 ^ 0xDB2191D2) + 887590222) ^ ((v297 ^ 0xFA2316C6) + 367331930)) + 165296085) % 0x3CE);
  v299 = v298 - ((2 * v298) & 0x1AC);
  v300 = v296 ^ (*(v121 + v288) << 24);
  v301 = HIWORD(v296) & 0xF0 | (LODWORD(STACK[0x570]) >> 12);
  v302 = 439 * (*(v121 + v285) ^ (16 * *(v121 + (439 * v294 + 134334 - 974 * ((4409618 * (439 * v294 + 134334)) >> 32))))) + 134334;
  v303 = v302 - 974 * ((4409618 * v302) >> 32);
  v304 = *(v121 + (439 * (((v301 ^ 0xBA86A18D) + 615465806) ^ ((v301 ^ 0xD98561A6) + 1202488167) ^ ((v301 ^ 0x6303C024) - 47570203)) - 970182756) % 0x3CE);
  v305 = v291 ^ (((*(v121 + v290) - ((2 * *(v121 + v290)) & 0x92)) << 8) + 1665288448) ^ 0xCBEAD108;
  v306 = v305 ^ (((v295 + 460090 - ((2 * v295) & 0xC4)) << 12) + 8552448);
  v307 = v306 ^ ((v299 << 16) - 1764360192);
  v308 = (((v304 - ((2 * v304) & 0x86)) << 20) - 1808793600) ^ v307 ^ 0x5AE0EEBF;
  v309 = ((v300 >> 20) & 0xF0 ^ 0xD83B50F8) & (BYTE2(LODWORD(STACK[0x590])) | 0xD83B50F0) | HIBYTE(LODWORD(STACK[0x580])) & 7;
  v310 = ((16 * ((v300 ^ (*(v121 + v303) << 28)) >> 28)) | 0xE01C004) & (v283 ^ 0x7F83CCFC) | (LODWORD(STACK[0x590]) >> 20) & 0xB;
  v311 = (*(v121 + (439 * (((v309 ^ 0x8D393E4D) - 1644142418) ^ ((v309 ^ 0xFD47BC95) - 293674378) ^ ((v309 ^ 0xA845D225) - 1149465402)) - 545657638) % 0x3CE) << 24) ^ (*(v121 + (439 * (((v310 ^ 0x8BD50816) + 1422704640) ^ ((v310 ^ 0x24A697E5) - 71360499) ^ ((v310 ^ 0xA1725FFE) + 2121000984)) + 1862961305) % 0x3CE) << 28) ^ v308 ^ 0xA1617C5A;
  v312 = 439 * ((((v311 >> 28) ^ 0xB0B1FB0F) - 1164928057) ^ (((v311 >> 28) ^ 0xAAB0E02C) - 1601077018) ^ (((v311 >> 28) ^ 0x1A011B2C) + 270564326)) - 1597706228;
  v313 = 439 * (HIBYTE(v311) & 0xF ^ 0xE) + 124237;
  v314 = *(v121 + (v313 - 974 * ((4409618 * v313) >> 32)));
  v315 = *(v121 + (439 * ((((v308 >> 20) & 0xF ^ 0x1A45E672) - 276031621) ^ (((v308 >> 20) & 0xF) + 171310409) ^ (((v308 >> 20) & 0xF ^ 0x1BA7151) - 193757094)) - 2102031943) % 0x3CE);
  v316 = v315 - ((2 * v315) & 0xA8);
  v317 = *(v121 + v312 % 0x3CE);
  v318 = *(v121 + (439 * (((HIWORD(v307) & 0xF ^ 0x97A6BA3B) - 504219333) ^ ((HIWORD(v307) & 0xF ^ 0x382E046E) + 1316652912) ^ ((HIWORD(v307) & 0xF ^ 0xAF88BE57) - 639877801)) + 353712497) % 0x3CE);
  v319 = (((v314 + 1882062 - ((2 * v314) & 0x172)) << 8) + 16771840) ^ (v318 - ((2 * v318) & 0xA0) + 15399248);
  v320 = v306 >> 12;
  v321 = v319 ^ (16 * v316 + 1088394560);
  v322 = *(v121 + (439 * ((((v305 >> 8) & 0xF ^ 0xA131969) - 1361884424) ^ (((v305 >> 8) & 0xF ^ 0xB02FA52B) + 351270582) ^ (((v305 >> 8) & 0xF ^ 0xBA3CBC4A) + 519892949)) + 2050133340) % 0x3CE);
  v323 = *(v121 + (439 * (((v320 ^ 0xC15A879C) - 2143105595) ^ ((v320 ^ 0x77B733D3) + 917469580) ^ ((v320 ^ 0xB6EDB442) - 134873573)) + 1599761363) % 0x3CE);
  v324 = (((v291 >> 4) ^ 0x832D5D02) - 1318615280) ^ (((v291 >> 4) ^ 0x5260ABBB) + 1613394359) ^ (((v291 >> 4) ^ 0xD14DF6BA) - 486069064);
  v325 = (v322 - ((2 * v322) & 0x66666666) + 1088771379) ^ (16 * (v323 - ((2 * v323) & 0x15C)) - 999392544);
  v326 = *(v121 + ((v324 - 843766004) * (LODWORD(STACK[0x5B8]) - 393713706) + 1194787120 * v324 - 21864896) % 0x3CE);
  v327 = LODWORD(STACK[0x6B0]) ^ LODWORD(STACK[0x6B8]);
  v328 = *(v121 + LODWORD(STACK[0x5A0]));
  v329 = 439 * (*(v121 + (LODWORD(STACK[0x500]) + 312568 - 974 * ((4409618 * (LODWORD(STACK[0x500]) + 312568)) >> 32))) ^ (*(v121 + (v256 + 312568 - 974 * ((4409618 * (v256 + 312568)) >> 32))) >> 4)) + 134334;
  v330 = 439 * (HIBYTE(v222) & 0xF0 | (LODWORD(STACK[0x514]) >> 12)) + 134334;
  v331 = *(v121 + (439 * LODWORD(STACK[0x5B0]) + 134334 - 974 * ((4409618 * (439 * LODWORD(STACK[0x5B0]) + 134334)) >> 32)));
  v332 = *(v121 + (v330 - 974 * ((4409618 * v330) >> 32))) ^ (16 * *(v121 + (v329 - 974 * ((4409618 * v329) >> 32))));
  v333 = v331 ^ (16 * *(v121 + (LODWORD(STACK[0x5A8]) + 134334 - 974 * ((4409618 * (LODWORD(STACK[0x5A8]) + 134334)) >> 32))));
  v334 = v333 ^ (*(v121 + (LODWORD(STACK[0x548]) + 134334 - 974 * ((4409618 * (LODWORD(STACK[0x548]) + 134334)) >> 32))) << 8) ^ (*(v121 + (LODWORD(STACK[0x534]) + 134334 - 974 * ((4409618 * (LODWORD(STACK[0x534]) + 134334)) >> 32))) << 12) ^ (*(v121 + (LODWORD(STACK[0x510]) + 134334 - 974 * ((4409618 * (LODWORD(STACK[0x510]) + 134334)) >> 32))) << 16) ^ (*(v121 + (LODWORD(STACK[0x508]) + 134334 - 974 * ((4409618 * (LODWORD(STACK[0x508]) + 134334)) >> 32))) << 20) ^ (*(v121 + LODWORD(STACK[0x504])) << 24) ^ (*(v121 + (439 * v332 + 134334 - 974 * ((4409618 * (439 * v332 + 134334)) >> 32))) << 28);
  v335 = 439 * (STACK[0x5C8] & 0xFFFFFF0F | (16 * (v331 & 0xF))) + 8780;
  v336 = 439 * (v333 & 0xF0 | (v216 >> 4)) + 8780;
  v337 = v336 - 974 * ((4409618 * v336) >> 32);
  v338 = (v328 - ((2 * v328) & 0x6A) + 1045413941) ^ LODWORD(STACK[0x5D0]) ^ (16 * (v326 - ((2 * v326) & 0xBA)) + 1459516880) ^ ((v325 ^ ((v321 ^ (((v317 + 924672 - ((2 * v317) & 0x1A)) << 12) + 21024768)) << 8) ^ 0x68E3FD3) << ((STACK[0x560] & 8 | 0x81) ^ 0x69 ^ ((STACK[0x560] & 8) - 32)));
  v339 = *(v121 + v337) - ((2 * *(v121 + v337)) & 0xB0);
  v340 = v334 >> 4 >> (v337 & 4) >> (v337 & 4 ^ 4);
  v341 = *(v121 + (v335 - 974 * ((4409618 * v335) >> 32)));
  v342 = (16 * v339 - 2014370432) ^ (v341 - ((2 * v341) & 0x36) + 274941211);
  v343 = 439 * ((v216 >> 8) & 0xF | (16 * (v340 & 0xF))) + 8780;
  v344 = *(v121 + (v343 - 974 * ((4409618 * v343) >> 32)));
  v345 = 439 * (v340 & 0xF0 | (LODWORD(STACK[0x588]) >> 12)) + 8780;
  v346 = *(v121 + (v345 - 974 * ((4409618 * v345) >> 32)));
  v347 = 439 * ((v340 >> 4) & 0xF0 | HIWORD(LODWORD(STACK[0x588])) & 0xF) + 8780;
  v348 = *(v121 + (v347 - 974 * ((4409618 * v347) >> 32)));
  v349 = (((v346 - ((2 * v346) & 0x36)) << 12) + 1025617920) ^ (((v344 - ((2 * v344) & 0x128)) << 8) - 737438720);
  LOBYTE(v346) = ((v342 & 0x10 | 0x6F) + (((v342 & 0x10) - 37) ^ (v342 & 0x10 | 0xE7) ^ ((v342 & 0x10 ^ 0x1E) + 15)) - 112) & 0xE0 ^ 0x50;
  v350 = 439 * ((v340 >> 8) & 0xF0 | (LODWORD(STACK[0x514]) >> 4)) + 8780;
  v351 = *(v121 + (v350 - 974 * ((4409618 * v350) >> 32)));
  v352 = ((v348 + 959255872 - ((2 * v348) & 0x80)) ^ 0x392D1540u) << (v346 & 0x30) << (v346 & 0xC0 ^ 0x40u);
  v353 = 439 * ((v340 >> 12) & 0xF0 | (LODWORD(STACK[0x540]) >> 8) & 0xF) + 8780;
  v354 = *(v121 + (v353 - 974 * ((4409618 * v353) >> 32)));
  v355 = HIWORD(v340) & 0xF0 | (LODWORD(STACK[0x514]) >> 12);
  v356 = v349 ^ v352;
  v357 = *(v121 + (439 * v355 + 8780 - 974 * ((4409618 * (439 * v355 + 8780)) >> 32)));
  LODWORD(v352) = (((v351 - ((2 * v351) & 0x54)) << 20) - 224395264) ^ 0x38B4233B ^ v356;
  v358 = (((v354 - ((2 * v354) & 0x6A)) << 24) - 1258291200) ^ 0x6E031CEE ^ v352;
  v359 = v358 ^ (((v357 - ((2 * v357) & 4)) << 28) + 0x20000000);
  v360 = v359 ^ v342;
  v361 = (((((v359 >> 28) ^ 0xD) + 283) | (228 - ((v359 >> 28) ^ 0xD))) & 0x1B7) * (((v359 >> 28) ^ 0xD) + 283);
  v362 = *(v121 + (439 * (((HIBYTE(v358) & 0xF ^ 0x8319022) - 1060103297) ^ ((HIBYTE(v358) & 0xF ^ 0x69C11E1B) - 1591700152) ^ ((HIBYTE(v358) & 0xF ^ 0x61F08E31) - 1458502290)) - 2059667830) % 0x3CEu);
  LODWORD(v352) = *(v121 + (439 * ((((v352 >> 20) & 0xF ^ 0xDFD5C1FA) + 159177456) ^ (((v352 >> 20) & 0xF ^ LODWORD(STACK[0x4C0])) + 647763963) ^ (((v352 >> 20) & 0xF ^ 0x2FE0CD16) - 112601596)) - 469471012) % 0x3CE);
  v363 = *(v121 + (v361 - 974 * ((4409618 * v361) >> 32)));
  v364 = STACK[0x630];
  v365 = *(v121 + (439 * (((HIWORD(v356) & 0xF ^ 0x3B869EA9) - 959410886) ^ ((HIWORD(v356) & 0xF ^ 0x5EA461AF) - 1544392128) ^ ((HIWORD(v356) & 0xF ^ 0x6522FF0C) - 1737167715)) - 1855568256) % 0x3CEu);
  v366 = (((((v363 - ((2 * v363) & 0xA8)) << 12) + 1798651904) ^ 0x660022 ^ (((v362 - ((2 * v362) & 0xE6)) << 8) - 35622144)) & ((v365 - ((2 * v365) & 0xB2) + 1550385753) ^ LODWORD(STACK[0x4BC]))) + ((v365 - ((2 * v365) & 0xB2) + 1550385753) & 0xDD);
  v367 = *(v121 + (439 * ((((v356 >> 12) ^ 0x84A3FF5C) + 988428816) ^ ((v356 >> 12) + 1050016084) ^ (((v356 >> 12) ^ 0x7485250E) - 892542882)) - 1350531665) % 0x3CE);
  v368 = v367 + 418302 - ((2 * v367) & 0x184);
  v369 = *(v121 + (439 * ((((v360 >> 8) & 0xF ^ 0xA04D8807) - 434738847) ^ (((v360 >> 8) & 0xF ^ 0x45D83BD5) + 58972851) ^ (((v360 >> 8) & 0xF ^ 0xE595B3D9) - 1546759489)) + 1483887458) % 0x3CE);
  v370 = STACK[0x5C0];
  v371 = v369 - ((2 * v369) & 0x14);
  v372 = (((v352 - ((2 * v352) & 0xA8)) << 12) - 2025504768) ^ (v366 << 8);
  v373 = *(v121 + (439 * ((((v360 >> 4) ^ 0x97C22DF) + 648873752) ^ (((v360 >> 4) ^ 0x9260F138) - 1112419087) ^ (((v360 >> 4) ^ 0x9B1CD3E3) - 1261570516)) + 5903042) % 0x3CE);
  LODWORD(v352) = (439 * (((v360 & 0xF ^ 0xCDF18BB) - 934189643) ^ ((v360 & 0xF ^ 0xED46A21A) + 701030166) ^ ((v360 & 0xF ^ 0xE199BAAF) + 622315425)) - 274102561) % 0x3CE;
  v374 = STACK[0x638];
  LODWORD(STACK[0x670]) = (LODWORD(STACK[0x670]) + (((LODWORD(STACK[0x598]) ^ 0xCEA4DA1A) - 725588343) ^ ((LODWORD(STACK[0x598]) ^ 0xB4A5F83C) - 1363065681) ^ ((LODWORD(STACK[0x598]) ^ 0x9D2CCCD3) - 2025295806)) + 1884200086 - 93500850) ^ 0xF17E571D ^ LODWORD(STACK[0x648]);
  v375 = ((v368 << 12) + 1851392) ^ (v370 + 271393 + LODWORD(STACK[0x658])) ^ (*(v121 + v352) - ((2 * *(v121 + v352)) & 0x36) - 283807205) ^ (16 * (v373 - ((2 * v373) & 0x3C)) - 382860832) ^ (((v372 ^ 0xBD9BA) & ((v371 - 359968502) ^ 0x74AEB1) ^ (v371 - 359968502) & 0x21D45) << 8);
  v376 = v218;
  LODWORD(STACK[0x6B8]) = LODWORD(STACK[0x618]) - 1447252915;
  v377 = *(STACK[0x6D8] + 8 * ((2 * v376) | (32 * v376) | LODWORD(STACK[0x4F8])));
  LODWORD(STACK[0x6C0]) = v327;
  LODWORD(STACK[0x6B0]) = v338;
  LODWORD(STACK[0x658]) = v374;
  LODWORD(STACK[0x648]) = v364;
  LODWORD(STACK[0x650]) = STACK[0x5D8];
  LODWORD(STACK[0x678]) = v375 ^ 0xFAAF2233;
  return v377();
}

uint64_t sub_1001FF6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = STACK[0x5780];
  v7 = (((LODWORD(STACK[0x5780]) + 1083936269) & 0xBF6433D9) - 12058) & a6;
  v8 = *(STACK[0xDCB8] + (5621 * v7 + 13035099) % 0x1808);
  v10 = *(STACK[0xDCB0] + 4 * STACK[0x5720]) ^ 0xFFFFFFE6;
  if (((1 << ((((LODWORD(STACK[0x5780]) + 13) & 0xD9) - 26) & a6)) & LODWORD(STACK[0x5700])) != 0)
  {
    v9 = v8 & 0x16 ^ 0xFFFFFFF1;
    v10 = v8 ^ (v10 - ((2 * v10) & 0x58) + 44) ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * (v9 ^ v8 & 0x22222222)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ 0x3A;
  }

  v11 = *(STACK[0x5790] + 448);
  *(STACK[0x5710] + 4 * STACK[0x5720]) = v10 + 1111003110 - ((2 * v10) & 0x1CC);
  return (*(STACK[0x57D8] + 8 * ((113 * (((v7 + 1) & 0xF8) == 0)) ^ v6)))(v11);
}

uint64_t sub_1001FFC64(uint64_t a1, int a2, int a3, __int16 a4, __int16 a5, int a6, int a7, int a8)
{
  HIDWORD(v23) = v10 + 147509;
  LODWORD(v23) = v10 - 1485946827;
  v24 = a2 + (v23 >> 18);
  LODWORD(STACK[0x5770]) = v24;
  v25 = v24 + 2057897305;
  v26 = v24 + 2057897305 - (a6 ^ 0x946755D1 ^ (a7 - ((2 * a7) & 0x38CC903A) - 1671018467));
  LODWORD(STACK[0x5760]) = v25;
  v27 = (v21 & 0xFCC803EB ^ 0xF04002EB) - 1509413994 + v9;
  v28 = v18 & (v15 ^ 0x520AB75B) ^ v12;
  v29 = ((2 * (v15 ^ 0x620ABB7B)) ^ 0xF00578D6) & (v15 ^ 0x620ABB7B) ^ (2 * (v15 ^ 0x620ABB7B)) & 0xF802BC6A;
  v30 = (v29 ^ 0xF002B868) & (4 * v28) ^ v28;
  v31 = ((4 * (v29 ^ 0x8028429)) ^ 0xE00AF1AC) & (v29 ^ 0x8028429) ^ (4 * (v29 ^ 0x8028429)) & 0xF802BC68;
  v32 = (v31 ^ 0xE002B023) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x18000C43)) ^ 0x802BC6B0) & (v31 ^ 0x18000C43) ^ (16 * (v31 ^ 0x18000C43)) & 0xF802BC60;
  v34 = v32 ^ 0xF802BC6B ^ (v33 ^ 0x80028400) & (v32 << 8);
  HIDWORD(v23) = a3 + a2 - 1694525621 + (a8 ^ ((a8 ^ 0x5790CFF5) - 207972184) ^ ((a8 ^ 0x99C019E1) + 1036668596) ^ ((a8 ^ 0x705A9146) - 732903915) ^ ((a8 ^ 0xE5FFEFFF) + 1106622638) ^ 0xB25597AF ^ (v26 - 375374077 + (~(2 * v26) | 0x2CBF81FB)));
  LODWORD(v23) = HIDWORD(v23);
  v35 = v13 + (v23 >> 1);
  v36 = v35 + 903134601;
  v37 = (v21 ^ v22 ^ 0x849C413B) - (v27 ^ 0x91AEBBC5);
  v38 = STACK[0x5710];
  v39 = (v27 ^ ((v8 & 0x714 ^ 0x45212DEF ^ v19) - (v21 ^ 0xF3B33B3E)) ^ 0xCC0637C3) - (v37 ^ 0xFF695B8D);
  HIDWORD(v23) = (LODWORD(STACK[0x5710]) ^ v11) + v13 - 742471849 + (v15 ^ (2 * ((v34 << 16) & 0x78020000 ^ v34 ^ ((v34 << 16) ^ 0x3C6B0000) & (((v33 ^ 0x7800384B) << 8) & 0x78020000 ^ 0x78020000 ^ (((v33 ^ 0x7800384B) << 8) ^ 0x2BC0000) & (v33 ^ 0x7800384B)))) ^ 0xC119C7EA ^ (v36 + (v25 ^ (v15 - 1710749937)) - ((2 * (v36 + (v25 ^ (v15 - 1710749937)))) & 0xB6217058) - 619661268));
  LODWORD(v23) = HIDWORD(v23);
  v40 = v15 - 1710749936 + (v23 >> 16);
  v41 = (v27 ^ ((v20 & 0x99B ^ 0x739AEE7C ^ LODWORD(STACK[0x5720])) - (v21 ^ 0xCD0BFDEA)) ^ 0xBE5E7223) + (v37 & 0x7B9A33B4);
  v42 = (v21 ^ 0x57643671) - 2065981645 + (v27 ^ 0x6FFEE41D) + (v37 & 0xBE09D6) + v39 - ((2 * v39) & 0x57C11FA4) + LODWORD(STACK[0x57B0]);
  v43 = ((2 * v37) & 0x5115854C) - v37 + (v39 ^ 0xE7DE506A) + (v27 ^ ((a4 & 0x64F ^ 0x820765B8 ^ v17) - (v21 & 0x6DF1D9ED ^ 0x6041D0E9)) ^ 0x20B1EB8B) - 680182438;
  v44 = v43 ^ v42 & 0x7A079A7E;
  v45 = (v39 ^ v41 ^ 0x66C0BD7E ^ v42) - (v44 ^ 0xAD5A5402);
  v46 = v21 ^ 0xD3FD072 ^ LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x57B0]) = v44 ^ v42;
  v47 = (v44 ^ v42 ^ v39 & 0x66698632 ^ ((v27 ^ v21 ^ v16 ^ 0x614AEE3) + (v37 ^ 0xA834B77A) + 2 * ((v21 ^ v16 ^ 0x99B07AC9) & (v27 ^ 0x1FA4D42A))) ^ 0xA9609B7A) + (v45 ^ 0x5A14EE93);
  v48 = (v44 ^ 0x7E8D216B) + (v39 ^ LODWORD(STACK[0x39E4]) ^ ((v27 ^ 0xB108AB47) + v46 + (v37 ^ 0x97A9ED78) + 1) ^ v42) + (v45 ^ 0xEF6DD551) + (v47 ^ 0x15AF2DA2) + 1;
  v49 = (v42 ^ ((v39 ^ 0xBC4D6CA6) - (v37 ^ 0x5E4B2D72) + (v27 ^ v21 ^ v38 ^ 0x1A149F36)) ^ 0x43FA45C3 ^ v44 & 0xE73E431E) - (v45 ^ 0x3F1518E6) + (v47 ^ 0x51BA18A1) + (v48 ^ 0x6CBA92AC);
  v50 = ((v45 ^ v47 & 0xFFFFDFFF ^ (-2012550865 - (v47 & 0x2000)) ^ ((v39 ^ 0x9DF08A5) + v42 - ((2 * v42) & 0xC9592E9E) + (v44 ^ 0xF08787DC) + (v27 ^ v21 ^ v14 ^ v37 ^ 0xCF1613B4) + 1689032528) ^ 0x167F37D2) - (v48 ^ 0x884275FE)) ^ v49;
  v51 = v50 ^ 0xCDEBBA48;
  v52 = (v47 ^ 0xDDD4641E) + (((v39 ^ 0x1A67A798) + (v42 ^ 0x4F4B4649) + (v27 ^ 0x6F3E772 ^ ((v21 ^ 0xE05A6F4D) - 1520679616 + LODWORD(STACK[0x57A0])) ^ v37) + (v44 ^ 0x9D5BB971) + 3) ^ v45 & 0xDF028573) + (v48 ^ 0x16B42B94) - (v49 ^ 0x24CECBC8) - ((v50 ^ 0xCDEBBA48) & 0x353EC385) + 2;
  v53 = (v44 ^ v42 ^ ((v37 ^ 0xDB31F76F ^ ((v27 ^ 0xD7A87846) + (v21 ^ 0x6B560E84) + (a5 & 0x1BAA ^ 0xA36FB4D7 ^ LODWORD(STACK[0x56E0])))) + (v39 ^ 0xE1D40486)) ^ 0xF01F1256) - (v45 ^ LODWORD(STACK[0x39E0]));
  v54 = (v21 ^ 0xE3013E84) + (v27 ^ 0x66B81EFE) + (v37 ^ 0xF9E29503) + a3 + (v39 ^ 0x194F8825) + 1125862606 + (v42 ^ 0xD938B66F);
  v55 = (v50 ^ 0xFDD7211F) + (v49 ^ 0x1C64630D ^ ((((v42 ^ 0x149CA83) + (v44 & 0xB0613A1B) + (v39 ^ 0xBAC7DD9C ^ ((v21 & 0x35D1330E ^ 0x3041120A) + LODWORD(STACK[0x5790]) + (v27 ^ LODWORD(STACK[0x39DC])) - (v37 ^ 0x3FD57AD) + 208548137)) + (v45 ^ 0xC30C43BD) + 1) ^ v47 & 0x5E307613) + (v48 & 0x5C2BD6A8))) + (v52 ^ 0xD7849C71) + 1;
  v56 = (v48 ^ 0x68180A8F) - ((2 * v49) & 0xCE7BB9FE) + v49 - 415376129 + (v50 ^ 0x2FBC2221) + (v53 ^ v47 & 0x48CBB108) + (v52 ^ 0xEF925580) + (v55 ^ 0x2A0C5045);
  v57 = (v37 & 0x3876C112) + (v27 ^ 0x912CF17) - (v39 & 0xC218B53E) + (v21 ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5700]) ^ 0xCDF90F33);
  v58 = (v50 ^ 0x26676B7B) + (v49 ^ 0x4AC7BD35) + (v48 ^ ((v47 ^ 0xC26A73B8) + (v45 ^ 0x7F482D52) + (v44 ^ 0x4D5A4AC8 ^ ((v57 ^ v42 & 0xFD19D7E5) + 2 * (v57 & v42 & 0xFD19D7E5)))) ^ 0xAAE755B3);
  v59 = (v21 ^ 0xF041D6FB) + (v27 ^ 0x37A659A5) - v37 + ((2 * v37) & 0xF0286E6A) + (v39 ^ 0x1A312529);
  v60 = v56 + 3;
  v61 = (v56 + 3) ^ v55;
  v62 = v61 ^ ((v50 ^ 0x6AA34056) + (v49 ^ 0x389FFC06) + (v48 ^ v47 ^ ((v44 ^ v54 ^ 0xE94A463F) - (v45 ^ 0x8ED84EBD)) ^ 0xE56009DE) + (v52 ^ 0x50F3873F));
  v63 = (v55 ^ 0x1F31F80) - 1469326723 + v60 - ((2 * v60) & 0x50D7B4FA) + (v52 ^ v58 ^ 0x5AA9508E) + (v62 ^ 0x9E1F4175);
  v64 = ((v37 & 0x7665D06D ^ v27) + (v39 ^ 0xDDF5AEA8) + (v42 ^ 0x26B162F9) + (v44 ^ 0xB676912D) + 1) ^ v45 ^ 0x7442B61D;
  if ((((v55 ^ 0x80) + 125 + v60 - ((2 * v60) & 0xFA) + (v52 ^ v58 ^ 0x8E) + (v62 ^ 0x75)) & 4) != 0)
  {
    v65 = -4;
  }

  else
  {
    v65 = 4;
  }

  v66 = (v49 & 0xF14B7BD2 ^ ((v48 ^ 0x2F7DC5D5) + ((((v59 - 2014590772) ^ 0x91A4F8A0 ^ v42) - (v44 ^ 0x58BF2CBA)) ^ 0xB5382841 ^ v45 ^ v47))) + (v51 & 0x59D414BA) + (v55 & 0x1D15A3D3) + ((2 * v52) & 0xFB8ACDFC) - v52 + (v60 ^ 0x80E6FE24) + (v62 ^ LODWORD(STACK[0x5590])) + 37394691 + ((v65 + v63) ^ 0xC9E19F26);
  LODWORD(STACK[0x57A0]) = ((v64 + (v47 ^ 0x814EA1BC) + (v48 ^ 0x3A9D6A75) + (v49 ^ 0xCC27CE6E) + (v50 ^ 0x878CEB8F) + 3) ^ 0x9088AAD ^ v52) - (v55 ^ 0xBC2E05D9);
  v67 = v48 & 0x833EBF78 ^ (v39 + (v42 & 0x834EACBC) + (v44 & 0x7FFFFFFF ^ (v43 & 0x80000000 | 0x420D10F4)) + (v45 ^ 0x7487682C) + (v47 ^ 0x1783D7C9) + 1);
  v68 = (v52 & 0x55B05FE1 ^ ((v50 ^ 0xA02894B1) + (((((v39 ^ 0x544E82FE) + v37 - (v42 & 0xEA7121A1)) ^ v44 ^ 0xF115F3D1) - (v45 & 0x514B989F) + (v47 & 0x52839BBC)) ^ 0x8EB39010 ^ v48 ^ v49))) + (v55 ^ 0xFB08E70A) + (v60 ^ 0x16614FCC) + (v62 ^ 0x8C53FB1C) + (v63 ^ 0xBC34B940);
  v69 = v62 ^ 0x2CB00976;
  LODWORD(STACK[0x5780]) = v61 ^ ((((v45 ^ v44 ^ 0x51BAC970) - (v47 ^ 0x9C025D12)) ^ v48 ^ 0x4F53C65D ^ v49 & 0xD499D966) + (v50 ^ 0x18E08351) + (v52 ^ 0xF8677420) + 1) ^ 0x5D926394;
  v70 = (v61 ^ ((v50 ^ 0xBC08C8D7) + (v48 ^ v47 ^ 0xDFEDCA5) - (v49 ^ 0xA0E67458) - 2 * ((v50 ^ 0xBC08C8D7) & ((v48 ^ v47 ^ 0xDFEDCA5) - (v49 ^ 0xA0E67458)))) ^ 0x344B9153 ^ v52) - (((v69 & 0x40) - 1100682701) ^ v69 & 0xFFFFFFBF);
  v71 = v63 ^ 0x61CF8FCB ^ v70;
  v72 = (v63 ^ 0x61CF8FCB) & v70;
  LODWORD(STACK[0x5790]) = v51;
  v73 = (v62 ^ 0x2CB00976) & 0x47D14AD0 ^ ((v49 & 0x24E3D917 ^ v48 ^ v51 & 0x9179138 ^ v52 & 0xCA71DA1B) + (v55 ^ 0x266A7C06) + (v60 ^ 0xA41936B3) + 1);
  v74 = (v55 ^ ((v52 ^ 0xECA1496B) + v51) ^ 0x5AEA636C) + (v60 ^ 0x2ADE178B) - v69 + ((2 * v69) & 0x3C77C13C) + (v63 ^ 0xBB719D29) - 507240605;
  v75 = v68 + 3;
  HIDWORD(v76) = v74 + v15 - LODWORD(STACK[0x5760]) - 1491711770 + (v36 ^ (LODWORD(STACK[0x5770]) + 2057897304) ^ v40);
  LODWORD(v76) = HIDWORD(v76);
  v77 = (v76 >> 20) + LODWORD(STACK[0x5760]);
  v78 = v68 - 1970449936 + LODWORD(STACK[0x5760]) + ((v77 - (v40 ^ (v35 + 903134600))) ^ v36);
  v79 = v63 ^ 0xF52B255D ^ (v60 - v69 - 1901131835 + ((2 * v69) & 0xE2A1F076));
  v80 = v67 + (v49 ^ 0x4DD47C35) + (v50 ^ 0xCAFB8D3E) + (v52 ^ 0x7E0CCD5C) + (v55 ^ 0x2910ADCC) - 2 * (v55 ^ 0x2910ADCC) + (v60 ^ 0x81F9FCEC) + (v62 ^ 0x80369366) + (v63 ^ 0xB338D231) + 4;
  HIDWORD(v76) = v78;
  LODWORD(v76) = v78;
  v81 = (v76 >> 1) + v36;
  v82 = (v62 ^ 0x2CB00976) - (v63 ^ 0xA7E43037);
  HIDWORD(v76) = v67 + (v49 ^ 0x4DD47C35) + (v50 ^ 0xCAFB8D3E) + (v52 ^ 0x7E0CCD5C) + (v55 ^ 0x2910ADCC) - 2 * (v55 ^ 0x2910ADCC) + (v60 ^ 0x81F9FCEC) + (v62 ^ 0x80369366) + (v63 ^ 0xB338D231) - 1169087540 + v36 - v40 + (v77 ^ (v40 - 1) ^ v81);
  LODWORD(v76) = HIDWORD(v76);
  v83 = (v76 >> 14) + v40;
  HIDWORD(v76) = v40 + v82 - 905237108 - v77 + (v81 ^ (v77 - 1)) + v83;
  LODWORD(v76) = HIDWORD(v76);
  v84 = (v76 >> 9) + v77;
  HIDWORD(v76) = v79 - 1364692158 + v77 - v81 - (v83 ^ (v81 - 1)) + v84;
  LODWORD(v76) = HIDWORD(v76);
  v85 = v71 + 2 * v72;
  v86 = ((v76 >> 20) ^ v81) + 2 * ((v76 >> 20) & v81);
  HIDWORD(v76) = v81 + v75 + 1783405178 + v83 + (v84 ^ (v83 - 1) ^ v86);
  LODWORD(v76) = HIDWORD(v76);
  v87 = (v76 >> 1) + v83;
  HIDWORD(v76) = v75 + 951106427 + v83 + v84 + (v86 ^ (v84 + 1)) + v87;
  LODWORD(v76) = HIDWORD(v76);
  v88 = (v76 >> 14) + v84;
  HIDWORD(v76) = v80 - 1984367560 + v84 - v86 + (v87 ^ (v86 + 1)) + v88;
  LODWORD(v76) = HIDWORD(v76);
  v89 = (v76 >> 9) + v86;
  HIDWORD(v76) = v73 + 134495044 + (v63 ^ 0xA92116C4) + v86 + v87 + (v88 ^ (v87 + 1)) + v89;
  LODWORD(v76) = HIDWORD(v76);
  v90 = (v76 >> 20) + v87;
  HIDWORD(v76) = v80 + 1356381109 + v87 + v88 - (v89 ^ (v88 - 1)) + v90;
  LODWORD(v76) = HIDWORD(v76);
  v91 = ((v62 ^ 0xD19C91C4) + (v52 ^ (v49 - (v50 ^ 0x6CD926CF)) ^ 0xE3FDC018) + (v55 ^ 0x8048931A) + (v60 ^ 0x4A2C97C6)) ^ v63 & 0xC68BAAA9;
  v92 = (v76 >> 1) + v88;
  HIDWORD(v76) = v66 + 42346410 + v88 + ((v92 - (v90 & ~v89)) ^ v89);
  LODWORD(v76) = HIDWORD(v76);
  v93 = (v76 >> 14) + v89;
  HIDWORD(v76) = v63 + 1579506371 + v89 + ((v93 - (v92 & (v90 + 1))) ^ v90);
  LODWORD(v76) = HIDWORD(v76);
  v94 = (v76 >> 9) + v90;
  HIDWORD(v76) = v79 + 897692769 + v90 + ((v94 - (v93 ^ (v92 - 1))) ^ v92);
  LODWORD(v76) = HIDWORD(v76);
  v95 = (v76 >> 20) + v92;
  v96 = v74 + 1029249135;
  HIDWORD(v76) = v92 + v74 + 1029249135 - v93 - (v94 ^ (v93 - 1)) + v95;
  LODWORD(v76) = HIDWORD(v76);
  v97 = (v76 >> 1) + v93;
  HIDWORD(v76) = v93 - 583318232 + (v95 ^ v97 ^ ~v91) + 2 * (v91 & ~(v95 ^ v97));
  LODWORD(v76) = HIDWORD(v76);
  v98 = (v76 >> 14) + v94;
  HIDWORD(v76) = v94 + v85 - 1645606450 + (v98 ^ ((v95 ^ ~v97) - v95)) + 2 * (v98 & ((v95 ^ ~v97) - v95));
  LODWORD(v76) = HIDWORD(v76);
  v99 = (v76 >> 9) + v95;
  HIDWORD(v76) = v63 + 219038166 + v95 + ((v99 - (v98 ^ (v97 - 1))) ^ v97);
  LODWORD(v76) = HIDWORD(v76);
  v100 = (v76 >> 21) + v97;
  HIDWORD(v76) = v80 - 1970449939 + v97 + v98 - (v99 ^ (v98 - 1)) + v100;
  LODWORD(v76) = HIDWORD(v76);
  v101 = (v76 >> 24) + v98;
  HIDWORD(v76) = v75 - 1169087544 + v98 + v99 - (v100 ^ (v99 - 1)) + v101;
  LODWORD(v76) = HIDWORD(v76);
  v102 = (v76 >> 10) + v99;
  HIDWORD(v76) = v99 + v82 - 905237108 + ((v102 + 1 + (v101 ^ v100)) ^ v100);
  LODWORD(v76) = HIDWORD(v76);
  v103 = (v76 >> 9) + v100;
  HIDWORD(v76) = v85 - 1364692158 + v100 + v101 + (v101 ^ ~v102) + v103;
  LODWORD(v76) = HIDWORD(v76);
  v104 = (v76 >> 21) + v101;
  HIDWORD(v76) = v101 + v75 + 1783405178 - v102 + (v103 ^ (v102 + 1)) + v104;
  LODWORD(v76) = HIDWORD(v76);
  v105 = (v76 >> 24) + v102;
  HIDWORD(v76) = v66 + 951106427 + v102 - v103 + (v104 ^ (v103 - 1) ^ v105);
  LODWORD(v76) = HIDWORD(v76);
  v106 = (v76 >> 10) + v103;
  v107 = v82 - 1984367560 - v104 + (v105 ^ (2 * (v104 & 1) + (v104 ^ 1))) + v106;
  HIDWORD(v76) = (v107 ^ v103) + 2 * (v107 & v103);
  LODWORD(v76) = HIDWORD(v76);
  v108 = (v76 >> 9) + v104;
  HIDWORD(v76) = v66 + 134495044 + v104 + ((v108 - (v106 ^ (v105 - 1))) ^ v105);
  LODWORD(v76) = HIDWORD(v76);
  v109 = (v76 >> 21) + v105;
  HIDWORD(v76) = v74 + 1356381109 + v105 + v106 + (v108 ^ (v106 + 1)) + v109;
  LODWORD(v76) = HIDWORD(v76);
  v110 = (LODWORD(STACK[0x5780]) ^ v62 ^ 0x2CB00976) - (v63 ^ 0xB1394844);
  v111 = (v76 >> 24) + v106;
  HIDWORD(v76) = v85 + 42346410 + v106 - v108 + (v109 ^ (v108 - 1) ^ v111);
  LODWORD(v76) = HIDWORD(v76);
  v112 = ((v76 >> 10) ^ v108) + 2 * ((v76 >> 10) & v108);
  v113 = v80 + 1579506371;
  HIDWORD(v76) = v80 + 1579506371 + v108 + ((v112 + (v111 & (v109 + 1))) ^ v109);
  LODWORD(v76) = HIDWORD(v76);
  v114 = (v76 >> 9) + v109;
  HIDWORD(v76) = v63 + 897692769 + v109 + ((v114 - (v112 ^ (v111 + 1))) ^ v111);
  LODWORD(v76) = HIDWORD(v76);
  v115 = (v76 >> 21) + v111;
  HIDWORD(v76) = v110 + 1029249135 + v111 + ((v115 + 1 + (v114 ^ v112)) ^ v112);
  LODWORD(v76) = HIDWORD(v76);
  v116 = v62 ^ 0x2CB00976 ^ v60 ^ LODWORD(STACK[0x57A0]) ^ 0xC8603231 ^ v63;
  v117 = (v76 >> 24) + v112;
  HIDWORD(v76) = v116 - 583318232 + v112 - v114 - (v115 ^ (v114 - 1)) + v117;
  LODWORD(v76) = HIDWORD(v76);
  v118 = (v76 >> 10) + v114;
  HIDWORD(v76) = v114 + v85 - 1645606450 - v115 + (v117 ^ (v115 + 1)) + v118;
  LODWORD(v76) = HIDWORD(v76);
  v119 = (v76 >> 9) + v115;
  v120 = v119 & 0x10000;
  if ((v119 & 0x10000 & ~v118) != 0)
  {
    v120 = -v120;
  }

  v121 = (v60 ^ 0xDBA548D5) + (v55 ^ v52 ^ ((v48 ^ 0x2B267A58 ^ ((v47 ^ 0x396DDC2D) + v45)) + 2 * ((v48 ^ 0x2B267A58) & ((v47 ^ 0x396DDC2D) + v45)) + (v49 ^ 0x64B09967) + 1) ^ v50 ^ 0xCBF1774A) - (v62 ^ 0x2D33CF8F);
  v122 = (LODWORD(STACK[0x5790]) ^ ((((LODWORD(STACK[0x57B0]) ^ 0x297FAACE ^ v45) - (v47 ^ 0xE27F3DD9)) ^ 0xB8BF4C08 ^ v48) - (v49 ^ 0x31E2ED72)) ^ 0xD3309B75) + (v52 ^ 0xB9576A35) + (v55 ^ 0x9A53E15D) + (v60 ^ 0x96054A74) + (v62 ^ 0x1FE82630) + (v63 & 0x1E11720F) + 3;
  v123 = v63 ^ v121 ^ 0x162A2954;
  HIDWORD(v124) = v123 + 219038166 + v115 + ((v119 + (v118 ^ ~v117) - 2 * (v119 & (v118 ^ ~v117))) ^ v117);
  LODWORD(v124) = HIDWORD(v124);
  v125 = (v124 >> 16) + v117;
  HIDWORD(v124) = v63 - 1970449939 + v117 - v118 + ((v120 + ~v118) ^ v119 & 0xFFFEFFFF ^ v125);
  LODWORD(v124) = HIDWORD(v124);
  v126 = (v124 >> 19) + v118;
  HIDWORD(v124) = (v118 ^ 0xBA5123C8) + v75 + ((2 * v118) & 0x74A24790) + (v126 ^ v125 ^ v119 ^ (v119 - 1));
  LODWORD(v124) = HIDWORD(v124);
  v127 = (v124 >> 7) + v119;
  HIDWORD(v124) = v119 + v123 + v125 - 905237108 + (v126 ^ ~v125) + v127;
  LODWORD(v124) = HIDWORD(v124);
  v128 = (v124 >> 20) + v125;
  HIDWORD(v124) = v110 - 1364692158 + v125 + v126 + (v127 ^ v126) + v128 + 1;
  LODWORD(v124) = HIDWORD(v124);
  v129 = (v124 >> 16) + v126;
  v130 = v123 - v127 - (v128 ^ (v127 - 1)) + v129;
  HIDWORD(v124) = v126 + (v130 ^ 0xCF8DAD5C) + ((2 * v130) & 0x9F1B5AB8) - 1698763490;
  LODWORD(v124) = HIDWORD(v124);
  v131 = ((v124 >> 19) ^ v127) + 2 * ((v124 >> 19) & v127);
  HIDWORD(v124) = v91 + 951106427 + v127 + (((v129 ^ v128) + v131 + 1) ^ v128);
  LODWORD(v124) = HIDWORD(v124);
  v132 = (v124 >> 7) + v128;
  HIDWORD(v124) = (v63 ^ ((v60 ^ 0x81CB18C0) + v55 + (v62 ^ 0x28FF5107)) ^ 0xD216B31F) - 1984367560 + v128 + ((v132 - (v131 & (v129 + 1))) ^ v129);
  LODWORD(v124) = HIDWORD(v124);
  v133 = (v124 >> 20) + v129;
  HIDWORD(v124) = v129 + 134495044 + (((v132 & (v131 - 1)) + v131 + v133) ^ v122) + 2 * (((v132 & (v131 - 1)) + v131 + v133) & v122);
  LODWORD(v124) = HIDWORD(v124);
  v134 = ((v124 >> 16) ^ v131) + 2 * ((v124 >> 16) & v131);
  HIDWORD(v124) = v75 + 1356381109 + v131 + v132 - (v133 ^ (v132 - 1)) + v134;
  LODWORD(v124) = HIDWORD(v124);
  v135 = (v124 >> 19) + v132;
  HIDWORD(v124) = v82 + 42346410 + v132 + ((v135 + (v134 & ~v133)) ^ v133);
  LODWORD(v124) = HIDWORD(v124);
  v136 = (v124 >> 7) + v133;
  HIDWORD(v124) = v113 + v133 + v134 + (v135 ^ v134) + v136 + 1;
  LODWORD(v124) = HIDWORD(v124);
  v137 = (v124 >> 20) + v134;
  HIDWORD(v124) = v75 + 897692769 + v134 - v135 - (v136 ^ (v135 - 1)) + v137;
  LODWORD(v124) = HIDWORD(v124);
  v138 = (v124 >> 16) + v135;
  HIDWORD(v124) = v135 + v96 + (v137 ^ ~v138);
  LODWORD(v124) = HIDWORD(v124);
  v139 = (v124 >> 19) + v136;
  v140 = v85 - 583318232 + v136 + v139 - (v138 ^ (v137 - 1)) + v137;
  v141 = (v138 ^ LODWORD(STACK[0x5670])) + 2 * (v138 & STACK[0x5670]);
  v142 = v139 ^ (v138 + 1);
  HIDWORD(v124) = v140;
  LODWORD(v124) = v140;
  v143 = (v124 >> 7) + v137;
  v144 = v143 + LODWORD(STACK[0x57C0]);
  v145 = v139 + LODWORD(STACK[0x5680]);
  HIDWORD(v124) = v116 - 1645606450 + v137 + v138 + v142 + v143;
  LODWORD(v124) = HIDWORD(v124);
  v146 = v138 + LODWORD(STACK[0x56C0]) + (v124 >> 20);
  v147 = STACK[0x56D0];
  *v147 = v141;
  v147[1] = v145;
  v147[2] = v144;
  v147[3] = v146;
  return (STACK[0xAD38])(250, 0xE261394DF4308FF2, 0xB5D18C8E75CC199DLL, 186, 2805724940, 4294944532, 0x67536EC0FB8B549DLL, 0x6F635C2EE5D7D2C6);
}

uint64_t sub_100201964()
{
  v1 = STACK[0x51B8] + v0;
  v2 = STACK[0x9930];
  LOBYTE(STACK[0x6013]) = 38;
  STACK[0xA6A0] = STACK[0x9A08];
  LODWORD(STACK[0x8A2C]) = STACK[0xBD6C];
  STACK[0x6E28] = v2;
  STACK[0x5908] = &STACK[0xC0C0];
  STACK[0x8E78] = &STACK[0x7B8C];
  LODWORD(STACK[0x9058]) = 2048;
  LODWORD(STACK[0xCF24]) = -1060642907;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100201A78@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  *(v4 + 20) = v3 + (a1 >> 29);
  v6 = *(STACK[0x57D8] + 8 * ((30 * (((a2 >> (((v2 + 107) | 4) ^ 0x9F)) & 0x3F) == 0)) ^ v2));
  LODWORD(STACK[0x5550]) = a1;
  STACK[0x5580] = v4;
  STACK[0x5590] = v5;
  return v6();
}

uint64_t sub_100201AE4@<X0>(int a1@<W8>)
{
  v3 = a1 + 22956;
  v4 = (a1 + 69205984) | 0x80100C00;
  v5 = a1 + 8508;
  v6 = STACK[0x97D4];
  *(v2 + (v6 + 3)) = 4;
  *(v2 + (v6 + 4)) = 0;
  *(v2 + v6 + v4 + (v5 | 0x5080) + 2077196837) = 20;
  return (*(STACK[0x57D8] + 8 * ((23 * (v1 + 8 <= v2 + (v6 + 6))) ^ v3)))();
}

uint64_t sub_100201BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = ~v4 + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((v6 + v4 == v3) * v7) ^ v5)))();
}

uint64_t sub_100201C0C(uint64_t a1)
{
  v1 = *(a1 + 3384);
  *(a1 + 3392) = v1;
  v2 = *(a1 + 3380);
  *(a1 + 3400) = 2 * (v2 ^ 0x7B55);
  *(a1 + 3404) = (v2 + 2474) | 0x20;
  *(a1 + 3408) = v2 + 4121;
  *(a1 + 3184) = *(STACK[0x4D10] + 24) + 16 * v1 + 8;
  v3 = STACK[0x57D8];
  *(a1 + 3168) = *(STACK[0x57D8] + 8 * (v2 ^ 0x23B9));
  return (*(v3 + 8 * (v2 + 8887)))();
}

uint64_t sub_100201D44(uint64_t a1, uint64_t a2)
{
  v3 = (v2 - 22577) | 0x380;
  v4 = v2 - 21516;
  STACK[0xC9E0] = 0;
  v5 = STACK[0x57D8];
  STACK[0x93A8] = *(STACK[0x57D8] + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x227C ^ v3)))(a1, a2, 8256);
}

uint64_t sub_100201E9C@<X0>(int a1@<W8>)
{
  LOBYTE(STACK[0xDFCF]) = v3;
  LODWORD(STACK[0xDFC8]) = v4;
  LODWORD(STACK[0xDFC4]) = v2;
  v5 = v1 - 103697032 + ((a1 + 478071389) & 0xE3815FB5);
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v2 >= v5;
  }

  v7 = !v6;
  return (*(STACK[0x57D8] + 8 * ((52 * v7) ^ a1)))();
}

uint64_t sub_100201F00()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 2567)))(1032);
  STACK[0xD750] = v2 + 0x2454F903A5AC80A3;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 - 24281) ^ 0x25E7 ^ (v0 + 807390091) & 0xCFDFF79C)) ^ v0)))();
}

uint64_t sub_100201F80()
{
  STACK[0x61E8] = 0;
  LODWORD(STACK[0x7E70]) = -769884012;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100201FB0()
{
  LODWORD(STACK[0xE41C]) = v0;
  LODWORD(STACK[0xE418]) = v1;
  return (*(STACK[0x57D8] + 8 * ((LOBYTE(STACK[0xE417]) * ((v2 - 22614) ^ 0x4841 ^ ((v2 - 6226) | 0x821))) ^ (v2 - 4535))))();
}

uint64_t sub_100202008@<X0>(int a1@<W8>)
{
  v1 = STACK[0x9C50];
  STACK[0x9240] = STACK[0x9C50];
  STACK[0x61A0] = v1;
  v2 = *STACK[0x45F8];
  v3 = *STACK[0x45F0];
  LODWORD(v1) = (3 * (v3 ^ v2) - ((2 * (v3 ^ v2)) & 2) + 1) & 0xB;
  LODWORD(v1) = ((1451 * (a1 ^ 0x1551) + v1 + 414344803) ^ (v1 - 411746626) ^ ((v1 ^ 0x9EA9FD15) + 2044939305)) + 1386754261;
  v4 = (v1 ^ 0xF4AA21FD) & (2 * (v1 & 0x1F0)) ^ ((v1 & 0x1F0) + 849820685);
  v5 = (2 * (v1 ^ 0xF4AA21FD)) & 0x32A73C0C ^ 0x12A10405 ^ ((2 * (v1 ^ 0xF4AA21FD)) ^ 0x654E781A) & (v1 ^ 0xF4AA21FD);
  v6 = (4 * v4) & 0x2843C04 ^ v4 & 0x30230FF9 ^ (4 * v4) & v5 & 0xFC0;
  v7 = (4 * v5) & 0x32A73C0C ^ 0x30230C09 ^ ((4 * v5) ^ 0xCA9CF034) & v5;
  v8 = (16 * v6) & 0x22233C00 ^ v6 ^ ((16 * v6) ^ 0x2A73C0D0) & v7;
  v9 = (16 * v7) & 0x32A73C00 ^ 0x10843C0D ^ ((16 * v7) ^ 0x2A73C0D0) & v7;
  v10 = v8 ^ (v8 << 8) & 0x32A73C00 ^ ((v8 << 8) ^ 0x843C0D00) & v9 ^ 0x22070C00;
  v11 = (16 * v1) ^ (32 * ((v10 << 16) & 0x2A70000 ^ v10 ^ ((v10 << 16) ^ 0x40D0000) & ((v9 << 8) & 0x2A70000 ^ 0x830000 ^ ((v9 << 8) ^ 0xA73C0000) & v9)));
  LOBYTE(v2) = v3 + v2;
  v12 = LODWORD(STACK[0xA4D0]) + LODWORD(STACK[0x5D04]);
  v13 = LODWORD(STACK[0x66EC]) + LODWORD(STACK[0xC2F0]);
  v14 = (3 * v2) & 0xF;
  if (v14 == 1)
  {
    v14 = 0;
  }

  LODWORD(STACK[0xAEB0]) = v14;
  v15 = LODWORD(STACK[0xB404]) + LODWORD(STACK[0xBE38]) + 16 * (v12 + v13 + LODWORD(STACK[0x614C]) + LODWORD(STACK[0x6164]) + LODWORD(STACK[0x6EFC]) + LODWORD(STACK[0x69A0]) + v14 + LODWORD(STACK[0xA804]) + LODWORD(STACK[0x7654]) + LODWORD(STACK[0x7684]) + LODWORD(STACK[0x8874]) + LODWORD(STACK[0xBFAC]) + LODWORD(STACK[0x5DB4]) + LODWORD(STACK[0x7C44]) + LODWORD(STACK[0xB68C]) + LODWORD(STACK[0x6724]) + LODWORD(STACK[0x974C]) + LODWORD(STACK[0xAF20]) + LODWORD(STACK[0x8774]) + LODWORD(STACK[0x697C]) + LODWORD(STACK[0x608C])) + LODWORD(STACK[0x9BCC]) + LODWORD(STACK[0x607C]) + LODWORD(STACK[0x703C]) + LODWORD(STACK[0x7E0C]) + LODWORD(STACK[0xCAEC]) + LODWORD(STACK[0xBFF8]) + LODWORD(STACK[0x9324]) + LODWORD(STACK[0x8E4C]) + LODWORD(STACK[0x9704]) + LODWORD(STACK[0xB76C]) + LODWORD(STACK[0xC1E4]) + LODWORD(STACK[0x6D94]) + LODWORD(STACK[0xA148]) + LODWORD(STACK[0x8E2C]) + LODWORD(STACK[0xC0C8]) + LODWORD(STACK[0x7934]) + LODWORD(STACK[0x9424]) + LODWORD(STACK[0x7A8C]) + LODWORD(STACK[0x9E74]) + LODWORD(STACK[0xB1BC]);
  v16 = v11 ^ 0x34965EA0;
  LODWORD(STACK[0xABF4]) = v16;
  v17 = v15 + v16 + 368;
  LODWORD(STACK[0x88CC]) = v17;
  return (*(STACK[0x57D8] + 8 * (((v17 > 0) | (4 * (v17 > 0))) + a1)))();
}

uint64_t sub_1002024F0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xEBC8] = ((((43 * (v2 ^ 0x6A96u)) ^ 0x8ED451AD1A0BDF67) + (v1 ^ 0x712BAE52E5F434CCLL)) ^ ((v1 ^ 0xF8F74B7739AB2E22) + 0x708B488C654D1DELL) ^ (((((v2 - 10911) | 0x1806u) - 0x76231ADAF1BCBDDCLL) ^ v1) + 0x76231ADAF1BC6586)) + 0x1AFE25E879774DELL;
  *(a1 + 16) = (((v1 ^ 0x9401268C) + 1811863924) ^ ((v1 ^ 0x29433B30) - 692271920) ^ ((v1 ^ 0x6F5E9D28) - 1868471592)) - 769884002;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x16D1)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((505 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_100202664()
{
  v1 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x4F02 ^ (v0 + 17916))))();
}

uint64_t sub_1002028D0()
{
  LODWORD(STACK[0x600]) = 16 * *STACK[0x6C8];
  v1 = (1664163399 * ((v0 & 0x20B13F51 ^ 0x20B13F51) + (v0 & 0x20B13F51))) & 0x4FD0FFBF;
  LODWORD(STACK[0x6A0]) = LODWORD(STACK[0x578]) - (((v1 ^ 0x5505563A) + 237566371) ^ ((v1 ^ 0x805FDB44) - 613255971) ^ ((v1 ^ 0xD55A8D7E) - 1904794905));
  v2 = *(STACK[0x6D8] + 8 * SLODWORD(STACK[0x590]));
  v3 = LODWORD(STACK[0x590]) - 16558;
  LODWORD(STACK[0x4F8]) = v3;
  LODWORD(STACK[0x5F8]) = v3 ^ 0xFFFFAB8F;
  STACK[0x6A8] = STACK[0x3D8];
  return v2(0xED7303B5CC0ED731, 16, -1104);
}

uint64_t sub_1002029DC()
{
  v0 = LODWORD(STACK[0x2F00]) | 0x1221;
  v1 = STACK[0x51B8] + 7655;
  STACK[0x69B0] = STACK[0xB298];
  v2 = STACK[0xA8E0];
  v3 = *(STACK[0xA8E0] + 16);
  STACK[0x6CA8] = STACK[0xA8E0];
  STACK[0xC238] = v2 + 16;
  v4 = (v3 >> 3) & 0x3F;
  STACK[0xA488] = v2 + 24;
  *(v2 + 24 + v4) = 0x80;
  return (*(STACK[0x57D8] + 8 * ((93 * ((((v4 ^ (v0 + 1229758851)) - 1334092037) ^ ((v4 ^ 0x597CB762) - 1605673545) ^ ((v4 ^ LODWORD(STACK[0x2EFC])) - 385357400)) + 113775892 < 8)) ^ v1)))();
}

uint64_t sub_100202AC8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xE8E8]) = a1;
  LODWORD(STACK[0xBB14]) = v2;
  STACK[0x69A8] = 0;
  LOBYTE(STACK[0xE8EF]) = 0;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100202B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x7318]) = v8 & 0x1F;
  LODWORD(STACK[0x6270]) = 32 - (v8 & 0x1F);
  LODWORD(STACK[0x870C]) = v8 >> 5;
  v11 = *(a8 + 4) + v10;
  if (v11 < 0)
  {
    v11 = -v11;
  }

  v12 = STACK[0x57D8];
  v13 = *(STACK[0x57D8] + 8 * v9);
  LODWORD(STACK[0x66DC]) = v11;
  STACK[0xB738] = v13;
  return (*(v12 + 8 * ((11527 * (v9 - 938987 != 17 * (v9 ^ 0x79D) - 1742547675)) ^ (v9 + 4826))))();
}

uint64_t sub_100202C78()
{
  *STACK[0xE2B0] = v0;
  *STACK[0xE2B8] = v1;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0x7F991FE8 ^ (13952 * (v2 < ((v2 - 2140715409) ^ 0xECF51C74))))))();
}

uint64_t sub_100202D18()
{
  v4 = *(STACK[0x5620] + 288) + 4 * (v2 & 0x7FFFFFFF);
  v5 = *(v0 + (v1 & (((*(STACK[0x5620] + 288) + 4 * v2) & 0xFFFFFFF8) + ((v3 + 1120125330) & 0xBD3C5EDE ^ 0xF80BE43D))));
  v6 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = ((((v6 + v5) << (((v3 + 27) | 0x13) ^ 0x12u)) | 0x827163ED5161590) - (v6 + v5) + 0x7BEC74E09574F538) ^ 0x3444FF24BB23FF74;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x8A47714CF38C4783;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (0xA6159F1DEFF4E0F5 - ((v11 + v10) | 0xA6159F1DEFF4E0F5) + ((v11 + v10) | 0x59EA60E2100B1F0ALL)) ^ 0xFB8184980A62307ALL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((v14 + v13) & 0x870305459E49FBF9 ^ 0x840305459A09A8E8) + ((v14 + v13) ^ 0x5B44402A24765715) - (((v14 + v13) ^ 0x5B44402A24765715) & 0x870305459E49FBF9)) ^ 0xC04452575E99EDE8;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0x5D96106075E72EDALL) - (v17 + v16) + 0x5134F7CFC50C6893) ^ 0xD3C1C29AD31FAF70;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((v20 + v19) & 0xE317A20CDC044F2BLL ^ 0x2004020848044520) + ((v20 + v19) & 0x1CE85DF323FBB0D4 ^ 0x14405C5320EB10C5) - 1) ^ 0x66B5D61270378346;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xB20726EF1F63AAFLL;
  LODWORD(v4) = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * ((*(STACK[0x5620] + 288) + 4 * v2) & 7u))) ^ *v4;
  return (*(STACK[0x57D8] + 8 * ((11 * ((((v4 ^ 0x356538FD) - 1945550996) ^ ((v4 ^ 0xB297DB49) + 201055456) ^ ((v4 ^ 0x87F2E3B4) + 1050600483)) == -1184102505)) ^ v3)))();
}

uint64_t sub_100203054()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 1079089617;
  v4 = 551690071 * ((~((v1 - 240) | 0x2281D455B20EC1DFLL) + ((v1 - 240) & 0x2281D455B20EC1DFLL)) ^ 0xACE37964031C6D77);
  LODWORD(STACK[0x1D4C4]) = v4 ^ (STACK[0x51B8] - 184433995) ^ 0x105E;
  LODWORD(STACK[0x1D4D0]) = v4;
  STACK[0x1D4D8] = v0 - v4;
  v5 = v2 - 184433995 - v4;
  LODWORD(STACK[0x1D4CC]) = v5;
  LODWORD(STACK[0x1D4C0]) = v3 ^ v4;
  STACK[0x1D4E0] = v4 + 4151854225u;
  LODWORD(STACK[0x1D4C8]) = v5 + 71;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2411)))(v1 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_1002031E0()
{
  v1 = STACK[0x1568] & 0xEDF87FFF;
  v2 = STACK[0x51B8] - 143135685;
  v3 = STACK[0x8ED0];
  STACK[0x74A0] = STACK[0x75A0];
  LODWORD(STACK[0x901C]) = STACK[0xB58C];
  STACK[0x8090] = v3;
  LODWORD(STACK[0x8014]) = -769884028;
  STACK[0xA3B8] = &STACK[0xA700];
  STACK[0x8BD8] = &STACK[0x7C28];
  LODWORD(STACK[0xAC7C]) = (((v0 - v2) | (v2 - v0)) >> (v1 + 38)) + 1504599281;
  return (*(STACK[0x57D8] + 8 * (v2 + 143125432)))();
}

uint64_t sub_1002034E4()
{
  STACK[0xF50] = 0;
  STACK[0xA08] = 0;
  STACK[0xCA0] = 0;
  return (*(v3 + 8 * ((((((v1 ^ 0x7662) - 23830) | 0x13C) - 260) * (v0 != v2)) ^ v1 ^ 0x7662)))();
}

uint64_t sub_100203570@<X0>(_DWORD *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(a15 + 44) ^ a2;
  *v16 = 0;
  *a1 = 0;
  return (*(a3 + 8 * (((v17 - 1147722095 == v15 - 17590) * (253 * ((v15 + 9418) ^ 0x69D9) - 22495)) ^ (v15 + 9418))))();
}

uint64_t sub_100203628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, int a5@<W8>)
{
  LODWORD(STACK[0x51F8]) = LODWORD(STACK[0x5230]) - LODWORD(STACK[0x54E0]);
  LODWORD(STACK[0x5218]) &= (v5 + 12126) ^ 0x1B21DEDA;
  v6 = LODWORD(STACK[0x5268]) + LODWORD(STACK[0x5500]) + LODWORD(STACK[0x5228]);
  v7 = STACK[0x53C0];
  LODWORD(STACK[0x5228]) = STACK[0x53C0] - 1209273303 - LODWORD(STACK[0x5188]);
  v8 = LODWORD(STACK[0x5178]) + LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x51A0]) ^ (-655608487 * LODWORD(STACK[0x56D0]));
  v9 = (a5 + 1);
  v10 = STACK[0x5780];
  LODWORD(STACK[0x5178]) = STACK[0x5190] & LODWORD(STACK[0x5780]);
  v11 = STACK[0x53B8];
  LODWORD(STACK[0x5188]) = LODWORD(STACK[0x53B8]) + LODWORD(STACK[0x54D0]);
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x57C0]) + LODWORD(STACK[0x5180]);
  LODWORD(STACK[0x5180]) = v6 + 1;
  LODWORD(STACK[0x5190]) = v11 ^ LODWORD(STACK[0x57A0]);
  LODWORD(STACK[0x55B0]) ^= v7 ^ LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x5760]);
  if (LODWORD(STACK[0x5560]) == LODWORD(STACK[0x5158]))
  {
    v12 = v7;
  }

  else
  {
    v12 = STACK[0x5580];
  }

  LODWORD(STACK[0x5500]) = LODWORD(STACK[0x5150]) + LODWORD(STACK[0x5390]);
  LODWORD(STACK[0x51A0]) = v12 | LODWORD(STACK[0x5220]);
  LODWORD(STACK[0x5158]) = -764362645 * LODWORD(STACK[0x5148]);
  LODWORD(STACK[0x5220]) = v10 ^ 0xBDC16D54;
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x5740]) ^ v10 ^ v8 ^ 0xB3197B7A;
  LODWORD(STACK[0x5268]) = LODWORD(STACK[0x5198]) ^ 0x27272727;
  STACK[0x5790] = STACK[0xD700];
  LODWORD(STACK[0x5780]) = (((LODWORD(STACK[0x5750]) ^ 0x58F9F674) + 1763926554) ^ ((LODWORD(STACK[0x5750]) ^ 0x353CFD96) + 82209276) ^ ((LODWORD(STACK[0x5750]) ^ 0x6962894F) + 1488461091)) + 344721048;
  v13 = *(STACK[0x57D8] + 8 * v5);
  STACK[0x57A0] = 93 * ((v5 + 12126) ^ 0x4D9A);
  return v13(a1, a2, a3, v9, 0x9B36CBE2AF77BC00, a4, v5 + 12126, 0x166012A000000000);
}

uint64_t sub_100203B14@<X0>(int a1@<W8>)
{
  v7 = (v1 ^ 0xCAAD90E1) & (2 * (v1 & 0x12C9D882)) ^ v1 & 0x12C9D882;
  v8 = ((2 * (v1 ^ 0xCBBEA1E5)) ^ 0xB2EEF2CE) & (v1 ^ 0xCBBEA1E5) ^ (2 * (v1 ^ 0xCBBEA1E5)) & (v6 + 6);
  v9 = v8 ^ (v5 + 3608);
  v10 = (v8 ^ 0x10666000) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x65DDE59C) & v9 ^ (4 * v9) & (v6 + 4);
  v12 = (v11 ^ 0x41556100) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x18221863)) ^ 0x97779670) & (v11 ^ 0x18221863) ^ (16 * (v11 ^ 0x18221863)) & v6;
  v14 = v12 ^ (v6 + 7) ^ (v13 ^ 0x11771000) & (v12 << 8);
  *(*(v2 + 1368) + (5621 * v1 + 198677908) % 0x1808u) = 76;
  return (*(STACK[0x57D8] + 8 * a1))(76, v1 ^ (2 * ((v14 << 16) & 0x59770000 ^ v14 ^ ((v14 << 16) ^ 0x79670000) & (((v13 ^ v4) << 8) & 0x59770000 ^ 0x8060000 ^ (((v13 ^ v4) << 8) ^ 0x77790000) & (v13 ^ v4)))) ^ 0x4C, (v3 + 2748), 76);
}

uint64_t sub_100203C90@<X0>(unint64_t a1@<X4>, unint64_t a2@<X5>, unint64_t a3@<X6>, unint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v20 = v6 - v8 - 5;
  v21 = v6 - v8 - 7;
  v22 = v6 - v8 - 8;
  v23.i64[0] = v5 + v21;
  v23.i64[1] = v5 + v22;
  v24 = v6 - v8 - 6;
  v25.i64[0] = v5 + v20;
  v25.i64[1] = v5 + v24;
  v26.i64[0] = a5 + v20;
  v26.i64[1] = a5 + v24;
  v27.i64[0] = a5 + v21;
  v27.i64[1] = a5 + v22;
  v28 = *&STACK[0x4D70];
  v29 = vandq_s8(v25, *&STACK[0x4D70]);
  v30 = vandq_s8(v23, *&STACK[0x4D70]);
  v31 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v32 = vdupq_n_s64(v13);
  v33 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v34 = vaddq_s64(v33, v32);
  v35 = vaddq_s64(v31, v32);
  v36 = vdupq_n_s64(v14);
  v37 = vdupq_n_s64(v15);
  v38 = vdupq_n_s64(v16);
  v39 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v36, v33), v37), v34), vandq_s8(v34, v38));
  v40 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v36, v31), v37), v35), vandq_s8(v35, v38));
  v41 = vdupq_n_s64(v17);
  v42 = veorq_s8(v40, v41);
  v43 = vdupq_n_s64(v12);
  v44 = veorq_s8(v39, v41);
  v45 = veorq_s8(v39, v43);
  v46 = veorq_s8(v40, v43);
  v47 = vdupq_n_s64(0x56BE29CE5970DE13uLL);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v45), v47);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v46), v47);
  v50 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v51 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v52 = veorq_s8(v48, v50);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v52);
  v55 = vaddq_s64(v53, v51);
  v56 = vdupq_n_s64(0x603021A25DE8AD6FuLL);
  v57 = veorq_s8(v55, v56);
  v58 = veorq_s8(v54, v56);
  v59 = v56;
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v61 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v62 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = vdupq_n_s64(0x1154C7BD042B7CA4uLL);
  *&STACK[0x5760] = v65;
  v66 = vdupq_n_s64(0x8AA63DE8215BE52uLL);
  *&STACK[0x5750] = v66;
  v67 = vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), v65)), v66);
  v68 = vdupq_n_s64(v10);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), v65)), v66), v68);
  v70 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v71 = veorq_s8(v67, v68);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v73 = veorq_s8(v69, v70);
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = vdupq_n_s64(0xA59630C55EFA5B24);
  *&STACK[0x5630] = v77;
  v78 = vdupq_n_s64(0xAD34E79D5082D26ELL);
  *&STACK[0x5740] = v78;
  v79 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), v77), v75), v78);
  v80 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), v77), v76), v78);
  v81 = vdupq_n_s64(0xCB369B8775C647EBLL);
  *&STACK[0x5730] = v81;
  v82 = veorq_s8(v80, v81);
  v83 = veorq_s8(v79, v81);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v88 = vaddq_s64(v86, v84);
  v89 = vdupq_n_s64(0xE44631B961E1F3CDLL);
  *&STACK[0x5720] = v89;
  v90 = vdupq_n_s64(v19);
  *&STACK[0x5710] = v90;
  v91 = vaddq_s64(vsubq_s64(vorrq_s8(v88, v89), vorrq_s8(v88, v90)), v90);
  v92 = vaddq_s64(vsubq_s64(vorrq_s8(v87, v89), vorrq_s8(v87, v90)), v90);
  v93 = vdupq_n_s64(0x4689704E0AB4736DuLL);
  v94 = veorq_s8(v92, v93);
  *&STACK[0x5700] = v93;
  v95 = veorq_s8(v91, v93);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v97 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v98 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v99 = vandq_s8(v27, v28);
  v100 = vandq_s8(v26, v28);
  v101 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v104 = *&STACK[0x4BD0];
  v105 = vaddq_s64(v103, *&STACK[0x4BD0]);
  v106 = vdupq_n_s64(a4);
  *&STACK[0x5790] = v106;
  v107 = vaddq_s64(v101, v104);
  v108 = veorq_s8(v107, v106);
  v109 = veorq_s8(v105, v106);
  v110 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v113 = vdupq_n_s64(v11);
  v114 = veorq_s8(v107, v113);
  v115 = v113;
  *&STACK[0x57C0] = v113;
  v116 = vaddq_s64(v102, v97);
  v117 = vaddq_s64(v112, v114);
  v118 = vdupq_n_s64(v18);
  v119 = vdupq_n_s64(a2);
  *&STACK[0x5780] = v119;
  v120 = vsubq_s64(vorrq_s8(v117, v119), vorrq_s8(v117, v118));
  v121 = veorq_s8(v105, v115);
  v122 = vaddq_s64(v110, v121);
  v123 = vsubq_s64(vorrq_s8(v122, v119), vorrq_s8(v122, v118));
  v124 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v125 = vaddq_s64(v98, v96);
  v126 = vdupq_n_s64(0x19466AED1FB80A73uLL);
  v127 = veorq_s8(v116, v126);
  v128 = v126;
  *&STACK[0x56F0] = v126;
  v129 = veorq_s8(v127, v111);
  v130 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v132 = vdupq_n_s64(a3);
  v133 = veorq_s8(vaddq_s64(v123, v118), v132);
  v134 = veorq_s8(v133, v131);
  v135 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v136 = veorq_s8(vaddq_s64(v120, v118), v132);
  *&STACK[0x5640] = v132;
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v138 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v139 = vaddq_s64(v135, v134);
  v140 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v141 = vaddq_s64(v138, v137);
  v142 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v143 = veorq_s8(v125, v128);
  v144 = veorq_s8(v143, v124);
  v145 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v146 = veorq_s8(v141, *&STACK[0x4600]);
  v147 = veorq_s8(v146, v142);
  v148 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v149 = veorq_s8(v139, *&STACK[0x4600]);
  v150 = veorq_s8(v149, v140);
  v151 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = vaddq_s64(v148, v147);
  v153 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v154 = vaddq_s64(v145, v144);
  v155 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v156 = *&STACK[0x4470];
  v157 = veorq_s8(vaddq_s64(v151, v150), *&STACK[0x4470]);
  v158 = veorq_s8(v157, v155);
  v159 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v160 = veorq_s8(v152, *&STACK[0x4470]);
  v161 = veorq_s8(v160, v153);
  v162 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v163 = vaddq_s64(v159, v158);
  v164 = vdupq_n_s64(0xFB12D427EBB9D3F2);
  v165 = vaddq_s64(v162, v161);
  *&STACK[0x55B0] = v164;
  v166 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v168 = vdupq_n_s64(0x27695EC0A231607uLL);
  v169 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), v164), v165), v168);
  v170 = v168;
  *&STACK[0x5680] = v168;
  v171 = vdupq_n_s64(0xDFC563D9B1D0E5F2);
  v172 = veorq_s8(v169, v171);
  *&STACK[0x56E0] = v171;
  v173 = veorq_s8(v172, v167);
  v174 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), v164), v163), v170), v171);
  v176 = veorq_s8(v175, v166);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = vdupq_n_s64(0xEE58C0C97566147BLL);
  v179 = vdupq_n_s64(v9);
  v180 = vsubq_s64(vorrq_s8(v177, v178), vorrq_s8(v177, v179));
  v181 = vaddq_s64(v174, v173);
  *&STACK[0x56C0] = v178;
  v182 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v183 = vaddq_s64(v130, v129);
  v184 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v185 = vdupq_n_s64(0x4FC139672AE17E3EuLL);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181, v178), vorrq_s8(v181, v179)), v179), v185);
  v187 = v185;
  *&STACK[0x57B0] = v185;
  v188 = veorq_s8(v186, v184);
  v189 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v190 = vdupq_n_s64(a1);
  *&STACK[0x5670] = v190;
  v191 = vdupq_n_s64(0x38uLL);
  v192 = vshlq_u64(veorq_s8(v154, v190), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v191)));
  v193 = veorq_s8(vaddq_s64(v180, v179), v187);
  v194 = veorq_s8(v193, v182);
  v195 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v196 = vaddq_s64(v189, v188);
  v197 = vdupq_n_s64(0xC9AC650B913B0648);
  *&STACK[0x57A0] = v197;
  v198 = vaddq_s64(v195, v194);
  v199 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v200 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v201 = vshlq_u64(veorq_s8(v183, v190), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v191)));
  v202 = vdupq_n_s64(0x9B29CD7A37627CDBLL);
  v203 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), v197), v198), v202);
  v204 = vdupq_n_s64(0x29ABF36E975E7FBCuLL);
  v205 = veorq_s8(v203, v204);
  *&STACK[0x5660] = v204;
  v206 = v202;
  *&STACK[0x56D0] = v202;
  v207 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), v197), v196), v202), v204);
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), veorq_s8(v207, v199)), *&STACK[0x4620]);
  v209 = *&STACK[0x4620];
  *&STACK[0x5770] = v191;
  v210 = vshlq_u64(v208, vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v191)));
  v544.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), veorq_s8(v205, v200)), v209), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v191))), v201);
  v544.val[2] = veorq_s8(v210, v192);
  v211 = v6 - v8 - 1;
  v212 = v6 - v8 - 2;
  v213 = v5 + v211;
  v210.i64[0] = v5 + v211;
  v210.i64[1] = v5 + v212;
  v214 = vandq_s8(v210, v28);
  v215 = vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL);
  *&STACK[0x55C0] = v32;
  v216 = vaddq_s64(v215, v32);
  *&STACK[0x55D0] = v38;
  v217 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v36, v215), v37), v216), vandq_s8(v216, v38));
  v218 = veorq_s8(v217, v41);
  v219 = veorq_s8(v217, v43);
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v47);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  *&STACK[0x55E0] = v59;
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v59);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223);
  v225 = *&STACK[0x5760];
  v226 = *&STACK[0x5750];
  v227 = veorq_s8(vaddq_s64(vsubq_s64(v224, vandq_s8(vaddq_s64(v224, v224), *&STACK[0x5760])), *&STACK[0x5750]), v68);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v229 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v230 = a5 + v211;
  v217.i64[0] = v230;
  v217.i64[1] = a5 + v212;
  v231 = vandq_s8(v217, v28);
  v232 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v233 = vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL);
  v234 = vaddq_s64(v229, v228);
  v235 = vaddq_s64(v232, *&STACK[0x4BD0]);
  v236 = veorq_s8(v235, *&STACK[0x5790]);
  v237 = veorq_s8(v235, *&STACK[0x57C0]);
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = *&STACK[0x5780];
  v240 = vorrq_s8(v238, *&STACK[0x5780]);
  v241 = v118;
  *&STACK[0x55A0] = v118;
  v242 = vsubq_s64(v240, vorrq_s8(v238, v118));
  v243 = *&STACK[0x5630];
  v244 = vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL);
  v245 = veorq_s8(vaddq_s64(v242, v241), v132);
  v246 = veorq_s8(v245, v244);
  v247 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v248 = *&STACK[0x5740];
  v249 = *&STACK[0x5730];
  v250 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v234, v234), *&STACK[0x5630]), v234), *&STACK[0x5740]), *&STACK[0x5730]);
  v251 = veorq_s8(v250, v233);
  v252 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v253 = vaddq_s64(v247, v246);
  v254 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL);
  v256 = vaddq_s64(v252, v251);
  v257 = veorq_s8(v253, *&STACK[0x4600]);
  v258 = veorq_s8(v257, v254);
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258), v156);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260);
  v262 = vsubq_s64(vorrq_s8(vaddq_s64(v261, v261), v164), v261);
  v263 = *&STACK[0x5720];
  v264 = *&STACK[0x5710];
  v265 = vsubq_s64(vorrq_s8(v256, *&STACK[0x5720]), vorrq_s8(v256, *&STACK[0x5710]));
  v266 = veorq_s8(vaddq_s64(v262, *&STACK[0x5680]), *&STACK[0x56E0]);
  v267 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v267);
  *&STACK[0x5650] = v179;
  v269 = vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL);
  v270 = veorq_s8(vaddq_s64(v265, v264), *&STACK[0x5700]);
  v271 = veorq_s8(v270, v255);
  v272 = vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL);
  v273 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v268, v178), vorrq_s8(v268, v179)), v179), *&STACK[0x57B0]);
  v274 = veorq_s8(v273, v269);
  v275 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), v274);
  v276 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v277 = vaddq_s64(v272, v271);
  v278 = vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL);
  v279 = veorq_s8(v277, *&STACK[0x56F0]);
  v280 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v275, v275), *&STACK[0x57A0]), v275), v206), *&STACK[0x5660]);
  v544.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), veorq_s8(v280, v278)), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v217, 3uLL), *&STACK[0x5770]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), veorq_s8(v279, v276)), *&STACK[0x5670]), vnegq_s64(vandq_s8(vshlq_n_s64(v210, 3uLL), *&STACK[0x5770]))));
  v281 = ((3 * (v7 ^ 0x9B7u)) ^ 0xFFFFFFFFFFFFA7ABLL) + v6 - v8;
  v282 = v6 - v8 - 4;
  v210.i64[0] = v5 + v281;
  v210.i64[1] = v5 + v282;
  v283 = vandq_s8(v210, *&STACK[0x4D70]);
  v284 = vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL);
  v285 = vaddq_s64(v284, v32);
  v286 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v36, v284), v37), v285), vandq_s8(v285, v38));
  v287 = veorq_s8(v286, v41);
  v288 = veorq_s8(v286, v43);
  v289 = vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL);
  v290 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), v288), v47);
  v291 = veorq_s8(v290, v289);
  v292 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v291), v59);
  v293 = veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL));
  v294 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), v293);
  v295 = veorq_s8(vaddq_s64(vsubq_s64(v294, vandq_s8(vaddq_s64(v294, v294), v225)), v226), v68);
  v296 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL));
  v297 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v296);
  v298 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v297, v297), v243), v297), v248), v249);
  v299 = veorq_s8(v298, vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL));
  v300 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL), v299);
  v301 = *&STACK[0x5710];
  v302 = vsraq_n_u64(vshlq_n_s64(v299, 3uLL), v299, 0x3DuLL);
  v217.i64[0] = a5 + v281;
  v217.i64[1] = a5 + v282;
  v303 = vandq_s8(v217, *&STACK[0x4D70]);
  v304 = *&STACK[0x4D70];
  v305 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v306 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v300, v263), vorrq_s8(v300, *&STACK[0x5710])), *&STACK[0x5710]), *&STACK[0x5700]);
  v307 = veorq_s8(v306, v302);
  v308 = vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL);
  v309 = vaddq_s64(v305, *&STACK[0x4BD0]);
  v310 = *&STACK[0x5790];
  v311 = veorq_s8(v309, *&STACK[0x5790]);
  v312 = veorq_s8(v309, *&STACK[0x57C0]);
  v313 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL), v312);
  v314 = vorrq_s8(v313, v239);
  v315 = *&STACK[0x55A0];
  v316 = vsubq_s64(v314, vorrq_s8(v313, *&STACK[0x55A0]));
  v317 = vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL);
  v318 = vaddq_s64(v308, v307);
  v319 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v320 = *&STACK[0x5640];
  v321 = veorq_s8(vaddq_s64(v316, *&STACK[0x55A0]), *&STACK[0x5640]);
  v322 = veorq_s8(v321, v319);
  v323 = *&STACK[0x4600];
  v324 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322), *&STACK[0x4600]);
  v325 = veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v326 = vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL);
  v327 = veorq_s8(v318, *&STACK[0x56F0]);
  v328 = veorq_s8(v327, v317);
  v329 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v330 = veorq_s8(vaddq_s64(v326, v325), *&STACK[0x4470]);
  v331 = veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL));
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), v331);
  v333 = *&STACK[0x55B0];
  v334 = vaddq_s64(v329, v328);
  v335 = *&STACK[0x5680];
  v336 = *&STACK[0x56E0];
  v337 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v332, v332), *&STACK[0x55B0]), v332), *&STACK[0x5680]), *&STACK[0x56E0]);
  v338 = veorq_s8(v337, vsraq_n_u64(vshlq_n_s64(v331, 3uLL), v331, 0x3DuLL));
  v339 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v338);
  v340 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v339, *&STACK[0x56C0]), vorrq_s8(v339, *&STACK[0x5650])), *&STACK[0x5650]), *&STACK[0x57B0]);
  v341 = veorq_s8(v340, vsraq_n_u64(vshlq_n_s64(v338, 3uLL), v338, 0x3DuLL));
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v341);
  v343 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v342, v342), *&STACK[0x57A0]), v342), *&STACK[0x56D0]), *&STACK[0x5660]);
  v544.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL), veorq_s8(v343, vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL))), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v217, 3uLL), *&STACK[0x5770]))), vshlq_u64(veorq_s8(v334, *&STACK[0x5670]), vnegq_s64(vandq_s8(vshlq_n_s64(v210, 3uLL), *&STACK[0x5770]))));
  *&STACK[0x5610] = xmmword_101237190;
  *&STACK[0x5620] = vqtbl4q_s8(v544, xmmword_101237190);
  v344 = v6 - v8 - 15;
  v345 = v6 - v8 - 16;
  v59.i64[0] = v5 + v344;
  v59.i64[1] = v5 + v345;
  v346 = vandq_s8(v59, v304);
  v347 = vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL);
  v348 = v6 - v8 - 13;
  v349 = v6 - v8 - 14;
  v225.i64[0] = v5 + v348;
  v225.i64[1] = v5 + v349;
  v350 = vandq_s8(v225, v304);
  v351 = vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL);
  v352 = v6 - v8 - 11;
  v353 = v6 - v8 - 12;
  v346.i64[0] = v5 + v352;
  v346.i64[1] = v5 + v353;
  *&STACK[0x55F0] = v346;
  v354 = vandq_s8(v346, v304);
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL);
  v355 = v6 - v8 - 9;
  v356 = v6 - v8 - 10;
  v346.i64[0] = v5 + v355;
  v346.i64[1] = v5 + v356;
  *&STACK[0x5600] = v346;
  v357 = vandq_s8(v346, v304);
  v358 = v304;
  v544.val[1] = vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL);
  v359 = vaddq_s64(v544.val[1], *&STACK[0x55C0]);
  v544.val[2] = vaddq_s64(v544.val[0], *&STACK[0x55C0]);
  v360 = vaddq_s64(v351, *&STACK[0x55C0]);
  v361 = vaddq_s64(v347, *&STACK[0x55C0]);
  v362 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v36, v544.val[1]), v37), v359), vandq_s8(v359, *&STACK[0x55D0]));
  v544.val[0] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v36, v544.val[0]), v37), v544.val[2]), vandq_s8(v544.val[2], *&STACK[0x55D0]));
  v363 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v36, v351), v37), v360), vandq_s8(v360, *&STACK[0x55D0]));
  v364 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v36, v347), v37), v361), vandq_s8(v361, *&STACK[0x55D0]));
  v365 = veorq_s8(v364, v41);
  v366 = veorq_s8(v363, v41);
  v544.val[1] = veorq_s8(v544.val[0], v41);
  v544.val[2] = veorq_s8(v362, v41);
  v367 = veorq_s8(v362, v43);
  v544.val[0] = veorq_s8(v544.val[0], v43);
  v368 = veorq_s8(v363, v43);
  v369 = veorq_s8(v364, v43);
  v370 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v544.val[2], 0x38uLL), v544.val[2], 8uLL), v367), v47);
  v544.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v544.val[1], 0x38uLL), v544.val[1], 8uLL), v544.val[0]), v47);
  v371 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL), v368), v47);
  v372 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL), v369), v47);
  v544.val[2] = vsraq_n_u64(vshlq_n_s64(v367, 3uLL), v367, 0x3DuLL);
  v373 = vsraq_n_u64(vshlq_n_s64(v544.val[0], 3uLL), v544.val[0], 0x3DuLL);
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL);
  v374 = veorq_s8(v372, vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL));
  v375 = vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL);
  v376 = veorq_s8(v371, v544.val[0]);
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL);
  v377 = veorq_s8(v544.val[1], v373);
  v378 = vsraq_n_u64(vshlq_n_s64(v544.val[1], 0x38uLL), v544.val[1], 8uLL);
  v544.val[1] = veorq_s8(v370, v544.val[2]);
  v379 = veorq_s8(vaddq_s64(v375, v374), *&STACK[0x55E0]);
  v544.val[0] = veorq_s8(vaddq_s64(v544.val[0], v376), *&STACK[0x55E0]);
  v380 = veorq_s8(vaddq_s64(v378, v377), *&STACK[0x55E0]);
  v381 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL), v544.val[1]), *&STACK[0x55E0]);
  v544.val[2] = vsraq_n_u64(vshlq_n_s64(v374, 3uLL), v374, 0x3DuLL);
  v382 = vsraq_n_u64(vshlq_n_s64(v376, 3uLL), v376, 0x3DuLL);
  v383 = vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL);
  v384 = veorq_s8(v381, vsraq_n_u64(vshlq_n_s64(v544.val[1], 3uLL), v544.val[1], 0x3DuLL));
  v544.val[1] = vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL);
  v385 = veorq_s8(v380, v383);
  v386 = vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL);
  v387 = veorq_s8(v544.val[0], v382);
  v388 = vsraq_n_u64(vshlq_n_s64(v544.val[0], 0x38uLL), v544.val[0], 8uLL);
  v544.val[0] = veorq_s8(v379, v544.val[2]);
  v389 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v379, 0x38uLL), v379, 8uLL), v544.val[0]);
  v390 = vaddq_s64(v388, v387);
  v391 = vaddq_s64(v386, v385);
  v544.val[1] = vaddq_s64(v544.val[1], v384);
  v544.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v544.val[1], vandq_s8(vaddq_s64(v544.val[1], v544.val[1]), *&STACK[0x5760])), *&STACK[0x5750]), v68);
  v392 = veorq_s8(vaddq_s64(vsubq_s64(v391, vandq_s8(vaddq_s64(v391, v391), *&STACK[0x5760])), *&STACK[0x5750]), v68);
  v393 = veorq_s8(vaddq_s64(vsubq_s64(v390, vandq_s8(vaddq_s64(v390, v390), *&STACK[0x5760])), *&STACK[0x5750]), v68);
  v394 = veorq_s8(vaddq_s64(vsubq_s64(v389, vandq_s8(vaddq_s64(v389, v389), *&STACK[0x5760])), *&STACK[0x5750]), v68);
  v544.val[2] = vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL);
  v395 = vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL);
  v396 = vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL);
  v397 = veorq_s8(v394, vsraq_n_u64(vshlq_n_s64(v544.val[0], 3uLL), v544.val[0], 0x3DuLL));
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL);
  v398 = veorq_s8(v393, v396);
  v399 = vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL);
  v400 = veorq_s8(v392, v395);
  v401 = vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL);
  v402 = veorq_s8(v544.val[1], v544.val[2]);
  v544.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v544.val[1], 0x38uLL), v544.val[1], 8uLL), v402);
  v403 = vaddq_s64(v401, v400);
  v404 = vaddq_s64(v399, v398);
  v544.val[0] = vaddq_s64(v544.val[0], v397);
  v544.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v544.val[0], v544.val[0]), v243), v544.val[0]), *&STACK[0x5740]), *&STACK[0x5730]);
  v405 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404, v404), v243), v404), *&STACK[0x5740]), *&STACK[0x5730]);
  v406 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v403, v403), v243), v403), *&STACK[0x5740]), *&STACK[0x5730]);
  v544.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v544.val[1], v544.val[1]), v243), v544.val[1]), *&STACK[0x5740]), *&STACK[0x5730]);
  v544.val[2] = vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL);
  v407 = vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL);
  v408 = vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL);
  v409 = veorq_s8(v544.val[1], vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v410 = vsraq_n_u64(vshlq_n_s64(v544.val[1], 0x38uLL), v544.val[1], 8uLL);
  v411 = veorq_s8(v406, v408);
  v544.val[1] = vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL);
  v412 = veorq_s8(v405, v407);
  v413 = vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL);
  v414 = veorq_s8(v544.val[0], v544.val[2]);
  v544.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v544.val[0], 0x38uLL), v544.val[0], 8uLL), v414);
  v415 = vaddq_s64(v413, v412);
  v544.val[1] = vaddq_s64(v544.val[1], v411);
  v416 = vaddq_s64(v410, v409);
  v544.val[2] = vsraq_n_u64(vshlq_n_s64(v414, 3uLL), v414, 0x3DuLL);
  v417 = vsraq_n_u64(vshlq_n_s64(v412, 3uLL), v412, 0x3DuLL);
  v418 = vsraq_n_u64(vshlq_n_s64(v411, 3uLL), v411, 0x3DuLL);
  v419 = vsraq_n_u64(vshlq_n_s64(v409, 3uLL), v409, 0x3DuLL);
  v420 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v544.val[0], *&STACK[0x5720]), vorrq_s8(v544.val[0], v301)), v301), *&STACK[0x5700]);
  v421 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v415, *&STACK[0x5720]), vorrq_s8(v415, v301)), v301), *&STACK[0x5700]);
  v544.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v544.val[1], *&STACK[0x5720]), vorrq_s8(v544.val[1], v301)), v301), *&STACK[0x5700]);
  v422 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v416, *&STACK[0x5720]), vorrq_s8(v416, v301)), v301), *&STACK[0x5700]);
  *&STACK[0x5760] = veorq_s8(v422, v419);
  v544.val[3] = veorq_s8(v544.val[0], v418);
  v423 = veorq_s8(v421, v417);
  v424 = veorq_s8(v420, v544.val[2]);
  *&STACK[0x5750] = vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL);
  v425 = vsraq_n_u64(vshlq_n_s64(v544.val[0], 0x38uLL), v544.val[0], 8uLL);
  v426 = vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL);
  v427 = vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL);
  v304.i64[0] = a5 + v348;
  v304.i64[1] = a5 + v349;
  v428 = vandq_s8(v304, v358);
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL);
  v428.i64[0] = a5 + v344;
  v428.i64[1] = a5 + v345;
  v429 = vandq_s8(v428, v358);
  v430 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL), *&STACK[0x4BD0]);
  v431 = veorq_s8(v430, v310);
  v432 = vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL);
  v544.val[0] = vaddq_s64(v544.val[0], *&STACK[0x4BD0]);
  v433 = veorq_s8(v544.val[0], v310);
  v544.val[0] = veorq_s8(v544.val[0], *&STACK[0x57C0]);
  v434 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL), v544.val[0]);
  v435 = veorq_s8(v430, *&STACK[0x57C0]);
  v436 = vaddq_s64(v432, v435);
  v437 = vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL);
  v438 = vaddq_s64(v427, v424);
  v439 = vsraq_n_u64(vshlq_n_s64(v544.val[0], 3uLL), v544.val[0], 0x3DuLL);
  v440 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v436, *&STACK[0x5780]), vorrq_s8(v436, v315)), v315), v320);
  v544.val[0] = veorq_s8(v440, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v441 = vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL);
  v442 = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v443 = vaddq_s64(v426, v423);
  v444 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v434, *&STACK[0x5780]), vorrq_s8(v434, v315)), v315), v320);
  v445 = veorq_s8(v444, v439);
  v446 = vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL);
  v447 = vaddq_s64(v441, v544.val[0]);
  v448 = vsraq_n_u64(vshlq_n_s64(v544.val[0], 3uLL), v544.val[0], 0x3DuLL);
  v449 = veorq_s8(v438, *&STACK[0x56F0]);
  v544.val[0] = veorq_s8(v449, v437);
  v450 = vsraq_n_u64(vshlq_n_s64(v449, 0x38uLL), v449, 8uLL);
  v451 = veorq_s8(vaddq_s64(v446, v445), v323);
  v452 = veorq_s8(v451, vsraq_n_u64(vshlq_n_s64(v445, 3uLL), v445, 0x3DuLL));
  v453 = vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL);
  v454 = veorq_s8(v447, v323);
  v455 = veorq_s8(v454, v448);
  v456 = vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL);
  v457 = vaddq_s64(v453, v452);
  v458 = vsraq_n_u64(vshlq_n_s64(v452, 3uLL), v452, 0x3DuLL);
  v459 = veorq_s8(v443, *&STACK[0x56F0]);
  v460 = veorq_s8(v459, v442);
  v461 = vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL);
  v462 = vaddq_s64(v456, v455);
  v463 = vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL);
  v464 = veorq_s8(v462, *&STACK[0x4470]);
  v465 = veorq_s8(v464, v463);
  v466 = vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL);
  v467 = veorq_s8(v457, *&STACK[0x4470]);
  v468 = veorq_s8(v467, v458);
  v469 = vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL);
  v470 = vaddq_s64(v466, v465);
  v471 = vaddq_s64(v469, v468);
  v472 = vsraq_n_u64(vshlq_n_s64(v465, 3uLL), v465, 0x3DuLL);
  v473 = vsraq_n_u64(vshlq_n_s64(v468, 3uLL), v468, 0x3DuLL);
  v474 = vaddq_s64(v461, v460);
  v475 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v471, v471), v333), v471), v335), v336);
  v476 = veorq_s8(v475, v473);
  v477 = vsraq_n_u64(vshlq_n_s64(v475, 0x38uLL), v475, 8uLL);
  v478 = vaddq_s64(v450, v544.val[0]);
  v479 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v470, v470), v333), v470), v335), v336);
  v480 = veorq_s8(v479, v472);
  v481 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v479, 0x38uLL), v479, 8uLL), v480);
  v482 = vaddq_s64(v477, v476);
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v480, 3uLL), v480, 0x3DuLL);
  v483 = vsraq_n_u64(vshlq_n_s64(v476, 3uLL), v476, 0x3DuLL);
  v484 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v482, *&STACK[0x56C0]), vorrq_s8(v482, *&STACK[0x5650])), *&STACK[0x5650]), *&STACK[0x57B0]);
  v485 = veorq_s8(v484, v483);
  v486 = vsraq_n_u64(vshlq_n_s64(v484, 0x38uLL), v484, 8uLL);
  v487 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v481, *&STACK[0x56C0]), vorrq_s8(v481, *&STACK[0x5650])), *&STACK[0x5650]), *&STACK[0x57B0]);
  v488 = veorq_s8(v487, v544.val[0]);
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v487, 0x38uLL), v487, 8uLL);
  v489 = vaddq_s64(v486, v485);
  v490 = vaddq_s64(v544.val[0], v488);
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v485, 3uLL), v485, 0x3DuLL);
  v491 = vsraq_n_u64(vshlq_n_s64(v488, 3uLL), v488, 0x3DuLL);
  v492 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v490, v490), *&STACK[0x57A0]), v490), *&STACK[0x56D0]), *&STACK[0x5660]);
  v493 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v489, v489), *&STACK[0x57A0]), v489), *&STACK[0x56D0]), *&STACK[0x5660]);
  v472.i64[0] = a5 + v352;
  v472.i64[1] = a5 + v353;
  v543.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v492, 0x38uLL), v492, 8uLL), veorq_s8(v492, v491)), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v428, 3uLL), *&STACK[0x5770]))), vshlq_u64(veorq_s8(v478, *&STACK[0x5670]), vnegq_s64(vandq_s8(vshlq_n_s64(v59, 3uLL), *&STACK[0x5770]))));
  v543.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493, 0x38uLL), v493, 8uLL), veorq_s8(v493, v544.val[0])), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v304, 3uLL), *&STACK[0x5770]))), vshlq_u64(veorq_s8(v474, *&STACK[0x5670]), vnegq_s64(vandq_s8(vshlq_n_s64(v225, 3uLL), *&STACK[0x5770]))));
  v494 = vandq_s8(v472, *&STACK[0x4D70]);
  v495 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v494, 0x38uLL), v494, 8uLL), *&STACK[0x4BD0]);
  v496 = veorq_s8(v495, *&STACK[0x5790]);
  v497 = veorq_s8(v495, *&STACK[0x57C0]);
  v498 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v496, 0x38uLL), v496, 8uLL), v497);
  v499 = vsraq_n_u64(vshlq_n_s64(v497, 3uLL), v497, 0x3DuLL);
  v500 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v498, *&STACK[0x5780]), vorrq_s8(v498, v315)), v315), *&STACK[0x5640]);
  v501 = veorq_s8(v500, v499);
  v502 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v500, 0x38uLL), v500, 8uLL), v501), v323);
  v503 = veorq_s8(v502, vsraq_n_u64(vshlq_n_s64(v501, 3uLL), v501, 0x3DuLL));
  v504 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v502, 0x38uLL), v502, 8uLL), v503);
  v505 = vsraq_n_u64(vshlq_n_s64(v503, 3uLL), v503, 0x3DuLL);
  v506 = veorq_s8(vaddq_s64(v425, v544.val[3]), *&STACK[0x56F0]);
  v507 = veorq_s8(v506, vsraq_n_u64(vshlq_n_s64(v544.val[3], 3uLL), v544.val[3], 0x3DuLL));
  v508 = vsraq_n_u64(vshlq_n_s64(v506, 0x38uLL), v506, 8uLL);
  v509 = veorq_s8(v504, *&STACK[0x4470]);
  v510 = veorq_s8(v509, v505);
  v511 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v509, 0x38uLL), v509, 8uLL), v510);
  v512 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v511, v511), v333), v511), v335), v336);
  v513 = veorq_s8(v512, vsraq_n_u64(vshlq_n_s64(v510, 3uLL), v510, 0x3DuLL));
  v514 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v512, 0x38uLL), v512, 8uLL), v513);
  v515 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v514, *&STACK[0x56C0]), vorrq_s8(v514, *&STACK[0x5650])), *&STACK[0x5650]), *&STACK[0x57B0]);
  v516 = veorq_s8(v515, vsraq_n_u64(vshlq_n_s64(v513, 3uLL), v513, 0x3DuLL));
  v517 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v515, 0x38uLL), v515, 8uLL), v516);
  v518 = vshlq_u64(veorq_s8(vaddq_s64(v508, v507), *&STACK[0x5670]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x55F0], 3uLL), *&STACK[0x5770])));
  v519 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v517, v517), *&STACK[0x57A0]), v517), *&STACK[0x56D0]), *&STACK[0x5660]);
  v520 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v519, 0x38uLL), v519, 8uLL), veorq_s8(v519, vsraq_n_u64(vshlq_n_s64(v516, 3uLL), v516, 0x3DuLL))), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v472, 3uLL), *&STACK[0x5770])));
  v519.i64[0] = a5 + v355;
  v519.i64[1] = a5 + v356;
  v543.val[1] = veorq_s8(v520, v518);
  v521 = vandq_s8(v519, *&STACK[0x4D70]);
  v522 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v521, 0x38uLL), v521, 8uLL), *&STACK[0x4BD0]);
  v523 = veorq_s8(v522, *&STACK[0x5790]);
  v524 = veorq_s8(v522, *&STACK[0x57C0]);
  v525 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v523, 0x38uLL), v523, 8uLL), v524);
  v526 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v525, *&STACK[0x5780]), vorrq_s8(v525, v315)), v315), *&STACK[0x5640]);
  v527 = veorq_s8(v526, vsraq_n_u64(vshlq_n_s64(v524, 3uLL), v524, 0x3DuLL));
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v526, 0x38uLL), v526, 8uLL);
  v528 = veorq_s8(vaddq_s64(*&STACK[0x5750], *&STACK[0x5760]), *&STACK[0x56F0]);
  v529 = veorq_s8(vaddq_s64(v544.val[0], v527), v323);
  v530 = veorq_s8(v529, vsraq_n_u64(vshlq_n_s64(v527, 3uLL), v527, 0x3DuLL));
  v531 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v529, 0x38uLL), v529, 8uLL), v530), *&STACK[0x4470]);
  v544.val[0] = vsraq_n_u64(vshlq_n_s64(v530, 3uLL), v530, 0x3DuLL);
  v532 = veorq_s8(v528, vsraq_n_u64(vshlq_n_s64(*&STACK[0x5760], 3uLL), *&STACK[0x5760], 0x3DuLL));
  v533 = veorq_s8(v531, v544.val[0]);
  v544.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v531, 0x38uLL), v531, 8uLL), v533);
  v534 = vsraq_n_u64(vshlq_n_s64(v528, 0x38uLL), v528, 8uLL);
  v535 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v544.val[0], v544.val[0]), v333), v544.val[0]), v335), v336);
  v536 = veorq_s8(v535, vsraq_n_u64(vshlq_n_s64(v533, 3uLL), v533, 0x3DuLL));
  v537 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v535, 0x38uLL), v535, 8uLL), v536);
  v538 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v537, *&STACK[0x56C0]), vorrq_s8(v537, *&STACK[0x5650])), *&STACK[0x5650]), *&STACK[0x57B0]);
  v539 = veorq_s8(v538, vsraq_n_u64(vshlq_n_s64(v536, 3uLL), v536, 0x3DuLL));
  v540 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v538, 0x38uLL), v538, 8uLL), v539);
  v541 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v540, v540), *&STACK[0x57A0]), v540), *&STACK[0x56D0]), *&STACK[0x5660]);
  v543.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v541, 0x38uLL), v541, 8uLL), veorq_s8(v541, vsraq_n_u64(vshlq_n_s64(v539, 3uLL), v539, 0x3DuLL))), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v519, 3uLL), *&STACK[0x5770]))), vshlq_u64(veorq_s8(vaddq_s64(v534, v532), *&STACK[0x5670]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5600], 3uLL), *&STACK[0x5770]))));
  v543.val[0].i64[0] = vqtbl4q_s8(v543, *&STACK[0x5610]).u64[0];
  v543.val[1] = *&STACK[0x5620];
  v543.val[1].i64[1] = v543.val[0].i64[0];
  v543.val[1] = vrev64q_s8(v543.val[1]);
  *(v230 - 15) = veorq_s8(vextq_s8(v543.val[1], v543.val[1], 8uLL), *(v213 - 15));
  return (*(STACK[0x57D8] + 8 * (v7 | (2 * (v8 + 16 == v6)))))();
}

uint64_t sub_10020546C@<X0>(int a1@<W0>, uint64_t a2@<X2>, unsigned int a3@<W3>, char a4@<W4>, unint64_t a5@<X5>, int a6@<W8>)
{
  v10 = *(*(v9 + 4008) + a5 - 5896 * ((((a5 >> 3) * v8) >> 64) >> 4));
  if (((a3 >> a1) & 1) == 0)
  {
    v10 = v7;
  }

  v11 = a1 == 7;
  v12 = (a1 + 1);
  v13 = a4 & 0x5A ^ 0x7B;
  v14 = v10 & 0x66 ^ 0xC1;
  *(a2 + v6) = (a4 ^ v10 ^ (2 * (v14 ^ v13 ^ (a4 ^ 0x64) & (2 * ((a4 ^ 0x64) & (2 * ((a4 ^ 0x64) & (2 * ((a4 ^ 0x64) & (2 * ((a4 ^ 0x64) & (2 * ((a4 ^ 0x64) & 0x3E ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ (v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x44) & (2 * (v14 ^ v10 & 2)) ^ v14)) ^ v14)) ^ v14)) ^ v14)))) ^ 0x3C) + 28;
  v15 = !v11;
  return (*(STACK[0x57D8] + 8 * ((4 * v15) | (8 * v15) | a6)))(v12);
}

uint64_t sub_100205570()
{
  LODWORD(STACK[0x9524]) = v1;
  STACK[0x7ED8] -= 16;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -825135614;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_1002055DC@<X0>(int a1@<W0>, int a2@<W8>)
{
  v5 = *(&STACK[0x320] + (v2 + 2361 * a1) % 0xA88u);
  v6 = v5 & 0x6A ^ 0xFFFFFFE5;
  v7 = v5 ^ (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * (v6 ^ v5 & 0xA)) ^ v6)) ^ v6)) ^ v6)) ^ v6));
  v8 = 825 * ((~(2 * v7) & 4) + (v7 ^ 0x668));
  v9 = v8 - 12928 * (((1328889 * v8) >> 32) >> 2);
  if (v9 >> 6 >= 0x65)
  {
    v9 -= 6464;
  }

  v10 = *(&STACK[0xDE0] + v9);
  v11 = (HIBYTE(v10) ^ 0xDB80AAD2) + 2116220961;
  v12 = ((v10 >> 7) & 0x12 ^ 2) + (BYTE1(v10) ^ 0x5BA);
  v13 = ((HIBYTE(v10) ^ 0x2929E4AC) - 1937000865) ^ ((HIBYTE(v10) ^ 0xF2A94E02) + 1460346097);
  v14 = 2361 * (((v10 ^ 0x6875303D) - 511528788) ^ ((v10 ^ 0xBD80E8E3) + 880240758) ^ ((v10 ^ 0xD5F5D837) + 1543657634)) - 1802611839;
  LOBYTE(v10) = *(&STACK[0x320] + 2361 * v12 - 2696 * (((12744711 * (2361 * v12)) >> 32) >> 3));
  LOBYTE(v12) = *(&STACK[0x320] + (2361 * (v13 ^ v11) + 1780680490) % 0xA88);
  v15 = v12 & 0xB2 | 9;
  v16 = *(&STACK[0x320] + (2361 * (((BYTE2(v10) ^ 0x6F8E8011) - 473526965) ^ ((BYTE2(v10) ^ 0xC330F536) + 1333327982) ^ ((BYTE2(v10) ^ 0xACBE7547) + 553023517)) + 1001150237) % 0xA88);
  LOBYTE(v11) = v16 & 0xFE ^ 0x2F;
  v17 = (v16 ^ (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) << 8;
  v18 = ((v12 ^ (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) << 16) ^ 0x7A5ABC;
  v19 = v10 & 0x9E ^ 0x3F;
  LOBYTE(v10) = v10 ^ (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & 0x3E ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19));
  v20 = *(&STACK[0x320] + v14 % 0xA88);
  v21 = (v17 + 16711868) & v18 | v17 & 0xA500;
  LOBYTE(v17) = v20 & 0x96 ^ 0xBB;
  v22 = v20 ^ (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & 0x36 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  *(&STACK[0xDE0] + (v3 + 825 * a1) % 0x1940u) = (((((v21 ^ 0x8C62A2) & (v10 ^ 0xFFFFC1) ^ v10 & 0xE1) << 8) ^ 0x8E8AA02E) & (v22 ^ 0xFFFFFFB8) | v22 & 0xD1) ^ 0xB6768D57;
  return (*(v4 + 8 * ((77 * (a1 != 255)) ^ a2)))();
}

uint64_t sub_100205A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x5238]) = LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x5228]) ^ LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x51C0]);
  LODWORD(STACK[0x5420]) = LODWORD(STACK[0x51D8]) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x51A8]) ^ LODWORD(STACK[0x51F8]);
  LODWORD(STACK[0x5240]) = LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5258]);
  v11 = LODWORD(STACK[0x5780]) - 10371;
  LODWORD(STACK[0x57A0]) = v11;
  v12 = (v11 ^ 0x13C7FBFB) & STACK[0x5130];
  v13 = v9;
  v14 = v7;
  v15 = LODWORD(STACK[0x5460]) ^ 0x6CAC4645 ^ LODWORD(STACK[0x5128]) ^ LODWORD(STACK[0x5720]) ^ v9 ^ LODWORD(STACK[0x5138]) ^ v7 ^ STACK[0x5218] ^ v5 ^ LODWORD(STACK[0x5158]) ^ LODWORD(STACK[0x5148]) ^ STACK[0x5150] & 0x13C7E6FF;
  LODWORD(STACK[0x5218]) = v15;
  v16 = LODWORD(STACK[0x5730]) ^ 0x6CAC4645 ^ LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x51B0]) ^ v10 ^ LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x5180]) ^ LODWORD(STACK[0x5140]) ^ v12;
  v17 = LODWORD(STACK[0x5740]) ^ 0x6CAC4645 ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5250]) ^ a5 ^ LODWORD(STACK[0x51A0]) ^ LODWORD(STACK[0x5198]) ^ LODWORD(STACK[0x5188]) ^ STACK[0x5178] & 0x13C7E6FF;
  LODWORD(STACK[0x55E0]) = v17;
  v18 = STACK[0x53A0];
  v19 = STACK[0x5660];
  v20 = STACK[0x53A8];
  v21 = STACK[0x5230];
  v22 = STACK[0x5200];
  v23 = LODWORD(STACK[0x5210]) ^ 0x4DC78B3C;
  v24 = STACK[0x5560];
  v25 = LODWORD(STACK[0x53A0]) ^ 0xE8980CE9 ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x53A8]) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x55D0]) ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5500]) ^ LODWORD(STACK[0x5230]) ^ LODWORD(STACK[0x5200]) ^ LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x54B0]) ^ v23 ^ v17 ^ v16;
  v26 = STACK[0x5640];
  v27 = STACK[0x53B0];
  v28 = STACK[0x54C0];
  v29 = STACK[0x52B0];
  v30 = STACK[0x5260];
  v31 = STACK[0x51D0];
  v32 = STACK[0x51E0];
  v33 = LODWORD(STACK[0x5640]) ^ 0xE8980CE9 ^ LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x54C0]) ^ LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x52B0]) ^ LODWORD(STACK[0x5260]) ^ LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x51E0]);
  v34 = v8;
  v35 = STACK[0x5760];
  v36 = v6;
  v37 = STACK[0x57C0];
  LODWORD(STACK[0x5258]) = (((v25 ^ ((v25 & v9) >> 1)) & v8) << LODWORD(STACK[0x5760])) + (((v25 ^ ((v25 & v9) >> 1)) & v6) >> LODWORD(STACK[0x57C0]));
  v38 = v33 ^ v15 ^ (((v33 ^ v15) & v7) >> 1);
  v39 = STACK[0x5390];
  v40 = STACK[0x53C0];
  v41 = STACK[0x57B0];
  v42 = STACK[0x53B8];
  LODWORD(STACK[0x5250]) = ((v38 & STACK[0x57B0]) >> LODWORD(STACK[0x53B8])) ^ ((v38 & STACK[0x5390]) << STACK[0x53C0]);
  LODWORD(STACK[0x5228]) = (((v23 ^ ((v23 & v13) >> 1)) & v34) << v35) ^ (((v23 ^ ((v23 & v13) >> 1)) & v41) >> v37);
  LODWORD(STACK[0x5220]) = ((v39 & (v20 ^ ((v14 & v20) >> 1))) << v40) ^ (((v20 ^ ((v14 & v20) >> 1)) & v6) >> v42);
  v43 = ((v34 & (v27 ^ ((v13 & v27) >> 1))) << v35) + ((v6 & (v27 ^ ((v13 & v27) >> 1))) >> v42);
  v44 = STACK[0x5400];
  v45 = LODWORD(STACK[0x53F8]) ^ LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x5750]) = v45 ^ ((((v31 ^ ((v31 & v14) >> 1)) & v39) << v40) + (((v31 ^ ((v31 & v14) >> 1)) & v41) >> v37));
  LODWORD(STACK[0x53B0]) = v45 ^ v43;
  LODWORD(STACK[0x5740]) = ((v39 & (v19 ^ ((v13 & v19) >> 1))) << v40) + ((v36 & (v19 ^ ((v13 & v19) >> 1))) >> v42);
  LODWORD(STACK[0x5730]) = (((v16 ^ ((v16 & v14) >> 1)) & v41) >> v37) + (((v16 ^ ((v16 & v14) >> 1)) & v34) << v35);
  LODWORD(STACK[0x53A8]) = (((v22 ^ ((v22 & v14) >> 1)) & v36) >> v42) + (((v22 ^ ((v22 & v14) >> 1)) & v34) << v40);
  LODWORD(STACK[0x5720]) = ((v39 & (v18 ^ ((v14 & v18) >> 1))) << v40) ^ (((v18 ^ ((v14 & v18) >> 1)) & v36) >> v37);
  LODWORD(STACK[0x5710]) = ((v41 & (v30 ^ ((v30 & v13) >> 1))) >> v37) | ((v34 & (v30 ^ ((v30 & v13) >> 1))) << v35);
  LODWORD(STACK[0x5700]) = ((v39 & (v26 ^ ((v13 & v26) >> 1))) << v35) | ((v36 & (v26 ^ ((v13 & v26) >> 1))) >> v37);
  v46 = v13;
  LODWORD(STACK[0x56F0]) = ((v39 & (v21 ^ ((v21 & v13) >> 1))) << v40) | ((v41 & (v21 ^ ((v21 & v13) >> 1))) >> v37);
  LODWORD(STACK[0x56E0]) = (((v32 ^ ((v32 & v14) >> 1)) & v39) << v40) | (((v32 ^ ((v32 & v14) >> 1)) & v36) >> v42);
  LODWORD(STACK[0x56D0]) = ((v39 & (v28 ^ ((v14 & v28) >> 1))) << v35) + (((v28 ^ ((v14 & v28) >> 1)) & v36) >> v37);
  LODWORD(STACK[0x56C0]) = ((v39 & (v24 ^ ((v24 & v14) >> 1))) << v35) ^ (((v24 ^ ((v24 & v14) >> 1)) & v36) >> v37);
  v47 = LODWORD(STACK[0x5680]) ^ ((v13 & STACK[0x5680]) >> 1);
  LODWORD(STACK[0x53A0]) = ((v39 & v47) << v40) ^ ((v36 & v47) >> v37);
  v48 = LODWORD(STACK[0x55F0]) ^ ((v13 & STACK[0x55F0]) >> 1);
  LODWORD(STACK[0x5680]) = ((v39 & v48) << v35) ^ ((v36 & v48) >> v37);
  v49 = LODWORD(STACK[0x5670]) ^ ((v14 & STACK[0x5670]) >> 1);
  LODWORD(STACK[0x5670]) = ((v41 & v49) >> v42) | ((v49 & v34) << v35);
  LODWORD(STACK[0x5660]) = ((v39 & (v29 ^ ((v14 & v29) >> 1))) << v35) | ((v41 & (v29 ^ ((v14 & v29) >> 1))) >> v42);
  v50 = LODWORD(STACK[0x55A0]) ^ ((STACK[0x55A0] & v14) >> 1);
  LODWORD(STACK[0x5650]) = ((v50 & v36) >> v42) ^ ((v50 & v39) << v40);
  v51 = LODWORD(STACK[0x55B0]) ^ ((STACK[0x55B0] & v14) >> 1);
  LODWORD(STACK[0x5640]) = ((v51 & v39) << v40) ^ ((v51 & v36) >> v37);
  v52 = LODWORD(STACK[0x5630]) ^ ((v14 & STACK[0x5630]) >> 1);
  v53 = LODWORD(STACK[0x52B8]) ^ ((v13 & STACK[0x52B8]) >> 1);
  LODWORD(STACK[0x5630]) = ((v52 & v36) >> v37) | ((v52 & v34) << v40);
  v54 = LODWORD(STACK[0x5620]) ^ ((v14 & STACK[0x5620]) >> 1);
  v55 = LODWORD(STACK[0x53D0]) ^ ((v13 & STACK[0x53D0]) >> 1);
  LODWORD(STACK[0x55F0]) = ((v41 & v54) >> v37) + ((v54 & v34) << v40);
  LODWORD(STACK[0x53D0]) = ((v39 & v53) << v35) + ((v41 & v53) >> v42);
  LODWORD(STACK[0x51F8]) = ((v39 & v55) << v35) + ((v36 & v55) >> v42);
  v56 = LODWORD(STACK[0x5600]) ^ ((v14 & STACK[0x5600]) >> 1);
  LODWORD(STACK[0x5620]) = ((v39 & v56) << v35) ^ ((v56 & v36) >> v42);
  v57 = LODWORD(STACK[0x5288]) ^ ((v13 & STACK[0x5288]) >> 1);
  LODWORD(STACK[0x51E0]) = ((v41 & v57) >> v37) + ((v34 & v57) << v40);
  v58 = LODWORD(STACK[0x5610]) ^ ((v14 & STACK[0x5610]) >> 1);
  LODWORD(STACK[0x5610]) = ((v39 & v58) << v40) + ((v41 & v58) >> v42);
  v59 = LODWORD(STACK[0x52C0]) ^ ((v13 & STACK[0x52C0]) >> 1);
  LODWORD(STACK[0x51D8]) = ((v36 & v59) >> v37) | ((v34 & v59) << v35);
  v60 = LODWORD(STACK[0x55C0]) ^ ((v14 & STACK[0x55C0]) >> 1);
  LODWORD(STACK[0x5600]) = ((v39 & v60) << v35) | ((v60 & v36) >> v37);
  v61 = LODWORD(STACK[0x5370]) ^ ((v13 & STACK[0x5370]) >> 1);
  LODWORD(STACK[0x55C0]) = ((v41 & v61) >> v42) | ((v34 & v61) << v40);
  v62 = LODWORD(STACK[0x5590]) ^ ((v13 & STACK[0x5590]) >> 1);
  v63 = ((v41 & v62) >> v42) | ((v34 & v62) << v35);
  v64 = LODWORD(STACK[0x52A8]) ^ ((v14 & STACK[0x52A8]) >> 1);
  v65 = LODWORD(STACK[0x55E0]) ^ ((STACK[0x55E0] & v13) >> 1);
  LODWORD(STACK[0x55B0]) = ((v39 & v64) << v40) + ((v64 & v36) >> v37);
  v66 = LODWORD(STACK[0x5520]) ^ ((v14 & STACK[0x5520]) >> 1);
  LODWORD(STACK[0x55E0]) = ((v65 & v41) >> v42) + ((v65 & v39) << v40);
  LODWORD(STACK[0x55A0]) = ((v66 & v36) >> v37) ^ ((v66 & v34) << v35);
  v67 = LODWORD(STACK[0x5580]) ^ ((STACK[0x5580] & v13) >> 1);
  v68 = LODWORD(STACK[0x5430]) ^ ((v14 & STACK[0x5430]) >> 1);
  v69 = ((v41 & v67) >> v42) + ((v67 & v34) << v35);
  LODWORD(STACK[0x5580]) = ((v39 & v68) << v40) + ((v68 & v36) >> v37);
  v70 = LODWORD(STACK[0x55D0]) ^ ((v13 & STACK[0x55D0]) >> 1);
  v71 = ((v41 & v70) >> v42) + ((v34 & v70) << v35);
  v72 = LODWORD(STACK[0x5440]) ^ ((v14 & STACK[0x5440]) >> 1);
  LODWORD(STACK[0x5560]) = ((v39 & v72) << v40) ^ ((v72 & v36) >> v37);
  v73 = LODWORD(STACK[0x5550]) ^ ((v14 & STACK[0x5550]) >> 1);
  v74 = LODWORD(STACK[0x5450]) ^ ((v13 & STACK[0x5450]) >> 1);
  v75 = ((v39 & v73) << v35) + ((v41 & v73) >> v37);
  LODWORD(STACK[0x5550]) = ((v34 & v74) << v40) | ((v36 & v74) >> v42);
  v76 = LODWORD(STACK[0x5530]) ^ ((v13 & STACK[0x5530]) >> 1);
  v77 = LODWORD(STACK[0x5378]) ^ ((v14 & STACK[0x5378]) >> 1);
  v78 = ((v39 & v76) << v35) + ((v36 & v76) >> v42);
  LODWORD(STACK[0x5530]) = ((v41 & v77) >> v37) ^ ((v77 & v34) << v40);
  v79 = LODWORD(STACK[0x5790]) ^ ((STACK[0x5790] & v14) >> 1);
  v80 = ((v79 & v39) << v35) | ((v79 & v36) >> v37);
  v81 = LODWORD(STACK[0x52A0]) ^ ((v13 & STACK[0x52A0]) >> 1);
  LODWORD(STACK[0x5520]) = ((v41 & v81) >> v42) + ((v34 & v81) << v40);
  v82 = LODWORD(STACK[0x5500]) ^ ((STACK[0x5500] & v13) >> 1);
  v83 = (((v34 & v82) << v35) ^ -((v34 & v82) << v35) ^ (((v41 & v82) >> v42) - (((v41 & v82) >> v42) ^ ((v34 & v82) << v35)))) + ((v41 & v82) >> v42);
  v84 = LODWORD(STACK[0x5380]) ^ ((v14 & STACK[0x5380]) >> 1);
  LODWORD(STACK[0x5500]) = ((v39 & v84) << v40) ^ ((v84 & v36) >> v37);
  v85 = LODWORD(STACK[0x54E0]) ^ ((STACK[0x54E0] & v13) >> 1);
  v86 = ((v85 & v36) >> v42) + ((v85 & v39) << v40);
  v87 = LODWORD(STACK[0x5480]) ^ ((v14 & STACK[0x5480]) >> 1);
  LODWORD(STACK[0x54E0]) = ((v41 & v87) >> v37) + ((v87 & v34) << v35);
  v88 = LODWORD(STACK[0x5540]) ^ ((v13 & STACK[0x5540]) >> 1);
  v89 = ((v41 & v88) >> v37) | ((v34 & v88) << v35);
  v90 = LODWORD(STACK[0x52D0]) ^ ((v14 & STACK[0x52D0]) >> 1);
  LODWORD(STACK[0x54C0]) = ((v39 & v90) << v40) + ((v90 & v36) >> v42);
  v91 = LODWORD(STACK[0x54A0]) ^ ((STACK[0x54A0] & v13) >> 1);
  v92 = ((v91 & v39) << v40) + ((v91 & v36) >> v42);
  v93 = LODWORD(STACK[0x5490]) ^ ((v14 & STACK[0x5490]) >> 1);
  v94 = LODWORD(STACK[0x54B0]) ^ ((STACK[0x54B0] & v13) >> 1);
  LODWORD(STACK[0x54A0]) = ((v41 & v93) >> v37) + ((v93 & v34) << v35);
  v95 = LODWORD(STACK[0x5388]) ^ ((v14 & STACK[0x5388]) >> 1);
  v96 = ((v94 & v36) >> v42) | ((v94 & v39) << v40);
  LODWORD(STACK[0x5480]) = ((v41 & v95) >> v37) | ((v95 & v34) << v35);
  v97 = LODWORD(STACK[0x54D0]) ^ ((STACK[0x54D0] & v13) >> 1);
  v98 = ((v39 & v97) << v35) | ((v97 & v41) >> v42);
  v99 = LODWORD(STACK[0x5470]) ^ ((v14 & STACK[0x5470]) >> 1);
  LODWORD(STACK[0x5460]) = ((v99 & v36) >> v37) + ((v99 & v34) << v40);
  v100 = LODWORD(STACK[0x54F0]) ^ ((v13 & STACK[0x54F0]) >> 1);
  v101 = ((v39 & v100) << v40) | ((v41 & v100) >> v37);
  v102 = LODWORD(STACK[0x5408]) ^ ((v14 & STACK[0x5408]) >> 1);
  v103 = LODWORD(STACK[0x5218]) ^ ((STACK[0x5218] & v46) >> 1);
  v104 = LODWORD(STACK[0x52C8]) ^ ((v14 & STACK[0x52C8]) >> 1);
  LODWORD(STACK[0x5440]) = ((v102 & v34) << v35) | ((v102 & v36) >> v42);
  LODWORD(STACK[0x55D0]) = ((v103 & v36) >> v42) + ((v103 & v39) << v40);
  LODWORD(STACK[0x5430]) = ((v41 & v104) >> v37) | ((v104 & v34) << v35);
  v105 = STACK[0x5268];
  v106 = STACK[0x5280];
  LODWORD(STACK[0x5420]) ^= LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5570]) ^ v40 ^ LODWORD(STACK[0x5238]) ^ LODWORD(STACK[0x5268]) ^ LODWORD(STACK[0x5510]) ^ LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x5278]) ^ LODWORD(STACK[0x5270]) ^ LODWORD(STACK[0x5208]) ^ 0x589350E3;
  v107 = LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x53A8]) ^ LODWORD(STACK[0x55F0]);
  LODWORD(STACK[0x5388]) = v63;
  LODWORD(STACK[0x5590]) = v69;
  LODWORD(STACK[0x5570]) = v71;
  LODWORD(STACK[0x54D0]) = v89;
  LODWORD(STACK[0x5540]) = v78;
  v108 = STACK[0x5220];
  v109 = v107 ^ v63 ^ v69 ^ v71 ^ v89 ^ v78 ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x53A0]) ^ LODWORD(STACK[0x5660]);
  v110 = LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5600]);
  LODWORD(STACK[0x5510]) = v75;
  LODWORD(STACK[0x5470]) = v98;
  LODWORD(STACK[0x5450]) = v101;
  v111 = v109 ^ v110 ^ v75 ^ v98 ^ v101;
  LODWORD(STACK[0x54F0]) = v86;
  v112 = LODWORD(STACK[0x5640]) ^ v86 ^ LODWORD(STACK[0x5750]);
  LODWORD(STACK[0x5378]) = v83;
  LODWORD(STACK[0x54B0]) = v92;
  LODWORD(STACK[0x5380]) = v80;
  v113 = v111 ^ v112 ^ v83 ^ v92 ^ v80 ^ LODWORD(STACK[0x56E0]);
  LODWORD(STACK[0x5410]) = v108 ^ v106 ^ v105;
  v114 = STACK[0x5228];
  LODWORD(STACK[0x5370]) = LODWORD(STACK[0x5228]) ^ v106 ^ v105;
  LODWORD(STACK[0x5490]) = v96;
  LODWORD(STACK[0x52D0]) = v113 ^ v96 ^ v114;
  v115 = STACK[0x53F8];
  LODWORD(STACK[0x5408]) = LODWORD(STACK[0x5240]) ^ v44 ^ LODWORD(STACK[0x53F8]) ^ LODWORD(STACK[0x5248]);
  v116 = v44 ^ LODWORD(STACK[0x53F0]);
  v117 = v44 ^ LODWORD(STACK[0x52D8]);
  LODWORD(STACK[0x5790]) = v44 ^ LODWORD(STACK[0x53E8]) ^ v115;
  LODWORD(STACK[0x5400]) = v116 ^ v115;
  LODWORD(STACK[0x53F8]) = v117 ^ v115;
  v118 = v105 ^ LODWORD(STACK[0x52E0]);
  v119 = v105 ^ LODWORD(STACK[0x5290]);
  LODWORD(STACK[0x53F0]) = v105 ^ LODWORD(STACK[0x53E0]) ^ v106;
  LODWORD(STACK[0x53E8]) = v118 ^ v106;
  LODWORD(STACK[0x53E0]) = v119 ^ v106;
  v120 = LODWORD(STACK[0x5360]) ^ ((v46 & STACK[0x5360]) >> 1);
  LODWORD(STACK[0x52E0]) = ((v41 & v120) >> v37) | ((v34 & v120) << v35);
  v121 = LODWORD(STACK[0x52E8]) ^ ((v46 & STACK[0x52E8]) >> 1);
  v122 = LODWORD(STACK[0x5350]) ^ ((v14 & STACK[0x5350]) >> 1);
  LODWORD(STACK[0x51C8]) = ((v41 & v121) >> v42) | ((v34 & v121) << v35);
  LODWORD(STACK[0x51C0]) = ((v39 & v122) << v40) ^ ((v122 & v36) >> v37);
  v123 = LODWORD(STACK[0x5328]) ^ ((v14 & STACK[0x5328]) >> 1);
  v124 = (v46 & STACK[0x5358]) >> 1;
  v125 = (v124 & 0x40000 & STACK[0x5358]) == 0;
  v126 = v124 & 0x40000 ^ LODWORD(STACK[0x5358]);
  v127 = LODWORD(STACK[0x5358]) - (v124 & 0x40000);
  LODWORD(STACK[0x51B0]) = ((v39 & v123) << v40) | ((v123 & v36) >> v42);
  if (v125)
  {
    v128 = v126;
  }

  else
  {
    v128 = v127;
  }

  LODWORD(STACK[0x51A8]) = ((v41 & (v128 ^ v124 & 0x7FFBFFFF)) >> v37) | ((v34 & (v128 ^ v124 & 0x7FFBFFFF)) << v35);
  v129 = LODWORD(STACK[0x5318]) ^ ((v46 & STACK[0x5318]) >> 1);
  LODWORD(STACK[0x51A0]) = ((v39 & v129) << v40) | ((v36 & v129) >> v42);
  v130 = LODWORD(STACK[0x5308]) ^ ((v14 & STACK[0x5308]) >> 1);
  LODWORD(STACK[0x5198]) = ((v41 & v130) >> v37) + ((v130 & v34) << v35);
  v131 = LODWORD(STACK[0x5300]) ^ ((v14 & STACK[0x5300]) >> 1);
  LODWORD(STACK[0x5190]) = ((v39 & v131) << v35) ^ ((v41 & v131) >> v42);
  v132 = LODWORD(STACK[0x52F8]) ^ ((v46 & STACK[0x52F8]) >> 1);
  v133 = LODWORD(STACK[0x5310]) ^ ((v46 & STACK[0x5310]) >> 1);
  LODWORD(STACK[0x5318]) = ((v36 & v132) >> v37) | ((v34 & v132) << v40);
  LODWORD(STACK[0x5188]) = ((v39 & v133) << v35) ^ ((v41 & v133) >> v37);
  v134 = LODWORD(STACK[0x5348]) ^ ((v14 & STACK[0x5348]) >> 1);
  v135 = LODWORD(STACK[0x52F0]) ^ ((v14 & STACK[0x52F0]) >> 1);
  LODWORD(STACK[0x5158]) = ((v134 & v36) >> v42) + ((v134 & v34) << v40);
  LODWORD(STACK[0x5328]) = ((v39 & v135) << v35) | ((v135 & v36) >> v42);
  v136 = LODWORD(STACK[0x5320]) ^ ((v46 & STACK[0x5320]) >> 1);
  LODWORD(STACK[0x5150]) = ((v41 & v136) >> v37) ^ ((v34 & v136) << v40);
  v137 = LODWORD(STACK[0x5368]) ^ ((v46 & STACK[0x5368]) >> 1);
  LODWORD(STACK[0x5180]) = ((v36 & v137) >> v37) + ((v34 & v137) << v40);
  v138 = LODWORD(STACK[0x5340]) ^ ((v14 & STACK[0x5340]) >> 1);
  LODWORD(STACK[0x5320]) = ((v39 & v138) << v35) ^ ((v41 & v138) >> v42);
  v139 = STACK[0x53D8];
  v140 = *(STACK[0x53D8] + 15);
  v141 = *(&off_101353600 + LODWORD(STACK[0x5780]) - 17544) - 12;
  v142 = (((v139[9] ^ 0x11u) >> 1) & 0x7FFFFFFF | (((v139[9] ^ 0x11) & 1) << 31)) ^ 0x9C3BE30DLL;
  v143 = *(&off_101353600 + (STACK[0x5780] & 0xB460A106)) - 12;
  v144 = *(&off_101353600 + (LODWORD(STACK[0x5780]) ^ 0x450D)) - 12;
  v145 = *(&off_101353600 + LODWORD(STACK[0x5780]) - 16296) - 8;
  LODWORD(v142) = ((*(v144 + (((2 * v142) & 0x3877C6FE | (v142 >> 31)) ^ 0x3877C63E)) ^ 0x18) << 16) | ((*(v145 + (*(STACK[0x53D8] + 8) ^ 8)) ^ 0x46) << 24);
  v146 = ((v140 ^ 0xB8) - (v140 ^ 0x17) - ((2 * ((v140 ^ 0xB8) - (v140 ^ 0x17))) & 0x78) - 68) ^ *(v141 + (v140 ^ 0x58)) | ((*(v145 + (*(STACK[0x53D8] + 13) ^ 0x8ALL)) ^ 0x4D) << 16);
  LODWORD(v140) = *(v143 + (*(STACK[0x53D8] + 4) ^ 0xD9));
  LODWORD(v140) = ((*(v143 + (v139[5] ^ 0x7FLL)) ^ 0x3D ^ (*(v143 + (v139[5] ^ 0x7FLL)) >> 1) & 0x3B) << 16) | ((*(v144 + (v139[6] ^ 0x3ALL)) ^ 0xAA) << 8) | ((v140 ^ 0xB2 ^ (v140 >> 1) & 0x3B) << 24);
  v147 = *(v143 + (*(STACK[0x53D8] + 14) ^ 0x49));
  v148 = *(STACK[0x53D8] + 10) ^ 0x28;
  STACK[0x5130] = v145;
  v149 = v146 & 0xFFFF00FF | ((v147 ^ 0x5C ^ (((v147 >> 1) & 0x3B ^ 0x3A) - ((2 * ((v147 >> 1) & 0x3B ^ 0x3A)) & 0x60) + 116)) << 8);
  LODWORD(v142) = v142 & 0xFFFFFF00 | ((*(v145 + v148) ^ 0xD5) << 8) | *(v143 + (v139[11] ^ 0xEFLL)) ^ 0x9D ^ (*(v143 + (v139[11] ^ 0xEFLL)) >> 1) & 0x3B;
  v150 = v139[1];
  LODWORD(v150) = ((*(v143 + (v139[2] ^ 0xE5)) ^ (*(v143 + (v139[2] ^ 0xE5)) >> 1) & 0x3B ^ 0x38) << 8) | ((*(v141 + (v150 ^ 0x54)) ^ ((v150 ^ 0xB4) - (v150 ^ 0x1B) - ((2 * ((v150 ^ 0xB4) - (v150 ^ 0x1B))) & 0x78) - 68) ^ 0x4E) << 16);
  v151 = v139[12];
  v152 = v149 | ((*(v141 + (v151 ^ 0xBC)) ^ ((v151 ^ 0x5C) - (v151 ^ 0xFFFFFFF3) - ((2 * ((v151 ^ 0x5C) - (v151 ^ 0xFFFFFFF3))) & 0x78) - 68) ^ 0x74) << 24);
  v153 = *v139 ^ 0xB2;
  STACK[0x5138] = v144;
  LODWORD(v150) = v150 | ((*(v144 + v153) ^ 4) << 24);
  v154 = v139[3];
  STACK[0x5148] = v141;
  LODWORD(v150) = *(v141 + (v154 ^ 0xBC)) ^ 0xC8 ^ (v150 & 0xFFFFFF00 | ((v154 ^ 0x5C) - (v154 ^ 0xF3)));
  v155 = v139[7] ^ 0xADLL;
  STACK[0x5140] = v143;
  LODWORD(v140) = v140 & 0xFFFFFF00 | *(v143 + v155) ^ 0xC2 ^ (((*(v143 + v155) >> 1) & 0x3B ^ 0x3A) - ((2 * ((*(v143 + v155) >> 1) & 0x3B ^ 0x3A)) & 0x60) + 116);
  LODWORD(STACK[0x5340]) = (((v150 ^ ((v150 & v46) >> 1)) & v34) << v40) + (((v150 ^ ((v150 & v46) >> 1)) & v36) >> v37);
  LODWORD(STACK[0x5358]) = (((v140 ^ ((v140 & v14) >> 1)) & v41) >> v42) + (((v140 ^ ((v140 & v14) >> 1)) & v39) << v35);
  LODWORD(STACK[0x5348]) = (((v142 ^ ((v142 & v46) >> 1)) & v41) >> v42) | (((v142 ^ ((v142 & v46) >> 1)) & v39) << v35);
  LODWORD(v140) = v152 ^ 0xEA ^ (((v152 ^ 0xEA) & v14) >> 1);
  LODWORD(STACK[0x5350]) = ((v140 & v36) >> v37) + ((v140 & v34) << v40);
  LODWORD(STACK[0x5128]) = ((v34 & ((v46 >> 1) & 0x2D38FF68 ^ 0x5A71FED1)) << v40) | ((v36 & ((v46 >> 1) & 0x2D38FF68 ^ 0x5A71FED1)) >> v42);
  v156 = STACK[0x5298];
  LODWORD(STACK[0x5120]) = ((v39 & (STACK[0x5298] & 0x4E23D420 ^ 0x9C47A840)) << v35) + ((v41 & (STACK[0x5298] & 0x4E23D420 ^ 0x9C47A840)) >> v37);
  LODWORD(STACK[0x5118]) = ((v41 & (v156 & 0x251AE3C0 ^ 0x4A35C781)) >> v37) + (((v156 & 0x251AE3C0 ^ 0x4A35C781) & v34) << v40);
  LODWORD(STACK[0x5110]) = ((v39 & ((v46 >> 1) & 0x13704A02 ^ 0x26E09404)) << v35) ^ ((v36 & ((v46 >> 1) & 0x13704A02 ^ 0x26E09404)) >> v42);
  LODWORD(v140) = v156 & 0x5CE00A41 ^ 0xB9C01483;
  v157 = (v39 & v140) << v35;
  LODWORD(STACK[0x53D8]) = v157 + ((v41 & v140) >> v42);
  LODWORD(STACK[0x5310]) = v157 + ((v140 & v36) >> v37);
  LODWORD(v140) = v156 & 0x61BD4FA5 ^ 0xC37A9F4A;
  LODWORD(STACK[0x52F8]) = ((v140 & v34) << v35) + ((v140 & v36) >> v42);
  LODWORD(v142) = (v46 >> 1) & 0x61BD4FA5 ^ 0xC37A9F4A;
  LODWORD(STACK[0x52F0]) = ((v39 & v142) << v40) | ((v41 & v142) >> v37);
  LODWORD(STACK[0x52E8]) = ((v39 & v140) << v40) | ((v41 & v140) >> v37);
  LODWORD(v150) = ((v34 & v142) << v35) + ((v36 & v142) >> v42);
  LODWORD(v140) = (v46 >> 1) & 0x4B16F5A5 ^ 0x962DEB4B;
  LODWORD(v142) = v39 & v140;
  LODWORD(v140) = (v36 & v140) >> v42;
  LODWORD(STACK[0x52D8]) = (v142 << v40) + v140;
  LODWORD(STACK[0x52C8]) = (v142 << v35) | v140;
  LODWORD(v140) = (v46 >> 1) & 0x47BD103E ^ 0x8F7A207D;
  LODWORD(STACK[0x5308]) = ((v39 & v140) << v35) ^ ((v36 & v140) >> v42);
  LODWORD(STACK[0x5108]) = ((v41 & v140) >> v37) + ((v34 & v140) << v35);
  LODWORD(STACK[0x5300]) = v156 & 0x47BD103E;
  LODWORD(v142) = v156 & 0x47BD103E ^ 0x8F7A207D;
  LODWORD(STACK[0x5178]) = v142;
  LODWORD(STACK[0x5100]) = ((v39 & v142) << v40) | ((v142 & v36) >> v42);
  LODWORD(v140) = v156 & 0x161C7F86 ^ 0x2C38FF0C;
  LODWORD(STACK[0x50F8]) = ((v140 & v34) << v40) + ((v140 & v36) >> v42);
  LODWORD(v142) = (v46 >> 1) & 0x161C7F86 ^ 0x2C38FF0C;
  LODWORD(STACK[0x50F0]) = ((v39 & v142) << v35) | ((v41 & v142) >> v37);
  LODWORD(STACK[0x50E8]) = ((v39 & v142) << v40) + ((v36 & v142) >> v37);
  v158 = ((v41 & v140) >> v42) ^ ((v140 & v34) << v35);
  v159 = (v46 >> 1) & 0x45DBA49A ^ 0x8BB74935;
  v160 = (v36 & v159) >> v37;
  LODWORD(STACK[0x50E0]) = ((v39 & v159) << v40) + v160 - 2 * (((v39 & v159) << v40) & v160);
  v161 = (v46 >> 1) & 0x2CFE4E49 ^ 0x59FC9C92;
  LODWORD(STACK[0x50D8]) = ((v36 & v161) >> v37) ^ ((v34 & v161) << v35);
  v162 = v156 & 0x2CFE4E49 ^ 0x59FC9C92;
  LODWORD(STACK[0x50D0]) = ((v39 & v162) << v35) | ((v162 & v36) >> v37);
  LODWORD(STACK[0x52B8]) = v41 & v161;
  LODWORD(STACK[0x50C8]) = ((v41 & v161) >> v42) | ((v34 & v161) << v40);
  LODWORD(v140) = (v46 >> 1) & 0x1FDAA58E ^ 0x3FB54B1D;
  LODWORD(STACK[0x52A0]) = v140;
  LODWORD(STACK[0x5288]) = v39 & v140;
  v163 = v36 & v140;
  LODWORD(STACK[0x52C0]) = ((v39 & v140) << v40) + ((v36 & v140) >> v37);
  LODWORD(v140) = (v46 >> 1) & 0x15BB281E ^ 0x2B76503C;
  LODWORD(STACK[0x52B0]) = v140;
  LODWORD(v142) = (v36 & v140) >> v37;
  LODWORD(STACK[0x5290]) = v142;
  LODWORD(v141) = (v39 & v140) << v40;
  LODWORD(STACK[0x52A8]) = v141 & 0xE6014B36 ^ v142 & 0x26014B37 | (v141 ^ v142) & 0x19FEB4C8;
  v164 = v156 & 0x45DBA49A ^ 0x8BB74935;
  LODWORD(v145) = (v41 & v164) >> v42;
  LODWORD(STACK[0x50C0]) = v145 | ((v164 & v34) << v35);
  LODWORD(v140) = (v39 & v164) << v35;
  LODWORD(STACK[0x50B8]) = ((v39 & v164) << v40) + v145;
  LODWORD(STACK[0x50B0]) = v140 | v145;
  LODWORD(STACK[0x50A8]) = v140 | ((v164 & v36) >> v37);
  LODWORD(STACK[0x50A0]) = ((v162 & v34) << v35) + ((v162 & v36) >> v42);
  LODWORD(STACK[0x5338]) = ((LODWORD(STACK[0x5338]) ^ 0x99131BB2) - 1823261484) ^ ((LODWORD(STACK[0x5338]) ^ 0x5FE43742) + 1436815396) ^ ((LODWORD(STACK[0x5338]) ^ 0xE3CB399F) - 376758529);
  LODWORD(v142) = STACK[0x51B0];
  LODWORD(v140) = LODWORD(STACK[0x5320]) ^ LODWORD(STACK[0x51B0]);
  LODWORD(STACK[0x5098]) = v140 ^ LODWORD(STACK[0x52F8]);
  LODWORD(STACK[0x5090]) = v140 ^ LODWORD(STACK[0x52F0]);
  LODWORD(STACK[0x5088]) = v140 ^ LODWORD(STACK[0x52E8]);
  LODWORD(STACK[0x5080]) = v140 ^ v150;
  LODWORD(v140) = (v46 >> 1) & 0x665F159 ^ 0xCCBE2B3;
  LODWORD(v150) = (v36 & v140) >> v42;
  LODWORD(STACK[0x5078]) = ((v34 & v140) << v35) + v150;
  LODWORD(STACK[0x5070]) = v150 ^ ((v39 & v140) << v40);
  LODWORD(v140) = v156 & 0x665F159 ^ 0xCCBE2B3;
  v165 = (v41 & v140) >> v37;
  LODWORD(STACK[0x5068]) = v165 | ((v140 & v34) << v35);
  LODWORD(STACK[0x5060]) = v165 ^ ((v39 & v140) << v40);
  LODWORD(v140) = v156 & 0x4B16F5A5 ^ 0x962DEB4B;
  LODWORD(v150) = v140 & v34;
  LODWORD(v140) = (v41 & v140) >> v37;
  v166 = (v150 << v35) ^ v140;
  LODWORD(v140) = (v150 << v40) ^ v140;
  LODWORD(v150) = LODWORD(STACK[0x51A8]) ^ LODWORD(STACK[0x52E0]);
  LODWORD(STACK[0x5058]) = v150 ^ v166;
  LODWORD(STACK[0x5050]) = v150 ^ LODWORD(STACK[0x52D8]);
  LODWORD(STACK[0x5048]) = v150 ^ LODWORD(STACK[0x52C8]);
  LODWORD(STACK[0x5040]) = v150 ^ v140;
  v167 = LODWORD(STACK[0x52D0]) ^ LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x55D0]);
  LODWORD(v144) = v167 - (LODWORD(STACK[0x5258]) ^ LODWORD(STACK[0x5250]));
  LODWORD(STACK[0x5038]) = v158 ^ LODWORD(STACK[0x5198]) ^ LODWORD(STACK[0x5188]) ^ LODWORD(STACK[0x5250]) ^ LODWORD(STACK[0x5258]) ^ v167;
  v168 = (v34 & v159) << v40;
  LODWORD(STACK[0x5030]) = v160 + ((v34 & v159) << v35);
  LODWORD(STACK[0x5028]) = ((v41 & v159) >> v42) + v168;
  LODWORD(STACK[0x5020]) = v168 ^ v160;
  LODWORD(STACK[0x5018]) = ((v41 & v162) >> v42) ^ ((v39 & v162) << v40);
  LODWORD(v140) = v156 & 0x1FDAA58E ^ 0x3FB54B1D;
  LODWORD(v145) = v156 & 0x15BB281E ^ 0x2B76503C;
  v169 = (v41 & v145) >> v42;
  v170 = (v145 & v34) << v35;
  LODWORD(v145) = v145 & v36;
  v171 = v145 >> v42;
  LODWORD(v145) = (v145 >> v37) | v170;
  LODWORD(v143) = LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x5318]);
  v172 = v169 + v170;
  v173 = v143 ^ v170;
  LODWORD(STACK[0x5010]) = v173 ^ v169;
  LODWORD(STACK[0x5008]) = v173 ^ v171;
  v174 = LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5360]);
  LODWORD(STACK[0x5000]) = (LODWORD(STACK[0x52B8]) >> v37) ^ ((v39 & v161) << v40);
  v175 = (v140 & v34) << v40;
  v176 = (v41 & v140) >> v37;
  v177 = LODWORD(STACK[0x5288]) << v35;
  LODWORD(v155) = v163 >> v42;
  LODWORD(v150) = STACK[0x52A0];
  v178 = v177 | ((v41 & STACK[0x52A0]) >> v42);
  v179 = v142;
  v180 = v142 ^ LODWORD(STACK[0x5328]);
  LODWORD(STACK[0x4FF8]) = v180 ^ (v176 + v175);
  LODWORD(STACK[0x4FF0]) = v180 ^ LODWORD(STACK[0x52C0]);
  LODWORD(STACK[0x4FE8]) = v180 ^ ((v140 & v34) << v35) ^ ((v41 & v140) >> v42);
  LODWORD(STACK[0x4FE0]) = v180 ^ v178;
  LODWORD(STACK[0x4FD8]) = v180 ^ (((v140 & v36) >> v37) + v175);
  LODWORD(STACK[0x4FD0]) = v180 ^ (((v39 & v140) << v35) + v176);
  LODWORD(STACK[0x4FC8]) = v180 ^ v155 ^ v177;
  LODWORD(STACK[0x4FC0]) = v180 ^ v155 ^ ((v34 & v150) << v40);
  LODWORD(v140) = v41 & STACK[0x52B0];
  LODWORD(v155) = v141 + LODWORD(STACK[0x5290]);
  LODWORD(STACK[0x4FB8]) = v143 ^ LODWORD(STACK[0x52A8]);
  LODWORD(STACK[0x4FB0]) = v143 ^ (v141 + (v140 >> v37));
  LODWORD(STACK[0x4FA8]) = v143 ^ (v140 >> v42) ^ v141;
  LODWORD(STACK[0x4FA0]) = v143 ^ v145;
  LODWORD(STACK[0x4F98]) = v143 ^ v155;
  LODWORD(STACK[0x4F90]) = v143 ^ v172;
  LODWORD(v142) = STACK[0x5368];
  LODWORD(STACK[0x4F88]) = v174 ^ LODWORD(STACK[0x5368]) ^ 0xCA0B09F2;
  LODWORD(STACK[0x4F80]) = v174 ^ v142 ^ 0xCB85C2CF;
  LODWORD(v140) = (v46 >> 1) & 0x5CE00A41 ^ 0xB9C01483;
  v181 = (v36 & v140) >> v37;
  LODWORD(STACK[0x4F78]) = (v34 & v140) << v40;
  LODWORD(v155) = (v41 & v140) >> v42;
  LODWORD(STACK[0x4F70]) = 681447653 * v144;
  LODWORD(STACK[0x4F68]) = LODWORD(STACK[0x5300]) ^ v41 ^ 0x7085DF82;
  LODWORD(STACK[0x4F60]) = (STACK[0x5178] & v34) << v40;
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x5338]) + 303658690;
  v182 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5780]));
  LODWORD(STACK[0x4F50]) = LODWORD(STACK[0x53D8]) ^ v179;
  LODWORD(STACK[0x4F48]) = v181 ^ v179;
  LODWORD(STACK[0x4F40]) = v155 ^ v179;
  LODWORD(STACK[0x4F38]) = LODWORD(STACK[0x5310]) ^ LODWORD(STACK[0x51A0]);
  LODWORD(STACK[0x4F30]) = LODWORD(STACK[0x5180]) ^ -LODWORD(STACK[0x5180]);
  LODWORD(STACK[0x4F28]) = LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x51C8]);
  LODWORD(STACK[0x4F20]) = LODWORD(STACK[0x5190]) ^ -LODWORD(STACK[0x5190]);
  LODWORD(STACK[0x4F18]) = v39 & 0x10;
  LODWORD(STACK[0x4F10]) = v39 & 0x10 ^ 0x10;
  LODWORD(STACK[0x4F58]) = v176 & 0x10;
  LODWORD(STACK[0x4F08]) = v176 & 0x10 ^ 0x10;
  LODWORD(STACK[0x5360]) = STACK[0x5770];
  return v182();
}

uint64_t sub_100208304@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 24) = v3;
  v4 = *(a1 + 8) <= (*(a2 + 96) + 4);
  return (*(v2 + 8 * (v4 | (2 * v4) | 0x4CECu)))();
}

uint64_t sub_100208374()
{
  v2 = LODWORD(STACK[0x9DA4]);
  v3 = 1534937323 * ((v1 - 240) ^ 0xCD7888C2C6EEFB47);
  STACK[0x1D4D8] = v3 + 3525083284u;
  LODWORD(STACK[0x1D4E0]) = ((v0 + 1023364200) ^ 0x19) + v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4C8]) = v0 + 1023364200 - v3 + 1581;
  STACK[0x1D4C0] = v2 ^ v3;
  LODWORD(STACK[0x1D4D4]) = (v0 + 1023364200) ^ v3;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_100208490(uint64_t a1)
{
  v1 = *(a1 + 3576);
  v2 = (v1 + 2827) | 0x2E2E;
  v3 = *(a1 + 3560) - 3524760976 + (v1 - 770220324);
  v4 = *(STACK[0x57D8] + 8 * (((v3 < *(STACK[0x4D10] + 16)) * (v2 ^ 0x38E4)) ^ v1));
  *(a1 + 3548) = v2;
  *(a1 + 3552) = v3;
  return v4();
}

uint64_t sub_1002085B0()
{
  LODWORD(STACK[0xCFC4]) = v1;
  v2 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * (v0 - 19881));
  return (*(v2 + 8 * ((((v0 - 17029) | 0x802) - 1478) ^ (v0 - 19881))))();
}

uint64_t sub_10020878C()
{
  v0 = STACK[0x51B8] - 17124;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  STACK[0xC430] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002087C8@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W2>, unsigned int a4@<W3>, int a5@<W7>, int a6@<W8>)
{
  STACK[0x4DA0] = v20;
  v24 = v7 + 7921;
  LODWORD(STACK[0x52E0]) = v7 + 7921;
  v25 = (LODWORD(STACK[0x5770]) + a2) ^ 0x266A4B61;
  LODWORD(STACK[0x5550]) = v25;
  v26 = (v8 + v6 + a6) ^ 0xBD20F00;
  LODWORD(STACK[0x5560]) = v26;
  v27 = (LODWORD(STACK[0x57C0]) + v11) ^ 0x14D262A0;
  LODWORD(STACK[0x57C0]) = v27;
  v28 = (a1 + v10) ^ 0x147EBA57;
  LODWORD(STACK[0x5570]) = v28;
  v29 = 563 * (LODWORD(STACK[0x5790]) ^ 0xB) + 263168;
  LODWORD(STACK[0x52E8]) = v7 + 16849;
  v30 = a5 + 563 * (LODWORD(STACK[0x57A0]) ^ 0xD2);
  HIDWORD(v32) = *(v14 + 4 * (v29 + v24 + 8928 + 1367 - ((((v29 + v24 + 8928 + 1367) * a4) >> 32) >> 8) * v12));
  LODWORD(v32) = HIDWORD(v32);
  v31 = v32 >> 8;
  LODWORD(STACK[0x53F8]) = v31;
  v33 = *(v14 + 4 * (v30 - ((5556232 * v30) >> 32) * v12));
  v34 = *(v14 + 4 * (a5 + 563 * a6 - ((5556232 * (a5 + 563 * a6)) >> 32) * v12));
  LODWORD(STACK[0x5408]) = v34;
  v35 = a5 + 563 * (LODWORD(STACK[0x5780]) ^ 0xF);
  v36 = *(v14 + 4 * (v35 - ((5556232 * v35) >> 32) * v12));
  HIDWORD(v32) = v33;
  LODWORD(v32) = v33;
  v37 = v32 >> 16;
  LODWORD(STACK[0x5400]) = v37;
  HIDWORD(v32) = v36;
  LODWORD(v32) = v36;
  v38 = v32 >> 24;
  LODWORD(STACK[0x53E8]) = v38;
  v39 = LODWORD(STACK[0x3328]) ^ v27 ^ v37 ^ v34 ^ v31 ^ v38;
  v40 = STACK[0x3B10];
  v41 = v39 ^ v28 ^ LODWORD(STACK[0x3B10]);
  v42 = v39;
  LODWORD(STACK[0x5640]) = v39;
  v43 = v28 ^ v40;
  LODWORD(STACK[0x53D8]) = v28 ^ v40;
  v44 = v25 ^ v13 ^ v41;
  v45 = v41;
  LODWORD(STACK[0x5650]) = v41;
  LODWORD(STACK[0x53F0]) = v26 ^ v40;
  v46 = v44 ^ v26 ^ v40;
  v47 = *(v14 + 4 * (a5 + 563 * BYTE2(v46) - ((5556232 * (a5 + 563 * BYTE2(v46))) >> 32) * v12));
  LOBYTE(v34) = v44 ^ v26 ^ v40;
  v48 = STACK[0x4E38];
  LODWORD(STACK[0x56D0]) = v44 ^ LODWORD(STACK[0x4E38]);
  v49 = *(v14 + 4 * (a5 + 563 * HIBYTE(v46) - ((5556232 * (a5 + 563 * HIBYTE(v46))) >> 32) * v12));
  v50 = *(v14 + 4 * (a5 + 563 * BYTE1(v46) - ((5556232 * (a5 + 563 * BYTE1(v46))) >> 32) * v12));
  LODWORD(STACK[0x57A0]) = v46;
  v51 = LODWORD(STACK[0x3478]) ^ __ROR4__(v47, 16) ^ __ROR4__(v49, 8) ^ __ROR4__(v50, 24) ^ *(v14 + 4 * (a5 + 563 * v34 - ((5556232 * (a5 + 563 * v34)) >> 32) * v12));
  v52 = v44 ^ v48 ^ v23 ^ v46 ^ v51 ^ v43;
  LODWORD(STACK[0x5790]) = v51 ^ v43;
  LODWORD(STACK[0x5780]) = v52 ^ v48;
  v53 = *(v14 + 4 * (a5 + 563 * ((v52 ^ v48) >> 24) - ((5556232 * (a5 + 563 * ((v52 ^ v48) >> 24))) >> 32) * v12));
  v54 = a5 + 563 * ((v52 ^ v48) >> 8);
  v55 = *(v14 + 4 * (v54 - ((5556232 * v54) >> 32) * v12));
  v56 = *(v14 + 4 * (a5 + 563 * (v52 ^ v48) - ((5556232 * (a5 + 563 * (v52 ^ v48))) >> 32) * v12));
  v57 = v51 ^ v43 ^ v44;
  LODWORD(STACK[0x56F0]) = v57;
  v58 = a5 + 563 * ((v52 ^ v48) >> 16);
  v59 = LODWORD(STACK[0x3470]) ^ __ROR4__(v53, 8) ^ __ROR4__(v55, 24) ^ v56 ^ __ROR4__(*(v14 + 4 * (v58 - ((5556232 * v58) >> 32) * v12)), 16);
  v60 = v59 ^ v45 ^ v57;
  v61 = v59 ^ v45;
  LODWORD(STACK[0x5660]) = v59 ^ v45;
  v62 = v60 ^ v52;
  v63 = v60;
  LODWORD(STACK[0x5680]) = v60;
  v64 = v51 ^ v42;
  LODWORD(STACK[0x5760]) = v51 ^ v42;
  v65 = *(v14 + 4 * (a5 + 563 * BYTE2(v62) - ((5556232 * (a5 + 563 * BYTE2(v62))) >> 32) * v12));
  v66 = *(v14 + 4 * (a5 + 563 * BYTE1(v62) - ((5556232 * (a5 + 563 * BYTE1(v62))) >> 32) * v12));
  v67 = *(v14 + 4 * (a5 + 563 * v62 - ((5556232 * (a5 + 563 * v62)) >> 32) * v12));
  v68 = v59 ^ v64;
  LODWORD(STACK[0x5670]) = v68;
  v69 = LODWORD(STACK[0x3468]) ^ __ROR4__(v65, 16) ^ __ROR4__(v66, 24) ^ v67 ^ v68 ^ __ROR4__(*(v14 + 4 * (a5 + 563 * HIBYTE(v62) - ((5556232 * (a5 + 563 * HIBYTE(v62))) >> 32) * v12)), 8);
  v70 = v61 ^ v13 ^ v69;
  LODWORD(STACK[0x5740]) = v69;
  v71 = (v48 ^ LODWORD(STACK[0x3208]) ^ (v70 - (v70 ^ v48))) + v70;
  LODWORD(STACK[0x5730]) = v71;
  v72 = v70 ^ v63;
  LODWORD(STACK[0x5770]) = v72;
  v73 = v72 ^ v13;
  v74 = v72 ^ v13 ^ v62;
  v75 = a5 + 563 * (v72 ^ v13 ^ v62) - ((5556232 * (a5 + 563 * (v72 ^ v13 ^ v62))) >> 32) * v12;
  v76 = LODWORD(STACK[0x3460]) ^ __ROR4__(*(v14 + 4 * (a5 + 563 * HIBYTE(v74) - ((5556232 * (a5 + 563 * HIBYTE(v74))) >> 32) * v12)), 8);
  LODWORD(v32) = __ROR4__(*(v14 + 4 * (a5 + 563 * BYTE1(v74) - ((5556232 * (a5 + 563 * BYTE1(v74))) >> 32) * v12)), 24);
  LODWORD(STACK[0x5720]) = v74;
  v77 = v76 ^ v32 ^ *(v14 + 4 * v75) ^ v69 ^ __ROR4__(*(v14 + 4 * (a5 + 563 * BYTE2(v74) - ((5556232 * (a5 + 563 * BYTE2(v74))) >> 32) * v12)), 16);
  v78 = v77 ^ v48 ^ v71;
  LODWORD(STACK[0x5750]) = v77;
  LODWORD(STACK[0x5630]) = v78 ^ v23;
  v79 = v78 ^ v23 ^ v73;
  v80 = STACK[0x3B1C];
  v81 = v74 ^ LODWORD(STACK[0x3B1C]) ^ v79;
  LODWORD(STACK[0x5610]) = v81;
  v82 = *(v14 + 4 * (563 * BYTE2(v81) + 288609 - ((5556232 * (563 * BYTE2(v81) + 288609)) >> 32) * v12));
  v83 = LODWORD(STACK[0x3458]) ^ *(v14 + 4 * (563 * v81 + 289382 - ((5556232 * (563 * v81 + 289382)) >> 32) * v12)) ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v81) + 289382 - ((5556232 * (563 * HIBYTE(v81) + 289382)) >> 32) * v12)), 8) ^ v77 ^ HIWORD(v82) ^ (v82 << 16) ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v81) + 289382 - ((5556232 * (563 * BYTE1(v81) + 289382)) >> 32) * v12)), 24);
  LODWORD(STACK[0x5620]) = v79 ^ v48;
  LODWORD(STACK[0x55F0]) = v48 ^ v23;
  v84 = v48;
  LODWORD(STACK[0x5710]) = v83 ^ v78;
  v85 = v83;
  LODWORD(STACK[0x56E0]) = v83;
  v86 = v83 ^ v78 ^ v13;
  v87 = v48 ^ v23 ^ v79 ^ v48 ^ v81 ^ v86;
  v88 = v86 ^ v79;
  LODWORD(STACK[0x55E0]) = v86 ^ v79;
  LODWORD(STACK[0x54D0]) = v87;
  v89 = LODWORD(STACK[0x3450]) ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v87) + 289382 - ((5556232 * (563 * HIBYTE(v87) + 289382)) >> 32) * v12)), 8) ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v87) + 289382 - ((5556232 * (563 * BYTE1(v87) + 289382)) >> 32) * v12)), 24) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v87) + 289382 - ((5556232 * (563 * BYTE2(v87) + 289382)) >> 32) * v12)), 16) ^ *(v14 + 4 * (563 * v87 + 289382 - ((5556232 * (563 * v87 + 289382)) >> 32) * v12));
  v90 = v78 ^ v13 ^ v89;
  v91 = v90 ^ v23 ^ v88;
  v92 = v90;
  v93 = v91 ^ v80 ^ v87;
  v94 = 563 * (v91 ^ v80 ^ v87) + 289382;
  LODWORD(STACK[0x56C0]) = v93;
  v95 = *(v14 + 4 * (563 * BYTE1(v93) + 289382 - ((5556232 * (563 * BYTE1(v93) + 289382)) >> 32) * v12));
  v96 = *(v14 + 4 * (v94 - ((5556232 * v94) >> 32) * v12));
  LODWORD(STACK[0x55C0]) = v89 ^ v85;
  v97 = LODWORD(STACK[0x3448]) ^ __ROR4__(v95, 24) ^ v96 ^ v89 ^ v85 ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v93) + 289382 - ((5556232 * (563 * BYTE2(v93) + 289382)) >> 32) * v12)), 16) ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v93) + 289382 - ((5556232 * (563 * HIBYTE(v93) + 289382)) >> 32) * v12)), 8);
  v98 = v91 ^ v84;
  LODWORD(STACK[0x5580]) = v92;
  v99 = v91 ^ v84 ^ v13 ^ v93 ^ v97 ^ v92;
  LODWORD(STACK[0x5590]) = v97 ^ v92;
  v100 = v99 ^ v84;
  v101 = v16;
  v102 = LODWORD(STACK[0x3444]) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v100) + 289382 - ((5556232 * (563 * BYTE2(v100) + 289382)) >> 32) * v12)), 16) ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v100) + 289382 - ((5556232 * (563 * HIBYTE(v100) + 289382)) >> 32) * v12)), 8) ^ *(v14 + 4 * (563 * (v99 ^ v84) + 289382 - ((5556232 * (563 * (v99 ^ v84) + 289382)) >> 32) * v12)) ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v100) + 289382 - ((5556232 * (563 * BYTE1(v100) + 289382)) >> 32) * v12)), 24);
  v103 = v97 ^ v92 ^ v91;
  LODWORD(STACK[0x55D0]) = v103;
  LODWORD(STACK[0x55A0]) = v102 ^ v92;
  v104 = v102 ^ v92 ^ v103;
  LODWORD(STACK[0x55B0]) = v104;
  v105 = v104 ^ v99;
  v106 = v17;
  v107 = LODWORD(STACK[0x3438]) ^ __ROR4__(*(v14 + 4 * (563 * ((v104 ^ v99) >> 24) + 289382 - ((5556232 * (563 * ((v104 ^ v99) >> 24) + 289382)) >> 32) * v12)), 8);
  LODWORD(v32) = __ROR4__(*(v14 + 4 * (563 * BYTE2(v105) + 289382 - ((5556232 * (563 * BYTE2(v105) + 289382)) >> 32) * v12)), 16);
  *(v22 - 152) = v12;
  LODWORD(STACK[0x54C0]) = v97;
  LODWORD(STACK[0x54F0]) = v102 ^ v97;
  LODWORD(STACK[0x5510]) = v107 ^ v32 ^ *(v14 + 4 * (563 * v105 + 289382 - ((5556232 * (563 * v105 + 289382)) >> 32) * v12)) ^ v102 ^ v97 ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v105) + 289382 - ((5556232 * (563 * BYTE1(v105) + 289382)) >> 32) * v12)), 24);
  v108 = LODWORD(STACK[0x3348]) ^ v98;
  LODWORD(STACK[0x5600]) = v108;
  v109 = 16843009 * ((v108 + v97) ^ 0x28);
  v110 = 2 * (v109 & v18);
  LODWORD(STACK[0x5410]) = v110;
  v111 = LODWORD(STACK[0x38A0]) ^ LODWORD(STACK[0x4DF0]) ^ LODWORD(STACK[0x5570]);
  v112 = (v110 ^ v109) & v19;
  v113 = STACK[0x5220];
  LODWORD(STACK[0x5500]) = (v110 ^ v109) & STACK[0x5220];
  v114 = v110 ^ v109;
  LOBYTE(v110) = v9;
  v115 = v112 >> v9;
  v116 = (v114 & v113) << v21;
  LODWORD(STACK[0x5520]) = v111 ^ ((v112 >> v9) | v116);
  v117 = STACK[0x4E38];
  LODWORD(STACK[0x54B0]) = LODWORD(STACK[0x4E10]) ^ LODWORD(STACK[0x4E38]) ^ LODWORD(STACK[0x5650]);
  v118 = v112 >> v106;
  v119 = LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x3308]);
  v120 = v114 & v15;
  LODWORD(STACK[0x5238]) = v23;
  v121 = v114;
  LODWORD(STACK[0x53E0]) = v114;
  v122 = (v114 & v15) << a3;
  LODWORD(STACK[0x5420]) = v122;
  LODWORD(STACK[0x5650]) = v119 ^ (v118 | v122);
  LODWORD(STACK[0x5530]) = v109;
  v123 = v109 ^ (2 * (v109 & v101));
  v124 = v123 & v15;
  v125 = STACK[0x5240];
  v126 = v123 & STACK[0x5240];
  v127 = v124 << a3;
  LOBYTE(v97) = a3;
  v128 = v126 >> v106;
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x3200]) ^ ((v124 << a3) + (v126 >> v106));
  v129 = v62 ^ LODWORD(STACK[0x31F8]);
  v130 = v121 & v125;
  v131 = (v121 & v125) >> v110;
  LODWORD(STACK[0x5540]) = v131;
  LODWORD(STACK[0x56D0]) = v129 ^ (v116 | v131);
  LODWORD(STACK[0x5660]) ^= LODWORD(STACK[0x4E28]) ^ v117 ^ LODWORD(STACK[0x3300]);
  LODWORD(v124) = v124 << v21;
  LODWORD(STACK[0x5670]) ^= STACK[0x3318] ^ LODWORD(STACK[0x32F8]) ^ (v124 | (v126 >> v106));
  v132 = v123 & v19;
  v133 = v132 >> v106;
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5680]) ^ (v132 >> v106) ^ STACK[0x32F0] ^ v127;
  v134 = v120 << v21;
  LODWORD(STACK[0x5680]) = LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x32C0]) ^ (v118 | (v120 << v21));
  v135 = v117;
  LODWORD(STACK[0x5640]) = LODWORD(STACK[0x32C8]) ^ v117 ^ LODWORD(STACK[0x5630]) ^ (v118 + v116);
  v136 = v123 & v113;
  v137 = v126 >> v110;
  LOBYTE(v101) = v110;
  LOBYTE(v126) = v97;
  v138 = v137;
  LODWORD(STACK[0x5630]) = LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x32D0]) ^ ((v136 << v97) | v137);
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x32B0]) ^ (v122 | v115);
  v139 = LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x3370]);
  v140 = v136 << v21;
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x33C8]) ^ (v128 + v140);
  LODWORD(STACK[0x55F0]) = v139 ^ (v128 + v140);
  LODWORD(STACK[0x54A0]) = LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x3358]) ^ (v127 | v137);
  LODWORD(STACK[0x56F0]) = (v127 | v137) ^ LODWORD(STACK[0x54C0]);
  v141 = LODWORD(STACK[0x3220]) ^ LODWORD(STACK[0x5580]);
  v142 = v118;
  LODWORD(STACK[0x5358]) = v118;
  LODWORD(STACK[0x5580]) = v141 ^ (v116 | v118);
  LODWORD(STACK[0x5610]) = LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x3B10]) ^ (v116 | v118);
  v143 = v128;
  LODWORD(STACK[0x55E0]) = LODWORD(STACK[0x3228]) ^ v128 ^ v127 ^ LODWORD(STACK[0x54F0]);
  v144 = LODWORD(STACK[0x5480]) ^ v135 ^ LODWORD(STACK[0x3340]);
  v145 = v134;
  v146 = v130 >> v106;
  v147 = v144 ^ ((v130 >> v106) | v134);
  LODWORD(STACK[0x55C0]) = v116 ^ v115 ^ v100;
  v148 = STACK[0x55A0];
  LODWORD(STACK[0x5590]) = LODWORD(STACK[0x3294]) ^ v116 ^ v115 ^ LODWORD(STACK[0x55A0]);
  v149 = STACK[0x5238];
  v150 = STACK[0x5510];
  v151 = v148 ^ LODWORD(STACK[0x5238]) ^ LODWORD(STACK[0x5510]);
  v152 = v136 << v97;
  v153 = (v132 >> v106) | (v136 << v97);
  LODWORD(STACK[0x53B0]) = v153;
  STACK[0x5360] = v132 >> v106;
  v154 = v150 ^ LODWORD(STACK[0x38C0]) ^ v153;
  LODWORD(STACK[0x5430]) = v154;
  v155 = LODWORD(STACK[0x54B0]) ^ (v116 + v115);
  v156 = STACK[0x55B0];
  v157 = LODWORD(STACK[0x32AC]) ^ LODWORD(STACK[0x38A8]) ^ LODWORD(STACK[0x55B0]) ^ (v116 + v115);
  LODWORD(STACK[0x55A0]) = v147 ^ LODWORD(STACK[0x55B0]);
  v158 = LODWORD(STACK[0x3380]) ^ v149 ^ v156;
  v159 = v132 >> v101;
  v160 = LODWORD(STACK[0x31E8]) ^ (v132 >> v101) ^ v152;
  v161 = v152;
  LODWORD(STACK[0x5340]) = v152;
  LODWORD(STACK[0x54F0]) = v105 ^ v160;
  v162 = LODWORD(STACK[0x57C0]) ^ LODWORD(STACK[0x3310]);
  LODWORD(STACK[0x5320]) = v143;
  v163 = v162 ^ (v127 | v143);
  LODWORD(STACK[0x55B0]) = (v127 | v143) ^ LODWORD(STACK[0x55D0]);
  LODWORD(STACK[0x5510]) = v157 ^ v151;
  v164 = STACK[0x5540];
  LODWORD(STACK[0x5380]) = v134 ^ LODWORD(STACK[0x5540]);
  LODWORD(STACK[0x5338]) = v134;
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x321C]) ^ v134 ^ v164 ^ v151;
  LODWORD(STACK[0x54B0]) = v158 ^ v105 ^ (v127 | v143) ^ v151;
  v165 = LODWORD(STACK[0x33C0]) ^ LODWORD(STACK[0x5760]);
  v166 = LODWORD(STACK[0x5500]) << v126;
  v167 = LODWORD(STACK[0x3270]) ^ LODWORD(STACK[0x5550]);
  LODWORD(STACK[0x53A0]) = v166 + v146;
  v168 = v166;
  v169 = v167 ^ (v166 + v146);
  LODWORD(STACK[0x5378]) = v124;
  LODWORD(STACK[0x5390]) = v124 + v159;
  v170 = v165 ^ (v124 + v159);
  v171 = LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x3280]) ^ v159;
  v172 = v159;
  LODWORD(STACK[0x5348]) = v159;
  v173 = v171 ^ v124;
  v174 = STACK[0x5460];
  v175 = ((LODWORD(STACK[0x5460]) ^ v154) - 2000593834) ^ v170;
  LODWORD(STACK[0x52D8]) = v175;
  v176 = (v175 & 1) == 0;
  v177 = STACK[0x5520];
  if (v176)
  {
    v178 = STACK[0x5520];
  }

  else
  {
    v178 = v169;
  }

  LODWORD(STACK[0x5760]) = v178;
  if (v176)
  {
    v177 = v163;
  }

  LODWORD(STACK[0x5520]) = v177;
  if (!v176)
  {
    v169 = v173;
  }

  LODWORD(STACK[0x5500]) = v169;
  if (v176)
  {
    v163 = v173;
  }

  LODWORD(STACK[0x5450]) = v163;
  v179 = LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x33E0]) ^ v138;
  v180 = v140;
  LODWORD(STACK[0x5328]) = v140;
  v181 = v179 ^ v140;
  v182 = STACK[0x5650];
  if (v176)
  {
    v183 = STACK[0x5650];
  }

  else
  {
    v183 = v181;
  }

  LODWORD(STACK[0x52D0]) = v183;
  if (v176)
  {
    v182 = v155;
  }

  LODWORD(STACK[0x5650]) = v182;
  v184 = STACK[0x54E0];
  if (!v176)
  {
    v181 = STACK[0x54E0];
  }

  LODWORD(STACK[0x5440]) = v181;
  if (v176)
  {
    v185 = v184;
  }

  else
  {
    v185 = v155;
  }

  LODWORD(STACK[0x54E0]) = v185;
  v186 = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x32E8]);
  v187 = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x33A8]);
  v188 = LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x4DF8]);
  v189 = LODWORD(STACK[0x3398]) ^ LODWORD(STACK[0x5720]);
  v190 = v127;
  v191 = v127 ^ v172;
  LODWORD(STACK[0x53B8]) = v191;
  v192 = v187 ^ v191;
  LODWORD(STACK[0x5368]) = v116;
  LODWORD(STACK[0x5330]) = v146;
  LODWORD(STACK[0x53D0]) = v116 | v146;
  v193 = v186 ^ (v116 | v146);
  LODWORD(STACK[0x53C0]) = v190 + v138;
  v194 = v138;
  LODWORD(STACK[0x5318]) = v138;
  v195 = v190;
  STACK[0x5370] = v190;
  v196 = v189 ^ (v190 + v138);
  LODWORD(STACK[0x53C8]) = v116 ^ v142;
  v197 = v188 ^ v116 ^ v142;
  if (v176)
  {
    v198 = v197;
  }

  else
  {
    v198 = v189 ^ (v190 + v138);
  }

  if (!v176)
  {
    v196 = v193;
  }

  LODWORD(STACK[0x5730]) = v196;
  if (v176)
  {
    v199 = v193;
  }

  else
  {
    v199 = v192;
  }

  if (v176)
  {
    v200 = v192;
  }

  else
  {
    v200 = v197;
  }

  LODWORD(STACK[0x55D0]) = v200;
  v201 = LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x32A8]);
  v202 = LODWORD(STACK[0x32A4]) ^ LODWORD(STACK[0x5790]) ^ v146;
  LODWORD(STACK[0x5350]) = v168;
  v203 = v202 ^ v168;
  v204 = STACK[0x5420];
  v205 = v201 ^ v115 ^ LODWORD(STACK[0x5420]);
  if (v176)
  {
    v206 = v205;
  }

  else
  {
    v206 = v170;
  }

  LODWORD(STACK[0x5790]) = v206;
  if (!v176)
  {
    v170 = v203;
  }

  LODWORD(STACK[0x5308]) = v170;
  v207 = STACK[0x54D0];
  if (v176)
  {
    v208 = v203;
  }

  else
  {
    v208 = STACK[0x54D0];
  }

  if (!v176)
  {
    v207 = v205;
  }

  LODWORD(STACK[0x5300]) = v207;
  v209 = LODWORD(STACK[0x31F0]) ^ LODWORD(STACK[0x56C0]);
  v210 = v204 ^ LODWORD(STACK[0x5600]) ^ v164;
  LODWORD(STACK[0x53A8]) = v133 ^ v180;
  v211 = v209 ^ v133 ^ v180;
  v212 = STACK[0x54A0];
  if (v176)
  {
    v213 = v211;
  }

  else
  {
    v213 = STACK[0x54A0];
  }

  if (v176)
  {
    v211 = v210;
  }

  LODWORD(STACK[0x52F8]) = v211;
  v214 = STACK[0x5580];
  if (v176)
  {
    v215 = STACK[0x5580];
  }

  else
  {
    v215 = v210;
  }

  if (v176)
  {
    v214 = v212;
  }

  LODWORD(STACK[0x52F0]) = v214;
  v216 = LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x32BC]);
  v217 = LODWORD(STACK[0x3298]) ^ LODWORD(STACK[0x5710]);
  v218 = v115;
  LODWORD(STACK[0x5310]) = v115;
  LODWORD(STACK[0x5388]) = v145 ^ v115;
  v219 = v217 ^ v145 ^ v115;
  LODWORD(STACK[0x5398]) = v161 | v143;
  v220 = v216 ^ (v161 | v143);
  v221 = STACK[0x5620];
  v222 = STACK[0x55F0];
  if (v176)
  {
    v223 = STACK[0x5620];
  }

  else
  {
    v223 = STACK[0x55F0];
  }

  LODWORD(STACK[0x52C8]) = v223;
  if (v176)
  {
    v224 = v219;
  }

  else
  {
    v224 = v221;
  }

  if (v176)
  {
    v219 = v220;
  }

  LODWORD(STACK[0x52C0]) = v219;
  if (v176)
  {
    v225 = v222;
  }

  else
  {
    v225 = v220;
  }

  v226 = LODWORD(STACK[0x5660]) ^ v168 ^ v218;
  if (v176)
  {
    v227 = v174;
  }

  else
  {
    v227 = STACK[0x56D0];
  }

  if (v176)
  {
    v228 = LODWORD(STACK[0x5660]) ^ v168 ^ v218;
  }

  else
  {
    v228 = v174;
  }

  if (v176)
  {
    v229 = STACK[0x5670];
  }

  else
  {
    v229 = v226;
  }

  if (v176)
  {
    v230 = STACK[0x56D0];
  }

  else
  {
    v230 = STACK[0x5670];
  }

  v231 = STACK[0x5640];
  if (v176)
  {
    v232 = LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x32D8]) ^ v194 ^ v195;
  }

  else
  {
    v232 = STACK[0x5640];
  }

  v233 = STACK[0x5680];
  if (v176)
  {
    v234 = STACK[0x5680];
  }

  else
  {
    v234 = LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x32D8]) ^ v194 ^ v195;
  }

  LODWORD(STACK[0x52B8]) = v234;
  if (v176)
  {
    v233 = STACK[0x5630];
    v235 = v231;
  }

  else
  {
    v235 = STACK[0x5630];
  }

  if (v176)
  {
    v236 = STACK[0x54F0];
  }

  else
  {
    v236 = STACK[0x55E0];
  }

  if (v176)
  {
    v237 = STACK[0x55E0];
  }

  else
  {
    v237 = STACK[0x5590];
  }

  if (v176)
  {
    v238 = STACK[0x5590];
  }

  else
  {
    v238 = STACK[0x55A0];
  }

  if (v176)
  {
    v239 = STACK[0x55A0];
  }

  else
  {
    v239 = STACK[0x54F0];
  }

  if (v176)
  {
    v240 = STACK[0x56F0];
  }

  else
  {
    v240 = STACK[0x5610];
  }

  if (v176)
  {
    v241 = STACK[0x55C0];
  }

  else
  {
    v241 = STACK[0x56F0];
  }

  if (v176)
  {
    v242 = STACK[0x55B0];
  }

  else
  {
    v242 = STACK[0x55C0];
  }

  if (v176)
  {
    v243 = STACK[0x5610];
  }

  else
  {
    v243 = STACK[0x55B0];
  }

  if (v176)
  {
    v244 = STACK[0x54C0];
  }

  else
  {
    v244 = STACK[0x5510];
  }

  v245 = STACK[0x54B0];
  if (v176)
  {
    v246 = STACK[0x5510];
  }

  else
  {
    v246 = STACK[0x54B0];
  }

  v247 = STACK[0x5430];
  if (!v176)
  {
    v245 = STACK[0x5430];
    v247 = STACK[0x54C0];
  }

  v248 = (STACK[0x52D8] & 2) == 0;
  if ((STACK[0x52D8] & 2) != 0)
  {
    v249 = v229;
  }

  else
  {
    v249 = v227;
  }

  LODWORD(STACK[0x5670]) = v249;
  v250 = *(v22 - 152);
  if (!v248)
  {
    v229 = v227;
  }

  LODWORD(STACK[0x54C0]) = v229;
  if (v248)
  {
    v251 = v232;
  }

  else
  {
    v251 = v233;
  }

  LODWORD(STACK[0x57A0]) = v251;
  if (!v248)
  {
    v233 = v232;
  }

  LODWORD(STACK[0x5680]) = v233;
  if (v248)
  {
    v252 = v199;
  }

  else
  {
    v252 = v198;
  }

  LODWORD(STACK[0x5660]) = v252;
  if (v248)
  {
    v253 = v198;
  }

  else
  {
    v253 = v199;
  }

  LODWORD(STACK[0x54F0]) = v253;
  v254 = STACK[0x5520];
  v255 = STACK[0x5500];
  if (v248)
  {
    v256 = STACK[0x5520];
  }

  else
  {
    v256 = STACK[0x5500];
  }

  LODWORD(STACK[0x5610]) = v256;
  if (v248)
  {
    v257 = v255;
  }

  else
  {
    v257 = v254;
  }

  LODWORD(STACK[0x5510]) = v257;
  v258 = STACK[0x52D0];
  v259 = STACK[0x54E0];
  if (v248)
  {
    v260 = STACK[0x54E0];
  }

  else
  {
    v260 = STACK[0x52D0];
  }

  LODWORD(STACK[0x5720]) = v260;
  if (v248)
  {
    v261 = v258;
  }

  else
  {
    v261 = v259;
  }

  LODWORD(STACK[0x5780]) = v261;
  v262 = STACK[0x5760];
  v263 = STACK[0x5450];
  if (v248)
  {
    v264 = STACK[0x5760];
  }

  else
  {
    v264 = STACK[0x5450];
  }

  LODWORD(STACK[0x56D0]) = v264;
  if (v248)
  {
    v265 = v263;
  }

  else
  {
    v265 = v262;
  }

  LODWORD(STACK[0x55E0]) = v265;
  if (v248)
  {
    v266 = v236;
  }

  else
  {
    v266 = v238;
  }

  LODWORD(STACK[0x5500]) = v266;
  if (v248)
  {
    v267 = v238;
  }

  else
  {
    v267 = v236;
  }

  LODWORD(STACK[0x56C0]) = v267;
  v268 = STACK[0x5650];
  v269 = STACK[0x5440];
  if (v248)
  {
    v270 = STACK[0x5650];
  }

  else
  {
    v270 = STACK[0x5440];
  }

  LODWORD(STACK[0x5450]) = v270;
  if (v248)
  {
    v271 = v269;
  }

  else
  {
    v271 = v268;
  }

  LODWORD(STACK[0x5600]) = v271;
  v272 = STACK[0x5790];
  if (v248)
  {
    v273 = STACK[0x5790];
  }

  else
  {
    v273 = v208;
  }

  LODWORD(STACK[0x5630]) = v273;
  if (v248)
  {
    v274 = v208;
  }

  else
  {
    v274 = v272;
  }

  LODWORD(STACK[0x55F0]) = v274;
  if (v248)
  {
    v275 = v213;
  }

  else
  {
    v275 = v215;
  }

  LODWORD(STACK[0x5790]) = v275;
  if (v248)
  {
    v276 = v215;
  }

  else
  {
    v276 = v213;
  }

  LODWORD(STACK[0x54D0]) = v276;
  if (v248)
  {
    v277 = v242;
  }

  else
  {
    v277 = v240;
  }

  LODWORD(STACK[0x5650]) = v277;
  if (v248)
  {
    v278 = v240;
  }

  else
  {
    v278 = v242;
  }

  LODWORD(STACK[0x5460]) = v278;
  if (v248)
  {
    v279 = v239;
  }

  else
  {
    v279 = v237;
  }

  LODWORD(STACK[0x5750]) = v279;
  if (v248)
  {
    v280 = v237;
  }

  else
  {
    v280 = v239;
  }

  LODWORD(STACK[0x54A0]) = v280;
  if (v248)
  {
    v281 = v246;
  }

  else
  {
    v281 = v247;
  }

  LODWORD(STACK[0x54E0]) = v281;
  if (v248)
  {
    v282 = v247;
  }

  else
  {
    v282 = v246;
  }

  LODWORD(STACK[0x56E0]) = v282;
  if (v248)
  {
    v283 = v225;
  }

  else
  {
    v283 = v224;
  }

  LODWORD(STACK[0x5640]) = v283;
  if (v248)
  {
    v284 = v224;
  }

  else
  {
    v284 = v225;
  }

  LODWORD(STACK[0x5620]) = v284;
  if (v248)
  {
    v285 = v228;
  }

  else
  {
    v285 = v230;
  }

  LODWORD(STACK[0x55B0]) = v285;
  if (v248)
  {
    v286 = v230;
  }

  else
  {
    v286 = v228;
  }

  LODWORD(STACK[0x5740]) = v286;
  if (v248)
  {
    v287 = v245;
  }

  else
  {
    v287 = v244;
  }

  LODWORD(STACK[0x54B0]) = v287;
  if (v248)
  {
    v288 = v244;
  }

  else
  {
    v288 = v245;
  }

  LODWORD(STACK[0x5770]) = v288;
  if (v248)
  {
    v289 = v241;
  }

  else
  {
    v289 = v243;
  }

  LODWORD(STACK[0x5520]) = v289;
  if (v248)
  {
    v290 = v243;
  }

  else
  {
    v290 = v241;
  }

  LODWORD(STACK[0x5760]) = v290;
  v291 = STACK[0x5730];
  v292 = STACK[0x55D0];
  if (v248)
  {
    v293 = STACK[0x55D0];
  }

  else
  {
    v293 = STACK[0x5730];
  }

  LODWORD(STACK[0x5430]) = v293;
  if (v248)
  {
    v294 = v291;
  }

  else
  {
    v294 = v292;
  }

  LODWORD(STACK[0x5440]) = v294;
  v295 = STACK[0x5308];
  v296 = STACK[0x5300];
  if (v248)
  {
    v297 = STACK[0x5300];
  }

  else
  {
    v297 = STACK[0x5308];
  }

  LODWORD(STACK[0x5590]) = v297;
  if (v248)
  {
    v298 = v295;
  }

  else
  {
    v298 = v296;
  }

  LODWORD(STACK[0x5580]) = v298;
  v299 = STACK[0x52C8];
  v300 = STACK[0x52C0];
  if (v248)
  {
    v301 = STACK[0x52C0];
  }

  else
  {
    v301 = STACK[0x52C8];
  }

  LODWORD(STACK[0x5710]) = v301;
  if (v248)
  {
    v302 = v299;
  }

  else
  {
    v302 = v300;
  }

  LODWORD(STACK[0x56F0]) = v302;
  v303 = STACK[0x52B8];
  if (v248)
  {
    v304 = STACK[0x52B8];
  }

  else
  {
    v304 = v235;
  }

  LODWORD(STACK[0x55C0]) = v304;
  if (v248)
  {
    v305 = v235;
  }

  else
  {
    v305 = v303;
  }

  LODWORD(STACK[0x55A0]) = v305;
  v306 = STACK[0x52F8];
  v307 = STACK[0x52F0];
  if (v248)
  {
    v308 = STACK[0x52F0];
  }

  else
  {
    v308 = STACK[0x52F8];
  }

  LODWORD(STACK[0x55D0]) = v308;
  if (v248)
  {
    v309 = v306;
  }

  else
  {
    v309 = v307;
  }

  LODWORD(STACK[0x5730]) = v309;
  v310 = LODWORD(STACK[0x3320]) ^ LODWORD(STACK[0x57C0]) ^ LODWORD(STACK[0x53E8]) ^ LODWORD(STACK[0x5400]) ^ LODWORD(STACK[0x53F8]) ^ LODWORD(STACK[0x5408]);
  v311 = v310 ^ LODWORD(STACK[0x53D8]);
  v312 = v310;
  LODWORD(STACK[0x5308]) = v310;
  LODWORD(STACK[0x5400]) = v311;
  v313 = STACK[0x5480];
  v314 = v311 ^ LODWORD(STACK[0x5480]);
  v315 = STACK[0x5550];
  v316 = v314 ^ LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x53F0]);
  v317 = v314 ^ LODWORD(STACK[0x5550]);
  LODWORD(STACK[0x53E8]) = v317;
  v318 = LODWORD(STACK[0x3430]) ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v316) + 289382 - ((5556232 * (563 * BYTE1(v316) + 289382)) >> 32) * v250)), 24) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v316) + 289382 - ((5556232 * (563 * BYTE2(v316) + 289382)) >> 32) * v250)), 16) ^ *(v14 + 4 * (563 * v316 + 289382 - ((5556232 * (563 * v316 + 289382)) >> 32) * v250)) ^ v312 ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v316) + 289382 - ((5556232 * (563 * HIBYTE(v316) + 289382)) >> 32) * v250)), 8);
  v319 = v318 ^ v314;
  LODWORD(STACK[0x53D8]) = v318;
  LODWORD(STACK[0x5408]) = v319;
  v320 = STACK[0x5238];
  v321 = v319 ^ LODWORD(STACK[0x5238]);
  LODWORD(STACK[0x53F8]) = v321 ^ v317;
  v322 = v321 ^ v317 ^ v313;
  v323 = v322 ^ v316;
  v324 = LODWORD(STACK[0x3428]) ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v323) + 289382 - ((5556232 * (563 * BYTE1(v323) + 289382)) >> 32) * v250)), 24) ^ *(v14 + 4 * (563 * (v322 ^ v316) + 289382 - ((5556232 * (563 * (v322 ^ v316) + 289382)) >> 32) * v250)) ^ v318 ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v323) + 289382 - ((5556232 * (563 * HIBYTE(v323) + 289382)) >> 32) * v250)), 8) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v323) + 289382 - ((5556232 * (563 * BYTE2(v323) + 289382)) >> 32) * v250)), 16);
  LODWORD(STACK[0x5258]) = v324;
  LODWORD(STACK[0x53F0]) = v324 ^ v321;
  v325 = v324 ^ v321 ^ v322;
  v326 = v323 ^ LODWORD(STACK[0x3B10]) ^ v325;
  v327 = LODWORD(STACK[0x3420]) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v326) + 289382 - ((5556232 * (563 * BYTE2(v326) + 289382)) >> 32) * v250)), 16) ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v326) + 289382 - ((5556232 * (563 * BYTE1(v326) + 289382)) >> 32) * v250)), 24) ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v326) + 289382 - ((5556232 * (563 * HIBYTE(v326) + 289382)) >> 32) * v250)), 8) ^ *(v14 + 4 * (563 * (v323 ^ LOBYTE(STACK[0x3B10]) ^ v325) + 289382 - ((5556232 * (563 * (v323 ^ LOBYTE(STACK[0x3B10]) ^ v325) + 289382)) >> 32) * v250));
  v328 = v327 ^ v321;
  v329 = STACK[0x4E38];
  LODWORD(STACK[0x52F8]) = v325 ^ LODWORD(STACK[0x4E38]);
  v330 = v325 ^ v329 ^ v320 ^ v326 ^ v328;
  v331 = v330 ^ v329;
  v332 = LODWORD(STACK[0x3418]) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v331) + 289382 - ((5556232 * (563 * BYTE2(v331) + 289382)) >> 32) * v250)), 16);
  v333 = __ROR4__(*(v14 + 4 * (563 * BYTE1(v331) + 289382 - ((5556232 * (563 * BYTE1(v331) + 289382)) >> 32) * v250)), 24);
  LODWORD(STACK[0x52F0]) = v327 ^ v324;
  v334 = v332 ^ v333 ^ *(v14 + 4 * (563 * (v330 ^ v329) + 289382 - ((5556232 * (563 * (v330 ^ v329) + 289382)) >> 32) * v250)) ^ v327 ^ v324 ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v331) + 289382 - ((5556232 * (563 * HIBYTE(v331) + 289382)) >> 32) * v250)), 8);
  v335 = v328 ^ v325;
  LODWORD(STACK[0x52D8]) = v328 ^ v325;
  v336 = v328 ^ v313;
  LODWORD(STACK[0x5298]) = v328 ^ v313;
  v337 = v328 ^ v313 ^ v320 ^ v334;
  v338 = v334;
  LODWORD(STACK[0x52B0]) = v334;
  LODWORD(STACK[0x5300]) = v337;
  v339 = v337 ^ v335;
  v340 = v339 ^ v330;
  v341 = LODWORD(STACK[0x3410]) ^ *(v14 + 4 * (563 * v340 + 289382 - ((5556232 * (563 * v340 + 289382)) >> 32) * v250)) ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v340) + 289382 - ((5556232 * (563 * HIBYTE(v340) + 289382)) >> 32) * v250)), 8) ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v340) + 289382 - ((5556232 * (563 * BYTE1(v340) + 289382)) >> 32) * v250)), 24) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v340) + 289382 - ((5556232 * (563 * BYTE2(v340) + 289382)) >> 32) * v250)), 16);
  v342 = v339 ^ LODWORD(STACK[0x3B1C]);
  LODWORD(STACK[0x52D0]) = v342;
  v343 = v341 ^ v328 ^ v342;
  v344 = v340 ^ v320 ^ v343;
  v345 = v344 ^ v329;
  v346 = *(v14 + 4 * (563 * (v344 ^ v329) + 289382 - ((5556232 * (563 * (v344 ^ v329) + 289382)) >> 32) * v250));
  v347 = LODWORD(STACK[0x3408]) ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v345) + 289382 - ((5556232 * (563 * HIBYTE(v345) + 289382)) >> 32) * v250)), 8);
  LODWORD(STACK[0x52C0]) = v341 ^ v338;
  v348 = v347 ^ v346 ^ v341 ^ v338 ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v345) + 289382 - ((5556232 * (563 * BYTE1(v345) + 289382)) >> 32) * v250)), 24) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v345) + 289382 - ((5556232 * (563 * BYTE2(v345) + 289382)) >> 32) * v250)), 16);
  v349 = v341 ^ v336;
  v350 = v343 ^ v329;
  LODWORD(STACK[0x52B8]) = v343 ^ v329;
  v351 = v349;
  LODWORD(STACK[0x5280]) = v349;
  v352 = v349 ^ v320 ^ v348;
  LODWORD(STACK[0x52C8]) = v352;
  LODWORD(STACK[0x5268]) = v348;
  v353 = v352 ^ v350;
  v354 = v353 ^ v344;
  v355 = v353 ^ v313;
  v356 = v355 & 0x80;
  v357 = v355 & 0xFFFFFF7F;
  if ((v356 & STACK[0x38B0]) != 0)
  {
    v356 = -v356;
  }

  v358 = (v356 + v329) ^ v357;
  LODWORD(STACK[0x52A0]) = v358;
  v359 = LODWORD(STACK[0x3400]) ^ __ROR4__(*(v14 + 4 * (563 * BYTE1(v354) + 289382 - ((5556232 * (563 * BYTE1(v354) + 289382)) >> 32) * v250)), 24) ^ *(v14 + 4 * (563 * v354 + 289382 - ((5556232 * (563 * v354 + 289382)) >> 32) * v250)) ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v354) + 289382 - ((5556232 * (563 * HIBYTE(v354) + 289382)) >> 32) * v250)), 8) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v354) + 289382 - ((5556232 * (563 * BYTE2(v354) + 289382)) >> 32) * v250)), 16);
  LODWORD(STACK[0x52A8]) = v359 ^ v351;
  v360 = v359 ^ v351 ^ v320;
  v361 = v358 ^ v360;
  v362 = v354 ^ v313 ^ v358 ^ v360;
  v363 = v362 ^ v329;
  v364 = 563 * ((v362 ^ v329) >> 8) + 289382;
  v365 = 563 * ((v362 ^ v329) >> 16) + 289382;
  v366 = LODWORD(STACK[0x33F8]) ^ __ROR4__(*(v14 + 4 * (v364 - ((5556232 * v364) >> 32) * v250)), 24);
  v367 = __ROR4__(*(v14 + 4 * (v365 - ((5556232 * v365) >> 32) * v250)), 16);
  LODWORD(STACK[0x5270]) = v359 ^ v348;
  v368 = v366 ^ v367 ^ *(v14 + 4 * (563 * (v362 ^ v329) + 289382 - ((5556232 * (563 * (v362 ^ v329) + 289382)) >> 32) * v250)) ^ v359 ^ v348 ^ __ROR4__(*(v14 + 4 * (563 * ((v362 ^ v329) >> 24) + 289382 - ((5556232 * (563 * ((v362 ^ v329) >> 24) + 289382)) >> 32) * v250)), 8);
  LODWORD(STACK[0x5278]) = v361 ^ v329;
  LODWORD(STACK[0x5290]) = v368 ^ v360;
  v369 = v361 ^ v329 ^ v368 ^ v360;
  LODWORD(STACK[0x5288]) = v369;
  v370 = v369 ^ v362;
  v371 = 563 * ((v369 ^ v362) >> 8) + 289382;
  LODWORD(STACK[0x5260]) = LODWORD(STACK[0x33F0]) ^ __ROR4__(*(v14 + 4 * (v371 - ((5556232 * v371) >> 32) * v250)), 24) ^ *(v14 + 4 * (563 * v370 + 289382 - ((5556232 * (563 * v370 + 289382)) >> 32) * v250)) ^ __ROR4__(*(v14 + 4 * (563 * BYTE2(v370) + 289382 - ((5556232 * (563 * BYTE2(v370) + 289382)) >> 32) * v250)), 16) ^ __ROR4__(*(v14 + 4 * (563 * HIBYTE(v370) + 289382 - ((5556232 * (563 * HIBYTE(v370) + 289382)) >> 32) * v250)), 8);
  v372 = STACK[0x5420];
  LODWORD(STACK[0x5550]) = v315 ^ LODWORD(STACK[0x326C]) ^ (LODWORD(STACK[0x5310]) + LODWORD(STACK[0x5420]));
  v373 = LODWORD(STACK[0x3288]) ^ LODWORD(STACK[0x4E24]) ^ LODWORD(STACK[0x57C0]);
  v374 = STACK[0x5330];
  LODWORD(STACK[0x57C0]) = (LODWORD(STACK[0x5330]) | v372) ^ LODWORD(STACK[0x33D0]) ^ LODWORD(STACK[0x5308]);
  v375 = STACK[0x5328];
  LODWORD(STACK[0x5320]) ^= LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x327C]) ^ LODWORD(STACK[0x5328]);
  v376 = STACK[0x5348];
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x3274]) ^ v329 ^ LODWORD(STACK[0x5400]) ^ (LODWORD(STACK[0x5348]) + v375);
  v377 = STACK[0x5318];
  LODWORD(STACK[0x53E8]) ^= LODWORD(STACK[0x3268]) ^ v329 ^ (v375 + LODWORD(STACK[0x5318]));
  v378 = STACK[0x5358];
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x5358]) ^ LODWORD(STACK[0x33D8]) ^ v372 ^ v316;
  v379 = STACK[0x5368];
  v380 = v374 ^ LODWORD(STACK[0x33B8]) ^ LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x5400]) = LODWORD(STACK[0x3264]) ^ LODWORD(STACK[0x5258]) ^ LODWORD(STACK[0x53B0]);
  v381 = STACK[0x5338];
  LODWORD(STACK[0x53D8]) = v378 ^ LODWORD(STACK[0x33B0]) ^ LODWORD(STACK[0x5338]) ^ LODWORD(STACK[0x53F8]);
  LODWORD(STACK[0x53F8]) = LODWORD(STACK[0x3214]) ^ LODWORD(STACK[0x53F0]) ^ LODWORD(STACK[0x5380]);
  v382 = STACK[0x5340];
  LODWORD(STACK[0x53F0]) = LODWORD(STACK[0x3238]) ^ v377 ^ LODWORD(STACK[0x5340]) ^ v323;
  v383 = STACK[0x5360];
  v384 = STACK[0x5378];
  LODWORD(STACK[0x5308]) = v373 ^ (STACK[0x5360] | LODWORD(STACK[0x5378]));
  LODWORD(STACK[0x5380]) = (v383 | v384) ^ LODWORD(STACK[0x32E0]) ^ LODWORD(STACK[0x52D8]);
  v385 = LODWORD(STACK[0x5390]) ^ LODWORD(STACK[0x3260]) ^ LODWORD(STACK[0x52F8]);
  LODWORD(STACK[0x5390]) ^= LODWORD(STACK[0x3390]) ^ LODWORD(STACK[0x52F0]);
  v386 = STACK[0x53A0];
  LODWORD(STACK[0x53B0]) = LODWORD(STACK[0x53A0]) ^ LODWORD(STACK[0x325C]) ^ v326;
  LODWORD(STACK[0x52F0]) = LODWORD(STACK[0x3258]) ^ LODWORD(STACK[0x5298]) ^ v386;
  v387 = STACK[0x5540];
  v388 = STACK[0x5350];
  v389 = LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x3278]) ^ (LODWORD(STACK[0x5540]) | LODWORD(STACK[0x5350]));
  LODWORD(STACK[0x52D8]) = (LODWORD(STACK[0x5540]) | LODWORD(STACK[0x5350])) ^ LODWORD(STACK[0x33A0]) ^ v331;
  v390 = STACK[0x5410] & 0xAFAF1CFC ^ STACK[0x5530] & 0xAFAF1CFD | STACK[0x53E0] & 0x5050E302;
  LODWORD(STACK[0x5570]) = (v378 + v372) ^ LODWORD(STACK[0x31E0]) ^ LODWORD(STACK[0x52B0]);
  v391 = ((v390 & STACK[0x4E34]) << STACK[0x5228]) | ((v390 & STACK[0x5240]) >> STACK[0x5230]);
  LODWORD(STACK[0x53E0]) = (v383 + v375) ^ LODWORD(STACK[0x33E8]) ^ LODWORD(STACK[0x52D0]);
  v392 = LODWORD(STACK[0x32B8]) ^ v384 ^ LODWORD(STACK[0x5280]);
  LODWORD(STACK[0x52F8]) = v340 ^ v391 ^ STACK[0x3388];
  v393 = v387;
  LODWORD(STACK[0x5410]) = (v388 + v387) ^ LODWORD(STACK[0x3360]) ^ LODWORD(STACK[0x52C0]);
  LODWORD(STACK[0x5328]) = LODWORD(STACK[0x3254]) ^ v329 ^ LODWORD(STACK[0x5300]) ^ (v377 | v375);
  LODWORD(STACK[0x53A0]) = (v381 | v387) ^ LODWORD(STACK[0x32B4]) ^ LODWORD(STACK[0x52B8]);
  v394 = v382 ^ LODWORD(STACK[0x3368]) ^ v345;
  LODWORD(STACK[0x5338]) = (v379 + v374) ^ LODWORD(STACK[0x3350]) ^ LODWORD(STACK[0x5268]);
  v395 = STACK[0x5370];
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x324C]) ^ v329 ^ LODWORD(STACK[0x52C8]) ^ (STACK[0x5370] | v376);
  LODWORD(STACK[0x5388]) ^= LODWORD(STACK[0x4E08]) ^ LODWORD(STACK[0x52A0]);
  LODWORD(STACK[0x5300]) = LODWORD(STACK[0x5270]) ^ (v393 | v372);
  v396 = STACK[0x52A8];
  v397 = LODWORD(STACK[0x53A8]) ^ v329 ^ LODWORD(STACK[0x52A8]);
  LODWORD(STACK[0x5420]) = LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x3250]) ^ v354;
  LODWORD(STACK[0x5330]) = v363 ^ (v377 + v384);
  LODWORD(STACK[0x52D0]) = LODWORD(STACK[0x5278]) ^ (v388 + v378);
  LODWORD(STACK[0x53A8]) = v392 ^ v383;
  LODWORD(STACK[0x5398]) = v394 ^ v383;
  v398 = v393 + v379;
  v399 = LODWORD(STACK[0x3218]) ^ LODWORD(STACK[0x5408]) ^ LODWORD(STACK[0x53B8]);
  v400 = LODWORD(STACK[0x38C0]) ^ v329 ^ LODWORD(STACK[0x53B8]);
  v401 = LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x3B1C]);
  v402 = STACK[0x5260];
  v403 = LODWORD(STACK[0x5260]) ^ v396;
  v404 = LODWORD(STACK[0x4E20]) ^ STACK[0x4DE8] ^ (v383 | v395) ^ v401;
  v405 = v403 ^ LODWORD(STACK[0x5480]) ^ v401;
  LODWORD(STACK[0x5370]) = LODWORD(STACK[0x3210]) ^ v388 ^ v378 ^ v403;
  v406 = LODWORD(STACK[0x53C0]) ^ LODWORD(STACK[0x3240]) ^ v368;
  v407 = LODWORD(STACK[0x3378]) ^ v377 ^ v384 ^ v368 ^ v402;
  v408 = LODWORD(STACK[0x3330]) ^ LODWORD(STACK[0x53C8]) ^ LODWORD(STACK[0x5290]);
  v409 = v398 ^ LODWORD(STACK[0x3338]) ^ v370;
  v410 = v400 ^ v405;
  v411 = LODWORD(STACK[0x3230]) ^ LODWORD(STACK[0x53D0]) ^ v370 ^ v405;
  v412 = ((v407 ^ v385) - 2000593834) ^ v380;
  v413 = ((((v407 ^ v385) + 86) ^ v380) & 1) == 0;
  LODWORD(STACK[0x5340]) = v412;
  *(v22 - 152) = v412;
  v414 = STACK[0x5550];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v415 = STACK[0x5550];
  }

  else
  {
    v415 = v389;
  }

  v416 = STACK[0x5320];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v414 = STACK[0x5320];
  }

  LODWORD(STACK[0x5550]) = v414;
  v417 = STACK[0x5308];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v418 = v389;
  }

  else
  {
    v418 = STACK[0x5308];
  }

  LODWORD(STACK[0x5540]) = v418;
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v419 = v417;
  }

  else
  {
    v419 = v416;
  }

  v420 = STACK[0x53E8];
  v421 = STACK[0x5310];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v422 = STACK[0x5310];
  }

  else
  {
    v422 = STACK[0x53E8];
  }

  v423 = STACK[0x57C0];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v421 = STACK[0x57C0];
  }

  LODWORD(STACK[0x53D0]) = v421;
  v424 = STACK[0x5560];
  if (((((v407 ^ v385) + 86) ^ v380) & 1) == 0)
  {
    v420 = STACK[0x5560];
  }

  LODWORD(STACK[0x53B8]) = v420;
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v425 = v424;
  }

  else
  {
    v425 = v423;
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v426 = STACK[0x52D8];
  }

  else
  {
    v426 = STACK[0x5380];
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v427 = STACK[0x5390];
  }

  else
  {
    v427 = STACK[0x52D8];
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v428 = STACK[0x52F0];
  }

  else
  {
    v428 = STACK[0x5390];
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v429 = STACK[0x5380];
  }

  else
  {
    v429 = STACK[0x52F0];
  }

  v430 = STACK[0x53F0];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v431 = v380;
  }

  else
  {
    v431 = STACK[0x53F0];
  }

  LODWORD(STACK[0x5368]) = v431;
  v432 = STACK[0x53D8];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v433 = v430;
  }

  else
  {
    v433 = STACK[0x53D8];
  }

  if (((((v407 ^ v385) + 86) ^ v380) & 1) == 0)
  {
    v432 = v399;
  }

  LODWORD(STACK[0x52F0]) = v432;
  if (((((v407 ^ v385) + 86) ^ v380) & 1) == 0)
  {
    v399 = v380;
  }

  v434 = STACK[0x5400];
  v435 = STACK[0x53B0];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v436 = STACK[0x5400];
  }

  else
  {
    v436 = STACK[0x53B0];
  }

  LODWORD(STACK[0x53D8]) = v436;
  v437 = STACK[0x53F8];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v434 = STACK[0x53F8];
  }

  LODWORD(STACK[0x5350]) = v434;
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v438 = v385;
  }

  else
  {
    v438 = v437;
  }

  LODWORD(STACK[0x52D8]) = v438;
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v439 = v435;
  }

  else
  {
    v439 = v385;
  }

  LODWORD(STACK[0x52C8]) = v439;
  v440 = STACK[0x5300];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v441 = v397;
  }

  else
  {
    v441 = STACK[0x5300];
  }

  LODWORD(STACK[0x53F8]) = v441;
  v442 = STACK[0x52D0];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v443 = STACK[0x52D0];
  }

  else
  {
    v443 = v397;
  }

  LODWORD(STACK[0x57C0]) = v443;
  v444 = STACK[0x5330];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v445 = v440;
  }

  else
  {
    v445 = STACK[0x5330];
  }

  LODWORD(STACK[0x53F0]) = v445;
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v446 = v444;
  }

  else
  {
    v446 = v442;
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v447 = STACK[0x52F8];
  }

  else
  {
    v447 = STACK[0x53E0];
  }

  v448 = STACK[0x5328];
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v449 = STACK[0x53E0];
  }

  else
  {
    v449 = STACK[0x5328];
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v450 = STACK[0x5570];
  }

  else
  {
    v450 = STACK[0x52F8];
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v451 = v404;
  }

  else
  {
    v448 = STACK[0x5570];
    v451 = v408;
  }

  LODWORD(STACK[0x5408]) = v451;
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v452 = v409;
  }

  else
  {
    v452 = v404;
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v453 = v408;
  }

  else
  {
    v453 = v406;
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v454 = v406;
  }

  else
  {
    v454 = v409;
  }

  LODWORD(STACK[0x5400]) = v454;
  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v455 = v411;
  }

  else
  {
    v455 = v410;
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v456 = v407;
  }

  else
  {
    v456 = v411;
  }

  if ((((v407 ^ v385) + 86) ^ v380))
  {
    v457 = STACK[0x5370];
  }

  else
  {
    v457 = v407;
  }

  if (v412)
  {
    v458 = v410;
  }

  else
  {
    v458 = STACK[0x5370];
  }

  v459 = STACK[0x53A0];
  v460 = STACK[0x53A8];
  if (v412)
  {
    v461 = STACK[0x53A0];
  }

  else
  {
    v461 = STACK[0x53A8];
  }

  v462 = STACK[0x5398];
  if (v412)
  {
    v459 = STACK[0x5398];
  }

  LODWORD(STACK[0x5300]) = v459;
  if (v412)
  {
    v462 = STACK[0x5410];
    v463 = v460;
  }

  else
  {
    v463 = STACK[0x5410];
  }

  v464 = STACK[0x5388];
  v465 = STACK[0x5420];
  if (v412)
  {
    v466 = STACK[0x5420];
  }

  else
  {
    v466 = STACK[0x5388];
  }

  v467 = STACK[0x5338];
  if (v412)
  {
    v465 = STACK[0x5338];
  }

  LODWORD(STACK[0x53A0]) = v465;
  v468 = *(v22 - 152);
  if (v413)
  {
    v464 = STACK[0x5348];
  }

  else
  {
    v467 = STACK[0x5348];
  }

  LODWORD(STACK[0x5348]) = v464;
  v469 = (v468 & 2) == 0;
  if ((v468 & 2) != 0)
  {
    v470 = v429;
  }

  else
  {
    v470 = v427;
  }

  LODWORD(STACK[0x5398]) = v470;
  if ((v468 & 2) != 0)
  {
    v429 = v427;
  }

  LODWORD(STACK[0x51E0]) = v429;
  if ((v468 & 2) != 0)
  {
    v471 = v428;
  }

  else
  {
    v471 = v426;
  }

  LODWORD(STACK[0x53E8]) = v471;
  if ((v468 & 2) != 0)
  {
    v472 = v426;
  }

  else
  {
    v472 = v428;
  }

  LODWORD(STACK[0x5390]) = v472;
  if ((v468 & 2) != 0)
  {
    v473 = v419;
  }

  else
  {
    v473 = v415;
  }

  LODWORD(STACK[0x5360]) = v473;
  if ((v468 & 2) != 0)
  {
    v474 = v415;
  }

  else
  {
    v474 = v419;
  }

  LODWORD(STACK[0x5410]) = v474;
  if ((v468 & 2) != 0)
  {
    v475 = v422;
  }

  else
  {
    v475 = v425;
  }

  LODWORD(STACK[0x5308]) = v475;
  if ((v468 & 2) != 0)
  {
    v476 = v425;
  }

  else
  {
    v476 = v422;
  }

  LODWORD(STACK[0x5380]) = v476;
  if ((v468 & 2) != 0)
  {
    v477 = v466;
  }

  else
  {
    v477 = v467;
  }

  LODWORD(STACK[0x5378]) = v477;
  if ((v468 & 2) == 0)
  {
    v467 = v466;
  }

  LODWORD(STACK[0x5560]) = v467;
  if ((v468 & 2) != 0)
  {
    v478 = v462;
  }

  else
  {
    v478 = v461;
  }

  LODWORD(STACK[0x5328]) = v478;
  if ((v468 & 2) != 0)
  {
    v479 = v461;
  }

  else
  {
    v479 = v462;
  }

  LODWORD(STACK[0x53E0]) = v479;
  if ((v468 & 2) != 0)
  {
    v480 = v449;
  }

  else
  {
    v480 = v450;
  }

  LODWORD(STACK[0x51D8]) = v480;
  if ((v468 & 2) != 0)
  {
    v481 = v450;
  }

  else
  {
    v481 = v449;
  }

  LODWORD(STACK[0x51D0]) = v481;
  if ((v468 & 2) != 0)
  {
    v482 = v399;
  }

  else
  {
    v482 = v433;
  }

  LODWORD(STACK[0x5310]) = v482;
  if ((v468 & 2) != 0)
  {
    v483 = v433;
  }

  else
  {
    v483 = v399;
  }

  LODWORD(STACK[0x5318]) = v483;
  v484 = STACK[0x5550];
  v485 = STACK[0x5540];
  if ((v468 & 2) != 0)
  {
    v486 = STACK[0x5550];
  }

  else
  {
    v486 = STACK[0x5540];
  }

  LODWORD(STACK[0x53C8]) = v486;
  if ((v468 & 2) != 0)
  {
    v487 = v485;
  }

  else
  {
    v487 = v484;
  }

  LODWORD(STACK[0x5358]) = v487;
  if ((v468 & 2) != 0)
  {
    v488 = v448;
  }

  else
  {
    v488 = v447;
  }

  LODWORD(STACK[0x5320]) = v488;
  if ((v468 & 2) != 0)
  {
    v489 = v447;
  }

  else
  {
    v489 = v448;
  }

  LODWORD(STACK[0x51C0]) = v489;
  v490 = STACK[0x53D0];
  v491 = STACK[0x53B8];
  if ((v468 & 2) != 0)
  {
    v492 = STACK[0x53B8];
  }

  else
  {
    v492 = STACK[0x53D0];
  }

  LODWORD(STACK[0x53C0]) = v492;
  if ((v468 & 2) != 0)
  {
    v493 = v490;
  }

  else
  {
    v493 = v491;
  }

  LODWORD(STACK[0x5370]) = v493;
  v494 = STACK[0x5368];
  v495 = STACK[0x52F0];
  if ((v468 & 2) != 0)
  {
    v496 = STACK[0x52F0];
  }

  else
  {
    v496 = STACK[0x5368];
  }

  LODWORD(STACK[0x5388]) = v496;
  if ((v468 & 2) != 0)
  {
    v497 = v494;
  }

  else
  {
    v497 = v495;
  }

  LODWORD(STACK[0x53B8]) = v497;
  if ((v468 & 2) != 0)
  {
    v498 = v453;
  }

  else
  {
    v498 = v452;
  }

  LODWORD(STACK[0x5368]) = v498;
  if ((v468 & 2) != 0)
  {
    v499 = v452;
  }

  else
  {
    v499 = v453;
  }

  LODWORD(STACK[0x5550]) = v499;
  v500 = STACK[0x53D8];
  v501 = STACK[0x52D8];
  if ((v468 & 2) != 0)
  {
    v502 = STACK[0x52D8];
  }

  else
  {
    v502 = STACK[0x53D8];
  }

  LODWORD(STACK[0x5330]) = v502;
  if ((v468 & 2) != 0)
  {
    v503 = v500;
  }

  else
  {
    v503 = v501;
  }

  LODWORD(STACK[0x5420]) = v503;
  v504 = STACK[0x5350];
  v505 = STACK[0x52C8];
  if ((v468 & 2) != 0)
  {
    v506 = STACK[0x52C8];
  }

  else
  {
    v506 = STACK[0x5350];
  }

  LODWORD(STACK[0x53B0]) = v506;
  if ((v468 & 2) != 0)
  {
    v507 = v504;
  }

  else
  {
    v507 = v505;
  }

  LODWORD(STACK[0x5570]) = v507;
  if ((v468 & 2) != 0)
  {
    v508 = v458;
  }

  else
  {
    v508 = v456;
  }

  LODWORD(STACK[0x53D8]) = v508;
  if ((v468 & 2) != 0)
  {
    v509 = v456;
  }

  else
  {
    v509 = v458;
  }

  LODWORD(STACK[0x51C8]) = v509;
  v510 = LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x5510]) ^ LODWORD(STACK[0x55E0]);
  v511 = STACK[0x53F8];
  if ((v468 & 2) != 0)
  {
    v512 = v446;
  }

  else
  {
    v512 = STACK[0x53F8];
  }

  LODWORD(STACK[0x5540]) = v512;
  if ((v468 & 2) == 0)
  {
    v511 = v446;
  }

  LODWORD(STACK[0x51A8]) = v511;
  v513 = STACK[0x5450];
  v514 = v510 ^ LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x5450]) ^ LODWORD(STACK[0x5780]);
  if ((v468 & 2) != 0)
  {
    v515 = v455;
  }

  else
  {
    v515 = v457;
  }

  LODWORD(STACK[0x51A0]) = v515;
  if ((v468 & 2) != 0)
  {
    v516 = v457;
  }

  else
  {
    v516 = v455;
  }

  LODWORD(STACK[0x53D0]) = v516;
  v517 = STACK[0x5600];
  v518 = STACK[0x5580];
  v519 = STACK[0x55F0];
  v520 = STACK[0x5590];
  v521 = STACK[0x5630];
  v522 = STACK[0x55B0];
  v523 = STACK[0x5670];
  v524 = v514 ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x54C0]) ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5740]);
  v525 = STACK[0x5300];
  if ((v468 & 2) != 0)
  {
    v526 = v463;
  }

  else
  {
    v526 = STACK[0x5300];
  }

  LODWORD(STACK[0x5338]) = v526;
  if ((v468 & 2) == 0)
  {
    v525 = v463;
  }

  LODWORD(STACK[0x5350]) = v525;
  v527 = STACK[0x5660];
  v528 = STACK[0x5430];
  v529 = STACK[0x54F0];
  v530 = STACK[0x5440];
  v531 = STACK[0x55A0];
  v532 = v524 ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x5440]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x55A0]);
  v533 = STACK[0x57C0];
  v534 = STACK[0x53F0];
  if ((v468 & 2) != 0)
  {
    v535 = STACK[0x53F0];
  }

  else
  {
    v535 = STACK[0x57C0];
  }

  LODWORD(STACK[0x53F8]) = v535;
  if ((v468 & 2) == 0)
  {
    v533 = v534;
  }

  LODWORD(STACK[0x53A8]) = v533;
  v536 = STACK[0x5680];
  v537 = STACK[0x55C0];
  v538 = STACK[0x5620];
  v539 = STACK[0x5640];
  v540 = v532 ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x55D0]);
  v541 = STACK[0x5460];
  v542 = STACK[0x5650];
  v543 = STACK[0x54A0];
  v544 = v540 ^ LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x5460]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x54A0]);
  v545 = STACK[0x53A0];
  if ((v468 & 2) != 0)
  {
    v546 = STACK[0x5348];
  }

  else
  {
    v546 = STACK[0x53A0];
  }

  if ((v468 & 2) == 0)
  {
    v545 = STACK[0x5348];
  }

  LODWORD(STACK[0x5348]) = v545;
  v547 = STACK[0x5500];
  v548 = STACK[0x54E0];
  v549 = STACK[0x54B0];
  LODWORD(STACK[0x53A0]) = v544 ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5500]) ^ LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x54B0]);
  v550 = LODWORD(STACK[0x5560]) - (v528 + v519);
  v551 = STACK[0x5338];
  v552 = v529;
  v553 = (((LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x53E0]) ^ (((v550 + LODWORD(STACK[0x5338]) + 1058080046) ^ LODWORD(STACK[0x5570])) - v529)) - v549) ^ v518) + v537;
  v554 = STACK[0x5308];
  LODWORD(STACK[0x5188]) = v546;
  v555 = STACK[0x5328];
  v556 = ((v546 ^ v542 ^ LODWORD(STACK[0x5328]) ^ ((v538 ^ v520 ^ v554 ^ v553) - v515)) + LODWORD(STACK[0x5540])) ^ LODWORD(STACK[0x53D0]);
  v557 = STACK[0x5340];
  v558 = STACK[0x55E0];
  v559 = STACK[0x5368];
  v560 = v543;
  v561 = LODWORD(STACK[0x5368]) ^ v543 ^ (v530 - (LODWORD(STACK[0x55E0]) + v521) + v535 + ((v547 - v517 - (v536 + v531) + LODWORD(STACK[0x5340]) + v556) ^ v539));
  v562 = STACK[0x54C0];
  v563 = STACK[0x56D0];
  v564 = LODWORD(STACK[0x54C0]) + v513 + LODWORD(STACK[0x56D0]) + v527 - v541 - v523 - LODWORD(STACK[0x53A8]) + LODWORD(STACK[0x53B8]) + v561;
  v565 = STACK[0x5310];
  LODWORD(STACK[0x52F8]) = LODWORD(STACK[0x5310]) - 1561441168;
  v566 = (v522 ^ 0xED34A567) - (v565 - 1561441168);
  LODWORD(STACK[0x52C8]) = v566;
  v567 = STACK[0x5318];
  v568 = LODWORD(STACK[0x5318]) + 319162020 + v566;
  LODWORD(STACK[0x5260]) = v568;
  v569 = v559 - v568 + 1246717712;
  LODWORD(STACK[0x52A8]) = v569;
  v570 = STACK[0x54D0];
  v571 = LODWORD(STACK[0x54D0]) ^ 0x2F89E14E ^ v569;
  LODWORD(STACK[0x5300]) = v571;
  v572 = STACK[0x5408];
  if (!v469)
  {
    v572 = STACK[0x5400];
  }

  LODWORD(STACK[0x5198]) = v572;
  v573 = v572 - v571 - 89929928;
  LODWORD(STACK[0x52D0]) = v573;
  v574 = v548;
  v575 = STACK[0x5320];
  v576 = LODWORD(STACK[0x5320]) - 1944000068 + v573;
  LODWORD(STACK[0x52B8]) = v576;
  LODWORD(STACK[0x5280]) = v557 - v576;
  v577 = v557 - v576 + 164785836;
  LODWORD(STACK[0x5208]) = v577;
  v578 = STACK[0x5510];
  v579 = (LODWORD(STACK[0x5510]) ^ 0x9163DEC4) - v577;
  LODWORD(STACK[0x5258]) = v579;
  v580 = v579 ^ (v548 + 521939398);
  LODWORD(STACK[0x52F0]) = v580;
  v581 = v558 - 1526555193 - v580;
  LODWORD(STACK[0x52C0]) = v581;
  v582 = v552 - 728411811 + v581 + 2228;
  LODWORD(STACK[0x57C0]) = v582;
  v583 = STACK[0x5530];
  v584 = LODWORD(STACK[0x5530]) - 2103402147 + v582;
  LODWORD(STACK[0x5210]) = v584;
  v585 = v546 + 1294057677 + v584;
  LODWORD(STACK[0x5290]) = v585;
  v586 = v551 - v585 + 936443204;
  LODWORD(STACK[0x52D8]) = v586;
  v587 = v557;
  v588 = v557 - v586 + 1520396263;
  LODWORD(STACK[0x5298]) = v588;
  v589 = STACK[0x5330];
  v590 = LODWORD(STACK[0x5330]) - 454745343 + v588 + 766;
  LODWORD(STACK[0x5278]) = v590;
  v591 = v555 + 858899682 + v590;
  LODWORD(STACK[0x52A0]) = v591;
  v592 = STACK[0x5430];
  v593 = LODWORD(STACK[0x5430]) ^ 0x461D60E7 ^ v591;
  LODWORD(STACK[0x52B0]) = v593;
  v594 = v560 - v593 + 1694413912;
  LODWORD(STACK[0x5288]) = v594;
  v595 = STACK[0x5360];
  v596 = LODWORD(STACK[0x5360]) + 155608088 + v594;
  LODWORD(STACK[0x5268]) = v596;
  v597 = v562 - v596 - 1044115120;
  LODWORD(STACK[0x5250]) = v597;
  v598 = STACK[0x5720];
  v599 = STACK[0x5348];
  v600 = STACK[0x5358];
  v601 = v583;
  v602 = STACK[0x5388];
  v603 = LODWORD(STACK[0x5358]) + v583 + LODWORD(STACK[0x5388]) + ((v557 + LODWORD(STACK[0x5720]) + LODWORD(STACK[0x5550]) - LODWORD(STACK[0x5348]) + (v564 ^ v567)) ^ v589);
  v604 = STACK[0x5378];
  v605 = STACK[0x56C0];
  v606 = STACK[0x5380];
  v607 = LODWORD(STACK[0x5378]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5380]) ^ v565 ^ ((v603 ^ v574) + v575);
  v608 = STACK[0x56F0];
  v609 = STACK[0x5390];
  v610 = STACK[0x5710];
  v611 = v570;
  v612 = v570 - LODWORD(STACK[0x5710]) + ((v607 + LODWORD(STACK[0x56F0])) ^ LODWORD(STACK[0x5390]));
  v613 = LODWORD(STACK[0x53A0]) ^ 0x866FDC49;
  LODWORD(STACK[0x51B0]) = v613;
  v614 = STACK[0x56E0];
  v615 = STACK[0x5398];
  LODWORD(STACK[0x5190]) = v578 - LODWORD(STACK[0x56E0]) + LODWORD(STACK[0x5398]) + (v612 ^ v613);
  v616 = v597 ^ (v554 - 1400643100);
  LODWORD(STACK[0x51F8]) = v616;
  v617 = STACK[0x5370];
  v618 = LODWORD(STACK[0x5370]) - v616 + 1103158863;
  LODWORD(STACK[0x5248]) = v618;
  v619 = STACK[0x5730];
  v620 = LODWORD(STACK[0x5730]) + 433525726 + v618;
  LODWORD(STACK[0x5200]) = v620;
  v621 = STACK[0x5350];
  v622 = LODWORD(STACK[0x5350]) ^ 0xB0D167DC ^ v620;
  LODWORD(STACK[0x5270]) = v622;
  v623 = STACK[0x5440];
  LODWORD(STACK[0x53F0]) = LODWORD(STACK[0x5440]) - v622 + 1892697261;
  v624 = v601 ^ 0x866FDC49 ^ LODWORD(STACK[0x5610]) ^ v563 ^ v578;
  v625 = STACK[0x5450];
  LODWORD(STACK[0x5180]) = LODWORD(STACK[0x5450]) + 1449794810;
  v626 = STACK[0x5740];
  v627 = LODWORD(STACK[0x55D0]) ^ v611 ^ v619 ^ LODWORD(STACK[0x5790]);
  v628 = STACK[0x5460];
  v629 = STACK[0x5520];
  v630 = v624 ^ LODWORD(STACK[0x55E0]) ^ v598 ^ v625 ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5630]) ^ v562 ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5660]) ^ v592 ^ LODWORD(STACK[0x54F0]) ^ v623 ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x55C0]) ^ v610 ^ LODWORD(STACK[0x5620]) ^ v608 ^ LODWORD(STACK[0x5640]) ^ v627 ^ LODWORD(STACK[0x5460]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5520]);
  v631 = STACK[0x5750];
  v632 = STACK[0x5500];
  v633 = STACK[0x54B0];
  v634 = STACK[0x53C0];
  v635 = STACK[0x53B8];
  v636 = v630 ^ LODWORD(STACK[0x54A0]) ^ v605 ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5500]) ^ v614 ^ LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x54B0]) ^ v587 ^ LODWORD(STACK[0x53C8]) ^ v595 ^ v600 ^ LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x5308]) ^ v617 ^ v606 ^ LODWORD(STACK[0x53C0]) ^ LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x53B8]);
  v637 = STACK[0x53B0];
  v638 = LODWORD(STACK[0x5310]) ^ v602 ^ LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x5330]) ^ v609;
  v639 = STACK[0x51E0];
  v640 = STACK[0x53E8];
  v641 = STACK[0x51C0];
  v642 = STACK[0x51D0];
  v643 = STACK[0x51D8];
  v644 = STACK[0x53E0];
  v645 = v636 ^ v638 ^ LODWORD(STACK[0x51E0]) ^ LODWORD(STACK[0x53E8]) ^ v615 ^ LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x5320]) ^ LODWORD(STACK[0x51D8]) ^ v621 ^ LODWORD(STACK[0x5328]) ^ LODWORD(STACK[0x5338]) ^ LODWORD(STACK[0x53E0]) ^ v604 ^ v599 ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x5188]) ^ LODWORD(STACK[0x5540]);
  v646 = STACK[0x51A8];
  v647 = STACK[0x53A8];
  v648 = LODWORD(STACK[0x53F8]) ^ LODWORD(STACK[0x51A8]) ^ LODWORD(STACK[0x53A8]) ^ LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x5198]) ^ LODWORD(STACK[0x5368]);
  v649 = STACK[0x5408];
  v650 = STACK[0x5400];
  if (v469)
  {
    v651 = STACK[0x5400];
  }

  else
  {
    v651 = STACK[0x5408];
  }

  LODWORD(STACK[0x5430]) = v651;
  v652 = STACK[0x51A0];
  v653 = STACK[0x51C8];
  v654 = STACK[0x53D0];
  v655 = (v645 ^ v648 ^ v651 ^ LODWORD(STACK[0x51A0]) ^ LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x53D0]) ^ LODWORD(STACK[0x53D8]) ^ LODWORD(STACK[0x53A0])) + 1221124932;
  v656 = LODWORD(STACK[0x53F0]) ^ (v629 - 1218820661);
  LODWORD(STACK[0x55E0]) = v656;
  v657 = v632 ^ 0xF1518299 ^ v656;
  LODWORD(STACK[0x54C0]) = v657;
  v658 = (v633 ^ 0xA50DAFED) - v657;
  LODWORD(STACK[0x5460]) = v658;
  v659 = (v653 ^ 0xAE6ECFDA) - v658;
  LODWORD(STACK[0x5530]) = v659;
  v660 = LODWORD(STACK[0x56E0]) ^ 0xF1950513;
  v661 = v659 + (v635 ^ 0x51E242D0);
  LODWORD(STACK[0x5450]) = v661;
  v662 = v661 + v660;
  LODWORD(STACK[0x54E0]) = v662;
  v663 = v628 + 651553675 + v662 + 2357;
  LODWORD(STACK[0x56E0]) = v663;
  v664 = v663 ^ (v643 - 41745332);
  LODWORD(STACK[0x54B0]) = v664;
  v665 = v655 ^ v664;
  LODWORD(STACK[0x5500]) = v665;
  v666 = v647 - v665 - 531948936;
  LODWORD(STACK[0x54A0]) = v666;
  v667 = v666 ^ (v644 + 1917310253);
  LODWORD(STACK[0x5510]) = v667;
  v668 = v667 + (v637 ^ 0x5907A0A6);
  LODWORD(STACK[0x54F0]) = v668;
  v669 = LODWORD(STACK[0x5580]) - v668 - 418661101;
  LODWORD(STACK[0x54D0]) = v669;
  v670 = (LODWORD(STACK[0x5360]) ^ v629 ^ v639 ^ (LODWORD(STACK[0x5370]) - (v631 + v641) + (v643 ^ v634 ^ LODWORD(STACK[0x5190])))) - v640;
  v671 = STACK[0x57A0];
  v672 = v642;
  v673 = v646;
  v674 = v646 - (v626 + v649 + v650) + LODWORD(STACK[0x5350]) + v653 + (LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x55B0]) ^ v642 ^ v670);
  v675 = LODWORD(STACK[0x5640]) + 1846508936;
  v676 = LODWORD(STACK[0x56D0]) - 1183696296;
  v677 = LODWORD(STACK[0x5600]) - 1108570421;
  v678 = STACK[0x5770];
  v679 = v669 ^ (LODWORD(STACK[0x5770]) - 915299488);
  LODWORD(STACK[0x5520]) = v679;
  v680 = v639 + 1581173382 + v679;
  LODWORD(STACK[0x56D0]) = v680;
  v681 = v680 ^ v677;
  LODWORD(STACK[0x55B0]) = v681;
  v682 = v681 ^ LODWORD(STACK[0x5180]);
  LODWORD(STACK[0x5640]) = v682;
  v683 = LODWORD(STACK[0x55F0]) - v682 - 1952144967;
  LODWORD(STACK[0x55F0]) = v683;
  v684 = (LODWORD(STACK[0x5358]) ^ 0x2149D76) - v683;
  LODWORD(STACK[0x5580]) = v684;
  v685 = v654 - v684 + 326017815;
  LODWORD(STACK[0x5408]) = v685;
  v686 = v685 ^ v676;
  v687 = v652 + 488455586 + (v685 ^ v676);
  v688 = STACK[0x5410];
  v689 = LODWORD(STACK[0x5410]) + 1075443217 + v687;
  LODWORD(STACK[0x5440]) = v689;
  v690 = v689 ^ (v641 - 707584296);
  LODWORD(STACK[0x5600]) = v690;
  v691 = LODWORD(STACK[0x55A0]) - v690 - 1954337177;
  v692 = STACK[0x53D8];
  v693 = LODWORD(STACK[0x53D8]) - 916401667 + v691;
  LODWORD(STACK[0x5400]) = v693;
  v694 = LODWORD(STACK[0x5550]) - v693 - 135830518;
  LODWORD(STACK[0x55A0]) = v694;
  v695 = STACK[0x5420];
  v696 = (LODWORD(STACK[0x5420]) ^ 0x51ACF5F8) - v694;
  v697 = LODWORD(STACK[0x53F8]) - v696 + 34837213;
  v698 = STACK[0x5790];
  v699 = STACK[0x53C8];
  LODWORD(STACK[0x5420]) = LODWORD(STACK[0x5398]) - 78237695;
  v700 = LODWORD(STACK[0x55C0]) + 1665974670;
  v701 = STACK[0x5780];
  v702 = STACK[0x5340];
  v703 = LODWORD(STACK[0x5340]) - LODWORD(STACK[0x5780]) + v692 + (((v674 ^ v698) + v699) ^ v695);
  v704 = LODWORD(STACK[0x5660]) + 1978804207;
  v705 = STACK[0x5610];
  v706 = STACK[0x55D0];
  v707 = LODWORD(STACK[0x5380]) + 237906477;
  LODWORD(STACK[0x55C0]) = v697 ^ v675;
  v708 = v705 - (v697 ^ v675) + 1469179906;
  LODWORD(STACK[0x5660]) = v708;
  v709 = LODWORD(STACK[0x5560]) - v708 + 1668634929;
  v710 = STACK[0x5760];
  v711 = (LODWORD(STACK[0x5760]) + LODWORD(STACK[0x5730]) + v688 + (v706 ^ v705 ^ v703)) ^ v678;
  v712 = LODWORD(STACK[0x5348]) + 545551911;
  v713 = (LODWORD(STACK[0x5630]) ^ 0xE5B29549) - v709;
  v714 = LODWORD(STACK[0x5670]) + 1422035813 + v713;
  LODWORD(STACK[0x5630]) = v714;
  v715 = v712 + v714;
  LODWORD(STACK[0x5730]) = v715;
  v716 = v715 ^ (v702 - 1407896409);
  v717 = LODWORD(STACK[0x5378]) ^ 0xE66683A8;
  v718 = (v706 ^ 0xEE9D4FC3) - v716;
  LODWORD(STACK[0x55D0]) = v718;
  v719 = v717 - v718;
  LODWORD(STACK[0x5670]) = v719;
  v720 = LODWORD(STACK[0x5430]) - v719 + 2145815498;
  LODWORD(STACK[0x5770]) = v720;
  v721 = LODWORD(STACK[0x5620]) + 396047553;
  v722 = LODWORD(STACK[0x51B0]) + 986352812;
  v723 = LODWORD(STACK[0x5650]) ^ 0x541BE7CF ^ v720;
  v724 = v672 - 2095973240 - v723;
  LODWORD(STACK[0x5550]) = v722 - v724;
  v725 = v721 + v722 - v724;
  v726 = v671 + 1451562795 - v725 + 2848;
  LODWORD(STACK[0x5620]) = v726;
  v727 = LODWORD(STACK[0x5710]) + 1914543927 + v726;
  v728 = v711 ^ 0x16A46F8F ^ v727;
  LODWORD(STACK[0x5710]) = v728;
  v729 = v728 ^ v704;
  v730 = v728 ^ v704 ^ (v673 - 97476166);
  LODWORD(STACK[0x5610]) = v730;
  v731 = LODWORD(STACK[0x5750]) - v730 - 1368987289;
  v732 = v731 ^ (LODWORD(STACK[0x53E8]) + 1766396432);
  LODWORD(STACK[0x5750]) = v732;
  v733 = v732 ^ LODWORD(STACK[0x5388]) ^ 0x5147CD3D;
  v734 = v733 ^ v707;
  v735 = v733 ^ v707 ^ v700;
  v736 = v699 - v735 - 1360794693;
  LODWORD(STACK[0x53D0]) = v736;
  v737 = v701 + 623885974 + v736;
  v738 = LODWORD(STACK[0x5390]) + 1989537906 + v737;
  LODWORD(STACK[0x5780]) = v738;
  v739 = v698 - v738 + 172172948;
  LODWORD(STACK[0x5358]) = v739;
  v740 = LODWORD(STACK[0x56F0]) - 1557157069;
  v741 = LODWORD(STACK[0x5590]) + 1305088451 - v739 + 1607;
  v742 = v741 + (LODWORD(STACK[0x5680]) ^ 0x9E1A9679);
  v743 = LODWORD(STACK[0x5720]) ^ 0x8D0A4B6E ^ v742;
  v744 = (LODWORD(STACK[0x5570]) ^ 0xBB91F040) - v743;
  v745 = LODWORD(STACK[0x5540]) - 1864515478 + v744;
  LODWORD(STACK[0x5790]) = v745;
  v746 = v745 ^ (v710 - 943048658);
  v747 = v746 ^ LODWORD(STACK[0x5420]);
  v748 = LODWORD(STACK[0x56C0]) - v747 - 1258614334;
  v749 = LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5208]);
  LODWORD(STACK[0x5720]) = v749;
  v750 = v733 + v749;
  LODWORD(STACK[0x56C0]) = v750;
  v751 = v687 - v750;
  LODWORD(STACK[0x5340]) = v751;
  v752 = v751 + LODWORD(STACK[0x5460]);
  LODWORD(STACK[0x5760]) = v752;
  v753 = LODWORD(STACK[0x53C0]) ^ 0x41B91B7D;
  LODWORD(STACK[0x53E8]) = v743 - v752;
  v754 = (v743 - v752) ^ LODWORD(STACK[0x5260]);
  LODWORD(STACK[0x5650]) = v754;
  v755 = v754 + LODWORD(STACK[0x5450]);
  LODWORD(STACK[0x56F0]) = v755;
  v756 = v753 - v748;
  v757 = (LODWORD(STACK[0x5740]) ^ 0xD5193A0B) - v756;
  LODWORD(STACK[0x53C8]) = v757 + v755;
  v758 = v757 + v755 + v727;
  LODWORD(STACK[0x5430]) = v758;
  v759 = v758 + v696;
  LODWORD(STACK[0x5460]) = v759;
  v760 = v691 - v759;
  LODWORD(STACK[0x5260]) = v760;
  v761 = v760 ^ v756;
  LODWORD(STACK[0x5570]) = v761;
  LODWORD(STACK[0x5540]) = v761 + v709;
  v762 = v761 + v709 + LODWORD(STACK[0x5210]);
  LODWORD(STACK[0x5740]) = v762;
  v763 = v762 ^ LODWORD(STACK[0x5258]);
  LODWORD(STACK[0x5420]) = v763;
  v764 = v763 + LODWORD(STACK[0x54B0]);
  LODWORD(STACK[0x5680]) = v764;
  v765 = v764 + v723;
  LODWORD(STACK[0x5410]) = v765;
  LODWORD(STACK[0x5560]) = v765 + v686;
  v766 = LODWORD(STACK[0x51F8]) - (v765 + v686);
  LODWORD(STACK[0x5450]) = v766;
  v767 = v766 ^ v697;
  v768 = LODWORD(STACK[0x54C0]) - (v766 ^ v697);
  LODWORD(STACK[0x53F8]) = v768;
  v769 = v729 - v768;
  v770 = v729 - v768 + LODWORD(STACK[0x5408]);
  LODWORD(STACK[0x5318]) = v770;
  v771 = v770 ^ LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x5590]) = v771;
  v772 = LODWORD(STACK[0x54A0]) - v771;
  LODWORD(STACK[0x57A0]) = v772;
  v773 = STACK[0x57C0];
  v774 = v742 - (v772 ^ LODWORD(STACK[0x57C0]));
  LODWORD(STACK[0x53E0]) = v774;
  v775 = v757 ^ v740;
  v776 = LODWORD(STACK[0x5280]) + 1889544523;
  LODWORD(STACK[0x53C0]) = v774 + v713;
  v777 = v747 - (v774 + v713);
  LODWORD(STACK[0x5280]) = v777;
  LODWORD(STACK[0x5258]) = v777 ^ v716;
  v778 = v777 ^ v716 ^ LODWORD(STACK[0x54E0]);
  LODWORD(STACK[0x53B0]) = v744 - v778;
  v779 = (v744 - v778) ^ v746;
  LODWORD(STACK[0x53A8]) = v779;
  v780 = v779 + v725;
  LODWORD(STACK[0x54A0]) = v780;
  v781 = v741 - v780;
  LODWORD(STACK[0x53B8]) = v781;
  v782 = v781 + v734;
  LODWORD(STACK[0x5398]) = v782;
  LODWORD(STACK[0x53D8]) = v735 - v782;
  v783 = v735 - v782 + LODWORD(STACK[0x52A8]);
  LODWORD(STACK[0x54C0]) = v783;
  v784 = LODWORD(STACK[0x5268]) - v783;
  v785 = v784 ^ LODWORD(STACK[0x5440]);
  LODWORD(STACK[0x54B0]) = v731 - v785;
  v786 = LODWORD(STACK[0x55D0]) - (v731 - v785);
  LODWORD(STACK[0x5390]) = v786;
  v787 = v786 + LODWORD(STACK[0x5200]);
  LODWORD(STACK[0x52A8]) = v787;
  v788 = LODWORD(STACK[0x52C8]) - v787;
  LODWORD(STACK[0x5388]) = v788;
  v789 = v788 + LODWORD(STACK[0x5278]);
  LODWORD(STACK[0x5368]) = v789;
  v790 = LODWORD(STACK[0x5290]) - v789;
  v791 = v790 + LODWORD(STACK[0x5520]);
  LODWORD(STACK[0x52C8]) = v791;
  v792 = v791 ^ v724;
  v793 = LODWORD(STACK[0x53F0]) - (v791 ^ v724);
  LODWORD(STACK[0x5380]) = v793;
  v794 = LODWORD(STACK[0x55A0]) - v793;
  LODWORD(STACK[0x5308]) = v794;
  v795 = v794 + LODWORD(STACK[0x52B8]);
  v796 = v795 ^ LODWORD(STACK[0x5250]);
  LODWORD(STACK[0x5360]) = v796;
  LODWORD(STACK[0x5328]) = v796 + v737;
  v797 = (v796 + v737) ^ LODWORD(STACK[0x54F0]);
  v798 = LODWORD(STACK[0x5550]) - v797;
  v799 = LODWORD(STACK[0x5630]) - v798;
  LODWORD(STACK[0x5408]) = v799;
  v800 = v776 + v799;
  v801 = v776 + v799 + LODWORD(STACK[0x54D0]);
  LODWORD(STACK[0x5378]) = v801;
  v802 = v801 ^ LODWORD(STACK[0x55C0]);
  v803 = v802 ^ LODWORD(STACK[0x5248]);
  v804 = LODWORD(STACK[0x5500]) - v803;
  LODWORD(STACK[0x53F0]) = v804;
  v805 = v804 + LODWORD(STACK[0x55B0]);
  v806 = v805 + LODWORD(STACK[0x52D0]);
  LODWORD(STACK[0x53A0]) = v806;
  v807 = LODWORD(STACK[0x5288]) - v806;
  LODWORD(STACK[0x5370]) = v807;
  v808 = v807 ^ LODWORD(STACK[0x5298]);
  v809 = LODWORD(STACK[0x5660]) - v808;
  LODWORD(STACK[0x52D0]) = v809;
  v810 = LODWORD(STACK[0x5358]) - v809;
  LODWORD(STACK[0x5550]) = v810;
  v811 = v810 ^ LODWORD(STACK[0x52C0]);
  LODWORD(STACK[0x5320]) = v811;
  v812 = LODWORD(STACK[0x5580]) - v811;
  v813 = v812 ^ LODWORD(STACK[0x5730]);
  v814 = v813 ^ LODWORD(STACK[0x5620]);
  LODWORD(STACK[0x5350]) = v814;
  v815 = v814 + LODWORD(STACK[0x5670]);
  v816 = v815 ^ LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x52C0]) = v816;
  LODWORD(STACK[0x52B8]) = v748 - v816;
  v817 = (v748 - v816) ^ LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x54F0]) = v817;
  v818 = v817 ^ LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x5330]) = v818;
  v819 = v818 ^ LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x5348]) = v819;
  v820 = v819 + LODWORD(STACK[0x52F8]);
  v821 = LODWORD(STACK[0x52F0]) - v820;
  LODWORD(STACK[0x5358]) = v821;
  v822 = v821 ^ LODWORD(STACK[0x52A0]);
  LODWORD(STACK[0x52F0]) = v822;
  v823 = LODWORD(STACK[0x5710]) ^ v822;
  LODWORD(STACK[0x5338]) = v823;
  v824 = v823 + LODWORD(STACK[0x5790]);
  v825 = v824 + LODWORD(STACK[0x5510]);
  LODWORD(STACK[0x52A0]) = v825;
  v826 = v825 + LODWORD(STACK[0x52B0]);
  LODWORD(STACK[0x5310]) = v826;
  v827 = v826 ^ LODWORD(STACK[0x55E0]);
  LODWORD(STACK[0x52F8]) = v827;
  v828 = v827 + v775;
  v829 = (v827 + v775) ^ LODWORD(STACK[0x56E0]);
  LODWORD(STACK[0x52B0]) = v829;
  v830 = v829 ^ LODWORD(STACK[0x5600]);
  v831 = LODWORD(STACK[0x5300]) - v830;
  LODWORD(STACK[0x5298]) = v831;
  v832 = v831 + LODWORD(STACK[0x52D8]);
  v833 = LODWORD(STACK[0x56D0]) - v832;
  v834 = LODWORD(STACK[0x5780]) - v833;
  LODWORD(STACK[0x5300]) = v834;
  v835 = LODWORD(STACK[0x5770]) - v834;
  v836 = v835 + LODWORD(STACK[0x5270]);
  v837 = LODWORD(STACK[0x5750]) - v836;
  v838 = LODWORD(STACK[0x5760]) - v773;
  LODWORD(STACK[0x5760]) = v838;
  v839 = LODWORD(STACK[0x56F0]) - v838;
  LODWORD(STACK[0x5790]) = v839;
  v840 = v769 + v839;
  LODWORD(STACK[0x5780]) = v840;
  v841 = (v840 ^ v767) + LODWORD(STACK[0x5450]);
  LODWORD(STACK[0x5770]) = v841;
  v842 = v813 + v841;
  LODWORD(STACK[0x5710]) = v842;
  v843 = LODWORD(STACK[0x5740]) - v842;
  LODWORD(STACK[0x56F0]) = v843;
  v844 = LODWORD(STACK[0x5720]) - v843;
  LODWORD(STACK[0x5750]) = v844;
  v845 = v828 ^ v844;
  LODWORD(STACK[0x5720]) = v845;
  v846 = v845 + v800;
  LODWORD(STACK[0x5610]) = v846;
  v847 = v830 ^ v846;
  LODWORD(STACK[0x5600]) = v847;
  v848 = v847 + v812;
  LODWORD(STACK[0x5740]) = v848;
  v849 = v833 ^ v848;
  LODWORD(STACK[0x55C0]) = v849;
  v850 = LODWORD(STACK[0x5590]) - v849;
  LODWORD(STACK[0x5730]) = v850;
  v851 = v850 ^ v795;
  LODWORD(STACK[0x5670]) = v851;
  v852 = v851 ^ v784;
  LODWORD(STACK[0x5520]) = v852;
  v853 = v785 - v852;
  LODWORD(STACK[0x5630]) = v853;
  v854 = v815 - v853;
  LODWORD(STACK[0x5590]) = v854;
  v855 = v854 ^ LODWORD(STACK[0x5460]);
  LODWORD(STACK[0x5460]) = v855;
  v856 = v855 ^ v778;
  LODWORD(STACK[0x56D0]) = v856;
  v857 = v856 ^ v792;
  LODWORD(STACK[0x55E0]) = v857;
  v858 = v857 + v805;
  LODWORD(STACK[0x5440]) = v858;
  v859 = v858 + v803;
  LODWORD(STACK[0x56E0]) = v859;
  v860 = v859 + LODWORD(STACK[0x56C0]);
  LODWORD(STACK[0x56C0]) = v860;
  v861 = v860 ^ v837;
  LODWORD(STACK[0x5640]) = v861;
  v862 = v861 ^ LODWORD(STACK[0x5540]);
  LODWORD(STACK[0x5400]) = v862;
  v863 = v862 ^ LODWORD(STACK[0x5570]);
  LODWORD(STACK[0x54E0]) = v863;
  v864 = v798 - v863;
  LODWORD(STACK[0x55D0]) = v864;
  v865 = v864 ^ v790;
  LODWORD(STACK[0x5580]) = v865;
  v866 = v865 ^ v820;
  LODWORD(STACK[0x5500]) = v866;
  v867 = LODWORD(STACK[0x54A0]) - v866;
  LODWORD(STACK[0x5570]) = v867;
  v868 = v808 - v867;
  LODWORD(STACK[0x5530]) = v868;
  v869 = v824 - v868;
  LODWORD(STACK[0x54A0]) = v869;
  v870 = v869 ^ v797;
  LODWORD(STACK[0x53D0]) = v870;
  v871 = v870 ^ LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x5450]) = v871;
  v872 = LODWORD(STACK[0x5680]) - v871;
  LODWORD(STACK[0x5660]) = v872;
  v873 = v872 ^ v835;
  LODWORD(STACK[0x55A0]) = v873;
  v874 = LODWORD(STACK[0x5328]) - v873;
  LODWORD(STACK[0x5680]) = v874;
  v875 = LODWORD(STACK[0x5650]) - v874;
  LODWORD(STACK[0x54C0]) = v875;
  v876 = v875 ^ v802;
  LODWORD(STACK[0x5650]) = v876;
  v877 = v876 ^ LODWORD(STACK[0x5408]);
  LODWORD(STACK[0x5408]) = v877;
  v878 = LODWORD(STACK[0x54B0]) - v877;
  LODWORD(STACK[0x55B0]) = v878;
  v879 = v878 ^ LODWORD(STACK[0x5368]);
  LODWORD(STACK[0x5620]) = v879;
  v880 = v879 + v836;
  LODWORD(STACK[0x54B0]) = v880;
  v881 = LODWORD(STACK[0x5390]) - v880;
  LODWORD(STACK[0x5390]) = v881;
  v882 = v881 ^ LODWORD(STACK[0x5560]);
  LODWORD(STACK[0x54D0]) = v882;
  v883 = LODWORD(STACK[0x5388]) - v882;
  LODWORD(STACK[0x5540]) = v883;
  v884 = v883 ^ LODWORD(STACK[0x5550]);
  LODWORD(STACK[0x5550]) = v884;
  v885 = LODWORD(STACK[0x5380]) - v884;
  LODWORD(STACK[0x5380]) = v885;
  v886 = v885 ^ LODWORD(STACK[0x5330]);
  LODWORD(STACK[0x5560]) = v886;
  v887 = LODWORD(STACK[0x53F8]) - v886;
  LODWORD(STACK[0x5368]) = v887;
  v888 = v887 ^ LODWORD(STACK[0x53E0]);
  LODWORD(STACK[0x5328]) = v888;
  v889 = LODWORD(STACK[0x5398]) - v888;
  LODWORD(STACK[0x53F8]) = v889;
  v890 = v889 + LODWORD(STACK[0x53A8]);
  LODWORD(STACK[0x5388]) = v890;
  v891 = LODWORD(STACK[0x5430]) - v890;
  LODWORD(STACK[0x53E0]) = v891;
  v892 = v891 ^ LODWORD(STACK[0x54F0]);
  LODWORD(STACK[0x5510]) = v892;
  v893 = v892 ^ LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x53A8]) = v893;
  v894 = v893 ^ v832;
  LODWORD(STACK[0x54F0]) = v894;
  v895 = v894 ^ LODWORD(STACK[0x5378]);
  LODWORD(STACK[0x5330]) = v895;
  v896 = v895 + LODWORD(STACK[0x5370]);
  LODWORD(STACK[0x5420]) = v896;
  v897 = v896 + LODWORD(STACK[0x5310]);
  LODWORD(STACK[0x5378]) = v897;
  v898 = v897 ^ LODWORD(STACK[0x5348]);
  LODWORD(STACK[0x5430]) = v898;
  v899 = v898 ^ LODWORD(STACK[0x53F0]);
  LODWORD(STACK[0x5348]) = v899;
  v900 = v899 + LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x53D8]) = v900;
  v901 = v900 ^ LODWORD(STACK[0x53E8]);
  LODWORD(STACK[0x5370]) = v901;
  v902 = v901 ^ LODWORD(STACK[0x5320]);
  LODWORD(STACK[0x53F0]) = v902;
  v903 = v902 + LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x53E8]) = v903;
  v904 = v903 + LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x53B8]) = v904;
  v905 = LODWORD(STACK[0x5350]) - v904;
  LODWORD(STACK[0x5350]) = v905;
  v906 = v905 ^ LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x53B0]) = v906;
  v907 = v906 ^ LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x5310]) = v907;
  v908 = LODWORD(STACK[0x5298]) - v907;
  LODWORD(STACK[0x53A0]) = v908;
  v909 = v908 + LODWORD(STACK[0x52A0]);
  LODWORD(STACK[0x5398]) = v909;
  v910 = v909 ^ LODWORD(STACK[0x52B0]);
  LODWORD(STACK[0x5320]) = v910;
  v911 = LODWORD(STACK[0x5358]) - v910;
  LODWORD(STACK[0x5358]) = v911;
  v912 = LODWORD(STACK[0x5338]) - (LODWORD(STACK[0x5360]) - v911);
  LODWORD(STACK[0x5338]) = v912;
  v913 = (v912 ^ LODWORD(STACK[0x52B8])) + LODWORD(STACK[0x53C8]);
  LODWORD(STACK[0x53C0]) = v913;
  v914 = v913 ^ LODWORD(STACK[0x52F8]);
  LODWORD(STACK[0x5360]) = v914;
  v915 = LODWORD(STACK[0x52C8]) - v914;
  LODWORD(STACK[0x53C8]) = v915;
  v916 = LODWORD(STACK[0x55F0]) - (v915 + LODWORD(STACK[0x5340]));
  LODWORD(STACK[0x52F8]) = v916;
  v917 = v916 ^ LODWORD(STACK[0x5300]);
  LODWORD(STACK[0x5300]) = v917;
  v918 = v917 + LODWORD(STACK[0x5308]);
  LODWORD(STACK[0x5308]) = v918;
  v919 = v918 ^ LODWORD(STACK[0x52A8]);
  LODWORD(STACK[0x5340]) = v919;
  v920 = (LODWORD(STACK[0x5258]) - v919) ^ LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x52F0]);
  LODWORD(STACK[0x55F0]) = v920;
  v921 = v920 + LODWORD(STACK[0x52D0]);
  LODWORD(STACK[0x5318]) = v921;
  LODWORD(STACK[0x52F0]) = LODWORD(STACK[0x5410]) - ((LODWORD(STACK[0x5260]) - v921 + LODWORD(STACK[0x52C0])) ^ LODWORD(STACK[0x5280]));
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x52E0])))();
}