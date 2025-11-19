uint64_t sub_100DCE870()
{
  STACK[0x530] = v0;
  v4 = (*(v3 + 8 * (v1 ^ 0x37C5)))(32);
  *(v2 + 2192) = v4;
  return (*(v3 + 8 * ((((((v1 - 704676079) ^ (v4 == 0)) & 1) == 0) * ((v1 - 13173) ^ 0x1F5A)) ^ v1)))();
}

uint64_t sub_100DCE95C@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x1A38] + 24);
  STACK[0xE90] = v2;
  return (*(v1 + 8 * ((((((a1 ^ 0x2899) + 833818365) & 0xCE4CF6F7) + (((a1 ^ 0x2899) + 1176893584) & 0xB9D9FFF6) - 15972) * (v2 == 0)) ^ a1 ^ 0x2899)))();
}

uint64_t sub_100DCEC54(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = (v17 + v12);
  *v8 = ((v7 ^ v13) * v14) ^ v20[2] ^ v15;
  v8[1] = *(v17 + v11) ^ v18;
  v8[2] = v20[3] ^ 1;
  v8[3] = v20[1] ^ v19;
  v21 = v12 + 4 + a7;
  v23 = v9 >= v10 && v9 <= v21;
  return (*(v16 + 8 * ((v23 * a2) ^ v7)))();
}

uint64_t sub_100DCECC4@<X0>(int a1@<W8>)
{
  STACK[0x1628] = 0;
  v2 = *(STACK[0x14C8] - 0x683CBC57EAB92A36);
  STACK[0x1398] = 0;
  LODWORD(STACK[0xD24]) = 853697595;
  LODWORD(STACK[0x102C]) = -769884012;
  return (*(v1 + 8 * (((((a1 - 15) ^ (v2 == 0x308E083E0C524CBELL)) & 1) * ((a1 + 278404813) & 0xEF6797F4 ^ 0x17CB)) ^ a1)))();
}

uint64_t sub_100DCED70@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v12 = ~v7 + v4;
  v13 = *(v3 + v12 - 15);
  v14 = *(v3 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a2)), a3);
  return (*(v11 + 8 * (((v7 + v9 + v6 != v5) * v10) | v8)))();
}

uint64_t sub_100DCEE74()
{
  v0[30] = v1[26];
  v0[29] = v1[25];
  v0[28] = v1[24];
  v0[27] = v1[23];
  v0[26] = v1[22];
  v0[25] = v1[21];
  v0[24] = v1[20];
  v0[23] = v1[19];
  v0[22] = v1[18];
  v0[21] = v1[17];
  v0[20] = v1[16];
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100DCF05C()
{
  v3 = v1 + v0 - 3565;
  STACK[0x1AF8] = *(v2 + 8 * v3);
  return (*(v2 + 8 * (((v0 - 1853728129) & 0xECDDFFF5 ^ 0x3A4F) + v3)))();
}

uint64_t sub_100DCF10C()
{
  LODWORD(STACK[0x41D8]) = STACK[0x41D4];
  LODWORD(STACK[0x41DC]) = STACK[0x41D0];
  LODWORD(STACK[0x41E0]) = STACK[0x41CC];
  LODWORD(STACK[0x41E4]) = STACK[0x41C8];
  v1 = STACK[0x41C0];
  STACK[0x41E8] = STACK[0x41C0];
  v2 = STACK[0x41BC];
  LODWORD(STACK[0x41F0]) = STACK[0x41BC];
  LODWORD(STACK[0x41F4]) = (v2 - 2116050104) & 0x7E2076F6;
  v3 = STACK[0x37D0] + v1;
  STACK[0x41F8] = v3;
  v4 = *(v0 + 8 * (v2 ^ 0x2007));
  STACK[0x3F18] = v3;
  STACK[0x3F08] = v4;
  return (*(v0 + 8 * (v2 ^ 0x21B5)))();
}

uint64_t sub_100DCF378()
{
  LODWORD(STACK[0x3348]) = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = v0 + 26;
  v5 = *(v4 + 8 * ((19 * (v1 == (v3 ^ 0xFFFFE571) - (v3 ^ 0x4D8F) + 16 * (v3 ^ 0x4D8F))) ^ v3));
  STACK[0x3850] = 26;
  return v5();
}

uint64_t sub_100DCF44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
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
  STACK[0x3D90] = 0;
  LODWORD(STACK[0x32D0]) = 0;
  v6 = STACK[0x2238] == 28;
  v7 = (a5 + 2781) | 0x1206;
  STACK[0x3AF0] = (a5 + 7395);
  LODWORD(STACK[0x3B08]) = v7;
  v8 = v6;
  v9 = *(v5 + 8 * (((a5 - 3731 + v7) * v8) ^ a5));
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v10 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x3438]) = v10;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v11 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3280]) = v11;
  v12 = STACK[0x32E8];
  LODWORD(STACK[0x2B60]) = STACK[0x32E8];
  LODWORD(STACK[0x3488]) = v12;
  LODWORD(STACK[0x3B00]) = v12;
  LODWORD(STACK[0x3290]) = v12;
  v13 = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v13;
  v14 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v14;
  LODWORD(STACK[0x3AE8]) = v14;
  v15 = STACK[0x21F4];
  LODWORD(STACK[0x3298]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v15;
  v16 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v16;
  v17 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3278]) = v17;
  LODWORD(STACK[0x3980]) = 39;
  LODWORD(STACK[0x2BB0]) = 28;
  LODWORD(STACK[0x3988]) = 25;
  v18 = STACK[0x3E0];
  v19 = STACK[0x2928];
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
  LODWORD(STACK[0x8E8]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v19;
  STACK[0x3D50] = STACK[0x438];
  STACK[0x3AD8] = v18;
  STACK[0x32D8] = STACK[0x2618];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  return v9(a1, 0, a2, v18, a3, a4, v17);
}

uint64_t sub_100DCF894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = STACK[0x540];
  *(v19 + 1200) = *(STACK[0x540] + 8 * v18);
  return (*(v20 + 8 * ((v18 + 11507) ^ v18)))(a18);
}

uint64_t sub_100DCF968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v8 ^ (v9 - 3250);
  LODWORD(STACK[0x530]) = v11;
  return (*(v10 + 8 * ((103 * (v7 == (v11 ^ 0x53834298))) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, 3525083284);
}

uint64_t sub_100DCF9E0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3838]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  v3 = a1 ^ 0x1108;
  STACK[0x33B0] = (v2 + LODWORD(STACK[0x2000])) ^ LODWORD(STACK[0x1B18]) ^ (v3 + 16650);
  v4 = *(v1 + 8 * v3);
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x38B0]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x3AE0]) = 1;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x38B8]) = 1;
  LODWORD(STACK[0x3AE8]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x3AF0]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3800]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3808]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x3810]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x3828]) = 1;
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x39E8]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3D60]) = 1;
  LODWORD(STACK[0x39F0]) = 1;
  LODWORD(STACK[0x3848]) = 1;
  LODWORD(STACK[0x3850]) = 1;
  LODWORD(STACK[0x3AD8]) = 1;
  LODWORD(STACK[0x3858]) = 1;
  LODWORD(STACK[0x3860]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  return v4();
}

uint64_t sub_100DCFBE0@<X0>(int a1@<W8>)
{
  STACK[0x20F8] = v1;
  v3 = STACK[0x12B0];
  STACK[0x2100] = STACK[0x12B0];
  return (*(v2 + 8 * (((v1 - v3 > (a1 - 5913) - 1468) * (((a1 - 2129763542) | 0x914204) + 2120246490)) ^ a1)))();
}

uint64_t sub_100DCFCF4(int a1, uint64_t a2, unsigned int a3)
{
  v8 = *v5;
  v9 = (v3 + a3);
  *v9 = *(v5 - 1);
  v9[1] = v8;
  return (*(v7 + 8 * (((v6 == 0) * a1) ^ v4)))();
}

uint64_t sub_100DCFED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *(v72 + 8 * (((((v71 - 4451) | 0x4042) - 17971) * (*(a71 + 4 * LODWORD(STACK[0x31D0])) < LODWORD(STACK[0x1BE4]))) ^ v71));
  STACK[0x3B08] = STACK[0x11F0];
  STACK[0x3D10] = STACK[0x1208];
  LODWORD(STACK[0x30D0]) = STACK[0x39C0];
  LODWORD(STACK[0x32E0]) = STACK[0x3688];
  LODWORD(STACK[0x2010]) = STACK[0x38B8];
  LODWORD(STACK[0x3D38]) = STACK[0x1A70];
  LODWORD(STACK[0x3D28]) = STACK[0x3620];
  LODWORD(STACK[0x3958]) = STACK[0x32C8];
  return v73();
}

uint64_t sub_100DCFF98()
{
  v4 = STACK[0x3D18];
  v4[170] = v1 >> (v0 - 101);
  v4[169] = BYTE2(v1);
  v5 = LODWORD(STACK[0x3E18]) > v2;
  v4[171] = v1;
  LODWORD(STACK[0x3D78]) = HIBYTE(v1);
  v4[168] = HIBYTE(v1);
  return (*(v3 + 8 * ((v5 * (v0 - 19381)) ^ v0)))();
}

uint64_t sub_100DCFFF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(STACK[0x39E0] + 2 * (a1 ^ 0x23));
  *(STACK[0x2908] + a1) = *(STACK[0x37B0] + ((v1 + 4304) ^ 0xAB4Eu ^ ((v3 >> 2) | (v3 << 14)))) ^ (*(STACK[0x3728] + (a1 ^ 0x39)) - (a1 ^ 0x27)) ^ 0xDF;
  return (*(v2 + 8 * ((12624 * (a1 == 15)) ^ v1)))();
}

uint64_t sub_100DD0088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x4A0] & 0x9C03D35F;
  LODWORD(STACK[0x1604]) = v8 + 64;
  return (*(v9 + 8 * ((((v8 + 64) > LODWORD(STACK[0x900])) * (v10 ^ 0x33D)) ^ (a8 + 2120263936))))();
}

uint64_t sub_100DD0310()
{
  v1 = STACK[0x3B10];
  STACK[0x3DC8] = (LODWORD(STACK[0x3B10]) + 657270422) & 0xD8D2FBBF;
  v2 = (*(v0 + 8 * (v1 ^ 0x4C76)))(STACK[0x3B58]);
  STACK[0x3E60] = v2;
  return (*(v0 + 8 * (((v2 == 0) * (STACK[0x3DC8] ^ (v1 + 8818))) ^ v1)))();
}

uint64_t sub_100DD0384()
{
  v2 = *(v1 + 8 * (((LODWORD(STACK[0x3860]) >= (v0 ^ 0x2447u) - 7920) * ((v0 + 6111) ^ 0x52D7)) ^ v0));
  STACK[0x37A8] = 1;
  LODWORD(STACK[0x39E8]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  return v2();
}

uint64_t sub_100DD04AC()
{
  STACK[0x3838] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = v0 + 29;
  v5 = *(v4 + 8 * ((91 * (v1 == (v3 ^ 0x300A ^ (75 * (v3 ^ 0x6393))))) ^ v3));
  STACK[0x3850] = 29;
  return v5();
}

uint64_t sub_100DD0570@<X0>(unsigned int a1@<W8>)
{
  v4 = STACK[0x3B38];
  v4[2013] = HIBYTE(v1);
  v4[2015] = v1 >> ((v2 ^ 0x23) - 52);
  v4[2016] = v1;
  v5 = STACK[0x3E18];
  v4[2014] = BYTE2(v1);
  return (*(v3 + 8 * ((35 * (((v2 + 68) ^ (v5 > a1)) & 1)) ^ v2)))();
}

uint64_t sub_100DD05D4(unint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  v11 = -408853633 * *(v8 + a2 - 1);
  v12 = v11 ^ a7;
  v13 = (v11 ^ a7) + a5;
  v14 = (v13 + WORD1(v13)) >> 8;
  v13 >>= 16;
  v15 = a2 - 103190760 + v12 - v14 + v13 - 1;
  LODWORD(v13) = (a2 - 206381520 + v12 - v14 + v13 - 1) ^ v11;
  v16 = a2 - 103190760 + v13 - ((v13 + a5 + ((v13 + a5) >> 16)) >> 8) + ((v13 + a5) >> 16) - 1;
  return (*(v9 + 8 * ((430 * (a2 >= a1)) ^ v7)))(a1, a2 + 1, v15 ^ a3 ^ (((v7 + 6024) | 0x80) - 10016948) & (4 * v15) ^ v16 ^ (4 * v16) & 0xFF6771F8);
}

uint64_t sub_100DD06E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, _OWORD *a8)
{
  v11 = (STACK[0x3B40] + a7);
  v12 = v11[1];
  *a8 = *v11;
  a8[1] = v12;
  return (*(v10 + 8 * ((69 * (((v8 == 0) ^ (v9 - 1)) & 1)) ^ (v9 - 738))))(a1, a2, a3, a4, a5, a6, a7 + 32, a8 + 2);
}

uint64_t sub_100DD0728()
{
  v3 = *(v1 + 8 * ((((v0 + 9421) ^ 0x7A11 ^ (v0 + 2007607597) & 0x88567B9F) * (LODWORD(STACK[0x2C20]) == 55)) ^ v0));
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x3430];
  v4 = STACK[0x3810];
  LODWORD(STACK[0x3E18]) = STACK[0x3810];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  v5 = STACK[0x3710];
  LODWORD(STACK[0x3D40]) = v2;
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v5;
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3B00]) = v4;
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  return v3();
}

uint64_t sub_100DD1C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = (v5 ^ 0xBCE95BF888C94396) + 0x4316A4077736BC69 + ((v5 << (v8 - 96)) & 0x79D2B7F11192872CLL);
  v10 = (((v9 - (((v8 - 17119) + 0x5555555555552DD3) & (v9 >> 1))) >> 2) & 0x3333333333333333) + ((v9 - (((v8 - 17119) + 0x5555555555552DD3) & (v9 >> 1))) & 0x3333333333333333);
  v11 = v7 - (((((v10 + (v10 >> 4)) & 0xF0F0F0F0F0F0F0F0) - ((v10 + (v10 >> 4)) ^ -(v10 + (v10 >> 4)) ^ (0xF0F0F0F0F0F0F0FLL - ((v10 + (v10 >> 4)) ^ 0xF0F0F0F0F0F0F0FLL)))) * a4) >> 56);
  return (*(v6 + 8 * (((4 * (v11 < a5)) | (16 * (v11 < a5))) ^ v8)))();
}

uint64_t sub_100DD1DD4()
{
  v3 = *(v2 + 8 * ((((v1 - 1654) ^ 0x6B04) * (v0 & 1)) ^ v1));
  LODWORD(STACK[0x3D98]) = 3;
  return v3((v1 - 1654) ^ 0x3038u);
}

uint64_t sub_100DD1E28()
{
  v2 = LOBYTE(STACK[0x671A]);
  v3 = v2 ^ STACK[0x3D78];
  v4 = v2;
  v5 = STACK[0x5338];
  v6 = (v2 ^ STACK[0x3D78]) >> STACK[0x5338];
  v7 = LOBYTE(STACK[0x6394]);
  LODWORD(STACK[0x3B20]) = v7;
  v8 = STACK[0x5350];
  v9 = (v7 & v3) << STACK[0x5350];
  STACK[0x23C8] = v9;
  v10 = STACK[0x52B8];
  LODWORD(v6) = (v9 + v6) ^ (2 * ((v9 + v6) & LODWORD(STACK[0x52B8])));
  v11 = 2 * (v6 & STACK[0x52B8]);
  v12 = LOBYTE(STACK[0x4E9F]);
  STACK[0x2498] = v11;
  LODWORD(STACK[0x3D98]) = (v1 - 1545823969) & 0x5C2336C3;
  LODWORD(v6) = ((v11 & v12) << (((v1 + 31) & 0xC3) + 0x80)) ^ v6;
  v13 = LOBYTE(STACK[0x6B87]);
  v14 = LOBYTE(STACK[0x6393]);
  LODWORD(STACK[0x3D88]) = v14;
  v15 = v14 & v13;
  LODWORD(STACK[0x3D90]) = v15;
  v16 = (v15 & (16 * (v6 & v12)) ^ v6);
  v17 = STACK[0x4EA8];
  v18 = STACK[0x4EA0];
  LODWORD(v16) = *(STACK[0x4EA0] + *(STACK[0x4EA8] + v16));
  STACK[0x3CB8] = v16 ^ (2 * (v12 & v16));
  v19 = LOBYTE(STACK[0x671B]);
  v20 = STACK[0x3758];
  v21 = LOBYTE(STACK[0x635B]);
  LODWORD(v16) = (((v19 ^ WORD1(v20)) & v21) << v8) | ((v19 ^ BYTE2(v20)) >> v5);
  v22 = STACK[0x52D8];
  v23 = v16 & STACK[0x52D8];
  STACK[0x2578] = v23;
  LODWORD(v16) = v16 ^ (2 * v23);
  LODWORD(v23) = LOBYTE(STACK[0x4E9D]);
  v24 = LOBYTE(STACK[0x6397]);
  LODWORD(v16) = v24 & (4 * (v16 & v23)) ^ v16;
  v25 = 2 * (v16 & v23);
  STACK[0x2588] = v25;
  v26 = v24 & (4 * (v25 & v23));
  STACK[0x3B80] = v26;
  v27 = 2 * (v26 & v23);
  STACK[0x25F0] = v27;
  v28 = v27 ^ v16;
  STACK[0x2478] = v28;
  LODWORD(v28) = *(v18 + *(v17 + v28));
  STACK[0x3B08] = v28 ^ (2 * (v23 & v28));
  v29 = STACK[0x5320];
  v30 = STACK[0x3CD0];
  v31 = v4;
  LODWORD(STACK[0x3CC0]) = v4;
  LODWORD(v30) = v4 ^ v30;
  v32 = STACK[0x5328];
  v33 = LOBYTE(STACK[0x6396]);
  v34 = LOBYTE(STACK[0x6396]);
  STACK[0x3CB0] = v33;
  LODWORD(v30) = ((v30 & v33) << v32) | (v30 >> v29);
  v35 = STACK[0x53C8];
  LODWORD(v30) = LODWORD(STACK[0x53C8]) & (4 * ((v30 ^ (2 * (v30 & v10))) & v10)) ^ v30 ^ (2 * (v30 & v10));
  v36 = v30 & v10;
  STACK[0x2408] = v36;
  v37 = v35 & (4 * v36);
  STACK[0x24D8] = v37;
  v38 = STACK[0x637C] & (2 * (v37 & v10));
  STACK[0x26B0] = v38;
  LODWORD(v30) = *(v18 + *(v17 + (v30 ^ (2 * v38))));
  STACK[0x3AF0] = v30 ^ (2 * (v12 & v30));
  v39 = (v19 ^ v20) >> v5;
  STACK[0x1C78] = v39;
  LODWORD(v30) = (((v19 ^ v20) & v21) << v8) + v39;
  LODWORD(v30) = v35 & (4 * ((v30 ^ (2 * (v30 & v10))) & v10)) ^ v30 ^ (2 * (v30 & v10));
  v40 = v35 & (4 * (v30 & v10));
  STACK[0x2400] = v40;
  LODWORD(v33) = STACK[0x6B88];
  LODWORD(STACK[0x3B00]) = STACK[0x6B88];
  LODWORD(v30) = *(v18 + *(v17 + (v33 & (4 * (v40 & v10)) ^ v30)));
  v41 = v30 ^ (2 * (v23 & v30));
  LODWORD(v30) = (((v31 ^ STACK[0x3BF8]) & v34) << v32) ^ ((v31 ^ STACK[0x3BF8]) >> v29);
  v42 = STACK[0x53CC];
  LODWORD(v30) = LODWORD(STACK[0x53CC]) & (4 * ((v30 ^ (2 * (v30 & v22))) & v22)) ^ v30 ^ (2 * (v30 & v22));
  LODWORD(STACK[0x3D70]) = v22 & STACK[0x53CC];
  STACK[0x24C8] = (8 * (v30 & v22)) & (2 * (v22 & v42));
  LODWORD(v40) = ((v7 & (v19 ^ STACK[0x3708])) << v8) + ((v19 ^ STACK[0x3708]) >> v29);
  v43 = 2 * (v40 & v22);
  STACK[0x26B8] = v43;
  LODWORD(v40) = v24 & (4 * ((v43 ^ v40) & v23)) ^ v43 ^ v40;
  v44 = LOBYTE(STACK[0x6B8E]);
  v45 = v44 & (8 * (v40 & v23));
  LOBYTE(v31) = STACK[0x6B8E];
  LODWORD(STACK[0x3AE8]) = v44;
  STACK[0x2848] = v45;
  v46 = v45 & v23;
  STACK[0x27B8] = v46;
  LOBYTE(v40) = v40 ^ (2 * v46);
  v47 = *(v17 + (v30 ^ (2 * ((8 * (v30 & v22)) & (2 * (v22 & v42)) & v23))));
  v48 = *(v17 + v40);
  STACK[0x21A8] = v47;
  v49 = *(v18 + v47) ^ (2 * (v12 & *(v18 + v47)));
  v50 = *(v18 + v48) ^ (2 * (v23 & *(v18 + v48)));
  v51 = v19;
  v52 = LOBYTE(STACK[0x6395]);
  LODWORD(v48) = (((v19 ^ STACK[0x3CC8]) & v52) << v32) ^ ((v19 ^ STACK[0x3CC8]) >> v5);
  LODWORD(v48) = v35 & (4 * ((v48 ^ (2 * (v48 & v10))) & v10)) ^ v48 ^ (2 * (v48 & v10));
  STACK[0x24A0] = 2 * (v48 & v10);
  LOBYTE(v48) = *(v18 + *(v17 + (LOBYTE(STACK[0x6B8F]) & (8 * ((2 * (v48 & v10)) & v12)) ^ v48)));
  LOBYTE(v40) = v48 ^ (2 * (v12 & v48));
  LODWORD(v48) = STACK[0x52C0];
  LODWORD(v47) = LODWORD(STACK[0x52C0]) ^ STACK[0x3E40];
  v53 = STACK[0x635C] & v47;
  STACK[0x2508] = v53;
  LODWORD(v47) = (v53 << v8) | (v47 >> v29);
  v54 = 2 * (v47 & v22);
  STACK[0x2910] = v54;
  v55 = v54 ^ v47;
  STACK[0x3590] = v55;
  LODWORD(v47) = v24 & (4 * (v55 & v23)) ^ v55;
  v56 = v47 & v23;
  STACK[0x2550] = v56;
  v57 = (2 * v56);
  STACK[0x2778] = v57;
  LOBYTE(v47) = *(v18 + *(v17 + (v31 & (8 * (v57 & v23)) ^ v47)));
  LOBYTE(v24) = v47 ^ (2 * (v23 & v47));
  v58 = LOBYTE(STACK[0x4E9E]);
  LODWORD(STACK[0x1D44]) = ((STACK[0x3CB8] & v58) >> v8) + (STACK[0x3CB8] << v29);
  v59 = LOBYTE(STACK[0x4E9C]);
  LODWORD(STACK[0x1F14]) = ((STACK[0x3B08] & v59) >> v32) | (STACK[0x3B08] << v5);
  LODWORD(STACK[0x1ECC]) = ((STACK[0x3AF0] & v58) >> v32) | (STACK[0x3AF0] << v29);
  STACK[0x24F0] = v41;
  LODWORD(STACK[0x1D54]) = ((v41 & v59) >> v8) + (v41 << v5);
  LODWORD(STACK[0x1D10]) = ((v49 & v58) >> v8) + (v49 << v5);
  LODWORD(STACK[0x1FE8]) = ((v50 & v59) >> v32) | (v50 << v29);
  LODWORD(STACK[0x1ED8]) = ((v40 & v58) >> v32) | (v40 << v29);
  LODWORD(v9) = ((STACK[0x636C] & (v48 ^ STACK[0x3720])) << v32) + ((v48 ^ STACK[0x3720]) >> v5);
  LODWORD(v9) = v35 & (4 * ((v9 ^ (2 * (v9 & v10))) & v10)) ^ v9 ^ (2 * (v9 & v10));
  LODWORD(v48) = 4 * (v10 & v35);
  v60 = STACK[0x3B00];
  LOBYTE(v9) = *(v18 + *(v17 + (v48 & (16 * (v9 & v10)) & STACK[0x3B00] ^ v9)));
  LODWORD(STACK[0x1EDC]) = ((v24 & v59) >> v8) | (v24 << v5);
  v61 = STACK[0x3CB0];
  LODWORD(v40) = (((v19 ^ STACK[0x3718]) & STACK[0x3CB0]) << v32) | ((v19 ^ STACK[0x3718]) >> v5);
  v62 = v40 ^ (2 * (v40 & v10));
  LODWORD(STACK[0x1E28]) = (((v9 ^ (2 * (v23 & v9))) & v58) >> v32) | ((v9 ^ (2 * (v23 & v9))) << v29);
  STACK[0x21E8] = v62;
  LODWORD(v48) = v48 & (16 * ((v35 & (4 * (v62 & v10)) ^ v62) & v10)) & LODWORD(STACK[0x6B90]);
  v63 = STACK[0x3CF0];
  v64 = (v51 ^ BYTE1(STACK[0x3CF0]));
  STACK[0x2540] = v64 & v21;
  LODWORD(v64) = ((v64 & v21) << v8) | (v64 >> v29);
  LODWORD(v64) = v64 ^ (2 * (v22 & v64));
  v65 = v48 ^ (v35 & (4 * (v62 & v10)) ^ v62);
  v66 = v64 & v22;
  STACK[0x2468] = v66;
  v67 = v42 & (4 * v66);
  STACK[0x2510] = v67;
  LODWORD(v67) = v67 ^ v64;
  STACK[0x2770] = 2 * (v67 & v22);
  LODWORD(v62) = STACK[0x3AE8];
  LOBYTE(v67) = *(v18 + *(v17 + (LODWORD(STACK[0x3AE8]) & (8 * ((2 * (v67 & v22)) & v23)) ^ v67)));
  v68 = STACK[0x3CC0];
  v69 = (((v68 ^ v63) & STACK[0x3B20]) << v8) ^ ((v68 ^ v63) >> v5);
  v70 = 2 * (v69 & v10);
  STACK[0x2598] = v69;
  STACK[0x2450] = v70;
  LODWORD(v63) = STACK[0x3D88];
  LODWORD(v70) = LODWORD(STACK[0x3D88]) & (4 * ((v70 ^ v69) & v12)) ^ v70 ^ v69;
  STACK[0x2558] = STACK[0x3D88] & (4 * (v70 & v12));
  v71 = *(v17 + (v63 & (4 * (v63 & (4 * (v70 & v12)) & v12)) ^ v70));
  LODWORD(STACK[0x1FD4]) = (((v67 ^ (2 * (v23 & v67))) & v59) >> v32) + ((v67 ^ (2 * (v23 & v67))) << v5);
  v72 = *(v18 + v71) ^ (2 * (v12 & *(v18 + v71)));
  v73 = (*(v18 + v71) ^ (2 * (v12 & *(v18 + v71))));
  STACK[0x2630] = ((v73 & v58) >> v8) ^ (v73 << v29);
  v74 = STACK[0x3BC0];
  STACK[0x28E8] = v52;
  STACK[0x1C70] = v68 ^ v74;
  LODWORD(v74) = ((v68 ^ v74) >> v29) ^ (((v68 ^ v74) & v52) << v32);
  v75 = v74 ^ (2 * (v74 & v22));
  STACK[0x26A8] = v75;
  LOBYTE(v74) = *(v18 + *(v17 + ((16 * ((v42 & (4 * (v75 & v22)) ^ v75) & v22)) & (4 * LODWORD(STACK[0x3D70])) & STACK[0x6B94] ^ (v42 & (4 * (v75 & v22)) ^ v75))));
  STACK[0x1E88] = ((v58 & (v74 ^ (2 * (v23 & v74)))) >> v8) + ((v74 ^ (2 * (v23 & v74))) << v5);
  LODWORD(v74) = ((v21 & (v51 ^ STACK[0x3B78])) << v8) ^ ((v51 ^ STACK[0x3B78]) >> v29);
  LODWORD(v74) = v74 ^ (2 * (v74 & v10));
  STACK[0x2930] = 2 * (v74 & v10);
  LOBYTE(v74) = *(v18 + *(v17 + (LODWORD(STACK[0x3D90]) & (16 * ((v74 ^ (2 * ((2 * (v74 & v10)) & v12))) & v12)) ^ v74 ^ (2 * ((2 * (v74 & v10)) & v12)))));
  STACK[0x1CA8] = (((v74 ^ (2 * (v12 & v74))) & v59) >> v32) + ((v74 ^ (2 * (v12 & v74))) << v29);
  v76 = STACK[0x3CE8];
  LODWORD(v74) = ((v68 ^ BYTE1(v76)) >> v5) | ((v61 & (v68 ^ BYTE1(v76))) << v32);
  v77 = 2 * (v74 & v22);
  STACK[0x2830] = v77;
  LODWORD(v74) = v77 ^ v74;
  v78 = 2 * (v74 & v23);
  STACK[0x3730] = v78;
  v79 = v74 ^ (2 * (v78 & v23));
  LOBYTE(v74) = v62 & LOBYTE(STACK[0x6B9B]) & (16 * ((v74 ^ (2 * ((2 * (v74 & v23)) & v23))) & v23));
  STACK[0x2940] = v79;
  LOBYTE(v74) = *(v18 + *(v17 + (v74 ^ v79)));
  STACK[0x1CD8] = (((v74 ^ (2 * (v12 & v74))) & v58) >> v8) ^ ((v74 ^ (2 * (v12 & v74))) << v29);
  LODWORD(v74) = ((v21 & (v51 ^ v76)) << v8) + ((v51 ^ v76) >> v5);
  LODWORD(v74) = v35 & (4 * ((v74 ^ (2 * (v74 & v10))) & v10)) ^ v74 ^ (2 * (v74 & v10));
  v80 = v10 & (2 * (v74 & v10));
  LODWORD(v78) = STACK[0x56C0] & v60;
  STACK[0x2518] = v80;
  LODWORD(v74) = v78 & (8 * v80) ^ v74;
  v81 = *(v17 + v65);
  LOBYTE(v74) = *(v18 + *(v17 + v74));
  STACK[0x1CD0] = (((v74 ^ (2 * (v23 & v74))) & v59) >> v32) ^ ((v74 ^ (2 * (v23 & v74))) << v5);
  v82 = (*(v18 + v81) ^ (2 * (v12 & *(v18 + v81))));
  STACK[0x2580] = v82 & v59;
  STACK[0x26D0] = v82 << v5;
  LODWORD(STACK[0x1ED0]) = ((v82 & v59) >> v8) | (v82 << v5);
  STACK[0x2500] = v72;
  v83 = *(v0 + 8 * (v1 - 9893));
  LODWORD(STACK[0x3848]) = 6;
  STACK[0x26E8] = v61;
  LODWORD(STACK[0x1CE8]) = STACK[0x2630];
  return v83();
}

uint64_t sub_100DD27C8()
{
  v2 = *STACK[0x3680];
  v3 = STACK[0x3D18];
  v4 = *(STACK[0x3D18] + 404);
  STACK[0x2AA0] = v4;
  STACK[0x3CE0] = v4 ^ 0xDE;
  v5 = v4 ^ 0xDE | ((v2 ^ 0xD5) << 24);
  v6 = v3[410];
  STACK[0x34A0] = v6;
  LODWORD(v6) = ((v6 ^ 0xF4) << 16) | ((v3[411] ^ 0xAF) << 8);
  v7 = v3[405] ^ 0xB1;
  v8 = v3[408] ^ 0xBALL;
  STACK[0x3D70] = v8;
  v9 = v8 | (v7 << 24);
  v10 = v3[413] ^ 0xFFFFFFF9;
  v11 = v3[416] ^ 0xE2;
  STACK[0x3CD8] = v11;
  LODWORD(v11) = v11 | (v10 << 24);
  LODWORD(v6) = v6 | ((v3[409] ^ 0x1D) << 24);
  v12 = (v3[415] ^ 0xB) << 8;
  v13 = v3[414];
  STACK[0x3450] = v13;
  v14 = v12 | ((v13 ^ 0x50) << 16);
  v15 = (v3[403] ^ 0x67) << 8;
  v16 = v3[402] ^ 0x8Cu;
  STACK[0x3478] = v16;
  v17 = v15 | (v16 << 16);
  LODWORD(v16) = (v3[406] ^ 0x68) << 16;
  v18 = v14 | v11;
  STACK[0x3CD0] = v18;
  v19 = LODWORD(STACK[0x30F0]) ^ v18;
  v20 = STACK[0x3AC0];
  v21 = v3;
  LODWORD(v18) = STACK[0x3B60];
  v22 = LODWORD(STACK[0x30E0]) ^ LODWORD(STACK[0x3B60]) ^ __ROR4__(*(STACK[0x3AC0] + 4 * BYTE1(v19)), 16);
  v23 = v16 | ((v3[407] ^ 0xC3) << 8) | v9;
  STACK[0x3CC8] = v23;
  v24 = LODWORD(STACK[0x30E8]) ^ v23;
  v25 = *(v20 + 4 * BYTE2(v24));
  LODWORD(v16) = *(v20 + 4 * v19);
  v26 = v21[412];
  STACK[0x39A0] = v26;
  v26 ^= 6uLL;
  STACK[0x3C18] = v26;
  v27 = v6 | v26;
  v28 = STACK[0x3320];
  v29 = STACK[0x3228];
  v30 = LODWORD(STACK[0x3228]) ^ LODWORD(STACK[0x3320]) ^ LODWORD(STACK[0x2F18]) ^ v27;
  LODWORD(v21) = *(v20 + 4 * BYTE2(v30));
  v31 = *(v20 + ((v24 >> 22) & 0x3FC));
  v32 = v17 | v5;
  STACK[0x3CC0] = v32;
  v33 = LODWORD(STACK[0x30F8]) ^ v32;
  v34 = *(v20 + 4 * BYTE2(v33));
  v35 = *(v20 + 4 * v30);
  v36 = *(v20 + 4 * (LOBYTE(STACK[0x30F8]) ^ v32));
  v37 = *(v20 + 4 * BYTE1(v24));
  v38 = *(v20 + ((v33 >> 22) & 0x3FC));
  v39 = *(v20 + 4 * BYTE1(v30));
  v40 = *(v20 + 4 * BYTE1(v33));
  LODWORD(v33) = v22 ^ __ROR4__(v21, 8);
  v41 = *(v20 + ((v30 >> 22) & 0x3FC));
  STACK[0x2A88] = v24;
  v42 = v33 ^ v31 ^ __ROR4__(v36, 24);
  LODWORD(v30) = LODWORD(STACK[0x32D8]) ^ v29 ^ LODWORD(STACK[0x32D0]) ^ LODWORD(STACK[0x31F0]);
  v43 = LODWORD(STACK[0x30D8]) ^ LODWORD(STACK[0x3980]) ^ __ROR4__(v34, 8) ^ __ROR4__(v35, 24);
  v44 = *(v20 + ((v19 >> 22) & 0x3FC));
  v45 = LODWORD(STACK[0x30D0]) ^ LODWORD(STACK[0x3B70]) ^ v41 ^ __ROR4__(v40, 16) ^ __ROR4__(*(v20 + 4 * v24), 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v19)), 8);
  v46 = STACK[0x3998];
  LODWORD(v19) = LODWORD(STACK[0x3558]) ^ LODWORD(STACK[0x3828]) ^ LODWORD(STACK[0x3BE8]) ^ LODWORD(STACK[0x3BD8]) ^ LODWORD(STACK[0x3BA8]) ^ LODWORD(STACK[0x37E8]) ^ LODWORD(STACK[0x3B90]) ^ LODWORD(STACK[0x3B88]) ^ LODWORD(STACK[0x3B70]) ^ v18 ^ LODWORD(STACK[0x3998]);
  v47 = STACK[0x3988];
  v48 = STACK[0x3960];
  v49 = LODWORD(STACK[0x30C8]) ^ LODWORD(STACK[0x3B88]) ^ __ROR4__(v25, 8) ^ __ROR4__(v16, 24) ^ v38 ^ __ROR4__(v39, 16);
  v50 = *(v20 + 4 * v45);
  LODWORD(v18) = STACK[0x3950];
  v51 = STACK[0x3948];
  v52 = *(v20 + 4 * BYTE1(v49));
  v53 = STACK[0x31E8];
  v54 = v19 ^ LODWORD(STACK[0x3988]) ^ LODWORD(STACK[0x3960]) ^ LODWORD(STACK[0x3950]) ^ LODWORD(STACK[0x3948]) ^ LODWORD(STACK[0x31E8]);
  v55 = STACK[0x3940];
  LODWORD(v16) = *(v20 + ((v45 >> 22) & 0x3FC));
  v56 = v43 ^ __ROR4__(v37, 16) ^ v44;
  LODWORD(v21) = *(v20 + 4 * BYTE1(v56));
  v57 = LODWORD(STACK[0x3B68]) ^ v28 ^ __ROR4__(*(v20 + 4 * BYTE2(v42)), 8) ^ __ROR4__(*(v20 + 4 * v56), 24) ^ *(v20 + ((v49 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE1(v45)), 16);
  v58 = *(v20 + 4 * v49);
  v59 = v54 ^ LODWORD(STACK[0x38C0]) ^ LODWORD(STACK[0x3940]) ^ LODWORD(STACK[0x3D60]) ^ LODWORD(STACK[0x3D68]) ^ LODWORD(STACK[0x37A0]) ^ LODWORD(STACK[0x3938]) ^ STACK[0x37B8] ^ LODWORD(STACK[0x3D58]) ^ LODWORD(STACK[0x3D50]) ^ LODWORD(STACK[0x3930]) ^ LODWORD(STACK[0x3D48]) ^ LODWORD(STACK[0x3D38]) ^ LODWORD(STACK[0x3D40]);
  v60 = LODWORD(STACK[0x30C0]) ^ LODWORD(STACK[0x3B90]) ^ *(v20 + ((v42 >> 22) & 0x3FC));
  STACK[0x3588] = v45;
  v61 = v60 ^ __ROR4__(v21, 16);
  v62 = *(v20 + 4 * BYTE2(v45));
  LODWORD(v21) = LODWORD(STACK[0x3E40]) ^ 0x350778E2;
  LODWORD(v33) = v30 ^ v21;
  LODWORD(STACK[0x38A0]) = v30 ^ v21;
  v63 = v61 ^ __ROR4__(v58, 24) ^ __ROR4__(v62, 8);
  v64 = LODWORD(STACK[0x30B8]) ^ v18 ^ __ROR4__(v52, 16) ^ v16 ^ __ROR4__(*(v20 + 4 * BYTE2(v56)), 8);
  LODWORD(v30) = LODWORD(STACK[0x3908]) ^ LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x39A8]) ^ LODWORD(STACK[0x3D30]) ^ STACK[0x3D80] ^ LODWORD(STACK[0x3B98]) ^ LODWORD(STACK[0x3D20]) ^ LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x2A70]) = v50;
  LODWORD(v24) = LODWORD(STACK[0x38D8]) ^ LODWORD(STACK[0x38D0]) ^ LODWORD(STACK[0x38B8]);
  LODWORD(STACK[0x3CF0]) = v24;
  LODWORD(v18) = v59 ^ v30 ^ v24 ^ v33;
  LODWORD(STACK[0x3D88]) = v18;
  v65 = v57 ^ LODWORD(STACK[0x64D4]);
  STACK[0x2A78] = v49;
  LODWORD(v16) = v48 ^ v28 ^ __ROR4__(v50, 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v49)), 8);
  v66 = __ROR4__(*(v20 + 4 * BYTE1(v42)), 16);
  v67 = v16 ^ v66 ^ *(v20 + ((v56 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x6A74]);
  LODWORD(v56) = *(v20 + 4 * (v16 ^ v66 ^ *(v20 + ((v56 >> 22) & 0x3FC)) ^ LOBYTE(STACK[0x6A74])));
  v68 = v64 ^ __ROR4__(*(v20 + 4 * v42), 24);
  HIDWORD(v69) = *(v20 + 4 * BYTE2(v63));
  LODWORD(v69) = HIDWORD(v69);
  v70 = STACK[0x31C0];
  LODWORD(v42) = STACK[0x3D90];
  LODWORD(v56) = ((v69 >> 8) ^ __ROR4__(v56, 24) ^ *(v20 + ((v65 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE1(v68)), 16)) + 1667161521 * (LODWORD(STACK[0x3D90]) - (v21 ^ LODWORD(STACK[0x31C0])));
  HIDWORD(v69) = *(v20 + 4 * BYTE1(v67));
  LODWORD(v69) = HIDWORD(v69);
  v71 = (v69 >> 16) ^ __ROR4__(*(v20 + 4 * BYTE2(v68)), 8) ^ __ROR4__(*(v20 + 4 * v65), 24) ^ *(v20 + ((v63 >> 22) & 0x3FC));
  LODWORD(v16) = v21 + (LODWORD(STACK[0x3BA0]) ^ 0x56EA9305 ^ v18);
  LODWORD(v18) = v21;
  LODWORD(STACK[0x3D78]) = v21;
  v72 = v71 + 10879435 * v16 + 10879435;
  LODWORD(v16) = v55 ^ v28 ^ LODWORD(STACK[0x64E4]);
  LODWORD(STACK[0x3D98]) = 0;
  v73 = v16 ^ (v56 + LODWORD(STACK[0x31D0]));
  v74 = LODWORD(STACK[0x30B0]) ^ v46 ^ v72;
  v75 = LODWORD(STACK[0x30A8]) ^ v47 ^ __ROR4__(*(v20 + 4 * BYTE1(v65)), 16) ^ __ROR4__(*(v20 + 4 * v63), 24) ^ *(v20 + ((v68 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE2(v67)), 8);
  STACK[0x2A98] = v67;
  LODWORD(v68) = v53 ^ v28 ^ *(v20 + ((v67 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * v68), 24);
  LODWORD(v69) = __ROR4__(*(v20 + 4 * BYTE2(v65)), 8);
  STACK[0x2A58] = v63;
  v76 = v68 ^ v69 ^ HIWORD(*(v20 + 4 * BYTE1(v63))) ^ (*(v20 + 4 * BYTE1(v63)) << 16) ^ LODWORD(STACK[0x6A84]);
  v77 = v51 ^ v28 ^ __ROR4__(*(v20 + 4 * v73), 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v75)), 8) ^ __ROR4__(*(v20 + 4 * BYTE1(v76)), 16) ^ *(v20 + ((v74 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x64F0]);
  STACK[0x38B0] = v77;
  v78 = (LODWORD(STACK[0x3040]) ^ LODWORD(STACK[0x37A0])) ^ __ROR4__(*(v20 + 4 * BYTE1(v73)), 16) ^ __ROR4__(*(v20 + 4 * BYTE2(v76)), 8) ^ __ROR4__(*(v20 + 4 * v74), 24) ^ *(v20 + ((v75 >> 22) & 0x3FC));
  LODWORD(v65) = LODWORD(STACK[0x38C0]) ^ v28 ^ __ROR4__(*(v20 + 4 * BYTE2(v74)), 8) ^ __ROR4__(*(v20 + 4 * v76), 24);
  LODWORD(v69) = __ROR4__(*(v20 + 4 * BYTE1(v75)), 16);
  LODWORD(v56) = *(v20 + ((v73 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x64F4]);
  STACK[0x2A80] = v75;
  LODWORD(v75) = *(v20 + 4 * v75);
  STACK[0x2A60] = v74;
  v79 = *(v20 + 4 * BYTE1(v74));
  v80 = v65 ^ v69 ^ v56;
  STACK[0x3CE8] = v80;
  LODWORD(v65) = LODWORD(STACK[0x3038]) ^ LODWORD(STACK[0x3D40]);
  LODWORD(STACK[0x2A50]) = v75;
  LODWORD(v76) = v65 ^ __ROR4__(v75, 24) ^ __ROR4__(v79, 16) ^ *(v20 + ((v76 >> 22) & 0x3FC));
  STACK[0x2A68] = v73;
  v81 = v76 ^ __ROR4__(*(v20 + 4 * BYTE2(v73)), 8);
  LODWORD(v76) = *(v20 + ((v80 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE2(v77)), 8) ^ __ROR4__(*(v20 + 4 * v81), 24);
  LODWORD(v69) = __ROR4__(*(v20 + 4 * BYTE1(v78)), 16);
  LODWORD(STACK[0x3B08]) = v42 ^ v70;
  LODWORD(STACK[0x3D90]) = (v76 ^ v69) + 1280989209 * (v18 - (v42 ^ v70));
  v82 = STACK[0x3A90];
  LODWORD(v75) = *(v82 + STACK[0x3C18]) | (*(v82 + BYTE1(v27)) << 8) | (*(v82 + BYTE2(v27)) << 16);
  STACK[0x2A90] = v27;
  v83 = v75 | (*(v82 + (v27 >> 24)) << 24);
  LODWORD(STACK[0x3B78]) = *(v82 + STACK[0x2C20]) | (*(v82 + STACK[0x2D10]) << 24) | (*(v82 + STACK[0x2CF8]) << 8) | (*(v82 + STACK[0x2CF0]) << 16);
  LODWORD(STACK[0x3C18]) = (*(v82 + STACK[0x2DE0]) << 16) | (*(v82 + STACK[0x2DE8]) << 24) | *(v82 + STACK[0x2CC8]) | (*(v82 + STACK[0x2DD8]) << 8);
  LODWORD(v65) = *(v82 + STACK[0x2EB8]);
  LODWORD(v80) = *(v82 + STACK[0x2D28]);
  LODWORD(STACK[0x3B20]) = *(v82 + STACK[0x2D40]) | (*(v82 + STACK[0x2ED0]) << 8) | (*(v82 + STACK[0x2EC8]) << 24) | (*(v82 + STACK[0x2EC0]) << 16);
  LODWORD(STACK[0x3B00]) = v80 | (v65 << 8) | (*(v82 + STACK[0x2EB0]) << 16) | (*(v82 + STACK[0x2EA8]) << 24);
  v84 = *(v82 + STACK[0x2E90]);
  LODWORD(v76) = *(v82 + STACK[0x2C28]);
  STACK[0x3480] = v84;
  LODWORD(STACK[0x3BF8]) = v76 | (v84 << 24) | (*(v82 + STACK[0x2D30]) << 8) | (*(v82 + STACK[0x2D18]) << 16);
  v85 = *(v82 + STACK[0x2C08]) | (*(v82 + STACK[0x2CD8]) << 24) | (*(v82 + STACK[0x2CD0]) << 8) | (*(v82 + STACK[0x2CB8]) << 16);
  v86 = *(v82 + STACK[0x2EF0]);
  v87 = *(v82 + STACK[0x2BE8]) | (*(v82 + STACK[0x2C90]) << 16) | (*(v82 + STACK[0x2C78]) << 8) | (*(v82 + STACK[0x2EE8]) << 24);
  STACK[0x33F0] = v86;
  LODWORD(v80) = (v86 << 16) | (*(v82 + STACK[0x2EF8]) << 24) | *(v82 + STACK[0x2BE0]) | (*(v82 + STACK[0x2C70]) << 8);
  LODWORD(v74) = *(v82 + STACK[0x2BC8]) | (*(v82 + STACK[0x2C58]) << 16) | (*(v82 + STACK[0x2C50]) << 8) | (*(v82 + STACK[0x2C38]) << 24);
  LODWORD(v65) = *(v82 + STACK[0x2C00]) | (*(v82 + STACK[0x2EE0]) << 24) | (*(v82 + STACK[0x2CB0]) << 8) | (*(v82 + STACK[0x2C98]) << 16);
  LODWORD(v86) = *(v82 + STACK[0x2BC0]) | (*(v82 + STACK[0x2C30]) << 16) | (*(v82 + STACK[0x2C18]) << 8) | (*(v82 + STACK[0x2C10]) << 24);
  v88 = *(v82 + STACK[0x31A8]);
  LODWORD(v76) = *(v82 + STACK[0x31A0]);
  STACK[0x3418] = v88;
  LODWORD(v63) = v76 | (v88 << 24) | (*(v82 + STACK[0x31B8]) << 8) | (*(v82 + STACK[0x31B0]) << 16);
  v89 = *(v82 + STACK[0x3138]);
  LODWORD(v76) = *(v82 + STACK[0x3128]);
  STACK[0x33F8] = v89;
  LODWORD(STACK[0x3BC0]) = v76 | (v89 << 8) | (*(v82 + STACK[0x3130]) << 24) | (*(v82 + STACK[0x3120]) << 16);
  v90 = *(v82 + BYTE1(STACK[0x3CC0]));
  v91 = STACK[0x3CC0];
  LODWORD(v89) = *(v82 + (STACK[0x3CC0] >> 24));
  LODWORD(v77) = *(v82 + STACK[0x3CE0]);
  LODWORD(v73) = *(v82 + STACK[0x3108]) | (*(v82 + STACK[0x3118]) << 24) | (*(v82 + STACK[0x3110]) << 8) | (*(v82 + STACK[0x3100]) << 16);
  LODWORD(STACK[0x39E8]) = v90;
  v92 = v77 | (v90 << 8) | (v89 << 24) | (*(v82 + BYTE2(v91)) << 16);
  v93 = *(v82 + STACK[0x3060]);
  LODWORD(v76) = *(v82 + STACK[0x3050]);
  STACK[0x3CC0] = v93;
  LODWORD(v89) = v76 | (v93 << 8) | (*(v82 + STACK[0x3058]) << 24) | (*(v82 + STACK[0x3048]) << 16);
  LODWORD(v76) = *(v82 + STACK[0x2B38]) | (*(v82 + STACK[0x2EA0]) << 24) | (*(v82 + STACK[0x2B40]) << 8) | (*(v82 + STACK[0x2B30]) << 16);
  v94 = STACK[0x3CD0];
  v95 = *(v82 + BYTE1(STACK[0x3CD0]));
  LODWORD(v27) = *(v82 + STACK[0x2B28]) | (*(v82 + STACK[0x2F10]) << 8) | (*(v82 + STACK[0x32E8]) << 24) | (*(v82 + STACK[0x2B20]) << 16);
  LODWORD(v93) = *(v82 + STACK[0x3CD8]);
  LODWORD(v77) = *(v82 + BYTE2(STACK[0x3CD0]));
  STACK[0x3468] = v95;
  v96 = v93 | (v95 << 8) | (v77 << 16) | (*(v82 + (v94 >> 24)) << 24);
  v97 = *(v82 + STACK[0x2B00]) | (*(v82 + STACK[0x2ED8]) << 24) | (*(v82 + STACK[0x2B08]) << 16) | (*(v82 + STACK[0x2AE8]) << 8);
  LODWORD(v67) = STACK[0x31E0];
  LODWORD(v93) = v63 ^ LODWORD(STACK[0x31E0]) ^ LODWORD(STACK[0x655C]);
  LODWORD(v63) = STACK[0x5280];
  v98 = v93 ^ LODWORD(STACK[0x5280]) ^ (*(v82 + STACK[0x3D70]) | (*(v82 + (STACK[0x3CC8] >> 24)) << 24) | (*(v82 + BYTE1(STACK[0x3CC8])) << 8) | (*(v82 + BYTE2(STACK[0x3CC8])) << 16));
  LODWORD(v77) = STACK[0x5294];
  v99 = (*(v82 + STACK[0x2B10]) | (*(v82 + STACK[0x2F00]) << 8) | (*(v82 + STACK[0x2B18]) << 16) | (*(v82 + STACK[0x2F08]) << 24)) ^ LODWORD(STACK[0x31E0]) ^ LODWORD(STACK[0x6560]) ^ LODWORD(STACK[0x5294]) ^ v96;
  v100 = v83 ^ LODWORD(STACK[0x31E0]) ^ v27 ^ LODWORD(STACK[0x6564]) ^ LODWORD(STACK[0x5280]);
  v101 = LODWORD(STACK[0x5294]) ^ LODWORD(STACK[0x2FA8]) ^ v86 ^ v92;
  v102 = STACK[0x3AB8];
  v103 = LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x2FA0]) ^ v74 ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE1(v100)), 16) ^ __ROR4__(*(STACK[0x3AB8] + 4 * v99), 24) ^ *(STACK[0x3AB8] + ((v101 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE2(v98)), 8);
  v104 = LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x31E0]) ^ v87 ^ *(STACK[0x3AB8] + ((v100 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE1(v101)), 16) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE2(v99)), 8) ^ LODWORD(STACK[0x657C]) ^ __ROR4__(*(STACK[0x3AB8] + 4 * (v93 ^ LOBYTE(STACK[0x5280]) ^ *(v82 + STACK[0x3D70]))), 24);
  v105 = LODWORD(STACK[0x5294]) ^ LODWORD(STACK[0x2F98]) ^ v80 ^ *(STACK[0x3AB8] + ((v98 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE1(v99)), 16) ^ __ROR4__(*(STACK[0x3AB8] + 4 * v101), 24) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE2(v100)), 8);
  LODWORD(v93) = *(STACK[0x3AB8] + 4 * BYTE2(v101));
  LODWORD(STACK[0x3CE0]) = LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x31E0]);
  v106 = v63 ^ v67 ^ v65 ^ __ROR4__(v93, 8) ^ __ROR4__(*(v102 + 4 * v100), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v98)), 16) ^ *(v102 + ((v99 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x6588]);
  v107 = v97 ^ v67 ^ __ROR4__(*(v102 + 4 * v105), 24) ^ *(v102 + ((v104 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE2(v106)), 8) ^ __ROR4__(*(v102 + 4 * BYTE1(v103)), 16) ^ LODWORD(STACK[0x6590]) ^ v77;
  v108 = v63 ^ v67 ^ LODWORD(STACK[0x3B20]) ^ __ROR4__(*(v102 + 4 * BYTE2(v103)), 8) ^ __ROR4__(*(v102 + 4 * BYTE1(v105)), 16) ^ __ROR4__(*(v102 + 4 * v104), 24) ^ *(v102 + ((v106 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x6594]);
  v109 = v63 ^ LODWORD(STACK[0x2F90]) ^ v85 ^ __ROR4__(*(v102 + 4 * BYTE2(v105)), 8) ^ *(v102 + ((v103 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE1(v104)), 16) ^ __ROR4__(*(v102 + 4 * v106), 24);
  LODWORD(v93) = *(v102 + 4 * BYTE2(v104));
  STACK[0x2A20] = v105;
  LODWORD(v104) = *(v102 + ((v105 >> 22) & 0x3FC));
  LODWORD(STACK[0x3B20]) = v73 ^ v63;
  LODWORD(v93) = v73 ^ v63 ^ LODWORD(STACK[0x2F88]) ^ __ROR4__(v93, 8) ^ v104;
  STACK[0x2A28] = v103;
  v110 = v93 ^ __ROR4__(*(v102 + 4 * v103), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v106)), 16);
  v111 = v63 ^ LODWORD(STACK[0x2F80]) ^ LODWORD(STACK[0x3B00]) ^ __ROR4__(*(v102 + 4 * BYTE1(v107)), 16) ^ __ROR4__(*(v102 + 4 * v108), 24) ^ __ROR4__(*(v102 + 4 * BYTE2(v110)), 8) ^ *(v102 + ((v109 >> 22) & 0x3FC));
  LODWORD(v101) = *(v102 + ((v107 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * v110), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v109)), 16);
  LODWORD(v69) = __ROR4__(*(v102 + 4 * BYTE2(v108)), 8);
  LODWORD(v93) = *(v82 + STACK[0x2AD8]) | (*(v82 + STACK[0x2E98]) << 24) | (*(v82 + STACK[0x2AE0]) << 16) | (*(v82 + STACK[0x2AD0]) << 8);
  LODWORD(v103) = LODWORD(STACK[0x31D8]) ^ LODWORD(STACK[0x3808]);
  LODWORD(STACK[0x3AF0]) = v103;
  v112 = STACK[0x3E18];
  LODWORD(v74) = STACK[0x3D78];
  LODWORD(v27) = STACK[0x3D88];
  LODWORD(v104) = v103 ^ LODWORD(STACK[0x3E18]) ^ v67 ^ LODWORD(STACK[0x38C8]) ^ LODWORD(STACK[0x3D78]) ^ LODWORD(STACK[0x3D88]) ^ 0x807CE1D8 ^ v93 ^ LODWORD(STACK[0x65B0]) ^ v77 ^ v101 ^ v69;
  LODWORD(v105) = STACK[0x3B08];
  v113 = v77 ^ LODWORD(STACK[0x2F78]) ^ LODWORD(STACK[0x3B78]) ^ *(v102 + ((v108 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE1(v110)), 16) ^ __ROR4__(*(v102 + 4 * BYTE2(v109)), 8) ^ __ROR4__(*(v102 + 4 * v107), 24);
  v114 = (-566861935 * LODWORD(STACK[0x3D78])) ^ v67 ^ (-566861935 * LODWORD(STACK[0x3B08])) ^ v76 ^ *(v102 + ((v110 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE2(v107)), 8) ^ __ROR4__(*(v102 + 4 * v109), 24) ^ LODWORD(STACK[0x65B4]) ^ __ROR4__(*(v102 + 4 * BYTE1(v108)), 16) ^ v63;
  v115 = v77 ^ v67 ^ LODWORD(STACK[0x3C18]) ^ *(v102 + 4 * BYTE3(v104)) ^ __ROR4__(*(v102 + 4 * BYTE1(v111)), 16) ^ __ROR4__(*(v102 + 4 * v114), 24) ^ __ROR4__(*(v102 + 4 * BYTE2(v113)), 8) ^ LODWORD(STACK[0x65C4]);
  v116 = v63 ^ LODWORD(STACK[0x2F70]) ^ LODWORD(STACK[0x3BF8]) ^ __ROR4__(*(v102 + 4 * BYTE2(v114)), 8) ^ __ROR4__(*(v102 + 4 * BYTE1(v104)), 16) ^ __ROR4__(*(v102 + 4 * v113), 24) ^ *(v102 + ((v111 >> 22) & 0x3FC));
  LODWORD(v93) = v89 ^ v67 ^ *(v102 + ((v113 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE1(v114)), 16) ^ __ROR4__(*(v102 + 4 * v104), 24) ^ __ROR4__(*(v102 + 4 * BYTE2(v111)), 8);
  LODWORD(v89) = LODWORD(STACK[0x3BC0]) ^ v77;
  LODWORD(v114) = *(v102 + ((v114 >> 22) & 0x3FC));
  LODWORD(STACK[0x3D70]) = v89;
  LODWORD(v113) = v89 ^ v67 ^ v114 ^ __ROR4__(*(v102 + 4 * BYTE1(v113)), 16);
  STACK[0x2A38] = v111;
  LODWORD(v113) = v113 ^ __ROR4__(*(v102 + 4 * v111), 24);
  LODWORD(v69) = __ROR4__(*(v102 + 4 * BYTE2(v104)), 8);
  v117 = v113 ^ v69 ^ LODWORD(STACK[0x65D4]);
  v118 = v93 ^ LODWORD(STACK[0x65D0]) ^ v63;
  LODWORD(v69) = *(v102 + 4 * (v113 ^ v69 ^ LOBYTE(STACK[0x65D4])));
  HIDWORD(v69) = v69;
  LODWORD(v114) = *(v102 + 4 * BYTE2(v117));
  LODWORD(STACK[0x3A28]) = ((v69 >> 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v116)), 16) ^ __ROR4__(*(v102 + 4 * BYTE2(v118)), 8) ^ *(v102 + ((v115 >> 22) & 0x3FC))) + 1752536365 * (v105 - v74);
  HIDWORD(v69) = *(v102 + 4 * BYTE1(v115));
  LODWORD(v69) = HIDWORD(v69);
  LODWORD(STACK[0x3870]) = ((v69 >> 16) ^ __ROR4__(v114, 8) ^ __ROR4__(*(v102 + 4 * v118), 24) ^ *(v102 + ((v116 >> 22) & 0x3FC))) + 464415561 * (v112 - (v27 ^ 0x807CE1D8 ^ v74));
  LODWORD(STACK[0x3860]) = *(v82 + STACK[0x2D20]) | (*(v82 + STACK[0x2E80]) << 8) | (*(v82 + STACK[0x2E70]) << 16) | (*(v82 + STACK[0x2E78]) << 24);
  v119 = *(v82 + STACK[0x2E48]);
  LODWORD(v113) = *(v82 + STACK[0x2CE0]);
  STACK[0x34B8] = v119;
  LODWORD(STACK[0x39F0]) = v113 | (v119 << 8) | (*(v82 + STACK[0x2DF8]) << 16) | (*(v82 + STACK[0x2DF0]) << 24);
  LODWORD(STACK[0x39C0]) = (*(v82 + STACK[0x2E88]) << 8) | (*(v82 + STACK[0x2D60]) << 24) | *(v82 + STACK[0x2C48]) | (*(v82 + STACK[0x2D58]) << 16);
  LODWORD(STACK[0x3B08]) = (*(v82 + STACK[0x3190]) << 16) | (*(v82 + STACK[0x3198]) << 24) | *(v82 + STACK[0x3180]) | (*(v82 + STACK[0x3188]) << 8);
  v120 = *(v82 + STACK[0x2E20]);
  LODWORD(STACK[0x3AE8]) = *(v82 + STACK[0x2C68]) | (*(v82 + STACK[0x2D88]) << 8) | (*(v82 + STACK[0x2D80]) << 16) | (*(v82 + STACK[0x2D78]) << 24);
  LODWORD(v113) = *(v82 + STACK[0x2DC8]);
  STACK[0x3460] = v120;
  LODWORD(v113) = (v120 << 8) | (v113 << 24) | *(v82 + STACK[0x2CA8]);
  LODWORD(v120) = *(v82 + STACK[0x2E30]);
  LODWORD(STACK[0x3BF8]) = v113 | (*(v82 + STACK[0x2DC0]) << 16);
  LODWORD(STACK[0x3CC8]) = *(v82 + STACK[0x2C88]) | (v120 << 8) | (*(v82 + STACK[0x2DA8]) << 16) | (*(v82 + STACK[0x2DA0]) << 24);
  LODWORD(v120) = *(v82 + STACK[0x2E10]);
  LODWORD(v106) = *(v82 + STACK[0x2CE8]);
  LODWORD(STACK[0x3AD8]) = *(v82 + STACK[0x2C80]) | (*(v82 + STACK[0x2E38]) << 24) | (*(v82 + STACK[0x2D98]) << 8) | (*(v82 + STACK[0x2D90]) << 16);
  LODWORD(STACK[0x3AE0]) = v106 | (v120 << 24) | (*(v82 + STACK[0x2E08]) << 8) | (*(v82 + STACK[0x2E00]) << 16);
  v121 = *(v82 + STACK[0x2E28]);
  LODWORD(v113) = *(v82 + STACK[0x2DB8]);
  STACK[0x3520] = v121;
  LODWORD(STACK[0x3B78]) = (v121 << 8) | (v113 << 24) | *(v82 + STACK[0x2CA0]) | (*(v82 + STACK[0x2DB0]) << 16);
  LODWORD(STACK[0x3880]) = (*(v82 + STACK[0x2D70]) << 16) | (*(v82 + STACK[0x2E68]) << 24) | *(v82 + STACK[0x2C60]) | (*(v82 + STACK[0x2D68]) << 8);
  v122 = *(v82 + STACK[0x2BF8]);
  LODWORD(v113) = *(v82 + STACK[0x2CC0]);
  STACK[0x3490] = v122;
  LODWORD(STACK[0x3CD8]) = v113 | (v122 << 24) | (*(v82 + STACK[0x2E18]) << 16) | (*(v82 + STACK[0x2DD0]) << 8);
  LODWORD(STACK[0x3858]) = (*(v82 + STACK[0x3170]) << 16) | (*(v82 + STACK[0x3178]) << 24) | *(v82 + STACK[0x3160]) | (*(v82 + STACK[0x3168]) << 8);
  v123 = *(v82 + STACK[0x3158]);
  LODWORD(v113) = *(v82 + STACK[0x3148]);
  STACK[0x3500] = v123;
  LODWORD(v105) = v113 | (v123 << 16) | (*(v82 + STACK[0x3150]) << 8) | (*(v82 + STACK[0x3140]) << 24);
  v124 = *(v82 + STACK[0x2E60]);
  LODWORD(v89) = *(v82 + STACK[0x2C40]) | (*(v82 + STACK[0x2D50]) << 24) | (*(v82 + STACK[0x2D48]) << 8) | (*(v82 + STACK[0x2D38]) << 16);
  LODWORD(v113) = *(v82 + STACK[0x2E58]);
  STACK[0x3458] = v124;
  LODWORD(v123) = *(v82 + STACK[0x2D00]);
  LODWORD(STACK[0x3890]) = (v124 << 16) | (v113 << 8) | *(v82 + STACK[0x2D08]) | (*(v82 + STACK[0x2E50]) << 24);
  LODWORD(STACK[0x3B00]) = v123 | (*(v82 + STACK[0x2BF0]) << 16) | (*(v82 + STACK[0x2BD8]) << 8) | (*(v82 + STACK[0x2BD0]) << 24);
  LODWORD(v124) = *(v82 + STACK[0x2B98]);
  LODWORD(v73) = *(v82 + STACK[0x2B90]);
  LODWORD(STACK[0x3CD0]) = *(v82 + STACK[0x2BA8]) | (*(v82 + STACK[0x2BB8]) << 24) | (*(v82 + STACK[0x2BB0]) << 8) | (*(v82 + STACK[0x2BA0]) << 16);
  LODWORD(STACK[0x3C18]) = v73 | (v124 << 8) | (*(v82 + STACK[0x2B88]) << 16) | (*(v82 + STACK[0x2B80]) << 24);
  LODWORD(STACK[0x3878]) = *(v82 + STACK[0x2B70]) | (*(v82 + STACK[0x2E40]) << 8) | (*(v82 + STACK[0x2B78]) << 16) | (*(v82 + STACK[0x2B68]) << 24);
  LODWORD(STACK[0x3888]) = *(v82 + STACK[0x2B50]) | (*(v82 + STACK[0x2B60]) << 16) | (*(v82 + STACK[0x2B58]) << 8) | (*(v82 + STACK[0x2B48]) << 24);
  LODWORD(v124) = *(v82 + STACK[0x3080]);
  LODWORD(STACK[0x3850]) = *(v82 + STACK[0x3090]) | (*(v82 + STACK[0x30A0]) << 8) | (*(v82 + STACK[0x3098]) << 16) | (*(v82 + STACK[0x3088]) << 24);
  LODWORD(v73) = (v124 << 24) | (*(v82 + STACK[0x3078]) << 16) | *(v82 + STACK[0x3068]) | (*(v82 + STACK[0x3070]) << 8);
  LODWORD(STACK[0x3BC0]) = *(v82 + STACK[0x2AC0]) | (*(v82 + STACK[0x2AC8]) << 8) | (*(v82 + STACK[0x2AB8]) << 16) | (*(v82 + STACK[0x2AB0]) << 24);
  LODWORD(v104) = LODWORD(STACK[0x3E40]) ^ 0xB57B993A ^ v27;
  v125 = (LODWORD(STACK[0x3028]) ^ LODWORD(STACK[0x3D60])) ^ LODWORD(STACK[0x3D90]);
  v126 = (LODWORD(STACK[0x3D50]) ^ LODWORD(STACK[0x3020])) ^ __ROR4__(*(v20 + 4 * BYTE1(v81)), 16) ^ *(v20 + ((STACK[0x38B0] >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * STACK[0x3CE8]), 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v78)), 8);
  v127 = LODWORD(STACK[0x3018]) ^ LODWORD(STACK[0x3D38]) ^ (((*(v20 + ((v78 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * STACK[0x38B0]), 24)) ^ __ROR4__(*(v20 + 4 * BYTE2(v81)), 8) ^ __ROR4__(*(v20 + 4 * BYTE1(STACK[0x3CE8])), 16)) + LODWORD(STACK[0x31C8]));
  LODWORD(v124) = LODWORD(STACK[0x2AF8]) ^ v28 ^ LODWORD(STACK[0x3D48]) ^ LODWORD(STACK[0x2AF0]) ^ (-30040835 * v104) ^ __ROR4__(*(v20 + 4 * BYTE2(STACK[0x3CE8])), 8);
  LODWORD(v69) = __ROR4__(*(v20 + 4 * BYTE1(STACK[0x38B0])), 16);
  STACK[0x2A40] = v81;
  LODWORD(v124) = v124 ^ v69 ^ *(v20 + ((v81 >> 22) & 0x3FC));
  STACK[0x2A48] = v78;
  v128 = v124 ^ __ROR4__(*(v20 + 4 * v78), 24);
  v129 = LODWORD(STACK[0x3D58]) ^ v28 ^ *(v20 + ((v125 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE1(v127)), 16) ^ __ROR4__(*(v20 + 4 * v128), 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v126)), 8) ^ LODWORD(STACK[0x650C]);
  v130 = (LODWORD(STACK[0x3010]) ^ LODWORD(STACK[0x39A8])) ^ __ROR4__(*(v20 + 4 * BYTE2(v128)), 8) ^ *(v20 + ((v127 >> 22) & 0x3FC)) ^ (*(v20 + 4 * v126) << 8) ^ HIBYTE(*(v20 + 4 * v126)) ^ __ROR4__(*(v20 + 4 * BYTE1(v125)), 16);
  v131 = (LODWORD(STACK[0x3008]) ^ LODWORD(STACK[0x3D68])) ^ __ROR4__(*(v20 + 4 * BYTE2(v127)), 8) ^ *(v20 + ((v126 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * v125), 24) ^ __ROR4__(*(v20 + 4 * BYTE1(v128)), 16);
  STACK[0x2A08] = v126;
  v132 = (LODWORD(STACK[0x3000]) ^ LODWORD(STACK[0x3930])) ^ __ROR4__(*(v20 + 4 * BYTE1(v126)), 16) ^ __ROR4__(*(v20 + 4 * BYTE2(v125)), 8) ^ *(v20 + ((v128 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * v127), 24);
  v133 = STACK[0x37B8] ^ v28 ^ __ROR4__(*(v20 + 4 * v132), 24) ^ *(v20 + ((v129 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE1(v130)), 16) ^ __ROR4__(*(v20 + 4 * BYTE2(v131)), 8) ^ LODWORD(STACK[0x651C]);
  v134 = (LODWORD(STACK[0x2FF8]) ^ LODWORD(STACK[0x3908])) ^ *(v20 + ((v130 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE2(v132)), 8) ^ __ROR4__(*(v20 + 4 * BYTE1(v129)), 16) ^ __ROR4__(*(v20 + 4 * v131), 24);
  v135 = LODWORD(STACK[0x3938]) ^ v28 ^ __ROR4__(*(v20 + 4 * v129), 24) ^ *(v20 + ((v131 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE1(v132)), 16) ^ __ROR4__(*(v20 + 4 * BYTE2(v130)), 8) ^ LODWORD(STACK[0x6AB0]);
  STACK[0x2A00] = v129;
  LODWORD(v132) = LODWORD(STACK[0x3920]) ^ v28 ^ __ROR4__(*(v20 + 4 * BYTE2(v129)), 8) ^ *(v20 + ((v132 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE1(v131)), 16);
  STACK[0x2A10] = v130;
  v136 = v132 ^ __ROR4__(*(v20 + 4 * v130), 24) ^ LODWORD(STACK[0x652C]);
  v137 = STACK[0x3700] ^ v28 ^ *(v20 + ((v133 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE2(v135)), 8) ^ __ROR4__(*(v20 + 4 * BYTE1(v134)), 16) ^ __ROR4__(*(v20 + 4 * v136), 24) ^ LODWORD(STACK[0x6AB4]);
  v138 = LODWORD(STACK[0x2FF0]) ^ STACK[0x3D80] ^ __ROR4__(*(v20 + 4 * BYTE1(v133)), 16) ^ *(v20 + ((v134 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * v135), 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v136)), 8);
  v139 = LODWORD(STACK[0x3D28]) ^ v28 ^ __ROR4__(*(v20 + 4 * v134), 24) ^ *(v20 + ((v136 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE2(v133)), 8) ^ __ROR4__(*(v20 + 4 * BYTE1(v135)), 16) ^ LODWORD(STACK[0x6530]);
  STACK[0x29F8] = v133;
  LODWORD(v128) = *(v20 + 4 * v133);
  STACK[0x29F0] = v134;
  LODWORD(v128) = LODWORD(STACK[0x2FE8]) ^ LODWORD(STACK[0x3D30]) ^ __ROR4__(v128, 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v134)), 8);
  STACK[0x29E8] = v136;
  v140 = v128 ^ __ROR4__(*(v20 + 4 * BYTE1(v136)), 16) ^ *(v20 + ((v135 >> 22) & 0x3FC));
  v141 = LODWORD(STACK[0x38D8]) ^ v28 ^ __ROR4__(*(v20 + 4 * v138), 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v137)), 8) ^ __ROR4__(*(v20 + 4 * BYTE1(v140)), 16) ^ *(v20 + ((v139 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x6534]);
  v142 = (LODWORD(STACK[0x2FE0]) ^ LODWORD(STACK[0x38D0])) ^ __ROR4__(*(v20 + 4 * BYTE1(v137)), 16) ^ *(v20 + ((v138 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * v140), 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v139)), 8);
  v143 = (LODWORD(STACK[0x2FD8]) ^ LODWORD(STACK[0x38F8])) ^ __ROR4__(*(v20 + 4 * v137), 24) ^ *(v20 + ((v140 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE2(v138)), 8) ^ __ROR4__(*(v20 + 4 * BYTE1(v139)), 16);
  LODWORD(v138) = LODWORD(STACK[0x2FD0]) ^ LODWORD(STACK[0x32C8]) ^ __ROR4__(*(v20 + 4 * BYTE1(v138)), 16);
  STACK[0x29E0] = v137;
  LODWORD(v138) = v138 ^ *(v20 + ((v137 >> 22) & 0x3FC));
  STACK[0x29D0] = v140;
  LODWORD(v138) = v138 ^ __ROR4__(*(v20 + 4 * BYTE2(v140)), 8);
  STACK[0x29D8] = v139;
  v144 = v138 ^ __ROR4__(*(v20 + 4 * v139), 24);
  STACK[0x3620] = (LODWORD(STACK[0x2FC8]) ^ LODWORD(STACK[0x3B98])) ^ *(v20 + ((v144 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE1(v142)), 16) ^ (*(v20 + 4 * v141) << 8) ^ HIBYTE(*(v20 + 4 * v141)) ^ __ROR4__(*(v20 + 4 * BYTE2(v143)), 8);
  v145 = (LODWORD(STACK[0x2FC0]) ^ LODWORD(STACK[0x3D20])) ^ __ROR4__(*(v20 + 4 * BYTE2(v142)), 8) ^ __ROR4__(*(v20 + 4 * BYTE1(v141)), 16) ^ *(v20 + ((v143 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * v144), 24);
  STACK[0x3E40] = (LODWORD(STACK[0x2FB8]) ^ LODWORD(STACK[0x3D10])) ^ *(v20 + ((v142 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE2(v141)), 8) ^ __ROR4__(*(v20 + 4 * v143), 24) ^ __ROR4__(*(v20 + 4 * BYTE1(v144)), 16);
  STACK[0x29C0] = v142;
  v146 = (LODWORD(STACK[0x2FB0]) ^ LODWORD(STACK[0x38B8])) ^ __ROR4__(*(v20 + 4 * v142), 24) ^ __ROR4__(*(v20 + 4 * BYTE2(v144)), 8) ^ *(v20 + ((v141 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * BYTE1(v143)), 16);
  LODWORD(v143) = LODWORD(STACK[0x3AF0]) ^ LODWORD(STACK[0x38C8]) ^ LODWORD(STACK[0x2F68]);
  LODWORD(v141) = v77 ^ LODWORD(STACK[0x39C0]);
  LODWORD(v144) = *(v102 + ((v117 >> 22) & 0x3FC));
  LODWORD(STACK[0x39C0]) = v141;
  v147 = v143 ^ v141 ^ v144 ^ __ROR4__(*(v102 + 4 * v116), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v118)), 16) ^ __ROR4__(*(v102 + 4 * BYTE2(v115)), 8);
  v148 = v77 ^ LODWORD(STACK[0x2F60]) ^ v89 ^ LODWORD(STACK[0x3870]);
  v149 = LODWORD(STACK[0x3D98]) ^ LODWORD(STACK[0x2F58]) ^ v63 ^ v105 ^ LODWORD(STACK[0x3A28]);
  LODWORD(v144) = v63 ^ LODWORD(STACK[0x3860]);
  LODWORD(v143) = *(v102 + 4 * BYTE1(v117));
  LODWORD(STACK[0x3A28]) = v144;
  LODWORD(v143) = v144 ^ LODWORD(STACK[0x2F50]) ^ __ROR4__(v143, 16);
  STACK[0x2A30] = v118;
  LODWORD(v143) = v143 ^ *(v102 + ((v118 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * v115), 24);
  STACK[0x2A18] = v116;
  v150 = v143 ^ __ROR4__(*(v102 + 4 * BYTE2(v116)), 8);
  LODWORD(v144) = v77 ^ LODWORD(STACK[0x2F48]) ^ LODWORD(STACK[0x3858]) ^ __ROR4__(*(v102 + 4 * BYTE2(v148)), 8);
  HIDWORD(v69) = *(v102 + 4 * v149);
  LODWORD(v69) = HIDWORD(v69);
  LODWORD(v106) = v69 >> 24;
  LODWORD(v141) = *(v102 + ((v150 >> 22) & 0x3FC));
  LODWORD(STACK[0x3AF0]) = v106;
  v151 = v144 ^ v106 ^ v141 ^ __ROR4__(*(v102 + 4 * BYTE1(v147)), 16);
  v152 = v73 ^ v67 ^ __ROR4__(*(v102 + 4 * v150), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v149)), 16) ^ *(v102 + ((v148 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE2(v147)), 8) ^ LODWORD(STACK[0x660C]) ^ v63;
  v153 = LODWORD(STACK[0x3850]) ^ v67 ^ __ROR4__(*(v102 + 4 * v148), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v150)), 16) ^ *(v102 + ((v147 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE2(v149)), 8) ^ LODWORD(STACK[0x6610]) ^ v77;
  LODWORD(v150) = v77 ^ v67 ^ LODWORD(STACK[0x3880]) ^ __ROR4__(*(v102 + 4 * BYTE2(v150)), 8);
  LODWORD(v69) = __ROR4__(*(v102 + 4 * BYTE1(v148)), 16);
  STACK[0x29C8] = v149;
  LODWORD(v150) = v150 ^ v69 ^ *(v102 + ((v149 >> 22) & 0x3FC));
  STACK[0x3858] = v147;
  v154 = v150 ^ __ROR4__(*(v102 + 4 * v147), 24) ^ LODWORD(STACK[0x6614]);
  v155 = LODWORD(STACK[0x3878]) ^ v67 ^ *(v102 + ((v151 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE2(v152)), 8) ^ __ROR4__(*(v102 + 4 * v154), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v153)), 16) ^ LODWORD(STACK[0x6618]) ^ v77;
  v156 = LODWORD(STACK[0x3888]) ^ v67 ^ *(v102 + ((v153 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE2(v154)), 8) ^ __ROR4__(*(v102 + 4 * BYTE1(v151)), 16) ^ __ROR4__(*(v102 + 4 * v152), 24) ^ LODWORD(STACK[0x661C]) ^ v77;
  LODWORD(v125) = v77 ^ LODWORD(STACK[0x39F0]);
  LODWORD(v141) = *(v102 + 4 * v153);
  LODWORD(STACK[0x3488]) = v125;
  v157 = v125 ^ LODWORD(STACK[0x2F40]) ^ __ROR4__(v141, 24) ^ __ROR4__(*(v102 + 4 * BYTE2(v151)), 8) ^ __ROR4__(*(v102 + 4 * BYTE1(v152)), 16) ^ *(v102 + ((v154 >> 22) & 0x3FC));
  HIDWORD(v69) = *(v102 + 4 * v151);
  LODWORD(v69) = HIDWORD(v69);
  v158 = (v69 >> 24);
  STACK[0x29B8] = v152;
  LODWORD(v151) = *(v102 + ((v152 >> 22) & 0x3FC));
  LODWORD(v125) = LODWORD(STACK[0x3890]) ^ v67;
  STACK[0x3338] = v158;
  LODWORD(v151) = v125 ^ v158 ^ v151 ^ __ROR4__(*(v102 + 4 * BYTE1(v154)), 16);
  STACK[0x3888] = v153;
  v159 = v151 ^ __ROR4__(*(v102 + 4 * BYTE2(v153)), 8) ^ LODWORD(STACK[0x662C]) ^ v77;
  v160 = v77 ^ LODWORD(STACK[0x2F38]) ^ LODWORD(STACK[0x3AD8]) ^ __ROR4__(*(v102 + 4 * BYTE1(v156)), 16) ^ __ROR4__(*(v102 + 4 * BYTE2(v159)), 8) ^ *(v102 + ((v155 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * v157), 24);
  HIDWORD(v69) = *(v102 + 4 * v156);
  LODWORD(v69) = HIDWORD(v69);
  LODWORD(v152) = v69 >> 24;
  v161 = v77 ^ LODWORD(STACK[0x2F30]) ^ LODWORD(STACK[0x3AE0]) ^ __ROR4__(*(v102 + 4 * BYTE1(v157)), 16) ^ __ROR4__(*(v102 + 4 * v155), 24) ^ __ROR4__(*(v102 + 4 * BYTE2(v156)), 8) ^ *(v102 + ((v159 >> 22) & 0x3FC));
  LODWORD(v125) = *(v102 + 4 * BYTE2(v155));
  LODWORD(v153) = STACK[0x3CE0];
  LODWORD(v149) = LODWORD(STACK[0x3CE0]) ^ LODWORD(STACK[0x3AE8]);
  LODWORD(STACK[0x34D4]) = v152;
  v162 = v149 ^ v152 ^ __ROR4__(v125, 8) ^ *(v102 + ((v157 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE1(v159)), 16) ^ LODWORD(STACK[0x664C]);
  LODWORD(v159) = v63 ^ LODWORD(STACK[0x2F28]) ^ LODWORD(STACK[0x3B08]) ^ __ROR4__(*(v102 + 4 * v159), 24);
  STACK[0x29B0] = v156;
  v163 = v159 ^ *(v102 + ((v156 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE1(v155)), 16) ^ __ROR4__(*(v102 + 4 * BYTE2(v157)), 8);
  v164 = v153 ^ LODWORD(STACK[0x3BF8]) ^ __ROR4__(*(v102 + 4 * v162), 24) ^ *(v102 + ((v160 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE2(v161)), 8) ^ __ROR4__(*(v102 + 4 * BYTE1(v163)), 16) ^ LODWORD(STACK[0x665C]);
  v165 = v77 ^ LODWORD(STACK[0x2F20]) ^ LODWORD(STACK[0x3B78]) ^ __ROR4__(*(v102 + 4 * BYTE1(v160)), 16) ^ __ROR4__(*(v102 + 4 * BYTE2(v162)), 8) ^ *(v102 + ((v163 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * v161), 24);
  LODWORD(v159) = LODWORD(STACK[0x3B00]) ^ v67 ^ __ROR4__(*(v102 + 4 * BYTE1(v161)), 16) ^ __ROR4__(*(v102 + 4 * v163), 24) ^ __ROR4__(*(v102 + 4 * BYTE2(v160)), 8) ^ *(v102 + ((v162 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x666C]);
  STACK[0x29A8] = v161;
  v166 = v77 ^ v67 ^ LODWORD(STACK[0x3CC8]) ^ *(v102 + ((v161 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * v160), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v162)), 16) ^ __ROR4__(*(v102 + 4 * BYTE2(v163)), 8) ^ LODWORD(STACK[0x6670]);
  v167 = v159 ^ v63;
  v168 = LODWORD(STACK[0x3C18]) ^ v67 ^ __ROR4__(*(v102 + 4 * BYTE2(v165)), 8) ^ *(v102 + ((v166 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE1(v167)), 16) ^ LODWORD(STACK[0x6674]) ^ __ROR4__(*(v102 + 4 * v164), 24) ^ v63;
  v169 = LODWORD(STACK[0x3BC0]) ^ v67 ^ __ROR4__(*(v102 + 4 * BYTE2(v167)), 8) ^ __ROR4__(*(v102 + 4 * BYTE1(v164)), 16) ^ __ROR4__(*(v102 + 4 * v166), 24) ^ *(v102 + ((v165 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x667C]) ^ v77;
  v170 = LODWORD(STACK[0x3CD0]) ^ v67 ^ __ROR4__(*(v102 + 4 * v165), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v166)), 16) ^ *(v102 + ((v167 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE2(v164)), 8) ^ LODWORD(STACK[0x6680]) ^ v77;
  STACK[0x29A0] = v165;
  LODWORD(v160) = *(v102 + 4 * BYTE1(v165));
  STACK[0x3750] = v166;
  LODWORD(v159) = v77 ^ v67 ^ LODWORD(STACK[0x3CD8]);
  HIDWORD(v69) = *(v102 + 4 * BYTE2(v166));
  LODWORD(v69) = HIDWORD(v69);
  LODWORD(v166) = v69 >> 8;
  STACK[0x3878] = v167;
  LODWORD(v162) = *(v102 + 4 * v167);
  LODWORD(v164) = *(v102 + ((v164 >> 22) & 0x3FC));
  LODWORD(STACK[0x351C]) = v166;
  v171 = v159 ^ __ROR4__(v160, 16) ^ v166 ^ v164 ^ __ROR4__(v162, 24) ^ LODWORD(STACK[0x6694]);
  LODWORD(v160) = *STACK[0x6688] ^ __ROR4__(*STACK[0x6698], 24) ^ __ROR4__(*STACK[0x66A0], 16) ^ __ROR4__(*STACK[0x66A8], 8);
  LODWORD(v166) = *STACK[0x66C0] ^ __ROR4__(*STACK[0x66B0], 24);
  LODWORD(v162) = *STACK[0x66B8];
  LODWORD(v159) = *STACK[0x66C8];
  LODWORD(STACK[0x3B00]) = v166;
  LODWORD(v159) = v166 ^ __ROR4__(v162, 16) ^ __ROR4__(v159, 8);
  LODWORD(v167) = *STACK[0x66D8] ^ __ROR4__(*STACK[0x66D0], 24) ^ __ROR4__(*STACK[0x66E0], 16) ^ __ROR4__(*STACK[0x66E8], 8);
  LODWORD(v162) = *STACK[0x66F0] ^ __ROR4__(*STACK[0x66F8], 24);
  LODWORD(v165) = *STACK[0x6708];
  HIDWORD(v69) = *STACK[0x6700];
  LODWORD(v69) = HIDWORD(v69);
  LODWORD(v166) = v69 >> 8;
  LODWORD(STACK[0x3D90]) = v166;
  LODWORD(v77) = v162 ^ v166 ^ __ROR4__(v165, 16);
  LODWORD(v160) = bswap32(v160);
  LODWORD(v165) = STACK[0x52D8];
  LODWORD(v156) = STACK[0x52CC];
  LODWORD(v117) = STACK[0x52C8];
  v172 = STACK[0x5320];
  v173 = STACK[0x5328];
  LODWORD(v162) = (((v160 ^ (2 * (v165 & v160))) & STACK[0x52C8]) >> STACK[0x5328]) | (((v160 ^ (2 * (v165 & v160))) & STACK[0x52CC]) << STACK[0x5320]);
  LODWORD(v147) = STACK[0x52DC];
  v174 = (STACK[0x52DC] & v160) >> 1;
  STACK[0x3AD8] = v174;
  LODWORD(v67) = STACK[0x526C];
  v175 = STACK[0x53F8];
  LODWORD(v160) = ((STACK[0x5270] & (v174 ^ v160)) >> STACK[0x53F0]) + (((v174 ^ v160) & STACK[0x526C]) << STACK[0x53F8]);
  LODWORD(v159) = bswap32(v159);
  LODWORD(v139) = v159 ^ ((STACK[0x5264] & v159) >> 1);
  v176 = STACK[0x5350];
  LODWORD(v159) = (((v159 ^ (2 * (v165 & v159))) & STACK[0x52AC]) << v172) ^ (((v159 ^ (2 * (v165 & v159))) & STACK[0x52A8]) >> STACK[0x5350]);
  LODWORD(v134) = STACK[0x5290];
  v177 = ((STACK[0x5284] & v139) << STACK[0x53E8]) | ((STACK[0x5290] & v139) >> STACK[0x53F0]);
  LODWORD(v167) = bswap32(v167);
  LODWORD(v172) = v167 ^ ((STACK[0x5264] & v167) >> 1);
  v178 = STACK[0x5338];
  LODWORD(v173) = (((v167 ^ (2 * (STACK[0x52B8] & v167))) & v117) >> v173) ^ (((v167 ^ (2 * (STACK[0x52B8] & v167))) & v156) << STACK[0x5338]);
  v179 = STACK[0x5270] & v172;
  v180 = (STACK[0x526C] & v172) << STACK[0x53F8];
  v181 = STACK[0x53D8];
  LODWORD(v179) = (v179 >> STACK[0x53D8]) ^ v180;
  LODWORD(v77) = bswap32(v77);
  LODWORD(v165) = v77 ^ (2 * (v165 & v77));
  v182 = v165 & v156;
  LODWORD(v77) = v77 ^ ((v147 & v77) >> 1);
  STACK[0x3880] = v182;
  LODWORD(v147) = (v182 << v178) ^ ((v165 & v117) >> v176);
  LODWORD(v77) = ((v67 & v77) << v175) ^ ((v134 & v77) >> v181);
  v183 = STACK[0x3E40];
  v184 = *(v20 + ((STACK[0x3620] >> 22) & 0x3FC)) ^ v162 ^ __ROR4__(*(v20 + 4 * BYTE1(STACK[0x3E40])), 16) ^ __ROR4__(*(v20 + 4 * BYTE2(v145)), 8) ^ __ROR4__(*(v20 + 4 * v146), 24);
  v185 = v173 ^ (*(v20 + 4 * BYTE2(v146)) >> 8) ^ *(v20 + ((STACK[0x3E40] >> 22) & 0x3FC)) ^ (*(v20 + 4 * BYTE2(v146)) << 24) ^ __ROR4__(*(v20 + 4 * BYTE1(STACK[0x3620])), 16) ^ __ROR4__(*(v20 + 4 * v145), 24);
  v186 = *(v20 + 4 * BYTE2(STACK[0x3E40]));
  v187 = v159 ^ __ROR4__(*(v20 + 4 * BYTE1(v146)), 16) ^ __ROR4__(v186, 8) ^ *(v20 + ((v145 >> 22) & 0x3FC)) ^ __ROR4__(*(v20 + 4 * STACK[0x3620]), 24);
  LODWORD(v69) = __ROR4__(*(v20 + 4 * BYTE2(STACK[0x3620])), 8);
  STACK[0x3540] = v146;
  LODWORD(v162) = v147 ^ v69 ^ *(v20 + ((v146 >> 22) & 0x3FC));
  STACK[0x33A8] = v145;
  v188 = v162 ^ __ROR4__(*(v20 + 4 * BYTE1(v145)), 16) ^ __ROR4__(*(v20 + 4 * v183), 24);
  v189 = STACK[0x3AD0];
  HIDWORD(v69) = *(STACK[0x3AD0] + 4 * BYTE2(v187));
  LODWORD(v69) = HIDWORD(v69);
  LODWORD(v162) = (v69 >> 16) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE1(v185)), 24) ^ (*(v189 + ((v184 >> 22) & 0x3FC)) >> 8) ^ *(v189 + 4 * v188);
  HIDWORD(v69) = *(STACK[0x3AD0] + 4 * BYTE2(v185));
  LODWORD(v69) = HIDWORD(v69);
  LODWORD(v159) = (v69 >> 16) ^ (*(STACK[0x3AD0] + ((v187 >> 22) & 0x3FC)) >> 8) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE1(v188)), 24) ^ *(STACK[0x3AD0] + 4 * v184);
  HIDWORD(v69) = *(STACK[0x3AD0] + 4 * BYTE2(v188));
  LODWORD(v69) = HIDWORD(v69);
  v190 = (v69 >> 16) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE1(v184)), 24) ^ (*(v189 + ((v185 >> 22) & 0x3FC)) >> 8) ^ *(v189 + 4 * v187);
  HIDWORD(v69) = *(STACK[0x3AD0] + 4 * BYTE2(v184));
  LODWORD(v69) = HIDWORD(v69);
  v191 = (v69 >> 16) ^ (*(v189 + ((v188 >> 22) & 0x3FC)) >> 8) ^ *(v189 + 4 * v185) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE1(v187)), 24);
  v192 = (*(v102 + ((v168 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE2(v169)), 8)) ^ __ROR4__(*(v102 + 4 * BYTE1(v170)), 16);
  LODWORD(v176) = *(v102 + 4 * BYTE2(v170));
  LODWORD(v188) = *(v102 + ((v169 >> 22) & 0x3FC));
  STACK[0x3890] = v177;
  v193 = v177 ^ __ROR4__(v176, 8) ^ v188 ^ __ROR4__(*(v102 + 4 * v168), 24) ^ __ROR4__(*(v102 + 4 * BYTE1(v171)), 16);
  v194 = *(v102 + ((v170 >> 22) & 0x3FC)) ^ v179 ^ __ROR4__(*(v102 + 4 * BYTE2(v171)), 8) ^ __ROR4__(*(v102 + 4 * BYTE1(v168)), 16) ^ __ROR4__(*(v102 + 4 * v169), 24);
  LODWORD(v176) = *(v102 + 4 * v171);
  STACK[0x3D88] = v192;
  v195 = v192 ^ v160 ^ __ROR4__(v176, 24);
  LODWORD(v168) = v77 ^ __ROR4__(*(v102 + 4 * BYTE2(v168)), 8) ^ *(v102 + ((v171 >> 22) & 0x3FC)) ^ __ROR4__(*(v102 + 4 * BYTE1(v169)), 16);
  STACK[0x3850] = v170;
  v196 = STACK[0x3AB0];
  HIDWORD(v69) = *(STACK[0x3AB0] + ((v195 >> 22) & 0x3FC));
  LODWORD(v69) = HIDWORD(v69);
  v197 = v168 ^ __ROR4__(*(v102 + 4 * v170), 24);
  LODWORD(v171) = (v69 >> 8) ^ __ROR4__(*(STACK[0x3AB0] + 4 * BYTE2(v193)), 16);
  HIDWORD(v69) = *(STACK[0x3AB0] + 4 * BYTE2(v194));
  LODWORD(v69) = HIDWORD(v69);
  v198 = v171 ^ (*(v196 + 4 * BYTE1(v194)) << 8) ^ *(v196 + 4 * v197);
  LODWORD(v176) = (v69 >> 16) ^ __ROR4__(*(STACK[0x3AB0] + ((v193 >> 22) & 0x3FC)), 8) ^ *(STACK[0x3AB0] + 4 * v195);
  LODWORD(v184) = *(STACK[0x3AB0] + ((v194 >> 22) & 0x3FC));
  HIDWORD(v69) = *(STACK[0x3AB0] + 4 * BYTE2(v197));
  LODWORD(v69) = HIDWORD(v69);
  v199 = (v69 >> 16);
  v200 = v176 ^ (*(STACK[0x3AB0] + 4 * BYTE1(v197)) << 8);
  LODWORD(v179) = *(STACK[0x3AB0] + 4 * BYTE1(v195));
  LODWORD(v197) = *(STACK[0x3AB0] + ((v197 >> 22) & 0x3FC));
  LODWORD(v195) = *(STACK[0x3AB0] + 4 * BYTE2(v195));
  STACK[0x3D98] = v199;
  v201 = __PAIR64__(v195, __ROR4__(v184, 8));
  LODWORD(v179) = v199 ^ v201 ^ (v179 << 8);
  LODWORD(v201) = v195;
  v202 = v179 ^ *(v196 + 4 * v193);
  LODWORD(v195) = *(v196 + 4 * BYTE1(v193));
  v203 = STACK[0x3A70];
  v204 = (v201 >> 16) ^ __ROR4__(v197, 8) ^ *(v196 + 4 * v194) ^ (v195 << 8);
  v205 = (v162 & 0xFF00FF) + (*(v203 + BYTE1(v198)) << 8) + (*(v203 + (v198 >> 24)) << 24);
  v206 = (v159 & 0xFF00FF) + (*(v203 + BYTE1(v200)) << 8) + (*(v203 + (v200 >> 24)) << 24);
  v207 = (v190 & 0xFF00FF) + (*(v203 + BYTE1(v202)) << 8) + (*(v203 + (v202 >> 24)) << 24);
  v208 = STACK[0x3A88];
  LODWORD(v77) = *(STACK[0x3A88] + 4 * BYTE2(v206));
  v209 = (v191 & 0xFF00FF) + (*(v203 + BYTE1(v204)) << 8) + (*(v203 + (v204 >> 24)) << 24);
  LODWORD(v200) = *(STACK[0x3A88] + 4 * BYTE1(v205));
  LODWORD(v202) = *(STACK[0x3A88] + ((v207 >> 22) & 0x3FC));
  LODWORD(STACK[0x366C]) = v77;
  STACK[0x3498] = v191;
  LODWORD(v77) = v202 ^ __ROR4__(v77, 8) ^ __ROR4__(v200, 16) ^ __ROR4__(*(v208 + 4 * v191), 24);
  v210 = *(v208 + 4 * v159);
  LODWORD(v202) = *(v208 + 4 * BYTE1(v207));
  LODWORD(v207) = *(v208 + 4 * BYTE2(v207));
  LODWORD(v159) = *(v208 + ((v205 >> 22) & 0x3FC)) ^ __ROR4__(*(v208 + 4 * BYTE2(v209)), 8);
  LODWORD(v200) = *(v208 + ((v209 >> 22) & 0x3FC));
  STACK[0x3AE0] = v210;
  STACK[0x39F0] = v205;
  v211 = *(v208 + 4 * BYTE1(v206));
  LODWORD(v207) = v200 ^ __ROR4__(v207, 8) ^ __ROR4__(v211, 16) ^ __ROR4__(*(v208 + 4 * v162), 24);
  LODWORD(v206) = *(v208 + ((v206 >> 22) & 0x3FC)) ^ __ROR4__(*(v208 + 4 * BYTE2(v205)), 8);
  STACK[0x34E8] = v190;
  LODWORD(v162) = v206 ^ __ROR4__(*(v208 + 4 * v190), 24);
  LODWORD(v206) = STACK[0x6710];
  LODWORD(STACK[0x3AE8]) = v77;
  v212 = v206 ^ v77;
  HIDWORD(v201) = *(v208 + 4 * (v206 ^ v77));
  LODWORD(v201) = HIDWORD(v201);
  v213 = v159 ^ __ROR4__(v210, 24) ^ __ROR4__(v202, 16) ^ LODWORD(STACK[0x6AE0]);
  v214 = v207 ^ LODWORD(STACK[0x6714]);
  LODWORD(v207) = (v201 >> 24) ^ __ROR4__(*(v208 + 4 * BYTE2(v213)), 8) ^ __ROR4__(*(v208 + 4 * BYTE1(v214)), 16);
  v215 = *(v208 + 4 * BYTE1(v209));
  v216 = v162 ^ __ROR4__(v215, 16) ^ LODWORD(STACK[0x6AE4]);
  LODWORD(v159) = *(v208 + ((v214 >> 22) & 0x3FC)) ^ __ROR4__(*(v208 + 4 * BYTE2(v212)), 8) ^ __ROR4__(*(v208 + 4 * BYTE1(v216)), 16);
  v217 = STACK[0x38A0];
  v218 = LODWORD(STACK[0x3BD0]) ^ LODWORD(STACK[0x3C10]) ^ LODWORD(STACK[0x3B90]) ^ LODWORD(STACK[0x3B88]) ^ LODWORD(STACK[0x3B70]) ^ LODWORD(STACK[0x3B68]) ^ LODWORD(STACK[0x3B60]) ^ LODWORD(STACK[0x3998]) ^ LODWORD(STACK[0x3988]) ^ LODWORD(STACK[0x3980]) ^ LODWORD(STACK[0x3960]) ^ LODWORD(STACK[0x3950]) ^ LODWORD(STACK[0x3948]) ^ LODWORD(STACK[0x3940]) ^ LODWORD(STACK[0x37A0]) ^ LODWORD(STACK[0x38A0]);
  LODWORD(v162) = LODWORD(STACK[0x3530]) ^ LODWORD(STACK[0x3C08]) ^ LODWORD(STACK[0x3C00]) ^ LODWORD(STACK[0x3BB8]) ^ LODWORD(STACK[0x3D60]) ^ LODWORD(STACK[0x3D68]) ^ STACK[0x37B8] ^ LODWORD(STACK[0x3D58]) ^ LODWORD(STACK[0x3D50]) ^ LODWORD(STACK[0x3D48]) ^ LODWORD(STACK[0x3920]) ^ LODWORD(STACK[0x3D38]) ^ LODWORD(STACK[0x3D40]) ^ STACK[0x3700] ^ LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x3D30]);
  v219 = *(v208 + ((v216 >> 22) & 0x3FC));
  LODWORD(v200) = LODWORD(STACK[0x2AA8]) ^ LODWORD(STACK[0x38F8]) ^ LODWORD(STACK[0x3D20]) ^ LODWORD(STACK[0x3D10]) ^ LODWORD(STACK[0x3CF0]);
  STACK[0x3B08] = v219;
  LODWORD(v202) = v207 ^ v219;
  v220 = v162 ^ STACK[0x3D80] ^ v218;
  LODWORD(v189) = STACK[0x3D78];
  LODWORD(v162) = LODWORD(STACK[0x3D78]) ^ LODWORD(STACK[0x3E18]);
  LODWORD(v200) = v200 ^ v220;
  LODWORD(v203) = v200 ^ 0x807CE1D8;
  LODWORD(STACK[0x3860]) = 1097246955 * v162;
  v221 = 1097246955 * v162 - 1097246955 * (v200 ^ 0x807CE1D8) + v202;
  LODWORD(v202) = v162 ^ v200 ^ 0x807CE1D8 ^ __ROR4__(*(v208 + 4 * BYTE2(v216)), 8) ^ __ROR4__(*(v208 + 4 * BYTE1(v213)), 16) ^ *(v208 + ((v212 >> 22) & 0x3FC));
  LODWORD(v205) = *(v208 + 4 * BYTE2(v214));
  LODWORD(v200) = LODWORD(STACK[0x3BA0]) ^ v189 ^ v200;
  LODWORD(v196) = *(v208 + ((v213 >> 22) & 0x3FC));
  v222 = (v205 << 24);
  STACK[0x3870] = v222;
  v223 = v200 ^ (v205 >> 8) ^ v222 ^ v196 ^ __ROR4__(*(v208 + 4 * BYTE1(v212)), 16) ^ __ROR4__(*(v208 + 4 * v216), 24) ^ 0xA9156CFA;
  v224 = (-2104369531 * v162);
  v225 = *(v208 + 4 * v213);
  STACK[0x37F0] = v224;
  v226 = (v159 ^ __ROR4__(v225, 24)) - v224 - 2104369531 * v203;
  v227 = v202 ^ __ROR4__(*(v208 + 4 * v214), 24);
  STACK[0x3BF8] = v221 >> 24;
  v228 = STACK[0x3D18];
  v228[405] = BYTE3(v221);
  STACK[0x3BC0] = v226 >> 24;
  v228[413] = BYTE3(v226);
  STACK[0x3C18] = v223 >> 16;
  v228[402] = BYTE2(v223);
  STACK[0x3B78] = v226 >> 16;
  v228[414] = BYTE2(v226);
  STACK[0x3718] = v227 >> 16;
  v228[410] = BYTE2(v227);
  STACK[0x3CE0] = v226 >> 8;
  v228[415] = BYTE1(v226);
  STACK[0x3CD0] = v223 >> 8;
  v228[403] = BYTE1(v223);
  STACK[0x3D78] = v223 >> 24;
  *STACK[0x3680] = BYTE3(v223);
  v228[412] = v227;
  STACK[0x3758] = v223;
  v228[404] = v223;
  STACK[0x3CE8] = v226;
  v228[416] = v226;
  STACK[0x3708] = v221 >> 16;
  v228[406] = BYTE2(v221);
  STACK[0x3CC8] = v221 >> 8;
  v228[407] = BYTE1(v221);
  STACK[0x3720] = v227 >> 24;
  v228[409] = BYTE3(v227);
  STACK[0x3E40] = v221;
  v228[408] = v221;
  STACK[0x3CF0] = v227;
  STACK[0x3CD8] = v227 >> 8;
  v228[411] = BYTE1(v227);
  v229 = LODWORD(STACK[0x3848]);
  if (v229 <= 4)
  {
    if (LODWORD(STACK[0x3848]) <= 1u)
    {
      if (LODWORD(STACK[0x3848]))
      {
        v927 = LOBYTE(STACK[0x671B]);
        v928 = STACK[0x5320];
        v929 = LOBYTE(STACK[0x6395]);
        v930 = STACK[0x5328];
        v931 = (((v927 ^ STACK[0x3D78]) & v929) << STACK[0x5328]) | ((v927 ^ STACK[0x3D78]) >> STACK[0x5320]);
        v932 = STACK[0x52B8];
        v933 = 121 * (v1 ^ 0x52D7);
        LODWORD(STACK[0x3D98]) = v933;
        v934 = (((v931 ^ (2 * (v931 & v932))) & v932) << (v933 ^ 0x80)) & v932;
        STACK[0x2918] = v934;
        v935 = v931 ^ (2 * (v934 ^ v931 & v932));
        v936 = STACK[0x53C8];
        LODWORD(v934) = 4 * (v932 & STACK[0x53C8]);
        LODWORD(STACK[0x3D70]) = v934;
        v937 = v934 & (16 * (v935 & v932));
        LODWORD(v934) = STACK[0x6AFC];
        LODWORD(STACK[0x3D90]) = STACK[0x6AFC];
        v938 = v937 & v934 ^ v935;
        v939 = STACK[0x4EA8];
        v940 = STACK[0x4EA0];
        v941 = *(STACK[0x4EA0] + *(STACK[0x4EA8] + v938));
        v942 = LOBYTE(STACK[0x4E9D]);
        STACK[0x2560] = v941 ^ (2 * (v942 & v941));
        v943 = LOBYTE(STACK[0x671A]);
        v944 = v943 ^ STACK[0x3C18];
        v945 = (v943 ^ STACK[0x3C18]) >> v928;
        v946 = LOBYTE(STACK[0x6396]);
        v947 = LOBYTE(STACK[0x6396]);
        STACK[0x2410] = v946;
        STACK[0x24C8] = v945;
        v948 = ((v944 & v946) << v930) ^ v945;
        v949 = v932 & (2 * ((v948 ^ (2 * (v948 & v932))) & v932));
        STACK[0x2540] = v949;
        LODWORD(v946) = v949 ^ v948 & v932;
        v950 = STACK[0x6720];
        LODWORD(STACK[0x3D88]) = STACK[0x6720];
        STACK[0x3C98] = v932 & (2 * ((v948 ^ (2 * v946)) & v932));
        v951 = STACK[0x5350];
        v952 = STACK[0x5338];
        v953 = *(v940 + *(v939 + (v948 ^ (2 * (v950 & (4 * (v932 & (2 * ((v948 ^ (2 * v946)) & v932)))) ^ v946)))));
        LODWORD(v946) = v943 ^ STACK[0x3CD0];
        v954 = LOBYTE(STACK[0x4E9F]);
        STACK[0x3CC0] = v953 ^ (2 * (v954 & v953));
        v955 = LOBYTE(STACK[0x635B]);
        LODWORD(v934) = LOBYTE(STACK[0x635B]);
        STACK[0x28E8] = v955;
        v956 = ((v946 & v955) << v951) | (v946 >> v952);
        v957 = STACK[0x52D8];
        v958 = v956 ^ (2 * (v956 & STACK[0x52D8]));
        v959 = v957 & (2 * (v958 & v957));
        LOBYTE(v946) = STACK[0x6B02] & LOBYTE(STACK[0x6B01]);
        STACK[0x3CA8] = v959;
        v960 = (2 * v959);
        STACK[0x3C88] = v960;
        v961 = v960 ^ v958;
        v962 = LOBYTE(STACK[0x6397]);
        v963 = STACK[0x6397];
        LODWORD(STACK[0x3B00]) = v962;
        STACK[0x26F8] = v961;
        v964 = *(v940 + *(v939 + (v946 & v962 & (16 * (v961 & v942)) ^ v961)));
        STACK[0x3CB8] = v964 ^ (2 * (v942 & v964));
        v965 = (((v927 ^ STACK[0x3758]) & v947) << v930) | ((v927 ^ STACK[0x3758]) >> v952);
        v966 = v965 ^ (2 * (v965 & v932));
        v967 = (((v943 ^ STACK[0x3BF8]) & v934) << v951) + ((v943 ^ STACK[0x3BF8]) >> v928);
        v968 = STACK[0x53CC];
        v969 = STACK[0x53CC] & (4 * ((v967 ^ (2 * (v967 & v957))) & v957)) ^ v967 ^ (2 * (v967 & v957));
        STACK[0x25A8] = 2 * (v969 & v957);
        v970 = LOBYTE(STACK[0x6B03]);
        v971 = *(v940 + *(v939 + (v970 & (8 * ((2 * (v969 & v957)) & v942)) ^ v969)));
        STACK[0x3B20] = v971 ^ (2 * (v954 & v971));
        v972 = (((v927 ^ STACK[0x3708]) & v929) << v930) | ((v927 ^ STACK[0x3708]) >> v928);
        v973 = v936 & (4 * ((v972 ^ (2 * (v972 & v932))) & v932)) ^ v972 ^ (2 * (v972 & v932));
        STACK[0x2950] = 2 * (v973 & v932);
        v974 = STACK[0x6B04];
        v975 = *(v940 + *(v939 + (LOBYTE(STACK[0x6B04]) & (8 * ((2 * (v973 & v932)) & v954)) ^ v973)));
        STACK[0x3B08] = v975 ^ (2 * (v942 & v975));
        v976 = (v927 ^ STACK[0x3CC8]) >> v952;
        LODWORD(v934) = LOBYTE(STACK[0x6394]);
        LOBYTE(v975) = (v927 ^ STACK[0x3CC8]) & v934;
        LODWORD(STACK[0x3AF0]) = v934;
        v977 = v968 & (4 * ((((v975 << v951) | v976) ^ (2 * (((v975 << v951) | v976) & v957))) & v957)) ^ ((v975 << v951) | v976) ^ (2 * (((v975 << v951) | v976) & v957));
        v978 = 2 * (v977 & v957);
        STACK[0x28A0] = v978;
        v979 = v978 & v942;
        STACK[0x27B8] = v979;
        v980 = *(v940 + *(v939 + (v970 & (8 * v979) ^ v977)));
        STACK[0x3AE8] = v980 ^ (2 * (v942 & v980));
        v981 = ((STACK[0x6380] & (LODWORD(STACK[0x52C0]) ^ STACK[0x3E40])) << v951) ^ ((LOBYTE(STACK[0x52C0]) ^ STACK[0x3E40]) >> v952);
        v982 = v932 & (2 * ((v981 ^ (2 * (v981 & v932))) & v932));
        STACK[0x3C90] = v982;
        LODWORD(v976) = v982 ^ v981 & v932;
        STACK[0x2440] = v981 ^ (2 * v976);
        v983 = *(v940 + *(v939 + (v981 ^ (2 * ((8 * ((v981 ^ (2 * v976)) & v932)) & (2 * (v932 & v936)) & LOBYTE(STACK[0x639C]) ^ v976)))));
        STACK[0x3AE0] = v983 ^ (2 * (v954 & v983));
        v984 = STACK[0x6388] & (LODWORD(STACK[0x52A4]) ^ STACK[0x3720]);
        v985 = (LOBYTE(STACK[0x52A4]) ^ STACK[0x3720]) >> v928;
        STACK[0x26B0] = v985;
        v986 = (v984 << v930) ^ v985;
        STACK[0x2780] = 2 * (v986 & v957);
        LOBYTE(v986) = v963 & (4 * (((2 * (v986 & v957)) ^ v986) & v942)) ^ (2 * (v986 & v957)) ^ v986;
        LOBYTE(v986) = *(v940 + *(v939 + (v970 & LOBYTE(STACK[0x6B05]) & (16 * (v986 & v942)) ^ v986)));
        v987 = v986 ^ (2 * (v954 & v986));
        v988 = STACK[0x3718];
        v989 = v943 ^ STACK[0x3718];
        STACK[0x27B0] = v929;
        STACK[0x2538] = v989;
        LODWORD(v988) = ((v989 & v929) << v930) ^ ((v943 ^ v988) >> v928);
        LODWORD(v988) = v988 ^ (2 * (v988 & v957));
        v990 = v988 & v957;
        STACK[0x2600] = v990;
        v991 = v968 & (4 * v990);
        STACK[0x2388] = v991;
        LOBYTE(v962) = v991 ^ v988;
        v992 = 2 * ((v991 ^ v988) & v957);
        STACK[0x27D8] = v992;
        v993 = 2 * (v992 & v942);
        STACK[0x2890] = v993;
        LOBYTE(v984) = LOBYTE(STACK[0x6B06]) & (4 * (v993 & v942));
        v994 = v934 & (v927 ^ STACK[0x3CD8]);
        v995 = (v927 ^ STACK[0x3CD8]) >> v952;
        STACK[0x24E0] = v995;
        LOBYTE(v995) = v936 & (4 * (((v994 << v951) ^ v995 ^ (2 * (((v994 << v951) ^ v995) & v932))) & v932)) ^ (v994 << v951) ^ v995 ^ (2 * (((v994 << v951) ^ v995) & v932));
        v996 = v974 & STACK[0x6B07] & (16 * (v995 & v932));
        v997 = LOBYTE(STACK[0x4E9C]);
        STACK[0x2910] = ((STACK[0x2560] & v997) >> v951) | (STACK[0x2560] << v952);
        v998 = LOBYTE(STACK[0x4E9E]);
        LODWORD(STACK[0x1F54]) = ((STACK[0x3CC0] & v998) >> v930) ^ (STACK[0x3CC0] << v928);
        v999 = v936;
        STACK[0x27C0] = v966;
        LODWORD(v993) = v936 & (4 * (v966 & v932)) ^ v966;
        LODWORD(v966) = STACK[0x3D70];
        LODWORD(v993) = LODWORD(STACK[0x3D70]) & (16 * (v993 & v932)) & STACK[0x3D90] ^ v993;
        LOBYTE(v934) = *(v940 + *(v939 + (v996 ^ v995)));
        v1000 = v934 ^ (2 * (v942 & v934));
        v1001 = STACK[0x3CB8];
        STACK[0x3CC0] = v1001 & v997;
        v1002 = *(v939 + v993);
        STACK[0x2568] = v1002;
        LODWORD(v1002) = *(v940 + v1002);
        LODWORD(STACK[0x1EA8]) = ((v1001 & v997) >> v930) + (v1001 << v952);
        STACK[0x2590] = v954 & v1002;
        LODWORD(STACK[0x1F34]) = (((v1002 ^ (2 * (v954 & v1002))) & v998) >> v951) ^ ((v1002 ^ (2 * (v954 & v1002))) << v928);
        v1003 = STACK[0x28E8];
        LOBYTE(v1002) = (((v943 ^ STACK[0x3CF0]) & STACK[0x28E8]) << v951) | ((v943 ^ STACK[0x3CF0]) >> v952);
        LODWORD(STACK[0x1DE8]) = ((STACK[0x3B20] & v997) >> v951) + (STACK[0x3B20] << v952);
        LOBYTE(v934) = v968 & (4 * ((v1002 ^ (2 * (v1002 & v957))) & v957)) ^ v1002 ^ (2 * (v1002 & v957));
        LODWORD(STACK[0x1F44]) = ((STACK[0x3B08] & v998) >> v930) + (STACK[0x3B08] << v928);
        LODWORD(STACK[0x1E20]) = ((v997 & STACK[0x3AE8]) >> v951) ^ (STACK[0x3AE8] << v952);
        LODWORD(STACK[0x1DBC]) = ((STACK[0x3AE0] & v998) >> v930) ^ (STACK[0x3AE0] << v928);
        LODWORD(STACK[0x21D0]) = ((v987 & v997) >> v930) ^ (v987 << v928);
        LOBYTE(v1002) = v984 ^ v962;
        LODWORD(STACK[0x1F10]) = ((v1000 & v998) >> v930) + (v1000 << v952);
        LOBYTE(v934) = (16 * (v934 & v957)) & (4 * (v957 & v968)) & STACK[0x6B08] ^ v934;
        v1004 = STACK[0x3CE8];
        v1005 = (v943 ^ BYTE3(STACK[0x3CE8]));
        v1006 = STACK[0x2410];
        v1007 = STACK[0x2410] & v1005;
        LODWORD(v1005) = (v1007 << v930) | (v1005 >> v928);
        LODWORD(v984) = (v1005 ^ (2 * ((v1005 ^ (2 * (v1005 & v932))) & v932))) & v932;
        STACK[0x2608] = v932 & (2 * ((v1005 ^ (2 * v984)) & v932));
        v1008 = *(v940 + *(v939 + v934));
        LOBYTE(v934) = v1005 ^ (2 * (LODWORD(STACK[0x3D88]) & (4 * (v932 & (2 * ((v1005 ^ (2 * v984)) & v932)))) ^ v984));
        STACK[0x2880] = v1008;
        v1009 = (v1008 ^ (2 * (v954 & v1008)));
        v1010 = *(v940 + *(v939 + v934));
        LODWORD(STACK[0x1E4C]) = ((v1009 & v997) >> v951) | (v1009 << v928);
        STACK[0x2520] = v1010;
        STACK[0x1E40] = (((v1010 ^ (2 * (v942 & v1010))) & v997) >> v951) ^ ((v1010 ^ (2 * (v942 & v1010))) << v928);
        v1011 = ((v1006 & (v927 ^ STACK[0x3B78])) << v930) + ((v927 ^ STACK[0x3B78]) >> v952);
        STACK[0x2488] = v1011;
        LODWORD(v934) = LODWORD(STACK[0x3B00]) & (4 * ((v1011 ^ (2 * (v1011 & v942))) & v942)) ^ v1011 ^ (2 * (v1011 & v942));
        STACK[0x2718] = v970 & (8 * (v934 & v942));
        LOBYTE(v934) = *(v940 + *(v939 + (v934 ^ (2 * (v970 & (8 * (v934 & v942)) & v942)))));
        STACK[0x1E08] = (((v934 ^ (2 * (v954 & v934))) & v998) >> v930) + ((v934 ^ (2 * (v954 & v934))) << v952);
        LODWORD(v934) = (((v927 ^ STACK[0x3CE0]) & v1003) << v951) + ((v927 ^ STACK[0x3CE0]) >> v928);
        LODWORD(v934) = v999 & (4 * ((v934 ^ (2 * (v934 & v932))) & v932)) ^ v934 ^ (2 * (v934 & v932));
        LOBYTE(v1011) = STACK[0x6393];
        STACK[0x26C0] = (4 * (v934 & v932)) & (2 * v932) & v954;
        LOBYTE(v934) = *(v940 + *(v939 + (v1011 & (4 * ((4 * (v934 & v932)) & (2 * v932) & v954)) ^ v934)));
        STACK[0x1DF0] = (((v934 ^ (2 * (v954 & v934))) & v998) >> v951) ^ ((v934 ^ (2 * (v954 & v934))) << v928);
        LODWORD(v934) = ((LODWORD(STACK[0x3AF0]) & (v943 ^ v1004)) << v951) ^ ((v943 ^ v1004) >> v928);
        LODWORD(v934) = v999 & (4 * ((v934 ^ (2 * (v934 & v932))) & v932)) ^ v934 ^ (2 * (v934 & v932));
        LODWORD(v934) = *(v940 + *(v939 + (v966 & (16 * (v934 & v932)) & STACK[0x3D90] ^ v934)));
        STACK[0x2868] = v942 & v934;
        STACK[0x1D90] = (((v934 ^ (2 * (v942 & v934))) & v997) >> v930) ^ ((v934 ^ (2 * (v942 & v934))) << v952);
        LOBYTE(v1002) = *(v940 + *(v939 + v1002));
        v1012 = (v1002 ^ (2 * (v942 & v1002)));
        STACK[0x2408] = v1012 << v952;
        LODWORD(STACK[0x1D64]) = ((v1012 & v998) >> v951) | (v1012 << v952);
        STACK[0x2480] = STACK[0x3CC0];
        STACK[0x2578] = v1007;
        v311 = *(v0 + 8 * (v1 - 9893));
        LODWORD(STACK[0x3848]) = 2;
        LODWORD(STACK[0x2168]) = STACK[0x2910];
        STACK[0x28D0] = LODWORD(STACK[0x21D0]);
      }

      else
      {
        v493 = LODWORD(STACK[0x52A4]) ^ STACK[0x3720];
        v494 = LODWORD(STACK[0x52C0]) ^ STACK[0x3E40];
        v495 = v494 & STACK[0x6388];
        STACK[0x3D70] = v495;
        v496 = STACK[0x5328];
        v497 = STACK[0x5338];
        v498 = (v495 << STACK[0x5328]) | (v494 >> STACK[0x5338]);
        v499 = STACK[0x52B8];
        LODWORD(v495) = v498 ^ (2 * (v498 & STACK[0x52B8]));
        v500 = STACK[0x5350];
        v501 = (v493 & STACK[0x6380]) << STACK[0x5350];
        STACK[0x2200] = v493;
        v502 = v493;
        v503 = STACK[0x5320];
        LODWORD(STACK[0x3AE8]) = v501 ^ (v502 >> STACK[0x5320]);
        v504 = STACK[0x53C8];
        LODWORD(v495) = LODWORD(STACK[0x53C8]) & (4 * (v495 & v499)) ^ v495;
        LODWORD(v502) = STACK[0x52D8];
        LODWORD(STACK[0x3D98]) = v1 - 12317;
        LODWORD(STACK[0x3B00]) = v499 & v504;
        LODWORD(v501) = 4 * (v499 & v504);
        v505 = STACK[0x6B1C];
        v506 = STACK[0x4EA8];
        v507 = STACK[0x4EA0];
        LOBYTE(v495) = *(STACK[0x4EA0] + *(STACK[0x4EA8] + (v501 & (16 * (v495 & v499)) & STACK[0x6B1C] ^ v495 & ((v1 - 12317) ^ 0x227E))));
        v508 = LOBYTE(STACK[0x4E9F]);
        v509 = LOBYTE(STACK[0x4E9D]);
        v510 = (v495 ^ (2 * (v508 & v495)));
        v511 = LOBYTE(STACK[0x4E9E]);
        STACK[0x3AE0] = v511;
        v512 = v510 & v511;
        STACK[0x2220] = v512;
        LODWORD(STACK[0x1D8C]) = (v512 >> v496) ^ (v510 << v503);
        v513 = LOBYTE(STACK[0x671B]);
        v514 = LOBYTE(STACK[0x6395]);
        v515 = (((v513 ^ STACK[0x3CC8]) & v514) << v496) ^ ((v513 ^ STACK[0x3CC8]) >> v497);
        STACK[0x2918] = v515;
        v516 = STACK[0x53CC];
        LODWORD(v510) = LODWORD(STACK[0x53CC]) & (4 * ((v515 ^ (2 * (v515 & v502))) & v502)) ^ v515 ^ (2 * (v515 & v502));
        LODWORD(STACK[0x3B20]) = v502 & LODWORD(STACK[0x53CC]);
        v517 = (8 * (v510 & v502)) & (2 * (v502 & v516)) & STACK[0x671C];
        STACK[0x26C0] = v517;
        LOBYTE(v510) = *(v507 + *(v506 + (v510 ^ (2 * v517))));
        v518 = LOBYTE(STACK[0x4E9C]);
        LODWORD(STACK[0x2278]) = (((v510 ^ (2 * (v509 & v510))) & v518) >> v500) + ((v510 ^ (2 * (v509 & v510))) << v497);
        v519 = LOBYTE(STACK[0x6394]);
        LODWORD(v510) = (((v513 ^ STACK[0x3708]) & LOBYTE(STACK[0x6394])) << v500) ^ ((v513 ^ STACK[0x3708]) >> v503);
        v520 = v504;
        LODWORD(STACK[0x3AF0]) = v504;
        v521 = v504 & (4 * ((v510 ^ (2 * (v510 & v499))) & v499)) ^ v510 ^ (2 * (v510 & v499));
        v522 = LOBYTE(STACK[0x671A]);
        v523 = (v522 ^ STACK[0x3BF8]);
        LOBYTE(v517) = (v522 ^ STACK[0x3BF8]) & v519;
        v524 = v519;
        LODWORD(STACK[0x3D88]) = v519;
        v525 = (v517 << v500) ^ (v523 >> v503);
        STACK[0x2458] = v525;
        v526 = v525 ^ (2 * (v525 & v499));
        STACK[0x2768] = v526;
        LODWORD(v510) = v505;
        LODWORD(STACK[0x3AD8]) = v505;
        v527 = *(v506 + (v501 & (16 * ((v520 & (4 * (v526 & v499)) ^ v526) & v499)) & v505 ^ (v520 & (4 * (v526 & v499)) ^ v526)));
        LOBYTE(v519) = *(v507 + v527) ^ (2 * (v508 & *(v507 + v527)));
        v528 = (v522 ^ STACK[0x3758]);
        STACK[0x3CB8] = v528 & v514;
        LOBYTE(v528) = ((v528 & v514) << v496) | (v528 >> v497);
        LOBYTE(v528) = v516 & (4 * ((v528 ^ (2 * (v528 & v502))) & v502)) ^ v528 ^ (2 * (v528 & v502));
        v529 = 4 * (v502 & v516);
        LODWORD(v526) = (((v513 ^ STACK[0x3CD0]) & v524) << v500) ^ ((v513 ^ STACK[0x3CD0]) >> v497);
        v530 = *(v506 + (v529 & (16 * (v528 & v502)) & LOBYTE(STACK[0x6B23]) ^ v528));
        LODWORD(STACK[0x3A68]) = v516;
        v531 = v516 & (4 * ((v526 ^ (2 * (v526 & v502))) & v502)) ^ v526 ^ (2 * (v526 & v502));
        v532 = v531 & v502;
        STACK[0x24A8] = v532;
        v533 = STACK[0x6B24];
        LODWORD(STACK[0x3B08]) = STACK[0x6B24];
        STACK[0x26E0] = v531;
        v534 = *(v506 + (v529 & (16 * v532) & v533 ^ v531));
        STACK[0x3A60] = *(v507 + v530) ^ (2 * (v509 & *(v507 + v530)));
        LOBYTE(v531) = *(v507 + v534) ^ (2 * (v508 & *(v507 + v534)));
        LODWORD(v534) = v522 ^ STACK[0x3C18];
        v535 = (v522 ^ STACK[0x3C18]);
        STACK[0x3CC0] = v514;
        LOBYTE(v534) = ((v534 & v514) << v496) ^ (v535 >> v503);
        LOBYTE(v534) = LOBYTE(STACK[0x6B28]) & (4 * ((v534 ^ (2 * (v534 & v499))) & v499)) ^ v534 ^ (2 * (v534 & v499));
        LODWORD(v534) = *(v507 + *(v506 + (STACK[0x6393] & LOBYTE(STACK[0x6B29]) & (16 * (v534 & v508)) ^ v534)));
        STACK[0x3D90] = v534 ^ (2 * (v509 & v534));
        LODWORD(v534) = v513 ^ STACK[0x3D78];
        v536 = LOBYTE(STACK[0x6396]);
        v537 = (v513 ^ STACK[0x3D78]) >> v503;
        STACK[0x3B80] = v537;
        LODWORD(v534) = ((v534 & v536) << v496) + v537;
        v538 = v534 ^ (2 * (v534 & v502));
        v539 = LOBYTE(STACK[0x6397]);
        STACK[0x2400] = v538;
        LODWORD(v534) = v539 & (4 * (v538 & v509)) ^ v538;
        v540 = (LOBYTE(STACK[0x6B2A]) & v539) & (8 * (v534 & v509));
        STACK[0x28D0] = v540;
        LODWORD(v510) = v501 & (16 * (v521 & v499)) & v510 ^ v521;
        v541 = STACK[0x3AE8];
        v542 = 2 * (STACK[0x3AE8] & v502);
        STACK[0x2838] = v542;
        LODWORD(v542) = v542 ^ v541;
        v543 = *(v506 + v510);
        STACK[0x2478] = 2 * (v542 & v509);
        LOBYTE(v542) = v542 ^ (2 * ((2 * (v542 & v509)) & v509));
        LODWORD(v543) = *(v507 + v543);
        STACK[0x21B0] = 2 * (v509 & v543);
        v544 = STACK[0x3AE0];
        LODWORD(STACK[0x1E9C]) = ((((2 * (v509 & v543)) ^ v543) & STACK[0x3AE0]) >> v500) + (((2 * (v509 & v543)) ^ v543) << v497);
        LODWORD(STACK[0x2170]) = ((v519 & v518) >> v496) + (v519 << v503);
        LOBYTE(v543) = STACK[0x6B2B];
        LOBYTE(v534) = *(v507 + *(v506 + (v534 ^ (2 * (v540 & v509)))));
        LOBYTE(v519) = v534 ^ (2 * (v508 & v534));
        LODWORD(v534) = *(v507 + *(v506 + (LOBYTE(STACK[0x6B2B]) & (16 * (v509 & v542)) & v539 ^ v542)));
        v545 = v534 ^ (2 * (v509 & v534));
        LODWORD(v534) = (((v522 ^ STACK[0x3718]) & v514) << v496) ^ ((v522 ^ STACK[0x3718]) >> v503);
        LODWORD(v534) = v534 ^ (2 * (v534 & v502));
        LODWORD(STACK[0x1EA0]) = ((STACK[0x3A60] & v544) >> v500) | (STACK[0x3A60] << v503);
        LODWORD(STACK[0x1DAC]) = ((v531 & v518) >> v496) | (v531 << v497);
        v546 = v534 & v502;
        STACK[0x2858] = v546;
        v547 = v516 & (4 * v546) ^ v534;
        v548 = v502 & (2 * (v547 & v502));
        LODWORD(v546) = STACK[0x6B2C];
        STACK[0x2870] = v548;
        STACK[0x2550] = v547;
        LOBYTE(v548) = *(v507 + *(v506 + (v546 & (8 * v548) ^ v547)));
        LODWORD(v547) = ((LODWORD(STACK[0x3D88]) & (v522 ^ STACK[0x3CD8])) << v500) + ((v522 ^ STACK[0x3CD8]) >> v497);
        LODWORD(v547) = v547 ^ (2 * (v547 & v499));
        LODWORD(STACK[0x1D08]) = ((STACK[0x3D90] & v544) >> v496) ^ (STACK[0x3D90] << v503);
        LODWORD(STACK[0x2178]) = ((v519 & v518) >> v500) + (v519 << v497);
        STACK[0x2388] = v545;
        LODWORD(STACK[0x1F0C]) = ((v545 & v544) >> v496) + (v545 << v503);
        LODWORD(v514) = STACK[0x3AF0];
        v549 = STACK[0x3AF0] & (4 * (v547 & v499));
        v550 = STACK[0x3B00];
        LODWORD(v545) = 2 * LODWORD(STACK[0x3B00]);
        STACK[0x2990] = v549;
        LODWORD(v547) = v549 ^ v547;
        STACK[0x28F0] = v545 & (8 * (v547 & v499));
        v551 = (((v548 ^ (2 * (v508 & v548))) & v518) >> v500) ^ ((v548 ^ (2 * (v508 & v548))) << v497);
        LOBYTE(v548) = *(v507 + *(v506 + (v547 ^ (2 * ((2 * v550) & (8 * (v547 & v499)) & v508)))));
        LODWORD(v547) = (((v513 ^ STACK[0x3CF0]) & v536) << v496) ^ ((v513 ^ STACK[0x3CF0]) >> v503);
        LODWORD(v547) = v514 & (4 * ((v547 ^ (2 * (v547 & v499))) & v499)) ^ v547 ^ (2 * (v547 & v499));
        v552 = v499 & STACK[0x6B30] & (4 * (v547 & v499));
        STACK[0x2828] = v552;
        LODWORD(v547) = LODWORD(STACK[0x3AD8]) & (4 * v552) ^ v547;
        v553 = (v548 ^ (2 * (v508 & v548)));
        v554 = v553 << v497;
        v555 = v518 & v553;
        LOBYTE(v553) = *(v507 + *(v506 + v547));
        STACK[0x21B8] = v555;
        LODWORD(STACK[0x1D5C]) = (v555 >> v500) ^ v554;
        LODWORD(STACK[0x1F50]) = (((v553 ^ (2 * (v509 & v553))) & v544) >> v496) | ((v553 ^ (2 * (v509 & v553))) << v503);
        LOBYTE(v521) = v513;
        v556 = LOBYTE(STACK[0x635B]);
        LODWORD(v553) = ((v556 & (v513 ^ STACK[0x3BC0])) << v500) | ((v513 ^ STACK[0x3BC0]) >> v497);
        LODWORD(v553) = v553 ^ (2 * (v553 & v502));
        STACK[0x2910] = v502 & (2 * (v553 & v502));
        v557 = *(v506 + (v539 & v543 & (16 * ((v553 ^ (2 * (v502 & (2 * (v553 & v502))))) & v509)) ^ v553 ^ (2 * (v502 & (2 * (v553 & v502))))));
        STACK[0x2430] = v557;
        v558 = (*(v507 + v557) ^ (2 * (v508 & *(v507 + v557))));
        STACK[0x1E18] = ((v558 & v518) >> v496) | (v558 << v503);
        v559 = STACK[0x3CE8];
        v560 = (v522 ^ WORD1(STACK[0x3CE8]));
        v561 = v556 & v560;
        v562 = v560 >> v503;
        LODWORD(v560) = (v561 << v500) ^ (v560 >> v503);
        v563 = STACK[0x3A68];
        LODWORD(v560) = LODWORD(STACK[0x3A68]) & (4 * ((v560 ^ (2 * (v560 & v502))) & v502)) ^ v560 ^ (2 * (v560 & v502));
        v564 = v502 & (2 * (v560 & v502));
        STACK[0x2348] = v564;
        LODWORD(v560) = v546 & (8 * v564) ^ v560;
        LODWORD(v564) = v522 ^ STACK[0x3CE0];
        v565 = (v522 ^ STACK[0x3CE0]) >> v497;
        STACK[0x24B0] = v536;
        LODWORD(v564) = ((v564 & v536) << v496) + v565;
        LODWORD(v564) = v514 & (4 * ((v564 ^ (2 * (v564 & v499))) & v499)) ^ v564 ^ (2 * (v564 & v499));
        STACK[0x25E8] = v545 & (8 * (v564 & v499));
        LODWORD(v564) = *(v507 + *(v506 + (v564 ^ (2 * (v545 & (8 * (v564 & v499)) & v508)))));
        STACK[0x2860] = 2 * (v509 & v564);
        STACK[0x1F80] = ((((2 * (v509 & v564)) ^ v564) & v544) >> v500) ^ (((2 * (v509 & v564)) ^ v564) << v497);
        LODWORD(v560) = *(v507 + *(v506 + v560));
        STACK[0x2728] = v509 & v560;
        v566 = (v560 ^ (2 * (v509 & v560)));
        v567 = v566 & v544;
        v568 = v566 << v497;
        LODWORD(v566) = ((LODWORD(STACK[0x3D88]) & (v521 ^ v559)) << v500) + ((v521 ^ v559) >> v497);
        LODWORD(v566) = v563 & (4 * ((v566 ^ (2 * (v566 & v502))) & v502)) ^ v566 ^ (2 * (v566 & v502));
        v569 = v566 & v502;
        STACK[0x2380] = v569;
        v570 = STACK[0x3B20] & (4 * v569);
        STACK[0x2280] = v570;
        LODWORD(v566) = *(v507 + *(v506 + (STACK[0x3B08] & (4 * v570) ^ v566)));
        STACK[0x28A8] = v508 & v566;
        STACK[0x1F90] = (((v566 ^ (2 * (v508 & v566))) & v518) >> v496) ^ ((v566 ^ (2 * (v508 & v566))) << v503);
        STACK[0x1FF0] = v568;
        STACK[0x1DC0] = (v567 >> v500) ^ v568;
        v311 = *(v0 + 8 * (v1 - 9893));
        STACK[0x2438] = STACK[0x3D70];
        STACK[0x24F8] = STACK[0x3CB8];
        STACK[0x2448] = v561;
        STACK[0x2538] = v562;
        STACK[0x26E8] = STACK[0x3D90];
        v571 = STACK[0x3CC0];
        STACK[0x2590] = STACK[0x3CC0];
        STACK[0x2530] = v571;
        LODWORD(STACK[0x3848]) = 1;
        STACK[0x23E0] = v551;
        LODWORD(STACK[0x1DB8]) = v551;
      }

      return v311();
    }

    if (v229 == 2)
    {
      LOBYTE(v218) = LOBYTE(STACK[0x671A]) ^ STACK[0x3D78];
      v652 = LOBYTE(STACK[0x671A]);
      v653 = STACK[0x5338];
      v654 = LOBYTE(STACK[0x6395]);
      v655 = STACK[0x5328];
      v656 = ((v218 & v654) << STACK[0x5328]) + (v218 >> STACK[0x5338]);
      v657 = STACK[0x52D8];
      v658 = STACK[0x53CC];
      v659 = STACK[0x53CC] & (4 * ((v656 ^ (2 * (v656 & v657))) & v657)) ^ v656 ^ (2 * (v656 & v657));
      v660 = (v659 & STACK[0x52D8]) << (v1 + 99);
      v661 = LOBYTE(STACK[0x4E9D]);
      STACK[0x25A0] = v660;
      v662 = LOBYTE(STACK[0x6726]) & (4 * (v660 & v661));
      STACK[0x2548] = v662;
      v663 = STACK[0x4EA8];
      v664 = STACK[0x4EA0];
      v665 = *(STACK[0x4EA0] + *(STACK[0x4EA8] + (v659 ^ (2 * v662))));
      v666 = LOBYTE(STACK[0x4E9F]);
      STACK[0x3D90] = v665 ^ (2 * (v666 & v665));
      v667 = LOBYTE(STACK[0x671B]);
      v668 = v667 ^ STACK[0x3C18];
      v669 = (v667 ^ STACK[0x3C18]) >> v653;
      v670 = v654;
      STACK[0x25F8] = v654;
      v671 = ((v668 & v654) << v655) ^ v669;
      v672 = v658 & (4 * ((v671 ^ (2 * (v671 & v657))) & v657)) ^ v671 ^ (2 * (v671 & v657));
      v673 = v658 & (4 * (v672 & v657));
      STACK[0x2950] = v673;
      v674 = STACK[0x6B0C];
      v675 = *(v664 + *(v663 + (STACK[0x6B0C] & (4 * (v673 & v657)) ^ v672)));
      STACK[0x3D88] = v675 ^ (2 * (v661 & v675));
      v676 = v667 ^ STACK[0x3CD0];
      v677 = v667;
      v678 = (v667 ^ STACK[0x3CD0]);
      v679 = LOBYTE(STACK[0x6394]);
      v680 = LOBYTE(STACK[0x6394]);
      STACK[0x2850] = v679;
      v681 = STACK[0x5320];
      v682 = STACK[0x5350];
      v683 = ((v676 & v679) << STACK[0x5350]) ^ (v678 >> STACK[0x5320]);
      LODWORD(v678) = STACK[0x52B8];
      v684 = STACK[0x53C8];
      v685 = STACK[0x53C8] & (4 * ((v683 ^ (2 * (v683 & v678))) & v678)) ^ v683 ^ (2 * (v683 & v678));
      v686 = 4 * (STACK[0x52B8] & LODWORD(STACK[0x53C8]));
      LODWORD(STACK[0x3D98]) = STACK[0x52B8] & LODWORD(STACK[0x53C8]);
      v687 = STACK[0x6B10];
      STACK[0x2778] = v685;
      v688 = *(v664 + *(v663 + (v686 & (16 * (v685 & v678)) & v687 ^ v685)));
      STACK[0x3D70] = v688 ^ (2 * (v666 & v688));
      v689 = STACK[0x3758];
      v690 = v652;
      LODWORD(STACK[0x3CB8]) = v652;
      v691 = (v652 ^ v689) >> v681;
      v692 = ((v652 ^ v689) & v680) << v682;
      STACK[0x20B0] = v692;
      v693 = (v692 | v691) ^ (2 * ((v692 | v691) & v657));
      v694 = 4 * (v657 & v658);
      v695 = STACK[0x3BF8];
      LOBYTE(v680) = v677;
      LODWORD(STACK[0x3CC0]) = v677;
      LODWORD(v691) = (((v677 ^ v695) & v670) << v655) ^ ((v677 ^ v695) >> v653);
      LODWORD(v691) = v684 & (4 * ((v691 ^ (2 * (v691 & v678))) & v678)) ^ v691 ^ (2 * (v691 & v678));
      LOBYTE(v693) = *(v664 + *(v663 + (v694 & (16 * ((v658 & (4 * (v693 & v657)) ^ v693) & v657)) & v674 ^ (v658 & (4 * (v693 & v657)) ^ v693))));
      LOBYTE(v677) = v693 ^ (2 * (v661 & v693));
      LOBYTE(v691) = *(v664 + *(v663 + (v686 & (16 * (v691 & v678)) & v687 ^ v691)));
      v696 = v691 ^ (2 * (v661 & v691));
      v697 = v690 ^ STACK[0x3708];
      LOBYTE(v670) = STACK[0x6396];
      STACK[0x23E0] = v697;
      LODWORD(v691) = (v697 >> v681) + ((v670 & v697) << v655);
      v698 = v691 ^ (2 * (v691 & v657));
      STACK[0x2478] = v698;
      LODWORD(v691) = v658 & (4 * (v698 & v657)) ^ v698;
      v699 = v658 & STACK[0x6B14] & (8 * (v691 & v657));
      v700 = STACK[0x638C];
      STACK[0x3B48] = v699;
      v701 = v691 ^ (2 * (v699 & v700));
      v702 = STACK[0x635B];
      LODWORD(v699) = (((v680 ^ STACK[0x3CC8]) & LOBYTE(STACK[0x635B])) << v682) + ((v680 ^ STACK[0x3CC8]) >> v653);
      v703 = v699 & v678;
      STACK[0x2440] = v703;
      LODWORD(v699) = v684 & (4 * ((v699 ^ (2 * v703)) & v678)) ^ v699 ^ (2 * v703);
      v704 = v678 & v684 & (4 * (v699 & v678));
      STACK[0x2568] = v704;
      v705 = (2 * v704);
      STACK[0x23A0] = v705;
      LOBYTE(v701) = *(v664 + *(v663 + v701));
      LODWORD(v699) = *(v664 + *(v663 + (v699 ^ (2 * (v705 & v666)))));
      v706 = v699 ^ (2 * (v661 & v699));
      v707 = LOBYTE(STACK[0x4E9E]);
      LODWORD(STACK[0x1E24]) = ((STACK[0x3D90] & v707) >> v655) | (STACK[0x3D90] << v681);
      v708 = LOBYTE(STACK[0x4E9C]);
      LODWORD(STACK[0x1E58]) = ((STACK[0x3D88] & v708) >> v682) ^ (STACK[0x3D88] << v653);
      v709 = STACK[0x3D70];
      STACK[0x2510] = v709 & v707;
      STACK[0x28D8] = ((v709 & v707) >> v682) | (v709 << v681);
      LODWORD(STACK[0x1DB4]) = ((v677 & v708) >> v655) ^ (v677 << v653);
      LODWORD(STACK[0x1F28]) = ((v696 & v707) >> v655) + (v696 << v681);
      LODWORD(STACK[0x1D60]) = (((v701 ^ (2 * (v666 & v701))) & v708) >> v682) | ((v701 ^ (2 * (v666 & v701))) << v653);
      STACK[0x2348] = v706;
      LODWORD(STACK[0x1DE4]) = ((v706 & v707) >> v682) ^ (v706 << v653);
      LODWORD(v709) = LODWORD(STACK[0x52C0]) ^ STACK[0x3E40];
      v710 = v709 & STACK[0x635C];
      STACK[0x24B0] = v710;
      v711 = v710 << v682;
      STACK[0x3D90] = v711;
      LODWORD(v709) = v658 & (4 * (((v711 + (v709 >> v681)) ^ (2 * ((v711 + (v709 >> v681)) & v657))) & v657)) ^ (v711 + (v709 >> v681)) ^ (2 * ((v711 + (v709 >> v681)) & v657));
      LODWORD(STACK[0x3D88]) = v694 & (16 * (v709 & v657)) & v674 ^ v709;
      LODWORD(v711) = LODWORD(STACK[0x52A4]) ^ STACK[0x3720];
      v712 = STACK[0x636C] & v711;
      STACK[0x2468] = v712;
      LODWORD(v711) = (v711 >> v653) + (v712 << v655);
      LODWORD(v711) = v684 & (4 * ((v711 ^ (2 * (v711 & v678))) & v678)) ^ v711 ^ (2 * (v711 & v678));
      LODWORD(v711) = *(v664 + *(v663 + (v686 & (16 * (v711 & v678)) & v687 ^ v711)));
      STACK[0x3D70] = v711 ^ (2 * (v666 & v711));
      v713 = STACK[0x3CB8];
      v714 = (v670 & (LODWORD(STACK[0x3CB8]) ^ STACK[0x3718])) << v655;
      v715 = v714 ^ ((LODWORD(STACK[0x3CB8]) ^ STACK[0x3718]) >> v681);
      STACK[0x2738] = v715;
      v716 = v686 & (16 * ((v684 & (4 * ((v715 ^ (2 * (v715 & v678))) & v678)) ^ v715 ^ (2 * (v715 & v678))) & v678)) & v687 ^ (v684 & (4 * ((v715 ^ (2 * (v715 & v678))) & v678)) ^ v715 ^ (2 * (v715 & v678)));
      v717 = v713;
      LODWORD(v711) = ((v713 ^ STACK[0x3CD8]) >> v653) ^ (((v713 ^ STACK[0x3CD8]) & v702) << v682);
      LODWORD(v711) = v658 & (4 * ((v711 ^ (2 * (v711 & v657))) & v657)) ^ v711 ^ (2 * (v711 & v657));
      LODWORD(v711) = *(v664 + *(v663 + (v694 & (16 * (v711 & v657)) & v674 ^ v711)));
      STACK[0x2800] = v661 & v711;
      LODWORD(STACK[0x1F3C]) = (((v711 ^ (2 * (v661 & v711))) & v707) >> v682) | ((v711 ^ (2 * (v661 & v711))) << v653);
      v718 = STACK[0x3CC0];
      v719 = LODWORD(STACK[0x3CC0]) ^ STACK[0x3CF0];
      v720 = (LODWORD(STACK[0x3CC0]) ^ STACK[0x3CF0]) >> v681;
      STACK[0x22E8] = v719;
      v721 = STACK[0x2850];
      LOBYTE(v711) = ((v719 & STACK[0x2850]) << v682) | v720;
      LOBYTE(v711) = LOBYTE(STACK[0x6B19]) & (4 * ((v711 ^ (2 * (v711 & v657))) & v657)) ^ v711 ^ (2 * (v711 & v657));
      v722 = LOBYTE(STACK[0x6397]);
      v723 = *(v663 + (v722 & LOBYTE(STACK[0x6B1A]) & (16 * (v711 & v661)) ^ v711));
      STACK[0x2200] = v723;
      LOBYTE(v723) = *(v664 + v723) ^ (2 * (v666 & *(v664 + v723)));
      v724 = STACK[0x25F8];
      v725 = (((v717 ^ STACK[0x3BC0]) & STACK[0x25F8]) << v655) + ((v717 ^ STACK[0x3BC0]) >> v653);
      v726 = v725 ^ (2 * (v725 & v678));
      v727 = v726 & v678;
      STACK[0x2598] = v727;
      v728 = v684 & (4 * v727) ^ v726;
      v729 = 2 * (v728 & v678);
      STACK[0x23F8] = v729;
      v730 = v729 & v666;
      STACK[0x2830] = v730;
      v731 = (2 * v730);
      STACK[0x2828] = v731;
      v732 = LOBYTE(STACK[0x6393]);
      v733 = v732 & (4 * (v731 & v666));
      STACK[0x23D8] = v733;
      LOBYTE(v728) = *(v664 + *(v663 + (v733 ^ v728)));
      v734 = ((v723 & v708) >> v655) + (v723 << v681);
      STACK[0x1D48] = (((v728 ^ (2 * (v666 & v728))) & v708) >> v655) ^ ((v728 ^ (2 * (v666 & v728))) << v681);
      v735 = (((v718 ^ STACK[0x3B78]) & v721) << v682) + ((v718 ^ STACK[0x3B78]) >> v681);
      STACK[0x2540] = v735;
      LODWORD(v723) = v722 & (4 * ((v735 ^ (2 * (v735 & v661))) & v661)) ^ v735 ^ (2 * (v735 & v661));
      v736 = v722 & (4 * (v723 & v661));
      STACK[0x28E0] = v736;
      v737 = v722 & (4 * (v736 & v661));
      STACK[0x23E8] = v737;
      v738 = *(v663 + (v737 ^ v723));
      STACK[0x24A8] = v738;
      LOBYTE(v738) = *(v664 + v738) ^ (2 * (v661 & *(v664 + v738)));
      v739 = ((v724 & (v717 ^ STACK[0x3CE0])) << v655) + ((v717 ^ STACK[0x3CE0]) >> v653);
      STACK[0x2878] = v739;
      v740 = v732 & (4 * ((v739 ^ (2 * (v739 & v666))) & v666)) ^ v739 ^ (2 * (v739 & v666));
      v741 = (v732 & LOBYTE(STACK[0x6B1B])) & (16 * (v740 & v666)) ^ v740;
      v742 = *(v663 + v741);
      STACK[0x1E50] = ((v738 & v707) >> v682) ^ (v738 << v653);
      v743 = (*(v664 + v742) ^ (2 * (v666 & *(v664 + v742))));
      STACK[0x1D80] = ((v743 & v707) >> v682) | (v743 << v681);
      LODWORD(v743) = *(v664 + *(v663 + v716));
      STACK[0x2758] = 2 * (v661 & v743);
      v744 = ((2 * (v661 & v743)) ^ v743);
      v745 = (v744 & v708) >> v682;
      v746 = ((v718 ^ STACK[0x3CE8]) & v721) << v682;
      v747 = (v718 ^ STACK[0x3CE8]) >> v681;
      LODWORD(v746) = (v746 | v747) ^ (2 * ((v746 | v747) & v678));
      LODWORD(v746) = v684 & (4 * (v746 & v678)) ^ v746;
      v748 = (8 * (v746 & v678)) & (2 * LODWORD(STACK[0x3D98])) & STACK[0x637C];
      v749 = *(v663 + LODWORD(STACK[0x3D88]));
      STACK[0x2930] = v748;
      v750 = *(v663 + (v746 ^ (2 * v748)));
      v751 = *(v664 + v749);
      LOBYTE(v749) = *(v664 + v750) ^ (2 * (v661 & *(v664 + v750)));
      STACK[0x2900] = v751;
      v752 = STACK[0x3D70];
      STACK[0x2310] = v751 ^ (2 * (v666 & v751));
      v753 = (v751 ^ (2 * (v666 & v751)));
      v754 = (v752 & v707) >> v655;
      STACK[0x1D00] = ((v749 & v708) >> v655) | (v749 << v653);
      LODWORD(STACK[0x3D98]) = v1 - 12317;
      LODWORD(STACK[0x1D28]) = ((v708 & v753) >> v655) | (v753 << v681);
      STACK[0x2028] = v754;
      LODWORD(STACK[0x1F18]) = v754 | (v752 << v681);
      v755 = *(v0 + 8 * (v1 - 9893));
      STACK[0x25F0] = v745;
      LODWORD(STACK[0x1F24]) = v745 | (v744 << v653);
      STACK[0x2480] = v741;
      STACK[0x2630] = v714;
      STACK[0x23D0] = v753 << v681;
      STACK[0x2570] = STACK[0x3D90];
      STACK[0x2600] = v720;
      STACK[0x2460] = v747;
      LODWORD(STACK[0x3848]) = 3;
      STACK[0x2490] = v734;
      STACK[0x1F60] = v734;
      STACK[0x2658] = v721;
      LODWORD(STACK[0x1DFC]) = STACK[0x28D8];
      STACK[0x2430] = v721;
      return v755();
    }

    else if (v229 == 3)
    {
      v312 = (v1 + 2047168851) & 0x85FA7E8F;
      v313 = LOBYTE(STACK[0x671A]);
      v314 = STACK[0x5338];
      v315 = STACK[0x6395];
      v316 = STACK[0x5328];
      v317 = (((v313 ^ STACK[0x3D78]) & LOBYTE(STACK[0x6395])) << STACK[0x5328]) ^ ((v313 ^ STACK[0x3D78]) >> STACK[0x5338]);
      v318 = STACK[0x52D8];
      v319 = STACK[0x53CC];
      v320 = STACK[0x53CC] & (4 * ((v317 ^ (2 * (v317 & v318))) & v318)) ^ v317 ^ (2 * (v317 & v318));
      LODWORD(STACK[0x3D98]) = v312;
      v321 = STACK[0x6AE8];
      LODWORD(STACK[0x3D88]) = STACK[0x6AE8] & (4 * (v318 & v319 & ((v320 & v318) << (v312 - 127)))) ^ v320;
      v322 = STACK[0x4EA8];
      v323 = STACK[0x4EA0];
      v324 = LOBYTE(STACK[0x4E9F]);
      v325 = STACK[0x5350];
      v326 = LOBYTE(STACK[0x671B]);
      v327 = v326 ^ STACK[0x3C18];
      v328 = STACK[0x5320];
      v329 = (v326 ^ STACK[0x3C18]) >> STACK[0x5320];
      v330 = LOBYTE(STACK[0x6396]);
      STACK[0x3B20] = v330;
      v331 = ((v327 & v330) << v316) + v329;
      v332 = v331 ^ (2 * (v331 & v318));
      STACK[0x28E0] = (4 * (v332 & v318)) & (2 * v318);
      LOBYTE(v332) = (4 * (v332 & v318)) & (2 * v318) ^ v332;
      v333 = LOBYTE(STACK[0x4E9D]);
      v334 = LOBYTE(STACK[0x6AEF]);
      LODWORD(v330) = LOBYTE(STACK[0x6397]);
      LODWORD(STACK[0x3BE0]) = v330;
      LODWORD(STACK[0x3D70]) = v330 & v334;
      LOBYTE(v332) = *(v323 + *(v322 + (v330 & v334 & (16 * (v332 & v333)) ^ v332)));
      v335 = (v332 ^ (2 * (v333 & v332)));
      LOBYTE(v332) = v326 ^ STACK[0x3CD0];
      LODWORD(v330) = LOBYTE(STACK[0x635B]);
      LODWORD(STACK[0x3CB0]) = v330;
      v336 = ((v332 & v330) << v325) | (v332 >> v314);
      v337 = STACK[0x52B8];
      v338 = STACK[0x53C8];
      v339 = STACK[0x53C8] & (4 * ((v336 ^ (2 * (v336 & v337))) & v337)) ^ v336 ^ (2 * (v336 & v337));
      v340 = 2 * (STACK[0x52B8] & LODWORD(STACK[0x53C8]));
      STACK[0x25D0] = v340 & (8 * (v339 & STACK[0x52B8]));
      v341 = v339 ^ (2 * (v340 & (8 * (v339 & v337)) & v324));
      v342 = LOBYTE(STACK[0x4E9C]);
      v343 = *(v322 + v341);
      LODWORD(STACK[0x1DB0]) = ((v335 & v342) >> v316) + (v335 << v328);
      LOBYTE(v335) = *(v323 + v343) ^ (2 * (v324 & *(v323 + v343)));
      v344 = ((v315 & (v313 ^ STACK[0x3758])) << v316) + ((v313 ^ STACK[0x3758]) >> v328);
      LODWORD(v330) = v338 & (4 * ((v344 ^ (2 * (v344 & v337))) & v337)) ^ v344 ^ (2 * (v344 & v337));
      v345 = 4 * (v337 & v338);
      LODWORD(v343) = STACK[0x6AF0];
      v346 = *(v322 + (v345 & (16 * (v330 & v337)) & STACK[0x6AF0] ^ v330));
      LODWORD(STACK[0x1E60]) = ((v335 & v342) >> v325) + (v335 << v328);
      LOBYTE(v336) = *(v323 + v346) ^ (2 * (v333 & *(v323 + v346)));
      v347 = STACK[0x3BF8];
      v348 = v326 ^ STACK[0x3BF8];
      STACK[0x3D90] = v348;
      v349 = LOBYTE(STACK[0x6394]);
      STACK[0x25F0] = v349;
      LODWORD(v348) = ((v348 & v349) << v325) ^ ((v326 ^ v347) >> v314);
      LODWORD(v348) = v319 & (4 * ((v348 ^ (2 * (v348 & v318))) & v318)) ^ v348 ^ (2 * (v348 & v318));
      v350 = 4 * (v318 & v319);
      LODWORD(v347) = v350 & (16 * (v348 & v318)) & v321 ^ v348;
      v351 = LOBYTE(STACK[0x4E9E]);
      v352 = *(v322 + v347);
      LODWORD(STACK[0x1D0C]) = ((v336 & v351) >> v316) ^ (v336 << v314);
      v353 = (((v313 ^ STACK[0x3708]) & v315) << v316) + ((v313 ^ STACK[0x3708]) >> v314);
      v354 = v338 & (4 * ((v353 ^ (2 * (v353 & v337))) & v337)) ^ v353 ^ (2 * (v353 & v337));
      v355 = (*(v323 + v352) ^ (2 * (v324 & *(v323 + v352))));
      v356 = *(v323 + *(v322 + (v345 & (16 * (v354 & v337)) & v343 ^ v354)));
      LODWORD(STACK[0x1FBC]) = ((v355 & v351) >> v325) + (v355 << v328);
      STACK[0x3CC0] = v356 ^ (2 * (v333 & v356));
      LODWORD(v355) = (((v313 ^ STACK[0x3CC8]) & v349) << v325) ^ ((v313 ^ STACK[0x3CC8]) >> v328);
      LODWORD(v355) = v319 & (4 * ((v355 ^ (2 * (v355 & v318))) & v318)) ^ v355 ^ (2 * (v355 & v318));
      v357 = v350 & (16 * (v355 & v318)) & STACK[0x6AF4] ^ v355;
      STACK[0x23D8] = v357;
      LODWORD(v357) = *(v323 + *(v322 + v357));
      STACK[0x28C0] = v324 & v357;
      LODWORD(STACK[0x1F9C]) = (((v357 ^ (2 * (v324 & v357))) & v351) >> v325) ^ ((v357 ^ (2 * (v324 & v357))) << v314);
      LODWORD(v357) = ((STACK[0x636C] & (LODWORD(STACK[0x52A4]) ^ STACK[0x3E40])) << v316) ^ ((LOBYTE(STACK[0x52A4]) ^ STACK[0x3E40]) >> v314);
      LODWORD(v357) = v338 & (4 * ((v357 ^ (2 * (v357 & v337))) & v337)) ^ v357 ^ (2 * (v357 & v337));
      v358 = v340 & (8 * (v357 & v337));
      STACK[0x3CA8] = v358;
      v359 = 2 * (v358 & v324);
      STACK[0x2460] = v359;
      v360 = *(v322 + (v359 ^ v357));
      STACK[0x1FF8] = v360;
      STACK[0x3CB8] = *(v323 + v360) ^ (2 * (v333 & *(v323 + v360)));
      v361 = (LODWORD(STACK[0x52C0]) ^ STACK[0x3720]) & STACK[0x635C];
      v362 = (LOBYTE(STACK[0x52C0]) ^ STACK[0x3720]) >> v328;
      STACK[0x2450] = v362;
      v363 = (v361 << v325) ^ v362;
      STACK[0x2718] = v363;
      v364 = STACK[0x3BE0];
      LOBYTE(v360) = *(v323 + *(v322 + (LOBYTE(STACK[0x6AF8]) & (4 * ((LODWORD(STACK[0x3BE0]) & (4 * ((v363 ^ (2 * (v333 & (2 * ((v363 ^ (2 * (v363 & v318))) & v333)) ^ v363 & v318))) & v333)) ^ (v363 ^ (2 * (v363 & v318)))) & v333)) ^ (v363 ^ (2 * (v363 & v318))))));
      v365 = v326 ^ STACK[0x3718];
      v366 = (v326 ^ STACK[0x3718]);
      v367 = STACK[0x3B20];
      STACK[0x2308] = STACK[0x3B20] & v366;
      LODWORD(v366) = (v366 >> v314) ^ ((v367 & v366) << v316);
      LODWORD(v366) = v319 & (4 * ((v366 ^ (2 * (v366 & v318))) & v318)) ^ v366 ^ (2 * (v366 & v318));
      v368 = (8 * (v366 & v318)) & (2 * (v318 & v319)) & STACK[0x671C];
      STACK[0x2848] = v368;
      v369 = *(v322 + (v366 ^ (2 * v368)));
      LODWORD(STACK[0x1DD4]) = ((v351 & (v360 ^ (2 * (v324 & v360)))) >> v316) ^ ((v360 ^ (2 * (v324 & v360))) << v328);
      LOBYTE(v360) = *(v323 + v369) ^ (2 * (v333 & *(v323 + v369)));
      v370 = STACK[0x3CD8];
      LOBYTE(v368) = STACK[0x3CB0];
      STACK[0x24F8] = v326 ^ STACK[0x3CD8];
      v371 = ((v368 & (v326 ^ v370)) << v325) ^ ((v326 ^ v370) >> v328);
      STACK[0x22E8] = v371;
      v372 = v338 & (4 * ((v371 ^ (2 * (v371 & v337))) & v337)) ^ v371 ^ (2 * (v371 & v337));
      LODWORD(v370) = v340 & (8 * (v372 & v337)) & LODWORD(STACK[0x639C]);
      v373 = v360 << v314;
      v374 = v360 & v342;
      STACK[0x27A0] = v372;
      STACK[0x2870] = (2 * v370);
      v375 = *(v322 + ((2 * v370) ^ v372));
      LODWORD(STACK[0x1E34]) = (v374 >> v325) | v373;
      LODWORD(v375) = *(v323 + v375);
      STACK[0x2510] = v333 & v375;
      LODWORD(STACK[0x1E14]) = (((v375 ^ (2 * (v333 & v375))) & v342) >> v325) | ((v375 ^ (2 * (v333 & v375))) << v314);
      LODWORD(v375) = (((v313 ^ STACK[0x3CF0]) & v368) << v325) ^ ((v313 ^ STACK[0x3CF0]) >> v328);
      LODWORD(v375) = v338 & (4 * ((v375 ^ (2 * (v375 & v337))) & v337)) ^ v375 ^ (2 * (v375 & v337));
      v376 = 2 * (v375 & v337);
      STACK[0x21B8] = v376;
      LODWORD(v373) = 8 * (v376 & v324);
      LODWORD(v376) = LOBYTE(STACK[0x6393]);
      v377 = v373 & (2 * (v324 & v376)) ^ v375;
      STACK[0x2018] = v377;
      LOBYTE(v377) = *(v323 + *(v322 + v377));
      LODWORD(v373) = (((v326 ^ STACK[0x3BC0]) & v367) << v316) | ((v326 ^ STACK[0x3BC0]) >> v314);
      LODWORD(STACK[0x1E48]) = (((v377 ^ (2 * (v324 & v377))) & v351) >> v316) ^ ((v377 ^ (2 * (v324 & v377))) << v328);
      LODWORD(v377) = LOBYTE(STACK[0x6AF9]) & (4 * ((v373 ^ (2 * (v373 & v318))) & v318)) ^ v373 ^ (2 * (v373 & v318));
      STACK[0x2390] = v377 & v333;
      LOBYTE(v377) = *(v323 + *(v322 + (LODWORD(STACK[0x3D70]) & (16 * (v377 & v333)) ^ v377)));
      LODWORD(v373) = (((v313 ^ STACK[0x3B78]) & v367) << v316) | ((v313 ^ STACK[0x3B78]) >> v314);
      LODWORD(v373) = v338 & (4 * ((v373 ^ (2 * (v373 & v337))) & v337)) ^ v373 ^ (2 * (v373 & v337));
      v378 = 2 * (v373 & v337);
      STACK[0x2838] = v378;
      v379 = v324 & (2 * (v378 & v324));
      STACK[0x24A0] = v379;
      LODWORD(v376) = *(v323 + *(v322 + (v376 & (4 * v379) ^ v373)));
      STACK[0x1CF0] = (((v377 ^ (2 * (v333 & v377))) & v351) >> v325) | ((v377 ^ (2 * (v333 & v377))) << v314);
      STACK[0x2380] = v376 ^ (2 * (v324 & v376));
      STACK[0x1E38] = (((v376 ^ (2 * (v324 & v376))) & v342) >> v316) + ((v376 ^ (2 * (v324 & v376))) << v328);
      LODWORD(v377) = ((v368 & (v313 ^ STACK[0x3CE0])) << v325) + ((v313 ^ STACK[0x3CE0]) >> v328);
      STACK[0x2990] = v377 ^ (2 * (v377 & v318));
      LOBYTE(v377) = v319 & (4 * ((v377 ^ (2 * (v377 & v318))) & v318)) ^ v377 ^ (2 * (v377 & v318));
      LODWORD(v373) = LOBYTE(STACK[0x6AFB]);
      LOBYTE(v377) = v373 & LOBYTE(STACK[0x6AFA]) & (16 * (v377 & v318)) ^ v377;
      v380 = v326 ^ STACK[0x3CE8];
      STACK[0x2570] = v380;
      LODWORD(v380) = ((STACK[0x25F0] & v380) << v325) ^ (v380 >> v314);
      v381 = 2 * (v380 & v318);
      STACK[0x2548] = v381;
      LODWORD(v380) = v364 & (4 * ((v381 ^ v380) & v333)) ^ v381 ^ v380;
      v382 = v373 & (8 * (v380 & v333));
      STACK[0x2998] = v382;
      LOBYTE(v382) = v380 ^ (2 * (v382 & v333));
      v383 = *(v322 + v377);
      v384 = *(v322 + v382);
      LODWORD(v382) = *(v323 + *(v322 + LODWORD(STACK[0x3D88])));
      v385 = STACK[0x3CC0];
      v386 = (v385 & v342) >> v316;
      v387 = STACK[0x3CB8];
      v388 = (v387 & v342) >> v316;
      LOBYTE(v384) = *(v323 + v384);
      v389 = *(v323 + v383);
      STACK[0x23C8] = v389;
      STACK[0x2010] = v389 ^ (2 * (v333 & v389));
      v390 = (v389 ^ (2 * (v333 & v389)));
      v391 = (v390 & v342) >> v316;
      LOBYTE(v316) = v384 ^ (2 * (v324 & v384));
      STACK[0x3BE0] = 2 * (v324 & v382);
      v392 = ((2 * (v324 & v382)) ^ v382);
      v393 = v385 << v314;
      v394 = v390 << v314;
      v395 = v392 << v314;
      v396 = v392 & v351;
      v397 = v387 << v328;
      v398 = v316;
      v399 = v316 & v351;
      v400 = v396 >> v325;
      STACK[0x1CF8] = (v399 >> v325) ^ (v398 << v328);
      STACK[0x2440] = v400;
      LODWORD(STACK[0x1ED4]) = v400 + v395;
      STACK[0x2608] = v386;
      LODWORD(STACK[0x1F40]) = v386 + v393;
      LODWORD(STACK[0x1F74]) = v388 ^ v397;
      STACK[0x1D78] = (v391 + v394);
      v401 = *(v0 + 8 * (v1 - 9893));
      STACK[0x2500] = v365;
      STACK[0x2490] = v394;
      STACK[0x2540] = v399;
      STACK[0x3CB0] = v374;
      STACK[0x24C0] = v361;
      STACK[0x24E8] = v383;
      STACK[0x2530] = v367;
      STACK[0x2558] = STACK[0x3D90];
      STACK[0x2878] = v397;
      LODWORD(STACK[0x3848]) = 4;
      return v401();
    }

    else
    {
      v756 = LOBYTE(STACK[0x671A]);
      v757 = v756 ^ STACK[0x3D78];
      v758 = v756;
      v759 = STACK[0x5320];
      v760 = (v756 ^ STACK[0x3D78]) >> STACK[0x5320];
      v761 = LOBYTE(STACK[0x6395]);
      STACK[0x3BE0] = v757;
      v762 = v761;
      v763 = STACK[0x5328];
      v764 = ((v757 & v761) << STACK[0x5328]) | v760;
      v765 = STACK[0x52B8];
      STACK[0x2568] = v764;
      LODWORD(v760) = v764 ^ (2 * (v764 & v765));
      LODWORD(v761) = STACK[0x53C8];
      v766 = STACK[0x53C8] & (4 * (v760 & v765));
      STACK[0x20F8] = v766;
      v767 = v765 & v761;
      v768 = v761;
      v769 = 4 * (v765 & v761);
      v770 = STACK[0x6B9C];
      v771 = STACK[0x4EA8];
      v772 = STACK[0x4EA0];
      LOBYTE(v760) = *(STACK[0x4EA0] + *(STACK[0x4EA8] + (v769 & (16 * ((v766 ^ v760) & v765)) & STACK[0x6B9C] ^ (v766 ^ v760) & (v1 ^ 0x5261))));
      v773 = LOBYTE(STACK[0x4E9D]);
      v774 = LOBYTE(STACK[0x4E9E]);
      STACK[0x3D90] = v774;
      v775 = (v760 ^ (2 * (v773 & v760)));
      v776 = (v775 & v774) >> v763;
      v777 = STACK[0x5338];
      LODWORD(STACK[0x1FA0]) = v776 + (v775 << STACK[0x5338]);
      v778 = LOBYTE(STACK[0x671B]);
      LODWORD(v775) = (((LOBYTE(STACK[0x671B]) ^ STACK[0x3C18]) & LOBYTE(STACK[0x6396])) << v763) | ((LOBYTE(STACK[0x671B]) ^ STACK[0x3C18]) >> v759);
      v779 = v768;
      LODWORD(v775) = v768 & (4 * ((v775 ^ (2 * (v775 & v765))) & v765)) ^ v775 ^ (2 * (v775 & v765));
      LODWORD(v775) = *(v772 + *(v771 + (v769 & (16 * (v775 & v765)) & v770 ^ v775)));
      v780 = v758 ^ STACK[0x3CD0];
      LODWORD(v766) = LOBYTE(STACK[0x4E9F]);
      v781 = LOBYTE(STACK[0x4E9C]);
      STACK[0x2118] = v775 ^ (2 * (v766 & v775));
      v782 = STACK[0x5350];
      LODWORD(STACK[0x1F48]) = (((v775 ^ (2 * (v766 & v775))) & v781) >> STACK[0x5350]) + ((v775 ^ (2 * (v766 & v775))) << v759);
      v783 = v777;
      v784 = ((STACK[0x635B] & v780) << v782) | (v780 >> v777);
      v785 = STACK[0x52D8];
      v786 = 2 * (v784 & STACK[0x52D8]);
      STACK[0x25F8] = v786;
      v787 = LOBYTE(STACK[0x6397]);
      v788 = v787 & (4 * ((v786 ^ v784) & v773)) ^ v786 ^ v784;
      v789 = STACK[0x6BA2];
      STACK[0x2880] = v773 & (2 * (v788 & v773));
      LOBYTE(v788) = *(v772 + *(v771 + (v789 & (8 * (v773 & (2 * (v788 & v773)))) ^ v788)));
      LODWORD(STACK[0x1D74]) = (((v788 ^ (2 * (v773 & v788))) & v781) >> v763) ^ ((v788 ^ (2 * (v773 & v788))) << v759);
      v790 = STACK[0x3758];
      LODWORD(STACK[0x3D88]) = v778;
      v791 = (((v778 ^ v790) & v762) << v763) ^ ((v778 ^ v790) >> v777);
      LODWORD(STACK[0x3D70]) = v779;
      v792 = v779 & (4 * ((v791 ^ (2 * (v791 & v765))) & v765)) ^ v791 ^ (2 * (v791 & v765));
      v793 = v769 & (16 * (v792 & v765));
      v794 = v778 ^ STACK[0x3BF8];
      LODWORD(v777) = LOBYTE(STACK[0x6394]);
      LODWORD(STACK[0x3CC0]) = v777;
      v795 = ((v777 & v794) << v782) + (v794 >> v759);
      v796 = v795 ^ (2 * (v795 & v773));
      v797 = v796 & v773;
      STACK[0x28F8] = v797;
      v798 = (v789 & STACK[0x6BA3]) & (16 * ((v787 & (4 * v797) ^ v796) & v773)) ^ v787 & (4 * v797) ^ v796;
      STACK[0x2500] = v798;
      LOBYTE(v787) = *(v772 + *(v771 + v798));
      v799 = v766;
      v800 = v787 ^ (2 * (v766 & v787));
      v801 = ((v777 & (v758 ^ STACK[0x3708])) << v782) + ((v758 ^ STACK[0x3708]) >> v783);
      v802 = v801 & v765;
      STACK[0x2608] = v802;
      v803 = v779 & (4 * ((v801 ^ (2 * v802)) & v765)) ^ v801 ^ (2 * v802);
      v804 = v767 & (4 * (v803 & v765));
      v805 = v762;
      v806 = (((v758 ^ STACK[0x3CC8]) & v762) << v763) | ((v758 ^ STACK[0x3CC8]) >> v759);
      v807 = v806 ^ (2 * (v806 & v785));
      LODWORD(STACK[0x3D98]) = v793 & v770 ^ v792;
      STACK[0x23B8] = v804;
      v808 = v770 & (4 * v804) ^ v803;
      LODWORD(v804) = STACK[0x53CC];
      STACK[0x3C78] = v807 & v785;
      LODWORD(STACK[0x3B20]) = v804;
      LODWORD(v766) = 4 * (v785 & v804);
      LODWORD(STACK[0x3CB8]) = v766;
      v809 = *(v771 + v808);
      v810 = STACK[0x6BA4];
      v811 = v766 & (16 * ((v804 & (4 * (v807 & v785)) ^ v807) & v785)) & LODWORD(STACK[0x6BA4]) ^ v804 & (4 * (v807 & v785)) ^ v807;
      v812 = v772;
      LOBYTE(v796) = *(v772 + v809) ^ (2 * (v773 & *(v772 + v809)));
      LOBYTE(v811) = *(v772 + *(v771 + v811));
      LODWORD(v809) = STACK[0x52A4];
      LODWORD(v762) = ((STACK[0x635C] & (LODWORD(STACK[0x52A4]) ^ STACK[0x3E40])) << v782) + ((LOBYTE(STACK[0x52A4]) ^ STACK[0x3E40]) >> v759);
      LODWORD(v762) = v762 ^ (2 * (v762 & v785));
      STACK[0x1F00] = ((v800 & v781) >> v763) ^ (v800 << v759);
      v813 = v762 & v785;
      STACK[0x2718] = v813;
      v814 = (4 * (v785 & v804)) & (16 * ((v804 & (4 * v813) ^ v762) & v785)) & v810 ^ v804 & (4 * v813) ^ v762;
      STACK[0x25D8] = v814;
      v815 = *(v771 + v814);
      STACK[0x2590] = v815;
      v816 = *(v772 + v815) ^ (2 * (v799 & *(v772 + v815)));
      LOBYTE(v809) = (((v809 ^ STACK[0x3720]) & STACK[0x636C]) << v763) + ((v809 ^ STACK[0x3720]) >> v783);
      LOBYTE(v809) = v809 ^ (2 * ((v809 ^ (2 * ((v809 ^ (2 * (v809 & v765))) & v765))) & v765));
      v817 = v758 ^ STACK[0x3718];
      v818 = v758;
      STACK[0x2488] = v817;
      v819 = v805;
      LODWORD(v762) = ((v817 & v805) << v763) + (v817 >> v783);
      LODWORD(v762) = v762 ^ (2 * (v762 & v785));
      v820 = STACK[0x3D90];
      LODWORD(STACK[0x1F4C]) = ((v796 & STACK[0x3D90]) >> v782) | (v796 << v783);
      LOBYTE(v796) = STACK[0x6BA1];
      LOBYTE(v758) = STACK[0x6726];
      v821 = v773 & (2 * (v762 & v773));
      STACK[0x3CA0] = v821;
      v822 = (2 * v821);
      STACK[0x2888] = v822;
      v823 = *(v771 + ((16 * ((v822 ^ v762) & v773)) & (2 * (v758 & v796)) ^ (v822 ^ v762)));
      LOBYTE(v796) = STACK[0x6BAB];
      LOBYTE(v822) = STACK[0x6BAB] & LOBYTE(STACK[0x6BAA]) & (16 * (v809 & v765));
      LOBYTE(v804) = *(v812 + v823) ^ (2 * (v799 & *(v812 + v823)));
      LODWORD(v823) = STACK[0x3D88];
      LOBYTE(v805) = STACK[0x3CC0];
      LODWORD(v777) = (((v823 ^ STACK[0x3CD8]) & v805) << v782) | ((v823 ^ STACK[0x3CD8]) >> v759);
      LODWORD(v777) = v777 ^ (2 * (v777 & v765));
      LODWORD(STACK[0x1EF4]) = (((v811 ^ (2 * (v773 & v811))) & v781) >> v763) + ((v811 ^ (2 * (v773 & v811))) << v783);
      LODWORD(STACK[0x1F2C]) = ((v816 & v820) >> v782) + (v816 << v759);
      LODWORD(v822) = *(v812 + *(v771 + (v822 ^ v809)));
      STACK[0x25C0] = v773 & v822;
      v824 = v820;
      LODWORD(STACK[0x1FA4]) = (((v822 ^ (2 * (v773 & v822))) & v820) >> v763) + ((v822 ^ (2 * (v773 & v822))) << v783);
      LODWORD(STACK[0x1F30]) = ((v804 & v781) >> v782) ^ (v804 << v759);
      v825 = STACK[0x56C0] & v770;
      LODWORD(v820) = STACK[0x3D70];
      v826 = STACK[0x3D70] & (4 * (v777 & v765));
      STACK[0x2940] = v826;
      LODWORD(v777) = v826 ^ v777;
      v827 = v765 & (2 * (v777 & v765));
      STACK[0x2610] = v827;
      v828 = v825 & (8 * v827) ^ v777;
      STACK[0x2558] = v828;
      LOBYTE(v828) = *(v812 + *(v771 + v828));
      v829 = v799;
      LODWORD(STACK[0x1F20]) = (((v828 ^ (2 * (v799 & v828))) & v781) >> v763) | ((v828 ^ (2 * (v799 & v828))) << v759);
      LODWORD(v804) = v818;
      v830 = v819;
      LODWORD(v828) = (((v818 ^ STACK[0x3CF0]) & v819) << v763) ^ ((v818 ^ STACK[0x3CF0]) >> v783);
      v831 = v828 & v785;
      STACK[0x26E8] = v831;
      v832 = STACK[0x3B20];
      LODWORD(v828) = LODWORD(STACK[0x3B20]) & (4 * ((v828 ^ (2 * v831)) & v785)) ^ v828 ^ (2 * v831);
      LOBYTE(v831) = STACK[0x6BAC];
      STACK[0x3730] = v828 & v785;
      v833 = STACK[0x3CB8];
      LOBYTE(v828) = *(v812 + *(v771 + (LODWORD(STACK[0x3CB8]) & (16 * (v828 & v785)) & v831 ^ v828)));
      LODWORD(v831) = (((v823 ^ STACK[0x3BC0]) & v805) << v782) + ((v823 ^ STACK[0x3BC0]) >> v759);
      v834 = 2 * (v831 & v765);
      STACK[0x2990] = v834;
      LODWORD(v831) = v834 ^ v831;
      LODWORD(v819) = v829;
      v835 = 2 * (v831 & v829);
      STACK[0x2790] = v835;
      LOBYTE(v831) = *(v812 + *(v771 + (v831 ^ (2 * ((v796 & (8 * ((v831 ^ (2 * (v835 & v819))) & v819)) ^ v835) & v819)))));
      LODWORD(STACK[0x1FEC]) = (((v828 ^ (2 * (v773 & v828))) & v824) >> v782) | ((v828 ^ (2 * (v773 & v828))) << v783);
      v836 = (v831 ^ (2 * (v819 & v831)));
      STACK[0x25A8] = v836 & v781;
      STACK[0x1FA8] = ((v836 & v781) >> v763) + (v836 << v759);
      LODWORD(v836) = v804 ^ STACK[0x3B78];
      v837 = (v804 ^ STACK[0x3B78]) >> v783;
      STACK[0x3CB0] = v837;
      LODWORD(v836) = ((v836 & v830) << v763) + v837;
      LODWORD(v835) = v832;
      v838 = v832 & (4 * ((v836 ^ (2 * (v836 & v785))) & v785)) ^ v836 ^ (2 * (v836 & v785));
      LODWORD(v836) = (((v804 ^ STACK[0x3CE0]) & v805) << v782) | ((v804 ^ STACK[0x3CE0]) >> v759);
      v839 = (v836 ^ (2 * (v836 & v765))) & v765;
      STACK[0x28C0] = v839;
      LODWORD(v839) = (v836 ^ (2 * v839)) & v765;
      STACK[0x28F0] = v820 & (4 * ((v836 ^ (2 * v839)) & v765));
      LOBYTE(v836) = v836 ^ (2 * (LODWORD(STACK[0x639C]) & (2 * (v820 & (4 * ((v836 ^ (2 * v839)) & v765)) & v765)) ^ v839));
      v840 = v785 & (2 * (v838 & v785));
      v841 = v810 & STACK[0x6BB0];
      STACK[0x26D0] = v840;
      STACK[0x26B0] = v838;
      v842 = v841 & (8 * v840) ^ v838;
      STACK[0x2340] = v842;
      LOBYTE(v842) = *(v812 + *(v771 + v842));
      LOBYTE(v842) = v842 ^ (2 * (v773 & v842));
      LOBYTE(v836) = *(v812 + *(v771 + v836));
      STACK[0x1D68] = (((v836 ^ (2 * (v773 & v836))) & v824) >> v763) | ((v836 ^ (2 * (v773 & v836))) << v759);
      LODWORD(v836) = v823 ^ STACK[0x3CE8];
      v843 = (v823 ^ STACK[0x3CE8]) >> v759;
      STACK[0x24A8] = v830;
      LODWORD(v836) = ((v836 & v830) << v763) ^ v843;
      LODWORD(v836) = v835 & (4 * ((v836 ^ (2 * (v836 & v785))) & v785)) ^ v836 ^ (2 * (v836 & v785));
      LODWORD(v820) = *(v812 + *(v771 + LODWORD(STACK[0x3D98])));
      LOBYTE(v836) = *(v812 + *(v771 + (v833 & (16 * (v836 & v785)) & v810 ^ v836)));
      STACK[0x26A8] = v819 & v820;
      v844 = (v820 ^ (2 * (v819 & v820)));
      v845 = (v842 & v824) >> v782;
      STACK[0x1DA0] = (((v836 ^ (2 * (v819 & v836))) & v781) >> v782) + ((v836 ^ (2 * (v819 & v836))) << v783);
      LODWORD(STACK[0x3D98]) = v1 ^ 0x701F;
      STACK[0x2280] = v844 << v783;
      LODWORD(STACK[0x1FE4]) = ((v844 & v824) >> v782) | (v844 << v783);
      STACK[0x2600] = v845;
      STACK[0x1D98] = v845 ^ (v842 << v783);
      v846 = *(v0 + 8 * (v1 - 9893));
      LODWORD(STACK[0x3848]) = 5;
      return v846();
    }
  }

  else
  {
    if (LODWORD(STACK[0x3848]) <= 7u)
    {
      if (v229 == 5)
      {
        return sub_100DD1E28();
      }

      if (v229 == 6)
      {
        v231 = LOBYTE(STACK[0x671B]);
        v232 = STACK[0x5320];
        v233 = STACK[0x6396];
        v234 = STACK[0x5328];
        v235 = (((v231 ^ STACK[0x3D78]) & LOBYTE(STACK[0x6396])) << STACK[0x5328]) | ((v231 ^ STACK[0x3D78]) >> STACK[0x5320]);
        v236 = STACK[0x52D8];
        LODWORD(STACK[0x3D98]) = v235 ^ (2 * (v235 & STACK[0x52D8]));
        v237 = LOBYTE(STACK[0x671A]);
        v238 = STACK[0x5338];
        v239 = (v237 ^ STACK[0x3C18]) >> STACK[0x5338];
        LOBYTE(v235) = v233 & (v237 ^ STACK[0x3C18]);
        STACK[0x2480] = v239;
        v240 = ((v235 << v234) + v239) ^ (2 * (((v235 << v234) + v239) & v236));
        v241 = STACK[0x53CC];
        v242 = v240 & v236;
        STACK[0x3C70] = v242;
        LODWORD(STACK[0x3D90]) = v236 & v241;
        v243 = v241 & (4 * v242) ^ v240;
        v244 = STACK[0x4EA8];
        v245 = STACK[0x6B74];
        LODWORD(STACK[0x3B08]) = STACK[0x6B74];
        v246 = STACK[0x4EA0];
        v247 = *(STACK[0x4EA0] + *(v244 + ((4 * (v236 & v241)) & (16 * (v243 & v236)) & v245 ^ v243)));
        v248 = LOBYTE(STACK[0x4E9D]);
        STACK[0x3D88] = v247 ^ (2 * (v248 & v247));
        v249 = STACK[0x3758];
        v250 = (v237 ^ BYTE1(STACK[0x3758]));
        v251 = v250 >> v232;
        v252 = STACK[0x5350];
        v253 = LOBYTE(STACK[0x635B]) & v250;
        STACK[0x2020] = v253;
        v254 = STACK[0x52B8];
        LODWORD(v251) = ((v253 << v252) | v251) ^ (2 * (((v253 << v252) | v251) & LODWORD(STACK[0x52B8])));
        LODWORD(v253) = STACK[0x52B8] & LODWORD(STACK[0x53C8]);
        v255 = STACK[0x53C8];
        LODWORD(v251) = LODWORD(STACK[0x53C8]) & (4 * (v251 & LODWORD(STACK[0x52B8]))) ^ v251;
        v256 = 4 * v253;
        LODWORD(STACK[0x3B00]) = 4 * v253;
        v257 = STACK[0x6B78];
        LODWORD(STACK[0x3AF0]) = STACK[0x6B78];
        LODWORD(v251) = *(v246 + *(v244 + ((4 * v253) & (16 * (v251 & v254)) & v257 ^ v251)));
        v258 = LOBYTE(STACK[0x4E9F]);
        STACK[0x3D70] = v251 ^ (2 * (v258 & v251));
        v259 = LOBYTE(STACK[0x6394]);
        LODWORD(v251) = (((v231 ^ v249) & v259) << v252) | ((v231 ^ v249) >> v238);
        LODWORD(v251) = v251 ^ (2 * (v251 & v236));
        v260 = 2 * (v251 & v236);
        v261 = (STACK[0x6397] & LOBYTE(STACK[0x6B7D]));
        STACK[0x3CA0] = v260;
        v262 = v261 & v248 & (8 * ((v251 ^ (2 * (v260 & v248))) & v248));
        STACK[0x28D8] = v262;
        STACK[0x3CC0] = v251 ^ (2 * (v262 ^ v260 & v248));
        v263 = STACK[0x3E40];
        v264 = (v237 ^ BYTE3(STACK[0x3E40]));
        v265 = LOBYTE(STACK[0x6395]);
        STACK[0x23F0] = v265 & v264;
        LODWORD(v264) = ((v265 & v264) << v234) ^ (v264 >> v232);
        LODWORD(v264) = v255 & (4 * ((v264 ^ (2 * (v264 & v254))) & v254)) ^ v264 ^ (2 * (v264 & v254));
        v266 = 2 * ((8 * (v264 & v254)) & (2 * v253) & STACK[0x639C]);
        STACK[0x25E0] = v266;
        LODWORD(v266) = *(v246 + *(v244 + (v266 ^ v264)));
        STACK[0x3CB8] = v266 ^ (2 * (v248 & v266));
        v267 = (v231 ^ BYTE2(v263));
        STACK[0x2498] = v259 & v267;
        LODWORD(v267) = ((v259 & v267) << v252) + (v267 >> v232);
        LODWORD(STACK[0x3B20]) = v267 ^ (2 * (v267 & v236));
        LODWORD(v267) = ((v265 & (v237 ^ BYTE1(v263))) << v234) | ((v237 ^ BYTE1(v263)) >> v238);
        STACK[0x2878] = 2 * (v267 & v254);
        LOBYTE(v264) = (2 * (v267 & v254)) ^ v267;
        LODWORD(v267) = LOBYTE(STACK[0x6393]);
        LODWORD(v264) = *(v246 + *(v244 + (v267 & LOBYTE(STACK[0x6B7E]) & (16 * ((v267 & (4 * (v264 & v258)) ^ v264) & v258)) ^ v267 & (4 * (v264 & v258)) ^ v264)));
        STACK[0x3AE8] = v264 ^ (2 * (v258 & v264));
        LODWORD(v264) = ((STACK[0x635C] & (LODWORD(STACK[0x52A4]) ^ v263)) << v252) ^ ((LOBYTE(STACK[0x52A4]) ^ v263) >> v232);
        v268 = 2 * (v264 & v254);
        STACK[0x2570] = v268;
        LODWORD(v264) = v267 & (4 * ((v268 ^ v264) & v258)) ^ v268 ^ v264;
        v269 = LOBYTE(STACK[0x6727]) & (4 * (v264 & v258));
        LODWORD(v268) = LODWORD(STACK[0x52C0]) ^ STACK[0x3720];
        v270 = STACK[0x636C] & v268;
        STACK[0x24E8] = v270;
        LODWORD(v268) = (v270 << v234) ^ (v268 >> v238);
        STACK[0x2450] = v269;
        LOBYTE(v267) = v267 & (4 * v269) ^ v264;
        LODWORD(v264) = v241 & (4 * ((v268 ^ (2 * (v268 & v236))) & v236)) ^ v268 ^ (2 * (v268 & v236));
        LODWORD(v242) = 4 * (v236 & v241);
        v271 = STACK[0x3B08];
        LOBYTE(v267) = *(v246 + *(v244 + v267));
        LODWORD(v264) = *(v246 + *(v244 + (v242 & (16 * (v264 & v236)) & STACK[0x3B08] ^ v264)));
        v272 = v267 ^ (2 * (v248 & v267));
        STACK[0x3AD8] = v264 ^ (2 * (v248 & v264));
        v273 = STACK[0x3718];
        LODWORD(STACK[0x3A68]) = v231;
        LODWORD(v273) = v231 ^ v273;
        v274 = v273 >> v238;
        STACK[0x2550] = v274;
        LODWORD(v273) = ((v273 & v259) << v252) | v274;
        LODWORD(STACK[0x3AE0]) = v255;
        LODWORD(v273) = v255 & (4 * ((v273 ^ (2 * (v273 & v254))) & v254)) ^ v273 ^ (2 * (v273 & v254));
        LOBYTE(v273) = *(v246 + *(v244 + (v256 & (16 * (v273 & v254)) & v257 ^ v273)));
        LOBYTE(v268) = v273 ^ (2 * (v258 & v273));
        v275 = STACK[0x3CD8];
        v276 = v237 ^ STACK[0x3CD8];
        STACK[0x24D0] = v276;
        LODWORD(v275) = ((v276 & v265) << v234) | ((v237 ^ v275) >> v232);
        LODWORD(v276) = v275 ^ (2 * (v275 & v236));
        v277 = (v231 ^ STACK[0x3CF0]);
        STACK[0x23D0] = v277 & v259;
        LODWORD(v277) = ((v277 & v259) << v252) + (v277 >> v232);
        LODWORD(v277) = v255 & (4 * ((v277 ^ (2 * (v277 & v254))) & v254)) ^ v277 ^ (2 * (v277 & v254));
        v278 = v254 & (2 * (v277 & v254));
        STACK[0x2180] = v278;
        v279 = (2 * v278);
        STACK[0x2470] = v279;
        LODWORD(v269) = v241 & (4 * (STACK[0x3D98] & v236)) ^ LODWORD(STACK[0x3D98]);
        LOBYTE(v277) = LOBYTE(STACK[0x6B7F]) & (4 * (v279 & v258)) ^ v277;
        v280 = (8 * (v269 & v236)) & (2 * LODWORD(STACK[0x3D90]));
        STACK[0x2840] = v280;
        LODWORD(STACK[0x3D98]) = v1 ^ 0x701F;
        v281 = (v280 & v248) << ((v1 ^ 0x1F) + 0x80);
        STACK[0x2350] = v281;
        LOBYTE(v277) = *(v246 + *(v244 + v277));
        LODWORD(v281) = *(v246 + *(v244 + (v281 ^ v269)));
        STACK[0x2110] = v258 & v281;
        v282 = (v281 ^ (2 * (v258 & v281)));
        v283 = LOBYTE(STACK[0x4E9C]);
        LODWORD(STACK[0x1E84]) = ((v283 & v282) >> v252) | (v282 << v232);
        v284 = LOBYTE(STACK[0x4E9E]);
        LODWORD(STACK[0x1EF0]) = ((STACK[0x3D88] & v284) >> v234) | (STACK[0x3D88] << v238);
        v285 = *(v244 + STACK[0x3CC0]);
        LODWORD(STACK[0x1E2C]) = ((STACK[0x3D70] & v284) >> v252) ^ (STACK[0x3D70] << v238);
        v286 = *(v246 + v285);
        STACK[0x26B8] = v248 & v286;
        LODWORD(STACK[0x1F8C]) = (((v286 ^ (2 * (v248 & v286))) & v283) >> v234) + ((v286 ^ (2 * (v248 & v286))) << v232);
        v287 = STACK[0x3B20];
        STACK[0x25B0] = v241 & (4 * (STACK[0x3B20] & v236));
        v288 = *(v244 + (v242 & (16 * ((v241 & (4 * (v287 & v236)) ^ v287) & v236)) & v271 ^ (v241 & (4 * (v287 & v236)) ^ v287)));
        LODWORD(STACK[0x1CB4]) = ((STACK[0x3CB8] & v283) >> v252) + (STACK[0x3CB8] << v232);
        LODWORD(v288) = *(v246 + v288);
        STACK[0x2778] = v258 & v288;
        LODWORD(STACK[0x1F58]) = (((v288 ^ (2 * (v258 & v288))) & v284) >> v234) ^ ((v288 ^ (2 * (v258 & v288))) << v238);
        LODWORD(STACK[0x1FB4]) = ((STACK[0x3AE8] & v283) >> v252) ^ (STACK[0x3AE8] << v238);
        LODWORD(STACK[0x1CEC]) = ((v272 & v284) >> v234) + (v272 << v232);
        LODWORD(STACK[0x1D34]) = ((STACK[0x3AD8] & v283) >> v252) | (STACK[0x3AD8] << v238);
        v289 = ((v268 & v284) >> v234) | (v268 << v232);
        LODWORD(v276) = v241 & (4 * (v276 & v236)) ^ v276;
        v290 = (v277 ^ (2 * (v258 & v277)));
        STACK[0x24B8] = v290 & v283;
        LODWORD(STACK[0x1F78]) = ((v290 & v283) >> v234) | (v290 << v238);
        LODWORD(v290) = (((v237 ^ STACK[0x3BC0]) & v265) << v234) + ((v237 ^ STACK[0x3BC0]) >> v238);
        LODWORD(v290) = v290 ^ (2 * (v290 & v236));
        v291 = v290 & v236;
        STACK[0x2718] = v291;
        v292 = v241 & (4 * v291);
        STACK[0x2560] = v292;
        LODWORD(v290) = *(v246 + *(v244 + (v242 & (16 * ((v292 ^ v290) & v236)) & v271 ^ (v292 ^ v290))));
        v293 = v290 ^ (2 * (v258 & v290));
        STACK[0x1C90] = v293;
        STACK[0x1E90] = ((v293 & v284) >> v252) | (v293 << v238);
        v294 = STACK[0x3A68];
        LODWORD(v293) = LODWORD(STACK[0x3A68]) ^ STACK[0x3B78];
        v295 = (LODWORD(STACK[0x3A68]) ^ STACK[0x3B78]);
        STACK[0x2548] = v259;
        LODWORD(v293) = ((v293 & v259) << v252) + (v295 >> v238);
        LODWORD(v293) = v241 & (4 * ((v293 ^ (2 * (v293 & v236))) & v236)) ^ v293 ^ (2 * (v293 & v236));
        LODWORD(v295) = v242 & (16 * (v293 & v236)) & v271 ^ v293;
        v296 = (v237 ^ STACK[0x3CE0]) >> v232;
        v297 = ((v237 ^ STACK[0x3CE0]) & v265) << v234;
        STACK[0x2458] = v297;
        LODWORD(v297) = (v297 + v296) ^ (2 * ((v297 + v296) & v254));
        LODWORD(v297) = LODWORD(STACK[0x3AE0]) & (4 * (v297 & v254)) ^ v297;
        v298 = v297 & v254;
        STACK[0x3590] = v298;
        v299 = *(v244 + (STACK[0x3B00] & (16 * v298) & LODWORD(STACK[0x3AF0]) ^ v297));
        v300 = *(v246 + v299) ^ (2 * (v248 & *(v246 + v299)));
        STACK[0x2578] = v300;
        STACK[0x1DD8] = ((v283 & v300) >> v234) + (v300 << v232);
        LODWORD(v300) = v294 ^ STACK[0x3CE8];
        v301 = (v294 ^ STACK[0x3CE8]);
        STACK[0x2288] = v265;
        LODWORD(v300) = ((v300 & v265) << v234) ^ (v301 >> v232);
        v302 = (v300 ^ (2 * ((v300 ^ (2 * (v300 & v236))) & v236))) & v236;
        LODWORD(v301) = STACK[0x6728] & LODWORD(STACK[0x6B80]) & (8 * ((v300 ^ (2 * v302)) & v236)) ^ v302;
        v303 = STACK[0x3D90] & (4 * (v276 & v236));
        v304 = *(v244 + (v300 ^ (2 * v301)));
        STACK[0x2390] = v304;
        v305 = (*(v246 + v304) ^ (2 * (v258 & *(v246 + v304))));
        STACK[0x1E00] = ((v305 & v284) >> v252) | (v305 << v238);
        STACK[0x25A8] = v303;
        v306 = (2 * v303);
        STACK[0x24F0] = v306;
        v307 = v276 ^ (2 * (v306 & v248));
        STACK[0x2188] = v307;
        v308 = *(v246 + *(v244 + v307));
        STACK[0x2608] = v248 & v308;
        STACK[0x2438] = v308;
        v309 = (v308 ^ (2 * (v248 & v308)));
        LOBYTE(v242) = *(v246 + *(v244 + v295));
        v310 = (v242 ^ (2 * (v248 & v242)));
        STACK[0x2530] = v309 << v232;
        LODWORD(STACK[0x1C9C]) = ((v309 & v284) >> v252) ^ (v309 << v232);
        STACK[0x1C80] = v310 << v232;
        STACK[0x1CC0] = ((v310 & v283) >> v234) ^ (v310 << v232);
        STACK[0x2508] = v299;
        v311 = *(v0 + 8 * (v1 - 9893));
        LODWORD(STACK[0x3848]) = 7;
        LODWORD(STACK[0x1FB0]) = v289;
        STACK[0x2930] = v289;
      }

      else
      {
        v572 = LOBYTE(STACK[0x671B]);
        LOBYTE(v218) = v572 ^ STACK[0x3D78];
        v573 = STACK[0x5338];
        v574 = LOBYTE(STACK[0x6394]);
        v575 = STACK[0x5350];
        v576 = ((v218 & v574) << STACK[0x5350]) ^ (v218 >> STACK[0x5338]);
        v577 = STACK[0x52B8];
        v578 = ((v576 & STACK[0x52B8]) << (v1 + 99)) ^ v576;
        v579 = LOBYTE(STACK[0x4E9F]);
        v580 = v579 & (2 * (v578 & STACK[0x52B8]));
        v581 = LOBYTE(STACK[0x6B63]);
        LODWORD(STACK[0x3CC0]) = v581;
        v582 = v579 & v581 & (8 * ((v578 ^ (2 * v580)) & v579));
        STACK[0x2220] = v582;
        v583 = STACK[0x4EA8];
        v584 = STACK[0x4EA0];
        v585 = *(STACK[0x4EA0] + *(STACK[0x4EA8] + (v578 ^ (2 * (v582 ^ v580)))));
        STACK[0x3D70] = v585 ^ (2 * (v579 & v585));
        v586 = LOBYTE(STACK[0x671A]);
        v587 = v586 ^ STACK[0x3C18];
        v588 = STACK[0x5320];
        v589 = (v586 ^ STACK[0x3C18]) >> STACK[0x5320];
        STACK[0x2998] = v574;
        v590 = ((v587 & v574) << v575) ^ v589;
        LODWORD(v582) = STACK[0x52D8];
        v591 = v590 & STACK[0x52D8];
        STACK[0x3B48] = v591;
        STACK[0x3CB0] = v590;
        v592 = STACK[0x53CC];
        LODWORD(v590) = *(v584 + *(v583 + ((16 * ((v592 & (4 * ((v590 ^ (2 * v591)) & v582)) ^ v590 ^ (2 * v591)) & v582)) & (4 * (v582 & v592)) & STACK[0x6B64] ^ (v592 & (4 * ((v590 ^ (2 * v591)) & v582)) ^ v590 ^ (2 * v591)))));
        v593 = LOBYTE(STACK[0x4E9D]);
        STACK[0x3CB8] = v590 ^ (2 * (v593 & v590));
        v594 = (v572 ^ STACK[0x3CD0]) >> v573;
        v595 = STACK[0x5328];
        v596 = LOBYTE(STACK[0x6395]);
        LOBYTE(v590) = v596 & (v572 ^ STACK[0x3CD0]);
        v597 = STACK[0x6395];
        LODWORD(STACK[0x3D88]) = v596;
        v598 = LOBYTE(STACK[0x6393]);
        LODWORD(STACK[0x3C70]) = v598;
        LODWORD(v590) = v598 & (4 * ((((v590 << v595) + v594) ^ (2 * (((v590 << v595) + v594) & v577))) & v579)) ^ ((v590 << v595) + v594) ^ (2 * (((v590 << v595) + v594) & v577));
        LODWORD(STACK[0x3CA0]) = v590;
        v599 = v590 & v579;
        STACK[0x2868] = v599;
        LODWORD(STACK[0x3C20]) = (16 * v599) & (4 * (v579 & v598));
        LODWORD(v599) = (((v586 ^ STACK[0x3758]) & v574) << v575) | ((v586 ^ STACK[0x3758]) >> v588);
        LODWORD(v594) = v599 ^ (2 * (v599 & v577));
        LOBYTE(v599) = v577 & STACK[0x53C8];
        v600 = STACK[0x53C8];
        LODWORD(STACK[0x3AF0]) = STACK[0x53C8];
        LODWORD(v574) = 4 * (v577 & v600);
        v601 = STACK[0x6B68];
        LODWORD(STACK[0x3B08]) = STACK[0x6B68];
        LODWORD(v594) = *(v584 + *(v583 + (v574 & (16 * ((v600 & (4 * (v594 & v577)) ^ v594) & v577)) & v601 ^ (v600 & (4 * (v594 & v577)) ^ v594))));
        STACK[0x3BC8] = v594 ^ (2 * (v593 & v594));
        LODWORD(v594) = ((v597 & (v572 ^ STACK[0x3BF8])) << v595) | ((v572 ^ STACK[0x3BF8]) >> v573);
        v602 = v594 ^ (2 * (v594 & v582));
        STACK[0x25B8] = v602;
        LODWORD(v594) = v592 & (4 * (v602 & v582)) ^ v602;
        v603 = 2 * (v594 & v582);
        STACK[0x3BE0] = v603;
        v604 = v603 & v593;
        v605 = LOBYTE(STACK[0x6397]);
        LODWORD(STACK[0x3B20]) = v605;
        STACK[0x25F0] = v604;
        v606 = v605 & (4 * v604);
        STACK[0x2798] = v606;
        v607 = v594 ^ (2 * (v606 & v593));
        STACK[0x2588] = v607;
        LODWORD(v594) = *(v584 + *(v583 + v607));
        STACK[0x3B00] = v594 ^ (2 * (v593 & v594));
        v608 = LOBYTE(STACK[0x635B]);
        LODWORD(v594) = (((v586 ^ STACK[0x3708]) & v608) << v575) + ((v586 ^ STACK[0x3708]) >> v573);
        LODWORD(v594) = v592 & (4 * ((v594 ^ (2 * (v594 & v582))) & v582)) ^ v594 ^ (2 * (v594 & v582));
        LODWORD(v607) = 2 * (v582 & v592);
        LODWORD(STACK[0x3D98]) = v607;
        v609 = v607 & (8 * (v594 & v582));
        STACK[0x2528] = v609;
        LODWORD(v594) = *(v584 + *(v583 + (v594 ^ (2 * (v609 & v593)))));
        STACK[0x3AE8] = v594 ^ (2 * (v579 & v594));
        v610 = STACK[0x6396];
        LODWORD(v594) = ((v586 ^ STACK[0x3CC8]) >> v588) ^ (((v586 ^ STACK[0x3CC8]) & LOBYTE(STACK[0x6396])) << v595);
        STACK[0x23B8] = v577 & (2 * ((v594 ^ (2 * (v594 & v577))) & v577));
        v611 = v577 & (2 * ((v594 ^ (2 * (v594 & v577))) & v577)) ^ v594 & v577;
        LOBYTE(v594) = v594 ^ (2 * ((8 * ((v594 ^ (2 * v611)) & v577)) & (2 * v599) & LOBYTE(STACK[0x639C]) ^ v611));
        LODWORD(v599) = STACK[0x52A4];
        v612 = LODWORD(STACK[0x52A4]) ^ STACK[0x3E40];
        v613 = STACK[0x6388];
        STACK[0x28A0] = v612;
        v614 = ((v613 & v612) << v595) | (v612 >> v573);
        v615 = (v614 ^ (2 * (v614 & v582))) & v582;
        STACK[0x25A0] = v615;
        v616 = (v614 ^ (2 * v615)) & v582;
        LODWORD(v615) = STACK[0x638C];
        LODWORD(STACK[0x3D90]) = STACK[0x638C];
        STACK[0x2800] = v582 & v592 & (4 * ((v614 ^ (2 * v616)) & v582));
        LOBYTE(v594) = *(v584 + *(v583 + v594));
        v617 = *(v584 + *(v583 + (v614 ^ (2 * (v615 & (2 * (v582 & v592 & (4 * ((v614 ^ (2 * v616)) & v582)))) ^ v616)))));
        v618 = v594 ^ (2 * (v579 & v594));
        LOBYTE(v614) = v617 ^ (2 * (v593 & v617));
        LODWORD(v599) = (((v599 ^ STACK[0x3720]) & STACK[0x6380]) << v575) + ((v599 ^ STACK[0x3720]) >> v588);
        v619 = v599 ^ (2 * (v599 & v577));
        v620 = STACK[0x3CC0] & LOBYTE(STACK[0x6B6D]);
        STACK[0x3658] = v619;
        STACK[0x2448] = v577 & (2 * (v619 & v577));
        LOBYTE(v605) = v599 ^ (2 * (v599 & v577)) ^ (2 * (v577 & (2 * ((v599 ^ (2 * (v599 & v577))) & v577))));
        LODWORD(v619) = (((v586 ^ STACK[0x3718]) & v608) << v575) + ((v586 ^ STACK[0x3718]) >> v588);
        v621 = v600 & (4 * ((v619 ^ (2 * (v619 & v577))) & v577)) ^ v619 ^ (2 * (v619 & v577));
        LODWORD(v615) = v574 & (16 * (v621 & v577));
        v622 = LOBYTE(STACK[0x4E9E]);
        LODWORD(STACK[0x1CCC]) = ((STACK[0x3D70] & v622) >> v595) | (STACK[0x3D70] << v573);
        v623 = LOBYTE(STACK[0x4E9C]);
        LODWORD(STACK[0x1D1C]) = ((v623 & STACK[0x3CB8]) >> v575) | (STACK[0x3CB8] << v588);
        LODWORD(v594) = STACK[0x3C70];
        STACK[0x3D70] = (STACK[0x3C20] & LODWORD(STACK[0x3C70])) ^ LODWORD(STACK[0x3CA0]);
        LODWORD(STACK[0x1DEC]) = ((STACK[0x3BC8] & v623) >> v575) ^ (STACK[0x3BC8] << v573);
        LODWORD(STACK[0x1D2C]) = ((STACK[0x3B00] & v623) >> v575) + (STACK[0x3B00] << v573);
        LODWORD(STACK[0x1F7C]) = ((STACK[0x3AE8] & v622) >> v595) | (STACK[0x3AE8] << v588);
        v624 = v618 & v622;
        STACK[0x3BC8] = v624;
        LODWORD(STACK[0x1EAC]) = (v624 >> v575) | (v618 << v588);
        LODWORD(STACK[0x1F38]) = ((v614 & v623) >> v595) + (v614 << v573);
        LODWORD(v619) = v615 & LODWORD(STACK[0x3B08]);
        STACK[0x2268] = v621;
        LOBYTE(v619) = *(v584 + *(v583 + (v619 ^ v621)));
        LODWORD(v624) = *(v584 + *(v583 + (v620 & (16 * (v605 & v579)) ^ v605)));
        STACK[0x2600] = v579 & v624;
        LODWORD(STACK[0x1F5C]) = (((v624 ^ (2 * (v579 & v624))) & v622) >> v575) + ((v624 ^ (2 * (v579 & v624))) << v588);
        LODWORD(STACK[0x1E5C]) = (((v619 ^ (2 * (v593 & v619))) & v623) >> v595) ^ ((v619 ^ (2 * (v593 & v619))) << v573);
        LODWORD(v619) = (((v572 ^ STACK[0x3CD8]) & v610) << v595) | ((v572 ^ STACK[0x3CD8]) >> v573);
        LODWORD(v619) = v592 & (4 * ((v619 ^ (2 * (v619 & v582))) & v582)) ^ v619 ^ (2 * (v619 & v582));
        LOBYTE(v624) = STACK[0x3B20] & LOBYTE(STACK[0x6B6E]);
        STACK[0x2840] = 2 * (v619 & v582);
        LODWORD(v619) = *(v584 + *(v583 + (v624 & (8 * ((2 * (v619 & v582)) & v593)) ^ v619)));
        v625 = v619 ^ (2 * (v579 & v619));
        STACK[0x2438] = v625;
        LODWORD(STACK[0x1FB8]) = ((v625 & v623) >> v575) + (v625 << v588);
        v626 = STACK[0x2998];
        v627 = (((v586 ^ STACK[0x3CF0]) & STACK[0x2998]) << v575) | ((v586 ^ STACK[0x3CF0]) >> v588);
        v628 = v627 & v582;
        STACK[0x2488] = v627;
        STACK[0x2580] = v628;
        LODWORD(v628) = v592 & (4 * ((v627 ^ (2 * v628)) & v582)) ^ v627 ^ (2 * v628);
        LODWORD(v627) = (((v572 ^ STACK[0x3BC0]) & LODWORD(STACK[0x3D88])) << v595) + ((v572 ^ STACK[0x3BC0]) >> v573);
        LODWORD(v627) = v627 ^ (2 * (v627 & v577));
        v629 = 2 * (v627 & v577);
        STACK[0x2950] = v629;
        LODWORD(v627) = v627 ^ (2 * (v629 & v579));
        v630 = LOBYTE(STACK[0x6B6F]) & (4 * (v627 & v579));
        STACK[0x3C20] = v630;
        LOBYTE(v627) = v594 & (4 * (v630 & v579)) ^ v627;
        LODWORD(v630) = ((v610 & (v586 ^ STACK[0x3B78])) << v595) ^ ((v586 ^ STACK[0x3B78]) >> v573);
        v631 = v630 ^ (2 * (v630 & v577));
        v632 = STACK[0x3AF0];
        STACK[0x2578] = v631;
        LODWORD(v630) = v632 & (4 * (v631 & v577)) ^ v631;
        v633 = v577 & (2 * (v630 & v577));
        STACK[0x23C0] = v633;
        STACK[0x2458] = v577 & (2 * v633);
        LOBYTE(v627) = *(v584 + *(v583 + v627));
        v634 = *(v583 + ((4 * (v577 & (2 * (v577 & (2 * (v630 & v577)))))) & (2 * (v579 & 0x78)) ^ v630));
        STACK[0x1DC8] = (((v627 ^ (2 * (v593 & v627))) & v622) >> v575) | ((v627 ^ (2 * (v593 & v627))) << v573);
        v635 = (*(v584 + v634) ^ (2 * (v579 & *(v584 + v634))));
        STACK[0x1CB8] = ((v635 & v623) >> v595) ^ (v635 << v588);
        v636 = STACK[0x3CE0];
        STACK[0x2308] = v608;
        STACK[0x2878] = v572 ^ v636;
        LODWORD(v636) = (((v572 ^ v636) & v608) << v575) | ((v572 ^ v636) >> v588);
        v637 = v636 ^ (2 * (v636 & v582));
        STACK[0x2468] = v637;
        LODWORD(v636) = v592 & (4 * (v637 & v582)) ^ v637;
        v638 = v582 & (2 * (v636 & v582));
        LODWORD(v637) = STACK[0x6B70];
        STACK[0x2860] = v638;
        LODWORD(v636) = v637 & (8 * v638) ^ v636;
        LODWORD(v637) = (((v586 ^ STACK[0x3CE8]) & v626) << v575) ^ ((v586 ^ STACK[0x3CE8]) >> v588);
        LODWORD(v638) = (v637 ^ (2 * ((v637 ^ (2 * (v637 & v582))) & v582))) & v582;
        v639 = v637 ^ (2 * v638);
        STACK[0x26E8] = v639;
        v640 = v592 & (4 * (v639 & v582));
        STACK[0x3CA0] = v640;
        LOBYTE(v636) = *(v584 + *(v583 + v636));
        LODWORD(v637) = *(v584 + *(v583 + (v637 ^ (2 * (LODWORD(STACK[0x3D90]) & (2 * (v640 & v582)) ^ v638)))));
        STACK[0x1CA0] = (((v636 ^ (2 * (v593 & v636))) & v623) >> v575) | ((v636 ^ (2 * (v593 & v636))) << v573);
        STACK[0x27B8] = 2 * (v579 & v637);
        v641 = ((2 * (v579 & v637)) ^ v637);
        STACK[0x24A0] = v641 & v622;
        v642 = ((v641 & v622) >> v595) ^ (v641 << v588);
        v643 = STACK[0x3D98] & (8 * (v628 & v582));
        v644 = STACK[0x3D70];
        STACK[0x24E0] = v643;
        v645 = 2 * (v643 & v593);
        STACK[0x2518] = v645;
        LOBYTE(v644) = *(v584 + *(v583 + v644));
        LODWORD(v628) = *(v584 + *(v583 + (v645 ^ v628)));
        v646 = (v644 ^ (2 * (v579 & v644)));
        v647 = v646 << v588;
        v648 = v646 & v622;
        STACK[0x3C70] = 2 * (v593 & v628);
        v649 = ((2 * (v593 & v628)) ^ v628);
        LODWORD(STACK[0x3D98]) = v1 - 12317;
        v650 = (v649 & v622) >> v595;
        STACK[0x25F8] = v648;
        STACK[0x21E8] = v648 >> v595;
        v651 = (v648 >> v595) ^ v647;
        STACK[0x2120] = v650;
        LODWORD(STACK[0x1E64]) = v650 + (v649 << v573);
        v311 = *(v0 + 8 * (v1 - 9893));
        LODWORD(STACK[0x3848]) = 8;
        LODWORD(STACK[0x1FC0]) = v651;
        STACK[0x28F8] = v651;
        STACK[0x1E68] = v642;
        STACK[0x28A8] = v642;
      }

      return v311();
    }

    if (v229 == 8)
    {
      v847 = LOBYTE(STACK[0x671B]);
      v848 = v847 ^ STACK[0x3D78];
      v849 = (v847 ^ STACK[0x3D78]);
      v850 = LOBYTE(STACK[0x6395]);
      LODWORD(STACK[0x3D70]) = v850;
      v851 = STACK[0x5338];
      v852 = STACK[0x5328];
      v853 = ((v848 & v850) << STACK[0x5328]) + (v849 >> STACK[0x5338]);
      v854 = STACK[0x52B8];
      v855 = STACK[0x53C8];
      v856 = STACK[0x53C8] & (4 * ((v853 ^ (2 * (v853 & v854))) & v854)) ^ v853 ^ (2 * (v853 & v854));
      v857 = LOBYTE(STACK[0x671A]);
      v858 = v857 ^ STACK[0x3C18];
      v859 = STACK[0x4EA8];
      v860 = *(STACK[0x4EA8] + (STACK[0x6B3C] & LODWORD(STACK[0x6B34]) & (16 * (v856 & STACK[0x52B8])) ^ v856));
      v861 = STACK[0x4EA0];
      v862 = LOBYTE(STACK[0x4E9D]);
      STACK[0x3BF0] = *(STACK[0x4EA0] + v860) ^ (2 * (v862 & *(STACK[0x4EA0] + v860)));
      v863 = STACK[0x5320];
      STACK[0x2598] = v858;
      v864 = LOBYTE(STACK[0x6396]);
      v865 = v864 & v858;
      STACK[0x25A0] = v865;
      v866 = STACK[0x5350];
      LODWORD(v865) = (v865 << v852) + (v858 >> v863);
      LODWORD(STACK[0x3D98]) = (v1 - 1993286319) & 0x76CEF291;
      v867 = (v865 & v854) << (((v1 + 81) & 0x91) + 0x80);
      STACK[0x2800] = v867;
      LODWORD(v865) = v867 ^ v865;
      v868 = LOBYTE(STACK[0x4E9F]);
      v869 = 2 * (v865 & v868);
      STACK[0x3658] = v869;
      LODWORD(v869) = v869 & v868;
      v870 = v865 ^ (2 * v869);
      STACK[0x2558] = v870;
      v871 = 2 * (v870 & v868);
      STACK[0x3BC8] = v871;
      LODWORD(v865) = *(v861 + *(v859 + (v865 ^ (2 * (LOBYTE(STACK[0x6727]) & (4 * (v871 & v868)) ^ v869)))));
      STACK[0x3D90] = v865 ^ (2 * (v868 & v865));
      v872 = STACK[0x635B];
      LODWORD(v865) = (((v847 ^ STACK[0x3CD0]) & LOBYTE(STACK[0x635B])) << v866) | ((v847 ^ STACK[0x3CD0]) >> v851);
      v873 = STACK[0x52D8];
      LODWORD(v871) = STACK[0x53CC];
      LODWORD(STACK[0x3AE8]) = STACK[0x53CC];
      LODWORD(v865) = v871 & (4 * ((v865 ^ (2 * (v865 & v873))) & v873)) ^ v865 ^ (2 * (v865 & v873));
      LODWORD(v871) = 4 * (v873 & v871);
      LODWORD(STACK[0x3D88]) = v871;
      LODWORD(v869) = v871 & (16 * (v865 & v873));
      LODWORD(v871) = STACK[0x6B40];
      LODWORD(STACK[0x3B00]) = STACK[0x6B40];
      v874 = *(v859 + (v869 & v871 ^ v865));
      v875 = *(v861 + v874) ^ (2 * (v868 & *(v861 + v874)));
      v876 = ((v850 & (v857 ^ STACK[0x3758])) << v852) ^ ((v857 ^ STACK[0x3758]) >> v851);
      STACK[0x2818] = v876;
      LODWORD(v874) = v876 ^ (2 * (v876 & v854));
      STACK[0x3C80] = 2 * (v874 & v854);
      LOBYTE(v874) = v874 ^ (2 * ((2 * (v874 & v854)) & v868));
      LODWORD(v876) = LOBYTE(STACK[0x6B45]);
      LODWORD(v871) = LOBYTE(STACK[0x6393]);
      LODWORD(STACK[0x3CC0]) = v871;
      LODWORD(v871) = v871 & v876;
      LODWORD(STACK[0x3B08]) = v871;
      LOBYTE(v874) = *(v861 + *(v859 + (v871 & (16 * (v874 & v868)) ^ v874)));
      v877 = v874 ^ (2 * (v862 & v874));
      v878 = STACK[0x3E40];
      LODWORD(v871) = LOBYTE(STACK[0x6394]);
      LODWORD(STACK[0x3B20]) = v871;
      LODWORD(v874) = (((v847 ^ BYTE3(v878)) & v871) << v866) ^ ((v847 ^ BYTE3(v878)) >> v863);
      v879 = LOBYTE(STACK[0x6397]);
      LODWORD(v874) = v879 & (4 * ((v874 ^ (2 * (v874 & v873))) & v862)) ^ v874 ^ (2 * (v874 & v873));
      v880 = (LOBYTE(STACK[0x6B46]) & v879);
      LODWORD(STACK[0x3AF0]) = v880;
      STACK[0x2730] = 2 * (v874 & v862);
      LOBYTE(v874) = *(v861 + *(v859 + (v880 & (8 * ((2 * (v874 & v862)) & v862)) ^ v874)));
      v881 = v874 ^ (2 * (v868 & v874));
      LODWORD(v876) = (((v857 ^ STACK[0x3708]) & v872) << v866) + ((v857 ^ STACK[0x3708]) >> v863);
      v882 = (v876 ^ (2 * ((v876 ^ (2 * (v876 & v854))) & v854))) & v854;
      STACK[0x2808] = v876 ^ (2 * v882);
      LODWORD(STACK[0x3AD8]) = v855;
      v883 = 2 * (v854 & v855);
      LODWORD(STACK[0x3CB8]) = v883;
      LOBYTE(v874) = v876 ^ (2 * (v883 & (8 * ((v876 ^ (2 * v882)) & v854)) & LOBYTE(STACK[0x639C]) ^ v882));
      LODWORD(v876) = (((v857 ^ STACK[0x3CC8]) & v864) << v852) | ((v857 ^ STACK[0x3CC8]) >> v851);
      LODWORD(v876) = LOBYTE(STACK[0x6B47]) & (4 * ((v876 ^ (2 * (v876 & v873))) & v873)) ^ v876 ^ (2 * (v876 & v873));
      v884 = LOBYTE(STACK[0x6726]) & (4 * (v876 & v862));
      STACK[0x27E8] = v884;
      LOBYTE(v874) = *(v861 + *(v859 + v874));
      LOBYTE(v883) = v874 ^ (2 * (v862 & v874));
      LOBYTE(v874) = *(v861 + *(v859 + (v879 & (4 * v884) ^ v876)));
      LOBYTE(v884) = v874 ^ (2 * (v862 & v874));
      LODWORD(v874) = ((STACK[0x636C] & (LODWORD(STACK[0x52A4]) ^ v878)) << v852) | ((LOBYTE(STACK[0x52A4]) ^ v878) >> v863);
      v885 = v874 ^ (2 * (v874 & v854));
      STACK[0x2890] = v885;
      v886 = v855 & (4 * (v885 & v854)) ^ v885;
      v887 = v886 & v854;
      STACK[0x2528] = v887;
      v888 = LOBYTE(STACK[0x4E9C]);
      LODWORD(STACK[0x1F08]) = ((STACK[0x3BF0] & v888) >> v866) ^ (STACK[0x3BF0] << v863);
      LODWORD(STACK[0x1D58]) = ((v875 & v888) >> v852) | (v875 << v863);
      v889 = LOBYTE(STACK[0x4E9E]);
      LODWORD(STACK[0x1F1C]) = (v877 << v851) ^ ((v877 & v889) >> v866);
      LODWORD(STACK[0x1EA4]) = ((v881 & v889) >> v866) | (v881 << v851);
      v890 = (v883 & v888);
      STACK[0x26E8] = v890;
      LODWORD(STACK[0x1E78]) = (v890 >> v852) ^ (v883 << v863);
      LODWORD(v887) = (16 * v887) & (4 * (v854 & v855)) & LODWORD(STACK[0x6B38]);
      STACK[0x2470] = v886;
      LODWORD(v887) = *(v861 + *(v859 + (v887 ^ (v855 & (4 * (v885 & v854)) ^ v885))));
      LODWORD(STACK[0x1E98]) = ((v884 & v889) >> v866) | (v884 << v851);
      STACK[0x3AE0] = v887 ^ (2 * (v868 & v887));
      LODWORD(v887) = ((STACK[0x635C] & (LODWORD(STACK[0x52C0]) ^ STACK[0x3720])) << v866) + ((LOBYTE(STACK[0x52C0]) ^ STACK[0x3720]) >> v851);
      v891 = 2 * (v887 & v873);
      STACK[0x3BF0] = v891;
      v892 = v891 ^ v887;
      STACK[0x2570] = v892;
      LODWORD(v887) = v879 & (4 * (v892 & v862)) ^ v892;
      STACK[0x26E0] = v879 & (4 * (v887 & v862));
      LOBYTE(v887) = v879 & (4 * (v879 & (4 * (v887 & v862)) & v862)) ^ v887;
      v893 = v864;
      v894 = (((v847 ^ STACK[0x3718]) & v864) << v852) | ((v847 ^ STACK[0x3718]) >> v863);
      STACK[0x27F0] = v894;
      v895 = STACK[0x3AE8];
      v896 = STACK[0x3AE8] & (4 * ((v894 ^ (2 * (v894 & v873))) & v873)) ^ v894 ^ (2 * (v894 & v873));
      LODWORD(v886) = STACK[0x3B00];
      LODWORD(v892) = STACK[0x3B00] & LODWORD(STACK[0x6B48]);
      v897 = v896 & v873;
      STACK[0x21A0] = v897;
      v898 = v873 & (2 * v897);
      STACK[0x2560] = v898;
      STACK[0x2858] = v896;
      LOBYTE(v892) = *(v861 + *(v859 + (v892 & (8 * v898) ^ v896)));
      LODWORD(STACK[0x1F70]) = (((v892 ^ (2 * (v862 & v892))) & v889) >> v866) | ((v892 ^ (2 * (v862 & v892))) << v851);
      v899 = v872;
      LODWORD(v892) = ((v872 & (v857 ^ STACK[0x3CD8])) << v866) ^ ((v857 ^ STACK[0x3CD8]) >> v851);
      LODWORD(v892) = v892 ^ (2 * (v892 & v854));
      STACK[0x26F8] = 2 * (v892 & v854);
      LODWORD(v892) = *(v861 + *(v859 + (LODWORD(STACK[0x3B08]) & (16 * ((v892 ^ (2 * ((2 * (v892 & v854)) & v868))) & v868)) ^ v892 ^ (2 * ((2 * (v892 & v854)) & v868)))));
      v900 = v892 ^ (2 * (v862 & v892));
      STACK[0x23C0] = v900;
      LODWORD(STACK[0x1D38]) = ((v900 & v888) >> v852) + (v900 << v851);
      v901 = STACK[0x3B20];
      LODWORD(v900) = ((STACK[0x3B20] & (v847 ^ STACK[0x3CF0])) << v866) ^ ((v847 ^ STACK[0x3CF0]) >> v851);
      STACK[0x2750] = 2 * (v900 & v873);
      LOBYTE(v900) = v879 & (4 * (((2 * (v900 & v873)) ^ v900) & v862)) ^ (2 * (v900 & v873)) ^ v900;
      LODWORD(v900) = *(v861 + *(v859 + (STACK[0x3AF0] & LOBYTE(STACK[0x6B4F]) & (16 * (v900 & v862)) ^ v900)));
      v902 = v900 ^ (2 * (v868 & v900));
      STACK[0x2490] = v902;
      LODWORD(STACK[0x1D3C]) = ((v902 & v889) >> v866) ^ (v902 << v863);
      v903 = STACK[0x3CE8];
      LODWORD(v902) = ((STACK[0x3D70] & (v857 ^ BYTE3(v903))) << v852) | ((v857 ^ BYTE3(v903)) >> v863);
      v904 = 2 * (v854 & v902);
      STACK[0x2820] = v904;
      LODWORD(v864) = STACK[0x3CC0];
      LODWORD(v902) = LODWORD(STACK[0x3CC0]) & (4 * ((v904 ^ v902) & v868)) ^ v904 ^ v902;
      v905 = 2 * (v902 & v868);
      STACK[0x25F8] = v905;
      STACK[0x2788] = (8 * (v905 & v868)) & (2 * (v868 & v864));
      LOBYTE(v902) = *(v861 + *(v859 + ((8 * ((2 * (v902 & v868)) & v868)) & (2 * (v868 & v864)) ^ v902)));
      v906 = v893;
      LODWORD(v904) = (((v847 ^ STACK[0x3B78]) & v893) << v852) | ((v847 ^ STACK[0x3B78]) >> v851);
      LODWORD(v904) = LODWORD(STACK[0x3AD8]) & (4 * ((v904 ^ (2 * (v904 & v854))) & v854)) ^ v904 ^ (2 * (v904 & v854));
      v907 = STACK[0x3CB8] & (8 * (v904 & v854)) & v854;
      STACK[0x2600] = v907;
      v908 = *(v859 + (v904 ^ (2 * v907)));
      STACK[0x21D8] = (((v902 ^ (2 * (v862 & v902))) & v889) >> v866) + ((v902 ^ (2 * (v862 & v902))) << v851);
      STACK[0x2008] = v908;
      LOBYTE(v902) = *(v861 + v908) ^ (2 * (v868 & *(v861 + v908)));
      v909 = *(v859 + v887);
      STACK[0x1FC8] = ((v902 & v888) >> v852) | (v902 << v863);
      STACK[0x21B0] = v909;
      LOBYTE(v887) = *(v861 + v909) ^ (2 * (v868 & *(v861 + v909)));
      v910 = ((v899 & (v857 ^ STACK[0x3CE0])) << v866) ^ ((v857 ^ STACK[0x3CE0]) >> v863);
      STACK[0x35D0] = v910;
      LODWORD(v864) = v895;
      LODWORD(v902) = v895 & (4 * ((v910 ^ (2 * (v910 & v873))) & v873)) ^ v910 ^ (2 * (v910 & v873));
      v911 = STACK[0x3D88];
      v912 = v886;
      LOBYTE(v902) = *(v861 + *(v859 + (STACK[0x3D88] & (16 * (v902 & v873)) & v886 ^ v902)));
      LOBYTE(v910) = v902 ^ (2 * (v868 & v902));
      v913 = STACK[0x3D90];
      v914 = (v913 & v889) >> v852;
      v915 = STACK[0x3AE0];
      v916 = (v915 & v888) >> v852;
      v917 = v887;
      v918 = (v888 & v887) >> v852;
      v919 = v910;
      v920 = (v910 & v889) >> v852;
      v921 = v913 << v851;
      v922 = v919 << v851;
      LODWORD(v851) = (((v847 ^ v903) & v901) << v866) + ((v847 ^ v903) >> v851);
      LODWORD(v851) = v851 ^ (2 * (v851 & v873));
      v923 = v864 & (4 * (v851 & v873));
      STACK[0x2918] = v923;
      v924 = v923 ^ v851;
      STACK[0x2580] = v924;
      v925 = *(v859 + (v911 & (16 * (v924 & v873)) & v912 ^ v924));
      STACK[0x1D20] = (v920 + v922);
      LOBYTE(v920) = *(v861 + v925) ^ (2 * (v862 & *(v861 + v925)));
      STACK[0x1EF8] = ((v920 & v888) >> v866) | (v920 << v863);
      STACK[0x2460] = v921;
      LODWORD(STACK[0x1EEC]) = v914 ^ v921;
      v926 = *(v0 + 8 * (v1 - 9893));
      STACK[0x2350] = v917 << v863;
      LODWORD(STACK[0x1D30]) = v918 | (v917 << v863);
      STACK[0x2340] = v906;
      STACK[0x23F0] = v915 << v863;
      LODWORD(STACK[0x3848]) = 9;
      LODWORD(STACK[0x1E74]) = v916 + (v915 << v863);
      STACK[0x2538] = v916 + (v915 << v863);
      STACK[0x2810] = STACK[0x21D8];
      return v926();
    }

    else if (v229 == 9)
    {
      v402 = STACK[0x5328];
      v403 = LOBYTE(STACK[0x671A]);
      v404 = v403 ^ STACK[0x3C18];
      v405 = LOBYTE(STACK[0x6396]);
      v406 = LOBYTE(STACK[0x6396]);
      STACK[0x3D90] = v405;
      v407 = STACK[0x5338];
      v408 = (v404 >> STACK[0x5338]) ^ ((v405 & v404) << v402);
      v409 = STACK[0x52D8];
      v410 = v408 ^ (2 * (v408 & STACK[0x52D8]));
      v411 = 2 * (v410 & STACK[0x52D8]);
      v412 = LOBYTE(STACK[0x4E9D]);
      v413 = v411 & v412;
      STACK[0x27D0] = v413;
      v414 = v412 & (2 * ((v410 ^ (2 * v413)) & v412));
      v415 = LOBYTE(STACK[0x6397]);
      LODWORD(STACK[0x3D70]) = v415;
      STACK[0x3CA8] = v414;
      STACK[0x2608] = v411;
      v416 = (v410 ^ (2 * ((v415 & (4 * v414) ^ (2 * (v410 & v409))) & v412)));
      v417 = STACK[0x4EA8];
      v418 = STACK[0x4EA0];
      LODWORD(v416) = *(STACK[0x4EA0] + *(STACK[0x4EA8] + v416));
      v419 = LOBYTE(STACK[0x4E9F]);
      STACK[0x3C78] = v416 ^ (2 * (v419 & v416));
      v420 = STACK[0x3CD0];
      v421 = STACK[0x5320];
      v422 = LOBYTE(STACK[0x635B]);
      STACK[0x23E8] = v403 ^ STACK[0x3CD0];
      v423 = v422;
      v424 = STACK[0x5350];
      LODWORD(v420) = ((v422 & (v403 ^ v420)) << STACK[0x5350]) + ((v403 ^ v420) >> v421);
      v425 = STACK[0x52B8];
      v426 = STACK[0x53C8];
      LODWORD(v420) = LODWORD(STACK[0x53C8]) & (4 * ((v420 ^ (2 * (v420 & v425))) & v425)) ^ v420 ^ (2 * (v420 & v425));
      v427 = v425 & STACK[0x53C8] & (4 * (v420 & v425));
      v428 = STACK[0x637C];
      LODWORD(STACK[0x3CC0]) = STACK[0x637C];
      STACK[0x2498] = v427;
      v429 = v428 & (2 * v427);
      STACK[0x27A8] = v429;
      LODWORD(v420) = *(v418 + *(v417 + (v420 ^ (2 * v429))));
      STACK[0x3B20] = v420 ^ (2 * (v419 & v420));
      v430 = LOBYTE(STACK[0x671B]);
      LODWORD(v420) = v430 ^ STACK[0x3758];
      v431 = (v430 ^ STACK[0x3758]);
      v432 = LOBYTE(STACK[0x6395]);
      STACK[0x2588] = v432;
      LODWORD(v420) = ((v420 & v432) << v402) ^ (v431 >> v421);
      LOBYTE(v431) = v403 ^ STACK[0x3BF8];
      LODWORD(v432) = LOBYTE(STACK[0x6394]);
      LODWORD(STACK[0x3CB8]) = v432;
      v433 = v431 >> v407;
      STACK[0x2630] = v433;
      v434 = ((v431 & v432) << v424) ^ v433;
      STACK[0x2548] = v434;
      LODWORD(v431) = v426 & (4 * ((v434 ^ (2 * (v434 & v425))) & v425)) ^ v434 ^ (2 * (v434 & v425));
      LODWORD(v432) = 4 * (v425 & v426);
      LODWORD(STACK[0x3B80]) = v432;
      LODWORD(STACK[0x3AE0]) = v425 & v426;
      LODWORD(v434) = v432 & (16 * (v431 & v425));
      LODWORD(v432) = STACK[0x6B54];
      LODWORD(STACK[0x3AE8]) = STACK[0x6B54];
      LODWORD(v431) = *(v418 + *(v417 + (v434 & v432 ^ v431)));
      STACK[0x3B08] = v431 ^ (2 * (v419 & v431));
      v435 = (v430 ^ STACK[0x3708]) >> v407;
      LOBYTE(v431) = v423 & (v430 ^ STACK[0x3708]);
      v436 = v423;
      LODWORD(STACK[0x3A60]) = v423;
      LODWORD(v431) = v426 & (4 * ((((v431 << v424) | v435) ^ (2 * (v425 & ((v431 << v424) | v435)))) & v425)) ^ ((v431 << v424) | v435) ^ (2 * (v425 & ((v431 << v424) | v435)));
      LODWORD(STACK[0x3B00]) = v431;
      v437 = 2 * (v431 & v425);
      v438 = LOBYTE(STACK[0x6393]);
      LODWORD(v431) = (v438 & LOBYTE(STACK[0x6B59]));
      STACK[0x3C98] = v437;
      LODWORD(STACK[0x3AF0]) = v431 & (8 * (v437 & v419));
      v439 = STACK[0x53CC];
      LODWORD(v431) = LODWORD(STACK[0x53CC]) & (4 * ((v420 ^ (2 * (v420 & v409))) & v409)) ^ v420 ^ (2 * (v420 & v409));
      LODWORD(STACK[0x3AD8]) = v431;
      v440 = ((v430 ^ STACK[0x3CC8]) >> v421) | ((v406 & (v430 ^ STACK[0x3CC8])) << v402);
      STACK[0x25C8] = v440;
      LODWORD(v440) = v439 & (4 * ((v440 ^ (2 * (v440 & v409))) & v409)) ^ v440 ^ (2 * (v440 & v409));
      v441 = 4 * (v409 & v439);
      LODWORD(STACK[0x3A68]) = v441 & (16 * (v431 & v409));
      v442 = v441 & (16 * (v440 & v409));
      LODWORD(v420) = ((STACK[0x636C] & (LODWORD(STACK[0x52C0]) ^ STACK[0x3E40])) << v402) ^ ((LOBYTE(STACK[0x52C0]) ^ STACK[0x3E40]) >> v421);
      v443 = v420 ^ (2 * (v420 & v409));
      v444 = v443 & v409;
      STACK[0x2288] = v444;
      v445 = (2 * v444);
      LODWORD(v444) = LOBYTE(STACK[0x6B5A]);
      STACK[0x3C60] = v445;
      STACK[0x26B0] = v444 & (8 * ((v443 ^ (2 * (v445 & v412))) & v412));
      v446 = v443 ^ (2 * ((v444 & (8 * ((v443 ^ (2 * (v445 & v412))) & v412)) ^ v445) & v412));
      v447 = (((LODWORD(STACK[0x52A4]) ^ STACK[0x3720]) & STACK[0x635C]) << v424) ^ ((LOBYTE(STACK[0x52A4]) ^ STACK[0x3720]) >> v407);
      v448 = v447 ^ (2 * (v447 & v425));
      v449 = STACK[0x6B50];
      LODWORD(v440) = v442 & STACK[0x6B50] ^ v440;
      STACK[0x2888] = v448;
      v450 = v426 & (4 * (v448 & v425)) ^ v448;
      v451 = v425 & v426 & (4 * (v450 & v425));
      STACK[0x2550] = v451;
      v452 = v432 & (4 * v451) ^ v450;
      LODWORD(v440) = *(v418 + *(v417 + v440));
      v453 = *(v417 + v446);
      STACK[0x3D88] = v453;
      v454 = *(v417 + v452);
      STACK[0x39F0] = v440 ^ (2 * (v412 & v440));
      LOBYTE(v451) = *(v418 + v453) ^ (2 * (v419 & *(v418 + v453)));
      STACK[0x3A28] = *(v418 + v454) ^ (2 * (v412 & *(v418 + v454)));
      LODWORD(v440) = ((v436 & (v403 ^ STACK[0x3718])) << v424) ^ ((v403 ^ STACK[0x3718]) >> v421);
      LODWORD(v454) = v440 ^ (2 * (v440 & v425));
      v455 = 2 * (v454 & v425);
      STACK[0x3C88] = v455;
      v456 = v455 & v419;
      LODWORD(v455) = LOBYTE(STACK[0x6727]);
      v457 = v455 & LOBYTE(STACK[0x6B5B]) & (8 * ((v454 ^ (2 * v456)) & v419));
      STACK[0x21A8] = v456;
      v458 = v454 ^ (2 * (v457 ^ v456));
      v459 = STACK[0x3CF0];
      v460 = (v403 ^ BYTE1(STACK[0x3CF0]));
      v461 = STACK[0x3D90];
      STACK[0x2718] = STACK[0x3D90] & v460;
      LODWORD(v460) = ((v461 & v460) << v402) ^ (v460 >> v407);
      LODWORD(v460) = v460 ^ (2 * (v460 & v409));
      v462 = 2 * (v460 & v409);
      v463 = v460 ^ (2 * (v462 & v412));
      STACK[0x28F0] = v463;
      v464 = v444 & (8 * (v463 & v412));
      STACK[0x3BF0] = v464;
      LOBYTE(v460) = v460 ^ (2 * ((v464 ^ v462) & v412));
      LODWORD(v464) = ((v430 ^ v459) >> v407) ^ ((v461 & (v430 ^ v459)) << v402);
      LODWORD(v459) = v439 & (4 * ((v464 ^ (2 * (v464 & v409))) & v409)) ^ v464 ^ (2 * (v464 & v409));
      v465 = v409 & v439 & (4 * (v459 & v409));
      STACK[0x24F8] = v465;
      v466 = (4 * v465) & (2 * LODWORD(STACK[0x638C]));
      LODWORD(v461) = (v1 + 1921996895) & 0x8D707783;
      v467 = STACK[0x2588];
      v468 = ((STACK[0x2588] & (v430 ^ STACK[0x3D78])) << v402) + ((v430 ^ STACK[0x3D78]) >> v421);
      STACK[0x24F0] = v468;
      LODWORD(STACK[0x3D98]) = v461;
      LODWORD(v465) = (((v468 ^ (2 * (v468 & v419))) & v419) << (v461 - 127)) & v438 ^ v468 ^ (2 * (v468 & v419));
      v469 = v465 & v419;
      STACK[0x2520] = v469;
      v470 = v455 & (4 * v469);
      STACK[0x23F8] = v470;
      LOBYTE(v461) = v438 & (4 * v470) ^ v465;
      v471 = STACK[0x3C78];
      v472 = LOBYTE(STACK[0x4E9E]);
      STACK[0x2000] = v471 & v472;
      LODWORD(STACK[0x1E30]) = ((v471 & v472) >> v402) + (v471 << v421);
      v473 = LOBYTE(STACK[0x4E9C]);
      v474 = *(v418 + *(v417 + (STACK[0x3A68] & v449 ^ LODWORD(STACK[0x3AD8]))));
      LODWORD(STACK[0x1E7C]) = ((STACK[0x3B20] & v473) >> v424) ^ (STACK[0x3B20] << v421);
      STACK[0x2508] = 2 * (v412 & v474);
      LODWORD(STACK[0x21D4]) = ((((2 * (v412 & v474)) ^ v474) & v472) >> v402) | (((2 * (v412 & v474)) ^ v474) << v407);
      v475 = STACK[0x3B08];
      v476 = STACK[0x3B08];
      STACK[0x2470] = v476 & v473;
      LODWORD(STACK[0x1CE0]) = ((v476 & v473) >> v402) + (v476 << v421);
      LODWORD(v476) = *(v418 + *(v417 + (LODWORD(STACK[0x3AF0]) ^ LODWORD(STACK[0x3B00]))));
      STACK[0x2748] = v412 & v476;
      LODWORD(STACK[0x1F6C]) = (((v476 ^ (2 * (v412 & v476))) & v472) >> v424) + ((v476 ^ (2 * (v412 & v476))) << v407);
      LODWORD(STACK[0x1CE4]) = ((STACK[0x39F0] & v472) >> v402) + (STACK[0x39F0] << v421);
      LODWORD(STACK[0x1E80]) = ((v451 & v473) >> v424) ^ (v451 << v407);
      LODWORD(STACK[0x1D40]) = ((STACK[0x3A28] & v472) >> v402) + (STACK[0x3A28] << v407);
      LODWORD(v476) = *(v418 + *(v417 + v458));
      STACK[0x24B0] = v419 & v476;
      LODWORD(STACK[0x1D18]) = (((v476 ^ (2 * (v419 & v476))) & v473) >> v424) | ((v476 ^ (2 * (v419 & v476))) << v421);
      LODWORD(v476) = *(v418 + *(v417 + v460));
      STACK[0x24B8] = v419 & v476;
      LODWORD(STACK[0x1D88]) = (((v476 ^ (2 * (v419 & v476))) & v472) >> v424) | ((v476 ^ (2 * (v419 & v476))) << v407);
      STACK[0x28E0] = v466;
      LOBYTE(v459) = *(v418 + *(v417 + (v466 ^ v459)));
      LODWORD(STACK[0x1D14]) = (((v459 ^ (2 * (v412 & v459))) & v473) >> v402) | ((v459 ^ (2 * (v412 & v459))) << v421);
      v477 = v403 ^ STACK[0x3BC0];
      LOBYTE(v459) = LODWORD(STACK[0x3A60]) & (v403 ^ STACK[0x3BC0]);
      STACK[0x1C68] = v477;
      LODWORD(v459) = (v459 << v424) + (v477 >> v421);
      LODWORD(v459) = v426 & (4 * ((v459 ^ (2 * (v459 & v425))) & v425)) ^ v459 ^ (2 * (v459 & v425));
      v478 = v459 & v425;
      STACK[0x2538] = v478;
      v479 = (8 * v478) & (2 * LODWORD(STACK[0x3AE0])) & STACK[0x3CC0];
      LODWORD(v478) = ((LODWORD(STACK[0x3CB8]) & (v430 ^ STACK[0x3B78])) << v424) ^ ((v430 ^ STACK[0x3B78]) >> v407);
      LODWORD(v478) = v426 & (4 * ((v478 ^ (2 * (v478 & v425))) & v425)) ^ v478 ^ (2 * (v478 & v425));
      LODWORD(v466) = STACK[0x3B80];
      LODWORD(v478) = *(v418 + *(v417 + (STACK[0x3B80] & (16 * (v478 & v425)) & STACK[0x3AE8] ^ v478)));
      STACK[0x27E0] = 2 * (v412 & v478);
      STACK[0x1EB0] = ((((2 * (v412 & v478)) ^ v478) & v472) >> v424) ^ (((2 * (v412 & v478)) ^ v478) << v407);
      v480 = (v430 ^ STACK[0x3CE0]) >> v421;
      LODWORD(v478) = ((v467 & (v430 ^ STACK[0x3CE0])) << v402) + v480;
      LODWORD(v478) = LODWORD(STACK[0x3D70]) & (4 * ((v478 ^ (2 * (v478 & v412))) & v412)) ^ v478 ^ (2 * (v478 & v412));
      v481 = 2 * (v478 & v412);
      LODWORD(v460) = LOBYTE(STACK[0x6726]);
      STACK[0x2590] = v481;
      v482 = v460 & (4 * (v481 & v412));
      STACK[0x26E8] = v482;
      v483 = *(v417 + (v478 ^ (2 * v482)));
      STACK[0x2158] = v483;
      LODWORD(v483) = *(v418 + v483);
      STACK[0x3C78] = v419 & v483;
      STACK[0x1EC0] = (((v483 ^ (2 * (v419 & v483))) & v473) >> v424) | ((v483 ^ (2 * (v419 & v483))) << v421);
      LODWORD(v483) = (((v403 ^ STACK[0x3CE8]) & STACK[0x3D90]) << v402) ^ ((v403 ^ STACK[0x3CE8]) >> v407);
      LODWORD(v483) = v426 & (4 * ((v483 ^ (2 * (v483 & v425))) & v425)) ^ v483 ^ (2 * (v483 & v425));
      LOBYTE(v482) = *(v418 + *(v417 + v461));
      LODWORD(v483) = v466 & (16 * (v483 & v425)) & LODWORD(STACK[0x6B5C]) ^ v483;
      v484 = (v482 ^ (2 * (v412 & v482)));
      v485 = (v473 & v484) >> v424;
      STACK[0x2430] = v479;
      v486 = *(v417 + v483);
      v487 = *(v418 + *(v417 + (v459 ^ (2 * v479))));
      STACK[0x2568] = v487;
      v488 = (v487 ^ (2 * (v419 & v487)));
      v489 = v488 & v473;
      v490 = v488 << v421;
      STACK[0x2108] = v486;
      v491 = (*(v418 + v486) ^ (2 * (v412 & *(v418 + v486))));
      STACK[0x21A0] = v485;
      LODWORD(STACK[0x1FC4]) = v485 | (v484 << v407);
      STACK[0x2448] = v491 << v407;
      STACK[0x1EB8] = ((v491 & v472) >> v402) + (v491 << v407);
      STACK[0x2580] = v480;
      STACK[0x2530] = STACK[0x3D88];
      STACK[0x24D0] = v475;
      v492 = *(v0 + 8 * (v1 - 9893));
      STACK[0x24D8] = v489 >> v402;
      STACK[0x24C0] = v490;
      STACK[0x1EE0] = (v489 >> v402) | v490;
      LODWORD(STACK[0x3848]) = 10;
      STACK[0x2990] = v467;
      STACK[0x3B80] = LODWORD(STACK[0x21D4]);
      return v492();
    }

    else
    {
      LODWORD(STACK[0x3D58]) = 21 * (v1 ^ 0x5278);
      LODWORD(STACK[0x3D28]) = v1 - 1558;
      LODWORD(STACK[0x3998]) = v217 ^ (v1 - 1558) ^ 0x807CBF8E;
      STACK[0x36F8] = v220 ^ 0x807CE1D8;
      STACK[0x3980] = v218 ^ 0x807CE1D8;
      v1013 = LOBYTE(STACK[0x671B]);
      LODWORD(STACK[0x3D68]) = v1013;
      v1014 = v1013 ^ STACK[0x3D78];
      v1015 = LOBYTE(STACK[0x635B]);
      v1016 = v1014;
      v1017 = v1014 & v1015;
      v1018 = LOBYTE(STACK[0x635B]);
      STACK[0x2EF0] = v1015;
      v1019 = STACK[0x5350];
      v1020 = STACK[0x5350];
      v1021 = STACK[0x5320];
      STACK[0x3B68] = v1016 >> STACK[0x5320];
      v1022 = (v1017 << v1019) + (v1016 >> v1021);
      v1023 = LOBYTE(STACK[0x4E9D]);
      v1024 = v1022 & v1023;
      STACK[0x2360] = v1022;
      STACK[0x2DC8] = v1024;
      v1025 = LOBYTE(STACK[0x6397]);
      LODWORD(STACK[0x3BE8]) = v1025;
      LODWORD(v1022) = v1025 & (4 * ((v1022 ^ (2 * v1024)) & v1023)) ^ v1022 ^ (2 * v1024);
      v1026 = LOBYTE(STACK[0x6BC4]);
      v1027 = v1026 & (8 * (v1022 & v1023));
      STACK[0x32B8] = v1027;
      v1028 = v1022 ^ (2 * (v1027 & v1023));
      STACK[0x3950] = v1028;
      v1029 = STACK[0x4EA8];
      v1030 = STACK[0x4EA0];
      LODWORD(v1028) = *(STACK[0x4EA0] + *(STACK[0x4EA8] + v1028));
      STACK[0x2E88] = 2 * (v1023 & v1028);
      v1031 = LOBYTE(STACK[0x4E9E]);
      STACK[0x3E18] = v1031;
      v1032 = STACK[0x5328];
      LODWORD(STACK[0x17AC]) = ((((2 * (v1023 & v1028)) ^ v1028) & v1031) >> STACK[0x5328]) | (((2 * (v1023 & v1028)) ^ v1028) << v1021);
      v1033 = STACK[0x3758];
      v1034 = LOBYTE(STACK[0x671A]);
      LODWORD(STACK[0x3D50]) = v1034;
      v1035 = (v1034 ^ BYTE2(v1033));
      v1036 = v1035 >> v1021;
      v1037 = LOBYTE(STACK[0x6396]);
      STACK[0x3D30] = v1037;
      v1038 = v1037 & v1035;
      STACK[0x3B70] = v1038;
      LODWORD(v1038) = (v1038 << v1032) ^ v1036;
      LODWORD(v1036) = STACK[0x52D8];
      LODWORD(v1038) = v1038 ^ (2 * (v1038 & LODWORD(STACK[0x52D8])));
      v1039 = 2 * (v1038 & STACK[0x52D8]);
      v1040 = v1026 & (8 * ((v1038 ^ (2 * (v1039 & v1023))) & v1023));
      STACK[0x2E58] = v1040;
      STACK[0x3008] = v1039;
      v1041 = v1038 ^ (2 * ((v1040 ^ v1039) & v1023));
      STACK[0x3948] = v1041;
      LOBYTE(v1041) = *(v1030 + *(v1029 + v1041));
      LODWORD(v1040) = LOBYTE(STACK[0x4E9F]);
      LODWORD(STACK[0x3D40]) = v1040;
      LOBYTE(v1025) = v1041 ^ (2 * (v1040 & v1041));
      v1042 = v1020;
      v1043 = ((v1034 ^ STACK[0x3CD0]) & v1018) << v1020;
      v1044 = STACK[0x5338];
      v1045 = ((v1034 ^ STACK[0x3CD0]) >> STACK[0x5338]) + v1043;
      LODWORD(v1020) = STACK[0x52B8];
      v1046 = v1045 ^ (2 * (v1045 & STACK[0x52B8]));
      LODWORD(v1039) = STACK[0x53C8];
      LODWORD(STACK[0x3C00]) = STACK[0x53C8];
      STACK[0x31B8] = v1039 & (4 * (v1046 & v1020));
      LOBYTE(v1046) = v1039 & (4 * (v1046 & v1020)) ^ v1046;
      LODWORD(STACK[0x3BB8]) = v1020 & v1039;
      LODWORD(v1039) = 4 * (v1020 & v1039);
      LODWORD(STACK[0x3D20]) = v1039;
      v1047 = LOBYTE(STACK[0x4E9C]);
      v1048 = v1042;
      LOBYTE(v1046) = *(v1030 + *(v1029 + (v1039 & (16 * (v1046 & v1020)) & STACK[0x6BC5] ^ v1046)));
      STACK[0x1818] = ((v1047 & v1025) >> v1042) ^ (v1025 << v1044);
      LOBYTE(v1025) = v1046 ^ (2 * (v1023 & v1046));
      v1049 = LODWORD(STACK[0x3D68]) ^ v1033;
      v1050 = LOBYTE(STACK[0x6394]);
      STACK[0x3BD8] = v1050;
      STACK[0x3D38] = v1042;
      v1051 = (v1049 >> v1021) ^ ((v1049 & v1050) << v1042);
      LOBYTE(v1039) = v1047;
      STACK[0x3D48] = v1047;
      STACK[0x1820] = ((v1025 & v1047) >> v1032) ^ (v1025 << v1021);
      v1052 = v1020 & (2 * ((v1051 ^ (2 * (v1051 & v1020))) & v1020));
      STACK[0x2D18] = v1052;
      v1053 = v1051 ^ (2 * (v1052 ^ v1051 & v1020));
      v1054 = v1053 & v1020;
      STACK[0x2DB0] = v1054;
      STACK[0x2DD8] = (2 * v1054);
      LODWORD(v1050) = STACK[0x3D40];
      LODWORD(v1047) = LOBYTE(STACK[0x6BC7]);
      LODWORD(STACK[0x3920]) = v1047;
      v1055 = *(v1030 + *(v1029 + (v1047 & (8 * ((2 * (v1053 & v1020)) & v1050)) ^ v1053)));
      v1056 = v1050;
      STACK[0x3938] = v1055 ^ (2 * (v1050 & v1055));
      v1057 = STACK[0x3E18];
      LODWORD(STACK[0x1838]) = (((v1055 ^ (2 * (v1050 & v1055))) & STACK[0x3E18]) >> v1048) + ((v1055 ^ (2 * (v1050 & v1055))) << v1044);
      v1058 = LODWORD(STACK[0x3D50]) ^ STACK[0x3BF8];
      v1059 = (LOBYTE(STACK[0x3D50]) ^ STACK[0x3BF8]) >> v1044;
      v1060 = LOBYTE(STACK[0x6395]);
      STACK[0x3D10] = v1060;
      v1061 = ((v1058 & v1060) << v1032) ^ v1059;
      v1062 = v1061 ^ (2 * (v1061 & v1036));
      LODWORD(v1047) = STACK[0x53CC];
      LODWORD(STACK[0x3C10]) = STACK[0x53CC];
      v1063 = v1047 & (4 * (v1062 & v1036));
      STACK[0x3148] = v1063;
      v1064 = v1063 ^ v1062;
      LODWORD(v1047) = v1036 & v1047;
      LODWORD(v1063) = v1036;
      LODWORD(STACK[0x3D60]) = v1036;
      LODWORD(STACK[0x3960]) = v1047;
      LODWORD(v1047) = 4 * v1047;
      LODWORD(STACK[0x3C18]) = v1047;
      LODWORD(v1059) = v1047 & (16 * (v1064 & v1036));
      LODWORD(v1047) = STACK[0x6BC8];
      LODWORD(STACK[0x3C08]) = STACK[0x6BC8];
      v1065 = *(v1029 + (v1059 & v1047 ^ v1064));
      STACK[0x3BA8] = v1029;
      LOBYTE(v1065) = *(v1030 + v1065);
      STACK[0x3B98] = v1030;
      STACK[0x38B8] = v1032;
      LODWORD(STACK[0x17BC]) = (((v1065 ^ (2 * (v1056 & v1065))) & v1039) >> v1032) + ((v1065 ^ (2 * (v1056 & v1065))) << v1021);
      v1066 = STACK[0x3E40];
      LODWORD(v1039) = STACK[0x3D68];
      v1067 = (LODWORD(STACK[0x3D68]) ^ WORD1(STACK[0x3E40]));
      STACK[0x3940] = v1067 & v1060;
      STACK[0x3B90] = v1021;
      v1068 = (v1067 & v1060) << v1032;
      STACK[0x3B60] = v1068;
      LODWORD(v1067) = v1068 | (v1067 >> v1021);
      v1069 = 2 * (v1067 & v1063);
      STACK[0x2DB8] = v1069;
      LODWORD(v1060) = STACK[0x3BE8];
      LODWORD(v1067) = LODWORD(STACK[0x3BE8]) & (4 * ((v1069 ^ v1067) & v1023)) ^ v1069 ^ v1067;
      v1070 = 2 * (v1067 & v1023);
      STACK[0x36E0] = v1070;
      STACK[0x2D98] = v1060 & (4 * (v1070 & v1023));
      LOBYTE(v1067) = *(v1030 + *(v1029 + (v1067 ^ (2 * (v1060 & (4 * ((2 * (v1067 & v1023)) & v1023)) & v1023)))));
      LODWORD(STACK[0x3BD0]) = v1023;
      v1071 = v1044;
      v1072 = STACK[0x3D38];
      STACK[0x17E0] = (((v1067 ^ (2 * (v1023 & v1067))) & v1057) >> STACK[0x3D38]) | ((v1067 ^ (2 * (v1023 & v1067))) << v1044);
      v1073 = v1039 ^ STACK[0x3CC8];
      STACK[0x3908] = v1073;
      v1074 = v1073;
      v1075 = STACK[0x3BD8];
      v1076 = STACK[0x3BD8] & v1073;
      STACK[0x3988] = v1076;
      STACK[0x3930] = v1074 >> v1044;
      v1077 = (v1074 >> v1044) + (v1076 << v1072);
      LODWORD(v1044) = v1056;
      v1078 = 2 * (v1077 & v1056);
      STACK[0x2D08] = v1077;
      STACK[0x3810] = v1078;
      LODWORD(v1074) = v1078 ^ v1077;
      v1079 = (v1078 ^ v1077) & v1056;
      LODWORD(v1078) = LOBYTE(STACK[0x6393]);
      LODWORD(STACK[0x3B88]) = v1078;
      STACK[0x3BA0] = v1079;
      LODWORD(v1074) = v1078 & (4 * v1079) ^ v1074;
      LODWORD(v1079) = LODWORD(STACK[0x3920]) & (8 * (v1074 & v1056));
      LODWORD(STACK[0x3118]) = v1079;
      LOBYTE(v1074) = v1074 ^ (2 * (v1079 & v1056));
      v1080 = STACK[0x52C0];
      v1081 = (LODWORD(STACK[0x52C0]) ^ v1066) >> v1021;
      LOBYTE(v1021) = v1072;
      v1082 = ((STACK[0x6380] & (LODWORD(STACK[0x52C0]) ^ v1066)) << v1072) + v1081;
      v1083 = STACK[0x3C10] & (4 * ((v1082 ^ (2 * (v1082 & STACK[0x3D60]))) & STACK[0x3D60])) ^ v1082 ^ (2 * (v1082 & STACK[0x3D60]));
      LODWORD(v1081) = STACK[0x3C18] & (16 * (v1083 & STACK[0x3D60])) & LODWORD(STACK[0x3C08]);
      STACK[0x38D8] = v1081 ^ v1083;
      v1084 = STACK[0x3BA8];
      v1085 = STACK[0x3B98];
      LODWORD(v1074) = *(STACK[0x3B98] + *(STACK[0x3BA8] + v1074));
      STACK[0x22B8] = 2 * (v1044 & v1074);
      v1086 = STACK[0x3E18];
      v1087 = *(v1084 + (v1081 ^ v1083));
      STACK[0x17C8] = ((STACK[0x3E18] & ((2 * (v1044 & v1074)) ^ v1074)) >> v1021) | (((2 * (v1044 & v1074)) ^ v1074) << v1071);
      LOBYTE(v1074) = *(v1085 + v1087) ^ (2 * (v1023 & *(v1085 + v1087)));
      v1088 = v1080 ^ STACK[0x3720];
      v1089 = STACK[0x6388] & v1088;
      v1090 = v1088 >> v1071;
      v1091 = v1071;
      v1092 = STACK[0x38B8];
      LODWORD(v1090) = (v1089 << STACK[0x38B8]) + v1090;
      v1093 = v1090 & v1020;
      STACK[0x3440] = v1093;
      v1094 = v1090 ^ (2 * v1093);
      LODWORD(v1057) = STACK[0x3C00];
      STACK[0x3080] = v1094;
      LODWORD(v1090) = v1057 & (4 * (v1094 & v1020)) ^ v1094;
      v1095 = (8 * (v1090 & v1020)) & (2 * LODWORD(STACK[0x3BB8])) & STACK[0x637C];
      v1096 = v1074 & STACK[0x3D48];
      v1097 = STACK[0x3B90];
      STACK[0x30F8] = v1095;
      v1098 = *(v1084 + (v1090 ^ (2 * v1095)));
      STACK[0x1800] = (v1096 >> v1092) | (v1074 << v1097);
      LODWORD(v1074) = *(v1085 + v1098);
      STACK[0x3110] = 2 * (v1044 & v1074);
      STACK[0x1808] = ((((2 * (v1044 & v1074)) ^ v1074) & v1086) >> v1092) | (((2 * (v1044 & v1074)) ^ v1074) << v1091);
      LODWORD(v1084) = STACK[0x3D68];
      LODWORD(v1074) = ((v1075 & (LODWORD(STACK[0x3D68]) ^ STACK[0x3718])) << v1021) ^ ((LODWORD(STACK[0x3D68]) ^ STACK[0x3718]) >> v1097);
      v1099 = v1074 & v1020;
      STACK[0x30B0] = v1099;
      LODWORD(v1074) = v1074 ^ (2 * v1099);
      STACK[0x3BB8] = v1057 & (4 * (v1074 & v1020));
      LODWORD(v1086) = STACK[0x3D20];
      LODWORD(v1060) = STACK[0x6BCC];
      LODWORD(STACK[0x38C0]) = STACK[0x6BCC];
      LODWORD(v1074) = v1086 & (16 * ((v1057 & (4 * (v1074 & v1020)) ^ v1074) & v1020)) & v1060 ^ v1057 & (4 * (v1074 & v1020)) ^ v1074;
      v1100 = v1091;
      v1101 = STACK[0x3D10];
      LOBYTE(v1021) = v1092;
      LOBYTE(v1098) = (((LODWORD(STACK[0x3D50]) ^ STACK[0x3CD8]) & STACK[0x3D10]) << v1092) | ((LOBYTE(STACK[0x3D50]) ^ STACK[0x3CD8]) >> v1091);
      LODWORD(v1085) = STACK[0x3D60];
      LOBYTE(v1098) = LOBYTE(STACK[0x6BD1]) & (4 * ((v1098 ^ (2 * (v1098 & v1085))) & v1085)) ^ v1098 ^ (2 * (v1098 & v1085));
      LODWORD(v1060) = STACK[0x3BE8];
      LODWORD(v1091) = STACK[0x3BD0];
      v1102 = STACK[0x3BA8];
      LOBYTE(v1098) = STACK[0x6BC3] & LOBYTE(STACK[0x6BD2]) & STACK[0x3BE8] & (16 * (v1098 & LODWORD(STACK[0x3BD0]))) ^ v1098;
      v1103 = STACK[0x3B98];
      LODWORD(v1074) = *(STACK[0x3B98] + *(STACK[0x3BA8] + v1074));
      LODWORD(v1087) = STACK[0x3BD0];
      STACK[0x2CC8] = STACK[0x3BD0] & v1074;
      v1104 = STACK[0x3D38];
      v1105 = *(v1102 + v1098);
      STACK[0x17E8] = (((v1074 ^ (2 * (v1091 & v1074))) & STACK[0x3D48]) >> STACK[0x3D38]) ^ ((v1074 ^ (2 * (v1091 & v1074))) << v1097);
      v1106 = (*(v1103 + v1105) ^ (2 * (v1091 & *(v1103 + v1105))));
      v1107 = STACK[0x3E18];
      STACK[0x38A0] = v1100;
      STACK[0x1828] = ((v1106 & v1107) >> v1104) | (v1106 << v1100);
      v1108 = (v1084 ^ STACK[0x3CF0]);
      v1109 = v1108 >> v1100;
      LOBYTE(v1100) = v1021;
      v1110 = ((v1101 & v1108) << v1021) ^ v1109;
      v1111 = 2 * (v1110 & v1085);
      STACK[0x2F58] = v1111;
      STACK[0x22A8] = v1110;
      LODWORD(v1111) = v1111 ^ v1110;
      LOBYTE(v1085) = v1087;
      v1112 = v1111 & v1087;
      STACK[0x2378] = v1112;
      LODWORD(v1111) = v1060 & (4 * v1112) ^ v1111;
      STACK[0x2D10] = v1060 & (4 * (v1111 & v1087));
      v1113 = v1102;
      LOBYTE(v1111) = *(v1103 + *(v1102 + (v1060 & (4 * (v1060 & (4 * (v1111 & v1087)) & v1087)) ^ v1111)));
      LODWORD(v1112) = STACK[0x3D40];
      LOBYTE(v1111) = v1111 ^ (2 * (LODWORD(STACK[0x3D40]) & v1111));
      LODWORD(v1087) = STACK[0x3D50];
      LOBYTE(v1060) = v1104;
      v1114 = STACK[0x3B90];
      LODWORD(v1109) = (((LODWORD(STACK[0x3D50]) ^ STACK[0x3BC0]) & STACK[0x3BD8]) << v1104) + ((LODWORD(STACK[0x3D50]) ^ STACK[0x3BC0]) >> STACK[0x3B90]);
      v1115 = 2 * (v1109 & v1020);
      STACK[0x2638] = v1115;
      LODWORD(v1109) = LODWORD(STACK[0x3B88]) & (4 * ((v1115 ^ v1109) & v1112)) ^ v1115 ^ v1109;
      v1116 = (STACK[0x6BC6] & LOBYTE(STACK[0x6BD3])) & STACK[0x3B88] & (16 * (v1109 & v1112));
      v1117 = STACK[0x3D48];
      STACK[0x2368] = v1116;
      STACK[0x38F8] = v1116 ^ v1109;
      v1118 = (v1116 ^ v1109);
      v1119 = v1113;
      v1120 = *(v1113 + v1118);
      STACK[0x17C0] = ((v1111 & v1117) >> v1100) ^ (v1111 << v1114);
      v1121 = v1103;
      v1122 = (*(v1103 + v1120) ^ (2 * (v1085 & *(v1103 + v1120))));
      LOBYTE(v1097) = v1114;
      STACK[0x1810] = ((v1122 & v1107) >> v1104) ^ (v1122 << v1114);
      LODWORD(v1103) = STACK[0x3D68];
      v1123 = (LODWORD(STACK[0x3D68]) ^ STACK[0x3B78]);
      v1124 = STACK[0x3D30];
      v1125 = ((LODWORD(STACK[0x3D68]) ^ STACK[0x3B78]) & STACK[0x3D30]) << v1100;
      STACK[0x3920] = v1125;
      LODWORD(v1122) = (v1125 + (v1123 >> v1097)) ^ (2 * ((v1125 + (v1123 >> v1097)) & LODWORD(STACK[0x3D60])));
      LODWORD(v1122) = LODWORD(STACK[0x3C10]) & (4 * (v1122 & LODWORD(STACK[0x3D60]))) ^ v1122;
      LODWORD(v1123) = LODWORD(STACK[0x3C18]) & (16 * (v1122 & LODWORD(STACK[0x3D60]))) & STACK[0x3C08];
      STACK[0x38C8] = v1123 ^ v1122;
      v1126 = *(v1119 + (v1123 ^ v1122));
      v1127 = v1119;
      STACK[0x38D0] = v1126;
      LODWORD(v1085) = STACK[0x3D40];
      LOBYTE(v1122) = *(v1121 + v1126) ^ (2 * (STACK[0x3D40] & *(v1121 + v1126)));
      LODWORD(v1115) = v1087 ^ STACK[0x3CE0];
      v1128 = (v1087 ^ STACK[0x3CE0]);
      v1129 = STACK[0x38A0];
      LODWORD(v1115) = ((v1115 & STACK[0x2EF0]) << v1060) | (v1128 >> STACK[0x38A0]);
      v1130 = v1115 ^ (2 * (v1115 & v1020));
      LODWORD(v1060) = STACK[0x3C00];
      STACK[0x3C10] = v1130;
      LODWORD(v1115) = v1060 & (4 * (v1130 & v1020)) ^ v1130;
      LOBYTE(v1107) = v1129;
      v1131 = v1117;
      v1132 = *(v1127 + (STACK[0x3D20] & (16 * (v1115 & v1020)) & STACK[0x38C0] ^ v1115));
      STACK[0x17B0] = ((v1122 & v1117) >> v1100) ^ (v1122 << v1129);
      v1133 = *(v1121 + v1132) ^ (2 * (v1085 & *(v1121 + v1132)));
      v1134 = v1103 ^ STACK[0x3CE8];
      STACK[0x3D68] = v1134;
      v1135 = v1133;
      v1136 = STACK[0x3E18] & v1133;
      v1137 = v1133 << v1097;
      STACK[0x3CE8] = v1137;
      v1138 = v1134 >> v1097;
      v1139 = v1134 & v1124;
      STACK[0x3D50] = v1139;
      STACK[0x3B88] = v1138;
      LODWORD(v1128) = (v1139 << v1100) ^ v1138;
      LODWORD(v1139) = STACK[0x3D60];
      v1140 = v1139 & (2 * ((v1128 ^ (2 * (v1128 & v1139))) & v1139));
      STACK[0x30C0] = v1140;
      LODWORD(v1140) = v1128 ^ (2 * (v1140 ^ v1128 & v1139));
      v1141 = STACK[0x3960] & (4 * (v1140 & v1139));
      LODWORD(v1085) = STACK[0x638C];
      STACK[0x3C00] = v1141;
      v1142 = (4 * v1141) & (2 * v1085);
      STACK[0x2358] = v1142;
      v1143 = *(v1127 + (v1142 ^ v1140));
      v1144 = v1136 >> v1100;
      v1145 = (*(v1121 + v1143) ^ (2 * (STACK[0x3BD0] & *(v1121 + v1143))));
      LODWORD(STACK[0x17A8]) = ((v1145 & v1131) >> STACK[0x3D38]) + (v1145 << v1107);
      LODWORD(v1136) = (STACK[0x531F] & 1) == 0;
      STACK[0x37E8] = v186 >> 8;
      LODWORD(STACK[0x3D38]) = v215 << 16;
      STACK[0x1FD8] = (v211 << 16);
      STACK[0x3960] = (v225 << 8);
      v1146 = STACK[0x3760] >> 16;
      v1147 = STACK[0x3768] >> 16;
      STACK[0x3848] = STACK[0x3778] >> 8;
      v1148 = STACK[0x3788] >> 8;
      STACK[0x3E18] = v213 >> 24;
      v1149 = v214 >> 24;
      v1150 = v214 >> 8;
      STACK[0x2320] = STACK[0x29D0] >> 16;
      v1151 = v194 >> 8;
      STACK[0x2318] = STACK[0x29C0];
      STACK[0x3C08] = v169 >> 16;
      STACK[0x2C48] = v1148;
      v1152 = STACK[0x29A0] >> 24;
      STACK[0x2D50] = v1146;
      STACK[0x2270] = STACK[0x2A58] >> 24;
      v1153 = STACK[0x2A10];
      STACK[0x22D0] = STACK[0x2A10] >> 16;
      v1154 = STACK[0x29A8] >> 24;
      STACK[0x3998] = (LODWORD(STACK[0x3998]) ^ LODWORD(STACK[0x3D58]));
      STACK[0x2338] = v1132;
      STACK[0x17F0] = v1144 ^ v1137;
      STACK[0x3D40] = STACK[0x29B0] >> 24;
      v1155 = v1136 | (32 * v1136) | LODWORD(STACK[0x3D28]);
      STACK[0x3D20] = STACK[0x29B8] >> 8;
      STACK[0x2128] = STACK[0x37A8];
      v1156 = STACK[0x38B0];
      STACK[0x2CB8] = STACK[0x38B0] >> 24;
      STACK[0x1C58] = STACK[0x3850] >> 24;
      v1157 = STACK[0x29C8] >> 8;
      v1158 = STACK[0x2A20];
      STACK[0x2D20] = STACK[0x2A20];
      STACK[0x3788] = v1158 >> 16;
      v1159 = STACK[0x2A00] >> 16;
      STACK[0x22E0] = v1135;
      STACK[0x3000] = v1159;
      v1160 = STACK[0x3858] >> 8;
      v1161 = STACK[0x3858] >> 24;
      STACK[0x22F8] = v212;
      STACK[0x2FF8] = STACK[0x3908];
      v1162 = STACK[0x2A28];
      STACK[0x2FE8] = STACK[0x2A28] >> 24;
      v1163 = v1162 >> 16;
      STACK[0x2DA8] = STACK[0x3950];
      v1164 = STACK[0x29D8] >> 8;
      STACK[0x2A28] = STACK[0x3948];
      v1165 = STACK[0x29E8] >> 16;
      STACK[0x3BD8] = STACK[0x29E0];
      v1166 = STACK[0x29F8] >> 24;
      STACK[0x2F90] = STACK[0x38D8];
      v1167 = STACK[0x29F0] >> 8;
      STACK[0x3058] = STACK[0x3938];
      v1168 = STACK[0x2A68];
      STACK[0x22C0] = STACK[0x2A68] >> 24;
      v1169 = STACK[0x2A08] >> 16;
      STACK[0x30E8] = STACK[0x32E8];
      v1170 = STACK[0x2A48] >> 16;
      STACK[0x2D80] = STACK[0x3D10];
      STACK[0x32B0] = STACK[0x2A40] >> 24;
      STACK[0x3028] = STACK[0x37C0];
      v1171 = v1156 >> 16;
      STACK[0x3D60] = v1165;
      STACK[0x3BE8] = HIBYTE(LODWORD(STACK[0x2A50]));
      STACK[0x3038] = STACK[0x3930];
      STACK[0x2290] = HIBYTE(LODWORD(STACK[0x2A70]));
      STACK[0x1C48] = v1160;
      v1172 = STACK[0x2A78] >> 8;
      STACK[0x3C18] = STACK[0x3940];
      STACK[0x2A20] = STACK[0x39F0] >> 24;
      v1173 = STACK[0x3838];
      STACK[0x3068] = STACK[0x3838] >> 16;
      v1174 = STACK[0x2A88] >> 16;
      STACK[0x1AF0] = v1150;
      v1175 = STACK[0x2A60];
      STACK[0x2CF8] = STACK[0x2A60] >> 16;
      v1176 = STACK[0x2A90] >> 16;
      STACK[0x3090] = v1171;
      v1177 = *(v0 + 8 * v1155);
      STACK[0x2DC0] = STACK[0x38C8];
      STACK[0x2CD8] = v1169;
      STACK[0x3138] = v1149;
      STACK[0x3768] = v1152;
      v1178 = STACK[0x3CF0];
      STACK[0x3B98] = STACK[0x3CF0];
      STACK[0x21C0] = v1178;
      STACK[0x2FB0] = v1166;
      STACK[0x2CC0] = v1175;
      STACK[0x3950] = STACK[0x38D0];
      STACK[0x3858] = v1168;
      STACK[0x3158] = STACK[0x2A18];
      STACK[0x1BB0] = v1151;
      STACK[0x2E78] = STACK[0x3D30];
      STACK[0x2F70] = v1153;
      STACK[0x3010] = v1157;
      STACK[0x22A0] = v1154;
      STACK[0x3B90] = STACK[0x3988];
      STACK[0x22C8] = STACK[0x3B68];
      STACK[0x1AE8] = STACK[0x38F8];
      STACK[0x3938] = v1147;
      STACK[0x3D48] = v1163;
      STACK[0x2F98] = STACK[0x3920];
      STACK[0x2F18] = STACK[0x3D50];
      STACK[0x3160] = STACK[0x3C08];
      STACK[0x2DA0] = STACK[0x2AA0];
      STACK[0x3060] = v1167;
      STACK[0x3128] = v1170;
      STACK[0x3120] = v1164;
      STACK[0x2F68] = STACK[0x2A80];
      STACK[0x3D50] = v216;
      STACK[0x2F08] = STACK[0x3B70];
      STACK[0x2F28] = STACK[0x3E18];
      STACK[0x2E68] = v1174;
      STACK[0x35A0] = STACK[0x3CE8];
      STACK[0x2CE0] = STACK[0x3D40];
      STACK[0x2F20] = v1172;
      STACK[0x22F0] = STACK[0x3D68];
      STACK[0x2E60] = STACK[0x3888];
      STACK[0x3BD0] = STACK[0x3878];
      STACK[0x2F78] = STACK[0x2A98];
      STACK[0x3048] = v1173;
      STACK[0x2A68] = STACK[0x3750] >> 8;
      v1179 = STACK[0x2A38];
      STACK[0x2300] = STACK[0x2A38];
      STACK[0x2F10] = v1179 >> 16;
      STACK[0x2398] = v1176;
      STACK[0x3390] = STACK[0x33A8] >> 24;
      STACK[0x2A40] = STACK[0x2A30];
      STACK[0x1C40] = v1161;
      STACK[0x2CD0] = STACK[0x3B60];
      STACK[0x36C0] = LOBYTE(STACK[0x6D51]);
      STACK[0x2F40] = LOBYTE(STACK[0x6D62]);
      STACK[0x2CF0] = LOBYTE(STACK[0x6D65]);
      STACK[0x2F80] = LOBYTE(STACK[0x6D82]);
      STACK[0x1C38] = LOBYTE(STACK[0x6D99]);
      STACK[0x3050] = LOBYTE(STACK[0x6DB2]);
      STACK[0x2E70] = LOBYTE(STACK[0x6DB7]);
      STACK[0x2D00] = LOBYTE(STACK[0x6DBC]);
      STACK[0x2FA0] = LOBYTE(STACK[0x6DCE]);
      STACK[0x3030] = LOBYTE(STACK[0x6DEA]);
      STACK[0x34F0] = LOBYTE(STACK[0x6E0C]);
      STACK[0x3BA8] = LOBYTE(STACK[0x6E11]);
      STACK[0x2F38] = LOBYTE(STACK[0x6E19]);
      STACK[0x2298] = LOBYTE(STACK[0x6E30]);
      STACK[0x22B0] = LOBYTE(STACK[0x6E37]);
      STACK[0x30B8] = LOBYTE(STACK[0x6E3B]);
      STACK[0x3130] = LOBYTE(STACK[0x6E41]);
      STACK[0x1AF8] = LOBYTE(STACK[0x6E4F]);
      STACK[0x2CE8] = LOBYTE(STACK[0x6E72]);
      STACK[0x2E80] = LOBYTE(STACK[0x6EE7]);
      STACK[0x3C08] = LOBYTE(STACK[0x6EFE]);
      STACK[0x2F30] = LOBYTE(STACK[0x6F1A]);
      STACK[0x1AD8] = LOBYTE(STACK[0x6FD9]);
      STACK[0x3800] = 10;
      STACK[0x3828] = LOBYTE(STACK[0x6FE8]);
      LODWORD(STACK[0x17A4]) = STACK[0x2278];
      LODWORD(STACK[0x17FC]) = STACK[0x2170];
      LODWORD(STACK[0x17F8]) = STACK[0x2168];
      v1180 = STACK[0x3E40];
      STACK[0x3020] = STACK[0x3E40];
      STACK[0x3538] = v1180;
      STACK[0x2F88] = STACK[0x3BC0];
      LODWORD(STACK[0x3B68]) = STACK[0x3CC8];
      LODWORD(STACK[0x17A0]) = STACK[0x2178];
      STACK[0x30F0] = STACK[0x1828];
      STACK[0x30C8] = LODWORD(STACK[0x1838]);
      STACK[0x2040] = STACK[0x3CE0];
      STACK[0x3D30] = STACK[0x34E8];
      LODWORD(STACK[0x21CC]) = STACK[0x3CD0];
      STACK[0x2208] = STACK[0x3CB8];
      STACK[0x2210] = STACK[0x3718];
      STACK[0x37C0] = STACK[0x3498];
      return v1177();
    }
  }
}

uint64_t sub_100DDBF1C@<X0>(uint64_t a1@<X8>)
{
  *v3 = v2;
  *(v2 + 8) = *(a1 + v1);
  *(a1 + v1) = v2;
  return (*(v5 + 8 * ((8408 * ((v4 & 0xEF3FF53F) == (((v4 & 0xEF3FF53F) + 880824929) & 0xA1DFFE8F ^ 0x2A388F01))) ^ ((v4 & 0xEF3FF53F) + 1421913727))))();
}

uint64_t sub_100DDBFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(v7 + 8 * v6);
  *&STACK[0x4F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  STACK[0x4C0] = *&a6 & 0x3FFF8;
  STACK[0x4A0] = (v6 + 8221);
  *&STACK[0x4D0] = xmmword_1012371A0;
  return v8();
}

uint64_t sub_100DDC1B8()
{
  v3 = (*(v1 + 8 * (v2 + 19350)))();
  **(v0 + 72) = 0;
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_100DDC1E0@<X0>(int a1@<W8>)
{
  STACK[0x19C0] = v1;
  LOWORD(STACK[0x15DE]) = 23;
  LODWORD(STACK[0x1214]) = -435378819;
  return (*(v2 + 8 * (a1 - 83)))();
}

uint64_t sub_100DDC274@<X0>(int a1@<W0>, int a2@<W8>)
{
  v6 = 413 * (a2 ^ (a1 - 2972) ^ 0x2E28);
  v7 = v2 + a2 + 804;
  if (*(v4 + 2504))
  {
    v8 = *(v4 + 2096) == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || v3 != -143113071;
  return (*(v5 + 8 * ((v10 * (v6 ^ 0x26A4)) ^ v7)))();
}

uint64_t sub_100DDC2D4()
{
  STACK[0x3318] = 0;
  v2 = STACK[0x3D18];
  HIDWORD(v3) = *(STACK[0x3D18] + 1772);
  LODWORD(v3) = bswap32(*(STACK[0x3D18] + 1773));
  v4 = STACK[0x1BE8];
  v4[1566] = (v3 >> 16) | (*(STACK[0x3D18] + 1771) << ((v0 + 106) & 0xBF ^ 0xB9));
  v4[1567] = bswap32(*(v2 + 1767));
  v4[1568] = bswap32(*(v2 + 1763));
  HIDWORD(v3) = *(v2 + 1760);
  LODWORD(v3) = bswap32(*(v2 + 1761));
  v4[1569] = (v3 >> 16) | (*STACK[0x2908] << 24);
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100DDC37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x3798]) = a7 + 23;
  v10 = *(v8 + 8 * ((228 * ((((2413 * (v7 ^ 0x2668) + 936192282) ^ (v9 == 23)) & 1) == 0)) ^ v7));
  LODWORD(STACK[0x3D58]) = 23;
  return v10();
}

uint64_t sub_100DDC400(unint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  LODWORD(STACK[0x3818]) = LODWORD(STACK[0x3CD0]) ^ LODWORD(STACK[0x3740]);
  v14 = STACK[0x3BB0] ^ LODWORD(STACK[0x3720]);
  LODWORD(STACK[0x37E4]) = STACK[0x3CE0] ^ LODWORD(STACK[0x3774]);
  LODWORD(STACK[0x37C8]) = LODWORD(STACK[0x3AF8]) ^ LODWORD(STACK[0x3A58]);
  v15 = LODWORD(STACK[0x3BB8]) ^ LODWORD(STACK[0x3A04]);
  LODWORD(STACK[0x37D8]) = LODWORD(STACK[0x3CF0]) ^ LODWORD(STACK[0x37B0]);
  LODWORD(STACK[0x3800]) = LODWORD(STACK[0x3958]) ^ LODWORD(STACK[0x3D98]);
  LODWORD(STACK[0x3BB0]) = LODWORD(STACK[0x3B48]) ^ LODWORD(STACK[0x3CE8]);
  LODWORD(STACK[0x3CD0]) = v15 ^ LODWORD(STACK[0x35D0]);
  LODWORD(STACK[0x3CE8]) = STACK[0x3CD8] ^ LODWORD(STACK[0x3688]) ^ v8;
  LODWORD(STACK[0x3DA0]) = LODWORD(STACK[0x3BA8]) ^ LODWORD(STACK[0x3A28]) ^ v6;
  LODWORD(STACK[0x3CE0]) = LODWORD(STACK[0x3B98]) ^ LODWORD(STACK[0x3A38]) ^ a2;
  LODWORD(STACK[0x3D98]) = v14 ^ LODWORD(STACK[0x35CC]);
  LODWORD(STACK[0x3BA0]) ^= LODWORD(STACK[0x35AC]);
  LODWORD(STACK[0x3BA8]) = LODWORD(STACK[0x3660]) ^ STACK[0x3D18];
  STACK[0x3E40] = 0;
  LODWORD(STACK[0x3D18]) = LODWORD(STACK[0x3B38]) ^ v7;
  LODWORD(STACK[0x3CD8]) = STACK[0x3B58] ^ LODWORD(STACK[0x3A60]) ^ v5;
  LODWORD(STACK[0x3CF0]) = LODWORD(STACK[0x35F8]) ^ STACK[0x3A88] ^ LODWORD(STACK[0x3AAC]);
  v16 = STACK[0x3DD8] | STACK[0x3D10];
  v17 = LODWORD(STACK[0x35B8]) ^ LODWORD(STACK[0x3658]);
  v18 = (LODWORD(STACK[0x3648]) ^ LODWORD(STACK[0x3B68])) ^ LODWORD(STACK[0x3950]);
  v19 = LODWORD(STACK[0x3CB8]) ^ LODWORD(STACK[0x3780]) ^ STACK[0x3938];
  v20 = LODWORD(STACK[0x3768]) ^ STACK[0x3DE8];
  v21 = LODWORD(STACK[0x3640]) ^ STACK[0x3928];
  v22 = (LODWORD(STACK[0x3638]) ^ LODWORD(STACK[0x3900]));
  v23 = LODWORD(STACK[0x3630]) ^ STACK[0x3910];
  v24 = (LODWORD(STACK[0x3620]) ^ LODWORD(STACK[0x38E8]));
  v25 = LODWORD(STACK[0x3698]) ^ STACK[0x38E0];
  v26 = (LODWORD(STACK[0x3690]) ^ LODWORD(STACK[0x38B0]));
  v27 = LODWORD(STACK[0x3678]) ^ STACK[0x3890];
  LODWORD(STACK[0x3DD8]) = LODWORD(STACK[0x35C0]) ^ LODWORD(STACK[0x3870]);
  v28 = LODWORD(STACK[0x36D8]) ^ STACK[0x3828];
  v29 = (LODWORD(STACK[0x36D0]) ^ LODWORD(STACK[0x3810]));
  v30 = LODWORD(STACK[0x366C]) ^ STACK[0x3820];
  v31 = (LODWORD(STACK[0x3650]) ^ LODWORD(STACK[0x38EC]));
  v32 = LODWORD(STACK[0x36C8]) ^ STACK[0x3808];
  v33 = (LODWORD(STACK[0x35FC]) ^ LODWORD(STACK[0x37F8]));
  STACK[0x3DE8] = LODWORD(STACK[0x36C0]) ^ STACK[0x37F0];
  LODWORD(STACK[0x3CB8]) = STACK[0x3998] | STACK[0x3670];
  LODWORD(STACK[0x3BB8]) = STACK[0x3CC0] | STACK[0x3CC8];
  LODWORD(STACK[0x3D10]) = v16 ^ LODWORD(STACK[0x36A0]);
  v34 = STACK[0x3A90];
  LODWORD(STACK[0x3B58]) = *(STACK[0x3A90] + v11) | (*(STACK[0x3A90] + (v11 >> 24)) << 24) | (*(STACK[0x3A90] + BYTE1(v11)) << 8) | (*(STACK[0x3A90] + BYTE2(v11)) << 16);
  v35 = STACK[0x3700];
  v36 = *(v34 + STACK[0x3700]) | (*(v34 + BYTE1(STACK[0x3700])) << 8);
  v37 = v17 ^ LODWORD(STACK[0x4DE4]);
  LODWORD(STACK[0x3B48]) = *(v34 + v37) | (*(v34 + (v37 >> 24)) << 24) | (*(v34 + BYTE1(v37)) << 8) | (*(v34 + BYTE2(v37)) << 16);
  v38 = *(v34 + BYTE1(a1));
  v39 = *(v34 + a1);
  LODWORD(STACK[0x3B68]) = v36 | (*(v34 + (v35 >> 24)) << 24) | (*(v34 + BYTE2(v35)) << 16);
  v40 = v39 | (v38 << 8) | (*(v34 + BYTE2(a1)) << 16);
  LODWORD(v37) = *(v34 + (a1 >> 24));
  v41 = *(v34 + BYTE1(v18));
  LODWORD(STACK[0x3B70]) = v40 | (v37 << 24);
  v42 = *(v34 + v18) | (v41 << 8) | (*(v34 + (v18 >> 24)) << 24);
  LODWORD(v37) = *(v34 + a5);
  v43 = *(v34 + BYTE1(a5));
  LODWORD(STACK[0x3B40]) = v42 | (*(v34 + BYTE2(v18)) << 16);
  v44 = STACK[0x36F0];
  LODWORD(v18) = *(v34 + STACK[0x36F0]);
  LODWORD(STACK[0x3B38]) = v37 | (v43 << 8) | (*(v34 + BYTE2(a5)) << 16) | (*(v34 + (a5 >> 24)) << 24);
  v45 = v18 | (*(v34 + BYTE2(v44)) << 16) | (*(v34 + BYTE1(v44)) << 8);
  v46 = STACK[0x3A98];
  LODWORD(v18) = *(v34 + BYTE1(STACK[0x3A98]));
  v47 = *(v34 + STACK[0x3A98]);
  LODWORD(STACK[0x3B00]) = v45 | (*(v34 + (v44 >> 24)) << 24);
  LODWORD(STACK[0x3AF8]) = *(v34 + v19) | (*(v34 + (v19 >> 24)) << 24) | (*(v34 + BYTE2(v19)) << 16) | (*(v34 + BYTE1(v19)) << 8);
  LODWORD(v44) = STACK[0x3778];
  v48 = LODWORD(STACK[0x3D80]) ^ LODWORD(STACK[0x3778]) ^ v20 ^ STACK[0x3DF0];
  LODWORD(v19) = *(v34 + BYTE1(v48));
  LODWORD(STACK[0x3AAC]) = v47 | (v18 << 8) | (*(v34 + (v46 >> 24)) << 24) | (*(v34 + BYTE2(v46)) << 16);
  v49 = *(v34 + v48) | (v19 << 8) | (*(v34 + BYTE2(v48)) << 16);
  LODWORD(v37) = *(v34 + BYTE1(v10));
  LODWORD(v19) = *(v34 + v10);
  LODWORD(STACK[0x3A98]) = v49 | (*(v34 + (v48 >> 24)) << 24);
  v50 = v19 | (v37 << 8) | (*(v34 + BYTE2(v10)) << 16);
  LODWORD(v37) = *(v34 + BYTE2(v21));
  LODWORD(STACK[0x3A88]) = v50 | (*(v34 + (v10 >> 24)) << 24);
  v51 = STACK[0x3730];
  LODWORD(v48) = *(v34 + STACK[0x3730]);
  LODWORD(v19) = *(v34 + BYTE2(STACK[0x3730]));
  LODWORD(STACK[0x3A70]) = *(v34 + v21) | (v37 << 16) | (*(v34 + BYTE1(v21)) << 8) | (*(v34 + (v21 >> 24)) << 24);
  LODWORD(v37) = *(v34 + v12);
  LODWORD(STACK[0x3A68]) = v48 | (v19 << 16) | (*(v34 + BYTE1(v51)) << 8) | (*(v34 + (v51 >> 24)) << 24);
  v52 = v37 | (*(v34 + BYTE1(v12)) << 8) | (*(v34 + (v12 >> 24)) << 24);
  LODWORD(v37) = *(v34 + v22);
  LODWORD(v19) = *(v34 + BYTE1(v22));
  LODWORD(STACK[0x3A60]) = v52 | (*(v34 + BYTE2(v12)) << 16);
  LODWORD(v48) = *(v34 + v23) | (*(v34 + BYTE1(v23)) << 8);
  LODWORD(STACK[0x3A58]) = v37 | (v19 << 8) | (*(v34 + BYTE2(v22)) << 16) | (*(v34 + (v22 >> 24)) << 24);
  v53 = v48 | (*(v34 + BYTE2(v23)) << 16);
  v54 = STACK[0x39B0];
  LODWORD(v48) = *(v34 + STACK[0x39B0]);
  LODWORD(v19) = *(v34 + BYTE2(STACK[0x39B0]));
  LODWORD(STACK[0x3A40]) = v53 | (*(v34 + (v23 >> 24)) << 24);
  LODWORD(v37) = *(v34 + v24);
  LODWORD(STACK[0x3A38]) = v48 | (v19 << 16) | (*(v34 + BYTE1(v54)) << 8) | (*(v34 + (v54 >> 24)) << 24);
  LODWORD(v48) = *(v34 + v13) | (*(v34 + BYTE1(v13)) << 8);
  LODWORD(STACK[0x3A28]) = v37 | (*(v34 + BYTE1(v24)) << 8) | (*(v34 + BYTE2(v24)) << 16) | (*(v34 + (v24 >> 24)) << 24);
  LODWORD(v37) = *(v34 + v25);
  LODWORD(STACK[0x3A04]) = v48 | (*(v34 + BYTE2(v13)) << 16) | (*(v34 + (v13 >> 24)) << 24);
  v55 = v37 | (*(v34 + BYTE1(v25)) << 8) | (*(v34 + BYTE2(v25)) << 16);
  v56 = STACK[0x3980];
  LODWORD(v48) = *(v34 + BYTE1(STACK[0x3980]));
  LODWORD(v37) = *(v34 + (v25 >> 24));
  LODWORD(v25) = *(v34 + STACK[0x3980]);
  LODWORD(STACK[0x39B0]) = v55 | (v37 << 24);
  LODWORD(v37) = *(v34 + BYTE1(v26));
  LODWORD(STACK[0x39A8]) = v25 | (v48 << 8) | (*(v34 + (v56 >> 24)) << 24) | (*(v34 + BYTE2(v56)) << 16);
  v57 = *(v34 + v26) | (v37 << 8) | (*(v34 + BYTE2(v26)) << 16);
  LODWORD(v37) = *(v34 + BYTE1(v27));
  LODWORD(v25) = *(v34 + v27);
  LODWORD(STACK[0x3998]) = v57 | (*(v34 + (v26 >> 24)) << 24);
  LODWORD(STACK[0x3988]) = *(v34 + STACK[0x3988]) | (*(v34 + BYTE2(STACK[0x3988])) << 16) | (*(v34 + BYTE1(STACK[0x3988])) << 8) | (*(v34 + (STACK[0x3988] >> 24)) << 24);
  LODWORD(STACK[0x3980]) = v25 | (v37 << 8) | (*(v34 + BYTE2(v27)) << 16) | (*(v34 + (v27 >> 24)) << 24);
  v58 = LODWORD(STACK[0x3D20]) ^ v44;
  LODWORD(v48) = STACK[0x3DD8];
  v59 = STACK[0x3970];
  LODWORD(v37) = *(v34 + BYTE2(STACK[0x3970]));
  LODWORD(v25) = *(v34 + STACK[0x3970]);
  LODWORD(STACK[0x3978]) = (*(v34 + ((v58 ^ v48) >> 8)) << 8) | (*(v34 + ((v58 ^ v48) >> 24)) << 24) | *(v34 + (v58 ^ v48)) | (*(v34 + ((v58 ^ v48) >> 16)) << 16);
  v60 = v25 | (v37 << 16) | (*(v34 + BYTE1(v59)) << 8);
  LODWORD(v48) = *(v34 + (v59 >> 24));
  v61 = STACK[0x3968];
  LODWORD(v37) = *(v34 + BYTE1(STACK[0x3968]));
  LODWORD(STACK[0x3970]) = v60 | (v48 << 24);
  LODWORD(v48) = *(v34 + v28) | (*(v34 + BYTE1(v28)) << 8) | (*(v34 + BYTE2(v28)) << 16);
  LODWORD(STACK[0x3968]) = *(v34 + v61) | (v37 << 8) | (*(v34 + (v61 >> 24)) << 24) | (*(v34 + BYTE2(v61)) << 16);
  v62 = STACK[0x3948];
  v63 = *(v34 + STACK[0x3948]) | (*(v34 + BYTE1(STACK[0x3948])) << 8);
  LODWORD(STACK[0x3958]) = v48 | (*(v34 + (v28 >> 24)) << 24);
  v64 = v63 | (*(v34 + BYTE2(v62)) << 16);
  LODWORD(v48) = *(v34 + (v62 >> 24));
  LODWORD(v37) = *(v34 + BYTE1(v29));
  LODWORD(v62) = *(v34 + v29);
  LODWORD(STACK[0x3950]) = v64 | (v48 << 24);
  v65 = v62 | (v37 << 8) | (*(v34 + BYTE2(v29)) << 16);
  v66 = STACK[0x3798];
  LODWORD(v37) = *(v34 + STACK[0x3798]);
  LODWORD(STACK[0x3948]) = v65 | (*(v34 + (v29 >> 24)) << 24);
  v67 = v37 | (*(v34 + BYTE1(v66)) << 8) | (*(v34 + BYTE2(v66)) << 16);
  LODWORD(v48) = *(v34 + BYTE2(v30));
  v68 = v66 >> 24;
  LODWORD(v66) = *(v34 + v30);
  LODWORD(STACK[0x3938]) = v67 | (*(v34 + v68) << 24);
  v69 = STACK[0x3790];
  LODWORD(v68) = *(v34 + BYTE2(STACK[0x3790]));
  LODWORD(STACK[0x3928]) = v66 | (v48 << 16) | (*(v34 + (v30 >> 24)) << 24) | (*(v34 + BYTE1(v30)) << 8);
  v70 = *(v34 + v69) | (v68 << 16) | (*(v34 + BYTE1(v69)) << 8);
  v71 = STACK[0x37B8];
  LODWORD(v68) = *(v34 + BYTE1(STACK[0x37B8]));
  LODWORD(v66) = *(v34 + STACK[0x37B8]);
  LODWORD(STACK[0x3910]) = v70 | (*(v34 + (v69 >> 24)) << 24);
  LOBYTE(v24) = v31;
  LODWORD(v48) = (*(v34 + BYTE1(v31)) << 8) | (*(v34 + BYTE2(v31)) << 16) | (*(v34 + (v31 >> 24)) << 24);
  v72 = v66 | (v68 << 8) | (*(v34 + BYTE2(v71)) << 16);
  LODWORD(v66) = *(v34 + BYTE1(v32));
  LODWORD(STACK[0x3900]) = v72 | (*(v34 + (v71 >> 24)) << 24);
  v73 = STACK[0x37C0];
  LODWORD(v68) = *(v34 + STACK[0x37C0]) | (*(v34 + BYTE1(STACK[0x37C0])) << 8);
  LODWORD(STACK[0x38EC]) = *(v34 + v32) | (v66 << 8) | (*(v34 + BYTE2(v32)) << 16) | (*(v34 + (v32 >> 24)) << 24);
  v74 = v68 | (*(v34 + BYTE2(v73)) << 16);
  LODWORD(v68) = *(v34 + v33) | (*(v34 + BYTE1(v33)) << 8);
  LODWORD(STACK[0x38E8]) = v74 | (*(v34 + (v73 >> 24)) << 24);
  v75 = v68 | (*(v34 + (v33 >> 24)) << 24);
  v76 = STACK[0x38A8];
  LODWORD(v68) = *(v34 + BYTE1(STACK[0x38A8]));
  LODWORD(v61) = *(v34 + STACK[0x38A8]);
  LODWORD(STACK[0x38E0]) = v75 | (*(v34 + BYTE2(v33)) << 16);
  v77 = STACK[0x3DE8];
  LODWORD(v66) = *(v34 + BYTE1(STACK[0x3DE8]));
  LODWORD(STACK[0x38B0]) = v61 | (v68 << 8) | (*(v34 + BYTE2(v76)) << 16) | (*(v34 + (v76 >> 24)) << 24);
  v78 = STACK[0x37A0];
  LODWORD(v68) = *(v34 + BYTE1(STACK[0x37A0]));
  LODWORD(v61) = *(v34 + BYTE2(STACK[0x37A0]));
  LODWORD(STACK[0x38A8]) = *(v34 + v77) | (v66 << 8) | (*(v34 + BYTE2(v77)) << 16) | (*(v34 + (v77 >> 24)) << 24);
  LODWORD(STACK[0x3890]) = (v68 << 8) | (v61 << 16) | *(v34 + v78) | (*(v34 + (v78 >> 24)) << 24);
  v79 = bswap32(STACK[0x37D0]);
  LODWORD(v28) = STACK[0x3898];
  LODWORD(v68) = LODWORD(STACK[0x3898]) ^ LODWORD(STACK[0x3888]);
  v80 = LODWORD(STACK[0x3878]) ^ bswap32(STACK[0x37E8]);
  LODWORD(v61) = *(v34 + BYTE1(v80));
  LODWORD(v31) = *(v34 + v80);
  LODWORD(STACK[0x3888]) = *(v34 + (v68 ^ v79)) | (*(v34 + ((v68 ^ v79) >> 8)) << 8) | (*(v34 + ((v68 ^ v79) >> 24)) << 24) | (*(v34 + ((v68 ^ v79) >> 16)) << 16);
  v81 = v31 | (v61 << 8) | (*(v34 + (v80 >> 24)) << 24);
  LODWORD(v68) = *(v34 + BYTE2(v80));
  v82 = STACK[0x37A8];
  LODWORD(v80) = *(v34 + BYTE1(STACK[0x37A8]));
  LODWORD(STACK[0x3878]) = v81 | (v68 << 16);
  LODWORD(STACK[0x3870]) = *(v34 + v82) | (v80 << 8) | (*(v34 + BYTE2(v82)) << 16) | (*(v34 + (v82 >> 24)) << 24);
  LODWORD(v61) = LODWORD(STACK[0x3BC0]) ^ ((STACK[0x3BC0] & LODWORD(STACK[0x3618])) >> 1);
  v83 = STACK[0x3D28];
  v84 = STACK[0x3528];
  LODWORD(v31) = (*(v84 + *(v83 - 4)) << 24) | (*(v84 + *(v83 - 3)) << 16) | *(v84 + *(v83 - 1)) | (*(v84 + *(v83 - 2)) << 8);
  LODWORD(v68) = (*(v84 + *(v83 - 8)) << 24) | (*(v84 + *(v83 - 7)) << 16) | *(v84 + *(v83 - 5)) | (*(v84 + *(v83 - 6)) << 8);
  v85 = *(v84 + *(v83 - 9)) | (*(v84 + *(v83 - 11)) << 16) | (*(v84 + *(v83 - 10)) << 8) | (*(v84 + *(v83 - 12)) << 24);
  LODWORD(v32) = STACK[0x3920];
  v86 = v85 ^ (2 * (v85 & STACK[0x3908]));
  LODWORD(STACK[0x3828]) = v31 ^ (2 * (v31 & LODWORD(STACK[0x3908])));
  LODWORD(STACK[0x3CC8]) = LODWORD(STACK[0x37D8]) ^ LODWORD(STACK[0x4D90]);
  LODWORD(v83) = STACK[0x3858];
  v87 = LODWORD(STACK[0x37E4]) ^ LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x3B98]) = v87;
  LODWORD(v23) = LODWORD(STACK[0x3848]) ^ v83;
  LODWORD(STACK[0x37F8]) = v23;
  LODWORD(STACK[0x3CC0]) = LODWORD(STACK[0x3BD8]) ^ v44 ^ LODWORD(STACK[0x3BA0]);
  LODWORD(v22) = LODWORD(STACK[0x3990]) ^ v44 ^ LODWORD(STACK[0x3D18]);
  LODWORD(STACK[0x3808]) = v22;
  LODWORD(v54) = LODWORD(STACK[0x37C8]) ^ v28;
  LODWORD(STACK[0x3810]) = v54;
  LODWORD(STACK[0x3990]) = v48 | *(v34 + v24);
  LODWORD(STACK[0x3D18]) = ((v61 & STACK[0x3510]) << STACK[0x3E30]) ^ ((v61 & STACK[0x3628]) >> STACK[0x3E38]);
  v88 = STACK[0x3D70];
  v89 = STACK[0x3D60];
  v90 = STACK[0x3D68];
  v91 = STACK[0x3D58];
  v92 = ((v86 & STACK[0x38D0]) >> STACK[0x3D58]) + ((v86 & STACK[0x38C0]) << STACK[0x3D68]);
  STACK[0x3D80] = (((v68 ^ (2 * (v68 & v32))) & STACK[0x38F8]) >> STACK[0x3D58]) | (((v68 ^ (2 * (v68 & v32))) & STACK[0x38A0]) << STACK[0x3D68]);
  LODWORD(v32) = STACK[0x3840];
  LODWORD(v80) = STACK[0x3940];
  LODWORD(v29) = STACK[0x3860];
  LODWORD(v33) = STACK[0x3800];
  LODWORD(v34) = STACK[0x3830];
  v93 = LODWORD(STACK[0x3840]) ^ LODWORD(STACK[0x3C90]) ^ LODWORD(STACK[0x3940]) ^ LODWORD(STACK[0x3800]) ^ LODWORD(STACK[0x3860]) ^ LODWORD(STACK[0x3D08]) ^ LODWORD(STACK[0x3CD0]) ^ LODWORD(STACK[0x3830]) ^ LODWORD(STACK[0x3D48]) ^ LODWORD(STACK[0x3CF8]) ^ LODWORD(STACK[0x3D50]) ^ v54;
  LODWORD(v68) = LODWORD(STACK[0x3D98]) ^ 0xBE23320B;
  LODWORD(v83) = STACK[0x3838];
  LODWORD(STACK[0x3DF0]) = LODWORD(STACK[0x3838]) ^ LODWORD(STACK[0x3CA0]);
  v94 = v93 ^ v83 ^ LODWORD(STACK[0x3CE8]) ^ LODWORD(STACK[0x3CE0]) ^ v68;
  LODWORD(v83) = LODWORD(STACK[0x3DA8]) ^ 0xEE9B92;
  LODWORD(STACK[0x3838]) = v83;
  LODWORD(STACK[0x3DE8]) = v94 ^ v83 ^ LODWORD(STACK[0x3DC0]) ^ LODWORD(STACK[0x3D00]) ^ LODWORD(STACK[0x3DB8]) ^ LODWORD(STACK[0x3E18]) ^ 0x80BAEE5D;
  LODWORD(v44) = LODWORD(STACK[0x3818]) ^ LODWORD(STACK[0x3DE0]);
  LODWORD(v31) = STACK[0x3868];
  v95 = STACK[0x3BB0];
  LODWORD(v83) = STACK[0x3960];
  LODWORD(v54) = STACK[0x3B90];
  LODWORD(v26) = STACK[0x3BA8];
  LODWORD(v61) = v23 ^ LODWORD(STACK[0x3B90]) ^ LODWORD(STACK[0x3BA8]);
  LODWORD(v23) = STACK[0x3918];
  LODWORD(v48) = LODWORD(STACK[0x3868]) ^ LODWORD(STACK[0x3BB0]) ^ v87 ^ LODWORD(STACK[0x3960]) ^ v44 ^ v61 ^ LODWORD(STACK[0x3918]);
  v96 = STACK[0x3BD0];
  v97 = STACK[0x3BC8];
  LODWORD(v28) = STACK[0x3850];
  LODWORD(v61) = LODWORD(STACK[0x3DA0]) ^ 0x4EF4B76D ^ LODWORD(STACK[0x3E10]) ^ 0x4220;
  LODWORD(STACK[0x3DD8]) = v48 ^ LODWORD(STACK[0x3BD0]) ^ LODWORD(STACK[0x3BC8]) ^ LODWORD(STACK[0x3850]) ^ LODWORD(STACK[0x3CD8]) ^ LODWORD(STACK[0x3D40]) ^ LODWORD(STACK[0x3CC0]) ^ v22 ^ LODWORD(STACK[0x3CF0]) ^ LODWORD(STACK[0x3D78]) ^ LODWORD(STACK[0x3CC8]) ^ v61 ^ 0x7083894A;
  LODWORD(v48) = STACK[0x3880];
  v98 = v80 ^ LODWORD(STACK[0x3880]);
  LODWORD(STACK[0x3820]) = v98;
  LODWORD(v32) = v32 ^ v48;
  LODWORD(STACK[0x3BC0]) = v32;
  LODWORD(v80) = STACK[0x38D8];
  LODWORD(STACK[0x3898]) = v31 ^ LODWORD(STACK[0x38D8]);
  LODWORD(STACK[0x3C90]) = v29 ^ v80;
  LODWORD(STACK[0x3CA0]) = v33 ^ v48;
  LODWORD(v68) = v80 ^ v48 ^ v32 ^ v98 ^ v68 ^ v33 ^ v48 ^ v31 ^ v80 ^ v29 ^ v80;
  LODWORD(v29) = LODWORD(STACK[0x3B98]) ^ v48;
  LODWORD(STACK[0x3860]) = v29;
  LODWORD(STACK[0x3940]) = v95 ^ v80;
  LODWORD(STACK[0x3BD8]) = v34 ^ v48;
  LODWORD(v68) = v68 ^ v29 ^ v34 ^ v48 ^ v95 ^ v80;
  LODWORD(v31) = v80;
  LODWORD(v32) = LODWORD(STACK[0x3D08]) ^ v80;
  LODWORD(STACK[0x3858]) = v32;
  LODWORD(v29) = v83 ^ v80;
  LODWORD(STACK[0x3848]) = v83 ^ v80;
  LODWORD(v80) = v44 ^ v80;
  LODWORD(STACK[0x3960]) = v80;
  LODWORD(v83) = LODWORD(STACK[0x3D48]) ^ v48;
  LODWORD(STACK[0x3B98]) = v83;
  v99 = LODWORD(STACK[0x37F8]) ^ v48;
  LODWORD(STACK[0x3BA0]) = v99;
  v100 = v68 ^ v99 ^ v29 ^ v32 ^ v80 ^ v83;
  LODWORD(v68) = LODWORD(STACK[0x3CD0]) ^ v31;
  LODWORD(STACK[0x3868]) = v68;
  LODWORD(STACK[0x3B90]) = v54 ^ v48;
  LODWORD(v80) = LODWORD(STACK[0x3CF8]) ^ v31;
  LODWORD(STACK[0x3D08]) = v80;
  LODWORD(v68) = v68 ^ v54 ^ v48 ^ v80 ^ LODWORD(STACK[0x3838]);
  LODWORD(v83) = LODWORD(STACK[0x3D50]) ^ v31;
  LODWORD(STACK[0x3D48]) = v83;
  v101 = v100 ^ v68 ^ v83;
  LODWORD(STACK[0x3840]) = v28 ^ v31;
  LODWORD(STACK[0x3918]) = v23 ^ v31;
  LODWORD(STACK[0x3BA8]) = v26 ^ v31;
  LODWORD(v68) = LODWORD(STACK[0x3810]) ^ v31;
  LODWORD(STACK[0x3CD0]) = v68;
  LODWORD(STACK[0x3D50]) = v96 ^ v31;
  LODWORD(STACK[0x3BB0]) = v97 ^ v48;
  v102 = v101 ^ v26 ^ v31 ^ v68 ^ v23 ^ v31 ^ v96 ^ v31 ^ v97 ^ v48 ^ v28 ^ v31;
  LODWORD(v32) = LODWORD(STACK[0x3CE8]) ^ v48;
  LODWORD(STACK[0x3850]) = v32;
  LODWORD(v68) = LODWORD(STACK[0x3CE0]) ^ v48;
  LODWORD(STACK[0x3BC8]) = v68;
  LODWORD(v54) = LODWORD(STACK[0x3CC0]) ^ v48;
  LODWORD(STACK[0x3BD0]) = v54;
  LODWORD(v80) = LODWORD(STACK[0x3DC0]) ^ v48;
  LODWORD(STACK[0x3CC0]) = v80;
  LODWORD(v44) = LODWORD(STACK[0x3D40]) ^ v48;
  LODWORD(STACK[0x3DC0]) = v44;
  LODWORD(v83) = LODWORD(STACK[0x3CD8]) ^ v48;
  LODWORD(STACK[0x3D40]) = v83;
  LODWORD(v26) = v48;
  v103 = v102 ^ v32 ^ v68 ^ v80 ^ v83 ^ LODWORD(STACK[0x3DF0]) ^ v44 ^ v54;
  LODWORD(v68) = LODWORD(STACK[0x3D78]) ^ v31;
  LODWORD(v48) = LODWORD(STACK[0x3D00]) ^ v48;
  LODWORD(STACK[0x3D78]) = v48;
  LODWORD(v80) = LODWORD(STACK[0x3808]) ^ v26;
  LODWORD(STACK[0x3CD8]) = v80;
  LODWORD(v44) = LODWORD(STACK[0x3CF0]) ^ v26;
  LODWORD(STACK[0x3D00]) = v44;
  LODWORD(v83) = LODWORD(STACK[0x3DB8]) ^ v31;
  LODWORD(STACK[0x3DB8]) = v83;
  LODWORD(v54) = LODWORD(STACK[0x3CC8]) ^ v31;
  LODWORD(v44) = v103 ^ v80 ^ v44 ^ v48 ^ v83 ^ v68 ^ LODWORD(STACK[0x3E18]) ^ v61 ^ v54 ^ 0xF0396717;
  LODWORD(STACK[0x3838]) = v44;
  LODWORD(v32) = STACK[0x38C0];
  LODWORD(v31) = STACK[0x38D0];
  v104 = ((STACK[0x3828] & LODWORD(STACK[0x38D0])) >> v88) | ((STACK[0x3828] & LODWORD(STACK[0x38C0])) << v89);
  LODWORD(STACK[0x3DD0]) = ((STACK[0x3DD0] & LODWORD(STACK[0x38D0])) >> v91) ^ STACK[0x3930];
  LODWORD(v21) = STACK[0x3D30] + STACK[0x3D38];
  LODWORD(STACK[0x3CF8]) = v21 ^ LODWORD(STACK[0x3CB8]) ^ v68;
  LODWORD(v80) = STACK[0x38F0];
  LODWORD(v23) = STACK[0x38F8];
  LODWORD(STACK[0x3CF0]) = v21 ^ v54 ^ ((((STACK[0x38F0] & 0x362433F6 ^ 0x1B1219FB) & v32) << v89) + (((STACK[0x38F0] & 0x362433F6 ^ 0x1B1219FBu) & STACK[0x38F8]) >> v91));
  LODWORD(v61) = STACK[0x38F4];
  LODWORD(STACK[0x3CE8]) = v21 ^ LODWORD(STACK[0x3820]) ^ (((v23 & (STACK[0x38F4] & 0x2D3F6B2E ^ 0x169FB597)) >> v88) + (((STACK[0x38F4] & 0x2D3F6B2E ^ 0x169FB597) & v32) << v89));
  v105 = STACK[0x38A0];
  LODWORD(STACK[0x3CC8]) = (STACK[0x3C28] >> v88) | ((STACK[0x3C30] & STACK[0x38A0]) << v90);
  LODWORD(STACK[0x3C30]) = (STACK[0x3BF0] << v90) | ((v23 & STACK[0x3BF8]) >> v88);
  LODWORD(STACK[0x3C28]) = (((v61 & 0x11B6E102 ^ 0x8DB7081) & v31) >> v91) + (((v61 & 0x11B6E102 ^ 0x8DB7081) & v32) << v89);
  LODWORD(STACK[0x3BF8]) = (((v80 & 0x909F3156 ^ 0x484F98AB) & v32) << v89) ^ (((v80 & 0x909F3156 ^ 0x484F98AB) & v31) >> v91);
  LODWORD(STACK[0x3BF0]) = (STACK[0x3BE0] >> v88) ^ STACK[0x3BE8];
  LODWORD(STACK[0x3BE8]) = ((STACK[0x3B50] & v105) << v90) ^ ((STACK[0x3B50] & v23) >> v91);
  LODWORD(STACK[0x3C60]) = ((STACK[0x3C60] & v32) << v89) | ((STACK[0x3C60] & v31) >> v88);
  LODWORD(STACK[0x3BE0]) = ((v105 & (v61 & 0x4D32179E ^ 0x26990BCF)) << v90) + ((v23 & (v61 & 0x4D32179E ^ 0x26990BCF)) >> v91);
  LODWORD(STACK[0x3C18]) = ((STACK[0x3C18] & v31) >> v91) + (STACK[0x3C10] << v90);
  LODWORD(STACK[0x3C10]) = ((v23 & STACK[0x3B60]) >> v88) + ((STACK[0x3B60] & v32) << v89);
  LODWORD(STACK[0x3B60]) = ((v105 & STACK[0x39C0]) << v89) ^ STACK[0x39D0];
  LODWORD(STACK[0x3B50]) = ((STACK[0x3B30] & v31) >> v88) | (STACK[0x3B18] << v89);
  LODWORD(STACK[0x3B30]) = (STACK[0x39A0] >> v91) ^ STACK[0x39D8];
  LODWORD(STACK[0x3B18]) = ((STACK[0x3B10] & v105) << v90) | ((STACK[0x3B10] & v23) >> v91);
  LODWORD(STACK[0x3C20]) = ((STACK[0x3C50] & v31) >> v88) | (STACK[0x3C20] << v89);
  LODWORD(STACK[0x3CE0]) = 2001324645 * ((v44 ^ LODWORD(STACK[0x3DE8])) - LODWORD(STACK[0x3DD8]));
  LODWORD(STACK[0x3B10]) = (STACK[0x39F0] >> v91) + STACK[0x3A20];
  LODWORD(STACK[0x3A20]) = ((v105 & STACK[0x3C58]) << v90) ^ ((v23 & STACK[0x3C58]) >> v88);
  LODWORD(STACK[0x3B28]) = ((STACK[0x3B28] & v32) << v90) + (STACK[0x3B20] >> v91);
  LODWORD(STACK[0x3B20]) = (((v80 & 0xEE5583C2 ^ 0x772AC1E1) & v23) >> v88) + (((v80 & 0xEE5583C2 ^ 0x772AC1E1) & v105) << v89);
  LODWORD(STACK[0x39F0]) = STACK[0x3C80] ^ ((STACK[0x3C78] & v31) >> v88);
  LODWORD(STACK[0x39D8]) = STACK[0x3C70] + ((STACK[0x3C68] & v23) >> v91);
  LODWORD(STACK[0x39D0]) = (((v80 & 0x31D05E74 ^ 0x98E82F3A) & v105) << v90) + (((v80 & 0x31D05E74 ^ 0x98E82F3A) & v23) >> v88);
  LODWORD(STACK[0x39E8]) = (STACK[0x39E0] << v89) | STACK[0x39E8];
  LODWORD(STACK[0x39E0]) = (((v61 & 0xBDDC2C28 ^ 0x5EEE1614) & v32) << v89) + (((v61 & 0xBDDC2C28 ^ 0x5EEE1614) & v31) >> v91);
  LODWORD(STACK[0x3A10]) = (STACK[0x3A08] << v90) | STACK[0x3A10];
  LODWORD(STACK[0x3AF0]) = (STACK[0x3AF0] << v89) + (STACK[0x3AE8] >> v88);
  LODWORD(STACK[0x3AE8]) = (STACK[0x3AE0] << v90) ^ (STACK[0x3AD8] >> v91);
  LODWORD(STACK[0x3AE0]) = ((STACK[0x3C88] & v32) << v90) | ((STACK[0x3C88] & v23) >> v88);
  LODWORD(STACK[0x3AD8]) = ((v105 & STACK[0x3C98]) << v89) ^ ((STACK[0x3C98] & v31) >> v91);
  LODWORD(STACK[0x3A08]) = (STACK[0x3CB0] << v89) | (STACK[0x3CA8] >> v91);
  LODWORD(STACK[0x39C0]) = STACK[0x3C08] ^ ((STACK[0x3C00] & v32) << v90);
  LODWORD(STACK[0x39A0]) = ((STACK[0x3B08] & v31) >> v88) | ((STACK[0x3B08] & v32) << v89);
  LODWORD(STACK[0x3A50]) = (STACK[0x3A48] << v90) ^ STACK[0x3A50];
  v106 = STACK[0x3A78];
  LODWORD(STACK[0x3B08]) = STACK[0x3A78] + STACK[0x3A18];
  LODWORD(STACK[0x3A78]) = (STACK[0x3D88] << v90) ^ v106;
  v107 = STACK[0x3A80];
  LODWORD(STACK[0x3D88]) = STACK[0x3A80] + STACK[0x3A30];
  LODWORD(STACK[0x3A80]) = v107 | (STACK[0x3D90] << v89);
  LODWORD(STACK[0x3D90]) = (((v80 & 0xA9BDBD82 ^ 0x54DEDEC1) & v31) >> v88) ^ STACK[0x3AC8] ^ (((v80 & 0xA9BDBD82 ^ LODWORD(STACK[0x3AA0])) & v32) << v89);
  LODWORD(STACK[0x3AC8]) = ((v105 & (v61 & 0x757C000A ^ 0x3ABE0005)) << v90) + ((v23 & (v61 & 0x757C000A ^ 0x3ABE0005)) >> v91);
  LODWORD(v105) = STACK[0x38B8];
  LODWORD(v32) = STACK[0x3610];
  LODWORD(v107) = STACK[0x3508];
  v108 = STACK[0x3E38];
  v109 = STACK[0x3E30];
  LODWORD(STACK[0x3AA0]) = (((STACK[0x38B8] & 0xB4FDACB ^ 0x169FB597u) & STACK[0x3610]) >> STACK[0x3E38]) | (((STACK[0x38B8] & 0xB4FDACB ^ 0x169FB597u) & STACK[0x3508]) << STACK[0x3E30]);
  LODWORD(v31) = STACK[0x3510];
  LODWORD(v90) = STACK[0x3628];
  LODWORD(STACK[0x3A48]) = (((v105 & 0xD890CFD ^ 0x1B1219FB) & STACK[0x3510]) << v109) ^ (((v105 & 0xD890CFD ^ 0x1B1219FB) & STACK[0x3628]) >> v108);
  LODWORD(v83) = STACK[0x38C8];
  v110 = STACK[0x3E28];
  v111 = STACK[0x3E20];
  LODWORD(STACK[0x3A30]) = ((v31 & (STACK[0x38C8] & 0x4585728F ^ 0x8B0AE51E)) << STACK[0x3E28]) ^ ((v90 & (STACK[0x38C8] & 0x4585728F ^ 0x8B0AE51E)) >> STACK[0x3E20]);
  LODWORD(STACK[0x3A18]) = ((v32 & (v83 & 0x68CFD48E ^ 0xD19FA91D)) >> v111) + ((v107 & (v83 & 0x68CFD48E ^ 0xD19FA91D)) << v110);
  LODWORD(STACK[0x3930]) = ((v32 & (v83 & 0x4830E70A ^ 0x9061CE14)) >> v108) + ((v107 & (v83 & 0x4830E70A ^ 0x9061CE14)) << v110);
  LODWORD(STACK[0x38F4]) = (((v105 & 0x2427CC55 ^ 0x484F98AB) & v107) << v110) ^ (((v105 & 0x2427CC55 ^ 0x484F98AB) & v32) >> v111);
  LODWORD(STACK[0x38F0]) = ((v90 & (v83 & 0x46DB840 ^ 0x8DB7081)) >> v108) | ((v31 & (v83 & 0x46DB840 ^ 0x8DB7081)) << v109);
  LODWORD(STACK[0x3830]) = (((v105 & 0x20CFEA65 ^ 0x419FD4CB) & v31) << v109) ^ (((v105 & 0x20CFEA65 ^ 0x419FD4CB) & v90) >> v111);
  LODWORD(STACK[0x3828]) = ((v32 & (v83 & 0xFFBB845 ^ 0x1FF7708B)) >> v108) + ((v31 & (v83 & 0xFFBB845 ^ 0x1FF7708B)) << v110);
  LODWORD(STACK[0x3820]) = (((v105 & 0x7EDCC85E ^ 0xFDB990BC) & v90) >> v111) | (((v105 & 0x7EDCC85E ^ 0xFDB990BC) & v107) << v109);
  LODWORD(STACK[0x3818]) = (((v105 & 0x50D0D46 ^ 0xA1A1A8C) & v107) << v109) | (((v105 & 0x50D0D46 ^ 0xA1A1A8C) & v90) >> v111);
  LODWORD(STACK[0x3810]) = ((v32 & (v83 & 0x134C85E7 ^ 0x26990BCF)) >> v108) ^ ((v31 & (v83 & 0x134C85E7 ^ 0x26990BCF)) << v110);
  LODWORD(STACK[0x3808]) = ((v32 & (v83 & 0x3E96F950 ^ 0x7D2DF2A0)) >> v111) ^ ((v107 & (v83 & 0x3E96F950 ^ 0x7D2DF2A0)) << v110);
  LODWORD(STACK[0x3800]) = (((v105 & 0x6C9DA660 ^ 0xD93B4CC1) & v90) >> v108) ^ (((v105 & 0x6C9DA660 ^ 0xD93B4CC1) & v107) << v109);
  LODWORD(STACK[0x37F8]) = ((v32 & (v83 & 0x45788379 ^ 0x8AF106F3)) >> v111) | ((v31 & (v83 & 0x45788379 ^ 0x8AF106F3)) << v110);
  LODWORD(STACK[0x37F0]) = (((v105 & 0x77B14D9F ^ 0xEF629B3E) & v31) << v109) + (((v105 & 0x77B14D9F ^ 0xEF629B3E) & v90) >> v108);
  LODWORD(STACK[0x37E8]) = (((v105 & 0x4BCBFFEE ^ 0x9797FFDC) & v31) << v109) ^ (((v105 & 0x4BCBFFEE ^ 0x9797FFDC) & v32) >> v111);
  LODWORD(STACK[0x37E4]) = ((v90 & (v83 & 0x4E4CDAB0 ^ 0x9C99B561)) >> v108) ^ ((v31 & (v83 & 0x4E4CDAB0 ^ 0x9C99B561)) << v109);
  LODWORD(STACK[0x37D8]) = (((v105 & 0x4D623406 ^ 0x9AC4680D) & v107) << v110) ^ (((v105 & 0x4D623406 ^ 0x9AC4680D) & v32) >> v111);
  LODWORD(STACK[0x37D0]) = ((v90 & (v83 & 0x4AA580BC ^ 0x954B0179)) >> v108) + ((v107 & (v83 & 0x4AA580BC ^ 0x954B0179)) << v110);
  LODWORD(STACK[0x37C8]) = ((v32 & (v83 & 0x3B9560F0 ^ 0x772AC1E1)) >> v111) | ((v31 & (v83 & 0x3B9560F0 ^ 0x772AC1E1)) << v109);
  LODWORD(STACK[0x37C0]) = ((v32 & (v83 & 0x19C68CE4 ^ 0x338D19C9)) >> v111) ^ ((v107 & (v83 & 0x19C68CE4 ^ 0x338D19C9)) << v109);
  LODWORD(STACK[0x37B8]) = (((v105 & 0x129FE72D ^ 0x253FCE5B) & v107) << v110) | (((v105 & 0x129FE72D ^ 0x253FCE5B) & v90) >> v108);
  LODWORD(STACK[0x37B0]) = (((v105 & 0x339F3E14 ^ 0x673E7C28) & v31) << v110) ^ (((v105 & 0x339F3E14 ^ 0x673E7C28) & v90) >> v108);
  LODWORD(STACK[0x37A8]) = (((v105 & 0x44FB5BDB ^ 0x89F6B7B7) & v32) >> v111) + (((v105 & 0x44FB5BDB ^ 0x89F6B7B7) & v107) << v110);
  LODWORD(STACK[0x37A0]) = ((v90 & (v83 & 0x3E5E307F ^ 0x7CBC60FE)) >> v108) + ((v31 & (v83 & 0x3E5E307F ^ 0x7CBC60FE)) << v109);
  LODWORD(STACK[0x3798]) = ((v32 & (v83 & 0x41E65045 ^ 0x83CCA08B)) >> v108) | ((v31 & (v83 & 0x41E65045 ^ 0x83CCA08B)) << v109);
  LODWORD(STACK[0x3790]) = (((v105 & 0x32349F89 ^ 0x64693F12) & v107) << v110) | (((v105 & 0x32349F89 ^ 0x64693F12) & v90) >> v111);
  LODWORD(STACK[0x3788]) = (((v105 & 0x2F770B0A ^ 0x5EEE1614) & v32) >> v108) + (((v105 & 0x2F770B0A ^ 0x5EEE1614) & v107) << v109);
  LODWORD(STACK[0x3780]) = ((v31 & (v83 & 0x4C74179D ^ 0x98E82F3A)) << v110) ^ ((v90 & (v83 & 0x4C74179D ^ 0x98E82F3A)) >> v111);
  LODWORD(STACK[0x3778]) = (((v105 & 0x3D48938 ^ 0x7A91271) & v32) >> v108) | (((v105 & 0x3D48938 ^ 0x7A91271) & v31) << v110);
  LODWORD(STACK[0x3774]) = ((v90 & (v83 & 0x7331DDCF ^ 0xE663BB9E)) >> v111) | ((v107 & (v83 & 0x7331DDCF ^ 0xE663BB9E)) << v109);
  LODWORD(STACK[0x3768]) = ((v31 & (v83 & 0x38629B28 ^ 0x70C53650)) << v109) + ((v90 & (v83 & 0x38629B28 ^ 0x70C53650)) >> v111);
  LODWORD(STACK[0x3760]) = (((v105 & 0x48EC83D7 ^ 0x91D907AF) & v32) >> v108) | (((v105 & 0x48EC83D7 ^ 0x91D907AF) & v107) << v110);
  LODWORD(STACK[0x3758]) = (((v105 & 0xDB8EFF1 ^ 0x1B71DFE3) & v31) << v110) + (((v105 & 0xDB8EFF1 ^ 0x1B71DFE3) & v32) >> v111);
  LODWORD(v88) = ((v90 & (v83 & 0x637111D9 ^ 0xC6E223B2)) >> v108) + ((v107 & (v83 & 0x637111D9 ^ 0xC6E223B2)) << v109);
  v112 = (((v105 & 0x2E655B13 ^ 0x5CCAB626) & v31) << v110) | (((v105 & 0x2E655B13 ^ 0x5CCAB626) & v32) >> v108);
  v113 = ((v90 & (v83 & 0x621B17F9 ^ 0xC4362FF2)) >> v111) | ((v107 & (v83 & 0x621B17F9 ^ 0xC4362FF2)) << v109);
  LODWORD(v33) = ((v90 & (v83 & 0x1EF7CAE2 ^ 0x3DEF95C5)) >> v108) | ((v31 & (v83 & 0x1EF7CAE2 ^ 0x3DEF95C5)) << v109);
  LODWORD(v29) = (((v105 & 0x2081822D ^ 0x4103045B) & v107) << v110) ^ (((v105 & 0x2081822D ^ 0x4103045B) & v32) >> v111);
  LODWORD(v91) = ((v32 & (v83 & 0x31BDECDE ^ 0x637BD9BD)) >> v108) + ((v31 & (v83 & 0x31BDECDE ^ 0x637BD9BD)) << v110);
  v114 = (((v105 & 0x2236531D ^ 0x446CA63B) & v107) << v109) + (((v105 & 0x2236531D ^ 0x446CA63B) & v90) >> v111);
  LODWORD(v108) = ((v90 & (v83 & 0x2A6F6F60 ^ 0x54DEDEC1)) >> v108) | ((v107 & (v83 & 0x2A6F6F60 ^ 0x54DEDEC1)) << v109);
  LODWORD(v31) = (((v105 & 0x1D5F0002 ^ 0x3ABE0005) & v31) << v110) + (((v105 & 0x1D5F0002 ^ 0x3ABE0005) & v32) >> v111);
  v115 = (226165990 * LODWORD(STACK[0x2308]));
  v116 = (1216567007 * LODWORD(STACK[0x2308]));
  v117 = (-979903296 * LODWORD(STACK[0x2310]));
  v118 = (-47088602 * LODWORD(STACK[0x2310]));
  LODWORD(STACK[0x3CB8]) = LODWORD(STACK[0x3DD0]) ^ LODWORD(STACK[0x3E18]);
  LODWORD(STACK[0x3CB0]) = v21 ^ LODWORD(STACK[0x3CC8]) ^ LODWORD(STACK[0x3898]);
  LODWORD(STACK[0x3CA8]) = v21 ^ LODWORD(STACK[0x3C30]) ^ LODWORD(STACK[0x3CA0]);
  LODWORD(STACK[0x3CA0]) = v21 ^ LODWORD(STACK[0x3C28]) ^ LODWORD(STACK[0x3860]);
  LODWORD(STACK[0x3C98]) = v21 ^ LODWORD(STACK[0x3BF8]) ^ LODWORD(STACK[0x3C90]);
  LODWORD(STACK[0x3C90]) = v21 ^ LODWORD(STACK[0x3BF0]) ^ LODWORD(STACK[0x3848]);
  LODWORD(STACK[0x3C88]) = v21 ^ LODWORD(STACK[0x3BE8]) ^ LODWORD(STACK[0x3940]);
  LODWORD(STACK[0x3C80]) = v21 ^ LODWORD(STACK[0x3C60]) ^ LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x3C78]) = v21 ^ LODWORD(STACK[0x3BE0]) ^ LODWORD(STACK[0x3840]);
  LODWORD(v107) = STACK[0x3DE8];
  LODWORD(v110) = STACK[0x3DD8];
  LODWORD(v111) = LODWORD(STACK[0x3BC0]) ^ LODWORD(STACK[0x3DC8]) ^ v21 ^ LODWORD(STACK[0x3DD8]) ^ LODWORD(STACK[0x3DE8]);
  LODWORD(STACK[0x3C70]) = v21 ^ LODWORD(STACK[0x3C18]) ^ LODWORD(STACK[0x3868]);
  LODWORD(STACK[0x3C68]) = v21 ^ LODWORD(STACK[0x3C10]) ^ LODWORD(STACK[0x3960]);
  LODWORD(STACK[0x3C60]) = v21 ^ LODWORD(STACK[0x3B60]) ^ LODWORD(STACK[0x3850]);
  LODWORD(STACK[0x3C58]) = v21 ^ LODWORD(STACK[0x3B50]) ^ LODWORD(STACK[0x3918]);
  LODWORD(STACK[0x3C50]) = v21 ^ LODWORD(STACK[0x3B30]) ^ LODWORD(STACK[0x3BA0]);
  LODWORD(STACK[0x3C30]) = v21 ^ LODWORD(STACK[0x3B18]) ^ LODWORD(STACK[0x3B98]);
  LODWORD(STACK[0x3C28]) = v21 ^ LODWORD(STACK[0x3C20]) ^ LODWORD(STACK[0x3BD8]);
  LODWORD(STACK[0x3C20]) = v21 ^ LODWORD(STACK[0x3B10]) ^ LODWORD(STACK[0x3B90]);
  LODWORD(STACK[0x3C18]) = v21 ^ LODWORD(STACK[0x3A20]) ^ LODWORD(STACK[0x3BC8]);
  LODWORD(STACK[0x3C10]) = LODWORD(STACK[0x3B28]) ^ LODWORD(STACK[0x3DA0]);
  LODWORD(STACK[0x3C08]) = LODWORD(STACK[0x3B20]) ^ LODWORD(STACK[0x3D98]);
  LODWORD(STACK[0x3C00]) = v21 ^ LODWORD(STACK[0x39F0]) ^ LODWORD(STACK[0x3BA8]);
  LODWORD(STACK[0x3BF8]) = LODWORD(STACK[0x39D8]) ^ LODWORD(STACK[0x3DA8]);
  LODWORD(STACK[0x3BF0]) = v21 ^ LODWORD(STACK[0x3BB8]) ^ LODWORD(STACK[0x3BD0]);
  LODWORD(STACK[0x3BE8]) = v21 ^ LODWORD(STACK[0x39D0]) ^ LODWORD(STACK[0x3CC0]);
  LODWORD(STACK[0x3BE0]) = v21 ^ LODWORD(STACK[0x39E8]) ^ LODWORD(STACK[0x3D48]);
  LODWORD(STACK[0x3BD8]) = v21 ^ LODWORD(STACK[0x39E0]) ^ LODWORD(STACK[0x3CD8]);
  LODWORD(STACK[0x3BD0]) = v21 ^ LODWORD(STACK[0x3A10]) ^ LODWORD(STACK[0x3D40]);
  LODWORD(STACK[0x3BC8]) = v21 ^ LODWORD(STACK[0x3AF0]) ^ LODWORD(STACK[0x3CD0]);
  LODWORD(STACK[0x3BC0]) = v21 ^ LODWORD(STACK[0x3AE8]) ^ LODWORD(STACK[0x3BB0]);
  LODWORD(STACK[0x3BB8]) = v21 ^ LODWORD(STACK[0x3AE0]) ^ LODWORD(STACK[0x3D50]);
  LODWORD(STACK[0x3BB0]) = v21 ^ LODWORD(STACK[0x3AD8]) ^ LODWORD(STACK[0x3DF0]);
  LODWORD(STACK[0x3BA8]) = v21 ^ LODWORD(STACK[0x3A08]) ^ LODWORD(STACK[0x3D00]);
  LODWORD(STACK[0x3BA0]) = v21 ^ LODWORD(STACK[0x39C0]) ^ LODWORD(STACK[0x3DB8]);
  LODWORD(STACK[0x3B98]) = v21 ^ LODWORD(STACK[0x39A0]) ^ LODWORD(STACK[0x3DC0]);
  LODWORD(STACK[0x3B90]) = v21 ^ LODWORD(STACK[0x3A50]) ^ LODWORD(STACK[0x3D78]);
  LODWORD(STACK[0x3B88]) ^= LODWORD(STACK[0x3B08]) ^ v26 ^ LODWORD(STACK[0x3A78]) ^ LODWORD(STACK[0x3DB0]) ^ v21;
  LODWORD(STACK[0x3B80]) = LODWORD(STACK[0x3A80]) ^ v26 ^ LODWORD(STACK[0x3D88]) ^ LODWORD(STACK[0x3DE0]) ^ v21 ^ bswap32(STACK[0x3B80]);
  LODWORD(STACK[0x3B78]) = LODWORD(STACK[0x3AC8]) ^ STACK[0x3B78];
  LODWORD(STACK[0x3B70]) ^= LODWORD(STACK[0x3AA0]);
  LODWORD(STACK[0x3B68]) ^= LODWORD(STACK[0x3A48]);
  LODWORD(v83) = STACK[0x34F8];
  LODWORD(v26) = STACK[0x3D18];
  LODWORD(STACK[0x3B60]) = LODWORD(STACK[0x34F8]) ^ LODWORD(STACK[0x3A30]) ^ LODWORD(STACK[0x3D18]) ^ LODWORD(STACK[0x3B58]);
  LODWORD(STACK[0x3B58]) = LODWORD(STACK[0x3A18]) ^ LODWORD(STACK[0x3B48]);
  LODWORD(STACK[0x3B50]) = LODWORD(STACK[0x3930]) ^ LODWORD(STACK[0x3B40]);
  LODWORD(STACK[0x3B48]) = LODWORD(STACK[0x38F4]) ^ LODWORD(STACK[0x3B00]);
  LODWORD(STACK[0x3B40]) = LODWORD(STACK[0x38F0]) ^ LODWORD(STACK[0x3AF8]);
  LODWORD(STACK[0x3B38]) ^= LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x3B30]) = LODWORD(STACK[0x3828]) ^ LODWORD(STACK[0x3A98]);
  LODWORD(STACK[0x3B28]) = LODWORD(STACK[0x3820]) ^ LODWORD(STACK[0x3AAC]);
  LODWORD(STACK[0x3B20]) = LODWORD(STACK[0x3818]) ^ LODWORD(STACK[0x3A88]);
  LODWORD(STACK[0x3B18]) = LODWORD(STACK[0x3810]) ^ LODWORD(STACK[0x3A70]);
  LODWORD(STACK[0x3B10]) = LODWORD(STACK[0x3808]) ^ (-1433948657 * (v110 ^ v107));
  LODWORD(v34) = STACK[0x3838];
  LODWORD(STACK[0x3B08]) = (-1433948657 * LODWORD(STACK[0x3838])) ^ LODWORD(STACK[0x3A68]);
  LODWORD(STACK[0x3B00]) = LODWORD(STACK[0x3800]) ^ LODWORD(STACK[0x3A58]);
  LODWORD(STACK[0x3AF8]) = LODWORD(STACK[0x37F8]) ^ LODWORD(STACK[0x3A40]);
  LODWORD(STACK[0x3AF0]) = LODWORD(STACK[0x37F0]) ^ LODWORD(STACK[0x3A60]);
  LODWORD(STACK[0x3AE8]) = LODWORD(STACK[0x37E8]) ^ LODWORD(STACK[0x3A38]);
  LODWORD(STACK[0x3AE0]) = LODWORD(STACK[0x37E4]) ^ LODWORD(STACK[0x39B0]);
  LODWORD(STACK[0x3AD8]) = LODWORD(STACK[0x37D8]) ^ LODWORD(STACK[0x3A04]);
  LODWORD(STACK[0x3AC8]) = LODWORD(STACK[0x37D0]) ^ LODWORD(STACK[0x3A28]);
  LODWORD(STACK[0x3AAC]) = LODWORD(STACK[0x37C8]) ^ LODWORD(STACK[0x3980]);
  LODWORD(STACK[0x3AA0]) = LODWORD(STACK[0x37C0]) ^ LODWORD(STACK[0x3998]);
  LODWORD(STACK[0x3A98]) = LODWORD(STACK[0x37B8]) ^ LODWORD(STACK[0x3988]);
  v119 = LODWORD(STACK[0x37B0]) ^ v83;
  LODWORD(STACK[0x3A88]) = v111 ^ v34;
  LODWORD(STACK[0x3A80]) = v119 ^ v26 ^ v107 ^ v110 ^ v34 ^ LODWORD(STACK[0x39A8]);
  LODWORD(STACK[0x3A78]) = LODWORD(STACK[0x37A8]) ^ LODWORD(STACK[0x3970]);
  LODWORD(STACK[0x3A70]) = LODWORD(STACK[0x37A0]) ^ LODWORD(STACK[0x3978]);
  LODWORD(STACK[0x3A68]) = LODWORD(STACK[0x3798]) ^ LODWORD(STACK[0x3968]);
  LODWORD(STACK[0x3A60]) = LODWORD(STACK[0x3790]) ^ LODWORD(STACK[0x3958]);
  LODWORD(STACK[0x3A58]) = LODWORD(STACK[0x3788]) ^ LODWORD(STACK[0x3948]);
  LODWORD(STACK[0x3A50]) = v83 ^ LODWORD(STACK[0x3780]) ^ v26 ^ LODWORD(STACK[0x3950]);
  LODWORD(STACK[0x3A48]) = LODWORD(STACK[0x3778]) ^ LODWORD(STACK[0x3938]);
  LODWORD(STACK[0x3A40]) = LODWORD(STACK[0x3774]) ^ LODWORD(STACK[0x3928]);
  LODWORD(STACK[0x3A38]) = v83 ^ LODWORD(STACK[0x3768]) ^ v26 ^ LODWORD(STACK[0x38EC]);
  LODWORD(STACK[0x3A30]) = LODWORD(STACK[0x3760]) ^ LODWORD(STACK[0x3900]);
  LODWORD(STACK[0x3A28]) = LODWORD(STACK[0x3758]) ^ LODWORD(STACK[0x3910]);
  LODWORD(STACK[0x3A20]) = v88 ^ LODWORD(STACK[0x3990]);
  LODWORD(STACK[0x3A18]) = v112 ^ LODWORD(STACK[0x38A8]);
  LODWORD(STACK[0x3A10]) = v83 ^ v113 ^ v26 ^ LODWORD(STACK[0x38E8]);
  LODWORD(STACK[0x3A08]) = v33 ^ LODWORD(STACK[0x38E0]);
  LODWORD(STACK[0x3A04]) = v29 ^ LODWORD(STACK[0x38B0]);
  LODWORD(STACK[0x39F0]) = v91 ^ LODWORD(STACK[0x3890]);
  LODWORD(STACK[0x39E8]) = v114 ^ LODWORD(STACK[0x3888]);
  LODWORD(STACK[0x39E0]) = v108 ^ LODWORD(STACK[0x3878]);
  v120 = *(v9 + 8 * SLODWORD(STACK[0x3E10]));
  LODWORD(STACK[0x39D8]) = v31 ^ LODWORD(STACK[0x3870]);
  LODWORD(STACK[0x39D0]) = LODWORD(STACK[0x3D90]) ^ LODWORD(STACK[0x38D8]);
  LODWORD(STACK[0x3D00]) = v21;
  LODWORD(STACK[0x39C8]) ^= v21;
  STACK[0x39C0] = BYTE2(v117);
  STACK[0x39B0] = BYTE1(v117);
  STACK[0x39A8] = v117 >> 24;
  STACK[0x3CC8] = v117;
  STACK[0x39A0] = v117 & 0xC0;
  STACK[0x3998] = v115 >> 24;
  STACK[0x3990] = BYTE2(v115);
  STACK[0x3988] = v115 & 0xFE;
  STACK[0x3CD8] = v115;
  STACK[0x3980] = BYTE1(v115);
  STACK[0x3978] = v118 >> 24;
  STACK[0x3970] = BYTE2(v118);
  STACK[0x3968] = BYTE1(v118);
  STACK[0x3CC0] = v118;
  STACK[0x3960] = v118 & 0xFE;
  STACK[0x3958] = v116 >> 24;
  STACK[0x3950] = BYTE2(v116);
  STACK[0x3948] = BYTE1(v116);
  STACK[0x3CD0] = v116;
  STACK[0x3940] = v116;
  return v120(v92, v104);
}

uint64_t sub_100DDEAA0()
{
  LODWORD(STACK[0x3D20]) = 0;
  v2 = *(v1 + 8 * (v0 - 11033));
  LODWORD(STACK[0x2BB0]) = 29;
  LODWORD(STACK[0x3D98]) = 2;
  v3 = STACK[0x2260];
  STACK[0x3D60] = STACK[0x2260];
  v4 = STACK[0x2618];
  STACK[0x3D88] = STACK[0x2618];
  STACK[0x3B20] = v3;
  STACK[0x3CF0] = v4;
  STACK[0x3650] = LODWORD(STACK[0x3AD8]);
  LODWORD(STACK[0x3AE0]) = STACK[0x39F0];
  v5 = STACK[0x3318];
  LODWORD(STACK[0x3E40]) = STACK[0x3318];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  v6 = STACK[0x39C0];
  STACK[0x3540] = STACK[0x39C0];
  LODWORD(STACK[0x3710]) = STACK[0x3860];
  LODWORD(STACK[0x3D90]) = v6;
  LODWORD(STACK[0x3CE8]) = v5;
  LODWORD(STACK[0x3810]) = STACK[0x3D80];
  LODWORD(STACK[0x1188]) = STACK[0x3A28];
  LODWORD(STACK[0x3268]) = v6;
  LODWORD(STACK[0x3D70]) = v5;
  return v2(v0);
}

uint64_t sub_100DDEBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W8>)
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
  LODWORD(STACK[0x3D88]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  v6 = STACK[0x1BA0];
  v7 = (a5 + 3815) | 0x1008u;
  v8 = LODWORD(STACK[0x1BA0]) == ((a5 + 16466) ^ 0x7401);
  STACK[0x3AF0] = v7;
  v9 = *(v5 + 8 * ((v8 * (v7 - 4636)) ^ a5));
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  v10 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x32E8]) = v10;
  v11 = STACK[0x3E18];
  LODWORD(STACK[0x2B60]) = STACK[0x3E18];
  LODWORD(STACK[0x21F4]) = v11;
  LODWORD(STACK[0x3D68]) = 6;
  LODWORD(STACK[0x3988]) = 39;
  v12 = STACK[0x4A8];
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
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  v13 = STACK[0x1A78];
  LODWORD(STACK[0x2B40]) = STACK[0x1A78];
  LODWORD(v7) = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  STACK[0x3D90] = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3268]) = v13;
  LODWORD(STACK[0x3438]) = v7;
  LODWORD(STACK[0x3998]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = v6;
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  v14 = STACK[0x1100];
  LODWORD(STACK[0x3688]) = 12;
  LODWORD(STACK[0x3E18]) = STACK[0x2144];
  return v9(a1, 0, 0, v12, a2, a3, a4, v14);
}

uint64_t sub_100DDEE34@<X0>(int a1@<W8>)
{
  v5[132] = *v6;
  v5[411] = *(v7 + 8 * v3);
  LODWORD(STACK[0x7F0]) = v4;
  v5[197] = v2;
  LODWORD(STACK[0x156C]) = v1;
  return (*(v7 + 8 * (((v2 == 0) * (a1 ^ 0x819FC21C)) ^ (a1 + 2120248795))))();
}

uint64_t sub_100DDEF68@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1504]) = v2;
  v6 = *(v1 + 2704);
  v7 = 1534937323 * ((0x2759CB86078CDEA1 - ((v5 - 240) | 0x2759CB86078CDEA1) + ((v5 - 240) | 0xD8A63479F873215ELL)) ^ 0x15DEBCBB3E9DDA19);
  STACK[0x25D0] = v7;
  *(v5 - 208) = ((a1 + v3) ^ 0xD1E649E7) + v7;
  *(v5 - 232) = -773437519 - v7 + a1 + v3;
  *(v5 - 228) = v7 + a1 - 723214290;
  STACK[0x25E8] = v6 + v7;
  *(v5 - 224) = v7;
  *(v5 - 220) = (a1 + v3 - 773436972) ^ v7;
  v8 = (*(v4 + 8 * (a1 ^ 0x819FBE38)))(v5 - 240);
  return (*(v4 + 8 * *(v5 - 204)))(v8);
}

uint64_t sub_100DDF104@<X0>(unsigned int a1@<W8>)
{
  STACK[0x3E20] = 0;
  v3 = STACK[0x3C48];
  v4 = STACK[0x3C38];
  v5 = STACK[0x3C40];
  v6 = *(&off_101353600 + (v1 - 12499));
  STACK[0x3D70] = v6 + 11;
  STACK[0x3E10] = v6 + 805;
  v7 = *(v3 + 55) | (*(v4 + 73) << 8) | (*(v3 + 65) << 24) | (v5[59] << 16) | (*(v4 + 26) << 32) | (v5[80] << 40);
  STACK[0x3D68] = v6 + 535;
  v8 = v7 ^ (v5[69] << 56) ^ (v5[4] << 48);
  if (STACK[0x3DA0] <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = STACK[0x3DA0];
  }

  STACK[0x3DC0] = v9;
  v10 = *(v2 + 8 * v1);
  STACK[0x3D98] = a1 << 32;
  return v10(29710, v8, 0x4CA4E40C47FEDC2ALL);
}

uint64_t sub_100DDF588(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v12 = (v8 - 1) & 0xF;
  *(a2 + v8) = *(a3 + v8) ^ v12 ^ *(*(v10 + 8 * a4) - 12 + v12) ^ *(v12 + *(v10 + 8 * a5) - 12 + 3) ^ *(*(v10 + 8 * a7) - 12 + v12 + a6) ^ 0xF;
  return (*(v11 + 8 * (((v8 == -31) * a8) ^ v9)))();
}

uint64_t sub_100DDF5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  LODWORD(a58) = v60 + 13369;
  v61 = *(STACK[0x200] + 8 * v60);
  HIDWORD(a15) = -291748333;
  HIDWORD(a51) = 1855708181;
  HIDWORD(a57) = -1195806937;
  return v61(a1, a2, v61, a4, 975, a6, a7, 612598, a9, a10, a11, 29, &STACK[0xCF0A1], a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_100DDF69C()
{
  v3 = 2 * (STACK[0x52D8] & v2);
  STACK[0x2808] = v3;
  v4 = (v3 ^ v2);
  v5 = STACK[0x52DC];
  v6 = ((((v3 ^ v2) & LOBYTE(STACK[0x4E9E])) >> STACK[0x5328]) | (v4 << STACK[0x5320])) ^ LODWORD(STACK[0x52A4]);
  v7 = v2 ^ ((STACK[0x52DC] & v2) >> 1);
  v8 = STACK[0x5270];
  v9 = v7 & STACK[0x5270];
  v10 = STACK[0x53F8];
  v11 = v7 << STACK[0x53F8];
  v12 = STACK[0x53D8];
  LODWORD(v3) = (v9 >> STACK[0x53D8]) + v11;
  v13 = v3 ^ LODWORD(STACK[0x5294]);
  LODWORD(v11) = STACK[0x5264];
  v14 = v2 ^ ((STACK[0x5264] & v2) >> 1);
  v15 = STACK[0x5290];
  v16 = v14 & STACK[0x5290];
  v17 = STACK[0x3A90];
  STACK[0x30E8] = v13;
  *(v17 + v6) = v13;
  v18 = STACK[0x53F0];
  v19 = v16 >> STACK[0x53F0];
  v20 = (LOBYTE(STACK[0x4E9C]) & v4);
  v21 = STACK[0x53E8];
  v22 = v14 << STACK[0x53E8];
  STACK[0x3CB0] = v22;
  v23 = STACK[0x5280];
  LODWORD(v19) = (v19 | v22) ^ LODWORD(STACK[0x5280]);
  LODWORD(v4) = (v4 << STACK[0x5338]) ^ LODWORD(STACK[0x52A4]);
  v24 = STACK[0x5328];
  STACK[0x3D48] = v20;
  v25 = v20 >> v24;
  v26 = STACK[0x3A70];
  STACK[0x2268] = v25 ^ v4;
  *(v26 + (v19 & ((v0 ^ 0x1E64) - 22892))) = v25 ^ v4;
  LODWORD(v19) = *(STACK[0x5018] + 4 * v2) ^ ((v5 & *(STACK[0x5018] + 4 * v2)) >> 1);
  LODWORD(v3) = (v23 ^ v3);
  *(STACK[0x3AB8] + 4 * v3) = ((v19 & STACK[0x5284]) << v10) ^ LODWORD(STACK[0x5288]) ^ ((v19 & v15) >> v18);
  LODWORD(v19) = *(STACK[0x4EB0] + v2) ^ ((v11 & *(STACK[0x4EB0] + v2)) >> 1);
  *(STACK[0x3AB0] + 4 * v3) = (((v19 & v8) >> v12) | ((v19 & STACK[0x526C]) << v21)) ^ LODWORD(STACK[0x5278]);
  return (*(v1 + 8 * ((43 * (v2 == 255)) ^ v0)))();
}

uint64_t sub_100DDF8F0@<X0>(int a1@<W8>)
{
  v6 = *(v3 + 16 * (((2 * v2) & 0xDF6979FALL) + (v2 ^ 0x3FF7AEBA6FB4BCFDLL) - 0x3FF7AEBA6FB4BCFDLL));
  *(v5 - 232) = a1 + 1997767594 - v1 + 4149;
  *(v5 - 228) = v1 + a1 - 723214290;
  STACK[0x25D0] = v6 ^ v1;
  *(v5 - 208) = v1 + a1 + 1997772795;
  *(v5 - 224) = v1;
  *(v5 - 220) = (a1 + 1997767594) ^ v1;
  STACK[0x25E8] = v1;
  v7 = (*(v4 + 8 * (a1 + 2120268328)))(v5 - 240);
  return (*(v4 + 8 * *(v5 - 204)))(v7);
}

uint64_t sub_100DDFA4C()
{
  v2 = STACK[0x15E0];
  v3 = 1534937323 * ((((v1 - 240) | 0xA7A8C894D03DFC4) - ((v1 - 240) | 0xF5857376B2FC203BLL) - 0xA7A8C894D03DFC5) ^ 0xC702044B8BED2483);
  *(v1 - 208) = v3 - 1367508170;
  *(v1 - 232) = -1367512183 - v3;
  *(v1 - 228) = v3 + 1451516474;
  *(v1 - 224) = v3;
  *(v1 - 220) = v3 ^ 0xAE7D7B35;
  STACK[0x25E8] = v2 + v3;
  STACK[0x25D0] = v3;
  v4 = (*(v0 + 254368))(v1 - 240);
  return (*(v0 + 8 * *(v1 - 204)))(v4);
}

uint64_t sub_100DDFB2C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * (((((282 * (a1 ^ 0x1A01) - 512) | 0x200) - 1660) * (STACK[0x858] & 1)) ^ a1));
  LODWORD(STACK[0x3CF0]) = 29;
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x3E0];
  STACK[0x3D40] = STACK[0x3E0];
  v4 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v3;
  STACK[0x3B18] = v4;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v5 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = v5;
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100DDFCD4()
{
  v2 = *(*STACK[0x3E40] + (STACK[0x1438] & *v0));
  v3 = (((2 * (v2 + STACK[0x1430])) | 0x41BBBCBE93446C36) - (v2 + STACK[0x1430]) - 0x20DDDE5F49A2361BLL) ^ 0xE272E0F576538EFFLL;
  v4 = __ROR8__(v3, 8);
  v5 = v3 ^ __ROR8__(v2, 61);
  v6 = (((2 * (v4 + v5)) & 0x2FAF1D836DE21D68) - (v4 + v5) - 0x17D78EC1B6F10EB5) ^ 0x8DDA25E3518345B7;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * (v8 + v7)) | 0x52C6F5750FBE042CLL) - (v8 + v7) + 0x569C85457820FDEALL) ^ 0xC6933C2CE6C6109BLL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) | 0x104B745023678428) - (v11 + v10) - 0x825BA2811B3C214) ^ 0xA99727EDC6C5D13FLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0x6A7445B4BBD4B322) - (v14 + v13) - 0x353A22DA5DEA5991) ^ 0xDA3E029BA80F117DLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xD8C7B31FCA19D9DELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0x79DED4E5E25F42E0) + 0x3CEF6A72F12FA170) ^ 0x68BA6B5C7B9E62FFLL;
  v21 = __ROR8__(v20, 8);
  v22 = __ROR8__(v18, 61);
  v23 = (LOBYTE(STACK[0x3F17]) ^ (LOBYTE(STACK[0x45BE]) - 2 * (STACK[0x45BE] & 1) - 127) ^ (((v21 + (v20 ^ v22) - ((2 * (v21 + (v20 ^ v22))) & 0xDD00C280E63E75B4) - 0x117F9EBF8CE0C526) ^ 0x81CF01FC7D1D643ALL) >> STACK[0x13F8])) ^ 0x81u;
  v24 = STACK[0x4EA0];
  LODWORD(v23) = *(STACK[0x4EA0] + v23);
  v25 = (LOBYTE(STACK[0x4E9F]) & v23);
  LOBYTE(STACK[0x45BF]) = v25;
  v26 = v23 ^ (2 * v25);
  v27 = (v26 & LOBYTE(STACK[0x4E9E])) >> STACK[0x5350];
  LOWORD(v21) = STACK[0x6C26];
  v28 = v26 << STACK[0x5320];
  STACK[0x45C0] = LOBYTE(STACK[0x6C37]);
  LOBYTE(v28) = v27 + v28;
  LODWORD(v24) = *(v24 + LOBYTE(STACK[0x45B0]));
  v29 = v24 ^ (2 * (LOBYTE(STACK[0x4E9D]) & v24));
  LOBYTE(v27) = v29 & LOBYTE(STACK[0x4E9C]);
  LOBYTE(STACK[0x45CE]) = v27;
  LOBYTE(v28) = LODWORD(STACK[0x52C0]) ^ ((v27 >> STACK[0x5328]) + (v29 << STACK[0x5338])) ^ v28;
  LOBYTE(STACK[0x45CF]) = v21;
  *(STACK[0x3D18] + 1807) = v28;
  v30 = *(v1 + 8 * (LODWORD(STACK[0x3DB0]) ^ 0x32AB));
  STACK[0x3F18] = STACK[0x18A0];
  STACK[0x3F08] = v30;
  return (*(v1 + 8 * (LODWORD(STACK[0x35CC]) + 13179)))();
}

uint64_t sub_100DE009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W6>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53)
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  LODWORD(STACK[0x3A28]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  v54 = (a6 - 29915) | 0x5082;
  LODWORD(STACK[0x3D68]) = v54;
  v55 = *(v53 + 8 * (((LODWORD(STACK[0x129C]) == v54 - 21148) * (a6 - 29960)) ^ a6));
  LODWORD(STACK[0x2BB0]) = 2;
  LODWORD(STACK[0x3D80]) = 12;
  LODWORD(STACK[0x3E18]) = 1;
  v56 = STACK[0x34C0];
  STACK[0x480] = STACK[0x34C0];
  STACK[0x10F0] = a53;
  STACK[0x470] = v56;
  LODWORD(STACK[0x268C]) = a5;
  LODWORD(STACK[0x33E8]) = STACK[0x32E0];
  v57 = STACK[0x32D8];
  LODWORD(STACK[0x1B5C]) = STACK[0x32D8];
  v58 = LODWORD(STACK[0x351C]);
  STACK[0x1BC0] = v58;
  LODWORD(STACK[0x38B8]) = v58;
  LODWORD(STACK[0x3550]) = v57;
  LODWORD(STACK[0x3710]) = STACK[0x3808];
  LODWORD(STACK[0x129C]) = 2;
  LODWORD(STACK[0x3268]) = v57;
  STACK[0x2228] = LODWORD(STACK[0x2B80]);
  STACK[0x39C0] = v58;
  return v55(a1, a53, a2, a3, a4, a24);
}

uint64_t sub_100DE0184()
{
  v2 = STACK[0x3E40];
  v3 = *(STACK[0x5008] + 4 * v0);
  v4 = STACK[0x52B8];
  LODWORD(STACK[0x3D98]) = (LODWORD(STACK[0x3E40]) - 2491) | 0x201;
  v5 = ((STACK[0x52AC] & (v3 ^ (2 * (v4 & v3)))) << STACK[0x5338]) | (((v3 ^ (2 * (v4 & v3))) & STACK[0x52C8]) >> STACK[0x5328]);
  v6 = ((v4 & v0) << (((v2 + 69) | 1) ^ 0x80)) ^ v0;
  v7 = v5 ^ LODWORD(STACK[0x52BC]);
  v8 = (((v6 & LODWORD(STACK[0x52C8])) >> STACK[0x5350]) | (v6 << STACK[0x5320])) ^ LODWORD(STACK[0x52C0]);
  STACK[0x28F8] = v8;
  *(STACK[0x33D8] + 4 * v8) = v7;
  v9 = *(STACK[0x4EB0] + v0) ^ (2 * (STACK[0x52D8] & *(STACK[0x4EB0] + v0)));
  v10 = v0 ^ (2 * (STACK[0x52D8] & v0));
  *(STACK[0x3660] + 4 * ((((STACK[0x4E98] & v10) >> STACK[0x5328]) | (v10 << STACK[0x5338])) ^ LODWORD(STACK[0x52A4]))) = ((STACK[0x52A8] & v9) >> STACK[0x5328]) ^ ((v9 & STACK[0x52AC]) << STACK[0x5338]) ^ LODWORD(STACK[0x52A4]);
  return (*(v1 + 8 * ((106 * (v0 == 255)) ^ v2)))();
}

uint64_t sub_100DE02FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x2B80]) = 0;
  LODWORD(STACK[0x3B18]) = 0;
  LODWORD(STACK[0x3D40]) = 0;
  LODWORD(STACK[0x3D20]) = 0;
  LODWORD(STACK[0x32C8]) = 0;
  LODWORD(STACK[0x32A0]) = 0;
  LODWORD(STACK[0x32A8]) = 0;
  LODWORD(STACK[0x3B20]) = 0;
  LODWORD(STACK[0x32B0]) = 0;
  LODWORD(STACK[0x32B8]) = 0;
  LODWORD(STACK[0x918]) = 0;
  LODWORD(STACK[0x3CF0]) = 0;
  LODWORD(STACK[0x32C0]) = 0;
  LODWORD(STACK[0x800]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x810]) = 0;
  LODWORD(STACK[0x2AF8]) = 0;
  LODWORD(STACK[0x2A90]) = 0;
  LODWORD(STACK[0x8C8]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0x820]) = 0;
  LODWORD(STACK[0x8D0]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x830]) = 0;
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
  v6 = (a5 - 10319) | 0x4200u;
  STACK[0x3AF0] = v6;
  v7 = STACK[0x2238] == (v6 ^ 0x52D1);
  LODWORD(STACK[0x3B08]) = a5 + 6577;
  v8 = *(v5 + 8 * ((25324 * v7) ^ a5));
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v9 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3438]) = v9;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v10 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x3B00]) = v10;
  v11 = STACK[0x32E8];
  LODWORD(STACK[0x39A0]) = STACK[0x32E8];
  LODWORD(STACK[0x3488]) = v11;
  LODWORD(STACK[0x3280]) = v11;
  v12 = STACK[0x1A78];
  LODWORD(STACK[0x2B40]) = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = v12;
  LODWORD(STACK[0x3290]) = v12;
  LODWORD(STACK[0x3288]) = v12;
  v13 = STACK[0x2500];
  LODWORD(STACK[0x3998]) = STACK[0x2500];
  LODWORD(STACK[0x3AE8]) = v13;
  v14 = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v14;
  v15 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3298]) = v15;
  LODWORD(STACK[0x3260]) = v15;
  v16 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  v17 = v16;
  LODWORD(STACK[0x3980]) = 111;
  STACK[0x3840] = 1;
  LODWORD(STACK[0x2BB0]) = 79;
  LODWORD(STACK[0x3988]) = 77;
  v18 = STACK[0x4A8];
  v19 = STACK[0x448];
  STACK[0x3D78] = STACK[0x448];
  LODWORD(v6) = STACK[0x1A90];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  v20 = STACK[0x1BC8];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v19;
  STACK[0x3D50] = STACK[0x1160];
  STACK[0x3AD8] = v19;
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = v20;
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = v6;
  LODWORD(STACK[0x32D0]) = STACK[0x3D90];
  return v8(a1, 0, a2, v18, a3, a4, v17);
}

uint64_t sub_100DE05AC@<X0>(char a1@<W8>)
{
  v9 = (v1 + v5);
  v10 = *(v2 + v4);
  v11 = v10 ^ (2 * a1);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  *(v2 + v4) = v12 ^ v10;
  STACK[0x3DC8] = v9;
  return (*(v8 + 8 * ((v4 + v6 + v9 == v3) ^ v1)))();
}

uint64_t sub_100DE05EC()
{
  if (LODWORD(STACK[0x3860]))
  {
    v2 = STACK[0x39A8] << 56;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 0xFF00000000000000 | (STACK[0x3D10] >> 8);
  LODWORD(STACK[0x3860]) += (2115 * (v0 ^ 0x211A)) ^ 0x52A6;
  v4 = *(v1 + 8 * v0);
  STACK[0x3D10] = v3;
  return v4();
}

void sub_100DE063C(uint64_t a1)
{
  v1 = *(a1 + 16) + 1379010179 * ((2 * (a1 & 0xD4AF4D45) - a1 + 726708922) ^ 0xF018BD4);
  v2 = *(a1 + 8);
  v5 = v1 + 410706167 * (((v4 | 0xAA102CCC) - (v4 & 0xAA102CCC)) ^ 0x31CF009A) - 6719;
  v4[1] = v2;
  v3 = *(&off_101353600 + (v1 ^ 0x4C6D)) - 4;
  (*&v3[8 * v1 + 105944])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100DE0788()
{
  LODWORD(STACK[0x3F9C]) = STACK[0x3F98];
  v1 = STACK[0x3F90];
  STACK[0x3FA0] = STACK[0x3F90];
  STACK[0x3FA8] = STACK[0x3F88];
  LODWORD(STACK[0x3FB4]) = STACK[0x3F84];
  v2 = STACK[0x3F80];
  LODWORD(STACK[0x3FB8]) = STACK[0x3F80];
  LODWORD(STACK[0x3FBC]) = v2 - 7264;
  v3 = STACK[0x37D0] + v1;
  STACK[0x3FC0] = v3;
  STACK[0x3F18] = v3;
  STACK[0x3F08] = *(v0 + 8 * (v2 ^ 0x15FD));
  return (*(v0 + 8 * (v2 + 3076)))();
}

uint64_t sub_100DE0854()
{
  LODWORD(STACK[0x3D40]) = 0;
  v2 = *(v0 + 8 * (v1 + 204));
  LODWORD(STACK[0x3D48]) = 128;
  return v2(LODWORD(STACK[0x3D70]));
}

uint64_t sub_100DE0874(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_100DE0964()
{
  v3 = *(v1 + 8 * ((((((v0 - 5393) ^ v2) & 1) == 0) * ((v0 - 607) ^ 0x5316)) ^ (v0 - 4150)));
  v4 = LODWORD(STACK[0x2144]);
  STACK[0x3318] = LODWORD(STACK[0x2B98]);
  return v3(v4);
}

uint64_t sub_100DE0A48()
{
  STACK[0x770] = v2;
  STACK[0x780] = v1;
  return (*(v3 + 8 * ((27 * (((v0 + 87) ^ (*(v4 - 0x2369327399A66D91) == ((v0 - 27833131) & 0x1FA99FFD ^ 0x1E010E59))) & 1)) ^ v0)))();
}

uint64_t sub_100DE0BC8()
{
  v4 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0x1BC0] = v0;
  STACK[0x1A80] = 0;
  return (*(v3 + 8 * (((v4 == 0x308E083E0C524CBELL) * (((v2 + 16775) ^ 0xFFFFF743) + (v2 ^ 0x4B6A))) ^ v2)))();
}

uint64_t sub_100DE0C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, unsigned int a8)
{
  LODWORD(STACK[0x3838]) = a7;
  v16 = 82 * (a7 ^ 0x4F8Bu);
  STACK[0x3230] = v16;
  v17 = v16 + v14 - 7536;
  STACK[0x3828] = v17;
  v18 = STACK[0x2A98];
  v19 = STACK[0x2698];
  LODWORD(v17) = *(v18 + v17) ^ *(STACK[0x2698] + (*(v18 + v17) ^ 0x5ELL));
  STACK[0x3830] = v14 | 0xB;
  LOBYTE(v16) = *(v18 + (v14 | 0xB));
  LODWORD(STACK[0x2F60]) = a7 + 711;
  LODWORD(v17) = v16 ^ 0x23 ^ *(v19 + (((a7 - 57) ^ v16) ^ 0x7Fu)) | ((v17 ^ 0xFFFFFFC3) << 24);
  STACK[0x3820] = v14 | 3;
  v20 = *(v18 + (v14 | 3));
  v21 = *(v19 + (v20 ^ 0x93));
  STACK[0x3800] = v14 | 1;
  v22 = *(v18 + (v14 | 1)) ^ 0x84 ^ *(v19 + (*(v18 + (v14 | 1)) ^ 0x43));
  STACK[0x3808] = v14 | 2;
  LODWORD(v20) = v20 ^ 0x8A ^ v21 | (v22 << 16);
  v23 = *(v18 + (v14 | 2)) ^ 0xED ^ *(v19 + (*(v18 + (v14 | 2)) ^ 0x16));
  STACK[0x3818] = v14 | 0xD;
  v24 = v20 | (v23 << 8);
  LODWORD(v20) = *(v18 + (v14 | 0xD)) ^ 0x44 ^ *(v19 + (*(v18 + (v14 | 0xD)) ^ 0x64));
  STACK[0x37A8] = v14 | 0xF;
  v25 = *(v18 + (v14 | 0xF)) ^ 0x84 ^ *(v19 + (*(v18 + (v14 | 0xF)) ^ 0x43)) | (v20 << 16);
  STACK[0x3798] = v14 | 9;
  LODWORD(v20) = v17 | ((*(v18 + (v14 | 9)) ^ 0x83 ^ *(v19 + (*(v18 + (v14 | 9)) ^ 0x61))) << 16);
  v26 = v24 | ((*(v18 + v14) ^ *(v19 + (*(v18 + v14) ^ 0xC6)) ^ 0xFFFFFFE3) << 24);
  STACK[0x3788] = v14 | 0xE;
  LODWORD(v17) = v25 | ((*(v18 + (v14 | 0xE)) ^ 0xC7 ^ *(v19 + (*(v18 + (v14 | 0xE)) ^ 0xBELL))) << 8);
  STACK[0x3750] = v14 | 0xC;
  LODWORD(v17) = v17 | ((*(v18 + (v14 | 0xC)) ^ 0xF5 ^ *(v19 + (*(v18 + (v14 | 0xC)) ^ 0xCBLL))) << 24);
  STACK[0x3700] = v14 | 5;
  v27 = *(v18 + (v14 | 5));
  v28 = *(v19 + (v27 ^ 0xBE));
  STACK[0x36F8] = v14 | 6;
  LODWORD(v27) = ((v27 ^ 0xC7 ^ v28) << 16) | ((*(v18 + (v14 | 6)) ^ *(v19 + (*(v18 + (v14 | 6)) ^ 0xD0)) ^ 7) << 8);
  STACK[0x36F0] = v14 | 4;
  LODWORD(v27) = v27 | ((*(v18 + (v14 | 4)) ^ 0xBC ^ *(v19 + (*(v18 + (v14 | 4)) ^ 6))) << 24);
  STACK[0x36E0] = v14;
  STACK[0x36E8] = v14 | 0xA;
  v29 = STACK[0x3908];
  v30 = v26 ^ ((v26 & STACK[0x3908]) >> 1);
  LODWORD(v20) = v20 | ((*(v19 + (*(v18 + (v14 | 0xA)) ^ 0xBBLL)) ^ *(v18 + (v14 | 0xA))) << 8);
  STACK[0x36D0] = v14 | 7;
  LODWORD(v27) = *(v18 + (v14 | 7)) ^ 0x95 ^ *(v19 + (*(v18 + (v14 | 7)) ^ 0x25)) | v27;
  LODWORD(v27) = v27 ^ ((v27 & STACK[0x3920]) >> 1);
  v31 = v20 ^ ((v20 & v29) >> 1);
  LODWORD(v17) = v17 ^ ((v17 & v29) >> 1);
  v32 = STACK[0x38C0];
  v33 = STACK[0x38F8];
  v34 = STACK[0x3D90];
  LODWORD(v20) = (((v30 & STACK[0x38F8]) >> STACK[0x3D90]) | ((v30 & STACK[0x38C0]) << STACK[0x3D80])) ^ v9;
  v35 = STACK[0x38A0];
  LODWORD(v19) = STACK[0x38D0];
  v36 = STACK[0x3850];
  v37 = ((v31 & STACK[0x38A0]) << STACK[0x3D80]) ^ v10 ^ ((v31 & STACK[0x38D0]) >> STACK[0x3D88]);
  LODWORD(STACK[0x3340]) = v37;
  v38 = (-1815319717 * (v37 ^ (v36 - v13))) ^ ((-1815319717 * (v37 ^ (v36 - v13))) >> 16);
  LODWORD(STACK[0x32E8]) = v20;
  v39 = (((v27 & v32) << STACK[0x3D98]) + ((v27 & v33) >> v34)) ^ LODWORD(STACK[0x36B8]);
  v40 = 480715235 * (v38 + v20 - (v38 >> 8)) + ((480715235 * (v38 + v20 - (v38 >> 8))) >> 16);
  v41 = (((v17 & v35) << STACK[0x3D98]) + ((v17 & v19) >> v34)) ^ v8;
  LODWORD(v17) = (-473986921 * (v40 ^ v39 ^ (v40 >> 8))) ^ ((-473986921 * (v40 ^ v39 ^ (v40 >> 8))) >> 16);
  LODWORD(STACK[0x3E38]) = v15;
  v43 = 518085651 * (v15 - a8 - v37) - ((518085651 * (v15 - a8 - v37)) >> 16);
  v44 = -1573087189 * (v43 ^ v39 ^ (v43 >> 8)) + ((-1573087189 * (v43 ^ v39 ^ (v43 >> 8))) >> 16);
  LODWORD(v17) = -1560286399 * (v17 - v41 - (v17 >> 8)) + ((-1560286399 * (v17 - v41 - (v17 >> 8))) >> 16);
  v45 = v17 ^ (v17 >> 8);
  LODWORD(v17) = 1311364223 * (v44 - v41 + (v44 >> 8)) + ((1311364223 * (v44 - v41 + (v44 >> 8))) >> 16);
  LODWORD(v17) = (-1749993611 * ((v17 - (v17 >> 8)) ^ v20)) ^ ((-1749993611 * ((v17 - (v17 >> 8)) ^ v20)) >> 16);
  v46 = v17 + (v17 >> 8);
  v47 = v45 - LODWORD(STACK[0x36C0]);
  v48 = v45;
  LODWORD(STACK[0x36C8]) = v45;
  v49 = v46 - v47;
  v50 = STACK[0x3998];
  v51 = STACK[0x3D38];
  if ((v46 - v47))
  {
    v52 = STACK[0x3998];
  }

  else
  {
    v52 = STACK[0x3D38];
  }

  LODWORD(STACK[0x32B8]) = v52;
  if (v49)
  {
    v53 = v51;
  }

  else
  {
    v53 = STACK[0x3AE8];
  }

  v54 = STACK[0x39A0];
  if (v49)
  {
    v55 = STACK[0x3AE8];
  }

  else
  {
    v55 = STACK[0x39A0];
  }

  LODWORD(STACK[0x32C0]) = v55;
  if (v49)
  {
    v56 = v54;
  }

  else
  {
    v56 = v50;
  }

  if (v49)
  {
    v57 = a8;
  }

  else
  {
    v57 = a5;
  }

  LODWORD(STACK[0x32C8]) = v57;
  if (v49)
  {
    v58 = a5;
  }

  else
  {
    v58 = v36;
  }

  LODWORD(STACK[0x32A8]) = v58;
  v59 = STACK[0x3960];
  if (v49)
  {
    v60 = v36;
  }

  else
  {
    v60 = STACK[0x3960];
  }

  LODWORD(STACK[0x32D0]) = v60;
  if (v49)
  {
    v61 = v59;
  }

  else
  {
    v61 = a8;
  }

  LODWORD(STACK[0x32B0]) = v61;
  v62 = v49 - v47;
  LODWORD(STACK[0x3280]) = v49;
  v63 = STACK[0x3D60];
  if ((v49 - v47))
  {
    v64 = STACK[0x3D60];
  }

  else
  {
    v64 = a6;
  }

  LODWORD(STACK[0x3288]) = v64;
  v65 = STACK[0x3B20];
  if ((v49 - v47))
  {
    v66 = STACK[0x3B20];
  }

  else
  {
    v66 = v63;
  }

  LODWORD(STACK[0x34F0]) = v66;
  v67 = STACK[0x3B08];
  if ((v49 - v47))
  {
    v65 = STACK[0x3B08];
  }

  LODWORD(STACK[0x33E8]) = v65;
  if ((v49 - v47))
  {
    v67 = a6;
  }

  LODWORD(STACK[0x3D60]) = v67;
  v68 = v62 - v47;
  if (((v49 - v47) & 2) != 0)
  {
    v65 = v64;
    v67 = v66;
  }

  v69 = STACK[0x39E8];
  if ((v62 - v47))
  {
    v70 = STACK[0x39E8];
  }

  else
  {
    v70 = v12;
  }

  LODWORD(STACK[0x3290]) = v70;
  v71 = STACK[0x3858];
  if (v68)
  {
    v72 = v13;
  }

  else
  {
    v72 = STACK[0x3858];
  }

  LODWORD(STACK[0x3298]) = v72;
  v73 = 8 * v48;
  v74 = -8 * v48;
  LODWORD(STACK[0x3D38]) = -8 * v48;
  if ((v68 & 2) != 0)
  {
    v75 = v72;
  }

  else
  {
    v75 = v70;
  }

  v76 = v74 & 0x18;
  v77 = v73;
  v78 = (v65 << (v73 & 0x18)) ^ (v65 >> (v74 & 0x18));
  LODWORD(STACK[0x3B20]) = v65;
  if ((v73 & 0x18) != 0)
  {
    v65 = v78;
  }

  LODWORD(STACK[0x3550]) = v65;
  LODWORD(STACK[0x3B08]) = v67;
  if ((v73 & 0x18) != 0)
  {
    v79 = (v67 >> v76) ^ (v67 << (v73 & 0x18));
  }

  else
  {
    v79 = v67;
  }

  LODWORD(STACK[0x3570]) = v79;
  v80 = __ROR4__(v75, v76);
  LODWORD(STACK[0x3228]) = v75;
  if ((v73 & 0x18) != 0)
  {
    v81 = v80;
  }

  else
  {
    v81 = v75;
  }

  LODWORD(STACK[0x35A0]) = v81;
  if ((v49 & 2) != 0)
  {
    v82 = v53;
  }

  else
  {
    v82 = v56;
  }

  if ((v49 & 2) != 0)
  {
    v83 = v56;
  }

  else
  {
    v83 = v53;
  }

  if ((v49 & 2) != 0)
  {
    v84 = v52;
  }

  else
  {
    v84 = v55;
  }

  if ((v49 & 2) != 0)
  {
    v85 = v57;
  }

  else
  {
    v85 = v60;
  }

  if ((v49 & 2) != 0)
  {
    v86 = v61;
  }

  else
  {
    v86 = v58;
  }

  v87 = (v86 << (v77 & 0x18)) ^ (v86 >> v76);
  v88 = (v85 >> v76) ^ (v85 << (v77 & 0x18));
  LODWORD(STACK[0x3850]) = v86;
  if ((v77 & 0x18) == 0)
  {
    v87 = v86;
  }

  LODWORD(STACK[0x36B8]) = v87;
  LODWORD(STACK[0x3960]) = v85;
  if ((v77 & 0x18) == 0)
  {
    v88 = v85;
  }

  LODWORD(STACK[0x36C0]) = v88;
  if (v68)
  {
    v89 = v71;
  }

  else
  {
    v89 = v69;
  }

  LODWORD(STACK[0x3270]) = v89;
  if (v68)
  {
    v90 = v12;
  }

  else
  {
    v90 = v13;
  }

  if ((v68 & 2) != 0)
  {
    v91 = v90;
  }

  else
  {
    v91 = v89;
  }

  v92 = v77 & 0x18;
  v93 = v77;
  v94 = (v84 >> v76) ^ (v84 << (v77 & 0x18));
  v95 = (v83 << (v77 & 0x18)) + (v83 >> v76);
  v96 = __ROR4__(v82, v76);
  v97 = __ROR4__(v91, v76);
  LODWORD(STACK[0x3998]) = v82;
  if ((v77 & 0x18) != 0)
  {
    v98 = v96;
  }

  else
  {
    v98 = v82;
  }

  LODWORD(STACK[0x3438]) = v98;
  LODWORD(STACK[0x39A0]) = v84;
  if ((v77 & 0x18) == 0)
  {
    v94 = v84;
  }

  LODWORD(STACK[0x3348]) = v94;
  LODWORD(STACK[0x3AE8]) = v83;
  if ((v77 & 0x18) != 0)
  {
    v99 = v95;
  }

  else
  {
    v99 = v83;
  }

  LODWORD(STACK[0x3428]) = v99;
  LODWORD(STACK[0x39E8]) = v91;
  if ((v77 & 0x18) == 0)
  {
    v97 = v91;
  }

  LODWORD(STACK[0x3858]) = v97;
  if (v46)
  {
    v100 = STACK[0x3D20];
  }

  else
  {
    v100 = STACK[0x3D28];
  }

  v101 = STACK[0x3D30];
  if (v46)
  {
    v102 = STACK[0x3D30];
  }

  else
  {
    v102 = STACK[0x3D20];
  }

  if (v46)
  {
    v101 = STACK[0x3CF0];
    v103 = STACK[0x3D28];
  }

  else
  {
    v103 = STACK[0x3CF0];
  }

  if (v46)
  {
    v104 = STACK[0x3940];
  }

  else
  {
    v104 = STACK[0x3AE0];
  }

  if (v46)
  {
    v105 = STACK[0x3AE0];
  }

  else
  {
    v105 = STACK[0x3AD8];
  }

  if (v46)
  {
    v106 = STACK[0x3AD8];
  }

  else
  {
    v106 = STACK[0x3B00];
  }

  if (v46)
  {
    v107 = STACK[0x3B00];
  }

  else
  {
    v107 = STACK[0x3940];
  }

  if ((v46 & 2) != 0)
  {
    v108 = v100;
  }

  else
  {
    v108 = v101;
  }

  if ((v46 & 2) != 0)
  {
    v109 = v101;
  }

  else
  {
    v109 = v100;
  }

  if ((v46 & 2) != 0)
  {
    v110 = v106;
  }

  else
  {
    v110 = v104;
  }

  if ((v46 & 2) != 0)
  {
    v111 = v104;
  }

  else
  {
    v111 = v106;
  }

  if ((v46 & 2) != 0)
  {
    v112 = v103;
  }

  else
  {
    v112 = v102;
  }

  if ((v46 & 2) != 0)
  {
    v113 = v107;
  }

  else
  {
    v113 = v105;
  }

  v114 = STACK[0x3D38];
  v115 = (v108 >> (STACK[0x3D38] & 0x18)) + (v108 << v92);
  v116 = v46 + LODWORD(STACK[0x3D78]);
  LODWORD(STACK[0x3D78]) = v116;
  LODWORD(STACK[0x3D30]) = v108;
  if ((v114 & 0x18) == 0)
  {
    v115 = v108;
  }

  LODWORD(STACK[0x3278]) = v115;
  if (v116)
  {
    v117 = v41;
  }

  else
  {
    v117 = STACK[0x3340];
  }

  v118 = STACK[0x32E8];
  if (v116)
  {
    v119 = STACK[0x32E8];
  }

  else
  {
    v119 = v41;
  }

  if (v116)
  {
    v118 = v39;
    v120 = STACK[0x3340];
  }

  else
  {
    v120 = v39;
  }

  if ((v116 & 2) != 0)
  {
    v121 = v118;
  }

  else
  {
    v121 = v117;
  }

  if ((v116 & 2) != 0)
  {
    v118 = v117;
    v122 = v120;
  }

  else
  {
    v122 = v119;
  }

  v123 = v114 & 0x18;
  if ((v114 & 0x18) != 0)
  {
    v124 = (v121 >> (v114 & 0x18)) ^ (v121 << v92);
  }

  else
  {
    v124 = v121;
  }

  LODWORD(STACK[0x3268]) = v124;
  v125 = (v109 << v92) ^ (v109 >> v123);
  v126 = (v112 << v92) + (v112 >> v123);
  v127 = __ROR4__(v122, v123);
  if ((v114 & 0x18) != 0)
  {
    v128 = v127;
  }

  else
  {
    v128 = v122;
  }

  LODWORD(STACK[0x3260]) = v128;
  v129 = __ROR4__(v118, v123);
  if ((v114 & 0x18) != 0)
  {
    v130 = v129;
  }

  else
  {
    v130 = v118;
  }

  LODWORD(STACK[0x3248]) = v130;
  LODWORD(STACK[0x3D28]) = v109;
  if ((v114 & 0x18) != 0)
  {
    v131 = v125;
  }

  else
  {
    v131 = v109;
  }

  LODWORD(STACK[0x3250]) = v131;
  LODWORD(STACK[0x3D20]) = v112;
  if ((v114 & 0x18) != 0)
  {
    v132 = v126;
  }

  else
  {
    v132 = v112;
  }

  LODWORD(STACK[0x3258]) = v132;
  v133 = v93;
  v134 = __ROR4__(v111, v123);
  LODWORD(STACK[0x3B00]) = v111;
  if ((v93 & 0x18) != 0)
  {
    v135 = v134;
  }

  else
  {
    v135 = v111;
  }

  LODWORD(STACK[0x32E8]) = v135;
  v136 = __ROR4__(v113, v123);
  LODWORD(STACK[0x3AD8]) = v113;
  if ((v93 & 0x18) != 0)
  {
    v137 = v136;
  }

  else
  {
    v137 = v113;
  }

  LODWORD(STACK[0x3940]) = v137;
  v138 = __ROR4__(v110, v123);
  LODWORD(STACK[0x3AE0]) = v110;
  if ((v93 & 0x18) != 0)
  {
    v139 = v138;
  }

  else
  {
    v139 = v110;
  }

  LODWORD(STACK[0x3340]) = v139;
  if (v62)
  {
    v140 = STACK[0x39A8];
  }

  else
  {
    v140 = STACK[0x3CC8];
  }

  if (v62)
  {
    v141 = STACK[0x3CC8];
  }

  else
  {
    v141 = STACK[0x3CE8];
  }

  if (v62)
  {
    v142 = STACK[0x39F0];
  }

  else
  {
    v142 = STACK[0x39A8];
  }

  if (v62)
  {
    v143 = STACK[0x3CE8];
  }

  else
  {
    v143 = STACK[0x39F0];
  }

  if ((v62 & 2) != 0)
  {
    v144 = v142;
  }

  else
  {
    v144 = v141;
  }

  if ((v62 & 2) != 0)
  {
    v145 = v143;
  }

  else
  {
    v145 = v140;
  }

  if (v68)
  {
    v146 = STACK[0x3980];
  }

  else
  {
    v146 = STACK[0x3CD0];
  }

  if (v68)
  {
    v147 = STACK[0x3B18];
  }

  else
  {
    v147 = STACK[0x3980];
  }

  if (v68)
  {
    v148 = STACK[0x3CD0];
  }

  else
  {
    v148 = STACK[0x3AF0];
  }

  if (v68)
  {
    v149 = STACK[0x3AF0];
  }

  else
  {
    v149 = STACK[0x3B18];
  }

  if ((v68 & 2) != 0)
  {
    v150 = v146;
  }

  else
  {
    v150 = v149;
  }

  if ((v68 & 2) != 0)
  {
    v151 = v149;
  }

  else
  {
    v151 = v146;
  }

  if ((v68 & 2) != 0)
  {
    v152 = v147;
  }

  else
  {
    v152 = v148;
  }

  LODWORD(STACK[0x3650]) = v133;
  v153 = (v152 >> v123) ^ (v152 << (v133 & 0x18));
  LODWORD(STACK[0x3CC8]) = v145;
  if ((v133 & 0x18) != 0)
  {
    v145 = (v145 << (v133 & 0x18)) + (v145 >> v123);
  }

  LODWORD(STACK[0x39A8]) = v145;
  v154 = __ROR4__(v144, v123);
  LODWORD(STACK[0x3CE8]) = v144;
  if ((v133 & 0x18) != 0)
  {
    v155 = v154;
  }

  else
  {
    v155 = v144;
  }

  LODWORD(STACK[0x32A0]) = v155;
  LODWORD(STACK[0x3B18]) = v150;
  if ((v133 & 0x18) != 0)
  {
    v150 = (v150 >> v123) ^ (v150 << (v133 & 0x18));
  }

  LODWORD(STACK[0x32D8]) = v150;
  LODWORD(STACK[0x3AF0]) = v152;
  if ((v133 & 0x18) == 0)
  {
    v153 = v152;
  }

  LODWORD(STACK[0x3980]) = v153;
  v156 = __ROR4__(v151, v123);
  LODWORD(STACK[0x3CD0]) = v151;
  if ((v133 & 0x18) == 0)
  {
    v156 = v151;
  }

  LODWORD(STACK[0x32E0]) = v156;
  if (v62)
  {
    v157 = STACK[0x3D48];
  }

  else
  {
    v157 = STACK[0x3D40];
  }

  if (v62)
  {
    v158 = STACK[0x3D40];
  }

  else
  {
    v158 = STACK[0x3D58];
  }

  if (v62)
  {
    v159 = STACK[0x3D58];
  }

  else
  {
    v159 = STACK[0x3D50];
  }

  if (v62)
  {
    v160 = STACK[0x3D50];
  }

  else
  {
    v160 = STACK[0x3D48];
  }

  v161 = (v62 & 2) == 0;
  if ((v62 & 2) != 0)
  {
    v162 = v141;
  }

  else
  {
    v140 = v143;
    v162 = v142;
  }

  v163 = STACK[0x33E8];
  if (v161)
  {
    v163 = STACK[0x3288];
  }

  LODWORD(STACK[0x33E8]) = v163;
  if (v161)
  {
    v164 = v158;
  }

  else
  {
    v164 = v160;
  }

  LODWORD(STACK[0x3D58]) = v164;
  if (!v161)
  {
    v160 = v158;
  }

  LODWORD(STACK[0x3D48]) = v160;
  if (v161)
  {
    v165 = v159;
  }

  else
  {
    v165 = v157;
  }

  LODWORD(STACK[0x3D50]) = v165;
  if (v161)
  {
    v166 = v157;
  }

  else
  {
    v166 = v159;
  }

  LODWORD(STACK[0x3D40]) = v166;
  v167 = STACK[0x3D60];
  if (v161)
  {
    v167 = STACK[0x34F0];
  }

  LODWORD(STACK[0x3D60]) = v167;
  if ((v68 & 2) != 0)
  {
    v168 = v148;
  }

  else
  {
    v168 = v147;
  }

  v169 = STACK[0x3270];
  if ((v68 & 2) == 0)
  {
    v169 = v90;
  }

  LODWORD(STACK[0x34F0]) = v169;
  if ((v68 & 2) != 0)
  {
    v170 = STACK[0x3290];
  }

  else
  {
    v170 = STACK[0x3298];
  }

  v171 = STACK[0x3280];
  if (STACK[0x3280])
  {
    v172 = STACK[0x38B8];
  }

  else
  {
    v172 = STACK[0x38B0];
  }

  if (v171)
  {
    v173 = STACK[0x38B0];
  }

  else
  {
    v173 = STACK[0x3878];
  }

  if (v171)
  {
    v174 = STACK[0x3878];
  }

  else
  {
    v174 = STACK[0x38C8];
  }

  if (v171)
  {
    v175 = STACK[0x38C8];
  }

  else
  {
    v175 = STACK[0x38B8];
  }

  v176 = v46;
  v177 = STACK[0x3E38];
  if (v46)
  {
    v178 = STACK[0x3D68];
  }

  else
  {
    v178 = STACK[0x3E38];
  }

  v179 = STACK[0x3988];
  if ((v46 & 1) == 0)
  {
    v177 = STACK[0x3988];
  }

  v180 = STACK[0x3D70];
  if ((v46 & 1) == 0)
  {
    v179 = STACK[0x3D70];
    v180 = STACK[0x3D68];
  }

  if ((v46 & 2) != 0)
  {
    v181 = v102;
  }

  else
  {
    v181 = v103;
  }

  if ((v46 & 2) != 0)
  {
    v107 = v105;
    v182 = v179;
  }

  else
  {
    v182 = v178;
  }

  LODWORD(STACK[0x3E38]) = v182;
  if ((v46 & 2) == 0)
  {
    v178 = v179;
  }

  LODWORD(STACK[0x3D70]) = v178;
  if ((v46 & 2) != 0)
  {
    v183 = v180;
  }

  else
  {
    v183 = v177;
  }

  if ((v46 & 2) != 0)
  {
    v184 = v177;
  }

  else
  {
    v184 = v180;
  }

  LODWORD(STACK[0x3D68]) = v184;
  v185 = STACK[0x3D78];
  if ((STACK[0x3D78] & 2) != 0)
  {
    v186 = v119;
  }

  else
  {
    v186 = v120;
  }

  v187 = v133 & 0x18;
  v188 = (v181 << (v133 & 0x18)) + (v181 >> v123);
  v189 = (v186 >> v123) ^ (v186 << (v133 & 0x18));
  if ((v133 & 0x18) == 0)
  {
    v189 = v186;
  }

  LODWORD(STACK[0x3CF0]) = v181;
  if ((v133 & 0x18) != 0)
  {
    v190 = v188;
  }

  else
  {
    v190 = v181;
  }

  v191 = LODWORD(STACK[0x2B00]) ^ v190 ^ v189;
  v192 = (LODWORD(STACK[0x2AF8]) ^ LODWORD(STACK[0x3278])) ^ LODWORD(STACK[0x3248]);
  v193 = STACK[0x3AB8];
  v194 = LODWORD(STACK[0x2B10]) ^ LODWORD(STACK[0x3250]);
  v195 = v194 ^ LODWORD(STACK[0x3268]);
  v196 = *(STACK[0x3AB8] + 4 * BYTE2(v192)) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE1(v191)), 8) ^ __ROR4__(*(STACK[0x3AB8] + 4 * (v194 ^ LODWORD(STACK[0x3268]))), 16);
  v197 = (LODWORD(STACK[0x2B08]) ^ LODWORD(STACK[0x3258])) ^ LODWORD(STACK[0x3260]);
  v198 = v196 ^ __ROR4__(*(STACK[0x3AB8] + ((v197 >> 22) & 0x3FC)), 24);
  v199 = LODWORD(STACK[0x2AF0]) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE1(v195)), 8) ^ *(STACK[0x3AB8] + 4 * BYTE2(v191)) ^ __ROR4__(*(STACK[0x3AB8] + 4 * (LOBYTE(STACK[0x2B08]) ^ LOBYTE(STACK[0x3258]) ^ LOBYTE(STACK[0x3260]))), 16) ^ __ROR4__(*(STACK[0x3AB8] + ((v192 >> 22) & 0x3FC)), 24);
  v200 = LODWORD(STACK[0x2AE8]) ^ *(STACK[0x3AB8] + 4 * BYTE2(v197)) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE1(v192)), 8) ^ __ROR4__(*(STACK[0x3AB8] + ((v195 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x3AB8] + 4 * v191), 16);
  v201 = *(STACK[0x3AB8] + 4 * BYTE2(v195)) ^ LODWORD(STACK[0x2BA0]) ^ __ROR4__(*(STACK[0x3AB8] + ((v191 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(STACK[0x3AB8] + 4 * (LOBYTE(STACK[0x2AF8]) ^ LOBYTE(STACK[0x3278]) ^ LOBYTE(STACK[0x3248]))), 16) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE1(v197)), 8);
  if ((v171 & 2) != 0)
  {
    v202 = v174;
  }

  else
  {
    v202 = v172;
  }

  if ((v171 & 2) != 0)
  {
    v174 = v172;
    v203 = v175;
  }

  else
  {
    v203 = v173;
  }

  if ((v171 & 2) != 0)
  {
    v204 = STACK[0x32C0];
  }

  else
  {
    v173 = v175;
    v204 = STACK[0x32B8];
  }

  if ((v171 & 2) != 0)
  {
    v205 = STACK[0x32A8];
  }

  else
  {
    v205 = STACK[0x32B0];
  }

  if ((v171 & 2) != 0)
  {
    v206 = STACK[0x32D0];
  }

  else
  {
    v206 = STACK[0x32C8];
  }

  v207 = v176 + LODWORD(STACK[0x3848]);
  v208 = v176 + LODWORD(STACK[0x3840]);
  v210 = STACK[0x3D38] & 0x18;
  v209 = (STACK[0x3D38] & 0x18) == 0;
  v211 = __ROR4__(v202, v210);
  LODWORD(STACK[0x38B0]) = v202;
  if (v209)
  {
    v211 = v202;
  }

  LODWORD(STACK[0x3840]) = v208;
  v212 = v185 ^ v208;
  v213 = v185 ^ v208 ^ v211 ^ v199;
  v214 = (v203 << v187) ^ (v203 >> v210);
  v215 = v207 + v198 - v185;
  LODWORD(STACK[0x3878]) = v203;
  if (v209)
  {
    v214 = v203;
  }

  v216 = v215 ^ LODWORD(STACK[0x2BA8]) ^ v214;
  v217 = (v174 >> v210) ^ (v174 << v187);
  LODWORD(STACK[0x38C8]) = v174;
  if (v209)
  {
    v217 = v174;
  }

  v218 = v200 ^ v217;
  v219 = LODWORD(STACK[0x2B98]) ^ __ROR4__(*(v193 + 4 * BYTE1(v213)), 8) ^ *(v193 + 4 * BYTE2(v216)) ^ __ROR4__(*(v193 + ((v218 >> 22) & 0x3FC)), 24);
  v220 = (v173 >> v210) ^ (v173 << v187);
  LODWORD(STACK[0x38B8]) = v173;
  if (v209)
  {
    v220 = v173;
  }

  v221 = v201 ^ v220;
  v222 = v219 ^ __ROR4__(*(v193 + 4 * v221), 16);
  v223 = LODWORD(STACK[0x2AE0]) ^ __ROR4__(*(v193 + 4 * BYTE1(v221)), 8) ^ __ROR4__(*(v193 + ((v216 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * v218), 16);
  v224 = *(v193 + 4 * BYTE2(v218)) ^ LODWORD(STACK[0x2B90]) ^ (*(v193 + 4 * BYTE1(v216)) << 24) ^ (*(v193 + 4 * BYTE1(v216)) >> 8) ^ __ROR4__(*(v193 + ((v221 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * v213), 16);
  v225 = *(v193 + 4 * BYTE2(v221)) ^ LODWORD(STACK[0x2B88]) ^ __ROR4__(*(v193 + 4 * BYTE1(v218)), 8) ^ __ROR4__(*(v193 + ((v213 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * v216), 16);
  v226 = *(v193 + 4 * BYTE2(v213));
  v227 = __ROR4__(v140, v210);
  LODWORD(STACK[0x39F0]) = v140;
  if (v209)
  {
    v227 = v140;
  }

  v228 = v223 ^ v226 ^ v227;
  v229 = v224 ^ LODWORD(STACK[0x39A8]);
  v230 = v225 ^ LODWORD(STACK[0x32A0]);
  v231 = LODWORD(STACK[0x2BB8]) ^ *(v193 + 4 * BYTE2(v228)) ^ __ROR4__(*(v193 + 4 * (v224 ^ LOBYTE(STACK[0x39A8]))), 16) ^ __ROR4__(*(v193 + 4 * BYTE1(v230)), 8);
  v232 = (v162 << v187) + (v162 >> v210);
  LODWORD(STACK[0x39A8]) = v162;
  if (v209)
  {
    v232 = v162;
  }

  v233 = v222 ^ v232;
  v234 = v231 ^ LODWORD(STACK[0x3980]) ^ __ROR4__(*(v193 + ((v233 >> 22) & 0x3FC)), 24);
  v235 = *(v193 + 4 * BYTE2(v229)) ^ LODWORD(STACK[0x2B80]) ^ __ROR4__(*(v193 + ((v230 >> 22) & 0x3FC)), 24);
  v236 = (v168 >> v210) ^ (v168 << v187);
  LODWORD(STACK[0x3980]) = v168;
  if (v209)
  {
    v236 = v168;
  }

  v237 = v235 ^ v236 ^ __ROR4__(*(v193 + 4 * v228), 16) ^ __ROR4__(*(v193 + 4 * BYTE1(v233)), 8);
  v238 = LODWORD(STACK[0x2B78]) ^ __ROR4__(*(v193 + 4 * v233), 16) ^ __ROR4__(*(v193 + ((v228 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * BYTE1(v229)), 8);
  v239 = (*(v193 + 4 * BYTE2(v233)) ^ LODWORD(STACK[0x2BF0])) ^ __ROR4__(*(v193 + 4 * v230), 16) ^ __ROR4__(*(v193 + ((v229 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * BYTE1(v228)), 8) ^ LODWORD(STACK[0x32D8]);
  v240 = v238 ^ (LODWORD(STACK[0x32E0]) ^ *(v193 + 4 * BYTE2(v230)));
  v241 = (LODWORD(STACK[0x32E8]) ^ LODWORD(STACK[0x2BE8])) ^ *(v193 + 4 * BYTE2(v237)) ^ __ROR4__(*(v193 + 4 * v234), 16) ^ __ROR4__(*(v193 + 4 * BYTE1(v239)), 8) ^ __ROR4__(*(v193 + ((v240 >> 22) & 0x3FC)), 24);
  v242 = (LODWORD(STACK[0x3940]) ^ LODWORD(STACK[0x2B70])) ^ __ROR4__(*(v193 + 4 * BYTE1(v234)), 8) ^ __ROR4__(*(v193 + 4 * (v238 ^ LOBYTE(STACK[0x32E0]) ^ *(v193 + 4 * BYTE2(v230)))), 16) ^ *(v193 + 4 * BYTE2(v239)) ^ __ROR4__(*(v193 + ((v237 >> 22) & 0x3FC)), 24);
  v243 = (v107 >> v210) ^ (v107 << v187);
  v244 = *(v193 + ((v234 >> 22) & 0x3FC));
  LODWORD(STACK[0x3940]) = v107;
  if (v209)
  {
    v243 = v107;
  }

  v245 = v243 ^ LODWORD(STACK[0x2BE0]) ^ __ROR4__(v244, 24) ^ __ROR4__(*(v193 + 4 * BYTE1(v237)), 8) ^ *(v193 + 4 * BYTE2(v240)) ^ __ROR4__(*(v193 + 4 * v239), 16);
  v246 = (LODWORD(STACK[0x3340]) ^ LODWORD(STACK[0x2B68])) ^ __ROR4__(*(v193 + 4 * BYTE1(v240)), 8) ^ __ROR4__(*(v193 + 4 * v237), 16) ^ __ROR4__(*(v193 + ((v239 >> 22) & 0x3FC)), 24) ^ *(v193 + 4 * BYTE2(v234));
  v247 = (v204 << v187) ^ (v204 >> v210);
  v248 = (LODWORD(STACK[0x2BB0]) ^ LODWORD(STACK[0x3348])) ^ *(v193 + 4 * BYTE2(v245)) ^ __ROR4__(*(v193 + 4 * v242), 16) ^ __ROR4__(*(v193 + 4 * BYTE1(v241)), 8) ^ __ROR4__(*(v193 + ((v246 >> 22) & 0x3FC)), 24);
  v249 = (LODWORD(STACK[0x3428]) ^ LODWORD(STACK[0x2B60])) ^ __ROR4__(*(v193 + 4 * v246), 16) ^ __ROR4__(*(v193 + 4 * BYTE1(v242)), 8) ^ __ROR4__(*(v193 + ((v245 >> 22) & 0x3FC)), 24) ^ *(v193 + 4 * BYTE2(v241));
  v250 = *(v193 + 4 * BYTE2(v242));
  LODWORD(STACK[0x3D38]) = v204;
  if (v209)
  {
    v247 = v204;
  }

  v251 = LODWORD(STACK[0x2AD8]) ^ v247 ^ v250 ^ __ROR4__(*(v193 + 4 * BYTE1(v246)), 8) ^ __ROR4__(*(v193 + ((v241 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * v245), 16);
  v252 = (LODWORD(STACK[0x2AD0]) ^ LODWORD(STACK[0x3438])) ^ *(v193 + 4 * BYTE2(v246)) ^ __ROR4__(*(v193 + 4 * BYTE1(v245)), 8) ^ __ROR4__(*(v193 + ((v242 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * v241), 16);
  v253 = v207 - v185 + (*(v193 + 4 * BYTE2(v248)) ^ __ROR4__(*(v193 + 4 * v251), 16) ^ __ROR4__(*(v193 + ((v252 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * BYTE1(v249)), 8));
  v254 = (LODWORD(STACK[0x3D60]) << v187) ^ (LODWORD(STACK[0x3D60]) >> v210);
  v255 = STACK[0x2BF8];
  v256 = STACK[0x2C10] ^ STACK[0x2BD8] ^ LODWORD(STACK[0x2BF8]) ^ LODWORD(STACK[0x3550]) ^ __ROR4__(*(v193 + 4 * v248), 16) ^ __ROR4__(*(v193 + 4 * BYTE1(v252)), 8) ^ *(v193 + 4 * BYTE2(v251)) ^ __ROR4__(*(v193 + ((v249 >> 22) & 0x3FC)), 24);
  v257 = __ROR4__(STACK[0x33E8], v210);
  if (v209)
  {
    v257 = STACK[0x33E8];
  }

  v258 = LODWORD(STACK[0x2AC8]) ^ v257 ^ v253;
  if (v209)
  {
    v254 = STACK[0x3D60];
  }

  v259 = LODWORD(STACK[0x2AC0]) ^ v254 ^ __ROR4__(*(v193 + 4 * v252), 16) ^ *(v193 + 4 * BYTE2(v249)) ^ __ROR4__(*(v193 + ((v248 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * BYTE1(v251)), 8);
  v260 = v212 ^ LODWORD(STACK[0x2BD0]) ^ LODWORD(STACK[0x3570]) ^ __ROR4__(*(v193 + 4 * BYTE1(v248)), 8) ^ __ROR4__(*(v193 + 4 * v249), 16) ^ __ROR4__(*(v193 + ((v251 >> 22) & 0x3FC)), 24) ^ *(v193 + 4 * BYTE2(v252));
  v261 = (v170 << v187) + (v170 >> v210);
  v262 = __ROR4__(STACK[0x34F0], v210);
  if (v209)
  {
    v262 = STACK[0x34F0];
  }

  v263 = v262 ^ LODWORD(STACK[0x2B58]) ^ *(v193 + 4 * BYTE2(v260)) ^ HIBYTE(*(v193 + ((v256 >> 22) & 0x3FC))) ^ (*(v193 + ((v256 >> 22) & 0x3FC)) << 8) ^ __ROR4__(*(v193 + 4 * v259), 16) ^ __ROR4__(*(v193 + 4 * BYTE1(v258)), 8);
  v264 = (LODWORD(STACK[0x3858]) ^ LODWORD(STACK[0x2BC8])) ^ __ROR4__(*(v193 + 4 * BYTE1(v256)), 8) ^ __ROR4__(*(v193 + ((v258 >> 22) & 0x3FC)), 24) ^ *(v193 + 4 * BYTE2(v259)) ^ __ROR4__(*(v193 + 4 * v260), 16);
  v265 = *(v193 + 4 * v258);
  LODWORD(STACK[0x3858]) = v170;
  if (v209)
  {
    v261 = v170;
  }

  v266 = v261 ^ LODWORD(STACK[0x2B50]) ^ __ROR4__(v265, 16) ^ *(v193 + 4 * BYTE2(v256)) ^ __ROR4__(*(v193 + 4 * BYTE1(v260)), 8) ^ __ROR4__(*(v193 + ((v259 >> 22) & 0x3FC)), 24);
  v267 = (LODWORD(STACK[0x35A0]) ^ LODWORD(STACK[0x2B48])) ^ __ROR4__(*(v193 + ((v260 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * v256), 16) ^ *(v193 + 4 * BYTE2(v258)) ^ __ROR4__(*(v193 + 4 * BYTE1(v259)), 8);
  v268 = STACK[0x3D70];
  v269 = (LODWORD(STACK[0x3D70]) << v187) ^ (LODWORD(STACK[0x3D70]) >> v210);
  v270 = STACK[0x3E38];
  v271 = (v270 << v187) ^ (v270 >> v210);
  v272 = (v183 >> v210) ^ (v183 << v187);
  v273 = __ROR4__(STACK[0x3D68], v210);
  if (v209)
  {
    v273 = STACK[0x3D68];
  }

  v274 = LODWORD(STACK[0x2AB8]) ^ v273 ^ __ROR4__(*(v193 + 4 * BYTE1(v266)), 8) ^ *(v193 + 4 * BYTE2(v264)) ^ __ROR4__(*(v193 + 4 * v263), 16) ^ __ROR4__(*(v193 + ((v267 >> 22) & 0x3FC)), 24);
  v275 = *(v193 + 4 * BYTE1(v267));
  LODWORD(STACK[0x3988]) = v183;
  if (v209)
  {
    v272 = v183;
  }

  v276 = v272 ^ LODWORD(STACK[0x2B40]) ^ __ROR4__(v275, 8) ^ __ROR4__(*(v193 + ((v266 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * v264), 16) ^ *(v193 + 4 * BYTE2(v263));
  if (v209)
  {
    v269 = v268;
  }

  v277 = v269 ^ LODWORD(STACK[0x2B38]) ^ __ROR4__(*(v193 + 4 * v267), 16) ^ __ROR4__(*(v193 + ((v264 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * BYTE1(v263)), 8) ^ *(v193 + 4 * BYTE2(v266));
  if (v209)
  {
    v271 = v270;
  }

  v278 = STACK[0x2C08] ^ STACK[0x2C00] ^ v255 ^ v271 ^ __ROR4__(*(v193 + 4 * v266), 16) ^ __ROR4__(*(v193 + 4 * BYTE1(v264)), 8) ^ *(v193 + 4 * BYTE2(v267)) ^ __ROR4__(*(v193 + ((v263 >> 22) & 0x3FC)), 24);
  v279 = (v205 << v187) ^ (v205 >> v210);
  v280 = (LODWORD(STACK[0x36B8]) ^ LODWORD(STACK[0x2BC0])) ^ __ROR4__(*(v193 + 4 * v278), 16) ^ *(v193 + 4 * BYTE2(v277)) ^ __ROR4__(*(v193 + ((v274 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * BYTE1(v276)), 8);
  if (v209)
  {
    v279 = v205;
  }

  v281 = LODWORD(STACK[0x2AB0]) ^ v279 ^ __ROR4__(*(v193 + ((v276 >> 22) & 0x3FC)), 24) ^ *(v193 + 4 * BYTE2(v278)) ^ __ROR4__(*(v193 + 4 * v277), 16) ^ __ROR4__(*(v193 + 4 * BYTE1(v274)), 8);
  v282 = (v206 << v187) ^ (v206 >> v210);
  if (v209)
  {
    v282 = v206;
  }

  v283 = v282 ^ LODWORD(STACK[0x2B30]) ^ __ROR4__(*(v193 + 4 * BYTE1(v278)), 8) ^ __ROR4__(*(v193 + 4 * v274), 16) ^ __ROR4__(*(v193 + ((v277 >> 22) & 0x3FC)), 24) ^ *(v193 + 4 * BYTE2(v276));
  v284 = (LODWORD(STACK[0x2AA8]) ^ LODWORD(STACK[0x36C0])) ^ *(v193 + 4 * BYTE2(v274)) ^ __ROR4__(*(v193 + 4 * BYTE1(v277)), 8) ^ __ROR4__(*(v193 + ((v278 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v193 + 4 * v276), 16);
  v285 = (LODWORD(STACK[0x3D50]) >> v210) ^ (LODWORD(STACK[0x3D50]) << v187);
  v286 = (LODWORD(STACK[0x3D58]) << v187) ^ (LODWORD(STACK[0x3D58]) >> v210);
  v287 = STACK[0x3AB0];
  v288 = (LODWORD(STACK[0x3D40]) << v187) + (LODWORD(STACK[0x3D40]) >> v210);
  if (v209)
  {
    v285 = STACK[0x3D50];
  }

  v289 = v285 ^ LODWORD(STACK[0x2B28]) ^ *(STACK[0x3AB0] + 4 * BYTE1(v284)) ^ __ROR4__(*(STACK[0x3AB0] + 4 * v280), 8) ^ __ROR4__(*(v287 + 4 * HIBYTE(v283)), 16) ^ __ROR4__(*(v287 + 4 * BYTE2(v281)), 24);
  v290 = (v289 << v210) + (v289 >> v187);
  if (v209)
  {
    v290 = v289;
    v291 = STACK[0x3D58];
  }

  else
  {
    v291 = v286;
  }

  if (v209)
  {
    v292 = STACK[0x3D40];
  }

  else
  {
    v292 = v288;
  }

  v293 = STACK[0x3650] & 0x18;
  v294 = (LODWORD(STACK[0x3D48]) << v293) + (LODWORD(STACK[0x3D48]) >> v210);
  v295 = v291 ^ __ROR4__(*(v287 + 4 * v283), 8) ^ __ROR4__(*(v287 + 4 * BYTE2(v284)), 24) ^ __ROR4__(*(v287 + ((v281 >> 22) & 0x3FC)), 16) ^ *(v287 + 4 * BYTE1(v280));
  if ((STACK[0x3650] & 0x18) == 0)
  {
    v294 = STACK[0x3D48];
  }

  v296 = v294 ^ LODWORD(STACK[0x2B18]) ^ __ROR4__(*(v287 + ((v280 >> 22) & 0x3FC)), 16) ^ __ROR4__(*(v287 + 4 * v284), 8) ^ __ROR4__(*(v287 + 4 * BYTE2(v283)), 24) ^ *(v287 + 4 * BYTE1(v281));
  v297 = LODWORD(STACK[0x2AA0]) ^ v292 ^ __ROR4__(*(v287 + 4 * v281), 8) ^ __ROR4__(*(v287 + 4 * BYTE2(v280)), 24) ^ *(v287 + 4 * BYTE1(v283)) ^ __ROR4__(*(v287 + ((v284 >> 22) & 0x3FC)), 16);
  v298 = LODWORD(STACK[0x2B20]) ^ __ROR4__(__ROR4__(v295, 24) ^ 0xFC92F35D, 8) ^ 0x5DFC92F3;
  if ((STACK[0x3650] & 0x18) != 0)
  {
    v298 = (v298 << v210) + (v298 >> v293);
  }

  v299 = __ROR4__(v297, v293);
  if ((STACK[0x3650] & 0x18) != 0)
  {
    v297 = v299;
  }

  v300 = __ROR4__(v296, v293);
  if ((STACK[0x3650] & 0x18) == 0)
  {
    v300 = v296;
  }

  if (v207)
  {
    v301 = v290;
  }

  else
  {
    v301 = v298;
  }

  if (v207)
  {
    v290 = v300;
  }

  else
  {
    v298 = v297;
  }

  if (v207)
  {
    v302 = v297;
  }

  else
  {
    v302 = v300;
  }

  LODWORD(STACK[0x3848]) = v207;
  v303 = ((v207 - 2 * LODWORD(STACK[0x36C8])) & 2) == 0;
  if (((v207 - 2 * LODWORD(STACK[0x36C8])) & 2) != 0)
  {
    v304 = v298;
  }

  else
  {
    v304 = v290;
  }

  v305 = STACK[0x2A90];
  *(STACK[0x2A90] + STACK[0x3800]) = BYTE2(v304);
  if (v303)
  {
    v306 = v301;
  }

  else
  {
    v306 = v302;
  }

  *(v305 + STACK[0x36F0]) = HIBYTE(v306);
  if (!v303)
  {
    v298 = v290;
  }

  *(v305 + STACK[0x36E8]) = BYTE1(v298);
  *(v305 + STACK[0x36D0]) = v306;
  v307 = STACK[0x36E0];
  *(v305 + STACK[0x36E0]) = HIBYTE(v304);
  *(v305 + STACK[0x3828]) = HIBYTE(v298);
  *(v305 + STACK[0x3700]) = BYTE2(v306);
  *(v305 + STACK[0x36F8]) = BYTE1(v306);
  *(v305 + STACK[0x3808]) = BYTE1(v304);
  *(v305 + STACK[0x3798]) = BYTE2(v298);
  if (v303)
  {
    v301 = v302;
  }

  *(v305 + STACK[0x3750]) = HIBYTE(v301);
  *(v305 + STACK[0x3818]) = BYTE2(v301);
  *(v305 + STACK[0x3788]) = BYTE1(v301);
  *(v305 + STACK[0x37A8]) = v301;
  *(v305 + STACK[0x3820]) = v304;
  *(v305 + STACK[0x3830]) = v298;
  return (*(v11 + 8 * ((62 * (v307 + 16 < STACK[0x3B58])) ^ LODWORD(STACK[0x3838]))))();
}

uint64_t sub_100DE2380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  LODWORD(STACK[0x3B08]) = a7 ^ 0x2B20;
  v8 = *(v7 + 8 * ((91 * (LODWORD(STACK[0x2C20]) != 5 * (a7 ^ 0x6938) - 21038)) ^ a7));
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x3980]) = 113;
  v9 = STACK[0x448];
  STACK[0x32E0] = STACK[0x448];
  STACK[0x3D50] = v9;
  STACK[0x3AD8] = STACK[0x3400];
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = STACK[0x1BC8];
  LODWORD(v9) = STACK[0x1A78];
  LODWORD(STACK[0x3298]) = STACK[0x1A78];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  LODWORD(STACK[0x3280]) = STACK[0x3E18];
  LODWORD(STACK[0x3258]) = STACK[0x1A90];
  LODWORD(STACK[0x32D0]) = STACK[0x3830];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3288]) = v9;
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x3260]) = STACK[0x3810];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  return v8(a1, a2, a3, a4, a5, a6, STACK[0x3318]);
}

uint64_t sub_100DE248C(uint64_t a1)
{
  *STACK[0x2B0] = a1;
  *STACK[0x290] = STACK[0x280];
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100DE2530(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = -42900;
  if (v2)
  {
    v4 = *(result + 8);
    if (v4)
    {
      if (*result)
      {
        v1688 = *result;
        v5 = *(result + 20) ^ 0x68B2C99 ^ (711523751 * ((-2 - ((result | 0xB236A405) + (~result | 0x4DC95BFA))) ^ 0x7DD37A2B));
        v6 = *(&off_101353600 + (v5 ^ 0x7CA47E26)) - 4;
        v7 = (*&v6[8 * (v5 ^ 0x7CA4008B)])(1028);
        v8 = (*&v6[8 * v5 - 0x3E51FFBA8])(1028);
        if (v7)
        {
          v9 = v8 == 0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          v10 = v5 + 1167297928;
          v3 = -42885;
        }

        else
        {
          v1414 = v6;
          v1415 = v1;
          v1399 = ((v5 ^ 0x56BD70CA) - 638863802) | 0x2A400892;
          v1685 = *(v2 + 13);
          v1668 = v5 ^ 0x56BD70CA;
          v11 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706284368);
          v12 = v11;
          v13 = (*(v11 + (v1685 ^ 0x7B)) >> 6) | (4 * *(v11 + (v1685 ^ 0x7B)));
          v1679 = *(v2 + 1);
          v14 = *(&off_101353600 + (v5 ^ 0x7CA47B8D)) - 8;
          v1683 = *(v2 + 8);
          v15 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706283358) - 8;
          v1674 = *(v2 + 2);
          v16 = v15;
          v1665 = *(v2 + 11);
          v17 = (((v14[v1679 ^ 0xA6] * ((((v5 ^ 0xCA) + 70) | 0x92) ^ 0xED)) ^ 0x77) << 16) | ((v1674 ^ 0x15 ^ v15[v1674 ^ 0xCC]) << 8);
          v18 = ((*(v12 + (v1665 ^ 0x5D)) >> 6) | (4 * *(v12 + (v1665 ^ 0x5D))));
          v1677 = *(v2 + 14);
          v19 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706283233) - 12;
          LODWORD(v11) = (((*(v12 + (v1665 ^ 0x5D)) >> 6) | (4 * *(v12 + (v1665 ^ 0x5D)))) ^ (v18 >> 5) ^ (v18 >> 1)) ^ 0xAD | ((v1683 ^ 0x9D ^ v15[v1683 ^ 0x41]) << 24);
          v1641 = *(v2 + 12);
          v20 = v15[v1641 ^ 0xF0];
          v1634 = *(v2 + 5);
          LODWORD(v15) = ((*(v12 + (v1634 ^ 0x88)) >> 6) | (4 * *(v12 + (v1634 ^ 0x88))));
          v21 = (((v13 ^ (v13 >> 5) ^ (v13 >> 1)) ^ 0xAE) << 16) | ((*(v2 + 14) ^ v19[v1677 ^ 0x14] ^ 0xC) << 8) | ((v1641 ^ v20 ^ 0xC) << 24);
          v1693 = ((*(v12 + (v1634 ^ 0x88)) >> 6) | (4 * *(v12 + (v1634 ^ 0x88)))) ^ (v15 >> 5) ^ (v15 >> 1);
          v1448 = *(v2 + 3);
          LOBYTE(v15) = (*(v12 + (v1448 ^ 0x98)) >> 6) | (4 * *(v12 + (v1448 ^ 0x98)));
          v1444 = *(v2 + 10);
          v22 = *(v12 + (v1444 ^ 0xB9) - ((2 * (v1444 ^ 0xB9)) & 0x1EC) + 246);
          v1470 = *(v2 + 9);
          v1662 = v11 & 0xFFFF00FF | (((((v22 >> 6) | (4 * v22)) ^ (((v22 >> 6) | (4 * v22)) >> 5) ^ (((v22 >> 6) | (4 * v22)) >> 1)) ^ 0x51) << 8) | ((v1470 ^ 0x81 ^ v16[v1470 ^ 0x5A]) << 16);
          v1475 = *v2;
          v23 = v17 & 0xFFFFFF00 | (v15 ^ (v15 >> 5) ^ (v15 >> 1)) ^ 0x1A | (((127 * v14[v1475 ^ 0xB1]) ^ 0xA6) << 24);
          v1630 = v2 & 0xFFFFFFFFFFFFFFF8;
          v1408 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706283306);
          v24 = (v5 ^ 0x56BD70CA) - 706284399;
          v1404 = *(&off_101353600 + v24);
          v1627 = *(*v1404 + (*v1408 & ((v2 & 0xFFFFFFF8) - 103642729) & 0xFFFFFFF8));
          *(&v25 + 1) = v2 & 0xFFFFFFFFFFFFFFF8;
          *&v25 = v2;
          v1575 = __ROR8__(v1627, 61);
          v26 = (v1627 + (v25 >> 8)) ^ 0xF41651499F5E3C67;
          v27 = v26 ^ v1575;
          v28 = __ROR8__(v26, 8) + (v26 ^ v1575);
          *&v25 = __ROR8__(v27, 61);
          *(&v25 + 1) = v28 ^ v25 ^ 0x153242EE3CF06A49;
          *&v25 = v28 ^ v25;
          v29 = (*(&v25 + 1) + ((v28 ^ 0x153242EE3CF06A49) << 56) + ((v28 ^ 0x153242EE3CF06A49uLL) >> 8)) ^ 0x2275D4C73835399BLL;
          v30 = v29 ^ (v25 >> 61);
          v31 = (v30 + __ROR8__(v29, 8)) ^ 0xE5AF1AB32EBD3CDDLL;
          v32 = v31 ^ __ROR8__(v30, 61);
          v33 = (v32 + __ROR8__(v31, 8)) ^ 0xC7DDC9F6CC45B721;
          v34 = v33 ^ __ROR8__(v32, 61);
          v35 = (v34 + __ROR8__(v33, 8)) ^ 0xA82620A559D2DA78;
          v36 = v35 ^ __ROR8__(v34, 61);
          v37 = (__ROR8__(v35, 8) + v36) ^ 0x5F8DEC3EA3980A1BLL;
          v38 = (v37 ^ __ROR8__(v36, 61)) + (v37 >> 8) + (v37 << 56);
          *(&v25 + 1) = (v2 + 8) & 0xFFFFFFFFFFFFFFF8;
          *&v25 = v2 + 8;
          v39 = *(*v1404 + ((DWORD2(v25) - 103642729) & *v1408 & 0xFFFFFFF8));
          v40 = (v39 + (v25 >> 8)) ^ 0xF41651499F5E3C67 ^ __ROR8__(v39, 61);
          v41 = v40 + __ROR8__((v39 + (v25 >> 8)) ^ 0xF41651499F5E3C67, 8);
          v42 = v41 ^ __ROR8__(v40, 61);
          v1465 = v42 ^ 0x153242EE3CF06A49;
          *(&v25 + 1) = v42 ^ 0x153242EE3CF06A49;
          *&v25 = v42;
          v43 = v25 >> 61;
          v1461 = v43;
          v1457 = v41 ^ 0x153242EE3CF06A49;
          v1646 = v4;
          v44 = ((v42 ^ 0x153242EE3CF06A49) + (v1457 << 56) + (v1457 >> 8)) ^ 0x2275D4C73835399BLL;
          *&v25 = __ROR8__(v44, 8);
          v45 = v44 ^ v43;
          v46 = v25 + v45;
          v47 = __ROR8__(v45, 61);
          v48 = v47 & 0x200;
          v9 = (v47 & 0x200 & v46) == 0;
          v49 = v46 ^ 0xE5AF1AB32EBD3CDDLL;
          if (!v9)
          {
            v48 = -v48;
          }

          v50 = (v48 + v49) ^ v47 & 0xFFFFFFFFFFFFFDFFLL;
          v51 = (v50 + __ROR8__(v49, 8)) ^ 0xC7DDC9F6CC45B721;
          v53 = __ROR8__(v50, 61);
          v52 = v51 ^ v53;
          v54 = ((v51 ^ v53) + (v51 << 56) + (v51 >> 8)) ^ 0xA82620A559D2DA78;
          v55 = v54 ^ __ROR8__(v52, 61);
          v56 = (__ROR8__(v54, 8) + v55) ^ 0x5F8DEC3EA3980A1BLL;
          v57 = (v56 ^ __ROR8__(v55, 61)) + (v56 << 56) + (v56 >> 8);
          v58 = 8 * (v2 & 7);
          v59 = (v38 ^ 0xC1C3C8D2A4C54828) >> v58;
          v57 ^= 0xC1C3C8D2A4C54828;
          v60 = v58 ^ 0x3C;
          v1441 = v58;
          v61 = v59 + 16 * (v57 << (v58 ^ 0x3Cu));
          v62 = *(v12 + (BYTE2(v61) ^ 0xC0));
          v1689 = v8;
          *(&v63 + 1) = (v2 + 16) & 0xFFFFFFFFFFFFFFF8;
          *&v63 = v2 + 16;
          v64 = *(*v1404 + ((DWORD2(v63) - 103642729) & *v1408 & 0xFFFFFFF8));
          v65 = (v64 + (v63 >> 8)) ^ 0xF41651499F5E3C67;
          v66 = v65 ^ __ROR8__(v64, 61);
          v67 = (v66 + __ROR8__(v65, 8)) ^ 0x153242EE3CF06A49;
          v68 = v67 ^ __ROR8__(v66, 61);
          v69 = (v68 + __ROR8__(v67, 8)) ^ 0x2275D4C73835399BLL;
          v70 = v69 ^ __ROR8__(v68, 61);
          v71 = (__ROR8__(v69, 8) + v70) ^ 0xE5AF1AB32EBD3CDDLL;
          v72 = v71 ^ __ROR8__(v70, 61);
          v73 = (v72 + __ROR8__(v71, 8)) ^ 0xC7DDC9F6CC45B721;
          v1426 = v73 ^ __ROR8__(v72, 61);
          v1435 = (__ROR8__(v73, 8) + v1426) ^ 0xA82620A559D2DA78;
          v74 = v1435 ^ __ROR8__(v1426, 61);
          v1431 = __ROR8__(v1435, 8);
          v75 = v57 >> (8 * (v2 & 7u));
          v76 = v75 + 16 * (((__ROR8__((v74 + v1431) ^ 0x5F8DEC3EA3980A1BLL, 8) + ((v74 + v1431) ^ __ROR8__(v74, 61) ^ 0xF8DEC3EA3980A1BLL)) ^ 0x1C3C8D2A4C54828) << v60);
          LODWORD(v75) = *(v12 + (v75 ^ 0x3ALL));
          LODWORD(v73) = ((v75 >> 6) | (4 * v75)) ^ (((v75 >> 6) | (4 * v75)) >> 5) ^ (((v75 >> 6) | (4 * v75)) >> 1);
          LODWORD(v75) = *(v12 + (BYTE1(v76) ^ 0x9DLL));
          v1656 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706284368);
          v77 = *(v12 + (BYTE5(v76) ^ 0x74));
          LOBYTE(v74) = (v77 >> 6) | (4 * v77);
          v1422 = *(v2 + 15);
          v1649 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706283358) - 8;
          v78 = ((((v74 ^ (v74 >> 5) ^ (v74 >> 1)) ^ 0xF6) << 16) | ((v16[BYTE4(v76) ^ 0x26] ^ HIDWORD(v76) ^ 0xB0) << 24) | (((127 * v14[BYTE6(v76) ^ 0x64]) ^ 0x42) << 8) | v16[HIBYTE(v76) ^ 0x8B] ^ HIBYTE(v76) ^ 0xB8) ^ (v21 & 0xFFFFFF00 | (127 * v14[v1422 ^ 0xBC]) ^ 0x51);
          v79 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706284218);
          v1690 = (((v19[v59 ^ 0xC0] ^ v59 ^ 0x1D) << 24) | (((v19[BYTE1(v61) ^ 0x9ELL] ^ BYTE1(v61)) ^ 1) << 16) | (((((v62 >> 6) | (4 * v62)) ^ (((v62 >> 6) | (4 * v62)) >> 5) ^ (((v62 >> 6) | (4 * v62)) >> 1)) ^ 0xFB) << 8) | ((BYTE3(v61) ^ 0x59 ^ -(BYTE3(v61) ^ 0x59) ^ (v19[BYTE3(v61) ^ 0x7ALL] - (BYTE3(v61) ^ 0x59 ^ v19[BYTE3(v61) ^ 0x7ALL]))) + v19[BYTE3(v61) ^ 0x7ALL]) ^ 0x8A) ^ v23;
          v80 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706284359) - 4;
          v1416 = *(v2 + 4);
          v1391 = *(v2 + 6);
          v1644 = *(&off_101353600 + (v5 ^ 0x7CA47B8D)) - 8;
          v1401 = *(v2 + 7);
          v1610 = ((((127 * v14[BYTE4(v61) ^ 0xCCLL]) ^ 0xCA) << 24) | ((v19[BYTE6(v61) ^ 0x46] ^ BYTE6(v61) ^ 0xCA) << 8) | ((v19[BYTE5(v61) ^ 0x41] ^ BYTE5(v61) ^ 0x4F) << 16) | HIBYTE(v61) ^ v1649[HIBYTE(v61) ^ 0x3A]) ^ ((((127 * v14[v1416 ^ 0x4E]) ^ 0x97) << 24) | (((127 * v14[v1391 ^ 0xE0]) ^ 0xBC) << 8) | ((v1693 ^ 0x49) << 16) | (127 * v14[v1401 ^ 0xCC]) ^ 0xCA);
          v1421 = BYTE3(v76);
          v1653 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706283233) - 12;
          v1637 = v1662 ^ 0xEA ^ (((v73 ^ 0xFFFFFFE7) << 24) | (((((v75 >> 6) | (4 * v75)) ^ (((v75 >> 6) | (4 * v75)) >> 5) ^ (((v75 >> 6) | (4 * v75)) >> 1)) ^ 0x37) << 16) | (((v19[BYTE2(v76) ^ 0x3ELL] ^ BYTE2(v76)) ^ 0xF3) << 8) | BYTE3(v76) ^ v19[BYTE3(v76) ^ 0xEELL]);
          v1621 = *(v79 + 4 * (v78 ^ 0x47u)) ^ v78 ^ __ROR4__(*(v79 + 4 * (HIBYTE(v78) ^ 0x47)) ^ HIBYTE(v78) ^ 0x4EB4F6F2, 8) ^ __ROR4__(*(v79 + 4 * (BYTE1(v78) ^ 0x47u)) ^ BYTE1(v78) ^ 0x4EB4F6F2, 24) ^ v1690 ^ __ROR4__(((BYTE2(v78) ^ 0x3CEC4229) + *&v80[4 * (BYTE2(v78) ^ 0x78)]) ^ 0x40601320, 16) ^ 0x86;
          v1570 = v1621 ^ v1610 ^ v1637;
          v81 = v1570 ^ 0x29 ^ v78;
          LODWORD(v76) = v81 ^ 0x6FB4F674;
          v1617 = v81;
          v1625 = (v5 ^ 0x56BD70CA) - 706284399;
          v82 = *(&off_101353600 + (v5 ^ 0x56BD70CA) - 706283154) - 4;
          v83 = v82;
          v1579 = (*&v82[4 * (v1570 ^ 0x29 ^ v78 ^ 0x83)] + 78671838) ^ __ROR4__((*&v82[4 * (BYTE2(v81) ^ 0x43)] + 78671838) ^ 0x5CEF5A0F, 16) ^ __ROR4__((*&v82[4 * (HIBYTE(v81) ^ 0x98)] + 78671838) ^ 0x5CEF5A0F, 8) ^ v1621 ^ __ROR4__(*(v79 + 4 * (((v81 ^ 0xF674) >> 8) ^ 0x47u)) ^ ((v81 ^ 0xF674) >> 8) ^ 0x4EB4F6F2, 24);
          v1596 = v1579 ^ 0x68114BB3 ^ v1621 ^ v1610;
          v1613 = v1579 ^ 0x68114BB3;
          v1659 = v1570 ^ 0x21000029 ^ v1596 ^ 0x9BFE1195;
          v84 = v1659 ^ v81 ^ 0x6FB4F674 ^ 0x4EB4F674;
          v85 = *(v79 + 4 * (BYTE1(v84) ^ 0x47u));
          DWORD1(v63) = BYTE1(v84) ^ (((v85 - (v85 ^ 0x4EB4F674)) ^ 0xFFFFFFF8) + v85);
          LODWORD(v63) = ((v85 - (v85 ^ 0x4EB4F674)) ^ 0xFFFFFFF8) + v85;
          v1607 = v1659 ^ v76;
          v1556 = *(v79 + 4 * (v1607 ^ 0x33u)) ^ __ROR4__((*&v82[4 * (BYTE2(v1607) ^ 0x43)] + 78671838) ^ 0x5CEF5A0F, 16) ^ v1579 ^ 0x68114BB3 ^ v1607 ^ __ROR4__(*(v79 + 4 * (((v1607 ^ 0x4EB4F674u) >> 24) ^ 0x47)) ^ ((v1607 ^ 0x4EB4F674u) >> 24) ^ 0x4EB4F6F2, 8) ^ (v63 >> 24);
          v1529 = v1556 ^ 0xF44A613A ^ v1570 ^ 0x29;
          v1593 = v1529 ^ v84 ^ 0x2D000000;
          v86 = (((v1529 ^ v84) ^ 0x3CEC4229) + *&v80[4 * ((v1529 ^ v84) ^ 0x78)]) ^ v1556 ^ 0xF44A613A ^ __ROR4__(*(v79 + 4 * (((v1529 ^ v84) >> 8) ^ 0x47u)) ^ ((v1529 ^ v84) >> 8) ^ 0x4EB4F6F2, 24) ^ __ROR4__(((HIBYTE(v1593) ^ 0x3CEC4229) + *&v80[4 * (HIBYTE(v1593) ^ 0x78)]) ^ 0x40601320, 8) ^ __ROR4__(((((v1529 ^ v84) >> 16) ^ 0x3CEC4229) + *&v80[4 * (((v1529 ^ v84) >> 16) ^ 0x78)]) ^ 0x40601320, 16);
          v1602 = v1556 ^ 0xF44A613A ^ v1596 ^ 0x9BFE1195;
          LODWORD(v76) = v1602 ^ 0xB6FE11BC ^ v86 ^ 0x2C9E029C;
          v87 = v76 ^ v84;
          v88 = (((v76 ^ v84) ^ 0x3CEC4229) + *&v80[4 * ((v76 ^ v84) ^ 0x78)]) ^ v86 ^ 0x2C9E029C ^ __ROR4__(*(v79 + 4 * (BYTE1(v87) ^ 0x47u)) ^ BYTE1(v87) ^ 0x4EB4F6F2, 24) ^ __ROR4__(((HIBYTE(v87) ^ 0x3CEC4229) + *&v80[4 * (HIBYTE(v87) ^ 0x78)]) ^ 0x40601320, 8) ^ __ROR4__(((((v76 ^ v84) >> 16) ^ 0x3CEC4229) + *&v80[4 * (((v76 ^ v84) >> 16) ^ 0x78)]) ^ 0x40601320, 16);
          v1561 = v88 ^ v76;
          v1589 = v76;
          v89 = v88 ^ v76 ^ 0xF44AE7C8 ^ v1593;
          v1599 = v89 ^ 0x13601320;
          v90 = *(&off_101353600 + v24 + 40) - 4;
          v91 = *(&off_101353600 + v24 + 1207) - 4;
          LODWORD(v82) = *(v79 + 4 * (v89 ^ 0x67u)) ^ __ROR4__(*&v91[4 * (HIBYTE(v89) ^ 0xE4)] ^ 0x42DD8FCE, 8) ^ v88 ^ v89 ^ 0x20 ^ __ROR4__(((((v89 ^ 0x13601320) >> 16) ^ 0x3CEC4229) + *&v80[4 * (((v89 ^ 0x13601320) >> 16) ^ 0x78)]) ^ 0x40601320, 16) ^ __ROR4__(((((v89 ^ 0x1320) >> 8) ^ 0x3CEC4229) + *&v80[4 * (((v89 ^ 0x1320) >> 8) ^ 0x78)]) ^ 0x40601320, 24);
          v1584 = v1529 ^ 0x2D000000 ^ v76;
          LODWORD(v73) = v82 ^ v1584 ^ v89;
          v1454 = *(&off_101353600 + v24 + 1245) - 4;
          v1534 = v82 ^ 0xFDD4E5D2;
          v92 = v82 ^ v88 ^ v76 ^ 0xF44AE7C8;
          v1515 = (*&v83[4 * (v73 ^ 0xCD)] + 78671838) ^ __ROR4__((*&v83[4 * (BYTE3(v73) ^ 0xED)] + 78671838) ^ 0x5CEF5A0F, 8) ^ v82 ^ 0xFDD4E5D2 ^ __ROR4__(*(v79 + 4 * (((v73 ^ 0x1AFE113A) >> 16) ^ 0x47u)) ^ ((v73 ^ 0x1AFE113A) >> 16) ^ 0x4EB4F6F2, 16) ^ __ROR4__(((((v73 ^ 0x113A) >> 8) ^ 0x3CEC4229) + *&v80[4 * (((v73 ^ 0x113A) >> 8) ^ 0x78)]) ^ 0x40601320, 24) ^ 0xF44AE7C8;
          LODWORD(v61) = v1515 ^ v92 ^ v82 ^ v1584;
          v93 = v61 ^ 0x1AFE11BC ^ v73 ^ 0x1AFE113A;
          v1362 = v91;
          v1511 = v93 ^ 0x3D715893;
          LODWORD(v59) = *&v91[4 * (v61 ^ 0xBC ^ v73 ^ 0x3A ^ 0x64)] ^ __ROR4__(*&v91[4 * (BYTE2(v93) ^ 0x86)] ^ 0x42DD8FCE, 16) ^ v1515 ^ __ROR4__(*(v79 + 4 * (((v93 ^ 0x3D715893u) >> 24) ^ 0x47)) ^ ((v93 ^ 0x3D715893u) >> 24) ^ 0x4EB4F6F2, 8) ^ __ROR4__(((BYTE1(v1511) ^ 0x3CEC4229) + *&v90[4 * (BYTE1(v1511) ^ 0x78)]) ^ 0x40601320, 24);
          v1506 = v1515 ^ v92 ^ 0x46114B35;
          v94 = v59 ^ 0x5CEF5A0F ^ v1506 ^ v61 ^ 0x1AFE11BC;
          v1497 = v59 ^ 0x5CEF5A0F ^ v1506;
          v95 = v94 ^ v1511;
          LODWORD(v72) = v94 ^ v1511 ^ 0x8DACD75D;
          v1371 = *(&off_101353600 + v24 + 181);
          v1502 = v94 ^ 0xB9438D52;
          v1492 = *(v79 + 4 * ((v94 ^ v1511) ^ 0x1Au)) ^ __ROR4__(*&v91[4 * (((v94 ^ v1511 ^ 0xEA438D52) >> 16) ^ 0x18)] ^ 0x42DD8FCE, 16) ^ v59 ^ 0x5CEF5A0F ^ (v94 ^ v1511) ^ 0x52 ^ __ROR4__(*(v79 + 4 * (BYTE3(v72) ^ 0x47)) ^ BYTE3(v72) ^ 0x4EB4F6F2, 8) ^ __ROR4__(((BYTE1(v72) ^ 0x3CEC4229) + *&v90[4 * (BYTE1(v72) ^ 0x78)]) ^ 0x40601320, 24) ^ 0xB7C9A20D;
          v96 = v1492 ^ v1497 ^ v94 ^ 0xB9438D52;
          v97 = v1492 ^ v1497 ^ 0xFE7D54F0;
          v98 = v96 ^ v94 ^ v1511 ^ 0x2F3ED9A2;
          v1349 = v90;
          v99 = (HIBYTE(v98) ^ 0x3CEC4229) + *&v90[4 * (HIBYTE(v98) ^ 0x78)];
          LODWORD(v83) = *(v79 + 4 * ((v96 ^ v95) ^ 0xE5u)) ^ __ROR4__((*&v1454[4 * (((v96 ^ v95 ^ 0x3FBD9CEE) >> 16) ^ 0x74)] + 78671838) ^ 0x5CEF5A0F, 16) ^ v1492 ^ (v96 ^ v95) ^ 0xA2 ^ __ROR4__(((BYTE1(v98) ^ 0x3CEC4229) + *&v90[4 * (BYTE1(v98) ^ 0x78)]) ^ 0x40601320, 24) ^ (((v99 ^ 0x40601320u) >> (v99 & 8) >> (v99 & 8 ^ 8)) | ((v99 ^ 0x40601320) << 24));
          v1551 = v95 ^ 0xA30B3660;
          LODWORD(v75) = v96 ^ v95 ^ 0x162DDC06;
          v1378 = v61 ^ 0xD62AE63E;
          LODWORD(v74) = v86 ^ 0xA5E55B40;
          v1394 = v59 ^ 0xAA9534FC;
          v1694 = v7;
          v1520 = v92 ^ 0xBE3175B7;
          v1478 = v83 ^ 0xB14A6594;
          v1663 = (v83 ^ 0xB14A6594) - (v92 ^ 0xBE3175B7) - 442934810;
          v100 = v96 ^ 0x9A862333 ^ v83 ^ v97;
          v101 = v83 ^ v97 ^ 0xD94A6594;
          v102 = v1556 ^ 0x9A9005B6;
          v1412 = v73 ^ 0xBE3175B7;
          v1388 = v82 ^ v1584 ^ 0xED3175B7;
          v1382 = v74;
          v103 = ((v95 ^ 0xA30B3660) - v74) ^ 0x803527E3;
          v1385 = v96 ^ v95 ^ 0xCE6091FA ^ v100;
          v104 = ((v83 ^ 0xB14A6594) - v1385) ^ 0xA4A38885;
          v1543 = v1579 ^ 0xEB33D067;
          v105 = ((v73 ^ 0xBE3175B7) - (v1556 ^ 0x9A9005B6)) ^ 0xF4F4DD35;
          v1580 = v87 ^ v105 ^ 0xC90C1067;
          LODWORD(v73) = v88 ^ 0x6F409F99;
          LODWORD(v61) = ((v88 ^ 0x6F409F99) - (v61 ^ 0xD62AE63E)) ^ 0x3F9494CC;
          v106 = v78 ^ 0xAF352175;
          v78 ^= 0x3850ACF4u;
          LODWORD(v83) = ((v59 ^ 0xAA9534FC) - v78) ^ 0xB1737E9B;
          v107 = (v1556 ^ 0x9A9005B6) + 152300892 + v74;
          v1375 = __ROR4__(v100 ^ v107, 11) ^ 0xE46E7AFA;
          v1397 = *(&off_101353600 + (v1668 ^ 0x2A190ED8)) - 1556179004;
          v1161 = (v1621 ^ v1610 ^ 0xC08C703C) - (v1570 ^ 0xC08C703C) + 586039347;
          v108 = v105 ^ v1161;
          v109 = v105;
          v1488 = v105;
          v110 = v105 ^ v1161 ^ v78;
          v111 = v1637 ^ v105 ^ v1161;
          v1486 = v75 + (v1690 ^ 0x3850ACF4);
          v112 = v1596 ^ 0x8EB66E56 ^ v75;
          v113 = v1561 ^ 0xF44AE7C8;
          v1151 = v106 ^ v1561 ^ 0xF44AE7C8;
          v114 = v112 ^ v1151;
          v1154 = v83;
          v115 = v83 ^ v107;
          v116 = v75 ^ v115;
          v117 = v1561 ^ 0x6F409F99 ^ v112 ^ v1151;
          LODWORD(v75) = (v75 ^ v115) + v1397 + v117;
          v1638 = v115 ^ 0x9B810B5B ^ v96;
          v118 = (v1570 ^ 0xC08C703C) - 79419804;
          v119 = (v1610 ^ 0x3850ACDD) + 89382933 + (v1617 ^ 0xC08C7015);
          v120 = v103 ^ v119 ^ v1621 ^ v1610 ^ 0xC08C703C;
          v121 = v103 ^ v119 ^ v1570 ^ 0xC08C703C;
          v122 = v1621 ^ 0xC08C7015 ^ v103 ^ v119;
          v123 = -888361454 - (v1607 ^ 0x3149BF4D) - v101;
          v124 = v105 ^ v1161 ^ v1610 ^ 0x3850ACDD ^ v123;
          v125 = v110 ^ v123;
          v126 = v108 ^ v1690 ^ 0x3850ACF4 ^ v123;
          v1366 = v61;
          v1691 = v103 ^ v61;
          v127 = v103 ^ v61 ^ v1551;
          v1144 = v123;
          v128 = v111 ^ 0x3850ACF4 ^ v123;
          v129 = ((v75 - (v114 ^ v73)) ^ v75 ^ v114 ^ v73 ^ -(v75 ^ v114 ^ v73)) + v75;
          v130 = v75 + v127;
          if ((v75 + v127))
          {
            v131 = v124;
          }

          else
          {
            v131 = v126;
          }

          v1571 = v131;
          if (v130)
          {
            v132 = v126;
          }

          else
          {
            v132 = v125;
          }

          v1562 = v132;
          if (v130)
          {
            v133 = v125;
          }

          else
          {
            v133 = v128;
          }

          v1565 = v133;
          if ((v130 & 1) == 0)
          {
            v128 = v124;
          }

          v1552 = v128;
          if (v130)
          {
            v134 = v1621 ^ 0xC08C7015 ^ v103 ^ v119;
          }

          else
          {
            v134 = v103 ^ v119 ^ v1617 ^ 0xC08C7015;
          }

          v1557 = v134;
          if (v130)
          {
            v135 = v103 ^ v119 ^ v1617 ^ 0xC08C7015;
          }

          else
          {
            v135 = v121;
          }

          v1622 = v135;
          if (v130)
          {
            v136 = v121;
          }

          else
          {
            v136 = v120;
          }

          v1547 = v136;
          if (v130)
          {
            v137 = v120;
          }

          else
          {
            v137 = v122;
          }

          v1618 = v137;
          v1157 = v104;
          v1140 = v1543 ^ v1593;
          v138 = v104 ^ v1543 ^ v1593;
          v139 = v138 ^ v1607 ^ 0x3149BF4D;
          v140 = v1613 ^ 0x8BB7AEF1 ^ v138;
          if (v130)
          {
            v141 = v1613 ^ 0x8BB7AEF1 ^ v138;
          }

          else
          {
            v141 = v138 ^ v1607 ^ 0x3149BF4D;
          }

          v1544 = v141;
          if ((v130 & 1) == 0)
          {
            v139 = v1659 ^ 0x3149BF4D ^ v138;
          }

          v1614 = v139;
          if (v130)
          {
            v142 = v1596 ^ 0xE40358AC ^ v138;
          }

          else
          {
            v142 = v140;
          }

          if (v130)
          {
            v143 = v1659 ^ 0x3149BF4D ^ v138;
          }

          else
          {
            v143 = v1596 ^ 0xE40358AC ^ v138;
          }

          v1539 = v143;
          v1149 = v112;
          v1142 = v119;
          v144 = v112 ^ v119 ^ v102;
          v145 = v1593 ^ 0x2C6E92F8 ^ v112 ^ v119;
          v146 = v1602 ^ 0x6EDA648C ^ v112 ^ v119;
          v147 = v1529 ^ 0x16E92F8 ^ v112 ^ v119;
          v1138 = v1486 ^ 0xB43DAE73;
          v148 = v1486 ^ 0xB43DAE73 ^ v109;
          v1594 = v148;
          v1611 = v114;
          if (v130)
          {
            v149 = v129;
          }

          else
          {
            v149 = v1599 ^ 0x886A6B71 ^ v114;
          }

          if (v130)
          {
            v150 = v1599 ^ 0x886A6B71 ^ v114;
          }

          else
          {
            v150 = v1584 ^ v113 ^ 0x9B0A7851 ^ v114;
          }

          if (v130)
          {
            v151 = v1584 ^ v113 ^ 0x9B0A7851 ^ v114;
          }

          else
          {
            v151 = v117;
          }

          if (v130)
          {
            v152 = v117;
          }

          else
          {
            v152 = v129;
          }

          v153 = v1534 ^ 0x50858345;
          v154 = v118 + v1385;
          v1608 = v154 ^ v103;
          v155 = v1602 ^ 0x7B3BB474 ^ v1388;
          v156 = v1388 ^ 0x40601320 ^ v154 ^ v103;
          if (v130)
          {
            v157 = v1388 ^ 0x40601320 ^ v154 ^ v103;
          }

          else
          {
            v157 = v154 ^ v103 ^ v1520;
          }

          v1535 = v157;
          if (v130)
          {
            v156 = v154 ^ v103 ^ v1412;
          }

          v1530 = v156;
          v158 = v153 ^ v154 ^ v103;
          if (v130)
          {
            v159 = v154 ^ v103 ^ v1520;
          }

          else
          {
            v159 = v158;
          }

          v1525 = v159;
          if ((v130 & 1) == 0)
          {
            v158 = v154 ^ v103 ^ v1412;
          }

          v1521 = v158;
          v160 = v1502 ^ 0x1A48BB32;
          v1159 = v103;
          v1134 = v1602 ^ 0x7B3BB474 ^ v1388;
          v1603 = v103 ^ v155;
          v161 = v103 ^ v155 ^ v1378;
          v1605 = v103 ^ v155 ^ 0xF1A5AF11;
          v162 = v1605 ^ v1511;
          v163 = v1506 ^ 0x99A5AF11 ^ v103 ^ v155;
          v164 = v1515 ^ 0xC54AF51E ^ v103 ^ v155;
          if (v130)
          {
            v165 = v103 ^ v155 ^ v1378;
          }

          else
          {
            v165 = v1506 ^ 0x99A5AF11 ^ v103 ^ v155;
          }

          v1516 = v165;
          if (v130)
          {
            v166 = v163;
          }

          else
          {
            v166 = v164;
          }

          v1512 = v166;
          if (v130)
          {
            v167 = v162;
          }

          else
          {
            v167 = v161;
          }

          v1507 = v167;
          if (v130)
          {
            v168 = v164;
          }

          else
          {
            v168 = v162;
          }

          v1503 = v168;
          v169 = v1497 ^ 0x9E7A6EF3;
          v1597 = v115;
          v1483 = v1492 ^ v1497 ^ 0xFE7D54F0;
          v170 = v115 ^ 0x511305A4 ^ v1483;
          if (v130)
          {
            v171 = v1638;
          }

          else
          {
            v171 = v115 ^ 0x511305A4 ^ v1483;
          }

          v1498 = v171;
          if (v130)
          {
            v172 = v116;
          }

          else
          {
            v170 = v115 ^ 0x1FB3DE9A ^ v1492;
            v172 = v1638;
          }

          if (v130)
          {
            v173 = v115 ^ 0x1FB3DE9A ^ v1492;
          }

          else
          {
            v173 = v116;
          }

          v1493 = v173;
          v1660 = v154;
          v174 = v154 ^ v1663 ^ __ROR4__(v1375, 21) ^ 0x92899F7B;
          v1413 = v107;
          v1600 = v154 ^ v1663 ^ v107;
          v175 = v1600 ^ v1478;
          v176 = v1600 ^ v1385;
          v177 = v160 ^ v1691;
          v178 = v169 ^ v1691;
          v1171 = v1600 ^ v1385;
          if (v130)
          {
            v179 = v174;
          }

          else
          {
            v176 = v174;
            v179 = v1600 ^ v101;
          }

          v1201 = v179;
          v1182 = v1600 ^ v1478;
          if (v130)
          {
            v175 = v1600 ^ v101;
          }

          v1228 = v144;
          v1224 = v145;
          if (v130)
          {
            v180 = v144;
          }

          else
          {
            v180 = v145;
          }

          v1220 = v146;
          v1216 = v147;
          if (v130)
          {
            v181 = v147;
          }

          else
          {
            v181 = v146;
          }

          v1213 = v148 ^ 0x7D31BE14 ^ v1589;
          v1209 = v148 ^ 0x7D31BE14 ^ v1584;
          if (v130)
          {
            v182 = v148 ^ 0x7D31BE14 ^ v1584;
          }

          else
          {
            v182 = v148 ^ 0x7D31BE14 ^ v1589;
          }

          v1193 = v148 ^ v1382;
          v1175 = v1580 ^ v1486;
          if (v130)
          {
            v183 = v148 ^ v1382;
          }

          else
          {
            v183 = v1580 ^ v1486;
          }

          v1236 = v127;
          v1167 = v177;
          if (v130)
          {
            v184 = v127;
          }

          else
          {
            v184 = v177;
          }

          v1190 = v1691 ^ v1394;
          v1163 = v178;
          if (v130)
          {
            v185 = v178;
          }

          else
          {
            v185 = v1691 ^ v1394;
          }

          v1232 = v130;
          if ((v130 & 2) != 0)
          {
            v186 = v1622;
          }

          else
          {
            v186 = v1618;
          }

          v1479 = v186;
          if ((v130 & 2) != 0)
          {
            v187 = v1618;
          }

          else
          {
            v187 = v1622;
          }

          v1585 = v187;
          if ((v130 & 2) != 0)
          {
            v188 = v1614;
          }

          else
          {
            v188 = v142;
          }

          v1246 = v188;
          if ((v130 & 2) != 0)
          {
            v189 = v142;
          }

          else
          {
            v189 = v1614;
          }

          v1639 = v189;
          if ((v130 & 2) != 0)
          {
            v190 = v180;
          }

          else
          {
            v190 = v181;
          }

          v1581 = v190;
          if ((v130 & 2) != 0)
          {
            v191 = v181;
          }

          else
          {
            v191 = v180;
          }

          if ((v130 & 2) != 0)
          {
            v192 = v182;
          }

          else
          {
            v192 = v183;
          }

          v1619 = v192;
          if ((v130 & 2) != 0)
          {
            v193 = v183;
          }

          else
          {
            v193 = v182;
          }

          v1623 = v193;
          if ((v130 & 2) != 0)
          {
            v194 = v149;
          }

          else
          {
            v194 = v151;
          }

          v1376 = v194;
          if ((v130 & 2) != 0)
          {
            v195 = v151;
          }

          else
          {
            v195 = v149;
          }

          v1244 = v195;
          if ((v130 & 2) != 0)
          {
            v196 = v152;
          }

          else
          {
            v196 = v150;
          }

          v1395 = v196;
          if ((v130 & 2) != 0)
          {
            v197 = v150;
          }

          else
          {
            v197 = v152;
          }

          v1484 = v197;
          if ((v130 & 2) != 0)
          {
            v198 = v170;
          }

          else
          {
            v198 = v172;
          }

          v1615 = v198;
          if ((v130 & 2) != 0)
          {
            v199 = v172;
          }

          else
          {
            v199 = v170;
          }

          v1590 = v199;
          v200 = v1656;
          v201 = v1649;
          v202 = *(v1656 + (v1634 ^ 0xD1));
          v203 = (v1401 ^ v1649[v1401 ^ 0x18] ^ 4) & 0xFF0000FF | (((((*(v200 + (v1391 ^ 0xB4)) >> 6) | (4 * *(v200 + (v1391 ^ 0xB4)))) ^ (((*(v200 + (v1391 ^ 0xB4)) >> 6) | (4 * *(v200 + (v1391 ^ 0xB4)))) >> 5) ^ (((*(v200 + (v1391 ^ 0xB4)) >> 6) | (4 * *(v200 + (v1391 ^ 0xB4)))) >> 1)) ^ 0x6C) << 8) | (((((v202 >> 6) | (4 * v202)) ^ (((v202 >> 6) | (4 * v202)) >> 5) ^ (((v202 >> 6) | (4 * v202)) >> 1)) ^ 0x89) << 16);
          v204 = *(v1656 + (v1641 ^ 0x58));
          v205 = *(v1656 + (v1677 ^ 0xCC));
          v206 = ((((v204 >> 6) | (4 * v204)) ^ (((v204 >> 6) | (4 * v204)) >> 5) ^ (((v204 >> 6) | (4 * v204)) >> 1) ^ 0x80) << 24) | (((((v205 >> 6) | (4 * v205)) ^ (((v205 >> 6) | (4 * v205)) >> 5) ^ (((v205 >> 6) | (4 * v205)) >> 1)) ^ 0x2D) << 8) | ((v1685 ^ 0xD6 ^ v1653[v1685 ^ 0x18]) << 16) | v1422 ^ v1649[v1422 ^ 0xD3] ^ 1;
          v207 = __ROR8__(v1630, 8);
          v208 = (v1627 + v207) ^ 0xF41651499F5E3C67 ^ v1575;
          v209 = v208 + __ROR8__((v1627 + v207) ^ 0xF41651499F5E3C67, 8);
          v210 = __ROR8__(v208, 61);
          *(&v212 + 1) = v209 ^ v210 ^ 0x153242EE3CF06A49;
          *&v212 = v209 ^ v210;
          v211 = v212 >> 61;
          v213 = ((*(&v212 + 1) ^ ((v209 ^ 0x153242EE3CF06A49) << 56)) + ((v209 ^ 0x153242EE3CF06A49) >> 8) + 2 * (*(&v212 + 1) & ((v209 ^ 0x153242EE3CF06A49) << 56))) ^ 0x2275D4C73835399BLL;
          *&v212 = __ROR8__(v213, 8);
          v214 = v213 ^ v211;
          v215 = (v214 + v212) ^ 0xE5AF1AB32EBD3CDDLL;
          v216 = v215 ^ __ROR8__(v214, 61);
          v217 = (v216 + __ROR8__(v215, 8)) ^ 0xC7DDC9F6CC45B721;
          v218 = v217 ^ __ROR8__(v216, 61);
          v219 = (__ROR8__(v217, 8) + v218) ^ 0xA82620A559D2DA78;
          v220 = v219 ^ __ROR8__(v218, 61);
          v221 = (__ROR8__(v219, 8) + v220) ^ 0x5F8DEC3EA3980A1BLL;
          v222 = __ROR8__(v221, 8) + (v221 ^ __ROR8__(v220, 61));
          *&v212 = __ROR8__(v1457, 8);
          v223 = (v212 + v1465) ^ 0x2275D4C73835399BLL ^ v1461;
          v224 = (__ROR8__((v212 + v1465) ^ 0x2275D4C73835399BLL, 8) + v223) ^ 0xE5AF1AB32EBD3CDDLL;
          v225 = v224 ^ __ROR8__(v223, 61);
          v226 = (__ROR8__(v224, 8) + v225) ^ 0xC7DDC9F6CC45B721;
          v227 = v226 ^ __ROR8__(v225, 61);
          v228 = (__ROR8__(v226, 8) + v227) ^ 0xA82620A559D2DA78;
          v229 = v228 ^ __ROR8__(v227, 61);
          v230 = (__ROR8__(v228, 8) + v229) ^ 0x5F8DEC3EA3980A1BLL;
          v231 = __ROR8__(v230, 8) + (v230 ^ __ROR8__(v229, 61));
          v232 = v1435 ^ ((v1426 << (v1421 & 3) << (v1421 & 3 ^ 3u)) | (v1426 >> 61));
          v233 = (v222 ^ 0xC1C3C8D2A4C54828) >> v1441;
          v231 ^= 0xC1C3C8D2A4C54828;
          v234 = v231 << (v1441 ^ 0x3Du);
          v235 = v233 + 8 * v234;
          v236 = *(v1656 + (((v233 + 8 * v234) >> 24) ^ 0xB3));
          v237 = (((127 * v1644[BYTE1(v235) ^ 0xDBLL]) ^ 0x1B) << 16) | ((v1653[v233 ^ 0x2ELL] ^ v233 ^ 0xB0) << 24) | (((v1649[BYTE2(v235) ^ 3] ^ BYTE2(v235)) ^ 0x18) << 8) | (((v236 >> 6) | (4 * v236)) ^ (((v236 >> 6) | (4 * v236)) >> 5) ^ (((v236 >> 6) | (4 * v236)) >> 1)) ^ 0xEE;
          LOBYTE(v234) = (*(v200 + (HIBYTE(v235) ^ 0x32)) >> 6) | (4 * *(v200 + (HIBYTE(v235) ^ 0x32)));
          v238 = (v231 >> v1441) + 8 * (((((v232 + v1431) ^ __ROR8__(v232, 61) ^ 0x1F8DEC3EA3980A1BLL) + (((v232 + v1431) ^ 0x5F8DEC3EA3980A1BLL) << 56) + (((v232 + v1431) ^ 0x5F8DEC3EA3980A1BLL) >> 8)) ^ 0x1C3C8D2A4C54828) << (v1441 ^ 0x3Du));
          LODWORD(v235) = *(v1656 + (BYTE5(v238) ^ 0x28));
          v239 = (((v1649[(v231 >> v1441) ^ 0x41] ^ (v231 >> v1441) ^ 0x9D) << 24) | (((v1649[BYTE1(v238) ^ 7] ^ BYTE1(v238)) ^ 0x10) << 16) | ((v1653[BYTE2(v238) ^ 0x43] ^ BYTE2(v238) ^ 0xE2) << 8) | BYTE3(v238) ^ v1649[BYTE3(v238) ^ 0xD7]) ^ ((127 * v1644[v1665 ^ 0x2F]) | ((v1444 ^ 0x7B ^ v1653[v1444 ^ 0xB3]) << 8) | (((127 * v1644[v1470 ^ 0x9F]) ^ 0x7F) << 16) | ((v1683 ^ 0xD3 ^ v1653[v1683 ^ 0x3F]) << 24));
          LODWORD(v233) = ((((((v235 >> 6) | (4 * v235)) ^ (((v235 >> 6) | (4 * v235)) >> 5) ^ (((v235 >> 6) | (4 * v235)) >> 1)) ^ 0x1B) << 16) | ((v1653[BYTE4(v238) ^ 0xAALL] ^ HIDWORD(v238) ^ 0xCA) << 24) | ((v1649[BYTE6(v238) ^ 0x13] ^ BYTE6(v238) ^ 0x5B) << 8) | v1649[HIBYTE(v238) ^ 0xD1] ^ HIBYTE(v238) ^ 0xAC) ^ v206;
          LODWORD(v231) = *&v1362[4 * ((v1649[HIBYTE(v238) ^ 0xD1] ^ HIBYTE(v238) ^ 0xAC ^ v206) ^ 0xF7)] ^ ((127 * v1644[v1448 ^ 0xDA]) ^ 0x3A | ((v1679 ^ 0x4F ^ v201[v1679 ^ 0xC]) << 16) | ((v1674 ^ 0xC2 ^ v1653[v1674 ^ 0xEB]) << 8) | ((v1475 ^ v201[v1475 ^ 0xC0] ^ 0xFFFFFFCF) << 24)) ^ v237 ^ __ROR4__(*(v1371 + 4 * (BYTE3(v233) ^ 0x47)) ^ BYTE3(v233) ^ 0x4EB4F6F2, 8) ^ __ROR4__(*(v1371 + 4 * (BYTE2(v233) ^ 0x47u)) ^ BYTE2(v233) ^ 0x4EB4F6F2, 16) ^ __ROR4__(*(v1371 + 4 * (BYTE1(v233) ^ 0x47u)) ^ BYTE1(v233) ^ 0x4EB4F6F2, 24);
          v240 = ((((127 * v1644[BYTE4(v235) ^ 0x86]) ^ 0xD7) << 24) | ((v201[BYTE5(v235) ^ 0xD0] ^ BYTE5(v235) ^ 0x8C) << 16) | ((v201[BYTE6(v235) ^ 7] ^ ((((BYTE6(v235) ^ 0x3F) - (BYTE6(v235) ^ 0xA2)) ^ 0xFE) + (BYTE6(v235) ^ 0x3F)) ^ 0xB2) << 8) | (v234 ^ (v234 >> 5) ^ (v234 >> 1)) ^ 0x3D) ^ (v203 | ((v1416 ^ 0x47 ^ v1649[v1416 ^ 0xA1]) << 24)) ^ v231;
          LODWORD(v233) = v239 ^ v233 ^ v240;
          LODWORD(v238) = ((v233 ^ 0x4383453B) >> 16) ^ 0xA9;
          v241 = (v233 ^ 0x3CEC4290) + *&v1349[4 * (v233 ^ 0xC1)];
          DWORD1(v212) = *&v1362[4 * (((v233 ^ 0x453B) >> 8) ^ 0x3D)] ^ 0x42DD8FCE;
          LODWORD(v212) = DWORD1(v212);
          LODWORD(v233) = v233 ^ 0x63DD8FB9;
          v242 = (v212 >> 24) ^ __ROR4__((*&v1454[4 * v238] + 78671838) ^ 0x5CEF5A0F, 16) ^ v231 ^ v241 ^ __ROR4__(((BYTE3(v233) ^ 0x3CEC4229) + *&v1349[4 * (BYTE3(v233) ^ 0x78)]) ^ 0x40601320, 8) ^ 0x8CBD9CEE;
          v243 = v242 ^ v239;
          v244 = v243 ^ v233;
          DWORD1(v212) = (*&v1454[4 * (((v243 ^ v233) >> 8) ^ 0xF7)] + 78671838) ^ 0x5CEF5A0F;
          LODWORD(v212) = DWORD1(v212);
          v245 = (v212 >> 24) ^ __ROR4__((*&v1454[4 * (HIBYTE(v244) ^ 0xF7)] + 78671838) ^ 0x5CEF5A0F, 8) ^ ((v244 ^ 0x3CEC425E) + *&v1349[4 * (v244 ^ 0xF)]) ^ __ROR4__(*(v1371 + 4 * (BYTE2(v244) ^ 0x47u)) ^ BYTE2(v244) ^ 0x4EB4F6F2, 16);
          v246 = v240 ^ 0x63DD8FCE ^ v245;
          v247 = v1571;
          if ((v130 & 2) != 0)
          {
            v247 = v1565;
          }

          v1576 = v247;
          v248 = v1562;
          if ((v130 & 2) != 0)
          {
            v248 = v1552;
          }

          v1386 = v248;
          v249 = v1557;
          if ((v130 & 2) == 0)
          {
            v249 = v1547;
          }

          v1127 = v249;
          v250 = v1544;
          if ((v130 & 2) == 0)
          {
            v250 = v1539;
          }

          v1675 = v250;
          v251 = v1535;
          if ((v130 & 2) == 0)
          {
            v251 = v1521;
          }

          v1131 = v251;
          if ((v130 & 2) != 0)
          {
            v252 = v1530;
          }

          else
          {
            v252 = v1525;
          }

          v253 = v1512;
          if ((v130 & 2) == 0)
          {
            v253 = v1507;
          }

          v1680 = v253;
          v254 = v1503;
          if ((v130 & 2) == 0)
          {
            v254 = v1516;
          }

          v1186 = v184;
          v1178 = v185;
          if ((v130 & 2) != 0)
          {
            v255 = v184;
          }

          else
          {
            v255 = v185;
          }

          v1102 = v255;
          v256 = v1498;
          if ((v130 & 2) == 0)
          {
            v256 = v1493;
          }

          v1105 = v256;
          v1205 = v176;
          v1197 = v175;
          if ((v130 & 2) != 0)
          {
            v257 = v175;
          }

          else
          {
            v257 = v176;
          }

          v1471 = v257;
          v258 = v246 & 0x800;
          v9 = (v246 & 0x800 & v243) == 0;
          v259 = v243 ^ 0x77;
          if (!v9)
          {
            v258 = -v258;
          }

          v260 = (v258 + v259) ^ v246 & 0xFFFFF7FF;
          v261 = BYTE1(v260) ^ BYTE1(v244);
          v1466 = v260;
          v262 = v260 ^ v244 ^ 0x4C601357;
          v1462 = (*&v1454[4 * (v262 ^ 0xF7)] + 78671838) ^ __ROR4__((*&v1454[4 * (v261 ^ 0xE4)] + 78671838) ^ 0x5CEF5A0F, 24) ^ v242 ^ v245 ^ __ROR4__(*(v1371 + 4 * (BYTE2(v262) ^ 0x47u)) ^ BYTE2(v262) ^ 0x4EB4F6F2, 16) ^ __ROR4__(((HIBYTE(v262) ^ 0x3CEC4229) + *&v1349[4 * (HIBYTE(v262) ^ 0x78)]) ^ 0x40601320, 8) ^ 0x40601320;
          v263 = v1462 ^ v246 ^ v260;
          v264 = v263 ^ v262;
          v265 = v263 ^ v262 ^ 0x8AEF5A0F;
          v1336 = v264;
          v266 = *(v1371 + 4 * (v264 ^ 0x48u)) ^ 0xF44AE741 ^ __ROR4__((*&v1454[4 * (HIBYTE(v264) ^ 0x7D)] + 78671838) ^ 0x5CEF5A0F, 8) ^ v1462 ^ v264 ^ __ROR4__(((BYTE1(v265) ^ 0x3CEC4229) + *&v1349[4 * (BYTE1(v265) ^ 0x78)]) ^ 0x40601320, 24) ^ __ROR4__(((BYTE2(v265) ^ 0x3CEC4229) + *&v1349[4 * (BYTE2(v265) ^ 0x78)]) ^ 0x40601320, 16);
          v1432 = v1462 ^ v246;
          v1442 = v1462 ^ v246 ^ 0x23715893 ^ v266;
          v267 = ((-1964025329 - (v1442 ^ v263)) ^ v1442 ^ v263 ^ 0x8AEF5A0F ^ -(v1442 ^ v263 ^ 0x8AEF5A0F)) - 1964025329;
          v268 = v267 ^ v265;
          v269 = v268 ^ 0xC000000;
          v270 = ((v268 ^ 0x3CEC4229) + *&v1349[4 * (v268 ^ 0x78)]) ^ __ROR4__(*&v1362[4 * (BYTE1(v268) ^ 0xF7)] ^ 0x42DD8FCE, 24) ^ __ROR4__(*(v1371 + 4 * (BYTE2(v268) ^ 0x47u)) ^ BYTE2(v268) ^ 0x4EB4F6F2, 16) ^ __ROR4__(((((v268 ^ 0xC000000u) >> 24) ^ 0x3CEC4229) + *&v1349[4 * (((v268 ^ 0xC000000u) >> 24) ^ 0x78)]) ^ 0x40601320, 8);
          v1427 = v266 ^ 0x99E029C ^ v270;
          v271 = v1462 ^ v246 ^ 0xA0000000 ^ v270;
          v272 = v271 ^ v267;
          v1423 = v271;
          v273 = v271 ^ v267 ^ v269;
          v1379 = v272;
          v1436 = v273 ^ 0x8AEF5A0F;
          v1402 = v1427 ^ __ROR4__((*&v1454[4 * (HIBYTE(v273) ^ 0x7D)] + 78671838) ^ 0x5CEF5A0F, 8) ^ ((v273 ^ 0x3CEC4226) + *&v1349[4 * (v273 ^ 0x77)]) ^ __ROR4__(*(v1371 + 4 * (((v273 ^ 0x8AEF5A0F) >> 16) ^ 0x47u)) ^ ((v273 ^ 0x8AEF5A0F) >> 16) ^ 0x4EB4F6F2, 16) ^ __ROR4__(*(v1371 + 4 * (BYTE1(v1436) ^ 0x47u)) ^ BYTE1(v1436) ^ 0x4EB4F6F2, 24);
          v274 = v1402 ^ v271 ^ 0xA28F492F ^ v269;
          v1383 = v1402 ^ v271 ^ 0xA28F492F;
          v1364 = v1402 ^ ((v274 ^ 0x3CEC4226) + *&v1349[4 * ((v1402 ^ v271) ^ 0x2F ^ v269 ^ 0x77)]) ^ __ROR4__(*(v1371 + 4 * (((v274 ^ 0x86EF5A0F) >> 24) ^ 0x47)) ^ ((v274 ^ 0x86EF5A0F) >> 24) ^ 0x4EB4F6F2, 8) ^ __ROR4__(*(v1371 + 4 * (((v274 ^ 0x86EF5A0F) >> 16) ^ 0x47u)) ^ ((v274 ^ 0x86EF5A0F) >> 16) ^ 0x4EB4F6F2, 16) ^ __ROR4__(((((v274 ^ 0x5A0F) >> 8) ^ 0x3CEC4229) + *&v1349[4 * (((v274 ^ 0x5A0F) >> 8) ^ 0x78)]) ^ 0x40601320, 24) ^ 0x10EF5A0F;
          v1392 = v1402 ^ v271 ^ 0x28601320 ^ v1364;
          v1389 = v1383 ^ v272;
          v1417 = v1392 ^ v1383 ^ v272;
          v1360 = v1417 ^ v274 ^ 0x86EF5A0F;
          v1355 = (*&v1454[4 * ((v1392 ^ v1383 ^ v272 ^ v274 ^ 0xF) ^ 0xF7)] + 78671838) ^ __ROR4__((*&v1454[4 * (BYTE2(v1360) ^ 0xF7)] + 78671838) ^ 0x5CEF5A0F, 16) ^ __ROR4__(*(v1371 + 4 * (HIBYTE(v1360) ^ 0x47)) ^ HIBYTE(v1360) ^ 0x4EB4F6F2, 8) ^ __ROR4__(*(v1371 + 4 * (BYTE1(v1360) ^ 0x47u)) ^ BYTE1(v1360) ^ 0x4EB4F6F2, 24);
          v1372 = v1402 ^ v271 ^ 0x24601320 ^ v1355;
          v1357 = *&v1362[4 * (((v1372 ^ v274 ^ 0x86EF5A0F) >> 24) ^ 0xAC)];
          v1686 = v1372 ^ v274 ^ 0x86EF5A0F ^ 0x5BEF5A0F;
          v1352 = *&v1349[4 * ((v1372 ^ v274 ^ 0xF) ^ 0x77)];
          v275 = 0;
          v1286 = *&v1349[4 * (BYTE2(v1686) ^ 0x78)];
          v1240 = v191;
          v1107 = v252;
          v1363 = v254;
          v276 = 2 * (((v252 - v254 + 899827584) ^ 0x218D86E7) - v1639) + 1513341550;
          v1272 = *&v1454[4 * ((BYTE1(v1372) ^ ((v274 ^ 0x5A0F) >> 8)) ^ 0xAD)];
          v277 = *v1646;
          *v1688 = *v1646 ^ 0xC1C1C1C1C1C1C1C1;
          v277 *= 0x57C9ED5F45F13925;
          v278 = (v277 ^ 0xE9A7D97B89127553) - ((v277 ^ 0xE9A7D97B89127553) >> 32) + (((v277 ^ 0xE9A7D97B89127553) - ((v277 ^ 0xE9A7D97B89127553) >> 32)) >> 16);
          v279 = v278 - (v278 >> 8);
          v1631 = v279 + 0x1D4BA9E6BC87AA9ALL;
          v280 = ((v279 + 0x1D4BA9E6BC87AA9ALL) ^ v277) - (((v279 + 0x1D4BA9E6BC87AA9ALL) ^ v277) >> 32);
          v281 = v280 + (v280 >> 16) - ((v280 + (v280 >> 16)) >> 8);
          v282 = ((v281 + 0x1D4BA9E6BC87AA9ALL) ^ v277) - (((v281 + 0x1D4BA9E6BC87AA9ALL) ^ v277) >> 32);
          v283 = v282 + (v282 >> 16) - ((v282 + (v282 >> 16)) >> 8);
          v1297 = *(v1646 + 8);
          v1100 = v1646 + 8;
          v284 = 0x57C9ED5F45F13925 * v1297;
          v285 = ((v283 + 0x1D4BA9E6BC87AA9ALL) ^ v284) + 1 - ((((v283 + 0x1D4BA9E6BC87AA9ALL) ^ v284) + 1) >> 32);
          v286 = v285 + (v285 >> 16) - ((v285 + (v285 >> 16)) >> 8);
          v1666 = v286 + 0x1D4BA9E6BC87AA9ALL;
          v287 = ((v286 + 0x1D4BA9E6BC87AA9ALL) ^ v284) + 1 - ((((v286 + 0x1D4BA9E6BC87AA9ALL) ^ v284) + 1) >> 32);
          v288 = v287 + (v287 >> 16) - ((v287 + (v287 >> 16)) >> 8);
          v1642 = v288 - 1131959654;
          v289 = ((v288 + 0x1D4BA9E6BC87AA9ALL) ^ v284) + 1 - ((((v288 + 0x1D4BA9E6BC87AA9ALL) ^ v284) + 1) >> 32);
          v290 = v289 + (v289 >> 16) - ((v289 + (v289 >> 16)) >> 8);
          v1628 = v290 + 0x1D4BA9E6BC87AA9ALL;
          v291 = v279;
          v1449 = v279 + 1581503821;
          v292 = v286 + 1581503821;
          v293 = (v281 + 1581503821) ^ (v279 + 1581503821) ^ (v283 + 1581503821) ^ (v286 + 1581503821) ^ (v288 + 1581503821) ^ (v290 + 1581503821);
          v1341 = ((v290 + 0x1D4BA9E6BC87AA9ALL) ^ 0xA7C4054AB817000DLL) - (((v290 + 0x1D4BA9E6BC87AA9ALL) ^ 0xA7C4054AB817000DLL) >> 29);
          v294 = (v1341 >> 11) + v1341 + (((v1341 >> 11) + v1341) >> 2);
          v295 = (v294 ^ 0x35D1629651602A2DLL) + ((v294 ^ 0x35D1629651602A2DLL) >> 26) + (((v294 ^ 0x35D1629651602A2DLL) + ((v294 ^ 0x35D1629651602A2DLL) >> 26)) >> 13);
          v296 = v295 + (v295 >> 1);
          v297 = (v296 ^ 0x4C3ACA77EA7DEC70) - ((v296 ^ 0x4C3ACA77EA7DEC70) >> 26) + (((v296 ^ 0x4C3ACA77EA7DEC70) - ((v296 ^ 0x4C3ACA77EA7DEC70) >> 26)) >> 12);
          v298 = v297 - (v297 >> 7);
          v299 = (v298 ^ 0x2C219629264DAF12) - ((v298 ^ 0x2C219629264DAF12) >> 29) - (((v298 ^ 0x2C219629264DAF12) - ((v298 ^ 0x2C219629264DAF12) >> 29)) >> 8);
          v1324 = v299 + (v299 >> 1);
          v300 = v1324 + 0x1EE564CD39168163 + ((v1324 + 0x1EE564CD39168163) >> 26) - ((v1324 + 0x1EE564CD39168163 + ((v1324 + 0x1EE564CD39168163) >> 26)) >> 11);
          v1322 = v300 + (v300 >> 5);
          v301 = v1322 - 0x2E85E0A826E68ECELL - ((v1322 - 0x2E85E0A826E68ECELL) >> 31) - ((v1322 - 0x2E85E0A826E68ECELL - ((v1322 - 0x2E85E0A826E68ECELL) >> 31)) >> 8);
          v1279 = v301 + (v301 >> 3);
          v1328 = v1279 + 0x5A6D002429388209 - ((v1279 + 0x5A6D002429388209) >> 26) + ((v1279 + 0x5A6D002429388209 - ((v1279 + 0x5A6D002429388209) >> 26)) >> 14);
          v1326 = v1328 >> 6;
          v302 = (v1328 >> 6) + v1328 - 2 * (v1328 >> 6);
          v1307 = v291;
          v1312 = v283;
          v1300 = v286;
          v1303 = v288;
          v1305 = v290;
          v1318 = v294;
          v1333 = v281 ^ v291 ^ v283 ^ v286 ^ v288 ^ v290 ^ ((v1341 >> 11) + v1341 + (((v1341 >> 11) + v1341) >> 2)) ^ v1324 ^ v302;
          v303 = v302 + 0x4C6387A8FA09E00FLL + ((v302 + 0x4C6387A8FA09E00FLL) >> 24) + ((v302 + 0x4C6387A8FA09E00FLL + ((v302 + 0x4C6387A8FA09E00FLL) >> 24)) >> 8);
          v1263 = v303 - (v303 >> 4);
          v1458 = v296;
          v1330 = v293 ^ v1322 ^ v296 ^ v1263;
          v1316 = ((v1680 + v191 + 737003955 + ((v1479 + 782780005) ^ 0x7D47ED08)) >> 1) - 1706566331;
          v1320 = v276;
          v1274 = v1330 ^ v276;
          v1347 = (16843009 * ((v1330 ^ v276) ^ 0x40 ^ ((v1330 ^ v276 ^ 0x8240) >> 8) ^ ((v1330 ^ v276 ^ 0x888A8240) >> 16) ^ ((v1330 ^ v276) >> 24) ^ 0x6C)) ^ 0xE4E4E4E4;
          v1350 = 16843009 * (((v1333 ^ v1316 ^ 0x4328B4C3) >> 16) ^ ((v1333 ^ v1316) >> 24) ^ (v1333 ^ v1316) ^ 0xC3 ^ ((v1333 ^ v1316 ^ 0xB4C3) >> 8) ^ 0xC4);
          v1419 = __ROR4__(__ROR4__((v1350 ^ (-16843009 * (((v1333 ^ v1316 ^ 0x4328B4C3) >> 16) ^ ((v1333 ^ v1316) >> 24) ^ (v1333 ^ v1316) ^ 0xC3 ^ ((v1333 ^ v1316 ^ 0xB4C3) >> 8) ^ 0xC4)) ^ (v1347 - (v1347 ^ v1350))) + v1347, 25) ^ 0xDA77C4C2, 7) ^ 0x233680E;
          v304 = v298;
          v305 = (v298 ^ 0x2C219629264DAF12) - ((v298 >> 29) ^ 0x1610CB149) - (((v298 ^ 0x2C219629264DAF12) - ((v298 >> 29) ^ 0x1610CB149)) >> 8);
          v306 = v305 + (v305 >> 1);
          v1314 = v281 ^ v291 ^ v283;
          v307 = v1314 ^ ((v1341 >> 11) + v1341 + (((v1341 >> 11) + v1341) >> 2)) ^ v306;
          v308 = v306 + 0x1EE564CD39168163 + ((v306 + 0x1EE564CD39168163) >> 26) - ((v306 + 0x1EE564CD39168163 + ((v306 + 0x1EE564CD39168163) >> 26)) >> 11);
          v309 = v308 + (v308 >> 5);
          v310 = v309 - 0x2E85E0A826E68ECELL - ((v309 - 0x2E85E0A826E68ECELL) >> 31) - ((v309 - 0x2E85E0A826E68ECELL - ((v309 - 0x2E85E0A826E68ECELL) >> 31)) >> 8);
          v311 = v310 + (v310 >> 3);
          v312 = v311 + 0x5A6D002429388209 - ((v311 + 0x5A6D002429388209) >> 26) + ((v311 + 0x5A6D002429388209 - ((v311 + 0x5A6D002429388209) >> 26)) >> 14);
          v313 = v312 - (v312 >> 6);
          v314 = v286 ^ v288 ^ v290 ^ v307 ^ v313;
          v315 = v313 + 0x4C6387A8FA09E00FLL + ((v313 + 0x4C6387A8FA09E00FLL) >> 24) + ((v313 + 0x4C6387A8FA09E00FLL + ((v313 + 0x4C6387A8FA09E00FLL) >> 24)) >> 8);
          v316 = v315 - (v315 >> 4);
          LODWORD(v296) = v1449 ^ (v281 + 1581503821) ^ (v283 + 1581503821) ^ v292 ^ (v288 + 1581503821) ^ (v290 + 1581503821) ^ v309 ^ v296 ^ v316;
          v1276 = v314 ^ v1316;
          LOBYTE(v294) = v314 ^ (((v1680 + v191 + 737003955 + ((v1479 + 782780005) ^ 0x7D47ED08)) >> 1) + 69) ^ 0xC7;
          v1257 = v314 ^ v1316 ^ 0xF46E71C7;
          LODWORD(v298) = (v314 ^ v1316) ^ 0xDB ^ ((v314 ^ v1316 ^ 0x45DB) >> 8) ^ ((v314 ^ v1316 ^ 0xA0F645DB) >> 16) ^ HIBYTE(v1257) ^ 0x64;
          v1259 = v276 ^ v296;
          v1476 = v1333 ^ v1316;
          v1635 = v1333 ^ v1316 ^ 0x17B080DF;
          v317 = v1635 & 0xFE ^ 0xFA;
          v1255 = v294 & 0xFE ^ 0xE2;
          v1345 = 16843009 * v298;
          v1291 = 16843009 * ((v276 ^ v296) ^ 0x58 ^ ((v276 ^ v296 ^ 0x7358) >> 8) ^ ((v276 ^ v296 ^ 0x6B547358) >> 16) ^ ((v276 ^ v296) >> 24) ^ 0xF1);
          v1288 = v1291 ^ (16843009 * v298);
          v1450 = v1288 ^ 0xAAAAAAAA;
          v1097 = ((145486839 * v317) ^ (145486839 * v1255) ^ v1675) + 1318272083 * (v1419 - (v1288 ^ 0xAAAAAAAA));
          v1676 = 16843009 * v317;
          v1269 = v1635 & 0xFFFFFF01 ^ 0x51F30901;
          v1265 = v1333 ^ v1316 ^ 0x46438924;
          v1267 = (16843009 * v317) & 0xFE;
          v1591 = v1590 + 206691813 * (v1269 - v1265 + v1267);
          v1250 = ((((v1680 - 719834289 + v1484) ^ 0x2F532935) - v1585) >> 1) + 1404341957;
          v1282 = (v281 + 0x1D4BA9E6BC87AA9ALL) ^ v1631 ^ (v283 + 0x1D4BA9E6BC87AA9ALL) ^ v1666 ^ (v288 + 0x1D4BA9E6BC87AA9ALL);
          v318 = v316 + 0x862C15F11DB85C5 + ((v316 + 0x862C15F11DB85C5) >> 24) + ((v316 + 0x862C15F11DB85C5 + ((v316 + 0x862C15F11DB85C5) >> 24)) >> 14);
          v1252 = v304;
          v1261 = v311 ^ v304 ^ ((v318 >> 4) + v318) ^ (((v290 - 1131959654) ^ (1131959654 - v290) ^ ((v1250 ^ v1282 ^ 0xC7D745C7) - ((v290 - 1131959654) ^ v1250 ^ v1282 ^ 0xC7D745C7))) + (v1250 ^ v1282 ^ 0xC7D745C7));
          v319 = v1261 & 7;
          v320 = (v319 ^ 3 | v1261 & 0xFFFFFFF8) ^ 0xB22DF8E0;
          v1445 = v1261 ^ 0xB22DF8E3;
          v1294 = v1471 + 295232783 * ((v1261 ^ 0xB22DF8E3) - v320);
          HIDWORD(v321) = (v1272 + 78671838) ^ 0x5CEF5A0F;
          LODWORD(v321) = HIDWORD(v321);
          v323 = (v321 >> 24) ^ __ROR4__(v1357 ^ 0x42DD8FCE, 8) ^ v1355 ^ v1364 ^ (((v1372 ^ v274 ^ 0xF) ^ 0x3CEC4226) + v1352) ^ __ROR4__(((BYTE2(v1686) ^ 0x3CEC4229) + v1286) ^ 0x40601320, 16);
          v1008 = __ROR4__(v1462 ^ v1488, 13) ^ 0x55B7C0FC;
          v1072 = v1432 ^ v1594 ^ 0xBBBEF73B;
          LODWORD(v303) = v1597 ^ 0x391305A4 ^ v1686;
          v324 = v1691 ^ 0x2EA7E13D;
          LODWORD(v289) = (v1691 ^ 0x2EA7E13D ^ v1360) + (v1611 ^ v1442 ^ 0xE85317E);
          v325 = v289 + v303;
          v1472 = v289 + v303;
          if ((v289 + v303))
          {
            v326 = v1336 ^ v1594;
          }

          else
          {
            v326 = v1432 ^ v1594 ^ v1466;
          }

          v1095 = v326 ^ 0xF7DEE41B;
          v1368 = v274 ^ 0x86EF5A0F;
          v327 = v1603 ^ v1383 ^ 0x774AF51E;
          v328 = v1603 ^ v1402 ^ 0x532AE63E;
          if (v325)
          {
            v329 = v1603 ^ v1389 ^ 0xFDA5AF11;
          }

          else
          {
            v329 = v1603 ^ v1383 ^ 0x774AF51E;
          }

          if ((v325 & 1) == 0)
          {
            v327 = v1603 ^ v1402 ^ 0x532AE63E;
          }

          v1090 = v327;
          if (v325)
          {
            v330 = v1605 ^ v1368;
          }

          else
          {
            v328 = v1605 ^ v1368;
            v330 = v1603 ^ v1389 ^ 0xFDA5AF11;
          }

          v1087 = v330;
          v322 = v1355 ^ v1364;
          v331 = v1597 ^ 0x62FC5FAB ^ v1372;
          if (v325)
          {
            v332 = v1597 ^ 0x62FC5FAB ^ v1372;
          }

          else
          {
            v332 = v1597 ^ 0x62FC5FAB ^ v322;
          }

          if (v325)
          {
            v333 = v1597 ^ 0x62FC5FAB ^ v322;
          }

          else
          {
            v333 = v1597 ^ 0x391305A4 ^ v1686;
          }

          if (v325)
          {
            v334 = v1597 ^ 0x391305A4 ^ v1686;
          }

          else
          {
            v334 = v331 ^ v1417;
          }

          if (v325)
          {
            v335 = v331 ^ v1417;
          }

          else
          {
            v335 = v1597 ^ 0x62FC5FAB ^ v1372;
          }

          v336 = v324 ^ v1364;
          v337 = v324 ^ v1417;
          v338 = v1417 ^ v1600 ^ 0xC2D10177 ^ v323;
          v339 = v338 ^ v1686;
          v1034 = v1600 ^ v323 ^ v1372 ^ 0x993E5B78;
          v1036 = v1600 ^ v323 ^ 0xC2D10177;
          if (v325)
          {
            v340 = v1600 ^ v323 ^ 0xC2D10177;
          }

          else
          {
            v340 = v338 ^ v1686;
          }

          if ((v325 & 1) == 0)
          {
            v339 = v1417 ^ v1600 ^ 0xC2D10177 ^ v323;
          }

          v1117 = v339;
          if (v325)
          {
            v341 = v1417 ^ v1600 ^ 0xC2D10177 ^ v323;
          }

          else
          {
            v341 = v1600 ^ v323 ^ v1372 ^ 0x993E5B78;
          }

          v1062 = v1608 ^ 0x2E203E82 ^ v1379;
          v1054 = v1608 ^ v1423 ^ 0x22203E82;
          v1056 = v1608 ^ v1436 ^ 0xA4CF648D;
          if (v325)
          {
            v342 = v1608 ^ v1436 ^ 0xA4CF648D;
          }

          else
          {
            v342 = v1608 ^ 0x2E203E82 ^ v1379;
          }

          if (v325)
          {
            v343 = v1608 ^ v1423 ^ 0x22203E82;
          }

          else
          {
            v343 = v1608 ^ 0x2E203E82 ^ v1427;
          }

          v1046 = v1691 ^ 0x22A7E13D ^ v1392;
          v1038 = v336;
          v1040 = v337;
          if (v325)
          {
            v344 = v337;
          }

          else
          {
            v344 = v1691 ^ 0x22A7E13D ^ v1392;
          }

          v1070 = v1691 ^ 0x2EA7E13D ^ v1360;
          if (v325)
          {
            v345 = v336;
          }

          else
          {
            v345 = v1691 ^ 0x2EA7E13D ^ v1360;
          }

          if ((v325 & 2) != 0)
          {
            v346 = v344;
          }

          else
          {
            v346 = v345;
          }

          v1050 = v346;
          if ((v325 & 2) != 0)
          {
            v344 = v345;
          }

          v1058 = v344;
          v1060 = v1608 ^ 0x2E203E82 ^ v1427;
          *(v1688 + 8) = v1297 ^ 0xC1C1C1C1C1C1C1C1;
          v347 = v1263 + 0x862C15F11DB85C5 + ((v1263 + 0x862C15F11DB85C5) >> 24) + ((v1263 + 0x862C15F11DB85C5 + ((v1263 + 0x862C15F11DB85C5) >> 24)) >> 14);
          v1632 = (v281 - 1131959654) ^ v1631 ^ (v283 - 1131959654) ^ v1666 ^ v1642 ^ v1628 ^ v304 ^ v1279 ^ ((v347 >> 4) + v347);
          v348 = v1632 ^ v1250 ^ 0x2409B4DF;
          v349 = v348 & 7;
          v350 = v349 ^ 3;
          v1692 = v349 ^ 3;
          v351 = -(v349 ^ 3) & 7;
          v1084 = v342;
          v1082 = v343;
          if ((v325 & 2) != 0)
          {
            v352 = v342;
          }

          else
          {
            v352 = v343;
          }

          v1078 = v352;
          v1080 = v329;
          v1076 = v328;
          if ((v325 & 2) != 0)
          {
            v353 = v328;
          }

          else
          {
            v353 = v329;
          }

          v1066 = v353;
          v1042 = v334;
          v1044 = v332;
          if ((v325 & 2) != 0)
          {
            v354 = v334;
          }

          else
          {
            v354 = v332;
          }

          v1032 = v354;
          v1052 = v333;
          v1048 = v335;
          if ((v325 & 2) != 0)
          {
            v355 = v335;
          }

          else
          {
            v355 = v333;
          }

          v1026 = v355;
          v1114 = v340;
          v1111 = v341;
          if ((v325 & 2) != 0)
          {
            v356 = v340;
          }

          else
          {
            v356 = v341;
          }

          v1124 = v356;
          if (v349 == 3)
          {
            v357 = 0;
          }

          else
          {
            v357 = 255;
          }

          v358 = v357 << v351;
          v359 = 16843009 * v358;
          v360 = (1895825408 * v358) & (v1274 ^ 0xCF7EEB39);
          v361 = v359 ^ v360;
          v1643 = v359 ^ ~v360;
          if (v349 == 3)
          {
            v362 = 0;
          }

          else
          {
            v362 = ~v358;
          }

          v1684 = (v1635 & v362) ^ v359;
          v363 = v1632 ^ v1250 ^ 0x75FABD24;
          v364 = 16843009 * v1255;
          v1678 = 16843009 * v1255;
          v365 = -(v319 ^ 3) & 7;
          v1011 = v1261 & 7;
          if (v319 == 3)
          {
            v366 = 0;
          }

          else
          {
            v366 = 255;
          }

          v367 = v366 << v365;
          v368 = (v366 << v365);
          v369 = v1259 ^ 0x2CA01A21;
          v370 = (1694498816 * v368) & (v1259 ^ 0x2CA01A21);
          v371 = v370 ^ (16843009 * v368);
          v1687 = v370 ^ ~(16843009 * v368);
          if (v319 == 3)
          {
            v372 = 0;
          }

          else
          {
            v372 = ~v367;
          }

          v373 = (16843009 * v368) ^ v1257 & v372;
          v1380 = *(&off_101353600 + (v1668 ^ 0x2A190E95)) - 4;
          v1068 = *&v1380[4 * v351] ^ v351 ^ 0x86C3AE0;
          v1369 = *(&off_101353600 + v1625 + 172) - 12;
          v1669 = v1576 + (*&v1369[4 * v350] ^ 0x585D838F) + (*&v1380[4 * (v319 ^ 3)] ^ v319 ^ 0xF793C51C);
          HIDWORD(v374) = (v1639 - v351 + v365) ^ v1419;
          LODWORD(v374) = HIDWORD(v374) ^ (v1419 << 6);
          v1006 = v1632 ^ v1250 ^ 0x2409B4DF;
          v375 = (v350 | v348 & 0xFFFFFFF8) ^ 0x51F309F8;
          v376 = v364 >> 1;
          v1437 = (v1257 & 0xFFFFFF01 | (2 * (v1255 >> 1))) ^ 0xB22DF801;
          v377 = *(*(&off_101353600 + v1625 + 1137) + v320 % 0x101) ^ 0xE539997;
          v998 = v377 & v1615;
          v1373 = (*&v1369[4 * (v1445 % 0x101)] ^ 0x585D838F) + (v377 ^ v1615);
          v1074 = 677515835 * ((v1276 ^ 0x46438924) - v1437);
          v997 = v1619 - v1265 + v1269 + v1267;
          v1002 = v1276 ^ 0x46438924;
          v378 = (v1276 ^ 0x46438924u) % 0x101;
          v379 = *(&off_101353600 + v1625 + 1030) - 8;
          v996 = *&v379[4 * v378];
          v1433 = (v1267 | v1269) % 0x101;
          v994 = v378 ^ 0x6F46E346;
          v995 = ((v1265 % 0x101) ^ 0x6F46E346) + *&v379[4 * (v1265 % 0x101)];
          v1064 = 1311471189 * ((v1476 ^ 0xF46E71C7) - v1257);
          v1358 = v1257 ^ v369;
          v380 = v319 ^ 3;
          v1030 = 1212230647 * ((v1274 ^ 0x2CA01A21) - v369);
          v1424 = v1291 ^ 0x9A9A9A9A;
          v381 = v1282 ^ v1628;
          v382 = (v281 + 1581503821) ^ (v1307 + 1581503821) ^ (v1312 + 1581503821);
          v993 = v382 ^ (v382 >> 2) & 0x1FBF7B1D ^ ((((v1300 - 0x715A2B0CA1BC2AB3) << 28) & 0x7EFDEC740000000 ^ ((v1300 - 0x715A2B0CA1BC2AB3) << 30)) >> 30) ^ (v1303 + 1581503821) ^ ((v1303 + 1581503821) >> 2) & 0x1FBF7B1D ^ (v1305 + 1581503821) ^ ((v1305 + 1581503821) >> 2) & 0x1FBF7B1D;
          v383 = v1314 ^ v1300 ^ v1303 ^ v1305;
          v992 = (v1322 >> 2) & 0x1FBF7B1D ^ v1322;
          v384 = v1328 - v1326 + 0x4C6387A8FA09E00FLL + ((v1328 - v1326 + 0x4C6387A8FA09E00FLL) >> 24);
          v1428 = v384 + (v384 >> 8) - ((v384 + (v384 >> 8)) >> 4);
          v385 = (((v1428 + 0x862C15F11DB85C5 + ((v1428 + 0x862C15F11DB85C5) >> 24)) >> 14) ^ (v1428 + 0x862C15F11DB85C5 + ((v1428 + 0x862C15F11DB85C5) >> 24))) + 2 * (((v1428 + 0x862C15F11DB85C5 + ((v1428 + 0x862C15F11DB85C5) >> 24)) >> 14) & (v1428 + 0x862C15F11DB85C5 + ((v1428 + 0x862C15F11DB85C5) >> 24)));
          v386 = v375 ^ v363 ^ v1591 ^ (4 * (v375 ^ v363));
          v991 = v386;
          v387 = (v1318 >> 2) & 0x1FBF7B1D ^ v383 ^ (v383 >> 2) & 0x1FBF7B1D ^ v1318 ^ (v1324 >> 2) & 0x1FBF7B1D ^ v1324 ^ (v1328 - v1326) ^ ((v1328 - v1326) >> 2) & 0x1FBF7B1D ^ v1294 ^ (v386 >> 2) & 0x1FBF7B1D ^ ((v386 ^ v1333) >> 2) & 0x1FBF7B1D;
          v1339 = v1330 ^ 0xCF7EEB39;
          v990 = v383 ^ (v383 >> 2) & 0x3AAEBEC7;
          v388 = ((v1341 >> 11) ^ v1341) + 2 * ((v1341 >> 11) & v1341) + ((((v1341 >> 11) ^ v1341) + 2 * ((v1341 >> 11) & v1341)) >> 2);
          v389 = (v388 ^ 0x35D1629651602A2DLL) + ((v388 ^ 0x35D1629651602A2DLL) >> 26) + (((v388 ^ 0x35D1629651602A2DLL) + ((v388 ^ 0x35D1629651602A2DLL) >> 26)) >> 13);
          v390 = v389 + (v389 >> 1);
          v391 = v382 ^ (v1300 + 1581503821) ^ (v1303 + 1581503821) ^ (v1305 + 1581503821) ^ v390;
          v392 = (v390 ^ 0x4C3ACA77EA7DEC70) - ((v390 ^ 0x4C3ACA77EA7DEC70) >> 26) + (((v390 ^ 0x4C3ACA77EA7DEC70) - ((v390 ^ 0x4C3ACA77EA7DEC70) >> 26)) >> 12);
          v1353 = v392 - (v392 >> 7);
          v393 = (v1353 ^ 0x2C219629264DAF12) - ((v1353 ^ 0x2C219629264DAF12) >> 29) - (((v1353 ^ 0x2C219629264DAF12) - ((v1353 ^ 0x2C219629264DAF12) >> 29)) >> 8);
          v394 = v393 + (v393 >> 1);
          LODWORD(v388) = v394 ^ v388;
          v395 = v394 + 0x1EE564CD39168163 + ((v394 + 0x1EE564CD39168163) >> 26) - ((v394 + 0x1EE564CD39168163 + ((v394 + 0x1EE564CD39168163) >> 26)) >> 11);
          v396 = v395 + (v395 >> 5);
          LODWORD(v379) = (v396 >> 2) & 0x3AAEBEC7 ^ v396;
          v397 = v1320 ^ v391 ^ (v391 >> 2) & 0x3AAEBEC7 ^ 0x839DA146;
          v398 = v396 - 0x2E85E0A826E68ECELL - ((v396 - 0x2E85E0A826E68ECELL) >> 31) - ((v396 - 0x2E85E0A826E68ECELL - ((v396 - 0x2E85E0A826E68ECELL) >> 31)) >> 8);
          v399 = v398 + (v398 >> 3);
          v989 = (v399 >> 2) & 0x3AAEBEC7 ^ v399;
          v400 = v399 + 0x5A6D002429388209 - ((v399 + 0x5A6D002429388209) >> 26) + ((v399 + 0x5A6D002429388209 - ((v399 + 0x5A6D002429388209) >> 26)) >> 14);
          v401 = v400 - (v400 >> 6);
          v1028 = v388 ^ v401 ^ ((v388 ^ v401) >> 2) & 0x3AAEBEC7;
          v402 = v401 + 0x4C6387A8FA09E00FLL + ((v401 + 0x4C6387A8FA09E00FLL) >> 24) + ((v401 + 0x4C6387A8FA09E00FLL + ((v401 + 0x4C6387A8FA09E00FLL) >> 24)) >> 8);
          v403 = v402 - (v402 >> 4);
          LODWORD(v401) = (v403 >> 2) & 0x3AAEBEC7 ^ v403;
          v404 = v1316 ^ v1635 ^ 0x9120ADCF ^ v387;
          v405 = v403 + 0x862C15F11DB85C5 + ((v403 + 0x862C15F11DB85C5) >> 24) + ((v403 + 0x862C15F11DB85C5 + ((v403 + 0x862C15F11DB85C5) >> 24)) >> 14);
          v1024 = (((v405 >> 4) + v405) >> 2) & 0x3AAEBEC7 ^ ((v405 >> 4) + v405);
          v1670 = v1669 + 1;
          v999 = __ROR4__(v1333 ^ 0x17B080DF ^ v1670, 10) & 0xC73AAEBE ^ __ROR4__(v1333 ^ 0x17B080DF ^ v1670, 8) ^ 0x7A143917;
          v1093 = v1288 ^ (v1450 << 6) ^ __ROR4__((v374 >> 3) ^ 0x9737E53C, 29) ^ 0x1315834E;
          v1121 = v387 ^ v1333;
          v406 = v1320 ^ v1623 ^ v381 ^ (v381 >> 2) & 0x1FBF7B1D ^ v401 ^ ((v397 ^ -v397 ^ (v379 - (v379 ^ v397))) + v379) ^ v1093 ^ v1330 ^ 0xCF7EEB39 ^ v1093 ^ (v1093 >> 2) & 0x3AAEBEC7 ^ ((v1330 ^ 0xCF7EEB39 ^ v1093) >> 2) & 0x3AAEBEC7 ^ ((v387 ^ v1333) >> 2) & 0x1FBF7B1D ^ v404 ^ v1632 ^ 0xA29999CF ^ v404 ^ v1279 ^ v1252 ^ ((v385 >> 4) + v385) ^ ((v1279 ^ v1252 ^ ((v385 >> 4) + v385)) >> 2) & 0x1FBF7B1D ^ ((v1632 ^ 0xA29999CF ^ v404) >> 2) & 0x1FBF7B1D;
          v1467 = v1632 ^ 0xF1FFB4BC ^ v406;
          v1463 = v406 ^ 0xD5F60063;
          v1342 = (v1676 >> 1) & 0x68C6EED9 ^ 0xD18DDDB2;
          v1636 = (v364 >> 1) & 0x46BA73AE ^ 0x8D74E75D;
          v1337 = (v1676 >> 1) & 0x2DA80DE1 ^ 0x5B501BC3;
          v1629 = (v364 >> 1) & 0x442D9658 ^ 0x885B2CB0;
          v1334 = __ROR4__(__ROR4__(v1676 & 0x7460B7AC, 15) ^ 0x6095CBD9, 18) ^ 0x696EF89;
          v1331 = (v364 >> 1) & 0x3932D9F2 ^ 0x7265B3E4;
          v1626 = (v364 >> 1) & 0x4B605249 ^ 0x96C0A493;
          v1310 = (v1676 >> 1) & 0x2E9A1A75 ^ 0x5D3434EB;
          v1308 = (v364 >> 1) & 0x5F2A87B9 ^ 0xBE550F72;
          v1624 = (v1676 >> 1) & 0x5DEC185C ^ 0xBBD830B9;
          v1620 = (v364 >> 1) & 0x51E7AA11 ^ 0xA3CF5422;
          v1301 = (v1676 >> 1) & 0x88F878B ^ 0x111F0F17;
          v1640 = (v1676 >> 1) & 0x7590C6B5 ^ 0xEB218D6A;
          v1616 = (v364 >> 1) & 0x32C81463 ^ 0x659028C7;
          v1298 = (v364 >> 1) & 0x203F5FCE ^ 0x407EBF9C;
          v1295 = (v1676 >> 1) & 0x6FE3EA16 ^ 0xDFC7D42C;
          v1612 = (v364 >> 1) & 0x49B27199 ^ 0x9364E333;
          v1289 = (v1676 >> 1) & 0x701D4682 ^ 0xE03A8D04;
          v1292 = (v364 >> 1) & 0x5623BFC4 ^ 0xAC477F88;
          v1609 = (v1676 >> 1) & 0x2192DF9D ^ 0x4325BF3A;
          v1606 = (v364 >> 1) & 0x4EF125D ^ 0x9DE24BB;
          v1283 = (v1676 >> 1) & 0xEA17851 ^ 0x1D42F0A3;
          v1604 = (v1676 >> 1) & 0x550DB2CC ^ 0xAA1B6598;
          v1601 = (v364 >> 1) & 0x55E95839 ^ 0xABD2B073;
          v1361 = (v364 >> 1) & 0x341EE3FE ^ 0x683DC7FC;
          v1390 = ((((v1676 >> 1) & 0x22BCAC8D ^ 0x4579591B) & ~v361) << (v319 ^ 3)) | ((v1684 & ((v1676 >> 1) & 0x22BCAC8D ^ 0x4579591B)) >> v365);
          v1393 = (((v376 & 0x44874F3D ^ 0x890E9E7B) & ~v371) << v1692) + ((v373 & (v376 & 0x44874F3D ^ 0x890E9E7B)) >> v365);
          v1598 = (v1676 >> 1) & 0x7BA26774 ^ 0xF744CEE8;
          v1280 = (v364 >> 1) & 0x62118F91 ^ 0xC4231F22;
          v1595 = (v1676 >> 1) & 0x7F96AA4B ^ 0xFF2D5497;
          v1277 = (v364 >> 1) & 0x70E1D5E6 ^ 0xE1C3ABCC;
          v407 = (v1676 >> 1) & 0x5DBE1ECD ^ 0xBB7C3D9A;
          v1270 = (v364 >> 1) & 0x1D3E1530 ^ 0x3A7C2A61;
          v1253 = (v364 >> 1) & 0x2BC76C4C ^ 0x578ED899;
          v1633 = (v1676 >> 1) & 0x6A4B249F ^ 0xD496493E;
          v1577 = v1676 >> 1;
          LODWORD(v379) = (v1676 >> 1) & 0x11F03091 ^ 0x23E06122;
          v408 = __PAIR64__(v1395, __ROR4__(__ROR4__(v1676 & 0xB185296, 10) ^ 0x60E6226D, 23));
          v1592 = v408 ^ 0xC75C8857;
          v1248 = v364 >> 1;
          v1403 = ((v1684 & (v376 & 0x1F2E3DB1 ^ 0x3E5C7B62)) >> v351) + (((v376 & 0x1F2E3DB1 ^ 0x3E5C7B62) & ~v371) << (v319 ^ 3));
          v409 = v1399 + 540369369;
          v410 = v1399 ^ 0x2E44CB3D;
          v411 = v1476 ^ v1274 ^ 0xCF7EEB39 ^ 0xABD3C80F;
          v412 = v1358 ^ 0x910B8EB5;
          v1477 = v1472 + v1397;
          v413 = v1419 ^ v1347;
          LODWORD(v408) = v1395;
          v988 = v408 >> 21;
          v414 = v1350 ^ v1419 ^ 0x87878787;
          v415 = v1345 ^ 0x30303030;
          v984 = *&v1369[4 * (v1437 % 0x101)];
          v1017 = *&v1369[4 * v365];
          v1015 = -322110953 * v1419;
          v1019 = v365 ^ v1386;
          v980 = *&v1380[4 * v1433];
          v985 = v1373 + 1;
          v979 = -842105667 * (v1261 ^ 0xE3DEF118);
          v978 = (v1458 >> 2) & 0x1FBF7B1D;
          v983 = v1339 ^ v1581;
          v977 = ((v1339 ^ v1581) >> 2) & 0x1FBF7B1D;
          v981 = v381 ^ (v381 >> 2) & 0x3AAEBEC7 ^ v1353;
          v982 = (v1353 >> 2) & 0x3AAEBEC7;
          v1022 = ((v406 ^ 0xD5F60063) >> 2) & 0x3AAEBEC7;
          v1329 = v1342 & ~v371;
          v1325 = (v1684 & v1342) >> v351;
          v1327 = (v373 & v1636) >> v365;
          v1359 = v1337 & ~v361;
          v1354 = v373 & v1337;
          v1323 = (v1684 & v1629) >> v365;
          v1321 = v373 & v1334;
          v1319 = (v1334 & ~v361) << v1692;
          v1315 = v1684 & v1331;
          v1313 = (v1331 & ~v371) << v380;
          v1317 = (v1684 & v1626) >> v351;
          v1356 = v373 & v1310;
          v1344 = v1310 & ~v371;
          v1351 = v1308 & ~v361;
          v1370 = (v1684 & v1308) >> v351;
          v1304 = (v373 & v1624) >> v365;
          v1309 = (v373 & v1620) >> v365;
          v1306 = v1301 & ~v361;
          v1302 = (v1684 & v1301) >> v351;
          v1374 = (v373 & v1640) >> v351;
          v1287 = (v1684 & v1616) >> v365;
          v1285 = v1298 & ~v361;
          v1275 = (v373 & v1298) >> v365;
          v1273 = v1295 & ~v371;
          v1268 = (v1684 & v1295) >> v351;
          v1381 = (v1289 & ~v371) << v1692;
          v1346 = v1684 & v1289;
          v1262 = (v1612 & ~v361) << v380;
          v1260 = v1292 & ~v371;
          v1256 = (v373 & v1292) >> v351;
          v1258 = (v1609 & ~v361) << v380;
          v1264 = (v373 & v1606) >> v365;
          v976 = (v1684 & v1283) >> v351;
          v416 = (v1283 & ~v371) << v380;
          v1266 = (v1601 & ~v361) << v1692;
          v1311 = (v1598 & ~v361) << v380;
          v1338 = v1280 & ~v361;
          v1384 = (v1684 & v1280) >> v365;
          v1299 = v1277 & ~v371;
          v1284 = (v1684 & v1277) >> v365;
          v1343 = v407 & ~v361;
          v417 = v373 & v407;
          v418 = v373;
          v1387 = v417 >> v351;
          v1296 = v1270 & ~v361;
          v1281 = (v373 & v1270) >> v365;
          v1348 = (v1676 >> 1) & 0x6CD1B2E6 ^ 0xD9A365CD;
          v1293 = (v1348 & ~v371) << v1692;
          v1290 = v1253 & ~v371;
          v1278 = (v373 & v1253) >> v365;
          v1332 = v379 & ~v371;
          v1396 = (v373 & v379) >> v365;
          v1335 = v1633 & ~v361;
          v1365 = (v364 >> 1) & 0x2752B43D ^ 0x4EA5687B;
          v1398 = (v1365 & ~v361) << v1692;
          v1340 = v1419 ^ ((v1419 & v1678) >> 1);
          v1271 = (v1340 & v373) >> v351;
          v986 = v413;
          v1420 = v414 ^ v413;
          v1400 = v414 ^ v413 ^ 0x3574C380;
          v419 = v380;
          v420 = v380 << 8;
          v1249 = v1604 & ~v371;
          v1109 = v371;
          v1251 = v1595 & ~v371;
          v1254 = v418 & v1592;
          do
          {
            v421 = (*(*(&off_101353600 + v410) + (v275 ^ 0xFAu) - 3) + 1759399128) ^ 0x40D4074B;
            v422 = (((((v275 ^ ((v275 & v1678) >> 1)) & v1684) >> v351) + ((v275 ^ ((v275 & v1678) >> 1)) << v380)) ^ v1424 ^ v415);
            *(v1694 + 4 * v422) = v411 ^ ((((v421 ^ ((v421 & v1676) >> 1)) & v1687) << v1692) + (((v421 ^ ((v421 & v1676) >> 1)) & v418) >> v365));
            v423 = *&v1454[4 * (v275 ^ 0xF7)];
            v275 += v409 ^ 0x4E7A2C6A;
            *(v1689 + 4 * v422) = v412 ^ (v423 + 78671838);
          }

          while (v275 != 256);
          v424 = v1486 ^ __ROR4__(v1008, 19);
          v1012 = v349 ^ v1011;
          v1009 = v1102 ^ v420;
          v1455 = -322110953 * v1450;
          v1451 = 936282213 * (v375 - v363) + v1479;
          v1103 = v1445 + v1363 - v320;
          v1005 = v1002 ^ v1376 ^ v1437;
          v1007 = v1105 ^ v984 ^ (v994 + v996);
          v1438 = v993 ^ v1458;
          v1003 = v977 ^ v1428 ^ (v1428 >> 2) & 0x1FBF7B1D ^ v991;
          v1377 = v976 | v416;
          v1429 = v1484 ^ v981 ^ v982 ^ v989 ^ v363 ^ v375 ^ ((v375 ^ v363) << 8);
          v1485 = v1424 ^ v415;
          v1487 = v986 ^ v414;
          v1004 = v985 + 2 * v998;
          v1001 = __ROR4__(v988 ^ 0x794CC759, 11) ^ 0xEB2F2998;
          v1000 = v1107 ^ v990 ^ v1670 ^ (v1670 >> 2) & 0x3AAEBEC7 ^ __ROR4__(v999, 24);
          v1489 = v1488 ^ ((v1676 & v1488) >> 1);
          v1139 = v1138 ^ ((v1678 & v1138) >> 1);
          v1108 = v1149 ^ ((v1676 & v1149) >> 1);
          v1141 = v1140 ^ ((v1678 & v1140) >> 1);
          v1106 = v1142 ^ ((v1676 & v1142) >> 1);
          v1150 = v1134 ^ ((v1678 & v1134) >> 1);
          v1143 = v1157 ^ ((v1678 & v1157) >> 1);
          v1480 = v1144 ^ ((v1676 & v1144) >> 1);
          v1459 = v1161 ^ ((v1678 & v1161) >> 1);
          v1158 = v1151 ^ ((v1678 & v1151) >> 1);
          v1162 = v1154 ^ ((v1676 & v1154) >> 1);
          v1155 = v1159 ^ ((v1678 & v1159) >> 1);
          v1160 = v1366 ^ ((v1676 & v1366) >> 1);
          v425 = (v409 + 1941296053) | 0x808D8;
          v1425 = v425;
          v426 = v1220;
          if ((v1232 & 1) == 0)
          {
            v426 = v1228;
          }

          v427 = v1216;
          if (v1232)
          {
            v427 = v1224;
          }

          v428 = v1175;
          if ((v1232 & 1) == 0)
          {
            v428 = v1209;
          }

          v429 = v1193;
          if (v1232)
          {
            v429 = v1213;
            v430 = v1167;
          }

          else
          {
            v430 = v1163;
          }

          if (v1232)
          {
            v431 = v1190;
          }

          else
          {
            v431 = v1236;
          }

          v1367 = v409;
          if (v1232)
          {
            v432 = v1182;
          }

          else
          {
            v432 = v1171;
          }

          v433 = (v1232 & 2) == 0;
          v434 = v1552;
          if ((v1232 & 2) != 0)
          {
            v434 = v1562;
            v435 = v1547;
          }

          else
          {
            v435 = v1557;
          }

          v436 = v418;
          v437 = v1571;
          if ((v1232 & 2) == 0)
          {
            v437 = v1565;
          }

          v1172 = v437;
          v438 = v1539;
          if ((v1232 & 2) != 0)
          {
            v439 = v426;
          }

          else
          {
            v438 = v1544;
            v439 = v427;
          }

          v1566 = v439;
          if ((v1232 & 2) != 0)
          {
            v440 = v427;
          }

          else
          {
            v440 = v426;
          }

          v1168 = v440;
          if ((v1232 & 2) != 0)
          {
            v441 = v428;
          }

          else
          {
            v441 = v429;
          }

          if ((v1232 & 2) != 0)
          {
            v428 = v429;
            v442 = v1525;
          }

          else
          {
            v442 = v1530;
          }

          if ((v1232 & 2) != 0)
          {
            v443 = v1521;
          }

          else
          {
            v443 = v1535;
          }

          if ((v1232 & 2) != 0)
          {
            v444 = v1507;
          }

          else
          {
            v444 = v1512;
          }

          if ((v1232 & 2) != 0)
          {
            v445 = v1516;
          }

          else
          {
            v445 = v1503;
          }

          if ((v1232 & 2) != 0)
          {
            v446 = v1178;
          }

          else
          {
            v446 = v1186;
          }

          if ((v1232 & 2) != 0)
          {
            v447 = v430;
          }

          else
          {
            v447 = v431;
          }

          if ((v1232 & 2) != 0)
          {
            v430 = v431;
            v448 = v1493;
          }

          else
          {
            v448 = v1498;
          }

          if ((v1232 & 2) != 0)
          {
            v449 = v1205;
          }

          else
          {
            v449 = v1197;
          }

          v1237 = v449;
          if ((v1232 & 2) != 0)
          {
            v450 = v1201;
          }

          else
          {
            v450 = v432;
          }

          v1233 = v450;
          if (v433)
          {
            v451 = v1201;
          }

          else
          {
            v451 = v432;
          }

          v1229 = v451;
          if (v1472)
          {
            v452 = v1072;
          }

          else
          {
            v452 = v424 ^ 0x79C4C826 ^ v425;
          }

          if (v1472)
          {
            v453 = v1062;
          }

          else
          {
            v453 = v1054;
          }

          if (v1472)
          {
            v454 = v1060;
          }

          else
          {
            v454 = v1056;
          }

          v455 = v1038;
          if (v1472)
          {
            v455 = v1046;
          }

          v456 = v1040;
          if (v1472)
          {
            v456 = v1070;
          }

          v457 = v1036;
          if (v1472)
          {
            v457 = v1034;
          }

          v1572 = v457;
          v458 = (v1472 & 2) == 0;
          v459 = v351;
          v1443 = v351;
          if ((v1472 & 2) != 0)
          {
            v460 = v1044;
          }

          else
          {
            v460 = v1042;
          }

          v1667 = v365;
          v1221 = v460 ^ ((v1678 & v460) >> 1);
          if ((v1472 & 2) != 0)
          {
            v461 = v1052;
          }

          else
          {
            v461 = v1048;
          }

          v1217 = v461 ^ ((v1678 & v461) >> 1);
          v1210 = v1050 ^ ((v1678 & v1050) >> 1);
          if ((v1472 & 2) != 0)
          {
            v462 = v455;
          }

          else
          {
            v462 = v456;
          }

          v1206 = v462 ^ ((v1678 & v462) >> 1);
          v1202 = v1058 ^ ((v1678 & v1058) >> 1);
          if ((v1472 & 2) != 0)
          {
            v455 = v456;
          }

          v1198 = v455 ^ ((v1676 & v455) >> 1);
          v463 = v1076;
          if ((v1472 & 2) != 0)
          {
            v463 = v1080;
          }

          v1517 = v463 ^ ((v1676 & v463) >> 1);
          if ((v1472 & 2) != 0)
          {
            v464 = v1090;
          }

          else
          {
            v464 = v1087;
          }

          v1194 = v464 ^ ((v1676 & v464) >> 1);
          if ((v1472 & 2) != 0)
          {
            v465 = v1087;
          }

          else
          {
            v465 = v1090;
          }

          v1187 = v465 ^ ((v1676 & v465) >> 1);
          if ((v1472 & 2) != 0)
          {
            v466 = v453;
          }

          else
          {
            v466 = v454;
          }

          v467 = v419;
          v1225 = ((v1684 & (v466 ^ ((v1678 & v466) >> 1))) >> v365) + ((v1687 & (v466 ^ ((v1678 & v466) >> 1))) << v419) - 2 * (((v1684 & (v466 ^ ((v1678 & v466) >> 1))) >> v365) & ((v1687 & (v466 ^ ((v1678 & v466) >> 1))) << v419));
          v468 = v1082;
          if ((v1472 & 2) == 0)
          {
            v468 = v1084;
          }

          v1183 = v468 ^ ((v1676 & v468) >> 1);
          if ((v1472 & 2) != 0)
          {
            v469 = v454;
          }

          else
          {
            v469 = v453;
          }

          v1179 = v469 ^ ((v1678 & v469) >> 1);
          if ((v1472 & 2) != 0)
          {
            v470 = v452;
          }

          else
          {
            v470 = v1095;
          }

          v1499 = v470 ^ ((v470 & v1678) >> 1);
          v471 = v1455 ^ v444 ^ v1015;
          v472 = v1566 + (v1017 ^ 0xA7A27C70) + v1068;
          v473 = v471 + v1030;
          v474 = v1581;
          v475 = v1581 ^ (v1581 >> 2) & 0x1FBF7B1D ^ v1438 ^ v978 ^ v992 ^ v983 ^ v1003 ^ 0xDCE1D135;
          v1540 = v1127 ^ ((v1678 & v1127) >> 1);
          v1563 = v1680 ^ ((v1678 & v1680) >> 1);
          v476 = v1676;
          v1558 = v1240 ^ ((v1676 & v1240) >> 1);
          v1439 = v447 ^ ((v1676 & v447) >> 1);
          v1567 = v1244 ^ ((v1678 & v1244) >> 1);
          v1553 = v428 ^ ((v1676 & v428) >> 1);
          v1531 = v434 ^ ((v1676 & v434) >> 1);
          v1522 = v438 ^ ((v1676 & v438) >> 1);
          v1536 = v1670 ^ ((v1670 & v1678) >> 1);
          v1548 = (v472 + 1) ^ (((v472 + 1) & v1678) >> 1);
          v477 = v1127 ^ v1680 ^ v1240 ^ v446 ^ v447 ^ v428 ^ v1244 ^ v434 ^ v442 ^ v438 ^ v1004 ^ v1005 ^ v1670 ^ v1019 ^ v459 ^ (v472 + 1);
          v1526 = v475 ^ ((v475 & v1676) >> 1);
          v1671 = v473 ^ ((v473 & v1678) >> 1);
          v1245 = v477 ^ v473 ^ v475 ^ v1463 ^ 0xEB43FEB1 ^ (((v477 ^ v473 ^ v475 ^ v1463 ^ 0xEB43FEB1) & v1676) >> 1);
          v478 = v1012 ^ v1168;
          v479 = v980 ^ v995 ^ v997 ^ v1433 ^ v979 ^ 0xF07E7596 ^ (-842105667 * v1006);
          v1494 = v1463 ^ ((v1463 & v1678) >> 1);
          v480 = v1429 ^ v1024 ^ v1463 ^ v1467 ^ (v1467 >> 2) & 0x3AAEBEC7 ^ v1022 ^ 0x2C0B98D8;
          v481 = v1000 ^ v1028 ^ 0x325B7A2;
          v1473 = v435 ^ ((v1678 & v435) >> 1);
          v1446 = v445 ^ ((v1678 & v445) >> 1);
          v1241 = v448 ^ ((v1676 & v448) >> 1);
          v1468 = v441 ^ ((v1678 & v441) >> 1);
          v1164 = v1131 ^ ((v1676 & v1131) >> 1);
          v482 = v1581 ^ v435 ^ v445 ^ v448 ^ v441 ^ v1001 ^ v1131;
          v1169 = v1246 ^ ((v1678 & v1246) >> 1);
          v483 = v1676 ^ v1585 ^ v1678;
          v1088 = v483 ^ ((v483 & v1678) >> 1);
          v1085 = v478 ^ ((v478 & v1678) >> 1);
          v1586 = v479 ^ ((v479 & v1678) >> 1);
          v484 = v1692;
          v485 = v1012 ^ v1009 ^ (v1692 << 8);
          v1135 = v1097 ^ ((v1097 & v1678) >> 1);
          v1145 = v485 ^ ((v485 & v1678) >> 1);
          v1132 = v1451 ^ ((v1451 & v1676) >> 1);
          v486 = v1097 ^ v485 ^ v1451;
          v1098 = v481 ^ ((v481 & v1676) >> 1);
          v1452 = v480 ^ ((v480 & v1676) >> 1);
          v487 = v482 ^ v443 ^ v1246 ^ (v1064 + v1172) ^ v1007 ^ 0xA04FCCF9 ^ v483 ^ (v1074 + v430) ^ v478 ^ v1103 ^ v479 ^ v486 ^ v481 ^ v1093 ^ v480 ^ 0xEB43FEB1;
          v1247 = v487 ^ ((v487 & v1678) >> 1);
          *(&v488 + 1) = v1646 & 0xFFFFFFFFFFFFFFF8;
          *&v488 = v1646;
          v489 = *(*v1404 + (*v1408 & 0xFFFFFFF8 & ((v1646 & 0xFFFFFFF8) - 103642729)));
          v490 = (v489 + (v488 >> 8)) ^ 0xF41651499F5E3C67;
          v491 = v490 ^ __ROR8__(v489, 61);
          v492 = (v491 + __ROR8__(v490, 8)) ^ 0x153242EE3CF06A49;
          v493 = v492 ^ __ROR8__(v491, 61);
          v494 = (__ROR8__(v492, 8) + v493) ^ 0x2275D4C73835399BLL;
          v495 = v494 ^ __ROR8__(v493, 61);
          *(&v488 + 1) = v1100 & 0xFFFFFFFFFFFFFFF8;
          *&v488 = v1646 + 8;
          v496 = v488 >> 8;
          v497 = (__ROR8__(v494, 8) + v495) ^ 0xE5AF1AB32EBD3CDDLL;
          v498 = v497 ^ __ROR8__(v495, 61);
          *&v488 = __ROR8__(v497, 8);
          v499 = *(*v1404 + (*v1408 & 0xFFFFFFF8 & ((v1100 & 0xFFFFFFF8) - 103642729)));
          v500 = v488 + v498 - 0x3822360933BA48DFLL - ((2 * (v488 + v498)) & 0x8FBB93ED988B6E42);
          v501 = (v499 + v496) ^ 0xF41651499F5E3C67;
          v502 = v501 ^ __ROR8__(v499, 61);
          v503 = __ROR8__(v501, 8) + v502;
          v504 = v503 ^ __ROR8__(v502, 61);
          *(&v488 + 1) = v504 ^ 0x153242EE3CF06A49;
          *&v488 = v504;
          v505 = v500 ^ __ROR8__(v498, 61);
          v506 = ((v504 ^ 0x153242EE3CF06A49) + __ROR8__(v503 ^ 0x153242EE3CF06A49, 8)) ^ 0x2275D4C73835399BLL;
          v507 = v506 ^ (v488 >> 61);
          v508 = (__ROR8__(v506, 8) + v507) ^ 0xE5AF1AB32EBD3CDDLL;
          v509 = v508 ^ __ROR8__(v507, 61);
          v510 = (__ROR8__(v508, 8) + v509) ^ 0xC7DDC9F6CC45B721;
          v511 = v510 ^ __ROR8__(v509, 61);
          v512 = (v511 + __ROR8__(v510, 8)) ^ 0xA82620A559D2DA78;
          *&v488 = __ROR8__(v511, 61);
          v513 = v512 ^ v488;
          v514 = (v512 ^ v488) + (v512 >> 8) + (v512 << 56);
          v515 = (v505 + __ROR8__(v500, 8)) ^ 0xA82620A559D2DA78;
          v516 = v515 ^ __ROR8__(v505, 61);
          v517 = (v516 + __ROR8__(v515, 8)) ^ 0x5F8DEC3EA3980A1BLL;
          v518 = (__ROR8__(v514 ^ 0x5F8DEC3EA3980A1BLL, 8) + (v514 ^ 0x5F8DEC3EA3980A1BLL ^ __ROR8__(v513, 61))) ^ 0xC1C3C8D2A4C54828;
          LOBYTE(v479) = 8 * (v1646 & 7);
          v519 = (((v517 ^ __ROR8__(v516, 61)) + __ROR8__(v517, 8)) ^ 0xC1C3C8D2A4C54828) >> v479;
          v520 = v519 + 2 * (v518 << (v479 ^ 0x3F));
          v521 = v1649;
          v522 = v1653;
          LODWORD(v519) = (((127 * v1644[v519 ^ 0x55]) ^ 0x90) << 24) | ((v522[BYTE1(v520) ^ 0x11] ^ BYTE1(v520) ^ 0x24) << 16) | ((v1649[BYTE2(v520) ^ 0xE9] ^ BYTE2(v520) ^ 0xBD) << 8) | (v522[BYTE3(v520) ^ 0x3ALL] ^ BYTE3(v520)) ^ 0xFB;
          LODWORD(v517) = v519 ^ ((v519 & v1676) >> 1);
          *(&v488 + 1) = (v1646 + 16) & 0xFFFFFFFFFFFFFFF8;
          *&v488 = v1646 + 16;
          v523 = *(*v1404 + ((DWORD2(v488) - 103642729) & 0xFFFFFFF8 & *v1408));
          v524 = (v523 + (v488 >> 8)) ^ 0xF41651499F5E3C67;
          v525 = v524 ^ __ROR8__(v523, 61);
          v526 = __ROR8__(v524, 8) + v525;
          v527 = v526 ^ __ROR8__(v525, 61);
          *(&v488 + 1) = v527 ^ 0x153242EE3CF06A49;
          *&v488 = v527;
          v528 = ((v527 ^ 0x153242EE3CF06A49) + __ROR8__(v526 ^ 0x153242EE3CF06A49, 8)) ^ 0x2275D4C73835399BLL;
          v529 = v528 ^ (v488 >> 61);
          v530 = (v529 + __ROR8__(v528, 8)) ^ 0xE5AF1AB32EBD3CDDLL;
          v531 = v530 ^ __ROR8__(v529, 61);
          v532 = (__ROR8__(v530, 8) + v531) ^ 0xC7DDC9F6CC45B721;
          v533 = v532 ^ __ROR8__(v531, 61);
          v534 = (__ROR8__(v532, 8) + v533) ^ 0xA82620A559D2DA78;
          LODWORD(v519) = ((v522[BYTE4(v520) ^ 0x2DLL] ^ HIDWORD(v520) ^ 0x3D) << 24) | ((v522[BYTE5(v520) ^ 0x37] ^ BYTE5(v520) ^ 1) << 16) | ((v1649[BYTE6(v520) ^ 0x44] ^ BYTE6(v520) ^ 0xB5) << 8) | v522[HIBYTE(v520) ^ 0x9D] ^ HIBYTE(v520) ^ 0x8C;
          v535 = v534 ^ __ROR8__(v533, 61);
          v536 = v519 ^ ((v519 & v1678) >> 1);
          v537 = (v535 + __ROR8__(v534, 8)) ^ 0x5F8DEC3EA3980A1BLL;
          v538 = (v518 >> v479) + 2 * ((((v537 ^ __ROR8__(v535, 61)) + __ROR8__(v537, 8)) ^ 0x41C3C8D2A4C54828) << (v479 ^ 0x3F));
          LODWORD(v535) = *(v1656 + (BYTE1(v538) ^ 0xCFLL));
          LODWORD(v535) = (((((v535 >> 6) | (4 * v535)) ^ (((v535 >> 6) | (4 * v535)) >> 5) ^ (((v535 >> 6) | (4 * v535)) >> 1)) ^ 0xA3) << 16) | ((v1649[(v518 >> v479) ^ 0x71] ^ (v518 >> v479) ^ 0x5E) << 24);
          LODWORD(v534) = *(v1656 + (BYTE2(v538) ^ 0xD3));
          LODWORD(v518) = *(v1656 + (BYTE3(v538) ^ 0xD2));
          LODWORD(v535) = v535 | (((v518 >> 6) | (4 * v518)) ^ (((v518 >> 6) | (4 * v518)) >> 5) ^ (((v518 >> 6) | (4 * v518)) >> 1)) ^ 7 | (((((v534 >> 6) | (4 * v534)) ^ (((v534 >> 6) | (4 * v534)) >> 5) ^ (((v534 >> 6) | (4 * v534)) >> 1)) ^ 0x26) << 8);
          LODWORD(v538) = ((((127 * v1644[BYTE5(v538) ^ 0x8BLL]) ^ 0x20) << 16) | ((v1649[BYTE4(v538) ^ 0x62] ^ HIDWORD(v538) ^ 0x90) << 24) | ((v522[BYTE6(v538) ^ 0xB1] ^ BYTE6(v538) ^ 0xD6) << 8) | HIBYTE(v538) ^ v522[HIBYTE(v538) ^ 0xEE]) ^ 0xEA;
          LODWORD(v518) = v538 ^ ((v538 & v1678) >> 1);
          v539 = v1688;
          LODWORD(v496) = *(v1656 + (*(v1688 + 6) ^ 0xBDLL));
          v540 = *(v1656 + (*(v1688 + 1) ^ 0xBBLL));
          LODWORD(v534) = (v539[3] ^ 0xE8 ^ v1649[v539[3] ^ 0xFBLL] | ((v539[2] ^ 0x1A ^ v1653[v539[2] ^ 0xBFLL]) << 8)) & 0xFF00FFFF | (((((v540 >> 6) | (4 * v540)) ^ (((v540 >> 6) | (4 * v540)) >> 5) ^ (((v540 >> 6) | (4 * v540)) >> 1)) ^ 0x8F) << 16) | (((127 * v1644[*v539 ^ 0x15]) ^ 0x43) << 24);
          v541 = (v539[7] ^ 0xE8 ^ v521[v539[7] ^ 0x52]) & 0xFFFF00FF | (((127 * v1644[v539[4] ^ 0xAALL]) ^ 0x1A) << 24) | ((v539[5] ^ v521[v539[5] ^ 0x57] ^ 0xC0) << 16) | (((((v496 >> 6) | (4 * v496)) ^ (((v496 >> 6) | (4 * v496)) >> 5) ^ (((v496 >> 6) | (4 * v496)) >> 1)) ^ 0x2C) << 8);
          LODWORD(v496) = v541 ^ ((v541 & v1678) >> 1);
          v542 = (v539[11] ^ 0x1A ^ v522[v539[11] ^ 0x53]) & 0xFFFF00FF | ((v539[8] ^ 0x51 ^ v522[v539[8] ^ 2]) << 24) | ((v539[9] ^ v1649[v539[9] ^ 8] ^ 0xFC) << 16) | (((127 * v1644[v539[10] ^ 0x8ALL]) ^ 0xBA) << 8);
          LODWORD(v538) = (v539[15] ^ 0x64 ^ v522[v539[15] ^ 0xDFLL] | ((v539[14] ^ 0xF9 ^ v522[v539[14] ^ 0x8ELL]) << 8) | ((v539[12] ^ 0x9A ^ v521[v539[12] ^ 0x97]) << 24) | ((v539[13] ^ 0xED ^ v521[v539[13] ^ 0x75]) << 16)) ^ 0xD6;
          v543 = ((v1643 & v1517) << v1692) | ((v1684 & v1517) >> v1443);
          v544 = ((v1499 & v1684) >> v1443) ^ ((v1499 & v1687) << v467);
          v545 = (((v542 ^ ((v542 & v476) >> 1)) & v1687) << v467) ^ (((v542 ^ ((v542 & v476) >> 1)) & v1684) >> v365) ^ ((((v535 ^ ((v535 & v476) >> 1)) & v436) >> v365) | (((v535 ^ ((v535 & v476) >> 1)) & v1643) << v467));
          LODWORD(v535) = (((v496 & v1687) << v467) + ((v496 & v1684) >> v1443)) ^ (((v536 & v1684) >> v365) | ((v536 & v1687) << v467));
          v1057 = ((((v534 ^ ((v534 & v476) >> 1)) & v436) >> v365) | (((v534 ^ ((v534 & v476) >> 1)) & v1643) << v484)) ^ (((v517 & v436) >> v1443) + ((v517 & v1643) << v484));
          v1059 = (((v538 ^ ((v538 & v1678) >> 1)) & v1643) << v484) ^ (((v538 ^ ((v538 & v1678) >> 1)) & v436) >> v1443) ^ (((v518 & v1687) << v484) + ((v518 & v1684) >> v1443));
          LODWORD(v538) = -919762969 * (v1059 ^ (v544 + v543)) - ((-919762969 * (v1059 ^ (v544 + v543))) >> 16);
          LODWORD(v517) = 1368117563 * (v538 + (v538 >> 8) + v1057);
          v546 = -1959020535 * (((WORD1(v517) ^ v517) - ((WORD1(v517) ^ v517) >> 8)) ^ v535);
          v1055 = v545;
          LODWORD(v517) = WORD1(v517) + v517 - 2 * (WORD1(v517) & v517);
          LODWORD(v517) = v517 - (v517 >> 8);
          v1051 = (((v517 ^ v535) - v535) ^ -v517 ^ v535) + 2 * ((((v517 ^ v535) - v535) ^ -v517 ^ v517) & (v517 ^ v535));
          LODWORD(v517) = (-1959020535 * (v517 ^ v535)) ^ ((-1959020535 * (v517 ^ v535)) >> 16);
          LODWORD(v517) = -1629022111 * (v517 - v545 + (v517 >> 8)) - ((-1629022111 * (v517 - v545 + (v517 >> 8))) >> 16);
          v1681 = ((v517 + (v517 >> 8)) ^ v1694) + v1477 + 2 * ((v517 + (v517 >> 8)) ^ v1694 ^ ((v517 + (v517 >> 8)) | v1694));
          v547 = v1114;
          if (!v458)
          {
            v547 = v1111;
          }

          v1409 = v547;
          if (v458)
          {
            v548 = v1117;
          }

          else
          {
            v548 = v1572;
          }

          v1405 = v548;
          if (v458)
          {
            v549 = v1572;
          }

          else
          {
            v549 = v1117;
          }

          v1430 = ((v1643 & v1489) << v467) ^ ((v1684 & v1489) >> v1443);
          v1053 = ((v1643 & v1480) << v467) ^ ((v436 & v1480) >> v365);
          v1049 = ((v1684 & v1459) >> v365) | ((v1687 & v1459) << v1692);
          v1518 = ((v1643 & (v1001 ^ ((v1676 & v1001) >> 1))) << v467) ^ ((v1684 & (v1001 ^ ((v1676 & v1001) >> 1))) >> v1443);
          v1527 = ((v1526 & v1687) << v467) ^ ((v1526 & v436) >> v365);
          v1500 = ((v1643 & (v1005 ^ ((v1005 & v1678) >> 1))) << v467) ^ ((v1684 & (v1005 ^ ((v1005 & v1678) >> 1))) >> v365);
          v1513 = ((v1643 & v1567) << v1692) + ((v436 & v1567) >> v1443);
          if (v1109 == -1)
          {
            v550 = v1085;
          }

          else
          {
            v550 = ~(v1085 ^ v1684);
          }

          v1582 = ((v550 & v1684) >> v1443) ^ ((v1687 & v1085) << v1692);
          v1568 = ((v1098 & v1684) >> v365) | ((v1098 & v1687) << v1692);
          v1490 = ((v1586 & v1687) << v1692) ^ ((v1684 & v1586) >> v1443);
          v1587 = ((v1452 & v436) >> v365) | ((v1452 & v1687) << v467);
          v1453 = ((v1687 & (v442 ^ ((v1678 & v442) >> 1))) << v1692) ^ ((v436 & (v442 ^ ((v1678 & v442) >> 1))) >> v1443);
          v1573 = ((v1643 & v1088) << v467) ^ ((v1684 & v1088) >> v1443);
          v1091 = v1007 ^ 0xA04FCCF9 ^ (((v1007 ^ 0xA04FCCF9) & v1678) >> 1);
          v1460 = ((v1643 & v1091) << v467) | ((v436 & v1091) >> v365);
          v1508 = v1019 ^ v459 ^ (((v1019 ^ v459) & v1676) >> 1);
          v1657 = v1485 ^ ((v1508 & v436) >> v365) ^ ((v1643 & v1508) << v1692);
          v1464 = ((v1684 & (v443 ^ ((v1676 & v443) >> 1))) >> v365) | ((v1687 & (v443 ^ ((v1676 & v443) >> 1))) << v467);
          v1118 = ((v1687 & ((v1064 + v1172) ^ (((v1064 + v1172) & v1676) >> 1))) << v467) + ((v436 & ((v1064 + v1172) ^ (((v1064 + v1172) & v1676) >> 1))) >> v1443);
          v1545 = ((v1684 & v1473) >> v1443) | ((v1687 & v1473) << v1692);
          v1647 = ((v1494 & v1684) >> v365) + ((v1494 & v1687) << v467);
          v1447 = ((v1687 & v1446) << v467) ^ ((v436 & v1446) >> v365);
          v1128 = (v1074 + v430) ^ (((v1074 + v430) & v1676) >> 1);
          v1474 = ((v1643 & v1128) << v1692) ^ ((v1684 & v1128) >> v365);
          v1654 = (((v1093 ^ ((v1093 & v1676) >> 1)) & v1687) << v467) | (((v1093 ^ ((v1093 & v1676) >> 1)) & v436) >> v365);
          v1495 = ((v1684 & v1468) >> v1443) | ((v1687 & v1468) << v1692);
          v1549 = ((v1548 & v1687) << v1692) ^ ((v1548 & v436) >> v365);
          v1509 = ((v1687 & v1522) << v467) | ((v436 & v1522) >> v1443);
          v1559 = ((v1643 & v1558) << v467) ^ ((v436 & v1558) >> v1443);
          v1541 = ((v1684 & v1540) >> v365) + ((v1687 & v1540) << v1692);
          v551 = ((v1132 & v436) >> v365) | ((v1132 & v1643) << v1692);
          v552 = v1487 ^ ((v436 & v1531) >> v1443) ^ ((v1643 & v1531) << v467);
          v1645 = ((v1135 & v436) >> v1443) | ((v1135 & v1643) << v467);
          v1469 = ((v1684 & v1563) >> v1443) ^ ((v1687 & v1563) << v467);
          v1523 = ((v1145 & v1643) << v467) + ((v1145 & v1684) >> v1667);
          v1146 = ((v1684 & v1536) >> v1443) | ((v1687 & v1536) << v1692);
          v1504 = ((v1643 & (v1103 ^ ((v1103 & v1678) >> 1))) << v1692) + ((v1684 & (v1103 ^ ((v1103 & v1678) >> 1))) >> v1443);
          v1564 = ((v1643 & (v474 ^ ((v1678 & v474) >> 1))) << v467) + ((v1684 & (v474 ^ ((v1678 & v474) >> 1))) >> v1443);
          v1554 = ((v1643 & v1553) << v1692) | ((v436 & v1553) >> v1667);
          v1532 = ((v1643 & v1164) << v1692) + ((v436 & v1164) >> v1443);
          v1537 = ((v1671 & v1684) >> v1667) + ((v1671 & v1687) << v1692);
          v553 = ((v1643 & v1169) << v467) + ((v436 & v1169) >> v1667);
          v1481 = ((v1643 & v1241) << v467) + ((v436 & v1241) >> v1667);
          v1456 = ((v1684 & (v446 ^ ((v1676 & v446) >> 1))) >> v1443) ^ ((v1687 & (v446 ^ ((v1676 & v446) >> 1))) << v1692);
          v1434 = ((v1687 & (v1004 ^ ((v1676 & v1004) >> 1))) << v1692) | ((v436 & (v1004 ^ ((v1676 & v1004) >> 1))) >> v1667);
          v1440 = ((v1687 & v1439) << v467) | ((v436 & v1439) >> v1667);
          v554 = (v1684 & v1221) >> v1443;
          v555 = (v1643 & v1221) << v467;
          v556 = v554 & 0x10;
          if ((v554 & 0x10 & v555) != 0)
          {
            v556 = -v556;
          }

          v557 = (v556 + v555) ^ v554 & 0xFFFFFFEF;
          v558 = ((v1684 & v1217) >> v1443) ^ ((v1687 & v1217) << v1692);
          v559 = ((v1643 & v1210) << v1692) | ((v1684 & v1210) >> v1443);
          v560 = ((v1643 & v1206) << v467) ^ ((v436 & v1206) >> v1667);
          v561 = ((v1687 & v1202) << v467) + ((v436 & v1202) >> v1443);
          v562 = ((v1687 & v1198) << v1692) ^ ((v436 & v1198) >> v1443);
          v563 = ((v1643 & v1194) << v1692) + ((v436 & v1194) >> v1667);
          v564 = ((v1687 & (v1066 ^ ((v1676 & v1066) >> 1))) << v467) + ((v436 & (v1066 ^ ((v1676 & v1066) >> 1))) >> v1667);
          v565 = v436;
          v566 = ((v1643 & v1187) << v467) | ((v436 & v1187) >> v1443);
          v987 = v467;
          v1418 = v565;
          v567 = ((v1643 & v1179) << v1692) | ((v565 & v1179) >> v1443);
          v568 = ((v1643 & (v1078 ^ ((v1678 & v1078) >> 1))) << v467) | ((v565 & (v1078 ^ ((v1678 & v1078) >> 1))) >> v1443);
          v1650 = (v546 ^ HIWORD(v546)) - v545 + ((v546 ^ HIWORD(v546)) >> 8);
          v569 = -1629022111 * v1650 - ((-1629022111 * v1650) >> 16);
          v1672 = v569 + v1694 + (v569 >> 8);
          v1651 = v1477 + v1694 + v569 + (v569 >> 8);
          v570 = v1225;
          if (v1672)
          {
            v571 = v1225;
          }

          else
          {
            v571 = ((v1643 & v1183) << v467) + ((v1684 & v1183) >> v1667);
          }

          v1222 = v571;
          if (v1672)
          {
            v570 = v568;
          }

          v1226 = v570;
          if (v1672)
          {
            v572 = ((v1643 & v1183) << v467) + ((v1684 & v1183) >> v1667);
          }

          else
          {
            v572 = v567;
          }

          v1203 = v572;
          if (v1672)
          {
            v573 = v567;
          }

          else
          {
            v573 = v568;
          }

          v1195 = v573;
          if (v1672)
          {
            v574 = v566;
          }

          else
          {
            v574 = v543;
          }

          v1207 = v574;
          if (v1672)
          {
            v575 = v564;
          }

          else
          {
            v575 = v566;
          }

          v1218 = v575;
          if (v1672)
          {
            v576 = v563;
          }

          else
          {
            v576 = v564;
          }

          v1191 = v576;
          if (v1672)
          {
            v577 = v543;
          }

          else
          {
            v577 = v563;
          }

          v1199 = v577;
          if (v1672)
          {
            v578 = ((v1643 & v1210) << v1692) | ((v1684 & v1210) >> v1443);
          }

          else
          {
            v578 = v560;
          }

          v1214 = v578;
          if (v1672)
          {
            v579 = v560;
          }

          else
          {
            v579 = v561;
          }

          v1211 = v579;
          if (v1672)
          {
            v580 = v562;
          }

          else
          {
            v580 = v559;
          }

          v1152 = v580;
          if (v1672)
          {
            v581 = v561;
          }

          else
          {
            v581 = v562;
          }

          v1136 = v581;
          if (v1672)
          {
            v582 = ((v1684 & (v1026 ^ ((v1676 & v1026) >> 1))) >> v1443) + ((v1687 & (v1026 ^ ((v1676 & v1026) >> 1))) << v1692);
          }

          else
          {
            v582 = v557;
          }

          v1242 = v582;
          if (v1672)
          {
            v583 = ((v1643 & (v1032 ^ ((v1678 & v1032) >> 1))) << v1692) + ((v1684 & (v1032 ^ ((v1678 & v1032) >> 1))) >> v1443);
          }

          else
          {
            v583 = ((v1684 & (v1026 ^ ((v1676 & v1026) >> 1))) >> v1443) + ((v1687 & (v1026 ^ ((v1676 & v1026) >> 1))) << v1692);
          }

          v1165 = v583;
          if (v1672)
          {
            v584 = v558;
          }

          else
          {
            v584 = ((v1643 & (v1032 ^ ((v1678 & v1032) >> 1))) << v1692) + ((v1684 & (v1032 ^ ((v1678 & v1032) >> 1))) >> v1443);
          }

          v1025 = v584;
          if (v1672)
          {
            v585 = v557;
          }

          else
          {
            v585 = v558;
          }

          v1129 = v585;
          v586 = v1121;
          if (v1672)
          {
            v587 = v1233;
          }

          else
          {
            v587 = v1121;
          }

          v1018 = v587;
          v588 = v1229;
          if ((v1672 & 1) == 0)
          {
            v586 = v1229;
          }

          v1020 = v586;
          v589 = v1237;
          if ((v1672 & 1) == 0)
          {
            v588 = v1237;
          }

          v1014 = v588;
          if ((v1672 & 1) == 0)
          {
            v589 = v1233;
          }

          v1234 = v589;
          v590 = v1124;
          if (v1672)
          {
            v591 = v1124;
          }

          else
          {
            v591 = v549;
          }

          v1023 = v591;
          if (v1672)
          {
            v592 = v549;
          }

          else
          {
            v592 = v1409;
          }

          v1238 = v592;
          if (v1672)
          {
            v590 = v1405;
          }

          v1016 = v590;
          if (v1672)
          {
            v593 = v1409;
          }

          else
          {
            v593 = v1405;
          }

          v1410 = v593;
          v1063 = v1485 ^ v1118;
          v1069 = v1487 ^ v1146;
          v1071 = v552;
          if (v1672)
          {
            v594 = v1485 ^ v1118;
          }

          else
          {
            v594 = v552;
          }

          if (v1672)
          {
            v595 = v1657;
          }

          else
          {
            v595 = v1485 ^ v1118;
          }

          if (v1672)
          {
            v596 = v552;
          }

          else
          {
            v596 = v1487 ^ v1146;
          }

          if (v1672)
          {
            v597 = v1487 ^ v1146;
          }

          else
          {
            v597 = v1657;
          }

          v1067 = v551;
          if (v1672)
          {
            v598 = v551;
          }

          else
          {
            v598 = v1545;
          }

          v1188 = v598;
          if (v1672)
          {
            v599 = v1545;
          }

          else
          {
            v599 = ((v1643 & v1088) << v467) ^ ((v1684 & v1088) >> v1443);
          }

          if (v1672)
          {
            v600 = v1573;
          }

          else
          {
            v600 = v1541;
          }

          if (v1672)
          {
            v601 = v1541;
          }

          else
          {
            v601 = v551;
          }

          if (v1672)
          {
            v602 = v1654;
          }

          else
          {
            v602 = v1645;
          }

          v1065 = v553;
          if (v1672)
          {
            v603 = v1645;
          }

          else
          {
            v603 = v553;
          }

          if (v1672)
          {
            v604 = v1509;
          }

          else
          {
            v604 = v1654;
          }

          if (v1672)
          {
            v605 = v553;
          }

          else
          {
            v605 = v1509;
          }

          if (v1672)
          {
            v606 = v1549;
          }

          else
          {
            v606 = v1564;
          }

          if (v1672)
          {
            v607 = v1582;
          }

          else
          {
            v607 = v1559;
          }

          if (v1672)
          {
            v608 = v1559;
          }

          else
          {
            v608 = v1549;
          }

          if (v1672)
          {
            v609 = v1564;
          }

          else
          {
            v609 = v1582;
          }

          v610 = v1490;
          if (v1672)
          {
            v611 = v1490;
          }

          else
          {
            v611 = v1554;
          }

          if (v1672)
          {
            v610 = v1495;
          }

          v1176 = v610;
          if (v1672)
          {
            v612 = v1647;
          }

          else
          {
            v612 = v1495;
          }

          if (v1672)
          {
            v613 = v1554;
          }

          else
          {
            v613 = v1647;
          }

          if (v1672)
          {
            v614 = v1518;
          }

          else
          {
            v614 = v1500;
          }

          v1180 = v614;
          if (v1672)
          {
            v615 = v1513;
          }

          else
          {
            v615 = v1518;
          }

          if (v1672)
          {
            v616 = v1500;
          }

          else
          {
            v616 = v1587;
          }

          if (v1672)
          {
            v617 = v1587;
          }

          else
          {
            v617 = v1513;
          }

          if (v1672)
          {
            v618 = ((v1098 & v1684) >> v1667) | ((v1098 & v1687) << v1692);
          }

          else
          {
            v618 = v1532;
          }

          v619 = v1453;
          if (v1672)
          {
            v620 = v1453;
          }

          else
          {
            v620 = v1464;
          }

          if (v1672)
          {
            v619 = v1532;
          }

          v1173 = v619;
          if (v1672)
          {
            v621 = v1464;
          }

          else
          {
            v621 = ((v1098 & v1684) >> v1667) | ((v1098 & v1687) << v1692);
          }

          v622 = ((v1643 & (v1103 ^ ((v1103 & v1678) >> 1))) << v1692) + ((v1684 & (v1103 ^ ((v1103 & v1678) >> 1))) >> v1443);
          v623 = v1537;
          if (v1672)
          {
            v624 = ((v1643 & (v1103 ^ ((v1103 & v1678) >> 1))) << v1692) + ((v1684 & (v1103 ^ ((v1103 & v1678) >> 1))) >> v1443);
          }

          else
          {
            v624 = v1537;
          }

          v1184 = v624;
          if (v1672)
          {
            v622 = v1469;
          }

          v1115 = v622;
          v625 = v1447;
          if ((v1672 & 1) == 0)
          {
            v623 = v1447;
          }

          v1112 = v623;
          if ((v1672 & 1) == 0)
          {
            v625 = v1469;
          }

          v1125 = v625;
          v626 = v1474;
          v627 = v1523;
          if (v1672)
          {
            v628 = v1474;
          }

          else
          {
            v628 = v1523;
          }

          v1147 = v628;
          if (v1672)
          {
            v626 = v1456;
          }

          v1122 = v626;
          v629 = v1440;
          if ((v1672 & 1) == 0)
          {
            v627 = v1440;
          }

          v1119 = v627;
          if ((v1672 & 1) == 0)
          {
            v629 = v1456;
          }

          v1010 = v629;
          v630 = v1527;
          if (v1672)
          {
            v631 = v1481;
          }

          else
          {
            v631 = v1527;
          }

          v1230 = v631;
          v632 = v1434;
          if (v1672)
          {
            v633 = v1460;
          }

          else
          {
            v633 = v1434;
          }

          if ((v1672 & 1) == 0)
          {
            v632 = v1481;
          }

          v1406 = v632;
          if ((v1672 & 1) == 0)
          {
            v630 = v1460;
          }

          if ((v1672 & 2) != 0)
          {
            v634 = v594;
          }

          else
          {
            v634 = v597;
          }

          if ((v1672 & 2) != 0)
          {
            v635 = v597;
          }

          else
          {
            v635 = v594;
          }

          v1021 = v635;
          if ((v1672 & 2) != 0)
          {
            v636 = v596;
          }

          else
          {
            v636 = v595;
          }

          if ((v1672 & 2) != 0)
          {
            v637 = v595;
          }

          else
          {
            v637 = v596;
          }

          v1013 = v637;
          if ((v1672 & 2) != 0)
          {
            v638 = v601;
          }

          else
          {
            v638 = v599;
          }

          if ((v1672 & 2) != 0)
          {
            v639 = v599;
          }

          else
          {
            v639 = v601;
          }

          v1031 = v639;
          v1033 = v638;
          if ((v1672 & 2) != 0)
          {
            v640 = v1188;
          }

          else
          {
            v640 = v600;
          }

          v1027 = v634;
          v1029 = v640;
          if ((v1672 & 2) != 0)
          {
            v641 = v600;
          }

          else
          {
            v641 = v1188;
          }

          if ((v1672 & 2) != 0)
          {
            v642 = v604;
          }

          else
          {
            v642 = v603;
          }

          if ((v1672 & 2) != 0)
          {
            v643 = v603;
          }

          else
          {
            v643 = v604;
          }

          v1045 = v643;
          if ((v1672 & 2) != 0)
          {
            v644 = v602;
          }

          else
          {
            v644 = v605;
          }

          v1041 = v642;
          v1043 = v644;
          if ((v1672 & 2) != 0)
          {
            v645 = v605;
          }

          else
          {
            v645 = v602;
          }

          v1035 = v641;
          v1037 = v645;
          if ((v1672 & 2) != 0)
          {
            v646 = v606;
          }

          else
          {
            v646 = v607;
          }

          if ((v1672 & 2) != 0)
          {
            v647 = v607;
          }

          else
          {
            v647 = v606;
          }

          v1039 = v647;
          if ((v1672 & 2) != 0)
          {
            v648 = v609;
          }

          else
          {
            v648 = v608;
          }

          v1047 = v648;
          if ((v1672 & 2) != 0)
          {
            v649 = v608;
          }

          else
          {
            v649 = v609;
          }

          v1061 = v649;
          if ((v1672 & 2) != 0)
          {
            v650 = v611;
          }

          else
          {
            v650 = v612;
          }

          v1075 = v650;
          if ((v1672 & 2) != 0)
          {
            v651 = v612;
          }

          else
          {
            v651 = v611;
          }

          v1077 = v651;
          if ((v1672 & 2) != 0)
          {
            v652 = v613;
          }

          else
          {
            v652 = v1176;
          }

          v1079 = v652;
          if ((v1672 & 2) != 0)
          {
            v653 = v1176;
          }

          else
          {
            v653 = v613;
          }

          v1073 = v653;
          if ((v1672 & 2) != 0)
          {
            v654 = v616;
          }

          else
          {
            v654 = v615;
          }

          v1081 = v654;
          if ((v1672 & 2) != 0)
          {
            v655 = v615;
          }

          else
          {
            v655 = v616;
          }

          v1083 = v655;
          if ((v1672 & 2) != 0)
          {
            v656 = v617;
          }

          else
          {
            v656 = v1180;
          }

          v1086 = v656;
          if ((v1672 & 2) != 0)
          {
            v657 = v1180;
          }

          else
          {
            v657 = v617;
          }

          v1089 = v657;
          if ((v1672 & 2) != 0)
          {
            v658 = v620;
          }

          else
          {
            v658 = v618;
          }

          v1101 = v658;
          if ((v1672 & 2) != 0)
          {
            v659 = v618;
          }

          else
          {
            v659 = v620;
          }

          v1099 = v659;
          if ((v1672 & 2) != 0)
          {
            v660 = v621;
          }

          else
          {
            v660 = v1173;
          }

          v1094 = v660;
          if ((v1672 & 2) != 0)
          {
            v661 = v1173;
          }

          else
          {
            v661 = v621;
          }

          v1092 = v661;
          if ((v1672 & 2) != 0)
          {
            v662 = v1195;
          }

          else
          {
            v662 = v1222;
          }

          v1170 = v662;
          if ((v1672 & 2) != 0)
          {
            v663 = v1222;
          }

          else
          {
            v663 = v1195;
          }

          v1181 = v663;
          if ((v1672 & 2) != 0)
          {
            v664 = v1226;
          }

          else
          {
            v664 = v1203;
          }

          v1174 = v664;
          if ((v1672 & 2) != 0)
          {
            v665 = v1203;
          }

          else
          {
            v665 = v1226;
          }

          v1177 = v665;
          if ((v1672 & 2) != 0)
          {
            v666 = v1112;
          }

          else
          {
            v666 = v1115;
          }

          v1096 = v666;
          if ((v1672 & 2) != 0)
          {
            v667 = v1115;
          }

          else
          {
            v667 = v1112;
          }

          v1110 = v667;
          if ((v1672 & 2) != 0)
          {
            v668 = v1125;
          }

          else
          {
            v668 = v1184;
          }

          v1113 = v668;
          if ((v1672 & 2) != 0)
          {
            v669 = v1184;
          }

          else
          {
            v669 = v1125;
          }

          v1104 = v669;
          if ((v1672 & 2) != 0)
          {
            v670 = v1191;
          }

          else
          {
            v670 = v1207;
          }

          v1196 = v670;
          if ((v1672 & 2) != 0)
          {
            v671 = v1207;
          }

          else
          {
            v671 = v1191;
          }

          v1189 = v671;
          if ((v1672 & 2) != 0)
          {
            v672 = v1218;
          }

          else
          {
            v672 = v1199;
          }

          v1185 = v672;
          if ((v1672 & 2) != 0)
          {
            v673 = v1199;
          }

          else
          {
            v673 = v1218;
          }

          v1192 = v673;
          if ((v1672 & 2) != 0)
          {
            v674 = v1119;
          }

          else
          {
            v674 = v1122;
          }

          v1126 = v674;
          if ((v1672 & 2) != 0)
          {
            v675 = v1122;
          }

          else
          {
            v675 = v1119;
          }

          v1120 = v675;
          if ((v1672 & 2) != 0)
          {
            v676 = v1010;
          }

          else
          {
            v676 = v1147;
          }

          v1116 = v676;
          if ((v1672 & 2) != 0)
          {
            v677 = v1147;
          }

          else
          {
            v677 = v1010;
          }

          v1123 = v677;
          if ((v1672 & 2) != 0)
          {
            v678 = v1214;
          }

          else
          {
            v678 = v1136;
          }

          v1200 = v678;
          if ((v1672 & 2) != 0)
          {
            v679 = v1136;
          }

          else
          {
            v679 = v1214;
          }

          v1208 = v679;
          if ((v1672 & 2) != 0)
          {
            v680 = v1152;
          }

          else
          {
            v680 = v1211;
          }

          v1204 = v680;
          if ((v1672 & 2) != 0)
          {
            v681 = v1211;
          }

          else
          {
            v681 = v1152;
          }

          v1212 = v681;
          if ((v1672 & 2) != 0)
          {
            v682 = v1230;
          }

          else
          {
            v682 = v633;
          }

          v1137 = v682;
          if ((v1672 & 2) != 0)
          {
            v683 = v633;
          }

          else
          {
            v683 = v1230;
          }

          v1133 = v683;
          if ((v1672 & 2) != 0)
          {
            v684 = v1129;
          }

          else
          {
            v684 = v1165;
          }

          v1223 = v684;
          if ((v1672 & 2) != 0)
          {
            v685 = v1165;
          }

          else
          {
            v685 = v1129;
          }

          v1231 = v685;
          if ((v1672 & 2) != 0)
          {
            v686 = v630;
          }

          else
          {
            v686 = v1406;
          }

          v1130 = v686;
          if ((v1672 & 2) != 0)
          {
            v687 = v1406;
          }

          else
          {
            v687 = v630;
          }

          v1148 = v687;
          if ((v1672 & 2) != 0)
          {
            v688 = v1014;
          }

          else
          {
            v688 = v1018;
          }

          v1166 = v688;
          if ((v1672 & 2) != 0)
          {
            v689 = v1018;
          }

          else
          {
            v689 = v1014;
          }

          v1215 = v689;
          if ((v1672 & 2) != 0)
          {
            v690 = v1234;
          }

          else
          {
            v690 = v1020;
          }

          v1153 = v690;
          if ((v1672 & 2) != 0)
          {
            v691 = v1020;
          }

          else
          {
            v691 = v1234;
          }

          v1219 = v691;
          if ((v1672 & 2) != 0)
          {
            v692 = v1025;
          }

          else
          {
            v692 = v1242;
          }

          v1227 = v692;
          if ((v1672 & 2) != 0)
          {
            v693 = v1242;
          }

          else
          {
            v693 = v1025;
          }

          v1235 = v693;
          if ((v1672 & 2) != 0)
          {
            v694 = v1238;
          }

          else
          {
            v694 = v1016;
          }

          v1243 = v694;
          if ((v1672 & 2) != 0)
          {
            v695 = v1016;
          }

          else
          {
            v695 = v1238;
          }

          v1407 = v695;
          if ((v1672 & 2) != 0)
          {
            v696 = v1023;
          }

          else
          {
            v696 = v1410;
          }

          v1239 = v696;
          if ((v1672 & 2) != 0)
          {
            v697 = v1410;
          }

          else
          {
            v697 = v1023;
          }

          v1411 = v697;
          v698 = v1051;
          if (v1651)
          {
            v699 = v1055;
          }

          else
          {
            v699 = v1051;
          }

          if (v1651)
          {
            v700 = v1059;
          }

          else
          {
            v698 = v1057;
            v700 = v1055;
          }

          if (v1651)
          {
            v701 = v1057;
          }

          else
          {
            v701 = v1059;
          }

          if ((v1651 & 2) != 0)
          {
            v702 = v698;
          }

          else
          {
            v702 = v700;
          }

          if ((v1651 & 2) != 0)
          {
            v698 = v700;
          }

          v703 = v1248 & 0x1C28567A ^ 0x3850ACF4;
          v704 = v1577 & 0x1C28567A ^ 0x3850ACF4;
          v705 = v1643 & v704;
          v706 = v1053 ^ v1049;
          v707 = v1053 ^ v1049 ^ (((v1643 & v704) << v987) | ((v1684 & v704) >> v1443)) ^ v1430 ^ v1013 ^ v698;
          if ((v1651 & 2) != 0)
          {
            v708 = v701;
          }

          else
          {
            v708 = v699;
          }

          v709 = v1430 ^ v1049 ^ (((v1684 & v703) >> v1443) | ((v1687 & v703) << v987)) ^ v1053 ^ v1021 ^ v708;
          v710 = v706 ^ ((v705 << v1692) + ((v1418 & v704) >> v1667)) ^ v1430 ^ v636 ^ v702;
          v711 = *(v1694 + 4 * BYTE2(v707)) ^ __ROR4__(*(v1694 + 4 * (v706 ^ ((v705 << v1692) + ((v1418 & v704) >> v1667)) ^ v1430 ^ v636 ^ v702)), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v709)), 8);
          if ((v1651 & 2) == 0)
          {
            v699 = v701;
          }

          v712 = v706 ^ (((v1687 & v703) << v1692) | ((v1418 & v703) >> v1667)) ^ v1430 ^ v1027 ^ v699;
          v713 = v711 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v712)), 24);
          v714 = ((v1643 & v1106) << v1692) ^ ((v1418 & v1106) >> v1667);
          v1156 = ((v1643 & v1155) << v1692) ^ ((v1684 & v1155) >> v1667);
          v715 = v1577 & 0x579C4330 ^ 0xAF388661;
          v716 = (v1684 & v715) >> v1443;
          v717 = v1156 ^ v714 ^ (((v1643 & v715) << v1692) + v716) ^ __ROR4__(*(v1694 + 4 * BYTE1(v710)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v707)), 24) ^ __ROR4__(*(v1694 + 4 * v712), 16);
          v718 = v1248 & 0x579C4330 ^ 0xAF388661;
          v719 = v1156 ^ v714 ^ ((v1418 & v718) >> v1667);
          v720 = v719 ^ ((v1687 & v718) << v987) ^ __ROR4__(*(v1694 + 4 * v709), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v707)), 8) ^ *(v1694 + 4 * BYTE2(v712)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v710)), 24);
          v721 = v1156 ^ v714 ^ (v716 | ((v1687 & v715) << v1692)) ^ *(v1694 + 4 * BYTE2(v710)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v712)), 8) ^ __ROR4__(*(v1694 + 4 * v707), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v709)), 24) ^ v1029;
          v722 = (((v1643 & v1141) << v1692) + ((v1684 & v1141) >> v1443)) ^ (((v1684 & v1143) >> v1443) + ((v1687 & v1143) << v1692));
          v723 = v1248 & 0x3FFEA49C ^ 0x7FFD4939;
          v724 = (v1643 & v723) << v987;
          v725 = v717 ^ *(v1694 + 4 * BYTE2(v709)) ^ v1031 ^ v1651 ^ v1681;
          v726 = v720 ^ v1033;
          v1673 = v1672 + v1477;
          v727 = v719 ^ ((v1643 & v718) << v987) ^ v1035 ^ (v1673 + v713 - v1651);
          v728 = v722 ^ (v724 + ((v1418 & v723) >> v1667)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v721)), 24) ^ *(v1694 + 4 * ((v720 ^ v1033) >> 16)) ^ __ROR4__(*(v1694 + 4 * v725), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v727)), 8);
          v729 = v1577 & 0x3FFEA49C ^ 0x7FFD4939;
          v730 = (v1687 & v729) << v1692;
          v731 = v722 ^ (((v1684 & v729) >> v1443) + v730) ^ __ROR4__(*(v1694 + 4 * v721), 16) ^ __ROR4__(*(v1694 + 4 * ((v720 ^ v1033) >> 24)), 24) ^ *(v1694 + 4 * BYTE2(v727)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v725)), 8);
          v732 = v722 ^ ((v1418 & v729) >> v1667) ^ v730 ^ __ROR4__(*(v1694 + 4 * BYTE1(v721)), 8) ^ __ROR4__(*(v1694 + 4 * v726), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v727)), 24);
          v733 = v722 ^ ((v1684 & v723) >> v1443) ^ v724 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v725)), 24) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v726)), 8) ^ __ROR4__(*(v1694 + 4 * v727), 16);
          v734 = ((v1687 & v1108) << v987) + ((v1418 & v1108) >> v1667);
          v735 = v728 ^ v1037;
          v736 = v1248 & 0x1637497C ^ 0x2C6E92F8;
          v737 = v733 ^ *(v1694 + 4 * BYTE2(v721)) ^ v1041;
          v738 = v731 ^ v1045;
          v739 = v732 ^ *(v1694 + 4 * BYTE2(v725)) ^ v1043;
          v740 = v714 ^ v734 ^ (((v1687 & v736) << v987) + ((v1418 & v736) >> v1667)) ^ v1039 ^ __ROR4__(*(v1694 + 4 * ((v728 ^ v1037) >> 24)), 24) ^ __ROR4__(*(v1694 + 4 * (v733 ^ *(v1694 + 4 * BYTE2(v721)) ^ v1041)), 16) ^ *(v1694 + 4 * ((v731 ^ v1045) >> 16)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v739)), 8);
          v741 = v1577 & 0x1637497C ^ 0x2C6E92F8;
          v742 = v714 ^ v734 ^ (((v1643 & v741) << v1692) | ((v1684 & v741) >> v1443)) ^ v1047 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v738)), 24) ^ *(v1694 + 4 * BYTE2(v739)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v737)), 8) ^ __ROR4__(*(v1694 + 4 * (v728 ^ v1037)), 16);
          v743 = v714 ^ v734 ^ ((v1418 & v741) >> v1667) ^ ((v1687 & v741) << v1692) ^ v646 ^ __ROR4__(*(v1694 + 4 * v738), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v739)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v735)), 8);
          v744 = v1447 ^ v1453 ^ v1509 ^ v1434 ^ v1440 ^ v1063 ^ v1490 ^ v1464 ^ v1545 ^ v1495 ^ v1541 ^ v1469 ^ v1456 ^ v1518 ^ v1500 ^ v1513 ^ v1573 ^ v1460 ^ v1474 ^ v1549 ^ v1559 ^ v1504 ^ v1564 ^ v1554 ^ v1532 ^ v1065 ^ v1481 ^ v1582 ^ v1645 ^ v1523 ^ v1069 ^ v1537 ^ v1067 ^ v1657 ^ v1071 ^ v1568 ^ v1527 ^ v1654 ^ v1647 ^ v1587;
          v745 = ((v1245 & v1684) >> v1443) + ((v1245 & v1687) << v987);
          v746 = ((v1247 & v1643) << v1692) + ((v1247 & v1418) >> v1667);
          v747 = (((v1643 & v736) << v987) + ((v1684 & v736) >> v1443)) ^ v734 ^ v714 ^ v745 ^ v746 ^ v744 ^ v1061 ^ __ROR4__(*(v1694 + 4 * BYTE1(v738)), 8) ^ *(v1694 + 4 * BYTE2(v735)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v737)), 24) ^ __ROR4__(*(v1694 + 4 * v739), 16);
          v748 = v1430 ^ (((v1687 & v1139) << v1692) + ((v1418 & v1139) >> v1667));
          v749 = v743 ^ *(v1694 + 4 * BYTE2(v737));
          v750 = v748 ^ v1073 ^ __ROR4__(*(v1694 + 4 * v747), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v749)), 8) ^ *(v1694 + 4 * BYTE2(v742)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v740)), 24);
          v751 = v1248 & 0x3E98DF0A ^ 0x7D31BE14;
          v752 = (v1418 & v751) >> v1667;
          v753 = v748 ^ (((v1643 & v751) << v987) | v752) ^ v1075 ^ *(v1694 + 4 * BYTE2(v740)) ^ __ROR4__(*(v1694 + 4 * v749), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v742)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v747)), 24);
          v754 = v748 ^ v752 ^ ((v1687 & v751) << v987) ^ v1077 ^ *(v1694 + 4 * BYTE2(v749)) ^ __ROR4__(*(v1694 + 4 * v740), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v742)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v747)), 8);
          v755 = v1577 & 0x3E98DF0A ^ 0x7D31BE14;
          v756 = (v1684 & v755) >> v1443;
          v757 = v748 ^ (((v1643 & v755) << v1692) | v756) ^ v1079 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v749)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v740)), 8) ^ __ROR4__(*(v1694 + 4 * v742), 16);
          v758 = v734 ^ (((v1687 & v1158) << v987) | ((v1418 & v1158) >> v1667));
          v759 = v1577 & 0x443535B8 ^ 0x886A6B71;
          v760 = (v1684 & v759) >> v1667;
          v761 = v1687 & v759;
          v762 = ((v756 + ((v1687 & v755) << v1692)) ^ -(v756 + ((v1687 & v755) << v1692)) ^ (v750 - (v750 ^ (v756 + ((v1687 & v755) << v1692))))) + v750;
          v763 = v758 ^ ((v1687 & v759) << v987) ^ v760 ^ v745 ^ v746 ^ v744 ^ v1081 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v754)), 24) ^ __ROR4__(*(v1694 + 4 * v762), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v753)), 8);
          v764 = v1248 & 0x443535B8 ^ 0x886A6B71;
          v765 = (v1418 & v764) >> v1443;
          v766 = v1643 & v764;
          v767 = v758 ^ v765;
          v768 = v757 ^ *(v1694 + 4 * BYTE2(v747));
          v769 = v767 ^ (v766 << v1692) ^ v1083 ^ __ROR4__(*(v1694 + 4 * BYTE1(v754)), 8) ^ __ROR4__(*(v1694 + 4 * v768), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v753)), 24);
          v770 = v767 ^ (v766 << v987) ^ v1086 ^ __ROR4__(*(v1694 + 4 * BYTE1(v768)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v762)), 24) ^ __ROR4__(*(v1694 + 4 * v753), 16);
          v771 = v758 ^ (v760 + (v761 << v1692)) ^ v1089 ^ *(v1694 + 4 * BYTE2(v753)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v762)), 8) ^ __ROR4__(*(v1694 + 4 * v754), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v768)), 24);
          v772 = v769 ^ *(v1694 + 4 * BYTE2(v762));
          v773 = v770 ^ *(v1694 + 4 * BYTE2(v754));
          v774 = v763 ^ *(v1694 + 4 * BYTE2(v768));
          HIDWORD(v776) = *(v1694 + 4 * BYTE1(v771));
          LODWORD(v776) = HIDWORD(v776);
          v775 = v776 >> 8;
          v777 = *(v1694 + 4 * BYTE2(v772)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v771)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v773)), 8) ^ __ROR4__(*(v1694 + 4 * v774), 16);
          HIDWORD(v776) = *(v1694 + 4 * BYTE1(v772));
          LODWORD(v776) = HIDWORD(v776);
          v778 = v775 ^ __ROR4__(*(v1694 + 4 * v772), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v773)), 24);
          v779 = v1651 ^ v1673 ^ *(v1694 + 4 * BYTE2(v773)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v774)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v772)), 24) ^ __ROR4__(*(v1694 + 4 * v771), 16);
          v1546 = v779;
          v780 = ((v1684 & v1150) >> v1443) + ((v1687 & v1150) << v987);
          v781 = (v776 >> 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v774)), 24) ^ __ROR4__(*(v1694 + 4 * v773), 16) ^ *(v1694 + 4 * BYTE2(v771));
          v1658 = v781;
          v1583 = v1577 & 0x5267B246 ^ 0xA4CF648D;
          v782 = (v1418 & v1583) >> v1443;
          v783 = v1156 ^ (((v1687 & (v1660 ^ ((v1678 & v1660) >> 1))) << v987) + ((v1418 & (v1660 ^ ((v1678 & v1660) >> 1))) >> v1667));
          v784 = v783 ^ (((v1687 & v1583) << v1692) | v782) ^ v1092;
          v785 = (v1687 & v1583) << v987;
          v786 = v785 ^ v782;
          if (!v782)
          {
            v786 = 0;
          }

          v787 = v783 ^ (v786 | v785) ^ v1094 ^ v781;
          v788 = v1577 & 0x78D2D788 ^ 0xF1A5AF11;
          v1655 = (v1643 & v788) << v1692;
          v1574 = (v1418 & v788) >> v1667;
          v789 = v1156 ^ v780;
          v790 = v784 ^ v779;
          v791 = v1156 ^ v780 ^ (v1655 | v1574) ^ v1096 ^ *(v1694 + 4 * BYTE2(v787)) ^ __ROR4__(*(v1694 + 4 * (v784 ^ v779)), 16);
          v1648 = v778 ^ *(v1694 + 4 * BYTE2(v774));
          v1514 = v1248 & 0x5267B246 ^ 0xA4CF648D;
          v792 = (v1684 & v1514) >> v1667;
          v1510 = (v1643 & v1514) << v1692;
          v1528 = v783 ^ v792;
          v793 = v783 ^ v792 ^ v1510 ^ v1099 ^ v1648;
          v1682 = v777 - v1651 + v1681;
          v794 = v783 ^ (((v1643 & v1514) << v987) | v792) ^ v1101 ^ v1682;
          v795 = v791 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v793)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v794)), 8);
          v796 = v1248 & 0x78D2D788 ^ 0xF1A5AF11;
          v1560 = (v1687 & v796) << v987;
          v1550 = (v1684 & v796) >> v1443;
          v797 = v789 ^ (v1550 | v1560) ^ v1104 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v787)), 24) ^ *(v1694 + 4 * BYTE2(v794)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v790)), 8) ^ __ROR4__(*(v1694 + 4 * v793), 16);
          v1555 = (v1684 & v788) >> v1667;
          v798 = v1687 & v788;
          v799 = v789 ^ (v1555 + ((v1687 & v788) << v987)) ^ v1110 ^ *(v1694 + 4 * BYTE2(v790)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v794)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v793)), 8) ^ __ROR4__(*(v1694 + 4 * v787), 16);
          v1524 = (v1418 & v796) >> v1443;
          v1496 = v1643 & v796;
          v800 = v789 ^ (((v1643 & v796) << v1692) + v1524) ^ v1113 ^ __ROR4__(*(v1694 + 4 * BYTE1(v787)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v790)), 24) ^ __ROR4__(*(v1694 + 4 * v794), 16);
          v801 = v1156 ^ (((v1643 & v1160) << v1692) + ((v1684 & v1160) >> v1443));
          v802 = v1577 & 0x1753F09E ^ 0x2EA7E13D;
          v803 = (v1684 & v802) >> v1667;
          v804 = v800 ^ *(v1694 + 4 * BYTE2(v793));
          v805 = v801 ^ (((v1643 & v802) << v1692) + v803) ^ v1116 ^ *(v1694 + 4 * BYTE2(v795)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v797)), 8) ^ __ROR4__(*(v1694 + 4 * v799), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v804)), 24);
          v1491 = v1248 & 0x1753F09E ^ 0x2EA7E13D;
          v806 = (v1418 & v1491) >> v1443;
          v807 = v801 ^ (((v1687 & v1491) << v987) | v806) ^ v1120 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v799)), 24) ^ *(v1694 + 4 * BYTE2(v804)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v795)), 8) ^ __ROR4__(*(v1694 + 4 * v797), 16);
          v1538 = (v1643 & v802) << v987;
          v808 = v801 ^ (v1538 | v803) ^ v1123 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v797)), 24) ^ *(v1694 + 4 * BYTE2(v799)) ^ __ROR4__(*(v1694 + 4 * v795), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v804)), 8);
          v1501 = (v1687 & v1491) << v1692;
          v809 = v801 ^ (v1501 + v806) ^ v1126 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v795)), 24) ^ *(v1694 + 4 * BYTE2(v797)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v799)), 8) ^ __ROR4__(*(v1694 + 4 * v804), 16);
          v810 = ((v1418 & (v1413 ^ ((v1676 & v1413) >> 1)) ^ v1418 & v1162) >> v1443) ^ ((v1643 & (v1413 ^ ((v1676 & v1413) >> 1)) ^ v1687 & v1162) << v987);
          v811 = v1248 & 0x1C8982D2 ^ 0x391305A4;
          v1652 = (v1687 & v811) << v1692;
          v1569 = v1418 & v811;
          v1482 = v810 ^ (v1652 | ((v1418 & v811) >> v1443)) ^ v1130 ^ __ROR4__(*(v1694 + 4 * v805), 16) ^ *(v1694 + 4 * BYTE2(v808)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v807)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v809)), 24);
          v812 = v1577 & 0x1C8982D2 ^ 0x391305A4;
          v1588 = (v1643 & v812) << v987;
          v1542 = v1684 & v812;
          v1578 = (v1418 & v812) >> v1443;
          v1519 = v1687 & v812;
          v1533 = (v1684 & v811) >> v1667;
          v1505 = v1643 & v811;
          v813 = v810 ^ (((v1687 & v812) << v1692) | v1578) ^ v1137 ^ __ROR4__(*(v1694 + 4 * v809), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v808)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v805)), 8) ^ *(v1694 + 4 * BYTE2(v807));
          v1664 = v1660 ^ v1413 ^ v1663;
          v814 = v810 ^ ((v1684 & v812) >> v1667) ^ v1588 ^ v1133 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v805)), 24) ^ *(v1694 + 4 * BYTE2(v809)) ^ __ROR4__(*(v1694 + 4 * v807), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v808)), 8);
          v815 = v810 ^ (((v1643 & v811) << v987) | v1533) ^ v1148 ^ *(v1694 + 4 * BYTE2(v805)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v809)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v807)), 24) ^ __ROR4__(*(v1694 + 4 * v808), 16);
          v1661 = v1664 ^ 0x895E4858 ^ v1153 ^ __ROR4__(*(v1689 + 4 * HIBYTE(v1482)), 16) ^ __ROR4__(*(v1689 + 4 * v814), 8) ^ __ROR4__(*(v1689 + 4 * BYTE2(v813)), 24) ^ *(v1689 + 4 * BYTE1(v815));
          v816 = v783 ^ (v1510 + ((v1418 & v1514) >> v1443)) ^ v1174;
          v817 = v1528 ^ ((v1687 & v1514) << v1692) ^ v1181 ^ v1546;
          v818 = v783 ^ (((v1643 & v1583) << v987) + ((v1418 & v1583) >> v1443)) ^ v1177 ^ v1682;
          v819 = v789 ^ v1574 ^ (v798 << v1692) ^ v1185 ^ *(v1694 + 4 * BYTE2(v818));
          v820 = v783 ^ (((v1684 & v1583) >> v1667) + ((v1687 & v1583) << v987)) ^ v1170 ^ v1658;
          v821 = v789 ^ v1550 ^ (v1496 << v987) ^ v1189 ^ __ROR4__(*(v1694 + 4 * (v1528 ^ ((v1687 & v1514) << v1692) ^ v1181 ^ v1546)), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v818)), 8) ^ *(v1694 + 4 * BYTE2(v820));
          v822 = v816 ^ v1648;
          v823 = v789 ^ (v1560 | v1524) ^ v1192 ^ __ROR4__(*(v1694 + 4 * BYTE1(v820)), 8) ^ __ROR4__(*(v1694 + 4 * v818), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v817)), 24) ^ *(v1694 + 4 * BYTE2(v822));
          v824 = v789 ^ (v1655 | v1555) ^ v1196 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v818)), 24) ^ __ROR4__(*(v1694 + 4 * v820), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v822)), 8) ^ *(v1694 + 4 * BYTE2(v817));
          v825 = v1687 & v802;
          v826 = (v1418 & v802) >> v1667;
          v827 = v821 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v822)), 24);
          v828 = v801 ^ ((v1684 & v1491) >> v1443);
          v829 = v819 ^ __ROR4__(*(v1694 + 4 * BYTE1(v817)), 8) ^ __ROR4__(*(v1694 + 4 * v822), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v820)), 24);
          v830 = v828 ^ ((v1643 & v1491) << v987) ^ v1204 ^ __ROR4__(*(v1694 + 4 * v823), 16) ^ __ROR4__(*(v1694 + 4 * BYTE1(v824)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v827)), 24) ^ *(v1694 + 4 * BYTE2(v829));
          v831 = v828 ^ v1501 ^ v1208 ^ __ROR4__(*(v1694 + 4 * BYTE1(v823)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v829)), 24) ^ *(v1694 + 4 * BYTE2(v824));
          v832 = v801 ^ ((v825 << v1692) + v826) ^ v1200 ^ __ROR4__(*(v1694 + 4 * v824), 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v823)), 24) ^ *(v1694 + 4 * BYTE2(v827)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v829)), 8);
          v833 = v801 ^ (v1538 + v826) ^ v1212 ^ __ROR4__(*(v1694 + 4 * v829), 16) ^ *(v1694 + 4 * BYTE2(v823)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v827)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v824)), 24);
          HIDWORD(v834) = *(v1694 + 4 * v833);
          LODWORD(v834) = HIDWORD(v834);
          v835 = (v834 >> 16) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v832)), 24) ^ *(v1694 + 4 * BYTE2(v830));
          v836 = v1664 ^ 0x895E4858 ^ v1166 ^ __ROR4__(*(v1689 + 4 * HIBYTE(v813)), 16) ^ *(v1689 + 4 * BYTE1(v814)) ^ __ROR4__(*(v1689 + 4 * v1482), 8) ^ __ROR4__(*(v1689 + 4 * BYTE2(v815)), 24);
          v837 = v831 ^ __ROR4__(*(v1694 + 4 * v827), 16);
          v838 = v1664 ^ 0x895E4858 ^ v1215 ^ __ROR4__(*(v1689 + 4 * BYTE2(v1482)), 24) ^ *(v1689 + 4 * BYTE1(v813)) ^ __ROR4__(*(v1689 + 4 * HIBYTE(v814)), 16) ^ __ROR4__(*(v1689 + 4 * v815), 8);
          v839 = v1664 ^ 0x895E4858 ^ v1219 ^ *(v1689 + 4 * BYTE1(v1482)) ^ __ROR4__(*(v1689 + 4 * BYTE2(v814)), 24) ^ __ROR4__(*(v1689 + 4 * v813), 8) ^ __ROR4__(*(v1689 + 4 * HIBYTE(v815)), 16);
          HIDWORD(v834) = *(v1694 + 4 * BYTE1(v837));
          LODWORD(v834) = HIDWORD(v834);
          v840 = v834 >> 8;
          if ((v835 & 0x200000 & v840) != 0)
          {
            v841 = -(v835 & 0x200000);
          }

          else
          {
            v841 = v835 & 0x200000;
          }

          v842 = v1661;
          if (v1673)
          {
            v843 = v1661;
          }

          else
          {
            v843 = v836;
          }

          if (v1673)
          {
            v842 = v838;
            v844 = v839;
          }

          else
          {
            v844 = v838;
          }

          if (v1673)
          {
            v845 = v836;
          }

          else
          {
            v845 = v839;
          }

          v846 = v1682 - 354432079 + (((v1648 ^ (1175119526 - v1546) ^ 0x47AD68A8) + v1658) ^ 0x11FD1F86);
          v847 = v810 ^ ((v1505 << v1692) + (v1569 >> v1667)) ^ v1227 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v837)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v832)), 8) ^ __ROR4__(*(v1694 + 4 * v830), 16) ^ *(v1694 + 4 * BYTE2(v833));
          v848 = v810 ^ (v1588 | v1578) ^ v1235 ^ v835 & 0xFFDFFFFF ^ (v841 + v840);
          v849 = v810 ^ ((v1542 >> v1443) | (v1519 << v987)) ^ v1223 ^ *(v1694 + 4 * BYTE2(v832)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v830)), 8) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v833)), 24) ^ __ROR4__(*(v1694 + 4 * v837), 16);
          v850 = v810 ^ (v1533 + v1652) ^ v1231 ^ __ROR4__(*(v1694 + 4 * BYTE1(v833)), 8) ^ __ROR4__(*(v1694 + 4 * v832), 16) ^ *(v1694 + 4 * BYTE2(v837)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v830)), 24);
          v851 = v1664 ^ 0x66C1EE8B ^ v1239 ^ v846 ^ __ROR4__(*(v1689 + 4 * v850), 8) ^ __ROR4__(*(v1689 + 4 * HIBYTE(v847)), 16) ^ __ROR4__(*(v1689 + 4 * BYTE2(v849)), 24) ^ *(v1689 + 4 * BYTE1(v848));
          v852 = v1664 ^ 0x66C1EE8B ^ v1243 ^ v846 ^ __ROR4__(*(v1689 + 4 * HIBYTE(v850)), 16) ^ *(v1689 + 4 * BYTE1(v849));
          v853 = v1664 ^ 0x66C1EE8B ^ v1407 ^ v846 ^ __ROR4__(*(v1689 + 4 * v847), 8) ^ __ROR4__(*(v1689 + 4 * BYTE2(v848)), 24) ^ *(v1689 + 4 * BYTE1(v850));
          v854 = v1664 ^ 0x66C1EE8B ^ v1411 ^ v846 ^ __ROR4__(*(v1689 + 4 * HIBYTE(v848)), 16) ^ __ROR4__(*(v1689 + 4 * v849), 8) ^ __ROR4__(*(v1689 + 4 * BYTE2(v850)), 24) ^ *(v1689 + 4 * BYTE1(v847));
          v855 = v852 ^ __ROR4__(*(v1689 + 4 * BYTE2(v847)), 24) ^ __ROR4__(*(v1689 + 4 * v848), 8);
          v856 = v853 ^ __ROR4__(*(v1689 + 4 * HIBYTE(v849)), 16);
          if (v1673)
          {
            v857 = v855;
          }

          else
          {
            v857 = v851;
          }

          if (v1673)
          {
            v855 = v854;
            v858 = v856;
          }

          else
          {
            v858 = v854;
          }

          if (v1673)
          {
            v859 = v851;
          }

          else
          {
            v859 = v856;
          }

          if ((v1673 & 2) != 0)
          {
            v860 = v842;
          }

          else
          {
            v860 = v845;
          }

          if ((v1673 & 2) != 0)
          {
            v861 = v855;
          }

          else
          {
            v861 = v859;
          }

          v862 = v846 ^ 0xEF9FA6D3;
          if ((v1673 & 2) != 0)
          {
            v863 = v844;
          }

          else
          {
            v863 = v843;
          }

          v864 = v863 + 1357010125 * ((v861 ^ v860) - (v846 ^ 0xEF9FA6D3));
          if ((v1673 & 2) != 0)
          {
            v842 = v845;
            v865 = v858;
          }

          else
          {
            v865 = v857;
          }

          v866 = v865 ^ v846;
          v867 = v842 + 1673652895 * ((v864 ^ 0xEF9FA6D3) - (v865 ^ v846));
          if ((v1673 & 2) != 0)
          {
            v868 = v843;
          }

          else
          {
            v868 = v844;
          }

          if ((v1673 & 2) != 0)
          {
            v869 = v857;
          }

          else
          {
            v869 = v858;
          }

          if ((v1673 & 2) != 0)
          {
            v855 = v859;
          }

          v870 = v855 ^ v846;
          v871 = v867 ^ v868;
          v872 = v867 ^ v868 ^ v870;
          v873 = v860 ^ (2106889229 * v862) ^ (2106889229 * (v869 ^ 0xEF9FA6D3 ^ v872));
          v874 = v864 ^ v870;
          v875 = v861 ^ v846;
          v876 = v873 ^ v861 ^ v846 ^ v867;
          v877 = (v876 ^ v874) + 604544533 * (v872 - (v869 ^ v846));
          v878 = ((v1643 & v1636) << v987) | v1327;
          v879 = ((v1643 & v1340) << v1692) + v1271;
          v880 = v866 ^ v874 ^ v873 ^ v876 ^ 0xEF9FA6D3;
          v881 = (v871 ^ v876 ^ 0xEF9FA6D3) + 894565163 * (v875 + (v880 ^ 0x1060592C)) + 894565163;
          v882 = v877 + 650391017 * (v862 - (v881 ^ v869));
          v883 = (348629483 * v862) ^ v876 ^ 0xEF9FA6D3 ^ 0xE45A01D0 ^ (348629483 * (v877 ^ v865));
          v884 = v881 ^ 0x224EC601 ^ (((v881 ^ 0x224EC601) & v1678) >> 1);
          v885 = (((v882 ^ 0x6C44240E ^ (((v882 ^ 0x6C44240E) & v1678) >> 1)) & v1684) >> v1443) + (((v882 ^ 0x6C44240E ^ (((v882 ^ 0x6C44240E) & v1678) >> 1)) & v1687) << v987);
          v886 = v880 ^ 0xC32D0B6C ^ (((v880 ^ 0xC32D0B6C) & v1676) >> 1);
          v887 = ((v886 & v1643) << v1692) + ((v886 & v1418) >> v1667);
          v888 = v879 ^ (((v884 & v1687) << v987) + ((v884 & v1684) >> v1443));
          v889 = v887 ^ v879;
          v890 = v885 ^ ((((v883 ^ ((v883 & v1676) >> 1)) & v1418) >> v1667) + (((v883 ^ ((v883 & v1676) >> 1)) & v1643) << v1692));
          v891 = v890 ^ v888;
          v892 = v890 ^ v889;
          v893 = v1487 ^ (v1323 + ((v1687 & v1629) << v987)) ^ v889;
          v894 = v1485 ^ (v1354 >> v1443) ^ (v1359 << v1692) ^ v887 ^ v885 ^ v891;
          v895 = v1487 ^ (v1325 | (v1329 << v1692)) ^ v891;
          v896 = v893 ^ v891 ^ v892;
          v897 = v1485 ^ v878 ^ v892;
          v898 = (v1344 << v987) ^ (v1356 >> v1667) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v896)), 24) ^ *(v1694 + 4 * BYTE2(v895));
          v899 = (v1319 | (v1321 >> v1667)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v895)), 24) ^ *(v1694 + 4 * BYTE2(v897)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v894)), 8) ^ __ROR4__(*(v1694 + 4 * v896), 16);
          v900 = *(v1694 + 4 * BYTE2(v894)) ^ ((v1315 >> v1443) + v1313) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v897)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v896)), 8) ^ __ROR4__(*(v1694 + 4 * v895), 16);
          v901 = (((v1643 & v1626) << v1692) | v1317) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v894)), 24) ^ *(v1694 + 4 * BYTE2(v896)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v895)), 8) ^ __ROR4__(*(v1694 + 4 * (v1485 ^ v878 ^ v892)), 16);
          v902 = v898 ^ __ROR4__(*(v1694 + 4 * BYTE1(v897)), 8) ^ __ROR4__(*(v1694 + 4 * v894), 16);
          v903 = *(v1694 + 4 * BYTE2(v902)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v901)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v899)), 8);
          HIDWORD(v905) = *(v1694 + 4 * v900);
          LODWORD(v905) = HIDWORD(v905);
          v904 = v905 >> 16;
          v906 = v903 & 0x20000000;
          if ((v903 & 0x20000000 & v904) != 0)
          {
            v906 = -v906;
          }

          v907 = v906 + v904;
          v908 = *(v1694 + 4 * HIBYTE(v899));
          v909 = (v1351 << v1692) ^ v1370 ^ (v908 << 8) ^ *(v1694 + 4 * BYTE2(v900));
          v3 = 0;
          v910 = v903 & 0xDFFFFFFF ^ (((v1687 & v1620) << v987) + v1309) ^ v907;
          v911 = ((v1306 << v1692) | v1302) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v902)), 24) ^ *(v1694 + 4 * BYTE2(v899));
          v912 = *(v1694 + 4 * HIBYTE(v900));
          v7 = v1694;
          v913 = *(v1694 + 4 * BYTE2(v901)) ^ (((v1687 & v1624) << v987) + v1304) ^ (v912 << 8) ^ HIBYTE(v912) ^ __ROR4__(*(v1694 + 4 * BYTE1(v902)), 8) ^ __ROR4__(*(v1694 + 4 * v899), 16);
          v914 = v911 ^ __ROR4__(*(v1694 + 4 * BYTE1(v900)), 8) ^ __ROR4__(*(v1694 + 4 * v901), 16);
          v915 = v909 ^ HIBYTE(v908) ^ __ROR4__(*(v1694 + 4 * BYTE1(v901)), 8) ^ __ROR4__(*(v1694 + 4 * v902), 16);
          v916 = *(v1694 + 4 * BYTE2(v915)) ^ (v1268 | (v1273 << v1692));
          v917 = (((v1643 & v1616) << v1692) + v1287) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v913)), 24) ^ *(v1694 + 4 * BYTE2(v910)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v914)), 8) ^ __ROR4__(*(v1694 + 4 * v915), 16);
          v918 = *(v1694 + 4 * HIBYTE(v915));
          v919 = ((v1687 & v1640) << v987) ^ v1374 ^ *(v1694 + 4 * BYTE2(v913)) ^ (v918 << 8) ^ HIBYTE(v918) ^ __ROR4__(*(v1694 + 4 * BYTE1(v910)), 8) ^ __ROR4__(*(v1694 + 4 * v914), 16);
          v920 = ((v1285 << v987) + v1275) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v910)), 24) ^ *(v1694 + 4 * BYTE2(v914)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v915)), 8);
          v921 = v916 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v914)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v913)), 8) ^ __ROR4__(*(v1694 + 4 * v910), 16);
          v922 = *(v1694 + 4 * v913);
          v923 = *(v1694 + 4 * BYTE1(v921));
          v924 = v920 ^ __ROR4__(v922, 16);
          v925 = *(v1694 + 4 * HIBYTE(v924));
          v926 = (v925 >> (BYTE1(v923) & 0x18) >> (BYTE1(v923) & 0x18 ^ 0x18)) | (v925 << 8);
          v927 = (v1346 >> v1667) ^ v1381 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v917)), 24) ^ *(v1694 + 4 * BYTE2(v924)) ^ __ROR4__(v923, 8) ^ __ROR4__(*(v1694 + 4 * v919), 16);
          v928 = *(v1694 + 4 * HIBYTE(v919));
          v929 = (v1262 | ((v1418 & v1612) >> v1443)) ^ HIBYTE(v928) ^ *(v1694 + 4 * BYTE2(v917)) ^ (v928 << 8) ^ __ROR4__(*(v1694 + 4 * BYTE1(v924)), 8) ^ __ROR4__(*(v1694 + 4 * v921), 16);
          v930 = *(v1694 + 4 * BYTE2(v921)) ^ ((v1260 << v1692) + v1256) ^ __ROR4__(*(v1694 + 4 * BYTE1(v919)), 8) ^ v926 ^ __ROR4__(*(v1694 + 4 * v917), 16);
          v931 = *(v1694 + 4 * v924);
          v932 = (v1258 | ((v1684 & v1609) >> v1667)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v921)), 24) ^ *(v1694 + 4 * BYTE2(v919)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v917)), 8) ^ HIWORD(v931);
          v933 = *(v1694 + 4 * BYTE2(v930)) ^ v1377 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v927)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v932)), 8) ^ __ROR4__(*(v1694 + 4 * v929), 16);
          v934 = v932 ^ (v931 << 16);
          v935 = (((v1643 & v1606) << v1692) | v1264) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v929)), 24) ^ *(v1694 + 4 * BYTE2(v927)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v930)), 8) ^ __ROR4__(*(v1694 + 4 * v932), 16);
          v936 = ((v1249 << v987) + ((v1418 & v1604) >> v1667)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v930)), 24) ^ *(v1694 + 4 * BYTE2(v934)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v929)), 8) ^ __ROR4__(*(v1694 + 4 * v927), 16);
          v937 = *(v1694 + 4 * BYTE2(v929)) ^ (v1266 | ((v1684 & v1601) >> v1443)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v934)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v927)), 8) ^ __ROR4__(*(v1694 + 4 * v930), 16);
          v938 = v1390 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v935)), 24) ^ *(v1694 + 4 * BYTE2(v933)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v936)), 8) ^ __ROR4__(*(v1694 + 4 * v937), 16);
          v939 = v1393 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v936)), 24) ^ *(v1694 + 4 * BYTE2(v937)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v935)), 8) ^ __ROR4__(*(v1694 + 4 * v933), 16);
          v940 = *(v1694 + 4 * BYTE2(v935)) ^ (v1311 + ((v1684 & v1598) >> v1443)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v937)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v933)), 8) ^ __ROR4__(*(v1694 + 4 * v936), 16);
          v941 = *(v1694 + 4 * HIBYTE(v933));
          v942 = (((v1687 & v1361) << v1692) + ((v1418 & v1361) >> v1443)) ^ HIBYTE(v941) ^ *(v1694 + 4 * BYTE2(v936)) ^ (v941 << 8) ^ __ROR4__(*(v1694 + 4 * BYTE1(v937)), 8) ^ __ROR4__(*(v1694 + 4 * v935), 16);
          v943 = (v1338 << v987) ^ v1384 ^ *(v1694 + 4 * BYTE2(v942)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v938)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v939)), 8) ^ __ROR4__(*(v1694 + 4 * v940), 16);
          v944 = ((v1251 << v1692) | ((v1418 & v1595) >> v1443)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v942)), 24) ^ *(v1694 + 4 * BYTE2(v939)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v940)), 8) ^ __ROR4__(*(v1694 + 4 * v938), 16);
          v945 = *(v1694 + 4 * BYTE2(v940)) ^ (v1284 | (v1299 << v987)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v939)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v938)), 8) ^ __ROR4__(*(v1694 + 4 * v942), 16);
          v946 = (v1343 << v1692) ^ v1387 ^ *(v1694 + 4 * BYTE2(v938)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v940)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v942)), 8) ^ __ROR4__(*(v1694 + 4 * v939), 16);
          v947 = *(v1694 + 4 * HIBYTE(v943));
          v948 = *(v1694 + 4 * HIBYTE(v944));
          v949 = ((v1296 << v987) + v1281) ^ (v947 << 8) ^ *(v1694 + 4 * BYTE2(v944)) ^ HIBYTE(v947) ^ __ROR4__(*(v1694 + 4 * BYTE1(v945)), 8) ^ __ROR4__(*(v1694 + 4 * v946), 16);
          v950 = (((v1684 & v1348) >> v1443) + v1293) ^ HIBYTE(v948) ^ *(v1694 + 4 * BYTE2(v945)) ^ (v948 << 8) ^ __ROR4__(*(v1694 + 4 * BYTE1(v946)), 8) ^ __ROR4__(*(v1694 + 4 * v943), 16);
          v951 = *(v1694 + 4 * BYTE2(v946));
          v952 = (v1335 << v1692) ^ ((v1684 & v1633) >> v1443) ^ *(v1694 + 4 * BYTE2(v943)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v946)), 24) ^ __ROR4__(*(v1694 + 4 * BYTE1(v944)), 8) ^ __ROR4__(*(v1694 + 4 * v945), 16);
          v953 = ((v1290 << v987) | v1278) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v945)), 24) ^ v951 ^ __ROR4__(*(v1694 + 4 * BYTE1(v943)), 8) ^ __ROR4__(*(v1694 + 4 * v944), 16);
          v954 = v950;
          v955 = (v1332 << v987) ^ v1396 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v949)), 24) ^ *(v1694 + 4 * BYTE2(v950));
          v956 = v1398 ^ ((v1684 & v1365) >> v1443) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v950)), 24) ^ *(v1694 + 4 * BYTE2(v953));
          v8 = v1689;
          v957 = v1403 ^ __ROR4__(*(v1694 + 4 * HIBYTE(v952)), 24) ^ *(v1694 + 4 * BYTE2(v949)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v950)), 8);
          v959 = __ROR4__(__ROR4__(__ROR4__(*(v1694 + 4 * v953), 16) ^ 0xEBBD80E5, 9) ^ 0x72F5DEC0, 23);
          v958 = v957 ^ v959;
          v960 = (v957 ^ v959);
          v961 = v955 ^ __ROR4__(*(v1694 + 4 * BYTE1(v953)), 8) ^ __ROR4__(*(v1694 + 4 * v952), 16);
          v962 = *(v1694 + 4 * v949);
          v963 = (((v1643 & v1592) << v1692) + (v1254 >> v1667)) ^ __ROR4__(*(v1694 + 4 * HIBYTE(v953)), 24) ^ *(v1694 + 4 * BYTE2(v952)) ^ __ROR4__(*(v1694 + 4 * BYTE1(v949)), 8) ^ __ROR4__(*(v1694 + 4 * v954), 16);
          v964 = v956 ^ __ROR4__(*(v1694 + 4 * BYTE1(v952)), 8) ^ __ROR4__(v962, 16);
          v965 = (*(v8 + 4 * BYTE2(v958)) << 8) ^ __ROR4__(*(v1689 + 4 * HIBYTE(v963)), 16) ^ HIBYTE(*(v8 + 4 * BYTE2(v958))) ^ *(v8 + 4 * BYTE1(v961));
          v966 = __ROR4__(*(v1689 + 4 * v964), 8);
          v967 = (v965 ^ v966 ^ -(v965 ^ v966) ^ (v1400 - (v965 ^ v966 ^ v1400))) + v1400;
          v968 = v1420 ^ __ROR4__(*(v1689 + 4 * HIBYTE(v958)), 16) ^ __ROR4__(*(v1689 + 4 * BYTE2(v961)), 24) ^ *(v1689 + 4 * BYTE1(v964)) ^ __ROR4__(*(v1689 + 4 * v963), 8) ^ 0xB1B1F61F;
          v969 = v1485 ^ __ROR4__(*(v1689 + 4 * HIBYTE(v964)), 16) ^ __ROR4__(*(v1689 + 4 * BYTE2(v963)), 24) ^ *(v1689 + 4 * BYTE1(v958)) ^ __ROR4__(*(v1689 + 4 * v961), 8) ^ 0xB1116386 ^ v967;
          v970 = v969 ^ v1420 ^ __ROR4__(*(v1689 + 4 * HIBYTE(v961)), 16) ^ __ROR4__(*(v1689 + 4 * BYTE2(v964)), 24) ^ *(v1689 + 4 * BYTE1(v963)) ^ __ROR4__(*(v1689 + 4 * v960), 8);
          v971 = v967 ^ v968 ^ v970 ^ 0x8427FBDF;
          v972 = v970 ^ 0x8427FBDF ^ v969;
          LOBYTE(v961) = *(*(&off_101353600 + (v1367 ^ 0x4E7A2EA7)) + (BYTE2(v970) ^ 4) - 4);
          *(v1688 + 15) = v961 ^ ((v961 ^ 0xBC) >> 3) ^ ((v961 ^ 0xBC) >> 2) ^ 0x24;
          *(v1688 + 12) = (*(*(&off_101353600 + (v1367 ^ 0x4E7A2F77)) + ((v969 ^ v968) >> 24)) + (((v969 ^ v968) >> 24) ^ 0xCA) + 99) ^ 0x34;
          v973 = *(*(&off_101353600 + v1367 - 1316628648) + (BYTE2(v972) ^ 0x20));
          *(v1688 + 3) = ((v973 >> 3) | (32 * v973)) ^ 0xC7;
          LOBYTE(v973) = *(*(&off_101353600 + (v1367 ^ 0x4E7A2E0A)) + v970 - 8);
          *(v1688 + 14) = v973 ^ 0xA4 ^ (((8 * v973) ^ 0xE8) - 16);
          *(v1688 + 6) = ((v970 ^ 0xFBDF) >> 8) ^ *(*(&off_101353600 + v1367 - 1316629539) + (((v970 ^ 0xFBDF) >> 8) ^ 0x6ALL) - 4) ^ 0x40;
          *(v1688 + 1) = (*(*(&off_101353600 + v1367 - 1316628915) + (HIBYTE(v971) ^ 0x4DLL) - 12) + 91) ^ 0x4A;
          *(v1688 + 2) = ((BYTE2(v971) ^ 0x71) + 72) ^ 0x63 ^ *(*(&off_101353600 + v1367 - 1316629161) + (BYTE2(v971) ^ 0x21) - 12);
          *(v1688 + 11) = v969 ^ v968 ^ 0x47 ^ *(*(&off_101353600 + v1367 - 1316628096) + ((v969 ^ v968) ^ 0xC3) - 12);
          LOBYTE(v970) = *(*(&off_101353600 + (v1367 ^ 0x4E7A29E4)) + (HIBYTE(v970) ^ 0xA1) - 4);
          *(v1688 + 8) = v970 ^ (4 * v970) ^ 9;
          LOBYTE(v970) = *(*(&off_101353600 + (v1367 ^ 0x4E7A29C8)) + (((v969 ^ v968) >> 16) ^ 0xD4) - 8);
          *(v1688 + 13) = v970 ^ (16 * v970) ^ 0xF1;
          *(v1688 + 4) = (*(*(&off_101353600 + v1367 - 1316629572) + (HIBYTE(v972) ^ 0x31) - 8) + (HIBYTE(v972) ^ 0xD6) + (HIBYTE(v972) ^ 0x14)) ^ 0xB7;
          *v1688 = BYTE1(v972) ^ 0xF3 ^ ((BYTE1(v972) ^ 0xF3) + 71) ^ *(*(&off_101353600 + v1367 - 1316629093) + (BYTE1(v972) ^ 0xBLL) - 12) ^ 0x11;
          *(v1688 + 5) = (*(*(&off_101353600 + v1367 - 1316628826) + (v971 ^ 0x92) - 12) - (v971 ^ 0x23)) ^ 0x48;
          *(v1688 + 10) = *(*(&off_101353600 + (v1367 ^ 0x4E7A2F04)) + (BYTE1(v971) ^ 0xCFLL) - 12) ^ 0xF3;
          *(v1688 + 7) = *(*(&off_101353600 + v1367 - 1316629432) + (v972 ^ 0x82) - 4) ^ 0xDF;
          v10 = v1425;
          *(v1688 + 9) = *(*(&off_101353600 + (v1367 ^ 0x4E7A2FA7)) + ((BYTE1(v969) ^ BYTE1(v968)) ^ 0x19) - 8) ^ 0x6F;
          v1 = v1415;
          v6 = v1414;
        }

        v974 = v10 ^ 0xC23874E8;
        (*&v6[8 * (v10 ^ 0xC23874E8)])(v8);
        result = (*&v6[8 * v974])(v7);
      }
    }
  }

  if ((v3 ^ 0xFCDFFF9E) + ((2 * v3) & 0xF9BFFF3C) == -52428898)
  {
    v975 = -143113071;
  }

  else
  {
    v975 = -143113091;
  }

  *(v1 + 16) = v975;
  return result;
}