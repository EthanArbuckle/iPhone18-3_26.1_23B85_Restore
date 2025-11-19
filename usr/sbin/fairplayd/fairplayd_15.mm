uint64_t sub_100450324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0xDB0]) = a5;
  STACK[0x7690] -= 928;
  v7 = STACK[0x3B38] + 1068;
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v5 + 50623)))(STACK[0xEB0] - 628312998, v7, 16);
  v9 = STACK[0xBA20];
  v10 = STACK[0xBA28];
  v11 = STACK[0xBA00];
  v12 = 297845113 * ((((&STACK[0x10000] + 3800) | 0x340749B9) - ((&STACK[0x10000] + 3800) | 0xCBF8B646) - 872892858) ^ 0x43345527);
  LODWORD(STACK[0x10EE0]) = (LODWORD(STACK[0xB9F4]) ^ 0x30B6000) - v12;
  LODWORD(STACK[0x10EF8]) = (v5 + 14368) ^ v12;
  LODWORD(STACK[0x10F0C]) = (((v5 ^ 0xD05FA8B8) + (v6 ^ 0x2FA05246)) ^ ((v6 ^ 0xB748B86B) + 1219970965) ^ (((v5 + 34361) ^ 0x8C5FD3E8) + (v6 ^ 0x73A0A72D))) - v12 + 213266025;
  LODWORD(STACK[0x10F08]) = v12 + (((v6 ^ 0x28782994) - 678963604) ^ ((v6 ^ 0xBF765DC) - 200762844) ^ ((v6 ^ 0xC8C70148) + 926482104)) - 163089624;
  STACK[0x10EF0] = v9;
  STACK[0x10EE8] = v11;
  STACK[0x10F00] = v10;
  STACK[0x10ED8] = v7;
  v13 = (*(v8 + 8 * (v5 ^ 0xC900)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * ((4961 * (LODWORD(STACK[0x10F10]) == -371865839)) ^ v5)))(v13);
}

uint64_t sub_1004506A4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE4]) = (v1 + 160905857) ^ (1012831759 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x4FFE6D0) + 83879632) ^ 0x146CF05A));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF669D97A)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 128) = v2;
  return (*(v3 + 8 * ((((v1 - 1206402682) & 0x517F6EF7 ^ 0xA43C) * (v1 < 0x741DCA37)) ^ (v1 + 160910206))))(v4);
}

uint64_t sub_100450770@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1B10]) = *(STACK[0x63C0] + 4);
  STACK[0x7258] = STACK[0x61B0];
  LODWORD(STACK[0x11AC]) = STACK[0x8A6C];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004507C8()
{
  STACK[0x10EE0] = STACK[0x3BD0];
  LODWORD(STACK[0x10ED8]) = v0 + 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x28589340) + 676893509) ^ 0x9EE3A123) - 11798;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 36813)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100450864()
{
  v2 = ((v0 - 46440) ^ 0x36EED169) + LODWORD(STACK[0x3908]);
  v3 = (((v1 ^ 0x6416889F) - 1679198367) ^ ((v1 ^ 0x887884B1) + 2005367631) ^ ((v1 ^ 0x5BBCB3F) - 96193343)) + 549758271;
  v4 = (v3 < 0x36EEDE2E) ^ (v2 < 0x36EEDE2E);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0x36EEDE2E;
  }

  return (*(STACK[0xF18] + 8 * (((2 * !v5) | (4 * !v5)) ^ v0)))();
}

uint64_t sub_100450970()
{
  v2 = STACK[0x87F4];
  STACK[0x6060] = v1;
  STACK[0x7690] = ((v0 - 542553090) & 0x20561F97) + ((v0 - 42943) | 0x1C28u) + STACK[0x7690] - 13199;
  LODWORD(STACK[0x70C4]) = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x613B)))(72, 0x10200403BC47BC9);
  STACK[0x7D00] = v4;
  return (*(v3 + 8 * (v0 ^ (4 * (v4 == 0)))))();
}

uint64_t sub_100450A3C()
{
  STACK[0x7690] = STACK[0x7690] - 35803 + ((v0 - 20497291) & 0x138AFFB);
  LODWORD(STACK[0x6F0C]) = -371865839;
  STACK[0x22F0] = STACK[0x70C8];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100450AF0()
{
  v2 = v1 | ((v1 < 0x482D4312) << 32);
  v3 = *(STACK[0x938] + 8);
  v4 = ((v0 + 21569) | 0x329u) + v3 + 3696682414u;
  v5 = v3 > 0xFFFFFFFF23A88F16;
  v6 = v4 > v2 + 2485792215u;
  if (v5 == v2 + 2485792215u < 0xDC5770E9)
  {
    v5 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((v5 * ((v0 + 27584) ^ 0x14EE)) ^ v0)))();
}

uint64_t sub_100450BA4()
{
  STACK[0xEC0] = v1;
  LODWORD(STACK[0xED0]) = *v0;
  v3 = STACK[0x990];
  STACK[0x10EE0] = *STACK[0x990];
  LODWORD(STACK[0x10ED8]) = (v2 + 703893510) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0xFD435D05) + (~(&STACK[0x10000] + 3800) | 0x2BCA2FA)) ^ 0x90D572F8));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x4A85)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((*(v3 + 8) != 0) * (((v2 ^ 0xEEFE) - 2549) ^ 0x64E2)) ^ v2)))(v5);
}

uint64_t sub_100450CB4()
{
  v0 = 545 * (STACK[0xF10] ^ 0x8B78);
  v1 = STACK[0xF10] - 9883;
  STACK[0x9E58] = &STACK[0x7678];
  v2 = STACK[0xACF8];
  STACK[0x9E60] = STACK[0xACF8];
  if (v2)
  {
    v3 = LODWORD(STACK[0xAD04]) == -371865839;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((14 * ((v0 ^ v4) & 1)) | v1)))();
}

uint64_t sub_100450D38()
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 437250774 + (v0 ^ 0xE5F011EF))))();
}

uint64_t sub_100450D88@<X0>(char a1@<W8>)
{
  LOBYTE(STACK[0xAB37]) = a1;
  v3 = (a1 - 104);
  v4 = (*v2 + 73);
  v5 = v4 < (((v1 + 25) ^ 0xD0) & 0xFCu);
  v6 = v3 < v4;
  if (v3 < ((v1 + 54) ^ 0x3Du) == v5)
  {
    v5 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((225 * !v5) ^ v1)))();
}

uint64_t sub_100450E68()
{
  STACK[0x64F8] = STACK[0x27F0];
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762660671) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xD5D934CA) - (&STACK[0x10000] + 3800) + 353592731) ^ 0xDBED5741));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4277)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v3 = 1;
  }

  else
  {
    v3 = *STACK[0x940] == 0;
  }

  v4 = v3;
  return (*(v1 + 8 * ((485 * (((v0 - 19) ^ v4) & 1)) ^ v0)))(v2);
}

uint64_t sub_100450F44@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA914]) = v2;
  LODWORD(STACK[0xA910]) = a1;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100450F6C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int a3@<W8>)
{
  *(*(a1 + a2) + 8 * (v10 + v7)) = 0;
  v11 = v10 + v8 < v4;
  if (a3 > v5 != v10 + v8 < v3)
  {
    v11 = a3 > v5;
  }

  return (*(STACK[0xF18] + 8 * ((v11 * v9) ^ v6)))();
}

uint64_t sub_1004510D8()
{
  v1 = STACK[0xA978];
  v2 = STACK[0x3A10];
  v3 = 1012831759 * ((((&STACK[0x10000] + 3800) | 0xD0E680F9) - ((&STACK[0x10000] + 3800) | 0x2F197F06) + 790200070) ^ 0xC0759673);
  LODWORD(STACK[0x10EF0]) = (((LODWORD(STACK[0x17C4]) ^ 0xECAB4449) + 324320183) ^ ((LODWORD(STACK[0x17C4]) ^ 0xE2D4BFFE) + ((v0 - 287109683) & 0x111CB7CE ^ 0x1D2B4040)) ^ ((LODWORD(STACK[0x17C4]) ^ 0xE7AA3CA6) + 408273754)) - v3 + 297816368;
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE0]) = (v0 - 6061) ^ v3;
  STACK[0x10EE8] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF6A1)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_100451490()
{
  v2 = *(v1 + 8);
  STACK[0x8510] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 + 703924084) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x7C3E34) - ((&STACK[0x10000] + 3800) & 0x7C3E30)) ^ 0x6DEA11C8));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 49641)))(&STACK[0x10ED8]);
  STACK[0x23F0] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x54DA ^ (v0 + 24039))))(v4);
}

uint64_t sub_1004515A0()
{
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 88672))();
}

uint64_t sub_1004516C4@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + 16 * v2;
  v4 = 0x981390C2FED9246;
  if (*(STACK[0x6258] + 336) != ((v1 + 1282779402) & 0xB38ACB3F ^ 0x8241A23D))
  {
    v4 = 0x981390C2FED9247;
  }

  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004517C4()
{
  v1 = (STACK[0xF10] - 961776446) & 0x3953BFAB;
  v2 = STACK[0xF10] - 35262;
  LODWORD(STACK[0x9F7C]) = v0;
  return (*(STACK[0xF18] + 8 * ((v1 ^ 0x2E0D) + v2)))();
}

uint64_t sub_100451A38@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v5 = STACK[0xF18];
  STACK[0x1430] = *(STACK[0xF18] + 8 * v3);
  STACK[0xAFD8] = v2;
  STACK[0xAFE0] = a2;
  v6 = STACK[0x7690];
  STACK[0xAFE8] = &STACK[0xC4D0] + STACK[0x7690] + 32;
  STACK[0x7690] = v6 + 1056;
  return (*(v5 + 8 * (((a1 != 0) * (((v4 + 235197508) & 0xF1FAAFED) - 3700)) ^ (v4 - 4809))))();
}

uint64_t sub_100451C30()
{
  LOBYTE(STACK[0x59F7]) = v0;
  STACK[0x4040] = v3;
  STACK[0x5100] = v1;
  return (*(STACK[0xF18] + 8 * (v2 - 11346)))();
}

uint64_t sub_100451C68()
{
  v1 = STACK[0x9228];
  v2 = STACK[0x1040];
  *v2 = (v0 ^ 0x94) * *STACK[0x9228] + 48;
  v2[1] = *(v1 + 1);
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x1184)))();
}

uint64_t sub_100451DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W8>)
{
  STACK[0x41B0] = v4 + 36;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4A70] = v6;
  STACK[0x6528] = (v6 + 57);
  STACK[0x7690] = v5 + 80;
  STACK[0x2978] = 0;
  STACK[0x9130] = 0;
  STACK[0x19F8] = 0;
  LODWORD(STACK[0x9704]) = -371865839;
  STACK[0x8670] = 0x20DE4F5147E73171;
  return (*(STACK[0xF18] + 8 * ((151 * (((a4 + 28) ^ (STACK[0x3F38] == 0)) & 1)) ^ a4)))(a1, a2, a3, &STACK[0x8000]);
}

uint64_t sub_100451EA4()
{
  v2 = STACK[0x2B14];
  LODWORD(STACK[0x928C]) = v1;
  return (*(STACK[0xF18] + 8 * ((((11881 * ((v0 - 1736256634) & 0x677DBDFF ^ 0xB56C)) ^ 0x8B23) * (v2 == -371865839)) ^ v0)))();
}

uint64_t sub_100451F84@<X0>(void *a1@<X8>)
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
  STACK[0xC090] = 0;
  STACK[0xC098] = v1;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xC090] | v11);
  *(&STACK[0xC090] | v11) = 0;
  LOBYTE(STACK[0xC097]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xC090] | v13);
  *(&STACK[0xC090] | v13) = STACK[0xC096];
  LOBYTE(STACK[0xC096]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xC090] | v15);
  *(&STACK[0xC090] | v15) = STACK[0xC095];
  LOBYTE(STACK[0xC095]) = v16;
  v17 = STACK[0xC090];
  LOBYTE(STACK[0xC090]) = STACK[0xC094];
  LOBYTE(STACK[0xC094]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xC090] | v18);
  *(&STACK[0xC090] | v18) = STACK[0xC093];
  LOBYTE(STACK[0xC093]) = v19;
  v20 = STACK[0xC091];
  LOBYTE(STACK[0xC092]) = STACK[0xC090];
  LOWORD(STACK[0xC090]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC090] = vmla_s32(v23, STACK[0xC090], vdup_n_s32(0x1000193u));
  STACK[0xC098] ^= STACK[0xC090];
  STACK[0xC098] = vmul_s32(vsub_s32(STACK[0xC098], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC09A];
  LOWORD(STACK[0xC099]) = STACK[0xC098];
  LOBYTE(STACK[0xC098]) = v24;
  v25 = (&STACK[0xC098] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC09B];
  LOBYTE(STACK[0xC09B]) = v20;
  LOBYTE(v25) = STACK[0xC098];
  LOBYTE(STACK[0xC098]) = STACK[0xC09C];
  LOBYTE(STACK[0xC09C]) = v25;
  v26 = (&STACK[0xC098] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC09D];
  LOBYTE(STACK[0xC09D]) = v25;
  v27 = (&STACK[0xC098] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC09E];
  LOBYTE(STACK[0xC09E]) = v26;
  v28 = (&STACK[0xC098] | v11);
  v29 = *v28;
  *v28 = STACK[0xC09F];
  LOBYTE(STACK[0xC09F]) = v29;
  v30 = STACK[0xC098];
  v31 = (1269228062 * STACK[0xC098]) ^ v10;
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
  *a1 = STACK[0xC098];
  return (*(STACK[0xF18] + 8 * (((((v2 - 1182939314) | 0x2C20) ^ 0x7438) * (v2 < 0x8C46EEDD)) ^ (v2 - 1182936162))))(v48, v49);
}

uint64_t sub_10045261C()
{
  v1 = STACK[0x4350];
  v2 = STACK[0x1C70];
  v3 = ((*(v1 + 32) ^ 0x2A3B16BF) - 708515519) ^ ((*(v1 + 32) ^ 0xB4B3AD7) - 189479639) ^ ((*(v1 + 32) ^ 0xC8A5EB79) + 928650375);
  v4 = 1012831759 * ((~(&STACK[0x10000] + 3800) & 0x73C50B09 | (&STACK[0x10000] + 3800) & 0x8C3AF4F0) ^ 0x63561D83);
  LODWORD(STACK[0x10ED8]) = (v0 - 10954) ^ v4;
  STACK[0x10EE0] = v2;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EF0]) = v4 + v3 + 432885567 + (v0 ^ 0x8403) + 12579;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 18630)))(&STACK[0x10ED8]);
  v7 = LODWORD(STACK[0x2664]) == 6393 * (v0 ^ 0x8403) - 371904165;
  LOBYTE(STACK[0x3463]) = v7;
  return (*(v5 + 8 * ((2955 * v7) ^ v0)))(v6);
}

uint64_t sub_1004527A4@<X0>(unint64_t *a1@<X7>, unsigned int a2@<W8>)
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
  STACK[0xBCB0] = 0;
  STACK[0xBCB8] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBCB0] | v13);
  *(&STACK[0xBCB0] | v13) = STACK[0xBCB7];
  v17 = *(&STACK[0xBCB0] | v14);
  *(&STACK[0xBCB0] | v14) = STACK[0xBCB6];
  v18 = *(&STACK[0xBCB0] | v15);
  *(&STACK[0xBCB0] | v15) = STACK[0xBCB5];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBCB7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBCB6]) = v17;
  LOBYTE(STACK[0xBCB5]) = v18;
  v23 = STACK[0xBCB0];
  LOBYTE(STACK[0xBCB0]) = STACK[0xBCB4];
  LOBYTE(STACK[0xBCB4]) = v23;
  v24 = *(&STACK[0xBCB0] | v20);
  *(&STACK[0xBCB0] | v20) = STACK[0xBCB3];
  LOBYTE(STACK[0xBCB3]) = v24;
  v25 = STACK[0xBCB1];
  LOBYTE(STACK[0xBCB2]) = STACK[0xBCB0];
  LOWORD(STACK[0xBCB0]) = v25;
  STACK[0xBCB0] = vmla_s32(v22, STACK[0xBCB0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBCB8];
  v27 = (553300517 * STACK[0xBCB8]) ^ v12;
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
  v48 = *(&STACK[0xBCB8] + v13);
  *(&STACK[0xBCB8] + v13) = STACK[0xBCBF];
  LOBYTE(STACK[0xBCBF]) = v48;
  v49 = *(&STACK[0xBCB8] + v14);
  *(&STACK[0xBCB8] + v14) = STACK[0xBCBE];
  LOBYTE(STACK[0xBCBE]) = v49;
  v50 = *(&STACK[0xBCB8] + v15);
  *(&STACK[0xBCB8] + v15) = STACK[0xBCBD];
  LOBYTE(STACK[0xBCBD]) = v50;
  v51 = STACK[0xBCB8];
  LOBYTE(STACK[0xBCB8]) = STACK[0xBCBC];
  LOBYTE(STACK[0xBCBC]) = v51;
  v52 = *(&STACK[0xBCB8] + v20);
  *(&STACK[0xBCB8] + v20) = STACK[0xBCBB];
  LOBYTE(STACK[0xBCBB]) = v52;
  v53 = STACK[0xBCB9];
  LOBYTE(STACK[0xBCBA]) = STACK[0xBCB8];
  LOWORD(STACK[0xBCB8]) = v53;
  STACK[0xBCB8] = vmla_s32(v22, STACK[0xBCB8], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBCB8] ^ STACK[0xBCB0];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_100452E74@<X0>(int a1@<W8>)
{
  v2 = (((a1 ^ 0x19E3) - 852386641 + (LODWORD(STACK[0x8634]) ^ 0x32CE593C)) ^ ((LODWORD(STACK[0x8634]) ^ 0xB8569064) + 1202286492) ^ ((LODWORD(STACK[0x8634]) ^ (a1 + 1665989203)) - 1665994313)) + 430233683;
  v3 = v2 < 0x2FCF1142;
  v4 = v1 + 802099522 < v2;
  if (v1 > 0xD030EEBD != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((15953 * v4) ^ a1)))();
}

uint64_t sub_100452F7C@<X0>(unint64_t a1@<X8>)
{
  v4 = v1 - 694442446;
  v5 = (v1 + 1057840190) & 0xC0F2FFA7;
  v6 = v3 + 120 * v2;
  v7 = *(v6 + 24);
  v8 = *(v6 + 16);
  LODWORD(v6) = (((*(v6 + 4) ^ (v5 + 466239301)) - 466265451) ^ ((*(v6 + 4) ^ 0x34194DAC) - 874073516) ^ ((*(v6 + 4) ^ 0xC6062FD6) + 972673066)) + 150699695;
  v9 = 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x5CE39DF8) + 1558420990) ^ 0xBAC58631);
  LODWORD(STACK[0x10EF0]) = v9 + 481753200 + (((v8 ^ 0xCC312A1A) + 869193190) ^ ((v8 ^ 0x97577A6B) + 1755874709) ^ ((v8 ^ 0xB2B39760) + 1296853152));
  LODWORD(STACK[0x10ED8]) = v6 ^ v9;
  LODWORD(STACK[0x10EDC]) = (v4 + 694451561) ^ v9;
  STACK[0x10EE8] = a1;
  STACK[0x10EE0] = v7;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (v4 + 694492230)))(&STACK[0x10ED8]);
  LODWORD(STACK[0xB4F4]) = STACK[0x10EF4];
  return (*(v10 + 8 * (v4 ^ 0xD69B31DE ^ (99039 * (v4 < 0x53BBB4E8)))))(v11);
}

uint64_t sub_100453144()
{
  v1 = STACK[0x138C];
  STACK[0x8FE8] = *(STACK[0x15C8] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x704C]) = -2116087613;
  LODWORD(STACK[0x4A8C]) = STACK[0x93C8];
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004531BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0xDF0]) = 0;
  v6 = (16 * a5) ^ 0x2B420u;
  LODWORD(STACK[0x4CDC]) = 0;
  STACK[0xE10] = v5 + 2376;
  STACK[0xE30] = v5 + 2632;
  STACK[0xD20] = v5 + 2888;
  STACK[0xD00] = v5 + 3144;
  STACK[0xE40] = STACK[0x55E8];
  STACK[0xDE0] = &STACK[0xF28] ^ 0x3159019F892414C5;
  STACK[0xE70] = v6;
  STACK[0xCF0] = &STACK[0xF28] ^ 0x3159019F89244D05 ^ v6;
  v7 = *(STACK[0xF18] + 8 * a5);
  LODWORD(STACK[0xEB0]) = 236;
  return v7();
}

uint64_t sub_1004532E4()
{
  v3 = STACK[0x50B0];
  v4 = v2 ^ 0x422F6975 ^ LODWORD(STACK[0x4324]) ^ 0x1A16EEE0;
  v5 = 1022166737 * ((&STACK[0x10000] + 3800) ^ 0xBA10E192);
  STACK[0x10EF0] = STACK[0x1EC8];
  LODWORD(STACK[0x10EE8]) = v2 - v5 + 20820;
  LODWORD(STACK[0x10EF8]) = v4 - v5;
  STACK[0x10ED8] = v1;
  STACK[0x10EE0] = v3;
  STACK[0x10F00] = v0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 ^ 0xA853)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_1004533D8()
{
  v2 = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  v3 = STACK[0x9368] + 460;
  v4 = 1022166737 * ((~(&STACK[0x10000] + 3800) & 0x47CFF6B4 | (&STACK[0x10000] + 3800) & 0xB8300948) ^ 0xFDDF1726);
  LODWORD(STACK[0x10EF0]) = v4 ^ v0 ^ ((v0 ^ 0xC43C7EA3) + 1653021975) ^ ((v0 ^ 0xFCA9C5BA) + 1511171600) ^ ((v0 ^ 0x7FFFEBF7) - 649820093) ^ 0xF2A05DA2 ^ ((v0 ^ 0x1E2ECCA4) + ((v1 + 2143562219) & 0x803BFEF1) + ((v1 + 11644) | 0x28C4) - 1198192435);
  STACK[0x10EE0] = v3;
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10EDC]) = v4 + 26168 + v1;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD8F3)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((32337 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ v1)))(v6);
}

uint64_t sub_1004535F0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x4F70] = a1;
  STACK[0x4018] = v1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10045361C()
{
  if (*(v2 + 12))
  {
    v3 = v0 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(STACK[0xF18] + 8 * ((v4 * ((v1 - 1917) ^ 0x46F2)) ^ v1)))();
}

uint64_t sub_1004536CC()
{
  STACK[0xFB0] = v2;
  v3 = STACK[0x7690];
  STACK[0x12D0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = ((v0 - 261801615) & 0xF9ABB76) + v3 - 10246;
  STACK[0x1008] = v1;
  return (*(STACK[0xF18] + 8 * (((v1 == 0) * (v0 - 12948)) ^ v0)))();
}

uint64_t sub_100453740()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xAADE)))(v0 ^ 0xE9D5C711);
  *(v2 + 120) = v4;
  return (*(v3 + 8 * (((v4 == 0) * ((29 * (v1 ^ 0x629D)) ^ ((v1 ^ 0x67C5) + 19279))) ^ v1)))();
}

uint64_t sub_100453838()
{
  v1 = STACK[0xF18];
  STACK[0x1DB0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 3635) | 2) ^ 0x47BA) + v0)))();
}

uint64_t sub_100453864()
{
  v2 = 634647737 * ((((2 * (&STACK[0x10000] + 3800)) | 0x32DDDA38) - (&STACK[0x10000] + 3800) + 1720783588) ^ 0xF4F8C2E0);
  STACK[0x10EE0] = v0;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125376;
  LODWORD(STACK[0x10EE8]) = v1 - v2 + 9019;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE5BD)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((((*STACK[0x9108] & (((v1 - 7843) | 0x806) ^ 0x1A1F)) == 0) * ((v1 ^ 0xF6D) - 8655)) | v1)))(v4);
}

uint64_t sub_1004539C4()
{
  v1 = STACK[0x5660];
  v2 = STACK[0x2080] + (v0 - 9115 + *(STACK[0x8590] + 56) - 6539);
  v3 = STACK[0x5C18];
  v4 = 634647737 * ((((2 * (&STACK[0x10000] + 3800)) | 0x7D293398) - (&STACK[0x10000] + 3800) - 1049926092) ^ 0x5302B630);
  STACK[0x10EE0] = STACK[0x6620] + 4;
  LODWORD(STACK[0x10ED8]) = (v0 + 25748) ^ v4;
  STACK[0x10EF0] = v1;
  STACK[0x10EF8] = v2;
  STACK[0x10F08] = v3;
  LODWORD(STACK[0x10EE8]) = v4 ^ 0x69B2EE36;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF7CC)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v0))(v6);
}

uint64_t sub_100453AF4()
{
  v1 = STACK[0xE80];
  v2 = STACK[0xE60];
  LODWORD(STACK[0x10EE4]) = LODWORD(STACK[0xE80]) + STACK[0xE60];
  LODWORD(STACK[0x10EFC]) = v1 - v2 - 56;
  v3 = LODWORD(STACK[0xE70]) - v2;
  LODWORD(STACK[0x10ED8]) = -v2;
  LODWORD(STACK[0x10EDC]) = v3;
  STACK[0x10EF0] = v0 - v2;
  STACK[0x10EE8] = STACK[0xD60];
  LODWORD(STACK[0x10EF8]) = STACK[0xF10] - v2 - 1230214699;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xD50])))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_100453B80()
{
  STACK[0x1DC0] = 0x22EE7698899D41C8;
  LODWORD(STACK[0x3418]) = v0;
  LODWORD(STACK[0x4F14]) = v0;
  LODWORD(STACK[0x6168]) = v0;
  LODWORD(STACK[0x188C]) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100453E7C@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x1AA0];
  v4 = *(v1 + 72);
  v5 = 17902189 * ((((&STACK[0x10000] + 3800) | 0x164AA7E5) - ((&STACK[0x10000] + 3800) | 0xE9B5581A) - 373991398) ^ 0x9805B1F5);
  LODWORD(STACK[0x10EE8]) = 800362257 - v5;
  LOBYTE(STACK[0x10EEC]) = v4 - 109 * ((((&STACK[0x10000] - 40) | 0xE5) - ((&STACK[0x10000] - 40) | 0x1A) + 26) ^ 0xF5) + ((v2 + 61) | 0xC0) - ((2 * v4) & 0xE8) - 78;
  LODWORD(STACK[0x10ED8]) = v2 - v5 + 22787;
  STACK[0x10EE0] = a1;
  STACK[0x10EF0] = v3;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 47040)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((30453 * (LODWORD(STACK[0x10EF8]) == -371865839)) ^ v2)))(v7);
}

uint64_t sub_100453FD4()
{
  v1 = v0 - 29752;
  v2 = LODWORD(STACK[0x22C4]);
  v3 = 353670337 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x29DFFF135977DA48) - 0x562000ECA68825B6) ^ 0x594E4998ED562277);
  STACK[0x10EE8] = v3 + STACK[0x2950] - ((2 * STACK[0x2950]) & 0x63692A8F3F464AA6) + 0x31B495479FA32553;
  STACK[0x10EE0] = ((((v0 - 12668) ^ v2 ^ 0xC6D39E321673F079) + 0x392C61CDE98C563ALL) ^ ((v2 ^ 0xA3498770FC384B7ELL) + 0x5CB6788F03C7B482) ^ ((v2 ^ 0x659A1942039E25A9) - 0x659A1942039E25A9)) - v3 + 0x2CB8161A532D212ELL;
  LODWORD(STACK[0x10ED8]) = v3 + v0 - 34326;
  LODWORD(STACK[0x10EF0]) = v3 + 1472139392;
  LODWORD(v2) = v0 + 16201;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * v2))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_100454348()
{
  v2 = v1 & 0xFFFFFFFFBC99F37BLL;
  v3 = ((v1 & 0xBC99F37B) + 1456844523) & 0xA92AE38D;
  v4 = STACK[0x16C8];
  v5 = STACK[0xF10];
  v6 = STACK[0xF10] - 12388;
  STACK[0x10EF0] = v0;
  LOBYTE(STACK[0x10EDC]) = 109 * ((((&STACK[0x10000] - 40) ^ 0x44 | 0x3B) + ((&STACK[0x10000] - 40) ^ 9 | 0xC4)) ^ 0x5C) + 88;
  STACK[0x10EE0] = v4;
  LODWORD(STACK[0x10EE8]) = (17902189 * ((((&STACK[0x10000] + 3800) ^ 0xA9D04044 | 0x460FB73B) + ((&STACK[0x10000] + 3800) ^ 0x92509 | 0xB9F048C4)) ^ 0x2796735C)) ^ v6;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v5 + 16789)))(&STACK[0x10ED8]);
  STACK[0x9888] = *(v7 + 8 * v2);
  return (*(v7 + 8 * ((v3 - 40704) ^ v2)))(v8);
}

uint64_t sub_100454444@<X0>(uint64_t a1@<X8>)
{
  STACK[0x3518] = a1 + 584 * v3;
  LODWORD(STACK[0x5200]) = v1;
  LODWORD(STACK[0x6404]) = -1460406947;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1004544B8@<X0>(int a1@<W8>)
{
  v2 = a1 - 3289;
  v3 = ((((7442 * (a1 ^ 0x8B3E)) ^ 0x47D77BC2) + (v1 ^ 0x6959FF58)) ^ ((v1 ^ 0xCDA08032) - 483486210) ^ ((((a1 ^ 0x8B3E) + 7602) ^ 0xB2D35A32) + (v1 ^ 0x9C5D524B))) - 371865807;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (a1 + 16221)))(v3) != 0;
  return (*(v4 + 8 * ((231 * v5) ^ v2)))();
}

uint64_t sub_1004545C0()
{
  v1 = STACK[0xF10] + 5765;
  *(STACK[0x9368] + 196) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004546D4()
{
  v2 = v1[1];
  STACK[0x44E8] = (v1 + 1);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762648380) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x47BE39C0) - (&STACK[0x10000] + 3800) - 601824480) ^ 0x12DED1C4));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9272)))(&STACK[0x10ED8]);
  STACK[0x8BA8] = v1[64];
  STACK[0x84D8] = (v1 + 33);
  return (*(v3 + 8 * (((v1[33] == 0) * (((v0 + 690242544) & 0xD6DBE37C) + ((v0 + 1830677094) ^ 0x92E13CFE))) ^ v0)))(v4);
}

uint64_t sub_100454820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x4FA0];
  STACK[0x5D28] = &STACK[0x5D24];
  LODWORD(STACK[0x4704]) = -503790733;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100454878@<X0>(int a1@<W8>)
{
  v1 = a1 + 4413;
  STACK[0x8E98] = STACK[0x2CC8];
  LODWORD(STACK[0x31F4]) = STACK[0x15DC];
  LOBYTE(STACK[0x194F]) = 80;
  LODWORD(STACK[0x10ED8]) = (a1 - 1762661292) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xE48DD3D5) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x1B722C28)) ^ 0xD58C1EF1));
  STACK[0x10EE0] = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * ((a1 + 4413) ^ 0x56C1)))(&STACK[0x10ED8]);
  v6 = *STACK[0x970] == (a1 ^ 0x8B3B) && *STACK[0x940] != 0;
  return (*(v3 + 8 * ((184 * v6) ^ v1)))(v4);
}

uint64_t sub_100454A04@<X0>(int a1@<W8>)
{
  v3 = a1 - 9731;
  v4 = STACK[0x7670];
  STACK[0x35C8] = STACK[0x7670];
  v5 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x8FFDF8AF) + (~(&STACK[0x10000] + 3800) | 0x70020750)) ^ 0xE26BD752);
  LODWORD(STACK[0x10ED8]) = v5 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v3 - v5 + 12326;
  STACK[0x10EE0] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 + 43312)))(&STACK[0x10ED8]);
  STACK[0x5400] = v4;
  STACK[0x41A0] = v1;
  LODWORD(STACK[0x20CC]) = v2;
  LODWORD(STACK[0x38AC]) = 1620653502;
  return (*(v6 + 8 * v3))(v7);
}

uint64_t sub_100454B0C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 9685)))(v2);
}

uint64_t sub_100454BB4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 2071833793;
  v2 = STACK[0x3680];
  v3 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x5EF7941A) - ((&STACK[0x10000] + 3800) & 0x5EF79418)) ^ 0x3361BBE6);
  STACK[0x10EE0] = STACK[0x3680];
  LODWORD(STACK[0x10EE8]) = v0 - v3 - 14660;
  LODWORD(STACK[0x10ED8]) = v3 - 1431125373;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x403A)))(&STACK[0x10ED8]);
  v6 = STACK[0x9640];
  v7 = STACK[0x1594];
  STACK[0x5400] = v2;
  STACK[0x41A0] = v6;
  LODWORD(STACK[0x20CC]) = v7;
  LODWORD(STACK[0x38AC]) = -183645956;
  return (*(v4 + 8 * (v1 ^ 0x7B7E1673 ^ (94 * (v1 > 0x291ECC4E)))))(v5);
}

uint64_t sub_100454CDC()
{
  v0 = STACK[0xF10] - 31051;
  LODWORD(STACK[0x424C]) = (((LODWORD(STACK[0xA090]) ^ LODWORD(STACK[0x98D4]) ^ 0xC1C5BB06) + 310677681) ^ ((LODWORD(STACK[0xA090]) ^ LODWORD(STACK[0x98D4]) ^ 0x28BF30F2) - 67232955) ^ ((LODWORD(STACK[0xA090]) ^ LODWORD(STACK[0x98D4]) ^ 0xE97A8BF4) + (((STACK[0xF10] - 33293) | 0x4480) ^ 0x3A3BEDED))) - (((LODWORD(STACK[0xA098]) ^ 0x45F1BA10) - 1173469712) ^ ((LODWORD(STACK[0xA098]) ^ 0x705AAA9) - 117811881) ^ ((LODWORD(STACK[0xA098]) ^ 0xAB21D7A8) + 1423845464)) + 1143700291;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x3BE1)))();
}

uint64_t sub_100454F30()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 22367)))(v3);
}

uint64_t sub_100454FC0()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x37E8];
  STACK[0x5D28] = &STACK[0x642C];
  LODWORD(STACK[0x4704]) = -1718704556;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100455098()
{
  v2 = STACK[0x6FA8];
  STACK[0x81A8] = *STACK[0x3BD0];
  STACK[0x97E8] = v2 - ((v2 << ((105 * (v0 ^ 0xD1)) ^ 0x3Au)) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  *(v1 + 32) = 103711530;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xC465)))();
}

uint64_t sub_100455220()
{
  v1 = v0 - 824744214;
  v2 = STACK[0x28E4];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393255;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10045526C@<X0>(int a1@<W8>)
{
  *((v1 - 105781081) + STACK[0x9D70] + STACK[0x2920] - 0xD94AE01AB68F0DALL) = *(STACK[0x9D68] + (v1 - 105781081)) ^ ((a1 - 67) | 0x2A) ^ 0x64;
  v2 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xE10]) = v1 - 1;
  return v2();
}

uint64_t sub_1004552DC()
{
  v1 = STACK[0xF18];
  STACK[0x2FE0] = *(STACK[0xF18] + 8 * (v0 - 23327));
  return (*(v1 + 8 * (v0 - 27794 + 51 * ((v0 - 23327) ^ 0x1290))))();
}

uint64_t sub_10045536C()
{
  v0 = STACK[0xF10] - 19687;
  STACK[0x1BE0] = &STACK[0x10DF0];
  v1 = ((((LODWORD(STACK[0x818C]) >> 4) ^ 0xCACD3E28) - 162916951) ^ (((LODWORD(STACK[0x818C]) >> 4) ^ 0x51C570BE) + 1833065279) ^ (((LODWORD(STACK[0x818C]) >> 4) ^ 0x959512E7) - 1458423448)) + 237560607;
  v2 = (v1 ^ 0x3F3CB4FC) & (2 * (v1 & 0xBFBCA4F0)) ^ v1 & 0xBFBCA4F0;
  v3 = ((2 * (v1 ^ 0x6D54BCDC)) ^ 0xA5D03058) & (v1 ^ 0x6D54BCDC) ^ (2 * (v1 ^ 0x6D54BCDC)) & 0xD2E8182C;
  v4 = v3 ^ 0x52280824;
  v5 = (v3 ^ 0x80C01000) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x4BA060B0) & v4 ^ (4 * v4) & 0xD2E81828;
  v7 = (v6 ^ 0x42A00020) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x9048180C)) ^ 0x2E8182C0) & (v6 ^ 0x9048180C) ^ (16 * (v6 ^ 0x9048180C)) & 0xD2E81800;
  v9 = v7 ^ 0xD2E8182C ^ (v8 ^ 0x2800000) & (v7 << 8);
  LODWORD(STACK[0x24E4]) = (16 * v1) ^ (32 * ((v9 << 16) & 0x2E80000 ^ v9 ^ ((v9 << 16) ^ 0x2C0000) & (((v8 ^ 0xD068182C) << 8) & 0x2E80000 ^ 0x2E00000 ^ (((v8 ^ 0xD068182C) << 8) ^ 0x180000) & (v8 ^ 0xD068182C)))) ^ 0xBAAFDB5F;
  STACK[0x8998] = STACK[0x6898];
  STACK[0x7FE0] = STACK[0x5260];
  LODWORD(STACK[0x2FD8]) = STACK[0x51FC];
  STACK[0x12F8] = &STACK[0xF58];
  LODWORD(STACK[0x7F28]) = -1360847724;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10045558C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x5D06)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004555B8@<X0>(unint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x695D2AD9) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x96A2D520)) ^ 0x4CB0525);
  STACK[0x10EE8] = &STACK[0x4AB4];
  STACK[0x10EE0] = &STACK[0x39F0];
  STACK[0x10EF0] = a1;
  LODWORD(STACK[0x10ED8]) = ((((v3 ^ 0x856FE1A4) + 2056265308) ^ ((v3 ^ 0x13340488) - 322176136) ^ ((((v2 ^ 0xF33F) + 2140004683) ^ v3) - 2140021309)) - 54746966) ^ v4;
  LODWORD(STACK[0x10EF8]) = v2 - v4 - 6252;
  STACK[0x10F00] = (v1 + 1);
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 5879)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_1004557A0()
{
  v0 = 4999 * (STACK[0xF10] ^ 0x8B3C);
  v1 = STACK[0xF10] - 33618;
  STACK[0x45F8] = &STACK[0x4784];
  return (*(STACK[0xF18] + 8 * ((v0 ^ 0x9433) + v1)))(STACK[0xA2E8]);
}

uint64_t sub_100455844()
{
  v0 = STACK[0xF10] - 5183;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x9640]);
  STACK[0x9640] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10045588C()
{
  v0 = STACK[0xF10] - 18239;
  v1 = STACK[0x1800];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(*(STACK[0x1800] + 552));
  *(v1 + 552) = 0;
  *(v1 + 560) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100455970@<X0>(int a1@<W8>)
{
  v3 = (v1 ^ 0x9925A0F9) + *v2;
  v5 = v3 < (((v1 + 8431) | 0xE02) ^ 0xC94864D9) || a1 - 918025654 < v3;
  return (*(STACK[0xF18] + 8 * ((7 * v5) ^ v1)))();
}

uint64_t sub_100455AA0()
{
  v2 = v0 - 492209518;
  v3 = v0 - 6265;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 17971)))();
  *v1 = 0;
  return (*(v4 + 8 * ((14846 * (v2 <= (v3 ^ 0x436BE055u))) ^ (v2 + 492181571))))(v5);
}

uint64_t sub_100455B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  LODWORD(STACK[0xA5E4]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0x2A06AE8E;
  return (*(STACK[0xF18] + 8 * ((10316 * ((v3 - 64228720) < 0xC97FCD94)) ^ (v3 - 29445))))(a1, a2, a3, v4, ((0x22 % (LODWORD(STACK[0xA5EC]) ^ 0x566E1FC5u)) ^ (v3 - 80133505)) + 1157940369 + ((2 * (0x22 % (LODWORD(STACK[0xA5EC]) ^ 0x566E1FC5u))) & 0x74));
}

uint64_t sub_100455CA0()
{
  STACK[0x5658] = STACK[0x4790];
  LODWORD(STACK[0x2564]) = 8829505;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100455D4C@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EDC]) = (v1 - 7960) ^ (1012831759 * ((((2 * (&STACK[0x10000] + 3800)) | 0x6B8B3588) - (&STACK[0x10000] + 3800) + 1245340988) ^ 0xA5568C4E));
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4035)))(&STACK[0x10ED8]);
  *(v2 + 136) = 0;
  return (*(v3 + 8 * (v1 - 10487)))(v4);
}

uint64_t sub_100455E5C()
{
  v1 = STACK[0xF18];
  STACK[0x20A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 2325) | 0x4028) - 4872) ^ v0)))();
}

uint64_t sub_100455F90()
{
  v1 = STACK[0xF10] ^ 0xF289;
  v2 = LODWORD(STACK[0x3908]) - 277819002;
  v3 = (((v0 ^ 0x902823C5) + 1876417595) ^ ((v0 ^ 0x913F2447) + 1858132921) ^ (((29 * (STACK[0xF10] ^ 0x8BB3) + 389889064) ^ (v1 - 1205)) + (v0 ^ 0xE8C2C093))) - 649684861;
  v4 = (v2 < 0xEF70D172) ^ (v3 < 0xEF70D172);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0xEF70D172;
  }

  return (*(STACK[0xF18] + 8 * ((102 * !v5) ^ v1)))();
}

uint64_t sub_1004561A0@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x3450] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 20889 + a1 + 22190)))();
}

uint64_t sub_100456270()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 29644) ^ (1603510583 * ((~(&STACK[0x10000] + 3800) & 0x1C498FFA | (&STACK[0x10000] + 3800) & 0xE3B67000) ^ 0x8B92BD51));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 48658)))(&STACK[0x10ED8]);
  STACK[0x85B8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 22225) | 0x240) - 5263) ^ v0)))(v2);
}

uint64_t sub_1004565AC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 4809)))(32);
  STACK[0x5250] = v2;
  return (*(v1 + 8 * (((4 * (((v2 == 0) ^ (-97 * (v0 ^ 0xDC))) & 1)) & 0xEF | (16 * (((v2 == 0) ^ (-97 * (v0 ^ 0xDC))) & 1))) ^ v0)))();
}

uint64_t sub_100456618()
{
  v1 = STACK[0xF18];
  STACK[0x78C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x35F1 ^ (v0 + 6961))))();
}

uint64_t sub_100456650()
{
  v0 = STACK[0xF10] - 30507;
  STACK[0x5658] = STACK[0x6B70];
  LODWORD(STACK[0x2564]) = -1666392050;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100456680@<X0>(int a1@<W8>)
{
  v2 = a1 + 14109;
  v3 = STACK[0xF18];
  STACK[0x50C8] = *(STACK[0xF18] + 8 * v1);
  v4 = a1 - 33179;
  STACK[0x10EE0] = STACK[0x818];
  LODWORD(STACK[0x10ED8]) = (a1 - 1762661292) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xC988D006) - (&STACK[0x10000] + 3800) - 1690593283) ^ 0x55C5A527));
  v5 = (*(v3 + 8 * (a1 + 16254)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((v2 ^ 0x9539) + v4)))(v5);
}

uint64_t sub_10045679C(__n128 a1)
{
  a1.n128_u16[0] = 24415;
  a1.n128_u8[2] = 95;
  a1.n128_u8[3] = 95;
  a1.n128_u8[4] = 95;
  a1.n128_u8[5] = 95;
  a1.n128_u8[6] = 95;
  a1.n128_u8[7] = 95;
  return (*(STACK[0xF18] + 8 * (v1 - 10736)))(a1);
}

uint64_t sub_1004567E4@<X0>(uint64_t a1@<X0>, __int16 a2@<W8>)
{
  *(v5 + 32) = a1;
  LODWORD(STACK[0xAE00]) = v6;
  LOWORD(STACK[0xAE06]) = a2;
  LODWORD(STACK[0xAE08]) = v8;
  LODWORD(STACK[0xAE0C]) = v2;
  STACK[0xAE10] = v3;
  STACK[0xAE18] = v7;
  return (*(STACK[0xF18] + 8 * (((a1 == 0) * (((v4 ^ 0x2149) - 27087) ^ 0x21BE)) ^ v4)))();
}

uint64_t sub_100456844()
{
  LODWORD(STACK[0x10ED8]) = v2 - 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x2A0910A0) - (&STACK[0x10000] + 3800) + 1442246491) ^ 0x4565F9D1) + 25348;
  STACK[0x10EE0] = v0;
  STACK[0x10EF8] = &STACK[0x7174];
  STACK[0x10EF0] = &STACK[0x1530];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 40387)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((33129 * (LODWORD(STACK[0x10EE8]) == ((3 * (v2 ^ 0x1459) - 371941681) ^ v1))) ^ v2)))(v4);
}

uint64_t sub_100456940()
{
  v3 = *(v2 + 132) - (((v1 ^ 0x673E4F7D) - 1732136829) ^ ((v1 ^ 0xCF7B64ED) + 813996819) ^ ((v1 ^ 0x419080C6 ^ (53 * (v0 ^ 0x146D))) - 1100016769)) + 371865796;
  *(v2 + 128) = -371865839;
  *(v2 + 132) = v3;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004569D4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xAFAC]) = a1;
  v3 = (v1 ^ 0xEC57) - 34838 + a1 + 1149801832;
  v4 = (v2 > 0xA41A9E63) ^ (v3 < 0x5BE5619C);
  v5 = v3 < v2 + 1541759388;
  if (v4)
  {
    v5 = v2 > 0xA41A9E63;
  }

  return (*(STACK[0xF18] + 8 * (v1 ^ (16 * !v5))))();
}

uint64_t sub_100456ADC()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 4730;
  LODWORD(STACK[0x3F24]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 + 22219) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_100456DCC@<X0>(__int16 a1@<W8>)
{
  LOWORD(STACK[0xB600]) = a1;
  LOWORD(STACK[0xB602]) = v1;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 + v2 + 3974 - 1901)))();
}

uint64_t sub_100456ED0@<X0>(int a1@<W8>)
{
  LOWORD(STACK[0x6736]) = v1;
  LOWORD(STACK[0x8BF6]) = v2;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x9C90 ^ (3 * (a1 ^ 0x234F)))))();
}

uint64_t sub_100456F68@<X0>(int a1@<W8>)
{
  v8 = STACK[0xF18];
  STACK[0x7F58] = *(STACK[0xF18] + 8 * v4);
  STACK[0x4350] = v5;
  STACK[0x7FB8] = v7;
  v9 = STACK[0x7690];
  STACK[0x1C70] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = ((v1 - 38187) | 0x6C00) - 15223 + v9 - 12569;
  STACK[0x38B8] = v2;
  STACK[0x4988] = v3;
  LODWORD(STACK[0x3278]) = v6;
  STACK[0x2590] = 0;
  LODWORD(STACK[0x2664]) = a1;
  if (v2)
  {
    v10 = v3 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(v8 + 8 * ((29 * v11) ^ v1)))();
}

uint64_t sub_1004570AC@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x22E4];
  v4 = STACK[0x8154];
  v5 = STACK[0xF18];
  v6 = STACK[0x76C4];
  STACK[0x1A30] = *(STACK[0xF18] + 8 * v1);
  LODWORD(STACK[0x22A0]) = v3;
  LODWORD(STACK[0x217C]) = v6;
  STACK[0x7020] = a1;
  LODWORD(STACK[0x5508]) = v4;
  STACK[0x9560] = 0;
  LODWORD(STACK[0x59AC]) = 0;
  STACK[0x6830] = 0x981390C2FED9246;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v2 - 1762661292) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x543D3B94) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xABC2C468)) ^ 0x653CF6B0));
  v7 = (*(v5 + 8 * (v2 ^ 0x4182)))(&STACK[0x10ED8]);
  v9 = *STACK[0x970] != (((v2 - 26867) | 0x810) ^ 0x2A58) || *STACK[0x940] == 0;
  return (*(v5 + 8 * ((v9 * (v2 ^ 0x8B6C)) ^ (v2 - 24876))))(v7);
}

uint64_t sub_10045723C()
{
  LODWORD(STACK[0x8200]) = *v0;
  v2 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((551 * ((v1 ^ 0xE9EB2EFC ^ (v1 + 3283)) > 0x3B54170F)) ^ (v1 + 5991))))();
}

uint64_t sub_1004572AC@<X0>(int a1@<W8>)
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
  STACK[0xBD00] = 0;
  STACK[0xBD08] = v2;
  v13 = 16777619 * ((1269228062 * v12 + 7) ^ (1269228062 * v12)) % 7;
  v14 = 16777619 * ((1269228062 * v12 + 6) ^ (1269228062 * v12)) % 6;
  v15 = 16777619 * ((1269228062 * v12 + 5) ^ (1269228062 * v12)) % 5;
  v16 = *(&STACK[0xBD00] | v13);
  *(&STACK[0xBD00] | v13) = STACK[0xBD07];
  v17 = *(&STACK[0xBD00] | v14);
  *(&STACK[0xBD00] | v14) = STACK[0xBD06];
  v18 = *(&STACK[0xBD00] | v15);
  *(&STACK[0xBD00] | v15) = STACK[0xBD05];
  v19 = 16777619 * ((1269228062 * v12 + 3) ^ (1269228062 * v12)) % 3;
  v20 = vdup_n_s32(1269228062 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = (1269228062 * v12) | 1;
  LOBYTE(STACK[0xBD07]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBD06]) = v17;
  LOBYTE(STACK[0xBD05]) = v18;
  v23 = STACK[0xBD00];
  LOBYTE(STACK[0xBD00]) = STACK[0xBD04];
  LOBYTE(STACK[0xBD04]) = v23;
  v24 = *(&STACK[0xBD00] | v19);
  *(&STACK[0xBD00] | v19) = STACK[0xBD03];
  LOBYTE(STACK[0xBD03]) = v24;
  v25 = STACK[0xBD01];
  LOBYTE(STACK[0xBD02]) = STACK[0xBD00];
  LOWORD(STACK[0xBD00]) = v25;
  STACK[0xBD00] = vmla_s32(v22, STACK[0xBD00], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBD08];
  v27 = (1269228062 * STACK[0xBD08]) ^ v12;
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
  v48 = *(&STACK[0xBD08] + v13);
  *(&STACK[0xBD08] + v13) = STACK[0xBD0F];
  LOBYTE(STACK[0xBD0F]) = v48;
  v49 = *(&STACK[0xBD08] + v14);
  *(&STACK[0xBD08] + v14) = STACK[0xBD0E];
  LOBYTE(STACK[0xBD0E]) = v49;
  v50 = *(&STACK[0xBD08] + v15);
  *(&STACK[0xBD08] + v15) = STACK[0xBD0D];
  LOBYTE(STACK[0xBD0D]) = v50;
  v51 = STACK[0xBD08];
  LOBYTE(STACK[0xBD08]) = STACK[0xBD0C];
  v52 = *(&STACK[0xBD08] + v19);
  *(&STACK[0xBD08] + v19) = STACK[0xBD0B];
  LOBYTE(STACK[0xBD0C]) = v51;
  LOBYTE(STACK[0xBD0B]) = v52;
  v53 = STACK[0xBD09];
  LOBYTE(STACK[0xBD0A]) = STACK[0xBD08];
  LOWORD(STACK[0xBD08]) = v53;
  STACK[0xBD08] = vmla_s32(v22, STACK[0xBD08], vdup_n_s32(0x1000193u));
  *v1 = STACK[0xBD08] ^ STACK[0xBD00];
  return (*(STACK[0xF18] + 8 * (a1 + 6085)))();
}

uint64_t sub_100457B28@<X0>(int a1@<W6>, int a2@<W8>)
{
  if (v2 == ((12139 * (((a1 + 35187168) | 0x4C00103) ^ 0x6D91351)) ^ 0x162AC364))
  {
    a2 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((37059 * a2) ^ a1)))();
}

uint64_t sub_100457B88()
{
  STACK[0x10ED8] = *STACK[0x22F8];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x66CFBB08) + 1724889867) ^ 0x80E9A0C4) + 296753103;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 + 10188)))(v2);
}

uint64_t sub_100457D28@<X0>(int a1@<W8>)
{
  v2 = a1 & 0xFFFFFFFFC0FB17FFLL;
  STACK[0x7690] += (v2 + 763816538) & 0xD27935EE ^ 0xFFFFFFFFFFFFD944;
  LODWORD(STACK[0x5954]) = v1;
  v3 = STACK[0xF18];
  STACK[0x1270] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x525C)))();
}

uint64_t sub_100457DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0xF10];
  v6 = 0xB07141D9DCE065A1 * (((v4 ^ 0xD86C6D38A3B33750) + 0x671A90F1740585A9) ^ ((v4 ^ 0x3753A139ED8F49D3) - 0x77DAA30FC5C604D4) ^ ((v4 ^ 0xBEF7574D083CDE35) + 0x181AA84DF8A6CCELL)) - 0x206CB0BEF8655FA4;
  v7 = ((v6 ^ 0xC76F40E7A70D7A0ELL) + 0xA3EEFECD3CF19F4) ^ v6 ^ ((v6 ^ 0x6013535894BAD8AFLL) - 0x52BD03AC1F8744ADLL) ^ ((v6 ^ 0xEA25A0B5671DA315) + 0x27740FBE13DFC0E9) ^ ((v6 ^ 0x7FF7E3FEDF979DB6) - 0x4D59B30A54AA01B4);
  v8 = (((v7 >> 40) & 0x420) - ((v7 >> 40) & 0x1104) + 2632) & 0x1500 | (4096 - ((v7 >> 40) & 0x4800)) & 0x4800 | (((v7 >> 40) & 0x2040) - ((v7 >> 40) & 0x8210) + 17568) & 0xA200;
  LODWORD(v7) = BYTE3(v7);
  v9 = (v8 | 0xD1251735) - ((2 * v8) ^ 0xA24A2E6A) + (~v8 | 0x2EDAE8CA);
  v10 = (v9 & (v7 ^ 0xC124008E)) + (v7 ^ 0x3EDBFF71) - (v9 ^ v7 ^ 0x3EDBFF71);
  LODWORD(STACK[0xA4D4]) = ((v10 & 0x89524911 | v7 & 0x11) + 173167137) & 0x89524911 | ((v10 & 0x2488924A) + 612966986) & 0x2488924A | (642403784 - (v10 & 0x522524A4 | v7 & 0x24)) & 0x522524A4;
  return (*(STACK[0xF18] + 8 * (v5 - 28300)))(a1, a2, a3, a4, (LODWORD(STACK[0xA4D0]) + 65639042));
}

uint64_t sub_1004580A4()
{
  v2 = v1[44];
  STACK[0xE60] = v1[45];
  v3 = STACK[0xEC0];
  v4 = *(STACK[0xEC0] + 4 * (v2 & 0x3F ^ 0x11));
  v5 = v1[214];
  LODWORD(STACK[0xE90]) = v0 - 18941;
  v6 = (((v4 ^ 0x146AEA43) - 342551107) ^ ((v4 ^ 0x5B538940) - 1532201280) ^ ((v4 ^ 0x4E2D4BAC) - 1311591340)) + ((((v0 - 18941) ^ v5 ^ 0xAE0943CD) + 1375111667) ^ ((v5 ^ 0x119C87EB) - 295471083) ^ ((v5 ^ 0xBE81D949) + 1098786487)) + 1910252614;
  v1[214] = v6 ^ ((v6 ^ 0x64314B19) - 193108465) ^ ((v6 ^ 0x10B2882) - 1857616490) ^ ((v6 ^ 0xF57E6688) + 1697794976) ^ ((v6 ^ 0xFFF7D7FB) + 1874590445) ^ 0x6EA7FA47;
  v7 = v1[11];
  v8 = *(&off_1010A0B50 + (v0 ^ 0x70F6)) - 1762801083;
  v9 = *&v8[4 * (v1[12] & 0x3FLL ^ 0x11)];
  v10 = v1[103];
  LODWORD(STACK[0xE80]) = v10 ^ 0x11;
  v1[182] ^= *&v8[4 * ((((~(v10 | v9) & 0x22 | v10 & 0x20) ^ 0xFFFFFFF9) & (v10 & 0x38 ^ 0xF01886B ^ (v10 ^ 0x11) & (v9 ^ 0x18) & 0x3F) | (v10 ^ 0x11) & (v9 ^ 0x18) & 4) ^ 0xF01887B)] ^ 0xA13CFBE0;
  v11 = v1[31];
  v12 = *&v8[4 * (v11 & 0x3F ^ 0x11)];
  v13 = (((v12 ^ 0x3221C07C2E141C0CLL) - 0x3221C07C2E141C0CLL) ^ ((v12 ^ 0xD06A5F97D43EA1B0) + 0x2F95A0682BC15E50) ^ ((v12 ^ 0xE24B9FEB5B16465CLL) + 0x1DB46014A4E9B9A4)) + 3238288064u;
  v14 = (3435973837u * v13 + 0x2A518DF9933E86A0) >> 34;
  LODWORD(v13) = v14 | ((v13 > 0x10B1A0E87) << 30);
  v15 = v13 ^ 0xBEA1B6DA;
  LODWORD(v13) = (v13 ^ 0xEE80A5CA) & (2 * (v13 & 0x6F108988)) ^ v13 & 0x6F108988;
  v16 = ((2 * v15) ^ 0xA3627EA4) & v15 ^ (2 * v15) & 0x51B13F52;
  LODWORD(v13) = (v16 ^ 0x3E00) & (4 * v13) ^ v13;
  v17 = ((4 * (v16 ^ 0x50910152)) ^ 0x46C4FD48) & (v16 ^ 0x50910152) ^ (4 * (v16 ^ 0x50910152)) & 0x51B13F50;
  LODWORD(v13) = (v17 ^ 0x40803D40) & (16 * v13) ^ v13;
  v18 = ((16 * (v17 ^ 0x11310212)) ^ 0x1B13F520) & (v17 ^ 0x11310212) ^ (16 * (v17 ^ 0x11310212)) & 0x51B13F40;
  LODWORD(v13) = v13 ^ 0x51B13F52 ^ (v18 ^ 0x11113500) & (v13 << 8);
  v19 = (v13 << 16) & 0x41A00000 ^ v13 ^ ((v13 << 16) ^ 0xF000000) & (((v18 ^ 0x40A00A52) << 8) & 0x51B10000 ^ 0x40800000 ^ (((v18 ^ 0x40A00A52) << 8) ^ 0x313F0000) & (v18 ^ 0x40A00A52));
  LODWORD(v13) = *v1;
  v20 = v1[1];
  v21 = (*v1 & 0xD480100 ^ 0x1E009C58) & (*v1 & 0x1210989A ^ 0xD488548) ^ (*v1 & 0x100082 | 0x4480000);
  LODWORD(v14) = (v14 ^ (2 * v19) ^ 0x4588158) & (v21 ^ 0x81000082) ^ v21 & 0x1550898A;
  LODWORD(v14) = (((v1[129] ^ 0x222F95CE) - 573543886) ^ ((v1[129] ^ 0xED7F7BCA) + 310412342) ^ ((v1[129] ^ 0xF940D315) + 113192171)) - 1171136829 + (((v14 ^ 0xD8DA8BD) - 1715718639) ^ ((v14 ^ 0xFD0718BD) + 1765180945) ^ ((v14 ^ 0x8E754F7D) + 440717777));
  v22 = v1[13];
  STACK[0xE30] = v1[12];
  v23 = *(v3 + 4 * (v22 & 0x3F ^ 0x11));
  v1[129] = v14 ^ ((v14 ^ 0x7158475B) - 531121368) ^ ((v14 ^ 0x5A824C81) - 879906562) ^ ((v14 ^ 0xBAD56782) + 735747071) ^ ((v14 ^ 0xFFFF6FDB) + 1861260200) ^ 0x58E03E92;
  v24 = *&v8[4 * (v20 & 0x3F ^ 0x11)];
  LODWORD(v14) = *(STACK[0xEB0] + 4 * (v13 & 0x3F ^ 0x11));
  v25 = STACK[0xEB0];
  v1[173] = v11 & 0x1847604C ^ 0x95368E3;
  v26 = ((v1[165] ^ 0xFC4D622B) + 62037461) ^ ((v1[165] ^ 0x7A76C773) - 2054604659) ^ ((v1[165] ^ 0x872F8DF7) + 2026926601);
  v27 = v1[9];
  STACK[0xE00] = v1[8];
  v28 = v26 - (((v27 ^ 0xDBD583DA) + 606764070) ^ ((v27 ^ 0xA6F456C5) + 1493936443) ^ ((v27 ^ 0x4B31E80E) - 1261561870)) - 866952604;
  v29 = (2 * (v28 & 0xFEB0913A)) & (v28 ^ 0xDBA4172A) ^ v28 & 0xFEB0913A ^ ((2 * (v28 & 0xFEB0913A)) & 0x25000210 | 0x400);
  LODWORD(v13) = (2 * (v28 ^ 0xDBA4172A)) & 0x25148610 ^ 0x25148210 ^ ((2 * (v28 ^ 0xDBA4172A)) ^ 0x4A290C20) & (v28 ^ 0xDBA4172A);
  v30 = v29 ^ (4 * v29) & 0x25048410 ^ ((4 * v29) ^ 0x1000) & v13 ^ 0x25148210;
  LODWORD(v13) = (4 * v13) & 0x25148610 ^ 0x21048610 ^ ((4 * v13) ^ 0x94521840) & v13;
  v31 = ((16 * v30) ^ 0x51486100) & v13;
  LODWORD(v13) = (16 * v13) & 0x25148600 ^ 0x24148610 ^ ((16 * v13) ^ 0x51486100) & v13;
  v32 = (((16 * v30) & 0x25148610 ^ v30 ^ v31) << 8) & 0x25148600 ^ (16 * v30) & 0x25148610 ^ v30 ^ v31 ^ ((((16 * v30) & 0x25148610 ^ v30 ^ v31) << 8) ^ 0x14861000) & v13;
  v1[165] = v28 ^ (2 * ((v32 << 16) & 0x25140000 ^ v32 ^ ((v32 << 16) ^ 0x6100000) & ((v13 << 8) & 0x25140000 ^ 0x21100000 ^ ((v13 << 8) ^ 0x14860000) & v13))) ^ 0xB7A5B5B5;
  v33 = v1[26];
  v34 = *(v3 + 4 * (v1[25] & 0x3FLL ^ 0x11));
  LODWORD(v13) = v1[20];
  v35 = (v34 & 0xFC414359 ^ 0xBC004359) & (v13 ^ 0xC8414248);
  v36 = (v13 ^ 0x36103D11) & (v34 ^ 0xAD2A5579) ^ v13 & 0xAC3E7DD6;
  v37 = (v36 ^ 0xD961C2CF) & (v13 & 0x40410009 ^ 0xC560A4CE ^ v35) ^ v36 & 0x869F1860;
  LODWORD(v13) = ((v37 ^ 0x2DD23D81) + 1652222219) ^ ((v37 ^ 0x83E09066) - 867678994) ^ ((v37 ^ 0xD3425278) - 1662351628);
  LODWORD(STACK[0xE40]) = v13;
  v38 = (((-1015783222 - v13) ^ 0x2C991A04) - 1422774125) ^ (-1015783222 - v13) ^ (((-1015783222 - v13) ^ 0xFC8F81CC) + 2066000731) ^ (((-1015783222 - v13) ^ 0xD72C314C) + 1351031771) ^ (((-1015783222 - v13) ^ 0x7F6E7FED) - 121285252);
  LODWORD(STACK[0xDE0]) = v38;
  v39 = (((v1[186] ^ 0x49D61DA37345DCA6) - 0x49D61DA37345DCA6) ^ ((v1[186] ^ 0xEF831733EC1724B2) + 0x107CE8CC13E8DB4ELL) ^ ((v1[186] ^ 0xA6550A909E46D0BBLL) + 0x59AAF56F61B92F45)) + 1546135826;
  LODWORD(v39) = ((2863311531u * v39 - 0x5652143A1E5C0021) >> 33) | ((v39 > 0x817B1E56) << 31);
  LODWORD(v39) = (((v1[150] ^ 0xF39ED473) + 207694733) ^ ((v1[150] ^ 0xB1D94091) + 1311162223) ^ ((v1[150] ^ 0x7457A9F3) - 1951902195)) - 167431844 * v39 + ((v39 - 1932719620) * (v39 + 819136234) + 1543111442 * v39 - 1750738668) * (1932719620 - v39) + 1993676223;
  v40 = (2 * (v39 & 0xF1BFF9E2 ^ 0x6A000ABB)) & 0x62000280 ^ v39 & 0xF1BFF9E2 ^ 0x6A000ABB ^ ((2 * (v39 & 0xF1BFF9E2 ^ 0x6A000ABB)) ^ 0xD4001576) & (v39 ^ 0x9BBFF359);
  LODWORD(v13) = (2 * (v39 ^ 0x9BBFF359)) & 0x6A000ABA ^ 0x2A000A89 ^ ((2 * (v39 ^ 0x9BBFF359)) ^ 0xD4001576) & (v39 ^ 0x9BBFF359);
  v41 = (4 * v40) & 0x6A000AB8 ^ v40 ^ ((4 * v40) ^ 0xA8002AEC) & v13;
  LODWORD(v13) = (4 * v13) & 0x6A000AB8 ^ 0x42000013 ^ ((4 * v13) ^ 0xA8002AEC) & v13;
  v42 = (16 * v41) & 0x6A000AB0 ^ v41 ^ ((16 * v41) ^ 0x20000130) & v13;
  LODWORD(v13) = (16 * v13) & 0x6A000AB0 ^ 0x4A00000B ^ ((16 * v13) ^ 0xA000ABB0) & v13;
  v43 = v42 ^ (v42 << 8) & 0x6A000A00 ^ ((v42 << 8) ^ 0x2300) & v13 ^ 0x48000898;
  v1[150] = v39 ^ (2 * ((v43 << 16) & 0x6A000000 ^ v43 ^ ((v43 << 16) ^ 0xABB0000) & ((v13 << 8) & 0x6A000000 ^ 0x6A000000 ^ ((v13 << 8) ^ 0xA0000) & v13))) ^ 0x7AFD185;
  LODWORD(v39) = v1[46];
  LODWORD(STACK[0xE10]) = v1[45];
  LODWORD(v39) = *&v8[4 * (v39 & 0x3F ^ 0x11)];
  LODWORD(v39) = (v39 ^ 0xA13CFBE0) & (v7 ^ 0xB430235) ^ v39 & 0x3D533F24;
  v44 = v1[134];
  v45 = v38 & 0x3F ^ 0x29;
  v46 = *(v3 + 4 * v45);
  v47 = (v46 ^ 0x11428AF) & (v44 ^ 0xA5BE001A);
  v48 = (v44 ^ 0xC9EFC2EE) & (v7 ^ 0x54CD712C) ^ v44 & 0x62DD4C3D;
  v49 = (v46 & 0x93AE3D0B ^ 0x5C3EE968 ^ v47) & (v48 ^ 0xBF32BFD3) ^ v48 & 0xA2C53E9C;
  v50 = (v49 ^ 0x2001680) & (v39 & 0x57D596E8 ^ 0x45418408);
  LODWORD(v39) = (v49 ^ 0x5DFFC16F) & (v39 ^ 0xA75AECAC) ^ v49 & 0x864AD78C;
  LODWORD(v39) = (v39 ^ 0x53B53EE3) & (v49 & 0x138400C0 ^ 0x3E8B80F ^ v50) ^ v39 & 0xA9C2D198;
  v51 = ((v39 ^ 0x11AC9AEF) - 233184632) ^ ((v39 ^ 0x47FE8840) - 1538527191) ^ ((v39 ^ 0x2DFDC0) - 476543575);
  LODWORD(STACK[0xEA0]) = v51;
  v52 = (((v51 - 735539756) ^ 0x53B5C8C5) - 1938750895) ^ (v51 - 735539756) ^ (((v51 - 735539756) ^ 0x389E516B) - 413492225) ^ (((v51 - 735539756) ^ 0xB57D533B) + 1790548399) ^ (((v51 - 735539756) ^ 0xFE6DFFFF) + 564737387);
  LODWORD(v39) = (((((v51 - 44) ^ 0xC5) + 81) ^ (v51 - 44) ^ (((v51 - 44) ^ 0x6B) - 1) ^ (((v51 - 44) ^ 0x3B) - 81)) ^ (-106 - v51)) & 0x3F ^ 0x2A;
  LODWORD(STACK[0xDC0]) = v39;
  LODWORD(v39) = (((*(v3 + 4 * v39) ^ 0x1E188E1A) - 504925722) ^ ((*(v3 + 4 * v39) ^ 0xEAD35F91) + 355246191) ^ ((*(v3 + 4 * v39) ^ 0xF5DFF924) + 169871068)) + 1099076069;
  LODWORD(STACK[0xE70]) = v1[186];
  v1[186] = (((v39 ^ 0x53591B4B) + 302917645) ^ v39 ^ ((v39 ^ 0x1930D297) + 409461201) ^ ((v39 ^ 0xF3E7AB3) + 241781237) ^ ((v39 ^ 0x1BFF7FD7) + 447237265)) & 0x1847604C ^ 0x191468A7;
  v53 = v1[56];
  STACK[0xDD0] = v1[55];
  v1[183] ^= v1[154] & 0x4B923581 ^ 0xED830AFC ^ (v53 & 0x21042006 ^ 0xCC806E1C ^ (v53 & 0x252C328F ^ 0x6C93FD71) & (v1[154] ^ 0x4D955977)) & (v1[154] & 0xCF923F89 ^ 0x367DFD77);
  LODWORD(v39) = v1[52];
  STACK[0xDF0] = v1[51];
  LODWORD(v39) = *(v3 + 4 * (v39 & 0x3F ^ 0x11));
  v54 = ((v39 ^ 0xA21BE81E) + 1575229410) ^ ((v39 ^ 0x167D583C) - 377313340) ^ ((v39 ^ 0xB572988D) + 1250781043);
  v55 = (v54 + 18098351) * ((((v39 ^ 0x1A2E65B3) - 439248307) ^ ((v39 ^ 0x509B5334) - 1352356660) ^ ((v39 ^ 0x4BA11E28) - 1268850216)) + 1987777947) - 1969679596 * v54;
  LODWORD(v39) = ((v39 ^ 0x94B55686) + 1800055162) ^ ((v39 ^ 0xEA420891) + 364771183) ^ ((v39 ^ 0x7FE376B8) - 2145613496);
  LODWORD(v39) = (v55 + 14651721) * (v39 + 18098351) + 978295139 * v39;
  v56 = (v24 & 0x84481008 ^ 0x6DF7EF7A) & (v23 & 0x69B7EF72 ^ 0xE4CB7E4A) | v24 & 0x12000085;
  v57 = -326075256 * (((v56 ^ 0x1E0F7577) + 1908606553) ^ ((v56 ^ 0x121BD611) - 1646811841) ^ ((v56 ^ 0x9CBF58E) + 1174898338));
  v58 = v14 ^ 0x2001811;
  v59 = v14 & 0x82021840;
  v60 = v1[207];
  LODWORD(v14) = (v60 & 0xC02F1850 ^ 0xA1040) & (v14 ^ 0xC02F0040) ^ v14 & 0xC0210010;
  v61 = (v14 ^ 0xE6A120A7) & (v59 ^ 0xE48520A7 ^ (v60 & 0xC22F1851 ^ 0x82061041) & v58) ^ v14 & 0x2A0050;
  v62 = (((v61 ^ 0x62B30DDB) + 1823027683) ^ ((v61 ^ 0x211A8CD9) + 788574433) ^ ((v61 ^ 0xA526B9F5) - 1422096947)) + 347816683;
  v63 = ((v62 ^ 0x2F39ED8E) - 1978776650) ^ v62 ^ ((v62 ^ 0xC70BD6A3) + 1648130201) ^ ((v62 ^ 0x8D07D586) + 674266046) ^ ((v62 ^ 0x3FFDBF6F) - 1698033323);
  LODWORD(v39) = (((v1[147] ^ 0xD6A4D6B7) + 693840201) ^ ((v1[147] ^ 0x30C2B69B) - 818067099) ^ ((v1[147] ^ 0xD0765D3D) + 797549251)) - 1234100991 * v39 + (v39 - 1424141651) * (v39 - 190040660) - 130806123;
  v64 = (v39 ^ 0x27375005) & (2 * (v39 & 0xB7B41A29)) ^ v39 & 0xB7B41A29;
  LODWORD(v14) = ((2 * (v39 ^ 0x463F4415)) ^ 0xE316BC78) & (v39 ^ 0x463F4415) ^ (2 * (v39 ^ 0x463F4415)) & 0xF18B5E3C;
  v65 = (v14 ^ 0xE1001828) & (4 * v64) ^ v64;
  LODWORD(v14) = ((4 * (v14 ^ 0x10894204)) ^ 0xC62D78F0) & (v14 ^ 0x10894204) ^ (4 * (v14 ^ 0x10894204)) & 0xF18B5E38;
  v66 = (v14 ^ 0xC0095830) & (16 * v65) ^ v65;
  LODWORD(v14) = ((16 * (v14 ^ 0x3182060C)) ^ 0x18B5E3C0) & (v14 ^ 0x3182060C) ^ (16 * (v14 ^ 0x3182060C)) & 0xF18B5E00;
  v67 = v66 ^ 0xF18B5E3C ^ (v14 ^ 0x10814200) & (v66 << 8);
  v1[147] = v39 ^ (2 * ((v67 << 16) & 0x718B0000 ^ v67 ^ ((v67 << 16) ^ 0x5E3C0000) & (((v14 ^ 0xE10A1C3C) << 8) & 0x718B0000 ^ 0x70810000 ^ (((v14 ^ 0xE10A1C3C) << 8) ^ 0xB5E0000) & (v14 ^ 0xE10A1C3C)))) ^ 0xC2A29B40;
  v1[102] = -450344335;
  v68 = v1[213];
  LODWORD(v39) = (v68 & 0xA916CB86 ^ 0xA802C300) & (v1[31] ^ 0x80140002) ^ v68 & 0xA0040902;
  v69 = (2863311531u * (((v1[39] ^ 0x4A6732524303477CLL) - 0x4A6732524303477CLL) ^ ((v1[39] ^ 0x43BE8D81749A9807) - 0x43BE8D81749A9807) ^ ((v1[39] ^ 0x9D9BFD30189E26AuLL) - 0x9D9BFD30189E26ALL)) + 0x5AD4C532BCB0145BLL) >> 33;
  LODWORD(v69) = ((v69 ^ 0x7E57A8BF) + 449621930) ^ v69 ^ ((v69 ^ 0xC7537BB3) + 600341670) ^ ((v69 ^ 0x5C9FD41B) + 939840270) ^ ((v69 ^ 0x7EFFFFFE) + 442824937);
  LODWORD(v39) = (v69 & 0x54A93449 ^ 0xED9FCF86) & (v39 & 0x9060B82 ^ 0x90A8C785 ^ (v39 ^ 0x4C13F2CC) & (v68 & 0x28020284 ^ 0xE411F0C8)) | v69 & 0x2400030;
  LODWORD(v39) = (((v1[184] ^ 0x96CAA2E6) + 1765104922) ^ ((v1[184] ^ 0xF7E4FF17) + 135987433) ^ ((v1[184] ^ 0x603A755E) - 1614443870)) + 27264324 + (((v39 ^ 0x7C55D5CA) + 144363670) ^ ((v39 ^ 0x920E4D59) - 423540729) ^ ((v39 ^ 0x98A2AE7A) - 328357082));
  v1[184] = v39 ^ ((v39 ^ 0x72BFD721) - 1887291245) ^ ((v39 ^ 0xAD55B85D) + 1349015535) ^ ((v39 ^ 0xA0C380C7) + 1576955765) ^ ((v39 ^ 0x7DEBFFF7) - 2133454779) ^ 0x3D638E3;
  LODWORD(v39) = *&v8[4 * (v1[8] & 0x3F ^ 0x11)];
  LODWORD(v69) = *&v8[4 * (v1[81] & 0x3F ^ 0x11)];
  v70 = (v69 ^ 0x18410009) & (v39 & 0x98516A49 ^ 0x10000200);
  LODWORD(v39) = (v69 ^ 0xA13CFBE0) & (v39 ^ 0x19D89E59) ^ v69 & 0xB8E465B9;
  LODWORD(v39) = (v39 ^ 0x5B5B1E4B) & (v69 & 0x8410209 ^ 0x537B5C63 ^ v70) ^ v39 & 0x3C94C9DC;
  v71 = (v1[157] & 0x98516A49 ^ 0x501CB0A1) & (v1[157] & 0x76F0730 ^ 0xDB12F9D9) ^ v1[157] & 0x7630710;
  LODWORD(v69) = (v39 ^ 0x163DC50) & (v71 ^ 0xBE90655F) ^ v71 & 0x1D735408;
  LODWORD(v39) = (v39 ^ 0x9D1E4A51) & (v71 ^ 0x416F9AA0) ^ v71 & 0x1E712D70;
  LODWORD(v39) = (v69 & 0x872030B9 ^ 0xC80F9FBC ^ (v69 ^ 0xE36FBBF3) & (v1[139] ^ 0xB1300DA8)) & (v39 ^ 0xFF9EF7DF) ^ v39 & 0xB4D050F2;
  LODWORD(v39) = (((v1[153] ^ 0x8C39FC7) - 147038151) ^ ((v1[153] ^ 0x1037B6FE) - 272086782) ^ ((v1[153] ^ 0x2EE41428) - 786699304)) + 1936942597 + (((v39 ^ 0x288E397C) + 1512861506) ^ ((v39 ^ 0xB01A25FF) - 1028099133) ^ ((v39 ^ 0xD3FBB3AE) - 1587944044));
  v72 = (v39 ^ 0x6AC9DF3) & (2 * (v39 & 0x88CEDDFB)) ^ v39 & 0x88CEDDFB;
  LODWORD(v69) = ((2 * (v39 ^ 0x1634ACA7)) ^ 0x3DF4E2B8) & (v39 ^ 0x1634ACA7) ^ (2 * (v39 ^ 0x1634ACA7)) & 0x9EFA715C;
  v73 = (v69 ^ 0x4706018) & (4 * v72) ^ v72;
  LODWORD(v69) = ((4 * (v69 ^ 0x820A1144)) ^ 0x7BE9C570) & (v69 ^ 0x820A1144) ^ (4 * (v69 ^ 0x820A1144)) & 0x9EFA7158;
  v74 = (v69 ^ 0x1AE84150) & (16 * v73) ^ v73;
  LODWORD(v69) = ((16 * (v69 ^ 0x8412300C)) ^ 0xEFA715C0) & (v69 ^ 0x8412300C) ^ (16 * (v69 ^ 0x8412300C)) & 0x9EFA7140;
  v75 = v74 ^ 0x9EFA715C ^ (v69 ^ 0x8EA21100) & (v74 << 8);
  v1[153] = v39 ^ (2 * ((v75 << 16) & 0x1EFA0000 ^ v75 ^ ((v75 << 16) ^ 0x715C0000) & (((v69 ^ 0x1058601C) << 8) & 0x1EFA0000 ^ 0x48A0000 ^ (((v69 ^ 0x1058601C) << 8) ^ 0x7A710000) & (v69 ^ 0x1058601C)))) ^ 0xA39A0252;
  v1[213] ^= ((v1[144] & 0x42A00000 ^ 0xFDFFFFFF) & (v1[76] & 0x18516049 ^ 0xCEB4E828) & 0x858150A1 | v1[144] & 0x1001080) ^ (((v1[144] & 0x42A00000 ^ 0xFDFFFFFF) & (v1[76] & 0x18516049 ^ 0xCEB4E828) | v1[144] & 0x21081080) ^ 0x5A2756) & ((v1[9] & 0x40A00 | v1[55] & 0x84028536) ^ 0x7E7E235C) ^ 0xFEFE7E6D;
  v76 = ~((v57 + 856867280) ^ (2 * (((v57 + 856867280) ^ 0x1A) & (2 * ((v57 + 856867280) & 0xA43BAC38)) ^ (v57 + 856867280) & 0xA43BAC38))) & 0x3C;
  LODWORD(v39) = *(v25 + 4 * (v1[20] & 0x3F ^ 0x11));
  LODWORD(v39) = (((v1[102] ^ 0x5E9C7BF1) - 1587313649) ^ ((v1[102] ^ 0xF962385E) + 111003554) ^ ((v1[102] ^ 0x91EE7EBE) + 1846640962)) - (*(v3 + 4 * v76) & 0xEF42707A ^ 0x1282EAA ^ (v39 ^ 0xD952416B) & 0xFFD7F17F & (*(v3 + 4 * v76) ^ 0x114202F) | *(v3 + 4 * v76) & 0xA0001045 ^ 0xD440115 ^ (v39 & 0xAD441155 ^ 0x29441001) & (*(v3 + 4 * v76) ^ 0xAC401150)) + 2137037228;
  v77 = (v39 ^ 0xA68F1354) & (2 * (v39 & 0xB6AFA365)) ^ v39 & 0xB6AFA365;
  LODWORD(v69) = ((2 * (v39 ^ 0xCAD51116)) ^ 0xF8F564E6) & (v39 ^ 0xCAD51116) ^ (2 * (v39 ^ 0xCAD51116)) & 0x7C7AB272;
  v78 = (v69 ^ 0x78700020) & (4 * v77) ^ v77;
  LODWORD(v69) = ((4 * (v69 ^ 0x40A9211)) ^ 0xF1EAC9CC) & (v69 ^ 0x40A9211) ^ (4 * (v69 ^ 0x40A9211)) & 0x7C7AB270;
  v79 = (v69 ^ 0x706A8040) & (16 * v78) ^ v78;
  LODWORD(v69) = ((16 * (v69 ^ 0xC103233)) ^ 0xC7AB2730) & (v69 ^ 0xC103233) ^ (16 * (v69 ^ 0xC103233)) & 0x7C7AB270;
  v80 = v79 ^ 0x7C7AB273 ^ (v69 ^ 0x442A2200) & (v79 << 8);
  LODWORD(v39) = v39 ^ (2 * ((v80 << 16) & 0x7C7A0000 ^ v80 ^ ((v80 << 16) ^ 0x32730000) & (((v69 ^ 0x38509043) << 8) & 0x7C7A0000 ^ 0x4480000 ^ (((v69 ^ 0x38509043) << 8) ^ 0x7AB20000) & (v69 ^ 0x38509043)))) ^ 0x18AEFA92;
  v81 = v1[53];
  LODWORD(STACK[0xDB0]) = v1[54];
  v82 = *(v25 + 4 * (v81 & 0x3F ^ 0x11));
  v1[102] = v39;
  LODWORD(v39) = v1[167] & 0xFECC7686 ^ 0x629D6;
  LODWORD(STACK[0xE20]) = v63;
  v1[110] = v39 - ((2 * v63) ^ 0xB590A388) + 907033874 + (~(2 * (v39 - ((2 * v63) ^ 0xB590A388))) | 0x93DF85DF);
  v83 = *(v3 + 4 * (v1[38] & 0x3FLL ^ 0x11));
  LODWORD(v39) = (((v1[132] ^ 0x32579EAB) - 844603051) ^ ((v1[132] ^ 0x86FF51DC) + 2030087716) ^ ((v1[132] ^ 0x82B8F266) + 2101808538)) - (((v83 ^ 0xA27FE6AE) + 1568676178) ^ ((v83 ^ 0x5597C316) - 1436009238) ^ ((v83 ^ 0xF6FC0D17) + 151253737)) - 1994515834;
  v1[132] = v39 ^ ((v39 ^ 0x7B3FF5C) - 1402075512) ^ ((v39 ^ 0xE7520E06) + 1284503518) ^ ((v39 ^ 0x4E1C0881) - 440274597) ^ ((v39 ^ 0xFADFFFFF) + 1359087141) ^ 0x62323B35;
  v1[137] = -126801023;
  v84 = *(v25 + 4 * (v33 & 0x3F ^ 0x11));
  LODWORD(v39) = (((v84 ^ 0xF3C02AFA) + 205509894) ^ ((v84 ^ 0xAFF6B867) + 1342785433) ^ ((v84 ^ 0x6A26AF8C) - 1780920204)) + 1835957231;
  v85 = (((v84 ^ 0x493A5961) - 1228560737) ^ ((v84 ^ 0xD5510251) + 716111279) ^ ((v84 ^ 0xAA7B6621) + 1434753503)) - 1451968221;
  v86 = v39 * v85 - 985436115 * (-1292035862 * v85 - 1163830682 * v39);
  LODWORD(v39) = (((v1[168] ^ 0xC93A307) - 211002119) ^ ((v1[168] ^ 0x79172C72) - 2031561842) ^ ((v1[168] ^ 0x7490A7DA) - 1955637210)) - ((-1280756307 - v51) >> 1) + 693342869;
  v87 = (v39 ^ 0xD7B85512) & (2 * (v39 & 0xD7C0961A)) ^ v39 & 0xD7C0961A;
  v88 = ((2 * (v39 ^ 0x72397516)) ^ 0x4BF3C618) & (v39 ^ 0x72397516) ^ (2 * (v39 ^ 0x72397516)) & 0xA5F9E30C;
  v89 = (v88 ^ 0x100C008) & (4 * v87) ^ v87;
  v90 = ((4 * (v88 ^ 0xA4082104)) ^ 0x97E78C30) & (v88 ^ 0xA4082104) ^ (4 * (v88 ^ 0xA4082104)) & 0xA5F9E308;
  v91 = v89 ^ 0xA5F9E30C ^ (v90 ^ 0x85E18000) & (16 * v89);
  v92 = (16 * (v90 ^ 0x2018630C)) & 0xA5F9E300 ^ 0xA061C30C ^ ((16 * (v90 ^ 0x2018630C)) ^ 0x5F9E30C0) & (v90 ^ 0x2018630C);
  v93 = (v91 << 8) & 0xA5F9E300 ^ v91 ^ ((v91 << 8) ^ 0xF9E30C00) & v92;
  LODWORD(v39) = v39 ^ (2 * ((v93 << 16) & 0x25F90000 ^ v93 ^ ((v93 << 16) ^ 0x630C0000) & ((v92 << 8) & 0x25F90000 ^ 0x4180000 ^ ((v92 << 8) ^ 0x79E30000) & v92))) ^ 0x9CF578AD;
  v94 = *(v3 + 4 * (v1[50] & 0x3F ^ 0x11));
  v1[168] = v39;
  v95 = v1[151];
  LODWORD(v39) = (*(v3 + 4 * v76) & 0x1CBD0CF ^ 0xEF00228F ^ (*(v3 + 4 * v76) & 0x11EBD4EF ^ 0xEF142BBF) & (v95 ^ 0xD9DBCFDE) | *(v3 + 4 * v76) & 0xEE142B10 ^ 0x142800) ^ (v1[90] & 0x125FC35C | 0x24003C01);
  LOBYTE(v76) = *(v25 + 4 * (v1[67] & 0x3F ^ 0x11));
  v1[125] = v39;
  LODWORD(v39) = (((v95 ^ 0x9383E424) + 1820072924) ^ ((v95 ^ 0x1BB31D66) - 464723302) ^ ((v95 ^ 0xBE20C453) + 1105148845)) + 996779704;
  v96 = (v39 ^ 0xC02488FA) & (2 * (v39 & 0xE846D2FC)) ^ v39 & 0xE846D2FC;
  v97 = ((2 * (v39 ^ 0x802D0D22)) ^ 0xD0D7BFBC) & (v39 ^ 0x802D0D22) ^ (2 * (v39 ^ 0x802D0D22)) & 0x686BDFDE;
  v98 = (v97 ^ 0x40039F90) & (4 * v96) ^ v96;
  v99 = ((4 * (v97 ^ 0x28284042)) ^ 0xA1AF7F78) & (v97 ^ 0x28284042) ^ (4 * (v97 ^ 0x28284042)) & 0x686BDFD8;
  v100 = (v99 ^ 0x202B5F40) & (16 * v98) ^ v98;
  v101 = ((16 * (v99 ^ 0x48408086)) ^ 0x86BDFDE0) & (v99 ^ 0x48408086) ^ (16 * (v99 ^ 0x48408086)) & 0x686BDFC0;
  v102 = v100 ^ 0x686BDFDE ^ (v101 ^ 0x29DD00) & (v100 << 8);
  v103 = v1[87];
  HIDWORD(v104) = v103 ^ 0x11111111;
  LODWORD(v104) = v103 ^ 0x36103D00;
  v105 = (v102 << 16) & 0x686B0000 ^ v102 ^ ((v102 << 16) ^ 0x5FDE0000) & (((v101 ^ 0x6842021E) << 8) & 0x686B0000 ^ (((v101 ^ 0x6842021E) << 8) ^ 0x6BDF0000) & (v101 ^ 0x6842021E) ^ 0x200000);
  v106 = (v104 >> 6) * (v104 >> 6);
  v1[95] = v106 - ((2 * v106) & 0x6C207A22) + 907033873;
  v107 = (*(v3 + 4 * (v1[66] & 0x3F ^ 0x11)) >> 1) ^ 0x8A1457;
  v1[151] = v39 ^ (v107 * v107 * v107) ^ (2 * v105) ^ 0x9E155051;
  v108 = *(v25 + 4 * v45);
  LODWORD(v39) = (((v108 ^ 0xD2DF4135) + 757120715) ^ ((v108 ^ 0xCF3919AA) + 818341462) ^ ((v108 ^ 0x2BF6658E) - 737568142)) - 1992681049;
  v109 = (((v108 ^ 0x98AC0E0A) + 1733554678) ^ ((v108 ^ 0xE057FC27) + 531104729) ^ ((v108 ^ 0x4EEBCF3C) - 1324076860)) - 1698293426;
  v110 = 173538441 * (-1415953685 * v39 - 1484639846 * v109) + v39 * v109;
  LODWORD(v39) = 2 * v1[6];
  v111 = (v82 ^ 0xC9EFC2EE) & (v39 ^ 0x81CB6E06) ^ v82 & 0x1214EBDB;
  LODWORD(v39) = (v82 ^ 0x36103D11) & (v39 ^ 0x2F9B4123) ^ v82 & 0x43BB3B01;
  LODWORD(v39) = (v111 & 0x538B3756 ^ 0x344B7696 ^ (v111 ^ 0xFFFB3D35) & (v1[122] ^ 0x659B0A47)) & (v39 ^ 0xFDEFC6FE) ^ v39 & 0x983FBC7D;
  LODWORD(v39) = (((v1[64] ^ 0xEE89BFB4) + 292962380) ^ ((v1[64] ^ 0x87DAD1B) - 142454043) ^ ((v1[64] ^ 0xD0E42FBE) + 790351938)) - (((v39 ^ 0x12230E8C) + 2026063843) ^ ((v39 ^ 0x77762917) + 496394362) ^ ((v39 ^ 0x2855C18) + 1751455095)) - 1497497840;
  v1[64] = v39 ^ ((v39 ^ 0xC9EDA94B) + 1433393574) ^ ((v39 ^ 0x22AA239E) - 1104653455) ^ ((v39 ^ 0x66E5BA3B) - 93861162) ^ ((v39 ^ 0xEEDFBFFF) + 1918750482) ^ 0x556DB200;
  v112 = v1[63];
  v1[62] ^= 0x3A84C6DDu;
  v1[82] = 438604885;
  v113 = v1[28];
  v1[27] ^= ((((v52 ^ 0xB7123DF2) + 1013588461) ^ ((v52 ^ 0xBBEF8E51) + 815239760) ^ ((v52 ^ 0x2CC686C9) + 666802904)) + (((v94 ^ 0xFA9AE46) + 810963386) ^ ((v94 ^ 0x29422004) + 381542396) ^ ((v94 ^ 0x27FFA6ED) + 402675987)) + 366018362) & ((v1[122] ^ 0x36103D11u) / 5);
  v114 = *(v3 + 4 * (v1[55] & 0x3F ^ 0x11)) ^ 0x11428AF;
  v115 = v114 >> (v76 & 0x1F ^ 0x11);
  LODWORD(v39) = v114 << (15 - (((v76 ^ 0xC) + 20) ^ ((v76 ^ 1) - 1) ^ ((v76 ^ 0x1C) + 4)));
  v116 = v1[51];
  v1[50] ^= v1[81] & 0x7BE82C2E ^ v115 ^ 0x3217EF50 ^ v39;
  LODWORD(v39) = (v1[186] & 0xCF5DAC9F ^ 0x213639EF) + 1341851024 + (((v1[22] ^ 0x3C60C1D0) - 1012974032) ^ ((v1[22] ^ 0xBC7D7C21) + 1132626911) ^ ((v1[22] ^ 0xB60D80E0) + 1240629024));
  v1[22] = v39 ^ ((v39 ^ 0x3445E6AB) - 766455509) ^ ((v39 ^ 0x3368C659) - 713166375) ^ ((v39 ^ 0x61309733) - 2027577165) ^ ((v39 ^ 0x7FF77FBF) - 1713223617) ^ 0x2FFAF56F;
  v117 = v1[15];
  LODWORD(v39) = *&v8[4 * (v1[14] & 0x3FLL ^ 0x11)];
  v118 = *(v3 + 4 * v45);
  LODWORD(v13) = *(v3 + 4 * (STACK[0xE00] & 0x3F ^ 0x11));
  v119 = v1[40];
  v120 = *(v3 + 4 * (v1[39] & 0x3FLL ^ 0x11));
  v1[188] = (-149655959 - (((v39 ^ 0x4EE51EE7) - 1323638503) ^ ((v39 ^ 0x33097F62) - 856260450) ^ ((v39 ^ 0xDCD09A65) + 590308763))) & (*(v25 + 4 * (v1[18] & 0x3F ^ 0x11)) ^ 0x36103D11) ^ 0x11428AF;
  LODWORD(v39) = *&v8[4 * (v1[80] & 0x3F ^ 0x11)];
  v121 = 2 * *(v3 + 4 * (v1[65] & 0x3F ^ 0x11));
  v1[178] ^= v121 & 0x28C9802 ^ 0x6A18335A ^ (v121 ^ 0x6894AA00) & (v39 & 0x6A9CBB5A ^ 0x480C9818) | v121 & 0xDC606412 ^ 0x204012 ^ (v121 ^ 0x228515E) & (v39 ^ 0x7D5C9FF2);
  LODWORD(v39) = v57 + (((v119 ^ 0x85676F24) + 2056818908) ^ ((v119 ^ 0x7CF03B3A) - 2096118586) ^ ((v119 ^ 0xCF87690F) + 813209329)) + 224307997;
  v122 = v1[59];
  v1[60] ^= (((v110 + 1486387134) * (v108 ^ 0x36103D11)) | v39) & 0x125FC35C | ((v110 + 1486387134) * (v108 ^ 0x36103D11)) & v39;
  LODWORD(v39) = v1[122];
  v123 = (((v39 ^ 0x2932094A) - 691145034) ^ ((v39 ^ 0xD562B2A4) + 714952028) ^ ((v39 ^ 0xCA4086FF) + 901740801)) - 2008667493;
  v124 = (((v39 ^ 0xADBFD8CC) + 1379936052) ^ ((v39 ^ 0xF0BA38B9) + 256231239) ^ ((v39 ^ 0x6B15DD64) - 1796595044)) + 926167468;
  v125 = *(v25 + 4 * LODWORD(STACK[0xDC0]));
  v126 = v125 & 0xAC14A02 ^ 0x2000800 ^ (v1[191] & 0x1ADD6A67 ^ 0xAD56225) & (v125 ^ 0x12102801) | (v1[191] & 0x2850004 | v1[41] & 0xE5229598) ^ 0x2810000;
  v127 = *&v8[4 * (*(v25 + 4 * (v1[81] & 0x3F ^ 0x11)) & 0x3F ^ 0x11)];
  v1[195] = v126 ^ 0x514B927;
  v128 = *(v3 + 4 * (STACK[0xE30] & 0x3F ^ 0x11));
  v129 = 2132122313 * (1046486461 * v123 + 1847854022 * v124) + v123 * v124;
  v130 = (((v128 ^ 0xAB5D09D8) + 1419965992) ^ ((v128 ^ 0x4E020802) - 1308755970) ^ ((v128 ^ 0xE44B2975) + 464836235)) + 1496870442;
  v131 = *(v3 + 4 * (STACK[0xDD0] & 0x3F ^ 0x11));
  v132 = (((v131 ^ 0xDDF2CA7E) + 571291010) ^ ((v131 ^ 0xC7990B5C) + 946271396) ^ ((v131 ^ 0x1B7FE98D) - 461367693)) + 988435292;
  v133 = v132 * v130 - 1674049835 * (-2014962447 * v132 + 1991823239 * v130);
  v134 = (((v1[208] ^ 0x7581EDEA) - 1971449322) ^ ((v1[208] ^ 0x8EB0E750) + 1901009072) ^ ((v1[208] ^ 0xFA252215) + 98229739)) + 1478565404;
  v135 = 729460605 - ((((v86 - 741608548) * (v84 ^ 0x36103D11)) | v134) & 0x5EA5C82B | ((v86 - 741608548) * (v84 ^ 0x36103D11)) & v134);
  v136 = (v135 ^ 0xE8AE328F) & (2 * (v135 & 0xECCCB0CF)) ^ v135 & 0xECCCB0CF;
  v137 = ((2 * (v135 ^ 0xF8B71207)) ^ 0x28F74590) & (v135 ^ 0xF8B71207) ^ (2 * (v135 ^ 0xF8B71207)) & 0x147BA2C8;
  v138 = v135 ^ (2 * ((((4 * (v137 ^ 0x1408A248)) ^ 0x51EE8B20) & (v137 ^ 0x1408A248) ^ (4 * (v137 ^ 0x1408A248)) & 0x147BA2C0) & (16 * (v137 & (4 * v136) ^ v136)) ^ v137 & (4 * v136) ^ v136)) ^ 0x28F74590;
  v139 = ((v129 + 820796046) * (v39 ^ 0x36103D11)) & 0xA7410FF7 | (v127 ^ 0xF9820BE8) & ~((v129 + 820796046) * (v39 ^ 0x36103D11));
  v140 = *&v8[4 * (STACK[0xE60] & 0x3F ^ 0x11)];
  v141 = (v140 ^ 0x5EC3041F) & (v139 ^ 0xE611B7F0) ^ v140 & 0x4150B807;
  v1[161] ^= v141 & 0x1E120931 ^ 0x1E120930 ^ (v141 ^ 0xBFBFFFF8) & (v1[96] ^ 0x28023420) | v140 & 0xCDB020C0 ^ 0x813020C0 ^ (v140 ^ 0xA13CFBE0) & (v139 ^ 0x950ED0C8) | (v133 - 71622113);
  LODWORD(STACK[0xE00]) = v138;
  v142 = *(v3 + 4 * (v138 & 0x3F ^ 0x1Fu));
  v1[186] = 323742707;
  LODWORD(v39) = *(v3 + 4 * (v1[60] & 0x3F ^ 0x11));
  v143 = (((v39 ^ 0x59A66BC1) - 1504078785) ^ ((v39 ^ 0x239F6AF1) - 597650161) ^ ((v39 ^ 0x7B2D299F) - 2066557343)) + 877177819;
  LODWORD(v39) = (((v39 ^ 0x4056F99B) - 1079441819) ^ ((v39 ^ 0xAA32E9BE) + 1439503938) ^ ((v39 ^ 0xEB70388A) + 344967030)) + 1544931884;
  v144 = v143 * v39 + 1273035669 * (1796322436 * v39 + 1797696439 * v143);
  v1[102] = v112;
  v145 = *(v25 + 4 * (v1[29] & 0x3F ^ 0x11));
  LODWORD(v39) = (((v145 ^ 0x9BE60F2F) + 1679421649) ^ ((v145 ^ 0x8AD90B5E) + 1965487266) ^ ((v145 ^ 0x272F3960) - 657406304)) - 2061682096;
  v146 = (((v145 ^ 0x59A1A13F) - 1503764799) ^ ((v145 ^ 0x82935D3F) + 2104271553) ^ ((v145 ^ 0xED22C111) + 316489455)) + 1852729853;
  v147 = 1015063721 * (566371417 * v146 + 998839028 * v39) + v39 * v146;
  v148 = STACK[0xDE0];
  v149 = v1[106];
  LODWORD(STACK[0xE30]) = (v149 ^ 0x36103D11u) >> (STACK[0xDE0] & 0x15 ^ 1);
  LODWORD(v39) = LODWORD(STACK[0xE40]) - 867220571;
  LOBYTE(v39) = v39 ^ (2 * (((2 * (v39 ^ 0xBC)) ^ 0xC8) & (v39 ^ 0xBC) & (4 * (((2 * v39) & 0xB4 ^ 0x5A) & v39)) ^ ((2 * v39) & 0xB4 ^ 0x5A) & v39));
  LODWORD(STACK[0xE40]) = (v149 ^ 0x11) << ((v39 ^ 8) & 0x1B ^ 0x12) << (v39 & 4);
  LODWORD(STACK[0xE60]) = v13 & 0x8590C318 ^ 0x7B7F3CEF ^ (v13 ^ 0xFEEBD750) & (v118 ^ 0x7B7B1448);
  v150 = 290167469 - (((v120 ^ 0x5D07B2BD) - 1560785597) ^ ((v120 ^ 0x2DF029FC) - 770714108) ^ ((v120 ^ 0x71E3B3EE) - 1910748142));
  LODWORD(v69) = (((v117 ^ 0x558A579A) - 1435129754) ^ ((v117 ^ 0xB5E8D32A) + 1243032790) ^ ((v117 ^ 0xD672B9A1) + 697124447)) - (((v142 ^ 0x9D8EAE83) + 1651593597) ^ ((v142 ^ 0x6125A2D3) - 1629856467) ^ ((v142 ^ 0xFDBF24FF) + 37804801)) - 1912409331;
  v1[15] = v69 ^ ((v69 ^ 0x4002DDA1) - 419693322) ^ ((v69 ^ 0x3F257B0B) - 1713612192) ^ ((v69 ^ 0x59CE87FE) - 13130069) ^ ((v69 ^ 0x7FEFFFFF) - 652812628) ^ 0x6F16E3BA;
  v1[170] ^= 0x16001001 ^ ((v144 + 776910972) & 0x69B7EF72 | v1[69] & 0x9648108D);
  LODWORD(v69) = (*(v3 + 4 * (v116 & 0x3F ^ 0x11)) & 0x46AA1512 ^ 0xB955EA6B) + (((v1[204] ^ 0x26B3F0BA) - 649326778) ^ ((v1[204] ^ 0x6F64F76E) - 1868887918) ^ ((v1[204] ^ 0x48C32F7B) - 1220751227)) + 156807017;
  v1[204] = v69 ^ ((v69 ^ 0x955E2BDF) + 1659196059) ^ ((v69 ^ 0xAC23B75A) + 1536740896) ^ ((v69 ^ 0x4ED6E5C1) - 1183998843) ^ ((v69 ^ 0x7FEFFFFE) - 2007726404) ^ 0x950AE15;
  v1[206] ^= LODWORD(STACK[0xE10]) ^ ((v147 - 526235116) * (v145 ^ 0x36103D11) - ((2 * (v147 - 526235116) * (v145 ^ 0x36103D11)) & 0x6C207A22) + 907033873);
  LODWORD(v69) = (v1[79] ^ 0x36103D11u) / 3 + (((v1[99] ^ 0xC115A76E) + 1055545490) ^ ((v1[99] ^ 0x3B388510) - 993559824) ^ ((v1[99] ^ 0xCC3D1F6F) + 868409489)) - 1352940291;
  v151 = (v69 ^ 0x94267956) & (2 * (v69 & 0x86B47814)) ^ v69 & 0x86B47814;
  v152 = ((2 * (v69 ^ 0x9D065956)) ^ 0x37644284) & (v69 ^ 0x9D065956) ^ (2 * (v69 ^ 0x9D065956)) & 0x1BB22142;
  v153 = (v152 ^ 0x13200000) & (4 * v151) ^ v151;
  v154 = ((4 * (v152 ^ 0x8922142)) ^ 0x6EC88508) & (v152 ^ 0x8922142) ^ (4 * (v152 ^ 0x8922142)) & 0x1BB22140;
  v155 = v153 ^ 0x1BB22142 ^ (v154 ^ 0xA800100) & (16 * v153);
  v156 = (16 * (v154 ^ 0x11322042)) & 0x1BB22140 ^ 0x902142 ^ ((16 * (v154 ^ 0x11322042)) ^ 0xBB221420) & (v154 ^ 0x11322042);
  v157 = (v155 << 8) & 0x1BB22100 ^ v155 ^ ((v155 << 8) ^ 0xB2214200) & v156;
  v1[99] = v69 ^ (2 * ((v157 << 16) & 0x1BB20000 ^ v157 ^ ((v157 << 16) ^ 0x21420000) & ((v156 << 8) & 0x1BB20000 ^ 0x9920000 ^ ((v156 << 8) ^ 0x32210000) & v156))) ^ 0xA1840781;
  LODWORD(v69) = *&v8[4 * (v1[56] & 0x3F ^ 0x11)];
  HIDWORD(v104) = v69 ^ 0x3FFFE0;
  LODWORD(v104) = v69 ^ 0x20000000;
  v1[112] ^= 0x26001510 ^ (*(v25 + 4 * (v1[80] & 0x3F ^ 0x11)) & 0x67AE95B6 | (v104 >> 23) & 0x98516A49);
  LODWORD(v69) = *(v25 + 4 * (v1[69] & 0x3F ^ 0x11)) & 0x9C ^ 0x8C;
  LODWORD(v39) = ((2 * (v1[170] & 0x62CE9C37 | *(v3 + 4 * (v1[66] & 0x3F ^ 0x11)) & 0x1D3163C8)) ^ 0x228515E) + (((v1[197] ^ 0x77AE4ADF) - 2007911135) ^ ((v1[197] ^ 0x81A854F0) + 2119674640) ^ ((v1[197] ^ 0xF7123680) + 149801344)) + 647035984;
  v158 = (v39 ^ 0xD82B2A5F) & (2 * (v39 & 0xDA832C5F)) ^ v39 & 0xDA832C5F;
  v159 = ((2 * (v39 ^ 0x592F72E9)) ^ 0x758BD6C) & (v39 ^ 0x592F72E9) ^ (2 * (v39 ^ 0x592F72E9)) & 0x83AC5EB6;
  v160 = (v159 ^ 0x2081024) & (4 * v158) ^ v158;
  v161 = ((4 * (v159 ^ 0x80A44292)) ^ 0xEB17AD8) & (v159 ^ 0x80A44292) ^ (4 * (v159 ^ 0x80A44292)) & 0x83AC5EB0;
  v162 = (v161 ^ 0x2A05A90) & (16 * v160) ^ v160;
  v163 = ((16 * (v161 ^ 0x810C0426)) ^ 0x3AC5EB60) & (v161 ^ 0x810C0426) ^ (16 * (v161 ^ 0x810C0426)) & 0x83AC5EA0;
  v164 = v162 ^ 0x83AC5EB6 ^ (v163 ^ 0x2844A00) & (v162 << 8);
  v1[197] = v39 ^ (2 * ((v164 << 16) & 0x3AC0000 ^ v164 ^ ((v164 << 16) ^ 0x5EB60000) & (((v163 ^ 0x81281496) << 8) & 0x3AC0000 ^ 0x3A00000 ^ (((v163 ^ 0x81281496) << 8) ^ 0x2C5E0000) & (v163 ^ 0x81281496)))) ^ 0xD987B99C;
  LODWORD(v39) = *(v3 + 4 * (STACK[0xDF0] & 0x3F ^ 0x11));
  v165 = v1[208];
  v166 = (v39 ^ 0xFEEBD750) & (v165 ^ 0x8306AE86) ^ v39 & 0x7DED79D6;
  v1[31] ^= 0x22008 ^ ((v166 & 0xC289225 ^ 0x8225 ^ (v166 ^ 0x148625) & (v1[161] ^ 0xC3C9200) | v39 & 0x4C148200 ^ 0x140000 ^ (v39 ^ 0x140025) & (v165 ^ 0x4C008225)) & 0x4CBC9625 | v139 & 0xA143215A);
  LODWORD(v39) = (*&v8[4 * (v122 & 0x3F ^ 0x11)] & 0x69A5EBCA | *(v3 + 4 * (v113 & 0x3F ^ 0x11)) & 0x965A1435) ^ 0x2134EBE5;
  v167 = *&v8[4 * (v1[106] & 0x3F ^ 0x11)];
  LODWORD(v39) = (((v1[134] ^ 0x621249E4) - 1645365732) ^ ((v1[134] ^ 0x24A511E) - 38424862) ^ ((v1[134] ^ 0x564825EB) - 1447568875)) - ((v39 >> -(((v167 ^ 0x12) + 14) ^ ((v167 ^ 5) + 27) ^ ((v167 ^ 0xF7) + 9))) ^ (v39 << v167)) - 1785262324;
  v168 = (v39 ^ 0xB27C0EB4) & (2 * (v39 & 0xA0792E05)) ^ v39 & 0xA0792E05;
  v169 = ((2 * (v39 ^ 0xB2FE56B6)) ^ 0x250EF166) & (v39 ^ 0xB2FE56B6) ^ (2 * (v39 ^ 0xB2FE56B6)) & 0x128778B2;
  v170 = (v169 ^ 0x47020) & (4 * v168) ^ v168;
  v171 = ((4 * (v169 ^ 0x12810891)) ^ 0x4A1DE2CC) & (v169 ^ 0x12810891) ^ (4 * (v169 ^ 0x12810891)) & 0x128778B0;
  v172 = (v171 ^ 0x2056080) & (16 * v170) ^ v170;
  v173 = ((16 * (v171 ^ 0x10821833)) ^ 0x28778B30) & (v171 ^ 0x10821833) ^ (16 * (v171 ^ 0x10821833)) & 0x128778B0;
  v174 = v172 ^ 0x128778B3 ^ (v173 ^ 0x70800) & (v172 << 8);
  v1[134] = v39 ^ (2 * ((v174 << 16) & 0x12870000 ^ v174 ^ ((v174 << 16) ^ 0x78B30000) & (((v173 ^ 0x12807083) << 8) & 0x12870000 ^ 0x10870000 ^ (((v173 ^ 0x12807083) << 8) ^ 0x7780000) & (v173 ^ 0x12807083)))) ^ 0x9261E272;
  v175 = STACK[0xDB0];
  v176 = v1[122];
  LODWORD(v39) = (v176 ^ 0xC9EFC2EE) & (LODWORD(STACK[0xDB0]) ^ 0x4BBDD4D1) ^ v176 & 0x8252163F;
  v177 = v39 & 0xFB2D7409 ^ 0x7B2D7401 ^ (v39 ^ 0x7FBDFDD1) & (v1[202] ^ 0xFA395CA6);
  LODWORD(STACK[0xE10]) = v69 + v150;
  LODWORD(STACK[0xDF0]) = (2 * (v69 + v150)) & 0xEC;
  v1[19] ^= (v177 | v176 & 0xE8F23538 ^ 0x20103510 ^ (v176 ^ 0x36103D11) & (v175 ^ 0xDEE20829)) / 3;
  v1[154] ^= (*(v25 + 4 * (v1[1] & 0x3F ^ 0x11)) & 0xF0143A3A ^ 0x325BF954) / 5;
  LODWORD(v69) = STACK[0x53AC];
  LODWORD(STACK[0xDC0]) = v1[107] & 0xDD ^ 0x11;
  LODWORD(STACK[0xDB0]) = (2 * v1[144]) ^ 0x22;
  v178 = *(STACK[0xF18] + 8 * ((65524 * ((((v69 ^ 0x2E430F46) - 776146758) ^ ((v69 ^ 0x4C4DFD0F) - 1280179471) ^ ((v69 ^ 0x8946BF49) + 1991852215)) != 347583232)) ^ v0));
  LODWORD(STACK[0xDA0]) = v148 & 0xA;
  return v178();
}

uint64_t sub_10045C2A4@<X0>(int a1@<W8>)
{
  *(v3 + 1548) = v2;
  *(v3 + 1544) = a1;
  return (*(STACK[0xF18] + 8 * (v1 - 11341)))();
}

uint64_t sub_10045C470()
{
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16280)))(STACK[0x31A8]);
  v2 = (*(v1 + 8 * (v0 ^ 0x41E8)))(STACK[0x6370]);
  return (*(v1 + 8 * (v0 - 20631)))(v2);
}

uint64_t sub_10045C5B4()
{
  v0 = 3 * (STACK[0xF10] ^ 0x9FEA);
  v1 = 19 * (STACK[0xF10] ^ 0x8EA4);
  v2 = STACK[0xF10] - 19656;
  STACK[0x3038] = 0;
  return (*(STACK[0xF18] + 8 * (((((STACK[0x3088] == 0) ^ v1) & 1) * (v0 ^ 0x3E92)) ^ v2)))();
}

uint64_t sub_10045C614()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x830F)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10045C844()
{
  v0 = 4 * STACK[0xF10];
  v1 = STACK[0xF10] - 31159;
  v2 = *(*(&off_1010A0B50 + (STACK[0xF10] ^ 0x82A1)) - 1934974198);
  LOWORD(STACK[0x684A]) = *v2;
  LODWORD(STACK[0x684C]) = *(v2 + 2);
  return (*(STACK[0xF18] + 8 * ((v0 ^ 0x22A59) + v1)))();
}

uint64_t sub_10045C924@<X0>(uint64_t a1@<X1>, char a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W8>)
{
  v22 = (((a4 ^ 0x9F217096) + 1625198442) ^ ((a4 ^ 0x41B03697) - 1102067351) ^ (v9 + (a4 ^ 0x37448110))) - 107375119;
  v23 = (v22 ^ 0xE3BE381E) & (2 * (v22 & 0xF03C311F)) ^ v22 & 0xF03C311F;
  v24 = ((2 * (v22 ^ 0xE39E7808)) ^ 0x2744922E) & (v22 ^ 0xE39E7808) ^ (2 * (v22 ^ 0xE39E7808)) & 0x13A24916;
  v25 = v24 ^ 0x10A24911;
  v26 = (v24 ^ v13) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ v14) & v25 ^ (4 * v25) & v15;
  v28 = (v27 ^ v17) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ v16)) ^ v18) & (v27 ^ v16) ^ (16 * (v27 ^ v16)) & v19;
  v30 = v28 ^ a5 ^ (v29 ^ v21) & (v28 << 8);
  v31 = v22 ^ (2 * ((v30 << 16) & v10 ^ v30 ^ ((v30 << 16) ^ v12) & (((v29 ^ v20) << 8) & v10 ^ v11 ^ (((v29 ^ v20) << 8) ^ v8) & (v29 ^ v20))));
  LOBYTE(v30) = *(*(v6 + 24) + (v31 ^ a1));
  *(*(v7 + 184) + (v31 ^ a1)) = v30 - (a2 & (2 * v30)) - 70;
  return (*(STACK[0xF18] + 8 * (((v31 != a1) * a3) ^ v5)))();
}

uint64_t sub_10045CAA4()
{
  v1 = STACK[0x990];
  STACK[0x10EE0] = *STACK[0x990];
  LODWORD(STACK[0x10ED8]) = (v0 - 1762651059) ^ LODWORD(STACK[0xE70]);
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 26487)))(&STACK[0x10ED8]);
  v3 = *(v1 + 8);
  LODWORD(STACK[0xE60]) = v0 ^ 0x6342;
  return (*(v2 + 8 * (((v3 == (v0 ^ 0x6342)) * ((v0 ^ 0xE583) - 34466)) ^ v0)))(LODWORD(STACK[0xEC0]), 0x981390C2FED9246, 2908854416, 1386118871, 9165, 4294931652, 40283, 4294949906);
}

uint64_t sub_10045CC10(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0xA5F4]) ^ 0x2CCD64AC) - 751658156) ^ ((LODWORD(STACK[0xA5F4]) ^ 0xF1553943) + 246073021) ^ ((LODWORD(STACK[0xA5F4]) ^ 0x8C0CD72F) + 1945315537)) + 2021607230;
  v3 = (((LODWORD(STACK[0xA5F0]) ^ 0x51854734) - 1367689012) ^ ((LODWORD(STACK[0xA5F0]) ^ 0x8477A91) - 138902161) ^ ((LODWORD(STACK[0xA5F0]) ^ 0xB017FAB4) + 1340605772)) + 1630725121;
  v4 = (((LODWORD(STACK[0xA5F8]) ^ 0xCF65A7FD) + 815421443) ^ ((LODWORD(STACK[0xA5F8]) ^ 0x7B28F5FF) - 2066281983) ^ ((LODWORD(STACK[0xA5F8]) ^ 0x5D989513) - 1570280723)) + v3 * v2 - 75851623 * (-364607790 * v3 - 1120103024 * v2) + 848879537;
  v5 = (v4 ^ 0xC33C6101) & (2 * (v4 & 0xEBB16580)) ^ v4 & 0xEBB16580;
  v6 = ((2 * (v4 ^ 0x927CE801)) ^ 0xF39B1B02) & (v4 ^ 0x927CE801) ^ (2 * (v4 ^ 0x927CE801)) & 0x79CD8D80;
  v7 = v6 ^ 0x8448481;
  v8 = (v6 ^ 0x71890800) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xE7363604) & v7 ^ (4 * v7) & 0x79CD8D80;
  v10 = (v9 ^ 0x61040400) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x18C98981)) ^ 0x9CD8D810) & (v9 ^ 0x18C98981) ^ (16 * (v9 ^ 0x18C98981)) & 0x79CD8D80;
  v12 = v10 ^ 0x79CD8D81 ^ (v11 ^ 0x18C88800) & (v10 << 8);
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31845) ^ 0x11A9)))(a1, a2, LODWORD(STACK[0x98D4]) ^ v4 ^ (2 * ((v12 << 16) & 0x79CD0000 ^ v12 ^ ((v12 << 16) ^ 0xD810000) & (((v11 ^ 0x61050581) << 8) & 0x79CD0000 ^ 0x30400000 ^ (((v11 ^ 0x61050581) << 8) ^ 0x4D8D0000) & (v11 ^ 0x61050581)))) ^ 0xA84DC789);
}

uint64_t sub_10045CF40@<X0>(unsigned int a1@<W8>)
{
  v2 = ((((2 * a1) ^ 0x6639EB32) - 1837058881) ^ (((2 * a1) ^ 0xBCD8F49B) + 1214360344) ^ ((v1 ^ 0x8089) + ((2 * a1) ^ 0xDAE11FA9) + 777490209)) - 115445616;
  v3 = v2 < 0xEDD7D01D;
  if (a1 > 0x12282FE2 == v3)
  {
    v3 = a1 - 304623587 < v2;
  }

  return (*(STACK[0xF18] + 8 * ((44 * !v3) ^ v1)))();
}

uint64_t sub_10045D0AC()
{
  v1 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * (v0 - 5732));
  return (*(v1 + 8 * ((v0 - 5732) ^ 0x231F)))();
}

uint64_t sub_10045D328()
{
  v2 = ((v1 ^ 0xC95B0B6A) + 916780182) ^ ((v1 ^ 0xD88D2198) + 661839464) ^ ((v1 ^ ((v0 ^ 0xB42C) - 31736) ^ 0xF803E2A0) + 133960221);
  v3 = LODWORD(STACK[0x3908]) + 80717574;
  v2 -= 291148269;
  v4 = (v3 < 0x4CFA702) ^ (v2 < 0x4CFA702);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x4CFA702;
  }

  return (*(STACK[0xF18] + 8 * ((52 * v5) ^ v0)))();
}

uint64_t sub_10045D3F8@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x4050] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((a1 + 24718) ^ a1)))();
}

uint64_t sub_10045D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0xCB0]) = v9;
  LODWORD(STACK[0xCC0]) = a7;
  LODWORD(STACK[0xE30]) = v14;
  LODWORD(STACK[0xCD0]) = v12;
  LODWORD(STACK[0xCE0]) = v13;
  LODWORD(STACK[0xCF0]) = v11;
  LODWORD(STACK[0xEB0]) = v10;
  LODWORD(STACK[0xD20]) = a8;
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0xDC0]) > (((v8 - 39227) | 0x3908) ^ 0x3F27u)) * ((v8 + 1364402259) & 0xAEAC7F79 ^ 0x3F00)) ^ v8)))();
}

uint64_t sub_10045D4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = 16 * (v8 - 1299766964);
  *(*a8 + v10) = STACK[0x8588];
  *(*a8 + v10 + 8) = STACK[0x33F0];
  *(a8 + 8) += ((v9 - 9391) | 0x8030) - 38703;
  return (*(STACK[0xF18] + 8 * v9))(a1, a2, a3, a4, a5, a6, a7, 3923101457);
}

uint64_t sub_10045D624()
{
  v4 = v1 + v0 + 1880168519 + v2;
  v5 = (v4 ^ 0x13998500 ^ (v3 + 1595841554) & 0xA0E0FBFF) & (2 * (v4 & 0x9BDDCEA8)) ^ v4 & 0x9BDDCEA8;
  v6 = ((2 * (v4 ^ 0xC5AF664F ^ (109 * (v3 ^ 0x71BB)))) ^ 0xBCE447B8) & (v4 ^ 0xC5AF664F ^ (109 * (v3 ^ 0x71BB))) ^ (2 * (v4 ^ 0xC5AF664F ^ (109 * (v3 ^ 0x71BB)))) & 0x5E7223DC;
  v7 = v6 ^ 0x42122044;
  v8 = (v6 ^ 0x1C600380) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x79C88F70) & v7 ^ (4 * v7) & 0x5E7223D8;
  v10 = (v9 ^ 0x58400340) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x632208C)) ^ 0xE7223DC0) & (v9 ^ 0x632208C) ^ (16 * (v9 ^ 0x632208C)) & 0x5E7223C0;
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * (v3 ^ 0xBA64)))(v4 ^ (2 * ((((v11 ^ 0x1850021C) << 8) & 0x5E720000 ^ 0x52220000 ^ (((v11 ^ 0x1850021C) << 8) ^ 0x72230000) & (v11 ^ 0x1850021C)) & (((v11 ^ 0x46222100) & (v10 << 8) ^ v10) << 16) ^ (v11 ^ 0x46222100) & (v10 << 8) ^ v10)) ^ 0x9BDDCEA8);
  STACK[0x2698] = v13;
  return (*(v12 + 8 * ((509 * (v13 == 0)) ^ v3)))();
}

uint64_t sub_10045D830()
{
  v0 = STACK[0xF10] - 29784;
  *(STACK[0x91C0] + 112) = 0x217E172EFA1E81CLL;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10045D8B4()
{
  v1 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2D39 ^ (v0 - 1092))))();
}

uint64_t sub_10045D8EC@<X0>(int a1@<W8>)
{
  v2 = STACK[0xF10] - 35341;
  LODWORD(STACK[0x9F3C]) = a1 ^ v1 ^ ((((STACK[0xF10] + 6509) | 0x1B01) ^ 0xFFFF417A) + v2);
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x920F)))();
}

uint64_t sub_10045D944()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 1620017755;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x41F0)))(LODWORD(STACK[0x2214]), STACK[0xA308], 1024);
  v4 = 297845113 * (((&STACK[0x10ED8] ^ 0x722C22598B88B5F1 | 0xD6E29027C296E1BALL) - (&STACK[0x10ED8] ^ 0x722C22598B88B5F1) + ((&STACK[0x10ED8] ^ 0x722C22598B88B5F1) & 0x291D6FD83D691E41)) ^ 0x139513BB3E2D48D5);
  LODWORD(STACK[0x10EDC]) = (v0 + 1620022293) ^ v4;
  LODWORD(STACK[0x10ED8]) = v1 + v4;
  STACK[0x10EF0] = 1 - v4;
  STACK[0x10EE0] = v3 - v4;
  LODWORD(STACK[0x10EFC]) = v4 + 1;
  LODWORD(STACK[0x10EF8]) = v4 ^ v1 ^ 0x1F;
  LODWORD(STACK[0x10F00]) = (v0 - 1013707182) ^ v4;
  v5 = (*(v2 + 8 * (v0 + 16545)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * SLODWORD(STACK[0x10EE8])))(v5);
}

uint64_t sub_10045DA7C()
{
  LODWORD(STACK[0x3908]) += 4;
  if (STACK[0xAD28])
  {
    v1 = STACK[0xACF8] == 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 || LODWORD(STACK[0xAD04]) == v0 - 371895355;
  return (*(STACK[0xF18] + 8 * ((v3 * (v0 - 29316)) ^ v0)))();
}

uint64_t sub_10045DAE4(char a1, int a2, char a3, char a4, int a5, int a6, char a7, int a8)
{
  v16 = *(v15 + v8 + 72);
  v17 = ((v8 << v12) & v13) + (v8 ^ v11);
  *(v9 + (v17 + a2)) = v16 ^ a1;
  *(v9 + (v17 + a5)) = (a3 ^ BYTE1(v16)) + (a4 | ~(2 * (a3 ^ BYTE1(v16)))) + 96;
  *(v9 + (v17 + a6)) = (BYTE2(v16) ^ 0x7C) - ((2 * (BYTE2(v16) ^ 0x7C)) & 0xBF) + 95;
  *(v9 + (v17 + a8)) = (a7 ^ HIBYTE(v16)) - ((2 * (a7 ^ HIBYTE(v16))) & 0xBF) + 95;
  return (*(STACK[0xF18] + 8 * (((v8 + 4 < *(v15 + 92)) * v14) ^ v10)))();
}

uint64_t sub_10045DD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  LODWORD(STACK[0x9E94]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0x919BF3F9;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (((v3 ^ 0x891D) % (LODWORD(STACK[0x9E9C]) ^ 0xDA6B4490)) ^ 0x3FFB7BDF) + 4396652 + ((2 * ((v3 ^ 0x891D) % (LODWORD(STACK[0x9E9C]) ^ 0xDA6B4490))) & 0x7BE));
}

uint64_t sub_10045DEC0()
{
  v2 = v1 + 17702;
  v3 = v0 >= ((v2 - 35362) | 0x6801) - 371893720;
  return (*(STACK[0xF18] + 8 * (((8 * v3) | (16 * v3)) ^ v2)))();
}

uint64_t sub_10045DF44()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 - 1811) | 0x1664) - 1954)))();
}

uint64_t sub_10045E018()
{
  v0 = STACK[0xF10] - 6955;
  LODWORD(STACK[0x2614]) = STACK[0x22DC];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10045E0B8()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 8420;
  v2 = *STACK[0x7D10];
  LODWORD(STACK[0x10EE0]) = STACK[0xF10] + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x13988970) + 328763766) ^ 0xF5BE92B9) + 296753103;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10045E25C()
{
  v1 = STACK[0xF18];
  STACK[0x1968] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + (v0 ^ 0x1D9E) - 2139)))();
}

uint64_t sub_10045E3A4@<X0>(unsigned int a1@<W8>)
{
  v9 = v3 < v4;
  *(v7 + a1) = *(v8 + v1) - ((2 * *(v8 + v1)) & 0xBF) + 95;
  if (v9 == v1 + ((v2 + 37345) ^ 0xC4B4) > v5)
  {
    v9 = v1 - 576122207 < v3;
  }

  return (*(STACK[0xF18] + 8 * ((v9 * v6) ^ v2)))();
}

uint64_t sub_10045E44C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF860)))(*(v0 + 1));
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10045E488()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 20172)))(v2);
}

uint64_t sub_10045E4B8()
{
  STACK[0xB110] = STACK[0x17D0];
  LODWORD(STACK[0xB11C]) = STACK[0x6654];
  v1 = STACK[0x1FD8];
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xB120] = (v3 + 16);
  STACK[0xB128] = (v3 + 64);
  STACK[0x7690] = (v0 + 16215) + v2 - 26031;
  STACK[0x4ED0] = v1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10045E52C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE8] = ((v1 ^ 0x291E) + 0x215F96C1AC63C899) ^ &STACK[0xF28];
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE0]) = (v1 + 329011429) ^ (1112314453 * ((((&STACK[0x10000] + 3800) | 0xA73380BF) + (~(&STACK[0x10000] + 3800) | 0x58CC7F40)) ^ 0x4865AA67));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 8085)))(&STACK[0x10ED8]);
  *(v2 + 120) = 0;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10045E630()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 30969 + ((v0 + 685686866) & 0xD721B61F))))();
}

uint64_t sub_10045E808()
{
  v1 = STACK[0x1D1C];
  LODWORD(STACK[0x4AA4]) = (((LODWORD(STACK[0x1D1C]) ^ 0xBD1988EF) + 1122400017) ^ ((LODWORD(STACK[0x1D1C]) ^ 0x268E1761) - 646846305) ^ ((LODWORD(STACK[0x1D1C]) ^ 0x7242589F) - 1916950687)) + ((v0 - 34096) ^ 0xE9D5C13F);
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4115)))((((v1 ^ 0xEF1889D0) + 283604528) ^ ((v1 ^ 0x2AA731E8) - 715600360) ^ ((v1 ^ 0x2C6A7332 ^ (v0 - 509766958) & 0x1E61EDBB) - 745176873)) - 371865681);
  STACK[0x4AC8] = v3;
  return (*(v2 + 8 * (((8 * (v3 == 0)) | (16 * (v3 == 0))) ^ v0)))();
}

uint64_t sub_10045EA28@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q5>, int8x16_t a3@<Q7>)
{
  v6.i64[0] = 0x4242424242424242;
  v6.i64[1] = 0x4242424242424242;
  v7 = vsubq_s8(a3, vandq_s8(vaddq_s8(a3, a3), v6));
  v6.i64[0] = 0xA1A1A1A1A1A1A1A1;
  v6.i64[1] = 0xA1A1A1A1A1A1A1A1;
  v8 = vaddq_s8(v7, v6);
  v6.i64[0] = 0xC0C0C0C0C0C0C0CLL;
  v6.i64[1] = 0xC0C0C0C0C0C0C0CLL;
  v9.i64[0] = 0xF4F4F4F4F4F4F4F4;
  v9.i64[1] = 0xF4F4F4F4F4F4F4F4;
  v10 = veorq_s8(vaddq_s8(veorq_s8(v8, v6), v9), vaddq_s8(veorq_s8(v8, a2), v5));
  v9.i64[0] = 0xD5D5D5D5D5D5D5D5;
  v9.i64[1] = 0xD5D5D5D5D5D5D5D5;
  v11 = veorq_s8(v8, v9);
  v9.i64[0] = 0x2B2B2B2B2B2B2B2BLL;
  v9.i64[1] = 0x2B2B2B2B2B2B2B2BLL;
  v12 = veorq_s8(v10, vaddq_s8(v11, v9));
  v10.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v10.i64[1] = 0xA8A8A8A8A8A8A8A8;
  *(a1 + v3) = vaddq_s8(vaddq_s8(*(STACK[0xED0] + v3), v10), v12);
  return (*(STACK[0xF18] + 8 * (((v3 != 64) | (2 * (v3 != 64))) ^ v4)))();
}

uint64_t sub_10045EAB8(uint64_t a1, _BYTE *a2)
{
  v3 = STACK[0x3A4];
  LODWORD(STACK[0xEA0]) = LODWORD(STACK[0x3A4]) ^ 0xFFFFFFDD;
  a2[63] = v3 ^ 0xDD;
  v4 = (v3 >> (v2 + 60)) ^ 0x2A;
  LODWORD(STACK[0xAA8]) = v4;
  a2[62] = v4;
  a2[61] = BYTE2(v3) ^ 0x9D;
  LODWORD(STACK[0x3A4]) = HIBYTE(v3) ^ 0x32279055;
  a2[60] = HIBYTE(v3) ^ 0x88;
  v5 = *(STACK[0xF18] + 8 * v2);
  LODWORD(STACK[0xDD0]) = 774913762;
  return v5();
}

uint64_t sub_10045EB38()
{
  LOWORD(STACK[0x878A]) = 16;
  v2 = LODWORD(STACK[0x229C]);
  LOWORD(STACK[0xB98E]) = LOWORD(STACK[0x229C]) ^ 0x1FF3;
  v3 = STACK[0x1908];
  STACK[0xB990] = STACK[0x1908];
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xB998] = v5;
  STACK[0xB9A0] = (v5 + 20);
  STACK[0xB9A8] = (v5 + 40);
  STACK[0x7690] = (v1 - 27064) + (v1 - 9974) + v4 - 54132;
  STACK[0x5AE8] = 0;
  STACK[0x5938] = 0;
  STACK[0x80A8] = 0;
  if (v0)
  {
    v6 = v2 == 50961;
  }

  else
  {
    v6 = 1;
  }

  v8 = !v6 && v3 != 0;
  return (*(STACK[0xF18] + 8 * ((124 * v8) ^ v1)))();
}

uint64_t sub_10045EBF4(uint64_t a1)
{
  STACK[0x8D08] = *(a1 + 40);
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0x551B)))();
  return (*(v3 + 8 * (((STACK[0x8D08] == 0) * (v2 - 35521)) ^ v1)))();
}

uint64_t sub_10045EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x6198];
  STACK[0x5D28] = &STACK[0x78E0];
  LODWORD(STACK[0x4704]) = 290686714;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10045EE54()
{
  STACK[0xEA0] = v2;
  STACK[0xE90] = STACK[0xED0] + 376;
  LODWORD(STACK[0xEC0]) = v0 - 4203;
  v3 = (((v1 ^ 0x7871D430) - 2020725808) ^ ((v1 ^ 0xB3192000) + 1290199040) ^ ((v1 ^ (v0 - 4203) ^ 0x22BD6C74) - 582824737)) != 371865529;
  return (*(STACK[0xF18] + 8 * (v3 | (2 * v3) | v0)))();
}

uint64_t sub_10045F110@<X0>(unint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X8>)
{
  STACK[0x70F8] = v3;
  STACK[0x5BF8] = a3;
  STACK[0x4CE0] = v6;
  STACK[0x12B0] = v5;
  STACK[0x8310] = v4;
  *(v7 + 224) = v9;
  LODWORD(STACK[0x7358]) = a2;
  STACK[0x24C8] = a1;
  v10 = STACK[0x7690];
  v11 = &STACK[0xC4D0] + STACK[0x7690];
  *(v7 + 136) = v11;
  STACK[0x41E8] = v11;
  STACK[0x6BA0] = (v11 + 576);
  STACK[0x7BD8] = (v11 + 624);
  STACK[0x7C30] = (v11 + 696);
  STACK[0x7690] = ((v8 - 41180) | 0x890Au) + v10 - 34843;
  LODWORD(STACK[0x88AC]) = -371865839;
  LODWORD(STACK[0x2174]) = -371865839;
  if (v9)
  {
    v12 = a2 == -371865839;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  return (*(STACK[0xF18] + 8 * ((v13 * (((v8 - 40620) | 0x21C) - 1623)) ^ v8)))();
}

uint64_t sub_10045F32C()
{
  LODWORD(STACK[0x2994]) = v0;
  v2 = STACK[0xF18];
  STACK[0x5930] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 4412 + ((v1 + 815486434) & 0xCF64BFFE))))();
}

uint64_t sub_10045F370()
{
  LODWORD(STACK[0xB04C]) = v0;
  LODWORD(STACK[0xB048]) = -371865839;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10045F3AC()
{
  v8 = STACK[0x4588] + v6;
  v9 = *v8;
  LODWORD(v8) = ((*(*STACK[0xE50] + (*STACK[0xE58] & v2)) ^ v8) & 0x7FFFFFFF) * v3;
  v10 = (v8 ^ WORD1(v8)) * v3;
  *(v0 + v6) = *(STACK[0x918] + (v10 >> (v7 + v4))) ^ v9 ^ *((v10 >> (v7 + v4)) + v1 + 6) ^ *((v10 >> (v7 + v4)) + STACK[0x910] + 5) ^ v10 ^ ((v10 >> (v7 + v4)) * v5);
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_10045F440()
{
  strcpy(v0, "/var/mobile/Library/FairPlay/vdpf");
  *(v0 + 34) = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10045F4BC()
{
  v1 = STACK[0xF18];
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 43118 + v0 + 45061)))();
}

uint64_t sub_10045F63C()
{
  v1 = STACK[0xF18];
  STACK[0x1518] = *(STACK[0xF18] + 8 * (v0 - 2032));
  return (*(v1 + 8 * (((v0 + 32370) ^ 0x8331) + v0 - 2032)))();
}

uint64_t sub_10045F674@<X0>(int a1@<W8>)
{
  v3 = (v2 ^ 0xD9) & (2 * (v2 & 0xE2)) ^ v2 & 0xE2;
  v4 = (v2 ^ 0x9D) & 0xFE | (v2 ^ 0x62) & (2 * (v2 ^ 0x9D));
  v5 = v3 ^ 0x7F ^ (v4 ^ 0x18) & (4 * v3);
  *(v2 + STACK[0xE60] + v1) = *(*(&off_1010A0B50 + (a1 ^ 0x444A)) + ((v2 ^ (2 * ((16 * v5) ^ v5 ^ ((16 * v5) ^ 0x70) & (((4 * v4) ^ 0xF0) & v4 ^ (4 * v4) & 0x70)))) ^ 0xFCLL) - 541260547);
  return (*(STACK[0xF18] + 8 * ((500 * (v2 != 1974825373)) ^ a1)))();
}

uint64_t sub_10045F7C0()
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
  STACK[0xBF70] = 0;
  STACK[0xBF78] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xBF70] | v10);
  *(&STACK[0xBF70] | v10) = 0;
  LOBYTE(STACK[0xBF77]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xBF70] | v12);
  *(&STACK[0xBF70] | v12) = STACK[0xBF76];
  LOBYTE(STACK[0xBF76]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xBF70] | v14);
  *(&STACK[0xBF70] | v14) = STACK[0xBF75];
  LOBYTE(STACK[0xBF75]) = v15;
  v16 = STACK[0xBF70];
  LOBYTE(STACK[0xBF70]) = STACK[0xBF74];
  LOBYTE(STACK[0xBF74]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xBF70] | v17);
  *(&STACK[0xBF70] | v17) = STACK[0xBF73];
  LOBYTE(STACK[0xBF73]) = v18;
  v19 = STACK[0xBF71];
  LOBYTE(STACK[0xBF72]) = STACK[0xBF70];
  LOWORD(STACK[0xBF70]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xBF70] = vmla_s32(v22, STACK[0xBF70], vdup_n_s32(0x1000193u));
  STACK[0xBF78] ^= STACK[0xBF70];
  STACK[0xBF78] = vmul_s32(vsub_s32(STACK[0xBF78], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xBF7A];
  LOWORD(STACK[0xBF79]) = STACK[0xBF78];
  LOBYTE(STACK[0xBF78]) = v23;
  v24 = (&STACK[0xBF78] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xBF7B];
  LOBYTE(STACK[0xBF7B]) = v19;
  LOBYTE(v24) = STACK[0xBF78];
  LOBYTE(STACK[0xBF78]) = STACK[0xBF7C];
  LOBYTE(STACK[0xBF7C]) = v24;
  v25 = (&STACK[0xBF78] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xBF7D];
  LOBYTE(STACK[0xBF7D]) = v24;
  v26 = (&STACK[0xBF78] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xBF7E];
  LOBYTE(STACK[0xBF7E]) = v25;
  v27 = (&STACK[0xBF78] | v10);
  v28 = *v27;
  *v27 = STACK[0xBF7F];
  LOBYTE(STACK[0xBF7F]) = v28;
  v29 = STACK[0xBF78];
  v30 = (553300517 * STACK[0xBF78]) ^ v9;
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
  *v43 = STACK[0xBF78];
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x86DA)))(v48, v49);
}

uint64_t sub_10045FC60()
{
  v0 = STACK[0xF10] - 34072;
  LODWORD(STACK[0xA584]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0x1709CF53;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1E15)))();
}

uint64_t sub_10045FFFC()
{
  STACK[0x7200] = STACK[0x70D8];
  LODWORD(STACK[0x41CC]) = STACK[0x40D8];
  v1 = STACK[0x7690];
  v2 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x6858] = v2;
  STACK[0x8658] = (v2 + 408);
  STACK[0xAFF0] = (v2 + 424);
  STACK[0x7218] = (v2 + 456);
  STACK[0x5F00] = 0;
  LODWORD(STACK[0x66F0]) = -371865839;
  STACK[0x7988] = 0;
  LODWORD(STACK[0x980C]) = -371865839;
  v3 = &v2[(v0 - 1865819394) & 0x6F363FFE ^ 0x2E02];
  STACK[0xAFF8] = v3;
  STACK[0x7690] = v1 + 2528;
  STACK[0xB000] = v3;
  return (*(STACK[0xF18] + 8 * v0))(2043, -11234, 1);
}

uint64_t sub_1004601BC()
{
  v3 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0xED170818) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x12E8F7E0)) ^ 0x5707E98A);
  LODWORD(STACK[0x10EE4]) = v3 + v0 - 15378;
  LODWORD(STACK[0x10EE0]) = v2 - v3;
  STACK[0x10ED8] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 4500)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EE8];
  LODWORD(STACK[0x4FFC]) = STACK[0x10EE8];
  return (*(v4 + 8 * ((234 * (v6 == ((v0 - 11824) ^ 0x59441771))) ^ v0)))(v5);
}

uint64_t sub_100460290()
{
  v1 = STACK[0xF18];
  STACK[0x88F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3BC1 ^ (v0 + 2240))))();
}

uint64_t sub_1004602E8()
{
  v0 = (STACK[0xF10] ^ 0xABF9) + 7905;
  v1 = STACK[0xF10] + 11608;
  LODWORD(STACK[0x748C]) = LODWORD(STACK[0xA338]) + 3;
  return (*(STACK[0xF18] + 8 * ((85 * ((v0 ^ (LODWORD(STACK[0x3114]) == 0)) & 1)) ^ v1)))();
}

uint64_t sub_100460474()
{
  LODWORD(STACK[0x41AC]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (((v0 ^ 0x89B5) - 25252) ^ v0)))();
}

uint64_t sub_1004604B8@<X0>(int a1@<W8>)
{
  v2 = a1 - 95049410;
  v3 = ((v1 + 13191) ^ 0x5E9A) + (((LODWORD(STACK[0x80C4]) ^ 0x2C068C16) - 738626582) ^ ((LODWORD(STACK[0x80C4]) ^ 0x2C5E6630) - 744384048) ^ ((LODWORD(STACK[0x80C4]) ^ 0xE98D2D37) + 376623817)) + 497510053;
  v4 = (v2 < 0x33D1B3C6) ^ (v3 < 0x33D1B3C6);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x33D1B3C6;
  }

  return (*(STACK[0xF18] + 8 * ((9613 * v5) ^ v1)))();
}

uint64_t sub_100460584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  LODWORD(STACK[0x5784]) = *(v3 + 1372);
  STACK[0x9140] = a3;
  STACK[0x4478] = v4;
  STACK[0x9098] = 0;
  return (*(STACK[0xF18] + 8 * (((2 * (((v4 == 0) ^ (3 * ((v5 + 87) ^ 0xF4))) & 1)) & 0xEF | (16 * (((v4 == 0) ^ (3 * ((v5 + 87) ^ 0xF4))) & 1))) ^ v5)))(a1, a2, 371891400);
}

uint64_t sub_100460660()
{
  *v1 = -371865851;
  v2 = STACK[0xF18];
  STACK[0x7490] = *(STACK[0xF18] + 8 * (v0 - 12257));
  return (*(v2 + 8 * (v0 - 12257 + 1487 * ((v0 - 12257) ^ 0x519) - 1860)))();
}

uint64_t sub_100460850@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((3311 * (a1 ^ 0x45E) - 21435) ^ a1)))();
}

uint64_t sub_100460AA0()
{
  LODWORD(STACK[0x91AC]) = -371865803;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x972B)))(36);
  STACK[0x8208] = v2;
  STACK[0x14E8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 - 59521 + ((v0 - 192836148) & 0xB7E9FBB))) ^ v0)))();
}

uint64_t sub_100460B2C()
{
  STACK[0x10ED8] = STACK[0x818];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xB50FE410) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x4AF01BE8)) ^ 0x5329FFDF) + 296753103;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 13755)))(v2);
}

uint64_t sub_100460C70@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 315174051;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100460CD4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 15915)))(v3);
}

uint64_t sub_100460D4C()
{
  v1 = v0 + 9316;
  v2 = ((LODWORD(STACK[0x945C]) ^ 0xD54B6FCECC6E354CLL) + 0x2AB490313391CAB4) ^ ((LODWORD(STACK[0x945C]) ^ 0x42930EFF73797B61) - 0x42930EFF73797B61) ^ ((LODWORD(STACK[0x945C]) ^ 0x97D8613156C2893CLL) + 0x68279ECEA93D76C4);
  v3 = STACK[0x7710];
  v4 = (v3 ^ 0xF3D659E0E21E8372) & (2 * (v3 & 0xFBC71DE2F29CA204)) ^ v3 & 0xFBC71DE2F29CA204;
  v5 = ((2 * ((((v0 + 9316) ^ 0x144Au) - 0x3B219C1B9DE0984BLL) ^ v3)) ^ 0x7E32FC0D2106CAECLL) & ((((v0 + 9316) ^ 0x144Au) - 0x3B219C1B9DE0984BLL) ^ v3) ^ (2 * ((((v0 + 9316) ^ 0x144Au) - 0x3B219C1B9DE0984BLL) ^ v3)) & 0x3F197E0690836576;
  v6 = v5 ^ 0x109020290812512;
  v7 = (v5 ^ 0x3E107C0400020020) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xFC65F81A420D95D8) & v6 ^ (4 * v6) & 0x3F197E0690836570;
  v9 = (v8 ^ 0x3C01780200010540) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x318060490826026)) ^ 0xF197E06908365760) & (v8 ^ 0x318060490826026) ^ (16 * (v8 ^ 0x318060490826026)) & 0x3F197E0690836560;
  v11 = (v10 ^ 0x3111600000024500) & (v9 << 8) ^ v9;
  v12 = (((v10 ^ 0xE081E0690812016) << 8) ^ 0x197E069083657600) & (v10 ^ 0xE081E0690812016) ^ ((v10 ^ 0xE081E0690812016) << 8) & 0x3F197E0690836400;
  v13 = v11 ^ 0x3F197E0690836576 ^ (v12 ^ 0x1918060080010000) & (v11 << 16);
  v14 = STACK[0x7710] ^ (2 * ((v13 << 32) & 0x3F197E0600000000 ^ v13 ^ ((v13 << 32) ^ 0x1083657600000000) & (((v12 ^ 0x2601780610820176) << 16) & 0x3F197E0600000000 ^ 0x1196E0400000000 ^ (((v12 ^ 0x2601780610820176) << 16) ^ 0x7E06908300000000) & (v12 ^ 0x2601780610820176)))) ^ 0x9443BCA44C394DBBLL;
  v15 = 353670337 * (((&STACK[0x10ED8] | 0x61F51246EBA27FADLL) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x9E0AEDB9145D8050)) ^ 0x9164A4CD5F838790);
  LODWORD(STACK[0x10EF0]) = v15 - 794398693;
  LODWORD(STACK[0x10ED8]) = v15 - 18130 + v1;
  STACK[0x10EE8] = v14 + v15;
  STACK[0x10EE0] = v2 - v15 + 0x2CB8161A532D212ELL;
  v16 = STACK[0xF18];
  v17 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8173)))(&STACK[0x10ED8]);
  return (*(v16 + 8 * v1))(v17);
}

uint64_t sub_1004613F0()
{
  v1 = (STACK[0xF10] - 882556221) & 0x349A7E7F;
  v2 = STACK[0xF10] - 22961;
  v3 = STACK[0xF10] - 28478;
  STACK[0x60D8] = v0;
  return (*(STACK[0xF18] + 8 * (((v2 ^ 0x7A00 ^ v1) * (v0 == 0)) ^ v3)))();
}

uint64_t sub_100461538@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, unsigned int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v24 = a9 ^ 0x62E0662;
  v25 = a9 ^ 0x47709908;
  v26 = a9 ^ 0x5C221916;
  v27 = v12;
  v28 = (v27 ^ v13) & (a1 ^ 0x653A24C6) ^ v27 & 0x7846A2BA;
  v29 = (v28 ^ 0x9FFDDF7D) & (v27 & a8 ^ (a2 ^ 0xC3AD4B78) & (v27 ^ 0x1D7C867C) ^ 0x587F0B8B) ^ v28 & 0xBBD07070;
  v30 = (v24 - 103679586) ^ (v25 - 1198561544) ^ (v26 - 1545738518);
  v31 = *(a5 + 4 * (*(v9 + a4) - 46));
  v32 = *(v10 + 4 * a4) + v30 + (((v29 ^ 0xDE3EDBA) - 714376355) ^ ((v29 ^ 0xB403BCE8) + 1821059599) ^ ((v29 ^ 0xDDCFFEDD) + 88565820)) - 1207442919 + (((v31 ^ 0x715F40D6) - 1902067926) ^ ((v31 ^ 0xE600B9F2) + 436160014) ^ ((v31 ^ 0x7E8A3E35) - 2122989109));
  LOBYTE(v29) = *(v11 + a4);
  v33 = ((v29 + 22) ^ 0xEA) & (2 * ((v29 + 22) & 0x8C)) ^ (v29 + 22) & 0x8C;
  LOBYTE(v31) = ((2 * ((v29 + 22) ^ 0x15)) ^ 0x32) & ((v29 + 22) ^ 0x15);
  LOBYTE(v31) = (((4 * v31) ^ 0x64) & v31 ^ (4 * v31) & 0x98) & (16 * (v31 & (4 * v33) ^ v33)) ^ v31 & (4 * v33) ^ v33;
  v34 = v32 ^ ((v32 ^ 0x14E059BC) + 998224209) ^ ((v32 ^ 0x2B57B08A) + 80238695) ^ ((v32 ^ 0xA13821DA) - 1901606601) ^ ((v32 ^ 0x4EEFDFFF) + 1634744084) ^ 0xD0601713;
  v35 = (((a2 ^ 0x9A37B778) + 1707624584) ^ ((a2 ^ 0x786B9F65) - 2020319077) ^ ((a2 ^ 0xFF20AE61) + 14635423)) + v20 + ((v34 << (((v29 + 22) ^ (2 * v31) ^ 4) & 0x14) << (((v29 + 22) ^ (2 * v31) ^ 2) & 0xB ^ 0xA)) | (v34 >> (126 - v29)));
  return (*(STACK[0xF18] + 8 * ((126 * (a6 > 0x1F)) ^ v14)))(a2, v35 ^ ((v35 ^ v21) + v22) ^ ((v35 ^ v15) + a3) ^ ((v35 ^ a7) + v16) ^ ((v35 ^ v17) + v18) ^ v19);
}

uint64_t sub_1004619A8(uint64_t a1)
{
  v2 = 193924789 * ((2 * (((&STACK[0x10000] + 3800) ^ 0x6FC66776) & 0x4B0F35F0) - ((&STACK[0x10000] + 3800) ^ 0x6FC66776) + 888195599) ^ 0xED8D9F1F);
  LODWORD(STACK[0x10EE0]) = ((((v1 + 10343) | 0x212) + 1827210850) ^ *(*(a1 + 360) + 72)) + v2;
  LODWORD(STACK[0x10EDC]) = v1 - v2 + 1563202089;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 27504)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_100461AC4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x5C50] = (((a1 ^ 0xD05F8AD5B5702A4CLL) + 0x2FA0752A4A8FD5B4) ^ ((a1 ^ 0x5AB2ECB24430831FLL) - 0x5AB2ECB24430831FLL) ^ (((((v1 + 1877807913) | 0x28) - 0x75129998E76B1CF9) ^ a1) + 0x75129998E76A91BELL)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = -854275375;
  return (*(STACK[0xF18] + 8 * ((14840 * (v1 < 0x24109464)) ^ (v1 + 1877778275))))();
}

uint64_t sub_100461BBC()
{
  v1 = STACK[0xF10];
  v2 = ((STACK[0xF10] - 35619) | 0x200) + 21924;
  v3 = v0 == 0;
  LOBYTE(STACK[0x5953]) = v3;
  STACK[0x6270] = v0;
  return (*(STACK[0xF18] + 8 * ((122 * (((v2 ^ v3) & 1) == 0)) ^ (v1 - 11157))))();
}

uint64_t sub_100461C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 29045;
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x27F0];
  LODWORD(STACK[0x648C]) = 796421098;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100461CA0(uint64_t a1, uint64_t a2)
{
  STACK[0x5A30] = STACK[0xED0];
  STACK[0x1258] = 0;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, LODWORD(STACK[0x867C]));
}

uint64_t sub_100461D34()
{
  v1 = STACK[0x11A0];
  STACK[0x81A8] = STACK[0x8C68];
  STACK[0x97E8] = v1;
  LODWORD(STACK[0x6974]) = 103711534;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100461D7C()
{
  v1 = v0 - 824742103;
  v2 = (v0 - 824715164);
  v3 = STACK[0x4F98];
  STACK[0x81A8] = STACK[0x8C68];
  STACK[0x97E8] = v3 - ((v2 ^ 0x130272185FDBAFB7) & (2 * v3)) + 0x981390C2FED9246;
  LODWORD(STACK[0x6974]) = 103711521;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100461DF8()
{
  STACK[0x8728] = v0;
  STACK[0xAC00] = STACK[0xED0];
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x1132)))();
}

uint64_t sub_100461E34()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762662585) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xCE9F4750) - (&STACK[0x10000] + 3800) - 1733272488) ^ 0x564E6E8C));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 14961)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] == (((v0 - 36639) | 0x8A12) ^ 0x8B3B) && *STACK[0x940] != 0;
  return (*(v1 + 8 * ((v4 * (v0 - 36876)) ^ v0)))(v2);
}

uint64_t sub_100461EFC@<X0>(int a1@<W0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v4 = (((2 * (v3 - 0x1BF5D6A0218BDAB8)) & 0x77FFF727759E6CFALL) + ((v3 - 0x1BF5D6A0218BDAB8) ^ 0xFBFFFB93BACF367DLL) + a3);
  v5 = (v4[0x400046C4530C983] << 24) | (v4[0x400046C4530C984] << 16) | (v4[0x400046C4530C985] << 8);
  LODWORD(v4) = v4[0x400046C4530C986] - ((2 * v4[0x400046C4530C986]) & 0xB6) + 1803538779;
  LODWORD(v4) = ((v5 - ((2 * v5) & 0x3ADD5E00) - 1653690450) ^ 0x95D1C5B1) & (v4 ^ 0x94802EA4) ^ v4 & 0x210095E0;
  v6 = (((v4 ^ 0x4EF0F95A6013E15ELL) - 0x4EF0F95AA079DD10) ^ ((v4 ^ 0xE263875C9311102BLL) + 0x1D9C78A3AC84D39BLL) ^ ((v4 ^ 0xAC937E06DABD0A2ALL) + 0x536C81F9E528C99CLL)) + v3 - 0x1BF5D69E3F168EE5;
  v7 = a2 - 0x7E9FF57CFEA47021;
  v8 = v6 < 0xF89F84BE;
  v9 = v6 > v7;
  if (v7 < 0xF89F84BE != v8)
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * ((117 * !v9) ^ a1)))();
}

uint64_t sub_100462310()
{
  v0 = STACK[0xF10] - 2109694517;
  v1 = (STACK[0xF10] - 25903) | 0x840;
  v2 = STACK[0x7C88];
  v3 = STACK[0x7D40];
  *(v3 + 160) = *(STACK[0x7C88] + 24);
  *v3 = v2[81];
  *(v3 + 4) = v2[93];
  *(v3 + 8) = v2[109];
  *(v3 + 12) = v2[110];
  *(v3 + 16) = v2[111];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x82419102 ^ (((((v2[104] - v0) | (v0 - v2[104])) >> (v1 - 45)) & 1) * (21792 * (v0 ^ 0x2412904) - 43537)))))();
}

uint64_t sub_1004623D4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x6590];
  v7 = (v2[4] - ((2 * v2[4]) & 0xEA)) == 160 && (v1 + v2[5] - (((a1 - 71) ^ 0x96) & (2 * v2[5]))) == 168 && (v2[6] - ((2 * v2[6]) & 0xEA)) == 92 && (v2[7] - ((2 * v2[7]) & 0xEA)) == 80 && (v2[8] - ((2 * v2[8]) & 0xEA)) == 66;
  if (((v2[10] - ((2 * v2[10]) & 0xEA) - 11) & (v2[9] - ((2 * v2[9]) & 0xEA) - 11)) != -1)
  {
    v7 = 0;
  }

  if ((*(STACK[0x6590] + 11) - ((2 * *(STACK[0x6590] + 11)) & 0xEA)) != 117)
  {
    v7 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((52581 * v7) ^ a1)))();
}

uint64_t sub_1004624D4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x5C50] = (((a1 ^ 0x57204F8CA37EDCEFLL) - 0x57204F8CA37EDCEFLL) ^ ((a1 ^ 0x26EE9FFA53EE30EELL) - 0x26EE9FFA53EE30EELL) ^ (((3 * ((v1 - 19763) ^ 0x3924u)) ^ 0x8E312F89E6BA5FCBLL) + (a1 ^ 0x71CED07619452B10))) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = -1595105857;
  return (*(STACK[0xF18] + 8 * (v1 - 19763)))();
}

uint64_t sub_100462648()
{
  v1 = STACK[0xF18];
  STACK[0x51A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x17CC ^ (v0 + 16481))))();
}

uint64_t sub_1004626B0()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 4036) ^ 0x192F) + v0)))();
}

uint64_t sub_100462798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xF10];
  v5 = STACK[0xF10] - 28943;
  LODWORD(STACK[0xAD58]) = v3;
  return (*(STACK[0xF18] + 8 * v5))(a1, a2, a3, v4);
}

uint64_t sub_10046283C()
{
  STACK[0xB50] = v0;
  v1 = STACK[0xF10] + 43;
  STACK[0x8AA0] = STACK[0xAE0];
  STACK[0x95E8] = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10046287C()
{
  STACK[0x9CE0] = ((v1 ^ 0x1FFDF32A5) & (2 * v2)) + (v2 ^ 0xFFFFDCF7FFEF9EF7) + 0x65543FB9BFFDF9CBLL;
  STACK[0x9CE8] = v0;
  v3 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x194E)))();
}

uint64_t sub_100462954@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x8728] + 28;
  LODWORD(STACK[0x10EE4]) = v2 + 1112314453 * (((~(&STACK[0x10000] + 3800) & 0x4089FDF2) - (~(&STACK[0x10000] + 3800) | 0x4089FDF3)) ^ 0xAFDFD72A) - 12816;
  STACK[0x10ED8] = v1;
  STACK[0x10EE8] = v3;
  STACK[0x10EF0] = a1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x91A3)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_100462A04@<X0>(int a1@<W8>)
{
  if (LOBYTE(STACK[0x813F]) != 2 && *(v3 + 648) - (((a1 ^ 0xFB192CA1) + 82236255) ^ ((a1 ^ 0x63A43B7) - 104481719) ^ (v2 - 351752385 + (a1 ^ 0x14F6B588 ^ (v2 - 35627)))) != -329061982)
  {
    v1 = 371891403;
  }

  if (LOBYTE(STACK[0x8F33]))
  {
    v5 = 371891403;
  }

  else
  {
    v5 = v1;
  }

  if (a1 == -371865855)
  {
    v6 = v1;
  }

  else
  {
    v6 = v5;
  }

  if (v6 == -371865839)
  {
    v7 = LOBYTE(STACK[0x8F33]);
  }

  else
  {
    v7 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((422 * v7) ^ v2)))();
}

uint64_t sub_100462AE4@<X0>(int a1@<W8>)
{
  STACK[0x7690] += ((v1 + 11821) | 0x20u) ^ 0xFFFFFFFFFFFF745BLL;
  LODWORD(STACK[0x6F0C]) = a1;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100462B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xF10] - 680;
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * v6))(a1, STACK[0xE58], STACK[0xE50], a4, a5, a6, STACK[0x950]);
}

uint64_t sub_100462C3C@<X0>(int a1@<W8>)
{
  v1 = ((STACK[0x48D0] - (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFB724B0B8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x719361230411ED1BLL)) > 0x7FFFFFFFB0952F93) ^ (*(STACK[0x1068] + 48) - (*(*STACK[0xE50] + (*STACK[0xE58] & 0x43420908)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91) > 0x7FFFFFFFB0952F93);
  v2 = 1022166737 * ((2 * (&STACK[0x10ED8] & 0x61C497F5B6B8FB48) - &STACK[0x10ED8] - 0x61C497F5B6B8FB4DLL) ^ 0xE0B11A77F357E521);
  STACK[0x10EF0] = v2;
  STACK[0x10ED8] = v1 | v2;
  LODWORD(STACK[0x10EFC]) = v2 + a1 + 1885186695 - 3618;
  LODWORD(STACK[0x10EE0]) = -1022166737 * ((2 * (&STACK[0x10ED8] & 0x61C497F5B6B8FB48) - &STACK[0x10ED8] + 1229391027) ^ 0xF357E521);
  LODWORD(STACK[0x10EE4]) = v2 + a1 + 782565441;
  LODWORD(STACK[0x10EE8]) = v2 + a1 + 1885186695 - 35;
  LODWORD(STACK[0x10EEC]) = a1 + 1885186695 - v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 + 16343)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * SLODWORD(STACK[0x10EF8])))(v4);
}

uint64_t sub_100462DB0@<X0>(int a1@<W8>)
{
  LOBYTE(STACK[0x814F]) = v2;
  LODWORD(STACK[0x5C7C]) = v1;
  v3 = 634647737 * ((~&STACK[0x10ED8] & 0xB69BDA8FE8B7C4D8 | &STACK[0x10ED8] & 0x4964257017483B20) ^ 0x6C4075608521EB24);
  LODWORD(STACK[0x10EF8]) = a1 - v3 - 1230214699;
  LODWORD(STACK[0x10EFC]) = ((a1 + 48874117) ^ 0x35) - v3;
  LODWORD(STACK[0x10EE4]) = a1 + 48874117 + v3;
  STACK[0x10EE8] = v3;
  STACK[0x10EF0] = v2 - v3;
  LODWORD(STACK[0x10ED8]) = -634647737 * ((~&STACK[0x10ED8] & 0xE8B7C4D8 | &STACK[0x10ED8] & 0x4964257017483B20) ^ 0x8521EB24);
  LODWORD(STACK[0x10EDC]) = a1 + 48874117 - v3 + 4506;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (a1 ^ 0x41D7)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_100462EA8()
{
  v1 = STACK[0x7DF8];
  v2 = STACK[0x8210];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = -841088134;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100462F34()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x7417 ^ (v0 + 25332))))();
}

uint64_t sub_100462FDC()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x2134];
  LODWORD(STACK[0x35EC]) = 1693393250;
  return (*(STACK[0xF18] + 8 * ((v0 + 1679506667) ^ 0x641B405D ^ (10832 * ((v0 + 1679506667) < 0x5618E5C7)))))();
}

uint64_t sub_100463074()
{
  LODWORD(STACK[0xABA8]) = v3 + 4;
  v5 = ((((v0 + 1688077972) ^ v4) - 2096964105) ^ ((v4 ^ 0xCBAEAB0C) + 741528838) ^ ((v4 ^ ((v0 - 7273) | 0x6A8) ^ 0x5E86C9BE) - 1189466082)) - 1090009882;
  if (v3 - 718144039 > v5 && v5 > 0xD531FDD4)
  {
    v1 = v2;
  }

  LODWORD(STACK[0xABAC]) = v1;
  return (*(STACK[0xF18] + 8 * ((13467 * (v1 == -371865839)) ^ v0)))();
}

uint64_t sub_100463188()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 1511760876;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100463290()
{
  v6 = *(v3 - 0x43D8CBFA0CEB427CLL);
  v7 = STACK[0xF18];
  STACK[0x91F0] = *(STACK[0xF18] + 8 * v0);
  STACK[0xAFB0] = v2 - (v5 & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  STACK[0xAFB8] = v1 - ((2 * v1) & 0x130272185FDB248CLL) + 0x981390C2FED2999 + (v4 - 8846);
  v8 = STACK[0x7690];
  STACK[0x69A0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v8 + 32;
  STACK[0x28B0] = v6 ^ 0x10A99C80114D1487;
  if (v6)
  {
    v9 = v2 == (v5 & 0x130272185FDB248CLL);
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(v7 + 8 * ((50 * v10) ^ (v4 - 8860))))();
}

uint64_t sub_1004633B0@<X0>(int a1@<W8>)
{
  v3 = STACK[0x7690];
  STACK[0x1218] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v3 + 32;
  STACK[0x9540] = 0;
  STACK[0x2BB8] = 0;
  LODWORD(STACK[0x72B4]) = a1;
  LODWORD(STACK[0x41C4]) = 0;
  return (*(STACK[0xF18] + 8 * ((29310 * ((((v2 ^ 0x55537A58) - 1431534168) ^ ((v2 ^ 0xA1B72DC7) + 1581830713) ^ (v1 - 489834125 + (((v1 ^ 0x3EC4) + 489751891) ^ v2))) - 371865844 < 0xFFFFFFFB)) ^ v1)))();
}

uint64_t sub_100463480()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x5B00];
  STACK[0x5D28] = &STACK[0x6A44];
  LODWORD(STACK[0x4704]) = 2031146007;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004637A8()
{
  v2 = *(v0 + 96);
  STACK[0x36B0] = v0 + 96;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 26566)))(((v1 - 25297) ^ 0xFFFFFFFELL) & v2);
  STACK[0x5988] = v4;
  return (*(v3 + 8 * ((14 * (v4 == 0)) ^ v1)))();
}

uint64_t sub_100463810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  v9 = 8 * a6;
  v10 = *(STACK[0xED0] + 4 * ((2899 * (((a6 ^ 0x8C16D03A) + 1027224052) ^ ((a6 ^ 0xCA288017) + 2063884767) ^ ((LODWORD(STACK[0xD40]) ^ a6 ^ 0x33904D86) - 2101561451)) - 1439160640) % 0x26C4));
  v11 = *(STACK[0xEC0] + 4 * ((707 * (((v10 ^ 0x89473EA2) - 1019695688) ^ ((v10 ^ 0x41A4AF8D) + 198917273) ^ ((v10 ^ 0xE571C8F8) - 1358013458)) - 95651017) % 0x300));
  v12 = (((v9 ^ 0xEC50B45F) + 1159528727) ^ ((v9 ^ 0xA2DFAEEC) + 194124710) ^ ((v9 ^ 0xE3FF291A) + 1253219412)) * a8 - 624297838;
  v13 = (((v9 ^ 0xED5979F4) - 10576904) ^ ((v9 ^ 0xE64253B8) - 196759108) ^ ((v9 ^ 0xA66B19F1) - 1267926029)) * a8 + 122756203;
  v14 = (((v9 ^ 0xFDBF9818) + 689783494) ^ ((v9 ^ 0x5242BFEC) - 2032114382) ^ ((v9 ^ 0x28D144A) - 701509992)) * a8 - 1047355474;
  v15 = (((v9 ^ 0x94DAA30F) + 1354046065) ^ ((v9 ^ 0xF255A203) + 909777789) ^ ((v9 ^ 0xCBFF32B0) + 261131216)) * a8 - 94645938;
  v16 = (((v9 ^ 0xD6215036) + 1317237696) ^ ((v9 ^ 0xBA5CE8CE) + 587123528) ^ ((v9 ^ 0xC10D8B42) + 1504684236)) * a8 - 369038498;
  v17 = v12 - ((((v12 >> 5) * a7) >> 32) >> 1) * v8;
  v18 = v13 - ((((v13 >> 5) * a7) >> 32) >> 1) * v8;
  v19 = ((((v9 ^ 0x5E20C7E) - 493029374) ^ ((v9 ^ 0xA5E27347) + 1117554489) ^ ((v9 ^ 0xD704A92) - 368132370)) + ((((16 * a6) & 0xC00) - 1200597045) ^ (((16 * a6) & 0xC00) - 1183885263) ^ (((16 * a6) & 0xC00 ^ 0x8A5D4F5) - 1328839714))) * a8 + 12410226;
  v20 = (((v9 ^ 0x41D4A6B2) + 1577636184) ^ ((v9 ^ 0x5A7AB1DB) + 1168557631) ^ ((v9 ^ 0xB6DE24C4) - 1459465438)) * a8 - 630274966;
  v21 = v14 - ((((v14 >> 5) * a7) >> 32) >> 1) * v8;
  v22 = v15 - ((((v15 >> 5) * a7) >> 32) >> 1) * v8;
  v23 = v16 - ((((v16 >> 5) * a7) >> 32) >> 1) * v8;
  v24 = (((v9 ^ 0x529DB5DE) + 1673622978) ^ ((v9 ^ 0x2EAC75CF) + 535868881) ^ ((v9 ^ 0xD141F3A8) - 534957128)) * a8 + 1498613699;
  v25 = (((v9 ^ 0xB81DB825) + 1823926200) ^ ((v9 ^ 0x6396FD32) - 1220697439) ^ ((v9 ^ 0x76FB76AC) - 1571804865)) * a8 - 1793088616;
  v26 = v20 - ((((v20 >> 5) * a7) >> 32) >> 1) * v8;
  v27 = v24 - ((((v24 >> 5) * a7) >> 32) >> 1) * v8;
  v28 = (((v9 ^ 0xBBB9E0D9) + 1453072099) ^ ((v9 ^ 0xA3F4776B) + 1322355025) ^ ((v9 ^ 0xB53DA40A) + 1477990962)) * a8 - 445298;
  v29 = v25 - ((((v25 >> 5) * a7) >> 32) >> 1) * v8;
  v30 = v28 - ((((v28 >> 5) * a7) >> 32) >> 1) * v8;
  v31 = (((v9 ^ 0x87AA4D4) + 807404449) ^ ((v9 ^ 0xF82F426A) - 1066015457) ^ ((v9 ^ 0x5D25D515) + 1702851170)) * a8 - 189014069;
  v32 = v19 - ((((v19 >> 5) * a7) >> 32) >> 1) * v8;
  v33 = v31 - ((((v31 >> 5) * a7) >> 32) >> 1) * v8;
  v34 = (((v9 ^ 0xBC72B525) + 1907873808) ^ ((v9 ^ 0xE5CF424C) + 671756135) ^ ((v9 ^ 0xF4CDC4C3) + 956869098)) * a8 - 320547342;
  v35 = *(a4 + 8 * v17);
  v36 = v34 - ((((v34 >> 5) * a7) >> 32) >> 1) * v8;
  v37 = (((v9 ^ 0x255B1540) + 1082272976) ^ ((v9 ^ 0xE4238998) - 2114277352) ^ ((v9 ^ 0x6C08AF74) + 164730620)) * a8 + 88698791;
  v38 = v37 - ((((v37 >> 5) * a7) >> 32) >> 1) * v8;
  v39 = (((v9 ^ 0xC3270CA5) - 86638905) ^ ((v9 ^ 0x1E6E5337) + 664576341) ^ ((v9 ^ 0x70396C2D) + 1238081103)) * a8 + 1630605245;
  v40 = *(STACK[0xED0] + 4 * ((2899 * (((v11 ^ 0x9621B094) + 2078218189) ^ ((v11 ^ 0xC88AD9F1) + 628391594) ^ ((v11 ^ 0x4FF6E088) - 1576515631)) + 336988414) % 0x26C4)) ^ 0xC6A71E2;
  v41 = v39 - ((((v39 >> 5) * a7) >> 32) >> 1) * v8;
  v42 = (STACK[0xEB0] + v40);
  LOBYTE(v17) = *v42;
  v43 = (((a6 ^ 0x3A5DA8DA) - 979216602) ^ ((a6 ^ 0x89392DB0) + 1992741456) ^ ((a6 ^ 0xC6CA8314) + 959806700)) - 546111708;
  v44 = (v43 ^ 0x4BB771B) & (2 * (v43 & 0x963B075B)) ^ v43 & 0x963B075B;
  v45 = ((2 * (v43 ^ 0xCDB79BD)) ^ 0x35C0FDCC) & (v43 ^ 0xCDB79BD) ^ (2 * (v43 ^ 0xCDB79BD)) & 0x9AE07EE6;
  v46 = v45 ^ 0x8A200222;
  v47 = (v45 ^ 0x10C03CC4) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x6B81FB98) & v46 ^ (4 * v46) & 0x9AE07EE0;
  v49 = 1864610357 * ((1864610357 * ((v42 ^ LODWORD(STACK[0xD30])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ LODWORD(STACK[0xD30])) & 0x7FFFFFFF)) >> 16));
  v50 = (v48 ^ 0xA807A80) & (16 * v47) ^ v47;
  v51 = v49 >> 24;
  v52 = ((16 * (v48 ^ 0x90600466)) ^ 0xAE07EE60) & (v48 ^ 0x90600466) ^ (16 * (v48 ^ 0x90600466)) & 0x9AE07EE0;
  v53 = v50 ^ 0x9AE07EE6 ^ (v52 ^ 0x8A006E00) & (v50 << 8);
  v54 = v49 ^ v17 ^ *(STACK[0xE60] + (v49 >> 24)) ^ *(STACK[0xE40] + (v49 >> 24));
  v55 = *(STACK[0xE30] + v51);
  v56 = -15 * v51;
  v57 = v43 ^ (2 * ((v53 << 16) & 0x1AE00000 ^ v53 ^ ((v53 << 16) ^ 0x7EE60000) & (((v52 ^ 0x10E01086) << 8) & 0x1AE00000 ^ 0x1A800000 ^ (((v52 ^ 0x10E01086) << 8) ^ 0x607E0000) & (v52 ^ 0x10E01086))));
  if ((v54 ^ (v55 ^ v56)))
  {
    v59 = v35 ^ 0x13C3090E3262C9F8;
  }

  else
  {
    v59 = 0x221AD1D466907F4CLL;
  }

  v58 = ((v9 ^ 0x3A0B49F5) - 1566310698) ^ ((v9 ^ 0xC9A4ABA5) + 1359748230) ^ ((v9 ^ 0x5EDFD1FE) - 965253409);
  v60 = v58 * a8 - 934078764 - (((((v58 * a8 - 934078764) >> 5) * a7) >> 32) >> 1) * v8;
  v61 = v59 ^ STACK[0xE70];
  v62 = (((v9 ^ 0xB65550B) - 1241538244) ^ ((v9 ^ 0xBFD35570) + 21602625) ^ ((v9 ^ 0x19C633D4) - 1487091739)) * a8 - 84749557;
  v63 = v62 - ((((v62 >> 5) * a7) >> 32) >> 1) * v8;
  v64 = *(a4 + 8 * v21) ^ 0x1491FE9FCA668D1ALL;
  if (((v54 ^ (v55 ^ v56)) & 1) == 0)
  {
    v64 = 0x1E6A2618467CDBDCLL;
  }

  v65 = ((((v54 ^ v56 ^ v55 ^ 4) + 48) ^ ((v54 ^ v56 ^ v55 ^ 0x65) + 79) ^ ((v54 ^ v56 ^ v55 ^ 0x61) + 75)) - 44);
  v67 = *(a4 + 8 * v33);
  v68 = *(a4 + 8 * v41);
  v69 = *(a4 + 8 * v38);
  v70 = *(a4 + 8 * v29) ^ 0x4885D78319D2F331;
  v71 = *(a4 + 8 * v30);
  v72 = *(a4 + 8 * v27) ^ 0x95CA8CB0DD221419;
  if (v65 >= 0)
  {
    v72 = 0x9F315437513842DFLL;
  }

  v73 = *(a4 + 8 * v60) ^ 0x21DB623FE7935556;
  if (v65 >= 0)
  {
    v73 = 0x1002BAE5B361E3E2;
  }

  v74 = *(a4 + 8 * v22);
  v75 = v68 ^ 0x8948649D1E77A3E9;
  v76 = *(a4 + 8 * v63);
  if (((v54 ^ (v55 ^ v56)) & 0x20) == 0)
  {
    v70 = 0x427E0F0495C8A5F7;
  }

  v77 = *(a4 + 8 * v23) ^ 0x9EF1AD9EF66948B1;
  v78 = v69 ^ 0xE2931A8F141993E9;
  if (((v54 ^ (v55 ^ v56)) & 0x20) == 0)
  {
    v78 = 0xD34AC25540EB255DLL;
  }

  v79 = v76 ^ 0x9A109E13C7560D65;
  v80 = v71 ^ 0xBAE256B304921819;
  if (((v54 ^ (v55 ^ v56)) & 0x40) == 0)
  {
    v79 = 0xABC946C993A4BBD1;
    v80 = 0xB0198E3488884EDFLL;
  }

  v81 = *(a4 + 8 * v26);
  if (((v54 ^ (v55 ^ v56)) & 2) == 0)
  {
    v75 = 0x83B3BC1A926DF52FLL;
  }

  v82 = *(a4 + 8 * v32) ^ 0xFE7A24EDF7BDA48;
  if (((v54 ^ (v55 ^ v56)) & 2) == 0)
  {
    v82 = 0x3E3E7A948B896CFCLL;
  }

  v83 = v74 ^ 0x575FDD0224537BE2;
  v84 = v81 ^ 0x82E112F54866D0E5;
  if (((v54 ^ (v55 ^ v56)) & 0x10) == 0)
  {
    v77 = 0x940A75197A731E77;
    v84 = 0xB338CA2F1C946651;
  }

  if (((v54 ^ (v55 ^ v56)) & 4) == 0)
  {
    v83 = 0x5DA40585A8492D24;
  }

  v85 = v67 ^ 0xDF15D8589E818B78;
  if (((v54 ^ (v55 ^ v56)) & 4) == 0)
  {
    v85 = 0xEECC0082CA733DCCLL;
  }

  v86 = *(a4 + 8 * v36) ^ 0x9DC9D7BDD30EA98CLL;
  if (((v54 ^ (v55 ^ v56)) & 8) == 0)
  {
    v86 = 0xAC100F6787FC1F38;
  }

  v87 = v61 ^ v86 ^ v78;
  v88 = v80 ^ v77;
  v89 = *(a4 + 8 * v18) ^ 0xECEAEA82BA878063;
  if (((v54 ^ (v55 ^ v56)) & 8) == 0)
  {
    v89 = 0xE6113205369DD6A5;
  }

  STACK[0xE80] ^= v64 ^ v70 ^ v75 ^ v88 ^ v89 ^ v83 ^ v72 ^ 0xDF300D9C7CCE62F2;
  v66 = (((v57 ^ 0x83C36486) - 1616287855) ^ ((v57 ^ 0xD8D3CDC2) - 994455850) ^ ((v57 ^ 0xCD2B53D2) - 784248635)) + 1974339198 > 0x2F;
  v90 = *(STACK[0xF18] + 8 * (((4 * v66) | (8 * v66)) ^ LODWORD(STACK[0xD50])));
  STACK[0xE70] = v87 ^ v82 ^ v85 ^ v79 ^ v84 ^ v73 ^ 0x854150F3DC2C2A7BLL;
  return v90();
}

uint64_t sub_1004647C0()
{
  LODWORD(STACK[0x3E8C]) = -371865839;
  STACK[0x21D8] = 0;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x676B ^ (v0 + 5654))))();
}

uint64_t sub_10046483C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 695329865;
  v2 = STACK[0x3A88];
  v3 = 634647737 * (((&STACK[0x10ED8] ^ 0x9D42E2F81AB1AE47 | 0x534DABA577457528) - (&STACK[0x10ED8] ^ 0x9D42E2F81AB1AE47) + ((&STACK[0x10ED8] ^ 0x9D42E2F81AB1AE47) & 0xACB2545A88BA8AD7)) ^ 0x14D4E6B20062F493);
  LODWORD(STACK[0x10EF8]) = STACK[0xF10] - v3 - 1230214699;
  LODWORD(STACK[0x10EFC]) = v1 - v3 - 242;
  LODWORD(STACK[0x10EE4]) = v1 + v3;
  STACK[0x10EF0] = v2 - v3;
  STACK[0x10EE8] = v3;
  LODWORD(STACK[0x10EDC]) = v1 - v3 + 3726;
  LODWORD(STACK[0x10ED8]) = -634647737 * (((&STACK[0x10ED8] ^ 0x9D42E2F81AB1AE47 | 0x77457528) - (&STACK[0x10ED8] ^ 0x9D42E2F81AB1AE47) + ((&STACK[0x10ED8] ^ 0x9D42E2F81AB1AE47) & 0x88BA8AD7)) ^ 0x62F493);
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41D7)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_100464944(int a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v11 = STACK[0xF10] + v8;
  v12 = (LODWORD(STACK[0xA320]) + a1);
  LODWORD(STACK[0x6CBC]) = v12;
  v13 = (v12 | ((v12 < a2) << 32)) + a3;
  *(v13 + STACK[0x4D80] + a4) = a5;
  STACK[0x4160] = v13;
  return (*(STACK[0xF18] + 8 * (v11 ^ v10 ^ (((v11 ^ a7) > a8) * v9))))();
}

uint64_t sub_1004649BC(unsigned int a1, unsigned int a2)
{
  if ((((a2 ^ 0xCC09C349) + 871775415) ^ ((a2 ^ 0x1ECC2D24) - 516697380) ^ (((v2 + 1301) ^ 0xC4EFC884) + (a2 ^ 0x3B10297C))) - 371865839 >= 4)
  {
    return (*(STACK[0xF18] + 8 * v2))(a1);
  }

  else
  {
    return (*(STACK[0xF18] + 8 * v2))(a2);
  }
}

uint64_t sub_100464B7C@<X0>(int a1@<W8>)
{
  STACK[0xB570] = v2;
  LODWORD(STACK[0xB57C]) = v1;
  STACK[0xB580] = v4;
  STACK[0xB588] = v3;
  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(STACK[0xF18] + 8 * ((v6 * (a1 - 58209 + ((a1 - 29098) | 0x6200))) ^ a1)))();
}

uint64_t sub_100464BD8@<X0>(unint64_t a1@<X8>)
{
  v7 = *(v3 + 132);
  v8 = STACK[0xF18];
  STACK[0x1F18] = *(STACK[0xF18] + 8 * v6);
  LODWORD(STACK[0x93A4]) = v7;
  STACK[0x3B10] = a1;
  STACK[0x7DC8] = v4;
  v9 = STACK[0x7690];
  v10 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x90D0] = v10;
  STACK[0xAF18] = v10;
  STACK[0x6A20] = (v10 + 255);
  STACK[0x21F0] = (v10 + 271);
  STACK[0x7690] = v9 + 592;
  LODWORD(STACK[0x2E30]) = 676807084;
  if (v1)
  {
    v11 = v5 == 0;
  }

  else
  {
    v11 = 1;
  }

  v14 = v11 || a1 == 0 || v4 == 0;
  return (*(v8 + 8 * (((((v2 ^ v14) & 1) == 0) | (16 * (((v2 ^ v14) & 1) == 0))) ^ v2)))();
}

uint64_t sub_100464CBC()
{
  v2 = (STACK[0xF10] ^ 0x8233) + 5884;
  v3 = STACK[0xF10] - 28278;
  LODWORD(STACK[0x3820]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 ^ 0x525C) * v0) ^ v3)))();
}

uint64_t sub_100464E0C()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] + 950247910;
  LODWORD(STACK[0xA4FC]) = LODWORD(STACK[0xA4F4]) - 1153919548 + ((((8 * v0) ^ 0xD8168135) + 1281391192) ^ (((8 * v0) ^ 0x59149802) - 849190047) ^ (((((STACK[0xF10] + 1190185763) & 0xB90EAFBF) - 810804319) ^ (8 * v0)) + 1541069534));
  return (*(STACK[0xF18] + 8 * ((109 * (((v1 - v3) | (v3 - v1)) >= 0)) ^ (v2 - 3073))))();
}

uint64_t sub_100464F90()
{
  v1 = STACK[0xF10] ^ 0xCFED;
  v2 = STACK[0xF10] - 31105;
  v3 = STACK[0xA450];
  *(v3 + 16) = v0;
  *(v3 + 24) = 0xF67EC6F3D0126DB9;
  return (*(STACK[0xF18] + 8 * ((v1 - 7322) ^ v2)))();
}

uint64_t sub_100464FE4@<X0>(int a1@<W8>)
{
  STACK[0x40B8] = v1;
  STACK[0x96F0] = v2;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * ((a1 ^ 0x2AC) - 75019 + ((a1 - 37692) | 0x8301))) ^ a1)))();
}

uint64_t sub_10046507C()
{
  v1 = *(STACK[0x2DC0] + 80);
  v2 = v1 & 0x9F ^ 0xE0;
  v3 = (((v0 - 127) | 8) + 20) ^ v1;
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = (v1 ^ (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * v1) ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ v2))) ^ 0xE9D5C78E;
  LODWORD(STACK[0x35EC]) = 1693393222;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10046516C@<X0>(int a1@<W8>)
{
  STACK[0x60B8] = &STACK[0x6288];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = -172985304;
  return (*(STACK[0xF18] + 8 * (a1 - 25464)))();
}

uint64_t sub_100465224()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 19695)))(LODWORD(STACK[0x332C]) ^ 0xE9D5C711);
  STACK[0x8560] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 25306) | 0x410) - 7808)) ^ v0)))();
}

uint64_t sub_100465354@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x72C8]) = v2;
  STACK[0x5330] = v3;
  STACK[0x89E8] = v4;
  LODWORD(STACK[0x8644]) = a1;
  STACK[0x69C8] = v1;
  return (*(STACK[0xF18] + 8 * v5))();
}

uint64_t sub_1004653C4()
{
  v2 = 1772 * (v0 ^ 0x95D4);
  v4 = (STACK[0x24A4] & 0xFFFFFFFE) != ((911 * ((v2 + 112229185) & 0xF94F7FFF ^ 0x16F5)) ^ 0xE9D5C92A) && v1 == 105;
  return (*(STACK[0xF18] + 8 * ((40588 * v4) ^ v2)))();
}

uint64_t sub_100465520()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 189336612;
  *(STACK[0x78B0] + 160) = 0;
  return (*(STACK[0xF18] + 8 * ((v0 + 189305933) ^ v1 ^ (104731 * (v1 > 0xC58F27E6)))))();
}

uint64_t sub_100465580@<X0>(int a1@<W8>)
{
  v2 = STACK[0x1320];
  v3 = STACK[0x93F0];
  v4 = (a1 ^ 0x24325BA4) & (2 * (a1 & 0xA6BB63B6)) ^ a1 & 0xA6BB63B6;
  v5 = ((2 * ((v1 + 676061409) ^ a1)) ^ 0x55776EC) & ((v1 + 676061409) ^ a1) ^ (2 * ((v1 + 676061409) ^ a1)) & 0x82ABBB76;
  v6 = v5 ^ 0x82A88912;
  v7 = (v5 ^ 0x31260) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xAAEEDD8) & v6 ^ (4 * v6) & 0x82ABBB70;
  v9 = (v8 ^ 0x2AAA940) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x80011226)) ^ 0x2ABBB760) & (v8 ^ 0x80011226) ^ (16 * (v8 ^ 0x80011226)) & 0x82ABBB60;
  v11 = v9 ^ 0x82ABBB76 ^ (v10 ^ 0x2ABB300) & (v9 << 8);
  v12 = LODWORD(STACK[0x50DC]) + 105876725;
  v13 = 353670337 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x3D3A3E68) + 1027227240) ^ 0x891BC655);
  LODWORD(STACK[0x10F10]) = 2005924293 - v13;
  LODWORD(STACK[0x10EF8]) = v12 ^ v13;
  LODWORD(STACK[0x10EE8]) = v13 ^ a1 ^ (2 * ((v11 << 16) & 0x2AB0000 ^ v11 ^ ((v11 << 16) ^ 0x3B760000) & ((((v10 ^ 0x80000816) << 8) ^ 0x2BBB0000) & (v10 ^ 0x80000816) ^ ((v10 ^ 0x80000816) << 8) & 0x2AB0000))) ^ 0x253C7025;
  LODWORD(STACK[0x10EDC]) = v13 + 776400610 + v1;
  STACK[0x10F08] = &STACK[0x5A94];
  STACK[0x10F00] = v3;
  LOWORD(STACK[0x10EFC]) = -27455 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x3E68) + 15976) ^ 0xC655) + 518;
  STACK[0x10EE0] = v2;
  STACK[0x10EF0] = &STACK[0xF28] ^ 0x5DF2F71386CDF5DLL;
  v14 = STACK[0xF18];
  v15 = (*(STACK[0xF18] + 8 * (v1 + 71029712)))(&STACK[0x10ED8]);
  return (*(v14 + 8 * ((43824 * (v1 > 0xE410A391)) ^ (v1 + 70986915))))(v15);
}

uint64_t sub_100465814@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x3468] = *(STACK[0xF18] + 8 * (a1 - 32036));
  return (*(v1 + 8 * (((a1 - 32036) ^ 0xBC0) + a1 - 32036)))();
}

uint64_t sub_100465874()
{
  v1 = STACK[0xF18];
  STACK[0x8390] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x167B)))();
}

uint64_t sub_1004658E4()
{
  v1 = STACK[0xF18];
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * (v0 - 724437285));
  return (*(v1 + 8 * ((((v0 + 1265363125) & 0x8966BDFB) - 36997) ^ (v0 - 724437285))))();
}

uint64_t sub_1004659AC(uint64_t a1, int a2, int a3, int a4)
{
  v6 = ((109 * (a2 ^ 0x4265)) ^ 0xDD2FA4EE) + v5;
  v7 = a1 + ((a4 - 1684861577) << 7);
  v8 = *(v7 + 4 * v6);
  v9 = a3 ^ v8 ^ ((v8 ^ 0x97EC2217) + 1372468260) ^ ((v8 ^ 0xB809FFC2) + 2116807159) ^ ((v8 ^ 0xFBF7FFFF) + 1037429196) ^ ((a2 ^ 0xEDCF88C3 ^ v8) + 737009110);
  *(v7 + 4 * v6) = (((v9 ^ 0x450FC29D) + 811580017) ^ ((v9 ^ 0xD5C5C42C) - 1600799550) ^ ((v9 ^ 0x20FEF6E) + 2002753412)) + 1380472984;
  return (*(STACK[0xF18] + 8 * (a2 ^ (2874 * (v4 == 879968414)))))();
}

uint64_t sub_100465AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned int a4@<W8>)
{
  v9 = a4 < v5;
  *(*(a1 + 16) + 8 * ((v8 ^ v6) + v4 + v7)) = a2;
  if (v9 == v4 + a3 < v5)
  {
    v9 = v4 + a3 < a4;
  }

  return (*(STACK[0xF18] + 8 * ((510 * !v9) ^ v8)))();
}

uint64_t sub_100465BE8@<X0>(int a1@<W8>)
{
  *(v1 + 12) = -371865839;
  v3 = 1112314453 * ((2 * ((&STACK[0x10000] + 3800) & 0x45493BC8) - (&STACK[0x10000] + 3800) + 985056305) ^ 0xD5E0EEE8);
  LODWORD(STACK[0x10EDC]) = (a1 ^ 0x4776F56A) - v3;
  LODWORD(STACK[0x10EE0]) = v3 + v2 - 2086941361;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xFE98)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LOBYTE(STACK[0x10ED8]) == (((v2 - 36) | 0x10) ^ 6)) * (((v2 + 3466) | 0x122) ^ 0x411C)) ^ v2)))(v5);
}

uint64_t sub_100465CCC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 20377)))(((v0 - 783136475) ^ 0xD152C24C) * LODWORD(STACK[0x48B0]) - 641206944);
  STACK[0x1890] = v2;
  return (*(v1 + 8 * ((489 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_100465D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x7CC0];
  v4 = STACK[0x31B0];
  v5 = 353670337 * ((((&STACK[0x10000] + 3800) | 0xB0A638F4) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x4F59C708)) ^ 0x487C0C9);
  STACK[0x10EF0] = a1 + 48;
  LODWORD(STACK[0x10EFC]) = v5 + 1478433450 + v2;
  LODWORD(STACK[0x10ED8]) = v5 ^ 0x8E46075;
  STACK[0x10F08] = &STACK[0xF28] ^ 0x29DCF992F38096FCLL ^ (v2 + 21642);
  STACK[0x10F00] = v4;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v1 + 229;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 38067)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_100465E78@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EE4]) = (v1 - 16033) ^ (1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x637D63C0) - (&STACK[0x10000] + 3800) + 478321727) ^ 0xC118AB5));
  STACK[0x10ED8] = a1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4058)))(&STACK[0x10ED8]);
  *(v3 + 128) = v2;
  return (*(v4 + 8 * (v1 - 12132)))(v5);
}

uint64_t sub_100465F08@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 30961 + ((a1 - 2980) | 0x821E))))();
}

uint64_t sub_100466000()
{
  v1 = STACK[0xF18];
  STACK[0x2FE0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1413 ^ (6145 * (v0 - 1723034139 <= (v0 - 374848970))))))();
}

uint64_t sub_1004660A0()
{
  v1 = STACK[0xF10] - 16902;
  v2 = (STACK[0xF10] - 2549) | 0xC10;
  v3 = STACK[0xF10] - 12318;
  STACK[0x20E8] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 + v2 - 54871) * (v0 == 0)) ^ v3)))();
}

uint64_t sub_10046614C@<X0>(int a1@<W8>)
{
  v6 = v3 < v4;
  v7 = v5 + 72 * v2;
  *v7 = 0x981390C2FED9246;
  *(v7 + 8) = 0x36DE690FE9D5C711;
  *(v7 + 16) = 0;
  *(v7 + 24) = a1;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = a1;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0xE9D5C711E9D5C711;
  LODWORD(v7) = v2 - 35642;
  v8 = v2 + 1619842557 < v3;
  if (v6 == v7 + ((v1 + 182415539) & 0xF5208B7B) > 0x9F732A03)
  {
    v6 = v8;
  }

  return (*(STACK[0xF18] + 8 * ((19 * !v6) ^ v1)))();
}

uint64_t sub_100466218@<X0>(int a1@<W8>)
{
  v1 = *STACK[0xE58];
  v2 = *STACK[0xE50];
  v3 = (STACK[0x6138] - (*(v2 + (v1 & 0xFFFFFFFFB724B0B8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x719361230411ED1BLL)) > 0x7FFFFFFF3DC7D6FCLL;
  v4 = *(STACK[0x2748] + 48) - (*(v2 + (v1 & 0x43420908)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91) > 0x7FFFFFFF3DC7D6FCLL;
  v5 = 1022166737 * ((~&STACK[0x10ED8] & 0xF97CFE785E878EDBLL | &STACK[0x10ED8] & 0x6830187A1787120) ^ 0x87F68C05E4976F49);
  LODWORD(STACK[0x10EEC]) = a1 - 212042972 - v5;
  LODWORD(STACK[0x10EE8]) = ((a1 - 212042972) & 0xF37FCEF2) + v5;
  LODWORD(STACK[0x10EE4]) = v5 + 782565441 + a1;
  LODWORD(STACK[0x10EE0]) = -1022166737 * ((~&STACK[0x10ED8] & 0x5E878EDB | &STACK[0x10ED8] & 0x6830187A1787120) ^ 0xE4976F49);
  STACK[0x10ED8] = v3 ^ v4 | v5;
  LODWORD(STACK[0x10EFC]) = ((a1 - 212042972) ^ 0x12D0) + v5;
  STACK[0x10EF0] = v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4029)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * SLODWORD(STACK[0x10EF8])))(v7);
}

uint64_t sub_1004664B0()
{
  v0 = STACK[0xF10] - 32867;
  v1 = STACK[0xF10] + 10215;
  v2 = STACK[0xF18];
  STACK[0x40F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x9A66 ^ v1)))();
}

uint64_t sub_10046653C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x2A7A ^ (a1 - 2005594139) & 0x778AE7D3)))();
}

uint64_t sub_10046658C()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0xE65B0060 | (&STACK[0x10000] + 3800) & 0x19A4FF98) ^ 0x7D1BAF) + 296786540;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC254)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((LOBYTE(STACK[0x5353]) * (v0 + 8495)) ^ v0)))(v2);
}

uint64_t sub_10046662C()
{
  v1 = 353670337 * ((-2 - ((~&STACK[0x10ED8] | 0x41F560E9484809A7) + (&STACK[0x10ED8] | 0xBE0A9F16B7B7F658))) ^ 0xB164D662FC69F19ALL);
  LODWORD(STACK[0x10EF0]) = v1 + 1687338135;
  STACK[0x10EE8] = v1 + 0x31B495479FA32553;
  STACK[0x10EE0] = 0x2CB8161969575A1DLL - v1;
  LODWORD(STACK[0x10ED8]) = v1 + v0 - 40514;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x69E3)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100466724@<X0>(unint64_t a1@<X8>)
{
  v2 = 17902189 * ((~(&STACK[0x10000] + 3800) & 0x3C38F49F | (&STACK[0x10000] + 3800) & 0xC3C70B60) ^ 0xB277E28F);
  STACK[0x10EE8] = a1;
  LODWORD(STACK[0x10EDC]) = (v1 + 165) ^ v2;
  LODWORD(STACK[0x10ED8]) = v2 - 693524120;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16605)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 - 992)))(v4);
}

uint64_t sub_10046694C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 34792)))();
  STACK[0x6A98] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004669A0()
{
  LODWORD(STACK[0xE60]) = 0;
  LODWORD(STACK[0xE70]) = 0;
  v1 = STACK[0xF18];
  STACK[0x4648] = *(STACK[0xF18] + 8 * v0);
  v2 = *(v1 + 8 * ((((v0 + 5753) | 0x8800) ^ 0xBD34) + v0));
  LODWORD(STACK[0xEA0]) = 1;
  return v2();
}

uint64_t sub_1004669E8()
{
  LODWORD(STACK[0x7B00]) = -1304553729;
  v1 = STACK[0xF18];
  STACK[0x6580] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 1136226207) & 0xBC46C6F2 ^ 0x500A) + v0)))();
}

uint64_t sub_100466A50()
{
  if (*(v2 + 8) == (v1 ^ 0x883) - 371884469)
  {
    v3 = 5;
  }

  else
  {
    v3 = 4;
  }

  return (*(STACK[0xF18] + 8 * ((2179 * (v0 == v3)) ^ v1)))();
}

uint64_t sub_100466B54@<X0>(unint64_t *a1@<X7>, unsigned int a2@<W8>)
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
  STACK[0xBD70] = 0;
  STACK[0xBD78] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBD70] | v13);
  *(&STACK[0xBD70] | v13) = STACK[0xBD77];
  v17 = *(&STACK[0xBD70] | v14);
  *(&STACK[0xBD70] | v14) = STACK[0xBD76];
  v18 = *(&STACK[0xBD70] | v15);
  *(&STACK[0xBD70] | v15) = STACK[0xBD75];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBD77]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBD76]) = v17;
  LOBYTE(STACK[0xBD75]) = v18;
  v23 = STACK[0xBD70];
  LOBYTE(STACK[0xBD70]) = STACK[0xBD74];
  LOBYTE(STACK[0xBD74]) = v23;
  v24 = *(&STACK[0xBD70] | v20);
  *(&STACK[0xBD70] | v20) = STACK[0xBD73];
  LOBYTE(STACK[0xBD73]) = v24;
  v25 = STACK[0xBD71];
  LOBYTE(STACK[0xBD72]) = STACK[0xBD70];
  LOWORD(STACK[0xBD70]) = v25;
  STACK[0xBD70] = vmla_s32(v22, STACK[0xBD70], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBD78];
  v27 = (553300517 * STACK[0xBD78]) ^ v12;
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
  v48 = *(&STACK[0xBD78] + v13);
  *(&STACK[0xBD78] + v13) = STACK[0xBD7F];
  LOBYTE(STACK[0xBD7F]) = v48;
  v49 = *(&STACK[0xBD78] + v14);
  *(&STACK[0xBD78] + v14) = STACK[0xBD7E];
  LOBYTE(STACK[0xBD7E]) = v49;
  v50 = *(&STACK[0xBD78] + v15);
  *(&STACK[0xBD78] + v15) = STACK[0xBD7D];
  LOBYTE(STACK[0xBD7D]) = v50;
  v51 = STACK[0xBD78];
  LOBYTE(STACK[0xBD78]) = STACK[0xBD7C];
  LOBYTE(STACK[0xBD7C]) = v51;
  v52 = *(&STACK[0xBD78] + v20);
  *(&STACK[0xBD78] + v20) = STACK[0xBD7B];
  LOBYTE(STACK[0xBD7B]) = v52;
  v53 = STACK[0xBD79];
  LOBYTE(STACK[0xBD7A]) = STACK[0xBD78];
  LOWORD(STACK[0xBD78]) = v53;
  STACK[0xBD78] = vmla_s32(v22, STACK[0xBD78], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBD78] ^ STACK[0xBD70];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_100466FF4()
{
  v1 = STACK[0xF18];
  STACK[0x8228] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 33435 + (v0 ^ 0x8633))))();
}

uint64_t sub_100467024()
{
  v3 = STACK[0x5DF8];
  LODWORD(STACK[0xB088]) = STACK[0x5DF8];
  v4 = v3 - 1255245292 + (((v2 ^ 0x77C1C6F9) - 2009188089) ^ ((v2 ^ 0xF31AD85C) + 216344484) ^ ((v2 ^ 0x6D0ED9B4) - 1829725423 + ((v0 - 4406) | 0x132)));
  v5 = (((v1 ^ 0x1B056AC5) - 453339845) ^ ((v1 ^ 0xDDD176C8) + 573475128) ^ ((((v0 - 38843) | 0xC12) ^ 0xD0FE2B72) + (v1 ^ 0x2F01DB1C))) - 1255245292;
  v6 = v4 < 0xCB58B303;
  v7 = v4 > v5;
  if (v5 < 0xCB58B303 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((88 * v7) ^ v0)))();
}

uint64_t sub_1004672A8()
{
  v3 = *(v1 + 1);
  *(v0 + 9) = v3;
  *v0 = 2;
  return (*(STACK[0xF18] + 8 * (((v3 == (v2 - 21)) * (v2 - 13810)) ^ v2)))();
}

uint64_t sub_1004672FC@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0x71BD;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * ((a1 ^ 0x71BD) + 45044)))();
  STACK[0x1A20] = v3;
  return (*(v2 + 8 * ((((v1 + 1379064756) & 0xADCD7FAF ^ (v1 - 2056940393) & 0x7A9ADBFF ^ 0xFC98) * (v3 == 0)) ^ v1)))();
}

uint64_t sub_100467378()
{
  v2 = STACK[0x66B8];
  STACK[0x9B40] = v0 ^ 0x8D17A9CD659F17C6;
  return (*(STACK[0xF18] + 8 * ((v1 & 0xC8A87FFF) + 7310)))(v2);
}

uint64_t sub_100467534()
{
  LODWORD(STACK[0xAD24]) = *(v1 + 140);
  STACK[0xAD28] = v1 + 60;
  return (*(STACK[0xF18] + 8 * (((((93 * (v0 ^ 0x20)) ^ (STACK[0xACF8] == 0)) & 1) * (v0 - 17626)) ^ v0)))();
}

uint64_t sub_1004675DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x3964]) = STACK[0x8CAC];
  STACK[0x3DC0] = (a8 + 26480) + STACK[0x5430] - ((2 * STACK[0x5430]) & 0x91A758235BFCC07ALL) - 0x372C53EE5202611ELL;
  LODWORD(STACK[0x56C0]) = STACK[0x79F4];
  STACK[0x2F90] = 0;
  LODWORD(STACK[0x6BAC]) = 0;
  v8 = STACK[0xF18];
  STACK[0x8CC0] = *(STACK[0xF18] + 8 * (a8 - 19667));
  return (*(v8 + 8 * (a8 - 7927)))();
}

uint64_t sub_1004676C4()
{
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x4F88];
  LODWORD(STACK[0x648C]) = -990015167;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100467708()
{
  LODWORD(STACK[0x499C]) = v2;
  STACK[0x7690] = v0 - 1248;
  return (*(STACK[0xF18] + 8 * (v1 - 25862)))();
}

uint64_t sub_10046778C()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393342;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004677C0@<X0>(int a1@<W8>)
{
  *(v3 + 24) = a1 + 1;
  v4 = STACK[0xF10] + 155453101 * ((((&STACK[0x10000] + 3800) | 0x5FC164E6) - ((&STACK[0x10000] + 3800) & 0x5FC164E0)) ^ 0xB9E77F29);
  STACK[0x10ED8] = *(v3 + 16);
  LODWORD(STACK[0x10EE0]) = v4 + 296753103;
  v5 = v2 ^ 0x8843;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * v5))(&STACK[0x10ED8]);
  STACK[0x7ED0] = v3 + 56;
  v8 = *(v6 + 8 * (v1 ^ 0x25EB ^ (23972 * (v1 == -1211679462))));
  LODWORD(STACK[0xEC0]) = -371865839;
  return v8(v7);
}

uint64_t sub_1004678F4()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] + 1837780155) & 0x92752BBB;
  v3 = STACK[0xF10] - 30259;
  v4 = STACK[0xAB70];
  v5 = 1012831759 * ((((2 * (&STACK[0x10000] + 3800)) | 0x2B43E284) - (&STACK[0x10000] + 3800) + 1784549054) ^ 0x8532E7C8);
  STACK[0x10EE8] = STACK[0xAB78];
  LODWORD(STACK[0x10EE0]) = v5 ^ 0x74F032E9;
  STACK[0x10ED8] = v4;
  LODWORD(STACK[0x10EF0]) = v1 - v5 + 1341;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0x40C3)))(&STACK[0x10ED8]);
  v8 = STACK[0x10EE4];
  LODWORD(STACK[0x9B64]) = STACK[0x10EE4];
  return (*(v6 + 8 * (((v8 == v0) * (v2 ^ 0x63F1)) ^ v3)))(v7);
}

uint64_t sub_1004679E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x6FF8];
  STACK[0x5D28] = &STACK[0x5C3C];
  LODWORD(STACK[0x4704]) = 1505600537;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100467A88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int8x16_t a5@<Q2>, int8x16_t a6@<Q3>, int8x16_t a7@<Q4>, int8x16_t a8@<Q5>)
{
  v13 = *(a2 + a1);
  v14 = veorq_s8(vandq_s8(v13, v11), v12);
  v15 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(vaddq_s8(v13, v13), a3), a4), v13), v14);
  v16 = veorq_s8(v13, a8);
  v17 = veorq_s8(vandq_s8(vaddq_s8(v15, v15), v16), v14);
  v18 = veorq_s8(vandq_s8(vaddq_s8(v17, v17), v16), v14);
  v19 = veorq_s8(vandq_s8(vaddq_s8(v18, v18), v16), v14);
  v20 = veorq_s8(vandq_s8(vaddq_s8(v19, v19), v16), v14);
  v21 = veorq_s8(vandq_s8(vaddq_s8(v20, v20), v16), v14);
  *(STACK[0xED0] + a1) = veorq_s8(veorq_s8(veorq_s8(v13, vaddq_s8(vsubq_s8(*(STACK[0xEC0] + a1), vandq_s8(vaddq_s8(*(STACK[0xEC0] + a1), *(STACK[0xEC0] + a1)), a5)), a6)), a7), vaddq_s8(v21, v21));
  return (*(STACK[0xF18] + 8 * ((51 * (v10 & ~((((a1 + 16 - v8) | (v8 - (a1 + 16))) >> 63) ^ (v8 + 26093)))) ^ (v8 + v9))))();
}

uint64_t sub_100467B60(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = STACK[0x9228] + 65;
  LOWORD(STACK[0x79DE]) = 7084;
  LODWORD(STACK[0x16B4]) = -915004803;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100467BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((((STACK[0x91C8] ^ 0xF0E49ED8E8F984CCLL) + 0xF1B612717067B34) ^ ((STACK[0x91C8] ^ 0x912F13B0706671ECLL) + 0x6ED0EC4F8F998E14) ^ (((((v3 + 31515) | 0x831u) + 0x684AB464B771DC2BLL) ^ STACK[0x91C8]) - 0x684AB464B7726766)) + 0x981390C2FED9246) >> 32)
  {
    v4 = 1;
  }

  else
  {
    v4 = STACK[0x2D37];
  }

  LOBYTE(STACK[0xA237]) = v4;
  STACK[0xA238] = LODWORD(STACK[0x7BAC]) - ((2 * LODWORD(STACK[0x7BAC])) & 0x7D4BE8A2) - 0x742C2468C15A0BAFLL;
  return (*(STACK[0xF18] + 8 * (v3 + 3072)))(a1, a2, a3, (v3 + 31515) | 0x831u);
}

uint64_t sub_100467DDC()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v0 - 35654));
  return (*(v1 + 46936))();
}

uint64_t sub_100467E24()
{
  v0 = STACK[0xF10] + 4155;
  v1 = STACK[0xF10] - 34228;
  v2 = STACK[0xF18];
  STACK[0x5418] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0xAD87)))();
}

uint64_t sub_100467FA8(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v7 = (v5 + 4 * (a4 & 0x1F));
  v8 = vaddq_s32(v7[1], v6);
  *v7 = vaddq_s32(*v7, v6);
  v7[1] = v8;
  return (*(STACK[0xF18] + 8 * ((173 * (a2 != 0)) ^ (v4 + 1770))))();
}

uint64_t sub_100467FF0()
{
  v1 = STACK[0x938];
  v2 = *(STACK[0x938] + 16);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762652290) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x1C48427F) - ((&STACK[0x10000] + 3800) | 0xE3B7BD80) - 474497664) ^ 0x2D498F5B));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xA2A8)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x72D8]) = (*(v3 + 8 * (v0 ^ 0xA3DD)))(*(*v1 + 640 * (LODWORD(STACK[0x17D8]) - 1210925842)));
  v4 = STACK[0x6230];
  STACK[0x5240] = STACK[0x6230];
  v5 = STACK[0x43CC];
  LODWORD(STACK[0x7704]) = STACK[0x43CC];
  if (v4)
  {
    v6 = v5 == -371865839;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v3 + 8 * ((v7 * ((v0 - 4436) ^ 0x56BA)) ^ v0)))();
}

uint64_t sub_100468180()
{
  STACK[0x7640] = v0 + 46;
  STACK[0x18D8] = v0 + 46;
  STACK[0xF80] = v5;
  STACK[0x2340] = v0 + 86;
  STACK[0xAC40] = v4 + v2;
  STACK[0x7690] = v3 - 35611 + ((v1 + 989997749) & 0xC4FDEBFB);
  LODWORD(STACK[0x22EC]) = -371865813;
  STACK[0x4130] = 0;
  return (*(STACK[0xF18] + 8 * ((58 * ((((v6 ^ 0x649C564F) - 1687967311) ^ ((v6 ^ 0xDD493D9B) + 582402661) ^ ((v6 ^ 0x5000ACC5) - 1342234658 + ((v1 - 17285) | 0x258))) - 371865839 < 2)) ^ v1)))(v4 + v2);
}

uint64_t sub_10046827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0xA500]) = v6;
  LODWORD(STACK[0xA504]) = v5;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1AB1)))(a1, a2, a3, a4, ((v4 - 1287800415) & 0x4CC2CB7B ^ 0xFC79479u) + v5);
}

uint64_t sub_1004685CC()
{
  v0 = (STACK[0xF10] ^ 0x4FF8) - 20422;
  v1 = STACK[0xF10] + 7080;
  STACK[0x9DF0] = &STACK[0x4524];
  if (STACK[0xACB8])
  {
    v2 = LODWORD(STACK[0xACC0]) == (v0 ^ 0xE9D5B3EC);
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((504 * v3) ^ v1)))();
}

uint64_t sub_10046866C(uint64_t a1)
{
  v3 = STACK[0xB630];
  *a1 = STACK[0xB628];
  *(a1 + 8) = 4292945040;
  *(a1 + 16) = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & ((v1 ^ 0xEBD5u) + 1128382735)));
  *(a1 + 64) = 0x981390C2FED9246;
  *(a1 + 72) = 0x981390C2FED9246;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 80) = 0xE9D5C711E9D5C711;
  *(a1 + 88) = -371865839;
  *(a1 + 128) = 0x176E9D5C700;
  *(a1 + 136) = 0;
  *(a1 + 48) = (v4 & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91 ^ v4 & 0x4121780B1DC46D00 ^ 0x8020180B0C844400) - (v4 & 0x4121780B1DC46D00 ^ 0x8020180B0C844400);
  *(a1 + 56) = 0x981390C2FED9246;
  *(a1 + 44) = 115;
  *(a1 + 112) = 0;
  *(a1 + 120) = v2;
  *v3 = a1;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xEBD5)))();
}

uint64_t sub_100468770@<X0>(int a1@<W8>)
{
  v4 = STACK[0x8A18];
  v5 = STACK[0xF10];
  LODWORD(STACK[0x10EDC]) = (1012831759 * ((((&STACK[0x10ED8] | 0x44009532) ^ 0xFFFFFFFE) - (~&STACK[0x10ED8] | 0xBBFF6ACD)) ^ 0xAB6C7C47)) ^ (STACK[0xF10] + 662612865);
  STACK[0x10EF0] = &STACK[0xF28] ^ 0xC4146D6974BC24ALL;
  STACK[0x10EE8] = v1;
  STACK[0x10EE0] = v4;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (a1 ^ 0xD836)))(&STACK[0x10ED8]);
  v7 = *v4;
  v8 = 193924789 * (((~&STACK[0x10ED8] & 0xDF5FC138) - (~&STACK[0x10ED8] | 0xDF5FC139)) ^ 0x69E4F35F);
  STACK[0x10F18] = v2;
  LODWORD(STACK[0x10ED8]) = v8 ^ 0x9C004EB9 ^ LODWORD(STACK[0xEB0]);
  STACK[0x10EE0] = STACK[0xED0];
  LODWORD(STACK[0x10F00]) = v5 - v8 + 144135672;
  LODWORD(STACK[0x10F20]) = (v7 ^ 0xDD29661C) + v8;
  v9 = v8 ^ 0xFA41CD75 ^ LODWORD(STACK[0xEC0]);
  STACK[0x10F08] = (v4 + 1);
  LODWORD(STACK[0x10EEC]) = v9;
  LODWORD(STACK[0x10EE8]) = -1130878275 - v8;
  STACK[0x10EF8] = &STACK[0x64BC];
  STACK[0x10EF0] = &STACK[0xF28] ^ 0x3C377411F345B836;
  v10 = (*(v6 + 8 * (v5 + 16372)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (v3 ^ 0xF91D ^ (v3 - 2082216155) & 0x7C1C9BBB)))(v10);
}

uint64_t sub_100468984()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 28795)))(((v0 + 1750379236) | 0x8180C210) ^ LODWORD(STACK[0x1248]));
  STACK[0x2BB0] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 1154649694) & 0x44D2BF7B) - 35509)) ^ v0)))();
}

uint64_t sub_100468A54(unint64_t a1, int a2)
{
  LODWORD(STACK[0xEC0]) = v3;
  LODWORD(STACK[0xED0]) = a2;
  STACK[0xEB0] = a1;
  return (*(STACK[0xF18] + 8 * v2))(2272199927, 1857733606);
}

uint64_t sub_100468B74()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 33772));
  return (*(v1 + 8 * (v0 - 30333)))();
}

uint64_t sub_100468C04()
{
  v0 = STACK[0xF10] - 33809;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x11C1)))();
}

uint64_t sub_100468EA0()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9D2ALL;
  LODWORD(STACK[0x1374]) = 1791479281;
  return (*(STACK[0xF18] + 8 * (v0 - 29678)))();
}

uint64_t sub_100468F74(uint64_t a1, char a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = ((a6 + v8) ^ 0x52) & (2 * ((a6 + v8) & 3)) ^ (a6 + v8) & 3;
  v10 = STACK[0xE70] + ((((a6 + v8) ^ (2 * ((((a6 + v8) ^ 0x3F956A52) << a2) & ((a6 + v8) ^ 0x52) & (4 * v9) ^ v9))) & 0x1F ^ 3u) << 7);
  *(v10 + 4 * v7) += 1976181163;
  v11 = a6 + 1539898120 < a3;
  if (a3 < 0x694F75F5 != (a6 + 1539898120) < 0x694F75F5)
  {
    v11 = a3 < 0x694F75F5;
  }

  return (*(STACK[0xF18] + 8 * (v6 | (!v11 << 6))))();
}

uint64_t sub_100469184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 29045;
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x6810];
  LODWORD(STACK[0x648C]) = 1042038367;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004691D4@<X0>(int a1@<W8>)
{
  v2 = (STACK[0xF10] + 2022827200) & 0x876DF83D;
  v3 = STACK[0xF10] - 21890;
  LODWORD(STACK[0xAE2C]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 - 26677) * (v1 == a1)) ^ v3)))();
}

uint64_t sub_10046928C()
{
  v1 = STACK[0xF10];
  STACK[0x9F40] = v0;
  return (*(STACK[0xF18] + 8 * (v1 - 24323)))();
}

uint64_t sub_100469314()
{
  v1 = STACK[0xF18];
  STACK[0x4150] = *(STACK[0xF18] + 8 * (v0 - 1376514686));
  return (*(v1 + 8 * (v0 - 1376507836 + ((v0 - 1376514625) | 4))))();
}

uint64_t sub_1004693A0()
{
  v1 = STACK[0x6B2C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393302;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xB9220444 ^ (10833 * (v0 == 1023027207)))))();
}

uint64_t sub_100469408()
{
  v0 = STACK[0xF10] ^ 0xF5A0;
  v1 = STACK[0xF10] - 32219;
  STACK[0x3AA8] = STACK[0x1000] + 16;
  v2 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 22974) ^ v1)))();
}

uint64_t sub_1004694A8()
{
  v1 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1240) | 0xC604) - 43612) ^ v0)))();
}

uint64_t sub_1004694F4()
{
  v0 = STACK[0xF10] + 1926;
  *STACK[0x41F0] = 718093811;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100469600()
{
  v1 = 3903 * (STACK[0xF10] ^ 0x8B39);
  v2 = STACK[0xF10] - 26724;
  LODWORD(STACK[0x26EC]) = v0;
  return (*(STACK[0xF18] + 8 * ((37590 * (v0 == (v1 ^ 0xE9D5D96F))) ^ v2)))();
}

uint64_t sub_100469650()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296782153;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 45321)))(&STACK[0x10ED8]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393286;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1004696E0()
{
  if (STACK[0x6C18])
  {
    v1 = STACK[0xB180] == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((v2 * ((2 * v0) ^ 0x4294 ^ (v0 + 2024822646) & 0x874FAB5F ^ 0x2056)) ^ v0)))();
}

uint64_t sub_1004697E0()
{
  v1 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 45373 + ((v0 + 921) | 0xC1A2))))();
}

uint64_t sub_100469854@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2A98] = v4;
  STACK[0x78B8] = a1;
  STACK[0x6668] = v1;
  STACK[0x5160] = v3;
  LODWORD(STACK[0x75B0]) = v2;
  STACK[0x4578] = 0;
  STACK[0x2768] = 0;
  if (v4)
  {
    v6 = v1 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || v3 == 0;
  return (*(STACK[0xF18] + 8 * ((((v5 ^ v8) & 1) * (1481 * (v5 ^ 0x270E) - 34024)) ^ v5)))();
}

uint64_t sub_1004698C4()
{
  v2 = *(STACK[0xE60] + (v1 - 649173213));
  v3 = (((v0 + 126) & 0xF7) + 50) & v2 ^ 0x7B;
  v4 = (v2 ^ (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((((v3 ^ v2 & 0x52) << (((v0 + 96) | 0x3B) - 58)) ^ 0x24) & (v2 ^ 0x1A) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3))) ^ 0xAE;
  v5 = 21846 * (((v4 ^ 0x3967) - 14695) ^ ((v4 ^ 0x46C) - 1132) ^ ((v4 ^ 0x3DED) - 15853)) + 28350;
  v6 = v5 & 0xFB4E ^ 0xE764;
  v7 = (v5 ^ (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * ((v5 ^ 0x3C84) & (2 * v6) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6))) ^ 0xF805;
  v8 = (((3 * (((v7 ^ 0xBBFD8FE1) + 1141010463) ^ ((v7 ^ 0x7FA6CB1D) - 2141637405) ^ ((v7 ^ 0xC45B47B7) + 10795081)) + 4131297) >> 16) - 49);
  LODWORD(STACK[0xDF0]) = v1 + 5;
  return (*(STACK[0xF18] + 8 * (v0 | (2 * ((v8 | ((v8 < 0xD) << 8)) == 13)))))();
}

uint64_t sub_100469AF0()
{
  v1 = LODWORD(STACK[0x22C4]);
  v2 = STACK[0x2950];
  v3 = 353670337 * (((&STACK[0x10ED8] | 0x81F26111709CFE07) - (&STACK[0x10ED8] & 0x81F26111709CFE00)) ^ 0x7163D79AC4BD063ALL);
  LODWORD(STACK[0x10ED8]) = v3 - 4574 + v0;
  LODWORD(STACK[0x10EF0]) = v3 - 341091076;
  STACK[0x10EE0] = (((v1 ^ 0x344A555A250150CDLL) - 0x344A555A250150CDLL) ^ ((v1 ^ 0x5461E7A77DD76473) - 0x5461E7A77DD76473) ^ (((v0 + 2028889788) & 0x8711DBFF) + (v1 ^ 0x602BB2FDB103F3AFLL) - 0x602BB2FDB1044D6ELL)) - v3 + 0x2CB8161A532D212ELL;
  STACK[0x10EE8] = v3 + v2 - ((2 * v2) & 0x63692A8F3F464AA6) + 0x31B495479FA32553;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDD87)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_100469E80()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4A9A)))();
  STACK[0x2338] = 0;
  return (*(v1 + 8 * (v0 ^ 0xD69E)))(v2);
}

uint64_t sub_100469F70(uint64_t a1)
{
  LODWORD(STACK[0xB320]) = -371865839;
  v2 = STACK[0xF18];
  STACK[0x9AD0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x3D94)))(a1 + 28);
}

uint64_t sub_10046A1B0@<X0>(unsigned int a1@<W8>)
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
  STACK[0xBC50] = 0;
  STACK[0xBC58] = v1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBC50] | v12);
  *(&STACK[0xBC50] | v12) = STACK[0xBC57];
  v16 = *(&STACK[0xBC50] | v13);
  *(&STACK[0xBC50] | v13) = STACK[0xBC56];
  v17 = *(&STACK[0xBC50] | v14);
  *(&STACK[0xBC50] | v14) = STACK[0xBC55];
  v18 = vdup_n_s32(553300517 * v11);
  v19 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v20.i32[0] = v18.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBC57]) = v15;
  v21 = veor_s8(vmul_s32(v20, v18), v18);
  LOBYTE(STACK[0xBC56]) = v16;
  LOBYTE(STACK[0xBC55]) = v17;
  v22 = STACK[0xBC50];
  LOBYTE(STACK[0xBC50]) = STACK[0xBC54];
  LOBYTE(STACK[0xBC54]) = v22;
  v23 = *(&STACK[0xBC50] | v19);
  *(&STACK[0xBC50] | v19) = STACK[0xBC53];
  LOBYTE(STACK[0xBC53]) = v23;
  v24 = STACK[0xBC51];
  LOBYTE(STACK[0xBC52]) = STACK[0xBC50];
  LOWORD(STACK[0xBC50]) = v24;
  STACK[0xBC50] = vmla_s32(v21, STACK[0xBC50], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBC58];
  v26 = (553300517 * STACK[0xBC58]) ^ v11;
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
  v48 = *(&STACK[0xBC58] + v12);
  *(&STACK[0xBC58] + v12) = STACK[0xBC5F];
  LOBYTE(STACK[0xBC5F]) = v48;
  v49 = *(&STACK[0xBC58] + v13);
  *(&STACK[0xBC58] + v13) = STACK[0xBC5E];
  LOBYTE(STACK[0xBC5E]) = v49;
  v50 = *(&STACK[0xBC58] + v14);
  *(&STACK[0xBC58] + v14) = STACK[0xBC5D];
  LOBYTE(STACK[0xBC5D]) = v50;
  v51 = STACK[0xBC58];
  LOBYTE(STACK[0xBC58]) = STACK[0xBC5C];
  LOBYTE(STACK[0xBC5C]) = v51;
  v52 = *(&STACK[0xBC58] + v19);
  *(&STACK[0xBC58] + v19) = STACK[0xBC5B];
  LOBYTE(STACK[0xBC5B]) = v52;
  v53 = STACK[0xBC59];
  LOBYTE(STACK[0xBC5A]) = STACK[0xBC58];
  LOWORD(STACK[0xBC58]) = v53;
  STACK[0xBC58] = vmla_s32(v21, STACK[0xBC58], vdup_n_s32(0x1000193u));
  *v42 = STACK[0xBC58] ^ STACK[0xBC50];
  return (*(STACK[0xF18] + 8 * ((36377 * (a1 > 0xA357F2C6)) ^ (a1 + 1413019987))))();
}

uint64_t sub_10046A684()
{
  STACK[0x5658] = v1 - 0x20DE4F5147E73171;
  LODWORD(STACK[0x2564]) = 726781600;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10046A720()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10046A744()
{
  v4 = *(STACK[0x3A88] + 16 * v2 + 8);
  v5 = (v0 & 0x7DFEFFCF) - v1;
  LODWORD(STACK[0x10EFC]) = v5 + (((v0 & 0x7DFEFFCF) - 1506577983) ^ 0x52);
  LODWORD(STACK[0x10EDC]) = v5 + 3549;
  LODWORD(STACK[0x10ED8]) = -v1;
  LODWORD(STACK[0x10EE4]) = (v0 & 0x7DFEFFCF) + v1;
  LODWORD(STACK[0x10EF8]) = v5 + 1558210255;
  STACK[0x10EE8] = v4 ^ v1;
  STACK[0x10EF0] = v3;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * ((v0 & 0x7DFEFFCF) - 1506526037)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * SLODWORD(STACK[0x10EE0])))(v7);
}

uint64_t sub_10046A864(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v22 = a3 - ((a3 << (a2 + v13)) & 0xFFFFFFE0) + 112;
  *(v10 + STACK[0xE60] + v11) = *(*(&off_1010A0B50 + a2 + v20) + v21 + (((v19 - v10) ^ v10 ^ ((v10 ^ v14) - 91) ^ ((v10 ^ v18) + 79) ^ (((a2 + a8) ^ v17) + (v10 ^ v16))) ^ 0x1ELL)) + (((v22 ^ 6) - 6) ^ ((v22 ^ 0xFC) + 4) ^ ((v22 ^ v9) + 118)) + 104;
  return (*(STACK[0xF18] + 8 * (a2 ^ ((v10 + 1 == v8) * v12))))((a2 + v15));
}

uint64_t sub_10046A9B0()
{
  v0 = STACK[0xF10] - 2189;
  *STACK[0x7858] = -371865831;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10046A9E0()
{
  LODWORD(STACK[0x1D40]) = 613753161;
  LODWORD(STACK[0x6DBC]) = 1075903095;
  STACK[0x7518] = 0x981390C2FED9246;
  LODWORD(STACK[0x2530]) = 1916927287;
  LODWORD(STACK[0x25BC]) = -371865839;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x75F8B1EC ^ ((11881 * (v0 ^ 0x75F8AF67) - 27152) * (v0 != -1687653016)))))();
}

uint64_t sub_10046AB70@<X0>(int a1@<W8>)
{
  v2 = a1 ^ v1;
  v3 = v2 - 25634;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x4192)))();
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_10046ABC4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 + 9623)))(v3);
}

uint64_t sub_10046AC34()
{
  LODWORD(STACK[0x4D40]) = -371865839;
  STACK[0x7690] -= 512;
  v1 = STACK[0x1858] + 544;
  STACK[0x7BE0] = v1;
  v2 = 634647737 * ((((&STACK[0x10000] + 3800) ^ 0xE3F575DD | 0x51FCE8B8) - ((&STACK[0x10000] + 3800) ^ 0xE3F575DD | 0xAE031747) - 1375529145) ^ 0xDF9FB299);
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 19062;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125376;
  STACK[0x10EE0] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 50048)))(&STACK[0x10ED8]);
  v5 = *(v3 + 8 * v0);
  STACK[0x8428] = v1;
  STACK[0x2630] = v5;
  return (*(v3 + 8 * (v0 + 12459)))(v4);
}

uint64_t sub_10046AD58()
{
  if (STACK[0x42B8])
  {
    v1 = LODWORD(STACK[0x4634]) == -371865839;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((v2 * (((v0 - 33571) | 0x3C1) - 2916)) ^ (v0 + 1512))))();
}

uint64_t sub_10046AE70()
{
  STACK[0x9EB0] = ((2 * v1) & 0x17B2FFD5ELL) + (v1 ^ 0x4F6EE7DCBD97FEAFLL) - 0x240E0508D04F063 + ((v0 + 340777060) & 0xEBB07BFB);
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 1675)))();
}

uint64_t sub_10046AFBC(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0xA560]) ^ 0x6AAE4412) - 1789805586) ^ ((LODWORD(STACK[0xA560]) ^ 0x2ADF6D03) - 719285507) ^ ((LODWORD(STACK[0xA560]) ^ 0xA0B524C) - 168514124)) - 1218942767;
  v3 = (((LODWORD(STACK[0xA55C]) ^ LODWORD(STACK[0x98D4]) ^ 0xD7ED15E9) - 2059180387) ^ ((LODWORD(STACK[0xA55C]) ^ LODWORD(STACK[0x98D4]) ^ 0x61BA2FF8) + 856972430) ^ ((LODWORD(STACK[0xA55C]) ^ LODWORD(STACK[0x98D4]) ^ 0xB6573A11) - 453424795)) + 452572400;
  v4 = (((LODWORD(STACK[0xA564]) ^ 0xECAA1865) + 324396955) ^ ((LODWORD(STACK[0xA564]) ^ 0x9ADCA177) + 1696816777) ^ ((LODWORD(STACK[0xA564]) ^ 0x9FA37E03) + 1616675325)) + v2 * v3 - 640061611 * (-1484409550 * v2 - 362426276 * v3) + 2041956004;
  v5 = (v4 ^ 0xB1B4BCB1) & (2 * (v4 & 0xB5C6BCA5)) ^ v4 & 0xB5C6BCA5;
  v6 = ((2 * (v4 ^ 0x9A35DCB1)) ^ 0x5FE6C028) & (v4 ^ 0x9A35DCB1) ^ (2 * (v4 ^ 0x9A35DCB1)) & 0x2FF36014;
  v7 = v6 ^ 0x20112014;
  v8 = (v6 ^ 0xF224000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xBFCD8050) & v7 ^ (4 * v7) & 0x2FF36010;
  v10 = v8 ^ 0x2FF36014 ^ (v9 ^ 0x2FC10010) & (16 * v8);
  v11 = (16 * (v9 ^ 0x326004)) & 0x2FF36000 ^ 0xC16014 ^ ((16 * (v9 ^ 0x326004)) ^ 0xFF360140) & (v9 ^ 0x326004);
  v12 = (v10 << 8) & 0x2FF36000 ^ v10 ^ ((v10 << 8) ^ 0xF3601400) & v11;
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31841) ^ 0x11A5)))(a1, a2, v4 ^ (2 * ((v12 << 16) & 0x2FF30000 ^ v12 ^ ((v12 << 16) ^ 0x60140000) & ((v11 << 8) & 0x2FF30000 ^ 0xC930000 ^ ((v11 << 8) ^ 0x73600000) & v11))) ^ 0xA6700297);
}

uint64_t sub_10046B2C8()
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
  STACK[0xC050] = 0;
  STACK[0xC058] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC050] | v10);
  *(&STACK[0xC050] | v10) = 0;
  LOBYTE(STACK[0xC057]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC050] | v12);
  *(&STACK[0xC050] | v12) = STACK[0xC056];
  LOBYTE(STACK[0xC056]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC050] | v14);
  *(&STACK[0xC050] | v14) = STACK[0xC055];
  LOBYTE(STACK[0xC055]) = v15;
  v16 = STACK[0xC050];
  LOBYTE(STACK[0xC050]) = STACK[0xC054];
  LOBYTE(STACK[0xC054]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC050] | v17);
  *(&STACK[0xC050] | v17) = STACK[0xC053];
  LOBYTE(STACK[0xC053]) = v18;
  v19 = STACK[0xC051];
  LOBYTE(STACK[0xC052]) = STACK[0xC050];
  LOWORD(STACK[0xC050]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC050] = vmla_s32(v22, STACK[0xC050], vdup_n_s32(0x1000193u));
  STACK[0xC058] ^= STACK[0xC050];
  STACK[0xC058] = vmul_s32(vsub_s32(STACK[0xC058], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC05A];
  LOWORD(STACK[0xC059]) = STACK[0xC058];
  LOBYTE(STACK[0xC058]) = v23;
  v24 = (&STACK[0xC058] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC05B];
  LOBYTE(STACK[0xC05B]) = v19;
  LOBYTE(v24) = STACK[0xC058];
  LOBYTE(STACK[0xC058]) = STACK[0xC05C];
  LOBYTE(STACK[0xC05C]) = v24;
  v25 = (&STACK[0xC058] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC05D];
  LOBYTE(STACK[0xC05D]) = v24;
  v26 = (&STACK[0xC058] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC05E];
  LOBYTE(STACK[0xC05E]) = v25;
  v27 = (&STACK[0xC058] | v10);
  v28 = *v27;
  *v27 = STACK[0xC05F];
  LOBYTE(STACK[0xC05F]) = v28;
  v29 = STACK[0xC058];
  v30 = (553300517 * STACK[0xC058]) ^ v9;
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
  *v43 = STACK[0xC058];
  return (*(STACK[0xF18] + 8 * (v1 - 9150)))(v48, v49);
}

uint64_t sub_10046B754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  v5 = STACK[0xF10] - 34059;
  LODWORD(STACK[0xA588]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * ((v3 - 27957) ^ v5)))(a1, a2, a3, v4, ((0x1E5 % (LODWORD(STACK[0xA58C]) ^ 0x13D5DFCCu)) ^ 0x9EEDEC77) - 1588550188 + ((2 * (0x1E5 % (LODWORD(STACK[0xA58C]) ^ 0x13D5DFCCu))) & 0xEE));
}

uint64_t sub_10046B7DC()
{
  LODWORD(STACK[0x3CA4]) = v1;
  v2 = STACK[0x8FF4];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393284;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_10046B87C()
{
  v2 = ((v1 ^ 0xF1A043F4) + v0 + 241126006) ^ ((v1 ^ 0xAC5FF270) + 1402998160) ^ ((((v0 ^ 0x7EC2) - 1272289471) ^ v1) + 1272285547);
  v3 = LODWORD(STACK[0x3908]) + 1165711021;
  v2 += 793845178;
  v4 = (v3 < 0x457B56A9) ^ (v2 < 0x457B56A9);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x457B56A9;
  }

  return (*(STACK[0xF18] + 8 * (((4 * !v5) | (32 * !v5)) ^ v0)))();
}

uint64_t sub_10046B958()
{
  v3 = STACK[0x73A8];
  v4 = 634647737 * ((~v2 & 0x5FBF348605F4FF44 | v2 & 0xA040CB79FA0B00B8) ^ 0x85649B696862D0B8);
  STACK[0x10EF0] = &STACK[0x2534];
  LODWORD(STACK[0x10EE8]) = v4 + v1 + 32374;
  LODWORD(STACK[0x10EEC]) = v4 + 158809485;
  STACK[0x10EE0] = v0;
  STACK[0x10ED8] = v4 + (((v3 ^ 0xDEC10816BDDC7D13) + 0x213EF7E9422382EDLL) ^ ((v3 ^ 0xC719931BFEA2C148) + 0x38E66CE4015D3EB8) ^ ((v3 ^ 0x1059A2016C932E1DLL) - 0x1059A2016C935CC0 + ((v1 - 11486) | 0x22A3u))) + 0x47272BD21B052DDFLL;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF335)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((46841 * (LODWORD(STACK[0x10EF8]) == ((v1 - 1201577315) & 0x479EEFBF ^ 0xE9D54C2A))) ^ v1)))(v6);
}

uint64_t sub_10046BAFC(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  v3 = (((LODWORD(STACK[0x5AFC]) ^ 0x2F22E585) - 790816133) ^ ((LODWORD(STACK[0x5AFC]) ^ 0xC65976F2) + 967215374) ^ ((STACK[0xF10] ^ 0xAEDF5D ^ LODWORD(STACK[0x5AFC])) - 11424870)) - 371865852;
  *STACK[0x22C8] = v3;
  STACK[0x95A0] = *STACK[0x2128];
  LOWORD(STACK[0x79DE]) = v3 - ((2 * v3) & 0x377A) + 7101;
  LODWORD(STACK[0x16B4]) = -342189222;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_10046BCFC()
{
  STACK[0x9D70] = ((2 * v1) & 0x17FD7EFFELL) + (v1 ^ 0xFFD7AFF9BFEBF7FFLL) + 0xDBCFE07EB7CF8DBLL;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x7A89 ^ (v0 + 21637))))();
}

uint64_t sub_10046BE3C()
{
  v1 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * (v0 - 5613));
  return (*(v1 + 8 * ((v0 - 5613) ^ 0x1C32)))();
}

uint64_t sub_10046C1EC@<X0>(int a1@<W8>)
{
  v1 = a1 | 0x881A;
  v2 = v1 - 29423;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16238)))();
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10046C464()
{
  *(*(v3 + 16) + 8 * v2) = v1;
  v4 = *(v3 + 8) + 1;
  *(v3 + 4) += (v0 - 626547623) & 0x25587FEB ^ 0x63C8;
  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10046C4B8(int a1)
{
  v2 = *(STACK[0xF18] + 8 * (((a1 == v1 - 371873181) * (((v1 + 17871) | 0x808) - 14711)) ^ v1));
  STACK[0xE80] = 0x93BB533BC1BCE739;
  STACK[0xE70] = 0x6C44ACC43E4318C7;
  STACK[0xE60] = 0x61BA86513F3F699DLL;
  STACK[0xE40] = 0x9E4579AEC0C09663;
  STACK[0xE30] = 0xECB1AE4ADCEB8200;
  STACK[0xE20] = 0x134E51B523147E00;
  STACK[0xE10] = 0xFA6D41F0E4FEDD73;
  STACK[0xE00] = 0x1F27AC6D3C2F08C8;
  STACK[0xDF0] = 0xFBFA96BDFAB9DAEFLL;
  STACK[0xDE0] = 0x7AC7A1DF0DAC8107;
  return v2(0x645380963C478BE9, 0xCE55F862CA251711, 0xC04FB445F008235ALL, -1, 0x3FB04BBA0FF7DCA6, 0x3980F18260949CA1, 1724701217, 0xC67F0E7D9F6B635FLL);
}

uint64_t sub_10046C990@<X0>(int a1@<W8>)
{
  *(*(v2 + 16) + 8 * v1) = v3;
  v4 = *(v2 + 8) + 1;
  *(v2 + 4) = 11881 * (a1 ^ 0x3682) + *(v2 + 4) - 35642;
  *(v2 + 8) = v4;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10046C9D8()
{
  if (STACK[0x7B28])
  {
    v1 = STACK[0x9570] == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((v2 * ((((v0 + 87436049) & 0xFAC973CF) - 1604) ^ (v0 - 26761))) ^ v0)))();
}

uint64_t sub_10046CA38()
{
  *STACK[0x81A0] = STACK[0x7328];
  *STACK[0x94B0] = STACK[0x27FC];
  return (*(STACK[0xF18] + 8 * (v0 | 0x121C)))();
}

uint64_t sub_10046CAF0()
{
  v1 = STACK[0x46C8];
  LODWORD(STACK[0x10ED8]) = (v0 + 406025596) ^ (297845113 * ((&STACK[0x10000] + 3800) ^ 0x77331C9E));
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE7CDD1F5)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((v0 + 11881 * (v0 ^ 0xE7CD1B27) + 405970625) ^ (11945 * (v0 < 0xF616AB41)))))(v3);
}

uint64_t sub_10046CBA0@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x81E0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 + ((2 * a1) ^ 0x86C) + 2234)))();
}

uint64_t sub_10046CC90()
{
  v1 = STACK[0xF18];
  STACK[0x4440] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x3429) + v0)))();
}

uint64_t sub_10046CCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  LODWORD(STACK[0xA5B8]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, ((0x1E5 % (LODWORD(STACK[0xA5BC]) ^ (v4 - 296400731))) ^ 0x64FF74F7) - 616620716 + ((2 * (0x1E5 % (LODWORD(STACK[0xA5BC]) ^ (v4 - 296400731)))) & 0x1EE));
}

uint64_t sub_10046CD94@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, char a6@<W5>, char a7@<W6>, int a8@<W7>, unsigned int a9@<W8>)
{
  v19 = ((2 * (v10 % a9)) & 0x6DF7E7FC) + ((v10 % a9) ^ 0x76FBF3FE);
  v20 = *(v18 + (v19 + v12));
  v21 = *(v18 + (v13 + v19) % a9);
  v22 = v21 & (v9 ^ 0x25);
  v23 = v21 & a1 ^ a2;
  v24 = v20 & a3 ^ a4;
  v25 = v22 ^ ~((v21 ^ 0x1E) & (2 * (v22 ^ ~((v21 ^ 0x1E) & (2 * (v22 ^ ~((v21 ^ 0x1E) & (2 * (v22 ^ ~((v21 ^ 0x1E) & (2 * (v22 ^ ~((v21 ^ 0x1E) & (2 * ~v22))))))))))))));
  LOBYTE(v22) = (v20 ^ 0x1E) & (2 * ((v20 ^ 0x1E) & (2 * ((v20 ^ 0x1E) & (2 * ((v20 ^ 0x1E) & (2 * ((v20 ^ 0x1E) & (2 * ((v20 ^ 0x1E) & (2 * v20) & 0x3E ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24;
  v26 = *(STACK[0xED0] + (a5 + v19) % a9);
  v27 = v21 & (2 * ((v21 ^ 0x1E) & (2 * ((v21 ^ 0x1E) & (2 * ((v21 ^ 0x1E) & (2 * ((v21 ^ 0x1E) & (2 * ((2 * v21) & (v21 ^ 0x1E) & 0x3E ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23;
  LOBYTE(v23) = v26 & a6 ^ a7;
  v28 = ((2 * v21) ^ (4 * v25)) & 0xFFFFFFFE | ((v21 ^ (2 * v27)) >> 7) & 1;
  LOBYTE(v27) = *(STACK[0xED0] + (a8 + v19) % a9);
  v29 = v27 ^ 0x1E;
  LOBYTE(v25) = v27 & v14 ^ v15;
  LOBYTE(v27) = v20 ^ (2 * v22) ^ v28 ^ (((v26 << 7) ^ (v26 << 6)) & 0xC0 | ((v26 ^ (2 * ((v26 ^ 0x1E) & (2 * ((v26 ^ 0x1E) & (2 * ((v26 ^ 0x1E) & (2 * ((v26 ^ 0x1E) & (2 * ((v26 ^ 0x1E) & (2 * (((2 * (v26 & 0x1F)) ^ 0xE) & (v26 ^ 0x1E) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) >> 2)) ^ ((((v27 | (2 * v27)) << 6) ^ (32 * v27)) & 0xE0 | ((v27 ^ (2 * ((v27 ^ 0x1C) & (2 * (v29 & (2 * (v29 & (2 * (v29 & (2 * (v29 & (2 * (((2 * v27) & 0x3E ^ 0x66) & v29 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) >> 3));
  *(STACK[0xED0] + (v19 + v12)) = (v27 ^ ((v27 ^ 0xFB) - 37) ^ ((v27 ^ 7) + 39) ^ v16) - 35;
  return (*(STACK[0xF18] + 8 * (((v10 != 255) * v17) ^ v11)))();
}

uint64_t sub_10046D028@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 12);
  v4 = (((v1 ^ 0x465F) - 281337171 + (*(a1 + 16) ^ 0x10C4CE3D)) ^ ((*(a1 + 16) ^ 0x2A71F469) - 712111209) ^ ((*(a1 + 16) ^ 0xD360FD45) + 748618427)) + 60777941;
  v5 = ((v4 ^ (((v1 - 10427) | 0x4C41) - 1691067581)) + 2097326418) ^ v4 ^ ((v4 ^ 0xC1473BE3) + 661740193) ^ ((v4 ^ 0x3D459292) - 613157934) ^ ((v4 ^ 0x7EFFFFDF) - 1731617123);
  LODWORD(STACK[0x584]) = v5 ^ 0xF01C59AD;
  v6 = (((v5 ^ 0xDD069131) - 756730012) ^ ((v5 ^ 0xFEE0F438) - 251440533) ^ ((v5 ^ 0x3A2FFBB5) + 902585832)) - 499971911;
  v7 = (((v3 ^ 0x6C89317D) - 1820930429) ^ ((v3 ^ 0xE736D71C) + 415836388) ^ ((v3 ^ 0x626A2170) - 1651122544)) - 499971911;
  v8 = (v7 < 0xF85D41A8) ^ (v6 < 0xF85D41A8);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0xF85D41A8;
  }

  return (*(v2 + 8 * ((45 * !v9) ^ v1)))();
}

uint64_t sub_10046D2CC@<X0>(int a1@<W8>)
{
  STACK[0x7248] = v4;
  STACK[0x3750] = v1;
  STACK[0x9788] = v5;
  STACK[0x7CA8] = v2;
  STACK[0x1970] = v3;
  v7 = STACK[0x7690];
  STACK[0x7428] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v7 + 16;
  LODWORD(STACK[0x485C]) = v6;
  STACK[0x9368] = 0;
  LODWORD(STACK[0x86F8]) = -371865839;
  v9 = v4 != 0x217E172EFA1E81CLL && v5 != (a1 ^ 0x3608u) + 1166 + 0x981390C2FED070BLL;
  return (*(STACK[0xF18] + 8 * ((2 * v9) | (8 * v9) | a1)))();
}

uint64_t sub_10046D384@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v8 = v5 + 2537 * (v7 ^ 0x51EEu) + 1169847764;
  v9 = *(a1 + (*(v6 + v8) ^ 0x5FLL));
  v10 = -3 * (((v9 ^ 0x30) - 48) ^ ((v9 ^ 0xE9) + 23) ^ ((v9 ^ 0x86) + 122));
  v11 = v10 + 62;
  v12 = ((-63 - v10) & 0xC2 | 0x1D) ^ (v10 + 62) & 0xBA;
  v13 = v11 ^ (2 * ((v11 ^ 0x42) & (2 * ((v11 ^ 0x42) & (2 * ((v11 ^ 0x42) & (2 * ((v11 ^ 0x42) & (2 * ((v11 ^ 0x42) & (2 * ((v11 ^ 0x42) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ 0x27;
  *(v6 + v8) = v13;
  v14 = v13 ^ *(v3 + (a2 + v5 + 862244792) % (*v3 ^ v2) + 4);
  *(v6 + v8) = v14;
  v15 = (((v14 ^ 0xBF) + 65) ^ ((v14 ^ 0xAB) + 85) ^ ((v14 ^ 0x4B) - 75)) + 124;
  v16 = v15 & 0x9C ^ 0x5C;
  *(v4 + v8) = v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ 0xC3;
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_10046D610@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x91E0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (((5 * (a1 ^ 0x9B2)) ^ 0x3E1C) + a1)))();
}

uint64_t sub_10046D6CC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16280)))();
  return (*(v1 + 8 * (v0 - 17843)))(v2);
}

uint64_t sub_10046D740@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(a1 + 40) - (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29uLL) > 0xFFFFFFFFEB271088) ^ (*(v2 + 48) - (*(*STACK[0xE50] + (*STACK[0xE58] & 0x43420908)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91uLL) > 0xFFFFFFFFEB271088);
  v4 = 1022166737 * (((&STACK[0x10ED8] | 0x51B90BD63530BEC8) - (&STACK[0x10ED8] & 0x51B90BD63530BEC8)) ^ 0x2F3379AB8F205F5ALL);
  STACK[0x10ED8] = v3 | v4;
  LODWORD(STACK[0x10EFC]) = v4 + v1 - 76544184 - 4271;
  LODWORD(STACK[0x10EE4]) = v4 + v1 + 782565441;
  LODWORD(STACK[0x10EE0]) = -1022166737 * (((&STACK[0x10ED8] | 0x51B90BD63530BEC8) - (&STACK[0x10ED8] & 0x51B90BD63530BEC8)) ^ 0x8F205F5A);
  LODWORD(STACK[0x10EE8]) = v4 + v1 - 76544184 + 7;
  LODWORD(STACK[0x10EEC]) = v1 - 76544184 - v4;
  STACK[0x10EF0] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4029)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * SLODWORD(STACK[0x10EF8])))(v6);
}

uint64_t sub_10046D8D4()
{
  LODWORD(STACK[0x7910]) = v1;
  v3 = (((v2 ^ 0x710ECBCC) - 1896795084) ^ ((v2 ^ 0x14AE38EE) - 346962158) ^ ((v0 ^ 0x2125) + 1938440338 + (v2 ^ 0x8C753433))) + ((v0 - 41148) ^ 0xA6124EFB);
  v4 = v3 < 0xBC3C8088;
  v5 = v1 - 1438388638 < v3;
  if ((v1 - 1438388638) < 0xBC3C8088 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((61 * !v5) ^ v0)))();
}

uint64_t sub_10046D9A8()
{
  v1 = STACK[0xF18];
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((10545 * (((((v0 + 37732) | 0x1C81) - 1155870459) ^ v0) > 0x98129A4D)) ^ (v0 - 732))))();
}

uint64_t sub_10046DA30()
{
  STACK[0x5658] = STACK[0x8878];
  LODWORD(STACK[0x2564]) = -1334556956;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10046DD48()
{
  v6 = (((v0 ^ 0xE0FB24C4) + 520411964) ^ ((v0 ^ 0xAF137793) + 1357678701) ^ ((v0 ^ 0xA63D9446) + 1505913786)) + 406088155;
  v7 = v1 + v3 + 406060524 + (((v4 ^ 0x7821C241) - 2015478337) ^ ((v4 ^ 0xEE108E9) - 249628905) ^ ((v4 ^ 0x9F152138 ^ (((v2 - 943749524) & 0xFCFBEFBF) + 994331238)) + 1626010183));
  v8 = v7 < v5;
  v9 = v6 < v7;
  if (v6 < v5 != v8)
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * ((1991 * !v9) ^ v2)))();
}

uint64_t sub_10046DE74()
{
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * v1))();
  return (*(v2 + 8 * v0))();
}

uint64_t sub_10046DEB4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 10377)))(v3);
}

uint64_t sub_10046DF54()
{
  if (STACK[0x8FC8])
  {
    v1 = STACK[0x28C8] == 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = !v1 && v0 == -371865839;
  return (*(STACK[0xF18] + 8 * ((v3 * (STACK[0xF10] ^ 0xA940 ^ (23 * (STACK[0xF10] ^ 0x8A44)))) ^ (STACK[0xF10] - 8879))))(STACK[0x70D8]);
}

uint64_t sub_10046E14C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2261)))();
}

uint64_t sub_10046E228()
{
  v1 = 974 * (STACK[0xF10] ^ 0x8B14);
  v2 = STACK[0xF10] + 6922;
  STACK[0x5360] = v0;
  return (*(STACK[0xF18] + 8 * (((v0 != 0) * (v1 ^ 0xB2ED)) ^ v2)))();
}

uint64_t sub_10046E348@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v2 = LODWORD(STACK[0x4A4C]) == -371865839;
  }

  else
  {
    v2 = 0;
  }

  v3 = !v2;
  return (*(STACK[0xF18] + 8 * (((((v1 - 2639) ^ 0xA193) + ((v1 - 2639) | 2) - 46554) * v3) ^ v1)))();
}

uint64_t sub_10046E428@<X0>(int a1@<W8>)
{
  *(v4 + 3572) = a1;
  LODWORD(STACK[0x9374]) = v1;
  v5 = (((v2 ^ 0x292E74C1) - 690910401) ^ ((v2 ^ 0x168EAC6D) - 378449005) ^ (((v3 - 44501) ^ 0x298AF1EF) + (v2 ^ 0xD6751FBD))) + 735828268;
  v6 = v5 < 0x4206121B;
  v7 = a1 - 139988352 < v5;
  if ((a1 - 139988352) < 0x4206121B != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * (((4 * !v7) | (16 * !v7)) ^ v3)))();
}

uint64_t sub_10046E4F4@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W4>, int a4@<W6>, char a5@<W8>)
{
  v18 = a3 < v15;
  v19 = (v13 + v12) & v16 ^ v11 ^ ((v13 + v12) ^ v17) & (2 * ((v13 + v12) & v16));
  v20 = ((v13 + v12) ^ (2 * ((4 * v19) ^ v19 ^ ((4 * v19) ^ 0xC) & (((2 * ((v13 + v12) ^ v14)) ^ v5) & ((v13 + v12) ^ v14) ^ (2 * ((v13 + v12) ^ v14)) & a5)))) & 0x1F ^ 0x10;
  *(a1 + 4 * v20) = *(a1 + 4 * v20) - *(v9 + 4 * ((a4 ^ a2) + v13 + v10)) + v6;
  if (v18 == (v13 + v7) < 0xAD0805AF)
  {
    v18 = v13 + v7 < a3;
  }

  return (*(STACK[0xF18] + 8 * ((v18 * v8) ^ a4)))();
}

uint64_t sub_10046E76C()
{
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x6C58];
  LODWORD(STACK[0x648C]) = -580653052;
  return (*(STACK[0xF18] + 8 * ((((3 * (v0 ^ 0x8591C825)) ^ 0x7A6EA67F) + v0) ^ (2646 * (v0 != 837793839)))))();
}

uint64_t sub_10046E7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  LODWORD(STACK[0xA068]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3);
}

uint64_t sub_10046E91C@<X0>(unsigned int a1@<W0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v22 = (((a6 ^ 0x27D6A99F) - 668379551) ^ ((a6 ^ 0x7B8CE58B) - 2072831371) ^ ((v9 ^ a6) + 1248883963)) - 284441519;
  v23 = (v22 ^ 0xFAC9483E) & (2 * (v22 & 0xFACA02BF)) ^ v22 & 0xFACA02BF;
  v24 = ((2 * (v22 ^ 0x2E5D4D00)) ^ 0xA92E9F7E) & (v22 ^ 0x2E5D4D00) ^ (2 * (v22 ^ 0x2E5D4D00)) & 0xD4974FBE;
  v25 = v24 ^ 0x54914081;
  v26 = (v24 ^ 0x80000F3C) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x525D3EFC) & v25 ^ (4 * v25) & 0xD4974FBC;
  v28 = (v27 ^ 0x50150EB0) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x84824103)) ^ 0x4974FBF0) & (v27 ^ 0x84824103) ^ (16 * (v27 ^ 0x84824103)) & 0xD4974FB0;
  v30 = v28 ^ v19 ^ (v29 ^ 0x40144B00) & (v28 << 8);
  v31 = v22 ^ (2 * ((v30 << 16) & v21 ^ v30 ^ ((v30 << 16) ^ v12) & (((v29 ^ 0x9483040F) << 8) & v21 ^ v11 ^ (((v29 ^ 0x9483040F) << 8) ^ v20) & (v29 ^ 0x9483040F))));
  v32 = (v8 + (v31 ^ v13));
  v33 = ((v32 ^ *(*v16 + (*v15 & a1))) & 0x7FFFFFFF) * a2;
  v34 = (v33 ^ HIWORD(v33)) * a2;
  *(a7 + (v31 ^ v13) + a4) = *(v17 + (v34 >> 24)) ^ *v32 ^ *(v18 + (v34 >> 24)) ^ *((v34 >> 24) + v14 + 1) ^ v34 ^ (BYTE3(v34) * a3);
  return (*(STACK[0xF18] + 8 * (v10 ^ ((((v31 - v7) | (v7 - v31)) >= 0) * a5))))();
}

uint64_t sub_10046EC38()
{
  v2 = LODWORD(STACK[0x3E80]) + LODWORD(STACK[0x17DC]) + 438223719;
  STACK[0x3DD8] = v1;
  v3 = STACK[0x3DA4];
  v4 = STACK[0x7FF8];
  v5 = (LODWORD(STACK[0x7FF8]) ^ 0xC361147A) + 1017047942;
  LODWORD(STACK[0x206C]) = v2;
  v6 = v2 + 592143102 + ((19645 * (v0 ^ 0x5307) + (v3 ^ 0xCA1A03F1) + 904225429) ^ ((v3 ^ 0x5B78CA01) - 1534642689) ^ ((v3 ^ 0x78B70EE1) - 2025262817));
  v7 = (((v4 ^ (((v0 - 455972682) & 0x1B2DCF7F) + 1788055515)) - 1788091158) ^ v5 ^ ((v4 ^ 0x4020C87D) - 1075890301)) + 1593472898;
  v8 = v6 < 0x7524B071;
  v9 = v6 > v7;
  if (v8 != v7 < 0x7524B071)
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * ((49499 * v9) ^ v0)))();
}

uint64_t sub_10046EE04()
{
  v1 = v0 - 48808;
  v2 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (((v1 - 1110) ^ 0x1317) + v1)))();
}

uint64_t sub_10046EE44()
{
  *STACK[0x37D0] = STACK[0x2088];
  *STACK[0x85F0] = *(v0 + 144);
  *STACK[0x97B8] = 5;
  *STACK[0x9240] = *STACK[0x5E50];
  *STACK[0x37F0] = *STACK[0x1EE0];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10046EECC@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  v5 = STACK[0xF18];
  STACK[0x6070] = *(STACK[0xF18] + 8 * v4);
  STACK[0x1C08] = v2;
  STACK[0x9070] = a2;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x9358] = v7;
  STACK[0xB920] = (v7 + 100);
  STACK[0x5F50] = (v7 + 120);
  STACK[0x4850] = (v7 + 136);
  STACK[0x5660] = (v7 + 152);
  STACK[0x9108] = (v7 + 168);
  STACK[0x8590] = (v7 + 216);
  STACK[0x6120] = (v7 + 288);
  STACK[0x5C18] = (v7 + 368);
  STACK[0x1608] = (v7 + 400);
  STACK[0x9280] = (v7 + 416);
  STACK[0x7B18] = (v7 + 432);
  STACK[0x4C60] = (v7 + 452);
  STACK[0x2050] = (v7 + 472);
  STACK[0x7690] = 1329 * (v3 ^ 0x7341u) + v6 - 33978;
  LODWORD(STACK[0x28A0]) = -371865839;
  LODWORD(STACK[0x5ECC]) = -371865839;
  LODWORD(STACK[0x6130]) = -371865839;
  LODWORD(STACK[0x7414]) = 0;
  *(a1 + 1008) = 0;
  LODWORD(STACK[0x3F7C]) = -371865839;
  LODWORD(STACK[0x89D0]) = 603698899;
  LODWORD(STACK[0x14F8]) = 355997031;
  LODWORD(STACK[0x4D74]) = 251905828;
  LODWORD(STACK[0x9464]) = 1837068911;
  LODWORD(STACK[0x76D4]) = 1751295067;
  *(a1 + 1220) = 1061570693;
  return (*(v5 + 8 * (((a2 == 0) * (((v3 - 26706) | 0x8032) - 35445)) ^ v3)))();
}

uint64_t sub_10046F098()
{
  STACK[0x10EE0] = *(v1 + 32);
  LODWORD(STACK[0x10ED8]) = (v0 + 9618) ^ (297845113 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x51CF94B8) + 1372558522) ^ 0x26FC8824));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA1DF)))(&STACK[0x10ED8]);
  *(v1 + 32) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10046F370()
{
  v0 = STACK[0xF10] - 25911;
  *STACK[0xEC0] = *(STACK[0xEC0] + 2492);
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10046F44C@<X0>(void *a1@<X8>)
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
  STACK[0xC0E0] = 0;
  STACK[0xC0E8] = v1;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xC0E0] | v11);
  *(&STACK[0xC0E0] | v11) = 0;
  LOBYTE(STACK[0xC0E7]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xC0E0] | v13);
  *(&STACK[0xC0E0] | v13) = STACK[0xC0E6];
  LOBYTE(STACK[0xC0E6]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xC0E0] | v15);
  *(&STACK[0xC0E0] | v15) = STACK[0xC0E5];
  LOBYTE(STACK[0xC0E5]) = v16;
  v17 = STACK[0xC0E0];
  LOBYTE(STACK[0xC0E0]) = STACK[0xC0E4];
  LOBYTE(STACK[0xC0E4]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xC0E0] | v18);
  *(&STACK[0xC0E0] | v18) = STACK[0xC0E3];
  LOBYTE(STACK[0xC0E3]) = v19;
  v20 = STACK[0xC0E1];
  LOBYTE(STACK[0xC0E2]) = STACK[0xC0E0];
  LOWORD(STACK[0xC0E0]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC0E0] = vmla_s32(v23, STACK[0xC0E0], vdup_n_s32(0x1000193u));
  STACK[0xC0E8] ^= STACK[0xC0E0];
  STACK[0xC0E8] = vmul_s32(vsub_s32(STACK[0xC0E8], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC0EA];
  LOWORD(STACK[0xC0E9]) = STACK[0xC0E8];
  LOBYTE(STACK[0xC0E8]) = v24;
  v25 = (&STACK[0xC0E8] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC0EB];
  LOBYTE(STACK[0xC0EB]) = v20;
  LOBYTE(v25) = STACK[0xC0E8];
  LOBYTE(STACK[0xC0E8]) = STACK[0xC0EC];
  LOBYTE(STACK[0xC0EC]) = v25;
  v26 = (&STACK[0xC0E8] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC0ED];
  LOBYTE(STACK[0xC0ED]) = v25;
  v27 = (&STACK[0xC0E8] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC0EE];
  LOBYTE(STACK[0xC0EE]) = v26;
  v28 = (&STACK[0xC0E8] | v11);
  v29 = *v28;
  *v28 = STACK[0xC0EF];
  LOBYTE(STACK[0xC0EF]) = v29;
  v30 = STACK[0xC0E8];
  v31 = (1269228062 * STACK[0xC0E8]) ^ v10;
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
  *a1 = STACK[0xC0E8];
  return (*(STACK[0xF18] + 8 * (v2 - 1117)))(v48, v49);
}

uint64_t sub_10048DDC0()
{
  v1 = STACK[0x101C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393252;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10048DDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 19727;
  v4 = STACK[0xF10] - 32978;
  v5 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v4);
  return (*(v5 + 8 * (v3 + v4 - 5945)))(a1, a2, a3, 0x1D54AEB378980557);
}

uint64_t sub_10048DE4C(uint64_t a1)
{
  *a1 = v1 ^ 0xDD53303F;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0x21E23A8900000000;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x43DE)))(((v1 ^ 0xDD53303F) << ((v2 - 67) | 0x80)) ^ 0x4EAE3888);
  *(a1 + 16) = v5;
  return (*(v4 + 8 * (((v5 == 0) * (v2 - 35111)) ^ v2)))();
}

uint64_t sub_10048DF14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a1 = *a2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 23249)))(a2);
  return (*(v3 + 8 * v2))(a1);
}

uint64_t sub_10048DFC0()
{
  v1 = STACK[0xF10] - 32213;
  *(STACK[0x3378] + 72) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10048E044()
{
  *v1 = v2[9];
  *(v0 + 172) = v2[11];
  *(v0 + 248) = *v2;
  v4 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v3 & 0x42184FDD));
  return (*(v4 + 8 * ((v3 & 0x42184FDD) + 4111)))();
}

uint64_t sub_10048E2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x3908]) += 4;
  if (STACK[0xAD18])
  {
    v7 = STACK[0xACF8] == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v7 || LODWORD(STACK[0xAD04]) == (((((a7 ^ 0xE8E6) - 23517) | 0xA431) - 371929595) ^ ((a7 ^ 0xE8E6) - 1312973998) & 0x4E42BDF7);
  return (*(STACK[0xF18] + 8 * ((1922 * v9) ^ a7 ^ 0xE8E6)))();
}

uint64_t sub_10048E38C()
{
  v1 = STACK[0x7650];
  STACK[0xA460] = STACK[0x7650] + 728;
  *(v1 + 728) = STACK[0x8A18];
  return (*(STACK[0xF18] + 8 * ((((v0 - 4641) | 0x8B13) ^ 0xB999) + v0)))();
}

uint64_t sub_10048E3D4()
{
  v1 = 5029 * (STACK[0xF10] ^ 0x8B3E);
  v2 = STACK[0xF10] - 10498;
  v3 = STACK[0x4608];
  *(v3 - 0x20DE4F5147E73171) = STACK[0x5A40];
  *(v3 - 0x20DE4F5147E73161) = LODWORD(STACK[0x36E4]) ^ v0;
  *(v3 - 0x20DE4F5147E7315DLL) = STACK[0x8458];
  *(v3 - 0x20DE4F5147E73159) = STACK[0x1EF0];
  *(v3 - 0x20DE4F5147E73169) = 0x57F8E73D5A34C80BLL * STACK[0x3C68] - 0x7293AF1FA5DA974CLL;
  *(v3 - 0x20DE4F5147E73107) = 0;
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0x9714]) == v0) * (v1 - 19029)) ^ v2)))();
}

uint64_t sub_10048E544()
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
  STACK[0xC0D8] = v0;
  STACK[0xC0D0] = 0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC0D0] | v10);
  *(&STACK[0xC0D0] | v10) = 0;
  LOBYTE(STACK[0xC0D7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC0D0] | v12);
  *(&STACK[0xC0D0] | v12) = STACK[0xC0D6];
  LOBYTE(STACK[0xC0D6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC0D0] | v14);
  *(&STACK[0xC0D0] | v14) = STACK[0xC0D5];
  LOBYTE(STACK[0xC0D5]) = v15;
  v16 = STACK[0xC0D0];
  LOBYTE(STACK[0xC0D0]) = STACK[0xC0D4];
  LOBYTE(STACK[0xC0D4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC0D0] | v17);
  *(&STACK[0xC0D0] | v17) = STACK[0xC0D3];
  LOBYTE(STACK[0xC0D3]) = v18;
  v19 = STACK[0xC0D1];
  LOBYTE(STACK[0xC0D2]) = STACK[0xC0D0];
  LOWORD(STACK[0xC0D0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC0D0] = vmla_s32(v22, STACK[0xC0D0], vdup_n_s32(0x1000193u));
  STACK[0xC0D8] ^= STACK[0xC0D0];
  STACK[0xC0D8] = vmul_s32(vsub_s32(STACK[0xC0D8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC0DA];
  LOWORD(STACK[0xC0D9]) = STACK[0xC0D8];
  LOBYTE(STACK[0xC0D8]) = v23;
  v24 = (&STACK[0xC0D8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC0DB];
  LOBYTE(STACK[0xC0DB]) = v19;
  LOBYTE(v24) = STACK[0xC0D8];
  LOBYTE(STACK[0xC0D8]) = STACK[0xC0DC];
  LOBYTE(STACK[0xC0DC]) = v24;
  v25 = (&STACK[0xC0D8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC0DD];
  LOBYTE(STACK[0xC0DD]) = v24;
  v26 = (&STACK[0xC0D8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC0DE];
  LOBYTE(STACK[0xC0DE]) = v25;
  v27 = (&STACK[0xC0D8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC0DF];
  LOBYTE(STACK[0xC0DF]) = v28;
  v29 = STACK[0xC0D8];
  v30 = (553300517 * STACK[0xC0D8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC0D8];
  return (*(STACK[0xF18] + 8 * (v1 - 4442)))(v47, v48);
}

uint64_t sub_10048EB08@<X0>(unsigned int a1@<W1>, unsigned int a2@<W5>, uint64_t a3@<X7>, unsigned int a4@<W8>)
{
  v6 = a4 < v4;
  *(a3 + a2) = -43;
  if (v6 == a2 + 1 > 0x2747BA8C)
  {
    LOBYTE(v6) = a2 - 659012236 < a4;
  }

  return (*(STACK[0xF18] + 8 * (((((a1 + 1) ^ v6) & 1) * v5) ^ a1)))();
}

uint64_t sub_10048ED24()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))();
  *(v0 + 64) = 0;
  return (*(v2 + 8 * (v1 - 16598)))(v3);
}

uint64_t sub_10048ED54@<X0>(int a1@<W8>)
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
  STACK[0xC220] = 0;
  STACK[0xC228] = v2 - 0x43D8CBFA0CEB42D4;
  v11 = 16777619 * (((1692773664 * v10) | 7) ^ (1692773664 * v10)) % 7;
  v12 = *(&STACK[0xC220] | v11);
  *(&STACK[0xC220] | v11) = 0;
  LOBYTE(STACK[0xC227]) = v12;
  v13 = 16777619 * (((1692773664 * v10) | 6) ^ (1692773664 * v10)) % 6;
  v14 = *(&STACK[0xC220] | v13);
  *(&STACK[0xC220] | v13) = STACK[0xC226];
  LOBYTE(STACK[0xC226]) = v14;
  v15 = 16777619 * (((1692773664 * v10) | 5) ^ (1692773664 * v10)) % 5;
  v16 = *(&STACK[0xC220] | v15);
  *(&STACK[0xC220] | v15) = STACK[0xC225];
  LOBYTE(STACK[0xC225]) = v16;
  v17 = STACK[0xC220];
  LOBYTE(STACK[0xC220]) = STACK[0xC224];
  LOBYTE(STACK[0xC224]) = v17;
  v18 = 16777619 * (((1692773664 * v10) | 3) ^ (1692773664 * v10)) % 3;
  v19 = *(&STACK[0xC220] | v18);
  *(&STACK[0xC220] | v18) = STACK[0xC223];
  LOBYTE(STACK[0xC223]) = v19;
  v20 = STACK[0xC221];
  LOBYTE(STACK[0xC222]) = STACK[0xC220];
  LOWORD(STACK[0xC220]) = v20;
  v21 = vdup_n_s32(1692773664 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1692773664 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC220] = vmla_s32(v23, STACK[0xC220], vdup_n_s32(0x1000193u));
  STACK[0xC228] ^= STACK[0xC220];
  STACK[0xC228] = vmul_s32(vsub_s32(STACK[0xC228], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC22A];
  LOWORD(STACK[0xC229]) = STACK[0xC228];
  LOBYTE(STACK[0xC228]) = v24;
  v25 = (&STACK[0xC228] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC22B];
  LOBYTE(STACK[0xC22B]) = v20;
  LOBYTE(v25) = STACK[0xC228];
  LOBYTE(STACK[0xC228]) = STACK[0xC22C];
  LOBYTE(STACK[0xC22C]) = v25;
  v26 = (&STACK[0xC228] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC22D];
  LOBYTE(STACK[0xC22D]) = v25;
  v27 = (&STACK[0xC228] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC22E];
  LOBYTE(STACK[0xC22E]) = v26;
  v28 = (&STACK[0xC228] | v11);
  v29 = *v28;
  *v28 = STACK[0xC22F];
  LOBYTE(STACK[0xC22F]) = v29;
  v30 = STACK[0xC228];
  v31 = (1692773664 * STACK[0xC228]) ^ v10;
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
  STACK[0x2738] = STACK[0xC228] + v1;
  return (*(STACK[0xF18] + 8 * a1))(v37, v38, v39, v40);
}

uint64_t sub_10048F1A0(uint64_t a1)
{
  *(a1 + 145) = v4;
  LODWORD(STACK[0x7AAC]) = v5;
  *(v6 + 1823) = v3;
  LOBYTE(STACK[0x2BE7]) = v2;
  return (*(STACK[0xF18] + 8 * (((v5 == -371865839) * (((v1 - 304664258) & 0xFBFDD7FB) + 371865883)) ^ v1)))();
}

uint64_t sub_10048F204()
{
  v2 = STACK[0xF10] - 34384;
  v3 = STACK[0xF10] + 9832;
  LODWORD(STACK[0x1950]) = v0;
  v4 = LODWORD(STACK[0xA944]) + 1893181717 + (((v1 ^ 0x2755E43C) + 165409268) ^ ((v1 ^ 0xFA5113BA) - 723581322) ^ ((v1 ^ v2 ^ 0xE5A0DE4C) - 886124695));
  v5 = (((LODWORD(STACK[0x3834]) ^ 0x6D9F4810) - 1839155216) ^ ((LODWORD(STACK[0x3834]) ^ 0xF8B106A8) + 122616152) ^ ((LODWORD(STACK[0x3834]) ^ 0x7CFB89A9) - 2096859561)) + 1893181713;
  v6 = v4 < 0x8701E200;
  v7 = v4 > v5;
  if (v6 != v5 < 0x8701E200)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((93 * !v7) ^ v3)))();
}

uint64_t sub_10048F33C()
{
  v2 = *(v1 + 112);
  STACK[0x89C0] = v2;
  v3 = STACK[0x7690];
  STACK[0x6CF8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v3 + 32;
  LODWORD(STACK[0x1CA4]) = 1497668682;
  LODWORD(STACK[0x4360]) = -371865839;
  STACK[0x6238] = 0;
  LODWORD(STACK[0x204C]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v2 != 0x217E172EFA1E81CLL) * (((v0 - 31641) | 0x880A) - 35137)) ^ v0)))();
}

uint64_t sub_10048F438()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x90A6)))(v1);
  STACK[0x1FE0] = v3;
  return (*(v2 + 8 * (((((v0 - 14205) | 0x4536) ^ ((v0 + 11980) | 0x231) ^ 0xECA0) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_10048F548()
{
  STACK[0x1A80] = STACK[0x3E38];
  v1 = STACK[0x7690];
  STACK[0x60C0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = (((v0 - 30688) | 0x1404) ^ 0x176DLL) + v1;
  STACK[0x8690] = 0;
  STACK[0x5C80] = 0;
  LODWORD(STACK[0x74CC]) = -371865839;
  v2 = *STACK[0x4A90] == (v0 ^ 0x23);
  if (*STACK[0x4A90] == (v0 ^ 0x23))
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891400;
  }

  LODWORD(STACK[0x7AC8]) = v3;
  return (*(STACK[0xF18] + 8 * ((63926 * v2) ^ v0)))();
}

uint64_t sub_10048F6D4()
{
  v2 = (STACK[0xF10] - 2735) | 0x4213;
  v3 = STACK[0xF10] + 4151;
  *(STACK[0x1A98] + 680) = v0;
  v4 = LODWORD(STACK[0xA938]) + 4;
  LODWORD(STACK[0x9ACC]) = v4;
  v5 = v4 + 1188857503 + (((v1 ^ 0xF4090FA0) - 628680080) ^ ((v1 ^ 0xB04F1AF2) - 1631514818) ^ (((v2 + 2095150548) ^ v1) + 1382821309));
  v6 = (((LODWORD(STACK[0x3834]) ^ 0xE19CF3C5) + 509807675) ^ ((LODWORD(STACK[0x3834]) ^ 0x31CFC509) - 835699977) ^ ((LODWORD(STACK[0x3834]) ^ 0x3986F1DD) - 965145053)) + 1188857503;
  v7 = v5 < 0x5D06BF8E;
  v8 = v5 > v6;
  if (v7 != v6 < 0x5D06BF8E)
  {
    v8 = v7;
  }

  return (*(STACK[0xF18] + 8 * ((240 * v8) ^ v3)))();
}

uint64_t sub_10048F83C@<X0>(int a1@<W8>)
{
  v8 = STACK[0xF18];
  STACK[0x9628] = *(STACK[0xF18] + 8 * v4);
  LODWORD(STACK[0x86A0]) = a1;
  STACK[0x2AD8] = v7;
  STACK[0x7C78] = v1;
  LODWORD(STACK[0x83E4]) = v2;
  STACK[0x8C58] = v6;
  STACK[0x3DE8] = v5;
  v9 = STACK[0x7690];
  v10 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x93F8] = v10;
  STACK[0x4C20] = v10;
  STACK[0x2AA0] = (v10 + 48);
  STACK[0x17D0] = (v10 + 64);
  STACK[0x1FD8] = (v10 + 95);
  STACK[0x7690] = v9 + 128;
  STACK[0x2DD0] = 0;
  LODWORD(STACK[0x7728]) = -371865839;
  LODWORD(STACK[0x9164]) = -371865839;
  STACK[0x4D80] = 0;
  STACK[0x31A8] = 0;
  STACK[0x6370] = 0;
  LODWORD(STACK[0x3864]) = 0;
  LODWORD(STACK[0x2B04]) = 0;
  LODWORD(STACK[0x6654]) = 173043138;
  STACK[0x5590] = 0x981390C2FED9246;
  LOBYTE(STACK[0x46AF]) = a1 == ((v3 + 308565956) & 0xED9B7FAD) - 371891101;
  return (*(v8 + 8 * (v3 - 2303)))();
}

uint64_t sub_10048F99C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 += v4 - 3235;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v4 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xC5BA95B5) + (~(&STACK[0x10000] + 3800) | 0x3A456A4A)) ^ 0x239C8E7B) + 296785510;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 ^ 0xC66E)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (v4 + 2507)))(v6);
}

uint64_t sub_10048FA48()
{
  v0 = STACK[0xF10];
  v1 = 11 * (STACK[0xF10] ^ 0x827B);
  v2 = (STACK[0xF10] - 35130) | 0x4004;
  v3 = STACK[0xF10] - 9591;
  v4 = STACK[0x3FE8];
  v5 = STACK[0x5D00];
  v6 = STACK[0x3EB8];
  v7 = STACK[0x69DC];
  v8 = STACK[0x6DB0];
  v9 = STACK[0x1020];
  v10 = LODWORD(STACK[0x5D00]) ^ 0xEFB7FFAF;
  v11 = 193924789 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x7348CCF8AFB0E5C8) - 0xCB73307504F1A33) ^ 0x8D3DC0C190BD7ABLL);
  LODWORD(STACK[0x10EE0]) = v11 + STACK[0xF10] - 33511;
  STACK[0x10ED8] = v4;
  LODWORD(STACK[0x10F00]) = v11 + v10 + ((2 * v5) & 0xDF6FFF5E) + 1573901937;
  STACK[0x10EE8] = v6;
  LODWORD(STACK[0x10F18]) = v11 + v2 + v7 + 1300730887;
  STACK[0x10EF8] = v11 ^ v8 ^ 0x3E8E51BB8BCE3437;
  STACK[0x10F10] = (v1 - 0x254B7EB74C3FA830) ^ v9 ^ v11;
  STACK[0x10F08] = v6 + 236;
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4180)))(&STACK[0x10ED8]);
  return (*(v12 + 8 * ((50321 * (LODWORD(STACK[0x10EF0]) == -371865839)) ^ v3)))(v13);
}

uint64_t sub_10048FCB0()
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 21665) | 0x11) - 19126) ^ v0)))();
}

void *sub_10048FD00()
{
  v0 = STACK[0xF10] - 34010;
  v1 = (STACK[0xF10] - 10731) | 0x1280;
  LOWORD(STACK[0x28A6]) = STACK[0x3AC2];
  STACK[0x86B0] = STACK[0x6338];
  STACK[0x2070] = 0;
  v2 = STACK[0xF18];
  STACK[0x40C8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v1 + 5531) ^ v0)))(&STACK[0x2070]);
}

uint64_t sub_10048FDD4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v8 = a4 < 0x16C055A0;
  if (v8 == (a6 - 80158714) < 0x16C055A0)
  {
    v8 = a6 - 80158714 < a4;
  }

  return (*(STACK[0xF18] + 8 * ((((a8 ^ 0xD2F2) + 21560) * v8) ^ a8)))();
}

uint64_t sub_10048FEC0()
{
  v1 = *(STACK[0x2DC0] + 36);
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v1 - (((v0 - 1356878022) & 0x50E0BF4E ^ 0xD3AB0668) & (2 * v1)) - 371865839;
  LODWORD(STACK[0x35EC]) = 1693393272;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10048FF68()
{
  v1 = STACK[0x8FDC];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393254;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10048FFAC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 1296895701;
  v2 = 634647737 * (&STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL);
  v3 = LOBYTE(STACK[0x64D7]) - v2;
  LODWORD(STACK[0x10EF8]) = STACK[0xF10] - v2 - 1230214699;
  LODWORD(STACK[0x10EE4]) = v1 + v2;
  STACK[0x10EF0] = v3;
  STACK[0x10EE8] = v2;
  v4 = v1 - v2;
  LODWORD(STACK[0x10ED8]) = -634647737 * (&STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL);
  LODWORD(STACK[0x10EDC]) = v4 - 3231;
  LODWORD(STACK[0x10EFC]) = v4 - 23;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41D7)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * SLODWORD(STACK[0x10EE0])))(v6);
}

uint64_t sub_10049006C()
{
  LODWORD(STACK[0xEB0]) = *v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x55BF)))(4);
  STACK[0x68A0] = v3 + 0x794E87ED87161270;
  return (*(v2 + 8 * (((v3 == 0) * ((v1 - 1677642552) & 0x63FEAFD2 ^ 0x838B)) ^ v1)))();
}

uint64_t sub_1004902B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x95A0] = STACK[0x5E20] + v4;
  LOWORD(STACK[0x79DE]) = v3 - ((v3 << (((a3 + 44) ^ 0xB4) & 0xB7)) & 0x377A) + 7101;
  LODWORD(STACK[0x16B4]) = -30162382;
  return (*(STACK[0xF18] + 8 * (a3 - 28687)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1004903A0()
{
  v1 = STACK[0x7DF8];
  v2 = STACK[0x8210];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = 1385577556;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004904D4()
{
  v1 = STACK[0xF10] ^ 0xD040;
  v2 = LODWORD(STACK[0x3908]) - 1891974900;
  v3 = (((v0 ^ 0x503874A3) - 1345877155) ^ ((v0 ^ 0x10E5F3A) - 17719098) ^ ((v0 ^ 0xB8E3EC88) + 1193022328)) + ((v1 - 22138) | 0xA28) + 2031122672;
  v4 = (v2 < 0x8F3AC108) ^ (v3 < 0x8F3AC108);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0x8F3AC108;
  }

  return (*(STACK[0xF18] + 8 * ((222 * !v5) ^ v1)))();
}

uint64_t sub_100490610()
{
  STACK[0x7690] += (109 * (v0 ^ 0x76DC)) ^ (2 * v0) ^ 0xABD2u ^ 0xFFFFFFFFFFFF311FLL;
  STACK[0x10EE0] = *STACK[0x1AD8];
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x4DE7D808) - 840443893) ^ 0x7B5CEA6D) + 60354516;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xBC92)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762656268) ^ (906386353 * ((~&STACK[0x10ED8] & 0xC70B7695 | &STACK[0x10ED8] & 0x38F48968) ^ 0xF60ABBB1));
  v2 = (*(v1 + 8 * (v0 ^ 0xBD22)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((49 * (*STACK[0x970] > 0)) ^ v0)))(v2);
}

uint64_t sub_1004907DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  ++*a6;
  LODWORD(STACK[0x10EE0]) = v6 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x38C90AEF) - ((&STACK[0x10000] + 3800) & 0x38C90AE8)) ^ 0xDEEF1120) + 296753103;
  STACK[0x10ED8] = 0;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v6 + 16271)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v7 + 8 * (v6 - 32465));
  return (*(v7 + 8 * (((v6 - 11063) ^ 0x6A01) + v6 - 32465)))(v8);
}

uint64_t sub_100490890()
{
  v1 = (STACK[0xF10] + 1387557187) & 0xAD4BCBC7;
  v2 = STACK[0xF10] - 30246;
  LODWORD(STACK[0x2FD4]) = v0;
  v3 = STACK[0x6110];
  v4 = STACK[0x26CC];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = (v4 << (v1 - 66)) ^ 0xE9D5C711;
  LODWORD(STACK[0x884C]) = 1543941640;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10049090C()
{
  *(v1 + v0) = 0;
  v3 = STACK[0xF18];
  *(*(STACK[0xF18] + 8 * (v2 ^ 0x6998)))() = 0;
  v4 = (*(v3 + 8 * (v2 ^ 0x69B1)))(v1, 493);
  return (*(v3 + 8 * ((1578 * (((v2 + 2147306071) & (2 * v4)) + (v4 ^ 0xBFFEF66F) == -1073809810)) ^ v2)))();
}

uint64_t sub_1004909A0()
{
  v1 = (v0 - 1584310450) & 0x5E6EFF5F;
  v2 = LODWORD(STACK[0xEC0]) == 1724701210;
  LODWORD(STACK[0xE60]) = v1;
  return (*(STACK[0xF18] + 8 * ((((v0 + 33938) ^ 0xD456 ^ v1) * v2) ^ v0)))();
}

uint64_t sub_1004909FC()
{
  STACK[0x10EE0] = ((327 * (v1 ^ 0x120Bu)) ^ 0xD781DD57E64ACD15) + v0;
  LODWORD(STACK[0x10EDC]) = v1 + 193924789 * ((&STACK[0x10000] + 3800) ^ 0xB6BB3266) + 21980;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 47345)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100490AF8(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = STACK[0xED0];
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = -1071018223;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

void *sub_100490C24()
{
  v0 = (STACK[0xF10] + 508879979) & 0xE1AA97F9;
  v1 = STACK[0xF10] - 30989;
  v2 = STACK[0xF18];
  STACK[0x3F68] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + v0 + 935)))(&STACK[0x2878]);
}

uint64_t sub_100490CB0()
{
  v0 = STACK[0xF10] - 33302;
  v1 = STACK[0xF10] - 33356;
  v2 = STACK[0xF18];
  STACK[0x4150] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x2D01)))();
}

uint64_t sub_100490D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (STACK[0x550] - STACK[0xDB0] + STACK[0xD70] - a6 + (v8 << 7) - (((v9 ^ 0xEE86u) - 31675) & ((v8 + a4) << 7)) - 36832 < 0x20)
  {
    a8 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((102 * a8) ^ v9)))();
}

uint64_t sub_100490DF8()
{
  STACK[0x10ED8] = v0;
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x595D0AC8) + 1499269832) ^ 0xEFE638AE) - 27540;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x406F)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 + 10059)))(v3);
}

uint64_t sub_100490F44()
{
  *(v3 + v1) = 0;
  v4 = v1 + 904864814 + (v2 ^ 0x148EA31C);
  v5 = (v4 ^ 0x35DBBD3C) & (2 * (v4 & 0xB58231BC)) ^ v4 & 0xB58231BC;
  v6 = ((2 * (v4 ^ 0x55DBBD14)) ^ 0xC0B31950) & (v4 ^ 0x55DBBD14) ^ (2 * (v4 ^ 0x55DBBD14)) & 0xE0598CA8;
  v7 = v6 ^ 0x204884A8;
  v8 = (v6 ^ 0xC0110800) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x816632A0) & v7 ^ (4 * v7) & 0xE0598CA8;
  v10 = (v9 ^ 0x804000A0) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x60198C08)) ^ 0x598CA80) & (v9 ^ 0x60198C08) ^ (16 * (v9 ^ 0x60198C08)) & 0xE0598C80;
  v12 = v10 ^ 0xE0598CA8 ^ (v11 ^ 0x188800) & (v10 << 8);
  STACK[0xA258] = v0 + (v4 ^ (2 * ((v12 << 16) & 0x60590000 ^ v12 ^ ((v12 << 16) ^ 0xCA80000) & (((v11 ^ 0xE0410428) << 8) & 0x60590000 ^ 0x20510000 ^ (((v11 ^ 0xE0410428) << 8) ^ 0x598C0000) & (v11 ^ 0xE0410428)))) ^ 0x752128EC);
  v13 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * v2);
  return (*(v13 + 8 * (v2 ^ 0x23FA)))();
}

uint64_t sub_100491154()
{
  v0 = STACK[0xF10] - 15757;
  v1 = STACK[0xF10] - 31061;
  LODWORD(STACK[0x508C]) = STACK[0x98D4];
  LODWORD(STACK[0x6280]) = ((v0 + 440187878 + (LODWORD(STACK[0xA4DC]) ^ 0xE5C2F66C)) ^ ((LODWORD(STACK[0xA4DC]) ^ 0x1E1DB318) - 505262872) ^ ((LODWORD(STACK[0xA4DC]) ^ 0x120A8265) - 302678629)) - (((LODWORD(STACK[0xA4E8]) ^ 0x4FBCB701) - 1337767681) ^ ((LODWORD(STACK[0xA4E8]) ^ 0x44872EEA) - 1149710058) ^ ((LODWORD(STACK[0xA4E8]) ^ 0xE2EE5EFA) + 487694598));
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x3BF7)))();
}

uint64_t sub_1004912F8()
{
  *STACK[0x81A0] = STACK[0x73B8];
  *STACK[0x94B0] = STACK[0x11B0];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10049137C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v6 = &STACK[0xC4D0] + a2;
  STACK[0x5BD8] = &STACK[0xC4D0] + a2;
  STACK[0x1D58] = (v3 + 176);
  STACK[0x2000] = (v3 + 144);
  v7 = v3[16];
  STACK[0x4DD8] = (v3 + 128);
  STACK[0x5AD0] = (v3 + 48);
  STACK[0x60C8] = (v3 + 64);
  STACK[0x96B0] = (v3 + 112);
  v8 = *v3;
  STACK[0xED0] = (v3 + 160);
  v9 = STACK[0xE58];
  v10 = *STACK[0xE58] & 0xFFFFFFFFE6F073DCLL;
  v11 = STACK[0xE50];
  v12 = *STACK[0xE50];
  v13 = *(v12 + v10);
  v14 = 1864610357 * ((1864610357 * ((v13 ^ (v3 + 16)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ (v3 + 16)) & 0x7FFFFFFFu)) >> 16));
  v15 = v14 >> (v2 - 58);
  v16 = 1864610357 * ((1864610357 * ((v13 ^ v3) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v3) & 0x7FFFFFFF)) >> 16));
  *v6 = v7 ^ v8 ^ *(v5 + v15) ^ *(v4 + v15) ^ *(a1 + v15) ^ *(v5 + (v16 >> 24)) ^ *(v4 + (v16 >> 24)) ^ *(a1 + (v16 >> 24)) ^ v16 ^ v14 ^ (-109 * BYTE3(v16)) ^ (-109 * v15) ^ 0x76;
  LODWORD(v10) = *(v12 + v10);
  v17 = 1864610357 * ((1864610357 * ((v10 ^ (v3 + 17)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v10 ^ (v3 + 17)) & 0x7FFFFFFF)) >> 16));
  v18 = -109 * ((1864610357 * ((1864610357 * ((v10 ^ (v3 + 17)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v10 ^ (v3 + 17)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v19 = 1864610357 * ((1864610357 * ((v10 ^ (v3 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v10 ^ (v3 + 1)) & 0x7FFFFFFF)) >> 16));
  v20 = STACK[0x5BD8];
  *(v20 + 1) = *(v5 + (v17 >> 24)) ^ *(v4 + (v17 >> 24)) ^ *(a1 + (v17 >> 24)) ^ *(v5 + (v19 >> 24)) ^ *(v4 + (v19 >> 24)) ^ *(a1 + (v19 >> 24)) ^ v3[17] ^ v19 ^ v17 ^ v3[1] ^ (-109 * BYTE3(v19)) ^ v18 ^ 0x76;
  LOBYTE(v19) = v3[18];
  LOBYTE(v16) = v3[2];
  STACK[0x32E8] = (v3 + 192);
  v21 = *(*v11 + (*v9 & 0xFFFFFFFFE6F073DCLL));
  v22 = 1864610357 * ((1864610357 * ((v21 ^ (v3 + 18)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v21 ^ (v3 + 18)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v14) = -109 * ((1864610357 * ((1864610357 * ((v21 ^ (v3 + 18)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v21 ^ (v3 + 18)) & 0x7FFFFFFFu)) >> 16))) >> 24);
  v23 = 1864610357 * ((1864610357 * ((v21 ^ (v3 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v21 ^ (v3 + 2)) & 0x7FFFFFFFu)) >> 16));
  *(v20 + 2) = *(v5 + (v22 >> 24)) ^ *(v4 + (v22 >> 24)) ^ *(a1 + (v22 >> 24)) ^ *(v5 + (v23 >> 24)) ^ *(v4 + (v23 >> 24)) ^ *(a1 + (v23 >> 24)) ^ v19 ^ v23 ^ v22 ^ v16 ^ (-109 * BYTE3(v23)) ^ v14 ^ 0x76;
  v24 = *(*v11 + (*v9 & 0xFFFFFFFFE6F073DCLL));
  v25 = 1864610357 * ((1864610357 * ((v24 ^ (v3 + 19)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v24 ^ (v3 + 19)) & 0x7FFFFFFFu)) >> 16));
  v26 = *(&off_1010A0B50 + v2 - 2863) - 1618398243;
  v27 = *(&off_1010A0B50 + v2 - 1842) - 1799898174;
  v28 = *(&off_1010A0B50 + (v2 ^ 0x3C)) - 1987193474;
  v29 = 1864610357 * ((1864610357 * ((v24 ^ (v3 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v24 ^ (v3 + 3)) & 0x7FFFFFFFu)) >> 16));
  v6[3] = v26[(v25 >> 24) + 7] ^ v27[(v25 >> 24) + 3] ^ v28[v25 >> 24] ^ *(v5 + (v29 >> 24)) ^ v29 ^ v25 ^ *(v4 + (v29 >> 24)) ^ *(a1 + (v29 >> 24)) ^ (-109 * BYTE3(v29)) ^ (-21 * ((1864610357 * ((1864610357 * ((v24 ^ (v3 + 19)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v24 ^ (v3 + 19)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ v3[19] ^ v3[3] ^ 0x76;
  LOBYTE(v25) = v3[20];
  STACK[0x5438] = v3;
  v30 = *v9 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v15) = *(*v11 + v30);
  v31 = 1864610357 * ((1864610357 * ((v15 ^ (v3 + 20)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 20)) & 0x7FFFFFFF)) >> 16));
  v32 = 1864610357 * ((1864610357 * ((v15 ^ (v3 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 4)) & 0x7FFFFFFF)) >> 16));
  v6[4] = v26[(v31 >> 24) + 7] ^ v27[(v31 >> 24) + 3] ^ v28[v31 >> 24] ^ v26[(v32 >> 24) + 7] ^ v27[(v32 >> 24) + 3] ^ v28[v32 >> 24] ^ v25 ^ (53 * ((53 * (v15 ^ (v3 + 4))) ^ ((1864610357 * ((v15 ^ (v3 + 4)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v15 ^ (v3 + 20))) ^ ((1864610357 * ((v15 ^ (v3 + 20)) & 0x7FFFFFFF)) >> 16))) ^ v3[4] ^ (-21 * ((1864610357 * ((1864610357 * ((v15 ^ (v3 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 4)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (-21 * ((1864610357 * ((1864610357 * ((v15 ^ (v3 + 20)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 20)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x76;
  LODWORD(v15) = *(*v11 + v30);
  v33 = 1864610357 * ((1864610357 * ((v15 ^ (v3 + 21)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 21)) & 0x7FFFFFFF)) >> 16));
  v34 = 1864610357 * ((1864610357 * ((v15 ^ (v3 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 5)) & 0x7FFFFFFF)) >> 16));
  v6[5] = v26[(v33 >> 24) + 7] ^ v27[(v33 >> 24) + 3] ^ v28[v33 >> 24] ^ v26[(v34 >> 24) + 7] ^ v27[(v34 >> 24) + 3] ^ v28[v34 >> 24] ^ v3[21] ^ (53 * ((53 * (v15 ^ (v3 + 5))) ^ ((1864610357 * ((v15 ^ (v3 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v15 ^ (v3 + 21))) ^ ((1864610357 * ((v15 ^ (v3 + 21)) & 0x7FFFFFFF)) >> 16))) ^ v3[5] ^ (-21 * ((1864610357 * ((1864610357 * ((v15 ^ (v3 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (-21 * ((1864610357 * ((1864610357 * ((v15 ^ (v3 + 21)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 21)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x76;
  v35 = *v9 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v15) = *(*v11 + v35);
  v36 = 1864610357 * ((1864610357 * ((v15 ^ (v3 + 22)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 22)) & 0x7FFFFFFF)) >> 16));
  v37 = 1864610357 * ((1864610357 * ((v15 ^ (v3 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 6)) & 0x7FFFFFFF)) >> 16));
  v6[6] = v26[(v36 >> 24) + 7] ^ v27[(v36 >> 24) + 3] ^ v28[v36 >> 24] ^ v26[(v37 >> 24) + 7] ^ v27[(v37 >> 24) + 3] ^ v28[v37 >> 24] ^ v3[22] ^ (53 * ((53 * (v15 ^ (v3 + 6))) ^ ((1864610357 * ((v15 ^ (v3 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v15 ^ (v3 + 22))) ^ ((1864610357 * ((v15 ^ (v3 + 22)) & 0x7FFFFFFF)) >> 16))) ^ v3[6] ^ (-21 * ((1864610357 * ((1864610357 * ((v15 ^ (v3 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (-21 * ((1864610357 * ((1864610357 * ((v15 ^ (v3 + 22)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 22)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x76;
  LODWORD(v15) = *(*v11 + v35);
  v38 = 1864610357 * ((1864610357 * ((v15 ^ (v3 + 23)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 23)) & 0x7FFFFFFF)) >> 16));
  v39 = 1864610357 * ((1864610357 * ((v15 ^ (v3 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 7)) & 0x7FFFFFFF)) >> 16));
  v40 = STACK[0x5BD8];
  *(v40 + 7) = v26[(v38 >> 24) + 7] ^ v27[(v38 >> 24) + 3] ^ v28[v38 >> 24] ^ v26[(v39 >> 24) + 7] ^ v27[(v39 >> 24) + 3] ^ v28[v39 >> 24] ^ v3[23] ^ (53 * ((53 * (v15 ^ (v3 + 7))) ^ ((1864610357 * ((v15 ^ (v3 + 7)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v15 ^ (v3 + 23))) ^ ((1864610357 * ((v15 ^ (v3 + 23)) & 0x7FFFFFFF)) >> 16))) ^ v3[7] ^ (-21 * ((1864610357 * ((1864610357 * ((v15 ^ (v3 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (-21 * ((1864610357 * ((1864610357 * ((v15 ^ (v3 + 23)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ (v3 + 23)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x76;
  v41 = *v11;
  v42 = *v9 & 0xFFFFFFFFE6F073DCLL;
  v43 = *(*v11 + v42);
  v44 = 1864610357 * ((1864610357 * ((v43 ^ (v3 + 24)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v3 + 24)) & 0x7FFFFFFFu)) >> 16));
  v45 = 1864610357 * ((1864610357 * ((v43 ^ (v3 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v3 + 8)) & 0x7FFFFFFFu)) >> 16));
  *(v40 + 8) = v26[(v44 >> 24) + 7] ^ v27[(v44 >> 24) + 3] ^ v28[v44 >> 24] ^ v26[(v45 >> 24) + 7] ^ v27[(v45 >> 24) + 3] ^ v28[v45 >> 24] ^ v3[24] ^ (53 * ((53 * (v43 ^ (v3 + 8))) ^ ((1864610357 * ((v43 ^ (v3 + 8)) & 0x7FFFFFFFu)) >> 16))) ^ (53 * ((53 * (v43 ^ (v3 + 24))) ^ ((1864610357 * ((v43 ^ (v3 + 24)) & 0x7FFFFFFFu)) >> 16))) ^ v3[8] ^ (-21 * ((1864610357 * ((1864610357 * ((v43 ^ (v3 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v3 + 8)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ (-21 * ((1864610357 * ((1864610357 * ((v43 ^ (v3 + 24)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v3 + 24)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ 0x76;
  LOBYTE(v40) = v3[25];
  LOBYTE(v45) = v3[9];
  STACK[0x1F78] = (v3 + 96);
  LODWORD(v29) = *(v41 + v42);
  v46 = 1864610357 * ((1864610357 * ((v29 ^ (v3 + 25)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v29 ^ (v3 + 25)) & 0x7FFFFFFF)) >> 16));
  v47 = 1864610357 * ((1864610357 * ((v29 ^ (v3 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v29 ^ (v3 + 9)) & 0x7FFFFFFF)) >> 16));
  v6[9] = v26[(v46 >> 24) + 7] ^ v27[(v46 >> 24) + 3] ^ v28[v46 >> 24] ^ v26[(v47 >> 24) + 7] ^ v27[(v47 >> 24) + 3] ^ v28[v47 >> 24] ^ v40 ^ (53 * ((53 * (v29 ^ (v3 + 9))) ^ ((1864610357 * ((v29 ^ (v3 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v29 ^ (v3 + 25))) ^ ((1864610357 * ((v29 ^ (v3 + 25)) & 0x7FFFFFFF)) >> 16))) ^ v45 ^ (-21 * ((1864610357 * ((1864610357 * ((v29 ^ (v3 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v29 ^ (v3 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (-21 * ((1864610357 * ((1864610357 * ((v29 ^ (v3 + 25)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v29 ^ (v3 + 25)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x76;
  v48 = *v11;
  v49 = *v9 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v42) = *(*v11 + v49);
  v50 = 1864610357 * ((1864610357 * ((v42 ^ (v3 + 26)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v3 + 26)) & 0x7FFFFFFF)) >> 16));
  v51 = 1864610357 * ((1864610357 * ((v42 ^ (v3 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v3 + 10)) & 0x7FFFFFFF)) >> 16));
  v6[10] = v26[(v50 >> 24) + 7] ^ v27[(v50 >> 24) + 3] ^ v28[v50 >> 24] ^ v26[(v51 >> 24) + 7] ^ v27[(v51 >> 24) + 3] ^ v28[v51 >> 24] ^ v3[26] ^ (53 * ((53 * (v42 ^ (v3 + 10))) ^ ((1864610357 * ((v42 ^ (v3 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v42 ^ (v3 + 26))) ^ ((1864610357 * ((v42 ^ (v3 + 26)) & 0x7FFFFFFF)) >> 16))) ^ v3[10] ^ (-21 * ((1864610357 * ((1864610357 * ((v42 ^ (v3 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v3 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (-21 * ((1864610357 * ((1864610357 * ((v42 ^ (v3 + 26)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v3 + 26)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x76;
  LODWORD(v48) = *(v48 + v49);
  v52 = 1864610357 * ((1864610357 * ((v48 ^ (v3 + 27)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v48 ^ (v3 + 27)) & 0x7FFFFFFF)) >> 16));
  v53 = *(&off_1010A0B50 + v2 + 880) - 1059650702;
  v54 = *(&off_1010A0B50 + (v2 ^ 0x3A7)) - 601206979;
  v55 = *(&off_1010A0B50 + (v2 ^ 0x3DD)) - 122448983;
  v56 = -119 * ((1864610357 * ((1864610357 * ((v48 ^ (v3 + 27)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v48 ^ (v3 + 27)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v57 = 1864610357 * ((1864610357 * ((v48 ^ (v3 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v48 ^ (v3 + 11)) & 0x7FFFFFFF)) >> 16));
  v6[11] = v53[(v52 >> 24) + 3] ^ v54[(v52 >> 24) + 3] ^ v55[v52 >> 24] ^ v26[(v57 >> 24) + 7] ^ v57 ^ v52 ^ v27[(v57 >> 24) + 3] ^ v28[v57 >> 24] ^ (-21 * BYTE3(v57)) ^ v56 ^ v3[27] ^ v3[11] ^ 0x76;
  LOBYTE(v26) = v3[28];
  STACK[0x8A58] = (v3 + 80);
  v58 = *v11;
  v59 = *v9 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v52) = *(*v11 + v59);
  v60 = 1864610357 * ((1864610357 * ((v52 ^ (v3 + 28)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v52 ^ (v3 + 28)) & 0x7FFFFFFF)) >> 16));
  v61 = 1864610357 * ((1864610357 * ((v52 ^ (v3 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v52 ^ (v3 + 12)) & 0x7FFFFFFF)) >> 16));
  v6[12] = v53[(v60 >> 24) + 3] ^ v54[(v60 >> 24) + 3] ^ v55[v60 >> 24] ^ v53[(v61 >> 24) + 3] ^ v54[(v61 >> 24) + 3] ^ v55[v61 >> 24] ^ v26 ^ (53 * ((53 * (v52 ^ (v3 + 12))) ^ ((1864610357 * ((v52 ^ (v3 + 12)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v52 ^ (v3 + 28))) ^ ((1864610357 * ((v52 ^ (v3 + 28)) & 0x7FFFFFFF)) >> 16))) ^ v3[12] ^ (-119 * ((1864610357 * ((1864610357 * ((v52 ^ (v3 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v52 ^ (v3 + 12)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (-119 * ((1864610357 * ((1864610357 * ((v52 ^ (v3 + 28)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v52 ^ (v3 + 28)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x76;
  LODWORD(v58) = *(v58 + v59);
  v62 = 1864610357 * ((1864610357 * ((v58 ^ (v3 + 29)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ (v3 + 29)) & 0x7FFFFFFF)) >> 16));
  v63 = 1864610357 * ((1864610357 * ((v58 ^ (v3 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ (v3 + 13)) & 0x7FFFFFFF)) >> 16));
  v6[13] = v53[(v62 >> 24) + 3] ^ v54[(v62 >> 24) + 3] ^ v55[v62 >> 24] ^ v53[(v63 >> 24) + 3] ^ v54[(v63 >> 24) + 3] ^ v55[v63 >> 24] ^ v3[29] ^ (53 * ((53 * (v58 ^ (v3 + 13))) ^ ((1864610357 * ((v58 ^ (v3 + 13)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v58 ^ (v3 + 29))) ^ ((1864610357 * ((v58 ^ (v3 + 29)) & 0x7FFFFFFF)) >> 16))) ^ v3[13] ^ (-119 * ((1864610357 * ((1864610357 * ((v58 ^ (v3 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ (v3 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (-119 * ((1864610357 * ((1864610357 * ((v58 ^ (v3 + 29)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ (v3 + 29)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x76;
  v64 = *v11;
  v65 = *v9 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v52) = *(*v11 + v65);
  v66 = 1864610357 * ((1864610357 * ((v52 ^ (v3 + 30)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v52 ^ (v3 + 30)) & 0x7FFFFFFF)) >> 16));
  v67 = 1864610357 * ((1864610357 * ((v52 ^ (v3 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v52 ^ (v3 + 14)) & 0x7FFFFFFF)) >> 16));
  v68 = (v67 >> 24) + 3;
  v6[14] = v53[(v66 >> 24) + 3] ^ v54[(v66 >> 24) + 3] ^ v55[v66 >> 24] ^ v53[v68] ^ v54[v68] ^ v55[v67 >> 24] ^ v3[30] ^ (53 * ((53 * (v52 ^ (v3 + 14))) ^ ((1864610357 * ((v52 ^ (v3 + 14)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v52 ^ (v3 + 30))) ^ ((1864610357 * ((v52 ^ (v3 + 30)) & 0x7FFFFFFF)) >> 16))) ^ v3[14] ^ (-119 * ((1864610357 * ((1864610357 * ((v52 ^ (v3 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v52 ^ (v3 + 14)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (-119 * ((1864610357 * ((1864610357 * ((v52 ^ (v3 + 30)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v52 ^ (v3 + 30)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x76;
  v70 = v3[15];
  v69 = v3 + 15;
  LOBYTE(v67) = v69[16];
  STACK[0x9258] = STACK[0xED0];
  LODWORD(v11) = *(v64 + v65);
  v71 = 1864610357 * ((1864610357 * ((v11 ^ (v69 + 16)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v11 ^ (v69 + 16)) & 0x7FFFFFFF)) >> 16));
  v72 = (v71 >> 24) + 3;
  LOBYTE(v65) = v53[v72];
  LODWORD(v52) = -119 * ((1864610357 * ((1864610357 * ((v11 ^ (v69 + 16)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v11 ^ (v69 + 16)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v72) = v54[v72];
  LOBYTE(v28) = v55[v71 >> 24];
  v73 = 1864610357 * ((1864610357 * ((v11 ^ v69) & 0x7FFFFFFF)) ^ ((1864610357 * ((v11 ^ v69) & 0x7FFFFFFF)) >> 16));
  v74 = (v73 >> 24) + 3;
  STACK[0xED0] = v53;
  v75 = v53[v74];
  STACK[0xEC0] = v54;
  LOBYTE(v74) = v54[v74];
  STACK[0xEB0] = v55;
  v6[15] = v65 ^ v72 ^ v28 ^ v75 ^ v74 ^ v55[v73 >> 24] ^ v67 ^ v73 ^ v71 ^ v70 ^ (-119 * BYTE3(v73)) ^ v52 ^ 0x76;
  STACK[0x7318] = (v69 + 17);
  v76 = *(STACK[0xF18] + 8 * (v2 ^ 0x1315));
  LODWORD(STACK[0xEA0]) = STACK[0xF10] + 1864574714;
  return v76(162, 1937758973);
}

uint64_t sub_100492100@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EDC]) = (v1 + 15532) ^ (1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x348F4BE0) - (&STACK[0x10000] + 3800) + 1265677338) ^ 0x5BE3A290));
  STACK[0x10EE0] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 39831)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 136) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10049224C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x77F4]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v1 - 32658));
  return (*(v2 + 8 * (v1 - 30314)))();
}

uint64_t sub_1004923E4()
{
  STACK[0x81A8] = *v1;
  STACK[0x97E8] = v0 - ((((v2 + 584817177) & 0xDD24ABBF) + 0x130272185FDA9951) & (2 * v0)) + 0x981390C2FED9246;
  LODWORD(STACK[0x6974]) = 103711543;
  return (*(STACK[0xF18] + 8 * (v2 - 9058)))();
}

uint64_t sub_100492468()
{
  v1 = STACK[0x88B8];
  STACK[0x18B0] = STACK[0x2DC0] + 82;
  STACK[0x5168] = v1;
  STACK[0x78E8] = 0;
  return (*(STACK[0xF18] + 8 * ((((v0 + 679963235) & 0xD777EDEA ^ (v0 - 1849157509) & 0x6E373FCF ^ 0xC6) * (v1 == 0)) ^ v0)))();
}

uint64_t sub_100492704@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v4 = *(a2 + v2);
  *(a2 + v2) = *(a2 + v3);
  *(a2 + v3) = v4;
  return (*(STACK[0xF18] + 8 * (a1 - 31929)))();
}

uint64_t sub_100492834@<X0>(int a1@<W8>)
{
  v1 = (((a1 ^ 0xAF677BBC) + 1352172612) ^ ((a1 ^ 0x58F6F080) - 1492578432) ^ ((a1 ^ 0xA5188199) + 1525120615)) - 1750067937;
  v2 = ((v1 ^ 0x352A7252) - 1879930923) ^ v1 ^ ((v1 ^ 0xFDBBCBEB) + 1197686382) ^ ((v1 ^ 0xF269497F) + 1219607802) ^ ((v1 ^ 0x7FDFFABF) - 989393094);
  return (*(STACK[0xF18] + 8 * ((51 * (((~((((v2 ^ 0x3A20847A) - 764314790) ^ ((v2 ^ 0x622F8D3E) - 1971424738) ^ ((v2 ^ 0x1D28033D) - 176554977)) + 1384712869) + LODWORD(STACK[0xE60])) >> 32) ^ 1)) ^ LODWORD(STACK[0xD70]))))();
}

uint64_t sub_100493598@<X0>(int a1@<W8>)
{
  *(v1 + v3) = (*v2 ^ 0xF27751E1) + 1073593952 + ((((a1 - 59) | 0x1004) ^ 0xE4EEF38C) & (2 * *v2));
  *(v1 - 0x7E666516A39B3476) = v2[1];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10049365C()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 243306672) & 0xE80BDFF;
  LODWORD(STACK[0xA040]) = STACK[0x98D4];
  v2 = *(STACK[0x80C8] + 32) + 1925233367;
  v3 = (v2 ^ 0x2C3E3030) & (2 * (v2 & 0x8D3F4524)) ^ v2 & 0x8D3F4524;
  v4 = ((2 * (v2 ^ 0x2C74B278)) ^ 0x4297EEB8) & (v2 ^ 0x2C74B278) ^ (2 * (v2 ^ 0x2C74B278)) & (v1 ^ 0xA14B4FD7);
  v5 = v4 ^ 0xA1481144;
  v6 = (v4 ^ 0x32410) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x852FDD70) & v5 ^ (4 * v5) & 0xA14BF758;
  v8 = (v7 ^ 0x810BD540) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x2040220C)) ^ 0x14BF75C0) & (v7 ^ 0x2040220C) ^ (16 * (v7 ^ 0x2040220C)) & 0xA14BF740;
  v10 = v8 ^ 0xA14BF75C ^ (v9 ^ 0xB7500) & (v8 << 8);
  LODWORD(STACK[0xA04C]) = v2 ^ (2 * ((v10 << 16) & 0x214B0000 ^ v10 ^ ((v10 << 16) ^ 0x775C0000) & (((v9 ^ 0xA140821C) << 8) & 0x214B0000 ^ 0x20080000 ^ (((v9 ^ 0xA140821C) << 8) ^ 0x4BF70000) & (v9 ^ 0xA140821C)))) ^ 0x8C87B9C8;
  return (*(STACK[0xF18] + 8 * (v0 - 29445)))();
}

uint64_t sub_1004939E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x1EC4]) = v8;
  LODWORD(STACK[0x4CD8]) = a8;
  return (*(STACK[0xF18] + 8 * ((((((v9 - 32721) ^ (STACK[0x8DE0] == 0)) & 1) == 0) | (2 * ((((v9 - 32721) ^ (STACK[0x8DE0] == 0)) & 1) == 0))) ^ (v9 + 3130))))();
}

uint64_t sub_100493A8C(int8x16_t a1, double a2, double a3, int32x4_t a4)
{
  v19 = vld4q_s8(v4);
  v8 = veorq_s8(v19.val[1], a1);
  _Q22 = vmovl_high_u8(v8);
  _Q21 = vmovl_u8(*v8.i8);
  v11 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm
  {
    SHLL2           V21.4S, V21.8H, #0x10
    SHLL2           V22.4S, V22.8H, #0x10
  }

  v16 = vmovl_u8(*&veorq_s8(v19.val[2], a1)).u64[0];
  v19.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v19.val[3], a1)));
  v17 = vorrq_s8(vorrq_s8(vorrq_s8(v11, vshll_n_u16(v16, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v19.val[0], a1))), 0x18uLL)), v19.val[2]);
  v19.val[2] = veorq_s8(vandq_s8(v17, vdupq_n_s32(0x69D5C71Bu)), (*&v19.val[2] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  *v5 = vaddq_s32(vsubq_s32(v17, vaddq_s32(v19.val[2], v19.val[2])), a4).u32[0];
  return (*(v7 + 8 * v6))(1742251, v6 ^ 0x188u);
}

uint64_t sub_100493E04()
{
  LODWORD(STACK[0xED0]) = 0;
  v1 = v0 - 33901;
  v2 = (v0 - 26911) ^ (v0 - 33901);
  v3 = STACK[0xF18];
  STACK[0x1FA0] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100493EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (((*(STACK[0x6608] + 16) ^ 0x71098DE3) + ((v6 - 26589) ^ 0x8EF67B06)) ^ ((*(STACK[0x6608] + 16) ^ 0x78E478F9) - 2028239097) ^ ((*(STACK[0x6608] + 16) ^ 0xE038320B) + 533188085)) - 77087425;
  v8 = (v7 ^ 0xEC4C498B) & (2 * (v7 & 0xEE6E09D2)) ^ v7 & 0xEE6E09D2;
  v9 = ((2 * (((v6 + 1124216648) | 0x90810220) ^ 0xEF8FFACF ^ v7)) ^ 0xA4C4A2FA) & (((v6 + 1124216648) | 0x90810220) ^ 0xEF8FFACF ^ v7) ^ (2 * (((v6 + 1124216648) | 0x90810220) ^ 0xEF8FFACF ^ v7)) & 0xD262517C;
  v10 = v9 ^ 0x52225105;
  v11 = (v9 ^ 0x80400058) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x498945F4) & v10 ^ (4 * v10) & 0xD262517C;
  v13 = (v12 ^ 0x40004160) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x92621009)) ^ 0x262517D0) & (v12 ^ 0x92621009) ^ (16 * (v12 ^ 0x92621009)) & 0xD2625150;
  return (*(STACK[0xF18] + 8 * ((491 * ((v7 ^ (2 * ((((v14 ^ 0xD042402D) << 8) & 0x52620000 ^ 0x42400000 ^ (((v14 ^ 0xD042402D) << 8) ^ 0x62510000) & (v14 ^ 0xD042402D)) & (((v14 ^ 0x2201100) & (v13 << 8) ^ v13) << 16) ^ (v14 ^ 0x2201100) & (v13 << 8) ^ v13))) == -294778414)) ^ v6)))(a1, a2, a3, a4, a5, a6, STACK[0x788], STACK[0xE58]);
}

uint64_t sub_100494174()
{
  STACK[0x5658] = STACK[0x4240];
  LODWORD(STACK[0x2564]) = -1187757320;
  return (*(STACK[0xF18] + 8 * (v0 - 30507)))();
}

uint64_t sub_1004941DC()
{
  v4 = (v1 | ((v1 < 0x33CBA83B) << 32)) - 260295787;
  v5 = v4 < 0x2447DBCC;
  v6 = v4 > v0 - 0x5D1E61E85B0CD47;
  if ((v0 - 0x5D1E61E85B0CD47) < 0x2447DBCC != v5)
  {
    v6 = v5;
  }

  if (v6)
  {
    v3 = 371891407;
  }

  LODWORD(STACK[0x1214]) = v3;
  return (*(STACK[0xF18] + 8 * ((99 * (((v2 + 46) ^ (v3 == ((v2 - 22672) | 0x8C08) - 371902494)) & 1)) ^ v2)))();
}

uint64_t sub_1004942A0()
{
  STACK[0x8FE8] = *(v2 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v3;
  LODWORD(STACK[0x7FD8]) = v0;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  LODWORD(STACK[0x704C]) = -2116087621;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100494330()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762646573) ^ (906386353 * (((((&STACK[0x10000] + 3800) | 0x9D2D2192) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x62D2DE6D)) ^ 0x53D31349));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 30973)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * (v0 - 18363 + ((v0 + 1304590787) & 0xB23DBFBB))) ^ v0)))(v2);
}

uint64_t sub_10049448C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004944B0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, unsigned int a9@<W8>)
{
  LODWORD(STACK[0x44A4]) = a8;
  LODWORD(STACK[0x7BFC]) = a7;
  LODWORD(STACK[0x4430]) = a6;
  LODWORD(STACK[0x57DC]) = a5;
  LODWORD(STACK[0x48CC]) = a1;
  LODWORD(STACK[0x6A90]) = a9;
  LODWORD(STACK[0x6E90]) = v14;
  LODWORD(STACK[0x4B9C]) = v16;
  LODWORD(STACK[0x7CA4]) = v13;
  LODWORD(STACK[0x7854]) = v15;
  LODWORD(STACK[0x75C4]) = a4;
  LODWORD(STACK[0x4BB4]) = a3;
  LODWORD(STACK[0x7E2C]) = v12;
  LODWORD(STACK[0x7574]) = v10;
  LODWORD(STACK[0x143C]) = v11;
  return (*(STACK[0xF18] + 8 * (((a9 >= *(*(v9 + 520) + 4)) * ((a2 + 25694) ^ (a2 + 25796))) ^ a2)))();
}

uint64_t sub_1004945AC()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x95 ^ (6270 * (v0 != 1755060635)))))();
}

uint64_t sub_1004946F8(uint64_t a1)
{
  *(a1 + 8) = 1325971656;
  *(a1 + 12) = v1;
  *a1 = 0;
  *(a1 + 16) = v2;
  return (*(STACK[0xF18] + 8 * ((45 * (v1 == ((v3 + 455299480) & 0xE4DC2777 ^ 0xFFFF57E2) + v3 - 7900)) ^ v3)))();
}

uint64_t sub_100494860()
{
  v2 = STACK[0x97CF];
  LODWORD(STACK[0x3524]) = v1;
  return (*(STACK[0xF18] + 8 * ((491 * ((v2 ^ (v0 - 52)) & 1)) ^ v0)))();
}

uint64_t sub_1004949E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48)
{
  v50 = (((v49 ^ 0x40CEB708) - 1087289096) ^ ((v49 ^ 0x35DC8686) - 903644806) ^ ((v49 ^ 0x686EB7F2) - 1752086514)) + 1588696208 + (((a48 ^ 0x9A1C09B2) + 1709438542) ^ ((a48 ^ 0xE7C23958) + 406701736) ^ (((((v48 + 266986563) & 0xF3BDFA0F) + 1559905417) ^ a48) - 1621276310));
  v51 = (v50 ^ 0x9E277762) & (2 * (v50 & 0xDC477868)) ^ v50 & 0xDC477868;
  v52 = ((2 * (v50 ^ 0x96259772)) ^ 0x94C5DE34) & (v50 ^ 0x96259772) ^ (2 * (v50 ^ 0x96259772)) & 0x4A62EF1A;
  v53 = v52 ^ 0x4A22210A;
  v54 = (v52 ^ 0xC200) & (4 * v51) ^ v51;
  v55 = ((4 * v53) ^ 0x298BBC68) & v53 ^ (4 * v53) & 0x4A62EF18;
  return (*(a8 + 8 * v48))((((v55 ^ 0x802AC00) & (16 * v54) ^ v54 ^ 0x4A62EF1A ^ (((16 * (v55 ^ 0x42604312)) ^ 0xA62EF1A0) & (v55 ^ 0x42604312) ^ (16 * (v55 ^ 0x42604312)) & 0x4A62EF00 ^ 0x222E100) & (((v55 ^ 0x802AC00) & (16 * v54) ^ v54) << 8)) << 16) ^ 0x6F1A0000, 1247997722, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_100494C68()
{
  v1 = STACK[0xF10] - 15563;
  v2 = (LOBYTE(STACK[0x1587]) - 81) * (v0 - 72) - 2 * LOBYTE(STACK[0x1587]) + 21;
  v3 = v2 & (STACK[0xF10] ^ 0xFFFFB254) ^ 0x71;
  v4 = v2 ^ 0xC;
  *(STACK[0x1230] + LODWORD(STACK[0x2DF4])) = v2 ^ (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (((2 * v2) & 0x1A ^ 0x62) & v2 ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ 0x30;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100494D88(int a1)
{
  v8 = a1 <= v6;
  v9 = a1 + v5 + ((v7 + v2) | v3);
  v10 = !v8;
  return (*(STACK[0xF18] + 8 * (((((v7 + v1) & v4) - 2824) * v10) | v7)))(v9);
}

uint64_t sub_100494E28()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 29586) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0x9614CAEC) - ((&STACK[0x10000] + 3800) & 0x9614CAE8)) ^ 0x1CFF847));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 48600)))(&STACK[0x10ED8]);
  STACK[0x85B8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x37D7 ^ (4 * v0) ^ 0x53B4)))(v2);
}

uint64_t sub_100494EE8()
{
  v3 = v2 + 927854266 < (((v0 - 46874) | 0x8B2B) ^ 0x9092B0CF) + ((v0 - 43290) | 0x4100);
  if ((v1 - 2086309095) < 0x90928B04 == v3)
  {
    v3 = v1 - 2086309095 < (v2 + 927854266);
  }

  return (*(STACK[0xF18] + 8 * ((25 * !v3) ^ v0)))();
}

uint64_t sub_100494F7C@<X0>(unint64_t a1@<X8>)
{
  v4 = 2 * (v2 ^ 0xD488);
  v5 = STACK[0x4850];
  v6 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x37134491) + (~(&STACK[0x10000] + 3800) | 0xC8ECBB6E)) ^ 0xD8456E49);
  STACK[0x10F00] = (((v4 - 2000012187) & 0x77359FFF) - 0x731C9F7D80ABCE98) ^ &STACK[0xF28];
  STACK[0x10F10] = v3;
  STACK[0x10EF0] = v5;
  LODWORD(STACK[0x10EE8]) = v6 ^ 0x2C30DAC7;
  STACK[0x10EE0] = v1;
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10F08]) = v4 - v6 + 385636693;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v4 ^ 0xF1E1)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v4))(v8);
}

uint64_t sub_100495070@<X0>(unint64_t a1@<X8>)
{
  STACK[0xB258] = a1;
  LODWORD(STACK[0x14AC]) = v1;
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x17E8] = v5;
  STACK[0x8990] = (v5 + 144);
  STACK[0x84C8] = (v5 + 164);
  STACK[0x7690] = v4 + ((3779 * (v3 ^ 0x2126u)) ^ 0x63E5);
  STACK[0x1E08] = v2;
  return (*(STACK[0xF18] + 8 * (((v2 != 0) * ((327 * (v3 ^ 0x214C)) ^ 0x8B56)) ^ v3)))();
}

uint64_t sub_1004951C0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 + 6861)))(v2);
}

uint64_t sub_100495B84()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 12617)))(v2);
}

uint64_t sub_100495C28@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 28700;
  v4 = 3 * ((v1 - 28700) ^ 0x3898);
  v5 = *(STACK[0x6258] + 324);
  *(a1 + 16 * v2 + 8) = (((v5 >> 8) & 0x7F00 | ((((v5 << 8) & 0xFF0000 ^ 0xFF80FFFF) & ((v5 << 24) ^ 0x75F7126C) & 0xFFF7FFFF | (((v5 >> 11) & 1) << 19)) ^ 0x28459260) & ((v5 >> 8) & (v4 + 29637) ^ 0xFFFFB56C)) ^ 0x340CA99D) & (HIBYTE(v5) ^ 0xFFFFFF57) ^ HIBYTE(v5) & 0x6E ^ 0x981390C015BD9FDLL;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_100495D94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, unsigned int a6, char a7)
{
  v9 = a6 < 0x408DFDBF;
  v10 = STACK[0xE70] + ((((((a3 ^ 0xE8) + 4) ^ a3 ^ ((a3 ^ 7) + 13) ^ ((a3 ^ 0xD) + 7)) ^ ((a7 ^ a3) + 30)) & 0x1F ^ 0x14u) << 7);
  *(v10 + 4 * v7) += 1976181163;
  if (v9 == a5 < 0x408DFDBF)
  {
    v9 = a5 < a6;
  }

  return (*(STACK[0xF18] + 8 * ((23 * v9) | v8)))();
}

uint64_t sub_100495E48@<X0>(int a1@<W8>)
{
  STACK[0x4368] = v1;
  STACK[0x1B08] = v2;
  LODWORD(STACK[0x6938]) = a1;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v3 - 1762675148) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x26A44638) - 1499183554) ^ 0x97A58B1A));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 + 2398)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v6 = 1;
  }

  else
  {
    v6 = *STACK[0x940] == 0;
  }

  v7 = v6;
  return (*(v4 + 8 * ((((v3 ^ v7) & 1) * ((v3 - 46293) ^ 0xCB2)) ^ v3)))(v5);
}

uint64_t sub_100495FA0()
{
  v0 = STACK[0xF10] - 26986;
  v1 = STACK[0x9228] + 65;
  STACK[0x5400] = STACK[0x8000];
  STACK[0x41A0] = v1;
  LODWORD(STACK[0x20CC]) = -371865856;
  LODWORD(STACK[0x38AC]) = -1497616713;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10049615C@<X0>(int a1@<W8>)
{
  v1 = a1 - 23073;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16238)))(STACK[0x1E60]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100496194()
{
  LODWORD(STACK[0x42A4]) = v0;
  STACK[0x8AF8] = STACK[0x28D0];
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 31019 + 16655 * (v1 ^ 0xBDC))))();
}

uint64_t sub_100496234()
{
  v0 = STACK[0xF10] - 31097;
  LODWORD(STACK[0x26DC]) = ((((STACK[0xF10] - 19097) | 0xD0C) - 1020474599 + (LODWORD(STACK[0xA070]) ^ LODWORD(STACK[0x98D4]) ^ 0x854D7648)) ^ ((LODWORD(STACK[0xA070]) ^ LODWORD(STACK[0x98D4]) ^ 0x4D057DE6) + 191173481) ^ ((LODWORD(STACK[0xA070]) ^ LODWORD(STACK[0x98D4]) ^ 0xC8480BAE) - 1909955295)) - (((LODWORD(STACK[0xA078]) ^ 0xF2E3F2EC) + 219942164) ^ ((LODWORD(STACK[0xA078]) ^ 0xDF7B23A8) + 545578072) ^ ((LODWORD(STACK[0xA078]) ^ 0xC44D1655) + 1001580971)) - 527579960;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x3BD3)))();
}

void *sub_1004963AC@<X0>(int a1@<W8>)
{
  LOWORD(STACK[0x71FA]) = STACK[0x5C42];
  STACK[0x2D98] = STACK[0x34B0];
  STACK[0x7500] = 0;
  v1 = STACK[0xF18];
  STACK[0x40C8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0xFAE0 ^ (a1 + 28054))))(&STACK[0x7500]);
}

uint64_t sub_10049640C@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + 16 * v2;
  v4 = 0x981390C2FED9246;
  if (*(STACK[0x6258] + 420) != (((v1 + 29714) | 0x38) ^ 0x8241A23D))
  {
    v4 = 0x981390C2FED9247;
  }

  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10049655C()
{
  STACK[0x17B8] = 0;
  STACK[0x3478] = 0;
  LODWORD(STACK[0x7C48]) = -371865839;
  v1 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 - 1016) ^ 0x1CF5) + v0)))();
}

uint64_t sub_1004966F4@<X0>(int a1@<W8>)
{
  *STACK[0x7A08] = STACK[0x5988];
  *STACK[0x25A0] = *STACK[0x36B0] + a1 - ((2 * *STACK[0x36B0]) & 0xD3AB8E22);
  v2 = STACK[0x54C8];
  v3 = *STACK[0x54C8];
  LODWORD(STACK[0x10ED8]) = (v1 - 1762639964) ^ (906386353 * ((((2 * &STACK[0x10ED8]) | 0x1679A5C0) - &STACK[0x10ED8] - 188535520) ^ 0x3A3D1FC4));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 37582)))(&STACK[0x10ED8]);
  v5 = STACK[0x8480];
  v2[2] = *(STACK[0x8480] + 48);
  v2[3] = *(v5 + 56);
  v6 = *v2;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((2 * (&STACK[0x10ED8] & 0x8AC12B8) - &STACK[0x10ED8] + 2001988931) ^ 0x9175F68C) + 296774431;
  STACK[0x10ED8] = v6;
  (*(v4 + 8 * (v1 ^ 0xFD21)))(&STACK[0x10ED8]);
  v7 = 297845113 * (((&STACK[0x10ED8] | 0xA5DA46B6) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x5A25B948)) ^ 0xD2E95A28);
  LODWORD(STACK[0x10EDC]) = v7 + LODWORD(STACK[0x8520]) + 381952898;
  LODWORD(STACK[0x10ED8]) = v1 - v7 - 4836;
  LOBYTE(STACK[0x10EE4]) = 121 * (((&STACK[0x10ED8] | 0xB6) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x48)) ^ 0x28) + 11;
  STACK[0x10EE8] = v2;
  v8 = (*(v4 + 8 * (v1 + 37763)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v8);
}

uint64_t sub_100496CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v8 = a7 ^ 0xC1BF;
  v9 = v7 + ((2 * v7) & 0x80) + 64;
  LOBYTE(STACK[0x61DF]) = (((*(STACK[0x5DC8] + (LODWORD(STACK[0x56C4]) + v7)) ^ 0xC1) + 63) ^ *(STACK[0x5DC8] + (LODWORD(STACK[0x56C4]) + v7)) ^ ((*(STACK[0x5DC8] + (LODWORD(STACK[0x56C4]) + v7)) ^ 0x1E) + (((v8 + 41) | 0x84) ^ 0x4F))) - (((v9 ^ 0x20) - 32) ^ ((v9 ^ 9) - 9) ^ ((v9 ^ 0x69) - 105)) + 75;
  return (*(STACK[0xF18] + 8 * ((1727 * ((v8 + 1282633011) < 0x8D5376AB)) ^ (v8 + 4409))))(a1, a2, a3, a4, a5, a6, &off_1010A0B50, &STACK[0x30FF]);
}

uint64_t sub_100496F54@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(*(a1 + 8) + 8 * (v3 - 1273926910)) = *(v4 + 8 * (v3 - 1273926910));
  v5 = *a1 > 0x6E78FF52u;
  if ((v3 + 1167616944) < 0x918700AD == v5)
  {
    v5 = v3 + 1167616944 < (*a1 - 1853423443);
  }

  return (*(STACK[0xF18] + 8 * ((!v5 * v2) ^ a2)))();
}

uint64_t sub_100496FE4()
{
  v2 = v0 == ((v1 - 640168885) & 0x2628E5F7) - 371916486;
  LOBYTE(STACK[0x45C3]) = v2;
  return (*(STACK[0xF18] + 8 * ((32919 * v2) ^ v1)))();
}

uint64_t sub_100497378()
{
  v3 = STACK[0x8A50];
  STACK[0x8FE8] = *(v0 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v3;
  LODWORD(STACK[0x704C]) = -2116087579;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = (v2 - 492838666) & 0x1D60ADA7 ^ v1 ^ 0xC638F0F1;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1004974A4@<X0>(int a1@<W8>)
{
  v2 = a1 & 0x2904BFBF;
  LODWORD(STACK[0x10ED8]) = (a1 & 0x2904BFBF) + 1022166737 * ((((&STACK[0x10000] + 3800) | 0xF960FCDE) - ((&STACK[0x10000] + 3800) & 0xF960FCD8)) ^ 0x43701D4C) + 8585;
  STACK[0x10EE0] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * ((a1 & 0x2904BFBFu) + 16333)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v2 - 24285)))(v4);
}

uint64_t sub_100497560(_DWORD *a1)
{
  v4 = v3 & 0xA38EFBEB;
  v5 = *STACK[0xE50];
  v6 = *a1 >> 2;
  v7 = *(v5 + 4 * ((((v4 + 20017) | 0x229) + 1073706177) & (0xCCC54394 % v6)));
  LOWORD(v6) = ~*(v5 + 4 * ((v6 - 1) & v7));
  LODWORD(v5) = ~v7;
  v8 = STACK[0x8B0];
  v9 = *(STACK[0x8B0] - 527405895);
  v10 = *(STACK[0x8B8] + 4 * v9);
  v12 = v6 & WORD1(v5);
  v11 = v12 == 0;
  v13 = v12 + v12 * v10;
  if (v11)
  {
    v14 = *(STACK[0x8B8] + 4 * v9);
  }

  else
  {
    v14 = 0;
  }

  *(STACK[0x8B8] + 4 * v9) = (v14 + v13) * v10;
  *(v8 - 527405895) = (v9 + 1) % 6u;
  if (!v11)
  {
    v2 = 371891350;
  }

  LODWORD(STACK[0x8D4C]) = v2;
  return (*(STACK[0xF18] + 8 * (v4 ^ (16 * (v1 == 393219)))))();
}

uint64_t sub_100497654@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v5 = 155453101 * (((&STACK[0x10ED8] | 0xAED267D9CB5D4753) - (&STACK[0x10ED8] & 0xAED267D9CB5D4750)) ^ 0x12A5392C2D7B5C9CLL);
  v6 = (v2 ^ STACK[0x3AB8] ^ 0x704C0EACF6965A18) - v5;
  STACK[0x10ED8] = &STACK[0x34CC];
  STACK[0x10EF0] = v6;
  STACK[0x10EE8] = v4 + v5;
  STACK[0x10EF8] = v1;
  LODWORD(STACK[0x10EE0]) = v5 + v3 + 5458;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v3 ^ 0x84AD)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v3))(v8);
}

uint64_t sub_10049783C()
{
  v2 = v0 ^ 0xC638425F ^ LODWORD(STACK[0x1E10]);
  STACK[0x8FE8] = *(STACK[0x75F8] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x704C]) = -2116087617;
  LODWORD(STACK[0x7FD8]) = 1801812256;
  LODWORD(STACK[0x4A8C]) = v2;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004978C0()
{
  LOBYTE(STACK[0x293F]) = v0;
  if (LOBYTE(STACK[0x848F]))
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 == ((v1 - 1045222730) & 0x3E4CB75D ^ ((v1 - 2599) | 0x810E) ^ 0xE9D57A62);
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((17010 * v4) ^ v1)))();
}

uint64_t sub_10049792C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 6578)))(v2);
}

uint64_t sub_100497958@<X0>(unint64_t a1@<X5>, int a2@<W6>, unsigned int a3@<W8>)
{
  STACK[0xB880] = a1;
  v4 = (STACK[0xB858] + a3);
  v5 = *v4;
  v6 = (STACK[0xB850] + STACK[0xE90]);
  STACK[0x9F18] = v6;
  v7 = *(*STACK[0xE50] + (*STACK[0xE58] & (((a2 + 7175) | 0x401) ^ 0x72D7880Du)));
  v8 = 1864610357 * ((1864610357 * ((v7 ^ v4) & 0x7FFFFFFF)) ^ ((1864610357 * ((v7 ^ v4) & 0x7FFFFFFF)) >> 16));
  v9 = 1864610357 * ((1864610357 * ((v7 ^ v6) & 0x7FFFFFFF)) ^ ((1864610357 * ((v7 ^ v6) & 0x7FFFFFFF)) >> 16));
  *v6 = *(STACK[0x8A0] + (v8 >> 24)) ^ v5 ^ *((v8 >> 24) + STACK[0x898] + 3) ^ *((v8 >> 24) + STACK[0x8A8] + 2) ^ *(STACK[0x8A0] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x898] + 3) ^ *((v9 >> 24) + STACK[0x8A8] + 2) ^ v8 ^ v9 ^ (27 * BYTE3(v8)) ^ (27 * BYTE3(v9));
  v10 = (LODWORD(STACK[0xE80]) - 999293331);
  STACK[0x9F20] = v10;
  v11 = STACK[0xF18];
  STACK[0x9AD0] = *(STACK[0xF18] + 8 * a2);
  return (*(v11 + 8 * (a2 + 13410)))(v3 + 48 * v10);
}

uint64_t sub_100497AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  STACK[0x668] = 0xFB353DFD623D8D22;
  v37 = *(*(v35 + 8 * (v34 - 815)) - 586084794);
  v38 = (a33 - ((v36 - 216) | 0xE0E7EB29A1DC4299) - 0x1F1814D65E23BD67) ^ 0xC5C3BB3933B5929ALL;
  *(v36 - 184) = v34 - 634647737 * v38 - 1230180373;
  *(v36 - 180) = ((v34 + 1928759887) ^ 0x23) - 634647737 * v38;
  *(v36 - 204) = v34 + 1928759887 + 634647737 * v38;
  *(v36 - 216) = -634647737 * v38;
  *(v36 - 212) = ((v34 + 1928759887) ^ 0x1252) - 634647737 * v38;
  STACK[0x780] = -634647737 * v38;
  STACK[0x778] = v37 ^ (634647737 * v38);
  v39 = (*(v33 + 8 * (v34 ^ 0xCFC9)))(v36 - 216);
  return (*(v33 + 8 * *(v36 - 208)))(v39);
}

uint64_t sub_100497C80()
{
  v0 = STACK[0xF10] + 5182;
  *(STACK[0x78B0] + 168) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100497DC8()
{
  v1 = STACK[0xF18];
  STACK[0x64F0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 11070 + (v0 ^ 0x2C25))))();
}

uint64_t sub_100497EC4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x68C4]) = a1 + v1 + ((v1 < (v2 + 107)) << 8) - 23;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x1147)))();
}

uint64_t sub_100497F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0xAF0] = v4;
  v5 = STACK[0xE90];
  v6 = LODWORD(STACK[0xE90]) ^ 0xB964;
  LODWORD(STACK[0xE70]) = *(*STACK[0xE50] + ((v6 + 2105937362) & *STACK[0xE58]));
  v7 = *(STACK[0xF18] + 8 * v5);
  LODWORD(STACK[0xE80]) = v6;
  v8 = (v6 - 39576) | 0x460;
  LODWORD(STACK[0xE90]) = v8;
  LODWORD(STACK[0xE00]) = v8 ^ 0x16E1;
  STACK[0xE10] = 0xA5CBF9F55F780DLL;
  return v7(a1, 1337, a3, a4, 117670337, 2336);
}

uint64_t sub_100498168()
{
  v0 = STACK[0xE60];
  v1 = (LODWORD(STACK[0xE60]) - 11053) | 0x400;
  LODWORD(STACK[0x7C20]) = -371865839;
  STACK[0x65D8] = 0;
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0x59EC]) > 3) * (v1 + 22732)) ^ v0)))();
}

uint64_t sub_1004981CC()
{
  v1 = (v0 - 1802936409) & 0x6B768FBB;
  if (((v1 ^ 0xC51EBEC5F2A3E13DLL) + STACK[0x2790]) <= 5000)
  {
    v2 = 5000;
  }

  else
  {
    v2 = (v1 ^ 0xC51EBEC5F2A3E13DLL) + STACK[0x2790];
  }

  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 11968)))(v2 & (((2 * v0) ^ 0x11FA6u) + 4294957033)) == 0;
  return (*(v3 + 8 * ((2 * v4) | (4 * v4) | v0)))();
}

uint64_t sub_100498260@<X0>(int a1@<W8>)
{
  v4 = *v2;
  v5 = STACK[0xF18];
  STACK[0x1378] = *(STACK[0xF18] + 8 * v1);
  STACK[0xB810] = v4;
  STACK[0xB818] = v3;
  return (*(v5 + 8 * (((v4 != 0) * ((a1 - 202625340) & 0xC1347EF ^ 0x1C6)) ^ (a1 - 25308))))();
}

uint64_t sub_1004982C8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB264]) = a1;
  STACK[0xF98] = STACK[0xB258];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100498494@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = *(STACK[0xF18] + 8 * ((((((a2 - 7076) | 0x8A2A) - 23098) ^ ((a2 + 3023) | 0x4208)) * (LODWORD(STACK[0xE90]) == -371865743)) ^ a2));
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
  LODWORD(STACK[0xEC0]) = 1724701212;
  return v2(0xB8408CB4B9DC4841, 0xBB10DFE5E7189F3, 0x9F2632BF76345949, a1, 0x60D9CD4089CBA6B7, 0xB4B56A12200AB4CCLL, 1724701216, 0x4B4A95EDDFF54B34);
}

uint64_t sub_1004986D8()
{
  v1 = (STACK[0xF10] - 1686413644) & 0xEDFE9EDB;
  v2 = STACK[0xF10] - 11381;
  STACK[0x5F58] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 + 1988458746) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_100498734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = STACK[0xF10] - 22660;
  v17 = STACK[0x7DF0];
  v18 = STACK[0xE50];
  v19 = *STACK[0xE50];
  v20 = STACK[0xE58];
  v21 = *STACK[0xE58] & 0xFFFFFFFFE6F073DCLL;
  v22 = *(STACK[0x7DF0] + 3);
  v23 = (((STACK[0x7DF0] + 3) ^ *(v19 + v21)) & 0x7FFFFFFF) * v8;
  LODWORD(STACK[0xED0]) = v16;
  v24 = (v23 ^ HIWORD(v23)) * (v16 ^ 0x6F238082);
  v25 = STACK[0x7878];
  LOBYTE(v16) = *(v14 + (v24 >> 24)) ^ *(v13 + (v24 >> 24)) ^ *(a1 + (v24 >> 24)) ^ v22 ^ v24 ^ (79 * BYTE3(v24));
  v25[176] = (((v16 ^ 0xC2) + 46) ^ ((v16 ^ 9) - 25) ^ ((v16 ^ 0xCB) + 37)) + 35;
  v25[177] = a8;
  v26 = ((*(v19 + v21) ^ (v17 + 2)) & 0x7FFFFFFF) * v8;
  v27 = (v26 ^ HIWORD(v26)) * v8;
  v28 = STACK[0x3AE7];
  LOBYTE(v27) = *(v14 + (v27 >> 24)) ^ *(v13 + (v27 >> 24)) ^ *(a1 + (v27 >> 24)) ^ *(v17 + 2) ^ v27 ^ (79 * BYTE3(v27));
  v25[179] = (((v27 ^ 0x39) - 15) ^ ((v27 ^ 0x6E) - 88) ^ ((v27 ^ 0x57) - 97)) + 105;
  v25[180] = v15;
  LODWORD(v19) = ((*(v19 + v21) ^ (v17 + 1)) & 0x7FFFFFFF) * v8;
  v29 = (v19 ^ WORD1(v19)) * v8;
  LOBYTE(v29) = *(v14 + (v29 >> 24)) ^ *(v13 + (v29 >> 24)) ^ *(a1 + (v29 >> 24)) ^ *(v17 + 1) ^ v29 ^ (79 * BYTE3(v29));
  v25[182] = (((v29 ^ 0x2D) + 90) ^ ((v29 ^ 0x2F) + 92) ^ ((v29 ^ 2) + 119)) - 74;
  v25[183] = v28;
  v30 = *v18;
  v31 = *v20 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v27) = ((*(*v18 + v31) ^ v17) & 0x7FFFFFFF) * v8;
  v32 = (v27 ^ WORD1(v27)) * v8;
  v33 = STACK[0x8C4F];
  v34 = STACK[0x1E3F];
  LOBYTE(v32) = *(v14 + (v32 >> 24)) ^ *(v13 + (v32 >> 24)) ^ *(a1 + (v32 >> 24)) ^ *v17 ^ v32 ^ (79 * BYTE3(v32));
  v25[185] = (((v32 ^ 0xA8) - 17) ^ ((v32 ^ 0x52) + 21) ^ ((v32 ^ 0xFA) - 67)) - 51;
  v25[186] = v33;
  LODWORD(v30) = ((*(v30 + v31) ^ (v17 + 7)) & 0x7FFFFFFF) * v8;
  v35 = (v30 ^ WORD1(v30)) * v8;
  LOBYTE(v35) = *(v14 + (v35 >> 24)) ^ *(v13 + (v35 >> 24)) ^ *(a1 + (v35 >> 24)) ^ *(v17 + 7) ^ v35 ^ (79 * BYTE3(v35));
  v25[188] = (((v35 ^ 0xD3) - 53) ^ ((v35 ^ 0x18) + 2) ^ ((v35 ^ 0xCB) - 45)) + 90;
  v25[189] = v34;
  v36 = *v18;
  v37 = *v20 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v35) = ((*(*v18 + v37) ^ (v17 + 6)) & 0x7FFFFFFF) * v8;
  v38 = (v35 ^ WORD1(v35)) * v8;
  LOBYTE(v38) = *(v14 + (v38 >> 24)) ^ *(v13 + (v38 >> 24)) ^ *(a1 + (v38 >> 24)) ^ *(v17 + 6) ^ v38 ^ (79 * BYTE3(v38));
  v39 = STACK[0x8717];
  v25[191] = (((v38 ^ 0x7E) - 19) ^ ((v38 ^ 0x22) - 79) ^ ((v38 ^ 0x5C) - 49)) - 36;
  v25[192] = v39;
  LODWORD(v38) = ((*(v36 + v37) ^ (v17 + 5)) & 0x7FFFFFFF) * v8;
  v40 = (v38 ^ WORD1(v38)) * v8;
  v41 = *(v14 + (v40 >> 24)) ^ *(v13 + (v40 >> 24));
  v42 = STACK[0x257F];
  LOBYTE(v38) = STACK[0x39A7];
  LOBYTE(v32) = STACK[0x7917];
  v43 = v41 ^ *(a1 + (v40 >> 24)) ^ *(v17 + 5) ^ v40 ^ (79 * BYTE3(v40));
  v25[194] = (((v43 ^ 0x22) - 73) ^ ((v43 ^ 0xBB) + 48) ^ ((v43 ^ 0x99) + 14)) - 86;
  v25[195] = v42;
  LODWORD(v36) = ((*(v36 + v37) ^ (v17 + 4)) & 0x7FFFFFFF) * v8;
  v44 = (v36 ^ WORD1(v36)) * v8;
  LOBYTE(v44) = *(v12 + (v44 >> 24)) ^ *((v44 >> 24) + v11 + 1) ^ *(a4 + (v44 >> 24)) ^ *(v17 + 4) ^ v44 ^ (-19 * BYTE3(v44));
  v25[197] = (((v44 ^ 0xC3) - 35) ^ ((v44 ^ v10) - 66) ^ ((v44 ^ 0x61) + 127)) - 26;
  v25[198] = v32;
  v45 = *v18;
  v46 = *v20 & 0xFFFFFFFFE6F073DCLL;
  v47 = ((*(*v18 + v46) ^ (v17 + 11)) & 0x7FFFFFFF) * v8;
  v48 = (v47 ^ HIWORD(v47)) * v8;
  LOBYTE(v48) = *(v12 + (v48 >> 24)) ^ *((v48 >> 24) + v11 + 1) ^ *(a4 + (v48 >> 24)) ^ *(v17 + 11) ^ v48 ^ (-19 * BYTE3(v48));
  v25[200] = (((v48 ^ 0xEC) - 52) ^ ((v48 ^ v9) + 78) ^ ((v48 ^ 0x86) - 94)) + 47;
  v49 = STACK[0x7878];
  v49[201] = v38;
  LODWORD(v38) = ((*(v45 + v46) ^ (v17 + 10)) & 0x7FFFFFFF) * v8;
  v50 = (v38 ^ WORD1(v38)) * v8;
  LOBYTE(v50) = *(v12 + (v50 >> 24)) ^ *((v50 >> 24) + v11 + 1) ^ *(a4 + (v50 >> 24)) ^ *(v17 + 10) ^ v50 ^ (-19 * BYTE3(v50));
  LOBYTE(v40) = STACK[0x6F8F];
  v49[203] = (((v50 ^ 0xE5) + 72) ^ ((v50 ^ 0x9E) + 61) ^ ((v50 ^ 0x7B) - 38)) - 75;
  v49[204] = v40;
  LODWORD(v50) = ((*(v45 + v46) ^ (v17 + 9)) & 0x7FFFFFFF) * v8;
  v51 = (v50 ^ WORD1(v50)) * v8;
  LOBYTE(v24) = STACK[0x7C5F];
  LOBYTE(v51) = *(v12 + (v51 >> 24)) ^ *((v51 >> 24) + v11 + 1) ^ *(a4 + (v51 >> 24)) ^ *(v17 + 9) ^ v51 ^ (-19 * BYTE3(v51));
  v49[206] = (((v51 ^ 0x5E) + 87) ^ (-9 - v51) ^ ((v51 ^ 0xA1) - 86)) + 116;
  v49[207] = v24;
  LODWORD(v51) = ((*(*v18 + (*v20 & 0xFFFFFFFFE6F073DCLL)) ^ (v17 + 8)) & 0x7FFFFFFF) * v8;
  v52 = (v51 ^ WORD1(v51)) * v8;
  LOBYTE(v24) = STACK[0x714F];
  LOBYTE(v52) = *(v12 + (v52 >> 24)) ^ *((v52 >> 24) + v11 + 1) ^ *(a4 + (v52 >> 24)) ^ *(v17 + 8) ^ v52 ^ (-19 * BYTE3(v52));
  v49[209] = (((v52 ^ 0xBB) + 112) ^ ((v52 ^ 0x61) - 74) ^ ((v52 ^ 0xDA) + 15)) + 91;
  v25[210] = v24;
  LODWORD(v52) = ((*(*v18 + (*v20 & 0xFFFFFFFFE6F073DCLL)) ^ (v17 + 15)) & 0x7FFFFFFF) * v8;
  v53 = (v52 ^ WORD1(v52)) * v8;
  LOBYTE(v53) = *(v12 + (v53 >> 24)) ^ *((v53 >> 24) + v11 + 1) ^ *(a4 + (v53 >> 24)) ^ *(v17 + 15) ^ v53 ^ (-19 * BYTE3(v53));
  v25[212] = (((v53 ^ 0x6C) + 67) ^ ((v53 ^ 0xC7) - 22) ^ ((v53 ^ 0xAB) - 122)) + 75;
  v25[213] = STACK[0x377F];
  LODWORD(v53) = ((*(*v18 + (*v20 & 0xFFFFFFFFE6F073DCLL)) ^ (v17 + 14)) & 0x7FFFFFFF) * v8;
  v54 = (v53 ^ WORD1(v53)) * v8;
  LOBYTE(v40) = STACK[0x780F];
  LOBYTE(v54) = *(v12 + (v54 >> 24)) ^ *((v54 >> 24) + v11 + 1) ^ *(a4 + (v54 >> 24)) ^ *(v17 + 14) ^ v54 ^ (-19 * BYTE3(v54));
  v25[215] = (((v54 ^ 0xE8) - 26) ^ ((v54 ^ 0xE4) - 22) ^ ((v54 ^ 0xC) + 2)) + 35;
  v25[216] = v40;
  LODWORD(v54) = ((*(*v18 + (*v20 & 0xFFFFFFFFE6F073DCLL)) ^ (v17 + 13)) & 0x7FFFFFFF) * v8;
  v55 = (v54 ^ WORD1(v54)) * v8;
  LOBYTE(v55) = *(v12 + (v55 >> 24)) ^ *((v55 >> 24) + v11 + 1) ^ *(a4 + (v55 >> 24)) ^ *(v17 + 13) ^ v55 ^ (-19 * BYTE3(v55));
  LOBYTE(v45) = STACK[0x6947];
  v49[218] = (((v55 ^ 0xCA) + 96) ^ ((v55 ^ 0xF4) + 98) ^ ((v55 ^ 0x3E) - 84)) - 57;
  v49[219] = v45;
  LODWORD(v55) = ((*(*v18 + (*v20 & 0xFFFFFFFFE6F073DCLL)) ^ (v17 + 12)) & 0x7FFFFFFF) * v8;
  v56 = (v55 ^ WORD1(v55)) * v8;
  LODWORD(v56) = *(v12 + (v56 >> 24)) ^ *((v56 >> 24) + v11 + 1) ^ *(a4 + (v56 >> 24)) ^ *(v17 + 12) ^ v56 ^ (-19 * (v56 >> 24));
  v49[221] = (((v56 ^ 0xB9) + 49) ^ ((v56 ^ 0xA7) + 47) ^ ((v56 ^ 0x1E) - 104)) - 40;
  v49[222] = STACK[0x7E7F];
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xE80])))();
}

uint64_t sub_100499088@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v5 = v2 != ((v1 + 24544) ^ 0x8B3B) && v3 != 0;
  return (*(STACK[0xF18] + 8 * ((25896 * v5) ^ v1)))();
}

uint64_t sub_1004990E0@<X0>(int a1@<W8>)
{
  v3 = a1 & 0xF6234B7F;
  v4 = *(STACK[0x5DC8] + (*(v2 + 1556) + v1));
  LOBYTE(STACK[0x44D7]) = (((v4 ^ 0xC6) + 58) ^ ((v4 ^ 0xE5) + 27) ^ (v3 - 102 + (v4 ^ 0x7C) - 41)) - ((((v1 - ((2 * v1) & 2) + 97) ^ 0x37) - 55) ^ (((v1 - ((2 * v1) & 2) + 97) ^ 0x82) + 126) ^ (((v1 - ((2 * v1) & 2) + 97) ^ 0xD4) + 44)) + 106;
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1595)))();
}

uint64_t sub_100499198@<X0>(uint64_t a1@<X8>)
{
  v3 = &STACK[0xC4D0] + a1;
  v4 = (v1 - 866314272) & 0x33A25A72;
  LODWORD(STACK[0xE70]) = v4;
  v5 = *STACK[0xE50];
  v6 = STACK[0xE50];
  v7 = v2[32];
  v8 = STACK[0xE58];
  v9 = *STACK[0xE58] & (v4 - 420456070);
  v10 = *(v5 + v9);
  v11 = 1864610357 * ((1864610357 * ((v10 ^ (v2 + 32)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v10 ^ (v2 + 32)) & 0x7FFFFFFFu)) >> 16));
  v12 = *(&off_1010A0B50 + v1 - 40992) - 1636116471;
  v13 = v12[v11 >> 24];
  v14 = *(&off_1010A0B50 + ((v1 - 36266) ^ 0x819)) - 986785026;
  v15 = v14[v11 >> 24];
  v16 = -67 * ((1864610357 * ((1864610357 * ((v10 ^ (v2 + 32)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v10 ^ (v2 + 32)) & 0x7FFFFFFFu)) >> 16))) >> 24);
  v17 = *(&off_1010A0B50 + ((v1 - 36266) ^ 0x1F1C)) - 68630047;
  v18 = v17[v11 >> 24];
  v19 = v2[16];
  STACK[0xED0] = (v2 + 16);
  v20 = 1864610357 * ((1864610357 * ((v10 ^ (v2 + 16)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v10 ^ (v2 + 16)) & 0x7FFFFFFFu)) >> 16));
  v21 = v13 ^ v7 ^ v15 ^ v18 ^ v12[v20 >> 24] ^ v20 ^ v11 ^ v14[v20 >> 24] ^ v17[v20 >> 24] ^ (-67 * BYTE3(v20)) ^ v16 ^ v19;
  *v3 = (((v21 ^ 0x7D) + 67) ^ ((v21 ^ 0xAB) - 107) ^ ((v21 ^ 0xD6) - 22)) - 45;
  LOBYTE(v20) = v2[33];
  LOBYTE(v11) = v2[17];
  STACK[0xE90] = (v2 + 17);
  v22 = *(v5 + v9);
  v23 = 1864610357 * ((1864610357 * ((v22 ^ (v2 + 33)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v22 ^ (v2 + 33)) & 0x7FFFFFFFu)) >> 16));
  v24 = *(&off_1010A0B50 + v1 - 40888) - 1492649039;
  v25 = -99 * ((1864610357 * ((1864610357 * ((v22 ^ (v2 + 33)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v22 ^ (v2 + 33)) & 0x7FFFFFFFu)) >> 16))) >> 24);
  v26 = *(&off_1010A0B50 + ((v1 - 36266) ^ 0x174B)) - 423570626;
  v27 = *(&off_1010A0B50 + ((v1 - 36266) ^ 0x1F45)) - 1987857726;
  v28 = 1864610357 * ((1864610357 * ((v22 ^ (v2 + 17)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v22 ^ (v2 + 17)) & 0x7FFFFFFFu)) >> 16));
  v29 = v26[v23 >> 24] ^ v24[(v23 >> 24) + 6] ^ v27[v23 >> 24] ^ v12[v28 >> 24] ^ v28 ^ v23 ^ v14[v28 >> 24] ^ v17[v28 >> 24] ^ (-67 * BYTE3(v28)) ^ v25 ^ v20 ^ v11;
  v3[1] = (((v29 ^ 0xD1) + 78) ^ ((v29 ^ 0xA5) + 58) ^ ((v29 ^ 0x74) - 23)) + 118;
  v30 = *v6;
  v31 = *v8 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v12) = *(*v6 + v31);
  v32 = 1864610357 * ((1864610357 * (((v2 + 34) ^ v12) & 0x7FFFFFFF)) ^ ((1864610357 * (((v2 + 34) ^ v12) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v23) = -99 * ((1864610357 * ((1864610357 * (((v2 + 34) ^ v12) & 0x7FFFFFFF)) ^ ((1864610357 * (((v2 + 34) ^ v12) & 0x7FFFFFFF)) >> 16))) >> 24);
  v33 = 1864610357 * ((1864610357 * (((v2 + 18) ^ v12) & 0x7FFFFFFF)) ^ ((1864610357 * (((v2 + 18) ^ v12) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v17) = v26[v32 >> 24] ^ v27[v32 >> 24] ^ v24[(v32 >> 24) + 6] ^ v2[34] ^ v24[(v33 >> 24) + 6] ^ v26[v33 >> 24] ^ v27[v33 >> 24] ^ v2[18] ^ v33 ^ v32 ^ (-99 * BYTE3(v33)) ^ v23;
  v3[2] = (((v17 ^ 0xB6) + 81) ^ ((v17 ^ 0x93) + 118) ^ ((v17 ^ 0x25) - 60)) + 44;
  LOBYTE(v17) = v2[19];
  STACK[0xEB0] = (v2 + 19);
  LODWORD(v30) = *(v30 + v31);
  v34 = 1864610357 * ((1864610357 * ((v30 ^ (v2 + 35)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v30 ^ (v2 + 35)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v28) = -99 * ((1864610357 * ((1864610357 * ((v30 ^ (v2 + 35)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v30 ^ (v2 + 35)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v35 = 1864610357 * ((1864610357 * ((v30 ^ (v2 + 19)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v30 ^ (v2 + 19)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v35) = v26[v34 >> 24] ^ v27[v34 >> 24] ^ v24[(v34 >> 24) + 6] ^ v24[(v35 >> 24) + 6] ^ v26[v35 >> 24] ^ v27[v35 >> 24] ^ v2[35] ^ v35 ^ v34 ^ v17 ^ (-99 * BYTE3(v35)) ^ v28;
  v3[3] = (((v35 ^ 0xB7) - 69) ^ ((v35 ^ 0x58) + 86) ^ ((v35 ^ 0xEF) - 29)) + 5;
  LOBYTE(v35) = v2[20];
  STACK[0xEC0] = (v2 + 20);
  v36 = *v6;
  v37 = *v8 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v28) = *(*v6 + v37);
  v38 = 1864610357 * ((1864610357 * ((v28 ^ (v2 + 36)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v28 ^ (v2 + 36)) & 0x7FFFFFFF)) >> 16));
  v39 = -99 * ((1864610357 * ((1864610357 * ((v28 ^ (v2 + 36)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v28 ^ (v2 + 36)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v40 = 1864610357 * ((1864610357 * ((v28 ^ (v2 + 20)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v28 ^ (v2 + 20)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v38) = v26[v38 >> 24] ^ v27[v38 >> 24] ^ v24[(v38 >> 24) + 6] ^ v24[(v40 >> 24) + 6] ^ v26[v40 >> 24] ^ v27[v40 >> 24] ^ v2[36] ^ v40 ^ v38 ^ v35 ^ (-99 * BYTE3(v40)) ^ v39;
  v3[4] = (((v38 ^ 0xFA) + 69) ^ ((v38 ^ 0xCC) + 115) ^ ((v38 ^ 0x36) - 119)) + 84;
  LOBYTE(v38) = v2[21];
  STACK[0xEA0] = (v2 + 21);
  LODWORD(v36) = *(v36 + v37);
  v41 = 1864610357 * ((1864610357 * ((v36 ^ (v2 + 37)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v36 ^ (v2 + 37)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v23) = -99 * ((1864610357 * ((1864610357 * ((v36 ^ (v2 + 37)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v36 ^ (v2 + 37)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v42 = 1864610357 * ((1864610357 * ((v36 ^ (v2 + 21)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v36 ^ (v2 + 21)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v42) = v26[v41 >> 24] ^ v27[v41 >> 24] ^ v24[(v41 >> 24) + 6] ^ v24[(v42 >> 24) + 6] ^ v26[v42 >> 24] ^ v27[v42 >> 24] ^ v2[37] ^ v42 ^ v41 ^ v38 ^ (-99 * BYTE3(v42)) ^ v23;
  v3[5] = (((v42 ^ 0xCA) - 35) ^ ((v42 ^ 0x92) - 123) ^ ((v42 ^ 0x58) + 79)) - 4;
  LOBYTE(v11) = v2[38];
  v43 = *v6;
  v44 = v8;
  v45 = *v8 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v40) = *(*v6 + v45);
  v46 = 1864610357 * ((1864610357 * ((v40 ^ (v2 + 38)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ (v2 + 38)) & 0x7FFFFFFF)) >> 16));
  v47 = v26[v46 >> 24] ^ v27[v46 >> 24] ^ v24[(v46 >> 24) + 6];
  v48 = v2[22];
  STACK[0xE60] = (v2 + 22);
  v49 = 1864610357 * ((1864610357 * ((v40 ^ (v2 + 22)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ (v2 + 22)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v46) = v47 ^ v24[(v49 >> 24) + 6] ^ v26[v49 >> 24] ^ v27[v49 >> 24] ^ v11 ^ v49 ^ v46 ^ v48 ^ (-99 * BYTE3(v49)) ^ (-99 * BYTE3(v46));
  v3[6] = (((v46 ^ 0x9E) + 55) ^ ((v46 ^ 7) - 80) ^ ((v46 ^ 0x99) + 50)) + 106;
  LODWORD(v43) = *(v43 + v45);
  v50 = 1864610357 * ((1864610357 * ((v43 ^ (v2 + 39)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v2 + 39)) & 0x7FFFFFFF)) >> 16));
  v51 = 1864610357 * ((1864610357 * ((v43 ^ (v2 + 23)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v2 + 23)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v51) = v26[v50 >> 24] ^ v27[v50 >> 24] ^ v24[(v50 >> 24) + 6] ^ v24[(v51 >> 24) + 6] ^ v26[v51 >> 24] ^ v27[v51 >> 24] ^ v2[39] ^ v51 ^ v50 ^ v2[23] ^ (-99 * BYTE3(v51)) ^ (-99 * BYTE3(v50));
  v3[7] = (((v51 ^ 0xDC) - 74) ^ ((v51 ^ 0x26) + 80) ^ ((v51 ^ 0xFA) - 108)) - 87;
  v52 = *v6;
  v53 = *v8 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v11) = *(*v6 + v53);
  v54 = 1864610357 * ((1864610357 * ((v11 ^ (v2 + 40)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v11 ^ (v2 + 40)) & 0x7FFFFFFF)) >> 16));
  v55 = 1864610357 * ((1864610357 * ((v11 ^ (v2 + 24)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v11 ^ (v2 + 24)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v46) = v26[v54 >> 24] ^ v27[v54 >> 24] ^ v24[(v54 >> 24) + 6] ^ v24[(v55 >> 24) + 6] ^ v26[v55 >> 24] ^ v27[v55 >> 24] ^ v2[40] ^ v55 ^ v54 ^ v2[24] ^ (-99 * BYTE3(v55)) ^ (-99 * BYTE3(v54));
  v3[8] = (v46 ^ ((v46 ^ 0x6E) - 60) ^ ((v46 ^ 0x3C) - 110) ^ 0x52) + 101;
  LODWORD(v52) = *(v52 + v53);
  v56 = *(&off_1010A0B50 + v1 - 40472) - 918779311;
  v57 = *(&off_1010A0B50 + ((v1 - 36266) ^ 0x1F71)) - 1426242986;
  v58 = *(&off_1010A0B50 + v1 - 42741) - 311404918;
  LODWORD(v54) = v52 ^ (v2 + 41);
  v59 = 1864610357 * ((1864610357 * ((v52 ^ (v2 + 25)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v52 ^ (v2 + 25)) & 0x7FFFFFFF)) >> 16));
  v60 = 1864610357 * ((1864610357 * (v54 & 0x7FFFFFFF)) ^ ((1864610357 * (v54 & 0x7FFFFFFF)) >> 16));
  LOBYTE(v59) = v57[(v60 >> 24) + 2] ^ v56[(v60 >> 24) + 3] ^ v58[v60 >> 24] ^ v24[(v59 >> 24) + 6] ^ v59 ^ v60 ^ v26[v59 >> 24] ^ v27[v59 >> 24] ^ (-99 * BYTE3(v59)) ^ (117 * BYTE3(v60)) ^ v2[41] ^ v2[25];
  v3[9] = (((v59 ^ 0x15) - 73) ^ ((v59 ^ 0xDD) + 127) ^ ((v59 ^ 0xC8) + 108)) + 111;
  LOBYTE(v26) = v2[42];
  STACK[0x5650] = (v2 + 80);
  v61 = *v6;
  v62 = *v44 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v55) = *(*v6 + v62);
  v63 = 1864610357 * ((1864610357 * ((v55 ^ (v2 + 42)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v55 ^ (v2 + 42)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v23) = v57[(v63 >> 24) + 2] ^ v56[(v63 >> 24) + 3];
  v64 = v2[26];
  STACK[0xE40] = (v2 + 26);
  v65 = 1864610357 * ((1864610357 * ((v55 ^ (v2 + 26)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v55 ^ (v2 + 26)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v63) = v23 ^ v58[v63 >> 24] ^ v56[(v65 >> 24) + 3] ^ v57[(v65 >> 24) + 2] ^ v58[v65 >> 24] ^ v26 ^ v65 ^ v63 ^ v64 ^ (117 * BYTE3(v65)) ^ (117 * BYTE3(v63));
  v3[10] = (((v63 ^ 0x4B) + 55) ^ ((v63 ^ 0x78) + 6) ^ ((v63 ^ 0x33) + 79)) - 107;
  v66 = *v44 & 0xFFFFFFFFE6F073DCLL;
  LOBYTE(v65) = v2[43];
  v67 = *v6;
  v68 = *(*v6 + v66);
  STACK[0x2E38] = (v2 + 144);
  LODWORD(v61) = *(v61 + v62);
  v69 = 1864610357 * ((1864610357 * ((v68 ^ (v2 + 43)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v68 ^ (v2 + 43)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v23) = v57[(v69 >> 24) + 2] ^ v56[(v69 >> 24) + 3];
  LOBYTE(v68) = v2[27];
  STACK[0xE30] = (v2 + 27);
  v70 = 1864610357 * ((1864610357 * ((v61 ^ (v2 + 27)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v61 ^ (v2 + 27)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v70) = v23 ^ v58[v69 >> 24] ^ v56[(v70 >> 24) + 3] ^ v57[(v70 >> 24) + 2] ^ v58[v70 >> 24] ^ v69 ^ v65 ^ v68 ^ (117 * BYTE3(v69)) ^ v70 ^ (117 * BYTE3(v70));
  v3[11] = (((v70 ^ 0x22) + 54) ^ ((v70 ^ 0xB6) - 94) ^ ((v70 ^ 0x94) - 124)) - 5;
  LODWORD(v33) = *(v67 + v66);
  LOBYTE(v66) = v2[44];
  STACK[0x35F8] = (v2 + 128);
  v71 = 1864610357 * ((1864610357 * ((v33 ^ (v2 + 44)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v33 ^ (v2 + 44)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v65) = v57[(v71 >> 24) + 2] ^ v56[(v71 >> 24) + 3];
  LOBYTE(v60) = v2[28];
  STACK[0xE20] = (v2 + 28);
  v72 = 1864610357 * ((1864610357 * ((v33 ^ (v2 + 28)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v33 ^ (v2 + 28)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v71) = v65 ^ v58[v71 >> 24] ^ v56[(v72 >> 24) + 3] ^ v57[(v72 >> 24) + 2] ^ v58[v72 >> 24] ^ v66 ^ v72 ^ v71 ^ v60 ^ (117 * BYTE3(v72)) ^ (117 * BYTE3(v71));
  v3[12] = (((v71 ^ 0x2E) + 119) ^ ((v71 ^ 0x3A) + 99) ^ ((v71 ^ 0x14) + 77)) - 70;
  v73 = v44;
  v74 = *v44 & 0xFFFFFFFFE6F073DCLL;
  LOBYTE(v66) = v2[45];
  v75 = *v6;
  LODWORD(v65) = *(*v6 + v74);
  v76 = 1864610357 * ((1864610357 * ((v65 ^ (v2 + 45)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v65 ^ (v2 + 45)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v68) = v57[(v76 >> 24) + 2] ^ v56[(v76 >> 24) + 3];
  LOBYTE(v27) = v2[29];
  STACK[0xE10] = (v2 + 29);
  v77 = 1864610357 * ((1864610357 * ((v65 ^ (v2 + 29)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v65 ^ (v2 + 29)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v66) = v68 ^ v58[v76 >> 24] ^ v56[(v77 >> 24) + 3] ^ v57[(v77 >> 24) + 2] ^ v58[v77 >> 24] ^ v66 ^ v77 ^ v76 ^ v27 ^ (117 * BYTE3(v77)) ^ (117 * BYTE3(v76));
  v3[13] = (((v66 ^ 0x95) + 76) ^ ((v66 ^ 0x9B) + 70) ^ ((v66 ^ 0xE) - 47)) + 52;
  v78 = *v44 & 0xFFFFFFFFE6F073DCLL;
  v79 = *v6;
  v80 = v6;
  LODWORD(v74) = *(v75 + v74);
  LODWORD(v75) = 1864610357 * ((*(*v6 + v78) ^ (v2 + 46)) & 0x7FFFFFFF);
  v81 = 1864610357 * (v75 ^ WORD1(v75));
  v82 = 1864610357 * ((1864610357 * ((v74 ^ (v2 + 30)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v74 ^ (v2 + 30)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v82) = v57[(v81 >> 24) + 2] ^ v56[(v81 >> 24) + 3] ^ v58[v81 >> 24] ^ v56[(v82 >> 24) + 3] ^ v57[(v82 >> 24) + 2] ^ v58[v82 >> 24] ^ v81 ^ v2[46] ^ v2[30] ^ (117 * BYTE3(v81)) ^ v82 ^ (117 * BYTE3(v82));
  v3[14] = (((v82 ^ 0x9B) + 22) ^ ((v82 ^ 0xF3) + 126) ^ ((v82 ^ 0x68) - 25)) - 124;
  LODWORD(v82) = *(v79 + v78);
  LOBYTE(v77) = v2[47];
  v83 = 1864610357 * ((1864610357 * ((v82 ^ (v2 + 47)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v82 ^ (v2 + 47)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v68) = v57[(v83 >> 24) + 2] ^ v56[(v83 >> 24) + 3];
  LOBYTE(v27) = v2[31];
  STACK[0xE00] = (v2 + 31);
  v84 = 1864610357 * ((1864610357 * ((v82 ^ (v2 + 31)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v82 ^ (v2 + 31)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v84) = v68 ^ v58[v83 >> 24] ^ v56[(v84 >> 24) + 3] ^ v57[(v84 >> 24) + 2] ^ v58[v84 >> 24] ^ v77 ^ v84 ^ v83 ^ v27 ^ (117 * BYTE3(v84)) ^ (117 * BYTE3(v83));
  v3[15] = ((v84 ^ 0x67) + 118) ^ ((v84 ^ 0x57) - 58) ^ ((v84 ^ 0x30) - 93);
  v85 = *v44 & 0xFFFFFFFFE6F073DCLL;
  v86 = *v6;
  LODWORD(v83) = *(*v6 + v85);
  v87 = 1864610357 * ((1864610357 * ((v83 ^ v2) & 0x7FFFFFFF)) ^ ((1864610357 * ((v83 ^ v2) & 0x7FFFFFFF)) >> 16));
  LODWORD(v83) = 1864610357 * ((v83 ^ STACK[0xED0]) & 0x7FFFFFFF);
  v88 = 1864610357 * (v83 ^ WORD1(v83));
  v3[16] = v56[(v87 >> 24) + 3] ^ v57[(v87 >> 24) + 2] ^ v58[v87 >> 24] ^ v56[(v88 >> 24) + 3] ^ v57[(v88 >> 24) + 2] ^ v58[v88 >> 24] ^ *v2 ^ v88 ^ v87 ^ *STACK[0xED0] ^ (117 * BYTE3(v88)) ^ (117 * BYTE3(v87)) ^ 5;
  LODWORD(v85) = *(v86 + v85);
  v89 = *(&off_1010A0B50 + v1 - 41024) - 854305047;
  v90 = *(&off_1010A0B50 + ((v1 - 36266) ^ 0x1D5C)) - 276571743;
  v91 = *(&off_1010A0B50 + v1 - 40754) - 605734811;
  LODWORD(v87) = v85 ^ (v2 + 1);
  LODWORD(v85) = 1864610357 * ((v85 ^ STACK[0xE90]) & 0x7FFFFFFF);
  v92 = 1864610357 * (v85 ^ WORD1(v85));
  v93 = 1864610357 * ((1864610357 * (v87 & 0x7FFFFFFF)) ^ ((1864610357 * (v87 & 0x7FFFFFFF)) >> 16));
  v3[17] = v89[v93 >> 24] ^ v90[v93 >> 24] ^ v91[v93 >> 24] ^ v56[(v92 >> 24) + 3] ^ v92 ^ v93 ^ v57[(v92 >> 24) + 2] ^ v58[v92 >> 24] ^ (117 * BYTE3(v92)) ^ (111 * BYTE3(v93)) ^ v2[1] ^ *STACK[0xE90] ^ 5;
  v94 = *v44 & 0xFFFFFFFFE6F073DCLL;
  v95 = *v80;
  v96 = *(*v80 + v94);
  v97 = 1864610357 * ((1864610357 * ((v96 ^ (v2 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v96 ^ (v2 + 2)) & 0x7FFFFFFFu)) >> 16));
  v98 = 1864610357 * ((1864610357 * ((v96 ^ (v2 + 18)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v96 ^ (v2 + 18)) & 0x7FFFFFFFu)) >> 16));
  v3[18] = v89[v97 >> 24] ^ v90[v97 >> 24] ^ v91[v97 >> 24] ^ v89[v98 >> 24] ^ v90[v98 >> 24] ^ v91[v98 >> 24] ^ v2[2] ^ v98 ^ v97 ^ v2[18] ^ (111 * BYTE3(v98)) ^ (111 * BYTE3(v97)) ^ 5;
  LODWORD(v94) = *(v95 + v94);
  LOBYTE(v95) = v2[3];
  STACK[0x1818] = (v2 + 176);
  v99 = 1864610357 * ((1864610357 * ((v94 ^ (v2 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v94 ^ (v2 + 3)) & 0x7FFFFFFF)) >> 16));
  v100 = v89[v99 >> 24];
  LOBYTE(v44) = v90[v99 >> 24];
  STACK[0x1BB8] = (v2 + 208);
  LODWORD(v94) = 1864610357 * ((v94 ^ STACK[0xEB0]) & 0x7FFFFFFF);
  v101 = 1864610357 * (v94 ^ WORD1(v94));
  v3[19] = v100 ^ v44 ^ v91[v99 >> 24] ^ v89[v101 >> 24] ^ v90[v101 >> 24] ^ v91[v101 >> 24] ^ v95 ^ v101 ^ v99 ^ *STACK[0xEB0] ^ (111 * BYTE3(v101)) ^ (111 * BYTE3(v99)) ^ 5;
  v102 = *v73 & 0xFFFFFFFFE6F073DCLL;
  LOBYTE(v68) = v2[4];
  v103 = *v80;
  LODWORD(v98) = *(*v80 + v102);
  v104 = 1864610357 * ((1864610357 * ((v98 ^ (v2 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v98 ^ (v2 + 4)) & 0x7FFFFFFF)) >> 16));
  v105 = v89[v104 >> 24];
  STACK[0x2A70] = (v2 + 96);
  LODWORD(v98) = 1864610357 * ((v98 ^ STACK[0xEC0]) & 0x7FFFFFFF);
  v106 = 1864610357 * (v98 ^ WORD1(v98));
  v3[20] = v105 ^ v90[v104 >> 24] ^ v91[v104 >> 24] ^ v89[v106 >> 24] ^ v90[v106 >> 24] ^ v91[v106 >> 24] ^ v68 ^ v106 ^ v104 ^ *STACK[0xEC0] ^ (111 * BYTE3(v106)) ^ (111 * BYTE3(v104)) ^ 5;
  LODWORD(v102) = *(v103 + v102);
  v107 = 1864610357 * ((1864610357 * ((v102 ^ (v2 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v102 ^ (v2 + 5)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v102) = 1864610357 * ((v102 ^ STACK[0xEA0]) & 0x7FFFFFFF);
  v108 = 1864610357 * (v102 ^ WORD1(v102));
  v3[21] = v89[v107 >> 24] ^ v90[v107 >> 24] ^ v91[v107 >> 24] ^ v89[v108 >> 24] ^ v90[v108 >> 24] ^ v91[v108 >> 24] ^ v2[5] ^ v108 ^ v107 ^ *STACK[0xEA0] ^ (111 * BYTE3(v108)) ^ (111 * BYTE3(v107)) ^ 5;
  v109 = *v73 & 0xFFFFFFFFE6F073DCLL;
  v110 = *v80;
  LODWORD(v106) = *(*v80 + v109);
  v111 = 1864610357 * ((1864610357 * ((v106 ^ (v2 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ (v2 + 6)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v106) = 1864610357 * ((v106 ^ STACK[0xE60]) & 0x7FFFFFFF);
  v112 = 1864610357 * (v106 ^ WORD1(v106));
  v3[22] = v89[v111 >> 24] ^ v90[v111 >> 24] ^ v91[v111 >> 24] ^ v89[v112 >> 24] ^ v90[v112 >> 24] ^ v91[v112 >> 24] ^ v2[6] ^ v112 ^ v111 ^ *STACK[0xE60] ^ (111 * BYTE3(v112)) ^ (111 * BYTE3(v111)) ^ 5;
  LODWORD(v109) = *(v110 + v109);
  LOBYTE(v110) = v2[7];
  STACK[0x4D68] = (v2 + 160);
  v113 = 1864610357 * ((1864610357 * ((v109 ^ (v2 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v109 ^ (v2 + 7)) & 0x7FFFFFFF)) >> 16));
  v114 = v89[v113 >> 24];
  LOBYTE(v44) = v90[v113 >> 24];
  STACK[0x3BF0] = (v2 + 192);
  v115 = 1864610357 * ((1864610357 * ((v109 ^ (v2 + 23)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v109 ^ (v2 + 23)) & 0x7FFFFFFF)) >> 16));
  v3[23] = v114 ^ v44 ^ v91[v113 >> 24] ^ v89[v115 >> 24] ^ v90[v115 >> 24] ^ v91[v115 >> 24] ^ v110 ^ v115 ^ v113 ^ v2[23] ^ (111 * BYTE3(v115)) ^ (111 * BYTE3(v113)) ^ 5;
  LOBYTE(v68) = v2[8];
  v116 = *v80;
  v117 = *v73 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v112) = *(*v80 + v117);
  v118 = 1864610357 * ((1864610357 * ((v112 ^ (v2 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v112 ^ (v2 + 8)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v44) = v89[v118 >> 24];
  STACK[0x74C0] = (v2 + 64);
  v119 = 1864610357 * ((1864610357 * ((v112 ^ (v2 + 24)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v112 ^ (v2 + 24)) & 0x7FFFFFFF)) >> 16));
  v3[24] = v44 ^ v90[v118 >> 24] ^ v91[v118 >> 24] ^ v89[v119 >> 24] ^ v90[v119 >> 24] ^ v91[v119 >> 24] ^ v68 ^ v119 ^ v118 ^ v2[24] ^ (111 * BYTE3(v119)) ^ (111 * BYTE3(v118)) ^ 5;
  LODWORD(v116) = *(v116 + v117);
  v120 = *(&off_1010A0B50 + v1 - 39716) - 1940769563;
  v121 = *(&off_1010A0B50 + v1 - 40788) - 446148811;
  v122 = *(&off_1010A0B50 + v1 - 41725) - 2048468414;
  LODWORD(v51) = v116 ^ (v2 + 9);
  v123 = 1864610357 * ((1864610357 * ((v116 ^ (v2 + 25)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v116 ^ (v2 + 25)) & 0x7FFFFFFF)) >> 16));
  v124 = 1864610357 * ((1864610357 * (v51 & 0x7FFFFFFF)) ^ ((1864610357 * (v51 & 0x7FFFFFFF)) >> 16));
  v3[25] = v120[(v124 >> 24) + 2] ^ v121[(v124 >> 24) + 3] ^ v122[v124 >> 24] ^ v89[v123 >> 24] ^ v123 ^ v124 ^ v90[v123 >> 24] ^ v91[v123 >> 24] ^ (111 * BYTE3(v123)) ^ (-109 * BYTE3(v124)) ^ v2[9] ^ v2[25] ^ 5;
  v125 = *v80;
  v126 = *v73 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v90) = *(*v80 + v126);
  v127 = 1864610357 * ((1864610357 * ((v90 ^ (v2 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v90 ^ (v2 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v90) = 1864610357 * ((v90 ^ STACK[0xE40]) & 0x7FFFFFFF);
  v128 = 1864610357 * (v90 ^ (v90 >> 16));
  v3[26] = v120[(v127 >> 24) + 2] ^ v121[(v127 >> 24) + 3] ^ v122[v127 >> 24] ^ v120[(v128 >> 24) + 2] ^ v121[(v128 >> 24) + 3] ^ v122[v128 >> 24] ^ v2[10] ^ v128 ^ v127 ^ *STACK[0xE40] ^ (-109 * BYTE3(v128)) ^ (-109 * BYTE3(v127)) ^ 5;
  LODWORD(v125) = *(v125 + v126);
  v129 = 1864610357 * ((1864610357 * ((v125 ^ (v2 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v125 ^ (v2 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v125) = 1864610357 * ((v125 ^ STACK[0xE30]) & 0x7FFFFFFF);
  v130 = 1864610357 * (v125 ^ WORD1(v125));
  v3[27] = v120[(v129 >> 24) + 2] ^ v121[(v129 >> 24) + 3] ^ v122[v129 >> 24] ^ v120[(v130 >> 24) + 2] ^ v121[(v130 >> 24) + 3] ^ v122[v130 >> 24] ^ v2[11] ^ v130 ^ v129 ^ *STACK[0xE30] ^ (-109 * BYTE3(v130)) ^ (-109 * BYTE3(v129)) ^ 5;
  LOBYTE(v123) = v2[12];
  v131 = *v80;
  v132 = v73;
  v133 = *v73 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v91) = *(*v80 + v133);
  STACK[0x2538] = (v2 + 112);
  v134 = 1864610357 * ((1864610357 * ((v91 ^ (v2 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v91 ^ (v2 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v91) = 1864610357 * ((v91 ^ STACK[0xE20]) & 0x7FFFFFFF);
  v135 = 1864610357 * (v91 ^ (v91 >> 16));
  v3[28] = v120[(v134 >> 24) + 2] ^ v121[(v134 >> 24) + 3] ^ v122[v134 >> 24] ^ v120[(v135 >> 24) + 2] ^ v121[(v135 >> 24) + 3] ^ v122[v135 >> 24] ^ v123 ^ v135 ^ v134 ^ *STACK[0xE20] ^ (-109 * BYTE3(v135)) ^ (-109 * BYTE3(v134)) ^ 5;
  LODWORD(v131) = *(v131 + v133);
  v136 = 1864610357 * ((1864610357 * ((v131 ^ (v2 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v131 ^ (v2 + 13)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v135) = -109 * ((1864610357 * ((1864610357 * ((v131 ^ (v2 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v131 ^ (v2 + 13)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v131) = 1864610357 * ((v131 ^ STACK[0xE10]) & 0x7FFFFFFF);
  v137 = 1864610357 * (v131 ^ WORD1(v131));
  v3[29] = v120[(v136 >> 24) + 2] ^ v121[(v136 >> 24) + 3] ^ v122[v136 >> 24] ^ v120[(v137 >> 24) + 2] ^ v121[(v137 >> 24) + 3] ^ v122[v137 >> 24] ^ v2[13] ^ v137 ^ v136 ^ *STACK[0xE10] ^ (-109 * BYTE3(v137)) ^ v135 ^ 5;
  LOBYTE(v137) = v2[14];
  STACK[0x49E0] = (v2 + 48);
  v138 = *v80;
  v139 = *v132 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v133) = *(*v80 + v139);
  v140 = 1864610357 * ((1864610357 * ((v133 ^ (v2 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v133 ^ (v2 + 14)) & 0x7FFFFFFF)) >> 16));
  v141 = 1864610357 * ((1864610357 * ((v133 ^ (v2 + 30)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v133 ^ (v2 + 30)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v135) = v120[(v140 >> 24) + 2] ^ v121[(v140 >> 24) + 3] ^ v122[v140 >> 24] ^ v120[(v141 >> 24) + 2];
  LOBYTE(v118) = v121[(v141 >> 24) + 3] ^ v122[v141 >> 24];
  STACK[0x4670] = v2;
  v3[30] = v135 ^ v118 ^ v137 ^ v141 ^ v140 ^ v2[30] ^ (-109 * BYTE3(v141)) ^ (-109 * BYTE3(v140)) ^ 5;
  v142 = v2[15];
  STACK[0x55F0] = STACK[0xED0];
  LODWORD(v138) = *(v138 + v139);
  v143 = 1864610357 * ((1864610357 * ((v138 ^ (v2 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v138 ^ (v2 + 15)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v137) = v120[(v143 >> 24) + 2];
  LOBYTE(v140) = v121[(v143 >> 24) + 3];
  LOBYTE(v139) = v122[v143 >> 24];
  v144 = STACK[0xE00];
  LODWORD(v138) = 1864610357 * ((v138 ^ STACK[0xE00]) & 0x7FFFFFFF);
  v145 = 1864610357 * (v138 ^ WORD1(v138));
  STACK[0xE60] = v120;
  LOBYTE(v118) = v120[(v145 >> 24) + 2];
  STACK[0xE40] = v121;
  STACK[0xE30] = v122;
  LOBYTE(v145) = v137 ^ v140 ^ v139 ^ v118 ^ v121[(v145 >> 24) + 3] ^ v122[v145 >> 24] ^ v142 ^ v145 ^ v143 ^ *v144 ^ (-109 * BYTE3(v145)) ^ (-109 * BYTE3(v143)) ^ 5;
  STACK[0xE80] = v3;
  v3[31] = v145;
  v146 = STACK[0x49E0];
  v147 = STACK[0x55F0];
  v148 = STACK[0x2A70];
  v149 = *v132;
  STACK[0xE10] = *v80;
  STACK[0xE00] = v149 & 0xFFFFFFFFE6F073DCLL;
  v150 = *(STACK[0xF18] + 8 * (v1 - 36266));
  STACK[0xEC0] = 15;
  v151 = STACK[0xE70];
  LODWORD(STACK[0xD70]) = LODWORD(STACK[0xE70]) ^ 0x41B2;
  LODWORD(STACK[0xDF0]) = (v151 ^ 0x41B2) - 17329106;
  STACK[0xDE0] = v149 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(STACK[0xDD0]) = v151 - 5789;
  LODWORD(STACK[0xDC0]) = v151 - 6525;
  LODWORD(STACK[0xDB0]) = v151 ^ 0x1B7B;
  STACK[0xE20] = v147;
  STACK[0xED0] = v148;
  STACK[0xEB0] = v146;
  return v150();
}

uint64_t sub_10049AE3C()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xFF46ED3D) - ((&STACK[0x10000] + 3800) & 0xFF46ED38)) ^ 0xCE472019));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4182)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v3 = 1;
  }

  else
  {
    v3 = *STACK[0x940] == 0;
  }

  v4 = !v3;
  return (*(v1 + 8 * ((158 * v4) ^ (v0 - 962))))(v2);
}

uint64_t sub_10049AF28@<X0>(unint64_t a1@<X3>, unint64_t a2@<X8>)
{
  LODWORD(STACK[0xB9F4]) = v5;
  STACK[0xB9F8] = a1;
  STACK[0xBA00] = v8;
  LODWORD(STACK[0xBA0C]) = v6;
  STACK[0xBA10] = v7;
  STACK[0x7220] = a2;
  LODWORD(STACK[0xBA18]) = v3 ^ 0x2FED9246;
  LODWORD(STACK[0xBA1C]) = v4 ^ (6752 * (v2 ^ 0x4AC5) + 804071622);
  v12 = v5 == -371865839 || a1 == 0 || v3 == 804098630 || v4 == (v2 ^ 0x4AC5) + 804098626;
  return (*(STACK[0xF18] + 8 * ((57 * v12) ^ v2)))(STACK[0xE58], STACK[0xE50], 371891400);
}

uint64_t sub_10049B014()
{
  v2 = STACK[0x7FB8];
  *(*v2 + 8) = v1;
  return (*(STACK[0xF18] + 8 * ((((v0 ^ 0xD6 ^ (*(*v2 + 8) == 0)) & 1) * ((28 * (v0 ^ 0x9BDEADD2)) ^ 0x3C8D)) ^ v0 ^ 0x9BDE0B4D)))();
}

uint64_t sub_10049B084@<X0>(int a1@<W8>)
{
  v1 = *STACK[0x8038] + ((327 * (a1 ^ 0x3EA8)) ^ 0xFFFF74C4);
  *STACK[0x8038] = v1;
  return (*(STACK[0xF18] + 8 * ((46865 * (v1 == (a1 ^ 0x3EA8) - 109)) ^ a1)))();
}

uint64_t sub_10049B0E0()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 29188;
  v3 = STACK[0x6008];
  *v3 = v0 == STACK[0xF10] - 371901482;
  v4 = STACK[0x4318];
  v5 = STACK[0x4770];
  LODWORD(STACK[0x10EDC]) = v1 + 1022166737 * ((~(&STACK[0x10000] + 3800) & 0xC495BD75 | (&STACK[0x10000] + 3800) & 0x3B6A4288) ^ 0x7E855CE7) + 5117;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v5;
  STACK[0x10EF0] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0x47E1)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((84 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ v2)))(v7);
}

uint64_t sub_10049B1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  v5 = STACK[0xF10] - 34181;
  LODWORD(STACK[0x9B00]) = STACK[0x98D4];
  v6 = (71 * ((v3 + 1593774632) ^ 0xA9u) - 1491375143) % (LODWORD(STACK[0x9B04]) ^ 0xFBF75236);
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x1D80)))(a1, a2, a3, v4, (v6 ^ 0x6FB79BD6) - 796461451 + ((2 * v6) & 0xDF6F37AC));
}

uint64_t sub_10049B2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x3C08] = v4;
  LODWORD(STACK[0x6B38]) = v5;
  return (*(STACK[0xF18] + 8 * (v3 - 18746)))(a1, a2, a3, v3);
}

uint64_t sub_10049B2D8()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 60;
  v2 = STACK[0xF10] - 26210;
  STACK[0x9DE0] = &STACK[0xC442];
  if (STACK[0xACB8])
  {
    v3 = LODWORD(STACK[0xACC0]) == -371865839;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((((v1 ^ v4) & 1) * (v0 ^ 0x8AE6)) ^ v2)))();
}

uint64_t sub_10049B384()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 2073458329) & 0x8469FFFF) - 25290) ^ v0)))();
}

uint64_t sub_10049B498()
{
  STACK[0x5C50] = 0x3AE1413A0D5C96EALL;
  LODWORD(STACK[0x1374]) = -439780205;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10049B4DC()
{
  v1 = v0 - 38092;
  v2 = STACK[0x7C14];
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393265;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10049B644@<X0>(int a1@<W8>)
{
  STACK[0x6EF8] = STACK[0x3508];
  STACK[0x65D0] = 0;
  LODWORD(STACK[0x5F8C]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((a1 ^ 0x2342) + a1)))();
}

uint64_t sub_10049B6C8()
{
  STACK[0x54D8] = v0;
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7210] = v3;
  STACK[0x7690] = v2 + 576;
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((((&STACK[0x10000] + 3800) ^ 0x38E3F9EE) - 2 * (((&STACK[0x10000] + 3800) ^ 0x38E3F9EE) & 0x18D4AC04) - 1730892796) ^ 0x168C678C) + 31924;
  STACK[0x10ED8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 38586)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10EE0]) != -371865839) * (v1 - 4606 + (v1 ^ 0xB8C5) - 42358)) ^ v1)))(v5);
}

uint64_t sub_10049B7A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4 - 27137;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (a4 + 16238)))();
  return (*(v5 + 8 * v4))(v6);
}

uint64_t sub_10049B874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x517 ^ ((v3 + 4001) | 0x2424))))(a1, a2, a3, 0x1D54AEB378980553);
}

uint64_t sub_10049B8C0(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x16_t a7)
{
  v10 = (v9 + (a4 & v8));
  v11 = vaddq_s8(vsubq_s8(*a2, vandq_s8(vaddq_s8(*a2, *a2), a6)), a7);
  *v10 = vaddq_s8(vsubq_s8(a2[-1], vandq_s8(vaddq_s8(a2[-1], a2[-1]), a6)), a7);
  v10[1] = v11;
  return (*(STACK[0xF18] + 8 * (((a3 == 0) * a5) ^ v7)))(a1, a2 + 2, a3 - 32);
}

uint64_t sub_10049B91C()
{
  v2 = (((LODWORD(STACK[0xED0]) ^ 0x585D6BFF) - 1482517503) ^ ((LODWORD(STACK[0xED0]) ^ 0x8FEDCD9) - 150920409) ^ ((LODWORD(STACK[0xED0]) ^ 0xB9767037) + 1183420361)) + 1242526343;
  v3 = (((v1 ^ 0x5D8BDBAE) + ((v0 + 42175) ^ 0xA274BCC1 ^ (v0 - 336347546) & 0x140C7DCB)) ^ ((v1 ^ 0x7A257FB5) - 2049277877) ^ ((v1 ^ 0xCE7B630A) + 830774518)) + 1242526343;
  v4 = (v3 < 0x6039AB76) ^ (v2 < 0x6039AB76);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x6039AB76;
  }

  return (*(STACK[0xF18] + 8 * ((53 * !v5) ^ v0)))();
}

uint64_t sub_10049BA4C()
{
  v2 = (((*(v0 + 8) ^ 0x69382E9C) - 1765289628) ^ ((*(v0 + 8) ^ 0xCA312F91) + 902746223) ^ ((*(v0 + 8) ^ 0x4ADCC61C) - 1255982620)) + (((v1 - 4850) | 0x4082) ^ 0x5A4EEF4);
  v3 = (v2 ^ 0xE5255BDE) & (2 * (v2 & 0xE4311BDF)) ^ v2 & 0xE4311BDF;
  v4 = (2 * (v2 ^ 0x25255DDC)) & 0xC1144602 ^ 0x41144201 ^ ((2 * (v2 ^ 0x25255DDC)) ^ 0x82288C06) & (v2 ^ 0x25255DDC);
  v5 = (4 * v3) & v4 ^ v3 ^ ((4 * v3) & 0x81044600 | 0x100000);
  v6 = (4 * v4) & 0xC1144600 ^ 0xC1044603 ^ ((4 * v4) ^ 0x451180C) & v4;
  v7 = (16 * v5) & 0xC1144600 ^ v5 ^ ((16 * v5) ^ 0x1000000) & v6;
  v8 = (16 * v6) & 0xC1144600 ^ 0xC0100603 ^ ((16 * v6) ^ 0x11446030) & v6;
  v9 = v7 ^ (v7 << 8) & 0xC1144600 ^ ((v7 << 8) ^ 0x10000000) & v8 ^ 0xC0044603;
  *(v0 + 8) = v2 ^ (2 * ((v9 << 16) & 0x41140000 ^ v9 ^ ((v9 << 16) ^ 0x46030000) & ((v8 << 8) & 0x41140000 ^ 0x41100000 ^ ((v8 << 8) ^ 0x14460000) & v8))) ^ 0xFCC50C8;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10049BC34()
{
  v0 = (STACK[0xF10] - 2851) | 0x206;
  v1 = STACK[0xF10] - 32614;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 25370) ^ v1)))();
}

uint64_t sub_10049BC84()
{
  v3 = 297845113 * ((2 * ((&STACK[0x10000] + 3800) & 0x4F50AC68) - (&STACK[0x10000] + 3800) + 816796562) ^ 0x479C4F0C);
  LODWORD(STACK[0x10F04]) = (v2 ^ ((v2 ^ 0x21B31D3C) - 2029486454) ^ ((v2 ^ 0x77FFFF75) - 784032575) ^ (((3 * (v1 ^ 0x2165)) ^ 0x72FDABF1) + (v2 ^ 0xD446437C)) ^ 0xB396186 ^ ((v2 ^ 0xDB4E2A77 ^ (134 * (v1 ^ 0xF20))) + 2113232587)) + v3;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0x387C02B81FFF65DDLL;
  LODWORD(STACK[0x10F00]) = v1 - v3 + 1563156722;
  STACK[0x10ED8] = v0;
  STACK[0x10EE0] = &STACK[0x124C];
  STACK[0x10EF8] = 0;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC5D6)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((6334 * (LODWORD(STACK[0x10EF0]) == -371865839)) ^ v1)))(v5);
}

uint64_t sub_10049BEDC()
{
  v0 = STACK[0xF10] ^ 0x83F0;
  v1 = STACK[0xF18];
  STACK[0x5050] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((4213 * (v0 - 488278856 >= ((v0 + 45250) ^ 0xCFE9E645))) ^ (v0 + 15699))))();
}

uint64_t sub_10049BFE0()
{
  v3 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x25F0C29) - ((&STACK[0x10000] + 3800) | 0xFDA0F3D6) - 39783466) ^ 0x6FC923D5);
  LODWORD(STACK[0x10ED8]) = (((536 * (v2 ^ 0x1CD7) + (*(v1 - 0x217E172EFA1E804) ^ 0x43240EC5) - 1126442445) ^ ((*(v1 - 0x217E172EFA1E804) ^ 0xB5243540) + 1255918272) ^ (((v2 + 14855) ^ 0x1FD5AA77 ^ *(v1 - 0x217E172EFA1E804)) - 534117524)) - 54746966) ^ v3;
  STACK[0x10F00] = v1 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10EF8]) = v2 - v3 + 32389;
  STACK[0x10EE8] = &STACK[0x8A50];
  STACK[0x10EE0] = &STACK[0x7FF0];
  STACK[0x10EF0] = v0;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xD618)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((28330 * (LODWORD(STACK[0x10F08]) == -371865839)) ^ v2)))(v5);
}

uint64_t sub_10049C1E4@<X0>(char a1@<W8>)
{
  v5 = v1 < v2;
  *(v4 + (a1 - 48)) = *(STACK[0xE80] + (a1 - 48) + 4);
  v6 = ((a1 + 1) | (((a1 + 1) < 0x30u) << 8)) + 1360881621;
  if (v5 == v6 < 0x511D6805)
  {
    v5 = v1 > v6 + ((97 * (v3 ^ 0x4411)) ^ 0x37BCA531);
  }

  return (*(STACK[0xF18] + 8 * ((!v5 | (2 * !v5)) ^ v3)))();
}

uint64_t sub_10049C288()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF4DA)))();
  STACK[0x3088] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10049C31C()
{
  v0 = (STACK[0xF10] + 11469) | 0x83;
  v1 = STACK[0xF10] - 34089;
  LODWORD(STACK[0xA560]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xA3AFBC4C;
  return (*(STACK[0xF18] + 8 * ((v0 - 39527) ^ v1)))();
}

uint64_t sub_10049C3A0()
{
  v0 = 149 * (STACK[0xF10] ^ 0x8BF2);
  v1 = STACK[0xF10] - 18960;
  v2 = STACK[0x9E20];
  STACK[0x9E28] = STACK[0x9E20];
  if (v2)
  {
    v3 = STACK[0xACB8] == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || LODWORD(STACK[0xACC0]) == -371865839;
  return (*(STACK[0xF18] + 8 * ((v5 * (v0 ^ 0x74E1)) ^ v1)))();
}

uint64_t sub_10049C43C()
{
  STACK[0x5EC0] = v2;
  STACK[0x2F58] = v1;
  STACK[0x1AE0] = v3;
  return (*(STACK[0xF18] + 8 * (((327 * (((v0 - 13237) | 0x4208) ^ 0x5233) - 26438) * (v3 == 0x981390C2FED9246)) ^ v0)))();
}

uint64_t sub_10049C5B8()
{
  STACK[0xA330] = STACK[0x19C0] + 56;
  LODWORD(STACK[0x10ED8]) = (v0 + 12692) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x38F6DC28) - 1191781335) ^ 0x89F7110D));
  STACK[0x10EE8] = &STACK[0xC411];
  LOWORD(STACK[0x10EE0]) = 23473 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xDC28) - 9175) ^ 0x110D) + 18068;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCB20)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 ^ 0x967E ^ (v0 + 35242))))(v2);
}

uint64_t sub_10049C6E4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v20 = ((*(*v16 + (*a8 & v12)) ^ v10) & 0x7FFFFFFF) * v13;
  v21 = (v20 ^ HIWORD(v20)) * v13;
  *(v17 + v11) = *(v8 + v11) ^ *(a7 + (v21 >> 24)) ^ *(v19 + (v21 >> 24)) ^ *(v18 + (v21 >> 24)) ^ v21 ^ (BYTE3(v21) * v14) ^ v15;
  return (*(STACK[0xF18] + 8 * (((v11 == 0) * a1) ^ v9)))();
}

uint64_t sub_10049C78C()
{
  v1 = STACK[0xF18];
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x90A0 ^ (v0 - 798052137) & 0x2F91FEFB)))();
}

uint64_t sub_10049C7FC()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] - 842611518) & 0x3238FC3B;
  v3 = STACK[0xF10] - 28173;
  LODWORD(STACK[0x6E4C]) = v0;
  return (*(STACK[0xF18] + 8 * (((v0 == v2 - 371885352) * (v1 - 651)) ^ v3)))();
}

uint64_t sub_10049C89C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x36F0] = v2;
  STACK[0x73E8] = a1;
  LODWORD(STACK[0x56B8]) = 744170668;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10049CA50()
{
  v0 = STACK[0xF10] - 22487;
  v1 = *STACK[0xE50];
  v2 = *STACK[0xE58] >> 2;
  v3 = *(v1 + 4 * ((0x23EC93E0 % v2) & 0x3FFFFFFC));
  LOWORD(v2) = ~*(v1 + 4 * ((v2 + 0xFFFF) & (((STACK[0xF10] - 33579) | 0x303) ^ 0xF4EC) & v3));
  LODWORD(v1) = ~v3;
  v4 = STACK[0x8B0];
  v5 = *(STACK[0x8B0] - 527405895);
  v6 = *(STACK[0x8B8] + 4 * v5);
  v8 = v2 & WORD1(v1);
  v7 = v8 == 0;
  v9 = v8 + v8 * v6;
  v10 = v7;
  if (v7)
  {
    v11 = *(STACK[0x8B8] + 4 * v5);
  }

  else
  {
    v11 = 0;
  }

  *(STACK[0x8B8] + 4 * v5) = (v11 + v9) * v6;
  *(v4 - 527405895) = (v5 + 1) % 6u;
  return (*(STACK[0xF18] + 8 * ((3060 * v10) ^ v0)))();
}

uint64_t sub_10049CC84()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 2602;
  v2 = (STACK[0xB0E8] + (LODWORD(STACK[0xB0F8]) - 1311720315));
  v2[7] = LOBYTE(STACK[0x10E07]) ^ 0x5F;
  v2[6] = LOBYTE(STACK[0x10E06]) ^ 0x5F;
  v2[5] = LOBYTE(STACK[0x10E05]) ^ 0x5F;
  v2[4] = LOBYTE(STACK[0x10E04]) ^ 0x5F;
  v2[3] = LOBYTE(STACK[0x10E03]) ^ (v0 + 36);
  v2[2] = LOBYTE(STACK[0x10E02]) ^ 0x5F;
  v2[1] = LOBYTE(STACK[0x10E01]) ^ 0x5F;
  *v2 = LOBYTE(STACK[0x10E00]) ^ 0x5F;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10049CEDC()
{
  v6 = STACK[0xF18];
  STACK[0x8E68] = *(STACK[0xF18] + 8 * v4);
  STACK[0x75A8] = v3 + 36;
  LODWORD(STACK[0x1B3C]) = v1;
  STACK[0x9578] = v0 + 128;
  v7 = STACK[0x7690];
  STACK[0x79D0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v7 + 256;
  LODWORD(STACK[0x6EAC]) = -371865839;
  STACK[0x46C8] = 0;
  return (*(v6 + 8 * (((((v2 + 900621408) & 0xCA51BB7F) - 35433) * (v5 == 0)) ^ v2)))();
}

uint64_t sub_10049D024()
{
  *(v1 + 8) = 0;
  *v1 = 0;
  *(v1 + 4) = STACK[0x4470];
  *STACK[0x9550] = STACK[0x8DF0];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10049D0D8()
{
  *(STACK[0x6A78] + 112) = v1;
  if (v1)
  {
    v2 = STACK[0x136C];
  }

  else
  {
    v2 = 371891397;
  }

  return (*(STACK[0xF18] + 8 * (((v2 == ((v0 + 14527) ^ 0xE9D5B6E9)) * (((v0 + 18137) | 0xB29) - 34458)) ^ v0)))();
}

uint64_t sub_10049D1A0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 28481)))(v2);
}

uint64_t sub_10049D204@<X0>(unint64_t a1@<X8>)
{
  STACK[0x5658] = a1;
  LODWORD(STACK[0x2564]) = 1205416330;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_10049D240()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8C0C)))((v0 + v2), STACK[0x17E8]);
  return (*(v3 + 8 * ((3998 * (((v4 ^ (v1 - 202401764)) + ((v1 - 371884234) ^ 0x65C5E718) + ((2 * v4) & 0xE7DFBFEE)) >= 0)) ^ v1)))();
}

uint64_t sub_10049D30C()
{
  v1 = STACK[0xF18];
  STACK[0x9820] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((6559 * (v0 ^ 0xD3E) - 8563) ^ v0)))();
}

uint64_t sub_10049D3DC()
{
  STACK[0x9560] = v1;
  STACK[0x3038] = (1703 * (v0 ^ 0x8B36u)) ^ STACK[0x3E38] ^ 0x20DE4F5147E7670ALL;
  STACK[0x6830] = *(STACK[0x9408] + 8);
  return (*(STACK[0xF18] + 8 * ((v0 + 1870499637) ^ 0x6F7E3462 ^ (29243 * ((v0 + 1870499637) > 0xA8AB4482)))))();
}

uint64_t sub_10049D514()
{
  v1 = *(STACK[0x6EF8] + 312);
  v2 = STACK[0x65D0];
  v3 = ((LODWORD(STACK[0x5F8C]) ^ 0x90E514B6) + 1864035146) ^ ((LODWORD(STACK[0x5F8C]) ^ 0xA1A49AE3) + 1583047965) ^ (((v0 + 1932689361) & 0x8CCD7E6F ^ LODWORD(STACK[0x5F8C]) ^ 0xD894176B) + 661370556);
  v4 = 353670337 * ((((&STACK[0x10000] + 3800) | 0x69425A31) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x96BDA5C8)) ^ 0xDD63A20C);
  LODWORD(STACK[0x10EE0]) = v0 - v4 + 23519;
  LODWORD(STACK[0x10ED8]) = v3 - v4 + 1051652780;
  STACK[0x10EE8] = v2;
  STACK[0x10EF0] = v1;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 27345)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((58167 * (LODWORD(STACK[0x10EDC]) == -371865839)) ^ v0)))(v6);
}

uint64_t sub_10049D71C()
{
  v3 = (((v0 ^ 0xCAA2CACFD8CB971) - 0xCAA2CACFD8CB971) ^ ((v0 ^ 0xCE9D92E4720EDE95) + 0x31626D1B8DF1216BLL) ^ (((((v2 + 8212) | 0xB38u) - 0x3DC841B799A8EA46) ^ v0) + 0x3DC841B799A85F0BLL)) + 0x75A15238BEB421D5;
  v4 = ((v1 ^ 0xD5ABA0AA6D4B46EDLL ^ v3) + 0x5FF50D62466A68E2) ^ v3 ^ ((v3 ^ 0x885DFD90A5C8F89ALL) + 0x20350588EE95DAELL) ^ ((v3 ^ 0x6E8FDB6C3C290FBLL) - 0x7349AF81171CCA33) ^ ((v3 ^ 0x2EBFF2BBDF9FFF7FLL) - 0x5B1EA08C0B41A5B7);
  STACK[0xAD70] = v4 ^ 0x3E4D240A6EF5F521;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0x9577)))(v4 ^ 0xD4DE5AC8);
  STACK[0x8318] = v6;
  return (*(v5 + 8 * ((16368 * (v6 == 0)) ^ v2)))(0);
}

uint64_t sub_10049D8F8()
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
  STACK[0xC100] = 0;
  STACK[0xC108] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC100] | v10);
  *(&STACK[0xC100] | v10) = 0;
  LOBYTE(STACK[0xC107]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC100] | v12);
  *(&STACK[0xC100] | v12) = STACK[0xC106];
  LOBYTE(STACK[0xC106]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC100] | v14);
  *(&STACK[0xC100] | v14) = STACK[0xC105];
  LOBYTE(STACK[0xC105]) = v15;
  v16 = STACK[0xC100];
  LOBYTE(STACK[0xC100]) = STACK[0xC104];
  LOBYTE(STACK[0xC104]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC100] | v17);
  *(&STACK[0xC100] | v17) = STACK[0xC103];
  LOBYTE(STACK[0xC103]) = v18;
  v19 = STACK[0xC101];
  LOBYTE(STACK[0xC102]) = STACK[0xC100];
  LOWORD(STACK[0xC100]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC100] = vmla_s32(v22, STACK[0xC100], vdup_n_s32(0x1000193u));
  STACK[0xC108] ^= STACK[0xC100];
  STACK[0xC108] = vmul_s32(vsub_s32(STACK[0xC108], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC10A];
  LOWORD(STACK[0xC109]) = STACK[0xC108];
  LOBYTE(STACK[0xC108]) = v23;
  v24 = (&STACK[0xC108] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC10B];
  LOBYTE(STACK[0xC10B]) = v19;
  LOBYTE(v24) = STACK[0xC108];
  LOBYTE(STACK[0xC108]) = STACK[0xC10C];
  LOBYTE(STACK[0xC10C]) = v24;
  v25 = (&STACK[0xC108] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC10D];
  LOBYTE(STACK[0xC10D]) = v24;
  v26 = (&STACK[0xC108] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC10E];
  LOBYTE(STACK[0xC10E]) = v25;
  v27 = (&STACK[0xC108] | v10);
  v28 = *v27;
  *v27 = STACK[0xC10F];
  LOBYTE(STACK[0xC10F]) = v28;
  v29 = STACK[0xC108];
  v30 = (553300517 * STACK[0xC108]) ^ v9;
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
  *v43 = STACK[0xC108];
  return (*(STACK[0xF18] + 8 * (v1 - 13259)))(v48, v49);
}

uint64_t sub_10049DEE8()
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
  STACK[0xBFB0] = 0;
  STACK[0xBFB8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xBFB0] | v10);
  *(&STACK[0xBFB0] | v10) = 0;
  LOBYTE(STACK[0xBFB7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xBFB0] | v12);
  *(&STACK[0xBFB0] | v12) = STACK[0xBFB6];
  LOBYTE(STACK[0xBFB6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xBFB0] | v14);
  *(&STACK[0xBFB0] | v14) = STACK[0xBFB5];
  LOBYTE(STACK[0xBFB5]) = v15;
  v16 = STACK[0xBFB0];
  LOBYTE(STACK[0xBFB0]) = STACK[0xBFB4];
  LOBYTE(STACK[0xBFB4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xBFB0] | v17);
  *(&STACK[0xBFB0] | v17) = STACK[0xBFB3];
  LOBYTE(STACK[0xBFB3]) = v18;
  v19 = STACK[0xBFB1];
  LOBYTE(STACK[0xBFB2]) = STACK[0xBFB0];
  LOWORD(STACK[0xBFB0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xBFB0] = vmla_s32(v22, STACK[0xBFB0], vdup_n_s32(0x1000193u));
  STACK[0xBFB8] ^= STACK[0xBFB0];
  STACK[0xBFB8] = vmul_s32(vsub_s32(STACK[0xBFB8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xBFBA];
  LOWORD(STACK[0xBFB9]) = STACK[0xBFB8];
  LOBYTE(STACK[0xBFB8]) = v23;
  v24 = (&STACK[0xBFB8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xBFBB];
  LOBYTE(STACK[0xBFBB]) = v19;
  LOBYTE(v24) = STACK[0xBFB8];
  LOBYTE(STACK[0xBFB8]) = STACK[0xBFBC];
  LOBYTE(STACK[0xBFBC]) = v24;
  v25 = (&STACK[0xBFB8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xBFBD];
  LOBYTE(STACK[0xBFBD]) = v24;
  v26 = (&STACK[0xBFB8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xBFBE];
  LOBYTE(STACK[0xBFBE]) = v25;
  v27 = (&STACK[0xBFB8] | v10);
  v28 = *v27;
  *v27 = STACK[0xBFBF];
  LOBYTE(STACK[0xBFBF]) = v28;
  v29 = STACK[0xBFB8];
  v30 = (553300517 * STACK[0xBFB8]) ^ v9;
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
  *v43 = STACK[0xBFB8];
  return (*(STACK[0xF18] + 8 * v1))(v48, v49);
}

uint64_t sub_10049E388@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W8>)
{
  v11 = v5 < a3;
  *(v10 + (v3 + v9)) = *(v7 + v4);
  if (v11 == v4 + 1 > v6)
  {
    v11 = v4 + a1 < v5;
  }

  return (*(STACK[0xF18] + 8 * ((v11 * a2) ^ v8)))();
}

uint64_t sub_10049E3DC()
{
  v1 = STACK[0x4D54];
  v2 = (v0 + 36510) ^ LODWORD(STACK[0x3EA8]) ^ 0xC638F0F1;
  STACK[0x8FE8] = *(STACK[0x6140] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x704C]) = -2116087574;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v2;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10049E4C4()
{
  v1 = (v0 - 1032109789) & 0x3D84BEF6;
  v2 = STACK[0x2B08];
  v3 = *(*(STACK[0x2B08] - 0x10A99C80114D147FLL) - 0x217E172EFA1E81CLL);
  v4 = STACK[0x3AC8];
  v5 = LODWORD(STACK[0x2484]) * ((v1 - 1393) ^ 0x268A090) - 1378563772;
  v6 = 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF);
  LODWORD(STACK[0x10F04]) = v6 - 1453593522 + ((((8 * LODWORD(STACK[0x9000])) ^ 0x3A39E8D2) - 339337447) ^ (((8 * LODWORD(STACK[0x9000])) ^ 0xF122BFD9) + 551372820) ^ (((8 * LODWORD(STACK[0x9000])) ^ 0xCB1B570B) + 451190978));
  LODWORD(STACK[0x10EF4]) = v6 ^ 0x7CD6B3C9;
  STACK[0x10EE0] = 0;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  LODWORD(STACK[0x10EF0]) = v6 ^ 0xD6FBF85B;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((&STACK[0x10000] + 3800) ^ 0x1BCF);
  LODWORD(STACK[0x10ED8]) = v5 ^ v6;
  STACK[0x10EF8] = v4;
  LODWORD(STACK[0x10F08]) = v1 - v6 + 1777275077;
  STACK[0x10F10] = v3;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 + 35856)))(&STACK[0x10ED8]);
  *(v2 - 0x10A99C80114D130FLL) &= ~0x80u;
  return (*(v7 + 8 * v1))(v8);
}

uint64_t sub_10049E6C0()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296783349;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 46517)))(&STACK[0x10ED8]);
  STACK[0x7690] += (v0 + 45873) ^ 0xFFFFFFFFFFFF3786;
  v3 = STACK[0x4B48];
  v4 = STACK[0x2328];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = v4;
  LODWORD(STACK[0x884C]) = -1796056895;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10049E770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  LODWORD(STACK[0x9FF4]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3);
}

uint64_t sub_10049E9EC()
{
  STACK[0x5658] = v1 - 0x43D8CBFA0CEB42D4;
  LODWORD(STACK[0x2564]) = 1192671056;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xB53)))();
}

uint64_t sub_10049EA88@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 1990395606;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10049EABC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))(v0);
  return (*(v2 + 8 * (v1 - 3742)))(v3);
}

uint64_t sub_10049EAEC@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x7BF8]) = a1;
  v4 = a1 < LODWORD(STACK[0x59AC]) && v2 == (((v1 - 30909) | 2) ^ 0xE9D5C732);
  return (*(STACK[0xF18] + 8 * ((492 * v4) ^ v1)))();
}

uint64_t sub_10049EB48(uint64_t a1, unsigned int a2)
{
  v5 = 4 * (v2 & 0x1Fu);
  v6 = STACK[0xD60];
  STACK[0xDA0] = STACK[0xD60] + v5;
  v7 = (4 * v3);
  STACK[0xD90] = v6 + v5 + v7;
  STACK[0xD80] = STACK[0xD50] + v7 + (STACK[0xE20] << ((a2 - 37) ^ 0x3A));
  v9 = v4 > 0x1F || (~v2 & 0x1Fu) < (v4 & 0x1F);
  LODWORD(STACK[0xDE0]) = v9;
  STACK[0xED0] = v3 & 0x1C;
  return (*(STACK[0xF18] + 8 * a2))(STACK[0xE70]);
}

uint64_t sub_10049EC24()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31142;
  v2 = STACK[0x3080];
  v3 = STACK[0x5770];
  *(v3 + 96) = STACK[0x3080];
  STACK[0x3DF0] = v3 + 96;
  *(v2 + 476) = 1;
  v4 = STACK[0xF18];
  STACK[0x4AD0] = *(STACK[0xF18] + 8 * v1);
  return (*(v4 + 8 * ((v0 ^ 0xED16) + v1)))();
}

uint64_t sub_10049ECB4@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x4BA6E21C)) ^ 0x4BA6E21ELL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xBD50] = 0;
  STACK[0xBD58] = v1;
  v12 = 16777619 * ((1269228062 * v11 + 7) ^ (1269228062 * v11)) % 7;
  v13 = 16777619 * ((1269228062 * v11 + 6) ^ (1269228062 * v11)) % 6;
  v14 = 16777619 * ((1269228062 * v11 + 5) ^ (1269228062 * v11)) % 5;
  v15 = *(&STACK[0xBD50] | v12);
  *(&STACK[0xBD50] | v12) = STACK[0xBD57];
  v16 = *(&STACK[0xBD50] | v13);
  *(&STACK[0xBD50] | v13) = STACK[0xBD56];
  v17 = *(&STACK[0xBD50] | v14);
  *(&STACK[0xBD50] | v14) = STACK[0xBD55];
  v18 = 16777619 * ((1269228062 * v11 + 3) ^ (1269228062 * v11)) % 3;
  v19 = vdup_n_s32(1269228062 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = (1269228062 * v11) | 1;
  LOBYTE(STACK[0xBD57]) = v15;
  v21 = STACK[0xF10] + 13231;
  v22 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBD56]) = v16;
  LOBYTE(STACK[0xBD55]) = v17;
  v23 = STACK[0xBD50];
  LOBYTE(STACK[0xBD50]) = STACK[0xBD54];
  LOBYTE(STACK[0xBD54]) = v23;
  v24 = *(&STACK[0xBD50] | v18);
  *(&STACK[0xBD50] | v18) = STACK[0xBD53];
  LOBYTE(STACK[0xBD53]) = v24;
  v25 = STACK[0xBD51];
  LOBYTE(STACK[0xBD52]) = STACK[0xBD50];
  LOWORD(STACK[0xBD50]) = v25;
  STACK[0xBD50] = vmla_s32(v22, STACK[0xBD50], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBD58];
  v27 = (1269228062 * STACK[0xBD58]) ^ v11;
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
    v36 = *(v26 + v2);
    v56.val[1] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7690), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC76A0), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v56.val[2] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7680), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v56.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7670), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v2) = vmulq_s8(vqtbl4q_s8(v56, xmmword_100BC7660), v34);
    v2 += 16;
    v32 = vaddq_s32(v32, v35);
    v31 = vaddq_s32(v31, v35);
    v30 = vaddq_s32(v30, v35);
    v29 = vaddq_s32(v29, v35);
  }

  while (v2 != 2176);
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
  v48 = *(&STACK[0xBD58] + v12);
  *(&STACK[0xBD58] + v12) = STACK[0xBD5F];
  LOBYTE(STACK[0xBD5F]) = v48;
  v49 = *(&STACK[0xBD58] + v13);
  *(&STACK[0xBD58] + v13) = STACK[0xBD5E];
  LOBYTE(STACK[0xBD5E]) = v49;
  v50 = *(&STACK[0xBD58] + v14);
  *(&STACK[0xBD58] + v14) = STACK[0xBD5D];
  LOBYTE(STACK[0xBD5D]) = v50;
  v51 = STACK[0xBD58];
  LOBYTE(STACK[0xBD58]) = STACK[0xBD5C];
  v52 = *(&STACK[0xBD58] + v18);
  *(&STACK[0xBD58] + v18) = STACK[0xBD5B];
  LOBYTE(STACK[0xBD5C]) = v51;
  LOBYTE(STACK[0xBD5B]) = v52;
  v53 = STACK[0xBD59];
  LOBYTE(STACK[0xBD5A]) = STACK[0xBD58];
  LOWORD(STACK[0xBD58]) = v53;
  STACK[0xBD58] = vmla_s32(v22, STACK[0xBD58], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBD58] ^ STACK[0xBD50];
  return (*(STACK[0xF18] + 8 * v21))();
}

uint64_t sub_10049F148@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3908]) += (a1 + 1341086314) & 0xB0109FFF ^ 0x8B3F;
  LODWORD(STACK[0x6A3C]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((497 * (LODWORD(STACK[0x2A6C]) != 0)) ^ a1)))();
}

uint64_t sub_10049F1AC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x108C]) = a1;
  LODWORD(STACK[0x4D24]) = v1;
  v4 = (((*(v2 + 104) ^ 0xA5C1D67E) + 1514023298) ^ ((*(v2 + 104) ^ 0x220DECB9) - 571337913) ^ ((*(v2 + 104) ^ 0x6E19FDD6) + ((v3 - 33555) ^ 0x91E60A02))) + 700900038;
  v5 = v4 < 0x3FF11BB5;
  v6 = v1 + 1050651670 < v4;
  if ((v1 + 1050651670) < 0x3FF11BB5 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * (((8 * v6) | (16 * v6)) ^ (v3 - 18993))))();
}

uint64_t sub_10049F2EC()
{
  v2 = STACK[0xEA0];
  *(v0 + STACK[0xEC0] + 1) ^= *(v1 + v0 + 46) ^ (v0 - ((2 * v0 + 66) & 0xCF) - 120) ^ 0xBF;
  v3 = *(v1 + 66);
  v5 = ((v3 + ((v2 - 11942) ^ 0x5980)) >> 2) < 0xBF3u || (v3 + ((v2 - 11942) ^ 0x5980)) > (v0 + 1) + 12236;
  return (*(STACK[0xF18] + 8 * ((28 * v5) ^ v2)))();
}

uint64_t sub_10049F3EC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(STACK[0x1E60]);
  return (*(v1 + 8 * ((22974 * ((v0 + 1391238147) < 0x231A54AC)) ^ (v0 - 21500))))(v2);
}

uint64_t sub_10049F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5 ^ 0xEB3F;
  v7 = v5 - 32402;
  ++*a5;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296753103;
  STACK[0x10ED8] = 0;
  v8 = v5 ^ 0x41F1;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * v8))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v9 + 8 * v7);
  return (*(v9 + 8 * ((v6 - 17726) ^ v7)))(v10);
}

uint64_t sub_10049F4E0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 - 33506);
  STACK[0x7690] = a1 + v3 - 2345;
  return (*(STACK[0xF18] + 8 * ((46551 * (v2 == -371865839)) ^ v3)))();
}

uint64_t sub_10049F634()
{
  *(v0 + 272) = v3;
  *(v0 + 312) = *STACK[0x7F00];
  return (*(STACK[0xF18] + 8 * ((222 * ((*(v1 + 24) & (((v2 ^ 0x2FEDAA1B) - 804072124) ^ 0x2800678A)) == 0)) ^ v2)))();
}

uint64_t sub_10049F75C()
{
  v2 = v1 ^ (v0 + 26083) ^ 0x794E87ED87169F87 ^ (3 * (v0 ^ 0x271Cu));
  STACK[0x26F8] = v2;
  return (*(STACK[0xF18] + 8 * ((42743 * (*(v2 - 0x794E87ED87161270) == 1)) ^ v0)))();
}

uint64_t sub_10049F808@<X0>(int a1@<W8>)
{
  v1 = STACK[0x22E4];
  LODWORD(STACK[0x36E4]) = STACK[0x22E4];
  LODWORD(STACK[0x5A40]) = STACK[0x76C4];
  STACK[0x3C68] = 0x6CCFF14D037583A3 * STACK[0x2160] + 0xB01D8E7F563964;
  LODWORD(STACK[0x8458]) = STACK[0x2440];
  STACK[0x1EF0] = STACK[0x8E80];
  return (*(STACK[0xF18] + 8 * ((51637 * ((((v1 ^ 0x112C4B33) - 288115507) ^ ((v1 ^ 0xDF09C19E) + 553008738) ^ (((((a1 - 529) | 0x211) + 670024321) ^ v1) - 670059964)) - 371865841 < 0xFFFFFFFE)) ^ (a1 - 35478))))();
}

uint64_t sub_10049F958@<X0>(int a1@<W8>)
{
  v2 = STACK[0x2D80];
  STACK[0x4F90] = v1;
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393315;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10049F9E0()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  LODWORD(v9) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  STACK[0xC250] = 0;
  STACK[0xC258] = v1 - 0x10A99C80114D1487;
  v10 = 16777619 * ((-901292213 * v9 + 7) ^ (-901292213 * v9)) % 7;
  v11 = *(&STACK[0xC250] | v10);
  *(&STACK[0xC250] | v10) = 0;
  LOBYTE(STACK[0xC257]) = v11;
  v12 = 16777619 * ((-901292213 * v9 + 6) ^ (-901292213 * v9)) % 6;
  v13 = *(&STACK[0xC250] | v12);
  *(&STACK[0xC250] | v12) = STACK[0xC256];
  LOBYTE(STACK[0xC256]) = v13;
  v14 = 16777619 * ((-901292213 * v9 + 5) ^ (-901292213 * v9)) % 5;
  v15 = *(&STACK[0xC250] | v14);
  *(&STACK[0xC250] | v14) = STACK[0xC255];
  LOBYTE(STACK[0xC255]) = v15;
  v16 = STACK[0xC250];
  LOBYTE(STACK[0xC250]) = STACK[0xC254];
  LOBYTE(STACK[0xC254]) = v16;
  v17 = 16777619 * ((-901292213 * v9 + 3) ^ (-901292213 * v9)) % 3;
  v18 = *(&STACK[0xC250] | v17);
  *(&STACK[0xC250] | v17) = STACK[0xC253];
  LOBYTE(STACK[0xC253]) = v18;
  v19 = STACK[0xC251];
  LOBYTE(STACK[0xC252]) = STACK[0xC250];
  LOWORD(STACK[0xC250]) = v19;
  v20 = vdup_n_s32(-901292213 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -901292213 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC250] = vmla_s32(v22, STACK[0xC250], vdup_n_s32(0x1000193u));
  STACK[0xC258] ^= STACK[0xC250];
  STACK[0xC258] = vmul_s32(vsub_s32(STACK[0xC258], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC25A];
  LOWORD(STACK[0xC259]) = STACK[0xC258];
  LOBYTE(STACK[0xC258]) = v23;
  v24 = (&STACK[0xC258] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC25B];
  LOBYTE(STACK[0xC25B]) = v19;
  LOBYTE(v24) = STACK[0xC258];
  LOBYTE(STACK[0xC258]) = STACK[0xC25C];
  LOBYTE(STACK[0xC25C]) = v24;
  v25 = (&STACK[0xC258] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC25D];
  LOBYTE(STACK[0xC25D]) = v24;
  v26 = (&STACK[0xC258] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC25E];
  LOBYTE(STACK[0xC25E]) = v25;
  v27 = (&STACK[0xC258] | v10);
  v28 = *v27;
  *v27 = STACK[0xC25F];
  LOBYTE(STACK[0xC25F]) = v28;
  v29 = STACK[0xC258];
  v30 = (-901292213 * STACK[0xC258]) ^ v9;
  for (i = 1; i != 48; ++i)
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
  v41 = vdupq_n_s32(v30);
  v42.i64[0] = 0x1000000010;
  v42.i64[1] = 0x1000000010;
  do
  {
    v43 = *(v29 + v35);
    v44 = vmovl_high_u8(v43);
    v45 = vmovl_u8(*v43.i8);
    v47.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v41), vsubq_s32(v38, v41)), v41), vmull_high_u16(v45, v40));
    v47.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v41), vsubq_s32(v37, v41)), v41), vmull_u16(*v44.i8, 0x9B009B009B009BLL));
    v47.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v41), vsubq_s32(v39, v41)), v41), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v47.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v41), vsubq_s32(v36, v41)), v41), vmull_high_u16(v44, v40));
    *(v29 + v35) = vqtbl4q_s8(v47, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v42);
    v38 = vaddq_s32(v38, v42);
    v37 = vaddq_s32(v37, v42);
    v36 = vaddq_s32(v36, v42);
  }

  while (v35 != 384);
  return (*(STACK[0xF18] + 8 * v0))(v36, v37, v38, v39);
}

uint64_t sub_10049FED0()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = -1746164505;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_10049FEFC()
{
  v1 = STACK[0x6510] + 56;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (((66 * (v0 ^ 0x655)) ^ 0xD29D) + v0)))(v1);
}

uint64_t sub_1004A0130()
{
  v0 = (STACK[0xF10] + 1427789949) & 0xAAE55E77;
  v1 = STACK[0xF10] + 15505;
  STACK[0x9CA0] = &STACK[0x7F9C];
  return (*(STACK[0xF18] + 8 * (((STACK[0x9340] != 0) * (v0 ^ 0x420D)) ^ v1)))();
}

uint64_t sub_1004A019C()
{
  LOWORD(STACK[0x10EE0]) = 23473 * ((~(&STACK[0x10000] + 3800) & 0xB49B | (&STACK[0x10000] + 3800) & 0x4B60) ^ 0x79BF) + 18064;
  LODWORD(STACK[0x10ED8]) = (v0 + 12319) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0xFA97B49B | (&STACK[0x10000] + 3800) & 0x5684B60) ^ 0xCB9679BF));
  STACK[0x10EE8] = &STACK[0x44FC];
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 51115)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 ^ 0x9E46 ^ (v0 + 34869))))(v2);
}

uint64_t sub_1004A02F4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = STACK[0x3724];
  LODWORD(STACK[0x7F14]) = STACK[0x3724];
  return (*(STACK[0xF18] + 8 * (((v4 == (((a3 ^ v3) + 370304936) & 0xE9EDFBDB ^ 0xE9D55692)) * ((a3 ^ v3 ^ 0xA6C4) + 9473)) ^ a3 ^ v3)))();
}

uint64_t sub_1004A0358()
{
  v2 = v0;
  *(STACK[0x850] - 914251479) = 10;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 29659)))(80);
  *(v2 - 250462103) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (((44 * ((v1 - 7053) ^ 0x3B34)) ^ 0xFFFF7EE9) + 16657 * ((v1 - 7053) ^ 0x3B32))) ^ (v1 - 7053))))();
}

uint64_t sub_1004A03F0()
{
  STACK[0x9E00] = ((2 * v0) & 0xE7FFDBFELL) + (v0 ^ 0x3BB5FFEE73FFEDFFLL) + (v1 ^ 0xE5F011E9) - 0x20A1040708327EEDLL;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x17BB)))();
}

uint64_t sub_1004A0590()
{
  v1 = STACK[0x1E60] + 32 * ((v0 + 30181) + STACK[0x85C0]) + 0x6C2A3185FA751E10;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x7558];
  STACK[0x5D28] = v1;
  LODWORD(STACK[0x4704]) = 1275811086;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004A0628()
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
  STACK[0xC1F0] = 0;
  STACK[0xC1F8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC1F0] | v10);
  *(&STACK[0xC1F0] | v10) = 0;
  LOBYTE(STACK[0xC1F7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC1F0] | v12);
  *(&STACK[0xC1F0] | v12) = STACK[0xC1F6];
  LOBYTE(STACK[0xC1F6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC1F0] | v14);
  *(&STACK[0xC1F0] | v14) = STACK[0xC1F5];
  LOBYTE(STACK[0xC1F5]) = v15;
  v16 = STACK[0xC1F0];
  LOBYTE(STACK[0xC1F0]) = STACK[0xC1F4];
  LOBYTE(STACK[0xC1F4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC1F0] | v17);
  *(&STACK[0xC1F0] | v17) = STACK[0xC1F3];
  LOBYTE(STACK[0xC1F3]) = v18;
  v19 = STACK[0xC1F1];
  LOBYTE(STACK[0xC1F2]) = STACK[0xC1F0];
  LOWORD(STACK[0xC1F0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC1F0] = vmla_s32(v22, STACK[0xC1F0], vdup_n_s32(0x1000193u));
  STACK[0xC1F8] ^= STACK[0xC1F0];
  STACK[0xC1F8] = vmul_s32(vsub_s32(STACK[0xC1F8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC1FA];
  LOWORD(STACK[0xC1F9]) = STACK[0xC1F8];
  LOBYTE(STACK[0xC1F8]) = v23;
  v24 = (&STACK[0xC1F8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC1FB];
  LOBYTE(STACK[0xC1FB]) = v19;
  LOBYTE(v24) = STACK[0xC1F8];
  LOBYTE(STACK[0xC1F8]) = STACK[0xC1FC];
  LOBYTE(STACK[0xC1FC]) = v24;
  v25 = (&STACK[0xC1F8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC1FD];
  LOBYTE(STACK[0xC1FD]) = v24;
  v26 = (&STACK[0xC1F8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC1FE];
  LOBYTE(STACK[0xC1FE]) = v25;
  v27 = (&STACK[0xC1F8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC1FF];
  LOBYTE(STACK[0xC1FF]) = v28;
  v29 = STACK[0xC1F8];
  v30 = (553300517 * STACK[0xC1F8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC1F8];
  return (*(STACK[0xF18] + 8 * (v1 - 14534)))(v47, v48);
}

uint64_t sub_1004A0AC0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 33485;
  STACK[0x2B50] = STACK[0xA1D0] + (LODWORD(STACK[0x3444]) ^ 0xE9D5C711);
  return (*(STACK[0xF18] + 8 * ((v0 ^ 0xB1FB) + v1)))();
}

uint64_t sub_1004A0BE8()
{
  v1 = STACK[0xF10] - 32174;
  STACK[0x93D8] = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x21B5 ^ (29883 * ((v1 ^ 0xCD005768) > 0xF3578030)))))();
}

uint64_t sub_1004A0CD4@<X0>(int a1@<W8>)
{
  v1 = (a1 - 39623) | 0x1805;
  v2 = STACK[0x1180];
  v3 = 297845113 * ((2 * (((&STACK[0x10000] + 3800) ^ 0xCDCEBA63) & 0x5C54C57B) - ((&STACK[0x10000] + 3800) ^ 0xCDCEBA63) - 1549059456) ^ 0x19569C7D);
  STACK[0x10EF8] = &STACK[0x8450];
  LODWORD(STACK[0x10F00]) = v1 - v3 + 1563153383;
  LODWORD(STACK[0x10F04]) = v3 + 1383988684;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0x387C02B81FFFCF6DLL ^ ((v1 + 1545) | 0x8890u);
  STACK[0x10ED8] = v2;
  STACK[0x10EE0] = &STACK[0x8DCC];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD6CD)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EF0];
  LODWORD(STACK[0x1F8C]) = STACK[0x10EF0];
  return (*(v4 + 8 * ((42978 * (v6 == -371865839)) ^ v1)))(v5);
}

uint64_t sub_1004A0EA0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB31C]) = a1;
  v2 = ((v1 - 1558329495) & 0x5CE2BFF7) + LODWORD(STACK[0xB318]) + 1134871089;
  v3 = a1 + 751281455 < v2;
  if ((a1 + 751281455) < 0x30B4CD9E != v2 < 0x30B4CD9E)
  {
    v3 = v2 < 0x30B4CD9E;
  }

  return (*(STACK[0xF18] + 8 * ((23 * !v3) ^ v1)))();
}

uint64_t sub_1004A0F2C()
{
  v3 = (((v2 ^ 0x34E03874) - 752749129) ^ ((v2 ^ 0x7ED473EB) - 1726628310) ^ ((v2 ^ 0xBBDFBEB3) + 1545499506)) + 252958288;
  v4 = (((((v0 ^ 0xA8B8) + 5962) ^ LODWORD(STACK[0x7FF8]) ^ 0x8A13088B) + 1978458170) ^ ((LODWORD(STACK[0x7FF8]) ^ 0x7DFFF6E0) - 2113926880) ^ (((11881 * (v0 ^ 0xA8B8)) ^ LODWORD(STACK[0x7FF8]) ^ 0x1E39A50C) - 507063863)) - (LODWORD(STACK[0x17DC]) + v1) + 816064365;
  v5 = (v3 < 0x253E0F3F) ^ (v4 < 0x253E0F3F);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0x253E0F3F;
  }

  return (*(STACK[0xF18] + 8 * ((112 * v6) ^ v0)))();
}

uint64_t sub_1004A10C8()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 8697)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004A1154()
{
  if (STACK[0x37E8])
  {
    v1 = LODWORD(STACK[0x642C]) == (v0 ^ 0x23AD) - 371901482;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((73 * v2) ^ v0)))();
}

uint64_t sub_1004A1224@<X0>(uint64_t a1@<X8>)
{
  STACK[0x3EE0] = 0;
  LODWORD(STACK[0x403C]) = v3;
  STACK[0x1F68] = 0;
  return (*(STACK[0xF18] + 8 * ((((((((v1 + 8256) | 0x4510) - 25895) | 0x640) + 34002) ^ 0x8B0B) * (a1 != v2)) ^ ((v1 + 8256) | 0x4510))))();
}

uint64_t sub_1004A12C0@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0xAA0B;
  v3 = v2 + 310149954 + (((v1 ^ 0xE64F8D68) + 430994072) ^ ((v1 ^ 0x7BCCE033) - 2077024307) ^ ((((v2 - 13872) | 0x1108) ^ 0x8BA9C8BF) + (v1 ^ 0x7456AA4A)));
  v4 = (v3 ^ 0x875E55C9) & (2 * (v3 & 0xD75881C9)) ^ v3 & 0xD75881C9;
  v5 = ((2 * (v3 ^ 0x5DE56C9)) ^ 0xA50DAE00) & (v3 ^ 0x5DE56C9) ^ (2 * (v3 ^ 0x5DE56C9)) & 0xD286D700;
  v6 = v5 ^ 0x52825100;
  v7 = (v5 ^ 0x80040600) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x4A1B5C00) & v6 ^ (4 * v6) & 0xD286D700;
  v9 = v7 ^ 0xD286D700 ^ (v8 ^ 0x42025400) & (16 * v7);
  v10 = (16 * (v8 ^ 0x90848300)) & 0xD286D700 ^ 0xD2828700 ^ ((16 * (v8 ^ 0x90848300)) ^ 0x286D7000) & (v8 ^ 0x90848300);
  v11 = (v9 << 8) & 0xD286D700 ^ v9 ^ ((v9 << 8) ^ 0x86D70000) & v10;
  v12 = v3 ^ (2 * ((v11 << 16) & 0x52860000 ^ v11 ^ ((v11 << 16) ^ 0x57000000) & ((v10 << 8) & 0x52860000 ^ 0x50000000 ^ ((v10 << 8) ^ 0x6D70000) & v10)));
  LODWORD(STACK[0x4290]) = v12 ^ 0x3A8CE8D8;
  v13 = STACK[0xF18];
  v14 = (*(STACK[0xF18] + 8 * (v2 + 2151)))(v12 ^ 0xD3592FC9);
  STACK[0xAF70] = v14;
  return (*(v13 + 8 * ((119 * (v14 != 0)) ^ v2)))();
}

uint64_t sub_1004A16B4()
{
  v1 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFB724B0B8));
  STACK[0x2838] = (v1 & 0x4D5B896D87E4D54FLL ^ (6 * (v0 ^ 0x1A03u) + 0xC48884C83E3E5C6) ^ v1 & 0x7FFFFFFFFFFFFFFFLL ^ 0x8E6C9EDCFBEE12E5) - (v1 & 0x4D5B896D87E4D54FLL ^ (6 * (v0 ^ 0x1A03u) + 0xC48884C83E3E5C6)) + ((4 * ((v1 & 0x4D5B896D87E4D54FLL ^ (6 * (v0 ^ 0x1A03u) + 0xC48884C83E3E5C6) ^ v1 & 0x7FFFFFFFFFFFFFFFuLL) >> 1)) ^ 0xE326C2460823DA34);
  LODWORD(STACK[0x23FC]) = 256;
  STACK[0x60B8] = &STACK[0x2838];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = -350958733;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004A1788()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 33683;
  v2 = *STACK[0x4070];
  LODWORD(STACK[0x10ED8]) = STACK[0xF10] - 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x64F16BF8) - 453940232) ^ 0x524A599E) + 60349492;
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16334)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1004A18A8()
{
  v0 = STACK[0xF10] - 19107;
  *(STACK[0x37E0] + 296) = *(STACK[0x3250] + 56);
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004A19A8(unint64_t a1, int a2)
{
  STACK[0xED0] = *(v3 + 16);
  STACK[0xEA0] = v4;
  v5 = STACK[0xF18];
  v6 = *(STACK[0xF18] + 8 * (v2 + 41320));
  STACK[0xEC0] = a1;
  LODWORD(STACK[0xEB0]) = a2;
  v7 = *(v5 + 8 * (((v6(24) == 0) * ((v2 + 7981) ^ (v2 + 7969))) ^ (v2 + 5461)));
  return v7(STACK[0xEC0], LODWORD(STACK[0xEB0]), 4294950242, 40665, 109, 3587000818, 23860, 35644);
}

uint64_t sub_1004A1A88()
{
  v1 = STACK[0xF10] - 31483;
  v2 = v1 ^ 0x2493;
  v3 = v1 | 0x81A;
  v4 = STACK[0xF10] - 2759;
  LODWORD(STACK[0x6284]) = v0;
  return (*(STACK[0xF18] + 8 * (((v0 == v3 - 371872073) * (v2 - 13508)) ^ v4)))();
}

uint64_t sub_1004A1B0C@<X0>(unint64_t a1@<X8>)
{
  v4 = 139493411 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0xA82499F) + ((&STACK[0x10000] + 3800) | 0xF57DB660))) ^ 0x6AFA8DA);
  STACK[0x10EE0] = &STACK[0x8340];
  LOWORD(STACK[0x10EFC]) = -32733 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x499F) + ((&STACK[0x10000] + 3800) | 0xB660))) ^ 0xA8DA) + 27993;
  LODWORD(STACK[0x10ED8]) = v2 - v4 + 33291;
  LODWORD(STACK[0x10EE8]) = v4 - 231254985;
  STACK[0x10EF0] = a1;
  LODWORD(STACK[0x10EF8]) = v4 + (((v2 - 5849) | 0xA) + 1945531833) * v1 + 777074195;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0xE43E)))(&STACK[0x10ED8]);
  *(v3 + 1332) = STACK[0x10F00];
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_1004A1D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = 8 * v7;
  v9 = *(STACK[0xED0] + 4 * ((2899 * ((LODWORD(STACK[0xE90]) + (v7 ^ 0x97F8C382) + 1927775420) ^ ((v7 ^ 0xFCC9A04E) + 1585628821) ^ ((v7 ^ 0x2207644F) - 2142502250)) + 1154624138) % 0x26C4));
  v10 = *(STACK[0xEC0] + 4 * ((707 * (((v9 ^ 0x7E48F8A0) - 1207615358) ^ ((v9 ^ 0x2BAA4633) - 303563245) ^ ((v9 ^ 0x3C03B51u) - 980581519)) + 482874196) % 0x300));
  v11 = ((((8 * v7) ^ 0xE5D4E1D0) + 1130178214) ^ (((8 * v7) ^ 0x54857A0A) - 234046080) ^ (((8 * v7) ^ 0xF8E1A7DF) + 1583898795)) * a5 - 1707244471;
  v12 = ((((8 * v7) ^ 0x6802C4CD) - 1990654262) ^ (((8 * v7) ^ 0xEB619E8E) + 171596939) ^ (((8 * v7) ^ 0xCAD36647) + 730375236)) * a5 - 946986439;
  v13 = ((((8 * v7) ^ 0xB08CF767) + 661251502) ^ (((8 * v7) ^ 0x920F528D) + 99237960) ^ (((8 * v7) ^ 0x6B3399EC) - 53048537)) * a5 - 718386995;
  v14 = 2899 * (((v10 ^ 0x6C2E260C) - 1989487906) ^ ((v10 ^ 0x945134E5) + 1897250869) ^ ((v10 ^ 0xE9229B04) + 208039894)) - 1017461191;
  v15 = v11 - ((((v11 >> 5) * v5) >> 32) >> 1) * v6;
  v16 = v12 - ((((v12 >> 5) * v5) >> 32) >> 1) * v6;
  v17 = ((((8 * v7) ^ 0x39B1EEC5) - 777247032) ^ (((8 * v7) ^ 0xA87FC1FA) + 1080166905) ^ (((8 * v7) ^ 0xD87E133D) + 811850560)) * a5 - 1701815239;
  v18 = ((((8 * v7) ^ 0xAA0C70C8) + 351104104) ^ (((8 * v7) ^ 0xCA48AC94) + 1957277756) ^ (((8 * v7) ^ 0x29F4E05C) - 1760166668)) * a5 + 1499201090;
  v19 = (((v7 ^ 0x7F36A0D4) - 2134286548) ^ ((v7 ^ 0x996F0EA3) + 1720775005) ^ ((v7 ^ 0xAF6FA9F0) + 1351636496)) - 1435459358;
  v20 = v17 - ((((v17 >> 5) * v5) >> 32) >> 1) * v6;
  v21 = (v19 ^ 0x5EA47615) & (2 * (v19 & 0x9EC566A6)) ^ v19 & 0x9EC566A6;
  v22 = ((2 * (v19 ^ 0x622C7659)) ^ 0xF9D221FE) & (v19 ^ 0x622C7659) ^ (2 * (v19 ^ 0x622C7659)) & 0xFCE910FE;
  v23 = v22 ^ 0x4291001;
  v24 = (v22 ^ 0xF80000FF) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xF3A443FC) & v23 ^ (4 * v23) & 0xFCE910FC;
  v26 = ((16 * (v25 ^ 0xC491003)) ^ 0xCE910FF0) & (v25 ^ 0xC491003) ^ (16 * (v25 ^ 0xC491003)) & 0xFCE910F0;
  v27 = v26 ^ 0x3068100F;
  v28 = (v25 ^ 0xF0A000E0) & (16 * v24) ^ v24 ^ 0xFCE910FF ^ (v26 ^ 0xCC810000) & (((v25 ^ 0xF0A000E0) & (16 * v24) ^ v24) << 8);
  v29 = STACK[0xEB0] + (*(STACK[0xED0] + 4 * (v14 % 0x26C4)) ^ 0xC6A71E2);
  v30 = (v28 << 16) & 0x7CE90000 ^ v28 ^ ((v28 << 16) ^ 0x10FF0000) & ((v27 << 8) & 0x7CE90000 ^ 0x14E90000 ^ ((v27 << 8) ^ 0x69100000) & v27);
  v31 = (((v8 ^ 0x8DB15003) + 2055900772) ^ ((v8 ^ 0x9200F25F) + 1698376768) ^ ((v8 ^ 0x56019E5B) - 1590017988)) * a5 - 679590838;
  v32 = v19 ^ (2 * v30);
  v33 = (1864610357 * ((1864610357 * ((v29 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v29 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) >> 16))) >> 24;
  v34 = (53 * ((53 * (v29 ^ LOBYTE(STACK[0xE70]))) ^ ((1864610357 * ((v29 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) >> 16))) ^ *v29;
  LODWORD(v29) = (((v8 ^ 0xD8F2E603) + 1205746713) ^ ((v8 ^ 0x9712343B) + 138341921) ^ ((v8 ^ 0x650EE39) - 1719913437)) * a5 + 648147567;
  v35 = v29 - ((((v29 >> 5) * v5) >> 32) >> 1) * v6;
  v36 = v34 ^ *(STACK[0xE60] + v33);
  v37 = *(a4 + 8 * (v13 - ((((v13 >> 5) * v5) >> 32) >> 1) * v6));
  v38 = v36 ^ *(v33 + STACK[0xE40] + 3) ^ (-57 * v33) ^ *(v33 + STACK[0xE30] + 1);
  v39 = (((v8 ^ 0x9B832E6) + 1071729680) ^ ((v8 ^ 0x577D21D7) + 1629773631) ^ ((v8 ^ 0x17752F32) + 556552668)) * a5 - 154060769;
  v40 = *(a4 + 8 * v20) ^ 0xC70AE14022CE880;
  v41 = *(a4 + 8 * v16) ^ 0x682FC497091C9875;
  v42 = *(a4 + 8 * (v31 - ((((v31 >> 5) * v5) >> 32) >> 1) * v6)) ^ 0x26D7C7D5C34700BLL;
  v43 = *(a4 + 8 * v15) ^ 0xC38EDBDE261F6F27;
  v44 = *(a4 + 8 * (v18 - ((((v18 >> 5) * v5) >> 32) >> 1) * v6)) ^ 0x2BCE989D51D6E3B7;
  v45 = v37 ^ 0x2229AA8AA20AA329;
  if ((v38 & 1) == 0)
  {
    v45 = 0xEC32033CADC13B24;
  }

  if ((((v36 ^ *(v33 + STACK[0xE40] + 3)) ^ ((-57 * v33) ^ *(v33 + STACK[0xE30] + 1))) & 0x40) == 0)
  {
    v44 = 0xE5D5312B5E1D7BBALL;
  }

  if ((((v36 ^ *(v33 + STACK[0xE40] + 3)) ^ ((-57 * v33) ^ *(v33 + STACK[0xE30] + 1))) & 8) == 0)
  {
    v43 = 0xD95726829D4F72ALL;
  }

  if ((((v36 ^ *(v33 + STACK[0xE40] + 3)) ^ ((-57 * v33) ^ *(v33 + STACK[0xE30] + 1))) & 2) == 0)
  {
    v42 = 0xCC76D5CB53FFE806;
  }

  if ((((v36 ^ *(v33 + STACK[0xE40] + 3)) ^ ((-57 * v33) ^ *(v33 + STACK[0xE30] + 1))) & 4) == 0)
  {
    v41 = 0xA6346D2106D70078;
  }

  if ((((v36 ^ *(v33 + STACK[0xE40] + 3)) ^ ((-57 * v33) ^ *(v33 + STACK[0xE30] + 1))) & 0x10) == 0)
  {
    v40 = 0xC26B07A20DE7708DLL;
  }

  v46 = *(a4 + 8 * v35) ^ 0x235AA00726ADF1E8;
  if (((((v38 ^ 0x92) + 27) ^ ((v38 ^ 0x2A) - 93) ^ ((v38 ^ 0xB8) + 49)) + 119) >= 0)
  {
    v46 = 0xED4109B1296669E5;
  }

  v47 = STACK[0xE20] ^ v44 ^ v42 ^ v45 ^ v40 ^ v41 ^ v43;
  v48 = *(a4 + 8 * (v39 - ((((v39 >> 5) * v5) >> 32) >> 1) * v6)) ^ 0x119179D3610E1368;
  if ((v38 & 0x20) == 0)
  {
    v48 = 0xDF8AD0656EC58B65;
  }

  STACK[0xE20] = v47 ^ v48 ^ 0x9E9026E3C564CDC7 ^ v46;
  return (*(STACK[0xF18] + 8 * ((52 * ((((v32 ^ 0x24FA1C5) - 230482202) ^ ((v32 ^ 0xF4D5F0D9) + 81350650) ^ ((v32 ^ 0xB05F1644) + 1079224677)) + 1228277639 < 0x30)) ^ LODWORD(STACK[0xE80]))))();
}

uint64_t sub_1004A2E98()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16662)))((((v1 - 35200) | 0x8B39) + ((v1 - 33377) ^ 0xE9D53CF7)) ^ LODWORD(STACK[0x9724]));
  *(v0 - 0x10A99C80114D131FLL) = v3;
  return (*(v2 + 8 * (((v3 != 0) | (4 * (v3 != 0))) ^ v1)))(3204694014, 1090286692, 4294923066, 35593, 4294941560, 1194047912, 35641, 1090303727);
}

uint64_t sub_1004A3134()
{
  v2 = *(STACK[0x610] - 1072237815);
  *(v0 + 1156) = v2;
  *(v0 + 1160) = ((2 * v2) & 0x1EEFB47E2) - 0x220D0207360521A1 + (v2 ^ (v1 + 1898270800) & 0x8EDABEFF ^ 0x3FCDDEBFF77DB51ELL);
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x1486 ^ (1522 * ((v1 ^ 0x8763B1C5) > 0x638EA420)))))();
}

uint64_t sub_1004A3394(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v4 + 3 * (a3 ^ 0x9EBD) - 35644;
  v7 = v5 > 0x1F || (~v3 & 0x1Fu) < (v5 & 0x1F);
  return (*(STACK[0xF18] + 8 * ((451 * (((a3 + 79) ^ v7) & 1)) ^ a3)))();
}

uint64_t sub_1004A34D8(uint64_t a1)
{
  *a1 = v1 ^ 0xF4EF7FF3;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0x21E23A8900000000;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x8A5C)))(((v2 - 14492) | 0x8313) ^ (8 * (v1 ^ 0xF4EF7FF3)) ^ 0x4EAEB3B3);
  *(a1 + 16) = v5;
  return (*(v4 + 8 * (((v5 != 0) * (((v2 - 11880) | 0x2180) - 13261)) ^ v2)))();
}

uint64_t sub_1004A356C@<X0>(int a1@<W8>)
{
  v3 = a1 + ((v1 - 33951) | 0xB92A) - 1328866282;
  v4 = (((*v2 ^ 0x71BA4FBA) - 1908035514) ^ ((*v2 ^ 0x9E592BCA) + 1638323254) ^ ((*v2 ^ 0x636A361) + ((v1 - 1106557729) & 0x41F4BBBB) - 104279708)) - 1700683182;
  v6 = v4 > 0xB0CBDB40 && v3 >= v4;
  return (*(STACK[0xF18] + 8 * ((35 * v6) | (v1 - 25988))))();
}

uint64_t sub_1004A38E0@<X0>(unsigned __int8 *a1@<X1>, unsigned int a2@<W8>)
{
  v3 = (*a1 ^ 0x7D) + ((*a1 << (-109 * (a2 ^ 9) + 24)) & 0xFFFFFFFA);
  *v2 = v3 - 41;
  return (*(STACK[0xF18] + 8 * ((43997 * ((v3 - 126) < 3u)) ^ a2)))();
}

uint64_t sub_1004A3958@<X0>(int a1@<W8>)
{
  v5 = (v1 ^ 0x4B3C ^ ((v1 - 35133) | 0xC005)) + a1;
  *(v3 + 2784) = v5;
  v6 = (((v4 ^ 0x233510D7) - 590680279) ^ ((v4 ^ 0xF2B13907) + 223266553) ^ ((v4 ^ 0x3851EEC1) - 944893633)) - 801532436;
  v7 = v5 > 0x199C3124;
  v8 = v7 ^ (v6 < 0xE663CEDB);
  v9 = a1 - 429666593 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  if (v7)
  {
    v2 = 371891407;
  }

  *(v3 + 2788) = v2;
  return (*(STACK[0xF18] + 8 * ((79 * (v2 == -371865839)) ^ v1)))();
}

uint64_t sub_1004A3AA8()
{
  v1 = STACK[0xF10] - 13956;
  v2 = (STACK[0xF10] - 31539) | 0x48C3;
  v3 = STACK[0xF10] - 27384;
  STACK[0x2970] = v0;
  return (*(STACK[0xF18] + 8 * ((((v2 - 1081) ^ v1) * (v0 != 0)) ^ v3)))();
}

uint64_t sub_1004A3B00()
{
  v1 = STACK[0xF10] + 8993;
  v2 = STACK[0x8C50];
  v3 = *(STACK[0x8C50] + 8);
  STACK[0x3140] = STACK[0x8C50] + 8;
  LODWORD(STACK[0x10ED8]) = (v1 + 703881713) ^ (634647737 * (&STACK[0x10ED8] ^ 0x6D962FFC));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 7270)))(&STACK[0x10ED8]);
  v5 = STACK[0x76E0];
  v6 = STACK[0x3F80];
  v7 = STACK[0x56B0];
  v8 = STACK[0x9530];
  STACK[0x10EF0] = *(v2 + 112);
  STACK[0x10EE8] = v2 + 520;
  STACK[0x10ED8] = v6;
  STACK[0x10EF8] = v7;
  STACK[0x10F00] = v8;
  LODWORD(STACK[0x10F18]) = (v1 - 33546) ^ (1012831759 * (((&STACK[0x10ED8] | 0xED375BCA) - (&STACK[0x10ED8] & 0xED375BC8)) ^ 0xFDA44D40));
  STACK[0x10F10] = &STACK[0xF28] ^ 0x41C0FB6406054AAALL;
  STACK[0x10F08] = v5;
  v9 = (*(v4 + 8 * (v1 + 7773)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10EE0]) == v0) * ((v1 ^ 0x86EB) + 16747)) ^ v1)))(v9);
}

uint64_t sub_1004A3C64@<X0>(int a1@<W8>)
{
  v4 = STACK[0xF18];
  STACK[0x3498] = *(STACK[0xF18] + 8 * v1);
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x2060] = v5;
  *v5 = v2;
  *(v5 + 2) = v3;
  return (*(v4 + 8 * ((a1 + 5994) ^ a1)))();
}

uint64_t sub_1004A3D10()
{
  STACK[0x7690] = v0 - 4145 + (v1 - 25883);
  v2 = STACK[0xAFF0];
  LODWORD(STACK[0x10EE8]) = (v1 + 14703) ^ (139493411 * ((((&STACK[0x10000] + 3800) ^ 0xE10E7823) - 2 * (((&STACK[0x10000] + 3800) ^ 0xE10E7823) & 0x423A7D8B) - 1036354161) ^ 0x2F19E4E9));
  STACK[0x10EE0] = v2;
  LOBYTE(STACK[0x10ED8]) = ((35 * ((((&STACK[0x10000] - 40) ^ 0x23) - 2 * (((&STACK[0x10000] - 40) ^ 0x23) & 0x8B) - 113) ^ 0xE9)) & 1) == 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 21941)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1004A3E14@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v4 = (((*(a2 + 16) ^ 0xE72B987E) + 416573314) ^ ((*(a2 + 16) ^ 0xEE8F9C69) + 292578199) ^ ((((a1 ^ 0x3186) + 35534) ^ 0x1F8E3CFA ^ (327 * (a1 ^ 0x3186))) + (*(a2 + 16) ^ 0xE071C306))) + v3;
  v5 = (((*(a2 + 12) ^ 0x932A4F08) + 1825943800) ^ ((*(a2 + 12) ^ 0x9EDFAA09) + 1629509111) ^ ((*(a2 + 12) ^ 0xE4202210) + 467656176)) + v3;
  v6 = (v4 < v2) ^ (v5 < v2);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < v2;
  }

  return (*(STACK[0xF18] + 8 * ((45802 * v7) ^ a1)))();
}

uint64_t sub_1004A3F28@<X0>(void *a1@<X8>)
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
  STACK[0xBF80] = 0;
  STACK[0xBF88] = v1;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xBF80] | v11);
  *(&STACK[0xBF80] | v11) = 0;
  LOBYTE(STACK[0xBF87]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xBF80] | v13);
  *(&STACK[0xBF80] | v13) = STACK[0xBF86];
  LOBYTE(STACK[0xBF86]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xBF80] | v15);
  *(&STACK[0xBF80] | v15) = STACK[0xBF85];
  LOBYTE(STACK[0xBF85]) = v16;
  v17 = STACK[0xBF80];
  LOBYTE(STACK[0xBF80]) = STACK[0xBF84];
  LOBYTE(STACK[0xBF84]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xBF80] | v18);
  *(&STACK[0xBF80] | v18) = STACK[0xBF83];
  LOBYTE(STACK[0xBF83]) = v19;
  v20 = STACK[0xBF81];
  LOBYTE(STACK[0xBF82]) = STACK[0xBF80];
  LOWORD(STACK[0xBF80]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xBF80] = vmla_s32(v23, STACK[0xBF80], vdup_n_s32(0x1000193u));
  STACK[0xBF88] ^= STACK[0xBF80];
  STACK[0xBF88] = vmul_s32(vsub_s32(STACK[0xBF88], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xBF8A];
  LOWORD(STACK[0xBF89]) = STACK[0xBF88];
  LOBYTE(STACK[0xBF88]) = v24;
  v25 = (&STACK[0xBF88] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xBF8B];
  LOBYTE(STACK[0xBF8B]) = v20;
  LOBYTE(v25) = STACK[0xBF88];
  LOBYTE(STACK[0xBF88]) = STACK[0xBF8C];
  LOBYTE(STACK[0xBF8C]) = v25;
  v26 = (&STACK[0xBF88] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xBF8D];
  LOBYTE(STACK[0xBF8D]) = v25;
  v27 = (&STACK[0xBF88] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xBF8E];
  LOBYTE(STACK[0xBF8E]) = v26;
  v28 = (&STACK[0xBF88] | v11);
  v29 = *v28;
  *v28 = STACK[0xBF8F];
  LOBYTE(STACK[0xBF8F]) = v29;
  v30 = STACK[0xBF88];
  v31 = (1269228062 * STACK[0xBF88]) ^ v10;
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
  *a1 = STACK[0xBF88];
  return (*(STACK[0xF18] + 8 * v2))(v48, v49);
}

uint64_t sub_1004A43F4()
{
  v2 = *(v1 + 8);
  STACK[0x5970] = v2;
  return (*(STACK[0xF18] + 8 * (((((3 * (v0 ^ 0x57C2)) ^ 0xFFFFFE00) + ((v0 + 1571254672) & 0xA2589FFF)) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1004A4448()
{
  STACK[0x2400] = 0;
  LODWORD(STACK[0x7D5C]) = -371865839;
  LODWORD(STACK[0x2F1C]) = -1970944299;
  v2 = *(v0 - 0x217E172EFA1E81CLL);
  v3 = 634647737 * ((~&STACK[0x10ED8] & 0xF0233235 | &STACK[0x10ED8] & 0xFDCCDC8) ^ 0x9DB51DC9);
  LODWORD(STACK[0x10ED8]) = ((((*(v0 - 0x217E172EFA1E804) ^ 0xCDCB64F7) + 842308361) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0x80FE237C) + 2130828420) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0xA4E0809A) + ((v1 + 1528771509) ^ (v1 + 13979)))) - 54746966) ^ v3;
  STACK[0x10EF0] = v2;
  STACK[0x10EE0] = &STACK[0x4C5C];
  STACK[0x10EE8] = &STACK[0x5234];
  STACK[0x10F00] = v0 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10EF8]) = v1 - v3 + 37077;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC048)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((17742 * (LODWORD(STACK[0x10F08]) == -371865839)) ^ v1)))(v5);
}

uint64_t sub_1004A4744()
{
  v1 = STACK[0xF10] ^ 0x8B39;
  v2 = STACK[0xF10] + 13278;
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  v3 = LODWORD(STACK[0x6280]) * (v0 - 1548484898) + 10310394;
  v4 = (v3 ^ (v1 - 8868846)) & (2 * (v3 & (25373 * v1 - 10361140))) ^ v3 & (25373 * v1 - 10361140);
  v5 = ((2 * (v3 ^ 0x9D3CBC14)) ^ 0xC4BC2224) & (v3 ^ 0x9D3CBC14) ^ (2 * (v3 ^ 0x9D3CBC14)) & 0x625E1112;
  v6 = (v5 ^ 0x405C0100) & (4 * v4) ^ v4;
  v7 = ((4 * (v5 ^ 0x22421112)) ^ 0x89784448) & (v5 ^ 0x22421112) ^ (4 * (v5 ^ 0x22421112)) & 0x625E1110;
  v8 = (v7 ^ 0x580010) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x62061112)) ^ 0x25E11120) & (v7 ^ 0x62061112) ^ (16 * (v7 ^ 0x62061112)) & 0x625E1100;
  v10 = v8 ^ 0x625E1112 ^ (v9 ^ 0x20401100) & (v8 << 8);
  v11 = v3 ^ LODWORD(STACK[0x508C]) ^ (2 * ((v10 << 16) & 0x625E0000 ^ v10 ^ ((v10 << 16) ^ 0x11120000) & (((v9 ^ 0x421E0012) << 8) & 0x625E0000 ^ 0x204E0000 ^ (((v9 ^ 0x421E0012) << 8) ^ 0x5E110000) & (v9 ^ 0x421E0012))));
  LODWORD(STACK[0x7C20]) = v11 ^ 0x3BFA8F22;
  v12 = (((v11 ^ 0xD1F5B0B722397D73) + 0x2E0A4F48E63C0DAFLL) ^ ((v11 ^ 0xD4CDE28EA9AED651) + 0x2B321D716DABA68DLL) ^ ((v11 ^ 0x538523959B8E311) - 0x538523962426C33)) + 0x113225D87;
  v13 = (LODWORD(STACK[0x59EC]) ^ 0x6D47FFBDBE2FFFFFLL) - 0x6D47FFBD94E3698DLL + ((2 * LODWORD(STACK[0x59EC])) & 0x17C5FFFFELL);
  v14 = (v13 < 0x294C9672) ^ (v12 < 0x294C9672);
  v15 = v12 > v13;
  if (v14)
  {
    v15 = v12 < 0x294C9672;
  }

  return (*(STACK[0xF18] + 8 * ((62 * v15) ^ v2)))();
}

uint64_t sub_1004A4A28()
{
  v1 = STACK[0xF10] - 32987;
  *(STACK[0x9368] + 252) = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x1306)))();
}

uint64_t sub_1004A4CF0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v4 = ((((v2 - 12453) | 0x8A21u) + 1500968091) & (2 * a2)) + (a2 ^ 0xF5A5BED2CBBBFEBLL);
  *(a1 + 48) = v4 + 0x31DBD876B0892F8ALL;
  v4 -= 0xF5A5BECB3088DABLL;
  v5 = STACK[0x7D20] - 0x6F6F2C6DA83867D8;
  v6 = v4 < 0x79B3323C;
  v7 = v4 > v5;
  if (v5 < (v2 - 11823) + 2041786028 != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v3 = 371891407;
  }

  LODWORD(STACK[0x448C]) = v3;
  v8 = v3 == -371865839;
  *(a1 + 59) = v8;
  return (*(STACK[0xF18] + 8 * ((926 * v8) ^ v2)))();
}

uint64_t sub_1004A4E00()
{
  v2 = (STACK[0xEB0] + 89);
  v1 = *v2;
  STACK[0xEC0] = &STACK[0xC4D0] + v0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x7D86BAEC));
  v4 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 216)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 216)) & 0x7FFFFFFFu)) >> 16));
  v5 = STACK[0xE90];
  v6 = *(&off_1010A0B50 + LODWORD(STACK[0xE90]) - 32735) - 1143171702;
  v7 = *(&off_1010A0B50 + (LODWORD(STACK[0xE90]) ^ 0x8811)) - 162745398;
  v8 = *(&off_1010A0B50 + (LODWORD(STACK[0xE90]) ^ 0x8C24)) - 41856155;
  v9 = 1864610357 * ((1864610357 * ((v3 ^ v2) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ v2) & 0x7FFFFFFF)) >> 16));
  v10 = v6[v9 >> 24];
  LODWORD(STACK[0xE10]) = v6[v4 >> 24] ^ v2[216] ^ v7[v4 >> 24] ^ v8[(v4 >> 24) + 1] ^ v4 ^ (-29 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 216)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 216)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  LODWORD(STACK[0xDC0]) = v9 ^ v1 ^ v10 ^ v7[v9 >> 24] ^ (-29 * ((1864610357 * ((1864610357 * ((v3 ^ v2) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ v2) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ v8[(v9 >> 24) + 1];
  v11 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 64)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 64)) & 0x7FFFFFFFu)) >> 16));
  v12 = v8[(v11 >> 24) + 1];
  LODWORD(v11) = (-29 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 - 64)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 64)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ v11 ^ *(v2 - 64) ^ v6[v11 >> 24] ^ v7[v11 >> 24];
  v13 = *(v2 - 62);
  LODWORD(STACK[0xE00]) = v13;
  v14 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 62)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 62)) & 0x7FFFFFFFu)) >> 16));
  v15 = v14 >> 24;
  STACK[0xE20] = v14;
  v16 = *(&off_1010A0B50 + (v5 ^ 0x8A29)) - 1562918670;
  LODWORD(v9) = v16[v14 >> 24];
  LODWORD(STACK[0xEA0]) = v11 ^ v12;
  v17 = (v14 >> 24) + 1;
  STACK[0xDF0] = v17;
  v18 = *(&off_1010A0B50 + (v5 ^ 0x9524)) - 873622939;
  LODWORD(v11) = v18[v17];
  v19 = v5;
  v20 = *(&off_1010A0B50 + v5 - 32171) - 1769260706;
  STACK[0xDE0] = v15;
  LODWORD(STACK[0xED0]) = v9 ^ v13 ^ v11 ^ v20[v15] ^ (1864610357 * ((1864610357 * ((v3 ^ (v2 - 62)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 62)) & 0x7FFFFFFFu)) >> 16))) ^ (91 * v15);
  v21 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 35)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 35)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v15) = v2[223];
  LODWORD(STACK[0xE80]) = *(v2 - 35) ^ v21 ^ (91 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 - 35)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 35)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ v16[v21 >> 24] ^ v18[(v21 >> 24) + 1] ^ v20[v21 >> 24];
  v22 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 223)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 223)) & 0x7FFFFFFFu)) >> 16));
  v23 = (91 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 223)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 223)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ v22 ^ v15 ^ v16[v22 >> 24] ^ v18[(v22 >> 24) + 1] ^ v20[v22 >> 24];
  v24 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 21)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 21)) & 0x7FFFFFFFu)) >> 16));
  v25 = v24 >> 24;
  v26 = *(&off_1010A0B50 + v5 - 32649) - 157282158;
  v27 = *(&off_1010A0B50 + v5 - 34750) - 970063179;
  v28 = *(&off_1010A0B50 + (v5 & 0x4EC72CEB)) - 1919187759;
  LODWORD(v24) = v26[v24 >> 24] ^ v2[21] ^ v27[(v24 >> 24) + 5] ^ v28[v24 >> 24] ^ v24;
  LODWORD(STACK[0xDD0]) = v24 ^ v25;
  LODWORD(STACK[0xD90]) = v24 ^ ~v25;
  v29 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 95)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 95)) & 0x7FFFFFFFu)) >> 16));
  v30 = v2[148];
  LODWORD(STACK[0xD60]) = (v29 >> 24) ^ v29 ^ v2[95] ^ v26[v29 >> 24] ^ v27[(v29 >> 24) + 5] ^ v28[v29 >> 24];
  v31 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 148)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 148)) & 0x7FFFFFFFu)) >> 16));
  v32 = v31 >> 24;
  v33 = v31 ^ v30;
  LODWORD(v31) = v27[(v31 >> 24) + 5];
  v34 = v26[v32];
  v35 = v28[v32];
  v36 = ((v32 ^ v33 ^ v34 ^ v31) ^ v35) & 0x10;
  v37 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 12)) & 0x7FFFFFFFu)) >> 16));
  v38 = v6[v37 >> 24] ^ *(v2 - 12) ^ v7[v37 >> 24] ^ v8[(v37 >> 24) + 1] ^ v37 ^ (-29 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 - 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 12)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v39 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 147)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 147)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(STACK[0xE70]) = v26[v39 >> 24] ^ v2[147] ^ v27[(v39 >> 24) + 5] ^ v39 ^ v28[v39 >> 24] ^ (v39 >> 24);
  v40 = v33 ^ v32 ^ v34 ^ v31 ^ v35;
  v41 = 8 - v36;
  if ((((v36 | 8) ^ (2 * ((v36 ^ 0x70) & (2 * ((v36 ^ 0x70) & (2 * ((v36 ^ 0x70) & (2 * (v36 | 0xCA)) ^ (v36 | 0xCA))) ^ (v36 | 0xCA))) ^ (v36 | 0xCA))) ^ 0x7C) & v38 & 0xFE) == 0)
  {
    v41 = v36 | 8;
  }

  v42 = (((v38 ^ 0xFFFFFFEE) + 103) ^ ((v38 ^ 0x5A) - 45) ^ ((v38 ^ 0xFFFFFFB4) + 61)) + v41 - 37;
  v43 = v42 & 0xFFFFFFFC ^ 0x34;
  v44 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 82)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 82)) & 0x7FFFFFFFu)) >> 16));
  v45 = v44 >> 24;
  LODWORD(v44) = v26[v44 >> 24] ^ v2[82] ^ v27[(v44 >> 24) + 5] ^ v28[v44 >> 24] ^ v44;
  LODWORD(STACK[0xD30]) = v44 ^ v45;
  v46 = v44 ^ ~v45;
  LODWORD(STACK[0xD20]) = v42 ^ v40 & 0xFFFFFFEF ^ (2 * ((v42 ^ 0x14) & (2 * ((v42 ^ 0x14) & (2 * ((v42 ^ 0x14) & (2 * ((v42 ^ 0x14) & (2 * ((v42 ^ 0x14) & (2 * v43) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43));
  v47 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 21)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 21)) & 0x7FFFFFFFu)) >> 16));
  v48 = *(v2 - 21) ^ v2[283] ^ v47;
  v47 >>= 24;
  v49 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 283)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 283)) & 0x7FFFFFFFu)) >> 16));
  v50 = v48 ^ v49 ^ (91 * v47);
  v49 >>= 24;
  LODWORD(STACK[0xDA0]) = v50 ^ (91 * v49) ^ v16[v47] ^ v18[v47 + 1] ^ v20[v47] ^ v16[v49] ^ v18[v49 + 1] ^ v20[v49];
  v51 = (1864610357 * ((1864610357 * ((v3 ^ (v2 + 201)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 201)) & 0x7FFFFFFFu)) >> 16))) >> 24;
  v52 = ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 201)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 201)) & 0x7FFFFFFFu)) >> 16))) >> 24) ^ (53 * ((53 * (v3 ^ (v2 - 55))) ^ ((1864610357 * ((v3 ^ (v2 + 201)) & 0x7FFFFFFFu)) >> 16))) ^ v2[201] ^ v26[v51] ^ v27[v51 + 5] ^ v28[v51];
  v53 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 56)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 56)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(STACK[0xDB0]) = v26[v53 >> 24] ^ *(v2 - 56) ^ v27[(v53 >> 24) + 5] ^ v28[v53 >> 24] ^ v53 ^ (v53 >> 24);
  v54 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 45)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 45)) & 0x7FFFFFFFu)) >> 16));
  v55 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 307)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 307)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v45) = v2[307] ^ *(v2 - 45) ^ v26[v54 >> 24] ^ v27[(v54 >> 24) + 5] ^ v28[v54 >> 24] ^ v54 ^ v55 ^ v26[v55 >> 24] ^ (v54 >> 24) ^ (v55 >> 24) ^ v27[(v55 >> 24) + 5] ^ v28[v55 >> 24];
  v56 = *(&off_1010A0B50 + (v19 ^ 0x82FE)) - 1175740959;
  v57 = *(&off_1010A0B50 + (v19 ^ 0x8A27)) - 1502307986;
  v58 = *(&off_1010A0B50 + (v19 ^ 0x95E9)) - 227219662;
  v59 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 76)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 76)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v49) = v59 ^ *(v2 - 76);
  v59 >>= 24;
  LODWORD(v55) = *(v56 + v59);
  STACK[0xE60] = v56;
  STACK[0xE40] = v57;
  LODWORD(v49) = (-57 * v59) ^ v49 ^ v55 ^ *(v59 + v57 + 3);
  STACK[0xE30] = v58;
  LODWORD(STACK[0xD70]) = v49 ^ v58[v59 + 1];
  v60 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 28)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 28)) & 0x7FFFFFFFu)) >> 16));
  v61 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 84)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 84)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(STACK[0xD40]) = *(v2 - 84) ^ v2[28] ^ v16[v60 >> 24] ^ v18[(v60 >> 24) + 1] ^ v20[v60 >> 24] ^ v16[v61 >> 24] ^ v18[(v61 >> 24) + 1] ^ v20[v61 >> 24] ^ v60 ^ v61 ^ (91 * (v60 >> 24)) ^ (91 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 - 84)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 84)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v62 = (LODWORD(STACK[0xDC0]) << 16) | (v23 << 8);
  v63 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 115)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 115)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v61) = v2[165];
  LODWORD(STACK[0xD80]) = v63 ^ v2[115] ^ *(v56 + (v63 >> 24)) ^ *((v63 >> 24) + v57 + 3) ^ (-57 * (v63 >> 24)) ^ v58[(v63 >> 24) + 1];
  v64 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 165)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 165)) & 0x7FFFFFFFu)) >> 16));
  v65 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 277)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 277)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v61) = v2[277] ^ v61 ^ v64 ^ (-29 * (v64 >> 24)) ^ v6[v64 >> 24] ^ v7[v64 >> 24] ^ v8[(v64 >> 24) + 1] ^ v6[v65 >> 24] ^ v7[v65 >> 24] ^ v8[(v65 >> 24) + 1] ^ v65 ^ (-29 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 277)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 277)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v66 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 128)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 128)) & 0x7FFFFFFFu)) >> 16));
  v67 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 32)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 32)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(STACK[0xD50]) = v2[128] ^ *(v2 - 32) ^ v16[v66 >> 24] ^ v18[(v66 >> 24) + 1] ^ v20[v66 >> 24] ^ v66 ^ v16[v67 >> 24] ^ v67 ^ v18[(v67 >> 24) + 1] ^ (91 * (v66 >> 24)) ^ v20[v67 >> 24] ^ (91 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 - 32)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 32)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  LODWORD(STACK[0xDC0]) = (v46 | 0xFFFF00) & (v62 ^ 0xA46F05) | STACK[0xD30] & 0xFA;
  v68 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 33)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 33)) & 0x7FFFFFFFu)) >> 16));
  v69 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 17)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 17)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(STACK[0xD30]) = *(v2 - 17) ^ *(v2 - 33) ^ v68 ^ (-29 * (v68 >> 24)) ^ v6[v68 >> 24] ^ v7[v68 >> 24] ^ v8[(v68 >> 24) + 1] ^ v6[v69 >> 24] ^ v7[v69 >> 24] ^ v8[(v69 >> 24) + 1] ^ v69 ^ (-29 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 - 17)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 17)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v70 = ((v52 << 16) ^ 0x901A325E) & ((LODWORD(STACK[0xD60]) << 8) ^ 0x93FF3A5F) | (LODWORD(STACK[0xD60]) << 8) & 0xCD00;
  v71 = ((v45 << 16) ^ 0x3D0646) & ((LODWORD(STACK[0xD20]) << 8) ^ 0xFF5257) | (LODWORD(STACK[0xD20]) << 8) & 0xF9FF;
  v72 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 334)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 334)) & 0x7FFFFFFFu)) >> 16));
  v73 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 126)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 126)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v57) = v2[126] ^ v2[334] ^ v26[v72 >> 24] ^ v27[(v72 >> 24) + 5] ^ v28[v72 >> 24] ^ v72 ^ v73;
  v73 >>= 24;
  LODWORD(v57) = v57 ^ v26[v73] ^ ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 334)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 334)) & 0x7FFFFFFFu)) >> 16))) >> 24) ^ v73 ^ v27[v73 + 5];
  LODWORD(v73) = v28[v73];
  LODWORD(STACK[0xD20]) = v57 ^ v73;
  v74 = v57 ^ ~v73;
  LODWORD(STACK[0xDD0]) = (v70 ^ 0x3A7E32) & (LODWORD(STACK[0xD90]) | 0xFFFF00) | STACK[0xDD0] & 0x93;
  v75 = v2[166];
  v76 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 166)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 166)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v72) = v2[70] ^ v75;
  LODWORD(v56) = -29 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 166)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 166)) & 0x7FFFFFFFu)) >> 16))) >> 24);
  LODWORD(v65) = v6[v76 >> 24];
  v77 = v7[v76 >> 24];
  LODWORD(v44) = v8[(v76 >> 24) + 1];
  LOBYTE(v45) = v56 ^ (53 * ((53 * (v3 ^ (v2 - 90))) ^ ((1864610357 * ((v3 ^ (v2 + 166)) & 0x7FFFFFFFu)) >> 16))) ^ v75 ^ v65 ^ v77 ^ v44;
  v78 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 70)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 70)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v76) = v72 ^ v65 ^ v77 ^ v44 ^ v6[v78 >> 24] ^ v7[v78 >> 24] ^ v8[(v78 >> 24) + 1] ^ v76 ^ v78 ^ v56;
  LODWORD(v78) = -29 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 70)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 70)) & 0x7FFFFFFFu)) >> 16))) >> 24);
  LODWORD(v72) = *(v2 - 3);
  LODWORD(STACK[0xD90]) = v76 ^ v78;
  LODWORD(STACK[0xD60]) = v76 ^ ~v78;
  v79 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 317)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 317)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v76) = v2[317] ^ v72 ^ v79;
  v79 >>= 24;
  v80 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 3)) & 0x7FFFFFFFu)) >> 16));
  v81 = v76 ^ v80 ^ v16[v79] ^ v18[v79 + 1] ^ (91 * v79) ^ (91 * (v80 >> 24)) ^ v20[v79] ^ v16[v80 >> 24] ^ v18[(v80 >> 24) + 1] ^ v20[v80 >> 24];
  v82 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 6)) & 0x7FFFFFFFu)) >> 16));
  v83 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 218)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 218)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v44) = v2[218] ^ *(v2 - 6) ^ v16[v82 >> 24] ^ v18[(v82 >> 24) + 1] ^ v20[v82 >> 24] ^ v16[v83 >> 24] ^ v18[(v83 >> 24) + 1] ^ v20[v83 >> 24] ^ v82 ^ v83 ^ (91 * (v82 >> 24)) ^ (91 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 218)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 218)) & 0x7FFFFFFFu)) >> 16))) >> 24));
  v84 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 41)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 41)) & 0x7FFFFFFFu)) >> 16));
  v85 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 297)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 297)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v84) = v2[41] ^ v2[297] ^ v84 ^ v85 ^ v6[v84 >> 24] ^ v7[v84 >> 24] ^ v8[(v84 >> 24) + 1] ^ (-29 * (v84 >> 24)) ^ (-29 * (v85 >> 24)) ^ v6[v85 >> 24] ^ v7[v85 >> 24] ^ v8[(v85 >> 24) + 1];
  v86 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 7)) & 0x7FFFFFFFu)) >> 16));
  v87 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 183)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 183)) & 0x7FFFFFFFu)) >> 16));
  LOBYTE(v85) = v2[7] ^ v2[183] ^ v26[v86 >> 24] ^ v27[(v86 >> 24) + 5] ^ v28[v86 >> 24] ^ v26[v87 >> 24] ^ v27[(v87 >> 24) + 5] ^ v28[v87 >> 24] ^ (53 * ((53 * (v3 ^ (v2 + 7))) ^ ((1864610357 * ((v3 ^ (v2 + 7)) & 0x7FFFFFFFu)) >> 16))) ^ v87 ^ ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 7)) & 0x7FFFFFFFu)) >> 16))) >> 24) ^ BYTE3(v87);
  v88 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 113)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 113)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v87) = v2[113] ^ *(v2 - 63) ^ v88;
  v88 >>= 24;
  v89 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 63)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 63)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v89) = v87 ^ v89 ^ v16[v88] ^ v18[v88 + 1] ^ v20[v88] ^ (91 * v88) ^ (91 * (v89 >> 24)) ^ v16[v89 >> 24] ^ v18[(v89 >> 24) + 1] ^ v20[v89 >> 24];
  LODWORD(v87) = v6[STACK[0xDE0]];
  v90 = 1864610357 * ((1864610357 * ((v3 ^ (v2 + 114)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 114)) & 0x7FFFFFFFu)) >> 16));
  v91 = 91 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 114)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 114)) & 0x7FFFFFFFu)) >> 16))) >> 24);
  LODWORD(v87) = v2[114] ^ LODWORD(STACK[0xE00]) ^ v87 ^ v7[STACK[0xDE0]] ^ v8[STACK[0xDF0]] ^ v16[v90 >> 24] ^ v18[(v90 >> 24) + 1] ^ v20[v90 >> 24] ^ STACK[0xE20] ^ v90 ^ (-29 * STACK[0xDE0]);
  v92 = v87 ^ v91;
  LOBYTE(v87) = v87 ^ ~v91;
  v93 = (1864610357 * ((1864610357 * ((v3 ^ (v2 + 264)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 264)) & 0x7FFFFFFFu)) >> 16))) >> 24;
  v94 = (1864610357 * ((1864610357 * ((v3 ^ (v2 + 280)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 280)) & 0x7FFFFFFFu)) >> 16))) >> 24;
  LOBYTE(v88) = v2[280] ^ v2[264] ^ (53 * ((53 * (v3 ^ (v2 + 8))) ^ ((1864610357 * ((v3 ^ (v2 + 264)) & 0x7FFFFFFFu)) >> 16))) ^ (53 * ((53 * (v3 ^ (v2 + 24))) ^ ((1864610357 * ((v3 ^ (v2 + 280)) & 0x7FFFFFFFu)) >> 16))) ^ v26[v93] ^ v27[v93 + 5] ^ ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 264)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 264)) & 0x7FFFFFFFu)) >> 16))) >> 24) ^ ((1864610357 * ((1864610357 * ((v3 ^ (v2 + 280)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 + 280)) & 0x7FFFFFFFu)) >> 16))) >> 24) ^ v28[v93] ^ v26[v94] ^ v27[v94 + 5] ^ v28[v94];
  LODWORD(v86) = (v61 & 0xEE ^ 0xFFFFEE) & (v71 ^ 0xC299A8) | v61 & 0x11;
  LODWORD(v94) = ((LODWORD(STACK[0xD80]) << 16) ^ 0xA01E94) & ((v45 << 8) ^ 0xFFBFBF) | (v45 << 8) & 0xE1FF;
  LODWORD(v84) = ((((v85 << 16) ^ 0xE87531) & ~(v88 << 8) | (v88 << 8) & 0x8A00) ^ 0xE2F59B) & (v84 ^ 0xFFFFEE) | v84 & 0x55;
  LODWORD(v88) = ((((v81 ^ 0xFFFFFF) & ((((LODWORD(STACK[0xDA0]) << 16) ^ 0xDAE198) & ~(LODWORD(STACK[0xD40]) << 8) & 0xFFFFE1FF | (((LODWORD(STACK[0xD40]) >> 1) & 0xF) << 9)) ^ 0xE4623D) | v81 & 0x5A) << 8) ^ 0x2BE07DF) & (*&v74 | 0xFFFFFF00) | STACK[0xD20] & 0x20;
  LODWORD(v45) = (((v88 ^ 0xEA282AA9) + 330065420) ^ ((v88 ^ 0xC3AF9581) + 975952164) ^ ((v88 ^ 0x15BA1DF7) - 331460266)) + 782872444;
  LODWORD(v85) = (v45 ^ 0xFC96EF54) & (2 * (v45 & 0xFE98CF66)) ^ v45 & 0xFE98CF66;
  LODWORD(v88) = ((2 * (v45 ^ 0xFDB7E990)) ^ 0x65E4DEC) & (v45 ^ 0xFDB7E990) ^ (2 * (v45 ^ 0xFDB7E990)) & 0x32F26F6;
  LODWORD(v61) = v88 ^ 0x1212212;
  LODWORD(v88) = (v88 ^ 0x20604A0) & (4 * v85) ^ v85;
  LODWORD(v85) = ((4 * v61) ^ 0xCBC9BD8) & v61 ^ (4 * v61) & 0x32F26F0;
  LODWORD(v88) = (v85 ^ 0x2C02C0) & (16 * v88) ^ v88;
  LODWORD(v85) = ((16 * (v85 ^ 0x3032426)) ^ 0x32F26F60) & (v85 ^ 0x3032426) ^ (16 * (v85 ^ 0x3032426)) & 0x32F26E0;
  LODWORD(v88) = v88 ^ 0x32F26F6 ^ (v85 ^ 0x2222600) & (v88 << 8);
  v95 = STACK[0xEA0];
  LODWORD(v61) = LODWORD(STACK[0xEA0]);
  v96 = STACK[0xE70];
  LODWORD(v45) = v45 ^ (2 * ((v88 << 16) & 0x32F0000 ^ v88 ^ ((v88 << 16) ^ 0x26F60000) & (((v85 ^ 0x10D0096) << 8) & 0x32F0000 ^ 0x90000 ^ (((v85 ^ 0x10D0096) << 8) ^ 0x2F260000) & (v85 ^ 0x10D0096))));
  LODWORD(v65) = ((v87 | 0xFFFFFF00) & ((((v89 & 0xFC ^ 0xFFFFFC) & ((((LODWORD(STACK[0xD30]) << 16) ^ 0x20B29A) & ((LODWORD(STACK[0xD50]) << 8) ^ 0xFFF3FB) | (LODWORD(STACK[0xD50]) << 8) & 0x4D00) ^ 0x68DE4Eu) | v89 & 0x2B) << 8) ^ 0x75203C46) | v92 & 0xB9) ^ v45 ^ 0xA213E0E7;
  LODWORD(v86) = v45 ^ 0xA213E0E7 ^ ((LODWORD(STACK[0xD60]) | 0xFFFFFF00) & ((v86 << 8) ^ 0xCAC64CF0) & 0xFFFFFFF0 | STACK[0xD90] & 0xF);
  LODWORD(v84) = ((v84 << 8) ^ 0x1AA19F3D) & (v44 ^ 0xFFFFFF7D) | v44 & 0xC2;
  v97 = 1864610357 * ((1864610357 * ((v3 ^ (v2 - 19)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 19)) & 0x7FFFFFFFu)) >> 16));
  v98 = -57 * ((1864610357 * ((1864610357 * ((v3 ^ (v2 - 19)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v3 ^ (v2 - 19)) & 0x7FFFFFFFu)) >> 16))) >> 24);
  LOBYTE(v97) = *(STACK[0xE60] + (v97 >> 24)) ^ *(v2 - 19) ^ *((v97 >> 24) + STACK[0xE40] + 3) ^ *((v97 >> 24) + STACK[0xE30] + 1) ^ v97;
  LOBYTE(v87) = v97 ^ v98;
  LOBYTE(v97) = v97 ^ ~v98;
  LODWORD(v44) = ((v65 ^ 0x3C64375C) + 71436772) ^ ((v65 ^ 0x4BDF84D5) + 1945746027) ^ ((v65 ^ 0xB06272C9) - 2008789897);
  v99 = ((v45 ^ 0x2E71825D) + 403685684) ^ ((v45 ^ 0xC0E6F478) - 157763817) ^ ((v45 ^ 0x2716CAB4) + 292063707);
  LODWORD(v86) = (((v86 ^ 0x86A5EEBF) - 340276517) ^ ((v86 ^ 0xC46802D7) - 1451612493) ^ ((v86 ^ 0x29F52CF5) + 1155991697)) - (((v45 ^ 0x52F63587) + 253373088) ^ ((v45 ^ 0x666F8B78) + 998478945) ^ ((v45 ^ 0xC8133C75) - 1778441362)) - v44;
  v100 = v86 - 421084264;
  LODWORD(v86) = v99 - v86;
  LODWORD(v45) = v86 + (((v84 ^ 0x1F0789D7) + 902607283) ^ ((v84 ^ 0x637F8856) + 1236578356) ^ ((v84 ^ 0x6C5934BC) + 1183976666));
  LODWORD(v65) = v86 - 646645462;
  LODWORD(v84) = v45 + v99 + v44 + 74617178;
  LODWORD(STACK[0xD20]) = (((((((LODWORD(STACK[0xE10]) << 16) ^ 0x5602DC) & ~(LODWORD(STACK[0xD70]) << 8) | (LODWORD(STACK[0xD70]) << 8) & 0xFDFF) ^ 0x85447E) & (LODWORD(STACK[0xE80]) ^ 0xFFFFFFF7) | STACK[0xE80] & 0x5D) << 8) ^ 0xBF4E9A4E) & (LODWORD(STACK[0xDB0]) ^ 0xFFFFFF5F) | STACK[0xDB0] & 0xB1;
  LODWORD(v44) = ((v45 - 1312381774) ^ 0xF007FA0C) & (2 * ((v45 - 1312381774) & 0xE057E34C)) ^ (v45 - 1312381774) & 0xE057E34C;
  LODWORD(v86) = ((2 * ((v45 - 1312381774) ^ 0xB086FA84)) ^ 0xA1A23390) & ((v45 - 1312381774) ^ 0xB086FA84) ^ (2 * ((v45 - 1312381774) ^ 0xB086FA84)) & 0x50D119C8;
  v101 = v86 ^ 0x50510848;
  LODWORD(v86) = (v86 ^ 0x801100) & (4 * v44) ^ v44;
  LODWORD(v44) = ((4 * v101) ^ 0x43446720) & v101 ^ (4 * v101) & 0x50D119C8;
  LODWORD(v86) = (v44 ^ 0x40400100) & (16 * v86) ^ v86;
  LODWORD(v44) = ((16 * (v44 ^ 0x109118C8)) ^ 0xD119C80) & (v44 ^ 0x109118C8) ^ (16 * (v44 ^ 0x109118C8)) & 0x50D119C0;
  LODWORD(v86) = v86 ^ 0x50D119C8 ^ (v44 ^ 0x111800) & (v86 << 8);
  LODWORD(v85) = (v45 - 1312381774) ^ (2 * ((v86 << 16) & 0x50D10000 ^ v86 ^ ((v86 << 16) ^ 0x19C80000) & (((v44 ^ 0x50C00148) << 8) & 0x50D10000 ^ (((v44 ^ 0x50C00148) << 8) ^ 0x51190000) & (v44 ^ 0x50C00148) ^ 0xC00000)));
  v102 = (v100 ^ 0xA314F1C9) & (2 * (v100 & 0xB454F502)) ^ v100 & 0xB454F502;
  LODWORD(v86) = ((2 * (v100 ^ 0xCB3CD1C9)) ^ 0xFED04996) & (v100 ^ 0xCB3CD1C9) ^ (2 * (v100 ^ 0xCB3CD1C9)) & 0x7F6824CA;
  LODWORD(v93) = v86 ^ 0x1282449;
  LODWORD(v86) = (v86 ^ 0x72400000) & (4 * v102) ^ v102;
  v103 = ((4 * v93) ^ 0xFDA0932C) & v93 ^ (4 * v93) & 0x7F6824C8;
  LODWORD(v86) = v86 ^ 0x7F6824CB ^ (v103 ^ 0x7D200000) & (16 * v86);
  v104 = (16 * (v103 ^ 0x24824C3)) & 0x7F6824C0 ^ 0x968204B ^ ((16 * (v103 ^ 0x24824C3)) ^ 0xF6824CB0) & (v103 ^ 0x24824C3);
  LODWORD(v86) = (v86 << 8) & 0x7F682400 ^ v86 ^ ((v86 << 8) ^ 0x6824CB00) & v104;
  LODWORD(v93) = (v86 << 16) & 0x7F680000 ^ v86 ^ ((v86 << 16) ^ 0x24CB0000) & ((v104 << 8) & 0x7F680000 ^ 0x17480000 ^ ((v104 << 8) ^ 0x68240000) & v104);
  v105 = (v65 ^ 0x36F6C3B) & (2 * (v65 & 0x8B4F4E3C)) ^ v65 & 0x8B4F4E3C;
  LODWORD(v86) = ((2 * (v65 ^ 0x1E5F41B)) ^ 0x1555744E) & (v65 ^ 0x1E5F41B) ^ (2 * (v65 ^ 0x1E5F41B)) & 0x8AAABA26;
  v106 = v86 ^ 0x8AAA8A21;
  LODWORD(v86) = (v86 ^ 0x3000) & (4 * v105) ^ v105;
  v107 = ((4 * v106) ^ 0x2AAAE89C) & v106 ^ (4 * v106) & 0x8AAABA24;
  LODWORD(v86) = (v107 ^ 0xAAAA800) & (16 * v86) ^ v86;
  v108 = ((16 * (v107 ^ 0x80001223)) ^ 0xAAABA270) & (v107 ^ 0x80001223) ^ (16 * (v107 ^ 0x80001223)) & 0x8AAABA20;
  LODWORD(v86) = v86 ^ 0x8AAABA27 ^ (v108 ^ 0x8AAAA200) & (v86 << 8);
  LODWORD(v86) = v65 ^ (2 * ((v86 << 16) & 0xAAA0000 ^ v86 ^ ((v86 << 16) ^ 0x3A270000) & ((v108 << 8) & 0xAAA0000 ^ ((v108 << 8) ^ 0x2AA20700) & v108 ^ 0x80000))) ^ v85 ^ 0x1DC2EE32;
  v109 = v84 ^ v100 ^ ((v84 ^ 0x5DD7BDF1) + 1333830090) ^ ((v84 ^ 0x7ECE6CC3) + 1821995260) ^ ((v84 ^ 0x3D4EDD06) + 790217023) ^ ((v84 ^ 0xF3FFEFF3) - 509021236) ^ (2 * v93) ^ v85 ^ 0x1DC2EE32;
  v110 = ((v109 ^ 0xFEEF5AD1) + 2071820932) ^ ((v109 ^ 0xE6B23049) + 1663045660) ^ ((v109 ^ 0x5A160B25) - 544986248);
  LODWORD(v44) = (LODWORD(STACK[0xDC0]) << 8) ^ 0xDC865DE0;
  LODWORD(STACK[0xB10]) = v96;
  v111 = v44 & (v96 ^ 0xFFFFFFF3) & 0xFFFFFFE0 | v96 & 0x1F;
  LODWORD(v44) = v84 + 811119380 + (((v86 ^ 0x7ACCBFF) - 321419774) ^ ((v86 ^ 0x9EBEC909) + 1975878904) ^ ((v86 ^ 0x6EFB066A) - 2055189611));
  LODWORD(v84) = v44 ^ v86 ^ ((v44 ^ 0x84736BB2) + 1092580468) ^ ((v44 ^ 0x6D4EA98) - 1011288742) ^ ((v44 ^ 0x478B9EEB) - 2098757333) ^ ((v44 ^ 0xFFBFFFFF) + 986964031);
  LODWORD(v85) = (((v85 ^ 0x68C4791F) - 1963366189) ^ ((v85 ^ 0x60A73E19) - 2103824427) ^ ((v85 ^ 0x681697DA) - 1976859112)) - v110 + v44 - 993249141;
  LODWORD(v65) = (v85 ^ 0x573864C0) & (2 * (v85 & 0x46306815)) ^ v85 & 0x46306815;
  LODWORD(v44) = ((2 * (v85 ^ 0xD33824E2)) ^ 0x2A1099EE) & (v85 ^ 0xD33824E2) ^ (2 * (v85 ^ 0xD33824E2)) & 0x95084CF6;
  v112 = v44 ^ 0x95084411;
  LODWORD(v44) = (v44 ^ 0xE4) & (4 * v65) ^ v65;
  LODWORD(v65) = ((4 * v112) ^ 0x542133DC) & v112 ^ (4 * v112) & 0x95084CF4;
  LODWORD(v44) = (v65 ^ 0x140000D0) & (16 * v44) ^ v44;
  LODWORD(v65) = ((16 * (v65 ^ 0x81084C23)) ^ 0x5084CF70) & (v65 ^ 0x81084C23) ^ (16 * (v65 ^ 0x81084C23)) & 0x95084CF0;
  LODWORD(v44) = v44 ^ 0x95084CF7 ^ (v65 ^ 0x10004C00) & (v44 << 8);
  v113 = (v44 << 16) & 0x15080000 ^ v44 ^ ((v44 << 16) ^ 0x4CF70000) & (((v65 ^ 0x85080087) << 8) & 0x15080000 ^ 0x15000000 ^ (((v65 ^ 0x85080087) << 8) ^ 0x84C0000) & (v65 ^ 0x85080087));
  LODWORD(v44) = v110 + 574651222 + (((v84 ^ 0x7275C6F3) + 21736794) ^ ((v84 ^ 0xE965D515) - 1705263424) ^ ((v84 ^ 0xECFA50CA) - 1614529695));
  v114 = (((v84 ^ 0x7B6EB01) + 1955102892) ^ ((v84 ^ 0xA8E5BC2A) - 606349439) ^ ((v84 ^ 0xD8B91407) - 1417183314)) + (((v86 ^ 0x46B000E9) + 1221059011) ^ ((v86 ^ 0x59849E2D) + 1475575559) ^ ((v86 ^ 0x524D3DD6) + 1547361534));
  LODWORD(v84) = v84 ^ v85 ^ (2 * v113);
  v115 = STACK[0xED0];
  v116 = LODWORD(STACK[0xED0]);
  LODWORD(STACK[0xCF0]) = (v97 | 0xFFFFFF00) & ((LODWORD(STACK[0xDD0]) << 8) ^ 0x6ACC316E) | v87 & 0x91;
  LODWORD(v85) = (((v114 + 1765561473) ^ 0xA05A9648) - 1514495022) ^ (v114 + 1765561473) ^ (((v114 + 1765561473) ^ 0x149BE68F) + 293327639) ^ (((v114 + 1765561473) ^ 0xB021045E) - 1245630008) ^ (((v114 + 1765561473) ^ 0xFEFFBEFF) - 81818777);
  LODWORD(v44) = (v114 - 1986856314) ^ v44 ^ ((v44 ^ 0x7CDE265D) - 1209656497) ^ ((v44 ^ 0xDE209CAB) + 353935801) ^ ((v44 ^ 0xC9CFA7F5) + 49781479) ^ ((v44 ^ 0x5FF6DFEF) - 1798380803) ^ (((v114 - 1986856314) ^ 0xA78FE823) + 629142256) ^ (((v114 - 1986856314) ^ 0xA909D0DD) + 737790482) ^ (((v114 - 1986856314) ^ 0xC522202) - 1901971249) ^ (((v114 - 1986856314) ^ 0x7FDBFFCF) - 47454972) ^ v85 ^ 0x3EE45577;
  LODWORD(v44) = ((v44 ^ 0xF9469876) + 797348909) ^ ((v44 ^ 0xBF6EB212) + 1773059657) ^ ((v44 ^ 0x6F17D9C1) - 1177037412);
  v117 = ((v110 + 1767179355) ^ 0x2900C2E5) & (2 * ((v110 + 1767179355) & 0xA25482F5)) ^ (v110 + 1767179355) & 0xA25482F5;
  LODWORD(v65) = ((2 * ((v110 + 1767179355) ^ 0x2988C78D)) ^ 0x17B88AF0) & ((v110 + 1767179355) ^ 0x2988C78D) ^ (2 * ((v110 + 1767179355) ^ 0x2988C78D)) & 0x8BDC4578;
  LODWORD(v93) = v65 ^ 0x88444508;
  LODWORD(v65) = (v65 ^ 0x3900070) & (4 * v117) ^ v117;
  v118 = ((4 * v93) ^ 0x2F7115E0) & v93 ^ (4 * v93) & 0x8BDC4578;
  LODWORD(v65) = (v118 ^ 0xB500560) & (16 * v65) ^ v65;
  v119 = ((16 * (v118 ^ 0x808C4018)) ^ 0xBDC45780) & (v118 ^ 0x808C4018) ^ (16 * (v118 ^ 0x808C4018)) & 0x8BDC4540;
  LODWORD(v65) = v65 ^ 0x8BDC4578 ^ (v119 ^ 0x89C44500) & (v65 << 8);
  LODWORD(v87) = v85 ^ 0x3EE45577 ^ (v110 + 1767179355) ^ (2 * ((v65 << 16) & 0xBDC0000 ^ v65 ^ ((v65 << 16) ^ 0x45780000) & (((v119 ^ 0x2180078) << 8) & 0xBDC0000 ^ 0x3980000 ^ (((v119 ^ 0x2180078) << 8) ^ 0x5C450000) & (v119 ^ 0x2180078))));
  LODWORD(v87) = (((v87 ^ 0x6B5D0051) - 470750338) ^ ((v87 ^ 0x362D78CD) - 1098869790) ^ ((v87 ^ 0x2ED7EF88) - 1501952859)) - (v44 + (((v85 ^ 0x1D41A60D) - 598078330) ^ ((v85 ^ 0xCC607A57) + 226218208) ^ ((v85 ^ 0x2B3E163C) - 366625611))) - 1874618503;
  LODWORD(v85) = (((v85 ^ 0xB0DD06BB) - 2143941318) ^ ((v85 ^ 0x9B8A147C) - 1419698177) ^ ((v85 ^ 0xE443E6BA) - 727126727)) + 1418565876;
  LODWORD(v84) = (((v84 ^ 0x51ABE03B) - 1042591650) ^ ((v84 ^ 0x387DC8C0) - 1475512153) ^ ((v84 ^ 0x7A1C9A2C) - 362010037)) - v110 + v85 - v87;
  LODWORD(STACK[0xD00]) = ((((v94 ^ 0x28DEBF) & (v116 ^ 0xFFFF6F) | v115 & 0xD4) << 8) ^ 0x7521523E) & (v61 ^ 0xFFFFFFBF) | v95 & 0xC1;
  v120 = (((v84 + 1907273044) ^ 0xE88624FF) - 1972890473) ^ (v84 + 1907273044) ^ (((v84 + 1907273044) ^ 0xA2F3CA89) - 1071777055) ^ (((v84 + 1907273044) ^ 0x88DFD81F) - 365827977) ^ (((v84 + 1907273044) ^ 0x5FBBF9FF) + 1029032343);
  LODWORD(v97) = (((v85 - v87) ^ 0xA6C9A576) + 1567997113) ^ (v85 - v87) ^ (((v85 - v87) ^ 0xD8716CC2) + 600667405) ^ (((v85 - v87) ^ 0x504D27A) - 21443659) ^ (((v85 - v87) ^ 0x7FFFFDFF) - 2075925454) ^ v120 ^ 0xB0EFE3E0;
  LODWORD(v84) = v84 + v85 + v44 - 1054007049;
  LODWORD(v44) = (v87 ^ 0xF35493D) & (2 * (v87 & 0xAFB64D3D)) ^ v87 & 0xAFB64D3D;
  LODWORD(v86) = ((2 * (v87 ^ 0x473DDB6F)) ^ 0xD1172CA4) & (v87 ^ 0x473DDB6F) ^ (2 * (v87 ^ 0x473DDB6F)) & 0xE88B9652;
  LODWORD(v65) = v86 ^ 0x28889252;
  LODWORD(v86) = (v86 ^ 0xC0030400) & (4 * v44) ^ v44;
  LODWORD(v44) = ((4 * v65) ^ 0xA22E5948) & v65 ^ (4 * v65) & 0xE88B9650;
  LODWORD(v86) = (v44 ^ 0xA00A1040) & (16 * v86) ^ v86;
  LODWORD(v44) = ((16 * (v44 ^ 0x48818612)) ^ 0x88B96520) & (v44 ^ 0x48818612) ^ (16 * (v44 ^ 0x48818612)) & 0xE88B9640;
  LODWORD(v86) = v86 ^ 0xE88B9652 ^ (v44 ^ 0x88890400) & (v86 << 8);
  v121 = (v84 ^ 0x7BE84C66) & (2 * (v84 & 0x438D4968)) ^ v84 & 0x438D4968;
  LODWORD(v61) = ((2 * (v84 ^ 0xFAE25CB6)) ^ 0x72DE2BBC) & (v84 ^ 0xFAE25CB6) ^ (2 * (v84 ^ 0xFAE25CB6)) & 0xB96F15DE;
  LODWORD(v93) = v61 ^ 0x89211442;
  LODWORD(v61) = (v61 ^ 0x104E0180) & (4 * v121) ^ v121;
  v122 = ((4 * v93) ^ 0xE5BC5778) & v93 ^ (4 * v93) & 0xB96F15D8;
  LODWORD(v61) = (v122 ^ 0xA12C1540) & (16 * v61) ^ v61;
  v123 = ((16 * (v122 ^ 0x18430086)) ^ 0x96F15DE0) & (v122 ^ 0x18430086) ^ (16 * (v122 ^ 0x18430086)) & 0xB96F15C0;
  LODWORD(v61) = v61 ^ 0xB96F15DE ^ (v123 ^ 0x90611500) & (v61 << 8);
  LODWORD(v87) = v84 ^ v87 ^ v120 ^ 0xB0EFE3E0 ^ (2 * ((v86 << 16) & 0x688B0000 ^ v86 ^ ((v86 << 16) ^ 0x16520000) & (((v44 ^ 0x60029252) << 8) & 0xE88B0000 ^ 0x60090000 ^ (((v44 ^ 0x60029252) << 8) ^ 0x8B960000) & (v44 ^ 0x60029252)) ^ v61 ^ (v61 << 16) & 0x396F0000 ^ ((v61 << 16) ^ 0x15DE0000) & (((v123 ^ 0x290E001E) << 8) & 0x396F0000 ^ 0x106A0000 ^ (((v123 ^ 0x290E001E) << 8) ^ 0x6F150000) & (v123 ^ 0x290E001E))));
  LODWORD(v87) = ((v87 ^ 0x43DD57F0) + 1091734513) ^ ((v87 ^ 0x542EBF3A) + 1457611579) ^ ((v87 ^ 0x5767C7F1) + 1437080562);
  LODWORD(v85) = v84 - 1134171718 + (((v97 ^ 0x7CD6598A) - 766277866) ^ ((v97 ^ 0x4F507F57) - 506093111) ^ ((v97 ^ 0x1A3BEC9A) - 1262603770));
  LODWORD(v45) = v85 ^ v97 ^ ((v85 ^ 0x79F3C959) - 2044951666) ^ ((v85 ^ 0x1F059249) - 521480034) ^ ((v85 ^ 0x911931F0) + 1861647141) ^ ((v85 ^ 0xF7FFDFCB) + 135304480);
  LODWORD(v61) = (((v45 ^ 0x8A84E400) - 1018632886) ^ ((v45 ^ 0x98BFFF36) - 780927360) ^ ((v45 ^ 0x8106C3D4) - 926236002)) + (((v97 ^ 0x27152EE2) + 1329784097) ^ ((v97 ^ 0x5CFEA298) + 883517787) ^ ((v97 ^ 0xE8C6E1B3) - 2137970062));
  LODWORD(v86) = (((v45 ^ 0x9E24BF1) + 1076775609) ^ ((v45 ^ 0x71500C31) + 949751161) ^ ((v45 ^ 0xEB8F9F22) - 1572626836)) + 453502595 + v87;
  v124 = (((v120 ^ 0x2CAE5D73) + 1673412973) ^ ((v120 ^ 0x1C3E04F6) + 1395529962) ^ ((v120 ^ 0xAD819613) - 493778419)) + v85 - v87 - 1056978498;
  v125 = v124 ^ v45 ^ ((v124 ^ 0xB8BC5C38) + 401997041) ^ ((v124 ^ 0x53E1E7E8) - 56080607) ^ ((v124 ^ 0x44161B0C) - 346047547) ^ ((v124 ^ 0xFFFDFFEB) + 1353998116);
  LODWORD(v85) = (((v61 - 1630666920) ^ 0x8FCCD140) - 838294388) ^ (v61 - 1630666920) ^ (((v61 - 1630666920) ^ 0xF0EFEDC2) - 1322543094) ^ (((v61 - 1630666920) ^ 0x3EEF4909) + 2133540035) ^ (((v61 - 1630666920) ^ 0xFFF7FFBF) - 1103918475);
  LODWORD(v84) = (((v61 - 585710218) ^ 0xC3183DA7) + 1677330243) ^ (v61 - 585710218) ^ (((v61 - 585710218) ^ 0x8CF05047) + 739404451) ^ (((v61 - 585710218) ^ 0xAF0A7F85) + 266880353) ^ (((v61 - 585710218) ^ 0xBFFFD77F) + 522055067) ^ v85 ^ 0xC6B1CA9 ^ v86 ^ ((v86 ^ 0xBCD83015) + 1023958881) ^ ((v86 ^ 0x2EA63368) - 1351197666) ^ ((v86 ^ 0x1B9E6C0A) - 1706163328) ^ ((v86 ^ 0xF7CFFFFD) + 1981780105);
  LODWORD(v97) = (v87 + 271733360) ^ v85 ^ 0xC6B1CA9 ^ (((v87 + 271733360) ^ 0xF41ED224) + 1961513400) ^ (((v87 + 271733360) ^ 0x268F22E1) - 1501847181) ^ (((v87 + 271733360) ^ 0xD2653357) + 1385279685) ^ (((v87 + 271733360) ^ 0x7FFFBFFE) - 16040850);
  LODWORD(v44) = ((v85 ^ 0xDEB72345) - 1434949482) ^ ((v85 ^ 0x53D4F25) + 1911686390) ^ ((v85 ^ 0x50BAD84F) + 611685280);
  LODWORD(v84) = ((v84 ^ 0x288B7194) - 535165426) ^ ((v84 ^ 0x892633EA) + 1102529652) ^ ((v84 ^ 0x96C3CA18) + 1582480770);
  LODWORD(v85) = (((v97 ^ 0x51AEB817) + 1331906381) ^ ((v97 ^ 0x490D9FA5) + 1472225535) ^ ((v97 ^ 0xD5F8CD43) - 885706215)) - (((v85 ^ 0x6C43A192) - 1613282619) ^ ((v85 ^ 0xB2EA7993) + 1098816198) ^ ((v85 ^ 0x60925235) - 1828277916)) - v84;
  LODWORD(v97) = v85 - 1802330467;
  LODWORD(v86) = v44 - v85 - 1447962719;
  LODWORD(v45) = (((v125 ^ 0x926E1AD) + 1584572236) ^ ((v125 ^ 0x79E1A46A) + 783671949) ^ ((v125 ^ 0xB34CC212) - 468155147)) - v87 + v86;
  LODWORD(v87) = v45 + v44 + v84 - 1812761509;
  LODWORD(v45) = v45 + 29365896;
  v126 = (v45 ^ 0x1C2A76DD) & (2 * (v45 & 0x1CB274D8)) ^ v45 & 0x1CB274D8;
  v127 = ((2 * (v45 ^ 0x46E965D)) ^ 0x31B9C50A) & (v45 ^ 0x46E965D) ^ (2 * (v45 ^ 0x46E965D)) & 0x18DCE284;
  v128 = v127 ^ 0x8442285;
  v129 = (v127 ^ 0x1098C000) & (4 * v126) ^ v126;
  v130 = ((4 * v128) ^ 0x63738A14) & v128 ^ (4 * v128) & 0x18DCE284;
  v131 = (v130 ^ 0x508200) & (16 * v129) ^ v129;
  v132 = ((16 * (v130 ^ 0x188C6081)) ^ 0x8DCE2850) & (v130 ^ 0x188C6081) ^ (16 * (v130 ^ 0x188C6081)) & 0x18DCE280;
  v133 = v131 ^ 0x18DCE285 ^ (v132 ^ 0x8CC2000) & (v131 << 8);
  v134 = v45 ^ (2 * ((v133 << 16) & 0x18DC0000 ^ v133 ^ ((v133 << 16) ^ 0x62850000) & (((v132 ^ 0x1010C285) << 8) & 0x18DC0000 ^ (((v132 ^ 0x1010C285) << 8) ^ 0x5CE20000) & (v132 ^ 0x1010C285) ^ 0x1C0000)));
  v135 = (v86 ^ 0xDEA08427) & (2 * (v86 & 0xDC34D4A7)) ^ v86 & 0xDC34D4A7;
  v136 = ((2 * (v86 ^ 0xCEA9AD65)) ^ 0x253AF384) & (v86 ^ 0xCEA9AD65) ^ (2 * (v86 ^ 0xCEA9AD65)) & 0x129D79C2;
  v137 = v136 ^ 0x12850842;
  v138 = (v136 ^ 0x107180) & (4 * v135) ^ v135;
  v139 = ((4 * v137) ^ 0x4A75E708) & v137 ^ (4 * v137) & 0x129D79C0;
  v140 = (v139 ^ 0x2156100) & (16 * v138) ^ v138;
  v141 = ((16 * (v139 ^ 0x108818C2)) ^ 0x29D79C20) & (v139 ^ 0x108818C2) ^ (16 * (v139 ^ 0x108818C2)) & 0x129D79C0;
  v142 = v140 ^ 0x129D79C2 ^ (v141 ^ 0x951800) & (v140 << 8);
  v143 = v86 ^ (2 * ((v142 << 16) & 0x129D0000 ^ v142 ^ ((v142 << 16) ^ 0x79C20000) & (((v141 ^ 0x120861C2) << 8) & 0x129D0000 ^ 0x2840000 ^ (((v141 ^ 0x120861C2) << 8) ^ 0x1D790000) & (v141 ^ 0x120861C2)))) ^ v134 ^ 0x7B50E6FF;
  v144 = v87 - 1320319654 + (((v143 ^ 0x16E4E845) - 60190761) ^ ((v143 ^ 0xDE2230E7) + 883906421) ^ ((v143 ^ 0x479BA8AC) - 1391014080));
  v145 = (v144 ^ 0xFF8E9FA3) & (2 * (v144 & 0xF80C9FA2)) ^ v144 & 0xF80C9FA2;
  LODWORD(v86) = ((2 * (v144 ^ 0xAF97B2E7)) ^ 0xAF365A8A) & (v144 ^ 0xAF97B2E7) ^ (2 * (v144 ^ 0xAF97B2E7)) & 0x579B2D44;
  LODWORD(v89) = v86 ^ 0x50892545;
  LODWORD(v86) = (v86 ^ 0x120800) & (4 * v145) ^ v145;
  v146 = ((4 * v89) ^ 0x5E6CB514) & v89 ^ (4 * v89) & 0x579B2D44;
  LODWORD(v86) = (v146 ^ 0x56082500) & (16 * v86) ^ v86;
  v147 = ((16 * (v146 ^ 0x1930841)) ^ 0x79B2D450) & (v146 ^ 0x1930841) ^ (16 * (v146 ^ 0x1930841)) & 0x579B2D40;
  LODWORD(v86) = v86 ^ 0x579B2D45 ^ (v147 ^ 0x51920400) & (v86 << 8);
  v148 = v144 ^ v143 ^ (2 * ((v86 << 16) & 0x579B0000 ^ v86 ^ ((v86 << 16) ^ 0x2D450000) & (((v147 ^ 0x6092905) << 8) & 0x579B0000 ^ 0x44920000 ^ (((v147 ^ 0x6092905) << 8) ^ 0x1B2D0000) & (v147 ^ 0x6092905))));
  LODWORD(v87) = ((v97 ^ 0x2C9A3A90) - 920875125) ^ v97 ^ ((v97 ^ 0x56C3C385) - 1287293280) ^ ((v97 ^ 0x9FDF880F) + 2052668694) ^ ((v97 ^ 0xFFFF3BFF) + 444174054) ^ v87 ^ ((v87 ^ 0xA485EAFE) - 1414539672) ^ ((v87 ^ 0xC449559E) - 882677496) ^ ((v87 ^ 0x6FE281FD) + 1623768421) ^ ((v87 ^ 0xFFFBFDFB) - 254688925) ^ v134 ^ 0x7B50E6FF;
  v149 = ((v87 ^ 0x7F73127B) + 1963484493) ^ ((v87 ^ 0x9EA8449D) - 1798098005) ^ ((v87 ^ 0x5C248848) + 1449131904);
  LODWORD(v97) = (((v134 ^ 0xAF12BF44) + 733849157) ^ ((v134 ^ 0x5A818ACF) - 567372848) ^ ((v134 ^ 0xD9908459) + 1564450138)) - v149 + v144 + 306626814;
  v150 = ((v97 ^ 0x3BE89FD8) - 814399309) ^ v97 ^ ((v97 ^ 0xBF511136) + 1271713373) ^ ((v97 ^ 0xB8245094) + 1287229439) ^ ((v97 ^ 0x37FFFEEF) - 1016979066);
  LODWORD(v84) = (((v148 ^ 0x379CAFD9) - 1600765297) ^ ((v148 ^ 0x1F968DAA) - 2003017474) ^ ((v148 ^ 0x40FF30DB) - 671752819)) + 1462350337;
  v151 = (((v143 ^ 0xA7CBC1B9) - 1864713910) ^ ((v143 ^ 0xD61951BF) - 519558832) ^ ((v143 ^ 0x441F4786) + 1930313591)) + v84;
  v152 = ((v150 & 8 ^ 0xBAE5A278) + 430193439) ^ (v150 & 8 | 0x2BB9D967) ^ ((v150 & 8 ^ 0x7C999B7A) - 539491811);
  LODWORD(v85) = (((v152 + 1618826468) ^ 0x99CED210) + 1703920549) ^ (v152 + 1618826468) ^ (((v152 + 1618826468) ^ 0xC6A8B65) - 265577774) ^ (((v152 + 1618826468) ^ 0xE9E14CC0) + 362831221) ^ (((v152 + 1618826468) ^ 0x7FFBFBFE) - 2084902325);
  v154 = v149 + 1531639863 + v84;
  v155 = -1493137486 - v152;
  if (((v148 ^ 0xE9444557) & (v85 ^ 0x3BEEE4B) ^ v85 & 0x3B21F071) == 0x320E041)
  {
    v155 = v152 + 1618826468;
  }

  v156 = (((v148 ^ 0x49C13F6D) - 2079641755) ^ ((v148 ^ 0x8BD59A1) - 982038103) ^ ((v148 ^ 0x9319D3EA) + 1590936548)) - 317318206 + v155;
  v157 = v156 ^ v150 & 0xFFFFFFF7 ^ ((v156 ^ 0xEB539CB0) + 69782643) ^ ((v156 ^ 0x68BE0D5D) - 2017108576) ^ ((v156 ^ 0x6C96C037) - 2081582858) ^ ((v156 ^ 0xFFFFFEE7) + 277130790);
  v158 = (((v151 + 1393897702) ^ 0xEA8823A6) - 479510234) ^ (v151 + 1393897702) ^ (((v151 + 1393897702) ^ 0x123E3FC8) + 467492172) ^ (((v151 + 1393897702) ^ 0x21513E8D) + 682777615) ^ (((v151 + 1393897702) ^ 0x2FFBBF9F) + 639163677);
  v153 = v151 + 1970105696;
  v159 = v154 ^ v153 ^ ((v154 ^ 0x9D92DA72) - 843180675) ^ ((v154 ^ 0xFF5E35E5) - 1351419156) ^ ((v154 ^ 0x32A00AB9) + 1653392824) ^ ((v154 ^ 0xFFBFD5DF) - 1349313838) ^ ((v153 ^ 0xC2AFC026) + 1180594536) ^ ((v153 ^ 0x417AA3A5) - 980741403) ^ ((v153 ^ 0x8724D602) + 64317252) ^ ((v153 ^ 0x7FFFFB3F) - 82949505) ^ v158 ^ 0xFCBBD639;
  v160 = ((v159 ^ 0x6D31B624) - 390580293) ^ ((v159 ^ 0x1348D315) - 1765715316) ^ ((v159 ^ 0x40F1B50) - 2121884977);
  v161 = ((v149 - 2112788942) ^ 0xD1EE3977) & (2 * ((v149 - 2112788942) & 0x99ECB974)) ^ (v149 - 2112788942) & 0x99ECB974;
  v162 = ((2 * ((v149 - 2112788942) ^ 0xC1F64BF7)) ^ 0xB035E506) & ((v149 - 2112788942) ^ 0xC1F64BF7) ^ (2 * ((v149 - 2112788942) ^ 0xC1F64BF7)) & 0x581AF282;
  v163 = v162 ^ 0x480A1281;
  v164 = (v162 ^ 0x10E000) & (4 * v161) ^ v161;
  v165 = ((4 * v163) ^ 0x606BCA0C) & v163 ^ (4 * v163) & 0x581AF280;
  v166 = (v165 ^ 0x400AC200) & (16 * v164) ^ v164;
  v167 = ((16 * (v165 ^ 0x18103083)) ^ 0x81AF2830) & (v165 ^ 0x18103083) ^ (16 * (v165 ^ 0x18103083)) & 0x581AF280;
  v168 = v166 ^ 0x581AF283 ^ (v167 ^ 0xA2000) & (v166 << 8);
  v169 = (v149 - 2112788942) ^ (2 * ((v168 << 16) & 0x581A0000 ^ v168 ^ ((v168 << 16) ^ 0x72830000) & (((v167 ^ 0x5810D283) << 8) & 0x581A0000 ^ 0x40080000 ^ (((v167 ^ 0x5810D283) << 8) ^ 0x1AF20000) & (v167 ^ 0x5810D283)))) ^ v158 ^ 0xFCBBD639;
  v170 = ((v158 ^ 0x8A26033C) - 1227989083) ^ ((v158 ^ 0x5E3FA384) + 1658322717) ^ ((v158 ^ 0x170E03DF) + 736517960);
  v171 = (((v169 ^ 0xFF68DE6D) + 1166209230) ^ ((v169 ^ 0x6006665B) - 622049028) ^ ((v169 ^ 0x1C14AF01) - 1493270110)) - (((v158 ^ 0x61D2FFE8) + 1654052399) ^ ((v158 ^ 0x50870A9D) + 1405297500) ^ ((v158 ^ 0xC7496809) - 1005764144)) - v160;
  v172 = v171 + 427638316;
  v173 = v170 - v171 + 677814851;
  v174 = (((v157 ^ 0x9B872929) - 850352697) ^ ((v157 ^ 0xFC94F49F) - 1438418831) ^ ((v157 ^ 0xC665F590) - 1867351680)) - v149 + v173;
  v175 = v170 + v160;
  v176 = (((v174 + 1368090769) ^ 0x45A6389A) + 1531722516) ^ (v174 + 1368090769) ^ (((v174 + 1368090769) ^ 0xC8209985) - 691365363) ^ (((v174 + 1368090769) ^ 0x936CA2D7) - 1920556705) ^ (((v174 + 1368090769) ^ 0xFFFFFFBE) - 518652872);
  v177 = ((v173 ^ 0x2B132B9F) + 818137351) ^ v173 ^ ((v173 ^ 0x4BD1877E) + 1342268904) ^ ((v173 ^ 0x7B166E7C) + 1623624934) ^ ((v173 ^ 0xFFFBDFFB) - 466928285) ^ v176 ^ 0xCAA4D3BA;
  v178 = v174 + v175 - 1917701858;
  v179 = ((v177 ^ 0x40E57CDD) + 115420648) ^ ((v177 ^ 0x9D218CA3) - 618275430) ^ ((v177 ^ 0xA8CA655A) - 288476063);
  v180 = v178 + 416737329 + (((v177 ^ 0xDB5622AF) - 1710756544) ^ ((v177 ^ 0xCD2AFC80) - 1938083055) ^ ((v177 ^ 0xD9E2EC85) - 1733090538));
  v181 = ((v172 ^ 0x9736A5BD) + 897423692) ^ v172 ^ ((v172 ^ 0x8EB12C81) + 754585720) ^ ((v172 ^ 0x3B84B542) - 1714452043) ^ ((v172 ^ 0x7FB7FF77) - 570637438) ^ v178 ^ ((v178 ^ 0x48104228) + 796795578) ^ ((v178 ^ 0x9B98B0AC) - 50933698) ^ ((v178 ^ 0x94869610) - 202836350) ^ ((v178 ^ 0xDF9FFBFA) - 1192125588) ^ v176 ^ 0xCAA4D3BA;
  v182 = ((v181 ^ 0x20015B55) - 879630227) ^ ((v181 ^ 0xD99A4D2E) + 839581208) ^ ((v181 ^ 0x170F65D0) - 56633622);
  v183 = (((v182 - 1707629087) ^ 0xF8B4A8E0) - 856503764) ^ (v182 - 1707629087) ^ (((v182 - 1707629087) ^ 0xF93B5264) - 847433552) ^ (((v182 - 1707629087) ^ 0xB5499C4F) - 2129658235) ^ (((v182 - 1707629087) ^ 0x7F7FFBFF) + 1262065973);
  v184 = (((v176 ^ 0xC5BA98A1) - 253643547) ^ ((v176 ^ 0xFC4A2202) - 921629112) ^ ((v176 ^ 0xD8E546D5) - 306287983)) + v180 - v182 + 1124598566;
  v185 = (v184 ^ 0xA865455E) & (2 * (v184 & 0xAD75685F)) ^ v184 & 0xAD75685F;
  v186 = ((2 * (v184 ^ 0xBA6715D4)) ^ 0x2E24FB16) & (v184 ^ 0xBA6715D4) ^ (2 * (v184 ^ 0xBA6715D4)) & 0x17127D8A;
  v187 = v186 ^ 0x11120489;
  v188 = (v186 ^ 0x6006100) & (4 * v185) ^ v185;
  v189 = ((4 * v187) ^ 0x5C49F62C) & v187 ^ (4 * v187) & 0x17127D88;
  v190 = (v189 ^ 0x14007400) & (16 * v188) ^ v188;
  v191 = ((16 * (v189 ^ 0x3120983)) ^ 0x7127D8B0) & (v189 ^ 0x3120983) ^ (16 * (v189 ^ 0x3120983)) & 0x17127D80;
  v192 = v190 ^ 0x17127D8B ^ (v191 ^ 0x11025800) & (v190 << 8);
  v193 = (v192 << 16) & 0x17120000 ^ v192 ^ ((v192 << 16) ^ 0x7D8B0000) & (((v191 ^ 0x610250B) << 8) & 0x17120000 ^ 0x5020000 ^ (((v191 ^ 0x610250B) << 8) ^ 0x127D0000) & (v191 ^ 0x610250B));
  v194 = (v180 ^ 0xBF867B34) & (2 * (v180 & 0xBFC77B26)) ^ v180 & 0xBFC77B26;
  v195 = ((2 * (v180 ^ 0xEE06ED34)) ^ 0xA3832C24) & (v180 ^ 0xEE06ED34) ^ (2 * (v180 ^ 0xEE06ED34)) & 0x51C19612;
  v196 = v195 ^ 0x50409212;
  v197 = (v195 ^ 0x1010400) & (4 * v194) ^ v194;
  v198 = ((4 * v196) ^ 0x47065848) & v196 ^ (4 * v196) & 0x51C19610;
  v199 = (v198 ^ 0x41001000) & (16 * v197) ^ v197;
  v200 = ((16 * (v198 ^ 0x10C18612)) ^ 0x1C196120) & (v198 ^ 0x10C18612) ^ (16 * (v198 ^ 0x10C18612)) & 0x51C19600;
  v201 = v199 ^ 0x51C19612 ^ (v200 ^ 0x10010000) & (v199 << 8);
  v202 = v180 ^ v177 ^ (2 * ((v201 << 16) & 0x51C10000 ^ v201 ^ ((v201 << 16) ^ 0x16120000) & (((v200 ^ 0x41C09612) << 8) & 0x51C10000 ^ 0x10410000 ^ (((v200 ^ 0x41C09612) << 8) ^ 0x41960000) & (v200 ^ 0x41C09612))));
  v203 = v182 - 403743760 + (((v202 ^ 0x8B62390D) - 198340474) ^ ((v202 ^ 0x5E9923DE) + 567708247) ^ ((v202 ^ 0x9CB1D8F5) - 469864066));
  v204 = (((v202 ^ 0x73D063C6) + 211798607) ^ ((v202 ^ 0x7EE2D737) + 28147392) ^ ((v202 ^ 0x447876D7) + 993517408)) + v179;
  v205 = v204 + 184284007;
  v206 = (((v204 - 1707106832) ^ 0x96540B23) + 1457959583) ^ (v204 - 1707106832) ^ (((v204 - 1707106832) ^ 0xF9746CF5) + 969332041) ^ (((v204 - 1707106832) ^ 0x2D9ABC6A) - 316144168) ^ (((v204 - 1707106832) ^ 0x7DF79DFE) - 1119542204);
  v207 = (v205 ^ 0xD3115ADE) & (2 * (v205 & 0xE0595CDF)) ^ v205 & 0xE0595CDF;
  v208 = ((2 * ((v204 + 184284007) ^ 0x13A343C2)) ^ 0xE7F43E3A) & ((v204 + 184284007) ^ 0x13A343C2) ^ (2 * ((v204 + 184284007) ^ 0x13A343C2)) & 0xF3FA1F1C;
  v209 = v208 ^ 0x100A0105;
  v210 = (v208 ^ 0x83E01618) & (4 * v207) ^ v207;
  v211 = ((4 * v209) ^ 0xCFE87C74) & v209 ^ (4 * v209) & 0xF3FA1F1C;
  v212 = (v211 ^ 0xC3E81C10) & (16 * v210) ^ v210;
  v213 = ((16 * (v211 ^ 0x30120309)) ^ 0x3FA1F1D0) & (v211 ^ 0x30120309) ^ (16 * (v211 ^ 0x30120309)) & 0xF3FA1F10;
  v214 = v212 ^ 0xF3FA1F1D ^ (v213 ^ 0x33A01100) & (v212 << 8);
  v215 = v205 ^ v203 ^ ((v203 ^ 0xB0C719A6) + 669745929) ^ ((v203 ^ 0xAE1B1F9) - 1647498408) ^ ((v203 ^ 0x2D0E32B1) - 1172133856) ^ ((v203 ^ 0xFFFBFFBF) + 1758946578) ^ (2 * ((v214 << 16) & 0x73FA0000 ^ v214 ^ ((v214 << 16) ^ 0x1F1D0000) & (((v213 ^ 0xC05A0E0D) << 8) & 0x73FA0000 ^ (((v213 ^ 0xC05A0E0D) << 8) ^ 0x7A1F0000) & (v213 ^ 0xC05A0E0D) ^ 0x1E00000)));
  v216 = (((v202 ^ v184 ^ (2 * v193) ^ 0xD1A121B) + 349001339) ^ ((v202 ^ v184 ^ (2 * v193) ^ 0xFB3600CE) - 488553296) ^ ((v202 ^ v184 ^ (2 * v193) ^ 0x163343BA) + 266602460)) - (((v183 ^ 0x147B8B43) + 1514680067) ^ ((v183 ^ 0xAF37D8A1) - 519799583) ^ ((v183 ^ 0x70F5CED6) + 1053190808)) - 182870093;
  v217 = ((v216 ^ 0xB6CB7CAC) + 543422496) ^ v216 ^ ((v216 ^ 0x8A38817C) + 479200720) ^ ((v216 ^ 0xAB9B7972) + 1026817474) ^ ((v216 ^ 0xFE3FFFEE) + 1754757982);
  LODWORD(STACK[0xCE0]) = HIWORD(v206);
  LODWORD(STACK[0xDB0]) = HIBYTE(v206);
  LODWORD(STACK[0xB80]) = HIWORD(v183);
  LODWORD(STACK[0xE20]) = HIBYTE(v183);
  LODWORD(STACK[0xB90]) = v183 >> 8;
  v218 = ((((((HIWORD(v183) << 8) ^ 0xC7413700) & 0xFE00 ^ 0xFFFFE1FF) & ((HIBYTE(v183) << 16) ^ 0x6F225D) | ((HIWORD(v183) << 8) ^ 0xC7413700) & 0xDD00) ^ 0xEA7EC9) & (BYTE1(v183) ^ 0xFFFF08) | (v183 >> 8) & 0x6B) << 8;
  LODWORD(STACK[0xBD0]) = v206;
  v219 = (((((((HIWORD(v206) << 8) & 0xFF00 ^ 0xC3FF12A5) & ((HIBYTE(v206) << 16) ^ 0xC3705FA5) | (HIWORD(v206) << 8) & 0xA000) ^ 0x10205A) & (BYTE1(v206) ^ 0x563951) ^ (((HIWORD(v206) << 8) & 0xFF00 ^ 0xC3FF12A5) & ((HIBYTE(v206) << 16) ^ 0xC3705FA5) & 0xA9C6A0 | (HIWORD(v206) << 8) & 0x8000)) << 8) ^ 0xFE1A0814) & (v206 ^ 0xFFFFFFF4) | v206 & 0xEB;
  v220 = (((v219 ^ 0x1ED8CFD5) - 1196179832) ^ ((v219 ^ 0x74F69C93) - 761401918) ^ ((v219 ^ 0xCB4BEC10) + 1830853955)) + 1528777978;
  v221 = (v220 ^ 0x548D5B78) & (2 * (v220 & 0x90CE5261)) ^ v220 & 0x90CE5261;
  v222 = ((2 * (v220 ^ 0x5485DF7A)) ^ 0x88971A36) & (v220 ^ 0x5485DF7A) ^ (2 * (v220 ^ 0x5485DF7A)) & 0xC44B8D1A;
  v223 = v222 ^ 0x44488509;
  v224 = (v222 ^ 0x80030800) & (4 * v221) ^ v221;
  v225 = ((4 * v223) ^ 0x112E346C) & v223 ^ (4 * v223) & 0xC44B8D18;
  v226 = (v225 ^ 0xA0400) & (16 * v224) ^ v224;
  v227 = ((16 * (v225 ^ 0xC4418913)) ^ 0x44B8D1B0) & (v225 ^ 0xC4418913) ^ (16 * (v225 ^ 0xC4418913)) & 0xC44B8D10;
  v228 = v226 ^ 0xC44B8D1B ^ (v227 ^ 0x44088100) & (v226 << 8);
  v229 = v220 ^ (2 * ((v228 << 16) & 0x444B0000 ^ v228 ^ ((v228 << 16) ^ 0xD1B0000) & (((v227 ^ 0x80430C0B) << 8) & 0x444B0000 ^ 0x4420000 ^ (((v227 ^ 0x80430C0B) << 8) ^ 0x4B8D0000) & (v227 ^ 0x80430C0B))));
  LODWORD(STACK[0xE00]) = HIBYTE(v215);
  LODWORD(STACK[0xBA0]) = v183;
  LODWORD(STACK[0xB70]) = v215 >> 8;
  LODWORD(STACK[0xDA0]) = HIBYTE(v217);
  LODWORD(STACK[0xBB0]) = v217 >> 8;
  LODWORD(STACK[0xCC0]) = v215;
  v230 = v229 ^ 0x24D34F87 ^ ((v218 ^ 0x810262FF) & (v183 ^ 0x83426775) | v218 & 0x7CBD9800);
  LODWORD(STACK[0xBE0]) = v217;
  v231 = ((((((((v217 >> 8) & 0xFFFF00 ^ 0xC9FA1F00) & 0xF800 ^ 0xFFA07B) & ((HIBYTE(v217) << 16) ^ 0x11E87B) | ((v217 >> 8) & 0xFFFF00 ^ 0xC9FA1F00) & 0x1700) ^ 0x3F1A8E) & (BYTE1(v217) ^ 0xFFFF8E) | (v217 >> 8) & 0xA) << 8) ^ 0xAE1DD06C) & (v217 ^ 0xFFFFFFB0) | v217 & 0x93;
  v232 = v229 ^ 0x24D34F87 ^ ((((((((HIBYTE(v215) << 16) ^ 0x798111) & (~(v215 >> 8) | 0xFF7EFF) | (v215 >> 8) & 0x7E00) ^ 0x2FD305) & (BYTE1(v215) ^ 0xFFFF72) | (v215 >> 8) & 0xEB) << 8) ^ 0x3E145BF7) & (v215 ^ 0xFFFFFF4B) | v215 & 8);
  v233 = ((v229 ^ 0xF08A113A) + 707893386) ^ ((v229 ^ 0xAE59A683) + 1960980273) ^ ((v229 ^ 0x7B97C1F5) - 1590933433);
  v234 = ((v232 ^ 0x1BD0AE52) + 1438077410) ^ ((v232 ^ 0x737D1D61) + 1025172179) ^ ((v232 ^ 0xD935B37F) - 1756214067);
  v235 = (((v230 ^ 0xE7861DBF) + 1000910167) ^ ((v230 ^ 0xE89B94) - 590992514) ^ ((v230 ^ 0x1C207EBA) - 1072771500)) - ((((v229 ^ 0xB2F3F3BC) + 1776239557) ^ ((v229 ^ 0xD2F228E9) + 165582994) ^ ((v229 ^ 0x704E9302) - 1419631749)) + v234);
  v236 = v235 - 505265606;
  v237 = v233 - v235 - 1180271696;
  v238 = (((v231 ^ 0x9E5E24D2) + 1694641502) ^ ((v231 ^ 0x3F56F98C) - 1005916156) ^ ((v231 ^ 0x48E7F232) - 1279525954)) + v237;
  v239 = (((v238 + 1519789148) ^ 0x12183846) - 1891045616) ^ (v238 + 1519789148) ^ (((v238 + 1519789148) ^ 0x49E9990A) - 726053308) ^ (((v238 + 1519789148) ^ 0xC6B51647) + 1541783823) ^ (((v238 + 1519789148) ^ 0xFFEB9FBD) + 1656441077);
  v240 = v238 + v233 + v234 - 988224875;
  v241 = (v237 ^ 0x15C61C) & (2 * (v237 & 0xA255D499)) ^ v237 & 0xA255D499;
  v242 = ((2 * (v237 ^ 0x403CEF0C)) ^ 0xC4D2772A) & (v237 ^ 0x403CEF0C) ^ (2 * (v237 ^ 0x403CEF0C)) & 0xE2693B94;
  v243 = (v242 ^ 0x80403200) & (4 * v241) ^ v241;
  v244 = ((4 * (v242 ^ 0x22290895)) ^ 0x89A4EE54) & (v242 ^ 0x22290895) ^ (4 * (v242 ^ 0x22290895)) & 0xE2693B94;
  v245 = (v244 ^ 0x80202A10) & (16 * v243) ^ v243;
  v246 = ((16 * (v244 ^ 0x62491181)) ^ 0x2693B950) & (v244 ^ 0x62491181) ^ (16 * (v244 ^ 0x62491181)) & 0xE2693B90;
  v247 = v245 ^ 0xE2693B95 ^ (v246 ^ 0x22013900) & (v245 << 8);
  v248 = v239 ^ 0xCF08D6F ^ v237 ^ (2 * ((v247 << 16) & 0x62690000 ^ v247 ^ ((v247 << 16) ^ 0x3B950000) & (((v246 ^ 0xC0680285) << 8) & 0x62690000 ^ 0x2400000 ^ (((v246 ^ 0xC0680285) << 8) ^ 0x693B0000) & (v246 ^ 0xC0680285))));
  v249 = v240 - 395235170 + (((v248 ^ 0xCEEFFB3D) + 1619267063) ^ ((v248 ^ 0xC5B2E55) - 1573857121) ^ ((v248 ^ 0x8E6ED302) + 537208266));
  v250 = ((v236 ^ 0x2B540F71) - 378183154) ^ v236 ^ ((v236 ^ 0x41B31ED9) - 2087554138) ^ ((v236 ^ 0xACC77CDD) + 1860571554) ^ ((v236 ^ 0xFBFEFFF6) + 970953355) ^ v240 ^ ((v240 ^ 0xC4BEBBAE) + 1942455564) ^ ((v240 ^ 0x96898611) + 569424053) ^ ((v240 ^ 0x254E030F) - 1841873493) ^ ((v240 ^ 0x3FFFFFEA) - 2004434608) ^ v239 ^ 0xCF08D6F;
  v251 = ((v250 ^ 0x9892B888) - 42396552) ^ ((v250 ^ 0x74837E8A) + 292082294) ^ ((v250 ^ 0xF7163002) - 1828872962);
  v252 = (v249 ^ 0xCA061977) & (2 * (v249 & 0xEC561D66)) ^ v249 & 0xEC561D66;
  v253 = ((2 * (v249 ^ 0x1A8A2BF3)) ^ 0xEDB86D2A) & (v249 ^ 0x1A8A2BF3) ^ (2 * (v249 ^ 0x1A8A2BF3)) & 0xF6DC3694;
  v254 = v253 ^ 0x12441295;
  v255 = (v253 ^ 0xE0982400) & (4 * v252) ^ v252;
  v256 = ((4 * v254) ^ 0xDB70DA54) & v254 ^ (4 * v254) & 0xF6DC3694;
  v257 = (v256 ^ 0xD2501200) & (16 * v255) ^ v255;
  v258 = ((16 * (v256 ^ 0x248C2481)) ^ 0x6DC36950) & (v256 ^ 0x248C2481) ^ (16 * (v256 ^ 0x248C2481)) & 0xF6DC3690;
  v259 = v257 ^ 0xF6DC3695 ^ (v258 ^ 0x64C02000) & (v257 << 8);
  v260 = v249 ^ v248 ^ (2 * ((v259 << 16) & 0x76DC0000 ^ v259 ^ ((v259 << 16) ^ 0x36950000) & (((v258 ^ 0x921C1685) << 8) & 0x76DC0000 ^ 0x22C80000 ^ (((v258 ^ 0x921C1685) << 8) ^ 0x5C360000) & (v258 ^ 0x921C1685))));
  v261 = (((v239 ^ 0xB94177AA) + 1246627131) ^ ((v239 ^ 0x35CBD369) - 960192006) ^ ((v239 ^ 0xEE258C75) + 489357030)) - v251 + 659041178 + v249;
  v262 = (v261 ^ 0xBB59F094) & (2 * (v261 & 0xB259F2A5)) ^ v261 & 0xB259F2A5;
  v263 = ((2 * (v261 ^ 0xBFDBD4DE)) ^ 0x1B044CF6) & (v261 ^ 0xBFDBD4DE) ^ (2 * (v261 ^ 0xBFDBD4DE)) & 0xD82267A;
  v264 = v263 ^ 0x4822209;
  v265 = (v263 ^ 0x9000430) & (4 * v262) ^ v262;
  v266 = ((4 * v264) ^ 0x360899EC) & v264 ^ (4 * v264) & 0xD822678;
  v267 = (v266 ^ 0x4000060) & (16 * v265) ^ v265;
  v268 = ((16 * (v266 ^ 0x9822613)) ^ 0xD82267B0) & (v266 ^ 0x9822613) ^ (16 * (v266 ^ 0x9822613)) & 0xD822670;
  v269 = v267 ^ 0xD82267B ^ (v268 ^ 0x8022600) & (v267 << 8);
  v270 = v261 ^ (2 * ((v269 << 16) & 0xD820000 ^ v269 ^ ((v269 << 16) ^ 0x267B0000) & (((v268 ^ 0x580004B) << 8) & 0xD820000 ^ 0xD800000 ^ (((v268 ^ 0x580004B) << 8) ^ 0x2260000) & (v268 ^ 0x580004B))));
  v271 = (((v260 ^ 0x9D359ADB) - 129583987) ^ ((v260 ^ 0xBFB3FDFF) - 624897111) ^ ((v260 ^ 0xB80AB68C) - 579233572)) + 243124932;
  v272 = ((v251 - 630266244) ^ 0x70A7D7C2) & (2 * ((v251 - 630266244) & 0x7A2787C4)) ^ (v251 - 630266244) & 0x7A2787C4;
  v273 = ((2 * ((v251 - 630266244) ^ 0x80E3D542)) ^ 0xF588A50C) & ((v251 - 630266244) ^ 0x80E3D542) ^ (2 * ((v251 - 630266244) ^ 0x80E3D542)) & 0xFAC45286;
  v274 = v273 ^ 0xA445282;
  v275 = (v273 ^ 0xF0800000) & (4 * v272) ^ v272;
  v276 = ((4 * v274) ^ 0xEB114A18) & v274 ^ (4 * v274) & 0xFAC45280;
  v277 = (v276 ^ 0xEA004200) & (16 * v275) ^ v275;
  v278 = ((16 * (v276 ^ 0x10C41086)) ^ 0xAC452860) & (v276 ^ 0x10C41086) ^ (16 * (v276 ^ 0x10C41086)) & 0xFAC45280;
  v279 = v277 ^ 0xFAC45286 ^ (v278 ^ 0xA8440000) & (v277 << 8);
  v280 = (v251 - 630266244) ^ (2 * ((v279 << 16) & 0x7AC40000 ^ v279 ^ ((v279 << 16) ^ 0x52860000) & (((v278 ^ 0x52805286) << 8) & 0x7AC40000 ^ 0x3A840000 ^ (((v278 ^ 0x52805286) << 8) ^ 0x44520000) & (v278 ^ 0x52805286))));
  v281 = v270 ^ v260;
  v282 = v251 + 1535586256 + v271;
  v283 = (v282 ^ 0x91B48D28) & (2 * (v282 & 0xD134CD4D)) ^ v282 & 0xD134CD4D;
  v284 = ((2 * (v282 ^ 0xB19D0DAA)) ^ 0xC15381CE) & (v282 ^ 0xB19D0DAA) ^ (2 * (v282 ^ 0xB19D0DAA)) & 0x60A9C0E6;
  v285 = v284 ^ 0x20A84021;
  v286 = (v284 ^ 0x40010044) & (4 * v283) ^ v283;
  v287 = ((4 * v285) ^ 0x82A7039C) & v285 ^ (4 * v285) & 0x60A9C0E4;
  v288 = (v287 ^ 0xA10080) & (16 * v286) ^ v286;
  v289 = ((16 * (v287 ^ 0x6008C063)) ^ 0xA9C0E70) & (v287 ^ 0x6008C063) ^ (16 * (v287 ^ 0x6008C063)) & 0x60A9C0E0;
  v290 = v288 ^ 0x60A9C0E7 ^ (v289 ^ 0x880000) & (v288 << 8);
  v291 = (((v248 ^ 0x42E7413E) - 397312395) ^ ((v248 ^ 0xC239B61F) + 1754237270) ^ ((v248 ^ 0x769456C5) - 601724528)) + v271;
  v292 = (((v281 ^ 0x48CA8058) + 995488677) ^ ((v281 ^ 0xDE5126E5) - 1378986726) ^ ((v281 ^ 0xAD4EC946) - 556680517)) - (((v280 ^ 0x1987E8C9) - 1627151184) ^ ((v280 ^ 0x62E6633C) - 463327397) ^ ((v280 ^ 0x51C6A93D) - 683481764)) - 623022622;
  v293 = (v292 ^ 0xC6FBC0B1) & (2 * (v292 & 0x88FBE4C5)) ^ v292 & 0x88FBE4C5;
  v294 = ((2 * (v292 ^ 0xD76941B9)) ^ 0xBF254AF8) & (v292 ^ 0xD76941B9) ^ (2 * (v292 ^ 0xD76941B9)) & 0x5F92A57C;
  v295 = (v294 ^ 0x7000038) & (4 * v293) ^ v293;
  v296 = ((4 * (v294 ^ 0x4092A504)) ^ 0x7E4A95F0) & (v294 ^ 0x4092A504) ^ (4 * (v294 ^ 0x4092A504)) & 0x5F92A578;
  v297 = (v296 ^ 0x5E028570) & (16 * v295) ^ v295;
  v298 = ((16 * (v296 ^ 0x190200C)) ^ 0xF92A57C0) & (v296 ^ 0x190200C) ^ (16 * (v296 ^ 0x190200C)) & 0x5F92A540;
  v299 = v297 ^ 0x5F92A57C ^ (v298 ^ 0x59020500) & (v297 << 8);
  v300 = v292 ^ (2 * ((v299 << 16) & 0x5F920000 ^ v299 ^ ((v299 << 16) ^ 0x257C0000) & (((v298 ^ 0x690A03C) << 8) & 0x5F920000 ^ 0x4D120000 ^ (((v298 ^ 0x690A03C) << 8) ^ 0x12A50000) & (v298 ^ 0x690A03C))));
  v301 = (v291 + 1609223903) ^ 0xA7CEEF60;
  v302 = (2 * ((v291 + 1609223903) & 0x890047C2)) & v301 ^ (v291 + 1609223903) & 0x890047C2 ^ ((2 * ((v291 + 1609223903) & 0x890047C2)) & 0x2008880 | 0x8840000);
  v303 = (2 * v301) & 0x2ECEA8A2 ^ 0x2242A8A2 ^ ((2 * v301) ^ 0x5D9D5144) & v301;
  v304 = (4 * v302) & 0x2E022800 ^ v302 ^ ((4 * v302) ^ 0x22100000) & v303;
  v305 = (4 * v303) & 0x2ECEA8A0 ^ 0x4C40822 ^ ((4 * v303) ^ 0xBB3AA288) & v303;
  v306 = (16 * v304) & 0x2ECEA8A0 ^ v304 ^ ((16 * v304) ^ 0xA8400000) & v305;
  v307 = (16 * v305) & 0x2ECEA8A0 ^ 0x2042082 ^ ((16 * v305) ^ 0xECEA8A20) & v305;
  v308 = v306 ^ (v306 << 8) & 0x2ECEA800 ^ ((v306 << 8) ^ 0xC4000000) & v307 ^ 0x280AA8A2;
  v309 = v282 ^ (v291 + 1609223903) ^ (2 * ((v290 << 16) & 0x60A90000 ^ v290 ^ ((v290 << 16) ^ 0x40E70000) & (((v289 ^ 0x6021C087) << 8) & 0x60A90000 ^ 0x40290000 ^ (((v289 ^ 0x6021C087) << 8) ^ 0xA9C00000) & (v289 ^ 0x6021C087)) ^ v308 ^ (v308 << 16) & 0x2ECE0000 ^ ((v308 << 16) ^ 0x28A20000) & ((v307 << 8) & 0x2ECE0000 ^ 0x20460000 ^ ((v307 << 8) ^ 0x4EA80000) & v307)));
  v291 += 1183288965;
  v310 = (2 * (v291 & 0x12008F84 ^ 0x232CA240)) & 0x20000200 ^ v291 & 0x12008F84 ^ 0x232CA240 ^ ((2 * (v291 & 0x12008F84 ^ 0x232CA240)) ^ 0x46594480) & (v291 ^ 0x312C2DC4);
  v311 = (2 * (v291 ^ 0x312C2DC4)) & 0x232CA240 ^ 0x2124A240 ^ ((2 * (v291 ^ 0x312C2DC4)) ^ 0x46594480) & (v291 ^ 0x312C2DC4);
  v312 = (4 * v310) & 0x232CA240 ^ v310 ^ ((4 * v310) ^ 0x8CB28900) & v311;
  v313 = (4 * v311) & 0x232CA240 ^ 0x230C2240 ^ ((4 * v311) ^ 0x8CB28900) & v311;
  v314 = v312 ^ (16 * v312) & 0x232CA240 ^ ((16 * v312) ^ 0x30C22400) & v313 ^ 0x2020A000;
  v315 = (16 * v313) & 0x232CA240 ^ 0x1248240 ^ ((16 * v313) ^ 0x32CA2400) & v313;
  v316 = (v314 << 8) & 0x232CA200 ^ v314 ^ ((v314 << 8) ^ 0x2CA24000) & v315;
  v317 = v291 ^ (2 * ((v316 << 16) & 0x232C0000 ^ v316 ^ ((v316 << 16) ^ 0x22400000) & ((v315 << 8) & 0x232C0000 ^ 0x30C0000 ^ ((v315 << 8) ^ 0x2CA20000) & v315)));
  v318 = HIBYTE(v309);
  LODWORD(STACK[0xAD0]) = v309 >> 8;
  LODWORD(STACK[0xB40]) = HIWORD(v280);
  LODWORD(STACK[0xDE0]) = HIBYTE(v280);
  LODWORD(STACK[0xB50]) = v309;
  LODWORD(STACK[0xAD8]) = HIWORD(v317);
  LODWORD(STACK[0xDF0]) = HIBYTE(v317);
  LODWORD(STACK[0xAE8]) = v280 >> 8;
  v319 = ((((((HIWORD(v317) << 8) ^ 0xB1B18400) & 0xFF00 ^ 0xAFFF607A) & ((HIBYTE(v317) << 16) ^ 0xAFC9E97A) | ((HIWORD(v317) << 8) ^ 0xB1B18400) & 0x1600) ^ 0x660285) & (BYTE1(v317) ^ 0xF662A3) ^ ((((HIWORD(v317) << 8) ^ 0xB1B18400) & 0xFF00 ^ 0xAFFF607A) & ((HIBYTE(v317) << 16) ^ 0xAFC9E97A) & 0x99D12 | ((HIWORD(v317) << 8) ^ 0xB1B18400) & 0x1400)) << 8;
  v320 = (v319 ^ 0x81FF) & (v317 ^ 0x709B896A) | v319 & 0x8F647600;
  v321 = (((v320 ^ 0x874140EC) + 1539588178) ^ ((v320 ^ 0x9C99FB3D) + 1075641217) ^ ((v320 ^ 0xE42740BF) + 950157315)) + 347332758;
  v322 = ((v321 ^ 0x9CB9301E) + 645177580) ^ v321 ^ ((v321 ^ 0x290E0DAE) - 1815896740) ^ ((v321 ^ 0xD7BAD55) - 1212793439) ^ ((v321 ^ 0xFDFEFFEF) + 1194553115);
  LODWORD(STACK[0xB60]) = v280;
  v323 = ((((((HIWORD(v280) << 8) ^ 0xA0934600) & 0xFF00 ^ 0xFF0A96) & ((HIBYTE(v280) << 16) ^ 0xF0AB96) | ((HIWORD(v280) << 8) ^ 0xA0934600) & 0x5400) ^ 0x1FE9BA) & (BYTE1(v280) ^ 0xFFFF1C) | (v280 >> 8) & 0xD3) << 8;
  LODWORD(STACK[0xAC8]) = v300 >> 8;
  v324 = ((((((((v309 >> 8) & 0xFFFF00 ^ 0x16CBEE00) & 0xFF00 ^ 0x98FFA502) & ((HIBYTE(v309) << 16) ^ 0x98B5B702) | ((v309 >> 8) & 0xFFFF00 ^ 0x16CBEE00) & 0x4800) ^ 0x8FD) & (BYTE1(v309) ^ 0x18A5E) | (((v309 >> 8) & 0xFFFF00 ^ 0x16CBEE00) & 0xFF00 ^ 0x98FFA502) & ((HIBYTE(v309) << 16) ^ 0x98B5B702) & 0xFE7500 | ((v309 >> 8) & 0xFFFF00 ^ 0x16CBEE00) & 0x4000) << 8) ^ 0x1C8163F0) & (v309 ^ 0xFFFFFFF0) ^ (v309 & 0xF | 0x801800) ^ v322 ^ 0x7CAD004C;
  v325 = v322 ^ 0x7CAD004C ^ ((v323 ^ 0x1A79C0FF) & (v280 ^ 0x9F79CC0D) | v323 & 0x60863300);
  LODWORD(STACK[0xB30]) = v300;
  v326 = ((((((((v300 >> 8) & 0xFFFF00 ^ 0x3E243400) & 0xFF00 ^ 0xFFFF3FFF) & ((HIBYTE(v300) << 16) ^ 0xD3456A) | ((v300 >> 8) & 0xFFFF00 ^ 0x3E243400) & 0xBA00) ^ 0xE11DFD) & (BYTE1(v300) ^ 0xFFFF19) | (v300 >> 8) & 0x68) << 8) ^ 0xD85FFDA3) & (v300 ^ 0xFFFFFFCE) | v300 & 0x5C;
  v327 = ((v324 ^ 0xE841193E) + 936623386) ^ ((v324 ^ 0xF0C82152) + 794461558) ^ ((v324 ^ 0x38E463B4) - 411646060);
  v328 = ((v322 ^ 0x8153C024) + 244674251) ^ ((v322 ^ 0x7F06DC43) - 255823186) ^ ((v322 ^ 0x8E6C4D76) + 27976601);
  v329 = (((v325 ^ 0x98A6513E) - 357751907) ^ ((v325 ^ 0xE6C766D0) - 1798564749) ^ ((v325 ^ 0x9885B66D) - 359742256)) - ((((v322 ^ 0x364A5176) - 1256673594) ^ ((v322 ^ 0xCEA4EEA) - 1883721382) ^ ((v322 ^ 0x7F927096) - 54489306)) + v327);
  v330 = v328 - v329 + 1295786481;
  v329 -= 1880813020;
  v331 = v328 + v327 - 1731825956;
  v332 = (((v326 ^ 0x2A26181C) + 416843615) ^ ((v326 ^ 0x457C728F) + 2005069262) ^ ((v326 ^ 0xB8D7282C) - 1976977553)) + v330;
  v333 = v332 + v331;
  v334 = (((v332 - 1802903420) ^ 0xBE2ED7E1) - 776529915) ^ (v332 - 1802903420) ^ (((v332 - 1802903420) ^ 0x4A5823BA) + 633465952) ^ (((v332 - 1802903420) ^ 0xB2EB3BBE) - 579668900) ^ (((v332 - 1802903420) ^ 0xD6FBFFFF) - 1184747493);
  v335 = (v330 & 0x81534077 | (2 * (v330 & 0x81534077)) & 0xA08000 | 0x3000) ^ (2 * (v330 & 0x81534077)) & (v330 ^ 0xB8F3FA66);
  v336 = (2 * (v330 ^ 0xB8F3FA66)) & 0x39A0BA10 ^ 0x8A08A11 ^ ((2 * (v330 ^ 0xB8F3FA66)) ^ 0x73417422) & (v330 ^ 0xB8F3FA66);
  v337 = (4 * v335) & 0x9808210 ^ v335 ^ v336 & (4 * v335) & 0xFFFF3FFF;
  v338 = (4 * v336) & 0x39A0BA10 ^ 0x19201211 ^ ((4 * v336) ^ 0xE682E844) & v336;
  v339 = (16 * v337) & 0x39A0BA10 ^ v337 ^ ((16 * v337) ^ 0xB0000) & v338;
  v340 = (16 * v338) & 0x39A0BA10 ^ 0x21A01A01 ^ ((16 * v338) ^ 0x9A0BA110) & v338;
  v341 = v339 ^ (v339 << 8) & 0x39A0BA00 ^ ((v339 << 8) ^ 0xB00000) & v340 ^ 0x39000A11;
  v342 = v334 ^ 0xC96DC2AC ^ v330 ^ (2 * ((v341 << 16) & 0x39A00000 ^ v341 ^ ((v341 << 16) ^ 0x3A110000) & ((v340 << 8) & 0x39A00000 ^ 0x19000000 ^ ((v340 << 8) ^ 0x20BA0000) & v340)));
  v343 = (v329 ^ 0x31836262) & (2 * (v329 & 0xA18B8B74)) ^ v329 & 0xA18B8B74;
  v344 = ((2 * (v329 ^ 0x709460C2)) ^ 0xA23FD76C) & (v329 ^ 0x709460C2) ^ (2 * (v329 ^ 0x709460C2)) & 0xD11FEBB6;
  v345 = (v344 ^ 0x801E4320) & (4 * v343) ^ v343;
  v346 = ((4 * (v344 ^ 0x51002892)) ^ 0x447FAED8) & (v344 ^ 0x51002892) ^ (4 * (v344 ^ 0x51002892)) & 0xD11FEBB0;
  v347 = (v346 ^ 0x401FAA80) & (16 * v345) ^ v345;
  v348 = ((16 * (v346 ^ 0x91004126)) ^ 0x11FEBB60) & (v346 ^ 0x91004126) ^ (16 * (v346 ^ 0x91004126)) & 0xD11FEBA0;
  v349 = v347 ^ 0xD11FEBB6 ^ (v348 ^ 0x111EAB00) & (v347 << 8);
  v350 = v333 - 1018428914 + (((v342 ^ 0x5FBE99E4) + 346281074) ^ ((v342 ^ 0x26FC8429) + 1843513789) ^ ((v342 ^ 0xA25BDB2E) - 381249860));
  v351 = v350 ^ v342 ^ ((v350 ^ 0xF452DEE3) + 1759840127) ^ ((v350 ^ 0x7407BB) - 1664885209) ^ ((v350 ^ 0x609101CD) - 64563119) ^ ((v350 ^ 0xF7FFFEF7) + 1799890795);
  v352 = v333 ^ v329 ^ ((v333 ^ 0xFE05AE11) + 235784500) ^ ((v333 ^ 0xD662ACA) - 43102743) ^ ((v333 ^ 0x36FE3F8) - 211319589) ^ ((v333 ^ 0xFFFBFFFE) + 267622621) ^ v334 ^ 0xC96DC2AC ^ (2 * ((v349 << 16) & 0x511F0000 ^ v349 ^ ((v349 << 16) ^ 0x6BB60000) & (((v348 ^ 0xC0014096) << 8) & 0x511F0000 ^ 0x40140000 ^ (((v348 ^ 0xC0014096) << 8) ^ 0x1FEB0000) & (v348 ^ 0xC0014096))));
  v353 = ((v352 ^ 0x2A27B710) - 1893393715) ^ ((v352 ^ 0x321B4CD1) - 1759911666) ^ ((v352 ^ 0xCF58CDB2) + 1784307823);
  v354 = (((v334 ^ 0xE1119018) - 679236276) ^ ((v334 ^ 0xA9759C75) - 1612209881) ^ ((v334 ^ 0xD8023C77) - 292552411)) - v353 + 1893042604 + v350;
  v355 = (((v351 ^ 0x237259EC) - 565386979) ^ ((v351 ^ 0xD4142DFC) + 690656525) ^ ((v351 ^ 0xF5A7331F) + 144280560)) + 1813901335;
  v356 = ((v354 ^ 0x43DB789D) - 1265654069) ^ v354 ^ ((v354 ^ 0xC875A360) + 1059159352) ^ ((v354 ^ 0x7CF805BB) - 1951605779) ^ ((v354 ^ 0xFFFDFFEE) + 145301946) ^ v351;
  v357 = ((v353 - 1813171532) ^ 0xE90EF8D8) & (2 * ((v353 - 1813171532) & 0xCD2EFADC)) ^ (v353 - 1813171532) & 0xCD2EFADC;
  v358 = ((2 * ((v353 - 1813171532) ^ 0x631BB968)) ^ 0x5C6A8768) & ((v353 - 1813171532) ^ 0x631BB968) ^ (2 * ((v353 - 1813171532) ^ 0x631BB968)) & 0xAE3543B4;
  v359 = (v358 ^ 0xC200320) & (4 * v357) ^ v357;
  v360 = ((4 * (v358 ^ 0xA2154094)) ^ 0xB8D50ED0) & (v358 ^ 0xA2154094) ^ (4 * (v358 ^ 0xA2154094)) & 0xAE3543B0;
  v361 = v359 ^ 0xAE3543B4 ^ (v360 ^ 0xA8150280) & (16 * v359);
  v362 = (16 * (v360 ^ 0x6204124)) & 0xAE354380 ^ 0xC2140B4 ^ ((16 * (v360 ^ 0x6204124)) ^ 0xE3543B40) & (v360 ^ 0x6204124);
  v363 = (v361 << 8) & 0xAE354300 ^ v361 ^ ((v361 << 8) ^ 0x3543B400) & v362;
  v364 = (v353 - 1813171532) ^ (2 * ((v363 << 16) & 0x2E350000 ^ v363 ^ ((v363 << 16) ^ 0x43B40000) & ((v362 << 8) & 0x2E350000 ^ 0xA340000 ^ ((v362 << 8) ^ 0x35430000) & v362)));
  v365 = (((v342 ^ 0x3EEE0269) - 653447739) ^ ((v342 ^ 0x25F1EAD7) - 1038957189) ^ ((v342 ^ 0x7A9689D3) - 1653234049)) + v355;
  v366 = v365 - 829067258;
  v365 -= 1427462600;
  v367 = (v365 ^ 0x962F116F) & (2 * (v365 & 0x268FA26C)) ^ v365 & 0x268FA26C;
  v368 = ((2 * (v365 ^ 0x9A3215AF)) ^ 0x797B6F86) & (v365 ^ 0x9A3215AF) ^ (2 * (v365 ^ 0x9A3215AF)) & 0xBCBDB7C2;
  v369 = (v368 ^ 0x38390380) & (4 * v367) ^ v367;
  v370 = ((4 * (v368 ^ 0x84849041)) ^ 0xF2F6DF0C) & (v368 ^ 0x84849041) ^ (4 * (v368 ^ 0x84849041)) & 0xBCBDB7C0;
  v371 = (v370 ^ 0xB0B49700) & (16 * v369) ^ v369;
  v372 = ((16 * (v370 ^ 0xC0920C3)) ^ 0xCBDB7C30) & (v370 ^ 0xC0920C3) ^ (16 * (v370 ^ 0xC0920C3)) & 0xBCBDB7C0;
  v373 = v371 ^ 0xBCBDB7C3 ^ (v372 ^ 0x88993400) & (v371 << 8);
  v374 = v365 ^ (2 * ((v373 << 16) & 0x3CBD0000 ^ v373 ^ ((v373 << 16) ^ 0x37C30000) & (((v372 ^ 0x342483C3) << 8) & 0x3CBD0000 ^ (((v372 ^ 0x342483C3) << 8) ^ 0x3DB70000) & (v372 ^ 0x342483C3) ^ 0x80000)));
  v375 = v353 - 1747286678 + v355;
  v376 = v375 ^ v366 ^ ((v375 ^ 0x6ABE8A9E) + 695835442) ^ ((v375 ^ 0x2E7B1A18) + 1841040312) ^ ((v375 ^ 0x170A8169) + 1422758087) ^ ((v375 ^ 0xEFF7FFBF) - 1406079471) ^ ((v366 ^ 0xC2787F04) + 1363127858) ^ ((v366 ^ 0x3B1CFB14) - 1470420446) ^ ((v366 ^ 0x6EA35505) - 35355599) ^ ((v366 ^ 0xFB7FFFDF) + 1748512491);
  v377 = (((v356 ^ 0x88F9C704) - 438813814) ^ ((v356 ^ 0x1C294CB0) + 1896394814) ^ ((v356 ^ 0x9EBAED13) - 207941217)) - (((v364 ^ 0x6D30A00A) - 1958748491) ^ ((v364 ^ 0x1E72EA84) - 125987781) ^ ((v364 ^ 0xAE6C373A) + 1214466437)) - 318881171;
  v378 = ((v377 ^ 0xB0182066) + 1456408085) ^ v377 ^ ((v377 ^ 0x642E6635) - 2097594296) ^ ((v377 ^ 0xB3C15021) + 1427535444) ^ ((v377 ^ 0x7EDFCFFF) - 1744246386);
  v379 = STACK[0xE90];
  LODWORD(STACK[0xB20]) = v111;
  LODWORD(STACK[0xCB0]) = v111 ^ 0x46628D64;
  LODWORD(STACK[0xAA0]) = v318 & 0xFE;
  LODWORD(STACK[0xD90]) = v364 ^ 0x19F08141;
  LODWORD(STACK[0xDD0]) = HIBYTE(v364);
  LODWORD(STACK[0xE80]) = HIBYTE(v364) ^ 0x1596115B;
  LODWORD(STACK[0xAB0]) = HIBYTE(v300) & 0xFFFFFFBF;
  LODWORD(STACK[0xDC0]) = HIBYTE(v376);
  LODWORD(STACK[0xE70]) = HIBYTE(v376) ^ 0xB353E2A8;
  LODWORD(STACK[0xAA8]) = HIBYTE(v378);
  LODWORD(STACK[0xED0]) = HIBYTE(v378) ^ 0x4291D4E8;
  STACK[0xEA0] = STACK[0xEC0] + 3104;
  LODWORD(STACK[0xAE0]) = v317;
  LODWORD(STACK[0xAB8]) = v317 >> 8;
  LODWORD(STACK[0xC50]) = HIWORD(v364);
  LODWORD(STACK[0xE10]) = HIBYTE(v374);
  LODWORD(STACK[0xC70]) = v374 >> 8;
  LODWORD(STACK[0xCD0]) = v376 >> 8;
  LODWORD(STACK[0xD70]) = HIWORD(v378);
  LODWORD(STACK[0xAC0]) = v364;
  LODWORD(STACK[0xC90]) = v364 >> 8;
  LODWORD(STACK[0xC40]) = v374;
  LODWORD(STACK[0xC60]) = HIWORD(v374);
  LODWORD(STACK[0xCA0]) = v376;
  LODWORD(STACK[0xD80]) = HIWORD(v376);
  v380 = *(STACK[0xF18] + 8 * v379);
  LODWORD(STACK[0xC80]) = v378;
  LODWORD(STACK[0xC30]) = v378 >> 8;
  return v380(525171361, 1077206925, 2704228517, 4074, 1855234664, 291342825);
}