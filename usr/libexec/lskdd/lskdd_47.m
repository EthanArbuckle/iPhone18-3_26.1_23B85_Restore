uint64_t sub_100CFCFF4()
{
  v1 = STACK[0x3D68] + 1;
  STACK[0x3D68] = v1;
  return (*(v0 + 8 * ((122 * (v1 != STACK[0x3E40])) ^ LODWORD(STACK[0x3D78]))))();
}

uint64_t sub_100CFD0E4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x32B8]) = 0;
  LODWORD(STACK[0x3270]) = 0;
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
  v3 = a1 - 7607;
  LODWORD(STACK[0x3D68]) = v3 + 16858;
  v4 = *(v1 + 8 * (((LODWORD(STACK[0x2C20]) == ((v3 + 16858) ^ 0x5289)) * ((v3 ^ 0x425A) - 20641)) ^ v3));
  LODWORD(STACK[0x3AD8]) = 14;
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x3D58] = STACK[0x2618];
  v5 = STACK[0x3430];
  v6 = STACK[0x3710];
  LODWORD(STACK[0x3E18]) = STACK[0x3710];
  LODWORD(STACK[0x3D40]) = v2;
  LODWORD(STACK[0x3B08]) = v6;
  v7 = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  v8 = STACK[0x3540];
  LODWORD(STACK[0x3808]) = STACK[0x3540];
  LODWORD(STACK[0x32D8]) = v8;
  LODWORD(STACK[0x3860]) = v2;
  LODWORD(STACK[0x3D80]) = v7;
  STACK[0x3D50] = v5;
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3298]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x3850]) = 1;
  LODWORD(STACK[0x3840]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3248]) = 1;
  LODWORD(STACK[0x2B98]) = 1;
  LODWORD(STACK[0x2BA0]) = 1;
  LODWORD(STACK[0x3250]) = 1;
  LODWORD(STACK[0x2BA8]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x3258]) = 1;
  LODWORD(STACK[0x2BD0]) = 1;
  LODWORD(STACK[0x2BD8]) = 1;
  LODWORD(STACK[0x3260]) = 1;
  LODWORD(STACK[0x2BE0]) = 1;
  LODWORD(STACK[0x2BE8]) = 1;
  LODWORD(STACK[0x2BF0]) = 1;
  LODWORD(STACK[0x2BC8]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x32E0]) = STACK[0x3688];
  LODWORD(STACK[0x2C20]) = 23;
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  return v4();
}

uint64_t sub_100CFD2D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unint64_t a54)
{
  LODWORD(STACK[0x3D20]) = 0;
  v57 = (v54 - 2002413244) & 0x775A57DE;
  v58 = (v55 & 1) == 0;
  if ((v55 & 1) == 0)
  {
    a54 = STACK[0x978];
  }

  if (v55)
  {
    v60 = STACK[0x920];
  }

  else
  {
    v60 = STACK[0x10B8];
  }

  if (v58)
  {
    v61 = 4;
  }

  else
  {
    v61 = 1;
  }

  LODWORD(STACK[0x2BB0]) = v61;
  if (v58)
  {
    v62 = STACK[0x2AB8];
  }

  else
  {
    v62 = STACK[0x1BE0];
  }

  v63 = STACK[0x7F0];
  v64 = STACK[0x39C0];
  if (v58)
  {
    v63 = STACK[0x39C0];
  }

  LODWORD(STACK[0x7F0]) = v63;
  v65 = *(v56 + 8 * v54);
  LODWORD(STACK[0x3D98]) = 2;
  STACK[0x3D48] = STACK[0x3D58];
  STACK[0x3D60] = a54;
  STACK[0x3B20] = a54;
  STACK[0x3D88] = v60;
  STACK[0x3CF0] = v60;
  STACK[0x32D0] = a4;
  LODWORD(STACK[0x3AE0]) = STACK[0x12AC];
  LODWORD(STACK[0x3D90]) = v64;
  LODWORD(STACK[0x3CE8]) = v62;
  LODWORD(STACK[0x3268]) = v64;
  LODWORD(STACK[0x3E40]) = v62;
  LODWORD(STACK[0x3D70]) = v62;
  return v65(v57, a2, a3, 1);
}

uint64_t sub_100CFD3A0(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v51 = LODWORD(STACK[0x3E18]) + 6828;
  STACK[0x3298] = v48 >> 8;
  STACK[0x3940] = HIBYTE(LODWORD(STACK[0x32A8]));
  STACK[0x3428] = BYTE1(STACK[0x23B0]);
  STACK[0x36F0] = v49 ^ 0xFFFFFFD5;
  v52 = STACK[0x1AB8];
  *(v52 + 10348) = 0;
  STACK[0x3650] = a4 ^ (v51 - 3337) ^ 0x3Fu;
  v53 = STACK[0x1BE8];
  *(v53 + 1092) = 0u;
  *(v52 + 10356) = 0u;
  *(v53 + 1108) = 0u;
  *(v52 + 10372) = 0u;
  *(v52 + 10388) = 0u;
  *(v52 + 10404) = 0u;
  *(v52 + 10420) = 0u;
  *(v52 + 10436) = 0;
  *(v52 + 10564) = 0u;
  *(v52 + 10580) = 0u;
  *(v52 + 10596) = 0u;
  *(v52 + 10612) = 0u;
  *(v52 + 10628) = 0u;
  *(v53 + 1124) = 0u;
  *(v52 + 10644) = 0u;
  *(v53 + 1140) = 0u;
  v54 = STACK[0x3E40];
  v55 = STACK[0x3E40] & 0x3F;
  STACK[0x3288] = v55 + 3;
  *(v53 + 1156) = 0u;
  STACK[0x3280] = v55 + 5;
  STACK[0x3278] = v55 + 6;
  *(v53 + 1172) = 0u;
  STACK[0x3270] = v55 + 11;
  STACK[0x3268] = v55 + 14;
  *(v53 + 1308) = 0;
  STACK[0x3260] = v55 + 8;
  STACK[0x3258] = v55 + 13;
  *(v53 + 1316) = 0u;
  STACK[0x3250] = v55 + 16;
  STACK[0x3A0] = v55 + 17;
  *(v53 + 1332) = 0u;
  STACK[0x3248] = v55 + 30;
  STACK[0x3230] = v55 + 23;
  *(v53 + 1348) = 0u;
  STACK[0x3228] = v55 + 25;
  STACK[0x2F60] = v55 + 34;
  *(v53 + 1364) = 0u;
  STACK[0x2C10] = v55 + 35;
  *(v53 + 1380) = 0u;
  STACK[0x2C08] = v54 & 0x3F | 0x40;
  *(v53 + 1396) = 0;
  STACK[0x2C00] = v54 & 0x3F | 0x80;
  *STACK[0x3690] = 0;
  *STACK[0x3DB8] = 0;
  *(v53 + 1088) = 0;
  *(v52 + 10444) = 0;
  *(v53 + 1188) = 0;
  *(v52 + 10448) = 0u;
  *(v53 + 1192) = 0;
  *(v53 + 1200) = 0u;
  *(v52 + 10464) = 0u;
  *(v53 + 1216) = 0u;
  *(v52 + 10480) = 0u;
  *(v53 + 1232) = 0u;
  *(v52 + 10496) = 0u;
  *(v53 + 1248) = 0u;
  *(v52 + 10512) = 0u;
  *(v53 + 1264) = 0u;
  *(v52 + 10528) = 0u;
  *(v53 + 1280) = 0u;
  *(v52 + 10544) = 0u;
  *(v53 + 1296) = 0;
  *(v52 + 10560) = 0;
  *(v53 + 1304) = 0;
  *(v52 + 10660) = 0;
  STACK[0x2BF8] = v55 + 38;
  STACK[0x2BF0] = v55 + 41;
  STACK[0x2BE8] = v55 + 39;
  STACK[0x2BE0] = v55 + 42;
  STACK[0x2BD8] = v55 + 46;
  STACK[0x2BD0] = v55 + 54;
  STACK[0x2BC8] = v55 + 53;
  STACK[0x2BC0] = v55 + 56;
  STACK[0x2BB8] = v55 + 59;
  STACK[0x2BB0] = v55 + 61;
  STACK[0x2BA8] = v55 + 66;
  STACK[0x2BA0] = v55 + 67;
  STACK[0x2B98] = v55 + 71;
  STACK[0x2B90] = v55 + 73;
  STACK[0x2B88] = v55 + 80;
  STACK[0x2B80] = v55 + 76;
  STACK[0x2B78] = v55 + 77;
  STACK[0x2B70] = v55 + 81;
  STACK[0x2B68] = v55 + 82;
  STACK[0x2B60] = v55 + 83;
  STACK[0x2B58] = v55 + 87;
  STACK[0x2B50] = v55 + 90;
  STACK[0x2B48] = v55 + 92;
  STACK[0x2B40] = v55 + 97;
  STACK[0x2B38] = v55 + 93;
  STACK[0x2B30] = v55 + 95;
  STACK[0x398] = v55 + 99;
  STACK[0x390] = v55 + 106;
  STACK[0x2B28] = v55 + 108;
  STACK[0x2B20] = v55 + 105;
  STACK[0x2B18] = v55 + 116;
  STACK[0x2B10] = v55 + 117;
  STACK[0x388] = v55 + 119;
  STACK[0x2B08] = v55 + 121;
  STACK[0x380] = v55 + 125;
  STACK[0x378] = v55 + 123;
  STACK[0x370] = v55 + 127;
  STACK[0x2B00] = v55 + 133;
  STACK[0x2AF8] = v55 + 139;
  STACK[0x2AF0] = v55 + 147;
  STACK[0x2AE8] = v55 + 148;
  STACK[0x2AE0] = v55 + 150;
  STACK[0x2AD8] = v55 + 151;
  STACK[0x2AD0] = v55 + 154;
  STACK[0x2AC8] = v55 + 159;
  STACK[0x2AC0] = v55 + 160;
  STACK[0x2AB8] = v55 + 166;
  STACK[0x2AB0] = v55 + 165;
  STACK[0x2AA8] = v55 + 172;
  STACK[0x2AA0] = v55 + 175;
  STACK[0x32A8] = v55 + 181;
  STACK[0x2A98] = v55 + 179;
  STACK[0x368] = v55 + 182;
  STACK[0x23B0] = v55 + 184;
  STACK[0x360] = v55 + 186;
  STACK[0x358] = v55 + 191;
  STACK[0x350] = v55 | 0xC0;
  STACK[0x1BC8] = v55 + 194;
  STACK[0x1BA0] = v55 + 202;
  STACK[0x1698] = v55 + 200;
  STACK[0x348] = v55 + 207;
  STACK[0x918] = v55 + 205;
  STACK[0x340] = v55 + 206;
  STACK[0x338] = v55 + 216;
  STACK[0x910] = v55 + 218;
  STACK[0x330] = v55 + 215;
  STACK[0x328] = v55 + 220;
  STACK[0x908] = v55 + 217;
  STACK[0x900] = v55 + 227;
  STACK[0x320] = v55 + 224;
  STACK[0x8F8] = v55 + 229;
  STACK[0x8F0] = v55 + 233;
  STACK[0x8E8] = v55 + 235;
  STACK[0x8E0] = v55 + 232;
  STACK[0x8D8] = v55 + 234;
  STACK[0x8D0] = v55 + 242;
  STACK[0x8C8] = v55 + 245;
  STACK[0x8C0] = v55 + 248;
  STACK[0x8B8] = v55 + 250;
  STACK[0x8B0] = v55 + 251;
  STACK[0x8A8] = v55 + 252;
  STACK[0x318] = v55 + 153;
  LODWORD(a12) = ((55 - STACK[0x3A28]) & 0x3F) + STACK[0x3A28] + 9;
  HIDWORD(a11) = (STACK[0x3A28] + 9) & 0x3F;
  v56 = *(v50 + 8 * v51);
  STACK[0x38B0] = STACK[0x32B8];
  STACK[0x36E8] = a2;
  STACK[0x3800] = STACK[0x32A0];
  STACK[0x3750] = a7;
  STACK[0x3D60] = STACK[0x2C28];
  STACK[0x3CD0] = v47;
  STACK[0x36E0] = STACK[0x32B0];
  LODWORD(STACK[0x208]) = v54 & 0xFFFFFFC0;
  LODWORD(STACK[0x204]) = (v54 & 0xFFFFFFC0) + 320;
  STACK[0x2C28] = (v54 & 0x3F) + 1;
  STACK[0x8A0] = (v54 & 0x3F) + 2;
  STACK[0x898] = (v54 & 0x3F) + 4;
  STACK[0x890] = (v54 & 0x3F) + 7;
  STACK[0x888] = (v54 & 0x3F) + 9;
  STACK[0x880] = (v54 & 0x3F) + 10;
  STACK[0x878] = (v54 & 0x3F) + 12;
  STACK[0x870] = (v54 & 0x3F) + 15;
  STACK[0x868] = (v54 & 0x3F) + 18;
  STACK[0x860] = (v54 & 0x3F) + 20;
  STACK[0x858] = (v54 & 0x3F) + 21;
  STACK[0x850] = (v54 & 0x3F) + 22;
  STACK[0x848] = (v54 & 0x3F) + 19;
  STACK[0x840] = (v54 & 0x3F) + 24;
  STACK[0x838] = (v54 & 0x3F) + 26;
  STACK[0x830] = (v54 & 0x3F) + 27;
  STACK[0x828] = (v54 & 0x3F) + 28;
  STACK[0x820] = (v54 & 0x3F) + 29;
  STACK[0x818] = (v54 & 0x3F) + 31;
  STACK[0x810] = (v54 & 0x3F) + 32;
  STACK[0x808] = (v54 & 0x3F) + 33;
  STACK[0x800] = (v54 & 0x3F) + 36;
  STACK[0x7F8] = (v54 & 0x3F) + 37;
  STACK[0x7F0] = (v54 & 0x3F) + 40;
  STACK[0x7E8] = (v54 & 0x3F) + 43;
  STACK[0x7E0] = (v54 & 0x3F) + 44;
  STACK[0x7D8] = (v54 & 0x3F) + 45;
  STACK[0x7D0] = (v54 & 0x3F) + 47;
  STACK[0x7C8] = (v54 & 0x3F) + 48;
  STACK[0x7C0] = (v54 & 0x3F) + 49;
  STACK[0x7B8] = (v54 & 0x3F) + 50;
  STACK[0x7B0] = (v54 & 0x3F) + 51;
  STACK[0x7A8] = (v54 & 0x3F) + 52;
  STACK[0x7A0] = (v54 & 0x3F) + 55;
  STACK[0x798] = (v54 & 0x3F) + 57;
  STACK[0x790] = (v54 & 0x3F) + 58;
  STACK[0x788] = (v54 & 0x3F) + 60;
  STACK[0x780] = (v54 & 0x3F) + 62;
  STACK[0x778] = (v54 & 0x3F) + 63;
  STACK[0x770] = (v54 & 0x3F) + 65;
  STACK[0x768] = (v54 & 0x3F) + 68;
  STACK[0x760] = (v54 & 0x3F) + 69;
  STACK[0x758] = (v54 & 0x3F) + 70;
  STACK[0x750] = (v54 & 0x3F) + 72;
  STACK[0x748] = (v54 & 0x3F) + 74;
  STACK[0x740] = (v54 & 0x3F) + 75;
  STACK[0x738] = (v54 & 0x3F) + 78;
  STACK[0x730] = (v54 & 0x3F) + 79;
  STACK[0x728] = (v54 & 0x3F) + 84;
  STACK[0x720] = (v54 & 0x3F) + 85;
  STACK[0x718] = (v54 & 0x3F) + 86;
  STACK[0x710] = (v54 & 0x3F) + 88;
  STACK[0x708] = (v54 & 0x3F) + 89;
  STACK[0x700] = (v54 & 0x3F) + 91;
  STACK[0x6F8] = (v54 & 0x3F) + 94;
  STACK[0x310] = (v54 & 0x3F) + 96;
  STACK[0x6F0] = (v54 & 0x3F) + 98;
  STACK[0x6E8] = (v54 & 0x3F) + 100;
  STACK[0x6E0] = (v54 & 0x3F) + 101;
  STACK[0x308] = (v54 & 0x3F) + 103;
  STACK[0x300] = (v54 & 0x3F) + 102;
  STACK[0x6D8] = (v54 & 0x3F) + 104;
  STACK[0x2F8] = (v54 & 0x3F) + 107;
  STACK[0x6D0] = (v54 & 0x3F) + 109;
  STACK[0x6C8] = (v54 & 0x3F) + 110;
  STACK[0x6C0] = (v54 & 0x3F) + 111;
  STACK[0x2F0] = (v54 & 0x3F) + 112;
  STACK[0x2E8] = (v54 & 0x3F) + 113;
  STACK[0x6B8] = (v54 & 0x3F) + 114;
  STACK[0x6B0] = (v54 & 0x3F) + 115;
  STACK[0x2E0] = (v54 & 0x3F) + 118;
  STACK[0x2D8] = (v54 & 0x3F) + 120;
  STACK[0x6A8] = (v54 & 0x3F) + 122;
  STACK[0x6A0] = (v54 & 0x3F) + 124;
  STACK[0x2D0] = (v54 & 0x3F) + 126;
  STACK[0x2C8] = (v54 & 0x3F) + 129;
  STACK[0x2C0] = (v54 & 0x3F) + 130;
  STACK[0x698] = (v54 & 0x3F) + 131;
  STACK[0x2B8] = (v54 & 0x3F) + 132;
  STACK[0x690] = (v54 & 0x3F) + 134;
  STACK[0x2B0] = (v54 & 0x3F) + 135;
  STACK[0x2A8] = (v54 & 0x3F) + 136;
  STACK[0x2A0] = (v54 & 0x3F) + 137;
  STACK[0x688] = (v54 & 0x3F) + 138;
  STACK[0x298] = (v54 & 0x3F) + 140;
  STACK[0x290] = (v54 & 0x3F) + 141;
  STACK[0x288] = (v54 & 0x3F) + 142;
  STACK[0x680] = (v54 & 0x3F) + 143;
  STACK[0x678] = (v54 & 0x3F) + 144;
  STACK[0x670] = (v54 & 0x3F) + 145;
  STACK[0x668] = (v54 & 0x3F) + 146;
  STACK[0x660] = (v54 & 0x3F) + 149;
  STACK[0x658] = (v54 & 0x3F) + 152;
  STACK[0x280] = (v54 & 0x3F) + 153;
  STACK[0x650] = (v54 & 0x3F) + 155;
  STACK[0x648] = (v54 & 0x3F) + 156;
  STACK[0x640] = (v54 & 0x3F) + 157;
  STACK[0x638] = (v54 & 0x3F) + 158;
  STACK[0x630] = (v54 & 0x3F) + 161;
  STACK[0x628] = (v54 & 0x3F) + 162;
  STACK[0x620] = (v54 & 0x3F) + 163;
  STACK[0x618] = (v54 & 0x3F) + 164;
  STACK[0x610] = (v54 & 0x3F) + 167;
  STACK[0x608] = (v54 & 0x3F) + 168;
  STACK[0x600] = (v54 & 0x3F) + 169;
  STACK[0x5F8] = (v54 & 0x3F) + 170;
  STACK[0x5F0] = (v54 & 0x3F) + 171;
  STACK[0x5E8] = (v54 & 0x3F) + 173;
  STACK[0x5E0] = (v54 & 0x3F) + 174;
  STACK[0x5D8] = (v54 & 0x3F) + 176;
  STACK[0x5D0] = (v54 & 0x3F) + 177;
  STACK[0x5C8] = (v54 & 0x3F) + 178;
  STACK[0x5C0] = (v54 & 0x3F) + 180;
  STACK[0x278] = (v54 & 0x3F) + 183;
  STACK[0x5B8] = (v54 & 0x3F) + 185;
  STACK[0x270] = (v54 & 0x3F) + 187;
  STACK[0x5B0] = (v54 & 0x3F) + 188;
  STACK[0x268] = (v54 & 0x3F) + 189;
  STACK[0x260] = (v54 & 0x3F) + 190;
  STACK[0x5A8] = (v54 & 0x3F) + 193;
  STACK[0x5A0] = (v54 & 0x3F) + 195;
  STACK[0x258] = (v54 & 0x3F) + 196;
  STACK[0x598] = (v54 & 0x3F) + 197;
  STACK[0x250] = (v54 & 0x3F) + 198;
  STACK[0x590] = (v54 & 0x3F) + 199;
  STACK[0x588] = (v54 & 0x3F) + 201;
  STACK[0x580] = (v54 & 0x3F) + 203;
  STACK[0x578] = (v54 & 0x3F) + 204;
  STACK[0x570] = (v54 & 0x3F) + 208;
  STACK[0x568] = (v54 & 0x3F) + 209;
  STACK[0x248] = (v54 & 0x3F) + 210;
  STACK[0x560] = (v54 & 0x3F) + 211;
  STACK[0x240] = (v54 & 0x3F) + 212;
  STACK[0x558] = (v54 & 0x3F) + 213;
  STACK[0x238] = (v54 & 0x3F) + 214;
  STACK[0x230] = (v54 & 0x3F) + 219;
  STACK[0x228] = (v54 & 0x3F) + 221;
  STACK[0x550] = (v54 & 0x3F) + 222;
  STACK[0x548] = (v54 & 0x3F) + 223;
  STACK[0x540] = (v54 & 0x3F) + 225;
  STACK[0x538] = (v54 & 0x3F) + 226;
  STACK[0x220] = (v54 & 0x3F) + 228;
  STACK[0x530] = (v54 & 0x3F) + 231;
  STACK[0x528] = (v54 & 0x3F) + 230;
  STACK[0x520] = (v54 & 0x3F) + 236;
  STACK[0x518] = (v54 & 0x3F) + 237;
  STACK[0x510] = (v54 & 0x3F) + 238;
  STACK[0x508] = (v54 & 0x3F) + 239;
  STACK[0x500] = (v54 & 0x3F) + 240;
  STACK[0x4F8] = (v54 & 0x3F) + 241;
  STACK[0x4F0] = (v54 & 0x3F) + 243;
  STACK[0x4E8] = (v54 & 0x3F) + 244;
  STACK[0x4E0] = (v54 & 0x3F) + 246;
  STACK[0x4D8] = (v54 & 0x3F) + 247;
  STACK[0x4D0] = (v54 & 0x3F) + 249;
  STACK[0x4C8] = (v54 & 0x3F) + 253;
  STACK[0x4C0] = (v54 & 0x3F) + 254;
  STACK[0x4B8] = (v54 & 0x3F) + 255;
  STACK[0x218] = (v54 & 0x3F) + 17;
  STACK[0x32C8] = v54 & 0x3F;
  STACK[0x210] = (v54 & 0x3F) + 125;
  LODWORD(STACK[0x3E38]) = 1;
  return v56(v53 + 1332, a2, v54, v53 + 1308, v53 + 1316, v53, a7, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_100CFDDCC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  LODWORD(STACK[0x3D98]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3D40]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D30]) = 0;
  v56 = a1 ^ 0x3309;
  v57 = (v56 + 15504) | 0x214;
  LODWORD(STACK[0x3D68]) = v57;
  v58 = *(v55 + 8 * (((a55 == (((v56 - 3065) | 0x104E) ^ 0x184F)) * (v57 - 18515)) ^ v56));
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x33E8]) = STACK[0x32D0];
  STACK[0x3D58] = a47;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  return v58();
}

uint64_t sub_100CFDED0@<X0>(uint64_t a1@<X8>)
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
  return (*(v4 + 8 * v1))();
}

uint64_t sub_100CFE3F4()
{
  v2 = *(v1 + 8 * (v0 + 4870));
  LODWORD(STACK[0x3B18]) = 4;
  return v2();
}

void sub_100CFE654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25, void *a26, int *a27)
{
  v39 = *a27;
  v28 = *a27;
  *(v27 - 140) = 1 << a25;
  if (((1 << a25) & v28) != 0)
  {
    v29 = *a26;
    if (a25 == 31)
    {
      LOBYTE(v30) = 0;
    }

    else
    {
      v30 = 57 - (a25 >> 1);
    }

    v31 = *(v27 - 96) << v30;
    while (1)
    {
      v32 = v29;
      if ((v29[1] & 0xFFFFFFFFFFFFFFF8) == *(v27 - 96))
      {
        break;
      }

      v33 = &v29[v31 >> 63];
      v35 = v33[4];
      v34 = v33 + 4;
      v29 = v35;
      v31 *= 2;
      if (!v35)
      {
        v36 = *(v27 - 104);
        *v34 = v36;
        goto LABEL_10;
      }
    }

    v37 = v29[2];
    v38 = *(v27 - 104);
    *(v37 + 24) = v38;
    v32[2] = v38;
    v38[2] = v37;
    v38[3] = v32;
    v38[6] = 0;
  }

  else
  {
    *a27 = *(v27 - 140) | v39;
    v32 = a26;
    v36 = *(v27 - 104);
    *a26 = v36;
LABEL_10:
    v36[6] = v32;
    v36[2] = v36;
    v36[3] = v36;
  }

  JUMPOUT(0x100EE9250);
}

uint64_t sub_100CFE728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x3B08]) = v6 + 3053;
  v8 = *(v7 + 8 * (((LODWORD(STACK[0x2C20]) == ((846 * (v6 ^ 0x46A8)) ^ 0x52D6)) * (v6 - 18086)) ^ v6));
  LODWORD(STACK[0x3980]) = 73;
  v9 = STACK[0x448];
  STACK[0x32E0] = STACK[0x448];
  STACK[0x3D50] = v9;
  STACK[0x3AD8] = v9;
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = STACK[0x1BC8];
  LODWORD(v9) = STACK[0x1A78];
  LODWORD(STACK[0x3298]) = STACK[0x1A78];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  LODWORD(STACK[0x3280]) = STACK[0x1954];
  LODWORD(STACK[0x3290]) = v9;
  LODWORD(STACK[0x3258]) = STACK[0x1A90];
  LODWORD(STACK[0x32D0]) = STACK[0x3830];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3288]) = v9;
  LODWORD(STACK[0x3AE8]) = STACK[0x3E18];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x3260]) = STACK[0x3810];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  return v8(a1, a2, a3, a4, a5, a6, STACK[0x3318]);
}

uint64_t sub_100CFE86C(uint64_t result)
{
  if ((v1 ^ 0xFBE5F0FD) + ((2 * v1) & 0xF7CBE1FA) == -68816643)
  {
    v2 = -143113071;
  }

  else
  {
    v2 = -143113091;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_100CFE970()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x3F70] & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v3 = __ROR8__(STACK[0x3F70] & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = STACK[0x3F6C];
  v5 = ((((v3 + v2) << (LODWORD(STACK[0x3F6C]) + 74)) | 0x2200BEF718E589CLL) - (v3 + v2) + 0x7EEFFA084738D3B2) ^ 0x43BF3B5D873694AALL;
  v6 = v5 ^ __ROR8__(v2, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * (v7 + v6)) | 0xF4C9B97EC738F992) - (v7 + v6) + 0x59B23409C638337) ^ 0x9F9688627B11C835;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (0x5DBF0E4FDB72C66 - ((v10 + v9) | 0x5DBF0E4FDB72C66) + ((v10 + v9) | 0xFA240F1B0248D399)) ^ 0x95D4498D6351C114;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v13 + v12 - ((2 * (v13 + v12)) & 0x8B7C23D9F1E2FF2ELL) + 0x45BE11ECF8F17F97) ^ 0xE40C8C292F876CBCLL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xEF042041F5E548ECLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0x33A55020875E8193 - ((v18 + v17) | 0x33A55020875E8193) + ((v18 + v17) | 0xCC5AAFDF78A17E6CLL)) ^ 0x149D1CC0B2B8A7B2 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__((0x33A55020875E8193 - ((v18 + v17) | 0x33A55020875E8193) + ((v18 + v17) | 0xCC5AAFDF78A17E6CLL)) ^ 0x149D1CC0B2B8A7B2, 8) + v19) ^ 0x5455012E8AB1C38FLL;
  v21 = -715186797 * ((((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v19, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (STACK[0x3F70] & 7u))) ^ LOBYTE(STACK[0x3F17]));
  v22 = (v21 ^ LODWORD(STACK[0x3F48])) + STACK[0x3F58];
  v23 = v22 + HIWORD(v22) + ((v22 + HIWORD(v22)) >> 8);
  LODWORD(v20) = STACK[0x3F4C];
  v24 = STACK[0x3F50];
  v25 = (v23 - 437401644) ^ LODWORD(STACK[0x3F54]);
  v26 = ((v23 - 437401644) ^ v21) + STACK[0x3F58];
  v27 = STACK[0x3F58] + 1;
  v28 = v27 != STACK[0x4238];
  v29 = STACK[0x3F60];
  v30 = STACK[0x3F68];
  LODWORD(STACK[0x3F24]) = STACK[0x3F68];
  v31 = *(v1 + 8 * (v28 | (4 * v28) | v30));
  STACK[0x3F28] = v29 + 1;
  STACK[0x3F30] = v27;
  v32 = v26 + HIWORD(v26) + ((v26 + HIWORD(v26)) >> 8);
  LODWORD(v27) = v32 - 437401644;
  v33 = v25 ^ (v32 - 437401644);
  LODWORD(STACK[0x3F38]) = v33;
  v34 = (v23 + 1928782826) ^ v24 ^ (v32 + 1928782826);
  LODWORD(STACK[0x3F3C]) = v34;
  v35 = v23 ^ v20 ^ v32;
  LODWORD(STACK[0x3F40]) = v35;
  LODWORD(STACK[0x3F44]) = v27;
  LODWORD(STACK[0x41BC]) = v4;
  STACK[0x41C0] = v29;
  LODWORD(STACK[0x41C8]) = v33;
  LODWORD(STACK[0x41CC]) = v34;
  LODWORD(STACK[0x41D0]) = v35;
  LODWORD(STACK[0x41D4]) = v27;
  return v31();
}

uint64_t sub_100CFEC9C()
{
  v2 = *(*STACK[0x3E40] + (*v0 & STACK[0x1660]));
  v3 = (v2 + STACK[0x1548]) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x6FF046966119128DLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = __ROR8__((0x688A65E4E6A4248 - ((v9 + v8) | 0x688A65E4E6A4248) + ((v9 + v8) | 0xF97759A1B195BDB7)) ^ 0x58C5C46466E3AE9CLL, 8);
  v11 = (0x688A65E4E6A4248 - ((v9 + v8) | 0x688A65E4E6A4248) + ((v9 + v8) | 0xF97759A1B195BDB7)) ^ 0x58C5C46466E3AE9CLL ^ __ROR8__(v8, 61);
  v12 = (v10 + v11 - ((2 * (v10 + v11)) & 0xA43D082B58EAB802) + 0x521E8415AC755C01) ^ 0xBD1AA454599014EDLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xD8C7B31FCA19D9DELL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x5455012E8AB1C38FLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (LOBYTE(STACK[0x3F17]) ^ (LOBYTE(STACK[0x4140]) + (~(2 * LOBYTE(STACK[0x4140])) | 0x11) - 8) ^ (((((2 * (v18 + v17)) | 0x18444051658F500) - (v18 + v17) + 0x7F3DDDFD74D38580) ^ 0xEF8D42BE852E2460) >> STACK[0x1360])) ^ 0xF7u;
  v20 = STACK[0x4EA0];
  LOBYTE(v19) = *(v20 + v19) ^ (2 * (STACK[0x4E9D] & *(v20 + v19)));
  LOBYTE(v19) = ((v19 & LOBYTE(STACK[0x4E9C])) >> STACK[0x5350]) | (v19 << STACK[0x5338]);
  v21 = STACK[0x4138];
  LOBYTE(STACK[0x414E]) = STACK[0x4138];
  v22 = *(v20 + v21) ^ (2 * (STACK[0x4E9F] & *(v20 + v21)));
  LOBYTE(v21) = v22 & LOBYTE(STACK[0x4E9E]);
  LOBYTE(STACK[0x414F]) = v21;
  *(STACK[0x3D18] + 1832) = (v22 << STACK[0x5320]) ^ (v21 >> STACK[0x5328]) ^ LODWORD(STACK[0x52A4]) ^ v19;
  v23 = *(v1 + 8 * (LODWORD(STACK[0x33A4]) + 18406));
  STACK[0x3F18] = STACK[0x18F0];
  STACK[0x3F08] = v23;
  return (*(v1 + 8 * (LODWORD(STACK[0x3DB0]) + 12649)))();
}

uint64_t sub_100CFF06C(uint64_t a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = STACK[0x34C8];
  v12 = STACK[0x3C38];
  v12[5] = v8 >> ((LODWORD(STACK[0x34C8]) + 89) & 0xEF ^ 0x87u);
  v12[10] = BYTE2(v8);
  STACK[0x2150] = v11 ^ 0x3B53u;
  v12[7] = v8;
  v13 = STACK[0x3C48];
  *(v13 + 36) = BYTE3(v8);
  v14 = STACK[0x3C40];
  v14[55] = BYTE5(v8);
  *(v13 + 18) = BYTE4(v8);
  v15 = *(a1 + ((BYTE6(v8) - 36) ^ 0x20));
  v14[10] = v8 >> (v11 ^ 0x7Eu);
  v14[104] = BYTE1(v5);
  v14[81] = BYTE2(v5);
  *(v13 + 76) = BYTE3(v5);
  *(v13 + 51) = v5;
  *(v13 + 14) = ((v15 >> 5) | (8 * v15)) ^ 0x56 ^ (-86 * ((v15 >> 5) | (8 * v15)));
  v16 = *(a1 + ((BYTE4(v5) - 36) ^ 0x20));
  v14[49] = BYTE5(v5);
  v12[72] = HIBYTE(v5);
  v14[52] = BYTE6(v5);
  v14[47] = v6;
  v14[45] = ((v16 >> 5) | (8 * v16)) ^ 0x56 ^ (-86 * ((v16 >> 5) | (8 * v16)));
  v17 = (v6 >> 28) & 0xF0 | (v6 >> 36) & 0xF;
  v14[51] = BYTE3(v6);
  v14[48] = BYTE1(v6);
  v12[46] = BYTE2(v6);
  v18 = STACK[0x3DC0];
  v19 = *(STACK[0x3DC0] + v17 - ((2 * v17) & 0x78u) + 60) + 40;
  v14[95] = BYTE1(v10);
  v14[33] = HIBYTE(v6);
  v14[28] = v10;
  v14[50] = BYTE6(v6);
  v14[66] = BYTE5(v6);
  v12[37] = (((v19 ^ 0x9A ^ (v19 >> 2) & 4) + (v19 & 0x9A)) ^ v19 & 0x9A) + 122;
  v20 = *(v18 + (((v10 >> 12) & 0xF0 | (v10 >> 20) & 0xF) ^ 0x3C)) + 40;
  v14[75] = (v20 ^ 0x9A ^ (v20 >> 2) & 4) + 122;
  v21 = *(a1 + ((BYTE3(v10) - 36) ^ 0x20));
  v14[12] = BYTE4(v10);
  v22 = (v21 >> 5) | (8 * v21);
  v23 = v22 & 0x20;
  if (((-86 * v22) & v23) != 0)
  {
    v23 = -v23;
  }

  v24 = ((v21 >> 4) & 1 | (2 * v22) & 0xFFFFFFBF) ^ 0x63 ^ ((2 * (v23 - 86 * v22)) | ((v23 - 86 * v22) >> 7) & 1);
  v14[36] = ((v24 >> 1) | (v24 << 7)) ^ 0xE7;
  v25 = *(a5 + 274 + (((v10 >> 37) & 0xF8 | (v10 >> 45) & 7) ^ 0x9E));
  v14[22] = HIBYTE(v10);
  v14[110] = BYTE6(v10);
  v14[19] = BYTE1(a3);
  v14[3] = (v25 ^ (8 * v25) ^ 0xAC) + 80;
  v14[56] = a3;
  LOBYTE(v24) = *(a5 + 274 + (((a3 >> 13) & 0xF8 | (a3 >> 21) & 7) ^ 0x9E));
  v14[29] = BYTE4(a3);
  v14[117] = BYTE6(a3);
  v14[114] = BYTE5(a3);
  v14[16] = HIBYTE(v9);
  v14[8] = (v24 ^ (8 * v24) ^ 0xAC) + 80;
  v14[35] = v9 >> (a2 & 0x18) >> (a2 & 0x18 ^ 0x18u);
  *(v13 + 84) = LODWORD(STACK[0x3EFC]) + 1;
  return (*(v7 + 8 * (v11 ^ ((2 * (STACK[0x3DA0] == 0)) | (16 * (STACK[0x3DA0] == 0))))))();
}

uint64_t sub_100CFF37C()
{
  v2 = BYTE3(STACK[0x3820]);
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3D98]) = 1;
  STACK[0x3820] = v2;
  return v3();
}

uint64_t sub_100CFF3D4@<X0>(int a1@<W6>, unint64_t a2@<X7>, int a3@<W8>)
{
  LODWORD(STACK[0x3850]) = 0;
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
  v5 = a3 + 2202;
  v6 = (v5 + 3655) | 0x1090;
  LODWORD(STACK[0x3D68]) = v6;
  v7 = *(v4 + 8 * (((v3 == ((v5 + 7895) ^ 0x528D)) * (v6 ^ 0x2C6D)) ^ v5));
  STACK[0x16A8] = STACK[0x36D0];
  STACK[0x3398] = STACK[0x37A8];
  STACK[0x16A0] = STACK[0x3860];
  STACK[0x29B0] = STACK[0x3760];
  STACK[0x480] = STACK[0x2B88];
  STACK[0x10F0] = STACK[0x3290];
  STACK[0x470] = a2;
  LODWORD(STACK[0x268C]) = a1;
  LODWORD(STACK[0x366C]) = STACK[0x36B8];
  LODWORD(STACK[0x2010]) = STACK[0x38B8];
  STACK[0x37B8] = LODWORD(STACK[0x3550]);
  v8 = STACK[0x3540];
  LODWORD(STACK[0x3E18]) = STACK[0x3540];
  LODWORD(STACK[0x3D40]) = v8;
  LODWORD(STACK[0x31D0]) = STACK[0x38C8];
  LODWORD(STACK[0x2A48]) = STACK[0x33C0];
  STACK[0x33A8] = LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x2630]) = STACK[0x32E8];
  STACK[0x2228] = LODWORD(STACK[0x2B80]);
  LODWORD(STACK[0x128C]) = STACK[0x36A0];
  STACK[0x3D60] = STACK[0x3998];
  STACK[0x3D88] = STACK[0x39E8];
  LODWORD(STACK[0x3E40]) = STACK[0x39A0];
  STACK[0x3700] = LODWORD(STACK[0x3698]);
  LODWORD(STACK[0x3D20]) = STACK[0x3948];
  LODWORD(STACK[0x3D90]) = STACK[0x3988];
  LODWORD(v8) = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D80]) = v8;
  LODWORD(STACK[0x3D70]) = STACK[0x3980];
  LODWORD(STACK[0x2BB0]) = 19;
  LODWORD(STACK[0x3AD8]) = 17;
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2928];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  v9 = STACK[0x32D8];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v9;
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3298]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x3840]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3248]) = 1;
  LODWORD(STACK[0x2B98]) = 1;
  LODWORD(STACK[0x2BA0]) = 1;
  LODWORD(STACK[0x3250]) = 1;
  LODWORD(STACK[0x2BA8]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x3258]) = 1;
  LODWORD(STACK[0x2BD0]) = 1;
  LODWORD(STACK[0x2BD8]) = 1;
  LODWORD(STACK[0x3260]) = 1;
  LODWORD(STACK[0x2BE0]) = 1;
  LODWORD(STACK[0x2BC8]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x39A8]) = STACK[0x3B18];
  LODWORD(STACK[0x3860]) = STACK[0x3808];
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  LODWORD(STACK[0x3268]) = v9;
  return v7();
}

uint64_t sub_100CFF670()
{
  v2 = STACK[0x3E40];
  v3 = (LODWORD(STACK[0x3E40]) - 18110) | 0x23A0;
  v4 = *(STACK[0x5008] + 4 * v0) ^ (2 * (STACK[0x52B8] & *(STACK[0x5008] + 4 * v0)));
  v5 = v0 ^ (2 * (STACK[0x52D8] & v0));
  v6 = (v0 ^ (2 * (LOBYTE(STACK[0x52D8]) & v0)));
  v7 = v6 << STACK[0x5320];
  v8 = ((v4 & STACK[0x52C8]) >> STACK[0x5328]) | ((v4 & STACK[0x52AC]) << STACK[0x5338]);
  v9 = STACK[0x4E98];
  STACK[0x30B8] = v5;
  v10 = (v9 & v5) >> STACK[0x5350];
  *(STACK[0x33D8] + 4 * (((v10 | v7) ^ LODWORD(STACK[0x52C0])) & (v3 ^ 0x2757))) = LODWORD(STACK[0x52BC]) ^ v8;
  v11 = *(STACK[0x4EB0] + v0) ^ (2 * (STACK[0x52B8] & *(STACK[0x4EB0] + v0)));
  *(STACK[0x3660] + 4 * (((v6 << STACK[0x5338]) | v10) ^ LODWORD(STACK[0x52C0]))) = (((v11 & STACK[0x52C8]) >> STACK[0x5328]) | ((v11 & STACK[0x52AC]) << STACK[0x5320])) ^ LODWORD(STACK[0x52A4]);
  return (*(v1 + 8 * ((7101 * (v0 == 255)) ^ v2)))();
}

uint64_t sub_100CFF7F0()
{
  v1 = STACK[0x3528];
  v2 = STACK[0x3920];
  v3 = (v1[1] << 24) ^ (2 * ((v1[1] << 24) & STACK[0x3920]));
  LODWORD(STACK[0x3DA0]) = v3;
  v4 = STACK[0x3660];
  HIDWORD(v5) = *(STACK[0x3660] + 4 * STACK[0x3888]);
  LODWORD(v5) = HIDWORD(v5);
  v6 = (v5 >> 8) ^ __ROR4__(*(STACK[0x3660] + 4 * STACK[0x3898]), 16);
  LODWORD(v5) = __ROR4__(*(STACK[0x3660] + 4 * STACK[0x38A8]), 24);
  v7 = STACK[0x38D0];
  v8 = STACK[0x3D58];
  v9 = STACK[0x38C0];
  v10 = STACK[0x3D68];
  v11 = ((v3 & STACK[0x38D0]) >> STACK[0x3D58]) + ((v3 & STACK[0x38C0]) << STACK[0x3D68]);
  v12 = *(STACK[0x3660] + 4 * STACK[0x3890]);
  v13 = STACK[0x4D7C];
  LODWORD(STACK[0x3DF0]) = STACK[0x4D7C];
  v14 = v6 ^ v5 ^ v13 ^ v12;
  LODWORD(STACK[0x3DC8]) = v14;
  v15 = v14 ^ v11;
  v16 = v14 ^ v11 ^ LODWORD(STACK[0x3870]);
  v17 = STACK[0x3880];
  v18 = LODWORD(STACK[0x3878]) ^ LODWORD(STACK[0x3880]);
  v19 = STACK[0x4D90];
  LODWORD(STACK[0x3DE0]) = STACK[0x4D90];
  v20 = v16 ^ v19;
  v21 = v16;
  v22 = v18 ^ v20;
  v23 = STACK[0x3778];
  v24 = v22 ^ LODWORD(STACK[0x3778]);
  HIDWORD(v5) = *(v4 + 4 * BYTE2(v24));
  LODWORD(v5) = HIDWORD(v5);
  v25 = (v5 >> 8) ^ __ROR4__(*(v4 + 4 * BYTE1(v24)), 16);
  LODWORD(v5) = __ROR4__(*(v4 + 4 * (v22 ^ LODWORD(STACK[0x3778]))), 24);
  v26 = v1[2] << 24;
  LODWORD(STACK[0x3D90]) = v26;
  v27 = STACK[0x3908];
  v28 = STACK[0x3D60];
  v29 = (((v26 ^ (2 * (v26 & v27))) & v7) >> v8) ^ (((v26 ^ (2 * (v26 & v27))) & v9) << STACK[0x3D60]);
  STACK[0x3CE0] = v24;
  v30 = *(v4 + ((v24 >> 22) & 0x3FC));
  LODWORD(STACK[0x3D08]) = v15;
  v31 = v25 ^ v5 ^ v30 ^ v15 ^ v29;
  v32 = v20 ^ LODWORD(STACK[0x38E8]);
  v33 = STACK[0x38E8];
  v34 = v21 ^ v17;
  v35 = v21;
  LODWORD(STACK[0x3DC0]) = v21;
  v36 = v31 ^ v21 ^ v17;
  LODWORD(STACK[0x3D00]) = v36;
  LODWORD(STACK[0x3B88]) = v32;
  v37 = v36 ^ v32;
  v38 = v37 ^ v22;
  v39 = *(v4 + ((v38 >> 22) & 0x3FC)) ^ __ROR4__(*(v4 + 4 * (v37 ^ v22)), 24) ^ __ROR4__(*(v4 + 4 * BYTE2(v38)), 8);
  LODWORD(v5) = __ROR4__(*(v4 + 4 * BYTE1(v38)), 16);
  v40 = (v1[8] << 24) ^ (2 * ((v1[8] << 24) & v27));
  v41 = v1[4] << 24;
  LODWORD(STACK[0x3D20]) = v41;
  v42 = v27;
  v43 = STACK[0x3D70];
  v44 = v39 ^ v5 ^ ((((v41 ^ (2 * (v41 & v27))) & v7) >> STACK[0x3D70]) | (((v41 ^ (2 * (v41 & v27))) & v9) << v10));
  v45 = v44 ^ v34;
  v46 = v37;
  LODWORD(STACK[0x3DE8]) = v37;
  STACK[0x3CF8] = v38;
  v47 = v37 ^ v23 ^ v38 ^ v44 ^ v34;
  v48 = v47 ^ v23;
  v49 = *(v4 + ((v48 >> 22) & 0x3FC)) ^ __ROR4__(*(v4 + 4 * (v47 ^ v23)), 24) ^ __ROR4__(*(v4 + 4 * BYTE1(v48)), 16);
  STACK[0x3CD8] = v48;
  LODWORD(v5) = __ROR4__(*(v4 + 4 * BYTE2(v48)), 8);
  LODWORD(STACK[0x3D78]) = v40;
  v50 = (v40 & v9) << v28;
  STACK[0x3D80] = v50;
  LODWORD(STACK[0x3B90]) = v31;
  LODWORD(STACK[0x3CD0]) = v44 ^ v31;
  v51 = v49 ^ v5 ^ v44 ^ v31 ^ ((v40 & v7) >> v8) ^ v50;
  v52 = v44 ^ v35;
  LODWORD(STACK[0x3B70]) = v52;
  LODWORD(STACK[0x3BB8]) = v52 ^ v46;
  v53 = v45 ^ v23 ^ v52 ^ v46;
  v54 = v23;
  v55 = v51;
  LODWORD(STACK[0x3DB8]) = v51;
  LODWORD(STACK[0x3B48]) = v51 ^ v23;
  v56 = v53 ^ v51 ^ v23;
  v57 = v56 ^ v47;
  v58 = *(v4 + ((v57 >> 22) & 0x3FC)) ^ __ROR4__(*(v4 + 4 * (v56 ^ v47)), 24) ^ __ROR4__(*(v4 + 4 * BYTE2(v57)), 8);
  LODWORD(v5) = __ROR4__(*(v4 + 4 * BYTE1(v57)), 16);
  v59 = v1[16] << 24;
  LODWORD(STACK[0x3D48]) = v59;
  v60 = STACK[0x38F8];
  v61 = STACK[0x38A0];
  v62 = v58 ^ v5 ^ ((((v59 ^ (2 * (v59 & v2))) & STACK[0x38F8]) >> v43) | (((v59 ^ (2 * (v59 & v2))) & STACK[0x38A0]) << v10));
  LODWORD(v48) = STACK[0x38D8];
  v63 = v56 ^ LODWORD(STACK[0x38D8]);
  LODWORD(STACK[0x3B68]) = v45;
  v64 = v62 ^ v45;
  STACK[0x3B40] = v57;
  v65 = v48;
  v66 = v57 ^ v48 ^ v62 ^ v45;
  v67 = v66 ^ v63;
  LODWORD(v57) = *(v4 + ((v67 >> 22) & 0x3FC)) ^ __ROR4__(*(v4 + 4 * (v66 ^ v63)), 24) ^ __ROR4__(*(v4 + 4 * BYTE2(v67)), 8);
  v68 = (v1[32] << 24) ^ (2 * ((v1[32] << 24) & v42));
  v69 = v1[64] << 24;
  LODWORD(STACK[0x3D88]) = v69;
  LODWORD(STACK[0x3B60]) = v68;
  v70 = v68 & v9;
  STACK[0x3B78] = v70;
  LODWORD(v48) = (v70 << v10) | ((v68 & v7) >> v8);
  STACK[0x3BB0] = v67;
  v71 = *(v4 + 4 * BYTE1(v67));
  v72 = v62 ^ v55;
  LODWORD(STACK[0x3BA8]) = v72;
  v73 = v72 ^ __ROR4__(v71, 16) ^ v48 ^ v57;
  LODWORD(v48) = v64 ^ v63;
  v74 = v63 ^ v54;
  LODWORD(STACK[0x3D98]) = v74;
  v75 = v66 ^ v74;
  LODWORD(v57) = v64 ^ v17;
  v76 = v64 ^ v17 ^ v54;
  v77 = STACK[0x38EC];
  LODWORD(STACK[0x3B98]) = v76;
  v78 = v73 ^ v77 ^ v76;
  LODWORD(STACK[0x3D50]) = v73;
  LODWORD(STACK[0x3BA0]) = v78;
  LODWORD(STACK[0x3B00]) = v48;
  LODWORD(v48) = v78 ^ v48;
  v79 = v75 ^ v48;
  v80 = ((((v69 ^ (2 * (v69 & v2))) & v61) << v10) + (((v69 ^ (2 * (v69 & v2))) & v60) >> v43)) ^ __ROR4__(*(v4 + 4 * (v75 ^ v48)), 24) ^ __ROR4__(*(v4 + 4 * BYTE1(v79)), 16) ^ __ROR4__(*(v4 + 4 * BYTE2(v79)), 8) ^ *(v4 + ((v79 >> 22) & 0x3FC));
  v81 = v33;
  LODWORD(STACK[0x3D10]) = v48 ^ v33;
  v82 = v80 ^ v64 ^ v48 ^ v33;
  v83 = v82 ^ v79 ^ v77;
  HIDWORD(v5) = *(v4 + 4 * BYTE2(v83));
  LODWORD(v5) = HIDWORD(v5);
  v84 = (v5 >> 8) ^ __ROR4__(*(v4 + 4 * (v82 ^ v75 ^ v48 ^ v77)), 24) ^ *(v4 + ((v83 >> 22) & 0x3FC));
  STACK[0x3B58] = v83;
  LODWORD(v5) = __ROR4__(*(v4 + 4 * BYTE1(v83)), 16);
  LODWORD(v48) = v1[128] << 24;
  LODWORD(STACK[0x3B50]) = v48;
  LODWORD(v57) = v80 ^ v57;
  LODWORD(STACK[0x3D38]) = v73 ^ v80;
  LODWORD(v48) = v84 ^ v5 ^ v73 ^ v80 ^ ((((v48 ^ (2 * (v48 & v2))) & v60) >> v8) + (((v48 ^ (2 * (v48 & v2))) & v9) << v28));
  v85 = v82 ^ v54;
  LODWORD(STACK[0x3B38]) = v57;
  LODWORD(STACK[0x3D30]) = v48;
  LODWORD(STACK[0x3CA0]) = v48 ^ v57;
  v86 = v48 ^ v57 ^ v65;
  LODWORD(STACK[0x3C90]) = v86;
  v87 = v86 ^ v17;
  v88 = v82 ^ v79 ^ v82 ^ v54 ^ v87;
  v89 = *(v4 + ((v88 >> 22) & 0x3FC)) ^ __ROR4__(*(v4 + 4 * BYTE2(v88)), 8) ^ __ROR4__(*(v4 + 4 * BYTE1(v88)), 16);
  STACK[0x3C08] = v88;
  LODWORD(v5) = __ROR4__(*(v4 + 4 * (v82 ^ v79 ^ v82 ^ v54 ^ v87)), 24);
  v90 = (v1[54] << 24) ^ (2 * ((v1[54] << 24) & v2));
  v91 = v1[27] << 24;
  LODWORD(STACK[0x3B20]) = v91;
  v92 = STACK[0x38D0];
  LODWORD(v1) = v89 ^ v5 ^ v48 ^ ((((v91 ^ (2 * (v91 & v2))) & v61) << v10) | (((v91 ^ (2 * (v91 & v2))) & STACK[0x38D0]) >> v8));
  v93 = v87 ^ v82;
  v94 = v1 ^ v87;
  LODWORD(STACK[0x3AF8]) = v93;
  v95 = v93 ^ v65 ^ v1 ^ v87;
  LODWORD(v57) = v95 ^ v88;
  v96 = v95 ^ v88 ^ v81;
  STACK[0x3AD8] = v96;
  HIDWORD(v5) = *(v4 + 4 * v96);
  LODWORD(v5) = HIDWORD(v5);
  v97 = (v5 >> 24) ^ __ROR4__(*(v4 + 4 * BYTE2(v96)), 8);
  LODWORD(v5) = __ROR4__(*(v4 + 4 * BYTE1(v96)), 16);
  v98 = *(v4 + ((v96 >> 22) & 0x3FC));
  LODWORD(STACK[0x3B28]) = v90;
  v99 = (v90 & v9) << v28;
  STACK[0x3B30] = v99;
  LODWORD(STACK[0x3A98]) = v1;
  v100 = v97 ^ v5 ^ v1 ^ v99 ^ ((v90 & v60) >> v43) ^ v98;
  v101 = STACK[0x33D8];
  v102 = *(STACK[0x33D8] + ((v100 >> 22) & 0x3FC));
  v103 = *(STACK[0x33D8] + 4 * BYTE2(v100));
  LODWORD(STACK[0x3DD8]) = v103;
  LODWORD(STACK[0x3DA8]) = v102 ^ (v103 << 8) ^ __ROR4__(*(v101 + 4 * BYTE1(v100)), 16) ^ __ROR4__(*(v101 + 4 * v100), 8);
  LODWORD(STACK[0x3AAC]) = v94 ^ v54;
  v104 = v100 ^ v77 ^ v94 ^ v54;
  LODWORD(v99) = v54;
  LODWORD(STACK[0x3A70]) = v95 ^ v54;
  v105 = v95 ^ v54 ^ v17 ^ v104;
  BYTE2(v103) = BYTE2(v105) ^ BYTE2(v57);
  HIDWORD(v5) = *(v101 + 4 * ((v105 ^ v57) >> 8));
  LODWORD(v5) = HIDWORD(v5);
  LODWORD(v57) = (v5 >> 16) ^ __ROR4__(*(v101 + 4 * (v105 ^ v57)), 8) ^ *(v101 + (((v105 ^ v57) >> 22) & 0x3FC));
  v106 = v105 ^ v54;
  v107 = *(v101 + 4 * v106);
  v108 = __PAIR64__(v107, __ROR4__(*(v101 + 4 * BYTE2(v103)), 24));
  LODWORD(STACK[0x3DB0]) = v57 ^ v108;
  LODWORD(v108) = v107;
  LODWORD(STACK[0x3A68]) = (v108 >> 8) ^ __ROR4__(*(v101 + 4 * BYTE1(v106)), 16) ^ *(v101 + ((v106 >> 22) & 0x3FC)) ^ __ROR4__(*(v101 + 4 * BYTE2(v106)), 24);
  LODWORD(STACK[0x3B80]) = *(v101 + (((v104 ^ v54) >> 22) & 0x3FC)) ^ __ROR4__(*(v101 + 4 * ((v104 ^ v54) >> 8)), 16) ^ __ROR4__(*(v101 + 4 * ((v104 ^ v54) >> 16)), 24) ^ __ROR4__(*(v101 + 4 * (v104 ^ v54)), 8);
  LODWORD(v57) = STACK[0x38F0];
  v109 = STACK[0x38F0] & 0x2D3F6B2E ^ 0x169FB597;
  LODWORD(STACK[0x3AF0]) = v109;
  v110 = (v109 & v61) << v10;
  v111 = (v109 & v92) >> v8;
  STACK[0x3B10] = v111;
  LODWORD(v48) = LODWORD(STACK[0x4DB4]) ^ (v110 + v111);
  LODWORD(STACK[0x3AC8]) = v48;
  STACK[0x39B0] = (((v57 & 0x886C5FE4 ^ 0xC4362FF2) & v9) << v28) | (((v57 & 0x886C5FE4 ^ 0xC4362FF2) & v92) >> v8);
  LODWORD(v100) = v92;
  v112 = (((v57 & 0x2F2FFFB8 ^ 0x9797FFDC) & v61) << v28) + (((v57 & 0x2F2FFFB8 ^ 0x9797FFDC) & v92) >> v8);
  LODWORD(v111) = v57 & 0xA33F523A ^ 0xD19FA91D;
  LODWORD(STACK[0x3DD0]) = v111;
  v113 = v60;
  v114 = v111 & v60;
  STACK[0x3D18] = v114;
  LODWORD(STACK[0x3988]) = ((v111 & v9) << v28) + (v114 >> v43);
  LODWORD(v111) = v57 & 0x4D32179E ^ 0x26990BCF;
  LODWORD(STACK[0x3B18]) = v111;
  LODWORD(STACK[0x3980]) = ((v111 & v60) >> v43) + ((v111 & v61) << v10);
  v115 = v57;
  LODWORD(v111) = v57 & 0xFB732178 ^ 0xFDB990BC;
  LODWORD(STACK[0x3C60]) = v111;
  LODWORD(STACK[0x3970]) = ((v111 & v60) >> v43) ^ ((v111 & v61) << v10);
  LODWORD(v57) = STACK[0x38F4];
  LODWORD(v111) = STACK[0x38F4] & 0xF978C1FC ^ 0x7CBC60FE;
  LODWORD(STACK[0x3B08]) = v111;
  LOBYTE(v54) = v43;
  LODWORD(STACK[0x3A40]) = LODWORD(STACK[0x3D50]) ^ (((v111 & v9) << v10) + ((v111 & v100) >> v43));
  LODWORD(v110) = v57 & 0x7BDF2B8A ^ 0x3DEF95C5;
  v116 = v61 & v110;
  v117 = v60 & v110;
  STACK[0x3CB0] = v116;
  STACK[0x3CA8] = v117;
  STACK[0x3A88] = (v116 << v10) | (v117 >> v43);
  LODWORD(v117) = v57;
  LODWORD(v116) = v57 & 0x8DC44764 ^ 0xC6E223B2;
  LODWORD(STACK[0x3C98]) = v116;
  LODWORD(STACK[0x39C8]) = ((v116 & v9) << v10) | ((v60 & v116) >> v8);
  LODWORD(v57) = (((v115 & 0xE18A6CA0 ^ 0x70C53650) & v60) >> v8) ^ (((v115 & 0xE18A6CA0 ^ 0x70C53650) & v9) << v10);
  LODWORD(STACK[0x3978]) = (((v117 & 0x3FEEE116 ^ 0x1FF7708B) & v9) << v28) | (((v117 & 0x3FEEE116 ^ 0x1FF7708B) & v100) >> v8);
  LODWORD(v116) = v115 & 0x20C39C28 ^ 0x9061CE14;
  v118 = (v116 & v9) << v10;
  LODWORD(STACK[0x3C30]) = v116;
  v119 = v116 & v60;
  STACK[0x3C28] = v119;
  LODWORD(STACK[0x3968]) = v118 + (v119 >> v8);
  v120 = v115;
  LODWORD(v119) = v115 & 0x36E3BFC6 ^ 0x1B71DFE3;
  LODWORD(STACK[0x3C88]) = v119;
  LODWORD(v119) = ((v119 & v100) >> v43) + ((v119 & v61) << v28);
  LODWORD(STACK[0x39A8]) = ((v113 & (v117 & 0x820608B6 ^ 0x4103045B)) >> v8) + (((v117 & 0x820608B6 ^ 0x4103045B) & v9) << v28);
  v121 = v9;
  LODWORD(STACK[0x3D98]) ^= (((v117 & 0x3588D01A ^ 0x9AC4680D) & v100) >> v8) ^ (((v117 & 0x3588D01A ^ 0x9AC4680D) & v9) << v28);
  LODWORD(STACK[0x3A58]) = (((v117 & 0x23B20F5E ^ 0x91D907AF) & v100) >> v43) | ((v61 & (v117 & 0x23B20F5E ^ 0x91D907AF)) << v28);
  v122 = v117;
  LODWORD(STACK[0x3A60]) = ((v61 & (v117 & 0xCCC7773C ^ 0xE663BB9E)) << v10) ^ (((v117 & 0xCCC7773C ^ 0xE663BB9E) & v100) >> v8);
  LODWORD(v114) = v85 ^ (((v120 & 0xF5224E2 ^ 0x7A91271) & v121) << v28) ^ (((v120 & 0xF5224E2 ^ 0x7A91271) & v113) >> v43);
  LODWORD(STACK[0x3CC0]) = v114;
  LODWORD(v117) = v117 & 0xC8D27E24 ^ 0x64693F12;
  v123 = (v117 & v121) << v10;
  LODWORD(STACK[0x3C78]) = v117;
  STACK[0x3C80] = v123;
  LODWORD(STACK[0x3D50]) = v79 ^ (v123 + ((v113 & v117) >> v43));
  LODWORD(v117) = v120 & 0x7994116 ^ 0x83CCA08B;
  v124 = (v117 & v61) << v28;
  LODWORD(STACK[0x3C68]) = v117;
  STACK[0x3C70] = v124;
  LODWORD(STACK[0x3D10]) ^= ((v117 & v100) >> v8) ^ v124;
  LODWORD(v124) = v120 & 0x13ED6F6E ^ 0x89F6B7B7;
  LODWORD(STACK[0x3CF0]) = v124;
  LODWORD(STACK[0x3BD8]) = ((v124 & v113) >> v8) ^ ((v124 & v61) << v28);
  LODWORD(v124) = v122 & 0x671A3392 ^ 0x338D19C9;
  LODWORD(STACK[0x3C58]) = v124;
  LODWORD(STACK[0x3A38]) = ((v124 & v121) << v10) | ((v124 & v100) >> v43);
  LODWORD(STACK[0x3A28]) = (((v120 & 0xCE7CF850 ^ 0x673E7C28) & v113) >> v8) ^ (((v120 & 0xCE7CF850 ^ 0x673E7C28) & v61) << v28);
  LODWORD(v1) = v122;
  LODWORD(v124) = v122 & 0x2A9602F2 ^ 0x954B0179;
  v125 = (v113 & v124) >> v43;
  LODWORD(STACK[0x3C50]) = v124;
  v126 = v124 & v121;
  STACK[0x3C20] = v126;
  LODWORD(STACK[0x3948]) = (v126 << v10) | v125;
  LODWORD(v43) = v120;
  LODWORD(v126) = v120 & 0xB2769982 ^ 0xD93B4CC1;
  v127 = (v126 & v113) >> v54;
  LODWORD(STACK[0x3C18]) = v126;
  v128 = v126 & v61;
  STACK[0x3C10] = v128;
  LODWORD(STACK[0x3A04]) = (v128 << v28) + v127;
  LODWORD(v128) = v122 & 0x833FA996 ^ 0x419FD4CB;
  v129 = (v128 & v100) >> v54;
  LODWORD(STACK[0x3BF8]) = v128;
  v130 = v61 & v128;
  STACK[0x3BF0] = v130;
  LODWORD(v130) = v129 ^ (v130 << v28);
  v131 = v48 - v114 - 1680203515;
  LODWORD(v48) = v1 & 0x1615CA3C ^ 0x8B0AE51E;
  LODWORD(STACK[0x3CC8]) = v48;
  v132 = (v61 & v48) << v10;
  v133 = v48 & v100;
  STACK[0x3CE8] = v133;
  STACK[0x3998] = v132;
  LODWORD(STACK[0x3CB8]) = (v132 + (v133 >> v8)) ^ LODWORD(STACK[0x3DF0]);
  LODWORD(STACK[0x3958]) = v130 ^ v99 ^ LODWORD(STACK[0x3DC0]);
  LODWORD(v48) = v1;
  LODWORD(v132) = v1 & 0x14343518 ^ 0xA1A1A8C;
  LODWORD(STACK[0x3A18]) = v132;
  v134 = (v132 & v121) << v28;
  v135 = v132 & v100;
  STACK[0x3BE0] = v135;
  STACK[0x3BE8] = v134;
  v136 = STACK[0x38D8];
  LODWORD(v1) = v99;
  LODWORD(STACK[0x3AA0]) = v99 ^ LODWORD(STACK[0x38D8]) ^ v134 ^ (v135 >> v8) ^ LODWORD(STACK[0x3DE8]);
  LODWORD(STACK[0x3A50]) = LODWORD(STACK[0x3DB8]) ^ v112;
  LODWORD(v135) = v48 & 0x31D05E74 ^ 0x98E82F3A;
  v137 = (v113 & v135) >> v54;
  STACK[0x3AE8] = v137;
  v138 = v135 & v121;
  STACK[0x3AE0] = v138;
  LODWORD(v138) = LODWORD(STACK[0x3D38]) ^ (v137 | (v138 << v28));
  LODWORD(v79) = STACK[0x3908];
  LODWORD(v132) = v131 ^ (2 * (v131 & STACK[0x3908]));
  LODWORD(STACK[0x3A48]) = v132;
  v139 = v132 & v100;
  v140 = v132 & v121;
  STACK[0x3DE8] = v140 << v10;
  LOBYTE(v120) = v8;
  STACK[0x3D38] = v139 >> v8;
  LODWORD(STACK[0x3DC0]) = v138 ^ ((v140 << v10) | (v139 >> v8));
  v141 = STACK[0x3920];
  LODWORD(STACK[0x3BC0]) = v131;
  v142 = v131 ^ (2 * (v131 & v141));
  LODWORD(STACK[0x3A30]) = v142;
  v143 = v142 & v100;
  STACK[0x3A80] = v143;
  v144 = v143 >> v8;
  LODWORD(v143) = v119 ^ (v143 >> v8);
  STACK[0x3830] = v144;
  v145 = v142 & v121;
  STACK[0x3A78] = v145;
  v146 = v145 << v28;
  v147 = v146;
  STACK[0x3790] = v146;
  LODWORD(STACK[0x3BD0]) = LODWORD(STACK[0x3D30]) ^ v143 ^ v146;
  STACK[0x3DF0] = v139 >> v54;
  STACK[0x3D30] = v140 << v28;
  LOBYTE(v114) = v28;
  LODWORD(v143) = (v139 >> v54) | (v140 << v28);
  LODWORD(STACK[0x3838]) = v143;
  LODWORD(STACK[0x3BC8]) = STACK[0x3C08] ^ v57 ^ v143;
  LODWORD(v8) = v43;
  LODWORD(v139) = v43 & 0xB9956C4C ^ 0x5CCAB626;
  v148 = (v139 & v100) >> v54;
  LODWORD(STACK[0x3C00]) = v139;
  LODWORD(v43) = v61;
  STACK[0x3C08] = v148;
  LODWORD(STACK[0x3850]) = v144 | v147;
  LODWORD(STACK[0x3DB8]) = (v144 | v147) ^ (((v139 & v61) << v10) + v148) ^ STACK[0x3AD8];
  v149 = LODWORD(STACK[0x3DC8]) ^ ((STACK[0x3DA0] & v61) << v10) ^ ((STACK[0x3DA0] & v113) >> v120);
  LODWORD(v143) = LODWORD(STACK[0x3D90]) ^ (2 * (STACK[0x3D90] & v141));
  LODWORD(v148) = LODWORD(STACK[0x4DE4]) ^ v99;
  LODWORD(v99) = v136;
  LODWORD(v140) = v149 ^ v136 ^ v148;
  LODWORD(v139) = STACK[0x38E0];
  LODWORD(STACK[0x38A8]) = v140;
  LODWORD(v139) = v140 ^ v139;
  LODWORD(v57) = STACK[0x38B0];
  v150 = v139 ^ LODWORD(STACK[0x38B0]);
  LODWORD(v28) = v139;
  LODWORD(STACK[0x3A20]) = v139;
  LODWORD(v143) = (((v143 & v100) >> v120) + ((v143 & v121) << v10)) ^ __ROR4__(*(v4 + 4 * BYTE2(v150)), 8) ^ *(v4 + ((v150 >> 22) & 0x3FC)) ^ __ROR4__(*(v4 + 4 * BYTE1(v150)), 16);
  STACK[0x3938] = v150;
  LODWORD(v143) = v143 ^ __ROR4__(*(v4 + 4 * (v139 ^ v57)), 24);
  LODWORD(v150) = v143 ^ v148;
  v151 = v143 ^ v148 ^ v57;
  LODWORD(v148) = ((((LODWORD(STACK[0x3D20]) ^ (2 * (STACK[0x3D20] & v141))) & v61) << v10) + (((LODWORD(STACK[0x3D20]) ^ (2 * (STACK[0x3D20] & v141))) & v100) >> v54)) ^ __ROR4__(*(v4 + 4 * BYTE1(v151)), 16);
  LODWORD(v108) = __ROR4__(*(v4 + 4 * v151), 24);
  LODWORD(STACK[0x3950]) = v149;
  LODWORD(v139) = v143 ^ v149;
  LODWORD(v143) = *(v4 + 4 * BYTE2(v151));
  LODWORD(STACK[0x3840]) = v139;
  v152 = v148 ^ v108 ^ v139 ^ __ROR4__(v143, 8) ^ *(v4 + ((v151 >> 22) & 0x3FC));
  LODWORD(v143) = ((STACK[0x3D78] & v113) >> v120) + STACK[0x3D80];
  LODWORD(STACK[0x3D80]) = v150;
  LODWORD(v139) = v150 ^ v136;
  LODWORD(v140) = v152 ^ v150 ^ v136;
  LODWORD(STACK[0x3800]) = v140;
  LODWORD(v140) = v150 ^ v28 ^ v140;
  STACK[0x3928] = v151;
  LODWORD(v148) = v151 ^ v136 ^ v140;
  v153 = v148 ^ v1;
  LODWORD(v143) = v143 ^ __ROR4__(*(v4 + 4 * (v148 ^ v1)), 24) ^ __ROR4__(*(v4 + 4 * BYTE2(v153)), 8) ^ *(v4 + ((v153 >> 22) & 0x3FC));
  STACK[0x3910] = v153;
  LODWORD(v143) = v143 ^ __ROR4__(*(v4 + 4 * BYTE1(v153)), 16);
  v154 = v79;
  LODWORD(v151) = LODWORD(STACK[0x3D48]) ^ (2 * (LODWORD(STACK[0x3D48]) & v79));
  LODWORD(v153) = v140 ^ v1;
  LODWORD(v140) = v143 ^ v139;
  LODWORD(v79) = STACK[0x3880];
  LODWORD(STACK[0x3900]) = v153;
  LODWORD(v139) = v153 ^ v79 ^ v143 ^ v139;
  v155 = v139 ^ v148;
  LODWORD(v151) = (((v151 & v121) << v114) + ((v151 & v100) >> v120)) ^ __ROR4__(*(v4 + 4 * (v139 ^ v148)), 24) ^ *(v4 + ((v155 >> 22) & 0x3FC));
  LODWORD(v108) = __ROR4__(*(v4 + 4 * BYTE2(v155)), 8);
  LODWORD(STACK[0x3818]) = v152;
  LODWORD(v153) = v143 ^ v152;
  STACK[0x38E0] = v155;
  LODWORD(v143) = *(v4 + 4 * BYTE1(v155));
  LODWORD(STACK[0x37D8]) = v153;
  LODWORD(v151) = v151 ^ v108 ^ v153;
  LODWORD(v108) = __ROR4__(v143, 16);
  LODWORD(v143) = ((STACK[0x3B60] & v113) >> v54) ^ (STACK[0x3B78] << v114);
  LODWORD(v153) = v140 ^ LODWORD(STACK[0x38E8]);
  LODWORD(STACK[0x37C8]) = v151 ^ v108;
  LODWORD(v151) = v151 ^ v108 ^ v1;
  v156 = v151 ^ v140;
  LODWORD(STACK[0x38E8]) = v153;
  LODWORD(v140) = v151 ^ v153;
  v157 = v151 ^ v153 ^ v148;
  v158 = v151 ^ v143 ^ __ROR4__(*(v4 + 4 * (v151 ^ v153 ^ v148)), 24) ^ *(v4 + ((v157 >> 22) & 0x3FC)) ^ __ROR4__(*(v4 + 4 * BYTE1(v157)), 16) ^ __ROR4__(*(v4 + 4 * BYTE2(v157)), 8);
  LODWORD(v151) = v154;
  LODWORD(v143) = (((LODWORD(STACK[0x3D88]) ^ (2 * (STACK[0x3D88] & v154))) & v61) << v10) | (((LODWORD(STACK[0x3D88]) ^ (2 * (STACK[0x3D88] & v154))) & v113) >> v54);
  LODWORD(STACK[0x37B8]) = v139 ^ v99;
  LODWORD(v139) = v140 ^ v139 ^ v99;
  LODWORD(STACK[0x38B0]) = v156;
  LODWORD(v148) = v156 ^ v99 ^ v158;
  LODWORD(STACK[0x37C0]) = v139;
  v159 = v139 ^ v79 ^ v148;
  LODWORD(v153) = STACK[0x38EC];
  v160 = v157 ^ LODWORD(STACK[0x38EC]) ^ v159;
  LODWORD(v143) = v143 ^ __ROR4__(*(v4 + 4 * BYTE2(v160)), 8) ^ __ROR4__(*(v4 + 4 * BYTE1(v160)), 16);
  LODWORD(v108) = __ROR4__(*(v4 + 4 * (v157 ^ LODWORD(STACK[0x38EC]) ^ v159)), 24);
  LODWORD(v139) = *(v4 + ((v160 >> 22) & 0x3FC));
  LODWORD(STACK[0x3870]) = v158;
  v161 = v143 ^ v108 ^ v139 ^ v158;
  LODWORD(v143) = (((LODWORD(STACK[0x3B50]) ^ (2 * (STACK[0x3B50] & v151))) & v61) << v114) | (((LODWORD(STACK[0x3B50]) ^ (2 * (STACK[0x3B50] & v151))) & v113) >> v54);
  LODWORD(v148) = v148 ^ v1;
  LODWORD(STACK[0x37A0]) = v148;
  LODWORD(v148) = v148 ^ v79 ^ v161;
  LODWORD(STACK[0x37E4]) = v159;
  v162 = v159 ^ v99 ^ v148;
  STACK[0x3828] = v160;
  v163 = v160 ^ v79 ^ v162;
  LODWORD(v139) = *(v4 + 4 * (v160 ^ v79 ^ v162));
  LODWORD(v160) = *(v4 + 4 * BYTE1(v163));
  LODWORD(v143) = v143 ^ (v139 << 8) ^ BYTE3(v139) ^ __ROR4__(*(v4 + 4 * BYTE2(v163)), 8);
  STACK[0x3820] = v163;
  LODWORD(v139) = *(v4 + ((v163 >> 22) & 0x3FC));
  LODWORD(STACK[0x37A8]) = v161;
  v164 = v143 ^ v161 ^ v139 ^ __ROR4__(v160, 16);
  LODWORD(v143) = (((LODWORD(STACK[0x3B20]) ^ (2 * (STACK[0x3B20] & v151))) & v100) >> v120) ^ (((LODWORD(STACK[0x3B20]) ^ (2 * (STACK[0x3B20] & v151))) & v61) << v10);
  LODWORD(STACK[0x3810]) = v148 ^ v1;
  LODWORD(v139) = v148 ^ v1 ^ v79 ^ v164;
  STACK[0x3890] = v157;
  LODWORD(v160) = v148 ^ v157;
  LODWORD(STACK[0x3798]) = v162;
  LODWORD(v148) = v139 ^ v162;
  LODWORD(v151) = v139 ^ v162 ^ v99;
  v165 = v160 ^ v151;
  LODWORD(v143) = *(v4 + ((v165 >> 22) & 0x3FC)) ^ v143 ^ __ROR4__(*(v4 + 4 * BYTE1(v165)), 16);
  LODWORD(v108) = __ROR4__(*(v4 + 4 * BYTE2(v165)), 8);
  LODWORD(v160) = *(v4 + 4 * (v160 ^ v151));
  LODWORD(STACK[0x3788]) = v164;
  v166 = v143 ^ v108 ^ v164 ^ __ROR4__(v160, 24);
  LODWORD(v61) = v139 ^ v1;
  LODWORD(v139) = v139 ^ v1 ^ v99 ^ v166;
  LODWORD(STACK[0x3750]) = v151 ^ v1;
  LODWORD(STACK[0x37F8]) = v139;
  LODWORD(v139) = v151 ^ v1 ^ v79 ^ v139;
  STACK[0x3808] = v165;
  LODWORD(STACK[0x3748]) = v139;
  v167 = v165 ^ v153 ^ v139;
  LODWORD(v143) = *(v4 + ((v167 >> 22) & 0x3FC)) ^ ((STACK[0x3B28] & v100) >> v120) ^ STACK[0x3B30] ^ __ROR4__(*(v4 + 4 * BYTE1(v167)), 16) ^ __ROR4__(*(v4 + 4 * (v165 ^ v153 ^ v139)), 24) ^ __ROR4__(*(v4 + 4 * BYTE2(v167)), 8);
  LODWORD(STACK[0x3758]) = v166;
  v168 = v143 ^ v166 ^ v148;
  v169 = v143 ^ v166 ^ v1;
  LODWORD(v160) = *(v101 + ((v169 >> 22) & 0x3FC)) ^ __ROR4__(*(v101 + 4 * BYTE1(v169)), 16);
  LODWORD(STACK[0x38EC]) = v61;
  v170 = v143 ^ v61;
  LODWORD(v153) = *(v101 + 4 * BYTE2(v170));
  LODWORD(v165) = *(v101 + ((v170 >> 22) & 0x3FC));
  LODWORD(STACK[0x37E8]) = v160 ^ __ROR4__(*(v101 + 4 * BYTE2(v169)), 24);
  LODWORD(STACK[0x37D0]) = v165 ^ __ROR4__(v153, 24);
  STACK[0x37F0] = v167;
  LODWORD(STACK[0x3760]) = *(v101 + (((v168 ^ v79 ^ v167) >> 22) & 0x3FC)) ^ __ROR4__(*(v101 + 4 * ((v168 ^ v79 ^ v167) >> 16)), 24) ^ __ROR4__(*(v101 + 4 * ((v168 ^ v79 ^ v167) >> 8)), 16) ^ __ROR4__(*(v101 + 4 * (v168 ^ v79 ^ v167)), 8);
  LODWORD(v4) = STACK[0x38F4];
  LODWORD(v143) = STACK[0x38F4] & 0x362433F6 ^ 0x1B1219FB;
  v171 = (v113 & v143) >> v54;
  LODWORD(STACK[0x37B0]) = v171 ^ ((v143 & v121) << v114);
  LODWORD(v165) = v171 + ((v43 & v143) << v114);
  LODWORD(STACK[0x3730]) = *(v101 + 4 * v169);
  LODWORD(STACK[0x3728]) = *(v101 + 4 * BYTE1(v170));
  LODWORD(STACK[0x3A10]) = *(v101 + 4 * v170);
  LODWORD(STACK[0x3718]) = *(v101 + 4 * BYTE2(v168));
  LODWORD(STACK[0x3A08]) = *(v101 + 4 * BYTE1(v168));
  LODWORD(STACK[0x3710]) = *(v101 + ((v168 >> 22) & 0x3FC));
  LODWORD(STACK[0x39E8]) = *(v101 + 4 * v168);
  LODWORD(v101) = v121;
  STACK[0x3708] = ((STACK[0x3AF0] & v121) << v10) | STACK[0x3B10];
  LODWORD(v171) = v8;
  LODWORD(v143) = v8 & 0x833FA996 ^ 0x419FD4CB;
  v172 = (v143 & v121) << v114;
  LODWORD(v79) = v113;
  LOBYTE(v121) = v54;
  LODWORD(STACK[0x39E0]) = v172 + ((v143 & v113) >> v54);
  LODWORD(v143) = v4 & 0x909F3156 ^ 0x484F98AB;
  v173 = v113 & v143;
  v174 = (v43 & v143) << v114;
  LOBYTE(v61) = v114;
  LODWORD(STACK[0x3868]) = (v173 >> v54) ^ v174;
  LODWORD(STACK[0x3898]) = v174 + (v173 >> v120);
  LODWORD(v174) = v8 & 0x11B6E102 ^ 0x8DB7081;
  v175 = v174 & v100;
  v176 = (v174 & v101) << v10;
  LODWORD(STACK[0x3774]) = (v175 >> v120) | v176;
  LODWORD(STACK[0x3780]) = v176 ^ (v175 >> v54);
  v177 = ((v43 & (v4 & 0xFB732178 ^ 0xFDB990BC)) << v114) + ((v113 & (v4 & 0xFB732178 ^ 0xFDB990BC)) >> v120);
  LODWORD(v175) = v8 & 0x3FEEE116 ^ 0x1FF7708B;
  v178 = v100;
  LODWORD(STACK[0x3B50]) = v175;
  LODWORD(STACK[0x3768]) = ((v175 & v101) << v10) ^ ((v175 & v100) >> v121);
  LODWORD(STACK[0x3A18]) = ((v43 & STACK[0x3A18]) << v114) ^ ((v113 & STACK[0x3A18]) >> v120);
  LODWORD(STACK[0x3860]) = ((STACK[0x3B18] & v100) >> v121) | ((STACK[0x3B18] & v101) << v10);
  LODWORD(v175) = v4 & 0xFA5BE540 ^ 0x7D2DF2A0;
  v179 = (v43 & v175) << v114;
  LODWORD(STACK[0x3B60]) = v175;
  v180 = v175 & v100;
  LODWORD(STACK[0x3740]) = v179 | (v180 >> v120);
  LODWORD(v170) = (v180 >> v121) | v179;
  LODWORD(v179) = v8 & 0xDEC5367C ^ 0xEF629B3E;
  v181 = (v179 & v101) << v10;
  v182 = v179 & v113;
  LODWORD(STACK[0x3DC8]) = (v182 >> v121) ^ v181;
  LODWORD(STACK[0x36F8]) = v181 + (v182 >> v120);
  LODWORD(STACK[0x3858]) = (((v4 & 0xB2769982 ^ 0xD93B4CC1) & v101) << v10) ^ (((v4 & 0xB2769982 ^ 0xD93B4CC1) & v100) >> v120);
  LODWORD(STACK[0x3848]) = (((v8 & 0x15E20DE6 ^ 0x8AF106F3) & v43) << v114) | (((v8 & 0x15E20DE6 ^ 0x8AF106F3) & v113) >> v121);
  LODWORD(v181) = v4 & 0x2F2FFFB8 ^ 0x9797FFDC;
  v183 = (v113 & v181) >> v121;
  LODWORD(STACK[0x3B30]) = v181;
  v184 = v181 & v101;
  STACK[0x3B18] = v184;
  LODWORD(STACK[0x36B8]) = (v184 << v10) | v183;
  LODWORD(STACK[0x36A8]) = (((v8 & 0x2A9602F2 ^ 0x954B0179) & v43) << v114) + (((v8 & 0x2A9602F2 ^ 0x954B0179) & v100) >> v120);
  LODWORD(v184) = v8 & 0x3588D01A ^ 0x9AC4680D;
  LODWORD(STACK[0x3B10]) = v184;
  LODWORD(STACK[0x36E0]) = ((v184 & v100) >> v120) | ((v184 & v101) << v114);
  LODWORD(STACK[0x3698]) = ((v43 & (v4 & 0x39336AC2 ^ 0x9C99B561)) << v10) + ((v113 & (v4 & 0x39336AC2 ^ 0x9C99B561)) >> v121);
  LODWORD(v184) = v4 & 0xCE7CF850 ^ 0x673E7C28;
  v185 = (v43 & v184) << v114;
  LODWORD(STACK[0x3B28]) = v184;
  v186 = v184 & v100;
  STACK[0x3B20] = v186;
  LODWORD(STACK[0x3690]) = (v186 >> v121) | v185;
  LODWORD(STACK[0x3678]) = (((v8 & 0x671A3392 ^ 0x338D19C9) & v113) >> v120) | (((v8 & 0x671A3392 ^ 0x338D19C9) & v101) << v10);
  LODWORD(v185) = v4 & 0xEE5583C2 ^ 0x772AC1E1;
  v187 = (v43 & v185) << v10;
  LODWORD(STACK[0x3720]) = v187 | ((v113 & v185) >> v120);
  LODWORD(STACK[0x366C]) = v187 + ((v185 & v100) >> v121);
  LODWORD(STACK[0x3D20]) = ((v43 & STACK[0x3B08]) << v10) + ((v113 & STACK[0x3B08]) >> v120);
  LODWORD(STACK[0x36E8]) = (((v4 & 0x7994116 ^ 0x83CCA08B) & v101) << v114) + (((v4 & 0x7994116 ^ 0x83CCA08B) & v100) >> v120);
  LODWORD(v186) = (((v8 & 0xC8D27E24 ^ 0x64693F12) & v43) << v10) + (((v8 & 0xC8D27E24 ^ 0x64693F12) & v113) >> v121);
  LOBYTE(v8) = v10;
  LODWORD(STACK[0x3650]) = (STACK[0x3AE0] << v10) ^ STACK[0x3AE8];
  LODWORD(v185) = v171 & 0xBDDC2C28 ^ 0x5EEE1614;
  v188 = (v185 & v100) >> v120;
  v189 = v185 & v43;
  LODWORD(STACK[0x3990]) = v188 + (v189 << v10);
  LODWORD(STACK[0x3D90]) = v188 | (v189 << v114);
  LODWORD(STACK[0x3680]) = (((v4 & 0x36E3BFC6 ^ 0x1B71DFE3) & v100) >> v120) | (((v4 & 0x36E3BFC6 ^ 0x1B71DFE3) & v101) << v114);
  LODWORD(STACK[0x35FC]) = (((v171 & 0x8DC44764 ^ 0xC6E223B2) & v43) << v10) + (((v171 & 0x8DC44764 ^ 0xC6E223B2) & v113) >> v121);
  LODWORD(v189) = v171 & 0x23B20F5E ^ 0x91D907AF;
  v190 = v189 & v43;
  v191 = v189 & v113;
  STACK[0x3AF0] = v190;
  STACK[0x3AE8] = v191;
  LODWORD(v114) = (v191 >> v120) + (v190 << v10);
  LODWORD(v189) = v4 & 0xE18A6CA0 ^ 0x70C53650;
  v192 = v189 & v101;
  v193 = v189 & v100;
  STACK[0x3AE0] = v192;
  STACK[0x3AD8] = v193;
  LODWORD(v167) = (v193 >> v121) ^ (v192 << v61);
  LODWORD(v99) = v4;
  LODWORD(v192) = v4 & 0x886C5FE4 ^ 0xC4362FF2;
  LODWORD(STACK[0x3B08]) = v192;
  LODWORD(STACK[0x36F0]) = ((v43 & v192) << v10) | ((v113 & v192) >> v120);
  LODWORD(STACK[0x35C0]) = (((v171 & 0x7BDF2B8A ^ 0x3DEF95C5) & v100) >> v121) + (((v171 & 0x7BDF2B8A ^ 0x3DEF95C5) & v101) << v61);
  LODWORD(v4) = (((v4 & 0xB9956C4C ^ 0x5CCAB626) & v101) << v10) | (((v4 & 0xB9956C4C ^ 0x5CCAB626) & v100) >> v121);
  v194 = v99 & 0xC6F7B37A ^ 0x637BD9BD;
  LODWORD(STACK[0x35D8]) = ((v43 & v194) << v61) | ((v113 & v194) >> v120);
  LODWORD(v1) = v171 & 0x88D94C76 ^ 0x446CA63B;
  LODWORD(STACK[0x3888]) = ((v1 & v100) >> v121) ^ ((v1 & v101) << v10);
  LODWORD(v189) = v171 & 0x757C000A ^ 0x3ABE0005;
  v195 = (v189 & v113) >> v120;
  STACK[0x3B78] = ((v189 & v43) << v10) ^ v195;
  LODWORD(v195) = ((v189 & v101) << v10) | v195;
  LODWORD(v189) = v165 ^ LODWORD(STACK[0x3DE0]);
  LODWORD(v192) = STACK[0x3A30];
  v196 = STACK[0x3A30] & v113;
  STACK[0x3D48] = v196;
  v197 = v192 & v43;
  STACK[0x3DE0] = v197;
  v198 = v196 >> v120;
  v199 = v197 << v61;
  LODWORD(v196) = (v196 >> v120) ^ (v197 << v61);
  LODWORD(STACK[0x3960]) = LODWORD(STACK[0x3AA0]) ^ v196;
  LODWORD(STACK[0x35A0]) = v196 ^ v177;
  v200 = STACK[0x3790];
  LODWORD(STACK[0x3598]) = (v198 | STACK[0x3790]) ^ v170;
  LODWORD(v165) = STACK[0x3A48];
  v201 = STACK[0x3A48] & v43;
  v202 = v201 << v10;
  STACK[0x34E8] = v202;
  LODWORD(STACK[0x36D8]) = (STACK[0x3D38] + v202) ^ v186;
  v203 = STACK[0x3A78] << v8;
  LODWORD(STACK[0x3940]) = (v203 | v198) ^ LODWORD(STACK[0x3AC8]);
  STACK[0x3700] = (v203 | v198) ^ v189;
  LODWORD(STACK[0x36D0]) = (v203 | v198) ^ LODWORD(STACK[0x3D90]);
  v204 = STACK[0x3A80] >> v121;
  LODWORD(STACK[0x3590]) = (v204 | v199) ^ v114;
  v205 = v165 & v79;
  v206 = v205 >> v120;
  v207 = STACK[0x3DE8];
  LODWORD(STACK[0x36C8]) = (STACK[0x3DE8] | (v205 >> v120)) ^ v167;
  LOBYTE(v170) = v61;
  v208 = v201 << v61;
  v209 = v205 >> v121;
  LODWORD(STACK[0x36C0]) = ((v205 >> v121) + v208) ^ v4;
  LODWORD(STACK[0x3600]) = (v199 + v204) ^ v195;
  LODWORD(STACK[0x3AA0]) = v99 & 0xA9BDBD82;
  LODWORD(v205) = v99 & 0xA9BDBD82 ^ 0x54DEDEC1;
  LODWORD(v195) = v178;
  v210 = (v205 & v178) >> v121;
  LOBYTE(v178) = v170;
  STACK[0x3AC8] = v210;
  LODWORD(STACK[0x3878]) = (v207 + v206) ^ (v210 | ((v43 & v205) << v170));
  LODWORD(v207) = v99 & 0x15E20DE6 ^ 0x8AF106F3;
  v211 = (v207 & v195) >> v120;
  LODWORD(v201) = v171;
  LODWORD(v210) = v171 & 0x39336AC2 ^ 0x9C99B561;
  v212 = (v210 & v43) << v8;
  LODWORD(v205) = v201 & 0x4A7F9CB6 ^ 0x253FCE5B;
  LODWORD(v170) = v101;
  v213 = (v205 & v101) << v178;
  LODWORD(STACK[0x39C0]) = v207;
  v214 = v207 & v170;
  LODWORD(v207) = v170;
  STACK[0x39D0] = v211;
  LODWORD(STACK[0x3688]) = (v214 << v8) | v211;
  LODWORD(v211) = STACK[0x3DA8];
  LODWORD(STACK[0x3578]) = (LODWORD(STACK[0x3DA8]) >> 8) & 0xFF00;
  LODWORD(STACK[0x3570]) = (v211 << 8) & 0xFF0000;
  LODWORD(STACK[0x3568]) = STACK[0x3DD8] & 0xFF000000 ^ (v211 << 24);
  v215 = v205 & v195;
  STACK[0x39F0] = v215;
  LODWORD(STACK[0x3560]) = v213 | (v215 >> v121);
  v216 = v210 & v79;
  STACK[0x39A0] = v216;
  STACK[0x39D8] = v212;
  LODWORD(STACK[0x3558]) = (v216 >> v121) | v212;
  LODWORD(STACK[0x36A0]) = bswap32(STACK[0x3DB0]);
  STACK[0x3D88] = v194 & v170;
  STACK[0x3A78] = (v194 & v195) >> v121;
  LODWORD(v211) = v79;
  STACK[0x3D90] = v1 & v43;
  STACK[0x3A80] = (v1 & v79) >> v120;
  LODWORD(v215) = v208 | STACK[0x3DF0];
  LODWORD(STACK[0x34B0]) = v215;
  LODWORD(STACK[0x3D78]) = v215 ^ LODWORD(STACK[0x3CB8]);
  STACK[0x3DD8] = STACK[0x3D48] >> v121;
  LOBYTE(v79) = v121;
  LODWORD(STACK[0x3918]) = LODWORD(STACK[0x3A50]) ^ v209 ^ v208;
  LODWORD(v1) = v200;
  LODWORD(v200) = v204 | v200;
  LODWORD(v216) = STACK[0x3D98];
  LODWORD(STACK[0x3540]) = v200;
  LODWORD(STACK[0x3D48]) = v216 ^ v200;
  v217 = STACK[0x3DE0] << v8;
  LODWORD(STACK[0x35B0]) = LODWORD(STACK[0x3D10]) ^ v206;
  LODWORD(v216) = STACK[0x3D50];
  STACK[0x3DA0] = v199;
  LODWORD(STACK[0x3660]) = v216 ^ v199;
  LODWORD(STACK[0x3D50]) = (v204 | v203) ^ LODWORD(STACK[0x3CC0]);
  v218 = v203 ^ v198;
  LODWORD(STACK[0x3D98]) = v198 | v199;
  LODWORD(STACK[0x3DE0]) = v1 ^ v198;
  STACK[0x3D10] = v217;
  LODWORD(v198) = v198 ^ v217;
  LODWORD(v170) = STACK[0x3778];
  LODWORD(v216) = LODWORD(STACK[0x3A20]) ^ LODWORD(STACK[0x3778]);
  HIDWORD(v108) = STACK[0x3A10];
  LODWORD(v108) = STACK[0x3A10];
  LODWORD(STACK[0x3520]) = v108 >> 8;
  HIDWORD(v108) = STACK[0x3A08];
  LODWORD(v108) = STACK[0x3A08];
  LODWORD(STACK[0x3538]) = v108 >> 16;
  HIDWORD(v108) = STACK[0x39E8];
  LODWORD(v108) = STACK[0x39E8];
  LODWORD(STACK[0x351C]) = v108 >> 8;
  v219 = (STACK[0x3CC8] & v207) << v178;
  v220 = STACK[0x3CE8] >> v121;
  STACK[0x3670] = v220;
  LODWORD(STACK[0x3588]) = v220 ^ v219;
  v221 = (STACK[0x3DD0] & v43) << v8;
  v222 = STACK[0x3D18] >> v120;
  STACK[0x3930] = v221;
  LODWORD(STACK[0x3658]) = v222 ^ v221;
  v223 = STACK[0x38F4];
  LODWORD(v222) = STACK[0x38F4] & 0x20C39C28 ^ 0x9061CE14;
  STACK[0x3500] = (v222 & v195) >> v120;
  STACK[0x34F0] = (v43 & v222) << v8;
  LODWORD(STACK[0x3580]) = LODWORD(STACK[0x39E0]) ^ v170;
  STACK[0x3A20] = v213;
  LODWORD(v221) = STACK[0x3CF0];
  STACK[0x3CC8] = (STACK[0x3CF0] & v207) << v178;
  STACK[0x3CC0] = (v221 & v195) >> v79;
  LODWORD(v222) = v223 & 0xF5224E2 ^ 0x7A91271;
  v224 = v222 & v207;
  LODWORD(v207) = STACK[0x38F0];
  v225 = (v222 & v195) >> v120;
  STACK[0x39E0] = v224;
  STACK[0x39E8] = v225;
  LODWORD(v212) = (v224 << v8) | v225;
  LODWORD(v222) = v207 & 0xCCC7773C ^ 0xE663BB9E;
  v226 = (v222 & v211) >> v79;
  v227 = v222 & v43;
  STACK[0x3A08] = v227;
  STACK[0x3A10] = v226;
  LODWORD(v199) = v207 & 0x820608B6 ^ 0x4103045B;
  v228 = v199 & v43;
  v229 = (v199 & v211) >> v120;
  STACK[0x3A48] = v228;
  STACK[0x3A50] = v229;
  LODWORD(v199) = (v228 << v178) | v229;
  LODWORD(v229) = STACK[0x3898];
  LODWORD(STACK[0x3548]) = v216;
  STACK[0x36F0] = (v1 + v204) ^ v229 ^ v216;
  LODWORD(STACK[0x34E0]) = LODWORD(STACK[0x3A18]) ^ STACK[0x3DD8] ^ v203;
  LODWORD(v207) = STACK[0x3D38] | v208;
  LODWORD(v229) = STACK[0x3860];
  LODWORD(STACK[0x35D0]) = v207;
  LODWORD(STACK[0x3640]) = v207 ^ v229;
  v230 = STACK[0x3DF0];
  v231 = STACK[0x3DE8];
  LODWORD(STACK[0x3638]) = (STACK[0x3DE8] | STACK[0x3DF0]) ^ LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x3630]) = LODWORD(STACK[0x3D98]) ^ LODWORD(STACK[0x3848]);
  LODWORD(v229) = STACK[0x36B8];
  LODWORD(STACK[0x3648]) = v1 + v204;
  LODWORD(STACK[0x34D8]) = (v1 + v204) ^ v229;
  v232 = STACK[0x34E8];
  LODWORD(STACK[0x3620]) = STACK[0x34E8] ^ LODWORD(STACK[0x36A8]) ^ v206;
  LODWORD(STACK[0x3698]) ^= v218;
  LODWORD(STACK[0x34D4]) = (v204 | v203) ^ LODWORD(STACK[0x3690]);
  LODWORD(STACK[0x3690]) = (v208 + v206) ^ LODWORD(STACK[0x3678]);
  LODWORD(STACK[0x35F8]) = v208 ^ v206;
  LODWORD(STACK[0x34C8]) = v208 ^ v206 ^ v213 ^ ((v205 & v211) >> v120);
  STACK[0x3D18] = v204;
  STACK[0x36B8] = v203;
  LODWORD(v205) = STACK[0x366C];
  LODWORD(STACK[0x35CC]) = v204 + v203;
  LODWORD(STACK[0x3678]) = (v204 + v203) ^ v205;
  LODWORD(STACK[0x34C0]) = LODWORD(STACK[0x3650]) ^ v170 ^ LODWORD(STACK[0x34B0]);
  LODWORD(STACK[0x34B8]) = LODWORD(STACK[0x3DE0]) ^ v212;
  LODWORD(STACK[0x3DB0]) = v232 + v230;
  LODWORD(STACK[0x366C]) = (v232 + v230) ^ ((v227 << v178) + v226);
  LODWORD(STACK[0x3650]) = v218 ^ LODWORD(STACK[0x35FC]);
  LODWORD(v205) = LODWORD(STACK[0x35C0]) ^ v170;
  LODWORD(STACK[0x3898]) = v198;
  LODWORD(STACK[0x35FC]) = v205 ^ v198;
  LODWORD(v226) = STACK[0x3E10];
  STACK[0x3A18] = STACK[0x3D88] << v178;
  STACK[0x3A30] = STACK[0x3D90] << v8;
  STACK[0x36A8] = v208;
  LODWORD(STACK[0x3CF0]) = v230 + v208;
  LODWORD(STACK[0x3858]) = v232 | v206;
  LODWORD(STACK[0x3CE8]) = v209 + v232;
  v233 = STACK[0x3830];
  LODWORD(STACK[0x35AC]) = v1 + STACK[0x3830];
  LODWORD(STACK[0x35B8]) = v209 | STACK[0x3D30];
  STACK[0x3550] = v206;
  LODWORD(STACK[0x3CB8]) = v206 + v232;
  LODWORD(STACK[0x35C0]) = v231 + v209;
  return (*(v0 + 8 * v226))(v199 ^ v170, v233);
}

uint64_t sub_100D01920(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5)
{
  v9 = *a5;
  *(v5 - 1) = *(a5 - 1);
  *v5 = v9;
  return (*(v6 + 8 * (((v7 == 0) * v8) ^ a4)))();
}

uint64_t sub_100D01950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  LODWORD(STACK[0x3A28]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  v12 = -v10;
  v13 = *(v11 + 8 * (LODWORD(STACK[0x3D68]) - 16214));
  LODWORD(STACK[0x2BB0]) = 5;
  LODWORD(STACK[0x3D80]) = 7;
  LODWORD(STACK[0x3E18]) = 1;
  v14 = STACK[0x978];
  v15 = STACK[0x2A80];
  STACK[0x1108] = STACK[0x2A80];
  STACK[0x2A58] = v15;
  STACK[0x930] = a10;
  STACK[0x10E8] = STACK[0x10B8];
  v16 = STACK[0x960];
  STACK[0x480] = STACK[0x2B88];
  STACK[0x10F0] = STACK[0x3290];
  STACK[0x470] = a8;
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x39F0]) = 1;
  v17 = STACK[0x32D8];
  LODWORD(STACK[0x2A38]) = STACK[0x32D8];
  LODWORD(STACK[0x268C]) = a7;
  LODWORD(STACK[0x33E8]) = STACK[0x32E0];
  LODWORD(STACK[0x3710]) = STACK[0x3808];
  v18 = LODWORD(STACK[0x7F0]);
  LODWORD(STACK[0x31E8]) = v18;
  STACK[0x1FD8] = v12;
  LODWORD(STACK[0x3268]) = v17;
  STACK[0x2228] = LODWORD(STACK[0x2B80]);
  STACK[0x1C88] = LODWORD(STACK[0x2AB8]);
  STACK[0x39C0] = v18;
  return v13(a1, v14, a3, a4, a5, v16);
}

uint64_t sub_100D01C2C@<X0>(char a1@<W3>, int a2@<W4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v9 = *(v8 + a4);
  v10 = v9 + 2 * a1;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  *(v8 + a4) = v11 ^ v9;
  return (*(v7 + 8 * (((v4 + a4 == a3) * v5) ^ a2)))();
}

uint64_t sub_100D01CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x36C0] = 0;
  STACK[0x38B0] = 0;
  STACK[0x3808] = 0;
  STACK[0x3650] = 0;
  STACK[0x37A8] = 0;
  STACK[0x3838] = 0;
  STACK[0x38B8] = 0;
  STACK[0x36C8] = 0;
  STACK[0x36E8] = 0;
  STACK[0x3818] = 0;
  STACK[0x3878] = 0;
  LODWORD(STACK[0x3D88]) = 0;
  LODWORD(STACK[0x3CC8]) = 0;
  STACK[0x36F0] = *(v9 + LODWORD(STACK[0x3798]));
  LODWORD(STACK[0x3798]) = a7 + 7;
  v11 = *(v7 + 8 * (((((v10 ^ 0x7FA3) - 1531529874) & 0x5B48FFF2 ^ 0x1AD4) * (v8 == 7)) | v10 ^ 0x7FA3));
  LODWORD(STACK[0x3D58]) = 7;
  LODWORD(STACK[0x3D90]) = 128;
  return v11(a1, a2, 0);
}

uint64_t sub_100D01D6C@<X0>(int a1@<W2>, unsigned int a2@<W8>)
{
  v4 = *(v3 + 8 * (a2 ^ 0xC93917C4 ^ ((((a2 + 919011704) | 0xE08) + 5289) * (a2 > 0x4AC33E19))));
  LODWORD(STACK[0x3E18]) = a1;
  return v4(v2);
}

uint64_t sub_100D01E10@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v14 = (a5 + (*(STACK[0x3448] + v8) + v8) * a4) ^ a7;
  v15 = (v10 - a2 + ((v14 % 0x101) ^ v14)) ^ v9;
  v16 = v15 ^ a1;
  v17 = a2 - (v15 ^ a1);
  v18 = v10 - v16;
  v19 = v17 - v15 + (v18 ^ __ROR4__(v16, 29));
  v20 = v19 ^ 0x2AB77A17 ^ v15;
  v21 = v19 ^ 0x2AB77A17 ^ v18;
  v22 = (v19 ^ 0x2AB77A17) + v17;
  HIDWORD(v23) = v19 ^ 0x2AB77A17;
  LODWORD(v23) = v19;
  v24 = v20 + a3 + ((v23 >> 31) ^ v22 ^ v21);
  v25 = v24 + v20;
  HIDWORD(v23) = v24;
  LODWORD(v23) = v24;
  v26 = v24 + v20 + v7 + (((v23 >> 28) + (v24 ^ v21)) ^ (v22 - v24));
  return (*(v11 + 8 * ((7 * (v8 - 9595 + (v12 - 11554) == a6)) ^ v13)))(v26 ^ v25, (v26 + v22 - v24));
}

uint64_t sub_100D01EF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x3D50]) = (v65 - 6496) ^ 0x21EA;
  v68 = *(v67 + 8 * (((((v65 - 6496) ^ 0xFFFFF13A) + ((v65 - 6496) | 0x100C)) * (a3 & 1)) ^ v65));
  STACK[0x3D80] = a65;
  STACK[0x3788] = LODWORD(STACK[0x3D68]);
  LODWORD(STACK[0x3B00]) = v66;
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  STACK[0x23B0] = a6;
  LODWORD(STACK[0x32D8]) = STACK[0x1C90];
  return v68();
}

uint64_t sub_100D01F6C()
{
  v4 = *(v1 + 8 * v3);
  v5 = v4 + 0x7C94AD43D3ED3075 - (v4 << ((((v0 + 25) | 0x40) ^ 0x1Du) + v0 + 125));
  return (*(v2 + 8 * (v0 | (4 * (((((2 * v5) & 0xC66D17F74ADF7866 ^ v5 ^ 0xE3368BFBA56FBC33) - 0x5FCB393F795CECA8 + 2 * ((2 * v5) & 0xC66D17F74ADF7866 & (v5 ^ 0xE3368BFBA56FBC33))) & v4) == 0)))))();
}

uint64_t sub_100D02010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, unsigned int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  LODWORD(STACK[0x3D68]) = (v53 + 14905) | 0x16;
  STACK[0x3338] = STACK[0x2148] + a35;
  v56 = *(v55 + 8 * v53);
  STACK[0x32D0] = LODWORD(STACK[0x33E8]);
  LODWORD(STACK[0x32E0]) = STACK[0x3688];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  LODWORD(STACK[0x3808]) = STACK[0x3710];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x3958]) = v54;
  LODWORD(STACK[0x2B80]) = STACK[0x2228];
  return v56(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_100D02084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52)
{
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x3988]) = 0;
  v54 = (v52 - 70335003) & 0x4317BFE;
  STACK[0x3AF0] = v54;
  v55 = *(v53 + 8 * ((13957 * (LODWORD(STACK[0x3688]) == ((v54 - 2510) ^ (v52 + 14361)))) ^ v52));
  LODWORD(STACK[0x2B30]) = 2;
  LODWORD(STACK[0x3688]) = 3;
  STACK[0x3D78] = a52;
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x2B80]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  STACK[0x3D90] = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
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
  LODWORD(STACK[0x2B18]) = 1;
  LODWORD(STACK[0x2B08]) = 1;
  LODWORD(STACK[0x2AA0]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x840]) = 1;
  LODWORD(STACK[0x848]) = 1;
  LODWORD(STACK[0x8E8]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x2AC0]) = 1;
  LODWORD(STACK[0x8F0]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x868]) = 1;
  LODWORD(STACK[0x8F8]) = 1;
  LODWORD(STACK[0x870]) = 1;
  LODWORD(STACK[0x878]) = 1;
  LODWORD(STACK[0x2B10]) = 1;
  LODWORD(STACK[0x2AD0]) = 1;
  LODWORD(STACK[0x880]) = 1;
  LODWORD(STACK[0x888]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x890]) = 1;
  LODWORD(STACK[0x898]) = 1;
  LODWORD(STACK[0x2AD8]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x910]) = 1;
  LODWORD(STACK[0x8B0]) = 1;
  LODWORD(STACK[0x8B8]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x2BB0]) = STACK[0x2238];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  LODWORD(STACK[0x2B40]) = STACK[0x3E18];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(v54) = STACK[0x1C20];
  LODWORD(STACK[0x3438]) = STACK[0x1C20];
  LODWORD(STACK[0x3998]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = v54;
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  return v55(a1, 1);
}

uint64_t sub_100D02308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
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
  v6 = STACK[0x2238] != 35;
  v7 = 2 * (a5 ^ 0x70B9);
  LODWORD(STACK[0x3B08]) = v7 ^ 0x423C;
  STACK[0x3AF0] = 7050 * (v7 ^ 0x10A1u);
  v8 = *(v5 + 8 * (((8 * v6) | (16 * v6)) ^ v7));
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v9 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x3438]) = v9;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v10 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3280]) = v10;
  v11 = STACK[0x32E8];
  LODWORD(STACK[0x2B60]) = STACK[0x32E8];
  LODWORD(STACK[0x3488]) = v11;
  LODWORD(STACK[0x3B00]) = v11;
  LODWORD(STACK[0x3290]) = v11;
  v12 = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v12;
  v13 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v13;
  LODWORD(STACK[0x3AE8]) = v13;
  v14 = STACK[0x21F4];
  LODWORD(STACK[0x3298]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v14;
  v15 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v15;
  v16 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3278]) = v16;
  LODWORD(STACK[0x3980]) = 48;
  LODWORD(STACK[0x2BB0]) = 34;
  LODWORD(STACK[0x3988]) = 31;
  v17 = STACK[0x3E0];
  v18 = STACK[0x2928];
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
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  STACK[0x3840] = 1;
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v18;
  STACK[0x3D50] = STACK[0x438];
  STACK[0x3AD8] = v17;
  STACK[0x32D8] = STACK[0x2618];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  LODWORD(STACK[0x32D0]) = STACK[0x3D90];
  return v8(a1, 0, a2, v17, a3, a4, v16);
}

uint64_t sub_100D025C8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v7 = -614530783 * *(a2 + v4 - 1);
  v8 = v7 ^ v2;
  v9 = (v8 + v3) >> 16;
  v10 = (v8 + v3 + v9) >> 8;
  v11 = (~v10 + v4 + v8 + v9) ^ a1;
  v12 = (v4 - 614488587 + v9 - v10 + v8 + ((v5 - 10442) | 0x2A80) - 1) ^ v7;
  return (*(v6 + 8 * ((985 * (LODWORD(STACK[0x4DF4]) <= v4)) ^ v5)))(v11 ^ (~((v12 + v3 + ((v12 + v3) >> 16)) >> 8) + v4 + v12 + ((v12 + v3) >> 16)));
}

uint64_t sub_100D026D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (((a1 ^ (2 * (STACK[0x4474] & a1))) & STACK[0x37C8]) >> LODWORD(STACK[0x6D04])) + ((a1 ^ (2 * (STACK[0x4474] & a1))) << LODWORD(STACK[0x6D00]));
  v14 = (*(STACK[0x3738] + a1) ^ (2 * (*(STACK[0x3738] + a1) & STACK[0x37D8]))) & STACK[0x3988];
  v15 = (*(STACK[0x3738] + a1) ^ (2 * (*(STACK[0x3738] + a1) & STACK[0x37D8]))) << STACK[0x3E18];
  v16 = a1 == 255;
  v17 = a1 + 1;
  v18 = (v14 >> v8) + v15;
  v19 = (v13 ^ LODWORD(STACK[0x6CC4]));
  v20 = STACK[0x1AA0];
  STACK[0x3340] = a8 ^ v12 ^ v11 ^ (v9 + 7385) ^ 0x79 ^ v18;
  *(v20 + v19) = a8 ^ v12 ^ v11 ^ (v9 - 39) ^ 0x79 ^ v18;
  v21 = v16;
  return (*(v10 + 8 * ((39 * v21) ^ v9)))(v17);
}

uint64_t sub_100D02874(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t (*a62)(uint64_t, uint64_t, uint64_t, _DWORD *, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a63)
{
  v69 = a4[19];
  v70 = (((a46 ^ 0xC0347310) + 1070304496) ^ ((a46 ^ 0xFC01EF70) + 66982032) ^ ((a46 ^ 0x7ABDA605) - 2059249157)) + (((a4[18] ^ 0xCC66AEF3) + 865685773) ^ ((a4[18] ^ 0xBE3818FA) + 1103619846) ^ ((a4[18] ^ 0x34D68C6C) - 886475884)) - 1609341533;
  v71 = (v70 ^ 0xEAF8AE07) & (2 * (v70 & 0xECFD0F27)) ^ v70 & 0xECFD0F27;
  v72 = ((2 * (v70 ^ 0xB29AA84D)) ^ 0xBCCF4ED4) & (v70 ^ 0xB29AA84D) ^ (2 * (v70 ^ 0xB29AA84D)) & v68;
  v73 = v72 ^ 0x4220A12A;
  v74 = (v72 ^ 0x14440400) & (4 * v71) ^ v71;
  v75 = ((4 * v73) ^ 0x799E9DA8) & v73 ^ (4 * v73) & (v68 - 2);
  v76 = (v75 ^ 0x58068520) & (16 * v74) ^ v74;
  v77 = ((16 * (v75 ^ 0x6612242)) ^ 0xE67A76A0) & (v75 ^ 0x6612242) ^ (16 * (v75 ^ 0x6612242)) & (v68 - 10);
  v78 = v76 ^ v68 ^ (v77 ^ 0x46622600) & (v76 << 8);
  a4[18] = v70 ^ (2 * ((v78 << 16) & 0x5E670000 ^ v78 ^ ((v78 << 16) ^ 0x276A0000) & (((v77 ^ 0x1805814A) << 8) & 0x5E670000 ^ 0x18400000 ^ (((v77 ^ 0x1805814A) << 8) ^ 0x67A70000) & (v77 ^ 0x1805814A)))) ^ 0x1A7E7B96;
  v79 = (((LODWORD(STACK[0x230]) ^ 0x39B0462D) - 967853613) ^ ((LODWORD(STACK[0x230]) ^ 0x486B01B5) - 1214972341) ^ ((LODWORD(STACK[0x230]) ^ 0x37537DFD) - 928218621)) + (((v69 ^ 0xEDF49ABD) + 302736707) ^ ((v69 ^ 0xE5EBA62F) + 437541329) ^ ((v69 ^ 0x4E9706F7) - 1318520567)) - 755875459;
  v80 = (v79 ^ 0x301C3208) & (2 * (v79 & 0xBA1E334D)) ^ v79 & 0xBA1E334D;
  v81 = ((2 * (v79 ^ 0x10305400)) ^ 0x545CCE9A) & (v79 ^ 0x10305400) ^ (2 * (v79 ^ 0x10305400)) & 0xAA2E674C;
  v82 = v81 ^ 0xAA222145;
  v83 = (v81 ^ 0x84608) & (4 * v80) ^ v80;
  v84 = ((4 * v82) ^ 0xA8B99D34) & v82 ^ (4 * v82) & 0xAA2E674C;
  v85 = (v84 ^ 0xA8280500) & (16 * v83) ^ v83;
  v86 = ((16 * (v84 ^ 0x2066249)) ^ 0xA2E674D0) & (v84 ^ 0x2066249) ^ (16 * (v84 ^ 0x2066249)) & 0xAA2E6740;
  v87 = v85 ^ 0xAA2E674D ^ (v86 ^ 0xA2266400) & (v85 << 8);
  a4[19] = v79 ^ (2 * ((v87 << 16) & 0x2A2E0000 ^ v87 ^ ((v87 << 16) ^ 0x674D0000) & (((v86 ^ 0x808030D) << 8) & 0x2A2E0000 ^ (((v86 ^ 0x808030D) << 8) ^ 0x2E670000) & (v86 ^ 0x808030D) ^ 0x80000))) ^ 0xECD2C7B2;
  v88 = a4[21];
  v89 = (((a68 ^ 0x8A643A99) + 1973142887) ^ ((a68 ^ 0xDCF93E25) + 587645403) ^ ((a68 ^ 0x10153ED9) - 269827801)) + (((a4[20] ^ 0xE6F24D4D) + 420328115) ^ ((a4[20] ^ 0x4B3E4F00) - 1262374656) ^ ((a4[20] ^ 0xEB443828) + 347850712)) - 1923795070;
  a4[20] = v89 ^ ((v89 ^ 0xC996B1B3) + 908954869) ^ ((v89 ^ 0xEFE182E0) + 274382760) ^ ((v89 ^ 0xF84C0F14) + 133640788) ^ ((v89 ^ 0xDE7FFEFF) + 566543289) ^ 0x46CCF8DD;
  v90 = (((LODWORD(STACK[0x26C]) ^ 0xEF820558) + 276691624) ^ ((LODWORD(STACK[0x26C]) ^ 0x1C8010B8) - 478154936) ^ ((LODWORD(STACK[0x26C]) ^ 0xB58A2F85) + 1249235067)) + (((v88 ^ 0x9DBA5CAD) + 1648730963) ^ ((v88 ^ 0xD2D85F91) + 757571695) ^ ((v88 ^ 0x9EA3959) - 166345049)) - 818206305;
  v91 = (v90 ^ 0xBD906A2B) & (2 * (v90 & 0xBDD54B2B)) ^ v90 & 0xBDD54B2B;
  v92 = ((2 * (v90 ^ 0x9D90EC7D)) ^ 0x408B4EAC) & (v90 ^ 0x9D90EC7D) ^ (2 * (v90 ^ 0x9D90EC7D)) & 0x2045A756;
  v93 = v92 ^ 0x2044A152;
  v94 = (v92 ^ 0x10404) & (4 * v91) ^ v91;
  v95 = ((4 * v93) ^ 0x81169D58) & v93 ^ (4 * v93) & 0x2045A754;
  v96 = (v95 ^ 0x48550) & (16 * v94) ^ v94;
  v97 = ((16 * (v95 ^ 0x20412206)) ^ 0x45A7560) & (v95 ^ 0x20412206) ^ (16 * (v95 ^ 0x20412206)) & 0x2045A750;
  v98 = v96 ^ 0x2045A756 ^ (v97 ^ 0x402500) & (v96 << 8);
  a4[21] = v90 ^ (2 * ((v98 << 16) & 0x20450000 ^ v98 ^ ((v98 << 16) ^ 0x27560000) & (((v97 ^ 0x20058216) << 8) & 0x20450000 ^ 0x20400000 ^ (((v97 ^ 0x20058216) << 8) ^ 0x45A70000) & (v97 ^ 0x20058216)))) ^ 0xFB5E3FE2;
  return a62(a1, a2, a3, a4, a59 - 320, 0, 2018409467, 2276551197, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_100D02FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a1 - 1;
  *(a2 + v11) = *(v4 + v11) ^ *(v2 + v11) ^ (95 * v11) ^ (-61 * v11) ^ *(v6 + v11) ^ *(v7 + v11) ^ *(v5 + v11) ^ *(v8 + v11) ^ *(v3 + v11);
  return (*(v10 + 8 * (((v11 == 0) * ((v9 + 700328778) & 0xD641F8FB ^ 0x177A)) ^ v9)))();
}

uint64_t sub_100D030B4()
{
  v5 = *(&STACK[0x320] + (v2 + 2361 * v0) % 0xA88u);
  v6 = *(&STACK[0xDE0] + (825 * (v5 + (v1 ^ 0xDF4FA84) + ((v5 < 0x60) << 8)) + 114695145) % 0x1940);
  v7 = v6;
  v8 = 2361 * (((BYTE1(v6) ^ 0xF96ED0B3) - 1617313613) ^ ((BYTE1(v6) ^ 0xF61E1A60) - 1863775646) ^ ((BYTE1(v6) ^ 0xF70CA60) + 1770510946)) + 1670734494;
  v9 = 2361 * (((HIBYTE(v6) ^ 0x529442FB) - 893925703) ^ ((HIBYTE(v6) ^ 0x70BA99F9) - 392618565) ^ ((HIBYTE(v6) ^ 0x222EDB7E) - 1173528770)) - 526402111;
  v10 = (v6 ^ 0x4D23C765) + 1926358521;
  v11 = (v6 ^ 0xE21670DF) - 572239293;
  v12 = BYTE2(v6);
  v13 = v10 ^ v11 ^ ((v7 ^ 0xAF35B753) - 1865968177);
  v14 = v8 % 0xA88;
  LOBYTE(v8) = *(&STACK[0x320] + v9 % 0xA88);
  v15 = ((v12 ^ 0xED8C7978) + 1578188153) ^ ((v12 ^ 0x51E7342E) - 495292369);
  v16 = v12 ^ 0xBC6B4D36;
  LOBYTE(v12) = *(&STACK[0x320] + v14);
  v17 = 2361 * (v15 ^ (v16 + 267782455)) + 2059586920;
  LOBYTE(v15) = (v8 & 0xA0 | 0xE) ^ v8 & 0x1C;
  LOBYTE(v17) = *(&STACK[0x320] + v17 % 0xA88);
  v18 = v17 & 0x24 | 0xC2;
  v19 = (v17 ^ (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * (((2 * (v17 & 0x24)) | 4) & (v17 ^ 0x20) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) << 8;
  LOBYTE(v14) = (v12 & 0xA0 | 0x12) ^ v12 & 0x64;
  LOBYTE(v12) = v12 ^ (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * (v12 & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  LOBYTE(v13) = *(&STACK[0x320] + (2361 * v13 + 1074702068) % 0xA88);
  v20 = (v19 ^ 0xFF8B41) & (((v8 ^ (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) << 16) ^ 0xF2AB41) | v19 & 0x5400;
  LOBYTE(v19) = v13 & 0xCE ^ 0x97;
  LOBYTE(v13) = v13 ^ (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & 0x2E ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19));
  *(&STACK[0xDE0] + (v3 + 825 * v0) % 0x1940u) = (((((v20 ^ 0x7E14BA) & (v12 ^ 0xFFFF3B) ^ (v12 & 4 | 0x824400)) << 8) ^ 0xDF6C09B9) & (v13 ^ 0xFFFFFF31) | v13 & 0x46) ^ 0x11F34516;
  return (*(v4 + 8 * ((2 * (v0 == 255)) | (16 * (v0 == 255)) | v1)))();
}

uint64_t sub_100D034EC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x1BA8] = 0;
  v10 = STACK[0x39C0];
  if (!a5)
  {
    LODWORD(v10) = a2;
  }

  STACK[0x39C0] = (v10 + 1);
  *(a1 + v7) = a3;
  return (*(v8 + 8 * ((106 * (v9 < ((a7 + 146403256) & 0xF745BFBD) - 7421)) ^ a7)))();
}

uint64_t sub_100D0378C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D60]) = 0;
  v3 = *(v1 + 8 * ((82 * ((v2 ^ 0x9F) & 1)) ^ a1));
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3D68]) = 1;
  return v3(1, (a1 + 1319963631) & 0xB152DFE9, 1, 0);
}

uint64_t sub_100D038B0()
{
  v1 = *(v0 + 8 * SLODWORD(STACK[0x35AC]));
  STACK[0x36A0] = STACK[0x3D80];
  STACK[0x3980] = STACK[0x3790];
  return v1();
}

uint64_t sub_100D03960(uint64_t a1)
{
  LODWORD(STACK[0x3D68]) = v1 + 5718;
  v6 = *(v4 + 8 * (((v1 - 4423 + 3525 * (v1 ^ 0x3C4E)) * v3) ^ v1));
  LODWORD(STACK[0x3948]) = 3;
  LODWORD(STACK[0x33E8]) = 9;
  STACK[0x3998] = STACK[0x3D60];
  STACK[0x39E8] = STACK[0x3D88];
  v7 = STACK[0x10F8];
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  LODWORD(STACK[0x39A0]) = STACK[0x3E40];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  v8 = STACK[0x31D0];
  STACK[0x3540] = v5;
  LODWORD(STACK[0x3710]) = STACK[0x3B08];
  LODWORD(STACK[0x38C8]) = v8;
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x2424]) = STACK[0x3D28];
  LODWORD(STACK[0x31E8]) = STACK[0x3AE8];
  LODWORD(STACK[0x351C]) = STACK[0x3AD8];
  LODWORD(STACK[0x3988]) = STACK[0x3D90];
  LODWORD(STACK[0x2500]) = STACK[0x3AF0];
  LODWORD(STACK[0x3810]) = STACK[0x3B00];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  STACK[0x3318] = LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  LODWORD(STACK[0x3980]) = v2;
  return v6(a1, v7);
}

uint64_t sub_100D03BD8(int a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v9 = (a6 + a4) >> 16;
  v10 = (a6 + a4 + v9) >> 8;
  v11 = ((v9 - 1789034420 - v10 + a6 + v7) >> (a2 ^ 0x5C)) + a6;
  v12 = v9 + ((v11 + a3 + v9 - v10) >> 5);
  v13 = v12 - v10 + a1 + v11 - ((v12 + v11 + a1 - ((v12 + v11 + a1 - v10) >> 11) - v10) >> 2) - ((v12 + v11 + a1 - v10) >> 11);
  LODWORD(STACK[0x3E38]) = v13;
  v14 = (v13 ^ 0x21AA343D) + ((v13 ^ 0x21AA343D) >> 9) - (((v13 ^ 0x21AA343D) + ((v13 ^ 0x21AA343D) >> 9)) >> 7);
  v15 = (v14 ^ 0xEB4534CA) - ((v14 ^ 0xEB4534CA) >> 15) + (((v14 ^ 0xEB4534CA) - ((v14 ^ 0xEB4534CA) >> 15)) >> 8);
  v16 = v15 - 1955801633 + ((v15 - 1955801633) >> 10) + ((v15 - 1955801633 + ((v15 - 1955801633) >> 10)) >> 2);
  LODWORD(STACK[0x3E18]) = v16;
  v17 = v16 - 1325275103 - ((v16 - 1325275103) >> 15);
  v18 = STACK[0x3910];
  v19 = STACK[0x3ED8];
  v20 = STACK[0x3ED8] + (0x1B584D6 % STACK[0x3910]);
  v21 = *STACK[0x3E40];
  v22 = *v6 & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v21 + (((v20 & 0x43FED780 | 0xBC012879) + 2050767130 + (v20 & 0xBC012878 | 0x43FED786) + 1) & v22));
  v24 = (__ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8) + v23) ^ 0xB88801D4E1C76353;
  v25 = __ROR8__(v24, 8);
  v26 = v24 ^ __ROR8__(v23, 61);
  v27 = (v25 + v26) ^ 0x38C8B16AE7056877;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xE580B17D8CC5E551;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0x4A51B22D4B7360BLL - ((v31 + v30) | 0x4A51B22D4B7360BLL) + ((v31 + v30) | 0xFB5AE4DD2B48C9F4)) ^ 0x1AFB1986FA1D308ELL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (0x1443672E00B0FCD6 - ((v34 + v33) | 0x1443672E00B0FCD6) + ((v34 + v33) | 0xEBBC98D1FF4F0329)) ^ 0x31DCD3DDFCEDBCB0;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xFA35E2CDCB3E31C7;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((v39 + v38) & 0xFFEA628EF16F8CCDLL ^ 0x28C2628651258885) + ((v39 + v38) & 0x159D710E907332 ^ 0x5981104801103) - 1) ^ 0xFA37F67175404A29;
  LOBYTE(v38) = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v38, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v20 & 7u))) ^ *v20;
  v41 = STACK[0x3ED8] + ((((v38 ^ 0x99) - 90) ^ ((v38 ^ 0xC) + 49) ^ ((v38 ^ 0x95) - 86)) + 101) % STACK[0x3910];
  LODWORD(v40) = (v41 & 0xFFFFFFF8) + 2050767130;
  v42 = *(v21 + (v40 & v22));
  v43 = v17 - (v17 >> 7);
  v44 = __ROR8__(v41 & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = (v44 + v42) ^ 0xB88801D4E1C76353;
  v46 = v45 ^ __ROR8__(v42, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (v47 + v46 - ((2 * (v47 + v46)) & 0xF37514F175068244) + 0x79BA8A78BA834122) ^ 0x41723B125D862955 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__((v47 + v46 - ((2 * (v47 + v46)) & 0xF37514F175068244) + 0x79BA8A78BA834122) ^ 0x41723B125D862955, 8) + v48) ^ 0xE580B17D8CC5E551;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0xE81BBA32F0A33E5ALL) - 0xBF222E687AE60D3) ^ 0x15AC2042A9046657;
  LODWORD(v42) = v43 + 2108822009 + ((v43 + 2108822009) >> 9) - ((v43 + 2108822009 + ((v43 + 2108822009) >> 9)) >> 6);
  v53 = v52 ^ __ROR8__(v50, 61);
  LODWORD(STACK[0x6C4C]) = (v42 ^ 0xDAB30723) - ((v42 ^ 0xDAB30723) >> 11) - (((v42 ^ 0xDAB30723) - ((v42 ^ 0xDAB30723) >> 11)) >> 5);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xDA604B0C03A2BF99;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xFA35E2CDCB3E31C7;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xD2F00CE620E5D3AELL;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  LOBYTE(v14) = *v41;
  LOBYTE(v41) = 8 * (v41 & 7);
  STACK[0x3D98] = ((((2 * (v60 + v59)) & 0x177F904D718A9026) - (v60 + v59) - 0xBBFC826B8C54814) ^ 0x333CE8E94AC297) >> v41;
  v61 = *(v21 + (v40 & v22));
  v62 = (v61 + v44) ^ 0xB88801D4E1C76353;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0x38C8B16AE7056877;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xE580B17D8CC5E551;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xE1A1FD5BD155F97ALL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (0xCB6EB95A28C2B052 - ((v70 + v69) | 0xCB6EB95A28C2B052) + ((v70 + v69) | 0x349146A5D73D4FADLL)) ^ 0xEEF10DA9D49FF034;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xFA35E2CDCB3E31C7;
  v74 = __ROR8__(v73, 8);
  v75 = v73 ^ __ROR8__(v72, 61);
  LOBYTE(v75) = (((__ROR8__((v74 + v75) ^ 0xD2F00CE620E5D3AELL, 8) + ((v74 + v75) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v75, 61))) ^ 0xF4730B31AE70757BLL) >> v41) ^ v14;
  v76 = v19 + ((((v75 ^ 0x48) + 16) ^ ((v75 ^ 0x75) + 51) ^ ((v75 ^ 0x3D) + 123)) - 79) % v18;
  v77 = *(v21 + (((v76 & 0xFFFFFFF8) + 2050767130) & v22));
  v78 = __ROR8__(v76 & 0xFFFFFFFFFFFFFFF8, 8);
  v79 = (((2 * (v78 + v77)) & 0x4F64918E4A4341A2) - (v78 + v77) + 0x584DB738DADE5F2ELL) ^ 0xE0C5B6EC3B193C7DLL;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0x38C8B16AE7056877;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0xE580B17D8CC5E551;
  v84 = __ROR8__(v83, 8);
  v85 = v83 ^ __ROR8__(v82, 61);
  v86 = (v84 + v85) ^ 0xE1A1FD5BD155F97ALL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xDA604B0C03A2BF99;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xFA35E2CDCB3E31C7;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0xD2F00CE620E5D3AELL;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  LOBYTE(v76) = (((((v94 + v93) & 0x88B9ED12C6509E96 ^ 0x182C10C2101A12) + ((v94 + v93) ^ 0xADA3D16F2CE9C584) - (((v94 + v93) ^ 0xADA3D16F2CE9C584) & 0x88B9ED12C6509E96)) ^ 0xD169374C44C92E69) >> (8 * (v76 & 7u))) ^ *v76;
  v95 = v19 + ((((v76 ^ 0xFE) - 103) ^ ((v76 ^ 0xD1) - 72) ^ ((v76 ^ 0x2F) + 74)) - 43) % v18;
  v96 = *(v21 + (((v95 & 0xFFFFFFF8 ^ 0x45C2A5EC) - 1073816103 + ((2 * (v95 & 0xFFFFFFF8)) | 0x747AB427) + 302) & v22));
  v97 = (__ROR8__(v95 & 0xFFFFFFFFFFFFFFF8, 8) + v96) ^ 0xB88801D4E1C76353;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) & 0x7833FDF7357EF8E0) - (v99 + v98) + 0x43E601046540838FLL) ^ 0x7B2EB06E8245EBF8;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xE580B17D8CC5E551;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0xE1A1FD5BD155F97ALL;
  v105 = __ROR8__(v104, 8);
  v106 = v104 ^ __ROR8__(v103, 61);
  v107 = (v105 + v106) ^ 0xDA604B0C03A2BF99;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0xFA35E2CDCB3E31C7;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0xD2F00CE620E5D3AELL;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = __ROR8__(v111, 8);
  LOBYTE(v112) = (((((2 * (v113 + v112)) | 0xD1AC9A239632D698) - (v113 + v112) + 0x1729B2EE34E694B4) ^ 0x1CA5462065691E37) >> (8 * (v95 & 7u))) ^ *v95;
  LODWORD(STACK[0x6C50]) = ((((v112 ^ 0x2C) + 26) ^ ((v112 ^ 0x1C) + 42) ^ ((v112 ^ 0x30) + 6)) - 62) % v18;
  return (*(v8 + 8 * a2))();
}

uint64_t sub_100D04564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v8 = *(v7 + 8 * (a7 - 5033));
  LODWORD(STACK[0x3980]) = 37;
  LODWORD(STACK[0x3B08]) = a7;
  v9 = STACK[0x438];
  STACK[0x32E0] = STACK[0x438];
  STACK[0x3D50] = v9;
  STACK[0x3AD8] = v9;
  STACK[0x32D8] = STACK[0x2618];
  v10 = STACK[0x3318];
  LODWORD(STACK[0x3278]) = STACK[0x3318];
  v11 = STACK[0x21F4];
  LODWORD(STACK[0x3298]) = STACK[0x21F4];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  LODWORD(STACK[0x3280]) = STACK[0x1954];
  LODWORD(STACK[0x3290]) = v11;
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  LODWORD(STACK[0x32D0]) = STACK[0x3830];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3288]) = STACK[0x1A78];
  LODWORD(STACK[0x3AE8]) = STACK[0x3E18];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = v11;
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x3260]) = STACK[0x3810];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  return v8(a1, a2, a3, a4, a5, a6, v10);
}

uint64_t sub_100D046E8()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x4068] & 0x7CA38D40) + (STACK[0x4068] & 0x835C72B8 | 0x7CA38D46) + 372026214)) & 0xFFFFFFFFFFFFFFF8));
  v3 = (__ROR8__(STACK[0x4068] & 0xFFFFFFFFFFFFFFF8, 8) + v2) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (((2 * (v5 + v4)) | 0x2A7EC7A242E7C3E6) - (v5 + v4) - 0x153F63D12173E1F3) ^ 0x70CD370C39FE550FLL ^ __ROR8__(v4, 61);
  v7 = (__ROR8__((((2 * (v5 + v4)) | 0x2A7EC7A242E7C3E6) - (v5 + v4) - 0x153F63D12173E1F3) ^ 0x70CD370C39FE550FLL, 8) + v6) ^ 0x6FF046966119128DLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (v9 + v8 - ((2 * (v9 + v8)) & 0xD94BC8AC5AB0BED8) + 0x6CA5E4562D585F6CLL) ^ 0xCD177993FA2E4C47;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xEF042041F5E548ECLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xD8C7B31FCA19D9DELL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0xD0972C2E10B5EA26) - (v16 + v15) - 0x684B9617085AF513) ^ 0x3C1E973982EB369CLL;
  LOBYTE(v15) = (((__ROR8__(v17, 8) + (v17 ^ __ROR8__(v15, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (STACK[0x4068] & 7u))) ^ LOBYTE(STACK[0x3F17]);
  LOBYTE(v15) = (((v15 ^ 0x13) - 24) ^ ((v15 ^ 0x7F) - 116) ^ ((v15 ^ 0x6C) - 103)) + 123;
  LOBYTE(STACK[0x404F]) = v15;
  v18 = *(v1 + 8 * (LODWORD(STACK[0x23AC]) ^ 0x4259));
  STACK[0x3F18] = STACK[0x37D0] + (v15 - 44 * ((187 * v15) >> 13));
  STACK[0x3F08] = v18;
  return (*(v1 + 8 * (LODWORD(STACK[0x34C8]) ^ 0x5244)))();
}

uint64_t sub_100D04950()
{
  v2 = 10575 * (v0 ^ 0x6744u);
  v3 = (LODWORD(STACK[0x38B0]) ^ v0 ^ 0x4F) & 1;
  STACK[0x3D98] = v2;
  return (*(v1 + 8 * ((v3 * (v2 - 21140)) ^ v0)))();
}

uint64_t sub_100D04994()
{
  v4 = *(v2 + 8 * ((450 * (((((((4 * v0) ^ 0x10040) - 4214) | 0x1104) - 5077) & *STACK[0x3918]) == 0)) ^ v0));
  LODWORD(STACK[0x3948]) = 1;
  STACK[0x3998] = STACK[0x3D60];
  STACK[0x39E8] = STACK[0x3D88];
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  LODWORD(STACK[0x39A0]) = STACK[0x3E40];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x33E8]) = STACK[0x3688];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  STACK[0x3540] = v3;
  LODWORD(STACK[0x3710]) = STACK[0x3B08];
  LODWORD(STACK[0x38C8]) = STACK[0x31D0];
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x2424]) = STACK[0x3D28];
  LODWORD(STACK[0x31E8]) = STACK[0x3AE8];
  LODWORD(STACK[0x351C]) = STACK[0x3AD8];
  LODWORD(STACK[0x3988]) = STACK[0x3D90];
  LODWORD(STACK[0x2500]) = STACK[0x3AF0];
  LODWORD(STACK[0x3810]) = STACK[0x3B00];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  STACK[0x3318] = LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  LODWORD(STACK[0x3980]) = v1;
  return v4();
}

uint64_t sub_100D04AC8()
{
  STACK[0x3808] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = v0 + 19;
  v5 = *(v4 + 8 * (((v1 == ((v3 - 15845) | 0x6A00) - 27226) * ((470 * (v3 ^ 0x3E7F)) ^ 0x52A2)) ^ v3));
  STACK[0x3850] = 19;
  return v5();
}

uint64_t sub_100D04C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 68);
  v7 = __CFADD__(v6, v4);
  v8 = v6 + v4;
  v9 = v7;
  *(v5 + 68) = v8;
  return (*(a3 + 8 * ((8 * ((v9 ^ 0x9F) & 1)) & 0xEF | (16 * ((v9 ^ 0x9F) & 1)) | v3)))();
}

uint64_t sub_100D04D78(uint64_t a1, int a2)
{
  v7 = STACK[0x4214];
  LODWORD(STACK[0x4218]) = STACK[0x4214];
  v8 = 2 * (v7 ^ 0x2822);
  LODWORD(STACK[0x421C]) = v8;
  v9 = (a2 + 1777078514 - ((a2 + v2 + ((a2 + v2) >> 16)) >> 8) + ((a2 + v2) >> 16) + v5 - 1) ^ 0x4054EE76;
  v10 = v9 + (v9 >> 14) - ((v9 + (v9 >> 14)) >> (v8 - 56));
  v11 = v10 + 1654647450 + ((v10 + 1654647450) >> 15) - ((v10 + 1654647450 + ((v10 + 1654647450) >> 15)) >> 6);
  v12 = v11 ^ v4;
  v13 = (v11 ^ 0x9CEA2875) - ((v11 ^ 0x9CEA2875) >> 13) - (((v11 ^ 0x9CEA2875) - ((v11 ^ 0x9CEA2875) >> 13)) >> 7);
  LODWORD(STACK[0x4220]) = v13;
  v14 = v10 ^ v3;
  v15 = (v13 ^ 0xAE445700) - ((v13 ^ 0xAE445700) >> 11) + (((v13 ^ 0xAE445700) - ((v13 ^ 0xAE445700) >> 11)) >> 2);
  v16 = (v15 ^ 0x59CDA431) + ((v15 ^ 0x59CDA431) >> 11) + (((v15 ^ 0x59CDA431) + ((v15 ^ 0x59CDA431) >> 11)) >> 5);
  v17 = v16 + 139408523 - ((v16 + 139408523) >> 15) + ((v16 + 139408523 - ((v16 + 139408523) >> 15)) >> 6);
  LODWORD(STACK[0x4224]) = v17;
  v18 = v14 ^ v15;
  v19 = v17 - 924174662 - ((v17 - 924174662) >> 13) - ((v17 - 924174662 - ((v17 - 924174662) >> 13)) >> 7);
  LODWORD(STACK[0x4228]) = v18 ^ v19;
  v20 = (v19 ^ 0x86568F24) - ((v19 ^ 0x86568F24) >> 15) - (((v19 ^ 0x86568F24) - ((v19 ^ 0x86568F24) >> 15)) >> 2);
  LODWORD(STACK[0x422C]) = v12 ^ v16 ^ v20;
  v21 = v20 + 1010293963 + ((v20 + 1010293963) >> 12);
  LODWORD(STACK[0x4230]) = v21;
  LODWORD(STACK[0x4234]) = v21 >> 8;
  v22 = *(v6 + 8 * (v7 ^ 0x4B38));
  STACK[0x3F18] = STACK[0x1AB0];
  STACK[0x3F08] = v22;
  return (*(v6 + 8 * (v7 + 19139)))();
}

uint64_t sub_100D05138@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W5>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  v18 = v13;
  v19 = v7;
  LODWORD(STACK[0x3948]) += LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x38B8]) += LODWORD(STACK[0x3D20]);
  LODWORD(STACK[0x3840]) += 64;
  ++LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x3828]) -= 64;
  v20 = a2 + 1007691858;
  v21 = (a6 ^ 0x604FAA3C ^ (a2 + 1007691858) ^ LODWORD(STACK[0x3D50]) ^ (a3 - 304171419)) - ((a2 + 1007691858) ^ LODWORD(STACK[0x3D50]) ^ (a3 - 304171419) ^ 0x604FAA3C);
  LODWORD(STACK[0x3D20]) = v6 ^ v12 ^ (a3 + 1211434906);
  v22 = STACK[0x3E38];
  v23 = STACK[0x39A0];
  v24 = STACK[0x39A0];
  LODWORD(STACK[0x3D78]) = LODWORD(STACK[0x39A0]) - 8753;
  v25 = ((v23 - 8753) ^ 0x3C103293) + v10;
  v26 = LODWORD(STACK[0x3E40]) - 774840462 + v10;
  LODWORD(STACK[0x3D58]) = ((v10 ^ LODWORD(STACK[0x3D30])) - v10) ^ ((a2 ^ v8 ^ (a3 - 304171419) ^ LODWORD(STACK[0x3D30])) - (a2 ^ v8 ^ (a3 - 304171419))) ^ (((v22 - 304171419) ^ LODWORD(STACK[0x3D30])) - (v22 - 304171419));
  LODWORD(STACK[0x3E38]) = ((v22 ^ v9) - v22) ^ ((v9 ^ a1) - a1) ^ ((v9 ^ a3 ^ a4 ^ v12) - (a4 ^ v12 ^ a3));
  LODWORD(STACK[0x3D10]) = v24 + 176751137;
  v27 = v25 ^ 0x604FAA3C;
  LODWORD(STACK[0x3E18]) = (((v22 - 304171419) ^ a6) - (v22 - 304171419)) ^ v21 ^ ((a6 ^ (v24 + 176751137) ^ 0x6AC6952F ^ v25) - (v25 ^ 0x604FAA3C));
  LODWORD(STACK[0x3D70]) = v26;
  v28 = ((v10 ^ a1 ^ (v22 + 1211434906) ^ 0xC96A4C82) - v26) ^ (v22 - 304171419);
  v29 = v26 + 273557578 - (v28 + 880605059);
  LODWORD(STACK[0x3B18]) = v15;
  LODWORD(STACK[0x3D30]) = v15 - 774840462;
  v30 = v15 - 774840462 + a2;
  v31 = (LODWORD(STACK[0x3D20]) ^ 0xE27E07AD) - v30;
  LODWORD(STACK[0x3D68]) = v30 + 273557578;
  v32 = v31 ^ (a3 - 304171419);
  v33 = v30 + 273557578 - (v32 + 880605059);
  v34 = (v32 + 880605059) ^ (a3 - 304171419) ^ v33;
  v35 = ((v20 ^ 0x604FAA3C) - v33) ^ 0xDAABB163;
  v36 = (v28 + 880605059) ^ (v22 - 304171419) ^ v29;
  v37 = v27 - v29;
  v38 = v19 ^ 0xDAABB163 ^ v37;
  v37 ^= 0xDAABB163;
  LODWORD(STACK[0x3D90]) = ((v36 ^ v19) - v36) ^ ((v34 ^ LODWORD(STACK[0x3D48]) ^ v35 ^ v19) - (v34 ^ LODWORD(STACK[0x3D48]) ^ v35)) ^ (v38 - v37);
  v39 = v35 ^ v33;
  v40 = v32 + 683904199;
  v41 = (v35 ^ v33) + v35;
  v42 = v35 + v32 + 683904199;
  v43 = v34 - v41;
  v44 = STACK[0x3D38];
  v28 += 683904199;
  v45 = v37 ^ v29;
  v46 = (v37 ^ v29) + v37;
  v47 = v37 + v28;
  v48 = v47 ^ v28;
  v49 = v36 - v46;
  v50 = v46 + v47;
  v51 = LODWORD(STACK[0x3D28]) ^ 0xC1D81D80 ^ v47;
  v47 ^= 0xC1D81D80;
  v52 = LODWORD(STACK[0x3D28]) ^ 0x261956FD ^ v49;
  v49 ^= 0x261956FDu;
  LODWORD(STACK[0x3D28]) = (v51 - v47) ^ ((LODWORD(STACK[0x3D28]) ^ 0xE7C14B7D ^ v42 ^ LODWORD(STACK[0x3D38]) ^ v43) - (v42 ^ LODWORD(STACK[0x3D38]) ^ v43 ^ 0xE7C14B7D)) ^ (v52 - v49);
  v53 = v41 + v42;
  v54 = v42 ^ v40;
  v55 = v42 ^ 0xC1D81D80;
  v56 = v53 + (v54 ^ 0x157F6841) + (v43 ^ 0x261956FD) + (v43 ^ 0x261956FD);
  v57 = (v43 ^ 0x261956FD) + v53;
  v58 = v57 ^ (v55 - (v54 ^ 0x157F6841));
  v59 = v14;
  v60 = (v56 ^ v14 ^ v58 ^ LODWORD(STACK[0x3D40])) - (v56 ^ v14 ^ v58);
  v61 = v56 - (v54 ^ 0x6F535779);
  v62 = v49 + (v48 ^ 0x157F6841);
  v63 = (v49 + v50) ^ (v47 - (v48 ^ 0x157F6841));
  v64 = ((v63 ^ LODWORD(STACK[0x3D40])) - v63) ^ v60 ^ (((v62 + v49 + v50) ^ LODWORD(STACK[0x3D40])) - (v62 + v49 + v50));
  v65 = v62 + v49 + v50 - (v48 ^ 0x6F535779);
  v66 = (v54 ^ 0x58D93FDE) - 1216652265 + v57 - 1659955590;
  v67 = (v48 ^ 0x58D93FDE) - 1216652265 + v49 + v50 - 1659955590;
  LODWORD(STACK[0x3858]) += LODWORD(STACK[0x3D98]) + LODWORD(STACK[0x3D30]);
  LODWORD(STACK[0x3888]) += v59 + v57;
  v68 = STACK[0x3E40];
  LODWORD(STACK[0x3940]) = LODWORD(STACK[0x3E38]) + LODWORD(STACK[0x3940]) - LODWORD(STACK[0x3E40]);
  LODWORD(STACK[0x3950]) += LODWORD(STACK[0x3B18]) + a4;
  LODWORD(STACK[0x3860]) += LODWORD(STACK[0x3D48]) + v39;
  LODWORD(STACK[0x3878]) += v44 + v53;
  LODWORD(STACK[0x3988]) = LODWORD(STACK[0x3D90]) + LODWORD(STACK[0x3988]) - v45;
  LODWORD(STACK[0x3998]) = LODWORD(STACK[0x3998]) - v68 + 774840462 + LODWORD(STACK[0x3D58]);
  v69 = v18 + LODWORD(STACK[0x3900]);
  LODWORD(STACK[0x3980]) = LODWORD(STACK[0x3D28]) + LODWORD(STACK[0x3980]) - v50;
  LODWORD(STACK[0x3848]) += LODWORD(STACK[0x3D50]) + LODWORD(STACK[0x3D68]);
  LODWORD(STACK[0x3900]) = v69 + v61 + v57 - 1659955590;
  v70 = LODWORD(STACK[0x38B0]) - (v49 + v50);
  LODWORD(STACK[0x3E38]) = (v61 - 1480439250) ^ 0x8892D05A ^ v66;
  LODWORD(STACK[0x3E40]) = (v65 - 1480439250) ^ 0x8892D05A ^ v67;
  LODWORD(STACK[0x38B0]) = v64 + v70;
  LODWORD(STACK[0x3850]) = LODWORD(STACK[0x3850]) - LODWORD(STACK[0x3D70]) - 273557578 + LODWORD(STACK[0x3E18]);
  LODWORD(STACK[0x3890]) = ((((v65 - 1480439250) ^ a5) - (v65 - 1480439250)) ^ (((v61 - 1480439250) ^ v18 ^ (v58 + v61) ^ (v57 - 1659955590) ^ a5) - ((v61 - 1480439250) ^ v18 ^ (v58 + v61) ^ (v57 - 1659955590))) ^ (((v65 + v63) ^ (v49 + v50 - 1659955590) ^ a5) - ((v65 + v63) ^ (v49 + v50 - 1659955590)))) + LODWORD(STACK[0x3890]) - (v65 + v49 + v50 - 1659955590);
  v71 = *(v11 + 8 * (LODWORD(STACK[0x39A0]) ^ (23918 * (LODWORD(STACK[0x3838]) < LODWORD(STACK[0x37F8])))));
  LODWORD(STACK[0x3E18]) = STACK[0x3838];
  return v71();
}

uint64_t sub_100D05764()
{
  STACK[0x3DA0] = v1 ^ 0x148Bu;
  v2 = STACK[0x3E20] + 1;
  STACK[0x3E20] = v2;
  return (*(v0 + 8 * (v1 ^ (52 * (v2 != STACK[0x3DC0])))))();
}

uint64_t sub_100D0629C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v23 = (v9 + v10 - 2 * (v10 & v9));
  v24 = 2 * (v23 ^ 0x6A);
  v25 = *(*(v22 + 8 * v15) + 4 * ((v23 ^ 0x6A) - (v24 & v13) + 106) - 4) ^ v12;
  HIDWORD(v26) = (v25 + 122644936 - ((2 * v25) & a1)) ^ v20;
  LODWORD(v26) = (v25 - ((2 * v25) & a2) + a3) ^ v20;
  HIDWORD(v26) = (v26 >> 28) ^ a7;
  LODWORD(v26) = HIDWORD(v26);
  *(v16 + 4 * v10) = *(v21 - 232) ^ ((v24 & 0x68) + (v23 ^ a4) - (a5 & (2 * ((v24 & 0x68) + (v23 ^ a4)))) + a6) ^ v18 ^ ((v26 >> 4) - (a8 & (2 * (v26 >> 4))) + v17);
  return (*(v14 + 8 * (((v11 == 0) * v19) ^ v8)))();
}

uint64_t sub_100D063E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W6>, int a4@<W8>)
{
  STACK[0x36C0] = 0;
  STACK[0x38B0] = 0;
  STACK[0x3808] = 0;
  STACK[0x3650] = 0;
  STACK[0x37A8] = 0;
  STACK[0x38B8] = 0;
  STACK[0x36C8] = 0;
  STACK[0x36E8] = 0;
  STACK[0x3818] = 0;
  STACK[0x3878] = 0;
  LODWORD(STACK[0x3CC8]) = 0;
  LODWORD(STACK[0x3D88]) = *(v6 + LODWORD(STACK[0x3798]));
  LODWORD(STACK[0x3798]) = a3 - 18604 + (((a4 & 0xD6C6F96B) - 4247) | 0x4021);
  v7 = *(v4 + 8 * ((((a4 & 0xD6C6F96B) - 6322) * (v5 == 9)) ^ a4 & 0xD6C6F96B));
  LODWORD(STACK[0x3D58]) = 9;
  STACK[0x3838] = 128;
  return v7(a1, a2, 0);
}

uint64_t sub_100D06488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x3948]) = 0;
  LODWORD(STACK[0x33E8]) = 0;
  v10 = (v5 - 1634035785) & 0x61657E9E;
  LODWORD(STACK[0x3D68]) = v10;
  v11 = *(v8 + 8 * ((((v10 ^ 0xFFFFAC5D) + ((v5 + 3034) | 0x2408)) * v6) ^ v5));
  STACK[0x3998] = STACK[0x3D60];
  STACK[0x39E8] = STACK[0x3D88];
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  LODWORD(STACK[0x39A0]) = STACK[0x3E40];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x32E0]) = STACK[0x3688];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  STACK[0x3540] = v9;
  LODWORD(STACK[0x38C8]) = STACK[0x31D0];
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x2424]) = STACK[0x3D28];
  LODWORD(STACK[0x31E8]) = STACK[0x3AE8];
  LODWORD(STACK[0x351C]) = STACK[0x3AD8];
  LODWORD(STACK[0x3988]) = STACK[0x3D90];
  LODWORD(STACK[0x2500]) = STACK[0x3AF0];
  LODWORD(STACK[0x3810]) = STACK[0x3B00];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  STACK[0x3318] = LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  LODWORD(STACK[0x3980]) = v7;
  v12 = STACK[0x3B08];
  LODWORD(STACK[0x3808]) = STACK[0x3B08];
  LODWORD(STACK[0x3710]) = v12;
  STACK[0x2B88] = STACK[0x480];
  STACK[0x3290] = STACK[0x10F0];
  v13 = STACK[0x470];
  v14 = LODWORD(STACK[0x268C]);
  LODWORD(STACK[0x32D8]) = STACK[0x3268];
  LODWORD(STACK[0x2B80]) = STACK[0x2228];
  return v11(a1, STACK[0x3B20], a3, a4, a5, STACK[0x3B20], v14, v13);
}

uint64_t sub_100D065EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W4>, int a4@<W8>)
{
  v8 = STACK[0x3D88] + 3336;
  v9 = STACK[0x3CF8];
  v10 = v9 + a1;
  v11 = *(STACK[0x3CF8] + a1 + 1028);
  v12 = v11;
  LODWORD(STACK[0x3D90]) = v8;
  v13 = STACK[0x3DC0];
  v14 = *(STACK[0x3DC0] + 166904 + 4 * (BYTE1(v11) ^ 0xF0));
  v15 = *(STACK[0x3DC0] + 351148 + 4 * (HIBYTE(v11) ^ 0xEBu));
  v16 = HIBYTE(v11) ^ 0x72A2AF2B;
  v17 = *(STACK[0x3DC0] + 166904 + 4 * ((v11 ^ 0x87BDB6D8) >> 16)) ^ 0x5B252222;
  v18 = (*(v9 + a1) ^ 0x9DD3BB9D) >> 24;
  v19 = *(v9 + a1 + 1080);
  v20 = v15 - v16;
  v21 = *(v9 + a1 + 52);
  v22 = *(v9 + a1 + 52);
  v23 = v14 ^ __ROR4__(*(STACK[0x3DC0] + 166904 + 4 * (v8 ^ 0x5F38 ^ v12)) ^ 0xD7256042, 8) ^ __ROR4__(v17, 24);
  v24 = *(v13 + 183352 + 4 * (*(v9 + a1 + 1080) ^ 0x4ALL)) ^ v19 ^ 0xD5 ^ *(v13 + 282384 + 4 * ((v19 ^ 0x90A4D5) >> 16)) ^ __ROR4__(*(STACK[0x3DC0] + 282384 + 4 * ((v19 ^ 0xA4D5) >> 8)) ^ 0xA1686CEC, 8) ^ (*(STACK[0x3DC0] + 67680 + ((v19 >> 22) & 0x3FC ^ 0x18)) + 125567043);
  v25 = v23 ^ v20;
  v26 = LODWORD(STACK[0x3E18]) ^ a4;
  v27 = *(STACK[0x3DC0] + 166904 + 4 * ((*(v9 + a1) ^ 0xBB9D) >> 8)) ^ __ROR4__(*(STACK[0x3DC0] + 166904 + 4 * (*(v9 + a1) ^ 0x9Du)) ^ 0xDB256622, 8) ^ __ROR4__(*(STACK[0x3DC0] + 166904 + 4 * ((*(v9 + a1) ^ 0x9DD3BB9D) >> 16)) ^ 0xE325F3E3, 24) ^ (*(STACK[0x3DC0] + 351148 + 4 * (v18 ^ 0x6C)) - (v18 ^ 0x72A2AFAC));
  LODWORD(v19) = *(v13 + 183352 + 4 * (v22 ^ 8)) ^ v22 ^ *(v13 + 282384 + 4 * (BYTE2(v21) ^ 0xA5)) ^ __ROR4__(*(STACK[0x3DC0] + 282384 + 4 * (BYTE1(v21) ^ 0x82)) ^ 0xA168F590, 8) ^ (*(v13 + 67680 + ((v21 >> 22) & 0x3FC ^ 0xFC)) + 125567043);
  LODWORD(v13) = v4 ^ 0x589A1272;
  v28 = v26 + 1309358736;
  v29 = (v25 ^ 0x3B40F761 ^ v27 ^ v26) - (v27 ^ v26 ^ 0x8A07C03);
  v30 = a4 - (v4 ^ 0x589A1272) + 1731440869;
  v31 = LODWORD(STACK[0x3E40]) ^ 0x1D42F93;
  v32 = (v6 ^ a3) + 1309358736;
  v33 = v6 - v31 + 1731440869;
  LODWORD(v22) = ((v25 ^ 0x33E08B62 ^ v6) - v6) ^ ((v25 ^ 0x33E08B62 ^ a3) - a3);
  v34 = (v9 + v5);
  v35 = ((v24 ^ 0xF8EC8BF5 ^ v33) - v33) ^ ((v24 ^ 0xF8EC8BF5 ^ v32) - v32) ^ ((v24 ^ 0x2B16F54 ^ v30 ^ v28 ^ v19) - (v30 ^ v28 ^ v19 ^ 0xFA5DE4A1));
  v36 = LODWORD(STACK[0x3E38]) + *(v9 + v5 + 13936) + *(v9 + v5 + 13972);
  LODWORD(v22) = v22 ^ v29;
  v37 = STACK[0x3D98];
  LODWORD(v9) = (LODWORD(STACK[0x3D98]) + v31) ^ v31;
  v38 = (v13 + LODWORD(STACK[0x3E38])) ^ v13;
  v39 = v13 - v28;
  v40 = v31 - v32;
  LODWORD(v13) = v28 - (v13 - v28);
  v41 = v32 - v40;
  v42 = (v27 ^ 0x8A07C03) + v36;
  v43 = v39 ^ 0xABDBB3D9;
  v44 = v38 + 288167101 - (v39 ^ 0xABDBB3D9);
  v40 ^= 0xABDBB3D9;
  v45 = v9 - v40 + 288167101;
  v43 -= 147735447;
  v46 = v19 ^ 0xFA5DE4A1;
  LODWORD(v19) = v40 - 147735447;
  v47 = v42 + v35 - v9;
  v48 = v40 - 147735447 + v41;
  v49 = v34[1875];
  v34[3500] = v47;
  LODWORD(v22) = v38 - v37 + v46 + v49 + v34[1884] + v22;
  v50 = -v22;
  v34[1891] = v22;
  LODWORD(v22) = -v22 ^ v44 ^ v47;
  v51 = v47 ^ v43;
  LODWORD(v22) = ((v51 ^ v50) - v19) ^ v48 ^ (v22 - v45);
  v52 = (v51 ^ v44) - (v45 ^ v19 ^ v50);
  v53 = STACK[0x3D20];
  v54 = v43 + v13;
  LODWORD(v34) = v52 ^ (v43 + v13);
  *(v10 + 1088) = *(STACK[0x3D20] + 4 * (v22 ^ 0xB5u)) ^ 0x8B0C70DC ^ __ROR4__(*(STACK[0x3D20] + 4 * (BYTE1(v22) ^ 0xACu)) ^ 0xB0C70D0, 24) ^ __ROR4__(*(STACK[0x3D20] + 4 * (BYTE2(v22) ^ 0xF4u)) ^ 0xB0C70FC, 16) ^ __ROR4__(*(STACK[0x3D20] + 4 * (BYTE3(v22) ^ 0x2B)) ^ 0x8B0C7093, 8);
  LODWORD(v22) = *(v53 + 4 * ((v52 ^ (v43 + v13)) ^ 0xEFu));
  v55 = (v33 ^ 0x44920BC3) - v41;
  v56 = *(v53 + 4 * (BYTE1(v34) ^ 0x5Cu)) ^ 0xB0C70A8;
  LODWORD(STACK[0x3CA0]) = v34;
  v57 = v22 ^ 0x8B0C70F1 ^ __ROR4__(v56, 24) ^ __ROR4__(*(v53 + 4 * (BYTE2(v34) ^ 0x2Du)) ^ 0x8B0C7090, 16);
  v58 = __ROR4__(*(v53 + 4 * ((v34 >> 24) ^ 0x97)) ^ 0x8B0C70CD, 8);
  v59 = v43 - ((v30 ^ 0x44920BC3) - v13);
  LODWORD(v22) = v19 - v55;
  LODWORD(v19) = (v19 - v55) ^ v48;
  v60 = v45 - v19;
  v61 = (v59 ^ v54) + v59;
  LODWORD(STACK[0x3E18]) = v61;
  LODWORD(STACK[0x3E38]) = (v44 - (v59 ^ v54)) ^ v61;
  *(v10 + 60) = v57 ^ v58;
  v62 = STACK[0x3D80];
  LODWORD(STACK[0x3E40]) = v22 ^ 0xF62A4992;
  v63 = *(v7 + 8 * ((47 * (a2 == 0)) ^ v62));
  LODWORD(STACK[0x3D98]) = v60 ^ (v19 + v22);
  return v63(a1 + 4);
}

uint64_t sub_100D06C44@<X0>(int a1@<W3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v10 = v4 >> ((v8 ^ 0xBBu) - 38);
  v11 = v4 >> 40;
  v12 = HIWORD(v4);
  v13 = STACK[0x3C40];
  *(v13 + 94) = BYTE1(v4);
  v14 = STACK[0x3C48];
  v14[42] = v4;
  v15 = STACK[0x39B8];
  *(v15 + 23) = v4 >> (a1 & 0x18) >> (a1 & 0x18 ^ 0x18u);
  *(v13 + 72) = v4 >> (v8 ^ 0xF5u);
  v16 = STACK[0x3D68] + 553;
  v17 = *(v16 + (BYTE4(a2) ^ 0x31));
  v18 = (-112 * (v17 ^ 0x18)) ^ 0x64;
  HIDWORD(v19) = v18 ^ v17 ^ 0x18;
  LODWORD(v19) = (v18 ^ v17) << 24;
  v14[9] = v12;
  v20 = STACK[0x3C38];
  v20[74] = v10;
  *(v13 + 27) = v11;
  *(v13 + 32) = ((((v19 >> 30) ^ 0x93) >> 4) | (16 * ((v19 >> 30) ^ 0x93))) ^ 0x39;
  v21 = *(v16 + (a3 ^ 0x94));
  v22 = (-112 * (v21 ^ 8) - ((-112 * (v21 ^ 8)) ^ v21 ^ 0x7C)) ^ -(v21 ^ 0x7C);
  v23 = ((v22 >> 3) | (32 * v22)) ^ 0x21;
  *(v15 + 1) = BYTE1(a1);
  HIDWORD(v19) = v21 ^ 0x75 ^ ((v23 >> 5) | (8 * v23));
  LODWORD(v19) = (HIDWORD(v19) - 112 * (v21 ^ 8)) << 24;
  v14[48] = v19 >> 26;
  v24 = STACK[0x3D70];
  v20[59] = 29 * ((*(STACK[0x3D70] + ((BYTE2(a1) + 78) ^ 0x2CLL)) + 77) ^ 0xEA ^ ((((*(STACK[0x3D70] + ((BYTE2(a1) + 78) ^ 0x2CLL)) + 77) & 0xF8) >> 3) | 0xD2));
  LODWORD(v12) = *(v24 + ((BYTE3(a3) + 78) ^ 0x2CLL)) + 77;
  v20[19] = BYTE5(a3);
  v20[1] = BYTE4(a3);
  v14[7] = 29 * (v12 ^ (v12 >> 3) & 0xD ^ 0x38);
  v25 = *(STACK[0x3D98] + (BYTE6(a3) ^ 0xD8));
  *(v13 + 83) = HIBYTE(a3);
  v14[89] = ((BYTE6(a3) ^ 0x11 ^ v25) >> 3) | (32 * (BYTE6(a3) ^ 0x11 ^ v25));
  LOBYTE(v23) = *(v24 + ((v7 + 78) ^ 0x2CLL));
  v26 = v23 + 77;
  v27 = (v26 ^ (-77 - v23) ^ (-109 - (v26 ^ 0x93))) - 109;
  if (!v9)
  {
    v27 = 104;
  }

  v14[44] = BYTE3(v7);
  *(v13 + 97) = v6;
  v14[34] = BYTE4(v7);
  v14[30] = BYTE5(v7);
  v20[18] = BYTE6(v7);
  v20[50] = BYTE1(v6);
  *(v13 + 7) = 29 * (v26 ^ ((v27 & v26 & 0xF8) >> 3) ^ 0x38);
  v14[21] = BYTE2(v7);
  *(v13 + 115) = BYTE1(v7);
  v14[13] = HIBYTE(v7);
  v28 = *(v16 + (BYTE2(v6) ^ 0x94));
  v20[65] = v3;
  v20[32] = BYTE5(v6);
  v14[91] = BYTE3(v6);
  v14[31] = BYTE4(v6);
  HIDWORD(v29) = v28;
  LODWORD(v29) = ((-112 * (v28 ^ 0x18)) ^ v28 ^ 0x18) << 24;
  *(v13 + 23) = HIBYTE(v6);
  *(v13 + 73) = BYTE6(v6);
  v20[52] = (v29 >> 26) ^ 0x19;
  LOBYTE(v28) = *(STACK[0x3DC0] + (BYTE1(v3) - 46) - ((2 * ((v3 >> 8) + 210)) & 0x1E4) + 242);
  v20[20] = BYTE3(v3);
  *(v13 + 107) = BYTE2(v3);
  v20[43] = HIBYTE(v3);
  v20[64] = BYTE6(v3);
  *(v13 + 2) = BYTE5(v3);
  *(v13 + 84) = BYTE4(v3);
  *(v13 + 70) = -49 * (((4 * v28) ^ 0x24) + (v28 ^ 0x77) - 2 * (((4 * v28) ^ 0x24) & (v28 ^ 0x77)));
  *(v13 + 76) = LODWORD(STACK[0x3EAC]) + 1;
  LODWORD(STACK[0x3EAC]) = *(v15 + 4);
  return (*(v5 + 8 * (v8 ^ (29 * (LODWORD(STACK[0x3D78]) ^ 1u)))))();
}

uint64_t sub_100D0720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = v7 ^ (2 * (STACK[0x52D8] & v7));
  v9 = ((STACK[0x52B8] & *(STACK[0x5018] + 4 * v7)) << (((a5 - 84) | (v6 - 23)) ^ 0xD8)) ^ *(STACK[0x5018] + 4 * v7);
  v10 = LODWORD(STACK[0x52A4]) ^ (v8 << STACK[0x5338]) ^ ((STACK[0x4E98] & v8) >> STACK[0x5350]);
  LODWORD(v8) = (((STACK[0x52C8] & v9) >> STACK[0x5328]) + ((v9 & STACK[0x52CC]) << STACK[0x5320])) ^ LODWORD(STACK[0x52BC]);
  STACK[0x30B0] = v10;
  *(STACK[0x3AC0] + 4 * v10) = v8;
  LODWORD(v8) = *(STACK[0x5010] + 4 * v7) ^ (2 * (STACK[0x52B8] & *(STACK[0x5010] + 4 * v7)));
  *(STACK[0x3A88] + 4 * v10) = ((v8 & STACK[0x52AC]) << STACK[0x5338]) ^ LODWORD(STACK[0x52A0]) ^ ((v8 & STACK[0x52C8]) >> STACK[0x5350]);
  LODWORD(v8) = *(STACK[0x4EB0] + v7) ^ (2 * (STACK[0x52D8] & *(STACK[0x4EB0] + v7)));
  *(STACK[0x3AD0] + 4 * v10) = ((v8 & STACK[0x52A8]) >> STACK[0x5328]) ^ ((v8 & STACK[0x52CC]) << STACK[0x5320]) ^ LODWORD(STACK[0x52BC]);
  return (*(v5 + 8 * ((2 * (v7 != 255)) | (8 * (v7 != 255)) | a5)))();
}

uint64_t sub_100D073D8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3280]) = 0;
  LODWORD(STACK[0x2C10]) = 0;
  LODWORD(STACK[0x2F60]) = 0;
  LODWORD(STACK[0x3288]) = 0;
  LODWORD(STACK[0x3228]) = 0;
  LODWORD(STACK[0x3230]) = 0;
  v3 = 94 * (a1 ^ 0x2090);
  v4 = LODWORD(STACK[0x2C20]) == 15;
  LODWORD(STACK[0x3D68]) = v3;
  v5 = *(v1 + 8 * ((((v3 + 3232) ^ (3525 * (a1 ^ 0x2077))) * v4) ^ a1));
  LODWORD(STACK[0x2C20]) = 14;
  LODWORD(STACK[0x3AD8]) = 8;
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2260];
  v6 = STACK[0x3540];
  LODWORD(STACK[0x3E18]) = STACK[0x3540];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3D40]) = v6;
  LODWORD(STACK[0x3B08]) = STACK[0x3710];
  LODWORD(STACK[0x3AF0]) = v2;
  v7 = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3808]) = v6;
  LODWORD(STACK[0x32D8]) = v6;
  LODWORD(STACK[0x3860]) = v2;
  LODWORD(STACK[0x3D80]) = v7;
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3298]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x3850]) = 1;
  LODWORD(STACK[0x3840]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3248]) = 1;
  LODWORD(STACK[0x2B98]) = 1;
  LODWORD(STACK[0x2BA0]) = 1;
  LODWORD(STACK[0x3250]) = 1;
  LODWORD(STACK[0x2BA8]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x3258]) = 1;
  LODWORD(STACK[0x2BD0]) = 1;
  LODWORD(STACK[0x2BD8]) = 1;
  LODWORD(STACK[0x3260]) = 1;
  LODWORD(STACK[0x2BE0]) = 1;
  LODWORD(STACK[0x2BE8]) = 1;
  LODWORD(STACK[0x32B8]) = 1;
  LODWORD(STACK[0x3270]) = 1;
  LODWORD(STACK[0x2BF0]) = 1;
  LODWORD(STACK[0x2BF8]) = 1;
  LODWORD(STACK[0x3278]) = 1;
  LODWORD(STACK[0x2C00]) = 1;
  LODWORD(STACK[0x2C08]) = 1;
  LODWORD(STACK[0x2BC8]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x32E0]) = STACK[0x3688];
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  return v5();
}

uint64_t sub_100D07594@<X0>(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x6D18]) = a1 + v3;
  LODWORD(STACK[0x6D1C]) = a2 + LODWORD(STACK[0x3D40]) + v2 + 1;
  LODWORD(STACK[0x6D20]) = LODWORD(STACK[0x3D80]) ^ 0xE6DD3A92 ^ ((v5 ^ 0x6E6C) + 290);
  return (*(v4 + 8 * (v5 ^ 0x6E6C)))();
}

uint64_t sub_100D076A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  if (STACK[0x3850])
  {
    if (STACK[0x3850] == 2)
    {
      return sub_100D07888(a5, 128, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
    }

    else if (STACK[0x3850] == 1)
    {
      LODWORD(STACK[0x3CC8]) = 0;
      STACK[0x3CD0] = 0;
      STACK[0x3818] = 0;
      LODWORD(STACK[0x3550]) = 0;
      LODWORD(STACK[0x3340]) = 0;
      STACK[0x36C0] = 0;
      v67 = *(v64 + 8 * (v65 - 16190));
      STACK[0x38B8] = 128;
      return v67(0, 0, 0, 0, a5, 0, 0, 0);
    }

    else
    {
      v69 = STACK[0x3850] - 3;
      if (v69 > 0x1C)
      {
        STACK[0x3828] = 0;
        STACK[0x36E0] = 0;
        LODWORD(STACK[0x3D70]) = 0;
        LODWORD(STACK[0x3CC8]) = 0;
        STACK[0x3CD0] = 0;
        STACK[0x3570] = 0;
        STACK[0x35A0] = 0;
        LODWORD(STACK[0x3348]) = 0;
        LODWORD(STACK[0x3E38]) = 0;
        STACK[0x3940] = 0;
        STACK[0x3428] = 0;
        LODWORD(STACK[0x3D88]) = 0;
        STACK[0x3800] = 0;
        STACK[0x34F0] = 0;
        STACK[0x3818] = 0;
        STACK[0x36E8] = 0;
        STACK[0x36C8] = 0;
        LODWORD(STACK[0x3550]) = 0;
        LODWORD(STACK[0x3D78]) = 0;
        LODWORD(STACK[0x3D90]) = 0;
        STACK[0x38B8] = 0;
        STACK[0x3788] = 0;
        STACK[0x37A8] = 0;
        STACK[0x3650] = 0;
        LODWORD(STACK[0x3340]) = 0;
        STACK[0x3808] = 0;
        STACK[0x38B0] = 0;
        STACK[0x36C0] = 0;
        return (*(v64 + 8 * (v65 + 1781)))(0);
      }

      else
      {
        LODWORD(STACK[0x3D48]) = 0;
        LODWORD(STACK[0x3D40]) = 0;
        LODWORD(STACK[0x3D68]) = 0;
        LODWORD(STACK[0x3D60]) = 0;
        LODWORD(STACK[0x3D58]) = 0;
        LODWORD(STACK[0x3D50]) = 0;
        LODWORD(STACK[0x3D80]) = 2;
        LODWORD(STACK[0x1B50]) = STACK[0x221C];
        LODWORD(STACK[0x3310]) = STACK[0x35FC];
        LODWORD(STACK[0x3308]) = STACK[0x3970];
        LODWORD(STACK[0x3300]) = STACK[0x35F8];
        return ((&loc_100D0787C + *(&funcs_100D07884 + v69)))();
      }
    }
  }

  else
  {
    v68 = STACK[0x3850];
    LODWORD(STACK[0x3CC8]) = 0;
    STACK[0x3CD0] = 0;
    STACK[0x3818] = 0;
    LODWORD(STACK[0x3550]) = 0;
    STACK[0x38B8] = 0;
    STACK[0x3788] = 128;
    LODWORD(STACK[0x3340]) = v68;
    STACK[0x36C0] = 0;
    return sub_100DF09F8(v68, 0, v68, 0, a5, 0, 0, v68);
  }
}

uint64_t sub_100D07888@<X0>(uint64_t a1@<X4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58)
{
  LODWORD(STACK[0x3CC8]) = 0;
  STACK[0x3818] = 0;
  LODWORD(STACK[0x3340]) = 0;
  STACK[0x36C0] = 0;
  v60 = *(v58 + 8 * a58);
  STACK[0x3CD0] = v59;
  LODWORD(STACK[0x3550]) = a2;
  return v60(0, 0, 0, 0, a1, 0, 0, 0);
}

uint64_t sub_100D07978()
{
  v2 = *(v1 + 8 * (v0 ^ 0xDB0BEC57 ^ (((58 * (v0 ^ 0xDB0BE7DF)) ^ 0x1847) * (v0 > 0x37D837D2))));
  LODWORD(STACK[0x3BD8]) = 112;
  return v2();
}

uint64_t sub_100D079CC()
{
  v3 = (v1 + 560);
  v4 = *(STACK[0x39E0] + 2 * (v3 ^ 0x23));
  *(STACK[0x37B0] + (((v4 >> 2) | (v4 << 14)) ^ 0xC65CLL)) = *(STACK[0x3580] + v1) ^ (*(STACK[0x3728] + (v3 ^ 0x39)) - ((v1 + 48) ^ 0x27)) ^ 0xDF;
  return (*(v2 + 8 * ((49 * (v1 != 271)) ^ v0)))();
}

uint64_t sub_100D07A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W6>, int a4@<W8>)
{
  STACK[0x36C0] = 0;
  STACK[0x38B0] = 0;
  STACK[0x37A8] = 0;
  STACK[0x38B8] = 0;
  STACK[0x36E8] = 0;
  STACK[0x3878] = 0;
  LODWORD(STACK[0x3CC8]) = 0;
  STACK[0x3808] = *(v6 + LODWORD(STACK[0x3798]));
  LODWORD(STACK[0x3798]) = a3 + 13;
  v7 = *(v4 + 8 * ((42 * (v5 != ((((a4 + 399463313) & 0xE8307EE3) - 4641) ^ 0x1ACF))) ^ (a4 - 16106)));
  LODWORD(STACK[0x3D58]) = 13;
  STACK[0x3650] = 128;
  return v7(a1, a2, 0);
}

uint64_t sub_100D07AEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  LODWORD(STACK[0x3D70]) = 0;
  v7 = *(v6 + 8 * ((v5 != a1) | (32 * (v5 != a1)) | v4));
  LODWORD(STACK[0x3D80]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  STACK[0x3D98] = a4;
  return v7();
}

uint64_t sub_100D07C38()
{
  *(v3 - 0x2369327399A66D85) = 0x1883660EE8144416;
  v4 = (*(v1 + 8 * (v0 + v2)))(v3 - 0x2369327399A66D95);
  return (*(v1 + 8 * (v0 - 503380654)))(v4);
}

uint64_t sub_100D07D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
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
  v6 = a5 ^ 0x7916u;
  v7 = *(v5 + 8 * (((2 * v6 - 40721) * (LODWORD(STACK[0x2C20]) == 107)) ^ a5));
  LODWORD(STACK[0x2BB0]) = STACK[0x2238];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v8 = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x3438]) = v8;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v9 = STACK[0x32E8];
  LODWORD(STACK[0x2B88]) = STACK[0x32E8];
  LODWORD(STACK[0x3B00]) = v9;
  v10 = STACK[0x1954];
  LODWORD(STACK[0x3298]) = STACK[0x1954];
  LODWORD(STACK[0x3280]) = v10;
  LODWORD(STACK[0x3290]) = v10;
  v11 = LODWORD(STACK[0x3830]);
  STACK[0x3D90] = v11;
  LODWORD(STACK[0x32D0]) = v11;
  v12 = STACK[0x3E18];
  LODWORD(STACK[0x2B70]) = STACK[0x3E18];
  LODWORD(STACK[0x3288]) = v12;
  v13 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v13;
  LODWORD(STACK[0x3AE8]) = v13;
  v14 = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v14;
  v15 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v15;
  v16 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  v17 = v16;
  LODWORD(STACK[0x2C20]) = 107;
  LODWORD(STACK[0x3988]) = 72;
  LODWORD(STACK[0x3D58]) = 1;
  v18 = STACK[0x448];
  STACK[0x3D78] = STACK[0x2928];
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(v11) = STACK[0x1A90];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  v19 = STACK[0x1BC8];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x3AF0] = v6;
  LODWORD(STACK[0x3B08]) = v6;
  v20 = STACK[0x4A8];
  STACK[0x32E0] = STACK[0x4A8];
  STACK[0x3D50] = v20;
  STACK[0x3AD8] = v20;
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = v19;
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3980]) = 107;
  LODWORD(STACK[0x3258]) = v11;
  return v7(a1, 0, a2, v18, a3, a4, v17);
}

uint64_t sub_100D07FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = *(v7 + 8 * (((a7 - 7781 + 1894 * (a7 ^ 0x2AED)) * (LODWORD(STACK[0x3E40]) > v8)) ^ a7));
  STACK[0x39C0] = v8;
  return v9();
}

uint64_t sub_100D0802C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = (((1645 * a8 + 2111129) % 0xA88u) ^ 0xD3F8FFFBD7DFEE72) + STACK[0x638] + ((2 * ((1645 * a8 + 2111129) % 0xA88u)) & 0x1CE4);
  v10 = *STACK[0x660];
  v11 = *STACK[0x650];
  v12 = *(v10 + (v11 & STACK[0x648]));
  v13 = *v8 ^ 0x21E69720;
  LODWORD(v9) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v9 + 673190286 + v12 - 963544004) & v13)) ^ *(v9 - 0x199C495810FD0887) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v9 + 673190286 + v12 - 963544002) & v13)) ^ (76 * (v9 - 114));
  v14 = STACK[0x640] + 4 * ((551 * (((v9 ^ 0x4E6E6155) + 1847882433) ^ ((v9 ^ 0x55BC1684) + 1979057426) ^ ((v9 ^ 0x1BD277A1) + 999842869)) - 2135689570) % 0x1D48);
  v15 = *(v10 + (v11 & STACK[0x658]));
  LODWORD(v11) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v15 + 673210726) & v13)) ^ *(v14 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v15 + 673210728) & v13));
  v16 = 1645 * (((v11 ^ (333999 * v14)) >> 16) ^ 0x25) + 3391990;
  LODWORD(v9) = 1645 * (((((v11 ^ (-1962600273 * v14)) >> 24) ^ 0x986C1B44) + 855481147) ^ ((((v11 ^ (-1962600273 * v14)) >> 24) ^ 0x94928D73) + 1040387342) ^ ((((v11 ^ (-1962600273 * v14)) >> 24) ^ 0xCFE9694) - 1502669077)) - 147148944;
  v17 = ((v11 ^ (6319 * v14)) >> 8) ^ 0x79;
  v18 = v16 - 2696 * (((12744711 * v16) >> 32) >> 3);
  LODWORD(v14) = (v11 ^ (-81 * v14));
  v19 = (v18 ^ 0xB27BFF5EF6FFBBBELL) + STACK[0x638] + ((2 * v18) & 0x177C);
  LODWORD(v14) = 1645 * (((v14 ^ 0x657B8FB0) + 1091424870) ^ ((v14 ^ 0xB1ACD363) - 1780838729) ^ ((v14 ^ 0xD4D75C1A) - 257883696)) - 1281397091;
  v20 = 1645 * v17 + 3391990 - 2696 * (((12744711 * (1645 * v17 + 3391990)) >> 32) >> 3);
  v21 = (((((2 * v9) & 0x7FEAF0) + (v9 ^ 0xFFFFF578)) % 0xA88) ^ 0xFECDFAEDD7E5D0FFLL) + 2 * ((((2 * v9) & 0x7FEAF0) + (v9 ^ 0xFFFFF578)) % 0xA88) + STACK[0x638];
  v22 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v19 + 151012418 + v12 - 963544004) & v13)) ^ *(v19 + 0x7E0B744CFE32A2DLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v19 + 151012418 + v12 - 963544002) & v13)) ^ (76 * (v19 + 66));
  v23 = ((v14 % 0xA88) ^ 0xEBFFBFF7D33BBF5FLL) + STACK[0x638] + ((2 * (v14 % 0xA88)) & 0x1EBE);
  LODWORD(v23) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v23 + 751059105 + v12 - 963544004) & v13)) ^ *(v23 - 0x31A309540C58D974) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v23 + 751059105 + v12 - 963544002) & v13)) ^ (76 * (v23 - 95));
  v24 = (v20 ^ 0xFBD9FCB63E9FFEFFLL) + STACK[0x638] + ((2 * v20) & 0x1DFE);
  LODWORD(v21) = (((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v21 + 672804609 + v12 - 963544004) & v13)) ^ *(v21 - 0x4471444A1102EB14) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v21 + 672804609 + v12 - 963544002) & v13)) ^ (76 * (v21 + 1))) << 16) ^ 0xBA15A7) & ((v22 << 8) ^ 0xFF05A7) | (v22 << 8) & 0xEA00;
  v25 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v24 - 1050672895 + v12 - 963544004) & v13)) ^ *(v24 - 0x417D461277BD1914) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v24 - 1050672895 + v12 - 963544002) & v13)) ^ (76 * (v24 + 1));
  v26 = STACK[0x640] + 4 * ((551 * a8 + 703294) % 0x1D48u);
  *(v26 - 0x34EE34220E8AC3B8) = (-1962600273 * v26) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v15 + v26 + 673210726) & v13)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v15 + v26 + 673210728) & v13)) ^ 0x692E8139 ^ (((((v21 ^ 0x8E38FA) & (v25 ^ 0xFFFF0D) ^ (v25 & 0xA2 | 0xBAB000)) << 8) ^ 0x34F685B0) & (v23 ^ 0xFFFFFFC8) | v23 & 0x4F);
  return (*(STACK[0x668] + 8 * (((a8 != 255) | (16 * (a8 != 255))) ^ a2)))();
}

uint64_t sub_100D08678()
{
  v2 = v0 & 0xDBE35EFF;
  v3 = LODWORD(STACK[0x2C20]) >= (((v0 & 0xDBE35EFF) + 883106333) & 0xCB5CB73D ^ 0x342D);
  return (*(v1 + 8 * (v3 | (32 * v3) | v2)))();
}

uint64_t sub_100D08720(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = STACK[0x3D80];
  v16 = v5;
  v17 = (LODWORD(STACK[0x3D58]) + 1736488230) & 0x987F7AFF;
  v18 = a1 - 1947745297;
  LODWORD(STACK[0x3CA0]) = v14;
  v19 = v18 + v14;
  v20 = v18 + v14 - 960051466;
  LODWORD(STACK[0x3C88]) = v6;
  v21 = v20 + v18 + v6;
  LODWORD(STACK[0x3CC8]) = v21;
  LODWORD(STACK[0x3CE0]) = v7 - v18 + (v17 ^ 0x68ECC151);
  v22 = v21 - (v7 - v18) + 877835978;
  v23 = STACK[0x3D08];
  v24 = *(STACK[0x3D08] + 4 * (BYTE1(v16) ^ 0x52u)) ^ __ROR4__(*(STACK[0x3D08] + 4 * (v16 ^ 0xD0u)) ^ 0x50B648C7, 8) ^ __ROR4__(*(STACK[0x3D08] + 4 * (BYTE2(v16) ^ 0x67u)) ^ 0xEA6A6502, 24) ^ __ROR4__(*(STACK[0x3D08] + 4 * (HIBYTE(v16) ^ 0x50)) ^ 0x52B668C3, 16);
  v25 = v8 - a2 + 1835621707;
  LODWORD(STACK[0x3C68]) = v13;
  v26 = a2 - 75286908 + v13;
  v27 = v26 - 960051466;
  LODWORD(STACK[0x3C60]) = v12;
  v28 = a2 - 75286908 + v12 + v26 - 960051466;
  LODWORD(STACK[0x3C70]) = v28;
  v29 = v28 - v25 - 1656796519;
  v30 = STACK[0x3D78];
  v31 = STACK[0x3D70];
  LODWORD(STACK[0x3CC0]) = (v25 ^ 0x258DFFCB) - v29;
  v32 = (a2 - 75286908) ^ 0x2CFDA7A9;
  v33 = v26 - 1088890722;
  v34 = (v26 - 960051466) ^ v32;
  LODWORD(STACK[0x3D10]) = v34;
  v35 = v29 ^ (v26 - 1088890722);
  v36 = v34 + 880677595 - v35;
  LODWORD(STACK[0x3C98]) = v36;
  v37 = v36 ^ v29;
  v38 = (v35 - 2083014939) ^ 0x11A2F2F8;
  LODWORD(STACK[0x3C90]) = v38;
  v39 = (v35 - 2083014939) ^ 0xEF32480D;
  LODWORD(STACK[0x3CA8]) = v39;
  v39 += 630098873;
  LODWORD(STACK[0x3CD0]) = v39;
  v40 = (v37 ^ (v35 - 2083014939)) + v38 + v39;
  LODWORD(STACK[0x3C78]) = v40;
  LODWORD(STACK[0x3C80]) = (v39 ^ v30 ^ v40 ^ v31) - (v39 ^ v30 ^ v40);
  LODWORD(STACK[0x3CD8]) = STACK[0x3E40];
  v41 = v11;
  v42 = STACK[0x3D98];
  v44 = v15;
  v45 = v16 & v42 ^ v11 & a5 ^ v16 & a5 ^ v15 & v42;
  v46 = v16 & v11 ^ STACK[0x3D98] & a5;
  v47 = STACK[0x3D88];
  LODWORD(STACK[0x3E40]) = STACK[0x3D98];
  LODWORD(STACK[0x3D98]) = a5;
  v48 = v47 & v42 ^ v47 & a5;
  v49 = *(v23 + 4 * (BYTE1(v47) ^ 0x67u)) ^ __ROR4__(*(v23 + 4 * (v47 ^ 0xC9u)) ^ 0x98D24E87, 8) ^ __ROR4__(*(v23 + 4 * (BYTE2(v47) ^ 0xF1u)) ^ 0x58324086, 24);
  LODWORD(STACK[0x3D28]) = v47;
  v50 = v49 ^ __ROR4__(*(v23 + 4 * (HIBYTE(v47) ^ 0xD0)) ^ 0x50B648C7, 16);
  LODWORD(STACK[0x3D88]) = v50 ^ 0x15959AFD;
  v51 = v46 ^ v48;
  v52 = v22 ^ (v19 - 1088890722);
  LODWORD(STACK[0x3CE8]) = ((v24 ^ 0x42BE6843 ^ v22) - v22) ^ ((v24 ^ 0x42BE6843 ^ v52) - v52) ^ ((v24 ^ 0xA8D40D41 ^ v50 ^ v33) - (v50 ^ v33 ^ 0xEA6A6502));
  STACK[0x3CF0] = v10;
  v53 = (v10 + 63);
  v54 = STACK[0x3DC0];
  v55 = (((v10 + 63) ^ 0x3C) - 1415284820) ^ 0xC4E0B927 ^ *(STACK[0x3DC0] + 4 * (v53 ^ 0x13) + 370620);
  v56 = STACK[0x3E18];
  v57 = STACK[0x3D00];
  HIDWORD(v58) = *(STACK[0x3D00] + 4 * (LODWORD(STACK[0x3E18]) ^ 0xBDu));
  LODWORD(v58) = HIDWORD(v58);
  v59 = (v58 >> 29) ^ (4 * (v58 >> 29));
  HIDWORD(v58) = *(STACK[0x3D00] + 4 * (BYTE2(LODWORD(STACK[0x3E18])) ^ 0xCAu));
  LODWORD(v58) = HIDWORD(v58);
  v60 = (v58 >> 29) ^ (4 * (v58 >> 29)) ^ 0xCCDDD37C;
  HIDWORD(v58) = *(STACK[0x3D00] + 4 * (HIBYTE(LODWORD(STACK[0x3E18])) ^ 0x74u));
  LODWORD(v58) = HIDWORD(v58);
  v61 = (v58 >> 29) ^ (4 * (v58 >> 29)) ^ 0xC82D193;
  HIDWORD(v58) = *(STACK[0x3D00] + 4 * (BYTE1(LODWORD(STACK[0x3E18])) ^ 0xD1u));
  LODWORD(v58) = HIDWORD(v58);
  v62 = (v58 >> 29) ^ (4 * (v58 >> 29)) ^ __ROR4__(v59 ^ 0x2CE652AE, 8) ^ __ROR4__(v60, 24) ^ __ROR4__(v61, 16);
  LODWORD(STACK[0x3CB8]) = v44;
  LODWORD(STACK[0x3CB0]) = v41;
  v63 = v45 ^ (v44 ^ v41) & v47;
  v64 = STACK[0x3D68];
  HIDWORD(v58) = *(v57 + 4 * (LODWORD(STACK[0x3D68]) ^ 0xF0u));
  LODWORD(v58) = HIDWORD(v58);
  v65 = (v58 >> 29) ^ (4 * (v58 >> 29)) ^ 0x8CC0D393;
  HIDWORD(v58) = *(v57 + 4 * (BYTE2(LODWORD(STACK[0x3D68])) ^ 0x68u));
  LODWORD(v58) = HIDWORD(v58);
  v66 = (v58 >> 29) ^ (4 * (v58 >> 29)) ^ 0x8C8CD1E0;
  HIDWORD(v58) = *(v57 + 4 * (HIBYTE(LODWORD(STACK[0x3D68])) ^ 0x35u));
  LODWORD(v58) = HIDWORD(v58);
  v67 = (v58 >> 29) ^ (4 * (v58 >> 29)) ^ 0x2CA2509F;
  HIDWORD(v58) = *(v57 + 4 * (BYTE1(LODWORD(STACK[0x3D68])) ^ 0x5Cu));
  LODWORD(v58) = HIDWORD(v58);
  v68 = (v58 >> 29) ^ (4 * (v58 >> 29)) ^ __ROR4__(v65, 8) ^ __ROR4__(v66, 24) ^ __ROR4__(v67, 16);
  LODWORD(STACK[0x3D68]) = v68;
  v69 = LODWORD(STACK[0x3C68]) ^ LODWORD(STACK[0x3C60]);
  LODWORD(STACK[0x3D80]) = v16;
  v70 = v51 ^ v44 & (v16 ^ v41);
  LODWORD(STACK[0x3E18]) = v70;
  v71 = STACK[0x3D38];
  v72 = (v62 ^ 0xACD05313 ^ LODWORD(STACK[0x3C88])) - LODWORD(STACK[0x3C88]);
  v73 = STACK[0x3D40];
  v74 = (v56 & STACK[0x3D38] | v31 & ~v56) ^ (v30 ^ LODWORD(STACK[0x3D40])) & v64;
  v75 = (v62 ^ 0xACD05313 ^ LODWORD(STACK[0x3CA0])) - LODWORD(STACK[0x3CA0]);
  v76 = (v62 ^ 0xA0468225 ^ v69 ^ v68) - (v69 ^ v68 ^ 0xC96D136);
  v77 = STACK[0x3D50];
  v78 = LODWORD(STACK[0x3D90]) - LODWORD(STACK[0x3D60]) + v32 + v74 + *STACK[0x3D50] + v55;
  LODWORD(STACK[0x3D78]) = STACK[0x3D40];
  LODWORD(STACK[0x3D70]) = v71;
  v79 = v70 ^ 0x11A2F2F8 ^ v37;
  v80 = v64 & v31 ^ v56 & v73 ^ v64 & v71 ^ v30 ^ v30 & v56;
  v81 = v72 ^ v75;
  v82 = v18 ^ 0x2CFDA7A9;
  v83 = v20 ^ v18 ^ 0x2CFDA7A9;
  v84 = v83 + 880677595 - v52;
  v85 = (LODWORD(STACK[0x3CE0]) ^ 0x258DFFCB) - v22;
  v86 = v84 ^ v22 ^ (v52 - 2083014939);
  v87 = (v52 - 2083014939) ^ 0x11A2F2F8;
  v88 = ((v86 ^ v63) - v86) ^ ((v87 ^ v63) - v87);
  v89 = (v79 ^ v63) - v79;
  HIDWORD(v58) = *(v54 + 4 * (v53 ^ 0x34) + 361936);
  LODWORD(v58) = HIDWORD(v58);
  v90 = v78 + (v81 ^ v76);
  v91 = LODWORD(STACK[0x3E38]) - v82 + LODWORD(STACK[0x3D30]) + *(v77 + 6436) + (((v80 ^ v20) - v20) ^ ((v80 ^ LODWORD(STACK[0x3CC8])) - LODWORD(STACK[0x3CC8])) ^ ((LODWORD(STACK[0x3C70]) ^ v27 ^ v74 ^ v80) - (LODWORD(STACK[0x3C70]) ^ v27 ^ v74))) + ((v58 >> 10) ^ ((v58 >> 10) >> 6) ^ ((v58 >> 10) >> 4) ^ 0x66620DCA);
  LODWORD(v57) = (v52 - 2083014939) ^ 0xEF32480D;
  v92 = v57 + 630098873;
  v93 = v86 + v87 + v57 + 630098873;
  v94 = v88 ^ v89;
  v95 = (((v57 + 630098873) ^ v31) - (v57 + 630098873)) ^ ((v93 ^ v31) - v93) ^ LODWORD(STACK[0x3C80]);
  v96 = LODWORD(STACK[0x3C98]) + LODWORD(STACK[0x3CC0]);
  v97 = v96 ^ (LODWORD(STACK[0x3CC0]) + 1326555630);
  v98 = v97 ^ (LODWORD(STACK[0x3C90]) + v96);
  v99 = v84 + v85;
  v100 = (v84 + v85) ^ (v85 + 1326555630);
  v101 = v100 ^ (v87 + v99);
  LODWORD(v57) = -630098873 - v57 + v100;
  v102 = v98 + v30;
  v103 = LODWORD(STACK[0x3C78]) ^ 0xB34AE21D;
  v104 = LODWORD(STACK[0x3CD0]) - (v103 + v98);
  v105 = v103 + v98 - 745653668;
  v106 = -630098873 - LODWORD(STACK[0x3CA8]) + v97 - LODWORD(STACK[0x3C78]) + v105;
  v107 = v103 + 423716272;
  v108 = v104 - v106;
  v109 = STACK[0x3CD8];
  v110 = STACK[0x3D48];
  v111 = ((v103 + 423716272) ^ v109 ^ (v104 - v106) ^ LODWORD(STACK[0x3D48])) - ((v103 + 423716272) ^ v109 ^ (v104 - v106));
  v112 = v91 + (LODWORD(STACK[0x3D68]) ^ 0xC96D136);
  LODWORD(STACK[0x3D90]) = v95 - v101;
  v113 = (v93 ^ 0xB34AE21D) + v101;
  v114 = v92 - v113;
  v113 -= 745653668;
  LODWORD(v57) = v57 - v93 + v113;
  v115 = (v93 ^ 0xB34AE21D) + 423716272;
  v116 = v114 - v57;
  v117 = v111 ^ ((v115 ^ v110) - v115) ^ ((v116 ^ v110) - v116);
  v118 = v106 - v108;
  v119 = v118 + v107;
  v120 = (v108 ^ v105) - v118;
  v121 = (v108 + 732870267) ^ v118;
  LODWORD(v57) = v57 - v116;
  v122 = v113 - v117 - v112;
  v123 = v57 + v115;
  v124 = v105 + v109 + v90;
  v125 = (v116 ^ v113) - v57;
  LODWORD(v53) = v122 ^ v121 ^ v124;
  LODWORD(v57) = (v116 + 732870267) ^ v57;
  v126 = v124 ^ v120 ^ v122;
  v127 = (v124 ^ v120 ^ v121) - (v57 ^ v125 ^ v122);
  v128 = v108 + 732870267 - v120;
  v129 = v119 - v121;
  v121 -= 1426077834;
  v130 = v121 ^ v129;
  v131 = v121 - (v108 + 732870267);
  v108 -= 224071955;
  v132 = v121 + v108 + v128;
  LODWORD(STACK[0x3D68]) = v127 ^ v128;
  v133 = v116 + 732870267 - v125;
  v134 = v123 - v57;
  v135 = v53 - v57;
  LODWORD(v57) = v57 - 1426077834;
  v136 = v57 ^ v134;
  v137 = v57 - (v116 + 732870267);
  v116 -= 224071955;
  v138 = -880677595 - LODWORD(STACK[0x3D10]) + v99 - v94 + LODWORD(STACK[0x3D88]) - v90;
  v139 = (v130 ^ v132) - v131;
  v140 = v57 + v116 + v133;
  v141 = (-880677595 - v83 + LODWORD(STACK[0x3E18]) + v96 + LODWORD(STACK[0x3CE8]) + v112) ^ v108;
  LODWORD(STACK[0x3E18]) = v135 ^ v133 ^ (v126 - v125);
  LODWORD(v57) = (v141 ^ v131) - (v137 ^ v116 ^ (v138 + 1));
  v142 = (((v136 ^ v140) - v137) ^ v116) - v137;
  LODWORD(STACK[0x3D88]) = v57 ^ v132;
  LODWORD(STACK[0x3D60]) = v142 - 775163766;
  v143 = *(v9 + 8 * ((STACK[0x3CF0] == 0) | (2 * (STACK[0x3CF0] == 0)) | LODWORD(STACK[0x3D58])));
  STACK[0x3D50] = v77 + 4;
  LODWORD(STACK[0x3D38]) = v64;
  LODWORD(STACK[0x3D40]) = v56;
  LODWORD(STACK[0x3D48]) = STACK[0x3CB0];
  LODWORD(STACK[0x3D30]) = v102;
  LODWORD(STACK[0x3E38]) = (v139 ^ v108) - v131 - 775163766;
  return v143((v142 + 1965789421), (v139 ^ v108) - v131 + 93331032);
}

uint64_t sub_100D09104()
{
  v2 = LOBYTE(STACK[0x6C37]);
  v3 = *(*STACK[0x3E40] + (STACK[0x15F0] & *v0));
  v4 = (((2 * (v3 + STACK[0x15E8])) | 0x82E689BDEA2E9C58) - (v3 + STACK[0x15E8]) - 0x417344DEF5174E2CLL) ^ 0x83DC7A74CAE6F6C8;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xA1B29DC5D776132BLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) | 0x3094D57343DE934CLL) - (v12 + v11) + 0x67B595465E10B65ALL) ^ 0x774E4AF8540A014ALL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (0xA2D104C30DCA92BALL - ((v17 + v16) | 0xA2D104C30DCA92BALL) + ((v17 + v16) | 0x5D2EFB3CF2356D45)) ^ 0x97BFA127884AECALL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = STACK[0x4EA0];
  LOBYTE(v19) = *(STACK[0x4EA0] + ((LOBYTE(STACK[0x3F17]) ^ (LOBYTE(STACK[0x4638]) - ((2 * LOBYTE(STACK[0x4638])) & 0xA4) - 46)) ^ 0xD2u ^ (((v20 + v19) ^ 0x6F4F60BC0E025EE0) >> STACK[0x1318])));
  v22 = LOBYTE(STACK[0x4E9F]) & v19;
  LOBYTE(STACK[0x4645]) = v22;
  LOBYTE(v19) = v19 ^ (2 * v22);
  v23 = v19;
  v24 = (v19 & LOBYTE(STACK[0x4E9C])) >> STACK[0x5328];
  v25 = v23 << STACK[0x5338];
  LOBYTE(STACK[0x4646]) = v25;
  LOBYTE(v21) = *(v21 + v2) ^ (2 * (STACK[0x4E9D] & *(v21 + v2)));
  LOBYTE(STACK[0x4647]) = v21;
  *(STACK[0x3D18] + 1824) = (((LOBYTE(STACK[0x4E9E]) & v21) >> STACK[0x5350]) | (v21 << STACK[0x5320])) ^ LODWORD(STACK[0x52A4]) ^ (v24 | v25);
  v26 = *(v1 + 8 * (STACK[0x3740] + 6803));
  STACK[0x3F18] = STACK[0x1928];
  STACK[0x3F08] = v26;
  return (*(v1 + 8 * (LODWORD(STACK[0x3DF0]) ^ 0x338C)))();
}

uint64_t sub_100D0B1F0()
{
  v5 = (STACK[0x3578] + 4 * v1);
  *v5 = 0u;
  v5[1] = 0u;
  return (*(v4 + 8 * ((31462 * ((v3 ^ 0x3ED7) + v1 == v0)) ^ v2)))();
}

uint64_t sub_100D0B22C()
{
  v2 = STACK[0x32B8];
  STACK[0x3B18] = LODWORD(STACK[0x32B8]);
  v2 += 64;
  v3 = STACK[0x3A28];
  LODWORD(STACK[0x32B8]) = v2;
  return (*(v1 + 8 * ((241 * ((((v0 + 401233540) ^ (v2 > v3)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_100D0B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  LODWORD(STACK[0x3A28]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  v9 = 47 * ((v6 - 25938) ^ 0x128A);
  LODWORD(STACK[0x3D68]) = v9;
  v10 = *(v7 + 8 * ((12605 * (STACK[0x3420] < v9 + ((v6 - 30328) | 0x4C40u) - 41212)) ^ (v6 - 25938)));
  LODWORD(STACK[0x3D80]) = 10;
  LODWORD(STACK[0x3E18]) = 1;
  v11 = STACK[0x10C8];
  STACK[0x3998] = STACK[0x3D60];
  STACK[0x39E8] = STACK[0x3D88];
  v12 = STACK[0x10C0];
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x3E40];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x33E8]) = STACK[0x3688];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  LODWORD(STACK[0x3948]) = STACK[0x3D20];
  STACK[0x3540] = v8;
  LODWORD(STACK[0x3710]) = STACK[0x3B08];
  LODWORD(STACK[0x38C8]) = STACK[0x31D0];
  v13 = LODWORD(STACK[0x424]);
  LODWORD(STACK[0x33C0]) = v13;
  LODWORD(STACK[0x2424]) = STACK[0x3D28];
  LODWORD(STACK[0x31E8]) = STACK[0x3AE8];
  LODWORD(STACK[0x351C]) = STACK[0x3AD8];
  LODWORD(STACK[0x3988]) = STACK[0x3D90];
  LODWORD(STACK[0x2500]) = STACK[0x3AF0];
  LODWORD(STACK[0x3810]) = STACK[0x3B00];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x32E8]) = v5;
  STACK[0x3318] = LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  LODWORD(STACK[0x3980]) = STACK[0x3D70];
  STACK[0x39C0] = v13;
  return v10(a1, v11, a3, a4, a5, v12);
}

uint64_t sub_100D0B440()
{
  *(v3 - 1) = 0u;
  *v3 = 0u;
  return (*(v4 + 8 * (((v1 == 0) * v2) | v0)))();
}

uint64_t sub_100D0B46C(int a1)
{
  v9 = a1 + v7;
  v10 = (a1 + v7) >> 16;
  v11 = (v9 + v10) >> 8;
  v12 = a1 + v6 + v10;
  v13 = (v12 - v11) >> 10;
  v14 = (v12 + v13 - v11) >> 4;
  v15 = a1 + v4 + v14;
  v16 = v13 + v10;
  v17 = (v16 + v15 - v11) >> 15;
  v18 = (v16 + v15 + v17 - v11) >> 3;
  v19 = a1 + v5 + v17 + v14 + v18;
  v20 = v16 + a1 + v3 + v17 + v14 + v18;
  v21 = (v20 - v11) >> 11;
  v22 = (v20 - v21 - v11) >> 4;
  v23 = (v16 + v19 - v22 - v21 - v11) >> 13;
  v24 = a1 + v18 + v17 + v14 + v23;
  v25 = v16 + v19 + v23 - v22 - v21 - v11;
  v26 = v25 >> 5;
  v27 = v25 - (v25 >> 5) + 456859172;
  v28 = v27 >> 12;
  v29 = (v27 >> 12) + v27;
  v30 = (v16 - v11 + v2 + v24 + (((((v29 >> 4) + v29 - 450744435) >> 13) + (v29 >> 4) + v29 - 450744435) >> 5) + (((v29 >> 4) + v29 - 450744435) >> 13) + (v29 >> 4) + v28 - v26 - v22 - v21) ^ 0xB88C5D3E;
  v31 = (v30 + (v30 >> 9) + ((v30 + (v30 >> 9)) >> 6)) ^ 0x31A4431D;
  v32 = v31 - (v31 >> 12) - ((v31 - (v31 >> 12)) >> 1) + 474011360;
  LOBYTE(STACK[0x4E0A]) = *(STACK[0x3EE0] + (0xCD1E5AAD % LODWORD(STACK[0x4DF4])));
  LOBYTE(STACK[0x4E0B]) = STACK[0x419C];
  LODWORD(STACK[0x4E0C]) = v32 - (v32 >> 14);
  return (*(v8 + 8 * v1))();
}

uint64_t sub_100D0BE78@<X0>(char a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, unsigned int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _BYTE *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, char a51, __int16 a52, char a53)
{
  STACK[0x260] = v62;
  *a40 = a53;
  a40[5] = STACK[0x278];
  a40[1] = a51;
  STACK[0x280] = v54;
  a40[2] = v54;
  a40[3] = STACK[0x288];
  a40[8] = a1 ^ 0xB4;
  a40[7] = v55 ^ 0xB4;
  a40[13] = v59 ^ 0xB4;
  STACK[0x268] = v60;
  a40[6] = v60;
  a40[4] = v61;
  a40[10] = a4 ^ 0xB4;
  a40[9] = (((v53 - 47) & 0xFE) + 62) ^ a5;
  a40[15] = v58 ^ 0xB4;
  STACK[0x248] = a2;
  a40[12] = v57 ^ 0xB4;
  a40[11] = a3 ^ 0xB4;
  a40[14] = v56 ^ 0xB4;
  return (*(a6 + 8 * v53))(a3 ^ 0xB4, a16, 1, a3, a4, a17, a18, v61);
}

uint64_t sub_100D0BF70()
{
  v4 = v2 & 0x853AD75;
  v5 = STACK[0x800];
  STACK[0xA60] = &STACK[0xA90] + v1;
  STACK[0x830] = v0 - 11131 + 1565 * (v4 ^ 0xD22u);
  STACK[0x7E8] = v5;
  STACK[0xA40] = 0;
  STACK[0x858] = 0;
  LODWORD(STACK[0xA34]) = 0;
  return (*(v3 + 8 * (v4 ^ 0x3B44u)))();
}

uint64_t sub_100D0C07C()
{
  v10 = *(v9 + ((v3 ^ 3) * v2) % (815 * (v0 ^ 0x4B3E) - 7206));
  v11 = v8 + ((31 * v10) ^ 0xD ^ (-106 * v10)) * v1;
  *(v6 + v7 + v3 * v1 - (((((v7 + v3 * v1) >> 1) * v4) >> 32) >> 8) * v5) = *(v6 + (v11 - ((4464623 * v11) >> 32) * v5));
  return (*(STACK[0x6D8] + 8 * ((v3 != 15) ^ v0)))();
}

uint64_t sub_100D0C15C()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x44B8] & 0xD6737E00 | 0x298C81FF) - 1831847764 + (STACK[0x44B8] & 0x298C81F8 | 0xD6737E00) + 1)) & 0xFFFFFFFFFFFFFFF8));
  v3 = __ROR8__(STACK[0x44B8] & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (((2 * (v3 + v2)) | 0x7918D866F8D8B66) - (v3 + v2) + 0x7C37393CC8393A4DLL) ^ 0x4167F86908377D57;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = __ROR8__(v6, 8);
  v8 = v6 ^ __ROR8__(v5, 61);
  v9 = (v7 + v8) ^ 0x6FF046966119128DLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0x2728C03242FA6ABCLL) - (v11 + v10) + 0x6C6B9FE6DE82CAA1) ^ 0xCDD9022309F4D98ALL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xEF042041F5E548ECLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xD8C7B31FCA19D9DELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x5455012E8AB1C38FLL;
  v22 = v18 ^ __ROR8__(v17, 61);
  v19 = __ROR8__(v18, 8);
  LODWORD(v22) = (((0x885286C66CAB1045 - ((v19 + v22) | 0x885286C66CAB1045) + ((v19 + v22) | 0x77AD79399354EFBALL)) ^ 0x18E219859D56B15ALL) >> (8 * (STACK[0x44B8] & 7u))) ^ LOBYTE(STACK[0x3F17]);
  LODWORD(v22) = (((v22 ^ 0xFFFFFFE8) - 57) ^ ((v22 ^ 1) + 48) ^ ((v22 ^ 0xFFFFFFE9) - 56)) - 124;
  v20 = SLODWORD(STACK[0x4470]);
  v21 = *(v1 + 8 * v20);
  LODWORD(v22) = v22 - 44 * ((187 * v22) >> 13);
  if ((v22 & 0xFE) != 0)
  {
    v22 = v22;
  }

  else
  {
    v22 = 1;
  }

  STACK[0x4490] = v22;
  LODWORD(STACK[0x4074]) = v20;
  STACK[0x4078] = 1;
  STACK[0x4080] = 0;
  LODWORD(STACK[0x4088]) = STACK[0x4484];
  LODWORD(STACK[0x408C]) = STACK[0x4480];
  LODWORD(STACK[0x4090]) = STACK[0x44AC];
  LODWORD(STACK[0x4094]) = -848443049;
  return v21();
}

uint64_t sub_100D0C4FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, int a8)
{
  v19 = bswap32(v12) ^ v16;
  v20 = bswap32(v17) ^ v18;
  *a6 = (((v10 ^ v19) - v10) ^ ((v14 ^ v19) - v14) ^ ((a1 ^ v9 ^ v20 ^ v19) - (a1 ^ v9 ^ v20))) - v11;
  a6[2251] = v20 + v8;
  return (*(v15 + 8 * (a8 ^ (58 * (v13 != 13)))))();
}

uint64_t sub_100D0C5F0()
{
  LODWORD(STACK[0x3D20]) = 0;
  v2 = *(v1 + 8 * (((6 * ((v0 - 1364725988) & 0x5158529F ^ 0x5F5B) - 8029) * (STACK[0x3D98] & 1)) ^ v0));
  LODWORD(STACK[0x2BB0]) = 44;
  LODWORD(STACK[0x3D98]) = 2;
  STACK[0x32D0] = 11;
  v3 = STACK[0x450];
  STACK[0x3D48] = STACK[0x3D58];
  STACK[0x3D60] = v3;
  v4 = STACK[0x10F0];
  STACK[0x3D88] = STACK[0x10F0];
  STACK[0x3B20] = v3;
  STACK[0x3CF0] = v4;
  v5 = STACK[0x39C0];
  LODWORD(STACK[0x3AE0]) = STACK[0x39C0];
  v6 = STACK[0x1BC0];
  LODWORD(STACK[0x3E40]) = STACK[0x1BC0];
  LODWORD(STACK[0x3D90]) = v5;
  LODWORD(STACK[0x3CE8]) = v6;
  LODWORD(STACK[0x3268]) = v5;
  LODWORD(STACK[0x3D70]) = v6;
  return v2();
}

uint64_t sub_100D0C6B4()
{
  v2 = *(*STACK[0x3E40] + (STACK[0x1458] & *v0));
  v3 = (v2 + STACK[0x1450]) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * (v7 + v6)) & 0xF2F0982500932C9ELL) - (v7 + v6) - 0x79784C1280499650) ^ 0xE977F57B1EAF7B3DLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xA1B29DC5D776132BLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) & 0xBB48735A1E8C31D4) - (v12 + v11) + 0x225BC652F0B9E715) ^ 0xCD5FE613055CAFF9;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = __ROR8__((((2 * (v15 + v14)) & 0xB87627856D9E5860) - (v15 + v14) - 0x5C3B13C2B6CF2C31) ^ 0x7B035F2283290A11, 8);
  v17 = (((2 * (v15 + v14)) & 0xB87627856D9E5860) - (v15 + v14) - 0x5C3B13C2B6CF2C31) ^ 0x7B035F2283290A11 ^ __ROR8__(v14, 61);
  v18 = (((2 * (v16 + v17)) | 0xCE952F667C75BA76) - (v16 + v17) - 0x674A97B33E3ADD3BLL) ^ 0x331F969DB48B1EB4;
  v19 = (LOBYTE(STACK[0x3F17]) ^ (LOBYTE(STACK[0x45AC]) - ((2 * LOBYTE(STACK[0x45AC])) & 0x52) + 41)) ^ 0x29u ^ (((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0) >> STACK[0x13E0]);
  v20 = STACK[0x4EA0];
  LODWORD(v16) = STACK[0x6C24];
  v21 = *(v20 + v19) ^ (2 * (STACK[0x4E9F] & *(v20 + v19)));
  v22 = v21 << STACK[0x5338];
  LOBYTE(v21) = v21 & LOBYTE(STACK[0x4E9E]);
  LOBYTE(STACK[0x45AD]) = v21;
  v23 = v21 >> STACK[0x5350];
  LOBYTE(v20) = *(v20 + LOBYTE(STACK[0x45A0])) ^ (2 * (STACK[0x4E9D] & *(v20 + LOBYTE(STACK[0x45A0]))));
  LOBYTE(v20) = ((v20 & LOBYTE(STACK[0x4E9C])) >> STACK[0x5328]) | (v20 << STACK[0x5320]);
  LOBYTE(STACK[0x45AE]) = v20;
  LOBYTE(v23) = v23 ^ v22 ^ v20 ^ LODWORD(STACK[0x52C0]);
  LOBYTE(STACK[0x45AF]) = v16;
  *(STACK[0x3D18] + 1805) = v23;
  v24 = *(v1 + 8 * (LODWORD(STACK[0x295C]) + 24197));
  STACK[0x3F18] = STACK[0x1858];
  STACK[0x3F08] = v24;
  return (*(v1 + 8 * (LODWORD(STACK[0x3B30]) ^ 0x2851)))();
}

uint64_t sub_100D0D684()
{
  v4 = v0 ^ ((v0 & STACK[0x3908]) >> 1);
  v5 = (*(STACK[0x3DC0] + 4 * (v0 ^ 0x55) + 180260) + (v2 ^ v0 ^ 0xFFFF9852) - 895883727) ^ 0xE50D8FD3;
  LODWORD(v4) = (((v4 & STACK[0x38D0]) >> STACK[0x3D80]) ^ (v4 << STACK[0x3E38]) ^ LODWORD(STACK[0x38D8]));
  *(STACK[0x35D8] + 4 * v4) = ((((v5 ^ ((v5 & STACK[0x3920]) >> 1)) & STACK[0x38D0]) >> STACK[0x3D88]) + (((v5 ^ ((v5 & STACK[0x3920]) >> 1)) & STACK[0x38C0]) << STACK[0x3D78])) ^ LODWORD(STACK[0x3778]);
  *(STACK[0x3748] + 4 * v4) = *(STACK[0x3990] + 2 * (v0 ^ 0x19) + 12) ^ 0x3D522C36;
  return (*(v1 + 8 * ((22773 * (v0 == 255)) ^ v3)))();
}

uint64_t sub_100D0D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x3798]) = a7 + 30;
  v10 = *(v8 + 8 * ((((v7 ^ 0x93E) - 14489 + 76 * (v7 ^ 0x1383)) * (v9 == 30)) ^ v7));
  LODWORD(STACK[0x3D58]) = 30;
  return v10();
}

uint64_t sub_100D0D840(int a1)
{
  *(v3 - 1) = 0u;
  *v3 = 0u;
  return (*(v4 + 8 * (((v2 != 0) * a1) ^ v1)))();
}

uint64_t sub_100D0D86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unint64_t a50)
{
  LODWORD(STACK[0x1958]) = 0;
  LODWORD(STACK[0x3760]) = 0;
  LODWORD(STACK[0x3E18]) = 0;
  v52 = *(v51 + 8 * ((((v50 + 9058) ^ 0x52E1) * (STACK[0x3D38] & 1)) ^ v50));
  STACK[0x33C0] = 64;
  STACK[0x1BB0] = 5;
  LODWORD(STACK[0x3D98]) = 2;
  STACK[0x32D0] = 4;
  STACK[0x36A0] = a50;
  STACK[0x1848] = STACK[0x3D60];
  STACK[0x1840] = STACK[0x3D88];
  STACK[0x1A88] = STACK[0x3B20];
  STACK[0x1A80] = STACK[0x3CF0];
  STACK[0x2238] = LODWORD(STACK[0x2BB0]);
  LODWORD(STACK[0x38C8]) = STACK[0x3E40];
  STACK[0x2038] = LODWORD(STACK[0x3D20]);
  LODWORD(STACK[0x12B4]) = STACK[0x3D90];
  STACK[0x3698] = LODWORD(STACK[0x3CE8]);
  LODWORD(STACK[0x32E8]) = STACK[0x3268];
  LODWORD(STACK[0x2158]) = STACK[0x3D70];
  v53 = STACK[0x2A80];
  STACK[0x3D48] = STACK[0x3D58];
  STACK[0x3D60] = v53;
  v54 = STACK[0x10B8];
  STACK[0x3D88] = STACK[0x10B8];
  STACK[0x3B20] = v53;
  STACK[0x3CF0] = v54;
  LODWORD(STACK[0x3AE0]) = STACK[0x12AC];
  LODWORD(STACK[0x2BB0]) = 5;
  v55 = STACK[0x2AB8];
  LODWORD(STACK[0x3E40]) = STACK[0x2AB8];
  v56 = STACK[0x39C0];
  LODWORD(STACK[0x3D90]) = STACK[0x39C0];
  LODWORD(STACK[0x3CE8]) = v55;
  LODWORD(STACK[0x3268]) = v56;
  LODWORD(STACK[0x3D70]) = v55;
  LODWORD(STACK[0x3D20]) = 0;
  return v52();
}

uint64_t sub_100D0D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29)
{
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3E18]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3D30]) = 0;
  v32 = (v30 - 24419) | 0x5086;
  v33 = *a29 & 1;
  LODWORD(STACK[0x32C0]) = v32;
  v34 = *(v31 + 8 * ((5526 * (v33 == (v32 ^ (v30 - 3805)))) ^ v30));
  STACK[0x16A8] = STACK[0x36D0];
  STACK[0x3398] = STACK[0x37A8];
  STACK[0x16A0] = STACK[0x3860];
  STACK[0x29B0] = STACK[0x3760];
  STACK[0x480] = STACK[0x2B88];
  STACK[0x10F0] = STACK[0x3290];
  STACK[0x470] = a8;
  LODWORD(STACK[0x2BB0]) = v29;
  LODWORD(STACK[0x268C]) = a7;
  LODWORD(STACK[0x366C]) = STACK[0x36B8];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  LODWORD(STACK[0x39A8]) = STACK[0x3B18];
  STACK[0x3700] = LODWORD(STACK[0x3698]);
  STACK[0x37B8] = LODWORD(STACK[0x3550]);
  LODWORD(STACK[0x3710]) = STACK[0x3808];
  LODWORD(STACK[0x2A48]) = STACK[0x33C0];
  STACK[0x33A8] = LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x3268]) = STACK[0x32D8];
  LODWORD(STACK[0x2630]) = STACK[0x32E8];
  STACK[0x2228] = LODWORD(STACK[0x2B80]);
  LODWORD(STACK[0x128C]) = STACK[0x36A0];
  LODWORD(STACK[0x3D20]) = 6;
  LODWORD(STACK[0x3D98]) = 2;
  LODWORD(STACK[0x3D40]) = 1;
  LODWORD(STACK[0x32C8]) = STACK[0x3958];
  v35 = STACK[0x1188];
  STACK[0x3D60] = a26;
  STACK[0x3D88] = a29;
  LODWORD(STACK[0x3E40]) = v35;
  v36 = LODWORD(STACK[0x38B8]);
  STACK[0x39C0] = v36;
  LODWORD(STACK[0x2010]) = v36;
  LODWORD(STACK[0x31D0]) = STACK[0x38C8];
  LODWORD(STACK[0x3D90]) = v36;
  LODWORD(STACK[0x3D70]) = v35;
  return v34();
}

uint64_t sub_100D0DB68()
{
  LOBYTE(STACK[0x6D3D]) = STACK[0x4058];
  v2 = STACK[0x405C];
  if (LODWORD(STACK[0x405C]) <= 1)
  {
    v2 = 1;
  }

  if (LODWORD(STACK[0x4DF8]) <= v2 + 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = STACK[0x4DF8];
  }

  return (*(v1 + 8 * ((((v3 - v2) > 1) * (486 * (v0 ^ 0x51CB) - 14085)) ^ v0)))();
}

uint64_t sub_100D0DBE0()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x25C8)))(776);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v3 + 40) = 85541415;
  *(v3 + 592) = 0u;
  *(v3 + 608) = 0u;
  *(v3 + 624) = 0u;
  *(v3 + 640) = 0;
  *(v3 + 648) = 0xD21C809400000000;
  *(v3 + 656) = 0u;
  *(v3 + 672) = 0u;
  *(v3 + 688) = 0u;
  *(v3 + 704) = 0u;
  *(v3 + 720) = 0;
  *(v3 + 723) = 0;
  *(v3 + 728) = 0;
  *(v3 + 736) = -769884012;
  *(v3 + 744) = 0u;
  *(v3 + 760) = -769884012;
  *(v3 + 768) = 0;
  *v0 = v3 + 0x79296B4A625EDF44;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100D0DF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v5 = *(v4 + 8 * (v3 - 16299));
  LODWORD(STACK[0x3CF0]) = 53;
  LODWORD(STACK[0x3D88]) = 2;
  v6 = STACK[0x448];
  STACK[0x3D40] = STACK[0x448];
  v7 = STACK[0x1BE8];
  STACK[0x3D78] = STACK[0x1BE8];
  STACK[0x3B20] = v6;
  STACK[0x3B18] = v7;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v8 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = v8;
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v5(a1, v3, a3, v8);
}

uint64_t sub_100D0E008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, unsigned int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3E18]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  LODWORD(STACK[0x3A28]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3D68]) = (2 * a5) ^ 0x740E;
  v66 = STACK[0x3688];
  v67 = *(v65 + 8 * (((LODWORD(STACK[0x3688]) < ((2 * a5) ^ 0x269Eu)) * (67 * (a5 ^ 0x13EF) + 2593)) ^ a5));
  LODWORD(STACK[0x3D80]) = 14;
  v68 = STACK[0x34C0];
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  STACK[0x11F0] = a53;
  STACK[0x1208] = v68;
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x33E8]) = v66;
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  STACK[0x11F8] = a30;
  v69 = STACK[0x3438];
  LODWORD(STACK[0x3550]) = STACK[0x3438];
  LODWORD(STACK[0x1A70]) = STACK[0x3D38];
  STACK[0x3620] = LODWORD(STACK[0x351C]);
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  STACK[0x39C0] = v69;
  return v67(a1, v68, a2, a3, a4, a65);
}

uint64_t sub_100D0E128()
{
  LODWORD(STACK[0x3E18]) = 0;
  v1 = LODWORD(STACK[0x3D68]) - 238;
  v2 = LODWORD(STACK[0x3D68]) + 1779892339;
  v3 = STACK[0x3D48];
  *v3 = STACK[0x3D10];
  STACK[0x3D48] = (v3 + 1);
  LODWORD(v3) = LODWORD(STACK[0x3760]) - 5621 + (v2 & 0x95E8FDFF);
  v4 = STACK[0x33C0];
  LODWORD(STACK[0x3760]) = v3;
  return (*(v0 + 8 * (((v3 < v4) * (v2 ^ 0x6A1717FD)) ^ v1)))();
}

uint64_t sub_100D0E1A8@<X0>(uint64_t a1@<X1>, unint64_t a2@<X3>, int a3@<W8>)
{
  v7 = (v3 + 7895);
  if ((*v4 & ((v3 - 13254) << a3)) != 0)
  {
    v8 = STACK[0x960];
  }

  else
  {
    v8 = STACK[0x2620];
  }

  v9 = STACK[0x31E8];
  v10 = *(v5 + 8 * v3);
  STACK[0x3D58] = STACK[0x10E8];
  STACK[0x3D50] = v8;
  STACK[0x1280] = v4;
  STACK[0x22D8] = a2;
  LODWORD(STACK[0x116C]) = a3;
  LODWORD(STACK[0x3E18]) = v6;
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x31A8]) = v6;
  LODWORD(STACK[0x3D40]) = STACK[0x3540];
  LODWORD(STACK[0x3D28]) = STACK[0x1FD8];
  LODWORD(STACK[0x3B08]) = STACK[0x3710];
  v11 = LODWORD(STACK[0x2424]);
  LODWORD(STACK[0x3AE8]) = v9;
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  return v10(v7, a1, v11);
}

uint64_t sub_100D0E27C()
{
  LODWORD(STACK[0x32E0]) = 0;
  LODWORD(STACK[0x3E18]) = 0;
  LODWORD(STACK[0x3D30]) = 0;
  v3 = (v0 - 21433) | 0x529E;
  v4 = LODWORD(STACK[0x3688]) == 0;
  LODWORD(STACK[0x32C0]) = v3;
  v5 = *(v1 + 8 * ((((v0 + 956541637) & 0xC6FC6DAB ^ v3 ^ 0x1987) * v4) ^ v0));
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  STACK[0x2B88] = STACK[0x480];
  STACK[0x3290] = STACK[0x10F0];
  STACK[0x11F0] = STACK[0x3B08];
  STACK[0x1208] = STACK[0x3D10];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  STACK[0x11F8] = v2;
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  LODWORD(STACK[0x1A70]) = STACK[0x3D38];
  LODWORD(STACK[0x3808]) = STACK[0x3710];
  STACK[0x3620] = LODWORD(STACK[0x3D28]);
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  v6 = STACK[0x3438];
  LODWORD(STACK[0x32D8]) = STACK[0x3438];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  LODWORD(STACK[0x2B80]) = STACK[0x2228];
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  LODWORD(STACK[0x3D40]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D50]) = 1;
  LODWORD(STACK[0x268C]) = v6;
  LODWORD(STACK[0x3688]) = 1;
  LODWORD(STACK[0x32C8]) = STACK[0x3958];
  return v5();
}

uint64_t sub_100D0E3EC()
{
  v2 = (LOBYTE(STACK[0x3D08]) ^ LOBYTE(STACK[0x3D10]) ^ (-3 * (((((v1 ^ 0xCB) - 59) & 0xFE ^ 0x47) + 98) ^ 0x58)));
  *(STACK[0x3DC8] + 4 * (-3 * (((((v1 ^ 0xCB) - 59) & 0xFE ^ 0x47) + 98) ^ 0x58))) = ((v2 ^ 0xC6) - 1780592715) ^ LODWORD(STACK[0x3960]) ^ LODWORD(STACK[0x33E8]) ^ LODWORD(STACK[0x3D20]) ^ 0x82B48095 ^ *(STACK[0x3DC0] + 197184 + 4 * (v2 ^ 0xF7u));
  v3 = *(v0 + 8 * SLODWORD(STACK[0x28B4]));
  LODWORD(STACK[0x3364]) = LODWORD(STACK[0x28B4]) ^ 0x5E86;
  return v3(1595012350 * (((((v1 ^ 0x7D38E7CB) - 1338914363) & 0xFFFFFFFE ^ 0x86A5DD47) - 496099998) ^ 0x5A265F58));
}

uint64_t sub_100D0E4EC()
{
  v3 = v0 + 16858;
  v4 = LODWORD(STACK[0x2C20]) == ((v0 + 16858) ^ 0x52BA);
  if (LODWORD(STACK[0x2C20]) == ((v0 + 16858) ^ 0x52BA))
  {
    v5 = STACK[0x2260];
  }

  else
  {
    v5 = STACK[0x3430];
  }

  v6 = STACK[0x3710];
  if (LODWORD(STACK[0x2C20]) == (v3 ^ 0x52BA))
  {
    v7 = STACK[0x3540];
  }

  else
  {
    v7 = STACK[0x3710];
  }

  if (LODWORD(STACK[0x2C20]) == (v3 ^ 0x52BA))
  {
    v8 = STACK[0x3540];
  }

  else
  {
    v8 = v2;
  }

  LODWORD(STACK[0x3D40]) = v8;
  v9 = STACK[0x2500];
  if (v4)
  {
    v9 = v2;
  }

  LODWORD(STACK[0x3AF0]) = v9;
  v10 = *(v1 + 8 * v0);
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = v5;
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3E18]) = v7;
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v6;
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  return v10();
}

uint64_t sub_100D0E5A8()
{
  v1 = STACK[0x3AC0];
  v2 = *STACK[0x3AC0];
  v3 = ((STACK[0x3B18] - LODWORD(STACK[0x208])) >> 2) - 80 * ((STACK[0x3B18] - LODWORD(STACK[0x208])) / 0x140);
  v4 = STACK[0x3690];
  v5 = STACK[0x3B18] >= LODWORD(STACK[0x208]);
  v6 = STACK[0x3B18] < LODWORD(STACK[0x204]);
  v7 = !v6 || !v5;
  if (!v6 || !v5)
  {
    v2 = 0;
  }

  *(v4 + 4 * v3) = *(STACK[0x3690] + 4 * v3) + v2;
  v8 = *(v1 + 14344);
  v9 = STACK[0x3DB8];
  if (!v6 || !v5)
  {
    v8 = 0;
  }

  *(v9 + 4 * v3) = *(STACK[0x3DB8] + 4 * v3) + v8;
  v10 = v3 | 1;
  v11 = STACK[0x4B0];
  v12 = *(STACK[0x4B0] + 15480);
  if (v7)
  {
    v12 = 0;
  }

  *(v4 + 4 * v10) = *(v4 + 4 * (v3 | 1)) | v12;
  v13 = STACK[0x1AB8];
  v14 = *(STACK[0x1AB8] + 14096);
  if (v7)
  {
    v14 = 0;
  }

  *(v9 + 4 * v10) += v14;
  v15 = STACK[0x39F0];
  v16 = (235 * (LODWORD(STACK[0x39F0]) ^ 0x7331)) ^ 0x529C | v3;
  v17 = v11[3871];
  if (v7)
  {
    v17 = 0;
  }

  *(v4 + 4 * v16) += v17;
  v18 = v13[3525];
  if (v7)
  {
    v18 = 0;
  }

  *(v9 + 4 * v16) |= v18;
  v19 = v11[3872];
  v20 = v3 | 3;
  v21 = *(v4 + 4 * (v3 | 3));
  LODWORD(STACK[0x2A90]) = v19;
  if (v7)
  {
    v19 = 0;
  }

  *(v4 + 4 * v20) = v21 + v19;
  v22 = v13[3526];
  if (v7)
  {
    v22 = 0;
  }

  *(v9 + 4 * v20) ^= v22;
  v23 = v3 | 4;
  v24 = v11[3873];
  if (v7)
  {
    v24 = 0;
  }

  *(v4 + 4 * v23) = v24 ^ *(v4 + 4 * (v3 | 4));
  v25 = v13[3527];
  if (v7)
  {
    v25 = 0;
  }

  *(v9 + 4 * v23) ^= v25;
  v26 = v11[3874];
  if (v7)
  {
    v26 = 0;
  }

  *(v4 + 4 * (v3 | 5)) ^= v26;
  v27 = v13[3528];
  if (v7)
  {
    v27 = 0;
  }

  *(v9 + 4 * (v3 | 5)) |= v27;
  v28 = v11[3875];
  v29 = 74 * (v15 ^ 0x7333) + v3 - 6506;
  if (v7)
  {
    v28 = 0;
  }

  *(v4 + 4 * v29) |= v28;
  v30 = v13[3529];
  if (v7)
  {
    v30 = 0;
  }

  *(v9 + 4 * v29) |= v30;
  v31 = v11[3876];
  if (v7)
  {
    v31 = 0;
  }

  *(v4 + 4 * (v3 | 7)) |= v31;
  v32 = v13[3530];
  if (v7)
  {
    v32 = 0;
  }

  *(v9 + 4 * (v3 | 7)) ^= v32;
  v33 = v11[3877];
  v34 = v3 | 8;
  if (v7)
  {
    v33 = 0;
  }

  *(v4 + 4 * v34) |= v33;
  v35 = v13[3531];
  if (v7)
  {
    v35 = 0;
  }

  *(v9 + 4 * v34) ^= v35;
  v36 = v3 | 9;
  v37 = v11[3878];
  if (v7)
  {
    v37 = 0;
  }

  *(v4 + 4 * v36) = *(v4 + 4 * (v3 | 9)) + v37;
  v38 = v13[3532];
  if (v7)
  {
    v38 = 0;
  }

  *(v9 + 4 * v36) |= v38;
  v39 = v11[3879];
  if (v7)
  {
    v39 = 0;
  }

  *(v4 + 4 * (v3 | 0xA)) ^= v39;
  v40 = v13[3533];
  if (v7)
  {
    v40 = 0;
  }

  *(v9 + 4 * (v3 | 0xA)) ^= v40;
  v41 = v11[3880];
  v42 = v3 | 0xB;
  if (v7)
  {
    v41 = 0;
  }

  *(v4 + 4 * v42) = *(v4 + 4 * (v3 | 0xB)) | v41;
  v43 = v13[3534];
  if (v7)
  {
    v43 = 0;
  }

  *(v9 + 4 * v42) |= v43;
  v44 = v3 | 0xC;
  v45 = v11[3881];
  if (v7)
  {
    v45 = 0;
  }

  *(v4 + 4 * v44) = v45 + *(v4 + 4 * (v3 | 0xC));
  v46 = v13[3535];
  if (v7)
  {
    v46 = 0;
  }

  *(v9 + 4 * v44) |= v46;
  v47 = v11[3882];
  v48 = v3 | 0xD;
  if (v7)
  {
    v47 = 0;
  }

  *(v4 + 4 * v48) = v47 + *(v4 + 4 * (v3 | 0xD));
  v49 = v13[3536];
  if (v7)
  {
    v49 = 0;
  }

  *(v9 + 4 * v48) ^= v49;
  v50 = v11[3883];
  v51 = v3 | 0xE;
  if (v7)
  {
    v50 = 0;
  }

  *(v4 + 4 * v51) = v50 ^ *(v4 + 4 * (v3 | 0xE));
  v52 = v13[3537];
  if (v7)
  {
    v52 = 0;
  }

  *(v9 + 4 * v51) ^= v52;
  v53 = v11[3884];
  v54 = v3 | 0xF;
  if (v7)
  {
    v53 = 0;
  }

  *(v4 + 4 * v54) ^= v53;
  v55 = v13[3538];
  if (v7)
  {
    v55 = 0;
  }

  *(v9 + 4 * v54) ^= v55;
  v56 = LODWORD(STACK[0x32B8]) >= LODWORD(STACK[0x1130]);
  ++LODWORD(STACK[0x32B0]);
  return (*(v0 + 8 * (v15 ^ (229 * v56))))();
}

uint64_t sub_100D0EABC(uint64_t a1, int a2, unsigned int a3)
{
  LODWORD(STACK[0x3D90]) = 0;
  v4 = STACK[0x3B20];
  v5 = LODWORD(STACK[0x3B20]) >> ((a2 ^ 0x4A) + 37);
  v6 = a3 < LODWORD(STACK[0x3E18]);
  v7 = STACK[0x3B38];
  v7[1870] = BYTE2(LODWORD(STACK[0x3B20]));
  v7[1871] = BYTE1(v4);
  v7[1872] = v4;
  LODWORD(STACK[0x38B0]) = v5;
  v7[1869] = v5;
  return (*(v3 + 8 * ((122 * v6) ^ a2)))();
}

uint64_t sub_100D0F158@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x3DA8];
  v4 = (STACK[0x3DA8] + (a1 & 0xFFFFFFFC));
  v5 = STACK[0x3650];
  *v4 ^= HIBYTE(LODWORD(STACK[0x3650]));
  *(v3 + (v1 - 21840) + (a1 & 0xFFFFFFFC)) ^= BYTE2(v5);
  v4[2] ^= BYTE1(v5);
  *(v3 + (a1 | 3)) ^= v5;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100D0F208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>)
{
  *STACK[0x3198] = STACK[0x1AC0];
  v7 = *(v6 + 32 * (a6 ^ 0x590C));
  LODWORD(STACK[0x3688]) = 6;
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  v8 = LODWORD(STACK[0x34D4]);
  v9 = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  return v7(a1, a2, v9, a3, a4, a5, v8);
}

uint64_t sub_100D0F62C()
{
  v4 = STACK[0x3B38];
  v4[2055] = v2 >> (v1 + 93);
  v5 = LODWORD(STACK[0x3E18]) > v0;
  v4[2056] = v2;
  v4[2053] = HIBYTE(v2);
  v6 = v5;
  v4[2054] = BYTE2(v2);
  return (*(v3 + 8 * ((102 * v6) ^ v1)))();
}

uint64_t sub_100D0F684@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W5>, int a4@<W6>, int a5@<W8>)
{
  LODWORD(STACK[0x3C68]) = ((v9 - 1111795033) & 0x42445EFF ^ 0x1D039256) - a2;
  LODWORD(STACK[0x3CB0]) = 1725767575 - a1;
  LODWORD(STACK[0x3C10]) = a4 - 587540673;
  LODWORD(STACK[0x3C70]) = a5 + 1047713187;
  LODWORD(STACK[0x3C08]) = -563292346 - v7;
  LODWORD(STACK[0x3C18]) = v6 + 527132498;
  LODWORD(STACK[0x3C00]) = -905747329 - v5;
  LODWORD(STACK[0x3CA8]) = a3 - 1610186264;
  v10 = a5 ^ v6;
  v11 = v7 - 1166665712;
  v12 = a2 ^ a1 ^ 0xB41B8A98;
  v13 = a5 + 533417152;
  LODWORD(STACK[0x3C88]) = v12 - 1243761608;
  v14 = (a1 + 533417152) ^ v12;
  LODWORD(STACK[0x3CA0]) = v11 + (v5 ^ 0xC1FC46D9) + 85164302;
  LODWORD(STACK[0x3C60]) = 1274728817 - (a4 - 1166665712 + (a3 ^ 0xC1FC46D9));
  v15 = (a4 - 1166665712) ^ 0x2D231DDF;
  LODWORD(STACK[0x3C78]) = 706124085 - v15;
  LODWORD(STACK[0x3C98]) = v14 + 1463117225;
  v16 = v10 ^ 0xB41B8A98;
  v17 = v10 ^ 0xB41B8A98 ^ v13;
  LODWORD(STACK[0x3C90]) = 78342000 - v17;
  v11 ^= 0x2D231DDFu;
  LODWORD(STACK[0x3D90]) = (v14 ^ v15) + 1720962789;
  LODWORD(STACK[0x3C80]) = 1772496243 - v16;
  STACK[0x3BE8] = LOBYTE(STACK[0x6D52]);
  STACK[0x3070] = LOBYTE(STACK[0x6DB8]);
  STACK[0x2D80] = LOBYTE(STACK[0x6DDA]);
  LODWORD(STACK[0x3E40]) = v14 + 203678399;
  LODWORD(STACK[0x3D88]) = (v11 ^ v17) + 1720962789;
  STACK[0x2818] = LOBYTE(STACK[0x6E79]);
  LODWORD(STACK[0x3E38]) = v17 + 203678399;
  LODWORD(STACK[0x3E18]) = (v17 + v16) ^ 0xDBAF6489;
  LODWORD(STACK[0x3D98]) = (v14 + v12) ^ 0xDBAF6489;
  v18 = LODWORD(STACK[0x37F8]) != 0;
  STACK[0x3BF0] = LOBYTE(STACK[0x6EEE]);
  v19 = *(v8 + 8 * (v9 ^ (29 * v18)));
  LODWORD(STACK[0x3C20]) = v11 + 1894698839;
  STACK[0x31F0] = LOBYTE(STACK[0x6F36]);
  STACK[0x2E58] = LOBYTE(STACK[0x6F51]);
  STACK[0x33F8] = LOBYTE(STACK[0x6FE9]);
  LODWORD(STACK[0x2924]) = STACK[0x714C];
  STACK[0x3318] = LODWORD(STACK[0x7190]);
  return v19();
}

uint64_t sub_100D0F914()
{
  LODWORD(STACK[0x1C28]) = STACK[0x32E8];
  LODWORD(STACK[0x1698]) = STACK[0x3700];
  return (*(v1 + 8 * (((LODWORD(STACK[0x3688]) > 0xF) * (((v0 - 8785) ^ 0x510C) - 5200)) ^ v0)))();
}

uint64_t sub_100D0F95C()
{
  v1 = STACK[0x3D38];
  v2 = STACK[0x3D28];
  v3 = STACK[0x4EA0];
  v4 = LOBYTE(STACK[0x4E9F]);
  v5 = *(v3 + (v1 >> 24)) ^ (2 * (v4 & *(v3 + (v1 >> 24))));
  v6 = LOBYTE(STACK[0x4E9D]);
  v7 = *(v3 + (v2 >> 24)) ^ (2 * (v6 & *(v3 + (v2 >> 24))));
  STACK[0x3E38] = *(STACK[0x4EA0] + BYTE2(STACK[0x3D38])) ^ (2 * (v6 & *(STACK[0x4EA0] + BYTE2(STACK[0x3D38]))));
  v8 = *(v3 + BYTE2(v2)) ^ (2 * (v4 & *(v3 + BYTE2(v2))));
  STACK[0x3E18] = *(v3 + BYTE1(v1)) ^ (2 * (v4 & *(v3 + BYTE1(v1))));
  STACK[0x3D98] = *(v3 + BYTE1(v2)) ^ (2 * (v6 & *(v3 + BYTE1(v2))));
  STACK[0x3D90] = *(v3 + v1) ^ (2 * (v6 & *(v3 + v1)));
  v9 = STACK[0x3D30];
  v10 = *(v3 + v2) ^ (2 * (v4 & *(v3 + v2)));
  STACK[0x3D88] = *(v3 + (STACK[0x3D30] >> 24)) ^ (2 * (v4 & *(v3 + (STACK[0x3D30] >> 24))));
  v11 = LODWORD(STACK[0x3CF0]) ^ 0x28E0;
  LODWORD(STACK[0x3E40]) = v11;
  v12 = (v11 + 20944);
  STACK[0x3D68] = v12;
  v13 = v12 ^ 0x5E;
  v14 = STACK[0x3D40];
  v15 = (*(v3 + (v14 >> v13)) ^ (2 * (v6 & *(v3 + (v14 >> v13)))));
  v16 = LOBYTE(STACK[0x4E9E]);
  v17 = STACK[0x5328];
  v18 = STACK[0x5320];
  v19 = *(v3 + BYTE2(v9));
  LODWORD(STACK[0x3D80]) = ((v15 & v16) >> STACK[0x5328]) + (v15 << STACK[0x5320]);
  STACK[0x3D78] = v19 ^ (2 * (v4 & v19));
  STACK[0x3D70] = *(v3 + BYTE2(v14)) ^ (2 * (v6 & *(v3 + BYTE2(v14))));
  STACK[0x3D38] = *(v3 + BYTE1(v9)) ^ (2 * (v4 & *(v3 + BYTE1(v9))));
  v20 = *(v3 + BYTE1(v14)) ^ (2 * (v6 & *(v3 + BYTE1(v14))));
  v21 = *(v3 + v9) ^ (2 * (v4 & *(v3 + v9)));
  v22 = STACK[0x3D50];
  v23 = *(v3 + v14) ^ (2 * (v6 & *(v3 + v14)));
  v24 = *(v3 + (v22 >> 24)) ^ (2 * (v4 & *(v3 + (v22 >> 24))));
  v25 = *(v3 + BYTE2(v22)) ^ (2 * (v6 & *(v3 + BYTE2(v22))));
  v26 = STACK[0x3D48];
  v27 = *(v3 + BYTE2(v26)) ^ (2 * (v4 & *(v3 + BYTE2(v26))));
  v28 = *(v3 + BYTE1(v22)) ^ (2 * (v6 & *(v3 + BYTE1(v22))));
  v29 = *(v3 + BYTE1(v26)) ^ (2 * (v4 & *(v3 + BYTE1(v26))));
  v30 = STACK[0x3D60];
  LOBYTE(v15) = *(v3 + STACK[0x3D48]) ^ (2 * (v4 & *(v3 + STACK[0x3D48])));
  STACK[0x3D40] = *(v3 + (STACK[0x3D60] >> 24)) ^ (2 * (v6 & *(v3 + (STACK[0x3D60] >> 24))));
  v31 = v5;
  v32 = v5 & v16;
  v33 = STACK[0x5338];
  v34 = v31 << STACK[0x5338];
  v35 = STACK[0x5350];
  LODWORD(v32) = (v32 >> STACK[0x5350]) | v34;
  v36 = v7;
  v37 = LOBYTE(STACK[0x4E9C]);
  LODWORD(STACK[0x3D10]) = (((v36 & v37) >> v17) | (v36 << v18)) ^ v32;
  LODWORD(v32) = ((v16 & v8) >> v17) | (v8 << v18);
  v38 = STACK[0x52A4];
  LODWORD(STACK[0x21CC]) = LODWORD(STACK[0x52A4]) ^ (((v37 & STACK[0x3E38]) >> v35) + (STACK[0x3E38] << v33)) ^ v32;
  LODWORD(STACK[0x3E38]) = (((STACK[0x3D98] & v37) >> v17) + (STACK[0x3D98] << v18)) ^ (((STACK[0x3E18] & v16) >> v35) | (STACK[0x3E18] << v33));
  LODWORD(v14) = ((v16 & STACK[0x3D90]) >> v17) ^ (STACK[0x3D90] << v18) ^ (v10 << v33);
  v39 = (v37 & v10) >> v35;
  v40 = STACK[0x52C0];
  LODWORD(STACK[0x3D30]) = v14 ^ v39 ^ LODWORD(STACK[0x52C0]);
  LODWORD(STACK[0x3C10]) = v38 ^ (((v37 & STACK[0x3D88]) >> v35) | (STACK[0x3D88] << v33)) ^ LODWORD(STACK[0x3D80]);
  LODWORD(STACK[0x3D28]) = (((v16 & STACK[0x3D70]) >> v17) | (STACK[0x3D70] << v18)) ^ ((STACK[0x3D78] << v33) | ((STACK[0x3D78] & v37) >> v35)) ^ v40;
  v41 = v20 & v16;
  LODWORD(STACK[0x3D38]) = ((v37 & STACK[0x3D38]) >> v17) ^ (STACK[0x3D38] << v33) ^ v40 ^ ((v41 >> v35) | (v20 << v18));
  LODWORD(STACK[0x3D20]) = v38 ^ (((v21 & v16) >> v35) | (v21 << v18)) ^ (((v23 & v37) >> v17) + (v23 << v33));
  LODWORD(v39) = *(v3 + (v26 >> 24));
  v42 = v6 & v39;
  STACK[0x2EF0] = v42;
  v43 = (2 * v42);
  STACK[0x2290] = v43;
  STACK[0x22E8] = v38 ^ ((v24 << v33) | ((v16 & v24) >> v35)) ^ ((((v43 ^ v39) & v37) >> v17) + ((v43 ^ v39) << v18));
  LODWORD(v14) = (v27 << v33) ^ ((v27 & v37) >> v17) ^ (((v25 & v16) >> v35) | (v25 << v18));
  v44 = ((v28 & v16) >> v17) ^ (v28 << v33) ^ (((v29 & v37) >> v35) | (v29 << v18));
  LODWORD(v39) = ((v15 & v16) >> v17) + (v15 << v18);
  LODWORD(v15) = *(v3 + v22);
  STACK[0x1AF0] = v6 & v15;
  LODWORD(STACK[0x3D50]) = v40 ^ ((v15 ^ (2 * (v6 & v15))) << v33) ^ (((v15 ^ (2 * (v6 & v15))) & v37) >> v35) ^ v39;
  v45 = STACK[0x3D58];
  LOBYTE(v15) = *(v3 + (STACK[0x3D58] >> 24));
  v46 = *(v3 + BYTE2(v30));
  LOBYTE(v26) = *(v3 + BYTE1(v30));
  v47 = *(v3 + BYTE2(STACK[0x3D58]));
  v48 = *(v3 + BYTE1(STACK[0x3D58]));
  LOBYTE(v22) = *(v3 + v30);
  LOBYTE(v39) = *(v3 + STACK[0x3D58]);
  v49 = STACK[0x3D40];
  LODWORD(STACK[0x3638]) = LODWORD(STACK[0x3D10]) ^ v40;
  LODWORD(STACK[0x3D40]) = v40 ^ (((v49 & v37) >> v17) + (v49 << v33)) ^ ((((v15 ^ (2 * (v4 & v15))) & v16) >> v35) | ((v15 ^ (2 * (v4 & v15))) << v18));
  v50 = (v26 ^ (2 * (v4 & v26)));
  STACK[0x2F68] = (((v16 & (v48 ^ (2 * (v6 & v48)))) >> v35) | ((v48 ^ (2 * (v6 & v48))) << v33)) ^ (((v37 & v50) >> v17) + (v50 << v18));
  STACK[0x2FE0] = LOBYTE(STACK[0x5B5D]);
  STACK[0x2640] = LOBYTE(STACK[0x6BEB]);
  LODWORD(STACK[0x20C4]) = STACK[0x6C00];
  LODWORD(STACK[0x2098]) = STACK[0x6C04];
  LODWORD(STACK[0x2090]) = STACK[0x6C0C];
  LODWORD(STACK[0x3D10]) = LODWORD(STACK[0x3E38]) ^ v38;
  LODWORD(STACK[0x3CF0]) = v14 ^ v38;
  STACK[0x3718] = v44 ^ v38;
  LODWORD(STACK[0x3CE8]) = ((((v39 ^ (2 * (v6 & v39))) & v37) >> v35) | ((v39 ^ (2 * (v6 & v39))) << v33)) ^ (((v16 & (v22 ^ (2 * (v4 & v22)))) >> v17) | ((v22 ^ (2 * (v4 & v22))) << v18)) ^ v38;
  LODWORD(STACK[0x2088]) = STACK[0x6C18];
  v51 = *(v0 + 8 * SLODWORD(STACK[0x3E40]));
  LODWORD(STACK[0x3CA8]) = (v38 ^ ((((v46 ^ (2 * (v4 & v46))) & v37) >> v35) | ((v46 ^ (2 * (v4 & v46))) << v33)) ^ ((((v47 ^ (2 * (v6 & v47))) & v16) >> v17) + ((v47 ^ (2 * (v6 & v47))) << v18)));
  STACK[0x2CB8] = v45 >> 16;
  STACK[0x2338] = v41;
  STACK[0x3D48] = v30 >> 16;
  STACK[0x2598] = v37 & v50;
  STACK[0x2E90] = LOBYTE(STACK[0x6D3F]);
  STACK[0x33B8] = LOBYTE(STACK[0x6D49]);
  STACK[0x2FC8] = LOBYTE(STACK[0x6D57]);
  STACK[0x27F0] = LOBYTE(STACK[0x6D76]);
  STACK[0x2780] = LOBYTE(STACK[0x6D9E]);
  STACK[0x25A8] = LOBYTE(STACK[0x6DB3]);
  STACK[0x3070] = LOBYTE(STACK[0x6DB8]);
  STACK[0x2D80] = LOBYTE(STACK[0x6DDA]);
  STACK[0x2690] = LOBYTE(STACK[0x6E42]);
  STACK[0x3C90] = LOBYTE(STACK[0x6E49]);
  STACK[0x2818] = LOBYTE(STACK[0x6E79]);
  STACK[0x2638] = LOBYTE(STACK[0x6E9A]);
  STACK[0x3BC0] = LOBYTE(STACK[0x6EB2]);
  STACK[0x2CB0] = LOBYTE(STACK[0x6EEB]);
  STACK[0x2008] = LOBYTE(STACK[0x6EF4]);
  STACK[0x2F18] = LOBYTE(STACK[0x6F15]);
  STACK[0x31F0] = LOBYTE(STACK[0x6F36]);
  STACK[0x2E58] = LOBYTE(STACK[0x6F51]);
  STACK[0x2888] = LOBYTE(STACK[0x6F61]);
  STACK[0x2828] = LOBYTE(STACK[0x6F6E]);
  STACK[0x2798] = LOBYTE(STACK[0x6F6F]);
  STACK[0x3708] = LOBYTE(STACK[0x6F89]);
  STACK[0x2398] = LOBYTE(STACK[0x6FBC]);
  STACK[0x33F8] = LOBYTE(STACK[0x6FE9]);
  LODWORD(STACK[0x2078]) = STACK[0x7004];
  STACK[0x3980] = LODWORD(STACK[0x7040]);
  LODWORD(STACK[0x37F8]) = STACK[0x705C];
  LODWORD(STACK[0x2080]) = STACK[0x7068];
  LODWORD(STACK[0x20E8]) = STACK[0x7130];
  LODWORD(STACK[0x2030]) = STACK[0x7134];
  LODWORD(STACK[0x2924]) = STACK[0x714C];
  STACK[0x3318] = LODWORD(STACK[0x7190]);
  return v51();
}

uint64_t sub_100D102B4()
{
  LODWORD(STACK[0x3D78]) = v0;
  v2 = STACK[0x3C40];
  v3 = *(STACK[0x3C40] + 76);
  v4 = *(STACK[0x3C40] + 32);
  STACK[0x3D50] = v0 ^ 0xBC2;
  v5 = STACK[0x39B8];
  v6 = *(STACK[0x39B8] + 23);
  v7 = *(v2 + 27);
  v8 = STACK[0x3C48];
  v9 = *(STACK[0x3C48] + 9);
  v10 = *(v2 + 94);
  v11 = *(STACK[0x3C48] + 42);
  v12 = v10 << 8;
  STACK[0x3D58] = v0 ^ 0x4029;
  v13 = (v10 << 8) - (v11 & 0xFFFFFFFFFFFF00FFLL | (v10 << 8));
  v14 = *(&off_101353600 + (v0 ^ 0x53F5));
  v15 = STACK[0x3C38];
  v16 = (((v0 ^ 0x529ELL) - v11) ^ v11 ^ v13) + v12;
  v17 = (*(v2 + 83) << 56) | (v8[89] << 48);
  v18 = *(v2 + 115);
  v19 = v16 ^ ((93 * ((*(v14 + 264 + (((v7 << (v4 & 2) << (v4 & 2 ^ 2)) ^ (v7 >> 6)) ^ 0x1Eu)) - 119) ^ 0x53)) << 40) ^ ((v4 << (v0 ^ 0xBE)) | (v6 << 24) | (v9 << 48) | (*(STACK[0x3C38] + 74) << 56) | (*(v2 + 72) << 16));
  v20 = v8[48] | (v15[1] << 32) | (v8[7] << 24) | (v15[59] << 16);
  v21 = *(v14 + 804 + (((v8[34] >> 6) & 3u | (4 * v8[34])) ^ 0xD6));
  v22 = *(v2 + 7) | (v8[21] << 16) | (v8[44] << 24);
  v23 = v8[13];
  v24 = ((v8[30] >> 2) | (v8[30] << 6)) ^ 0x33;
  v25 = *(STACK[0x3C38] + 19) << ((4 * v8[34]) & 0x28) << ((4 * v8[34]) & 0x28 ^ 0x28u);
  STACK[0x3D70] = v14 - 2;
  v26 = *(v14 - 2 + v24) - ((2 * *(v14 - 2 + v24)) & 0x96);
  v27 = *(v14 + 804 + (((v23 >> 6) | (4 * v23)) ^ 0xD6));
  v28 = v27 ^ 0xD1;
  v29 = (16 * (v27 ^ 0xFFFFFFD1)) & 0x50;
  v30 = (v22 | ((99 * (v21 ^ 0x2F ^ (16 * v21) & 0x55)) << 32) | (v18 << 8) | (v15[18] << 48)) ^ ((-13 * ((v26 - 53) ^ ((v26 - 53) >> 4) ^ ((v26 - 53) >> 1) ^ 0x17)) << 40) ^ ((99 * (v27 ^ v29 ^ 0x3F)) << 56);
  v31 = v15[65] | (*(v2 + 107) << 16);
  v32 = v20 | (*(v5 + 1) << 8);
  LOBYTE(v27) = *(v14 + 264 + (((*(v2 + 2) >> 6) | (4 * *(v2 + 2))) ^ 0x1ELL));
  v33 = v14 + 264;
  v34 = *(v2 + 97) | (v15[52] << 16) | (v8[31] << 32) | (v15[50] << 8) | (v8[91] << 24) | (v15[32] << 40) | (*(v2 + 23) << 56) | (*(v2 + 73) << 48);
  v35 = v32 ^ v3 ^ v25 ^ v17;
  v36 = (v15[20] << 24) | (*(v2 + 70) << 8) | v31;
  v37 = ((*(v2 + 84) << 32) ^ (0xFFFFFFFF00000000 * *(v2 + 84)) ^ (v36 - (v36 & 0xFFFFFF00FFFFFFFFLL | (*(v2 + 84) << 32)))) + v36;
  v38 = v34 ^ 0xD3CE6A64A46B508BLL;
  v39 = (v27 ^ 0xFC) + ((2 * v27) & 0xF8) - 115;
  v40 = 2684641440;
  if (*(v5 + 1))
  {
    v40 = v19 ^ 0x4ED06927CEB64C4DLL;
  }

  v41 = v37 ^ (v15[64] << 48);
  v42 = v38 & 0x2000000000000;
  if ((v41 & v38 & 0x2000000000000) != 0)
  {
    v42 = -v42;
  }

  v43 = v29 == v28;
  v44 = v30 ^ v35;
  v45 = v40 | v19 ^ 0x4ED069276EB22CEDLL;
  v46 = v45 & 0x3E75E8D95CB80B4ALL;
  v47 = ((v15[43] << 56) | ((93 * (v39 ^ 0x53)) << 40)) ^ v41;
  v48 = v42 + v47;
  if (v43)
  {
    v46 = 0x3E75E8D95CB80B4ALL;
  }

  if (v31)
  {
    v46 = ~(v45 ^ v46);
  }

  v49 = v46 & v45;
  v50 = v47 & 0x3E75E8D95CB80B4ALL;
  v51 = v48 ^ v38 & 0xFFFDFFFFFFFFFFFFLL;
  v52 = (v47 ^ v19 ^ 0x4ED069276EB22CEDLL) & 0xC18A1726A347F4B5 ^ v49;
  v53 = (v44 ^ 0x946A2E66F1888F70 | v35 ^ 0xB0C5FCF71C937056) - (v30 ^ 0x24AFD291ED1BFF26);
  v54 = __ROR8__(__ROR8__(v50 ^ -v50 ^ (v52 - (v52 ^ v50)), 31) ^ 0xC41A9C13E5222E5ALL, 33);
  v55 = (v52 ^ 0xF291172D620D4E09 ^ v54) + 2 * ((v54 ^ 0x7291172D620D4E09) & v52);
  v56 = v51 ^ 0x4ED069276EB22CEDLL | v34 ^ 0x2C31959B5B94AF74;
  v57 = v51 ^ 0x4ED069276EB22CEDLL ^ v34 ^ 0x2C31959B5B94AF74;
  v58 = (v55 ^ 0xB6B38EC9C1854468) & (v35 ^ 0x4F3A0308E36C8FA9) ^ v51 ^ 0x4ED069276EB22CEDLL;
  v59 = v35 ^ 0x79580DDDC3FAFE03;
  v55 ^= 0x494C71363E7ABB97uLL;
  v60 = v55 ^ v53;
  v61 = v55 & (v51 ^ 0xB12F96D8914DD312);
  v62 = v56 & &_mh_execute_header;
  if ((v57 & &_mh_execute_header) != 0)
  {
    v62 = -v62;
  }

  v63 = v59 ^ v38 & (v44 ^ 0x6B95D1990E77708FLL) ^ v60;
  v64 = v56 & 0xFFFFFFFEFFFFFFFFLL ^ (v62 + v57) ^ v44 ^ 0x946A2E66F1888F70;
  v65 = (v58 + v60 - 2 * (v58 & v60)) ^ 0xC3B75B7755CB763ELL;
  v66 = v34 ^ v64 ^ 0xE0B4819FEBA9DAD9 ^ v61;
  v67 = (v58 ^ v3) - v3 + 2 * (v58 & v3);
  v68 = (v63 << 25) ^ (8 * v63) ^ ((v63 ^ (v63 >> 61)) + (v63 >> 39) - 2 * ((v63 ^ (v63 >> 61)) & (v63 >> 39)));
  v69 = v64 ^ 0x236D731CD6002E07 ^ __ROR8__(v64 ^ 0x236D731CD6002E07, 1) ^ ((v64 ^ 0x236D731CD6002E07) >> 6) ^ ((v64 ^ 0x236D731CD6002E07) << 58);
  v70 = v67 ^ 0x7D5E980240D049BALL ^ ((v67 ^ 0x7D5E980240D049BALL) << 57) ^ ((v67 ^ 0x7D5E980240D049BALL) << 23) ^ ((v67 ^ 0x7D5E980240D049BAuLL) >> 7) ^ ((v67 ^ 0x7D5E98F576CDE140uLL) >> (v44 & 0x29) >> (v44 & 0x29 ^ 0x29));
  v71 = v66 ^ __ROR8__(v66, 10) ^ (v66 >> 17) ^ (v66 << 47);
  v72 = v68 ^ v69;
  v73 = v65 ^ (v65 << 36) ^ ((v65 >> 19) ^ (v65 >> 28) | (v65 << 45)) ^ v70;
  v74 = v73 ^ v69 & ~v68;
  v75 = v70 ^ v71;
  v76 = v68 & ~v73 ^ v70 ^ v71;
  v77 = v70 & ~v71 ^ v72;
  v78 = v71 & ~v72 ^ v68 ^ ((v74 ^ -v74 ^ (0x83092924E03A55C1 - (v74 ^ 0x83092924E03A55C1))) - 0x7CF6D6DB1FC5AA3FLL);
  v79 = v73 & ~v75;
  v80 = v74 ^ 0x9DB4E48055F79CD3 ^ v76;
  v81 = v80 << 36;
  v82 = ((v80 >> 19) ^ (v80 >> 28) | (v80 << 45)) ^ v80;
  v83 = v77 + 0x16C4D76697E646E9 - ((2 * v77) & 0x2D89AECD2FCC8DD2);
  v84 = v71 ^ 0x1A34F2D797537103 ^ v79 ^ v77;
  v85 = (v83 >> 6) | ((v77 + 0x16C4D76697E646E9) << 63);
  v86 = v81 & 0x10000000000000;
  v87 = v76 ^ 0x5965E8FC7583EE31;
  if ((v82 & v81 & 0x10000000000000) != 0)
  {
    v86 = -v86;
  }

  v89 = v86 + v82;
  v90 = __ROR8__(v87, 59);
  v91 = v78 ^ (v78 >> 39) ^ (v78 >> 61) ^ (8 * v78) ^ (v78 << 25);
  v92 = (v90 >> 5) ^ (v87 >> 7) | (v90 << 59);
  v88 = (v84 >> (v21 & 0xA ^ 0xAu) >> (v21 & 0xA)) ^ v84 ^ ((v84 >> 17) | (v84 << 54));
  v93 = (((v84 & 0x1FFFF) << 34) | (v88 << 51)) ^ (v88 >> 13);
  v94 = v83 ^ (v83 << 58) ^ (v83 >> 1) ^ v85;
  v95 = v91 ^ v94;
  v96 = __ROR8__(v93 ^ 0x91AA50DF8731BA45, 51);
  v97 = ((v87 >> 41) | (v87 << 57)) ^ (v87 << 23) ^ v92;
  v98 = v96 ^ v97;
  v99 = v89 ^ v81 & 0xFFEFFFFFFFFFFFFFLL ^ v97;
  v100 = (v96 ^ v97 ^ 0x4A1BF0E63748B235) & (v96 ^ 0xB5E40F19C8B74DCALL);
  v101 = (v96 ^ v97 ^ 0xB5E40F19C8B74DCALL) & v99;
  v102 = v99 ^ v94 & ~v91;
  v103 = (v95 ^ v96 ^ 0x4A1BF0E63748B235) + (v96 ^ 0x4A1BF0E63748B235 | ~v95) + 1;
  v104 = v91 & ~v99 ^ v98;
  v105 = v101 ^ v96 ^ 0x4A1BF0E63748B235;
  v106 = v102 ^ v104 ^ 0x4A1BF0E63748B235;
  v107 = v100 ^ v95;
  v108 = v105 ^ v107;
  v109 = v107 ^ 0x6C91127173EC5CEDLL;
  v110 = __ROR8__(__ROR8__(v102 ^ v91 ^ v103, 29) ^ 0xC70C053C1B0CE08DLL, 35) ^ 0x551701AB75CB0B75;
  v111 = v104 ^ 0xA03C02006083015;
  if (!__PAIR16__((4 * v23) >> 56, 4 * v23))
  {
    v111 = v104 ^ 0x4A1BF0E63748B235;
  }

  v112 = v104 & 0x40BC31C7B9D68A20 ^ 0x401830C631408220 ^ (v111 | 0x40BC31C7B9D68A20);
  v113 = v110 ^ __ROR8__(v110, 61) ^ (v110 >> 39) ^ (v110 << 25);
  v114 = __ROR8__(v112, 7);
  v115 = (v112 >> 41) & (v112 ^ v114);
  v116 = v112 ^ v114 | (v112 >> 41);
  v117 = (v112 ^ v114) & 0x78A5C87596CCCF0FLL;
  *(&v118 + 1) = v108 ^ 0x224089CEF5E05BEALL;
  *&v118 = v108;
  v119 = __ROR8__(__ROR8__(v109 ^ __ROR8__(v109, 1) ^ (v109 >> 6) ^ (v109 << 58) ^ v113, 62) ^ 0xBDBC716F10C6DA0ELL, 2);
  v120 = (v23 >> 6) & 1;
  v121 = (v118 >> 10) ^ v108 ^ 0x224089CEF5E05BEALL ^ ((v108 ^ 0x224089CEF5E05BEAuLL) >> 17) ^ ((v108 ^ 0x224089CEF5E05BEALL) << 47);
  v122 = __ROR8__(v112, 41) & 0xFFFFFFFFFFCCCF0FLL ^ v117 ^ ((v116 & 0x875A378A693330F0) + (*&v115 & 0x3330F0) - 2 * (*&v115 & 0x3330F0));
  v123 = v122 ^ v121 ^ 0x8902273BD7816;
  *(&v118 + 1) = v106;
  *&v118 = v106 ^ 0x7387FC49879A7CD9;
  v124 = v106 ^ 0x7387FC49879A7CD9 ^ __ROR8__(v106 ^ 0x7387FC49879A7CD9, 19) ^ (v118 >> 28) ^ v122;
  v125 = v124 ^ 0x79A7CD9000000000;
  v126 = v119 ^ 0xAF6F1C5BC431B683;
  v127 = v122 & (v121 ^ 0xFFF76FDD8C4287E9);
  v128 = (v119 ^ 0xAF6F1C5BC431B683) & ~v113;
  v129 = (v119 ^ 0x5090E3A43BCE497CLL) & (v121 ^ 0x8902273BD7816);
  v130 = (v124 ^ 0x8658326FFFFFFFFFLL) & v113;
  v131 = v128 ^ v124 ^ 0x79A7CD9000000000;
  v132 = v130 ^ v123;
  v133 = v132 ^ 0x572E46D91B6738CCLL ^ v131;
  v134 = v125 & ~v123;
  v135 = v126 ^ v127;
  v136 = v113 ^ 0xF3F15249903E500ELL ^ v129 ^ v131;
  v137 = (v136 >> ((v23 & 0x40) != 0) >> (((v23 & 0x40) != 0) ^ 0x3Du) >> (v134 & 5) >> (v134 & 5 ^ 5)) + 8 * (v136 >> ((v23 & 0x40) != 0) >> (((v23 & 0x40) != 0) ^ 0x3Du));
  LOBYTE(v131) = ((4 * ((v136 >> v120 >> (v120 ^ 0x3Du) >> (v134 & 5) >> (v134 & 5 ^ 5)) + 8 * (v136 >> v120 >> (v120 ^ 0x3Du)))) & 0x68 ^ 0x40) + ((2 * ((v136 >> v120 >> (v120 ^ 0x3Du) >> (v134 & 5) >> (v134 & 5 ^ 5)) + 8 * (v136 >> v120 >> (v120 ^ 0x3Du)))) ^ 0x1D);
  v138 = v14 + 534;
  v132 ^= 0x634AEF8DB94EA84CuLL;
  v139 = v121 ^ v134 ^ 0x242411761C1B327 ^ v126 ^ v127;
  v140 = v136 ^ (v136 << 25) ^ (8 * v136) ^ (v136 >> ((v133 >> 28) & 0x27) >> ((v133 >> 28) & 0x27 ^ 0x27)) ^ ((*(v138 + (v137 ^ 0xC8)) ^ v131 ^ 0xC5) + 1);
  v141 = v135 ^ 0x491CB3A5B3BBD9B9 ^ __ROR8__(v126 ^ v127 ^ 0x491CB3A5B3BBD9B9, 1) ^ ((v135 ^ 0x491CB3A5B3BBD9B9) >> 6);
  v142 = (v141 & 0x19A7BE89B3466E1FLL ^ ((v135 ^ 0x491CB3A5B3BBD9B9) << 58) & 0x1800000000000000 | ((v135 ^ 0x491CB3A5B3BBD9B9) << 58) & 0xE7FFFFFFFFFFFFFFLL) ^ v141 & 0xE65841764CB991E0;
  v143 = v140 ^ v142;
  v144 = ((v132 >> 41) | (v132 << 57)) ^ (v132 << 23) ^ ((v132 >> 7) + v132 - 2 * ((v132 >> 7) & v132));
  v145 = v133 ^ (v133 << 36) ^ (v133 << 45) ^ (v133 >> 19) ^ (v133 >> 28) ^ v144;
  v146 = v142 & ~v140 ^ v145;
  v147 = __ROR8__((v139 >> 10) & 0x3FFFFFFFFFFF80 ^ __ROR8__(v139 ^ __ROR8__(v139, 10), 57) ^ 0x3B7B82F519BAA632, 7) ^ (v139 << 47);
  v148 = v147 ^ 0x6476F705EA33754CLL;
  v149 = (v147 ^ 0x6476F705EA33754CLL) & ~(v140 ^ v142);
  v150 = (v144 - (v147 ^ 0x6476F705EA33754CLL ^ v144)) ^ v147 ^ 0x6476F705EA33754CLL;
  v151 = v150 + v144 + (v147 ^ 0x6476F705EA33754CLL ^ -(v147 ^ 0x6476F705EA33754CLL) ^ (v150 - (v150 ^ -(v147 ^ 0x6476F705EA33754CLL))));
  v152 = v151 & (v147 ^ 0x9B8908FA15CC8AB3);
  v153 = v145 & ~v151;
  v154 = v140 & ~v145 ^ v151;
  v155 = v143 ^ v152;
  v156 = v155 ^ 0x8214C326D97E669;
  v157 = (v146 ^ 0xE03B72DA8396CC15 ^ -(v146 ^ 0xE03B72DA8396CC15) ^ (v154 - (v146 ^ 0xE03B72DA8396CC15 ^ v154))) + v154;
  v158 = v140 ^ 0x5617D573614C8042 ^ v149 ^ v146;
  v159 = v155 ^ 0x8214C326D97E669 ^ ((v155 ^ 0x8214C326D97E669) >> 1);
  v160 = (v153 ^ v148 ^ -(v153 ^ v148) ^ (v155 - (v155 ^ v153 ^ v148))) + v155;
  v161 = (v160 ^ -v160 ^ (0xA1E9A48074F016C3 - (v160 ^ 0xA1E9A48074F016C3))) - 0x5E165B7F8B0FE93DLL;
  v162 = v158 ^ __ROR8__(v158, 61) ^ (v158 >> 39) ^ (v158 << 25);
  v163 = __ROR8__(((v156 & 1) << 10) ^ __ROR8__(v159, 53) ^ 0xDDAE1C52395545FFLL, 11) ^ __ROR8__(v156, 6) ^ v162;
  v164 = v161 ^ __ROR8__(v161, 10) ^ (v161 >> 17) ^ (v161 << 47);
  v165 = v154 ^ 0x194F66BD1A91C9F1 ^ __ROR8__(v154 ^ 0x194F66BD1A91C9F1, 7) ^ ((v154 ^ 0x194F66BD1A91C9F1uLL) >> 41) ^ ((v154 ^ 0x194F66BD1A91C9F1) << 23);
  v166 = v157 ^ v165 ^ __ROR8__(v157, 19) ^ (v157 >> 28) ^ (v157 << 36);
  v167 = v163 ^ 0xBFFBB5C38A472AA8;
  v168 = v164 + v165 - 2 * (v164 & v165);
  v169 = v168 & ~v164;
  v170 = (v163 ^ 0xBFFBB5C38A472AA8) - (v169 ^ v163 ^ 0xBFFBB5C38A472AA8);
  v171 = v166 + ((v163 ^ 0xBFFBB5C38A472AA8) & ~v162) - 2 * (v166 & (v163 ^ 0xBFFBB5C38A472AA8) & ~v162);
  v172 = v166 & ~v168;
  v173 = v162 & ~v166;
  v174 = v164 & (v163 ^ 0x40044A3C75B8D557) ^ v162;
  v175 = v169 & 0x200000;
  v176 = v170 ^ -v169;
  v177 = v168 ^ v173;
  if ((v176 & v169 & 0x200000) != 0)
  {
    v175 = -v175;
  }

  v178 = (v175 + v176) ^ v169 & 0xFFFFFFFFFFDFFFFFLL;
  v179 = v174 & 0x3707 ^ v171;
  v180 = v174 & 0x1EF8E276E3A18000 ^ v171;
  v181 = v171 ^ 0x19B9A70A79C4F0B2 ^ v177;
  *(&v182 + 1) = v179;
  *&v182 = v180;
  v183 = v181 ^ __ROR8__(v181, 19);
  v184 = (v169 ^ -v169 ^ -v178 ^ v167) + 2 * ((v169 ^ -v169 ^ -v178) & v167);
  v185 = v174 & 0xE1071D891C5E48F8 ^ __ROR8__((v182 >> 15) ^ 0x765CFC412A935A4ELL, 49) ^ 0x77B153D16E5BF12ALL;
  v186 = v183 & 0xF304EB8D2B864E60 ^ (v181 >> 28) & 0xD2B864E60 | v183 & 0xCFB1472D479B19FLL ^ (v181 >> 28) & 0x2D479B19FLL;
  v187 = 0x20000000000000;
  if ((v185 & 0x20000000000000) != 0)
  {
    v187 = 0xFFE0000000000000;
  }

  v188 = v181 << 36;
  v189 = v164 ^ 0x83CEA6FA885427C8 ^ v172;
  v190 = v188 & 0x100000000000000;
  v43 = (v183 & v188 & 0x100000000000000) == 0;
  v191 = v188 & 0xFEFFFFFFFFFFFFFFLL;
  if (!v43)
  {
    v190 = -v190;
  }

  v192 = (v186 + v190) ^ v191;
  v193 = (v187 + v185) ^ 0x20000000000000;
  v194 = v189 ^ v184;
  v195 = v184 ^ 0x57B1DDBB9D2D4AB3;
  v196 = ((v177 - (v177 ^ 0x8A31BBB68393F6C5) - 0x75CE44497C6C093BLL + 2 * ((v177 - (v177 ^ 0x8A31BBB68393F6C5)) & 0x8A31BBB68393F6C5) - 4 * ((v177 - (v177 ^ 0x8A31BBB68393F6C5)) & 0x8A31BBB68393F6C5)) ^ 0x75CE44497C6C093BLL) + v177;
  *(&v198 + 1) = v193;
  *&v198 = v185;
  v197 = v198 >> 61;
  *(&v198 + 1) = v185;
  *&v198 = v193;
  v199 = v197 ^ v185 ^ (v198 >> 39);
  LODWORD(v197) = (v186 >> 10) & 0xC0 | (v186 >> 18) & 0x3F;
  v200 = v195 ^ __ROR8__(v195, 1);
  *&v198 = __ROR8__(v195, 6);
  v8[42] = v186;
  v201 = v33;
  *(v2 + 94) = 93 * ((*(v33 + (((v186 >> 6) & 0xFC | (v186 >> 14)) ^ 0x1E)) - 119) ^ 0x53);
  v202 = STACK[0x3D70];
  LOBYTE(v195) = *(STACK[0x3D70] + ((v197 - (v197 ^ 0x33)) ^ 0xFFFFFFFE) + v197);
  *(v2 + 32) = BYTE4(v192);
  v203 = STACK[0x39B8];
  *(v203 + 23) = BYTE3(v186);
  *(v2 + 72) = -13 * (v195 ^ ((v195 ^ 0xCB) >> 4) ^ ((v195 ^ 0xCB) >> 1) ^ 0xDC);
  LOBYTE(v195) = *(v201 + (((v192 >> 38) & 0xFC | (v192 >> 46) & 3) ^ 0x1E));
  v204 = v196 ^ (v196 << 23) ^ ((v196 >> 7) ^ (v196 >> 41) | (v196 << 57));
  *(v2 + 27) = 93 * (v195 - ((2 * v195 + 18) & 0xA6)) - 20;
  v8[9] = 93 * ((*(v201 + (((v192 >> 46) & 0xFC | (v192 >> 54) & 3) ^ 0x1E)) - 119) ^ 0x53);
  LOBYTE(v196) = *(v138 + (((v192 >> 53) & 0xF8 | (v192 >> 61)) ^ 0xC8));
  v8[48] = v199;
  v15[59] = BYTE2(v199);
  v15[74] = (v196 ^ (((2 * ((v192 >> 53) & 0xF8 | (v192 >> 61))) ^ 0x28) + 53) ^ 0xC5) + 1;
  v8[7] = BYTE3(v199);
  *(v203 + 1) = BYTE1(v199);
  v15[1] = BYTE4(v199);
  LOBYTE(v195) = (*(v138 + (((v199 >> 45) & 7 | (v199 >> 37) & 0xF8) ^ 0xC8)) ^ (((2 * (((v199 >> 45) & 7 | (v199 >> 37) & 0xF8) ^ 0x94)) ^ 0x35) + ((4 * (((v199 >> 45) & 7 | (v199 >> 37) & 0xF8) ^ 0x94)) & 0x68)) ^ 0xC5) + 1;
  v8[89] = BYTE6(v199);
  *(v2 + 83) = HIBYTE(v199);
  v15[19] = v195;
  *(v2 + 7) = v200 ^ v198;
  LOBYTE(v196) = *(v138 + ((((v200 ^ v198) >> 5) & 0xF8 | ((v200 ^ v198) >> 13)) ^ 0xC8));
  v8[44] = (v200 ^ v198) >> 24;
  v8[34] = (v200 ^ v198) >> 32;
  LOBYTE(v195) = v196 ^ (((2 * (((v200 ^ v198) >> 5) & 0xF8 | ((v200 ^ v198) >> 13))) ^ 0x28) + 53) ^ 0xC5;
  v15[18] = (v200 ^ v198) >> 48;
  v8[30] = ((v200 ^ v198) >> 32) >> 8;
  v205 = ((v200 ^ v198) >> 50) & 0xC0 | ((v200 ^ v198) >> 58);
  v8[21] = (v200 ^ v198) >> 16;
  *(v2 + 115) = v195 + 1;
  *&v198 = __ROR8__(v194, 10);
  v206 = v194 ^ v198 ^ (v194 >> 17);
  v207 = v206 ^ (v194 << 47);
  LOBYTE(v205) = *(v202 + (v205 ^ 0x33));
  *(v2 + 97) = v206;
  v15[52] = BYTE2(v206);
  v8[31] = BYTE4(v206);
  v15[50] = BYTE1(v206);
  v15[32] = BYTE5(v207);
  v8[91] = (v194 ^ v198 ^ (v194 >> 17)) >> 24;
  *(v2 + 73) = BYTE6(v207);
  v8[13] = -13 * (v205 ^ ((v205 ^ 0xCB) >> 4) ^ ((v205 ^ 0xCB) >> 1) ^ 0xDC);
  *(v2 + 23) = HIBYTE(v207);
  LOBYTE(v206) = *(v201 + (((v204 >> 6) | (4 * (v204 & 0x3F))) ^ 0x1E));
  *(v2 + 70) = BYTE1(v204);
  v15[65] = 93 * ((v206 - 119) ^ 0x53);
  LOBYTE(v206) = *(v138 + (((v204 >> 13) & 0xF8 | (v204 >> 21) & 7) ^ 0xC8));
  *(v2 + 2) = BYTE5(v204);
  v15[64] = BYTE6(v204);
  v15[20] = BYTE3(v204);
  v15[43] = HIBYTE(v204);
  *(v2 + 107) = (v206 ^ (((2 * ((v204 >> 13) & 0xF8 | (v204 >> 21) & 7)) ^ 0x28) + 53) ^ 0xC5) + 1;
  *(v2 + 84) = BYTE4(v204);
  STACK[0x3D30] = v3;
  *(v2 + 76) = v3 + 1;
  return (*(v1 + 8 * ((28 * ((STACK[0x3E38] & 1) == 0)) ^ (LODWORD(STACK[0x3D78]) + 7081))))();
}

uint64_t sub_100D115D4()
{
  LODWORD(STACK[0x3B00]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  LODWORD(STACK[0x3780]) = v0 ^ 0x87C;
  v2 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3B08]) = 1;
  return v2();
}

uint64_t sub_100D11680@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W6>, uint64_t a4@<X8>)
{
  v8 = *(a4 + 8 * ((LODWORD(STACK[0x390]) + 12294) ^ ((2 * (STACK[0x378] & 1)) & 0xEF | (16 * (STACK[0x378] & 1)))));
  LODWORD(STACK[0x2C8]) = v7;
  LODWORD(STACK[0x2CC]) = v6;
  LODWORD(STACK[0x2D4]) = v5;
  LODWORD(STACK[0x2D0]) = a3;
  LODWORD(STACK[0x2D8]) = v4;
  LODWORD(STACK[0x2DC]) = a2;
  return v8(LODWORD(STACK[0x370]), a1, LODWORD(STACK[0x388]));
}

uint64_t sub_100D116EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *(v69 + 8 * (((v67 ^ 0x6F2 ^ (846 * (v67 ^ 0x42CE))) * (v68 & 1)) ^ v67));
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = a67;
  LODWORD(STACK[0x3E18]) = v70;
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3D40]) = STACK[0x3540];
  LODWORD(STACK[0x3D28]) = a52;
  LODWORD(STACK[0x3B08]) = STACK[0x3710];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D10]) = STACK[0x2AB8];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  return v71();
}

uint64_t sub_100D11A34@<X0>(int a1@<W0>, int a2@<W4>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  STACK[0x3C68] = LODWORD(STACK[0x3C68]) ^ __ROR4__(STACK[0x3D10], 24) ^ (LODWORD(STACK[0x3530]) ^ LODWORD(STACK[0x3528]));
  v14 = v7 ^ LODWORD(STACK[0x3C80]);
  LODWORD(STACK[0x3848]) ^= LODWORD(STACK[0x37B8]) ^ LODWORD(STACK[0x3710]) ^ LODWORD(STACK[0x351C]);
  STACK[0x3710] = LODWORD(STACK[0x3E18]) ^ STACK[0x3870];
  STACK[0x37B8] = (LODWORD(STACK[0x3C70]) ^ LODWORD(STACK[0x3860]));
  v15 = LODWORD(STACK[0x3858]) ^ LODWORD(STACK[0x3510]);
  v16 = LODWORD(STACK[0x36B8]) ^ v9;
  v17 = LODWORD(STACK[0x36F0]) ^ a2;
  v18 = LODWORD(STACK[0x36D0]) ^ a5;
  v19 = STACK[0x3688] ^ a3;
  v20 = v6;
  LODWORD(STACK[0x3870]) = LODWORD(STACK[0x5664]) ^ (a1 | v6) ^ LODWORD(STACK[0x71B0]);
  LODWORD(STACK[0x3C70]) = v14 ^ LODWORD(STACK[0x68B8]);
  v21 = LODWORD(STACK[0x3C60]) ^ 0x5541AB67;
  LODWORD(STACK[0x3688]) = v13 ^ a4;
  LODWORD(STACK[0x3E40]) = v21 ^ v13 ^ a4 ^ LODWORD(STACK[0x3538]);
  LODWORD(STACK[0x3C80]) = LODWORD(STACK[0x3B98]) ^ LODWORD(STACK[0x3948]) ^ LODWORD(STACK[0x5684]);
  v22 = STACK[0x3D28];
  LODWORD(STACK[0x3860]) = LODWORD(STACK[0x3960]) ^ 0x5541AB67 ^ LODWORD(STACK[0x3540]) ^ LODWORD(STACK[0x3D28]);
  v23 = STACK[0x3BB0];
  LODWORD(STACK[0x3C60]) = (STACK[0x3BB0] | STACK[0x3E38]) ^ STACK[0x3950] ^ LODWORD(STACK[0x569C]);
  v24 = STACK[0x3558];
  LODWORD(STACK[0x3E38]) = LODWORD(STACK[0x3558]) ^ LODWORD(STACK[0x3908]) ^ LODWORD(STACK[0x3548]);
  LODWORD(STACK[0x3858]) = v22 ^ STACK[0x38F8] ^ LODWORD(STACK[0x56B8]);
  v25 = STACK[0x3BE8];
  LODWORD(STACK[0x3E18]) = (STACK[0x3BE8] | a1) ^ LODWORD(STACK[0x3890]) ^ LODWORD(STACK[0x56CC]);
  LODWORD(STACK[0x3D10]) = (v23 + STACK[0x3BD0]) ^ STACK[0x3850] ^ LODWORD(STACK[0x56D4]);
  LODWORD(STACK[0x3850]) = (STACK[0x3BE0] | STACK[0x3BC8]) ^ STACK[0x3828] ^ LODWORD(STACK[0x56E0]);
  STACK[0x36B8] = (LODWORD(STACK[0x3818]) ^ LODWORD(STACK[0x3CD8])) ^ LODWORD(STACK[0x3588]);
  STACK[0x36D0] = LODWORD(STACK[0x37F8]) ^ v22 ^ LODWORD(STACK[0x3590]);
  STACK[0x36F0] = STACK[0x37A0] ^ v5 ^ LODWORD(STACK[0x35E0]);
  STACK[0x3960] = LODWORD(STACK[0x3778]) ^ v24 ^ LODWORD(STACK[0x35D0]);
  STACK[0x3948] = STACK[0x3768] ^ LODWORD(STACK[0x3CC0]) ^ LODWORD(STACK[0x35F0]);
  STACK[0x37A0] = (LODWORD(STACK[0x3720]) ^ LODWORD(STACK[0x3CB8])) ^ LODWORD(STACK[0x35E8]);
  STACK[0x32B0] = LODWORD(STACK[0x3BF0]) ^ LODWORD(STACK[0x3550]) ^ v15;
  v26 = STACK[0x3D60];
  STACK[0x38F8] = LODWORD(STACK[0x3D60]) ^ LODWORD(STACK[0x3568]) ^ v16;
  STACK[0x3908] = STACK[0x36F8] ^ LODWORD(STACK[0x3CA8]) ^ LODWORD(STACK[0x3600]);
  STACK[0x37F8] = v17 ^ LODWORD(STACK[0x3610]) ^ v26;
  STACK[0x3818] = LODWORD(STACK[0x36B0]) ^ v5 ^ LODWORD(STACK[0x3608]);
  STACK[0x3828] = v18 ^ LODWORD(STACK[0x35A0]) ^ v26;
  STACK[0x32C8] = STACK[0x3D30] ^ STACK[0x3D20] ^ v19;
  STACK[0x32E0] = bswap32(STACK[0x32B8]) ^ v12 ^ v11;
  STACK[0x3890] = (LODWORD(STACK[0x3618]) ^ LODWORD(STACK[0x3C90])) ^ LODWORD(STACK[0x57C8]);
  STACK[0x3950] = (LODWORD(STACK[0x3788]) ^ LODWORD(STACK[0x3C98])) ^ LODWORD(STACK[0x3570]);
  v27 = STACK[0x3AE0] >> 24;
  v28 = STACK[0x3AE8] >> 16;
  v29 = STACK[0x3D80] >> 16;
  v30 = STACK[0x3B68] >> 24;
  v31 = STACK[0x3B70] >> 24;
  v32 = STACK[0x3C08] >> 8;
  v33 = STACK[0x3C18] >> 8;
  STACK[0x26B0] = STACK[0x3CB0] >> 8;
  STACK[0x2360] = v33;
  STACK[0x22C0] = v32;
  STACK[0x2300] = STACK[0x3300] >> 8;
  STACK[0x2818] = v31;
  STACK[0x2A20] = v30;
  STACK[0x2F18] = v29;
  STACK[0x2678] = v28;
  STACK[0x26F0] = v27;
  LODWORD(STACK[0x3C18]) = bswap32(STACK[0x3D48]);
  LODWORD(STACK[0x3C08]) = bswap32(STACK[0x36E8]);
  v34 = STACK[0x3BC0];
  LODWORD(STACK[0x3B70]) = STACK[0x3BC0] ^ v20;
  LODWORD(STACK[0x3D80]) = LODWORD(STACK[0x3BD8]) ^ LODWORD(STACK[0x3628]);
  STACK[0x3018] = STACK[0x3C00] >> 24;
  STACK[0x2EB0] = STACK[0x3D38] >> 16;
  LODWORD(STACK[0x3778]) = STACK[0x5700];
  LODWORD(STACK[0x3768]) = STACK[0x7008];
  LODWORD(STACK[0x3788]) = v25 + v34;
  return (*(v10 + 8 * v8))();
}

uint64_t sub_100D11EA4(int a1, uint64_t a2, int a3)
{
  LODWORD(v8) = (1645 * v3 + 2962645) % 0x1510u;
  if (v8 >= 0xA88)
  {
    v8 = ((a3 - 205665778) & 0xC425FFD) - 21557 + v8;
  }

  else
  {
    v8 = v8;
  }

  v9 = STACK[0x640] + 4 * ((v4 + 551 * v3) % 0x1D48u);
  v10 = *v7;
  v11 = *STACK[0x660];
  v12 = *v5 ^ v6;
  v13 = (v9 + *(v11 + (v10 & STACK[0x658])) + 673210726);
  v14 = (v8 ^ 0x6FEFEDF797FFFF3DLL) + STACK[0x638] + ((2 * v8) & 0x12FFFFE7ALL);
  *(v14 + 0x4A6CC8AC2EE2E6AELL) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + 1744830659 + *(v11 + (v10 & STACK[0x648])) + a1) & v12)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v13 & v12)) ^ *(v9 - 0x34EE34220E8AC3B8) ^ (-81 * v9) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + 2) & v12)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + 1744830659 + *(v11 + (v10 & STACK[0x648])) + a1 + 2) & v12)) ^ (76 * (v14 - 61)) ^ 0xB9;
  return (*(STACK[0x668] + 8 * (((2 * (v3 != 255)) | (16 * (v3 != 255))) ^ (a3 + 14697))))();
}

uint64_t sub_100D12070(uint64_t a1)
{
  LODWORD(STACK[0x1AD4]) = -143156082;
  STACK[0xAB0] = v2;
  return (*(v3 + 8 * (v1 & 0x8717EEFF)))(a1, 1211082140);
}

uint64_t sub_100D120B8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 - 0x683CBC57EAB92A36) = a1 + 0x308E083E0C524CBELL;
  return (*(v3 + 8 * ((((1732 * (v2 ^ 0x2BF1)) ^ (v2 + 12943)) * (v1 == 0x683CBC57EAB92A3ELL)) ^ v2 ^ 0x68B4)))();
}

uint64_t sub_100D12304(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v46 = *(v45 - 148);
  v47 = (v46 - 9183) | 0xB;
  v48 = v40 & 0xF5;
  v49 = v40;
  v50 = v40 & 0xFFFFFFF5 ^ 0x30BB3BEF;
  *(v45 - 244) = v50;
  *(v45 - 148) = v46;
  *(v45 - 144) = v47;
  v51 = v49 & (v47 ^ 0xFFFFE9C1);
  v52 = *(v44 + v50) + (v48 ^ 0xEF) * (v46 - 46);
  v53 = 2 * (v52 & 0xF) + (v52 ^ 0xF);
  v54 = *(a30 + (v53 ^ 0x6FLL));
  *(v45 - 248) = v51 ^ 0x30BB3BE7;
  v55 = ((v54 ^ v53) ^ 0xF8) << 8;
  v56 = *(a32 + ((-31 * (v51 ^ 0xE7) + *(v44 + (v51 ^ 0x30BB3BE7)) + 15) ^ 0xCCLL));
  v436 = v49 & 0xFFFFFFFE ^ 0x30BB3BE7;
  v57 = *(a32 + ((-31 * (v49 & 0xFE ^ 0xE7) + *(v44 + v436) + 15) ^ 0xA1));
  LODWORD(v430) = v49 & 0xFFFFFFFD ^ 0x30BB3BE7;
  LOBYTE(v50) = -31 * (v49 & 0xFD ^ 0xE7) + *(v44 + v430) + 15;
  v58 = *(a30 + (v50 ^ 0x98));
  v59 = v49 & 0xFFFFFFF7 ^ 0x30BB3BEF;
  *(v45 - 252) = v59;
  LOBYTE(v50) = v50 ^ v58 ^ 0x8F;
  v60 = -31 * (v49 & 0xFFFFFFF7 ^ 0xFFFFFFEF) + *(v44 + v59) + 15;
  v61 = *(a31 + ((-31 * (v49 & 0xF7 ^ 0xEF) + *(v44 + v59) + 15) ^ 0x2DLL));
  v62 = ((v57 ^ 0xEB) << 16) | (v50 << 8);
  v63 = (v44 + (v49 ^ 0x30BB3BE7u));
  *(v45 - 208) = v63;
  LODWORD(v63) = -31 * (((v49 ^ 0x1C) + 57) ^ ((v49 ^ 0x1F) + 60) ^ ((v49 ^ 0xFFFFFFE4) - 63)) + *v63 - 53;
  v64 = v61 ^ v60 ^ 0x3C ^ ((v60 ^ 0x3C) - 6) ^ 0x9A;
  v65 = v63 ^ 0xFFFFFFF2;
  v66 = (v63 ^ 0xFFFFFFF2) - 6;
  v67 = v63 ^ 0xE3;
  LODWORD(v63) = v55 | (v64 << 24);
  v432 = v49 & 0xFFFFFFF9 ^ 0x30BB3BE7;
  v68 = v62 | ((*(a31 + v67) ^ v65 ^ v66 ^ 0x3E) << 24);
  HIDWORD(v427) = v49 & 0xFFFFFFFC ^ 0x30BB3BE7;
  LOBYTE(v62) = -31 * (v49 & 0xFC ^ 0xE7) + *(v44 + HIDWORD(v427)) + 15;
  LODWORD(v429) = v49 & 0xFFFFFFF3 ^ 0x30BB3BEF;
  v69 = -31 * (v49 & 0xFFFFFFF3 ^ 0xFFFFFFEF) + *(v44 + v429) + 15;
  v435 = v49 & 0xFFFFFFF1 ^ 0x30BB3BEF;
  v434 = v49 & 0xFFFFFFF4 ^ 0x30BB3BEF;
  v70 = (((-31 * (v49 & 0xF1 ^ 0xEF) + *(v44 + v435) + 15) ^ 0x2B ^ *(a30 + ((-31 * (v49 & 0xF1 ^ 0xEF) + *(v44 + v435) + 15) ^ 0x12))) << 8) | ((*(a31 + (v69 ^ 0xFELL)) ^ v69 ^ 0xFFFFFFEF ^ ((v69 ^ 0xFFFFFFEF) - 6) ^ 0xCA) << 24);
  LODWORD(v63) = *(a33 + ((-31 * (v49 & 0xF4 ^ 0xEF) + *(v44 + v434) + 15) ^ 0x62)) | v63;
  LOBYTE(v69) = ((-31 * (v49 & 0xF4 ^ 0xEF) + *(v44 + v434) + 15) ^ 0x1E) - 58;
  v433 = v49 & 0xFFFFFFF8 ^ 0x30BB3BE7;
  HIDWORD(v430) = v49 & 0xFFFFFFFB ^ 0x30BB3BE7;
  v71 = -31 * (v49 & 0xFFFFFFFB ^ 0xFFFFFFE7) + *(v44 + HIDWORD(v430));
  LODWORD(v427) = v49 & 0xFFFFFFF0 ^ 0x30BB3BEF;
  LOBYTE(v67) = -31 * (v49 & 0xF0 ^ 0xEF) + *(v44 + v427);
  v72 = (((-31 * (v49 & 0xF8 ^ 0xE7) + *(v44 + v433) + 15) ^ 0xFA) - 58) ^ *(a33 + ((-31 * (v49 & 0xF8 ^ 0xE7) + *(v44 + v433) + 15) ^ 0x86)) | ((v56 ^ 0x76) << 16) | ((*(a30 + ((-31 * (v49 & 0xF9 ^ 0xE7) + *(v44 + v432) + 15) ^ 0x9ALL)) ^ (-31 * (v49 & 0xF9 ^ 0xE7) + *(v44 + v432) + 15) ^ 0x4E) << 8) | ((*(a31 + ((v71 + 15) ^ 0xEALL)) ^ (v71 + 15) ^ 0xFFFFFFFB ^ (((v71 + 15) ^ 0xFFFFFFFB) - 6) ^ 0xD1) << 24);
  HIDWORD(v429) = v49;
  HIDWORD(v428) = v49 & 0xFFFFFFF2 ^ 0x30BB3BEF;
  LODWORD(v428) = v49 & 0xFFFFFFF6 ^ 0x30BB3BEF;
  v73 = *(a33 + (v62 ^ 0xELL)) ^ a7 ^ (v68 & 0xFFFFFF00 | ((v62 ^ 0x72) - 58));
  v74 = a5 ^ a4 ^ a6;
  v75 = v74 ^ 0xC69B9DB9 ^ ((v69 & 0xDD ^ v63 & 0x89007ADD | v69 & 0x22) ^ v63 & 0x76008522 | ((*(a32 + ((-31 * (v49 & 0xF6 ^ 0xEF) + *(v44 + v428) + 15) ^ 0x3ALL)) ^ 0x95) << 16));
  v76 = v75 - ((2 * v75) & 0x87B1A4D8);
  v77 = a5 ^ a28 ^ a6 ^ 0x8F4E7CF5 ^ (v72 + a3 - 2 * (v72 & a3));
  v78 = a5 ^ a28 ^ a21 ^ 0xA5063E59 ^ (v73 + a27 - 2 * (v73 & a27) - ((2 * (v73 + a27 - 2 * (v73 & a27))) & 0xCBBD8F76) - 438384709);
  v431 = *(v45 - 228) < 0xFCE7623A;
  v79 = v74 ^ v43 ^ 0x9385CA52 ^ ((((v67 + 15) ^ 0x5D) - 58) ^ *(a33 + ((v67 + 15) ^ 0x21)) | v70 | ((*(a32 + ((-31 * (v49 & 0xF2 ^ 0xEF) + *(v44 + HIDWORD(v428)) + 15) ^ 0x5CLL)) ^ 0x62) << 16));
  v80 = HIBYTE(v77) & 0x80;
  if ((v80 & HIBYTE(HIDWORD(a22))) != 0)
  {
    v80 = -v80;
  }

  v81 = v77 ^ HIDWORD(a22);
  v82 = v41 ^ a23 ^ 0x6E7AAE32 ^ (v76 + 1138283116);
  v83 = v79 >> 8;
  v84 = *(v45 - 216);
  v85 = v79 ^ v84;
  v86 = (v80 + HIBYTE(a22)) ^ HIBYTE(v77) & 0x7F;
  v87 = *(v45 - 184);
  v88 = (BYTE1(v84) ^ -(v84 >> 8) ^ (v83 - (v83 ^ BYTE1(v84)))) + v83;
  v89 = *(v45 - 240);
  v90 = *(v87 + 4 * v86);
  v91 = *(v87 + 4 * HIBYTE(v78)) ^ *(v42 + 4 * BYTE2(v81)) ^ *(a40 + 4 * v85) ^ *(v89 + 4 * BYTE1(v82));
  v92 = HIBYTE(v85);
  v93 = *(v42 + 4 * BYTE2(v82)) ^ v90 ^ *(v89 + 4 * v88) ^ *(a40 + 4 * v78);
  v94 = BYTE1(v81);
  v95 = *(v87 + 4 * HIBYTE(v82)) ^ *(v42 + 4 * BYTE2(v85)) ^ *(v89 + 4 * BYTE1(v78)) ^ *(a40 + 4 * v81);
  v96 = *(v42 + 4 * BYTE2(v78));
  v97 = *(v89 + 4 * v94) ^ *(v87 + 4 * HIBYTE(v85));
  v98 = (v97 ^ 0x6D757AFE) & (v96 ^ 0x2C0EB1CA) ^ v96 & 0x3F2153C3;
  v99 = (((v96 ^ 0xDCCEA689) + 590436727) ^ ((v96 ^ 0x4369E09D) - 1131012253) ^ ((v96 ^ 0x33A9F7DE) - 866777054)) + (((v97 ^ 0xB1D176DB) + 1311672613) ^ ((v97 ^ 0x1E378C2C) - 506956844) ^ ((v97 ^ 0x7DB2D3CA) - 2108871626)) - ((((2 * v98) ^ 0x799CE09F) + 1101297097) ^ (((2 * v98) ^ 0xEA94FC2D) - 760452741) ^ (((2 * v98) ^ 0xCB083F36) - 214914462)) + 310888922;
  v100 = (v99 ^ 0xE84BE414) & (2 * (v99 & 0xCC13C801)) ^ v99 & 0xCC13C801;
  v101 = ((2 * (v99 ^ 0x784AF414)) ^ 0x68B2782A) & (v99 ^ 0x784AF414) ^ (2 * (v99 ^ 0x784AF414)) & 0xB4593C14;
  v102 = v101 ^ 0x94490415;
  v103 = (v101 ^ 0x20102000) & (4 * v100) ^ v100;
  v104 = ((4 * v102) ^ 0xD164F054) & v102 ^ (4 * v102) & 0xB4593C14;
  v105 = (v104 ^ 0x90403010) & (16 * v103) ^ v103;
  v106 = ((16 * (v104 ^ 0x24190C01)) ^ 0x4593C150) & (v104 ^ 0x24190C01) ^ (16 * (v104 ^ 0x24190C01)) & 0xB4593C10;
  v107 = v99 ^ *(a40 + 4 * v82) ^ (2 * (((v105 ^ 0xB4593C15 ^ (v106 ^ 0x4110000) & (v105 << 8)) << 16) & 0x34590000 ^ v105 ^ 0xB4593C15 ^ (v106 ^ 0x4110000) & (v105 << 8) ^ (((v105 ^ 0xB4593C15 ^ (v106 ^ 0x4110000) & (v105 << 8)) << 16) ^ 0x3C150000) & (((v106 ^ 0xB0483C05) << 8) & 0x34590000 ^ 0x24410000 ^ (((v106 ^ 0xB0483C05) << 8) ^ 0x593C0000) & (v106 ^ 0xB0483C05))));
  v108 = *(v89 + 4 * (BYTE1(v95) ^ 0xDEu)) ^ *(v87 + 4 * (HIBYTE(v91) ^ 0xEA)) ^ *(v42 + 4 * (((v93 ^ 0x4041065D) >> (v92 & 0x10)) >> (v92 & 0x10 ^ 0x10))) ^ *(a40 + 4 * (v107 ^ 0xBAu));
  v109 = *(v42 + 4 * BYTE2(v95)) ^ *(a40 + 4 * (v91 ^ 0xC6u)) ^ *(v87 + 4 * (HIBYTE(v93) ^ 0x40)) ^ *(v89 + 4 * (BYTE1(v107) ^ 0x97u));
  v110 = *(v42 + 4 * (BYTE2(v91) ^ 0x38u));
  v111 = *(v87 + 4 * (HIBYTE(v95) ^ 0xDC)) ^ *(a40 + 4 * (v93 ^ 0x5Du)) ^ *(v89 + 4 * (BYTE1(v91) ^ 0xF1u)) ^ *(v42 + 4 * (BYTE2(v107) ^ 0xF7u));
  v112 = *(v87 + 4 * (HIBYTE(v107) ^ 0xA8)) ^ v110 ^ *(v89 + 4 * (BYTE1(v93) ^ 6u)) ^ *(a40 + 4 * (v95 ^ 0x99u));
  v113 = *(v87 + 4 * (HIBYTE(v108) ^ 0xC9));
  v114 = *(v42 + 4 * (BYTE2(v109) ^ 0xFu));
  v115 = 1497946459 - (((v114 ^ 0xC0016D6D) + 1073648275) ^ ((v114 ^ 0x9B2A57F7) + 1691723785) ^ ((v114 ^ 0xF7258B50) + 148534448));
  v116 = (v115 ^ 0xF02062D3) & (2 * (v115 & 0xFAA874DB)) ^ v115 & 0xFAA874DB;
  v117 = ((2 * (v115 ^ 0xD5700AC7)) ^ 0x5FB0FC38) & (v115 ^ 0xD5700AC7) ^ (2 * (v115 ^ 0xD5700AC7)) & 0x2FD87E1C;
  v118 = (v117 ^ 0xF807418) & (4 * v116) ^ v116;
  v119 = ((4 * (v117 ^ 0x20480204)) ^ 0xBF61F870) & (v117 ^ 0x20480204) ^ (4 * (v117 ^ 0x20480204)) & 0x2FD87E1C;
  v120 = (v119 ^ 0x2F407810) & (16 * v118) ^ v118;
  v121 = ((16 * (v119 ^ 0x98060C)) ^ 0xFD87E1C0) & (v119 ^ 0x98060C) ^ (16 * (v119 ^ 0x98060C)) & 0x2FD87E10;
  v122 = v120 ^ 0x2FD87E1C ^ (v121 ^ 0x2D806000) & (v120 << 8);
  v123 = (((v113 ^ 0xFFF196D5) + 944427) ^ ((v113 ^ 0x7F604FC4) - 2137018308) ^ ((v113 ^ 0xFCFB7F7D) + 50626691)) - (((v114 ^ v113 ^ 0x600A5EF5) - 1611292405) ^ ((v114 ^ v113 ^ 0x2A819A21) - 713136673) ^ ((v114 ^ v113 ^ 0x9AEFD372) + 1695558798)) - 1301218854;
  v124 = v115 ^ v114 ^ v123 ^ ((v123 ^ 0x5329458E) - 1430466202) ^ ((v123 ^ 0xA06CF798) + 1509516148) ^ ((v123 ^ 0xAA9424FD) + 1392619543) ^ ((v123 ^ 0x5FBBFDFF) - 1506907883) ^ (2 * ((v122 << 16) & 0x2FD80000 ^ v122 ^ ((v122 << 16) ^ 0x7E1C0000) & (((v121 ^ 0x2581E1C) << 8) & 0x2FD80000 ^ 0x27800000 ^ (((v121 ^ 0x2581E1C) << 8) ^ 0x587E0000) & (v121 ^ 0x2581E1C))));
  v125 = (((v113 ^ 0x7BC50391) - 2076509073) ^ ((v113 ^ 0xFDD44EA6) + 36417882) ^ ((v113 ^ 0xFA7BEB5B) + 92542117)) + 1379907379 + (((v124 ^ 0x9F3A41F5) + 1846446150) ^ ((v124 ^ 0x8C0E85D2) + 2100972643) ^ ((v124 ^ 0x4078961A) - 1320394837));
  v126 = (v125 ^ 0xC7295BAA) & (2 * (v125 & 0x87B253AB)) ^ v125 & 0x87B253AB;
  v127 = ((2 * (v125 ^ 0xC26DF9F8)) ^ 0x8BBF54A6) & (v125 ^ 0xC26DF9F8) ^ (2 * (v125 ^ 0xC26DF9F8)) & 0x45DFAA52;
  v128 = v127 ^ 0x4440AA51;
  v129 = (v127 ^ 0x19B0000) & (4 * v126) ^ v126;
  v130 = ((4 * v128) ^ 0x177EA94C) & v128 ^ (4 * v128) & 0x45DFAA50;
  v131 = (v130 ^ 0x55EA840) & (16 * v129) ^ v129;
  v132 = ((16 * (v130 ^ 0x40810213)) ^ 0x5DFAA530) & (v130 ^ 0x40810213) ^ (16 * (v130 ^ 0x40810213)) & 0x45DFAA50;
  v133 = v131 ^ 0x45DFAA53 ^ (v132 ^ 0x45DAA000) & (v131 << 8);
  v134 = *(v89 + 4 * (BYTE1(v111) ^ 0x4Du)) ^ *(a40 + 4 * (v112 ^ 0xD3u)) ^ v125 ^ (2 * ((v133 << 16) & 0x45DF0000 ^ v133 ^ ((v133 << 16) ^ 0x2A530000) & (((v132 ^ 0x50A43) << 8) & 0x45DF0000 ^ 0x550000 ^ (((v132 ^ 0x50A43) << 8) ^ 0x5FAA0000) & (v132 ^ 0x50A43))));
  v135 = *(v89 + 4 * (BYTE1(v112) ^ 0xEEu)) ^ *(v87 + 4 * (HIBYTE(v109) ^ 0xDF)) ^ *(v42 + 4 * (BYTE2(v111) ^ 0x8Au)) ^ *(a40 + 4 * v108);
  v136 = *(v42 + 4 * (BYTE2(v108) ^ 0xCBu));
  v137 = *(a40 + 4 * (v109 ^ 0x2Cu)) ^ *(v87 + 4 * (HIBYTE(v111) ^ 0x55)) ^ *(v42 + 4 * (BYTE2(v112) ^ 0x21u)) ^ *(v89 + 4 * (BYTE1(v108) ^ 0x95u));
  v138 = *(v87 + 4 * (HIBYTE(v112) ^ 0x19)) ^ v136 ^ *(a40 + 4 * (v111 ^ 0xC4u)) ^ *(v89 + 4 * (BYTE1(v109) ^ 0x8Fu));
  v139 = *(v87 + 4 * (HIBYTE(v134) ^ 0xEA));
  v140 = *(v42 + 4 * (BYTE2(v135) ^ 0xF3u));
  v141 = (v140 ^ 0x4CC5BF65) & (v139 ^ 0x7C6AA66C) ^ v139 & 0x60CB0EAF;
  v142 = (((v139 ^ 0x2691443B) - 647054395) ^ ((v139 ^ 0xB7B39752) + 1212967086) ^ ((v139 ^ 0xED487505) + 314018555)) + (((v140 ^ 0x1EDC688F) - 517761167) ^ ((v140 ^ 0x67E6E761) - 1743185761) ^ ((v140 ^ 0xD5343E24) + 717996508)) - ((((2 * v141) ^ 0xF7F55B9E) - 129246285) ^ (((2 * v141) ^ 0xC3BC8CE7) - 872280884) ^ (((2 * v141) ^ 0xF4DDDB21) - 77374706)) + 747570045;
  v143 = (v142 ^ 0xAB42C98C) & (2 * (v142 & 0xCB14E12E)) ^ v142 & 0xCB14E12E;
  v144 = ((2 * (v142 ^ 0xBF4A8B90)) ^ 0xE8BCD57C) & (v142 ^ 0xBF4A8B90) ^ (2 * (v142 ^ 0xBF4A8B90)) & 0x745E6ABE;
  v145 = v144 ^ 0x14422A82;
  v146 = (v144 ^ 0x60140038) & (4 * v143) ^ v143;
  v147 = ((4 * v145) ^ 0xD179AAF8) & v145 ^ (4 * v145) & 0x745E6ABC;
  v148 = (v147 ^ 0x50582AA0) & (16 * v146) ^ v146;
  v149 = ((16 * (v147 ^ 0x24064006)) ^ 0x45E6ABE0) & (v147 ^ 0x24064006) ^ (16 * (v147 ^ 0x24064006)) & 0x745E6AB0;
  v150 = v148 ^ 0x745E6ABE ^ (v149 ^ 0x44462A00) & (v148 << 8);
  v151 = *(a40 + 4 * (v138 ^ 0x74u)) ^ *(v89 + 4 * (BYTE1(v137) ^ 0xC1u)) ^ v142 ^ (2 * ((v150 << 16) & 0x745E0000 ^ v150 ^ ((v150 << 16) ^ 0x6ABE0000) & (((v149 ^ 0x3018401E) << 8) & 0x745E0000 ^ 0x20140000 ^ (((v149 ^ 0x3018401E) << 8) ^ 0x5E6A0000) & (v149 ^ 0x3018401E))));
  v152 = *(v87 + 4 * (HIBYTE(v135) ^ 0xBF)) ^ *(v42 + 4 * (BYTE2(v137) ^ 0xFCu));
  v153 = *(v89 + 4 * (BYTE1(v138) ^ 0x33u)) ^ ((v152 & 0x296D3AE2 ^ 0x3AC1BBC5) & (v152 & 0xD692C51D ^ 0x2BEDBEEB) | v152 & 0xC4124418) ^ 0x97A8DFED ^ *(a40 + 4 * (v134 ^ 0x95u));
  v154 = *(v42 + 4 * (BYTE2(v134) ^ 0xB6u));
  v155 = *(v42 + 4 * (BYTE2(v138) ^ 0x58u)) ^ *(v87 + 4 * (HIBYTE(v137) ^ 0xBC));
  v156 = v137 ^ 0xD6;
  v157 = ((v153 & 0xBE6BC26B ^ 0xF3A12E49) & (v153 & 0x41943D94 ^ 0xBE6BC67B) | v153 & 0x141194) ^ 0xEBDBB754;
  v158 = v155 ^ *(a40 + 4 * (v135 ^ 0x63u)) ^ 0xEEA0996 ^ *(v89 + 4 * (BYTE1(v134) ^ 0x13u));
  v159 = *(v87 + 4 * (HIBYTE(v138) ^ 0xF3)) ^ *(v89 + 4 * (BYTE1(v135) ^ 0x90u)) ^ *(a40 + 4 * v156) ^ v154;
  v160 = *(v42 + 4 * BYTE2(v157)) ^ *(v89 + 4 * BYTE1(v158)) ^ *(a40 + 4 * (v159 ^ 0x93u)) ^ *(v87 + 4 * (HIBYTE(v151) ^ 0x3E));
  v161 = *(v87 + 4 * HIBYTE(v157)) ^ *(v42 + 4 * BYTE2(v158)) ^ *(v89 + 4 * (BYTE1(v159) ^ 0x26u)) ^ *(a40 + 4 * (v151 ^ 0xD7u));
  v162 = *(v89 + 4 * (BYTE1(v151) ^ 0x7Bu)) ^ *(v87 + 4 * HIBYTE(v158)) ^ *(v42 + 4 * (BYTE2(v159) ^ 0x37u)) ^ *(a40 + 4 * v157);
  v163 = *(v42 + 4 * (BYTE2(v151) ^ 0x15u)) ^ *(v87 + 4 * (HIBYTE(v159) ^ 0xAB)) ^ *(v89 + 4 * BYTE1(v157)) ^ *(a40 + 4 * v158);
  v164 = *(v42 + 4 * (BYTE2(v162) ^ 0x68u));
  LODWORD(v165) = __ROR4__(*(v87 + 4 * (HIBYTE(v161) ^ 0x46)) ^ 0x34ED503F, 27) ^ 0x10FECA69;
  HIDWORD(v165) = v165;
  v166 = *(v87 + 4 * (HIBYTE(v160) ^ 0xF4)) ^ *(v42 + 4 * (BYTE2(v161) ^ 7u)) ^ *(v89 + 4 * (BYTE1(v162) ^ 0x95u)) ^ *(a40 + 4 * (v163 ^ 0x95u));
  v167 = (v165 >> 5) - ((2 * (v165 >> 5)) & 0xB5398DD6) - 627259669;
  v168 = (((v167 ^ 0xFFA94ECE) + 5681458) ^ ((v167 ^ 0xF940A079) + 113205127) ^ ((v167 ^ 0xDC75285C) + 596301732)) - (((v164 & 0x2000) + 1062317989) ^ (v164 & 0x2000 | 0xBF32D16D) ^ ((v164 & 0x2000 ^ 0x7C3DB334) + 1116773735));
  v169 = v167 ^ (v164 & 0x2000 | 0xC152D1AD);
  v171 = v167 & (v164 & 0x2000 ^ 0x2000);
  v170 = v171 == 0;
  v172 = v168 + 1375573470;
  v173 = (((v169 ^ 0x30C6A0E5) - 818323685) ^ ((v169 ^ 0xA779A10) - 175610384) ^ ((v169 ^ 0x217F0DB3) - 561974707)) + 2 * v171 + 1417803750;
  if (!v170)
  {
    v173 = v172;
  }

  v174 = *(v89 + 4 * (BYTE1(v163) ^ 0xAFu)) ^ *(a40 + 4 * (v160 ^ 0xD0u)) ^ v164 & 0xFFFFDFFF ^ v173 ^ ((v173 ^ 0xE33A0B2) - 914382866) ^ ((v173 ^ 0x1579BE4E) - 768245486) ^ ((v173 ^ 0x5C06A1A3) - 1689608451) ^ ((v173 ^ 0x7FFF7FFF) - 1196212063);
  v175 = *(v89 + 4 * (BYTE1(v160) ^ 0x48u)) ^ *(a40 + 4 * (v161 ^ 0x90u)) ^ *(v87 + 4 * (HIBYTE(v162) ^ 0x1E)) ^ *(v42 + 4 * (BYTE2(v163) ^ 0xDAu));
  v176 = ((HIBYTE(v166) ^ 0x9571D08B) - 1705650963) ^ (HIBYTE(v166) + 802600552) ^ ((HIBYTE(v166) ^ 0x20C89CD) + 220761515);
  v177 = *(v87 + 4 * (HIBYTE(v163) ^ 0xE3)) ^ *(v42 + 4 * (BYTE2(v160) ^ 0x11u)) ^ *(v89 + 4 * (BYTE1(v161) ^ 0x80u)) ^ *(a40 + 4 * (v162 ^ 0x77u));
  v178 = ((HIBYTE(v174) ^ 0x159C3B40) - 1589043910) ^ ((HIBYTE(v174) ^ 0x50148842) - 457068996) ^ ((HIBYTE(v174) ^ 0x4588B310) - 245525142);
  v179 = ((HIBYTE(v175) ^ 0x7F851C62) - 1436856276) ^ ((HIBYTE(v175) ^ 0x233C158F) - 152938041) ^ ((HIBYTE(v175) ^ 0x5CB909F3) - 1989720645);
  v180 = (v178 - 1545409674);
  if (v180 >= 0x58B811E2)
  {
    v181 = 0;
  }

  else
  {
    v181 = 0xFFFFFFFF00000000;
  }

  v423 = 4 * (v178 + 1261099412);
  v182 = *(v42 + 4 * (BYTE2(v175) ^ 0x3Cu));
  *(v45 - 216) = v182;
  v424 = *(a40 + 4 * ((((v166 ^ 0xD4AAE885) + 873185624) ^ ((v166 ^ 0x278419C3) - 953864174) ^ ((v166 ^ 0xF32EF128) + 328194299)) + 526308931));
  v425 = *(v89 + 4 * (BYTE1(v177) ^ 0xCAu));
  v183 = v425 ^ v182 ^ v424 ^ *(v87 + v423);
  v422 = 4 * (v181 - v180) + 0x162E04788;
  v184 = v87 + v423 + v422;
  v417 = *(v89 + 4 * (BYTE1(v166) ^ 0x6Cu));
  v185 = *(v42 + 4 * (BYTE2(v177) ^ 0x63u));
  v419 = *(a40 + 4 * ((((v174 ^ 0xAEEFBC1E) - 1946812366) ^ ((v174 ^ 0x5C122152) + 2030804350) ^ ((v174 ^ 0xF2FD9D0F) - 672915167)) - 622443629));
  v420 = v179 + 706851752;
  v186 = v417 ^ v185 ^ v419 ^ *(v184 + 4 * (v179 + 706851752));
  v187 = v176 - 254018594;
  v188 = (((HIBYTE(v177) ^ 0xA20230B5) + 898776282) ^ ((HIBYTE(v177) ^ 0xEF3CA08D) + 2024582370) ^ ((HIBYTE(v177) ^ 0x4D3E9093) - 626090752)) + 1752167224;
  v189 = *(v42 + 4 * (BYTE2(v166) ^ 0x53u));
  v190 = *(a40 + 4 * ((((v175 ^ 0xB90B1657) - 612436210) ^ ((v175 ^ 0x34E2E691) + 1452738508) ^ ((v175 ^ 0x8DE9F04F) - 274984682)) - 1651892692));
  v191 = *(v89 + 4 * (BYTE1(v174) ^ 0xB6u));
  v192 = v191 ^ v189 ^ v190 ^ *(v184 + 4 * v188);
  v193 = *(*(v45 - 128) + 4 * (BYTE2(v174) ^ 8u));
  v194 = *(v89 + 4 * (BYTE1(v175) ^ 0x79u));
  v195 = v89;
  v196 = *(a40 + 4 * ((((v177 ^ 0x5004B13) + 325090919) ^ ((v177 ^ 0xFD20DC38) - 348067506) ^ ((v177 ^ 0xF8209746) - 297754060)) - 375403801));
  v197 = v193 ^ *(v87 + 4 * (v176 - 254018594)) ^ v194 ^ v196;
  v198 = *(v184 + 4 * (HIBYTE(v197) ^ 0xB4)) ^ *(*(v45 - 128) + 4 * (BYTE2(v183) ^ 0x19u)) ^ *(v89 + 4 * (BYTE1(v186) ^ 0x1Eu)) ^ *(a40 + 4 * ((v191 ^ v189 ^ v190 ^ *(v184 + 4 * v188)) ^ 0x87u));
  v199 = *(*(v45 - 128) + 4 * (BYTE2(v192) ^ 0x46u));
  v200 = ((v199 & 0x200 ^ 0xC4C8231D) + 690695120) ^ ((v199 & 0x200) + 235631341) ^ ((v199 & 0x200 ^ 0x98DE1642) + 1966939793);
  v201 = v200 + 763897597;
  v202 = v201 & 0x1010 ^ 0xD2024610 ^ (v201 ^ 0xF6969620) & (2 * (v201 & 0x1010));
  v203 = (2 * (v201 ^ 0x36969620)) & 0x52024610 ^ 0x52024210 ^ ((2 * (v201 ^ 0x36969620)) ^ 0xA4048C20) & (v201 ^ 0x36969620);
  v204 = (4 * v202) & 0xD2024610 ^ v202 ^ ((4 * v202) ^ 0x48091840) & v203;
  v205 = (4 * v203) & 0xD2024610 ^ 0x92024610 ^ ((4 * v203) ^ 0x48091840) & v203;
  v206 = v204 ^ (16 * v204) & 0xD2024610 ^ ((16 * v204) ^ 0x20246100) & v205;
  v207 = (16 * v205) & 0xD2024610 ^ 0xD2020610 ^ ((16 * v205) ^ 0x20246100) & v205;
  v208 = ((v206 ^ 0x40004000) << 8) & 0xD2024600 ^ v206 ^ 0x40004000 ^ (((v206 ^ 0x40004000) << 8) ^ 0x2461000) & v207;
  v209 = (v208 << 16) & 0x52020000 ^ v208 ^ ((v208 << 16) ^ 0x46100000) & ((v207 << 8) & 0xD2020000 ^ 0x50000000 ^ ((v207 << 8) ^ 0x2460000) & v207);
  v210 = *(v184 + 4 * (HIBYTE(v186) ^ 0xFC));
  v211 = *(v184 + 4 * (HIBYTE(v183) ^ 0xB4)) ^ *(*(v45 - 128) + 4 * (BYTE2(v186) ^ 0xA0u)) ^ *(v89 + 4 * (BYTE1(v192) ^ 0xC8u)) ^ *(a40 + 4 * ((v193 ^ *(v87 + 4 * (v176 - 254018594)) ^ v194 ^ v196) ^ 0x9Du));
  v170 = ((v201 ^ (2 * v209) ^ 0xC0945C10) & (v210 ^ 0x6C9AF5D3) ^ (v201 ^ (2 * v209)) & 0x10F053BF) == 9457680;
  v212 = 156121251 - v200;
  if (v170)
  {
    v212 = v200 + 763897597;
  }

  v213 = (((v210 ^ 0x165B89EB) - 375097835) ^ ((v210 ^ 0x1595E0CB) - 362143947) ^ ((v210 ^ 0x7FA4CF4C) - 2141507404)) - 1123523126 + v212;
  v214 = (v213 ^ 0x93F710D0) & (2 * (v213 & 0xA3F710D2)) ^ v213 & 0xA3F710D2;
  v215 = ((2 * (v213 ^ 0x93D910F4)) ^ 0x605C004C) & (v213 ^ 0x93D910F4) ^ (2 * (v213 ^ 0x93D910F4)) & 0x302E0026;
  v216 = (v215 ^ 0xC0000) & (4 * v214) ^ v214;
  v217 = ((4 * (v215 ^ 0x10220022)) ^ 0xC0B80098) & (v215 ^ 0x10220022) ^ (4 * (v215 ^ 0x10220022)) & 0x302E0024;
  v218 = v216 ^ 0x302E0026 ^ (v217 ^ 0x280000) & (16 * v216);
  v219 = (16 * (v217 ^ 0x30060026)) & 0x302E0020 ^ 0x300E0006 ^ ((16 * (v217 ^ 0x30060026)) ^ 0x2E00260) & (v217 ^ 0x30060026);
  v220 = (v218 << 8) & 0x302E0000 ^ v218 ^ ((v218 << 8) ^ 0x2E002600) & v219;
  v221 = *(v89 + 4 * (BYTE1(v197) ^ 0x97u)) ^ *(a40 + 4 * (v183 ^ 0x63u)) ^ v199 & 0xFFFFFDFF ^ v213 ^ (2 * ((v220 << 16) & 0x302E0000 ^ v220 ^ ((v220 << 16) ^ 0x260000) & ((v219 << 8) & 0x302E0000 ^ 0x102E0000 ^ ((v219 << 8) ^ 0x2E000000) & v219)));
  v222 = *(*(v45 - 128) + 4 * (BYTE2(v197) ^ 0x4Du)) ^ *(v89 + 4 * (BYTE1(v183) ^ 0x7Bu)) ^ *(v184 + 4 * (HIBYTE(v192) ^ 1)) ^ *(a40 + 4 * (v186 ^ 0x9Bu));
  v223 = *(*(v45 - 128) + 4 * (BYTE2(v211) ^ 0xA5u)) ^ *(v184 + 4 * (HIBYTE(v198) ^ 0x85));
  v224 = *(v89 + 4 * (BYTE1(v221) ^ 0x5Du));
  v225 = ((v223 ^ 0x41F734E8) - 1106719976) ^ ((v223 ^ 0xA1E5532) - 169760050) ^ ((v223 ^ 0x9B8D767C) + 1685227908);
  v226 = 2 * ((v223 ^ 0x506417A6) & (v224 ^ 0x6AF0ABF7) ^ v223 & 0x44CE24A6);
  v227 = (((v224 ^ 0x348F74D8) - 881816792) ^ ((v224 ^ 0x90C47A48) + 1866171832) ^ ((v224 ^ 0xA7581C1) - 175473089)) + v225 - (((v226 ^ 0xB7DFCC59) + 792556858) ^ ((v226 ^ 0x2A72EC18) - 1299163783) ^ ((v226 ^ 0x1D25290D) - 2050518930)) + 253458161;
  v228 = (v227 ^ 0x87F1EBB2) & (2 * (v227 & 0x87F1E033)) ^ v227 & 0x87F1E033;
  v229 = ((2 * (v227 ^ 0x8ED3ABB4)) ^ 0x1244970E) & (v227 ^ 0x8ED3ABB4) ^ (2 * (v227 ^ 0x8ED3ABB4)) & 0x9224B86;
  v230 = (v229 ^ 0x204904) & (4 * v228) ^ v228;
  v231 = ((4 * (v229 ^ 0x9224881)) ^ 0x24892E1C) & (v229 ^ 0x9224881) ^ (4 * (v229 ^ 0x9224881)) & 0x9224B84;
  v232 = (v231 ^ 0xA00) & (16 * v230) ^ v230;
  v233 = ((16 * (v231 ^ 0x9224183)) ^ 0x9224B870) & (v231 ^ 0x9224183) ^ (16 * (v231 ^ 0x9224183)) & 0x9224B80;
  v234 = v232 ^ 0x9224B87 ^ (v233 ^ 0x200800) & (v232 << 8);
  v235 = v227 ^ *(a40 + 4 * (v222 ^ 0x3Bu)) ^ (2 * ((v234 << 16) & 0x9220000 ^ v234 ^ ((v234 << 16) ^ 0x4B870000) & (((v233 ^ 0x9024387) << 8) & 0x9220000 ^ 0x9200000 ^ (((v233 ^ 0x9024387) << 8) ^ 0x224B0000) & (v233 ^ 0x9024387))));
  v236 = *(*(v45 - 128) + 4 * (BYTE2(v221) ^ 0xDu)) ^ *(v184 + 4 * (HIBYTE(v211) ^ 0x67)) ^ *(v195 + 4 * (BYTE1(v222) ^ 0x3Fu)) ^ *(a40 + 4 * (v198 ^ 0x35u));
  v237 = *(*(v45 - 128) + 4 * (BYTE2(v222) ^ 0x43u)) ^ *(v195 + 4 * (BYTE1(v198) ^ 0x8Eu)) ^ *(a40 + 4 * (v211 ^ 0x27u)) ^ *(v184 + 4 * (HIBYTE(v221) ^ 0x32));
  v238 = *(v195 + 4 * (BYTE1(v211) ^ 0xE9u)) ^ *(v184 + 4 * (HIBYTE(v222) ^ 0x9A)) ^ *(*(v45 - 128) + 4 * (BYTE2(v198) ^ 0x39u)) ^ *(a40 + 4 * (v221 ^ 0x3Fu));
  v239 = *(v184 + 4 * v187) ^ v193 ^ v196 ^ v194;
  v240 = v184 + v423 + v422;
  v241 = v424 ^ v425 ^ *(v45 - 216) ^ *(v184 + v423);
  v242 = *(v240 + 4 * v420) ^ v185 ^ v417 ^ v419;
  v243 = v189 ^ v190 ^ v191 ^ *(v240 + 4 * v188);
  v244 = *(v195 + 4 * (BYTE1(v242) ^ 0x1Eu)) ^ *(*(v45 - 128) + 4 * (BYTE2(v241) ^ 0x19u)) ^ *(v240 + 4 * (HIBYTE(v239) ^ 0xB4)) ^ *(a40 + 4 * ((v189 ^ v190 ^ v191 ^ *(v240 + 4 * v188)) ^ 0x87u));
  v245 = *(*(v45 - 128) + 4 * (BYTE2(v242) ^ 0xA0u)) ^ *(v240 + 4 * (HIBYTE(v241) ^ 0xB4)) ^ *(v195 + 4 * (BYTE1(v243) ^ 0xC8u)) ^ *(a40 + 4 * (v239 ^ 0x9Du));
  v246 = *(v195 + 4 * (BYTE1(v239) ^ 0x97u)) ^ *(v240 + 4 * (HIBYTE(v242) ^ 0xFC)) ^ *(*(v45 - 128) + 4 * (BYTE2(v243) ^ 0x46u)) ^ *(a40 + 4 * (v241 ^ 0x63u));
  v247 = *(v240 + 4 * (HIBYTE(v243) ^ 1)) ^ *(*(v45 - 128) + 4 * (BYTE2(v239) ^ 0x4Du)) ^ *(a40 + 4 * ((*(v240 + 4 * v420) ^ v185 ^ v417 ^ v419) ^ 0x9Bu)) ^ *(v195 + 4 * (BYTE1(v241) ^ 0x7Bu));
  v248 = v247 ^ 0x172A4643;
  v249 = 0x3E2E32A312 * (((v247 ^ 0x5BBD5DFDFF0DC0A3) - 0x5BBD5DFDE82786E0) ^ ((v247 ^ 0x708E5BEEA7F0D88CLL) + 0xF71A4114F256131) ^ ((v247 ^ 0x2B330613C2BE2714) + 0x54CCF9EC2A6B9EA9)) + 0x6226855951C8DC1FLL;
  v250 = (v249 ^ 0xF4C1893395649755) & (2 * (v249 & 0xF6E9D23811691651)) ^ v249 & 0xF6E9D23811691651;
  v251 = ((2 * (v249 ^ 0x9912AD73B7A697F7)) ^ 0xDFF6FE974D9F034CLL) & (v249 ^ 0x9912AD73B7A697F7) ^ (2 * (v249 ^ 0x9912AD73B7A697F7)) & 0x6FFB7F4BA6CF81A4;
  v252 = (v251 ^ 0x4FE25800048C0104) & (4 * v250) ^ v250;
  v253 = ((4 * (v251 ^ 0x20090148A24080A2)) ^ 0xBFEDFD2E9B3E0698) & (v251 ^ 0x20090148A24080A2) ^ (4 * (v251 ^ 0x20090148A24080A2)) & 0x6FFB7F4BA6CF81A4;
  v254 = (v253 ^ 0x2FE97D0A820E0080) & (16 * v252) ^ v252;
  v255 = ((16 * (v253 ^ 0x4012024124C18126)) ^ 0xFFB7F4BA6CF81A60) & (v253 ^ 0x4012024124C18126) ^ (16 * (v253 ^ 0x4012024124C18126)) & 0x6FFB7F4BA6CF81A0;
  v256 = (v255 ^ 0x6FB3740A24C80000) & (v254 << 8) ^ v254;
  v257 = (((v255 ^ 0x480B4182078186) << 8) ^ 0xFB7F4BA6CF81A600) & (v255 ^ 0x480B4182078186) ^ ((v255 ^ 0x480B4182078186) << 8) & 0x6FFB7F4BA6CF8100;
  v258 = v256 ^ 0x6FFB7F4BA6CF81A6 ^ (v257 ^ 0x6B7B4B0286810000) & (v256 << 16);
  v259 = v249 ^ (2 * ((v258 << 32) & 0x6FFB7F4B00000000 ^ v258 ^ ((v258 << 32) ^ 0x26CF81A600000000) & (((v257 ^ 0x4803449204E01A6) << 16) & 0x6FFB7F4B00000000 ^ 0xB0590000000000 ^ (((v257 ^ 0x4803449204E01A6) << 16) ^ 0x7F4BA6CF00000000) & (v257 ^ 0x4803449204E01A6))));
  v260 = ((v259 ^ 0x96A11F91ACD7E2B8) + 0x986701DF3305986) ^ ((v259 ^ 0x8D02637281C55732) + 0x12250CFEDE22EC10);
  LODWORD(v260) = __CFADD__(69072620 * (v260 ^ ((v259 ^ 0x7F2A524871E4A097) - 0x1FF2C23BD1FCE455)), 0x8B48D35CF0A2C394) + (((v260 ^ ((v259 ^ 0x7F2A524871E4A097) - 0x1FF2C23BD1FCE455)) * 0x41DF6ECuLL) >> 64) + 69072620 * ((__CFADD__(v259 ^ 0x96A11F91ACD7E2B8, 0x986701DF3305986) - 1) ^ (__CFADD__(v259 ^ 0x8D02637281C55732, 0x12250CFEDE22EC10) - 1) ^ (__CFADD__(v259 ^ 0x7F2A524871E4A097, 0xE00D3DC42E031BABLL) - 1)) + 1254240091;
  LOBYTE(v259) = -20 * ((4172860045u * (((((v248 >> 2) ^ 0x76D2F6E81A3AB97ALL) - 0x76D2F6E81A3AB97ALL) ^ (((v248 >> 2) ^ 0x419933B89B46ED34) - 0x419933B89B46ED34) ^ (((v248 >> 2) ^ 0x374BC550A2260A10uLL) - 0x374BC550A2260A10)) + 1002700956) + 0x7B480B96873CB7DALL) >> 56) - 101;
  LOBYTE(v257) = (v259 ^ 0xEF) & (2 * (v259 & 0xE0)) ^ v259 & 0xE0;
  v261 = (2 * (v259 ^ 0xAF)) & 0x48 ^ 0x42 ^ ((2 * (v259 ^ 0xAF)) ^ 0x9C) & (v259 ^ 0xAF);
  v262 = v259 ^ (2 * ((16 * (((4 * v257) | 0xC) & v261 ^ v257)) & 0x40 ^ ((4 * v257) | 0xC) & v261 ^ v257 ^ ((16 * (((4 * v257) | 0xC) & v261 ^ v257)) ^ 0xF0) & ((4 * v261) & 0x4C ^ 0x46 ^ ((4 * v261) ^ 0x38) & v261))) ^ 7;
  if (v260 == 1253074675)
  {
    LOBYTE(v248) = v262;
  }

  v263 = *(v240 + 4 * (HIBYTE(v244) ^ 0x85)) ^ *(*(v45 - 128) + 4 * (BYTE2(v245) ^ 0xA5u)) ^ *(v195 + 4 * (BYTE1(v246) ^ 0xEBu)) ^ *(a40 + 4 * (v248 ^ 0x78u));
  v264 = *(v240 + 4 * (HIBYTE(v245) ^ 0x67));
  v265 = *(*(v45 - 128) + 4 * (BYTE2(v246) ^ 0x80u));
  v266 = (v265 ^ 0x1BE2BF00) & (v264 ^ 0x7C6AA66C) ^ v264 & 0x37EC0ECA;
  v267 = (((v264 ^ 0xA2F5BB25) + 1560954075) ^ ((v264 ^ 0x979E5037) + 1751232457) ^ ((v264 ^ 0x49014D7E) - 1224822142)) + (((v265 ^ 0x3AB8C796) - 985188246) ^ ((v265 ^ 0x7414CFAB) - 1947520939) ^ ((v265 ^ 0xE2A2B9F7) + 492652041)) - ((((2 * v266) ^ 0x9B089F30) - 65731006) ^ (((2 * v266) ^ 0xED4DCAE7) - 1974447209) ^ (((2 * v266) ^ 0x1E955947) + 2039005239)) + 1650327685;
  v268 = (v267 ^ 0x85E4ED02) & (2 * (v267 & 0xD5E8ED93)) ^ v267 & 0xD5E8ED93;
  v269 = ((2 * (v267 ^ 0xAF35E626)) ^ 0xF5BA176A) & (v267 ^ 0xAF35E626) ^ (2 * (v267 ^ 0xAF35E626)) & 0x7ADD0BB4;
  v270 = v268 ^ 0x7ADD0BB5 ^ (v269 ^ 0x70800200) & (4 * v268);
  v271 = ((4 * (v269 ^ 0xA450895)) ^ 0xEB742ED4) & (v269 ^ 0xA450895) ^ (4 * (v269 ^ 0xA450895)) & 0x7ADD0BB4;
  v272 = v271 & 0xC576FC94 ^ v270 ^ (v271 ^ 0x6A540A95) & ((16 * v270) ^ 0x68A647C4);
  v273 = ((16 * v271) ^ 0x603655D4) & (v271 ^ 0x6A540A95) ^ v271 & 0xC576FC94;
  v274 = v273 & 0xC576FC94 ^ v272 ^ ((v272 << 8) ^ 0x4C75DD94) & (v273 ^ 0x405408B5);
  v275 = ((v273 << 8) ^ 0x917E6894) & (v273 ^ 0x405408B5) ^ v273 & 0xC576FC94;
  v276 = *(a40 + 4 * (v244 ^ 0x35u)) ^ *(v195 + 4 * (BYTE1(v247) ^ 0x3Fu)) ^ v267 ^ (2 * (v274 ^ v275 & 0x4576FC94 ^ ((v274 << 16) ^ 0xCEC3FC96) & (v275 ^ 0x3A890000) ^ ((v274 << 16) ^ 0xCEC3FC96) & 0x7ADD0894));
  v277 = *(v195 + 4 * (BYTE1(v244) ^ 0x8Eu)) ^ *(*(v45 - 128) + 4 * (BYTE2(v247) ^ 0x43u));
  *(v45 - 184) = v240;
  v278 = *(v240 + 4 * (HIBYTE(v247) ^ 0x9A));
  v279 = v277 ^ *(v240 + 4 * (HIBYTE(v246) ^ 0xCD)) ^ *(a40 + 4 * (v245 ^ 0x27u));
  v280 = *(*(v45 - 128) + 4 * (BYTE2(v244) ^ 0x39u)) ^ v278;
  v281 = (((v276 ^ 0x3223F9DF) - 1133726670) ^ ((v276 ^ 0x3A8F165F) - 1262462030) ^ ((v276 ^ 0x2EB70F86) - 1594342807)) - (((v276 ^ 0x21E1F6A9) + 380847137) ^ ((v276 ^ 0xF3F20A84) - 996100082) ^ ((v276 ^ 0x5886C671) + 1876194553)) + 2049509147;
  v282 = ((v281 ^ 0xB6A96413) + 769701827) ^ v281 ^ ((v281 ^ 0xF57B9D01) + 1848790737) ^ ((v281 ^ 0x499B3A47) - 757929577) ^ ((v281 ^ 0x6EFFEF7B) - 172606293);
  v283 = ((v263 ^ 0xEF3D0244) - 605434169) ^ ((v263 ^ 0x56AEB8BC) + 1652192319) ^ ((v263 ^ 0x72B88985) + 1181500680);
  v284 = v280 ^ *(v195 + 4 * (BYTE1(v245) ^ 0xE9u)) ^ *(a40 + 4 * (v246 ^ 0xCDu));
  v285 = ((v284 ^ 0x42A31E37) + 278197014) ^ ((v284 ^ 0x444B2B11) + 377275956) ^ ((v284 ^ 0xAB2027FB) - 115881254);
  v286 = ((v276 ^ 0x612BC8C8) - 278624985) ^ ((v276 ^ 0xD06FFCAA) + 1579200837) ^ ((v276 ^ 0x975FD464) + 420518283);
  v287 = (((v235 ^ 0x7BDDCF81) - 1448269759) ^ ((v235 ^ 0x1CDA9C39) - 827687943) ^ ((v235 ^ 0x55C78F0F) - 2018023217)) - v283 - 1207079361;
  v288 = (((v282 ^ 0x929C7624) - 1506516104) ^ ((v282 ^ 0x7DAB921C) + 1224968016) ^ ((v282 ^ 0x747E37EA) + 1087775418)) + v286;
  v289 = v287 ^ ((v287 ^ 0x6ED6E8F8) - 1482095564) ^ ((v287 ^ 0x9002C797) + 1501375325) ^ ((v287 ^ 0x3FABC3A0) - 153866388) ^ ((v287 ^ 0xF7FFFFFB) + 1048580913) ^ 0xA896FB82;
  v290 = (((v238 ^ 0xE966FD2A) - 2097301344) ^ ((v238 ^ 0x9D1C293C) - 158897014) ^ ((v238 ^ 0xD9B2C6CB) - 1305902209)) - v285 + 1703300203;
  v291 = (2 * (v290 & 0xCBC70B61)) & (v290 ^ 0x7FFEE3FF) ^ v290 & 0xCBC70B61 ^ ((2 * (v290 & 0xCBC70B61)) & 0x94080082 | 0x20210000);
  v292 = (2 * (v290 ^ 0x7FFEE3FF)) & 0xB439E89E ^ 0x94082882 ^ ((2 * (v290 ^ 0x7FFEE3FF)) ^ 0x6873D13C) & (v290 ^ 0x7FFEE3FF);
  v293 = (4 * v291) & 0xB439E89C ^ v291 ^ ((4 * v291) ^ 0x80840000) & v292;
  v294 = (4 * v292) & 0xB439E89C ^ 0x24184886 ^ ((4 * v292) ^ 0xD0E7A278) & v292;
  v295 = (16 * v293) & 0xB439E890 ^ v293 ^ ((16 * v293) ^ 0x2100000) & v294;
  v296 = (16 * v294) & 0xB439E890 ^ 0xB421601E ^ ((16 * v294) ^ 0x439E89E0) & v294;
  v297 = v295 ^ (v295 << 8) & 0xB439E800 ^ ((v295 << 8) ^ 0x31000000) & v296;
  v298 = ((v297 ^ 0x2408E89E) << 16) & 0x34390000 ^ v297 ^ 0x2408E89E ^ (((v297 ^ 0x2408E89E) << 16) ^ 0x689E0000) & ((v296 << 8) & 0x34390000 ^ 0x4110000 ^ ((v296 << 8) ^ 0x39E80000) & v296);
  v299 = (((v236 ^ 0x8BA6C061) + 1577120471) ^ ((v236 ^ 0x691E30) - 707842936) ^ ((v236 ^ 0x71C4187A) - 1537070386)) - v288 - 918206767;
  v300 = ((v279 ^ 0xBDA36C95) + 592618238) ^ ((v279 ^ 0x4FEC351E) - 786564233) ^ ((v279 ^ 0x9341681C) + 229680757);
  v301 = (((v237 ^ 0xDC67D113) - 731738924) ^ ((v237 ^ 0x86A8E8A5) - 1901218458) ^ ((v237 ^ 0x3BC10821) + 868505058)) - v300 + 1157810469;
  v302 = 334846221 * (v299 ^ ((v299 ^ 0x63DD8B40) - 1901625445) ^ ((v299 ^ 0xAF8C29E9) + 1123474740) ^ ((v299 ^ 0x2D2B5C32) - 1068390167) ^ ((v299 ^ 0xF3FFF5BE) + 512033125) ^ 0x7ABCE808);
  v303 = v302 ^ (1513634003 * v289);
  v304 = 1957327205 * (v290 ^ (2 * v298) ^ 0xA6B90B86);
  v305 = v304 - v303;
  v306 = 267071801 * (v301 ^ ((v301 ^ 0x459DD84D) - 341225460) ^ ((v301 ^ 0x47BC68E) - 1437643063) ^ ((v301 ^ 0x6FD29285) - 1041884476) ^ ((v301 ^ 0x7FFFFBFF) - 775195718) ^ 0xF58B1562);
  v307 = v304 + v306;
  v308 = v303 - v307;
  v309 = v302 ^ v306 ^ v305;
  v310 = v308 ^ v307;
  v311 = v309 + v305;
  v312 = v308 + 232144550 + v311;
  v313 = v312 + v309;
  v314 = v313 - v310 - 232144550;
  v315 = v300 + 1213346692 + v314;
  v316 = v283 - v312;
  v317 = v285 - v311 - 44851254 + v314;
  v318 = v288 - v313;
  v319 = *(v45 - 208);
  v320 = *(v45 - 148);
  v321 = **(&off_101353600 + v320 - 13695);
  v322 = **(&off_101353600 + (v320 ^ 0x3A44));
  v323 = *(v322 + (v321 & ((((((v319 & 0xFFFFFFF8) + 778490596) ^ 0xA220168A) + 307753359) ^ ((v319 & 0xFFFFFFF8) + 778490596) ^ ((((v319 & 0xFFFFFFF8) + 778490596) ^ 0x402F6D05) - 262632958) ^ ((((v319 & 0xFFFFFFF8) + 778490596) ^ 0x12F89E8A) - 1567655537) ^ ((((v319 & 0xFFFFFFF8) + 778490596) ^ 0xBF7FFDFE) + 252189435)) & 0xFFFFFFF8 ^ 0x4F8818F8)));
  *(&v324 + 1) = v319 & 0xFFFFFFFFFFFFFFF8;
  *&v324 = v319;
  v325 = v323 + (v324 >> 8);
  v326 = v325 ^ __ROR8__(v323, 61);
  v327 = ((v326 ^ 0x91364DCB68334DBLL) + __ROR8__(v325 ^ 0x91364DCB68334DBLL, 8)) ^ 0x448D6F6CA711D855;
  *(&v324 + 1) = v326 ^ 0x91364DCB68334DBLL;
  *&v324 = v326;
  v328 = v324 >> 61;
  *&v324 = __ROR8__(v327, 8);
  v329 = v327 ^ v328;
  v330 = __ROR8__((v329 + v324) ^ 0xF5F2FED308AA2278, 8);
  v331 = (v329 + v324) ^ 0xF5F2FED308AA2278 ^ __ROR8__(v329, 61);
  v332 = (v331 + v330) ^ 0x67536EC0FB8B549DLL;
  v333 = v332 ^ __ROR8__(v331, 61);
  v334 = (v333 + __ROR8__(v332, 8)) ^ 0xF887455E88108A0CLL;
  v335 = v334 ^ __ROR8__(v333, 61);
  *&v324 = __ROR8__(v334, 8);
  v336 = ((v324 ^ v335) + 2 * (v335 & v324)) ^ 0x24734B65A1E08459;
  v337 = v336 ^ __ROR8__(v335, 61);
  v338 = __ROR8__(v337, 61);
  v339 = __ROR8__(v336, 8) + v337;
  v340 = (v319 + 8) & 0xFFFFFFFFFFFFFFF8;
  v341 = *(v322 + (v321 & ((((2 * v340) & 0xBDBD73D0) + (v340 ^ 0xDEDEB9E8) - 1220827399 - ((2 * (((2 * v340) & 0xBDBD73D0) + (v340 ^ 0xDEDEB9E8))) & 0x6E774DF0)) ^ 0xB73BA6F9)));
  v342 = *(v322 + ((((v319 + 16) & 0xFFFFFFF8) - 555828759) & (v321 ^ 0xA33B48C8) & 0xFFFFFFF8 ^ (((v319 + 16) & 0xFFFFFFF8) - 555828759) & 0xA33B48C8));
  v343 = (v338 ^ __ROR8__(__ROR8__(v339, 44) ^ 0xBDFD1992B0F048A2, 20) ^ 0x4443E435ED5CE0EELL) + __ROR8__(v339 ^ 0x40C9CFEA3CC5CBE1, 8);
  v344 = (v341 + __ROR8__(v340, 8)) ^ 0x91364DCB68334DBLL;
  v345 = v344 ^ __ROR8__(v341, 61);
  v346 = (v345 + __ROR8__(v344, 8)) ^ 0x448D6F6CA711D855;
  v347 = __ROR8__(v346, 8);
  v348 = v346 ^ __ROR8__(v345, 61);
  v349 = (v347 + v348) ^ 0xF5F2FED308AA2278;
  v350 = v349 ^ __ROR8__(v348, 61);
  *&v324 = __ROR8__(v350, 61);
  v351 = (__ROR8__(v349, 8) + v350) ^ 0x67536EC0FB8B549DLL;
  v352 = v351 + v324 - 2 * (v351 & v324);
  v353 = (v352 + __ROR8__(v351, 8)) ^ 0xF887455E88108A0CLL;
  v354 = v353 ^ __ROR8__(v352, 61);
  v355 = (__ROR8__(v353, 8) + v354) ^ 0x24734B65A1E08459;
  v356 = v355 ^ __ROR8__(v354, 61);
  v357 = (v356 + __ROR8__(v355, 8)) ^ 0x40C9CFEA3CC5CBE1;
  v358 = __ROR8__(v357, 8) + (v357 ^ __ROR8__(v356, 61));
  v359 = (v342 + __ROR8__((v319 + 16) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x91364DCB68334DBLL;
  v360 = v359 ^ __ROR8__(v342, 61);
  v361 = (__ROR8__(v359, 8) + v360) ^ 0x448D6F6CA711D855;
  v362 = v361 ^ __ROR8__(v360, 61);
  v363 = (v362 + __ROR8__(v361, 8)) ^ 0xF5F2FED308AA2278;
  *&v324 = __ROR8__(v362, 61);
  LOBYTE(v347) = 8 * (v319 & 7);
  v364 = (v343 ^ 0x6F635C2EE5D7D2C6uLL) >> v347;
  v365 = v358 ^ 0x6F635C2EE5D7D2C6;
  v366 = (((v363 << 56) & 0xF3FFFFFFFFFFFFFFLL) + (v363 ^ v324) + ((v363 >> 8) & 0x258DA46DBFF2D5) + ((v363 << 56) & 0xC00000000000000) + ((v363 >> 8) & 0xDA725B92400D2ALL)) ^ 0x67536EC0FB8B549DLL;
  v367 = v366 ^ __ROR8__(v363 ^ v324, 61);
  v368 = (v367 + __ROR8__(v366, 8)) ^ 0xF887455E88108A0CLL;
  v369 = v368 ^ __ROR8__(v367, 61);
  v370 = (__ROR8__(v368, 8) + v369) ^ 0x24734B65A1E08459;
  v371 = v370 ^ __ROR8__(v369, 61);
  v372 = __ROR8__(v370, 8) + v371;
  *(v45 - 216) = v365 >> v347;
  v373 = (((v372 ^ __ROR8__(v371, 61) ^ 0xC9CFEA3CC5CBE1) + ((v372 ^ 0x40C9CFEA3CC5CBE1) << 56) + ((v372 ^ 0x40C9CFEA3CC5CBE1uLL) >> 8)) ^ 0xF635C2EE5D7D2C6) << (v347 ^ 0x3Cu);
  v374 = v364 + 16 * (v365 << (v347 ^ 0x3Cu));
  v375 = v315;
  v376 = *(v45 - 160) + 4 * BYTE1(v315);
  v377 = v376 + 4 * (-148095686 - (((BYTE1(v315) ^ 0xF358BC8923C8191) - 0xF358BC89AEF4357) ^ ((BYTE1(v315) ^ 0x2E4A2D13E8A9CC49) - 0x2E4A2D13E07A0E8FLL) ^ ((BYTE1(v315) ^ 0x217FA6DB7A954DD8) - 0x217FA6DB72468F1ELL))) + 4 * BYTE1(v317);
  LODWORD(v363) = v316 + 666208170;
  v378 = v377 + 4 * (-2527084629 - (((BYTE1(v317) ^ 0x2F6DCCB15CAA89B6) - 0x2F6DCCB1CA0AC9E3) ^ ((BYTE1(v317) ^ 0xA7628A20DEFA0D5) + 0x3589D75D64B01F80) ^ ((BYTE1(v317) ^ 0x251BE41351452963) + 0x1AE41BEC381A96CALL))) + 4 * ((v316 - 30806) >> 8);
  v379 = ((v316 - 30806) >> 8) ^ 0x594638C7u;
  v380 = v318 + 1361836330;
  v381 = HIDWORD(a27) ^ HIDWORD(a28) ^ *(*(v45 - 224) + 4 * BYTE3(v363)) ^ *(a38 + 4 * ((v318 + 1361836330) >> 16)) ^ *(v376 - 0x539289D27294892ELL);
  LODWORD(v376) = *(a32 + (BYTE1(v374) ^ 0x26)) ^ 0x1A;
  v382 = *(v45 - 168);
  HIDWORD(v410) = v376 << 16;
  LODWORD(v411) = ((BYTE3(v374) ^ 0x52) - 58) ^ *(a33 + (BYTE3(v374) ^ 0x52) - ((2 * (BYTE3(v374) ^ 0x52)) & 0xF8) + 124);
  HIDWORD(a9) = (*(a31 + (v364 ^ 0xE8)) ^ v364 ^ 0xFFFFFFF9 ^ ((v364 ^ 0xFFFFFFF9) - 6) ^ 0xA6) << 24;
  LODWORD(v410) = ((*(a30 + (BYTE2(v374) ^ 0xC2)) ^ BYTE2(v374)) ^ 0x10) << 8;
  v383 = v381 ^ *(v382 + 4 * v317 - 0x1D9747D13ECC41EDLL) ^ ((v376 << 16) - ((v376 << 17) & 0x14E0000) + 1151804552) ^ v410 ^ v411 ^ HIDWORD(a9) ^ 0xAD0670AE;
  v384 = v383 + a17 - 2 * (v383 & a17);
  HIDWORD(v414) = *(a38 + 4 * BYTE2(v375));
  LODWORD(v413) = *(a31 + (BYTE4(v374) ^ 0xE9));
  v385 = *(v45 - 224);
  LODWORD(v414) = *(v385 + 4 * HIBYTE(v380));
  HIDWORD(v413) = *(a32 + (BYTE5(v374) ^ 0xE9));
  LODWORD(v415) = *(v377 - 0x539289D27294892ELL);
  LODWORD(v412) = *(a30 + (BYTE6(v374) ^ 0x56));
  HIDWORD(v412) = *(v382 + 4 * v363 - 0x1D9747D13ECC41EDLL);
  HIDWORD(v411) = *(a33 + (HIBYTE(v374) ^ 0x81));
  v386 = *(v45 - 216);
  v387 = v386 + 16 * v373;
  LOBYTE(v319) = v375;
  HIDWORD(v418) = *(v385 + 4 * HIBYTE(v375));
  HIDWORD(v415) = *(a31 + (v386 ^ 0x23));
  HIDWORD(a17) = *(a38 + 4 * BYTE2(v317));
  LODWORD(v416) = *(a32 + (BYTE1(v387) ^ 0x2ELL));
  HIDWORD(v416) = *(v378 - 0x539289D27294892ELL);
  LODWORD(v418) = *(a30 + (BYTE2(v387) ^ 0x6FLL));
  HIDWORD(a22) = *(v382 + 4 * v380 - 0x1D9747D13ECC41EDLL);
  v421 = (v386 + 16 * v373) >> 24;
  LODWORD(v422) = *(a33 + (v421 ^ 0xF2));
  v388 = *(v385 + 4 * HIBYTE(v317));
  LODWORD(v372) = *(a31 + (BYTE4(v387) ^ 0xE8));
  LODWORD(v363) = *(a38 + 4 * BYTE2(v363));
  LODWORD(v385) = *(a32 + (BYTE5(v387) ^ 0xA5));
  *(v45 - 160) = BYTE1(v380);
  v426 = v378 + 4 * (-1497774279 - (((v379 ^ 0x3E81D158D1436841) + 0x417E2EA72EBC97BFLL) ^ ((v379 ^ 0x4C9EA65A59B9F65) + 0x7B36159A5A64609BLL) ^ ((v379 ^ 0x3A483B3D2D9ECFE3) - 0x3A483B3D2D9ECFE3))) + 4 * BYTE1(v380);
  LODWORD(v373) = *(a30 + (BYTE6(v387) ^ 0x8ALL));
  LODWORD(v364) = *(v382 + 4 * v319 - 0x1D9747D13ECC41EDLL);
  v389 = *(a33 + (HIBYTE(v387) ^ 0x7F));
  v390 = *(v45 - 148);
  v391 = *(&off_101353600 + v390 - 14584) - 12;
  v392 = *(v426 - 0x539289D27294892ELL);
  v393 = v384 ^ 0xC0A77D4;
  v394 = *(v45 - 136);
  *(v394 + HIDWORD(v427)) = v391[v384 ^ 0x7BLL] ^ v384 ^ 0xEF;
  v395 = *(&off_101353600 + (v390 ^ 0x3934)) - 4;
  LODWORD(v379) = (v395[BYTE1(v393)] >> 4) | (16 * v395[BYTE1(v393)]);
  *(v394 + v430) = v379 ^ 0xA4 ^ (4 * v379) & 0x78;
  LODWORD(v430) = v384;
  v396 = *(&off_101353600 + (v390 ^ 0x38E8)) - 8;
  **(v45 - 208) = v396[HIBYTE(v384) ^ 0xBELL] ^ 0x9A;
  LODWORD(v365) = ((HIBYTE(v387) ^ 3) - 58) ^ v389;
  HIDWORD(v427) = (v373 ^ BYTE6(v387) ^ 0xA6) << 8;
  *(v45 - 208) = v365;
  LODWORD(v373) = HIDWORD(a27) ^ a17 ^ HIDWORD(a28) ^ v363 ^ v388 ^ v364 ^ (((v385 ^ 0xD8) << 16) - (((v385 ^ 0xD8) << 17) & 0x3C0000) - 316799297) ^ HIDWORD(v427) ^ v365 ^ ((v372 ^ HIDWORD(v387) ^ 0xFFFFFFF9 ^ ((HIDWORD(v387) ^ 0xFFFFFFF9) - 6) ^ 0xA6) << 24) ^ v392;
  *(v394 + v427) = v391[v373 ^ 0xD2] ^ v373 ^ 0xAF;
  *(v394 + v429) = v396[BYTE3(v373) ^ 0xA8] ^ 0xE;
  v397 = v394;
  LODWORD(v365) = v413 ^ HIDWORD(v374) ^ 0xFFFFFFF8 ^ ((HIDWORD(v374) ^ 0xFFFFFFF8) - 6);
  LODWORD(v394) = v412 ^ BYTE6(v374) ^ 0x35;
  v398 = ((HIBYTE(v374) ^ 0xFD) - 58) ^ HIDWORD(v411);
  v399 = (HIDWORD(v413) ^ 0x17u) << 16;
  v400 = (v365 ^ 0xFFFFFFFB) << 24;
  LODWORD(v365) = HIDWORD(a27) ^ HIDWORD(a28) ^ a37 ^ v414 ^ HIDWORD(v414) ^ HIDWORD(v412) ^ (v399 - (((HIDWORD(v413) ^ 0x17) << 17) & 0xC60000) + 1902332001) ^ (v394 << 8) ^ v398 ^ v400 ^ v415;
  LODWORD(v319) = v395[((WORD2(a27) ^ WORD2(a28) ^ a37 ^ v414 ^ WORD2(v414) ^ WORD2(v412) ^ 0x4861 ^ (v394 << 8) ^ v398 ^ v400 ^ v415 ^ 0x1C86) >> 8) ^ 0x5FLL];
  *(v397 + v432) = ((v319 >> 4) | (16 * v319)) ^ 0xC5 ^ (4 * ((v319 >> 4) | (16 * v319))) & 0x78;
  v401 = *(&off_101353600 + (v390 ^ 0x3BD4)) - 4;
  *(v397 + v436) = (v401[BYTE2(v393) ^ 0x40] + (BYTE2(v393) ^ 0x15)) ^ 0x11;
  LODWORD(v319) = HIDWORD(v415) ^ *(v45 - 216) ^ 0x32 ^ ((*(v45 - 216) ^ 0x32) - 6) ^ 0xE3;
  v402 = (v319 - 2 * (v319 & 0xF)) << 24;
  v403 = (v416 ^ 0xAF) << 16;
  v404 = (v402 - 1895825408);
  LODWORD(v319) = HIDWORD(v418) ^ HIDWORD(a17) ^ v403 ^ v404 ^ 0xECD91154 ^ HIDWORD(v416);
  v405 = (v418 ^ BYTE2(v387) ^ 0xF8) << 8;
  v406 = v422 ^ ((v421 ^ 0x8E) - 58) ^ 1;
  v407 = HIDWORD(a27) ^ a17 ^ a9 ^ (v406 - ((2 * v406) & 0xB6) - 1948269477) ^ HIDWORD(a22) ^ ((v405 & 0x9C00 ^ v319 & 0xB5289C75 ^ 0xDAD7E38B) & (v319 & 0x4AD7638A ^ v405 & 0x6300 ^ 0xF0D7A559) | (v405 & 0x9C00 ^ v319 & 0xB5289C75) & 0x5281824);
  LODWORD(v319) = v401[((v407 ^ 0x60B3C8C9) >> 16) ^ 0xBFLL];
  LODWORD(v319) = (v319 ^ ((v407 ^ 0x60B3C8C9) >> 16) ^ 0xFFFFFFEA) + 2 * (v319 & (((v407 ^ 0x60B3C8C9) >> 16) ^ 0xFFFFFFEA));
  *(v397 + v428) = v319 - ((2 * v319) & 0x20) - 112;
  *(v397 + HIDWORD(v428)) = (v401[((v373 ^ 0x68FDDC8F) >> 16) ^ 0xDFLL] + (((v373 ^ 0x68FDDC8F) >> 16) ^ 0x8A)) ^ 0x42;
  *(v397 + *(v45 - 252)) = v396[HIBYTE(v407) ^ 0x70] ^ 0xB9;
  *(v397 + HIDWORD(v430)) = v396[BYTE3(v365) ^ 0x77] ^ 0x61;
  LODWORD(v396) = v395[((v373 ^ 0x5278) >> 8) ^ 0xBBLL];
  *(v397 + v435) = ((v396 >> 4) | (16 * v396)) ^ 0x4E ^ (4 * ((v396 >> 4) | (16 * v396))) & 0x78;
  *(v397 + *(v45 - 248)) = (v401[((v365 ^ 0x3846B188) >> 16) ^ 0x19] + (((v365 ^ 0x3846B188) >> 16) ^ 0x4C)) ^ 0x1E;
  *(v397 + v433) = v365 ^ 0x88 ^ v391[v365] ^ 0xFE;
  *(v397 + v434) = v407 ^ 0x5B ^ v391[v407 ^ 0xB1];
  LODWORD(v396) = v395[((v407 ^ 0xC8C9) >> 8) ^ 0x5ALL];
  *(v45 - 160) = v426 + 4 * (-1629925616 - (((*(v45 - 160) ^ 0x19FF7C909988BE12) - 0x19FF7C90F8AE0EE2) ^ ((*(v45 - 160) ^ 0xE1D27821BCDB233) + 0x71E2D87D8514FD3DLL) ^ ((*(v45 - 160) ^ 0x17E25B1282450C21) + 0x681DA4ED1C9C432FLL)));
  LODWORD(v394) = (((HIDWORD(v429) ^ 0xF8D89AC9) + 120022327) ^ ((HIDWORD(v429) ^ 0x58958D0E) - 1486195982) ^ ((HIDWORD(v429) ^ 0x90F62C20) + 1862915040)) + 2130347124;
  LODWORD(v364) = (v394 ^ 0x21B0B7F3) & (2 * (v394 & 0xB1C0B783)) ^ v394 & 0xB1C0B783;
  LODWORD(v319) = ((2 * (v394 ^ 0x40B1D4F5)) ^ 0xE2E2C6EC) & (v394 ^ 0x40B1D4F5) ^ (2 * (v394 ^ 0x40B1D4F5)) & 0xF1716376;
  LODWORD(v364) = (v319 ^ 0xC0004204) & (4 * v364) ^ v364;
  LODWORD(v319) = ((4 * (v319 ^ 0x11112112)) ^ 0xC5C58DD8) & (v319 ^ 0x11112112) ^ (4 * (v319 ^ 0x11112112)) & 0xF1716374;
  LODWORD(v364) = (v319 ^ 0xC1410150) & (16 * v364) ^ v364;
  LODWORD(v319) = ((16 * (v319 ^ 0x30306226)) ^ 0x17163760) & (v319 ^ 0x30306226) ^ (16 * (v319 ^ 0x30306226)) & 0xF1716370;
  LODWORD(v364) = v364 ^ 0xF1716376 ^ (v319 ^ 0x11102300) & (v364 << 8);
  LODWORD(v394) = v394 ^ (2 * ((v364 << 16) & 0x71710000 ^ v364 ^ ((v364 << 16) ^ 0x63760000) & (((v319 ^ 0xE0614016) << 8) & 0x71710000 ^ (((v319 ^ 0xE0614016) << 8) ^ 0x71630000) & (v319 ^ 0xE0614016) ^ 0x100000)));
  *(v397 + *(v45 - 244)) = ((v396 >> 4) | (16 * v396)) ^ 0x17 ^ (4 * ((v396 >> 4) | (16 * v396))) & 0x78;
  LODWORD(v396) = (((v394 ^ 0x3A7BEAE6) + 1694326674) ^ ((v394 ^ 0x94314AC6) - 893911118) ^ ((v394 ^ 0x3F88D14F) + 1628333113)) + 765632033;
  LODWORD(v364) = v431 ^ (v396 < 0xFCE7623A);
  v408 = v396 < *(v45 - 228);
  if (v364)
  {
    v408 = v431;
  }

  LODWORD(v423) = HIDWORD(a27) ^ HIDWORD(a28);
  return (*(*(v45 - 120) + 8 * ((139 * v408) ^ v390)))(v431, v398, v402, v399, v403, v404, v405, v390, a9, v410, v411, v412, v413, v414, v415, v416, a17, v418, v421, v422, v423, a22, v426, v427, v428, v429, a27, a28, v430, a30, a31, a32);
}

uint64_t sub_100D16AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v58 = STACK[0xD90];
  *(v57 - 240) = a57;
  *(v57 - 216) = v58 + a57;
  *(v57 - 208) = a57 - 1201534519;
  *(v57 - 232) = -1201535199 - a57;
  *(v57 - 228) = a57 + 1451516474;
  *(v57 - 224) = a57;
  *(v57 - 220) = a57 ^ 0xB86209CC;
  v59 = STACK[0x8B0];
  v60 = (*(STACK[0x8B0] + 254368))(v57 - 240);
  return (*(v59 + 8 * *(v57 - 204)))(v60);
}

uint64_t sub_100D16BFC(int a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v22 = v21;
  STACK[0x640] = v15;
  v24 = *(v12 + (a6 & v15));
  v25 = (v9 ^ 0x7FECB8FBABFBDE76) + v19 + ((2 * v9) & 0x1CEC);
  v26 = v25 + 1409556874;
  v27 = *(v25 + 0x3A6FFDA81AE70775);
  v28 = (v8 ^ 0xC6F7EC5ED6DDF68BLL) + v19 + ((2 * v8) & 0xD16);
  v29 = v28 + 690096501;
  LODWORD(v28) = *(v28 - 0xC9B35BB0FFB10A0);
  v30 = (76 * v13) ^ a1;
  STACK[0x5F8] = (a7 + 395376096);
  v31 = v24 + v13;
  v32 = qword_101362A48;
  LODWORD(STACK[0x610]) = a7;
  v33 = (a7 + 964128095) ^ v32;
  v34 = *(v17 + 2792) ^ a8;
  v35 = v30 ^ *(v34 + (v33 & (v31 + v15)));
  v36 = v15 + 2;
  LODWORD(v28) = ((v35 ^ *(v34 + (v33 & (v31 + v36))) ^ 0x70) << 16) | (((76 * v29) ^ v28 ^ *(v34 + (v33 & (v24 + v29 + v15))) ^ *(v34 + (v33 & (v24 + v29 + v36))) ^ 0x70) << 8);
  v37 = *(*v21 + (*v20 & v15)) + a5;
  LODWORD(v28) = ((v27 ^ (76 * v26) ^ *(v34 + (v33 & (v24 + v26 + v15))) ^ *(v34 + (v33 & (v24 + v26 + v15 + 2))) ^ 0xD82767) & ~v28 | v28 & 0x27D800) << 8;
  LODWORD(v28) = ((v14 ^ (76 * a5) ^ *(v34 + ((v37 + v15) & (v32 ^ v18))) ^ *(v34 + ((v37 + v15 + 2) & (v32 ^ v18))) ^ 0x249A987A) & (v28 ^ 0x34BD8DFF) | v28 & 0xDB656700) ^ 0xFCBF9F0A;
  v38 = STACK[0x618];
  *(*STACK[0x618] + 140) = v28;
  v39 = v16 + 1645 * a4 - 2696 * (((12744711 * (v16 + 1645 * a4)) >> 32) >> 3);
  v40 = 1645 * v11 + 2113825 - 2696 * (((12744711 * (1645 * v11 + 2113825)) >> 32) >> 3);
  v41 = (v40 ^ 0xAEDCF5BDF5D4EBFELL) + v19 + ((2 * v40) & 0x17FC);
  LODWORD(v32) = v41 + 170595330;
  v42 = *(v41 + 0xB7FC0E5D10DF9EDLL);
  v55 = 1645 * v10 + 2113825 - 2696 * (((12744711 * (1645 * v10 + 2113825)) >> 32) >> 3);
  v43 = (v39 ^ 0xDFB6ED97BFF9BBEDLL) + v19 + ((2 * v39) & 0x17DA);
  LODWORD(v34) = *(v43 - 0x255A36F3F916D602);
  v44 = v43 + 1074152467;
  v45 = (v55 ^ 0x7B3EEFFF572B9FFBLL) + v19 + ((2 * v55) & 0x1FF6);
  v46 = v45 - 1462476795;
  v47 = *(v45 + 0x3F1DC6A46FB745F0);
  v48 = *(*v21 + (*v20 & 0xC6917C3C));
  LODWORD(v45) = 1645 * ((((a4 >> 1) & 0x7F8000) + 42106880) >> 15);
  v49 = (v45 - 2696 * ((1593089 * v45) >> 32));
  v50 = (v49 ^ 0xBFBFFD4FFDB1E29DLL) + v19 + ((2 * v49) & 0x53A);
  v51 = (76 * v32) ^ v42;
  v52 = *(v17 + 2792) ^ a8;
  LODWORD(v50) = ((v51 ^ *(v52 + ((v48 + v32 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v52 + ((v48 + v32 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v50 + 99)) ^ *(v50 - 0x56346AC36CEFCB2) ^ *(v52 + ((v48 + v50 + 38673763 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v52 + ((v48 + v50 + 38673763 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v50) = (v47 ^ (76 * v46) ^ *(v52 + ((v48 + v46 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v52 + ((v48 + v46 + v15 + 2) & (qword_101362A48 ^ 0x21E69720))) ^ 0x3DB76E) & ~v50 | v50 & 0xC24800;
  *(*v38 + 220) = ((v34 ^ (76 * v44) ^ *(v52 + ((v48 + v44 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v52 + ((v48 + v44 + v15 + 2) & (qword_101362A48 ^ 0x21E69720))) ^ 0x76CC2338) & ((v50 << 8) ^ 0x4A7A31FF) | (v50 << 8) & 0x8933DC00) ^ 0x7FFF3F48;
  v53 = 1645 * BYTE1(a3) + 2113825 - 2696 * (((12744711 * (1645 * BYTE1(a3) + 2113825)) >> 32) >> 3);
  LODWORD(v55) = 1645 * BYTE2(a3) + 2103041 - 5392 * (((1593089 * (1645 * BYTE2(a3) + 2103041)) >> 32) >> 1);
  if (v55 >= 0xA88)
  {
    v55 = (v55 - 2696);
  }

  else
  {
    v55 = v55;
  }

  v56 = 1645 * (((a3 >> 23) & 0xCE) + (HIBYTE(a3) ^ 0x2873D567)) + 265157190;
  v57 = ((v56 % 0xA88) ^ 0x2FF67EACFFF75FCELL) + v19 + ((2 * (v56 % 0xA88)) & 0x1F9C);
  v54 = 1645 * a3 + 2113825 - 2696 * (((12744711 * (1645 * a3 + 2113825)) >> 32) >> 3);
  v58 = (v54 ^ 0x7AFFFFBDFFDFFFFBLL) + v19 + ((2 * v54) & 0x1FF6);
  v59 = (v55 ^ 0xF7E742A657DEB5FDLL) + v19 + ((2 * v55) & 0xAFBD6BFALL);
  v60 = v59 - 1474213373;
  v61 = *(*v21 + (*v20 & 0xC6917C3C));
  v62 = (v53 ^ 0x47DCBFFE) + ((2 * v53) & 0x1FFC) + v19 - 1205649406;
  v63 = *((v53 ^ 0xDC3DFBDF47DCBFFELL) + ((2 * v53) & 0x1FFC) + v19 - 0x21E1453B80F9DA13);
  v64 = qword_101362A48 ^ 0x21E69720;
  LODWORD(v59) = (((76 * (v57 + 50)) ^ *(v57 - 0x7599C809391479E3) ^ *((qword_101362AE8 ^ a8) + ((v61 + v57 + 565298 - 963544004) & v64)) ^ *((qword_101362AE8 ^ a8) + ((v61 + v57 + 565298 + v36) & v64)) ^ 0x70) << 16) | (((76 * v60) ^ *(v59 - 0x3D8A8C0290FBD012) ^ *((qword_101362AE8 ^ a8) + ((v61 + v60 - 963544004) & v64)) ^ *((qword_101362AE8 ^ a8) + ((v61 + v60 + v36) & v64)) ^ 0x70) << 8);
  LODWORD(v59) = ((v63 ^ (76 * v62) ^ *((qword_101362AE8 ^ a8) + ((v61 + v62 - 963544004) & v64)) ^ *((qword_101362AE8 ^ a8) + ((v61 + v62 + v36) & v64)) ^ 0x244C89) & ~v59 | v59 & 0xDBB300) << 8;
  *(*v38 + 148) = ((*(v58 + 0x3F5CB6E5C702E5F0) ^ (76 * (v58 + 5)) ^ *((qword_101362AE8 ^ a8) + ((v61 + v58 + 2097157 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ a8) + ((v61 + v58 + 2097157 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x7ACFB76C) & (v59 ^ 0x5B9346FF) | v59 & 0x85304800) ^ 0x7ECFFF1C;
  v65 = 1645 * HIBYTE(a2) + 2111129 - 2696 * (((12744711 * (1645 * HIBYTE(a2) + 2111129)) >> 32) >> 3);
  v66 = 1645 * BYTE1(a2) + 2113825 - 2696 * (((12744711 * (1645 * BYTE1(a2) + 2113825)) >> 32) >> 3);
  v67 = 1645 * a2 + 2113825 - 2696 * (((12744711 * (1645 * a2 + 2113825)) >> 32) >> 3);
  v68 = (v65 ^ 0xF712DCBB0F9FFCBBLL) + v19 + ((2 * v65) & 0x1976);
  v69 = v68 - 262143163;
  v70 = *(v68 - 0x3CB6261748BD16D0);
  v71 = 1645 * BYTE2(a2) + 2111129 - 2696 * (((12744711 * (1645 * BYTE2(a2) + 2111129)) >> 32) >> 3);
  v72 = (v66 ^ 0x6BD7BFAA6E7FBF47) + v19 + ((2 * v66) & 0x1E8E);
  v73 = v72 - 1853865799;
  LODWORD(v57) = *(v72 + 0x4E84F6F9586326A4);
  v74 = (v67 ^ 0x59FCDDFFBBF747A9) + v19 + ((2 * v67) & 0xF52);
  v75 = (v71 ^ 0x1DFFBFEF3FDCF77DLL) + v19 + ((2 * v71) & 0xEFA);
  v76 = *(*v21 + (*v20 & 0xC6917C3C));
  v77 = (76 * v69) ^ v70;
  v78 = qword_101362A48 ^ 0x21E69720;
  LODWORD(v75) = ((v77 ^ *((qword_101362AE8 ^ a8) + ((v76 + v69 - 963544004) & v78)) ^ *((qword_101362AE8 ^ a8) + (((v76 + v69 + v36) - 0x3625272CCD3A6E20 * (qword_101362A48 ^ 0xDB653AB621E69720) - 0x3625272CCD3A6E20) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ 0x70) << 16) | (((76 * (v75 - 125)) ^ *(v75 - 0x63A3094B78FA1192) ^ *((qword_101362AE8 ^ a8) + ((v76 + v75 - 1071445885 - 963544004) & v78)) ^ *((qword_101362AE8 ^ a8) + ((v76 + v75 - 1071445885 + v36) & v78)) ^ 0x70) << 8);
  LODWORD(v75) = ((v57 ^ (76 * v73) ^ *((qword_101362AE8 ^ a8) + ((v76 + v73 - 963544004) & v78)) ^ *((qword_101362AE8 ^ a8) + ((v76 + v73 + v36) & v78)) ^ 0x60AD87) & ~v75 | v75 & 0x9F5200) << 8;
  *(*v38 + 56) = ((v75 ^ 0x44208FF) & (*(v74 + 0x605FD8A40AEB9E42) ^ (76 * (v74 + 87)) ^ *((qword_101362AE8 ^ a8) + ((v76 + v74 + 1141422167 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ a8) + ((v76 + v74 + 1141422167 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x64E7BDEA) | v75 & 0x9B184200) ^ 0x64EFFF9A;
  LODWORD(v75) = 1645 * (BYTE2(LODWORD(STACK[0x578])) ^ 0xE4) + 2113825;
  v79 = v75 - 2696 * (((12744711 * v75) >> 32) >> 3);
  v80 = (v79 ^ 0xCFFF36F2FBFFBFBFLL) + v19 + ((2 * v79) & 0x1F7E);
  LODWORD(v67) = v80 + 67125313;
  v81 = *(v80 - 0x15A2804F351CD9D4);
  LODWORD(v80) = 1645 * (LODWORD(STACK[0x578]) ^ 7) + 2113825;
  v82 = v80 - 2696 * (((12744711 * v80) >> 32) >> 3);
  LODWORD(v74) = 1645 * (((LODWORD(STACK[0x578]) >> 23) & 0xA ^ 2) + (HIBYTE(LODWORD(STACK[0x578])) ^ 0x56E));
  v83 = (v74 - 2696 * ((1593089 * v74) >> 32));
  v84 = (v83 ^ 0xFF63CFF7FF8FF8EFLL) + v19 + ((2 * v83) & 0x11DE);
  v85 = (v82 ^ 0xFEFFFB75DD675F7BLL) + v19 + ((2 * v82) & 0x1EF6);
  v86 = *(*v21 + (*v20 & 0xC6917C3C));
  v87 = *(v85 - 0x44A344D216847990);
  LODWORD(v57) = v85 + 580427909;
  v88 = 1645 * (BYTE1(LODWORD(STACK[0x578])) ^ 5) + 2113825;
  v89 = v88 - 2696 * (((12744711 * v88) >> 32) >> 3);
  v90 = (v89 ^ 0xF9B46BBA8AF96377) + v19 + ((2 * v89) & 0x6EE);
  v91 = qword_101362A48 ^ 0x21E69720;
  LODWORD(v85) = (((76 * (v84 + 17)) ^ *(v84 - 0x4507195438AD1304) ^ *((qword_101362AE8 ^ a8) + ((v86 + v84 + 7341841 + v36) & v91)) ^ *((qword_101362AE8 ^ a8) + (((v86 + v84 + 7341841 - 963544004) + 0x2FD1B6E47B6DC769 * (qword_101362A48 ^ 0xDB653AB621E69720) + 0x2FD1B6E47B6DC769) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ 0x70) << 16) | (((76 * v67) ^ v81 ^ *((qword_101362AE8 ^ a8) + ((v86 + v67 - 963544004) & v91)) ^ *((qword_101362AE8 ^ a8) + ((v86 + v67 + v36) & v91)) ^ 0x70) << 8);
  LODWORD(v85) = ((*(v90 - 0x3F57B516C4167D8CLL) ^ (76 * (v90 - 119)) ^ *((qword_101362AE8 ^ a8) + ((v86 + v90 + 1963367561 - 963544004) & v91)) ^ *((qword_101362AE8 ^ a8) + ((v86 + v90 + 1963367561 + v36) & v91)) ^ 0xB1B520) & (v85 ^ 0xF7FDFF) | v85 & 0x4E4A00) << 8;
  *(*v38 + 24) = ((v87 ^ (76 * v57) ^ *((qword_101362AE8 ^ a8) + ((v86 + v57 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ a8) + ((v86 + v57 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xB613F2AA) & (v85 ^ 0xE2AAEFF) | v85 & 0x49EC0D00) ^ 0xB7B7F2DA;
  LODWORD(v85) = 1645 * (BYTE2(LODWORD(STACK[0x570])) ^ 0xC5) + 2113825;
  v92 = v85 - 2696 * (((12744711 * v85) >> 32) >> 3);
  LODWORD(v85) = 1645 * (LODWORD(STACK[0x570]) ^ 0x81) + 2113825;
  v93 = v85 - 2696 * (((12744711 * v85) >> 32) >> 3);
  LODWORD(v85) = 1645 * (HIBYTE(LODWORD(STACK[0x570])) ^ 0xCD) + 2113825;
  v94 = v85 - 2696 * (((12744711 * v85) >> 32) >> 3);
  v95 = (v94 ^ 0xFB6B77EEBB3AFFFFLL) + 2 * v94 + v19;
  v96 = v95 + 1153761281;
  v97 = *(v95 - 0x410EC14AF4581A14);
  LODWORD(v95) = 1645 * (BYTE1(LODWORD(STACK[0x570])) ^ 0xAE) + 2113825;
  v98 = v95 - 2696 * (((12744711 * v95) >> 32) >> 3);
  v99 = (v98 ^ 0x7CBA7FEBF5FBCFDFLL) + v19 + ((2 * v98) & 0x1FBE);
  LODWORD(v67) = v99 + 168046625;
  v100 = *(v99 + 0x3DA236B7D0E7160CLL);
  v101 = (v92 ^ 0x75FBBDAFB7FF7F97) + v19 + ((2 * v92) & 0x1F2E);
  v102 = v101 + 1207992425;
  v103 = *(v101 + 0x4460F8F40EE36654);
  v104 = (v93 ^ 0x55B357336FBBECFDLL) + v19 + ((2 * v93) & 0x19FA);
  LODWORD(v90) = *(*v21 + (*v20 & 0xC6917C3C));
  LODWORD(v93) = *(v104 + 0x64A95F705726F8EELL);
  LODWORD(v92) = v104 - 1874586877;
  v105 = qword_101362A48 ^ 0x21E69720;
  LODWORD(v104) = (((76 * v96) ^ v97 ^ *((qword_101362AE8 ^ a8) + ((v90 + v96 - 963544004) & v105)) ^ *((qword_101362AE8 ^ a8) + ((v90 + v96 + v36) & v105)) ^ 0x70) << 16) | (((76 * v102) ^ v103 ^ *((qword_101362AE8 ^ a8) + ((v90 + v102 - 963544004) & v105)) ^ *((qword_101362AE8 ^ a8) + ((v90 + v102 + v36) & v105)) ^ 0x70) << 8);
  LODWORD(v104) = ((v100 ^ (76 * v67) ^ *((qword_101362AE8 ^ a8) + ((v90 + v67 - 963544004) & v105)) ^ *((qword_101362AE8 ^ a8) + ((v90 + v67 + v36) & v105)) ^ 0x344898) & ~v104 | v104 & 0xCBB700) << 8;
  *(*v38 + 152) = ((v104 ^ 0x31505FF) & (v93 ^ (76 * v92) ^ *((qword_101362AE8 ^ a8) + ((v90 + v92 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ a8) + ((v90 + v92 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x271DCD60) | v104 & 0xD8E23200) ^ 0x375DED10;
  LODWORD(v84) = 1645 * (BYTE1(LODWORD(STACK[0x4F8])) ^ 9) + 2113825;
  v106 = v84 - 2696 * (((12744711 * v84) >> 32) >> 3);
  LODWORD(v67) = 1645 * (HIBYTE(LODWORD(STACK[0x4F8])) ^ 0xDE) + 2113825;
  v107 = v67 - 2696 * (((12744711 * v67) >> 32) >> 3);
  LODWORD(v104) = 1645 * (BYTE2(LODWORD(STACK[0x4F8])) ^ 0xF6) + 2113825;
  v108 = v104 - 2696 * (((12744711 * v104) >> 32) >> 3);
  v109 = (v106 ^ 0x7D3FB8EEBD7F34EFLL) + v19 + ((2 * v106) & 0x9DE);
  v110 = v109 + 1115736849;
  v111 = *(v109 + 0x3D1CFDB50963B0FCLL);
  v112 = (v107 ^ 0xD3F6FA3FFEDFABAFLL) + v19 + ((2 * v107) & 0x175E);
  LODWORD(v107) = *(*v21 + (*v20 & 0xC6917C3C));
  v113 = (v108 ^ 0xFFBEEFF755EF7ED3) + v19 + ((2 * v108) & 0x1DA6);
  LODWORD(v90) = v113 - 1441758931;
  LODWORD(v93) = 1645 * (LODWORD(STACK[0x4F8]) ^ 0xAA) + 2113825;
  v114 = v93 - 2696 * (((12744711 * v93) >> 32) >> 3);
  LODWORD(v93) = qword_101362A48 ^ 0x21E69720;
  LODWORD(v112) = (((76 * (v112 + 81)) ^ *(v112 - 0x199A439C37FCC5C4) ^ *((qword_101362AE8 ^ a8) + ((v107 + v112 + 18895953 - 963544004) & v93)) ^ *((qword_101362AE8 ^ a8) + ((v107 + v112 + 18895953 + v36) & v93)) ^ 0x70) << 16) | (((76 * v90) ^ *(v113 - 0x456239538F0C98E8) ^ *((qword_101362AE8 ^ a8) + ((v107 + v90 - 963544004) & v93)) ^ *((qword_101362AE8 ^ a8) + ((v107 + v90 + v36) & v93)) ^ 0x70) << 8);
  v115 = (v114 ^ 0xEEFFCBFDFFE377FFLL) + 2 * (v114 & 0x7FF) + v19;
  LODWORD(v112) = ((v111 ^ (76 * v110) ^ *((qword_101362AE8 ^ a8) + ((v107 + v110 - 963544004) & v93)) ^ *((qword_101362AE8 ^ a8) + ((v107 + v110 + v36) & v93)) ^ 0xE44F78) & (v112 ^ 0xE5EFFF) | v112 & 0x1BB000) << 8;
  LODWORD(v112) = ((*(v115 - 0x34A3155A39009214) ^ (76 * (v115 + 1)) ^ *((qword_101362AE8 ^ a8) + ((v107 + v115 + 1869825 - 963544004) & v93)) ^ *((qword_101362AE8 ^ a8) + ((v107 + v115 + 1869825 + v36) & v93)) ^ 0x33A5FC37) & (v112 ^ 0x1BE0F6FF) | v112 & 0xCC5A0300) ^ 0xF7EFFC47;
  *(*v38 + 332) = 0;
  *(*v38 + 332) = v112 - *(*v38 + 332);
  LODWORD(v112) = 1645 * (BYTE1(LODWORD(STACK[0x56C])) ^ 0x93) + 2113825;
  v116 = v112 - 2696 * (((12744711 * v112) >> 32) >> 3);
  v117 = (v116 ^ 0x7AFFDC7EFEEDF5EFLL) + v19 + ((2 * v116) & 0xBDE);
  LODWORD(v107) = *(v117 + 0x3F5CDA24C7F4EFFCLL);
  v118 = v117 + 17959441;
  LODWORD(v117) = 1645 * (HIBYTE(LODWORD(STACK[0x56C])) ^ 0x51) + 2113825;
  v119 = v117 - 2696 * (((12744711 * v117) >> 32) >> 3);
  v120 = (v119 ^ 0x32537DF76BDFF3F8) + ((2 * v119) & 0x7F0) + v19;
  v121 = *(*v21 + (*v20 & 0xC6917C3C));
  LODWORD(v93) = 1645 * (BYTE2(LODWORD(STACK[0x56C])) ^ 0x77) + 2113825;
  v122 = v93 - 2696 * (((12744711 * v93) >> 32) >> 3);
  v123 = (v122 ^ 0x933EA77F9BE9FFFDLL) + v19 + ((2 * v122) & 0x1FFA);
  LODWORD(v90) = v123 + 1679163395;
  v124 = *(v123 + 0x271E0F242AF8E5EELL);
  LODWORD(v123) = qword_101362A48 ^ 0x21E69720;
  LODWORD(v120) = (((76 * (v120 + 8)) ^ *(v120 - 0x77F6C753A4FD0E0DLL) ^ *((qword_101362AE8 ^ a8) + ((v121 + v120 - 1809839096 - 963544004) & v123)) ^ *((qword_101362AE8 ^ a8) + ((v121 + v120 - 1809839096 + v36) & v123)) ^ 0x70) << 16) | (((76 * v90) ^ v124 ^ *((qword_101362AE8 ^ a8) + ((v121 + v90 - 963544004) & v123)) ^ *((qword_101362AE8 ^ a8) + ((v121 + v90 + v36) & v123)) ^ 0x70) << 8);
  LODWORD(v115) = 1645 * (LODWORD(STACK[0x56C]) ^ 0x80) + 2113825;
  v125 = v115 - 2696 * (((12744711 * v115) >> 32) >> 3);
  v126 = (v125 ^ 0x5B9A527FBBBE9EBELL) + v19 + ((2 * v125) & 0x1D7C);
  LODWORD(v120) = ((v107 ^ (76 * v118) ^ *((qword_101362AE8 ^ a8) + ((v121 + v118 - 963544004) & v123)) ^ *((qword_101362AE8 ^ a8) + ((v121 + v118 + v36) & v123)) ^ 0x5D8AC6) & (v120 ^ 0x5F8EFF) | v120 & 0xA27500) << 8;
  *(*v38 + 52) = ((*(v126 + 0x5EC264240B24472DLL) ^ (76 * (v126 + 66)) ^ *((qword_101362AE8 ^ a8) + ((v121 + v126 + 1145135426 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ a8) + ((v121 + v126 + 1145135426 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xAB166B2D) & (v120 ^ 0xF21CDDFF) | v120 & 0x54E99400) ^ 0xFF9EFF5D;
  LODWORD(v120) = 1645 * (BYTE1(LODWORD(STACK[0x580])) ^ 0x36) + 2113825;
  v127 = v120 - 2696 * (((12744711 * v120) >> 32) >> 3);
  LODWORD(v126) = 1645 * (BYTE2(LODWORD(STACK[0x580])) ^ 0x4D) + 2113825;
  v128 = v126 - 2696 * (((12744711 * v126) >> 32) >> 3);
  LODWORD(v107) = 1645 * (HIBYTE(LODWORD(STACK[0x580])) ^ 0x6B) + 2113825;
  v129 = v107 - 2696 * (((12744711 * v107) >> 32) >> 3);
  v130 = (v128 ^ 0x7BFB26BE77CFDFD6) + v19 + ((2 * v128) & 0x1FAC);
  LODWORD(v90) = v130 - 2010111958;
  v131 = *(v130 + 0x3E618FE54F130615);
  v132 = (v129 ^ 0xBDF77DFE7EFEFDDFLL) + v19 + ((2 * v129) & 0x1BBE);
  v133 = v132 - 2130640351;
  LODWORD(v113) = *(v132 - 0x39AC75AB81C17F4);
  v134 = (v127 ^ 0x7F7E7FF3DFE39B7FLL) + v19 + ((2 * v127) & 0x16FE);
  v135 = v134 + 538731649;
  LODWORD(v114) = *(v134 + 0x3ADE36AFE6FF4A6CLL);
  LODWORD(v129) = *(*v21 + (*v20 & 0xC6917C3C));
  LODWORD(v134) = v131 ^ (76 * v90);
  v136 = qword_101362A48 ^ 0x21E69720;
  LODWORD(v134) = v134 ^ *((qword_101362AE8 ^ a8) + ((v129 + v90 - 963544004) & v136)) ^ *((qword_101362AE8 ^ a8) + ((v129 + v90 + v36) & v136));
  LODWORD(v132) = (v134 << 26) | (((76 * v135) ^ v114 ^ *((qword_101362AE8 ^ a8) + ((v129 + v135 - 963544004) & v136)) ^ *((qword_101362AE8 ^ a8) + ((v129 + v135 + v36) & v136)) ^ 0x70) << 18);
  v137 = (76 * v133) ^ v113 ^ *((qword_101362AE8 ^ a8) + ((v129 + v133 - 963544004) & v136)) ^ *((qword_101362AE8 ^ a8) + ((v129 + v133 + v36) & v136));
  LODWORD(v113) = 1645 * ((LODWORD(STACK[0x580]) ^ 0xC) + 1285);
  LODWORD(v134) = (v134 << 16) & 0xC00000 | ((v137 ^ 0x70) << 24);
  v138 = ((v113 % 0xA88) ^ 0x6D7CAB36F5E9FFEDLL) + v19 + ((2 * (v113 % 0xA88)) & 0x1FDA);
  *(*v38 + 20) = ((*(v138 + 0x4CE00B6CD0F8E5FELL) ^ (76 * (v138 + 19)) ^ *((qword_101362AE8 ^ a8) + ((v129 + v138 + 169213971 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ a8) + ((v129 + v138 + 169213971 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x7F98C19F) & ((v134 & 0xFFC00000 | (v132 >> 10)) ^ 0x7FAEE5FF) | v134 & 0x80400000 | (v132 >> 10) & 0x80673E00) ^ 0x7FF8C1EF;
  LODWORD(v134) = 1645 * (LODWORD(STACK[0x4E8]) ^ 0x9E) + 2113825;
  v139 = v134 - 2696 * (((12744711 * v134) >> 32) >> 3);
  LODWORD(v129) = 1645 * (HIBYTE(LODWORD(STACK[0x4E8])) ^ 0x89) + 2113825;
  v140 = v129 - 2696 * (((12744711 * v129) >> 32) >> 3);
  v141 = (v140 ^ 0xFE3FBFF7773EF8FBLL) + v19 + ((2 * v140) & 0x11F6);
  LODWORD(v123) = *(v141 - 0x43E30953B05C1310);
  LODWORD(v113) = v141 - 2000615675;
  v142 = (v139 ^ 0x20CFDCDDFEF7FDFFLL) + v19 + ((2 * v139) & 0x1BFE);
  LODWORD(v141) = v142 + 17302017;
  LODWORD(v138) = *(v142 - 0x6673263A38151814);
  LODWORD(v142) = 1645 * (BYTE2(LODWORD(STACK[0x4E8])) ^ 0x4E) + 2113825;
  v143 = v142 - 2696 * (((12744711 * v142) >> 32) >> 3);
  v144 = (v143 ^ 0xF7FDAFB6AF3F9783) + v19 + ((2 * v143) & 0xF06);
  LODWORD(v90) = v144 + 1354786941;
  v145 = *(v144 - 0x3DA0F912E85CB198);
  v146 = *(*v21 + (*v20 & 0xC6917C3C));
  LODWORD(v144) = 1645 * (BYTE1(LODWORD(STACK[0x4E8])) ^ 0x2A) + 2113825;
  v147 = v144 - 2696 * (((12744711 * v144) >> 32) >> 3);
  v148 = (v147 ^ 0x57FFC6FB9E756F1ALL) + v19 + ((2 * v147) & 0x1E34);
  LODWORD(v114) = (76 * v113) ^ v123;
  LODWORD(v123) = qword_101362A48 ^ 0x21E69720;
  LODWORD(v90) = ((v114 ^ *((qword_101362AE8 ^ a8) + ((v146 + v113 - 963544004) & v123)) ^ *((qword_101362AE8 ^ a8) + ((v146 + v113 + v36) & v123)) ^ 0x70) << 16) | (((76 * v90) ^ v145 ^ *((qword_101362AE8 ^ a8) + ((v146 + v90 - 963544004) & v123)) ^ *((qword_101362AE8 ^ a8) + ((v146 + v90 + v36) & v123)) ^ 0x70) << 8);
  LODWORD(v148) = ((*(v148 + 0x625CEFA8286D76D1) ^ (76 * (v148 - 26)) ^ *((qword_101362AE8 ^ a8) + ((v146 + v148 + 1636471014 - 963544004) & v123)) ^ *((qword_101362AE8 ^ a8) + ((v146 + v148 + 1636471014 + v36) & v123)) ^ 0x647DBA) & (v90 ^ 0x7E7FFF) | v90 & 0x9B8200) << 8;
  *(*v38 + 104) = ((v138 ^ (76 * v141) ^ *((qword_101362AE8 ^ a8) + ((v146 + v141 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ a8) + ((v146 + v141 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x77A511CE) & (v148 ^ 0x13D053FF) | v148 & 0x885AEE00) ^ 0x77FDDBBE;
  LODWORD(v132) = 1645 * (HIBYTE(LODWORD(STACK[0x4C4])) ^ 0x99) + 2113825;
  v149 = v132 - 2696 * (((12744711 * v132) >> 32) >> 3);
  LODWORD(v148) = 1645 * (LODWORD(STACK[0x4C4]) ^ 0xBE) + 2113825;
  v150 = v148 - 2696 * (((12744711 * v148) >> 32) >> 3);
  LODWORD(v148) = 1645 * (BYTE2(LODWORD(STACK[0x4C4])) ^ 0x8F) + 2113825;
  v151 = v148 - 2696 * (((12744711 * v148) >> 32) >> 3);
  v152 = (v151 ^ 0x35476EF5DF9EDA7ELL) + v19 + ((2 * v151) & 0x14FC);
  LODWORD(v123) = v152 + 543237506;
  LODWORD(v113) = *(v152 - 0x7AEAB85218BBF493);
  v153 = (v149 ^ 0x57B7F67DB77EFEFFLL) + v19 + ((2 * v149) & 0x1DFE);
  LODWORD(v90) = v153 + 1216413953;
  v154 = *(v153 + 0x62A4C0260F63E6ECLL);
  LODWORD(v141) = *(*v21 + (*v20 & 0xC6917C3C));
  v155 = (v150 ^ 0xFF547EF64BE4BE9BLL) + v19 + ((2 * v150) & 0x1D36);
  LODWORD(v150) = *(v155 - 0x44F7C8528501D8B0);
  v156 = v155 - 1273282203;
  LODWORD(v155) = 1645 * (BYTE1(LODWORD(STACK[0x4C4])) ^ 0xF2) + 2113825;
  v157 = v155 - 2696 * (((12744711 * v155) >> 32) >> 3);
  LODWORD(v149) = (76 * v90) ^ v154;
  LODWORD(v114) = v141 + v90;
  LODWORD(v90) = qword_101362A48 ^ 0x21E69720;
  LODWORD(v149) = ((v149 ^ *((qword_101362AE8 ^ a8) + ((v114 - 963544004) & v90)) ^ *((qword_101362AE8 ^ a8) + ((v114 + v36) & v90)) ^ 0x70) << 16) | (((76 * v123) ^ v113 ^ *((qword_101362AE8 ^ a8) + ((v141 + v123 - 963544004) & v90)) ^ *((qword_101362AE8 ^ a8) + ((v141 + v123 + v36) & v90)) ^ 0x70) << 8);
  v158 = (v157 ^ 0x3B9DFFBEDDEFFFDDLL) + v19 + ((2 * v157) & 0x1FBA);
  LODWORD(v158) = (*(v158 + 0x7EBEB6E4E8F2E60ELL) ^ (76 * (v158 + 35)) ^ *((qword_101362AE8 ^ a8) + ((v141 + v158 + 571473955 - 963544004) & v90)) ^ *((qword_101362AE8 ^ a8) + ((v141 + v158 + 571473955 + v36) & v90)) ^ 0x1E236A) & (v149 ^ 0xDE3BFF) | v149 & 0xE1DC00;
  *(*v38 + 40) = ((v150 ^ (76 * v156) ^ *((qword_101362AE8 ^ a8) + ((v141 + v156 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ a8) + ((v141 + v156 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x86CF7CF5) & ((v158 << 8) ^ 0xE1FCE4FF) | (v158 << 8) & 0x79308300) ^ 0x9EEF7E85;
  v159 = v38;
  LODWORD(v149) = 1645 * (BYTE2(LODWORD(STACK[0x490])) ^ 0xA9) + 2113825;
  v160 = v149 - 2696 * (((12744711 * v149) >> 32) >> 3);
  LODWORD(v141) = 1645 * (BYTE1(LODWORD(STACK[0x490])) ^ 0x4D) + 2113825;
  v161 = v141 - 2696 * (((12744711 * v141) >> 32) >> 3);
  v162 = (v161 ^ 0xDF75FFDEFFF9EF9BLL) + v19 + ((2 * v161) & 0x1F36);
  LODWORD(v150) = 1645 * (HIBYTE(LODWORD(STACK[0x490])) ^ 0x6D) + 2113825;
  v163 = v150 - 2696 * (((12744711 * v150) >> 32) >> 3);
  v164 = (v163 ^ 0x778FDEF4FBFF7FFFLL) + 2 * v163 + v19;
  LODWORD(v113) = v164 + 67141633;
  LODWORD(v90) = *(v164 + 0x42CCD7AECAE365ECLL);
  LODWORD(v158) = 1645 * (LODWORD(STACK[0x490]) ^ 0x41) + 2113825;
  v165 = v158 - 2696 * (((12744711 * v158) >> 32) >> 3);
  v166 = (v160 ^ 0x467DA8FC3AFBEFFDLL) + v19 + ((2 * v160) & 0x1FFA);
  v167 = v166 - 989589501;
  LODWORD(v114) = *(v166 + 0x73DF0DA78BE6F5EELL);
  v168 = (v165 ^ 0x7FA7FFE2C7E42DFFLL) + v19 + ((2 * v165) & 0x1BFE);
  LODWORD(v164) = v168 + 941347329;
  v169 = *(v168 + 0x3AB4B6C0FEFEB7ECLL);
  LODWORD(v123) = *(*v21 + (*v20 & 0xC6917C3C));
  LODWORD(v168) = (76 * v113) ^ v90;
  LODWORD(v166) = v123 + v113;
  LODWORD(v113) = qword_101362A48 ^ 0x21E69720;
  LODWORD(v168) = ((v168 ^ *((qword_101362AE8 ^ a8) + ((v166 - 963544004) & v113)) ^ *((qword_101362AE8 ^ a8) + ((v166 + v36) & v113)) ^ 0x70) << 16) | (((76 * v167) ^ v114 ^ *((qword_101362AE8 ^ a8) + ((v123 + v167 - 963544004) & v113)) ^ *((qword_101362AE8 ^ a8) + ((v123 + v167 + v36) & v113)) ^ 0x70) << 8);
  *(*v38 + 156) = (v169 ^ (76 * v164) ^ *((qword_101362AE8 ^ a8) + ((v123 + v164 - 963544004) & v113)) ^ *((qword_101362AE8 ^ a8) + ((v123 + v164 + v36) & v113)) | ((((v168 ^ 0xDEC8FF) & (*(v162 - 0x2519493B391709B0) ^ (76 * (v162 + 101)) ^ *((qword_101362AE8 ^ a8) + ((v123 + v162 + 397413 - 963544004) & v113)) ^ *((qword_101362AE8 ^ a8) + ((v123 + v162 + 397413 + v36) & v113)) ^ 0x500018)) + (v168 & 0xAFFF00)) << 8)) ^ 0x50006870;
  v170 = *v20;
  v171 = *v21;
  LODWORD(v168) = *(*v21 + (v170 & STACK[0x658])) + STACK[0x538];
  v172 = qword_101362A48 ^ 0x21E69720;
  v173 = qword_101362AE8 ^ a8;
  LODWORD(v166) = LODWORD(STACK[0x534]) ^ *(v173 + ((v168 + 673210726) & (qword_101362A48 ^ 0x21E69720)));
  LODWORD(STACK[0x630]) = 673210728;
  LODWORD(v162) = v166 ^ *(v173 + ((v168 + 673210728) & v172));
  v174 = 3883008 * (((v162 ^ 0x2319) - 948756882) ^ ((v162 ^ 0x2EDF4) + 1511379073) ^ ((v162 ^ 0x3B724) + 1044679249)) - 1620273214;
  LODWORD(v168) = 1645 * (HIBYTE(LODWORD(STACK[0x4A0])) ^ 0xDD) + 2113825;
  v175 = v168 - 2696 * (((12744711 * v168) >> 32) >> 3);
  LODWORD(v166) = 1645 * (LODWORD(STACK[0x4A0]) ^ 0xF4) + 2113825;
  v176 = v166 - 2696 * (((12744711 * v166) >> 32) >> 3);
  v177 = 1645 * (BYTE1(LODWORD(STACK[0x4A0])) ^ 0x10) + 2113825;
  v178 = v177 - 2696 * (((12744711 * v177) >> 32) >> 3);
  v179 = (v178 ^ 0xFEFADFFFFF1CFBEFLL) + v19 + ((2 * v178) & 0x17DE);
  v180 = (v175 ^ 0x7EFCFAFFFED5EBFCLL) + v19 + ((2 * v175) & 0x17F8);
  LODWORD(v90) = v180 + 19534852;
  v181 = *(v180 + 0x3B5FBBA3C80CF9EFLL);
  LODWORD(v180) = 1645 * (BYTE2(LODWORD(STACK[0x4A0])) ^ 0x65) + 2113825;
  v182 = v180 - 2696 * (((12744711 * v180) >> 32) >> 3);
  v183 = (v176 ^ 0xB3D7ECFF9EDBF6B6) + v19 + ((2 * v176) & 0xD6C);
  v184 = (v182 ^ 0x772F7C77EFFBFCAFLL) + v19 + ((2 * v182) & 0x195E);
  v185 = v184 + 268698449;
  v186 = *(v171 + (v170 & STACK[0x648]));
  LODWORD(v184) = (((76 * v90) ^ v181 ^ *(v173 + ((v186 + v90 - 963544004) & v172)) ^ *(v173 + ((v186 + v90 + v36) & v172)) ^ 0x70) << 16) | (((76 * v185) ^ *(v184 + 0x432D3A2BD6E6E93CLL) ^ *(v173 + ((v186 + v185 - 963544004) & v172)) ^ *(v173 + ((v186 + v185 + v36) & v172)) ^ 0x70) << 8);
  LODWORD(v179) = (*(v179 - 0x449E295C383A1604) ^ (76 * (v179 + 17)) ^ *(v173 + ((v186 + v179 + 14877713 - 963544004) & v172)) ^ *(v173 + ((v186 + v179 + 14877713 + v36) & v172)) ^ 0xF66470) & (v184 ^ 0xF774FF) | v184 & 0x99B00;
  v187 = STACK[0x640];
  LODWORD(v184) = *(v171 + (v170 & STACK[0x640])) + v183 + 1629751626;
  LODWORD(v184) = ((*(v183 + 0x684C9A42806EF35) ^ (76 * (v183 + 74)) ^ *(v173 + ((v184 - 963544004) & v172)) ^ *(v173 + ((v184 + v36) & v172)) ^ 0xE05FA98F) & ((v179 << 8) ^ 0x159BBDFF) | (v179 << 8) & 0x1FA05600) ^ 0xF67FA9FF;
  v188 = v159;
  *(*v159 + 68) = v184;
  LODWORD(v184) = 1645 * (LODWORD(STACK[0x4B8]) ^ 0xA9) + 2113825;
  v189 = v184 - 2696 * (((12744711 * v184) >> 32) >> 3);
  LODWORD(v184) = 1645 * (BYTE2(LODWORD(STACK[0x4B8])) ^ 0x27) + 2113825;
  v190 = v184 - 2696 * (((12744711 * v184) >> 32) >> 3);
  v191 = (v190 ^ 0x5E67FD3FA35B5FFELL) + ((2 * v190) & 0x1FFC) + v19;
  LODWORD(v123) = v191 + 1554292738;
  LODWORD(v179) = *(v191 + 0x5BF4B964238785EDLL);
  LODWORD(v183) = 1645 * (BYTE1(LODWORD(STACK[0x4B8])) ^ 1) + 2113825;
  v192 = v183 - 2696 * (((12744711 * v183) >> 32) >> 3);
  LODWORD(v191) = 1645 * (HIBYTE(LODWORD(STACK[0x4B8])) ^ 0x65) + 2113825;
  v193 = v191 - 2696 * (((12744711 * v191) >> 32) >> 3);
  v194 = (v192 ^ 0xFE7D7FBFFFFDFFF9) + v19 + ((2 * v192) & 0x1FF2);
  v195 = (v193 ^ 0xE7B7ED2BE65EF7EBLL) + v19 + ((2 * v193) & 0xFD6);
  LODWORD(v178) = *(*v22 + (*v20 & 0xC6917C3C));
  v196 = (v189 ^ 0x7FF99DF4DFFFDFCELL) + v19 + ((2 * v189) & 0x1F9C);
  LODWORD(v114) = qword_101362A48 ^ 0x21E69720;
  LODWORD(v195) = (((76 * (v195 + 21)) ^ *(v195 - 0x2D5B36881F7C1200) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v178 + v195 + 429983765 - 963544004) & v114)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v178 + v195 + 429983765 + v36) & v114)) ^ 0x70) << 16) | (((76 * v123) ^ v179 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v178 + v123 - 963544004) & v114)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v178 + v123 + v36) & v114)) ^ 0x70) << 8);
  LODWORD(v195) = ((*(v194 - 0x4420C91C391B1A0ELL) ^ (76 * (v194 + 7)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v178 + v194 + 131079 - 963544004) & v114)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v178 + v194 + 131079 + v36) & v114)) ^ 0x519C08) & (v195 ^ 0xD19FFF) | v195 & 0xAE6300) << 8;
  HIDWORD(v197) = *(v196 + 0x3A6318AEE6E3061DLL) ^ (76 * (v196 + 50)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v178 + v196 + 536879154 - 963544004) & v114)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v178 + v196 + 536879154 + v36) & v114));
  LODWORD(v197) = ((v195 ^ 0xAE2006FC) & (HIDWORD(v197) ^ 0xFFA06E48) | v195 & 0x5F9100) ^ 0xFFBC7E38;
  LODWORD(v195) = v197 >> 2;
  HIDWORD(v197) = v195;
  LODWORD(v197) = v195;
  LODWORD(v196) = 5799784 * (((v162 ^ 0x1489FAE1) - 173354460) ^ ((v162 ^ 0x80458A4) - 383291289) ^ ((v162 ^ 0x1FA8DB8C) + 1049359183)) + 1789492572;
  *(*v159 + 108) = v197 >> 30;
  v198 = *v20;
  LODWORD(v195) = *(*v22 + (v198 & STACK[0x658])) + STACK[0x528];
  LODWORD(v189) = qword_101362A48 ^ 0x21E69720;
  LODWORD(v195) = LODWORD(STACK[0x520]) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v195 + 673210726) & v189)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v195 + LODWORD(STACK[0x630])) & v189));
  LODWORD(v162) = 997952 * (((v195 ^ 0x60720198) + 1893644013) ^ ((v195 ^ 0xC0736E92) - 790636057) ^ ((v195 ^ 0x32416C3) + 327721400)) + 668367395;
  LODWORD(v195) = (v196 ^ 0xC17E81B7) & (2 * (v196 & 0xC470A1C4)) ^ v196 & 0xC470A1C4;
  LODWORD(v192) = ((2 * (v196 ^ 0xC97F8337)) ^ 0x1A1E45E2) & (v196 ^ 0xC97F8337) ^ (2 * (v196 ^ 0xC97F8337)) & 0xD0F22F2;
  LODWORD(v195) = (v192 ^ 0x60020) & (4 * v195) ^ v195;
  LODWORD(v192) = ((4 * (v192 ^ 0x5012211)) ^ 0x343C8BCC) & (v192 ^ 0x5012211) ^ (4 * (v192 ^ 0x5012211)) & 0xD0F22F0;
  LODWORD(v195) = (v192 ^ 0x40C02C0) & (16 * v195) ^ v195;
  LODWORD(v192) = ((16 * (v192 ^ 0x9032033)) ^ 0xD0F22F30) & (v192 ^ 0x9032033) ^ (16 * (v192 ^ 0x9032033)) & 0xD0F22F0;
  LODWORD(v195) = v195 ^ 0xD0F22F3 ^ (v192 ^ 0x222C3) & (v195 << 8);
  LODWORD(v195) = v196 ^ (2 * ((v195 << 16) & 0xD0C0000 ^ v195 ^ ((v195 << 16) ^ 0x22F00000) & (((v192 ^ 0xD0D00C3) << 8) & 0xD0F0000 ^ (((v192 ^ 0xD0D00C3) << 8) ^ 0xF220000) & (v192 ^ 0xD0D00C3) ^ 0xC0000)));
  LODWORD(v192) = 1645 * (HIBYTE(LODWORD(STACK[0x4D4])) ^ 0xDC) + 2113825;
  v199 = v192 - 2696 * (((12744711 * v192) >> 32) >> 3);
  LODWORD(v179) = 1645 * (BYTE1(LODWORD(STACK[0x4D4])) ^ 0x21) + 2113825;
  v200 = v179 - 2696 * (((12744711 * v179) >> 32) >> 3);
  v201 = (v200 ^ 0x537FEEFFDF8F6DDFLL) + v19 + ((2 * v200) & 0x1BBE);
  LODWORD(v194) = *(v201 + 0x66DCC7A3E753780CLL);
  LODWORD(v201) = v201 + 544248353;
  v202 = (v199 ^ 0xAFFDE9FFAFDFEEFFLL) + v19 + ((2 * v199) & 0x1DFE);
  LODWORD(v195) = 1645 * ((v195 >> 19) ^ 0xCD) + 2113825;
  v203 = v195 - 2696 * (((12744711 * v195) >> 32) >> 3);
  v204 = (v203 ^ 0x6FEEFBDFB97FD5DFLL) + v19 + ((2 * v203) & 0xBBE);
  v205 = *(*v22 + (v198 & STACK[0x648]));
  LODWORD(v196) = (((76 * (v202 + 1344278785)) ^ *(v202 + 0xA5ECCA41702F6ECLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v205 + v202 + 1344278785 - 963544004) & v189)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v205 + v202 + 1344278785 + v36) & v189)) ^ 0x70) << 16) | ((*(v204 + 0x4A6DBAC40D63100CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v204 + 1182804513 + v205 - 963544004) & v189)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v204 + 1182804513 + v205 + v36) & v189)) ^ (76 * (v204 + 33)) ^ 0x70) << 8);
  LODWORD(v198) = *(*v22 + (v198 & v187));
  HIDWORD(v197) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v198 + v201 - 963544004) & v189)) ^ v194 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v198 + v201 + v36) & v189));
  LODWORD(v197) = (HIDWORD(v197) ^ (76 * v201) ^ 0x70) << 24;
  LODWORD(v202) = 1645 * (((((v174 ^ 0x433B1230) - 1264387570) ^ v174 ^ ((v174 ^ 0x672F4A7B) - 1867079097) ^ ((v174 ^ 0xDB4F4) + 1334476) ^ ((v174 ^ 0x3FFB7Fu) + 2495299)) >> 14) ^ 0x98) + 2113825;
  v206 = v202 - 2696 * (((12744711 * v202) >> 32) >> 3);
  LODWORD(v204) = ((v197 >> 25) ^ 0xFFFFFF80) - ((2 * (v197 >> 25)) & 0xFFFFFFF3) - 7;
  HIDWORD(v197) = v204 ^ 1;
  LODWORD(v197) = (v204 ^ 0x78) << 24;
  v207 = (v206 ^ 0x777CB7D4FF17EF7FLL) + v19 + ((2 * v206) & 0x1EFE);
  LODWORD(v204) = *(v207 + 0x42DFFECEC7CAF66CLL) ^ (76 * (v207 - 127)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v198 + v207 + 15208577 - 963544004) & v189)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v198 + v207 + 15208577 + v36) & v189)) ^ 0x13178C4D;
  LODWORD(v189) = (v196 & 0xFFFFFF00 | (((v197 >> 27) >> 4) | (16 * (v197 >> 27)))) << 8;
  *(*v159 + 192) = (v204 & ~v189 | v189 & 0xECE87300) ^ 0x13178C3D;
  LODWORD(v207) = ((((v162 ^ 0xC9CA801F) + 3557956) ^ v162 ^ ((v162 ^ 0xCFD43) + 3159840) ^ ((v162 ^ 0x3AA700) + 421213) ^ ((v162 ^ 0x3FEFFC) + 206244)) & 0x3FC000 ^ 0x30000) + 21053440;
  LODWORD(v162) = 1645 * (BYTE2(LODWORD(STACK[0x4E4])) ^ 0xC) + 2113825;
  v208 = v162 - 5392 * (((12744711 * v162) >> 32) >> 4);
  LODWORD(v204) = 1645 * (LODWORD(STACK[0x4E4]) ^ 0x35) + 2113825;
  v209 = v204 - 2696 * (((12744711 * v204) >> 32) >> 3);
  v210 = (1645 * (v207 >> 14) - 2696 * ((1593089 * (1645 * (v207 >> 14))) >> 32));
  LODWORD(v207) = 1645 * (HIBYTE(LODWORD(STACK[0x4E4])) ^ 0x3E) + 2113825;
  v211 = v207 - 2696 * (((12744711 * v207) >> 32) >> 3);
  v212 = (v211 ^ 0x2FFF6FF9FA0EFEBBLL) + v19 + ((2 * v211) & 0x1D76);
  v213 = v212 + 99680581;
  v214 = *(v212 - 0x75A2B956332C18D0);
  v218 = (v209 ^ 0xFF49BF6FEFFDBFF3) + v19 + ((2 * v209) & 0x1FE6);
  v215 = v218 + 268582925;
  v216 = *(v218 - 0x44ED08CC291ADA08);
  v217 = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v218) = v208 - 2696;
  if (v208 >= 0xA88)
  {
    v218 = v218;
  }

  else
  {
    v218 = v208;
  }

  v219 = (v218 ^ 0x7FBFFD5FFC9FDB57) + v19 + ((2 * v218) & 0x1F93FB6AELL);
  v220 = (v210 ^ 0x74A7EF3FFDFF1D9FLL) + v19 + ((2 * v210) & 0x1B3E);
  v221 = (76 * v213) ^ v214;
  v222 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v219) = ((v221 ^ *(v222 + ((v217 + v213 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v222 + ((v217 + v213 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v219 - 87)) ^ *(v219 + 0x3A9CB943CA430A94) ^ *(v222 + ((v217 + v219 + 56632489 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v222 + ((v217 + v219 + 56632489 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v219) = (v219 ^ 0x7D8EFF) & (*(v220 + 0x45B4C763C8E3C84CLL) ^ (76 * (v220 + 97)) ^ *(v222 + ((v220 + 33612385 + v217 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v222 + ((v220 + 33612385 + v217 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x6D08F5) | v219 & 0x92F700;
  *(*v159 + 392) = ((v216 ^ (76 * v215) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v217 + v215 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v217 + v215 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x5B59032) & ((v219 << 8) ^ 0x1AF75BFF) | (v219 << 8) & 0xFA4A6F00) ^ 0x6DBD9542;
  v223 = 1645 * HIBYTE(LODWORD(STACK[0x4F4])) + 2113825 - 2696 * (((12744711 * (1645 * HIBYTE(LODWORD(STACK[0x4F4])) + 2113825)) >> 32) >> 3);
  LODWORD(v220) = 1645 * ((BYTE2(LODWORD(STACK[0x4F4])) ^ 0x505) + ((LODWORD(STACK[0x4F4]) >> 15) & 0xA));
  v224 = (v220 - 2696 * ((1593089 * v220) >> 32));
  v225 = 1645 * LODWORD(STACK[0x4F4]) + 2113825;
  v226 = v225 - 2696 * (((12744711 * v225) >> 32) >> 3);
  v227 = (v223 ^ 0x7FBE6115AFFFBBFDLL) + v19 + ((2 * v223) & 0x17FA);
  v228 = v227 + 1342194691;
  LODWORD(v222) = *(v227 + 0x3A9E558E16E329EELL);
  v229 = (v224 ^ 0x5F9EF3EFFEFED9EALL) + v19 + ((2 * v224) & 0x13D4);
  v230 = *(*v22 + (*v20 & 0xC6917C3C));
  v231 = *(v229 + 0x5ABDC2B3C7E40C01);
  v232 = v229 + 16852502;
  v233 = (v226 ^ 0x5BFB6BED5FE7DEFFLL) + v19 + ((2 * v226) & 0x1DFE);
  LODWORD(v226) = v233 - 1609031423;
  v234 = *(v233 + 0x5E614AB666FB06ECLL);
  LODWORD(v233) = 1645 * BYTE1(LODWORD(STACK[0x4F4])) + 2113825;
  v235 = v233 - 2696 * (((12744711 * v233) >> 32) >> 3);
  v236 = (v235 ^ 0x3FFDB7BFFFEFFBF7) + v19 + ((2 * v235) & 0x17EE);
  LODWORD(v224) = (76 * v228) ^ v222;
  v237 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v224) = ((v224 ^ *(v237 + ((v230 + v228 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v237 + ((v230 + v228 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v232) ^ v231 ^ *(v237 + ((v230 + v232 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v237 + ((v230 + v232 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v236) = (*(v236 + 0x7A5EFEE3C6F2E9F4) ^ (76 * (v236 + 9)) ^ *(v237 + ((v230 + v236 + 1049609 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v237 + ((v230 + v236 + 1049609 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x67991F) & (v224 ^ 0xEF9FFF) | v224 & 0x986600;
  *(*v159 + 388) = ((v234 ^ (76 * v226) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v230 + v226 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v230 + v226 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xBDBAAAD0) & ((v236 << 8) ^ 0x9A26D4FF) | (v236 << 8) & 0x42455500) ^ 0xFFBBEFA0;
  v238 = 1645 * (BYTE1(LODWORD(STACK[0x4D8])) ^ 0x3C) + 2113825;
  v239 = v238 - 2696 * (((12744711 * v238) >> 32) >> 3);
  LODWORD(v224) = 1645 * (((2 * ((HIBYTE(LODWORD(STACK[0x4D8])) ^ 0x86) - 662580092)) & 0x2102) + (((HIBYTE(LODWORD(STACK[0x4D8])) ^ 0x86) - 662580092) ^ 0x277E3081));
  LODWORD(v236) = 1645 * ((BYTE2(LODWORD(STACK[0x4D8])) ^ 0x545) + ((LODWORD(STACK[0x4D8]) >> 15) & 0xA));
  v240 = (v236 - 2696 * ((1593089 * v236) >> 32));
  v241 = (v240 ^ 0xD73AFDEE7DCFFFFBLL) + v19 + ((2 * v240) & 0x1FF6);
  v242 = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v226) = *(v241 - 0x1CDE474AB6ED1A10);
  v243 = v241 - 2110783483;
  v244 = (v239 ^ 0xBFF77FF91EBF7FADLL) + v19 + ((2 * v239) & 0x1F5A);
  LODWORD(v239) = v244 - 515866541;
  LODWORD(v237) = *(v244 - 0x59AC95557DC99C2);
  LODWORD(v244) = 1645 * (LODWORD(STACK[0x4D8]) ^ 0x4C) + 2113825;
  v245 = v244 - 2696 * (((12744711 * v244) >> 32) >> 3);
  v246 = ((v224 % 0xA88) ^ 0x37DF87BFFF5E6FFFLL) + 2 * (v224 % 0xA88) + v19;
  v247 = (v245 ^ 0xDD54BDE7DF5FCFFFLL) + 2 * v245 + v19;
  v248 = *(v247 - 0x22F80744187CEA14);
  v249 = v247 + 547368961;
  v250 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v247) = (((76 * (v246 + 1)) ^ *(v246 - 0x7D82D11C387B8A14) ^ *(v250 + ((v242 + v246 + 10588161 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v250 + ((v242 + v246 + 10588161 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v243) ^ v226 ^ *(v250 + ((v242 + v243 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v250 + ((v242 + v243 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v247) = ((v237 ^ (76 * v239) ^ *(v250 + ((v242 + v239 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v250 + ((v242 + v239 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x8D2B12) & (v247 ^ 0xCDEFFF) | v247 & 0x72D400) << 8;
  *(*v159 + 196) = ((v248 ^ (76 * v249) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v242 + v249 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v242 + v249 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x88FBC644) & (v247 ^ 0x30D08CFF) | v247 & 0x77043900) ^ 0x8DFBE634;
  LODWORD(v246) = 1645 * (BYTE2(LODWORD(STACK[0x4A8])) ^ 0x84) + 2113825;
  v251 = v246 - 2696 * (((12744711 * v246) >> 32) >> 3);
  v252 = 1645 * (HIBYTE(LODWORD(STACK[0x4A8])) ^ 0x36) + 2113825;
  v253 = v252 - 2696 * (((12744711 * v252) >> 32) >> 3);
  LODWORD(v247) = 1645 * (BYTE1(LODWORD(STACK[0x4A8])) ^ 0x2D) + 2113825;
  v254 = v247 - 2696 * (((12744711 * v247) >> 32) >> 3);
  LODWORD(v239) = (v253 ^ 0x7D7FB7FE) + ((2 * v253) & 0xFFC) + v19 - 2105522174;
  LODWORD(v247) = *((v253 ^ 0xF67F7F7F7D7FB7FELL) + ((2 * v253) & 0xFFC) + v19 - 0x3C22C8DBB69CD213);
  LODWORD(v253) = 1645 * (LODWORD(STACK[0x4A8]) ^ 0x9C) + 2113825;
  v255 = v253 - 2696 * (((12744711 * v253) >> 32) >> 3);
  LODWORD(v253) = *(*v22 + (*v20 & 0xC6917C3C));
  v256 = (v251 ^ 0xF975DD7FDEEBDDEFLL) + v19 + ((2 * v251) & 0x1BDE);
  v257 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  v258 = (((76 * v239) ^ v247 ^ *(v257 + ((v253 + v239 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v257 + ((v253 + v239 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v256 + 17)) ^ *(v256 - 0x3F1926DC1808F804) ^ *(v257 + ((v253 + v256 + 554967569 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v257 + ((v253 + v256 + 554967569 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  v259 = (v254 ^ 0xEF9B6FDFDF5E6CFALL) + v19 + ((2 * v254) & 0x19F4);
  v260 = (v255 ^ 0xBF7FFFFFFDCFEB5FLL) + v19 + ((2 * v255) & 0x16BE);
  LODWORD(v259) = (*(v259 - 0x353EB93C187B870FLL) ^ (76 * (v259 + 6)) ^ *(v257 + ((v253 + v259 + 547459846 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v257 + ((v253 + v259 + 547459846 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xFD65) & (v258 ^ 0xE5FFFF);
  *(*v159 + 412) = ((*(v260 - 0x523495C36ED0574) ^ (76 * (v260 - 95)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v253 + v260 + 36705441 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v253 + v260 + 36705441 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xB16BCCFB) & (((v259 | v258 & 0xFF0200) << 8) ^ 0xBB86DAFF) | ((v259 | v258 & 0xFF0200) << 8) & 0x4E943300) ^ 0xB1FFDD8B;
  LODWORD(v259) = 1645 * (BYTE2(LODWORD(STACK[0x49C])) ^ 0xC7) + 2113825;
  v261 = v259 - 2696 * (((12744711 * v259) >> 32) >> 3);
  LODWORD(v256) = 1645 * (HIBYTE(LODWORD(STACK[0x49C])) ^ 0xCC) + 2113825;
  v262 = v256 - 2696 * (((12744711 * v256) >> 32) >> 3);
  v263 = (v261 ^ 0x53B5C6FFDFFB7FB7) + v19 + ((2 * v261) & 0x1F6E);
  LODWORD(v257) = v263 + 537165897;
  v264 = *(v263 + 0x66A6EFA3E6E76634);
  LODWORD(v263) = 1645 * (LODWORD(STACK[0x49C]) ^ 0xF) + 2111129;
  v265 = v263 - 2696 * (((12744711 * v263) >> 32) >> 3);
  v266 = (v262 ^ 0x9EEBD3FEE94E75FELL) + v19 + ((2 * v262) & 0xBFC);
  LODWORD(v253) = *(*v22 + (*v20 & 0xC6917C3C));
  v267 = *(v266 + 0x1B70E2A4DD946FEDLL);
  LODWORD(v266) = v266 + 380733954;
  v268 = (v265 ^ 0x3DAEFF9D79DBBFD4) + v19 + ((2 * v265) & 0x1FA8);
  LODWORD(v260) = v268 - 2044444628;
  LODWORD(v255) = *(v268 + 0x7CADB7064D072617);
  LODWORD(v268) = 1645 * (BYTE1(LODWORD(STACK[0x49C])) ^ 0x21) + 2113825;
  v269 = v268 - 2696 * (((12744711 * v268) >> 32) >> 3);
  v270 = (76 * v266) ^ v267;
  v271 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v266) = ((v270 ^ *(v271 + ((v253 + v266 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v271 + ((v253 + v266 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v257) ^ v264 ^ *(v271 + ((v253 + v257 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v271 + ((v253 + v257 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  v272 = (v269 ^ 0xBFD77EDFE3AB7DC8) + v19 + ((2 * v269) & 0x1B90);
  LODWORD(v272) = (*(v272 - 0x57AC83C1CC897DDLL) ^ (76 * (v272 + 56)) ^ *(v271 + ((v253 + v272 + 475300408 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v271 + ((v253 + v272 + 475300408 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x22216D) & (v266 ^ 0xF323FF) | v266 & 0xDDDE00;
  *(*v159 + 8) = ((v255 ^ (76 * v260) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v253 + v260 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v253 + v260 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xE449B54B) & ((v272 << 8) ^ 0xDEE8A2FF) | (v272 << 8) & 0x1BB64A00) ^ 0xE669BD3B;
  LODWORD(v266) = 1645 * (HIBYTE(LODWORD(STACK[0x4B0])) ^ 0xC3) + 2113825;
  v273 = v266 - 2696 * (((12744711 * v266) >> 32) >> 3);
  LODWORD(v253) = 1645 * (BYTE1(LODWORD(STACK[0x4B0])) ^ 0x85) + 2113825;
  v274 = v253 - 2696 * (((12744711 * v253) >> 32) >> 3);
  v275 = (v273 ^ 0x6EF69BFBDDFCFFFFLL) + 2 * v273 + v19;
  LODWORD(v272) = 1645 * (BYTE2(LODWORD(STACK[0x4B0])) ^ 0xD0) + 2113825;
  v276 = v272 - 2696 * (((12744711 * v272) >> 32) >> 3);
  v277 = (v276 ^ 0x37EDCBA4FBE5BFE6) + v19 + ((2 * v276) & 0x1FCC);
  LODWORD(v253) = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v257) = *(v277 - 0x7D9115013502D9FBLL);
  v278 = v277 + 68829210;
  v279 = (v274 ^ 0x2BFEDCA7B3FEEBEBLL) + v19 + ((2 * v274) & 0x17D6);
  v280 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v275) = (((76 * (v275 + 1)) ^ *(v275 + 0x4B661AA7E8E5E5ECLL) ^ *(v280 + ((v253 + v275 + 570621953 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v280 + ((v253 + v275 + 570621953 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v278) ^ v257 ^ *(v280 + ((v253 + v278 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v280 + ((v253 + v278 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v239) = 1645 * (LODWORD(STACK[0x4B0]) ^ 0x83) + 2113825;
  v281 = v239 - 2696 * (((12744711 * v239) >> 32) >> 3);
  LODWORD(v279) = (*(v279 - 0x71A22603ED1C0600) ^ (76 * (v279 + 21)) ^ *(v280 + ((v253 + v279 + 1275139093 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v280 + ((v253 + v279 + 1275139093 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x3E2BE) & (v275 ^ 0x43E2FF);
  v282 = (v281 ^ 0xDFDF4FEFDD17FC7FLL) + v19 + ((2 * v281) & 0x18FE);
  *(*v159 + 100) = ((*(v282 - 0x2582994C16351694) ^ (76 * (v282 - 127)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v253 + v282 + 585630593 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v253 + v282 + 585630593 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x904E6FD8) & (((v279 | v275 & 0xFC1D00) << 8) ^ 0x931DB1FF) | ((v279 | v275 & 0xFC1D00) << 8) & 0x6FB19000) ^ 0x93EEEFA8;
  LODWORD(v279) = 1645 * (LODWORD(STACK[0x544]) ^ 0xAE) + 2113825;
  v283 = v279 - 2696 * (((12744711 * v279) >> 32) >> 3);
  v284 = 1645 * ((((HIBYTE(LODWORD(STACK[0x544])) ^ 0x38) + 1285) ^ __ROR4__((((HIBYTE(LODWORD(STACK[0x544])) ^ 0x38) + 1285) << 18) | 0x6526387C, 18) | ((HIBYTE(LODWORD(STACK[0x544])) ^ 0x38) + 1285) & 0x6B6) ^ 0x8E1F1949) % 0xA88;
  v285 = (v283 ^ 0xDDE4FE9EF6BBFADBLL) + v19 + ((2 * v283) & 0x15B6);
  LODWORD(v253) = v285 + 155452709;
  LODWORD(v260) = *(v285 - 0x238847FB2FD914F0);
  LODWORD(v285) = 1645 * (BYTE1(LODWORD(STACK[0x544])) ^ 0xF5) + 2113825;
  v286 = v285 - 2696 * (((12744711 * v285) >> 32) >> 3);
  v287 = (v284 ^ 0x6FF5B8DAFADBFBFDLL) + v19 + ((2 * v284) & 0x17FA);
  v288 = (v286 ^ 0xDCFFBED42B97CB9ALL) + v19 + ((2 * v286) & 0x1734);
  LODWORD(v284) = *(v288 - 0x22A3083064B4E5AFLL);
  LODWORD(v257) = v288 - 731368346;
  LODWORD(v288) = 1645 * ((BYTE2(LODWORD(STACK[0x544])) ^ 0x583) + ((2 * (HIWORD(LODWORD(STACK[0x544])) ^ 0x3886)) & 0xA));
  v289 = (v288 - 2696 * ((1593089 * v288) >> 32));
  LODWORD(v280) = *(*v22 + (*v20 & 0xC6917C3C));
  v290 = (v289 ^ 0xAE8D7DFBBED6F5FDLL) + v19 + ((2 * v289) & 0xBFA);
  v291 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v290) = (((76 * (v287 + 3)) ^ *(v287 + 0x4A66FDC8CC06E9EELL) ^ *(v291 + ((v280 + v287 + 86246403 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v291 + ((v280 + v287 + 86246403 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v290 + 3)) ^ *(v290 + 0xBCF38A8080BEFEELL) ^ *(v291 + ((v280 + v290 + 1093208579 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v291 + ((v280 + v290 + 1093208579 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v290) = ((v284 ^ (76 * v257) ^ *(v291 + ((v280 + v257 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v291 + ((v280 + v257 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x8314C0) & ~v290 | v290 & 0x7CEB00) << 8;
  *(*v159 + 240) = ((v260 ^ (76 * v253) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v280 + v253 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v280 + v253 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x91D386A9) & (v290 ^ 0x7ECB5EFF) | v290 & 0x6E2C7900) ^ 0x93D7B6D9;
  LODWORD(v290) = 1645 * (BYTE2(LODWORD(STACK[0x5A0])) ^ 0x47) + 2113825;
  v292 = v290 - 2696 * (((12744711 * v290) >> 32) >> 3);
  LODWORD(v290) = 1645 * (LODWORD(STACK[0x5A0]) ^ 0xC4) + 2113825;
  v293 = v290 - 2696 * (((12744711 * v290) >> 32) >> 3);
  LODWORD(v287) = 1645 * (HIBYTE(LODWORD(STACK[0x5A0])) ^ 0x3C) + 2113825;
  v294 = v287 - 2696 * (((12744711 * v287) >> 32) >> 3);
  LODWORD(v253) = 1645 * (BYTE1(LODWORD(STACK[0x5A0])) ^ 0x3E) + 2113825;
  v295 = v253 - 2696 * (((12744711 * v253) >> 32) >> 3);
  v296 = (v293 ^ 0xEE79ADBF8CEFEF78) + v19 + ((2 * v293) & 0x1EF0);
  LODWORD(v253) = v296 + 1930432648;
  LODWORD(v260) = *(v296 - 0x341CF71BC60D098DLL);
  v297 = (v294 ^ 0xFDCBDEFEBBBFDB57) + v19 + ((2 * v294) & 0x16AE);
  LODWORD(v280) = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v291) = *(v297 - 0x436F285AF4DCF56CLL);
  v298 = v297 + 1145054377;
  v299 = (v295 ^ 0x3FFDCE7B77D13F73) + v19 + ((2 * v295) & 0x1EE6);
  v300 = v299 - 2010201971;
  LODWORD(v295) = *(v299 + 0x7A5EE8284F11A678);
  v301 = (v292 ^ 0xBFFFBBFF7EEF7EEFLL) + v19 + ((2 * v292) & 0x1DDE);
  LODWORD(v250) = (76 * v298) ^ v291;
  v302 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v301) = ((v250 ^ *(v302 + ((v280 + v298 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v302 + ((v280 + v298 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v301 + 17)) ^ *(v301 - 0x5A3055BB80C9904) ^ *(v302 + ((v280 + v301 - 2129624815 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v302 + ((v280 + v301 - 2129624815 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v301) = ((v301 ^ 0xFFDEFF) & (v295 ^ (76 * v300) ^ *(v302 + ((v280 + v300 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v302 + ((v280 + v300 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xDEDE22) | v301 & 0x212100) << 8;
  *(*v159 + 60) = ((v260 ^ (76 * v253) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v280 + v253 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v280 + v253 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xCEAA934C) & (v301 ^ 0x3064E9FF) | v301 & 0x31556C00) ^ 0xDEFED33C;
  LODWORD(v294) = 1645 * (BYTE1(LODWORD(STACK[0x474])) ^ 0x96) + 2113825;
  v303 = v294 - 2696 * (((12744711 * v294) >> 32) >> 3);
  LODWORD(v301) = 1645 * (BYTE2(LODWORD(STACK[0x474])) ^ 0xD2) + 2111129;
  v304 = v301 - 2696 * (((12744711 * v301) >> 32) >> 3);
  LODWORD(v253) = 1645 * (HIBYTE(LODWORD(STACK[0x474])) ^ 0x31) + 2113825;
  v305 = v253 - 2696 * (((12744711 * v253) >> 32) >> 3);
  v306 = (v303 ^ 0x6AF2DFDEAF6FBFFFLL) + 2 * v303 + v19;
  LODWORD(v253) = v306 + 1351630849;
  LODWORD(v260) = *(v306 + 0x4F69D6C5177325ECLL);
  v307 = (v305 ^ 0x39B2E9ECFDB7759FLL) + v19 + ((2 * v305) & 0xB3E);
  v308 = (v304 ^ 0x31FDFFDFBFEBB92ELL) + v19 + ((2 * v304) & 0x125C);
  v309 = v308 + 1075070674;
  v310 = *(v308 - 0x77A1493BF908D343);
  LODWORD(v308) = 1645 * (LODWORD(STACK[0x474]) ^ 0x2C) + 2113825;
  v311 = v308 - 2696 * (((12744711 * v308) >> 32) >> 3);
  LODWORD(v280) = *(*v22 + (*v20 & 0xC6917C3C));
  v312 = (v311 ^ 0xEC9F67FFD5E3D39CLL) + v19 + ((2 * v311) & 0x738);
  LODWORD(v305) = v312 + 706489444;
  LODWORD(v295) = *(v312 - 0x3242B15C0F00EDB1);
  v313 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v312) = (((76 * (v307 + 97)) ^ *(v307 - 0x7F56334936D48FB4) ^ *(v313 + ((v280 + v307 + 38308449 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v313 + ((v280 + v307 + 38308449 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v309) ^ v310 ^ *(v313 + ((v280 + v309 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v313 + ((v280 + v309 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v312) = ((v260 ^ (76 * v253) ^ *(v313 + ((v280 + v253 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v313 + ((v280 + v253 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x81A2C9) & (v312 ^ 0x87AFFF) | v312 & 0x7E5D00) << 8;
  *(*v159 + 84) = ((v295 ^ (76 * v305) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v280 + v305 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v280 + v305 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x6AFBB8A6) & (v312 ^ 0xFE5D42FF) | v312 & 0x95044700) ^ 0xEBFBB9D6;
  LODWORD(v312) = 1645 * (BYTE2(LODWORD(STACK[0x468])) ^ 0xCD) + 2113825;
  v314 = v312 - 2696 * (((12744711 * v312) >> 32) >> 3);
  LODWORD(v307) = 1645 * (LODWORD(STACK[0x468]) ^ 0x45) + 2113825;
  v315 = v307 - 2696 * (((12744711 * v307) >> 32) >> 3);
  LODWORD(v307) = 1645 * (HIBYTE(LODWORD(STACK[0x468])) ^ 0x7A) + 2113825;
  v316 = v307 - 2696 * (((12744711 * v307) >> 32) >> 3);
  LODWORD(v280) = 1645 * (BYTE1(LODWORD(STACK[0x468])) ^ 0x96) + 2113825;
  v317 = v280 - 2696 * (((12744711 * v280) >> 32) >> 3);
  v318 = (v314 ^ 0xFE2D7F75C6D6FBAFLL) + v19 + ((2 * v314) & 0x175E);
  LODWORD(v295) = v318 + 958989393;
  LODWORD(v305) = *(v318 - 0x43D0C8D1FFF415C4);
  v319 = (v316 ^ 0xFF5FFF97FFF7FDB3) + v19 + ((2 * v316) & 0x1B66);
  v320 = (v317 ^ 0xB4DBED5CFF7FB9D5) + v19 + ((2 * v317) & 0x13AA);
  v321 = (v315 ^ 0x8FFDE6FEE6F2FFD5) + v19 + ((2 * v315) & 0x1FAA);
  v322 = *(*v22 + (*v20 & 0xC6917C3C));
  v323 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v319) = (76 * (v319 + 77)) ^ *(v319 - 0x450348F4391517C8) ^ *(v323 + ((v322 + v319 + 524877 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v323 + ((v322 + v319 + 524877 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70;
  LODWORD(v319) = ((((v319 >> 4) & 1) << 20) | 0x70) ^ *(v320 + 0x580C946C7632C16) ^ (76 * (v320 + 43)) ^ *(v323 + ((v322 + v320 + 8406571 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v323 + ((v322 + v320 + 8406571 + v36) & (qword_101362A48 ^ 0x21E69720))) | (v319 << 16) & 0xFFEFFFFF | (((76 * v295) ^ v305 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v322 + v295 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v322 + v295 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  *(*v159 + 28) = ((*(v321 + 0x2A5ECFA4DFEFE616) ^ (76 * (v321 + 43)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v322 + v321 + 420282411 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v322 + v321 + 420282411 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xA5105E03) & ~(v319 << 8) | (v319 << 8) & 0x5AEFA100) ^ 0xA5105E73;
  LODWORD(v323) = STACK[0x588];
  v324 = 1645 * (BYTE1(v323) ^ 0x47) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE1(v323) ^ 0x47u) + 2113825)) >> 32) >> 3);
  v325 = 1645 * (BYTE3(v323) ^ 0x4A) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE3(v323) ^ 0x4A) + 2113825)) >> 32) >> 3);
  v326 = (v325 ^ 0x56F49E77BDFFF3CFLL) + v19 + ((2 * v325) & 0x79E);
  v327 = v326 + 1107299377;
  v328 = *(v326 + 0x6368182C08E2F21CLL);
  v329 = 1645 * (BYTE2(v323) ^ 0x7A) + 2113825 - 5392 * (((12744711 * (1645 * (BYTE2(v323) ^ 0x7Au) + 2113825)) >> 32) >> 4);
  v333 = (v324 ^ 0xB7FFFFD5AB8B7EFELL) + v19 + ((2 * v324) & 0x1DFC);
  v330 = v333 + 1416921346;
  v331 = *(v333 + 0x25CB6CE1B5766EDLL);
  v332 = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v333) = v329 - 2696;
  if (v329 >= 0xA88)
  {
    v333 = v333;
  }

  else
  {
    v333 = v329;
  }

  v334 = (v333 ^ 0x777DDFF77EDB3BDFLL) + v19 + ((2 * v333) & 0xFDB677BE);
  v335 = (76 * v327) ^ v328;
  v336 = v332 + v327;
  v337 = qword_101362A48 ^ 0x21E69720;
  v338 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v334) = (76 * (v334 + 33)) ^ *(v334 + 0x42DED6AC4807AA0CLL) ^ *(v338 + ((v332 + v334 - 2128296927 - 963544004) & v337)) ^ *(v338 + ((v332 + v334 - 2128296927 + v36) & v337)) ^ 0x70;
  HIDWORD(v339) = (((76 * v330) ^ v331 ^ *(v338 + ((v332 + v330 - 963544004) & v337)) ^ *(v338 + ((v332 + v330 + v36) & v337)) ^ 0xB4) & 0xFFFF00FF | (v334 << 8)) ^ 0xC4;
  LODWORD(v339) = (v334 << 8) | ((v335 ^ *(v338 + ((v336 - 963544004) & v337)) ^ *(v338 + ((v336 + v36) & v337)) ^ 0x70) << 16);
  v340 = 1645 * (LODWORD(STACK[0x588]) ^ 0x62) + 2113825 - 2696 * (((12744711 * (1645 * (LODWORD(STACK[0x588]) ^ 0x62u) + 2113825)) >> 32) >> 3);
  v341 = (v340 ^ 0x65FBFFDBFFBDEF97) + v19 + ((2 * v340) & 0x1F2E);
  HIDWORD(v339) = v339 >> 9;
  LODWORD(v339) = HIDWORD(v339);
  *(*v159 + 44) = ((*(v341 + 0x5460B6C7C724F654) ^ (76 * (v341 + 105)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v332 + v341 + 4329577 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v332 + v341 + 4329577 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xDDA19897) & (((v339 >> 23) << 8) ^ 0xDFE3FBFF) | ((v339 >> 23) << 8) & 0x225E6700) ^ 0xDDA198E7;
  LODWORD(v341) = 1645 * (BYTE2(LODWORD(STACK[0x5D0])) ^ 0xCE) + 2113825;
  v342 = v341 - 2696 * (((12744711 * v341) >> 32) >> 3);
  LODWORD(v334) = 1645 * (BYTE1(LODWORD(STACK[0x5D0])) ^ 0xEB) + 2113825;
  v343 = v334 - 2696 * (((12744711 * v334) >> 32) >> 3);
  LODWORD(v341) = 1645 * (HIBYTE(LODWORD(STACK[0x5D0])) ^ 0x88) + 2113825;
  v344 = v341 - 2696 * (((12744711 * v341) >> 32) >> 3);
  v345 = (v344 ^ 0xD46FFF2EFBBFADDBLL) + v19 + ((2 * v344) & 0x1BB6);
  LODWORD(v338) = v345 + 71324197;
  v346 = *(v345 - 0x1A13488B34DCC7F0);
  LODWORD(v345) = 1645 * (LODWORD(STACK[0x5D0]) ^ 0x77) + 2113825;
  v347 = v345 - 2696 * (((12744711 * v345) >> 32) >> 3);
  v348 = (v343 ^ 0x3BA5CFEBFDF6BEFBLL) + v19 + ((2 * v343) & 0x1DF6);
  LODWORD(v345) = v348 + 34160901;
  v349 = *(*v22 + (*v20 & 0xC6917C3C));
  v350 = qword_101362A48 ^ 0x21E69720;
  v351 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v348) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v349 + v348 + 34160901 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v348 + 0x7EB6E6B7C8EC26F0);
  v352 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v349 + v345 + v36) & (qword_101362A48 ^ 0x21E69720)));
  HIDWORD(v339) = v348 ^ (12 * v345) ^ v352 ^ 0x30;
  LODWORD(v339) = (v348 ^ (76 * v345) ^ v352 ^ 0x40) << 24;
  LODWORD(v348) = (v339 >> 30) + (~(2 * (v339 >> 30)) | 0xFFFFFF9F);
  v353 = (v342 ^ 0x57FE7DE6DFEFEFFFLL) + 2 * v342 + v19;
  v354 = (v347 ^ 0xABF5FFFBBF7DF9FFLL) + v19 + ((2 * v347) & 0x13FE);
  HIDWORD(v339) = (v348 - 79) ^ 0x30;
  LODWORD(v339) = (v348 << 24) + 822083584;
  *(*v188 + 48) = (*(v354 + 0xE66B6A80764EBECLL) ^ (76 * (v354 + 1)) ^ *(v351 + ((v349 + v354 + 1082263041 - 963544004) & v350)) ^ *(v351 + ((v349 + v354 + 1082263041 + v36) & v350)) | (((((76 * v338) ^ v346 ^ *(v351 + ((v349 + v338 - 963544004) & v350)) ^ *(v351 + ((v349 + v338 + v36) & v350)) ^ 0x70) << 16) | (((76 * (v353 + 1)) ^ *(v353 + 0x625E38BCE6F2F5ECLL) ^ *(v351 + ((v349 + v353 + 537923585 - 963544004) & v350)) ^ *(v351 + ((v349 + v353 + 537923585 + v36) & v350)) ^ 0x70) << 8) | (((v339 >> 30) >> 4) | (16 * (v339 >> 30)))) << 8)) ^ 0x70;
  LODWORD(v348) = 1645 * (BYTE2(LODWORD(STACK[0x458])) ^ 0xA7) + 2113825;
  v355 = v348 - 2696 * (((12744711 * v348) >> 32) >> 3);
  LODWORD(v348) = 1645 * (LODWORD(STACK[0x458]) ^ 0xF2) + 2113825;
  v356 = v348 - 2696 * (((12744711 * v348) >> 32) >> 3);
  LODWORD(v348) = 1645 * (HIBYTE(LODWORD(STACK[0x458])) ^ 0xC7) + 2113825;
  v357 = v348 - 2696 * (((12744711 * v348) >> 32) >> 3);
  v358 = (v357 ^ 0xEBBBFFF6E5FFAFFFLL) + 2 * v357 + v19;
  LODWORD(v342) = v358 + 436228097;
  LODWORD(v354) = *(v358 - 0x315F49531F1CCA14);
  LODWORD(v358) = 1645 * (BYTE1(LODWORD(STACK[0x458])) ^ 0x6C) + 2113825;
  v359 = v358 - 2696 * (((12744711 * v358) >> 32) >> 3);
  v360 = (v359 ^ 0xEFFB73677B7E7FF3) + v19 + ((2 * v359) & 0x1FE6);
  v361 = v360 - 2071887859;
  LODWORD(v351) = *(v360 - 0x359EBCC3B49B9A08);
  v362 = *(*v22 + (*v20 & 0xC6917C3C));
  v363 = (v355 ^ 0x77DFFEFFB574BB7FLL) + v19 + ((2 * v355) & 0x16FE);
  v364 = (v356 ^ 0xAFAFDFF779B7BD57) + v19 + ((2 * v356) & 0x1AAE);
  v365 = (76 * v342) ^ v354;
  v366 = v362 + v342;
  LODWORD(v342) = qword_101362A48 ^ 0x21E69720;
  v367 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v363) = ((v365 ^ *(v367 + ((v366 - 963544004) & v342)) ^ *(v367 + ((v366 + v36) & v342)) ^ 0x70) << 16) | (((76 * (v363 - 127)) ^ *(v363 + 0x427CB7A4116E2A6CLL) ^ *(v367 + ((v362 + v363 + 1250641025 - 963544004) & v342)) ^ *(v367 + ((v362 + v363 + 1250641025 + v36) & v342)) ^ 0x70) << 8);
  LODWORD(v363) = ((v351 ^ (76 * v361) ^ *(v367 + ((v362 + v361 - 963544004) & v342)) ^ *(v367 + ((v362 + v361 + v36) & v342)) ^ 0x20AB78) & ~v363 | v363 & 0xDF5400) << 8;
  *(*v188 + 244) = ((*(v364 + 0xAACD6AC4D2B2894) ^ (76 * (v364 - 87)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v362 + v364 - 2042084695 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v362 + v364 - 2042084695 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xC54BD71D) & (v363 ^ 0xEFC0F7FF) | v363 & 0x3AB42800) ^ 0xE5EBDF6D;
  v368 = 1645 * (HIBYTE(LODWORD(STACK[0x598])) ^ 0x8E) + 2113825;
  v369 = v368 - 2696 * (((12744711 * v368) >> 32) >> 3);
  LODWORD(v363) = 1645 * (LODWORD(STACK[0x598]) ^ 0x1D) + 2113825;
  v370 = v363 - 2696 * (((12744711 * v363) >> 32) >> 3);
  v371 = (v370 ^ 0x69DFFFFBF9E9D04BLL) + v19 + ((2 * v370) & 0x96);
  v372 = v371 + 102117301;
  v373 = *(v371 + 0x507CB6A7CCF915A0);
  LODWORD(v371) = 1645 * (BYTE2(LODWORD(STACK[0x598])) ^ 0x92) + 2113825;
  v374 = (v369 ^ 0xFD7F3E7FCD6CFFB7) + v19 + ((2 * v369) & 0x1F6E);
  LODWORD(v364) = *(v374 - 0x432287DC068A19CCLL);
  LODWORD(v342) = v374 + 848494665;
  LODWORD(v369) = *(*v22 + (*v20 & 0xC6917C3C));
  v375 = ((v371 % 0xA88) ^ 0xF7C7F9FF5BFF5BF2) + v19 + ((2 * (v371 % 0xA88)) & 0x17E4);
  LODWORD(v374) = v375 - 1543461874;
  LODWORD(v367) = *(v375 - 0x3D6B435B951C7607);
  LODWORD(v375) = 1645 * (BYTE1(LODWORD(STACK[0x598])) ^ 0xED) + 2113825;
  v376 = v375 - 2696 * (((12744711 * v375) >> 32) >> 3);
  v377 = (v376 ^ 0x7FBE7DFEFBA4EEF6) + v19 + ((2 * v376) & 0x1DEC);
  v378 = (76 * v342) ^ v364;
  v379 = v369 + v342;
  LODWORD(v364) = qword_101362A48 ^ 0x21E69720;
  v380 = (v369 + v342 - 963544004) & (qword_101362A48 ^ 0x21E69720);
  v381 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v374) = ((v378 ^ *(v381 + v380) ^ *(v381 + ((v379 + v36) & v364)) ^ 0x70) << 16) | (((76 * v374) ^ v367 ^ *(v381 + ((v369 + v374 - 963544004) & v364)) ^ *(v381 + ((v369 + v374 + v36) & v364)) ^ 0x70) << 8);
  LODWORD(v377) = (*(v377 + 0x3A9E38A4CB3DF6F5) ^ (76 * (v377 + 10)) ^ *(v381 + ((v369 + v377 + 73077002 - 963544004) & v364)) ^ *(v381 + ((v369 + v377 + 73077002 + v36) & v364)) ^ 0xED93BE) & (v374 ^ 0xEFBBFF) | v374 & 0x126C00;
  *(*v188 + 176) = ((v373 ^ (76 * v372) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v369 + v372 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v369 + v372 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xBC751407) & ((v377 << 8) ^ 0x5166B9FF) | (v377 << 8) & 0x438AEB00) ^ 0xFDF7DE77;
  LODWORD(v374) = 1645 * (HIBYTE(LODWORD(STACK[0x448])) ^ 0xE1) + 2113825;
  v382 = v374 - 2696 * (((12744711 * v374) >> 32) >> 3);
  LODWORD(v377) = 1645 * (BYTE1(LODWORD(STACK[0x448])) ^ 0x5A) + 2113825;
  v383 = v377 - 2696 * (((12744711 * v377) >> 32) >> 3);
  v384 = (v382 ^ 0xDCE9FDDE55DF3AEBLL) + v19 + ((2 * v382) & 0x15D6);
  v385 = *v20;
  v386 = *(*v22 + (v385 & STACK[0x640]));
  v387 = qword_101362A48 ^ 0x21E69720;
  v388 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  v389 = (v383 ^ 0xF3A9EFFFB7FDEFFELL) + ((2 * v383) & 0x1FFC) + v19;
  LODWORD(v380) = v389 + 1208094722;
  v390 = *(v389 - 0x394D395BF11B0A13);
  HIDWORD(v339) = *(v384 - 0x228D473A8EFC5500) ^ (76 * (v384 + 21)) ^ *(v388 + ((v386 + v384 - 1440692971 - 963544004) & v387)) ^ *(v388 + ((v386 + v384 - 1440692971 + v36) & v387));
  LODWORD(v339) = HIDWORD(v339) ^ 0x70;
  LODWORD(v384) = 1645 * (BYTE2(LODWORD(STACK[0x448])) ^ 0x90) + 2113825;
  v391 = v384 - 2696 * (((12744711 * v384) >> 32) >> 3);
  v392 = (v391 ^ 0x6EDBF8FB577E5A75) + v19 + ((2 * v391) & 0x14EA);
  HIDWORD(v339) = v339 >> 1;
  LODWORD(v339) = HIDWORD(v339);
  LODWORD(v364) = (((v339 >> 14) >> 9) - (((v339 >> 14) >> 8) & 0x84C) + 1062) ^ *(v392 + 0x4B80BDA86F648B76) ^ (76 * (v392 - 117)) ^ *(v388 + ((v386 + v392 - 1467898485 - 963544004) & v387)) ^ *(v388 + ((v386 + v392 - 1467898485 + v36) & v387));
  LODWORD(v389) = 1645 * (LODWORD(STACK[0x448]) ^ 0xED) + 2113825;
  v393 = v389 - 2696 * (((12744711 * v389) >> 32) >> 3);
  v394 = (v393 ^ 0x1EDBF7FFBFEFD8D7) + v19 + ((2 * v393) & 0x11AE);
  LODWORD(v356) = v394 + 1074800425;
  v395 = *(v394 - 0x647F415BF90CF2ECLL);
  LODWORD(v394) = (76 * v380) ^ v390;
  v396 = *(*v22 + (v385 & STACK[0x648]));
  v397 = v394 ^ *(v388 + ((v396 + v380 - 963544004) & v387)) ^ *(v388 + ((v396 + v380 + v36) & v387));
  LODWORD(v394) = *(*v22 + (v385 & STACK[0x658])) + STACK[0x5E0];
  v398 = ((v394 + LODWORD(STACK[0x630])) - 0xCFB89CB16204905 * (qword_101362A48 ^ 0xDB653AB621E69720) - 0xCFB89CB16204905) & (qword_101362A48 ^ 0xDB653AB621E69720);
  LODWORD(v394) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v394 + 673210726) & (qword_101362A48 ^ 0x21E69720)));
  LODWORD(v398) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + v398);
  *(*v188 + 212) = ((v395 ^ (76 * v356) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v396 + v356 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v396 + v356 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x6B5A5F04) & (((v364 << 16) | ((v397 ^ 0x70) << 8)) ^ 0xEB2CDFFF) | ((v364 << 16) | ((v397 ^ 0x70) << 8)) & 0x94A5A000) ^ 0x6F5E5F74;
  LODWORD(v385) = 1645 * (~LODWORD(STACK[0x5B8]) >> 24) + 2113825;
  v399 = v385 - 2696 * (((12744711 * v385) >> 32) >> 3);
  LODWORD(v394) = 6 * (((LODWORD(STACK[0x548]) ^ v394 ^ v398 ^ 0x4E81E40E) - 1229268584) ^ ((LODWORD(STACK[0x548]) ^ v394 ^ v398) - 199621526) ^ ((LODWORD(STACK[0x548]) ^ v394 ^ v398 ^ 0x6185A437) - 1715562065));
  LODWORD(v356) = (v394 + 774692086) & (2 * ((v394 + 774692086) & 0xAF1D8924 ^ 0x7FCD649C)) ^ (v394 + 774692086) & 0xAF1D8924 ^ 0x7FCD649C;
  LODWORD(v388) = LODWORD(STACK[0x608]) + 1645 * ((((v394 + 6) ^ (2 * ((((v394 + 774692086) ^ 0x7FCD649C) & (2 * (v394 + 774692086)) ^ 4) & (4 * v356) ^ v356))) & 0xA ^ 8) + (LODWORD(STACK[0x5B8]) ^ 0x552));
  LODWORD(v398) = 1645 * (BYTE1(LODWORD(STACK[0x5B8])) ^ 0x62) + 2113825;
  v400 = v398 - 2696 * (((12744711 * v398) >> 32) >> 3);
  v401 = (v399 ^ 0xFE6D9DBAFEDEFD6FLL) + v19 + ((2 * v399) & 0x1ADE);
  LODWORD(v364) = v401 + 18940561;
  LODWORD(v381) = *(v401 - 0x4410E71737FC1784);
  LODWORD(v394) = 1645 * (BYTE2(LODWORD(STACK[0x5B8])) ^ 0xF9) + 2113825;
  v402 = v394 - 2696 * (((12744711 * v394) >> 32) >> 3);
  v403 = (v402 ^ 0xDF7D17F9EBC3DCBFLL) + v19 + ((2 * v402) & 0x197E);
  LODWORD(v367) = *(v403 - 0x2520615624E0F6D4);
  v404 = v403 + 339485505;
  v405 = (v400 ^ 0x3D8EDEEF7F771FFFLL) + 2 * v400 + v19;
  LODWORD(v356) = v405 - 2138513407;
  LODWORD(v399) = *(v405 + 0x7CCDD7B4476BC5ECLL);
  LODWORD(v401) = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v405) = (76 * v364) ^ v381;
  LODWORD(v400) = v401 + v364;
  LODWORD(v364) = qword_101362A48 ^ 0x21E69720;
  v406 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v405) = ((v405 ^ *(v406 + ((v400 - 963544004) & v364)) ^ *(v406 + ((v400 + v36) & v364)) ^ 0x70) << 16) | (((76 * v404) ^ v367 ^ *(v406 + ((v401 + v404 - 963544004) & v364)) ^ *(v406 + ((v401 + v404 + v36) & v364)) ^ 0x70) << 8);
  v407 = ((v388 % 0xA88) ^ 0xABDDFEFFB5F7B7F9) + v19 + ((2 * (v388 % 0xA88)) & 0xFF2);
  LODWORD(v405) = ((v399 ^ (76 * v356) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v401 + v356 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v401 + v356 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xCB1244) & (v405 ^ 0xCB92FF) | v405 & 0x34ED00) << 8;
  *(*v188 + 12) = ((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v407 + 1242056711 + v401 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v407 + 0xE7EB7A410EB2DF2) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v407 + 1242056711 + v401 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ (76 * (v407 + 7)) ^ 0xDABE75E9) & (v405 ^ 0x31AD43FF) | v405 & 0x25418A00) ^ 0xDBBE7599;
  LODWORD(v407) = 1645 * (BYTE2(LODWORD(STACK[0x590])) ^ 0xB2) + 2113825;
  v408 = v407 - 2696 * (((12744711 * v407) >> 32) >> 3);
  LODWORD(v388) = 1645 * (HIBYTE(LODWORD(STACK[0x590])) ^ 0x18) + 2113825;
  v409 = v388 - 2696 * (((12744711 * v388) >> 32) >> 3);
  v410 = (v409 ^ 0xEBD5E33FF7FF6FFFLL) + 2 * v409 + v19;
  LODWORD(v401) = *(v410 - 0x31792C9C311C8A14);
  LODWORD(v399) = v410 + 134254593;
  LODWORD(v405) = 1645 * (BYTE1(LODWORD(STACK[0x590])) ^ 0xAD) + 2113825;
  v411 = v405 - 2696 * (((12744711 * v405) >> 32) >> 3);
  v412 = (v408 ^ 0xFBE5FF7677AFEDA6) + v19 + ((2 * v408) & 0x1B4C);
  LODWORD(v364) = v412 - 2008018342;
  LODWORD(v406) = *(v412 - 0x418948D2B0CD07BBLL);
  LODWORD(v410) = *(*v22 + (*v20 & 0xC6917C3C));
  v413 = (v411 ^ 0xFFFBEBDFAB7A7EDDLL) + v19 + ((2 * v411) & 0x1DBA);
  LODWORD(v412) = 1645 * (LODWORD(STACK[0x590]) ^ 0x9B) + 2113825;
  v414 = v412 - 2696 * (((12744711 * v412) >> 32) >> 3);
  LODWORD(v412) = (76 * v399) ^ v401;
  LODWORD(v356) = qword_101362A48 ^ 0x21E69720;
  v415 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v412) = ((v412 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v410 + v399 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v415 + ((v410 + v399 + v36) & v356)) ^ 0x70) << 16) | (((76 * v364) ^ v406 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v410 + v364 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v415 + ((v410 + v364 + v36) & v356)) ^ 0x70) << 8);
  LODWORD(v413) = (*(v413 - 0x459F353BE49798F2) ^ (76 * (v413 + 35)) ^ *(v415 + ((v410 + v413 + 1418035491 - 963544004) & v356)) ^ *(v415 + ((v410 + v413 + 1418035491 + v36) & v356)) ^ 0xB80D7) & (v412 ^ 0xABEFFF) | v412 & 0xF47F00;
  v416 = (v414 ^ 0x7FFEAD7ECFE7FF7FLL) + v19 + ((2 * v414) & 0x1EFE);
  *(*v188 + 136) = ((*(v416 + 0x3A5E0924F6FAE66CLL) ^ (76 * (v416 - 127)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v410 + v416 + 806879361 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ 0xF2DB46EB ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (((v410 + v416 + 806879361 + v36) + 0x16336AA9E3DF74FFLL * (qword_101362A48 ^ 0xDB653AB621E69720) + 0x16336AA9E3DF74FFLL) & (qword_101362A48 ^ 0xDB653AB621E69720)))) & ((v413 << 8) ^ 0xFD5B79FF) | (v413 << 8) & 0xD24B900) ^ 0xFBDBE79B;
  LODWORD(v416) = 1645 * (BYTE1(LODWORD(STACK[0x438])) ^ 0xF4) + 2113825;
  v418 = v416 - 2696 * (((12744711 * v416) >> 32) >> 3);
  LODWORD(v410) = 1645 * (HIBYTE(LODWORD(STACK[0x438])) ^ 0x19) + 2113825;
  v419 = v410 - 5392 * (((12744711 * v410) >> 32) >> 4);
  LODWORD(v415) = 1645 * (LODWORD(STACK[0x438]) ^ 0x69) + 2113825;
  v420 = v415 - 2696 * (((12744711 * v415) >> 32) >> 3);
  if (v419 >= 0xA88)
  {
    v421 = v419 - 2696;
  }

  else
  {
    v421 = v419;
  }

  v422 = (v418 ^ 0x83EE5DFEE7FFD7DFLL) + v19 + ((2 * v418) & 0xFBE);
  v423 = v422 + 402663457;
  v424 = *(v422 + 0x366E58A4DEE30E0CLL);
  v425 = (v421 ^ 0x7A567DFB3FFFEB59) + v19 + ((2 * v421) & 0x7FFFD6B2);
  v417 = BYTE2(LODWORD(STACK[0x438])) ^ 0xD5;
  v426 = 1645 * v417 + 2113825 - 2696 * (((12744711 * (1645 * v417 + 2113825)) >> 32) >> 3);
  v427 = (v426 ^ 0x7D77BFF6706A9C7FLL) + v19 + ((2 * v426) & 0x18FE);
  v428 = v427 - 1886035071;
  v429 = *(v427 + 0x3CE4F6AD5678496CLL);
  v430 = (v420 ^ 0x3FB3FCBC7FFF91DELL) + v19 + ((2 * v420) & 0x3BC);
  v431 = v430 - 2147455454;
  v432 = *(v430 + 0x7AA8B9E746E3540DLL);
  v433 = *(*v22 + (*v20 & 0xC6917C3C));
  v434 = qword_101362A48 ^ 0x21E69720;
  LODWORD(v430) = (((76 * (v425 - 89)) ^ *(v425 + 0x400638A886E2FA92) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v433 + v425 - 1073736537 - 963544004) & v434)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v433 + v425 - 1073736537 + v36) & v434)) ^ 0x70) << 16) | (((76 * v428) ^ v429 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v433 + v428 - 963544004) & v434)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v433 + v428 + v36) & v434)) ^ 0x70) << 8);
  LODWORD(v430) = ((v430 ^ 0x79C3FF) & (v424 ^ (76 * v423) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v433 + v423 - 963544004) & v434)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v433 + v423 + v36) & v434)) ^ 0x780333) | v430 & 0x87FC00) << 8;
  *(*v188 + 224) = ((v430 ^ 0x1083CFF) & (v432 ^ (76 * v431) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v433 + v431 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v433 + v431 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x49097F6C) | v430 & 0xB6F68000) ^ 0x790B7F1C;
  LODWORD(v430) = 1645 * (BYTE1(LODWORD(STACK[0x440])) ^ 0x12) + 2113825;
  v435 = v430 - 2696 * (((12744711 * v430) >> 32) >> 3);
  LODWORD(v425) = 1645 * (HIBYTE(LODWORD(STACK[0x440])) ^ 0x7D) + 2113825;
  v436 = v425 - 2696 * (((12744711 * v425) >> 32) >> 3);
  v437 = (v435 ^ 0x1FFFD9DDDF72BEF7) + v19 + ((2 * v435) & 0x1DEE);
  v438 = v437 + 546128137;
  v439 = *(v437 - 0x65A3233A188FD90CLL);
  v440 = (v436 ^ 0x3FE73F57D3DFF7F3) + v19 + ((2 * v436) & 0xFE6);
  v441 = *(*v22 + (*v20 & 0xC6917C3C));
  v442 = 1645 * (BYTE2(LODWORD(STACK[0x440])) ^ 0x13) + 2113825;
  v443 = v442 - 2696 * (((12744711 * v442) >> 32) >> 3);
  v444 = (v443 ^ 0x77FD3DFD52EFFFF7) + v19 + ((2 * v443) & 0x1FEE);
  v445 = v444 - 1391460343;
  v446 = *(v444 + 0x425F78A673F2E5F4);
  LODWORD(v444) = 1645 * (LODWORD(STACK[0x440]) ^ 0xC) + 2113825;
  v447 = v444 - 2696 * (((12744711 * v444) >> 32) >> 3);
  LODWORD(v440) = (((76 * (v440 + 13)) ^ *(v440 + 0x7A75774BF302EDF8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v441 + v440 + 740296717 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (((v441 + v440 + 740296717 + v36) - 0x4E24BD0497A996BFLL * (qword_101362A48 ^ 0xDB653AB621E69720) - 0x4E24BD0497A996BFLL) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ 0x70) << 16) | (((76 * v445) ^ v446 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v441 + v445 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v441 + v445 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  v448 = (v447 ^ 0x7F6BEF7AE5FFFEDDLL) + v19 + ((2 * v447) & 0x1DBA);
  LODWORD(v440) = ((v439 ^ (76 * v438) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v441 + v438 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v441 + v438 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x6643FB) & ~v440 | v440 & 0x99BC00) << 8;
  *(*v188 + 268) = ((*(v448 + 0x3AF0C728E0E2E70ELL) ^ (76 * (v448 + 35)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v441 + v448 + 436207907 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v441 + v448 + 436207907 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xC10584B1) & (v440 ^ 0x83BC25FF) | v440 & 0x3EFA7B00) ^ 0xE7478FC1;
  v449 = STACK[0x420];
  v450 = 1684480 * (BYTE2(LODWORD(STACK[0x420])) ^ 0x5B) - 2130410496;
  LODWORD(v440) = 1645 * (BYTE2(LODWORD(STACK[0x428])) ^ 0x69) + 2113825;
  v451 = v440 - 2696 * (((12744711 * v440) >> 32) >> 3);
  LODWORD(v448) = 1645 * (BYTE1(LODWORD(STACK[0x428])) ^ 0x8E) + 2113825;
  v452 = v448 - 2696 * (((12744711 * v448) >> 32) >> 3);
  LODWORD(v448) = 1645 * (HIBYTE(LODWORD(STACK[0x428])) ^ 0x6E) + 2113825;
  v453 = v448 - 2696 * (((12744711 * v448) >> 32) >> 3);
  v454 = (v453 ^ 0xBEFFFEEBBBDA3DBBLL) + v19 + ((2 * v453) & 0x1B76);
  v455 = 1645 * (LODWORD(STACK[0x428]) ^ 0x53) + 2113825;
  v456 = v455 - 2696 * (((12744711 * v455) >> 32) >> 3);
  v457 = (v451 ^ 0xF9BFB7F3FFBFFB73) + v19 + ((2 * v451) & 0x16E6);
  v458 = (v456 ^ 0xFFEEF7FFDFFEC1F5) + v19 + ((2 * v456) & 0x3EA);
  v459 = *(*v22 + (*v20 & 0xC6917C3C));
  v460 = *(v457 - 0x3F63015038DD1588);
  LODWORD(v457) = v457 + 4195469;
  LODWORD(v457) = (((76 * (v454 + 69)) ^ *(v454 - 0x4A34847F4F757D0) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v459 + v454 + 1143325253 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v459 + v454 + 1143325253 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v457) ^ v460 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v459 + v457 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (((v459 + v457 - 963544004) + 0x3C03C05A1F3425E8 * (qword_101362A48 ^ 0xDB653AB621E69720) + 0x3C03C05A1F3425E8) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ 0x70) << 8);
  v461 = (v452 ^ 0xFFEDFE7B3EEC7AF6) + v19 + ((2 * v452) & 0x15EC);
  LODWORD(v461) = (*(v461 - 0x459147D77809950BLL) ^ (76 * (v461 + 10)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v459 + v461 - 1055685366 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v459 + v461 - 1055685366 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xB13CC1) & (v457 ^ 0xBD3CFF);
  v462 = v188;
  *(*v188 + 316) = ((*(v458 - 0x4592415C191BDC0ALL) ^ (76 * (v458 + 11)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v459 + v458 + 536952331 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ 0xF527B2F ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (((v459 + v458 + 536952331 + v36) + 0x763603CEEF154FFBLL * (qword_101362A48 ^ 0xDB653AB621E69720) + 0x763603CEEF154FFBLL) & (qword_101362A48 ^ 0xDB653AB621E69720)))) & (((v461 | v457 & 0x4EC300) << 8) ^ 0x4ECB4AFF) | ((v461 | v457 & 0x4EC300) << 8) & 0xF0AD8400) ^ 0xBF7EFB5F;
  LODWORD(v457) = 1645 * ((((v449 >> 11) ^ 0x8A000) + 10526720) >> 13);
  v463 = 1645 * (BYTE1(v449) ^ 0x2A) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE1(v449) ^ 0x2Au) + 2113825)) >> 32) >> 3);
  v464 = (v463 ^ 0xAEEFD89DFB7AFFAFLL) + v19 + ((2 * v463) & 0x1F5E);
  LODWORD(v456) = v464 + 75825233;
  v465 = ((v457 % 0xA88) ^ 0x77DB4BFF6D7DB67FLL) + v19 + ((2 * (v457 % 0xA88)) & 0xCFE);
  v466 = v465 - 1836955263;
  v467 = *(v465 + 0x42816AA459652F6CLL);
  v468 = (v450 >> 10) - 2696 * (v450 / 0x2A2000);
  v469 = (v468 ^ 0xE6DF7FFCF6BDFCBFLL) + v19 + ((2 * v468) & 0x197E);
  LODWORD(v452) = v469 + 155321153;
  v470 = *(v469 - 0x2C82C9592FDB16D4);
  v471 = *(*v22 + (*v20 & 0xC6917C3C));
  v472 = 1645 * (v449 ^ 0x59) + 2113825 - 2696 * (((12744711 * (1645 * (v449 ^ 0x59u) + 2113825)) >> 32) >> 3);
  v473 = (v472 ^ 0x8FACFA7FB6BD5FF1) + v19 + ((2 * v472) & 0x1FE2);
  LODWORD(v444) = v473 + 1229103119;
  v474 = *(v473 + 0x2AAFBC24102585FALL);
  LODWORD(v473) = (((76 * v466) ^ v467 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v471 + v466 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v471 + v466 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v452) ^ v470 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v471 + v452 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v471 + v452 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  *(*v188 + 184) = ((((*(v464 + 0xB6CDE05CB67E63CLL) ^ (76 * v456) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v471 + v456 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v471 + v456 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70478A) & ~v473 | v473 & 0x8FB800) << 8) - (v474 ^ (76 * v444) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v471 + v444 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v471 + v444 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xFFFDFF8F) - 131073) ^ 0x7047FA00;
  LODWORD(v464) = 1645 * ~HIWORD(LODWORD(STACK[0x5B0])) + 2113825;
  v475 = v464 - 2696 * (((12744711 * v464) >> 32) >> 3);
  v476 = (v475 ^ 0xF9B6F6EBFEFAFFF8) + ((2 * v475) & 0x1FF0) + v19;
  LODWORD(v458) = v476 + 17104904;
  LODWORD(v444) = *(v476 - 0x3F5A404838181A0DLL);
  LODWORD(v476) = 1645 * (HIBYTE(LODWORD(STACK[0x5B0])) ^ 9) + 2113825;
  v477 = v476 - 2696 * (((12744711 * v476) >> 32) >> 3);
  LODWORD(v473) = 1645 * (LODWORD(STACK[0x5B0]) ^ 0xE8) + 2113825;
  v478 = v473 - 2696 * (((12744711 * v473) >> 32) >> 3);
  v479 = (v478 ^ 0xBEEEBFAF0E9F3DF5) + v19 + ((2 * v478) & 0x1BEA);
  v480 = v479 - 245317109;
  LODWORD(v456) = *(v479 - 0x492090B47BC580ALL);
  LODWORD(v479) = 1645 * (BYTE1(LODWORD(STACK[0x5B0])) ^ 0x76) + 2113825;
  v481 = v479 - 2696 * (((12744711 * v479) >> 32) >> 3);
  v482 = (v477 ^ 0xFDEFFD77B7FDDF8FLL) + v19 + ((2 * v477) & 0x1F1E);
  v483 = *(*v22 + (*v20 & 0xC6917C3C));
  v484 = v482 + 1208098929;
  v485 = (v481 ^ 0xDDFE33FEF5F3DC7FLL) + v19 + ((2 * v481) & 0x18FE);
  LODWORD(v458) = (((76 * v484) ^ *(v482 - 0x439346D3F11AF9A4) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v483 + v484 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v483 + v484 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v458) ^ v444 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v483 + v458 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v483 + v458 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v485) = ((*(v485 - 0x23A17D5B2F10F694) ^ (76 * (v485 - 127)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v483 + v485 + 168567681 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v483 + v485 + 168567681 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xC624A3) & ~v458 | v458 & 0x39DB00) << 8;
  *(*v188 + 252) = ((v456 ^ (76 * v480) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v483 + v480 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v483 + v480 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xC4D87BC9) & (v485 ^ 0x39F92CFF) | v485 & 0x3B278400) ^ 0xC6FCFBB9;
  LODWORD(v485) = 1645 * (BYTE1(LODWORD(STACK[0x5A8])) ^ 0xEA) + 2113825;
  v486 = v485 - 2696 * (((12744711 * v485) >> 32) >> 3);
  v487 = 1645 * (HIBYTE(LODWORD(STACK[0x5A8])) ^ 0x91) + 2113825;
  v488 = v487 - 2696 * (((12744711 * v487) >> 32) >> 3);
  LODWORD(v482) = 1645 * (BYTE2(LODWORD(STACK[0x5A8])) ^ 0x9A) + 2113825;
  v489 = v482 - 2696 * (((12744711 * v482) >> 32) >> 3);
  v490 = (v486 ^ 0x7FFE3EEB6896DDEBLL) + v19 + ((2 * v486) & 0x1BD6);
  LODWORD(v444) = v490 - 1754717675;
  v491 = *(v490 + 0x3A5E77B85E4C0800);
  v492 = (v488 ^ 0x57CA7BAF46FBFFFDLL) + v19 + ((2 * v488) & 0x1FFA);
  v493 = (v489 ^ 0xB65FCF73D7FC73F7) + v19 + ((2 * v489) & 0x7EE);
  LODWORD(v488) = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v492) = (((76 * (v492 + 3)) ^ *(v492 + 0x62923AF47FE6E5EELL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v488 + v492 - 1190920189 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v488 + v492 - 1190920189 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v493 + 9)) ^ *(v493 + 0x3FCE72FEEE671F4) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v488 + v493 + 671321097 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v488 + v493 + 671321097 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  HIDWORD(v494) = v491 ^ (76 * v444) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v488 + v444 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v488 + v444 + v36) & (qword_101362A48 ^ 0x21E69720)));
  LODWORD(v494) = ((HIDWORD(v494) ^ 0x2EB649C8) & ~v492 | v492 & 0x49B600) ^ 0x2EB649B8;
  LODWORD(v493) = 1645 * (LODWORD(STACK[0x5A8]) ^ 0x7D) + 2113825;
  v495 = v493 - 2696 * (((12744711 * v493) >> 32) >> 3);
  v496 = (v495 ^ 0xECFD573F9E7FF8EFLL) + v19 + ((2 * v495) & 0x11DE);
  HIDWORD(v494) = v494 >> 3;
  LODWORD(v494) = HIDWORD(v494);
  *(*v188 + 72) = ((*(v496 - 0x32A0A09BD79D1304) ^ (76 * (v496 + 17)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v488 + v496 + 1635780369 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v488 + v496 + 1635780369 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x95E482D9) & (((v494 >> 29) << 8) ^ 0xDFE4A2FF) | ((v494 >> 29) << 8) & 0x6A1B7D00) ^ 0x95E482A9;
  LODWORD(v492) = 1645 * (BYTE1(LODWORD(STACK[0x508])) ^ 0x6B) + 2113825;
  v497 = v492 - 2696 * (((12744711 * v492) >> 32) >> 3);
  LODWORD(v488) = 1645 * (HIBYTE(LODWORD(STACK[0x508])) ^ 0x4A) + 2113825;
  v498 = v488 - 2696 * (((12744711 * v488) >> 32) >> 3);
  LODWORD(v496) = 1645 * ((BYTE2(LODWORD(STACK[0x508])) ^ 0x5CC) + ((2 * (HIWORD(LODWORD(STACK[0x508])) ^ 0x4AC9)) & 0xA));
  v499 = (v496 - 2696 * ((1593089 * v496) >> 32));
  v500 = (v499 ^ 0xE89F2FF7F36BFDDDLL) + v19 + ((2 * v499) & 0x1BBA);
  LODWORD(v456) = v500 + 211026467;
  LODWORD(v444) = *(v500 - 0x2E4279542C8917F2);
  v501 = (v498 ^ 0x7B995F2B74AE3BCELL) + v19 + ((2 * v498) & 0x179C);
  v502 = (v497 ^ 0xF9EAFB7FCFFC5F13) + v19 + ((2 * v497) & 0x1E26);
  v503 = v502 + 805544173;
  LODWORD(v452) = *(v502 - 0x3F8E44DC09197928);
  LODWORD(v498) = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v502) = (((76 * (v501 + 50)) ^ *(v501 + 0x3EC357785234AA1DLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v501 - 1957575630 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v501 - 1957575630 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v456) ^ v444 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v456 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v456 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v501) = 1645 * (LODWORD(STACK[0x508]) ^ 0x60) + 2113825;
  v504 = v501 - 2696 * (((12744711 * v501) >> 32) >> 3);
  v505 = (v504 ^ 0x2F6041B3E0B5E279) + v19 + ((2 * v504) & 0x4F2);
  LODWORD(v502) = ((v502 ^ 0xFEFFFF) & (v452 ^ (76 * v503) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v503 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v503 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x96BAFD) | v502 & 0x694500) << 8;
  *(*v188 + 216) = ((v502 ^ 0x280010FF) & (*(v505 - 0x75038B1019D2FC8ELL) ^ (76 * (v505 - 121)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v505 + 524950919 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v505 + 524950919 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x3A381DAC) | v502 & 0xC5C7E200) ^ 0xBEBA9DDC;
  LODWORD(v502) = 1645 * (BYTE2(LODWORD(STACK[0x414])) ^ 0x91) + 2113825;
  v506 = v502 - 2696 * (((12744711 * v502) >> 32) >> 3);
  LODWORD(v502) = 1645 * (LODWORD(STACK[0x414]) ^ 0xBA) + 2113825;
  v507 = v502 - 2696 * (((12744711 * v502) >> 32) >> 3);
  LODWORD(v502) = 1645 * (HIBYTE(LODWORD(STACK[0x414])) ^ 0x4D) + 2113825;
  v508 = v502 - 2696 * (((12744711 * v502) >> 32) >> 3);
  v509 = (v508 ^ 0xFFB7DDC8FBBFFFEFLL) + v19 + ((2 * v508) & 0x1FDE);
  LODWORD(v456) = v509 + 71303185;
  LODWORD(v458) = *(v509 - 0x455B272534DD1A04);
  LODWORD(v509) = 1645 * (BYTE1(LODWORD(STACK[0x414])) ^ 0x53) + 2113825;
  v510 = v509 - 2696 * (((12744711 * v509) >> 32) >> 3);
  LODWORD(v498) = *(*v22 + (*v20 & 0xC6917C3C));
  v511 = (v506 ^ 0xFFFDFF5957FB51FFLL) + 2 * (v506 & 0x1FF) + v19;
  v512 = (v510 ^ 0x775757C5DFF375D5) + v19 + ((2 * v510) & 0xBAA);
  LODWORD(v511) = (((76 * v456) ^ v458 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v456 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v456 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v511 + 1)) ^ *(v511 - 0x45A148B591186C14) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v511 - 1476088319 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v511 - 1476088319 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  v513 = (v507 ^ 0x77BDD7F7FFABBBFDLL) + v19 + ((2 * v507) & 0x17FA);
  LODWORD(v511) = ((*(v512 + 0x43055EDDE6EF7016) ^ (76 * (v512 + 43)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v512 + 537692715 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v512 + 537692715 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xCAF641) & (v511 ^ 0xEEFFFF) | v511 & 0x350900) << 8;
  *(*v188 + 228) = ((*(v513 + 0x429EDEABC73729EELL) ^ (76 * (v513 + 3)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v513 + 5522435 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v498 + v513 + 5522435 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x90768EF3) & (v511 ^ 0x5C088FFF) | v511 & 0x6F897100) ^ 0xDAF6BF83;
  LODWORD(v498) = 1645 * (BYTE1(LODWORD(STACK[0x400])) ^ 0x30) + 2113825;
  v514 = v498 - 2696 * (((12744711 * v498) >> 32) >> 3);
  LODWORD(v511) = 1645 * (BYTE2(LODWORD(STACK[0x400])) ^ 0xCE) + 2113825;
  v515 = v511 - 2696 * (((12744711 * v511) >> 32) >> 3);
  LODWORD(v513) = 1645 * (LODWORD(STACK[0x400]) ^ 0x52) + 2113825;
  v516 = v513 - 2696 * (((12744711 * v513) >> 32) >> 3);
  LODWORD(v513) = 1645 * (HIBYTE(LODWORD(STACK[0x400])) ^ 0x32) + 2113825;
  v517 = v513 - 2696 * (((12744711 * v513) >> 32) >> 3);
  v518 = (v517 ^ 0x977FDFDFB7F5F3D5) + v19 + ((2 * v517) & 0x7AA);
  LODWORD(v507) = *(*v22 + (*v20 & 0xC6917C3C));
  v519 = (v515 ^ 0x5EFFFF8E3F77FF5FLL) + v19 + ((2 * v515) & 0x1EBE);
  v520 = (v514 ^ 0x5ED987FEFAFF97BALL) + v19 + ((2 * v514) & 0xF74);
  LODWORD(v519) = (((76 * (v518 + 43)) ^ *(v518 + 0x22DCD6C40EECF216) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v507 + v518 + 1208618027 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v507 + v518 + 1208618027 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v519 - 95)) ^ *(v519 + 0x5B5CB715876AE68CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v507 + v519 - 1064828767 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v507 + v519 - 1064828767 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  v521 = (v516 ^ 0x57FFB9B5DCBBFF7CLL) + v19 + ((2 * v516) & 0x1EF8);
  LODWORD(v519) = ((*(v520 + 0x5B832EA4CBE34E31) ^ (76 * (v520 + 70)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v507 + v520 + 83912774 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v507 + v520 + 83912774 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xF6B638) & (v519 ^ 0xF6BFFF) | v519 & 0x94900) << 8;
  *(*v188 + 364) = ((*(v521 + 0x625CFCEDEA26E66FLL) ^ (76 * (v521 - 124)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v507 + v521 + 591659140 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v507 + v521 + 591659140 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xFE43D99E) & (v519 ^ 0x855B1FF) | v519 & 0x1BC2600) ^ 0xFEF7D9EE;
  LODWORD(v519) = 1645 * (BYTE2(LODWORD(STACK[0x3E0])) ^ 0x16) + 2113825;
  v522 = v519 - 2696 * (((12744711 * v519) >> 32) >> 3);
  LODWORD(v516) = 1645 * (HIBYTE(LODWORD(STACK[0x3E0])) ^ 0x3E) + 2113825;
  v523 = v516 - 2696 * (((12744711 * v516) >> 32) >> 3);
  v524 = (v523 ^ 0xEADBFDF3DF7DD76BLL) + v19 + ((2 * v523) & 0xED6);
  LODWORD(v520) = v524 + 545400981;
  LODWORD(v510) = *(v524 - 0x307F4750189AF180);
  v525 = (v522 ^ 0xC8EDDFFD0B2BFF0BLL) + v19 + ((2 * v522) & 0x1E16);
  LODWORD(v452) = v525 - 187432715;
  LODWORD(v512) = *(v525 - 0xE91295944491920);
  LODWORD(v525) = 1645 * (BYTE1(LODWORD(STACK[0x3E0])) ^ 0x2E) + 2113825;
  v526 = v525 - 2696 * (((12744711 * v525) >> 32) >> 3);
  LODWORD(v524) = *(*v22 + (*v20 & 0xC6917C3C));
  v527 = (v526 ^ 0x6BFFCBFDFFEBFF57) + v19 + ((2 * v526) & 0x1EAE);
  LODWORD(v521) = (((76 * v520) ^ v510 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v524 + v520 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v524 + v520 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v452) ^ v512 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v524 + v452 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v524 + v452 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v527) = (v521 ^ 0x28D4FF) & (*(v527 + 0x4E5CEAA5C6F6E694) ^ (76 * (v527 - 87)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v524 + v527 + 1310889 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v524 + v527 + 1310889 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x20547C);
  LODWORD(v507) = 1645 * (LODWORD(STACK[0x3E0]) ^ 0xE1) + 2113825;
  v528 = v507 - 2696 * (((12744711 * v507) >> 32) >> 3);
  v529 = (v528 ^ 0xD9F754FFDDF3DDFFLL) + v19 + ((2 * v528) & 0x1BFE);
  *(*v188 + 124) = ((*(v529 - 0x1F9A9E5C1710F814) ^ (76 * (v529 + 1)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v524 + v529 + 571220481 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v524 + v529 + 571220481 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x9C7C1134) & (((v527 | v521 & 0xDFAB00) << 8) ^ 0xFCA979FF) | ((v527 | v521 & 0xDFAB00) << 8) & 0x6383EE00) ^ 0xBC7C1D44;
  LODWORD(v529) = 1645 * (BYTE1(LODWORD(STACK[0x5F0])) ^ 0x60) + 2113825;
  v530 = v529 - 2696 * (((12744711 * v529) >> 32) >> 3);
  LODWORD(v527) = 1645 * (LODWORD(STACK[0x5F0]) ^ 0x8E) + 2113825;
  v531 = v527 - 2696 * (((12744711 * v527) >> 32) >> 3);
  LODWORD(v521) = 1645 * (BYTE2(LODWORD(STACK[0x5F0])) ^ 0xB2) + 2113825;
  v532 = v521 - 2696 * (((12744711 * v521) >> 32) >> 3);
  v533 = (v531 ^ 0xFDAFF73CDFF7CDADLL) + v19 + ((2 * v531) & 0x1B5A);
  LODWORD(v529) = v533 + 537408083;
  LODWORD(v524) = *(v533 - 0x435340991914E7C2);
  v534 = (v530 ^ 0xFBB7DB3DBFBFFFFFLL) + 2 * v530 + v19;
  LODWORD(v510) = v534 + 1077936129;
  LODWORD(v530) = *(v534 - 0x415B2499F8DD1A14);
  v535 = (v532 ^ 0x15F67B2FBFBEFFBFLL) + v19 + ((2 * v532) & 0x1F7E);
  v536 = v535 + 1078001729;
  LODWORD(v452) = *(v535 - 0x5B99C48BF8DC19D4);
  LODWORD(v535) = 1645 * (HIBYTE(LODWORD(STACK[0x5F0])) ^ 0x73) + 2113825;
  v537 = v535 - 2696 * (((12744711 * v535) >> 32) >> 3);
  v538 = (v537 ^ 0x4DADDFF437EF7D7FLL) + v19 + ((2 * v537) & 0x1AFE);
  LODWORD(v512) = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v538) = (((76 * (v538 - 127)) ^ *(v538 + 0x6CAED6AF8EF3686CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v512 + v538 - 938442111 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v512 + v538 - 938442111 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v536) ^ v452 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v512 + v536 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v512 + v536 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v538) = ((v538 ^ 0x3FBEFF) & (v530 ^ (76 * v510) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v512 + v510 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v512 + v510 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x3B984A) | v538 & 0xC46700) << 8;
  *(*v188 + 164) = ((v538 ^ 0x26C5FF) & (v524 ^ (76 * v529) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v512 + v529 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ 0x32AEFFB7 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (((v512 + v529 + v36) - 0x225041637B8F4AD8 * (qword_101362A48 ^ 0xDB653AB621E69720) - 0x225041637B8F4AD8) & (qword_101362A48 ^ 0xDB653AB621E69720)))) | v538 & 0xCD510000) ^ 0x3BBEFFC7;
  LODWORD(v538) = 1645 * (BYTE1(LODWORD(STACK[0x380])) ^ 0x81) + 2113825;
  v539 = v538 - 2696 * (((12744711 * v538) >> 32) >> 3);
  LODWORD(v532) = 1645 * (BYTE2(LODWORD(STACK[0x380])) ^ 0xD3) + 2113825;
  v540 = v532 - 5392 * (((12744711 * v532) >> 32) >> 4);
  LODWORD(v538) = 1645 * (HIBYTE(LODWORD(STACK[0x380])) ^ 0xE9) + 2113825;
  v541 = v538 - 2696 * (((12744711 * v538) >> 32) >> 3);
  v545 = (v541 ^ 0x3B3BAFEDFEE861AALL) + v19 + ((2 * v541) & 0x354);
  v542 = v545 + 18325078;
  v543 = *(v545 + 0x7F2106B5C7FA8441);
  v544 = *(*v22 + (*v20 & 0xC6917C3C));
  LODWORD(v545) = v540 - 2696;
  if (v540 >= 0xA88)
  {
    v545 = v545;
  }

  else
  {
    v545 = v540;
  }

  v546 = (v545 ^ 0xEFF79F377FBFEFDBLL) + v19 + ((2 * v545) & 0xFF7FDFB6);
  v547 = v546 - 2143285211;
  v548 = *(v546 - 0x359AE893B8DD09F0);
  v549 = (v539 ^ 0x7BDFFBA5FB6FF565) + v19 + ((2 * v539) & 0xACA);
  v550 = v549 + 76548763;
  v551 = *(v549 + 0x3E7CBAFDCB72F086);
  v552 = 1645 * (LODWORD(STACK[0x380]) ^ 0xBA) + 2113825 - 2696 * (((12744711 * (1645 * (LODWORD(STACK[0x380]) ^ 0xBAu) + 2113825)) >> 32) >> 3);
  v553 = (v552 ^ 0xFBE5DFEDEDF37AC7) + v19 + ((2 * v552) & 0x158E);
  v554 = v553 + 302810425;
  v555 = *(v553 - 0x4189294A271094DCLL);
  LODWORD(v553) = (76 * v542) ^ v543;
  v556 = v544 + v542;
  v557 = qword_101362A48 ^ 0x21E69720;
  LODWORD(v553) = ((v553 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v556 - 963544004) & v557)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v556 + v36) & v557)) ^ 0x70) << 16) | (((76 * v547) ^ v548 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v544 + v547 - 963544004) & v557)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v544 + v547 + v36) & v557)) ^ 0x70) << 8);
  v558 = (v551 ^ (76 * v550) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v544 + v550 - 963544004) & v557)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v544 + v550 + v36) & v557)) ^ 0x8ACD83) & (v553 ^ 0x9FCFFF);
  *(*v188 + 264) = ((v555 ^ (76 * v554) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v544 + v554 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v544 + v554 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xEC6564D4) & (((v558 | v553 & 0x753200) << 8) ^ 0x772006FF) | ((v558 | v553 & 0x753200) << 8) & 0x139A9B00) ^ 0xEEEDF7A4;
  v559 = 1645 * (HIBYTE(LODWORD(STACK[0x5C4])) ^ 0x83) + 2113825;
  v560 = v559 - 2696 * (((12744711 * v559) >> 32) >> 3);
  v561 = (v560 ^ 0xDE7FDFF7FFE34FB8) + v19 + ((2 * v560) & 0x1F70);
  LODWORD(v560) = 1645 * (BYTE2(LODWORD(STACK[0x5C4])) ^ 0xDB) + 2113825;
  v562 = v560 - 2696 * (((12744711 * v560) >> 32) >> 3);
  v563 = (v562 ^ 0x75BDFAFFEB7BD7FELL) + ((2 * v562) & 0xFFC) + v19;
  v564 = v563 + 344205314;
  v565 = *(v563 + 0x449EBBA3DB670DEDLL);
  LODWORD(v563) = 1645 * (BYTE1(LODWORD(STACK[0x5C4])) ^ 0xB8) + 2113825;
  LODWORD(v553) = 1645 * (LODWORD(STACK[0x5C4]) ^ 0x88) + 2113825;
  v566 = v553 - 2696 * (((12744711 * v553) >> 32) >> 3);
  v567 = *(*v22 + (*v20 & 0xC6917C3C));
  v568 = ((v563 % 0xA88) ^ 0x77FF6EDBCA6FFFF5) + v19 + ((2 * (v563 % 0xA88)) & 0x1FEA);
  v569 = v568 + 898629643;
  v570 = *(v568 + 0x425D47C7FC72E5F6);
  LODWORD(v568) = (76 * (v561 + 72)) ^ *(v561 - 0x24232954390069CDLL);
  LODWORD(v563) = v567 + v561 + 1880136;
  LODWORD(v561) = qword_101362A48 ^ 0x21E69720;
  v571 = ((v568 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v563 - 963544004) & v561)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v563 + v36) & v561)) ^ 0x70) << 16) | (((76 * v564) ^ v565 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v567 + v564 - 963544004) & v561)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v567 + v564 + v36) & v561)) ^ 0x70) << 8);
  v572 = (v566 ^ 0x7FFF5DEFFFDEFFEFLL) + v19 + ((2 * v566) & 0x1FDE);
  LODWORD(v563) = ((v570 ^ (76 * v569) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v567 + v569 - 963544004) & v561)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v567 + v569 + v36) & v561)) ^ 0xD30F75) & (v571 ^ 0xFB2FFF) | v571 & 0x2CF000) << 8;
  *(*v188 + 400) = ((*(v572 + 0x3A5D58B3C703E5FCLL) ^ (76 * (v572 + 17)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v567 + v572 + 2162705 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xFD88B08 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (((v567 + v572 + 2162705 - 963544004) - 0x56A9A3EECE667AB5 * (qword_101362A48 ^ 0xDB653AB621E69720) - 0x56A9A3EECE667AB5) & (qword_101362A48 ^ 0xDB653AB621E69720)))) & (v563 ^ 0x4CF0DAFF) | v563 & 0xF0277400) ^ 0xDFDF8F78;
  LODWORD(v572) = 1645 * (HIBYTE(LODWORD(STACK[0x370])) ^ 0x2A) + 2113825;
  v573 = v572 - 2696 * (((12744711 * v572) >> 32) >> 3);
  LODWORD(v563) = 1645 * (BYTE2(LODWORD(STACK[0x370])) ^ 0x32) + 2113825;
  v574 = v563 - 2696 * (((12744711 * v563) >> 32) >> 3);
  v575 = (v573 ^ 0xE3FFDE5BDFD3FDA2) + v19 + ((2 * v573) & 0x1B44);
  v576 = *(v575 - 0x29A327B818F117B7);
  v577 = v575 + 539755102;
  v578 = *(*v22 + (*v20 & 0xC6917C3C));
  v579 = (v574 ^ 0xF6EFF34AABCF377ELL) + v19 + ((2 * v574) & 0xEFC);
  LODWORD(v574) = 1645 * (BYTE1(LODWORD(STACK[0x370])) ^ 0x74) + 2113825;
  v580 = v574 - 2696 * (((12744711 * v574) >> 32) >> 3);
  v581 = (v580 ^ 0xFFFFEF5B89F9DCBBLL) + v19 + ((2 * v580) & 0x1976);
  v582 = v581 + 1980113733;
  v583 = *(v581 - 0x45A338B7C316F6D0);
  LODWORD(v581) = (76 * v577) ^ v576;
  v584 = qword_101362A48 ^ 0x21E69720;
  LODWORD(v579) = ((v581 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v578 + v577 - 963544004) & v584)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v578 + v577 + v36) & v584)) ^ 0x70) << 16) | (((76 * (v579 - 126)) ^ *(v579 - 0x3C933CA6E4EC5193) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v578 + v579 + 1412483202 - 963544004) & v584)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v578 + v579 + 1412483202 + v36) & v584)) ^ 0x70) << 8);
  LODWORD(v581) = 1645 * (LODWORD(STACK[0x370]) ^ 0xAF) + 2113825;
  v585 = v581 - 2696 * (((12744711 * v581) >> 32) >> 3);
  v586 = (v585 ^ 0x1E5DED7F9AB77BDBLL) + v19 + ((2 * v585) & 0x17B6);
  LODWORD(v579) = (v583 ^ (76 * v582) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v578 + v582 - 963544004) & v584)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v578 + v582 + v36) & v584)) | v579) << 8;
  *(*v188 + 344) = ((*(v586 - 0x640136DBD3D495F0) ^ (76 * (v586 + 37)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v578 + v586 + 1699251237 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v578 + v586 + 1699251237 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xCAA3CEFB) & (v579 ^ 0xDAB78FFF) | v579 & 0x355C3100) ^ 0xCAA3FE8B;
  LODWORD(v586) = 1645 * (HIBYTE(LODWORD(STACK[0x368])) ^ 0x63) + 2113825;
  v608 = v586 - 2696 * (((12744711 * v586) >> 32) >> 3);
  LODWORD(v561) = 1645 * (LODWORD(STACK[0x368]) ^ 0x32) + 2113825;
  v587 = v561 - 2696 * (((12744711 * v561) >> 32) >> 3);
  v588 = (v587 ^ 0xFFFF7757BD6BF7BELL) + v19 + ((2 * v587) & 0xF7C);
  LODWORD(v579) = 1645 * (BYTE2(LODWORD(STACK[0x368])) ^ 0x82) + 2113825;
  v589 = v579 - 2696 * (((12744711 * v579) >> 32) >> 3);
  v590 = (v608 ^ 0xEF7BFBAB66BFDFF3) + v19 + ((2 * v608) & 0x1FE6);
  v591 = *(v590 - 0x351F45079FDCFA08);
  LOBYTE(v570) = v590 + 13;
  LODWORD(v590) = *(*v22 + (*v20 & 0xC6917C3C)) + v590 - 1723850739;
  LODWORD(v566) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v590 - 963544004) & (qword_101362A48 ^ 0x21E69720)));
  v592 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v590 + v36) & (qword_101362A48 ^ 0x21E69720)));
  LODWORD(v590) = 1645 * (BYTE1(LODWORD(STACK[0x368])) ^ 0x34) + 2113825;
  v593 = v590 - 2696 * (((12744711 * v590) >> 32) >> 3);
  v594 = (v593 ^ 0x3DFFEDF3EFFF7FF2) + v19 + ((2 * v593) & 0x1FE4);
  v595 = (v589 ^ 0xBEB6EBEBEA5FBE77) + v19 + ((2 * v589) & 0x1CEE);
  v596 = *(v588 - 0x45A2C0B3F68911D3);
  v597 = *(v594 + 0x7C5CC8AFD6E365F9);
  v598 = *(v595 - 0x45A3548237CD88CLL);
  v599 = v462;
  *(*v462 + 360) = 1;
  v600 = STACK[0x5C8];
  v601 = 1645 * (HIBYTE(v600) ^ 0x6C) + 2113825 - 5392 * (((12744711 * (1645 * (HIBYTE(v600) ^ 0x6C) + 2113825)) >> 32) >> 4);
  v602 = *v20;
  LODWORD(v608) = *(*v22 + (v602 & STACK[0x658])) + STACK[0x558];
  v603 = qword_101362A48 ^ 0x21E69720;
  v604 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v608) = LODWORD(STACK[0x550]) ^ *(v604 + ((v608 + 673210726) & v603)) ^ *(v604 + ((v608 + LODWORD(STACK[0x630])) & v603));
  v605 = 10958336 * (((v608 ^ 0x14667B) + 980794981) ^ ((v608 ^ 0x106AE5) - 403590405) ^ ((v608 ^ 0x217557) - 373248695)) + 1015234831;
  LODWORD(v588) = v588 + 1116997698;
  LODWORD(v608) = v594 + 268468238;
  v606 = v602;
  LODWORD(v602) = *(*v22 + (v602 & STACK[0x648]));
  LODWORD(v595) = (((76 * v570) ^ v591 ^ v566 ^ v592 ^ 0x70) << 16) | (((76 * (v595 - 119)) ^ v598 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v602 + v595 + 362824073 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v602 + v595 + 362824073 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v602) = (v595 ^ 0xFF78FF) & (v597 ^ (76 * v608) ^ *(v604 + ((v602 + v608 - 963544004) & v603)) ^ *(v604 + ((v602 + v608 + v36) & v603)) ^ 0x433835) | v595 & 0xBCC700;
  LODWORD(v608) = *(*v22 + (v606 & STACK[0x640])) + v588;
  *(*v599 + 360) = ((v596 ^ (76 * v588) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v608 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v608 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x3B08B27D) & ((v602 << 8) ^ 0x3C64FAFF) | (v602 << 8) & 0xC4F74D00) ^ 0x7B38F70D;
  LODWORD(v608) = v601 - 2696;
  if (v601 >= 0xA88)
  {
    v608 = v608;
  }

  else
  {
    v608 = v601;
  }

  v609 = (v608 ^ 0x543FB8E7EFCFDDAFLL) + v19 + ((2 * v608) & 0x1DF9FBB5ELL);
  v610 = v609 + 271589969;
  v611 = *(v609 + 0x661CFDBBD713083CLL);
  v612 = 1645 * (BYTE2(v600) ^ 0x38) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE2(v600) ^ 0x38u) + 2113825)) >> 32) >> 3);
  v607 = ((((v605 ^ 0xEBD2348F) + 30036096) ^ v605 ^ ((v605 ^ 0xE3AD72) + 16501123) ^ ((v605 ^ 0x2CFF0C) + 3447806) ^ ((v605 ^ 0xFAFDF0) + 14850320)) & 0x1FE0000 ^ 0x1E60000) + 168427520;
  v613 = (1645 * (v607 >> 17) - 2696 * ((1593089 * (1645 * (v607 >> 17))) >> 32));
  v614 = (v613 ^ 0xEFF7DBDFFDFFDDFFLL) + v19 + ((2 * v613) & 0x1BFE);
  v615 = v614 + 33563137;
  v616 = *(v614 - 0x359B253C371CF814);
  v617 = (v612 ^ 0xFFC7BFF5BABDFB9FLL) + v19 + ((2 * v612) & 0x173E);
  v618 = *(v617 - 0x456B0951F3DB15B4);
  v619 = v617 + 1161954401;
  v620 = STACK[0x650];
  v621 = *(*v22 + (*STACK[0x650] & 0xC6917C3C));
  v622 = 1645 * (v600 ^ 0x2B) + 2113825 - 2696 * (((12744711 * (1645 * (v600 ^ 0x2Bu) + 2113825)) >> 32) >> 3);
  LODWORD(v612) = (((76 * v610) ^ v611 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v621 + v610 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v621 + v610 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v619) ^ v618 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v621 + v619 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v621 + v619 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  v623 = (v622 ^ 0xFFFAB7DF7EE7FFB7) + v19 + ((2 * v622) & 0x1F6E);
  LODWORD(v612) = ((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v615 + v621 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ v616 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v615 + v621 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ (76 * v615) ^ 0xEEA4E2) & (v612 ^ 0xEFF7FF) | v612 & 0x115B00) << 8;
  *(*v599 + 336) = ((v612 ^ 0x15240FF) & (*(v623 - 0x459E013BB80519CCLL) ^ (76 * (v623 + 73)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v621 + v623 - 2129133495 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v621 + v623 - 2129133495 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xEF7240E1) | v612 & 0x108DBF00) ^ 0xEFF6D291;
  LODWORD(v612) = 1645 * (HIBYTE(LODWORD(STACK[0x430])) ^ 0xDF) + 2113825;
  v624 = v612 - 2696 * (((12744711 * v612) >> 32) >> 3);
  v625 = 1645 * LODWORD(STACK[0x430]) + 2113825;
  v626 = v625 - 2696 * (((12744711 * v625) >> 32) >> 3);
  LODWORD(v623) = 1645 * (BYTE1(LODWORD(STACK[0x430])) ^ 0xB5) + 2113825;
  v627 = v623 - 2696 * (((12744711 * v623) >> 32) >> 3);
  LODWORD(v623) = 1645 * (BYTE2(LODWORD(STACK[0x430])) ^ 0xF4) + 2113825;
  v628 = v623 - 2696 * (((12744711 * v623) >> 32) >> 3);
  v629 = (v624 ^ 0x6E57BAB39B6DFF4FLL) + v19 + ((2 * v624) & 0x1E9E);
  v630 = *(*v22 + (*v620 & 0xC6917C3C));
  v631 = (v628 ^ 0x7EA5FFBFFF3F3FFELL) + ((2 * v628) & 0x1FFC) + v19;
  v632 = (((76 * (v629 - 79)) ^ *(v629 + 0x4C04FBF02B74E69CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v630 + v629 + 1687290033 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v630 + v629 + 1687290033 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v631 + 2)) ^ *(v631 + 0x3BB6B6E3C7A3A5EDLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v630 + v631 + 12632066 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v630 + v631 + 12632066 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  v633 = (v626 ^ 0x7E87F7FFEDFF7FBCLL) + v19 + ((2 * v626) & 0x1F78);
  LODWORD(v626) = v633 + 302022724;
  v634 = *(v633 + 0x3BD4BEA3D8E3662FLL);
  v635 = (v627 ^ 0x4FF9DFDFCFFDDB7DLL) + v19 + ((2 * v627) & 0x16FA);
  LODWORD(v635) = ((*(v635 + 0x6A62D6C3F6E50A6ELL) ^ (76 * (v635 - 125)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v630 + v635 + 805446787 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xCF088D ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (((v630 + v635 + 805446787 - 963544004) - 0xA7B9CA1BF342BC3 * (qword_101362A48 ^ 0xDB653AB621E69720) - 0xA7B9CA1BF342BC3) & (qword_101362A48 ^ 0xDB653AB621E69720)))) & (v632 ^ 0xEF48FF) | v632 & 0x30F700) << 8;
  *(*v599 + 200) = ((v634 ^ (76 * v626) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v630 + v626 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v630 + v626 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x8EF70A6D) & (v635 ^ 0x50F746FF) | v635 & 0x7108F500) ^ 0xCFFFFF1D;
  LODWORD(v635) = 1645 * (LODWORD(STACK[0x5D8]) ^ 0x67) + 2113825;
  v636 = v635 - 2696 * (((12744711 * v635) >> 32) >> 3);
  v637 = 1645 * (HIBYTE(LODWORD(STACK[0x5D8])) ^ 0xB) + 2113825;
  v638 = v637 - 2696 * (((12744711 * v637) >> 32) >> 3);
  v639 = (v638 ^ 0xFC27FCDECFFDFF0BLL) + v19 + ((2 * v638) & 0x1E16);
  LODWORD(v626) = v639 + 805437685;
  v640 = *(v639 - 0x41CB463B091B1920);
  LODWORD(v629) = 1645 * (BYTE2(LODWORD(STACK[0x5D8])) ^ 0xB8) + 2113825;
  v641 = v629 - 2696 * (((12744711 * v629) >> 32) >> 3);
  v642 = (v636 ^ 0xCFEFDB5F8DFE5EDDLL) + v19 + ((2 * v636) & 0x1DBA);
  LODWORD(v639) = v642 + 1912709411;
  LODWORD(v627) = *(v642 - 0x159324BBC71B78F2);
  v643 = (v641 ^ 0xAF9FDFFEF7F7673FLL) + v19 + ((2 * v641) & 0xE7E);
  v644 = v643 + 134781121;
  v645 = *(v643 + 0xABCD6A4CEEB7EACLL);
  LODWORD(v643) = 1645 * (BYTE1(LODWORD(STACK[0x5D8])) ^ 0x10) + 2113825;
  v646 = v643 - 2696 * (((12744711 * v643) >> 32) >> 3);
  v647 = (v646 ^ 0x7EBC67FDB76BDF5FLL) + v19 + ((2 * v646) & 0x1EBE);
  v648 = v647 + 1217667233;
  v649 = *(v647 + 0x3BA04EA60F77068CLL);
  v650 = *(*v22 + (*v620 & 0xC6917C3C));
  LODWORD(v647) = (((76 * v626) ^ v640 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v650 + v626 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v650 + v626 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v644) ^ v645 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v650 + v644 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v650 + v644 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v647) = ((v647 ^ 0xFD6FFF) & (v649 ^ (76 * v648) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v650 + v648 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v650 + v648 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x8D66A0) | v647 & 0x729900) << 8;
  *(*v599 + 16) = ((v647 ^ 0x720002FF) & (v627 ^ (76 * v639) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v650 + v639 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v650 + v639 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xFA20529B) | v647 & 0x5DFAD00) ^ 0xFF66D2EB;
  LODWORD(v647) = 1645 * (BYTE2(LODWORD(STACK[0x418])) ^ 0x32) + 2113825;
  v651 = v647 - 2696 * (((12744711 * v647) >> 32) >> 3);
  v652 = 1645 * (HIBYTE(LODWORD(STACK[0x418])) ^ 0x39) + 2113825;
  v653 = v652 - 2696 * (((12744711 * v652) >> 32) >> 3);
  v654 = 1645 * (BYTE1(LODWORD(STACK[0x418])) ^ 0xF7) + 2113825;
  v655 = v654 - 2696 * (((12744711 * v654) >> 32) >> 3);
  LODWORD(v641) = 1645 * (LODWORD(STACK[0x418]) ^ 0x93) + 2113825;
  v656 = v641 - 2696 * (((12744711 * v641) >> 32) >> 3);
  v657 = (v656 ^ 0xE7EB37BFDFFDF3ABLL) + v19 + ((2 * v656) & 0x756);
  v658 = v657 + 537005141;
  LODWORD(v639) = *(v657 - 0x2D8E811C191B0DC0);
  v659 = (v651 ^ 0xD39FFF3FFFFFFCFELL) + v19 + ((2 * v651) & 0x19FC);
  v660 = (v653 ^ 0x714BDF5EFD7B25AFLL) + v19 + ((2 * v653) & 0xB5E);
  LODWORD(v653) = *(*v22 + (*v620 & 0xC6917C3C));
  v661 = (v655 ^ 0xFF5FCD9F73F7FBF8) + v19 + ((2 * v655) & 0x17F0);
  HIDWORD(v662) = *(v660 + 0x4910D744C967C03CLL) ^ (76 * (v660 + 81)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v653 + v660 + 42261073 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v653 + v660 + 42261073 + v36) & (qword_101362A48 ^ 0x21E69720)));
  LODWORD(v662) = HIDWORD(v662) ^ 0x70;
  HIDWORD(v662) = v662 >> 3;
  LODWORD(v662) = HIDWORD(v662);
  LODWORD(v660) = (((76 * (v659 + 2)) ^ *(v659 - 0x1943489C391D1713) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v653 + v659 + 770 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v653 + v659 + 770 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8) + ((v662 >> 22) << 9);
  LODWORD(v660) = (*(v661 - 0x450316FBAD15160DLL) ^ (76 * (v661 + 8)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v653 + v661 - 1945631736 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v653 + v661 - 1945631736 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x89AE46) & ~v660 | v660 & 0x765100;
  *(*v599 + 116) = ((v639 ^ (76 * v658) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v653 + v658 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v653 + v658 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x347C156D) & ((v660 << 8) ^ 0x36D161FF) | (v660 << 8) & 0xCB83EA00) ^ 0xBDFE371D;
  LODWORD(v661) = 1645 * (((LODWORD(STACK[0x408]) >> 23) & 0xA) + (HIBYTE(LODWORD(STACK[0x408])) ^ 0x5F7));
  v663 = (v661 - 2696 * ((1593089 * v661) >> 32));
  LODWORD(v639) = 1645 * (BYTE1(LODWORD(STACK[0x408])) ^ 0xE2) + 2113825;
  v664 = v639 - 2696 * (((12744711 * v639) >> 32) >> 3);
  v665 = (v663 ^ 0x7FFB0E3BFF475E75) + v19 + ((2 * v663) & 0x1CEA);
  LODWORD(v660) = 1645 * (LODWORD(STACK[0x408]) ^ 0x9B) + 2111129;
  LODWORD(v663) = 1645 * (BYTE2(LODWORD(STACK[0x408])) ^ 0xA3) + 2113825;
  v666 = v663 - 2696 * (((12744711 * v663) >> 32) >> 3);
  LODWORD(v639) = *(*v22 + (*v620 & 0xC6917C3C));
  v667 = v660 - 2696 * (((12744711 * v660) >> 32) >> 3);
  v668 = (v664 ^ 0x7EFFDAFDFBB3AFA3) + v19 + ((2 * v664) & 0x1F46);
  v669 = v668 + 72110173;
  LODWORD(v655) = *(v668 + 0x3B5CDBA5CB2F3648);
  v670 = (v666 ^ 0x1F3F5B45D4F6FBBBLL) + v19 + ((2 * v666) & 0x1776);
  v671 = v665 + 12099979;
  LODWORD(v670) = (((76 * v671) ^ *(v665 + 0x3A61A867C79B8776) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v671 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v671 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v670 + 69)) ^ *(v670 - 0x64E2A4A20E1415D0) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v670 + 722011205 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (((v639 + v670 + 722011205 - 963544004) - 0xAE7538125AF3C2BLL * (qword_101362A48 ^ 0xDB653AB621E69720) - 0xAE7538125AF3C2BLL) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ 0x70) << 8);
  LODWORD(v670) = (v670 ^ 0xEC4FFF) & (v655 ^ (76 * v669) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v669 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v669 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xAC0EC5) | v670 & 0x53F100;
  v672 = (v667 ^ 0x3FBBF7EF27FAFFE7) + v19 + ((2 * v667) & 0x1FCE);
  *(*v599 + 408) = ((*(v672 + 0x7AA0BEB49EE7E604) ^ (76 * (v672 + 25)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v672 - 670760935 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v672 - 670760935 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x9D891ED1) & ((v670 << 8) ^ 0x13B50BFF) | (v670 << 8) & 0x6276E100) ^ 0xBD8FBFA1;
  v673 = STACK[0x510];
  LODWORD(v670) = 1645 * (BYTE1(LODWORD(STACK[0x518])) ^ 0xF4) + 2113825;
  v674 = v670 - 2696 * (((12744711 * v670) >> 32) >> 3);
  LODWORD(v670) = 1645 * (HIBYTE(LODWORD(STACK[0x518])) ^ 0x77) + 2113825;
  v675 = v670 - 2696 * (((12744711 * v670) >> 32) >> 3);
  LODWORD(v672) = 1645 * (BYTE2(LODWORD(STACK[0x518])) ^ 0x4B) + 2113825;
  v676 = v672 - 2696 * (((12744711 * v672) >> 32) >> 3);
  v677 = (v675 ^ 0xFFBC7B5CB6F5BFF6) + v19 + ((2 * v675) & 0x1FEC);
  LODWORD(v664) = *(v677 - 0x455FC4B8F012DA0BLL);
  LODWORD(v677) = v677 + 1225408522;
  v678 = (v676 ^ 0x47D3F9EDFEFFFEF4) + v19 + ((2 * v676) & 0x1DE8);
  v679 = STACK[0x660];
  LODWORD(v667) = *(*STACK[0x660] + (*v620 & 0xC6917C3C));
  LODWORD(v677) = (((76 * v677) ^ v664 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v667 + v677 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v667 + v677 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v678 + 12)) ^ *(v678 + 0x7288BCB5C7E2E6F7) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v667 + v678 + 16777484 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v667 + v678 + 16777484 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  v680 = (v674 ^ 0xFBCB7F7ABFD7A599) + v19 + ((2 * v674) & 0xB32);
  LODWORD(v677) = (*(v680 - 0x416EC8D6F8F4BFAELL) ^ (76 * (v680 + 103)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v667 + v680 + 1076386407 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v667 + v680 + 1076386407 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x2D3076) & (v677 ^ 0xBF71FF) | v677 & 0xD2CF00;
  LODWORD(v680) = 1645 * (LODWORD(STACK[0x518]) ^ 3) + 2113825;
  v681 = v680 - 2696 * (((12744711 * v680) >> 32) >> 3);
  v682 = (v681 ^ 0x7379BDA26FBDB16DLL) + v19 + ((2 * v681) & 0x2DA);
  LODWORD(v639) = 1645 * (BYTE1(LODWORD(STACK[0x510])) ^ 0xA0) + 2113825;
  *(*v599 + 36) = ((*(v682 + 0x46E2F9015725347ELL) ^ (76 * (v682 - 109)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v667 + v682 - 1874702701 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v667 + v682 - 1874702701 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xC8582FFA) & ((v677 << 8) ^ 0xE7C869FF) | (v677 << 8) & 0x37A7D000) ^ 0xED782F8A;
  v683 = 1645 * (v673 ^ 0x7F) + 2113825 - 2696 * (((12744711 * (1645 * (v673 ^ 0x7Fu) + 2113825)) >> 32) >> 3);
  v684 = v639 - 2696 * (((12744711 * v639) >> 32) >> 3);
  v685 = 1645 * (BYTE2(v673) ^ 0x50) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE2(v673) ^ 0x50u) + 2113825)) >> 32) >> 3);
  v686 = (v683 ^ 0x979D52AB5FCF77B7) + v19 + ((2 * v683) & 0xF6E);
  LODWORD(v639) = v686 - 1607432119;
  LODWORD(v667) = *(v686 + 0x22BF63F867136E34);
  v687 = 1645 * (HIBYTE(v673) ^ 0x74) + 2113825 - 2696 * (((12744711 * (1645 * (HIBYTE(v673) ^ 0x74) + 2113825)) >> 32) >> 3);
  v688 = (v684 ^ 0x5BDF5FBBFA9FBFE7) + v19 + ((2 * v684) & 0x1FCE);
  LODWORD(v664) = *(v688 + 0x5E7D56E7CC432604);
  LODWORD(v659) = v688 + 90193945;
  v689 = (v687 ^ 0xFBCFBCF7F63E6EF3) + v19 + ((2 * v687) & 0x1DE6);
  LODWORD(v655) = *(*v679 + (*v620 & 0xC6917C3C));
  v690 = (v685 ^ 0xF9FDFFF285B3DBDDLL) + v19 + ((2 * v685) & 0x17BA);
  v691 = 1645 * (BYTE2(LODWORD(STACK[0x5E8])) ^ 0x7D) + 2113825;
  v692 = v691 - 2696 * (((12744711 * v691) >> 32) >> 3);
  LODWORD(v689) = (((76 * (v689 + 13)) ^ *(v689 - 0x417306542F5B8908) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v655 + v689 + 163680525 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v655 + v689 + 163680525 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v690 + 35)) ^ *(v690 - 0x3FA1494EBED0F5F2) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v655 + v690 + 2051810339 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v655 + v690 + 2051810339 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v690) = (v664 ^ (76 * v659) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v655 + v659 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v655 + v659 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xAAAFFD) & ~v689;
  LODWORD(v664) = 1645 * (HIBYTE(LODWORD(STACK[0x5E8])) ^ 0x84) + 2113825;
  LODWORD(v689) = v690 | v689 & 0x555000;
  v693 = v664 - 2696 * (((12744711 * v664) >> 32) >> 3);
  LODWORD(v684) = 1645 * (BYTE1(LODWORD(STACK[0x5E8])) ^ 0x12) + 2113825;
  LODWORD(v689) = (((v689 << 8) ^ 0x445062FF) & (v667 ^ (76 * v639) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v655 + v639 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v655 + v639 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x6C7C6B09) | (v689 << 8) & 0x93839400) ^ 0xEEFFEF79;
  LODWORD(v655) = 1645 * (LODWORD(STACK[0x5E8]) ^ 0xC7) + 2113825;
  v694 = STACK[0x618];
  *(*STACK[0x618] + 276) = v689;
  v695 = (v693 ^ 0xEFFFDDE7C336FBB5) + v19 + ((2 * v693) & 0x176A);
  LODWORD(v659) = v695 + 1019806795;
  v696 = *(v695 - 0x35A32743FC5415CALL);
  v697 = v684 - 2696 * (((12744711 * v684) >> 32) >> 3);
  v698 = (v697 ^ 0x7F7F752B377FEEEDLL) + v19 + ((2 * v697) & 0x1DDA);
  LODWORD(v667) = *(v698 + 0x3ADD41788F62F6FELL);
  LODWORD(v664) = v698 - 931131117;
  LODWORD(v639) = *(*v679 + (*v620 & 0xC6917C3C));
  v699 = STACK[0x628];
  v700 = (v692 ^ 0x7D47F4FFAFFBFBC7) + v19 + ((2 * v692) & 0x178E);
  v701 = v700 + 1342440505;
  v702 = v655 - 2696 * (((12744711 * v655) >> 32) >> 3);
  LODWORD(v698) = (((76 * v659) ^ v696 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v659 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v659 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * v701) ^ *(v700 + 0x3D14C1A416E6EA24) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v701 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v701 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  LODWORD(v698) = (v667 ^ (76 * v664) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v664 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v664 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x4173C8) & ~v698 | v698 & 0xBE8C00;
  LODWORD(v693) = 1645 * (LODWORD(STACK[0x628]) ^ 0x76) + 2113825;
  v703 = (v702 ^ 0xF53DFFF7777FE7DBLL) + v19 + ((2 * v702) & 0xFB6);
  v704 = v693 - 2696 * (((12744711 * v693) >> 32) >> 3);
  *(*v694 + 372) = ((*(v703 - 0x3AE14953B09D01F0) ^ (76 * (v703 + 37)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v703 - 2004871131 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v639 + v703 - 2004871131 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x38B1626E) & ((v698 << 8) ^ 0x7FCA52FF) | (v698 << 8) & 0xC74E9D00) ^ 0x79F3FA1E;
  v705 = (v704 ^ 0x7ED7EF7B2FFFFFF7) + v19 + ((2 * v704) & 0x1FEE);
  LODWORD(v700) = *(v705 + 0x3B84C72896E2E5F4);
  LODWORD(v639) = v705 - 805306359;
  v706 = 1645 * (HIBYTE(v699) ^ 0x33) + 2113825 - 2696 * (((12744711 * (1645 * (HIBYTE(v699) ^ 0x33) + 2113825)) >> 32) >> 3);
  v707 = (v706 ^ 0xFFBFFAFBF79FDF3ELL) + v19 + ((2 * v706) & 0x1E7C);
  v708 = *(v707 - 0x4563445830BCF953);
  LODWORD(v707) = v707 + 140517570;
  LODWORD(v664) = *(*v679 + (*v620 & 0xC6917C3C));
  v709 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  v710 = 1645 * (BYTE2(v699) ^ 0x3C) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE2(v699) ^ 0x3Cu) + 2113825)) >> 32) >> 3);
  v711 = (v710 ^ 0x7077DEDF6FDB7DFDLL) + v19 + ((2 * v710) & 0x1BFA);
  LODWORD(v707) = (((76 * v707) ^ v708 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v664 + v707 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v664 + v707 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 16) | (((76 * (v711 + 3)) ^ *(v711 + 0x49E4D7C4570767EELL) ^ *(v709 + ((v664 + v711 - 1876655613 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v709 + ((v664 + v711 - 1876655613 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0x70) << 8);
  v712 = ((2 * (1645 * (BYTE1(v699) ^ 0x61) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE1(v699) ^ 0x61u) + 2113825)) >> 32) >> 3))) & 0x1FF8) + v19;
  v713 = STACK[0x5F8];
  v714 = ((1645 * (BYTE1(v699) ^ 0x61) + 2113825 - 2696 * (((12744711 * (1645 * (BYTE1(v699) ^ 0x61u) + 2113825)) >> 32) >> 3)) ^ 0x7C777B7DFFEF7FFCLL) + v712;
  LODWORD(v707) = (*(v714 + 0x3DE53B25C6F365EFLL) ^ (76 * (v714 + 4)) ^ *(v709 + ((v664 + v714 + 1081348 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *(v709 + ((v664 + v714 + 1081348 + v36) & (qword_101362A48 ^ 0x21E69720))) ^ 0xBA4243) & (v707 ^ 0xFE7BFF) | v707 & 0x45BD00;
  *(*v694 + 128) = ((v700 ^ (76 * v639) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v664 + v639 - 963544004) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((qword_101362A48 ^ 0x21E69720) & (v664 + v639 + v36))) ^ 0x790649D7) & ((v707 << 8) ^ 0x452CD8FF) | (v707 << 8) & 0x86F9B600) ^ 0xFB467BA7;
  v715 = *(STACK[0x668] + 8 * ((8308 * (LODWORD(STACK[0x610]) < 0x8AA98B49)) ^ (v713 + 45)));
  LODWORD(STACK[0x660]) = -143113071;
  return v715(STACK[0x620]);
}

uint64_t sub_100D2181C(unint64_t a1)
{
  STACK[0x4D0] = a1;
  STACK[0x1978] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (v1 + 9651)))();
}

uint64_t sub_100D2188C()
{
  LODWORD(STACK[0x125C]) = v0;
  STACK[0x9D0] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v1 ^ 0x5F5F) - 18340) ^ v1)))();
}

uint64_t sub_100D21BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W6>, int a4@<W8>)
{
  STACK[0x36C0] = 0;
  STACK[0x38B0] = 0;
  STACK[0x3808] = 0;
  STACK[0x3650] = 0;
  STACK[0x37A8] = 0;
  STACK[0x3838] = 0;
  STACK[0x38B8] = 0;
  LODWORD(STACK[0x3D90]) = 0;
  STACK[0x36C8] = 0;
  STACK[0x36E8] = 0;
  STACK[0x3818] = 0;
  STACK[0x3878] = 0;
  LODWORD(STACK[0x3D88]) = 0;
  LODWORD(STACK[0x3CC8]) = 0;
  STACK[0x3800] = *(v6 + LODWORD(STACK[0x3798]));
  LODWORD(STACK[0x3798]) = a3 + 6;
  v7 = *(v4 + 8 * ((47 * (v5 != ((a4 + 1189) ^ 0x1AC4))) ^ a4));
  LODWORD(STACK[0x3D58]) = 6;
  STACK[0x36F0] = 128;
  return v7(a1, a2, 0);
}

uint64_t sub_100D21C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x3798]) = a7 + 25;
  v10 = *(v8 + 8 * (((((v7 - 1181293911) & 0x4668BEF3) - 6795) * (v9 == 25)) ^ v7));
  LODWORD(STACK[0x3D58]) = 25;
  return v10();
}

uint64_t sub_100D21CF0(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x3D88] - 10512;
  LODWORD(STACK[0x3D80]) = v3;
  return (*(v2 + 8 * v3))(29372, a2, 47);
}

uint64_t sub_100D21D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8)
{
  v11 = (STACK[0x38A8] + a8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  return (*(v8 + 8 * (((v9 != 0) * a7) ^ (a6 + 1344))))();
}

uint64_t sub_100D21DE4()
{
  v1 = STACK[0x444C];
  v2 = *(v0 + 8 * (LODWORD(STACK[0x444C]) - 15900));
  STACK[0x6CC8] = LODWORD(STACK[0x4444]);
  LODWORD(STACK[0x3FCC]) = v1;
  STACK[0x3FD0] = STACK[0x4438];
  LODWORD(STACK[0x3FD8]) = STACK[0x4460];
  LODWORD(STACK[0x3FDC]) = STACK[0x445C];
  LODWORD(STACK[0x3FE0]) = STACK[0x4464];
  LODWORD(STACK[0x3FE4]) = STACK[0x4468];
  return v2();
}

uint64_t sub_100D21EC0()
{
  v2 = STACK[0x3D48];
  v3 = 5 * (LODWORD(STACK[0x3D48]) ^ 0x14A2);
  LODWORD(STACK[0x3D78]) = (((v0 ^ (2 * (v0 & STACK[0x3908]))) & STACK[0x38A0]) << STACK[0x3D60]) ^ (((v0 ^ (2 * (v0 & STACK[0x3908]))) & STACK[0x38F8]) >> STACK[0x3D58]);
  LODWORD(STACK[0x3E10]) = v3;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_100D21F8C()
{
  v3 = *(STACK[0x5008] + 4 * v1) ^ (2 * (STACK[0x52B8] & *(STACK[0x5008] + 4 * v1)));
  v4 = (v1 ^ (2 * (LOBYTE(STACK[0x52D8]) & v1)));
  v5 = STACK[0x4E98] & (v1 ^ (2 * (STACK[0x52D8] & v1)));
  *(STACK[0x33D8] + 4 * ((v5 >> STACK[0x5350]) ^ (v4 << STACK[0x5338]) ^ LODWORD(STACK[0x52C0]))) = LODWORD(STACK[0x52BC]) ^ ((v3 & STACK[0x52AC]) << STACK[0x5338]) ^ ((STACK[0x52C8] & v3) >> STACK[0x5350]);
  v6 = *(STACK[0x4EB0] + v1) ^ (2 * (STACK[0x52B8] & *(STACK[0x4EB0] + v1)));
  *(STACK[0x3660] + 4 * ((((v5 >> STACK[0x5328]) + (v4 << STACK[0x5320])) ^ LODWORD(STACK[0x52C0])) & (v0 - 19759))) = ((v6 & STACK[0x52C8]) >> STACK[0x5328]) ^ ((v6 & STACK[0x52AC]) << STACK[0x5320]) ^ LODWORD(STACK[0x52A4]);
  return (*(v2 + 8 * ((v1 == 255) | v0)))();
}

uint64_t sub_100D220E4()
{
  STACK[0x3650] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = (((v3 - 5133) | 0x32F2) ^ 0x32E2) + v0;
  v5 = *(v4 + 8 * ((((v3 - 341940566) & 0x1461D7DE ^ 0x52D3) * (v1 == 24)) ^ v3));
  STACK[0x3850] = 24;
  return v5();
}

uint64_t sub_100D22154@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W8>)
{
  LODWORD(STACK[0x3E40]) = v3 ^ 0x3444;
  v10 = STACK[0x3DA0];
  *(v10 + 4066) = 0x807060504030201;
  *(v10 + 4074) = 202050057;
  *(v10 + 4078) = 3597;
  v11 = STACK[0x2160];
  v11[a3 & 0xF] = 0;
  v11[v8 % (((v3 ^ 0x3444) + 4657) ^ 0x64C0u) + 1] = *(v10 + 4066);
  v11[a2 % 0xE + 2] = *(v10 + 4067);
  v12 = a3 + a2;
  v13 = a1 % 0xD;
  v14 = a1 - a3;
  v15 = v14 ^ v12;
  v16 = v14 + v8 + v12;
  v11[v13 + 3] = *(v10 + 4068);
  v17 = a3 + 1237499277;
  v12 ^= 0x5C034B9Fu;
  v11[v17 % 0xC + 4] = *(v10 + 4069);
  v11[v16 % 0xB + 5] = *(v10 + 4070);
  v11[v12 % 0xA + 6] = *(v10 + 4071);
  v18 = v17 - v12;
  v19 = v12 + 2005852942;
  LODWORD(v13) = v15 - v18 + 1134560236;
  v20 = v13 ^ v18;
  v11[v15 % 9 + 7] = *(v10 + 4072);
  v11[(v20 & 7) + 8] = *(v10 + 4073);
  v21 = (v16 ^ 0x8A868784) - (v19 ^ 0x2ACBDFEC);
  v11[v21 % 7 + 9] = *(v10 + 4074);
  v11[(v19 ^ 0x2ACBDFECu) % 6 + 10] = *(v10 + 4075);
  v11[v13 % 5 + 11] = *(v10 + 4076);
  v22 = (v19 ^ 0x2ACBDFEC) - 617643117;
  v23 = v20 - v22;
  v24 = v23 + v21;
  v25 = v22 - v24;
  LODWORD(STACK[0x34E0]) = (v22 - v24) ^ (v13 + 1880108153);
  v26 = (v22 - v24) ^ (v13 + 1880108153) ^ v23;
  STACK[0x31E0] = v26;
  v11[(v26 & 3) + 12] = *(v10 + 4077);
  v24 ^= 0x3D8FBEu;
  LODWORD(STACK[0x3370]) = v24;
  v11[v24 % 3 + 13] = *(v10 + 4078);
  LODWORD(STACK[0x3378]) = v25;
  v11[(v25 & 1) + 14] = *(v10 + 4079);
  *(v10 + 4066) = 67305985;
  *(v10 + 4079) = 3854;
  *(v10 + 4070) = 5;
  *(v10 + 4072) = 7;
  *(v10 + 4073) = 8;
  *(v10 + 4074) = 9;
  *v11 = 0;
  *(v10 + 4071) = 6;
  *(v10 + 4075) = 10;
  *(v10 + 4076) = 11;
  *(v10 + 4077) = 12;
  *(v10 + 4078) = 13;
  *v11 = v11[v7 & 0xF];
  v11[v7 & 0xF] = 0;
  v27 = &v11[v4 % 0xF];
  v28 = *(v10 + 4066);
  *(v10 + 4066) = v27[1];
  v27[1] = v28;
  v29 = &v11[v5 % 0xE];
  v30 = *(v10 + 4067);
  *(v10 + 4067) = v29[2];
  v29[2] = v30;
  v31 = &v11[v6 % 0xD];
  v32 = *(v10 + 4068);
  *(v10 + 4068) = v31[3];
  v31[3] = v32;
  LOBYTE(v31) = *(v10 + 4069);
  v33 = v7 + 1237499277;
  v34 = &v11[(v7 + 1237499277) % 0xCu];
  *(v10 + 4069) = v34[4];
  v34[4] = v31;
  LODWORD(v31) = v6 - v7;
  v35 = v7 + v5;
  v36 = v6 - v7 + v4 + v35;
  v37 = &v11[v36 % 0xB];
  v38 = *(v10 + 4070);
  *(v10 + 4070) = v37[5];
  v37[5] = v38;
  v39 = &v11[(v35 ^ 0x5C034B9Fu) % 0xA];
  v40 = *(v10 + 4071);
  *(v10 + 4071) = v39[6];
  v39[6] = v40;
  v41 = LODWORD(STACK[0x3E38]) == 0;
  LODWORD(v31) = v35 ^ v31;
  v42 = v33 - (v35 ^ 0x5C034B9F);
  LOBYTE(v39) = *(v10 + 4072);
  v43 = &v11[v31 % 9];
  *(v10 + 4072) = v43[7];
  v44 = v31 - v42;
  v45 = v31 - v42 + 1134560236;
  v46 = v45 ^ v42;
  v43[7] = v39;
  LOBYTE(v31) = *(v10 + 4073);
  v47 = &v11[v46 & 7];
  *(v10 + 4073) = v47[8];
  v48 = ((v35 ^ 0x5C034B9F) + 2005852942) ^ 0x2ACBDFEC;
  v47[8] = v31;
  v49 = (v36 ^ 0x8A868784) - v48;
  v50 = &v11[v49 % 7];
  LOBYTE(v43) = *(v10 + 4074);
  *(v10 + 4074) = v50[9];
  v50[9] = v43;
  v51 = &v11[v48 % 6];
  v52 = *(v10 + 4075);
  *(v10 + 4075) = v51[10];
  v53 = !v41;
  v51[10] = v52;
  v54 = &v11[v45 % 5];
  v55 = *(v10 + 4076);
  *(v10 + 4076) = v54[11];
  v56 = v46 - (v48 - 617643117);
  v57 = v56 + v49;
  v58 = v48 - 617643117 - v57;
  v54[11] = v55;
  v57 ^= 0x3D8FBEu;
  v59 = v56 ^ (v44 - 1280298907) ^ v58;
  LODWORD(STACK[0x3558]) = v57;
  v60 = v57 % 3;
  STACK[0x34D8] = v59;
  v61 = *(v10 + 4077);
  v62 = &v11[v59 & 3];
  *(v10 + 4077) = v62[12];
  v62[12] = v61;
  v63 = &v11[v60];
  v64 = *(v10 + 4078);
  *(v10 + 4078) = v63[13];
  v63[13] = v64;
  LODWORD(STACK[0x3368]) = v58;
  v65 = *(v10 + 4079);
  v66 = &v11[v58 & 1];
  *(v10 + 4079) = v66[14];
  LODWORD(v59) = STACK[0x70FC];
  LODWORD(v54) = (55 - LODWORD(STACK[0x70FC])) & 0x3F;
  v66[14] = v65;
  LODWORD(STACK[0x37F8]) = v59 + v54 + 9;
  return (*(v9 + 8 * (v3 ^ (469 * v53))))();
}

uint64_t sub_100D22778()
{
  STACK[0x3428] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = (v3 ^ 0x79A4) + v0;
  v5 = *(v4 + 8 * ((28 * (v1 != 1175 * (v3 ^ 0x79BC) - 21140)) ^ v3));
  STACK[0x3850] = 10;
  return v5();
}

uint64_t sub_100D22A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  LODWORD(STACK[0x3D78]) = v7;
  LODWORD(STACK[0x3D88]) = STACK[0x3E38];
  LODWORD(STACK[0x3E40]) = a7;
  LODWORD(STACK[0x3D90]) = v8;
  LODWORD(STACK[0x3E38]) = v11;
  LODWORD(STACK[0x3D80]) = -v10;
  return (*(v9 + 8 * ((((a6 + 2125851783) & 0x8149FDF7 ^ 0x5491) * (v12 < 0x14)) | a6)))();
}

uint64_t sub_100D22AC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  LODWORD(STACK[0x3948]) = 0;
  v7 = *(v5 + 8 * (STACK[0x3D98] + 6697));
  STACK[0x3950] = a3;
  STACK[0x3938] = a5;
  LODWORD(STACK[0x3D98]) = STACK[0x3E40];
  LODWORD(STACK[0x3D40]) = STACK[0x3E18];
  v8 = STACK[0x3D80];
  LODWORD(STACK[0x3E18]) = STACK[0x3D80];
  LODWORD(STACK[0x3D70]) = v8;
  LODWORD(STACK[0x3E40]) = v6;
  return v7();
}

uint64_t sub_100D22B80(int a1, char a2, char a3, char a4)
{
  v9 = *(STACK[0x35E8] + 4 * v7) ^ (2 * (*(STACK[0x35E8] + 4 * v7) & a1));
  v10 = v7 ^ (2 * (v7 & STACK[0x3908]));
  v11 = (v10 << STACK[0x3D68]) ^ LODWORD(STACK[0x38D8]);
  *(STACK[0x33D8] + 4 * (((v10 & STACK[0x3E40]) >> a2) ^ (v10 << STACK[0x3D68]) ^ LOBYTE(STACK[0x38D8]))) = (((v9 & STACK[0x38D0]) >> a4) + ((v9 & STACK[0x38A0]) << a3)) ^ LODWORD(STACK[0x3778]);
  v12 = *(STACK[0x3738] + v7);
  *(STACK[0x3660] + 4 * (((v10 & STACK[0x3E18]) >> a4) ^ v11)) = ((((((v12 & a1) << v5) ^ v12) & STACK[0x38C0]) << a3) + (((((v12 & a1) << v5) ^ v12) & STACK[0x38F8]) >> a2)) ^ LODWORD(STACK[0x3880]);
  return (*(v8 + 8 * (((v7 == 255) * v6) ^ v4)))();
}

uint64_t sub_100D22C60@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x3D58]) = 0;
  v3 = STACK[0x3D68];
  v4 = LODWORD(STACK[0x3D68]) >> (v1 ^ 0xF7);
  v5 = STACK[0x3B38];
  LODWORD(STACK[0x39A8]) = v4;
  v5[1911] = v4;
  v6 = a1 >= LODWORD(STACK[0x3E18]);
  v5[1909] = HIBYTE(v3);
  v7 = !v6;
  v5[1912] = v3;
  v5[1910] = BYTE2(v3);
  return (*(v2 + 8 * ((488 * v7) ^ v1)))();
}

uint64_t sub_100D22CC0()
{
  LODWORD(STACK[0x43B0]) = STACK[0x43AC];
  LODWORD(STACK[0x43B4]) = STACK[0x43A8];
  LODWORD(STACK[0x43B8]) = STACK[0x43A4];
  LODWORD(STACK[0x43BC]) = STACK[0x43A0];
  v1 = STACK[0x4398];
  STACK[0x43C0] = STACK[0x4398];
  STACK[0x43C8] = STACK[0x4390];
  LODWORD(STACK[0x43D4]) = STACK[0x438C];
  v2 = STACK[0x4388];
  LODWORD(STACK[0x43D8]) = STACK[0x4388];
  LODWORD(STACK[0x43DC]) = (v2 + 1716) | 0x1018;
  v3 = STACK[0x37D0] + v1;
  STACK[0x43E0] = v3;
  v4 = *(v0 + 8 * (v2 ^ 0x40E4));
  STACK[0x3F18] = v3;
  STACK[0x3F08] = v4;
  return (*(v0 + 8 * (v2 + 16176)))();
}

uint64_t sub_100D22D78@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, char a8@<W8>)
{
  v23 = STACK[0x3C48];
  *(v23 + 36) = v19;
  *(v23 + 84) = LODWORD(STACK[0x3E18]) + 1;
  v24 = STACK[0x3C40];
  v24[55] = v22;
  *(v23 + 18) = a8;
  v24[104] = v11;
  v25 = STACK[0x3C38];
  v25[10] = v17;
  v25[5] = v8;
  *(v23 + 76) = v15;
  *(v23 + 14) = v20;
  v24[10] = a6;
  *(v23 + 51) = v18;
  v24[52] = STACK[0x3D70];
  v24[47] = v10;
  v24[45] = STACK[0x3D40];
  v24[81] = STACK[0x3B20];
  v24[51] = HIBYTE(a1);
  v25[7] = a7;
  v25[72] = STACK[0x3D78];
  v24[49] = STACK[0x3CF0];
  v24[48] = STACK[0x3D30];
  v25[46] = STACK[0x3D38];
  v24[33] = a5;
  v24[66] = STACK[0x3D50];
  v24[95] = a2;
  v25[37] = STACK[0x3D60];
  v24[50] = STACK[0x3D48];
  v24[75] = STACK[0x3D28];
  v24[3] = STACK[0x3D80];
  v24[36] = STACK[0x3D20];
  v24[110] = STACK[0x3B18];
  v24[12] = a4;
  v24[114] = STACK[0x3CE8];
  v24[28] = v12;
  v24[56] = v16;
  v24[35] = STACK[0x3D58];
  v24[29] = v9;
  v24[19] = v13;
  v24[22] = STACK[0x3D68];
  v24[8] = v21;
  v26 = STACK[0x39E8] & 1;
  v24[16] = STACK[0x3D88];
  v24[117] = STACK[0x3D90];
  return (*(v14 + 8 * ((((a3 ^ 0x6A26) - 19040 + ((a3 - 28675) | 0x304B)) * v26) ^ a3)))();
}

uint64_t sub_100D22F04(char a1, uint64_t a2, char a3)
{
  *STACK[0x3DA8] = v5;
  *STACK[0x3DA0] = v10;
  v12 = STACK[0x3D18];
  v12[332] = a1;
  v13 = (v7 + 343692366) & 0xEB83BF79;
  v12[261] = v3;
  v12[333] = v9;
  v12[262] = v11;
  v14 = a1 ^ 0x15 ^ (v7 + 110) & 0x5E;
  v12[334] = a3;
  v12[263] = v4;
  v15 = (v14 ^ v5) + v14;
  v12[335] = v15;
  v16 = v3 ^ 0xCBF64043;
  v17 = (v16 ^ v10) + v16;
  v12[264] = v17;
  v18 = v14 + 15;
  v12[336] = v14 + 15;
  v19 = v16 + 796264463;
  v20 = (v9 + 68) ^ 0x59;
  v12[265] = v16 + 15;
  v12[337] = v20;
  v21 = v9 + 68 + a3;
  v22 = (v13 - 648305912) ^ (v11 + 593092932);
  v12[266] = (v13 + 8) ^ (v11 + 68);
  v23 = v14 ^ v21;
  v12[338] = v23;
  v24 = v16 ^ (v11 + 593092932 + v4);
  v25 = v23 - v18;
  v12[267] = v24;
  v26 = (v23 - v18) ^ 0x8A ^ v15;
  v12[339] = v26;
  v27 = v24 - v19;
  v28 = v17 ^ 0x3A65828A ^ v27;
  v12[268] = v28;
  LOBYTE(v17) = (v18 ^ v20) - 45;
  v12[340] = v17;
  v29 = (v22 ^ v19) + 1142235603;
  v12[269] = ((v13 + 8) ^ (v11 + 68) ^ v19) - 45;
  v30 = v25 + v20 - (v18 ^ v20);
  v12[341] = v30;
  v31 = v22 - (v22 ^ v19) + v27;
  v12[270] = v31;
  v25 ^= 0xA5u;
  v12[342] = v25;
  v27 ^= 0x9D610A5u;
  v12[271] = v27;
  v32 = (v26 - v25) ^ 0x91;
  v12[343] = v32;
  v30 -= 74;
  LOBYTE(v17) = v17 ^ 0x1A;
  LOBYTE(v19) = v17 + v30 - v25;
  v33 = (v28 - v27) ^ 0xFFFCA391;
  v12[272] = v33;
  v12[344] = v19;
  v31 += 1927176886;
  v29 ^= 0x8B99B51A;
  v34 = v29 + v31 - v27;
  v12[273] = v34;
  v35 = v30 - v17;
  v12[345] = v35;
  v36 = v31 - v29;
  v37 = v25 - v17;
  v12[274] = v36;
  v12[346] = v37;
  v38 = v27 - v29;
  v39 = (v19 - v37) ^ v35;
  LOBYTE(v17) = v39 + v19 - v37;
  v12[275] = v38;
  v40 = v32 + 22 + v17;
  v12[347] = v40;
  v41 = (v34 - v38) ^ v36;
  v42 = v41 + v34 - v38;
  v43 = v33 - 1785892074 + v42;
  v12[276] = v43;
  v12[348] = v17;
  v12[277] = v42;
  v44 = v39 - v40;
  v12[349] = v44;
  v45 = v41 - v43;
  v12[278] = v45;
  v46 = v37 ^ 0x7E ^ v44;
  v12[350] = v46;
  v47 = v38 ^ 0xA61D57E ^ v45;
  v12[279] = v47;
  LOBYTE(v19) = v40 + 82;
  LOBYTE(v34) = (v40 + 82) ^ 0x8C;
  v12[351] = v34;
  v48 = v43 - 629270190;
  v49 = (v43 - 629270190) ^ 0xBA9EDC8C;
  v12[280] = (v43 + 82) ^ 0x8C;
  v50 = v40 ^ v17;
  LOBYTE(v17) = v44 - 82;
  v51 = v44 - 82 + v50;
  v12[352] = v51;
  v52 = v45 - 1408161362;
  v53 = v45 - 1408161362 + (v43 ^ v42);
  v12[281] = v53;
  v44 -= 105;
  v12[353] = v44;
  v45 -= 587590505;
  v12[282] = v45;
  v54 = v46 + v19 + v17;
  v12[354] = v54;
  v55 = v47 + v48 + v52;
  v12[283] = v55;
  LOBYTE(v17) = v34 ^ v44;
  LOBYTE(v42) = v34 ^ v44 ^ 0x25;
  v12[355] = v42;
  v56 = v49 ^ v45 ^ 0xB43F8E25;
  v12[284] = v56;
  v57 = v17 ^ v51;
  LOBYTE(v17) = v57 - (v17 ^ 0x25);
  v12[356] = v17;
  v58 = v53 ^ v49 ^ v45;
  v59 = v58 - v56;
  v12[285] = v58 - v56;
  v60 = v54 ^ v44;
  v61 = v60 + v57;
  v12[357] = v61;
  v62 = v55 ^ v45;
  v63 = v62 + v58;
  v12[286] = v63;
  v64 = v60 + v54;
  v12[358] = v64 + 99;
  v65 = v62 + v55;
  v12[287] = v62 + v55 + 99;
  LOBYTE(v55) = v61 + v42;
  LOBYTE(v17) = v17 - (v61 + v42);
  v66 = v61 + 110 + v17;
  v12[359] = v66 ^ v55;
  v67 = v63 + v56;
  v68 = v59 - (v63 + v56);
  v69 = v68 + v63;
  v70 = (v69 + 409659502) ^ v67;
  v12[288] = v70;
  v12[361] = v66;
  v12[290] = v69 + 110;
  v71 = v64 - v66 - 27;
  v12[362] = v71;
  v72 = v65 - v69 + 1378544247;
  v12[291] = v72;
  LOBYTE(v17) = v71 ^ v17;
  LOBYTE(v49) = v17 ^ v66;
  v73 = v71 ^ v66 ^ v55;
  v74 = (v73 + 25) ^ (v66 + 44);
  v12[364] = v74 ^ v49;
  v75 = v72 ^ v68;
  v76 = v75 ^ (v69 + 409659502);
  v77 = v70 ^ v72;
  v78 = (v77 + 361689369) ^ (v69 + 115639962);
  v12[293] = v78 ^ v76;
  v12[360] = v17;
  v12[289] = v75;
  LOBYTE(v55) = v49 + (v17 ^ v55);
  v12[363] = v55;
  v12[366] = v73 + 25;
  v79 = v76 + (v75 ^ v67);
  v12[292] = v79;
  v12[365] = v74;
  v12[294] = v78;
  v12[295] = v77 + 25;
  v80 = v74 - 2 * v73 + 113;
  LOBYTE(v55) = v80 ^ (v55 + v73 + 25);
  v12[367] = v55;
  v81 = v78 - 2 * v77 - 985933967;
  v82 = v81 ^ (v79 + v77 + 361689369);
  v12[296] = v82;
  v12[368] = v49 + 121;
  v12[297] = v76 + 121;
  v12[369] = v80;
  v12[298] = v81;
  v73 -= 21;
  v12[370] = v73;
  v77 += 532689387;
  v12[299] = v77;
  LOBYTE(v75) = v55 ^ 0x3C;
  LOBYTE(v62) = (v55 ^ 0x3C) + v49 + 121;
  LOBYTE(v55) = v62 ^ (v73 - v55);
  LOBYTE(v75) = v55 ^ v75;
  v12[371] = v75;
  v83 = v77 - v82;
  v84 = v82 ^ 0x7154443C;
  v85 = (v82 ^ 0x7154443C) + v76 - 1838296455;
  v86 = v85 ^ v83;
  v87 = v86 ^ v84;
  v12[300] = v87;
  v12[372] = v62 - 27;
  LOBYTE(v67) = v75 + v62 - 27;
  v88 = v85 - 996420891;
  v12[301] = v85 - 27;
  v89 = v55 ^ v80;
  v12[373] = v89;
  v90 = v86 ^ v81;
  v12[302] = v90;
  LOBYTE(v62) = (v62 + 47) ^ 0x24;
  v12[376] = v62;
  v91 = (v85 - 284805329) ^ 0xC2641A24;
  v12[305] = v91;
  v92 = (v89 ^ 0xEF) + v67;
  LOBYTE(v67) = v55 - v67 - v92;
  v12[378] = v67;
  v93 = v87 + v88;
  v94 = (v90 ^ 0xE58D86EF) + v93;
  v95 = v86 - v93 - v94;
  v12[307] = v95;
  LOBYTE(v93) = v92 - 11 + v67;
  LOBYTE(v62) = v92 - 11 + v62;
  v96 = v94 + 1196930549 + v91;
  v97 = v94 + 1196930549 + v95;
  v12[374] = v55;
  v12[303] = v86;
  v12[375] = v55;
  v12[304] = v86;
  v12[377] = v92;
  v12[306] = v94;
  LOBYTE(v55) = (v93 ^ v55) + v62;
  v12[379] = v55;
  v98 = (v97 ^ v86) + v96;
  v12[308] = v98;
  LOBYTE(v62) = v62 + 118;
  v12[380] = v62;
  v96 += 238454902;
  v12[309] = v96;
  v92 += 52;
  v12[381] = v92;
  v94 += 1417048628;
  v12[310] = v94;
  LOBYTE(v93) = v93 - 58;
  v12[382] = v93;
  v97 -= 585303610;
  v12[311] = v97;
  LOBYTE(v93) = v93 - v55;
  LOBYTE(v62) = v93 + v62;
  LOBYTE(v55) = v55 ^ v92 ^ v62;
  v12[383] = v55;
  v99 = v97 - v98;
  v100 = v99 + v96;
  LOBYTE(v98) = v98 ^ v94 ^ v100;
  v12[312] = v98;
  v101 = (v93 + v92) ^ v62;
  LOBYTE(v62) = v62 ^ 0xF4;
  v12[384] = v62;
  v102 = (v99 + v94) ^ v100;
  v100 ^= 0x78B0DBF4u;
  v12[313] = v100;
  v12[385] = v101;
  v12[314] = v102;
  LOBYTE(v93) = v93 - v101;
  v12[386] = v93;
  v103 = v99 - v102;
  v12[315] = v103;
  LOBYTE(v55) = v55 + v62;
  LOBYTE(v62) = v93 ^ v62;
  v104 = v101 - 127 + v55;
  LOBYTE(v93) = v93 ^ 0x7F;
  LOBYTE(v76) = v93 ^ v55;
  v12[387] = v93 ^ v55;
  LOBYTE(v55) = v100 + v98;
  v105 = v103 ^ v100;
  LOBYTE(v102) = v102 - 127 + v55;
  LOBYTE(v103) = v103 ^ 0x7F;
  v12[316] = v103 ^ v55;
  LOBYTE(v62) = v62 - 15;
  v12[388] = v62;
  v106 = (v105 + 975152881);
  v12[317] = v105 - 15;
  v12[389] = v104;
  v12[318] = v102;
  LOBYTE(v105) = v93 - v62;
  v12[390] = v93 - v62;
  v12[319] = v103 - v106;
  LOBYTE(v93) = v93 - v62 - (v62 ^ 0x7F);
  v12[391] = (v93 ^ v76) - (v104 - v93);
  STACK[0x27D8] = v106;
  v107 = v103 - v106 - (v106 ^ 0x7F);
  v12[320] = (v107 ^ v103 ^ v55) - (v102 - v107);
  v12[392] = v105;
  v12[321] = v103 - v106;
  v12[393] = (v104 - v93) ^ 0xE0;
  v12[322] = (v102 - v107) ^ 0xE0;
  v12[394] = v93 ^ 0x13;
  v12[323] = v107 ^ 0x13;
  return (*(v6 + 8 * ((v7 + 8339) ^ (86 * ((v8 & 1) == 0)))))();
}

uint64_t sub_100D2366C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v11 = STACK[0x3D50];
  v12 = STACK[0x3D70];
  v13 = (*(a6 + v12) + v12) * ((LODWORD(STACK[0x3D50]) - 862577341) & 0x3369D15F ^ 0xE6CF0002) - a4 + v9;
  HIDWORD(v14) = ((v13 % 0x101 + v13) ^ a7) + v10 - a5 + v7;
  LODWORD(v14) = HIDWORD(v14);
  LODWORD(STACK[0x3E18]) = (((v14 >> 28) - (a7 + a5)) ^ HIDWORD(v14) ^ v7) - 1135462707;
  STACK[0x3D70] = ++v12;
  return (*(v8 + 8 * ((15607 * (v12 == STACK[0x3E40])) ^ v11)))();
}

uint64_t sub_100D2377C()
{
  v3 = *(v1 + 8 * (((((v0 + 1772760174) & 0x1655D7BF ^ 0xFFFFEE53) + v0 + 1070) * (LODWORD(STACK[0x2C20]) == 3)) ^ (v0 + 6369)));
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2260];
  v4 = STACK[0x3540];
  LODWORD(STACK[0x3E18]) = STACK[0x3540];
  LODWORD(STACK[0x3B18]) = v2;
  LODWORD(STACK[0x3D40]) = v4;
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = STACK[0x3710];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  LODWORD(STACK[0x2C20]) = 2;
  return v3();
}

uint64_t sub_100D23A9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 2032883031 * *(STACK[0x3E18] + v4);
  v9 = v8 ^ a4;
  v10 = ((v8 ^ a4) + v4) >> 16;
  v11 = v4 - 1692873589 + v9 - v10 + ((v9 + v4 - v10) >> 8);
  v12 = (v4 - v10 + v9 + v5 + ((v9 + v4 - v10) >> 8)) ^ v8;
  v13 = v4 - 1692873589 + v12 - ((v12 + v4) >> 16) + ((v12 + v4 - ((v12 + v4) >> 16)) >> 8);
  v14 = v4 + 1 >= STACK[0x38B8];
  STACK[0x39F0] = v11 ^ STACK[0x39F0] ^ (v11 >> 2) & 0xEFDF3EF ^ v13 ^ (v13 >> 2) & 0xEFDF3EF;
  return (*(v7 + 8 * ((74 * v14) ^ v6)))();
}

uint64_t sub_100D23B80@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x3D68]) = 0;
  LODWORD(STACK[0x3AF0]) = 0;
  LODWORD(STACK[0x3CF0]) = 0;
  LODWORD(STACK[0x3838]) = 0;
  LODWORD(STACK[0x3A28]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D20]) = 0;
  LODWORD(STACK[0x3AA0]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x3AD8]) = 0;
  LODWORD(STACK[0x3858]) = 0;
  LODWORD(STACK[0x3860]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3AE0]) = 0;
  LODWORD(STACK[0x38B0]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  LODWORD(STACK[0x38B8]) = 0;
  v3 = (2 * v1) ^ 0x708Cu;
  v4 = STACK[0x3B18];
  STACK[0x24B8] = STACK[0x3B18];
  v5 = STACK[0x3948];
  v6 = STACK[0x3948] >> ((2 * v1) ^ 2u);
  STACK[0x2718] = BYTE2(v4);
  STACK[0x3190] = HIDWORD(v4);
  v7 = *(v2 + 8 * v1);
  STACK[0x3D98] = v3;
  STACK[0x3C78] = STACK[0x3950];
  STACK[0x2CF0] = v4 >> 40;
  STACK[0x2D90] = v4 >> 8;
  STACK[0x2CF8] = v6;
  STACK[0x2940] = v5 >> 24;
  STACK[0x3BE0] = v5 >> 40;
  STACK[0x3158] = HIWORD(v4);
  STACK[0x2608] = a1;
  STACK[0x2470] = BYTE4(v5);
  STACK[0x24D8] = v5;
  STACK[0x3128] = HIBYTE(v5);
  STACK[0x29E8] = v5 >> 8;
  STACK[0x2C58] = HIWORD(v5);
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3D80]) = 1;
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3828]) = 1;
  LODWORD(STACK[0x39E8]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x39F0]) = 1;
  LODWORD(STACK[0x3D50]) = 1;
  return v7();
}

uint64_t sub_100D23CD8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X8>)
{
  LODWORD(STACK[0x3AF0]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3AE0]) = 0;
  LODWORD(STACK[0x38B0]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  LODWORD(STACK[0x38B8]) = 0;
  v12 = STACK[0x3948];
  v13 = STACK[0x3948] >> (((a3 + 9) | 0x8C) ^ 0x86u);
  v14 = STACK[0x3B18];
  STACK[0x2570] = BYTE4(STACK[0x3B18]);
  v15 = *(v11 + 8 * (a3 ^ 0x1100));
  LODWORD(STACK[0x3E40]) = 1;
  STACK[0x3D98] = ((a3 ^ 0x1100) + 12553) | 0x108Cu;
  STACK[0x2510] = STACK[0x3950];
  STACK[0x25A8] = v10;
  STACK[0x26A0] = a2;
  STACK[0x2680] = v12;
  STACK[0x2950] = v14 >> 40;
  STACK[0x2780] = v8;
  STACK[0x3058] = v9;
  STACK[0x2FA0] = v7;
  STACK[0x28F0] = v6;
  STACK[0x2520] = a1;
  STACK[0x3C08] = v5;
  STACK[0x2998] = v4;
  STACK[0x2F68] = v14;
  STACK[0x2798] = a4;
  STACK[0x3520] = v13;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3D80]) = 1;
  LODWORD(STACK[0x3D68]) = 1;
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3828]) = 1;
  LODWORD(STACK[0x39E8]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x39F0]) = 1;
  LODWORD(STACK[0x3D50]) = 1;
  LODWORD(STACK[0x3838]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3840]) = 1;
  LODWORD(STACK[0x3848]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3850]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3AD8]) = 1;
  LODWORD(STACK[0x3858]) = 1;
  LODWORD(STACK[0x3860]) = 1;
  return v15();
}

uint64_t sub_100D23E24()
{
  v1 = STACK[0x3FBC];
  LODWORD(STACK[0x4E1C]) = LODWORD(STACK[0x71EC]) ^ LODWORD(STACK[0x71E0]);
  v2 = *(v0 + 8 * (v1 - 15587));
  STACK[0x4E20] = LODWORD(STACK[0x3FB4]);
  v3 = STACK[0x3FA8];
  v4 = STACK[0x3FC8];
  LODWORD(STACK[0x453C]) = v1;
  STACK[0x4540] = v3;
  LODWORD(STACK[0x4548]) = v4;
  return v2();
}

uint64_t sub_100D23E84()
{
  v2 = STACK[0x3B38];
  v3 = STACK[0x3670];
  v4 = *(STACK[0x3670] + 4 * (*(STACK[0x3B38] + 518) ^ 0xDLL));
  LODWORD(STACK[0x3D68]) = v1 + 10401;
  v5 = *(v3 + 4 * ~v2[516]);
  v6 = *(v3 + 4 * (*STACK[0x35C0] ^ 0x68));
  v7 = *(v3 + 4 * (v2[517] ^ 0x77));
  v8 = STACK[0x3598];
  v9 = STACK[0x3678];
  v10 = *(STACK[0x3678] + 4 * (v2[1751] ^ 0xALL));
  v11 = *(STACK[0x3678] + 4 * (v2[1749] ^ 0xE0));
  v12 = *(STACK[0x3678] + 4 * (*STACK[0x3598] ^ 0xC4));
  v13 = *(STACK[0x3678] + 4 * (v2[1750] ^ 0x1DLL));
  v14 = v7 ^ ((v7 ^ 0xFD88CD19) >> 2) ^ ((v7 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v4 ^ ((v4 ^ 0xFD88CD19) >> ((v1 - 95) ^ 0x97)) ^ ((v4 ^ 0xFD88CD19) >> 1) ^ 0x222B9D77, 8) ^ __ROR4__(v5 ^ 0x911E38CC ^ ((v5 ^ 0xFD88CD19) >> 2) ^ ((v5 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v6 ^ 0xEE3EF798 ^ ((v6 ^ 0xFD88CD19) >> 2) ^ ((v6 ^ 0xFD88CD19) >> 1), 16) ^ 0xA28B9F76;
  v15 = v13 ^ (16 * (v13 ^ 0xD607A034)) ^ (2 * (v13 ^ 0xD607A034)) ^ __ROR4__(v10 ^ (16 * (v10 ^ 0xD607A034)) ^ (2 * (v10 ^ 0xD607A034)) ^ 0xB23DB3FC, 8) ^ __ROR4__(v11 ^ (16 * (v11 ^ 0xD607A034)) ^ (2 * (v11 ^ 0xD607A034)) ^ 0xEA6D07EB, 24) ^ __ROR4__(v12 ^ (16 * (v12 ^ 0xD607A034)) ^ (2 * (v12 ^ 0xD607A034)) ^ 0x17400CA0, 16) ^ 0x4CEF7748;
  *STACK[0x35C0] = HIBYTE(v14);
  *v8 = HIBYTE(v15);
  v2[516] = BYTE2(v14);
  v2[1749] = BYTE2(v15);
  v2[517] = BYTE1(v14);
  v2[1750] = BYTE1(v15);
  v2[518] = v14;
  v2[1751] = v15;
  v16 = *(v3 + 4 * (v2[522] ^ 0x5ELL));
  v17 = *(v3 + 4 * (v2[521] ^ 0xDBLL));
  v18 = *(v3 + 4 * (v2[520] ^ 0x62));
  v19 = *(v3 + 4 * (v2[519] ^ 0x9DLL));
  v20 = *(v9 + 4 * (v2[1755] ^ 0x81));
  v21 = *(v9 + 4 * (v2[1753] ^ 0x52));
  v22 = *(v9 + 4 * (v2[1754] ^ 0x59));
  v23 = *(v9 + 4 * (v2[1752] ^ 0xCFLL));
  v24 = v17 ^ 0xAF8EF09A ^ ((v17 ^ 0xFD88CD19) >> 2) ^ ((v17 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v16 ^ 0xCFE65BE5 ^ ((v16 ^ 0xFD88CD19) >> 2) ^ ((v16 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v18 ^ ((v18 ^ 0xFD88CD19) >> 2) ^ ((v18 ^ 0xFD88CD19) >> 1) ^ 0x38A01551, 24) ^ __ROR4__(v19 ^ ((v19 ^ 0xFD88CD19) >> 2) ^ ((v19 ^ 0xFD88CD19) >> 1) ^ 0xD868BC2F, 16);
  v25 = v22 ^ 0x49BA621C ^ (16 * (v22 ^ 0xD607A034)) ^ (2 * (v22 ^ 0xD607A034)) ^ __ROR4__(v20 ^ (16 * (v20 ^ 0xD607A034)) ^ (2 * (v20 ^ 0xD607A034)) ^ 0x475459A4, 8) ^ __ROR4__(v21 ^ 0x1C73A06E ^ (16 * (v21 ^ 0xD607A034)) ^ (2 * (v21 ^ 0xD607A034)), 24);
  v26 = __ROR4__(v23 ^ (16 * (v23 ^ 0xD607A034)) ^ (2 * (v23 ^ 0xD607A034)) ^ 0x4289CED2, 16);
  v2[519] = HIBYTE(v24);
  v2[1752] = (v25 ^ v26) >> 24;
  v2[520] = BYTE2(v24);
  v2[1753] = (v25 ^ v26) >> 16;
  v2[521] = BYTE1(v24);
  v2[1754] = (v25 ^ v26) >> 8;
  v2[522] = v24;
  v2[1755] = v25 ^ v26;
  v27 = *(v3 + 4 * (v2[526] ^ 8));
  v28 = *(v3 + 4 * (v2[525] ^ 0xC4));
  v29 = *(v3 + 4 * (v2[524] ^ 0xF5));
  v30 = *(v3 + 4 * (v2[523] ^ 0x73));
  v31 = *(v9 + 4 * (v2[1759] ^ 0x2DLL));
  v32 = *(v9 + 4 * (v2[1757] ^ 0x5DLL));
  v33 = *(v9 + 4 * (v2[1756] ^ 0x31));
  v34 = *(v9 + 4 * (v2[1758] ^ 0xE3));
  v35 = v28 ^ ((v28 ^ 0xFD88CD19) >> 2) ^ ((v28 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v27 ^ ((v27 ^ 0xFD88CD19) >> 2) ^ ((v27 ^ 0xFD88CD19) >> 1) ^ 0xC964EC13, 8) ^ __ROR4__(v29 ^ ((v29 ^ 0xFD88CD19) >> 2) ^ ((v29 ^ 0xFD88CD19) >> 1) ^ 0x4780DA05, 24) ^ __ROR4__(v30 ^ ((v30 ^ 0xFD88CD19) >> 2) ^ ((v30 ^ 0xFD88CD19) >> 1) ^ 0x7ED2A1A6, 16) ^ 0xE33B9874;
  v2[523] = HIBYTE(v35);
  v36 = v34 ^ LODWORD(STACK[0x20C]) ^ (16 * (v34 ^ 0xD607A034)) ^ (2 * (v34 ^ 0xD607A034)) ^ __ROR4__(v31 ^ (16 * (v31 ^ 0xD607A034)) ^ (2 * (v31 ^ 0xD607A034)) ^ 0xB0D37847, 8) ^ __ROR4__(v32 ^ (16 * (v32 ^ 0xD607A034)) ^ (2 * (v32 ^ 0xD607A034)) ^ 0x1CBF635D, 24);
  v37 = __ROR4__(v33 ^ (16 * (v33 ^ 0xD607A034)) ^ (2 * (v33 ^ 0xD607A034)) ^ 0x1BC87E81, 16);
  v2[1756] = (v36 ^ v37) >> 24;
  v2[524] = BYTE2(v35);
  v2[1757] = BYTE2(v36) ^ BYTE2(v37);
  v2[525] = BYTE1(v35);
  v2[1758] = (v36 ^ v37) >> 8;
  v2[526] = v35;
  v2[1759] = v36 ^ v37;
  v38 = *(v3 + 4 * (v2[530] ^ 0x4FLL));
  v39 = *(v3 + 4 * (v2[529] ^ 0x74));
  v40 = *(v3 + 4 * (v2[528] ^ 0x2BLL));
  v41 = *(v3 + 4 * (v2[527] ^ 0x67));
  v42 = *(v9 + 4 * (v2[1763] ^ 0x5ELL));
  v43 = *(v9 + 4 * (v2[1761] ^ 0x5DLL));
  v44 = v40 ^ ((v40 ^ 0xFD88CD19) >> 2) ^ ((v40 ^ 0xFD88CD19) >> 1) ^ 0x7297CA49;
  v45 = *(v9 + 4 * (v2[1762] ^ 0xE8));
  v46 = *(v9 + 4 * (v2[1760] ^ 0x46));
  v47 = v39 ^ ((v39 ^ 0xFD88CD19) >> 2) ^ ((v39 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v38 ^ 0x8994EF12 ^ ((v38 ^ 0xFD88CD19) >> 2) ^ ((v38 ^ 0xFD88CD19) >> 1), 8) ^ HIBYTE(v44) ^ (v44 << 8) ^ __ROR4__(v41 ^ 0xD3EF6435 ^ ((v41 ^ 0xFD88CD19) >> 2) ^ ((v41 ^ 0xFD88CD19) >> 1), 16) ^ 0xFBB14FAA;
  v2[527] = HIBYTE(v47);
  v48 = v45 ^ (16 * (v45 ^ 0xD607A034)) ^ (2 * (v45 ^ 0xD607A034)) ^ __ROR4__(v42 ^ (16 * (v42 ^ 0xD607A034)) ^ (2 * (v42 ^ 0xD607A034)) ^ 0xE37CA3AD, 8) ^ __ROR4__(v43 ^ (16 * (v43 ^ 0xD607A034)) ^ (2 * (v43 ^ 0xD607A034)) ^ 0x1CBF635D, 24) ^ __ROR4__(v46 ^ (16 * (v46 ^ 0xD607A034)) ^ (2 * (v46 ^ 0xD607A034)) ^ 0x1D62A42A, 16) ^ 0x40670569;
  v2[1760] = HIBYTE(v48);
  v2[528] = BYTE2(v47);
  v2[1761] = BYTE2(v48);
  v2[529] = BYTE1(v47);
  v2[1762] = BYTE1(v48);
  v2[530] = v47;
  v2[1763] = v48;
  v49 = *(v9 + 4 * (v2[1766] ^ 0xB4));
  v50 = *(v9 + 4 * (v2[1767] ^ 0xC8));
  v51 = *(v9 + 4 * (v2[1765] ^ 0xF7));
  v52 = *(v9 + 4 * (v2[1764] ^ 0x22));
  v53 = v49 ^ 0xBB2C17BA ^ (16 * (v49 ^ 0xD607A034)) ^ (2 * (v49 ^ 0xD607A034)) ^ __ROR4__(v50 ^ (16 * (v50 ^ 0xD607A034)) ^ (2 * (v50 ^ 0xD607A034)) ^ 0xE84F0F63, 8) ^ __ROR4__(v51 ^ 0x14BFC35F ^ (16 * (v51 ^ 0xD607A034)) ^ (2 * (v51 ^ 0xD607A034)), 24) ^ __ROR4__(v52 ^ (16 * (v52 ^ 0xD607A034)) ^ (2 * (v52 ^ 0xD607A034)) ^ 0xB01FBB74, 16);
  v54 = *(v3 + 4 * (v2[533] ^ 0xECLL));
  v55 = *(v3 + 4 * (v2[534] ^ 0x7DLL));
  v56 = *(v3 + 4 * (v2[532] ^ 0x56));
  v57 = *(v3 + 4 * (v2[531] ^ 0x80));
  v58 = v54 ^ 0xB9401353 ^ ((v54 ^ 0xFD88CD19) >> 2) ^ ((v54 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v55 ^ ((v55 ^ 0xFD88CD19) >> 2) ^ ((v55 ^ 0xFD88CD19) >> 1) ^ 0x74157DBF, 8) ^ __ROR4__(v56 ^ ((v56 ^ 0xFD88CD19) >> 2) ^ ((v56 ^ 0xFD88CD19) >> 1) ^ 0x77542644, 24) ^ __ROR4__(v57 ^ 0xFAF14BA9 ^ ((v57 ^ 0xFD88CD19) >> 2) ^ ((v57 ^ 0xFD88CD19) >> 1), 16);
  v2[531] = HIBYTE(v58);
  v2[1764] = HIBYTE(v53);
  v2[532] = BYTE2(v58);
  v2[1765] = BYTE2(v53);
  v2[533] = BYTE1(v58);
  v2[1766] = BYTE1(v53);
  v2[534] = v58;
  v2[1767] = v53;
  v59 = *(v3 + 4 * (v2[538] ^ 0x4FLL));
  v60 = *(v3 + 4 * (v2[537] ^ 0xBDLL));
  v61 = *(v3 + 4 * (v2[536] ^ 0x7CLL));
  v62 = *(v3 + 4 * (v2[535] ^ 0xFBLL));
  v63 = *(v9 + 4 * (v2[1771] ^ 0xC9));
  v64 = *(v9 + 4 * (v2[1769] ^ 0xDDLL));
  v65 = *(v9 + 4 * (v2[1768] ^ 0xEDLL));
  v66 = *(v9 + 4 * (v2[1770] ^ 0x6BLL));
  v67 = v60 ^ 0x3AA14AA9 ^ ((v60 ^ 0xFD88CD19) >> 2) ^ ((v60 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v59 ^ 0x8994EF12 ^ ((v59 ^ 0xFD88CD19) >> 2) ^ ((v59 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v61 ^ ((v61 ^ 0xFD88CD19) >> 2) ^ ((v61 ^ 0xFD88CD19) >> 1) ^ 0x4303320B, 24) ^ __ROR4__(v62 ^ ((v62 ^ 0xFD88CD19) >> 2) ^ ((v62 ^ 0xFD88CD19) >> 1) ^ 0x4D47061C, 16);
  v2[535] = HIBYTE(v67);
  v68 = v66 ^ 0x1F04EDB3 ^ (16 * (v66 ^ 0xD607A034)) ^ (2 * (v66 ^ 0xD607A034)) ^ __ROR4__(v63 ^ 0xBD0E4F33 ^ (16 * (v63 ^ 0xD607A034)) ^ (2 * (v63 ^ 0xD607A034)), 8) ^ __ROR4__(v64 ^ (16 * (v64 ^ 0xD607A034)) ^ (2 * (v64 ^ 0xD607A034)) ^ 0xBC1F4B77, 24) ^ __ROR4__(v65 ^ 0x40234478 ^ (16 * (v65 ^ 0xD607A034)) ^ (2 * (v65 ^ 0xD607A034)), 16);
  v2[1768] = HIBYTE(v68);
  v2[536] = BYTE2(v67);
  v2[1769] = BYTE2(v68);
  v2[537] = BYTE1(v67);
  v2[1770] = BYTE1(v68);
  v2[538] = v67;
  v2[1771] = v68;
  v69 = *(v3 + 4 * (v2[542] ^ 0x70));
  v70 = *(v3 + 4 * (v2[541] ^ 0xC9));
  v71 = *(v3 + 4 * (v2[540] ^ 0x67));
  v72 = *(v3 + 4 * (v2[539] ^ 0x70));
  v73 = *(v9 + 4 * (v2[1775] ^ 0x13));
  v74 = *(v9 + 4 * (v2[1773] ^ 0x7ALL));
  v75 = v74 ^ 0x1E51A8E6 ^ (16 * (v74 ^ 0xD607A034)) ^ (2 * (v74 ^ 0xD607A034));
  v76 = *(v9 + 4 * (v2[1772] ^ 0xDELL));
  v77 = *(v9 + 4 * (v2[1774] ^ 0xA7));
  v78 = v70 ^ ((v70 ^ 0xFD88CD19) >> 2) ^ ((v70 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v69 ^ ((v69 ^ 0xFD88CD19) >> 2) ^ ((v69 ^ 0xFD88CD19) >> 1) ^ 0x27E8717A, 8) ^ __ROR4__(v71 ^ 0xD3EF6435 ^ ((v71 ^ 0xFD88CD19) >> 2) ^ ((v71 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v72 ^ ((v72 ^ 0xFD88CD19) >> 2) ^ ((v72 ^ 0xFD88CD19) >> 1) ^ 0x27E8717A, 16) ^ 0xB0C694B1;
  v79 = v77 ^ (16 * (v77 ^ 0xD607A034)) ^ (2 * (v77 ^ 0xD607A034)) ^ __ROR4__(v73 ^ 0x1962F42B ^ (16 * (v73 ^ 0xD607A034)) ^ (2 * (v73 ^ 0xD607A034)), 8) ^ HIBYTE(v75) ^ (v75 << 8) ^ __ROR4__(v76 ^ 0x43DC8B87 ^ (16 * (v76 ^ 0xD607A034)) ^ (2 * (v76 ^ 0xD607A034)), 16) ^ 0x10FBD24F;
  v2[539] = HIBYTE(v78);
  v2[1772] = HIBYTE(v79);
  v2[540] = BYTE2(v78);
  v2[1773] = BYTE2(v79);
  v2[541] = BYTE1(v78);
  v2[1774] = BYTE1(v79);
  v2[542] = v78;
  v2[1775] = v79;
  v80 = *(v3 + 4 * (v2[546] ^ 0x1ELL));
  v81 = *(v3 + 4 * (v2[545] ^ 0xF3));
  v82 = *(v3 + 4 * (v2[544] ^ 0xD1));
  v83 = *(v3 + 4 * (v2[543] ^ 0x70));
  v84 = *(v9 + 4 * (v2[1779] ^ 0x9ELL));
  v85 = *(v9 + 4 * (v2[1777] ^ 0x42));
  v86 = *(v9 + 4 * (v2[1776] ^ 0x60));
  v87 = *(v9 + 4 * (v2[1778] ^ 0x7CLL));
  v88 = v81 ^ 0xF5F57BBD ^ ((v81 ^ 0xFD88CD19) >> 2) ^ ((v81 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v80 ^ ((v80 ^ 0xFD88CD19) >> 2) ^ ((v80 ^ 0xFD88CD19) >> 1) ^ 0xA75B6E8, 8) ^ __ROR4__(v82 ^ ((v82 ^ 0xFD88CD19) >> 2) ^ ((v82 ^ 0xFD88CD19) >> 1) ^ 0x79101253, 24) ^ __ROR4__(v83 ^ ((v83 ^ 0xFD88CD19) >> 2) ^ ((v83 ^ 0xFD88CD19) >> 1) ^ 0x27E8717A, 16);
  v2[543] = HIBYTE(v88);
  v89 = v87 ^ 0xE1D62907 ^ (16 * (v87 ^ 0xD607A034)) ^ (2 * (v87 ^ 0xD607A034)) ^ __ROR4__(v84 ^ (16 * (v84 ^ 0xD607A034)) ^ (2 * (v84 ^ 0xD607A034)) ^ 0x138C9F92, 8) ^ __ROR4__(v85 ^ (16 * (v85 ^ 0xD607A034)) ^ (2 * (v85 ^ 0xD607A034)) ^ 0x4867A56B, 24);
  v90 = __ROR4__(v86 ^ (16 * (v86 ^ 0xD607A034)) ^ (2 * (v86 ^ 0xD607A034)) ^ 0x4ACD2FC1, 16);
  v2[1776] = (HIWORD(v89) ^ HIWORD(v90)) >> 8;
  v2[544] = BYTE2(v88);
  v2[1777] = BYTE2(v89) ^ BYTE2(v90);
  v2[545] = BYTE1(v88);
  v2[1778] = (v89 ^ v90) >> 8;
  v2[546] = v88;
  v2[1779] = v89 ^ v90;
  v91 = *(v3 + 4 * (v2[550] ^ 0xCDLL));
  v92 = *(v3 + 4 * (v2[549] ^ 0x61));
  v93 = *(v3 + 4 * (v2[548] ^ 0xAELL));
  v94 = *(v3 + 4 * (v2[547] ^ 0x28));
  v95 = *(v9 + 4 * (v2[1783] ^ 0xD3));
  v96 = *(v9 + 4 * (v2[1781] ^ 8));
  v97 = *(v9 + 4 * (v2[1782] ^ 0x21));
  v98 = *(v9 + 4 * (v2[1780] ^ 0xCBLL));
  v99 = v92 ^ ((v92 ^ 0xFD88CD19) >> 2) ^ ((v92 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v91 ^ 0x6C9FAA61 ^ ((v91 ^ 0xFD88CD19) >> 2) ^ ((v91 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v93 ^ ((v93 ^ 0xFD88CD19) >> 2) ^ ((v93 ^ 0xFD88CD19) >> 1) ^ 0x12FF6136, 24) ^ __ROR4__(v94 ^ ((v94 ^ 0xFD88CD19) >> 2) ^ ((v94 ^ 0xFD88CD19) >> 1) ^ 0x2BAD1A95, 16) ^ 0x619AC58D;
  v2[547] = HIBYTE(v99);
  v100 = v97 ^ (16 * (v97 ^ 0xD607A034)) ^ (2 * (v97 ^ 0xD607A034)) ^ __ROR4__(v95 ^ (16 * (v95 ^ 0xD607A034)) ^ (2 * (v95 ^ 0xD607A034)) ^ 0xE992C814, 8) ^ __ROR4__(v96 ^ 0x18BF335C ^ (16 * (v96 ^ 0xD607A034)) ^ (2 * (v96 ^ 0xD607A034)), 24) ^ __ROR4__(v98 ^ 0x178CCF93 ^ (16 * (v98 ^ 0xD607A034)) ^ (2 * (v98 ^ 0xD607A034)), 16) ^ 0x4FDC7B84;
  v2[1780] = HIBYTE(v100);
  v2[548] = BYTE2(v99);
  v2[1781] = BYTE2(v100);
  v2[549] = BYTE1(v99);
  v2[1782] = BYTE1(v100);
  v2[550] = v99;
  v2[1783] = v100;
  v101 = *(v3 + 4 * (v2[554] ^ 0xD1));
  v102 = *(v3 + 4 * (v2[553] ^ 0xB9));
  v103 = *(v3 + 4 * (v2[552] ^ 0xA1));
  v104 = *(v3 + 4 * (v2[551] ^ 0xD5));
  v105 = *(v9 + 4 * (v2[1787] ^ 0xA0));
  v106 = *(v9 + 4 * (v2[1785] ^ 0x45));
  v107 = *(v9 + 4 * (v2[1784] ^ 0x64));
  v108 = *(v9 + 4 * (v2[1786] ^ 0xC2));
  v109 = v102 ^ ((v102 ^ 0xFD88CD19) >> 2) ^ ((v102 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v101 ^ ((v101 ^ 0xFD88CD19) >> 2) ^ ((v101 ^ 0xFD88CD19) >> 1) ^ 0x79101253, 8) ^ __ROR4__(v103 ^ 0x2F2EF29B ^ ((v103 ^ 0xFD88CD19) >> 2) ^ ((v103 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v104 ^ ((v104 ^ 0xFD88CD19) >> 2) ^ ((v104 ^ 0xFD88CD19) >> 1) ^ 0xA5492C83, 16) ^ 0xE6F87479;
  v2[551] = HIBYTE(v109);
  v110 = v108 ^ 0xE8C78D41 ^ (16 * (v108 ^ 0xD607A034)) ^ (2 * (v108 ^ 0xD607A034)) ^ __ROR4__(v105 ^ 0xBA3D13FE ^ (16 * (v105 ^ 0xD607A034)) ^ (2 * (v105 ^ 0xD607A034)), 8) ^ __ROR4__(v106 ^ 0xE2A164DA ^ (16 * (v106 ^ 0xD607A034)) ^ (2 * (v106 ^ 0xD607A034)), 24);
  v111 = __ROR4__(v107 ^ (16 * (v107 ^ 0xD607A034)) ^ (2 * (v107 ^ 0xD607A034)) ^ 0x1FC82E80, 16);
  v2[1784] = (v110 ^ v111) >> 24;
  v2[552] = BYTE2(v109);
  v2[1785] = (v110 ^ v111) >> 16;
  v2[553] = BYTE1(v109);
  v2[1786] = (v110 ^ v111) >> 8;
  v2[554] = v109;
  v2[1787] = v110 ^ v111;
  v112 = *(v3 + 4 * (v2[558] ^ 0x8DLL));
  v113 = *(v3 + 4 * (v2[557] ^ 0x4ALL));
  v114 = *(v3 + 4 * (v2[556] ^ 0x49));
  v115 = *(v3 + 4 * (v2[555] ^ 0x86));
  v116 = *(v9 + 4 * (v2[1791] ^ 0x44));
  v117 = *(v9 + 4 * (v2[1789] ^ 0xF7));
  v118 = *(v9 + 4 * (v2[1790] ^ 0x65));
  v119 = v113 ^ ((v113 ^ 0xFD88CD19) >> 2) ^ ((v113 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v112 ^ ((v112 ^ 0xFD88CD19) >> 2) ^ ((v112 ^ 0xFD88CD19) >> 1) ^ 0xA90C476C, 8) ^ __ROR4__(v114 ^ 0x3BE14EAA ^ ((v114 ^ 0xFD88CD19) >> 2) ^ ((v114 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v115 ^ ((v115 ^ 0xFD88CD19) >> 2) ^ ((v115 ^ 0xFD88CD19) >> 1) ^ 0x4884EA11, 16) ^ 0x62DB9E76;
  v120 = *(v9 + 4 * (v2[1788] ^ 0xD6));
  v2[555] = HIBYTE(v119);
  v121 = v118 ^ (16 * (v118 ^ 0xD607A034)) ^ (2 * (v118 ^ 0xD607A034)) ^ __ROR4__(v116 ^ (16 * (v116 ^ 0xD607A034)) ^ (2 * (v116 ^ 0xD607A034)) ^ 0xB7E0248A, 8) ^ __ROR4__(v117 ^ 0x14BFC35F ^ (16 * (v117 ^ 0xD607A034)) ^ (2 * (v117 ^ 0xD607A034)), 24) ^ __ROR4__(v120 ^ (16 * (v120 ^ 0xD607A034)) ^ (2 * (v120 ^ 0xD607A034)) ^ 0xE9D68905, 16) ^ 0x4A896ED0;
  v2[1788] = HIBYTE(v121);
  v2[556] = BYTE2(v119);
  v2[1789] = BYTE2(v121);
  v2[557] = BYTE1(v119);
  v2[1790] = BYTE1(v121);
  v2[558] = v119;
  v2[1791] = v121;
  v122 = *(v3 + 4 * (v2[562] ^ 0x4CLL));
  v123 = *(v3 + 4 * (v2[561] ^ 0x15));
  v124 = *(v3 + 4 * (v2[560] ^ 0x18));
  v125 = *(v3 + 4 * (v2[559] ^ 0x34));
  v126 = *(v9 + 4 * (v2[1795] ^ 0xA7));
  v127 = *(v9 + 4 * (v2[1793] ^ 0xAFLL));
  v128 = *(v9 + 4 * (v2[1794] ^ 0xBALL));
  v129 = *(v9 + 4 * (v2[1792] ^ 0x3ELL));
  v130 = v123 ^ ((v123 ^ 0xFD88CD19) >> 2) ^ ((v123 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v122 ^ 0xD0AE3FCE ^ ((v122 ^ 0xFD88CD19) >> 2) ^ ((v122 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v124 ^ 0xB8001750 ^ ((v124 ^ 0xFD88CD19) >> 2) ^ ((v124 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v125 ^ ((v125 ^ 0xFD88CD19) >> 2) ^ ((v125 ^ 0xFD88CD19) >> 1) ^ 0x3E22A2A7, 16) ^ 0xEBFD1B95;
  v131 = v128 ^ 0xEEA194D9 ^ (16 * (v128 ^ 0xD607A034)) ^ (2 * (v128 ^ 0xD607A034)) ^ __ROR4__(v126 ^ (16 * (v126 ^ 0xD607A034)) ^ (2 * (v126 ^ 0xD607A034)) ^ 0x10FBD24F, 8) ^ __ROR4__(v127 ^ (16 * (v127 ^ 0xD607A034)) ^ (2 * (v127 ^ 0xD607A034)) ^ 0xBAF1D0CD, 24);
  v132 = __ROR4__(v129 ^ 0x1B04BDB2 ^ (16 * (v129 ^ 0xD607A034)) ^ (2 * (v129 ^ 0xD607A034)), 16);
  v2[559] = HIBYTE(v130);
  v2[1792] = (v131 ^ v132) >> 24;
  v2[560] = BYTE2(v130);
  v2[1793] = (v131 ^ v132) >> 16;
  v2[561] = BYTE1(v130);
  v2[1794] = (v131 ^ v132) >> 8;
  v2[562] = v130;
  v2[1795] = v131 ^ v132;
  v133 = *(v3 + 4 * (v2[566] ^ 0x63));
  v134 = *(v3 + 4 * (v2[565] ^ 0x8FLL));
  v135 = *(v3 + 4 * (v2[564] ^ 0xBBLL));
  v136 = *(v3 + 4 * (v2[563] ^ 0x1CLL));
  v137 = *(v9 + 4 * (v2[1799] ^ 0x9ELL));
  v138 = *(v9 + 4 * (v2[1797] ^ 0xECLL));
  v139 = *(v9 + 4 * (v2[1796] ^ 0xD5));
  v140 = *(v9 + 4 * (v2[1798] ^ 0x22));
  v141 = v134 ^ ((v134 ^ 0xFD88CD19) >> 2) ^ ((v134 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v133 ^ ((v133 ^ 0xFD88CD19) >> 2) ^ ((v133 ^ 0xFD88CD19) >> 1) ^ 0xFB65AE5, 8) ^ __ROR4__(v135 ^ 0x88D4EB11 ^ ((v135 ^ 0xFD88CD19) >> 2) ^ ((v135 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v136 ^ ((v136 ^ 0xFD88CD19) >> 2) ^ ((v136 ^ 0xFD88CD19) >> 1) ^ 0x64592980, 16) ^ 0xC720D804;
  v2[563] = HIBYTE(v141);
  v142 = v140 ^ (16 * (v140 ^ 0xD607A034)) ^ (2 * (v140 ^ 0xD607A034)) ^ __ROR4__(v137 ^ (16 * (v137 ^ 0xD607A034)) ^ (2 * (v137 ^ 0xD607A034)) ^ 0x138C9F92, 8) ^ __ROR4__(v138 ^ (16 * (v138 ^ 0xD607A034)) ^ (2 * (v138 ^ 0xD607A034)) ^ 0x15620428, 24) ^ __ROR4__(v139 ^ (16 * (v139 ^ 0xD607A034)) ^ (2 * (v139 ^ 0xD607A034)) ^ 0x161549F5, 16) ^ 0xB01FBB74;
  v2[1796] = HIBYTE(v142);
  v2[564] = BYTE2(v141);
  v2[1797] = BYTE2(v142);
  v2[565] = BYTE1(v141);
  v2[1798] = BYTE1(v142);
  v2[566] = v141;
  v2[1799] = v142;
  v143 = *(v3 + 4 * (v2[570] ^ 0x91));
  v144 = *(v3 + 4 * (v2[569] ^ 0xA2));
  v145 = *(v3 + 4 * (v2[568] ^ 0xE2));
  v146 = *(v3 + 4 * (v2[567] ^ 0x6DLL));
  v147 = *(v9 + 4 * (v2[1803] ^ 0x26));
  v148 = *(v9 + 4 * (v2[1801] ^ 0x6DLL));
  v149 = *(v9 + 4 * (v2[1800] ^ 0x95));
  v150 = *(v9 + 4 * (v2[1802] ^ 0xD7));
  v151 = v144 ^ ((v144 ^ 0xFD88CD19) >> 2) ^ ((v144 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v143 ^ 0xBC83FF5E ^ ((v143 ^ 0xFD88CD19) >> 2) ^ ((v143 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v145 ^ 0xB387CF4A ^ ((v145 ^ 0xFD88CD19) >> 2) ^ ((v145 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v146 ^ 0x57186FC ^ ((v146 ^ 0xFD88CD19) >> 2) ^ ((v146 ^ 0xFD88CD19) >> 1), 16) ^ 0x76142247;
  v152 = v150 ^ (16 * (v150 ^ 0xD607A034)) ^ (2 * (v150 ^ 0xD607A034)) ^ __ROR4__(v147 ^ 0xE51ABA35 ^ (16 * (v147 ^ 0xD607A034)) ^ (2 * (v147 ^ 0xD607A034)), 8) ^ __ROR4__(v148 ^ (16 * (v148 ^ 0xD607A034)) ^ (2 * (v148 ^ 0xD607A034)) ^ 0xE0836C52, 24) ^ __ROR4__(v149 ^ (16 * (v149 ^ 0xD607A034)) ^ (2 * (v149 ^ 0xD607A034)) ^ 0x46455DE0, 16) ^ 0xBC97C955;
  v2[567] = HIBYTE(v151);
  v2[1800] = HIBYTE(v152);
  v2[568] = BYTE2(v151);
  v2[1801] = BYTE2(v152);
  v2[569] = BYTE1(v151);
  v2[1802] = BYTE1(v152);
  v2[570] = v151;
  v2[1803] = v152;
  v153 = *(v3 + 4 * (v2[574] ^ 0xEALL));
  v154 = *(v3 + 4 * (((v2[573] << 8) ^ 0xC600) >> 8));
  v155 = *(v3 + 4 * (v2[572] ^ 0x24));
  v156 = *(v3 + ((((v2[571] << 24) | (v2[573] << 8)) ^ 0x2A00C600) >> 22));
  v157 = *(v9 + 4 * (v2[1807] ^ 0xB9));
  v158 = *(v9 + 4 * (v2[1805] ^ 0x83));
  v159 = *(v9 + 4 * (v2[1804] ^ 0x9CLL));
  v160 = v154 ^ 0x8D17071C ^ ((v154 ^ 0xFD88CD19) >> 2) ^ ((v154 ^ 0xFD88CD19) >> 1);
  v161 = *(v9 + 4 * (v2[1806] ^ 0xDLL));
  v162 = v158 ^ (16 * (v158 ^ 0xD607A034)) ^ (2 * (v158 ^ 0xD607A034)) ^ 0xEDD6D904;
  v163 = v160 ^ __ROR4__(v153 ^ ((v153 ^ 0xFD88CD19) >> 2) ^ ((v153 ^ 0xFD88CD19) >> 1) ^ 0xB35B2EB, 8) ^ __ROR4__(v155 ^ 0x4F4659E4 ^ ((v155 ^ 0xFD88CD19) >> 2) ^ ((v155 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v156 ^ ((v156 ^ 0xFD88CD19) >> 2) ^ ((v156 ^ 0xFD88CD19) >> 1) ^ 0x458185FD, 16);
  v2[571] = HIBYTE(v163);
  v164 = v161 ^ (16 * (v161 ^ 0xD607A034)) ^ (2 * (v161 ^ 0xD607A034)) ^ __ROR4__(v157 ^ (16 * (v157 ^ 0xD607A034)) ^ (2 * (v157 ^ 0xD607A034)) ^ 0x11625429, 8) ^ (v162 << 8) ^ HIBYTE(v162) ^ __ROR4__(v159 ^ (16 * (v159 ^ 0xD607A034)) ^ (2 * (v159 ^ 0xD607A034)) ^ 0xB90E1F32, 16) ^ 0x18FB724D;
  v2[1804] = HIBYTE(v164);
  v2[572] = BYTE2(v163);
  v2[1805] = BYTE2(v164);
  v2[573] = BYTE1(v163);
  v2[1806] = BYTE1(v164);
  v2[574] = v163;
  v2[1807] = v164;
  v165 = *(v3 + 4 * (v2[578] ^ 0xE7));
  v166 = *(v3 + 4 * (v2[577] ^ 0x12));
  v167 = *(v3 + 4 * (v2[576] ^ 0x18));
  v168 = *(v3 + 4 * (v2[575] ^ 0x3ALL));
  v2[575] = (v166 ^ ((v166 ^ 0xFD88CD19) >> 2) ^ ((v166 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v165 ^ ((v165 ^ 0xFD88CD19) >> 2) ^ ((v165 ^ 0xFD88CD19) >> 1) ^ 0x58C8BE2E, 8) ^ __ROR4__(v167 ^ 0xB8001750 ^ ((v167 ^ 0xFD88CD19) >> 2) ^ ((v167 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v168 ^ 0x34E57EBE ^ ((v168 ^ 0xFD88CD19) >> 2) ^ ((v168 ^ 0xFD88CD19) >> 1), 16) ^ 0x6E9EF599) >> 24;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100D2571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53)
{
  v55 = v53;
  v56 = (*(v53 + 8 * (a53 ^ 0xD3D)))(1032);
  *(v54 - 224) = a53 ^ 0x64B8;
  return (*(v55 + 8 * (((v56 != 0) * ((a53 ^ 0x64B8) - 4707)) ^ a53)))(0);
}

uint64_t sub_100D36DE8()
{
  v2 = *(*STACK[0x3E40] + (STACK[0x1568] & *v0));
  v3 = (((2 * (v2 + STACK[0x1560])) & 0xCFCA11FBB4892B24) - (v2 + STACK[0x1560]) + 0x181AF70225BB6A6DLL) ^ 0xDAB5C9A81A4AD289;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (0x58A349EED7248A2DLL - ((v5 + v4) | 0x58A349EED7248A2DLL) + ((v5 + v4) | 0xA75CB61128DB75D2)) ^ 0xC2AEE2CC3056C12ELL;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = __ROR8__((((2 * (v10 + v9)) & 0x5DD54EEC2F45BC60) - (v10 + v9) + 0x51155889E85D21CFLL) ^ 0xF0A7C54C3F2B32E4, 8);
  v12 = (((2 * (v10 + v9)) & 0x5DD54EEC2F45BC60) - (v10 + v9) + 0x51155889E85D21CFLL) ^ 0xF0A7C54C3F2B32E4 ^ __ROR8__(v9, 61);
  v13 = (((2 * (v11 + v12)) & 0xCE971F3F597CD6ACLL) - (v11 + v12) + 0x18B47060534194A9) ^ 0xF7B05021A6A4DC45;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0xC926909D0EFF9280) - (v17 + v16) - 0x6493484E877FC940) ^ 0x30C649600DCE0ACFLL;
  v19 = (LOBYTE(STACK[0x3F17]) ^ (LOBYTE(STACK[0x411F]) - ((2 * LOBYTE(STACK[0x411F])) & 0x24) + 18)) ^ 0x12u ^ (((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v16, 61))) ^ 0x6F4F60BC0E025EE0) >> STACK[0x1370]);
  v20 = *(STACK[0x4EA0] + v19) ^ (2 * (STACK[0x4E9D] & *(STACK[0x4EA0] + v19)));
  LOBYTE(v18) = *(STACK[0x4EA0] + LOBYTE(STACK[0x4110]));
  v21 = (v20 & LOBYTE(STACK[0x4E9C])) >> STACK[0x5350];
  LOBYTE(v11) = LOBYTE(STACK[0x4E9F]) & v18;
  STACK[0x4120] = STACK[0x6C20] >> 40;
  LOBYTE(v18) = v18 ^ (2 * v11);
  LOBYTE(v20) = (v20 << STACK[0x5320]) + v21;
  v22 = v18 << STACK[0x5338];
  v23 = (LOBYTE(STACK[0x4E9E]) & v18) >> STACK[0x5328];
  LOBYTE(STACK[0x412F]) = v23;
  STACK[0x4130] = LOWORD(STACK[0x6C36]);
  *(STACK[0x3D18] + 1830) = v23 ^ v22 ^ LODWORD(STACK[0x52A4]) ^ v20;
  v24 = *(v1 + 8 * (LODWORD(STACK[0x3A20]) + 10341));
  STACK[0x3F18] = STACK[0x1900];
  STACK[0x3F08] = v24;
  return (*(v1 + 8 * (LODWORD(STACK[0x34C8]) + 20924)))();
}

uint64_t sub_100D37114(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v14 = v7;
  v15 = *(v10 + (v11 & (((v9 + v7) & 0xFFFFFFF8) + 2050767130)));
  v16 = __ROR8__((v9 + v7) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (((v8 + 1172481771) & 0xBA1CFE3C ^ 0xC0984A6FCA09BFB3) - (v15 + v16) + ((2 * (v15 + v16)) & 0x7ECF6B206BECBCF8)) ^ 0x78104BBB2BCEC2D0;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0x389830C2306F0DF8 - ((v19 + v18) | 0x389830C2306F0DF8) + ((v19 + v18) | 0xC767CF3DCF90F207)) ^ 0xFFAF7E5728959A70;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xE580B17D8CC5E551;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) & 0x8721A1DB584E1972) - (v24 + v23) + 0x3C6F2F1253D8F346) ^ 0xDDCED249828D0A3CLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xDA604B0C03A2BF99;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) | 0xC6CD78B0D7F88DC2) - (v29 + v28) - 0x6366BC586BFC46E1) ^ 0x99535E95A0C27726;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  LODWORD(v30) = -474096243 * ((((__ROR8__((0x84FCB0E3B23F08CALL - ((v32 + v31) | 0x84FCB0E3B23F08CALL) + ((v32 + v31) | 0x7B034F1C4DC0F735)) ^ 0xA9F343FA6D25249BLL, 8) + ((0x84FCB0E3B23F08CALL - ((v32 + v31) | 0x84FCB0E3B23F08CALL) + ((v32 + v31) | 0x7B034F1C4DC0F735)) ^ 0xA9F343FA6D25249BLL ^ __ROR8__(v31, 61))) ^ 0xF4730B31AE70757BLL) >> (a7 & 0x38)) ^ *(v9 + v14));
  LODWORD(v31) = v30 ^ v13;
  v33 = (v30 ^ v13) + v14;
  v34 = (v33 + WORD1(v33)) >> 8;
  LODWORD(v30) = ((v14 + 1201690760 + v31 - v34 + (v33 >> 16)) ^ v30) + v14;
  return (*(v12 + 8 * ((45 * (v14 + 1 < a6)) ^ v8)))((v33 - v34 + (v33 >> 16)) ^ a1 ^ (v30 - ((v30 + WORD1(v30)) >> 8) + WORD1(v30)));
}

uint64_t sub_100D37494@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W8>)
{
  *(a2 - 1) = v5;
  *a2 = v5;
  return (*(v4 + 8 * (((a1 == 0) * a3) ^ a4)))(a1 - 16, a2 + 2);
}

uint64_t sub_100D374BC@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X7>, int a4@<W8>)
{
  STACK[0x720] = a2;
  v5 = 563 * (a4 ^ 0x3FC2);
  LODWORD(STACK[0x810]) = a1;
  v6 = *(v4 + 8 * a4);
  STACK[0x770] = a3 + 1;
  LODWORD(STACK[0x780]) = v5;
  v7 = 101 * (v5 ^ 0x3FA0);
  LODWORD(STACK[0x6E0]) = v7;
  LODWORD(STACK[0x760]) = v7 - 79969251;
  STACK[0x790] = a3;
  return v6();
}

uint64_t sub_100D37BAC()
{
  v2 = *(v0 + 8 * (v1 - 15217));
  LODWORD(STACK[0x3D50]) = 128;
  return v2(STACK[0x3428]);
}

uint64_t sub_100D37C9C(int a1)
{
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3AD8]) = STACK[0x351C];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = STACK[0x3710];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  v3 = *(v1 + 8 * (a1 + 6527));
  LODWORD(STACK[0x3958]) = STACK[0x39C0];
  STACK[0x3928] = v2;
  return v3();
}

uint64_t sub_100D37D10()
{
  v2 = *(*STACK[0x3E40] + (STACK[0x1630] & *v0));
  v3 = (v2 + STACK[0x1638]) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x6FF046966119128DLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (0xFAA055E2583C84A0 - ((v9 + v8) | 0xFAA055E2583C84A0) + ((v9 + v8) | 0x55FAA1DA7C37B5FLL)) ^ 0xA4ED37D870B56874;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((v12 + v11) ^ 0xA2807794466B748ALL) - ((2 * ((v12 + v11) ^ 0xA2807794466B748ALL)) & 0xD88C1574763A7048) - 0x13B9F545C4E2C7DCLL) ^ 0xA1C25D6F88930442;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x3FC91A89664F3AACLL) - (v15 + v14) + 0x601B72BB4CD862A9) ^ 0xB8DCC1A486C1BB77;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * ((v18 + v17) ^ 0x64DA32E0CC7919D6)) | 0x37E536A0E293020ELL) - ((v18 + v17) ^ 0x64DA32E0CC7919D6) + 0x640D64AF8EB67EF9) ^ 0xAB7DA89E37815B5ELL;
  LOBYTE(v17) = *(STACK[0x4EA0] + ((LOBYTE(STACK[0x3F17]) ^ (LOBYTE(STACK[0x6C21]) - ((2 * LOBYTE(STACK[0x6C21])) & 0xD4) + 106)) ^ 0x6Au ^ (((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0) >> STACK[0x12F8])));
  LOBYTE(v17) = v17 ^ (2 * (LOBYTE(STACK[0x4E9F]) & v17));
  v20 = v17 << STACK[0x5320];
  v21 = (v17 & LOBYTE(STACK[0x4E9C])) >> STACK[0x5350];
  LODWORD(v19) = *(STACK[0x4EA0] + LOBYTE(STACK[0x45E8]));
  LOBYTE(STACK[0x4603]) = v19;
  LOBYTE(v21) = v21 | v20;
  LODWORD(v20) = 2 * (LOBYTE(STACK[0x4E9D]) & v19);
  LOBYTE(STACK[0x4604]) = v20;
  v22 = v20 ^ v19;
  LOBYTE(STACK[0x4605]) = v22;
  v23 = (LOBYTE(STACK[0x4E9E]) & v22) >> STACK[0x5328];
  LOBYTE(STACK[0x4606]) = v23;
  *(STACK[0x3D18] + 1819) = ((v22 << STACK[0x5338]) | v23) ^ LODWORD(STACK[0x52A4]) ^ v21;
  LOBYTE(STACK[0x4607]) = STACK[0x45F8];
  v24 = *(v1 + 8 * (LODWORD(STACK[0x295C]) + 24256));
  STACK[0x3F18] = STACK[0x1898];
  STACK[0x3F08] = v24;
  return (*(v1 + 8 * (LODWORD(STACK[0x3C58]) ^ 0xC61u)))();
}

uint64_t sub_100D382D4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v7 = v2 - 6393;
  v8 = __ROR8__((a2 + v5) & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((2 * (v8 - 0x70824D863E123F43)) | 0x55A7025480DFC2EALL) - (v8 - 0x70824D863E123F43) - 0x2AD3812A406FE175;
  v10 = v7 ^ 0xF9546A3DB97E39E5 ^ v9;
  v9 ^= 0x82B9F9F3B6101BEFLL;
  v11 = (__ROR8__(v10, 8) + v9) ^ 0x3A7C64F71FBFC65BLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (0xB8965655EEDC6277 - ((v13 + v12) ^ 0x906E02F4264F0D5CLL | 0xB8965655EEDC6277) + ((v13 + v12) ^ 0x906E02F4264F0D5CLL | 0x4769A9AA11239D88)) ^ 0x2CC624D5A2045494;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x4AE5CE6F63977933;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0x6771ADAA5531DA6CLL) - (v18 + v17) + 0x4C47292AD56712C9) ^ 0x6413E2705EBC91DELL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xF7721CC6F3AEFBDCLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = -1108384429 * ((((__ROR8__((((2 * (v23 + v22)) & 0xC2B3E9709F0F3FBELL) - (v23 + v22) - 0x6159F4B84F879FE0) ^ 0x78111C7D2B53D07DLL, 8) + ((((2 * (v23 + v22)) & 0xC2B3E9709F0F3FBELL) - (v23 + v22) - 0x6159F4B84F879FE0) ^ 0x78111C7D2B53D07DLL ^ __ROR8__(v22, 61))) ^ 0x94AC86FF716F8E22) >> (v3 & 0x38)) ^ *(a2 + v5));
  v25 = v5 + 1777078514 + (v24 ^ a1) - (((v24 ^ a1) + v5 + (((v24 ^ a1) + v5) >> 16)) >> 8) + (((v24 ^ a1) + v5) >> 16);
  LODWORD(STACK[0x6CD4]) = v25 ^ v4 ^ (v5 + 1777078514 + (v25 ^ v24) - (((v25 ^ v24) + v5 + (((v25 ^ v24) + v5) >> 16)) >> 8) + (((v25 ^ v24) + v5) >> 16));
  v26 = *(v6 + 8 * ((49 * (v5 > 0x12)) ^ v2));
  LODWORD(STACK[0x446C]) = v7;
  return v26();
}

uint64_t sub_100D385C4(uint64_t a1)
{
  LODWORD(STACK[0x3D68]) = v1 + 15163;
  v3 = STACK[0x3198];
  LODWORD(STACK[0x3698]) = 1;
  *v3 = 1;
  v4 = *(v2 + 8 * (v1 + 2603));
  LODWORD(STACK[0x33E8]) = 6;
  v5 = STACK[0x10F8];
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  LODWORD(STACK[0x30D0]) = STACK[0x39C0];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  LODWORD(STACK[0x38C8]) = STACK[0x31D0];
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x3958]) = STACK[0x32C8];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  return v4(a1, v5);
}

uint64_t sub_100D387D4()
{
  v2 = STACK[0x3D80];
  LODWORD(STACK[0x3D60]) = *STACK[0x3D80];
  STACK[0x3D80] = v2 + 4;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100D387FC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v3) = 0;
  v7 = v3 + 1 < STACK[0x3848];
  LODWORD(STACK[0x2230]) = v1 & v2;
  return (*(v6 + 8 * ((v7 * (v1 & v2 ^ v5)) ^ v4)))();
}

uint64_t sub_100D389DC(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&STACK[0x450] = v17;
  *&STACK[0x460] = v16;
  *&STACK[0x470] = v15;
  *&STACK[0x480] = v13;
  *&STACK[0x490] = v14;
  return (*(STACK[0x8B0] + 8 * v12))(v11 - (v10 & 0x1FFFFFFF8) + 8, a10 - v11, STACK[0x870] - v11 - 8, a1, a2, a3, a4, a5, *&STACK[0x440]);
}

uint64_t sub_100D38A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53)
{
  v55 = (v53 + 7200);
  STACK[0x3AF0] = v55;
  v56 = *(v54 + 8 * ((252 * (LODWORD(STACK[0x2B78]) == (v55 ^ 0xFFFFFFFB) + v55)) ^ v53));
  STACK[0x958] = STACK[0x970];
  STACK[0x968] = STACK[0x940];
  STACK[0x938] = a53;
  v57 = STACK[0x21F8];
  LODWORD(STACK[0x1C98]) = STACK[0x21F8];
  LODWORD(STACK[0x32E0]) = v57;
  STACK[0x1B60] = LODWORD(STACK[0x20AC]);
  LODWORD(STACK[0x2B50]) = STACK[0x36B8];
  LODWORD(STACK[0x2B78]) = 0;
  return v56(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_100D38DC0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(v5 + 8 * (((((a3 - 690208889) & 0x2923FB9E) + (a3 ^ 0x117F)) * (v3 == v4)) ^ a3));
  LODWORD(STACK[0x3D98]) = 1;
  return v6();
}

uint64_t sub_100D38E28@<X0>(uint64_t a1@<X0>, char a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unint64_t a50)
{
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3D40]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  v51 = 3525 * (a3 ^ 0x134E);
  LODWORD(STACK[0x32C0]) = v51;
  LODWORD(STACK[0x3D68]) = a3 ^ 0x41D6;
  v52 = *(v50 + 8 * (((v51 - 20992) * (a2 & 1)) ^ a3));
  STACK[0x3998] = STACK[0x3D60];
  STACK[0x39E8] = STACK[0x3D88];
  STACK[0x3650] = LODWORD(STACK[0x3AD8]);
  LODWORD(STACK[0x3AE0]) = STACK[0x39F0];
  LODWORD(STACK[0x39A0]) = STACK[0x3E40];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  LODWORD(STACK[0x3948]) = STACK[0x3D20];
  STACK[0x3540] = LODWORD(STACK[0x32D8]);
  LODWORD(STACK[0x3710]) = STACK[0x3860];
  LODWORD(STACK[0x38C8]) = STACK[0x31D0];
  LODWORD(STACK[0x3988]) = STACK[0x3D90];
  LODWORD(STACK[0x3810]) = STACK[0x3D80];
  LODWORD(STACK[0x32C8]) = STACK[0x3958];
  LODWORD(STACK[0x1188]) = STACK[0x3A28];
  LODWORD(STACK[0x3980]) = STACK[0x3D70];
  v53 = STACK[0x32E0];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  LODWORD(STACK[0x33E8]) = v53;
  LODWORD(STACK[0x36A0]) = 3;
  LODWORD(STACK[0x3D80]) = 2;
  LODWORD(STACK[0x3E18]) = 1;
  v54 = STACK[0x39C0];
  v55 = STACK[0x10E0];
  STACK[0x36D0] = STACK[0x10E0];
  STACK[0x37A8] = a50;
  STACK[0x3860] = v55;
  STACK[0x3760] = STACK[0x1160];
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x39F0]) = 1;
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x36B8]) = STACK[0x351C];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x3858]) = v54;
  LODWORD(STACK[0x3958]) = v54;
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  return v52(a1, v55);
}

uint64_t sub_100D38FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  v7 = 7050 * (a5 ^ 0x134B);
  LODWORD(STACK[0x3D68]) = v7;
  v8 = *(v6 + 8 * ((v5 * ((v7 + 1091413760) & 0xBEF24FE6 ^ 0x20C2)) ^ a5));
  LODWORD(STACK[0x3D80]) = 4;
  LODWORD(STACK[0x3E18]) = 1;
  v9 = STACK[0x3350];
  v10 = STACK[0x3860];
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x39F0]) = 1;
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  STACK[0x39C0] = LODWORD(STACK[0x3958]);
  return v8(a1, v9, a2, a3, a4, v10);
}

uint64_t sub_100D3904C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  LODWORD(STACK[0x3D70]) = 0;
  v7 = *(v6 + 8 * ((((v5 + 3483) ^ 0x1123 ^ (45 * (v5 ^ 0x1FD2))) * (v4 > LODWORD(STACK[0x32E0]))) ^ v5));
  LODWORD(STACK[0x3D80]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  STACK[0x3D98] = a4;
  return v7();
}

uint64_t sub_100D390E0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v3 - 1;
  if (((((a3 ^ 0x22) - 63) & (2 * *(v4 + v6))) + (*(v4 + v6) ^ 0x3E) + 97) >= (((a3 + 31) & 0xEF) + 114))
  {
    v7 = -8;
  }

  else
  {
    v7 = -40;
  }

  return (*(v5 + 8 * ((95 * ((v7 + (((a3 ^ 0x22) - 63) & (2 * *(v4 + v6))) + (*(v4 + v6) ^ 0x3E) - 119) > 5u)) ^ a3)))();
}

uint64_t sub_100D392AC()
{
  v4 = v0 >> v3;
  v5 = v4 + 0x7C94AD43D3ED3075 - 2 * v4;
  v6 = v5 ^ (v2 + 9049) ^ 0xE3368BFBA56FD652;
  v7 = ((v2 + 2032113021) & 0x86E067FF ^ 0xC66D17F74ADF3CE2) & (2 * v5);
  return (*(v1 + 8 * (v2 | (4 * ((((v7 ^ v6) - 0x5FCB393F795CECA8 + 2 * (v7 & v6)) & v4) == 0)))))();
}

uint64_t sub_100D39470@<X0>(int a1@<W4>, int a2@<W8>)
{
  v14 = v3;
  v15 = 3 * (LODWORD(STACK[0x3B20]) ^ 0x795E);
  v16 = a1 ^ LODWORD(STACK[0x3D58]) ^ a2;
  v17 = STACK[0x3D50];
  LODWORD(STACK[0x32A0]) = LODWORD(STACK[0x3D58]) + v11;
  v18 = a2 ^ v4;
  v19 = a2 ^ v11;
  v20 = a2 ^ 0xCBB9A30C;
  v21 = v18 - v20;
  v22 = a1 ^ 0x85E82B44 ^ v21;
  LODWORD(STACK[0x3D70]) = (((v17 ^ v13) - v13) ^ ((v17 ^ v5) - v5) ^ ((v16 ^ v17) - v16)) - v12;
  v23 = (v13 ^ v2) - (v13 ^ 0xCBB9A30C);
  v24 = v23 ^ v5;
  v25 = v19 + v20;
  v26 = (v13 ^ v12) + (v13 ^ 0xCBB9A30C);
  v27 = STACK[0x3D88];
  v28 = STACK[0x3E38];
  v29 = (v19 + v20) ^ LODWORD(STACK[0x3E38]) ^ v22;
  v30 = v24 ^ 0x63155E68;
  LODWORD(STACK[0x3D28]) = v15;
  v31 = v19 ^ v15 ^ 0x40257EC0;
  v32 = v31 + v28;
  v33 = v31 - v21;
  v34 = v33 + v25;
  v35 = v13 ^ v12 ^ 0x40253506;
  v36 = v31 - (v22 ^ 0xE6FD752C);
  v37 = (((v27 ^ 0x63155E68 ^ v24) - (v24 ^ 0x63155E68)) ^ ((v26 ^ v27) - v26) ^ ((v27 ^ 0xE6FD752C ^ v29) - (v29 ^ 0xE6FD752C))) - v35;
  v38 = v35 - v23;
  v39 = v35 - v23 + v26;
  v40 = v34 ^ v33;
  v41 = v35 - v30;
  v42 = (v34 + v31) ^ v34 ^ v33;
  v43 = v39 + v35;
  v44 = v39 ^ v38;
  v45 = v38 + 614759537;
  v33 += 614759537;
  LODWORD(STACK[0x3E38]) = v33 + v14;
  v46 = (v40 ^ v33) + 1223398744;
  v47 = v43 ^ v44;
  v48 = (((v44 ^ v7) - v44) ^ ((v43 ^ v7) - v43) ^ ((v42 ^ v14 ^ v7) - (v42 ^ v14))) - (v38 + 614759537);
  v49 = (v44 ^ v45) + 1223398744;
  v50 = ((v42 ^ v36) + (v40 ^ 0x8DA33137)) ^ (v42 - 1676912358);
  v51 = (v43 ^ v44 ^ v41) + (v44 ^ 0x8DA33137);
  v52 = STACK[0x3D98];
  LODWORD(STACK[0x3D98]) = v46 + v8;
  v42 -= 1911510909;
  LODWORD(STACK[0x3D88]) = (((v51 ^ v52) - v51) ^ (((v47 - 1676912358) ^ v52) - (v47 - 1676912358)) ^ ((v50 ^ v8 ^ v52) - (v50 ^ v8))) - v49;
  v53 = (v51 ^ (v47 - 1676912358)) - (v49 ^ 0x9E40E392);
  v54 = (v46 ^ 0x87932952) + v42;
  v55 = (v50 - (v46 ^ 0x9E40E392)) ^ v54;
  v47 -= 1911510909;
  v56 = (v49 ^ 0x87932952) + v47;
  v54 -= 866011604;
  v57 = (v55 ^ v9 ^ v10) - (v55 ^ v9);
  v58 = (v46 ^ 0x87932952) + v9;
  v59 = v55 ^ v54;
  v60 = v36 ^ 0x621AB82 ^ v42;
  v61 = ((v10 ^ v53) - v53) ^ ((v10 ^ v56) - v56) ^ v57;
  v62 = v53 ^ v56 ^ (v56 - 866011604);
  v63 = (v41 ^ 0x621AB82 ^ v47) - 61225835;
  v64 = v46 ^ 0x53F1DB98;
  v65 = v46 ^ 0x53F1DB98 ^ v59;
  v66 = v65 + v54;
  v67 = v61 - (v49 ^ 0x87932952);
  v68 = (v62 ^ LODWORD(STACK[0x3D60])) - v62;
  v69 = v59 ^ LODWORD(STACK[0x3E18]) ^ v66;
  v70 = v63 + v62;
  v71 = v60 - 61225835 + v59 - v66;
  v72 = v62 ^ v49 ^ 0x53F1DB98;
  v73 = v72 + v56 - 866011604;
  v74 = v65 + LODWORD(STACK[0x3E18]);
  v75 = v66 - 1005227074;
  v76 = ((v73 ^ LODWORD(STACK[0x3D60])) - v73) ^ v68 ^ ((v69 ^ LODWORD(STACK[0x3D60])) - v69);
  v77 = v70 - v73;
  v78 = v73 - 1005227074;
  v79 = v64 ^ (v66 - 1005227074);
  v80 = v76 - v72;
  v81 = v65 + 1706001619 + v79;
  v82 = v78 ^ v49 ^ 0x53F1DB98;
  v83 = v72 + 1706001619 + v82;
  v84 = (LODWORD(STACK[0x3D80]) ^ 0x5F6B6CDC ^ (v66 - 1005227074) ^ LODWORD(STACK[0x3D90]) ^ v79) - ((v66 - 1005227074) ^ LODWORD(STACK[0x3D90]) ^ v79 ^ 0x5F6B6CDC);
  v85 = v78 ^ 0x5F6B6CDC;
  v86 = (v71 ^ 0xC59821B) - v81;
  v87 = v81 + LODWORD(STACK[0x3D90]);
  v88 = (((v82 ^ LODWORD(STACK[0x3D80])) - v82) ^ ((LODWORD(STACK[0x3D80]) ^ 0x5F6B6CDC ^ v78) - (v78 ^ 0x5F6B6CDC)) ^ v84) - v83;
  v89 = (v78 ^ 0x5F6B6CDC) + v82;
  v90 = v79 + (v75 ^ 0x5F6B6CDC);
  v91 = v90 + v81;
  v92 = v90 + v81 + v90;
  v93 = (v77 ^ 0xC59821B) - v83;
  v91 -= 1940540109;
  v94 = STACK[0x32A0];
  LODWORD(STACK[0x32E8]) += v37;
  LODWORD(STACK[0x3650]) += v32;
  v95 = STACK[0x3D70];
  LODWORD(STACK[0x32D0]) += LODWORD(STACK[0x3D70]);
  v96 = v86 ^ 0x3BE9D050 ^ v95;
  v97 = (v86 ^ 0xDEAB5049) + 1933476805;
  v98 = -v37;
  v99 = v32;
  v100 = v32 ^ v98;
  v101 = ((v93 ^ 0xDEAB5049) + 1933476805) ^ v98;
  LODWORD(STACK[0x3CE8]) = ((v96 ^ v91) - (v93 ^ 0x3BE9D050 ^ (v89 + v83 - 1940540109) ^ -v94)) ^ v92;
  v102 = v91 + v92;
  v103 = v91 ^ 0x9CA65741;
  v104 = v89 + v83 + v89 + v89 + v83 - 1940540109;
  v105 = v103 + v102;
  v106 = ((v89 + v83 - 1940540109) ^ 0x9CA65741) + v104;
  LODWORD(STACK[0x32D8]) += v80;
  LODWORD(STACK[0x3830]) += v67;
  v107 = v74;
  LODWORD(STACK[0x3840]) += v74;
  LODWORD(STACK[0x3550]) += v94;
  LODWORD(STACK[0x38B8]) += LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x3D78]) += v58;
  v108 = STACK[0x3D88];
  STACK[0x3850] = LODWORD(STACK[0x3D88]) + STACK[0x3850];
  LODWORD(STACK[0x3820]) += v48;
  LODWORD(STACK[0x38B0]) += v88;
  LODWORD(STACK[0x32E0]) += v87;
  v109 = STACK[0x3D98];
  LODWORD(STACK[0x37A8]) += LODWORD(STACK[0x3D98]);
  v110 = STACK[0x3E38];
  LODWORD(STACK[0x36E0]) += LODWORD(STACK[0x3E38]);
  LODWORD(STACK[0x3808]) += LODWORD(STACK[0x3D68]);
  v102 += 1914619123;
  LODWORD(STACK[0x3D60]) = ((v97 ^ v99 ^ v105) - (v101 ^ v106)) ^ v102;
  v111 = (v75 ^ 0x5F6B6CDC) + 810693046 + v86 + (v86 ^ 0x3BE9D050) - v105;
  v112 = v102 + (v86 ^ 0xDEAB5049) - 1702722623 + v111;
  v113 = v85 + 810693046 + v93 + (v93 ^ 0x3BE9D050) - v106;
  LODWORD(STACK[0x3D58]) = ((v97 ^ v100) - ((v93 ^ 0xDEAB5049) + 1933476805)) ^ (v104 + 1914619123) ^ ((v105 ^ v100) - v106);
  v114 = (v86 ^ 0xDEAB5049) - 1702722623 - (v105 - 643692676);
  v115 = -v110;
  v116 = v112 + v105 - 643692676;
  v117 = v104 + 1914619123 + (v93 ^ 0xDEAB5049) - 1702722623 + v113;
  v118 = (v93 ^ 0xDEAB5049) - 1702722623 - (v106 - 643692676);
  v119 = v117 + v106 - 643692676;
  LODWORD(STACK[0x3D50]) = ((v114 ^ v48 ^ v115) - v118) ^ v117 ^ ((v116 ^ v48 ^ v115) - v119);
  v120 = (v114 ^ v48 ^ v116) - (v119 ^ v118 ^ v115);
  v121 = v118 + 27683330;
  v114 += 27683330;
  v122 = v119 ^ v117;
  LODWORD(STACK[0x3D30]) = v120 ^ v112;
  v123 = v119 + v121;
  v124 = ((v116 + v114) ^ (v111 - 25489560)) - (v114 ^ 0xC8DDAB6C);
  v125 = (v116 ^ v112) - v124;
  v121 ^= 0xC8DDAB6C;
  v126 = (v123 ^ (v113 - 25489560)) - v121;
  v127 = (v116 + v114 + (v114 ^ 0xC8DDAB6C)) ^ v114 ^ 0xC8DDAB6C;
  v128 = (v123 + v121) ^ v121;
  LODWORD(STACK[0x3D70]) = ((v127 ^ v108) - (-v109 ^ v128)) ^ v125;
  v129 = (v114 ^ 0xC8DDAB6C) - 401963430;
  v130 = v121 - 401963430;
  v131 = v127 ^ v124;
  v132 = -v67;
  v133 = (v125 ^ v124) - v131;
  v134 = v131 ^ v129;
  v135 = v128 ^ v126;
  v136 = -v67 ^ v58;
  v137 = ((v122 - v126) ^ v126) - v135;
  v138 = v135 ^ v130;
  v139 = (v124 ^ v136) - v126;
  v140 = (v134 ^ v136) - v138;
  LODWORD(STACK[0x3AE0]) = ((v124 ^ v58 ^ v134) - (v138 ^ v126 ^ v132)) ^ v133;
  v141 = v134 - v124 - 458938424;
  v142 = (v124 + 643896571) ^ v124 ^ v133;
  LODWORD(STACK[0x3AD8]) = v139 ^ v137 ^ v140;
  v143 = v141 ^ (v124 + 643896571);
  v144 = v138 - v126 - 458938424;
  v145 = v126 + 643896571;
  v146 = v80 ^ -v107;
  v147 = (v126 + 643896571) ^ v126 ^ v137;
  v148 = (v131 ^ 0xD60FEAA1) + 2009834558 + v141;
  LODWORD(STACK[0x3D38]) = v142 ^ (((v124 + 643896571) ^ v80) - (-v107 ^ v145));
  v149 = (v135 ^ 0xD60FEAA1) + 2009834558 + v144;
  v150 = v142 ^ v141;
  v151 = -v87;
  LODWORD(STACK[0x3D48]) = ((v141 ^ v146) - v144) ^ v147 ^ ((v143 ^ v146) - (v144 ^ v145));
  v152 = (v148 ^ (v124 + 643896571)) - v148;
  v153 = v147 ^ v144;
  v154 = (v143 ^ v148) - v152;
  v155 = (v149 ^ v145) - v149;
  v156 = (v144 ^ v145 ^ v149) - v155;
  v157 = v156 ^ v155 ^ v151;
  v158 = v88 ^ v151;
  v159 = (v154 ^ v158) - v156;
  v150 ^= 0xF4EC778u;
  LODWORD(STACK[0x3E18]) = ((v143 ^ v148) - v150) ^ (v150 - v152);
  v160 = (v156 ^ v149) - ((v153 ^ 0xF4EC778) - v155) + 594222398;
  LODWORD(STACK[0x3D88]) = (v154 ^ v148) - (v150 - v152) + 594222398;
  v161 = v156 - ((v153 ^ 0xF4EC778) - v155);
  LODWORD(STACK[0x3D90]) = v161 ^ ((v153 ^ 0xF4EC778) - v155);
  LODWORD(STACK[0x3D98]) = v160;
  LODWORD(STACK[0x3E38]) = v160 ^ v161;
  LODWORD(STACK[0x3D20]) = v150 ^ ((v152 ^ v88 ^ v154) - v157);
  LODWORD(STACK[0x3D80]) = (v161 ^ v155) - 1024122810;
  LODWORD(STACK[0x3358]) = v159;
  LODWORD(STACK[0x3CF0]) = v153 ^ 0xF4EC778 ^ ((v152 ^ v158) - v155) ^ v159;
  v162 = *(v6 + 8 * SLODWORD(STACK[0x3B20]));
  STACK[0x3AF0] = 63;
  STACK[0x3AE8] = STACK[0x1AB8];
  return v162();
}

uint64_t sub_100D39DB0(int a1)
{
  v2 = STACK[0x3750];
  v3 = *(STACK[0x3750] + 4);
  v4 = STACK[0x3E18];
  v5 = STACK[0x3E18];
  LODWORD(STACK[0x3E18]) = STACK[0x3E18];
  v6 = (v3 << (v4 + 62)) | (v2[5] << 16);
  v7 = (*v2 << 24) | (v2[2] << 8);
  v8 = v2[8] << 24;
  v9 = (v5 + 7709);
  STACK[0x3250] = v9;
  STACK[0x33E8] = v9 - 26605;
  LODWORD(v9) = v8 | (v2[v9 - 26605] << 8);
  v10 = v2[7];
  v11 = v6 | v10 | (v2[6] << 8);
  v12 = v2[3];
  LODWORD(STACK[0x3788]) = v12;
  v13 = v7 | v12 | (v2[1] << 16);
  v14 = v2[11];
  v15 = v9 | v14 | (v2[9] << 16);
  v16 = v2[13];
  v17 = v2[15];
  LODWORD(STACK[0x36C0]) = v17;
  v18 = v17 | (v16 << 16) | (v2[12] << 24) | (v2[14] << 8);
  LODWORD(STACK[0x35A0]) = v14 - (v10 + a1);
  v19 = STACK[0x38C8];
  v20 = STACK[0x3CF0];
  v21 = v15;
  v22 = -1705000295 * (v20 + v19 - v15) - ((-1705000295 * (v20 + v19 - v15)) >> 16);
  v23 = 494879909 * ((v22 ^ (v22 >> 8)) + v13) - ((494879909 * ((v22 ^ (v22 >> 8)) + v13)) >> 16);
  v24 = -208662327 * (v23 ^ v18 ^ (v23 >> 8)) + ((-208662327 * (v23 ^ v18 ^ (v23 >> 8))) >> 16);
  v25 = v24 - v11 + (v24 >> 8);
  v26 = STACK[0x3D58];
  v27 = STACK[0x32D8];
  v28 = (598575211 * (v26 ^ v27 ^ v11)) ^ ((598575211 * (v26 ^ v27 ^ v11)) >> 16);
  v29 = -1307640235 * (v28 + v13 + (v28 >> 8)) + ((-1307640235 * (v28 + v13 + (v28 >> 8))) >> 16);
  STACK[0x3D90] = v29;
  v30 = 1472727515 * (v29 - v18 + (v29 >> 8)) - ((1472727515 * (v29 - v18 + (v29 >> 8))) >> 16);
  v31 = 788849563 * ((v30 ^ (v30 >> 8)) - v15);
  LODWORD(STACK[0x3798]) = v31;
  v32 = v31 - HIWORD(v31) - ((v31 - HIWORD(v31)) >> 8);
  v33 = STACK[0x3B18];
  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v34 = STACK[0x3B18];
  }

  else
  {
    v34 = STACK[0x3AF0];
  }

  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v35 = STACK[0x3AF0];
  }

  else
  {
    v35 = STACK[0x3D50];
  }

  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v36 = STACK[0x3D50];
  }

  else
  {
    v36 = STACK[0x3D28];
  }

  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v33 = STACK[0x3D28];
  }

  v37 = STACK[0x39A0];
  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v38 = STACK[0x39A0];
  }

  else
  {
    v38 = STACK[0x39A8];
  }

  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v39 = STACK[0x39A8];
  }

  else
  {
    v39 = STACK[0x3980];
  }

  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v37 = STACK[0x39E8];
    v40 = STACK[0x3980];
  }

  else
  {
    v40 = STACK[0x39E8];
  }

  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v41 = STACK[0x3D40];
  }

  else
  {
    v41 = STACK[0x3D98];
  }

  v42 = STACK[0x3B08];
  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v43 = STACK[0x3B08];
  }

  else
  {
    v43 = STACK[0x3D40];
  }

  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v44 = STACK[0x3D98];
  }

  else
  {
    v44 = STACK[0x3D38];
  }

  if ((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)))
  {
    v42 = STACK[0x3D38];
  }

  if (((v31 - BYTE2(v31) - ((v31 - HIWORD(v31)) >> 8)) & 2) != 0)
  {
    v45 = v36;
  }

  else
  {
    v45 = v34;
  }

  LODWORD(STACK[0x3AF0]) = v45;
  if ((v32 & 2) != 0)
  {
    v46 = v34;
  }

  else
  {
    v46 = v36;
  }

  LODWORD(STACK[0x3D28]) = v46;
  if ((v32 & 2) != 0)
  {
    v47 = v35;
  }

  else
  {
    v47 = v33;
  }

  LODWORD(STACK[0x3B18]) = v47;
  if ((v32 & 2) != 0)
  {
    v48 = v33;
  }

  else
  {
    v48 = v35;
  }

  LODWORD(STACK[0x3D50]) = v48;
  if ((v32 & 2) != 0)
  {
    v49 = v40;
  }

  else
  {
    v49 = v38;
  }

  LODWORD(STACK[0x39A8]) = v49;
  if ((v32 & 2) != 0)
  {
    v50 = v38;
  }

  else
  {
    v50 = v40;
  }

  LODWORD(STACK[0x39E8]) = v50;
  if ((v32 & 2) != 0)
  {
    v51 = v37;
  }

  else
  {
    v51 = v39;
  }

  LODWORD(STACK[0x3980]) = v51;
  if ((v32 & 2) != 0)
  {
    v52 = v39;
  }

  else
  {
    v52 = v37;
  }

  LODWORD(STACK[0x39A0]) = v52;
  if ((v32 & 2) != 0)
  {
    v53 = v42;
  }

  else
  {
    v53 = v41;
  }

  LODWORD(STACK[0x3D98]) = v53;
  if ((v32 & 2) != 0)
  {
    v54 = v41;
  }

  else
  {
    v54 = v42;
  }

  LODWORD(STACK[0x3B08]) = v54;
  if ((v32 & 2) != 0)
  {
    v55 = v43;
  }

  else
  {
    v55 = v44;
  }

  LODWORD(STACK[0x3D38]) = v55;
  if ((v32 & 2) != 0)
  {
    v56 = v44;
  }

  else
  {
    v56 = v43;
  }

  LODWORD(STACK[0x3D40]) = v56;
  v57 = ((1828621593 * v25) ^ ((1828621593 * v25) >> 16)) - (((1828621593 * v25) ^ ((1828621593 * v25) >> 16)) >> 8);
  LODWORD(STACK[0x37A8]) = v57;
  v58 = v57 - STACK[0x3820];
  LODWORD(STACK[0x3998]) += v32;
  LODWORD(STACK[0x3800]) += v32;
  v59 = v32 + LODWORD(STACK[0x3808]);
  v60 = v58 + v32;
  if (v60)
  {
    v61 = v20;
  }

  else
  {
    v61 = STACK[0x3D30];
  }

  if (v60)
  {
    v62 = STACK[0x3D30];
  }

  else
  {
    v62 = STACK[0x32E0];
  }

  if (v60)
  {
    v63 = STACK[0x32E0];
  }

  else
  {
    v63 = STACK[0x3438];
  }

  if (v60)
  {
    v64 = STACK[0x3438];
  }

  else
  {
    v64 = v20;
  }

  if (v60)
  {
    v65 = STACK[0x3B00];
  }

  else
  {
    v65 = STACK[0x3B20];
  }

  if (v60)
  {
    v66 = STACK[0x3B20];
  }

  else
  {
    v66 = STACK[0x32E8];
  }

  if (v60)
  {
    v67 = STACK[0x3CD0];
  }

  else
  {
    v67 = STACK[0x3B00];
  }

  if (v60)
  {
    v68 = STACK[0x32E8];
  }

  else
  {
    v68 = STACK[0x3CD0];
  }

  v69 = STACK[0x3830];
  if (v60)
  {
    v70 = STACK[0x3830];
  }

  else
  {
    v70 = STACK[0x3CE8];
  }

  if (v60)
  {
    v71 = STACK[0x3CE8];
  }

  else
  {
    v71 = STACK[0x3D70];
  }

  if (v60)
  {
    v72 = STACK[0x3D70];
  }

  else
  {
    v72 = STACK[0x3D60];
  }

  if (v60)
  {
    v69 = STACK[0x3D60];
  }

  if ((v60 & 2) != 0)
  {
    v73 = v63;
  }

  else
  {
    v73 = v61;
  }

  LODWORD(STACK[0x3D30]) = v73;
  if ((v60 & 2) != 0)
  {
    v74 = v61;
  }

  else
  {
    v74 = v63;
  }

  if ((v60 & 2) != 0)
  {
    v75 = v62;
  }

  else
  {
    v75 = v64;
  }

  LODWORD(STACK[0x3CF0]) = v75;
  if ((v60 & 2) != 0)
  {
    v76 = v64;
  }

  else
  {
    v76 = v62;
  }

  if ((v60 & 2) != 0)
  {
    v77 = v65;
  }

  else
  {
    v77 = v68;
  }

  LODWORD(STACK[0x3CD0]) = v77;
  if ((v60 & 2) != 0)
  {
    v78 = v68;
  }

  else
  {
    v78 = v65;
  }

  LODWORD(STACK[0x3B20]) = v78;
  if ((v60 & 2) != 0)
  {
    v79 = v67;
  }

  else
  {
    v79 = v66;
  }

  if ((v60 & 2) != 0)
  {
    v80 = v66;
  }

  else
  {
    v80 = v67;
  }

  LODWORD(STACK[0x3B00]) = v80;
  if ((v60 & 2) != 0)
  {
    v81 = v70;
  }

  else
  {
    v81 = v72;
  }

  LODWORD(STACK[0x3D60]) = v81;
  if ((v60 & 2) != 0)
  {
    v82 = v72;
  }

  else
  {
    v82 = v70;
  }

  LODWORD(STACK[0x3CE8]) = v82;
  if ((v60 & 2) != 0)
  {
    v83 = v69;
  }

  else
  {
    v83 = v71;
  }

  LODWORD(STACK[0x3D70]) = v83;
  if ((v60 & 2) != 0)
  {
    v84 = v71;
  }

  else
  {
    v84 = v69;
  }

  LODWORD(STACK[0x3830]) = v84;
  v85 = v60 + v58;
  v86 = STACK[0x3988];
  if (v85)
  {
    v87 = STACK[0x3858];
  }

  else
  {
    v87 = STACK[0x3988];
  }

  v88 = STACK[0x3AE8];
  if ((v85 & 1) == 0)
  {
    v86 = STACK[0x3AE8];
  }

  v89 = STACK[0x3878];
  if (v85)
  {
    v90 = v26;
  }

  else
  {
    v88 = STACK[0x3878];
    v89 = STACK[0x3858];
    v90 = STACK[0x3D20];
  }

  if (v85)
  {
    v91 = STACK[0x3D20];
  }

  else
  {
    v91 = v19;
  }

  if (v85)
  {
    v92 = STACK[0x3D68];
  }

  else
  {
    v92 = v26;
  }

  if (v85)
  {
    v93 = v19;
  }

  else
  {
    v93 = STACK[0x3D68];
  }

  if (v85)
  {
    v94 = STACK[0x38B0];
  }

  else
  {
    v94 = STACK[0x38B8];
  }

  if (v85)
  {
    v95 = STACK[0x38B8];
  }

  else
  {
    v95 = STACK[0x3940];
  }

  if (v85)
  {
    v96 = STACK[0x3940];
  }

  else
  {
    v96 = STACK[0x32D0];
  }

  if (v85)
  {
    v97 = STACK[0x32D0];
  }

  else
  {
    v97 = STACK[0x38B0];
  }

  if ((v85 & 2) != 0)
  {
    v98 = v86;
  }

  else
  {
    v98 = v89;
  }

  if ((v85 & 2) != 0)
  {
    v99 = v89;
  }

  else
  {
    v99 = v86;
  }

  LODWORD(STACK[0x3AE8]) = v99;
  if ((v85 & 2) != 0)
  {
    v100 = v87;
  }

  else
  {
    v100 = v88;
  }

  LODWORD(STACK[0x3878]) = v100;
  if ((v85 & 2) != 0)
  {
    v101 = v88;
  }

  else
  {
    v101 = v87;
  }

  LODWORD(STACK[0x3988]) = v101;
  if ((v85 & 2) != 0)
  {
    v102 = v91;
  }

  else
  {
    v102 = v92;
  }

  LODWORD(STACK[0x3D58]) = v102;
  if ((v85 & 2) != 0)
  {
    v103 = v92;
  }

  else
  {
    v103 = v91;
  }

  LODWORD(STACK[0x38C8]) = v103;
  if ((v85 & 2) != 0)
  {
    v104 = v90;
  }

  else
  {
    v104 = v93;
  }

  LODWORD(STACK[0x3D68]) = v104;
  if ((v85 & 2) != 0)
  {
    v105 = v93;
  }

  else
  {
    v105 = v90;
  }

  LODWORD(STACK[0x3D20]) = v105;
  v106 = v85 + v58;
  if ((v85 & 2) != 0)
  {
    v107 = v96;
  }

  else
  {
    v107 = v94;
  }

  LODWORD(STACK[0x38B8]) = v107;
  if ((v85 & 2) != 0)
  {
    v108 = v95;
  }

  else
  {
    v94 = v96;
    v108 = v97;
  }

  LODWORD(STACK[0x38B0]) = v108;
  if ((v85 & 2) != 0)
  {
    v109 = v97;
  }

  else
  {
    v109 = v95;
  }

  LODWORD(STACK[0x3940]) = v109;
  if (v106)
  {
    v110 = STACK[0x3AD8];
  }

  else
  {
    v110 = STACK[0x39F0];
  }

  if (v106)
  {
    v111 = STACK[0x39F0];
  }

  else
  {
    v111 = v27;
  }

  if (v106)
  {
    v112 = STACK[0x3AE0];
  }

  else
  {
    v112 = STACK[0x3AD8];
  }

  if (v106)
  {
    v113 = v27;
  }

  else
  {
    v113 = STACK[0x3AE0];
  }

  if (v106)
  {
    v114 = STACK[0x3428];
  }

  else
  {
    v114 = STACK[0x3550];
  }

  v115 = STACK[0x3CC8];
  if (v106)
  {
    v116 = STACK[0x3550];
  }

  else
  {
    v116 = STACK[0x3CC8];
  }

  if (v106)
  {
    v117 = STACK[0x3D48];
  }

  else
  {
    v117 = STACK[0x3428];
  }

  if ((v106 & 1) == 0)
  {
    v115 = STACK[0x3D48];
  }

  if ((v106 & 2) != 0)
  {
    v118 = v112;
  }

  else
  {
    v118 = v111;
  }

  if ((v106 & 2) != 0)
  {
    v119 = v111;
  }

  else
  {
    v119 = v112;
  }

  LODWORD(STACK[0x3AD8]) = v119;
  if ((v106 & 2) != 0)
  {
    v120 = v113;
  }

  else
  {
    v120 = v110;
  }

  LODWORD(STACK[0x39F0]) = v120;
  if ((v106 & 2) != 0)
  {
    v121 = v110;
  }

  else
  {
    v121 = v113;
  }

  LODWORD(STACK[0x3AE0]) = v121;
  if ((v106 & 2) != 0)
  {
    v122 = v117;
  }

  else
  {
    v122 = v116;
  }

  LODWORD(STACK[0x3CC8]) = v122;
  if ((v106 & 2) != 0)
  {
    v123 = v116;
  }

  else
  {
    v123 = v117;
  }

  if ((v106 & 2) != 0)
  {
    v124 = v115;
  }

  else
  {
    v124 = v114;
  }

  if ((v106 & 2) != 0)
  {
    v125 = v114;
  }

  else
  {
    v125 = v115;
  }

  LODWORD(STACK[0x3D48]) = v125;
  LODWORD(STACK[0x3808]) = v59;
  LODWORD(STACK[0x3960]) = v21;
  if (v59)
  {
    v126 = v18;
  }

  else
  {
    v126 = v21;
  }

  if (v59)
  {
    v127 = v11;
  }

  else
  {
    v127 = v13;
  }

  LODWORD(STACK[0x3230]) = v11;
  if (v59)
  {
    v128 = v21;
  }

  else
  {
    v128 = v11;
  }

  LODWORD(STACK[0x36B8]) = v13;
  LODWORD(STACK[0x3248]) = v18;
  if (v59)
  {
    v129 = v13;
  }

  else
  {
    v129 = v18;
  }

  if ((v59 & 2) != 0)
  {
    v130 = v127;
  }

  else
  {
    v130 = v126;
  }

  if ((v59 & 2) != 0)
  {
    v131 = v126;
  }

  else
  {
    v131 = v127;
  }

  LODWORD(STACK[0x3270]) = v131;
  if ((v59 & 2) != 0)
  {
    v132 = v129;
  }

  else
  {
    v132 = v128;
  }

  LODWORD(STACK[0x3268]) = v132;
  if ((v59 & 2) != 0)
  {
    v133 = v128;
  }

  else
  {
    v133 = v129;
  }

  LODWORD(STACK[0x3278]) = v133;
  v134 = 8 * LODWORD(STACK[0x37A8]);
  LODWORD(STACK[0x3820]) = v134;
  LODWORD(STACK[0x3258]) = -v134;
  v135 = -v134 & 0x18;
  v137 = v134 & 0x18;
  v136 = (v134 & 0x18) == 0;
  if ((v134 & 0x18) != 0)
  {
    v138 = (v130 << (v134 & 0x18)) ^ (v130 >> (-v134 & 0x18));
  }

  else
  {
    v138 = v130;
  }

  LODWORD(STACK[0x3260]) = v138;
  LODWORD(STACK[0x3858]) = (v74 >> v135) ^ (v74 << v137);
  LODWORD(STACK[0x3550]) = (v76 >> v135) + (v76 << v137);
  LODWORD(STACK[0x3428]) = (v98 >> v135) ^ (v98 << v137);
  v139 = STACK[0x39A8];
  LODWORD(STACK[0x32E8]) = (LODWORD(STACK[0x39A8]) << v137) + (LODWORD(STACK[0x39A8]) >> v135);
  v140 = STACK[0x39A0];
  v141 = (v79 >> v135) ^ (v79 << v137);
  v142 = STACK[0x3B08];
  v143 = (v142 << v137) ^ (v142 >> v135);
  v144 = STACK[0x3D38];
  v145 = (v144 << v137) ^ (v144 >> v135);
  v146 = STACK[0x3D60];
  v147 = (v146 << v137) + (v146 >> v135);
  v148 = STACK[0x3CE8];
  v149 = (v148 << v137) + (v148 >> v135);
  v150 = (v94 >> v135) ^ (v94 << v137);
  LODWORD(STACK[0x3788]) = ((LODWORD(STACK[0x35A0]) + LODWORD(STACK[0x3788]) + 68) ^ 0x2B) + LODWORD(STACK[0x36C0]);
  v151 = STACK[0x3D50];
  v152 = __ROR4__(STACK[0x3D50], v135);
  if (!v136)
  {
    v151 = v152;
  }

  v153 = __ROR4__(STACK[0x3D28], v135);
  if (v136)
  {
    v153 = STACK[0x3D28];
  }

  v154 = __ROR4__(STACK[0x3D30], v135);
  if (v136)
  {
    v154 = STACK[0x3D30];
  }

  LODWORD(STACK[0x3438]) = v74;
  v155 = STACK[0x3858];
  if (v136)
  {
    v155 = v74;
  }

  LODWORD(STACK[0x32E0]) = v76;
  if (!v136)
  {
    v76 = STACK[0x3550];
  }

  LODWORD(STACK[0x3280]) = v76;
  v156 = __ROR4__(STACK[0x3878], v135);
  if (v136)
  {
    v156 = STACK[0x3878];
  }

  LODWORD(STACK[0x32A0]) = v156;
  LODWORD(STACK[0x3858]) = v98;
  v157 = STACK[0x3428];
  if (v136)
  {
    v157 = v98;
  }

  LODWORD(STACK[0x3290]) = v157;
  v158 = __ROR4__(STACK[0x3988], v135);
  if (v136)
  {
    v158 = STACK[0x3988];
  }

  LODWORD(STACK[0x32A8]) = v158;
  v159 = __ROR4__(v118, v135);
  LODWORD(STACK[0x32D8]) = v118;
  if (v136)
  {
    v159 = v118;
  }

  else
  {
    v139 = STACK[0x32E8];
  }

  LODWORD(STACK[0x3288]) = v139;
  if (!v136)
  {
    v140 = (v140 << v137) ^ (v140 >> v135);
  }

  LODWORD(STACK[0x32B0]) = v140;
  LODWORD(STACK[0x32E8]) = v79;
  if (v136)
  {
    v141 = v79;
  }

  v160 = STACK[0x38C8];
  v161 = __ROR4__(STACK[0x38C8], v135);
  if (!v136)
  {
    v160 = v161;
  }

  LODWORD(STACK[0x3298]) = v160;
  v162 = __ROR4__(v123, v135);
  LODWORD(STACK[0x3428]) = v123;
  if (v136)
  {
    v162 = v123;
  }

  v163 = __ROR4__(v124, v135);
  LODWORD(STACK[0x3550]) = v124;
  if (v136)
  {
    v164 = v124;
  }

  else
  {
    v164 = v163;
  }

  LODWORD(STACK[0x32C0]) = v164;
  if (v136)
  {
    v145 = v144;
    v165 = v142;
  }

  else
  {
    v165 = v143;
  }

  LODWORD(STACK[0x35A0]) = v165;
  if (v136)
  {
    v166 = v146;
  }

  else
  {
    v166 = v147;
  }

  LODWORD(STACK[0x36C0]) = v166;
  if (!v136)
  {
    v148 = v149;
  }

  LODWORD(STACK[0x32B8]) = v148;
  LODWORD(STACK[0x32D0]) = v94;
  if (v136)
  {
    v167 = v94;
  }

  else
  {
    v167 = v150;
  }

  v169 = STACK[0x3258] & 0x18;
  v168 = (STACK[0x3258] & 0x18) == 0;
  v170 = __ROR4__(STACK[0x3AF0], v169);
  if ((STACK[0x3258] & 0x18) == 0)
  {
    v170 = STACK[0x3AF0];
  }

  v171 = LODWORD(STACK[0x3260]) ^ LODWORD(STACK[0x2BB0]) ^ v170;
  v172 = (LODWORD(STACK[0x3268]) >> v169) + (LODWORD(STACK[0x3268]) << v137);
  if ((STACK[0x3258] & 0x18) == 0)
  {
    v172 = STACK[0x3268];
  }

  v173 = v151 ^ LODWORD(STACK[0x2BA8]) ^ v172;
  v174 = (LODWORD(STACK[0x3270]) >> v169) + (LODWORD(STACK[0x3270]) << v137);
  if ((STACK[0x3258] & 0x18) == 0)
  {
    v174 = STACK[0x3270];
  }

  v175 = v174 ^ LODWORD(STACK[0x2BA0]) ^ v153;
  v176 = (LODWORD(STACK[0x3278]) << v137) ^ (LODWORD(STACK[0x3278]) >> v169);
  if ((STACK[0x3258] & 0x18) == 0)
  {
    v176 = STACK[0x3278];
  }

  v177 = (LODWORD(STACK[0x3B18]) << v137) ^ (LODWORD(STACK[0x3B18]) >> v169);
  if ((STACK[0x3258] & 0x18) == 0)
  {
    v177 = STACK[0x3B18];
  }

  v178 = v177 ^ LODWORD(STACK[0x2B98]) ^ v176;
  v179 = STACK[0x35D8];
  v180 = LODWORD(STACK[0x2B90]) ^ __ROR4__(*(STACK[0x35D8] + ((v171 >> 22) & 0x3FC)), 24) ^ *(STACK[0x35D8] + 4 * BYTE2(v173)) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE1(v175)), 8) ^ __ROR4__(*(STACK[0x35D8] + 4 * (v177 ^ LOBYTE(STACK[0x2B98]) ^ v176)), 16);
  v181 = __ROR4__(STACK[0x3CF0], v169);
  if ((STACK[0x3258] & 0x18) == 0)
  {
    v181 = STACK[0x3CF0];
  }

  v182 = v180 ^ v181;
  v183 = STACK[0x3800];
  v184 = STACK[0x3808];
  v185 = *(v179 + 4 * BYTE2(v175)) ^ LODWORD(STACK[0x2BF0]) ^ __ROR4__(*(v179 + ((v173 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * BYTE1(v178)), 8) ^ __ROR4__(*(v179 + 4 * v171), 16) ^ LODWORD(STACK[0x3800]) ^ LODWORD(STACK[0x3808]) ^ v154;
  v186 = *(v179 + 4 * BYTE2(v171)) ^ LODWORD(STACK[0x2B88]) ^ __ROR4__(*(v179 + 4 * v175), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v173)), 8) ^ __ROR4__(*(v179 + ((v178 >> 22) & 0x3FC)), 24) ^ v155;
  v187 = __ROR4__(*(v179 + ((v175 >> 22) & 0x3FC)), 24);
  v188 = STACK[0x3998];
  v189 = (LODWORD(STACK[0x3998]) - LODWORD(STACK[0x3808]) + (*(v179 + 4 * BYTE2(v178)) ^ __ROR4__(*(v179 + 4 * v173), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v171)), 8) ^ v187)) ^ (LODWORD(STACK[0x2B80]) ^ LODWORD(STACK[0x3280]));
  v190 = (LODWORD(STACK[0x3AE8]) << v137) ^ (LODWORD(STACK[0x3AE8]) >> v169);
  v191 = (LODWORD(STACK[0x2B78]) ^ __ROR4__(*(v179 + 4 * BYTE1(v182)), 8)) ^ __ROR4__(*(v179 + 4 * v185), 16) ^ *(v179 + 4 * BYTE2(v186)) ^ __ROR4__(*(v179 + ((v189 >> 22) & 0x3FC)), 24) ^ LODWORD(STACK[0x3290]);
  v192 = *(v179 + 4 * BYTE2(v185)) ^ LODWORD(STACK[0x2B70]) ^ __ROR4__(*(v179 + ((v182 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * v186), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v189)), 8);
  if ((STACK[0x3258] & 0x18) == 0)
  {
    v190 = STACK[0x3AE8];
  }

  v193 = v192 ^ v190;
  v194 = LODWORD(STACK[0x2B68]) ^ __ROR4__(*(v179 + 4 * v182), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v186)), 8) ^ __ROR4__(*(v179 + 4 * HIBYTE(v185)), 24) ^ (*(v179 + 4 * BYTE2(v189)) ^ LODWORD(STACK[0x32A0]));
  v195 = LODWORD(STACK[0x2B60]) ^ __ROR4__(*(v179 + 4 * BYTE1(v185)), 8) ^ __ROR4__(*(v179 + ((v186 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * v189), 16) ^ (*(v179 + 4 * BYTE2(v182)) ^ LODWORD(STACK[0x32A8]));
  v196 = (LODWORD(STACK[0x39F0]) << v137) ^ (LODWORD(STACK[0x39F0]) >> v169);
  v197 = STACK[0x3AE0];
  v198 = (LODWORD(STACK[0x3AE0]) << v137) ^ (LODWORD(STACK[0x3AE0]) >> v169);
  v199 = LODWORD(STACK[0x2B08]) ^ __ROR4__(*(v179 + 4 * BYTE1(v194)), 8) ^ v159 ^ *(v179 + 4 * BYTE2(v193)) ^ __ROR4__(*(v179 + 4 * v191), 16) ^ __ROR4__(*(v179 + ((v195 >> 22) & 0x3FC)), 24);
  v200 = __ROR4__(STACK[0x3AD8], v169);
  if ((STACK[0x3258] & 0x18) == 0)
  {
    v200 = STACK[0x3AD8];
  }

  v201 = v200 ^ LODWORD(STACK[0x2BE8]) ^ __ROR4__(*(v179 + 4 * v193), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v195)), 8) ^ *(v179 + 4 * BYTE2(v191)) ^ __ROR4__(*(v179 + ((v194 >> 22) & 0x3FC)), 24);
  v202 = *(v179 + ((v191 >> 22) & 0x3FC));
  v203 = *(v179 + 4 * BYTE1(v193));
  if ((STACK[0x3258] & 0x18) == 0)
  {
    v196 = STACK[0x39F0];
  }

  v204 = LODWORD(STACK[0x2BB8]) ^ v196;
  LODWORD(STACK[0x32A8]) = v202;
  v205 = v204 ^ __ROR4__(v202, 24) ^ __ROR4__(v203, 8) ^ __ROR4__(*(v179 + 4 * v194), 16) ^ *(v179 + 4 * BYTE2(v195));
  v206 = *(v179 + 4 * BYTE2(v194)) ^ LODWORD(STACK[0x2B58]) ^ __ROR4__(*(v179 + 4 * BYTE1(v191)), 8);
  if (v168)
  {
    v198 = v197;
  }

  v207 = v206 ^ v198 ^ __ROR4__(*(v179 + ((v193 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * v195), 16);
  v208 = (LODWORD(STACK[0x3980]) >> v169) ^ (LODWORD(STACK[0x3980]) << v137);
  v209 = (LODWORD(STACK[0x2B00]) ^ LODWORD(STACK[0x3288])) ^ __ROR4__(*(v179 + 4 * v199), 16) ^ __ROR4__(*(v179 + ((v207 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v201)) ^ __ROR4__(*(v179 + 4 * BYTE1(v205)), 8);
  if (v168)
  {
    v208 = STACK[0x3980];
  }

  v210 = v208 ^ LODWORD(STACK[0x2B50]) ^ __ROR4__(*(v179 + ((v201 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v205)) ^ __ROR4__(*(v179 + 4 * v207), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v199)), 8);
  v211 = __ROR4__(STACK[0x39E8], v169);
  if (v168)
  {
    v211 = STACK[0x39E8];
  }

  v212 = v211 ^ LODWORD(STACK[0x2B48]) ^ __ROR4__(*(v179 + 4 * v201), 16) ^ __ROR4__(*(v179 + ((v205 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v199)) ^ __ROR4__(*(v179 + 4 * BYTE1(v207)), 8);
  v213 = (LODWORD(STACK[0x32B0]) ^ LODWORD(STACK[0x2BE0])) ^ __ROR4__(*(v179 + 4 * v205), 16) ^ __ROR4__(*(v179 + ((v199 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * BYTE1(v201)), 8) ^ *(v179 + 4 * BYTE2(v207));
  HIDWORD(v214) = *(v179 + 4 * v210);
  LODWORD(v214) = HIDWORD(v214);
  v215 = (v214 >> 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v209)), 8) ^ __ROR4__(*(v179 + ((v212 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v213));
  v216 = (LODWORD(STACK[0x3B00]) >> v169) + (LODWORD(STACK[0x3B00]) << v137);
  if (v168)
  {
    v216 = STACK[0x3B00];
  }

  v217 = LODWORD(STACK[0x2AF8]) ^ v216 ^ __ROR4__(*(v179 + 4 * BYTE1(v213)), 8) ^ __ROR4__(*(v179 + 4 * v209), 16) ^ __ROR4__(*(v179 + ((v210 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v212));
  v218 = __ROR4__(STACK[0x3CD0], v169);
  if (v168)
  {
    v218 = STACK[0x3CD0];
  }

  v219 = LODWORD(STACK[0x2AF0]) ^ v218 ^ __ROR4__(*(v179 + 4 * BYTE1(v212)), 8) ^ __ROR4__(*(v179 + 4 * v213), 16) ^ *(v179 + 4 * BYTE2(v210)) ^ __ROR4__(*(v179 + ((v209 >> 22) & 0x3FC)), 24);
  v220 = v215 + LODWORD(STACK[0x2B40]);
  v221 = __ROR4__(STACK[0x3B20], v169);
  if (v168)
  {
    v221 = STACK[0x3B20];
  }

  v222 = v221 ^ LODWORD(STACK[0x2B38]) ^ v220;
  v223 = v141 ^ LODWORD(STACK[0x2B30]) ^ __ROR4__(*(v179 + ((v213 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v209)) ^ __ROR4__(*(v179 + 4 * BYTE1(v210)), 8) ^ __ROR4__(*(v179 + 4 * v212), 16);
  HIDWORD(v224) = *(v179 + 4 * BYTE1(v219));
  LODWORD(v224) = HIDWORD(v224);
  v225 = v184 - v188 + (*(v179 + 4 * BYTE2(v222)) ^ __ROR4__(*(v179 + 4 * v219), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v223)), 8) ^ __ROR4__(*(v179 + ((v217 >> 22) & 0x3FC)), 24));
  v226 = v184 - v183 + ((v224 >> 8) ^ __ROR4__(*(v179 + 4 * v217), 16) ^ __ROR4__(*(v179 + ((v222 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v223)));
  v227 = (LODWORD(STACK[0x3D58]) >> v169) ^ (LODWORD(STACK[0x3D58]) << v137);
  if (v168)
  {
    v227 = STACK[0x3D58];
  }

  v228 = LODWORD(STACK[0x2AE8]) ^ v227 ^ v226;
  v229 = *(v179 + 4 * BYTE1(v217));
  v230 = (LODWORD(STACK[0x2AE0]) ^ LODWORD(STACK[0x3298])) ^ __ROR4__(*(v179 + 4 * BYTE1(v222)), 8) ^ __ROR4__(*(v179 + ((v219 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * v223), 16) ^ *(v179 + 4 * BYTE2(v217));
  v231 = __ROR4__(STACK[0x3D20], v169);
  if (v168)
  {
    v231 = STACK[0x3D20];
  }

  v232 = LODWORD(STACK[0x2AD8]) ^ v231 ^ __ROR4__(v229, 8) ^ __ROR4__(*(v179 + ((v223 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v219)) ^ __ROR4__(*(v179 + 4 * v222), 16);
  v233 = __ROR4__(STACK[0x3D68], v169);
  if (v168)
  {
    v233 = STACK[0x3D68];
  }

  v234 = LODWORD(STACK[0x36F8]) ^ LODWORD(STACK[0x36D0]) ^ v233 ^ v225;
  v235 = (LODWORD(STACK[0x3CC8]) >> v169) + (LODWORD(STACK[0x3CC8]) << v137);
  v236 = (LODWORD(STACK[0x3D48]) << v137) ^ (LODWORD(STACK[0x3D48]) >> v169);
  if (v168)
  {
    v236 = STACK[0x3D48];
  }

  v237 = LODWORD(STACK[0x2AD0]) ^ v236 ^ __ROR4__(*(v179 + 4 * BYTE1(v230)), 8) ^ __ROR4__(*(v179 + 4 * v234), 16) ^ *(v179 + 4 * BYTE2(v232)) ^ __ROR4__(*(v179 + ((v228 >> 22) & 0x3FC)), 24);
  if (v168)
  {
    v235 = STACK[0x3CC8];
  }

  v238 = v235 ^ LODWORD(STACK[0x2B28]) ^ __ROR4__(*(v179 + ((v234 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * v230), 16) ^ *(v179 + 4 * BYTE2(v228)) ^ __ROR4__(*(v179 + 4 * BYTE1(v232)), 8);
  v239 = LODWORD(STACK[0x2AC8]) ^ v162 ^ *(v179 + 4 * BYTE2(v230)) ^ __ROR4__(*(v179 + ((v232 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * v228), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v234)), 8);
  v240 = (LODWORD(STACK[0x32C0]) ^ LODWORD(STACK[0x2B20])) ^ __ROR4__(*(v179 + ((v230 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * v232), 16) ^ *(v179 + 4 * BYTE2(v234)) ^ __ROR4__(*(v179 + 4 * BYTE1(v228)), 8);
  v241 = (LODWORD(STACK[0x3D40]) >> v169) + (LODWORD(STACK[0x3D40]) << v137);
  v242 = (LODWORD(STACK[0x3D98]) << v137) ^ (LODWORD(STACK[0x3D98]) >> v169);
  v243 = v145 ^ LODWORD(STACK[0x2BD8]) ^ __ROR4__(*(v179 + ((v237 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v239)) ^ __ROR4__(*(v179 + 4 * BYTE1(v240)), 8) ^ __ROR4__(*(v179 + 4 * v238), 16);
  if (v168)
  {
    v242 = STACK[0x3D98];
  }

  v244 = LODWORD(STACK[0x2AC0]) ^ v242 ^ __ROR4__(*(v179 + 4 * v240), 16) ^ __ROR4__(*(v179 + ((v238 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * BYTE1(v239)), 8) ^ *(v179 + 4 * BYTE2(v237));
  v245 = LODWORD(STACK[0x35A0]) ^ LODWORD(STACK[0x2B18]) ^ *(v179 + 4 * BYTE2(v240)) ^ __ROR4__(*(v179 + ((v239 >> 22) & 0x3FC)), 24);
  v246 = *(v179 + 4 * v239);
  v247 = v245 ^ __ROR4__(*(v179 + 4 * BYTE1(v238)), 8);
  if (v168)
  {
    v241 = STACK[0x3D40];
  }

  v248 = LODWORD(STACK[0x2AB8]) ^ v241 ^ __ROR4__(v246, 16) ^ __ROR4__(*(v179 + ((v240 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * BYTE1(v237)), 8) ^ *(v179 + 4 * BYTE2(v238));
  v249 = v247 ^ __ROR4__(*(v179 + 4 * v237), 16);
  v250 = (LODWORD(STACK[0x36C0]) ^ LODWORD(STACK[0x2B10])) ^ __ROR4__(*(v179 + ((v248 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v244)) ^ __ROR4__(*(v179 + 4 * v249), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v243)), 8);
  v251 = __ROR4__(STACK[0x3D70], v169);
  if (v168)
  {
    v251 = STACK[0x3D70];
  }

  v252 = LODWORD(STACK[0x2AB0]) ^ v251 ^ __ROR4__(*(v179 + 4 * v243), 16) ^ __ROR4__(*(v179 + 4 * BYTE1(v244)), 8) ^ __ROR4__(*(v179 + ((v249 >> 22) & 0x3FC)), 24) ^ *(v179 + 4 * BYTE2(v248));
  v253 = STACK[0x2C08] ^ STACK[0x2C10] ^ LODWORD(STACK[0x36F8]) ^ LODWORD(STACK[0x32B8]) ^ *(v179 + 4 * BYTE2(v249)) ^ __ROR4__(*(v179 + ((v243 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(v179 + 4 * BYTE1(v248)), 8) ^ __ROR4__(*(v179 + 4 * v244), 16);
  v254 = __ROR4__(STACK[0x3830], v169);
  if (v168)
  {
    v254 = STACK[0x3830];
  }

  STACK[0x32B8] = v243;
  v255 = LODWORD(STACK[0x2AA8]) ^ v254 ^ *(v179 + 4 * BYTE2(v243)) ^ __ROR4__(*(v179 + 4 * BYTE1(v249)), 8) ^ __ROR4__(*(v179 + 4 * v248), 16) ^ __ROR4__(*(v179 + ((v244 >> 22) & 0x3FC)), 24);
  v256 = STACK[0x3940];
  v257 = (LODWORD(STACK[0x3940]) << v137) + (LODWORD(STACK[0x3940]) >> v169);
  v258 = STACK[0x38B8];
  v259 = 16843009 * (LODWORD(STACK[0x3788]) ^ 0x4B);
  v260 = STACK[0x3748];
  v261 = *(STACK[0x3748] + 4 * BYTE1(v250));
  v262 = LODWORD(STACK[0x2BC8]) ^ LODWORD(STACK[0x2F60]);
  v263 = LODWORD(STACK[0x38D8]) ^ 0xD7D7D7D7 ^ v262 ^ v259;
  LODWORD(STACK[0x32C0]) = v167;
  v264 = v263 ^ v167 ^ v261 ^ __ROR4__(*(v260 + 4 * BYTE2(v252)), 24) ^ __ROR4__(*(v260 + ((v253 >> 22) & 0x3FC)), 16) ^ __ROR4__(*(v260 + 4 * v255), 8);
  v265 = STACK[0x3880];
  v266 = LODWORD(STACK[0x3880]) ^ 0xD7D7D7D7 ^ v262;
  if (v168)
  {
    v257 = v256;
  }

  v267 = v266 ^ v259;
  v268 = v266 ^ v259 ^ v257 ^ *(v260 + 4 * BYTE1(v252)) ^ __ROR4__(*(v260 + ((v255 >> 22) & 0x3FC)), 16) ^ __ROR4__(*(v260 + 4 * v250), 8) ^ __ROR4__(*(v260 + 4 * BYTE2(v253)), 24);
  v269 = (v268 >> v137) ^ (v268 << v169);
  if (v168)
  {
    v269 = v268;
  }

  v270 = __ROR4__(v264, v137);
  if (v168)
  {
    v271 = v264;
  }

  else
  {
    v271 = v270;
  }

  if (v168)
  {
    v272 = v258;
  }

  else
  {
    v272 = (v258 << v137) ^ (v258 >> v169);
  }

  v273 = STACK[0x3820] & 0x18;
  v274 = v263 ^ v272 ^ __ROR4__(*(v260 + ((v250 >> 22) & 0x3FC)), 16) ^ *(v260 + 4 * BYTE1(v253)) ^ __ROR4__(*(v260 + 4 * BYTE2(v255)), 24) ^ __ROR4__(*(v260 + 4 * v252), 8);
  v275 = *(v260 + ((v252 >> 22) & 0x3FC));
  if ((STACK[0x3820] & 0x18) != 0)
  {
    v276 = (LODWORD(STACK[0x38B0]) << v273) ^ (LODWORD(STACK[0x38B0]) >> v169);
  }

  else
  {
    v276 = STACK[0x38B0];
  }

  v277 = v267 ^ v276 ^ __ROR4__(v275, 16) ^ __ROR4__(*(v260 + 4 * BYTE2(v250)), 24) ^ *(v260 + 4 * BYTE1(v255)) ^ __ROR4__(*(v260 + 4 * v253), 8);
  if ((STACK[0x3820] & 0x18) != 0)
  {
    v274 = (v274 >> v273) + (v274 << v169);
    v277 = (v277 >> v273) + (v277 << v169);
  }

  if (v188)
  {
    v278 = v271;
  }

  else
  {
    v278 = v269;
  }

  if (v188)
  {
    v279 = v277;
  }

  else
  {
    v279 = v271;
  }

  if (v188)
  {
    v280 = v274;
  }

  else
  {
    v280 = v277;
  }

  if (v188)
  {
    v274 = v269;
  }

  v281 = LODWORD(STACK[0x37A8]);
  if (((v188 + 2 * v281) & 2) != 0)
  {
    v282 = v274;
  }

  else
  {
    v282 = v279;
  }

  if (((v188 + 2 * v281) & 2) != 0)
  {
    v283 = v279;
  }

  else
  {
    v283 = v274;
  }

  if (((v188 + 2 * v281) & 2) != 0)
  {
    v284 = v278;
  }

  else
  {
    v284 = v280;
  }

  v285 = v284 + 1797890321;
  v286 = (v284 + 1797890321) ^ v283 ^ 0x329C60EF;
  v287 = STACK[0x3648] + 16434;
  v288 = STACK[0x36F0];
  v289 = STACK[0x33E8];
  v288[STACK[0x33E8]] = *(v287 + ((((v284 - 24303) ^ v283 ^ 0x60EF) >> 8) ^ 0xE0)) ^ (((((v284 - 24303) ^ v283 ^ 0x60EF) >> 8) ^ 0xD9) - 114) ^ 0x6E;
  v290 = (v282 - 1224493152) ^ v284;
  v288[14] = *(v287 + (((v290 ^ 0x1B4F) >> 8) ^ 0x39)) ^ (((v290 ^ 0x1B4F) >> 8) - 114) ^ 0x23;
  v288[12] = *(v287 + (((v290 ^ 0xF2E71B4F) >> 24) ^ 0x39)) ^ (((v290 ^ 0xF2E71B4F) >> 24) - 114) ^ 0x6F;
  if (((v188 + 2 * v281) & 2) != 0)
  {
    v291 = v280;
  }

  else
  {
    v291 = v278;
  }

  v288[11] = *(v287 + ((v285 ^ v283) ^ 0xD6)) ^ (v286 - 114) ^ 0x9B;
  v292 = (v291 + 1050942898) ^ v282;
  v288[1] = *(v287 + (((v292 ^ 0x42BEE6F8u) >> 16) ^ 0x5ALL)) ^ ((((v292 ^ 0x42BEE6F8u) >> 16) ^ 0x63) - 114) ^ 0x8C;
  v288[8] = *(v287 + (HIBYTE(v286) ^ 4)) ^ ((HIBYTE(v286) ^ 0x3D) - 114) ^ 0x8E;
  v288[15] = *(v287 + (((v282 - 96) ^ v284) ^ 0xE5)) ^ (((v282 - 96) ^ v284 ^ 0xDC) - 114) ^ 0xE0;
  *v288 = *(v287 + (((v292 ^ 0x42BEE6F8u) >> 24) ^ 0xE9)) ^ ((((v292 ^ 0x42BEE6F8u) >> 24) ^ 0xD0) - 114) ^ 0x8A;
  v288[7] = *(v287 + (((v283 - 12) ^ v291) ^ 0x6FLL)) ^ (((v283 - 12) ^ v291 ^ 0x56) - 114) ^ 0x90;
  v288[2] = (((v292 ^ 0xE6F8) >> 8) - 114) ^ 0x34 ^ *(v287 + (((v292 ^ 0xE6F8) >> 8) ^ 0x39));
  v288[13] = ((BYTE2(v290) ^ 0xE7) - 114) ^ 0x97 ^ *(v287 + (BYTE2(v290) ^ 0xDELL));
  v293 = (v283 + 1655356916) ^ v291 ^ 0x6350E40;
  STACK[0x35A0] = v293 >> 16;
  v288[5] = ((BYTE2(v293) ^ 0x8D) - 114) ^ 0x4F ^ *(v287 + (BYTE2(v293) ^ 0xB4));
  v288[3] = (((v291 - 78) ^ v282 ^ 0xF8) - 114) ^ 0x2B ^ *(v287 + (((v291 - 78) ^ v282) ^ 0xC1));
  STACK[0x36C0] = v293 >> 24;
  v288[4] = (((((v283 + 1655356916) ^ v291 ^ 0x6350E40) >> 24) ^ 0xA2) - 114) ^ 0x4E ^ *(v287 + ((v293 >> 24) ^ 0x9B));
  v288[9] = (BYTE2(v286) - 114) ^ 0x26 ^ *(v287 + (BYTE2(v286) ^ 0x39));
  v288[6] = (((((v283 - 16908) ^ v291 ^ 0xE40) >> 8) ^ 0xC) - 114) ^ *(v287 + ((((v283 - 16908) ^ v291 ^ 0xE40) >> 8) ^ 0x35)) ^ 0x20;
  LODWORD(v293) = v259 ^ LODWORD(STACK[0x2BC0]);
  v294 = v293 ^ LODWORD(STACK[0x3828]) ^ (v282 - 1224493152);
  v295 = v293 ^ LODWORD(STACK[0x3818]) ^ (v283 + 1655356916);
  v296 = v293 ^ STACK[0x3850] ^ v285;
  v297 = v293 ^ LODWORD(STACK[0x3838]) ^ (v291 + 1050942898);
  v298 = v295 ^ 0x6350E40u;
  STACK[0x32A0] = v298 >> 8;
  v299 = ((((v295 ^ 0x6350E40u) >> 8) ^ 0xE) - 114) ^ 0xFFFFFFD7 ^ *(v287 + (BYTE1(v298) ^ 0x37));
  STACK[0x3788] = v299;
  v300 = STACK[0x36E8];
  v300[6] = v299;
  v301 = v294 ^ 0x46D664Fu;
  v300[14] = ((BYTE1(v301) ^ 0x21) - 114) ^ 0xD6 ^ *(v287 + (BYTE1(v301) ^ 0x18));
  v302 = v296 ^ 0x32236051u;
  v300[9] = ((BYTE2(v302) ^ 0x6E) - 114) ^ 0xFA ^ *(v287 + (BYTE2(v302) ^ 0x57));
  STACK[0x32B0] = v301 >> 16;
  v300[13] = *(v287 + (BYTE2(v301) ^ 0x66)) ^ ((((v294 ^ 0x46D664Fu) >> 16) ^ 0x5F) - 114) ^ 0x54;
  v303 = v297 ^ 0x42BE4639u;
  v300[3] = ((v297 ^ 0x39) - 114) ^ 0x64 ^ *(v287 + v297);
  STACK[0x3818] = v302 >> 24;
  v300[8] = ((((v296 ^ 0x32236051u) >> 24) ^ 0xCF) - 114) ^ 0x15 ^ *(v287 + ((v302 >> 24) ^ 0xF6));
  v300[1] = ((BYTE2(v303) ^ 0xD1) - 114) ^ 0xBA ^ *(v287 + (BYTE2(v303) ^ 0xE8));
  v300[7] = ((v295 ^ 0xE8) - 114) ^ *(v287 + (v295 ^ 0xD1)) ^ 0xE0;
  v300[11] = ((v296 ^ 0x53) - 114) ^ 0x91 ^ *(v287 + (v296 ^ 0x6ALL));
  v300[4] = ((((v295 ^ 0x6350E40u) >> 24) ^ 0xB3) - 114) ^ 0xED ^ *(v287 + ((v298 >> 24) ^ 0x8A));
  v300[5] = ((BYTE2(v298) ^ 0x52) - 114) ^ 0xAF ^ *(v287 + (BYTE2(v298) ^ 0x6BLL));
  v301 >>= 24;
  LOBYTE(v299) = *(v287 + (v301 ^ 0x9B));
  STACK[0x3838] = v301;
  v300[12] = v299 ^ ((v301 ^ 0xA2) - 114) ^ 0xC3;
  v300[v289] = ((BYTE1(v302) ^ 0x53) - 114) ^ 0x12 ^ *(v287 + (BYTE1(v302) ^ 0x6ALL));
  LODWORD(v299) = (((LODWORD(STACK[0x3960]) ^ v265) & STACK[0x2BD0]) << STACK[0x3D88]) | (((LODWORD(STACK[0x3960]) ^ v265) & STACK[0x32C8]) >> STACK[0x3E38]);
  LODWORD(v299) = STACK[0x3650] & (((v299 ^ ((v299 & STACK[0x3920]) >> 1)) & STACK[0x3920]) >> 2) ^ v299 ^ ((v299 & STACK[0x3920]) >> 1);
  LODWORD(STACK[0x3960]) = ((v299 & STACK[0x3920]) >> 4) & (LODWORD(STACK[0x2BF8]) >> 2) & STACK[0x3650] ^ v299;
  v300[15] = ((v294 ^ 0x57) - 114) ^ 0x21 ^ *(v287 + (v294 ^ 0x6ELL));
  *v300 = ((((v297 ^ 0x42BE4639u) >> 24) ^ 0xF6) - 114) ^ 0xE2 ^ *(v287 + (((v297 ^ 0x42BE4639u) >> 24) ^ 0xCFLL));
  LOBYTE(v299) = *(v287 + (BYTE1(v303) ^ 0xEBLL));
  STACK[0x3828] = v303 >> 8;
  v300[2] = ((BYTE1(v303) ^ 0xD2) - 114) ^ 0x7D ^ v299;
  STACK[0x3820] = v281;
  return (*(v1 + 8 * ((41 * (STACK[0x36E0] < STACK[0x3B58])) ^ LODWORD(STACK[0x3E18]))))();
}