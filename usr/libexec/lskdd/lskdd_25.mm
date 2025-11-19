uint64_t sub_1006BFDF8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = *(v3 + 24);
  *(a1 + 4352) = v4;
  if (v4)
  {
    v5 = a2 == v2 - 51536 + ((v2 + 609583591) & 0xDBAA7F38);
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(STACK[0x57D8] + 8 * ((56 * v6) ^ v2)))();
}

uint64_t sub_1006BFE58()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 1805;
  v2 = STACK[0xE208];
  *(v2 + 1280) = 0xF0F0F0F0F0F0F0FLL;
  *(v2 + 1288) = 0xF0F0F0F0F0F0F0FLL;
  *(v2 + 1296) = 252645135;
  v3 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * (v0 - 19774));
  return (*(v3 + 8 * (v1 - 18569 + v0 - 19774)))();
}

uint64_t sub_1006BFF34()
{
  STACK[0x6A20] = v1;
  LODWORD(STACK[0xA1D4]) = STACK[0xCEA4];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006C01F4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241Bu)))();
  STACK[0xCBE0] = 0;
  return (*(v1 + 8 * (v0 - 18005)))(v2);
}

uint64_t sub_1006C0234(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = a5 < a1;
  if (v7 == v6 + 83847107 < a1)
  {
    v7 = a5 > v6 + 83847107;
  }

  return (*(STACK[0x57D8] + 8 * ((30 * v7) ^ v5)))();
}

uint64_t sub_1006C096C(uint64_t a1, uint64_t a2)
{
  v3 = v2 - 27042;
  v4 = STACK[0x83B8];
  v5 = STACK[0x7ED8];
  STACK[0x88A8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v5 + 16;
  STACK[0xC120] = v4;
  STACK[0x88D0] = 0;
  STACK[0xC580] = 0;
  LODWORD(STACK[0x9FDC]) = 2101965948;
  v6 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * v3);
  return (*(v6 + 8 * ((v3 + 4510) ^ v3)))(4294960487, a2, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_1006C0A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x5480]) = v8;
  v9 = *(STACK[0x54C0] + (STACK[0x53F8] & STACK[0x5328]));
  STACK[0x5178] = __ROR8__(v9, 61);
  STACK[0x5170] = v9 + STACK[0x5600];
  STACK[0x5158] = (STACK[0x5260] + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v10 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v11 = *v10;
  STACK[0x52C0] = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x52F0] = 8 * (v10 & 7);
  LODWORD(STACK[0x5328]) = v11 ^ 0xFFFFFFBD;
  STACK[0x52B0] = v10 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5190]) = 2 * (v10 & 0xFFFFFFF8);
  LODWORD(STACK[0x5250]) = *STACK[0x51E8];
  STACK[0x5258] = *STACK[0x51F0];
  LODWORD(v10) = LODWORD(STACK[0x53D0]) == 43;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 43;
  return (*(STACK[0x57D8] + 8 * ((a8 + 13951) ^ (25 * v10))))();
}

uint64_t sub_1006C0B90@<X0>(int a1@<W8>)
{
  v4 = (STACK[0x5780] + v1);
  v5 = *v4;
  v6 = v4[1];
  v7 = (v3 + v1);
  *v7 = v5;
  v7[1] = v6;
  return (*(STACK[0x57D8] + 8 * (((v1 == 224) * ((a1 ^ 0x7628) + v2)) ^ a1)))();
}

uint64_t sub_1006C0C88@<X0>(int a1@<W8>)
{
  v3 = 0xF726234C92AC6E47 * STACK[0x68D8] - 0x29187218F068EE03;
  v4 = STACK[0x3A38];
  LODWORD(STACK[0x1D4EC]) = STACK[0x3A38];
  LODWORD(STACK[0x1D4C0]) = ((a1 - 1265671332) ^ 0x1C) + v4;
  LODWORD(STACK[0x1D4D4]) = (a1 - 1265675442) ^ v4;
  STACK[0x1D4C8] = v3 + v4;
  LODWORD(STACK[0x1D4D8]) = a1 - 1265671332 + v4;
  LODWORD(STACK[0x1D4D0]) = a1 - v4 - 1802753130;
  STACK[0x1D4E0] = v4 ^ v1;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (a1 + 9255)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E8])))(v6);
}

uint64_t sub_1006C0D4C()
{
  v0 = STACK[0x51B8] - 16604;
  STACK[0xB6E0] = STACK[0xDCF8];
  LODWORD(STACK[0x6E34]) = STACK[0xDCF4];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006C1080()
{
  v3 = 551690071 * ((v2 + 0x167C9E0253059923 - 2 * ((v2 - 240) & 0x167C9E0253059A13)) ^ 0x67E1CCCC1DE8C944);
  LODWORD(STACK[0x1D4C0]) = (v1 - 1079089617) ^ v3;
  STACK[0x1D4D8] = 4151854225 - v3;
  v4 = v1 + 1726935954 - v3;
  LODWORD(STACK[0x1D4CC]) = v4;
  STACK[0x1D4E0] = v0 + v3;
  LODWORD(STACK[0x1D4C4]) = v3 ^ (v1 + 1726935954) ^ 0xF94;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4C8]) = v4 - 357;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2411)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1006C1150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = LODWORD(STACK[0x3C60]) - 27864;
  *(v3 + 16 * a3 + 8) = 2101965980;
  return (*(STACK[0x57D8] + 8 * ((5552 * ((v4 + 1615675304) > 0x563C9770)) ^ (v4 + 805))))(a1, a2, 1202120278);
}

uint64_t sub_1006C11D0()
{
  LODWORD(STACK[0x57B0]) = v0 - 32;
  STACK[0x57C0] = STACK[0xD870];
  STACK[0x57A0] = STACK[0xD860] - 0x4DC10458F9981692;
  LODWORD(STACK[0x5790]) = (((LODWORD(STACK[0x5750]) ^ 0x9A4981FA) + 1156759012) ^ ((LODWORD(STACK[0x5750]) ^ 0x1B7751DE) - 976458296) ^ (((v0 - 2051102249) ^ LODWORD(STACK[0x5750])) + 1527110986)) + 241840646;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006C1358@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = (a1 + 1819640779) & 0x938A7FB5;
  LODWORD(STACK[0x5328]) = v5;
  v6 = (v5 + 50124) & (LODWORD(STACK[0x5500]) << 8);
  v7 = LODWORD(STACK[0x5660]) << 16;
  v8 = LODWORD(STACK[0x56C0]) << 16;
  v9 = (LODWORD(STACK[0x5680]) << 8) | (LODWORD(STACK[0x5650]) << 16) | (LODWORD(STACK[0x5730]) << 24) | LODWORD(STACK[0x5510]);
  v10 = LODWORD(STACK[0x5670]) | (a2 << 24);
  v11 = STACK[0x5368];
  v12 = STACK[0x55A0];
  LODWORD(STACK[0x5190]) = v9;
  v13 = v7 & 0xFFFF00FF | (LODWORD(STACK[0x5780]) << 8) | (LODWORD(STACK[0x56D0]) << 24);
  v14 = (v4 << 24) | (LODWORD(STACK[0x5720]) << 16) | LODWORD(STACK[0x56F0]) | (LODWORD(STACK[0x54F0]) << 8);
  v15 = v6 + v10 + v8;
  LODWORD(STACK[0x5180]) = v15;
  v16 = -1876760643 * (v15 ^ (((-1754315689 * (v12 - v11 - v9)) ^ ((-1754315689 * (v12 - v11 - v9)) >> 16)) + (((-1754315689 * (v12 - v11 - v9)) ^ ((-1754315689 * (v12 - v11 - v9)) >> 16)) >> 8)));
  v17 = v13 & 0xFFFFFF00 | LODWORD(STACK[0x54E0]);
  v18 = v16 ^ HIWORD(v16);
  LODWORD(STACK[0x5188]) = v17;
  v19 = -1793688605 * (v18 - v17 + (v18 >> 8)) - ((-1793688605 * (v18 - v17 + (v18 >> 8))) >> 16);
  LODWORD(STACK[0x5170]) = v14;
  v20 = 1579312333 * ((v19 - (v19 >> 8)) ^ v14) - ((1579312333 * ((v19 - (v19 >> 8)) ^ v14)) >> 16);
  v21 = v20 - (v20 >> 8);
  v22 = 8 * v21;
  v23 = STACK[0x5560];
  v24 = STACK[0x5620];
  v25 = LODWORD(STACK[0x5560]) - LODWORD(STACK[0x5620]) - v9;
  v26 = -8 * v21;
  LODWORD(STACK[0x5140]) = -8 * v21;
  v27 = -1648500851 * ((687237059 * v25 + ((687237059 * v25) >> 16)) ^ ((687237059 * v25 + ((687237059 * v25) >> 16)) >> 8) ^ v17);
  v28 = 748734063 * ((v27 ^ HIWORD(v27) ^ ((v27 ^ HIWORD(v27)) >> 8)) - v15);
  v29 = -1685476361 * (v28 ^ HIWORD(v28) ^ v14 ^ ((v28 ^ HIWORD(v28)) >> 8));
  v30 = v29 + HIWORD(v29) + ((v29 + HIWORD(v29)) >> 8);
  v31 = v21 + v30;
  v32 = v30;
  v33 = STACK[0x5610];
  if (v31)
  {
    v33 = STACK[0x5590];
  }

  v34 = v31 + v21;
  v35 = v21;
  LODWORD(STACK[0x54F0]) = v21;
  v36 = STACK[0x5600];
  if ((v31 & 1) == 0)
  {
    v36 = STACK[0x55F0];
  }

  v37 = STACK[0x5358];
  if (v34)
  {
    v38 = STACK[0x5358];
  }

  else
  {
    v38 = v11;
  }

  LODWORD(STACK[0x56C0]) = v38;
  v39 = STACK[0x5360];
  if (v34)
  {
    v40 = STACK[0x5360];
  }

  else
  {
    v40 = v37;
  }

  LODWORD(STACK[0x56D0]) = v40;
  v41 = STACK[0x5370];
  if ((v34 & 1) == 0)
  {
    v11 = STACK[0x5370];
  }

  LODWORD(STACK[0x5730]) = v11;
  if ((v34 & 1) == 0)
  {
    v41 = v39;
  }

  LODWORD(STACK[0x5720]) = v41;
  if ((v34 & 2) != 0)
  {
    v41 = v38;
  }

  LODWORD(STACK[0x5500]) = v41;
  if ((v34 & 2) != 0)
  {
    v42 = v40;
  }

  else
  {
    v42 = v11;
  }

  LODWORD(STACK[0x5510]) = v42;
  v43 = v22 & 0x18;
  v44 = (v42 >> (v26 & 0x18)) + (v42 << (v22 & 0x18));
  if ((v26 & 0x18) == 0)
  {
    v44 = v42;
  }

  LODWORD(STACK[0x5470]) = v44;
  v45 = __ROR4__(__ROR4__((v41 << (v22 & 0x18)) ^ (v41 >> (v26 & 0x18)), 10) ^ 0xEFF57DDA, 22) ^ 0xD5F76BBF;
  if ((v26 & 0x18) != 0)
  {
    v41 = v45;
  }

  LODWORD(STACK[0x5460]) = v41;
  if ((v31 & 2) != 0)
  {
    v46 = v36;
  }

  else
  {
    v46 = v33;
  }

  if ((v31 & 2) != 0)
  {
    v47 = v33;
  }

  else
  {
    v47 = v36;
  }

  v48 = v26 & 0x18;
  LODWORD(STACK[0x54E0]) = v47;
  v49 = (v47 << v43) ^ (v47 >> (v26 & 0x18));
  LODWORD(STACK[0x54D0]) = v46;
  v50 = (v46 << v43) ^ (v46 >> (v26 & 0x18));
  v51 = ((v25 ^ -v25 ^ (LODWORD(STACK[0x4E28]) - (v25 ^ LODWORD(STACK[0x4E28])))) + LODWORD(STACK[0x4E28])) ^ v25;
  if ((v26 & 0x18) == 0)
  {
    v49 = v47;
  }

  LODWORD(STACK[0x5300]) = v49;
  if ((v26 & 0x18) != 0)
  {
    v52 = v50;
  }

  else
  {
    v52 = v46;
  }

  LODWORD(STACK[0x5318]) = v52;
  LODWORD(STACK[0x5650]) = v32;
  v53 = STACK[0x4F20];
  if (v32)
  {
    v54 = STACK[0x4F20];
  }

  else
  {
    v54 = v51;
  }

  LODWORD(STACK[0x5310]) = v54;
  v55 = STACK[0x4F38];
  if (v32)
  {
    v56 = v51;
  }

  else
  {
    v56 = STACK[0x4F38];
  }

  LODWORD(STACK[0x5308]) = v56;
  v57 = STACK[0x5580];
  if ((v32 & 1) == 0)
  {
    v57 = STACK[0x5570];
  }

  v58 = STACK[0x4F30];
  if (v32)
  {
    v53 = STACK[0x4F30];
  }

  LODWORD(STACK[0x5680]) = v53;
  if (v32)
  {
    v59 = v55;
  }

  else
  {
    v59 = v58;
  }

  LODWORD(STACK[0x5670]) = v59;
  v60 = STACK[0x55B0];
  if (v32)
  {
    v60 = v12;
  }

  v61 = (v32 & 2) == 0;
  if ((v32 & 2) != 0)
  {
    v62 = v57;
  }

  else
  {
    v62 = v60;
  }

  LODWORD(STACK[0x54B0]) = v62;
  if ((v32 & 2) != 0)
  {
    v57 = v60;
  }

  LODWORD(STACK[0x5780]) = v57;
  if ((v32 & 2) != 0)
  {
    v63 = v54;
  }

  else
  {
    v63 = v59;
  }

  if (v61)
  {
    v64 = v56;
  }

  else
  {
    v64 = v53;
  }

  v65 = (v62 << (v22 & 0x18)) ^ (v62 >> v48);
  if ((v22 & 0x18) == 0)
  {
    v65 = v62;
  }

  LODWORD(STACK[0x5268]) = v65;
  v66 = v34 + v35;
  v67 = STACK[0x4E08];
  v68 = STACK[0x4DF8];
  if ((v34 + v35))
  {
    v69 = STACK[0x4E08];
  }

  else
  {
    v69 = STACK[0x4DF8];
  }

  LODWORD(STACK[0x51C8]) = v69;
  v70 = STACK[0x4DE0];
  v71 = STACK[0x4DD8];
  if ((v34 + v35))
  {
    v72 = STACK[0x4DD8];
  }

  else
  {
    v72 = STACK[0x4DE0];
  }

  LODWORD(STACK[0x51E0]) = v72;
  v73 = STACK[0x4E00];
  if ((v34 + v35))
  {
    v74 = STACK[0x4E00];
  }

  else
  {
    v74 = v23;
  }

  LODWORD(STACK[0x51D0]) = v74;
  v75 = STACK[0x4DF0];
  v76 = STACK[0x4DE8];
  if (v66)
  {
    v77 = STACK[0x4DF0];
  }

  else
  {
    v77 = STACK[0x4DE8];
  }

  LODWORD(STACK[0x51F8]) = v77;
  if (v66)
  {
    v75 = v70;
  }

  LODWORD(STACK[0x52C0]) = v75;
  if ((v66 & 1) == 0)
  {
    v76 = v71;
  }

  LODWORD(STACK[0x52B0]) = v76;
  if ((v66 & 2) != 0)
  {
    v78 = v72;
  }

  else
  {
    v78 = v77;
  }

  if ((v66 & 2) != 0)
  {
    v79 = v76;
  }

  else
  {
    v79 = v75;
  }

  if ((v66 & 2) != 0)
  {
    v80 = v74;
  }

  else
  {
    v80 = v69;
  }

  LODWORD(STACK[0x54C0]) = v80;
  v81 = __ROR4__(v80, v48);
  if ((v22 & 0x18) == 0)
  {
    v81 = v80;
  }

  LODWORD(STACK[0x5258]) = v81;
  v82 = STACK[0x55C0];
  if (v34)
  {
    v82 = v24;
  }

  LODWORD(STACK[0x52D0]) = v82;
  v83 = STACK[0x55D0];
  if ((v34 & 1) == 0)
  {
    v83 = STACK[0x55E0];
  }

  LODWORD(STACK[0x52F0]) = v83;
  if ((v34 & 2) == 0)
  {
    v83 = v82;
  }

  LODWORD(STACK[0x54A0]) = v83;
  v84 = v22;
  LODWORD(STACK[0x5660]) = v22;
  v85 = (v83 >> v48) ^ (v83 << (v22 & 0x18));
  if ((v22 & 0x18) == 0)
  {
    v85 = v83;
  }

  LODWORD(STACK[0x5240]) = v85;
  if (v31)
  {
    v86 = STACK[0x4F50];
  }

  else
  {
    v86 = STACK[0x4F58];
  }

  if (v31)
  {
    v87 = STACK[0x4F40];
  }

  else
  {
    v87 = STACK[0x4F50];
  }

  if (v31)
  {
    v88 = STACK[0x4F58];
  }

  else
  {
    v88 = STACK[0x4F48];
  }

  if (v31)
  {
    v89 = STACK[0x4F48];
  }

  else
  {
    v89 = STACK[0x4F40];
  }

  v90 = v79;
  if ((v31 & 2) != 0)
  {
    v91 = v88;
  }

  else
  {
    v91 = v87;
  }

  if ((v31 & 2) != 0)
  {
    v92 = v89;
  }

  else
  {
    v92 = v86;
  }

  v94 = v84 & 0x18;
  v93 = (v84 & 0x18) == 0;
  LODWORD(STACK[0x5490]) = v79;
  v95 = (v79 << (v84 & 0x18)) ^ (v79 >> v48);
  v96 = v78;
  LODWORD(STACK[0x5480]) = v78;
  v97 = (v78 << (v84 & 0x18)) + (v78 >> v48);
  v98 = v64;
  LODWORD(STACK[0x5430]) = v64;
  v99 = (v64 << v94) ^ (v64 >> v48);
  LODWORD(STACK[0x5420]) = v63;
  v100 = (v63 >> v48) ^ (v63 << v94);
  LODWORD(STACK[0x5450]) = v91;
  v101 = (v91 >> v48) ^ (v91 << v94);
  LODWORD(STACK[0x5440]) = v92;
  v102 = (v92 >> v48) ^ (v92 << v94);
  if (!v93)
  {
    v90 = v95;
  }

  LODWORD(STACK[0x51B0]) = v90;
  if (!v93)
  {
    v96 = v97;
  }

  LODWORD(STACK[0x51D8]) = v96;
  if (!v93)
  {
    v98 = v99;
  }

  LODWORD(STACK[0x5208]) = v98;
  if (v93)
  {
    v103 = v63;
  }

  else
  {
    v103 = v100;
  }

  LODWORD(STACK[0x5200]) = v103;
  if (!v93)
  {
    v91 = v101;
  }

  LODWORD(STACK[0x5210]) = v91;
  if (v93)
  {
    v102 = v92;
  }

  LODWORD(STACK[0x5218]) = v102;
  v104 = STACK[0x5140];
  v105 = (LODWORD(STACK[0x5780]) >> (STACK[0x5140] & 0x18)) + (LODWORD(STACK[0x5780]) << v94);
  v106 = (v18 | 0xF6AFE739) - ((v18 | 0xF6AFE739) ^ v18) + LODWORD(STACK[0x5550]) - v18;
  if ((STACK[0x5140] & 0x18) == 0)
  {
    v105 = STACK[0x5780];
  }

  LODWORD(STACK[0x5250]) = v105;
  v107 = STACK[0x5560];
  if (v66)
  {
    v108 = v68;
  }

  else
  {
    v107 = v67;
    v108 = v73;
  }

  if (v31)
  {
    v109 = STACK[0x5540];
  }

  else
  {
    v109 = v106;
  }

  v110 = STACK[0x4E20];
  if (v31)
  {
    v111 = STACK[0x55F0];
  }

  else
  {
    v106 = STACK[0x4E20];
    v111 = STACK[0x5590];
  }

  if (v31)
  {
    v112 = STACK[0x5530];
  }

  else
  {
    v112 = STACK[0x5540];
  }

  if (v31)
  {
    v113 = STACK[0x5610];
  }

  else
  {
    v113 = STACK[0x5600];
  }

  if ((v31 & 1) == 0)
  {
    v110 = STACK[0x5530];
  }

  if ((v66 & 2) != 0)
  {
    v114 = v107;
  }

  else
  {
    v114 = v108;
  }

  if ((v31 & 2) != 0)
  {
    v115 = v87;
  }

  else
  {
    v115 = v88;
  }

  LODWORD(STACK[0x56F0]) = v115;
  if ((v31 & 2) != 0)
  {
    v116 = v111;
  }

  else
  {
    v116 = v113;
  }

  LODWORD(STACK[0x5278]) = v116;
  if ((v31 & 2) != 0)
  {
    v117 = v113;
  }

  else
  {
    v117 = v111;
  }

  LODWORD(STACK[0x5270]) = v117;
  if ((v31 & 2) != 0)
  {
    v118 = v106;
  }

  else
  {
    v118 = v112;
  }

  if ((v31 & 2) != 0)
  {
    v119 = v112;
  }

  else
  {
    v119 = v106;
  }

  if ((v31 & 2) != 0)
  {
    v120 = v86;
  }

  else
  {
    v120 = v89;
  }

  if ((v31 & 2) != 0)
  {
    v121 = v110;
  }

  else
  {
    v121 = v109;
  }

  if ((v31 & 2) != 0)
  {
    v122 = v109;
  }

  else
  {
    v122 = v110;
  }

  LODWORD(STACK[0x5320]) = v114;
  v123 = v104 & 0x18;
  v124 = v104;
  if ((v104 & 0x18) != 0)
  {
    v114 = (v114 >> (v104 & 0x18)) + (v114 << v94);
  }

  LODWORD(STACK[0x5238]) = v114;
  v125 = STACK[0x4E24];
  v126 = STACK[0x4E10];
  if (v34)
  {
    v127 = STACK[0x4E24];
  }

  else
  {
    v127 = STACK[0x4E10];
  }

  if (v34)
  {
    v128 = STACK[0x55E0];
  }

  else
  {
    v128 = STACK[0x5620];
  }

  if (v34)
  {
    v129 = STACK[0x55C0];
  }

  else
  {
    v129 = STACK[0x55D0];
  }

  if (v34)
  {
    v125 = STACK[0x4F28];
    v130 = STACK[0x4E18];
  }

  else
  {
    v126 = STACK[0x4E18];
    v130 = STACK[0x4F28];
  }

  v131 = (v34 & 2) == 0;
  if ((v34 & 2) != 0)
  {
    v132 = v130;
  }

  else
  {
    v132 = v127;
  }

  if ((v34 & 2) != 0)
  {
    v133 = v127;
  }

  else
  {
    v133 = v130;
  }

  v134 = STACK[0x5720];
  if (v131)
  {
    v134 = STACK[0x56C0];
  }

  LODWORD(STACK[0x52E8]) = v134;
  v135 = STACK[0x52F0];
  if (!v131)
  {
    v135 = STACK[0x52D0];
  }

  LODWORD(STACK[0x5720]) = v135;
  v136 = STACK[0x5730];
  if (v131)
  {
    v136 = STACK[0x56D0];
  }

  LODWORD(STACK[0x52D0]) = v136;
  if (v131)
  {
    v137 = v128;
  }

  else
  {
    v137 = v129;
  }

  LODWORD(STACK[0x5730]) = v137;
  if (v131)
  {
    v138 = v129;
  }

  else
  {
    v138 = v128;
  }

  if (v131)
  {
    v139 = v125;
  }

  else
  {
    v139 = v126;
  }

  if (!v131)
  {
    v126 = v125;
  }

  v140 = STACK[0x5650];
  v141 = STACK[0x5570];
  if ((STACK[0x5650] & 1) == 0)
  {
    v141 = STACK[0x55A0];
  }

  v142 = STACK[0x55B0];
  if ((v140 & 1) == 0)
  {
    v142 = STACK[0x5580];
  }

  v143 = STACK[0x5520];
  if (v140)
  {
    v144 = STACK[0x5378];
  }

  else
  {
    v144 = STACK[0x5520];
  }

  if (v140)
  {
    v145 = STACK[0x5388];
  }

  else
  {
    v145 = STACK[0x5378];
  }

  if (v140)
  {
    v146 = STACK[0x5380];
  }

  else
  {
    v143 = STACK[0x5380];
    v146 = STACK[0x5388];
  }

  v147 = (STACK[0x5650] & 2) == 0;
  if ((v140 & 2) != 0)
  {
    v148 = v145;
  }

  else
  {
    v148 = v143;
  }

  LODWORD(STACK[0x56D0]) = v148;
  if ((v140 & 2) != 0)
  {
    v149 = v143;
  }

  else
  {
    v149 = v145;
  }

  LODWORD(STACK[0x56C0]) = v149;
  if ((v140 & 2) != 0)
  {
    v150 = v141;
  }

  else
  {
    v150 = v142;
  }

  LODWORD(STACK[0x5248]) = v150;
  if ((v140 & 2) != 0)
  {
    v141 = v142;
  }

  LODWORD(STACK[0x5260]) = v141;
  if ((v140 & 2) != 0)
  {
    v151 = STACK[0x5670];
  }

  else
  {
    v151 = STACK[0x5310];
  }

  if (v147)
  {
    v152 = STACK[0x5680];
  }

  else
  {
    v152 = STACK[0x5308];
  }

  if (v147)
  {
    v153 = v146;
  }

  else
  {
    v153 = v144;
  }

  LODWORD(STACK[0x5670]) = v153;
  if (v147)
  {
    v154 = v144;
  }

  else
  {
    v154 = v146;
  }

  LODWORD(STACK[0x5680]) = v154;
  v155 = (v66 & 2) == 0;
  if ((v66 & 2) != 0)
  {
    v156 = STACK[0x52C0];
  }

  else
  {
    v156 = STACK[0x52B0];
  }

  if ((v66 & 2) != 0)
  {
    v157 = v108;
  }

  else
  {
    v157 = v107;
  }

  if ((v66 & 2) != 0)
  {
    v158 = STACK[0x51C8];
  }

  else
  {
    v158 = STACK[0x51D0];
  }

  if (v155)
  {
    v159 = STACK[0x51E0];
  }

  else
  {
    v159 = STACK[0x51F8];
  }

  v161 = STACK[0x5660] & 0x18;
  v160 = (STACK[0x5660] & 0x18) == 0;
  LODWORD(STACK[0x52D8]) = v118;
  v162 = (v118 << v161) ^ (v118 >> v123);
  LODWORD(STACK[0x52F8]) = v133;
  v163 = (v133 >> v123) ^ (v133 << v161);
  v164 = v126;
  LODWORD(STACK[0x52F0]) = v126;
  v165 = (v126 >> v123) + (v126 << v161);
  v166 = v156;
  LODWORD(STACK[0x5310]) = v156;
  v167 = (v156 >> v123) ^ (v156 << v161);
  LODWORD(STACK[0x52E0]) = v122;
  v168 = __ROR4__(v122, v123);
  LODWORD(STACK[0x5308]) = v159;
  v169 = __ROR4__(v159, v123);
  if (v160)
  {
    v168 = v122;
  }

  LODWORD(STACK[0x5150]) = v168;
  if (v160)
  {
    v162 = v118;
  }

  LODWORD(STACK[0x5158]) = v162;
  if (v160)
  {
    v163 = v133;
  }

  LODWORD(STACK[0x5168]) = v163;
  if (!v160)
  {
    v164 = v165;
  }

  LODWORD(STACK[0x5160]) = v164;
  if (v160)
  {
    v170 = v166;
  }

  else
  {
    v170 = v167;
  }

  LODWORD(STACK[0x51A8]) = v170;
  if (v160)
  {
    v171 = v159;
  }

  else
  {
    v171 = v169;
  }

  LODWORD(STACK[0x51A0]) = v171;
  v172 = v124;
  v174 = v124 & 0x18;
  v173 = (v124 & 0x18) == 0;
  v175 = v119;
  LODWORD(STACK[0x52A8]) = v119;
  LODWORD(STACK[0x51F8]) = (v119 << v161) ^ (v119 >> v174);
  v176 = v121;
  LODWORD(STACK[0x52A0]) = v121;
  LODWORD(STACK[0x51E0]) = (v121 << v161) ^ (v121 >> v174);
  v177 = v139;
  LODWORD(STACK[0x52C8]) = v139;
  LODWORD(STACK[0x51D0]) = (v139 << v161) ^ (v139 >> v174);
  v178 = v132;
  LODWORD(STACK[0x52B8]) = v132;
  LODWORD(STACK[0x51C8]) = (v132 << v161) + (v132 >> v174);
  v179 = v152;
  LODWORD(STACK[0x5280]) = v152;
  v180 = (v152 >> v174) ^ (v152 << v161);
  v181 = v151;
  LODWORD(STACK[0x5288]) = v151;
  v182 = (v151 >> v174) + (v151 << v161);
  v183 = v120;
  LODWORD(STACK[0x5290]) = v120;
  v184 = (v120 >> v174) + (v120 << v161);
  v185 = STACK[0x56F0];
  v186 = (v185 << v161) ^ (v185 >> v174);
  LODWORD(STACK[0x5298]) = v138;
  v187 = (v138 << v161) + (v138 >> v174);
  v188 = STACK[0x5720];
  v189 = (v188 << v161) + (v188 >> v174);
  v190 = STACK[0x5730];
  v191 = (v190 >> v174) ^ (v190 << v161);
  LODWORD(STACK[0x52B0]) = v157;
  v192 = (v157 << v161) ^ (v157 >> v174);
  LODWORD(STACK[0x52C0]) = v158;
  v193 = (v158 >> v174) ^ (v158 << v161);
  v194 = LODWORD(STACK[0x5650]) + LODWORD(STACK[0x4F78]);
  v195 = STACK[0x51F8];
  if (v173)
  {
    v195 = v175;
  }

  v196 = STACK[0x51E0];
  if (v173)
  {
    v196 = v176;
  }

  LODWORD(STACK[0x5148]) = v196;
  if (!v173)
  {
    v177 = STACK[0x51D0];
  }

  LODWORD(STACK[0x5178]) = v177;
  if (v173)
  {
    v197 = v178;
  }

  else
  {
    v197 = STACK[0x51C8];
  }

  if (!v173)
  {
    v179 = v180;
  }

  LODWORD(STACK[0x5198]) = v179;
  if (v173)
  {
    v182 = v181;
    v198 = v185;
  }

  else
  {
    v198 = v186;
  }

  LODWORD(STACK[0x51C8]) = v198;
  if (v173)
  {
    v199 = v183;
  }

  else
  {
    v199 = v184;
  }

  LODWORD(STACK[0x51C0]) = v199;
  if (v173)
  {
    v200 = v190;
  }

  else
  {
    v200 = v191;
  }

  LODWORD(STACK[0x51E0]) = v200;
  if (v173)
  {
    v201 = v188;
  }

  else
  {
    v201 = v187;
  }

  LODWORD(STACK[0x51F8]) = v201;
  if (v173)
  {
    v202 = v188;
  }

  else
  {
    v202 = v189;
  }

  LODWORD(STACK[0x51D0]) = v202;
  if (v173)
  {
    v203 = v157;
  }

  else
  {
    v203 = v192;
  }

  LODWORD(STACK[0x5650]) = v203;
  if (v173)
  {
    v204 = v158;
  }

  else
  {
    v204 = v193;
  }

  v205 = STACK[0x5170];
  if (v194)
  {
    v206 = STACK[0x5190];
  }

  else
  {
    v206 = STACK[0x5170];
  }

  if (v194)
  {
    v207 = STACK[0x5180];
  }

  else
  {
    v205 = STACK[0x5188];
    v207 = STACK[0x5190];
  }

  if (v194)
  {
    v208 = STACK[0x5188];
  }

  else
  {
    v208 = STACK[0x5180];
  }

  if ((v194 & 2) != 0)
  {
    v209 = v208;
  }

  else
  {
    v209 = v206;
  }

  if ((v194 & 2) != 0)
  {
    v210 = v207;
  }

  else
  {
    v206 = v208;
    v210 = v205;
  }

  if ((v194 & 2) != 0)
  {
    v207 = v205;
  }

  v211 = v172 & 0x18;
  v212 = v172;
  v213 = (v210 >> (v172 & 0x18)) ^ (v210 << v161);
  if ((v172 & 0x18) == 0)
  {
    v213 = v210;
  }

  v214 = __ROR4__(v206, v211);
  if ((v172 & 0x18) == 0)
  {
    v214 = v206;
  }

  v215 = STACK[0x5660];
  v216 = STACK[0x5660] & 0x18;
  v217 = (LODWORD(STACK[0x56D0]) << v216) + (LODWORD(STACK[0x56D0]) >> v211);
  if ((STACK[0x5660] & 0x18) == 0)
  {
    v217 = STACK[0x56D0];
  }

  v218 = LODWORD(STACK[0x4C68]) ^ v217 ^ v213;
  v219 = STACK[0x4FA8];
  v220 = LODWORD(STACK[0x4F98]) ^ LODWORD(STACK[0x4FF8]) ^ LODWORD(STACK[0x4FA8]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v218)), 24);
  v221 = __ROR4__(v207, v211);
  if ((v215 & 0x18) != 0)
  {
    v207 = v221;
  }

  v222 = __ROR4__(STACK[0x56C0], v211);
  if ((v215 & 0x18) == 0)
  {
    v222 = STACK[0x56C0];
  }

  v223 = LODWORD(STACK[0x4D58]) ^ v222 ^ v207;
  v224 = v220 ^ __ROR4__(*(v2 + 4 * BYTE1(v223)), 8);
  v225 = (LODWORD(STACK[0x5670]) >> v211) ^ (LODWORD(STACK[0x5670]) << v216);
  v226 = __ROR4__(v209, v211);
  if ((v215 & 0x18) != 0)
  {
    v209 = v226;
  }

  v227 = (LODWORD(STACK[0x5680]) >> v211) ^ (LODWORD(STACK[0x5680]) << v216);
  if ((v215 & 0x18) == 0)
  {
    v227 = STACK[0x5680];
  }

  v228 = LODWORD(STACK[0x4D58]) ^ v209 ^ v227;
  v229 = v219 ^ LODWORD(STACK[0x4FA0]) ^ v214;
  if ((v215 & 0x18) != 0)
  {
    v230 = v225;
  }

  else
  {
    v230 = STACK[0x5670];
  }

  v231 = v229 ^ v230;
  v232 = v224 ^ *(v2 + 4 * ((v229 ^ v230) >> 16)) ^ __ROR4__(*(v2 + 4 * v228), 16);
  v233 = LODWORD(STACK[0x4BA8]) ^ __ROR4__(*(v2 + 4 * BYTE1(v228)), 8) ^ __ROR4__(*(v2 + 4 * v218), 16) ^ __ROR4__(*(v2 + 4 * HIBYTE(v231)), 24);
  v234 = LODWORD(STACK[0x4BA0]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v228)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v231)), 8) ^ *(v2 + 4 * BYTE2(v218)) ^ __ROR4__(*(v2 + 4 * v223), 16);
  v235 = v219 ^ LODWORD(STACK[0x4FF8]) ^ LODWORD(STACK[0x4FB8]) ^ __ROR4__(*(v2 + 4 * v231), 16) ^ *(v2 + 4 * BYTE2(v228)) ^ __ROR4__(*(v2 + 4 * HIBYTE(v223)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v218)), 8);
  v236 = v233 ^ *(v2 + 4 * BYTE2(v223)) ^ LODWORD(STACK[0x5150]);
  v237 = v232 ^ v195;
  v238 = v235 ^ LODWORD(STACK[0x5158]);
  v239 = v234 ^ LODWORD(STACK[0x5148]);
  v240 = v219 ^ LODWORD(STACK[0x5398]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v236)), 24) ^ *(v2 + 4 * BYTE2(v238)) ^ __ROR4__(*(v2 + 4 * v237), 16) ^ __ROR4__(*(v2 + 4 * BYTE1(v239)), 8);
  v241 = v219 ^ LODWORD(STACK[0x53A8]);
  v242 = v241 ^ __ROR4__(*(v2 + 4 * BYTE1(v237)), 8) ^ *(v2 + 4 * BYTE2(v239)) ^ __ROR4__(*(v2 + 4 * HIBYTE(v238)), 24) ^ __ROR4__(*(v2 + 4 * (v233 ^ *(v2 + 4 * BYTE2(v223)) ^ LOBYTE(STACK[0x5150]))), 16);
  v243 = v219 ^ LODWORD(STACK[0x4FB0]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v237)), 24) ^ *(v2 + 4 * BYTE2(v236)) ^ __ROR4__(*(v2 + 4 * v239), 16) ^ __ROR4__(*(v2 + 4 * BYTE1(v238)), 8) ^ LODWORD(STACK[0x5168]);
  v244 = v219 ^ LODWORD(STACK[0x5390]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v239)), 24) ^ __ROR4__(*(v2 + 4 * v238), 16) ^ LODWORD(STACK[0x5160]) ^ __ROR4__(*(v2 + 4 * BYTE1(v236)), 8) ^ *(v2 + 4 * BYTE2(v237));
  v245 = LODWORD(STACK[0x4DD0]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v243)), 24) ^ __ROR4__(*(v2 + 4 * ((v242 ^ v197) >> 8)), 8) ^ __ROR4__(*(v2 + 4 * v244), 16);
  v246 = LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x5400]) ^ v219;
  v247 = v240 ^ LODWORD(STACK[0x5178]);
  v248 = v246 ^ __ROR4__(*(v2 + 4 * (v242 ^ v197)), 16) ^ LODWORD(STACK[0x51B0]) ^ *(v2 + 4 * BYTE2(v243)) ^ __ROR4__(*(v2 + 4 * HIBYTE(v244)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v247)), 8);
  v249 = v241 ^ LODWORD(STACK[0x4DC8]) ^ LODWORD(STACK[0x4DA8]) ^ LODWORD(STACK[0x4DB0]) ^ LODWORD(STACK[0x51A0]) ^ *(v2 + 4 * BYTE2(v244)) ^ __ROR4__(*(v2 + 4 * BYTE1(v243)), 8) ^ __ROR4__(*(v2 + 4 * ((v242 ^ v197) >> 24)), 24) ^ __ROR4__(*(v2 + 4 * v247), 16);
  v250 = v246 ^ LODWORD(STACK[0x51A8]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v247)), 24) ^ __ROR4__(*(v2 + 4 * v243), 16) ^ *(v2 + 4 * ((v242 ^ v197) >> 16)) ^ __ROR4__(*(v2 + 4 * BYTE1(v244)), 8);
  v251 = v3 ^ 0xF8535427 ^ LODWORD(STACK[0x5230]) ^ LODWORD(STACK[0x5228]) ^ LODWORD(STACK[0x5220]);
  v252 = LODWORD(STACK[0x5540]) ^ 0xFFF64810 ^ LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5378]) ^ LODWORD(STACK[0x5388]) ^ LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x5370]) ^ LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x5358]) ^ LODWORD(STACK[0x5380]) ^ LODWORD(STACK[0x4DB8]) ^ v251;
  v253 = v251 ^ LODWORD(STACK[0x4F70]);
  v254 = v219 ^ LODWORD(STACK[0x5120]) ^ LODWORD(STACK[0x51D8]) ^ ((v245 ^ *(v2 + 4 * BYTE2(v247))) + 572148271 * (v253 - v252));
  v255 = v219 ^ LODWORD(STACK[0x4F90]) ^ LODWORD(STACK[0x5198]) ^ __ROR4__(*(v2 + 4 * v248), 16) ^ __ROR4__(*(v2 + 4 * HIBYTE(v254)), 24) ^ *(v2 + 4 * BYTE2(v250)) ^ __ROR4__(*(v2 + 4 * BYTE1(v249)), 8);
  v256 = v219 ^ LODWORD(STACK[0x53A0]);
  v257 = v256 ^ v182 ^ __ROR4__(*(v2 + 4 * HIBYTE(v250)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v248)), 8) ^ __ROR4__(*(v2 + 4 * v254), 16);
  v258 = LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x53D8]) ^ v219 ^ LODWORD(STACK[0x5200]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v248)), 24) ^ __ROR4__(*(v2 + 4 * v249), 16) ^ __ROR4__(*(v2 + 4 * BYTE1(v250)), 8);
  v259 = v256 ^ LODWORD(STACK[0x5208]) ^ *(v2 + 4 * BYTE2(v248)) ^ __ROR4__(*(v2 + 4 * HIBYTE(v249)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v254)), 8) ^ __ROR4__(*(v2 + 4 * v250), 16);
  v260 = v257 ^ *(v2 + 4 * BYTE2(v249));
  v261 = v258 ^ *(v2 + 4 * BYTE2(v254));
  v262 = LODWORD(STACK[0x53B8]) ^ LODWORD(STACK[0x53E0]) ^ LODWORD(STACK[0x4B60]) ^ LODWORD(STACK[0x4DA0]) ^ LODWORD(STACK[0x51C0]) ^ __ROR4__(*(v2 + 4 * v255), 16) ^ __ROR4__(*(v2 + 4 * HIBYTE(v260)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v261)), 8) ^ *(v2 + 4 * BYTE2(v259));
  v263 = LODWORD(STACK[0x4FD0]) ^ LODWORD(STACK[0x53E0]) ^ v219 ^ LODWORD(STACK[0x5210]) ^ __ROR4__(*(v2 + 4 * BYTE1(v255)), 8) ^ *(v2 + 4 * BYTE2(v261)) ^ __ROR4__(*(v2 + 4 * v260), 16) ^ __ROR4__(*(v2 + 4 * HIBYTE(v259)), 24);
  v264 = LODWORD(STACK[0x51C8]) ^ v219 ^ (LODWORD(STACK[0x4D98]) + 642859879 * (v252 - v253) + (LODWORD(STACK[0x4DC0]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v255)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v259)), 8) ^ *(v2 + 4 * BYTE2(v260)) ^ __ROR4__(*(v2 + 4 * (v258 ^ *(v2 + 4 * BYTE2(v254)))), 16)));
  v265 = STACK[0x4B80];
  if ((v264 & STACK[0x4B80]) != 0)
  {
    v265 = STACK[0x4B70];
  }

  v266 = v265 + v264;
  v267 = LODWORD(STACK[0x4B58]) ^ LODWORD(STACK[0x5218]) ^ *(v2 + 4 * BYTE2(v255)) ^ __ROR4__(*(v2 + 4 * v259), 16) ^ __ROR4__(*(v2 + 4 * BYTE1(v260)), 8) ^ __ROR4__(*(v2 + 4 * HIBYTE(v261)), 24);
  v268 = v266 ^ LODWORD(STACK[0x4B78]);
  v269 = v219 ^ LODWORD(STACK[0x4FC0]) ^ LODWORD(STACK[0x51D0]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v262)), 24) ^ __ROR4__(*(v2 + 4 * (v266 ^ LOBYTE(STACK[0x4B78]))), 16) ^ __ROR4__(*(v2 + 4 * BYTE1(v267)), 8) ^ *(v2 + 4 * BYTE2(v263));
  v270 = LODWORD(STACK[0x4B50]) ^ LODWORD(STACK[0x51E0]) ^ __ROR4__(*(v2 + 4 * v262), 16) ^ __ROR4__(*(v2 + 4 * HIBYTE(v263)), 24) ^ *(v2 + 4 * BYTE2(v267)) ^ __ROR4__(*(v2 + 4 * BYTE1(v268)), 8);
  v271 = LODWORD(STACK[0x4FC8]) ^ LODWORD(STACK[0x53E8]) ^ v219 ^ LODWORD(STACK[0x51F8]) ^ __ROR4__(*(v2 + 4 * BYTE1(v263)), 8) ^ *(v2 + 4 * BYTE2(v262)) ^ __ROR4__(*(v2 + 4 * v267), 16) ^ __ROR4__(*(v2 + 4 * HIBYTE(v268)), 24);
  v272 = v219 ^ LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x5240]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v267)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v262)), 8) ^ __ROR4__(*(v2 + 4 * v263), 16) ^ *(v2 + 4 * BYTE2(v268));
  v273 = LODWORD(STACK[0x4FD8]) ^ LODWORD(STACK[0x5408]) ^ v219 ^ LODWORD(STACK[0x5258]) ^ __ROR4__(*(v2 + 4 * BYTE1(v269)), 8) ^ __ROR4__(*(v2 + 4 * HIBYTE(v272)), 24) ^ *(v2 + 4 * BYTE2(v271)) ^ __ROR4__(*(v2 + 4 * v270), 16);
  v274 = LODWORD(STACK[0x4B98]) ^ LODWORD(STACK[0x5650]) ^ __ROR4__(*(v2 + 4 * v269), 16) ^ *(v2 + 4 * BYTE2(v272)) ^ __ROR4__(*(v2 + 4 * BYTE1(v271)), 8) ^ __ROR4__(*(v2 + 4 * HIBYTE(v270)), 24);
  v275 = v219 ^ LODWORD(STACK[0x5350]) ^ v204 ^ __ROR4__(*(v2 + 4 * HIBYTE(v269)), 24) ^ __ROR4__(*(v2 + 4 * v271), 16) ^ __ROR4__(*(v2 + 4 * BYTE1(v272)), 8) ^ *(v2 + 4 * BYTE2(v270));
  v276 = v219 ^ LODWORD(STACK[0x4FE0]) ^ LODWORD(STACK[0x5238]) ^ __ROR4__(*(v2 + 4 * v272), 16) ^ __ROR4__(*(v2 + 4 * BYTE1(v270)), 8) ^ __ROR4__(*(v2 + 4 * HIBYTE(v271)), 24) ^ *(v2 + 4 * BYTE2(v269));
  v277 = v219 ^ LODWORD(STACK[0x4FE8]) ^ LODWORD(STACK[0x5250]) ^ __ROR4__(*(v2 + 4 * HIBYTE(v275)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v273)), 8) ^ __ROR4__(*(v2 + 4 * v276), 16) ^ *(v2 + 4 * BYTE2(v274));
  v278 = v219 ^ LODWORD(STACK[0x4FF0]) ^ LODWORD(STACK[0x5268]) ^ __ROR4__(*(v2 + 4 * v274), 16) ^ __ROR4__(*(v2 + 4 * HIBYTE(v273)), 24) ^ __ROR4__(*(v2 + 4 * BYTE1(v275)), 8) ^ *(v2 + 4 * BYTE2(v276));
  HIDWORD(v280) = *(v2 + 4 * BYTE1(v278));
  LODWORD(v280) = HIDWORD(v280);
  v279 = v280 >> 8;
  HIDWORD(v280) = *(v2 + 4 * HIBYTE(v277));
  LODWORD(v280) = HIDWORD(v280);
  v281 = v280 >> 24;
  if ((v279 & 8 & HIBYTE(v280)) != 0)
  {
    v282 = -(v279 & 8);
  }

  else
  {
    v282 = v279 & 8;
  }

  v283 = v215 & 0x18;
  v284 = STACK[0x5248];
  v285 = (v284 << (v215 & 0x18)) + (v284 >> v211);
  if ((v215 & 0x18) == 0)
  {
    v285 = STACK[0x5248];
  }

  v286 = v219 ^ LODWORD(STACK[0x4F80]);
  v287 = v286 ^ v285 ^ __ROR4__(*(v2 + 4 * v273), 16) ^ __ROR4__(*(v2 + 4 * BYTE1(v274)), 8) ^ __ROR4__(*(v2 + 4 * HIBYTE(v276)), 24) ^ *(v2 + 4 * BYTE2(v275));
  v288 = *(v2 + 4 * BYTE1(v276));
  v289 = __ROR4__(STACK[0x5260], v211);
  if ((v215 & 0x18) == 0)
  {
    v289 = STACK[0x5260];
  }

  v290 = v286 ^ v289 ^ __ROR4__(v288, 8) ^ __ROR4__(*(v2 + 4 * HIBYTE(v274)), 24) ^ *(v2 + 4 * BYTE2(v273)) ^ __ROR4__(*(v2 + 4 * v275), 16);
  v291 = LODWORD(STACK[0x4B48]) ^ LODWORD(STACK[0x5300]) ^ v279 & 0xFFFFFFF7 ^ *(v2 + 4 * BYTE2(v290)) ^ (v282 + v281) ^ __ROR4__(*(v2 + 4 * v287), 16);
  v292 = __ROR4__(STACK[0x5270], v211);
  if ((v215 & 0x18) == 0)
  {
    v292 = STACK[0x5270];
  }

  v293 = v219 ^ LODWORD(STACK[0x4F88]);
  v294 = v293 ^ v292 ^ __ROR4__(*(v2 + 4 * BYTE1(v287)), 8) ^ __ROR4__(*(v2 + 4 * v277), 16) ^ __ROR4__(*(v2 + 4 * HIBYTE(v290)), 24);
  v295 = v219 ^ LODWORD(STACK[0x5338]) ^ LODWORD(STACK[0x5318]) ^ __ROR4__(*(v2 + 4 * BYTE1(v277)), 8) ^ __ROR4__(*(v2 + 4 * v290), 16) ^ __ROR4__(*(v2 + 4 * HIBYTE(v278)), 24);
  v296 = STACK[0x5278];
  v297 = (v296 << v283) ^ (v296 >> v211);
  if ((STACK[0x5660] & 0x18) == 0)
  {
    v297 = STACK[0x5278];
  }

  v298 = v293 ^ v297 ^ __ROR4__(*(v2 + 4 * HIBYTE(v287)), 24) ^ __ROR4__(*(v2 + 4 * v278), 16) ^ *(v2 + 4 * BYTE2(v277)) ^ __ROR4__(*(v2 + 4 * BYTE1(v290)), 8);
  v299 = v294 ^ *(v2 + 4 * BYTE2(v278));
  v300 = v295 ^ *(v2 + 4 * BYTE2(v287));
  v301 = STACK[0x57B0];
  v302 = LODWORD(STACK[0x4B90]) ^ LODWORD(STACK[0x5460]) ^ *(STACK[0x57B0] + 4 * BYTE1(v299)) ^ __ROR4__(*(STACK[0x57B0] + 4 * (v295 ^ *(v2 + 4 * BYTE2(v287)))), 8) ^ __ROR4__(*(STACK[0x57B0] + 4 * BYTE2(v291)), 24) ^ __ROR4__(*(STACK[0x57B0] + 4 * HIBYTE(v298)), 16);
  v303 = __ROR4__(STACK[0x52D0], v211);
  if ((STACK[0x5660] & 0x18) == 0)
  {
    v303 = STACK[0x52D0];
  }

  v304 = LODWORD(STACK[0x5000]) ^ LODWORD(STACK[0x5008]) ^ v219 ^ v303 ^ __ROR4__(*(v301 + 4 * HIBYTE(v291)), 16) ^ __ROR4__(*(v301 + 4 * BYTE2(v299)), 24) ^ *(v301 + 4 * BYTE1(v300)) ^ __ROR4__(*(v301 + 4 * v298), 8);
  v305 = v219 ^ LODWORD(STACK[0x5110]) ^ LODWORD(STACK[0x5470]) ^ __ROR4__(*(v301 + 4 * v299), 8) ^ __ROR4__(*(v301 + 4 * BYTE2(v298)), 24) ^ __ROR4__(*(v301 + 4 * HIBYTE(v300)), 16) ^ *(v301 + 4 * BYTE1(v291));
  if ((STACK[0x5660] & 0x18) != 0)
  {
    v302 = (v302 << v211) + (v302 >> v283);
  }

  v306 = __ROR4__(v305, v283);
  if ((STACK[0x5660] & 0x18) != 0)
  {
    v305 = v306;
    v304 = (v304 << v211) ^ (v304 >> v283);
  }

  v308 = v212 & 0x18;
  v307 = (v212 & 0x18) == 0;
  v309 = STACK[0x52E8];
  v310 = (v309 >> v308) + (v309 << v283);
  if (v307)
  {
    v310 = STACK[0x52E8];
  }

  v311 = v219 ^ LODWORD(STACK[0x53C0]) ^ v310 ^ __ROR4__(*(v301 + 4 * HIBYTE(v299)), 16) ^ __ROR4__(*(v301 + 4 * BYTE2(v300)), 24) ^ __ROR4__(*(v301 + 4 * v291), 8) ^ *(v301 + 4 * BYTE1(v298));
  v312 = (v311 << v308) ^ (v311 >> v283);
  if (!v307)
  {
    v311 = v312;
  }

  if (v194)
  {
    v313 = v302;
  }

  else
  {
    v313 = v305;
  }

  if (v194)
  {
    v314 = v305;
  }

  else
  {
    v314 = v311;
  }

  if (v194)
  {
    v315 = v304;
  }

  else
  {
    v315 = v302;
  }

  if ((v194 & 1) == 0)
  {
    v311 = v304;
  }

  v316 = v194 + 2 * LODWORD(STACK[0x54F0]);
  v317 = LODWORD(STACK[0x54B0]) ^ v284 ^ LODWORD(STACK[0x5260]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5670]) ^ v296 ^ LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x5270]) ^ LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5440]) ^ LODWORD(STACK[0x5450]) ^ LODWORD(STACK[0x5290]) ^ LODWORD(STACK[0x52A8]) ^ LODWORD(STACK[0x52A0]) ^ LODWORD(STACK[0x52D8]) ^ LODWORD(STACK[0x52E0]) ^ LODWORD(STACK[0x5298]) ^ LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x52F8]) ^ LODWORD(STACK[0x52F0]) ^ LODWORD(STACK[0x52B8]) ^ LODWORD(STACK[0x52C8]) ^ LODWORD(STACK[0x5500]) ^ LODWORD(STACK[0x5510]) ^ v309 ^ LODWORD(STACK[0x52D0]) ^ LODWORD(STACK[0x5320]) ^ LODWORD(STACK[0x54C0]) ^ LODWORD(STACK[0x52B0]) ^ LODWORD(STACK[0x52C0]) ^ LODWORD(STACK[0x5480]) ^ LODWORD(STACK[0x5490]) ^ LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x5310]);
  v318 = v317 ^ v251;
  v319 = v317 ^ v251 ^ 0xFFF64810;
  v320 = (v316 & 2) == 0;
  if ((v316 & 2) != 0)
  {
    v321 = v315;
  }

  else
  {
    v321 = v314;
  }

  if (v320)
  {
    v314 = v315;
    v322 = v313;
  }

  else
  {
    v322 = v311;
  }

  v323 = v314 + 664341083 * (v319 - v253);
  v324 = -330965061 * (v317 ^ 0xFFF64810);
  LODWORD(STACK[0x54B0]) = BYTE1(v323);
  v325 = v318 ^ LODWORD(STACK[0x4F60]);
  if (v320)
  {
    v313 = v311;
  }

  v326 = v324 ^ LODWORD(STACK[0x4B68]) ^ v322;
  LODWORD(STACK[0x5510]) = v323;
  v327 = v321 + 320208683 * (v251 - v325);
  LODWORD(STACK[0x54F0]) = BYTE2(v323);
  LODWORD(STACK[0x54D0]) = BYTE2(v326);
  LODWORD(STACK[0x5460]) = HIBYTE(v323);
  v328 = v253 ^ v319 ^ v313;
  LODWORD(STACK[0x5500]) = v327;
  LODWORD(STACK[0x54C0]) = BYTE1(v326);
  LODWORD(STACK[0x54A0]) = HIBYTE(v326);
  LODWORD(STACK[0x5440]) = BYTE2(v327);
  LODWORD(STACK[0x5430]) = HIBYTE(v328);
  LODWORD(STACK[0x54E0]) = v328;
  LODWORD(STACK[0x5490]) = HIBYTE(v327);
  LODWORD(STACK[0x5420]) = BYTE1(v328);
  LODWORD(STACK[0x5470]) = v326;
  LODWORD(STACK[0x5450]) = BYTE2(v328);
  LODWORD(STACK[0x5480]) = BYTE1(v327);
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1006C3688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x5338] = __ROR8__((STACK[0x4FC0] + LODWORD(STACK[0x52E8])) & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = LODWORD(STACK[0x53D0]) == 61;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 61;
  return (*(STACK[0x57D8] + 8 * (a8 ^ (27 * v8))))();
}

uint64_t sub_1006C380C()
{
  v2 = v0;
  v3 = v1[12];
  v4 = v1[103];
  v5 = v1[79];
  v6 = 10 * (v0 ^ 0x2D4E);
  v7 = v1[83];
  v8 = v1[28];
  v9 = v1[81];
  v10 = v1[40];
  v11 = v1[111];
  v12 = v1[77];
  v13 = v1[101];
  v14 = (v5 ^ v1[93] ^ 0xE0928C38) + (v6 ^ 0x44E1E80B);
  v15 = v1[89];
  v16 = v1[105];
  v17 = v1[85];
  v18 = v1[99];
  v19 = v1[16];
  LODWORD(STACK[0x5480]) = v14 ^ 0x58A2849 ^ v1[44];
  v20 = v1[20];
  LODWORD(STACK[0x5398]) = v14 ^ 0x8610BD8 ^ v11;
  LODWORD(STACK[0x53E0]) = v14 ^ 0x58A2849 ^ v10;
  v21 = v1[36];
  LODWORD(STACK[0x5420]) = v14 ^ 0x8610BD8 ^ v4;
  LODWORD(STACK[0x5390]) = v14 ^ 0x58A2849 ^ v8;
  v22 = v1[95];
  LODWORD(STACK[0x5680]) = v14 ^ 0x8610BD8 ^ v5;
  LODWORD(STACK[0x5430]) = v14 ^ 0x58A2849 ^ v21;
  v23 = v1[91];
  LODWORD(STACK[0x56E0]) = v14 ^ 0x8610BD8 ^ v7;
  LODWORD(STACK[0x53B0]) = v14 ^ 0x8610BD8 ^ v18;
  LODWORD(STACK[0x5660]) = v14 ^ 0x58A2849 ^ v3;
  LODWORD(STACK[0x53D0]) = v14 ^ 0x8610BD8 ^ v1[87];
  LODWORD(STACK[0x53F0]) = v14 ^ 0x58A2849 ^ v19;
  LODWORD(STACK[0x53D8]) = v14 ^ 0x8610BD8 ^ v1[107];
  LODWORD(STACK[0x5490]) = v14 ^ 0x8610BD8 ^ v23;
  v24 = v1[24];
  LODWORD(STACK[0x5410]) = v14 ^ 0x8610BD8 ^ v22;
  LODWORD(STACK[0x53A8]) = v14 ^ 0x58A2849 ^ v24;
  v25 = v1[109];
  LODWORD(STACK[0x53C8]) = v14 ^ 0x58A2849 ^ v20;
  LODWORD(STACK[0x5440]) = v14 ^ 0xE8F387E0 ^ v16;
  LODWORD(STACK[0x56D0]) = v14 ^ 0xE8F387E0 ^ v12;
  LODWORD(STACK[0x53A0]) = v14 ^ 0xE8F387E0 ^ v9;
  LODWORD(STACK[0x53C0]) = v14 ^ 0xE8F387E0 ^ v25;
  LODWORD(STACK[0x53B8]) = v14 ^ 0xE8F387E0 ^ v13;
  LODWORD(STACK[0x5460]) = v14 ^ 0xE8F387E0 ^ v15;
  LODWORD(STACK[0x5450]) = v14 ^ 0xE8F387E0 ^ v1[97];
  LODWORD(STACK[0x5470]) = v14 ^ 0x29DDF623 ^ v1[38];
  LODWORD(STACK[0x53F8]) = v14 ^ 0x29DDF623 ^ v1[26];
  LODWORD(STACK[0x5400]) = v14 ^ 0x29DDF623 ^ v1[42];
  LODWORD(STACK[0x5408]) = v14 ^ 0x29DDF623 ^ v1[30];
  LODWORD(STACK[0x5670]) = v14 ^ 0x29DDF623 ^ v1[14];
  LODWORD(STACK[0x53E8]) = v14 ^ 0x29DDF623 ^ v1[46];
  LODWORD(STACK[0x56C0]) = v14 ^ 0x29DDF623 ^ v1[18];
  LODWORD(STACK[0x5380]) = v14 ^ 0x29DDF623 ^ v1[34];
  LODWORD(STACK[0x54E0]) = v14 ^ v1[115] ^ 0xFD9C4D46;
  LODWORD(STACK[0x5510]) = v14 ^ v1[50] ^ 0xCE35F755;
  LODWORD(STACK[0x54D0]) = v14 ^ v1[119] ^ 0x1F66FF56;
  LODWORD(STACK[0x5500]) = v14 ^ v1[48] ^ 0xFC839A3;
  LODWORD(STACK[0x5520]) = v14 ^ v1[52] ^ 0x477EF773;
  LODWORD(STACK[0x54C0]) = v14 ^ v1[54] ^ 0x5832A67D;
  LODWORD(STACK[0x54B0]) = v14 ^ v1[113] ^ 0x852337B;
  v26 = v1[117] ^ 0x324F77F9;
  LODWORD(STACK[0x5760]) = v14;
  LODWORD(STACK[0x54F0]) = v14 ^ v26;
  LODWORD(STACK[0x5378]) = STACK[0x5630];
  return (*(STACK[0x57D8] + 8 * v2))(v14 ^ 0xE8F387E0 ^ v17);
}

uint64_t sub_1006C3E14@<X0>(unsigned int a1@<W8>)
{
  *(v1 + 2536) = 0;
  *(v1 + 2532) = -143155721;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1006C3FF0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x7ED8] += 512;
  STACK[0x5710] = v6;
  if (a3)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || a2 == 0 || a5 == 0;
  return (*(STACK[0x57D8] + 8 * ((v10 * ((v5 ^ 0x7EC0) - 22561)) ^ v5)))(1);
}

uint64_t sub_1006C40E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v5 - 16330 + (v4 & 0x96823FCB);
  v7 = a2 + v6 + v2;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((v8 - 0x67659A219E1678C8) | 0xFF57E2C344E3C6AELL) - ((v8 - 0x67659A219E1678C8) | 0xA81D3CBB1C3951) + 0xA81D3CBB1C3951;
  v10 = v9 ^ 0x5013C6B964AF4432;
  v9 ^= 0x94C0E84A6BE37DF6;
  v11 = __ROR8__(v10, 8);
  v12 = (((v11 + v9) & 0xD3E89262E39393A3 ^ 0xC0C09022639000A1) + ((v11 + v9) ^ 0x3F2962448047FB02) - (((v11 + v9) ^ 0x3F2962448047FB02) & 0xD3E89262E39393A3)) ^ 0x9ABD4F34AD53C4DCLL;
  v13 = v12 ^ __ROR8__(v9, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xBD6CE439E669F3DFLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x1A1C4C99A6B3D690;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0x480166234BED7BA6) - 0x5BFF4CEE5A09422DLL) ^ 0xFCEF1FDA6D21DB88;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) | 0x26208A451A7030A8) - (v21 + v20) + 0x6CEFBADD72C7E7ACLL) ^ 0x601A99EF04579AA7;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x8469B2E456434039;
  *(a1 + v6) = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * (v7 & 7u))) ^ *v7;
  return (*(STACK[0x57D8] + 8 * ((18552 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_1006C435C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = (v8 + (v7 << (STACK[0x5580] - 113)));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  v17 = v11[5];
  LODWORD(STACK[0x55D0]) = v11[6];
  v18 = v11[7];
  v19 = v11[8];
  v20 = *(v11 - 1);
  STACK[0x55E0] = v20;
  v21 = *(STACK[0x56F0] + v20) ^ *(v11 - 16);
  v22 = *(v11 - 4);
  v23 = *(STACK[0x5720] + v22) ^ *(v11 - 15);
  v24 = *(v11 - 3);
  v25 = *(v11 - 2);
  v26 = *(v11 - 14) ^ *(STACK[0x55B0] + v24);
  v27 = *(STACK[0x56C0] + v25) ^ a2 ^ *(v11 - 13);
  v28 = *(v11 - 12) ^ v21;
  v29 = *(v11 - 11) ^ v23;
  v30 = *(v11 - 10) ^ v26;
  LOBYTE(v20) = *(v11 - 9) ^ v27;
  v31 = *STACK[0x5620];
  LODWORD(STACK[0x5560]) = v12;
  v32 = *STACK[0x5610];
  *v11 = v21 ^ v12 ^ v31;
  LODWORD(STACK[0x5550]) = v13;
  v33 = *STACK[0x5600];
  v11[1] = v23 ^ v13 ^ v32;
  LODWORD(STACK[0x5540]) = v14;
  v34 = *STACK[0x55F0];
  v11[2] = v26 ^ v14 ^ v33;
  v35 = *(v11 - 8) ^ v28;
  v36 = v31 ^ v10;
  v11[3] = v27 ^ v15 ^ v34;
  v37 = v36 ^ v16 ^ v28;
  v38 = *(v11 - 7) ^ v29;
  v39 = v32 ^ v9;
  v11[4] = v37;
  v40 = v39 ^ v17;
  v41 = STACK[0x55D0];
  v42 = v40 ^ v29;
  v43 = *(v11 - 6) ^ v30;
  v44 = v33 ^ v6;
  v11[5] = v42;
  v45 = v44 ^ v41 ^ v30;
  v46 = *(v11 - 5) ^ v20;
  v47 = v34 ^ a6;
  v11[6] = v45;
  v11[7] = v47 ^ v18 ^ v20;
  v48 = v36 ^ v11[12] ^ v22;
  LOBYTE(v24) = v39 ^ v11[13] ^ v24;
  v49 = v32 ^ v11[9] ^ v38;
  v50 = v44 ^ v11[14] ^ v25;
  LOBYTE(v25) = v11[10];
  v11[8] = v31 ^ v19 ^ v35;
  v51 = v33 ^ v25 ^ v43;
  v52 = v50 ^ v43;
  v53 = v47 ^ v11[15] ^ STACK[0x55E0];
  v54 = v11[11];
  v11[9] = v49;
  v11[10] = v51;
  v11[11] = v34 ^ v54 ^ v46;
  v11[12] = v48 ^ v35;
  v11[13] = v24 ^ v38;
  v11[14] = v52;
  v11[15] = v53 ^ v46;
  return (*(STACK[0x57D8] + 8 * (((4 * (v7 != 26)) | (8 * (v7 != 26))) ^ LODWORD(STACK[0x5570]))))();
}

uint64_t sub_1006C4634@<X0>(int a1@<W8>)
{
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * (((a1 - 20763 + 129 * (a1 ^ 0x1897)) * v4) ^ a1)))();
}

uint64_t sub_1006C467C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v15 = v4;
  v16 = v8 + v4;
  v17 = __ROR8__(v16 & (v5 ^ 0xFFFFFFFFFFFFA7AELL), 8);
  v18 = ((v17 + v11) | 0x551E68F0A717A21ELL) - ((v17 + v11) | v7) + v7;
  v19 = v18 ^ 0xBAA636618323129ALL;
  v18 ^= 0xCAFD1C6EA7B9F980;
  v20 = __ROR8__(v19, 8);
  v21 = (v6 - ((v20 + v18) | v6) + ((v20 + v18) | 0x3E1ED9D6593C7561)) ^ 0x21654B4274D3548ELL;
  v22 = v21 ^ __ROR8__(v18, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a1;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v12;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v10;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v13;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v14;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = v4 + 1;
  v35 = (((((2 * (v33 + v32)) | 0xB896F4981851CE50) - (v33 + v32) - 0x5C4B7A4C0C28E728) ^ 0x351A06E10B50F6ABLL) >> (8 * (v16 & 7u))) ^ *v16;
  if (v3 < v2 != v34 > 0xDC7B64E8)
  {
    v36 = v3 < v2;
  }

  else
  {
    v36 = v34 + v2 < v3;
  }

  *(a2 + v15) = v35;
  return (*(STACK[0x57D8] + 8 * ((14005 * v36) ^ (v5 - 15004))))(v9);
}

uint64_t sub_1006C4838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = STACK[0x57D8];
  STACK[0xD390] = *(STACK[0x57D8] + 8 * v10);
  return (*(v11 + 8 * (((v8 + v9 <= (a6 + v6)) * ((v7 - 1995521941) & 0x76F13FD7 ^ 0x1F1D)) ^ v7)))(a1, a2, a3, &STACK[0x1D270], a4, a5, 0x767CBF12CE87AC7DLL, 0x8469B2E456434039);
}

uint64_t sub_1006C48FC()
{
  v2 = *(STACK[0x57D8] + 8 * (v1 - 6657));
  LODWORD(STACK[0x5150]) = LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x57C0]);
  STACK[0x57C0] = v0;
  return v2();
}

uint64_t sub_1006C49DC()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 524;
  v3 = STACK[0xA0F0];
  v4 = STACK[0x82A8];
  v5 = ((STACK[0x51B8] - 1741590551) & 0x67CE7FFE) + (LODWORD(STACK[0xDEEC]) ^ (((STACK[0x51B8] - 10611799) & 0xDFBF9DFF) + 541978106)) + ((2 * LODWORD(STACK[0xDEEC])) & 0xFED7EFF2) + 1342158786;
  v6 = ((LODWORD(STACK[0x75F8]) ^ 0x1E7705A3) - 511116707) ^ ((LODWORD(STACK[0x75F8]) ^ 0xC43E9C8D) + 1002529651) ^ ((LODWORD(STACK[0x75F8]) ^ 0x85519BA) - 139794874);
  v7 = 289235981 * ((v0 - 240) ^ 0x8782D03F);
  LODWORD(STACK[0x1D4C8]) = v7 + STACK[0x51B8] - 1556;
  STACK[0x1D4D0] = v3;
  LODWORD(STACK[0x1D4CC]) = v6 - v7 - 144233010;
  STACK[0x1D4D8] = v4 + 5;
  LODWORD(STACK[0x1D4C4]) = v5 ^ v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2453)))(v0 - 240);
  return (*(v8 + 8 * ((11354 * (LODWORD(STACK[0x1D4C0]) == -143113071)) ^ v2)))(v9);
}

uint64_t sub_1006C4B6C()
{
  STACK[0xA478] = STACK[0x7BA0];
  STACK[0xC418] = 0;
  LODWORD(STACK[0xC2F4]) = 2101965948;
  STACK[0x5A98] = 0;
  STACK[0xCBC0] = &STACK[0x5A98];
  LODWORD(STACK[0x94E4]) = 1158604098;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006C4BF0(int a1)
{
  v9 = *(v8 + (v7 & (((v5 + v1) & 0xFFFFFFF8 ^ 0x56D159F8) + ((a1 - 11100) ^ 0x9E785C73) + ((((v5 + v1) & 0xFFFFFFF8) << (a1 ^ 0x99)) | 0x525D4C0F)) & 0xFFFFFFFFFFFFFFF8));
  v10 = __ROR8__((v5 + v1) & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (v3 - ((v10 + v9) | v3) + ((v10 + v9) | 0x7DC1AE82E8FC8A05)) ^ 0xF63FEFF907839A23;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xC933E755CB296E9BLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v2 - ((v15 + v14) | v2) + ((v15 + v14) | 0x22F82A13ED136964)) ^ 0x13ADB9FFE1825D31 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__((v2 - ((v15 + v14) | v2) + ((v15 + v14) | 0x22F82A13ED136964)) ^ 0x13ADB9FFE1825D31, 8) + v16) ^ 0x3662C1F52A6EAC3ELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x7D099FFAECC8F2BELL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x249B405C26CF25A6;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x5EA10E5F5A1D8F68) - (v23 + v22) + 0x50AF78D052F1384CLL) ^ 0xF1E29DD5297844D6;
  v25 = ((((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v22, 61))) ^ 0x47BC54C6839C8804) >> (8 * ((v5 + v1) & 7))) ^ *(v5 + v1)) - *(v6 + v1);
  return (*(STACK[0x57D8] + 8 * ((6146 * (((2 * v25) & 0xEFF8A9FA) + (v25 ^ v4) == v4)) | a1)))();
}

uint64_t sub_1006C4E74(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v28.i64[0] = v14 + a1;
  v28.i64[1] = v16 + a3 - 0x61241456EC872252;
  v29.i64[0] = v16 + a3 + v12;
  v29.i64[1] = v16 + a3 + v18;
  v30.i64[0] = v16 + a3 + v21;
  v30.i64[1] = v16 + a3 + v13;
  v31.i64[0] = v16 + a3 - 0x61241456EC87224BLL;
  v31.i64[1] = v16 + a3 + v20;
  v32 = vandq_s8(v31, v24);
  v33 = vandq_s8(v30, v24);
  v34 = vandq_s8(v29, v24);
  v35 = vandq_s8(v28, v24);
  v36 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v40 = vaddq_s64(v39, v23);
  v41 = vaddq_s64(v38, v23);
  v42 = vaddq_s64(v37, v23);
  v43 = vaddq_s64(v36, v23);
  v44 = vsubq_s64(v22, v39);
  v45 = vsubq_s64(v22, v38);
  v46 = vsubq_s64(v22, v37);
  v47 = vandq_s8(vsubq_s64(v22, v36), *&STACK[0x5770]);
  v48 = vandq_s8(v45, *&STACK[0x5770]);
  v49 = vorrq_s8(vandq_s8(v44, *&STACK[0x5770]), vandq_s8(v40, *&STACK[0x5760]));
  v50 = vorrq_s8(v48, vandq_s8(v41, *&STACK[0x5760]));
  v51 = vorrq_s8(v47, vandq_s8(v43, *&STACK[0x5760]));
  v52 = vorrq_s8(vandq_s8(v46, *&STACK[0x5770]), vandq_s8(v42, *&STACK[0x5760]));
  v53 = veorq_s8(v51, *&STACK[0x5750]);
  v54 = veorq_s8(v52, *&STACK[0x5750]);
  v55 = veorq_s8(v52, *&STACK[0x5740]);
  v56 = veorq_s8(v51, *&STACK[0x5740]);
  v57 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56);
  v59 = vdupq_n_s64(0x9D63C3648794ABC0);
  v60 = vaddq_s64(v57, v55);
  v61 = veorq_s8(v58, v59);
  v62 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v63 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v64 = veorq_s8(v60, v59);
  v65 = veorq_s8(v61, v63);
  v66 = veorq_s8(v64, v62);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v66);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v65);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), *&STACK[0x5730]), v68), *&STACK[0x5720]), *&STACK[0x5710]);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), *&STACK[0x5730]), v67), *&STACK[0x5720]), *&STACK[0x5710]);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v73 = veorq_s8(v69, v71);
  v74 = veorq_s8(v70, v72);
  v75 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v77 = vaddq_s64(v75, v74);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, *&STACK[0x5700]), vorrq_s8(v76, v27)), v27), *&STACK[0x56F0]);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, *&STACK[0x5700]), vorrq_s8(v77, v27)), v27), *&STACK[0x56F0]);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vdupq_n_s64(v17);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81), v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v84, v83);
  v89 = veorq_s8(v85, v87);
  v90 = veorq_s8(v88, v86);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v90);
  v93 = veorq_s8(vaddq_s64(v91, v89), v25);
  v94 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v95 = veorq_s8(v92, v25);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v97 = veorq_s8(v93, v94);
  v98 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v97);
  v100 = vaddq_s64(v98, v96);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, *&STACK[0x57C0]), vorrq_s8(v99, a12)), a12), v26);
  v102 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, *&STACK[0x57C0]), vorrq_s8(v100, a12)), a12), v26);
  v105 = vdupq_n_s64(0x38uLL);
  v140.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), veorq_s8(v101, v102)), a10), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v105)));
  v140.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, v103)), a10), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v105)));
  v106 = veorq_s8(v50, *&STACK[0x5750]);
  v107 = veorq_s8(v50, *&STACK[0x5740]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v59);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), *&STACK[0x5730]), v110), *&STACK[0x5720]), *&STACK[0x5710]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, *&STACK[0x5700]), vorrq_s8(v113, v27)), v27), *&STACK[0x56F0]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v83);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v25);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, *&STACK[0x57C0]), vorrq_s8(v120, a12)), a12), v26);
  v140.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL))), a10), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v105)));
  v122 = veorq_s8(v49, *&STACK[0x5750]);
  v123 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v124 = veorq_s8(v49, *&STACK[0x5740]);
  v125 = veorq_s8(vaddq_s64(v123, v124), v59);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x5730]), v127), *&STACK[0x5720]), *&STACK[0x5710]);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v130, *&STACK[0x5700]), vorrq_s8(v130, v27)), v27), *&STACK[0x56F0]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v83);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v25);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v137, *&STACK[0x57C0]), vorrq_s8(v137, a12)), a12), v26);
  v140.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL))), a10), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v105)));
  *(v16 + a2) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v15 + a1)), 0xF0F0F0F0F0F0F0FLL), *&vqtbl4q_s8(v140, v19[26])));
  return (*(STACK[0x57D8] + 8 * ((11428 * (a5 + a6 == 0)) ^ a4)))();
}

uint64_t sub_1006C53FC()
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

uint64_t sub_1006C55A0()
{
  v4 = STACK[0x7468];
  v5 = 1089234077 * ((((v3 - 240) | 0xB08567FA) - (v3 - 240) + ((v3 - 240) & 0x4F7A9800)) ^ 0x50D8BB82);
  LODWORD(STACK[0x1D4E0]) = (v0 ^ 0x63711641) - v5 + 1138202975 * LODWORD(STACK[0xA1D4]);
  STACK[0x1D4C8] = 0;
  STACK[0x1D4D8] = 0;
  STACK[0x1D4E8] = v4;
  LODWORD(STACK[0x1D4C0]) = v5 + v1 + 10490;
  LOBYTE(STACK[0x1D4D4]) = 9 - -99 * ((((v3 + 16) | 0xFA) - (v3 + 16)) ^ 0x82);
  STACK[0x1D4F0] = v2;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 + 25376)))(v3 - 240);
  return (*(v6 + 8 * v1))(v7);
}

uint64_t sub_1006C5674()
{
  v0 = 0;
  v1 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x589E0448));
  v2 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v1 ^ 0x589E044Au) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v1 ^ 0x589E044Au;
  v3 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v2 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v2;
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v3 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = STACK[0x65F8];
  v10 = v8 ^ (1486750794 * STACK[0x65F8]) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720)));
  v11 = vdupq_n_s32(v10);
  v12 = xmmword_1012370F0;
  v13 = xmmword_101237100;
  v14 = xmmword_101237110;
  v15 = xmmword_101237120;
  v16.i64[0] = 0x1000000010;
  v16.i64[1] = 0x1000000010;
  v17.i64[0] = 0x9393939393939393;
  v17.i64[1] = 0x9393939393939393;
  do
  {
    v18 = *(v9 + v0);
    v26.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v18, xmmword_101237140), v11), vmulq_s32(vaddq_s32(v14, v11), vsubq_s32(v14, v11)));
    v26.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v18, xmmword_101237150), v11), vmulq_s32(vaddq_s32(v15, v11), vsubq_s32(v15, v11)));
    v26.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v18, xmmword_101237160), v11), vmulq_s32(vaddq_s32(v13, v11), vsubq_s32(v13, v11)));
    v26.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v18, xmmword_101237170), v11), vmulq_s32(vaddq_s32(v12, v11), vsubq_s32(v12, v11)));
    *(v9 + v0) = vmulq_s8(vqtbl4q_s8(v26, xmmword_101237130), v17);
    v0 += 16;
    v15 = vaddq_s32(v15, v16);
    v14 = vaddq_s32(v14, v16);
    v13 = vaddq_s32(v13, v16);
    v12 = vaddq_s32(v12, v16);
  }

  while (v0 != 16);
  v19 = (v9 + 8);
  v20 = 1;
  for (i = 3; i > 2; --i)
  {
    v22 = 16777619 * ((v10 + v20) ^ v10) % v20;
    v23 = *(v9 + 8 * v22) ^ *v19;
    *v19 = v23;
    v24 = *(v9 + 8 * v22) ^ v23;
    *(v9 + 8 * v22) = v24;
    *v19-- ^= v24;
    --v20;
  }

  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x296C])))();
}

uint64_t sub_1006C5BBC(uint64_t a1)
{
  v6 = STACK[0x57D8];
  STACK[0x99D8] = *(STACK[0x57D8] + 8 * v1);
  STACK[0x6138] = v2;
  LODWORD(STACK[0x5F8C]) = v4;
  *(a1 + 3676) = v5;
  if (v2 == 0x1883660EE8144416)
  {
    v7 = -143155721;
  }

  else
  {
    v7 = -143113071;
  }

  if (*(v2 - 0x1883660EE814440ELL) == 2101965964)
  {
    v8 = v7;
  }

  else
  {
    v8 = -143155721;
  }

  return (*(v6 + 8 * (((v8 == -143113071) * ((v3 ^ 0x4251) + v3 + 1054)) ^ v3)))();
}

uint64_t sub_1006C5D48@<X0>(int a1@<W8>)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xA5DC];
  LODWORD(STACK[0x9094]) = -32197503;
  return (*(STACK[0x57D8] + 8 * (a1 + 2045)))();
}

uint64_t sub_1006C5DCC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = STACK[0xC990];
  STACK[0x6860] = STACK[0xC990];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0x94FBA94D73385981;
  LODWORD(STACK[0xCD80]) = 776665879;
  return (*(STACK[0x57D8] + 8 * a2))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1006C5E84()
{
  v2 = STACK[0x51B8] - 2654;
  LODWORD(STACK[0xDB6C]) = v1;
  LOBYTE(STACK[0xDB73]) = v0;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (1017 * v0))))();
}

uint64_t sub_1006C5F3C()
{
  v4 = &STACK[0x1D280] + v1;
  *v4 = *v2;
  v4[1] = v2[1];
  v4[2] = v2[2];
  v4[3] = v2[3];
  v4[4] = v2[4];
  v4[5] = v2[5];
  v4[6] = v2[6];
  v4[7] = v2[7];
  v4[8] = v2[8];
  v4[9] = v2[9];
  v4[10] = v2[10];
  v4[11] = v2[11];
  v4[12] = v2[12];
  v4[13] = v2[13];
  v4[14] = v2[14];
  v5 = v2[15];
  STACK[0x57B0] = v4;
  v4[15] = v5;
  return (*(STACK[0x57D8] + 8 * ((31018 * (v0 <= ((v0 + v3) & 0xDB0BBC3B) - 1391877290)) ^ (v0 + 1938826633))))();
}

uint64_t sub_1006C6044()
{
  v3 = STACK[0xC2F4];
  v4 = STACK[0x5A98];
  v5 = 1089234077 * ((v2 - 240) ^ 0xE05DDC78);
  LOBYTE(STACK[0x1D4D4]) = 9 - -99 * ((v2 + 16) ^ 0x78);
  STACK[0x1D4E8] = v4;
  LODWORD(STACK[0x1D4E0]) = v0 + 15946 - v5 + 1138202975 * v3 + 1668347329;
  LODWORD(STACK[0x1D4C0]) = v5 + v0 + 10244;
  STACK[0x1D4D8] = &STACK[0x7808];
  STACK[0x1D4F0] = v1;
  STACK[0x1D4C8] = &STACK[0xC050];
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x663A)))(v2 - 240);
  return (*(v6 + 8 * v0))(v7);
}

uint64_t sub_1006C61C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x51B8] - 21884;
  v4 = STACK[0x57D8];
  v5 = STACK[0x10CC];
  STACK[0xA740] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x10CC]));
  return (*(v4 + 8 * ((v3 ^ 0x2D42) + v5)))(a1, a2, a3, &STACK[0x67A7]);
}

uint64_t sub_1006C623C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unint64_t a7, int a8)
{
  LODWORD(STACK[0x54F0]) = v15;
  STACK[0x5620] = a1;
  STACK[0x5600] = v21;
  STACK[0x5178] = v19;
  LODWORD(STACK[0x5218]) = v23;
  STACK[0x5180] = v18;
  STACK[0x5210] = v10;
  STACK[0x5188] = v22;
  STACK[0x5190] = a7;
  STACK[0x5170] = v9;
  v25 = *(STACK[0x55E0] + (LODWORD(STACK[0x5790]) & ((STACK[0x55D0] & 0x58B21290) + (STACK[0x55D0] | 0x58B21291) + 562701961)));
  v26 = (v25 + STACK[0x5580] - ((2 * (v25 + STACK[0x5580])) & 0x560913711E54CA6CLL) + 0x2B0489B88F2A6536) ^ 0x938C886C6EED0665;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x38C8B16AE7056877;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (0xCAEE93C18A7A0CBBLL - ((v29 + v30) | 0xCAEE93C18A7A0CBBLL) + ((v29 + v30) | 0x35116C3E7585F344)) ^ 0xD091DD43F9401615;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) | 0xBF42BAB8C5F4175ALL) - (v33 + v32) - 0x5FA15D5C62FA0BADLL) ^ 0xBE00A007B3AFF2D7;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0x974E6416315F572CLL) + 0x4BA7320B18AFAB96) ^ 0x91C779071B0D140FLL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xFA35E2CDCB3E31C7;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xD2F00CE620E5D3AELL;
  v42 = *(STACK[0x5740] + (STACK[0x54D0] & ((a8 ^ 0xBA5E1E4C) - 1075964908 + (STACK[0x5348] & 0x74BC3C90) + 1722)));
  v43 = (v42 + v24 - ((2 * (v42 + v24)) & 0xFBE6A61DEA957782) + 0x7DF3530EF54ABBC1) ^ 0xC57B52DA148DD892;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x38C8B16AE7056877;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) | 0xB41C6AA1CACCB41ALL) - (v47 + v46) - 0x5A0E3550E5665A0DLL) ^ 0xBF8E842D69A3BF5CLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xE1A1FD5BD155F97ALL;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xDA604B0C03A2BF99;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) & 0x3AAA1933A68A056ALL) - (v54 + v53) + 0x62AAF3662CBAFD4ALL) ^ 0x989F11ABE784CC8DLL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xD2F00CE620E5D3AELL;
  v58 = __ROR8__(v57, 8) + (v57 ^ __ROR8__(v56, 61));
  v59 = STACK[0x5308];
  STACK[0x5200] = v11;
  STACK[0x51F8] = v17;
  v60 = *(STACK[0x5328] + ((((v59 & 0x7711CE30) + (v59 | 0x7711CE37) + 53111523) & v16) & 0xFFFFFFFFFFFFFFF8));
  v61 = (v60 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x38C8B16AE7056877;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  STACK[0x51A0] = v14;
  v66 = (v65 + v64 - ((2 * (v65 + v64)) & 0x1222E07495C04364) - 0x76EE8FC5B51FDE4ELL) ^ 0x6C91C147C625C4E3;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((v68 + v67) & 0x784E48DA187065C4 ^ 0x2806085200200400) + ((v68 + v67) ^ 0xD3F8E0AD7957F1E7) - (((v68 + v67) ^ 0xD3F8E0AD7957F1E7) & 0x784E48DA187065C4)) ^ 0x4A17552CB0726D59;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xDA604B0C03A2BF99;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((2 * (v73 + v72)) & 0x73EB54BE9C1C5266) - (v73 + v72) + 0x460A55A0B1F1D6CCLL) ^ 0xBC3FB76D7ACFE70BLL;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5198]) = STACK[0x5550] & 0xFFFFFFF8;
  v77 = ((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  v78 = ((((2 * v58) & 0x160B8990C8EB7304) - v58 + 0x74FA3B379B8A467DLL) ^ 0x8089300635FA3306) >> STACK[0x5480];
  v79 = ((__ROR8__(v76, 8) + (v76 ^ __ROR8__(v75, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x54B0];
  LODWORD(STACK[0x5230]) = (((v77 ^ LODWORD(STACK[0x57C0]) ^ 0x17) + 104) ^ ((v77 ^ LODWORD(STACK[0x57C0]) ^ 0x21) + 82) ^ ((v77 ^ LODWORD(STACK[0x57C0]) ^ 0x36) + 71)) - 108;
  LODWORD(STACK[0x4F70]) = (((v78 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFF98) - 78) ^ ((v78 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFDF) - 9) ^ ((v78 ^ LODWORD(STACK[0x54A0]) ^ 0x47) + 111)) - 23;
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ v79;
  v80 = *(STACK[0x5370] + (STACK[0x52B0] & ((((STACK[0x5380] | 0x5577EF75) - 1433923446 + (STACK[0x5380] | 0xAA88108A) + 1) & 0xFFFFFFF8) - 810276720)));
  v81 = __ROR8__((v80 + STACK[0x5360]) ^ 0xB88801D4E1C76353, 8);
  v82 = (v80 + STACK[0x5360]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v80, 61);
  v83 = (v81 + v82) ^ 0x38C8B16AE7056877;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xE580B17D8CC5E551;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((v87 + v86) ^ 0xC47E31C0AF3C0BF8) - ((2 * ((v87 + v86) ^ 0xC47E31C0AF3C0BF8)) & 0xBD3375FA9EC77500) - 0x21664502B09C4580) ^ 0xFB467666310A4802;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xDA604B0C03A2BF99;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0xFA35E2CDCB3E31C7;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xD2F00CE620E5D3AELL;
  v95 = (__ROR8__(v94, 8) + (v94 ^ __ROR8__(v93, 61))) ^ 0xF4730B31AE70757BLL;
  LODWORD(v93) = a5 + 19082;
  LODWORD(STACK[0x5208]) = 2 * v13;
  STACK[0x5220] = v13;
  LODWORD(v81) = (v13 ^ 0x7005CF4B) + 171338191 + ((2 * v13) & 0xE00B9E90);
  v96 = STACK[0x52A8];
  STACK[0x5260] = v12;
  v97 = *(v12 + (v96 & v81 & (((a5 + 30594) ^ 0x12E5) - 25973)));
  v98 = (((2 * (v97 + STACK[0x5338])) | 0x724C3E4545023BCLL) - (v97 + STACK[0x5338]) + 0x7C6D9E0DD5D7EE22) ^ 0x3B1A6026CBEF728DLL;
  v99 = __ROR8__(v98, 8);
  v100 = v98 ^ __ROR8__(v97, 61);
  v101 = (((v99 + v100) ^ 0xD432E0A5DDC9DB56) - ((2 * ((v99 + v100) ^ 0xD432E0A5DDC9DB56)) & 0x5C50CD5B907657FALL) + 0x2E2866ADC83B2BFDLL) ^ 0xC2D23762F2F798DCLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0xE580B17D8CC5E551;
  v104 = __ROR8__(v103, 8);
  v105 = v103 ^ __ROR8__(v102, 61);
  v106 = (((2 * (v104 + v105)) | 0xF506F1BB5F1C3108) - (v104 + v105) - 0x7A8378DDAF8E1884) ^ 0x9B2285867EDBE1FELL;
  v107 = __ROR8__(v106, 8);
  v108 = v106 ^ __ROR8__(v105, 61);
  v109 = (((v107 + v108) | 0x9E5D9B9D76697840) - ((v107 + v108) | 0x61A26462899687BFLL) + 0x61A26462899687BFLL) ^ 0x443DD09175CBC7D9;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0xFA35E2CDCB3E31C7;
  v112 = __ROR8__(v111, 8);
  v113 = v111 ^ __ROR8__(v110, 61);
  v114 = (((2 * (v112 + v113)) | 0x9E88EE6C04F61586) - (v112 + v113) - 0x4F447736027B0AC3) ^ 0x9DB47BD0229ED96DLL;
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ (v95 >> STACK[0x5390]);
  v115 = v8 + LODWORD(STACK[0x5540]);
  v116 = *v20;
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ (((__ROR8__(v114, 8) + (v114 ^ __ROR8__(v113, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  STACK[0x5258] = v116;
  STACK[0x5250] = v115 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5540]) = LODWORD(STACK[0x5008]) + 7;
  LODWORD(STACK[0x5378]) = 169;
  v117 = *(STACK[0x57D8] + 8 * (v93 ^ (14 * (a6 != 7))));
  LODWORD(STACK[0x4F68]) = 11;
  return v117();
}

uint64_t sub_1006C7050@<X0>(int a1@<W1>, int a2@<W8>)
{
  v6 = *(STACK[0x57C0] + (4843 * v2 + 8698028) % 0x16B8u);
  v7 = (((v6 ^ 0x28D9DB45) + ((a2 + 11985) ^ 0xD7266450)) ^ ((v6 ^ 0x91E6C613) + 1847146989) ^ ((v6 ^ 0xB93F1D91) + 1187045999)) * a1 + 61336034;
  v8 = *(v3 + 4 * (v7 - (((v7 * v5) >> 32) >> 12) * v4));
  v9 = *(STACK[0x57C0] + 4843 * (BYTE1(v8) ^ 0xB6) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE1(v8) ^ 0xB6u) + 6213569)) >> 32) >> 4));
  v10 = 32 * *(STACK[0x57C0] + 4843 * (BYTE2(v8) ^ 0x4F) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE2(v8) ^ 0x4Fu) + 6213569)) >> 32) >> 4));
  HIDWORD(v11) = (((v10 ^ 0xC63FE513) & ((*(STACK[0x57C0] + (4843 * (((HIBYTE(v8) ^ 0x74264DF7) + 1429963902) ^ ((HIBYTE(v8) ^ 0xAEE69A38) - 1879354445) ^ ((HIBYTE(v8) ^ 0xDAC0D7A7) - 69394898)) - 2116778400) % 0x16B8) << 13) ^ 0xC63D9DD3) | v10 & 0x22222222) ^ 0xC0057DF3 | (((v9 << 29) ^ 0xAA4AD277) & ((v9 >> 3) ^ 0xFF5EDA67) | (v9 >> 3) & 8) ^ 0x400AD27F) ^ 0xE006B5BC;
  LODWORD(v11) = HIDWORD(v11);
  *(v3 + 4 * (6157 * v2 + 9469466 - ((((6157 * v2 + 9469466) * v5) >> 32) >> 12) * v4)) = ((*(STACK[0x57C0] + (4843 * (((v8 ^ 0xC2D76DA7) + 161247904) ^ ((v8 ^ 0x9039F20B) + 1534258484) ^ ((v8 ^ 0x52EE9F26) - 1717207009)) + 439230576) % 0x16B8) ^ 0x474652B6) & ~((v11 >> 29) << 8) | ((v11 >> 29) << 8) & 0xB8B9AD00) ^ 0x1AA403FB;
  return (*(STACK[0x57D8] + 8 * ((19908 * (v2 == 255)) ^ a2)))();
}

uint64_t sub_1006C737C()
{
  v1 = STACK[0x51B8] - 1139;
  v2 = LODWORD(STACK[0x9424]) != 0;
  STACK[0x8CC0] = STACK[0x7DB0] + 16;
  STACK[0xBA00] = v0;
  return (*(STACK[0x57D8] + 8 * ((2030 * v2) ^ v1)))();
}

uint64_t sub_1006C73E0()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] + 1093189414;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xC628]);
  return (*(v2 + 8 * ((4590 * (v1 < 0x1EB8B45C)) ^ (v0 - 18687))))(v3);
}

uint64_t sub_1006C7444()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((32 * v0) ^ 0x25B5) + v0)))();
}

uint64_t sub_1006C7520()
{
  v1 = STACK[0x7ED8];
  STACK[0x6B98] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v1 - 12929 + ((v0 + 853728944) & 0xCD1D365F);
  v2 = STACK[0x7CC8];
  STACK[0x5968] = STACK[0x7CC8];
  STACK[0xAE40] = STACK[0xBA18];
  LOWORD(STACK[0x7EF6]) = -3415;
  STACK[0xC8C0] = v2;
  LODWORD(STACK[0x9F6C]) = STACK[0xBD30];
  STACK[0xA398] = &STACK[0x7EF6];
  LODWORD(STACK[0xA7C0]) = 1204396793;
  return (*(STACK[0x57D8] + 8 * v0))(88);
}

uint64_t sub_1006C7758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = a6 - 2037107752 < v7;
  if (v7 < 0x93B7C756 != (a6 - 2037107752) < 0x93B7C756)
  {
    v8 = v7 < 0x93B7C756;
  }

  return (*(STACK[0x57D8] + 8 * ((98 * !v8) ^ v6)))();
}

uint64_t sub_1006C9814()
{
  STACK[0x9EC0] = &STACK[0x585C];
  LODWORD(STACK[0x9E1C]) = 1502521093;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_1006C9880()
{
  v1 = STACK[0x6860];
  v2 = *(STACK[0x6860] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDAA8]) = v2 + 37;
  v3 = *(v1 - 0x1883660EE814440ELL) + 744836154;
  v4 = ((2 * v0) ^ 0x2C65A377) + v2;
  v5 = v4 < 0xA9AEC0B6;
  v6 = v3 < v4;
  if (v5 != v3 < 0xA9AEC0B6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = (STACK[0xC2E8] == 0) | v7;
  if (v8)
  {
    v9 = -143155721;
  }

  else
  {
    v9 = -143113071;
  }

  LODWORD(STACK[0xDAAC]) = v9;
  return (*(STACK[0x57D8] + 8 * (((2 * ((v8 & 1) == 0)) & 0xF7 | (8 * ((v8 & 1) == 0))) ^ v0)))();
}

uint64_t sub_1006C9C30()
{
  v1 = (((v0 ^ 0xF5267D37) + 477546141) ^ ((v0 ^ 0xA43863BF) + 1298716693) ^ ((v0 ^ 0x95ADDA48) + 2096980452)) - 1346249744;
  v2 = (((LODWORD(STACK[0xCE6C]) ^ 0x2A83F01E) - 713289758) ^ ((LODWORD(STACK[0xCE6C]) ^ 0xF170AA61) + 244274591) ^ (((STACK[0x51B8] + 166691477) ^ LODWORD(STACK[0xCE6C])) - 166714091)) - 1346249749;
  v3 = (v1 < 0xDDA55B5C) ^ (v2 < 0xDDA55B5C);
  v4 = v1 > v2;
  if (v3)
  {
    v4 = v1 < 0xDDA55B5C;
  }

  return (*(STACK[0x57D8] + 8 * ((93 * !v4) ^ (STACK[0x51B8] - 3769))))();
}

uint64_t sub_1006C9DF4()
{
  v0 = 3 * LODWORD(STACK[0x2A78]);
  v1 = STACK[0x57D8];
  STACK[0xBE60] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2A74]));
  return (*(v1 + 8 * (LODWORD(STACK[0x2A70]) ^ v0)))();
}

uint64_t sub_1006C9EA4()
{
  v7 = v3 - 1;
  v8 = STACK[0x57B0] + v7;
  v9 = *v0 & 0xFFFFFFFFFFFFFFF8;
  v10 = STACK[0x57C0] + v7;
  v11 = *(*v6 + (((v8 & 0xFFFFFFF8 ^ (13 * (v4 ^ 0x28C2) - 752913781)) + ((2 * (v8 & 0xFFFFFFF8)) | 0x59C09E17) - 856540532) & v9));
  v12 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = __ROR8__((v12 + v11 - ((2 * (v12 + v11)) & 0xDD935346725130ELL) - 0x79136565CC6D7679) ^ 0x72FACBD3ACCCB5E0, 8);
  v14 = (v12 + v11 - ((2 * (v12 + v11)) & 0xDD935346725130ELL) - 0x79136565CC6D7679) ^ 0x72FACBD3ACCCB5E0 ^ __ROR8__(v11, 61);
  v15 = (((2 * ((v13 + v14) ^ 0x90336E584B898AB4)) | 0xEE9DC2C707BFA7B0) - ((v13 + v14) ^ 0x90336E584B898AB4) + 0x8B11E9C7C202C28) ^ 0x724FCDD5F4A63325;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x2275D4C73835399BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xE5AF1AB32EBD3CDDLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x65763C8D407263F4) + 0x32BB1E46A03931FALL) ^ 0xF566D7B06C7C86DBLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x3AE73D79EF5B6D90) - (v24 + v23) - 0x1D739EBCF7ADB6C8) ^ 0xB555BE19AE7F6CB0;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = *(*v6 + (((v10 & 0xD355DF20 | 0x2CAA20D9) - 1831847764 + (v10 & 0x2CAA20D8 | 0xD355DF26) + 1) & v9));
  v29 = (v28 + __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = ((v27 + v26) & 0x21584AF899787729 ^ 0x40007811481601) + ((v27 + v26) ^ 0x299AFE83CA3769BALL) - (((v27 + v26) ^ 0x299AFE83CA3769BALL) & 0x21584AF899787729);
  v32 = (__ROR8__(v29, 8) + v30) ^ 0x65F254DD188DB4FCLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) & 0xB12655B240B9624) - (v34 + v33) - 0x58932AD9205CB13) ^ 0x95868BC40CE32660;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__(v31 ^ 0x574F5845F0D71488, 8) + (v31 ^ 0x574F5845F0D71488 ^ __ROR8__(v26, 61));
  v39 = (((2 * (v37 + v36)) | 0x7CD97C88347DA1D8) - (v37 + v36) - 0x3E6CBE441A3ED0ECLL) ^ 0x9FDE2381CD48C3C7;
  v40 = v39 ^ __ROR8__(v36, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xEF042041F5E548ECLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xD8C7B31FCA19D9DELL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x5455012E8AB1C38FLL;
  v46 = __ROR8__(v44, 61);
  v47 = (v10 - *v1) & 0xFFFFFFFFFFFFFFF0;
  LOBYTE(STACK[0xFD2B]) = ((v38 ^ 0xC1C3C8D2A4C54828) >> (8 * (v8 & 7u))) ^ (((__ROR8__(v45, 8) + (v45 ^ v46)) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v10 & 7u))) ^ *v8;
  v48 = (*(*v2 + 32 * *(v47 + *v5 + 8) + 16))();
  return (*(STACK[0x57D8] + 8 * ((29895 * (v7 == 0)) ^ v4)))(v48);
}

uint64_t sub_1006CA77C(int a1)
{
  LODWORD(STACK[0x53B0]) = v1;
  LODWORD(STACK[0x4C68]) = a1;
  STACK[0xD6A0] = 0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 + 27166)))(1032);
  STACK[0xD6A0] = v4;
  v5 = (*(v3 + 8 * (v2 + 27166)))(1032);
  STACK[0xD678] = v5;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(v3 + 8 * ((v7 * ((v2 + 1444) ^ 0x5FB ^ ((v2 + 2107) | 0x45E5))) ^ v2)))();
}

uint64_t sub_1006CA8B8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1D4C0] = a1;
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723133771) ^ (1917435887 * ((((v3 - 240) | 0xD84D90AD) - (v3 - 240) + ((v3 - 240) & 0x27B26F50)) ^ 0x3EF6CBAB));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 + 9178)))(v3 - 240);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_1006CAA50@<X0>(int a1@<W8>)
{
  *STACK[0xC930] = 0;
  *(STACK[0xBE10] - 0x231B86FBA50D8E02) = -769884012;
  *STACK[0x5C38] = 0;
  return (*(STACK[0x57D8] + 8 * (((STACK[0x7FD0] == 0) * ((a1 + 1990888105) & 0x895517BF ^ 0x1535)) ^ a1)))();
}

uint64_t sub_1006CAB2C(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 54;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1006CAB84()
{
  v3 = (((10181 * (v1 ^ 0x6194) - 1866) | 0x1016) ^ 0xA6060988) + v2;
  v4 = ((v0 + 814563254) < 0xAB1F9405) ^ (v3 < 0xAB1F9405);
  v5 = v0 + 814563254 > v3;
  if (v4)
  {
    v5 = (v0 + 814563254) < 0xAB1F9405;
  }

  return (*(STACK[0x57D8] + 8 * ((39 * v5) ^ v1)))(4294924618);
}

uint64_t sub_1006CAD14()
{
  v6 = v0 * v5;
  *(v2 + 4 * (v6 + 1125711601 - ((((v6 + 1125711601) * v4) >> 32) >> 12) * v3)) = *(v2 + 4 * ((((v1 + 1091316374) | 0x9600AC98) ^ 0x95E43379) + v6 - (((((((v1 + 1091316374) | 0x9600AC98) ^ 0x95E43379) + v6) * v4) >> 32) >> 12) * v3));
  return (*(STACK[0x57D8] + 8 * ((4747 * (v0 == 474170253)) ^ v1)))();
}

uint64_t sub_1006CAEB4()
{
  v3 = (v0 ^ 0x6004) + v1 + v2 - 1464495901;
  v4 = ((2 * v0) ^ 0xADCF5BC4) + v1 > v3;
  if (v1 > 0x5230D49F != v3 < 0xADCF2B60)
  {
    v4 = v1 > 0x5230D49F;
  }

  return (*(STACK[0x57D8] + 8 * ((43 * !v4) ^ v0)))(4294924618);
}

uint64_t sub_1006CB024()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x77C8]);
  return (*(v0 + 48592))(v1);
}

uint64_t sub_1006CB138@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((2 * ((v2 - 240) & 0xC9DE4F0) - (v2 - 240) - 211674353) ^ 0x940F08B));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9199)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 10864)))(v4);
}

uint64_t sub_1006CB1C4()
{
  v1 = *(STACK[0xB6B8] + 24);
  STACK[0x74A8] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 != 0) * (((v0 + 1976527192) & 0x8A304770) - 1637)) ^ v0)))();
}

uint64_t sub_1006CB224()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 981) | 0x6480) ^ 0x6676) + v0)))(4427);
}

uint64_t sub_1006CB2F4()
{
  v2 = LODWORD(STACK[0x6CA4]);
  v3 = STACK[0x2C44];
  v4 = 1534937323 * ((~((v1 - 240) | 0x1500BE637E563085) + ((v1 - 240) & 0x1500BE637E563085)) ^ 0x2787C95E4747343DLL);
  *(v0 + 592) = LODWORD(STACK[0xB81C]) ^ v4;
  *(v0 + 624) = (v3 | 3) + v4;
  *(v0 + 608) = v4;
  *(v0 + 600) = LODWORD(STACK[0x2C40]) - v4;
  *(v0 + 616) = v2 + v4;
  v5 = STACK[0x51B8];
  *(v0 + 604) = v4 + 1451493860 + STACK[0x51B8];
  *(v0 + 612) = v3 ^ v4;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v5 ^ 0x2462)))(v1 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1006CB400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v23 = a2 - 1;
  v24 = STACK[0x57C0] + v23;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 + v19) | v17) - ((v25 + v19) | a1) + a1;
  v27 = v26 ^ v16;
  v28 = v26 ^ v5;
  v29 = (__ROR8__(v27, 8) + v28) ^ v18;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v13;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (v15 - ((v32 + v33) | v15) + ((v32 + v33) | v7)) ^ a4;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) & 0xB13277D0BCA2A1A8) - (v36 + v35) + v8) ^ v9;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a5;
  v40 = (v10 - (v39 | v10) + (v39 | v6)) ^ v14;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v21;
  *(v22 + v23 + v11) = (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ v20) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(STACK[0x57D8] + 8 * (((v23 != 0) * a3) ^ v12)))();
}

uint64_t sub_1006CB510()
{
  *(v0 + v1) = v3;
  *(v0 - 0x308E083E0C524CBELL) = v3;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1006CB540()
{
  if (STACK[0x94C8])
  {
    v2 = STACK[0x9570] == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || v1 != -143113071;
  return (*(STACK[0x57D8] + 8 * (((((v0 + 127) ^ v4) & 1) * (((v0 + 20768036) & 0xFEC2FF97) - 15127)) ^ (v0 + 6308))))();
}

uint64_t sub_1006CB5E8()
{
  LODWORD(STACK[0xC84C]) = LODWORD(STACK[0xC7DC]) + v0 + (STACK[0x1C88] & 0xC617DD7 ^ 0x8455488C);
  v1 = STACK[0x57D8];
  v2 = STACK[0x1C74];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1C74]));
  return (*(v1 + 8 * (v2 ^ 0x1334)))();
}

uint64_t sub_1006CB6E0(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = 3855;
  a3.n128_u8[2] = 15;
  a3.n128_u8[3] = 15;
  a3.n128_u8[4] = 15;
  a3.n128_u8[5] = 15;
  a3.n128_u8[6] = 15;
  a3.n128_u8[7] = 15;
  a4.n128_u16[0] = 7710;
  a4.n128_u8[2] = 30;
  a4.n128_u8[3] = 30;
  a4.n128_u8[4] = 30;
  a4.n128_u8[5] = 30;
  a4.n128_u8[6] = 30;
  a4.n128_u8[7] = 30;
  return (*(STACK[0x57D8] + 8 * v4))(a1, a2, a3, a4);
}

void *sub_1006CB7D0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * ((v0 - 6584) ^ 0x7577)))(STACK[0x8328], 0, 81);
  return (*(v1 + 8 * (v0 - 13286 + ((v0 + 836154746) & 0xCE297FF7))))(&STACK[0x775C], v2);
}

uint64_t sub_1006CB898()
{
  v0 = STACK[0x1CE0];
  v1 = STACK[0x57D8];
  v2 = 3769 * (LODWORD(STACK[0x1CE0]) ^ 0xA1F);
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1CE0]));
  return (*(v1 + 8 * ((v2 - 15592) ^ v0)))();
}

uint64_t sub_1006CB8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  LODWORD(STACK[0xE8D0]) = a6;
  v6 = a6 == -143113071;
  LOBYTE(STACK[0xE8D7]) = v6;
  return (*(STACK[0x57D8] + 8 * ((v6 * (STACK[0x2280] + 7314)) ^ LODWORD(STACK[0x1D18]))))(a1, a2, a3, a4, a5, LODWORD(STACK[0x36F0]), 13115, 1065131826);
}

uint64_t sub_1006CB93C()
{
  v1 = *(STACK[0x51A0] + ((v0 - 22463) & (STACK[0x5138] + 2050767130) & LODWORD(STACK[0x5198])));
  STACK[0x5450] = __ROR8__(v1, 61);
  STACK[0x5440] = v1 + STACK[0x5140];
  LODWORD(v1) = LODWORD(STACK[0x53D0]) != (v0 ^ 0x5787);
  v2 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v3 = *v2;
  LODWORD(STACK[0x5148]) = 2 * (v2 & 0xFFFFFFF8);
  STACK[0x5150] = v2 & 0xFFFFFFFFFFFFFFF8;
  STACK[0x5158] = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5160] = 8 * (v2 & 7);
  LODWORD(STACK[0x5168]) = v3 ^ 0xB;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 48;
  return (*(STACK[0x57D8] + 8 * ((127 * v1) ^ v0)))();
}

uint64_t sub_1006CBA64()
{
  v0 = STACK[0x57D8];
  STACK[0x6C78] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x17F8]));
  return (*(v0 + 8 * SLODWORD(STACK[0x17F4])))();
}

uint64_t sub_1006CBB5C@<X0>(int a1@<W2>, uint64_t a2@<X3>, void *a3@<X4>, _DWORD *a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v11 = a6 + (v8 + v7);
  v12 = *(*a3 + ((*a4 & ((v11 & 0xFFFFFFF8) + a1)) & 0xFFFFFFFFFFFFFFF8));
  v13 = (__ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8) + v12) ^ v10;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v12, 61);
  v16 = (3 * (v9 ^ 0xC16u)) ^ 0x153242EE3CF0321FLL ^ (v14 + v15);
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ a2;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x1480F1764D67D570) - (v20 + v19) + 0x75BF8744D94C1548) ^ 0x6FEF6208080ED665;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a5;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xA82620A559D2DA78;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x5F8DEC3EA3980A1BLL;
  v28 = __ROR8__(v27, 8);
  v29 = __ROR8__(v26, 61);
  *v11 = *(v6 + v8) ^ (((((2 * (v28 + (v27 ^ v29))) & 0x5CED02616CCB0C28) - (v28 + (v27 ^ v29)) + 0x51897ECF499A79EBLL) ^ 0x904AB61DED5F31C3) >> (8 * (v11 & 7u))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * (v9 | (8 * (v8 == 15)))))();
}

uint64_t sub_1006CBCF0()
{
  v3 = STACK[0xA238];
  v4 = 1534937323 * ((v2 - 240) ^ 0xCD7888C2C6EEFB47);
  LODWORD(STACK[0x1D4D4]) = (v1 + v0 - 558846647) ^ v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v1 + 1451493860;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4E0]) = v1 + v0 - 558849997 + v4 + 3394;
  STACK[0x1D4C0] = v3 ^ v4;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4C8]) = ((v1 + v0) ^ 0xDEB0A033) - v4;
  v5 = v1 + 9182;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v2 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1006CBDCC()
{
  v2 = STACK[0x8070];
  v3 = ((v0 + 68) ^ 0x4Au ^ *(STACK[0x8070] + 1548)) << 8;
  v4 = (*(STACK[0x8070] + 9141) ^ 0xB7) << 16;
  v5 = *(STACK[0x8070] + 10327);
  v6 = ((v2[362] << 24) ^ 0xB7000000 | ((v2[955] ^ 0xB7) << 16) | ((v2[12699] ^ 0xB7u) << 32)) + (((v2[2141] ^ 0x1E9B13116A4B596) & ~v3 | v3 & 0x4A00) ^ 0x1E9B13116A4B521) + ((v2[12106] ^ 0xB7u) << 40);
  v7 = (v6 + ((((v2[10920] ^ 0xB7u) << 56) | (v2[11513] << 48)) ^ 0xB7000000000000)) ^ (v6 << 23);
  v8 = ((v2[7362] << 40) | ((v2[7955] ^ 0xB7u) << 32) | ((v2[6769] ^ 0xB7u) << 48) | (v2[6176] << 56)) ^ 0xB700B70000000000 | ((((v5 ^ 0xF2EFE954FCFB0102) & (v4 ^ 0xFBEFE956FDFF99FFLL) | v4 & 0x40000) ^ 0xF2EFE954FCFB01B5) + (((v2[9734] ^ 0xB7) << 8) | (v2[8548] << 24))) ^ 0xB7000000;
  v9 = v7 ^ (v7 >> 17) ^ v8 ^ (v8 >> 26);
  LOBYTE(v5) = (((v5 ^ 0x30) - 48) ^ ((v5 ^ v1) + 47) ^ ((v5 ^ 0x56) - 86)) + (((v9 ^ 0xFC) - 57) ^ ((v9 ^ 0x36) + 13) ^ ((v9 ^ 0x8F) - 74)) - 117;
  v10 = v5 & 0x46 ^ 0x5D;
  v11 = v8 ^ (v8 << 23) ^ ((v8 ^ (v8 << 23)) >> 17) ^ v9 ^ ((v9 ^ 0xF4C29045) >> 26);
  v2[2141] = v5 ^ (2 * ((v5 ^ 0x2C) & (2 * ((v5 ^ 0x2C) & (2 * ((v5 ^ 0x2C) & (2 * ((v5 ^ 0x2C) & (2 * ((v5 ^ 0x2C) & (2 * (v10 ^ v5 & 0x2A)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ 0xF1;
  *(STACK[0x8070] + 1548) = (v11 + (v9 ^ 0x45) - ((2 * (v11 + (v9 ^ 0x45))) & 0x42) - 95) ^ 0x16;
  v12 = v9 ^ 0xF4C29045 ^ ((v9 ^ 0xF4C29045) << 23) ^ ((v9 ^ 0xF4C29045 ^ ((v9 ^ 0xF4C29045) << 23)) >> 17) ^ v11 ^ (v11 >> 26);
  v13 = v11 ^ (v11 << 23) ^ ((v11 ^ (v11 << 23)) >> 17) ^ v12 ^ ((v12 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 955) = ((v12 ^ 0x45) + v11 - ((2 * ((v12 ^ 0x45) + v11)) & 0x42) + 33) ^ 0x96;
  *(STACK[0x8070] + 362) = (v13 + (v12 ^ 0x45) - ((2 * (v13 + (v12 ^ 0x45))) & 0xA2) + 81) ^ 0xE6;
  v14 = ((v12 ^ 0xF4C29045) << 23) ^ v12 ^ ((((v12 ^ 0xF4C29045) << 23) ^ v12 ^ 0xF4C29045) >> 17) ^ v13 ^ (v13 >> 26);
  v15 = v13 ^ (v13 << 23) ^ ((v13 ^ (v13 << 23)) >> 17) ^ v14 ^ (v14 >> 26);
  *(STACK[0x8070] + 12699) = (v14 + v13 - ((2 * (v14 + v13)) & 0xDF) + 111) ^ 0xD8;
  v16 = v14 ^ (v14 << 23) ^ ((v14 ^ (v14 << 23)) >> 17) ^ v15 ^ ((v15 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 12106) = ((v15 ^ 0x45) + v14 - ((2 * ((v15 ^ 0x45) + v14)) & 0xF0) + 120) ^ 0xCF;
  *(STACK[0x8070] + 11513) = ((2 * (v16 + (v15 ^ 0x45))) & 0x90) - (v16 + (v15 ^ 0x45)) - 73;
  v17 = v15 ^ 0xF4C29045 ^ ((v15 ^ 0xF4C29045) << 23) ^ ((v15 ^ 0xF4C29045 ^ ((v15 ^ 0xF4C29045) << 23)) >> 17) ^ v16 ^ (v16 >> 26);
  *(STACK[0x8070] + 10920) = ((v17 ^ 0x45) + v16 - ((2 * ((v17 ^ 0x45) + v16)) & 0xCA) + 101) ^ 0xD2;
  v18 = v16 ^ (v16 << 23) ^ ((v16 ^ (v16 << 23)) >> 17) ^ v17 ^ ((v17 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 10327) = (v18 + (v17 ^ 0x45) - ((2 * (v18 + (v17 ^ 0x45))) & 0xDF) + 111) ^ 0xD8;
  v19 = v17 ^ 0xF4C29045 ^ ((v17 ^ 0xF4C29045) << 23) ^ ((v17 ^ 0xF4C29045 ^ ((v17 ^ 0xF4C29045) << 23)) >> 17) ^ v18 ^ (v18 >> 26);
  v20 = v19 ^ 0xF4C29045;
  v21 = v18 ^ (v18 << 23);
  LOBYTE(v18) = ((v19 ^ 0x45) + v18 - ((2 * ((v19 ^ 0x45) + v18)) & 0x1C) + 14) ^ 0xB9;
  v22 = v21 ^ (v21 >> 17) ^ v19 ^ ((v19 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 9734) = v18;
  v23 = v20 ^ (v20 << 23) ^ ((v20 ^ (v20 << 23)) >> 17) ^ v22 ^ (v22 >> 26);
  v24 = v23 ^ 0xF4C29045;
  *(STACK[0x8070] + 8548) = ((v23 ^ 0x45) + v22 - ((2 * ((v23 ^ 0x45) + v22)) & 0xCC) - 26) ^ 0x51;
  v25 = v22 ^ (v22 << 23) ^ ((v22 ^ (v22 << 23)) >> 17) ^ v23 ^ ((v23 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 9141) = (v22 + v20 - ((2 * (v22 + v20)) & 0x62) - 79) ^ 6;
  *(STACK[0x8070] + 7955) = (v25 + v24 - 2 * ((v25 + v24) & 0x1F) + 31) ^ 0xA8;
  v26 = v24 ^ (v24 << 23) ^ ((v24 ^ (v24 << 23)) >> 17) ^ v25 ^ (v25 >> 26);
  v27 = v26 ^ 0xF4C29045;
  *(STACK[0x8070] + 7362) = ((v26 ^ 0x45) + v25 - ((2 * ((v26 ^ 0x45) + v25)) & 0xD6) + 107) ^ 0xDC;
  v28 = v25 ^ (v25 << 23) ^ ((v25 ^ (v25 << 23)) >> 17) ^ ((v26 ^ 0xF4C29045) >> 26);
  v29 = v28 ^ v26;
  LODWORD(v28) = (v28 ^ ((v27 ^ (v27 << 23)) >> 17) ^ (v29 >> 26)) + v29;
  *(STACK[0x8070] + 6176) = (v28 - ((2 * v28) & 0x99) + 76) ^ 0xFB;
  *(STACK[0x8070] + 6769) = (v29 + v27 - ((2 * (v29 + v27)) & 0xEC) + 118) ^ 0xC1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006CC3A4()
{
  LODWORD(STACK[0xDA50]) = v0;
  LODWORD(STACK[0xDA4C]) = v2;
  if (v1 + 1969529538 < (LODWORD(STACK[0x1DD8]) + 2123163264) != LODWORD(STACK[0x975C]) > 0x81730C46)
  {
    v3 = v1 + 1969529538 < (LODWORD(STACK[0x1DD8]) + 2123163264);
  }

  else
  {
    v3 = v1 + 1969529538 > (LODWORD(STACK[0x975C]) + 2123166649);
  }

  return (*(STACK[0x57D8] + 8 * ((49 * !v3) ^ LODWORD(STACK[0x1A3C]))))();
}

uint64_t sub_1006CC488()
{
  v1 = STACK[0x57D8];
  STACK[0x73A0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 17811) | 0xA23) - 11854) ^ v0)))();
}

uint64_t sub_1006CC4D4(int a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x53C0]) = v5;
  LODWORD(STACK[0x53C8]) = a4;
  LODWORD(STACK[0x53D0]) = a1;
  v8 = STACK[0xDCB0];
  v9 = *(STACK[0xDCB0] + 4 * STACK[0x50D0]);
  v10 = *(STACK[0xDCB0] + 4 * STACK[0x50C8]);
  *(v6 + 2003) = 114;
  v11 = *(v8 + 4 * STACK[0x50C0]);
  v12 = *(v8 + 4 * STACK[0x50B8]);
  v13 = *(v8 + 4 * STACK[0x50A8]);
  v14 = *(v8 + 4 * STACK[0x50B0]);
  *(a2 + 2147) = -11;
  v15 = *(v8 + 4 * STACK[0x50A0]);
  *(v7 + 3687) = -45;
  v16 = *(v8 + 4 * STACK[0x5098]);
  v17 = *(v8 + 4 * STACK[0x5090]);
  v18 = *(v8 + 4 * STACK[0x5068]);
  v19 = *(v8 + 4 * STACK[0x5080]);
  v20 = *(v8 + 4 * STACK[0x5058]);
  v21 = *(v8 + 4 * STACK[0x5070]);
  v22 = *(v8 + 4 * STACK[0x5060]);
  v23 = LODWORD(STACK[0x5050]) ^ 0x6DE89B2 ^ v11 ^ v12 ^ v13 ^ *(v8 + 4 * STACK[0x5088]);
  v24 = LODWORD(STACK[0x5048]) ^ 0x568194BC ^ v9 ^ v14 ^ *(v8 + 4 * STACK[0x5078]);
  *(STACK[0x5760] + 1404) = 109;
  v25 = v24 ^ v20;
  v26 = LODWORD(STACK[0x5040]) ^ 0x8FD112BD ^ v15 ^ v17 ^ v18 ^ v21;
  v27 = (LODWORD(STACK[0x53E0]) + 1688089576) ^ LODWORD(STACK[0x5038]) ^ v10 ^ v16 ^ v19 ^ v22;
  *(v4 + 1367) = -118;
  *(v4 + 85) = -40;
  v28 = v26;
  v29 = *(v8 + 4 * (6419 * BYTE1(v23) + 32923051 - 8768 * (((62700253 * (6419 * BYTE1(v23) + 32923051)) >> 32) >> 7)));
  v30 = *(v8 + 4 * (6419 * HIBYTE(v26) + 19732006 - 8768 * (((62700253 * (6419 * HIBYTE(v26) + 19732006)) >> 32) >> 7)));
  v31 = STACK[0xDCB0];
  v32 = *(v8 + 4 * (6419 * BYTE2(v25) + 18088742 - 8768 * (((62700253 * (6419 * BYTE2(v25) + 18088742)) >> 32) >> 7)));
  v33 = *(v8 + 4 * (6419 * v27 + 24674636 - 8768 * (((62700253 * (6419 * v27 + 24674636)) >> 32) >> 7)));
  v34 = 6419 * v23 + 24674636 - 17536 * (((62700253 * (6419 * v23 + 24674636)) >> 32) >> 8);
  if (v34 >> 6 >= 0x89)
  {
    v34 -= 8768;
  }

  v35 = 6419 * HIBYTE(v23) + 19732006 - 8768 * (((62700253 * (6419 * HIBYTE(v23) + 19732006)) >> 32) >> 7);
  v36 = BYTE1(v27);
  v37 = *(v31 + 4 * v34);
  v38 = BYTE2(v23);
  v39 = *(v31 + 4 * (6419 * HIBYTE(v25) + 19732006 - 8768 * (((62700253 * (6419 * HIBYTE(v25) + 19732006)) >> 32) >> 7)));
  v40 = LODWORD(STACK[0x5030]) ^ v30 ^ v32 ^ v29;
  v41 = *(v31 + 4 * (6419 * BYTE1(v26) + 32923051 - 8768 * (((62700253 * (6419 * BYTE1(v26) + 32923051)) >> 32) >> 7)));
  v42 = LODWORD(STACK[0x5028]) ^ *(STACK[0xDCB0] + 4 * (6419 * HIBYTE(v27) + 19732006 - 8768 * (((62700253 * (6419 * HIBYTE(v27) + 19732006)) >> 32) >> 7))) ^ *(v31 + 4 * (6419 * BYTE2(v26) + 18088742 - 8768 * (((62700253 * (6419 * BYTE2(v26) + 18088742)) >> 32) >> 7))) ^ *(v31 + 4 * (6419 * BYTE1(v25) + 32923051 - 8768 * (((62700253 * (6419 * BYTE1(v25) + 32923051)) >> 32) >> 7)));
  v43 = LODWORD(STACK[0x50D8]) ^ *(v31 + 4 * v35) ^ *(v31 + 4 * (6419 * v25 + 24674636 - 8768 * (((62700253 * (6419 * v25 + 24674636)) >> 32) >> 7))) ^ *(v31 + 4 * (6419 * BYTE2(v27) + 18088742 - 8768 * (((62700253 * (6419 * BYTE2(v27) + 18088742)) >> 32) >> 7)));
  v44 = *(v31 + 4 * (6419 * v38 + 18088742 - 8768 * (((62700253 * (6419 * v38 + 18088742)) >> 32) >> 7)));
  v45 = v40 ^ v33;
  v46 = STACK[0xDCB8];
  v46[5175] = -97;
  v47 = v42 ^ v37;
  v48 = *(v31 + 4 * (6419 * v36 + 32923051 - 8768 * (((62700253 * (6419 * v36 + 32923051)) >> 32) >> 7)));
  v49 = v43 ^ v41;
  v50 = *(v31 + 4 * (6419 * v28 + 24674636 - 8768 * (((62700253 * (6419 * v28 + 24674636)) >> 32) >> 7)));
  v51 = (v47 >> 8) ^ 0x92C4F3;
  v46[5653] = -12;
  v52 = ((v43 ^ v41) >> 24) ^ 0xCA;
  v53 = LODWORD(STACK[0x5020]) ^ v39 ^ v44 ^ v48 ^ v50;
  if ((v45 & 0x10000000) != 0)
  {
    v54 = -16;
  }

  else
  {
    v54 = 16;
  }

  v55 = 6419 * ((v54 + (HIBYTE(v45) ^ 0x85)) ^ 0x10) + 19732006;
  v56 = STACK[0xDCB0];
  v57 = *(STACK[0xDCB0] + 4 * (v55 % 0x2240));
  v58 = 6419 * ((~(v47 >> 23) & 4) + (HIBYTE(v47) ^ 0xC90));
  *STACK[0x5560] = 99;
  v46[1056] = 51;
  v59 = *(v56 + 4 * (6419 * (BYTE2(v53) ^ 0x15) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v53) ^ 0x15u) + 18088742)) >> 32) >> 7)));
  v60 = *(v56 + 4 * (v58 - 8768 * (((31350127 * v58) >> 32) >> 6)));
  v61 = *(v56 + 4 * (6419 * (BYTE2(v45) ^ 0x48) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v45) ^ 0x48u) + 18088742)) >> 32) >> 7)));
  v62 = *(v56 + 4 * (6419 * (BYTE1(v49) ^ 0x9C) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v49) ^ 0x9Cu) + 32923051)) >> 32) >> 7)));
  v63 = *(v56 + 4 * (6419 * (BYTE1(v53) ^ 0xE3) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v53) ^ 0xE3u) + 32923051)) >> 32) >> 7)));
  v64 = *(v56 + 4 * (6419 * (v47 ^ 0x72) + 24674636 - 8768 * (((62700253 * (6419 * (v47 ^ 0x72u) + 24674636)) >> 32) >> 7)));
  *(STACK[0x5770] + 2572) = 47;
  v65 = LODWORD(STACK[0x5018]) ^ v59 ^ v62;
  v66 = *(v56 + 4 * (6419 * (v49 ^ 0x55) + 24674636 - 8768 * (((62700253 * (6419 * (v49 ^ 0x55u) + 24674636)) >> 32) >> 7)));
  v67 = LODWORD(STACK[0x5010]) ^ v61 ^ v63 ^ v60;
  v68 = *(v56 + 4 * (6419 * (BYTE2(v47) ^ 0xC4) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v47) ^ 0xC4u) + 18088742)) >> 32) >> 7)));
  v69 = *(v56 + 4 * (6419 * (BYTE1(v45) ^ 0x3B) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v45) ^ 0x3Bu) + 32923051)) >> 32) >> 7)));
  v70 = v65 ^ v57 ^ v64;
  v71 = LODWORD(STACK[0x5008]) ^ *(v56 + 4 * (6419 * v52 + 19732006 - 8768 * (((62700253 * (6419 * v52 + 19732006)) >> 32) >> 7)));
  v72 = BYTE2(v49) ^ 0x25;
  v73 = STACK[0xDCB8];
  v73[3218] = -124;
  v74 = v67 ^ v66;
  v75 = (((v68 ^ 0xA0214723) + 1608431837) ^ ((v68 ^ 0x818D3FA6) + 2121449562) ^ ((v68 ^ 0x6394F763) - 1670707043)) + (((v71 ^ 0xAC577B53) - 1311294075) ^ ((v71 ^ 0xAE1B6BED) - 1281675973) ^ ((v71 ^ 0x18F4CD2B) + 91524093)) + ((2 * ((v71 ^ 0x6A019B2E) & (v68 ^ 0x42388FE6) ^ v68 & 0x70B946BB)) ^ 0x7F8FF2BB) - 1512782794;
  v76 = 6419 * (HIBYTE(v53) ^ 0xF4) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v53) ^ 0xF4) + 19732006)) >> 32) >> 7);
  v77 = 6419 * (v53 ^ 0x2B) + 24674636;
  v78 = 6419 * v72 + 18088742 - 8768 * (((62700253 * (6419 * v72 + 18088742)) >> 32) >> 7);
  v79 = v75 ^ 0x7BFEFFDF;
  v80 = v77 - 8768 * (((62700253 * v77) >> 32) >> 7);
  v81 = v45 ^ 0xF;
  v82 = STACK[0xDCB0];
  v83 = LODWORD(STACK[0x50E0]) ^ *(STACK[0xDCB0] + 4 * v76);
  v84 = *(STACK[0xDCB0] + 4 * v80);
  v73[2414] = -111;
  v85 = 6419 * ((v51 ^ 0x1409) + ((2 * v51) & 0x12));
  v86 = v84 ^ v69 ^ v75 ^ ((v75 ^ 0x36643E57) - 1555100101);
  v87 = *(v82 + 4 * (v85 - 8768 * (((62700253 * v85) >> 32) >> 7)));
  v88 = ((v75 ^ 0x621845BB) - 147622441) ^ ((v75 ^ 0x45564BA1) - 797082675);
  v89 = v83 ^ *(v82 + 4 * v78);
  v90 = *(v82 + 4 * (6419 * v81 + 24674636 - 8768 * (((62700253 * (6419 * v81 + 24674636)) >> 32) >> 7)));
  *(STACK[0x57C0] + 941) = 49;
  v91 = v86 ^ v88;
  v92 = v89 ^ v90 ^ v87;
  v93 = v92 ^ 0xA917F467;
  v73[3347] = -45;
  v94 = v91 ^ (v79 - 287977549);
  v73[1041] = 119;
  LODWORD(v73) = 6419 * ((((v92 ^ 0xA917F467) >> 16) ^ 0xB02) + (((v92 ^ 0xA917F467) >> 15) & 4));
  v95 = ((v67 ^ v66) >> 24) ^ 0x71;
  v96 = 6419 * ((v67 ^ v66) ^ 0x25) + 24674636 - 8768 * (((62700253 * (6419 * ((v67 ^ v66) ^ 0x25u) + 24674636)) >> 32) >> 7);
  v97 = 6419 * ((v92 ^ 0xF467) >> 8) + 32923051;
  v98 = LODWORD(STACK[0x5000]) ^ *(v82 + 4 * (6419 * (HIBYTE(v70) ^ 0x50) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v70) ^ 0x50) + 19732006)) >> 32) >> 7))) ^ *(v82 + 4 * (v73 - 8768 * (((31350127 * v73) >> 32) >> 6)));
  v99 = 6419 * (HIBYTE(v94) ^ 0x6A) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v94) ^ 0x6A) + 19732006)) >> 32) >> 7);
  *(STACK[0x55F0] + 820) = 23;
  v100 = STACK[0xDCB0];
  v101 = LODWORD(STACK[0x4FF8]) ^ *(v100 + 4 * (6419 * v95 + 19732006 - 8768 * (((62700253 * (6419 * v95 + 19732006)) >> 32) >> 7))) ^ *(v100 + 4 * (v97 - 8768 * (((62700253 * v97) >> 32) >> 7)));
  v102 = 6419 * ((v92 & 0xC0 | (v92 ^ 0xA917F467) & 0x3E | (v92 ^ 0xA917F467) & 1) ^ 0x40) + 24674636;
  v103 = *(STACK[0xDCB0] + 4 * (6419 * (BYTE2(v70) ^ 0xAA) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v70) ^ 0xAAu) + 18088742)) >> 32) >> 7)));
  LODWORD(v82) = v98 ^ *(STACK[0xDCB0] + 4 * v96) ^ *(v82 + 4 * (6419 * (BYTE1(v94) ^ 0xCF) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v94) ^ 0xCFu) + 32923051)) >> 32) >> 7)));
  v104 = *(STACK[0xDCB0] + 4 * (6419 * (v94 ^ 0x92) + 24674636 - 8768 * (((62700253 * (6419 * (v94 ^ 0x92u) + 24674636)) >> 32) >> 7)));
  v105 = STACK[0xDCB8];
  *(v105 + 745) = 76;
  v106 = *(v100 + 4 * (6419 * (BYTE2(v94) ^ 0xD4) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v94) ^ 0xD4u) + 18088742)) >> 32) >> 7)));
  v107 = v101 ^ v103 ^ v104;
  v108 = *(v100 + 4 * (6419 * (BYTE1(v74) ^ 0x82) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v74) ^ 0x82u) + 32923051)) >> 32) >> 7)));
  v109 = LODWORD(STACK[0x4FE8]) ^ *(v100 + 4 * (6419 * HIBYTE(v93) + 19732006 - 8768 * (((62700253 * (6419 * HIBYTE(v93) + 19732006)) >> 32) >> 7)));
  v110 = LODWORD(STACK[0x4FF0]) ^ *(v100 + 4 * (v102 - 8768 * (((62700253 * v102) >> 32) >> 7))) ^ *(v100 + 4 * (6419 * (BYTE1(v70) ^ 8) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v70) ^ 8u) + 32923051)) >> 32) >> 7))) ^ *(v100 + 4 * (6419 * (BYTE2(v74) ^ 0x97) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v74) ^ 0x97u) + 18088742)) >> 32) >> 7))) ^ *(v100 + 4 * v99);
  v111 = (v109 ^ 0xC3F99C9) + 1177391648 - ((2 * (v109 ^ 0xC3F99C9)) & 0x8C5B2440);
  v112 = 6419 * ((((v70 << 12) ^ 0xA2000u) + 15745024) >> 12);
  *(v105 + 2429) = -126;
  v113 = v108 ^ *(v100 + 4 * (v112 - 8768 * (((62700253 * v112) >> 32) >> 7))) ^ v106 ^ (v111 + 1168455229 - 2 * (v111 & 0x45A5363F ^ v109 & 2));
  *(STACK[0x5740] + 4036) = -83;
  v114 = STACK[0xDCB8];
  *(v114 + 2376) = -113;
  v115 = *(v100 + 4 * (6419 * (BYTE3(v82) ^ 0xE5) + 19732006 - 8768 * (((62700253 * (6419 * (BYTE3(v82) ^ 0xE5) + 19732006)) >> 32) >> 7)));
  *(STACK[0x5580] + 1169) = 38;
  LODWORD(v105) = *(v100 + 4 * (6419 * (v107 ^ 0x8C) + 24674636 - 8768 * (((62700253 * (6419 * (v107 ^ 0x8Cu) + 24674636)) >> 32) >> 7)));
  v116 = *(v100 + 4 * (6419 * (HIBYTE(v107) ^ 0x50) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v107) ^ 0x50) + 19732006)) >> 32) >> 7)));
  v117 = *(v100 + 4 * (6419 * (BYTE2(v113) ^ 0x9D) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v113) ^ 0x9Du) + 18088742)) >> 32) >> 7)));
  v118 = *(v100 + 4 * (6419 * (BYTE1(v110) ^ 0x7B) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v110) ^ 0x7Bu) + 32923051)) >> 32) >> 7)));
  v119 = *(v100 + 4 * (6419 * (BYTE1(v113) ^ 0xB9) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v113) ^ 0xB9u) + 32923051)) >> 32) >> 7)));
  v120 = *(v100 + 4 * (6419 * (BYTE2(v82) ^ 3) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v82) ^ 3u) + 18088742)) >> 32) >> 7)));
  *(v114 + 4447) = -42;
  v121 = LODWORD(STACK[0x4FE0]) ^ v115 ^ v105 ^ v117 ^ v118;
  v122 = *(v100 + 4 * (6419 * (HIBYTE(v110) ^ 0xA3) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v110) ^ 0xA3) + 19732006)) >> 32) >> 7)));
  v123 = LODWORD(STACK[0x50E8]) ^ v116 ^ v119;
  v124 = STACK[0xDCB0];
  v125 = v120 ^ *(STACK[0xDCB0] + 4 * (6419 * (v110 ^ 4) + 24674636 - 8768 * (((62700253 * (6419 * (v110 ^ 4u) + 24674636)) >> 32) >> 7)));
  v126 = 6419 * (BYTE2(v110) ^ 0xB7) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v110) ^ 0xB7u) + 18088742)) >> 32) >> 7);
  v127 = v123 ^ v125;
  v128 = STACK[0xDCB8];
  v129 = LODWORD(STACK[0x4FD8]) ^ v122 ^ *(v124 + 4 * (6419 * (BYTE2(v107) ^ 0x56) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v107) ^ 0x56u) + 18088742)) >> 32) >> 7))) ^ *(v124 + 4 * (6419 * (BYTE1(v82) ^ 0xBC) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v82) ^ 0xBCu) + 32923051)) >> 32) >> 7)));
  v130 = BYTE1(v107);
  v131 = v129 ^ *(STACK[0xDCB0] + 4 * (6419 * (v113 ^ 0xDB) + 24674636 - 8768 * (((62700253 * (6419 * (v113 ^ 0xDBu) + 24674636)) >> 32) >> 7)));
  v132 = 6419 * (v130 ^ 0x11) + 32923051;
  v133 = *(STACK[0xDCB0] + 4 * (6419 * (HIBYTE(v113) ^ 7) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v113) ^ 7) + 19732006)) >> 32) >> 7)));
  *(v128 + 6146) = 68;
  LODWORD(v82) = LODWORD(STACK[0x4FD0]) ^ *(v124 + 4 * v126) ^ v133 ^ *(v124 + 4 * (v132 - 8768 * (((62700253 * v132) >> 32) >> 7))) ^ *(v124 + 4 * (6419 * (v82 ^ 0xC6) + 24674636 - 8768 * (((62700253 * (6419 * (v82 ^ 0xC6u) + 24674636)) >> 32) >> 7)));
  *(v128 + 4576) = -114;
  *(STACK[0x5770] + 3649) = 60;
  *(v128 + 1898) = 98;
  LODWORD(v124) = LODWORD(STACK[0x5158]) ^ LODWORD(STACK[0x5160]) ^ LODWORD(STACK[0x5150]) ^ LODWORD(STACK[0x5118]) ^ 0x2CAD63ED ^ *(v124 + 4 * (6419 * (HIBYTE(v121) ^ 0xC6) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v121) ^ 0xC6) + 19732006)) >> 32) >> 7)));
  v134 = v124 - ((2 * v124) & 0x2D838190) + 381796552 - ((2 * (v124 - ((2 * v124) & 0x2D838190) + 381796552)) & 0x9DE6838E);
  v135 = STACK[0xDCB0];
  v136 = *(v135 + 4 * (6419 * (BYTE1(v131) ^ 0xDF) + 32914283 - 8768 * (((62700253 * (6419 * (BYTE1(v131) ^ 0xDFu) + 32914283)) >> 32) >> 7))) ^ *(v135 + 4 * (6419 * (BYTE2(v82) ^ 0xEC) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v82) ^ 0xECu) + 18088742)) >> 32) >> 7)));
  LODWORD(v124) = *(STACK[0xDCB0] + 4 * (6419 * (HIBYTE(v127) ^ 0x37) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v127) ^ 0x37) + 19732006)) >> 32) >> 7)));
  v137 = *(STACK[0xDCB0] + 4 * (6419 * (BYTE2(v121) ^ 0x8D) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v121) ^ 0x8Du) + 18088742)) >> 32) >> 7)));
  v138 = *(STACK[0xDCB0] + 4 * (6419 * (v127 ^ 0xC5) + 24674636 - 8768 * (((62700253 * (6419 * (v127 ^ 0xC5u) + 24674636)) >> 32) >> 7)));
  v139 = STACK[0xDCB8];
  v140 = STACK[0xDCB8] + 4096;
  *(v139 + 5562) = 69;
  LODWORD(v128) = *(v135 + 4 * (6419 * (BYTE1(v82) ^ 0xD9) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v82) ^ 0xD9u) + 32923051)) >> 32) >> 7)));
  *(v139 + 419) = 111;
  LODWORD(v114) = *(v135 + 4 * (6419 * (HIBYTE(v131) ^ 0x9F) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v131) ^ 0x9F) + 19732006)) >> 32) >> 7)));
  LODWORD(v105) = *(v135 + 4 * (6419 * (BYTE2(v127) ^ 0x23) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v127) ^ 0x23u) + 18088742)) >> 32) >> 7)));
  LODWORD(v139) = *(v135 + 4 * (6419 * (v131 ^ 0x49) + 24674636 - 8768 * (((62700253 * (6419 * (v131 ^ 0x49u) + 24674636)) >> 32) >> 7)));
  LODWORD(v135) = *(v135 + 4 * (6419 * (BYTE3(v82) ^ 0xC2) + 19732006 - 8768 * (((62700253 * (6419 * (BYTE3(v82) ^ 0xC2) + 19732006)) >> 32) >> 7)));
  v141 = v136 ^ v138;
  v142 = 6419 * (v82 ^ 2) + 24674636 - 8768 * (((62700253 * (6419 * (v82 ^ 2u) + 24674636)) >> 32) >> 7);
  v143 = 6419 * (v121 ^ 0xB1) + 24674636 - 8768 * (((62700253 * (6419 * (v121 ^ 0xB1u) + 24674636)) >> 32) >> 7);
  v144 = STACK[0xDCB0];
  LODWORD(v105) = v105 ^ *(STACK[0xDCB0] + 4 * (6419 * (BYTE1(v121) ^ 0xEF) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v121) ^ 0xEFu) + 32923051)) >> 32) >> 7)));
  v145 = v141 ^ (v134 + 1324564935);
  v146 = LODWORD(STACK[0x4FC0]) ^ v135 ^ *(v144 + 4 * (6419 * (BYTE1(v127) ^ 0x42) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v127) ^ 0x42u) + 32923051)) >> 32) >> 7))) ^ *(v144 + 4 * (6419 * (BYTE2(v131) ^ 0xC3) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v131) ^ 0xC3u) + 18088742)) >> 32) >> 7)));
  v147 = LODWORD(STACK[0x4FC8]) ^ v114 ^ v105 ^ *(STACK[0xDCB0] + 4 * v142);
  v148 = *(STACK[0xDCB0] + 4 * v143);
  *(v140 + 442) = -66;
  *(v140 + 1777) = 57;
  LODWORD(v140) = v146 ^ v148;
  LODWORD(v124) = LODWORD(STACK[0x50F0]) ^ v124 ^ v137 ^ v128 ^ v139 ^ 0xD1E52CDB;
  v149 = 6419 * (((v146 ^ v148) >> 16) ^ 0x13) + 18088742;
  *(STACK[0x55B0] + 1495) = -7;
  v150 = STACK[0xDCB8];
  *(v150 + 2960) = 90;
  v151 = *(v144 + 4 * (6419 * (HIBYTE(v145) ^ 0xC) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v145) ^ 0xC) + 19732006)) >> 32) >> 7)));
  v152 = *(v144 + 4 * (6419 * BYTE3(v124) + 19732006 - 8768 * (((62700253 * (6419 * BYTE3(v124) + 19732006)) >> 32) >> 7)));
  LODWORD(v128) = *(v144 + 4 * (6419 * (BYTE2(v145) ^ 0xCB) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v145) ^ 0xCBu) + 18088742)) >> 32) >> 7)));
  LODWORD(v144) = LODWORD(STACK[0x4FB8]) ^ *(v144 + 4 * (v149 - 8768 * (((62700253 * v149) >> 32) >> 7))) ^ *(v144 + 4 * (6419 * v124 + 24674636 - 8768 * (((62700253 * (6419 * v124 + 24674636)) >> 32) >> 7))) ^ *(v144 + 4 * (6419 * (BYTE1(v147) ^ 8) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v147) ^ 8u) + 32923051)) >> 32) >> 7)));
  v153 = STACK[0xDCB0];
  LODWORD(v135) = *(STACK[0xDCB0] + 4 * (6419 * (BYTE1(v140) ^ 0x4E) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v140) ^ 0x4Eu) + 32923051)) >> 32) >> 7)));
  v154 = STACK[0x5750];
  *(v154 + 1123) = 121;
  *(STACK[0x5730] + 1715) = 125;
  v155 = *(v153 + 4 * (6419 * (v147 ^ 0x62) + 24674636 - 8768 * (((62700253 * (6419 * (v147 ^ 0x62u) + 24674636)) >> 32) >> 7)));
  *(STACK[0x56D0] + 1753) = 96;
  *(v150 + 5615) = 91;
  *(v150 + 4045) = -93;
  LODWORD(v144) = v144 ^ v151;
  v156 = 6419 * (v140 ^ 0x6D) + 24674636 - 8768 * (((62700253 * (6419 * (v140 ^ 0x6Du) + 24674636)) >> 32) >> 7);
  LODWORD(v139) = *(v153 + 4 * (6419 * (HIBYTE(v147) ^ 0xA4) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v147) ^ 0xA4) + 19732006)) >> 32) >> 7)));
  LODWORD(v150) = *(v153 + 4 * (6419 * (BYTE1(v145) ^ 0xCE) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v145) ^ 0xCEu) + 32923051)) >> 32) >> 7)));
  v157 = *(v153 + 4 * (6419 * BYTE2(v124) + 18088742 - 8768 * (((62700253 * (6419 * BYTE2(v124) + 18088742)) >> 32) >> 7)));
  LODWORD(v140) = *(v153 + 4 * (6419 * (BYTE3(v140) ^ 0x6F) + 19732006 - 8768 * (((62700253 * (6419 * (BYTE3(v140) ^ 0x6F) + 19732006)) >> 32) >> 7)));
  v158 = *(v153 + 4 * v156);
  v159 = *(v153 + 4 * (6419 * (BYTE2(v147) ^ 0xCA) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v147) ^ 0xCAu) + 18088742)) >> 32) >> 7)));
  LODWORD(v124) = *(v153 + 4 * (6419 * BYTE1(v124) + 32923051 - 8768 * (((62700253 * (6419 * BYTE1(v124) + 32923051)) >> 32) >> 7)));
  v160 = *(v153 + 4 * (6419 * (v145 ^ 0x21) + 24674636 - 8768 * (((62700253 * (6419 * (v145 ^ 0x21u) + 24674636)) >> 32) >> 7)));
  LODWORD(v153) = *(v153 + 4 * (6419 * (BYTE3(v144) ^ 0x39) + 19723238 - 8768 * (((62700253 * (6419 * (BYTE3(v144) ^ 0x39) + 19723238)) >> 32) >> 7)));
  *(STACK[0xDCB8] + 4189) = -61;
  LODWORD(v128) = LODWORD(STACK[0x4FB0]) ^ v152 ^ v135 ^ v128;
  v161 = LODWORD(STACK[0x50F8]) ^ v139 ^ v157 ^ v158 ^ v150;
  v162 = LODWORD(STACK[0x4FA8]) ^ v140 ^ v159 ^ v124;
  LODWORD(v140) = v128 ^ v155;
  LODWORD(v139) = v128 ^ ~v155;
  v163 = v162 ^ v160;
  LODWORD(v124) = 6419 * (BYTE2(v163) ^ 0x3F) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v163) ^ 0x3Fu) + 18088742)) >> 32) >> 7);
  LODWORD(v128) = 6419 * ((BYTE1(v161) ^ 0x142B) + ((v161 >> 7) & 0x12));
  LODWORD(v135) = LODWORD(STACK[0x5168]) ^ LODWORD(STACK[0x5148]) ^ LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x5138]) ^ 0x7F1D635B ^ v153;
  v164 = 6419 * (BYTE1(v163) ^ 3) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v163) ^ 3u) + 32923051)) >> 32) >> 7);
  v165 = v135 - ((2 * v135) & 0x4A527AE0);
  LODWORD(v135) = 6419 * (HIBYTE(v163) ^ 0xAE) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v163) ^ 0xAE) + 19732006)) >> 32) >> 7);
  v166 = 6419 * (v163 ^ 0x93) + 24674636 - 8768 * (((62700253 * (6419 * (v163 ^ 0x93u) + 24674636)) >> 32) >> 7);
  v167 = STACK[0xDCB0];
  v168 = 6419 * (BYTE1(v144) ^ 0x89) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v144) ^ 0x89u) + 32923051)) >> 32) >> 7);
  LODWORD(v124) = *(v167 + 4 * (v128 - 8768 * (((62700253 * v128) >> 32) >> 7))) ^ *(v167 + 4 * v124);
  v169 = STACK[0x57C0];
  *(v169 + 1601) = -22;
  LODWORD(v124) = v124 ^ *(v167 + 4 * (6419 * (v140 ^ 0x2B) + 24674636 - 8768 * (((62700253 * (6419 * (v140 ^ 0x2Bu) + 24674636)) >> 32) >> 7))) ^ 0x48722C72 ^ (v165 - 1524023952);
  LODWORD(v128) = LODWORD(STACK[0x4FA0]) ^ *(v167 + 4 * (6419 * BYTE3(v139) + 19732006 - 8768 * (((62700253 * (6419 * BYTE3(v139) + 19732006)) >> 32) >> 7))) ^ *(v167 + 4 * v164) ^ *(v167 + 4 * (6419 * (BYTE2(v144) ^ 0x93) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v144) ^ 0x93u) + 18088742)) >> 32) >> 7)));
  LODWORD(v153) = 6419 * (BYTE1(v140) ^ 0x7F) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v140) ^ 0x7Fu) + 32923051)) >> 32) >> 7);
  v170 = 6419 * (v144 ^ 0xC) + 24674636 - 8768 * (((62700253 * (6419 * (v144 ^ 0xCu) + 24674636)) >> 32) >> 7);
  LODWORD(v144) = LODWORD(STACK[0x4F98]) ^ *(v167 + 4 * (6419 * (HIBYTE(v161) ^ 0x64) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v161) ^ 0x64) + 19732006)) >> 32) >> 7))) ^ *(v167 + 4 * (6419 * (BYTE2(v140) ^ 0xBE) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v140) ^ 0xBEu) + 18088742)) >> 32) >> 7)));
  LODWORD(v140) = v128 ^ *(v167 + 4 * (6419 * (v161 ^ 0xB6) + 24674636 - 8768 * (((62700253 * (6419 * (v161 ^ 0xB6u) + 24674636)) >> 32) >> 7)));
  LODWORD(v144) = v144 ^ *(v167 + 4 * v166) ^ *(v167 + 4 * v168);
  LODWORD(v139) = LODWORD(STACK[0x4F90]) ^ *(v167 + 4 * v135) ^ *(v167 + 4 * v153);
  v171 = *(v167 + 4 * (6419 * (BYTE2(v161) ^ 0xE5) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v161) ^ 0xE5u) + 18088742)) >> 32) >> 7)));
  *(v154 + 99) = -114;
  v172 = v139 ^ v171 ^ *(v167 + 4 * v170);
  v173 = STACK[0xDCB8];
  *(v173 + 4371) = -123;
  *(v173 + 1261) = 59;
  LODWORD(v128) = *(v167 + 4 * (6419 * BYTE3(v124) + 19732006 - 8768 * (((62700253 * (6419 * BYTE3(v124) + 19732006)) >> 32) >> 7)));
  *(v173 + 1185) = -16;
  LODWORD(v153) = *(v167 + 4 * (6419 * (BYTE2(v172) ^ 0x1E) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v172) ^ 0x1Eu) + 18088742)) >> 32) >> 7)));
  v174 = *(v167 + 4 * (6419 * (v140 ^ 0x80) + 24674636 - 8768 * (((62700253 * (6419 * (v140 ^ 0x80u) + 24674636)) >> 32) >> 7)));
  LODWORD(v135) = *(v167 + 4 * (6419 * (BYTE3(v140) ^ 0x54) + 19732006 - 8768 * (((62700253 * (6419 * (BYTE3(v140) ^ 0x54) + 19732006)) >> 32) >> 7)));
  v175 = *(v167 + 4 * (6419 * (BYTE1(v144) ^ 0x98) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v144) ^ 0x98u) + 32923051)) >> 32) >> 7)));
  LODWORD(v150) = *(v167 + 4 * (6419 * BYTE2(v124) + 18088742 - 8768 * (((62700253 * (6419 * BYTE2(v124) + 18088742)) >> 32) >> 7)));
  v176 = *(v167 + 4 * (6419 * (v144 ^ 0x71) + 24674636 - 8768 * (((62700253 * (6419 * (v144 ^ 0x71u) + 24674636)) >> 32) >> 7)));
  LODWORD(v167) = *(v167 + 4 * (6419 * (BYTE1(v172) ^ 0xFB) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v172) ^ 0xFBu) + 32923051)) >> 32) >> 7)));
  v177 = STACK[0xDCB0];
  v178 = *(STACK[0xDCB0] + 4 * (6419 * (BYTE3(v144) ^ 0xB4) + 19732006 - 8768 * (((62700253 * (6419 * (BYTE3(v144) ^ 0xB4) + 19732006)) >> 32) >> 7)));
  *(v173 + 1754) = -113;
  LODWORD(v173) = *(v177 + 4 * (6419 * (BYTE2(v140) ^ 0x52) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v140) ^ 0x52u) + 18088742)) >> 32) >> 7)));
  v179 = *(v177 + 4 * (6419 * BYTE1(v124) + 32923051 - 8768 * (((62700253 * (6419 * BYTE1(v124) + 32923051)) >> 32) >> 7)));
  *(v169 + 3141) = 71;
  v180 = *(v177 + 4 * (6419 * (v172 ^ 0xBF) + 24674636 - 8768 * (((62700253 * (6419 * (v172 ^ 0xBFu) + 24674636)) >> 32) >> 7)));
  v181 = *(v177 + 4 * (6419 * (BYTE2(v144) ^ 8) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v144) ^ 8u) + 18088742)) >> 32) >> 7)));
  LODWORD(v140) = *(v177 + 4 * (6419 * (BYTE1(v140) ^ 0xB5) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v140) ^ 0xB5u) + 32923051)) >> 32) >> 7)));
  v182 = *(v177 + 4 * (6419 * (HIBYTE(v172) ^ 0x77) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v172) ^ 0x77) + 19732006)) >> 32) >> 7)));
  *(STACK[0x5300] + 2898) = -44;
  LODWORD(v177) = *(v177 + 4 * (6419 * v124 + 24674636 - 8768 * (((62700253 * (6419 * v124 + 24674636)) >> 32) >> 7)));
  *(STACK[0xDCB8] + 6017) = 33;
  LODWORD(v144) = LODWORD(STACK[0x4F88]) ^ v153 ^ v174 ^ v128 ^ v175;
  LODWORD(v124) = LODWORD(STACK[0x4F80]) ^ v135 ^ v176 ^ v150 ^ v167;
  LODWORD(v167) = LODWORD(STACK[0x5100]) ^ v178 ^ v173 ^ v179 ^ v180;
  v183 = LODWORD(STACK[0x4F78]) ^ v181 ^ v140 ^ v182 ^ v177;
  v184 = 6419 * (BYTE3(v124) ^ 0xA8) + 19732006 - 8768 * (((62700253 * (6419 * (BYTE3(v124) ^ 0xA8) + 19732006)) >> 32) >> 7);
  LODWORD(v135) = 6419 * (v124 ^ 0xF8) + 24674636 - 8768 * (((62700253 * (6419 * (v124 ^ 0xF8u) + 24674636)) >> 32) >> 7);
  LODWORD(v153) = 6419 * (BYTE3(v167) ^ 0x42) + 19732006 - 8768 * (((62700253 * (6419 * (BYTE3(v167) ^ 0x42) + 19732006)) >> 32) >> 7);
  LODWORD(v150) = 6419 * (BYTE2(v124) ^ 0x19) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v124) ^ 0x19u) + 18088742)) >> 32) >> 7);
  v185 = 6419 * (v167 ^ 0xE9) + 24674636 - 8768 * (((62700253 * (6419 * (v167 ^ 0xE9u) + 24674636)) >> 32) >> 7);
  v186 = 6419 * (BYTE1(v144) ^ 0x4D) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v144) ^ 0x4Du) + 32923051)) >> 32) >> 7);
  LODWORD(v177) = 6419 * (BYTE2(v183) ^ 0x58) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v183) ^ 0x58u) + 18088742)) >> 32) >> 7);
  v187 = 6419 * (BYTE1(v183) ^ 0xF7) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v183) ^ 0xF7u) + 32923051)) >> 32) >> 7);
  v188 = 6419 * (v183 ^ 4) + 24674636 - 8768 * (((62700253 * (6419 * (v183 ^ 4u) + 24674636)) >> 32) >> 7);
  v189 = 6419 * (HIBYTE(v183) ^ 0x66) + 19732006 - 8768 * (((62700253 * (6419 * (HIBYTE(v183) ^ 0x66) + 19732006)) >> 32) >> 7);
  v190 = 6419 * (BYTE2(v167) ^ 8) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v167) ^ 8u) + 18088742)) >> 32) >> 7);
  v191 = (v124 >> 8) ^ 0xA8198F;
  *(STACK[0x56C0] + 1457) = 35;
  v192 = STACK[0xDCB0];
  LODWORD(v173) = *(STACK[0xDCB0] + 4 * (6419 * (BYTE3(v144) ^ 0xF6) + 19732006 - 8768 * (((62700253 * (6419 * (BYTE3(v144) ^ 0xF6) + 19732006)) >> 32) >> 7)));
  v193 = *(STACK[0xDCB0] + 4 * (6419 * (BYTE1(v167) ^ 0x82) + 32923051 - 8768 * (((62700253 * (6419 * (BYTE1(v167) ^ 0x82u) + 32923051)) >> 32) >> 7)));
  v194 = *(STACK[0xDCB0] + 4 * v135);
  v195 = *(STACK[0xDCB0] + 4 * v184);
  LODWORD(v154) = *(STACK[0xDCB0] + 4 * v177);
  *(STACK[0x5780] + 577) = 121;
  LODWORD(v167) = *(v192 + 4 * v187);
  LODWORD(v177) = *(v192 + 4 * (6419 * (BYTE2(v144) ^ 6) + 18088742 - 8768 * (((62700253 * (6419 * (BYTE2(v144) ^ 6u) + 18088742)) >> 32) >> 7)));
  LODWORD(v169) = v191 ^ 0x1409;
  LODWORD(v140) = *(v192 + 4 * v153);
  LODWORD(v128) = (2 * v191) & 0x12;
  v196 = *(v192 + 4 * v150);
  LODWORD(v169) = v169 + v128;
  LODWORD(v135) = *(v192 + 4 * v185);
  v197 = STACK[0x5770];
  *(v197 + 3505) = -89;
  LODWORD(v128) = 6419 * (v144 ^ 0x32) + 24674636;
  LODWORD(v144) = *(v192 + 4 * v188);
  v198 = v128 - 8768 * (((62700253 * v128) >> 32) >> 7);
  v199 = *(v192 + 4 * v186);
  LODWORD(v128) = *(v192 + 4 * v189);
  v200 = STACK[0xDCB8];
  v200[1974] = 14;
  LODWORD(v153) = *(v192 + 4 * v190);
  v201 = *(v192 + 4 * v198);
  LODWORD(v150) = *(v192 + 4 * (6419 * v169 - 8768 * (((62700253 * (6419 * v169)) >> 32) >> 7)));
  *(STACK[0x5720] + 1988) = -97;
  v200[3696] = -53;
  v200[5213] = 119;
  LODWORD(v169) = v173 ^ LODWORD(STACK[0x5108]) ^ v193 ^ v154 ^ v194;
  v202 = LODWORD(STACK[0x4F70]) ^ v195;
  v203 = (((v202 ^ 0xAB6600C3) + 1165564833) ^ ((v202 ^ 0x9FE774F3) + 1912106897) ^ ((v202 ^ 0xEF441A8E) + 22741486)) + (((v177 ^ 0x7A175C7B) - 2048351355) ^ ((v177 ^ 0xC0790E41) + 1065808319) ^ ((v177 ^ 0xF856DDDC) + 128524836)) + ((2 * ((v177 ^ 0x42388FE6) & (v202 ^ 0x7E8993B9) ^ v177 & 0x254CFD07)) ^ 0xFFEEE5F3) + 996053133;
  LODWORD(v167) = v135 ^ v167;
  LODWORD(v135) = (v203 ^ 0x7DF3FBEB) - 1391693167;
  v204 = v167 ^ v203 ^ ((v203 ^ 0x6E6B02EF) - 1097561195) ^ ((v203 ^ 0xBF6FB78B) + 1871724273) ^ ((v203 ^ 0x83F7380B) + 1393078641);
  HIDWORD(v205) = v196;
  LODWORD(v205) = v196;
  LODWORD(v167) = v205 >> 8;
  HIDWORD(v205) = v167 ^ 0x42388F;
  LODWORD(v205) = v167 ^ 0xE6000000;
  LODWORD(v144) = LODWORD(STACK[0x4F68]) ^ v140 ^ v144 ^ v199 ^ (v205 >> 24);
  LODWORD(v140) = v204 ^ v135;
  LODWORD(v167) = LODWORD(STACK[0x4F60]) ^ v128 ^ v153 ^ v201 ^ v150;
  v206 = *(v192 + 4 * (6419 * (BYTE3(v169) ^ 0xB9) + 21381689 - 8768 * (((62700253 * (6419 * (BYTE3(v169) ^ 0xB9) + 21381689)) >> 32) >> 7)));
  LODWORD(v177) = 6419 * ~(v144 >> 8) + 27961164;
  v207 = v177 - 8768 * (((62700253 * v177) >> 32) >> 7);
  LODWORD(v192) = 6419 * (2 * ((BYTE2(v167) ^ 0x71) & 7) + (BYTE2(v167) ^ 0x1376));
  LODWORD(v135) = v192 - 8768 * (((62700253 * v192) >> 32) >> 7);
  LODWORD(v192) = 6419 * ((~(v140 >> 23) & 6) + (BYTE3(v140) ^ 0xD2C));
  v208 = STACK[0xDCB0];
  v209 = LODWORD(STACK[0x5130]) ^ v206 ^ *(v208 + 4 * v207) ^ *(v208 + 4 * v135) ^ *(v208 + 4 * (6419 * (v140 ^ 0x84) + 6585894 - 8768 * (((1959383 * (6419 * (v140 ^ 0x84u) + 6585894)) >> 32) >> 2)));
  LODWORD(v192) = LODWORD(STACK[0x4F58]) ^ *(v208 + 4 * (6419 * (v144 ^ 2) + 6585894 - 8768 * (((1959383 * (6419 * (v144 ^ 2u) + 6585894)) >> 32) >> 2))) ^ *(v208 + 4 * (6419 * (BYTE1(v167) ^ 0x98) + 27961164 - 8768 * (((62700253 * (6419 * (BYTE1(v167) ^ 0x98u) + 27961164)) >> 32) >> 7))) ^ *(v208 + 4 * (6419 * (BYTE2(v169) ^ 0x8D) + 31266949 - 8768 * (((62700253 * (6419 * (BYTE2(v169) ^ 0x8Du) + 31266949)) >> 32) >> 7))) ^ *(v208 + 4 * (v192 - 8768 * (((31350127 * v192) >> 32) >> 6)));
  LODWORD(v135) = BYTE1(v140) ^ 0x76;
  LODWORD(v153) = *(STACK[0xDCB0] + 4 * (6419 * (BYTE3(v144) ^ 0xF8) + 21381689 - 8768 * (((62700253 * (6419 * (BYTE3(v144) ^ 0xF8) + 21381689)) >> 32) >> 7)));
  *STACK[0x5660] = -71;
  v210 = *(v208 + 4 * (6419 * BYTE2(v140) + 31266949 - 8768 * (((62700253 * (6419 * BYTE2(v140) + 31266949)) >> 32) >> 7)));
  v211 = STACK[0xDCB8];
  *(v211 + 4022) = -124;
  v212 = LODWORD(STACK[0x4F50]) ^ v153 ^ *(v208 + 4 * (6419 * (BYTE1(v169) ^ 0x4E) + 27961164 - 8768 * (((62700253 * (6419 * (BYTE1(v169) ^ 0x4Eu) + 27961164)) >> 32) >> 7))) ^ *(v208 + 4 * (6419 * (v167 ^ 0x5B) + 6585894 - 8768 * (((1959383 * (6419 * (v167 ^ 0x5Bu) + 6585894)) >> 32) >> 2))) ^ v210;
  v213 = STACK[0xDCB0];
  LODWORD(v167) = LODWORD(STACK[0x5110]) ^ *(v208 + 4 * (6419 * (BYTE3(v167) ^ 0xBE) + 21381689 - 8768 * (((62700253 * (6419 * (BYTE3(v167) ^ 0xBE) + 21381689)) >> 32) >> 7))) ^ *(v213 + 4 * (6419 * v169 + 6585894 - 8768 * (((1959383 * (6419 * v169 + 6585894)) >> 32) >> 2))) ^ *(v213 + 4 * (6419 * (BYTE2(v144) ^ 0xDD) + 31266949 - 8768 * (((62700253 * (6419 * (BYTE2(v144) ^ 0xDDu) + 31266949)) >> 32) >> 7))) ^ *(v213 + 4 * (6419 * v135 + 27961164 - 8768 * (((62700253 * (6419 * v135 + 27961164)) >> 32) >> 7)));
  *(STACK[0x55A0] + 2405) = 33;
  v214 = 5621 * (((2 * v192) & 0x3A ^ 0x18) + (v192 ^ 0xC11));
  *(v197 + 1783) = 31;
  v215 = *(v211 + 5621 * BYTE3(v167) + 15991745 - 6152 * (((44681065 * (5621 * BYTE3(v167) + 15991745)) >> 32) >> 6));
  LODWORD(v154) = *(v211 + 5621 * BYTE2(v167) + 4339412 - 6152 * (((22340533 * (5621 * BYTE2(v167) + 4339412)) >> 32) >> 5));
  LODWORD(STACK[0x5420]) = v154;
  *(v211 + 3840) = -49;
  v216 = *(v211 + v214 - 6152 * (((44681065 * v214) >> 32) >> 6));
  v217 = STACK[0xDCB8];
  v218 = *(STACK[0xDCB8] + 5621 * (HIBYTE(v212) ^ 0x7F) + 15991745 - 6152 * (((44681065 * (5621 * (HIBYTE(v212) ^ 0x7F) + 15991745)) >> 32) >> 6));
  *STACK[0x51E0] = 83;
  LODWORD(v173) = STACK[0x5120];
  LODWORD(v153) = v173 + 5621 * (v212 ^ 0xCA) - 6152 * (((89362129 * (v173 + 5621 * (v212 ^ 0xCA))) >> 32) >> 7);
  v219 = STACK[0x5750];
  *(v219 + 706) = 34;
  v220 = *(v217 + 5621 * (BYTE2(v209) ^ 0xC0) + 4339412 - 6152 * (((22340533 * (5621 * (BYTE2(v209) ^ 0xC0u) + 4339412)) >> 32) >> 5));
  v221 = *(v217 + 5621 * (BYTE2(v212) ^ 0xEF) + 4339412 - 6152 * (((22340533 * (5621 * (BYTE2(v212) ^ 0xEFu) + 4339412)) >> 32) >> 5));
  v222 = *(v217 + 5621 * (BYTE1(v212) ^ 0xDD) + 7233696 - 6152 * (((22340533 * (5621 * (BYTE1(v212) ^ 0xDDu) + 7233696)) >> 32) >> 5));
  LODWORD(v144) = *(v217 + v173 + 5621 * v167 - 6152 * (((89362129 * (v173 + 5621 * v167)) >> 32) >> 7));
  LODWORD(STACK[0x5408]) = v144;
  *(v217 + 2596) = -79;
  v223 = *(v217 + 5621 * (BYTE2(v192) ^ 0x3C) + 4339412 - 6152 * (((22340533 * (5621 * (BYTE2(v192) ^ 0x3Cu) + 4339412)) >> 32) >> 5));
  v224 = *(v217 + v153);
  *(v219 + 3998) = -31;
  v225 = *(v217 + 5621 * (HIBYTE(v209) ^ 0x41) + 15991745 - 6152 * (((44681065 * (5621 * (HIBYTE(v209) ^ 0x41) + 15991745)) >> 32) >> 6));
  v226 = *(v217 + 5621 * (BYTE3(v192) ^ 0xB5) + 15991745 - 6152 * (((44681065 * (5621 * (BYTE3(v192) ^ 0xB5) + 15991745)) >> 32) >> 6));
  v227 = *(v217 + v173 + 5621 * (v209 ^ 0xB3) - 6152 * (((89362129 * (v173 + 5621 * (v209 ^ 0xB3))) >> 32) >> 7));
  v228 = *(v217 + 5621 * BYTE1(v167) + 7239848 - 6152 * (((22340533 * (5621 * BYTE1(v167) + 7239848)) >> 32) >> 5));
  v229 = 5621 * (BYTE1(v192) ^ 0x20) + 7239848 - 6152 * (((22340533 * (5621 * (BYTE1(v192) ^ 0x20u) + 7239848)) >> 32) >> 5);
  v230 = v215;
  LODWORD(STACK[0x53B0]) = v215 < 0x4C;
  LODWORD(STACK[0x5410]) = v154 < 0x4C;
  v231 = v218;
  v232 = v218 < 0x4C;
  LODWORD(STACK[0x53B8]) = v144 < 0x4C;
  v233 = v225 >= 0x4C;
  v234 = v225 + 2002653810;
  v235 = !v233;
  v236 = 5621 * (v234 + (v235 << 8) + 3859) + 172987365;
  v237 = 5621 * (v220 + 1923173506 + ((v220 < 0x4C) << 8)) + 295783469;
  v238 = 5621 * (BYTE1(v209) ^ 0x3A) + 7239848 - 6152 * (((22340533 * (5621 * (BYTE1(v209) ^ 0x3Au) + 7239848)) >> 32) >> 5);
  v233 = v227 >= 0x4C;
  v239 = v227 + 473184516;
  v240 = !v233;
  v241 = v239 + (v240 << 8);
  v242 = v226 | ((v226 < 0x4C) << 8);
  v243 = v221 | ((v221 < 0x4C) << 8);
  v244 = STACK[0xDCB8];
  v245 = *(STACK[0xDCB8] + v229);
  LODWORD(STACK[0x53A0]) = v228 < 0x4C;
  v246 = v237 % 0x1808;
  v247 = v236 % 0x1808;
  v248 = (5621 * v242 + 2461998) % 0x1808u;
  v249 = v224 + 802762636 + ((v224 < 0x4C) << 8);
  v250 = v222 | ((v222 < 0x4C) << 8);
  v251 = (5621 * (*(v244 + v238) | ((*(v244 + v238) < 0x4Cu) << 8)) + 24288341) % 0x1808u;
  v252 = *(v244 + v247);
  *(STACK[0x52D8] + 721) = -95;
  v253 = *(v244 + v246);
  v254 = *(v244 + v248);
  v255 = *(v244 + (5621 * (v223 | ((v223 < 0x4C) << 8)) + 21376663) % 0x1808);
  v256 = *(v244 + (5621 * v241 - 1165498630) % 0x1808);
  v257 = *(v244 + (5621 * (v216 | ((v216 < 0x4C) << 8)) + 19909582) % 0x1808);
  LODWORD(STACK[0x5400]) = v257;
  v258 = *(v244 + v251);
  v259 = v230 | (LODWORD(STACK[0x53B0]) << 8);
  v260 = STACK[0xDCB8];
  v261 = *(STACK[0xDCB8] + (5621 * (v231 | (v232 << 8)) + 2461998) % 0x1808);
  LODWORD(STACK[0x5388]) = v261;
  v262 = *(v260 + (5621 * v243 + 21376663) % 0x1808u);
  LODWORD(STACK[0x53B0]) = v262;
  v263 = *(v260 + (5621 * (v245 | ((v245 < 0x4C) << 8)) + 24288341) % 0x1808);
  LODWORD(STACK[0x53A8]) = v263;
  v264 = *(v260 + (5621 * v250 + 24288341) % 0x1808u);
  *(v260 + 4356) = 119;
  v265 = LODWORD(STACK[0x5408]) | (LODWORD(STACK[0x53B8]) << 8);
  v266 = LODWORD(STACK[0x5420]) | (LODWORD(STACK[0x5410]) << 8);
  v267 = v228 | (LODWORD(STACK[0x53A0]) << 8);
  v268 = *(v260 + (5621 * v249 + 1701760722) % 0x1808u);
  LODWORD(STACK[0x5408]) = v268;
  *(STACK[0x57C0] + 357) = -67;
  v269 = *(v260 + (5621 * v259 + 2461998) % 0x1808u);
  v271 = STACK[0xDCB8];
  v272 = *(STACK[0xDCB8] + (5621 * v267 + 24288341) % 0x1808u);
  v273 = *(STACK[0xDCB8] + (5621 * v266 + 21376663) % 0x1808u);
  *(STACK[0x5770] + 4074) = 52;
  *(v271 + 1481) = 113;
  v274 = *(v271 + (5621 * v265 + 19909582) % 0x1808u);
  v275 = v254;
  v276 = v254 < 0x4C;
  v277 = v255;
  LODWORD(STACK[0x5380]) = v255 < 0x4C;
  LODWORD(STACK[0x53B8]) = v257 < 0x4C;
  LODWORD(STACK[0x53A0]) = v263 < 0x4C;
  LODWORD(STACK[0x5420]) = v261 < 0x4C;
  LODWORD(STACK[0x5398]) = v262 < 0x4C;
  LODWORD(STACK[0x5390]) = v264 < 0x4C;
  LODWORD(STACK[0x5410]) = v268 < 0x4C;
  v233 = v272 >= 0x4C;
  v278 = v272 + 1826125754;
  v279 = !v233;
  v270 = v269 & 0x42 ^ 0x4F;
  HIDWORD(v280) = ((v269 ^ (2 * ((v269 ^ 0x20) & (2 * ((v269 ^ 0x34) & (2 * ((v269 ^ 0x34) & (2 * ((v269 ^ 0x34) & (2 * ((v269 ^ 0x34) & (2 * ((v269 ^ 0x34) & 0x36 ^ v270)) ^ v270)) ^ v270)) ^ v270)) ^ v270)) ^ v270))) >> 6) ^ 1;
  LODWORD(v280) = ((4 * v269) ^ (8 * ((v269 ^ 0x14) & (2 * ((v269 ^ 0x34) & (2 * ((v269 ^ 0x34) & (2 * (v269 & 0x84 ^ 0xFFFFFFA8)) ^ v269 & 0x84 ^ 0xFFFFFFA8)) ^ v269 & 0x84 ^ 0xFFFFFFA8)) ^ v269 & 0x84 ^ 0xFFFFFFA8)) ^ 0x10) << 24;
  v281 = v258 | ((v258 < 0x4C) << 8);
  v282 = STACK[0xDCB0];
  v283 = *(v282 + 4 * ((6419 * (v274 | ((v274 < 0x4C) << 8)) + 25830056) % 0x2240)) ^ *(v282 + 4 * ((6419 * (v273 | ((v273 < 0x4C) << 8)) + 40670784) % 0x2240)) ^ *(v282 + 4 * ((6419 * (v278 + (v279 << 8)) - 924436300) % 0x2240)) ^ *(v282 + 4 * ((6419 * (v280 >> 26) + 46114096) % 0x2240));
  v284 = *(v282 + 4 * ((6419 * (v253 | ((v253 < 0x4C) << 8)) + 40670784) % 0x2240)) ^ *(v282 + 4 * ((6419 * v281 + 11027842) % 0x2240u)) ^ *(v282 + 4 * ((6419 * (v252 | ((v252 < 0x4C) << 8)) + 45626252) % 0x2240)) ^ *(v282 + 4 * ((6419 * (v256 | ((v256 < 0x4C) << 8)) + 25830056) % 0x2240));
  LODWORD(STACK[0x5240]) = v284;
  v285 = *(v282 + 4 * ((6419 * BYTE2(v283) + 51108078) % 0x2240));
  v286 = STACK[0xDCB8];
  *(v286 + 2831) = -111;
  *(v286 + 1989) = -108;
  *(v286 + 2232) = -4;
  v287 = *(v282 + 4 * (6419 * BYTE1(v283) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v283) + 23024953)) >> 32) >> 7)));
  *(STACK[0x5780] + 1070) = 44;
  v288 = *(STACK[0x57A0] + 2367);
  v289 = v288 & 0xFFFFFFBC ^ 0xFFFFFF84;
  v290 = (((v288 ^ 0x34) & (2 * ((v288 ^ 0x34) & (2 * ((v288 ^ 0x34) & (2 * ((v288 ^ 0x34) & (2 * ((v288 ^ 0x34) & (2 * v289) ^ v289)) ^ v289)) ^ v289)) ^ v289)) ^ v289) << 25) ^ (v288 << 24);
  v291 = 6419 * v283 + 8229158 - 8768 * (((1959383 * (6419 * v283 + 8229158)) >> 32) >> 2);
  v292 = v283;
  LODWORD(STACK[0x5218]) = v283;
  v293 = (6419 * HIBYTE(v283) + 39515364) % 0x2240u;
  v294 = (6419 * (v277 | (LODWORD(STACK[0x5380]) << 8)) + 40670784) % 0x2240;
  v295 = STACK[0xDCB0];
  v296 = v285 ^ 0x9F047FDE ^ v287 ^ *(STACK[0xDCB0] + 4 * v291);
  v297 = *(STACK[0xDCB0] + 4 * v293) ^ ((v290 ^ 0xBC000000) - 1627095074 - ((2 * (v290 ^ 0xBC000000)) & 0x3E000000));
  *(STACK[0x5790] + 797) = 127;
  v298 = *(v295 + 4 * ((6419 * (v275 | (v276 << 8)) + 45626252) % 0x2240));
  *(v286 + 3271) = -20;
  v299 = v284 ^ 0x95C78E34 ^ ((v296 ^ v297) - 1782084044 - ((2 * (v296 ^ v297)) & 0x2B8F1C68));
  v300 = LODWORD(STACK[0x5388]) | (LODWORD(STACK[0x5420]) << 8);
  v301 = (6419 * (LODWORD(STACK[0x5408]) + 896484085 + (LODWORD(STACK[0x5410]) << 8)) + 750665081) % 0x2240u;
  v302 = STACK[0xDCB0];
  v303 = *(v302 + 4 * ((6419 * (LODWORD(STACK[0x53B0]) | (LODWORD(STACK[0x5398]) << 8)) + 40670784) % 0x2240u)) ^ *(v302 + 4 * ((6419 * (v264 | (LODWORD(STACK[0x5390]) << 8)) + 11027842) % 0x2240));
  v304 = *(v295 + 4 * v294) ^ v298 ^ *(v295 + 4 * ((6419 * (LODWORD(STACK[0x53A8]) | (LODWORD(STACK[0x53A0]) << 8)) + 11027842) % 0x2240u)) ^ *(v295 + 4 * ((6419 * (LODWORD(STACK[0x5400]) | (LODWORD(STACK[0x53B8]) << 8)) + 25830056) % 0x2240u));
  LODWORD(STACK[0x5228]) = v304;
  v305 = v303 ^ *(v302 + 4 * ((6419 * v300 + 45626252) % 0x2240u)) ^ *(v302 + 4 * v301);
  LODWORD(STACK[0x5238]) = v305;
  LODWORD(STACK[0x5248]) = 2 * v299;
  LODWORD(STACK[0x5220]) = v299;
  v306 = v304 ^ 0x8F4985AA;
  v307 = (v299 - 1891007062 - ((2 * v299) & 0x1E930B54)) ^ v304 ^ 0x8F4985AA;
  LODWORD(STACK[0x5260]) = v307;
  LODWORD(STACK[0x5258]) = 2 * v307;
  v308 = (v307 + 1128116940 - ((2 * v307) & 0x867B6598)) ^ v305;
  LODWORD(STACK[0x5278]) = v308;
  v309 = v308 ^ 0x433DB2CC;
  LODWORD(STACK[0x5230]) = v308 ^ 0x433DB2CC;
  v310 = ((v308 ^ 0x433DB2CC) + 118467082 - ((2 * (v308 ^ 0x433DB2CC)) & 0xE1F5414)) ^ v292 ^ 0x70FAA0A;
  LODWORD(STACK[0x5270]) = v310;
  v311 = *(v302 + 4 * (6419 * BYTE1(v310) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v310) + 23024953)) >> 32) >> 7)));
  v312 = *(v302 + 4 * ((6419 * BYTE2(v310) + 51108078) % 0x2240));
  v313 = STACK[0x5750];
  *(STACK[0x5750] + 1199) = -4;
  v314 = *(v302 + 4 * (6419 * v310 + 8229158 - 8768 * (((1959383 * (6419 * v310 + 8229158)) >> 32) >> 2)));
  *(STACK[0x5740] + 1161) = 41;
  *(STACK[0xDCB8] + 4227) = -102;
  LODWORD(v302) = *(v302 + 4 * ((6419 * HIBYTE(v310) + 39515364) % 0x2240u));
  *STACK[0x5650] = 96;
  v315 = *(STACK[0x5760] + 615);
  LODWORD(v286) = v315 & 0x2A ^ 0x5B;
  v316 = v312 ^ v311 ^ v314 ^ v302;
  v317 = (((v315 ^ 0x34) & (2 * ((v315 ^ 0x34) & (2 * ((v315 ^ 0x34) & (2 * ((v315 ^ 0x34) & (2 * ((v315 ^ 0x34) & (2 * ((v315 ^ 0x34) & 0x1E ^ v286)) ^ v286)) ^ v286)) ^ v286)) ^ v286)) ^ v286) << 25) ^ (v315 << 24) ^ 0x2A000000;
  v318 = v316 ^ (v317 - 1236490077 - ((2 * v317) & 0x6C000000)) ^ 0xB64CA8A3;
  v319 = (v318 - 1891007062 - 2 * (v318 & 0xF4985BA ^ v316 & 0x10)) ^ v306;
  LODWORD(STACK[0x5288]) = 2 * v319;
  v320 = v319;
  LODWORD(STACK[0x5250]) = v319;
  v321 = (v319 + 118467082 - ((2 * v319) & 0xE1F5414)) ^ v292 ^ 0x70FAA0A;
  *(STACK[0x52E0] + 1328) = -41;
  v322 = STACK[0xDCB0];
  v323 = *(STACK[0xDCB0] + 4 * (6419 * BYTE1(v321) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v321) + 23024953)) >> 32) >> 7)));
  v324 = *(STACK[0xDCB0] + 4 * (6419 * (((v321 >> 15) & 0x34) + (BYTE2(v321) ^ 0x1F1A)) % 0x2240));
  v325 = *(STACK[0xDCB0] + 4 * (6419 * v321 + 8229158 - 8768 * (((1959383 * (6419 * v321 + 8229158)) >> 32) >> 2)));
  v326 = *(STACK[0xDCB0] + 4 * ((6419 * HIBYTE(v321) + 39515364) % 0x2240u));
  *(STACK[0x52B0] + 2185) = -121;
  LODWORD(v286) = *(STACK[0x5770] + 615);
  LODWORD(v286) = v286 ^ (2 * ((v286 ^ 0x34) & (2 * ((v286 ^ 0x34) & (2 * ((v286 ^ 0x34) & (2 * ((v286 ^ 0x34) & (2 * ((v286 ^ 0x34) & (2 * ((v286 ^ 0x34) & (2 * (v286 | 0xFFFFFFD9)) & 0x5E ^ (v286 | 0xFFFFFFD9))) ^ (v286 | 0xFFFFFFD9))) ^ (v286 | 0xFFFFFFD9))) ^ (v286 | 0xFFFFFFD9))) ^ (v286 | 0xFFFFFFD9))) ^ (v286 | 0xFFFFFFD9)));
  v327 = v318 ^ v299;
  LODWORD(STACK[0x5268]) = v327;
  v328 = v324 ^ v323 ^ v325 ^ v326 ^ v327 ^ (((v286 ^ 0x26) << 24) - 879765708 - (((v286 ^ 0x26) << 25) & 0x96000000));
  LODWORD(STACK[0x52A0]) = v328;
  v329 = v328 ^ 0xCB8FD734;
  LODWORD(STACK[0x5298]) = v321;
  v330 = v321 & 0x400;
  v331 = v329 ^ v309;
  v332 = v329;
  LODWORD(STACK[0x5280]) = v329;
  if ((v331 & v321 & 0x400) != 0)
  {
    v330 = -v330;
  }

  v333 = v331;
  v334 = (v330 + v331) ^ v321 & 0xFFFFFBFF;
  v335 = *(v322 + 4 * ((6419 * BYTE2(v334) + 51108078) % 0x2240));
  v336 = *(v322 + 4 * (6419 * BYTE1(v334) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v334) + 23024953)) >> 32) >> 7)));
  v337 = v334;
  LODWORD(STACK[0x52A8]) = v334;
  v338 = *(v322 + 4 * ((6419 * HIBYTE(v334) + 39515364) % 0x2240u));
  v339 = *(v322 + 4 * (6419 * v334 + 8229158 - 8768 * (((1959383 * (6419 * v334 + 8229158)) >> 32) >> 2)));
  v340 = *(STACK[0x57B0] + 683);
  v341 = v340 & 0xFFFFFFB4 | 0xB;
  v342 = v341 ^ v340 & 0x7E;
  v343 = v340 ^ (2 * ((v340 ^ 0x34) & (2 * ((v340 ^ 0x34) & (2 * ((v340 ^ 0x34) & (2 * ((v340 ^ 0x34) & (2 * ((v340 ^ 0x34) & (2 * ((v340 ^ 0x34) & (2 * v341) ^ v342)) ^ v342)) ^ v342)) ^ v342)) ^ v342)) ^ v342)) ^ 0xCA;
  v344 = v335 ^ 0x5B397655 ^ v336 ^ v338 ^ v339 ^ ((v343 << 24) + 1530492501 - ((v343 << 25) & 0xB6000000));
  v345 = v344 ^ v320 ^ v333;
  v346 = v333;
  LODWORD(STACK[0x5290]) = v333;
  v347 = v344 ^ v320;
  LODWORD(STACK[0x52C0]) = v344 ^ v320;
  LODWORD(STACK[0x5330]) = v345;
  v348 = v337 ^ v345;
  v349 = 6419 * ((BYTE1(v348) ^ 0xE03) + ((v348 >> 7) & 6));
  v350 = *(STACK[0xDCB0] + 4 * ((6419 * ((v337 ^ v345) >> 24) + 39515364) % 0x2240));
  v351 = *(STACK[0xDCB0] + 4 * ((6419 * ((v337 ^ v345) >> 16) + 51108078) % 0x2240));
  v352 = *(STACK[0xDCB0] + 4 * (v349 - 8768 * (((31350127 * v349) >> 32) >> 6)));
  v353 = *(STACK[0xDCB0] + 4 * (6419 * v348 + 8229158 - 8768 * (((1959383 * (6419 * v348 + 8229158)) >> 32) >> 2)));
  *(STACK[0xDCB8] + 161) = 47;
  *(STACK[0x5308] + 759) = 50;
  v354 = STACK[0x5730];
  v355 = *(STACK[0x5730] + 31);
  v356 = v355 & 0xFFFFFFA0 ^ 0xFFFFFF9E;
  LODWORD(STACK[0x5318]) = v344 ^ v332;
  LODWORD(STACK[0x5310]) = 2 * (v344 ^ v332);
  v357 = v351 ^ v353 ^ ((v344 ^ v332) - ((2 * (v344 ^ v332)) & 0x5B32C5AE) - 1382456617) ^ v352 ^ 0xEFA1ED31;
  v358 = v355 ^ (2 * ((v355 ^ 0x34) & (2 * ((v355 ^ 0x34) & (2 * ((v355 ^ 0x34) & (2 * ((v355 ^ 0x34) & (2 * ((v355 ^ 0x34) & (2 * v356) ^ v356)) ^ v356)) ^ v356)) ^ v356)) ^ v356));
  v359 = (v357 - 1836959473 - ((2 * v357) & 0x25047AB8) + 1101) ^ v350;
  LODWORD(STACK[0x5328]) = v359;
  v360 = ((v358 ^ 0xA0) << 24) - (((v358 ^ 0xA0) << 25) & 0xA0000000) - 793070918;
  v361 = *(STACK[0x56F0] + 69);
  v362 = v361 & 0x40 ^ 0x4E;
  v363 = v359 ^ v360;
  v364 = v359 ^ v360 ^ v346;
  LODWORD(STACK[0x5320]) = v359 ^ v360;
  LODWORD(STACK[0x5420]) = v364;
  LODWORD(STACK[0x5348]) = v364 ^ v348;
  v365 = 6419 * ((v364 ^ v348) >> 8) + 23024953;
  v366 = v365 - 8768 * (((62700253 * v365) >> 32) >> 7);
  v367 = v361 ^ (2 * ((v361 ^ 0x34) & (2 * ((v361 ^ 0x34) & (2 * ((v361 ^ 0x34) & (2 * ((v361 ^ 0x34) & (2 * ((v361 ^ 0x34) & 0x1C ^ v362)) ^ v362)) ^ v362)) ^ v362)) ^ v362));
  v368 = *(v354 + 1609);
  v369 = v368 & 0x2A ^ 0x5B;
  v370 = (v368 ^ 0x34) & (2 * ((v368 ^ 0x34) & (2 * ((v368 ^ 0x34) & (2 * ((v368 ^ 0x34) & (2 * ((v368 ^ 0x34) & (2 * ((v368 ^ 0x34) & 0x1E ^ v369)) ^ v369)) ^ v369)) ^ v369)) ^ v369)) ^ v369;
  v371 = STACK[0xDCB0];
  v372 = *(v371 + 4 * ((6419 * ((v364 ^ v348) >> 16) + 51108078) % 0x2240)) ^ 0x1B6BAB26 ^ *(v371 + 4 * (6419 * (v364 ^ v348) + 8229158 - 8768 * (((1959383 * (6419 * (v364 ^ v348) + 8229158)) >> 32) >> 2))) ^ *(v371 + 4 * v366) ^ *(v371 + 4 * ((6419 * ((v364 ^ v348) >> 24) + 39515364) % 0x2240)) ^ (((v367 << 24) ^ 0x40000000) + 460040998 - ((v367 << 25) & 0x36000000));
  v373 = v372 ^ v347;
  v374 = v372 ^ v347 ^ v348;
  LODWORD(STACK[0x52B8]) = v348;
  LODWORD(STACK[0x5338]) = v372 ^ v347;
  v375 = (6419 * BYTE2(v374) + 51108078) % 0x2240;
  v376 = v374;
  v377 = 6419 * BYTE1(v374) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v374) + 23024953)) >> 32) >> 7);
  v378 = 6419 * (v372 ^ v347 ^ v348) + 8229158;
  LODWORD(STACK[0x5358]) = v376;
  v379 = (v370 << 25) ^ (v368 << 24) ^ 0x2A000000;
  v380 = *(v371 + 4 * v375) ^ 0x64AAF861 ^ *(v371 + 4 * (v378 - 8768 * (((1959383 * v378) >> 32) >> 2))) ^ *(v371 + 4 * v377);
  LODWORD(STACK[0x5340]) = v363 ^ v372;
  v381 = v380 ^ *(v371 + 4 * ((6419 * HIBYTE(v376) + 39515364) % 0x2240u)) ^ v363 ^ v372 ^ (v379 + 1688926305 - ((2 * v379) & 0xC8000000));
  LODWORD(STACK[0x5350]) = v381;
  v382 = v381 ^ v364 ^ v376;
  LODWORD(STACK[0x5360]) = v381 ^ v364;
  LODWORD(STACK[0x5378]) = v382;
  v383 = 6419 * BYTE1(v382) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v382) + 23024953)) >> 32) >> 7);
  v384 = 6419 * (((v382 >> 18) + 393984) >> 6) % 0x2240;
  v385 = *(v371 + 4 * ((6419 * BYTE2(v382) + 51108078) % 0x2240));
  v386 = *(v371 + 4 * v383);
  v387 = *(v371 + 4 * (6419 * (v381 ^ v364 ^ v376) + 8229158 - 8768 * (((1959383 * (6419 * (v381 ^ v364 ^ v376) + 8229158)) >> 32) >> 2)));
  v388 = STACK[0xDCB8];
  *(v388 + 5964) = -32;
  v389 = *(STACK[0x5720] + 2481);
  v390 = v389 & 0xFFFFFFCC ^ 0xFFFFFF8C;
  v391 = v386 ^ v387;
  v392 = (((v389 ^ 0x34) & (2 * ((v389 ^ 0x34) & (2 * ((v389 ^ 0x34) & (2 * ((v389 ^ 0x34) & (2 * v390) ^ v390)) ^ v390)) ^ v390)) ^ v390) << 25) ^ (v389 << 24) ^ 0xCC000000;
  v393 = v385 ^ 0xE989D004 ^ v391 ^ (v392 - 376844284 - ((2 * v392) & 0xD2000000)) ^ *(v371 + 4 * v384);
  v394 = 6419 * ((v393 ^ v348) >> 8) + 23024953;
  *(STACK[0x55C0] + 964) = -23;
  v395 = *(v371 + 4 * ((6419 * ((v393 ^ v348) >> 16) + 51108078) % 0x2240));
  v396 = *(v371 + 4 * (v394 - 8768 * (((62700253 * v394) >> 32) >> 7)));
  *(v388 + 381) = 50;
  LODWORD(v388) = *(STACK[0x57C0] + 1510);
  v397 = v388 & 0x14 ^ 0x70;
  v398 = v393 ^ v348;
  LODWORD(STACK[0x5388]) = v393 ^ v348;
  v399 = (((v388 ^ 0x34) & (2 * ((v388 ^ 0x34) & (2 * ((v388 ^ 0x34) & (2 * ((v388 ^ 0x34) & (2 * v397) ^ v397)) ^ v397)) ^ v397)) ^ v397) << 25) ^ (v388 << 24) ^ 0x14000000;
  v400 = STACK[0xDCB0];
  v401 = v395 ^ 0x7209D406 ^ v396 ^ *(STACK[0xDCB0] + 4 * (6419 * (v393 ^ v348) + 8229158 - 8768 * (((1959383 * (6419 * (v393 ^ v348) + 8229158)) >> 32) >> 2)));
  v402 = *(STACK[0xDCB0] + 4 * ((6419 * ((v393 ^ v348) >> 24) + 39515364) % 0x2240));
  LODWORD(STACK[0x5368]) = v393 ^ v381;
  v403 = v401 ^ v402 ^ v393 ^ v381 ^ (v399 + 1913246726 - ((2 * v399) & 0xE4000000));
  LODWORD(STACK[0x5390]) = v403;
  v404 = v393 ^ v373;
  LODWORD(STACK[0x5370]) = v393 ^ v373;
  v405 = v403 + v404 - 2 * (v403 & v404);
  LODWORD(STACK[0x5398]) = v405;
  v406 = v404 ^ v381 ^ v364;
  LODWORD(STACK[0x5380]) = v406;
  v407 = v405 ^ v406;
  LODWORD(STACK[0x53A0]) = v407;
  v408 = v407 ^ v398;
  LODWORD(STACK[0x53A8]) = v407 ^ v398;
  LODWORD(STACK[0x5410]) = *(v400 + 4 * ((6419 * ((v407 ^ v398) >> 16) + 51108078) % 0x2240));
  LODWORD(STACK[0x5408]) = *(v400 + 4 * (6419 * ((v407 ^ v398) >> 8) + 23024953 - 8768 * (((62700253 * (6419 * ((v407 ^ v398) >> 8) + 23024953)) >> 32) >> 7)));
  v409 = STACK[0xDCB8];
  v409[3514] = 34;
  LODWORD(STACK[0x53B8]) = *(v400 + 4 * (6419 * v408 + 8229158 - 8768 * (((1959383 * (6419 * v408 + 8229158)) >> 32) >> 2)));
  LODWORD(STACK[0x5400]) = *(v400 + 4 * ((6419 * HIBYTE(v408) + 39515364) % 0x2240u));
  LODWORD(STACK[0x53B0]) = *(v354 + 1480);
  v409[2854] = 52;
  v409[563] = 11;
  *(v313 + 2974) = -127;
  v409[4007] = 49;
  *(STACK[0x5790] + 281) = 97;
  v410 = STACK[0x5670];
  *(v410 + 84) = -104;
  v411 = v410;
  v412 = STACK[0xB0A8];
  v413 = STACK[0xB0A8];
  v414 = STACK[0xDCB0];
  v415 = *(STACK[0xDCB0] + 4 * ((6419 * (*(STACK[0xB0A8] + 11) - 76) + 54394606) % 0x2240));
  *(STACK[0x5710] + 744) = -123;
  LODWORD(v400) = 6419 * (*(v412 + 6) - 76) + 16445478;
  v416 = *(v414 + 4 * (v400 - 8768 * (((31350127 * v400) >> 32) >> 6)));
  v417 = STACK[0x5770];
  *(v417 + 1692) = 12;
  LODWORD(v400) = 6419 * (*(v412 + 10) - 76) + 16445478;
  v418 = *(v414 + 4 * (v400 - 8768 * (((31350127 * v400) >> 32) >> 6)));
  LOBYTE(v400) = *(v412 + 13);
  *(STACK[0x55E0] + 1639) = 97;
  v419 = STACK[0xDCB8];
  v419[1936] = 53;
  v420 = *(v414 + 4 * ((6419 * (v400 - 76) + 44464413) % 0x2240));
  v421 = *(v414 + 4 * ((6419 * (*(v412 + 1) - 76) + 44464413) % 0x2240));
  v422 = *(v414 + 4 * ((6419 * (*(v412 + 8) - 76) + 34572734) % 0x2240));
  *(v417 + 1654) = -33;
  LODWORD(v400) = 6419 * (*v412 - 76) + 34572734;
  v423 = v419 + 4096;
  v419[4796] = 18;
  *(STACK[0x5300] + 1836) = 115;
  LODWORD(v400) = *(v414 + 4 * (v400 % 0x2240));
  *(STACK[0x55A0] + 2223) = 69;
  v419[3787] = 23;
  LOBYTE(v419) = *(v412 + 14);
  v423[495] = -116;
  LODWORD(v414) = *(v414 + 4 * (6419 * (v419 - 76) + 16445478 - 8768 * (((31350127 * (6419 * (v419 - 76) + 16445478)) >> 32) >> 6)));
  LODWORD(v423) = (6419 * (*(v412 + 4) - 76) + 34572734) % 0x2240;
  LODWORD(v412) = 6419 * (*(v412 + 15) - 76) + 54394606;
  v424 = STACK[0xDCB0];
  LODWORD(v423) = *(STACK[0xDCB0] + 4 * v423);
  *(STACK[0x55D0] + 4089) = -117;
  v425 = (6419 * (v413[5] - 76) + 44464413) % 0x2240;
  v426 = *(v424 + 4 * (v412 % 0x2240));
  LODWORD(v412) = *(v424 + 4 * ((6419 * (v413[7] - 76) + 54394606) % 0x2240));
  LODWORD(v417) = *(v424 + 4 * ((6419 * (v413[3] - 76) + 54394606) % 0x2240));
  *(v411 + 3543) = 43;
  v427 = 6419 * (v413[2] - 76) + 16445478;
  LODWORD(v412) = v416 ^ v423 ^ v412 ^ *(v424 + 4 * v425) ^ LODWORD(STACK[0x5228]);
  v428 = *(v424 + 4 * (v427 - 8768 * (((31350127 * v427) >> 32) >> 6)));
  v429 = STACK[0xDCB8];
  v429[510] = -32;
  LODWORD(v423) = 6419 * (v413[12] - 76) + 34572734;
  LODWORD(v400) = v421 ^ v400 ^ v417 ^ v428;
  v430 = *(v424 + 4 * ((6419 * (v413[9] - 76) + 44464413) % 0x2240));
  LODWORD(v413) = v400 ^ LODWORD(STACK[0x5240]);
  LODWORD(v414) = v420 ^ v414 ^ v426 ^ *(v424 + 4 * (v423 % 0x2240));
  v429[4887] = -33;
  v431 = v414 ^ LODWORD(STACK[0x5218]);
  v432 = v415 ^ v418 ^ v422 ^ v430 ^ LODWORD(STACK[0x5238]);
  v429[874] = 101;
  v429[1572] = -50;
  v433 = STACK[0xDCB0];
  LODWORD(v424) = LODWORD(STACK[0x5220]) - 1330273677 - (STACK[0x5248] & 0x616B44E6);
  v434 = *(v433 + 4 * (6419 * (v413 >> 24) + 9872422 - 8768 * (((31350127 * (6419 * (v413 >> 24) + 9872422)) >> 32) >> 6))) ^ 0xB0B5A273 ^ *(v433 + 4 * (6419 * BYTE1(v432) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v432) + 1649683)) >> 32) >> 2))) ^ *(v433 + 4 * (6419 * BYTE2(v412) - 8768 * (((1959383 * (6419 * BYTE2(v412))) >> 32) >> 2)));
  LODWORD(v400) = LODWORD(STACK[0x5260]) + 16053127 - (STACK[0x5258] & 0x1E9E70E);
  *(STACK[0x5700] + 3983) = -77;
  v435 = *(v433 + 4 * (6419 * BYTE3(v412) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v412) + 9872422)) >> 32) >> 6))) ^ *(v433 + 4 * (6419 * BYTE2(v432) - 8768 * (((1959383 * (6419 * BYTE2(v432))) >> 32) >> 2)));
  LODWORD(v417) = v424 ^ v434 ^ *(v433 + 4 * (6419 * v431 + 14802214 - 8768 * (((31350127 * (6419 * v431 + 14802214)) >> 32) >> 6)));
  v436 = 6419 * (((v432 >> 23) & 4) + (HIBYTE(v432) ^ 0x602));
  v437 = *(v433 + 4 * (6419 * BYTE1(v431) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v431) + 1649683)) >> 32) >> 2)));
  *(STACK[0x55F0] + 213) = -6;
  LODWORD(v424) = *(v433 + 4 * (6419 * v413 + 14802214 - 8768 * (((31350127 * (6419 * v413 + 14802214)) >> 32) >> 6)));
  v438 = *(v433 + 4 * (v436 - 8768 * (((1959383 * v436) >> 32) >> 2)));
  v439 = *(v433 + 4 * (6419 * BYTE2(v431) - 8768 * (((1959383 * (6419 * BYTE2(v431))) >> 32) >> 2)));
  v440 = v435 ^ v437;
  v441 = STACK[0xDCB8];
  *(v441 + 5691) = 15;
  v442 = 6419 * HIBYTE(v431) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v431) + 9872422)) >> 32) >> 6);
  *(v441 + 1352) = -71;
  v443 = STACK[0x5230];
  v444 = STACK[0x5278];
  LODWORD(v400) = v440 ^ v424 ^ v400;
  LODWORD(v429) = (v443 + 1580787796 - 2 * (v443 & 0x5E38E857 ^ STACK[0x5278] & 3)) ^ v438 ^ 0x5E38E854 ^ v439 ^ *(v433 + 4 * (6419 * BYTE1(v413) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v413) + 1649683)) >> 32) >> 2))) ^ *(v433 + 4 * (6419 * v412 + 14802214 - 8768 * (((31350127 * (6419 * v412 + 14802214)) >> 32) >> 6)));
  v445 = STACK[0xDCB0];
  v446 = *(STACK[0xDCB0] + 4 * v442);
  *(v441 + 1610) = 52;
  v447 = (LODWORD(STACK[0x5270]) + 637529928 - ((2 * LODWORD(STACK[0x5270])) & 0x4BFFDE90)) ^ v446 ^ 0x25FFEF48 ^ *(v445 + 4 * (6419 * BYTE1(v412) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v412) + 1649683)) >> 32) >> 2))) ^ *(v445 + 4 * (6419 * BYTE2(v413) - 8768 * (((1959383 * (6419 * BYTE2(v413))) >> 32) >> 2))) ^ *(v445 + 4 * (6419 * v432 + 14802214 - 8768 * (((31350127 * (6419 * v432 + 14802214)) >> 32) >> 6)));
  LOWORD(v412) = v400 ^ 0xF387;
  v448 = 6419 * ((v400 ^ 0xF4F387) >> 16);
  *(STACK[0x56E0] + 1677) = -121;
  v449 = STACK[0x5268];
  v450 = *(v445 + 4 * (6419 * BYTE3(v417) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v417) + 9872422)) >> 32) >> 6)));
  *STACK[0x51F8] = -125;
  v451 = (v449 - 895850116 - ((2 * v449) & 0x9534D2F8)) ^ v450 ^ 0xCA9A697C ^ *(v445 + 4 * (v448 - 8768 * (((1959383 * v448) >> 32) >> 2))) ^ *(v445 + 4 * (6419 * BYTE1(v429) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v429) + 1649683)) >> 32) >> 2))) ^ *(v445 + 4 * (6419 * v447 + 14802214 - 8768 * (((31350127 * (6419 * v447 + 14802214)) >> 32) >> 6)));
  LODWORD(v441) = *(v445 + 4 * (6419 * BYTE2(v429) - 8768 * (((1959383 * (6419 * BYTE2(v429))) >> 32) >> 2)));
  v452 = *(v445 + 4 * (6419 * (v429 >> 24) + 9872422 - 8768 * (((31350127 * (6419 * (v429 >> 24) + 9872422)) >> 32) >> 6)));
  LODWORD(v424) = *(v445 + 4 * (6419 * BYTE1(v447) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v447) + 1649683)) >> 32) >> 2)));
  LODWORD(v400) = *(v445 + 4 * (6419 * BYTE3(v400) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v400) + 9872422)) >> 32) >> 6)));
  LODWORD(v445) = 6419 * (((2 * v417) & 4) + (v417 ^ 0x902));
  v453 = v445 - 8768 * (((31350127 * v445) >> 32) >> 6);
  LODWORD(v445) = STACK[0x5288] & 0x3FA530EA;
  v454 = STACK[0x5250];
  LODWORD(v441) = v424 ^ 0x9FD29875 ^ v441 ^ v400;
  v455 = STACK[0xDCB0];
  v456 = *(STACK[0xDCB0] + 4 * v453);
  v457 = STACK[0xDCB8];
  v457[4993] = -62;
  v458 = v441 ^ v456;
  v459 = (v443 + 31198093 - 2 * (v443 & 0x1DC0B9F ^ v444 & 0x12)) ^ 0x1DC0B8D ^ v452 ^ *(v455 + 4 * (6419 * BYTE2(v447) - 8768 * (((1959383 * (6419 * BYTE2(v447))) >> 32) >> 2))) ^ *(v455 + 4 * (6419 * BYTE1(v417) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v417) + 1649683)) >> 32) >> 2)));
  v460 = STACK[0x5780];
  *(STACK[0x5780] + 1108) = 98;
  LODWORD(v441) = v459 ^ *(v455 + 4 * (6419 * (((v412 << 9) + 1180672) >> 9) % 0x2240));
  v461 = *(v455 + 4 * (6419 * BYTE1(v412) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v412) + 1649683)) >> 32) >> 2)));
  LODWORD(v412) = *(v455 + 4 * (6419 * BYTE2(v417) - 8768 * (((1959383 * (6419 * BYTE2(v417))) >> 32) >> 2)));
  LODWORD(v417) = *(v455 + 4 * (6419 * HIBYTE(v447) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v447) + 9872422)) >> 32) >> 6)));
  v457[2869] = 0;
  LODWORD(v455) = *(v455 + 4 * (6419 * v429 + 14802214 - 8768 * (((31350127 * (6419 * v429 + 14802214)) >> 32) >> 6)));
  v462 = v461 ^ v412 ^ v417;
  LODWORD(v412) = (v455 ^ 0x42388FE6) & (v462 ^ 0x187E1477) ^ v455 & 0x5A469B91;
  LODWORD(v424) = ((v462 ^ 0xAA8AE95A) - 626800479) ^ ((v462 ^ 0xF1C50627) - 2115229730) ^ ((v462 ^ 0x1977609B) + 1767784802);
  v463 = (v454 - 1613588363 - v445) ^ v458;
  v457[1769] = -127;
  LODWORD(v412) = (v424 + (((v455 ^ 0x834A15DC) + 2092296740) ^ ((v455 ^ 0x2D4F74A0) - 760181920) ^ ((v455 ^ 0xEC3DEE9A) + 331485542)) + ((2 * v412) ^ 0x7BFEE8FF) + 270983626) ^ LODWORD(STACK[0x5298]);
  LODWORD(v417) = v441 ^ v454;
  LODWORD(v441) = 6419 * ((v441 ^ v454) >> 8) + 1649683;
  LODWORD(v424) = v441 - 8768 * (((1959383 * v441) >> 32) >> 2);
  LODWORD(v354) = LODWORD(STACK[0x5280]) ^ v454;
  v464 = LODWORD(STACK[0x5280]) - 1292717836 - 2 * (STACK[0x5280] & 0x32F2B0F7 ^ STACK[0x52A0] & 3);
  *(STACK[0x57B0] + 2807) = 15;
  *(STACK[0x5750] + 2936) = -42;
  v465 = STACK[0xDCB0];
  LODWORD(v455) = v464 ^ *(v465 + 4 * (6419 * BYTE2(v463) - 8768 * (((1959383 * (6419 * BYTE2(v463))) >> 32) >> 2))) ^ 0xB2F2B0F4 ^ *(v465 + 4 * (6419 * HIBYTE(v451) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v451) + 9872422)) >> 32) >> 6))) ^ *(v465 + 4 * v424) ^ *(v465 + 4 * (6419 * v412 + 14802214 - 8768 * (((31350127 * (6419 * v412 + 14802214)) >> 32) >> 6)));
  v466 = (v354 - 2104573539 - ((2 * v354) & 0x51D833A)) ^ *(v465 + 4 * (6419 * BYTE1(v412) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v412) + 1649683)) >> 32) >> 2))) ^ 0x828EC19D ^ *(v465 + 4 * (6419 * v451 + 14802214 - 8768 * (((31350127 * (6419 * v451 + 14802214)) >> 32) >> 6))) ^ *(v465 + 4 * (6419 * BYTE2(v417) - 8768 * (((1959383 * (6419 * BYTE2(v417))) >> 32) >> 2))) ^ *(v465 + 4 * (6419 * HIBYTE(v463) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v463) + 9872422)) >> 32) >> 6)));
  *(STACK[0x57C0] + 2352) = -125;
  LODWORD(v424) = *(v465 + 4 * (6419 * BYTE2(v412) - 8768 * (((1959383 * (6419 * BYTE2(v412))) >> 32) >> 2)));
  v467 = *(v465 + 4 * (6419 * BYTE3(v417) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v417) + 9872422)) >> 32) >> 6)));
  v468 = *(v465 + 4 * (6419 * BYTE1(v451) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v451) + 1649683)) >> 32) >> 2)));
  *(STACK[0x55D0] + 2390) = -76;
  *(STACK[0x5308] + 1381) = 43;
  LODWORD(v465) = *(v465 + 4 * (6419 * v463 + 14802214 - 8768 * (((31350127 * (6419 * v463 + 14802214)) >> 32) >> 6)));
  v469 = STACK[0xDCB8];
  *(v469 + 4136) = 36;
  LODWORD(v354) = 6419 * BYTE2(v451) - 8768 * (((1959383 * (6419 * BYTE2(v451))) >> 32) >> 2);
  v470 = (LODWORD(STACK[0x5290]) - 1177720325 - ((2 * LODWORD(STACK[0x5290])) & 0x739AD3F6)) ^ v424 ^ 0xB9CD69FB ^ v467 ^ v468 ^ v465;
  v471 = STACK[0xDCB0];
  LODWORD(v465) = *(STACK[0xDCB0] + 4 * (6419 * BYTE3(v412) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v412) + 9872422)) >> 32) >> 6)));
  LODWORD(v424) = *(STACK[0xDCB0] + 4 * v354);
  *(v469 + 2141) = -82;
  v472 = (LODWORD(STACK[0x52A8]) - 1618983644 - ((2 * LODWORD(STACK[0x52A8])) & 0x3F008A48)) ^ v465 ^ 0x9F804524 ^ v424 ^ *(v471 + 4 * (6419 * v417 + 14802214 - 8768 * (((31350127 * (6419 * v417 + 14802214)) >> 32) >> 6))) ^ *(v471 + 4 * (6419 * BYTE1(v463) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v463) + 1649683)) >> 32) >> 2)));
  *(STACK[0x5740] + 3027) = 15;
  LODWORD(v465) = *(v471 + 4 * (6419 * BYTE2(v466) - 8768 * (((1959383 * (6419 * BYTE2(v466))) >> 32) >> 2)));
  LODWORD(v412) = *(v471 + 4 * (6419 * BYTE1(v470) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v470) + 1649683)) >> 32) >> 2)));
  LODWORD(v417) = *(v471 + 4 * (6419 * BYTE3(v455) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v455) + 9872422)) >> 32) >> 6)));
  *(STACK[0x55B0] + 433) = -61;
  v473 = STACK[0xDCB0];
  v474 = *(v473 + 4 * (6419 * BYTE2(v472) - 8768 * (((1959383 * (6419 * BYTE2(v472))) >> 32) >> 2))) ^ *(v473 + 4 * (6419 * HIBYTE(v470) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v470) + 9872422)) >> 32) >> 6))) ^ *(v473 + 4 * (6419 * BYTE1(v455) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v455) + 1649683)) >> 32) >> 2)));
  LODWORD(v354) = ((v474 & 0x2000 ^ 0x5C28E323) - 661660713) ^ ((v474 & 0x2000) + 648527610) ^ ((v474 & 0x2000 ^ 0x909A8E1) - 1917939691);
  v475 = v354 - 688701021;
  v476 = ((v475 ^ 0xA0EC5D17) + 76142706) ^ v475 ^ ((v475 ^ 0x29D004A3) - 1917484602) ^ ((v475 ^ 0x2D78CCD2) - 1994569291) ^ ((v475 ^ 0xFFDEEFFF) + 1539009178);
  v477 = *(STACK[0xDCB0] + 4 * (6419 * v466 + 14802214 - 8768 * (((31350127 * (6419 * v466 + 14802214)) >> 32) >> 6)));
  v478 = ((v476 ^ 0x5B9A7A99) & (v477 ^ 0xB2A715EC) ^ v476 & 0xF09F9A0A) == 1352276488;
  LODWORD(v465) = v465 ^ 0xE5D74F37 ^ v412 ^ v417 ^ *(v471 + 4 * (6419 * v472 + 14802214 - 8768 * (((31350127 * (6419 * v472 + 14802214)) >> 32) >> 6)));
  LODWORD(v417) = *(v471 + 4 * (6419 * BYTE2(v470) - 8768 * (((1959383 * (6419 * BYTE2(v470))) >> 32) >> 2)));
  v479 = *(v471 + 4 * (6419 * HIBYTE(v466) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v466) + 9872422)) >> 32) >> 6)));
  LODWORD(v423) = *(v471 + 4 * (6419 * BYTE1(v472) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v472) + 1649683)) >> 32) >> 2)));
  LODWORD(v469) = *(v471 + 4 * (6419 * v455 + 14802214 - 8768 * (((31350127 * (6419 * v455 + 14802214)) >> 32) >> 6)));
  v480 = (LODWORD(STACK[0x5318]) - 438874313 - (STACK[0x5310] & 0xCBAE9E6E)) ^ v465;
  v481 = STACK[0x52C0];
  v482 = 2 * LODWORD(STACK[0x52C0]);
  v483 = (LODWORD(STACK[0x52C0]) + 1245621478 - (v482 & 0x947D59CC)) ^ v417 ^ 0x4A3EACE6 ^ v479 ^ v423 ^ v469;
  v484 = 6419 * BYTE2(v455) - 8768 * (((1959383 * (6419 * BYTE2(v455))) >> 32) >> 2);
  v485 = -532565105 - v354;
  if (v478)
  {
    v485 = v475;
  }

  v486 = (((v477 ^ 0xB553A458) + 1252809640) ^ ((v477 ^ 0x345B16D1) - 878384849) ^ ((v477 ^ 0xC3303D6F) + 1020248721)) + 759568095 + v485;
  v487 = (v486 ^ 0x77677FFB) - 835681897;
  v488 = LODWORD(STACK[0x5330]) ^ ((v474 & 0xFFFFDFFF ^ 0x42388FE6) - ((2 * (v474 & 0xFFFFDFFF ^ 0x42388FE6)) & 0xF542807C) + 2057388094) ^ v486 ^ ((v486 ^ 0xA9B51931) + 283305821) ^ ((v486 ^ 0x1938B229) - 1603318715) ^ ((v486 ^ 0x8142D571) + 940911389);
  v489 = *(v473 + 4 * (6419 * HIBYTE(v472) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v472) + 9872422)) >> 32) >> 6)));
  v490 = STACK[0x55E0];
  v490[1085] = 0x80;
  v491 = *(v473 + 4 * v484);
  v492 = STACK[0xDCB8];
  v492[859] = 80;
  v493 = v491 ^ *(v473 + 4 * (6419 * BYTE1(v466) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v466) + 1649683)) >> 32) >> 2))) ^ *(v473 + 4 * (6419 * v470 + 14802214 - 8768 * (((31350127 * (6419 * v470 + 14802214)) >> 32) >> 6))) ^ v489;
  v494 = STACK[0x52B8];
  v495 = v488 ^ v487 ^ 0x3C0941AC;
  v492[1845] = 12;
  v496 = STACK[0x57A0];
  *(STACK[0x57A0] + 2610) = 57;
  v492[1314] = 127;
  v497 = ((v494 ^ 0xA646628A) + v493 + ((2 * ((v493 ^ 0x60071F09) & (v494 ^ 0x2646628A) ^ v494 & 0x60071F09)) ^ 0xBFF3FBEF) + 1) ^ 0xA646628A;
  v498 = 6419 * (((v494 ^ 0x8A) + v493 + ((2 * ((v493 ^ 9) & (v494 ^ 0x8A) ^ v494 & 9)) ^ 0xEF) + 1) ^ 0x8A) + 14802214;
  v499 = STACK[0x5320];
  v500 = v499 + 1844912270 - 2 * (v499 & 0x6DF7208F ^ STACK[0x5328] & 1);
  v490[1214] = 52;
  v501 = v500 ^ *(v473 + 4 * (6419 * BYTE2(v483) - 8768 * (((1959383 * (6419 * BYTE2(v483))) >> 32) >> 2))) ^ 0x6DF7208E ^ *(v473 + 4 * (v498 - 8768 * (((31350127 * v498) >> 32) >> 6))) ^ *(v473 + 4 * (6419 * HIBYTE(v480) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v480) + 9872422)) >> 32) >> 6)));
  v502 = *(v473 + 4 * (6419 * BYTE1(v495) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v495) + 1649683)) >> 32) >> 2)));
  v490[926] = -11;
  v503 = v501 ^ v502;
  v504 = *(v473 + 4 * (6419 * BYTE2(v495) - 8768 * (((1959383 * (6419 * BYTE2(v495))) >> 32) >> 2)));
  v505 = *(v473 + 4 * (6419 * HIBYTE(v483) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v483) + 9872422)) >> 32) >> 6)));
  *STACK[0x52D0] = 93;
  v506 = STACK[0xDCB0];
  v507 = (v481 + 658030939 - (v482 & 0x4E7182B6)) ^ 0x2738C15B ^ v499 ^ v505 ^ *(STACK[0xDCB0] + 4 * (6419 * BYTE1(v497) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v497) + 1649683)) >> 32) >> 2))) ^ *(STACK[0xDCB0] + 4 * (6419 * v480 + 14802214 - 8768 * (((31350127 * (6419 * v480 + 14802214)) >> 32) >> 6))) ^ v504;
  v508 = (LODWORD(STACK[0x5420]) - 464974051 - ((2 * LODWORD(STACK[0x5420])) & 0xC8921E3A)) ^ 0xE4490F1D ^ *(v506 + 4 * (6419 * BYTE1(v480) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v480) + 1649683)) >> 32) >> 2))) ^ *(v506 + 4 * (6419 * BYTE2(v497) - 8768 * (((1959383 * (6419 * BYTE2(v497))) >> 32) >> 2))) ^ *(v506 + 4 * (6419 * v483 + 14802214 - 8768 * (((31350127 * (6419 * v483 + 14802214)) >> 32) >> 6)));
  v509 = 6419 * BYTE1(v483) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v483) + 1649683)) >> 32) >> 2);
  v510 = 6419 * BYTE2(v480) - 17536 * (((1959383 * (6419 * BYTE2(v480))) >> 32) >> 3);
  if (v510 >> 6 >= 0x89)
  {
    v510 -= 8768;
  }

  v511 = *(v506 + 4 * (6419 * HIBYTE(v495) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v495) + 9872422)) >> 32) >> 6)));
  v512 = STACK[0xDCB8];
  *(v512 + 1716) = 70;
  v513 = STACK[0x5730];
  v513[782] = 65;
  v514 = *(v506 + 4 * v510);
  v515 = *(v506 + 4 * v509);
  v516 = *(v506 + 4 * (6419 * HIBYTE(v497) + 9863654 - 8768 * (((1959383 * (6419 * HIBYTE(v497) + 9863654)) >> 32) >> 2)));
  *(v512 + 328) = 105;
  v517 = v508 ^ v511;
  v518 = (LODWORD(STACK[0x5348]) + 647270535 - ((2 * LODWORD(STACK[0x5348])) & 0x4D29210E)) ^ v514 ^ 0x26949087 ^ v515 ^ v516 ^ *(v506 + 4 * (6419 * v495 + 14802214 - 8768 * (((31350127 * (6419 * v495 + 14802214)) >> 32) >> 6)));
  *(v460 + 1305) = 77;
  *(v512 + 3051) = -89;
  v519 = LODWORD(STACK[0x5340]) + 1063398883 - ((2 * LODWORD(STACK[0x5340])) & 0x7EC45BC6);
  *(v496 + 3816) = 53;
  v520 = STACK[0xDCB0];
  v521 = v519 ^ 0x3F622DE3 ^ *(STACK[0xDCB0] + 4 * (6419 * HIBYTE(v503) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v503) + 9872422)) >> 32) >> 6)));
  v522 = STACK[0x56F0];
  *(v522 + 1586) = -121;
  v523 = v521 ^ *(v520 + 4 * (6419 * BYTE2(v507) - 8768 * (((1959383 * (6419 * BYTE2(v507))) >> 32) >> 2))) ^ *(v520 + 4 * (6419 * BYTE1(v517) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v517) + 1649683)) >> 32) >> 2))) ^ *(v520 + 4 * (6419 * v518 + 14802214 - 8768 * (((31350127 * (6419 * v518 + 14802214)) >> 32) >> 6)));
  v524 = *(v520 + 4 * (6419 * BYTE2(v517) - 8768 * (((1959383 * (6419 * BYTE2(v517))) >> 32) >> 2)));
  v525 = *(v520 + 4 * (6419 * BYTE1(v518) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v518) + 1649683)) >> 32) >> 2)));
  v526 = *(v520 + 4 * (6419 * v503 + 14802214 - 8768 * (((31350127 * (6419 * v503 + 14802214)) >> 32) >> 6)));
  v527 = STACK[0x5338];
  v528 = *(v520 + 4 * (6419 * HIBYTE(v517) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v517) + 9872422)) >> 32) >> 6)));
  v529 = *(v520 + 4 * (6419 * BYTE2(v518) - 8768 * (((1959383 * (6419 * BYTE2(v518))) >> 32) >> 2)));
  v530 = (v527 + 803187603 - ((2 * v527) & 0x5FBF5726)) ^ 0x2FDFAB93 ^ *(v520 + 4 * (6419 * HIBYTE(v507) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v507) + 9872422)) >> 32) >> 6)));
  v531 = *(v520 + 4 * (6419 * BYTE1(v503) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v503) + 1649683)) >> 32) >> 2)));
  LODWORD(v520) = *(v520 + 4 * (6419 * v507 + 14802214 - 8768 * (((31350127 * (6419 * v507 + 14802214)) >> 32) >> 6)));
  v532 = v524 ^ v525;
  v533 = (6419 * HIBYTE(v518) + 9872422) % 0x2240u;
  *(STACK[0x5710] + 304) = 119;
  LODWORD(v512) = v530 ^ v532 ^ v526;
  v534 = (v527 - 386424404 - ((2 * v527) & 0xD1EF4358)) ^ LODWORD(STACK[0x5420]) ^ 0xE8F7A1AC ^ v528 ^ v529 ^ v531 ^ v520;
  v535 = 6419 * BYTE1(v507) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v507) + 1649683)) >> 32) >> 2);
  v536 = LODWORD(STACK[0x5358]) + 922356878 - ((2 * LODWORD(STACK[0x5358])) & 0x6DF4191C);
  v537 = STACK[0xDCB0];
  v538 = *(STACK[0xDCB0] + 4 * v533);
  v513[835] = 73;
  *(STACK[0x52F8] + 691) = 66;
  v539 = *(v537 + 4 * (6419 * BYTE2(v503) - 8768 * (((1959383 * (6419 * BYTE2(v503))) >> 32) >> 2)));
  *(v496 + 3376) = 3;
  v540 = v536 ^ 0x36FA0C8E ^ v538 ^ v539 ^ *(v537 + 4 * v535) ^ *(v537 + 4 * (6419 * v517 + 14802214 - 8768 * (((31350127 * (6419 * v517 + 14802214)) >> 32) >> 6)));
  v541 = STACK[0xDCB8];
  *(v541 + 3529) = 47;
  *(v541 + 836) = 8;
  *(v522 + 418) = -7;
  v542 = *(v537 + 4 * (6419 * HIBYTE(v523) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v523) + 9872422)) >> 32) >> 6)));
  v543 = *(v537 + 4 * (6419 * BYTE2(v512) - 8768 * (((1959383 * (6419 * BYTE2(v512))) >> 32) >> 2)));
  v544 = *(v537 + 4 * (6419 * BYTE1(v534) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v534) + 1649683)) >> 32) >> 2)));
  v545 = *(v537 + 4 * (6419 * v540 + 14802214 - 8768 * (((31350127 * (6419 * v540 + 14802214)) >> 32) >> 6)));
  v546 = *(v537 + 4 * (6419 * BYTE2(v534) - 8768 * (((1959383 * (6419 * BYTE2(v534))) >> 32) >> 2)));
  v547 = STACK[0xDCB0];
  v548 = *(STACK[0xDCB0] + 4 * (6419 * BYTE3(v512) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v512) + 9872422)) >> 32) >> 6)));
  LODWORD(v520) = *(STACK[0xDCB0] + 4 * (6419 * BYTE1(v540) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v540) + 1649683)) >> 32) >> 2)));
  *(v541 + 4864) = 36;
  v549 = STACK[0x5350];
  LODWORD(v537) = (v549 - 881996922 - ((2 * v549) & 0x96DB970C)) ^ 0xCB6DCB86 ^ v542 ^ v543 ^ v544 ^ v545;
  v550 = LODWORD(STACK[0x5360]) - 1660373028 - ((2 * LODWORD(STACK[0x5360])) & 0x3A116FB8);
  v551 = v527 ^ 0x3916931D ^ (v549 + 957780765 - ((2 * v549) & 0x722D263A)) ^ v546 ^ v520 ^ v548 ^ *(v547 + 4 * (6419 * v523 + 14802214 - 8768 * (((31350127 * (6419 * v523 + 14802214)) >> 32) >> 6)));
  LODWORD(v541) = *(v547 + 4 * (6419 * HIBYTE(v534) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v534) + 9872422)) >> 32) >> 6)));
  v513[547] = -88;
  v552 = v550 ^ 0x9D08B7DC ^ v541 ^ *(v547 + 4 * (6419 * BYTE2(v540) - 8768 * (((1959383 * (6419 * BYTE2(v540))) >> 32) >> 2))) ^ *(v547 + 4 * (6419 * v512 + 14802214 - 8768 * (((31350127 * (6419 * v512 + 14802214)) >> 32) >> 6))) ^ *(v547 + 4 * (6419 * BYTE1(v523) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v523) + 1649683)) >> 32) >> 2)));
  *(STACK[0x57C0] + 668) = 94;
  v553 = *(v547 + 4 * (6419 * HIBYTE(v540) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v540) + 9872422)) >> 32) >> 6)));
  v554 = *(v547 + 4 * (6419 * BYTE2(v523) - 8768 * (((1959383 * (6419 * BYTE2(v523))) >> 32) >> 2)));
  *(STACK[0x5770] + 812) = -122;
  v555 = *(v547 + 4 * (6419 * BYTE1(v512) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v512) + 1649683)) >> 32) >> 2)));
  v556 = STACK[0x57B0];
  *(STACK[0x57B0] + 1419) = 38;
  v557 = (LODWORD(STACK[0x5378]) + 958968569 - ((2 * LODWORD(STACK[0x5378])) & 0x725165F2)) ^ 0x3928B2F9 ^ v553 ^ v554;
  v558 = v555 ^ *(v547 + 4 * (6419 * v534 + 14802214 - 8768 * (((31350127 * (6419 * v534 + 14802214)) >> 32) >> 6)));
  v559 = STACK[0xDCB8];
  *(v559 + 3180) = 56;
  LODWORD(v512) = 6419 * (((v552 >> 7) & 2) + (BYTE1(v552) ^ 0x101));
  v560 = STACK[0xDCB0];
  v561 = *(STACK[0xDCB0] + 4 * (6419 * BYTE2(v551) - 8768 * (((1959383 * (6419 * BYTE2(v551))) >> 32) >> 2)));
  v562 = *(STACK[0xDCB0] + 4 * (6419 * BYTE3(v537) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v537) + 9872422)) >> 32) >> 6)));
  *(STACK[0x5740] + 3156) = -106;
  LODWORD(v512) = *(v560 + 4 * (v512 - 8768 * (((1959383 * v512) >> 32) >> 2)));
  v563 = v557 ^ v558;
  *(v559 + 4849) = -16;
  LODWORD(v541) = (6419 * HIBYTE(v551) + 9872422) & 0x7FFFFF | 0x800000;
  v564 = (LODWORD(STACK[0x5368]) + 187692011 - ((2 * LODWORD(STACK[0x5368])) & 0x165FE7D6)) ^ v561 ^ 0xB2FF3EB ^ v562 ^ v512 ^ *(v560 + 4 * (6419 * v563 + 14802214 - 8768 * (((31350127 * (6419 * v563 + 14802214)) >> 32) >> 6)));
  LODWORD(v512) = *(v560 + 4 * (v541 - 8768 * (((1959383 * v541) >> 32) >> 2)));
  v565 = STACK[0x5750];
  *(STACK[0x5750] + 3323) = 15;
  v566 = *(v560 + 4 * (6419 * BYTE2(v552) - 8768 * (((1959383 * (6419 * BYTE2(v552))) >> 32) >> 2)));
  v567 = *(v560 + 4 * ((6419 * BYTE1(v563) + 1649683) % 0x2240));
  *(v559 + 1587) = -119;
  v568 = LODWORD(STACK[0x5370]) + 787688821 - ((2 * LODWORD(STACK[0x5370])) & 0x5DE65AEA);
  LODWORD(v559) = *(v560 + 4 * (6419 * v537 + 14802214 - 8768 * (((31350127 * (6419 * v537 + 14802214)) >> 32) >> 6)));
  *(STACK[0x5760] + 2026) = -125;
  LODWORD(v541) = *(v560 + 4 * (6419 * BYTE2(v563) - 8768 * (((1959383 * (6419 * BYTE2(v563))) >> 32) >> 2)));
  LODWORD(v512) = v568 ^ v512 ^ 0x2EF32D75;
  v569 = 6419 * BYTE1(v537) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v537) + 1649683)) >> 32) >> 2);
  LODWORD(v559) = v566 ^ v567 ^ v559;
  v570 = 6419 * HIBYTE(v563) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v563) + 9872422)) >> 32) >> 6);
  v571 = v512 ^ v559;
  v572 = 6419 * BYTE2(v537) - 17536 * (((1959383 * (6419 * BYTE2(v537))) >> 32) >> 3);
  v573 = STACK[0x5380];
  LODWORD(v560) = v541 ^ 0x19469DA6 ^ *(v560 + 4 * (6419 * HIBYTE(v552) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v552) + 9872422)) >> 32) >> 6)));
  *(STACK[0x55E0] + 1965) = 1;
  v574 = STACK[0xDCB0];
  v575 = (v573 + 424058278 - ((2 * v573) & 0x328D3B4C)) ^ v560 ^ *(STACK[0xDCB0] + 4 * v569);
  if (v572 >> 6 >= 0x89)
  {
    v572 -= 8768;
  }

  v576 = v575 ^ *(v574 + 4 * (6419 * v551 + 14802214 - 8768 * (((31350127 * (6419 * v551 + 14802214)) >> 32) >> 6)));
  *(v556 + 2701) = 36;
  v577 = *(v574 + 4 * v570);
  v578 = *(v574 + 4 * v572);
  *(v565 + 1730) = 60;
  v579 = (LODWORD(STACK[0x5388]) - 1148784150 - ((2 * LODWORD(STACK[0x5388])) & 0x770DE3D4)) ^ v577 ^ 0xBB86F1EA ^ v578 ^ *(v574 + 4 * (6419 * BYTE1(v551) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v551) + 1649683)) >> 32) >> 2))) ^ *(v574 + 4 * (6419 * v552 + 14802214 - 8768 * (((31350127 * (6419 * v552 + 14802214)) >> 32) >> 6)));
  *(STACK[0x56C0] + 1222) = 87;
  v580 = STACK[0xDCB8];
  v580[1534] = 64;
  *(STACK[0x55C0] + 911) = -127;
  v581 = *(v574 + 4 * (6419 * BYTE2(v571) - 8768 * (((1959383 * (6419 * BYTE2(v571))) >> 32) >> 2)));
  v582 = *(v574 + 4 * (6419 * HIBYTE(v564) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v564) + 9872422)) >> 32) >> 6)));
  v583 = *(v574 + 4 * (6419 * BYTE1(v576) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v576) + 1649683)) >> 32) >> 2)));
  v584 = *(v574 + 4 * (6419 * v579 + 14802214 - 8768 * (((31350127 * (6419 * v579 + 14802214)) >> 32) >> 6)));
  v580[3385] = 123;
  v585 = STACK[0xDCB0];
  v586 = *(STACK[0xDCB0] + 4 * (6419 * HIBYTE(v571) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v571) + 9872422)) >> 32) >> 6)));
  v587 = *(STACK[0xDCB0] + 4 * (6419 * BYTE2(v576) - 8768 * (((1959383 * (6419 * BYTE2(v576))) >> 32) >> 2)));
  v580[5706] = 63;
  v588 = STACK[0x5390];
  v589 = (v588 + 1590572707 - ((2 * v588) & 0xBD9C6D46)) ^ v581 ^ 0x5ECE36A3 ^ v582 ^ v584 ^ v583;
  v590 = STACK[0x5398];
  v591 = v586 ^ 0xD06EA223 ^ v587;
  v592 = *(v585 + 4 * (6419 * BYTE2(v579) - 8768 * (((1959383 * (6419 * BYTE2(v579))) >> 32) >> 2))) ^ *(v585 + 4 * (6419 * HIBYTE(v576) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v576) + 9872422)) >> 32) >> 6)));
  v593 = 6419 * BYTE1(v564) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v564) + 1649683)) >> 32) >> 2);
  v594 = v591 ^ *(v585 + 4 * (6419 * BYTE1(v579) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v579) + 1649683)) >> 32) >> 2))) ^ *(v585 + 4 * (6419 * v564 + 14802214 - 8768 * (((31350127 * (6419 * v564 + 14802214)) >> 32) >> 6)));
  v595 = 6419 * HIBYTE(v579) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v579) + 9872422)) >> 32) >> 6);
  v596 = 6419 * BYTE2(v564) - 8768 * (((1959383 * (6419 * BYTE2(v564))) >> 32) >> 2);
  v597 = 6419 * v571 + 14802214 - 17536 * (((31350127 * (6419 * v571 + 14802214)) >> 32) >> 7);
  v598 = v597 - 8768;
  if (v597 >> 6 < 0x89)
  {
    v598 = 6419 * v571 + 14802214 - 17536 * (((31350127 * (6419 * v571 + 14802214)) >> 32) >> 7);
  }

  v599 = (v590 - 798055901 - ((2 * v590) & 0xA0DD4446)) ^ v594;
  *(STACK[0x55A0] + 3429) = -68;
  v600 = *(v585 + 4 * v593);
  v601 = (((v592 ^ 0x3379C117) + 1751523790) ^ ((v592 ^ 0xC7382DB3) - 1675113110) ^ ((v592 ^ 0xF441ECA4) - 1352790913)) - 2 * ((v600 ^ 0x42388FE6) & v592) + (((v600 ^ 0xC47F55F1) + 998287887) ^ ((v600 ^ 0x113D91FA) - 289247738) ^ ((v600 ^ 0x977A4BED) + 1753592851)) + 1316277318;
  v602 = (v601 ^ 0x123BC2F4) & (2 * (v601 & 0x98A3E2C5)) ^ v601 & 0x98A3E2C5;
  v603 = ((2 * (v601 ^ 0x1339C776)) ^ 0x17344B66) & (v601 ^ 0x1339C776) ^ (2 * (v601 ^ 0x1339C776)) & 0x8B9A25B2;
  v604 = (v603 ^ 0x3100120) & (4 * v602) ^ v602;
  v605 = ((4 * (v603 ^ 0x888A2491)) ^ 0x2E6896CC) & (v603 ^ 0x888A2491) ^ (4 * (v603 ^ 0x888A2491)) & 0x8B9A25B0;
  v606 = (v605 ^ 0xA080483) & (16 * v604) ^ v604;
  v607 = ((16 * (v605 ^ 0x81922133)) ^ 0xB9A25B30) & (v605 ^ 0x81922133) ^ (16 * (v605 ^ 0x81922133)) & 0x8B9A25B0;
  v608 = v606 ^ 0x8B9A25B3 ^ (v607 ^ 0x89820100) & (v606 << 8);
  v609 = (LODWORD(STACK[0x53A0]) - ((2 * LODWORD(STACK[0x53A0])) & 0xD9638F68) + 1823590324) ^ *(v585 + 4 * v598) ^ v601;
  v610 = *(v585 + 4 * v595);
  v611 = *(v585 + 4 * v596);
  *(v565 + 2261) = -86;
  v612 = 6419 * ((v576 ^ 0x902) + ((2 * v576) & 4));
  v613 = STACK[0x53A8];
  v614 = (v613 + 2043627080 - ((2 * v613) & 0xF39E8C90)) ^ v610 ^ 0x79CF4648 ^ v611 ^ *(v585 + 4 * (6419 * BYTE1(v571) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v571) + 1649683)) >> 32) >> 2))) ^ *(v585 + 4 * (v612 - 8768 * (((31350127 * v612) >> 32) >> 6)));
  v615 = v609 ^ (2 * ((v608 << 16) & 0xB9A0000 ^ v608 ^ ((v608 << 16) ^ 0x25B30000) & (((v607 ^ 0x2182483) << 8) & 0xB9A0000 ^ 0x19A0000 ^ (((v607 ^ 0x2182483) << 8) ^ 0x1A250000) & (v607 ^ 0x2182483)))) ^ 0xA23AE1F1;
  *(STACK[0x52F8] + 858) = 0x80;
  v616 = STACK[0xDCB8];
  *(v616 + 5926) = -77;
  v617 = *(v585 + 4 * ((6419 * HIBYTE(v589) + 52751342) % 0x2240u));
  v618 = *(v585 + 4 * ((6419 * BYTE2(v599) + 47770198) % 0x2240));
  *(v616 + 4735) = 57;
  v619 = *(v585 + 4 * (6419 * BYTE1(v615) + 13158950 - 8768 * (((31350127 * (6419 * BYTE1(v615) + 13158950)) >> 32) >> 6)));
  v620 = *(v585 + 4 * ((6419 * v614 + 49439138) % 0x2240));
  *(v616 + 525) = -99;
  v621 = STACK[0x53B0];
  v622 = STACK[0x53B0] & 0xFFFFFF90 ^ 0xFFFFFFB6;
  v623 = v621 ^ (2 * ((v621 ^ 0x34) & (2 * ((v621 ^ 0x34) & (2 * ((v621 ^ 0x34) & (2 * ((v621 ^ 0x34) & (2 * ((v621 ^ 0x34) & (2 * v622) ^ v622)) ^ v622)) ^ v622)) ^ v622)) ^ v622)) ^ 0x90;
  LODWORD(v616) = LODWORD(STACK[0x5410]) ^ 0x939DF8A9 ^ LODWORD(STACK[0x5408]) ^ LODWORD(STACK[0x53B8]) ^ LODWORD(STACK[0x5400]) ^ v588 ^ ((v623 << 24) - 1818363735 - ((v623 << 25) & 0x26000000));
  v624 = v616 ^ v573;
  v625 = (v616 - 1151704969 - ((2 * v616) & 0x76B4C0EE)) ^ v617 ^ 0xBB5A6077 ^ v618 ^ v620 ^ v619;
  v626 = STACK[0xDCB0];
  v627 = ((v616 ^ v590) - 2044506691 - ((2 * (v616 ^ v590)) & 0xC469B7A)) ^ 0x86234DBD ^ *(v626 + 4 * ((6419 * HIBYTE(v599) + 52751342) % 0x2240u)) ^ *(v626 + 4 * (6419 * BYTE1(v614) + 13158950 - 8768 * (((31350127 * (6419 * BYTE1(v614) + 13158950)) >> 32) >> 6))) ^ *(v626 + 4 * ((6419 * v589 + 49439138) % 0x2240));
  v628 = *(STACK[0xDCB0] + 4 * ((6419 * BYTE2(v615) + 47770198) % 0x2240));
  LODWORD(v616) = *(STACK[0xDCB0] + 4 * (6419 * HIBYTE(v615) + 52742574 - 8768 * (((62700253 * (6419 * HIBYTE(v615) + 52742574)) >> 32) >> 7)));
  v629 = *(STACK[0xDCB0] + 4 * (6419 * BYTE1(v589) + 13158950 - 8768 * (((31350127 * (6419 * BYTE1(v589) + 13158950)) >> 32) >> 6)));
  v630 = *(STACK[0xDCB0] + 4 * ((6419 * BYTE2(v614) + 47770198) % 0x2240));
  v631 = *(STACK[0xDCB0] + 4 * ((6419 * v599 + 49439138) % 0x2240));
  v632 = STACK[0xDCB8];
  v632[6040] = -71;
  v633 = (v624 + 1728128523 - ((2 * v624) & 0xCE024C16)) ^ 0x6701260B ^ v629 ^ v630 ^ v631;
  v634 = v627 ^ v628;
  v635 = v633 ^ v616;
  v632[692] = 99;
  *(STACK[0x5770] + 3414) = 57;
  v636 = *(v626 + 4 * ((6419 * HIBYTE(v614) + 52751342) % 0x2240u));
  *(STACK[0x53F0] + 3960) = -47;
  v637 = *(v626 + 4 * (6419 * BYTE1(v599) + 13158950 - 8768 * (((31350127 * (6419 * BYTE1(v599) + 13158950)) >> 32) >> 6)));
  v638 = *(v626 + 4 * ((6419 * v615 + 49439138) % 0x2240));
  v639 = *(v626 + 4 * ((6419 * BYTE2(v589) + 47770198) % 0x2240));
  v632[5797] = -26;
  v640 = v613 ^ 0x2C29D3B8 ^ v636 ^ v637 ^ (v624 + 740938680 - ((2 * v624) & 0x5853A770)) ^ v639 ^ v638;
  v632[2687] = 32;
  v632[616] = 68;
  v641 = v632[5621 * v634 - 6152 * (((2792567 * (5621 * v634)) >> 32) >> 2)];
  v642 = v632[5621 * BYTE2(v634) + 29111159 - 6152 * (((89362129 * (5621 * BYTE2(v634) + 29111159)) >> 32) >> 7)];
  LODWORD(STACK[0x5408]) = v642;
  v643 = v632[5621 * HIBYTE(v640) + 11579260 - 6152 * (((44681065 * (5621 * HIBYTE(v640) + 11579260)) >> 32) >> 6)];
  v644 = v642 & 0xC ^ 0x6C;
  LODWORD(STACK[0x5400]) = LODWORD(STACK[0x4F30]) ^ LODWORD(STACK[0x4F38]) ^ v644 ^ (v642 ^ 0x34) & (2 * ((v642 ^ 0x34) & (2 * ((v642 ^ 0x34) & (2 * ((v642 ^ 0x34) & (2 * v644) ^ v644)) ^ v644)) ^ v644));
  v645 = v641 & 0x2E ^ 0x5D;
  v646 = (v641 ^ 0x34) & (2 * ((v641 ^ 0x34) & (2 * ((v641 ^ 0x34) & (2 * ((v641 ^ 0x34) & (2 * ((v641 ^ 0x34) & (2 * (v645 ^ v641 & 0x1A)) ^ v645)) ^ v645)) ^ v645)) ^ v645));
  LODWORD(v626) = LODWORD(STACK[0x4F20]) ^ LODWORD(STACK[0x4F28]) ^ v645;
  v647 = LODWORD(STACK[0x5198]) ^ LODWORD(STACK[0x4E38]) ^ v641;
  LODWORD(STACK[0x5420]) = v643;
  v648 = v643 & 0x16 ^ 0xFFFFFFF1;
  v649 = LODWORD(STACK[0x4F40]) ^ LODWORD(STACK[0x4F48]) ^ v648;
  LODWORD(v616) = (v643 ^ 0x34) & (2 * ((v643 ^ 0x34) & (2 * ((v643 ^ 0x34) & (2 * ((v643 ^ 0x34) & (2 * ((v643 ^ 0x34) & (2 * (v648 ^ v643 & 0x22222222)) ^ v648)) ^ v648)) ^ v648)) ^ v648));
  v650 = 5621 * (((v625 >> 7) & 0x34) + (BYTE1(v625) ^ 0xA1A));
  v651 = v650 - 6152 * (((44681065 * v650) >> 32) >> 6);
  v652 = STACK[0xDCB8];
  LOBYTE(v651) = *(STACK[0xDCB8] + v651);
  v653 = v651 & 0xE ^ 0xED;
  v654 = v626 ^ v646;
  v655 = LODWORD(STACK[0x5188]) ^ LODWORD(STACK[0x4E34]) ^ v651 ^ (2 * (LOBYTE(STACK[0x4F10]) ^ LOBYTE(STACK[0x4F18]) ^ v653 ^ (v651 ^ 0x34) & (2 * ((v651 ^ 0x34) & (2 * ((v651 ^ 0x34) & (2 * ((v651 ^ 0x34) & (2 * ((v651 ^ 0x34) & (2 * (v653 ^ v651 & 0x3A)) ^ v653)) ^ v653)) ^ v653)) ^ v653))));
  *(v652 + 730) = -110;
  v656 = *(v652 + 5621 * v625 - 6152 * (((2792567 * (5621 * v625)) >> 32) >> 2));
  v657 = v656 & 0xFFFFFFE8 ^ 0xFFFFFFBA;
  v658 = (v656 ^ 0x34) & (2 * ((v656 ^ 0x34) & (2 * ((v656 ^ 0x34) & (2 * ((v656 ^ 0x34) & (2 * ((v656 ^ 0x34) & (2 * v657) ^ v657)) ^ v657)) ^ v657)) ^ v657));
  v659 = LODWORD(STACK[0x4F00]) ^ LODWORD(STACK[0x4F08]) ^ v657;
  LODWORD(v626) = *(v652 + 5621 * BYTE2(v640) + 29111159 - 6152 * (((89362129 * (5621 * BYTE2(v640) + 29111159)) >> 32) >> 7));
  v660 = v626 & 0xFFFFFFE4 ^ 0xFFFFFFB8;
  LODWORD(STACK[0x5410]) = LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x4E28]) ^ v626 ^ (2 * (LODWORD(STACK[0x4EF0]) ^ LODWORD(STACK[0x4EF8]) ^ v660 ^ (v626 ^ 0x34) & (2 * ((v626 ^ 0x34) & (2 * ((v626 ^ 0x34) & (2 * ((v626 ^ 0x34) & (2 * v660) ^ v660)) ^ v660)) ^ v660))));
  LODWORD(STACK[0x53A8]) = v647 ^ (2 * v654);
  LODWORD(STACK[0x53B8]) = v649 ^ v616;
  LODWORD(STACK[0x53A0]) = v659 ^ v658;
  *(v652 + 3256) = -7;
  v661 = *(v652 + 5621 * BYTE2(v635) + 29111159 - 6152 * (((89362129 * (5621 * BYTE2(v635) + 29111159)) >> 32) >> 7));
  LODWORD(v626) = v661 & 0xFFFFFFF4 ^ 0x20;
  v662 = *(v652 + 5621 * BYTE2(v625) + 29111159 - 6152 * (((89362129 * (5621 * BYTE2(v625) + 29111159)) >> 32) >> 7));
  LODWORD(STACK[0x53B0]) = LODWORD(STACK[0x4EE0]) ^ LODWORD(STACK[0x4EE8]) ^ v626 ^ (v661 ^ 0x34) & (2 * ((v661 ^ 0x34) & (2 * ((v661 ^ 0x34) & (2 * ((v661 ^ 0x34) & (2 * v626) ^ v626)) ^ v626)) ^ v626));
  v663 = v662 & 0xFFFFFFA0 ^ 0xFFFFFF9E;
  v664 = LODWORD(STACK[0x4ED0]) ^ LODWORD(STACK[0x4ED8]) ^ v663 ^ (v662 ^ 0x34) & (2 * ((v662 ^ 0x34) & (2 * ((v662 ^ 0x34) & (2 * ((v662 ^ 0x34) & (2 * ((v662 ^ 0x34) & (2 * v663) ^ v663)) ^ v663)) ^ v663)) ^ v663));
  LOBYTE(v626) = *(v652 + 5621 * HIBYTE(v625) + 11579260 - 6152 * (((44681065 * (5621 * HIBYTE(v625) + 11579260)) >> 32) >> 6));
  LOBYTE(v625) = v626 & 0x82 ^ 0x2F;
  LOBYTE(v663) = *(v652 + 5621 * HIBYTE(v634) + 11579260 - 6152 * (((44681065 * (5621 * HIBYTE(v634) + 11579260)) >> 32) >> 6));
  v665 = v663 & 0x64 ^ 0x78;
  v666 = LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x4E20]) ^ v663 ^ (2 * (LOBYTE(STACK[0x4EB0]) ^ LOBYTE(STACK[0x4EB8]) ^ v665 ^ (v663 ^ 0x34) & (2 * ((v663 ^ 0x34) & (2 * ((v663 ^ 0x34) & (2 * ((v663 ^ 0x34) & (2 * v665) ^ v665)) ^ v665)) ^ v665))));
  LOBYTE(v659) = LODWORD(STACK[0x5180]) ^ LODWORD(STACK[0x4E24]) ^ v626 ^ (2 * (LOBYTE(STACK[0x4EC0]) ^ LOBYTE(STACK[0x4EC8]) ^ v625 ^ (v626 ^ 0x34) & (2 * ((v626 ^ 0x34) & (2 * ((v626 ^ 0x34) & (2 * ((v626 ^ 0x34) & (2 * ((v626 ^ 0x34) & (2 * ((v626 ^ 0x34) & 0x36 ^ v625)) ^ v625)) ^ v625)) ^ v625)) ^ v625))));
  *(STACK[0x5700] + 1017) = 94;
  v667 = *(v652 + 5621 * BYTE1(v634) + 14535906 - 6152 * (((44681065 * (5621 * BYTE1(v634) + 14535906)) >> 32) >> 6));
  LODWORD(v626) = v667 & 0xFFFFFFBE ^ 5;
  LOBYTE(v658) = (v667 ^ 0x34) & (2 * ((v667 ^ 0x34) & (2 * ((v667 ^ 0x34) & (2 * ((v667 ^ 0x34) & (2 * ((v667 ^ 0x34) & (2 * v626) ^ v626)) ^ v626)) ^ v626)) ^ v626)) ^ v626;
  LODWORD(v626) = LODWORD(STACK[0x4EA0]) ^ LODWORD(STACK[0x4EA8]) ^ v626;
  LOBYTE(v658) = (v667 ^ 0x34) & (2 * v658);
  LOBYTE(v639) = LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x4E18]) ^ v667;
  LODWORD(v652) = *(v652 + 5621 * v640 - 6152 * (((2792567 * (5621 * v640)) >> 32) >> 2));
  v668 = v652 & 0xFFFFFFB6 ^ 0xFFFFFF81;
  v669 = (v652 ^ 0x34) & (2 * ((v652 ^ 0x34) & (2 * ((v652 ^ 0x34) & (2 * ((v652 ^ 0x34) & (2 * ((v652 ^ 0x34) & (2 * (v652 & (2 * v668) ^ v668)) ^ v668)) ^ v668)) ^ v668)) ^ v668));
  v670 = LODWORD(STACK[0x4E90]) ^ LODWORD(STACK[0x4E98]) ^ v668;
  v671 = LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x4E10]) ^ v652;
  v672 = STACK[0xDCB8];
  *(v672 + 4758) = 29;
  v673 = STACK[0x5170];
  LOBYTE(v652) = LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x5170]) ^ v662 ^ (2 * v664);
  LOBYTE(v626) = v626 ^ v658;
  STACK[0x5398] = v672;
  v674 = *(v672 + 5621 * v635 - 6152 * (((2792567 * (5621 * v635)) >> 32) >> 2));
  v675 = v674 & 0xE6 ^ 0x39;
  LODWORD(STACK[0x5390]) = LODWORD(STACK[0x4E80]) ^ LODWORD(STACK[0x4E88]) ^ v675 ^ (v674 ^ 0x34) & (2 * ((v674 ^ 0x34) & (2 * ((v674 ^ 0x34) & (2 * ((v674 ^ 0x34) & (2 * ((v674 ^ 0x34) & (2 * (v675 ^ v674 & 0x12)) ^ v675)) ^ v675)) ^ v675)) ^ v675));
  LOBYTE(v668) = v670 ^ v669;
  v676 = *(v672 + 5621 * BYTE1(v635) + 14535906 - 6152 * (((44681065 * (5621 * BYTE1(v635) + 14535906)) >> 32) >> 6));
  v677 = 5621 * HIBYTE(v635) + 11579260 - 6152 * (((44681065 * (5621 * HIBYTE(v635) + 11579260)) >> 32) >> 6);
  v678 = v676 & 0xFFFFFFB6 ^ 0xFFFFFF81;
  LOBYTE(v658) = (v676 ^ 0x34) & (2 * ((v676 ^ 0x34) & (2 * ((v676 ^ 0x34) & (2 * ((v676 ^ 0x34) & (2 * ((v676 ^ 0x34) & (2 * (v676 & (2 * v678) ^ v678)) ^ v678)) ^ v678)) ^ v678)) ^ v678));
  v679 = LODWORD(STACK[0x4E70]) ^ LODWORD(STACK[0x4E78]) ^ v678;
  LOBYTE(v647) = v639 ^ (2 * v626);
  LODWORD(v626) = 5621 * BYTE1(v640) + 14535906 - 6152 * (((44681065 * (5621 * BYTE1(v640) + 14535906)) >> 32) >> 6);
  v680 = v671 ^ (2 * v668);
  v681 = STACK[0xDCB8];
  v682 = *(STACK[0xDCB8] + v677);
  v683 = v682 & 0xFFFFFFE4 ^ 0xFFFFFFB8;
  v684 = v679 ^ v658;
  LODWORD(STACK[0x5388]) = 5621 * (v655 ^ 0xEA) + 24715537 - 6152 * (((89362129 * (5621 * (v655 ^ 0xEAu) + 24715537)) >> 32) >> 7);
  LODWORD(STACK[0x5380]) = 5621 * (v652 ^ 0xCA) + 21803859 - 6152 * (((89362129 * (5621 * (v652 ^ 0xCAu) + 21803859)) >> 32) >> 7);
  v685 = 5621 * (v659 ^ 0x73) + 2889194 - 12304 * (((11170267 * (5621 * (v659 ^ 0x73u) + 2889194)) >> 32) >> 5);
  v686 = LODWORD(STACK[0x4E60]) ^ LODWORD(STACK[0x4E68]) ^ v683 ^ (v682 ^ 0x34) & (2 * ((v682 ^ 0x34) & (2 * ((v682 ^ 0x34) & (2 * ((v682 ^ 0x34) & (2 * v683) ^ v683)) ^ v683)) ^ v683));
  LOBYTE(v683) = LODWORD(STACK[0x5178]) ^ v673 ^ v656 ^ (2 * LOBYTE(STACK[0x53A0]));
  LOBYTE(v656) = LODWORD(STACK[0x51A8]) ^ v673 ^ LODWORD(STACK[0x5408]) ^ (2 * LOBYTE(STACK[0x5400]));
  LODWORD(STACK[0x5408]) = 5621 * (v666 ^ 0xEC) + 2889194 - 6152 * (((11170267 * (5621 * (v666 ^ 0xECu) + 2889194)) >> 32) >> 4);
  v687 = 5621 * (v683 ^ 0x80) + 20336778 - 6152 * (((89362129 * (5621 * (v683 ^ 0x80u) + 20336778)) >> 32) >> 7);
  v688 = *(v681 + v626);
  LODWORD(v626) = v688 & 0x92 ^ 0xFFFFFFB7;
  v689 = LODWORD(STACK[0x51B0]) ^ LODWORD(STACK[0x4E08]) ^ v688 ^ (2 * (LODWORD(STACK[0x4E44]) ^ LODWORD(STACK[0x4E50]) ^ v626 ^ (v688 ^ 0x34) & (2 * ((v688 ^ 0x34) & (2 * ((v688 ^ 0x34) & (2 * ((v688 ^ 0x34) & (2 * ((v688 ^ 0x34) & (2 * (v626 ^ v688 & 0x26)) ^ v626)) ^ v626)) ^ v626)) ^ v626))));
  v690 = 5621 * (LODWORD(STACK[0x53A8]) ^ 0x51) + 20336778;
  v691 = v690 - 6152 * (((89362129 * v690) >> 32) >> 7);
  v692 = 5621 * (v656 ^ 0xD8) + 21803859 - 6152 * (((89362129 * (5621 * (v656 ^ 0xD8u) + 21803859)) >> 32) >> 7);
  v693 = 5621 * (v647 ^ 0xAE) + 24715537 - 6152 * (((89362129 * (5621 * (v647 ^ 0xAEu) + 24715537)) >> 32) >> 7);
  v694 = 5621 * ((LODWORD(STACK[0x5600]) ^ v673 ^ v682 ^ (2 * v686)) ^ 0x22) + 2889194;
  v695 = v694 - 6152 * (((11170267 * v694) >> 32) >> 4);
  if (v685 >> 3 >= 0x301)
  {
    v697 = v685 - 6152;
  }

  else
  {
    v697 = v685;
  }

  v696 = LODWORD(STACK[0x51C8]) ^ v673 ^ v661 ^ (2 * LODWORD(STACK[0x53B0])) ^ 0x52;
  v698 = 5621 * v696 + 21803859 - 6152 * (((89362129 * (5621 * v696 + 21803859)) >> 32) >> 7);
  LOBYTE(v696) = LODWORD(STACK[0x5540]) ^ v673 ^ v676 ^ (2 * v684);
  v699 = 5621 * ((LODWORD(STACK[0x51A0]) ^ v673 ^ LODWORD(STACK[0x5420]) ^ (2 * LOBYTE(STACK[0x53B8]))) ^ 0xD6) + 2889194;
  v700 = v699 - 6152 * (((11170267 * v699) >> 32) >> 4);
  LOBYTE(v699) = LODWORD(STACK[0x51D8]) ^ v673 ^ v674 ^ (2 * LOBYTE(STACK[0x5390]));
  v701 = 5621 * (LODWORD(STACK[0x5410]) ^ 0x4D) + 21803859;
  v702 = 5621 * (v699 ^ 0x20) + 20336778 - 6152 * (((89362129 * (5621 * (v699 ^ 0x20u) + 20336778)) >> 32) >> 7);
  v703 = *(STACK[0x5398] + LODWORD(STACK[0x5380]));
  v704 = *(STACK[0x5398] + v697);
  v705 = 5621 * (((2 * (v689 ^ 0x8E)) & 0x5A) + (v689 ^ 0x11A3));
  v706 = *(v681 + LODWORD(STACK[0x5388]));
  v707 = *(v681 + LODWORD(STACK[0x5408]));
  v708 = *(v681 + v687);
  v709 = *(v681 + v691);
  LODWORD(STACK[0x5400]) = v709;
  v710 = *(v681 + v692);
  v711 = *(v681 + v695);
  v712 = *(v681 + v693);
  *(v681 + 1390) = 86;
  *(v681 + 601) = -28;
  v713 = *(v681 + v698);
  v714 = *(v681 + 5621 * (v696 ^ 0x72) + 24715537 - 6152 * (((89362129 * (5621 * (v696 ^ 0x72u) + 24715537)) >> 32) >> 7));
  LODWORD(STACK[0x5420]) = v714;
  v715 = *(v681 + 5621 * (v680 ^ 0x4D) + 20336778 - 6152 * (((89362129 * (5621 * (v680 ^ 0x4Du) + 20336778)) >> 32) >> 7));
  v716 = *(v681 + v701 - 6152 * (((89362129 * v701) >> 32) >> 7));
  v717 = *(v681 + v702);
  v718 = *(v681 + v705 - 6152 * (((44681065 * v705) >> 32) >> 6));
  v719 = *(v681 + v700);
  LODWORD(STACK[0x53B8]) = v709 < 0x4C;
  LODWORD(STACK[0x53A8]) = v712 < 0x4C;
  LODWORD(STACK[0x53A0]) = v711 < 0x4C;
  LODWORD(STACK[0x53B0]) = v713 < 0x4C;
  LODWORD(STACK[0x5410]) = v714 < 0x4C;
  LODWORD(STACK[0x5408]) = v717 < 0x4C;
  v720 = 6419 * (v719 | ((v719 < 0x4C) << 8)) + 45626252;
  v721 = STACK[0xDCB0];
  v722 = *(STACK[0xDCB0] + 4 * (v720 % 0x2240));
  *(STACK[0xDCB8] + 4462) = 43;
  v723 = *(v721 + 4 * ((6419 * (v716 + 78110035 + ((v716 < 0x4C) << 8) + 3060) + 1143887611) % 0x2240)) ^ v722 ^ *(v721 + 4 * ((6419 * (v715 | ((v715 < 0x4C) << 8)) + 25830056) % 0x2240)) ^ *(v721 + 4 * ((6419 * (v718 | ((v718 < 0x4C) << 8)) + 11027842) % 0x2240));
  v724 = *(v721 + 4 * ((6419 * (v704 | ((v704 < 0x4C) << 8)) + 45626252) % 0x2240));
  v725 = 6419 * (v703 | ((v703 < 0x4C) << 8)) + 40670784;
  v726 = *(v721 + 4 * ((6419 * (v706 | ((v706 < 0x4C) << 8)) + 11027842) % 0x2240));
  v727 = *(v721 + 4 * ((6419 * BYTE2(v723) + 51108078) % 0x2240));
  v728 = *(v721 + 4 * (v725 % 0x2240));
  v729 = STACK[0x5730];
  v729[1700] = -7;
  v730 = STACK[0xDCB0];
  v731 = *(STACK[0xDCB0] + 4 * ((6419 * (v708 | ((v708 < 0x4C) << 8)) + 25830056) % 0x2240));
  v732 = *(STACK[0xDCB0] + 4 * (6419 * v723 + 8229158 - 8768 * (((1959383 * (6419 * v723 + 8229158)) >> 32) >> 2)));
  v733 = *(STACK[0xDCB0] + 4 * ((6419 * HIBYTE(v723) + 39515364) % 0x2240u));
  v734 = *(STACK[0xDCB0] + 4 * (6419 * BYTE1(v723) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v723) + 23024953)) >> 32) >> 7)));
  v735 = *(STACK[0x57A0] + 2367);
  *(STACK[0xDCB8] + 5782) = 64;
  v736 = v707 | ((v707 < 0x4C) << 8);
  v737 = v710 | ((v710 < 0x4C) << 8);
  v738 = (6419 * v736 + 45626252) % 0x2240u;
  v739 = v735 & 0xFFFFFF8A ^ 0xFFFFFFAB;
  v740 = v712 | (LODWORD(STACK[0x53A8]) << 8);
  v741 = v711 | (LODWORD(STACK[0x53A0]) << 8);
  v742 = v724 ^ v726 ^ 0x6477641C ^ v728 ^ v731;
  LODWORD(STACK[0x5230]) = v742;
  v743 = v727 ^ 0x1D3F2C83 ^ v732 ^ v733;
  v744 = (v735 ^ 0x34) & (2 * ((v735 ^ 0x34) & (2 * ((v735 ^ 0x34) & (2 * ((v735 ^ 0x34) & (2 * ((v735 ^ 0x34) & (2 * ((v735 ^ 0x34) & 0x3E ^ v739)) ^ v739)) ^ v739)) ^ v739)) ^ v739)) ^ v739;
  v745 = *(v730 + 4 * ((6419 * v737 + 40670784) % 0x2240u)) ^ 0x44934B3E ^ *(v730 + 4 * v738) ^ *(v730 + 4 * ((6419 * (LODWORD(STACK[0x5400]) | (LODWORD(STACK[0x53B8]) << 8)) + 25830056) % 0x2240u)) ^ *(v730 + 4 * ((6419 * v740 + 11027842) % 0x2240u));
  v746 = LODWORD(STACK[0x5420]) | (LODWORD(STACK[0x5410]) << 8);
  v747 = 6419 * (v713 | (LODWORD(STACK[0x53B0]) << 8)) + 40670784;
  v748 = v743 ^ v734 ^ (((v735 ^ (2 * v744) ^ 0x8A) << 24) + 490679427 - (((v735 ^ (2 * v744) ^ 0x8A) << 25) & 0x3A000000));
  v749 = 6419 * (v717 | (LODWORD(STACK[0x5408]) << 8)) + 25830056;
  v750 = (v748 + 1685546012 - ((2 * v748) & 0xC8EEC838)) ^ v742;
  LODWORD(STACK[0x5258]) = 2 * v750;
  LODWORD(STACK[0x5240]) = v750;
  *(STACK[0x55F0] + 1078) = -81;
  v751 = STACK[0xDCB0];
  v752 = *(v751 + 4 * ((6419 * v741 + 45626252) % 0x2240u)) ^ 0xA629F4D1 ^ *(v751 + 4 * (v749 % 0x2240)) ^ *(v751 + 4 * (v747 % 0x2240)) ^ *(v751 + 4 * ((6419 * v746 + 11027842) % 0x2240u));
  LODWORD(STACK[0x5228]) = v752;
  v753 = (v750 + 1150503742 - ((2 * v750) & 0x8926967C)) ^ v745;
  LODWORD(STACK[0x5220]) = v745;
  LODWORD(STACK[0x5270]) = v753;
  LODWORD(STACK[0x5268]) = 2 * v753;
  v754 = (v753 - 1507199791 - ((2 * v753) & 0x4C53E9A2)) ^ v752;
  LODWORD(STACK[0x5280]) = 2 * v754;
  v755 = v754;
  LODWORD(STACK[0x5248]) = v754;
  v729[16] = -26;
  v756 = STACK[0x5770];
  v757 = *(STACK[0x5770] + 615);
  v758 = v757 & 0xFFFFFFAA ^ 0x1B;
  v759 = *(STACK[0x5760] + 615);
  LODWORD(v730) = v759 & 0x30 | 0x46;
  v760 = v723 ^ 0xB9E4E556;
  LODWORD(STACK[0x5238]) = v723 ^ 0xB9E4E556;
  v761 = (v754 - 1176181418 - ((2 * v754) & 0x73C9CAAC)) ^ v723 ^ 0xB9E4E556;
  LODWORD(STACK[0x5278]) = v761;
  v762 = v759 ^ (2 * ((v759 ^ 0x34) & (2 * ((v759 ^ 0x34) & (2 * ((v759 ^ 0x34) & (2 * ((v759 ^ 0x34) & (2 * ((v759 ^ 0x34) & (2 * v730) ^ v730)) ^ v730)) ^ v730)) ^ v730)) ^ v730));
  v763 = *(v751 + 4 * ((6419 * BYTE2(v761) + 51108078) % 0x2240));
  v764 = STACK[0xDCB0];
  v765 = *(v764 + 4 * (6419 * BYTE1(v761) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v761) + 23024953)) >> 32) >> 7))) ^ v763 ^ *(v764 + 4 * (6419 * v761 + 8229158 - 8768 * (((1959383 * (6419 * v761 + 8229158)) >> 32) >> 2))) ^ *(v764 + 4 * ((6419 * HIBYTE(v761) + 39515364) % 0x2240u));
  v766 = v765 ^ (((v762 ^ 0x30) << 24) + 837241408 + (~((v762 ^ 0x30) << 25) | 0x9DFFFFFF) + 1) ^ 0x31E74A40;
  LODWORD(STACK[0x5218]) = 1150503743;
  LODWORD(v730) = (v766 + 1150503742 - 2 * (v766 & 0x44934B3F ^ v765 & 1)) ^ v745;
  LODWORD(STACK[0x5408]) = 2 * v730;
  LODWORD(STACK[0x5400]) = v730;
  v767 = (((v757 ^ 0x34) & (2 * ((v757 ^ 0x34) & (2 * ((v757 ^ 0x34) & (2 * ((v757 ^ 0x34) & (2 * ((v757 ^ 0x34) & (2 * ((v757 ^ 0x34) & 0x1E ^ v758)) ^ v758)) ^ v758)) ^ v758)) ^ v758)) ^ v758) << 25) ^ (v757 << 24);
  v768 = (v730 - 1176181418 - ((2 * v730) & 0x73C9CAAC)) ^ v760;
  v769 = 6419 * ((v730 + 86 - ((2 * v730) & 0xAC)) ^ v760) + 8229158;
  v770 = *(v764 + 4 * ((6419 * HIBYTE(v768) + 39515364) % 0x2240u)) ^ *(v764 + 4 * ((6419 * BYTE2(v768) + 51108078) % 0x2240)) ^ *(v764 + 4 * (6419 * BYTE1(v768) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v768) + 23024953)) >> 32) >> 7))) ^ *(v764 + 4 * (v769 - 8768 * (((1959383 * v769) >> 32) >> 2)));
  v771 = v766 ^ v750;
  LODWORD(STACK[0x5260]) = v771;
  v772 = v770 ^ ((v767 ^ 0xAA000000) + 998595193 - ((2 * (v767 ^ 0xAA000000)) & 0x76000000)) ^ v771;
  LODWORD(STACK[0x52C0]) = v772;
  v772 ^= 0x3B855A79u;
  v773 = v772 ^ v755;
  v774 = v772;
  LODWORD(STACK[0x5290]) = v772;
  LODWORD(STACK[0x5250]) = v768;
  v775 = v768 + (v772 ^ v755);
  v776 = v768 & v773;
  v777 = v773;
  v778 = v775 - 2 * v776;
  v779 = *(v764 + 4 * ((6419 * BYTE2(v778) + 51108078) % 0x2240));
  *(v756 + 3763) = -75;
  v780 = v756;
  v781 = STACK[0x57B0];
  v782 = *(STACK[0x57B0] + 683);
  v783 = v782 & 0x18 ^ 0xFFFFFFF2;
  LODWORD(STACK[0x52B8]) = v778;
  v784 = *(v764 + 4 * (6419 * BYTE1(v778) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v778) + 23024953)) >> 32) >> 7))) ^ *(v764 + 4 * ((6419 * HIBYTE(v778) + 39515364) % 0x2240u));
  v785 = (((v782 ^ 0x34) & (2 * ((v782 ^ 0x34) & (2 * ((v782 ^ 0x34) & (2 * ((v782 ^ 0x34) & (2 * ((v782 ^ 0x34) & (2 * v783) ^ v783)) ^ v783)) ^ v783)) ^ v783)) ^ v783) << 25) ^ (v782 << 24) ^ 0x18000000;
  v786 = *(v764 + 4 * (6419 * v778 + 8229158 - 8768 * (((1959383 * (6419 * v778 + 8229158)) >> 32) >> 2))) ^ (v785 - 1970222407 - ((2 * v785) & 0x14000000));
  *(STACK[0xDCB8] + 2065) = 80;
  v787 = v779 ^ 0x8A90CAB9 ^ v784 ^ v786;
  v788 = v787 ^ v730 ^ v777;
  LODWORD(STACK[0x5298]) = v777;
  v789 = v787 ^ v730;
  LODWORD(STACK[0x52A0]) = v787 ^ v730;
  LODWORD(STACK[0x5318]) = v788;
  v790 = v788 ^ v778;
  v791 = v729[31];
  v792 = v791 & 0xFFFFFFD0 ^ 0xFFFFFF96;
  v793 = v791 ^ (2 * ((v791 ^ 0x34) & (2 * ((v791 ^ 0x34) & (2 * ((v791 ^ 0x34) & (2 * ((v791 ^ 0x34) & (2 * ((v791 ^ 0x34) & (2 * v792) ^ v792)) ^ v792)) ^ v792)) ^ v792)) ^ v792));
  v794 = *(v764 + 4 * (6419 * (v788 ^ v778) + 8229158 - 8768 * (((1959383 * (6419 * (v788 ^ v778) + 8229158)) >> 32) >> 2)));
  v795 = *(v764 + 4 * ((6419 * BYTE2(v790) + 51108078) % 0x2240));
  LODWORD(v730) = *(v764 + 4 * (6419 * BYTE1(v790) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v790) + 23024953)) >> 32) >> 7)));
  LODWORD(v764) = *(v764 + 4 * ((6419 * HIBYTE(v790) + 39515364) % 0x2240u));
  v796 = v787 ^ v774;
  LODWORD(STACK[0x52A8]) = v796;
  v797 = v794 ^ 0xA830327F ^ v795 ^ v730 ^ v764 ^ v796 ^ (((v793 ^ 0xD0) << 24) - 1473236353 - ((v793 << 25) & 0x50000000));
  LODWORD(v764) = v797 ^ v777;
  v798 = v797;
  LODWORD(STACK[0x5310]) = v797;
  v799 = v797 ^ v777 ^ v790;
  v800 = v790;
  v801 = v764;
  LODWORD(STACK[0x5410]) = v764;
  LODWORD(STACK[0x5320]) = v799;
  LODWORD(v764) = 6419 * BYTE2(v799) + 51108078;
  v802 = 6419 * BYTE1(v799) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v799) + 23024953)) >> 32) >> 7);
  v803 = 6419 * HIBYTE(v799) + 39515364;
  v804 = 6419 * v799 + 8229158 - 8768 * (((1959383 * (6419 * v799 + 8229158)) >> 32) >> 2);
  v805 = STACK[0xDCB0];
  LODWORD(v764) = *(STACK[0xDCB0] + 4 * (v764 % 0x2240));
  v806 = *(STACK[0xDCB0] + 4 * v802);
  v807 = *(STACK[0xDCB0] + 4 * (v803 % 0x2240));
  v808 = *(STACK[0xDCB0] + 4 * v804);
  *(STACK[0x5760] + 600) = 6;
  v809 = *(STACK[0x56F0] + 69);
  LODWORD(v730) = v809 & 0x14 ^ 0x70;
  v810 = (((v809 ^ 0x34) & (2 * ((v809 ^ 0x34) & (2 * ((v809 ^ 0x34) & (2 * ((v809 ^ 0x34) & (2 * v730) ^ v730)) ^ v730)) ^ v730)) ^ v730) << 25) ^ (v809 << 24) ^ 0x14000000;
  v811 = v764 ^ 0x9DF71474 ^ v806 ^ v807 ^ v808 ^ (v810 - 1644751756 - ((2 * v810) & 0x3A000000));
  LODWORD(STACK[0x5340]) = v811 ^ v789;
  LODWORD(STACK[0x5288]) = v790;
  v812 = v811 ^ v789 ^ v790;
  v813 = STACK[0xDCB8];
  v813[2763] = 54;
  v814 = *(v805 + 4 * ((6419 * BYTE2(v812) + 51108078) % 0x2240));
  v815 = *(v805 + 4 * (6419 * BYTE1(v812) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v812) + 23024953)) >> 32) >> 7)));
  *(STACK[0x57A0] + 3725) = -106;
  v816 = v729[1609];
  LODWORD(v805) = v816 & 0xDA ^ 0x13;
  LODWORD(STACK[0x5338]) = v812;
  v817 = v811 ^ v798;
  LODWORD(STACK[0x5328]) = v811 ^ v798;
  v818 = STACK[0xDCB0];
  v819 = *(STACK[0xDCB0] + 4 * ((6419 * HIBYTE(v812) + 39515364) % 0x2240u));
  LODWORD(STACK[0x5330]) = 2 * v817;
  v820 = v814 ^ 0x6FA270F9 ^ v815 ^ v819 ^ *(v818 + 4 * (6419 * v812 + 8229158 - 8768 * (((1959383 * (6419 * v812 + 8229158)) >> 32) >> 2))) ^ (v817 + 1872916729 - ((2 * v817) & 0xDF44E1F2));
  LODWORD(STACK[0x5358]) = v820;
  v821 = (((v816 ^ 0x34) & (2 * ((v816 ^ 0x34) & (2 * ((v816 ^ 0x34) & (2 * ((v816 ^ 0x34) & (2 * ((v816 ^ 0x34) & (2 * (v805 ^ v816 & 0x2E)) ^ v805)) ^ v805)) ^ v805)) ^ v805)) ^ v805) << 25) ^ (v816 << 24) ^ 0xDA000000 ^ v820;
  v822 = v821;
  LODWORD(STACK[0x5348]) = v821;
  v823 = v821 ^ v801 ^ v812;
  v824 = v821 ^ v801;
  LODWORD(STACK[0x5350]) = v824;
  LODWORD(STACK[0x5360]) = v823;
  v825 = *(v818 + 4 * ((6419 * BYTE2(v823) + 51108078) % 0x2240));
  v813[5198] = -44;
  v826 = *(v818 + 4 * (6419 * v823 + 8229158 - 8768 * (((1959383 * (6419 * v823 + 8229158)) >> 32) >> 2)));
  LODWORD(v805) = 6419 * HIBYTE(v823) + 39515364;
  v827 = *(v818 + 4 * (6419 * BYTE1(v823) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v823) + 23024953)) >> 32) >> 7)));
  *(STACK[0x5590] + 175) = 61;
  v828 = *(STACK[0x5720] + 2481);
  LODWORD(v730) = v828 & 2 ^ 0x6F;
  v829 = v828 ^ (2 * ((v828 ^ 0x34) & (2 * ((v828 ^ 0x34) & (2 * ((v828 ^ 0x34) & (2 * ((v828 ^ 0x34) & (2 * ((v828 ^ 0x34) & (2 * ((v828 ^ 0x34) & 0x36 ^ v730)) ^ v730)) ^ v730)) ^ v730)) ^ v730)) ^ v730));
  v830 = v825 ^ 0x7C3FBAB1 ^ v826 ^ v827 ^ *(v818 + 4 * (v805 % 0x2240)) ^ (((v829 ^ 2) << 24) + 2084551345 - (v829 >> 2 << 27));
  v831 = STACK[0x57C0];
  v832 = *(STACK[0x57C0] + 1510);
  v833 = v832 & 0x12 ^ 0xFFFFFFF7;
  v834 = v832 ^ (2 * ((v832 ^ 0x34) & (2 * ((v832 ^ 0x34) & (2 * ((v832 ^ 0x34) & (2 * ((v832 ^ 0x34) & (2 * ((v832 ^ 0x34) & (2 * (v833 ^ v832 & 0x26)) ^ v833)) ^ v833)) ^ v833)) ^ v833)) ^ v833));
  LODWORD(v730) = v830 ^ v800;
  LODWORD(STACK[0x5368]) = v830;
  LODWORD(STACK[0x5420]) = v830 ^ v800;
  v835 = *(v818 + 4 * ((6419 * BYTE2(v730) + 51108078) % 0x2240)) ^ *(v818 + 4 * ((6419 * BYTE3(v730) + 39515364) % 0x2240u)) ^ *(v818 + 4 * (6419 * BYTE1(v730) + 23024953 - 8768 * (((62700253 * (6419 * BYTE1(v730) + 23024953)) >> 32) >> 7))) ^ *(v818 + 4 * (6419 * (v830 ^ v800) + 8229158 - 8768 * (((1959383 * (6419 * (v830 ^ v800) + 8229158)) >> 32) >> 2)));
  LODWORD(STACK[0x5370]) = v830 ^ v822;
  v836 = v835 ^ (((v834 ^ 0x12) << 24) - 642491120 - (((v834 ^ 0x12) << 25) & 0xB2000000)) ^ v830 ^ v822;
  LODWORD(STACK[0x53B8]) = v836;
  v813[5084] = 87;
  LODWORD(STACK[0x53A0]) = v836 ^ 0xD9B45D10;
  v837 = v836 ^ 0xD9B45D10 ^ v824;
  LODWORD(STACK[0x53B0]) = v837;
  LODWORD(STACK[0x53A8]) = v837 ^ v830 ^ v800;
  v813[3711] = 54;
  LODWORD(STACK[0x5390]) = *(v818 + 4 * (6419 * (v837 ^ v830 ^ v800) + 8229158 - 8768 * (((1959383 * (6419 * (v837 ^ v830 ^ v800) + 8229158)) >> 32) >> 2)));
  LODWORD(STACK[0x5388]) = *(v818 + 4 * ((6419 * ((v837 ^ v830 ^ v800) >> 16) + 51108078) % 0x2240));
  LODWORD(STACK[0x5398]) = *(v818 + 4 * (6419 * ((v837 ^ v830 ^ v800) >> 8) + 23024953 - 8768 * (((62700253 * (6419 * ((v837 ^ v830 ^ v800) >> 8) + 23024953)) >> 32) >> 7)));
  *(v780 + 1859) = -45;
  v838 = STACK[0xDCB0];
  LODWORD(STACK[0x5380]) = *(STACK[0xDCB0] + 4 * ((6419 * ((v837 ^ v830 ^ v800) >> 24) + 39515364) % 0x2240));
  LODWORD(STACK[0x5378]) = v729[1480];
  v813[214] = 13;
  v839 = STACK[0x5620];
  v840 = STACK[0x5630];
  v729[1988] = 110;
  *(v831 + 850) = 117;
  *(v781 + 1237) = 68;
  v841 = v781;
  v842 = STACK[0x5640];
  v843 = STACK[0xDCB8];
  v844 = *(STACK[0xDCB8] + LODWORD(STACK[0x5640]) + 33782210 - 6152 * (v840 / 0x1808));
  v845 = *(STACK[0xDCB8] + LODWORD(STACK[0x5640]) + 33765347 - 6152 * (v839 / 0x1808));
  v846 = *(STACK[0xDCB8] + LODWORD(STACK[0x5640]) + 33714758 - 6152 * (LODWORD(STACK[0x5550]) / 0x1808));
  LODWORD(STACK[0x5210]) = *(v838 + 4 * ((6419 * (v844 | ((v844 < 0x4C) << 8)) + 15957634) % 0x2240));
  v847 = *(v838 + 4 * ((6419 * (v845 | ((v845 < 0x4C) << 8)) + 53906762) % 0x2240));
  v848 = *(v838 + 4 * ((6419 * (v846 | ((v846 < 0x4C) << 8)) + 15957634) % 0x2240));
  *(STACK[0x56E0] + 160) = 17;
  LODWORD(v838) = *(v843 + v842 + 33776589 - 6152 * (LODWORD(STACK[0x5510]) / 0x1808));
  v849 = *(v843 + v842 + 33770968 - 6152 * (LODWORD(STACK[0x5500]) / 0x1808));
  v850 = (6419 * (v849 | ((v849 < 0x4C) << 8)) + 34084890) % 0x2240;
  v851 = v842 + 33748484 - 6152 * (LODWORD(STACK[0x54F0]) / 0x1808);
  v852 = STACK[0xDCB0];
  v853 = *(STACK[0xDCB0] + 4 * ((6419 * (v838 | ((v838 < 0x4C) << 8)) + 43976569) % 0x2240));
  LODWORD(STACK[0x5208]) = *(STACK[0xDCB0] + 4 * v850);
  *(STACK[0x5570] + 1745) = -30;
  LODWORD(v843) = *(v843 + v851);
  v233 = v843 >= 0x4C;
  v854 = v843 + 2028023920;
  v855 = !v233;
  v856 = v854 + (v855 << 8);
  v857 = STACK[0xDCB8];
  v858 = *(STACK[0xDCB8] + v842 + 33731621 - 6152 * (LODWORD(STACK[0x54C0]) / 0x1808));
  v859 = *(STACK[0xDCB8] + v842 + 33759726 - 6152 * (LODWORD(STACK[0x54D0]) / 0x1808));
  v860 = (6419 * (v858 | ((v858 < 0x4C) << 8)) + 43976569) % 0x2240;
  v861 = (6419 * (v856 + 1081) + 187477647) % 0x2240u;
  v862 = (6419 * (v859 | ((v859 < 0x4C) << 8)) + 15957634) % 0x2240;
  v863 = *(STACK[0xDCB8] + v842 + 33703516 - 6152 * (LODWORD(STACK[0x54E0]) / 0x1808));
  v233 = v863 >= 0x4C;
  v864 = v863 + 389488695;
  v865 = !v233;
  LODWORD(STACK[0x5200]) = *(v852 + 4 * v860);
  v866 = *(v852 + 4 * v861);
  v867 = *(v852 + 4 * v862);
  v857[4242] = 55;
  v868 = *(v852 + 4 * ((6419 * (v864 + (v865 << 8) + 491) - 426033772) % 0x2240));
  v857[4098] = 116;
  v869 = 33737242 - 6152 * (LODWORD(STACK[0x54B0]) / 0x1808);
  v857[3127] = 46;
  v870 = v857[v842 + v869];
  v871 = 12304 * (LODWORD(STACK[0x5440]) / 0x3010);
  v872 = (6419 * (v870 | ((v870 < 0x4C) << 8)) + 15957634) % 0x2240;
  v873 = v857[(5621 * LODWORD(STACK[0x5520]) + 33787831) % 0x1808u];
  v874 = STACK[0xDCB0];
  v875 = *(STACK[0xDCB0] + 4 * v872);
  *(STACK[0x55E0] + 3209) = 68;
  v876 = 33720379 - 6152 * (LODWORD(STACK[0x5490]) / 0x1808);
  *(STACK[0x55D0] + 3467) = -15;
  v877 = v857[v842 + v876];
  v878 = 33726000 - 6152 * (LODWORD(STACK[0x5460]) / 0x1808);
  v879 = *(v874 + 4 * ((6419 * (v873 | ((v873 < 0x4C) << 8)) + 53906762) % 0x2240));
  v880 = STACK[0xDCB8];
  v880[4113] = 39;
  v881 = v880[v842 + v878];
  v882 = *(v874 + 4 * ((6419 * (v877 | ((v877 < 0x4C) << 8)) + 53906762) % 0x2240));
  v880[4811] = 88;
  v883 = 33754105 - 6152 * (LODWORD(STACK[0x5450]) / 0x1808);
  v880[1132] = 80;
  v880[1443] = 103;
  v880[2027] = 80;
  v884 = v880[v842 + v883];
  LODWORD(STACK[0x5640]) = v842;
  v885 = 33703516 - v871 + v842 - 531;
  v886 = *(v874 + 4 * ((6419 * (v881 | ((v881 < 0x4C) << 8)) + 34084890) % 0x2240));
  if ((v842 + 33709137 - v871) >> 3 < 0x301)
  {
    v885 = v842 + 33709137 - v871;
  }

  *(STACK[0x5308] + 1563) = -7;
  v887 = v884 | ((v884 < 0x4C) << 8);
  v888 = *(v874 + 4 * ((6419 * (v880[v885] | ((v880[v885] < 0x4Cu) << 8)) + 43976569) % 0x2240u));
  v889 = v880[v842 + 33742863 - 6152 * (LODWORD(STACK[0x5430]) / 0x1808)];
  v890 = (6419 * (v889 | ((v889 < 0x4C) << 8)) + 53906762) % 0x2240;
  v891 = STACK[0xDCB0];
  v892 = *(STACK[0xDCB0] + 4 * ((6419 * v887 + 43976569) % 0x2240u));
  v893 = *(STACK[0xDCB0] + 4 * v890);
  v880[2740] = 14;
  v880[2983] = -78;
  *(STACK[0x5720] + 3907) = -46;
  *(STACK[0x5740] + 1874) = -15;
  *(STACK[0xDCB8] + 6055) = 7;
  v894 = v853 ^ LODWORD(STACK[0x53D8]) ^ v875 ^ v886 ^ v879;
  v895 = LODWORD(STACK[0x53C0]) ^ 0xB737686A ^ v847 ^ v848 ^ v868 ^ v892;
  v896 = LODWORD(STACK[0x53C8]) ^ 0xD374998B ^ v867 ^ v866 ^ v882 ^ v888;
  v897 = (v895 + 1685546012 - ((2 * v895) & 0xC8EEC838)) ^ LODWORD(STACK[0x5230]);
  v898 = (v894 + LODWORD(STACK[0x5218]) + ~((2 * v894) & 0x8926967C)) ^ LODWORD(STACK[0x5220]);
  v899 = (v896 - 1507199791 - ((2 * v896) & 0x4C53E9A2)) ^ LODWORD(STACK[0x5228]);
  *(v841 + 2170) = 89;
  v900 = *(v891 + 4 * (6419 * BYTE2(v898) - 8768 * (((1959383 * (6419 * BYTE2(v898))) >> 32) >> 2))) ^ *(v891 + 4 * (6419 * HIBYTE(v897) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v897) + 9872422)) >> 32) >> 6)));
  v901 = ((v900 & 0x80000 ^ 0x453BDEA1) + 941609710) ^ ((v900 & 0x80000) - 2109108369) ^ ((v900 & 0x80000 ^ 0xCA8D1B3C) - 1213655183);
  v902 = v901 - 1398752957;
  v903 = (v902 ^ 0xC433387E) & (2 * (v902 & 0xD63B3A70)) ^ v902 & 0xD63B3A70;
  v904 = ((2 * (v902 ^ 0x44117C7E)) ^ 0x24548C1C) & (v902 ^ 0x44117C7E) ^ (2 * (v902 ^ 0x44117C7E)) & 0x922A460E;
  v905 = v904 & (4 * v903) ^ v903;
  v906 = ((4 * (v904 ^ 0x922A4202)) ^ 0x48A91838) & (v904 ^ 0x922A4202) ^ (4 * (v904 ^ 0x922A4202)) & 0x922A460C;
  v907 = (v906 ^ 0x280006) & (16 * v905) ^ v905;
  v908 = ((16 * (v906 ^ 0x92024606)) ^ 0x22A460E0) & (v906 ^ 0x92024606) ^ (16 * (v906 ^ 0x92024606)) & 0x922A4600;
  v909 = v907 ^ 0x922A460E ^ (v908 ^ 0x220400E) & (v907 << 8);
  v910 = (v901 - 1398752957) ^ (2 * ((v909 << 16) & 0x122A0000 ^ v909 ^ ((v909 << 16) ^ 0x460E0000) & (((v908 ^ 0x900A060E) << 8) & 0x922A0000 ^ 0x10280000 ^ (((v908 ^ 0x900A060E) << 8) ^ 0x2A460000) & (v908 ^ 0x900A060E))));
  v911 = *(v891 + 4 * (6419 * BYTE1(v899) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v899) + 1649683)) >> 32) >> 2)));
  v912 = LODWORD(STACK[0x5210]) ^ LODWORD(STACK[0x53D0]) ^ LODWORD(STACK[0x5208]) ^ LODWORD(STACK[0x5200]) ^ v893;
  v913 = ((v912 ^ 0x63674736) - 1176181418 - 2 * ((v912 ^ 0x63674736) & 0x39E4E55E ^ v912 & 8)) ^ LODWORD(STACK[0x5238]);
  HIDWORD(v914) = v913;
  LODWORD(v914) = (v913 & 0xFE) + 2306;
  HIDWORD(v914) = v914 >> 1;
  LODWORD(v914) = HIDWORD(v914);
  v915 = 6419 * ((v914 >> 9) >> 22) + 13146112;
  v916 = -1494691363 - v901;
  if (((v910 ^ 0xF67BB66C) & (v911 ^ 0xEA7128A) ^ v910 & 0x4C9F9D6C) != 0x441B946C)
  {
    v902 = v916;
  }

  v917 = (((v911 ^ 0xF6E032CC) + 153079092) ^ ((v911 ^ 0xEBEE2FA) - 247390970) ^ ((v911 ^ 0xBA665FD0) + 1167695920)) + 1432280595 + v902;
  v918 = (v917 ^ 0x6FF5FFF7) - 1394535498;
  v919 = (LODWORD(STACK[0x5240]) - (STACK[0x5258] & 0xF521A94C) - 91171674) ^ *(v891 + 4 * (v915 - 8768 * (((31350127 * v915) >> 32) >> 6))) ^ 0x844348FD ^ v900 & 0xFFF7FFFF ^ v917 ^ ((v917 ^ 0x33957743) - 259941630) ^ ((v917 ^ 0xC220A8A) - 818485559) ^ ((v917 ^ 0x6CA99183) - 1346535998);
  v920 = (LODWORD(STACK[0x5270]) - 727197815 - (STACK[0x5268] & 0xA94FAF12)) ^ *(v891 + 4 * (6419 * BYTE2(v899) - 8768 * (((1959383 * (6419 * BYTE2(v899))) >> 32) >> 2))) ^ 0xD4A7D789 ^ *(v891 + 4 * (6419 * BYTE1(v913) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v913) + 1649683)) >> 32) >> 2))) ^ *(v891 + 4 * (6419 * v897 + 14802214 - 8768 * (((31350127 * (6419 * v897 + 14802214)) >> 32) >> 6))) ^ *(v891 + 4 * (6419 * HIBYTE(v898) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v898) + 9872422)) >> 32) >> 6)));
  v921 = STACK[0x5248];
  v922 = (LODWORD(STACK[0x5248]) - 575374756 - (STACK[0x5280] & 0xBB68F4B8)) ^ *(v891 + 4 * (6419 * BYTE1(v897) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v897) + 1649683)) >> 32) >> 2))) ^ 0xDDB47A5C ^ *(v891 + 4 * (6419 * BYTE2(v913) - 8768 * (((1959383 * (6419 * BYTE2(v913))) >> 32) >> 2))) ^ *(v891 + 4 * (6419 * HIBYTE(v899) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v899) + 9872422)) >> 32) >> 6))) ^ *(v891 + 4 * (6419 * v898 + 14802214 - 8768 * (((31350127 * (6419 * v898 + 14802214)) >> 32) >> 6)));
  v923 = v919 ^ v918;
  *(STACK[0x5680] + 175) = 5;
  v924 = *(v891 + 4 * (6419 * HIBYTE(v913) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v913) + 9872422)) >> 32) >> 6)));
  v925 = STACK[0xDCB8];
  v926 = STACK[0xDCB8] + 4096;
  *(v925 + 4667) = -4;
  v927 = *(v891 + 4 * (6419 * BYTE2(v897) - 8768 * (((1959383 * (6419 * BYTE2(v897))) >> 32) >> 2)));
  *(v925 + 4409) = 7;
  v928 = *(v891 + 4 * (6419 * BYTE1(v898) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v898) + 1649683)) >> 32) >> 2)));
  *(v925 + 5524) = 16;
  v929 = (LODWORD(STACK[0x5278]) - 1980042437 - ((2 * LODWORD(STACK[0x5278])) & 0x13F5E676)) ^ v924 ^ 0x89FAF33B ^ v927 ^ v928 ^ *(v891 + 4 * (6419 * v899 + 14802214 - 8768 * (((31350127 * (6419 * v899 + 14802214)) >> 32) >> 6)));
  *(v925 + 2300) = -55;
  *(v925 + 3309) = 76;
  *(v780 + 3672) = 7;
  *(v925 + 5911) = -5;
  *(v925 + 5600) = -106;
  v930 = STACK[0xDCB0];
  v931 = *(STACK[0xDCB0] + 4 * (6419 * HIBYTE(v923) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v923) + 9872422)) >> 32) >> 6)));
  *(STACK[0x5710] + 107) = -54;
  v932 = *(v930 + 4 * (6419 * BYTE2(v920) - 8768 * (((1959383 * (6419 * BYTE2(v920))) >> 32) >> 2)));
  LODWORD(v925) = *(v930 + 4 * (6419 * BYTE1(v922) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v922) + 1649683)) >> 32) >> 2)));
  *(STACK[0x5670] + 319) = -125;
  *(v926 + 1208) = -61;
  LODWORD(v926) = (LODWORD(STACK[0x5260]) - 1645021752 - ((2 * LODWORD(STACK[0x5260])) & 0x3BE5EB90)) ^ 0x9DF2F5C8 ^ v932 ^ v925;
  LODWORD(v933) = __ROR4__((6419 * BYTE2(v922)) ^ 0x57FD71CA, 16) ^ 0x71CA57FD;
  HIDWORD(v933) = v933;
  *STACK[0x52F0] = -108;
  LODWORD(v926) = v926 ^ *(v930 + 4 * (6419 * v929 + 14802214 - 8768 * (((31350127 * (6419 * v929 + 14802214)) >> 32) >> 6)));
  *(STACK[0x53F8] + 3247) = -36;
  v934 = *(v930 + 4 * ((v933 >> 16) % 0x2240));
  LODWORD(v925) = *(v930 + 4 * (6419 * BYTE1(v929) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v929) + 1649683)) >> 32) >> 2)));
  v935 = *(v930 + 4 * (6419 * HIBYTE(v920) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v920) + 9872422)) >> 32) >> 6)));
  v936 = *(v930 + 4 * (6419 * BYTE2(v929) - 8768 * (((1959383 * (6419 * BYTE2(v929))) >> 32) >> 2)));
  v937 = *(v930 + 4 * (6419 * HIBYTE(v922) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v922) + 9872422)) >> 32) >> 6)));
  v938 = *(v930 + 4 * (6419 * v923 + 14802214 - 8768 * (((31350127 * (6419 * v923 + 14802214)) >> 32) >> 6)));
  LODWORD(v930) = v926 ^ v931;
  v939 = STACK[0x5400];
  v940 = 6419 * BYTE2(v923) - 8768 * (((1959383 * (6419 * BYTE2(v923))) >> 32) >> 2);
  v941 = v934 ^ 0x930D5E56 ^ v925 ^ v935;
  v942 = 6419 * BYTE1(v923) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v923) + 1649683)) >> 32) >> 2);
  v943 = v936 ^ 0x179E0D2F ^ v937;
  v944 = (LODWORD(STACK[0x5400]) - 1827840426 - (STACK[0x5408] & 0x261ABCAC)) ^ v941 ^ v938;
  v945 = STACK[0xDCB8];
  *(v945 + 3036) = -105;
  v946 = STACK[0xDCB0];
  v947 = *(STACK[0xDCB0] + 4 * (6419 * v920 + 14802214 - 8768 * (((31350127 * (6419 * v920 + 14802214)) >> 32) >> 6)));
  LODWORD(v925) = *(STACK[0xDCB0] + 4 * v942);
  v948 = *(STACK[0xDCB0] + 4 * (6419 * HIBYTE(v929) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v929) + 9872422)) >> 32) >> 6)));
  *(v945 + 4720) = -110;
  v949 = *(v946 + 4 * v940);
  v950 = *(v946 + 4 * (6419 * v922 + 14802214 - 8768 * (((31350127 * (6419 * v922 + 14802214)) >> 32) >> 6)));
  v951 = *(v946 + 4 * (6419 * BYTE1(v920) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v920) + 1649683)) >> 32) >> 2)));
  *(v945 + 1170) = 63;
  *(v945 + 1223) = -38;
  v952 = ((v939 ^ v921) + 396234031 - ((2 * (v939 ^ v921)) & 0x2F3C1A5E)) ^ v943 ^ v947 ^ v925;
  v953 = (LODWORD(STACK[0x5250]) - 2097162639 - ((2 * LODWORD(STACK[0x5250])) & 0x5FFACE2)) ^ v948 ^ 0x82FFD671 ^ v950 ^ v951 ^ v949;
  LODWORD(v945) = *(v946 + 4 * (6419 * BYTE3(v930) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v930) + 9872422)) >> 32) >> 6)));
  v954 = *(v946 + 4 * (6419 * BYTE2(v944) - 8768 * (((1959383 * (6419 * BYTE2(v944))) >> 32) >> 2)));
  v955 = *(v946 + 4 * (6419 * BYTE1(v952) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v952) + 1649683)) >> 32) >> 2)));
  LODWORD(v946) = *(v946 + 4 * (6419 * v953 + 14802214 - 8768 * (((31350127 * (6419 * v953 + 14802214)) >> 32) >> 6)));
  *(STACK[0x56C0] + 1920) = -117;
  v956 = STACK[0xDCB0];
  v957 = *(STACK[0xDCB0] + 4 * (6419 * HIBYTE(v944) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v944) + 9872422)) >> 32) >> 6)));
  v958 = STACK[0xDCB8];
  *(v958 + 3931) = 74;
  *STACK[0x52E8] = -81;
  *(v958 + 4955) = -66;
  v959 = *(v956 + 4 * (6419 * BYTE2(v952) - 8768 * (((1959383 * (6419 * BYTE2(v952))) >> 32) >> 2)));
  v960 = *(v956 + 4 * (6419 * BYTE1(v953) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v953) + 1649683)) >> 32) >> 2)));
  v961 = 6419 * BYTE1(v944) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v944) + 1649683)) >> 32) >> 2);
  v962 = *(v956 + 4 * (6419 * v930 + 14802214 - 8768 * (((31350127 * (6419 * v930 + 14802214)) >> 32) >> 6)));
  v963 = *(v956 + 4 * (6419 * HIBYTE(v952) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v952) + 9872422)) >> 32) >> 6)));
  *(v958 + 4060) = -88;
  v964 = *(v956 + 4 * (6419 * BYTE1(v930) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v930) + 1649683)) >> 32) >> 2)));
  v965 = *(v956 + 4 * (6419 * BYTE2(v953) - 8768 * (((1959383 * (6419 * BYTE2(v953))) >> 32) >> 2)));
  v966 = *(v956 + 4 * (6419 * v944 + 14802214 - 8768 * (((31350127 * (6419 * v944 + 14802214)) >> 32) >> 6)));
  LODWORD(v925) = *(v956 + 4 * (6419 * HIBYTE(v953) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v953) + 9872422)) >> 32) >> 6)));
  *(STACK[0x54A0] + 903) = -111;
  v967 = *(v956 + 4 * (6419 * BYTE2(v930) - 8768 * (((1959383 * (6419 * BYTE2(v930))) >> 32) >> 2)));
  LODWORD(v956) = *(v956 + 4 * v961);
  *(v958 + 3089) = 28;
  *(STACK[0x5470] + 3778) = -33;
  v968 = STACK[0xDCB0];
  LODWORD(v958) = *(STACK[0xDCB0] + 4 * (6419 * v952 + 14802214 - 8768 * (((31350127 * (6419 * v952 + 14802214)) >> 32) >> 6)));
  *(STACK[0x5760] + 122) = 74;
  v969 = STACK[0xDCB8];
  v969[5509] = -110;
  v970 = (LODWORD(STACK[0x5290]) + 642714274 - ((2 * LODWORD(STACK[0x5290])) & 0x4C9E1544)) ^ 0x264F0AA2 ^ v945 ^ v954 ^ v946 ^ v955;
  v971 = LODWORD(STACK[0x52C0]) ^ (LODWORD(STACK[0x5400]) - (STACK[0x5408] & 0x960B385A) - 888824787) ^ v957 ^ v959 ^ v960 ^ v962 ^ 0xF080C654;
  LODWORD(v945) = (LODWORD(STACK[0x5298]) - 1413292799 - ((2 * LODWORD(STACK[0x5298])) & 0x5785BA02)) ^ 0xABC2DD01 ^ v963 ^ v964 ^ v965 ^ v966;
  v972 = (LODWORD(STACK[0x52B8]) + 1130557637 - ((2 * LODWORD(STACK[0x52B8])) & 0x86C5E18A)) ^ 0x4362F0C5 ^ v925 ^ v967 ^ v956 ^ v958;
  v973 = (LODWORD(STACK[0x52A8]) - 1251013415 - ((2 * LODWORD(STACK[0x52A8])) & 0x6ADE19B2)) ^ 0xB56F0CD9 ^ *(v968 + 4 * (6419 * HIBYTE(v970) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v970) + 9872422)) >> 32) >> 6))) ^ *(v968 + 4 * (6419 * BYTE2(v971) - 8768 * (((1959383 * (6419 * BYTE2(v971))) >> 32) >> 2))) ^ *(v968 + 4 * (6419 * BYTE1(v945) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v945) + 1649683)) >> 32) >> 2)));
  v969[2725] = -55;
  *(STACK[0x57C0] + 1821) = 90;
  LODWORD(v946) = *(v968 + 4 * (6419 * v972 + 14802214 - 8768 * (((31350127 * (6419 * v972 + 14802214)) >> 32) >> 6)));
  LODWORD(v925) = *(v968 + 4 * (6419 * HIBYTE(v971) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v971) + 9872422)) >> 32) >> 6)));
  v974 = *(v968 + 4 * (6419 * BYTE1(v972) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v972) + 1649683)) >> 32) >> 2)));
  v975 = *(v968 + 4 * (6419 * BYTE2(v945) - 8768 * (((1959383 * (6419 * BYTE2(v945))) >> 32) >> 2)));
  v976 = *(v968 + 4 * (6419 * v970 + 14802214 - 8768 * (((31350127 * (6419 * v970 + 14802214)) >> 32) >> 6)));
  v977 = *(v968 + 4 * (6419 * BYTE3(v945) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v945) + 9872422)) >> 32) >> 6)));
  v978 = STACK[0x52A0];
  v979 = 2 * LODWORD(STACK[0x52A0]);
  v980 = v973 ^ v946;
  v981 = (LODWORD(STACK[0x52A0]) - 822234041 - (v979 & 0x9DFB688E)) ^ 0xCEFDB447 ^ v925 ^ v974 ^ v975 ^ v976;
  v982 = STACK[0xDCB0];
  v983 = *(STACK[0xDCB0] + 4 * (6419 * BYTE2(v972) - 8768 * (((1959383 * (6419 * BYTE2(v972))) >> 32) >> 2)));
  v984 = (LODWORD(STACK[0x5318]) + 1191903130 - ((2 * LODWORD(STACK[0x5318])) & 0x8E15FF34)) ^ 0x470AFF9A ^ v977;
  *(STACK[0x5780] + 979) = 0x80;
  LODWORD(v925) = v984 ^ v983 ^ *(v982 + 4 * (6419 * BYTE1(v970) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v970) + 1649683)) >> 32) >> 2)));
  v985 = 6419 * v945 + 14802214 - 8768 * (((31350127 * (6419 * v945 + 14802214)) >> 32) >> 6);
  v986 = v925 ^ *(v982 + 4 * (6419 * v971 + 14802214 - 8768 * (((31350127 * (6419 * v971 + 14802214)) >> 32) >> 6)));
  v987 = *(v982 + 4 * (6419 * BYTE2(v970) - 8768 * (((1959383 * (6419 * BYTE2(v970))) >> 32) >> 2))) ^ *(v982 + 4 * (6419 * HIBYTE(v972) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v972) + 9872422)) >> 32) >> 6)));
  v988 = 6419 * BYTE2(v981) - 17536 * (((1959383 * (6419 * BYTE2(v981))) >> 32) >> 3);
  v989 = (LODWORD(STACK[0x5288]) + 994602633 - ((2 * LODWORD(STACK[0x5288])) & 0x7690DD12)) ^ 0x3B486E89 ^ *(v982 + 4 * v985) ^ v987 ^ *(v982 + 4 * (6419 * BYTE1(v971) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v971) + 1649683)) >> 32) >> 2)));
  v990 = v988 - 8768;
  if (v988 >> 6 < 0x89)
  {
    v990 = 6419 * BYTE2(v981) - 17536 * (((1959383 * (6419 * BYTE2(v981))) >> 32) >> 3);
  }

  v991 = 6419 * (((v989 >> 7) & 2) + (BYTE1(v989) ^ 0x101));
  v992 = (LODWORD(STACK[0x5310]) - 1244267642 - ((2 * LODWORD(STACK[0x5310])) & 0x6BABF70C)) ^ 0xB5D5FB86 ^ *(v982 + 4 * (6419 * HIBYTE(v980) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v980) + 9872422)) >> 32) >> 6))) ^ *(v982 + 4 * (6419 * BYTE1(v986) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v986) + 1649683)) >> 32) >> 2))) ^ *(v982 + 4 * (6419 * v989 + 14802214 - 8768 * (((31350127 * (6419 * v989 + 14802214)) >> 32) >> 6))) ^ *(v982 + 4 * v990);
  v993 = (v978 - 1881161133 - (v979 & 0x1FBF84A6)) ^ 0x8FDFC253 ^ LODWORD(STACK[0x5310]) ^ *(v982 + 4 * (6419 * v980 + 14802214 - 8768 * (((31350127 * (6419 * v980 + 14802214)) >> 32) >> 6))) ^ *(v982 + 4 * (6419 * BYTE2(v986) - 8768 * (((1959383 * (6419 * BYTE2(v986))) >> 32) >> 2))) ^ *(v982 + 4 * (6419 * HIBYTE(v981) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v981) + 9872422)) >> 32) >> 6))) ^ *(v982 + 4 * (v991 - 8768 * (((1959383 * v991) >> 32) >> 2)));
  v994 = 2 * LODWORD(STACK[0x5410]);
  v995 = *(v982 + 4 * (6419 * BYTE2(v989) - 8768 * (((1959383 * (6419 * BYTE2(v989))) >> 32) >> 2))) ^ (LODWORD(STACK[0x5410]) + 655151564 - (v994 & 0x4E19A398));
  v996 = *(v982 + 4 * (6419 * HIBYTE(v986) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v986) + 9872422)) >> 32) >> 6)));
  v969[32] = 122;
  v997 = v995 ^ v996 ^ *(v982 + 4 * (6419 * BYTE1(v980) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v980) + 1649683)) >> 32) >> 2))) ^ *(v982 + 4 * (6419 * v981 + 14802214 - 8768 * (((31350127 * (6419 * v981 + 14802214)) >> 32) >> 6)));
  LODWORD(STACK[0x5408]) = v997;
  v998 = *(v982 + 4 * (6419 * HIBYTE(v989) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v989) + 9872422)) >> 32) >> 6)));
  v969[3734] = -6;
  v999 = *(v982 + 4 * (6419 * BYTE2(v980) - 8768 * (((1959383 * (6419 * BYTE2(v980))) >> 32) >> 2)));
  v1000 = *(v982 + 4 * (6419 * BYTE1(v981) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v981) + 1649683)) >> 32) >> 2)));
  v969[4318] = 101;
  v1001 = STACK[0xDCB0];
  v1002 = *(STACK[0xDCB0] + 4 * (6419 * v986 + 14802214 - 8768 * (((31350127 * (6419 * v986 + 14802214)) >> 32) >> 6)));
  v969[3916] = -78;
  v969[4500] = -115;
  v1003 = (LODWORD(STACK[0x5320]) + 1424752300 - ((2 * LODWORD(STACK[0x5320])) & 0xA9D7FD58)) ^ 0x54EBFEAC ^ v998 ^ v999 ^ v1000 ^ v1002;
  v1004 = v997 ^ 0x270CD1CC;
  v1005 = HIBYTE(v993);
  v1006 = *(v1001 + 4 * (6419 * HIBYTE(v992) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v992) + 9872422)) >> 32) >> 6)));
  LODWORD(STACK[0x5400]) = *(v1001 + 4 * (6419 * BYTE2(v993) - 8768 * (((1959383 * (6419 * BYTE2(v993))) >> 32) >> 2)));
  v1007 = *(v1001 + 4 * (6419 * BYTE1(v1004) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1004) + 1649683)) >> 32) >> 2)));
  v1008 = *(v1001 + 4 * (6419 * BYTE2(v1004) - 8768 * (((1959383 * (6419 * BYTE2(v1004))) >> 32) >> 2)));
  v1009 = *(v1001 + 4 * (6419 * v1005 + 9872422 - 8768 * (((31350127 * (6419 * v1005 + 9872422)) >> 32) >> 6)));
  v1010 = *(v1001 + 4 * (6419 * v1003 + 14802214 - 8768 * (((31350127 * (6419 * v1003 + 14802214)) >> 32) >> 6)));
  v1011 = STACK[0xDCB0];
  v1012 = *(STACK[0xDCB0] + 4 * (6419 * BYTE1(v1003) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1003) + 1649683)) >> 32) >> 2)));
  v1013 = STACK[0xDCB8];
  v1013[3074] = -10;
  v1014 = *(v1011 + 4 * (6419 * v992 + 14802214 - 8768 * (((31350127 * (6419 * v992 + 14802214)) >> 32) >> 6)));
  v1013[3658] = 32;
  HIDWORD(v1015) = BYTE1(v992) + 257;
  LODWORD(v1015) = HIDWORD(v1015);
  *(STACK[0x5790] + 395) = 1;
  v1016 = *(v1011 + 4 * (6419 * HIBYTE(v1004) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1004) + 9872422)) >> 32) >> 6)));
  v1017 = *(v1011 + 4 * (6419 * BYTE2(v1003) - 8768 * (((1959383 * (6419 * BYTE2(v1003))) >> 32) >> 2)));
  v1013[5266] = -127;
  v1018 = *(v1011 + 4 * (6419 * ((v1015 >> 24) >> 8) % 0x2240));
  v1013[396] = -108;
  v1019 = *(v1011 + 4 * (6419 * v993 + 14802214 - 8768 * (((31350127 * (6419 * v993 + 14802214)) >> 32) >> 6)));
  v1013[3476] = 89;
  v1020 = *(v1011 + 4 * (6419 * HIBYTE(v1003) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1003) + 9872422)) >> 32) >> 6)));
  v1021 = *(v1011 + 4 * (6419 * BYTE2(v992) - 8768 * (((1959383 * (6419 * BYTE2(v992))) >> 32) >> 2)));
  v1013[2558] = -45;
  v1022 = STACK[0xDCB0];
  v1023 = *(STACK[0xDCB0] + 4 * (6419 * BYTE1(v993) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v993) + 1649683)) >> 32) >> 2)));
  *(STACK[0xDCB8] + 5395) = -61;
  LODWORD(v1013) = (v1008 & 0x40000000 | 0x10389D9D) ^ ((v1008 & 0x40000000) + 1783323039) ^ ((v1008 & 0x40000000 ^ 0x7D09F259) + 1832512262);
  v1024 = v1013 - 1017187122;
  v1025 = ((v1024 ^ 0x2F271A32) - 1017648153) ^ v1024 ^ ((v1024 ^ 0xBA09F029) + 1450770942) ^ ((v1024 ^ 0x695E078F) - 2060519844) ^ ((v1024 ^ 0xEFFFE3BF) + 59708012);
  v1026 = (v1025 ^ 0x138F0E2B) & (v1009 ^ 0x17D4D31F) ^ v1025 & 0x55EC5CF9;
  v1027 = 1673471880 - v1013;
  v1028 = ((v1009 ^ 0x3603DACF) - 906222287) ^ ((v1009 ^ 0x72B98F54) - 1924763476) ^ ((v1009 ^ 0x682DA7D) - 109238909);
  if (v1026 == 294390825)
  {
    v1027 = v1024;
  }

  v1029 = v1028 - 1519674677 + v1027;
  v1030 = (v1029 ^ 0x48BDF6E4) & (2 * (v1029 & 0x893DE6F0)) ^ v1029 & 0x893DE6F0;
  v1031 = ((2 * (v1029 ^ 0x58F63EC4)) ^ 0xA397B068) & (v1029 ^ 0x58F63EC4) ^ (2 * (v1029 ^ 0x58F63EC4)) & 0xD1CBD834;
  v1032 = (v1031 ^ 0x1839000) & (4 * v1030) ^ v1030;
  v1033 = ((4 * (v1031 ^ 0x50484814)) ^ 0x472F60D0) & (v1031 ^ 0x50484814) ^ (4 * (v1031 ^ 0x50484814)) & 0xD1CBD834;
  v1034 = (v1033 ^ 0x410B4000) & (16 * v1032) ^ v1032;
  v1035 = ((16 * (v1033 ^ 0x90C09824)) ^ 0x1CBD8340) & (v1033 ^ 0x90C09824) ^ (16 * (v1033 ^ 0x90C09824)) & 0xD1CBD830;
  v1036 = v1034 ^ 0xD1CBD834 ^ (v1035 ^ 0x10898000) & (v1034 << 8);
  v1037 = ((v1036 << 16) ^ 0x58340000) & (((v1035 ^ 0xC1425834) << 8) & 0x51CB0000 ^ 0x10030000 ^ (((v1035 ^ 0xC1425834) << 8) ^ 0x4BD80000) & (v1035 ^ 0xC1425834));
  v1038 = (v1036 << 16) & 0x51CB0000 ^ v1036;
  v1039 = v1006 ^ (LODWORD(STACK[0x5328]) - 1041527808 - (STACK[0x5330] & 0x83D71800)) ^ LODWORD(STACK[0x5400]) ^ v1007 ^ v1010;
  v1040 = STACK[0x5340];
  v1041 = 2 * LODWORD(STACK[0x5340]);
  v1042 = (LODWORD(STACK[0x5340]) - (v1041 & 0x135DBDFE) - 1985028353) ^ v1008 & 0xBFFFFFFF ^ v1012 ^ v1014 ^ v1029 ^ (2 * (v1038 ^ v1037));
  v1043 = (LODWORD(STACK[0x5410]) - 1898964230 - (v994 & 0x1DA035F4)) ^ 0x8ED01AFA ^ LODWORD(STACK[0x5340]) ^ v1017 ^ v1016 ^ v1019 ^ v1018;
  v1044 = (v1042 ^ 0x4F7D2C6A) + ((2 * (v1042 ^ 0x4F7D2C6A)) & 0x9C8257D6) - 2 * ((2 * (v1042 ^ 0x4F7D2C6A)) & 0x9C8257D6) + 1312893931;
  v1045 = (LODWORD(STACK[0x5338]) + 858449691 - ((2 * LODWORD(STACK[0x5338])) & 0x6655CE36)) ^ v1020 ^ 0x332AE71B ^ v1021 ^ v1023 ^ *(v1022 + 4 * ((6419 * ((v1004 ^ 0x902) + ((2 * LODWORD(STACK[0x5408])) & 4u)) - 8768) % 0x2240));
  v1046 = v1039 ^ 0xC1EB8C00;
  if (BYTE1(v1045) == (BYTE1(v1045) + 116))
  {
    v1047 = v1005;
  }

  else
  {
    v1047 = BYTE1(v1045);
  }

  *(STACK[0x5730] + 1533) = 116;
  v1048 = *(v1022 + 4 * (6419 * HIBYTE(v1046) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1046) + 9872422)) >> 32) >> 6)));
  v1049 = *(v1022 + 4 * (6419 * BYTE2(v1044) - 8768 * (((1959383 * (6419 * BYTE2(v1044))) >> 32) >> 2)));
  *(STACK[0x57C0] + 2663) = 103;
  v1050 = *(v1022 + 4 * (6419 * BYTE1(v1043) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1043) + 1649683)) >> 32) >> 2)));
  *(STACK[0x57B0] + 1343) = 98;
  v1051 = STACK[0xDCB0];
  v1052 = *(v1051 + 4 * (6419 * BYTE2(v1045) - 8768 * (((1959383 * (6419 * BYTE2(v1045))) >> 32) >> 2))) ^ *(v1051 + 4 * (6419 * HIBYTE(v1043) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1043) + 9872422)) >> 32) >> 6)));
  v1053 = ((v1052 & 0x200) - 259842207) ^ 0x1EF9013E;
  v1054 = v1053 + 1644387098;
  v1055 = ((2 * (v1054 & 0x8601)) & 0x10802 | v1054 & 0x8601) ^ (2 * (v1054 & 0x8601)) & (v1054 ^ 0x8B537D55);
  v1056 = ((2 * (v1054 ^ 0x8B537D55)) ^ 0x4922F624) & (v1054 ^ 0x8B537D55) ^ (2 * (v1054 ^ 0x8B537D55)) & 0x24D1FBD2;
  v1057 = (v1056 ^ 0x24503052) & (4 * v1055) ^ v1055;
  v1058 = ((4 * (v1056 ^ 0x24500852)) ^ 0x9347EF48) & (v1056 ^ 0x24500852) ^ (4 * (v1056 ^ 0x24500852)) & 0x24D1FBD0;
  v1059 = (v1058 ^ 0x41EB42) & (16 * v1057) ^ v1057;
  v1060 = ((16 * (v1058 ^ 0x24901092)) ^ 0x4D1FBD20) & (v1058 ^ 0x24901092) ^ (16 * (v1058 ^ 0x24901092)) & 0x24D1FBD0;
  v1061 = v1059 ^ 0x24D1FBD2 ^ (v1060 ^ 0x411B900) & (v1059 << 8);
  v1062 = *(STACK[0xDCB0] + 4 * (6419 * BYTE1(v1046) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1046) + 1649683)) >> 32) >> 2)));
  v1063 = (v1053 + 1644387098) ^ (2 * ((v1061 << 16) & 0x24D10000 ^ v1061 ^ ((v1061 << 16) ^ 0x7BD20000) & (((v1060 ^ 0x20C042D2) << 8) & 0x24D10000 ^ 0x24000000 ^ (((v1060 ^ 0x20C042D2) << 8) ^ 0x51FB0000) & (v1060 ^ 0x20C042D2))));
  v478 = ((v1063 ^ 0xA7817123) & (v1062 ^ 0x59B1A273) ^ v1063 & 0x1B892D95) == 58794241;
  v1064 = *(v1022 + 4 * (6419 * HIBYTE(v1044) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1044) + 9872422)) >> 32) >> 6)));
  v1065 = *(v1022 + 4 * (6419 * v1045 + 14802214 - 8768 * (((31350127 * (6419 * v1045 + 14802214)) >> 32) >> 6)));
  v1066 = (v1040 + 1063690655 - (v1041 & 0x7ECD433E)) ^ 0x3F66A19F ^ LODWORD(STACK[0x5348]) ^ *(v1022 + 4 * (6419 * BYTE2(v1043) - 8768 * (((1959383 * (6419 * BYTE2(v1043))) >> 32) >> 2))) ^ *(v1022 + 4 * (6419 * v1039 + 14802214 - 8768 * (((31350127 * (6419 * v1039 + 14802214)) >> 32) >> 6))) ^ *(v1022 + 4 * (6419 * v1047 + 1649683 - 8768 * (((1959383 * (6419 * v1047 + 1649683)) >> 32) >> 2)));
  v1067 = (LODWORD(STACK[0x5348]) + 1816847192 - 2 * (STACK[0x5348] & 0x6C4AE35F ^ STACK[0x5358] & 7)) ^ 0x6C4AE358 ^ v1048 ^ v1050 ^ v1065;
  v1068 = v1066 ^ v1064;
  v1069 = v1067 ^ v1049;
  *(STACK[0xDCB8] + 3362) = 18;
  v1070 = 1056413656 - v1053;
  v1071 = ((v1062 ^ 0x81714DBF) + 2123280961) ^ ((v1062 ^ 0x380A07E9) - 940181481);
  v1072 = (v1062 ^ 0xFB43C5B0) + 79444560;
  if (v478)
  {
    v1070 = v1053 + 1644387098;
  }

  v1073 = (v1071 ^ v1072) - 214315300 + v1070;
  v1074 = STACK[0x5350];
  v1075 = (v1074 - ((2 * v1074) & 0x4CED9374) + 645319098) ^ v1052 & 0xFFFFFDFF ^ v1073;
  v1076 = *(v1051 + 4 * (6419 * v1044 + 14802214 - 8768 * (((31350127 * (6419 * v1044 + 14802214)) >> 32) >> 6)));
  *STACK[0x52C8] = -21;
  v1077 = 6419 * BYTE1(v1044) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1044) + 1649683)) >> 32) >> 2);
  v1078 = v1075 ^ ((v1073 ^ 0x654A3740) - 1681166127) ^ ((v1073 ^ 0xBAA97D99) + 1143486986) ^ ((v1073 ^ 0x81220D4F) + 2141407968) ^ ((v1073 ^ 0x5FBFFFF9) - 1589725078) ^ 0x6530FE33 ^ v1076;
  v1079 = ((LODWORD(STACK[0x5360]) ^ 0x462D9220) - 1917317806 - ((2 * (LODWORD(STACK[0x5360]) ^ 0x462D9220)) & 0x1B701AA4)) ^ *(v1051 + 4 * (6419 * HIBYTE(v1045) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1045) + 9872422)) >> 32) >> 6))) ^ *(v1051 + 4 * (6419 * BYTE2(v1046) - 8768 * (((1959383 * (6419 * BYTE2(v1046))) >> 32) >> 2))) ^ *(v1051 + 4 * (6419 * v1043 + 14802214 - 8768 * (((31350127 * (6419 * v1043 + 14802214)) >> 32) >> 6))) ^ 0xCB959F72 ^ *(v1051 + 4 * v1077);
  *(STACK[0x55F0] + 1806) = -31;
  v1080 = *(v1051 + 4 * (6419 * HIBYTE(v1069) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1069) + 9872422)) >> 32) >> 6)));
  v1081 = *(v1051 + 4 * (6419 * BYTE2(v1068) - 8768 * (((1959383 * (6419 * BYTE2(v1068))) >> 32) >> 2)));
  v1082 = *(v1051 + 4 * (6419 * BYTE1(v1078) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1078) + 1649683)) >> 32) >> 2)));
  *(STACK[0x53E8] + 1950) = -68;
  v1083 = STACK[0xDCB8];
  *(v1083 + 548) = -69;
  v1084 = *(v1051 + 4 * (6419 * v1079 + 14802214 - 8768 * (((31350127 * (6419 * v1079 + 14802214)) >> 32) >> 6)));
  v1085 = STACK[0xDCB0];
  v1086 = *(STACK[0xDCB0] + 4 * (6419 * HIBYTE(v1068) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1068) + 9872422)) >> 32) >> 6)));
  v1087 = v1083 + 4096;
  *(v1083 + 5160) = -3;
  v1088 = *(v1085 + 4 * (6419 * BYTE2(v1078) - 8768 * (((1959383 * (6419 * BYTE2(v1078))) >> 32) >> 2)));
  v1089 = *(v1085 + 4 * (6419 * BYTE1(v1079) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1079) + 1649683)) >> 32) >> 2)));
  v1090 = *(v1085 + 4 * (6419 * v1069 + 14802214 - 8768 * (((31350127 * (6419 * v1069 + 14802214)) >> 32) >> 6)));
  *(STACK[0x5790] + 2921) = -20;
  *(v1083 + 3491) = 110;
  LODWORD(v1083) = *(v1085 + 4 * (6419 * HIBYTE(v1078) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1078) + 9872422)) >> 32) >> 6)));
  v1091 = *(v1085 + 4 * (6419 * BYTE2(v1079) - 8768 * (((1959383 * (6419 * BYTE2(v1079))) >> 32) >> 2)));
  v1092 = *(v1085 + 4 * (6419 * BYTE1(v1069) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1069) + 1649683)) >> 32) >> 2)));
  *(v1087 + 2035) = 99;
  v1093 = LODWORD(STACK[0x5368]) ^ v1040;
  v1094 = (LODWORD(STACK[0x5370]) + 471698538 - ((2 * LODWORD(STACK[0x5370])) & 0x383B18D4)) ^ 0x1C1D8C6A ^ v1080 ^ v1081 ^ v1082 ^ v1084;
  v1095 = (v1093 - 896300411 - ((2 * v1093) & 0x9527150A)) ^ 0xCA938A85 ^ v1086 ^ v1088 ^ v1089 ^ v1090;
  *(STACK[0x5580] + 1146) = 19;
  v1096 = *(v1085 + 4 * (6419 * BYTE2(v1069) - 8768 * (((1959383 * (6419 * BYTE2(v1069))) >> 32) >> 2)));
  v1097 = *(v1085 + 4 * (6419 * v1068 + 14802214 - 8768 * (((31350127 * (6419 * v1068 + 14802214)) >> 32) >> 6)));
  v1098 = *(v1085 + 4 * (6419 * HIBYTE(v1079) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1079) + 9872422)) >> 32) >> 6)));
  v1099 = *(v1085 + 4 * (6419 * BYTE1(v1068) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1068) + 1649683)) >> 32) >> 2)));
  LODWORD(v1085) = *(v1085 + 4 * (6419 * v1078 + 14802214 - 8768 * (((31350127 * (6419 * v1078 + 14802214)) >> 32) >> 6)));
  *(STACK[0x5700] + 1434) = 102;
  v1100 = ((v1093 ^ v1074) + 1598177825 - ((2 * (v1093 ^ v1074)) & 0xBE848442)) ^ 0x5F424221 ^ v1083 ^ v1091 ^ v1092 ^ v1097;
  LODWORD(v1085) = (LODWORD(STACK[0x5420]) + 143492236 - ((2 * LODWORD(STACK[0x5420])) & 0x111B0918)) ^ 0x88D848C ^ v1096 ^ v1098 ^ v1099 ^ v1085;
  v1101 = STACK[0xDCB8];
  v1102 = STACK[0xDCB8] + 4096;
  *(STACK[0x57C0] + 3452) = -45;
  *(v1101 + 5107) = -108;
  v1103 = STACK[0xDCB0];
  v1104 = *(STACK[0xDCB0] + 4 * (6419 * HIBYTE(v1094) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1094) + 9872422)) >> 32) >> 6)));
  *(v1101 + 70) = -83;
  LODWORD(v1101) = *(v1103 + 4 * (6419 * BYTE2(v1095) - 8768 * (((1959383 * (6419 * BYTE2(v1095))) >> 32) >> 2)));
  v1105 = *(v1103 + 4 * (6419 * BYTE1(v1100) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1100) + 1649683)) >> 32) >> 2)));
  *(v1102 + 1155) = -72;
  v1106 = *(v1103 + 4 * (6419 * v1085 + 14802214 - 8768 * (((31350127 * (6419 * v1085 + 14802214)) >> 32) >> 6)));
  v1107 = *(v1103 + 4 * (6419 * BYTE2(v1100) - 8768 * (((1959383 * (6419 * BYTE2(v1100))) >> 32) >> 2)));
  LODWORD(v1102) = *(v1103 + 4 * (6419 * BYTE1(v1085) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1085) + 1649683)) >> 32) >> 2)));
  v1108 = *(v1103 + 4 * (6419 * HIBYTE(v1095) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1095) + 9872422)) >> 32) >> 6)));
  *(STACK[0x5710] + 1184) = 48;
  v1109 = *(v1103 + 4 * (6419 * BYTE2(v1085) - 8768 * (((1959383 * (6419 * BYTE2(v1085))) >> 32) >> 2)));
  v1110 = *(v1103 + 4 * (6419 * v1094 + 14802214 - 8768 * (((31350127 * (6419 * v1094 + 14802214)) >> 32) >> 6)));
  v1111 = *(v1103 + 4 * (6419 * HIBYTE(v1100) + 9872422 - 8768 * (((31350127 * (6419 * HIBYTE(v1100) + 9872422)) >> 32) >> 6)));
  v1112 = *(v1103 + 4 * (6419 * BYTE1(v1094) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1094) + 1649683)) >> 32) >> 2)));
  LODWORD(v1087) = 6419 * BYTE3(v1085) + 9872422 - 8768 * (((31350127 * (6419 * BYTE3(v1085) + 9872422)) >> 32) >> 6);
  v1113 = STACK[0xDCB0];
  v1114 = *(STACK[0xDCB0] + 4 * (6419 * v1095 + 14802214 - 8768 * (((31350127 * (6419 * v1095 + 14802214)) >> 32) >> 6)));
  v1115 = *(STACK[0xDCB0] + 4 * (6419 * BYTE2(v1094) - 8768 * (((1959383 * (6419 * BYTE2(v1094))) >> 32) >> 2)));
  LODWORD(v1085) = *(STACK[0xDCB0] + 4 * (6419 * BYTE1(v1095) + 1649683 - 8768 * (((1959383 * (6419 * BYTE1(v1095) + 1649683)) >> 32) >> 2)));
  v1116 = *(STACK[0xDCB0] + 4 * v1087);
  *(STACK[0xDCB8] + 5031) = -89;
  v1117 = STACK[0x5378];
  v1118 = (STACK[0x5378] & 0xB4 | 2) ^ STACK[0x5378] & 0xC;
  v1119 = v1117 ^ (2 * ((v1117 ^ 0x34) & (2 * ((v1117 ^ 0x34) & (2 * ((v1117 ^ 0x34) & (2 * ((v1117 ^ 0x34) & (2 * ((v1117 ^ 0x34) & (2 * v1118) ^ v1118)) ^ v1118)) ^ v1118)) ^ v1118)) ^ v1118));
  v1120 = LODWORD(STACK[0x5388]) ^ LODWORD(STACK[0x5390]) ^ LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x5380]) ^ (((v1119 ^ 0xB8) << 24) - 1189857203 - (((v1119 ^ 0xB8) << 25) & 0x72000000));
  v1121 = STACK[0x53A0];
  v1122 = (v1121 + 643573581 - ((2 * v1121) & 0x4CB84E9A)) ^ 0x265C274D ^ v1104 ^ v1101 ^ v1105 ^ v1106;
  v1123 = STACK[0x53B0];
  v1124 = v1093 ^ 0xAF5E7AAA ^ (v1121 - 1352762710 - ((2 * v1121) & 0x5EBCF554)) ^ v1107 ^ v1102 ^ v1108 ^ v1110;
  LOBYTE(v1105) = v1120 ^ v1093;
  v1125 = v1120 ^ v1093 ^ 0xB914384D;
  v1126 = (v1123 + 1751471580 - ((2 * v1123) & 0xD0CAABB8)) ^ 0x686555DC ^ v1109 ^ v1111 ^ v1112 ^ v1114;
  LODWORD(v1085) = (LODWORD(STACK[0x53A8]) + 1986761282 - ((2 * LODWORD(STACK[0x53A8])) & 0xECD72484)) ^ 0x766B9242 ^ v1115 ^ v1085 ^ v1116 ^ *(v1113 + 4 * (6419 * v1100 + 14802214 - 8768 * (((31350127 * (6419 * v1100 + 14802214)) >> 32) >> 6)));
  *(STACK[0x56E0] + 1442) = -7;
  v1127 = v1121 & 0x6C7D862F ^ STACK[0x53B8] & 0xE;
  v1128 = *(v1113 + 4 * ((6419 * BYTE2(v1124) + 47770198) % 0x2240));
  LODWORD(v1101) = *(v1113 + 4 * ((6419 * HIBYTE(v1122) + 52751342) % 0x2240u));
  v1129 = *(v1113 + 4 * (6419 * BYTE1(v1126) + 13158950 - 8768 * (((31350127 * (6419 * BYTE1(v1126) + 13158950)) >> 32) >> 6)));
  LODWORD(STACK[0x5410]) = *(v1113 + 4 * ((6419 * v1085 + 49439138) % 0x2240));
  v1130 = v1120 ^ (v1121 + 1820165665 - 2 * v1127) ^ v1128;
  v1131 = STACK[0xDCB0];
  v1132 = *(STACK[0xDCB0] + 4 * ((6419 * HIBYTE(v1124) + 52751342) % 0x2240u));
  v1133 = *(STACK[0xDCB0] + 4 * ((6419 * BYTE2(v1126) + 47770198) % 0x2240));
  *(STACK[0x5308] + 774) = -16;
  v1134 = *(v1131 + 4 * (6419 * BYTE1(v1085) + 13158950 - 8768 * (((31350127 * (6419 * BYTE1(v1085) + 13158950)) >> 32) >> 6)));
  v1135 = *(v1131 + 4 * ((6419 * v1122 + 49439138) % 0x2240));
  *(STACK[0x5720] + 630) = -4;
  v1136 = *(v1131 + 4 * ((6419 * HIBYTE(v1126) + 52751342) % 0x2240u));
  LODWORD(v1101) = v1130 ^ v1101 ^ v1129;
  v1137 = v1132 ^ v1134;
  v1138 = STACK[0xDCB8];
  v1138[654] = 23;
  v1139 = *(v1131 + 4 * ((6419 * BYTE2(v1085) + 47770198) % 0x2240));
  v1140 = *(v1131 + 4 * (6419 * BYTE1(v1122) + 13158950 - 8768 * (((31350127 * (6419 * BYTE1(v1122) + 13158950)) >> 32) >> 6)));
  LODWORD(v1102) = *(v1131 + 4 * ((6419 * v1124 + 49439138) % 0x2240));
  v1138[4151] = -57;
  v1141 = v1133 ^ v1125 ^ v1137 ^ v1135;
  LODWORD(v1085) = *(v1131 + 4 * ((6419 * BYTE3(v1085) + 52751342) % 0x2240u));
  v1142 = *(v1131 + 4 * (6419 * BYTE1(v1124) + 13158950 - 8768 * (((31350127 * (6419 * BYTE1(v1124) + 13158950)) >> 32) >> 6)));
  v1143 = *(v1131 + 4 * ((6419 * BYTE2(v1122) + 47770198) % 0x2240));
  v1138[1458] = 114;
  v1144 = *(v1131 + 4 * ((6419 * v1126 + 49439138) % 0x2240));
  LODWORD(v1085) = (v1125 - ((2 * v1125) & 0x78190230) - 1140031208) ^ LODWORD(STACK[0x5420]) ^ v1085;
  v1145 = (v1125 - 2 * (v1125 & 0x2DA8129E ^ v1105 & 2) - 1381494116) ^ v1123 ^ v1136 ^ v1139 ^ v1140 ^ v1102;
  v1138[3203] = -52;
  v1138[1792] = 39;
  *STACK[0x5480] = -58;
  *(STACK[0x5570] + 152) = -85;
  v1146 = STACK[0xDCB8];
  *(v1146 + 2505) = 2;
  v1147 = STACK[0x5520];
  v1148 = v1085 ^ v1142 ^ v1143 ^ v1144;
  *(STACK[0xC0F8] + (v1147 + 39) - 32) = *(v1146 + 5621 * v1141 + 30578240 - 6152 * (((89362129 * (5621 * v1141 + 30578240)) >> 32) >> 7)) - 76;
  v1149 = STACK[0xC0F8] + (v1147 + 46);
  v1150 = STACK[0xDCB8];
  *(v1150 + 3567) = 21;
  *(v1149 - 32) = *(v1150 + 5621 * (BYTE1(v1148) ^ 0x81) + 13096930 - 6152 * (((44681065 * (5621 * (BYTE1(v1148) ^ 0x81u) + 13096930)) >> 32) >> 6)) - 76;
  v1151 = STACK[0xDCB8];
  *(v1151 + 707) = 111;
  v1152 = v1101 ^ LODWORD(STACK[0x5410]);
  *(STACK[0xC0F8] + (v1147 + 40) - 32) = *(v1151 + 5621 * (HIBYTE(v1145) ^ 0xAD) + 27660941 - 6152 * (((89362129 * (5621 * (HIBYTE(v1145) ^ 0xAD) + 27660941)) >> 32) >> 7)) - 76;
  *(STACK[0xC0F8] + (v1147 + 32) - 32) = *(STACK[0xDCB8] + 5621 * (HIBYTE(v1152) ^ 0xD5) + 27660941 - 6152 * (((89362129 * (5621 * (HIBYTE(v1152) ^ 0xD5) + 27660941)) >> 32) >> 7)) - 76;
  *(STACK[0x5790] + 228) = 6;
  *(STACK[0xC0F8] + (v1147 + 45) - 32) = *(STACK[0xDCB8] + 5621 * (BYTE2(v1148) ^ 0xC) + 1444597 - 6152 * (((2792567 * (5621 * (BYTE2(v1148) ^ 0xCu) + 1444597)) >> 32) >> 2)) - 76;
  v1153 = STACK[0xDCB8];
  *(v1153 + 3165) = -1;
  *(STACK[0xC0F8] + (v1147 + 36) - 32) = *(v1153 + 5621 * HIBYTE(v1141) + 27660941 - 6152 * (((89362129 * (5621 * HIBYTE(v1141) + 27660941)) >> 32) >> 7)) - 76;
  *(STACK[0xC0F8] + (v1147 + 41) - 32) = *(STACK[0xDCB8] + 5621 * (BYTE2(v1145) ^ 0xA8) + 1444597 - 6152 * (((2792567 * (5621 * (BYTE2(v1145) ^ 0xA8u) + 1444597)) >> 32) >> 2)) - 76;
  v1154 = STACK[0xDCB8];
  *(v1154 + 2338) = -81;
  *(STACK[0xC0F8] + (v1147 + 42) - 32) = *(v1154 + 5621 * (BYTE1(v1145) ^ 0x12) + 13096930 - 6152 * (((44681065 * (5621 * (BYTE1(v1145) ^ 0x12u) + 13096930)) >> 32) >> 6)) - 76;
  *(STACK[0xC0F8] + (v1147 + 37) - 32) = *(STACK[0xDCB8] + 5621 * BYTE2(v1141) + 1444597 - 6152 * (((2792567 * (5621 * BYTE2(v1141) + 1444597)) >> 32) >> 2)) - 76;
  v1155 = STACK[0x5720];
  v1156 = STACK[0xC0F8] + (v1147 + 33);
  v1157 = STACK[0xDCB8];
  *(v1157 + 783) = 13;
  *(v1156 - 32) = *(v1157 + 5621 * (BYTE2(v1152) ^ 0x69) + 1444597 - 6152 * (((2792567 * (5621 * (BYTE2(v1152) ^ 0x69u) + 1444597)) >> 32) >> 2)) - 76;
  *(STACK[0x55B0] + 471) = 95;
  *(STACK[0xC0F8] + (v1147 + 43) - 32) = *(STACK[0xDCB8] + 5621 * (v1145 ^ 0x9C) + 30578240 - 6152 * (((89362129 * (5621 * (v1145 ^ 0x9Cu) + 30578240)) >> 32) >> 7)) - 76;
  *(STACK[0xC0F8] + (v1147 + 47) - 32) = *(STACK[0xDCB8] + 5621 * (v1148 ^ 0x18) + 30578240 - 6152 * (((89362129 * (5621 * (v1148 ^ 0x18u) + 30578240)) >> 32) >> 7)) - 76;
  LODWORD(v1156) = 5621 * ((~(2 * v1152) & 0x80) + (v1152 ^ 0x152C));
  *(STACK[0x57B0] + 1616) = 43;
  *(STACK[0xC0F8] + (v1147 + 35) - 32) = *(STACK[0xDCB8] + v1156 - 6152 * (((89362129 * v1156) >> 32) >> 7)) - 76;
  *(STACK[0xC0F8] + (v1147 + 34) - 32) = *(STACK[0xDCB8] + 5621 * (BYTE1(v1152) ^ 0xBE) + 13096930 - 6152 * (((44681065 * (5621 * (BYTE1(v1152) ^ 0xBEu) + 13096930)) >> 32) >> 6)) - 76;
  *(STACK[0x5740] + 3232) = -123;
  v1158 = STACK[0xDCB8];
  LODWORD(STACK[0x53D8]) = v1141;
  *(v1158 + 6002) = 34;
  *(STACK[0xC0F8] + (v1147 + 38) - 32) = *(v1158 + 5621 * BYTE1(v1141) + 13096930 - 6152 * (((44681065 * (5621 * BYTE1(v1141) + 13096930)) >> 32) >> 6)) - 76;
  *(STACK[0xC0F8] + (v1147 + 44) - 32) = *(STACK[0xDCB8] + 5621 * (HIBYTE(v1148) ^ 0xBC) + 27660941 - 6152 * (((89362129 * (5621 * (HIBYTE(v1148) ^ 0xBC) + 27660941)) >> 32) >> 7)) - 76;
  v233 = (v1147 + 48) >= LODWORD(STACK[0x5128]);
  *(STACK[0xDCB8] + 5638) = -80;
  v1159 = v233;
  v1160 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x53E0]) | (v1159 << 6)));
  LODWORD(STACK[0x5520]) = v1147 + 16;
  LODWORD(STACK[0x5430]) += 89936;
  LODWORD(STACK[0x5440]) += 89936;
  LODWORD(STACK[0x5450]) += 89936;
  LODWORD(STACK[0x5460]) += 89936;
  LODWORD(STACK[0x5490]) += 89936;
  LODWORD(STACK[0x54B0]) += 89936;
  LODWORD(STACK[0x54C0]) += 89936;
  LODWORD(STACK[0x54D0]) += 89936;
  LODWORD(STACK[0x54E0]) += 89936;
  LODWORD(STACK[0x54F0]) += 89936;
  LODWORD(STACK[0x5640]) += 89936;
  LODWORD(STACK[0x5500]) += 89936;
  LODWORD(STACK[0x5510]) += 89936;
  LODWORD(STACK[0x5550]) += 89936;
  LODWORD(STACK[0x5620]) += 89936;
  LODWORD(STACK[0x5630]) += 89936;
  return v1160(v1148 ^ 0xDF6BC62E, v1155);
}

uint64_t sub_1006D7E24@<X0>(int a1@<W3>, unsigned int a2@<W4>, int a3@<W5>, uint64_t a4@<X8>)
{
  *(a4 + (v6 + v7)) = *(v8 + (v6 + v7));
  v10 = v6 + a1 > a2 && v6 + a1 < v4;
  return (*(STACK[0x57D8] + 8 * ((v10 * a3) ^ v5)))();
}

uint64_t sub_1006D7E5C()
{
  v2 = STACK[0xB410];
  v3 = __ROR8__(STACK[0xB410] & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = ((v3 + 0x31BF74D3543665CBLL) ^ 0xDEF8BDFA288940B8) - ((2 * ((v3 + 0x31BF74D3543665CBLL) ^ 0xDEF8BDFA288940B8)) & 0xD4B0186B88D9FB16) + 0x6A580C35C46CFD8BLL;
  v5 = __ROR8__(v4 ^ 0x2412F0361C4ECF0CLL, 8);
  v4 ^= 0xA9E956ACBDFDE155;
  v6 = (v5 + v4) ^ 0xEB252037561C34EFLL;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0xA7BAD6DDFE0EDBEALL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x6FDC5A952B1431;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = __ROR8__((0x59BCFA4D6F6B1F17 - ((v12 + v11) | 0x59BCFA4D6F6B1F17) + ((v12 + v11) | 0xA64305B29094E0E8)) ^ 0xC19072A3735C309FLL, 8);
  v14 = (0x59BCFA4D6F6B1F17 - ((v12 + v11) | 0x59BCFA4D6F6B1F17) + ((v12 + v11) | 0xA64305B29094E0E8)) ^ 0xC19072A3735C309FLL ^ __ROR8__(v11, 61);
  v15 = (v13 + v14) ^ 0x59A39C28B755E357;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x8B163508E451EC08;
  v18 = __ROR8__((STACK[0xB410] + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = __ROR8__(v17, 8) + (v17 ^ __ROR8__(v16, 61));
  v20 = ((0xE408B2CABC99A34 - v18) & 0x3EE2350F0B79EFCALL) + v18 + 0x31BF74D3543665CBLL - ((v18 + 0x31BF74D3543665CBLL) & 0x3AE2350F0B79EFCALL);
  v21 = __ROR8__(v20 ^ 0xAE5074F6FBD29DF5, 8);
  v20 ^= 0x23ABD26C5A61B3ACuLL;
  v22 = (v21 + v20) ^ 0xEB252037561C34EFLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x9661DD9D4815C156) - (v24 + v23) + 0x34CF11315BF51F55) ^ 0x6C8A38135A043B41;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x6FDC5A952B1431;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((((2 * (v29 + v28)) | 0xFD339AF5AA749F00) - (v29 + v28) - 0x7E99CD7AD53A4F80) ^ 0x194ABA6B36F29FF7, 8);
  v31 = (((2 * (v29 + v28)) | 0xFD339AF5AA749F00) - (v29 + v28) - 0x7E99CD7AD53A4F80) ^ 0x194ABA6B36F29FF7 ^ __ROR8__(v28, 61);
  v32 = (((2 * (v30 + v31)) & 0xA701AA37405EC82) - (v30 + v31) - 0x5380D51BA02F642) ^ 0xA3646E86F2A8EAE9;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x8B163508E451EC08;
  v35 = __ROR8__((STACK[0xB410] + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = ((0xCE408B2CABC99A34 - v35) & 0xC47659DD972068F3) + v35 + 0x31BF74D3543665CBLL - ((v35 + 0x31BF74D3543665CBLL) & 0xC07659DD972068F3);
  v37 = __ROR8__(v36 ^ 0x54C41824678B1ACCLL, 8);
  v36 ^= 0xD93FBEBEC6383495;
  v38 = (v37 + v36) ^ 0xEB252037561C34EFLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (0x957A6E42017C8902 - ((v40 + v39) | 0x957A6E42017C8902) + ((v40 + v39) | 0x6A8591BDFE8376FDLL)) ^ 0xCD3F4760008DAD17;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * ((v43 + v42) ^ 0xFC8C558E613CEA79)) | 0xB4BE1C9CE2C37D0) - ((v43 + v42) ^ 0xFC8C558E613CEA79) - 0x5A5F0E4E7161BE8) ^ 0xF94679301301E5A0;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (0x8E36A7CAF89AAEDELL - ((v46 + v45) | 0x8E36A7CAF89AAEDELL) + ((v46 + v45) | 0x71C9583507655121)) ^ 0x161A2F24E4AD8156;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = __ROR8__((((2 * (v49 + v48)) & 0x504A92AA062FD4A0) - (v49 + v48) - 0x282549550317EA51) ^ 0x8E792A824BBDF6F8, 8);
  v51 = (((2 * (v49 + v48)) & 0x504A92AA062FD4A0) - (v49 + v48) - 0x282549550317EA51) ^ 0x8E792A824BBDF6F8 ^ __ROR8__(v48, 61);
  v52 = __ROR8__((STACK[0xB410] + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v53 = (((((2 * v19) | 0xBA4226FE84B9F7EELL) - v19 + 0x22DEEC80BDA30409) ^ 0xB8CC84E55163714BLL) >> (8 * (v2 & 7u))) ^ *v2;
  v54 = ((2 * (v52 + 0x31BF74D3543665CBLL)) | 0x2C18F09AF1C3170) - (v52 + 0x31BF74D3543665CBLL) + 0x7E9F387B2871E748;
  v55 = __ROR8__(v54 ^ 0x11D2867D27256A87, 8);
  v54 ^= 0x9C2920E7869644DELL;
  v56 = (0x96CBACB6DEB23ABALL - ((v55 + v54) | 0x96CBACB6DEB23ABALL) + ((v55 + v54) | 0x69345349214DC545)) ^ 0x8211737E7751F1AALL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) | 0x3721D85D1E8A2E2ELL) - (v58 + v57) - 0x1B90EC2E8F451717) ^ 0xBC2A3AF3714BCCFDLL;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x6FDC5A952B1431;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((v63 + v62) & 0xA45231B2EAAA9A67 ^ 0x84422082080A0825) + ((v63 + v62) & 0x5BADCE4D15556598 ^ 0x128DC40414504509) - 1) ^ 0xF11C9397FF929D5ALL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (v50 + v51 - ((2 * (v50 + v51)) & 0x69A8A9B8F29C198ELL) - 0x4B2BAB2386B1F339) ^ 0x3FC261D49D1FE0CFLL;
  v68 = (((2 * (v66 + v65)) | 0x706B6843C425BA9ALL) - (v66 + v65) - 0x3835B421E212DD4DLL) ^ 0x6196280955473E1ALL;
  v69 = v68 ^ __ROR8__(v65, 61);
  v70 = __ROR8__(v68, 8);
  v71 = __ROR8__(v67, 8) + (v67 ^ __ROR8__(v51, 61));
  v72 = (v70 + v69 - ((2 * (v70 + v69)) & 0x1D918DB90438DC4) + 0xEC8C6DC821C6E2) ^ 0x8BFAB9652C702AEALL;
  v73 = (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ 0x65ED979A133F8ABCLL) >> (8 * ((v2 + 1) & 7u))) ^ v2[1];
  v74 = __ROR8__((STACK[0xB410] + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = (((((2 * (v71 ^ 0xCACF33619A1C0044)) | 0xC2CCD7FA015B4EAELL) - (v71 ^ 0xCACF33619A1C0044) - 0x61666BFD00ADA757) ^ 0xCE44CF06898E2DAFLL) >> (8 * ((v2 + 2) & 7u))) ^ v2[2];
  v76 = (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v69, 61))) ^ 0x65ED979A133F8ABCLL) >> (8 * ((v2 + 3) & 7u))) ^ v2[3];
  v77 = ((2 * v74 + 0x637EE9A6A86CCB96) & 0xD3DD6CBE8EAE889CLL) - v74 + 0x6451D4CD647255E6;
  v78 = v77 ^ 0x6A308594803C98ELL;
  v77 ^= 0x8B58AEC3E9B0E7D7;
  v79 = __ROR8__(v78, 8);
  v80 = (((2 * (v79 + v77)) & 0xD9D1049E85B74688) - (v79 + v77) + 0x13177DB0BD245CBBLL) ^ 0xF8325D87EB386854;
  v81 = v80 ^ __ROR8__(v77, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (0x74AA1043D7020D1BLL - ((v82 + v81) | 0x74AA1043D7020D1BLL) + ((v82 + v81) | 0x8B55EFBC28FDF2E4)) ^ 0x2CEF3961D6F3290ELL;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x6FDC5A952B1431;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0x67D37711E3C8D077;
  v88 = __ROR8__(v87, 8);
  v89 = v87 ^ __ROR8__(v86, 61);
  v90 = (((2 * (v88 + v89)) & 0xCEEDE239ADC1F56ELL) - (v88 + v89) + 0x18890EE3291F0548) ^ 0x412A92CB9E4AE61FLL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0x8B163508E451EC08;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  LOBYTE(v93) = (((((2 * (v94 + v93)) | 0x4E25967E6A9B089CLL) - (v94 + v93) - 0x2712CB3F354D844ELL) ^ 0x42FF5CA526720EF2) >> (8 * ((v2 + 4) & 7u))) ^ v2[4];
  v95 = __ROR8__((STACK[0xB410] + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = ((2 * (v95 + 0x31BF74D3543665CBLL)) | 0xB85A023544BE07CELL) - (v95 + 0x31BF74D3543665CBLL) + 0x23D2FEE55DA0FC19;
  v97 = v96 ^ 0x4C9F40E352F471D8;
  v96 ^= 0xC164E679F3475F81;
  v98 = (__ROR8__(v97, 8) + v96) ^ 0xEB252037561C34EFLL;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = __ROR8__(v98, 8);
  v101 = __ROR8__((((2 * (v100 + v99)) & 0x7C8F96DDA514045ELL) - (v100 + v99) + 0x41B834912D75FDD0) ^ 0xE602E24CD37B263ALL, 8);
  v102 = (((2 * (v100 + v99)) & 0x7C8F96DDA514045ELL) - (v100 + v99) + 0x41B834912D75FDD0) ^ 0xE602E24CD37B263ALL ^ __ROR8__(v99, 61);
  v103 = (((2 * (v101 + v102)) | 0xE7499664FFC2F226) - (v101 + v102) - 0x73A4CB327FE17913) ^ 0x73CB1768EACA6D22;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x67D37711E3C8D077;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x59A39C28B755E357;
  v108 = __ROR8__(v107, 8);
  v109 = v107 ^ __ROR8__(v106, 61);
  v110 = (((2 * (v108 + v109)) | 0x502E70B9828C45EELL) - (v108 + v109) - 0x2817385CC14622F7) ^ 0xA3010D542517CEFFLL;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = __ROR8__(v110, 8);
  LOBYTE(v111) = (((((2 * (v112 + v111)) & 0x83BD49CF23FAB166) - (v112 + v111) + 0x3E215B186E02A74CLL) ^ 0x5BCCCC827D3D2DF0) >> (8 * ((v2 + 5) & 7u))) ^ v2[5];
  v113 = __ROR8__((STACK[0xB410] + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v114 = v113 - ((2 * v113 + 0x637EE9A6A86CCB96) & 0x97D590622F3D9B50) - 0x7E55C2FB942ACC8DLL;
  v115 = __ROR8__(v114 ^ 0xDF5889C8E735BF97, 8);
  v114 ^= 0x52A32F52468691CEuLL;
  v116 = (v115 + v114) ^ 0xEB252037561C34EFLL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0xA7BAD6DDFE0EDBEALL;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (0x4FABDFC91B87EEEBLL - ((v120 + v119) | 0x4FABDFC91B87EEEBLL) + ((v120 + v119) | 0xB0542036E4781114)) ^ 0xB03BFC6C71530525;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (v123 + v122 - ((2 * (v123 + v122)) & 0xB11198C6BEC55A74) - 0x2777339CA09D52C6) ^ 0xBF5BBB72BCAA7D4DLL;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0x59A39C28B755E357;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0x8B163508E451EC08;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  LOBYTE(v88) = (((((2 * (v130 + v129)) & 0xA4A252D0128561F6) - (v130 + v129) - 0x525129680942B0FCLL) ^ 0xC843410DE582C5B8) >> (8 * ((v2 + 6) & 7u))) ^ v2[6];
  v131 = STACK[0xB410] + 7;
  v132 = __ROR8__(v131 & 0xFFFFFFFFFFFFFFF8, 8);
  v133 = (v132 + 0x31BF74D3543665CBLL) ^ 0x1D49E76351185C66;
  v134 = __ROR8__((v132 + 0x31BF74D3543665CBLL) ^ 0x90B241F9F0AB723FLL, 8);
  v135 = (0x8DE74161A76D9194 - ((v134 + v133) | 0x8DE74161A76D9194) + ((v134 + v133) | 0x7218BE9E58926E6BLL)) ^ 0x993D9EA90E8E5A84;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0xA7BAD6DDFE0EDBEALL;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = __ROR8__(v137, 8);
  v140 = (((2 * (v139 + v138)) | 0xC830254E8CCA439ALL) - (v139 + v138) - 0x641812A7466521CDLL) ^ 0x6477CEFDD34E35FCLL;
  v141 = v140 ^ __ROR8__(v138, 61);
  v142 = __ROR8__(v140, 8);
  v143 = ((v142 + v141) & 0xCA2D0A6550F94595 ^ 0x4201024050A94094) + ((v142 + v141) ^ 0xA93C9D352454AF41) - (((v142 + v141) ^ 0xA93C9D352454AF41) & 0xCA2D0A6550F94595);
  v144 = (v53 << 56) | (v73 << 48) | (v75 << 40) | (v76 << 32) | (v93 << 24) | (v111 << 16);
  v145 = v143 ^ 0x4C2E04197653AA3 ^ __ROR8__(v141, 61);
  v146 = (__ROR8__(v143 ^ 0x4C2E04197653AA3, 8) + v145) ^ 0x59A39C28B755E357;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0x8B163508E451EC08;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = __ROR8__(v148, 8);
  v151 = 0x63D072DF557A7FFBLL - ((v150 + v149) | 0x63D072DF557A7FFBLL) + ((v150 + v149) | 0x9C2F8D20AA858004);
  v152 = ((v144 & 0xB44F7188F0750000 | ((v88 << 8) ^ 0x4BB08E770F8AEF58) & ~v144) ^ 0xAAEA53A52F48DE57) & (((v151 ^ 0xF9C21ABAB9BA0AB8) >> (8 * (v131 & 7u))) ^ ~*v131 | 0xFFFFFFFFFFFFFF00) | (((v151 ^ 0xF9C21ABAB9BA0AB8) >> (8 * (v131 & 7u))) ^ *v131) & 0xF0;
  v153 = STACK[0x2A10];
  STACK[0x1D4C0] = (0xF40260A271B5317BLL * (STACK[0x9D70] - (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0xE6280680)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x2BE0EB7F630A4FDALL)) > 0xFFFFFFFF10C2EC2ALL) ^ ((((v152 ^ 0xECEDAB764A462450) + 0x3372865A537AAB7ELL) ^ ((v152 ^ 0xD871C639A76AB339) + 0x7EEEB15BE563C15) ^ ((v152 ^ 0xD5C6B09DCDEEA666) + 0xA599DB1D4D2294CLL)) - 0x3EC5F0FD4AC1AA4ELL < 0xEF3D13D5) ^ STACK[0x2A10];
  LODWORD(STACK[0x1D4E0]) = v153 + v0 + 1885628421 - 4;
  LODWORD(STACK[0x1D4CC]) = v153 + v0 + 1451493860;
  LODWORD(STACK[0x1D4D4]) = (v0 + 1885628421) ^ v153;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 1885628421) | 0xE20) - v153;
  LODWORD(STACK[0x1D4D0]) = v153;
  STACK[0x1D4D8] = v153;
  LODWORD(v152) = v0 ^ 0x2462;
  v154 = STACK[0x57D8];
  v155 = (*(STACK[0x57D8] + 8 * v152))(v1 - 240);
  return (*(v154 + 8 * SLODWORD(STACK[0x1D4E4])))(v155);
}

uint64_t sub_1006D8FF8(uint64_t a1, uint64_t a2)
{
  v2 = 1502 * (STACK[0x51B8] ^ 0x5853);
  v3 = STACK[0x51B8] - 22013;
  v4 = STACK[0x57D8];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * v3);
  return (*(v4 + 8 * (v3 + v2 - 3670)))(a1, a2, 462, 5992);
}

uint64_t sub_1006D9130@<X0>(uint64_t a1@<X8>)
{
  v4 = *(STACK[0x57D8] + 8 * v3);
  STACK[0x57C0] = v1 & 0xFFFFFFF8;
  return v4(a1 - v2, a1 - v2 - 5332);
}

uint64_t sub_1006D91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x51B8] + 1303;
  LODWORD(STACK[0x5924]) = v7 ^ *(*STACK[0x51F0] + (((LODWORD(STACK[0x914]) | 1) - 86093159) & *STACK[0x51E8])) & 0x7FFFFFFF ^ 0x9432EB86;
  return (*(STACK[0x57D8] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, LODWORD(STACK[0xE3A4]));
}

uint64_t sub_1006D922C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  STACK[0xCF30] += 16;
  a1[34] = a4;
  a1[31] = v5;
  a1[32] = v5 + 0x4DC10458F9981692;
  v7 = a3 != 0x3FF9F9826CAB9AF2 && a2 != 0;
  return (*(STACK[0x57D8] + 8 * ((38 * v7) ^ a5)))();
}

uint64_t sub_1006D92E0()
{
  v1[1] = 0xF9E4F3B5C631896;
  *v1 = 0x5E6653D96D0CF4EBLL;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006D9330@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v13 = STACK[0x40E4];
  v14 = v5 + (v6 - 103679700);
  v15 = *v7 & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*v11 + ((LODWORD(STACK[0x40E4]) - 103654337 + (v14 & 0xFFFFFFF8)) & v15));
  v17 = a5 + (v6 - 103679652);
  v18 = (__ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8) + v16) ^ v12;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a3;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a4;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a2;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0xFD76AC128298FD08) - (v26 + v25) + 0x144A9F6BEB3817CLL) ^ 0x39669FFF8D09C9A5;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v9;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = *(*v11 + (((v17 & 0x329F1EE0) + (v17 & 0xCD60E118 | 0x329F1EE4) - 952931662) & v15));
  v33 = (__ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8) + v32) ^ v12;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = (0xBC8312C99BF149ECLL - ((v34 + v35) ^ 0xD25E23F4D3D53E5ELL | 0xBC8312C99BF149ECLL) + ((v34 + v35) ^ 0xD25E23F4D3D53E5ELL | 0x437CED36640EB613)) ^ 0x84108C2C8B2BE204;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (0x9AC6A194D689A179 - ((v31 + v30) | 0x9AC6A194D689A179) + ((v31 + v30) | 0x65395E6B29765E86)) ^ 0x3AB4B2558AEE549DLL;
  v39 = (__ROR8__(v36, 8) + v37) ^ a4;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a2;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v38, 8) + (v38 ^ __ROR8__(v30, 61));
  v44 = (__ROR8__(v41, 8) + v42) ^ v10;
  v45 = __ROR8__(v44, 8);
  v46 = v44 ^ __ROR8__(v42, 61);
  v47 = (v45 + v46 - ((2 * (v45 + v46)) & 0x4F622897349D518ALL) - 0x584EEBB465B1573BLL) ^ 0xF9734EEC39C72BDLL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v8;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  *v17 = (((((2 * (v51 + v50)) & 0x5A38E09AAE40F9FELL) - (v51 + v50) - 0x2D1C704D57207D00) ^ 0x132047600C1ACB28uLL) >> (8 * (v17 & 7u))) ^ ((v43 ^ 0xC1C3C8D2A4C54828) >> (8 * (v14 & 7u))) ^ *v14;
  return (*(STACK[0x57D8] + 8 * ((16661 * (v6 - 1 == a1)) ^ v13)))();
}

uint64_t sub_1006D96F0(uint64_t a1, int a2)
{
  STACK[0xBBF0] = STACK[0x9E90];
  STACK[0xBBA0] = &STACK[0x75D0];
  STACK[0xA098] = &STACK[0x5FDC];
  STACK[0x6F18] = &STACK[0x8228];
  STACK[0x7748] = &STACK[0x953C];
  STACK[0xA050] = &STACK[0x63B0];
  STACK[0x79D0] = &STACK[0xBB24];
  LODWORD(STACK[0x9F54]) = a2 + 7;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0x402)))();
}

uint64_t sub_1006D9884@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v20 = (a7 - 23908) | 0x1408;
  LODWORD(STACK[0x5640]) = v20;
  v21 = ((v8 ^ 0x82843C1C) + 1567291332) ^ ((v8 ^ 0xDEB73966) + 22672058) ^ (v20 - 1546852856 + ((a7 + 2082591616) ^ v8));
  v22 = v17 ^ v16 ^ ((v17 ^ 0x102882F6) - 1886742614) ^ ((v17 ^ 0xF4997A2B) + 1799057269) ^ ((v17 ^ 0xFB536C82) + 1693546974) ^ ((v17 ^ 0x7FBF7EFF) - 534942815);
  LODWORD(STACK[0x5670]) = a3;
  v23 = a3 + v11 + v15 + 984917425;
  v24 = ((v23 << 31) ^ (v23 << 30)) & 0xC0000000 | ((((v23 ^ 0x47B4B818) - 1294733787) ^ v23 ^ ((v23 ^ 0x9D0E31AC) + 1751738257) ^ ((v23 ^ 0xEFDFDF8A) + 448301495) ^ ((v23 ^ LODWORD(STACK[0x396C])) - 895833662)) >> 2);
  v25 = (((v24 ^ 0xD9B07966) + 805703929) ^ ((v24 ^ 0xA06B28A) - 474948843) ^ ((v24 ^ 0x9110E19C) + 2024179715)) + v21 - 838852153;
  v26 = (v25 ^ 0x66CFD34A) & (2 * (v25 & 0x86EF9A4A)) ^ v25 & 0x86EF9A4A;
  v27 = ((2 * (v25 ^ 0x66D9F35E)) ^ 0xC06CD228) & (v25 ^ 0x66D9F35E) ^ (2 * (v25 ^ 0x66D9F35E)) & 0xE0366914;
  v28 = v27 ^ 0x20122914;
  v29 = (v27 ^ LODWORD(STACK[0x3970])) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0x80D9A450) & v28 ^ (4 * v28) & 0xE0366914;
  v31 = v29 ^ 0xE0366914 ^ (v30 ^ 0x80102004) & (16 * v29);
  v32 = (16 * (v30 ^ 0x60264904)) & 0xE0366910 ^ 0xE0106814 ^ ((16 * (v30 ^ 0x60264904)) ^ 0x3669140) & (v30 ^ 0x60264904);
  v33 = (v31 << 8) & 0xE0366900 ^ v31 ^ ((v31 << 8) ^ 0x36691400) & v32;
  v34 = a4 ^ a1 ^ a5 ^ a6 ^ v14 ^ v25 ^ (2 * ((v33 << 16) & 0x60360000 ^ v33 ^ ((v33 << 16) ^ 0x69140000) & ((v32 << 8) & 0x60360000 ^ 0x40160000 ^ ((v32 << 8) ^ 0x36690000) & v32)));
  v35 = ((v25 + 2031117751) ^ 0xD9EB493) & (2 * ((v25 + 2031117751) & 0xDDF3494)) ^ (v25 + 2031117751) & 0xDDF3494;
  v36 = ((2 * ((v25 + 2031117751) ^ 0x6BAD59B)) ^ 0x16CBC21E) & ((v25 + 2031117751) ^ 0x6BAD59B) ^ (2 * ((v25 + 2031117751) ^ 0x6BAD59B)) & 0xB65E10E;
  v37 = v36 ^ 0x9242101;
  v38 = (v36 ^ 0x241C000) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0x2D97843C) & v37 ^ (4 * v37) & 0xB65E10C;
  v40 = (v39 ^ 0x9058000) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x2606103)) ^ 0xB65E10F0) & (v39 ^ 0x2606103) ^ (16 * (v39 ^ 0x2606103)) & 0xB65E100;
  v42 = v40 ^ 0xB65E10F ^ (v41 ^ 0x2440000) & (v40 << 8);
  v43 = ((v42 << 16) ^ 0x610F0000) & (((v41 ^ 0x921E10F) << 8) & 0xB650000 ^ 0xA040000 ^ (((v41 ^ 0x921E10F) << 8) ^ 0x65E10000) & (v41 ^ 0x921E10F));
  v44 = LODWORD(STACK[0x57C0]) + LODWORD(STACK[0x5790]) + v21 + v25 - (((v22 ^ 0x881A4A6C) - 1939196733) ^ ((v22 ^ 0x2822AFCD) + 743625060) ^ ((v22 ^ 0x3FBAF0FE) + 1003130449)) + 528096564;
  HIDWORD(v45) = ((v44 ^ 0xE985B808) + 185365) ^ v44 ^ ((v44 ^ 0x15994) + 144777) ^ ((v44 ^ LODWORD(STACK[0x3974])) + 123286) ^ ((v44 ^ 0x2FFF6) + 103403);
  LODWORD(v45) = ((v44 ^ 0xBA1E4A7F) + 545072740) ^ v44 ^ ((v44 ^ LODWORD(STACK[0x3978])) - 12173478) ^ ((v44 ^ 0xC558E726) + 1597737787) ^ ((v44 ^ 0x7FFF6DFC) - 442760732);
  v46 = ((((v45 >> 18) ^ 0xB30CDCFD) - 493145705) ^ (((v45 >> 18) ^ 0x61336674) + 816089888) ^ (((v45 >> 18) ^ 0xF6C763EE) - 1487892858)) + LODWORD(STACK[0x57C0]);
  v47 = LODWORD(STACK[0x57C0]) - v9 + a2 + v46 - (((v34 ^ 0xF197C97C) + 818626272) ^ ((v34 ^ 0x71BC442C) - 1327451248) ^ ((v34 ^ 0x5A6A90E9) - 1690933429)) - 769022406;
  v48 = (2 * (v47 & 0xD0F18066)) & (v47 ^ 0x7AAF62F2) ^ v47 & 0xD0F18066 ^ ((2 * (v47 & 0xD0F18066)) & 0xA0420084 | v19);
  v49 = (2 * (v47 ^ 0x7AAF62F2)) & 0xAA5EE294 ^ 0xAA422294 ^ ((2 * (v47 ^ 0x7AAF62F2)) ^ 0x54BDC528) & (v47 ^ 0x7AAF62F2);
  v50 = (4 * v48) & 0xAA5EE290 ^ v48 ^ ((4 * v48) ^ 0x430000) & v49;
  v51 = (4 * v49) & 0xAA5EE294 ^ 0x2046084 ^ ((4 * v49) ^ 0xA97B8A50) & v49;
  v52 = (16 * v50) & 0xAA5EE290 ^ v50 ^ ((16 * v50) ^ 0x52C0000) & v51;
  v53 = (16 * v51) & 0xAA5EE290 ^ 0xA10C294 ^ ((16 * v51) ^ 0xA5EE2940) & v51;
  v54 = v52 ^ 0xA0402294 ^ (v52 << 8) & 0xAA5EE200 ^ ((v52 << 8) ^ 0x5EC00000) & v53;
  HIDWORD(v45) = v47;
  LODWORD(v45) = v47 ^ (2 * ((v54 << 16) & 0x2A5E0000 ^ v54 ^ ((v54 << 16) ^ 0x62940000) & ((v53 << 8) & 0x2A5E0000 ^ 0x201C0000 ^ ((v53 << 8) ^ 0x5EE20000) & v53)));
  v55 = v46 - 43016789;
  v56 = ((((v45 >> 1) ^ 0xA2A83162) - 449052578) ^ (((v45 >> 1) ^ 0x23D06327) + 1682199065) ^ (((v45 >> 1) ^ 0xE14A70E2) - 1495383586)) + v9;
  v57 = v56 - 231381133;
  v58 = (v46 - 43016789) ^ 0xF8336AC9;
  v59 = (2 * ((v46 - 43016789) & 0x8D212E48)) & v58 ^ (v46 - 43016789) & 0x8D212E48 ^ ((2 * ((v46 - 43016789) & 0x8D212E48)) & 0x10024480 | 0x60000000);
  v60 = ((2 * v58) ^ 0xEA248902) & v58 ^ (2 * v58) & 0x75124480;
  v61 = v60 ^ 0x15124481;
  v62 = (v60 ^ 0x60000001) & (4 * v59) ^ v59;
  v63 = ((4 * v61) ^ 0xD4491204) & v61 ^ (4 * v61) & 0x75124480;
  v64 = v62 ^ 0x15124481 ^ (v63 ^ 0x54000001) & (16 * v62);
  v65 = (16 * (v63 ^ LODWORD(STACK[0x397C]))) & 0x75124480 ^ 0x24120481 ^ ((16 * (v63 ^ LODWORD(STACK[0x397C]))) ^ 0x51244810) & (v63 ^ LODWORD(STACK[0x397C]));
  v66 = (v64 << 8) & 0x75124400 ^ v64 ^ ((v64 << 8) ^ 0x12448100) & v65;
  v67 = (v46 - 43016789) ^ (v25 + 2031117751) ^ (2 * ((v42 << 16) & 0xB650000 ^ v42 ^ v43 ^ v66 ^ (v66 << 16) & 0x75120000 ^ ((v66 << 16) ^ 0x44810000) & ((v65 << 8) & 0x75120000 ^ 0x65120000 ^ ((v65 << 8) ^ 0x12440000) & v65)));
  LODWORD(STACK[0x56C0]) = v9;
  v68 = v9 + (((v12 ^ 0xF93899A4) - 1348403623) ^ ((v12 ^ 0xD149B652) - 2016292433) ^ ((v12 ^ 0xAF82F011) - 115697682)) - v25 - (((v67 ^ 0xE2E2A350) + 203488787) ^ ((v67 ^ 0x8E760FAB) + 1622430442) ^ ((v67 ^ 0xBA8FFD3B) + 1414373498)) - 616544337 + v56 - 231381133;
  v69 = 2 * ((v56 - 231381133) & 0xE62484F4);
  v70 = ((2 * (v57 ^ 0x571567B3)) ^ 0x6263C68E) & (v57 ^ 0x571567B3) ^ (2 * (v57 ^ 0x571567B3)) & 0xB131E346;
  v71 = v70 ^ 0x91102141;
  v72 = (v70 ^ 0x20200201) & (4 * (v69 & (v57 ^ 0xD71466F3) ^ v57 & 0xE62484F4)) ^ v69 & (v57 ^ 0xD71466F3) ^ v57 & 0xE62484F4;
  v73 = ((4 * v71) ^ 0xC4C78D1C) & v71 ^ (4 * v71) & 0xB131E344;
  v74 = (v73 ^ 0x80018100) & (16 * v72) ^ v72;
  v75 = ((16 * (v73 ^ 0x31306243)) ^ 0x131E3470) & (v73 ^ 0x31306243) ^ (16 * (v73 ^ 0x31306243)) & 0xB131E340;
  v76 = v74 ^ 0xB131E347 ^ (v75 ^ 0x11102007) & (v74 << 8);
  v77 = (v76 << 16) & 0x31310000 ^ v76 ^ ((v76 << 16) ^ 0x63470000) & (((v75 ^ 0xA021C307) << 8) & 0xB1310000 ^ (((v75 ^ 0xA021C307) << 8) ^ 0x31E30000) & (v75 ^ 0xA021C307) ^ 0x100000);
  LODWORD(v45) = __ROR4__(__ROR4__(((v68 ^ 0xCD117720) + 2021413838) ^ v68 ^ ((v68 ^ 0x5FFEA255) - 359430471) ^ ((v68 ^ 0xA782F19C) + 317707634) ^ ((v68 ^ 0x7FFFFFFB) - 896345321), 3) ^ 0x8F695861, 29) ^ 0xDA9AD2E6;
  HIDWORD(v45) = v45;
  v78 = v25 + ((((v45 >> 16) ^ 0x93FFF30B) - 858556457) ^ (((v45 >> 16) ^ 0xDD012EE6) - 2110936516) ^ (((v45 >> 16) ^ 0x840636AF) - 617958797));
  v79 = v78 - 1638381816;
  v80 = (v79 ^ 0x1AE8C332) & (2 * (v79 & 0x52C2E3A2)) ^ v79 & 0x52C2E3A2;
  v81 = ((2 * (v79 ^ 0x9BE88632)) ^ 0x9254CB20) & (v79 ^ 0x9BE88632) ^ (2 * (v79 ^ 0x9BE88632)) & 0xC92A6590;
  v82 = v81 ^ 0x492A2490;
  v83 = (v81 ^ 0x80202100) & (4 * v80) ^ v80;
  v84 = ((4 * v82) ^ 0x24A99640) & v82 ^ (4 * v82) & 0xC92A6590;
  v85 = v83 ^ 0xC92A6590 ^ (v84 ^ 0x280410) & (16 * v83);
  v86 = (16 * (v84 ^ 0xC9026190)) & 0xC92A6590 ^ LODWORD(STACK[0x5630]) ^ ((16 * (v84 ^ 0xC9026190)) ^ 0x92A65900) & (v84 ^ 0xC9026190);
  v87 = (v85 << 8) & 0xC92A6500 ^ v85 ^ ((v85 << 8) ^ 0x2A659000) & v86;
  v88 = (v78 - 1638381816) ^ (v56 - 231381133) ^ (v46 + 1884188516) ^ (((v46 + 1884188516) ^ 0x5EAD64B) + 531139269) ^ (((v46 + 1884188516) ^ 0x1DBDD274) + 134188796) ^ (((v46 + 1884188516) ^ 0xD2155830) - 933821248) ^ (((v46 + 1884188516) ^ 0x2FFFFF7F) + 901620721) ^ (2 * (v77 ^ (v87 << 16) & 0x492A0000 ^ v87 ^ ((v87 << 16) ^ 0x65900000) & ((v86 << 8) & 0xC92A0000 ^ 0x410A0000 ^ ((v86 << 8) ^ 0x2A650000) & v86)));
  v89 = v7 + v25 + v46 - 43016789 + (((v88 ^ 0x21A734CB) - 1583197994) ^ ((v88 ^ 0x3ABAAEC8) - 1161835817) ^ ((v88 ^ 0x6A33538B) - 365545578));
  HIDWORD(v45) = (-1701912307 - v89) ^ (v89 + 1701912309) ^ (((v89 + 1701912309) ^ 1) + 1);
  LODWORD(v45) = (((v89 + 1701912309) ^ 0x64974F5D) + 1991497089) ^ (v89 + 1701912309) ^ (((v89 + 1701912309) ^ 0x3AC51A54) + 685867146) ^ (((v89 + 1701912309) ^ 0xC876CF54) - 632138358) ^ (((v89 + 1701912309) ^ 0x7BFFFF7F) + 1775986083);
  v90 = ((2 * (v57 ^ 0x7A9E810)) ^ 0xC31AD9C8) & (v57 ^ 0x7A9E810) ^ (2 * (v57 ^ 0x7A9E810)) & 0xE18D6CE4;
  v91 = v90 ^ 0x20852424;
  v92 = (v90 ^ 0x810100C4) & (4 * (v69 & (v57 ^ 0xC7A0E0F0) ^ v57 & 0xE62484F4)) ^ v69 & (v57 ^ 0xC7A0E0F0) ^ v57 & 0xE62484F4;
  v93 = ((4 * v91) ^ 0x8635B390) & v91 ^ (4 * v91) & 0xE18D6CE4;
  v94 = (v93 ^ 0x80052084) & (16 * v92) ^ v92;
  v95 = ((16 * (v93 ^ 0x61884C64)) ^ 0x18D6CE40) & (v93 ^ 0x61884C64) ^ (16 * (v93 ^ 0x61884C64)) & 0xE18D6CE0;
  v96 = v94 ^ 0xE18D6CE4 ^ (v95 ^ 0x844CA4) & (v94 << 8);
  v97 = (v96 << 16) & 0x618D0000 ^ v96 ^ ((v96 << 16) ^ 0x6CE40000) & (((v95 ^ 0xE10920A4) << 8) & 0x618D0000 ^ 0x60810000 ^ (((v95 ^ 0xE10920A4) << 8) ^ 0xD6C0000) & (v95 ^ 0xE10920A4));
  v98 = v46 - 1594769645 + ((((v45 >> 2) ^ 0xF500D412) - 375222800) ^ (((v45 >> 2) ^ 0x785BA5F6) + 1694104588) ^ (((v45 >> 2) ^ 0x362DA8AC) + 714076498));
  v99 = (v98 ^ 0x31C26901) & (2 * (v98 & 0x41CA8C2A)) ^ v98 & 0x41CA8C2A;
  v100 = ((2 * (v98 ^ 0x33C26145)) ^ 0xE411DADE) & (v98 ^ 0x33C26145) ^ (2 * (v98 ^ 0x33C26145)) & 0x7208ED6E;
  v101 = v100 ^ LODWORD(STACK[0x3980]);
  v102 = (v100 ^ 0x10004449) & (4 * v99) ^ v99;
  v103 = ((4 * v101) ^ 0xC823B5BC) & v101 ^ (4 * v101) & 0x7208ED6C;
  v104 = (v103 ^ 0x4000A523) & (16 * v102) ^ v102;
  v105 = ((16 * (v103 ^ 0x32084843)) ^ 0x208ED6F0) & (v103 ^ 0x32084843) ^ (16 * (v103 ^ 0x32084843)) & 0x7208ED60;
  v106 = v104 ^ 0x7208ED6F ^ (v105 ^ 0x2008C40F) & (v104 << 8);
  v107 = v98 ^ (2 * ((v106 << 16) & 0x72080000 ^ v106 ^ ((v106 << 16) ^ 0x6D6F0000) & (((v105 ^ 0x5200290F) << 8) & 0x72080000 ^ 0x72000000 ^ (((v105 ^ 0x5200290F) << 8) ^ 0x8ED0000) & (v105 ^ 0x5200290F))));
  v108 = v79 ^ (v56 - 231381133) ^ ((v79 ^ 0xCF58A77D) - 1650834211) ^ ((v79 ^ 0x40326DF0) + 317754962) ^ ((v79 ^ 0x5DAD290C) + 258984622) ^ ((v79 ^ 0x7FFAFFDF) + 758652031) ^ (2 * v97) ^ v107 ^ 0xAF95BAAA;
  v109 = (((v78 + 1268081509) ^ 0x9FD72990) + 978513620) ^ (v78 + 1268081509) ^ (((v78 + 1268081509) ^ 0xD3EBFE7) - 1464108891) ^ (((v78 + 1268081509) ^ 0x276C5135) - 2098620809) ^ (((v78 + 1268081509) ^ 0xEFFFFFFE) + 1249523902) ^ v107 ^ 0xAF95BAAA;
  v110 = a2 + v55 - v56 - 1861843703 + (((v108 ^ 0xFAEAE804) + 518303755) ^ ((v108 ^ 0x53EB9D29) - 1209678552) ^ ((v108 ^ 0xD5AB27EE) + 832929761));
  v111 = (v110 ^ 0xBE26180D) & (2 * (v110 & 0x3884994E)) ^ v110 & 0x3884994E;
  v112 = ((2 * (v110 ^ 0xBF261A09)) ^ 0xF45068E) & (v110 ^ 0xBF261A09) ^ (2 * (v110 ^ 0xBF261A09)) & 0x87A28346;
  v113 = v112 ^ 0x80A28141;
  v114 = (v112 ^ 0x6800201) & (4 * v111) ^ v111;
  v115 = ((4 * v113) ^ 0x1E8A0D1C) & v113 ^ (4 * v113) & 0x87A28344;
  v116 = (v115 ^ 0x6820100) & (16 * v114) ^ v114;
  v117 = ((16 * (v115 ^ 0x81208243)) ^ 0x7A283470) & (v115 ^ 0x81208243) ^ (16 * (v115 ^ 0x81208243)) & 0x87A28340;
  v118 = v116 ^ 0x87A28347 ^ (v117 ^ 0x2200007) & (v116 << 8);
  HIDWORD(v45) = ((v110 ^ 0xF344CB49) + 20997) ^ v110 ^ ((v110 ^ 0x24B21) + 184941) ^ ((v110 ^ 0x21921) + 163949) ^ ((v110 ^ 0x3FFFB) + 222903);
  LODWORD(v45) = v110 ^ (2 * ((v118 << 16) & 0x7A20000 ^ v118 ^ ((v118 << 16) ^ 0x3460000) & (((v117 ^ 0x85828307) << 8) & 0x7A20000 ^ 0x5200000 ^ (((v117 ^ 0x85828307) << 8) ^ LODWORD(STACK[0x3984])) & (v117 ^ 0x85828307))));
  v119 = v56 - 1621752679 + ((((v45 >> 18) ^ LODWORD(STACK[0x3988])) + 447381932) ^ (((v45 >> 18) ^ 0xD8C335E0) - 2027804958) ^ (((v45 >> 18) ^ 0x44242B3B) + 465909819));
  v120 = ((v109 ^ 0x64C3B8FC) - 414113886) ^ ((v109 ^ 0x2F5B78DE) - 1396056188) ^ ((v109 ^ 0xDBBC14C0) + 1479455646);
  v121 = ((v119 ^ 0x6275F2B8) + 1355004645) ^ v119 ^ ((v119 ^ LODWORD(STACK[0x398C])) + 1790746771) ^ ((v119 ^ 0x2C9124E) + 813652499) ^ ((v119 ^ 0x75FFBF9B) + 1196029896);
  v122 = v121 >> 15;
  v121 *= 2;
  v123 = ((v121 & 0x4BF15AAE ^ 0xD7A3DB47) + 1169911217) ^ ((v121 & 0x4BF15AAE ^ 0xC7D39E84) + 1439377524) ^ ((v121 & 0x4BF15AAE ^ 0x1AE10FC5) - 1996900045);
  v124 = (((v122 & 1) << 16) | 0x2162722E) ^ ((v121 & 0x10000) + 489909774) ^ ((v121 & 0x10000 ^ 0x9E2BCA19) - 2102818863);
  v125 = v121 & 0xFFFEFFFE;
  v126 = 302514957 - v124 + v123 + 2288;
  v127 = v123 - 175849933;
  if (v124 == 478367178)
  {
    v128 = v127;
  }

  else
  {
    v128 = v126;
  }

  v129 = (v128 ^ 0x69E956D2) & (2 * (v128 & 0x71F144DB)) ^ v128 & 0x71F144DB;
  v130 = ((2 * (v128 ^ 0x88895FC0)) ^ 0xF2F03636) & (v128 ^ 0x88895FC0) ^ (2 * (v128 ^ 0x88895FC0)) & 0xF9781B1A;
  v131 = v130 ^ LODWORD(STACK[0x3990]);
  v132 = (v130 ^ 0xC0401210) & (4 * v129) ^ v129;
  v133 = ((4 * v131) ^ 0xE5E06C6C) & v131 ^ (4 * v131) & 0xF9781B18;
  v134 = (v133 ^ 0xE1600800) & (16 * v132) ^ v132;
  v135 = ((16 * (v133 ^ 0x18181313)) ^ LODWORD(STACK[0x5620])) & (v133 ^ 0x18181313) ^ (16 * (v133 ^ 0x18181313)) & 0xF9781B10;
  v136 = v134 ^ 0xF9781B1B ^ (v135 ^ 0x91001100) & (v134 << 8);
  v137 = v128 ^ v125 ^ (2 * ((v136 << 16) & 0x79780000 ^ v136 ^ ((v136 << 16) ^ 0x1B1B0000) & (((v135 ^ 0x68780A0B) << 8) & 0x79780000 ^ 0x1600000 ^ (((v135 ^ 0x68780A0B) << 8) ^ 0x781B0000) & (v135 ^ 0x68780A0B))));
  HIDWORD(v138) = a2 + v57 + v79 - v120 - 1268124186 + v119;
  LODWORD(v138) = ((HIDWORD(v138) ^ 0xA1EB56A8) + 1734173114) ^ HIDWORD(v138) ^ ((HIDWORD(v138) ^ 0x6D6000FF) - 1412024337) ^ ((HIDWORD(v138) ^ 0xA3D214E) - 863300000) ^ ((HIDWORD(v138) ^ 0xFFFFBFF7) + 961120487);
  v139 = (((v107 ^ 0xA5365A1A) - 178512048) ^ ((v107 ^ 0x7F263A9F) + 793542603) ^ ((v107 ^ 0xBFDB3671) - 273583323)) + 634925519;
  v140 = (v139 ^ 0x6D6BA4C) & (2 * (v139 & 0xA486BA8E)) ^ v139 & 0xA486BA8E;
  v141 = ((2 * (v139 ^ 0x7DFFA48)) ^ 0x46B2818C) & (v139 ^ 0x7DFFA48) ^ (2 * (v139 ^ 0x7DFFA48)) & 0xA35940C6;
  v142 = v141 ^ 0xA1494042;
  v143 = (v141 ^ 0x2100000) & (4 * v140) ^ v140;
  v144 = ((4 * v142) ^ 0x8D650318) & v142 ^ (4 * v142) & 0xA35940C4;
  v145 = (v144 ^ 0x81410000) & (16 * v143) ^ v143;
  v146 = ((16 * (v144 ^ 0x221840C6)) ^ 0x35940C60) & (v144 ^ 0x221840C6) ^ (16 * (v144 ^ 0x221840C6)) & 0xA35940C0;
  v147 = v145 ^ 0xA35940C6 ^ (v146 ^ 0x21100086) & (v145 << 8);
  v148 = (((v137 ^ 0x7A59CC2D) + 283361162) ^ ((v137 ^ 0x6B42FC5D) + 33067002) ^ ((v137 ^ 0x3AB82DDB) + 1342332544)) + v119;
  LODWORD(v138) = __ROR4__((v138 >> 1) ^ 0xEB7A421D, 23) ^ 0xB0C34AE3;
  HIDWORD(v138) = v138;
  v149 = v78 + 2007466260 + ((((v138 >> 9) ^ 0xB501A167) + 263244690) ^ (((v138 >> 9) ^ 0x17ABBF5E) - 1390750295) ^ (((v138 >> 9) ^ 0x24ACD9F6) - 1642220799));
  v150 = v139 ^ v107 ^ 0xAF95BAAA ^ (2 * ((v147 << 16) & 0x23590000 ^ v147 ^ ((v147 << 16) ^ 0x40C60000) & (((v146 ^ 0x82494086) << 8) & 0x23590000 ^ 0x22190000 ^ (((v146 ^ 0x82494086) << 8) ^ 0x59400000) & (v146 ^ 0x82494086)))) ^ v149 ^ ((v149 ^ 0x532E3902) + 1872086362) ^ ((v149 ^ 0x74A6D562) + 1209870650) ^ ((v149 ^ 0x99339033) - 1517786007) ^ ((v149 ^ 0x7DFF7FF7) + 1095009197) ^ (v148 + 984030887) ^ (((v148 + 984030887) ^ 0x163F8445) - 1975419637) ^ (((v148 + 984030887) ^ 0xB855CF1C) + 606811732) ^ (((v148 + 984030887) ^ 0x2250B614) - 1104261284) ^ (((v148 + 984030887) ^ 0xEFBBFBFD) + 1942291123);
  v151 = LODWORD(STACK[0x57B0]) + v79 - 1287914737 + (((v150 ^ 0xB26CE940) + 1940379702) ^ ((v150 ^ 0xAD5284FE) + 1822012812) ^ ((v150 ^ 0x9711BFF6) + 1457163908));
  v152 = ((v151 ^ 0x35EEA89F) + 230203509) ^ v151 ^ ((v151 ^ 0xECF5701C) - 727484168) ^ ((v151 ^ 0x215C9060) + 420124812) ^ ((v151 ^ 0x3FEEBFF7) + 129546013);
  v153 = ((v148 - 1641536168) ^ 0x36FDE8A1) & (2 * ((v148 - 1641536168) & 0x38FDF2A0)) ^ (v148 - 1641536168) & 0x38FDF2A0;
  v154 = ((2 * ((v148 - 1641536168) ^ 0x47B789E1)) ^ 0xFE94F682) & ((v148 - 1641536168) ^ 0x47B789E1) ^ (2 * ((v148 - 1641536168) ^ 0x47B789E1)) & 0x7F4A7B40;
  v155 = v154 ^ LODWORD(STACK[0x5610]);
  v156 = (v154 ^ 0x66005200) & (4 * v153) ^ v153;
  v157 = ((4 * v155) ^ 0xFD29ED04) & v155 ^ (4 * v155) & 0x7F4A7B40;
  v158 = (v157 ^ 0x7D086900) & (16 * v156) ^ v156;
  v159 = ((16 * (v157 ^ 0x2421241)) ^ 0xF4A7B410) & (v157 ^ 0x2421241) ^ (16 * (v157 ^ 0x2421241)) & 0x7F4A7B40;
  v160 = v158 ^ 0x7F4A7B41 ^ (v159 ^ 0x74023000) & (v158 << 8);
  v161 = ((v149 ^ 0x9DD0D0C7) - 1586811747) ^ v149 ^ ((v149 ^ 0x2D568B9C) + 300775368) ^ ((v149 ^ 0xC3DE710) + 814095180) ^ ((v149 ^ LODWORD(STACK[0x5600])) + 1128547253) ^ (v148 - 1641536168) ^ (2 * ((v160 << 16) & 0x7F4A0000 ^ v160 ^ ((v160 << 16) ^ 0x7B410000) & (((v159 ^ LODWORD(STACK[0x3994])) << 8) & 0x7F4A0000 ^ 0x35000000 ^ (((v159 ^ LODWORD(STACK[0x3994])) << 8) ^ 0x4A7B0000) & (v159 ^ LODWORD(STACK[0x3994])))));
  v162 = ((v152 << 16) | 0xFFFFFF) & (HIWORD(v152) ^ 0x1043313) ^ ((v152 << 16) ^ 0x3450000) & 0xFEFF0000;
  v163 = (((v107 ^ 0x6FC773D6) + 1068316292) ^ ((v107 ^ 0x45C02B28) + 363490942) ^ ((v107 ^ 0x4FCC0E0A) + 530991968)) + 836806201 + (((v162 ^ 0x28C4383C) + 1010022735) ^ ((v162 ^ 0xA72A6EA4) - 1277300777) ^ ((v162 ^ 0x7ABBA222) + 1850483537));
  v164 = (v163 ^ 0x349BC11B) & (2 * (v163 & 0xB6DBD05C)) ^ v163 & 0xB6DBD05C;
  v165 = ((2 * (v163 ^ 0x3D3B41B3)) ^ 0x17C123DE) & (v163 ^ 0x3D3B41B3) ^ (2 * (v163 ^ 0x3D3B41B3)) & 0x8BE091EE;
  v166 = v165 ^ 0x88209021;
  v167 = (v165 ^ 0x3C011C1) & (4 * v164) ^ v164;
  v168 = ((4 * v166) ^ 0x2F8247BC) & v166 ^ (4 * v166) & 0x8BE091EC;
  v169 = (v168 ^ LODWORD(STACK[0x3998])) & (16 * v167) ^ v167;
  v170 = ((16 * (v168 ^ 0x80609043)) ^ 0xBE091EF0) & (v168 ^ 0x80609043) ^ (16 * (v168 ^ 0x80609043)) & 0x8BE091E0;
  v171 = v169 ^ 0x8BE091EF ^ (v170 ^ 0x8A001000) & (v169 << 8);
  v172 = 2 * ((((v148 + 984030887) ^ 0x514D9A72) + 1295213374) ^ (v148 + 984030887) ^ (((v148 + 984030887) ^ 0x79D21374) + 1705830972) ^ (((v148 + 984030887) ^ 0x34C73041) + 683264271) ^ (((v148 + 984030887) ^ LODWORD(STACK[0x55F0])) + 1671907001));
  v173 = v163 ^ (2 * (((v171 << 16) ^ 0x11EF0000) & (((v170 ^ 0x1E0810F) << 8) & 0x8BE00000 ^ 0xB600000 ^ (((v170 ^ 0x1E0810F) << 8) ^ 0xE0910000) & (v170 ^ 0x1E0810F)) ^ v171 ^ ((v171 << 16) & 0xBE00000 | 0x804B)));
  v174 = v7 + 5575284 + (((v107 ^ 0xEBF7713A) - 1147325328) ^ ((v107 ^ LODWORD(STACK[0x55E0])) + 190850663) ^ ((v107 ^ 0xD53644FD) - 2057567831)) + v148 + 984030887 - (((v172 ^ 0x56E64B9D) - 763866457) ^ ((v172 ^ 0x33365794) - 1213706576) ^ ((v172 ^ 0xA2D21169) + 642517075)) + (((v161 ^ 0xDACBE412) + 337775931) ^ ((v161 ^ 0x5411D78F) - 1695007064) ^ ((v161 ^ 0x7D77341B) - 1281434316)) + (((v173 ^ 0x142C46D9) + 433332063) ^ ((v173 ^ 0xBBAC3D8A) - 1235983346) ^ ((v173 ^ 0xD5B8847) + 10736065));
  v175 = v174 - 2127882697;
  v176 = (((v149 - 1018952797) ^ 0x33ABA829) + 1255952543) ^ (v149 - 1018952797) ^ (((v149 - 1018952797) ^ 0x8FAD6A8D) - 153447877) ^ (((v149 - 1018952797) ^ 0xC5713B11) - 1140407385) ^ (((v149 - 1018952797) ^ 0xFFFFFEFD) - 2037905845) ^ v173 ^ 0xF207A678;
  v177 = (v175 ^ 0xCA999CF5) & (2 * (v175 & 0xEA9D9EF6)) ^ v175 & 0xEA9D9EF6;
  v178 = ((2 * (v175 ^ 0x5F9B8935)) ^ 0x6A0C2F86) & (v175 ^ 0x5F9B8935) ^ (2 * (v175 ^ 0x5F9B8935)) & 0xB50617C2;
  v179 = v178 ^ 0x95021041;
  v180 = (v178 ^ LODWORD(STACK[0x55D0])) & (4 * v177) ^ v177;
  v181 = ((4 * v179) ^ 0xD4185F0C) & v179 ^ (4 * v179) & 0xB50617C0;
  v182 = (v181 ^ LODWORD(STACK[0x399C])) & (16 * v180) ^ v180;
  v183 = ((16 * (v181 ^ 0x210600C3)) ^ 0x50617C30) & (v181 ^ 0x210600C3) ^ (16 * (v181 ^ 0x210600C3)) & 0xB50617C0;
  v184 = v182 ^ 0xB50617C3 ^ (v183 ^ 0x100014C3) & (v182 << 8);
  HIDWORD(v138) = (v174 - 2127882697) ^ (-53 - v174) ^ (((v174 - 2127882697) ^ 1) + 1);
  LODWORD(v138) = (v174 - 2127882697) ^ (2 * ((v184 << 16) & 0x35060000 ^ v184 ^ ((v184 << 16) ^ 0x17C30000) & (((v183 ^ 0xA50603C3) << 8) & 0x35060000 ^ 0x31000000 ^ (((v183 ^ 0xA50603C3) << 8) ^ 0x6170000) & (v183 ^ 0xA50603C3))));
  v185 = v148 + 1038931095 + ((((v138 >> 2) ^ 0xA97EAE2B) + 472677970) ^ (((v138 >> 2) ^ 0x9FB79D82) + 719670777) ^ (((v138 >> 2) ^ 0x9C6C5FF5) + 691965840));
  v186 = (((v176 ^ 0xF2287C19) + 245503278) ^ ((v176 ^ 0x8C500C86) + 1893361075) ^ ((v176 ^ 0xA82C22BB) + 1420184464)) - v149 + 430825834 + v185;
  v187 = (v186 ^ 0xF7F94E61) & (2 * (v186 & 0xF7F96E62)) ^ v186 & 0xF7F96E62;
  v188 = ((2 * (v186 ^ 0x9D1B4E61)) ^ 0xD5C44006) & (v186 ^ 0x9D1B4E61) ^ (2 * (v186 ^ 0x9D1B4E61)) & 0x6AE22002;
  v189 = v188 ^ 0x2A222001;
  v190 = (v188 ^ 0x40C00000) & (4 * v187) ^ v187;
  v191 = ((4 * v189) ^ 0xAB88800C) & v189 ^ (4 * v189) & 0x6AE22000;
  v192 = v190 ^ 0x6AE22003 ^ (v191 ^ 0x2A800003) & (16 * v190);
  v193 = (16 * (v191 ^ 0x40622003)) & 0x6AE22000 ^ 0x40C02003 ^ ((16 * (v191 ^ 0x40622003)) ^ 0xAE220030) & (v191 ^ 0x40622003);
  v194 = (v192 << 8) & 0x6AE22000 ^ v192 ^ ((v192 << 8) ^ 0xE2200300) & v193;
  v195 = v186 ^ (2 * ((v194 << 16) & 0x6AE20000 ^ v194 ^ ((v194 << 16) ^ 0x20030000) & ((v193 << 8) & 0x6AE20000 ^ 0x8C20000 ^ ((v193 << 8) ^ 0xE2200000) & v193)));
  v196 = v195 ^ LODWORD(STACK[0x5780]);
  v197 = 2 * (v196 ^ v195 & 0x4AFF4666 ^ (v195 ^ 0x5986D19B) & (v10 ^ 0x754F7546));
  v198 = v148 + (((v196 ^ 0x429AD2A1) - 1220499035) ^ ((v196 ^ 0xB363925C) + 1186589018) ^ ((v196 ^ 0x5B3DC88B) - 1360546929)) - 1553787615 + (((v197 ^ 0xEB70D3D4) + 1881833298) ^ ((v197 ^ 0xFA5FFE62) + 1627738856) ^ ((v197 ^ 0x2A5542A0) - 1324356058));
  v199 = 2 * (v198 & 0x855C0783);
  v200 = ((2 * (v198 ^ 0x5ECD1DE)) ^ 0x161ACBA) & (v198 ^ 0x5ECD1DE) ^ (2 * (v198 ^ 0x5ECD1DE)) & 0x80B0D65C;
  v201 = v200 ^ 0x80905245;
  v202 = (v200 ^ LODWORD(STACK[0x39A0])) & (4 * (v199 & (v198 ^ 0x55CD7DA) ^ v198 & 0x855C0783)) ^ v199 & (v198 ^ 0x55CD7DA) ^ v198 & 0x855C0783;
  v203 = ((4 * v201) ^ 0x2C35974) & v201 ^ (4 * v201) & 0x80B0D65C;
  v204 = v202 ^ 0x80B0D65D ^ (v203 ^ 0x805059) & (16 * v202);
  v205 = ((16 * (v203 ^ 0x80308609)) ^ 0xB0D65D0) & (v203 ^ 0x80308609) ^ (16 * (v203 ^ 0x80308609)) & 0x80B0D650;
  v206 = (v204 << 8) & 0x80B0D600 ^ v204 ^ (v205 ^ 0x80B09200) & ((v204 << 8) ^ 0xB0D65D00);
  v207 = v199 & (v198 ^ 0x6118478B) ^ v198 & 0x855C0783;
  v208 = ((2 * (v198 ^ 0x6128458B)) ^ 0xC8E88410) & (v198 ^ 0x6128458B) ^ (2 * (v198 ^ 0x6128458B)) & 0xE4744208;
  v209 = (v208 ^ LODWORD(STACK[0x39A8])) & (4 * v207) ^ v207;
  v210 = ((4 * (v208 ^ 0x24144208)) ^ LODWORD(STACK[0x39A4])) & (v208 ^ 0x24144208) ^ (4 * (v208 ^ 0x24144208)) & 0xE4744208;
  v211 = v209 ^ 0xE4744208 ^ (v210 ^ 0x80500008) & (16 * v209);
  v212 = (16 * (v210 ^ 0x64244208)) & 0xE4744200 ^ 0xA0304208 ^ ((16 * (v210 ^ 0x64244208)) ^ 0x47442080) & (v210 ^ 0x64244208);
  v213 = (v211 << 8) & 0xE4744200 ^ v211 ^ ((v211 << 8) ^ 0x74420800) & v212;
  v214 = (((v205 & (v205 << 8) & ((v206 << 16) ^ 0x10000) ^ v206) << 15) ^ (v198 << 14)) & 0xFFFFC000 | ((v198 ^ (2 * ((v213 << 16) & 0x64740000 ^ v213 ^ ((v213 << 16) ^ 0x42080000) & ((v212 << 8) & 0x64740000 ^ 0x340000 ^ ((v212 << 8) ^ 0x74420000) & v212)))) >> 18);
  v215 = v149 + 253660796 + (((v214 ^ 0xEFDD4504) - 1595049910) ^ ((v214 ^ 0x14E3E7BC) + 1540610802) ^ ((v214 ^ 0xBBF0E3F5) - 188686663));
  v216 = (v215 ^ 0x5D1CE1DF) & (2 * (v215 & 0x1D9EF1DF)) ^ v215 & 0x1D9EF1DF;
  v217 = ((2 * (v215 ^ 0x4538C1ED)) ^ 0xB14C6064) & (v215 ^ 0x4538C1ED) ^ (2 * (v215 ^ 0x4538C1ED)) & 0x58A63032;
  v218 = v217 ^ 0x48A21012;
  v219 = (v217 ^ 0x10041022) & (4 * v216) ^ v216;
  v220 = ((4 * v218) ^ 0x6298C0C8) & v218 ^ (4 * v218) & 0x58A63030;
  v221 = (v220 ^ 0x40800002) & (16 * v219) ^ v219;
  v222 = ((16 * (v220 ^ 0x18263032)) ^ 0x8A630320) & (v220 ^ 0x18263032) ^ (16 * (v220 ^ 0x18263032)) & 0x58A63030;
  v223 = v221 ^ 0x58A63032 ^ (v222 ^ 0x8220012) & (v221 << 8);
  HIDWORD(v138) = v215 - 1;
  LODWORD(v138) = v215 ^ (2 * ((v223 << 16) & 0x58A60000 ^ v223 ^ ((v223 << 16) ^ 0x30320000) & (((v222 ^ 0x50843012) << 8) & 0x58A60000 ^ 0x58860000 ^ (((v222 ^ 0x50843012) << 8) ^ 0x26300000) & (v222 ^ 0x50843012))));
  LODWORD(v138) = __ROR4__((v138 >> 2) ^ 0x2156986, 25) ^ 0x169A6F7D;
  HIDWORD(v138) = v138;
  v224 = (((v138 >> 5) ^ 0x3E39EBF1) - 196807238) ^ (((v138 >> 5) ^ 0x85B16376) + 1338801471) ^ (((v138 >> 5) ^ LODWORD(STACK[0x39AC])) + 495088149);
  v225 = (v185 ^ 0x741D46B8) & (2 * (v185 & 0x79418739)) ^ v185 & 0x79418739;
  v226 = ((2 * (v185 ^ 0x369E4ACA)) ^ 0x9FBF9BE6) & (v185 ^ 0x369E4ACA) ^ (2 * (v185 ^ 0x369E4ACA)) & 0x4FDFCDF2;
  v227 = v226 ^ 0x40404411;
  v228 = (v226 ^ 0xF4E49F1) & (4 * v225) ^ v225;
  v229 = ((4 * v227) ^ 0x3F7F37CC) & v227 ^ (4 * v227) & 0x4FDFCDF0;
  v230 = (v229 ^ 0xF5F05C0) & (16 * v228) ^ v228;
  v231 = ((16 * (v229 ^ LODWORD(STACK[0x39B0]))) ^ 0xFDFCDF30) & (v229 ^ LODWORD(STACK[0x39B0])) ^ (16 * (v229 ^ LODWORD(STACK[0x39B0]))) & 0x4FDFCDF0;
  v232 = v230 ^ 0x4FDFCDF3 ^ (v231 ^ 0x4DDCCD00) & (v230 << 8);
  v233 = v185 ^ (2 * ((v232 << 16) & 0x4FDF0000 ^ v232 ^ ((v232 << 16) ^ 0x4DF30000) & (((v231 ^ 0x20300C3) << 8) & 0x4FDF0000 ^ 0x120000 ^ (((v231 ^ 0x20300C3) << 8) ^ 0xDFCD0000) & (v231 ^ 0x20300C3)))) ^ (v224 + 1985984890) ^ (((v224 + 1985984890) ^ 0xFA24D5C0) + 431070770) ^ (((v224 + 1985984890) ^ 0x31BC2D79) - 769038711) ^ (((v224 + 1985984890) ^ 0xA849B34B) + 1272772795) ^ (((v224 + 1985984890) ^ 0x7FBBFFFC) - 1674660850);
  v234 = v185 ^ v173 ^ 0xF207A678 ^ ((v185 ^ 0x8B8EF543) - 221285764) ^ ((v185 ^ 0xD1B40731) - 1460305910) ^ ((v185 ^ 0xA37BFD4A) - 633701773) ^ ((v185 ^ 0x7FFF77FF) + 113176776);
  v235 = (((v234 ^ LODWORD(STACK[0x39B4])) - 778526669) ^ ((v234 ^ 0x271A8E72) + 1806910157) ^ ((v234 ^ 0x6C49CF55) + 551551980)) - 600420351 + v224 + 1985984890;
  v236 = (v235 ^ 0x4E829A9D) & (2 * (v235 & 0x6C931ADC)) ^ v235 & 0x6C931ADC;
  v237 = ((2 * (v235 ^ 0xD7869B8D)) ^ 0x762B02A2) & (v235 ^ 0xD7869B8D) ^ (2 * (v235 ^ 0xD7869B8D)) & 0xBB158150;
  v238 = v237 ^ 0x89148151;
  v239 = (v237 ^ 0x32000000) & (4 * v236) ^ v236;
  v240 = ((4 * v238) ^ 0xEC560544) & v238 ^ (4 * v238) & 0xBB158150;
  v241 = (v240 ^ 0xA8140151) & (16 * v239) ^ v239;
  v242 = ((16 * (v240 ^ 0x13018011)) ^ 0xB1581510) & (v240 ^ 0x13018011) ^ (16 * (v240 ^ 0x13018011)) & 0xBB158150;
  v243 = v241 ^ 0xBB158151 ^ (v242 ^ 0xB1100100) & (v241 << 8);
  v244 = v235 ^ v173 ^ 0xF207A678 ^ (2 * ((v243 << 16) & 0x3B150000 ^ v243 ^ ((v243 << 16) ^ 0x1510000) & (((v242 ^ 0xA058041) << 8) & 0x3B150000 ^ 0x2A140000 ^ (((v242 ^ 0xA058041) << 8) ^ 0x15810000) & (v242 ^ 0xA058041))));
  v245 = LODWORD(STACK[0x57A0]) + v149 + 890754973 + (((v244 ^ 0xE4CC852F) + 524207651) ^ ((v244 ^ 0xE96791F3) + 311808767) ^ ((v244 ^ 0x45ED59CE) - 1105257788));
  v246 = (v245 ^ 0xF3C00B4F) & (2 * (v245 & 0xFBD28388)) ^ v245 & 0xFBD28388;
  v247 = ((2 * (v245 ^ 0xF3600A4F)) ^ 0x1165138E) & (v245 ^ 0xF3600A4F) ^ (2 * (v245 ^ 0xF3600A4F)) & 0x8B289C6;
  v248 = v247 ^ 0x8928841;
  v249 = v247 & (4 * v246) ^ v246;
  v250 = ((4 * v248) ^ 0x22CA271C) & v248 ^ (4 * v248) & 0x8B289C4;
  v251 = (v250 ^ 0x820103) & (16 * v249) ^ v249;
  v252 = ((16 * (v250 ^ 0x83088C3)) ^ 0x8B289C70) & (v250 ^ 0x83088C3) ^ (16 * (v250 ^ 0x83088C3)) & 0x8B289C0;
  HIDWORD(v138) = v245;
  LODWORD(v138) = v245 ^ (2 * (((v251 ^ 0x8B289C7 ^ (v252 ^ LODWORD(STACK[0x39B8])) & (v251 << 8)) << 16) & 0x8B20000 ^ v251 ^ 0x8B289C7 ^ (v252 ^ LODWORD(STACK[0x39B8])) & (v251 << 8) ^ (((v251 ^ 0x8B289C7 ^ (v252 ^ LODWORD(STACK[0x39B8])) & (v251 << 8)) << 16) ^ 0x9C70000) & (((v252 ^ LODWORD(STACK[0x39BC])) << 8) & 0x8B20000 ^ 0x8320000 ^ (((v252 ^ LODWORD(STACK[0x39BC])) << 8) ^ 0x32890000) & (v252 ^ LODWORD(STACK[0x39BC])))));
  v253 = ((((v138 >> 1) ^ 0x7DD59589) - 700510823) ^ (((v138 >> 1) ^ 0xB824F14F) + 332294495) ^ (((v138 >> 1) ^ 0xB828ACC5) + 331494613)) + (((v173 ^ 0xBCDE4262) - 1322902554) ^ ((v173 ^ 0x488D6540) + 1165311176) ^ ((v173 ^ 0x5688D436) + 1534102962));
  v254 = (((v13 ^ 0x375D73DF) - 1612405933) ^ ((v13 ^ 0xA175F8F0) + 164374654) ^ ((v13 ^ 0xCC4361D8) + 1694150998)) + (((v173 ^ 0x51E686A5) + 1545527075) ^ ((v173 ^ 0xC0603936) - 845651790) ^ ((v173 ^ 0x335D4C87) + 1051006209)) + v185 + (((v233 ^ 0x5E01A14C) - 1079117787) ^ ((v233 ^ 0x3EA008DE) - 552840777) ^ ((v233 ^ 0x1930143) - 532719572)) - 1353866055 + v253 - 535099944;
  HIDWORD(v138) = ((v254 ^ 0xB7D09AED) + 65303) ^ v254 ^ ((v254 ^ 0xF90A) + 40178) ^ ((v254 ^ 0x60C) + 25592) ^ ((v254 ^ 0xFFFFFFEF) + 39445);
  LODWORD(v138) = ((v254 ^ 0xBD7F5975) + 493698191) ^ v254 ^ ((v254 ^ 0x331A15E7) - 1828163555) ^ ((v254 ^ 0xAE77294D) + 241519799) ^ ((v254 ^ 0x7FFFFFDB) - 538076639);
  v255 = v185 - 607260974 + ((((v138 >> 16) ^ LODWORD(STACK[0x55B0])) - 107668292) ^ (((v138 >> 16) ^ 0xE692532D) - 1586923) ^ (((v138 >> 16) ^ 0x9C768A42) - 2063396740));
  v256 = 2 * (v255 & 0x1A01D292);
  v257 = ((2 * (v255 ^ 0xBF1A485)) ^ 0x23E0EC2E) & (v255 ^ 0xBF1A485) ^ (2 * (v255 ^ 0xBF1A485)) & 0x11F07616;
  v258 = v257 ^ LODWORD(STACK[0x39C0]);
  v259 = (v257 ^ 0x104401) & (4 * (v256 & (v255 ^ 0x1BF18081) ^ v255 & 0x1A01D292)) ^ v256 & (v255 ^ 0x1BF18081) ^ v255 & 0x1A01D292;
  v260 = ((4 * v258) ^ 0x47C1D85C) & v258 ^ (4 * v258) & 0x11F07614;
  v261 = (v260 ^ 0x1C05003) & (16 * v259) ^ v259;
  v262 = ((16 * (v260 ^ 0x10302603)) ^ 0x1F076170) & (v260 ^ 0x10302603) ^ (16 * (v260 ^ 0x10302603)) & 0x11F07610;
  v263 = v256 & (v255 ^ 0xD18590D2) ^ v255 & 0x1A01D292;
  v264 = ((2 * (v255 ^ 0xE58490F2)) ^ 0xFF0A84C0) & (v255 ^ 0xE58490F2) ^ (2 * (v255 ^ 0xE58490F2)) & 0xFF854260;
  v265 = (v264 ^ 0xF8800060) & (4 * v263) ^ v263;
  v266 = ((4 * (v264 ^ 0x854220)) ^ 0xFE150980) & (v264 ^ 0x854220) ^ (4 * (v264 ^ 0x854220)) & 0xFF854260;
  v267 = v265 ^ 0xFF854260 ^ (v266 ^ 0xFE050000) & (16 * v265);
  v268 = ((16 * (v266 ^ LODWORD(STACK[0x39C8]))) ^ 0xF8542600) & (v266 ^ LODWORD(STACK[0x39C8])) ^ (16 * (v266 ^ LODWORD(STACK[0x39C8]))) & 0xFF854260;
  v269 = (v267 << 8) & 0xFF854200 ^ v267 ^ (v268 ^ 0x7814060) & ((v267 << 8) ^ 0x85426000);
  LODWORD(v138) = __ROR4__((((16 * (((v261 ^ 0x11F07617 ^ (v262 ^ LODWORD(STACK[0x39C4])) & (v261 << 8)) << 16) & 0x1F00000 ^ v261 ^ 0x11F07617 ^ (v262 ^ LODWORD(STACK[0x39C4])) & (v261 << 8) ^ (((v261 ^ 0x11F07617 ^ (v262 ^ LODWORD(STACK[0x39C4])) & (v261 << 8)) << 16) ^ 0x6170000) & (((v262 ^ 0xF01607) << 8) & 0x1F00000 ^ (((v262 ^ 0xF01607) << 8) ^ 0x760000) & (v262 ^ 0xF01607) ^ 0x1800000))) ^ (8 * v255)) & 0xFFFFFFF8 | ((v255 ^ (2 * ((v269 << 16) ^ v269 ^ (v269 << 16) & ~((v268 ^ 0x787EBF9F) & ((v268 ^ 0x7814060) << 8))))) >> 29)) ^ 0xCED13431, 16) ^ 0x7AE80922;
  HIDWORD(v138) = v138;
  v270 = (((v224 - 1832227449) ^ 0xE0C485C2) + 669913634) ^ (v224 - 1832227449) ^ (((v224 - 1832227449) ^ 0x23300FD1) - 468019149) ^ (((v224 - 1832227449) ^ 0x1FE1972) - 959148398) ^ (((v224 - 1832227449) ^ LODWORD(STACK[0x55C0])) + 1039494303) ^ (v253 - 535099944) ^ (((v253 - 535099944) ^ 0x78E13070) - 496185359) ^ (((v253 - 535099944) ^ 0xFF6B267D) + 1709627902) ^ (((v253 - 535099944) ^ 0xB787E985) + 755635718) ^ (((v253 - 535099944) ^ 0x557FFFF7) - 806223752);
  v271 = (((v138 >> 19) ^ 0x91ECA20) + 34266930) ^ (((v138 >> 19) ^ 0x6CCBA205) + 1742714645) ^ (((v138 >> 19) ^ 0xA4EA3F42) - 1342297516);
  v272 = ((v271 - 306180382) ^ 0x21922E17) & (2 * ((v271 - 306180382) & 0x4814AEA6)) ^ (v271 - 306180382) & 0x4814AEA6;
  v273 = ((2 * ((v271 - 306180382) ^ 0xA19A7713)) ^ 0xD31DB36A) & ((v271 - 306180382) ^ 0xA19A7713) ^ (2 * ((v271 - 306180382) ^ 0xA19A7713)) & 0xE98ED9B4;
  v274 = v273 ^ 0x28824895;
  v275 = (v273 ^ 0x48049124) & (4 * v272) ^ v272;
  v276 = ((4 * v274) ^ 0xA63B66D4) & v274 ^ (4 * v274) & 0xE98ED9B4;
  v277 = (v276 ^ 0xA00A4080) & (16 * v275) ^ v275;
  v278 = ((16 * (v276 ^ LODWORD(STACK[0x55A0]))) ^ 0x98ED9B50) & (v276 ^ LODWORD(STACK[0x55A0])) ^ (16 * (v276 ^ LODWORD(STACK[0x55A0]))) & 0xE98ED9B0;
  v279 = v277 ^ 0xE98ED9B5 ^ (v278 ^ 0x888C9900) & (v277 << 8);
  v280 = (((v18 ^ 0x66B0B674) - 163026478) ^ ((v18 ^ 0x3A9CD74B) - 1436284689) ^ ((v18 ^ 0xE27EBA80) + 1921410342)) + v185 + v224 + 1985984890 + (((v270 ^ 0x8A8FFF7A) + 458684113) ^ ((v270 ^ 0x6CE48387) - 46298578) ^ ((v270 ^ 0xBBCC149E) + 706026805)) - 165901554 + v271 - 1849006538;
  HIDWORD(v138) = ~v280;
  LODWORD(v138) = ((v280 ^ 0x4442732C) + 23043784) ^ v280 ^ ((v280 ^ 0xA658E3A4) - 482013616) ^ ((v280 ^ 0xAA077C62) - 283471478) ^ ((v280 ^ 0xF2FFFEFE) - 1209920746);
  v281 = v224 + 271578785 + ((((v138 >> 2) ^ 0xF58A4E6A) - 1265644202) ^ (((v138 >> 2) ^ 0xE526056B) - 1541175723) ^ (((v138 >> 2) ^ 0xFE14CF84) - 1089385284));
  v282 = ((2 * (v281 ^ 0xE739E3A)) ^ 0x28F73254) & (v281 ^ 0xE739E3A) ^ (2 * (v281 ^ 0xE739E3A)) & 0x947B992A;
  v283 = (v282 ^ 0x4689128) & (4 * ((2 * (v281 & 0x9A080710)) & (v281 ^ 0x1A63961A) ^ v281 & 0x9A080710)) ^ (2 * (v281 & 0x9A080710)) & (v281 ^ 0x1A63961A) ^ v281 & 0x9A080710;
  v284 = (LODWORD(STACK[0x39D8]) ^ (4 * v282)) & (v282 ^ 0x6BF776D5);
  return (*(STACK[0x57D8] + 8 * ((45 * ((((v271 - 306180382) ^ (2 * ((v279 << 16) & 0x698E0000 ^ v279 ^ ((v279 << 16) ^ 0x59B50000) & (((v278 ^ 0x610240A5) << 8) & 0x698E0000 ^ 0x61060000 ^ (((v278 ^ 0x610240A5) << 8) ^ 0xED90000) & (v278 ^ 0x610240A5))))) & 0x2000 & ~(v281 ^ (2 * (((v283 ^ 0x947B992A ^ v284 & (16 * v283)) << 8) & ~((v284 ^ 0x84119902) & 0x47B99200 | (v284 ^ 0x7BEE6600) & (16 * (v284 ^ 0x84119902))) ^ v283 ^ 0x947B992A ^ v284 & (16 * v283))))) == 0)) ^ a7)))();
}

uint64_t sub_1006DD9BC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x7E48] = a1;
  LODWORD(STACK[0xA1C0]) = -656685066;
  return (*(STACK[0x57D8] + 8 * (v1 - 16656)))();
}

uint64_t sub_1006DDA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0xCF30] = v8 - 16;
  *v7 = *(v6 + (v10 - 16));
  v7[1] = *(v6 + (v10 - 15));
  v7[2] = *(v6 + ((v9 + 1897508770) & 0x8EE65F76 ^ 0xFFFFA7A4) + v10);
  v7[3] = *(v6 + (v10 - 13));
  v7[4] = *(v6 + (v10 - 12));
  v7[5] = *(v6 + (v10 - 11));
  v7[6] = *(v6 + (v10 - 10));
  v7[7] = *(v6 + (v10 - 9));
  v7[8] = *(v6 + (v10 - 8));
  v7[9] = *(v6 + (v10 - 7));
  v7[10] = *(v6 + (v10 - 6));
  v7[11] = *(v6 + (v10 - 5));
  v7[12] = *(v6 + (v10 - 4));
  v7[13] = *(v6 + (v10 - 3));
  v7[14] = *(v6 + (v10 - 2));
  v7[15] = *(v6 + (v10 - 1));
  return (*(STACK[0x57D8] + 8 * v9))(a1, a2, a3, a4, a5, a6, 3423827797);
}

uint64_t sub_1006DDB3C()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x10AF) + 427) ^ v0)))();
}

uint64_t sub_1006DDB70()
{
  v2 = *(STACK[0xE3D0] + 476) ^ 0x4D63B963 ^ *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xD265232C)) & 0x7FFFFFFFu;
  v3 = 1534937323 * ((v1 - 240) ^ 0xCD7888C2C6EEFB47);
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 22614) ^ 0xFFFBD4) - v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4C0] = v3 ^ 0x5CA8172D;
  STACK[0x1D4D8] = v2 + v3;
  LODWORD(STACK[0x1D4D4]) = (v0 + 16751918) ^ v3;
  LODWORD(STACK[0x1D4E0]) = ((v0 - 22614) ^ 0xFFF5BF) + v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1006DDC7C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = (v2 - 1961476361);
  v5 = __ROR8__((a1 + v4) & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (0x67659A219E1678C7 - v5) & 0x59384F21CB8C4789 | (v5 - 0x67659A219E1678C8) & 0xA0C7B0DE3473B876;
  v7 = __ROR8__(v6 ^ 0xF67C6B5BEBC0C515, 8);
  v6 ^= 0x32AF45A8E48CFCD1uLL;
  v8 = (v7 + v6) ^ 0x767CBF12CE87AC7DLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xBD6CE439E669F3DFLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = *(STACK[0x57D8] + 8 * v3);
  v13 = (__ROR8__(v10, 8) + v11) ^ 0x1A1C4C99A6B3D690;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x872D8E7D34B67662) - (v15 + v14) + 0x3C6938C165A4C4CELL) ^ 0x6486940AAD73A295;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0xBB877486649C029ALL) - (v18 + v17) - 0x5DC3BA43324E014DLL) ^ 0xAEC9668EBB2183BELL ^ __ROR8__(v17, 61);
  v20 = (__ROR8__((((2 * (v18 + v17)) | 0xBB877486649C029ALL) - (v18 + v17) - 0x5DC3BA43324E014DLL) ^ 0xAEC9668EBB2183BELL, 8) + v19) ^ 0x8469B2E456434039;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  *(a1 + v4) = (((v22 + v21 - ((2 * (v22 + v21)) & 0xFD49B1A9EF5C04E0) - 0x15B272B0851FD90) ^ 0xF76CBDCE9BD47C2ALL) >> (8 * ((a1 + v4) & 7))) ^ HIBYTE(a2) ^ 0x26;
  v23 = a1 + (v4 + 1);
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((2 * (v24 - 0x67659A219E1678C8)) | 0xBCC242512D0F10CALL) - (v24 - 0x67659A219E1678C8) + 0x219EDED76978779BLL;
  v26 = v25 ^ 0x71250552B6CB0AF9;
  v25 ^= 0xB5F62BA1B987333DLL;
  v27 = __ROR8__(v26, 8);
  v28 = __ROR8__((((2 * (v27 + v25)) | 0xF86C8A3964387342) - (v27 + v25) + 0x3C9BAE34DE3C65FLL) ^ 0x8A4AFA0E7C9B95DCLL, 8);
  v29 = (((2 * (v27 + v25)) | 0xF86C8A3964387342) - (v27 + v25) + 0x3C9BAE34DE3C65FLL) ^ 0x8A4AFA0E7C9B95DCLL ^ __ROR8__(v25, 61);
  v30 = (v28 + v29) ^ 0xBD6CE439E669F3DFLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x1A1C4C99A6B3D690;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (0xA98F017DADFDDC60 - ((v34 + v33) | 0xA98F017DADFDDC60) + ((v34 + v33) | 0x5670FE825202239FLL)) ^ 0xE9F52499AD545C4;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xF30ADCCD896F82F3;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x8469B2E456434039;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  *v23 = (((v41 + v40 - ((2 * (v41 + v40)) & 0xC97629E8885EAB0ALL) + 0x64BB14F4442F5585) ^ 0x6D7371EE28552BDFLL) >> (8 * (v23 & 7u))) ^ BYTE2(a2) ^ 0xF9;
  v42 = a1 + (v4 + 2);
  v43 = __ROR8__(v42 & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = ((2 * v43 + 0x3134CBBCC3D30E70) & 0xD0C698A515E73AE2) - v43 - 0xFDB230ECDD24AALL;
  v45 = v44 ^ 0x38D897D75540E012;
  v44 ^= 0xFC0BB9245A0CD9D6;
  v46 = (__ROR8__(v45, 8) + v44) ^ 0x767CBF12CE87AC7DLL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = __ROR8__((0x9D5F64679DCF0A2ELL - ((v48 + v47) | 0x9D5F64679DCF0A2ELL) + ((v48 + v47) | 0x62A09B986230F5D1)) ^ 0xDFCC7FA18459060ELL, 8);
  v50 = (0x9D5F64679DCF0A2ELL - ((v48 + v47) | 0x9D5F64679DCF0A2ELL) + ((v48 + v47) | 0x62A09B986230F5D1)) ^ 0xDFCC7FA18459060ELL ^ __ROR8__(v47, 61);
  v51 = (v49 + v50 - ((2 * (v49 + v50)) & 0xCB86E2D7BBD4A508) + 0x65C3716BDDEA5284) ^ 0x7FDF3DF27B598414;
  v52 = v51 ^ __ROR8__(v50, 61);
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
  *v42 = (((0x32FA6A8FD35FA01BLL - ((v62 + v61) | 0x32FA6A8FD35FA01BLL) + ((v62 + v61) | 0xCD0595702CA05FE4)) ^ 0xC4CDF06A40DA21BELL) >> (8 * (v42 & 7u))) ^ BYTE1(a2) ^ 0x79;
  v63 = a1 + (v4 + 3);
  v64 = __ROR8__(v63 & 0xFFFFFFFFFFFFFFF8, 8);
  v65 = ((2 * v64 + 0x3134CBBCC3D30E70) & 0x33B63C6199A84F82) - v64 + 0x4B8A7BF0D1425106;
  v66 = v65 ^ 0x4B60C5B513675AA2;
  v65 ^= 0x8FB3EB461C2B6366;
  v67 = __ROR8__(v66, 8);
  v68 = (((2 * (v67 + v65)) | 0x86088FECD6CA450ELL) - (v67 + v65) + 0x3CFBB809949ADD79) ^ 0xB578F8E4A5E28EFALL;
  v69 = v68 ^ __ROR8__(v65, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((v70 + v69) & 0x8616BC497E4DD51FLL ^ 0x841034007044111BLL) + ((v70 + v69) & 0x79E943B681B22AE0 ^ 0x40439001B00861) - 1) ^ 0x393C93A9979DEAA4;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (0x8A4FBD0E38F564A6 - ((v73 + v72) | 0x8A4FBD0E38F564A6) + ((v73 + v72) | 0x75B042F1C70A9B59)) ^ 0x6FAC0E6861B94DC9;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x58EFACCBC8D7665BLL;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0xF30ADCCD896F82F3;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((2 * (v80 + v79)) & 0xCE47D4B90A0CA33ELL) - (v80 + v79) + 0x18DC15A37AF9AE60) ^ 0x9CB5A7472CBAEE59;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  *v63 = a2 ^ 0x14 ^ (((((2 * (v83 + v82)) & 0x5E1CA041745E0538) - (v83 + v82) + 0x50F1AFDF45D0FD63) ^ 0x5939CAC529AA8339) >> (8 * (v63 & 7u)));
  return v12();
}

uint64_t sub_1006DE510(_WORD *a1, uint64_t a2)
{
  STACK[0xD608] = ((v3 + 1884377676) | (((v3 + 1884377676) < 0x7051522C) << 32)) + (v2 ^ 0x4EB800610DB6FB20);
  *a1 = 1280;
  v5 = *(v4 + 376);
  *(v5 + 2) = (((((v3 + 21068) ^ 0xA018) + 3532) ^ (v3 + 21068) ^ (((v3 + 21068) ^ 0x7DBC) - 12176) ^ (((v3 + 21068) ^ 0x5077) - 603) ^ (((v3 + 21068) ^ 0xDFFF) + 29229)) >> 8) ^ 0x52;
  *(v5 + 3) = (((v3 + 76) ^ 0x18) - 52) ^ (v3 + 76) ^ (((v3 + 76) ^ 0xBC) + 112) ^ (((v3 + 76) ^ 0x77) - 91) ^ (-32 - v3) ^ 0x2C;
  v6 = STACK[0xADE0];
  v7 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v2);
  return (*(v7 + 8 * (v2 ^ 0x1340)))(v6, a2, 1238384546, 998, 43);
}

uint64_t sub_1006DE72C@<X0>(int a1@<W1>, int a2@<W8>)
{
  v6 = *(STACK[0x57C0] + (4843 * a2 + 8692212) % 0x16B8u);
  v7 = (((v6 ^ 0x4DEECFFE) - 1307496446) ^ (v2 - 1159872849 + (v6 ^ 0x4521FF46)) ^ ((v6 ^ 0x8CF307F) - 147796095)) * a1 + 24911222;
  v8 = *(v3 + 4 * (v7 - (((v7 * v5) >> 32) >> 12) * v4));
  v9 = 4843 * (((HIBYTE(v8) ^ 0x6F045065) - 1018265351) ^ ((HIBYTE(v8) ^ 0xA46CCDDD) + 136715585) ^ ((HIBYTE(v8) ^ 0xCB689DD0) + 1730301262)) - 1795182097;
  v10 = 4843 * (((v8 ^ 0x295CD3CA) + 1481804449) ^ ((v8 ^ 0x9715ABAD) - 434375992) ^ ((v8 ^ 0xBE4978ED) - 817421944)) + 903904310;
  v11 = *(STACK[0x57C0] + 4843 * (BYTE1(v8) ^ 0xB6) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE1(v8) ^ 0xB6u) + 6213569)) >> 32) >> 4));
  v12 = *(STACK[0x57C0] + 4843 * (BYTE2(v8) ^ 0x4F) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE2(v8) ^ 0x4Fu) + 6213569)) >> 32) >> 4)) << 8;
  v13 = *(STACK[0x57C0] + v10 % 0x16B8);
  *(v3 + 4 * (6157 * a2 + 9469466 - ((((6157 * a2 + 9469466) * v5) >> 32) >> 12) * v4)) = (((((((v12 ^ 0xFF305B) & ((*(STACK[0x57C0] + v9 % 0x16B8) << 16) ^ 0xE9B45B) | v12 & 0x4B00) ^ 0x5A1111) & (v11 ^ 0xFFFF3C) ^ v11 & 0xB5) << 8) ^ 0x226F2A8B) & (v13 ^ 0xFFFFFF18) | v13 & 0x74) ^ 0x3EC65345;
  return (*(STACK[0x57D8] + 8 * ((79 * (a2 == 255)) ^ v2)))();
}

uint64_t sub_1006DEA34()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 26385)))();
  STACK[0x7FD0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006DEA68@<X0>(int a1@<W8>)
{
  STACK[0xD980] = STACK[0xA8D0];
  STACK[0x84C8] = 0x1883660EE8144416;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x16EB)))();
}

uint64_t sub_1006DED10@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0x57D8];
  STACK[0xB880] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x3BF9 ^ (7 * (a1 ^ 0x59A)))))();
}

uint64_t sub_1006DEE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(v10 + 528);
  v17 = STACK[0x5780];
  v18 = STACK[0x5780] ^ 0x4D;
  STACK[0x5770] = v18;
  v19 = *v7;
  v20 = *v11;
  v21 = *v7 & 0xFFFFFFF8;
  v22 = *(*v11 + (v21 & ((v16 & 0xFFFFFFF8 ^ (v18 - 361366649)) + 227897585 + ((2 * (v16 & 0xFFFFFFF8)) & 0xD4EC96F0))));
  v23 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = *(STACK[0x5720] + 8);
  STACK[0x5740] = v8;
  v25 = v24 + 4 * v8;
  v26 = (((2 * (v23 + v22)) | 0xC87DCF5F9E75C8E4) - (v23 + v22) - 0x643EE7AFCF3AE472) ^ 0xD46993941E9211CELL;
  v27 = v26 ^ __ROR8__(v22, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v14;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = (((2 * (v31 + v32)) & 0xCFD1D98733664990) - (v31 + v32) - 0x67E8ECC399B324C9) ^ 0x8414040482EA9A33;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v9;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - ((2 * (v37 + v36)) & 0xFB41368E06CDA906) - 0x25F64B8FC992B7DLL) ^ 0xAF51130E1BBE0221;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) & 0x2C22E55B4431F0D0) - (v40 + v39) - 0x161172ADA218F869) ^ 0xE2CEFF3CAC113D38;
  LODWORD(v16) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v39, 61))) ^ a6) >> (8 * (v16 & 7u))) ^ *v16;
  v42 = *(v20 + (STACK[0x56F0] & v19));
  v43 = (v42 + STACK[0x56E0]) ^ a5;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (v45 + v44 - ((2 * (v45 + v44)) & 0x7319557E165E5048) + 0x398CAABF0B2F2824) ^ 0xB3CBDBF3F8A36FA7;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v14;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v13;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v9;
  v53 = __ROR8__(v52, 8);
  v54 = v52 ^ __ROR8__(v51, 61);
  v55 = (((2 * (v53 + v54)) | 0x518D5E01DBC267D8) - (v53 + v54) - 0x28C6AF00EDE133ECLL) ^ 0x7A372749F539E54ELL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ v12;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = *(v20 + (v21 & ((v25 & 0x859EB930 | 0x7A6146CD) - 133448597 + (v25 & 0x7A6146C8 | 0x859EB933))));
  v61 = ((2 * (v59 + v58)) & 0xBAC3FAEEC680D544) - (v59 + v58);
  v62 = (v60 + __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8)) ^ a5;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ a7;
  v65 = __ROR8__(v64, 8);
  v66 = v64 ^ __ROR8__(v63, 61);
  v67 = (v65 + v66) ^ v14;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((2 * (v69 + v68)) | 0xB9F940DE52D7F31ALL) - (v69 + v68) + 0x23035F90D6940673) ^ 0xC0FFB757CDCDB889;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ v9;
  v73 = __ROR8__(v72, 8);
  v74 = v72 ^ __ROR8__(v71, 61);
  v75 = (0x2E2F01FC45ECD579 - ((v73 + v74) | 0x2E2F01FC45ECD579) + ((v73 + v74) | 0xD1D0FE03BA132A86)) ^ 0x8321764AA2CBFC24;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (0x182A0D3AF80963B1 - ((v77 + v76) | 0x182A0D3AF80963B1) + ((v77 + v76) | 0xE7D5F2C507F69C4ELL)) ^ 0xECF580ABF600A6E1;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((v80 + v79 - ((2 * (v80 + v79)) & 0xC6EFFB382BDAB968) + 0x6377FD9C15ED5CB4) ^ 0xF2C970748271E2F4) >> (8 * (v25 & 7u))) ^ *v25;
  LODWORD(v61) = (((v61 - 0x5D61FD7763406AA3) ^ 0x33208F600B232B1DLL) >> STACK[0x56D0]) ^ LODWORD(STACK[0x5700]);
  STACK[0x5760] = v81;
  STACK[0x57A0] = ((v16 + v81 * v61) * *(STACK[0x5750] + 16));
  return (*(STACK[0x57D8] + 8 * (v17 ^ (70 * (v15 > 1)))))();
}

uint64_t sub_1006DF570()
{
  v1 = STACK[0x57D8];
  v2 = STACK[0xC5E8];
  STACK[0x7F10] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + ((v0 - 21006627) & 0x140B9BF) + 7538 * (v0 ^ 0x86D) - 24790) ^ (498 * (v2 == 0)))))();
}

uint64_t sub_1006DF624()
{
  v2 = LODWORD(STACK[0x7B54]);
  v3 = 1534937323 * ((v1 - 240) ^ 0xCD7888C2C6EEFB47);
  STACK[0x1D4C0] = v3 ^ 0xD21C8094;
  LODWORD(STACK[0x1D4C8]) = v0 - 1008758781 - v3 - 177;
  LODWORD(STACK[0x1D4E0]) = v3 + v0 - 1008758781 - 5;
  STACK[0x1D4D8] = v2 + v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4D4]) = (v0 - 1008758781) ^ v3;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1006DF8D8()
{
  v1 = STACK[0x1504];
  STACK[0x7618] = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x7D63)))(((v1 + 367458433) & 0xEA195E77 ^ 0xF9D1A17B) + LODWORD(STACK[0x651C]));
  v4 = v3 != 0;
  if (v3)
  {
    v5 = -143113071;
  }

  else
  {
    v5 = STACK[0x4C30];
  }

  STACK[0x7BB0] = v3;
  LODWORD(STACK[0x7488]) = v5;
  if (v0 != 773352933)
  {
    v4 = 0;
  }

  LOBYTE(STACK[0xB317]) = v4;
  return (*(v2 + 8 * ((24939 * v4) ^ v1)))();
}

uint64_t sub_1006DFAB8()
{
  *(v1 + 592) = 0;
  *(v1 + 600) = (v0 - 1723121806) ^ (1917435887 * (v2 ^ 0xE6BB5B06));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x55A9)))(v3 - 240);
  v7 = *STACK[0x4270] != 2130 * (((v0 - 10645) | 0x1DC0) ^ 0x1DC1) - 10650 || *STACK[0x4420] == 0;
  return (*(v4 + 8 * ((v7 | (2 * v7)) ^ v0)))(v5);
}

uint64_t sub_1006DFBA0()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 13993 + v0 + 15186)))(0x308E083E0C524CBELL);
}

uint64_t sub_1006DFE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x6CF8];
  v9 = STACK[0x57D8];
  v10 = STACK[0x62A8];
  STACK[0x98C8] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x54EC ^ (1743 * (v7 ^ 0x94A)))))(927787769, v8, a3, a4, a5, a6, a7, v10);
}

uint64_t sub_1006DFFCC()
{
  v1 = LODWORD(STACK[0x2808]) ^ 0x2CD6;
  STACK[0x8738] = v0 + 1;
  v2 = *(*STACK[0x51F0] + ((((((2 * ((v1 - 7258) & v0)) & 0x8C5B0270) + ((v1 - 7258) & v0 ^ 0x462D813F)) & 0xFFFFFFF8) - 1281030056) & *STACK[0x51E8]));
  v3 = __ROR8__(((v1 + 15364) - 22622) & v0, 8);
  v4 = (((2 * ((v2 + v3) ^ 0xAA530C4FBA618D26)) | 0x8B8375D45CD8F680) - ((v2 + v3) ^ 0xAA530C4FBA618D26) - 0x45C1BAEA2E6C7B40) ^ 0x1B84E7EC0B53CA01;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x153242EE3CF06A49;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x2275D4C73835399BLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (v10 + v9 - ((2 * (v10 + v9)) & 0x11809F99106EB948) - 0x773FB03377C8A35CLL) ^ 0x6D6F557FA68A6079;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) | 0xC8B9D7D8B37AAD1CLL) - (v13 + v12) - 0x645CEBEC59BD568ELL) ^ 0xA381221A95F8E1AFLL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xA82620A559D2DA78;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v15, 61);
  LOBYTE(v18) = (((__ROR8__((v17 + v18) ^ 0x5F8DEC3EA3980A1BLL, 8) + ((v17 + v18) ^ 0x5F8DEC3EA3980A1BLL ^ __ROR8__(v18, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v0 & 7u))) ^ *v0;
  return (*(STACK[0x57D8] + 8 * ((21402 * ((((v18 ^ 0xFA) + 91) ^ ((v18 ^ 0x70) - 47) ^ ((v18 ^ 0x8A) + 43)) == 241)) ^ v1)))();
}

uint64_t sub_1006E0248()
{
  v1 = v0 - 7650;
  v2 = v0 - 3478;
  if (LODWORD(STACK[0x71C4]) == -769884010)
  {
    v3 = -769883996;
  }

  else
  {
    v3 = -769884028;
  }

  LODWORD(STACK[0xAF4C]) = v3;
  v4 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v4 + 8 * ((v2 ^ 0x150) + v1)))();
}

uint64_t sub_1006E02C8@<X0>(int a1@<W8>)
{
  v1 = STACK[0x7A58];
  STACK[0x8D40] = STACK[0x7A58];
  return (*(STACK[0x57D8] + 8 * (((((v1 == 0x79CEC8CF5A6FCEBALL) ^ (47 * (a1 ^ 0x34))) & 1) * (a1 ^ 0x482E)) ^ a1)))();
}

uint64_t sub_1006E0324()
{
  v1 = STACK[0x8BF0];
  STACK[0xBB38] = STACK[0x8BF0];
  return (*(STACK[0x57D8] + 8 * ((117 * (v1 != 0)) ^ (v0 - 3435))))();
}

uint64_t sub_1006E0450(void *a1)
{
  a1[31] = *(STACK[0x4D10] + 24) + 16 * a1[404];
  a1[32] = 0xD38CBDD3ACAFF84ALL;
  v1 = STACK[0x57D8];
  a1[30] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x41E0]));
  return (*(v1 + 8 * SLODWORD(STACK[0x41DC])))();
}

uint64_t sub_1006E049C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v10 = *(v9 + 4008);
  v11 = *(v10 + a2 - 5896 * ((((a2 >> 3) * v7) >> 64) >> 4));
  v12 = *(v9 + 4000);
  v13 = *(v12 + 4 * (((v6 ^ 0xB39992D5) + 2717 * (v11 | ((v11 < 0x1C) << 8)) + 1293544810) % 0x2240));
  v14 = *(v10 + 3903 * (BYTE1(v13) ^ 0x64) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v13) ^ 0x64u) + 4008381)) >> 32) >> 1));
  v15 = *(v10 + (3903 * (((v13 ^ 0x27F67B62) + 499027661) ^ ((v13 ^ 0xEE9B0606) - 724307031) ^ ((v13 ^ 0xC96D7D95) - 215644100)) + 1642604317) % 0x1708);
  v16 = 3903 * (((HIBYTE(v13) ^ 0x7CF5243C) + 80935020) ^ ((HIBYTE(v13) ^ 0xA77C399A) - 547625522) ^ ((HIBYTE(v13) ^ 0xDB891DEA) - 1548828226)) + 411589337;
  v17 = BYTE2(v13) ^ 0xC5;
  v18 = v14 & 0x48 ^ 0x72;
  v19 = *STACK[0x55C0];
  v20 = *(v10 + v16 % 0x1708);
  v21 = *(v10 + 3903 * v17 + 4008381 - 5896 * (((1456909 * (3903 * v17 + 4008381)) >> 32) >> 1));
  LODWORD(v10) = v20 & 0x5C ^ 0xFFFFFFFC;
  v22 = v21 & 0xB6 ^ 0xE9;
  v23 = (((((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10) << 25) ^ (v20 << 24)) & 0xFF0000FF | (((v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * (v22 ^ v21 & 0x12)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xB6) << 16) | (((v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x48) << 8)) ^ 0x5C000000;
  LOBYTE(v10) = v15 & 0x90 ^ 0xDE;
  v24 = v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  v25 = *STACK[0x4F48];
  *(v12 + 4 * (a6 % 0x2240)) = v24 & 0xE6 ^ 0x3EB61868 ^ ((v23 - ((2 * v23) & 0xADCBE400) + 1457910445) ^ 0x24968EB4) & (v24 ^ 0xFFFFFF6F);
  return (*(STACK[0x57D8] + 8 * ((v8 != 0) | v6)))(v25, a2 + 3903, 72, v19);
}

uint64_t sub_1006E0858()
{
  LODWORD(STACK[0x7A20]) = -769884012;
  LODWORD(STACK[0xA9D4]) = -769884012;
  v1 = *(STACK[0x57D8] + 8 * (v0 ^ 0x54AE ^ (65463 * (v0 + 1494320623 >= ((v0 + 1634301472) & 0x9E969FBE ^ 0x86FA879D)))));
  STACK[0x5BC8] = *(STACK[0x57D8] + 8 * v0);
  return v1();
}

uint64_t sub_1006E09BC@<X0>(int a1@<W8>)
{
  if (*(STACK[0x96A0] - 0x79296B4A625EDC74))
  {
    v1 = (STACK[0x874C] & 0x20) == ((a1 - 7920) | 0xC49) - 7259;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * ((v2 * ((a1 - 36) ^ 0x3B4B)) ^ a1)))();
}

uint64_t sub_1006E0AC0(uint64_t a1, uint64_t a2, int a3)
{
  v7 = STACK[0x51B8];
  v8 = *v6;
  v9 = 1978732275 * (v3 - (*(*v4 + (v8 & a2)) & (STACK[0x51B8] + 2147461033) ^ a3)) + 1690849624;
  v10 = (v9 ^ 0x92B7AE02) & (2 * (v9 & 0x9B37AEA8)) ^ v9 & 0x9B37AEA8;
  v11 = ((2 * (v9 ^ 0xB0DFF252)) ^ 0x57D0B9F4) & (v9 ^ 0xB0DFF252) ^ (2 * (v9 ^ 0xB0DFF252)) & 0x2BE85CFA;
  v12 = v11 ^ 0x2828440A;
  v13 = (v11 ^ 0x1C018EA) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0xAFA173E8) & v12 ^ (4 * v12) & 0x2BE85CF8;
  v15 = (v14 ^ 0x2BA050E0) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x480C12)) ^ 0xBE85CFA0) & (v14 ^ 0x480C12) ^ (16 * (v14 ^ 0x480C12)) & 0x2BE85CF0;
  v17 = v15 ^ 0x2BE85CFA ^ (v16 ^ 0x2A804C00) & (v15 << 8);
  *(v5 + 488) = *(*v4 + (v8 & 0xCBE8CA54)) & 0x7FFFFFFF ^ v9 ^ (2 * ((v17 << 16) & 0x2BE80000 ^ v17 ^ ((v17 << 16) ^ 0x5CFA0000) & (((v16 ^ 0x168105A) << 8) & 0x2BE80000 ^ 0x3A00000 ^ (((v16 ^ 0x168105A) << 8) ^ 0x685C0000) & (v16 ^ 0x168105A)))) ^ 0xD3F2500B;
  return (*(STACK[0x57D8] + 8 * (v7 - 16479)))();
}

uint64_t sub_1006E0CBC()
{
  v2 = STACK[0x51B8];
  *(STACK[0xE5A0] + 788) = 1978732275 * ((v1 ^ 0xC61726DB) + v0) + 1978732275;
  return (*(STACK[0x57D8] + 8 * (v2 - 17962)))();
}

uint64_t sub_1006E0D0C()
{
  v1[1] = 0xF9E4F3B5C631896;
  *v1 = 0x5E6653D96D0CF4EBLL;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006E0D78(uint64_t a1, uint64_t a2)
{
  *STACK[0xB460] = *(a2 + 2688);
  *STACK[0x8550] = STACK[0x978C];
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1006E0E0C()
{
  v2 = (v1 - 28071) | 0x162;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0xD89)))((v1 - 769911761) ^ v2 ^ v0);
  STACK[0x6700] = v4;
  v5 = (*(v3 + 8 * (v1 + 2695)))((v1 - 769911761) ^ v2 ^ v0);
  STACK[0x5C10] = v5;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v3 + 8 * ((105 * v7) ^ v1)))();
}

uint64_t sub_1006E0ED4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x5470)))();
  STACK[0xAC10] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006E0F84()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 15585)))(112);
  STACK[0xA468] = v2 + 0x55A8D952E5D4689ELL;
  return (*(v1 + 8 * ((32639 * ((((v0 - 1) & 0x1796DA77 ^ (v2 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1006E105C()
{
  *(v1 + 600) = (v3 - 1723137991) ^ (1917435887 * (v2 ^ 0xE6BB5B06));
  *(v1 + 592) = 0;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x14E2)))(v4 - 240);
  if (*v0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *STACK[0x4420] == 0;
  }

  v8 = v7;
  return (*(v5 + 8 * (((((v3 + 119) ^ v8) & 1) * (((v3 + 1012888876) & 0xC3A03ABF) - 6330)) ^ v3)))(v6);
}

uint64_t sub_1006E1170()
{
  v0 = STACK[0x51B8] - 4827;
  v1 = *(STACK[0x9280] + 24);
  STACK[0xAAE8] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 != 0) * ((v0 ^ 0x30E7) - 55695 + 3 * (v0 ^ 0x64DA))) ^ v0)))();
}

uint64_t sub_1006E11DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v8 = LODWORD(STACK[0x56C0]);
  v9 = LODWORD(STACK[0x5560]) - 5278;
  LODWORD(STACK[0x5750]) = a6 + a8;
  return (*(STACK[0x57D8] + 8 * v9))(a1, a2, a3, a4, v8);
}

uint64_t sub_1006E121C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xC038] = 0;
  return (*(v1 + 8 * (v0 + 1406)))(v2);
}

uint64_t sub_1006E1250()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0x5A10] = 0;
  return (*(v1 + 8 * (v0 - 16432)))(v2);
}

uint64_t sub_1006E1280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v15 + v9) = 0;
  v16 = *v14;
  if ((v9 & 1) == v7 + a5)
  {
    v16 = 0;
  }

  *(v15 + v9) = v16;
  v17 = *(v11 + a7);
  if ((v9 & 2) == 0)
  {
    v17 = 0;
  }

  v18 = v17 ^ v16;
  *(v15 + v9) = v18;
  v19 = *(v11 + a1);
  if ((v9 & 4) == 0)
  {
    v19 = 0;
  }

  v20 = v19 ^ v18;
  *(v15 + v9) = v20;
  v21 = *(v11 + a2);
  if ((v9 & 8) == 0)
  {
    v21 = 0;
  }

  v22 = v21 ^ v20;
  *(v15 + v9) = v22;
  v23 = *(v11 + v12);
  if ((v9 & 0x10) == 0)
  {
    v23 = 0;
  }

  v24 = v23 ^ v22;
  *(v15 + v9) = v24;
  v25 = *(v11 + a6);
  if ((v9 & 0x20) == 0)
  {
    v25 = 0;
  }

  v26 = v25 ^ v24;
  *(v15 + v9) = v26;
  v27 = *(v11 + a3);
  if ((v9 & 0x40) == 0)
  {
    v27 = 0;
  }

  v28 = v27 ^ v26;
  *(v15 + v9) = v28;
  v29 = *(v11 + a4);
  if ((v9 & 0x80) == 0)
  {
    v29 = 0;
  }

  v30 = v28 ^ v10 ^ v29;
  *(v15 + v9) = v30;
  *(v13 + v30) = v9;
  return (*(STACK[0x57D8] + 8 * ((60 * (v9 == 255)) ^ v8)))();
}

uint64_t sub_1006E135C()
{
  v1 = STACK[0x51B8] - 9029;
  v2 = LODWORD(STACK[0xB404]) == (STACK[0x51B8] ^ 0x3174) - 29903 + ((STACK[0x51B8] + 1519257495) & 0xA571ABBF);
  STACK[0x7840] = STACK[0x92D0] + 16;
  STACK[0x6840] = v0;
  return (*(STACK[0x57D8] + 8 * ((4 * v2) | (8 * v2) | v1)))();
}

uint64_t sub_1006E13E0()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((2 * v0) ^ 0x145F) + v0)))();
}

uint64_t sub_1006E1478()
{
  v1 = (v0 - 783) | 0x30F;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = (LODWORD(STACK[0x8620]) ^ 0xF77EFFB3) - 441122 + ((LODWORD(STACK[0x8620]) << ((v1 - 89) ^ 0x57)) & 0xEEFDFF66);
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -214461806;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1006E1518@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x7D9C]) = -143113071;
  LOBYTE(STACK[0x853F]) = 1;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1006E16CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * ((v7 + 4425) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 4294958552);
}

uint64_t sub_1006E1714()
{
  v1 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 + 25743)))();
  (*(v1 + 8 * (v0 ^ 0x6B91)))(STACK[0xD6A0]);
  return (*(v1 + 8 * v0))(LODWORD(STACK[0x4C68]));
}

uint64_t sub_1006E17E8()
{
  LODWORD(STACK[0x1D4C8]) = v0 - 289235981 * (((v1 - 240) & 0x764C4411 | ~((v1 - 240) | 0x764C4411)) ^ 0xE316BD1) + 15835;
  v2 = STACK[0x3E58];
  STACK[0x1D4C0] = STACK[0x3E58];
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 + 26258)))(v1 - 240);
  if (LODWORD(STACK[0x1D4CC]))
  {
    v5 = 1;
  }

  else
  {
    v5 = *v2 == 0;
  }

  v6 = v5;
  return (*(v3 + 8 * ((v6 * ((v0 ^ 0x4D9C) + 286)) ^ v0)))(v4);
}

uint64_t sub_1006E1928()
{
  v1 = LODWORD(STACK[0xA9D4]);
  v2 = STACK[0x158C];
  v3 = STACK[0x51B8];
  v4 = STACK[0x51B8] - 1079089617;
  v5 = 551690071 * ((STACK[0x1580] - ((v0 - 240) | 0x9A11C8C1CFD30ABCLL) - 0x65EE373E302CF544) ^ 0x147365F07EC1A614);
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4C4]) = LODWORD(STACK[0x1588]) ^ v5;
  LODWORD(STACK[0x1D4C8]) = (v2 ^ 0x7F) - v5;
  LODWORD(STACK[0x1D4C0]) = v4 ^ v5;
  STACK[0x1D4E0] = v1 + v5;
  LODWORD(STACK[0x1D4CC]) = v2 - v5;
  STACK[0x1D4D8] = 3525083284u - v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 + 9201)))(v0 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_1006E1AD4()
{
  v0 = STACK[0x51B8] - 9782;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x7DA8]);
  STACK[0x7DA8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006E1B14@<X0>(unint64_t a1@<X8>)
{
  STACK[0x6A08] = a1;
  v5 = *(&off_101353600 + (v4 ^ 0x5C29));
  LODWORD(STACK[0x9104]) = v1;
  v6 = *(v5 - 4);
  LOBYTE(STACK[0x1D1CD]) = -51 - 79 * *v6;
  LOBYTE(STACK[0x1D1CE]) = -51 - 79 * v6[1];
  LOBYTE(STACK[0x1D1CF]) = -51 - 79 * v6[2];
  LOBYTE(STACK[0x1D1D0]) = -51 - 79 * v6[3];
  LOBYTE(STACK[0x1D1D1]) = -51 - 79 * v6[4];
  LOBYTE(STACK[0x1D1D2]) = -51 - 79 * v6[5];
  LOBYTE(STACK[0x1D1D3]) = -51 - 79 * v6[6];
  LOBYTE(STACK[0x1D1D4]) = -51 - 79 * v6[7];
  LOBYTE(STACK[0x1D1D5]) = -51 - 79 * v6[8];
  LOBYTE(STACK[0x1D1D6]) = -51 - 79 * v6[9];
  LOBYTE(STACK[0x1D1D7]) = -51 - 79 * v6[10];
  LOBYTE(STACK[0x1D1D8]) = -51 - 79 * v6[11];
  LOBYTE(STACK[0x1D1D9]) = -51 - 79 * v6[12];
  LOBYTE(STACK[0x1D1DA]) = -51 - 79 * v6[13];
  LOBYTE(STACK[0x1D1DB]) = -51 - 79 * v6[14];
  LOBYTE(STACK[0x1D1DC]) = -51 - 79 * v6[15];
  LOBYTE(STACK[0x1D1DD]) = -51 - 79 * v6[16];
  LOBYTE(STACK[0x1D1DE]) = -51 - 79 * v6[17];
  LOBYTE(STACK[0x1D1DF]) = -51 - 79 * v6[18];
  LOBYTE(v6) = v6[19];
  LODWORD(STACK[0x3DC4]) = -51;
  LOBYTE(STACK[0x1D1E0]) = -51 - 79 * v6;
  v7 = *(&off_101353600 + (v4 ^ 0x5811));
  STACK[0x45F8] = *(&off_101353600 + v4 - 21802);
  STACK[0x4678] = *(&off_101353600 + v4 - 21718);
  STACK[0x45F0] = *(&off_101353600 + (v4 ^ 0x5B74));
  v8 = *(&off_101353600 + v4 - 21888);
  STACK[0x4488] = v7 - 4;
  STACK[0x4C38] = v8 - 12;
  STACK[0x3EC0] = *(&off_101353600 + (v4 ^ 0x5DBA));
  STACK[0x4168] = *(&off_101353600 + v4 - 21137) - 8;
  STACK[0x4170] = *(&off_101353600 + v4 - 21673);
  STACK[0x3ED0] = *(&off_101353600 + v4 - 22313);
  STACK[0x40E8] = *(&off_101353600 + v4 - 21303);
  STACK[0x4158] = *(&off_101353600 + (v4 ^ 0x5DBE));
  STACK[0x3DB8] = *(&off_101353600 + (v4 ^ 0x5AED));
  v9 = *(&off_101353600 + v4 - 21422);
  STACK[0x4270] = *(&off_101353600 + v4 - 22225);
  STACK[0x51F0] = *(&off_101353600 + (v4 ^ 0x581D));
  v10 = *(&off_101353600 + v4 - 21255);
  STACK[0x3E58] = v9 - 4;
  STACK[0x3EA0] = v10 - 8;
  STACK[0x3E78] = *(&off_101353600 + (v4 ^ 0x5C1B)) - 8;
  v11 = *(&off_101353600 + v4 - 21471);
  STACK[0x4C10] = *(&off_101353600 + v4 - 21335) - 8;
  STACK[0x3EB8] = v11 - 8;
  v12 = *(&off_101353600 + v4 - 21660);
  STACK[0x4CA8] = v12 - 12;
  STACK[0x3DA0] = v12 - 19;
  STACK[0x3D68] = v12 - 27;
  STACK[0x3D80] = v12 - 11;
  v13 = *(&off_101353600 + v4 - 22046);
  STACK[0x3E38] = v13 - 8;
  STACK[0x3DF8] = v13 - 3;
  STACK[0x3DF0] = 3 - v13;
  STACK[0x4638] = *(&off_101353600 + v4 - 22601) - 4;
  STACK[0x3D40] = *(&off_101353600 + (v4 ^ 0x5BE8)) - 4;
  STACK[0x3E18] = *(&off_101353600 + v4 - 21376) - 4;
  STACK[0x4658] = *(&off_101353600 + (v4 ^ 0x59C4));
  v14 = *(&off_101353600 + (v4 ^ 0x5AFF));
  STACK[0x4240] = v14 - 8;
  STACK[0x3D48] = v14 + 76;
  STACK[0x4228] = v14 - 4;
  STACK[0x51E8] = *(&off_101353600 + v4 - 21446);
  v15 = *(&off_101353600 + v4 - 22303);
  STACK[0x3E30] = v15 - 4;
  STACK[0x3DE8] = 4 - v15;
  STACK[0x4160] = *(&off_101353600 + (v4 ^ 0x5992));
  STACK[0x3EB0] = *(&off_101353600 + v4 - 21322) - 12;
  STACK[0x4130] = *(&off_101353600 + (v4 ^ 0x5DCD));
  v16 = *(&off_101353600 + v4 - 21201);
  STACK[0x3E20] = v16 - 8;
  STACK[0x3DE0] = 8 - v16;
  STACK[0x3EA8] = *(&off_101353600 + (v4 ^ 0x5C43)) - 8;
  STACK[0x4630] = *(&off_101353600 + (v4 ^ 0x5C0C));
  v17 = *(&off_101353600 + v4 - 21076);
  STACK[0x4190] = *(&off_101353600 + v4 - 21371);
  v18 = *(&off_101353600 + v4 - 22082);
  STACK[0x3EE0] = *(&off_101353600 + v4 - 22247);
  STACK[0x3E00] = v17 - 4;
  v19 = *(&off_101353600 + (v4 ^ 0x594B));
  STACK[0x4C70] = v19 - 12;
  STACK[0x3D98] = v19 - 19;
  STACK[0x3D60] = v19 - 27;
  STACK[0x3D78] = v19 - 7;
  STACK[0x4428] = *(&off_101353600 + v4 - 22444);
  STACK[0x3EC8] = *(&off_101353600 + (v4 ^ 0x5C23));
  STACK[0x4118] = *(&off_101353600 + (v4 ^ 0x5C46)) - 4;
  v20 = *(&off_101353600 + v4 - 22414);
  STACK[0x4148] = *(&off_101353600 + v4 - 21215);
  STACK[0x3E70] = *(&off_101353600 + v4 - 22416);
  v21 = *(&off_101353600 + (v4 ^ 0x5C09));
  STACK[0x4220] = v20 - 4;
  STACK[0x4110] = v21 - 4;
  STACK[0x4218] = *(&off_101353600 + (v4 ^ 0x5CDE));
  STACK[0x4210] = *(&off_101353600 + v4 - 21697) - 4;
  STACK[0x3F58] = *(&off_101353600 + v4 - 21819);
  v22 = *(&off_101353600 + (v4 ^ 0x5CF9));
  STACK[0x3E48] = *(&off_101353600 + v4 - 21526);
  STACK[0x4C08] = *(&off_101353600 + (v4 ^ 0x5B13));
  STACK[0x41A0] = *(&off_101353600 + v4 - 21835);
  STACK[0x4D10] = v22 - 8;
  v23 = *(&off_101353600 + (v4 ^ 0x5C38));
  STACK[0x3E28] = v23 - 8;
  STACK[0x3DD8] = 8 - v23;
  STACK[0x4268] = *(&off_101353600 + (v4 ^ 0x5AFB));
  STACK[0x4420] = *(&off_101353600 + (v4 ^ 0x5862));
  v24 = *(&off_101353600 + v4 - 21748);
  STACK[0x3DA8] = *(&off_101353600 + v4 - 21674);
  STACK[0x4C48] = v24 - 4;
  STACK[0x3ED8] = *(&off_101353600 + (v4 ^ 0x588A)) - 4;
  STACK[0x3F50] = *(&off_101353600 + v4 - 22450) - 12;
  STACK[0x4200] = *(&off_101353600 + (v4 ^ 0x58DB));
  v25 = *(&off_101353600 + (v4 ^ 0x5CA3));
  STACK[0x44F0] = v25 - 4;
  STACK[0x40F0] = v25 + 124;
  STACK[0x3EE8] = v25 + 4;
  STACK[0x3E50] = *(&off_101353600 + (v4 ^ 0x5A4E));
  STACK[0x3F60] = *(&off_101353600 + (v4 ^ 0x5D7C));
  STACK[0x3DB0] = *(&off_101353600 + (v4 ^ 0x5832));
  STACK[0x4D38] = *(&off_101353600 + (v4 ^ 0x5A26));
  STACK[0x4D48] = *(&off_101353600 + v4 - 22015);
  LODWORD(STACK[0x4C34]) = v4;
  v26 = *(&off_101353600 + v4 - 21088);
  *&STACK[0x45D0] = vdupq_n_s64(0xE39B6E8EBC4508FFLL);
  *&STACK[0x46D0] = vdupq_n_s64(0xBFF6C21B210E4F37);
  *&STACK[0x4BD0] = vdupq_n_s64(0x4E0B6541E4935D63uLL);
  *&STACK[0x44D0] = vdupq_n_s64(0x1F7B92942DEF21EFuLL);
  *&STACK[0x4600] = vdupq_n_s64(0x1C02DF5B258263EDuLL);
  *&STACK[0x4490] = vdupq_n_s64(0xB2823E14A03C0367);
  *&STACK[0x4620] = vdupq_n_s64(0x69517CAD07781183uLL);
  *&STACK[0x4470] = vdupq_n_s64(0x51FC477E33DE4033uLL);
  *&STACK[0x4C50] = vdupq_n_s64(v3);
  *&STACK[0x4CF0] = vdupq_n_s64(0x7A3BACE59FEC2E01uLL);
  *&STACK[0x4CE0] = vdupq_n_s64(0xE82A733DF6A37C80);
  *&STACK[0x4D00] = vdupq_n_s64(0x276E6E460F8C8191uLL);
  *&STACK[0x4CD0] = vdupq_n_s64(0x4C5B42D42BC4F84AuLL);
  *&STACK[0x4CC0] = vdupq_n_s64(0x800EBE27BBE016F1);
  *&STACK[0x4690] = vdupq_n_s64(0xFDA8E32437622097);
  *&STACK[0x4640] = vdupq_n_s64(0x1038643522CD1792uLL);
  *&STACK[0x45B0] = vdupq_n_s64(0x5FD252103B569EAuLL);
  *&STACK[0x4BB0] = vdupq_n_s64(0x7B5626353E243BAAuLL);
  *&STACK[0x46B0] = vdupq_n_s64(0xA4C13E7A672B61F6);
  *&STACK[0x45A0] = vdupq_n_s64(0x8B18BD9A62CD5640);
  *&STACK[0x4660] = vdupq_n_s64(0xAD114E495B9659F5);
  *&STACK[0x46E0] = vdupq_n_s64(0x893772B00383F7DCLL);
  *&STACK[0x46A0] = vdupq_n_s64(0x282209998BDCA063uLL);
  *&STACK[0x45C0] = vdupq_n_s64(0x5DC0C52EDBDD025uLL);
  STACK[0x4E48] = v26 - 4;
  STACK[0x3D90] = v18 - 7;
  STACK[0x3D58] = v18 - 15;
  STACK[0x4C78] = v18;
  STACK[0x3D70] = v18 + 1;
  LODWORD(STACK[0x4C24]) = 13;
  LODWORD(STACK[0x4D1C]) = 6;
  return v2();
}

uint64_t sub_1006E23F4()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0xBF84]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 2255)))();
}

uint64_t sub_1006E24D8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, void *a3@<X8>)
{
  v14 = v6;
  v15 = v8 + v6;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((v12 - v16) & 0x9197F39D7DDE7A96) + v16 + v9 - ((v16 + v9) & 0x9397F39D7DDE7A96);
  v18 = (__ROR8__(v17 ^ 0x7C2FAD0C59EACA12, 8) + (v17 ^ 0xC7487037D702108)) ^ a2;
  v19 = v18 ^ __ROR8__(v17 ^ 0xC7487037D702108, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a1;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v10;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - ((2 * (v24 + v23)) & 0x19E1657CDFCD7B00) - 8290930382998160000) ^ 0xAEBCBB742BEAB18BLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v11;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v13;
  v30 = __ROR8__(v29, 8) + (v29 ^ __ROR8__(v28, 61));
  v31 = v6 + 1;
  v32 = (((v30 - ((2 * v30) & 0x62A247D419D99B5CLL) + 0x315123EA0CECCDAELL) ^ 0x58005F470B94DC2DuLL) >> (8 * (v15 & 7u))) ^ *v15;
  if (v5 < v7 != v31 > 0xCA18A239)
  {
    v33 = v5 < v7;
  }

  else
  {
    v33 = v31 + v4 < v5;
  }

  *(*a3 + v14) = v32;
  return (*(STACK[0x57D8] + 8 * ((3751 * v33) ^ (v3 - 5321))))();
}

uint64_t sub_1006E26FC()
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

uint64_t sub_1006E27F0()
{
  v2 = STACK[0x51B8];
  LODWORD(STACK[0x5E9C]) = v0;
  v3 = STACK[0xA4C8];
  v4 = STACK[0x1838];
  LODWORD(STACK[0x1D4D4]) = STACK[0x1838] ^ (v2 - 22613) ^ 0x94B6B849;
  STACK[0x1D4C0] = v3 ^ v4;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + 1451493860 + v2;
  LODWORD(STACK[0x1D4C8]) = ((v2 - 22613) ^ 0x94B6B7E4) - v4;
  LODWORD(STACK[0x1D4E0]) = v4 + v2 - 1799987313 + 84;
  LODWORD(STACK[0x1D4D0]) = v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2462)))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1006E28A4()
{
  v8 = STACK[0x51B8];
  v9 = STACK[0x51B8] + v2;
  v10 = *(v0 + 464) ^ 0x89C380D9 ^ *(*v6 + (*v3 & 0x4D1C521C)) & 0x7FFFFFFF;
  v11 = 1534937323 * (((v4 | 0xACEBD71E066C764FLL) - (v4 & 0xACEBD71E066C764FLL)) ^ 0x61935FDCC0828D08);
  *(v5 + 592) = v11 ^ 0xD6FE769C;
  *(v5 + 604) = v11 + 1451493860 + v8;
  *(v5 + 612) = (v9 - 1420019799) ^ v11;
  *(v5 + 624) = (v9 ^ 0xAB5C3418) + v11;
  *(v5 + 600) = (v9 ^ 0xAB5C3A3C) - v11;
  *(v5 + 608) = v11;
  *(v5 + 616) = v10 + v11;
  v12 = STACK[0x57D8];
  v13 = (*(STACK[0x57D8] + 8 * (v8 + v1)))(v7 - 240);
  return (*(v12 + 8 * *(v5 + 628)))(v13);
}

uint64_t sub_1006E2A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3 ^ 0xAEFA4B7F ^ (v3 + 9126) | ((v3 ^ (((v5 - (v3 ^ LODWORD(STACK[0xA10]))) | ((v3 ^ LODWORD(STACK[0xA10])) - v5)) >= 0) ^ 0x6411F8EEu) << 32);
  *(v6 + 16 * a3 + 8) = ((((v4 - v7) | (v7 - v4)) & 0x8000000000000000) == 0) + 2101965996;
  return (*(STACK[0x57D8] + 8 * (v3 + 3746)))(a1, a2, 1202120278);
}

uint64_t sub_1006E2B30()
{
  v1 = STACK[0x51B8] + 2262;
  v2 = STACK[0xE808] + STACK[0x51B8] - 1893517534 - 2401472366u + (v0 ^ 0xD21C8094);
  STACK[0xD9F0] = v2;
  return (*(STACK[0x57D8] + 8 * ((v2 > STACK[0xE800]) ^ v1)))();
}

uint64_t sub_1006E2C0C()
{
  if (STACK[0xAF60])
  {
    v1 = LODWORD(STACK[0x9C68]) == v0 - 9698;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  return (*(STACK[0x57D8] + 8 * ((1015 * v2) ^ v0)))();
}

uint64_t sub_1006E2C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = ((v9 + 15772) ^ 0x4607) - v8;
  LODWORD(STACK[0x8AD4]) = v11;
  v12 = *(a8 + 4) + v10;
  if (v12 < 0)
  {
    v12 = -v12;
  }

  LODWORD(STACK[0xCA1C]) = v12;
  LODWORD(STACK[0xA5AC]) = v11 >> 5;
  LODWORD(STACK[0x76D4]) = v11 & 0x1F;
  return (*(STACK[0x57D8] + 8 * (v9 + 4456)))();
}

uint64_t sub_1006E2E60@<X0>(int a1@<W8>)
{
  v10 = *(v9 + (v2 - 17721) * a1 + 8698028 - 5816 * ((((((v2 - 17721) * a1 + 8698028) >> 3) * v7) >> 32) >> 7));
  v11 = 6157 * (((v10 ^ 0xCEF43D9D) + 822854243) ^ ((v10 ^ 0xB3375D2F) + 1288217297) ^ ((v10 ^ 0x7DC36075) - 2109956213)) + 1225243;
  v12 = *(v8 + 4 * (v11 - (((v11 * v6) >> 32) >> 12) * v5));
  v13 = 4843 * (BYTE1(v12) ^ 0xB6) + 6213569;
  v14 = 4843 * (BYTE2(v12) ^ 0x4F) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE2(v12) ^ 0x4Fu) + 6213569)) >> 32) >> 4);
  v15 = ((HIBYTE(v12) ^ 0x2B4AED85) - 1524772660) ^ ((HIBYTE(v12) ^ 0xB7B6CBAF) + 971110114) ^ ((HIBYTE(v12) ^ 0x9CFC2642) + 313203469);
  v16 = 4843 * (((v12 ^ 0x1398861C) + 1409238820) ^ ((v12 ^ 0x6EFE5EDE) + 781819874) ^ ((v12 ^ 0x7D66D848) + 1023482232)) - 1786695249;
  v17 = *(v9 + v14) << 8;
  v18 = *(v9 + v13 - 5816 * (((11815591 * v13) >> 32) >> 4));
  v19 = *(v9 + v16 - 5816 * ((((v16 >> 3) * v7) >> 32) >> 7));
  *(v8 + 4 * (v3 + 6157 * a1 - ((((v3 + 6157 * a1) * v6) >> 32) >> 12) * v5)) = (((((((v17 ^ 0xFF082D) & ((v1 + 910) ^ (*(v9 + 4843 * v15 + 872214260 - 5816 * (((((4843 * v15 + 872214260) >> 3) * v7) >> 32) >> 7)) << 16)) | v17 & 0x7300) ^ 0xEAA4B) & (v18 ^ (v4 + 128)) ^ v18 & 0x99999999) << 8) ^ 0x605AD2E3) & (v19 ^ 0xFFFFFF2C) | v19 & 0x1C) ^ 0x3C70836D;
  return (*(STACK[0x57D8] + 8 * ((1535 * (a1 == 255)) ^ v2)))();
}

uint64_t sub_1006E31E8()
{
  v3 = STACK[0x2F0];
  v4 = v2 & v0 ^ 0x61;
  v5 = (v2 ^ (2 * ((((((v2 ^ 0x20) & (2 * ((v2 ^ 0x20) & (2 * (v4 ^ v2 & 2)) ^ v4)) ^ v4) << (v3 + 25)) & (v2 ^ 0x20) ^ v4) << ((v3 - 113) ^ 0x76)) & (v2 ^ 0x20) ^ v4))) << 10;
  v6 = STACK[0x2F4];
  v7 = (LODWORD(STACK[0x2F4]) ^ 0xA428043F) & (2 * (STACK[0x2F4] & 0x212D56BF)) ^ STACK[0x2F4] & 0x212D56BF;
  v8 = ((2 * (LODWORD(STACK[0x2F4]) ^ 0xA472296D)) ^ 0xABEFFA4) & (LODWORD(STACK[0x2F4]) ^ 0xA472296D) ^ (2 * (LODWORD(STACK[0x2F4]) ^ 0xA472296D)) & 0x55F7FD2;
  v9 = LODWORD(STACK[0x2F4]) ^ (2 * ((16 * (v7 ^ 0x55F7FD2 ^ v8 & (4 * v7))) & 0x50 ^ v7 ^ 0x55F7FD2 ^ v8 & (4 * v7) ^ ((4 * (v8 ^ 0x5410052)) & 0x55F7FD0 ^ 0x20090 ^ ((4 * (v8 ^ 0x5410052)) ^ 0x157DFF40) & (v8 ^ 0x5410052)) & ((16 * (v7 ^ 0x55F7FD2 ^ v8 & (4 * v7))) ^ 0x20)));
  *(v1 + 2361 * (((((v5 ^ 0x4BEA98C) - 85245068) ^ ((v5 ^ 0xB43C179) - 183096441) ^ ((v5 ^ 0xFFCE0F5u) - 240580085)) + 28816640) >> 10) % 0xA88) = (((v9 ^ 0xB1) + 7) ^ ((v9 ^ 0xD4) + 100) ^ ((v9 ^ 0x7E) - 54)) - 77;
  return (*(STACK[0x2F8] + 8 * (v3 ^ (4169 * (v6 == 1590864448)))))();
}

uint64_t sub_1006E33F0()
{
  v1 = STACK[0x57D8];
  STACK[0xBE30] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 18754) ^ 0x6CEC | v0)))();
}

uint64_t sub_1006E3564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 ^ 0x5D8B21BA ^ (v7 + 1569403279))))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1006E3760()
{
  v0 = STACK[0x970];
  v1 = (STACK[0x970] + 12453) | 0x4140;
  v2 = STACK[0x57D8];
  STACK[0x9A00] = *(STACK[0x57D8] + 8 * STACK[0x970]);
  return (*(v2 + 8 * (v0 ^ 0x68E8 ^ v1)))();
}

uint64_t sub_1006E37D4@<X0>(unsigned int a1@<W8>)
{
  v4 = *(STACK[0x5490] + (a1 ^ 0xDBLL));
  HIDWORD(v5) = v4 ^ 5;
  LODWORD(v5) = v4 << 24;
  v6 = 12337 * (((v5 >> 31) ^ (4 * (v5 >> 31)) & 0x28) ^ 0x1C);
  *(STACK[0x8070] + 12337 * a1 + 123690762 - (((((12337 * a1 + 123690762) >> 1) * v2) >> 32) >> 12) * v3) = *STACK[0x8070] ^ 0xB7 ^ *(STACK[0x8070] + v6 - (((1328683 * v6) >> 32) >> 2) * v3);
  return (*(STACK[0x57D8] + 8 * ((246 * (a1 != 255)) ^ v1)))();
}

uint64_t sub_1006E3890@<X0>(unint64_t a1@<X8>)
{
  STACK[0x95E8] = a1;
  LODWORD(STACK[0xB14C]) = v2;
  v3 = v2 > ((v1 + 13805) ^ (v1 + 13832));
  return (*(STACK[0x57D8] + 8 * ((v3 | (2 * v3)) ^ v1)))();
}

uint64_t sub_1006E38E0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 14697)))();
  *(v1 - 0x30BDFED8F32E6519) = 0;
  *(v1 - 0x30BDFED8F32E6511) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1006E3944@<X0>(unint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  LODWORD(STACK[0x57C0]) = a4;
  STACK[0x5790] = a3;
  LODWORD(STACK[0x57A0]) = a2;
  STACK[0x57B0] = a1;
  v5 = a5 - 13221;
  v6 = 22 * (((a5 - 19954) | 0x1588) ^ 0x1CD1);
  STACK[0xB7E8] = 0x3BAD382B94D391CALL;
  STACK[0x8070] = 0;
  v7 = a5 + 9192;
  v8 = STACK[0x57D8];
  STACK[0x8070] = (*(STACK[0x57D8] + 8 * (a5 + 9192)))(12930);
  v9 = (*(v8 + 8 * v7))(442);
  STACK[0x9698] = v9;
  v10 = STACK[0x8070];
  v11 = (*(v8 + 8 * v7))(40);
  STACK[0xB3A0] = v11;
  v12 = (*(v8 + 8 * (v5 ^ 0x588F)))(3092);
  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  STACK[0xC948] = v12;
  v16 = v13 || v12 == 0 || v11 == 0;
  LOBYTE(STACK[0xFE4B]) = v16;
  LODWORD(STACK[0x5700]) = v6;
  return (*(v8 + 8 * (((v16 ^ 1) * (v6 ^ 0x46AC)) ^ v5)))();
}

uint64_t sub_1006E3A9C@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, unsigned int a4@<W4>, uint64_t a5@<X6>, int a6@<W8>)
{
  HIDWORD(v12) = *(*(a5 + 8 * v9) + 4 * ((v6 ^ v8) ^ a4) - 12);
  LODWORD(v12) = HIDWORD(v12);
  *(a1 + 4 * v8) = v10 ^ (v12 >> 28) ^ (4 * (v12 >> 28) * (v12 >> 28)) ^ a2;
  return (*(STACK[0x57D8] + 8 * (((v7 != v11) * a3) ^ a6)))();
}

uint64_t sub_1006E3AF8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(STACK[0x4B68]) = LODWORD(STACK[0x3230]) + LODWORD(STACK[0x3218]);
  LODWORD(STACK[0x4D98]) = LODWORD(STACK[0x4E50]) | LODWORD(STACK[0x4E78]);
  LODWORD(STACK[0x4E38]) |= LODWORD(STACK[0x4B50]);
  LODWORD(STACK[0x4E28]) |= LODWORD(STACK[0x4B78]);
  LODWORD(STACK[0x4E50]) = LODWORD(STACK[0x4DE8]) | LODWORD(STACK[0x4E70]);
  LODWORD(STACK[0x4E70]) = LODWORD(STACK[0x4BA0]) | LODWORD(STACK[0x4DB0]);
  LODWORD(STACK[0x4E78]) = LODWORD(STACK[0x4B88]) | LODWORD(STACK[0x4E10]);
  LODWORD(STACK[0x4DE8]) = LODWORD(STACK[0x4B80]) | LODWORD(STACK[0x4DF8]);
  LODWORD(STACK[0x4E10]) = LODWORD(STACK[0x4B60]) | LODWORD(STACK[0x4E24]);
  LODWORD(STACK[0x4E34]) ^= 0xFEDF7FBC;
  LODWORD(STACK[0x4DF8]) = STACK[0x3214] & (LODWORD(STACK[0x4BA8]) ^ 0x339F2127);
  LODWORD(STACK[0x4B80]) = STACK[0x3200] & (LODWORD(STACK[0x321C]) ^ 0xA0670157);
  return (*(STACK[0x57D8] + 8 * a3))(a1, 5575284);
}

uint64_t sub_1006E3CD4@<X0>(int a1@<W0>, unsigned int a2@<W1>, unsigned __int8 a3@<W2>, int a4@<W5>, int a5@<W6>, int a6@<W8>)
{
  v13 = *(v9 + 1360);
  v14 = *(*(v9 + 1368) + v10 + v11 * a5 - ((((v10 + v11 * a5) * v6) >> 32) >> 6) * a6);
  v15 = v14 & 0xBA ^ 0xFFFFFF83;
  v16 = v14 ^ a1;
  v17 = *(v13 + 4 * a2) ^ 0xFFFFFFE6;
  v18 = v14 ^ (v17 - (v8 & (2 * v17)) - 75) ^ (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v16 & (2 * (v15 ^ v14 & 0xE)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ 0xF;
  if (((((a4 + 1199307325) & 0xB883FBB7 ^ 0x11) << v11) & a3) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(v13 + 4 * a2) ^ 0xFFFFFFE6;
  }

  *(v13 + 4 * v7) = v12 + v19 - ((2 * v19) & 0x1CC);
  return (*(STACK[0x57D8] + 8 * ((55 * (((v11 + 1) & 0xF8) == 0)) ^ a4)))();
}

uint64_t sub_1006E3E0C()
{
  v2 = *(v1 + 2936);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8 ^ 0x5F1AE048) - 236250891 + ((2 * (v2 & 0xFFFFFFF8)) | 0x41CA3F6F))) & 0xFFFFFFFFFFFFFFF8));
  v4 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (0xA27859EE6ED6F81FLL - ((v3 + v4) | 0xA27859EE6ED6F81FLL) + ((v3 + v4) | 0x5D87A611912907E0)) ^ 0x9F2898BBAED8BF04;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x65F254DD188DB4FCLL;
  v8 = __ROR8__(v7, 8);
  v9 = v7 ^ __ROR8__(v6, 61);
  v10 = (0xA70E2446B0570B13 - ((v8 + v9) | 0xA70E2446B0570B13) + ((v8 + v9) | 0x58F1DBB94FA8F4ECLL)) ^ 0x37019D2F2EB1E661;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0xB3EC6850C564B772) - 0x2609CBD79D4DA447) ^ 0x7844A9EDB5C44892;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x9B0B8BD3C5AD82D8) - (v15 + v14) - 0x4D85C5E9E2D6C16DLL) ^ 0x5D7E1A57E8CC767FLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xD8C7B31FCA19D9DELL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x5455012E8AB1C38FLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  LODWORD(v2) = 3903 * ((((((2 * (v22 + v21)) & 0x8C7EE6FDE620E0ACLL) - (v22 + v21) - 0x463F737EF3107057) ^ 0xD68FEC3D02EDD149) >> (8 * (v2 & 7u))) ^ *(v1 + 295)) + 4008381;
  *(*(v1 + 4000) + 40706) = *(*(v1 + 4008) + v2 - 5896 * (((1456909 * v2) >> 32) >> 1));
  v23 = *(v1 + 3984) + 22;
  *(v1 + 296) = v23;
  v24 = STACK[0x57D8];
  v25 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D68]) + 29507));
  *(v1 + 2944) = v23;
  *(v1 + 280) = v25;
  return (*(v24 + 8 * (v0 + 8890)))();
}

uint64_t sub_1006E43EC@<X0>(int a1@<W8>)
{
  v1 = a1 - 15280;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x241B)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006E44A4@<X0>(int a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, char a6@<W8>)
{
  v12 = (v9 + a1);
  v13 = (v6 + v12);
  v14 = __ROR8__((v6 + v12) & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((v14 - 0x67659A219E1678C8) | 0xBFA520633D91883BLL) - ((v14 - 0x67659A219E1678C8) | a5) + a5;
  v16 = v15 ^ 0x10E104191DDD0AA7;
  v15 ^= 0xD4322AEA12913363;
  v17 = (__ROR8__(v16, 8) + v15) ^ 0x767CBF12CE87AC7DLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xBD6CE439E669F3DFLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a4;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x9B235AC2E9737AF2) - (v23 + v22) - 0x4D91AD6174B9BD79) ^ 0x157E01AABC6EDB22;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a2;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0xA4CF151FDEEB7EA0) - (v28 + v27) + 0x2D987570108A40AFLL) ^ 0xA9F1C79446C90096;
  v30 = ((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v27, 61))) ^ a3) >> (8 * ((v6 + v12) & 7));
  v31 = *(STACK[0x57D8] + 8 * v7);
  v32 = v6 + (v12 + 1);
  v33 = __ROR8__(v32 & 0xFFFFFFFFFFFFFFF8, 8);
  *v13 = v30 ^ v8;
  v34 = (v33 - 0x67659A219E1678C8) ^ v11;
  v35 = (__ROR8__((v33 - 0x67659A219E1678C8) ^ 0xAF44247A204C829CLL, 8) + v34) ^ 0x767CBF12CE87AC7DLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__((v37 + v36 - ((2 * (v37 + v36)) & 0x8C0A8D02C3DF76CALL) - 0x39FAB97E9E10449BLL) ^ 0x7B69A2B8878648BALL, 8);
  v39 = (v37 + v36 - ((2 * (v37 + v36)) & 0x8C0A8D02C3DF76CALL) - 0x39FAB97E9E10449BLL) ^ 0x7B69A2B8878648BALL ^ __ROR8__(v36, 61);
  v40 = (v38 + v39) ^ a4;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v10;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ a2;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (v46 + v45 - ((2 * (v46 + v45)) & 0xFEBB09CD9C2BA522) - 0xA27B1931EA2D6FLL) ^ 0x7B343602985692A8;
  *v32 = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v45, 61))) ^ a3) >> (8 * (v32 & 7u))) ^ a6;
  return v31();
}

uint64_t sub_1006E48E0()
{
  v0 = (STACK[0x51B8] - 22548) | 0x89D;
  v1 = STACK[0x51B8] - 22345;
  v2 = STACK[0x57D8];
  STACK[0x9600] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x45FC ^ (52487 * ((v1 - 574723004 + v0) < 0x4832049)))))();
}

uint64_t sub_1006E4994()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x242F)))();
  return (*(v1 + 8 * (v0 - 2230)))(v2);
}

uint64_t sub_1006E4A64()
{
  v0 = STACK[0x51B8] - 17899;
  v1 = STACK[0x51B8] - 19658;
  STACK[0x6930] = STACK[0x8930] + SLODWORD(STACK[0x703C]);
  v2 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x17B8) + v1)))();
}

uint64_t sub_1006E4AEC(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  STACK[0x56C0] = v5;
  STACK[0x55C0] = a1;
  STACK[0x5570] = v6;
  v7 = *(STACK[0x57D8] + 8 * ((8123 * ((((v4 - 6374) ^ (LODWORD(STACK[0x5250]) < ((v4 ^ 0xEB) - 17))) & 1) == 0)) ^ v4));
  STACK[0x55B0] = a4;
  return v7();
}

uint64_t sub_1006E4B50()
{
  v2 = (v0 + 28238);
  v3 = *(v1 + 2392);
  v4 = STACK[0x6A78];
  v5 = *(STACK[0x57D8] + 8 * v0);
  v6 = *(STACK[0x57D8] + 8 * ((9843 * ((v0 + 572758255) > 0xF1C4D2EA)) ^ (v0 + 6991)));
  STACK[0x5958] = v5;
  return v6(0, v3, v2, v4, &STACK[0xA3F8], &STACK[0x9060], &STACK[0xB8E4], &STACK[0x5C8C]);
}

uint64_t sub_1006E4CB0()
{
  v1 = (((LODWORD(STACK[0x8B14]) + 652512232) ^ 0x705FA4F6) - 1455107890) ^ (LODWORD(STACK[0x8B14]) + 652512232) ^ (((LODWORD(STACK[0x8B14]) + 652512232) ^ 0x3B564D9E) - 498255450) ^ (((LODWORD(STACK[0x8B14]) + 652512232) ^ 0x1210DD53) + (v0 ^ 0xCB0BB44D)) ^ (((((v0 + 735534139) & 0xD428DEF6) + 2147313577) ^ (LODWORD(STACK[0x8B14]) + 652512232)) - 1494823995);
  v2 = STACK[0x60B8];
  *(STACK[0x60B8] + 384) = v1 ^ 0xF4F80B50;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 + 24346)))(v1 ^ 0x26E48BC4);
  *(v2 + 376) = v4;
  return (*(v3 + 8 * ((109 * (v4 != 0)) ^ v0)))();
}

uint64_t sub_1006E4DC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = 8 * ((v4 | ((v4 < 0x115706D2) << 32)) + 0x4CC3AA7156DAA461) - 0x661D538B418D5998;
  *(STACK[0x5790] + v7) = *(STACK[0x57A0] + v7) ^ 0x7575757575757575;
  if (a4 < v5 != v6 < 0x58E34568)
  {
    v8 = a4 < v5;
  }

  else
  {
    v8 = v6 < a4;
  }

  return (*(STACK[0x57D8] + 8 * ((28 * !v8) ^ LODWORD(STACK[0x57C0]))))();
}

uint64_t sub_1006E5B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, int8x16_t a11)
{
  *&v19 = a8 + a4 - 7;
  *(&v19 + 1) = a8 + a4 - 8;
  *&STACK[0x56E0] = v19;
  v20.i64[0] = a8 + a4 - 5;
  *&v19 = a8 + a4 - 3;
  v20.i64[1] = a8 + a4 - 6;
  v21 = v20;
  *(&v19 + 1) = a8 + a4 - 4;
  *&STACK[0x5790] = v19;
  v22.i64[0] = a8 + a4 + 1;
  v22.i64[1] = a8 + a4;
  v23.i64[0] = a8 + a4 + 3;
  v23.i64[1] = a8 + a4 + 2;
  v24.i64[0] = a8 + a4 + 5;
  v24.i64[1] = a8 + a4 + 4;
  v25 = a8 + a4 + (a7 ^ v11);
  v26.i64[0] = v25 + 8;
  v26.i64[1] = a8 + a4 + 6;
  v27 = vandq_s8(v24, *&STACK[0x4D70]);
  v28 = vandq_s8(v23, *&STACK[0x4D70]);
  v29 = vandq_s8(v26, *&STACK[0x4D70]);
  v30 = vandq_s8(v22, *&STACK[0x4D70]);
  v31 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v32 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v35 = vaddq_s64(v32, *&STACK[0x56D0]);
  v36 = vandq_s8(vsubq_s64(*&STACK[0x5780], v32), *&STACK[0x5770]);
  v37 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x5780], v33), *&STACK[0x5770]), vandq_s8(vaddq_s64(v33, *&STACK[0x56D0]), *&STACK[0x5760]));
  v38 = vorrq_s8(v36, vandq_s8(v35, *&STACK[0x5760]));
  v39 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x5780], v34), *&STACK[0x5770]), vandq_s8(vaddq_s64(v34, *&STACK[0x56D0]), *&STACK[0x5760]));
  v40 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x5780], v31), *&STACK[0x5770]), vandq_s8(vaddq_s64(v31, *&STACK[0x56D0]), *&STACK[0x5760]));
  v41 = veorq_s8(v40, *&STACK[0x5750]);
  v42 = veorq_s8(v38, *&STACK[0x5750]);
  v43 = veorq_s8(v38, *&STACK[0x5740]);
  v44 = veorq_s8(v40, *&STACK[0x5740]);
  v45 = vdupq_n_s64(v14);
  v46 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v43), v45);
  v47 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v44), v45);
  v48 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v49 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v51, v51), *&STACK[0x5730]), v51), *&STACK[0x5720]), *&STACK[0x5710]);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), *&STACK[0x5730]), v50), *&STACK[0x5720]), *&STACK[0x5710]);
  v54 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v55 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v56 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55);
  v58 = vaddq_s64(v56, v54);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v57, *&STACK[0x5700]), vorrq_s8(v57, v18)), v18), *&STACK[0x56F0]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, *&STACK[0x5700]), vorrq_s8(v58, v18)), v18), *&STACK[0x56F0]);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vdupq_n_s64(v13);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v62), v64);
  v66 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63), v64);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v69 = veorq_s8(v65, v66);
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), *&STACK[0x45C0]);
  v73 = veorq_s8(v71, *&STACK[0x45C0]);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, *&STACK[0x57C0]), vorrq_s8(v78, a11)), a11), *&STACK[0x57A0]);
  v81 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v79, *&STACK[0x57C0]), vorrq_s8(v79, a11)), a11), *&STACK[0x57A0]);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v84 = vdupq_n_s64(v17);
  v195.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), veorq_s8(v80, v81)), *&STACK[0x57B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v84)));
  v195.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83), *&STACK[0x57B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v84)));
  v85 = veorq_s8(v37, *&STACK[0x5750]);
  v86 = veorq_s8(v37, *&STACK[0x5740]);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), v45);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), *&STACK[0x5730]), v89), *&STACK[0x5720]), *&STACK[0x5710]);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v92, *&STACK[0x5700]), vorrq_s8(v92, v18)), v18), *&STACK[0x56F0]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v64);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), *&STACK[0x45C0]);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, *&STACK[0x57C0]), vorrq_s8(v99, a11)), a11), *&STACK[0x57A0]);
  v22.i64[0] = a8 + a4 - 1;
  v22.i64[1] = a8 + a4 - 2;
  v101 = vandq_s8(v22, *&STACK[0x4D70]);
  v195.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL))), *&STACK[0x57B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v84)));
  v102 = veorq_s8(v39, *&STACK[0x5750]);
  v103 = veorq_s8(v39, *&STACK[0x5740]);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v45);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), *&STACK[0x5730]), v106), *&STACK[0x5720]), *&STACK[0x5710]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, *&STACK[0x5700]), vorrq_s8(v109, v18)), v18), *&STACK[0x56F0]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v64);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), *&STACK[0x45C0]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, *&STACK[0x57C0]), vorrq_s8(v116, a11)), a11), *&STACK[0x57A0]);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v120 = vandq_s8(*&STACK[0x5790], *&STACK[0x4D70]);
  v121 = vaddq_s64(v119, v118);
  v122 = vandq_s8(v21, *&STACK[0x4D70]);
  v195.val[0] = vshlq_u64(veorq_s8(v121, *&STACK[0x57B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v84)));
  v123 = vandq_s8(*&STACK[0x56E0], *&STACK[0x4D70]);
  v124 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v128 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x5780], v127), *&STACK[0x5770]), vandq_s8(vaddq_s64(v127, *&STACK[0x56D0]), *&STACK[0x5760]));
  v129 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x5780], v126), *&STACK[0x5770]), vandq_s8(vaddq_s64(v126, *&STACK[0x56D0]), *&STACK[0x5760]));
  v130 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x5780], v125), *&STACK[0x5770]), vandq_s8(vaddq_s64(v125, *&STACK[0x56D0]), *&STACK[0x5760]));
  v131 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x5780], v124), *&STACK[0x5770]), vandq_s8(vaddq_s64(v124, *&STACK[0x56D0]), *&STACK[0x5760]));
  v132 = v15[25];
  v124.i64[0] = vqtbl4q_s8(v195, v132).u64[0];
  v133 = veorq_s8(v131, *&STACK[0x5750]);
  v195.val[0] = veorq_s8(v130, *&STACK[0x5750]);
  v134 = veorq_s8(v130, *&STACK[0x5740]);
  v135 = veorq_s8(v131, *&STACK[0x5740]);
  v195.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL), v134), v45);
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v135), v45);
  v195.val[1] = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = veorq_s8(v195.val[0], v195.val[1]);
  v195.val[1] = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL), v138);
  v195.val[0] = vaddq_s64(v195.val[1], v137);
  v195.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195.val[0], v195.val[0]), *&STACK[0x5730]), v195.val[0]), *&STACK[0x5720]), *&STACK[0x5710]);
  v195.val[1] = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v139, v139), *&STACK[0x5730]), v139), *&STACK[0x5720]), *&STACK[0x5710]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v142 = veorq_s8(v195.val[0], v195.val[1]);
  v195.val[1] = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL), v142);
  v195.val[0] = vaddq_s64(v195.val[1], v141);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v143, *&STACK[0x5700]), vorrq_s8(v143, v18)), v18), *&STACK[0x56F0]);
  v195.val[1] = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v195.val[0], *&STACK[0x5700]), vorrq_s8(v195.val[0], v18)), v18), *&STACK[0x56F0]);
  v147 = veorq_s8(v146, v145);
  v195.val[0] = veorq_s8(v144, v195.val[1]);
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v64);
  v195.val[1] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v195.val[0]), v64);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v195.val[0], 3uLL), v195.val[0], 0x3DuLL));
  v195.val[0] = veorq_s8(v148, v195.val[1]);
  v195.val[1] = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v195.val[0]);
  v152 = veorq_s8(vaddq_s64(v195.val[1], v150), *&STACK[0x45C0]);
  v153 = veorq_s8(v151, *&STACK[0x45C0]);
  v195.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v195.val[0], 3uLL), v195.val[0], 0x3DuLL));
  v195.val[0] = veorq_s8(v152, v195.val[1]);
  v195.val[1] = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v195.val[0]);
  v156 = vaddq_s64(v195.val[1], v154);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, *&STACK[0x57C0]), vorrq_s8(v155, a11)), a11), *&STACK[0x57A0]);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v156, *&STACK[0x57C0]), vorrq_s8(v156, a11)), a11), *&STACK[0x57A0]);
  v195.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v195.val[0], 3uLL), v195.val[0], 0x3DuLL))), *&STACK[0x57B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56E0], 3uLL), v84)));
  v195.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), *&STACK[0x57B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v84)));
  v159 = veorq_s8(v129, *&STACK[0x5750]);
  v160 = veorq_s8(v129, *&STACK[0x5740]);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v45);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), *&STACK[0x5730]), v163), *&STACK[0x5720]), *&STACK[0x5710]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, *&STACK[0x5700]), vorrq_s8(v166, v18)), v18), *&STACK[0x56F0]);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v64);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), *&STACK[0x45C0]);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, *&STACK[0x57C0]), vorrq_s8(v173, a11)), a11), *&STACK[0x57A0]);
  v195.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL))), *&STACK[0x57B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5790], 3uLL), v84)));
  v175 = veorq_s8(v128, *&STACK[0x5750]);
  v176 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v177 = veorq_s8(v128, *&STACK[0x5740]);
  v178 = veorq_s8(vaddq_s64(v176, v177), v45);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), *&STACK[0x5730]), v180), *&STACK[0x5720]), *&STACK[0x5710]);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v183, *&STACK[0x5700]), vorrq_s8(v183, v18)), v18), *&STACK[0x56F0]);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v64);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), *&STACK[0x45C0]);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190, *&STACK[0x57C0]), vorrq_s8(v190, a11)), a11), *&STACK[0x57A0]);
  v195.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL))), *&STACK[0x57B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v84)));
  v124.i64[1] = vqtbl4q_s8(v195, v132).u64[0];
  v192 = vrev64q_s8(*(v12 + (a7 ^ v11) + a4));
  v191.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v191.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v193 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v192, v192, 8uLL), v191), v124));
  *(v25 - 7) = vextq_s8(v193, v193, 8uLL);
  return (*(STACK[0x57D8] + 8 * (((a6 == a4) * v16) ^ a5)))(a1, a2, a3, a4 - 16);
}

uint64_t sub_1006E65B0@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 22454;
  LOWORD(STACK[0xD9B8]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x137F)))();
}

uint64_t sub_1006E6650(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(v12 + 248) + a2;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((((v11 + a1) ^ a3) - v14) & a8) + v14 - 0x5B3EC18598D49E0ALL - ((v14 - 0x5B3EC18598D49E0ALL) & a8);
  v16 = v15 ^ a4;
  v17 = v15 ^ a5;
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x9D63C3648794ABC0;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v8;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x282209998BDCA063;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xEE93EFF9FB91609BLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5DC0C52EDBDD025;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x2EAD2D51E70187D4;
  v29 = __ROR8__(v28, 8);
  v30 = __ROR8__(v27, 61);
  *v13 = ((((a6 & (2 * (v29 + (v28 ^ v30)))) - (v29 + (v28 ^ v30)) + a7) ^ v9) >> (8 * (v13 & 7u))) ^ *(STACK[0x53F8] + a2);
  return (*(STACK[0x57D8] + 8 * (((a2 == 15) * v10) ^ v11)))();
}

uint64_t sub_1006E67A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (v6)
  {
    v7 = v5 == ((a5 - 20087) | 0x44CF) + 1957058005;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  return (*(STACK[0x57D8] + 8 * ((250 * v8) ^ a5)))();
}

uint64_t sub_1006E7098()
{
  v3 = STACK[0x57D8];
  v4 = v0;
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 25950)))();
  (*(v3 + 8 * (v2 + 26048)))(STACK[0x57C0], v1, v4, v5);
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1006E7130()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  return (*(v2 + 8 * (v1 - 15196)))(v3);
}

uint64_t sub_1006E7174()
{
  LODWORD(STACK[0xA4A0]) = -769884012;
  v1 = STACK[0x90B4];
  v2 = *(STACK[0x7768] + 16);
  STACK[0x6C28] = STACK[0xC7A8];
  LODWORD(STACK[0x597C]) = v1;
  STACK[0xA448] = v2;
  LOBYTE(STACK[0xC5F3]) = 30;
  STACK[0xABB0] = &STACK[0x78D0];
  STACK[0x6CC0] = &STACK[0xA4A0];
  LODWORD(STACK[0x73F8]) = 4;
  LODWORD(STACK[0x5D74]) = 1023904259;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006E7294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x53E0]) = a8;
  v11 = LODWORD(STACK[0x53D0]) != 37;
  v12 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v13 = *v12;
  STACK[0x5450] = *STACK[0x51F0];
  STACK[0x56E0] = __ROR8__((v8 - 11381) & v12, 8);
  STACK[0x5780] = 8 * (v12 & 7);
  LODWORD(STACK[0x5790]) = v13 ^ v10;
  STACK[0x5440] = (v8 - 11381) & v12;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 37;
  return (*(STACK[0x57D8] + 8 * (v9 ^ (1002 * v11))))(a1, a2, a3, a4, a5, 669 * (v9 ^ 0x69EBu));
}

uint64_t sub_1006E73AC(uint64_t a1, uint64_t a2, int8x16_t a3, int64x2_t a4, int8x16_t a5)
{
  v19.i64[0] = a1 + v5 + 3;
  v19.i64[1] = a1 + v5 + 2;
  v20.i64[0] = a1 + v5 + 5;
  v20.i64[1] = a1 + v5 + 4;
  v21.i64[0] = a1 + v5 + 7;
  v21.i64[1] = a1 + v5 + 6;
  v22.i64[0] = a2 + v5 + (v7 ^ v17);
  v22.i64[1] = a1 + v5;
  v23 = vandq_s8(v22, v18);
  v24 = vandq_s8(v21, v18);
  v25 = vandq_s8(v20, v18);
  v26 = vandq_s8(v19, v18);
  v27 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v28 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v29 = vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL);
  v30 = vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL);
  v31 = vdupq_n_s64(v8);
  v32 = vdupq_n_s64(v12);
  v33 = vaddq_s64(v30, v32);
  v34 = vaddq_s64(v29, v32);
  v35 = vaddq_s64(v28, v32);
  v36 = vaddq_s64(v27, v32);
  v37 = vdupq_n_s64(v13);
  v38 = veorq_s8(v36, v37);
  v39 = veorq_s8(v35, v37);
  v40 = veorq_s8(v34, v37);
  v41 = veorq_s8(v33, v37);
  v42 = vdupq_n_s64(0x6B970A892F00BB58uLL);
  v43 = veorq_s8(v33, v42);
  v44 = veorq_s8(v34, v42);
  v45 = veorq_s8(v35, v42);
  v46 = veorq_s8(v36, v42);
  v47 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v45);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v44);
  v50 = vaddq_s64(v47, v43);
  v51 = vdupq_n_s64(v10);
  v52 = veorq_s8(v50, v51);
  v53 = veorq_s8(v49, v51);
  v54 = veorq_s8(v48, v51);
  v55 = vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v46), v51);
  v57 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v59 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v60 = veorq_s8(v53, v57);
  v61 = veorq_s8(v52, v55);
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v63 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v61);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v60);
  v66 = vaddq_s64(v62, v58);
  v67 = vdupq_n_s64(v14);
  v68 = veorq_s8(v66, v67);
  v69 = veorq_s8(vaddq_s64(v63, v59), v67);
  v70 = veorq_s8(v65, v67);
  v71 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v72 = veorq_s8(v64, v67);
  v73 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v74 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v76 = veorq_s8(v70, v74);
  v77 = veorq_s8(v69, v73);
  v78 = veorq_s8(v68, v71);
  v79 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v78);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v77);
  v83 = vaddq_s64(v80, v76);
  v84 = vaddq_s64(v79, v75);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v84, v84), a3), v84), a4), a5);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v83, v83), a3), v83), a4), a5);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v82, v82), a3), v82), a4), a5);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v81, v81), a3), v81), a4), a5);
  v89 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v92 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v93 = veorq_s8(v87, v91);
  v94 = veorq_s8(v86, v90);
  v95 = veorq_s8(v85, v89);
  v96 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v95);
  v100 = vdupq_n_s64(0x58EFACCBC8D7665BuLL);
  v101 = veorq_s8(vaddq_s64(v96, v92), v100);
  v102 = veorq_s8(vaddq_s64(v97, v93), v100);
  v103 = veorq_s8(vaddq_s64(v98, v94), v100);
  v104 = veorq_s8(v99, v100);
  v105 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v108 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v109 = veorq_s8(v103, v107);
  v110 = veorq_s8(v102, v106);
  v111 = veorq_s8(v101, v105);
  v112 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v111);
  v116 = vdupq_n_s64(0xF30ADCCD896F82F3);
  v117 = veorq_s8(vaddq_s64(v112, v108), v116);
  v118 = veorq_s8(vaddq_s64(v113, v109), v116);
  v119 = veorq_s8(vaddq_s64(v114, v110), v116);
  v120 = veorq_s8(v115, v116);
  v121 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v124 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v125 = veorq_s8(v119, v123);
  v126 = veorq_s8(v118, v122);
  v127 = veorq_s8(v117, v121);
  v128 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v127);
  v132 = vdupq_n_s64(v11);
  v133 = veorq_s8(vaddq_s64(v128, v124), v132);
  v134 = veorq_s8(vaddq_s64(v129, v125), v132);
  v135 = veorq_s8(vaddq_s64(v130, v126), v132);
  v136 = veorq_s8(v131, v132);
  v137 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v140 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v141 = veorq_s8(v135, v139);
  v142 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v144 = vdupq_n_s64(0x9C8651A6C7A7E5AuLL);
  v145 = veorq_s8(vaddq_s64(v142, v140), v144);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), veorq_s8(v134, v138)), v144);
  v148.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), veorq_s8(v133, v137)), v144), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), v31)));
  v148.val[1] = vshlq_u64(v146, vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), v31)));
  v148.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v143, v141), v144), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v31)));
  v148.val[3] = vshlq_u64(v145, vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v31)));
  *(a1 + v5) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v148, v16[26])), *(v6 + v5));
  return (*(STACK[0x57D8] + 8 * (((v9 == 0) * v15) ^ v7)))(a1 - 8, a2 - 8);
}

uint64_t sub_1006E7938()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((547 * (v0 ^ 0x6CA)) ^ 0x4997) + v0)))();
}

uint64_t sub_1006E7994()
{
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 864342678;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_1006E7A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(STACK[0x5790]) = v13;
  LODWORD(STACK[0x57A0]) = a5;
  v14 = LODWORD(STACK[0x5760]) < v9;
  v15 = STACK[0x5780];
  v16 = ((3 * (LODWORD(STACK[0x5780]) ^ 0x365Du)) ^ 0x1B803494619F6BC0) + v6 + ((v6 < 0xF2A5BCE) << 32);
  v17 = ((*(STACK[0x5770] + 8 * v16 + 0x23FE5B5C79B24AF0) ^ 0x94B88D90296AB79BLL) + 0x20CD1C2FA8765709) ^ ((*(STACK[0x5770] + 8 * v16 + 0x23FE5B5C79B24AF0) ^ 0xDEC4987F1AE24E74) + 0x6AB109C09BFEAEE8) ^ ((*(STACK[0x5770] + 8 * v16 + 0x23FE5B5C79B24AF0) ^ 0x53650CF62A91E0F6) - 0x18EF62B65472FF9ALL);
  v18 = v17 * v8 - 0x758AE229CAD28EFCLL;
  v19 = (v18 ^ 0x7D7764ED818C9DC1) & (2 * (v18 & 0x790776C9AA211D11)) ^ v18 & 0x790776C9AA211D11;
  v20 = ((2 * (v18 ^ 0xBF7B6C7D858CBFC1)) ^ 0x8CF835685F5B45A0) & (v18 ^ 0xBF7B6C7D858CBFC1) ^ (2 * (v18 ^ 0xBF7B6C7D858CBFC1)) & a6;
  v21 = v20 ^ 0x42040A9420A4A250;
  v22 = (v20 ^ 0x8438102009080080) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x19F06AD0BEB68B40) & v21 ^ (4 * v21) & a6;
  v24 = (v23 ^ 0x700A902EA48240) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC60C102401092090)) ^ 0x67C1AB42FADA2D00) & (v23 ^ 0xC60C102401092090) ^ (16 * (v23 ^ 0xC60C102401092090)) & a6;
  v26 = (v25 ^ 0x46400A002A882000) & (v24 << 8) ^ v24;
  v27 = (((v25 ^ 0x803C10B4052582D0) << 8) ^ 0x7C1AB42FADA2D000) & (v25 ^ 0x803C10B4052582D0) ^ ((v25 ^ 0x803C10B4052582D0) << 8) & (a6 - 208);
  v28 = v27 ^ 0x82640A90020D22D0;
  v29 = v26 ^ a6;
  v30 = v27 ^ 0x441810242DA00000;
  v31 = 0xE8AEF62122F6A420 * v17 - 0x7B56882C720C7FE2;
  v32 = v30 & (v26 << 16);
  v33 = (v31 ^ 0xCAE09A0D5BDD48D2) & (2 * (v31 & 0xEAE91C285BDE4282)) ^ v31 & 0xEAE91C285BDE4282;
  v34 = ((2 * (v31 ^ 0xF22AA5D7E4DCCD6)) ^ 0xCB976CEA4B271CA8) & (v31 ^ 0xF22AA5D7E4DCCD6) ^ (2 * (v31 ^ 0xF22AA5D7E4DCCD6)) & 0xE5CBB67525938E40;
  v35 = ((4 * (v34 ^ 0x2448921524908244)) ^ 0x972ED9D4964E3950) & (v34 ^ 0x2448921524908244) ^ (4 * (v34 ^ 0x2448921524908244)) & 0xE5CBB67525938E54;
  v36 = (v35 ^ 0x850A905404020840) & (16 * ((v34 ^ 0xC180206001030C10) & (4 * v33) ^ v33)) ^ (v34 ^ 0xC180206001030C10) & (4 * v33) ^ v33;
  v37 = ((16 * (v35 ^ 0x60C1262121918604)) ^ 0x5CBB67525938E540) & (v35 ^ 0x60C1262121918604) ^ (16 * (v35 ^ 0x60C1262121918604)) & 0xE5CBB67525938E50;
  v38 = (((v37 ^ 0xA140902524830A14) << 8) ^ 0xCBB67525938E5400) & (v37 ^ 0xA140902524830A14) ^ ((v37 ^ 0xA140902524830A14) << 8) & 0xE5CBB67525938E00;
  v39 = (v37 ^ 0x448B265001108400) & (v36 << 8) ^ v36 ^ 0xE5CBB67525938E54 ^ (v38 ^ 0xC182342501820000) & (((v37 ^ 0x448B265001108400) & (v36 << 8) ^ v36) << 16);
  v40 = v18 ^ (2 * (((v29 ^ v32) << 32) & 0x467C1AB400000000 ^ v29 ^ v32 ^ (((v29 ^ v32) << 32) ^ 0x2FADA2D000000000) & ((v28 << 16) & 0x467C1AB400000000 ^ 0x4448101000000000 ^ ((v28 << 16) ^ 0x1AB42FAD00000000) & v28)));
  v41 = __ROR8__(v7, 59);
  v42 = __ROR8__((v41 - ((2 * v41) & 0x2A563C5BF8E942B8) - 0x6AD4E1D2038B5EA4) ^ ((v40 >> 59) | 0xFFFFFFFFFFFFFFE0) & (v31 ^ (2 * ((v39 << 32) & 0x65CBB67500000000 ^ v39 ^ ((v39 << 32) ^ 0x25938E5400000000) & (((v38 ^ 0x2449825024118A54) << 16) & 0x65CBB67500000000 ^ 0x418A926400000000 ^ (((v38 ^ 0x2449825024118A54) << 16) ^ 0x3675259300000000) & (v38 ^ 0x2449825024118A54)))) ^ 0xF67CF35E04C16698) ^ ((v40 >> 59) & 0xD | 0x203A308208C48300) ^ 0x44748E9B788F2FDDLL, 5);
  v43 = v16 + 0x6672A134DB464511 + (((v42 ^ 0x71E9AF6028F20AF1) + 0x2A47492ABCCED5EDLL) ^ ((v42 ^ 0xFCEE7024950DFB50) - 0x58BF6991FECEDBB2) ^ ((v42 ^ 0x7E6CDE3CB93FC808) + 0x25C238762D031716));
  v44 = ((2 * (v43 ^ 0xB181A1270C6C99D9)) ^ 0xC98DC4465D3F0882) & (v43 ^ 0xB181A1270C6C99D9) ^ (2 * (v43 ^ 0xB181A1270C6C99D9)) & 0x64C6E2232E9F8440;
  v45 = (v43 ^ 0x9107232708EA99D9) & (2 * (v43 & 0xD547430422F31D98)) ^ v43 & 0xD547430422F31D98;
  v46 = ((4 * (v44 ^ 0x2442222122808441)) ^ 0x931B888CBA7E1104) & (v44 ^ 0x2442222122808441) ^ (4 * (v44 ^ 0x2442222122808441)) & 0x64C6E2232E9F8440;
  v47 = (v44 ^ 0x400400000C1C0000) & (4 * v45) ^ v45;
  v48 = ((16 * (v46 ^ 0x64C4622304818441)) ^ 0x4C6E2232E9F84410) & (v46 ^ 0x64C4622304818441) ^ (16 * (v46 ^ 0x64C4622304818441)) & 0x64C6E2232E9F8440;
  v49 = (v48 ^ 0x4446222228980400) & (((v46 ^ 0x280002A1E0000) & (16 * v47) ^ v47) << 8) ^ (v46 ^ 0x280002A1E0000) & (16 * v47) ^ v47;
  v50 = (((v48 ^ 0x2080C00106078041) << 8) ^ 0xC6E2232E9F844100) & (v48 ^ 0x2080C00106078041) ^ ((v48 ^ 0x2080C00106078041) << 8) & 0x64C6E2232E9F8400;
  v51 = v49 ^ 0x64C6E2232E9F8441 ^ (v50 ^ 0x44C222220E840000) & (v49 << 16);
  v52 = (v43 ^ (2 * ((v51 << 32) & 0x64C6E22300000000 ^ v51 ^ ((v51 << 32) ^ 0x2E9F844100000000) & (((v50 ^ 0x2004C001201B8441) << 16) & 0x64C6E22300000000 ^ 0x4C4C02000000000 ^ (((v50 ^ 0x2004C001201B8441) << 16) ^ 0x62232E9F00000000) & (v50 ^ 0x2004C001201B8441))))) >> 32;
  v53 = v43 - 0x7734493A87400008 + (((v52 ^ 0xFD48D630DEE2852BLL) + 0x60D32F28BFF54A07) ^ ((v52 ^ 0x2B57B71C3343C5E6) - 0x4933B1FBADABF534) ^ ((v52 ^ 0xD61F612CB866C78DLL) + 0x4B849834D97108A1));
  v54 = (v53 ^ 0x2C9F43B6646A802BLL) & (2 * (v53 & 0xAEDF93267562D532)) ^ v53 & 0xAEDF93267562D532;
  v55 = ((2 * (v53 ^ 0x2DA445BE262B8A4FLL)) ^ 0x6F7AD30A692BEFALL) & (v53 ^ 0x2DA445BE262B8A4FLL) ^ (2 * (v53 ^ 0x2DA445BE262B8A4FLL)) & v10;
  v56 = v55 ^ 0x8108528851494105;
  v57 = (v55 ^ 0x272841002001C58) & (4 * v54) ^ v54;
  v58 = ((4 * v56) ^ 0xDEF5A614D257DF4) & v56 ^ (4 * v56) & v10;
  v59 = ((16 * (v58 ^ 0x8210849812480209)) ^ 0x37BD69853495F7D0) & (v58 ^ 0x8210849812480209) ^ (16 * (v58 ^ 0x8210849812480209)) & (v10 - 12);
  v60 = (v59 ^ 0x339408010015700) & (((v58 ^ 0x16B520041015D60) & (16 * v57) ^ v57) << 8) ^ (v58 ^ 0x16B520041015D60) & (16 * v57) ^ v57;
  v61 = (((v59 ^ 0x804296184348082DLL) << 8) ^ 0x7BD69853495F7D00) & (v59 ^ 0x804296184348082DLL) ^ ((v59 ^ 0x804296184348082DLL) << 8) & (v10 - 124);
  v62 = v60 ^ (v10 + 1) ^ (v61 ^ 0x352901041490000) & (v60 << 16);
  v63 = v53 ^ (2 * ((v62 << 32) & 0x37BD69800000000 ^ v62 ^ ((v62 << 32) ^ 0x53495F7D00000000) & (((v61 ^ 0x802946881200027DLL) << 16) & 0x37BD69800000000 ^ 0x163849000000000 ^ (((v61 ^ 0x802946881200027DLL) << 16) ^ 0x5698534900000000) & (v61 ^ 0x802946881200027DLL))));
  v64 = v53 - 0x223767F7349B565 + ((((v63 >> 16) ^ 0x1A112D8845A38E4DLL) - 0x5DD13404D0704B68) ^ (((v63 >> 16) ^ 0xC02D28F0CF88C1E5) + 0x7812CE83A5A4FB40) ^ (((v63 >> 16) ^ 0xDA3CABC2180D9C58) + 0x62034DB17221A683));
  v65 = (v64 ^ 0xF8F3E8DBF08D0C68) & (2 * (v64 & 0xF8C3C0DBF0A1A16CLL)) ^ v64 & 0xF8C3C0DBF0A1A16CLL;
  v66 = ((2 * (v64 ^ 0x997169DB308C4E78)) ^ 0xC3655201805BDE28) & (v64 ^ 0x997169DB308C4E78) ^ (2 * (v64 ^ 0x997169DB308C4E78)) & 0x61B2A900C02DEF14;
  v67 = v66 ^ 0x2092A90040242114;
  v68 = (v66 ^ 0x4100000080098E00) & (4 * v65) ^ v65;
  v69 = ((4 * v67) ^ 0x86CAA40300B7BC50) & v67 ^ (4 * v67) & 0x61B2A900C02DEF14;
  v70 = ((16 * (v69 ^ 0x61300900C0084304)) ^ 0x1B2A900C02DEF140) & (v69 ^ 0x61300900C0084304) ^ (16 * (v69 ^ 0x61300900C0084304)) & 0x61B2A900C02DEF10;
  v71 = (v70 ^ 0x1228000000CE100) & (((v69 ^ 0x82A0000025AC00) & (16 * v68) ^ v68) << 8) ^ (v69 ^ 0x82A0000025AC00) & (16 * v68) ^ v68;
  v72 = (((v70 ^ 0x60902900C0210E14) << 8) ^ 0xB2A900C02DEF1400) & (v70 ^ 0x60902900C0210E14) ^ ((v70 ^ 0x60902900C0210E14) << 8) & 0x61B2A900C02DEF00;
  v73 = v71 ^ 0x61B2A900C02DEF14 ^ (v72 ^ 0x20A00000002D0000) & (v71 << 16);
  v74 = (v64 ^ (2 * ((v73 << 32) & 0x61B2A90000000000 ^ v73 ^ ((v73 << 32) ^ 0x402DEF1400000000) & (((v72 ^ 0x4112A900C000EB14) << 16) & 0x61B2A90000000000 ^ 0x40B2290000000000 ^ (((v72 ^ 0x4112A900C000EB14) << 16) ^ 0x2900C02D00000000) & (v72 ^ 0x4112A900C000EB14))))) >> 8;
  v75 = v40 ^ 0x9951431CEE36DECALL;
  v76 = v64 - (((v74 ^ 0xBBC0B39258830E9ALL) - 0x4886D234981E2560) ^ ((v74 ^ 0x541F99970BDC1977) + 0x58A607CE34BECD73) ^ ((v74 ^ 0xEF64CDC5892FED92) - 0x1C22AC6349B2C668)) + 0x6972102DED47C31ELL;
  v77 = ((v76 ^ 0xC2E50C03BE69EB85) + 0x59B126445605E74ELL) ^ v76 ^ ((v76 ^ 0xF1995C8C158C497ALL) + 0x6ACD76CBFDE045B3) ^ ((v76 ^ 0xEC287ED0C98DE23BLL) + 0x777C549721E1EEF4) ^ ((v76 ^ 0xBBFFFBE775FBB3F3) + 0x20ABD1A09D97BF3CLL);
  v78 = (((v77 ^ 0x70F0FA2AFD1E990ELL) - 0x7E411A8F5E0FD1AALL) ^ ((v77 ^ 0x1ECBFED9DB65597BLL) - 0x107A1E7C787411DFLL) ^ ((v77 ^ 0xA90D14B31E83342) - 0x42131EE92F97BE6)) - 0x71025DD6756AEA6DLL;
  v79 = ((v78 ^ 0xD14EA1C93C7ED39CLL) + 0x26A3B7ADC844E9E2) ^ v78 ^ ((v78 ^ 0xD239C0CC7090C852) + 0x25D4D6A884AAF230) ^ ((v78 ^ 0xFCD25764318621CBLL) + 0xB3F4100C5BC1BB7) ^ ((v78 ^ 0xF7B7DFFA76ADFF87) + 0x5AC99E8297C5FBLL);
  v80 = v16 + 0x57BC38ACD1F850DDLL + (((v79 ^ v75 ^ 0xC0E35B2CFB9EC88FLL) + 0x15690C79A7AE0262) ^ ((v79 ^ v75 ^ 0x821BB608584FBDCELL) + 0x5791E15D047F7721) ^ ((v79 ^ v75 ^ 0x2A1C0122B35836B8) - 0x69A988109703A9));
  v81 = (v80 ^ 0xAE4686636E746E6CLL) & (2 * (v80 & 0xCF54D76B70846F69)) ^ v80 & 0xCF54D76B70846F69;
  v82 = ((2 * (v80 ^ 0x3A4682652E74B26ELL)) ^ 0xEA24AA1CBDE1BA0ELL) & (v80 ^ 0x3A4682652E74B26ELL) ^ (2 * (v80 ^ 0x3A4682652E74B26ELL)) & 0xF512550E5EF0DD06;
  v83 = v82 ^ 0x1512550242104501;
  v84 = (v82 ^ 0x6000000C04209804) & (4 * v81) ^ v81;
  v85 = ((4 * v83) ^ 0xD44954397BC3741CLL) & v83 ^ (4 * v83) & 0xF512550E5EF0DD04;
  v86 = (v85 ^ 0xD40054085AC05400) & (16 * v84) ^ v84;
  v87 = ((16 * (v85 ^ 0x2112010604308903)) ^ 0x512550E5EF0DD070) & (v85 ^ 0x2112010604308903) ^ (16 * (v85 ^ 0x2112010604308903)) & 0xF512550E5EF0DD00;
  v88 = (v87 ^ 0x510050044E00D000) & (v86 << 8) ^ v86;
  v89 = (((v87 ^ 0xA412050A10F00D07) << 8) ^ 0x12550E5EF0DD0700) & (v87 ^ 0xA412050A10F00D07) ^ ((v87 ^ 0xA412050A10F00D07) << 8) & 0xF512550E5EF0DD00;
  v90 = (v80 ^ (2 * (((v88 ^ 0xF512550E5EF0DD07 ^ (v89 ^ 0x1010040E50D00000) & (v88 << 16)) << 32) & 0x7512550E00000000 ^ v88 ^ 0xF512550E5EF0DD07 ^ (v89 ^ 0x1010040E50D00000) & (v88 << 16) ^ (((v88 ^ 0xF512550E5EF0DD07 ^ (v89 ^ 0x1010040E50D00000) & (v88 << 16)) << 32) ^ 0x5EF0DD0700000000) & (((v89 ^ 0xE50251000E20D807) << 16) & 0x7512550E00000000 ^ 0x2010010E00000000 ^ (((v89 ^ 0xE50251000E20D807) << 16) ^ 0x550E5EF000000000) & (v89 ^ 0xE50251000E20D807))))) >> 32;
  v91 = v80 - 0x5680833347AEE47 + (((v90 ^ 0x84135D601C87D9FDLL) + 0x5B35B3F1275DC753) ^ ((v90 ^ 0xDC9AB77434A767DDLL) + 0x3BC59E50F7D7973) ^ ((v90 ^ 0x5889EA14A570695BLL) - 0x7850FB7A6155880BLL));
  v92 = (((v91 ^ 0xD1DC609FE771CE0ALL) + 0x2449919309055DD1) ^ v91 ^ ((v91 ^ 0xB28D633580068CD9) + 0x471892396E721F04) ^ ((v91 ^ 0x57D452A6DBCBF408) - 0x5DBE5C55CA40982CLL) ^ ((v91 ^ 0x3EEF5FFFAD37DAFELL) - 0x3485510CBCBCB6DALL)) >> 16;
  v93 = v91 - 0x2936ED5D2628500 + (((v92 ^ 0xC222B27F8561379CLL) - 0xCCEF510E4E338A7) ^ ((v92 ^ 0xE0047C788DCF3A9ALL) - 0x2EE83B17EC4D35A1) ^ ((v92 ^ 0x2226C46D065D1C8DLL) + 0x13357CFD9820EC4ALL));
  v94 = ((2 * (v93 ^ 0x5D585A37F0BB18A4)) ^ 0x349BEDBF81E65E5ELL) & (v93 ^ 0x5D585A37F0BB18A4) ^ (2 * (v93 ^ 0x5D585A37F0BB18A4)) & (v11 + 46);
  v95 = (v93 ^ 0xD7510AE7B02B37A2) & (2 * (v93 & 0xC715ACE83048378BLL)) ^ v93 & 0xC715ACE83048378BLL;
  v96 = ((4 * (v94 ^ 0x8A44124040112121)) ^ 0x6937DB7F03CCBCBCLL) & (v94 ^ 0x8A44124040112121) ^ (4 * (v94 ^ 0x8A44124040112121)) & (v11 + 44);
  v97 = (v94 ^ 0x1009E48180600E0CLL) & (4 * v95) ^ v95;
  v98 = ((16 * (v96 ^ 0x92482480C0330303)) ^ 0xA4DF6DFC0F32F2F0) & (v96 ^ 0x92482480C0330303) ^ (16 * (v96 ^ 0x92482480C0330303)) & (v11 + 32);
  v99 = (v98 ^ 0x804D64DC00322200) & (((v96 ^ 0x805D25F00C02C20) & (16 * v97) ^ v97) << 8) ^ (v96 ^ 0x805D25F00C02C20) & (16 * v97) ^ v97;
  v100 = (((v98 ^ 0x1A009203C0C10D0FLL) << 8) ^ 0x4DF6DFC0F32F2F00) & (v98 ^ 0x1A009203C0C10D0FLL) ^ ((v98 ^ 0x1A009203C0C10D0FLL) << 8) & v11;
  v101 = v99 ^ (v11 + 47) ^ (v100 ^ 0x844D6C0C0230000) & (v99 << 16);
  v102 = (v93 ^ (2 * ((v101 << 32) & 0x1A4DF6DF00000000 ^ v101 ^ ((v101 << 32) ^ 0x40F32F2F00000000) & (((v100 ^ 0x9209201F00D0002FLL) << 16) & 0x1A4DF6DF00000000 ^ 0x800360C00000000 ^ (((v100 ^ 0x9209201F00D0002FLL) << 16) ^ 0x76DFC0F300000000) & (v100 ^ 0x9209201F00D0002FLL))))) >> 8;
  v103 = v93 - (((v102 ^ 0xE882302BF8B0479ELL) - 0x142B85894B224115) ^ ((v102 ^ 0x3A69915A442493CELL) + 0x393FDB0708496ABBLL) ^ ((v102 ^ 0xD218AD7CF5257A39) - 0x2EB118DE46B77CB2)) - 0xB4A868D4743B561;
  v104 = (v103 ^ 0xD4717DC178646509) & (2 * (v103 & 0xD60579C57D68440ALL)) ^ v103 & 0xD60579C57D68440ALL;
  v105 = ((2 * (v103 ^ 0x74718F4BE264ED1DLL)) ^ 0x44E9ED1D3E19522ELL) & (v103 ^ 0x74718F4BE264ED1DLL) ^ (2 * (v103 ^ 0x74718F4BE264ED1DLL)) & (a4 + 22);
  v106 = v105 ^ 0xA21412828104A911;
  v107 = (v105 ^ 0x20E40C1E000000) & (4 * v104) ^ v104;
  v108 = ((4 * v106) ^ 0x89D3DA3A7C32A45CLL) & v106 ^ (4 * v106) & (a4 + 20);
  v109 = ((16 * (v108 ^ 0x22242484830C0903)) ^ 0x274F68E9F0CA9170) & (v108 ^ 0x22242484830C0903) ^ (16 * (v108 ^ 0x22242484830C0903)) & (a4 + 16);
  v110 = (v109 ^ 0x2244608890088100) & (((v108 ^ 0x8050D20A1C00A000) & (16 * v107) ^ v107) << 8) ^ (v108 ^ 0x8050D20A1C00A000) & (16 * v107) ^ v107;
  v111 = (((v109 ^ 0x803096060F042807) << 8) ^ 0x74F68E9F0CA91700) & (v109 ^ 0x803096060F042807) ^ ((v109 ^ 0x803096060F042807) << 8) & a4;
  v112 = v110 ^ (a4 + 23) ^ (v111 ^ 0x2074868E0C080000) & (v110 << 16);
  v113 = v103 ^ (2 * ((v112 << 32) & 0x2274F68E00000000 ^ v112 ^ ((v112 << 32) ^ 0x1F0CA91700000000) & (((v111 ^ 0x820070009304A817) << 16) & 0x2274F68E00000000 ^ 0x70608200000000 ^ (((v111 ^ 0x820070009304A817) << 16) ^ 0x768E9F0C00000000) & (v111 ^ 0x820070009304A817))));
  v114 = (((v113 ^ 0x6D971224CCDCB00ELL) + 0x6050456ACEF32FABLL) ^ ((v113 ^ 0x64CA46DC59A53C0ELL) + 0x690D11925B8AA3ABLL) ^ ((v113 ^ 0x9FB8802CD6089A24) - 0x6D80289D2BD8FA7FLL)) - 0x8E1DEE5CFA5635BLL;
  v115 = ((2 * (v114 ^ 0xF0D798EAF5097089)) ^ 0xF4B08CAD5B343DA2) & (v114 ^ 0xF0D798EAF5097089) ^ (2 * (v114 ^ 0xF0D798EAF5097089)) & v12;
  v116 = (v114 ^ 0xE0CF9CBA540B6C19) & (2 * (v114 & 0x8A8FDEBC58936E58)) ^ v114 & 0x8A8FDEBC58936E58;
  v117 = ((4 * (v115 ^ 0xA484252A48A0251)) ^ 0xE961195AB6687B44) & (v115 ^ 0xA484252A48A0251) ^ (4 * (v115 ^ 0xA484252A48A0251)) & v12;
  v118 = (v115 ^ 0x7010040000101880) & (4 * v116) ^ v116;
  v119 = ((16 * (v117 ^ 0x1218460409920491)) ^ 0xA584656AD9A1ED10) & (v117 ^ 0x1218460409920491) ^ (16 * (v117 ^ 0x1218460409920491)) & v12;
  v120 = (v119 ^ 0x2000444289800C00) & (((v117 ^ 0x68400052A4081A40) & (16 * v118) ^ v118) << 8) ^ (v117 ^ 0x68400052A4081A40) & (16 * v118) ^ v118;
  v121 = (((v119 ^ 0x5A580214241A12C1) << 8) ^ 0x584656AD9A1ED100) & (v119 ^ 0x5A580214241A12C1) ^ ((v119 ^ 0x5A580214241A12C1) << 8) & (v12 - 208);
  v122 = v120 ^ (v12 + 1) ^ (v121 ^ 0x58404604881A0000) & (v120 << 16);
  v123 = v114 ^ (2 * ((v122 << 32) & 0x7A58465600000000 ^ v122 ^ ((v122 << 32) ^ 0x2D9A1ED100000000) & (((v121 ^ 0x2218005225800ED1) << 16) & 0x7A58465600000000 ^ 0x3808424400000000 ^ (((v121 ^ 0x2218005225800ED1) << 16) ^ 0x4656AD9A00000000) & (v121 ^ 0x2218005225800ED1))));
  v124 = v16 + 0x417F384D80D12DCELL + (((v123 ^ v75 ^ 0xD2B2F91FC172CE31) + 0x4B8F7EC4402AB7B6) ^ ((v123 ^ v75 ^ 0x1DA16D6B2ABE4A19) - 0x7B63154F5419CC62) ^ ((v123 ^ v75 ^ 0x81EACF58F32751A9) + 0x18D74883727F282ELL));
  v125 = (((v124 ^ 0xA647B63A6DA0AED4) + 0x6D7C001C1911C15ELL) ^ v124 ^ ((v124 ^ 0x6EE43AEF00A887BBLL) - 0x5A2073368BE617CDLL) ^ ((v124 ^ 0xE39B7EF198BA42C0) + 0x28A0C8D7EC0B2D60) ^ ((v124 ^ 0x1FFCBBFD7EFCFBCFLL) - 0x2B38F224F5B26BB9)) >> 32;
  v126 = v124 + 0x687AC215A235BDBBLL + (((v125 ^ 0x6E8C42A6887C2711) - 0x48D990EDCEFE2824) ^ ((v125 ^ 0x8DBDB9D7C0647818) + 0x54179463791988D3) ^ ((v125 ^ 0xE331FB717CDC16D0) + 0x3A9BD6C5C5A1E61BLL));
  v127 = (((v126 ^ 0x7DFB107B24DB8EE3) - 0xB1229D89FE589A6) ^ v126 ^ ((v126 ^ 0xECE1FD82995722DELL) + 0x65F73BDEDD96DA65) ^ ((v126 ^ 0x798F23A7D9DC5CF6) - 0xF661A0462E25BB2) ^ ((v126 ^ 0x9E7CF7FDDF6EF78ELL) + 0x176A31A19BAF0F36)) >> 16;
  v128 = v126 - 0x36642983C141AD7BLL + (((v127 ^ 0x54FB632BF7AEB686) - 0x4CFCAC5A3285B5ACLL) ^ ((v127 ^ 0xC1DBAE5B374B616) - 0x141A7594765FB53CLL) ^ ((v127 ^ 0x58E6AF277D79BBAELL) - 0x40E16056B852B884));
  v129 = ((2 * (v128 ^ 0xEE98A947E94FE176)) ^ 0x7234007DD7877E78) & (v128 ^ 0xEE98A947E94FE176) ^ (2 * (v128 ^ 0xEE98A947E94FE176)) & 0x391A003EEBC3BF3CLL;
  v130 = (v128 ^ 0xC798A975E84F5D62) & (2 * (v128 & 0xD782A979028C5E4ALL)) ^ v128 & 0xD782A979028C5E4ALL;
  v131 = ((4 * (v129 ^ 0x90A000228408104)) ^ 0xE46800FBAF0EFCF0) & (v129 ^ 0x90A000228408104) ^ (4 * (v129 ^ 0x90A000228408104)) & 0x391A003EEBC3BF3CLL;
  v132 = (v129 ^ 0x3010002C02033A38) & (4 * v130) ^ v130;
  v133 = (v131 ^ 0x2008003AAB02BC20) & (16 * v132);
  v134 = ((16 * (v131 ^ 0x1912000440C1030CLL)) ^ 0x91A003EEBC3BF3C0) & (v131 ^ 0x1912000440C1030CLL) ^ (16 * (v131 ^ 0x1912000440C1030CLL)) & 0x391A003EEBC3BF30;
  v135 = (v134 ^ 0x1100002EA803B300) & ((v133 ^ v132) << 8) ^ v133 ^ v132;
  v136 = (((v134 ^ 0x281A001043C00C3CLL) << 8) ^ 0x1A003EEBC3BF3C00) & (v134 ^ 0x281A001043C00C3CLL) ^ ((v134 ^ 0x281A001043C00C3CLL) << 8) & 0x391A003EEBC3BF00;
  v137 = v135 ^ 0x391A003EEBC3BF3CLL ^ (v136 ^ 0x1800002AC3830000) & (v135 << 16);
  v138 = v128 ^ (2 * ((v137 << 32) & 0x391A003E00000000 ^ v137 ^ ((v137 << 32) ^ 0x6BC3BF3C00000000) & (((v136 ^ 0x211A00142840833CLL) << 16) & 0x391A003E00000000 ^ 0x3900003C00000000 ^ (((v136 ^ 0x211A00142840833CLL) << 16) ^ 0x3EEBC300000000) & (v136 ^ 0x211A00142840833CLL))));
  v139 = v128 - ((((v138 >> 8) ^ 0x58EDAD5575A6DC2ALL) - 0xC7FA16D03926151) ^ (((v138 >> 8) ^ 0xB5F5F1A4C84C98A5) + 0x1E9802634187DA22) ^ (((v138 >> 8) ^ 0xEDEFEE58C13F4FAFLL) + 0x46821D9F48F40D2CLL)) - 0x355C456468ECB1AFLL;
  v140 = (v139 ^ 0xFF6FF6B6) - 1611092180;
  v141 = ((v139 ^ 0x12BC2F5E) + 1915451076) ^ v139 ^ ((v139 ^ 0x2EAA1E47) + 1312638939) ^ ((v139 ^ 0x5C1161CD) + 1015429201);
  if (v14 == v6 + 448647153 < 0x29E82BBE)
  {
    v14 = v6 + 448647153 < LODWORD(STACK[0x5760]);
  }

  LODWORD(STACK[0x57C0]) ^= v77 ^ v113 ^ 0xCB8A4371 ^ v141 ^ v140;
  return (*(STACK[0x57D8] + 8 * ((19 * v14) ^ v15)))();
}

uint64_t sub_1006EA0B0@<X0>(int a1@<W1>, unint64_t a2@<X6>, unint64_t a3@<X8>)
{
  v3 = STACK[0x51B8];
  v4 = STACK[0x51B8] - 8705;
  STACK[0xC138] = a3;
  STACK[0x6178] = a2;
  return (*(STACK[0x57D8] + 8 * (((a1 == 1911920836) * (v3 ^ 0x58D8)) ^ v4)))();
}

uint64_t sub_1006EA100()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0xB260] = 0;
  return (*(v1 + 8 * (v0 - 18093)))(v2);
}

uint64_t sub_1006EA280()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x1E07)))(1280);
  STACK[0x7AA0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 620458564) ^ 0x24FB191B) + ((v0 - 620458564) & 0x24FB197E))) ^ v0)))();
}

uint64_t sub_1006EA2F8@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * ((((501 * (v1 ^ 0x75FD)) ^ 0x5BC1) * v4) ^ v1)))();
}

uint64_t sub_1006EA344()
{
  v0 = ((STACK[0x1810] + 2253) ^ 0xB7A) + LODWORD(STACK[0x6890]);
  LODWORD(STACK[0x9FFC]) = v0;
  return (*(STACK[0x57D8] + 8 * ((416 * (v0 == LODWORD(STACK[0x9484]))) ^ LODWORD(STACK[0x17F0]))))();
}

uint64_t sub_1006EA3E0()
{
  v0 = STACK[0x26F0];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x26F0]) ^ 0xE98D8FCA)))();
  STACK[0x7AC0] = 0;
  return (*(v1 + 8 * ((8537 * (v0 < 0x1EB450C8)) ^ (v0 + 376581034))))(v2);
}

uint64_t sub_1006EA454()
{
  LODWORD(STACK[0x99B8]) = -769884012;
  LODWORD(STACK[0x76A0]) = -769884012;
  STACK[0x5B40] = 0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x99B8];
  LODWORD(STACK[0x9094]) = -32197475;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006EA764()
{
  LODWORD(STACK[0xB6FC]) = v1;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -1975211664;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_1006EA7C0()
{
  v1 = STACK[0x9808];
  v2 = *(STACK[0x9808] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDC20]) = v2 + 8;
  v3 = *(v1 - 0x1883660EE814440ELL) - 1063497315;
  v2 -= 1063497307;
  v4 = v2 < ((v0 - 10806) | 0x814u) + 1038446019;
  v5 = v3 < v2;
  if (v4 != v3 < 0x3DE5C619)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x8898] == 0) | v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDC24]) = v8;
  return (*(STACK[0x57D8] + 8 * ((245 * ((v7 & 1) == 0)) ^ v0)))();
}

uint64_t sub_1006EA914(uint64_t a1, int a2, uint64_t a3)
{
  v11.i64[0] = v4 + v3 - 7;
  v11.i64[1] = v4 + v3 + (a2 ^ v8 ^ v6);
  *&STACK[0x5760] = v11;
  v12.i64[0] = v4 + v3 - 1;
  v12.i64[1] = v4 + v3 - 2;
  v13.i64[0] = v4 + v3 - 3;
  v13.i64[1] = v4 + v3 - 4;
  v14.i64[0] = v4 + v3 - 5;
  v14.i64[1] = v4 + v3 - 6;
  v15 = vandq_s8(v14, *&STACK[0x4D70]);
  v16 = vandq_s8(v13, *&STACK[0x4D70]);
  v17 = vandq_s8(v12, *&STACK[0x4D70]);
  v18 = vandq_s8(v11, *&STACK[0x4D70]);
  v19 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v20 = vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL);
  v21 = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v22 = vsraq_n_u64(vshlq_n_s64(v15, 0x38uLL), v15, 8uLL);
  v23 = vbslq_s8(*&STACK[0x5770], vsubq_s64(*&STACK[0x5780], v19), vaddq_s64(v19, *&STACK[0x46B0]));
  v24 = vbslq_s8(*&STACK[0x5770], vsubq_s64(*&STACK[0x5780], v20), vaddq_s64(v20, *&STACK[0x46B0]));
  v25 = vbslq_s8(*&STACK[0x5770], vsubq_s64(*&STACK[0x5780], v21), vaddq_s64(v21, *&STACK[0x46B0]));
  v26 = vbslq_s8(*&STACK[0x5770], vsubq_s64(*&STACK[0x5780], v22), vaddq_s64(v22, *&STACK[0x46B0]));
  v27 = veorq_s8(v26, *&STACK[0x56D0]);
  v28 = veorq_s8(v25, *&STACK[0x56D0]);
  v29 = veorq_s8(v25, *&STACK[0x5720]);
  v30 = veorq_s8(v26, *&STACK[0x5720]);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL), v30);
  v32 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), v29);
  v33 = veorq_s8(vaddq_s64(vsubq_s64(v32, vandq_s8(vaddq_s64(v32, v32), *&STACK[0x5710])), *&STACK[0x5700]), *&STACK[0x5670]);
  v34 = vsraq_n_u64(vshlq_n_s64(v29, 3uLL), v29, 0x3DuLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v30, 3uLL), v30, 0x3DuLL);
  v36 = veorq_s8(vaddq_s64(vsubq_s64(v31, vandq_s8(vaddq_s64(v31, v31), *&STACK[0x5710])), *&STACK[0x5700]), *&STACK[0x5670]);
  v37 = veorq_s8(v36, v35);
  v38 = veorq_s8(v33, v34);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), v38);
  v41 = vaddq_s64(v39, v37);
  v42 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v41, v41), *&STACK[0x5660]), v41), *&STACK[0x5650]), *&STACK[0x5640]);
  v43 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v40, v40), *&STACK[0x5660]), v40), *&STACK[0x5650]), *&STACK[0x5640]);
  v44 = vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL);
  v45 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v46 = veorq_s8(v42, v44);
  v47 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v46);
  v49 = vaddq_s64(v47, v45);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v48, *&STACK[0x5630]), vorrq_s8(v48, *&STACK[0x5740])), *&STACK[0x5740]), *&STACK[0x5620]);
  v51 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v49, *&STACK[0x5630]), vorrq_s8(v49, *&STACK[0x5740])), *&STACK[0x5740]), *&STACK[0x5620]);
  v53 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v54 = veorq_s8(v50, v51);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, *&STACK[0x5610]), vorrq_s8(v55, *&STACK[0x5730])), *&STACK[0x5730]), *&STACK[0x5600]);
  v58 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, *&STACK[0x5610]), vorrq_s8(v56, *&STACK[0x5730])), *&STACK[0x5730]), *&STACK[0x5600]);
  v61 = veorq_s8(v60, v59);
  v62 = veorq_s8(v57, v58);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v62);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v61);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), *&STACK[0x56F0])), *&STACK[0x56E0]), *&STACK[0x5790]);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), *&STACK[0x56F0])), *&STACK[0x56E0]), *&STACK[0x5790]);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = vdupq_n_s64(0x2EAD2D51E70187D4uLL);
  v73 = veorq_s8(vaddq_s64(v70, v68), v72);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v71, v72);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = veorq_s8(v73, v74);
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vdupq_n_s64(v10);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v81 = vaddq_s64(v78, v76);
  v123.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), *&STACK[0x57C0]), v80), *&STACK[0x57B0]), *&STACK[0x57A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v79)));
  v123.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v81, v81), *&STACK[0x57C0]), v81), *&STACK[0x57B0]), *&STACK[0x57A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v79)));
  v82 = veorq_s8(v24, *&STACK[0x56D0]);
  v83 = veorq_s8(v24, *&STACK[0x5720]);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(v84, vandq_s8(vaddq_s64(v84, v84), *&STACK[0x5710])), *&STACK[0x5700]), *&STACK[0x5670]);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v87, v87), *&STACK[0x5660]), v87), *&STACK[0x5650]), *&STACK[0x5640]);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v90, *&STACK[0x5630]), vorrq_s8(v90, *&STACK[0x5740])), *&STACK[0x5740]), *&STACK[0x5620]);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v93, *&STACK[0x5610]), vorrq_s8(v93, *&STACK[0x5730])), *&STACK[0x5730]), *&STACK[0x5600]);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), *&STACK[0x56F0])), *&STACK[0x56E0]), *&STACK[0x5790]);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v72);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL)));
  v123.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), *&STACK[0x57C0]), v100), *&STACK[0x57B0]), *&STACK[0x57A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), v79)));
  v101 = veorq_s8(v23, *&STACK[0x56D0]);
  v102 = veorq_s8(v23, *&STACK[0x5720]);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), *&STACK[0x5710])), *&STACK[0x5700]), *&STACK[0x5670]);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), *&STACK[0x5660]), v106), *&STACK[0x5650]), *&STACK[0x5640]);
  v108 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v110 = veorq_s8(v107, v108);
  v111 = vaddq_s64(v109, v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, *&STACK[0x5630]), vorrq_s8(v111, *&STACK[0x5740])), *&STACK[0x5740]), *&STACK[0x5620]);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, *&STACK[0x5610]), vorrq_s8(v114, *&STACK[0x5730])), *&STACK[0x5730]), *&STACK[0x5600]);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(v117, vandq_s8(vaddq_s64(v117, v117), *&STACK[0x56F0])), *&STACK[0x56E0]), *&STACK[0x5790]);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v72);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL)));
  v123.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), *&STACK[0x57C0]), v121), *&STACK[0x57B0]), *&STACK[0x57A0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5760], 3uLL), v79)));
  *(v4 + v3 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v123, v9[26])), *(v5 + v3));
  return (*(STACK[0x57D8] + 8 * (((a3 == 0) * v7) ^ a2)))();
}

uint64_t sub_1006EAF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x51B8];
  v5 = STACK[0xC960];
  v6 = STACK[0x8D78];
  LODWORD(STACK[0xAC20]) = -143113071;
  STACK[0x8338] = 0;
  LODWORD(STACK[0xC9DC]) = -769884012;
  LODWORD(STACK[0x5FD8]) = -143113071;
  STACK[0xB7D0] = v5 + 4;
  LODWORD(STACK[0x971C]) = (v6 + 813240529) ^ (((v6 + 813240529) ^ 0xE6A3EE77) + 690291038) ^ (((v6 + 813240529) ^ 0xC819AB47) + 127878254) ^ (((v6 + 813240529) ^ 0xE13CA88C) + 783959975) ^ (((v6 + 813240529) ^ 0xFFFFFD69) + 813240900) ^ 0xE2659041;
  return (*(STACK[0x57D8] + 8 * ((4473 * (v4 != -700124698)) ^ (v4 - 22442))))(a1, 22611, a3, a4, 19);
}

uint64_t sub_1006EB0D8(unint64_t a1)
{
  v3 = STACK[0x7B00];
  v4 = STACK[0x6C0C];
  v5 = 289235981 * (((v2 - 240) & 0x77786C85 | ~((v2 - 240) | 0x77786C85)) ^ 0xF054345);
  LODWORD(STACK[0x1D4D8]) = -529096856 - v5 + v1 + 32;
  STACK[0x1D4E0] = &STACK[0x903C];
  STACK[0x1D4C8] = v3;
  LODWORD(STACK[0x1D4DC]) = v4 ^ v5;
  STACK[0x1D4D0] = a1;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 + 29389)))(v2 - 240);
  return (*(v6 + 8 * (((LODWORD(STACK[0x903C]) < 2 * (v1 ^ 0x1D65u) - 9057) * ((v1 ^ 0x1D65) + 21727)) ^ v1)))(v7);
}

uint64_t sub_1006EB228()
{
  STACK[0xBE50] = v1;
  v4 = 1534937323 * ((2 * ((v3 - 240) & 0x40B4E7DA3E3D8A58) - (v3 - 240) + 0x3F4B1825C1C275A1) ^ 0xF23390E7072C8EE6);
  STACK[0x1D4C0] = ((((v2 ^ 0x6CECB2F8) - 1827451640) ^ ((v2 ^ 0x469DC342) - 1184744258) ^ ((v2 ^ 0xF86DF12E) + 127012562)) - 268683576 < 0x1DDFB634) ^ ((((LODWORD(STACK[0xBCA0]) ^ 0x8E258F89) + 1910141047) ^ ((LODWORD(STACK[0xBCA0]) ^ 0x45615F6A) - 1164009322) ^ ((LODWORD(STACK[0xBCA0]) ^ 0x19585077) - 425218167)) - 268683576 < 0x1DDFB634) ^ v4;
  LODWORD(STACK[0x1D4D4]) = (v0 - 1271148501) ^ (1534937323 * ((2 * ((v3 - 240) & 0x3E3D8A58) - (v3 - 240) - 1044220511) ^ 0x72C8EE6));
  LODWORD(STACK[0x1D4C8]) = v0 - 1271148501 - 1534937323 * ((2 * ((v3 - 240) & 0x3E3D8A58) - (v3 - 240) - 1044220511) ^ 0x72C8EE6) + 4199;
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((2 * ((v3 - 240) & 0x3E3D8A58) - (v3 - 240) - 1044220511) ^ 0x72C8EE6);
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((2 * ((v3 - 240) & 0x3E3D8A58) - (v3 - 240) - 1044220511) ^ 0x72C8EE6) + 1451493860 + v0;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4E0]) = 1534937323 * ((2 * ((v3 - 240) & 0x3E3D8A58) - (v3 - 240) - 1044220511) ^ 0x72C8EE6) + v0 - 1271148501 - 20;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v3 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1006EB3E8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v20.i64[0] = v10;
  v20.i64[1] = v10 + 1;
  v21.i64[0] = v10 + 2;
  v21.i64[1] = v10 + 3;
  v22.i64[0] = v10 + 6;
  v22.i64[1] = v10 + 7;
  v23.i64[0] = v10 + 4;
  v23.i64[1] = v10 + 5;
  v24.i64[0] = v10 + 10;
  v24.i64[1] = v10 + 11;
  v25.i64[0] = v10 + 8;
  v25.i64[1] = v10 + 9;
  v26.i64[0] = v10 + 14;
  *&STACK[0x57A0] = *v10;
  v26.i64[1] = v10 + 15;
  v27.i64[0] = v10 + 12;
  v27.i64[1] = v10 + 13;
  v28.i64[0] = v9;
  v28.i64[1] = v9 + 1;
  v29 = v28;
  v28.i64[0] = v9 + 2;
  v28.i64[1] = v9 + 3;
  v30 = v28;
  *&STACK[0x5700] = v28;
  v28.i64[0] = v9 + 6;
  v28.i64[1] = v9 + 7;
  v31 = v28;
  v28.i64[0] = v9 + 4;
  v28.i64[1] = v9 + 5;
  *&STACK[0x56E0] = v28;
  v28.i64[0] = v9 + 10;
  v28.i64[1] = v9 + 11;
  *&STACK[0x56D0] = v28;
  v28.i64[0] = v9 + 8;
  v28.i64[1] = v9 + 9;
  *&STACK[0x56C0] = v28;
  v32 = *&STACK[0x4D70];
  v33 = vandq_s8(v27, *&STACK[0x4D70]);
  v34 = vandq_s8(v26, *&STACK[0x4D70]);
  v35 = vandq_s8(v25, *&STACK[0x4D70]);
  v36 = vandq_s8(v24, *&STACK[0x4D70]);
  v37 = vandq_s8(v23, *&STACK[0x4D70]);
  v38 = vandq_s8(v22, *&STACK[0x4D70]);
  v39 = vandq_s8(v21, *&STACK[0x4D70]);
  v40 = vandq_s8(v20, *&STACK[0x4D70]);
  v41 = vdupq_n_s64(v15);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), v41);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v41);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v41);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v41);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v41);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v41);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v41);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v41);
  v50 = vdupq_n_s64(v19);
  v51 = vdupq_n_s64(v18);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v42, v42), v50), v42), v51);
  v53 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), v50), v43), v51);
  v54 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v44, v44), v50), v44), v51);
  v55 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v45, v45), v50), v45), v51);
  v56 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v46, v46), v50), v46), v51);
  v57 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v47, v47), v50), v47), v51);
  v58 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), v50), v48), v51);
  v59 = vdupq_n_s64(v17);
  v60 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), v50), v49), v51);
  v61 = veorq_s8(v60, v59);
  v62 = veorq_s8(v58, v59);
  v63 = veorq_s8(v57, v59);
  v64 = veorq_s8(v56, v59);
  v65 = veorq_s8(v55, v59);
  v66 = veorq_s8(v54, v59);
  v67 = veorq_s8(v53, v59);
  v68 = veorq_s8(v52, v59);
  v69 = vdupq_n_s64(a2);
  v70 = veorq_s8(v52, v69);
  v71 = veorq_s8(v53, v69);
  v72 = veorq_s8(v54, v69);
  v73 = veorq_s8(v55, v69);
  v74 = veorq_s8(v56, v69);
  v75 = veorq_s8(v57, v69);
  v76 = veorq_s8(v58, v69);
  v77 = veorq_s8(v60, v69);
  v78 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v80 = vdupq_n_s64(v13);
  v81 = veorq_s8(vaddq_s64(v78, v70), v80);
  v82 = veorq_s8(v79, v80);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v72), v80);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v73), v80);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v74), v80);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v75), v80);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v76), v80);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v77), v80);
  v89 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v96 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v97 = veorq_s8(v87, v95);
  v98 = veorq_s8(v86, v94);
  v99 = veorq_s8(v85, v93);
  v100 = veorq_s8(v84, v92);
  v101 = veorq_s8(v83, v91);
  v102 = veorq_s8(v82, v90);
  v103 = veorq_s8(v81, v89);
  v104 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v101);
  v110 = vdupq_n_s64(v16);
  v111 = veorq_s8(vaddq_s64(v104, v96), v110);
  v112 = veorq_s8(vaddq_s64(v105, v97), v110);
  v113 = veorq_s8(vaddq_s64(v106, v98), v110);
  v114 = veorq_s8(vaddq_s64(v107, v99), v110);
  v115 = veorq_s8(vaddq_s64(v108, v100), v110);
  v116 = veorq_s8(v109, v110);
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v102), v110);
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v103), v110);
  v119 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v126 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v127 = veorq_s8(v117, v125);
  v128 = veorq_s8(v116, v124);
  v129 = veorq_s8(v115, v123);
  v130 = veorq_s8(v114, v122);
  v131 = veorq_s8(v113, v121);
  v132 = veorq_s8(v112, v120);
  v133 = veorq_s8(v111, v119);
  v134 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v133);
  v142 = vdupq_n_s64(0x1A1C4C99A6B3D690uLL);
  v143 = veorq_s8(vaddq_s64(v134, v126), v142);
  v144 = veorq_s8(vaddq_s64(v135, v127), v142);
  v145 = veorq_s8(vaddq_s64(v136, v128), v142);
  v146 = veorq_s8(vaddq_s64(v137, v129), v142);
  v147 = veorq_s8(vaddq_s64(v138, v130), v142);
  v148 = veorq_s8(vaddq_s64(v139, v131), v142);
  v149 = veorq_s8(vaddq_s64(v140, v132), v142);
  v150 = veorq_s8(v141, v142);
  v151 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v158 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v159 = veorq_s8(v149, v157);
  v160 = veorq_s8(v148, v156);
  v161 = veorq_s8(v147, v155);
  v162 = veorq_s8(v146, v154);
  v163 = veorq_s8(v145, v153);
  v164 = veorq_s8(v144, v152);
  v165 = veorq_s8(v143, v151);
  v166 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v169 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v165);
  v174 = vaddq_s64(v166, v158);
  v175 = vdupq_n_s64(a7);
  v176 = veorq_s8(v174, v175);
  v177 = veorq_s8(vaddq_s64(v167, v159), v175);
  v178 = veorq_s8(vaddq_s64(v168, v160), v175);
  v179 = veorq_s8(vaddq_s64(v169, v161), v175);
  v180 = veorq_s8(vaddq_s64(v170, v162), v175);
  v181 = veorq_s8(vaddq_s64(v171, v163), v175);
  v182 = veorq_s8(vaddq_s64(v172, v164), v175);
  v183 = veorq_s8(v173, v175);
  v184 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v191 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v192 = veorq_s8(v182, v190);
  v193 = veorq_s8(v181, v189);
  v194 = veorq_s8(v180, v188);
  v195 = veorq_s8(v179, v187);
  v196 = veorq_s8(v178, v186);
  v197 = veorq_s8(v177, v185);
  v198 = veorq_s8(v176, v184);
  v199 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v200 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v198);
  v207 = vdupq_n_s64(0xF30ADCCD896F82F3);
  v208 = veorq_s8(vaddq_s64(v199, v191), v207);
  v209 = veorq_s8(vaddq_s64(v200, v192), v207);
  v210 = veorq_s8(vaddq_s64(v201, v193), v207);
  v211 = veorq_s8(vaddq_s64(v202, v194), v207);
  v212 = veorq_s8(vaddq_s64(v203, v195), v207);
  v213 = veorq_s8(vaddq_s64(v204, v196), v207);
  v214 = veorq_s8(vaddq_s64(v205, v197), v207);
  v215 = veorq_s8(v206, v207);
  v216 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL);
  v218 = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v223 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v224 = veorq_s8(v214, v222);
  v225 = veorq_s8(v213, v221);
  v226 = veorq_s8(v212, v220);
  v227 = veorq_s8(v211, v219);
  v228 = veorq_s8(v210, v218);
  v229 = veorq_s8(v209, v217);
  v230 = veorq_s8(v208, v216);
  v231 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v232 = vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL);
  v233 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v234 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v230);
  v239 = vdupq_n_s64(v14);
  v240 = veorq_s8(vaddq_s64(v231, v223), v239);
  v241 = veorq_s8(vaddq_s64(v232, v224), v239);
  v242 = veorq_s8(vaddq_s64(v233, v225), v239);
  v243 = veorq_s8(vaddq_s64(v234, v226), v239);
  v244 = veorq_s8(vaddq_s64(v235, v227), v239);
  v245 = veorq_s8(vaddq_s64(v236, v228), v239);
  v246 = veorq_s8(vaddq_s64(v237, v229), v239);
  v247 = veorq_s8(v238, v239);
  v248 = vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL);
  v249 = vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v251 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v252 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v253 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v254 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v255 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v256 = veorq_s8(v242, v250);
  v257 = veorq_s8(v241, v249);
  v258 = vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v260 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v261 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v262 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v263 = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v264 = vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL);
  v227.i64[0] = v9 + 14;
  v265 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), veorq_s8(v240, v248));
  *&STACK[0x5790] = *v9;
  v227.i64[1] = v9 + 15;
  *&STACK[0x56F0] = v227;
  v266 = vaddq_s64(v264, v257);
  v230.i64[0] = v9 + 12;
  v230.i64[1] = v9 + 13;
  v267 = v230;
  v268 = vdupq_n_s64(0x38uLL);
  v269 = vaddq_s64(v263, v256);
  v270 = vaddq_s64(v262, v255);
  v271 = vaddq_s64(v261, v254);
  v272 = vaddq_s64(v260, v253);
  v273 = vaddq_s64(v259, v252);
  v274 = vaddq_s64(v258, v251);
  v275 = vdupq_n_s64(a8);
  v276 = vdupq_n_s64(a4);
  v277 = vsubq_s64(vorrq_s8(v265, v275), vorrq_s8(v265, v276));
  v278 = vsubq_s64(vorrq_s8(v266, v275), vorrq_s8(v266, v276));
  v279 = vsubq_s64(vorrq_s8(v269, v275), vorrq_s8(v269, v276));
  v280 = vsubq_s64(vorrq_s8(v270, v275), vorrq_s8(v270, v276));
  v281 = vsubq_s64(vorrq_s8(v271, v275), vorrq_s8(v271, v276));
  v282 = vsubq_s64(vorrq_s8(v272, v275), vorrq_s8(v272, v276));
  v283 = vaddq_s64(vsubq_s64(vorrq_s8(v274, v275), vorrq_s8(v274, v276)), v276);
  v284 = vaddq_s64(vsubq_s64(vorrq_s8(v273, v275), vorrq_s8(v273, v276)), v276);
  v285 = vdupq_n_s64(v12);
  v286 = veorq_s8(vaddq_s64(v277, v276), v285);
  v287 = veorq_s8(vaddq_s64(v278, v276), v285);
  v288 = veorq_s8(vaddq_s64(v279, v276), v285);
  v289 = veorq_s8(vaddq_s64(v280, v276), v285);
  v290 = veorq_s8(vaddq_s64(v281, v276), v285);
  v291 = veorq_s8(vaddq_s64(v282, v276), v285);
  v292 = vandq_s8(vshlq_n_s64(v23, 3uLL), v268);
  v293 = vandq_s8(vshlq_n_s64(v24, 3uLL), v268);
  v294 = v268;
  *&STACK[0x5780] = vshlq_u64(veorq_s8(v283, v285), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v268)));
  *&STACK[0x5770] = vshlq_u64(veorq_s8(v284, v285), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v268)));
  *&STACK[0x5760] = vshlq_u64(v291, vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v268)));
  *&STACK[0x5750] = vshlq_u64(v290, vnegq_s64(v293));
  *&STACK[0x5740] = vshlq_u64(v289, vnegq_s64(v292));
  *&STACK[0x5730] = vshlq_u64(v288, vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v268)));
  *&STACK[0x5720] = vshlq_u64(v287, vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v268)));
  *&STACK[0x5710] = vshlq_u64(v286, vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), v268)));
  v295 = vandq_s8(v267, v32);
  v296 = v267;
  v297 = vandq_s8(v227, v32);
  v298 = vandq_s8(*&STACK[0x56C0], v32);
  v299 = vandq_s8(*&STACK[0x56D0], v32);
  v300 = vandq_s8(*&STACK[0x56E0], v32);
  v301 = vandq_s8(v31, v32);
  v302 = v31;
  v303 = vandq_s8(v30, v32);
  v304 = vandq_s8(v29, v32);
  v305 = v29;
  v306 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL);
  v310 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v311 = vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL);
  v312 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v313 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v314 = vdupq_n_s64(a3);
  v315 = vaddq_s64(v313, v314);
  v316 = vaddq_s64(v312, v314);
  v317 = vaddq_s64(v311, v314);
  v318 = vaddq_s64(v310, v314);
  v319 = vaddq_s64(v309, v314);
  v320 = vaddq_s64(v308, v314);
  v321 = vaddq_s64(v307, v314);
  v322 = vaddq_s64(v306, v314);
  v323 = vdupq_n_s64(v11);
  v324 = vsubq_s64(vorrq_s8(vaddq_s64(v321, v321), v323), v321);
  v325 = vdupq_n_s64(0x771CD82A5BD1ADCCuLL);
  v326 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v315, v315), v323), v315), v325);
  v327 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v316, v316), v323), v316), v325);
  v328 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v317, v317), v323), v317), v325);
  v329 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v318, v318), v323), v318), v325);
  v330 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v319, v319), v323), v319), v325);
  v331 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v320, v320), v323), v320), v325);
  v332 = vaddq_s64(v324, v325);
  v333 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v322, v322), v323), v322), v325);
  v334 = vdupq_n_s64(0xDAB0837DCB6AB7FuLL);
  v335 = veorq_s8(v333, v334);
  v336 = veorq_s8(v332, v334);
  v337 = veorq_s8(v331, v334);
  v338 = veorq_s8(v330, v334);
  v339 = veorq_s8(v329, v334);
  v340 = veorq_s8(v328, v334);
  v341 = veorq_s8(v327, v334);
  v342 = veorq_s8(v326, v334);
  v343 = vdupq_n_s64(0x721D1EE7B7BBA985uLL);
  v344 = veorq_s8(v326, v343);
  v345 = veorq_s8(v327, v343);
  v346 = veorq_s8(v328, v343);
  v347 = veorq_s8(v329, v343);
  v348 = veorq_s8(v330, v343);
  v349 = veorq_s8(v331, v343);
  v350 = veorq_s8(v332, v343);
  v351 = veorq_s8(v333, v343);
  v352 = vsraq_n_u64(vshlq_n_s64(v342, 0x38uLL), v342, 8uLL);
  v353 = vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL);
  v354 = vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL);
  v355 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL), v351);
  v356 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL), v350);
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v349);
  v358 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL), v348);
  v359 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), v347);
  v360 = vaddq_s64(v354, v346);
  v361 = vaddq_s64(v353, v345);
  v362 = vaddq_s64(v352, v344);
  v363 = vdupq_n_s64(0x1A756D298AAA8B6DuLL);
  v364 = vandq_s8(v362, v363);
  v365 = vandq_s8(v361, v363);
  v366 = vandq_s8(v360, v363);
  v367 = vandq_s8(v359, v363);
  v368 = vandq_s8(v358, v363);
  v369 = vandq_s8(v357, v363);
  v370 = vandq_s8(v356, v363);
  v371 = vdupq_n_s64(0x27024288A208B01uLL);
  v372 = veorq_s8(vandq_s8(v355, v363), v371);
  v373 = veorq_s8(v370, v371);
  v374 = veorq_s8(v369, v371);
  v375 = veorq_s8(v368, v371);
  v376 = veorq_s8(v367, v371);
  v377 = veorq_s8(v366, v371);
  v378 = veorq_s8(v365, v371);
  v379 = veorq_s8(v364, v371);
  v380 = vdupq_n_s64(0xE58A92D675557492);
  v381 = vandq_s8(v362, v380);
  v382 = vandq_s8(v361, v380);
  v383 = vandq_s8(v360, v380);
  v384 = vandq_s8(v359, v380);
  v385 = vandq_s8(v358, v380);
  v386 = vandq_s8(v357, v380);
  v387 = vandq_s8(v356, v380);
  v388 = vandq_s8(v355, v380);
  v389 = vdupq_n_s64(0x848A809435000491);
  v390 = vaddq_s64(v379, veorq_s8(v381, v389));
  v391 = vaddq_s64(v378, veorq_s8(v382, v389));
  v392 = vaddq_s64(v377, veorq_s8(v383, v389));
  v393 = vaddq_s64(v376, veorq_s8(v384, v389));
  v376.i64[0] = -1;
  v376.i64[1] = -1;
  v394 = vaddq_s64(vaddq_s64(v372, veorq_s8(v388, v389)), v376);
  v395 = vaddq_s64(vaddq_s64(v373, veorq_s8(v387, v389)), v376);
  v396 = vaddq_s64(vaddq_s64(v374, veorq_s8(v386, v389)), v376);
  v397 = vaddq_s64(vaddq_s64(v375, veorq_s8(v385, v389)), v376);
  v398 = vaddq_s64(v393, v376);
  v399 = vaddq_s64(v392, v376);
  v400 = vaddq_s64(v391, v376);
  v401 = vaddq_s64(v390, v376);
  v402 = vdupq_n_s64(0x8F6E512F4A4252FuLL);
  v403 = veorq_s8(v401, v402);
  v404 = veorq_s8(v400, v402);
  v405 = veorq_s8(v399, v402);
  v406 = veorq_s8(v398, v402);
  v407 = veorq_s8(v397, v402);
  v408 = veorq_s8(v396, v402);
  v409 = veorq_s8(v395, v402);
  v410 = veorq_s8(v394, v402);
  v411 = veorq_s8(v410, vsraq_n_u64(vshlq_n_s64(v351, 3uLL), v351, 0x3DuLL));
  v412 = vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL);
  v413 = veorq_s8(v409, vsraq_n_u64(vshlq_n_s64(v350, 3uLL), v350, 0x3DuLL));
  v414 = vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL);
  v415 = veorq_s8(v408, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL));
  v416 = vsraq_n_u64(vshlq_n_s64(v408, 0x38uLL), v408, 8uLL);
  v417 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v418 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v419 = veorq_s8(v406, vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL));
  v420 = vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL);
  v421 = veorq_s8(v405, vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL));
  v422 = vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL);
  v423 = veorq_s8(v404, vsraq_n_u64(vshlq_n_s64(v345, 3uLL), v345, 0x3DuLL));
  v424 = veorq_s8(v403, vsraq_n_u64(vshlq_n_s64(v344, 3uLL), v344, 0x3DuLL));
  v425 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v424);
  v426 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v423);
  v427 = vaddq_s64(v422, v421);
  v428 = vaddq_s64(v420, v419);
  v429 = vaddq_s64(v418, v417);
  v430 = vaddq_s64(v416, v415);
  v431 = vaddq_s64(v414, v413);
  v432 = vaddq_s64(v412, v411);
  v433 = vdupq_n_s64(0x50798BD2C0C53A96uLL);
  v434 = vdupq_n_s64(0xA83CC5E960629D4BLL);
  v435 = vaddq_s64(vsubq_s64(v425, vandq_s8(vaddq_s64(v425, v425), v433)), v434);
  v436 = vaddq_s64(vsubq_s64(v426, vandq_s8(vaddq_s64(v426, v426), v433)), v434);
  v437 = vaddq_s64(vsubq_s64(v427, vandq_s8(vaddq_s64(v427, v427), v433)), v434);
  v438 = vaddq_s64(vsubq_s64(v428, vandq_s8(vaddq_s64(v428, v428), v433)), v434);
  v439 = vaddq_s64(vsubq_s64(v429, vandq_s8(vaddq_s64(v429, v429), v433)), v434);
  v440 = vaddq_s64(vsubq_s64(v430, vandq_s8(vaddq_s64(v430, v430), v433)), v434);
  v441 = vaddq_s64(vsubq_s64(v431, vandq_s8(vaddq_s64(v431, v431), v433)), v434);
  v442 = vaddq_s64(vsubq_s64(v432, vandq_s8(vaddq_s64(v432, v432), v433)), v434);
  v443 = vdupq_n_s64(0xA8EE4676355426A0);
  v444 = veorq_s8(v442, v443);
  v445 = veorq_s8(v441, v443);
  v446 = veorq_s8(v440, v443);
  v447 = veorq_s8(v439, v443);
  v448 = veorq_s8(v438, v443);
  v449 = veorq_s8(v437, v443);
  v450 = veorq_s8(v436, v443);
  v451 = veorq_s8(v435, v443);
  v452 = vsraq_n_u64(vshlq_n_s64(v411, 3uLL), v411, 0x3DuLL);
  v453 = vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL);
  v454 = vsraq_n_u64(vshlq_n_s64(v415, 3uLL), v415, 0x3DuLL);
  v455 = vsraq_n_u64(vshlq_n_s64(v417, 3uLL), v417, 0x3DuLL);
  v456 = veorq_s8(v451, vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL));
  v457 = vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL);
  v458 = veorq_s8(v450, vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL));
  v459 = vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL);
  v460 = veorq_s8(v449, vsraq_n_u64(vshlq_n_s64(v421, 3uLL), v421, 0x3DuLL));
  v461 = vsraq_n_u64(vshlq_n_s64(v449, 0x38uLL), v449, 8uLL);
  v462 = veorq_s8(v448, vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL));
  v463 = vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL);
  v464 = veorq_s8(v447, v455);
  v465 = vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL);
  v466 = veorq_s8(v446, v454);
  v467 = vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL);
  v468 = veorq_s8(v445, v453);
  v469 = veorq_s8(v444, v452);
  v470 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL), v469);
  v471 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v468);
  v472 = vaddq_s64(v467, v466);
  v473 = vaddq_s64(v465, v464);
  v474 = vaddq_s64(v463, v462);
  v475 = vaddq_s64(v461, v460);
  v476 = vaddq_s64(v459, v458);
  v477 = vaddq_s64(v457, v456);
  v478 = vdupq_n_s64(0x72F46D0C59E4A970uLL);
  v479 = vsubq_s64(vandq_s8(vaddq_s64(v477, v477), v478), v477);
  v480 = vsubq_s64(vandq_s8(vaddq_s64(v476, v476), v478), v476);
  v481 = vsubq_s64(vandq_s8(vaddq_s64(v475, v475), v478), v475);
  v482 = vsubq_s64(vandq_s8(vaddq_s64(v474, v474), v478), v474);
  v483 = vsubq_s64(vandq_s8(vaddq_s64(v473, v473), v478), v473);
  v484 = vsubq_s64(vandq_s8(vaddq_s64(v472, v472), v478), v472);
  v485 = vsubq_s64(vandq_s8(vaddq_s64(v471, v471), v478), v471);
  v486 = vsubq_s64(vandq_s8(vaddq_s64(v470, v470), v478), v470);
  v487 = vdupq_n_s64(0xC685C979D30DAB47);
  v488 = vaddq_s64(v486, v487);
  v489 = vaddq_s64(v485, v487);
  v490 = vaddq_s64(v484, v487);
  v491 = vaddq_s64(v483, v487);
  v492 = vaddq_s64(v482, v487);
  v493 = vaddq_s64(v481, v487);
  v494 = vaddq_s64(v480, v487);
  v495 = vaddq_s64(v479, v487);
  v496 = vdupq_n_s64(0xE052E1AD3887BBC4);
  v497 = veorq_s8(v495, v496);
  v498 = veorq_s8(v494, v496);
  v499 = veorq_s8(v493, v496);
  v500 = veorq_s8(v492, v496);
  v501 = veorq_s8(v491, v496);
  v502 = veorq_s8(v490, v496);
  v503 = veorq_s8(v489, v496);
  v504 = veorq_s8(v488, v496);
  v505 = vsraq_n_u64(vshlq_n_s64(v456, 3uLL), v456, 0x3DuLL);
  v506 = vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL);
  v507 = vsraq_n_u64(vshlq_n_s64(v460, 3uLL), v460, 0x3DuLL);
  v508 = vsraq_n_u64(vshlq_n_s64(v462, 3uLL), v462, 0x3DuLL);
  v509 = veorq_s8(v504, vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL));
  v510 = vsraq_n_u64(vshlq_n_s64(v504, 0x38uLL), v504, 8uLL);
  v511 = veorq_s8(v503, vsraq_n_u64(vshlq_n_s64(v468, 3uLL), v468, 0x3DuLL));
  v512 = vsraq_n_u64(vshlq_n_s64(v503, 0x38uLL), v503, 8uLL);
  v513 = veorq_s8(v502, vsraq_n_u64(vshlq_n_s64(v466, 3uLL), v466, 0x3DuLL));
  v514 = vsraq_n_u64(vshlq_n_s64(v502, 0x38uLL), v502, 8uLL);
  v515 = veorq_s8(v501, vsraq_n_u64(vshlq_n_s64(v464, 3uLL), v464, 0x3DuLL));
  v516 = vsraq_n_u64(vshlq_n_s64(v501, 0x38uLL), v501, 8uLL);
  v517 = veorq_s8(v500, v508);
  v518 = vsraq_n_u64(vshlq_n_s64(v500, 0x38uLL), v500, 8uLL);
  v519 = veorq_s8(v499, v507);
  v520 = vsraq_n_u64(vshlq_n_s64(v499, 0x38uLL), v499, 8uLL);
  v521 = veorq_s8(v498, v506);
  v522 = vsraq_n_u64(vshlq_n_s64(v498, 0x38uLL), v498, 8uLL);
  v523 = veorq_s8(v497, v505);
  v524 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL), v523);
  v525 = vdupq_n_s64(0xAAFDBF1C09BCDEEBLL);
  v526 = vdupq_n_s64(a6);
  v527 = vsubq_s64(vorrq_s8(v524, v525), vorrq_s8(v524, v526));
  v528 = vaddq_s64(v522, v521);
  v529 = vsubq_s64(vorrq_s8(v528, v525), vorrq_s8(v528, v526));
  v530 = vaddq_s64(v520, v519);
  v531 = vsubq_s64(vorrq_s8(v530, v525), vorrq_s8(v530, v526));
  v532 = vaddq_s64(v518, v517);
  v533 = vsubq_s64(vorrq_s8(v532, v525), vorrq_s8(v532, v526));
  v534 = vaddq_s64(v516, v515);
  v535 = vsubq_s64(vorrq_s8(v534, v525), vorrq_s8(v534, v526));
  v536 = vaddq_s64(v514, v513);
  v537 = vsubq_s64(vorrq_s8(v536, v525), vorrq_s8(v536, v526));
  v538 = vaddq_s64(v512, v511);
  v539 = vsubq_s64(vorrq_s8(v538, v525), vorrq_s8(v538, v526));
  v540 = vaddq_s64(v510, v509);
  v541 = vaddq_s64(vsubq_s64(vorrq_s8(v540, v525), vorrq_s8(v540, v526)), v526);
  v542 = vaddq_s64(v539, v526);
  v543 = vaddq_s64(v537, v526);
  v544 = vaddq_s64(v535, v526);
  v545 = vaddq_s64(v533, v526);
  v546 = vaddq_s64(v531, v526);
  v547 = vaddq_s64(v529, v526);
  v548 = vaddq_s64(v527, v526);
  v549 = vdupq_n_s64(0x9DB395B24C200AA3);
  v550 = veorq_s8(v548, v549);
  v551 = veorq_s8(v547, v549);
  v552 = veorq_s8(v546, v549);
  v553 = veorq_s8(v545, v549);
  v554 = veorq_s8(v544, v549);
  v555 = veorq_s8(v543, v549);
  v556 = veorq_s8(v542, v549);
  v557 = veorq_s8(v541, v549);
  v558 = vsraq_n_u64(vshlq_n_s64(v523, 3uLL), v523, 0x3DuLL);
  v559 = veorq_s8(v557, vsraq_n_u64(vshlq_n_s64(v509, 3uLL), v509, 0x3DuLL));
  v560 = vsraq_n_u64(vshlq_n_s64(v557, 0x38uLL), v557, 8uLL);
  v561 = veorq_s8(v556, vsraq_n_u64(vshlq_n_s64(v511, 3uLL), v511, 0x3DuLL));
  v562 = vsraq_n_u64(vshlq_n_s64(v556, 0x38uLL), v556, 8uLL);
  v563 = veorq_s8(v555, vsraq_n_u64(vshlq_n_s64(v513, 3uLL), v513, 0x3DuLL));
  v564 = vsraq_n_u64(vshlq_n_s64(v555, 0x38uLL), v555, 8uLL);
  v565 = veorq_s8(v554, vsraq_n_u64(vshlq_n_s64(v515, 3uLL), v515, 0x3DuLL));
  v566 = vsraq_n_u64(vshlq_n_s64(v554, 0x38uLL), v554, 8uLL);
  v567 = veorq_s8(v553, vsraq_n_u64(vshlq_n_s64(v517, 3uLL), v517, 0x3DuLL));
  v568 = vsraq_n_u64(vshlq_n_s64(v553, 0x38uLL), v553, 8uLL);
  v569 = veorq_s8(v552, vsraq_n_u64(vshlq_n_s64(v519, 3uLL), v519, 0x3DuLL));
  v570 = vsraq_n_u64(vshlq_n_s64(v552, 0x38uLL), v552, 8uLL);
  v571 = veorq_s8(v551, vsraq_n_u64(vshlq_n_s64(v521, 3uLL), v521, 0x3DuLL));
  v572 = vsraq_n_u64(vshlq_n_s64(v551, 0x38uLL), v551, 8uLL);
  v573 = veorq_s8(v550, v558);
  v574 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v550, 0x38uLL), v550, 8uLL), v573);
  v575 = vaddq_s64(v572, v571);
  v576 = vaddq_s64(v570, v569);
  v577 = vaddq_s64(v568, v567);
  v578 = vaddq_s64(v566, v565);
  v579 = vaddq_s64(v564, v563);
  v580 = vaddq_s64(v562, v561);
  v581 = vaddq_s64(v560, v559);
  v582 = vdupq_n_s64(0xF924BCD6FE8EF26uLL);
  v583 = vdupq_n_s64(0xF836DA19480B886CLL);
  v584 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v574, v574), v582), v574), v583);
  v585 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v575, v575), v582), v575), v583);
  v586 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v576, v576), v582), v576), v583);
  v587 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v577, v577), v582), v577), v583);
  v588 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v578, v578), v582), v578), v583);
  v589 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v579, v579), v582), v579), v583);
  v590 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v580, v580), v582), v580), v583);
  v591 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v581, v581), v582), v581), v583);
  v592 = vdupq_n_s64(0xCA17AD712A5B8AB1);
  v593 = veorq_s8(v591, v592);
  v594 = veorq_s8(v590, v592);
  v595 = veorq_s8(v589, v592);
  v596 = veorq_s8(v588, v592);
  v597 = veorq_s8(v587, v592);
  v598 = veorq_s8(v586, v592);
  v599 = veorq_s8(v585, v592);
  v600 = veorq_s8(v584, v592);
  v601 = vsraq_n_u64(vshlq_n_s64(v559, 3uLL), v559, 0x3DuLL);
  v602 = vsraq_n_u64(vshlq_n_s64(v561, 3uLL), v561, 0x3DuLL);
  v603 = vsraq_n_u64(vshlq_n_s64(v563, 3uLL), v563, 0x3DuLL);
  v604 = veorq_s8(v600, vsraq_n_u64(vshlq_n_s64(v573, 3uLL), v573, 0x3DuLL));
  v605 = vsraq_n_u64(vshlq_n_s64(v600, 0x38uLL), v600, 8uLL);
  v606 = veorq_s8(v599, vsraq_n_u64(vshlq_n_s64(v571, 3uLL), v571, 0x3DuLL));
  v607 = vsraq_n_u64(vshlq_n_s64(v599, 0x38uLL), v599, 8uLL);
  v608 = veorq_s8(v598, vsraq_n_u64(vshlq_n_s64(v569, 3uLL), v569, 0x3DuLL));
  v609 = vsraq_n_u64(vshlq_n_s64(v598, 0x38uLL), v598, 8uLL);
  v610 = veorq_s8(v597, vsraq_n_u64(vshlq_n_s64(v567, 3uLL), v567, 0x3DuLL));
  v611 = vsraq_n_u64(vshlq_n_s64(v597, 0x38uLL), v597, 8uLL);
  v612 = veorq_s8(v596, vsraq_n_u64(vshlq_n_s64(v565, 3uLL), v565, 0x3DuLL));
  v613 = vsraq_n_u64(vshlq_n_s64(v596, 0x38uLL), v596, 8uLL);
  v614 = veorq_s8(v595, v603);
  v615 = vsraq_n_u64(vshlq_n_s64(v595, 0x38uLL), v595, 8uLL);
  v616 = veorq_s8(v594, v602);
  v617 = veorq_s8(v593, v601);
  v618 = vaddq_s64(v607, v606);
  v619 = vdupq_n_s64(0x5FA27CC96E1EAF91uLL);
  v620 = veorq_s8(vaddq_s64(v605, v604), v619);
  v621 = veorq_s8(v618, v619);
  v622 = veorq_s8(vaddq_s64(v609, v608), v619);
  v623 = veorq_s8(vaddq_s64(v611, v610), v619);
  v624 = veorq_s8(vaddq_s64(v613, v612), v619);
  v625 = veorq_s8(vaddq_s64(v615, v614), v619);
  v626 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v594, 0x38uLL), v594, 8uLL), v616), v619);
  v627 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v593, 0x38uLL), v593, 8uLL), v617), v619);
  v628 = vsraq_n_u64(vshlq_n_s64(v604, 3uLL), v604, 0x3DuLL);
  v629 = vsraq_n_u64(vshlq_n_s64(v606, 3uLL), v606, 0x3DuLL);
  v630 = vsraq_n_u64(vshlq_n_s64(v608, 3uLL), v608, 0x3DuLL);
  v631 = vsraq_n_u64(vshlq_n_s64(v610, 3uLL), v610, 0x3DuLL);
  v632 = vsraq_n_u64(vshlq_n_s64(v612, 3uLL), v612, 0x3DuLL);
  v633 = vsraq_n_u64(vshlq_n_s64(v614, 3uLL), v614, 0x3DuLL);
  v634 = vsraq_n_u64(vshlq_n_s64(v616, 3uLL), v616, 0x3DuLL);
  v635 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v627, 0x38uLL), v627, 8uLL), veorq_s8(v627, vsraq_n_u64(vshlq_n_s64(v617, 3uLL), v617, 0x3DuLL)));
  v636 = vdupq_n_s64(0x2562C0DB886E32C6uLL);
  *STACK[0x57C0] = veorq_s8(veorq_s8(*&STACK[0x57A0], *&STACK[0x5790]), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(veorq_s8(vshlq_u64(veorq_s8(v635, v636), vnegq_s64(vandq_s8(vshlq_n_s64(v305, 3uLL), v294))), *&STACK[0x5710]), veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v626, 0x38uLL), v626, 8uLL), veorq_s8(v626, v634)), v636), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5700], 3uLL), v294))), *&STACK[0x5720])), vuzp1q_s32(veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v624, 0x38uLL), v624, 8uLL), veorq_s8(v624, v632)), v636), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56E0], 3uLL), v294))), *&STACK[0x5740]), veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v625, 0x38uLL), v625, 8uLL), veorq_s8(v625, v633)), v636), vnegq_s64(vandq_s8(vshlq_n_s64(v302, 3uLL), v294))), *&STACK[0x5730]))), vuzp1q_s16(vuzp1q_s32(veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v622, 0x38uLL), v622, 8uLL), veorq_s8(v622, v630)), v636), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56C0], 3uLL), v294))), *&STACK[0x5760]), veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v623, 0x38uLL), v623, 8uLL), veorq_s8(v623, v631)), v636), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56D0], 3uLL), v294))), *&STACK[0x5750])), vuzp1q_s32(veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v620, 0x38uLL), v620, 8uLL), veorq_s8(v620, v628)), v636), vnegq_s64(vandq_s8(vshlq_n_s64(v296, 3uLL), v294))), *&STACK[0x5780]), veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v621, 0x38uLL), v621, 8uLL), veorq_s8(v621, v629)), v636), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56F0], 3uLL), v294))), *&STACK[0x5770])))));
  return (*(STACK[0x57D8] + 8 * v8))();
}

uint64_t sub_1006ECA8C(uint64_t a1, uint64_t a2, int a3)
{
  v12 = (((2 * (STACK[0x5070] ^ 0x582ADB19F64DA698)) | 0xA8594AF3F419698ALL) - (STACK[0x5070] ^ 0x582ADB19F64DA698) - 0x542CA579FA0CB4C5) ^ 0xE986CF1D8084F70CLL;
  v13 = v12 ^ STACK[0x5080];
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xE1A1FD5BD155F97ALL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xDA604B0C03A2BF99;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xFA35E2CDCB3E31C7;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0x5C7050C77FAA254ELL) - 0x51C7D79C402AED59) ^ 0x7CC824859F30C109;
  v22 = ((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v19, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  v23 = *(STACK[0x5200] + (STACK[0x5208] & ((STACK[0x5158] ^ 0x4F0B2EDC) + 724634172 + (STACK[0x5110] & 0x9E165DB0))));
  v24 = __ROR8__((v23 + STACK[0x5258]) ^ 0xB88801D4E1C76353, 8);
  v25 = (v23 + STACK[0x5258]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v23, 61);
  v26 = (v24 + v25) ^ 0x38C8B16AE7056877;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xE580B17D8CC5E551;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xE1A1FD5BD155F97ALL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) ^ 0x173C073F067B2690 | 0x6041E338EA9E4E5CLL) - ((v32 + v31) ^ 0x173C073F067B2690 | 0x9FBE1CC71561B1A3) - 0x6041E338EA9E4E5DLL) ^ 0xAD1DAF0BEF47D755;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xFA35E2CDCB3E31C7;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xD2F00CE620E5D3AELL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = *(STACK[0x56F0] + (STACK[0x5190] & ((STACK[0x5090] & 0xFFFFFFF8) + 2050767128)));
  v41 = ((((v39 + v38) | 0xB05AB67A87375CEELL) - ((v39 + v38) | 0x4FA5498578C8A311) + 0x4FA5498578C8A311) ^ 0x4429BD4B29472995) >> STACK[0x5670];
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ v22;
  v42 = (v40 + STACK[0x5440] - ((2 * (v40 + STACK[0x5440])) & 0x27EF3CF5D4321A2CLL) - 0x6C08618515E6F2EALL) ^ 0x2B7F9FAE0BDE6E45;
  v43 = v42 ^ __ROR8__(v40, 61);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x56E0]) ^ v41;
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x38C8B16AE7056877;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xE580B17D8CC5E551;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0xE1A1FD5BD155F97ALL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0xB04C70A439FC604ALL) - (v50 + v49) + 0x27D9C7ADE301CFDALL) ^ 0xFDB98CA1E0A37043;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xFA35E2CDCB3E31C7;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x5600]) ^ (((__ROR8__((v55 + v54 - ((2 * (v55 + v54)) & 0x8E0682FE08224AD6) + 0x4703417F0411256BLL) ^ 0x95F34D9924F4F6C5, 8) + ((v55 + v54 - ((2 * (v55 + v54)) & 0x8E0682FE08224AD6) + 0x4703417F0411256BLL) ^ 0x95F34D9924F4F6C5 ^ __ROR8__(v54, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5450]);
  v56 = (((2 * STACK[0x5050]) | 0x3357A795523C7A22) - STACK[0x5050] - 0x19ABD3CAA91E3D11) ^ 0xA123D21E48D95E42;
  v57 = v56 ^ STACK[0x5058];
  v58 = __ROR8__(v56, 8);
  v59 = (v58 + v57 - ((2 * (v58 + v57)) & 0x2ABEAFE4568087DALL) - 0x6AA0A80DD4BFBC13) ^ 0xAD97E698CC452B9ALL;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((2 * (v61 + v60)) | 0xE592DC3BCB4CAF5CLL) - (v61 + v60) + 0xD3691E21A59A852) ^ 0x1749DF606963B2FFLL;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0xE1A1FD5BD155F97ALL;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xDA604B0C03A2BF99;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (v68 + v67 - ((2 * (v68 + v67)) & 0x74A91A79081BDC74) + 0x3A548D3C840DEE3ALL) ^ 0xC0616FF14F33DFFDLL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5020]) = LODWORD(STACK[0x5348]) ^ (((__ROR8__(v71, 8) + (v71 ^ __ROR8__(v70, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5328]);
  v72 = *(STACK[0x5268] + (LODWORD(STACK[0x50B0]) & ((STACK[0x5260] ^ 0x55A134F3) + 614138919 + (STACK[0x5160] & 0xAB4269E0))));
  v73 = (((2 * (v72 + STACK[0x5288])) & 0x49403B600955B6FCLL) - (v72 + STACK[0x5288]) + 0x5B5FE24FFB552481) ^ 0xE3D7E39B1A9247D2;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) & 0xD0393C0B1C45C102) - (v75 + v74) + 0x17E361FA71DD1F7ELL) ^ 0x2F2BD09096D87709;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (v78 + v77 - ((2 * (v78 + v77)) & 0x31AE2F59FE9C47B8) + 0x18D717ACFF4E23DCLL) ^ 0xFD57A6D1738BC68DLL;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((v81 + v80) | 0x98495449F659AA9ELL) - ((v81 + v80) | 0x67B6ABB609A65561) + 0x67B6ABB609A65561) ^ 0x79E8A912270C53E4;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xDA604B0C03A2BF99;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (v86 + v85 - ((2 * (v86 + v85)) & 0x5BEDC879E2AF774ELL) - 0x52091BC30EA84459) ^ 0x57C306F13A698A60;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0xD2F00CE620E5D3AELL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = *(STACK[0x5148] + (LODWORD(STACK[0x5130]) & (-1575656079 * (((424197009 * STACK[0x5138]) | 0xE879C381) + ((424197009 * STACK[0x5138]) | 0x17863C7F)) + 2050767130)));
  LODWORD(STACK[0x54B0]) = LODWORD(STACK[0x5198]) ^ (((v91 + v90) ^ 0xF4730B31AE70757BLL) >> STACK[0x5358]);
  v93 = (((v92 + STACK[0x5140]) & 0x4FEC4FC646010333 ^ 0xF2C0E0006000120) + ((v92 + STACK[0x5140]) & 0xB013B039B9FEFCCCLL ^ 0x9003B02929BE1489) - 1) ^ 0x27A7BFFDCE7976FBLL;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (((2 * (v95 + v94)) & 0xDB7049A96B44CB76) - (v95 + v94) - 0x6DB824D4B5A265BCLL) ^ 0xAA8F6A41AD58F233;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xE580B17D8CC5E551;
  v99 = __ROR8__(v98, 8);
  v100 = v98 ^ __ROR8__(v97, 61);
  v101 = (v99 + v100) ^ 0xE1A1FD5BD155F97ALL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0xDA604B0C03A2BF99;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xFA35E2CDCB3E31C7;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5220]) = LODWORD(STACK[0x51C0]) ^ (((__ROR8__(v107, 8) + (v107 ^ __ROR8__(v106, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x51A8]);
  v108 = *(STACK[0x5180] + (v4 & ((STACK[0x5178] ^ 0x45D22B3B) + 879365599 + (STACK[0x5108] & 0x8BA45670))));
  v109 = (((2 * (v108 + STACK[0x5188])) & 0x2017DADBBB2AA3FELL) - (v108 + STACK[0x5188]) + 0x6FF41292226AAE00) ^ 0xD77C1346C3ADCD53;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0x38C8B16AE7056877;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xE580B17D8CC5E551;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((2 * (v115 + v114)) | 0x161F93078D15E98CLL) - (v115 + v114) + 0x74F0367C39750B3ALL) ^ 0x6AAE34D817DF0DBCLL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0xDA604B0C03A2BF99;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0xFA35E2CDCB3E31C7;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (((2 * (v122 + v121)) & 0x277C9F35539099BCLL) - (v122 + v121) + 0x6C41B0655637B321) ^ 0xBEB1BC8376D2608FLL;
  LODWORD(STACK[0x5298]) = LODWORD(STACK[0x51B0]) ^ (((__ROR8__(v123, 8) + (v123 ^ __ROR8__(v121, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x51A0]);
  v124 = *(v3 + (((v7 & 0xB55685A8) + (v7 | 0xB55685AF) - 991579285) & v6 & 0xFFFFFFF8));
  v125 = (v124 + STACK[0x5338]) ^ 0xB88801D4E1C76353;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = __ROR8__((((v127 + v126) | (v5 - 0x5904B94C75D33468)) - ((v127 + v126) | 0x5904B94C75D2D1FDLL) + 0x5904B94C75D2D1FDLL) ^ 0x9E33F7D96D284675, 8);
  v129 = (((v127 + v126) | (v5 - 0x5904B94C75D33468)) - ((v127 + v126) | 0x5904B94C75D2D1FDLL) + 0x5904B94C75D2D1FDLL) ^ 0x9E33F7D96D284675 ^ __ROR8__(v126, 61);
  v130 = (v128 + v129) ^ 0xE580B17D8CC5E551;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = __ROR8__(v130, 8);
  v133 = (((v132 + v131) | 0x4BE242D2F8DCE396) - ((v132 + v131) | 0xB41DBD2D07231C69) - 0x4BE242D2F8DCE397) ^ 0xAA43BF8929891AECLL;
  v134 = v133 ^ __ROR8__(v131, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((v135 + v134) | 0x1502E77290869482) - ((v135 + v134) | 0xEAFD188D6F796B7DLL) - 0x1502E77290869483) ^ 0xCF62AC7E93242B1BLL;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0xFA35E2CDCB3E31C7;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = __ROR8__((((2 * (v140 + v139)) | 0x60442A9652F56348) - (v140 + v139) + 0x4FDDEAB4D6854E5CLL) ^ 0x62D219AD099F620ALL, 8) + ((((2 * (v140 + v139)) | 0x60442A9652F56348) - (v140 + v139) + 0x4FDDEAB4D6854E5CLL) ^ 0x62D219AD099F620ALL ^ __ROR8__(v139, 61));
  v142 = *(v11 + (*STACK[0x51E8] & (v8 + 2050767130) & (2384 * (a3 ^ 0x12AC) - 9544)));
  v143 = (v142 + STACK[0x53E8]) ^ 0xB88801D4E1C76353;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0x38C8B16AE7056877;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0xE580B17D8CC5E551;
  v148 = __ROR8__(v147, 8);
  LODWORD(STACK[0x5338]) = v9 ^ (((((2 * v141) & 0xEA3AF22447DF34A0) - v141 + 0xAE286EDDC1065AFLL) ^ 0xFE918DDC726010D4) >> v10);
  v149 = v147 ^ __ROR8__(v146, 61);
  v150 = __ROR8__((((2 * ((v148 + v149) ^ 0x8FD756521C9AE3B9)) & 0x57B76ABC91FC2CFALL) - ((v148 + v149) ^ 0x8FD756521C9AE3B9) - 0x2BDBB55E48FE167ELL) ^ 0xBA52E1A87ACEF341, 8);
  v151 = (((2 * ((v148 + v149) ^ 0x8FD756521C9AE3B9)) & 0x57B76ABC91FC2CFALL) - ((v148 + v149) ^ 0x8FD756521C9AE3B9) - 0x2BDBB55E48FE167ELL) ^ 0xBA52E1A87ACEF341 ^ __ROR8__(v149, 61);
  v152 = (((2 * (v150 + v151)) | 0xA4AB85264791C6FCLL) - (v150 + v151) - 0x5255C29323C8E37ELL) ^ 0x8835899F206A5CE7;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0xFA35E2CDCB3E31C7;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = __ROR8__(v154, 8) + v155;
  v157 = (2 * v156) | 0x47E1F8CBF9D994D8;
  v158 = (v157 - v156 + 0x5C0F039A03133594) ^ 0x7100F083DC0919C2 ^ __ROR8__(v155, 61);
  v159 = __ROR8__((v157 - v156 + 0x5C0F039A03133594) ^ 0x7100F083DC0919C2, 8);
  v160 = ((((2 * (v159 + v158)) & 0xC1671F52DCB3A312) - (v159 + v158) - 0x60B38FA96E59D18ALL) ^ 0x6B3F7B673FD65B0DLL) >> STACK[0x53F8];
  LODWORD(STACK[0x5328]) = (((v160 ^ LODWORD(STACK[0x5620]) ^ 0xFFFFFFA4) + 56) ^ ((v160 ^ LODWORD(STACK[0x5620]) ^ 0xFFFFFF94) + 8) ^ ((v160 ^ LODWORD(STACK[0x5620]) ^ 0x30) - 92)) - 108;
  STACK[0x52F8] = 62;
  return (*(STACK[0x57D8] + 8 * a3))(4294967211, LODWORD(STACK[0x52E0]));
}

uint64_t sub_1006EDC94()
{
  v6 = STACK[0x51B8];
  v7 = STACK[0x51B8] - 22614;
  v8 = LODWORD(STACK[0xA1B4]);
  v9 = ((v3 + 0x4CD4AC0070C75291 - 2 * (v3 & 0x4CD4AC0070C75291)) ^ 0x81AC24C2B629A9D6) * v2;
  *(v0 + 604) = v9 + v1 + STACK[0x51B8];
  *(v0 + 608) = v9;
  *(v0 + 616) = v8 + v9;
  *(v0 + 612) = (v6 - 223616046) ^ v9;
  *(v0 + 592) = v9 ^ 0xD21C8094;
  *(v0 + 600) = (v7 ^ 0xF2AC32D1) - v9;
  *(v0 + 624) = (v7 ^ 0xF2AC3C3E) + v9;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v6 + v4)))(v5 - 240);
  return (*(v10 + 8 * *(v0 + 628)))(v11);
}

uint64_t sub_1006EDD64()
{
  v0 = STACK[0x51B8] - 18070;
  v1 = STACK[0x57D8];
  v2 = STACK[0x1120];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1120]));
  return (*(v1 + 8 * (v0 + v2 - 360)))();
}

uint64_t sub_1006EDDC0(unsigned int a1)
{
  v5 = v2 + (v2 & 1) + (((v2 & 1 ^ v4) + 171004691) ^ ((v2 & 1 ^ 0x4A6043E9) + 1018441609) ^ ((v2 & 1 ^ 0x36857C9B) + 1079054587)) - 1462878209;
  v6 = (v3 < v1) ^ (v5 < v1);
  v7 = v5 < v3;
  if (v6)
  {
    v7 = v3 < v1;
  }

  return (*(STACK[0x57D8] + 8 * (v7 | a1)))();
}

uint64_t sub_1006EE33C@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x57D8];
  STACK[0xAEC0] = *(STACK[0x57D8] + 8 * v2);
  STACK[0xCFF0] = a1;
  STACK[0x8E38] = v4;
  STACK[0xCF38] = *(v5 + 8 * v1);
  return (*(v5 + 8 * (v1 + v3 + ((v1 - 965686080) & 0x398F797D))))();
}

uint64_t sub_1006EE4A4()
{
  LODWORD(STACK[0xDA30]) = v0;
  LOBYTE(STACK[0xDA37]) = v0 == -143113071;
  return (*(STACK[0x57D8] + 8 * (((v0 != -143113071) * ((v1 - 4413) ^ 0x4713)) | (v1 + 2058))))();
}

uint64_t sub_1006EE63C()
{
  v0 = STACK[0x51B8] - 20091;
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x180C)))();
}

uint64_t sub_1006EE768(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v11 - 1;
  *(v7 + v12) = *(v8 + v12);
  return (*(STACK[0x57D8] + 8 * (((((v12 == 0) ^ ((v9 & a4) + 1)) & 1) * a7) ^ v10)))();
}

uint64_t sub_1006EE8E0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x8F70] = a1;
  LODWORD(STACK[0xAB18]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1006EE920@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W6>, int a4@<W8>)
{
  v21 = *(v20 + v4 * v19 + 8692212 - (((((v4 * v19 + 8692212) >> 3) * v17) >> 32) >> 7) * v14);
  v22 = a3 + ((a2 + (v21 ^ 0xAC50159D)) ^ ((v21 ^ 0x9CF2063) - 164569187) ^ ((v21 ^ 0xA59F3539) + v11)) * v19;
  v23 = *(v20 + v22 - ((((v22 >> 3) * v17) >> 32) >> 7) * v14);
  v24 = v23 & 0xB0;
  v25 = v23 ^ 0x4E;
  if (v23)
  {
    a1 = -118;
  }

  v27 = v5 ^ a1;
  v28 = a1 ^ 0x47;
  v29 = v27 ^ 0x80;
  if ((v25 & 0xB2) != v24)
  {
    v28 = v29;
  }

  if ((v25 & 0xB4) != v24)
  {
    v28 ^= v6 ^ 0xC7;
  }

  if ((v25 & 0xB8 ^ v24) != 8)
  {
    v28 ^= v7 ^ 0xC7;
  }

  if ((v23 & 0x10) != 0)
  {
    v28 ^= v8 ^ 0xC7;
  }

  if ((v23 & 0x20) != 0)
  {
    v28 ^= v9 ^ 0xC7;
  }

  v30 = (v25 & 0xF0) == v24;
  v31 = v10 ^ v28 ^ 0xC7;
  if (v30)
  {
    v31 = v28;
  }

  v32 = v23 < 0;
  v33 = *(v20 + 293) ^ 0xC7 ^ v31;
  if (v32)
  {
    v33 = v31;
  }

  *(v18 + 4 * (v13 + 6157 * v4 - ((((v13 + 6157 * v4) * v16) >> 32) >> 12) * v15)) = v33 ^ 0x684FB647;
  return (*(STACK[0x57D8] + 8 * (((v4 == 255) * v12) ^ a4)))();
}

uint64_t sub_1006EEAB0@<X0>(int a1@<W8>)
{
  *v4 = v3;
  *(v3 + 8) = *(v1 + v2);
  *(v1 + v2) = v3;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1006EEB90@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = *(STACK[0x5358] + (LODWORD(STACK[0x5268]) & ((STACK[0x5338] ^ 0x36693BF7) + 1137900835 + (STACK[0x5510] & 0x6CD277E0))));
  v7 = (((v6 + STACK[0x5360]) | 0x8CBC9031F8D48ADFLL) - ((v6 + STACK[0x5360]) | 0x73436FCE072B7520) + 0x73436FCE072B7520) ^ 0x343491E51913E98CLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (v9 + v8 - ((2 * (v9 + v8)) & 0xF508849D07648EDALL) + 0x7A84424E83B2476DLL) ^ 0x424CF32464B72F1ALL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xE580B17D8CC5E551;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0x321B376D6DEE5752) - (v14 + v13) - 0x190D9BB6B6F72BA9) ^ 0xF8AC66ED67A2D2D3;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xDA604B0C03A2BF99;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xFA35E2CDCB3E31C7;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a1;
  v22 = ((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v20, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  v23 = ((v2 | 0x75A94A6CC1C8CA0ELL) - v4 + 0x452B5AC99F1B9AF9) ^ 0x25CA4E281230654;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ v5;
  v26 = (((2 * (v24 + v25)) & 0x2C77B2E41EC0372ELL) - (v24 + v25) + 0x69C4268DF09FE468) ^ 0x510C97E7179A8C1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * ((v28 + v27) ^ 0x236F549B3DD5F96FLL)) | 0x4F83671180B9EFDALL) - ((v28 + v27) ^ 0x236F549B3DD5F96FLL) - 0x27C1B388C05CF7EDLL) ^ 0xE12E566E714CEBD3;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0xFA7920D75BE0DB58) + 0x7D3C906BADF06DACLL) ^ 0x9C9D6D307CA594D6;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xDA604B0C03A2BF99;
  v35 = __ROR8__(v34, 8);
  v36 = v34 ^ __ROR8__(v33, 61);
  v37 = (((2 * (v35 + v36)) | 0x2EE7C39DBF3C82B6) - (v35 + v36) - 0x1773E1CEDF9E415BLL) ^ 0xED46030314A0709CLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a1;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = *(STACK[0x5620] + ((((a2 & 0x6D1E78B0) + (a2 | 0x6D1E78B7) + 220053603) & STACK[0x5460]) & 0xFFFFFFFFFFFFFFF8));
  v43 = (((v42 + STACK[0x56F0]) | 0xC60C68EB10C2DC34) - ((v42 + STACK[0x56F0]) | 0x39F39714EF3D23CBLL) + 0x39F39714EF3D23CBLL) ^ 0x7E84693FF105BF67;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = ((((v41 + v40) | 0xF28D67B9362E651BLL) - ((v41 + v40) | 0xD729846C9D19AE4) + 0xD729846C9D19AE4) ^ 0x6FE6C88985E1060) >> STACK[0x5780];
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x57C0]) ^ v22;
  v46 = (__ROR8__(v43, 8) + v44) ^ 0x38C8B16AE7056877;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) & 0x5546831BB2DDBD9CLL) - (v48 + v47) - 0x2AA3418DD96EDECFLL) ^ 0x30DC0F0FAA54C460;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((v51 + v50) | 0x14BA1B39CCA7B9C8) - ((v51 + v50) | 0xEB45E4C633584637) - 0x14BA1B39CCA7B9C9) ^ 0xF51BE6621DF240B2;
  v53 = v52 ^ __ROR8__(v50, 61);
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5790]) ^ v45;
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xDA604B0C03A2BF99;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xFA35E2CDCB3E31C7;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ a1;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5670]) ^ (((((2 * (v60 + v59)) | 0xC65415B37D521C96) - (v60 + v59) + 0x1CD5F5264156F1B5) ^ 0x175901E810D97B30) >> STACK[0x5378]);
  v61 = (((2 * STACK[0x5170]) | 0x4506505A7C06424CLL) - STACK[0x5170] - 0x2283282D3E032126) ^ 0x9A0B29F9DFC44275;
  v62 = v61 ^ STACK[0x5178];
  v63 = __ROR8__(v61, 8);
  v64 = (v63 + v62 - ((2 * (v63 + v62)) & 0x837542EFF8F7DC46) + 0x41BAA177FC7BEE23) ^ 0x7972101D1B7E8654;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xE580B17D8CC5E551;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0x8643FF6ED3CDDEE0) - (v68 + v67) - 0x4321FFB769E6EF71) ^ 0x5D7FFD13474CE9F5;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((v71 + v70) | 0x560AC16704B56BA9) - ((v71 + v70) | 0xA9F53E98FB4A9456) - 0x560AC16704B56BAALL) ^ 0x8C6A8A6B0717D430;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (((2 * (v74 + v73)) | 0x38412526F384CEA2) - (v74 + v73) - 0x1C20929379C26751) ^ 0xE615705EB2FC5696;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ a1;
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5740]) ^ (((__ROR8__(v77, 8) + (v77 ^ __ROR8__(v76, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5700]);
  v78 = *(STACK[0x5258] + (((LODWORD(STACK[0x5190]) | 0xDA75FD43) - 1929299335 + (STACK[0x52B0] ^ 0x2B823427 ^ (v3 + 2046790613) & 0xBF477D7B)) & LODWORD(STACK[0x5250])));
  v79 = __ROR8__((v78 + STACK[0x52C0]) ^ 0xB88801D4E1C76353, 8);
  v80 = (v78 + STACK[0x52C0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v78, 61);
  v81 = (((2 * (v79 + v80)) | 0x1483E7B665F3732ALL) - (v79 + v80) - 0xA41F3DB32F9B995) ^ 0x328942B1D5FCD1E2;
  v82 = __ROR8__(v81, 8);
  v83 = v81 ^ __ROR8__(v80, 61);
  v84 = (v82 + v83 - ((2 * (v82 + v83)) & 0x7070FFD9CF3FDD46) - 0x47C780131860115DLL) ^ 0x5DB8CE916B5A0BF2;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xE1A1FD5BD155F97ALL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xDA604B0C03A2BF99;
  v89 = __ROR8__(v88, 8);
  v90 = v88 ^ __ROR8__(v87, 61);
  v91 = (((v89 + v90) | 0x65F6D61EC83C6EB3) - ((v89 + v90) | 0x9A0929E137C3914CLL) - 0x65F6D61EC83C6EB4) ^ 0x9FC334D303025F74;
  v92 = __ROR8__(v91, 8);
  v93 = v91 ^ __ROR8__(v90, 61);
  LODWORD(STACK[0x5398]) = LODWORD(STACK[0x5328]) ^ (((__ROR8__((((2 * (v92 + v93)) | 0x35D81465B5A4857ELL) - (v92 + v93) - 0x1AEC0A32DAD242BFLL) ^ 0xC81C06D4FA379111, 8) + ((((2 * (v92 + v93)) | 0x35D81465B5A4857ELL) - (v92 + v93) - 0x1AEC0A32DAD242BFLL) ^ 0xC81C06D4FA379111 ^ __ROR8__(v93, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x52F0]);
  STACK[0x52F8] = 43;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_1006EFB10()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x75D0] = 0;
  return (*(v1 + 8 * (v0 - 16592)))(v2);
}

uint64_t sub_1006EFB40()
{
  LODWORD(STACK[0x5DAC]) = v0;
  v2 = STACK[0x57D8];
  STACK[0xBE28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x3A87 ^ (v1 + 9071))))(0x1C64917143BAF700);
}

uint64_t sub_1006EFBB0()
{
  v0 = LODWORD(STACK[0xD1C4]) + 1;
  LODWORD(STACK[0x8B2C]) = STACK[0xDCE0];
  LODWORD(STACK[0xCB74]) = v0;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2AD0])))();
}

uint64_t sub_1006EFBFC()
{
  v0 = STACK[0x57D8];
  v1 = STACK[0xEF8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * STACK[0xEF8]);
  return (*(v0 + 8 * ((v1 + 4403) ^ v1)))();
}

uint64_t sub_1006EFCA8(uint64_t a1)
{
  v2 = *(STACK[0xBE00] - 0x683CBC57EAB92A3ELL);
  STACK[0xA280] = 0;
  STACK[0x9AB0] = 0;
  return (*(STACK[0x57D8] + 8 * (((v2 == a1) * (((929 * (v1 ^ 0x64E1) + 371908973) & 0xE9D51FD5) - 1716)) ^ v1)))();
}

uint64_t sub_1006EFD6C@<X0>(int a1@<W8>)
{
  v10 = *(v9 + a1 * v7 + 8698028 - 5816 * (((((a1 * v7 + 8698028) >> 3) * v6) >> 32) >> 7));
  v11 = (((v10 ^ 0x540DC6CA) - 1410189002) ^ (((v1 - 23124) | 0x2840) - 1875079355 + (v10 ^ 0x6FC3387A)) ^ ((v10 ^ 0x3BCEFE77) - 1003421303)) * v2 + 21752681;
  v12 = *(v8 + 4 * (v11 - (((v11 * v5) >> 32) >> 12) * v4));
  v13 = HIBYTE(v12);
  v14 = (BYTE1(v12) ^ 0xB6) * v7 + 6213569;
  v15 = BYTE2(v12) ^ 0x4F;
  v16 = (((v12 ^ 0xE5369D69) - 2046695980) ^ ((v12 ^ 0xB673DB8E) - 716922059) ^ ((v12 ^ 0x5345466D) + 812793560)) * v7 + 100665542;
  v17 = (((v13 ^ 0xAD286CF0) + 1387442311) ^ ((v13 ^ 0xE9E7952) - 251353819) ^ ((v13 ^ 0xA3B615CA) + 1546439101)) * v7 + 2042401100;
  v18 = *(v9 + v14 - 5816 * (((11815591 * v14) >> 32) >> 4));
  v19 = *(v9 + v15 * v7 + 6213569 - 5816 * (((11815591 * (v15 * v7 + 6213569)) >> 32) >> 4)) << 8;
  v20 = *(v9 + v16 - 5816 * ((((v16 >> 3) * v6) >> 32) >> 7));
  *(v8 + 4 * (a1 * v2 + 9469466 - ((((a1 * v2 + 9469466) * v5) >> 32) >> 12) * v4)) = (((((((v19 ^ 0xFF20DA) & ((*(v9 + v17 - 5816 * ((((v17 >> 3) * v6) >> 32) >> 7)) << 16) ^ 0x77E7DA) | v19 & 0x1800) ^ 0xE73541) & (v18 ^ (v3 + 60)) ^ v18 & 0x64) << 8) ^ 0x2E1425B6) & (v20 ^ 0xFFFFFF30) | v20 & 0x49) ^ 0x11894C7D;
  return (*(STACK[0x57D8] + 8 * ((4750 * (a1 == 255)) ^ v1)))();
}

uint64_t sub_1006F0014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *STACK[0x5600] = a4;
  *STACK[0x5610] = STACK[0x55F0];
  return (*(STACK[0x57D8] + 8 * v4))(a1, a2, STACK[0x5640]);
}

uint64_t sub_1006F0190()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 - 7366)))(v2);
}

uint64_t sub_1006F0210()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0xCAA0]);
  STACK[0xCAA0] = 0;
  return (*(v0 + 8 * SLODWORD(STACK[0x150C])))(v1);
}

uint64_t sub_1006F03F0()
{
  v2 = *(v0 + 295);
  v3 = *(v0 + 2200);
  v4 = v3 & 0xFFFFFFF8;
  v5 = *STACK[0x51E8];
  v6 = *STACK[0x51F0];
  v7 = *(v6 + ((((((2 * ((v3 & 0xFFFFFFF8) + 1412334649)) & 0xCF2B7002) + (((v3 & 0xFFFFFFF8) + 1412334649) ^ 0xE795B803)) & 0xFFFFFFF8) + 1460403312) & v5));
  v8 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (v7 + v8) ^ 0xC2AF3EAA3FF1B8E4;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x6FF046966119128DLL;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v12, 61);
  v16 = (((2 * (v14 + v15)) | 0x4CA037A1A8FBC842) - (v14 + v15) - 0x26501BD0D47DE421) ^ 0x87E28615030BF70ALL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v1;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xD8C7B31FCA19D9DELL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x5DA6431B724EAA3ELL) - (v22 + v21) - 0x2ED3218DB927551FLL) ^ 0x7A8620A333969690;
  LOBYTE(v3) = 8 * (v3 & 7);
  *(v0 + 1863) = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v21, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3) ^ v2;
  v24 = *(v6 + (v5 & (v4 - 1831847764) & 0xFFFFFFF8));
  v25 = __ROR8__((v24 + v8) ^ 0xC2AF3EAA3FF1B8E4, 8);
  v26 = (v24 + v8) ^ 0xC2AF3EAA3FF1B8E4 ^ __ROR8__(v24, 61);
  v27 = (v25 + v26) ^ 0x65F254DD188DB4FCLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (0xF92243808F2186A3 - ((v29 + v28) | 0xF92243808F2186A3) + ((v29 + v28) | 0x6DDBC7F70DE795CLL)) ^ 0x692DFAE911C76BD1;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (0x31F0BAACC77C179BLL - ((v32 + v31) | 0x31F0BAACC77C179BLL) + ((v32 + v31) | 0xCE0F45533883E864)) ^ 0x6FBDD896EFF5FB4FLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) & 0xE6E1537131864C65 ^ 0xA6C1400100860461) + ((v35 + v34) ^ 0x492A9378BB19D996) - (((v35 + v34) ^ 0x492A9378BB19D996) & 0xE6E1537131864C65)) ^ 0x40CFE0487F7ADD1FLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0x826B0DF118A6F0D2) - (v38 + v37) + 0x3ECA790773AC8796) ^ 0xE60DCA18B9B55E48;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v41 + v40 - ((2 * (v41 + v40)) & 0xC728E75C61262028) - 0x1C6B8C51CF6CEFECLL) ^ 0xB7C17280BA22D39BLL;
  **(v0 + 2184) = *(v0 + 2199) ^ v2 ^ (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v40, 61))) ^ 0x6F4F60BC0E025EE0) >> v3);
  v43 = *(v0 + 3920) + 19;
  *(v0 + 296) = v43;
  v44 = STACK[0x57D8];
  v45 = *(STACK[0x57D8] + 8 * (STACK[0x4D40] + 3175));
  *(v0 + 2208) = v43;
  *(v0 + 280) = v45;
  return (*(v44 + 8 * (LODWORD(STACK[0x4D50]) ^ 0x7B10)))();
}

uint64_t sub_1006F07E0@<X0>(uint64_t a1@<X4>, int a2@<W6>, int a3@<W7>, unsigned int a4@<W8>)
{
  v6 = STACK[0x8288] + a4;
  v7 = STACK[0x51E8];
  v8 = STACK[0x51F0];
  v9 = *STACK[0x51E8] & 0xFFFFFFF8;
  v10 = *(*STACK[0x51F0] + (v9 & ((v6 & 0xFFFFFFF8) - 103642732)));
  v11 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = (v11 + v10) ^ a1;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = __ROR8__((v14 + v13 - (((v14 + v13) << (v4 - 108)) & 0x44B205296C62E45ELL) - 0x5DA6FD6B49CE8DD1) ^ 0xB76B407A8AC11866, 8);
  v16 = (v14 + v13 - (((v14 + v13) << (v4 - 108)) & 0x44B205296C62E45ELL) - 0x5DA6FD6B49CE8DD1) ^ 0xB76B407A8AC11866 ^ __ROR8__(v13, 61);
  v17 = (v15 + v16) ^ 0x2275D4C73835399BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xE5AF1AB32EBD3CDDLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((((2 * (v21 + v20)) & 0x5D0339B52D714D82) - (v21 + v20) - 0x2E819CDA96B8A6C2) ^ 0x16A3AAD3A502EE1FLL, 8);
  v23 = (((2 * (v21 + v20)) & 0x5D0339B52D714D82) - (v21 + v20) - 0x2E819CDA96B8A6C2) ^ 0x16A3AAD3A502EE1FLL ^ __ROR8__(v20, 61);
  v24 = (v22 + v23) ^ 0xA82620A559D2DA78;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5F8DEC3EA3980A1BLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  LOBYTE(v26) = 8 * (v6 & 7);
  v29 = ((0x5DD5A0355FA139A1 - ((v28 + v27) | 0x5DD5A0355FA139A1) + ((v28 + v27) | 0xA22A5FCAA05EC65ELL)) ^ 0x63E99718049B8E76) >> v26;
  v30 = *(*STACK[0x51F0] + (v9 & ((v6 & 0xFFFFFFF8) - 103642729)));
  v31 = (v30 + v11) ^ a1;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v5;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x2275D4C73835399BLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xE5AF1AB32EBD3CDDLL;
  v38 = __ROR8__(v37, 8);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = (v38 + v39 - ((2 * (v38 + v39)) & 0x1070743953A4DE48) + 0x8383A1CA9D26F24) ^ 0xCFE5F3EA6597D805;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xA82620A559D2DA78;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x5F8DEC3EA3980A1BLL;
  v45 = __ROR8__(v44, 8);
  v46 = __ROR8__(v43, 61);
  *v6 ^= (((0x3EAB50B1EE29ED53 - ((v45 + (v44 ^ v46)) | 0x3EAB50B1EE29ED53) + ((v45 + (v44 ^ v46)) | 0xC154AF4E11D612ACLL)) ^ 0x97679CB5135A84) >> v26) ^ 0x36 ^ v29;
  v47 = STACK[0x6650] + a4;
  v48 = *(v47 + 112);
  v47 += 112;
  v49 = *(*v8 + (*v7 & ((v47 & 0xFFFFFFF8) - 103642729) & 0xFFFFFFF8));
  v50 = __ROR8__(v47 & 0xFFFFFFFFFFFFFFF8, 8);
  v51 = (((2 * (v50 + v49)) | 0xA40F0290B45AE192) - (v50 + v49) + 0x2DF87EB7A5D28F37) ^ 0x2611D001C5734CAELL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v5;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (v55 + v54 - ((2 * (v55 + v54)) & 0xE5ADFF2E851C4D72) + 0x72D6FF97428E26B9) ^ 0x50A32B507ABB1F22;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = __ROR8__(v56, 8);
  v59 = __ROR8__((v58 + v57 - ((2 * (v58 + v57)) & 0x43FA0C02127FD4BCLL) - 0x5E02F9FEF6C015A2) ^ 0x44521CB22782D683, 8);
  v60 = (v58 + v57 - ((2 * (v58 + v57)) & 0x43FA0C02127FD4BCLL) - 0x5E02F9FEF6C015A2) ^ 0x44521CB22782D683 ^ __ROR8__(v57, 61);
  v61 = (v59 + v60) ^ 0xC7DDC9F6CC45B721;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xA82620A559D2DA78;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((v65 + v64) ^ 0x59B168C348553993) - ((2 * ((v65 + v64) ^ 0x59B168C348553993)) & 0x2BD6869A3B45BA6CLL) - 0x6A14BCB2E25D22CALL) ^ 0x93D7C7B0F66FEEBELL;
  v67 = *(*v8 + (((((v47 & 0xFFFFFFF8 ^ (a3 + 1525)) - (a2 & (2 * (v47 & 0xFFFFFFF8)) ^ (a2 + 2))) & 0xFFFFFFF8) + 2134312328) & *v7));
  v68 = (v67 + v50 - ((2 * (v67 + v50)) & 0xC1FA0A93EB4FB27ALL) - 0x1F02FAB60A5826C3) ^ 0x14EB54006AF9E55ALL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((2 * (v70 + v69)) & 0x2759CC04105C5E94) - (v70 + v69) - 0x13ACE602082E2F4BLL) ^ 0xF9615B13CB21BAFCLL;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x2275D4C73835399BLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xE5AF1AB32EBD3CDDLL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0xC7DDC9F6CC45B721;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (0x1B51BC218286D20BLL - ((v79 + v78) | 0x1B51BC218286D20BLL) + ((v79 + v78) | 0xE4AE43DE7D792DF4)) ^ 0x4C88637B24ABF78CLL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x5F8DEC3EA3980A1BLL;
  *v47 = v48 ^ (((__ROR8__(v82, 8) + (v82 ^ __ROR8__(v81, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v47 & 7u))) ^ 0x5C ^ (((__ROR8__(v66, 8) + (v66 ^ __ROR8__(v64, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v47 & 7u)));
  return (*(STACK[0x57D8] + 8 * v4))();
}

uint64_t sub_1006F0F38()
{
  STACK[0x5FE8] = STACK[0x6B98];
  LODWORD(STACK[0xB8AC]) = v1 + 1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1006F0F70@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v7 = LODWORD(STACK[0x5030]) - 2 * LODWORD(STACK[0x54D0]);
  v8 = STACK[0x50A8] & LODWORD(STACK[0x5520]);
  LODWORD(STACK[0x50A8]) = LODWORD(STACK[0x4FF8]) - LODWORD(STACK[0x5038]);
  LODWORD(STACK[0x5038]) = LODWORD(STACK[0x4FF0]) - LODWORD(STACK[0x5028]);
  LODWORD(STACK[0x5520]) = LODWORD(STACK[0x50F8]) ^ LODWORD(STACK[0x5480]) ^ a2;
  v9 = LODWORD(STACK[0x5100]) + LODWORD(STACK[0x5138]) + LODWORD(STACK[0x5098]) + LODWORD(STACK[0x50F0]);
  LODWORD(STACK[0x5590]) = LODWORD(STACK[0x50D0]) ^ (LODWORD(STACK[0x5590]) - LODWORD(STACK[0x5020]));
  v10 = LODWORD(STACK[0x5010]) - LODWORD(STACK[0x5018]);
  LODWORD(STACK[0x50F8]) = LODWORD(STACK[0x5000]) - LODWORD(STACK[0x5008]);
  v11 = STACK[0x53F8];
  if ((STACK[0x57B0] & 2) == 0)
  {
    v11 = STACK[0x5580];
  }

  LODWORD(STACK[0x5100]) = v11;
  LODWORD(STACK[0x5138]) = LODWORD(STACK[0x57C0]) ^ ~v8;
  LODWORD(STACK[0x5480]) = LODWORD(STACK[0x5068]) - LODWORD(STACK[0x51B0]);
  LODWORD(STACK[0x5780]) ^= 0xDC51EF6C;
  v12 = LODWORD(STACK[0x50D8]) ^ LODWORD(STACK[0x5070]) ^ 0x56539DFA;
  LODWORD(STACK[0x50D0]) = LODWORD(STACK[0x5630]) >> 6;
  LODWORD(STACK[0x5580]) = v9 + 1;
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x5048]) + LODWORD(STACK[0x50C8]) + v12 + 1;
  LODWORD(STACK[0x5510]) ^= LODWORD(STACK[0x5040]) ^ LODWORD(STACK[0x5058]) ^ LODWORD(STACK[0x5050]) ^ LODWORD(STACK[0x54F0]) ^ 0x191BC0AA ^ (a7 + 1390756091) & 0xAD1AFFFF;
  LODWORD(STACK[0x53F8]) = LODWORD(STACK[0x50A0]) - LODWORD(STACK[0x5060]);
  LODWORD(STACK[0x54F0]) = LODWORD(STACK[0x5460]) ^ 0xA4A4A4A4;
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5090]) ^ 0x9908D3D4 ^ v7;
  LODWORD(STACK[0x50F0]) = LODWORD(STACK[0x5130]) ^ 0x901E5D27 ^ LODWORD(STACK[0x5088]) ^ LODWORD(STACK[0x5080]) ^ v10;
  v13 = ((LODWORD(STACK[0x56E0]) ^ 0xE086E065) - 857599065) ^ ((LODWORD(STACK[0x56E0]) ^ 0x4D121DD6) + 1635184150) ^ ((LODWORD(STACK[0x56E0]) ^ 0xAF5BB50E) - 2093005106);
  return (*(STACK[0x57D8] + 8 * a7))(a1, v13, (v13 + 1625401935), a3, a4, a5, a6, 357920410);
}

uint64_t sub_1006F1454()
{
  v2 = *(v0 + 2832);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8 ^ 0x4AB1FFC7) + 1209940197 + ((2 * (v2 & 0xFFFFFFF8)) & 0x9563FF80))) & 0xFFFFFFFFFFFFFFF8));
  v4 = (v3 + __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = __ROR8__((v8 + v7 - ((2 * (v8 + v7)) & 0x156AB16D0823BFAELL) + 0xAB558B68411DFD7) ^ 0x65451E20E508CD5ALL, 8);
  v10 = (v8 + v7 - ((2 * (v8 + v7)) & 0x156AB16D0823BFAELL) + 0xAB558B68411DFD7) ^ 0x65451E20E508CD5ALL ^ __ROR8__(v7, 61);
  v11 = (((v9 + v10) & 0x4DBE1A1AF77C3866 ^ 0xD82000AA32C2022) + ((v9 + v10) ^ 0x503C3FB45CD1DF44) - (((v9 + v10) ^ 0x503C3FB45CD1DF44) & 0x4DBE1A1AF77C3866)) ^ 0xBC30B86B7CDBF409;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ v1;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = __ROR8__(v15, 8);
  v17 = v15 ^ __ROR8__(v14, 61);
  v18 = (((2 * (v16 + v17)) & 0x699EE912BBD46D66) - (v16 + v17) + 0x4B308B76A215C94CLL) ^ 0x1F658A5828A40AC3;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  LODWORD(v18) = 3903 * ((((((2 * ((v20 + v19) ^ 0xF86384EB725E1B0CLL)) & 0x2AF9BDE1422C018ALL) - ((v20 + v19) ^ 0xF86384EB725E1B0CLL) + 0x6A83210F5EE9FF3ALL) ^ 0xFDAFC55822B5BAD6) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 4008381;
  v21 = *(v0 + 4008);
  v22 = *(v21 + v18 - 5896 * (((1456909 * v18) >> 32) >> 1));
  v23 = *(v0 + 4000);
  v23[38796] = v22;
  v24 = *(v0 + 3976);
  v25 = __ROR8__((v24 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((0x70824D863E123F42 - v25) & 0x58E69967DF994F7BLL) + v25 - 0x70824D863E123F43 - ((v25 - 0x70824D863E123F43) & 0x58E69967DF994F7BLL);
  v27 = v26 ^ 0x8B6172702688B00DLL;
  v26 ^= 0xF08CE1BE29E6B5E1;
  v28 = (__ROR8__(v27, 8) + v26) ^ 0x3A7C64F71FBFC65BLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xFBC18F8B9568C440;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x4AE5CE6F63977933;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (0x11975DB9DBCA4C07 - ((v34 + v33) | 0x11975DB9DBCA4C07) + ((v34 + v33) | 0xEE68A2462435B3F8)) ^ 0xC63C691CAFEE30EFLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xF7721CC6F3AEFBDCLL;
  v38 = __ROR8__(v37, 8);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = (((2 * (v38 + v39)) | 0xE55BC504D9C8F9C4) - (v38 + v39) - 0x72ADE2826CE47CE2) ^ 0x941AF5B8F7CFCCBFLL;
  v41 = 3903 * ((((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ 0x94AC86FF716F8E22) >> (8 * ((v24 + 5) & 7))) ^ *(v24 + 5)) + 4008381;
  v23[35474] = *(v21 + v41 - 5896 * (((1456909 * v41) >> 32) >> 1));
  v42 = *(v24 + 12);
  v24 += 12;
  v43 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = (v43 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL;
  v45 = (__ROR8__((v43 - 0x70824D863E123F43) ^ 0xD387EB17F911FF76, 8) + v44) ^ 0x3A7C64F71FBFC65BLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xFBC18F8B9568C440;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x4AE5CE6F63977933;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0xAE23A08DF2682F6ELL) - 0x28EE2FB906CBE849) ^ 0xFF451B1C72EF94A0;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (0x690772E2A79F2AD7 - ((v54 + v53) | 0x690772E2A79F2AD7) + ((v54 + v53) | 0x96F88D1D5860D528)) ^ 0x618A91DBABCE2EF4;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) | 0x5DA7F43B1CD1EBC2) - (v57 + v56) - 0x2ED3FA1D8E68F5E1) ^ 0xC864ED27154345BCLL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  LODWORD(v24) = (((0x30B0E49EE7A51615 - ((v60 + v59) | 0x30B0E49EE7A51615) + ((v60 + v59) | 0xCF4F1B61185AE9EALL)) ^ 0x5BE39D9E693567C8) >> (8 * (v24 & 7u))) ^ v42;
  v23[37467] = *(v21 + 3903 * v24 + 4008381 - 5896 * (((1456909 * (3903 * v24 + 4008381)) >> 32) >> 1));
  v61 = *(v0 + 3984) + 20;
  *(v0 + 296) = v61;
  v62 = STACK[0x57D8];
  v63 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D50]) ^ 0x7BB9));
  *(v0 + 2840) = v61;
  *(v0 + 280) = v63;
  return (*(v62 + 8 * (STACK[0x51B8] + 8890)))();
}

uint64_t sub_1006F1AFC@<X0>(unsigned int a1@<W8>)
{
  STACK[0x7ED8] = a1 ^ v2 ^ (STACK[0x7ED8] - 128);
  v4 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v3;
  STACK[0x6230] = v4;
  LODWORD(STACK[0x6974]) = -519798710;
  return (*(STACK[0x57D8] + 8 * (v1 - 17575)))();
}

uint64_t sub_1006F1BF4()
{
  *(v2 + 592) = 0;
  *(v2 + 600) = (v1 - 1723121882) ^ (1917435887 * (v0 ^ 0xE6BB5B06));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 + 21067)))(v3 - 240);
  v7 = *STACK[0x4270] == ((v1 - 9655) ^ 0x42E) && *STACK[0x4420] != 0;
  return (*(v4 + 8 * ((25 * v7) ^ v1)))(v5);
}

uint64_t sub_1006F1CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x51B8] - 2804;
  v9 = STACK[0x8E30];
  v10 = STACK[0x57D8];
  v11 = STACK[0x41B0];
  STACK[0x5F68] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x41B0]));
  return (*(v10 + 8 * (v8 - 12156 + v11)))(a1, v9, a3, a4, a5, a6, a7, v7);
}

void *sub_1006F1D14()
{
  v1 = STACK[0x57D8];
  STACK[0xC288] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 977638374) & 0xC5BA69F5) + 1847) | v0)))(&STACK[0x7A24]);
}

uint64_t sub_1006F1D70()
{
  v3 = *(v1 + 3728);
  *v3 = 0xD38CBDD3ACAFF84ALL;
  v3[4] = 0;
  v3[5] = 0;
  v4 = *(v2 + 4) == ((6 * (v0 ^ 0x56B6)) ^ (2 * v0) ^ 0xE848);
  return (*(STACK[0x57D8] + 8 * (((8 * v4) | (16 * v4)) ^ v0)))();
}

uint64_t sub_1006F1DD0@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0xB3F0] + v1;
  STACK[0x8220] = a1;
  LODWORD(STACK[0xA17C]) = v3;
  STACK[0xB7B8] = v4;
  return (*(STACK[0x57D8] + 8 * ((((((v2 + 58792907) ^ (v4 == 0)) & 1) == 0) * ((v2 - 586) ^ 0x2221)) | v2)))();
}

uint64_t sub_1006F1E5C()
{
  v1 = STACK[0x2DC4];
  LODWORD(STACK[0x1D4C0]) = (LODWORD(STACK[0x2DC4]) - 1572722938) ^ (1097177827 * ((((v0 - 240) | 0x28CA6A9) - ((v0 - 240) & 0x28CA6A9)) ^ 0x461FF0C0));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 - 1572717761)))(v0 - 240);
  return (*(v2 + 8 * ((63119 * (v1 < ((v1 - 1572748837) | 0x10AD) + 719658502)) ^ (v1 - 1572728498))))(v3);
}

uint64_t sub_1006F1F24()
{
  v1 = *(v0 + 3640);
  v2 = *(v0 + 3636);
  *(v0 + 3648) = v2;
  *(v0 + 3652) = v2 + 21263;
  *(v0 + 3656) = --v1;
  v3 = *(v0 + 4416) + v1;
  *(v0 + 3664) = v3;
  *(v0 + 296) = v3;
  v4 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (v2 + 21784));
  return (*(v4 + 8 * (v2 + 21569)))();
}

uint64_t sub_1006F1F80()
{
  LODWORD(STACK[0x631C]) = v1;
  v2 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * ((v0 + 4410) ^ v0)))();
}

uint64_t sub_1006F1FCC()
{
  v2 = *(v0 + 952);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v4 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v3) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) | 0x37E8822863F1CF52) - (v10 + v9) + 0x640BBEEBCE071857) ^ 0x3A46DCD1E68EF482 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__((((2 * (v10 + v9)) | 0x37E8822863F1CF52) - (v10 + v9) + 0x640BBEEBCE071857) ^ 0x3A46DCD1E68EF482, 8) + v11) ^ v1;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (0xC1BEF07A1308F841 - ((v14 + v13) | 0xC1BEF07A1308F841) + ((v14 + v13) | 0x3E410F85ECF707BELL)) ^ 0xE686BC9A26EEDE60;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x5455012E8AB1C38FLL;
  v18 = 5621 * ((((__ROR8__(v17, 8) + (v17 ^ __ROR8__(v16, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 32028458;
  v19 = STACK[0xDCB8];
  *(v19 + 5568) = *(v19 + v18 - 6152 * (((89362129 * v18) >> 32) >> 7));
  *(v19 + 2860) = *(v0 + 468);
  return (*(STACK[0x57D8] + 8 * *(v0 + 444)))(&STACK[0xEED0]);
}

uint64_t sub_1006F2238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *(a5 - 1) = a8;
  *a5 = a8;
  return (*(a7 + 8 * (((a4 == 0) * a6) ^ v8)))(a1, a2, a3, a4 - 16, a5 + 2);
}

uint64_t sub_1006F2260()
{
  v3 = *(v0 + 904);
  v4 = STACK[0x51E8];
  v5 = STACK[0x51F0];
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + (((v3 & 0xFFFFFFF8 ^ 0x267607D9) - 1186578298 + ((2 * (v3 & 0xFFFFFFF8)) | 0xB313F04D)) & v7));
  v9 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (0x6F5C59DF1C91B857 - ((v9 + v8) ^ 0xBA2BC3205D78ACEELL | 0x6F5C59DF1C91B857) + ((v9 + v8) ^ 0xBA2BC3205D78ACEELL | 0x90A3A620E36E47A8)) ^ 0xE8275BAA81E753A2;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x65F254DD188DB4FCLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x6FF046966119128DLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (0xB1BB8EB5DE912C53 - ((v16 + v15) | 0xB1BB8EB5DE912C53) + ((v16 + v15) | 0x4E44714A216ED3ACLL)) ^ 0xEFF6EC8FF618C087;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v1;
  v20 = __ROR8__(v19, 8);
  v21 = v19 ^ __ROR8__(v18, 61);
  v22 = (((v20 + v21) ^ 0xCEC5D9E3B3B414F8) - ((2 * ((v20 + v21) ^ 0xCEC5D9E3B3B414F8)) & 0x958E7DDE16686B6) + 0x4AC73EEF0B3435BLL) ^ 0x12AE1912891E8E7DLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x985F7B79F4538EELL) - (v24 + v23) + 0x7B3D0424305D6389) ^ 0xD097FAF545135FF8;
  v26 = __ROR8__(v25, 8);
  v27 = __ROR8__(v23, 61);
  LODWORD(v25) = 5621 * ((((0xB1AED59035E0C012 - ((v26 + (v25 ^ v27)) | 0xB1AED59035E0C012) + ((v26 + (v25 ^ v27)) | 0x4E512A6FCA1F3FEDLL)) ^ 0x211E4AD3C41D610DLL) >> (8 * (v3 & 7u))) ^ *(v0 + 295)) + 32028458;
  v28 = STACK[0xDCB8];
  *(v28 + 4195) = *(v28 + v25 - 6152 * (((89362129 * v25) >> 32) >> 7));
  v29 = STACK[0xDCA8];
  v30 = STACK[0xDCA8] + 1;
  v31 = *(v6 + (((v30 & 0xC3ADF328) + (v30 & 0x3C520CD0 | 0xC3ADF32A) + 456181439) & v7));
  v32 = (__ROR8__(v30 & 0xFFFFFFFFFFFFFFF8, 8) + v31) ^ 0x91364DCB68334DBLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (0xB0A472E4F0FFED9CLL - ((v34 + v33) | 0xB0A472E4F0FFED9CLL) + ((v34 + v33) | 0x4F5B8D1B0F001263)) ^ 0xBD6E277A811CA36;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0x88EEFA7171378B3ELL) - (v37 + v36) - 0x44777D38B89BC59FLL) ^ 0xB18583EBB031E7E7;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) & 0x5CA32FAFE7738EEALL) - (v40 + v39) - 0x2E5197D7F3B9C776) ^ 0xB6FD06E8F7CD6C17;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v2;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x24734B65A1E08459;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (v47 + v46 - ((2 * (v47 + v46)) & 0x3334837C3683CA06) + 0x199A41BE1B41E503) ^ 0x59538E5427842EE2;
  LODWORD(v46) = 5621 * ((((__ROR8__(v48, 8) + (v48 ^ __ROR8__(v46, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> (8 * (v30 & 7u))) ^ *v30) + 32028458;
  *(v28 + 4817) = *(v28 + v46 - 6152 * (((89362129 * v46) >> 32) >> 7));
  v49 = *(v29 + 11);
  v29 += 11;
  v50 = *(*v5 + ((((((2 * (v29 & 0xFFFFFFF8)) & 0x8739130) + (v29 & 0xFFFFFFF8 ^ 0x439C899)) & 0xFFFFFFF8) - 626724528) & *v4));
  v51 = (v50 + __ROR8__(v29 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x91364DCB68334DBLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x448D6F6CA711D855;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xF5F2FED308AA2278;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x67536EC0FB8B549DLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = __ROR8__((((2 * (v59 + v58)) | 0xAB167E565DC70846) - (v59 + v58) + 0x2A74C0D4D11C7BDDLL) ^ 0x2D0C7A75A6F30E2FLL, 8);
  v61 = (((2 * (v59 + v58)) | 0xAB167E565DC70846) - (v59 + v58) + 0x2A74C0D4D11C7BDDLL) ^ 0x2D0C7A75A6F30E2FLL ^ __ROR8__(v58, 61);
  v62 = (((2 * (v60 + v61)) & 0xE758D52966BF30CLL) - (v60 + v61) - 0x73AC6A94B35F987) ^ 0xDCB67233152A8220;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) & 0xA808D70AB357B4C8) - (v64 + v63) + 0x2BFB947AA654259BLL) ^ 0x6B325B909A91EE7ALL;
  LODWORD(v29) = (((__ROR8__(v65, 8) + (v65 ^ __ROR8__(v63, 61))) ^ 0x6F635C2EE5D7D2C6) >> (8 * (v29 & 7u))) ^ v49;
  v66 = STACK[0xDCB8];
  *(v66 + 1851) = *(v66 + 5621 * v29 + 32028458 - 6152 * (((89362129 * (5621 * v29 + 32028458)) >> 32) >> 7));
  *(v66 + 1578) = *(v0 + 469);
  v67 = STACK[0xDCA0];
  *(v0 + 912) = STACK[0xDCA0];
  v67 += 6;
  *(v0 + 920) = v67;
  *(v0 + 296) = v67;
  v68 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9021));
  return (*(v68 + 8 * (*(v0 + 3796) ^ 0x2346)))();
}

uint64_t sub_1006F29F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  STACK[0xCF0] = STACK[0x1568];
  LODWORD(STACK[0x1324]) = STACK[0x1534];
  return (*(v53 + 8 * (((LODWORD(STACK[0x1434]) == -143113071) * ((((a53 - 1332756468) | 0x7408211) ^ 0x482F410E) + a53 + 2768)) ^ a53)))();
}

uint64_t sub_1006F2AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = STACK[0x57D8];
  STACK[0x55E0] = *(STACK[0x57D8] + 8 * v4);
  return (*(v7 + 8 * (((v6 == 230215470) * ((((v5 - 13040) | 0x4804) ^ 0xFFFFB9DB) + v5 - 8317)) ^ v5)))(0x7727121FF831A554, 0x51FC477E33DE4033, -2, a4, 0xE0B6541E4935D63, 0xBBDDD09497F7C98DLL, 0xD882371E60A30A6DLL, 0x74498AD18CE3008);
}

uint64_t sub_1006F2D50()
{
  v3 = *(v0 + 295);
  *(v0 + 1784) = v3;
  v4 = *(v0 + 2016);
  v5 = v4 & 0xFFFFFFF8;
  v6 = 2 * (v4 & 0xFFFFFFF8);
  v7 = *STACK[0x51F0];
  v8 = *STACK[0x51E8] & 0xFFFFFFF8;
  v9 = *(v7 + (v8 & ((v4 & 0xFFFFFFF8 ^ 0xF26EC880) - 1604227028 + (v6 & 0xE4DD9100))));
  v10 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (v9 + v10) ^ 0xC2AF3EAA3FF1B8E4;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x65F254DD188DB4FCLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x6FF046966119128DLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((((2 * (v17 + v16)) & 0xE029D1161DACE38) - (v17 + v16) + 0x78FEB1774F1298E3) ^ 0xD94C2CB298648BC8, 8);
  v19 = (((2 * (v17 + v16)) & 0xE029D1161DACE38) - (v17 + v16) + 0x78FEB1774F1298E3) ^ 0xD94C2CB298648BC8 ^ __ROR8__(v16, 61);
  v20 = (0x73A0C8DE5B741078 - ((v18 + v19) | 0x73A0C8DE5B741078) + ((v18 + v19) | 0x8C5F3721A48BEF87)) ^ 0x635B1760516EA76BLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xD8C7B31FCA19D9DELL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x5455012E8AB1C38FLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  LOBYTE(v4) = 8 * (v4 & 7);
  v27 = ((0x427BA496F4666C54 - ((v26 + v25) | 0x427BA496F4666C54) + ((v26 + v25) | 0xBD845B690B9993ABLL)) ^ 0xD2CB3BD5059BCD4BLL) >> v4;
  v28 = STACK[0x8070];
  LOBYTE(v18) = *(STACK[0x8070] + 9141);
  *(v0 + 1785) = v27;
  v29 = *(v7 + (v8 & ((v5 ^ 0x8BA0B392) + 120554778 + (v6 & 0x17416720))));
  v30 = (v29 + v10) ^ 0xC2AF3EAA3FF1B8E4;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x65F254DD188DB4FCLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0xC781B02BE8B63DELL) - 0x79C3F27EA0BA4E11) ^ 0xE9CC4B173E5CA362;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xA1B29DC5D776132BLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v2;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (0x6D2018338C0B5393 - ((v41 + v40) | 0x6D2018338C0B5393) + ((v41 + v40) | 0x92DFE7CC73F4AC6CLL)) ^ 0x4A1854D3B9ED75B2;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x5455012E8AB1C38FLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  *(v28 + 9141) = v3 ^ v18 ^ (((v46 + v45 - ((2 * (v46 + v45)) & 0x515A791821749A5ELL) + 0x28AD3C8C10BA4D2FLL) ^ 0x47E25C301EB813CFuLL) >> v4);
  v47 = *(v0 + 3920) + 7;
  *(v0 + 296) = v47;
  v48 = STACK[0x57D8];
  v49 = *(STACK[0x57D8] + 8 * (v1 + 10018));
  *(v0 + 2024) = v47;
  *(v0 + 280) = v49;
  return (*(v48 + 8 * (STACK[0x51B8] + 8890)))();
}

uint64_t sub_1006F3154@<X0>(char a1@<W3>, char a2@<W5>, char a3@<W8>)
{
  LODWORD(STACK[0x4A20]) = LODWORD(STACK[0x5420]) ^ 0xFD7DA8BB;
  LODWORD(STACK[0x4988]) = LODWORD(STACK[0x5408]) | LODWORD(STACK[0x5470]);
  LODWORD(STACK[0x4A28]) = LODWORD(STACK[0x54E0]) | LODWORD(STACK[0x5510]);
  LODWORD(STACK[0x4888]) = LODWORD(STACK[0x54C0]) | LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x49B0]) = LODWORD(STACK[0x53F0]) | LODWORD(STACK[0x54D0]);
  LODWORD(STACK[0x4AA8]) = LODWORD(STACK[0x53E8]) - 2 * LODWORD(STACK[0x53D8]);
  v10 = v8 & 0x8C ^ 0x2C;
  LODWORD(STACK[0x54D0]) = v8 ^ (2 * ((v8 ^ v3) & (2 * ((v8 ^ v3) & (2 * ((v8 ^ v3) & (2 * ((v8 ^ v3) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  v11 = v4 & 0xDA ^ 0x13;
  v12 = a3 & 0x96 ^ 0x31;
  v13 = (((a3 ^ (2 * ((a3 ^ v3) & (2 * ((a3 ^ v3) & (2 * ((a3 ^ v3) & (2 * ((a3 ^ v3) & (2 * ((a3 ^ v3) & (2 * (v12 ^ a3 & 0x22)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0x96) << 8) | (((v4 ^ (2 * ((v4 ^ v3) & (2 * ((v4 ^ v3) & (2 * ((v4 ^ v3) & (2 * ((v4 ^ v3) & (2 * ((v4 ^ v3) & (2 * (v11 ^ v4 & 0x2E)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xDA) << 16);
  LODWORD(STACK[0x5530]) = ((((v7 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v7 ^ v3)) & 0x38 ^ 0x1C) & (v7 ^ v3))) ^ 0x1C) & (v7 ^ v3))) ^ 0x1C) & (v7 ^ v3))) ^ 0x5C) & (v7 ^ v3)))) ^ 0xC05E5C) & ~v13 | v13 & 0x3FA100) << 8) & 0x5C51DF00;
  LOBYTE(v10) = a1 & 0xE2 ^ 0x3F;
  LODWORD(STACK[0x53E0]) = (a1 ^ (2 * ((a1 ^ v3) & (2 * ((a1 ^ v3) & (2 * ((a1 ^ v3) & (2 * ((a1 ^ v3) & (2 * ((a1 ^ v3) & (2 * ((a1 ^ v3) & 0x16 ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) ^ 0xFFFFFF1D;
  v14 = STACK[0x5790];
  LOBYTE(v10) = *(STACK[0x5790] + 395);
  v15 = STACK[0x5710];
  v16 = *(STACK[0x5710] + 1184);
  v17 = *STACK[0x52F0];
  v18 = v17 & 0x58 ^ 0x52;
  v19 = v10 & 0xB2 ^ 7;
  v20 = (((v10 ^ (2 * ((v10 ^ v3) & (2 * ((v10 ^ v3) & (2 * ((v10 ^ v3) & (2 * ((v10 ^ v3) & (2 * ((v10 ^ v3) & (2 * (v19 ^ v10 & 6)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xB2) << 8) | (((v17 ^ (2 * ((v17 ^ v3) & (2 * ((v17 ^ v3) & (2 * ((v17 ^ v3) & (2 * ((v17 ^ v3) & (2 * ((v17 ^ v3) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x58) << 16);
  v21 = v16 & 0x5E ^ 0x55;
  v22 = (((v16 ^ (2 * ((v16 ^ v3) & (2 * ((v16 ^ v3) & (2 * ((v16 ^ v3) & (2 * ((v16 ^ v3) & (2 * ((v16 ^ v3) & (2 * (v21 ^ v16 & 0xAA)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x480539) & ~v20 | v20 & 0xB7FA00) << 8;
  v23 = STACK[0x57C0];
  v24 = *(STACK[0x57C0] + 357);
  v25 = STACK[0xDCB8];
  STACK[0x5470] = STACK[0xDCB8];
  v26 = *(v25 + 3778);
  LOBYTE(v25) = v26 & 0x42 ^ 0xCF;
  v27 = (v26 ^ v3) & (2 * ((v26 ^ v3) & (2 * ((v26 ^ v3) & (2 * ((v26 ^ v3) & (2 * ((v26 ^ v3) & (2 * ((v26 ^ v3) & 0x36 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25;
  v28 = *(STACK[0x5700] + 3983);
  v29 = v28 & 0xCA ^ 0x8B;
  v30 = STACK[0x5750];
  LOBYTE(v25) = *(STACK[0x5750] + 2974);
  v31 = (((v26 ^ (2 * v27)) ^ 0x42) << 8) | (((v28 ^ (2 * ((v28 ^ v3) & (2 * ((v28 ^ v3) & (2 * ((v28 ^ v3) & (2 * ((v28 ^ v3) & (2 * ((v28 ^ v3) & (2 * (v29 ^ v28 & 0x3E)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xCA) << 16);
  v32 = v24 & 0x16 ^ 0xF1;
  v33 = (((v24 ^ (2 * ((v24 ^ v3) & (2 * ((v24 ^ v3) & (2 * ((v24 ^ v3) & (2 * ((v24 ^ v3) & (2 * ((v24 ^ v3) & (2 * (v32 ^ v24 & 0x22)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0xB18C43) & ~v31 | v31 & 0x4E7300) << 8;
  LODWORD(STACK[0x54C0]) = v22 & 0x6A98E500;
  v34 = *(STACK[0x5730] + 547);
  LOBYTE(v22) = v25 & 0xAA ^ 0x1B;
  v35 = v25 ^ (2 * ((v25 ^ v3) & (2 * ((v25 ^ v3) & (2 * ((v25 ^ v3) & (2 * ((v25 ^ v3) & (2 * ((v25 ^ v3) & (2 * ((v25 ^ v3) & 0x1E ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  LODWORD(STACK[0x53D8]) = v33 & 0x78020800;
  v36 = v34 & 0xA8 ^ v5;
  v37 = STACK[0x5740];
  LOBYTE(v33) = *(STACK[0x5740] + 1161);
  v38 = ~v33 | 0x9D;
  v39 = (((v34 ^ (2 * ((v34 ^ v3) & (2 * ((v34 ^ v3) & (2 * ((v34 ^ v3) & (2 * ((v34 ^ v3) & (2 * ((v34 ^ v3) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xA8) << 16) | (((v33 ^ (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & 0x16 ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0x62) << 8);
  LOBYTE(v13) = *(STACK[0x5450] + 3285);
  v40 = v13 & 0x88 ^ 0x2A;
  LODWORD(STACK[0x54E0]) = (((v39 ^ 0xF7EEFF) & ((v13 ^ (2 * ((v13 ^ v3) & (2 * ((v13 ^ v3) & (2 * ((v13 ^ v3) & (2 * ((v13 ^ v3) & (2 * ((v13 ^ v3) & (2 * v40) | v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0xD7AA72) | v39 & 0x285500) << 8) & 0xDADF2500;
  LOBYTE(v39) = *(STACK[0x54A0] + 3361);
  v41 = v39 & 0x70 ^ 0xE6;
  LOBYTE(v33) = *(v37 + 3634);
  v42 = v33 & 0xFE ^ 0xA5;
  LOBYTE(v39) = v39 ^ (2 * ((v39 ^ v3) & (2 * ((v39 ^ v3) & (2 * ((v39 ^ v3) & (2 * ((v39 ^ v3) & (2 * ((v39 ^ v3) & (2 * v41) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41));
  v43 = *(STACK[0x57B0] + 2170);
  v44 = ((v39 ^ 0x70) << 16) | (((v33 ^ (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0xFE) << 8);
  LOBYTE(v33) = v43 & 6 | 0xE9;
  v45 = ((v43 ^ (2 * ((v43 ^ v3) & (2 * ((v43 ^ v3) & (2 * ((v43 ^ v3) & (2 * ((v43 ^ v3) & (2 * ((v43 ^ v3) & (2 * (((4 * (((v43 & 6) >> 1) & 3)) | 0x32) & (v43 ^ v3) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x57FBDC) & ~v44 | v44 & 0xA80400;
  LOBYTE(v33) = *(STACK[0x5780] + 1305);
  v46 = v33 & 0xDC ^ 0x14;
  v47 = *(v30 + 3323);
  v48 = v47 & 0x4C ^ 0xCC;
  v49 = (((v33 ^ (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * ((v33 ^ v3) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0xDC) << 8) | (((v47 ^ (2 * ((v47 ^ v3) & (2 * ((v47 ^ v3) & (2 * ((v47 ^ v3) & (2 * ((v47 ^ v3) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x4C) << 16);
  v50 = *(STACK[0x57B0] + 1343);
  v51 = v50 & a2 ^ 0xF7;
  LODWORD(STACK[0x5408]) = ((((v50 ^ (2 * ((v50 ^ v3) & (2 * ((v50 ^ v3) & (2 * ((v50 ^ v3) & (2 * ((v50 ^ v3) & (2 * ((v50 ^ v3) & (2 * (v51 ^ v50 & v9)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0xA2B151) & ~v49 | v49 & 0x5D4E00) << 8) & 0xD8758F00;
  v52 = *(STACK[0x55C0] + 911);
  LOBYTE(v37) = *(v14 + 281);
  LOBYTE(v30) = v37 & 0xDE ^ 0x95;
  v53 = ((v52 ^ v3 ^ (2 * ((v52 ^ v3) & (2 * ((v52 ^ v3) & (2 * ((v52 ^ v3) & (2 * ((v52 ^ v3) & (2 * (v52 & 0xB4)) ^ v52 & 0xB4)) ^ v52 & 0xB4)) ^ v52 & 0xB4)) ^ (v52 & 0xB4 | 0x40)))) << 16) | (((v37 ^ (2 * ((v37 ^ v3) & (2 * ((v37 ^ v3) & (2 * ((v37 ^ v3) & (2 * ((v37 ^ v3) & (2 * ((v37 ^ v3) & (2 * (v30 ^ v37 & 0xAA)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0xDE) << 8);
  v54 = *(v15 + 744);
  LOBYTE(v37) = v54 & 0xD2 ^ 0x17;
  LODWORD(STACK[0x53D0]) = ((((v54 ^ (2 * ((v54 ^ v3) & (2 * ((v54 ^ v3) & (2 * ((v54 ^ v3) & (2 * ((v54 ^ v3) & (2 * ((v54 ^ v3) & (2 * (v37 ^ v54 & v9)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x2A892F) & ~v53 | v53 & 0xD57600) << 8) & 0xF2582800;
  LOBYTE(v53) = *(v15 + 1973);
  LOBYTE(v22) = v53 & 0x84 ^ 0xA8;
  LOBYTE(v37) = *(STACK[0x5300] + 2898);
  v55 = v37 & 0x82 ^ 0xAF;
  LOBYTE(v30) = v37 ^ v3;
  v56 = (((v53 ^ (2 * ((v53 ^ v3) & (2 * ((v53 ^ v3) & (2 * ((v53 ^ v3) & (2 * ((v53 ^ v3) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x84) << 16) | (((v37 ^ (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (v30 & (2 * (v30 & 0x36 ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55))) ^ 0x82) << 8);
  v57 = *(v23 + 1821);
  LOBYTE(v53) = v57 & 0xC8 ^ 0x8A;
  LODWORD(STACK[0x5510]) = ((((v57 ^ (2 * ((v57 ^ v3) & (2 * ((v57 ^ v3) & (2 * ((v57 ^ v3) & (2 * ((v57 ^ v3) & (2 * ((v57 ^ v3) & (2 * v53) | v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53))) ^ 0xD76984) & ~v56 | v56 & 0x289600) << 8) & 0x357ED900;
  LODWORD(STACK[0x53C8]) = (v45 << 8) & 0x3ACC1800;
  return (*(STACK[0x57D8] + 8 * v6))(v35);
}

uint64_t sub_1006F3FB4()
{
  v3 = *(v2 + 8 * (v1 + v0 + 2820));
  LODWORD(STACK[0x8A0]) = -400236839;
  LODWORD(STACK[0x890]) = -499439277;
  return v3();
}

uint64_t sub_1006F4014(unsigned int a1, uint64_t a2, int a3, int a4, int a5)
{
  v17 = (((v7 ^ v14) & (v5 - 22169)) >> v10) + (((v7 ^ v14) & v12) << v13);
  v18 = a3 & (4 * ((v17 ^ (2 * (v17 & v15))) & v15)) ^ v17 ^ (2 * (v17 & v15));
  v19 = (16 * (v18 & v15)) & (4 * (v15 & a4)) & a5 ^ v18;
  v20 = *((v19 ^ 0x671u) + v16 + 14679);
  v21 = (((v20 ^ 0xCA) + 54) ^ ((v20 ^ 0x4D) - 77) ^ ((v20 ^ 0x82) + 126)) - (((v19 ^ 0x72) + 49) ^ ((v19 ^ 0xB0) - 13) ^ ((v19 ^ 0x2C) + 111)) - 13;
  v22 = v21 & 0xE9 ^ 0x3D;
  v23 = v21 ^ (2 * ((v21 ^ 0x3E) & (2 * ((v21 ^ 0x3E) & (2 * ((v21 ^ 0x3E) & (2 * ((v21 ^ 0x3E) & (2 * ((v21 ^ 0x3E) & (2 * ((v6 ^ (2 * v21)) & (v21 ^ 0x3E) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  v24 = v23 & 0xF;
  v25 = 16 * ((v23 >> 4) ^ *(((((v23 >> 4) ^ 0x63) & v9 | v11) ^ 0x2F) + v16 + 1294));
  v26 = 12337 * (*(v16 + (v25 & 0x9F ^ 0xF2 ^ (v25 ^ 0x7F) & (*(((v24 | v8) ^ 0xE7) + v16 + 2584) ^ 0xD3u)) + 12848) ^ 0xE4);
  *(STACK[0x8070] + a1 % 0x3282) = *(STACK[0x8070] + v26 - 12930 * (((1328683 * v26) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((59 * (v7 < 0xFF)) ^ v5)))(a1 + 12337);
}

uint64_t sub_1006F4214(uint64_t a1, uint64_t a2)
{
  v6 = STACK[0x1B60];
  *(a2 + 596) = STACK[0x1B60] ^ 0xF6F ^ (v2 + 840072510);
  *(a2 + 604) = v2 + 840072510 - v6;
  *(a2 + 624) = v6 + 4151854225u;
  *(a2 + 608) = v6;
  *(a2 + 592) = (v2 - 1079089617) ^ v6;
  *(a2 + 600) = ((v2 + 840072510) ^ v3) - v6;
  *(a2 + 616) = v4 - v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v2 + 9201)))(v5 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4D4])))(v8);
}

uint64_t sub_1006F4520()
{
  v2 = *(v0 + 295);
  v3 = *(v0 + 1992);
  v4 = v3 & 0xFFFFFFF8;
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & 0xFFFFFFF8;
  v7 = *(v5 + (v6 & ((v3 & 0x797229A0 | 0x868DD65F) - 1831847764 + (v3 & 0x868DD658 | 0x797229A1))));
  v8 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = __ROR8__((0xDCDCCB2F57AEABB8 - ((v7 + v8) | 0xDCDCCB2F57AEABB8) + ((v7 + v8) | 0x232334D0A8515447)) ^ 0xE18C0A7A97A0ECA3, 8);
  v10 = (0xDCDCCB2F57AEABB8 - ((v7 + v8) | 0xDCDCCB2F57AEABB8) + ((v7 + v8) | 0x232334D0A8515447)) ^ 0xE18C0A7A97A0ECA3 ^ __ROR8__(v7, 61);
  v11 = (v9 + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x6FF046966119128DLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0xA9EF844799C79FC4) + 0x54F7C223CCE3CFE2) ^ 0xF5455FE61B95DCC9;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0xE4AA2AF1232F9F68 - ((v18 + v17) | 0xE4AA2AF1232F9F68) + ((v18 + v17) | 0x1B55D50EDCD06097)) ^ 0xF451F54F2935287BLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xD8C7B31FCA19D9DELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x5455012E8AB1C38FLL;
  LOBYTE(v3) = 8 * (v3 & 7);
  *(v0 + 1780) = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3) ^ v2;
  v24 = *(v5 + (v6 & (v4 - 1831847764)));
  v25 = (((2 * (v24 + v8)) | 0x8F3D087EBB8832ELL) - (v24 + v8) - 0x479E843F5DC4197) ^ 0xC6D6D6E9CA2DF973;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0x799CD039CF86B8BCLL) - (v27 + v26) - 0x3CCE681CE7C35C5FLL) ^ 0xA6C3C33E00B1175DLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x6FF046966119128DLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((v32 + v31 - ((2 * (v32 + v31)) & 0x63C1B39DF02FBE86) + 0x31E0D9CEF817DF43) ^ 0x9052440B2F61CC68, 8);
  v34 = (v32 + v31 - ((2 * (v32 + v31)) & 0x63C1B39DF02FBE86) + 0x31E0D9CEF817DF43) ^ 0x9052440B2F61CC68 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34) ^ v1;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xD8C7B31FCA19D9DELL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0x7077C714349E24DELL) - (v39 + v38) + 0x47C41C75E5B0ED91) ^ 0xEC6EE2A490FED1E0;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  **(v0 + 1976) = *(v0 + 1991) ^ v2 ^ (((((2 * (v42 + v41)) | 0xE3F2A64E329A3BA4) - (v42 + v41) + 0xE06ACD8E6B2E22ELL) ^ 0x9EB6339B174F4332) >> v3);
  v43 = *(v0 + 3920) + 4;
  *(v0 + 296) = v43;
  v44 = STACK[0x57D8];
  v45 = *(STACK[0x57D8] + 8 * (STACK[0x4D40] + 3173));
  *(v0 + 2000) = v43;
  *(v0 + 280) = v45;
  return (*(v44 + 8 * (STACK[0x51B8] ^ 0x2346)))();
}

uint64_t sub_1006F4AE0@<X0>(int a1@<W8>)
{
  *(v4 + 4384) = v3;
  STACK[0x6C10] = v2;
  STACK[0x85E8] = v1;
  LODWORD(STACK[0x5D9C]) = 0;
  LODWORD(STACK[0x62B0]) = 0;
  if (v2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || v5 == 0;
  return (*(STACK[0x57D8] + 8 * ((v8 * ((a1 ^ 0x5537) - 16666)) ^ a1)))();
}

uint64_t sub_1006F5A74()
{
  v9 = *(v6 + 528);
  v10 = STACK[0x56F0];
  v11 = *v4;
  v12 = STACK[0x51F0];
  v13 = *(*STACK[0x51F0] + (*v4 & (((v9 + STACK[0x56F0]) & 0xFFFFFFF8) - 133448597) & 0xFFFFFFF8));
  v14 = __ROR8__((v9 + STACK[0x56F0]) & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = v4;
  v16 = (((2 * (v14 + v13)) | 0x6585D323288D39EELL) - (v14 + v13) - 0x32C2E99194469CF7) ^ 0x82959DAA45EE694BLL;
  v17 = v16 ^ __ROR8__(v13, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v5;
  v19 = __ROR8__(v18, 8);
  v20 = v18 ^ __ROR8__(v17, 61);
  v21 = (0x9C7469DEA21F651BLL - ((v19 + v20) | 0x9C7469DEA21F651BLL) + ((v19 + v20) | 0x638B96215DE09AE4)) ^ 0xC1E0725B4789B594;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x1C031738E4A64104;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v8;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (0xEC65D103EAB2D653 - ((v27 + v26) | 0xEC65D103EAB2D653) + ((v27 + v26) | 0x139A2EFC154D29ACLL)) ^ 0x416BA6B50D95FF0ELL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x6A8D562972745A8ALL) - 0x4AB954EB46C5D2BBLL) ^ 0xBE66D97A48CC17EALL;
  v32 = __ROR8__(v31, 8);
  v33 = __ROR8__(v29, 61);
  v34 = (v1 >> (((v2 - 126) | 0x16) ^ 0x76u)) + ((((((2 * (v32 + (v31 ^ v33))) | 0xA91341301FB95388) - (v32 + (v31 ^ v33)) - 0x5489A0980FDCA9C4) ^ 0xC5372D7098401784) >> (8 * ((v9 + v10) & 7))) ^ *(v9 + v10)) + (v7 >> ((v2 ^ 0xB8u) + 26));
  v35 = v9 + 4 * STACK[0x5700];
  v36 = *(*STACK[0x51F0] + (((v35 & 0xFFFFFFF8) - 2069098908 - (v35 & 0x8CA057E8) + (v35 & 0x8CA057E8 | 0x735FA814) + 1520) & v11));
  v37 = __ROR8__(v35 & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = (((2 * (v36 + v37)) | 0xA027A7B0AEC94DC8) - (v36 + v37) - 0x5013D3D85764A6E4) ^ 0xE044A7E386CC5358;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v5;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xA26BE47A1A692F70;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x1C031738E4A64104;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v8;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x52F1884918D8D6A2;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v0;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  *v35 = v34 ^ (((((2 * (v52 + v51)) | 0xA963D49A0F677648) - (v52 + v51) - 0x54B1EA4D07B3BB24) ^ 0xC50F67A5902F0564) >> (8 * (v35 & 7u)));
  v53 = *(v6 + 528) + v10;
  v54 = *(*v12 + ((*v15 & ((v53 & 0xFFFFFFF8) - 133448597)) & 0xFFFFFFFFFFFFFFF8));
  v55 = (__ROR8__(v53 & 0xFFFFFFFFFFFFFFF8, 8) + v54) ^ 0xB057743BD1A8F5BCLL;
  v56 = __ROR8__(v55, 8);
  v57 = v55 ^ __ROR8__(v54, 61);
  v58 = (v56 + v57) ^ v5;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xA26BE47A1A692F70;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0x1C031738E4A64104;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ v8;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x52F1884918D8D6A2;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0xECAA41A54B7E4350) - (v68 + v67) + 0x9AADF2D5A40DE57) ^ 0x28AAD43ABB6E4F8;
  *v53 = HIDWORD(v34) ^ (((__ROR8__(v69, 8) + (v69 ^ __ROR8__(v67, 61))) ^ v3) >> (8 * (v53 & 7u)));
  return (*(STACK[0x57D8] + 8 * (v2 ^ (118 * (STACK[0x5750] + 1 == STACK[0x5780])))))();
}

uint64_t sub_1006F5F68@<X0>(uint64_t a1@<X8>)
{
  STACK[0x6510] = STACK[0x7CA0];
  v3 = STACK[0xB100];
  STACK[0xCE08] = STACK[0xB100];
  STACK[0xB4F0] = &STACK[0x10120] + a1;
  STACK[0x5FA8] = &STACK[0x10120] + a1 + 67;
  STACK[0x7ED8] = ((v1 - 5253) ^ 0x2E2) + a1;
  STACK[0xB610] = 0x79296B4A625EDF44;
  v5 = v2 < 0x801 && v3 != 0x30BDFED8F32E6831;
  return (*(STACK[0x57D8] + 8 * ((29 * v5) ^ v1)))();
}

uint64_t sub_1006F6100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = STACK[0x51B8] - 128;
  LODWORD(STACK[0x8DC0]) = -1;
  return (*(STACK[0x57D8] + 8 * v5))(a1, a2, a3, a4, a5, STACK[0x57C0]);
}

uint64_t sub_1006F619C()
{
  v1 = STACK[0x70E0];
  STACK[0x80D0] = STACK[0x70E0];
  v2 = STACK[0x71B8];
  v3 = STACK[0xC2E0];
  STACK[0x97C8] = STACK[0xC2E0];
  if (v1)
  {
    v4 = v2 == 103679699;
  }

  else
  {
    v4 = 1;
  }

  v7 = !v4 && v3 != 0 && LODWORD(STACK[0xA974]) == ((v0 - 1233357095) & 0x49837ED6) + 103657093;
  return (*(STACK[0x57D8] + 8 * ((1687 * v7) ^ v0)))();
}

uint64_t sub_1006F6344@<X0>(unint64_t a1@<X8>)
{
  v1 = STACK[0x51B8];
  STACK[0x99A8] = a1;
  return (*(STACK[0x57D8] + 8 * (v1 - 2301)))();
}

uint64_t sub_1006F636C()
{
  v2 = v0 & 0x19C872FF;
  v3 = ((v0 & 0x19C872FF) - 28581) | 0x100A;
  v4 = ((v0 & 0x19C872FF) + 361610166) & 0xEA71FF37;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 & 0x19C872FF ^ 0xEA5u)))(v1 + 25, 1825);
  return (*(v5 + 8 * ((121 * ((((v3 + v4 + 1467840537) & (2 * v6)) + (v6 ^ 0xABBEDBDF) - 733928415) >= 0)) ^ v2)))(v6);
}

uint64_t sub_1006F6428(uint64_t a1, int a2, int a3, uint64_t a4, char a5, int a6, int a7, int a8)
{
  v12 = (*(v9 + v10) ^ 0xF) - *(v11 + v10);
  v13 = a3 + (v12 ^ a7) + ((v12 << ((2 * v8) ^ a5)) & a6) - 1494;
  v15 = v10 == 19 || v13 != a2 + 4053;
  return (*(STACK[0x57D8] + 8 * ((v15 * a8) ^ v8)))();
}

uint64_t sub_1006F64E4()
{
  v1 = STACK[0x51B8] - 21063;
  STACK[0x64E8] = 0x67310FA72B6EDB77 * v0 + 0x74F849547AEC43BELL;
  LODWORD(STACK[0x8364]) += 8;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x101B)))();
}

uint64_t sub_1006F6588()
{
  v1 = STACK[0x60A8];
  v2 = *(STACK[0x60A8] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xE274]) = v2 + 20;
  v3 = *(v1 - 0x1883660EE814440ELL) - 684415726;
  v2 -= 684415706;
  v4 = v2 < 0x547E198E;
  v5 = v3 < v2;
  if (v4 != v3 < (((23 * (v0 ^ 0x6443) + 21470) | 0x56u) ^ LODWORD(STACK[0xDD4])))
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x7F08] == 0) | v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xE278]) = v8;
  return (*(STACK[0x57D8] + 8 * ((228 * ((v7 & 1) == 0)) ^ v0)))();
}

uint64_t sub_1006F6680()
{
  v0 = (STACK[0x51B8] + 779364261) & 0xD18BD14D;
  v1 = STACK[0x51B8] - 19782;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x5981) + v1)))();
}

uint64_t sub_1006F66F0()
{
  v1 = STACK[0x75E8];
  STACK[0x8498] = STACK[0x75E8];
  LODWORD(STACK[0x57EC]) = STACK[0x8BE4];
  LODWORD(STACK[0x9D14]) = STACK[0x6610];
  LODWORD(STACK[0xAB1C]) = STACK[0x604C];
  return (*(STACK[0x57D8] + 8 * (((*(v1 - 0x1883660EE814440ELL) == 2101965964) * (((v0 + 524046467) & 0xE0C3FBFF) - 2908)) ^ v0)))(4427);
}

uint64_t sub_1006F67C8@<X0>(int a1@<W6>, uint64_t a2@<X7>, unsigned int a3@<W8>)
{
  v12 = *(v9 + v3 * v11 + 8698028 - (((((v3 * v11 + 8698028) >> 3) * v10) >> 32) >> 7) * v6);
  v13 = (((v12 ^ 0x741BC67A) - 1947977338) ^ ((v12 ^ 0xE3B773B5) + 474516555) ^ ((v12 ^ 0x97ACB508) + 1750289144)) * v11 + 4687051;
  *(a2 + 4 * (v4 + v3 * v5 - ((((v4 + v3 * v5) * v8) >> 32) >> 12) * v7)) = *(v9 + v13 - ((((v13 >> 3) * v10) >> 32) >> 7) * v6) ^ a1;
  return (*(STACK[0x57D8] + 8 * ((28675 * (((109 * (a3 ^ 0x1247)) ^ 0x301C) + v3 == 256)) ^ a3)))();
}

uint64_t sub_1006F6C08()
{
  v3 = STACK[0x51B8];
  v4 = STACK[0x51B8] + v0;
  v5 = STACK[0x83B0];
  *(v1 + 592) = STACK[0x51B8] - 711523751 * ((v2 - 240) ^ 0x301A21D1) + 4438;
  *(v1 + 600) = v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x244C)))(v2 - 240);
  return (*(v6 + 8 * (v4 ^ 0x6730)))(v7);
}

uint64_t sub_1006F6C80(uint64_t a1, char *a2)
{
  v4 = &STACK[0x1D280] + v3;
  *v4 = *a2;
  v4[1] = a2[1];
  v4[2] = a2[2];
  v4[3] = a2[3];
  v4[4] = a2[4];
  v4[5] = a2[5];
  v4[6] = a2[6];
  v4[7] = a2[7];
  v4[8] = a2[8];
  v4[9] = a2[9];
  v4[10] = a2[10];
  v4[11] = a2[11];
  v4[12] = a2[12];
  v4[13] = a2[13];
  v4[14] = a2[14];
  v4[15] = a2[15];
  return (*(STACK[0x57D8] + 8 * v2))(a1, &STACK[0x1D280] + v3);
}