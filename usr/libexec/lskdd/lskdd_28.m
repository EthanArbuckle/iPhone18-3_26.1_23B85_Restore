uint64_t sub_1007688B0(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  LODWORD(STACK[0x4740]) = LODWORD(STACK[0x55D0]) | LODWORD(STACK[0x55E0]);
  LODWORD(STACK[0x4910]) = LODWORD(STACK[0x53E8]) | LODWORD(STACK[0x53F8]);
  LODWORD(STACK[0x4738]) = LODWORD(STACK[0x5400]) | LODWORD(STACK[0x53C8]);
  v17 = STACK[0x53B8] & (LODWORD(STACK[0x53C0]) ^ 0xF596C444);
  LODWORD(STACK[0x55D0]) = STACK[0x5348] & (LODWORD(STACK[0x53B0]) ^ 0xB6CFD4BE);
  v18 = a8 & 0xB2 ^ 0xEF;
  v19 = (a8 ^ (2 * ((a8 ^ 0x64) & (2 * ((a8 ^ 0x64) & (2 * ((a8 ^ 0x64) & (2 * ((a8 ^ 0x64) & (2 * ((a8 ^ 0x64) & (2 * (v18 ^ a8 & 0x16)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)));
  v20 = v8 & 0x90 ^ 0xDE;
  v21 = (v8 ^ (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)));
  v22 = v9 & 0xB8 ^ a7;
  v23 = (v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22;
  v24 = a3 & 0x66 ^ 0x41;
  v25 = a3 ^ (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x44) & (2 * (v24 ^ a3 & 2)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  v26 = (v21 << 16) | (((v9 ^ (2 * v23)) ^ 0xB8) << 8);
  v27 = (v26 ^ 0x4776FF) & (v19 ^ 0xC77611) | v26 & 0x388900;
  LOBYTE(v19) = v15 & 0x28 ^ 0xA2;
  v28 = (v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x44) & (2 * v19) | v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19;
  LOBYTE(v19) = v16 & 0x7C ^ 0xCC;
  LODWORD(STACK[0x53C0]) = (v27 << 8) & 0xFDD0FC00;
  v29 = v14 & 0x12 ^ 0x9F;
  v30 = (((v15 ^ (2 * v28)) ^ 0x28) << 16) | (((v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & 0x36 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x12) << 8);
  LODWORD(STACK[0x55E0]) = (((v25 ^ 0x5906F7) & ~v30 | v30 & 0xA6F900) << 8) & 0xE92F1200;
  LOBYTE(v27) = a2 & 0xA0 ^ 0xE6;
  v31 = v13 & 0xE2 ^ 0x87;
  v32 = (((v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x44) & (2 * ((v13 ^ 0x44) & 6 ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0xE2) << 8) | (((a2 ^ (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x44) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0xA0) << 16);
  v33 = v11 & 0xC ^ 0x14;
  v34 = (v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33;
  v35 = v12 & 0x52 ^ 0x7F;
  v36 = LODWORD(STACK[0x5790]) - 1061;
  v37 = ((v21 ^ 0xD517D1) & ~v32 | v32 & 0x2AE800) << 8;
  LODWORD(STACK[0x5790]) = v37 & 0xC8597200;
  v38 = (((v11 ^ (2 * v34)) ^ 0xC) << 16) | (((v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & 0x36 ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0x52) << 8);
  v39 = v10 & 0x4E ^ 0xF5;
  v40 = (((v10 ^ (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * (v39 ^ v10 & 0xAA)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x32EAA3) & ~v38 | v38 & 0xCD1500) << 8;
  LODWORD(STACK[0x5400]) = v40 & 0xBAD19700;
  return (*(STACK[0x57D8] + 8 * v36))((v16 ^ (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19))), v37 ^ 0x22A08CFFu, v40 ^ 0x450400FFu, 255, v17, 18817942, 21613735, 86454940);
}

uint64_t sub_100768F6C()
{
  v3 = v1 ^ 0xFF7;
  *(v2 + 20) = v0 - 11813 + ((v3 - 539573429) & 0x20293EE7);
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_100768FAC()
{
  v1 = (STACK[0x51B8] + 255172003) & 0xF0CA1FEF;
  v2 = STACK[0x51B8] - 13199;
  LODWORD(STACK[0x7310]) = v0;
  v3 = SLOWORD(STACK[0xD95E]);
  STACK[0xC888] = STACK[0xD960];
  return (*(STACK[0x57D8] + 8 * (((v3 == -2993) * (v1 ^ 0x1F9C)) ^ v2)))();
}

uint64_t sub_100769030()
{
  LODWORD(STACK[0x1D4C0]) = (v1 + 4055) ^ (1097177827 * ((v2 - 240) ^ 0x44935669));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9232)))(v2 - 240);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_100769090@<X0>(unint64_t a1@<X8>)
{
  STACK[0x6850] = a1;
  LODWORD(STACK[0xEBF8]) = v6;
  LOWORD(STACK[0xEBFE]) = v1;
  LODWORD(STACK[0xEC00]) = v8;
  LODWORD(STACK[0xEC04]) = v2;
  STACK[0xEC08] = v3;
  STACK[0xEC10] = v7;
  return (*(STACK[0x57D8] + 8 * (((a1 != v5) * (v4 - 21820 + (v4 ^ 0x97C))) ^ v4)))();
}

uint64_t sub_1007690F4()
{
  v1 = STACK[0x9DA4];
  *STACK[0xAB80] = STACK[0x9DA4];
  return (*(STACK[0x57D8] + 8 * (((v1 != -769884012) * (((v0 - 14935) ^ 0x5500) - 22589)) ^ v0)))();
}

uint64_t sub_100769150()
{
  v3 = *(v2 + 4008);
  v4 = *(v3 + (3903 * v1 + 19112991) % 0x1708u);
  v5 = ((v0 - 54) ^ 1) - v4 + ((4 * v4) ^ 4);
  v6 = 3 * (((v4 ^ (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * (~v4 & 0x1C)) ^ ~v4 & 0x1C)) ^ ~v4 & 0x1C)) ^ ~v4 & 0x1C))) >> 3) ^ 3);
  v7 = v5 & 7;
  v8 = (v6 + 5) & 7;
  v9 = (v6 + 6) & 7;
  if (v7 != v8)
  {
    v9 = v8;
  }

  v10 = 3903 * v9 + 20705415;
  v11 = 3903 * v7 + 20705415 - 5896 * (((93242167 * (3903 * v7 + 20705415)) >> 32) >> 7);
  v12 = v10 - 5896 * (((93242167 * v10) >> 32) >> 7);
  LOBYTE(v10) = *(v3 + v11);
  LOBYTE(v12) = *(v3 + v12);
  v13 = v10 & 0xE8 ^ 0x82;
  v14 = v12 & 0xDE ^ 0xBD;
  v15 = v10 ^ v12 ^ (2 * (v13 ^ v14 ^ (v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x44) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ (v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * (v14 ^ v12 & 0x3A)) ^ v14)) ^ v14)) ^ v14)) ^ v14))));
  *(v3 + v11) = (((v15 ^ 0xC3) - 100) ^ ((v15 ^ 0x54) + 13) ^ ((v15 ^ 0xA1) - 6)) - 83;
  return (*(STACK[0x57D8] + 8 * ((1305 * (v1 == 127)) ^ v0)))();
}

uint64_t sub_100769324(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v18 = (((v13 ^ a8) & v14) << v16) | ((v13 ^ a8) >> v8);
  v19 = a3 & (4 * ((v18 ^ (2 * (v18 & v15))) & v15)) ^ v18 ^ (2 * (v18 & v15));
  v20 = *((v19 ^ 0xA0 ^ a5 & (4 * (v15 & a4 & ((v19 & v15) << (((v9 - 52) | 6) ^ 0x54))))) + v17 + 2845) ^ 0x82;
  v21 = ((v20 & 0xF) + v10) ^ 0x2C;
  HIDWORD(v22) = v11;
  LODWORD(v22) = v20 << 24;
  v23 = 16 * (*(v17 + ((v22 >> 28) ^ 0x5Bu) + 1294) ^ ~(v22 >> 28));
  v24 = *(v17 + ((v23 & 0xAA | (*(v21 + v17 + 2584) ^ 0xED) & ~v23) ^ 0xD3) + 2068) ^ 0x65;
  *(STACK[0x8070] + v12 % 0x3282) = *(STACK[0x8070] + 12337 * v24 - 12930 * (((1328683 * (12337 * v24)) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((35 * (v13 != 255)) | v9)))();
}

uint64_t sub_100769474()
{
  v1 = *(v0 + 3600);
  *(v0 + 3608) = v1;
  v2 = *(v0 + 3596);
  *(v0 + 3616) = v2;
  *(v0 + 3620) = (v2 + 1084255264) & 0xBF5FFBFE;
  v3 = *(v0 + 4416) + v1;
  *(v0 + 3624) = v3;
  *(v0 + 296) = v3;
  v4 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (v2 + 27142));
  return (*(v4 + 8 * (v2 ^ 0x6AAF)))();
}

uint64_t sub_1007694DC(uint64_t a1, unsigned int a2, int a3, int a4, unsigned int a5, int a6, char a7, unsigned int a8)
{
  v18 = ((v11 ^ v13) >> v16) + (((v11 ^ v13) & v12) << a7);
  v19 = (((v18 ^ (2 * (v18 & a6))) & a6) << (83 * (v15 ^ 0xA4) - 113)) & a3 ^ v18 ^ (2 * (v18 & a6));
  v20 = *((v19 ^ 0xFA0 ^ (16 * (v19 & a6)) & (4 * (a6 & a4)) & a5) + v17 + 2845) ^ 0x82;
  v21 = v20 & 0xF;
  HIDWORD(v22) = v9;
  LODWORD(v22) = v20 << 24;
  LOBYTE(v20) = 16 * ~*(v17 + ((v22 >> 28) ^ v10) + 260);
  LOBYTE(v20) = (*(((v21 + v8) ^ 0x9C) + v17 + 2584) ^ 0x74) & ~v20 | v20 & 0x30;
  LOBYTE(v21) = *(v17 + (v20 ^ 0xD4u) + 22879);
  v23 = (((v21 ^ 0x87) + 121) ^ ((v21 ^ 0x54) - 84) ^ ((v21 ^ 0xD6) + 42)) - (((v20 ^ 0x23) + 60) ^ ((v20 ^ 0xC3) - 36) ^ ((v20 ^ 0xFE) - 25)) + 82;
  v24 = v23 & 0x26 ^ 0xD6;
  v25 = v23 ^ (2 * ((v23 ^ 0x38) & (2 * ((v23 ^ 0x38) & (2 * ((v23 ^ 0x38) & (2 * ((v23 ^ 0x38) & (2 * ((v23 ^ 0x38) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  *(STACK[0x8070] + a2 - 12930 * ((((a2 >> 1) * a8) >> 32) >> 12)) = *(STACK[0x8070] + (v25 ^ 0x89) * v14 - 12930 * (((1328683 * ((v25 ^ 0x89u) * v14)) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((2 * (v11 != 255)) | (16 * (v11 != 255)) | v15)))();
}

uint64_t sub_1007696B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v11 = *(a1 + v8);
  *(v10 + v8) = v11;
  return (*(STACK[0x57D8] + 8 * ((((((v9 + a6) ^ (v11 == 0)) & 1) == 0) * (((v9 ^ 0x3FEC) * a8) ^ a3)) ^ v9)))();
}

uint64_t sub_100769820@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x9A70] + v1;
  STACK[0xB3E0] = a1;
  STACK[0x8210] = v4;
  return (*(STACK[0x57D8] + 8 * ((20957 * (v3 == ((v2 + 1479476208) & 0xA7D0FB81) - 769888972)) ^ v2)))();
}

uint64_t sub_1007698B8@<X0>(unint64_t a1@<X8>)
{
  *v3 = v2 ^ v4 ^ v1 ^ 0x46;
  STACK[0xB988] = a1;
  LODWORD(STACK[0xCAD0]) = STACK[0x71BC];
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100769908(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  LODWORD(STACK[0x4B48]) = LODWORD(STACK[0x53E8]) | LODWORD(STACK[0x5408]);
  LODWORD(STACK[0x4B40]) = LODWORD(STACK[0x53B8]) | LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x4A60]) = LODWORD(STACK[0x5398]) | LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x5250]) = LODWORD(STACK[0x5390]) | LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x5270]) = LODWORD(STACK[0x5388]) | LODWORD(STACK[0x53A8]);
  v15 = v13 + 885058313;
  v16 = a4 & 0x98 ^ 0xB2;
  v17 = v11 & 0xB0 | 6;
  v18 = (((a4 ^ (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x98) << 16) | (((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xB0) << 8);
  v19 = v10 & 0xEE ^ 0x3D;
  v20 = ((v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * (v19 ^ v10 & 0x1A)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x3206BC) & ~v18 | v18 & 0xCDF900;
  v21 = v8 & 0x6E ^ 0x7D;
  LODWORD(STACK[0x53D8]) = v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * (v21 ^ v8 & 0x1A)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21));
  v20 <<= 8;
  LODWORD(STACK[0x53E8]) = v20 ^ 0x852905FF;
  LODWORD(STACK[0x5408]) = v20 & 0x7AD0E800;
  v22 = v12 & 0x74 ^ 0x60;
  LOBYTE(v21) = v14 & 0xAC ^ 0x9C;
  v23 = v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0x74;
  v24 = (v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21))) << 8;
  LOBYTE(v21) = a8 & 0x2E ^ 0xDD;
  v25 = v9 & 2 ^ 0xEF;
  v26 = STACK[0x5430];
  v27 = STACK[0x5430] & 0x94 ^ 0xB0;
  v28 = ((v24 | (v23 << 16)) ^ 0xAC00) & 0xFFFFFF00 | (a8 ^ (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * (v21 ^ a8 & 0x1A)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x2E;
  v29 = (v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & 0x36 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) << 8;
  v30 = v29 & 0xFF00FFFF | (((v26 ^ (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x94) << 16);
  v31 = STACK[0x5440];
  LOBYTE(v23) = STACK[0x5440] & 0xE4 ^ 0x38;
  v32 = (v30 ^ 0xEAE5FF) & ((v31 ^ (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0xEAE78A) | v30 & 0x151800;
  v33 = STACK[0x5470];
  LOBYTE(v23) = STACK[0x5470] & 0xA ^ 0x6B;
  LOBYTE(v23) = v33 ^ (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & 0x3E ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23));
  v34 = STACK[0x5480];
  LOBYTE(v30) = STACK[0x5480] & 0x84 | 0x28;
  v35 = (((v24 & 0xFF00FFFF | (v23 << 16)) ^ 0xC2D3FF) & ((v34 ^ (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0xC8754A) | v24 & 0x8A00 | (v23 << 16) & 0x378A00) << 8;
  LODWORD(STACK[0x5480]) = v35 ^ 0x10210FF;
  LODWORD(STACK[0x54A0]) = v35 & 0x7475A700;
  v36 = STACK[0x54C0];
  LOBYTE(v33) = STACK[0x54C0] & 0x6C ^ 0x7C;
  v37 = (((v36 ^ (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x6C) << 16) | (v23 << 8);
  v38 = STACK[0x54D0];
  v39 = ((v37 ^ 0x1A20FF) & ((v38 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v38 ^ 0x34)) & 0x38 ^ 0x1C) & (v38 ^ 0x34))) ^ 0x1C) & (v38 ^ 0x34))) ^ 0x1C) & (v38 ^ 0x34))) ^ 0x5C) & (v38 ^ 0x34)))) ^ 0x1A2230) | v37 & 0xE5DD00) << 8;
  LODWORD(STACK[0x54D0]) = v39 ^ 0x40C412FF;
  LODWORD(STACK[0x54F0]) = v39 & 0xBF39C900;
  v40 = STACK[0x54E0];
  LOBYTE(v37) = STACK[0x54E0] & 0xD4 ^ 0x10;
  v41 = v29 & 0xFF00FFFF | (((v40 ^ (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * v37) | v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0xD4) << 16);
  v42 = STACK[0x5510];
  LOBYTE(v39) = STACK[0x5510] & 0xA4 ^ 0x98;
  LODWORD(STACK[0x5510]) = ((((v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x2859A1) & ~v41 | v41 & 0xD7A600) << 8) & 0xF3D7D100;
  v43 = STACK[0x5530];
  LOBYTE(v41) = STACK[0x5530] & 0x7A ^ 0xE3;
  v44 = STACK[0x5520];
  LOBYTE(v34) = STACK[0x5520] & 0xFA ^ 0x23;
  v45 = (((v43 ^ (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * (v41 ^ v43 & 0xE)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41))) ^ 0x7A) << 16) | (((v44 ^ (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * (v34 ^ v44 & 0xE)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0xFA) << 8);
  v46 = STACK[0x5540];
  LOBYTE(v37) = STACK[0x5540] & 0x7A ^ 0x63;
  LODWORD(STACK[0x54E0]) = ((((v46 ^ (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * (v37 ^ v46 & 0xE)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x44F24C) & (v45 ^ 0xFEFEFF) | v45 & 0xBB0D00) << 8) & 0xB63B1000;
  v47 = STACK[0x5620];
  v48 = (STACK[0x5620] & 0xB4 | 0x42) ^ STACK[0x5620] & 0x8C;
  v49 = STACK[0x5610];
  LOBYTE(v24) = STACK[0x5610] & 0xF0 ^ 0x26;
  v50 = v47 ^ (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48));
  v51 = STACK[0x5630];
  LOBYTE(v34) = STACK[0x5630] & 0x40 ^ 0x4E;
  v52 = ((v49 ^ (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xF0) << 8;
  LODWORD(STACK[0x5630]) = ((v52 & 0xA500 | ((v50 ^ 0x38) << 16) | ((v51 ^ (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & 0x1C ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x5AA1) & ~v52) << 8) & 0x58404400;
  LOBYTE(v52) = *STACK[0x52C0];
  LOBYTE(v34) = v52 & 0x8E ^ 0x2D;
  v53 = *(STACK[0x5760] + 2026);
  v54 = v53 & 0xAA ^ 0x9B;
  v55 = (((v53 ^ (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & 0x1E ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54))) ^ 0xAA) << 8) | (((v52 ^ (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * (v34 ^ v52 & 0x3A)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x8E) << 16);
  LOBYTE(v52) = *(STACK[0x55B0] + 433);
  LOBYTE(v34) = v52 & 0xEE ^ 0x3D;
  v56 = ((v52 ^ (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * (v34 ^ v52 & 0x1A)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x7A89F0) & ~v55 | v55 & 0x857600;
  LOBYTE(v55) = *(STACK[0x5770] + 3103);
  v57 = v55 & 0xE6 ^ 0x39;
  v58 = *STACK[0x5218];
  v59 = v58 & 0x98 ^ 0x32;
  v60 = (((v58 ^ (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0x98) << 8) | (((v55 ^ (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * (v57 ^ v55 & 0x12)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xE6) << 16);
  LOBYTE(v55) = *(STACK[0x5760] + 729);
  v61 = v55 & 4 | 0x68;
  LODWORD(STACK[0x5620]) = (v56 << 8) & 0x830D0A00;
  LODWORD(STACK[0x5600]) = (v32 << 8) & 0x32ECE300;
  LODWORD(STACK[0x5640]) = (v28 << 8) & 0x1099FB00;
  LODWORD(STACK[0x54C0]) = (((v60 ^ 0xFFDFFF) & ((v55 ^ (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * v61) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61))) ^ 0xFC4ED4) | v60 & 0x3B100) << 8) & 0xEB314F00;
  return (*(STACK[0x57D8] + 8 * v15))();
}

uint64_t sub_10076A958@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xAD88];
  v3 = STACK[0xB100];
  STACK[0x72A8] = STACK[0xB100];
  STACK[0xB498] = STACK[0x7CA0];
  STACK[0x6C88] = STACK[0x67F0];
  STACK[0x70F0] = STACK[0xBCA8];
  LODWORD(STACK[0x92A0]) = STACK[0x6614];
  LODWORD(STACK[0x73A8]) = STACK[0xB85C];
  STACK[0x8488] = STACK[0x6188];
  LODWORD(STACK[0x60B4]) = STACK[0xC954];
  STACK[0x9C60] = STACK[0xAA10];
  STACK[0x9FC0] = v2 + 2736;
  STACK[0x8FE8] = STACK[0x5B70];
  STACK[0x6AA0] = STACK[0xA708];
  LODWORD(STACK[0x7F74]) = STACK[0x84E4];
  STACK[0x9B08] = &STACK[0x10120] + a1;
  STACK[0x7ED8] = a1 + 80;
  return (*(STACK[0x57D8] + 8 * (((v3 != 0x30BDFED8F32E6831) * (((v1 - 605925569) & 0x241D527D) - 592)) ^ v1)))();
}

uint64_t sub_10076AABC()
{
  STACK[0xE780] = v1;
  v2 = STACK[0x6D88];
  STACK[0xE788] = STACK[0x6D88];
  return (*(STACK[0x57D8] + 8 * ((32177 * (v1 - v2 > ((((v0 - 207157647) & 0xC58DCB3u) + 25773) ^ 0x6559uLL))) ^ v0)))();
}

uint64_t sub_10076AB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v17 = *(STACK[0x57B0] + 8);
  v18 = (v17 + a6);
  v19 = v7 & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v10 + ((((v17 + a6) & (v11 - 6385) & v15) + ((v17 + a6) & (v11 - 6385) | (v15 + 4)) + 1898880846) & v19));
  v21 = __ROR8__((v17 + a6) & ((v11 - 790) - 5595), 8);
  v22 = __ROR8__((v21 + v20) ^ v16, 8);
  v23 = (v21 + v20) ^ v16 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23) ^ a3;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v13 - ((v26 + v25) | v13) + ((v26 + v25) | 0x2ED6EA2AE773A9CLL)) ^ 0xA0868AD8B41E15ECLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) | 0xE37EB0271535C93CLL) - (v29 + v28) + 0xE40A7EC75651B62) ^ 0xEDBC4F2B6E3CA59ALL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = v17 + 4 * a7;
  v34 = *(v10 + (((v33 & 0xFFFFFFF8) - 133448597) & v19));
  v35 = (__ROR8__(v33 & 0xFFFFFFFFFFFFFFF8, 8) + v34) ^ v16;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (((2 * (v32 + v31)) & 0xA444910474FC2B3ALL) - (v32 + v31) + 0x2DDDB77DC581EA62) ^ 0x50D77DD72C6DD27FLL;
  v38 = (__ROR8__(v35, 8) + v36) ^ a3;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = v37 ^ __ROR8__(v31, 61);
  v42 = __ROR8__(v37, 8);
  v43 = (a4 - ((v40 + v39) | a4) + ((v40 + v39) | 0xC0D0BCCD6E37F3C0)) ^ 0x62BB58B7745EDCB0;
  v44 = v43 ^ __ROR8__(v39, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (v14 - ((v45 + v44) | v14) + ((v45 + v44) | 0x8875E112AEF6C8DALL)) ^ 0x9476F62A4A5089DELL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x7D0ACAAAE9EC381DLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v42 + v41)) & 0x32F4759BCBE4B2CLL) - (v42 + v41) + 0x7E685C5321A0DA69) ^ 0x2C99D41A39780CCBLL;
  v52 = v51 ^ __ROR8__(v41, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v8;
  v54 = (((2 * (v50 + v49)) | 0x1710B105AD087322) - (v50 + v49) + 0x7477A77D297BC66FLL) ^ 0xD979D0CBCE5CEF33;
  v55 = v54 ^ __ROR8__(v49, 61);
  v56 = __ROR8__(v54, 8);
  *v33 = ((((((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61))) ^ v9) >> (8 * (v18 & 7u))) ^ *v18) >> LODWORD(STACK[0x57A0])) | v12) ^ (((__ROR8__((v56 + v55 - ((2 * (v56 + v55)) & 0xF5926F4C0E678354) + 0x7AC937A60733C1AALL) ^ 0x71E945C8F6C5FB05, 8) + ((v56 + v55 - ((2 * (v56 + v55)) & 0xF5926F4C0E678354) + 0x7AC937A60733C1AALL) ^ 0x71E945C8F6C5FB05 ^ __ROR8__(v55, 61))) ^ v9) >> (8 * (v33 & 7u)));
  return (*(STACK[0x57D8] + 8 * ((10204 * (a5 == 0)) ^ v11)))();
}

uint64_t sub_10076B094()
{
  v2 = 31 * (STACK[0x51B8] ^ 0x585B);
  v3 = STACK[0x51B8] - 13828;
  LODWORD(STACK[0xCD1C]) = v1;
  v4 = v1 == v0;
  LOBYTE(STACK[0xCD97]) = v4;
  return (*(STACK[0x57D8] + 8 * (((v3 ^ 0x23F5 ^ v2) * v4) ^ LODWORD(STACK[0x1B50]))))();
}

uint64_t sub_10076B110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int64x2_t a23)
{
  v44.i64[0] = v31 + a2;
  v44.i64[1] = v29 + a2;
  v45 = v44;
  *&STACK[0x4B0] = v44;
  v44.i64[0] = v28 + a2;
  v44.i64[1] = v27 + a2;
  v46 = v44;
  *&STACK[0x4A0] = v44;
  v44.i64[0] = v26 + a2;
  v44.i64[1] = a7 + a2;
  v47 = v44;
  *&STACK[0x490] = v44;
  v48.i64[0] = a5 + a2;
  v48.i64[1] = a3 + a2;
  v44.i64[0] = a6 + a2 - 1;
  v44.i64[1] = a6 + a2 - 2;
  *&STACK[0x500] = v44;
  v49.i64[0] = a6 + a2 - 3;
  v49.i64[1] = a6 + a2 - 4;
  *&STACK[0x4F0] = v49;
  v50.i64[0] = a6 + a2 - 5;
  v50.i64[1] = a6 + a2 - 6;
  v51.i64[0] = a6 + a2 - 7;
  v51.i64[1] = a4 + a2;
  v52 = *&STACK[0x850];
  v53 = vandq_s8(v51, *&STACK[0x850]);
  v54 = vandq_s8(v50, *&STACK[0x850]);
  v55 = vandq_s8(v49, *&STACK[0x850]);
  v56 = vandq_s8(v44, *&STACK[0x850]);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), *&STACK[0x660]);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), *&STACK[0x660]);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), *&STACK[0x660]);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), *&STACK[0x660]);
  v61 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v57, v57), v35), v57), v36);
  v62 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v58, v58), v35), v58), v36);
  v63 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v59, v59), v35), v59), v36);
  v64 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v60, v60), v35), v60), v36);
  v65 = veorq_s8(v64, v37);
  v66 = veorq_s8(v63, v37);
  v67 = veorq_s8(v62, v37);
  v68 = veorq_s8(v61, v37);
  v69 = veorq_s8(v61, v38);
  v70 = veorq_s8(v62, v38);
  v71 = veorq_s8(v63, v38);
  v72 = veorq_s8(v64, v38);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v69), *&STACK[0x5B0]);
  v74 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70), *&STACK[0x5B0]);
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v71), *&STACK[0x5B0]);
  v76 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v72), *&STACK[0x5B0]);
  v79 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v81 = veorq_s8(v75, v79);
  v82 = veorq_s8(v74, v77);
  v83 = veorq_s8(v73, v76);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v83);
  v88 = veorq_s8(vaddq_s64(v84, v80), *&STACK[0x640]);
  v89 = veorq_s8(vaddq_s64(v85, v81), *&STACK[0x640]);
  v90 = veorq_s8(vaddq_s64(v86, v82), *&STACK[0x640]);
  v91 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v94 = veorq_s8(v87, *&STACK[0x640]);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v96 = veorq_s8(v90, v93);
  v97 = veorq_s8(v89, v92);
  v98 = veorq_s8(v88, v91);
  v99 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v98);
  v103 = vaddq_s64(v101, v97);
  v104 = vaddq_s64(v100, v96);
  v105 = vaddq_s64(v99, v95);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), v39), v105), v34), v40);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v39), v104), v34), v40);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), v39), v103), v34), v40);
  v109 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v39), v102), v34), v40);
  v112 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v113 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v114 = veorq_s8(v108, v112);
  v115 = veorq_s8(v107, v110);
  v116 = veorq_s8(v106, v109);
  v117 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v115);
  v120 = vaddq_s64(v118, v114);
  *&STACK[0x4E0] = vaddq_s64(v117, v113);
  *&STACK[0x4D0] = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v121 = veorq_s8(v119, v42);
  v122 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v116), v42);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v126 = veorq_s8(v121, v123);
  v127 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v126);
  v129 = veorq_s8(vaddq_s64(v127, v125), v41);
  v130 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v131 = veorq_s8(v128, v41);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v133 = veorq_s8(v129, v130);
  v134 = vandq_s8(v48, v52);
  v135 = vandq_s8(v47, v52);
  v136 = vandq_s8(v46, v52);
  v137 = vandq_s8(v45, v52);
  v138 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), a23);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), a23);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), a23);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), a23);
  v143 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v144 = vsubq_s64(vorrq_s8(v139, *&STACK[0x540]), vorrq_s8(v139, *&STACK[0x3D0]));
  v145 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v146 = vsubq_s64(vorrq_s8(v141, *&STACK[0x540]), vorrq_s8(v141, *&STACK[0x3D0]));
  v147 = vsubq_s64(vorrq_s8(v142, *&STACK[0x540]), vorrq_s8(v142, *&STACK[0x3D0]));
  v148 = vaddq_s64(vsubq_s64(vorrq_s8(v140, *&STACK[0x540]), vorrq_s8(v140, *&STACK[0x3D0])), *&STACK[0x3D0]);
  v149 = vaddq_s64(v144, *&STACK[0x3D0]);
  v150 = veorq_s8(v149, *&STACK[0x690]);
  v151 = vaddq_s64(v143, v133);
  v152 = veorq_s8(v148, *&STACK[0x690]);
  v153 = veorq_s8(v148, *&STACK[0x520]);
  v154 = veorq_s8(v149, *&STACK[0x520]);
  v155 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v154);
  v157 = veorq_s8(vaddq_s64(v155, v153), *&STACK[0x510]);
  v158 = veorq_s8(v156, *&STACK[0x510]);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v160 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v161 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v162 = vaddq_s64(v138, v132);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v160);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v165 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), v43), v163), *&STACK[0x6A0]);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v164, v164), v43), v164), *&STACK[0x6A0]), *&STACK[0x8A0]);
  v167 = veorq_s8(v162, *&STACK[0x590]);
  v168 = veorq_s8(v165, *&STACK[0x8A0]);
  v169 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v170 = veorq_s8(v151, *&STACK[0x590]);
  v171 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v172 = veorq_s8(v166, v169);
  v173 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v174 = veorq_s8(v170, v145);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v172);
  v176 = vaddq_s64(v173, v171);
  v177 = veorq_s8(v167, v161);
  v178 = vsubq_s64(v175, vandq_s8(vaddq_s64(v175, v175), *&STACK[0x890]));
  v179 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v180 = vaddq_s64(v178, *&STACK[0x880]);
  v181 = vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(v176, vandq_s8(vaddq_s64(v176, v176), *&STACK[0x890])), *&STACK[0x880]), *&STACK[0x870]);
  v183 = veorq_s8(v180, *&STACK[0x870]);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v185 = veorq_s8(v182, v181);
  v186 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v185);
  v189 = vaddq_s64(v186, v177);
  v190 = vaddq_s64(v187, v184);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v188, *&STACK[0x6C0]), vorrq_s8(v188, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x6B0]);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190, *&STACK[0x6C0]), vorrq_s8(v190, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x6B0]);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v194 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v195 = vaddq_s64(v179, v174);
  v196 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v197 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v198 = vdupq_n_s64(v32);
  v199 = vshlq_u64(veorq_s8(v189, *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v50, 3uLL), v198)));
  v200 = veorq_s8(vaddq_s64(v196, v193), *&STACK[0x470]);
  v201 = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  v202 = veorq_s8(vaddq_s64(v197, v194), *&STACK[0x470]);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v204 = veorq_s8(v200, v201);
  v205 = vshlq_u64(veorq_s8(v195, *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v51, 3uLL), v198)));
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v204);
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203), *&STACK[0x480]);
  v208 = veorq_s8(v206, *&STACK[0x480]);
  v209 = veorq_s8(v120, v42);
  v210 = veorq_s8(v209, v122);
  v211 = vaddq_s64(v146, *&STACK[0x3D0]);
  v272.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL))), *&STACK[0x530]), vnegq_s64(vandq_s8(vshlq_n_s64(v48, 3uLL), v198))), v205);
  v272.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL))), *&STACK[0x530]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x490], 3uLL), v198))), v199);
  v212 = veorq_s8(v211, *&STACK[0x690]);
  v213 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v216 = veorq_s8(v211, *&STACK[0x520]);
  v217 = veorq_s8(vaddq_s64(v213, v216), *&STACK[0x510]);
  v218 = vaddq_s64(v214, v210);
  v219 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v220 = veorq_s8(v218, v41);
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v219);
  v222 = veorq_s8(v220, v215);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v221, v221), v43), v221), *&STACK[0x6A0]), *&STACK[0x8A0]);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v225 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v226 = vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v228 = vaddq_s64(v226, v224);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(v228, vandq_s8(vaddq_s64(v228, v228), *&STACK[0x890])), *&STACK[0x880]), *&STACK[0x870]);
  v230 = veorq_s8(vaddq_s64(v225, v222), *&STACK[0x590]);
  v231 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v232 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v233 = veorq_s8(v230, v227);
  v234 = vaddq_s64(v232, v231);
  v235 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v237 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v234, *&STACK[0x6C0]), vorrq_s8(v234, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x6B0]);
  v238 = veorq_s8(v237, v236);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), *&STACK[0x470]);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), *&STACK[0x480]);
  v242 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL))), *&STACK[0x530]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x4A0], 3uLL), v198)));
  v243 = veorq_s8(*&STACK[0x4E0], v42);
  v244 = vaddq_s64(v147, *&STACK[0x3D0]);
  v245 = veorq_s8(v243, *&STACK[0x4D0]);
  v272.val[1] = veorq_s8(v242, vshlq_u64(veorq_s8(vaddq_s64(v235, v233), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x4F0], 3uLL), v198))));
  v246 = veorq_s8(v244, *&STACK[0x690]);
  v247 = veorq_s8(v244, *&STACK[0x520]);
  v248 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247), *&STACK[0x510]);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v245), v41);
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249);
  v252 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v253 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v251, v251), v43), v251), *&STACK[0x6A0]), *&STACK[0x8A0]);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v255 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL);
  v257 = vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL);
  v258 = vaddq_s64(v256, v254);
  v259 = veorq_s8(vaddq_s64(vsubq_s64(v258, vandq_s8(vaddq_s64(v258, v258), *&STACK[0x890])), *&STACK[0x880]), *&STACK[0x870]);
  v260 = veorq_s8(vaddq_s64(v255, v252), *&STACK[0x590]);
  v261 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v262 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v263 = veorq_s8(v260, v257);
  v264 = vaddq_s64(v262, v261);
  v265 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v264, *&STACK[0x6C0]), vorrq_s8(v264, *&STACK[0x420])), *&STACK[0x420]), *&STACK[0x6B0]);
  v267 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL));
  v268 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v267), *&STACK[0x470]);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v270 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v269), *&STACK[0x480]);
  v272.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), veorq_s8(v270, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL))), *&STACK[0x530]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x4B0], 3uLL), v198))), vshlq_u64(veorq_s8(vaddq_s64(v265, v263), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x500], 3uLL), v198))));
  *(v30 + a2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v272, v33[26])), *(a6 + a2 - 8));
  return (*(v24 + 8 * (((v23 == a2) * a8) ^ v25)))(a1, a2 - 8);
}

uint64_t sub_10076BBA4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xB7D0FFDC)))(STACK[0x11D0]);
  STACK[0x11D0] = 0;
  return (*(v1 + 8 * (v0 + 1211075574)))(v2);
}

uint64_t sub_10076BBE0@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v14 = v8 ^ (v3 + v9) ^ (((v3 + v9) ^ v11) + 14) ^ (((v3 + v9) ^ v10) + 20) ^ (((v3 + v9) ^ v4) + 31);
  *(v13 + v3) = *(a2 + v3) - 5 * (((v14 ^ 0x7F) - 62) ^ (v14 - 65) ^ ((v14 ^ v6) - 17)) + 103;
  v15 = v3 + a1 < v7;
  if (v7 < v5 != v3 + a1 < v5)
  {
    v15 = v7 < v5;
  }

  return (*(*(v12 - 184) + 8 * (((2 * v15) | (4 * v15)) ^ v2)))();
}

uint64_t sub_10076BCF8()
{
  v2 = STACK[0x8B0];
  v3 = (*(STACK[0x8B0] + 8 * (v1 + 11151)))(v0);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10076C1BC()
{
  v2 = LODWORD(STACK[0x3A00]) ^ LODWORD(STACK[0x3A10]) ^ (LODWORD(STACK[0x39F8]) + (LODWORD(STACK[0x39D8]) ^ ~((1962934272 * LODWORD(STACK[0x39E0])) & STACK[0x3A08])));
  LODWORD(STACK[0x3858]) = LODWORD(STACK[0x3AC8]) ^ LODWORD(STACK[0x3AD8]) ^ LODWORD(STACK[0x3AB8]) ^ (LODWORD(STACK[0x39B8]) << 8) ^ 0x38A4F569;
  v3 = STACK[0x520];
  v4 = *(STACK[0x520] + 2);
  v5 = v4 & 0xB7 ^ 0x10;
  v6 = v5 << (LODWORD(STACK[0x37B0]) ^ 0xA9);
  LODWORD(STACK[0x37A8]) = v4 ^ 6;
  LODWORD(STACK[0x3790]) = v4 ^ 0x16;
  LODWORD(STACK[0x3788]) = v4;
  v7 = 4647 * ((v4 ^ (2 * ((v4 ^ 0x16) & (2 * ((v4 ^ 0x16) & (2 * ((v4 ^ 0x16) & (2 * ((v4 ^ 0x16) & (2 * ((v4 ^ 0x16) & (2 * (v6 & (v4 ^ 6) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) ^ 0x49) + 13123128;
  v8 = v3[8];
  LOBYTE(v4) = v3[9];
  v9 = v3[10];
  v10 = (v3[4] << 24) - 1761607680;
  LODWORD(STACK[0x3878]) = v10;
  v11 = *v3;
  LODWORD(STACK[0x3A00]) = v11;
  v12 = *(v0 + v7 - 6784 * (((1266205 * v7) >> 32) >> 1)) - 71;
  v13 = v3[13] - 105;
  LODWORD(STACK[0x33E0]) = v13;
  v14 = v9 - 105;
  v15 = (v9 - 105) << 8;
  v16 = LODWORD(STACK[0x3928]) >> 1;
  v17 = v3[12];
  v18 = v3[3];
  v19 = (v3[11] - 105) | ((v4 - 105) << 16);
  v20 = v8 & 0xB ^ 0x5A;
  v21 = v3[15];
  v22 = 4647 * ((v8 ^ (2 * ((v8 ^ 0x16) & (2 * ((v8 ^ 0x16) & (2 * ((v8 ^ 0x16) & (2 * ((v8 ^ 0x16) & (2 * ((v8 ^ 0x16) & (2 * ((v8 ^ 0x16) & (2 * v8) & 0x2E ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xF5) + 13123128;
  v23 = *(v0 + v22 - 6784 * (((1266205 * v22) >> 32) >> 1)) - 71;
  LODWORD(STACK[0x3430]) = v15 | ((v23 ^ (v23 << 6) ^ (4 * v23) ^ 0xFE) << 24) | v19;
  v24 = v19 & 0xFFFF00FF | (v14 << 8) | (v8 << 24);
  v25 = v3[1];
  v26 = (v3[14] - 105) << 8;
  LODWORD(STACK[0x33D0]) = v26;
  STACK[0x3400] = (v21 - 105);
  v27 = v16 & 0x2D57E04 ^ 0x5AAFC09;
  v18 -= 105;
  LODWORD(STACK[0x33F0]) = v18;
  v28 = STACK[0x3AA8];
  v29 = STACK[0x3A88];
  v25 -= 105;
  LODWORD(STACK[0x33D8]) = v25;
  v30 = (v26 | (v17 << 24) | (v21 - 105) | (v13 << 16)) - 1761607680;
  v31 = v24 - 1761607680;
  v32 = (v18 | (((v12 ^ (v12 << 6) ^ (4 * v12) ^ 0xFE) + 26) << 8) | (v25 << 16) | (v11 << 24)) - 1761607680;
  LODWORD(STACK[0x38B0]) = v32;
  v33 = STACK[0x3AB0];
  v34 = STACK[0x3AB0] & v27;
  v35 = STACK[0x3AA0];
  v36 = STACK[0x3AA0] & v27;
  v37 = STACK[0x3930];
  v38 = 4647 * ((v17 + 6) ^ 0x1C) + 4767822;
  v39 = *(v0 + v38 - 6784 * (((1266205 * v38) >> 32) >> 1)) ^ 0xFFFFFFE3;
  STACK[0x33F8] = (v39 >> 3) | (32 * v39);
  v40 = v30;
  LOBYTE(v30) = STACK[0x3A90];
  LODWORD(v34) = (v36 << v30) + (v34 >> v29);
  v41 = *(&STACK[0x4DC0] + BYTE2(v30));
  STACK[0x3828] = v40;
  LODWORD(v34) = (((v2 & ((v1 >> 1) & 0x35557E04 ^ 0x6AAAFC09)) << v37) | ((v28 & ((v1 >> 1) & 0x35557E04 ^ 0x6AAAFC09)) >> v29)) ^ v34 ^ __ROR4__(v41, 16);
  v42 = *(&STACK[0x4DC0] + ((v39 >> 3) | (32 * v39)));
  v43 = __ROR4__(*(&STACK[0x4DC0] + BYTE1(v40)), 24);
  v44 = *(&STACK[0x4DC0] + (v21 - 105));
  LODWORD(STACK[0x3420]) = v44;
  v45 = v34 ^ v43 ^ v44 ^ v32 ^ __ROR4__(v42, 8);
  v46 = STACK[0x3A98];
  v47 = v3[5] - 105;
  LODWORD(STACK[0x33A0]) = v47;
  LODWORD(v34) = v3[7] - 105;
  LODWORD(STACK[0x33C0]) = v34;
  v48 = v10 & 0xFFFFFF00 | v34;
  LODWORD(v34) = v3[6] - 105;
  LODWORD(STACK[0x33E8]) = v34;
  v49 = v48 & 0xFF0000FF | (v34 << 8) | (v47 << 16);
  LODWORD(STACK[0x3840]) = v49;
  v50 = STACK[0x3858];
  STACK[0x3890] = v45;
  LODWORD(STACK[0x3888]) = v31;
  LODWORD(v34) = v49 ^ v50 ^ v45;
  LODWORD(STACK[0x3820]) = v34;
  v51 = STACK[0x3940];
  v52 = v40 ^ LODWORD(STACK[0x3940]) ^ v34 ^ v31;
  v53 = v52 ^ v50;
  LODWORD(v40) = v50;
  STACK[0x3860] = v53 >> 24;
  v54 = 4647 * (((v52 ^ v50) >> 24) ^ 0xB8) + 9544938;
  LODWORD(STACK[0x38F8]) = v53;
  v55 = ((v2 & ((v1 >> 1) & 0x63928A34 ^ 0xC7251468)) << v37) ^ ((v28 & ((v1 >> 1) & 0x63928A34 ^ 0xC7251468)) >> v46) ^ (((v2 & (v16 & 0x44928A34 ^ 0x89251468)) << v37) + ((v28 & (v16 & 0x44928A34 ^ 0x89251468)) >> v46)) ^ *(&STACK[0x4DC0] + v53);
  STACK[0x38B8] = BYTE2(v53);
  v56 = __ROR4__(*(&STACK[0x4DC0] + BYTE2(v53)), 16);
  STACK[0x38F0] = BYTE1(v53);
  v57 = v55 ^ v56 ^ v45 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v53)), 24);
  v58 = __ROR4__(*(&STACK[0x4DC0] + (((*(v0 + v54 - 6784 * (((1266205 * v54) >> 32) >> 1)) - 87) ^ 0xFB) + 85)), 8);
  LOBYTE(v25) = v30;
  v59 = v34 ^ v31 ^ v40;
  LODWORD(STACK[0x3A10]) = v59;
  v60 = v57 ^ v58;
  v61 = v60 ^ v34;
  LODWORD(v34) = v60 ^ v34 ^ v59;
  LODWORD(STACK[0x38D8]) = v34;
  v62 = v34 ^ v52;
  STACK[0x39F8] = BYTE2(v62);
  v63 = __ROR4__(*(&STACK[0x4DC0] + BYTE2(v62)), 16);
  LODWORD(v34) = (v34 ^ v52);
  LODWORD(STACK[0x3970]) = v34;
  LODWORD(v45) = v60 ^ *(&STACK[0x4DC0] + v34);
  v64 = v60;
  STACK[0x3810] = v60;
  STACK[0x3960] = BYTE1(v62);
  v65 = ((v33 & ((v1 >> 1) & 0x55B5F437 ^ 0xAB6BE86E)) >> v29) ^ v40 ^ ((v35 & ((v1 >> 1) & 0x55B5F437 ^ 0xAB6BE86E)) << v30) ^ (((v35 & ((v1 >> 1) & 0x34B5F437 ^ 0x696BE86E)) << v30) | ((v28 & ((v1 >> 1) & 0x34B5F437 ^ 0x696BE86E)) >> v46)) ^ v63 ^ v45 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v62)), 24);
  LODWORD(v30) = v62;
  STACK[0x3818] = v62;
  LODWORD(v62) = v65 ^ __ROR4__(*(&STACK[0x4DC0] + ((v62 >> 22) & 0x3FC)), 8);
  LOBYTE(v60) = v29;
  v66 = v16;
  v67 = (((v2 & (v16 & 0x41738A64 ^ 0x82E714C9)) << v37) | ((v33 & (v16 & 0x41738A64 ^ 0x82E714C9)) >> v29)) ^ (((v2 & (v16 & 0x3D738A64 ^ 0x7AE714C9)) << v25) | ((v28 & (v16 & 0x3D738A64 ^ 0x7AE714C9)) >> v29));
  v68 = v61 ^ v40;
  STACK[0x3880] = v68;
  v69 = STACK[0x38D0];
  LODWORD(v29) = v62;
  LODWORD(STACK[0x3848]) = v62;
  v70 = v68 ^ v69 ^ v62;
  LODWORD(v45) = v64 ^ v31 ^ v70;
  LODWORD(v68) = v40 ^ v69;
  LODWORD(STACK[0x3898]) = v40 ^ v69;
  v71 = v69;
  v72 = v45 ^ v30;
  v73 = v45 ^ v30 ^ v68;
  STACK[0x3AD8] = v73;
  LODWORD(v30) = 4647 * (((v73 >> 17) & 0x80 | (v73 >> 25)) ^ 0xD9) + 19140993;
  v74 = ((*(v0 + 4647 * (HIBYTE(*(&STACK[0x4DC0] + BYTE1(v73))) ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * (HIBYTE(*(&STACK[0x4DC0] + BYTE1(v73))) ^ 0x9Au) + 25186740)) >> 32) >> 1)) ^ 0xC3) + 85) | (*(&STACK[0x4DC0] + BYTE1(v73)) << 8);
  STACK[0x3908] = BYTE2(v73);
  LODWORD(v35) = *(&STACK[0x4DC0] + BYTE2(v73));
  LODWORD(STACK[0x3920]) = v73;
  LODWORD(v68) = v67 ^ v29 ^ __ROR4__(v35, 16) ^ *(&STACK[0x4DC0] + v73) ^ __ROR4__(*(&STACK[0x4DC0] + (97 * (*(v0 + v30 - 6784 * (((1266205 * v30) >> 32) >> 1)) ^ 0x27))), 8) ^ v74;
  v75 = ((v2 & ((v1 >> 1) & 0x724FF9C6 ^ 0xE49FF38D)) << v37) | ((v33 & ((v1 >> 1) & 0x724FF9C6 ^ 0xE49FF38D)) >> v60);
  v76 = v40;
  v77 = v70 ^ v40;
  STACK[0x3850] = v77;
  v78 = v45 ^ v40;
  STACK[0x3A08] = v78;
  LODWORD(v77) = v77 ^ v71 ^ v68;
  LODWORD(STACK[0x3830]) = v68;
  LODWORD(v60) = v51;
  LODWORD(v78) = v78 ^ v51 ^ v77;
  v79 = v72 ^ v78;
  LODWORD(v45) = 4647 * ((((v72 ^ v78) >> 1) & 0x7F | (((v72 ^ v78) & 1) << 7)) ^ 0x40) + 15539568;
  v80 = 4647 * (((v79 >> 17) & 0x80 | (v79 >> 25)) ^ 0x40) + 15539568;
  LODWORD(STACK[0x38A0]) = v66;
  v81 = v66 & 0x7704B8BF ^ 0xEE09717F;
  v82 = STACK[0x3AA0];
  STACK[0x3950] = BYTE1(v79);
  LODWORD(v30) = ((v82 & ((v1 >> 1) & 0x11CFF9C6 ^ 0x239FF38D)) << v37) ^ ((v33 & ((v1 >> 1) & 0x11CFF9C6 ^ 0x239FF38D)) >> v46) ^ v75 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v79)), 24);
  STACK[0x3938] = BYTE2(v79);
  STACK[0x38E8] = v79;
  LODWORD(v73) = v30 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE2(v79)), 16) ^ v68 ^ *(&STACK[0x4DC0] + (97 * (*(v0 + v45 - 6784 * (((1266205 * v45) >> 32) >> 1)) ^ 0xA2))) ^ __ROR4__(*(&STACK[0x4DC0] + (97 * (*(v0 + v80 - 6784 * (((1266205 * v80) >> 32) >> 1)) ^ 0xA2))), 8);
  LODWORD(v45) = v66 & 0x284B8BF ^ 0x509717F;
  v83 = STACK[0x3A90];
  LODWORD(v45) = ((v82 & v45) << LODWORD(STACK[0x3A90])) | ((v28 & v45) >> v46);
  v84 = (v28 & v81) >> v46;
  v85 = v2;
  LODWORD(v45) = (((v2 & v81) << LODWORD(STACK[0x3A90])) | v84) ^ v45;
  v86 = v78 ^ v40;
  STACK[0x3900] = v86;
  v87 = v77 ^ v40;
  STACK[0x37E0] = v87;
  LODWORD(STACK[0x37D0]) = v73;
  LODWORD(v87) = v87 ^ v60 ^ v73;
  LODWORD(v78) = v86 ^ v71 ^ v87;
  LODWORD(STACK[0x38A8]) = v40 ^ v60;
  v88 = v79 ^ v40 ^ v60 ^ v78;
  v89 = (v88 >> 22) & 0x3FC;
  STACK[0x38C8] = v89;
  v90 = __ROR4__(*(&STACK[0x4DC0] + v89), 8);
  LODWORD(STACK[0x3868]) = (v79 ^ v40 ^ v60 ^ v78);
  LODWORD(v45) = v45 ^ v90 ^ *(&STACK[0x4DC0] + (v79 ^ v40 ^ v60 ^ v78));
  STACK[0x3870] = BYTE2(v88);
  LODWORD(v45) = v45 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE2(v88)), 16) ^ v73;
  STACK[0x3800] = BYTE1(v88);
  LODWORD(v73) = v45 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v88)), 24);
  v91 = v87 ^ v40;
  STACK[0x3948] = v91;
  LODWORD(v79) = v73;
  LODWORD(STACK[0x3808]) = v73;
  LODWORD(v30) = v91 ^ v60 ^ v73 ^ v71;
  v92 = v73 ^ v71 ^ v87;
  LODWORD(STACK[0x3AB8]) = v92;
  v93 = STACK[0x3A88];
  LODWORD(STACK[0x38C0]) = v1 >> 1;
  v94 = v78 ^ v40;
  STACK[0x3AC8] = v94;
  v95 = v30 ^ v78;
  STACK[0x3AD0] = v95;
  LODWORD(v2) = v30 ^ v94;
  LODWORD(v40) = STACK[0x3898];
  v96 = v88 ^ LODWORD(STACK[0x3898]) ^ v30 ^ v94;
  LODWORD(v78) = 4647 * ((BYTE1(v96) + 111) ^ 0x36) + 17937420;
  LOBYTE(v78) = *(v0 + v78 - 6784 * (((1266205 * v78) >> 32) >> 1)) ^ 0xE;
  LODWORD(STACK[0x39A0]) = v96;
  LODWORD(v45) = (((v82 & ((v1 >> 1) & 0x7D95B678 ^ 0xFB2B6CF1)) << v37) + ((v33 & ((v1 >> 1) & 0x7D95B678 ^ 0xFB2B6CF1)) >> v93)) ^ (((v85 & ((v1 >> 1) & 0x6115B678 ^ 0xC22B6CF1)) << v83) | ((v28 & ((v1 >> 1) & 0x6115B678 ^ 0xC22B6CF1)) >> v93)) ^ *(&STACK[0x4DC0] + v96);
  v97 = (v96 >> 22) & 0x3FC;
  STACK[0x3998] = v97;
  LODWORD(v45) = v45 ^ __ROR4__(*(&STACK[0x4DC0] + v97), 8) ^ v79;
  STACK[0x3988] = BYTE2(v96);
  STACK[0x3968] = v96;
  LODWORD(v78) = v45 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE2(v96)), 16) ^ __ROR4__(*(&STACK[0x4DC0] + ((v78 >> 3) | (32 * v78))), 24);
  LODWORD(v45) = (v1 >> 1) & 0x2D48B3A2 ^ 0x5A916744;
  LODWORD(v87) = STACK[0x38A0];
  LOBYTE(v3) = STACK[0x3A98];
  v98 = v78 ^ v92;
  v99 = v95 ^ v40 ^ v96 ^ v78 ^ v92;
  LODWORD(v30) = 4647 * (((v99 >> 17) & 0x80 | (v99 >> 25)) ^ 0x40) + 15539568;
  LODWORD(v79) = v82;
  LODWORD(v97) = ((v82 & v45) << v83) ^ (((v82 & (STACK[0x38A0] & 0x38C8B3A2 ^ 0x71916744)) << v37) + ((v33 & (STACK[0x38A0] & 0x38C8B3A2 ^ 0x71916744)) >> v3));
  LODWORD(v82) = v33;
  STACK[0x37B8] = BYTE2(v99);
  LODWORD(v45) = v97 ^ ((v33 & v45) >> v93) ^ __ROR4__(*(&STACK[0x4DC0] + BYTE2(v99)), 16);
  STACK[0x39D8] = BYTE1(v99);
  BYTE2(v97) = BYTE2(v99);
  v100 = __ROR4__(*(&STACK[0x4DC0] + BYTE1(v99)), 24);
  LOBYTE(v30) = *(v0 + v30 - 6784 * (((1266205 * v30) >> 32) >> 1));
  LODWORD(v96) = v76;
  v101 = v78 ^ v76;
  STACK[0x3910] = v101;
  LODWORD(v45) = v45 ^ v100 ^ v101;
  v102 = __ROR4__(*(&STACK[0x4DC0] + (97 * (v30 ^ 0xA2))), 8);
  LODWORD(STACK[0x39C8]) = v99;
  v103 = v45 ^ v102 ^ *(&STACK[0x4DC0] + v99);
  LODWORD(v45) = v87 & 0x6BD1CCEA ^ 0xD7A399D5;
  v104 = STACK[0x3AA8];
  LODWORD(v78) = ((v85 & (v87 & 0x64D1CCEA ^ 0xC9A399D5)) << v37) + ((STACK[0x3AA8] & (v87 & 0x64D1CCEA ^ 0xC9A399D5)) >> v93);
  LODWORD(v30) = STACK[0x3AA8] & v45;
  v105 = (v85 & v45) << v37;
  LOBYTE(v37) = v3;
  LODWORD(v78) = (v105 + (v30 >> v3)) ^ v78;
  v106 = v98 ^ v2;
  STACK[0x3958] = v106;
  LODWORD(v3) = STACK[0x3940];
  LODWORD(STACK[0x3918]) = v98 ^ LODWORD(STACK[0x3940]);
  LODWORD(v87) = v98 ^ v3 ^ v71;
  LODWORD(STACK[0x3978]) = v103 ^ v87;
  v107 = v106 ^ v3 ^ v103 ^ v87;
  STACK[0x38E0] = v99;
  v108 = v99 ^ v40 ^ v107;
  STACK[0x39C0] = BYTE2(v108);
  v109 = __ROR4__(*(&STACK[0x4DC0] + BYTE2(v108)), 16);
  LODWORD(STACK[0x39B8]) = (v99 ^ v40 ^ v107);
  LODWORD(v78) = v78 ^ v109 ^ *(&STACK[0x4DC0] + (v99 ^ v40 ^ v107));
  v110 = (v108 >> 22) & 0x3FC;
  STACK[0x39B0] = v110;
  v111 = *(&STACK[0x4DC0] + v110);
  STACK[0x39A8] = BYTE1(v108);
  LODWORD(v78) = v78 ^ __ROR4__(v111, 8) ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v108)), 24);
  v112 = v107 ^ v96;
  STACK[0x3980] = v112;
  LODWORD(v99) = v96;
  v113 = STACK[0x38C0];
  v114 = ((v79 & (v113 & 0x474866F3 ^ 0x8E90CDE6)) << v83) | ((v33 & (v113 & 0x474866F3 ^ 0x8E90CDE6)) >> v37);
  LODWORD(v110) = v78 ^ v87;
  v115 = v112 ^ v40 ^ v108 ^ v78 ^ v87;
  LODWORD(STACK[0x37C0]) = v110;
  STACK[0x37F0] = BYTE1(v115);
  v116 = v115;
  STACK[0x39E0] = v115;
  LODWORD(v115) = *(v0 + 4647 * (BYTE1(v115) ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (BYTE1(v115) ^ 0xC4u) + 14331348)) >> 32) >> 1)) + 117;
  STACK[0x37D8] = BYTE2(v116);
  v117 = __ROR4__(*(&STACK[0x4DC0] + BYTE2(v116)), 16);
  v118 = v78 ^ v103;
  STACK[0x36E8] = v103;
  STACK[0x3990] = v118;
  v119 = (v116 >> 22) & 0x3FC;
  STACK[0x37C8] = v119;
  LODWORD(v78) = (((v85 & (v113 & 0x174866F3 ^ 0x2E90CDE6)) << v83) + ((v104 & (v113 & 0x174866F3 ^ 0x2E90CDE6)) >> v93)) ^ v114 ^ v117 ^ v118 ^ __ROR4__(*(&STACK[0x4DC0] + v119), 8);
  v120 = __ROR4__(*(&STACK[0x4DC0] + ((v115 ^ 0x12 ^ (v115 >> 2) & 0x12) + 26)), 24);
  LODWORD(STACK[0x3758]) = v116;
  LODWORD(STACK[0x39D0]) = v78 ^ v120 ^ *(&STACK[0x4DC0] + v116);
  v121 = STACK[0x3810];
  LODWORD(v115) = *(v0 + 4647 * (BYTE1(v121) ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (BYTE1(v121) ^ 0xC4u) + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(STACK[0x37E8]) = v115 ^ 0x12 ^ (v115 >> 2) & 0x12;
  LODWORD(v115) = 4647 * (((STACK[0x3818] >> 17) & 0x80 | (STACK[0x3818] >> 25)) ^ 0x40) + 15539568;
  LODWORD(STACK[0x37F8]) = v115 - 6784 * (((1266205 * v115) >> 32) >> 1);
  v122 = (LODWORD(STACK[0x38D8]) ^ LODWORD(STACK[0x38A8]));
  STACK[0x3778] = v122;
  LODWORD(v115) = *(&STACK[0x3B10] + ((v122 >> 22) & 0x3FC));
  LODWORD(v78) = 4647 * (((v115 >> 17) & 0x80 | (v115 >> 25)) ^ 0x40) + 15539568;
  LODWORD(STACK[0x3760]) = (97 * (*(v0 + v78 - 6784 * (((1266205 * v78) >> 32) >> 1)) ^ 0xA2)) | (v115 << 8);
  v123 = LODWORD(STACK[0x37D0]) ^ v99;
  STACK[0x3618] = v123;
  LODWORD(v78) = 4647 * ((BYTE1(STACK[0x3AC8]) + 111) ^ 0x1C) + 4767822;
  LODWORD(v112) = 4647 * ((STACK[0x3AC8] + 111) ^ 0x1C) + 4767822;
  LODWORD(v115) = *(v0 + 4647 * (BYTE1(v123) ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (BYTE1(v123) ^ 0xC4u) + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(STACK[0x35E8]) = v115 ^ 0x12 ^ (v115 >> 2) & 0x12;
  LODWORD(v115) = *(v0 + v78 - 6784 * (((1266205 * v78) >> 32) >> 1)) ^ 0xFFFFFFE3;
  STACK[0x36A8] = (v115 >> 3) | (32 * v115);
  LODWORD(v115) = *(v0 + v112 - 6784 * (((1266205 * v112) >> 32) >> 1)) ^ 0xFFFFFFE3;
  STACK[0x36C0] = (v115 >> 3) | (32 * v115);
  LODWORD(v115) = 4647 * (((STACK[0x37B8] >> 1) | (BYTE2(v97) << 7)) ^ 0x40) + 15539568;
  LODWORD(STACK[0x38D8]) = v115 - 6784 * (((1266205 * v115) >> 32) >> 1);
  v124 = LODWORD(STACK[0x3820]) ^ v40;
  LODWORD(v123) = 4647 * (((v124 >> 9) & 0x80 | (v124 >> 17) & 0x7F) ^ 0xD9) + 19140993;
  LODWORD(STACK[0x3708]) = v123 - 6784 * (((1266205 * v123) >> 32) >> 1);
  LODWORD(v79) = STACK[0x3A10];
  LODWORD(v123) = 4647 * (((v79 >> 1) & 0x80 | (v79 >> 9)) ^ 0x40) + 15539568;
  LODWORD(STACK[0x3728]) = v123 - 6784 * (((1266205 * v123) >> 32) >> 1);
  LODWORD(v123) = 4647 * (((v79 >> 9) & 0x80 | (v79 >> 17) & 0x7F) ^ 0x40) + 15539568;
  LODWORD(STACK[0x3720]) = v123 - 6784 * (((1266205 * v123) >> 32) >> 1);
  LODWORD(v123) = *(&STACK[0x3B10] + STACK[0x3860]);
  LODWORD(v115) = 4647 * (((v123 >> 17) & 0x80 | (v123 >> 25)) ^ 0xD9) + 19140993;
  LODWORD(STACK[0x3750]) = (97 * (*(v0 + v115 - 6784 * (((1266205 * v115) >> 32) >> 1)) ^ 0x27)) | (v123 << 8);
  LODWORD(v123) = *(&STACK[0x3B10] + ((v103 >> 22) & 0x3FC));
  LODWORD(v115) = 4647 * (((v123 >> 17) & 0x80 | (v123 >> 25)) ^ 0xD9) + 19140993;
  LODWORD(STACK[0x3748]) = (97 * (*(v0 + v115 - 6784 * (((1266205 * v115) >> 32) >> 1)) ^ 0x27)) | (v123 << 8);
  LODWORD(v123) = BYTE1(STACK[0x3AD0]) ^ 0x9A;
  LODWORD(STACK[0x35E0]) = 4647 * v123 + 25186740 - 6784 * (((1266205 * (4647 * v123 + 25186740)) >> 32) >> 1);
  v125 = LODWORD(STACK[0x3808]) ^ v99;
  STACK[0x35D8] = v125;
  LODWORD(STACK[0x3600]) = 4647 * (BYTE3(v125) ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * (BYTE3(v125) ^ 0x9A) + 25186740)) >> 32) >> 1);
  LODWORD(v103) = STACK[0x3AB8];
  LODWORD(v125) = 4647 * (((v103 >> 1) & 0x80 | (v103 >> 9)) ^ 0xD9) + 19140993;
  LODWORD(STACK[0x35C0]) = v125 - 6784 * (((1266205 * v125) >> 32) >> 1);
  LODWORD(v125) = 4647 * (((v103 >> 17) & 0x80 | (v103 >> 25)) ^ 0xD9) + 19140993;
  LODWORD(STACK[0x35A8]) = v125 - 6784 * (((1266205 * v125) >> 32) >> 1);
  STACK[0x3860] = v110 ^ v107;
  LODWORD(v125) = 4647 * ((v110 ^ v107) ^ 0xFE) + 13123128;
  LODWORD(v115) = 4647 * ((((v110 ^ v107) >> 24) + 111) ^ 0x1C) + 4767822;
  v126 = v0;
  LODWORD(v125) = *(v0 + v125 - 6784 * (((1266205 * v125) >> 32) >> 1));
  LODWORD(v115) = *(v0 + v115 - 6784 * (((1266205 * v115) >> 32) >> 1)) ^ 0xFFFFFFE3;
  STACK[0x3700] = (v115 >> 3) | (32 * v115);
  LODWORD(STACK[0x37D0]) = (v125 - 71) ^ ((v125 - 71) << 6) ^ (4 * (v125 - 71));
  LODWORD(v125) = 4647 * ((BYTE1(STACK[0x3A08]) + 111) ^ 0x1C) + 4767822;
  LODWORD(v115) = STACK[0x3A08] ^ 0xC4;
  LODWORD(v112) = (BYTE1(STACK[0x3AD8]) + 111) ^ 0x36;
  LODWORD(v125) = *(v0 + v125 - 6784 * (((1266205 * v125) >> 32) >> 1)) ^ 0xFFFFFFE3;
  STACK[0x3718] = (v125 >> 3) | (32 * v125);
  LODWORD(v125) = *(v0 + 4647 * v115 + 14331348 - 6784 * (((1266205 * (4647 * v115 + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(STACK[0x3710]) = v125 ^ 0x12 ^ (v125 >> 2) & 0x12;
  LODWORD(v125) = *(v0 + 4647 * v112 + 17937420 - 6784 * (((1266205 * (4647 * v112 + 17937420)) >> 32) >> 1)) ^ 0xE;
  STACK[0x3730] = (v125 >> 3) | (32 * v125);
  LODWORD(v116) = STACK[0x38A0];
  LODWORD(v79) = STACK[0x38A0] & 0x9090909 | 0x12121212;
  LODWORD(STACK[0x36A0]) = v79;
  LODWORD(v112) = v113 & 0x9090909 | 0x12121212;
  v127 = v82;
  v128 = v82 & v79;
  LODWORD(v103) = STACK[0x3A98];
  LODWORD(STACK[0x36D8]) = v128 >> LODWORD(STACK[0x3A98]);
  v129 = STACK[0x3AA0];
  v130 = STACK[0x3AA0] & v79;
  STACK[0x3558] = v130;
  v131 = STACK[0x3930];
  v132 = v130 << STACK[0x3930];
  LODWORD(STACK[0x36F8]) = LODWORD(STACK[0x38B0]) ^ (v132 | (v128 >> v103));
  LODWORD(v119) = (v85 & v79) << v83;
  LODWORD(STACK[0x3568]) = v119;
  LODWORD(STACK[0x38B0]) = STACK[0x3828] ^ (v119 + (v128 >> v103));
  v133 = v85 & v112;
  STACK[0x3548] = v133;
  v134 = v85;
  v135 = STACK[0x3AA8];
  LODWORD(v119) = (STACK[0x3AA8] & v112) >> v103;
  LODWORD(STACK[0x3550]) = v119;
  LODWORD(STACK[0x35C8]) = LODWORD(STACK[0x3840]) ^ ((v133 << v83) + v119);
  v136 = v113 & 0x1C1C1C1C ^ 0x38383838;
  v137 = v127 & v136;
  STACK[0x3690] = v137;
  v138 = STACK[0x3A88];
  v139 = v137 >> STACK[0x3A88];
  v140 = v85 & v136;
  STACK[0x3768] = v140;
  v141 = v83;
  LODWORD(STACK[0x36F0]) = (v140 << v83) + v139;
  LODWORD(v119) = v116;
  LODWORD(STACK[0x3840]) = v116 & 0x4ACACACA ^ 0x95959595;
  LODWORD(STACK[0x3738]) = v113 & 0x4ACACACA ^ 0x95959595;
  LODWORD(v97) = v121;
  LODWORD(v79) = *(&STACK[0x3B10] + ((v121 >> 22) & 0x3FC));
  LODWORD(v121) = v113;
  v142 = v113 & 0xCCCCCCCC ^ 0x99999999;
  LODWORD(v139) = v135;
  v143 = v135 & v142;
  STACK[0x3770] = v143;
  v144 = v129 & v142;
  STACK[0x36E0] = v144;
  v145 = v144 << v131;
  STACK[0x3520] = v145;
  LODWORD(v99) = v143 >> v103;
  LODWORD(v145) = (v145 + (v143 >> v103)) ^ __ROR4__(v79, 24) ^ __ROR4__(*(&STACK[0x3B10] + (LODWORD(STACK[0x37E8]) + 26)), 8) ^ __ROR4__(*(&STACK[0x3B10] + v97), 16) ^ *(&STACK[0x3B10] + BYTE2(v97));
  LODWORD(v143) = v121 & 0xE7E7E7E7 ^ 0xCFCFCFCF;
  LODWORD(STACK[0x35D0]) = v143;
  LODWORD(v97) = v139;
  LODWORD(STACK[0x3580]) = ((v129 & v143) << v131) | ((v139 & v143) >> v138);
  v146 = v116 & 0x6A6A6A6A ^ 0xD4D4D4D4;
  LODWORD(STACK[0x3780]) = v146;
  LODWORD(STACK[0x37E8]) = v121 & 0x6A6A6A6A ^ 0xD4D4D4D4;
  v147 = (v127 & v146) >> v138;
  v148 = v129 & v146;
  LODWORD(STACK[0x37B8]) = (v148 << v141) | v147;
  LODWORD(STACK[0x3578]) = (v148 << v131) | v147;
  LODWORD(STACK[0x3808]) = v121 & 0x72727272 ^ 0xE4E4E4E4;
  LODWORD(STACK[0x3810]) = v116 & 0x72727272 ^ 0xE4E4E4E4;
  LODWORD(v147) = *(&STACK[0x3B10] + STACK[0x37F0]);
  LODWORD(v116) = v116 & 0x1010101 | 0x2020202;
  LODWORD(STACK[0x3818]) = v116;
  v149 = v85 & v116;
  STACK[0x3508] = v149;
  v150 = v127 & v116;
  STACK[0x3510] = v150;
  v151 = v149 << v131;
  STACK[0x35B0] = v151;
  STACK[0x36C8] = v150 >> v138;
  LODWORD(v151) = (v151 | (v150 >> v138)) ^ __ROR4__(v147, 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x37C8]), 24) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x3758])), 16) ^ *(&STACK[0x3B10] + STACK[0x37D8]);
  LODWORD(STACK[0x35B8]) = v151;
  v152 = STACK[0x3890];
  LODWORD(v147) = *(&STACK[0x3B10] + STACK[0x3890]);
  v153 = v97 & v136;
  STACK[0x3758] = v153;
  v154 = v129 & v136;
  STACK[0x3688] = v154;
  v155 = v154 << v131;
  STACK[0x3740] = v155;
  STACK[0x3828] = v153 >> v138;
  v156 = (v155 + (v153 >> v138)) ^ __ROR4__(v147, 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v152)), 8) ^ __ROR4__(*(&STACK[0x3B10] + ((v152 >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(v152));
  LODWORD(v147) = *(&STACK[0x3B10] + BYTE1(v124));
  v157 = v128 >> v138;
  STACK[0x3500] = v157;
  LODWORD(v157) = LODWORD(STACK[0x3888]) ^ (v132 | v157);
  LODWORD(v85) = v145;
  LODWORD(v104) = 16843009 * ((v151 ^ v145) + 1);
  LODWORD(v151) = v104 ^ ((v104 & STACK[0x39F0]) >> 1);
  LODWORD(v3) = v104;
  v158 = v151 & v127;
  STACK[0x3598] = v158;
  v159 = v151 & v129;
  LODWORD(STACK[0x3538]) = v151;
  STACK[0x3570] = v159;
  LODWORD(v158) = v158 >> v103;
  LODWORD(STACK[0x3498]) = v158;
  LODWORD(v159) = v159 << v141;
  LODWORD(STACK[0x3458]) = v157 ^ (v158 + v159);
  LODWORD(v157) = v119 & 0x1C1C1C1C ^ 0x38383838;
  v160 = v129 & v157;
  STACK[0x34C8] = v160;
  v161 = v97 & v157;
  STACK[0x3660] = v161;
  LOBYTE(v152) = v103;
  LODWORD(STACK[0x34D8]) = v161 >> v103;
  v162 = v160 << v131;
  STACK[0x34E8] = v162;
  LODWORD(v103) = v162 ^ (v161 >> v103) ^ __ROR4__(v147, 8) ^ __ROR4__(*(&STACK[0x3B10] + v124), 16) ^ *(&STACK[0x3B10] + (97 * (*(v126 + LODWORD(STACK[0x3708])) ^ 0x27))) ^ __ROR4__(*(&STACK[0x3B10] + ((v124 >> 22) & 0x3FC)), 24);
  LODWORD(STACK[0x3820]) = v3;
  LODWORD(v124) = v3 ^ ((v3 & STACK[0x3928]) >> 1);
  v163 = v124 & v97;
  STACK[0x35A0] = v163;
  v164 = v124 & v134;
  LODWORD(v163) = v163 >> v152;
  LODWORD(STACK[0x3890]) = v163;
  LODWORD(v161) = (v164 << v141) | v163;
  LODWORD(STACK[0x3888]) = v164 << v141;
  LODWORD(STACK[0x3590]) = v156 ^ v161;
  LODWORD(STACK[0x3450]) = v103 ^ v161;
  v165 = *(&STACK[0x3B10] + STACK[0x38B8]);
  LODWORD(STACK[0x38B8]) = LODWORD(STACK[0x36F0]) ^ __ROR4__(*(&STACK[0x3B10] + HIBYTE(LODWORD(STACK[0x3A10]))), 24) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x3A10])), 16) ^ __ROR4__(*(&STACK[0x3B10] + (97 * (*(v126 + LODWORD(STACK[0x3728])) ^ 0xA2))), 8) ^ *(&STACK[0x3B10] + (97 * (*(v126 + LODWORD(STACK[0x3720])) ^ 0xA2)));
  v166 = v134;
  v167 = v134 & v157;
  v168 = v127 & v157;
  STACK[0x3648] = v168;
  STACK[0x34C0] = v168 >> v138;
  STACK[0x3650] = v167;
  LODWORD(v168) = v165 ^ ((v167 << v141) + (v168 >> v138)) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x38F0]), 8);
  LODWORD(v3) = STACK[0x3858];
  v169 = (LODWORD(STACK[0x3848]) ^ LODWORD(STACK[0x3858]));
  LODWORD(v103) = *(&STACK[0x3B10] + ((v169 >> 22) & 0x3FC));
  LODWORD(STACK[0x3438]) = v168 ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x38F8])), 16) ^ LODWORD(STACK[0x3750]);
  LODWORD(v126) = STACK[0x3840];
  v170 = v97 & STACK[0x3840];
  v171 = v166 & STACK[0x3840];
  LODWORD(STACK[0x3728]) = v170 >> v152;
  STACK[0x3638] = v171;
  LODWORD(v171) = (v171 << v131) + (v170 >> v152);
  v172 = v151 & v97;
  STACK[0x38F0] = v172;
  LODWORD(v158) = v97;
  v173 = v172 >> v152;
  LOBYTE(v153) = v152;
  LODWORD(v172) = v159;
  LODWORD(STACK[0x37C8]) = v159;
  LODWORD(v152) = v159 ^ v173;
  LODWORD(v162) = v173;
  LODWORD(STACK[0x37F0]) = v173;
  LODWORD(STACK[0x3A10]) = v159 ^ v173 ^ v171 ^ __ROR4__(v103, 24) ^ __ROR4__(*(&STACK[0x3B10] + v169), 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v169)), 8) ^ *(&STACK[0x3B10] + BYTE2(v169));
  v174 = v124 & v127;
  LODWORD(STACK[0x38F8]) = ((v174 >> v138) | (v164 << v141)) ^ v85;
  v175 = STACK[0x3880];
  LODWORD(v169) = *(&STACK[0x3B10] + BYTE2(STACK[0x3880]));
  v176 = v166 & v142;
  STACK[0x36D0] = v176;
  LODWORD(v176) = v176 << v141;
  LODWORD(STACK[0x3720]) = v176;
  LODWORD(STACK[0x3680]) = v99;
  LODWORD(STACK[0x3388]) = v176 ^ v99 ^ v169 ^ __ROR4__(*(&STACK[0x3B10] + ((v175 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(&STACK[0x3B10] + v175), 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v175)), 8);
  LODWORD(v169) = *(&STACK[0x3B10] + STACK[0x3778]);
  v177 = STACK[0x3778];
  LODWORD(v176) = *(&STACK[0x3B10] + BYTE2(STACK[0x3778]));
  LODWORD(v85) = STACK[0x38A0];
  LODWORD(v175) = STACK[0x38A0] & 0xCCCCCCCC ^ 0x99999999;
  LODWORD(STACK[0x3750]) = v175;
  v178 = v127 & v175;
  v179 = v129 & v175;
  STACK[0x3670] = v178;
  STACK[0x3668] = v179;
  STACK[0x3518] = v178 >> v138;
  STACK[0x3678] = v179 << v131;
  LODWORD(STACK[0x3380]) = v176 ^ ((v179 << v131) + (v178 >> v138)) ^ __ROR4__(v169, 16) ^ LODWORD(STACK[0x3760]) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v177)), 8);
  v180 = STACK[0x3850];
  LODWORD(v169) = *(&STACK[0x3B10] + STACK[0x3850]);
  v181 = v129 & v126;
  STACK[0x36B8] = v181;
  v182 = v181 << v131;
  STACK[0x3620] = v182;
  LODWORD(STACK[0x3778]) = v172 + v162;
  LODWORD(STACK[0x3378]) = (v172 + v162) ^ (v182 | (v170 >> v138)) ^ __ROR4__(v169, 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v180)), 8) ^ *(&STACK[0x3B10] + BYTE2(v180)) ^ __ROR4__(*(&STACK[0x3B10] + ((v180 >> 22) & 0x3FC)), 24);
  v183 = STACK[0x3A08];
  LODWORD(v169) = *(&STACK[0x3B10] + ((STACK[0x3A08] >> 22) & 0x3FC));
  v184 = v164 << v131;
  v185 = v166 & STACK[0x3738];
  v186 = v127 & STACK[0x3738];
  LODWORD(v177) = STACK[0x3738];
  STACK[0x3560] = v186;
  LODWORD(v186) = v186 >> v153;
  LODWORD(STACK[0x36F0]) = v185 << v141;
  LODWORD(v164) = v174 >> v138;
  STACK[0x37D8] = v174 >> v138;
  LODWORD(STACK[0x3850]) = v164 + v184;
  STACK[0x3880] = v184;
  LODWORD(STACK[0x3608]) = v186;
  LODWORD(STACK[0x3A08]) = (v185 << v141) ^ v186 ^ (v164 + v184) ^ __ROR4__(v169, 24) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3718]), 8) ^ __ROR4__(*(&STACK[0x3B10] + (LODWORD(STACK[0x3710]) + 26)), 16) ^ *(&STACK[0x3B10] + BYTE2(v183));
  LODWORD(v169) = *(&STACK[0x3B10] + STACK[0x3960]);
  v187 = v127 & v142;
  STACK[0x34E0] = v187;
  LODWORD(v186) = STACK[0x36E0] << v141;
  v188 = v187 >> v138;
  STACK[0x34D0] = v188;
  LODWORD(v186) = (v186 | v188) ^ __ROR4__(v169, 8) ^ *(&STACK[0x3B10] + STACK[0x39F8]) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x3970])), 16);
  v189 = STACK[0x3AE0];
  LODWORD(v188) = *(&STACK[0x3B10] + STACK[0x3908]);
  LODWORD(STACK[0x3970]) = v186 ^ __ROR4__(*(&STACK[0x3B10] + (97 * (*(STACK[0x3AE0] + LODWORD(STACK[0x37F8])) ^ 0xA2))), 24);
  STACK[0x3710] = v185 << v131;
  v190 = v158 & v177;
  STACK[0x35F0] = v190;
  LODWORD(v190) = v190 >> v153;
  LODWORD(STACK[0x3588]) = v190;
  LODWORD(v169) = *(&STACK[0x3B10] + ((STACK[0x3AD8] >> 22) & 0x3FC));
  LODWORD(v174) = v174 >> v153;
  LODWORD(STACK[0x37F8]) = v174;
  LODWORD(v174) = v184 + v174;
  LODWORD(STACK[0x3848]) = v174;
  LODWORD(v174) = v174 ^ ((v185 << v131) + v190) ^ v188 ^ __ROR4__(v169, 24) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3730]), 8);
  v191 = LODWORD(STACK[0x3830]) ^ v3;
  LODWORD(v169) = *(&STACK[0x3B10] + BYTE1(v191));
  LODWORD(STACK[0x3AD8]) = v174 ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x3920])), 16);
  v192 = v129 & ~v85;
  STACK[0x36B0] = v192;
  v193 = v127;
  v194 = v127 & ~v85;
  v195 = v85;
  LODWORD(v174) = v192 << v141;
  STACK[0x3658] = v194 >> v138;
  LODWORD(STACK[0x3960]) = ((v192 << v141) | (v194 >> v138)) ^ __ROR4__(v169, 8) ^ __ROR4__(*(&STACK[0x3B10] + v191), 16) ^ __ROR4__(*(&STACK[0x3B10] + ((v191 >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(v191));
  v196 = STACK[0x37E0];
  LODWORD(v191) = *(&STACK[0x3B10] + STACK[0x37E0]);
  LODWORD(v177) = STACK[0x38C0];
  v197 = (v193 & ~LODWORD(STACK[0x38C0])) >> v138;
  v198 = (v166 & ~LODWORD(STACK[0x38C0])) << v131;
  STACK[0x3760] = v198;
  STACK[0x3640] = v197;
  LODWORD(v191) = (v198 | v197) ^ __ROR4__(v191, 16) ^ *(&STACK[0x3B10] + BYTE2(v196)) ^ __ROR4__(*(&STACK[0x3B10] + ((v196 >> 22) & 0x3FC)), 24);
  v199 = __ROR4__(*(&STACK[0x3B10] + BYTE1(v196)), 8);
  LODWORD(v198) = v129;
  v200 = v124 & v129;
  STACK[0x3830] = v200;
  LODWORD(v179) = v200 << v141;
  LODWORD(STACK[0x37E0]) = v200 << v141;
  LODWORD(STACK[0x3920]) = v191 ^ v199 ^ (v164 + (v200 << v141));
  LODWORD(v200) = *(&STACK[0x3B10] + STACK[0x3800]);
  LODWORD(v197) = v85 & 0xE7E7E7E7 ^ 0xCFCFCFCF;
  v201 = v129 & v197;
  STACK[0x36E0] = v201;
  v202 = v201 << v131;
  v203 = v193 & v197;
  LODWORD(STACK[0x3530]) = v197;
  STACK[0x3610] = v203;
  v204 = v203 >> v138;
  STACK[0x3708] = v204;
  LODWORD(STACK[0x38C8]) = (v202 + v204) ^ __ROR4__(v200, 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x38C8]), 24) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x3868])), 16) ^ *(&STACK[0x3B10] + STACK[0x3870]);
  v205 = STACK[0x38E8];
  LODWORD(v204) = *(&STACK[0x3B10] + STACK[0x38E8]);
  LODWORD(v197) = v194 >> v153;
  LODWORD(STACK[0x34F8]) = v194 >> v153;
  v206 = v166 & ~v85;
  STACK[0x3630] = v206;
  LODWORD(v206) = v206 << v141;
  LODWORD(STACK[0x3730]) = v206;
  LODWORD(STACK[0x3950]) = v206 ^ v197 ^ __ROR4__(v204, 16) ^ __ROR4__(*(&STACK[0x3B10] + ((v205 >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + STACK[0x3938]) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3950]), 8) ^ v152;
  v207 = STACK[0x3900];
  LODWORD(v204) = *(&STACK[0x3B10] + BYTE1(STACK[0x3900]));
  LODWORD(v162) = v158;
  v208 = v158 & ~v85;
  STACK[0x3628] = v208;
  LODWORD(v208) = v208 >> v153;
  LODWORD(STACK[0x3718]) = v208;
  LODWORD(v174) = (v174 + v208) ^ __ROR4__(v204, 8) ^ __ROR4__(*(&STACK[0x3B10] + ((v207 >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(v207));
  LODWORD(v204) = *(&STACK[0x3B10] + v207);
  LODWORD(v208) = *(&STACK[0x3B10] + ((*(v189 + LODWORD(STACK[0x3600])) ^ 0xC3) + 85));
  v209 = STACK[0x35D8];
  LODWORD(v197) = *(&STACK[0x3B10] + BYTE2(STACK[0x35D8]));
  LODWORD(STACK[0x3908]) = v174 ^ __ROR4__(v204, 16);
  v210 = v166 & STACK[0x37E8];
  v211 = v158 & STACK[0x37E8];
  STACK[0x35F8] = v211;
  LODWORD(v211) = v211 >> v153;
  LODWORD(STACK[0x3600]) = v210 << v141;
  LODWORD(STACK[0x3440]) = v211;
  LODWORD(v174) = ((v210 << v141) | v211) ^ __ROR4__(v208, 24) ^ v197 ^ __ROR4__(*(&STACK[0x3B10] + v209), 16);
  v212 = __ROR4__(*(&STACK[0x3B10] + BYTE1(v209)), 8);
  v213 = STACK[0x3538] & v166;
  STACK[0x3900] = v213;
  v214 = v213 << v131;
  STACK[0x39F8] = v214;
  LODWORD(v164) = STACK[0x3498];
  LODWORD(STACK[0x3938]) = v174 ^ v212 ^ (v214 + LODWORD(STACK[0x3498]));
  LODWORD(STACK[0x38E8]) = LODWORD(STACK[0x3580]) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x3618] >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x3618])) ^ __ROR4__(*(&STACK[0x3B10] + (LODWORD(STACK[0x35E8]) + 26)), 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3618]), 16);
  v215 = STACK[0x3948];
  LODWORD(v174) = *(&STACK[0x3B10] + STACK[0x3948]);
  v216 = v158 & (v85 & 0xE7E7E7E7 ^ 0xCFCFCFCF);
  STACK[0x35D8] = v216;
  LODWORD(v216) = v216 >> v153;
  LODWORD(STACK[0x34F0]) = v216;
  STACK[0x3618] = v202;
  LODWORD(STACK[0x3948]) = v202 ^ v216 ^ __ROR4__(v174, 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v215)), 8) ^ *(&STACK[0x3B10] + BYTE2(v215)) ^ __ROR4__(*(&STACK[0x3B10] + ((v215 >> 22) & 0x3FC)), 24) ^ (LODWORD(STACK[0x3890]) + v179);
  LODWORD(v174) = *(&STACK[0x3B10] + STACK[0x36A8]);
  LODWORD(v215) = STACK[0x35D0];
  v217 = v166 & STACK[0x35D0];
  STACK[0x34B8] = v217;
  v218 = v193 & v215;
  STACK[0x35D0] = v218;
  STACK[0x34B0] = v218 >> v138;
  LODWORD(v202) = STACK[0x3AB8];
  LODWORD(v152) = *(&STACK[0x3B10] + BYTE2(LODWORD(STACK[0x3AB8])));
  LODWORD(STACK[0x3AC8]) = (v217 << v141) ^ (v218 >> v138) ^ __ROR4__(v174, 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x36C0]), 16) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x3AC8] >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x3AC8]));
  v219 = STACK[0x3AD0];
  LODWORD(v174) = *(&STACK[0x3B10] + BYTE2(STACK[0x3AD0]));
  LODWORD(STACK[0x3AB8]) = v152 ^ LODWORD(STACK[0x37B8]) ^ __ROR4__(*(&STACK[0x3B10] + v202), 16) ^ __ROR4__(*(&STACK[0x3B10] + (97 * (*(v189 + LODWORD(STACK[0x35C0])) ^ 0x27))), 8) ^ __ROR4__(*(&STACK[0x3B10] + (97 * (*(v189 + LODWORD(STACK[0x35A8])) ^ 0x27))), 24);
  STACK[0x3448] = v210 << v131;
  LODWORD(STACK[0x3AD0]) = v174 ^ ((v210 << v131) + v211) ^ __ROR4__(*(&STACK[0x3B10] + ((v219 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(&STACK[0x3B10] + ((*(v189 + LODWORD(STACK[0x35E0])) ^ 0xC3) + 85)), 8) ^ __ROR4__(*(&STACK[0x3B10] + v219), 16);
  v220 = STACK[0x3910];
  LODWORD(v210) = *(&STACK[0x3B10] + BYTE1(STACK[0x3910]));
  LODWORD(STACK[0x3580]) = v177 & 0x13131313;
  LODWORD(v217) = v177 & 0x13131313 ^ 0x26262626;
  v221 = v162 & v217;
  v222 = v166 & v217;
  LODWORD(STACK[0x34A0]) = v217;
  STACK[0x35C0] = v221;
  LODWORD(STACK[0x36C0]) = v221 >> v153;
  LODWORD(STACK[0x3910]) = ((v222 << v141) | (v221 >> v153)) ^ __ROR4__(v210, 8) ^ __ROR4__(*(&STACK[0x3B10] + ((v220 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(&STACK[0x3B10] + v220), 16) ^ *(&STACK[0x3B10] + BYTE2(v220));
  LODWORD(v210) = LODWORD(STACK[0x3578]) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x3968])), 8) ^ *(&STACK[0x3B10] + STACK[0x3988]) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x39A0])), 16);
  v223 = __ROR4__(*(&STACK[0x3B10] + STACK[0x3998]), 24);
  v224 = v3;
  v225 = LODWORD(STACK[0x3918]) ^ v3;
  LODWORD(v197) = *(&STACK[0x3B10] + BYTE2(v225));
  v226 = STACK[0x3570] << v131;
  LODWORD(v220) = v226;
  STACK[0x3800] = v226;
  LODWORD(v3) = v164;
  LODWORD(STACK[0x39A0]) = v210 ^ v223 ^ (v226 | v164);
  LOBYTE(v226) = v131;
  STACK[0x36A8] = v222 << v131;
  LODWORD(v217) = (v193 & v217) >> v153;
  LODWORD(STACK[0x3490]) = v217;
  LODWORD(v217) = v197 ^ ((v222 << v131) | v217) ^ __ROR4__(*(&STACK[0x3B10] + v225), 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v225)), 8);
  LODWORD(v210) = *(&STACK[0x3B10] + ((v225 >> 22) & 0x3FC));
  LODWORD(v222) = *(&STACK[0x3B10] + BYTE1(STACK[0x36E8]));
  LOBYTE(v131) = STACK[0x36E8];
  LODWORD(v225) = *(&STACK[0x3B10] + BYTE2(STACK[0x36E8]));
  LODWORD(v85) = v217 ^ __ROR4__(v210, 24);
  v227 = v198 & STACK[0x3808];
  v228 = v193 & STACK[0x3808];
  LODWORD(v124) = v193;
  LODWORD(v219) = STACK[0x3808];
  STACK[0x3538] = v228 >> v138;
  LODWORD(v222) = (v228 >> v138) ^ (v227 << v141) ^ __ROR4__(v222, 8) ^ v225 ^ __ROR4__(*(&STACK[0x3B10] + v131), 16) ^ LODWORD(STACK[0x3748]);
  v229 = STACK[0x3958];
  LODWORD(v225) = *(&STACK[0x3B10] + STACK[0x3958]);
  LODWORD(v174) = v195 & 0x13131313 ^ 0x26262626;
  v230 = v198;
  LODWORD(v197) = (v198 & v174) << v141;
  LODWORD(STACK[0x36E8]) = v197;
  v231 = v162 & v174;
  LODWORD(STACK[0x34A8]) = v174;
  STACK[0x3578] = v231 >> v138;
  LODWORD(v174) = (v197 | (v231 >> v138)) ^ __ROR4__(v225, 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v229)), 8) ^ __ROR4__(*(&STACK[0x3B10] + ((v229 >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(v229));
  v232 = STACK[0x37F0];
  LODWORD(STACK[0x3988]) = v222 ^ (v220 + LODWORD(STACK[0x37F0]));
  LODWORD(STACK[0x3998]) = v174 ^ (v220 + v232);
  v233 = LODWORD(STACK[0x3978]) ^ v224;
  LODWORD(v225) = *(&STACK[0x3B10] + BYTE1(v233));
  LODWORD(v197) = *(&STACK[0x3B10] + (LODWORD(STACK[0x3978]) ^ v224));
  v234 = (v162 & v219) >> v138;
  LOBYTE(v219) = v226;
  v235 = v227 << v226;
  STACK[0x3570] = v234;
  LODWORD(v227) = (v227 << v226) ^ v234;
  LODWORD(STACK[0x35E8]) = v227;
  LODWORD(STACK[0x3978]) = v227 ^ __ROR4__(v225, 8) ^ __ROR4__(v197, 16) ^ *(&STACK[0x3B10] + BYTE2(v233)) ^ __ROR4__(*(&STACK[0x3B10] + ((v233 >> 22) & 0x3FC)), 24) ^ (STACK[0x39F8] | v3);
  v236 = STACK[0x3980];
  LODWORD(v227) = *(&STACK[0x3B10] + ((STACK[0x3980] >> 22) & 0x3FC));
  LODWORD(v233) = *(&STACK[0x3B10] + BYTE2(STACK[0x3980]));
  LODWORD(v197) = STACK[0x3810];
  LODWORD(v234) = (v166 & STACK[0x3810]) << v141;
  LODWORD(STACK[0x3410]) = v234;
  v237 = v124 & v197;
  LODWORD(v220) = v124;
  STACK[0x3408] = v237;
  LODWORD(v237) = v237 >> v153;
  LODWORD(STACK[0x3748]) = v237;
  LODWORD(v237) = v234 + v237;
  LODWORD(STACK[0x35E0]) = v237;
  LODWORD(v227) = v237 ^ __ROR4__(v227, 24) ^ v233 ^ __ROR4__(*(&STACK[0x3B10] + v236), 16);
  v238 = __ROR4__(*(&STACK[0x3B10] + BYTE1(v236)), 8);
  v239 = STACK[0x35A0] >> v138;
  v240 = STACK[0x3880];
  LODWORD(STACK[0x3918]) = LODWORD(STACK[0x35C8]) ^ STACK[0x3880] ^ v239;
  LODWORD(v234) = STACK[0x3888];
  LODWORD(STACK[0x3980]) = LODWORD(STACK[0x3910]) ^ LODWORD(STACK[0x3888]) ^ v239;
  LODWORD(v239) = v239 | LODWORD(STACK[0x37E0]);
  LODWORD(STACK[0x3958]) = LODWORD(STACK[0x38C8]) ^ v239;
  LODWORD(STACK[0x3968]) = v227 ^ v238 ^ v239;
  LODWORD(v226) = *(&STACK[0x3B10] + LODWORD(STACK[0x39C8]));
  STACK[0x3838] = v166;
  v241 = (v166 & (v195 & 0x13131313 ^ 0x26262626)) << v219;
  LOBYTE(v227) = v219;
  STACK[0x35A8] = v241;
  LODWORD(v226) = (v241 + (v231 >> v153)) ^ __ROR4__(v226, 16) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x38E0] >> 22) & 0x3FC)), 24) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x39D8]), 8) ^ *(&STACK[0x3B10] + (97 * (*(v189 + LODWORD(STACK[0x38D8])) ^ 0xA2)));
  v242 = STACK[0x37D8];
  LODWORD(STACK[0x39D8]) = v85 ^ (STACK[0x37D8] + v234);
  LODWORD(STACK[0x39C8]) = v226 ^ (v242 + v234);
  LODWORD(v226) = *(&STACK[0x3B10] + STACK[0x39A8]);
  LODWORD(v231) = *(&STACK[0x3B10] + STACK[0x39B0]);
  LODWORD(STACK[0x35A0]) = v228 >> v153;
  v243 = LODWORD(STACK[0x38E8]) ^ (v242 | v240);
  LODWORD(STACK[0x39C0]) = v235 ^ (v228 >> v153) ^ __ROR4__(v226, 8) ^ __ROR4__(v231, 24) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x39B8])), 16) ^ *(&STACK[0x3B10] + STACK[0x39C0]) ^ (v242 | v240);
  v244 = STACK[0x3990];
  LODWORD(v226) = *(&STACK[0x3B10] + ((STACK[0x3990] >> 22) & 0x3FC));
  LODWORD(v231) = STACK[0x3508] << v141;
  LODWORD(v239) = v162;
  v245 = (v162 & STACK[0x3818]) >> v138;
  STACK[0x3480] = v245;
  LODWORD(v226) = (v231 | v245) ^ __ROR4__(v226, 24) ^ *(&STACK[0x3B10] + BYTE2(v244));
  LODWORD(v245) = *(&STACK[0x3B10] + v244);
  v246 = __ROR4__(*(&STACK[0x3B10] + BYTE1(v244)), 8);
  v247 = STACK[0x37C8];
  LODWORD(STACK[0x3498]) = LODWORD(STACK[0x37C8]) | v232;
  v248 = v226 ^ v246 ^ (v247 | v232) ^ __ROR4__(v245, 16);
  LODWORD(STACK[0x38C8]) = v248;
  LODWORD(v234) = STACK[0x3940];
  LODWORD(v231) = LODWORD(STACK[0x37C0]) ^ LODWORD(STACK[0x3940]);
  v249 = v231 ^ v224;
  LODWORD(v245) = *(&STACK[0x3B10] + ((v249 >> 22) & 0x3FC));
  LODWORD(v244) = STACK[0x3510] >> v153;
  LODWORD(STACK[0x3510]) = v244;
  LODWORD(STACK[0x39B8]) = (STACK[0x35B0] + v244) ^ __ROR4__(v245, 24) ^ *(&STACK[0x3B10] + BYTE2(v249)) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v249)), 8) ^ __ROR4__(*(&STACK[0x3B10] + (v231 ^ v224)), 16);
  LODWORD(v249) = *(&STACK[0x3B10] + STACK[0x3700]);
  LODWORD(v197) = STACK[0x38C0];
  LODWORD(v244) = STACK[0x38C0] & 0x1010101 | 0x2020202;
  LODWORD(STACK[0x3488]) = v244;
  LODWORD(v245) = (v230 & v244) << v141;
  v250 = v239 & v244;
  LODWORD(v228) = v239;
  STACK[0x35C8] = v250;
  v251 = v250 >> v138;
  STACK[0x3508] = v251;
  LODWORD(v249) = (v245 + v251) ^ __ROR4__(v249, 24) ^ __ROR4__(*(&STACK[0x3B10] + ((LODWORD(STACK[0x37D0]) ^ 0xFE) + 26)), 16);
  LODWORD(v219) = STACK[0x3860];
  LODWORD(v251) = *(&STACK[0x3B10] + BYTE2(v219));
  v252 = __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x3860])), 8);
  v253 = STACK[0x3830] << v227;
  STACK[0x33C8] = v253;
  v254 = v242 | v253;
  LODWORD(STACK[0x3468]) = v242 | v253;
  LODWORD(STACK[0x39B0]) = v249 ^ v252 ^ v251 ^ (v242 | v253);
  v255 = STACK[0x3900] << v141;
  LODWORD(STACK[0x37C0]) = v255;
  LODWORD(STACK[0x39A8]) = (v232 + v255) ^ LODWORD(STACK[0x35B8]);
  LODWORD(v245) = v197 & 0xF8F8F8F8 ^ 0xF1F1F1F1;
  LODWORD(v236) = v242 ^ v253;
  v256 = LODWORD(STACK[0x36F8]) ^ v242 ^ v253;
  v257 = v228;
  v258 = v228 & v245;
  STACK[0x33B8] = v258;
  v259 = v258 >> v153;
  v260 = v230 & v245;
  STACK[0x33B0] = v260;
  LODWORD(v260) = v260 << v141;
  LODWORD(STACK[0x35B8]) = v260;
  LODWORD(STACK[0x3478]) = v259;
  LODWORD(v231) = v231 ^ LODWORD(STACK[0x38D0]) ^ LODWORD(STACK[0x39D0]);
  v261 = LODWORD(STACK[0x39D0]) ^ (v260 | v259) ^ v236;
  LODWORD(STACK[0x38D8]) = v261;
  v262 = v219 ^ v234 ^ v231;
  v263 = v166 & v245;
  LODWORD(v260) = (v220 & v245) >> v153;
  STACK[0x3700] = v263 << v227;
  LODWORD(STACK[0x35B0]) = v260;
  LODWORD(v245) = v260 ^ v224 ^ (v263 << v227);
  LODWORD(v260) = v240 | LODWORD(STACK[0x37F8]);
  LODWORD(STACK[0x3428]) = v260;
  LODWORD(STACK[0x39D0]) = v245 ^ v260 ^ v231;
  v264 = STACK[0x3800];
  LODWORD(v260) = STACK[0x3800] | (STACK[0x3598] >> v138);
  v265 = STACK[0x3598] >> v138;
  LODWORD(STACK[0x3470]) = v260;
  v266 = LODWORD(STACK[0x38B8]) ^ v260;
  LODWORD(STACK[0x3830]) = v264 | v232;
  v267 = LODWORD(STACK[0x3438]) ^ (v264 | v232);
  LODWORD(STACK[0x3910]) = ((((v248 - v243) ^ (&STACK[0x4000] + 3520)) - &STACK[0x3B10]) ^ 0xAE1E352B) + v261;
  v268 = ((((((v248 - v243) ^ (&STACK[0x4000] - 64)) - &STACK[0x3B10]) ^ 0x2B) + v261) & 1) == 0;
  if ((((((v248 - v243) ^ (&STACK[0x4000] - 64)) - &STACK[0x3B10]) ^ 0x2B) + v261))
  {
    v269 = v267;
  }

  else
  {
    v269 = v266;
  }

  LODWORD(STACK[0x38E8]) = v269;
  v270 = STACK[0x3590];
  if ((((((v248 - v243) ^ (&STACK[0x4000] - 64)) - &STACK[0x3B10]) ^ 0x2B) + v261))
  {
    v267 = STACK[0x3590];
  }

  LODWORD(STACK[0x3990]) = v267;
  v271 = STACK[0x3450];
  if ((((((v248 - v243) ^ (&STACK[0x4000] - 64)) - &STACK[0x3B10]) ^ 0x2B) + v261))
  {
    v270 = STACK[0x3450];
  }

  LODWORD(STACK[0x38E0]) = v270;
  if ((((((v248 - v243) ^ (&STACK[0x4000] - 64)) - &STACK[0x3B10]) ^ 0x2B) + v261))
  {
    v272 = v266;
  }

  else
  {
    v272 = v271;
  }

  LODWORD(STACK[0x3900]) = v272;
  v273 = LODWORD(STACK[0x3898]) ^ ((v263 << v141) + v259) ^ STACK[0x39E0];
  v274 = v195 & 0xF8F8F8F8 ^ 0xF1F1F1F1;
  LODWORD(STACK[0x36F8]) = v274;
  v275 = (v257 & v274) >> v138;
  v276 = STACK[0x38F0] >> v138;
  v277 = v230 & v274;
  STACK[0x3590] = v277;
  LODWORD(v277) = v277 << v141;
  LODWORD(STACK[0x3398]) = v277;
  STACK[0x3598] = v275;
  v278 = v276;
  STACK[0x33A8] = v276;
  v279 = v276 | v247;
  LODWORD(STACK[0x3418]) = v279;
  LODWORD(STACK[0x39E0]) = v262 ^ v224 ^ (v277 + v275) ^ v279;
  v280 = v232 | v255;
  v281 = v273 ^ (v232 | v255) ^ v262;
  v282 = v265;
  STACK[0x3460] = v265;
  LODWORD(STACK[0x3390]) = v265 + v264;
  v283 = LODWORD(STACK[0x38B0]) ^ (v265 + v264);
  if ((((((v248 - v243) ^ (&STACK[0x4000] - 64)) - &STACK[0x3B10]) ^ 0x2B) + v261))
  {
    v284 = v256;
  }

  else
  {
    v284 = LODWORD(STACK[0x38B0]) ^ (v265 + v264);
  }

  LODWORD(STACK[0x38F0]) = v284;
  v285 = STACK[0x3918];
  if ((((((v248 - v243) ^ (&STACK[0x4000] - 64)) - &STACK[0x3B10]) ^ 0x2B) + v261))
  {
    v286 = STACK[0x3918];
  }

  else
  {
    v286 = v256;
  }

  LODWORD(STACK[0x38B8]) = v286;
  if (v268)
  {
    v287 = v285;
  }

  else
  {
    v287 = STACK[0x3458];
  }

  if (v268)
  {
    v283 = STACK[0x3458];
  }

  LODWORD(STACK[0x38B0]) = v283;
  v288 = LODWORD(STACK[0x3388]) ^ v279;
  v289 = LODWORD(STACK[0x3380]) ^ LODWORD(STACK[0x3848]);
  v290 = LODWORD(STACK[0x3970]) ^ LODWORD(STACK[0x3850]);
  if (v268)
  {
    v291 = v288;
  }

  else
  {
    v291 = LODWORD(STACK[0x3380]) ^ LODWORD(STACK[0x3848]);
  }

  LODWORD(STACK[0x3918]) = v291;
  v292 = STACK[0x38F8];
  if (v268)
  {
    v293 = STACK[0x38F8];
  }

  else
  {
    v293 = v288;
  }

  LODWORD(STACK[0x3860]) = v293;
  if (v268)
  {
    v294 = v289;
  }

  else
  {
    v294 = v290;
  }

  if (v268)
  {
    v292 = v290;
  }

  LODWORD(STACK[0x38F8]) = v292;
  if (v268)
  {
    v295 = STACK[0x3AD8];
  }

  else
  {
    v295 = STACK[0x3A10];
  }

  if (v268)
  {
    v296 = STACK[0x3A10];
  }

  else
  {
    v296 = STACK[0x3378];
  }

  if (v268)
  {
    v297 = STACK[0x3A08];
  }

  else
  {
    v297 = STACK[0x3AD8];
  }

  if (v268)
  {
    v298 = STACK[0x3378];
  }

  else
  {
    v298 = STACK[0x3A08];
  }

  LODWORD(STACK[0x3438]) = v278 ^ v247;
  v299 = LODWORD(STACK[0x3960]) ^ v278 ^ v247;
  v300 = STACK[0x39F8];
  LODWORD(STACK[0x3450]) = STACK[0x39F8] | v232;
  v301 = LODWORD(STACK[0x3908]) ^ (v300 | v232);
  v302 = STACK[0x3920];
  if (v268)
  {
    v303 = v299;
  }

  else
  {
    v303 = STACK[0x3920];
  }

  LODWORD(STACK[0x3A10]) = v303;
  if (v268)
  {
    v304 = STACK[0x3950];
  }

  else
  {
    v304 = v299;
  }

  if (v268)
  {
    v305 = v302;
  }

  else
  {
    v305 = v301;
  }

  if (v268)
  {
    v306 = v301;
  }

  else
  {
    v306 = STACK[0x3950];
  }

  LODWORD(STACK[0x3970]) = v306;
  LODWORD(STACK[0x3458]) = v282 + v300;
  v307 = LODWORD(STACK[0x3AC8]) ^ (v282 + v300);
  v308 = STACK[0x3948];
  if (v268)
  {
    v309 = STACK[0x3948];
  }

  else
  {
    v309 = v307;
  }

  LODWORD(STACK[0x3370]) = v309;
  if (v268)
  {
    v310 = v307;
  }

  else
  {
    v310 = STACK[0x3958];
  }

  if (v268)
  {
    v311 = STACK[0x3958];
  }

  else
  {
    v311 = v243;
  }

  LODWORD(STACK[0x3368]) = v311;
  if (v268)
  {
    v312 = v243;
  }

  else
  {
    v312 = v308;
  }

  v313 = STACK[0x3968];
  v314 = STACK[0x39C0];
  if (v268)
  {
    v315 = STACK[0x3968];
  }

  else
  {
    v315 = STACK[0x39C0];
  }

  v316 = STACK[0x3978];
  if (v268)
  {
    v313 = STACK[0x3978];
  }

  LODWORD(STACK[0x3A08]) = v313;
  v317 = STACK[0x3988];
  if (v268)
  {
    v318 = STACK[0x3988];
  }

  else
  {
    v318 = v316;
  }

  if (v268)
  {
    v317 = v314;
  }

  LODWORD(STACK[0x3388]) = v317;
  LODWORD(STACK[0x37D0]) = v280;
  v319 = LODWORD(STACK[0x39B8]) ^ v280;
  v320 = STACK[0x38C8];
  if (v268)
  {
    v321 = STACK[0x38C8];
  }

  else
  {
    v321 = LODWORD(STACK[0x39B8]) ^ v280;
  }

  v322 = STACK[0x39A8];
  if (v268)
  {
    v320 = STACK[0x39A8];
  }

  LODWORD(STACK[0x3948]) = v320;
  if (v268)
  {
    v323 = STACK[0x39B0];
  }

  else
  {
    v323 = v322;
  }

  if (!v268)
  {
    v319 = STACK[0x39B0];
  }

  LODWORD(STACK[0x3360]) = v319;
  if (v268)
  {
    v324 = STACK[0x39D8];
  }

  else
  {
    v324 = STACK[0x3998];
  }

  if (v268)
  {
    v325 = STACK[0x3998];
  }

  else
  {
    v325 = STACK[0x39C8];
  }

  if (v268)
  {
    v326 = STACK[0x39C8];
  }

  else
  {
    v326 = STACK[0x3980];
  }

  if (v268)
  {
    v327 = STACK[0x3980];
  }

  else
  {
    v327 = STACK[0x39D8];
  }

  if (v268)
  {
    v328 = STACK[0x3938];
  }

  else
  {
    v328 = LODWORD(STACK[0x3AB8]) ^ v280;
  }

  if (v268)
  {
    v329 = LODWORD(STACK[0x3AB8]) ^ v280;
  }

  else
  {
    v329 = LODWORD(STACK[0x3AD0]) ^ v254;
  }

  if (v268)
  {
    v330 = STACK[0x39A0];
  }

  else
  {
    v330 = STACK[0x3938];
  }

  if (v268)
  {
    v331 = LODWORD(STACK[0x3AD0]) ^ v254;
  }

  else
  {
    v331 = STACK[0x39A0];
  }

  v332 = STACK[0x38D8];
  v333 = STACK[0x39D0];
  if (v268)
  {
    v334 = STACK[0x38D8];
  }

  else
  {
    v334 = STACK[0x39D0];
  }

  if (v268)
  {
    v332 = v281;
  }

  LODWORD(STACK[0x3380]) = v332;
  v335 = STACK[0x39E0];
  if (!v268)
  {
    v333 = STACK[0x39E0];
  }

  LODWORD(STACK[0x3378]) = v333;
  if (v268)
  {
    v281 = v335;
  }

  v336 = (STACK[0x3910] & 2) == 0;
  v337 = STACK[0x38E8];
  v338 = STACK[0x38E0];
  if ((STACK[0x3910] & 2) != 0)
  {
    v339 = STACK[0x38E0];
  }

  else
  {
    v339 = STACK[0x38E8];
  }

  LODWORD(STACK[0x39E0]) = v339;
  if (v336)
  {
    v340 = v338;
  }

  else
  {
    v340 = v337;
  }

  LODWORD(STACK[0x3870]) = v340;
  v341 = STACK[0x38F0];
  if (v336)
  {
    v342 = v287;
  }

  else
  {
    v342 = STACK[0x38F0];
  }

  LODWORD(STACK[0x3910]) = v342;
  if (v336)
  {
    v287 = v341;
  }

  LODWORD(STACK[0x38F0]) = v287;
  v343 = STACK[0x3990];
  v344 = STACK[0x3900];
  if (v336)
  {
    v345 = STACK[0x3990];
  }

  else
  {
    v345 = STACK[0x3900];
  }

  LODWORD(STACK[0x39D0]) = v345;
  if (v336)
  {
    v346 = v344;
  }

  else
  {
    v346 = v343;
  }

  LODWORD(STACK[0x3868]) = v346;
  if (v336)
  {
    v347 = v296;
  }

  else
  {
    v347 = v297;
  }

  LODWORD(STACK[0x38E8]) = v347;
  if (!v336)
  {
    v297 = v296;
  }

  LODWORD(STACK[0x3998]) = v297;
  v348 = STACK[0x3860];
  if (v336)
  {
    v349 = v294;
  }

  else
  {
    v349 = STACK[0x3860];
  }

  LODWORD(STACK[0x39B8]) = v349;
  if (v336)
  {
    v350 = v348;
  }

  else
  {
    v350 = v294;
  }

  LODWORD(STACK[0x39C8]) = v350;
  if (v336)
  {
    v351 = v298;
  }

  else
  {
    v351 = v295;
  }

  LODWORD(STACK[0x3990]) = v351;
  if (v336)
  {
    v352 = v295;
  }

  else
  {
    v352 = v298;
  }

  LODWORD(STACK[0x38E0]) = v352;
  if (v336)
  {
    v353 = v304;
  }

  else
  {
    v353 = v305;
  }

  LODWORD(STACK[0x3968]) = v353;
  if (!v336)
  {
    v305 = v304;
  }

  LODWORD(STACK[0x39C0]) = v305;
  v354 = STACK[0x3918];
  v355 = STACK[0x38F8];
  if (v336)
  {
    v356 = STACK[0x3918];
  }

  else
  {
    v356 = STACK[0x38F8];
  }

  LODWORD(STACK[0x39D8]) = v356;
  if (v336)
  {
    v357 = v355;
  }

  else
  {
    v357 = v354;
  }

  LODWORD(STACK[0x3908]) = v357;
  if (v336)
  {
    v358 = v329;
  }

  else
  {
    v358 = v330;
  }

  LODWORD(STACK[0x3920]) = v358;
  if (v336)
  {
    v359 = v330;
  }

  else
  {
    v359 = v329;
  }

  LODWORD(STACK[0x39B0]) = v359;
  if (v336)
  {
    v360 = v327;
  }

  else
  {
    v360 = v325;
  }

  LODWORD(STACK[0x3AD8]) = v360;
  if (v336)
  {
    v361 = v325;
  }

  else
  {
    v361 = v327;
  }

  LODWORD(STACK[0x38D8]) = v361;
  if (v336)
  {
    v362 = v321;
  }

  else
  {
    v362 = v323;
  }

  LODWORD(STACK[0x3AD0]) = v362;
  if (v336)
  {
    v363 = v323;
  }

  else
  {
    v363 = v321;
  }

  LODWORD(STACK[0x3AC8]) = v363;
  if (v336)
  {
    v364 = v331;
  }

  else
  {
    v364 = v328;
  }

  LODWORD(STACK[0x3960]) = v364;
  if (v336)
  {
    v365 = v328;
  }

  else
  {
    v365 = v331;
  }

  LODWORD(STACK[0x3958]) = v365;
  if (v336)
  {
    v366 = v312;
  }

  else
  {
    v366 = v310;
  }

  LODWORD(STACK[0x3918]) = v366;
  if (v336)
  {
    v367 = v310;
  }

  else
  {
    v367 = v312;
  }

  LODWORD(STACK[0x3860]) = v367;
  if (v336)
  {
    v368 = v326;
  }

  else
  {
    v368 = v324;
  }

  LODWORD(STACK[0x38C8]) = v368;
  if (v336)
  {
    v369 = v324;
  }

  else
  {
    v369 = v326;
  }

  LODWORD(STACK[0x3978]) = v369;
  if (v336)
  {
    v370 = v318;
  }

  else
  {
    v370 = v315;
  }

  LODWORD(STACK[0x3950]) = v370;
  if (v336)
  {
    v371 = v315;
  }

  else
  {
    v371 = v318;
  }

  LODWORD(STACK[0x39A8]) = v371;
  v372 = STACK[0x38B8];
  v373 = STACK[0x38B0];
  if (v336)
  {
    v374 = STACK[0x38B0];
  }

  else
  {
    v374 = STACK[0x38B8];
  }

  LODWORD(STACK[0x3900]) = v374;
  if (v336)
  {
    v375 = v372;
  }

  else
  {
    v375 = v373;
  }

  LODWORD(STACK[0x38B0]) = v375;
  v376 = STACK[0x3A10];
  v377 = STACK[0x3970];
  if (v336)
  {
    v378 = STACK[0x3970];
  }

  else
  {
    v378 = STACK[0x3A10];
  }

  LODWORD(STACK[0x3988]) = v378;
  if (v336)
  {
    v379 = v376;
  }

  else
  {
    v379 = v377;
  }

  LODWORD(STACK[0x38F8]) = v379;
  v380 = STACK[0x3370];
  v381 = STACK[0x3368];
  if (v336)
  {
    v382 = STACK[0x3368];
  }

  else
  {
    v382 = STACK[0x3370];
  }

  LODWORD(STACK[0x38B8]) = v382;
  if (v336)
  {
    v383 = v380;
  }

  else
  {
    v383 = v381;
  }

  LODWORD(STACK[0x3970]) = v383;
  if (v336)
  {
    v384 = v334;
  }

  else
  {
    v384 = v281;
  }

  LODWORD(STACK[0x3938]) = v384;
  if (v336)
  {
    v385 = v281;
  }

  else
  {
    v385 = v334;
  }

  LODWORD(STACK[0x3A10]) = v385;
  v386 = STACK[0x3948];
  v387 = STACK[0x3360];
  if (v336)
  {
    v388 = STACK[0x3948];
  }

  else
  {
    v388 = STACK[0x3360];
  }

  LODWORD(STACK[0x3AB8]) = v388;
  if (v336)
  {
    v389 = v387;
  }

  else
  {
    v389 = v386;
  }

  LODWORD(STACK[0x3980]) = v389;
  v390 = STACK[0x3A00];
  v391 = STACK[0x3A00] & 0x29 ^ 0x49;
  v392 = 2 * ((((2 * v390) & 0x2E ^ 0xBE) & 0x16 | v391) ^ ((2 * v390) & 0x2E ^ 0xBE) & v390);
  v393 = 2 * ((v392 & 0x16 | v391) ^ v392 & STACK[0x3A00]);
  v394 = 2 * ((v393 & 0x16 | v391) ^ v393 & STACK[0x3A00]);
  v395 = 2 * ((v394 & 0x16 | v391) ^ v394 & STACK[0x3A00]);
  v396 = 2 * ((v395 & 0x16 | v391) ^ v395 & STACK[0x3A00]);
  v397 = v390 ^ (2 * ((v396 & 0x16 | v391) ^ v396 & v390)) ^ 0xD7;
  v398 = STACK[0x3A08];
  v399 = STACK[0x3388];
  if (v336)
  {
    v400 = STACK[0x3A08];
  }

  else
  {
    v400 = STACK[0x3388];
  }

  LODWORD(STACK[0x3948]) = v400;
  if (v336)
  {
    v401 = v399;
  }

  else
  {
    v401 = v398;
  }

  LODWORD(STACK[0x39A0]) = v401;
  v402 = STACK[0x3380];
  v403 = STACK[0x3378];
  if (v336)
  {
    v404 = STACK[0x3378];
  }

  else
  {
    v404 = STACK[0x3380];
  }

  LODWORD(STACK[0x3A00]) = v404;
  if (v336)
  {
    v405 = v402;
  }

  else
  {
    v405 = v403;
  }

  LODWORD(STACK[0x3A08]) = v405;
  v406 = *(STACK[0x3AE0] + 4647 * v397 + 13123128 - 6784 * (((1266205 * (4647 * v397 + 13123128)) >> 32) >> 1)) - 71;
  v407 = STACK[0x3788] & 0x7F ^ 0x74;
  v408 = STACK[0x3790];
  v409 = LODWORD(STACK[0x3788]) ^ (2 * (v408 & (2 * (v408 & (2 * (v408 & (2 * (v408 & (2 * (v408 & (2 * (STACK[0x37A8] & (2 * LODWORD(STACK[0x3788])) & 0x2E ^ v407)) ^ v407)) ^ v407)) ^ v407)) ^ v407)) ^ v407));
  v410 = STACK[0x38C0];
  v411 = STACK[0x38C0] & 0x5CFA4CE5 ^ 0xB9F499CA;
  v412 = STACK[0x38A0];
  v413 = STACK[0x3AE0];
  v414 = *(STACK[0x3AE0] + 4647 * (v409 ^ 0xBB) + 14331348 - 6784 * (((1266205 * (4647 * (v409 ^ 0xBBu) + 14331348)) >> 32) >> 1)) + 117;
  v415 = (LODWORD(STACK[0x33D8]) << 16) | ((v406 ^ (v406 << 6) ^ (4 * v406) ^ 0xFE) << 24) | LODWORD(STACK[0x33F0]) | (((v414 ^ 0x12 ^ (v414 >> 2) & 0x12) + 26) << 8);
  v416 = STACK[0x33D0] & 0xFF00FF00 | (LODWORD(STACK[0x33E0]) << 16) | (STACK[0x33F8] << 24) | STACK[0x3400];
  v417 = STACK[0x3878] & 0xFF000000 | (LODWORD(STACK[0x33A0]) << 16) | LODWORD(STACK[0x33C0]) | (LODWORD(STACK[0x33E8]) << 8);
  LODWORD(STACK[0x3878]) = v417;
  v418 = LODWORD(STACK[0x3430]) + 436207616;
  LODWORD(STACK[0x33F8]) = v418;
  v419 = v415 + 436207616;
  LODWORD(STACK[0x3360]) = v415 + 436207616;
  v420 = STACK[0x3AA8];
  v421 = STACK[0x3A98];
  v422 = STACK[0x3AB0];
  v423 = STACK[0x3838];
  v424 = STACK[0x3930];
  v425 = STACK[0x3A88];
  v426 = (((v423 & (v412 & 0x6B7A4CE5 ^ 0xD6F499CA)) << STACK[0x3930]) + ((STACK[0x3AA8] & (v412 & 0x6B7A4CE5 ^ 0xD6F499CA)) >> v421)) ^ (((v423 & v411) << STACK[0x3930]) | ((STACK[0x3AB0] & v411) >> STACK[0x3A88])) ^ __ROR4__(*(&STACK[0x4DC0] + BYTE2(v416)), 16) ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v416)), 24);
  v427 = STACK[0x3AA0];
  v428 = STACK[0x3A90];
  v429 = v410;
  v430 = v410 & 0x6C96C7FF ^ 0xD92D8FFE;
  v431 = v426 ^ __ROR4__(*(&STACK[0x4DC0] + ((v416 >> 22) & 0x3FC)), 8) ^ LODWORD(STACK[0x3420]) ^ v419;
  v432 = STACK[0x3858];
  v433 = v417 ^ LODWORD(STACK[0x3858]) ^ v431;
  v434 = v431;
  STACK[0x3258] = v431;
  v435 = v433 ^ v418;
  LODWORD(v431) = v416 ^ LODWORD(STACK[0x3898]);
  v436 = v416;
  STACK[0x3208] = v416;
  v437 = v431 ^ v435;
  LODWORD(STACK[0x3190]) = v435;
  STACK[0x3420] = BYTE1(v437);
  LOBYTE(v410) = v428;
  v438 = (((v427 & (v412 & 0x4B96C7FF ^ 0x972D8FFE)) << v428) + ((v420 & (v412 & 0x4B96C7FF ^ 0x972D8FFE)) >> v421)) ^ ((v420 & v430) >> v421) ^ ((v423 & v430) << v428);
  v439 = (v437 >> 22) & 0x3FC;
  STACK[0x33D8] = v439;
  LODWORD(v439) = *(&STACK[0x4DC0] + v439);
  STACK[0x33D0] = BYTE2(v437);
  v440 = v438 ^ __ROR4__(v439, 8);
  v441 = __ROR4__(*(&STACK[0x4DC0] + BYTE2(v437)), 16);
  LODWORD(v439) = *(&STACK[0x4DC0] + ((*(v413 + 4647 * (BYTE1(v437) ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * (BYTE1(v437) ^ 0x9Au) + 25186740)) >> 32) >> 1)) ^ 0xC3) + 85));
  LODWORD(STACK[0x33A0]) = v437;
  v442 = v440 ^ v441 ^ *(&STACK[0x4DC0] + v437);
  v443 = v424;
  LODWORD(v413) = STACK[0x3940];
  v444 = v433 ^ LODWORD(STACK[0x3940]);
  LODWORD(STACK[0x31C0]) = v444;
  v445 = v442 ^ __ROR4__(v439, 24) ^ v434;
  v446 = STACK[0x38D0];
  v447 = v444 ^ LODWORD(STACK[0x38D0]) ^ v445;
  LODWORD(STACK[0x3180]) = v447;
  LODWORD(v416) = v445;
  STACK[0x3250] = v445;
  LODWORD(v445) = v447 ^ v413;
  v448 = v436 ^ v432 ^ v447 ^ v413;
  STACK[0x3380] = BYTE1(v448);
  LODWORD(v437) = (((v423 & (v412 & 0x54CEA091 ^ 0xA99D4123)) << v424) + ((v420 & (v412 & 0x54CEA091 ^ 0xA99D4123)) >> v421)) ^ (((v427 & (v412 & 0x35CEA091 ^ 0x6B9D4123)) << v424) | ((v422 & (v412 & 0x35CEA091 ^ 0x6B9D4123)) >> v425)) ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v448)), 24);
  v449 = (v448 >> 22) & 0x3FC;
  STACK[0x3358] = v449;
  LODWORD(v437) = v437 ^ __ROR4__(*(&STACK[0x4DC0] + v449), 8) ^ v416;
  STACK[0x3340] = BYTE2(v448);
  v450 = __ROR4__(*(&STACK[0x4DC0] + BYTE2(v448)), 16);
  LODWORD(STACK[0x3330]) = v448;
  v451 = v437 ^ v450 ^ *(&STACK[0x4DC0] + v448);
  LODWORD(v437) = v412 & 0x7B8FAA2C ^ 0xF71F5458;
  v452 = v423 & v437;
  LOBYTE(v423) = v421;
  LODWORD(v437) = ((v452 << v410) + ((v420 & v437) >> v421)) ^ (((v427 & (v429 & 0x78FAA2C ^ 0xF1F5458)) << v410) + ((v422 & (v429 & 0x78FAA2C ^ 0xF1F5458)) >> v425));
  v453 = v445 ^ v435;
  STACK[0x3320] = v453;
  STACK[0x3328] = v451;
  LODWORD(v416) = v451 ^ v445;
  LODWORD(v445) = v448 ^ v413;
  LODWORD(v448) = v416 ^ v446;
  LODWORD(STACK[0x31A0]) = v416;
  v454 = v446;
  LODWORD(v453) = v416 ^ v446 ^ v453;
  LODWORD(v445) = v445 ^ v453;
  v455 = v445 ^ v432;
  STACK[0x3170] = v455 >> 24;
  v456 = *(&STACK[0x4DC0] + (v455 >> 24));
  STACK[0x33C0] = BYTE1(v455);
  LODWORD(v437) = v437 ^ __ROR4__(v456, 8) ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v455)), 24) ^ v451;
  STACK[0x3368] = BYTE2(v455);
  v457 = __ROR4__(*(&STACK[0x4DC0] + BYTE2(v455)), 16);
  LODWORD(STACK[0x3388]) = (v445 ^ v432);
  v458 = v437 ^ v457 ^ *(&STACK[0x4DC0] + (v445 ^ v432));
  LODWORD(v437) = v429 & 0x4FAB659D ^ 0x9F56CB3B;
  LODWORD(v455) = v429 & 0x2C2B659D ^ 0x5856CB3B;
  v459 = v427;
  v460 = v427 & v437;
  LOBYTE(v427) = v425;
  LODWORD(v437) = (v460 << v424) | ((v422 & v437) >> v425);
  LODWORD(v460) = v422 & v455;
  LOBYTE(v422) = v423;
  LODWORD(v455) = ((v459 & v455) << v410) + (v460 >> v423);
  v461 = v453 ^ v432;
  STACK[0x31F8] = v461;
  LODWORD(v448) = v458 ^ v448;
  LODWORD(STACK[0x31A8]) = v448;
  v462 = v458;
  STACK[0x31B0] = v458;
  LODWORD(v448) = v448 ^ v461;
  v463 = v448 ^ v445;
  STACK[0x3430] = BYTE1(v463);
  LODWORD(v437) = v437 ^ v455 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v463)), 24);
  STACK[0x33E0] = BYTE2(v463);
  v464 = __ROR4__(*(&STACK[0x4DC0] + BYTE2(v463)), 16);
  LODWORD(STACK[0x33F0]) = v463;
  LODWORD(v437) = v437 ^ v464 ^ *(&STACK[0x4DC0] + v463);
  v465 = (v463 >> 22) & 0x3FC;
  STACK[0x33E8] = v465;
  LODWORD(v455) = v437 ^ __ROR4__(*(&STACK[0x4DC0] + v465), 8);
  v466 = v448 ^ LODWORD(STACK[0x38A8]);
  STACK[0x37A8] = v466;
  LODWORD(v448) = v463 ^ v454;
  LODWORD(STACK[0x3788]) = v455 ^ v416;
  LODWORD(v463) = v455 ^ v416 ^ v413;
  LODWORD(v461) = v463 ^ v466;
  LODWORD(v448) = v448 ^ v463 ^ v466;
  v467 = v448 ^ v432;
  LODWORD(v416) = (v448 ^ v432);
  LODWORD(STACK[0x3400]) = v416;
  v468 = ((v459 & (v412 & 0x7AD83E3C ^ 0xF5B07C78)) << v410) + ((v420 & (v412 & 0x7AD83E3C ^ 0xF5B07C78)) >> v425);
  STACK[0x3378] = BYTE1(v467);
  LODWORD(v425) = v420;
  v469 = STACK[0x3838];
  STACK[0x3370] = BYTE2(v467);
  v470 = ((v469 & (v412 & 0xF583E3C ^ 0x1EB07C78)) << v424) ^ ((v420 & (v412 & 0xF583E3C ^ 0x1EB07C78)) >> v427) ^ v468 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE2(v467)), 16);
  v471 = 4647 * (((BYTE1(v467) >> 1) | (BYTE1(v467) << 7)) ^ 0xD9) + 19140993;
  v472 = STACK[0x3AE0];
  v473 = *(&STACK[0x4DC0] + (97 * (*(STACK[0x3AE0] + v471 - 6784 * (((1266205 * v471) >> 32) >> 1)) ^ 0x27)));
  v474 = (((*(STACK[0x3AE0] + 4647 * (HIBYTE(v473) ^ 0xB8) + 9544938 - 6784 * (((1266205 * (4647 * (HIBYTE(v473) ^ 0xB8) + 9544938)) >> 32) >> 1)) - 87) ^ 0xFB) + 85) | (v473 << 8);
  v475 = (v467 >> 22) & 0x3FC;
  STACK[0x31E0] = v475;
  v476 = __ROR4__(*(&STACK[0x4DC0] + v475), 8);
  v477 = v455 ^ v462;
  STACK[0x3210] = v477;
  v478 = v470 ^ v476 ^ v477 ^ *(&STACK[0x4DC0] + (((*(v472 + 4647 * (v416 ^ 0xB8) + 9544938 - 6784 * (((1266205 * (4647 * (v416 ^ 0xB8) + 9544938)) >> 32) >> 1)) - 87) ^ 0xFB) + 85)) ^ v474;
  v479 = STACK[0x38C0];
  v480 = v469;
  v481 = STACK[0x3AB0];
  LODWORD(v455) = ((v469 & (v479 & 0x77A7E511 ^ 0xEF4FCA22)) << v424) | ((STACK[0x3AB0] & (v479 & 0x77A7E511 ^ 0xEF4FCA22)) >> v422);
  LODWORD(v424) = v432;
  v482 = v461 ^ v432;
  STACK[0x31E8] = v482;
  LODWORD(v463) = v478 ^ v463;
  LODWORD(STACK[0x3188]) = v463;
  STACK[0x3790] = v478;
  LODWORD(v463) = v463 ^ v482;
  v483 = v463 ^ v448;
  v484 = v463 ^ LODWORD(STACK[0x3898]);
  STACK[0x31D8] = v484;
  LODWORD(v416) = v459;
  LOBYTE(v474) = v427;
  STACK[0x3238] = BYTE2(v483);
  LODWORD(v463) = v455 ^ (((v459 & (v412 & 0x6B27E511 ^ 0xD64FCA22)) << v410) + ((v481 & (v412 & 0x6B27E511 ^ 0xD64FCA22)) >> v427)) ^ __ROR4__(*(&STACK[0x4DC0] + BYTE2(v483)), 16);
  v485 = (v483 >> 22) & 0x3FC;
  STACK[0x3158] = v485;
  LODWORD(v463) = v463 ^ __ROR4__(*(&STACK[0x4DC0] + v485), 8);
  STACK[0x3248] = BYTE1(v483);
  LODWORD(v448) = v463 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v483)), 24) ^ *(&STACK[0x4DC0] + v483);
  LODWORD(v427) = v479;
  LODWORD(v463) = v479 & 0x6DA35A18 ^ 0xDB46B430;
  LODWORD(v482) = v412 & 0x78235A18 ^ 0xF046B430;
  LODWORD(v455) = v480;
  v486 = v425;
  LOBYTE(v459) = v422;
  LODWORD(v463) = ((v480 & v463) << v443) + ((v425 & v463) >> v422);
  v487 = v416;
  v488 = (v416 & v482) << v443;
  LOBYTE(v425) = v443;
  LODWORD(v416) = v486;
  LOBYTE(v485) = v474;
  v489 = v463 ^ (v488 | ((v486 & v482) >> v474));
  LODWORD(v463) = v448 ^ LODWORD(STACK[0x3788]);
  v490 = STACK[0x38D0];
  LODWORD(STACK[0x30F0]) = v463;
  v491 = v484 ^ v463 ^ v490;
  LODWORD(v413) = STACK[0x3940];
  LODWORD(v488) = v483 ^ LODWORD(STACK[0x3940]) ^ v491;
  v492 = v488 ^ v432;
  STACK[0x3240] = BYTE1(v492);
  v493 = *(&STACK[0x4DC0] + BYTE1(v492));
  LOBYTE(v432) = *(v472 + 4647 * (HIBYTE(v493) ^ 0xFE) + 13123128 - 6784 * (((1266205 * (4647 * (HIBYTE(v493) ^ 0xFE) + 13123128)) >> 32) >> 1)) - 71;
  v494 = ((v432 ^ (v432 << 6) ^ (4 * v432) ^ 0xFE) + 26) | (v493 << 8);
  v495 = (v492 >> 22) & 0x3FC;
  STACK[0x3200] = v495;
  v496 = *(&STACK[0x4DC0] + v495);
  STACK[0x3218] = BYTE2(v492);
  v497 = __ROR4__(*(&STACK[0x4DC0] + BYTE2(v492)), 16);
  LODWORD(STACK[0x31F0]) = (v488 ^ v424);
  v498 = v478 ^ v448;
  v499 = v489 ^ __ROR4__(v496, 8) ^ v497 ^ v498 ^ *(&STACK[0x4DC0] + (v488 ^ v424)) ^ v494;
  LODWORD(v448) = (((v455 & (v427 & 0x2A799EC1 ^ 0x54F33D83)) << LODWORD(STACK[0x3A90])) + ((v481 & (v427 & 0x2A799EC1 ^ 0x54F33D83)) >> v459)) ^ (((v455 & (v427 & 0x25799EC1 ^ 0x4AF33D83)) << LODWORD(STACK[0x3A90])) | ((v416 & (v427 & 0x25799EC1 ^ 0x4AF33D83)) >> v485));
  LODWORD(v416) = v424;
  v500 = v491 ^ v424;
  STACK[0x31D0] = v500;
  LODWORD(v485) = v499 ^ v463 ^ v490;
  LODWORD(STACK[0x3120]) = v485;
  v501 = v499;
  v502 = v485 ^ v500 ^ v488;
  STACK[0x3898] = BYTE1(v502);
  LODWORD(v448) = v448 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE1(v502)), 24);
  STACK[0x3350] = BYTE2(v502);
  LODWORD(v482) = *(&STACK[0x4DC0] + BYTE2(v502));
  LODWORD(STACK[0x3348]) = v502;
  LODWORD(v448) = v448 ^ __ROR4__(v482, 16) ^ *(&STACK[0x4DC0] + v502);
  v503 = (v502 >> 22) & 0x3FC;
  STACK[0x3338] = v503;
  LODWORD(v503) = v448 ^ __ROR4__(*(&STACK[0x4DC0] + v503), 8);
  LODWORD(v448) = ((v487 & (STACK[0x38A0] & 0x73ED7EA6 ^ 0xE7DAFD4D)) << v443) ^ ((v481 & (STACK[0x38A0] & 0x73ED7EA6 ^ 0xE7DAFD4D)) >> v459);
  v504 = v427 & 0x23ED7EA6 ^ 0x47DAFD4D;
  LODWORD(v492) = (v481 & v504) >> v459;
  v505 = v487;
  v506 = v448 ^ (((v487 & v504) << v443) + v492);
  v507 = v485 ^ v500 ^ LODWORD(STACK[0x38A8]);
  STACK[0x31C8] = v507;
  LODWORD(v507) = v503 ^ v463 ^ v413 ^ v507;
  LODWORD(v499) = v503 ^ v463;
  LODWORD(STACK[0x3168]) = v503 ^ v463;
  LODWORD(v485) = v502 ^ v490 ^ v507;
  LODWORD(STACK[0x3318]) = v485;
  v508 = v485 ^ v416;
  LODWORD(v427) = v416;
  STACK[0x3310] = BYTE1(v508);
  v509 = *(&STACK[0x4DC0] + BYTE1(v508));
  LODWORD(v492) = 4647 * (((v509 >> 17) & 0x80 | (v509 >> 25)) ^ 0x40) + 15539568;
  LODWORD(STACK[0x3230]) = (v485 ^ v416);
  v510 = v506 ^ *(&STACK[0x4DC0] + (v485 ^ v416));
  LODWORD(v492) = (97 * (*(v472 + v492 - 6784 * (((1266205 * v492) >> 32) >> 1)) ^ 0xA2)) | (v509 << 8);
  STACK[0x3220] = BYTE2(v508);
  v511 = (v508 >> 22) & 0x3FC;
  STACK[0x3228] = v511;
  LODWORD(v508) = v510 ^ __ROR4__(*(&STACK[0x4DC0] + BYTE2(v508)), 16);
  v512 = __ROR4__(*(&STACK[0x4DC0] + v511), 8);
  v513 = v501 ^ v503;
  STACK[0x31B8] = v513;
  STACK[0x3178] = v501;
  LODWORD(v511) = *(&STACK[0x3B10] + STACK[0x31E0]);
  LODWORD(STACK[0x31E0]) = v508 ^ v512 ^ v513 ^ v492;
  LODWORD(v503) = 4647 * ((BYTE3(v511) + 111) ^ 0x36) + 17937420;
  LOBYTE(v503) = *(v472 + v503 - 6784 * (((1266205 * v503) >> 32) >> 1)) ^ 0xE;
  LODWORD(STACK[0x3198]) = ((v503 >> 3) | (32 * v503)) | (v511 << 8);
  LODWORD(STACK[0x3160]) = 4647 * (STACK[0x37A8] ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * (STACK[0x37A8] ^ 0x9Au) + 25186740)) >> 32) >> 1);
  v514 = LODWORD(STACK[0x3180]) ^ v416;
  LODWORD(STACK[0x3110]) = 4647 * ((LODWORD(STACK[0x3180]) ^ v416) ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * ((LODWORD(STACK[0x3180]) ^ v416) ^ 0x9Au) + 25186740)) >> 32) >> 1);
  LODWORD(v513) = *(v472 + 4647 * (BYTE1(v514) ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (BYTE1(v514) ^ 0xC4u) + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(STACK[0x3108]) = v513 ^ 0x12 ^ (v513 >> 2) & 0x12;
  LODWORD(v513) = 4647 * (((v483 >> 1) | ((v483 & 1) << 7)) ^ 0xD9) + 19140993;
  LODWORD(v511) = *(&STACK[0x3B10] + ((STACK[0x3790] >> 22) & 0x3FC));
  LODWORD(v503) = *(v472 + 4647 * (BYTE3(v511) ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (BYTE3(v511) ^ 0xC4) + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(STACK[0x3150]) = ((v503 ^ 0x12 ^ (v503 >> 2) & 0x12) + 26) | (v511 << 8);
  LODWORD(v511) = *(&STACK[0x3B10] + STACK[0x3158]);
  LOBYTE(v503) = *(v472 + 4647 * (BYTE3(v511) ^ 0xFE) + 13123128 - 6784 * (((1266205 * (4647 * (BYTE3(v511) ^ 0xFE) + 13123128)) >> 32) >> 1)) - 71;
  LODWORD(STACK[0x3180]) = 4647 * (BYTE3(v501) ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * (BYTE3(v501) ^ 0x9A) + 25186740)) >> 32) >> 1);
  LODWORD(STACK[0x3138]) = ((v503 ^ (v503 << 6) ^ (4 * v503) ^ 0xFE) + 26) | (v511 << 8);
  STACK[0x3130] = v498;
  LODWORD(v503) = *(&STACK[0x3B10] + ((v498 >> 22) & 0x3FC));
  LODWORD(v511) = *(v472 + 4647 * (BYTE2(v498) ^ 0xFE) + 13123128 - 6784 * (((1266205 * (4647 * (BYTE2(v498) ^ 0xFEu) + 13123128)) >> 32) >> 1)) - 71;
  LODWORD(STACK[0x3128]) = v511 ^ (v511 << 6) ^ (4 * v511);
  LODWORD(v511) = *(v472 + 4647 * (BYTE3(v503) ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (BYTE3(v503) ^ 0xC4) + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(STACK[0x3118]) = ((v511 ^ 0x12 ^ (v511 >> 2) & 0x12) + 26) | (v503 << 8);
  v515 = v507 ^ v416;
  STACK[0x3158] = v515;
  LODWORD(v507) = 4647 * (((v515 >> 17) & 0x80 | (v515 >> 25)) ^ 0xD9) + 19140993;
  v516 = v499 ^ v416;
  STACK[0x3148] = v516;
  LODWORD(v511) = *(v472 + 4647 * (BYTE3(v516) ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (BYTE3(v516) ^ 0xC4) + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(STACK[0x3140]) = v511 ^ 0x12 ^ (v511 >> 2) & 0x12;
  LODWORD(v511) = *(v472 + 4647 * (STACK[0x3170] ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (STACK[0x3170] ^ 0xC4) + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(v503) = *(&STACK[0x3B10] + ((v511 ^ 0x12 ^ (v511 >> 2) & 0x12) + 26));
  LODWORD(v511) = *(v472 + 4647 * (BYTE3(v503) ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (BYTE3(v503) ^ 0xC4) + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(STACK[0x30F8]) = ((v511 ^ 0x12 ^ (v511 >> 2) & 0x12) + 26) | (v503 << 8);
  LODWORD(v516) = STACK[0x3190];
  v517 = LODWORD(STACK[0x3190]) ^ v416;
  LODWORD(v455) = ((((v516 ^ v416) & 1) << 7) | ((v516 ^ v416) >> 1)) ^ 0xD9;
  LODWORD(v503) = 4647 * ((((v516 ^ v416) >> 1) & 0x80 | ((v516 ^ v416) >> 9)) ^ 0xD9) + 19140993;
  LODWORD(v507) = *(v472 + v507 - 6784 * (((1266205 * v507) >> 32) >> 1)) ^ 0x27;
  LOBYTE(v503) = *(v472 + v503 - 6784 * (((1266205 * v503) >> 32) >> 1)) ^ 0x27;
  v518 = v472;
  LOBYTE(v455) = *(v472 + 4647 * v455 + 19140993 - 6784 * (((1266205 * (4647 * v455 + 19140993)) >> 32) >> 1)) ^ 0x27;
  STACK[0x3170] = 97 * (*(v472 + v513 - 6784 * (((1266205 * v513) >> 32) >> 1)) ^ 0x27u);
  STACK[0x3190] = (97 * v507);
  v519 = 97 * v503;
  LOBYTE(v510) = 97 * v455;
  LODWORD(v501) = STACK[0x3A90];
  v520 = (STACK[0x3558] << LODWORD(STACK[0x3A90])) + STACK[0x3500];
  LOBYTE(v412) = v425;
  LODWORD(v511) = (STACK[0x3548] << v425) ^ LODWORD(STACK[0x3550]);
  v521 = STACK[0x3A88];
  LODWORD(v413) = LODWORD(STACK[0x3568]) | ((STACK[0x3AA8] & STACK[0x36A0]) >> STACK[0x3A88]);
  LODWORD(v416) = LODWORD(STACK[0x3568]) ^ LODWORD(STACK[0x36D8]);
  LODWORD(v472) = (STACK[0x34C8] << LODWORD(STACK[0x3A90])) + STACK[0x34C0];
  v522 = STACK[0x34E8] + LODWORD(STACK[0x34D8]);
  LODWORD(v507) = STACK[0x3440];
  LODWORD(STACK[0x3100]) = ((v505 & STACK[0x37E8]) << LODWORD(STACK[0x3A90])) + LODWORD(STACK[0x3440]);
  LODWORD(STACK[0x36D8]) = STACK[0x3448] | v507;
  LODWORD(STACK[0x3408]) = LODWORD(STACK[0x3410]) | (STACK[0x3408] >> v521);
  v523 = v505 & STACK[0x3818];
  STACK[0x36A0] = v523;
  LODWORD(STACK[0x37E8]) = (v523 << v501) + STACK[0x36C8];
  LODWORD(v508) = v427;
  v524 = LODWORD(STACK[0x31C0]) ^ v427;
  v525 = LODWORD(STACK[0x31A0]) ^ v427;
  v526 = LODWORD(STACK[0x31A8]) ^ v508;
  v527 = LODWORD(STACK[0x3788]) ^ v508;
  v528 = LODWORD(STACK[0x3188]) ^ v508;
  STACK[0x31A8] = LODWORD(STACK[0x30F0]) ^ v508;
  STACK[0x31C0] = LODWORD(STACK[0x3120]) ^ v508;
  v529 = STACK[0x3AB0];
  v530 = (STACK[0x3AB0] & STACK[0x36F8]) >> v521;
  STACK[0x34D8] = v530;
  LODWORD(STACK[0x36C8]) = (LODWORD(STACK[0x3398]) + v530) ^ v508;
  LODWORD(STACK[0x3788]) = (STACK[0x33B0] << v425) | (STACK[0x33B8] >> v521);
  LODWORD(STACK[0x3878]) ^= LODWORD(STACK[0x3390]) ^ v520;
  LODWORD(v498) = STACK[0x37F8];
  v531 = STACK[0x3888];
  LODWORD(STACK[0x3858]) = (LODWORD(STACK[0x3888]) | LODWORD(STACK[0x37F8])) ^ v413 ^ LODWORD(STACK[0x3360]);
  v532 = STACK[0x33C8];
  LODWORD(STACK[0x3818]) = (STACK[0x33C8] | v498) ^ v472 ^ __ROR4__(*(&STACK[0x3B10] + v524), 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v524)), 8) ^ __ROR4__(*(&STACK[0x3B10] + ((v524 >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(v524));
  LODWORD(v524) = STACK[0x37C0];
  LODWORD(STACK[0x33B8]) = v416 ^ LODWORD(STACK[0x37C0]) ^ STACK[0x3208];
  LODWORD(v530) = *(&STACK[0x3B10] + v519);
  v533 = STACK[0x3768] << v412;
  LOBYTE(v413) = STACK[0x3A98];
  LODWORD(v508) = STACK[0x3758] >> v413;
  STACK[0x34E8] = v533;
  LODWORD(STACK[0x3500]) = v508;
  v534 = STACK[0x33A8];
  LODWORD(STACK[0x3768]) = v533 ^ v508 ^ v524 ^ STACK[0x33A8] ^ __ROR4__(v530, 8) ^ *(&STACK[0x3B10] + BYTE2(v517)) ^ __ROR4__(*(&STACK[0x3B10] + v510), 16) ^ __ROR4__(*(&STACK[0x3B10] + ((v517 >> 22) & 0x3FC)), 24);
  LODWORD(v517) = STACK[0x3890];
  LODWORD(STACK[0x3758]) = v511 ^ v531 ^ LODWORD(STACK[0x3890]) ^ LODWORD(STACK[0x33F8]);
  LODWORD(v533) = *(&STACK[0x3B10] + STACK[0x3420]);
  LODWORD(STACK[0x3420]) = STACK[0x3740] ^ STACK[0x3828] ^ (v532 | v517) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x3258])), 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3258]), 16) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x3258] >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x3258]));
  LODWORD(v530) = v534 + LODWORD(STACK[0x37C8]);
  LODWORD(STACK[0x33B0]) = v530;
  LODWORD(STACK[0x37C8]) = v530 ^ v522 ^ __ROR4__(v533, 8) ^ *(&STACK[0x3B10] + STACK[0x33D0]) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x33A0])), 16) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x33D8]), 24);
  LODWORD(STACK[0x3410]) = LODWORD(STACK[0x3720]) ^ STACK[0x34D0] ^ v498 ^ STACK[0x3880] ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3250]), 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x3250])), 8) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x3250] >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x3250]));
  v535 = v518;
  LODWORD(v530) = v534 + STACK[0x39F8];
  LODWORD(STACK[0x33F8]) = STACK[0x3520] ^ (STACK[0x34E0] >> v413) ^ v530 ^ __ROR4__(*(&STACK[0x3B10] + ((*(v518 + LODWORD(STACK[0x3110])) ^ 0xC3) + 85)), 16) ^ __ROR4__(*(&STACK[0x3B10] + (LODWORD(STACK[0x3108]) + 26)), 8) ^ __ROR4__(*(&STACK[0x3B10] + ((v514 >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(v514));
  v536 = STACK[0x36D0] << v412;
  v537 = STACK[0x3770] >> v521;
  STACK[0x34E0] = v537;
  STACK[0x3548] = v536;
  v538 = STACK[0x37D8];
  LODWORD(STACK[0x3770]) = (v532 + STACK[0x37D8]) ^ (v536 + v537) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3380]), 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3358]), 24) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x3330])), 16) ^ *(&STACK[0x3B10] + STACK[0x3340]);
  LODWORD(v536) = STACK[0x36B8] << v501;
  v539 = STACK[0x3428];
  LODWORD(STACK[0x36D0]) = LODWORD(STACK[0x3428]) ^ (v536 + LODWORD(STACK[0x3728])) ^ __ROR4__(*(&STACK[0x3B10] + ((v525 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(&STACK[0x3B10] + v525), 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v525)), 8) ^ *(&STACK[0x3B10] + BYTE2(v525));
  v540 = STACK[0x3560] >> v521;
  LODWORD(STACK[0x36B8]) = STACK[0x3710] ^ v540 ^ LODWORD(STACK[0x3418]) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x31F8]), 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x31F8])), 8) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x31F8])) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x31F8] >> 22) & 0x3FC)), 24);
  v541 = STACK[0x3320];
  LODWORD(v517) = *(&STACK[0x3B10] + STACK[0x3320]);
  v542 = STACK[0x3AA8];
  v543 = STACK[0x3838];
  LODWORD(v508) = (STACK[0x3838] & STACK[0x3750]) << v501;
  v544 = (STACK[0x3AA8] & STACK[0x3750]) >> v521;
  STACK[0x3568] = v544;
  LODWORD(STACK[0x3560]) = v508;
  LODWORD(v514) = v508 + v544;
  LODWORD(v525) = STACK[0x37E0];
  LODWORD(v544) = LODWORD(STACK[0x37E0]) | v498;
  LODWORD(STACK[0x3750]) = v544 ^ v514 ^ __ROR4__(v517, 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v541)), 8) ^ __ROR4__(*(&STACK[0x3B10] + ((v541 >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(v541));
  v545 = STACK[0x3328];
  LODWORD(v517) = *(&STACK[0x3B10] + STACK[0x3328]);
  LODWORD(v514) = *(&STACK[0x3B10] + BYTE2(STACK[0x3328]));
  v546 = v529 & STACK[0x3840];
  STACK[0x34C0] = v546;
  LODWORD(v546) = v546 >> v413;
  LODWORD(STACK[0x34C8]) = v546;
  LODWORD(v536) = LODWORD(STACK[0x37D0]) ^ (v536 | v546) ^ __ROR4__(v517, 16) ^ v514 ^ __ROR4__(*(&STACK[0x3B10] + ((v545 >> 22) & 0x3FC)), 24);
  LODWORD(v517) = *(&STACK[0x3B10] + STACK[0x3368]);
  LODWORD(STACK[0x3840]) = v536 ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v545)), 8);
  STACK[0x34D0] = v540;
  LODWORD(STACK[0x3428]) = LODWORD(STACK[0x36F0]) ^ v540 ^ v517 ^ v539 ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x33C0]), 8) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x3388])), 16) ^ LODWORD(STACK[0x30F8]);
  LODWORD(STACK[0x36B0]) = (STACK[0x36B0] << v412) ^ LODWORD(STACK[0x3718]) ^ LODWORD(STACK[0x3438]) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x31B0] >> 22) & 0x3FC)), 24) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x31B0])), 8) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x31B0])) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x31B0]), 16);
  v547 = STACK[0x3AA0];
  v548 = STACK[0x3AA0] & ~LODWORD(STACK[0x38C0]);
  v549 = v542 & ~LODWORD(STACK[0x38C0]);
  STACK[0x3550] = v548;
  v550 = v548 << v412;
  LOBYTE(v540) = v412;
  STACK[0x3448] = v550;
  LODWORD(STACK[0x37F8]) = (v532 + v498) ^ (v550 + (v549 >> v521)) ^ __ROR4__(*(&STACK[0x3B10] + ((v526 >> 22) & 0x3FC)), 24) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v526)), 8) ^ __ROR4__(*(&STACK[0x3B10] + v526), 16) ^ *(&STACK[0x3B10] + BYTE2(v526));
  v551 = STACK[0x37C0];
  v552 = v535;
  LODWORD(STACK[0x37A8]) = (v534 + LODWORD(STACK[0x37C0])) ^ (LODWORD(STACK[0x3730]) + LODWORD(STACK[0x34F8])) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x37A8])), 8) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x37A8])) ^ __ROR4__(*(&STACK[0x3B10] + ((*(v535 + LODWORD(STACK[0x3160])) ^ 0xC3) + 85)), 16) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x37A8] >> 22) & 0x3FC)), 24);
  LODWORD(v529) = *(&STACK[0x3B10] + v527);
  v553 = STACK[0x34B8] << v540;
  STACK[0x34B8] = v553;
  LODWORD(STACK[0x3418]) = v553 ^ STACK[0x34B0] ^ LODWORD(STACK[0x3450]) ^ __ROR4__(v529, 16) ^ *(&STACK[0x3B10] + BYTE2(v527)) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v527)), 8) ^ __ROR4__(*(&STACK[0x3B10] + ((v527 >> 22) & 0x3FC)), 24);
  LODWORD(v529) = *(&STACK[0x3B10] + STACK[0x33E0]);
  LODWORD(v523) = v549 >> v413;
  LOBYTE(v535) = v413;
  v554 = STACK[0x3760];
  LODWORD(STACK[0x3450]) = v523;
  LODWORD(v554) = v554 ^ v523;
  LODWORD(STACK[0x3558]) = v554;
  LODWORD(STACK[0x3760]) = v530 ^ v554 ^ v529 ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3430]), 8) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x33F0])), 16) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x33E8]), 24);
  LODWORD(v526) = STACK[0x36E0] << v501;
  v555 = STACK[0x3708];
  LODWORD(STACK[0x3430]) = v526 ^ STACK[0x3708] ^ v544 ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3210]), 16) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x3210] >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x3210])) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x3210])), 8);
  v556 = STACK[0x31E8];
  LODWORD(v554) = *(&STACK[0x3B10] + BYTE1(STACK[0x31E8]));
  LODWORD(v544) = *(&STACK[0x3B10] + ((STACK[0x31E8] >> 22) & 0x3FC));
  LODWORD(STACK[0x34B0]) = v526;
  LODWORD(v530) = v538 | v525;
  v557 = v525;
  v558 = (v538 | v525) ^ (v526 | LODWORD(STACK[0x34F0])) ^ __ROR4__(v554, 8) ^ __ROR4__(v544, 24) ^ *(&STACK[0x3B10] + BYTE2(v556)) ^ __ROR4__(*(&STACK[0x3B10] + v556), 16);
  LODWORD(STACK[0x36E0]) = LODWORD(STACK[0x3830]) ^ (((v543 & STACK[0x3530]) << v540) | v555) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3378]), 8) ^ LODWORD(STACK[0x3198]) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x3400])), 16) ^ *(&STACK[0x3B10] + STACK[0x3370]);
  LODWORD(STACK[0x3848]) ^= LODWORD(STACK[0x36D8]) ^ *(&STACK[0x3B10] + BYTE2(v528)) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v528)), 8) ^ __ROR4__(*(&STACK[0x3B10] + v528), 16) ^ __ROR4__(*(&STACK[0x3B10] + ((v528 >> 22) & 0x3FC)), 24);
  LODWORD(v527) = STACK[0x3888];
  LODWORD(v556) = v538 ^ LODWORD(STACK[0x3888]);
  LODWORD(v555) = v538;
  LODWORD(STACK[0x3790]) = v556 ^ LODWORD(STACK[0x3100]) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x3790])), 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3790]), 16) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x3790])) ^ LODWORD(STACK[0x3150]);
  LODWORD(v554) = v532 ^ *(&STACK[0x3B10] + STACK[0x3238]);
  LODWORD(v413) = v542;
  v559 = (v542 & STACK[0x3780]) >> v521;
  LODWORD(v529) = (v543 & STACK[0x3780]) << v501;
  STACK[0x3440] = v559;
  LODWORD(STACK[0x3438]) = v529;
  LODWORD(v542) = STACK[0x3890];
  LODWORD(STACK[0x3780]) = LODWORD(STACK[0x3890]) ^ (v529 + v559) ^ v554 ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3248]), 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3170]), 16) ^ LODWORD(STACK[0x3138]);
  LODWORD(STACK[0x3400]) = LODWORD(STACK[0x33B0]) ^ LODWORD(STACK[0x37B8]) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x31D8]), 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x31D8])), 8) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x31D8])) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x31D8] >> 22) & 0x3FC)), 24);
  v560 = STACK[0x31A8];
  LODWORD(v554) = *(&STACK[0x3B10] + BYTE1(STACK[0x31A8]));
  v561 = STACK[0x3AB0];
  v562 = STACK[0x3AB0] & STACK[0x34A8];
  STACK[0x34A8] = v562;
  LODWORD(v546) = STACK[0x3458];
  LODWORD(STACK[0x34F0]) = LODWORD(STACK[0x36E8]) ^ (v562 >> v521) ^ LODWORD(STACK[0x3458]) ^ __ROR4__(v554, 8) ^ __ROR4__(*(&STACK[0x3B10] + v560), 16) ^ __ROR4__(*(&STACK[0x3B10] + ((v560 >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(v560));
  v563 = STACK[0x3460];
  v564 = LODWORD(STACK[0x33B8]) ^ STACK[0x3460];
  v565 = v547 & STACK[0x34A0];
  STACK[0x34A0] = v565;
  v566 = v565 << v540;
  LODWORD(STACK[0x37C0]) = (v563 + v551) ^ (v566 | LODWORD(STACK[0x3490])) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x3130])), 8) ^ *(&STACK[0x3B10] + ((LODWORD(STACK[0x3128]) ^ 0xFE) + 26)) ^ LODWORD(STACK[0x3118]) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3130]), 16);
  LODWORD(v526) = STACK[0x36C0];
  LODWORD(STACK[0x3530]) = v530 ^ (v566 | LODWORD(STACK[0x36C0])) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3200]), 24) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x31F0])), 16) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3240]), 8) ^ *(&STACK[0x3B10] + STACK[0x3218]);
  v567 = STACK[0x36A8] ^ v526 ^ (v557 | v542) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x31D0])), 8) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x31D0] >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x31D0])) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x31D0]), 16);
  v568 = v543 & STACK[0x3808];
  STACK[0x3490] = v568;
  LODWORD(v563) = v568 << v501;
  v569 = STACK[0x3538];
  LODWORD(STACK[0x3460]) = v563;
  LODWORD(STACK[0x3880]) = v555 ^ (v563 | v569) ^ STACK[0x3880] ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x31C0] >> 22) & 0x3FC)), 24) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x31C0]), 16) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x31C0])), 8) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x31C0]));
  LODWORD(v514) = STACK[0x37F0];
  v570 = (STACK[0x39F8] + LODWORD(STACK[0x37F0])) ^ LODWORD(STACK[0x3408]) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x3178])) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x3178])), 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3178]), 16) ^ __ROR4__(*(&STACK[0x3B10] + ((*(v552 + LODWORD(STACK[0x3180])) ^ 0xC3) + 85)), 24);
  v571 = v547 & STACK[0x3810];
  v572 = (v571 << v540) ^ ((v413 & STACK[0x3810]) >> v535) ^ LODWORD(STACK[0x3778]) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x31C8])), 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x31C8]), 16) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x31C8])) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x31C8] >> 22) & 0x3FC)), 24);
  LODWORD(v555) = STACK[0x3488];
  v573 = v543 & STACK[0x3488];
  LODWORD(v543) = LODWORD(STACK[0x3850]) ^ (v573 << v540) ^ STACK[0x3508] ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(STACK[0x31B8])), 8) ^ __ROR4__(*(&STACK[0x3B10] + ((STACK[0x31B8] >> 22) & 0x3FC)), 24) ^ *(&STACK[0x3B10] + BYTE2(STACK[0x31B8])) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x31B8]), 16);
  LODWORD(STACK[0x3810]) = v543;
  v574 = STACK[0x3148];
  LODWORD(v566) = *(&STACK[0x3B10] + STACK[0x3148]);
  LODWORD(v573) = v573 << v501;
  LODWORD(STACK[0x3488]) = v573;
  LODWORD(STACK[0x3850]) = v573 ^ ((v561 & v555) >> v535) ^ LODWORD(STACK[0x3470]) ^ __ROR4__(v566, 16) ^ *(&STACK[0x3B10] + BYTE2(v574)) ^ __ROR4__(*(&STACK[0x3B10] + (LODWORD(STACK[0x3140]) + 26)), 24) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v574)), 8);
  v575 = STACK[0x3158];
  LODWORD(v573) = *(&STACK[0x3B10] + BYTE2(STACK[0x3158]));
  v576 = STACK[0x36A0] << v540;
  STACK[0x34F8] = v576;
  LODWORD(STACK[0x3890]) = v576 ^ STACK[0x3480] ^ v573 ^ (v542 + v527) ^ __ROR4__(*(&STACK[0x3B10] + v575), 16) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3190]), 24) ^ __ROR4__(*(&STACK[0x3B10] + BYTE1(v575)), 8);
  LODWORD(v576) = STACK[0x3478];
  v577 = STACK[0x3700];
  LODWORD(v566) = LODWORD(STACK[0x3168]) ^ LODWORD(STACK[0x38D0]) ^ LODWORD(STACK[0x31E0]);
  v578 = STACK[0x3700] ^ LODWORD(STACK[0x3478]) ^ LODWORD(STACK[0x3468]) ^ LODWORD(STACK[0x31E0]);
  v579 = (v571 << v501) ^ LODWORD(STACK[0x3748]) ^ LODWORD(STACK[0x3498]) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3338]), 24) ^ *(&STACK[0x3B10] + STACK[0x3350]) ^ __ROR4__(*(&STACK[0x3B10] + LODWORD(STACK[0x3348])), 16) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3898]), 8);
  v580 = LODWORD(STACK[0x36C8]) ^ v556 ^ v566;
  LODWORD(STACK[0x3898]) = LODWORD(STACK[0x37D0]) ^ LODWORD(STACK[0x37E8]) ^ HIWORD(*(&STACK[0x3B10] + LODWORD(STACK[0x3230]))) ^ *(&STACK[0x3B10] + STACK[0x3220]) ^ (*(&STACK[0x3B10] + LODWORD(STACK[0x3230])) << 16) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3310]), 8) ^ __ROR4__(*(&STACK[0x3B10] + STACK[0x3228]), 24);
  v581 = STACK[0x3430];
  v582 = LODWORD(STACK[0x38A8]) ^ (v577 | v576) ^ v514 ^ STACK[0x3800] ^ v566 ^ v575;
  v583 = v546 ^ LODWORD(STACK[0x3788]) ^ LODWORD(STACK[0x3318]) ^ v566 ^ v575;
  LODWORD(v556) = ((((v543 - LODWORD(STACK[0x3430])) ^ (&STACK[0x4000] + 3520)) - &STACK[0x3B10]) ^ 0xAE1E352B) + v578;
  LODWORD(STACK[0x39F8]) = v556;
  v584 = (v556 & 1) == 0;
  v585 = STACK[0x3410];
  v586 = STACK[0x3770];
  if (v584)
  {
    v587 = STACK[0x3770];
  }

  else
  {
    v587 = STACK[0x3410];
  }

  LODWORD(STACK[0x38A8]) = v587;
  v588 = STACK[0x33F8];
  if (!v584)
  {
    v585 = STACK[0x33F8];
  }

  LODWORD(STACK[0x37E0]) = v585;
  v589 = STACK[0x3750];
  if (v584)
  {
    v586 = STACK[0x3750];
  }

  LODWORD(STACK[0x37D8]) = v586;
  if (v584)
  {
    v589 = v588;
  }

  LODWORD(STACK[0x3778]) = v589;
  v590 = STACK[0x3758];
  if (v584)
  {
    v591 = STACK[0x3758];
  }

  else
  {
    v591 = v564;
  }

  LODWORD(STACK[0x3800]) = v591;
  if (v584)
  {
    v592 = v564;
  }

  else
  {
    v592 = STACK[0x3858];
  }

  v593 = STACK[0x3878];
  if (v584)
  {
    v594 = STACK[0x3878];
  }

  else
  {
    v594 = v590;
  }

  if (v584)
  {
    v593 = STACK[0x3858];
  }

  LODWORD(STACK[0x3788]) = v593;
  if (v584)
  {
    v595 = STACK[0x3818];
  }

  else
  {
    v595 = STACK[0x3768];
  }

  if (v584)
  {
    v596 = STACK[0x3420];
  }

  else
  {
    v596 = STACK[0x3818];
  }

  if (v584)
  {
    v597 = STACK[0x3768];
  }

  else
  {
    v597 = STACK[0x37C8];
  }

  if (v584)
  {
    v598 = STACK[0x37C8];
  }

  else
  {
    v598 = STACK[0x3420];
  }

  v599 = STACK[0x36D0];
  v600 = STACK[0x3840];
  if (v584)
  {
    v601 = STACK[0x3840];
  }

  else
  {
    v601 = STACK[0x36D0];
  }

  LODWORD(STACK[0x3888]) = v601;
  v602 = STACK[0x3428];
  if (v584)
  {
    v603 = STACK[0x3428];
  }

  else
  {
    v603 = v600;
  }

  v604 = STACK[0x36B8];
  if (v584)
  {
    v602 = STACK[0x36B8];
  }

  LODWORD(STACK[0x3840]) = v602;
  if (v584)
  {
    v605 = v599;
  }

  else
  {
    v605 = v604;
  }

  if (v584)
  {
    v606 = STACK[0x37A8];
  }

  else
  {
    v606 = STACK[0x3760];
  }

  if (v584)
  {
    v607 = STACK[0x37F8];
  }

  else
  {
    v607 = STACK[0x37A8];
  }

  if (v584)
  {
    v608 = STACK[0x36B0];
  }

  else
  {
    v608 = STACK[0x37F8];
  }

  if (v584)
  {
    v609 = STACK[0x3760];
  }

  else
  {
    v609 = STACK[0x36B0];
  }

  v610 = STACK[0x36E0];
  if (v584)
  {
    v611 = STACK[0x36E0];
  }

  else
  {
    v611 = v581;
  }

  v612 = STACK[0x3418];
  if (v584)
  {
    v613 = v581;
  }

  else
  {
    v613 = STACK[0x3418];
  }

  LODWORD(STACK[0x37F8]) = v613;
  if (v584)
  {
    v614 = v612;
  }

  else
  {
    v614 = v558;
  }

  if (!v584)
  {
    v558 = v610;
  }

  v615 = STACK[0x3848];
  v616 = STACK[0x3790];
  if (v584)
  {
    v617 = STACK[0x3790];
  }

  else
  {
    v617 = STACK[0x3848];
  }

  LODWORD(STACK[0x37F0]) = v617;
  v618 = STACK[0x3400];
  if (!v584)
  {
    v615 = STACK[0x3400];
  }

  LODWORD(STACK[0x3878]) = v615;
  v619 = STACK[0x3780];
  if (!v584)
  {
    v618 = STACK[0x3780];
  }

  LODWORD(STACK[0x3770]) = v618;
  if (!v584)
  {
    v619 = v616;
  }

  LODWORD(STACK[0x3748]) = v619;
  v620 = STACK[0x34F0];
  if (v584)
  {
    v621 = STACK[0x34F0];
  }

  else
  {
    v621 = v567;
  }

  v622 = STACK[0x37C0];
  if (v584)
  {
    v620 = STACK[0x37C0];
  }

  LODWORD(STACK[0x36A0]) = v620;
  if (v584)
  {
    v623 = STACK[0x3530];
  }

  else
  {
    v623 = v622;
  }

  if (v584)
  {
    v624 = v567;
  }

  else
  {
    v624 = STACK[0x3530];
  }

  LODWORD(STACK[0x3530]) = v624;
  v625 = STACK[0x3880];
  if (v584)
  {
    v626 = v570;
  }

  else
  {
    v626 = STACK[0x3880];
  }

  if (v584)
  {
    v627 = v579;
  }

  else
  {
    v627 = v570;
  }

  if (v584)
  {
    v628 = v572;
  }

  else
  {
    v628 = v579;
  }

  if (v584)
  {
    v629 = v580;
  }

  else
  {
    v625 = v572;
    v629 = v582;
  }

  LODWORD(STACK[0x3538]) = v629;
  if (v584)
  {
    v580 = v578;
  }

  LODWORD(STACK[0x3880]) = v580;
  if (v584)
  {
    v630 = v583;
  }

  else
  {
    v630 = v578;
  }

  if (v584)
  {
    v631 = v582;
  }

  else
  {
    v631 = v583;
  }

  if (v584)
  {
    v632 = STACK[0x3890];
  }

  else
  {
    v632 = STACK[0x3898];
  }

  v633 = STACK[0x3810];
  if (v584)
  {
    v634 = STACK[0x3898];
  }

  else
  {
    v634 = STACK[0x3810];
  }

  v635 = STACK[0x3850];
  if (!v584)
  {
    v633 = STACK[0x3850];
    v635 = STACK[0x3890];
  }

  v636 = (STACK[0x39F8] & 2) == 0;
  if ((STACK[0x39F8] & 2) != 0)
  {
    v637 = v594;
  }

  else
  {
    v637 = v592;
  }

  LODWORD(STACK[0x3818]) = v637;
  if (!v636)
  {
    v594 = v592;
  }

  LODWORD(STACK[0x37E8]) = v594;
  if (v636)
  {
    v638 = v596;
  }

  else
  {
    v638 = v597;
  }

  LODWORD(STACK[0x3808]) = v638;
  if (v636)
  {
    v639 = v597;
  }

  else
  {
    v639 = v596;
  }

  LODWORD(STACK[0x37D0]) = v639;
  v640 = STACK[0x37E0];
  v641 = STACK[0x37D8];
  if (v636)
  {
    v642 = STACK[0x37D8];
  }

  else
  {
    v642 = STACK[0x37E0];
  }

  LODWORD(STACK[0x3810]) = v642;
  if (v636)
  {
    v643 = v640;
  }

  else
  {
    v643 = v641;
  }

  LODWORD(STACK[0x3858]) = v643;
  v644 = STACK[0x38A8];
  v645 = STACK[0x3778];
  if (v636)
  {
    v646 = STACK[0x38A8];
  }

  else
  {
    v646 = STACK[0x3778];
  }

  LODWORD(STACK[0x37E0]) = v646;
  if (v636)
  {
    v647 = v645;
  }

  else
  {
    v647 = v644;
  }

  LODWORD(STACK[0x37D8]) = v647;
  if (v636)
  {
    v648 = v595;
  }

  else
  {
    v648 = v598;
  }

  LODWORD(STACK[0x3768]) = v648;
  if (v636)
  {
    v649 = v598;
  }

  else
  {
    v649 = v595;
  }

  LODWORD(STACK[0x3850]) = v649;
  v650 = STACK[0x3800];
  v651 = STACK[0x3788];
  if (v636)
  {
    v652 = STACK[0x3788];
  }

  else
  {
    v652 = STACK[0x3800];
  }

  LODWORD(STACK[0x38A8]) = v652;
  if (v636)
  {
    v653 = v650;
  }

  else
  {
    v653 = v651;
  }

  LODWORD(STACK[0x37A8]) = v653;
  if (v636)
  {
    v654 = v608;
  }

  else
  {
    v654 = v606;
  }

  LODWORD(STACK[0x3760]) = v654;
  if (v636)
  {
    v608 = v606;
  }

  LODWORD(STACK[0x3790]) = v608;
  if (v636)
  {
    v655 = v605;
  }

  else
  {
    v655 = v603;
  }

  LODWORD(STACK[0x3788]) = v655;
  if (v636)
  {
    v656 = v603;
  }

  else
  {
    v656 = v605;
  }

  LODWORD(STACK[0x3848]) = v656;
  if (v636)
  {
    v657 = v614;
  }

  else
  {
    v657 = v611;
  }

  LODWORD(STACK[0x36E0]) = v657;
  if (v636)
  {
    v658 = v611;
  }

  else
  {
    v658 = v614;
  }

  LODWORD(STACK[0x36B8]) = v658;
  if (v636)
  {
    v659 = v609;
  }

  else
  {
    v659 = v607;
  }

  LODWORD(STACK[0x3758]) = v659;
  if (v636)
  {
    v660 = v607;
  }

  else
  {
    v660 = v609;
  }

  LODWORD(STACK[0x3780]) = v660;
  v661 = STACK[0x3888];
  v662 = STACK[0x3840];
  if (v636)
  {
    v663 = STACK[0x3888];
  }

  else
  {
    v663 = STACK[0x3840];
  }

  LODWORD(STACK[0x3778]) = v663;
  if (v636)
  {
    v664 = v662;
  }

  else
  {
    v664 = v661;
  }

  LODWORD(STACK[0x3750]) = v664;
  if (v636)
  {
    v665 = v623;
  }

  else
  {
    v665 = v621;
  }

  LODWORD(STACK[0x36B0]) = v665;
  if (v636)
  {
    v666 = v621;
  }

  else
  {
    v666 = v623;
  }

  LODWORD(STACK[0x36D0]) = v666;
  v667 = STACK[0x37F8];
  if (v636)
  {
    v668 = v558;
  }

  else
  {
    v668 = STACK[0x37F8];
  }

  LODWORD(STACK[0x36C8]) = v668;
  if (v636)
  {
    v669 = v667;
  }

  else
  {
    v669 = v558;
  }

  LODWORD(STACK[0x36C0]) = v669;
  if (v636)
  {
    v670 = v628;
  }

  else
  {
    v670 = v626;
  }

  LODWORD(STACK[0x3840]) = v670;
  if (v636)
  {
    v628 = v626;
  }

  LODWORD(STACK[0x3800]) = v628;
  if (v636)
  {
    v671 = v627;
  }

  else
  {
    v671 = v625;
  }

  LODWORD(STACK[0x37C8]) = v671;
  if (v636)
  {
    v672 = v625;
  }

  else
  {
    v672 = v627;
  }

  LODWORD(STACK[0x37F8]) = v672;
  v673 = STACK[0x37F0];
  v674 = STACK[0x3770];
  if (v636)
  {
    v675 = STACK[0x37F0];
  }

  else
  {
    v675 = STACK[0x3770];
  }

  LODWORD(STACK[0x37C0]) = v675;
  if (v636)
  {
    v676 = v674;
  }

  else
  {
    v676 = v673;
  }

  LODWORD(STACK[0x37F0]) = v676;
  v677 = STACK[0x3878];
  v678 = STACK[0x3748];
  if (v636)
  {
    v679 = STACK[0x3878];
  }

  else
  {
    v679 = STACK[0x3748];
  }

  LODWORD(STACK[0x3770]) = v679;
  if (v636)
  {
    v680 = v678;
  }

  else
  {
    v680 = v677;
  }

  LODWORD(STACK[0x3748]) = v680;
  v681 = STACK[0x36A0];
  v682 = STACK[0x3530];
  if (v636)
  {
    v683 = STACK[0x36A0];
  }

  else
  {
    v683 = STACK[0x3530];
  }

  LODWORD(STACK[0x36A8]) = v683;
  if (v636)
  {
    v684 = v682;
  }

  else
  {
    v684 = v681;
  }

  LODWORD(STACK[0x36A0]) = v684;
  if (v636)
  {
    v685 = v632;
  }

  else
  {
    v685 = v633;
  }

  LODWORD(STACK[0x3890]) = v685;
  if (v636)
  {
    v686 = v633;
  }

  else
  {
    v686 = v632;
  }

  LODWORD(STACK[0x3470]) = v686;
  v687 = STACK[0x3538];
  if (v636)
  {
    v688 = STACK[0x3538];
  }

  else
  {
    v688 = v630;
  }

  LODWORD(STACK[0x3898]) = v688;
  if (v636)
  {
    v689 = v630;
  }

  else
  {
    v689 = v687;
  }

  LODWORD(STACK[0x3530]) = v689;
  v690 = STACK[0x3880];
  if (v636)
  {
    v691 = STACK[0x3880];
  }

  else
  {
    v691 = v631;
  }

  LODWORD(STACK[0x3888]) = v691;
  if (v636)
  {
    v692 = v631;
  }

  else
  {
    v692 = v690;
  }

  LODWORD(STACK[0x3878]) = v692;
  if (v636)
  {
    v693 = v634;
  }

  else
  {
    v693 = v635;
  }

  LODWORD(STACK[0x3480]) = v693;
  if (v636)
  {
    v694 = v635;
  }

  else
  {
    v694 = v634;
  }

  LODWORD(STACK[0x3880]) = v694;
  v695 = LODWORD(STACK[0x38B0]) ^ LODWORD(STACK[0x3910]);
  LODWORD(STACK[0x34F0]) = v695;
  v696 = v695 ^ LODWORD(STACK[0x3900]) ^ LODWORD(STACK[0x38F0]);
  v697 = LODWORD(STACK[0x3870]) ^ LODWORD(STACK[0x3868]) ^ LODWORD(STACK[0x39E0]);
  LODWORD(STACK[0x3498]) = v697;
  LODWORD(STACK[0x3538]) = v696 ^ v697 ^ LODWORD(STACK[0x39D0]) ^ LODWORD(STACK[0x39C8]) ^ LODWORD(STACK[0x39D8]) ^ LODWORD(STACK[0x39B8]) ^ LODWORD(STACK[0x3908]) ^ LODWORD(STACK[0x38F8]) ^ LODWORD(STACK[0x39C0]) ^ LODWORD(STACK[0x3988]) ^ LODWORD(STACK[0x3968]) ^ LODWORD(STACK[0x3918]) ^ LODWORD(STACK[0x3860]) ^ LODWORD(STACK[0x3970]) ^ LODWORD(STACK[0x38B8]) ^ LODWORD(STACK[0x3958]) ^ LODWORD(STACK[0x3920]) ^ LODWORD(STACK[0x3960]) ^ LODWORD(STACK[0x39B0]) ^ LODWORD(STACK[0x3AD8]) ^ LODWORD(STACK[0x3978]) ^ LODWORD(STACK[0x38D8]) ^ LODWORD(STACK[0x38C8]) ^ LODWORD(STACK[0x3950]) ^ LODWORD(STACK[0x3948]) ^ LODWORD(STACK[0x39A8]) ^ LODWORD(STACK[0x39A0]) ^ LODWORD(STACK[0x3AD0]) ^ LODWORD(STACK[0x3980]) ^ LODWORD(STACK[0x3AC8]) ^ LODWORD(STACK[0x3AB8]) ^ LODWORD(STACK[0x3938]) ^ LODWORD(STACK[0x3A00]) ^ LODWORD(STACK[0x3A10]) ^ LODWORD(STACK[0x3A08]) ^ LODWORD(STACK[0x38E8]) ^ LODWORD(STACK[0x3990]) ^ LODWORD(STACK[0x3998]) ^ LODWORD(STACK[0x38E0]);
  LODWORD(STACK[0x34F0]) = LODWORD(STACK[0x3538]) ^ 0x91A77DF4;
  v698 = STACK[0x37B0];
  LODWORD(STACK[0x3530]) = LODWORD(STACK[0x3810]) - (LODWORD(STACK[0x3980]) + LODWORD(STACK[0x39B8]) + LODWORD(STACK[0x39B0]) + LODWORD(STACK[0x3470]));
  v699 = *(STACK[0x3AC0] + 8 * v698);
  LODWORD(STACK[0x37B0]) = LODWORD(STACK[0x3850]) + LODWORD(STACK[0x3908]);
  return v699();
}

uint64_t sub_100771528()
{
  while (1)
  {
    v5 = v2;
    if (!v2)
    {
      break;
    }

    v2 = *(v2 + 16);
    if ((*(v5 + 24) & v1) == 1)
    {
      (*(v4 + 8 * v0))(*v5, *(v5 + 8));
    }
  }

  return (v3 + 143113071);
}

uint64_t sub_1007715B4()
{
  *v0 = ((v2 - 371207604) & 0x97BFEFBF) - 27247118 + (((STACK[0x3B0] - v2) | (v2 - STACK[0x3B0])) >> 31) + 2;
  v3 = (*(v1 + 8 * (v2 + 31821)))(STACK[0x4F0]);
  STACK[0x3B0] = 0;
  return (*(v1 + 8 * (v2 ^ 0xDEF)))(v3);
}

uint64_t sub_10077169C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47)
{
  v50 = (((*(v48 - 0x79CEC8CF5A6FCE46) ^ 0x66DC36C1) - 1725707969) ^ ((*(v48 - 0x79CEC8CF5A6FCE46) ^ 0xE5FC7AB4) + 436438348) ^ (((a1 + 1362938968) ^ *(v48 - 0x79CEC8CF5A6FCE46)) - 1362939105)) + 1133320957;
  *(v48 - 0x79CEC8CF5A6FCE46) = v50 ^ ((v50 ^ 0x308F61CB) - 1107295139) ^ ((v50 ^ 0x8E3B6727) + 11797169) ^ ((v50 ^ 0xB03B63FB) + 1051985517) ^ ((v50 ^ a47) - 244278551) ^ 0xA36C1AFC;
  return (*(v49 + 8 * v47))();
}

uint64_t sub_1007718E8@<X0>(int a1@<W0>, int a2@<W2>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W6>, int a6@<W8>)
{
  v11 = (a3 + 4 * v7);
  v12 = v7 + 1;
  v13 = *(a3 + 4 * v12);
  v14 = v11[397] ^ ((v13 & 0x7FFFFFFE | ((a1 + a6 + 2823) ^ a2) & v6) >> 1);
  *v11 = (v14 + v9 - (a4 & (2 * v14))) ^ *(v8 + 4 * (v13 & 1));
  return (*(v10 + 8 * (((v12 != 227) * a5) ^ a6)))();
}

uint64_t sub_1007719A8@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 0x683CBC57EAB92A36);
  STACK[0x910] = 0;
  STACK[0x10C8] = 0;
  return (*(v3 + 8 * (((v4 == 0x308E083E0C524CBELL) * (((v2 - a1 - 1431911585) & 0x9D88B146) - 29)) ^ v2)))();
}

uint64_t sub_100771A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51)
{
  *(v52 - 232) = a4;
  HIDWORD(a10) = a51 ^ a42;
  return (*(v51 + 8 * (*(v52 - 224) + 3169)))((5 * ((*(v52 - 224) + 3169) ^ 0x18F9)) ^ 0x5B58A0C5u, 2976737205, a32, HIDWORD(a31), 845701635, 1354495986, 607264557, 1189186272, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_100771CD8(uint64_t a1)
{
  v4 = STACK[0x5E0];
  *(v4 + 248) = a1;
  *(v4 + 256) = v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100771D48(uint64_t a1, uint64_t a2, int a3)
{
  v5 = LODWORD(STACK[0x3E40]);
  v6 = *(v4 + 8 * ((((((a3 + 2344) | 0x1294) ^ 0x529F) + v3 == v5) * ((a3 - 613877477) & 0x2496F8DB ^ 0x28D7)) ^ a3));
  STACK[0x39C0] = v5;
  return v6();
}

uint64_t sub_100771E64()
{
  *(v0 + 224) = 4;
  v5 = (*(v3 + 8 * (v1 + 2120268298)))(&STACK[0x224D], &STACK[0xF54], &STACK[0x1810], 0, 0);
  v6 = (((2 * (v4 - 240)) | 0x782B77987787F602) - (v4 - 240) - 0x3C15BBCC3BC3FB01) ^ 0x4D88E902752EA856;
  *(v2 + 1072) = 551690071 * v6 + v5;
  *(v4 - 232) = ((v1 + 251009205) ^ 3) - 551690071 * v6;
  *(v4 - 228) = v1 + 251009205 - 551690071 * v6;
  *(v4 - 224) = 551690071 * v6;
  *(v4 - 240) = (v1 + 1041169529) ^ (551690071 * v6);
  *(v4 - 236) = (551690071 * v6) ^ (v1 + 251009205) ^ 0xF1F;
  *(v2 + 1064) = -551690071 * v6;
  v7 = (*(v3 + 8 * (v1 ^ 0x819FBE4B)))(v4 - 240);
  return (*(v3 + 8 * *(v4 - 220)))(v7);
}

uint64_t sub_10077200C@<X0>(uint64_t a1@<X8>)
{
  *v3 = v2 ^ 0xE5 ^ (v1 + 17);
  *STACK[0xD68] = a1;
  *STACK[0x13B0] = STACK[0x1674];
  return (*(v4 + 8 * v1))();
}

uint64_t sub_100772104()
{
  *STACK[0xCD8] = 0;
  *STACK[0xBB0] = -769884012;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10077229C()
{
  v3 = v0 ^ 0x59D50;
  v4 = (v3 + 9477);
  STACK[0x690] = (*(v1 + 8 * (v3 | 0x54D7)))(v2);
  v5 = (*(v1 + 8 * (v3 + 21585)))();
  v6 = (*(v1 + 8 * (v3 | 0x549B)))(STACK[0x690], v5);
  STACK[0x530] = v4;
  return (*(v1 + 8 * ((112 * (v6 + ((v3 + 474437251) ^ v4 ^ 0x1C473387) > 0x14)) | v3)))();
}

uint64_t sub_1007723E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = STACK[0x880] == 0x9CCED9277E344C57;
  v12 = *(v9 + v11);
  STACK[0xB68] = v9;
  v13 = !v13 && *(v9 + a8) == v12;
  v14 = v13;
  return (*(v10 + 8 * ((v14 * (13 * (v8 ^ 0x56A6) + ((v8 - 9292) ^ 0xFFFFF87F))) ^ v8)))();
}

uint64_t sub_1007725E0()
{
  v4 = *(STACK[0x8B0] + 8 * (((v1 + ((v0 - 1210951286) & 0xFFFDC3B7) + 18) * (v3 > 0xF)) ^ v0));
  STACK[0x370] = v2;
  STACK[0x360] = v3;
  return v4();
}

uint64_t sub_100772644(int a1)
{
  *v2 = a1;
  *v3 = a1;
  v4 = STACK[0x57D8];
  STACK[0xC5C0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v4 + 8 * (v1 - 12743 + v1 + 19141)))();
}

uint64_t sub_100772698()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))();
  STACK[0xCA28] = 0;
  return (*(v0 + 8 * SLODWORD(STACK[0x3934])))(v1);
}

uint64_t sub_1007726D0()
{
  v0 = STACK[0x2110];
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * LODWORD(STACK[0x2110]));
  return (*(v1 + 8 * ((v0 ^ 0x11F0) + v0)))();
}

uint64_t sub_100772718()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 9207)))();
  STACK[0x9918] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10077274C@<X0>(uint64_t a1@<X4>, int a2@<W5>, unint64_t a3@<X6>, int a4@<W8>)
{
  v7 = *(*(a1 + 1360) + v5 - 35072 * ((((v4 >> 6) * a3) >> 64) >> 1));
  *(*(a1 + 1368) + (a2 + ((a4 + 1879521569) & 0x8FF8E956 ^ 0x7CE5) * v6) % 0x1808) = (((v7 ^ 0xDF) - 50) ^ ((v7 ^ 0x3A) + 41) ^ ((v7 ^ 3) + 18)) + 87;
  return (*(STACK[0x57D8] + 8 * ((8136 * (v6 == 255)) ^ a4)))();
}

uint64_t sub_10077280C(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = __ROR8__((v13 + a4) & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = v15 - ((2 * v15 + 0x93AC1E5152F503CLL) & 0x8ACD8C94D2B8EF72) + 0x4A04273CF3F41FD7;
  v17 = __ROR8__((v12 - 7462) ^ 0xE32FDD4FB853792BLL ^ v16, 8);
  v16 ^= 0xC7C4DADBECEE1A2ELL;
  v18 = (v17 + v16) ^ v6;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v8;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = ((2 * (v22 + v21)) | 0x1BE0AA498D142CBALL) - (v22 + v21) + 0x720FAADB3975E9A3;
  v24 = *(*a2 + ((((a1 + a4) & 0x78383AD8) + ((a1 + a4) & 0x87C7C520 | 0x78383AD8) - 2120593736) & *a3));
  v25 = __ROR8__((a1 + a4) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 ^= 0x744AF0A5BFDF0711uLL;
  v26 = v23 ^ __ROR8__(v21, 61);
  v27 = (v24 + v25 - ((2 * (v24 + v25)) & 0xB24184D802BE23A0) - 0x26DF3D93FEA0EE30) ^ 0x2D3693259E012DB7;
  v28 = __ROR8__(v27, 8);
  v29 = __ROR8__(v23, 8);
  v30 = v27 ^ __ROR8__(v24, 61);
  v31 = (((2 * (v28 + v30)) | 0x69DE2A67DE4868F6) - (v28 + v30) - 0x34EF1533EF24347BLL) ^ 0x21DD57DDD3D45E32;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x2275D4C73835399BLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (a6 - ((v35 + v34) | a6) + ((v35 + v34) | 0x20067CD1321C3C49)) ^ 0xC5A966621CA10094;
  v37 = v29 + v26 - ((2 * (v29 + v26)) & 0x46231A75A0CDBCD8);
  v38 = v36 ^ __ROR8__(v34, 61);
  v39 = __ROR8__(v36, 8);
  v40 = (v37 + 0x23118D3AD066DE6CLL) ^ 0xACA0E9EA86CCC0BDLL;
  v41 = (a5 - ((v39 + v38) | a5) + ((v39 + v38) | 0x7FDC6CA55420549)) ^ 0xC0200F3C9907B268;
  v42 = v40 ^ __ROR8__(v26, 61);
  v43 = (__ROR8__(v40, 8) + v42) ^ v11;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v10;
  v46 = v41 ^ __ROR8__(v38, 61);
  v47 = __ROR8__(v45, 8) + (v45 ^ __ROR8__(v44, 61));
  v48 = __ROR8__(v41, 8);
  v49 = (((2 * (v48 + v46)) & 0x1B82D6A2969D3F06) - (v48 + v46) - 0xDC16B514B4E9F84) ^ 0x5A18B40BED63BA04;
  v50 = (v47 ^ v7) >> (8 * ((v13 + a4) & 7));
  v51 = v49 ^ __ROR8__(v46, 61);
  v52 = (__ROR8__(v49, 8) + v51) ^ v9;
  *(a1 + a4) = (((__ROR8__(v52, 8) + (v52 ^ __ROR8__(v51, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((a1 + a4) & 7))) ^ v50 ^ *(v13 + a4);
  return (*(v14 + 8 * ((10870 * (a4 != 27)) ^ v12)))();
}

uint64_t sub_100772BE0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v104 = __PAIR64__(v51, v50);
  v105 = __PAIR64__(v45, v46);
  v106 = __PAIR64__(v43, v44);
  v107 = __PAIR64__(v41, v42);
  v108 = __PAIR64__(a3, a6);
  v109 = __PAIR64__(v39, v40);
  v110 = __PAIR64__(a8, v38);
  v111 = __PAIR64__(v47, a4);
  v52 = *v49;
  v53 = v52;
  v101 = *v49;
  v54 = v49[8];
  v55 = v49[4];
  HIDWORD(a16) = v54 + 1995702313 - ((2 * v54) & 0x80) + 279;
  v56 = v49[6];
  v113 = v49[7];
  v100 = v49[5];
  v57 = v49[9];
  v58 = v49[2];
  v59 = (v52 ^ 0xEBBB7F6E) + ((2 * v52) & 0xDC) + 2070325596 + ((2 * v52) & 0xD2 ^ (((2 * v52) & 0xD2 ^ 0xDA60A955) + 631199320) ^ (((2 * v52) & 0xD2 ^ 0x9E20DD48) + 1642013259) ^ 0xC2);
  v60 = v49[3];
  v61 = v49[10];
  v62 = v49[12];
  v63 = v49[11];
  v64 = v49[15];
  v65 = v49[14];
  v112 = v49;
  v66 = v49[13];
  v67 = ((2 * v62) & 0x136) + (v62 ^ 0xBEEFFD9B);
  v68 = *(&off_101353600 + v48 - 10545);
  v102 = v49[1];
  v69 = ((v60 ^ 0x4C87AC2B) - 1283959924) ^ ((v60 ^ 0xF421CA9) - 255991030) ^ ((v60 ^ 0x43C5B081) - 1137029342);
  v70 = 2 * (v69 + 1802417051);
  v71 = ((2 * ((v69 + 1802417051) ^ 0xE83A0950)) ^ 0xF9568B22) & ((v69 + 1802417051) ^ 0xE83A0950) ^ (2 * ((v69 + 1802417051) ^ 0xE83A0950)) & 0x7CAB4590;
  v72 = v71 & (4 * ((v70 & 0x29229982 ^ 0x94914CC1) & (v69 + 1802417051))) ^ (v70 & 0x29229982 ^ 0x94914CC1) & (v69 + 1802417051);
  v73 = (v70 ^ (4 * (((4 * v71) ^ 0x12A51240) & (v71 ^ 0x38020100) & (16 * v72) ^ v72))) & 0xD2;
  v74 = v69 - (((v73 ^ 0x1435BD34) + 1614337858) ^ ((v73 ^ 0xC97ACB55) - 1116233439) ^ ((v73 ^ 0xDD4F76E3) - 1455285097)) - 250074120;
  v75 = (v74 ^ 0xF0E432E0) & (2 * (v74 & 0x82F540C5)) ^ v74 & 0x82F540C5;
  v76 = ((2 * (v74 ^ 0xF4243362)) ^ 0xEDA2E74E) & (v74 ^ 0xF4243362) ^ (2 * (v74 ^ 0xF4243362)) & 0x76D173A6;
  v77 = v76 ^ 0x125110A1;
  v78 = (v76 ^ 0x4800304) & (4 * v75) ^ v75;
  v79 = ((4 * v77) ^ 0xDB45CE9C) & v77 ^ (4 * v77) & 0x76D173A4;
  v80 = (v79 ^ 0x52414280) & (16 * v78) ^ v78;
  v81 = ((16 * (v79 ^ 0x24903123)) ^ 0x6D173A70) & (v79 ^ 0x24903123) ^ (16 * (v79 ^ 0x24903123)) & 0x76D173A0;
  v82 = v80 ^ 0x76D173A7 ^ (v81 ^ 0x64113200) & (v80 << 8);
  v103 = v65;
  v83 = v102 ^ v53 ^ v55 ^ v56 ^ v113 ^ v100 ^ v58 ^ v54 ^ v60 ^ v61 ^ v62 ^ v63 ^ v64 ^ v65 ^ v66 ^ ((*(v68 + 8 * ((v102 - 0x719179064550AD7CLL - ((2 * v102) & 0x9C) + 202) ^ 0x8E6E86F9BAAF5284)) ^ *(v68 + 8 * ((v58 - 0x6F0808410D57CF62 - ((2 * v58) & 0xAE) + 185) ^ 0x90F7F7BEF2A8309ELL)) ^ *(v68 + 8 * (v59 ^ ((v59 ^ 0xD418D9A8) + 1287982859) ^ ((v59 ^ 0x20A9C439) - 1200352612) ^ ((v59 ^ 0x68286B33) - 252330606) ^ ((v59 ^ 0xFBBB5FFF) + 1667664222) ^ 0x672229FF)) ^ *(v68 + 8 * (v55 ^ 0xCF)) ^ *(v68 + 8 * (v74 ^ (2 * ((v82 << 16) & 0x76D10000 ^ v82 ^ ((v82 << 16) ^ 0x73A70000) & (((v81 ^ 0x12C04187) << 8) & 0x76D10000 ^ 0x26800000 ^ (((v81 ^ 0x12C04187) << 8) ^ 0x51730000) & (v81 ^ 0x12C04187)))) ^ 0x8A55A729))) >> 9) ^ 0x3C;
  v84 = (*(v68 + 8 * (v100 ^ 0xCE)) >> 9) ^ 0x57;
  HIDWORD(v85) = v83 ^ (v84 - ((2 * v84) & 0x16) + 11);
  LODWORD(v85) = (v83 ^ (v84 - ((2 * v84) & 0xD6) + 107)) << 24;
  v86 = ((v85 >> 29) >> 3) | (32 * (v85 >> 29));
  v87 = *(v68 + 8 * (__ROR4__(__ROR4__(HIDWORD(a16) ^ 0x76F40029, 1) ^ 0x809C010B, 31) ^ 0x13802B5u)) >> 9;
  v88 = *(v68 + 8 * ((((v67 + 2147155951) ^ (((v67 + 2147155951) ^ 0xBE037418) + 2132178542) ^ (((v67 + 2147155951) ^ 0xA0882EDF) + 1637690539) ^ (((v67 + 2147155951) ^ 0x4B9E58B2) - 1970578744) ^ (((v67 + 2147155951) ^ 0x6BFFFFFF) - 1427440245) ^ (((-1091568229 - v67) ^ (109 - (v62 ^ 0x6D))) - ((2 * ((-1091568229 - v67) ^ (109 - (v62 ^ 0x6D)))) & 0xDDF9EBB6) + 1862071771) ^ 0x50160851) + 109) ^ 0xA2));
  v89 = (v87 ^ 0xB1E156CA ^ -(v87 ^ 0xB1E156CA) ^ (157 - (v87 ^ 0x57))) - 99;
  v90 = (*(v68 + 8 * (v64 ^ 0x1CC)) >> 9) ^ 0xEF98EFD5B8F71C57;
  if ((v90 & 4) != 0)
  {
    v91 = -4;
  }

  else
  {
    v91 = 4;
  }

  v92 = v89 ^ ((*(v68 + 8 * (v113 ^ 0x1CC)) ^ *(v68 + 8 * (v56 ^ 0xCD)) ^ *(v68 + 8 * (v57 ^ 0x1CA)) ^ *(v68 + 8 * (v61 ^ 0xC9)) ^ *(v68 + 8 * (v63 ^ 0xC8u)) ^ *(v68 + 8 * (v66 ^ 0xCE)) ^ v88) >> 9) ^ (*(v68 + 8 * (v65 ^ 0xCD)) >> 9) ^ (v91 + v90) ^ v86;
  v93 = (v92 ^ 4) + v57;
  v94 = v93 - 2 * ((v92 ^ 4) & v57);
  v95 = v94;
  v96 = *(&off_101353600 + v48 - 11489);
  LODWORD(v113) = a35 - 2;
  v98 = (v94 - 2 * (v94 & 0x71 ^ v93 & 1) + 112) ^ *(v96 + (v94 ^ 0x12)) ^ 0xC8;
  v97 = ((v95 ^ 0xB1) - 2 * ((v95 ^ 0xB1) & 0x78 ^ v94 & 8) + 112) ^ *(v96 + (v95 ^ 0xB1));
  return (*(a37 + 8 * v48))((v48 - 9374) | 0x4524u, v98 >> 3, (v55 ^ v94 ^ *(v96 + (v55 ^ 0x12)) ^ *(v96 + (v95 ^ 0xA)) ^ 0x18) << 16, (v94 ^ *(v96 + (v95 ^ 0x2D)) ^ v66 ^ *(v96 + (v66 ^ 0x12))) ^ 0x3Fu, (v62 ^ v94 ^ *(v96 + (v62 ^ 0x12))) ^ 0x72u ^ *(v96 + (v95 ^ 0x60)), (v103 ^ *(v96 + (v103 ^ 0x12)) ^ 0xC8 ^ (v97 - ((2 * v97) & 0xB4) - 38 - 32 * ((v97 - ((2 * v97) & 0xFFFFFFB4) - 38) >> 4) + 112)) << 16, (v94 ^ v64 ^ *(v96 + (v64 ^ 0x12)) ^ 0x43 ^ *(v96 + (v95 ^ 0x51))) << 8, (0x101010101010101 * v98) ^ 0xEFACCCE409164A9DLL, a9, a10, a11, a12, a13, a14, v100, a16, v101, v102, v66, v56, v103, v61, v55, v64, v96, v104, v105, v106, v107, v108, v109, v110, v111, v112, v95 ^ 0x35, a36, a37, a38, v113, v93 - 2 * ((v92 ^ 4) & v57));
}

uint64_t sub_100773740@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4D98]) = v3 - 2672;
  v5 = v3 - 2714;
  LODWORD(STACK[0x32AC]) = LODWORD(STACK[0x55A0]) | LODWORD(STACK[0x4E34]);
  LODWORD(STACK[0x32B0]) = LODWORD(STACK[0x4EC8]) | LODWORD(STACK[0x4EF8]);
  LODWORD(STACK[0x4E10]) = v2 & (v1 ^ 0xB0CA66B6);
  LODWORD(STACK[0x4E38]) = v4 & (a1 ^ 0x9FA3FBC8);
  v6 = *STACK[0x5120];
  v7 = *STACK[0x54E0];
  v8 = *STACK[0x53A8];
  v9 = v7 & 0xD6 ^ 0x39;
  LODWORD(STACK[0x55A0]) = v5;
  v10 = v8 & 0x30 ^ 0xAE;
  v11 = v8 ^ (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  v12 = (((v7 ^ (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v5 ^ 0x39) & v7 ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0xD6) << 8) | (v11 << 16);
  v13 = *STACK[0x5348];
  v14 = *STACK[0x52A8];
  LOBYTE(v5) = ~v14 & 0x1C;
  v15 = ((v12 ^ 0xD36EFF) & ((v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * v5) ^ v5)) ^ v5)) ^ v5)) ^ v5))) ^ 0x236E11) | v12 & 0xDC9100) << 8;
  LOBYTE(v5) = *STACK[0x5100];
  v16 = v6 & 0xFFFFFFC2 ^ 0x37;
  LODWORD(STACK[0x4E28]) = v6 ^ (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & 0x26 ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16));
  LODWORD(STACK[0x4E08]) = v15 ^ 0x448002FF;
  LODWORD(STACK[0x4E50]) = v15 & 0xB97DF500;
  v17 = *STACK[0x50B0];
  v18 = *STACK[0x4FF8];
  LOBYTE(v15) = v18 & 0x2E ^ 0xA5;
  v19 = v5 & 0xAE ^ 0x65;
  v20 = ((v5 ^ (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x44) & (2 * (v19 ^ v5 & 0xA)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xAE) << 8;
  LOBYTE(v5) = v17 & 0xC8 ^ 0xB2;
  v21 = (((v18 ^ (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x44) & (2 * (v15 ^ v18 & 0xA)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0x2E) << 8) | ((((v17 ^ (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * v5) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) ^ 0x77E5) & ~v20 | v20 & 0x88888888) << 16);
  v22 = v13 & 0x9E ^ 0xDD;
  v23 = v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * (v22 ^ v13 & 0x3A)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  LODWORD(STACK[0x4DF8]) = v21 ^ 0x29AFF;
  LODWORD(STACK[0x4E20]) = v21 & 0x9BF06500;
  v24 = *STACK[0x5220];
  LOBYTE(v21) = v24 & 0x54 ^ 0xF8;
  v25 = *STACK[0x5320];
  v26 = v25 & 0xC4 | 0x30;
  v27 = *STACK[0x5410];
  v28 = v27 & 0xD4 ^ 0xB8;
  v29 = (((v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0xD4) << 8) | (((v25 ^ (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xC4) << 16);
  LODWORD(STACK[0x4DD0]) = ((v24 ^ (2 * ((v24 ^ 0x64) & (2 * ((v24 ^ 0x64) & (2 * ((v24 ^ 0x64) & (2 * ((v24 ^ 0x64) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x67F837) & ~v29 | v29 & 0x980700;
  v30 = *STACK[0x5540];
  LOBYTE(v29) = v30 & 0x70 ^ 0x4E;
  v31 = *STACK[0x5310];
  v32 = v31 & 0xA6 ^ 0x61;
  LODWORD(STACK[0x4DB8]) = v31 ^ (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x44444444) & (2 * (v32 ^ v31 & 2)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32));
  LOBYTE(v31) = *STACK[0x5010];
  LOBYTE(v32) = v31 & 0xAE ^ 0xE5;
  v33 = (((v31 ^ (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x44) & (2 * (v32 ^ v31 & 0xA)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0xAE) << 8) | (((v30 ^ (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x70) << 16);
  v34 = *STACK[0x52C8];
  LOBYTE(v21) = v34 & 0x4E ^ 0xF5;
  v35 = ((v34 ^ (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * (v21 ^ v34 & 0xAA)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x4BE6A8) & ~v33 | v33 & 0xB41900;
  v36 = *STACK[0x5140];
  v37 = v36 & 0xFFFFFFE8 ^ 0xFFFFFF82;
  LODWORD(STACK[0x4DA0]) = v36 ^ (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x44) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37));
  v35 <<= 8;
  LODWORD(STACK[0x4DE0]) = v35 ^ 0x200118FF;
  LODWORD(STACK[0x4E00]) = v35 & 0x967A8700;
  LOBYTE(v35) = *STACK[0x5328];
  LOBYTE(v36) = v35 & 0xBC ^ 0xEC;
  v38 = STACK[0xFE70];
  STACK[0x4EC8] = STACK[0xFE70] + 40568;
  LOBYTE(v37) = *(v38 + 40568);
  LOBYTE(v29) = v37 & 0xA2 ^ 0x67;
  v39 = (((v35 ^ (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xBC) << 16) | (((v37 ^ (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x44) & (2 * ((v37 ^ 0x44) & 6 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xA2) << 8);
  LOBYTE(v36) = *STACK[0x4B48];
  LOBYTE(v37) = v36 & 0x10 ^ 0x1E;
  v40 = ((v36 ^ (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x3FF1E2) & (v39 ^ 0x3FF7FF) | v39 & 0xC00E00;
  v41 = *STACK[0x51D0];
  v42 = v41 & 0xCE ^ 0x35;
  LODWORD(STACK[0x4B98]) = v41 ^ (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * (v42 ^ v41 & 0xAAAAAAAA)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42));
  v40 <<= 8;
  LODWORD(STACK[0x4DD8]) = v40 ^ 0x401FF;
  LODWORD(STACK[0x4E18]) = v40 & 0xEFFA0E00;
  LOBYTE(v41) = *STACK[0x5078];
  LOBYTE(v42) = v41 & 0xA8 ^ 0xE2;
  LOBYTE(v41) = v41 ^ (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x64) & (2 * ((v41 ^ 0x44) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ 0xA8;
  LOBYTE(v42) = *STACK[0x4FD8];
  LOBYTE(v29) = v42 & 0xAC ^ 0xE4;
  v43 = v41 << 8;
  v44 = ((v42 ^ (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xD27C) & ~v43 | v43 & 0x2D00;
  LOBYTE(v42) = *STACK[0x5098];
  LOBYTE(v29) = v42 & 0xDA ^ 0xBB;
  v45 = (((v42 ^ (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & 0x3E ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xDA) << 8) | (v44 << 16);
  v46 = *STACK[0x53F8];
  v47 = v46 & 0xFFFFFFEC ^ 4;
  LODWORD(STACK[0x4B88]) = v46 ^ (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47));
  LODWORD(STACK[0x4DC8]) = v45 ^ 0x290E41FF;
  LODWORD(STACK[0x4DF0]) = v45 & 0x5661BE00;
  LOBYTE(v45) = *STACK[0x4B40];
  LOBYTE(v47) = v45 & 0xE ^ 0x15;
  v48 = *STACK[0x57C0];
  v49 = (v48 & 0xEEEEEEE4 | 0xA) ^ v48 & 0x1C;
  LODWORD(STACK[0x4DB0]) = v48 ^ (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * v49) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49));
  LOBYTE(v48) = *STACK[0x4B30];
  LOBYTE(v49) = v48 & 0x8A ^ 0x53;
  v50 = (((v45 ^ (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * (v47 ^ v45 & 0xAA)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0xE) << 16) | (((v48 ^ (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & 0x2E ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49))) ^ 0x8A) << 8);
  LOBYTE(v16) = *STACK[0x5520];
  LOBYTE(v48) = v16 & 0x16 ^ 0x99;
  v51 = (((v16 ^ (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * (v48 ^ v16 & 0x32)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x72B166) & ~v50 | v50 & 0x8D4E00) << 8;
  LODWORD(STACK[0x4DA8]) = v51 ^ 0x90208FF;
  LODWORD(STACK[0x4E34]) = v51 & 0x847CB700;
  LOBYTE(v51) = *STACK[0x5350];
  v52 = v51 & 0x6C ^ 0xC4;
  LOBYTE(v50) = v51 ^ (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  v53 = *STACK[0x54F0];
  v54 = (v11 << 8) | (v50 << 16);
  v55 = (v54 ^ 0x1047FF) & ((v53 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v53 ^ 0x24)) & 0x58 ^ 0x2C) & (v53 ^ 0x24))) ^ 0x2C) & (v53 ^ 0x24))) ^ 0x2C) & (v53 ^ 0x24))) ^ 0x2C) & (v53 ^ 0x64)))) ^ 0x78471C) | v54 & 0x87B800;
  LOBYTE(v48) = *STACK[0x4F58];
  LOBYTE(v49) = v48 & 0x92 ^ 0x5F;
  LOBYTE(v48) = v48 ^ (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & 0x36 ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49));
  LODWORD(STACK[0x4D58]) = (v55 << 8) ^ 0x2000BFF;
  LODWORD(STACK[0x4C68]) = (v55 << 8) & 0xF1E8D400;
  LOBYTE(v54) = *STACK[0x5490];
  LOBYTE(v55) = v54 & 0x9E ^ 0xDD;
  LOBYTE(v49) = *STACK[0x56D0];
  v56 = v49 & 0xD4 ^ 0x38;
  v57 = (((v49 ^ (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * v56) ^ v56)) ^ v56)) ^ v56)) ^ v56))) ^ 0xD4) << 8) | (((v54 ^ (2 * ((v54 ^ 0x64) & (2 * ((v54 ^ 0x64) & (2 * ((v54 ^ 0x64) & (2 * ((v54 ^ 0x64) & (2 * ((v54 ^ 0x64) & (2 * (v55 ^ v54 & 0x3A)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55))) ^ 0x9E) << 16);
  LODWORD(STACK[0x4B90]) = v23;
  v58 = (v23 ^ 0x71CC08) & ~v57 | v57 & 0x8E3300;
  LOBYTE(v57) = *STACK[0x4F20];
  LOBYTE(v49) = v57 & 0x3E ^ 0x2D;
  v59 = (((v58 << 8) ^ 0x8C1021FF) & ((v57 ^ (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * (v49 ^ v57 & 0x1A)) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49))) ^ 0xEC143335) | (v58 << 8) & 0x13EBCC00) ^ 0xFDDCB70B;
  LOBYTE(v58) = *STACK[0x5090];
  LOBYTE(v49) = *STACK[0x50A0];
  v60 = (((v49 ^ (2 * (((2 * (((2 * (((2 * (((2 * v49) & 0x48 | 0x24) & (v49 ^ 0x24))) ^ 0x2C) & (v49 ^ 0x24))) ^ 0x2C) & (v49 ^ 0x24))) ^ 0x2C) & (v49 ^ 0x64)))) ^ 0x2C) << 16) | (((v58 ^ (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * (v58 & 0x64)) ^ v58 & 0x64)) ^ v58 & 0x64)) ^ v58 & 0x64)) ^ v58 & 0x64))) ^ 0xE4) << 8);
  LOBYTE(v58) = *STACK[0x5270];
  LOBYTE(v49) = v58 & 0x38 ^ 0x2A;
  v61 = (((v58 ^ (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * v49) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49))) ^ 0x8AB66F) & ~v60 | v60 & 0x754900) << 8;
  LODWORD(STACK[0x4B80]) = v61 ^ 0x614128FF;
  LODWORD(STACK[0x4DE8]) = v61 & 0x9E88D400;
  v62 = *STACK[0x4F00];
  v63 = (v62 & 0xFFFFFFE4 | 0x12) ^ v62 & 0xFFFFFFEC;
  HIDWORD(v64) = (2 * v62) | ((((2 * v62) | (4 * v62) | ~(8 * ((v62 ^ 4) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & 0x26 ^ v62 & 0xFFFFFFC2 ^ 0x37)) ^ v62 & 0xFFFFFFC2 ^ 0x37)) ^ v62 & 0xFFFFFFC2 ^ 0x37)) ^ v62 & 0xFFFFFFC2 ^ 0x37))) ^ ~v62) >> 7) & 1;
  LODWORD(v64) = ((2 * v62) ^ (4 * ((v62 ^ 0x24) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ 0x10) << 24;
  LOBYTE(v63) = *STACK[0x50B8];
  v65 = v63 & 0xE6 ^ 0x81;
  v66 = (((((v64 >> 26) & 0x80) != 0) | (2 * (v64 >> 26))) << 8) | (((v63 ^ (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * (v63 & (2 * v65) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65))) ^ 0xE6) << 16);
  LOBYTE(v63) = *STACK[0x5130];
  v67 = v63 & 0x26 ^ 0xA1;
  v68 = ((v63 ^ (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x44) & (2 * (v67 ^ v63 & 2)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0x7EE90) & ~v66 | v66 & 0xF81100;
  LOBYTE(v63) = *STACK[0x52B0];
  v69 = v63 & 0x6E ^ 0x45;
  v70 = v63 ^ (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x44) & (2 * (v69 ^ v63 & 0xA)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69));
  v68 <<= 8;
  LODWORD(STACK[0x4B70]) = v68 ^ 0x500140FF;
  LODWORD(STACK[0x4BA0]) = v68 & 0xADD2AF00;
  LOBYTE(v68) = *STACK[0x5040];
  LOBYTE(v63) = v68 & 0x6E ^ 0x45;
  v71 = *STACK[0x52A0];
  v72 = v71 & 0x72 ^ 0xCF;
  v73 = (((v71 ^ (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * (v72 ^ v71 & 0x16)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72))) ^ 0x72) << 8) | (((v68 ^ (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x44) & (2 * (v63 ^ v68 & 0xA)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63))) ^ 0x6E) << 16);
  LOBYTE(v68) = *STACK[0x5590];
  LOBYTE(v63) = v68 & 0x7C ^ 0xCC;
  v74 = ((v68 ^ (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63))) ^ 0xF5846F) & ~v73 | v73 & 0xA7B00;
  LOBYTE(v73) = *STACK[0x55F0];
  LOBYTE(v63) = v73 & 0xBE ^ 0xED;
  v75 = v73 ^ (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * (v63 ^ v73 & 0x1A)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63));
  v74 <<= 8;
  LODWORD(STACK[0x4B68]) = v74 ^ 0xA6084FF;
  LODWORD(STACK[0x4E68]) = v74 & 0x351F7900;
  LOBYTE(v74) = *STACK[0x5290];
  LOBYTE(v73) = (v74 & 0xE4 | 0xA) ^ v74 & 0x1C;
  LOBYTE(v63) = *STACK[0x5000];
  v76 = v63 & 0x62 ^ 0xC7;
  v77 = (((v63 ^ (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x44) & (2 * ((v63 ^ 0x44) & 6 ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76))) ^ 0x62) << 8) | (((v74 ^ (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0xF8) << 16);
  LOBYTE(v74) = *STACK[0x56F0];
  LOBYTE(v63) = v74 & 0x1E ^ 0x9D;
  v78 = ((v74 ^ (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * (v63 ^ v74 & 0x3A)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63))) ^ 0xCF10F0) & ~v77 | v77 & 0x30EF00;
  LOBYTE(v77) = *STACK[0x5190];
  LOBYTE(v63) = v77 & 0xA8 ^ 0x62;
  v79 = v77 ^ (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x44) & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63));
  v78 <<= 8;
  LODWORD(STACK[0x4B58]) = v78 ^ 0x206F10FF;
  LODWORD(STACK[0x4B78]) = v78 & 0x52800500;
  LOBYTE(v78) = *STACK[0x4EE8];
  LOBYTE(v77) = v78 & 0x10 ^ 0x9E;
  v80 = ((v78 ^ (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * v77) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77))) ^ 0x4A58) & (v20 ^ 0x7AFF) | v20 & 0xB500;
  LOBYTE(v77) = *STACK[0x5030];
  LOBYTE(v63) = v77 & 0x92 ^ 0xDF;
  v81 = (((v77 ^ (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & 0x36 ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63))) ^ 0x92) << 8) | (v80 << 16);
  LOBYTE(v40) = *STACK[0x5790];
  LOBYTE(v80) = v40 & 0x68 ^ 0xC2;
  LOBYTE(v63) = (v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x44) & (2 * v80) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80;
  LOBYTE(v80) = *STACK[0x4F48];
  v82 = v80 & 0x54 ^ 0xF8;
  LOBYTE(v80) = v80 ^ (2 * ((v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * v82) ^ v82)) ^ v82)) ^ v82)) ^ v82));
  LODWORD(STACK[0x4B50]) = v81 ^ 0x84A0EDFF;
  LODWORD(STACK[0x4BA8]) = v81 & 0x735F1200;
  LOBYTE(v81) = *STACK[0x5358];
  v83 = v81 & 0x62 ^ 0xC7;
  v84 = *STACK[0x5208];
  v85 = v84 & 0xA6 ^ 0xFFFFFFE1;
  LODWORD(STACK[0x33B0]) = v84 ^ (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x44444444) & (2 * (v85 ^ v84 & 2)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85));
  v86 = (((v40 ^ (2 * v63)) ^ 0x68) << 16) | (((v81 ^ (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x44) & (2 * ((v81 ^ 0x44) & 6 ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83))) ^ 0x62) << 8);
  STACK[0x4EF8] = v38 + 37248;
  LOBYTE(v73) = *(v38 + 37248);
  LOBYTE(v77) = v73 & 0x48 ^ 0xF2;
  v87 = (((v73 ^ (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * v77) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77))) ^ 0x8207C3) & ~v86 | v86 & 0x7DF800) << 8;
  LODWORD(STACK[0x33A8]) = v87 ^ 0x55B854FF;
  LODWORD(STACK[0x4B60]) = v87 & 0x2A432800;
  v88 = *STACK[0x5368];
  v89 = v88 ^ 0x64;
  LODWORD(STACK[0x33A0]) = v88 ^ (2 * (v89 & (2 * (v89 & (2 * (v89 & (2 * (v89 & (2 * (((2 * (v88 & 0x24)) | 0x12) & v89 ^ (v88 | 9))) ^ (v88 | 9))) ^ (v88 | 9))) ^ (v88 | 9))) ^ (v88 | 9)));
  v90 = *STACK[0x4B38];
  v91 = v90 & 0x6E ^ 0xFFFFFFC5;
  v92 = v90 ^ (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x44444444) & (2 * (v91 ^ v90 & 0xA)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91));
  HIDWORD(v64) = v92 ^ 0xE;
  LODWORD(v64) = v92 & 0xE0 ^ 0x60;
  HIDWORD(v64) = v64 >> 5;
  LODWORD(v64) = HIDWORD(v64);
  v93 = ((v64 >> 27) << 8) + (((v50 ^ 0x93A1) & (v43 ^ 0x93FF) ^ (v43 & 0x6C00 | 0x20)) << 16);
  LODWORD(STACK[0x3398]) = v93 ^ 0x641003FF;
  LODWORD(STACK[0x4DC0]) = v93 & 0x198BFC00;
  LODWORD(STACK[0x32D0]) = LODWORD(STACK[0x4E28]);
  v94 = LODWORD(STACK[0x4DD0]) << 8;
  LODWORD(STACK[0x3338]) = LODWORD(STACK[0x4DB8]);
  LODWORD(STACK[0x4E28]) = v94 & 0x59794100;
  LODWORD(STACK[0x3328]) = v94 ^ 0x80069CFF;
  LODWORD(STACK[0x3390]) = LODWORD(STACK[0x4DA0]);
  LODWORD(STACK[0x3340]) = LODWORD(STACK[0x4B98]);
  LODWORD(STACK[0x3370]) = LODWORD(STACK[0x4B88]);
  LODWORD(STACK[0x3388]) = v48;
  HIDWORD(v64) = v59;
  LODWORD(v64) = v59;
  LODWORD(STACK[0x4DD0]) = v64 >> 4;
  LODWORD(STACK[0x4B88]) = v70;
  LODWORD(STACK[0x4B98]) = v75;
  LODWORD(STACK[0x4DA0]) = v79;
  LODWORD(STACK[0x4DB8]) = v80;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x4D98])))();
}

uint64_t sub_1007750BC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 + 2449)))(v2);
}

uint64_t sub_100775134()
{
  v3 = STACK[0x1BB8] + 10 + (v0 ^ 0xD21C8094);
  STACK[0x19D0] = v3;
  return (*(v1 + 8 * ((127 * (((((v3 ^ STACK[0x1BB0]) & v3) >> (__clz(v3 ^ STACK[0x1BB0] | 1) ^ 0x3Fu)) & 1) == 0)) ^ (v2 - 1211071000))))();
}

void sub_1007751B0(uint64_t a1)
{
  v1 = 800103191 * (((a1 | 0x6E9BE728) - (a1 & 0x6E9BE728)) ^ 0x1FDFAA4B);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100775280(uint64_t a1, int a2, unint64_t a3)
{
  v6 = *(*(a1 + 1360) + 4 * ((a2 + (((v4 - 431608135) & 0x19B9BE3Bu) - 5894) * v5) % 0x2240));
  *(*(a1 + 1368) + v3 - 6152 * (((v3 * a3) >> 64) >> 12)) = (((v6 ^ 0x3A) + 123) ^ ((v6 ^ 5) + 70) ^ ((v6 ^ 0xD9) - 102)) - 91;
  return (*(STACK[0x57D8] + 8 * ((19 * (v5 == 255)) | v4)))();
}

uint64_t sub_10079D588(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(result + 16);
    if (v1 == v2)
    {
      v3 = *(v1 + 1);
      v4 = *(v1 + 9);
      v5 = *(v1 + 13);
      v6 = v1[15];
      v994 = *v1;
      v995 = v3;
      v996 = v4;
      v997 = v5;
      v998 = v6;
      v1 = &v994;
    }

    v7 = *(result + 24);
    v8 = -42900;
    if (v7)
    {
      if (v2)
      {
        v9 = *result;
        if (*result)
        {
          v10 = 1379010179 * ((result & 0x398DB2A7 | ~(result | 0x398DB2A7)) ^ 0xE2237436);
          v11 = -902390891 * (*(result + 40) - v10) + 344897066;
          v12 = ((v11 ^ 0xC8DA4C74) + 713371185) ^ v11 ^ ((v11 ^ 0xDC69CC52) + 1043770903) ^ ((v11 ^ 0x74ECE262) - 1766621145) ^ ((v11 ^ 0x7DFFFFFF) - 1616863812);
          v13 = ((*(result + 8) ^ v10) - 1457500153) & 0xF45FFBFF;
          v14 = (v13 - 1351052088) & 0xF98393B3;
          if ((((((v11 ^ 0x74) + 49) ^ v11 ^ ((v11 ^ 0x52) + 23) ^ ((v11 ^ 0x62) + 39)) ^ (-v11 - 69)) & 0xF) != (v13 ^ 0xE2807407) - 847683349 || v12 == v14 - 1533179368)
          {
            v8 = -42899;
          }

          else
          {
            v963 = v1;
            v763 = result;
            v16 = (v14 + 513525788) & 0xFDF377FF;
            v17 = *(&off_101353600 + (v14 ^ 0x790316F5)) - 4;
            v18 = (*&v17[8 * (v14 - 2030213032)])(1028);
            v19 = (*&v17[8 * (v14 ^ 0x79036858)])(1028);
            v20 = v18;
            if (v18)
            {
              v21 = v19 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (v21)
            {
              v8 = -42885;
            }

            else
            {
              v913 = v19;
              v762 = v17;
              v22 = 0;
              v987 = v16 - 478572722;
              v23 = *(*(&off_101353600 + ((v16 + 1516517888) & 0x26DC)) + (v7[6] ^ 0xC8) - 12);
              v24 = *(*(&off_101353600 + ((v16 + 1516517888) ^ 0xEFF688E7)) + (*v7 ^ 8) - 8);
              v25 = *(*(&off_101353600 + ((v16 + 1516517888) ^ 0xEFF68E8E)) + (v7[7] ^ 0x47) - 4);
              v26 = ((*(*(&off_101353600 + ((v16 + 1516517888) ^ 0xEFF68CFC)) + (v7[3] ^ 0x73) - 12) ^ (v16 + 78 + (v7[3] ^ 0xAF) + 54) ^ 0xEA) << 16) | (((((v24 >> 3) | (32 * v24)) ^ (8 * ((v24 >> 3) | (32 * v24)) * ((v24 >> 3) | (32 * v24)))) ^ 0xBD) << 8) | ((v7[4] ^ 0xFFFFFFAC ^ ((v7[4] ^ 0xFFFFFFAC) + 95) ^ 0x8D ^ *(*(&off_101353600 + (v16 + 1785573226)) + (v7[4] ^ 0xE7) - 8)) << 24) | v25 ^ 0xB4;
              v27 = *(*(&off_101353600 + (v16 + 1785573012)) + (v7[5] ^ 0xA9) - 4) ^ 0x93 | ((v7[10] ^ 0x94 ^ ((v7[10] ^ 0x94) - 111) ^ 5 ^ *(*(&off_101353600 + (v16 + 1785573828)) + (v7[10] ^ 0xC0) - 8)) << 8) | ((*(*(&off_101353600 + (v16 + 1785573015)) + (v7[1] ^ 0x8ALL) - 4) ^ 0x8C) << 24) | ((v7[2] ^ 0x91 ^ ((v7[2] ^ 0x91) + 108) ^ 0x97 ^ *(*(&off_101353600 + (v16 + 1785573767)) + (v7[2] ^ 0xCALL) - 12)) << 16);
              v28 = (v7[14] ^ 0xF7 ^ *(*(&off_101353600 + (v16 + 1785572959)) + (v7[14] ^ 0x80))) & 0xFF00FFFF | ((((v23 >> 3) | (32 * v23)) ^ 0x4E ^ (2 * ((v23 >> 3) | (32 * v23)) + 20)) << 8) | ((((v7[8] ^ 0xFFFFFFE1) + (v7[8] ^ 0x9A) + *(*(&off_101353600 + (v16 + 1785573310)) + (v7[8] ^ 0xF5)) + 1) ^ 0xB8) << 24) | ((((v7[15] ^ 0x21) + *(*(&off_101353600 + (v16 + 1785573186)) + (v7[15] ^ 0x17) - 12) + 34) ^ 0x2E) << 16);
              v29 = v26 ^ (*(*(&off_101353600 + ((v16 + 1516517888) ^ 0xEFF68FBD)) + (v7[11] ^ 1) - 4) | (((*(*(&off_101353600 + (v16 + 1785572809)) + (v7[9] ^ 0x78) - 4) + (v7[9] ^ 0x25)) ^ 0x15) << 8) | ((v7[13] ^ *(*(&off_101353600 + (v16 + 1785572783)) + (v7[13] ^ 8) - 12) ^ 0x1C) << 16) | (((80 - (v7[12] ^ 0x11)) ^ v7[12] ^ 0x11 ^ *(*(&off_101353600 + ((v16 + 1516517888) ^ 0xEFF68EE4)) + (v7[12] ^ 0x98) - 4)) << 24)) ^ v28;
              v30 = v28 ^ v27 ^ v29 ^ 0xC4;
              v31 = v26 ^ 0x95C66D02;
              v32 = v26 ^ v27 ^ 0x3A5D1D93 ^ v29 ^ 0xC4;
              v33 = v29 ^ 0xDAFA4F82;
              v34 = *(&off_101353600 + (v16 + 1785573794));
              v35 = *(v34 + 4 * ((v26 ^ 0x95C66D02) >> 24)) + 373779150;
              v984 = v16 + 1516517888;
              v36 = *(&off_101353600 + ((v16 + 1516517888) & 0x174C5)) - 12;
              v914 = v9;
              v952 = v12;
              v37 = *(&off_101353600 + (v16 + 1785573496)) - 8;
              v38 = *&v37[4 * (BYTE2(v29) ^ 0xD7)] - 1793439413;
              v39 = *(&off_101353600 + ((v16 + 1516517888) ^ 0xEFF68C24)) - 4;
              v40 = v38 ^ __ROR4__(v35 ^ (4 * v35) ^ 0x88589C1A, 24) ^ ((4 * v38) | 0xEC42F1E4) ^ __ROR4__(*&v39[4 * v32] ^ 0x8E3422C2, 16) ^ __ROR4__(*&v36[4 * (((v30 ^ 0xC067) >> 8) ^ 0x7E)] ^ (((v30 ^ 0xC067) >> 8) - (((v30 ^ 0xC067) >> 8) ^ 0x2C2E771D)) ^ 0xA1931302, 8);
              v41 = *&v37[4 * (((v29 ^ 0xDAFA4F82) >> (v29 & 8) >> (v29 & 8 ^ 8)) ^ 0x2D)] - 1793439413;
              v42 = v41 ^ 0x3A070807 ^ ((4 * v41) | 0xEC42F1E4);
              v43 = *&v37[4 * (HIBYTE(v30) ^ 0x88)] - 1793439413;
              v44 = *&v39[4 * BYTE2(v32)] ^ __ROR4__(v43 ^ 0x3A070807 ^ ((4 * v43) | 0xEC42F1E4), 24);
              v45 = *&v37[4 * BYTE1(v31)] - 1793439413;
              v46 = *&v37[4 * (v29 ^ 0xAF)] - 1793439413;
              v47 = v44 ^ __ROR4__(v45 ^ 0x3A070807 ^ ((4 * v45) | 0xEC42F1E4), 8) ^ __ROR4__(v46 ^ 0x3A070807 ^ ((4 * v46) | 0xEC42F1E4), 16);
              v48 = *&v36[4 * (((v30 ^ 0xA5B3C067) >> 16) ^ 0x7E)] ^ (((v30 ^ 0xA5B3C067) >> 16) - (((v30 ^ 0xA5B3C067) >> 16) ^ 0x2C2E771D)) ^ __ROR4__((HIBYTE(v33) - (HIBYTE(v33) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (HIBYTE(v33) ^ 0x7E)], 24);
              v49 = *(v34 + 4 * HIBYTE(v32)) + 373779150;
              v50 = (BYTE2(v31) - (BYTE2(v31) ^ 0x2C2E771D)) ^ *&v36[4 * (BYTE2(v31) ^ 0x7E)] ^ __ROR4__(v49 ^ (4 * v49) ^ 0x88589C1A, 24) ^ __ROR4__(*&v39[4 * (v30 ^ 0x10)] ^ 0x8E3422C2, 16) ^ __ROR4__(v42, 8) ^ 0x35E001DE;
              v51 = *(v34 + 4 * BYTE1(v32)) + 373779150;
              v52 = v48 ^ __ROR4__((v31 - (v31 ^ 0x2C2E771D)) ^ *&v36[4 * (v25 ^ 0xC8)] ^ 0xA1931302, 16) ^ __ROR4__(v51 ^ (4 * v51) ^ 0x88589C1A, 8);
              BYTE2(v32) = BYTE2(v47) ^ 0xF;
              v53 = *&v37[4 * (HIBYTE(v40) ^ 0xF7)] - 1793439413;
              v54 = *&v37[4 * ((v47 ^ 0xD5C5) >> 8)] - 1793439413;
              v55 = HIBYTE(v47) ^ 0xD8;
              LODWORD(v25) = *(v34 + 4 * (v47 ^ 0xC5u)) + 373779150;
              v56 = *&v36[4 * (((v40 ^ 0xDA7A728D) >> 16) ^ 0x7E)] ^ (((v40 ^ 0xDA7A728D) >> 16) - (((v40 ^ 0xDA7A728D) >> 16) ^ 0x2C2E771D)) ^ __ROR4__((HIBYTE(v50) - (HIBYTE(v50) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (HIBYTE(v50) ^ 0x7E)], 24) ^ __ROR4__(*&v36[4 * (((v52 ^ 0xF567) >> 8) ^ 0x7E)] ^ (((v52 ^ 0xF567) >> 8) - (((v52 ^ 0xF567) >> 8) ^ 0x2C2E771D)) ^ 0xA1931302, 8) ^ __ROR4__(v25 ^ (4 * v25) ^ 0x88589C1A, 16);
              v57 = ((v52 ^ 0x67) - (v52 ^ 0x2C2E777A)) ^ 0xA1931302 ^ *&v36[4 * (v52 ^ 0x19)];
              LODWORD(v25) = *&v39[4 * BYTE2(v32)] ^ __ROR4__((((v52 ^ 0xB7CCF567) >> 24) - (((v52 ^ 0xB7CCF567) >> 24) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (((v52 ^ 0xB7CCF567) >> 24) ^ 0x7E)], 24);
              v58 = ((v52 ^ 0xB7CCF567) >> 16);
              v59 = *&v36[4 * (v58 ^ 0x7E)] ^ __ROR4__(v53 ^ 0x3A070807 ^ ((4 * v53) | 0xEC42F1E4), 24) ^ __ROR4__(v54 ^ 0x3A070807 ^ ((4 * v54) | 0xEC42F1E4), 8);
              v60 = *(v34 + 4 * v50) + 373779150;
              v61 = v59 ^ __ROR4__(v60 ^ (4 * v60) ^ 0x88589C1A, 16) ^ (v58 - (v58 ^ 0x2C2E771D)) ^ 0x6453DB2D;
              v62 = v25 ^ __ROR4__((BYTE1(v50) - (BYTE1(v50) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (BYTE1(v50) ^ 0x7E)], 8) ^ __ROR4__(*&v39[4 * (v40 ^ 0xFA)] ^ 0x8E3422C2, 16);
              v63 = *&v37[4 * BYTE2(v50)] - 1793439413;
              v64 = *(v34 + 4 * v55) + 373779150;
              v65 = v63 ^ ((4 * v63) | 0xEC42F1E4) ^ __ROR4__(v64 ^ (4 * v64) ^ 0x88589C1A, 24) ^ __ROR4__((((v40 ^ 0x728D) >> 8) - (((v40 ^ 0x728D) >> 8) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (((v40 ^ 0x728D) >> 8) ^ 0x7E)], 8) ^ __ROR4__(v57, 16) ^ 0xA0B21EA3;
              v66 = v56 ^ 0x23A66607;
              v67 = v62 ^ 0x1B11ABC3;
              LODWORD(v25) = *&v37[4 * ((v62 ^ 0x1B11ABC3u) >> 16)] - 1793439413;
              v68 = v25 ^ __ROR4__((HIBYTE(v61) - (HIBYTE(v61) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (HIBYTE(v61) ^ 0x7E)], 24) ^ ((4 * v25) | 0xEC42F1E4) ^ __ROR4__(*&v39[4 * BYTE1(v65)] ^ 0x8E3422C2, 8) ^ __ROR4__(((v56 ^ 7) - (v56 ^ 0x2C2E771A)) ^ 0xA1931302 ^ *&v36[4 * (v56 ^ 0x79)], 16);
              v69 = *&v37[4 * ((v56 ^ 0x23A66607u) >> 24)] - 1793439413;
              LODWORD(v25) = *&v37[4 * (BYTE1(v62) ^ 0x86)] - 1793439413;
              v70 = *&v37[4 * BYTE2(v61)] - 1793439413;
              v71 = ((4 * v70) | 0xEC42F1E4) ^ v70 ^ __ROR4__(v69 ^ 0x3A070807 ^ ((4 * v69) | 0xEC42F1E4), 24) ^ __ROR4__(v25 ^ 0x3A070807 ^ ((4 * v25) | 0xEC42F1E4), 8);
              LODWORD(v25) = *(v34 + 4 * v65) + 373779150;
              v72 = v71 ^ __ROR4__(v25 ^ (4 * v25) ^ 0x88589C1A, 16);
              v73 = __ROR4__(__ROR4__(*&v39[4 * HIBYTE(v65)] ^ 0x1512D1F7, 14) ^ 0x9C9BE0DE, 18) ^ 0x63115413;
              if ((v67 & 2) != 0)
              {
                v74 = -2;
              }

              else
              {
                v74 = 2;
              }

              v75 = *&v37[4 * BYTE1(v66)] - 1793439413;
              v76 = *(v34 + 4 * BYTE2(v66)) + 373779150;
              v77 = v76 ^ (4 * v76) ^ __ROR4__((BYTE1(v61) - (BYTE1(v61) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (BYTE1(v61) ^ 0x7E)], 8) ^ __ROR4__((((v74 + v67) ^ 2) - ((v74 + v67) ^ 0x2C2E771F)) ^ 0xA1931302 ^ *&v36[4 * ((v74 + v67) ^ 0x7C)], 16) ^ __ROR4__(v73, 24) ^ 0xC857B797;
              v78 = *(v34 + 4 * BYTE2(v65)) + 373779150;
              v79 = *(v34 + 4 * v61) + 373779150;
              v80 = v78 ^ __ROR4__(*&v39[4 * HIBYTE(v67)] ^ 0x8E3422C2, 24) ^ (4 * v78) ^ __ROR4__(v75 ^ 0x3A070807 ^ ((4 * v75) | 0xEC42F1E4), 8) ^ __ROR4__(v79 ^ (4 * v79) ^ 0x88589C1A, 16) ^ 0x883E752C;
              v81 = v72 ^ 0x397AF7E5;
              v82 = *(v34 + 4 * ((v72 ^ 0x397AF7E5u) >> 24)) + 373779150;
              v83 = *(v34 + 4 * ((v68 ^ 0xCCE65C6C) >> 16)) + 373779150;
              v84 = v83 ^ (4 * v83) ^ __ROR4__(v82 ^ (4 * v82) ^ 0x88589C1A, 24);
              v85 = *(v34 + 4 * v77) + 373779150;
              v86 = v84 ^ __ROR4__(v85 ^ (4 * v85) ^ 0x88589C1A, 16) ^ __ROR4__(*&v36[4 * (BYTE1(v80) ^ 0x7E)] ^ (BYTE1(v80) - (BYTE1(v80) ^ 0x2C2E771D)) ^ 0xA1931302, 8);
              v87 = *&v37[4 * (BYTE1(v68) ^ 0x71)] - 1793439413;
              v88 = v87 ^ 0x3A070807 ^ ((4 * v87) | 0xEC42F1E4);
              v89 = *&v37[4 * v80] - 1793439413;
              v90 = *&v37[4 * HIBYTE(v80)] - 1793439413;
              v91 = *(v34 + 4 * BYTE2(v80)) + 373779150;
              v92 = *(v34 + 4 * BYTE1(v77)) + 373779150;
              v93 = *(v34 + 4 * (v72 ^ 0xF1u)) + 373779150;
              v94 = v91 ^ __ROR4__((((v68 ^ 0xCCE65C6C) >> 24) - (((v68 ^ 0xCCE65C6C) >> 24) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (((v68 ^ 0xCCE65C6C) >> 24) ^ 0x7E)], 24) ^ (4 * v91) ^ __ROR4__(v92 ^ (4 * v92) ^ 0x88589C1A, 8) ^ __ROR4__(v93 ^ (4 * v93) ^ 0x88589C1A, 16) ^ 0x9BC28C49;
              v95 = *(v34 + 4 * BYTE2(v77)) + 373779150;
              v96 = v95 ^ (4 * v95) ^ __ROR4__(*&v39[4 * BYTE1(v81)] ^ 0x8E3422C2, 8) ^ __ROR4__(v90 ^ 0x3A070807 ^ ((4 * v90) | 0xEC42F1E4), 24) ^ __ROR4__(*&v39[4 * (v68 ^ 0x1B)] ^ 0x8E3422C2, 16) ^ 0x7E9EE291;
              v97 = *(v34 + 4 * HIBYTE(v77)) + 373779150;
              v98 = (BYTE2(v81) - (BYTE2(v81) ^ 0x2C2E771D)) ^ *&v36[4 * (BYTE2(v81) ^ 0x7E)] ^ __ROR4__(v97 ^ (4 * v97) ^ 0x88589C1A, 24) ^ __ROR4__(v88, 8) ^ __ROR4__(v89 ^ 0x3A070807 ^ ((4 * v89) | 0xEC42F1E4), 16) ^ 0xBD08884C;
              v99 = *&v37[4 * (v86 ^ 0x6B)] - 1793439413;
              v100 = *&v36[4 * (BYTE2(v96) ^ 0x7E)] ^ __ROR4__(*&v39[4 * HIBYTE(v94)] ^ 0x8E3422C2, 24) ^ __ROR4__(*&v39[4 * BYTE1(v98)] ^ 0x8E3422C2, 8) ^ __ROR4__(v99 ^ 0x3A070807 ^ ((4 * v99) | 0xEC42F1E4), 16) ^ (BYTE2(v96) - (BYTE2(v96) ^ 0x2C2E771D));
              v101 = *&v37[4 * BYTE1(v96)] - 1793439413;
              v102 = *&v39[4 * BYTE2(v94)] ^ __ROR4__((((v86 ^ 0xCAC92B6B) >> 24) - (((v86 ^ 0xCAC92B6B) >> 24) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (((v86 ^ 0xCAC92B6B) >> 24) ^ 0x7E)], 24) ^ __ROR4__(v101 ^ 0x3A070807 ^ ((4 * v101) | 0xEC42F1E4), 8);
              v103 = *(v34 + 4 * v98) + 373779150;
              v104 = v102 ^ __ROR4__(v103 ^ (4 * v103) ^ 0x88589C1A, 16);
              v105 = *&v37[4 * BYTE1(v94)] - 1793439413;
              v106 = *&v37[4 * ((v86 ^ 0xCAC92B6B) >> 16)] - 1793439413;
              v107 = *(v34 + 4 * v96) + 373779150;
              v108 = v106 ^ __ROR4__((HIBYTE(v98) - (HIBYTE(v98) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (HIBYTE(v98) ^ 0x7E)], 24) ^ ((4 * v106) | 0xEC42F1E4) ^ __ROR4__(v105 ^ 0x3A070807 ^ ((4 * v105) | 0xEC42F1E4), 8) ^ __ROR4__(v107 ^ (4 * v107) ^ 0x88589C1A, 16);
              v109 = *&v37[4 * BYTE2(v98)] - 1793439413;
              v110 = v109 ^ __ROR4__(*&v39[4 * HIBYTE(v96)] ^ 0x8E3422C2, 24) ^ ((4 * v109) | 0xEC42F1E4) ^ __ROR4__(*&v39[4 * (BYTE1(v86) ^ 0x5C)] ^ 0x8E3422C2, 8) ^ __ROR4__((v94 - (v94 ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (v94 ^ 0x7E)], 16);
              v111 = v108 ^ 0xB0483ADD;
              v112 = BYTE1(v108) ^ 0x2E;
              v113 = *(v34 + 4 * ((v100 ^ 0x191C371Au) >> 24)) + 373779150;
              v114 = *(v34 + 4 * (BYTE2(v110) ^ 0x50u)) + 373779150;
              v115 = *(v34 + 4 * v112) + 373779150;
              v116 = v114 ^ (4 * v114) ^ __ROR4__(v113 ^ (4 * v113) ^ 0x88589C1A, 24) ^ __ROR4__(*&v39[4 * (v104 ^ 0xFC)] ^ 0x8E3422C2, 16) ^ __ROR4__(v115 ^ (4 * v115) ^ 0x88589C1A, 8);
              v117 = *&v36[4 * (((v100 ^ 0x191C371Au) >> 16) ^ 0x7E)] ^ (((v100 ^ 0x191C371Au) >> 16) - (((v100 ^ 0x191C371Au) >> 16) ^ 0x2C2E771D)) ^ __ROR4__(*&v39[4 * (HIBYTE(v104) ^ 0xB4)] ^ 0x8E3422C2, 24) ^ __ROR4__(*&v39[4 * ((v110 ^ 0x21CD) >> 8)] ^ 0x8E3422C2, 8);
              v118 = *&v37[4 * v111] - 1793439413;
              HIDWORD(v119) = v118 ^ 0x3A070807 ^ ((4 * v118) | 0xEC42F1E4);
              LODWORD(v119) = HIDWORD(v119);
              v120 = ((v119 >> 16) ^ -(v119 >> 16) ^ (v117 - ((v119 >> 16) ^ v117))) + v117;
              v121 = *&v37[4 * ((v100 ^ 0x371A) >> 8)] - 1793439413;
              v122 = ((v100 ^ 0x1A) - (v100 ^ 0x2C2E7707)) ^ 0xA1931302 ^ *&v36[4 * (v100 ^ 0x64)];
              v123 = *&v37[4 * BYTE2(v111)] - 1793439413;
              v124 = *(v34 + 4 * ((v110 ^ 0x484421CD) >> 24)) + 373779150;
              v125 = ((4 * v123) | 0xEC42F1E4) ^ v123 ^ __ROR4__(v124 ^ (4 * v124) ^ 0x88589C1A, 24) ^ __ROR4__(*&v39[4 * ((v104 ^ 0xEBFC) >> 8)] ^ 0x8E3422C2, 8) ^ __ROR4__(v122, 16);
              v126 = *&v37[4 * (BYTE2(v104) ^ 0x93)] - 1793439413;
              v127 = *(v34 + 4 * HIBYTE(v111)) + 373779150;
              v128 = v126 ^ ((4 * v126) | 0xEC42F1E4) ^ __ROR4__(v127 ^ (4 * v127) ^ 0x88589C1A, 24) ^ __ROR4__(((v110 ^ 0xCD) - (v110 ^ 0x2C2E77D0)) ^ 0xA1931302 ^ *&v36[4 * (v110 ^ 0xB3)], 16) ^ __ROR4__(v121 ^ 0x3A070807 ^ ((4 * v121) | 0xEC42F1E4), 8) ^ 0xAF86D759;
              v129 = v116 ^ 0xFBB5CBA5;
              v130 = *&v37[4 * ((v116 ^ 0xFBB5CBA5) >> 24)] - 1793439413;
              v131 = v130 ^ 0x3A070807 ^ ((4 * v130) | 0xEC42F1E4);
              v132 = v125 ^ 0xB4036C24;
              BYTE1(v130) = BYTE1(v120) ^ 0x23;
              v133 = *&v39[4 * (BYTE2(v125) ^ 0x74)] ^ __ROR4__(*&v39[4 * BYTE1(v128)] ^ 0x8E3422C2, 8) ^ __ROR4__(v131, 24) ^ __ROR4__(*&v36[4 * (v120 ^ 0xBF)] ^ ((v120 ^ 0xC1) - (v120 ^ 0x2C2E77DC)) ^ 0xA1931302, 16);
              v134 = *&v36[4 * (((v120 ^ 0xF7AE23C1) >> 24) ^ 0x7E)] ^ (((v120 ^ 0xF7AE23C1) >> 24) - (((v120 ^ 0xF7AE23C1) >> 24) ^ 0x2C2E771D)) ^ 0xA1931302;
              v135 = *&v37[4 * BYTE1(v132)] - 1793439413;
              v136 = BYTE1(v116) ^ 0xBC;
              v137 = *(v34 + 4 * ((v120 ^ 0xF7AE23C1) >> 16)) + 373779150;
              v138 = v137 ^ __ROR4__((HIBYTE(v128) - (HIBYTE(v128) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (HIBYTE(v128) ^ 0x7E)], 24) ^ (4 * v137) ^ __ROR4__(*&v39[4 * v136] ^ 0x8E3422C2, 8);
              v139 = *(v34 + 4 * v132) + 373779150;
              v140 = v138 ^ __ROR4__(v139 ^ (4 * v139) ^ 0x88589C1A, 16);
              v141 = *&v37[4 * BYTE1(v130)] - 1793439413;
              v142 = *&v39[4 * BYTE2(v129)] ^ __ROR4__(v134, 24) ^ __ROR4__(v135 ^ 0x3A070807 ^ ((4 * v135) | 0xEC42F1E4), 8);
              v143 = *(v34 + 4 * v128) + 373779150;
              v144 = v142 ^ __ROR4__(v143 ^ (4 * v143) ^ 0x88589C1A, 16) ^ 0x3D6D0915;
              v145 = *&v37[4 * BYTE2(v128)] - 1793439413;
              v146 = *(v34 + 4 * v129) + 373779150;
              v147 = v145 ^ __ROR4__(*&v39[4 * HIBYTE(v132)] ^ 0x8E3422C2, 24) ^ ((4 * v145) | 0xEC42F1E4) ^ __ROR4__(v141 ^ 0x3A070807 ^ ((4 * v141) | 0xEC42F1E4), 8) ^ __ROR4__(v146 ^ (4 * v146) ^ 0x88589C1A, 16) ^ 0xD8C6D976;
              LOBYTE(v128) = v133 ^ 0xB6;
              v148 = *&v37[4 * ((v133 ^ 0xD71413B6) >> 24)] - 1793439413;
              v149 = v148 ^ 0x3A070807 ^ ((4 * v148) | 0xEC42F1E4);
              v150 = *&v37[4 * v144] - 1793439413;
              v151 = v150 ^ 0x3A070807 ^ ((4 * v150) | 0xEC42F1E4);
              v152 = BYTE2(v133) ^ 0x63;
              v153 = v140 ^ 0x49;
              v154 = v140 ^ 0x3206F63E;
              v155 = HIBYTE(v140) ^ 0x45;
              v156 = *&v37[4 * v147] - 1793439413;
              v157 = v156 ^ 0x3A070807 ^ ((4 * v156) | 0xEC42F1E4);
              v158 = *(v34 + 4 * BYTE2(v144)) + 373779150;
              v159 = *(v34 + 4 * (BYTE1(v133) ^ 7u)) + 373779150;
              v160 = v158 ^ __ROR4__(*&v39[4 * v155] ^ 0x8E3422C2, 24) ^ (4 * v158) ^ __ROR4__(v159 ^ (4 * v159) ^ 0x88589C1A, 8) ^ __ROR4__(v157, 16);
              v161 = *(v34 + 4 * HIBYTE(v147)) + 373779150;
              v162 = *&v36[4 * (BYTE2(v154) ^ 0x7E)] ^ (BYTE2(v154) - (BYTE2(v154) ^ 0x2C2E771D)) ^ __ROR4__(v161 ^ (4 * v161) ^ 0x88589C1A, 24) ^ __ROR4__((BYTE1(v144) - (BYTE1(v144) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (BYTE1(v144) ^ 0x7E)], 8);
              v163 = *&v37[4 * BYTE2(v147)] - 1793439413;
              v164 = v163 ^ __ROR4__(*&v39[4 * BYTE1(v154)] ^ 0x8E3422C2, 8) ^ ((4 * v163) | 0xEC42F1E4) ^ __ROR4__(v149, 24) ^ __ROR4__(v151, 16) ^ 0x6A2B4629;
              v165 = v162 ^ __ROR4__(*&v39[4 * v128] ^ 0x8E3422C2, 16);
              v166 = *&v39[4 * v152] ^ __ROR4__(*&v39[4 * HIBYTE(v144)] ^ 0x8E3422C2, 24) ^ __ROR4__(*&v39[4 * BYTE1(v147)], 8);
              LODWORD(v119) = __ROR4__(*&v39[4 * v153] ^ 0x8E3422C2, 16);
              v167 = v166 ^ v119 ^ 0xB2A51FA;
              v168 = *&v37[4 * ((v166 ^ v119) ^ 0xFA)] - 1793439413;
              v169 = v168 ^ 0x3A070807 ^ ((4 * v168) | 0xEC42F1E4);
              v170 = v165 ^ 0x71F17163;
              v171 = *(v34 + 4 * ((v165 ^ 0x71F17163u) >> 16)) + 373779150;
              v172 = v171 ^ __ROR4__((HIBYTE(v164) - (HIBYTE(v164) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (HIBYTE(v164) ^ 0x7E)], 24) ^ (4 * v171) ^ __ROR4__(*&v39[4 * (BYTE1(v160) ^ 0xB3)] ^ 0x8E3422C2, 8) ^ __ROR4__(v169, 16);
              v173 = *&v37[4 * (BYTE1(v165) ^ 0x5C)] - 1793439413;
              v174 = *(v34 + 4 * (v160 ^ 0x43u)) + 373779150;
              v175 = *&v39[4 * BYTE2(v164)] ^ __ROR4__((HIBYTE(v167) - (HIBYTE(v167) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (HIBYTE(v167) ^ 0x7E)], 24) ^ __ROR4__(v173 ^ 0x3A070807 ^ ((4 * v173) | 0xEC42F1E4), 8) ^ __ROR4__(v174 ^ (4 * v174) ^ 0x88589C1A, 16);
              v176 = *&v37[4 * v170] - 1793439413;
              v177 = *(v34 + 4 * HIBYTE(v170));
              v178 = *&v36[4 * (BYTE2(v167) ^ 0x7E)] ^ (BYTE2(v167) - (BYTE2(v167) ^ 0x2C2E771D)) ^ __ROR4__(((HIBYTE(v160) ^ 0x43) - (HIBYTE(v160) ^ 0x2C2E775E)) ^ 0xA1931302 ^ *&v36[4 * (HIBYTE(v160) ^ 0x3D)], 24) ^ __ROR4__((BYTE1(v164) - (BYTE1(v164) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (BYTE1(v164) ^ 0x7E)], 8) ^ __ROR4__(v176 ^ 0x3A070807 ^ ((4 * v176) | 0xEC42F1E4), 16);
              v179 = *&v36[4 * (BYTE2(v160) ^ 0x80)] ^ ((BYTE2(v160) ^ 0xFE) - (BYTE2(v160) ^ 0x2C2E77E3)) ^ __ROR4__((v177 + 373779150) ^ (4 * (v177 + 373779150)) ^ 0x88589C1A, 24) ^ __ROR4__((BYTE1(v167) - (BYTE1(v167) ^ 0x2C2E771D)) ^ 0xA1931302 ^ *&v36[4 * (BYTE1(v167) ^ 0x7E)], 8) ^ __ROR4__(*&v39[4 * v164] ^ 0x8E3422C2, 16);
              v180 = v175 ^ 0x40ADE4B7;
              v181 = *(&off_101353600 + (v984 ^ 0xEFF68FC0)) - 12;
              v182 = *&v181[2 * ((v172 ^ 0x4B8E46F3u) >> 24)] - 29167;
              LOWORD(v176) = *&v181[2 * (BYTE2(v179) ^ 0x41)] - 29167;
              LOWORD(v164) = *&v181[2 * (BYTE1(v178) ^ 0x87)] - 29167;
              v183 = ((v176 ^ 0x8416 ^ (-29208 * v176)) << 8) ^ ((v182 ^ 0x8416 ^ (-29208 * v182)) << 16);
              v184 = *(&off_101353600 + (v16 + 1785572860));
              HIDWORD(v119) = (*(v184 + 2 * (v175 ^ 0xD2u)) - (v175 ^ 0x3E83)) ^ 0xFFFF9FC7;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              v185 = v183 ^ v164 ^ 0x8416 ^ (-29208 * v164) ^ (v119 >> 8);
              v186 = *(&off_101353600 + (v16 + 1785573831));
              v187 = *&v181[2 * (BYTE2(v172) ^ 0xFB)] - 29167;
              HIDWORD(v119) = (*(v184 + 2 * (v178 ^ 0xD2u)) - (v178 ^ 0x3E83)) ^ 0xFFFF9FC7;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              v188 = v119 >> 8;
              LOWORD(v183) = *&v181[2 * (HIBYTE(v178) ^ 0x1B)];
              v189 = *(&off_101353600 + (v984 ^ 0xEFF68E62));
              HIDWORD(v119) = ((v179 ^ 0x70) - ((2 * (v179 ^ 0x1A349370)) & 0x28) + 11540) ^ 0xFFFFC3D1 ^ *(v189 + 2 * (v179 ^ 0x99u));
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              LODWORD(v184) = ((*(v184 + 2 * (((v172 ^ 0x46F3) >> 8) ^ 0x65u)) - (((v172 ^ 0x46F3) >> 8) ^ 0x3E34)) | (((v183 - 29167) ^ 0x8416 ^ (-29208 * (v183 - 29167))) << 16)) ^ (((*(v184 + 2 * (BYTE2(v180) ^ 0x65u)) - (BYTE2(v180) ^ 0x3E34)) ^ 0x9FC7) << 8) ^ (v119 >> 8);
              HIDWORD(v119) = v172 ^ 0xFFFFEE7C ^ *(v189 + 2 * (v172 ^ 0x50u));
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              v190 = v185 ^ (*(v186 + 2 * ((v179 ^ 0x9370) >> 8)) | ((*(v186 + 2 * HIBYTE(v180)) ^ 0xE0D2) << 16)) ^ ((v187 ^ 0x8416 ^ (-29208 * v187)) << 8) ^ v188;
              v191 = v190 ^ ((*(v186 + 2 * (BYTE2(v178) ^ 0x86u)) ^ 0xE0D2) << 8) ^ (*(v186 + 2 * BYTE1(v180)) | ((((v179 ^ 0x1A349370u) >> 24) ^ 0xEE8F ^ *(v189 + 2 * (((v179 ^ 0x1A349370u) >> 24) ^ 0xA3))) << 16));
              v192 = v191 ^ (v119 >> 8);
              LODWORD(v181) = v192 ^ 0x4ED3102C;
              v193 = v190 ^ v184 ^ 0x51ED1075;
              v194 = v193 ^ v185;
              v195 = v193;
              v196 = v185 ^ v184 ^ 0x7A15E4FB ^ v192;
              v197 = *(&off_101353600 + (v16 + 1785573325)) - 8;
              v198 = *&v197[2 * (BYTE2(v191) ^ 0x5D)];
              v955 = v194 ^ v196;
              v199 = (v198 >> 14) | (4 * v198);
              v200 = ((v198 >> 14) | (4 * v198));
              v201 = *(&off_101353600 + (v16 + 1785572688));
              LODWORD(v184) = *(v201 + 2 * (HIBYTE(v192) ^ 0x48));
              HIDWORD(v119) = ((v184 >> 7) | (v184 << 9)) ^ 0x29BF;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              v202 = *(v201 + 2 * (BYTE1(v191) ^ 0x16u));
              v203 = *&v197[2 * (v192 ^ 0xA2)];
              v976 = v195;
              v967 = v955 ^ ((v199 ^ (v200 >> 7) ^ (v200 >> 4) ^ 0x810B) << 16) ^ ((v119 >> 8) & 0xFF0000FF | ((((v202 >> 7) | (v202 << 9)) ^ 0x29BF) << 8)) ^ (((v203 >> 14) | (4 * v203)) ^ (((v203 >> 14) | (4 * v203)) >> 7) ^ (((v203 >> 14) | (4 * v203)) >> 4)) ^ 0x810B;
              v973 = v967 ^ v195;
              v979 = v196;
              v204 = v967 ^ v195 ^ v196;
              v943 = v181;
              v205 = v204 ^ v181 ^ 0xA5742356;
              v206 = *(v201 + 2 * ((v204 ^ v181) ^ 0x50u));
              v207 = *(v201 + 2 * (((v204 ^ v181) >> 8) ^ 0x25u));
              v208 = ((v206 >> 7) | (v206 << 9)) ^ ((((v207 >> 7) | (v207 << 9)) ^ 0x29BF) << 8);
              v209 = *&v197[2 * (((v204 ^ v181) >> 24) ^ 0x2B)];
              HIDWORD(v119) = ((v209 >> 14) | (4 * v209)) ^ (((v209 >> 14) | (4 * v209)) >> 7) ^ (((v209 >> 14) | (4 * v209)) >> 4) ^ 0xFFFF810B;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              v210 = *(&off_101353600 + (v984 ^ 0xEFF68C32));
              v211 = *(v210 + 2 * (((v204 ^ v181) >> 16) ^ 0x1Cu));
              v212 = v208 ^ ((v211 ^ (16 * v211) ^ 0xA6ED) << 16) ^ (v119 >> 8);
              v932 = v204;
              v981 = v212 ^ v195;
              v970 = v212 ^ v195 ^ v204;
              v213 = v970 ^ 0x6A5D27B ^ v205;
              v214 = *&v197[2 * (BYTE1(v213) ^ 0x84)];
              v215 = *(v210 + 2 * (HIBYTE(v213) ^ 0xA3));
              HIDWORD(v119) = v215 ^ (16 * v215) ^ 0xFFFFA6ED;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              LODWORD(v181) = *(v201 + 2 * (BYTE2(v213) ^ 0x72u));
              LOWORD(v184) = *(v210 + 2 * (v970 ^ 0x7B ^ v205 ^ 0x81u));
              v900 = v212 ^ v967;
              v216 = (v119 >> 8) ^ (v184 ^ (16 * v184)) ^ 0x8F52 ^ ((((v181 >> 7) | (v181 << 9)) ^ 0x29BF) << 16) ^ v212 ^ v967 ^ (((((v214 >> 14) | (4 * v214)) ^ (((v214 >> 14) | (4 * v214)) >> 7) ^ (((v214 >> 14) | (4 * v214)) >> 4)) ^ 0x810B) << 8);
              v960 = v216 ^ v212 ^ v195;
              v935 = v205;
              v217 = v960 ^ 0x214F6868 ^ v205;
              v218 = *(v201 + 2 * (HIBYTE(v217) ^ 0xDB));
              HIDWORD(v119) = ((v218 >> 7) | (v218 << 9)) ^ 0x29BF;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              v219 = *&v197[2 * (((v217 ^ 0xAE9) >> 8) ^ 0x84)];
              v220 = *&v197[2 * (((v217 ^ 0xCB740AE9) >> 16) ^ 0xFA)];
              v221 = *(&off_101353600 + (v16 + 1785572691)) - 4;
              LOWORD(v215) = *&v221[2 * (v217 ^ 0x93)] + 24991;
              v883 = v216;
              v957 = (v215 ^ (16 * v215)) ^ 0xBA90 ^ v216 ^ (v119 >> 8) ^ (((((v219 >> 14) | (4 * v219)) ^ (((v219 >> 14) | (4 * v219)) >> 7) ^ (((v219 >> 14) | (4 * v219)) >> 4)) ^ 0x810B) << 8) ^ ((((v220 >> 14) | (4 * v220)) ^ (((v220 >> 14) | (4 * v220)) >> 7) ^ (((v220 >> 14) | (4 * v220)) >> 4) ^ 0x810B) << 16);
              v880 = v957 ^ 0x27EA93AC ^ v960;
              v953 = v960 ^ 0x214F6868 ^ v970 ^ 0x6A5D27B;
              v222 = v880 ^ 0x924F6868 ^ v953;
              v893 = v217;
              v223 = v222 ^ v217;
              v224 = *(v210 + 2 * (((v222 ^ v217) >> 24) ^ 0x5B));
              HIDWORD(v119) = v224 ^ (16 * v224) ^ 0xFFFFA6ED;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              v225 = v222 ^ v217 ^ 0x16740AE9;
              LOWORD(v205) = *&v221[2 * ((v222 ^ v217) ^ 0x7A)] + 24991;
              v226 = (v119 >> 8) ^ (v205 ^ (16 * v205));
              v227 = *(v201 + 2 * (BYTE2(v225) ^ 6u));
              v228 = *(v201 + 2 * (BYTE1(v225) ^ 6u));
              v229 = v226 ^ ((((v227 >> 7) | (v227 << 9)) ^ 0x29BF) << 16) ^ ((((v228 >> 7) | (v228 << 9)) ^ 0x29BF) << 8) ^ v957 ^ 0x27EA93AC;
              v230 = v880 ^ 0x924F6868 ^ v229;
              v990 = v230 ^ v222 ^ 0x8074B079;
              v231 = v990 ^ v223 ^ 0x33740AE9;
              v232 = *&v221[2 * (BYTE2(v231) ^ 0x93)];
              v886 = v990 ^ v223;
              v233 = *&v197[2 * (((v990 ^ v223) >> 24) ^ 0xC8)];
              LOWORD(v195) = *&v221[2 * (BYTE1(v231) ^ 0x93)] + 24991;
              HIDWORD(v119) = ((v233 >> 14) | (4 * v233)) ^ (((v233 >> 14) | (4 * v233)) >> 7) ^ (((v233 >> 14) | (4 * v233)) >> 4) ^ 0xFFFF810B;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              LOWORD(v216) = *(v210 + 2 * ((v990 ^ v223) ^ 0x81u));
              v872 = v229;
              v234 = (((v195 ^ (16 * v195)) ^ 0xBA90) << 8) ^ (((v232 + 24991) ^ (16 * (v232 + 24991)) ^ 0xBA90) << 16) ^ (v216 ^ (16 * v216)) ^ 0x8150 ^ v229 ^ (v119 >> 8);
              LODWORD(v189) = v234 ^ 0x9D2D ^ v222 ^ 0x16740AE9;
              v235 = v189 ^ v231;
              v236 = *&v221[2 * (((v189 ^ v231) >> 16) ^ 0x93)] + 24991;
              LOWORD(v216) = *&v221[2 * (BYTE1(v235) ^ 0x93)] + 24991;
              v237 = (((v216 ^ (16 * v216)) ^ 0xBA90) << 8) ^ ((v236 ^ (16 * v236) ^ 0xBA90) << 16);
              v238 = *&v221[2 * (HIBYTE(v235) ^ 0xC0)] + 24991;
              HIDWORD(v119) = v238 ^ (16 * v238) ^ 0xFFFFBA90;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              v239 = v235 ^ 0x75000000;
              LOWORD(v235) = *&v221[2 * (v235 ^ 0x93)] + 24991;
              v240 = v237 ^ (v235 ^ (16 * v235)) ^ 0xBA90 ^ (v119 >> 8);
              v241 = v240 ^ v230 ^ v189;
              v945 = v241;
              v242 = v239 ^ v241 ^ 0x6E00BA90;
              v243 = *&v197[2 * (HIBYTE(v242) ^ 0xA0)];
              HIDWORD(v119) = ((v243 >> 14) | (4 * v243)) ^ (((v243 >> 14) | (4 * v243)) >> 7) ^ (((v243 >> 14) | (4 * v243)) >> 4) ^ 0xFFFF810B;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              v244 = *(v201 + 2 * ((v239 ^ v241 ^ 0x90) ^ 6u));
              LOWORD(v229) = (v244 >> 7) | (v244 << 9);
              LOWORD(v233) = *(v210 + 2 * (BYTE1(v242) ^ 0x68u));
              v245 = v242 ^ 0x2E000000;
              LOWORD(v242) = *&v221[2 * (BYTE2(v242) ^ 0x93)] + 24991;
              v965 = v240 ^ v234;
              v246 = v240 ^ v234 ^ (((v233 ^ (16 * v233)) ^ 0xA6ED) << 8) ^ (v229 ^ 0x29BF | (((v242 ^ (16 * v242)) ^ 0xBA90) << 16)) ^ (v119 >> 8);
              v860 = v240 ^ v230;
              v839 = v246 ^ 0xE3009D2D ^ v240 ^ v230;
              v247 = v839 ^ 0x2E00BA90 ^ v241 ^ 0x6E00BA90;
              v855 = v245;
              v248 = *&v197[2 * ((((v247 ^ v245) >> 24) ^ 0x33) - ((2 * (((v247 ^ v245) >> 24) ^ 0x33)) & 0x4E)) + 78];
              v249 = *&v197[2 * ((v247 ^ v245) ^ 0x8E)];
              LODWORD(v197) = *&v221[2 * (((v247 ^ v245) >> 16) ^ 0x93)] + 24991;
              LOWORD(v158) = *&v221[2 * (((v247 ^ v245) >> 8) ^ 0x93)] + 24991;
              HIDWORD(v119) = ((v248 >> 14) | (4 * v248)) ^ (((v248 >> 14) | (4 * v248)) >> 7) ^ (((v248 >> 14) | (4 * v248)) >> 4) ^ 0xFFFF810B;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              LODWORD(v197) = (((v158 ^ (16 * v158)) ^ 0xBA90) << 8) ^ ((v197 ^ (16 * v197) ^ 0xBA90) << 16) ^ v246 ^ 0xE3009D2D ^ (((v249 >> 14) | (4 * v249)) ^ (((v249 >> 14) | (4 * v249)) >> 7) ^ (((v249 >> 14) | (4 * v249)) >> 4)) ^ 0x810B ^ (v119 >> 8);
              v833 = v241 ^ 0x5300BA90 ^ v197;
              v250 = v833 ^ v247 ^ v245;
              v251 = *(v210 + 2 * (HIBYTE(v250) ^ 0x6A));
              LODWORD(v210) = *&v221[2 * (BYTE2(v250) ^ 0x93)] + 24991;
              LOWORD(v220) = *&v221[2 * ((v833 ^ v247 ^ v245) ^ 0x93)] + 24991;
              v903 = v201;
              v252 = *(v201 + 2 * (BYTE1(v250) ^ 6u));
              HIDWORD(v119) = v251 ^ (16 * v251) ^ 0xFFFFA6ED;
              LODWORD(v119) = WORD2(v119) & 0xFF00;
              LODWORD(v201) = (v119 >> 8) ^ ((v210 ^ (16 * v210) ^ 0xBA90) << 16) ^ (v220 ^ (16 * v220)) ^ 0xBA90 ^ ((((v252 >> 7) | (v252 << 9)) ^ 0x29BF) << 8) ^ v197 ^ 0x9A000000;
              v253 = v213 ^ 0x325E48B0;
              v254 = v967 ^ 0x32B2E12B;
              v867 = v247 ^ v245 ^ 0x51D0715;
              v255 = (v957 ^ 0x59A8C756) - v867 - 1403016714;
              v256 = v197 ^ v839 ^ 0x2E00BA90;
              v257 = v230 ^ 0xCD476EB3 ^ v234 ^ 0x9D2D;
              v808 = v256 ^ 0x848F6CDA;
              v852 = v973 ^ 0xDCD9A396;
              v258 = (v973 ^ 0xDCD9A396) - (v256 ^ 0x848F6CDA) - 1884798799;
              v259 = v234 ^ 0xF4DBC072;
              v260 = v246 ^ 0x824B1227;
              v911 = v957 ^ 0x59A8C756;
              v261 = (v246 ^ 0x824B1227) - (v957 ^ 0x59A8C756) + 707996614;
              v262 = v239 ^ 0xBFCF27E1;
              v263 = (v955 ^ 0x9F0A29D8) - 138736401 + (v967 ^ 0x32B2E12B);
              v825 = v247 ^ 0x455D41F7;
              v829 = v258 ^ v263 ^ v197;
              v968 = 1106001885 - (v213 ^ 0x325E48B0) - (v247 ^ 0x455D41F7);
              v930 = v262 ^ v968;
              LODWORD(v197) = (v829 ^ 0x22E99DF3) - (v262 ^ v968) + 1557504941;
              v915 = v247 ^ v981;
              v948 = v247 ^ v981 ^ 0xB0E1E8EF;
              v877 = v230;
              v264 = v255 ^ v230;
              v898 = v976 ^ v261 ^ v948 ^ 0x49666332 ^ v255;
              v265 = (v952 >> 3) ^ 0x3B413B7;
              v958 = v255;
              v938 = v250 ^ 0x2000000;
              v977 = v258 ^ v263;
              v927 = v263 ^ 0x8ED6A99A ^ v230 ^ v880 ^ 0x924F6868 ^ v953 ^ 0x8074B079;
              v925 = v189 ^ 0xC5D49E42 ^ v255;
              v929 = v250 ^ 0xB984897C ^ v258 ^ v263;
              v991 = v265;
              v266 = (*(v914 + 8 * ((*(v914 + 8 * ((*(v914 + 8 * ((*(v914 + 8 * (0xC49DD66 % v265)) + 1974857178) % v265)) + 3265397302) % v265)) + 1491912979) % v265)) + 3787307145) % v265;
              v267 = v223 ^ 0x66140142;
              v268 = v258;
              v269 = v987 ^ 0x6C7ECC16;
              v939 = v201;
              v910 = v256 ^ 0xA000000 ^ v201;
              v988 = v259;
              v985 = v257 + v259;
              v270 = (v257 + v259) ^ 0x9298F31A;
              v950 = v263;
              v889 = v263 ^ v254 ^ v270;
              v891 = v270 ^ v253;
              v271 = v258 ^ v945;
              v974 = v261 ^ v257;
              v923 = v261 ^ v260;
              v896 = v960 ^ 0xF4273779 ^ v258;
              v905 = 2 * (v197 ^ v258 ^ v945);
              v272 = v905 ^ 0xC17AC62E;
              v907 = (((v898 + (v255 ^ v230 ^ 0x4D772066)) ^ 0xF884B5A8) + v896) >> 1;
              v273 = v907 ^ 0x93991963;
              v941 = 2 * (v925 - v927 + v929) - 959815807;
              v274 = v941 ^ 0xFB909435;
              v918 = v880 ^ 0x924F6868 ^ v953 ^ 0x88A22AA6 ^ v258;
              v275 = v261;
              v920 = v267 ^ v261;
              v276 = 0xE578BC94DF3F5FE3;
              v277 = 1783424398;
              v961 = v270;
              v946 = v261 ^ v270;
              v278 = -1;
              v279 = 1783424398;
              v280 = -728118500;
              v281 = 0x704F00A6D499CB1CLL;
              do
              {
                v282 = *(v914 + 8 * v22);
                v283 = 0x4BBD69B3B78DC52FLL * v282;
                *&v2[8 * v22] = v282 ^ 0xEDEDEDEDEDEDEDEDLL;
                v284 = (0x4BBD69B3B78DC52FLL * v282) ^ v276;
                v285 = (v22 + v284) >> (v269 + 5);
                v286 = v22 + v284 - v285;
                v287 = v286 >> 16;
                v288 = (v286 - (v286 >> 16)) >> 8;
                v289 = (v22 - v288 - v287 + v284 - v285) ^ v272;
                v290 = (v22 + 1783424398 - v288 - v287 + v284 - v285) ^ v274;
                v291 = v284 - v285;
                v292 = (v22 - 728118500 - v288 - v287 + v291) ^ v273;
                v293 = (v22 + 0x704F00A6D499CB1CLL - v288 - v287 + v291) ^ v283;
                v294 = (v293 + v22) >> 32;
                v295 = (v293 + v22 - v294) >> 16;
                v296 = (v293 + v22 - v295 - v294) >> 8;
                LODWORD(v283) = v296 + v295 + v294;
                v297 = v22++ - v283;
                v272 = v289 ^ (v297 + v293);
                v274 = v290 ^ (v279 - v283 + v293);
                v276 = v281 + v293 - v296 - v295 - v294;
                v273 = v292 ^ (v280 - v283 + v293);
                ++v278;
                ++v281;
                ++v280;
                ++v279;
              }

              while (v22 < v266);
              v909 = v910 ^ v833;
              v298 = v877 ^ v910 ^ v833 ^ 0x233DA0AD;
              v884 = v968 ^ v883 ^ (v269 + 125667864);
              v870 = v880 ^ v268 ^ 0xDD6768FF;
              v858 = v900 ^ v961 ^ 0x2FF4ACB8;
              v875 = v264 ^ 0x4073F178;
              v864 = v893 ^ v275 ^ 0xE0E6E8E6;
              v850 = v932 ^ v961 ^ v948 ^ 0xE221EBA3;
              v878 = v271 ^ 0xA29CD0D0;
              v299 = v872 ^ 0x1349B066;
              v842 = v968 ^ v852 ^ v268;
              v873 = v948 ^ v988;
              v881 = v958 ^ v867;
              v847 = v950 ^ v935 ^ v948 ^ 0x6A457EA5;
              v837 = v943 ^ v946 ^ v958 ^ 0xA7FB917A;
              v894 = v298;
              v868 = v299 ^ v298;
              v300 = v293 - (((v293 + v278) >> 32) + ((v293 + v278 - ((v293 + v278) >> 32)) >> 16) + ((v293 + v278 - ((v293 + v278 - ((v293 + v278) >> 32)) >> 16) - ((v293 + v278) >> 32)) >> 8)) + v281 - 1;
              v301 = (v269 - 1161362704) ^ 0x3CF752D0;
              do
              {
                v302 = *(v914 + 8 * v22);
                v303 = v302 ^ 0xEDEDEDEDEDEDEDEDLL;
                v302 *= 0x4BBD69B3B78DC52FLL;
                *&v2[8 * v22] = v303;
                v304 = (v302 ^ v300) + v22 - (((v302 ^ v300) + v22) >> 32);
                v305 = v304 - (v304 >> ((v269 - 16) ^ 0x1Bu)) - ((v304 - (v304 >> ((v269 - 16) ^ 0x1Bu))) >> 8);
                LODWORD(v303) = v305 ^ v272;
                v306 = v305 + 1783424398;
                v305 += 0x704F00A6D499CB1CLL;
                v307 = v305 ^ v273;
                v308 = (v305 ^ v302) + v22 - (((v305 ^ v302) + v22) >> 32);
                v309 = v308 - (v308 >> 16) - ((v308 - (v308 >> 16)) >> 8);
                v272 = v303 ^ v309;
                v274 ^= v306 ^ (v309 + 1783424398);
                v300 = v309 + 0x704F00A6D499CB1CLL;
                LODWORD(v22) = v22 + 1;
                v273 = v307 ^ v300;
              }

              while (v991 > v22);
              v310 = 0;
              v311 = 1082240722;
              v312 = v301 - 1781246349;
              v844 = v886 ^ v968 ^ 0x889C8725;
              v853 = v985 ^ v855 ^ 0x8AF13C33;
              v313 = v860 ^ v268 ^ 0xD3D06566;
              v936 = v275;
              v861 = v950 ^ v275 ^ v833 ^ 0x12B830FF;
              v933 = v268;
              v856 = v839 ^ v268 ^ 0x1921D8EA;
              v314 = (v300 ^ 0x951B3460AB1E91F6) - ((v300 ^ 0x951B3460AB1E91F6) >> 28) - (((v300 ^ 0x951B3460AB1E91F6) - ((v300 ^ 0x951B3460AB1E91F6) >> 28)) >> 8);
              v315 = v314 + (v314 >> 7);
              v316 = v315 - 0x680B7C0DBFFB5AD4 + ((v315 - 0x680B7C0DBFFB5AD4) >> 25) + ((v315 - 0x680B7C0DBFFB5AD4 + ((v315 - 0x680B7C0DBFFB5AD4) >> 25)) >> 9);
              v317 = v316 + (v316 >> 2);
              v318 = v317 - 0x1BEADE64D5ACC661 - ((v317 - 0x1BEADE64D5ACC661) >> 26) - ((v317 - 0x1BEADE64D5ACC661 - ((v317 - 0x1BEADE64D5ACC661) >> 26)) >> 9);
              v319 = v318 + (v318 >> 2);
              v320 = v319 + 0x5CB81D3A43DB9FF6 - ((v319 + 0x5CB81D3A43DB9FF6) >> 29) + ((v319 + 0x5CB81D3A43DB9FF6 - ((v319 + 0x5CB81D3A43DB9FF6) >> 29)) >> 15);
              v321 = v320 + (v320 >> 3);
              v322 = v321 - 0x17D1C1C6274131A2 - ((v321 - 0x17D1C1C6274131A2) >> 24) - ((v321 - 0x17D1C1C6274131A2 - ((v321 - 0x17D1C1C6274131A2) >> 24)) >> 15);
              v323 = v322 - (v322 >> 7);
              LODWORD(v315) = v321 ^ v315;
              LODWORD(v317) = v323 ^ v317;
              v324 = (v323 ^ 0x998DE50152CD7334) - ((v323 ^ 0x998DE50152CD7334) >> 28) + (((v323 ^ 0x998DE50152CD7334) - ((v323 ^ 0x998DE50152CD7334) >> 28)) >> 13);
              v325 = v324 + (v324 >> 5);
              v326 = v325 - 0x270675092150BFC5 + ((v325 - 0x270675092150BFC5) >> 27) - ((v325 - 0x270675092150BFC5 + ((v325 - 0x270675092150BFC5) >> 27)) >> 9);
              v327 = v326 - (v326 >> 2);
              v328 = v315 ^ v272 ^ v327;
              v329 = v327 - 0x4CFC17FAFFE21693 - ((v327 - 0x4CFC17FAFFE21693) >> 29) + ((v327 - 0x4CFC17FAFFE21693 - ((v327 - 0x4CFC17FAFFE21693) >> 29)) >> 12);
              v330 = v329 - (v329 >> 8);
              v331 = v330 - 0x32012592DBC29683 - ((v330 - 0x32012592DBC29683) >> 29) - ((v330 - 0x32012592DBC29683 - ((v330 - 0x32012592DBC29683) >> 29)) >> 12);
              v332 = (v331 >> 5) + v331;
              v333 = -398735856;
              v840 = v825 ^ v961;
              v834 = v313 ^ v312;
              v334 = v317 ^ v274 ^ v330;
              v335 = v325 ^ v319 ^ v273 ^ v332;
              v336 = v963[v963[(v963[(v963[9] + 9) & 0xF] + 4) & 0xF] & 0xF] & 0x1F ^ 0x10;
              if (v336 >= 0x10)
              {
                v336 -= 16;
              }

              if (v336 <= 1)
              {
                LOBYTE(v336) = 1;
              }

              v337 = v336;
              v338 = -1;
              v339 = v312 + 205660271;
              v340 = v312 - 62;
              v341 = -398735856;
              do
              {
                v342 = 55922649 * v963[v310];
                v343 = v342 ^ v341;
                v344 = (v343 + v310) >> 16;
                v345 = (v343 + v310 - v344) >> 8;
                v346 = (v343 + v310 - v345 - v344) ^ v328;
                v347 = (v310 + 1082240722 + v343 - v345 - v344) ^ v334;
                v348 = v310 - 2130485852 + v343 - v345 - v344;
                v349 = v348 ^ v335;
                v350 = v348 ^ v342;
                v351 = ((v348 ^ v342) + v310) >> v340;
                v352 = (v348 ^ v342) - v351;
                v353 = ((v348 ^ v342) + v310 - v351) >> 8;
                v328 = v346 ^ (v310 - v353 + v352);
                v334 = v347 ^ (v310 + 1082240722 - v353 + v352);
                v341 = v310++ - 2130485852 - v353 + v352;
                v335 = v349 ^ v341;
                ++v338;
              }

              while (v337 != v310);
              v989 = v2;
              v354 = 0;
              v355 = -1296315518;
              v356 = 2164481444;
              v830 = v829 ^ 0x536CB87C;
              v826 = v950 ^ v953 ^ 0xD40C7E0E;
              v822 = v968 ^ v970 ^ (v339 - 1049835563);
              v357 = v337 - 1;
              v358 = v337 + 1657447235;
              v359 = v337 - 1250876521;
              v360 = v337 - 1296315518;
              v361 = v337 + 528348141;
              v362 = v310 - 2130485852 + v352 - ((v350 + v338 - v351) >> 8) - 1;
              v971 = v339 + 1493701989;
              v363 = v339 + 75;
              v364 = v963;
              v365 = 1082240722;
              v366 = 2164481444;
              v367 = v337;
              v368 = -1250876521;
              v369 = 1657447235;
              do
              {
                v370 = 55922649 * v364[v337];
                v371 = v370 ^ v362;
                v372 = (v371 + v367) >> 16;
                v373 = v337 + v354 - v372;
                v374 = v371 - ((v373 + v371) >> v363);
                v375 = (v373 + v374) ^ v328;
                v376 = (v337 + v365 - v372 + v374) ^ v334;
                v377 = v337 + v366 - v372 + v374;
                v378 = v377 ^ v335;
                v379 = v377 ^ v370;
                v380 = (v379 + v367) >> 16;
                v381 = (v379 + v367 - v380) >> 8;
                v328 = v375 ^ (v337 + v354 + v379 - v381 - v380);
                v334 = v376 ^ (v337 + v365 + v379 - v381 - v380);
                v362 = v337 + v366 + v379 - v381 - v380;
                v335 = v378 ^ v362;
                ++v354;
                ++v355;
                ++v357;
                ++v360;
                ++v361;
                ++v369;
                ++v358;
                ++v368;
                ++v359;
                ++v367;
                ++v366;
                ++v365;
                ++v364;
              }

              while ((v337 + v354 - 1) < 0xF);
              v382 = 0;
              v814 = v981 ^ v968 ^ 0x2013A384;
              v383 = (v379 + v357) >> 16;
              v384 = (v379 + v357 - v383) >> 8;
              v385 = (v379 + v361 - v384 - v383) >> 9;
              v386 = v379 + ((v379 + v361 - v385 - v384 - v383) >> 6);
              v387 = v384 + v383 + v385;
              v388 = (v386 - v387 + v361) ^ v328;
              v389 = v386 + ((v386 + v360 - v385 - v384 - v383) >> 13);
              v817 = v961 ^ v911;
              v390 = v389 + ((v389 - v387 + v360) >> (v971 - 28));
              v391 = (v337 - v384 - v383 + v355 + v390 - v385) ^ v334;
              v392 = (v390 + v358 - v385 - v384 - v383) >> 9;
              v393 = (v390 + v358 - v392 - v385 - v384 - v383) >> 3;
              v394 = v337 + v369 + v390 - v393 - v392 - v385 - v384 - v383;
              v395 = v390 + v359;
              v396 = (v395 - v393 - v392 - v385 - v384 - v383) >> 9;
              v397 = v337 + v368 + v390 - ((v395 - v396 - v393 - v392 - v385 - v384 - v383) >> 7) - v396 - v393 - v392 - v385 - v384 - v383;
              v398 = (v397 ^ 0xF5644B21) + ((v397 ^ 0xF5644B21) >> 10) + (((v397 ^ 0xF5644B21) + ((v397 ^ 0xF5644B21) >> 10)) >> 6);
              v399 = v398 - 593821843;
              v400 = v391 ^ v398;
              v401 = v399 + (v399 >> 8) - ((v399 + (v399 >> 8)) >> 5);
              v402 = v401 - 1808427407 + ((v401 - 1808427407) >> 12) - ((v401 - 1808427407 + ((v401 - 1808427407) >> 12)) >> 3);
              v403 = v388 ^ v397 ^ v402;
              v404 = v402 - 1759413684 + ((v402 - 1759413684) >> 13) - ((v402 - 1759413684 + ((v402 - 1759413684) >> 13)) >> 6);
              v405 = v400 ^ v404;
              v887 = v394 ^ v335 ^ v401 ^ ((v404 ^ 0x11B14AA4) - ((v404 ^ 0x11B14AA4) >> 9) - (((v404 ^ 0x11B14AA4) - ((v404 ^ 0x11B14AA4) >> 9)) >> 8));
              v406 = -(v887 ^ 6);
              v912 = (v887 ^ 6) & 7;
              if (((v887 ^ 6) & 7) != 0)
              {
                v407 = 255;
              }

              else
              {
                v407 = 0;
              }

              v954 = v406 & 7;
              v408 = (v407 << (v406 & 7));
              v982 = 16843009 * v408;
              if (((v887 ^ 6) & 7) != 0)
              {
                v409 = v408 ^ 0xFF;
              }

              else
              {
                v409 = 0;
              }

              v410 = v403 ^ 0x11 ^ HIBYTE(v403) ^ ((v403 ^ 0xE611) >> 8) ^ ((v403 ^ 0xE796E611) >> 16) ^ 0xAA;
              v944 = v405;
              v411 = v989;
              HIDWORD(v412) = ((269488128 * v410) | ((16843009 * v410) >> 20)) ^ 0x9F514FFD;
              LODWORD(v412) = HIDWORD(v412);
              v901 = v412 >> 12;
              v413 = v905 ^ 0x6A1D119C;
              v414 = v941 ^ 0x50F74387;
              v415 = v907 ^ 0x38FECED1;
              v908 = (16843009 * (v405 ^ 0x95 ^ ((v405 ^ 0x6595) >> 8) ^ ((v405 ^ 0x3A8E6595) >> 16) ^ HIBYTE(v405) ^ 0x50)) ^ 0x6A6A6A6A;
              v416 = -1;
              v417 = (v971 + 910706356);
              v418 = 0x704F00A6D499CB1CLL;
              v419 = 0xE578BC94DF3F5FE3;
              do
              {
                v420 = 0x4BBD69B3B78DC52FLL * (*&v411[8 * v382] ^ (v417 - 0x12121212304445E9));
                v421 = v420 ^ v419;
                v422 = (v420 ^ v419) + v382;
                v423 = HIDWORD(v422);
                v424 = (v422 - HIDWORD(v422)) >> 16;
                v425 = (v422 - v424 - HIDWORD(v422)) >> 8;
                v426 = v422 - v425 - v424 - HIDWORD(v422);
                LODWORD(v423) = v424 + v423;
                LODWORD(v424) = v382;
                v427 = (v382 - v423 - v425 + v421) ^ v413;
                v428 = ((2 * v426) & 0x704F00A6D499CB1CLL) + (v426 ^ 0xB82780536A4CE58ELL);
                v429 = v428 ^ v414;
                v428 -= 0x47D87FAC95B31A72;
                LODWORD(v423) = v428 ^ v415;
                v430 = v428 ^ v420;
                v431 = (v428 ^ v420) + v382;
                v432 = HIDWORD(v431);
                v433 = (v431 - HIDWORD(v431)) >> 16;
                v434 = (v431 - v433 - HIDWORD(v431)) >> 8;
                LODWORD(v425) = v434 + v433 + v432;
                v413 = v427 ^ (v382++ - v425 + v430);
                v414 = v429 ^ (v277 - v425 + v430);
                v419 = v418 + v430 - v434 - v433 - v432;
                v415 = v423 ^ (v424 - 728118500 + v430 - v434 - v433 - v432);
                v411 = v989;
                ++v416;
                ++v418;
                ++v277;
              }

              while (v382 < ((*&v989[8 * (((*&v989[8 * (((*&v989[8 * (((*&v989[8 * (0x504E0C1F % v991)] ^ 0xEDEDEDEDEDEDEDEDLL) + 787275983) % v991)] ^ 0xEDEDEDEDEDEDEDEDLL) + 840561434) % v991)] ^ 0xEDEDEDEDEDEDEDEDLL) + 3462819767u) % v991)] ^ 0xEDEDEDEDEDEDEDEDLL) + 3568016520u) % v991);
              v812 = v965 ^ v958 ^ 0xADA452CA;
              v435 = v409 & v403;
              v805 = v944 ^ 0xE070449;
              v942 = v982 ^ ~((1291845632 * v408) & v944);
              v436 = v430 + v416;
              v437 = v430 - (HIDWORD(v436) + ((v436 - HIDWORD(v436)) >> 16) + ((v436 - ((v436 - HIDWORD(v436)) >> 16) - HIDWORD(v436)) >> 8)) + v418 - 1;
              v438 = v963;
              do
              {
                v439 = 0x4BBD69B3B78DC52FLL * (*&v989[8 * v382] ^ 0xEDEDEDEDEDEDEDEDLL);
                v440 = (v439 ^ v437) + v382 - (((v439 ^ v437) + v382) >> 32);
                v441 = v440 - (v440 >> ((((v971 - 76) ^ 0xA1) + 37) ^ 0x8Cu)) - ((v440 - (v440 >> ((((v971 - 76) ^ 0xA1) + 37) ^ 0x8Cu))) >> 8);
                v442 = v441 ^ v413;
                v443 = (v441 + 1783424398) ^ v414;
                v441 += 0x704F00A6D499CB1CLL;
                v444 = v441 ^ v415;
                v445 = (v441 ^ v439) + v382 - (((v441 ^ v439) + v382) >> 32);
                LODWORD(v382) = v382 + 1;
                v446 = v445 - (v445 >> 16) - ((v445 - (v445 >> 16)) >> 8);
                v413 = v442 ^ v446;
                v414 = v443 ^ (v446 + 1783424398);
                v437 = v446 + 0x704F00A6D499CB1CLL;
                v415 = v444 ^ v437;
              }

              while (v991 > v382);
              v447 = 0;
              v820 = v403 & 0x7F ^ 0xCBE12169 ^ v417 ^ 0xD5D312A1;
              v906 = 16843009 * v820;
              v448 = (v437 ^ ((v417 ^ 0xD5D312A1) + 695143435) ^ 0x951B34605E4EBC74) - ((v437 ^ ((v417 ^ 0xD5D312A1) + 695143435) ^ 0x951B34605E4EBC74) >> 28);
              v992 = v403 ^ 0x226DC900;
              v449 = (((v448 - (v448 >> 8)) >> 7) ^ (v448 - (v448 >> 8))) + 2 * (((v448 - (v448 >> 8)) >> 7) & (v448 - (v448 >> 8)));
              v450 = v449 - 0x680B7C0DBFFB5AD4 + ((v449 - 0x680B7C0DBFFB5AD4) >> 25) + ((v449 - 0x680B7C0DBFFB5AD4 + ((v449 - 0x680B7C0DBFFB5AD4) >> 25)) >> 9);
              v451 = v450 + (v450 >> 2);
              v452 = v451 - 0x1BEADE64D5ACC661 - ((v451 - 0x1BEADE64D5ACC661) >> 26) - ((v451 - 0x1BEADE64D5ACC661 - ((v451 - 0x1BEADE64D5ACC661) >> 26)) >> 9);
              v453 = v452 + (v452 >> 2);
              v454 = v453 + 0x5CB81D3A43DB9FF6 - ((v453 + 0x5CB81D3A43DB9FF6) >> 29) + ((v453 + 0x5CB81D3A43DB9FF6 - ((v453 + 0x5CB81D3A43DB9FF6) >> 29)) >> 15);
              v455 = v454 + (v454 >> 3);
              v456 = v455 - 0x17D1C1C6274131A2 - ((v455 - 0x17D1C1C6274131A2) >> 24) - ((v455 - 0x17D1C1C6274131A2 - ((v455 - 0x17D1C1C6274131A2) >> 24)) >> 15);
              v457 = v456 - (v456 >> 7);
              LODWORD(v449) = v455 ^ v449;
              LODWORD(v451) = v457 ^ v451;
              v458 = (v457 ^ 0x998DE50152CD7334) - ((v457 ^ 0x998DE50152CD7334) >> 28) + (((v457 ^ 0x998DE50152CD7334) - ((v457 ^ 0x998DE50152CD7334) >> 28)) >> 13);
              v459 = v458 + (v458 >> 5);
              v460 = v459 - 0x270675092150BFC5 + ((v459 - 0x270675092150BFC5) >> 27) - ((v459 - 0x270675092150BFC5 + ((v459 - 0x270675092150BFC5) >> 27)) >> 9);
              v461 = v460 - (v460 >> 2);
              v462 = v461 - 0x4CFC17FAFFE21693 - ((v461 - 0x4CFC17FAFFE21693) >> 29) + ((v461 - 0x4CFC17FAFFE21693 - ((v461 - 0x4CFC17FAFFE21693) >> 29)) >> 12);
              v463 = v449 ^ v413 ^ v461;
              v464 = v462 - (v462 >> 8);
              v465 = v451 ^ v414 ^ v464;
              v466 = v464 - 0x32012592DBC29683 - ((v464 - 0x32012592DBC29683) >> 29) - ((v464 - 0x32012592DBC29683 - ((v464 - 0x32012592DBC29683) >> 29)) >> 12);
              v467 = v459 ^ v453 ^ v415 ^ ((v466 >> 5) + v466);
              if (((v963[(v963[(v963[(v963[12] + 3) & 0xF] + 12) & 0xF] + 5) & 0xF] + 2) & 0xE) != 0)
              {
                v468 = (v963[(v963[(v963[(v963[12] + 3) & 0xF] + 12) & 0xF] + 5) & 0xF] + 2) & 0xF;
              }

              else
              {
                v468 = 1;
              }

              v469 = -1;
              v470 = (v417 ^ 0xD5D312A1) + 1722121641;
              do
              {
                v471 = 55922649 * v963[v447];
                v472 = v471 ^ v333;
                v473 = (v472 + v447) >> 16;
                v474 = (v472 + v447 - v473) >> 8;
                v475 = (v472 + v447 - v474 - v473) ^ v463;
                v476 = (v447 + 1082240722 + v472 - v474 - v473) ^ v465;
                v477 = v447 - 2130485852;
                v478 = v447 - 2130485852 + v472 - v474 - v473;
                v479 = v478 ^ v467;
                v480 = v478 ^ v471;
                v481 = (v480 + v447) >> 16;
                v482 = (v480 + v447 - v481) >> 8;
                v483 = v480 - v482 - v481;
                v463 = v475 ^ (v447 + v483);
                v465 = v476 ^ (v447++ + (((v417 ^ 0xD5D312A1) + 1722121641) ^ 0x720731F2) + v480 - v482 - v481);
                v333 = v477 + v483;
                v467 = v479 ^ (v477 + v483);
                ++v469;
              }

              while (v468 != v447);
              v484 = 0;
              v966 = v435 ^ v982;
              v485 = v468 - 1296315518;
              v486 = v468 + 528348141;
              v487 = v468 - 1;
              v488 = v468 + 1657447235;
              v489 = v468 - 1250876521;
              v490 = v447 - 2130485852 + v480 - ((v480 + v469 - ((v480 + v469) >> 16)) >> 8) - ((v480 + v469) >> 16) - 1;
              v491 = -1657447235;
              v492 = 1250876521;
              v493 = 1296315518;
              v494 = -528348141;
              v495 = v470 ^ 0x878BD6E8;
              v496 = v470 ^ 0x720731F2;
              v497 = v468;
              do
              {
                v498 = 55922649 * v438[v468];
                v499 = v498 ^ v490;
                v500 = (v498 ^ v490) + v497;
                v501 = HIWORD(v500);
                v502 = (v500 - HIWORD(v500)) >> 8;
                v503 = v468 + v484 - v502 - v501;
                v504 = (v503 + v499) ^ v463;
                v505 = (v503 + v496 + v499) ^ v465;
                v506 = v468 + v356 + v499 - v502 - v501;
                v507 = v506 ^ v467;
                v508 = v506 ^ v498;
                v509 = (v508 + v497) >> 16;
                v510 = (v508 + v497 - v509) >> 8;
                v463 = v504 ^ (v468 + v484 + v508 - v510 - v509);
                v465 = v505 ^ (v468 + v311 + v508 - v510 - v509);
                v490 = v468 + v356 + v508 - v510 - v509;
                v467 = v507 ^ v490;
                ++v485;
                ++v486;
                ++v487;
                ++v488;
                --v491;
                ++v489;
                --v492;
                --v493;
                --v494;
                ++v497;
                ++v356;
                ++v311;
                ++v484;
                ++v438;
              }

              while (v468 + v484 != 16);
              v511 = 0;
              v512 = (v495 - 1633355848) | 0xAC001200;
              v513 = v979 ^ v985 ^ v977 ^ 0xDA5A8086;
              v514 = v508 + v487;
              v515 = (v508 + v487) >> 16;
              v516 = (v514 - v515) >> 8;
              v517 = v508 - ((v468 + v508 - v516 - v515 - v494) >> (v512 ^ 0x89));
              v518 = (v517 + v486 - v516 - v515) >> 6;
              v519 = (v468 + v517 + v518 - v516 - v515 - v494) ^ v463;
              v520 = v517 + ((v517 + v518 + v485 + ((v517 + v518 + v485 - v516 - v515) >> 13) - v516 - v515) >> 6) + ((v517 + v518 + v485 - v516 - v515) >> 13) + v518;
              v521 = (v468 + v520 - v516 - v515 - v493) ^ v465;
              v522 = v520 + v488;
              v523 = (v520 + v488 - v516 - v515) >> 9;
              v524 = (v522 - v523 - v516 - v515) >> 3;
              v525 = v468 + v520 - v524 - v523 - v516 - v515 - v491;
              v526 = v520 + v489;
              v527 = (v526 - v524 - v523 - v516 - v515) >> 9;
              v528 = v468 + v520 - ((v526 - v527 - v524 - v523 - v516 - v515) >> 7) - v527 - v524 - v523 - v516 - v515 - v492;
              v529 = v519 ^ v528;
              v530 = (v528 ^ 0xF5644B21) + ((v528 ^ 0xF5644B21) >> 10) + (((v528 ^ 0xF5644B21) + ((v528 ^ 0xF5644B21) >> 10)) >> 6);
              v531 = v521 ^ v530;
              v532 = v530 - 593821843 + ((v530 - 593821843) >> 8) - ((v530 - 593821843 + ((v530 - 593821843) >> 8)) >> 5);
              v533 = v532 - 1808427407 + ((v532 - 1808427407) >> 12) - ((v532 - 1808427407 + ((v532 - 1808427407) >> 12)) >> 3);
              v534 = v529 ^ v533;
              v535 = v533 - 1759413684 + ((v533 - 1759413684) >> 13) - ((v533 - 1759413684 + ((v533 - 1759413684) >> 13)) >> 6);
              v536 = v531 ^ v535;
              v537 = v525 ^ v467 ^ v532 ^ ((v535 ^ 0x11B14AA4) - ((v535 ^ 0x11B14AA4) >> 9) - (((v535 ^ 0x11B14AA4) - ((v535 ^ 0x11B14AA4) >> 9)) >> 8));
              v811 = v534 & 0x7F ^ 0x2C;
              v986 = 16843009 * v811;
              v983 = v537 & 7 ^ 4;
              v538 = -v983;
              if ((v537 & 7) == 4)
              {
                v539 = 0;
              }

              else
              {
                v539 = 255;
              }

              v980 = v538 & 7;
              v540 = v539 << (v538 & 7);
              v541 = 16843009 * v540;
              v542 = (-1761607680 * v540) & v536;
              if ((v537 & 7) == 4)
              {
                v543 = 0;
              }

              else
              {
                v543 = ~v540;
              }

              v978 = v534 & v543 ^ v541;
              v544 = v974 + 900995798;
              v975 = v541 ^ ~v542;
              v545 = v512 - 1063353204;
              do
              {
                v546 = (*(*(&off_101353600 + (v512 ^ 0xFFB25155)) + (v511 ^ 0x60u) - 3) + 103155319) ^ 0x6D9F1F03;
                v547 = (((((v511 & (16843009 * v820)) << (v512 - 127)) ^ v511) << v912) ^ v536 ^ 0x95 ^ ((v536 ^ 0x6595) >> 8) ^ ((v536 ^ 0x3A8E6595) >> 16) ^ HIBYTE(v536) ^ 0x3A ^ v534 ^ 0x11 ^ ((v534 ^ 0xE796E611) >> 16) ^ ((v534 ^ 0xE611) >> 8) ^ HIBYTE(v534) ^ 0xE7 ^ (((((v511 & v820) << (v512 - 127)) ^ v511) & v966) >> v980));
                *(v20 + 4 * v547) = v805 ^ v992 ^ ((((v546 ^ (2 * (v546 & v986))) & v975) << v983) + (((v546 ^ (2 * (v546 & v986))) & v978) >> v954));
                v548 = *(v903 + 2 * (v511++ ^ 6u));
                *(v913 + 4 * v547) = v805 ^ v992 ^ 0x29BF ^ ((v548 >> 7) | (v548 << 9));
              }

              while (v511 != 256);
              v549 = v946 ^ v808 ^ v403 ^ v534;
              v904 = (16843009 * (v536 ^ 0x95 ^ ((v536 ^ 0x6595) >> 8) ^ ((v536 ^ 0x3A8E6595) >> 16) ^ HIBYTE(v536) ^ 0xBB)) ^ 0x81818181 ^ (16843009 * (v534 ^ 0x11 ^ ((v534 ^ 0xE796E611) >> 16) ^ ((v534 ^ 0xE611) >> 8) ^ HIBYTE(v534) ^ 0x86)) ^ 0x61616161;
              v550 = v544 + 554185501 * (v536 ^ v944);
              v902 = v901 ^ 0xB294B859;
              v972 = v545 ^ 0x341FA2E0;
              v551 = v955 ^ v961 ^ v915 ^ v933 ^ v887 ^ v537 ^ v545 ^ 0x44DCCE89;
              v947 = v898 ^ (2 * (v986 & v898));
              v888 = (((v551 ^ (2 * (v551 & v906))) & v978) >> v954) + (((v551 ^ (2 * (v551 & v906))) & v942) << v983);
              v809 = v513 ^ (2 * (v986 & v513));
              v792 = (((v889 ^ (2 * (v906 & v889))) & v966) >> v954) | (((v889 ^ (2 * (v906 & v889))) & v942) << v912);
              v916 = ((v975 & (v847 ^ (2 * (v906 & v847)))) << v983) + ((v978 & (v847 ^ (2 * (v906 & v847)))) >> v980);
              v552 = v822 ^ (2 * (v986 & v822));
              v823 = ((v978 & (v814 ^ (2 * (v986 & v814)))) >> v980) | (((v814 ^ (2 * (v986 & v814))) & v942) << v912);
              v815 = ((v975 & v552) << v912) + ((v978 & v552) >> v954);
              v786 = (((v891 ^ (2 * (v906 & v891))) & v966) >> v980) + (((v891 ^ (2 * (v906 & v891))) & v942) << v983);
              v806 = ((v975 & (v884 ^ (2 * (v986 & v884)))) << v983) + (((v884 ^ (2 * (v986 & v884))) & v966) >> v954);
              v885 = ((v978 & (v896 ^ (2 * (v906 & v896)))) >> v980) + (((v896 ^ (2 * (v906 & v896))) & v942) << v912);
              v784 = (((v826 ^ (2 * (v986 & v826))) & v966) >> v954) + (((v826 ^ (2 * (v986 & v826))) & v942) << v912);
              v789 = ((v975 & (v864 ^ (2 * (v906 & v864)))) << v983) + ((v978 & (v864 ^ (2 * (v906 & v864)))) >> v980);
              v553 = v817 ^ (2 * (v906 & v817));
              v827 = ((v978 & (v870 ^ (2 * (v986 & v870)))) >> v980) + (((v870 ^ (2 * (v986 & v870))) & v942) << v983);
              v794 = ((v975 & (v920 ^ (2 * (v986 & v920)))) << v912) | ((v978 & (v920 ^ (2 * (v986 & v920)))) >> v980);
              v554 = v875 ^ (2 * (v906 & v875));
              v797 = ((v975 & (v927 ^ (2 * (v986 & v927)))) << v983) | ((v978 & (v927 ^ (2 * (v986 & v927)))) >> v980);
              v799 = v844 ^ (2 * (v906 & v844));
              v818 = v873 ^ (2 * (v906 & v873));
              v802 = ((v975 & (v550 ^ (2 * (v550 & v986)))) << v983) | ((v978 & (v550 ^ (2 * (v550 & v986)))) >> v980);
              v800 = v925 ^ (2 * (v986 & v925));
              v926 = v930 ^ (2 * (v906 & v930));
              v921 = v834 ^ (2 * (v906 & v834));
              v931 = (((v878 ^ (2 * (v986 & v878))) & v966) >> v980) | (((v878 ^ (2 * (v986 & v878))) & v942) << v912);
              v928 = ((v975 & (v853 ^ (2 * (v906 & v853)))) << v983) | ((v978 & (v853 ^ (2 * (v906 & v853)))) >> v954);
              v848 = ((v975 & (v923 ^ (2 * (v906 & v923)))) << v912) + ((v978 & (v923 ^ (2 * (v906 & v923)))) >> v980);
              v845 = v881 ^ (2 * (v986 & v881));
              v924 = ((v975 & (v830 ^ (2 * (v906 & v830)))) << v983) | (((v830 ^ (2 * (v906 & v830))) & v966) >> v980);
              v865 = ((v975 & (v861 ^ (2 * (v906 & v861)))) << v983) + ((v978 & (v861 ^ (2 * (v906 & v861)))) >> v980);
              v862 = ((v975 & (v894 ^ (2 * (v986 & v894)))) << v912) | (((v894 ^ (2 * (v986 & v894))) & v966) >> v954);
              v899 = ((v978 & (v948 ^ (2 * (v906 & v948)))) >> v980) + (((v948 ^ (2 * (v906 & v948))) & v942) << v983);
              v897 = ((v975 & (v950 ^ (2 * (v906 & v950)))) << v983) ^ ((v978 & (v950 ^ (2 * (v906 & v950)))) >> v954);
              v951 = v968 ^ (2 * (v986 & v968));
              v949 = v933 ^ (2 * (v986 & v933));
              v895 = ((v975 & (v958 ^ (2 * (v906 & v958)))) << v912) + ((v978 & (v958 ^ (2 * (v906 & v958)))) >> v954);
              v892 = ((v978 & (v961 ^ (2 * (v986 & v961)))) >> v980) ^ (((v961 ^ (2 * (v986 & v961))) & v942) << v983);
              v890 = ((v975 & (v936 ^ (2 * (v906 & v936)))) << v912) ^ (((v936 ^ (2 * (v906 & v936))) & v966) >> v954);
              v555 = *(&off_101353600 + (v512 + 5090999)) - 12;
              v556 = v555[v963[1] ^ 0x30];
              v557 = v555[v963[6] ^ 0x75];
              v558 = v555[v963[4] ^ 0xF5];
              v559 = ((((v557 >> 6) | (4 * v557)) ^ 0x94 ^ ((8 * ((v557 >> 6) | (4 * v557))) | 0x90)) << 8) | ((((v558 >> 6) | (4 * v558)) ^ ((8 * ((v558 >> 6) | (4 * v558))) | 0x90) ^ 0xE) << 24);
              v560 = *(&off_101353600 + (v545 ^ 0xC050D942)) - 4;
              v561 = *(&off_101353600 + (v545 ^ 0xC050DA53)) - 12;
              v562 = v555[v963[9] ^ 0x1BLL];
              v563 = (v963[11] ^ 0x8C ^ v561[v963[11] ^ 0xBELL]) & 0xFF00FFFF | ((((v562 >> 6) | (4 * v562)) ^ 0x64 ^ ((8 * ((v562 >> 6) | (4 * v562))) | 0x90)) << 16) | ((v963[8] ^ v560[v963[8] ^ 0x5BLL] ^ 4) << 24);
              v564 = v555[(v963[3] - 2 * (v963[3] & 0xF4u) + 244) ^ 0xB0];
              v565 = ((((v556 >> 6) | (4 * v556)) ^ 0x7D ^ ((8 * ((v556 >> 6) | (4 * v556))) | 0x90)) << 16) | ((*v963 ^ 0xA0 ^ v560[*v963 ^ 0xCCLL]) << 24) | ((8 * ((v564 >> 6) | (4 * v564))) | 0x90) ^ ((v564 >> 6) | (4 * v564));
              v876 = v561;
              v879 = v560;
              v566 = v963[7] ^ v561[v963[7] ^ 0x3ALL] ^ 8 | v559 | ((v963[5] ^ 0x84 ^ v560[v963[5] ^ 0xD6]) << 16);
              v567 = v963[10] ^ 0x55 ^ v561[v963[10] ^ 0xADLL];
              v874 = *(&off_101353600 + (v512 + 5091408)) - 12;
              v568 = v555[v963[15] ^ 0x12];
              LODWORD(v560) = ((v963[14] ^ 0x6A ^ v561[v963[14] ^ 0xF7]) << 8) | ((v963[13] ^ 0x6B ^ v561[v963[13] ^ 0x37]) << 16) | ((((v874[v963[12] ^ 0x63] >> 6) | (4 * v874[v963[12] ^ 0x63])) ^ 0x6A) << 24) | ((8 * ((v568 >> 6) | (4 * v568))) | 0x90) ^ ((v568 >> 6) | (4 * v568));
              v882 = v555;
              v569 = (v555[v963[2] ^ 0x32] >> 6) | (4 * v555[v963[2] ^ 0x32]);
              v570 = (v565 & 0xFFFF00FF | ((v569 ^ 0x13 ^ ((8 * v569) | 0x90)) << 8)) ^ 0xB3;
              v571 = v566 ^ 0xF9 ^ (2 * ((v566 ^ 0xF9) & v986));
              v956 = (((v570 ^ (2 * (v570 & v906))) & v942) << v983) | (((v570 ^ (2 * (v570 & v906))) & v966) >> v980);
              v964 = ((v571 & v975) << v912) ^ ((v571 & v978) >> v954);
              v572 = (v563 | (v567 << 8)) ^ 0xBE ^ (2 * (((v563 | (v567 << 8)) ^ 0xBE) & v906));
              v959 = ((v572 & v966) >> v954) ^ ((v572 & v975) << v983);
              LODWORD(v560) = v560 ^ 0x2E ^ (2 * ((v560 ^ 0x2E) & v986));
              v962 = ((v560 & v942) << v912) | ((v560 & v978) >> v980);
              LODWORD(v560) = 33686018 * v820;
              v573 = 33686018 * v811;
              v937 = ((v975 & (v560 & 0x9F876292 ^ 0x4FC3B149)) << v983) | ((v978 & (v560 & 0x9F876292 ^ 0x4FC3B149)) >> v954);
              v835 = (((v560 & 0xFB2DC482 ^ 0xFD96E241) & v942) << v983) ^ (((v560 & 0xFB2DC482 ^ 0xFD96E241) & v966) >> v954);
              v831 = ((v975 & (v573 & 0xD48AFD4A ^ 0x6A457EA5)) << v912) + ((v978 & (v573 & 0xD48AFD4A ^ 0x6A457EA5)) >> v980);
              v934 = (((v560 & 0x8EAB91EA ^ 0x4755C8F5) & v942) << v983) ^ ((((v850 ^ (2 * (v986 & v850))) & v942) << v912) + (((v850 ^ (2 * (v986 & v850))) & v966) >> v954)) ^ ((v978 & (v560 & 0x8EAB91EA ^ 0x4755C8F5)) >> v954);
              v793 = (((v573 & 0x2AB0E50E ^ 0x15587287) & v966) >> v980) ^ v792 ^ ((v975 & (v573 & 0x2AB0E50E ^ 0x15587287)) << v912);
              v783 = ((v975 & (v560 & 0xCC3C2D56 ^ 0x661E16AB)) << v912) | (((v560 & 0xCC3C2D56 ^ 0x661E16AB) & v966) >> v980);
              v781 = ((v978 & (v573 & 0x916CB080 ^ 0x48B65840)) >> v954) | (((v573 & 0x916CB080 ^ 0x48B65840) & v942) << v983);
              v779 = ((v975 & (v573 & 0x3B3E8E00 ^ 0x9D9F4700)) << v912) + (((v573 & 0x3B3E8E00 ^ 0x9D9F4700) & v966) >> v954);
              v787 = v786 ^ (((v560 & 0xF25484B2 ^ 0xF92A4259) & v942) << v983) ^ ((v978 & (v560 & 0xF25484B2 ^ 0xF92A4259)) >> v980);
              v785 = (((v975 & (v560 & 0x84F0E9CE ^ 0xC27874E7)) << v912) | ((v978 & (v560 & 0x84F0E9CE ^ 0xC27874E7)) >> v954)) ^ v784;
              v871 = (((v573 & 0x10D0BE22 ^ 0x8685F11) & v966) >> v980) ^ (((v573 & 0x10D0BE22 ^ 0x8685F11) & v942) << v983);
              v790 = (((v560 & 0x7BCDD1CC ^ 0x3DE6E8E6) & v966) >> v980) ^ (((v560 & 0x7BCDD1CC ^ 0x3DE6E8E6) & v942) << v983) ^ v789;
              v776 = ((v975 & (v573 & 0x1030553E ^ 0x88182A9F)) << v912) + ((v978 & (v573 & 0x1030553E ^ 0x88182A9F)) >> v954);
              v774 = ((v975 & (v573 & 0xD084A9F4 ^ 0xE84254FA)) << v983) + ((v978 & (v573 & 0xD084A9F4 ^ 0xE84254FA)) >> v980);
              v777 = v794 ^ ((((v560 & 0xAAC01756 ^ 0x55600BAB) & v966) >> v954) + (((v560 & 0xAAC01756 ^ 0x55600BAB) & v942) << v912));
              v795 = ((v975 & (v560 & 0xCDAC409E ^ 0x66D6204F)) << v983) + (((v560 & 0xCDAC409E ^ 0x66D6204F) & v966) >> v980);
              v775 = ((v975 & v554) << v912) ^ ((v554 & v966) >> v980) ^ (((v975 & (v573 & 0xB6E697D0 ^ 0x5B734BE8)) << v983) | (((v573 & 0xB6E697D0 ^ 0x5B734BE8) & v966) >> v980));
              v773 = v797 ^ (((v978 & (v560 & 0xF7AD5334 ^ 0xFBD6A99A)) >> v954) + (((v560 & 0xF7AD5334 ^ 0xFBD6A99A) & v942) << v912));
              v869 = (((v868 ^ (2 * (v986 & v868))) & v942) << v983) ^ (((v560 & 0xE09215EC ^ 0xF0490AF6) & v942) << v912) ^ (((v560 & 0xE09215EC ^ 0xF0490AF6) & v966) >> v980) ^ ((v978 & (v868 ^ (2 * (v986 & v868)))) >> v954) ^ v862;
              v770 = (((v975 & (v573 & 0x108FA846 ^ 0x847D423)) << v983) + (((v573 & 0x108FA846 ^ 0x847D423) & v966) >> v980)) ^ v802;
              v768 = ((v800 & v942) << v983) ^ ((v800 & v966) >> v954) ^ (((v978 & (v560 & 0xC7A93C84 ^ 0xE3D49E42)) >> v954) + (((v560 & 0xC7A93C84 ^ 0xE3D49E42) & v942) << v912));
              v803 = ((v975 & (v573 & 0x339E4FC2 ^ 0x99CF27E1)) << v912) | (((v573 & 0x339E4FC2 ^ 0x99CF27E1) & v966) >> v980);
              v766 = ((v818 & v966) >> v954) ^ ((v818 & v942) << v912) ^ (((v560 & 0x55B6BABE ^ 0x2ADB5D5F) & v942) << v983) ^ ((v978 & (v560 & 0x55B6BABE ^ 0x2ADB5D5F)) >> v954);
              v801 = ((v975 & (v560 & 0x229ED170 ^ 0x114F68B8)) << v912) + (((v560 & 0x229ED170 ^ 0x114F68B8) & v966) >> v954);
              v764 = ((v978 & (v573 & 0x8938D480 ^ 0xC49C6A40)) >> v980) + (((v573 & 0x8938D480 ^ 0xC49C6A40) & v942) << v983);
              v760 = ((v975 & (v573 & 0x30D39E52 ^ 0x1869CF29)) << v912) ^ (((v573 & 0x30D39E52 ^ 0x1869CF29) & v966) >> v954);
              v765 = (((v978 & (v560 & 0x51499FCE ^ 0x28A4CFE7)) >> v980) | (((v560 & 0x51499FCE ^ 0x28A4CFE7) & v942) << v983)) ^ ((((v812 ^ (2 * (v986 & v812))) & v942) << v983) + (((v812 ^ (2 * (v986 & v812))) & v966) >> v954));
              v761 = (((v978 & (v840 ^ (2 * (v906 & v840)))) >> v980) + (((v840 ^ (2 * (v906 & v840))) & v942) << v983)) ^ ((((v573 & 0xBEBA83EE ^ 0xDF5D41F7) & v966) >> v980) | (((v573 & 0xBEBA83EE ^ 0xDF5D41F7) & v942) << v912));
              v759 = ((v975 & (v560 & 0x3A971E14 ^ 0x9D4B8F0A)) << v983) ^ ((v978 & (v560 & 0x3A971E14 ^ 0x9D4B8F0A)) >> v954) ^ v848;
              v758 = ((v975 & v845) << v912) ^ ((v845 & v966) >> v954) ^ (((v975 & (v560 & 0x3E3A0E2A ^ 0x9F1D0715)) << v983) | ((v978 & (v560 & 0x3E3A0E2A ^ 0x9F1D0715)) >> v954));
              v574 = ((((v573 & 0x4A42C4F4 ^ 0xA521627A) & v966) >> v980) | (((v573 & 0x4A42C4F4 ^ 0xA521627A) & v942) << v912)) ^ ((((v856 ^ (2 * (v986 & v856))) & v942) << v983) + (((v856 ^ (2 * (v986 & v856))) & v966) >> v954));
              v575 = ((v975 & (v573 & 0xFCD970F8 ^ 0xFE6CB87C)) << v983) + ((v978 & (v573 & 0xFCD970F8 ^ 0xFE6CB87C)) >> v954);
              v576 = (((v978 & (v549 ^ 0xAB67D7B2 ^ (2 * (v986 & (v549 ^ 0xAB67D7B2))))) >> v954) | (((v549 ^ 0xAB67D7B2 ^ (2 * (v986 & (v549 ^ 0xAB67D7B2)))) & v942) << v912)) ^ ((((v560 & 0x771ED9B4 ^ 0xBB8F6CDA) & v966) >> v980) + (((v560 & 0x771ED9B4 ^ 0xBB8F6CDA) & v942) << v912));
              v577 = ((v975 & (v560 & 0x157061FE ^ 0x8AB830FF)) << v912) ^ (((v560 & 0x157061FE ^ 0x8AB830FF) & v966) >> v980) ^ v865;
              v578 = ((v978 & (v573 & 0x770912F8 ^ 0xBB84897C)) >> v954) | (((v573 & 0x770912F8 ^ 0xBB84897C) & v942) << v983);
              v969 = (((v952 ^ 0x42969FE7) - 1531703574) ^ ((v952 ^ 0x83BEAD24) + 1704737835) ^ ((v952 ^ 0xDC88AF78) + 984235639)) - 297101226;
              v866 = v892 ^ (((v975 & ((33686018 * v820) & 0x138168CA ^ 0x89C0B465)) << v912) | ((((33686018 * v820) & 0x138168CA ^ 0x89C0B465) & v966) >> v980)) ^ (((v975 & ((33686018 * v820) & 0xAFC174E8 ^ 0xD7E0BA74)) << v912) + ((((33686018 * v820) & 0xAFC174E8 ^ 0xD7E0BA74) & v966) >> v980));
              v863 = (((((33686018 * v811) & 0x69637E14 ^ 0x34B1BF0A) & v942) << v912) + ((((33686018 * v811) & 0x69637E14 ^ 0x34B1BF0A) & v966) >> v954)) ^ ((v809 & v966) >> v980);
              v579 = (v949 & v942) << v983;
              v580 = ((v949 & v966) >> v980) ^ v579;
              v857 = v580 ^ ((v975 & v809) << v912) ^ (((v978 & ((33686018 * v811) & 0x99F2223A ^ 0xCCF9111D)) >> v954) + ((((33686018 * v811) & 0x99F2223A ^ 0xCCF9111D) & v942) << v983));
              v854 = v904 ^ (((v837 ^ (2 * (v906 & v837))) & v942) << v983) ^ (((((33686018 * v811) & 0x4FF722F4 ^ 0xA7FB917A) & v966) >> v980) | ((((33686018 * v811) & 0x4FF722F4 ^ 0xA7FB917A) & v942) << v912)) ^ ((v978 & (v837 ^ (2 * (v906 & v837)))) >> v954) ^ ((v978 & ((33686018 * v820) & 0x7890EFEA ^ 0x3C4877F5u)) >> v980) ^ ((v975 & ((33686018 * v820) & 0x7890EFEA ^ 0x3C4877F5)) << v983);
              v851 = v904 ^ ((((33686018 * v811) & 0xA3FB2DD6 ^ 0x51FD96EB) & v942) << v983) ^ ((v947 & v966) >> v980) ^ ((v978 & ((33686018 * v811) & 0xA3FB2DD6 ^ 0x51FD96EB)) >> v954) ^ ((v975 & v947) << v912) ^ v899;
              v581 = (v951 & v942) << v912;
              LODWORD(v560) = ((v951 & v966) >> v980) ^ v581;
              v849 = v835 ^ v560 ^ v580 ^ (((v975 & (v842 ^ (2 * (v986 & v842)))) << v983) + ((v978 & (v842 ^ (2 * (v986 & v842)))) >> v980));
              v846 = v831 ^ v899 ^ v916 ^ v897;
              v843 = v783 ^ v892 ^ (((v975 & (v858 ^ (2 * (v906 & v858)))) << v983) + (((v858 ^ (2 * (v906 & v858))) & v966) >> v954));
              v841 = v781 ^ v560 ^ v823;
              v838 = v779 ^ v560 ^ v815;
              v836 = v776 ^ v560 ^ v806;
              v832 = ((v975 & v553) << v912) ^ ((v553 & v966) >> v954) ^ v892 ^ v774;
              v828 = v580 ^ ((((33686018 * v811) & 0x6E50012E ^ 0xB7280097) & v942) << v912) ^ ((v978 & ((33686018 * v811) & 0x6E50012E ^ 0xB7280097)) >> v954) ^ v827;
              v582 = v912;
              v821 = v560 ^ ((v799 & v942) << v912) ^ ((v978 & ((33686018 * v811) & 0x9DD11B98 ^ 0xCEE88DCC) ^ v799 & v966) >> v954) ^ ((v975 & ((33686018 * v811) & 0x9DD11B98 ^ 0xCEE88DCC)) << v983);
              v824 = v580 ^ ((((v918 ^ (2 * (v906 & v918))) & v942) << v983) + (((v918 ^ (2 * (v906 & v918))) & v966) >> v954)) ^ v795;
              v819 = ((v975 & v926) << v912) ^ v581 ^ ((v978 & v926 ^ v951 & v966) >> v980) ^ v803;
              LODWORD(v560) = ((v975 & v921) << v912) ^ v579;
              v583 = v942;
              v816 = v560 ^ ((v978 & v921 ^ v949 & v966) >> v980) ^ v801;
              v813 = v580 ^ v931 ^ v764;
              v810 = v575 ^ v924;
              v807 = ((((v929 ^ (2 * (v986 & v929))) & v942) << v912) + (((v929 ^ (2 * (v986 & v929))) & v966) >> v954)) ^ v578;
              v804 = v937 ^ v890 ^ v895;
              v798 = v787 ^ v892;
              v796 = v580 ^ -v580;
              v791 = v790 ^ v890;
              v788 = v777 ^ v890;
              v782 = v770 ^ v890;
              v780 = v768 ^ v895;
              v778 = v766 ^ v899;
              v584 = v906;
              v585 = v972;
              v586 = 0;
              v859 = v580;
              v772 = v574 ^ v580;
              v771 = v576 ^ v892 ^ v890;
              v769 = v577 ^ v890 ^ v897;
              v767 = v902 ^ v939 ^ v908;
              v587 = v989;
              while (1)
              {
                v993 = v586;
                v588 = v914 + v586;
                v940 = v586;
                v589 = v584;
                v590 = (v585 ^ 0x61DD2953u) - 0x1C649171D94D4AC0 + (__ROR8__(v588, 8) & 0xF8FFFFFFFFFFFFFFLL);
                v917 = (v585 + 1060073713) & 0xECF7B5EE;
                *(&v591 + 1) = v590 ^ 0x19BD561D2BFA5152;
                *&v591 = v590;
                v592 = (__ROR8__(v590 ^ (v917 + 0x5662268A95B74E1), 8) + (v590 ^ 0x19BD561D2BFA5152)) ^ 0xFDA8E32437622097;
                v593 = v592 ^ (v591 >> 61);
                v594 = v593 + __ROR8__(v592, 8);
                v595 = v594 ^ __ROR8__(v593, 61);
                *(&v591 + 1) = v595 ^ 0x1038643522CD1792;
                *&v591 = v595;
                v596 = (__ROR8__(v594 ^ 0x1038643522CD1792, 8) + (v595 ^ 0x1038643522CD1792)) ^ 0xBFF6C21B210E4F37;
                v597 = v596 ^ (v591 >> 61);
                v598 = (v597 + __ROR8__(v596, 8)) ^ 0x9882E727DB37CF94;
                *&v591 = __ROR8__(v597, 61);
                v599 = v598 ^ v591;
                LOBYTE(v597) = 8 * (v588 & 7);
                v600 = ((v598 ^ v591) + (v598 << 56) + (v598 >> 8)) ^ 0x5FD252103B569EALL;
                v601 = v600 ^ __ROR8__(v599, 61);
                v602 = (__ROR8__(v600, 8) + v601) ^ 0x7B5626353E243BAALL;
                v603 = ((__ROR8__(v602, 8) + (v602 ^ __ROR8__(v601, 61))) ^ 0xAF1BD4ED8A66164BLL) >> v597;
                v604 = __ROR8__((v588 + 8) & 0xFFFFFFFFFFFFFFF8, 8) - 0x1C64917143BAF701;
                v605 = __ROR8__(v604 ^ 0x5662268C9D216ADLL, 8);
                *(&v591 + 1) = v604 ^ 0x19BD561D2BFA5152;
                *&v591 = v604;
                v606 = v591 >> 61;
                v607 = (v605 + *(&v591 + 1)) ^ 0xFDA8E32437622097;
                *&v591 = __ROR8__(v607, 8);
                v608 = v607 ^ v606;
                v609 = (v608 ^ v591) + 2 * (v608 & v591);
                v610 = v609 ^ __ROR8__(v608, 61);
                *(&v591 + 1) = v610 ^ 0x1038643522CD1792;
                *&v591 = v610;
                v611 = ((v610 ^ 0x1038643522CD1792) + __ROR8__(v609 ^ 0x1038643522CD1792, 8)) ^ 0xBFF6C21B210E4F37;
                v612 = v611 ^ (v591 >> 61);
                v613 = (v612 + (v611 << 56) + (v611 >> 8)) ^ 0x9882E727DB37CF94;
                v614 = v613 ^ __ROR8__(v612, 61);
                v615 = __ROR8__(v613, 8) + v614;
                v616 = v615 ^ __ROR8__(v614, 61);
                v617 = __ROR8__(v615 ^ 0x5FD252103B569EALL, 8) + (v616 ^ 0x5FD252103B569EALL);
                *(&v591 + 1) = v616 ^ 0x5FD252103B569EALL;
                *&v591 = v616;
                v618 = (__ROR8__(v617 ^ 0x7B5626353E243BAALL, 8) + (v617 ^ 0x7B5626353E243BAALL ^ (v591 >> 61))) ^ 0xAF1BD4ED8A66164BLL;
                v619 = v618 >> v597;
                v620 = v597 ^ 0x3C;
                v621 = v603 + 16 * (v618 << v620);
                v622 = __ROR8__(v588 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL;
                v623 = v622 - 0x1C64917143BAF701;
                v624 = 0xE39B6E8E7C4508FFLL;
                if (((v622 - 0x1C64917143BAF701) & 0x40000000) == 0)
                {
                  v624 = 0xE39B6E8EFC4508FFLL;
                }

                v625 = v624 + v622;
                *(&v626 + 1) = v625 ^ 0x19BD561D6BFA5152;
                *&v626 = v625;
                v627 = ((v625 ^ 0x19BD561D6BFA5152) + __ROR8__(v623 ^ 0x5662268C9D216ADLL, 8)) ^ 0xFDA8E32437622097;
                v628 = v627 ^ (v626 >> 61);
                v629 = (v628 + (v627 << 56) + (v627 >> 8)) ^ 0x1038643522CD1792;
                v630 = v629 ^ __ROR8__(v628, 61);
                v631 = (v630 + __ROR8__(v629, 8)) ^ 0xBFF6C21B210E4F37;
                v632 = v631 ^ __ROR8__(v630, 61);
                v633 = (v632 + __ROR8__(v631, 8)) ^ 0x9882E727DB37CF94;
                v634 = v633 ^ __ROR8__(v632, 61);
                v635 = (__ROR8__(v633, 8) + v634) ^ 0x5FD252103B569EALL;
                v636 = v635 ^ __ROR8__(v634, 61);
                v637 = (__ROR8__(v635, 8) + v636) ^ 0x7B5626353E243BAALL;
                v638 = v619 + 16 * ((((v637 ^ __ROR8__(v636, 61)) + __ROR8__(v637, 8)) ^ 0xF1BD4ED8A66164BLL) << v620);
                v639 = v874[BYTE2(v621) ^ 0x59];
                v640 = v874[BYTE3(v621) ^ 0x8DLL];
                v641 = ((v876[v603 ^ 0xE8] ^ v603 ^ 0xFFFFFFF9) << 24) | (((v879[BYTE1(v621) ^ 0xD8] ^ BYTE1(v621)) ^ 0x1C) << 16) | ((((v639 >> 6) | (4 * v639)) ^ 0x69) << 8) | ((v640 >> 6) | (4 * v640));
                v642 = v641 ^ (2 * (v641 & v986));
                v643 = v874[BYTE5(v621) ^ 0xA9];
                LODWORD(v621) = v874[HIBYTE(v621) ^ 0xDF];
                v644 = ((((v643 >> 6) | (4 * v643)) ^ 0xE0) << 16) | ((v879[BYTE4(v621) ^ 0xABLL] ^ HIDWORD(v621) ^ 0x7D) << 24) | ((v879[BYTE6(v621) ^ 0x1FLL] ^ BYTE6(v621) ^ 0xC6) << 8) | ((v621 >> 6) | (4 * v621)) ^ 0x40;
                v645 = v589;
                v646 = v874[v619 ^ 0x9CLL];
                v922 = (((v644 ^ (2 * (v644 & v589))) & v966) >> v954) | (((v644 ^ (2 * (v644 & v589))) & v583) << v582);
                v647 = v882[BYTE1(v638) ^ 0x84];
                v648 = v874[BYTE2(v638) ^ 0x98];
                v649 = ((((v646 >> 6) | (4 * v646)) ^ 0x1A) << 24) | ((((v647 >> 6) | (4 * v647)) ^ 0x72 ^ ((8 * ((v647 >> 6) | (4 * v647))) | 0x90)) << 16);
                LOBYTE(v647) = ((v648 >> 6) | (4 * v648)) ^ 0xC7;
                v650 = v874[BYTE3(v638) ^ 0x3BLL];
                v651 = v649 & 0xFFFF0000 | (v647 << 8) | ((v650 >> 6) | (4 * v650)) ^ 0x61;
                v652 = v651 ^ (2 * (v651 & v589));
                LODWORD(v638) = v882[HIBYTE(v638) ^ 0xA1];
                v653 = ((v879[BYTE4(v638) ^ 0x6BLL] ^ HIDWORD(v638) ^ 0x7C) << 24) | ((v879[BYTE5(v638) ^ 0xF1] ^ BYTE5(v638) ^ 0x42) << 16) | ((v879[BYTE6(v638) ^ 0xB0] ^ BYTE6(v638) ^ 0x37) << 8) | (((v638 >> 6) | (4 * v638)) ^ ((8 * ((v638 >> 6) | (4 * v638))) | 0x90)) ^ 0xFD;
                v919 = (((v653 ^ (2 * (v653 & v986))) & v583) << v582) + (((v653 ^ (2 * (v653 & v986))) & v978) >> v980);
                v654 = v587[v586 + 15];
                v655 = v587[v586 + 6];
                v656 = v874[v587[v586 + 14] ^ 0xF9];
                LODWORD(v654) = (v654 ^ 0xF3 ^ v876[v654 ^ 0x9B]) & 0xFFFF00FF | ((((v656 >> 6) | (4 * v656)) ^ 0xA5) << 8);
                v657 = v882[v587[v586 + 1] ^ 0xFBLL];
                LODWORD(v637) = ((v587[v586] ^ 0xED ^ v879[v587[v586] ^ 0xD5]) << 24) | (((((v657 >> 6) | (4 * v657)) ^ ((8 * ((v657 >> 6) | (4 * v657))) | 0x90)) ^ 0xF3) << 16);
                v658 = v587[v586 + 4];
                v659 = v583;
                v660 = ((v655 ^ 0x5A ^ v879[v655 ^ 0xD0]) << 8) | ((v658 ^ 0x5E ^ v876[v658 ^ 0x1E]) << 24);
                v661 = v587[v586 + 8];
                LODWORD(v658) = v874[v587[v586 + 2] ^ 0xC3];
                v662 = v587[v586 + 11];
                v663 = v876[v662 ^ 0xC4] ^ v662 | ((v661 ^ 0x9C ^ v876[v661 ^ 0x5A]) << 24);
                LODWORD(v661) = v882[v587[v586 + 9] ^ 0x5ALL];
                v664 = v587[v586 + 3];
                LODWORD(v664) = v664 ^ 0xBA ^ v876[v664 ^ 0x88] | v637 & 0xFFFF00FF | ((((v658 >> 6) | (4 * v658)) ^ 0xA6) << 8);
                v665 = v587[v586 + 5] ^ 0xFDLL;
                v666 = v660 & 0xFF00FFFF | ((((v874[v665] >> 6) | (4 * v874[v665])) ^ 0x78) << 16);
                LODWORD(v665) = v874[v587[v586 + 12] ^ 0x8BLL];
                v667 = v587[v586 + 13];
                LODWORD(v654) = v654 | ((((v665 >> 6) | (4 * v665)) ^ 0xD8) << 24) | ((v667 ^ 0x9B ^ v879[v667 ^ 0x57]) << 16);
                LODWORD(v667) = v874[v587[v586 + 10] ^ 0xEBLL];
                v668 = v663 & 0xFF0000FF | ((((v661 >> 6) | (4 * v661)) ^ 0x3B ^ ((8 * ((v661 >> 6) | (4 * v661))) | 0x90)) << 16) | ((((v667 >> 6) | (4 * v667)) ^ 0xBE) << 8);
                v669 = v882[v989[v586 + 7] ^ 0xAFLL];
                LODWORD(v664) = v664 ^ 0x2E ^ (2 * ((v664 ^ 0x2E) & v986));
                v670 = v666 & 0xFFFFFF00 | ((8 * ((v669 >> 6) | (4 * v669))) | 0x90) ^ ((v669 >> 6) | (4 * v669));
                v671 = (((v670 ^ (2 * (v670 & v645))) & v978) >> v954) + (((v670 ^ (2 * (v670 & v645))) & v975) << v983);
                v672 = v668 ^ 0x7B ^ (2 * ((v668 ^ 0x7B) & v986));
                LODWORD(v664) = v908 ^ v902 ^ v859 ^ v899 ^ v866 ^ v888 ^ v956 ^ (((v664 & v659) << v582) + ((v664 & v966) >> v980)) ^ ((v642 & v978) >> v980) ^ ((v642 & v975) << v983);
                v673 = v908 ^ v902 ^ v863 ^ v857 ^ v892 ^ v897 ^ v959 ^ ((v652 & v966) >> v954) ^ ((v652 & v975) << v983) ^ (((v672 & v659) << v582) + ((v672 & v966) >> v954));
                v674 = v854 ^ v892 ^ v895 ^ v890 ^ v962 ^ (((v654 ^ (2 * (v654 & v645))) & v975) << v983) ^ (((v654 ^ (2 * (v654 & v645))) & v978) >> v980) ^ v919;
                v675 = v851 ^ v804 ^ v964 ^ v671 ^ v922;
                v676 = *(v20 + 4 * BYTE2(v675));
                LODWORD(v654) = v849 ^ __ROR4__(*(v20 + 4 * v664), 16) ^ __ROR4__(*(v20 + 4 * BYTE1(v674)), 8) ^ *(v20 + 4 * BYTE2(v673)) ^ __ROR4__(*(v20 + 4 * HIBYTE(v675)), 24);
                v677 = *(v20 + 4 * BYTE1(v673));
                v678 = v846 ^ *(v20 + 4 * BYTE2(v664)) ^ __ROR4__(*(v20 + 4 * HIBYTE(v674)), 24) ^ __ROR4__(*(v20 + 4 * v673), 16) ^ __ROR4__(*(v20 + 4 * BYTE1(v675)), 8);
                v679 = v934 ^ v892 ^ v899 ^ *(v20 + 4 * BYTE2(v674)) ^ __ROR4__(*(v20 + 4 * BYTE1(v664)), 8) ^ __ROR4__(*(v20 + 4 * (v851 ^ v804 ^ v964 ^ v671 ^ v922)), 16) ^ __ROR4__(*(v20 + 4 * HIBYTE(v673)), 24);
                LODWORD(v664) = v793 ^ v892 ^ v897 ^ v676 ^ __ROR4__(v677, 8) ^ __ROR4__(*(v20 + 4 * BYTE3(v664)), 24) ^ __ROR4__(*(v20 + 4 * v674), 16);
                v680 = *(v20 + 4 * BYTE1(v654));
                v681 = v843 ^ __ROR4__(*(v20 + 4 * BYTE3(v664)), 24) ^ __ROR4__(*(v20 + 4 * v678), 16) ^ *(v20 + 4 * BYTE2(v654)) ^ __ROR4__(*(v20 + 4 * BYTE1(v679)), 8);
                v682 = *(v20 + 4 * v654);
                LODWORD(v654) = v841 ^ *(v20 + 4 * BYTE2(v679)) ^ __ROR4__(*(v20 + 4 * BYTE1(v678)), 8) ^ __ROR4__(*(v20 + 4 * v664), 16) ^ __ROR4__(*(v20 + 4 * BYTE3(v654)), 24);
                v683 = v838 ^ __ROR4__(*(v20 + 4 * BYTE1(v664)), 8) ^ *(v20 + 4 * BYTE2(v678)) ^ __ROR4__(v682, 16) ^ __ROR4__(*(v20 + 4 * HIBYTE(v679)), 24);
                v684 = v798 ^ *(v20 + 4 * BYTE2(v664)) ^ __ROR4__(v680, 8) ^ __ROR4__(*(v20 + 4 * HIBYTE(v678)), 24) ^ __ROR4__(*(v20 + 4 * v679), 16);
                LODWORD(v664) = *(v20 + 4 * v683);
                v685 = *(v20 + 4 * HIBYTE(v681));
                v686 = *(v20 + 4 * BYTE1(v683));
                v687 = v885 ^ __ROR4__(*(v20 + 4 * v681), 16) ^ __ROR4__(*(v20 + 4 * BYTE3(v654)), 24) ^ __ROR4__(*(v20 + 4 * BYTE1(v684)), 8) ^ *(v20 + 4 * BYTE2(v683));
                v688 = *(v20 + 4 * BYTE1(v654));
                v689 = *(v20 + 4 * BYTE2(v654));
                v690 = v785 ^ v897 ^ __ROR4__(*(v20 + 4 * BYTE1(v681)), 8) ^ *(v20 + 4 * BYTE2(v684)) ^ __ROR4__(*(v20 + 4 * v654), 16) ^ __ROR4__(*(v20 + 4 * HIBYTE(v683)), 24);
                LODWORD(v654) = v871 ^ ((v796 ^ (v687 - (v687 ^ v859))) + v687);
                v691 = v791 ^ __ROR4__(v664, 16) ^ __ROR4__(v688, 8) ^ __ROR4__(*(v20 + 4 * HIBYTE(v684)), 24) ^ *(v20 + 4 * BYTE2(v681));
                v692 = v836 ^ __ROR4__(v685, 24) ^ __ROR4__(v686, 8) ^ __ROR4__(*(v20 + 4 * v684), 16) ^ v689;
                v693 = *(v20 + 4 * BYTE1(v692));
                DWORD1(v626) = *(v20 + 4 * HIBYTE(v691));
                LODWORD(v626) = DWORD1(v626);
                v694 = (v626 >> 24) ^ __ROR4__(*(v20 + 4 * BYTE1(v654)), 8) ^ __ROR4__(*(v20 + 4 * v690), 16);
                v695 = *(v20 + 4 * BYTE2(v692));
                v696 = v695 & v694;
                v697 = v695 + v694;
                v698 = *(v20 + 4 * BYTE2(v691));
                v699 = v697 - 2 * v696;
                v700 = *(v20 + 4 * v692);
                v701 = v832 ^ __ROR4__(*(v20 + 4 * HIBYTE(v692)), 24) ^ __ROR4__(*(v20 + 4 * BYTE1(v690)), 8) ^ __ROR4__(*(v20 + 4 * v691), 16) ^ *(v20 + 4 * BYTE2(v654));
                v702 = v828 ^ __ROR4__(*(v20 + 4 * BYTE3(v654)), 24) ^ __ROR4__(*(v20 + 4 * BYTE1(v691)), 8) ^ *(v20 + 4 * BYTE2(v690)) ^ __ROR4__(v700, 16);
                v703 = v824 ^ __ROR4__(v693, 8) ^ v698 ^ __ROR4__(*(v20 + 4 * HIBYTE(v690)), 24) ^ __ROR4__(*(v20 + 4 * v654), 16);
                v704 = *(v20 + 4 * BYTE2(v701));
                v705 = HIBYTE(v701);
                v706 = v775 ^ v895 ^ __ROR4__(*(v20 + 4 * v701), 16) ^ *(v20 + 4 * BYTE2(v703)) ^ __ROR4__(*(v20 + 4 * ((v788 ^ v699) >> 8)), 8);
                v707 = v773 ^ v897 ^ __ROR4__(*(v20 + 4 * HIBYTE(v703)), 24) ^ __ROR4__(*(v20 + 4 * v702), 16) ^ *(v20 + 4 * ((v788 ^ v699) >> 16)) ^ __ROR4__(*(v20 + 4 * BYTE1(v701)), 8);
                v708 = v821 ^ v704 ^ __ROR4__(*(v20 + 4 * BYTE1(v702)), 8) ^ __ROR4__(*(v20 + 4 * ((v788 ^ v699) >> 24)), 24) ^ __ROR4__(*(v20 + 4 * v703), 16);
                v709 = v869 ^ __ROR4__(*(v20 + 4 * BYTE1(v703)), 8) ^ *(v20 + 4 * BYTE2(v702)) ^ __ROR4__(*(v20 + 4 * (v788 ^ v699)), 16) ^ __ROR4__(*(v20 + 4 * v705), 24);
                v710 = *(v20 + 4 * BYTE1(v707));
                LODWORD(v664) = v706 ^ __ROR4__(*(v20 + 4 * HIBYTE(v702)), 24);
                LODWORD(v654) = v782 ^ __ROR4__(*(v20 + 4 * BYTE1(v708)), 8) ^ __ROR4__(*(v20 + 4 * v709), 16) ^ __ROR4__(*(v20 + 4 * BYTE3(v664)), 24) ^ *(v20 + 4 * BYTE2(v707));
                v711 = *(v20 + 4 * BYTE1(v664));
                v712 = *(v20 + 4 * BYTE2(v664));
                LODWORD(v664) = v780 ^ *(v20 + 4 * BYTE2(v708)) ^ __ROR4__(*(v20 + 4 * HIBYTE(v707)), 24) ^ __ROR4__(*(v20 + 4 * v664), 16) ^ __ROR4__(*(v20 + 4 * BYTE1(v709)), 8);
                v713 = v819 ^ __ROR4__(*(v20 + 4 * v707), 16) ^ __ROR4__(*(v20 + 4 * HIBYTE(v708)), 24) ^ __ROR4__(v711, 8) ^ *(v20 + 4 * BYTE2(v709));
                v714 = v778 ^ __ROR4__(*(v20 + 4 * HIBYTE(v709)), 24) ^ __ROR4__(v710, 8) ^ __ROR4__(*(v20 + 4 * v708), 16) ^ v712;
                v715 = v816 ^ __ROR4__(*(v20 + 4 * BYTE3(v654)), 24) ^ __ROR4__(*(v20 + 4 * v714), 16) ^ __ROR4__(*(v20 + 4 * BYTE1(v713)), 8) ^ *(v20 + 4 * BYTE2(v664));
                v716 = *(v20 + 4 * v713);
                v717 = *(v20 + 4 * HIBYTE(v713));
                v718 = *(v20 + 4 * HIBYTE(v714));
                v719 = v813 ^ *(v20 + 4 * BYTE2(v713)) ^ __ROR4__(*(v20 + 4 * BYTE3(v664)), 24) ^ __ROR4__(*(v20 + 4 * BYTE1(v714)), 8) ^ __ROR4__(*(v20 + 4 * v654), 16);
                v720 = v760 ^ v892 ^ v928 ^ __ROR4__(*(v20 + 4 * BYTE1(v654)), 8) ^ *(v20 + 4 * BYTE2(v714)) ^ __ROR4__(v717, 24) ^ __ROR4__(*(v20 + 4 * v664), 16);
                LODWORD(v664) = v765 ^ v895 ^ __ROR4__(v716, 16) ^ __ROR4__(v718, 24) ^ *(v20 + 4 * BYTE2(v654)) ^ __ROR4__(*(v20 + 4 * BYTE1(v664)), 8);
                v721 = *(v20 + 4 * HIBYTE(v715));
                v722 = *(v20 + 4 * BYTE2(v719));
                LODWORD(v654) = v761 ^ v892 ^ __ROR4__(*(v20 + 4 * HIBYTE(v719)), 24) ^ __ROR4__(*(v20 + 4 * BYTE1(v664)), 8) ^ __ROR4__(*(v20 + 4 * v715), 16) ^ *(v20 + 4 * BYTE2(v720));
                v723 = *(v20 + 4 * v719);
                v724 = v759 ^ v890 ^ __ROR4__(*(v20 + 4 * BYTE3(v664)), 24) ^ __ROR4__(*(v20 + 4 * BYTE1(v719)), 8) ^ __ROR4__(*(v20 + 4 * v720), 16) ^ *(v20 + 4 * BYTE2(v715));
                v725 = v758 ^ v895 ^ __ROR4__(*(v20 + 4 * BYTE1(v715)), 8) ^ __ROR4__(v723, 16) ^ __ROR4__(*(v20 + 4 * HIBYTE(v720)), 24) ^ *(v20 + 4 * BYTE2(v664));
                v726 = v772 ^ __ROR4__(*(v20 + 4 * BYTE1(v720)), 8) ^ __ROR4__(*(v20 + 4 * v664), 16) ^ __ROR4__(v721, 24) ^ v722;
                v727 = v897 ^ v859 ^ v810 ^ __ROR4__(*(v20 + 4 * HIBYTE(v724)), 24) ^ __ROR4__(*(v20 + 4 * v725), 16) ^ *(v20 + 4 * BYTE2(v726)) ^ __ROR4__(*(v20 + 4 * BYTE1(v654)), 8);
                v728 = v771 ^ __ROR4__(*(v20 + 4 * BYTE1(v725)), 8) ^ __ROR4__(*(v20 + 4 * v724), 16) ^ __ROR4__(*(v20 + 4 * HIBYTE(v726)), 24) ^ *(v20 + 4 * BYTE2(v654));
                v729 = *(v20 + 4 * v654);
                LODWORD(v654) = v769 ^ __ROR4__(*(v20 + 4 * BYTE1(v724)), 8) ^ __ROR4__(*(v20 + 4 * BYTE3(v654)), 24) ^ __ROR4__(*(v20 + 4 * v726), 16) ^ *(v20 + 4 * BYTE2(v725));
                v730 = v897 ^ v859 ^ v807 ^ *(v20 + 4 * BYTE2(v724)) ^ __ROR4__(*(v20 + 4 * BYTE1(v726)), 8) ^ __ROR4__(v729, 16) ^ __ROR4__(*(v20 + 4 * HIBYTE(v725)), 24);
                v731 = v654;
                v732 = v767 ^ __ROR4__(*(v913 + 4 * HIBYTE(v727)), 16) ^ __ROR4__(*(v913 + 4 * BYTE2(v728)), 24) ^ __ROR4__(*(v913 + 4 * v730), 8) ^ *(v913 + 4 * BYTE1(v654));
                v733 = *(&off_101353600 + (v585 ^ 0xF44F7898)) - 12;
                v734 = *(v913 + 4 * BYTE1(v730));
                v735 = *(v913 + 4 * BYTE2(v654));
                v736 = *(v913 + 4 * BYTE3(v654));
                v737 = *(v913 + 4 * BYTE1(v728));
                LODWORD(v654) = *(v913 + 4 * HIBYTE(v728));
                v738 = v659;
                v739 = *(v913 + 4 * BYTE2(v727));
                LODWORD(v664) = v727;
                v740 = *(v913 + 4 * BYTE1(v727));
                LODWORD(v664) = *(v913 + 4 * v664);
                v741 = *(v913 + 4 * HIBYTE(v730));
                v742 = *(v913 + 4 * BYTE2(v730));
                v743 = *(v913 + 4 * v731);
                v744 = *(v913 + 4 * v728);
                v989[v993 + 2] = v733[BYTE1(v732) ^ 0xC5] ^ 0x21;
                v745 = v904 ^ v909 ^ __ROR4__(v736, 16) ^ v740 ^ __ROR4__(v742, 24) ^ (v744 << 24);
                v746 = *(&off_101353600 + v585 + 196118074) - 8;
                v989[v993 + 8] = HIBYTE(v745) ^ 0xD9 ^ ((HIBYTE(v745) ^ 0xD9) - 80) ^ v746[HIBYTE(v745) ^ 1];
                v747 = v909 ^ v938 ^ v902 ^ v908 ^ v737 ^ __ROR4__(v739, 24) ^ __ROR4__(v741, 16) ^ (v743 << 24) ^ (v743 >> 8);
                v587 = v989;
                v989[v993 + 15] = v746[v747 ^ 0x8ALL] ^ v747 ^ 0x52 ^ ((v747 ^ 0x52) - 80) ^ 0x26;
                v748 = *(&off_101353600 + (v585 ^ 0xF44F7906));
                v989[v940] = HIBYTE(v732) ^ 0x5E ^ ((HIBYTE(v732) ^ 0x5E) - 23) ^ 0x90 ^ *(v748 - 4 + (HIBYTE(v732) ^ 0x65));
                v749 = v904 ^ v910 ^ v734 ^ __ROR4__(v735, 24) ^ __ROR4__(v654, 16) ^ __ROR4__(v664, 8);
                v750 = *(&off_101353600 + (v585 ^ 0xF44F7B42));
                v989[v993 + 6] = (*(v750 + (BYTE1(v749) ^ 0xB9)) - 1) ^ 0xD7;
                v989[v993 + 5] = BYTE2(v749) ^ 0x93 ^ ((BYTE2(v749) ^ 0x93) - 80) ^ 0xCA ^ v746[BYTE2(v749) ^ 0x4BLL];
                v989[v993 + 14] = v733[BYTE1(v747) ^ 0xF1] ^ 0xC6;
                v751 = v745 ^ (v744 >> 8);
                v989[v993 + 11] = (*(v750 + ((v745 ^ BYTE1(v744)) ^ 0x67)) - 1) ^ 0x8F;
                v989[v993 + 10] = (*(v750 + (BYTE1(v751) ^ 0xALL)) - 1) ^ 0xB3;
                v989[v993 + 4] = HIBYTE(v749) ^ 0xFB ^ ((HIBYTE(v749) ^ 0xFB) - 80) ^ 0xA8 ^ v746[HIBYTE(v749) ^ 0x23];
                v989[v993 + 12] = ((v747 ^ 0x614123C5u) >> 24) ^ (((v747 ^ 0x614123C5u) >> 24) - 80) ^ 0x35 ^ v746[((v747 ^ 0x614123C5u) >> 24) ^ 0xD8];
                v989[v993 + 13] = ((((v747 ^ 0x614123C5u) >> 16) ^ 0xFC) - 23) ^ ((v747 ^ 0x614123C5u) >> 16) ^ 0xFC ^ 0xE6 ^ *(v748 - 4 + (((v747 ^ 0x614123C5u) >> 16) ^ 0xC7));
                v989[v993 + 3] = (*(v750 + (v732 ^ 0xE2)) - 1) ^ 0x2F;
                v989[v993 + 7] = (*(v750 + (v749 ^ 5)) - 1) ^ 0x19;
                v989[v993 + 9] = v733[BYTE2(v751) ^ 8] ^ 0x5B;
                v989[v993 + 1] = (*(v750 + (BYTE2(v732) ^ 0xBELL)) - 1) ^ 0x5F;
                v752 = v993 - 372464356 < v969;
                if (v969 < 0xE9CCA50C != v993 - 372464356 < 0xE9CCA50C)
                {
                  v752 = v969 < 0xE9CCA50C;
                }

                if (!v752)
                {
                  break;
                }

                v585 = v917 ^ 0xD439DB20;
                v586 = v993 + 16;
                v753 = v747 ^ 0x5D4877F5 ^ (2 * ((v747 ^ 0x5D4877F5) & v986));
                v962 = ((v753 & v966) >> v980) + ((v753 & v738) << v983);
                v754 = v751 ^ 0x55B1BF0A ^ (2 * ((v751 ^ 0x55B1BF0A) & v906));
                v582 = v912;
                v959 = ((v754 & v978) >> v954) | ((v754 & v975) << v912);
                v755 = v749 ^ v917 ^ 0x888B3727 ^ (2 * ((v749 ^ v917 ^ 0x888B3727) & v906));
                v964 = ((v755 & v975) << v912) ^ ((v755 & v978) >> v980);
                v756 = v732 ^ 0x45C0B465 ^ (2 * ((v732 ^ 0x45C0B465) & v986));
                v956 = ((v756 & v966) >> v954) | ((v756 & v738) << v983);
                v583 = v738;
                v584 = v906;
              }

              v8 = 0;
              v17 = v762;
              v19 = v913;
              v16 = v585 ^ 0x61DD2953;
            }

            (*&v17[8 * (v16 ^ 0x95922FAF)])(v20);
            (*&v17[8 * (v16 + 1785604177)])(v19);
            result = v763;
          }
        }
      }
    }
  }

  else
  {
    v8 = -42900;
  }

  if ((v8 ^ 0x1BFF4B7D) + ((2 * v8) & 0x37FE96FA) == 469715837)
  {
    v757 = 221187128;
  }

  else
  {
    v757 = 221187108;
  }

  *(result + 44) = v757;
  return result;
}

uint64_t sub_1007A4058(int a1)
{
  STACK[0x35C8] = v3;
  STACK[0x3838] = v2;
  LODWORD(STACK[0x3AB0]) = a1;
  STACK[0x3AD8] = 272 * (v1 ^ 0x681Cu);
  return (*(v4 + 8 * v1))();
}

uint64_t sub_1007A40BC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  v13 = *(STACK[0x8B0] + 8 * (a13 ^ 0x4F4F14B6 ^ (29728 * (a13 > 0x5CB25DDD))));
  *&STACK[0x8A0] = a9;
  return v13(a1, a2);
}

uint64_t sub_1007A4154(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v17 = STACK[0x3B08];
  v18 = *(STACK[0x3B08] + 9);
  HIDWORD(v19) = v7;
  LODWORD(v19) = a4 << 24;
  v20 = *(STACK[0x3B08] + 10);
  v21 = v8 + 4647 * ((v19 >> 25) ^ 0x40);
  LODWORD(STACK[0x39D8]) = v10;
  v22 = v17[12];
  v23 = v17[15];
  v24 = *(v14 + v21 - 6784 * (((1266205 * v21) >> 32) >> 1));
  v25 = v17[11];
  v26 = v9;
  v27 = v17[1];
  v28 = v17[13];
  v29 = *(v14 + 4647 * ((v11 + 111) ^ 0x1C) + 4767822 - 6784 * (((1266205 * (4647 * ((v11 + 111) ^ 0x1Cu) + 4767822)) >> 32) >> 1)) ^ 0xFFFFFFE3;
  v30 = v17[14];
  v31 = (v17[5] << 16) | (v17[3] << 32) | (v17[2] << 40);
  LODWORD(STACK[0x34A8]) = (v29 >> 3) | (32 * v29);
  LODWORD(STACK[0x33A0]) = 97 * (v24 ^ 0xFFFFFFA2);
  v32 = (v20 << ((v5 - 24) & 0x87 ^ 0xAFu)) | (v18 << 48) | v23 | (v22 << 24) | (v25 << 32) | (v28 << 16) | (v30 << 8) | (v17[8] << 56);
  LODWORD(v18) = v6 + 4647 * (((LODWORD(STACK[0x3418]) >> 1) | (LODWORD(STACK[0x3418]) << 7)) ^ 0xD9);
  v33 = (v31 | (*v17 << 56) | v17[7] | (v27 << 48) | (v17[4] << 24)) ^ (v17[6] << 8);
  LODWORD(STACK[0x35B8]) = 97 * (*(v14 + v18 - 6784 * (((1266205 * v18) >> 32) >> 1)) ^ 0x27);
  v34 = *(v16 + 8 * v5);
  LODWORD(STACK[0x3850]) = 1;
  LODWORD(STACK[0x33B0]) = v13;
  LODWORD(STACK[0x35C0]) = STACK[0x3428];
  LODWORD(STACK[0x33C0]) = STACK[0x3A88];
  STACK[0x3640] = LODWORD(STACK[0x3420]);
  LODWORD(STACK[0x3880]) = STACK[0x34A0];
  STACK[0x3608] = LODWORD(STACK[0x3410]);
  STACK[0x3600] = LODWORD(STACK[0x33F8]);
  STACK[0x3878] = LODWORD(STACK[0x3498]);
  LODWORD(STACK[0x34B0]) = STACK[0x3AA8];
  LODWORD(STACK[0x3390]) = v12;
  LODWORD(STACK[0x3398]) = STACK[0x3A90];
  LODWORD(STACK[0x3388]) = v15;
  LODWORD(STACK[0x3380]) = a5;
  LODWORD(STACK[0x3370]) = STACK[0x3A98];
  LODWORD(STACK[0x3358]) = STACK[0x3A50];
  LODWORD(STACK[0x3378]) = STACK[0x3A68];
  LODWORD(STACK[0x3360]) = STACK[0x3AC8];
  LODWORD(STACK[0x33A8]) = v26;
  LODWORD(STACK[0x34B8]) = STACK[0x39D8];
  LODWORD(STACK[0x3350]) = STACK[0x3AA0];
  STACK[0x38A0] = LODWORD(STACK[0x34E0]);
  STACK[0x35F0] = LODWORD(STACK[0x3440]);
  LODWORD(STACK[0x35D8]) = STACK[0x33D0];
  LODWORD(STACK[0x3868]) = STACK[0x3510];
  STACK[0x38A8] = LODWORD(STACK[0x3470]);
  STACK[0x35F8] = LODWORD(STACK[0x33F0]);
  LODWORD(STACK[0x35C8]) = STACK[0x3430];
  LODWORD(STACK[0x34C8]) = 1;
  STACK[0x35D0] = LODWORD(STACK[0x33C8]);
  STACK[0x3870] = LODWORD(STACK[0x3458]);
  STACK[0x3A50] = v32;
  STACK[0x3820] = LODWORD(STACK[0x3468]);
  LODWORD(STACK[0x3858]) = STACK[0x3478];
  LODWORD(STACK[0x3860]) = STACK[0x3460];
  STACK[0x3888] = LODWORD(STACK[0x3448]);
  STACK[0x3A58] = v33;
  LODWORD(STACK[0x35E0]) = STACK[0x33D8];
  STACK[0x3898] = LODWORD(STACK[0x34D8]);
  LODWORD(STACK[0x35B0]) = STACK[0x3408];
  STACK[0x3890] = LODWORD(STACK[0x34D0]);
  STACK[0x3828] = LODWORD(STACK[0x3488]);
  return v34();
}

uint64_t sub_1007A444C()
{
  LODWORD(STACK[0x3530]) = LODWORD(STACK[0x39E8]) ^ v0 ^ LODWORD(STACK[0x3468]) ^ (LODWORD(STACK[0x3458]) - LODWORD(STACK[0x3430]));
  LODWORD(STACK[0x3570]) = LODWORD(STACK[0x3460]) + STACK[0x3570];
  LODWORD(STACK[0x3480]) = LODWORD(STACK[0x36E8]) + STACK[0x3578];
  LODWORD(STACK[0x3878]) = 0;
  LODWORD(STACK[0x36A8]) = LODWORD(STACK[0x3580]) | 0x26262626;
  LODWORD(STACK[0x36B0]) = STACK[0x3448] + LODWORD(STACK[0x3450]);
  LODWORD(STACK[0x3578]) = LODWORD(STACK[0x3438]) ^ STACK[0x3440];
  LODWORD(STACK[0x36B8]) = LODWORD(STACK[0x36F0]) ^ LODWORD(STACK[0x3588]);
  v1 = STACK[0x37B0];
  LODWORD(STACK[0x36A0]) = LODWORD(STACK[0x3478]) + LODWORD(STACK[0x37B0]);
  v2 = STACK[0x39D0];
  LODWORD(STACK[0x3588]) = (LODWORD(STACK[0x3898]) ^ LODWORD(STACK[0x39D0])) + v1;
  v3 = STACK[0x3938];
  v4 = STACK[0x3A08];
  LODWORD(STACK[0x3880]) = v2 ^ LODWORD(STACK[0x39D8]) ^ LODWORD(STACK[0x39C0]) ^ LODWORD(STACK[0x3988]) ^ LODWORD(STACK[0x3970]) ^ LODWORD(STACK[0x38B8]) ^ LODWORD(STACK[0x3920]) ^ LODWORD(STACK[0x3958]) ^ LODWORD(STACK[0x3960]) ^ LODWORD(STACK[0x39B0]) ^ LODWORD(STACK[0x3AD8]) ^ LODWORD(STACK[0x38D8]) ^ LODWORD(STACK[0x38C8]) ^ LODWORD(STACK[0x3950]) ^ LODWORD(STACK[0x3948]) ^ LODWORD(STACK[0x39A8]) ^ LODWORD(STACK[0x39A0]) ^ LODWORD(STACK[0x3AD0]) ^ LODWORD(STACK[0x3980]) ^ LODWORD(STACK[0x3938]) ^ LODWORD(STACK[0x3A08]) ^ LODWORD(STACK[0x3990]);
  v5 = STACK[0x39E0];
  v6 = STACK[0x39C8];
  v7 = STACK[0x39B8];
  v8 = STACK[0x3908];
  v9 = STACK[0x3968];
  v10 = STACK[0x38F8];
  v11 = STACK[0x3918];
  v12 = STACK[0x3860];
  v13 = LODWORD(STACK[0x39C8]) ^ LODWORD(STACK[0x39E0]) ^ LODWORD(STACK[0x39B8]) ^ LODWORD(STACK[0x3908]) ^ LODWORD(STACK[0x38F8]) ^ LODWORD(STACK[0x3968]) ^ LODWORD(STACK[0x3918]) ^ LODWORD(STACK[0x3860]) ^ LODWORD(STACK[0x3978]) ^ LODWORD(STACK[0x3AC8]) ^ LODWORD(STACK[0x3AB8]);
  v14 = LODWORD(STACK[0x3870]) ^ LODWORD(STACK[0x3868]);
  v15 = STACK[0x3A00];
  v16 = LODWORD(STACK[0x3A00]) ^ LODWORD(STACK[0x3A10]);
  LODWORD(STACK[0x3448]) = v16;
  LODWORD(STACK[0x3478]) = v13 ^ v16 ^ v14 ^ LODWORD(STACK[0x38E8]) ^ LODWORD(STACK[0x3998]);
  v17 = STACK[0x3930];
  v18 = STACK[0x3AA0] << STACK[0x3930];
  v19 = STACK[0x38B0];
  v20 = STACK[0x3A98];
  v21 = STACK[0x3AB0] >> v20;
  LODWORD(STACK[0x3470]) = v21;
  v22 = v20;
  LODWORD(v18) = ((v19 & v18) >> v17) | ((v19 & v21) << v20);
  v23 = STACK[0x3928];
  v24 = STACK[0x38A0];
  v25 = STACK[0x38A0] & (((v18 ^ ((v18 & v23) >> 1)) & v23) >> 2) ^ v18 ^ ((v18 & v23) >> 1);
  LOBYTE(v21) = STACK[0x3A90];
  v26 = STACK[0x3838];
  v27 = STACK[0x38A8];
  v28 = STACK[0x38A8] & (STACK[0x3838] << v21);
  v29 = STACK[0x3AA8];
  v30 = STACK[0x3A88];
  STACK[0x3580] = STACK[0x3AA8] >> STACK[0x3A88];
  v31 = v29;
  v32 = ((v27 & (v29 >> v30)) << v30) | (v28 >> v21);
  v33 = STACK[0x39F0];
  v34 = ((v32 & STACK[0x39F0]) >> LODWORD(STACK[0x36D0])) ^ v32;
  LODWORD(v29) = (v24 & v23) >> 2;
  LODWORD(STACK[0x36F0]) = v29;
  v35 = v29 & ((v25 & v23) >> 4) & v24 ^ v25;
  LODWORD(v18) = STACK[0x38C0];
  v36 = STACK[0x38C0] & ((v34 & v33) >> 2) ^ v34;
  LOBYTE(v30) = v22;
  v37 = v31 >> v22;
  LODWORD(v29) = STACK[0x3910];
  v38 = (STACK[0x3910] & (v31 >> v22)) << v22;
  LOBYTE(v31) = v30;
  STACK[0x36E8] = v26 << v17;
  v39 = ((v29 & (v26 << v17)) >> v17) + v38;
  LODWORD(v30) = v15 ^ v3 ^ LODWORD(STACK[0x3A10]) ^ v4;
  LODWORD(v29) = STACK[0x38D0];
  LODWORD(STACK[0x3AE8]) = v8 ^ LODWORD(STACK[0x38D0]);
  LODWORD(v26) = STACK[0x3940];
  LODWORD(STACK[0x39E8]) = v5 ^ LODWORD(STACK[0x3940]);
  LODWORD(STACK[0x39D0]) = v2 ^ v29;
  LODWORD(STACK[0x39E0]) = v7 ^ v26;
  v40 = LODWORD(STACK[0x39D8]) ^ v29;
  LODWORD(STACK[0x39D8]) = v40;
  LODWORD(STACK[0x39C8]) = v6 ^ v29;
  v41 = LODWORD(STACK[0x39C0]) ^ v29;
  LODWORD(STACK[0x39B8]) = v41;
  LODWORD(STACK[0x39C0]) = v10 ^ v26;
  v42 = v30 ^ v14 ^ v8 ^ v29 ^ v7 ^ v26 ^ v5 ^ v26 ^ v2 ^ v29 ^ v6 ^ v29 ^ v40 ^ v10 ^ v26 ^ v41;
  v43 = LODWORD(STACK[0x3988]) ^ v29;
  v44 = LODWORD(STACK[0x3970]) ^ v29;
  LODWORD(STACK[0x3898]) = v44;
  LODWORD(STACK[0x3970]) = v43;
  LODWORD(STACK[0x3968]) = v9 ^ v26;
  LODWORD(STACK[0x38F8]) = v11 ^ v26;
  v45 = v43 ^ v9 ^ v26 ^ v11 ^ v26 ^ v44;
  LODWORD(STACK[0x3440]) = v45;
  LODWORD(STACK[0x38B0]) = v12 ^ v26;
  v46 = v42 ^ v45 ^ v12 ^ v26;
  v47 = LODWORD(STACK[0x3AD8]) ^ v26;
  LODWORD(STACK[0x3890]) = v47;
  v48 = LODWORD(STACK[0x3920]) ^ v29;
  LODWORD(STACK[0x3AD8]) = v48;
  v49 = LODWORD(STACK[0x39B0]) ^ v26;
  LODWORD(STACK[0x3988]) = v49;
  LODWORD(v30) = LODWORD(STACK[0x3958]) ^ v29;
  LODWORD(STACK[0x39B0]) = v30;
  v50 = LODWORD(STACK[0x3960]) ^ v26;
  LODWORD(STACK[0x3888]) = v50;
  v51 = LODWORD(STACK[0x38B8]) ^ v26;
  LODWORD(STACK[0x38A8]) = v51;
  v52 = v46 ^ v51 ^ v30 ^ v48 ^ v50 ^ v49 ^ v47;
  v53 = LODWORD(STACK[0x3978]) ^ v26;
  LODWORD(STACK[0x3920]) = v53;
  v54 = LODWORD(STACK[0x39A0]) ^ v29;
  LODWORD(STACK[0x37B0]) = v54;
  v55 = LODWORD(STACK[0x39A8]) ^ v29;
  LODWORD(STACK[0x3918]) = v55;
  v56 = LODWORD(STACK[0x38D8]) ^ v29;
  v57 = LODWORD(STACK[0x38C8]) ^ v29;
  LODWORD(STACK[0x36E0]) = v56;
  LODWORD(STACK[0x3908]) = v57;
  v58 = v53 ^ v56 ^ v57;
  v59 = LODWORD(STACK[0x3950]) ^ v26;
  LODWORD(STACK[0x3910]) = v59;
  v60 = v58 ^ v59;
  v61 = LODWORD(STACK[0x3948]) ^ v26;
  LODWORD(STACK[0x36C0]) = v61;
  v62 = v52 ^ v60 ^ v61 ^ v55 ^ v54;
  v63 = LODWORD(STACK[0x38E8]) ^ v29;
  LODWORD(STACK[0x39A8]) = v63;
  v64 = STACK[0x38E0];
  LODWORD(STACK[0x3460]) = LODWORD(STACK[0x3880]) ^ LODWORD(STACK[0x38E0]);
  v65 = LODWORD(STACK[0x3998]) ^ v26;
  LODWORD(STACK[0x39A0]) = v65;
  v66 = LODWORD(STACK[0x3990]) ^ v29;
  LODWORD(STACK[0x3998]) = v66;
  v67 = v64 ^ v29;
  LODWORD(STACK[0x3990]) = v67;
  v68 = LODWORD(STACK[0x3AB8]) ^ v29;
  LODWORD(STACK[0x3978]) = v68;
  v69 = LODWORD(STACK[0x3980]) ^ v26;
  LODWORD(STACK[0x3980]) = v69;
  v70 = LODWORD(STACK[0x3AD0]) ^ v29;
  LODWORD(STACK[0x3AD0]) = v70;
  v71 = LODWORD(STACK[0x3AC8]) ^ v29;
  LODWORD(STACK[0x3880]) = v71;
  LODWORD(STACK[0x3468]) = v62 ^ v70 ^ v69 ^ v71 ^ v68 ^ v63 ^ v66 ^ v65 ^ v67;
  v72 = (v18 & v33) >> 2;
  LODWORD(STACK[0x3960]) = v72 & ((v36 & v33) >> 4) & v18 ^ v36;
  v73 = v18 & (((v39 ^ ((v39 & v33) >> 1)) & v33) >> 2) ^ v39 ^ ((v39 & v33) >> 1);
  v74 = STACK[0x3AA0];
  v75 = STACK[0x3AA0] << v21;
  v76 = STACK[0x3A88];
  v77 = STACK[0x3AB0];
  v78 = ((STACK[0x37E8] & (STACK[0x3AB0] >> v76)) << v76) | ((STACK[0x37E8] & v75) >> v21);
  v79 = v72 & ((v73 & v33) >> 4) & v18 ^ v73;
  v80 = v24 & (((v78 ^ ((v78 & v23) >> 1)) & v23) >> 2) ^ v78 ^ ((v78 & v23) >> 1);
  v81 = STACK[0x3900];
  LODWORD(STACK[0x3458]) = v75;
  LOBYTE(v66) = v21;
  v82 = ((v81 & v37) << v31) | ((v81 & (v74 << v21)) >> v21);
  v83 = v24 & (((v82 ^ ((v82 & v23) >> 1)) & v23) >> 2) ^ v82 ^ ((v82 & v23) >> 1);
  v84 = STACK[0x36E8];
  v85 = ((STACK[0x37A8] & (v77 >> v76)) << v76) ^ ((STACK[0x37A8] & STACK[0x36E8]) >> v17);
  v86 = STACK[0x36F0];
  LODWORD(STACK[0x3900]) = STACK[0x36F0] & ((v80 & v23) >> 4) & v24 ^ v80;
  v87 = v18 & (((v85 ^ ((v85 & v33) >> 1)) & v33) >> 2) ^ v85 ^ ((v85 & v33) >> 1);
  v88 = v86 & ((v83 & v23) >> 4) & v24 ^ v83;
  v89 = ((STACK[0x38F0] & (v77 >> v76)) << v76) ^ ((STACK[0x38F0] & v75) >> v66);
  LODWORD(STACK[0x3450]) = v72;
  LODWORD(STACK[0x38F0]) = v72 & ((v87 & v33) >> 4) & v18 ^ v87;
  v90 = v24 & (((v89 ^ ((v89 & v23) >> 1)) & v23) >> 2) ^ v89 ^ ((v89 & v23) >> 1);
  v91 = v86 & ((v90 & v23) >> 4) & v24 ^ v90;
  LOBYTE(v12) = v31;
  v92 = ((STACK[0x3818] & v84) >> v17) | ((STACK[0x3818] & v37) << v31);
  v93 = v18 & (((v92 ^ ((v92 & v33) >> 1)) & v33) >> 2) ^ v92 ^ ((v92 & v33) >> 1);
  LODWORD(STACK[0x38E0]) = v72 & ((v93 & v33) >> 4) & v18 ^ v93;
  LODWORD(STACK[0x3AC8]) = v35;
  v94 = STACK[0x3838];
  v95 = (((v35 ^ ((v35 & v23) >> 1)) & v77) >> v76) + (((v35 ^ ((v35 & v23) >> 1)) & STACK[0x3838]) << v66);
  v96 = STACK[0x37A0];
  v97 = 4647 * (*(STACK[0x37A0] + 150) ^ 0x5F) + 14331348;
  LODWORD(STACK[0x3AB8]) = v79;
  v98 = v74;
  v99 = (((v79 ^ ((v79 & v23) >> 1)) & v77) >> v76) + (((v79 ^ ((v79 & v23) >> 1)) & v74) << v17);
  v100 = STACK[0x3AE0];
  v101 = *(STACK[0x3AE0] + v97 - 6784 * (((1266205 * v97) >> 32) >> 1)) + 117;
  LOBYTE(v85) = v101 ^ 0x12 ^ (v101 >> 2) & 0x12;
  v102 = 4647 * (v96[141] ^ 9) + 23973873;
  v103 = *(STACK[0x3AE0] + v102 - 6784 * (((1266205 * v102) >> 32) >> 1));
  v104 = 4647 * ((v85 + 26) ^ 0x84) + 23973873;
  v105 = *(STACK[0x3AE0] + v104 - 6784 * (((1266205 * v104) >> 32) >> 1));
  v106 = 4647 * (((v96[154] ^ 0xB1) + 111) ^ 0x36) + 17937420;
  v107 = v106 - 6784 * (((1266205 * v106) >> 32) >> 1);
  LOBYTE(v106) = (v105 >> 5) | (8 * v105);
  LOBYTE(v105) = *(STACK[0x3AE0] + v107) ^ 0xE;
  LODWORD(STACK[0x3958]) = v88;
  v108 = v88 ^ ((v88 & v33) >> 1);
  LODWORD(STACK[0x38E8]) = v91;
  v109 = v91 ^ ((v91 & v33) >> 1);
  v110 = v109 & v98 ^ v108 & v94;
  v111 = LODWORD(STACK[0x3948]) ^ LODWORD(STACK[0x3950]) ^ LODWORD(STACK[0x38C8]) ^ LODWORD(STACK[0x38D8]) ^ LODWORD(STACK[0x38B8]) ^ LODWORD(STACK[0x3860]) ^ LODWORD(STACK[0x3938]);
  v112 = LODWORD(STACK[0x3870]) ^ v26;
  LODWORD(v94) = LODWORD(STACK[0x3448]) ^ LODWORD(STACK[0x3A08]);
  LODWORD(STACK[0x3950]) = v112;
  LODWORD(v94) = v111 ^ v94 ^ v112;
  v113 = LODWORD(STACK[0x3868]) ^ v26;
  LODWORD(STACK[0x3948]) = v113;
  LODWORD(STACK[0x3870]) = v94 ^ v113 ^ LODWORD(STACK[0x39E8]) ^ LODWORD(STACK[0x39D0]) ^ LODWORD(STACK[0x39C8]) ^ LODWORD(STACK[0x39D8]) ^ LODWORD(STACK[0x39E0]) ^ LODWORD(STACK[0x3AE8]) ^ LODWORD(STACK[0x39C0]) ^ LODWORD(STACK[0x39B8]) ^ LODWORD(STACK[0x3440]) ^ LODWORD(STACK[0x39B0]) ^ LODWORD(STACK[0x3AD8]) ^ LODWORD(STACK[0x3888]) ^ LODWORD(STACK[0x3988]) ^ LODWORD(STACK[0x3890]) ^ LODWORD(STACK[0x3920]) ^ LODWORD(STACK[0x3918]) ^ LODWORD(STACK[0x37B0]) ^ LODWORD(STACK[0x3AD0]) ^ LODWORD(STACK[0x3980]) ^ LODWORD(STACK[0x3880]) ^ LODWORD(STACK[0x3978]) ^ LODWORD(STACK[0x39A8]) ^ LODWORD(STACK[0x3998]) ^ LODWORD(STACK[0x39A0]) ^ LODWORD(STACK[0x3990]) ^ ((v108 & STACK[0x3AA8]) >> v12) ^ (v110 << v66) ^ ((v109 & v77) >> v76) ^ v99 ^ v95 ^ LODWORD(STACK[0x3530]);
  LODWORD(v94) = 4647 * (((v105 >> 3) | (32 * v105)) ^ 0x84) + 23973873;
  v114 = v94 - 6784 * (((1266205 * v94) >> 32) >> 1);
  LODWORD(v94) = 4647 * (v96[151] ^ 0x11) + 1189632;
  v115 = 4647 * (v96[152] ^ 0x69) + 9544938;
  LODWORD(STACK[0x38D8]) = ((v103 >> 5) | (8 * v103)) ^ 0x9B;
  LOBYTE(v94) = *(v100 + v94 - 6784 * (((1266205 * v94) >> 32) >> 1));
  LODWORD(v94) = (v94 ^ ((v94 ^ 0x91) >> 5) ^ ((v94 ^ 0x91) >> 1)) ^ 0x80 | ((v106 ^ 0xD0) << 8);
  v116 = 4647 * ((((*(v100 + v115 - 6784 * (((1266205 * v115) >> 32) >> 1)) - 87) ^ 0xFB) + 85) ^ 0xC6) + 1189632;
  v117 = v116 - 6784 * (((1266205 * v116) >> 32) >> 1);
  v118 = *(v100 + v117) ^ ((*(v100 + v117) ^ 0x91) >> 5) ^ ((*(v100 + v117) ^ 0x91) >> 1);
  LODWORD(v77) = 4647 * (v96[149] ^ 0x21) + 1189632;
  v119 = 4647 * ((((v118 ^ 0xB6) >> 1) | (v118 << 7)) ^ 0x40) + 15539568;
  v120 = 4647 * (((v96[146] >> 1) | (v96[146] << 7)) ^ 0xD9) + 19140993;
  LOBYTE(v77) = *(v100 + v77 - 6784 * (((1266205 * v77) >> 32) >> 1));
  LODWORD(v94) = v94 & 0xFF00FFFF | (((v77 ^ ((v77 ^ 0x91) >> 5) ^ ((v77 ^ 0x91) >> 1)) ^ 0xAC) << 16);
  LODWORD(v77) = 4647 * ((97 * (*(v100 + v120 - 6784 * (((1266205 * v120) >> 32) >> 1)) ^ 0x27)) ^ 3) + 23973873;
  v121 = (97 * (*(v100 + v119 - 6784 * (((1266205 * v119) >> 32) >> 1)) ^ 0xA2)) ^ 0xBA;
  v122 = *(v100 + v77 - 6784 * (((1266205 * v77) >> 32) >> 1));
  v123 = 4647 * (((((v122 >> 5) | (8 * v122)) ^ 0x2D) + 111) ^ 0x1C) + 4767822;
  LOBYTE(v123) = *(v100 + v123 - 6784 * (((1266205 * v123) >> 32) >> 1)) ^ 0xE3;
  LODWORD(v77) = 4647 * (v96[144] ^ 0xCD) + 23973873;
  v124 = ((((*(v100 + v114) >> 5) | (8 * *(v100 + v114))) ^ 0x8D) << 8) | (v121 << 24);
  v125 = *(v100 + v77 - 6784 * (((1266205 * v77) >> 32) >> 1));
  v126 = 4647 * (((v125 >> 5) | (8 * v125)) ^ 0x5D) + 9544938;
  v127 = v126 - 6784 * (((1266205 * v126) >> 32) >> 1);
  v128 = 4647 * (v96[153] ^ 0x82) + 23973873;
  v129 = *(v100 + v128 - 6784 * (((1266205 * v128) >> 32) >> 1));
  LODWORD(v77) = 4647 * (v96[145] ^ 0xD1) + 23973873;
  LODWORD(v77) = *(v100 + v77 - 6784 * (((1266205 * v77) >> 32) >> 1));
  v130 = 4647 * (((v96[155] >> 1) | (v96[155] << 7)) ^ 0xF3) + 19140993;
  v131 = 4647 * ((97 * (*(v100 + v130 - 6784 * (((1266205 * v130) >> 32) >> 1)) ^ 0x27)) ^ 0xC6) + 1189632;
  v132 = (((v123 >> 3) | (32 * v123)) << 8) | (((((*(v100 + v127) - 87) ^ 0xFFFFFFFB) + 85) ^ 0xAE) << 24);
  v133 = 4647 * (v96[143] ^ 0xC4) + 14331348;
  v134 = v124 & 0xFF00FFFF | ((((v129 >> 5) | (8 * v129)) ^ 0x69) << 16);
  v135 = *(v100 + v133 - 6784 * (((1266205 * v133) >> 32) >> 1)) + 117;
  v136 = v132 & 0xFF00FFFF | ((((v77 >> 5) | (8 * v77)) ^ 0xB6) << 16);
  v137 = 4647 * (((v135 ^ 0x12 ^ (v135 >> 2) & 0x12) + 26) ^ 0x1B) + 1189632;
  v138 = v134 & 0xFFFFFF00 | *(v100 + v131 - 6784 * (((1266205 * v131) >> 32) >> 1)) ^ 0x91 ^ ((*(v100 + v131 - 6784 * (((1266205 * v131) >> 32) >> 1)) ^ 0x91) >> 5) ^ ((*(v100 + v131 - 6784 * (((1266205 * v131) >> 32) >> 1)) ^ 0x91) >> 1);
  v139 = 4647 * (v96[147] ^ 0x28) + 1189632;
  LOBYTE(v139) = *(v100 + v139 - 6784 * (((1266205 * v139) >> 32) >> 1));
  v140 = 4647 * ((v139 ^ ((v139 ^ 0x91) >> 5) ^ ((v139 ^ 0x91) >> 1)) ^ 0x72) + 14331348;
  v141 = 4647 * (v96[148] ^ 0xE9) + 23973873;
  v142 = *(v100 + v140 - 6784 * (((1266205 * v140) >> 32) >> 1)) + 117;
  LODWORD(v77) = 4647 * (*STACK[0x3798] ^ 0xB8) + 9544938;
  v143 = *(v100 + v141 - 6784 * (((1266205 * v141) >> 32) >> 1));
  v144 = 4647 * (((v143 >> 5) | (8 * v143)) ^ 0x5D) + 9544938;
  LODWORD(v77) = 4647 * ((((*(v100 + v77 - 6784 * (((1266205 * v77) >> 32) >> 1)) - 87) ^ 0xFB) + 85) ^ 0x1F) + 23973873;
  LOBYTE(v137) = *(v100 + v137 - 6784 * (((1266205 * v137) >> 32) >> 1));
  LOBYTE(v72) = STACK[0x38D8];
  LODWORD(v77) = *(v100 + v77 - 6784 * (((1266205 * v77) >> 32) >> 1));
  v145 = ((v77 >> 5) | (8 * v77)) ^ 0xD0;
  LODWORD(v77) = 4647 * (v96[142] ^ 0xE7) + 23973873;
  LODWORD(STACK[0x3798]) = v94 | (((((*(v100 + v144 - 6784 * (((1266205 * v144) >> 32) >> 1)) - 87) ^ 0xFFFFFFFB) + 85) ^ 0xFFFFFF87) << 24);
  LODWORD(STACK[0x37A8]) = v136 & 0xFFFFFF00 | ((v142 ^ 0x12 ^ (v142 >> 2) & 0x12) + 26) ^ 0x8D;
  LODWORD(v94) = *(v100 + v77 - 6784 * (((1266205 * v77) >> 32) >> 1));
  LODWORD(STACK[0x37A0]) = (v137 ^ ((v137 ^ 0x91) >> 5) ^ ((v137 ^ 0x91) >> 1)) ^ 0x36 | (v72 << 16) | (v145 << 24) | ((((v94 >> 5) | (8 * v94)) ^ 0x16) << 8);
  LODWORD(STACK[0x36F8]) = ((STACK[0x3838] & STACK[0x36F8]) << v17) + STACK[0x3598];
  LODWORD(STACK[0x3448]) = (STACK[0x3590] << v17) ^ STACK[0x34D8];
  LODWORD(STACK[0x3418]) = (STACK[0x3490] << v17) | LODWORD(STACK[0x35A0]);
  v146 = STACK[0x3A98];
  LODWORD(v94) = STACK[0x35A8] + (STACK[0x34A8] >> LODWORD(STACK[0x3A98]));
  LOBYTE(v77) = STACK[0x3A90];
  LODWORD(STACK[0x35C0]) = (STACK[0x34A0] << v77) ^ (STACK[0x35C0] >> v76);
  v147 = STACK[0x38C0];
  v148 = STACK[0x3AA0];
  LODWORD(STACK[0x3408]) = ((STACK[0x3AA0] & (LODWORD(STACK[0x36A8]) ^ STACK[0x38C0] & 0x2020202)) << v17) ^ ((STACK[0x3AB0] & (LODWORD(STACK[0x36A8]) ^ STACK[0x38C0] & 0x2020202)) >> v146);
  v149 = STACK[0x3588];
  LODWORD(v18) = STACK[0x36A0];
  LODWORD(STACK[0x34D8]) = LODWORD(STACK[0x36A0]) - LODWORD(STACK[0x3588]);
  v150 = 1976000833 * v18;
  v151 = 1976000833 * v149;
  LODWORD(STACK[0x35D0]) = STACK[0x34B8] + (STACK[0x35D0] >> v146);
  v152 = STACK[0x34B0];
  LODWORD(STACK[0x35D8]) = LODWORD(STACK[0x34B0]) + (STACK[0x35D8] >> v76);
  v153 = v152 + STACK[0x3708];
  v154 = v148 & STACK[0x3738];
  LODWORD(STACK[0x3738]) = (v154 << v17) + STACK[0x34D0];
  LODWORD(STACK[0x3710]) = STACK[0x3710] ^ (STACK[0x35F0] >> v76);
  LODWORD(STACK[0x3818]) = LODWORD(STACK[0x3768]) ^ v29;
  LODWORD(STACK[0x38B8]) = LODWORD(STACK[0x37D0]) ^ v29;
  LODWORD(STACK[0x3810]) ^= v29;
  LODWORD(STACK[0x3808]) ^= v29;
  LODWORD(STACK[0x38D8]) = LODWORD(STACK[0x3750]) ^ v29;
  LODWORD(STACK[0x38C8]) = LODWORD(STACK[0x3760]) ^ v29;
  LODWORD(STACK[0x37D0]) = LODWORD(STACK[0x3758]) ^ v29;
  LODWORD(STACK[0x35A8]) = LODWORD(STACK[0x37F0]) ^ v29;
  LODWORD(STACK[0x3598]) = LODWORD(STACK[0x3748]) ^ v29;
  LODWORD(STACK[0x3590]) = LODWORD(STACK[0x3800]) ^ v29;
  LODWORD(STACK[0x35A0]) = LODWORD(STACK[0x37F8]) ^ v29;
  LODWORD(v18) = ((STACK[0x36E8] & v29) >> v17) + ((STACK[0x3580] & v29) << v76);
  LODWORD(v18) = STACK[0x38A0] & (((v18 ^ ((v18 & v23) >> 1)) & v23) >> 2) ^ v18 ^ ((v18 & v23) >> 1);
  LODWORD(STACK[0x34D0]) = STACK[0x36F0] & ((v18 & v23) >> 4) & STACK[0x38A0] ^ v18;
  LOBYTE(v24) = v77;
  v155 = STACK[0x3608];
  LODWORD(STACK[0x38A0]) = (v154 << v77) | LODWORD(STACK[0x3608]);
  LODWORD(STACK[0x3750]) = (v154 << v77) + v155;
  LODWORD(STACK[0x3748]) = STACK[0x3620] | (STACK[0x34C0] >> v76);
  LODWORD(v18) = STACK[0x3638] << v77;
  LODWORD(STACK[0x3760]) = v18 | LODWORD(STACK[0x3728]);
  v156 = v18 + LODWORD(STACK[0x34C8]);
  v157 = STACK[0x3680];
  LODWORD(STACK[0x3768]) = STACK[0x3548] + LODWORD(STACK[0x3680]);
  v158 = LODWORD(STACK[0x3720]) + v157;
  v159 = STACK[0x3650] << v17;
  LODWORD(STACK[0x3758]) = v159 ^ (STACK[0x3648] >> v146);
  LODWORD(v77) = v159 ^ (STACK[0x3660] >> v76);
  LODWORD(STACK[0x37F8]) = LODWORD(STACK[0x3858]) ^ v26;
  LODWORD(STACK[0x3800]) = LODWORD(STACK[0x37E0]) ^ v26;
  LODWORD(STACK[0x38D0]) = LODWORD(STACK[0x3778]) ^ v26;
  LODWORD(STACK[0x37E0]) = LODWORD(STACK[0x3850]) ^ v26;
  LODWORD(STACK[0x37F0]) = LODWORD(STACK[0x37D8]) ^ v26;
  LODWORD(STACK[0x36A0]) = LODWORD(STACK[0x3848]) ^ v26;
  LODWORD(STACK[0x37E8]) = LODWORD(STACK[0x3780]) ^ v26;
  LODWORD(STACK[0x3588]) = LODWORD(STACK[0x3770]) ^ v26;
  LODWORD(STACK[0x36A8]) = LODWORD(STACK[0x3788]) ^ v26;
  LODWORD(STACK[0x37D8]) = LODWORD(STACK[0x3790]) ^ v26;
  LODWORD(STACK[0x3868]) = LODWORD(STACK[0x37C0]) ^ v26;
  LODWORD(STACK[0x3580]) = LODWORD(STACK[0x3840]) ^ v26;
  LODWORD(STACK[0x3860]) = LODWORD(STACK[0x37C8]) ^ v26;
  LODWORD(v154) = ((STACK[0x3458] & v26) >> v24) ^ ((STACK[0x3470] & v26) << v146);
  LODWORD(v154) = v147 & (((v154 ^ ((v154 & v33) >> 1)) & v33) >> 2) ^ v154 ^ ((v154 & v33) >> 1);
  LODWORD(STACK[0x34C8]) = STACK[0x3450] & ((v154 & v33) >> 4) & v147 ^ v154;
  v160 = STACK[0x3700] + LODWORD(STACK[0x35B0]);
  v161 = LODWORD(STACK[0x35B8]) ^ LODWORD(STACK[0x35B0]);
  v162 = LODWORD(STACK[0x3460]) ^ LODWORD(STACK[0x3478]);
  v163 = STACK[0x3830];
  v164 = LODWORD(STACK[0x3830]) ^ LODWORD(STACK[0x3480]) ^ v162;
  LODWORD(v96) = LODWORD(STACK[0x3498]) ^ LODWORD(STACK[0x36C8]);
  LODWORD(v148) = STACK[0x3870];
  v165 = STACK[0x3530];
  LODWORD(STACK[0x34C0]) = LODWORD(STACK[0x3830]) ^ v94 ^ LODWORD(STACK[0x36C8]) ^ LODWORD(STACK[0x3498]) ^ (944955881 * LODWORD(STACK[0x3530])) ^ (944955881 * (LODWORD(STACK[0x3870]) ^ LODWORD(STACK[0x3538])));
  v166 = LODWORD(STACK[0x3600]) ^ (STACK[0x35F8] >> v76);
  LODWORD(STACK[0x34B8]) = STACK[0x3618] ^ (STACK[0x3610] >> v146) ^ v163 ^ (22280137 * v165) ^ (22280137 * (v96 ^ v165));
  LODWORD(v29) = STACK[0x3468];
  LODWORD(STACK[0x34B0]) = v164 ^ LODWORD(STACK[0x3468]);
  LODWORD(v94) = v163 ^ v153 ^ (-2071480443 * v162) ^ (-2071480443 * v29);
  LODWORD(v29) = v165 ^ LODWORD(STACK[0x34F0]);
  LODWORD(STACK[0x34A8]) = v29;
  LODWORD(STACK[0x34A0]) = v94 ^ v150 ^ v151 ^ (1870827051 * v29) ^ (1870827051 * (v148 ^ 0x91A77DF4));
  LODWORD(v154) = STACK[0x3640] ^ (STACK[0x3550] << v24);
  v167 = STACK[0x3698];
  LODWORD(STACK[0x3498]) = LODWORD(STACK[0x3698]) ^ 0x4D4D4D4D;
  LODWORD(STACK[0x3490]) = v167 ^ 0xD5D5D5D5;
  LODWORD(STACK[0x3790]) = v138 ^ 0x1B;
  v168 = STACK[0x35C8] >> v146;
  v169 = STACK[0x3630] << v17;
  v170 = v169 | LODWORD(STACK[0x3718]);
  v171 = STACK[0x3628] >> v76;
  LODWORD(v159) = STACK[0x3668] << v24;
  v172 = STACK[0x3670] >> v146;
  LOBYTE(v26) = v146;
  v173 = STACK[0x3518];
  v174 = LODWORD(STACK[0x3560]) + STACK[0x3518];
  v175 = STACK[0x3740] | LODWORD(STACK[0x3500]);
  LODWORD(STACK[0x37C8]) = STACK[0x3688] << v24;
  LODWORD(v17) = LODWORD(STACK[0x3730]) ^ STACK[0x3658];
  LODWORD(v96) = v169 + STACK[0x3658];
  LODWORD(v173) = STACK[0x3678] | v173;
  LODWORD(v29) = v159 + STACK[0x3568];
  v176 = STACK[0x36D0];
  LODWORD(STACK[0x38C0]) = LODWORD(STACK[0x36D0]) - 4091;
  v177 = *(STACK[0x3AC0] + 8 * v176);
  LODWORD(STACK[0x3470]) = STACK[0x3690] >> v26;
  LODWORD(STACK[0x3468]) = v163 ^ v160;
  LODWORD(STACK[0x3460]) = v161 ^ v163;
  LODWORD(STACK[0x3458]) = v163 ^ LODWORD(STACK[0x36F8]);
  LODWORD(STACK[0x3450]) = v163 ^ LODWORD(STACK[0x3448]);
  v178 = v163 ^ LODWORD(STACK[0x3488]);
  LODWORD(STACK[0x3448]) = v178;
  LODWORD(STACK[0x3440]) = v178 ^ v168;
  LODWORD(STACK[0x3438]) = v163 ^ (STACK[0x34F8] + LODWORD(STACK[0x3510]));
  LODWORD(STACK[0x3430]) = v163 ^ LODWORD(STACK[0x35E8]);
  LODWORD(STACK[0x3428]) = LODWORD(STACK[0x3570]) ^ v163;
  LODWORD(STACK[0x3420]) = v163 ^ LODWORD(STACK[0x35E0]);
  LODWORD(STACK[0x3418]) ^= v163;
  LODWORD(STACK[0x3410]) = LODWORD(STACK[0x35C0]) ^ v163;
  LODWORD(STACK[0x3408]) ^= v163;
  LODWORD(STACK[0x3400]) = LODWORD(STACK[0x3578]) ^ v163;
  LODWORD(STACK[0x33F8]) = v163 ^ LODWORD(STACK[0x36D8]);
  LODWORD(STACK[0x33F0]) = v163 ^ LODWORD(STACK[0x37B8]);
  LODWORD(STACK[0x33E8]) = v166 ^ v163;
  LODWORD(STACK[0x33E0]) = v163 ^ LODWORD(STACK[0x35D8]);
  LODWORD(STACK[0x33D8]) = v163 ^ LODWORD(STACK[0x35D0]);
  LODWORD(STACK[0x33D0]) = v163 ^ v96;
  LODWORD(STACK[0x33C8]) = v163 ^ LODWORD(STACK[0x36B0]);
  LODWORD(STACK[0x33C0]) = v17 ^ v163;
  STACK[0x3488] = v169;
  STACK[0x3480] = v171;
  LODWORD(STACK[0x33B8]) = v163 ^ (v169 | v171);
  LODWORD(STACK[0x33B0]) = v163 ^ LODWORD(STACK[0x3750]);
  LODWORD(STACK[0x33A8]) = LODWORD(STACK[0x36B8]) ^ v163;
  LODWORD(STACK[0x33A0]) = v163 ^ LODWORD(STACK[0x3748]);
  LODWORD(STACK[0x3398]) = v163 ^ v156;
  LODWORD(STACK[0x3390]) = v163 ^ v173;
  LODWORD(STACK[0x3388]) = v163 ^ v158;
  LODWORD(STACK[0x3380]) = v163 ^ v29;
  LODWORD(STACK[0x3378]) = v163 ^ v77;
  LODWORD(STACK[0x3370]) = v163 ^ LODWORD(STACK[0x3558]);
  LODWORD(STACK[0x3368]) = v163 ^ v170;
  LODWORD(STACK[0x3360]) = v154 ^ v163;
  LODWORD(STACK[0x3358]) = v163 ^ LODWORD(STACK[0x38A0]);
  LODWORD(STACK[0x3350]) = v163 ^ LODWORD(STACK[0x3738]);
  LODWORD(STACK[0x3348]) = v163 ^ LODWORD(STACK[0x3760]);
  LODWORD(STACK[0x3340]) = v163 ^ LODWORD(STACK[0x3710]);
  LODWORD(STACK[0x3478]) = v159;
  LODWORD(STACK[0x3338]) = v159 ^ v172 ^ v163;
  LODWORD(STACK[0x3330]) = v163 ^ LODWORD(STACK[0x3768]);
  LODWORD(STACK[0x3328]) = v163 ^ v174;
  LODWORD(STACK[0x3320]) = v163 ^ v175;
  LODWORD(STACK[0x3318]) = LODWORD(STACK[0x3758]) ^ v163;
  LODWORD(STACK[0x3310]) = LODWORD(STACK[0x3528]) ^ 0x66666666;
  STACK[0x37C0] = STACK[0x3B00];
  LODWORD(v173) = STACK[0x39F8];
  LODWORD(STACK[0x38A0]) = STACK[0x39F8];
  LODWORD(STACK[0x37B8]) = v173;
  return v177();
}

void sub_1007A5A9C()
{
  v0 = __chkstk_darwin();
  v1 = 800103191 * (v0 ^ 0x71444D63);
  v2 = *(v0 + 8) + v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 28) - v1;
  v5 = *v0;
  v6 = *(&off_101353600 + v2 - 27484) - 4;
  (*&v6[8 * v2 + 23832])(*(&off_101353600 + v2 - 27311), v10, 2696);
  (*&v6[8 * (v2 ^ 0xCE7)])(*(&off_101353600 + (v2 ^ 0x71AA)) - 8, v11, 25856);
  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && (v4 - 1854406247) > 0xF;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1007A65A8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  LODWORD(STACK[0x57B0]) = v11;
  LODWORD(STACK[0x5270]) = v9;
  *a8 = v8;
  a8[1] = v10;
  v12 = v10 ^ (v10 >> 26) ^ v8 ^ (v8 << 23) ^ ((v8 ^ (v8 << 23)) >> 17);
  v13 = (v12 ^ 0xF4C29045) << 23;
  v14 = v13 ^ v12 ^ 0xF4C29045;
  v15 = v10 ^ (v10 << 23) ^ ((v10 ^ (v10 << 23)) >> 17) ^ ((v12 ^ 0xF4C29045) >> 26);
  v16 = v15 ^ v12;
  v17 = v16 ^ (v16 << 23);
  v18 = v13 ^ (v14 >> 17) ^ v15 ^ (v16 >> 26);
  v19 = v17 ^ (v17 >> 17) ^ v18 ^ (v18 >> 26);
  v20 = v18 ^ (v18 << 23) ^ ((v18 ^ (v18 << 23)) >> 17) ^ v19 ^ ((v19 ^ 0xF4C29045) >> 26);
  v21 = v20 ^ (v20 << 23);
  v22 = v19 ^ 0xF4C29045 ^ ((v19 ^ 0xF4C29045) << 23) ^ ((v19 ^ 0xF4C29045 ^ ((v19 ^ 0xF4C29045) << 23)) >> 17) ^ v20 ^ (v20 >> 26);
  v23 = v21 ^ (v21 >> 17) ^ v22 ^ ((v22 ^ 0xF4C29045) >> 26);
  v24 = v23 ^ (v23 << 23);
  v25 = ((v22 ^ 0xF4C29045) << 23) ^ v22 ^ ((((v22 ^ 0xF4C29045) << 23) ^ v22 ^ 0xF4C29045) >> 17) ^ v23 ^ (v23 >> 26);
  v26 = v25 ^ (v25 << 23);
  v27 = v24 ^ (v24 >> 17) ^ v25 ^ (v25 >> 26);
  v28 = v27 ^ 0xF4C29045 ^ ((v27 ^ 0xF4C29045) << 23);
  v29 = v26 ^ (v26 >> 17) ^ v27 ^ ((v27 ^ 0xF4C29045) >> 26);
  v30 = v28 ^ (v28 >> 17) ^ v29 ^ (v29 >> 26);
  v31 = v29 ^ (v29 << 23) ^ ((v29 ^ (v29 << 23)) >> 17) ^ v30 ^ ((v30 ^ 0xF4C29045) >> 26);
  v32 = v30 ^ 0xF4C29045 ^ ((v30 ^ 0xF4C29045) << 23) ^ ((v30 ^ 0xF4C29045 ^ ((v30 ^ 0xF4C29045) << 23)) >> 17) ^ v31 ^ (v31 >> 26);
  v33 = v31 ^ (v31 << 23) ^ ((v31 ^ (v31 << 23)) >> 17) ^ v32 ^ ((v32 ^ 0xF4C29045) >> 26);
  v34 = v33 ^ (v33 << 23);
  STACK[0x5208] = v34;
  STACK[0x5200] = v34 >> 17;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1007A688C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = (v9 + v12 - ((v12 + v11 + ((v12 + v11) >> 16)) >> 8) + ((v12 + v11) >> 16) + a4) ^ 0xDC43FA82;
  v15 = v14 + (v14 >> 12) + ((v14 + (v14 >> 12)) >> 1);
  LODWORD(STACK[0x39E8]) = v15;
  v16 = (v15 ^ 0xEEF1EF74) - ((v15 ^ 0xEEF1EF74) >> 14) - (((v15 ^ 0xEEF1EF74) - ((v15 ^ 0xEEF1EF74) >> 14)) >> 2);
  LODWORD(STACK[0x3468]) = v16;
  v17 = (v16 ^ 0x6D797D25) - ((v16 ^ 0x6D797D25) >> 11);
  LODWORD(STACK[0x3458]) = v17;
  LODWORD(STACK[0x3430]) = v17 >> 2;
  v18 = STACK[0x38E0];
  v19 = LODWORD(STACK[0x3968]) ^ LODWORD(STACK[0x3A08]) ^ LODWORD(STACK[0x38B0]) ^ LODWORD(STACK[0x3910]) ^ LODWORD(STACK[0x3900]) ^ LODWORD(STACK[0x38F0]) ^ LODWORD(STACK[0x3870]) ^ LODWORD(STACK[0x3868]) ^ LODWORD(STACK[0x39E0]) ^ LODWORD(STACK[0x39D0]) ^ LODWORD(STACK[0x39C8]) ^ LODWORD(STACK[0x39D8]) ^ LODWORD(STACK[0x39B8]) ^ LODWORD(STACK[0x3908]) ^ LODWORD(STACK[0x38F8]) ^ LODWORD(STACK[0x39C0]) ^ LODWORD(STACK[0x3988]) ^ LODWORD(STACK[0x3918]) ^ LODWORD(STACK[0x3970]) ^ LODWORD(STACK[0x3860]) ^ LODWORD(STACK[0x38B8]) ^ LODWORD(STACK[0x3958]) ^ LODWORD(STACK[0x3920]) ^ LODWORD(STACK[0x3960]) ^ LODWORD(STACK[0x39B0]) ^ LODWORD(STACK[0x3AD8]) ^ LODWORD(STACK[0x3978]) ^ LODWORD(STACK[0x38D8]) ^ LODWORD(STACK[0x38C8]) ^ LODWORD(STACK[0x3950]) ^ LODWORD(STACK[0x3948]) ^ LODWORD(STACK[0x39A8]) ^ LODWORD(STACK[0x39A0]) ^ LODWORD(STACK[0x3AD0]) ^ LODWORD(STACK[0x3980]) ^ LODWORD(STACK[0x3AC8]) ^ LODWORD(STACK[0x3AB8]) ^ LODWORD(STACK[0x3938]) ^ LODWORD(STACK[0x3A00]) ^ LODWORD(STACK[0x3A10]) ^ LODWORD(STACK[0x38E8]) ^ LODWORD(STACK[0x3998]) ^ LODWORD(STACK[0x3990]) ^ LODWORD(STACK[0x38E0]) ^ LODWORD(STACK[0x3878]) ^ LODWORD(STACK[0x3758]) ^ LODWORD(STACK[0x38A8]) ^ LODWORD(STACK[0x37E8]) ^ LODWORD(STACK[0x37A8]) ^ LODWORD(STACK[0x3818]) ^ LODWORD(STACK[0x3858]) ^ LODWORD(STACK[0x37D8]) ^ LODWORD(STACK[0x3810]) ^ LODWORD(STACK[0x37E0]) ^ LODWORD(STACK[0x3760]) ^ LODWORD(STACK[0x3780]);
  v20 = STACK[0x37C0];
  v21 = STACK[0x3848];
  LODWORD(STACK[0x36C8]) ^= v19 ^ LODWORD(STACK[0x3790]) ^ LODWORD(STACK[0x36C0]) ^ LODWORD(STACK[0x36E0]) ^ LODWORD(STACK[0x36B8]) ^ LODWORD(STACK[0x37C0]) ^ LODWORD(STACK[0x3770]) ^ LODWORD(STACK[0x37F0]) ^ LODWORD(STACK[0x3748]) ^ LODWORD(STACK[0x36A8]) ^ LODWORD(STACK[0x36D0]) ^ LODWORD(STACK[0x36A0]) ^ LODWORD(STACK[0x36B0]) ^ LODWORD(STACK[0x3800]) ^ LODWORD(STACK[0x37F8]) ^ LODWORD(STACK[0x3840]) ^ LODWORD(STACK[0x37C8]) ^ a7 ^ LODWORD(STACK[0x3880]) ^ LODWORD(STACK[0x3890]) ^ v7 ^ LODWORD(STACK[0x3888]) ^ LODWORD(STACK[0x3898]) ^ LODWORD(STACK[0x3778]) ^ LODWORD(STACK[0x3788]) ^ LODWORD(STACK[0x3750]) ^ LODWORD(STACK[0x3848]) ^ LODWORD(STACK[0x3808]) ^ LODWORD(STACK[0x3768]) ^ LODWORD(STACK[0x37D0]) ^ LODWORD(STACK[0x3850]);
  LODWORD(STACK[0x3898]) = (((((v8 ^ v21) + LODWORD(STACK[0x3530]) + 2 * (v8 & v21)) ^ LODWORD(STACK[0x39F8])) + a3) ^ v20) - v18;
  v22 = *(v13 + 8 * v10);
  LODWORD(STACK[0x36D0]) = (v10 + 1071450056) & 0xC022BDB1;
  return v22(1266205, 6784, 2953229927, STACK[0x3308], 245, 413, 4042322161, 0);
}

uint64_t sub_1007A6C70@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDDA4]) = a1;
  LODWORD(STACK[0xB4C0]) = v2;
  LODWORD(STACK[0x9ED8]) = v2 + 24;
  LODWORD(STACK[0x59AC]) = v2 + 44;
  LODWORD(STACK[0x99A4]) = v2 + 48;
  v3 = LODWORD(STACK[0x8644]) + v2 + 48 - 769884012 - ((2 * (LODWORD(STACK[0x8644]) + v2 + 48)) & 0xA4390128);
  LODWORD(STACK[0x90E0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 + 9192)))(v3 ^ 0xD21C8094);
  STACK[0x77A8] = v5;
  return (*(v4 + 8 * (((v5 == 0) * (v1 ^ 0x5825)) ^ (v1 - 6049))))();
}

uint64_t sub_1007A6DB8()
{
  v2 = (*(v1 + 8 * ((v0 & 0xE2B35FE7) + 25340)))(128);
  STACK[0x11B8] = v2 + 0x683CBC57EAB92A3ELL;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 & 0xE2B35FE7) + 16067) ^ 0xB7D0DB4E ^ ((v0 & 0xE2B35FE7) - 1208105329) & 0xFFD2A3BF)) ^ v0 & 0xE2B35FE7)))();
}

uint64_t sub_1007A6F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  *(v30 - 232) = (v29 + 397125375) ^ (1917435887 * ((-580926057 - ((v30 - 240) | 0xDD5FC597) + ((v30 - 240) | 0x22A03A68)) ^ 0xC41B616E));
  STACK[0x25D0] = 0;
  v31 = (*(v27 + 8 * (v28 + v29 - 4)))(v30 - 240);
  v33 = *a23 != ((v29 - 2559145) & 0x7E877FDF) - 13635 || *a27 == 0;
  return (*(v27 + 8 * ((v33 * (439 * (v29 ^ 0x819FC21F) - 8223)) ^ (v29 + 2120250153))))(v31);
}

uint64_t sub_1007A7120()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 - 7727)))(v2);
}

uint64_t sub_1007A714C@<X0>(int a1@<W8>)
{
  v2 = a1 - 18070;
  v3 = STACK[0xB2A8];
  v4 = a1 - 22256;
  STACK[0xC4F0] = *(STACK[0xB2A8] + 56);
  LODWORD(STACK[0xBEAC]) = *(v3 + 64);
  STACK[0xAAD8] = STACK[0xB918];
  STACK[0x8C48] = STACK[0x95B0];
  LODWORD(STACK[0xC264]) = v1;
  STACK[0x59B0] = STACK[0xAFC8];
  LODWORD(STACK[0x701C]) = STACK[0xAC68];
  LODWORD(STACK[0x9C6C]) = STACK[0x7AF0];
  STACK[0x8CF8] = STACK[0x93F0];
  LODWORD(STACK[0xA27C]) = STACK[0x5C7C];
  v5 = STACK[0x7ED8];
  v6 = (&STACK[0x10120] + STACK[0x7ED8]);
  STACK[0x85B0] = v6;
  STACK[0xB8C0] = v6;
  STACK[0x7D10] = (v6 + 2);
  STACK[0x6E38] = (v6 + 34);
  STACK[0xBF88] = (v6 + 36);
  STACK[0x7ED8] = v5 + 448;
  *v6 = 0;
  v7 = &STACK[0x10120] + v5;
  *(v7 + 1) = 0;
  STACK[0x7560] = (v7 + 8);
  STACK[0x1D270] = 0;
  STACK[0x96E8] = STACK[0x16F0];
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x240D)))(v6 + 2, 0, 256);
  v6[34] = 0;
  v6[35] = 0;
  v6[36] = 0;
  v6[37] = 0;
  STACK[0x93E0] = v6 + 292;
  STACK[0x9C28] = *(v8 + 8 * v4);
  return (*(v8 + 8 * (v2 + v4 - 290)))(v9);
}

uint64_t sub_1007A7348()
{
  v1 = STACK[0xCF00];
  v2 = *(STACK[0xCF00] + 8);
  v3 = STACK[0xAA70];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0x57D8] + 8 * (((v2 == 0) * ((((v0 - 1001512157) & 0x3BB1D63B) - 4231) ^ (v0 - 5947))) ^ v0)))();
}

uint64_t sub_1007A73BC@<X0>(int a1@<W8>)
{
  *(v2 + 3744) = v1;
  v4 = 2 * (a1 ^ 0x52EB);
  v5 = a1 - 11514;
  v6 = a1 - 17116;
  v7 = *(v3 + 24) + 16 * v1;
  v8 = v7 - *STACK[0x4D48];
  v9 = (v8 & 0xFFFFFFFFFFFFFFF0) + *STACK[0x4D38];
  v10 = v8 & 0xF;
  v11 = STACK[0x4E48];
  if ((v10 - 9) > 6)
  {
    v13 = (*(*v11 + 32 * *(v9 + 8) + 8))(*v9, &STACK[0xEF90], 8, v7);
  }

  else
  {
    v12 = STACK[0x4E48];
    (*(*v11 + 32 * *(v9 + 8) + 8))(*v9, &STACK[0xEF90], (16 - v10), v7);
    v13 = (*(*v12 + 32 * *(v9 + 24) + 8))(*(v9 + 16), &STACK[0xEF90] + (16 - v10), (v10 - 8), v7 + (16 - v10));
  }

  v14 = *(STACK[0x57D8] + 8 * (((STACK[0xEF90] == STACK[0xFD68]) * (v5 ^ v4 ^ 0x6AF2)) ^ v6));
  LODWORD(STACK[0xEFB0]) = v4;
  return v14(v13);
}

uint64_t sub_1007A7510()
{
  STACK[0x7ED8] -= 160;
  LODWORD(STACK[0x5A94]) = 1978581539;
  STACK[0xB928] = 4;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2440)))(&STACK[0x1D1CD], &STACK[0xA190], &STACK[0xB928], 0, 0);
  v4 = STACK[0x3940];
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ (551690071 * STACK[0x3940]);
  LODWORD(STACK[0x1D4D0]) = 551690071 * v4;
  LODWORD(STACK[0x1D4C4]) = (v0 - 1542325190) ^ (551690071 * v4);
  LODWORD(STACK[0x1D4C8]) = ((v0 - 1542323571) ^ 0x29) - 551690071 * v4;
  STACK[0x1D4D8] = -551690071 * v4;
  STACK[0x1D4E0] = 551690071 * v4 + v3;
  LODWORD(STACK[0x1D4CC]) = v0 - 1542323571 - 551690071 * v4;
  v5 = (*(v2 + 8 * (v0 + 9201)))(v1 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1007A7620()
{
  v0 = STACK[0x1E98];
  v1 = (LODWORD(STACK[0x1E98]) - 1710) | 0x12;
  v2 = STACK[0x57D8];
  STACK[0x8860] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1E98]));
  return (*(v2 + 8 * (v0 ^ 0x20F0 ^ v1)))();
}

uint64_t sub_1007A76C0@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v22 = *STACK[0x868] & STACK[0x890];
  v23 = __ROR8__(a3 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = *(*a1 + (((a3 & 0xFFFFFFF8) - 103642729) & v22));
  v25 = ((v19 & (2 * (v24 + v23))) - (v24 + v23) + 0x1B9C946F64D0021) ^ 0xF5AF980F69133C46;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) | 0x8BD74511541E65AALL) - (v27 + v26) - 0x45EBA288AA0F32D5) ^ 0x50D9E06696FF589CLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v5;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xE5AF1AB32EBD3CDDLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0x98D153F71FB4C90ELL) + 0x4C68A9FB8FDA6487) ^ 0x8BB5600D439FD3A6;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (0xC703CE1273D29E4FLL - ((v37 + v36) | 0xC703CE1273D29E4FLL) + ((v37 + v36) | 0x38FC31ED8C2D61B0)) ^ 0x90DA1148D5FFBBC8;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = *(*a1 + (((a4 & 0xFFFFFFF8) - 103642729) & v22));
  v41 = __ROR8__(v38, 8) + v39;
  v42 = __ROR8__(a4 & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = __ROR8__((((2 * (v40 + v42)) & 0x6D82CA1EC61524D8) - (v40 + v42) + 0x493E9AF09CF56D93) ^ 0xBD28CBB903AB51F4, 8);
  v44 = (((2 * (v40 + v42)) & 0x6D82CA1EC61524D8) - (v40 + v42) + 0x493E9AF09CF56D93) ^ 0xBD28CBB903AB51F4 ^ __ROR8__(v40, 61);
  v45 = (((2 * v41) | 0x271C0F44E21DF42ALL) - v41 - 0x138E07A2710EFA15) ^ 0x4C03EB9CD296F00ELL;
  v46 = (((2 * (v43 + v44)) & 0x454CD87A35B9B8BCLL) - (v43 + v44) - 0x22A66C3D1ADCDC5FLL) ^ 0xC86BD12CD9D349E8;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v5;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v45, 8) + (v45 ^ __ROR8__(v39, 61));
  v51 = __ROR8__(v48, 8);
  v52 = __ROR8__((((v51 + v49) & 0xE0443A27746A10ABLL ^ v16) + ((v51 + v49) & v21 ^ v15) - 1) ^ a5, 8);
  v53 = (((v51 + v49) & 0xE0443A27746A10ABLL ^ v16) + ((v51 + v49) & v21 ^ v15) - 1) ^ a5 ^ __ROR8__(v49, 61);
  v54 = (v52 + v53) ^ 0xC7DDC9F6CC45B721;
  v55 = __ROR8__(v54, 8);
  v56 = v54 ^ __ROR8__(v53, 61);
  v57 = (v55 + v56 - (v13 & (2 * (v55 + v56))) + v14) ^ v20;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v7;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  *v6 = (((v12 - ((v61 + v60) | v12) + ((v61 + v60) | v10)) ^ v18) >> (v8 & 0x38)) ^ ((v50 ^ 0xC1C3C8D2A4C54828) >> (v11 & 0x38)) ^ *v9;
  return (*(v17 + 8 * ((3989 * (a2 == 0)) ^ LODWORD(STACK[0x8A0]))))();
}

uint64_t sub_1007A7A58@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = *(v6 - 140) + (a5 ^ 0xD21C8094);
  *(v6 - 140) = v7;
  v8 = (((a5 ^ 0x8F75CE67) + 1888104857) ^ ((a5 ^ 0x3015E37B) - 806740859) ^ ((a5 ^ 0x6D7CAD88) - 1836906940 + 2 * (v5 ^ 0x6A34))) - 493486823;
  v9 = v8 < 0x10797C85;
  v10 = (((v5 ^ 0x6A34) - 6627) ^ 0x107970B2) + v7 < v8;
  if (v7 > 0xEF86837A != v9)
  {
    v10 = v9;
  }

  return (*(a1 + 8 * ((26 * !v10) ^ v5)))();
}

uint64_t sub_1007A7BC0()
{
  v2 = (*(v1 + 8 * (v0 + 16804)))();
  STACK[0x1318] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1007A854C@<X0>(int a1@<W8>)
{
  v3 = (v1 + 1447118383) & 0xA9BEDAD6;
  LODWORD(STACK[0x57C0]) = v3;
  LODWORD(STACK[0xE074]) = v2;
  v4 = a1 + 259035599 != ((6 * (v3 ^ 0x56EF)) ^ 0x7FA7147F);
  return (*(STACK[0x57D8] + 8 * (v4 | (2 * v4) | v1)))();
}

uint64_t sub_1007A86CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 384);
  STACK[0xCD40] = a1;
  *(v2 + 388) = 0;
  LODWORD(STACK[0x6BEC]) = v3 - 4;
  v4 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * a2);
  return (*(v4 + 8 * (a2 ^ 0x1770)))();
}

uint64_t sub_1007A8884(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _BYTE *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x2D8]) = a52 + 6728;
  v76 = v74 + LODWORD(STACK[0x210]);
  v77 = (4007 * (243 * (v76 >> 28) - 27142)) >> 16;
  v78 = 243 * (((a52 + 6728) ^ 0x2E5E) & HIBYTE(v76)) - 27142;
  v79 = LODWORD(STACK[0x218]) - v73 - 142853307;
  v80 = 243 * ((v76 >> 20) & 0xF) - 27142;
  v81 = ((*(STACK[0x2C8] + (v78 - 965 * ((((4007 * v78) >> 16) + (((v78 - ((4007 * v78) >> 16)) & 0xFFFE) >> 1)) >> 9))) ^ 0x32) << 8) ^ ((*(STACK[0x2C8] + (243 * (v76 >> 28) - 27142 - 965 * ((v77 + (((243 * (v76 >> 28) - 27142 - v77) & 0xFFFE) >> 1)) >> 9))) ^ 0x32) << 12);
  v82 = (4007 * (243 * (BYTE2(v76) & 0xF) - 27142)) >> 16;
  v83 = 243 * (BYTE2(v76) & 0xF) - 27142 - 965 * ((v82 + (((243 * (BYTE2(v76) & 0xF) - 27142 - v82) & 0xFFFE) >> 1)) >> 9);
  v84 = v81 & 0x9000;
  v85 = v81 | *(STACK[0x2C8] + v83) ^ 0x32;
  v86 = (4007 * (243 * ((v74 + LOWORD(STACK[0x210])) >> 12) - 27142)) >> 16;
  v87 = 243 * ((v74 + LOWORD(STACK[0x210])) >> 12) - 27142 - 965 * ((v86 + (((243 * ((v74 + LOWORD(STACK[0x210])) >> 12) - 27142 - v86) & 0xFFFE) >> 1)) >> 9);
  v88 = (v85 << 8) ^ ((*(STACK[0x2C8] + (v80 - 965 * ((((4007 * v80) >> 16) + (((v80 - ((4007 * v80) >> 16)) & 0xFFFE) >> 1)) >> 9))) ^ 0x32) << 12);
  v89 = 243 * (((v76 >> 8) & 0xF) + (((v84 ^ 0x9096) + v84) & 0x12096)) + 1944;
  v90 = (4007 * (243 * ((v74 + LOBYTE(STACK[0x210])) >> 4) - 27142)) >> 16;
  LOWORD(v84) = 243 * ((v74 + LOBYTE(STACK[0x210])) >> 4) - 27142 - 965 * ((v90 + (((243 * ((v74 + LOBYTE(STACK[0x210])) >> 4) - 27142 - v90) & 0xFFFE) >> 1)) >> 9);
  v91 = *(STACK[0x2C8] + v87) ^ 0x32;
  v92 = v88 | *(STACK[0x2C8] + v89 - 965 * (((35605947 * v89) >> 32) >> 3)) ^ 0x32;
  v93 = (v92 << 8) ^ (v91 << 12);
  v94 = (4007 * (243 * (v79 >> 28) - 27142)) >> 16;
  LOWORD(v91) = 243 * (v79 >> 28) - 27142 - 965 * ((v94 + (((243 * (v79 >> 28) - 27142 - v94) & 0xFFFE) >> 1)) >> 9);
  v95 = (4007 * (243 * (v76 & 0xF) - 27142)) >> 16;
  LOWORD(v94) = 243 * (v76 & 0xF) - 27142 - 965 * ((v95 + (((243 * (v76 & 0xF) - 27142 - v95) & 0xFFFE) >> 1)) >> 9);
  LOWORD(v95) = 243 * (HIBYTE(v79) & 0xF) - 27142;
  v96 = *(STACK[0x2C8] + v94) ^ 0x32;
  v97 = (v93 | v96) ^ (16 * (*(STACK[0x2C8] + v84) ^ 0x32));
  v98 = 243 * ((v79 >> 20) & 0xF) - 27142;
  v99 = (4007 * (243 * (BYTE2(v79) & 0xF) - 27142)) >> 16;
  v100 = 243 * (BYTE2(v79) & 0xF) - 27142 - 965 * ((v99 + (((243 * (BYTE2(v79) & 0xF) - 27142 - v99) & 0xFFFE) >> 1)) >> 9);
  v101 = ((*(STACK[0x2C8] + (v95 - 965 * ((((4007 * v95) >> 16) + (((v95 - ((4007 * v95) >> 16)) & 0xFFFE) >> 1)) >> 9))) ^ 0x32) << 8) ^ ((*(STACK[0x2C8] + v91) ^ 0x32) << 12);
  v102 = (4007 * (243 * (v79 >> 12) - 27142)) >> 16;
  LOWORD(v95) = 243 * (v79 >> 12) - 27142 - 965 * ((v102 + (((243 * (v79 >> 12) - 27142 - v102) & 0xFFFE) >> 1)) >> 9);
  LOWORD(v102) = 243 * ((v79 >> 8) & 0xF) - 27142;
  v103 = ((v101 | *(STACK[0x2C8] + v100) ^ 0x32) << 8) ^ ((*(STACK[0x2C8] + (v98 - 965 * ((((4007 * v98) >> 16) + (((v98 - ((4007 * v98) >> 16)) & 0xFFFE) >> 1)) >> 9))) ^ 0x32) << 12);
  v104 = (4007 * (243 * (v79 >> 4) - 27142)) >> 16;
  v105 = ((v103 | *(STACK[0x2C8] + (v102 - 965 * ((((4007 * v102) >> 16) + (((v102 - ((4007 * v102) >> 16)) & 0xFFFE) >> 1)) >> 9))) ^ 0x32) << 8) ^ ((*(STACK[0x2C8] + v95) ^ 0x32) << 12);
  v106 = (4007 * (243 * (v79 & 0xF) - 27142)) >> 16;
  v107 = *(STACK[0x2C8] + (243 * (v79 & 0xF) - 27142 - 965 * ((v106 + (((243 * (v79 & 0xF) - 27142 - v106) & 0xFFFE) >> 1)) >> 9))) ^ 0x32;
  v108 = v96 & 0xF;
  v109 = 243 * (v108 | (16 * (v107 & 0xF)));
  v110 = v109 + 106191 - 965 * ((4450744 * (v109 + 106191)) >> 32);
  v111 = 243 * (*(STACK[0x2C8] + (v109 + 43254 - 965 * ((4450744 * (v109 + 43254)) >> 32))) ^ (16 * (LOBYTE(STACK[0x877]) ^ 0x32)) ^ 0x32);
  v112 = v111 + 43254 - 965 * ((4450744 * (v111 + 43254)) >> 32);
  v113 = (*(STACK[0x2C8] + (v111 + 106191 - 965 * ((4450744 * (v111 + 106191)) >> 32))) >> 4) ^ 3;
  v114 = 243 * ((v113 - ((2 * v113) & 4) + 50) ^ *(STACK[0x2C8] + v110)) + 43254;
  LOBYTE(v79) = *(STACK[0x2C8] + (243 * (v79 >> 4) - 27142 - 965 * ((v104 + (((243 * (v79 >> 4) - 27142 - v104) & 0xFFFE) >> 1)) >> 9))) ^ ((v105 | v107) >> 4) ^ 0x32;
  v115 = 243 * ((v97 >> 4) | (16 * (v79 & 0xF)));
  v116 = v115 + 106191 - 965 * ((4450744 * (v115 + 106191)) >> 32);
  v117 = 243 * (*(STACK[0x2C8] + (v115 + 43254 - 965 * ((4450744 * (v115 + 43254)) >> 32))) ^ (16 * (*(STACK[0x2C8] + (v114 - 965 * ((4450744 * v114) >> 32))) ^ 0x32)) ^ 0x32);
  v118 = v117 + 43254 - 965 * ((4450744 * (v117 + 43254)) >> 32);
  v119 = *(STACK[0x2C8] + (v117 + 106191 - 965 * ((4450744 * (v117 + 106191)) >> 32))) >> 4;
  v120 = 243 * (((v119 ^ 3) - 2 * ((v119 ^ 3) & 6 ^ v119 & 4) + 50) ^ *(STACK[0x2C8] + v116)) + 43254;
  v121 = 243 * (v79 & 0xF0 | (v97 >> 8) & 0xF);
  v122 = 243 * (*(STACK[0x2C8] + (v121 + 43254 - 965 * ((4450744 * (v121 + 43254)) >> 32))) ^ (16 * (*(STACK[0x2C8] + (v120 - 965 * ((4450744 * v120) >> 32))) ^ 0x32)) ^ 0x32);
  v123 = v122 + 43254 - 965 * ((4450744 * (v122 + 43254)) >> 32);
  v124 = (*(STACK[0x2C8] + (v122 + 106191 - 965 * ((4450744 * (v122 + 106191)) >> 32))) >> 4) ^ 3;
  v125 = 243 * ((v124 - ((2 * v124) & 4) + 50) ^ *(STACK[0x2C8] + (v121 + 106191 - 965 * ((4450744 * (v121 + 106191)) >> 32)))) + 43254;
  v126 = 243 * ((v105 >> 8) & 0xF0 | (v93 >> 12));
  v127 = 243 * (*(STACK[0x2C8] + (v126 + 43254 - 965 * ((4450744 * (v126 + 43254)) >> 32))) ^ (16 * (*(STACK[0x2C8] + (v125 - 965 * ((4450744 * v125) >> 32))) ^ 0x32)) ^ 0x32);
  v128 = v127 + 43254 - 965 * ((4450744 * (v127 + 43254)) >> 32);
  v129 = (*(STACK[0x2C8] + (v127 + 106191 - 965 * ((4450744 * (v127 + 106191)) >> 32))) >> 4) ^ 3;
  v130 = 243 * ((v129 + (~(2 * v129) | 0xFB) + 51) ^ *(STACK[0x2C8] + (v126 + 106191 - 965 * ((4450744 * (v126 + 106191)) >> 32)))) + 43254;
  v131 = 243 * ((v105 >> 12) & 0xF0 | HIWORD(v93) & 0xF);
  v132 = *(STACK[0x2C8] + (v130 - 965 * ((4450744 * v130) >> 32))) ^ 0x32;
  v133 = 243 * (((~(32 * v132) | 0xFFFFE0BF) + 16 * v132 + 1065263016) ^ *(STACK[0x2C8] + (v131 + 43254 - 965 * ((4450744 * (v131 + 43254)) >> 32))) ^ 0x3F7E9F95);
  v134 = (v133 + 43254) % 0x3C5;
  v135 = 243 * (*(STACK[0x2C8] + (v131 + 106191 - 965 * ((4450744 * (v131 + 106191)) >> 32))) ^ (*(STACK[0x2C8] + (v133 + 106191) % 0x3C5) >> 4) ^ 0x31) + 43254;
  v136 = 243 * ((v103 >> 8) & 0xF0 | (v88 >> 12));
  v137 = *(STACK[0x2C8] + (v135 - 965 * ((4450744 * v135) >> 32))) ^ 0x32;
  v138 = v136 + 106191 - 965 * ((4450744 * (v136 + 106191)) >> 32);
  v139 = 243 * (*(STACK[0x2C8] + (v136 + 43254 - 965 * ((4450744 * (v136 + 43254)) >> 32))) ^ 0x71DC15EF ^ (16 * v137 - ((32 * v137) & 0xBA0) + 1910248925));
  v140 = (v139 + 43254) % 0x3C5u;
  v141 = 243 * ((v103 >> 12) & 0xF0 | HIWORD(v88) & 0xF);
  v142 = 243 * (*(STACK[0x2C8] + v138) ^ (*(STACK[0x2C8] + (v139 + 106191) % 0x3C5u) >> 4) ^ 0x31) + 43254;
  v143 = *(STACK[0x2C8] + (v142 - 965 * ((4450744 * v142) >> 32))) ^ 0x32;
  v144 = *(STACK[0x2C8] + (v141 + 106191 - 965 * ((4450744 * (v141 + 106191)) >> 32)));
  v145 = 243 * (*(STACK[0x2C8] + (v141 + 43254 - 965 * ((4450744 * (v141 + 43254)) >> 32))) ^ 0x82FCF287 ^ (16 * v143 - 2097355854 - ((32 * v143) & 0x560) + 3843));
  v146 = (v145 + 43254) % 0x3C5;
  v147 = 243 * (v144 ^ (*(STACK[0x2C8] + (v145 + 106191) % 0x3C5) >> 4) ^ 0x31) + 43254;
  v148 = 243 * ((v101 >> 8) & 0xF0 | (v92 >> 20) & 0xF) + 43254;
  v149 = *(STACK[0x2C8] + (v147 - 965 * ((4450744 * v147) >> 32))) ^ 0x32;
  v150 = STACK[0x2D0];
  v151 = (243 * (*(STACK[0x2C8] + (v148 - 965 * ((4450744 * v148) >> 32))) ^ 0x30EBE3C8 ^ (16 * v149 + 820765640 - 32 * (v149 & 0x3Fu) + 50)) + 43254) % 0x3C5;
  LOBYTE(v148) = *(STACK[0x2C8] + v112) ^ 0x32;
  v152 = 243 * (v108 & 0xFFFFFF0F | (16 * (v148 & 0xF))) + 170829;
  v153 = v152 - 965 * ((4450744 * v152) >> 32);
  LOBYTE(v152) = *(STACK[0x2C8] + v118) ^ 0x32;
  v154 = 243 * ((v148 ^ (16 * v152)) & 0xF0 | (v97 >> 4)) + 170829;
  LOBYTE(v149) = *(STACK[0x2C8] + v123) ^ 0x32;
  v155 = 243 * ((v152 ^ (16 * v149)) & 0xF0 | (v97 >> 8) & 0xF) + 170829;
  v156 = v155 - 965 * ((4450744 * v155) >> 32);
  v157 = *(STACK[0x2C8] + (v154 - 965 * ((4450744 * v154) >> 32))) ^ 0x32;
  v158 = 16 * v157 - 222104761 - ((32 * v157) & 0x6E0);
  v159 = *(STACK[0x2C8] + v153);
  v160 = v159 ^ 0xF2C2F347 ^ (v158 + 46);
  LOBYTE(v153) = *(STACK[0x2C8] + v128) ^ 0x32;
  v161 = 243 * ((v149 ^ (16 * v153)) & 0xF0 | (v93 >> 12)) + 170829;
  LOBYTE(v118) = *(STACK[0x2C8] + v140);
  LOBYTE(v128) = *(STACK[0x2C8] + v134);
  v162 = ((((16 * v118) ^ 0x20) - 32 * (v118 & 1) - 108) ^ v128) & 0xF0 | (v88 >> 12);
  v163 = (v153 ^ (16 * v128)) & 0xF0 | HIWORD(v93) & 0xF;
  v164 = ((*(STACK[0x2C8] + (243 * (v163 ^ 0x20) + 170829 - 965 * ((4450744 * (243 * (v163 ^ 0x20u) + 170829)) >> 32))) ^ 0x32) << 16) ^ ((*(STACK[0x2C8] + (v161 - 965 * ((4450744 * v161) >> 32))) ^ 0x32) << 12);
  LOBYTE(v161) = *(STACK[0x2C8] + v146);
  LOBYTE(v151) = *(STACK[0x2C8] + v151) ^ 0x32;
  v165 = 243 * ((((((16 * v161) ^ 0x20) - ((32 * v161) & 0x80) + 77) ^ v118) & 0xF0 | HIWORD(v88) & 0xF) ^ 0x70) + 170829;
  v166 = 243 * ((((16 * v151 - 32 * (v151 & 3) - 74) ^ v161) & 0xF0 | (v92 >> 20) & 0xF) ^ 0x80) + 170829;
  v167 = v160 ^ ((*(STACK[0x2C8] + v156) ^ 0x32) << 8);
  v168 = ((*(STACK[0x2C8] + (v165 - 965 * ((4450744 * v165) >> 32))) ^ 0x32) << 24) ^ (*(STACK[0x2C8] + (243 * (v162 ^ 0xA0) + 170829 - 965 * ((4450744 * (243 * (v162 ^ 0xA0u) + 170829)) >> 32))) << 20) ^ v164 ^ v167;
  v169 = v168 ^ 0x3200000;
  v170 = (v168 ^ ((*(STACK[0x2C8] + (v166 - 965 * ((4450744 * v166) >> 32))) ^ 2u) << 28)) >> 28;
  v171 = ((v160 >> 4) & 0xC) == 0;
  v172 = 243 * (v160 >> 4);
  v173 = ((*(STACK[0x2C8] + (243 * (HIBYTE(v169) & 0xF) - 965 * (((1056321 * (HIBYTE(v169) & 0xF)) >> 16) >> 6))) ^ 0x32) << 8) ^ (*(STACK[0x2C8] + (243 * v170 - 965 * (((1056321 * v170) >> 16) >> 6))) << 12);
  v174 = (((v173 ^ 0xFFFFDFFF) & (*(STACK[0x2C8] + (243 * (BYTE2(v164) & 0xF) - 965 * (((1056321 * (HIWORD(v164) & 0xF)) >> 16) >> 6))) ^ 0xBCFAF0) | v173 & 0x30500) << 8) ^ ((*(STACK[0x2C8] + (243 * ((v169 >> 20) & 0xF) - 965 * (((1056321 * ((v169 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x32) << 12);
  v175 = a3 + 373486655;
  v176 = (((v174 ^ 0x431FF) & (*(STACK[0x2C8] + (243 * ((v167 >> 8) & 0xF) - 965 * (((1056321 * ((v167 >> 8) & 0xF)) >> 16) >> 6))) ^ 0xBCB3EA) | v174 & 0x434C00) << 8) ^ (*(STACK[0x2C8] + (243 * ((v164 ^ v167) >> 12) - 965 * (((1056321 * ((v164 ^ v167) >> 12)) >> 16) >> 6))) << 12);
  if (v171)
  {
    v177 = v172;
  }

  else
  {
    v177 = (v172 - 965) % 0x3C5u;
  }

  v178 = ((v176 ^ 0x10903FF) & (*(STACK[0x2C8] + (243 * (v159 & 0xF ^ 2) - 965 * (((1056321 * (v159 & 0xF ^ 2u)) >> 16) >> 6))) ^ 0x51C97B56) | v176 & 0xAE368400) ^ (16 * (*(STACK[0x2C8] + v177) ^ 0x32)) ^ 0xFFF9FB64;
  v179 = a72 ^ LODWORD(STACK[0x28C]);
  a17[1584] = (HIBYTE(v179) - ((v179 >> 23) & 0x96) + 75) ^ 0xA5;
  v180 = (v75 ^ 0xDCCF5ACA) & (2 * (v75 & 0x9EC85A90)) ^ v75 & 0x9EC85A90;
  v181 = ((2 * (v75 ^ 0xD8CF4BEA)) ^ 0x8C0E22F4) & (v75 ^ 0xD8CF4BEA) ^ (2 * (v75 ^ 0xD8CF4BEA)) & 0x4607117A;
  v182 = v181 ^ 0x4201110A;
  v183 = (v181 ^ 0x402014A) & (4 * v180) ^ v180;
  v184 = ((4 * v182) ^ 0x181C45E8) & v182 ^ (4 * v182) & 0x46071178;
  v185 = (v184 ^ 0x40172) & (16 * v183) ^ v183;
  v186 = ((16 * (v184 ^ 0x46031012)) ^ 0x607117A0) & (v184 ^ 0x46031012) ^ (16 * (v184 ^ 0x46031012)) & 0x46071170;
  v187 = v185 ^ 0x4607117A ^ (v186 ^ 0x4001115A) & (v185 << 8);
  v188 = STACK[0x224];
  v189 = STACK[0x200];
  v190 = LODWORD(STACK[0x200]) ^ LODWORD(STACK[0x224]) ^ 0x57718209;
  v191 = v178 - ((2 * v178) & 0x907C5CE6) - 935448973;
  v192 = a73 ^ LODWORD(STACK[0x208]);
  a17[1588] = ((~(v190 >> 23) | 0xD3) + HIBYTE(v190) + 23) ^ 0x63;
  a17[1592] = (((v192 ^ 0xE9C05F2B) >> 24) - (((v192 ^ 0xE9C05F2B) >> 23) & 0xFC) - 2) ^ 0xB3;
  a17[1596] = ((((a71 ^ a69 ^ 0xE8B0CB35) >> 23) & 0xE2) - ((a71 ^ a69 ^ 0xE8B0CB35) >> 24) + 14) ^ 0xA5;
  v193 = v175 ^ v75 ^ v76 ^ (2 * ((v187 << 16) & 0x46070000 ^ v187 ^ ((v187 << 16) ^ 0x117A0000) & (((v186 ^ 0x606005A) << 8) & 0x46070000 ^ 0x40060000 ^ (((v186 ^ 0x606005A) << 8) ^ 0x7110000) & (v186 ^ 0x606005A)))) ^ 0xDAFC5617 ^ v191;
  a17[1600] = ((~(v193 >> 23) | 0x3D) + HIBYTE(v193) - 30) ^ 0x29;
  a17[1585] = (((v179 ^ 0x26931B4D) >> 16) - (((v179 ^ 0x26931B4D) >> 15) & 0xB2) - 39) ^ 0xE5;
  a17[1589] = (BYTE2(v190) - ((v190 >> 15) & 0xEC) + 118) ^ 0xAA;
  a17[1593] = (((v192 ^ 0xE9C05F2B) >> 16) - (((v192 ^ 0xE9C05F2B) >> 15) & 0x54) - 86) ^ 0x8F;
  a17[1597] = (((a71 ^ a69 ^ 0xE8B0CB35) >> 16) - (((a71 ^ a69 ^ 0xE8B0CB35) >> 15) & 0x40) + 32) ^ 0xEE;
  a17[1601] = (BYTE2(v193) - ((v193 >> 15) & 0x8A) + 69) ^ 0x79;
  a17[1586] = (((v179 ^ 0x1B4D) >> 8) - (((v179 ^ 0x26931B4D) >> 7) & 0x44) - 94) ^ 0x86;
  v194 = (((v189 & 0x3200) - ((2 * v189) & 0x400) + 512) | v189 & 0xCD00 ^ 0x8000) ^ v188;
  a17[1590] = (BYTE1(v194) - ((v194 >> 7) & 0xC2) + 97) ^ 0xDF;
  a17[1594] = (((v192 ^ 0x5F2B) >> 8) - (((v192 ^ 0xE9C05F2B) >> 7) & 0x52) - 87) ^ 0x9C;
  a17[1598] = (((a71 ^ a69) >> 8) - (((a71 ^ a69) >> 7) & 0x7C) + 62) ^ 0x6B;
  a17[1602] = (BYTE1(v193) - ((v193 >> 7) & 0x78) - 68) ^ 0x98;
  a17[1587] = (v179 - ((2 * v179) & 0xB0) - 40) ^ 0xDB;
  a17[1591] = ((v189 ^ v188) - 2 * ((v189 ^ v188) & 7) + 7) ^ 0xD8;
  a17[1599] = ((a71 ^ a69) - ((2 * (a71 ^ a69)) & 0x5C) + 46) ^ 0x24;
  a17[1595] = (v192 - ((2 * v192) & 0xDF) + 111) ^ 0xC5;
  a17[1603] = (v193 - ((2 * v193) & 0xB4) - 38) ^ 0x94;
  return (*(v150 + 8 * a52))();
}

uint64_t sub_1007A997C@<X0>(unint64_t a1@<X2>, int a2@<W8>)
{
  v4 = STACK[0xDCB8];
  v5 = *(STACK[0xDCB8] + a1 % 0x1808);
  v6 = STACK[0xDCB0];
  v7 = *(STACK[0xDCB0] + 4 * ((6419 * (17 * (v3 ^ 0x50BD) + v5 + ((v5 < 0x4C) << 8)) - 84660191) % 0x2240));
  LODWORD(STACK[0x5620]) = *(STACK[0x55E0] + 2519);
  LODWORD(STACK[0x5640]) = *(STACK[0x5760] + 600);
  v8 = *(v4 + (5621 * (((HIBYTE(v7) ^ 0xF31AB8B3) + 1088445361) ^ ((HIBYTE(v7) ^ 0xB6C02AA5) + 87738791) ^ ((HIBYTE(v7) ^ 0x45DA9254) - 165645992)) + 774426368) % 0x1808);
  v9 = *(v4 + (5621 * (((v7 ^ 0x1C900F2A) - 2109791643) ^ ((v7 ^ 0x26051037) - 1196802694) ^ ((v7 ^ 0x3A951FFBu) - 1539689802)) - 981260435) % 0x1808);
  v10 = v8 & 0xDA ^ 0x13;
  v11 = *(v4 + 5621 * (BYTE2(v7) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v7) ^ 0x38u) + 32028458)) >> 32) >> 7));
  v12 = *(v4 + 5621 * (BYTE1(v7) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v7) ^ 0x8Fu) + 32028458)) >> 32) >> 7));
  v13 = v11 & 0xCE ^ 0x8D;
  v14 = v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * (v13 ^ v11 & 0x3A)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13));
  v15 = v12 & 0xF0 ^ 0xA6;
  v16 = (((v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * (v10 ^ v8 & 0x2E)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) ^ 0xDA) << 16) | ((v14 ^ 0xCE) << 8);
  v17 = v9 & 0x7A ^ 0x63;
  *(v6 + 4 * (v2 % 0x2240)) = ((((((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0x72F063) & ~v16 | v16 & 0x8D0F00) << 8) ^ 0xD3064940) & ((v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * (v17 ^ v9 & 0xE)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xFFFFFF3B) | (v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * (v17 ^ v9 & 0xE)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) & 0xBF) ^ 0xE3CE559C;
  return (*(STACK[0x57D8] + 8 * ((8257 * (a2 == 0)) ^ v3)))();
}

uint64_t sub_1007A9DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = STACK[0xD758];
  STACK[0x5790] = STACK[0xD758];
  v8 = *(STACK[0x56C0] + (*(v7 + 1) ^ 0xC7));
  v9 = STACK[0x56C0];
  LODWORD(STACK[0x57C0]) = a6;
  v10 = STACK[0x56E0];
  v11 = *(STACK[0x56E0] + (*(v7 + 14) ^ 0xEDLL)) + 28;
  v12 = v9;
  v13 = *(v9 + (*(v7 + 5) ^ 0x6FLL));
  LODWORD(v9) = *(v9 + (*(v7 + 13) ^ 0xB4));
  v14 = (((v9 ^ 0x4F) >> 3) | (32 * (v9 ^ 0x4F))) ^ 0x39;
  v15 = ((v8 ^ ((v8 ^ 0x4F) >> (a6 + 111)) ^ ((v8 ^ 0x4F) >> 2)) ^ 0x14) << 16;
  v16 = ((v13 ^ ((v13 ^ 0x4F) >> 4) ^ ((v13 ^ 0x4F) >> 2)) ^ 0x30) << 16;
  v17 = *(v7 + 3);
  v18 = (((v11 ^ (v11 >> 5) ^ (v11 >> 4)) ^ 0x7C) << 8) | ((*(STACK[0x56D0] + (*(v7 + 12) ^ 0x7ALL)) ^ *(v7 + 12) ^ 0xFFFFFFD6 ^ ((*(v7 + 12) ^ 0xFFFFFFD6) + 2) ^ 0xA0) << 24) | ((((v9 >> 2) ^ ((v9 ^ 0x4F) >> 4)) ^ 0x8B ^ ((v14 >> 5) | (8 * v14))) << 16) | ((*(v7 + 15) ^ 0xC3) - (*(v7 + 15) ^ 0xB1)) ^ *(STACK[0x56F0] + (*(v7 + 15) ^ 0x1CLL));
  v19 = (v15 & 0xFFFF00FF | ((((*(v10 + (*(v7 + 2) ^ 0xB5)) + 28) ^ ((*(v10 + (*(v7 + 2) ^ 0xB5)) + 28) >> 5) ^ ((*(v10 + (*(v7 + 2) ^ 0xB5)) + 28) >> 4)) ^ 5) << 8) | *(STACK[0x56F0] + (v17 ^ 0x8D))) ^ ((v17 ^ 0x52) - (v17 ^ 0x20));
  LOBYTE(v9) = *(STACK[0x56E0] + (*(v7 + 10) ^ 0xFBLL));
  LOBYTE(v17) = *(v12 + (*(v7 + 9) ^ 0x3ELL));
  LODWORD(v9) = ((((((2 * v9) & 0x38) + (v9 ^ 0x1C)) ^ ((((2 * v9) & 0x38) + (v9 ^ 0x1C)) >> 5) ^ ((((2 * v9) & 0x38) + (v9 ^ 0x1C)) >> 4)) ^ 0x8D) << 8) | (((v17 ^ ((v17 ^ 0x4F) >> 4) ^ ((v17 ^ 0x4F) >> 2)) ^ 0xD2) << 16);
  v20 = (*(v7 + 8) - ((2 * *(v7 + 8)) & 0x5A) + 173) & 0xB0 | *(v7 + 8) & 0x4Fu;
  v21 = (*v7 - ((2 * *v7) & 0x7C) - 66) ^ 0xFFFFFFAF;
  LODWORD(v20) = v9 | ((*(STACK[0x56D0] + (v20 ^ 0xCD)) ^ ((((v20 ^ 0x61) + 2) ^ v20 ^ 0x61) & 0xB7 | ((v20 ^ 0x61) + 2) & 0x48) ^ (v20 ^ 0x61) & 0x48 ^ 0xFFFFFFEF) << 24);
  v22 = v19 | ((*(STACK[0x56D0] + ((*v7 - ((2 * *v7) & 0x7C) - 66) ^ 3)) ^ v21 ^ (v21 + 2) ^ 0x74) << 24);
  v23 = *(v7 + 11);
  LODWORD(v9) = v16 & 0xFFFF00FF | ((((*(v10 + (*(v7 + 6) ^ 0x90)) + 28) ^ ((*(v10 + (*(v7 + 6) ^ 0x90)) + 28) >> 5) ^ ((*(v10 + (*(v7 + 6) ^ 0x90)) + 28) >> 4)) ^ 0xE7) << 8) | ((*(STACK[0x56D0] + (*(v7 + 4) ^ 0x27)) ^ *(v7 + 4) ^ 0xFFFFFF8B ^ ((*(v7 + 4) ^ 0xFFFFFF8B) + 2) ^ 0x94) << 24);
  LODWORD(v7) = *(v7 + 7);
  LODWORD(v20) = (v20 | ((v23 ^ 0x7F) - (v23 ^ 0xD)) ^ *(STACK[0x56F0] + (v23 ^ 0xA0))) ^ LODWORD(STACK[0x55C0]);
  v24 = ((LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x57A0]) ^ v22) - 281642655 - ((2 * (LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x57A0]) ^ v22)) & 0xDE6CF2C2)) ^ LODWORD(STACK[0x5760]);
  v25 = (v24 + 2029636377 - ((2 * v24) & 0xF1F39632)) ^ LODWORD(STACK[0x5780]);
  LODWORD(v7) = LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x5700]) ^ (v9 | ((v7 ^ 0xA4) - (v7 ^ 0xD6)) ^ *(STACK[0x56F0] + (v7 ^ 0xA4 ^ -(v7 ^ 0xA4) ^ (223 - (v7 ^ 0x7B))) + 223));
  v26 = (v20 - 281642655 - ((2 * v20) & 0xDE6CF2C2)) ^ LODWORD(STACK[0x5760]);
  LODWORD(v7) = (v7 + 2029636377 - ((2 * v7) & 0xF1F39632)) ^ LODWORD(STACK[0x5780]);
  LODWORD(v23) = LODWORD(STACK[0x57B0]) ^ 0x930D5BFE ^ (v7 - 281642655 - ((2 * v7) & 0xDE6CF2C2));
  LODWORD(v9) = LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x5780]) ^ 0x68C43F70 ^ (v26 + 2029636377 - ((2 * v26) & 0xF1F39632));
  LODWORD(v7) = ((v18 ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x438])) + 2029636377 - 2 * ((v18 ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x438])) & 0x78F9CB1B ^ (v18 ^ LODWORD(STACK[0x5740])) & 2)) ^ LODWORD(STACK[0x5780]);
  v27 = LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x57B0]) ^ 0x560817F4 ^ (v7 - 281642655 - ((2 * v7) & 0xDE6CF2C2));
  v28 = STACK[0xD790];
  LODWORD(v12) = *(STACK[0xD760] + 4 * BYTE2(v23));
  v29 = STACK[0xD780];
  LODWORD(v20) = *(STACK[0xD790] + 4 * BYTE3(v23));
  LODWORD(v10) = *(STACK[0xD760] + 4 * BYTE2(v9));
  v30 = *(STACK[0xD780] + 4 * ((LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x57B0]) ^ 0x17F4 ^ (v7 + 31073 - ((2 * v7) & 0xF2C2))) >> 8));
  STACK[0xD780] += 4 * ((LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x57B0]) ^ 0x17F4 ^ (v7 + 31073 - ((2 * v7) & 0xF2C2))) >> 8);
  LODWORD(v10) = v10 ^ v20;
  v31 = (((v10 ^ 0xCA87A0FA) + 897081094) ^ ((v10 ^ 0xCB641A32) + 882632142) ^ ((v10 ^ 0x92BB4A44) + 1833219516)) - (((v30 ^ v10 ^ 0xCC1FC26B) + 870333845) ^ ((v30 ^ v10 ^ 0x5C9777BC) - 1553430460) ^ ((v30 ^ v10 ^ 0x371A56C7) - 924473031)) + 428221109;
  v32 = (v31 ^ 0xCABFE0E6) & (2 * (v31 & 0xD23FEAC7)) ^ v31 & 0xD23FEAC7;
  LODWORD(v20) = ((2 * (v31 ^ 0x4EBB31EA)) ^ 0x3909B65A) & (v31 ^ 0x4EBB31EA) ^ (2 * (v31 ^ 0x4EBB31EA)) & 0x9C84DB2C;
  v33 = v20 ^ 0x84844925;
  LODWORD(v20) = (v20 ^ 0x18009208) & (4 * v32) ^ v32;
  v34 = ((4 * v33) ^ 0x72136CB4) & v33 ^ (4 * v33) & 0x9C84DB2C;
  LODWORD(v20) = (v34 ^ LODWORD(STACK[0x43C])) & (16 * v20) ^ v20;
  v35 = ((16 * (v34 ^ 0x8C849309)) ^ 0xC84DB2D0) & (v34 ^ 0x8C849309) ^ (16 * (v34 ^ 0x8C849309)) & 0x9C84DB20;
  LODWORD(v20) = v20 ^ 0x9C84DB2D ^ (v35 ^ LODWORD(STACK[0x444])) & (v20 << 8);
  v36 = v20 << 16;
  v37 = ((v20 << 16) ^ 0x5B2D0000) & (((v35 ^ 0x1480492D) << 8) & 0x1C840000 ^ 0x18040000 ^ (((v35 ^ 0x1480492D) << 8) ^ LODWORD(STACK[0x440])) & (v35 ^ 0x1480492D));
  v38 = 356372953 - (((v30 ^ 0xC86DDA3D) + 932324803) ^ ((v30 ^ 0x89F3712) - 144652050) ^ ((v30 ^ 0xF438FEB3) + 197591373));
  v39 = (v38 ^ 0x31FDD02B) & (2 * (v38 & 0xB5F81A8B)) ^ v38 & 0xB5F81A8B;
  v40 = ((2 * (v38 ^ 0x394DD02F)) ^ 0x196B9548) & (v38 ^ 0x394DD02F) ^ (2 * (v38 ^ 0x394DD02F)) & 0x8CB5CAA4;
  v41 = v40 ^ 0x84944AA4;
  v42 = (v40 ^ 0x8208000) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0x32D72A90) & v41 ^ (4 * v41) & 0x8CB5CAA4;
  v44 = (v43 ^ 0x950A80) & (16 * v42) ^ v42;
  v45 = ((16 * (v43 ^ 0x8C20C024)) ^ 0xCB5CAA40) & (v43 ^ 0x8C20C024) ^ (16 * (v43 ^ 0x8C20C024)) & 0x8CB5CAA0;
  v46 = v44 ^ 0x8CB5CAA4 ^ (v45 ^ 0x88148A00) & (v44 << 8);
  v47 = ((v46 << 16) ^ 0x4AA40000) & (((v45 ^ 0x4A140A4) << 8) & 0x8CB50000 ^ 0x8350000 ^ (((v45 ^ 0x4A140A4) << 8) ^ 0xB5CA0000) & (v45 ^ 0x4A140A4));
  v48 = (v46 << 16) & 0xCB50000 ^ v46 ^ v20;
  v49 = STACK[0xD738];
  v50 = *(v28 + 4 * ((v25 ^ 0x7DF6DE51) >> 24));
  v51 = *(STACK[0xD738] + 4 * v27);
  v52 = *(v29 + 4 * BYTE1(v9));
  v53 = v36 & 0x1C840000;
  v54 = (STACK[0xD738] + 4 * (v25 ^ 0x51u));
  STACK[0xD738] = v54;
  v55 = (v28 + 4 * BYTE3(v9));
  STACK[0xD790] = v55;
  v56 = v38 ^ v30 ^ v31 ^ (2 * (v48 ^ v47 ^ v53 ^ v37));
  v57 = (((v10 ^ 0xF175BBB6) + 243942474) ^ ((v10 ^ 0x41C4564E) - 1103386190) ^ ((v10 ^ 0x23E91D74) - 602479988)) + 1710960528 + (((v56 ^ 0xC4A80E1E) - 1390443021) ^ ((v56 ^ 0xA63BF213) - 812877312) ^ ((v56 ^ 0x30BC3CCF) + 1493940004));
  v58 = (v57 ^ 0xE5C075CC) & (2 * (v57 & 0xF1C575CD)) ^ v57 & 0xF1C575CD;
  LODWORD(v10) = ((2 * (v57 ^ 0xA740FFDE)) ^ 0xAD0B1426) & (v57 ^ 0xA740FFDE) ^ (2 * (v57 ^ 0xA740FFDE)) & 0x56858A12;
  v59 = v10 ^ 0x52848A11;
  LODWORD(v10) = (v10 ^ 0x14810001) & (4 * v58) ^ v58;
  v60 = ((4 * v59) ^ LODWORD(STACK[0x44C])) & v59 ^ (4 * v59) & 0x56858A10;
  LODWORD(v10) = (v60 ^ 0x52040800) & (16 * v10) ^ v10;
  v61 = ((16 * (v60 ^ LODWORD(STACK[0x448]))) ^ 0x6858A130) & (v60 ^ LODWORD(STACK[0x448])) ^ (16 * (v60 ^ LODWORD(STACK[0x448]))) & 0x56858A10;
  LODWORD(v10) = v10 ^ 0x56858A13 ^ (v61 ^ 0x40008000) & (v10 << 8);
  v62 = (v10 << 16) & 0x56850000 ^ v10 ^ ((v10 << 16) ^ 0xA130000) & (((v61 ^ 0x16850A03) << 8) & 0x56850000 ^ 0x52050000 ^ (((v61 ^ 0x16850A03) << 8) ^ 0x58A0000) & (v61 ^ 0x16850A03));
  v63 = STACK[0xD760];
  LODWORD(v10) = v50 ^ v12 ^ v51 ^ v52;
  v64 = v57 ^ *v54 ^ (2 * v62);
  LODWORD(v55) = *v55 ^ *(STACK[0xD760] + 4 * BYTE2(v27)) ^ *(v29 + 4 * ((v25 ^ 0xDE51) >> 8)) ^ *(v49 + 4 * v23);
  v65 = *(STACK[0xD760] + 4 * (BYTE2(v25) ^ 0xF6u)) ^ *(v28 + 4 * HIBYTE(v27)) ^ *(v29 + 4 * BYTE1(v23)) ^ *(v49 + 4 * v9);
  v66 = *(STACK[0xD760] + 4 * (BYTE2(v64) ^ 0x62u)) ^ *(v28 + 4 * (BYTE3(v10) ^ 0xC6)) ^ *(v29 + 4 * (BYTE1(v55) ^ 0x78u)) ^ *(v49 + 4 * (v65 ^ 0x40u));
  v67 = *(STACK[0xD760] + 4 * BYTE2(v55)) ^ *(v29 + 4 * (BYTE1(v65) ^ 0x7Eu)) ^ *(v49 + 4 * ((v50 ^ v12 ^ v51 ^ v52) ^ 0xF3u)) ^ *(v28 + 4 * (HIBYTE(v64) ^ 0xCE));
  v68 = *(v28 + 4 * ((v55 >> 24) ^ 0xA5)) ^ *(STACK[0xD760] + 4 * (BYTE2(v65) ^ 7u)) ^ *(v29 + 4 * (BYTE1(v10) ^ 0xA1u)) ^ *(v49 + 4 * ((v57 ^ *v54 ^ (2 * v62)) ^ 0x1Au));
  v69 = *(STACK[0xD760] + 4 * (BYTE2(v10) ^ 0x3Bu)) ^ *(v28 + 4 * (HIBYTE(v65) ^ 0x70)) ^ *(v49 + 4 * (v55 ^ 0xAu)) ^ *(v29 + 4 * (BYTE1(v64) ^ 0x67u));
  if ((v67 & 2) != 0)
  {
    v70 = -66;
  }

  else
  {
    v70 = -70;
  }

  v71 = (((v67 ^ 0x30) + 113) ^ ((v67 ^ 0x4F) + 16) ^ ((v67 ^ 0x90) - 47)) + v70;
  v72 = ((2 * (v71 & 0x94)) & 0x20 | v71 & 0x94) ^ (2 * (v71 & 0x94)) & (v71 ^ 0xE3);
  v73 = ((2 * (v71 ^ 0xE3)) ^ 0xEE) & (v71 ^ 0xE3) ^ (2 * (v71 ^ 0xE3)) & 0x76;
  v74 = v73 ^ 0x11;
  v75 = v72 ^ 0x77 ^ (v73 ^ 0x61) & (4 * v72);
  v76 = v71 ^ (2 * ((16 * v75) ^ v75 ^ ((16 * v75) ^ 0x70) & ((4 * v74) & 0x70 ^ ((4 * v74) ^ 0xD0) & v74 ^ 0x20)));
  v77 = *(v28 + 4 * (HIBYTE(v66) ^ 0x17)) ^ *(v63 + 4 * (BYTE2(v67) ^ 0x88u)) ^ *(v29 + 4 * (BYTE1(v68) ^ 0x52u)) ^ *(v49 + 4 * (v69 ^ 0xA5u));
  v78 = *(v63 + 4 * (BYTE2(v68) ^ 0xCu)) ^ *(v28 + 4 * (HIBYTE(v67) ^ 0x67)) ^ *(v29 + 4 * (BYTE1(v69) ^ 0xDFu));
  v79 = (v29 + 4 * (BYTE1(v66) ^ 0xCFu));
  STACK[0xD780] = v79;
  v80 = *(v49 + 4 * (v66 ^ 0xB8u));
  v81 = (((v78 ^ 0x9C34506) - 163792134) ^ ((v78 ^ 0xF7A3C51) - 259669073) ^ ((v78 ^ 0xA12B9A47) + 1590977977)) - (((v80 ^ v78 ^ 0xF1285E25) + 249012699) ^ ((v80 ^ v78 ^ 0xC38C1BC5) + 1014228027) ^ ((v80 ^ v78 ^ 0x7320B656) - 1931523670)) + 1788894557;
  v82 = -2128105896 - (((v80 ^ 0xC9141469) + 921430935) ^ ((v80 ^ 0xF13399A1) + 248276575) ^ ((v80 ^ 0xDE319D6E) + 567173778));
  v83 = v82 ^ v80;
  v84 = *(v28 + 4 * (HIBYTE(v68) ^ 0x83));
  v85 = STACK[0xD760];
  v86 = *(STACK[0xD760] + 4 * (BYTE2(v69) ^ 0x8Fu));
  v87 = v83 ^ ((v82 ^ 0x23B4BE52) - 1149829292) ^ ((v82 ^ 0x884F5361) + 277680737) ^ ((v82 ^ 0x3B38EC32) - 1543852748) ^ ((v82 ^ 0xF7FEBFFF) + 1866268415) ^ v81 ^ ((v81 ^ 0x9AEFBE1A) + 1635921895) ^ ((v81 ^ 0x20015774) - 613628279) ^ ((v81 ^ 0x41836880) - 1158743683) ^ ((v81 ^ 0xFFFFEFED) + 76709394);
  v88 = 2 * ((v86 ^ 0x4666BD06) & (v84 ^ 0x3E6AE999) ^ v86 & 0x6B54A413);
  STACK[0xD738] = v49;
  v89 = (((v78 ^ 0x1AE9DC4E) - 451533902) ^ ((v78 ^ 0x70ADF67F) - 1890449023) ^ ((v78 ^ 0xCDD6C921) + 841561823)) - 336888583 + (((v87 ^ 0x5EC8541) - 2139766677) ^ ((v87 ^ 0x2A512440) - 1345822356) ^ ((v87 ^ 0xAA04615A) + 798827634));
  v90 = (v89 ^ 0x3B86C825) & (2 * (v89 & 0xBB86E0A6)) ^ v89 & 0xBB86E0A6;
  v91 = ((2 * (v89 ^ 0x1C820829)) ^ 0x4E09D11E) & (v89 ^ 0x1C820829) ^ (2 * (v89 ^ 0x1C820829)) & 0xA704E88E;
  v92 = v91 ^ 0xA1042881;
  v93 = (v91 ^ 0x700A809) & (4 * v90) ^ v90;
  v94 = ((4 * v92) ^ 0x9C13A23C) & v92 ^ (4 * v92) & 0xA704E88C;
  v95 = (v94 ^ 0x8400A000) & (16 * v93) ^ v93;
  v96 = ((16 * (v94 ^ 0x23044883)) ^ 0x704E88F0) & (v94 ^ 0x23044883) ^ (16 * (v94 ^ 0x23044883)) & 0xA704E880;
  v97 = v95 ^ 0xA704E88F ^ (v96 ^ 0x20048800) & (v95 << 8);
  v98 = v89 ^ (2 * ((v97 << 16) & 0x27040000 ^ v97 ^ ((v97 << 16) ^ 0x688F0000) & (((v96 ^ 0x8700600F) << 8) & 0xA7040000 ^ 0x23040000 ^ (((v96 ^ 0x8700600F) << 8) ^ 0x4E80000) & (v96 ^ 0x8700600F))));
  v99 = (((v84 ^ 0x67E41F78) - 1743003512) ^ ((v84 ^ 0xA713099) - 175190169) ^ ((v84 ^ 0x38AB626B) - 950755947)) + (((v86 ^ 0x459990A7) - 1167691943) ^ ((v86 ^ 0x272A0922) - 657066274) ^ ((v86 ^ 0xA4D52483) + 1529535357)) - (((v88 ^ 0x6588B313) + 1735516236) ^ ((v88 ^ 0x630E2079) + 1643606818) ^ ((v88 ^ 0x820FDB6E) - 2131326921)) - 934603349;
  v100 = (v99 ^ 0xD1804E5B) & (2 * (v99 & 0xD9CA1042)) ^ v99 & 0xD9CA1042;
  v101 = ((2 * (v99 ^ 0x42046EDB)) ^ 0x379CFD32) & (v99 ^ 0x42046EDB) ^ (2 * (v99 ^ 0x42046EDB)) & 0x9BCE7E98;
  v102 = v101 ^ 0x88420289;
  v103 = (v101 ^ 0x3084010) & (4 * v100) ^ v100;
  v104 = ((4 * v102) ^ 0x6F39FA64) & v102 ^ (4 * v102) & 0x9BCE7E98;
  v105 = (v104 ^ 0xB087A00) & (16 * v103) ^ v103;
  v106 = ((16 * (v104 ^ 0x90C60499)) ^ 0xBCE7E990) & (v104 ^ 0x90C60499) ^ (16 * (v104 ^ 0x90C60499)) & 0x9BCE7E90;
  v107 = v105 ^ 0x9BCE7E99 ^ (v106 ^ 0x98C66800) & (v105 << 8);
  v108 = (v107 << 16) & 0x1BCE0000 ^ v107 ^ ((v107 << 16) ^ 0x7E990000) & (((v106 ^ 0x3081609) << 8) & 0x1BCE0000 ^ 0x11800000 ^ (((v106 ^ 0x3081609) << 8) ^ 0x4E7E0000) & (v106 ^ 0x3081609));
  v109 = *(v28 + 4 * (HIBYTE(v69) ^ 0xB2));
  v110 = BYTE1(v67) ^ 0xD9;
  v111 = v68 ^ 0x53;
  v112 = *(v49 + 4 * (v76 ^ 0x98u)) ^ *v79 ^ v99;
  v113 = *(v29 + 4 * v110);
  v114 = v112 ^ (2 * v108);
  v115 = v113 ^ *(v49 + 4 * v111);
  v116 = *(v85 + 4 * (BYTE2(v98) ^ 0x86u));
  v117 = *(v28 + 4 * (HIBYTE(v77) ^ 0x7D));
  v118 = *(v85 + 4 * (BYTE2(v66) ^ 0x30u)) ^ v109 ^ v115;
  v119 = HIBYTE(v98) ^ 0xAF;
  v120 = (v117 & 0x100000 | 0xAC43C418) ^ ((v117 & 0x100000) + 742114280) ^ ((v117 & 0x100000 ^ 0x49BF30B9) + 1107594111);
  v121 = v120 + 553130033;
  v122 = ((2 * (v121 & 0x500001)) & 0x200002 | v121 & 0x500001) ^ (2 * (v121 & 0x500001)) & (v121 ^ 0xA56A633D);
  v123 = (2 * (v121 ^ 0xA56A633D)) & 0x76364F3A ^ 0x1212410A ^ ((2 * (v121 ^ 0xA56A633D)) ^ 0xEC6C9E74) & (v121 ^ 0xA56A633D);
  v124 = ((4 * v122) & 0x2000008 | v122) ^ (4 * v122) & v123;
  v125 = ((4 * v123) ^ 0xD8D93CE8) & v123 ^ (4 * v123) & 0x76364F38;
  v126 = v125 ^ 0x26264312;
  v127 = (v125 ^ 0x50100C22) & (16 * v124) ^ v124;
  v128 = ((16 * v126) ^ 0x6364F3A0) & v126 ^ (16 * v126) & 0x76364F30;
  v129 = v127 ^ 0x76364F3A ^ (v128 ^ 0x62244300) & (v127 << 8);
  v130 = (v120 + 553130033) ^ (2 * ((v129 << 16) & 0x76360000 ^ v129 ^ ((v129 << 16) ^ 0x4F3A0000) & (((v128 ^ LODWORD(STACK[0x450])) << 8) & 0x76360000 ^ 0x40300000 ^ (((v128 ^ LODWORD(STACK[0x450])) << 8) ^ 0x364F0000) & (v128 ^ LODWORD(STACK[0x450])))));
  STACK[0xD790] = v28 + 4 * v119;
  v131 = 944738241 - v120;
  if (((v130 ^ 0xB354B273) & (v116 ^ 0x5D3D835C) ^ v130 & 0x9B5B3E5A) != 0x93503252)
  {
    v121 = v131;
  }

  v132 = (((v116 ^ 0xEB1B70CD) + 350523187) ^ ((v116 ^ 0x7EE365C1) - 2128831937) ^ ((v116 ^ 0x539EA80A) - 1402906634)) - 1329471977 + v121;
  v133 = (v132 ^ 0xE4404AE7) & (2 * (v132 & 0xE9010AF6)) ^ v132 & 0xE9010AF6;
  v134 = ((2 * (v132 ^ 0xF4425A0B)) ^ 0x3A86A1FA) & (v132 ^ 0xF4425A0B) ^ (2 * (v132 ^ 0xF4425A0B)) & 0x1D4350FC;
  v135 = v134 ^ 0x5415005;
  v136 = (v134 ^ 0x80000F8) & (4 * v133) ^ v133;
  v137 = ((4 * v135) ^ 0x750D43F4) & v135 ^ (4 * v135) & 0x1D4350FC;
  v138 = (v137 ^ 0x150140E0) & (16 * v136) ^ v136;
  v139 = ((16 * (v137 ^ 0x8421009)) ^ 0xD4350FD0) & (v137 ^ 0x8421009) ^ (16 * (v137 ^ 0x8421009)) & 0x1D4350F0;
  v140 = v138 ^ 0x1D4350FD ^ (v139 ^ 0x14010000) & (v138 << 8);
  v141 = *(v28 + 4 * v119);
  v142 = *(v29 + 4 * ~(v114 >> 8)) ^ v117 & 0xFFEFFFFF ^ *(v49 + 4 * (v118 ^ 0x6Au)) ^ v132 ^ (2 * ((v140 << 16) & 0x1D430000 ^ v140 ^ ((v140 << 16) ^ 0x50FD0000) & (((v139 ^ 0x942502D) << 8) & 0x1D430000 ^ 0x1C030000 ^ (((v139 ^ 0x942502D) << 8) ^ 0x43500000) & (v139 ^ 0x942502D))));
  v143 = v141 ^ *(v85 + 4 * (BYTE2(v114) ^ 0x13u)) ^ *(v49 + 4 * (v77 ^ 0xC5u)) ^ *(v29 + 4 * (BYTE1(v118) ^ 0xCEu));
  v144 = BYTE1(v98) ^ 0x81;
  v145 = *(v49 + 4 * (v98 ^ 0x92u)) ^ __ROR4__(__ROR4__(*(v85 + 4 * (BYTE2(v118) ^ 6u)) ^ *(v29 + 4 * (BYTE1(v77) ^ 0x69u)) ^ *(v28 + 4 * (HIBYTE(v114) ^ 0xD1)), 24) ^ 0x611E01CD, 8);
  v146 = ((2 * v145) & 0x8BE022C0 ^ 0xF63FFDBF) + 1858455565 + (((v145 ^ 0xE44ABA7) - 712306876) ^ ((v145 ^ 0x44F4F5E8) - 1623502579) ^ ((v145 ^ 0xC655B3F8) + 496637725));
  v147 = *(v28 + 4 * (HIBYTE(v118) ^ 0x6A)) ^ *(v85 + 4 * (BYTE2(v77) ^ 0x89u)) ^ *(v49 + 4 * (v114 ^ 0x85u)) ^ *(v29 + 4 * v144);
  v148 = *(v85 + 4 * (BYTE2(v143) ^ 0xFDu)) ^ *(v29 + 4 * ((((2 * v145) & 0x22C0 ^ 0xFDBF) - 14323 + (((v145 ^ 0xABA7) + 3908) ^ ((v145 ^ 0xF5E8) + 20749) ^ ((v145 ^ 0xB3F8) + 5917))) >> 8)) ^ *(v49 + 4 * (v147 ^ 0xAu)) ^ *(v28 + 4 * (HIBYTE(v142) ^ 0x73));
  v149 = *(v85 + 4 * BYTE2(v146)) ^ *(v29 + 4 * (BYTE1(v147) ^ 0xDFu)) ^ *(v28 + 4 * (HIBYTE(v143) ^ 0x5C)) ^ *(v49 + 4 * (v142 ^ 0x39u));
  v150 = *(v85 + 4 * (BYTE2(v147) ^ 0xF6u)) ^ *(v28 + 4 * HIBYTE(v146)) ^ *(v49 + 4 * (v143 ^ 0x19u)) ^ *(v29 + 4 * (BYTE1(v142) ^ 0x55u));
  v151 = *(v28 + 4 * (HIBYTE(v147) ^ 0xAF)) ^ *(v29 + 4 * (BYTE1(v143) ^ 0xF3u)) ^ *(v49 + 4 * v146) ^ *(v85 + 4 * (BYTE2(v142) ^ 0x8Fu));
  v152 = *(v29 + 4 * (BYTE1(v150) ^ 0x76u));
  v153 = *(v49 + 4 * (v151 ^ 0x89u));
  v154 = *(v85 + 4 * (BYTE2(v149) ^ 0x3Cu)) ^ *(v28 + 4 * (HIBYTE(v148) ^ 0xA6));
  v155 = *(v85 + 4 * (BYTE2(v150) ^ 0xCCu));
  v156 = BYTE1(v151) ^ 0x5A;
  STACK[0xD780] = v29 + 4 * v156;
  v157 = *(v28 + 4 * (HIBYTE(v149) ^ 0xBB));
  v158 = v152 ^ v153;
  STACK[0xD790] = v28;
  v159 = *(v29 + 4 * v156);
  v160 = *(v28 + 4 * (HIBYTE(v150) ^ 0x7E));
  v161 = v154 ^ v158;
  v162 = HIBYTE(v151) ^ 0x90;
  v163 = *(v49 + 4 * (v148 ^ 0xFAu));
  STACK[0xD780] = v29;
  v164 = STACK[0xD760];
  v165 = *(STACK[0xD760] + 4 * (BYTE2(v148) ^ 0x45u));
  STACK[0xD738] = v49;
  STACK[0xD790] = v28 + 4 * v162;
  v166 = *(v28 + 4 * v162);
  v167 = *(v164 + 4 * (BYTE2(v151) ^ 0xBEu));
  v168 = v49 + 4 * (v149 ^ 0x55u);
  STACK[0xD738] = v168;
  v169 = BYTE1(v148) ^ 0x67;
  STACK[0xD780] = v29 + 4 * v169;
  v170 = v167 ^ v160;
  v171 = BYTE1(v149) ^ 0x67;
  v172 = v170 ^ *(v29 + 4 * v169);
  v173 = *v168;
  v174 = v157 ^ v155 ^ v159 ^ v163;
  STACK[0xD780] = v29 + 4 * v171;
  v175 = v150 ^ 0x35;
  STACK[0xD738] = v49 + 4 * v175;
  v176 = v172 ^ v173;
  STACK[0xD790] = v28;
  v177 = *(v29 + 4 * v171);
  STACK[0xD780] = v29;
  v178 = v166 ^ v165 ^ v177 ^ *(v49 + 4 * v175);
  STACK[0xD738] = v49;
  STACK[0x57B0] = (((HIBYTE(v161) ^ 0x34AC4FC0) + 1512310995) ^ ((HIBYTE(v161) ^ 0x1A76D133) + 1962841634) ^ ((HIBYTE(v161) ^ 0x2EDA9E72) + 1079171425)) - 1854424980;
  v179 = 4 * ((((HIBYTE(v161) ^ 0x34AC4FC0) + 1512310995) ^ ((HIBYTE(v161) ^ 0x1A76D133) + 1962841634) ^ ((HIBYTE(v161) ^ 0x2EDA9E72) + 1079171425)) - 1854424980);
  STACK[0x5770] = v179;
  v180 = (v28 + v179);
  STACK[0x5760] = v28 + v179;
  STACK[0xD790] = v28 + v179;
  LODWORD(v179) = BYTE2(v174) ^ 0x2C;
  LODWORD(STACK[0x57A0]) = v179;
  LODWORD(v164) = *(v164 + 4 * v179);
  v181 = *v180;
  STACK[0xD790] = v28;
  v182 = ((HIBYTE(v178) ^ 0x2E9983E3) - 854607185) ^ ((HIBYTE(v178) ^ 0x6E268F71) - 1917798851) ^ ((HIBYTE(v178) ^ 0x40BF0C07) - 1557580469);
  LODWORD(v179) = BYTE1(v176) ^ 0x61;
  LODWORD(STACK[0x5780]) = v179;
  v183 = (v29 + 4 * v179);
  STACK[0xD780] = v183;
  LODWORD(v179) = (((v178 ^ 0xDB09DD4D) + 2123917699) ^ ((v178 ^ 0x17D60702) - 1303923762) ^ ((v178 ^ 0xCCDFDAB1) + 1766747775)) + 1517177806;
  LODWORD(STACK[0x5750]) = v179;
  v184 = v49 + 4 * v179;
  STACK[0xD738] = v184;
  LODWORD(v168) = *v183;
  v185 = v28 + 4 * (HIBYTE(v174) ^ 0x7B);
  STACK[0xD790] = v185;
  LODWORD(v168) = v181 ^ v164 ^ v168 ^ *v184;
  STACK[0xD780] = v29;
  v186 = (v49 + 4 * ((((v161 ^ 0xC8103AA6) - 1733569692) ^ ((v161 ^ 0x1E483CFF) + 1324602683) ^ ((v161 ^ 0xD65806F8) - 2031882434)) - 1354492261));
  *(v6 - 152) = v183;
  STACK[0xD738] = v186;
  LODWORD(v164) = *v185;
  LODWORD(v179) = BYTE1(v178) ^ 0xC8;
  LODWORD(STACK[0x5720]) = v179;
  v187 = v29 + 4 * v179;
  STACK[0xD780] = v187;
  STACK[0x5740] = (((HIBYTE(v176) ^ 0xF8E68DB8) + 1223771757) ^ ((HIBYTE(v176) ^ 0x87D42708) + 935587037) ^ ((HIBYTE(v176) ^ 0x7F32AAF4) - 819633887)) + 1340617839;
  v188 = *v187;
  v189 = 4 * ((((HIBYTE(v176) ^ 0xF8E68DB8) + 1223771757) ^ ((HIBYTE(v176) ^ 0x87D42708) + 935587037) ^ ((HIBYTE(v176) ^ 0x7F32AAF4) - 819633887)) + 1340617839);
  STACK[0xD790] = v28 + v189;
  STACK[0x5730] = v174 ^ 0x42u;
  v190 = 4 * (v174 ^ 0x42u);
  STACK[0xD738] = &v186[v190 / 4];
  LODWORD(v179) = BYTE2(v176) ^ 0x64;
  LODWORD(STACK[0x5700]) = v179;
  v191 = STACK[0xD760];
  v192 = *v186 ^ *(STACK[0xD760] + 4 * v179) ^ v164 ^ v188;
  v193 = BYTE2(v178) ^ 0x5E;
  LODWORD(STACK[0x5710]) = v193;
  v194 = v190 + v49;
  v195 = *(v191 + 4 * v193) ^ *(v190 + v49);
  LODWORD(v179) = BYTE1(v161) ^ 0x70;
  LODWORD(STACK[0x5680]) = v179;
  v196 = v29 + 4 * v179;
  STACK[0xD780] = v196;
  LODWORD(v164) = *(v28 + v189);
  STACK[0xD738] = v190 + v49;
  STACK[0xD790] = v28;
  v197 = v195 ^ *v196 ^ v164;
  LODWORD(v164) = ((v176 ^ 0xE1703037) - 2126688670) ^ ((v176 ^ 0xB5C4C15B) - 712392946) ^ ((v176 ^ 0x54B4F1AD) + 888770556);
  v198 = BYTE2(v161) ^ 0x94;
  LODWORD(STACK[0x5660]) = v198;
  v199 = *(v191 + 4 * v198);
  LODWORD(STACK[0x5670]) = v182 + 476694055;
  v200 = v28 + 4 * (v182 + 476694055);
  STACK[0xD790] = v200;
  v201 = BYTE1(v174) ^ 0xE4;
  LODWORD(STACK[0x5650]) = v201;
  v202 = *v200;
  v203 = (v29 + 4 * v201);
  STACK[0xD780] = v203;
  STACK[0xD738] = v49;
  v204 = v202 ^ v199 ^ *v203;
  LODWORD(v179) = ((v168 & 0x400) + 226526146) ^ v168 & 0xFFFFFBFF;
  v205 = BYTE1(v197) ^ 0xE4;
  STACK[0xD780] = v29 + 4 * v205;
  LODWORD(v168) = BYTE3(v179) ^ 0x5B;
  STACK[0xD790] = v28 + 4 * v168;
  STACK[0xD738] = v49;
  v206 = *(v28 + 4 * v168);
  v207 = HIBYTE(v192) ^ 0x6C;
  STACK[0xD790] = v28 + 4 * v207;
  v208 = STACK[0xD760];
  v209 = (v49 + 4 * (v164 - 1615691416));
  v210 = v204 ^ *v209;
  LODWORD(v164) = *(STACK[0xD760] + 4 * (BYTE2(v192) ^ 0xD3u)) ^ *(v29 + 4 * v205);
  v211 = (v204 ^ *v209) ^ 0x23;
  STACK[0xD738] = v49 + 4 * v211;
  v212 = *(v28 + 4 * v207);
  v213 = HIBYTE(v197) ^ 0x69;
  STACK[0xD790] = v28 + 4 * v213;
  v214 = v179 ^ 0x2A;
  STACK[0xD738] = v49 + 4 * v214;
  v215 = *(v6 - 152);
  v216 = BYTE1(v210) ^ 0xDF;
  STACK[0xD780] = v29 + 4 * v216;
  v217 = v206 ^ v164 ^ *(v49 + 4 * v211);
  v218 = *(v208 + 4 * (BYTE2(v197) ^ 0x33u)) ^ v212 ^ *(v29 + 4 * v216);
  STACK[0xD780] = v29;
  LODWORD(v164) = *(v49 + 4 * v214);
  v219 = *(v28 + 4 * v213);
  v220 = HIBYTE(v210) ^ 0xBD;
  STACK[0xD790] = v28 + 4 * v220;
  v221 = BYTE1(v179) ^ 0xE2;
  STACK[0xD780] = v29 + 4 * v221;
  v222 = v218 ^ v164;
  LODWORD(v164) = *(v208 + 4 * (BYTE2(v179) ^ 0xFBu));
  LODWORD(v208) = *(v208 + 4 * (BYTE2(v210) ^ 0xE9u)) ^ v219;
  STACK[0xD738] = v49;
  LODWORD(v179) = *(v29 + 4 * v221);
  v223 = v192 ^ 0x1C;
  STACK[0xD738] = v49 + 4 * v223;
  v224 = (v208 ^ LODWORD(STACK[0x454])) & (v179 ^ 0x34CA139C) ^ v179 & 0x6A2FBF83;
  LODWORD(v208) = (((v208 ^ 0x4B886E4B) - 1267232331) ^ ((v208 ^ 0xB79DC2F7) + 1214397705) ^ ((v208 ^ 0x6F4D5C30) - 1867340848)) + (((v179 ^ 0x1F790186) - 528023942) ^ ((v179 ^ 0x925D6CB4) + 1839371084) ^ ((v179 ^ 0xB9EE7EAE) + 1175552338)) - ((((2 * v224) ^ 0xA75D0CFA) - 70481954) ^ (((2 * v224) ^ 0x993547F) + 1426251609) ^ (((2 * v224) ^ 0xEEDA7F85) - 1303645021)) + 52851580;
  LODWORD(v179) = (v208 ^ 0xE559BA93) & (2 * (v208 & 0xE1823CD4)) ^ v208 & 0xE1823CD4;
  v225 = ((2 * (v208 ^ 0xE75D833B)) ^ 0xDBF7FDE) & (v208 ^ 0xE75D833B) ^ (2 * (v208 ^ 0xE75D833B)) & 0x6DFBFEE;
  LODWORD(v179) = (v225 ^ 0x41937C0) & (4 * v179) ^ v179;
  v226 = ((4 * (v225 ^ 0x2408021)) ^ 0x1B7EFFBC) & (v225 ^ 0x2408021) ^ (4 * (v225 ^ 0x2408021)) & 0x6DFBFEC;
  LODWORD(v179) = (v226 ^ 0x25EBFA0) & (16 * v179) ^ v179;
  v227 = ((16 * (v226 ^ 0x4810043)) ^ 0x6DFBFEF0) & (v226 ^ 0x4810043) ^ (16 * (v226 ^ 0x4810043)) & 0x6DFBFE0;
  LODWORD(v179) = v179 ^ 0x6DFBFEF ^ (v227 ^ 0x4DBBE00) & (v179 << 8);
  STACK[0xD780] = v29;
  v228 = v208 ^ *(v49 + 4 * v223) ^ (2 * ((v179 << 16) & 0x6DF0000 ^ v179 ^ ((v179 << 16) ^ 0x3FEF0000) & (((v227 ^ 0x204010F) << 8) & 0x6DF0000 ^ (((v227 ^ 0x204010F) << 8) ^ 0x5FBF0000) & (v227 ^ 0x204010F) ^ 0x400000)));
  LODWORD(v208) = *(v28 + 4 * v220);
  LODWORD(v179) = BYTE1(v192) ^ 0x76;
  STACK[0xD780] = v29 + 4 * v179;
  v229 = v197 ^ 0x6B;
  STACK[0xD738] = v49 + 4 * v229;
  LODWORD(v179) = *(v29 + 4 * v179);
  STACK[0xD780] = v29;
  LODWORD(v208) = v208 ^ v179 ^ *(v49 + 4 * v229);
  LODWORD(v179) = HIBYTE(v217) ^ 0x4A;
  STACK[0xD790] = v28 + 4 * v179;
  v230 = BYTE1(v228) ^ 0xCC;
  STACK[0xD780] = v29 + 4 * v230;
  STACK[0xD738] = v49;
  v231 = *(v29 + 4 * v230);
  LODWORD(v208) = v208 ^ v164;
  v232 = HIBYTE(v222) ^ 0x67;
  STACK[0xD790] = v28 + 4 * v232;
  v233 = STACK[0xD760];
  LODWORD(v179) = *(v28 + 4 * v179) ^ *(STACK[0xD760] + 4 * (BYTE2(v222) ^ 0x95u));
  v234 = v49 + 4 * (v208 ^ 0x8Au);
  STACK[0xD738] = v234;
  STACK[0xD780] = v29;
  LODWORD(v179) = v179 ^ *v234;
  v235 = 4 * (v217 ^ 0x68u);
  STACK[0xD738] = v234 + v235;
  LODWORD(v234) = BYTE1(v208) ^ 0x40;
  STACK[0xD780] = v29 + 4 * v234;
  v236 = *(v29 + 4 * v234);
  LODWORD(v234) = v179 ^ v231;
  STACK[0xD738] = v235 + v49;
  STACK[0xD790] = v28;
  LODWORD(v179) = *(v49 + v235);
  v237 = BYTE1(v217) ^ 0xFE;
  STACK[0xD780] = v29 + 4 * v237;
  v238 = v236 ^ *(v28 + 4 * v232) ^ v179 ^ *(v233 + 4 * (BYTE2(v228) ^ 0x13u));
  LODWORD(v179) = *(v233 + 4 * (BYTE2(v208) ^ 0x4Fu));
  v239 = *(v233 + 4 * (BYTE2(v217) ^ 0xC2u));
  STACK[0xD738] = v49;
  v240 = v28 + 4 * (BYTE3(v208) ^ 0xB3);
  STACK[0xD790] = v240;
  LODWORD(v233) = *(v29 + 4 * v237);
  v241 = v222 ^ 0xC2;
  STACK[0xD738] = v49 + 4 * v241;
  v242 = *(v28 + 4 * (HIBYTE(v228) ^ 9)) ^ v179 ^ v233 ^ *(v49 + 4 * v241);
  LODWORD(v179) = BYTE1(v222) ^ 0x7B;
  STACK[0xD780] = v29 + 4 * v179;
  STACK[0xD790] = v240 + STACK[0x5770];
  STACK[0xD738] = v49;
  LODWORD(v179) = *(v29 + 4 * v179);
  STACK[0xD790] = STACK[0x5760];
  v243 = v228 ^ 5;
  STACK[0xD738] = v49 + 4 * v243;
  LODWORD(v240) = *v240 ^ v239 ^ v179;
  STACK[0xD780] = v29;
  v244 = *(v49 + 4 * v243);
  STACK[0xD780] = v215;
  v245 = v240 ^ v244;
  v246 = *(v28 + 4 * STACK[0x57B0]);
  v247 = STACK[0xD760];
  LODWORD(v240) = *(STACK[0xD760] + 4 * LODWORD(STACK[0x57A0]));
  STACK[0xD738] = v184;
  v248 = v240 ^ v246;
  STACK[0xD790] = v28;
  LODWORD(v240) = *(v49 + 4 * LODWORD(STACK[0x5750]));
  STACK[0xD790] = v185;
  LODWORD(v240) = v240 ^ *(v29 + 4 * LODWORD(STACK[0x5780]));
  STACK[0xD780] = v187;
  v249 = *(v29 + 4 * LODWORD(STACK[0x5720]));
  LODWORD(v184) = v248 ^ v240;
  STACK[0xD780] = v196;
  v250 = *(v247 + 4 * LODWORD(STACK[0x5700])) ^ *v185;
  STACK[0xD738] = v186;
  LODWORD(v240) = *v186;
  STACK[0xD738] = v194;
  v251 = v185 + v189;
  LODWORD(v185) = *(v29 + 4 * LODWORD(STACK[0x5680]));
  STACK[0xD790] = v251;
  LODWORD(v251) = *(v247 + 4 * LODWORD(STACK[0x5710]));
  STACK[0xD780] = v29;
  LODWORD(v196) = *(v49 + 4 * STACK[0x5730]);
  LODWORD(v240) = v250 ^ v249 ^ v240;
  v252 = *(v28 + 4 * STACK[0x5740]);
  STACK[0xD780] = v203;
  STACK[0xD790] = v200;
  LODWORD(v247) = *(v247 + 4 * LODWORD(STACK[0x5660]));
  STACK[0xD738] = v209;
  LODWORD(v251) = v185 ^ v251 ^ v196 ^ v252;
  v253 = *(v29 + 4 * LODWORD(STACK[0x5650]));
  v254 = *(v28 + 4 * LODWORD(STACK[0x5670]));
  LODWORD(v185) = *v209;
  STACK[0xD738] = v49;
  LODWORD(v247) = v253 ^ v247 ^ v254 ^ v185;
  v255 = BYTE3(v184) ^ 0x56;
  STACK[0xD790] = v28 + 4 * v255;
  v256 = BYTE1(v251) ^ 0xE4;
  STACK[0xD780] = v29 + 4 * v256;
  v257 = STACK[0xD760];
  LODWORD(v200) = *(STACK[0xD760] + 4 * (BYTE2(v251) ^ 0x33u));
  v258 = *(v28 + 4 * v255);
  LODWORD(v196) = *(STACK[0xD760] + 4 * (BYTE2(v240) ^ 0xD3u));
  v259 = *(v29 + 4 * v256);
  LODWORD(v185) = BYTE3(v247) ^ 0xBD;
  v260 = v49 + 4 * (v247 ^ 0x23u);
  STACK[0xD738] = v260;
  LODWORD(v209) = BYTE3(v240) ^ 0x6C;
  STACK[0xD790] = v28 + 4 * v209;
  v261 = v196 ^ v258 ^ v259;
  v262 = *(v28 + 4 * v209);
  STACK[0xD780] = v29;
  LODWORD(v196) = *v260;
  STACK[0xD790] = v28;
  v263 = v261 ^ v196;
  v264 = 4 * (v184 ^ 0xE8u);
  STACK[0xD738] = v260 + v264;
  LODWORD(v260) = BYTE1(v247) ^ 0xDF;
  STACK[0xD780] = v29 + 4 * v260;
  LODWORD(v260) = *(v29 + 4 * v260);
  STACK[0xD738] = v264 + v49;
  LODWORD(v264) = BYTE3(v251) ^ 0x69;
  STACK[0xD790] = v28 + 4 * v264;
  v265 = v262 ^ v200;
  LODWORD(v200) = *(v49 + 4 * (v184 ^ 0xE8u));
  STACK[0xD738] = v49;
  LODWORD(v247) = *(v257 + 4 * (BYTE2(v247) ^ 0xE9u));
  LODWORD(v257) = BYTE1(v184) ^ 0x61;
  STACK[0xD780] = v29 + 4 * v257;
  v266 = v265 ^ v260 ^ v200;
  LODWORD(v200) = *(v28 + 4 * v264);
  STACK[0xD790] = v28;
  LODWORD(v257) = *(v29 + 4 * v257);
  v267 = (v49 + 4 * (v240 ^ 0x1Cu));
  STACK[0xD738] = v267;
  LODWORD(v260) = *v267;
  STACK[0xD780] = v29;
  LODWORD(v247) = v200 ^ v247;
  v268 = STACK[0xD760];
  LODWORD(v184) = *(STACK[0xD760] + 4 * (BYTE2(v184) ^ 0x7Bu));
  v269 = 4 * (v251 ^ 0x6Bu);
  STACK[0xD738] = v267 + v269;
  STACK[0xD790] = v28 + 4 * v185;
  LODWORD(v185) = *(v28 + 4 * v185);
  LODWORD(v247) = v247 ^ v257;
  LODWORD(v240) = BYTE1(v240) ^ 0x76;
  STACK[0xD780] = v29 + 4 * v240;
  STACK[0xD738] = v269 + v49;
  LODWORD(v251) = *(v49 + v269);
  STACK[0xD738] = v49;
  LODWORD(v257) = *(v29 + 4 * v240);
  LODWORD(v240) = v247 ^ v260;
  STACK[0xD780] = v29;
  LODWORD(v185) = v185 ^ v184 ^ v251 ^ v257;
  LODWORD(v247) = HIBYTE(v263) ^ 0x4A;
  STACK[0xD790] = v28 + 4 * v247;
  LODWORD(v251) = v185 ^ 0x8A;
  STACK[0xD738] = v49 + 4 * v251;
  LODWORD(v184) = *(v268 + 4 * (BYTE2(v266) ^ 0x95u));
  LODWORD(v251) = *(v49 + 4 * v251);
  LODWORD(v247) = *(v28 + 4 * v247);
  v270 = v29 + 4 * (BYTE1(v240) ^ 0x6Cu);
  STACK[0xD780] = v270;
  STACK[0xD738] = v49;
  LODWORD(v268) = *v270;
  LODWORD(v267) = HIBYTE(v266) ^ 0x67;
  STACK[0xD790] = v28 + 4 * v267;
  v271 = 4 * (BYTE1(v185) ^ 0x40u);
  STACK[0xD780] = v270 + v271;
  LODWORD(v270) = *(v28 + 4 * v267);
  v272 = (v271 + v29);
  STACK[0xD780] = v271 + v29;
  LODWORD(v271) = v263 ^ 0x68;
  STACK[0xD738] = v49 + 4 * v271;
  LODWORD(v269) = *v272;
  STACK[0xD790] = v28;
  v273 = 4 * (BYTE1(v263) ^ 0xFEu);
  STACK[0xD780] = v272 + v273;
  LODWORD(v272) = *(v49 + 4 * v271);
  LODWORD(v271) = v266 ^ 0xC2;
  STACK[0xD738] = v49 + 4 * v271;
  v274 = STACK[0xD760];
  LODWORD(v187) = *(STACK[0xD760] + 4 * (BYTE2(v240) ^ 0x22u));
  LODWORD(v247) = v251 ^ v184 ^ v247 ^ v268;
  LODWORD(v184) = BYTE3(v240) ^ 0x4F;
  STACK[0xD790] = v28 + 4 * v184;
  LODWORD(v268) = BYTE3(v185) ^ 0xB3;
  LODWORD(v251) = v269 ^ v270 ^ v272 ^ v187;
  LODWORD(v184) = *(v28 + 4 * v184);
  STACK[0xD790] = v28;
  LODWORD(v185) = *(v274 + 4 * (BYTE2(v185) ^ 0x4Fu)) ^ v184;
  STACK[0xD780] = v273 + v29;
  LODWORD(v184) = *(v29 + v273);
  LODWORD(v270) = *(v49 + 4 * v271);
  v275 = BYTE1(v266) ^ 0x7B;
  STACK[0xD780] = v29 + 4 * v275;
  v276 = *(v274 + 4 * (BYTE2(v263) ^ 0xC2u));
  STACK[0xD790] = v28 + 4 * v268;
  LODWORD(v270) = v185 ^ v184 ^ v270;
  LODWORD(v185) = *(v28 + 4 * v268);
  v277 = *(v29 + 4 * v275);
  STACK[0xD790] = v28;
  LODWORD(v240) = v240 ^ 0x1F;
  STACK[0xD738] = v49 + 4 * v240;
  LODWORD(v240) = *(v49 + 4 * v240);
  STACK[0xD780] = v29;
  LODWORD(v185) = v185 ^ v277 ^ v276;
  v278 = ((v247 ^ 0x49B3BAD6) + 2062022105) ^ ((v247 ^ 0x8504C4BA) - 1236235339) ^ ((v247 ^ 0x1CCE9D) + 860389780);
  LODWORD(v184) = ((v238 ^ 0xCFD4543C) - 1461677188) ^ ((v238 ^ 0x33E86B69) + 1423748143) ^ ((v238 ^ 0x168607D0) + 1907540120);
  LODWORD(v247) = (((v234 ^ 0x908B5D62) + 1873442083) ^ ((v234 ^ 0x45857D0B) - 1163635380) ^ ((v234 ^ 0x19A59098) - 427509543)) - v278 + 658931633;
  LODWORD(v272) = v185 ^ v240;
  LODWORD(v240) = ((v251 ^ 0xA1483B23) - 1274151846) ^ ((v251 ^ 0xA3366A41) - 1233932996) ^ ((v251 ^ 0xE8C469E7) - 41832802);
  STACK[0xD738] = v49;
  LODWORD(v271) = ((v245 ^ 0x71FF5EE8) + 1516266224) ^ ((v245 ^ 0x4168596) + 797555090) ^ ((v245 ^ 0x633ECF6E) + 1218573162);
  v279 = ((v272 ^ 0x536D64DC) - 1169846476) ^ ((v272 ^ 0x97729142) + 2119858862) ^ ((v272 ^ 0xD2C8E18E) + 1004538466);
  LODWORD(v272) = v271 - v279;
  LODWORD(v271) = v271 - v279 - 279534636;
  LODWORD(v270) = ((v270 ^ 0x8218C120) - 1711564300) ^ ((v270 ^ 0xBCADBDA4) - 1488001672) ^ ((v270 ^ 0xDAA9DBA8) - 1052081284);
  LODWORD(v269) = (((v242 ^ 0x8468231A) + 1598959764) ^ ((v242 ^ 0x7D6F10FB) - 1505164429) ^ ((v242 ^ 0x1D1B94CD) - 969046203)) - v270 + 334679382;
  LODWORD(v187) = (v271 ^ 0xA4F9924F) & (2 * (v271 & 0x24F11B4F)) ^ v271 & 0x24F11B4F;
  LODWORD(v273) = ((2 * (v271 ^ 0xAC3980DF)) ^ 0x11913720) & (v271 ^ 0xAC3980DF) ^ (2 * (v271 ^ 0xAC3980DF)) & 0x88C89B90;
  LODWORD(v274) = v273 ^ 0x88488890;
  LODWORD(v273) = (v273 ^ 0x8801380) & (4 * v187) ^ v187;
  LODWORD(v187) = ((4 * v274) ^ 0x23226E40) & v274 ^ (4 * v274) & 0x88C89B90;
  LODWORD(v273) = (v187 ^ 0xA00) & (16 * v273) ^ v273;
  LODWORD(v187) = ((16 * (v187 ^ LODWORD(STACK[0x458]))) ^ 0x8C89B900) & (v187 ^ LODWORD(STACK[0x458])) ^ (16 * (v187 ^ LODWORD(STACK[0x458]))) & 0x88C89B90;
  LODWORD(v273) = v273 ^ 0x88C89B90 ^ (v187 ^ 0x88889990) & (v273 << 8);
  LODWORD(v269) = -171430631 * (v269 ^ ((v269 ^ 0xE8AFF733) + 57852859) ^ ((v269 ^ 0x12BA7B5A) - 110669868) ^ ((v269 ^ 0x15C8B8E0) - 32142230) ^ ((v269 ^ 0xFBFFFFFF) + 270715767) ^ 0x1C8B7FF);
  LODWORD(v251) = 937811063 * ((((4 * ((v273 << 16) & 0xC00000 ^ v273 ^ ((v273 << 16) ^ 0x11900000) & (((v187 ^ 0x400290) << 8) & 0x8C80000 ^ (((v187 ^ 0x400290) << 8) ^ 0x89B0000) & (v187 ^ 0x400290) ^ 0x400000))) ^ (2 * v271)) & 0xD7473EB4 ^ LODWORD(STACK[0x45C])) + v272);
  v280 = 943300201 * ((v184 - v240 - 1648254382) ^ (((v184 - v240 - 1648254382) ^ 0xE451C4A) - 1375798798) ^ (((v184 - v240 - 1648254382) ^ 0x87AB0286) + 605087550) ^ (((v184 - v240 - 1648254382) ^ 0x2055F977) - 2081547059) ^ (((v184 - v240 - 1648254382) ^ 0xF5FFFDFF) + 1447303237) ^ 0x1EA2C9F3);
  LODWORD(v247) = v280 + 1630531383 * (v247 ^ ((v247 ^ 0x3B7699B5) - 1561199289) ^ ((v247 ^ 0xABC1B5F4) + 843501832) ^ ((v247 ^ 0x9344A93) - 1867305375) ^ ((v247 ^ 0xFFFBFDDE) + 1719441710) ^ 0xB79F60E);
  v281 = v251 - v247 - 732744558;
  v282 = v269 + v280 + v281;
  LODWORD(v234) = v282 ^ v281;
  v283 = v247 - v269 - v251 - (v282 ^ v281) + 732744558;
  v284 = ((2 * v283) & 0xD3DCFFF8) + (v283 ^ 0xE9EE7FFC);
  v285 = v284 - v282 + 1760063253;
  LODWORD(v247) = v247 + 1977509822 + v285;
  v286 = v240 + 2002343780 + v285;
  v287 = v278 - v284 + 81136594;
  LODWORD(STACK[0x57B0]) = v287;
  v288 = v279 - v234 - 1266764734 + v247;
  v289 = v270 + 996897524 - v247 + 3199;
  LODWORD(STACK[0x5740]) = v289;
  LODWORD(STACK[0x57A0]) = HIBYTE(v286);
  v290 = HIBYTE(v287);
  v291 = STACK[0x5790];
  v292 = (((v291 & 0xFFFFFFF8 ^ 0x7888F78F) - 928561926) ^ ((v291 & 0xFFFFFFF8 ^ 0x98468B2F) + 677984346) ^ ((v291 & 0xFFFFFFF8 ^ 0xE0CE7CA0) + 1356976087)) + 1099929930;
  LODWORD(v251) = (v292 ^ 0x90FB3C6E) & (2 * (v292 & 0xA2FB0070)) ^ v292 & 0xA2FB0070;
  LODWORD(v240) = ((2 * (v292 ^ 0xD5993CAE)) ^ 0xEEC479BC) & (v292 ^ 0xD5993CAE) ^ (2 * (v292 ^ 0xD5993CAE)) & 0x77623CDE;
  LODWORD(v185) = v240 ^ 0x11220442;
  LODWORD(v240) = (v240 ^ 0x6400080) & (4 * v251) ^ v251;
  LODWORD(v251) = ((4 * v185) ^ 0xDD88F378) & v185 ^ (4 * v185) & 0x77623CDC;
  LODWORD(v240) = (v251 ^ LODWORD(STACK[0x460])) & (16 * v240) ^ v240;
  LODWORD(v251) = ((16 * (v251 ^ 0x22620C86)) ^ 0x7623CDE0) & (v251 ^ 0x22620C86) ^ (16 * (v251 ^ 0x22620C86)) & 0x77623CD0;
  LODWORD(v240) = v240 ^ 0x77623CDE ^ (v251 ^ 0x76220C1E) & (v240 << 8);
  v293 = v292 ^ (2 * ((v240 << 16) & 0x77620000 ^ v240 ^ ((v240 << 16) ^ 0x3CDE0000) & (((v251 ^ LODWORD(STACK[0x464])) << 8) & 0x77620000 ^ 0x15420000 ^ (((v251 ^ LODWORD(STACK[0x464])) << 8) ^ 0x623C0000) & (v251 ^ LODWORD(STACK[0x464]))))) ^ 0x24BB79C8;
  v294 = 8 * (STACK[0x5790] & 7);
  v295 = *STACK[0x51E8] & 0xFFFFFFF8;
  v296 = v295 & v293;
  v297 = *STACK[0x51F0];
  v298 = *(v297 + v296);
  *(&v299 + 1) = STACK[0x5790] & 0xFFFFFFFFFFFFFFF8;
  *&v299 = STACK[0x5790];
  v300 = ((v299 >> 8) + v298) ^ 0xB8D314A89AE96B52;
  v301 = v300 ^ __ROR8__(v298, 61);
  v302 = (v301 + __ROR8__(v300, 8)) ^ 0x35A8E324B8B02042;
  v303 = v302 ^ __ROR8__(v301, 61);
  v304 = (__ROR8__(v302, 8) + v303) ^ 0xA0DB0A4EDCA119ACLL;
  *&v299 = __ROR8__(v303, 61);
  v305 = v304 ^ v299;
  v306 = ((v304 ^ v299) + (v304 << 56) + (v304 >> 8)) ^ 0x5B30F414A2B2F4A0;
  *&v299 = __ROR8__(v305, 61);
  v307 = v306 ^ v299;
  v308 = ((v306 ^ v299) + (v306 >> 8) + (v306 << 56)) ^ 0xF9097C1E116D0BD8;
  v309 = v308 ^ __ROR8__(v307, 61);
  v310 = v309 + __ROR8__(v308, 8);
  v311 = v310 ^ __ROR8__(v309, 61);
  *(&v299 + 1) = v311 ^ 0x1B61EA0A471A5845;
  *&v299 = v311;
  v312 = (__ROR8__(v310 ^ 0x1B61EA0A471A5845, 8) + (v311 ^ 0x1B61EA0A471A5845)) ^ 0x453A444779340866;
  LODWORD(v270) = ((((v291 + 8) & 0xFFFFFFF8 ^ 0x912AEA9D) + 1400417754) ^ (((v291 + 8) & 0xFFFFFFF8 ^ 0x96F3F7D7) + 1419882644) ^ (((v291 + 8) & 0xFFFFFFF8 ^ 0x7D91D4A) - 980723185)) - 289996046;
  LODWORD(v272) = (v270 ^ 0xE3A560F1) & (2 * (v270 & 0xE3B102FA)) ^ v270 & 0xE3B102FA;
  LODWORD(v268) = ((2 * (v270 ^ 0x21876581)) ^ 0x846CCEF6) & (v270 ^ 0x21876581) ^ (2 * (v270 ^ 0x21876581)) & 0xC236677A;
  LODWORD(v271) = v268 ^ 0x42122109;
  LODWORD(v268) = (v268 ^ 0x80040670) & (4 * v272) ^ v272;
  LODWORD(v272) = ((4 * v271) ^ LODWORD(STACK[0x468])) & v271 ^ (4 * v271) & 0xC2366778;
  LODWORD(v268) = (v272 ^ 0x100573) & (16 * v268) ^ v268;
  LODWORD(v272) = ((16 * (v272 ^ 0xC2266213)) ^ 0x236677B0) & (v272 ^ 0xC2266213) ^ (16 * (v272 ^ 0xC2266213)) & 0xC2366770;
  LODWORD(v268) = v268 ^ 0xC236677B ^ (v272 ^ 0x2266700) & (v268 << 8);
  v313 = ((__ROR8__(v312, 8) + (v312 ^ (v299 >> 61))) ^ 0xBA0A5B6047D5AC04) >> v294;
  v314 = *(v297 + (v295 & (v270 ^ 0xE3B9CC08 ^ (2 * ((v268 << 16) & 0x42360000 ^ v268 ^ ((v268 << 16) ^ 0x677B0000) & (((v272 ^ 0xC010004B) << 8) & 0x42360000 ^ 0x40100000 ^ (((v272 ^ 0xC010004B) << 8) ^ 0x36670000) & (v272 ^ 0xC010004B)))))));
  *(&v299 + 1) = (STACK[0x5790] + 8) & 0xFFFFFFFFFFFFFFF8;
  *&v299 = STACK[0x5790] + 8;
  v315 = (v314 + (v299 >> 8)) ^ 0xB8D314A89AE96B52 ^ __ROR8__(v314, 61);
  v316 = __ROR8__((v314 + (v299 >> 8)) ^ 0xB8D314A89AE96B52, 8) + v315;
  *&v299 = __ROR8__(v315, 61);
  v317 = v316 ^ v299 ^ 0x35A8E324B8B02042;
  v318 = ((((v316 ^ 0x35A8E324B8B02042uLL) >> ((v316 ^ v299) & 8) >> ((v316 ^ v299) & 8 ^ 8)) | ((v316 ^ 0x35A8E324B8B02042) << 56)) + v317) ^ 0xA0DB0A4EDCA119ACLL;
  v319 = v318 ^ __ROR8__(v317, 61);
  v320 = __ROR8__(v318, 8) + v319;
  *&v299 = __ROR8__(v319, 61);
  v321 = v299 & 2;
  v322 = v320 ^ 0x5B30F414A2B2F4A0;
  v323 = v299 & 0xFFFFFFFFFFFFFFFDLL;
  if ((v299 & 2 & v320) != 0)
  {
    v324 = -v321;
  }

  else
  {
    v324 = v321;
  }

  v325 = (v324 + v322) ^ v323;
  v326 = (v325 + __ROR8__(v322, 8)) ^ 0xF9097C1E116D0BD8;
  v327 = v326 ^ __ROR8__(v325, 61);
  v328 = __ROR8__(v326, 8) + v327;
  v329 = __ROR8__(v327, 61);
  *(&v330 + 1) = v328 ^ v329 ^ 0x1B61EA0A471A5845;
  *&v330 = v328 ^ v329;
  v331 = (__ROR8__(v328 ^ 0x1B61EA0A471A5845, 8) + *(&v330 + 1)) ^ 0x453A444779340866;
  v332 = ((v331 ^ (v330 >> 61)) + __ROR8__(v331, 8)) ^ 0xBA0A5B6047D5AC04;
  v333 = v332 >> v294;
  v334 = v294 ^ 0x3B;
  v335 = (v291 + 16 - ((2 * (v291 + 16)) & 0x7A7F366E) - 1119904969) & 0xFFFFFFF8;
  v336 = (((v335 ^ 0xBEF8CBEE) - 73023136) ^ ((v335 ^ 0xDECDDB8B) - 1685008069) ^ ((v335 ^ 0xDD0A8B55) - 1739095579)) - 1592959479;
  v337 = (v336 ^ 0xFA635934) & (2 * (v336 & 0xFB4A5DA6)) ^ v336 & 0xFB4A5DA6;
  v338 = ((2 * (v336 ^ LODWORD(STACK[0x46C]))) ^ 0x62731BB4) & (v336 ^ LODWORD(STACK[0x46C])) ^ (2 * (v336 ^ LODWORD(STACK[0x46C]))) & 0x31398DDA;
  v339 = v338 ^ 0x1108844A;
  v340 = (v338 ^ 0x203109D2) & (4 * v337) ^ v337;
  v341 = ((4 * v339) ^ 0xC4E63768) & v339 ^ (4 * v339) & 0x31398DD8;
  v342 = (v341 ^ 0x200552) & (16 * v340) ^ v340;
  v343 = ((16 * (v341 ^ 0x31198892)) ^ 0x1398DDA0) & (v341 ^ 0x31198892) ^ (16 * (v341 ^ 0x31198892)) & 0x31398DD0;
  v344 = v342 ^ 0x31398DDA ^ (v343 ^ 0x11188D00) & (v342 << 8);
  v345 = *(v297 + (v295 & (v336 ^ (2 * ((v344 << 16) & 0x31390000 ^ v344 ^ ((v344 << 16) ^ 0xDDA0000) & (((v343 ^ 0x2021005A) << 8) & 0x31390000 ^ (((v343 ^ 0x2021005A) << 8) ^ 0x398D0000) & (v343 ^ 0x2021005A) ^ 0x300000))) ^ 0x9B094610)));
  v346 = v313 + 32 * (v332 << v334);
  v347 = ((__ROR8__(v291 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) + v345) ^ 0xB8D314A89AE96B52;
  *&v330 = __ROR8__(v345, 61);
  v348 = v347 ^ v330;
  v349 = ((v347 ^ v330) + (v347 >> 8) + (v347 << 56)) ^ 0x35A8E324B8B02042;
  v350 = v349 ^ __ROR8__(v348, 61);
  v351 = v350 + __ROR8__(v349, 8);
  v352 = v351 ^ __ROR8__(v350, 61);
  v353 = (__ROR8__(v351, 8) ^ 0xACA0DB0A4EDCA119) + (v352 ^ 0xA0DB0A4EDCA119ACLL);
  *(&v330 + 1) = v352 ^ 0xA0DB0A4EDCA119ACLL;
  *&v330 = v352;
  v354 = (v330 >> 61) ^ 0x5B30F414A2B2F4A5 ^ v353;
  v355 = (__ROR8__(v353 ^ 0x5B30F414A2B2F4A0, 8) + v354) ^ 0xF9097C1E116D0BD8;
  v356 = v355 ^ __ROR8__(v354, 61);
  *&v330 = __ROR8__(v355, 8);
  v357 = (v356 + v330) ^ 0x1B61EA0A471A5845;
  v358 = (v356 >> (v326 & 0x3D) >> (v326 & 0x3D ^ 0x3D));
  v359 = (v356 + v330) ^ (8 * v356);
  v360 = v359 ^ v358 ^ 0x1B61EA0A471A5845;
  v361 = (v360 + __ROR8__(v357, 8)) ^ 0x453A444779340866;
  *(&v330 + 1) = v360;
  *&v330 = v359;
  v362 = v361 ^ (v330 >> 61);
  *&v330 = __ROR8__(v361, 8);
  v363 = STACK[0xD748];
  v364 = v333 + 32 * ((((v362 ^ v330) + 2 * (v362 & v330)) ^ 0x20A5B6047D5AC04) << v334);
  v365 = v313 ^ 0x20;
  v366 = (v313 ^ 0x20) + 2;
  v367 = STACK[0x56D0];
  v368 = *(STACK[0x56D0] + (v313 ^ 0x8CLL));
  v369 = (v368 ^ -v368 ^ ((v366 ^ v365) - (v366 ^ v365 ^ v368))) + (v366 ^ v365);
  LODWORD(STACK[0x5790]) = (v369 ^ 0x14) - ((2 * v369) & 0x42);
  v370 = STACK[0x56C0];
  v371 = STACK[0xD778];
  v372 = STACK[0xD770] + 4 * BYTE1(v289);
  v373 = STACK[0x56E0];
  v374 = (*(STACK[0x56E0] + (BYTE2(v346) ^ 0x67)) + 28);
  v375 = v288;
  v376 = STACK[0xD750] + 4 * v288;
  v377 = (*(STACK[0x56E0] + (BYTE2(v346) ^ 0x67)) + 28) ^ (v374 >> 5) ^ (v374 >> 4);
  v378 = HIBYTE(v346);
  v379 = *(v363 + 4 * v290);
  v380 = ((v288 ^ 0x3C0178DF310F7FCELL) - 0x7C0178DF3EDF7924) ^ ((v288 ^ 0x13E5DC29E4270B56) + 0x2C1A23D61408F244) ^ ((v288 ^ 0x2FE4A4F6D5287498) + 0x501B5B0925078D8ELL);
  v381 = ((v377 ^ 0xD4) << 8) - (((v377 ^ 0xD4) << 9) & 0xD000);
  v382 = v286;
  v383 = *(STACK[0xD778] + 4 * BYTE2(v286));
  v384 = v372 + 4 * (-2194211608 - (((BYTE1(v289) ^ 0x12D32109837A233ALL) + 0x2D2CDEF6FE4CDFDELL) ^ ((BYTE1(v289) ^ 0x184707D27ABB5574) - 0x584707D2F872566CLL) ^ ((BYTE1(v289) ^ 0xA9426DBF9C1764ELL) + 0x756BD92484F78AAALL)));
  v385 = *(v372 - 0x3B44372B8C0487F0);
  v386 = (*(v370 + (BYTE1(v346) ^ 0xC9)) ^ ((*(v370 + (BYTE1(v346) ^ 0xC9)) ^ 0x4F) >> 4) ^ ((*(v370 + (BYTE1(v346) ^ 0xC9)) ^ 0x4F) >> 2)) ^ 0xC5;
  v387 = v376 + 4 * (-265291498 - v380);
  LODWORD(v376) = *(v376 - 0x2454F903A5AC80A3);
  STACK[0xD750] = v387;
  v388 = STACK[0x56F0];
  LODWORD(STACK[0x5780]) = *(STACK[0x56F0] + (BYTE3(v346) ^ 0xBCLL)) ^ ((BYTE3(v346) ^ 0x63) - (BYTE3(v346) ^ 0x11));
  v389 = STACK[0x55D0];
  LODWORD(STACK[0x5770]) = LODWORD(STACK[0x55D0]) ^ v379 ^ v383 ^ v376 ^ v385 ^ (v386 << 16) ^ (v381 - 1099667301);
  v390 = *(v363 + 4 * LODWORD(STACK[0x57A0]));
  LODWORD(v357) = (*(v367 + (BYTE4(v346) ^ 0x86)) ^ HIDWORD(v346) ^ 0x2A ^ ((HIDWORD(v346) ^ 0x2A) + 2) ^ 0xEC) << 24;
  v391 = (v357 ^ 0x14D3EAA0) & (v390 ^ 0x3AF53A) ^ v390 & 0x28D3EAA0;
  v392 = *(v370 + (BYTE5(v346) ^ 0xADLL));
  v393 = v370;
  LODWORD(STACK[0x57A0]) = (((v390 ^ 0x431A02FD) - 1125778173) ^ ((v390 ^ 0xA027BB88) + 1608008824) ^ ((v390 ^ 0x63075818) - 1661425688)) + (((v357 ^ 0x1DCF507A) + 2002923784) ^ ((v357 ^ 0x40C61F0) + 1856045198) ^ ((v357 ^ LODWORD(STACK[0x470])) - 814853896)) - ((((2 * v391) ^ 0x4D46AF1E) + 1253940621) ^ (((2 * v391) ^ 0x7369DAEB) + 1955784826) ^ (((2 * v391) ^ 0x3E0AB5B5) + 972130088));
  LODWORD(v370) = v375;
  v394 = v384 + 4 * BYTE1(v375);
  STACK[0x5760] = v394;
  v395 = v394 + 4 * (-279559674 - (((BYTE1(v375) ^ 0x1D7EE55C43397F66) - 0x1D7EE55C5390C29CLL) ^ ((BYTE1(v375) ^ 0x1032CF0CBDB891EBLL) + 0x2FCD30F352EED3EFLL) ^ ((BYTE1(v375) ^ 0xD4C2A50FE81EE8DLL) + 0x32B3D5AF11D7AC89)));
  STACK[0xD770] = v384;
  STACK[0xD770] = v395;
  v396 = v373;
  LODWORD(v346) = *(v373 + (BYTE6(v346) ^ 0x34));
  LODWORD(STACK[0x5750]) = ((v392 ^ ((v392 ^ 0x4F) >> 4) ^ ((v392 ^ 0x4F) >> 2)) ^ 0x74) - ((2 * v392) & 0x100);
  LODWORD(v394) = STACK[0x57B0];
  v397 = v387 + 4 * LODWORD(STACK[0x57B0]);
  LODWORD(v346) = ((((v346 + 28) ^ 0xFFFFFFC7) >> 7) & 1 | (2 * ((v346 + 28) ^ 0xFFFFFFC7))) ^ (2 * (((v346 + 28) >> 5) ^ ((v346 + 28) >> 4))) ^ 0xFFFFFFD5;
  LODWORD(STACK[0x5730]) = (v346 >> 1) | (v346 << 7);
  v398 = v388;
  LODWORD(v378) = ((v378 ^ 0x82) - (v378 ^ 0xF0)) ^ *(v388 + (v378 ^ 0x5D));
  LODWORD(STACK[0x5720]) = v378 - ((2 * v378) & 0x98);
  LODWORD(v333) = v333 ^ ((v333 ^ 0x19) + 2) ^ *(v367 + (v333 ^ 0xB5));
  v399 = v395 + 4 * BYTE1(v394);
  LOBYTE(v395) = *(v393 + (BYTE1(v364) ^ 0x91)) ^ ((*(v393 + (BYTE1(v364) ^ 0x91)) ^ 0x4F) >> 4) ^ ((*(v393 + (BYTE1(v364) ^ 0x91)) ^ 0x4F) >> 2);
  LOBYTE(v379) = (*(v373 + (BYTE2(v364) ^ 0x98)) + 28) ^ ((*(v373 + (BYTE2(v364) ^ 0x98)) + 28) >> 5) ^ ((*(v373 + (BYTE2(v364) ^ 0x98)) + 28) >> 4);
  v400 = ((BYTE3(v364) ^ 0xB0) - (BYTE3(v364) ^ 0xC2)) ^ *(v388 + (BYTE3(v364) ^ 0x6FLL));
  BYTE1(v346) = HIBYTE(v382);
  v401 = v397 + 4 * (-1845169064 - (((v394 ^ 0x2E88A80882750331) - 0x6E88A808EF8E0899) ^ ((v394 ^ 0x36DEF6CF2D63394BLL) + 0x9210930BF67CD1DLL) ^ ((v394 ^ 0x18565EC7AF163A7ALL) + 0x67A9A1383D12CE2ELL))) + 4 * v382;
  v402 = STACK[0x5740];
  LODWORD(v388) = *(v363 + 4 * HIBYTE(LODWORD(STACK[0x5740])));
  v403 = *(v363 + 4 * BYTE3(v370));
  STACK[0xD748] = v363;
  v404 = v401 + 4 * (-237108605 - (((v382 ^ 0x12FCBC81ED308DC9) + 0x6D03437E1CEE8F4CLL) ^ ((v382 ^ 0x2555779823D6D54DLL) - 0x255577982DF72830) ^ ((v382 ^ 0x37A9CB19CEE65884) + 0x485634E63F385A07)));
  v405 = v388 ^ *(v371 + 4 * BYTE2(v370)) ^ 0xA545C92D ^ *(v401 - 0x2454F903A5AC80A3) ^ *(v399 - 0x3B44372B8C0487F0) ^ ((((v333 ^ 0xA0) - ((2 * v333) & 0xC)) << 24) - 2046820352) ^ ((v395 ^ 0x85) << 16) ^ v400 ^ (((v379 ^ 0xD6) << 8) - (((v379 ^ 0xD6) << 9) & 0x16800) - 454708096);
  v406 = HIDWORD(v364) ^ 0xFFFFFFC7 ^ ((HIDWORD(v364) ^ 0xFFFFFFC7) + 2) ^ 0x5F ^ *(v367 + (BYTE4(v364) ^ 0x6BLL));
  v407 = v406 - ((2 * v406) & 0xFFFFFFC7);
  v408 = v402;
  v409 = *(v371 + 4 * BYTE2(v402));
  v410 = *(v371 + 4 * BYTE2(v394));
  v411 = *(v393 + (BYTE5(v364) ^ 0x91 ^ -(BYTE5(v364) ^ 0x91) ^ (163 - (BYTE5(v364) ^ 0x32u))) + 163);
  STACK[0xD778] = v371;
  v412 = BYTE1(v346) ^ 0xFD7F3986;
  v413 = v399 + 4 * (-861144323 - (((BYTE1(v394) ^ 0x3A4C876ACFD9362ELL) + 0x5B378950372CCD3) ^ ((BYTE1(v394) ^ 0x2E50AB07002FA418) + 0x51AF54F8CC845EE5) ^ ((BYTE1(v394) ^ 0x141C2C6DCFF69236) - 0x541C2C6DFCA29735))) + 4 * BYTE1(v346);
  v414 = v411 - 1;
  if ((v411 & 1) == 0)
  {
    v414 = v411 + 1;
  }

  v415 = v414 ^ ((v414 ^ 0x4E) >> 4) ^ ((v414 ^ 0x4E) >> 2);
  v416 = (*(v396 + (BYTE6(v364) ^ 0x99)) + 28);
  v417 = (*(v396 + (BYTE6(v364) ^ 0x99)) + 28) ^ (v416 >> 5) ^ (v416 >> 4);
  v418 = HIBYTE(v364);
  v419 = LODWORD(STACK[0x5780]) ^ ((LODWORD(STACK[0x5790]) << 24) - 1593835520) ^ 0xD8D41531 ^ LODWORD(STACK[0x5770]);
  v420 = ((v417 ^ 0xED) << 8) - (((v417 ^ 0xED) << 9) & 0x18000);
  LOBYTE(v417) = (v418 ^ 0x51) - (v418 ^ 0x23);
  v421 = *(v398 + (v418 ^ 0x8E));
  v422 = STACK[0x5530];
  v423 = v405 + v389 - 2 * (v405 & v389);
  v424 = v419 ^ STACK[0x5530] & 0x40000;
  v425 = (v419 & STACK[0x5530] & 0x40000) == 0;
  v426 = v419 - (STACK[0x5530] & 0x40000);
  v427 = v421 ^ v417;
  v428 = LODWORD(STACK[0x5530]) ^ v389 ^ v409 ^ *(v397 - 0x2454F903A5AC80A3) ^ *(STACK[0x5760] - 0x3B44372B8C0487F0) ^ ((LODWORD(STACK[0x5750]) << 16) + 1233125376) ^ ((LODWORD(STACK[0x5730]) ^ 0xEA) << 8) ^ (LODWORD(STACK[0x5720]) + 2091314764) ^ (LODWORD(STACK[0x57A0]) - 520420708) ^ (((LODWORD(STACK[0x57A0]) - 520420708) ^ 0xB7369002) + 1732763688) ^ (((LODWORD(STACK[0x57A0]) - 520420708) ^ 0xCCEA0C4F) + 479951979) ^ (((LODWORD(STACK[0x57A0]) - 520420708) ^ 0xEF8DEC68) + 1073519694) ^ (((LODWORD(STACK[0x57A0]) - 520420708) ^ 0xBBDFFFFF) + 1806602203) ^ 0x5D32FD56;
  if (v425)
  {
    v429 = v424;
  }

  else
  {
    v429 = v426;
  }

  v430 = v422 & 0xFFFBFFFF ^ LODWORD(STACK[0x5540]) ^ v429;
  v431 = v422 ^ LODWORD(STACK[0x5540]) ^ v423;
  v432 = v413 + 4 * (-4252973446 - (((v412 ^ 0x3181B7CCEE70AFBLL) + 0x3CE7E4833118F505) ^ ((v412 ^ 0x20EBDA3B6709048CLL) - 0x60EBDA3B6709048CLL) ^ ((v412 ^ 0x23F3C147549137F1) + 0x5C0C3EB8AB6EC80FLL)));
  v433 = v408;
  v434 = v404 + 4 * v408;
  v435 = v422 ^ LODWORD(STACK[0x5540]) ^ v389 ^ v410 ^ v403 ^ *(v434 - 0x2454F903A5AC80A3) ^ *(v413 - 0x3B44372B8C0487F0) ^ ((v407 << 24) - 486539264) ^ v427 ^ ((v415 ^ 0x19) << 16) ^ (v420 - 1197489995);
  v436 = LODWORD(STACK[0x5540]) ^ __ROR4__(__ROR4__(v428, 14) ^ 0x55158966, 18);
  v437 = STACK[0x57C0];
  v438 = *(&off_101353600 + (LODWORD(STACK[0x57C0]) ^ 0x449D));
  v439 = STACK[0xD758];
  v440 = STACK[0xD758];
  v439[4] = *(v438 + (HIBYTE(v436) ^ 0x10)) ^ 0x56;
  v441 = *(&off_101353600 + v437 - 16757) - 12;
  v442 = (v435 ^ 0x942E5121 ^ -(v435 ^ 0x942E5121) ^ (57620 - (v435 ^ 0x942EB035))) + 57620;
  v439[1] = ((BYTE2(v430) ^ 0x62) + 27) ^ 0x7D ^ v441[BYTE2(v430) ^ 0x8CLL];
  v439[9] = ((BYTE2(v431) ^ 0x90) + 27) ^ 0x52 ^ v441[BYTE2(v431) ^ 0x7ELL];
  *v439 = *(v438 + (HIBYTE(v430) ^ 0xBLL)) ^ 0xFD;
  v439[5] = v441[BYTE2(v436) ^ 0xF9] ^ ((BYTE2(v436) ^ 0x17) + 27) ^ 0x51;
  v439[12] = *(v438 + (HIBYTE(v435) ^ 0x36)) ^ 0x90;
  v443 = *(&off_101353600 + (v437 ^ 0x454A)) - 8;
  v439[6] = (v443[BYTE1(v436) ^ 0xBLL] - 126) ^ 0x53;
  v439[13] = v441[BYTE2(v442) ^ 0xEDLL] ^ ((BYTE2(v442) ^ 3) + 27) ^ 0xC5;
  v444 = *(&off_101353600 + v437 - 16542) - 12;
  v439[11] = v431 ^ v444[v431 ^ 0x56] ^ 0x30;
  v440[3] = v430 ^ 0x6A ^ v444[v430 ^ 0x78];
  v440[2] = (v443[BYTE1(v430) ^ 0x1ALL] - 126) ^ 0x32;
  LOBYTE(v430) = v443[(((v431 & 0x1C ^ 8) + (v431 ^ 0xB94)) >> 8) ^ 0xBELL];
  STACK[0xD770] = v432;
  v440[10] = (v430 - 126) ^ 0x6D;
  LOWORD(v435) = v435 ^ 0xBD18;
  v440[7] = v436 ^ 0xC8 ^ v444[v436 ^ 0xC2];
  v440[15] = v435 ^ 0x31 ^ v444[v435 ^ 0xDALL];
  v440[8] = *(v438 + (HIBYTE(v431) ^ 0xC7)) ^ 4;
  v440[14] = (v443[BYTE1(v435) ^ 0x4ELL] - 126) ^ 0xB5;
  STACK[0xD750] = v434 + 4 * (-2432724442 - (((v433 ^ 0x29377B5EED130BBCLL) - 0x69377B5E7C136666) ^ ((v433 ^ 0x1E05E6452D736BA3) - 0x5E05E645BC730679) ^ ((v433 ^ 0x37329D1BC060601FLL) - 0x37329D1B51600DC5)));
  LODWORD(STACK[0xD744]) = 0;
  return (*(STACK[0x57D8] + 8 * v437))();
}

uint64_t sub_1007AEA24(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  LODWORD(STACK[0x32F8]) = LODWORD(STACK[0x4E80]) | LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x32F0]) = LODWORD(STACK[0x4E50]) | LODWORD(STACK[0x4E34]);
  v6 = *(STACK[0x57D8] + 8 * a4);
  LODWORD(STACK[0x4E50]) = v4 & (v5 ^ 0xB130A1F0);
  return v6(STACK[0x5080]);
}

uint64_t sub_1007AEAB0()
{
  v0 = STACK[0x51B8] ^ 0x5079;
  v1 = 5 * (STACK[0x51B8] ^ 0x5A13);
  v2 = STACK[0x7ED8];
  v3 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xACF8] = v3;
  STACK[0x7440] = (v3 + 16);
  STACK[0x7ED8] = v2 + 32;
  STACK[0x9EF8] = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xE6280680)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x2BE0EB7F630A4FDALL;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x7267 ^ v1)))();
}

uint64_t sub_1007AEB74@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  *v9 = *a1;
  a9[1301] = a1[1];
  a9[1302] = a1[2];
  a9[1303] = a1[3];
  a9[1304] = a1[4];
  a9[1305] = a1[5];
  a9[1306] = a1[6];
  a9[1307] = a1[7];
  a9[1308] = a1[8];
  a9[1309] = a1[9];
  a9[1310] = a1[10];
  a9[1311] = a1[11];
  a9[1312] = a1[12];
  a9[1313] = a1[13];
  a9[1314] = a1[14];
  a9[1315] = a1[15];
  a9[1316] = a1[16];
  a9[1317] = a1[17];
  a9[1318] = a1[18];
  a9[1319] = a1[19];
  return (*(a8 + 8 * v10))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1007AEC5C()
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
  STACK[0xEF10] = 0;
  STACK[0xEF18] = v0;
  v10 = 16777619 * ((-548819963 * v9 + 7) ^ (-548819963 * v9)) % 7;
  v11 = *(&STACK[0xEF10] | v10);
  *(&STACK[0xEF10] | v10) = 0;
  LOBYTE(STACK[0xEF17]) = v11;
  v12 = 16777619 * ((-548819963 * v9 + 6) ^ (-548819963 * v9)) % 6;
  v13 = *(&STACK[0xEF10] | v12);
  *(&STACK[0xEF10] | v12) = STACK[0xEF16];
  LOBYTE(STACK[0xEF16]) = v13;
  v14 = 16777619 * ((-548819963 * v9 + 5) ^ (-548819963 * v9)) % 5;
  v15 = *(&STACK[0xEF10] | v14);
  *(&STACK[0xEF10] | v14) = STACK[0xEF15];
  LOBYTE(STACK[0xEF15]) = v15;
  v16 = STACK[0xEF10];
  LOBYTE(STACK[0xEF10]) = STACK[0xEF14];
  LOBYTE(STACK[0xEF14]) = v16;
  v17 = 16777619 * ((-548819963 * v9 + 3) ^ (-548819963 * v9)) % 3;
  v18 = *(&STACK[0xEF10] | v17);
  *(&STACK[0xEF10] | v17) = STACK[0xEF13];
  LOBYTE(STACK[0xEF13]) = v18;
  v19 = STACK[0xEF11];
  LOBYTE(STACK[0xEF12]) = STACK[0xEF10];
  LOWORD(STACK[0xEF10]) = v19;
  v20 = vdup_n_s32(-548819963 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -548819963 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEF10] = vmla_s32(v22, STACK[0xEF10], vdup_n_s32(0x1000193u));
  STACK[0xEF18] ^= STACK[0xEF10];
  STACK[0xEF18] = vmul_s32(vsub_s32(STACK[0xEF18], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEF1A];
  LOWORD(STACK[0xEF19]) = STACK[0xEF18];
  LOBYTE(STACK[0xEF18]) = v23;
  v24 = (&STACK[0xEF18] | v17);
  v25 = *v24;
  *v24 = STACK[0xEF1B];
  LOBYTE(STACK[0xEF1B]) = v25;
  LOBYTE(v24) = STACK[0xEF18];
  LOBYTE(STACK[0xEF18]) = STACK[0xEF1C];
  LOBYTE(STACK[0xEF1C]) = v24;
  v26 = (&STACK[0xEF18] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEF1D];
  LOBYTE(STACK[0xEF1D]) = v24;
  v27 = (&STACK[0xEF18] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEF1E];
  LOBYTE(STACK[0xEF1E]) = v26;
  v28 = (&STACK[0xEF18] | v10);
  v29 = *v28;
  *v28 = STACK[0xEF1F];
  LOBYTE(STACK[0xEF1F]) = v29;
  v30 = STACK[0xEF18];
  v31 = (-548819963 * STACK[0xEF18]) ^ v9;
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
  *STACK[0x4630] = STACK[0xEF18];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_1007AF0CC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 | 0x8B9)))(1028);
  STACK[0xD348] = v2;
  return (*(v1 + 8 * ((((10279 * (v0 ^ 0x7340)) ^ (3769 * (v0 ^ 0x7344)) ^ 0x81F) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1007AF170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = *(*(v11 + 4000) + v10 - 35072 * ((((v9 >> 6) * a5) >> 64) >> 1));
  *(*(v11 + 4008) + v7 - 5896 * ((((v7 >> 3) * v8) >> 64) >> 4)) = ((((v5 - 118) ^ 0x14 ^ v12) + 125) ^ ((v12 ^ 0x65) + 117) ^ ((v12 ^ 0xF9) - 23)) + 59;
  return (*(STACK[0x57D8] + 8 * ((498 * (v6 == 0)) ^ v5)))();
}

uint64_t sub_1007AF8B8@<X0>(int a1@<W8>)
{
  v1 = LODWORD(STACK[0x417C]) | 0x4625;
  v2 = STACK[0x51B8] - 20658;
  LODWORD(STACK[0x82DC]) = a1;
  return (*(STACK[0x57D8] + 8 * (v2 - 11572 + v1)))();
}

uint64_t sub_1007AF9D4()
{
  v1 = ((v0 + 17938) ^ 0xFFFFFFFFFFFFAE99) + STACK[0x7ED8];
  v2 = &STACK[0x10120] + v1;
  STACK[0x7ED8] = v1 + 48;
  v3 = STACK[0x57D8];
  v4 = *(STACK[0x57D8] + 8 * v0);
  STACK[0x69E8] = v2;
  STACK[0xCF38] = v4;
  return (*(v3 + 8 * (v0 + 2511)))();
}

uint64_t sub_1007AFA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x39E8];
  v5 = (STACK[0x39E8] - 1503994272) & 0x59A57FFE;
  v6 = STACK[0x57D8];
  STACK[0x65D8] = *(STACK[0x57D8] + 8 * STACK[0x39E8]);
  return (*(v6 + 8 * (((v5 ^ 0x69F1) + v4) ^ (13518 * ((v4 ^ 0x7E846710) > 0xD21E004A)))))(a1, a2, a3, a4, 4294945851);
}

uint64_t sub_1007AFAE8()
{
  v5 = *(STACK[0x8070] + (v1 * v2 + v3) % (1307 * (v0 ^ 0x1670u) + 3781));
  *(STACK[0x8070] + (v1 * v2 + v4) % 0x3282u) = *(STACK[0x8070] + ((((v5 ^ 0x8789537B) + 2021043333) ^ ((v5 ^ 0xD0FD4C4E) + 788706226) ^ ((v5 ^ 0x57741F82) - 1467228034)) * v2 + 125948433) % 0x3282);
  return (*(STACK[0x57D8] + 8 * ((13770 * (v1 == 255)) ^ v0)))();
}

uint64_t sub_1007AFBDC@<X0>(int a1@<W8>)
{
  *v2 = v1;
  STACK[0x6BB0] = v3;
  LODWORD(STACK[0xACB4]) = -1915525706;
  return (*(STACK[0x57D8] + 8 * (a1 - 11739)))();
}

uint64_t sub_1007AFC6C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  STACK[0x89D0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1007AFCCC()
{
  v0 = STACK[0x225C];
  v1 = (LODWORD(STACK[0x225C]) ^ 0x3130) + 17621;
  v2 = STACK[0x76A8];
  LODWORD(STACK[0xAC34]) = -769883948;
  STACK[0x65F0] = v2;
  LODWORD(STACK[0xAB18]) = -769884012;
  STACK[0x5F10] = 0;
  return (*(STACK[0x57D8] + 8 * ((114 * (((v1 ^ (v2 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1007AFD48(int a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x48B0]) = LODWORD(STACK[0x54C0]) | LODWORD(STACK[0x5540]);
  LODWORD(STACK[0x54F0]) = a3 << 8;
  LODWORD(STACK[0x5520]) = v3 << 8;
  LODWORD(STACK[0x54C0]) = v5 & (v4 ^ 0xFF6B2544);
  LODWORD(STACK[0x5540]) = a1 & (v6 ^ 0x51A141C8);
  return (*(STACK[0x57D8] + 8 * v7))();
}

uint64_t sub_1007B02E4(uint64_t a1, uint64_t a2)
{
  v5 = STACK[0x3A58];
  v6 = 36 * (STACK[0x3A58] ^ 0x4BC6);
  STACK[0x35B0] = v3;
  STACK[0x3A80] = v6 ^ 0xE80DD63C8B369377 ^ v3;
  STACK[0x35B8] = v2;
  STACK[0x3A78] = v2 ^ 0xFFAE2748DCD9C7FLL;
  return (*(v4 + 8 * v5))(a1, a2, STACK[0x3AF0]);
}

uint64_t sub_1007B034C(int a1)
{
  v8 = v6 - 1;
  *(v2 + v8) = *(v5 + (v8 & 0xF)) ^ *(v7 + v8 + v1) ^ *((v8 & 0xF) + v4 + 1) ^ (-3 * (v8 & 0xF)) ^ *(v3 + (v8 & 0xF));
  return (*(STACK[0x57D8] + 8 * (((2 * (v8 != 0)) | (4 * (v8 != 0))) ^ (a1 + 2781))))();
}

uint64_t sub_1007B03B8()
{
  v1 = STACK[0x57D8];
  STACK[0xA830] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1EE8 ^ ((v0 + 6292) | 0x1009))))();
}

uint64_t sub_1007B0500()
{
  v0 = STACK[0x57D8];
  STACK[0xC210] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3770]));
  return (*(v0 + 8 * SLODWORD(STACK[0x376C])))();
}

uint64_t sub_1007B0540@<X0>(int a1@<W8>)
{
  v1 = STACK[0x90E8];
  v2 = *(STACK[0x90E8] + 8);
  STACK[0x6AC0] = v2;
  v3 = STACK[0x65C8];
  STACK[0x61F8] = STACK[0x65C8];
  STACK[0xCE28] = v1 + 112;
  LODWORD(STACK[0x5C1C]) = 0;
  v5 = v2 != ((a1 - 702899117) & 0x29E559FF) - 0x2C73422C5350600CLL && v3 != 0x30BDFED8F32E6831;
  return (*(STACK[0x57D8] + 8 * ((v5 * ((a1 - 11428) ^ 0x354F)) | a1)))();
}

uint64_t sub_1007B0760()
{
  v1 = *(v0 + 2928);
  v2 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v1 & 0xFFFFFFF8 ^ 0x546A441A) - 415597369 + ((2 * (v1 & 0xFFFFFFF8)) | 0x572B77CB))) & 0xFFFFFFFFFFFFFFF8));
  v3 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (((2 * (v2 + v3)) & 0xE8208B46A031F89ELL) - (v2 + v3) - 0x741045A35018FC50) ^ 0x494084F69016BB54;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = __ROR8__((0x55FE172712AEAEF4 - ((v10 + v9) | 0x55FE172712AEAEF4) + ((v10 + v9) | 0xAA01E8D8ED51510BLL)) ^ 0xBB3751D3A274220, 8);
  v12 = (0x55FE172712AEAEF4 - ((v10 + v9) | 0x55FE172712AEAEF4) + ((v10 + v9) | 0xAA01E8D8ED51510BLL)) ^ 0xBB3751D3A274220 ^ __ROR8__(v9, 61);
  v13 = (((v11 + v12) ^ 0xFBC1A6C612EC520FLL) - ((2 * ((v11 + v12) ^ 0xFBC1A6C612EC520FLL)) & 0x4F5082BC29F72B1ELL) + 0x27A8415E14FB958FLL) ^ 0x336DC7D9F3F28F6CLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = __ROR8__(v15, 8);
  v17 = v15 ^ __ROR8__(v14, 61);
  v18 = (((2 * ((v16 + v17) ^ 0x873109ABB1B3E06CLL)) & 0xB98F0FDA05E343A8) - ((v16 + v17) ^ 0x873109ABB1B3E06CLL) - 0x5CC787ED02F1A1D5) ^ 0x705C7097C60C7DC8;
  v19 = 3903 * ((((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v1 & 7u))) ^ *(v0 + 295)) + 4008381;
  *(*(v0 + 4000) + 40457) = *(*(v0 + 4008) + v19 - 5896 * (((1456909 * v19) >> 32) >> 1));
  v20 = *(v0 + 3984) + 25;
  *(v0 + 296) = v20;
  v21 = STACK[0x57D8];
  v22 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9032));
  *(v0 + 2936) = v20;
  *(v0 + 280) = v22;
  return (*(v21 + 8 * (LODWORD(STACK[0x4D50]) ^ 0x7B10)))();
}

uint64_t sub_1007B0A20()
{
  *(v0 + v1) = v2;
  *(v0 - 0x308E083E0C524CBELL) = v2;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_1007B0B18@<X0>(int a1@<W0>, int a2@<W2>, unsigned __int8 a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W7>, int a7@<W8>)
{
  LODWORD(STACK[0x4008]) = LODWORD(STACK[0x4DA0]) | LODWORD(STACK[0x4DA8]);
  LODWORD(STACK[0x43A8]) = LODWORD(STACK[0x51F8]) | LODWORD(STACK[0x4DE8]);
  LODWORD(STACK[0x4010]) = LODWORD(STACK[0x4E68]) | LODWORD(STACK[0x4E20]);
  LODWORD(STACK[0x401C]) = LODWORD(STACK[0x4E44]) | LODWORD(STACK[0x4EB8]);
  LODWORD(STACK[0x43B8]) = LODWORD(STACK[0x4E38]) | LODWORD(STACK[0x5248]);
  LODWORD(STACK[0x43B0]) = LODWORD(STACK[0x4E34]) | LODWORD(STACK[0x53F8]);
  LODWORD(STACK[0x4E68]) = v12 & (v7 ^ 0xB6A7348D);
  LODWORD(STACK[0x51F8]) = a6 & (v13 ^ 0x6140690);
  LODWORD(STACK[0x4E44]) = a5 & (a2 ^ 0x7232F907);
  LODWORD(STACK[0x4EB8]) = ((((a1 - 847773712) & 0x3287FFFF) + 488137945) ^ a4) & v10;
  LODWORD(STACK[0x4E38]) = v8 & (a3 ^ 0x2F6DD0AB);
  LODWORD(STACK[0x5248]) = a7 & (v9 ^ 0x8A1C446D);
  STACK[0x53F8] = *(v11 + 4000) + 39820;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1007B0CF4@<X0>(int a1@<W8>)
{
  v5 = STACK[0x57A0];
  *(v1 + 4 * (LODWORD(STACK[0x57A0]) * v2 - 1828528464 - ((((LODWORD(STACK[0x57A0]) * v2 - 1828528464) * v4) >> 32) >> 12) * v3)) = *(v1 + 4 * (a1 - 1820644412 + LODWORD(STACK[0x57A0]) * v2 - ((((a1 - 1820644412 + LODWORD(STACK[0x57A0]) * v2) * v4) >> 32) >> 12) * v3));
  LODWORD(STACK[0x57A0]) = ++v5;
  return (*(STACK[0x57D8] + 8 * ((23642 * (v5 == 878544016)) ^ a1)))();
}

uint64_t sub_1007B0E94@<X0>(int a1@<W8>)
{
  v10 = *(v9 + a1 * v7 + 8698028 - 5816 * (((((a1 * v7 + 8698028) >> 3) * v6) >> 32) >> 7));
  v11 = (((v10 ^ 0xD3828D4B) + 746418869) ^ ((v1 ^ 0x7983474A ^ v10) - 2038660875) ^ ((v10 ^ 0xAA01F287) + 1442712953)) * v2 + 54988167;
  v12 = *(v8 + 4 * (v11 - (((v11 * v5) >> 32) >> 12) * v4));
  v13 = (((HIBYTE(v12) ^ 0x9BDABDC1) - 689759705) ^ ((HIBYTE(v12) ^ 0x4F7720E9) + 38700815) ^ ((HIBYTE(v12) ^ 0xD4AD9D40) - 1718338904)) * v7 + 246013585;
  v14 = ((v12 ^ 0xFCA23671) - 101333637) ^ ((v12 ^ 0xD1E6D702) - 726588406) ^ ((v12 ^ 0x2D44E1F9) + 672338675);
  v15 = *(v9 + (BYTE2(v12) ^ 0x4F) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE2(v12) ^ 0x4Fu) * v7 + 6213569)) >> 32) >> 4)) << 8;
  v16 = *(v9 + (BYTE1(v12) ^ 0xB6) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE1(v12) ^ 0xB6u) * v7 + 6213569)) >> 32) >> 4));
  v17 = (((v15 ^ 0xFF2830) & ((*(v9 + v13 - 5816 * ((((v13 >> 3) * v6) >> 32) >> 7)) << 16) ^ 0x456F30) | v15 & 0x9000) ^ 0xA182DE) & (v16 ^ (v3 + 25));
  v18 = *(v9 + v14 * v7 - 377281685 - 5816 * (((((v14 * v7 - 377281685) >> 3) * v6) >> 32) >> 7));
  *(v8 + 4 * (a1 * v2 + 9469466 - ((((a1 * v2 + 9469466) * v5) >> 32) >> 12) * v4)) = ((((v17 ^ v16 & 0x11111111) << 8) ^ 0xA493BEC6) & (v18 ^ 0xFFFFFF20) | v18 & 0x39) ^ 0xEFB1E74D;
  return (*(STACK[0x57D8] + 8 * ((20409 * (a1 == 255)) ^ v1)))();
}

uint64_t sub_1007B1130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0x57B0] = a5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v5 + 20549)))(1032);
  STACK[0xD898] = v7;
  LODWORD(STACK[0x57C0]) = v5 + 491;
  return (*(v6 + 8 * (((v7 == 0) * ((v5 + 491) ^ 0x917 ^ (v5 + 1588052790) & 0xA15835DF)) ^ v5)))();
}

uint64_t sub_1007B11B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = STACK[0x7CA0];
  v6 = STACK[0x67F0];
  v7 = STACK[0xBCA8];
  v8 = STACK[0x6614];
  v9 = STACK[0xB85C];
  v10 = STACK[0x6188];
  v11 = STACK[0xC954];
  STACK[0x6E88] = STACK[0xB100];
  STACK[0xA120] = v5;
  STACK[0xA7E0] = v6;
  STACK[0x7BB8] = v7;
  LODWORD(STACK[0xCCB4]) = v8;
  LODWORD(STACK[0x96F4]) = v9;
  STACK[0x7E58] = v10;
  LODWORD(STACK[0xA500]) = v11;
  STACK[0x7C18] = &STACK[0x82C0];
  LODWORD(STACK[0x9C7C]) = STACK[0xBCC8];
  LOBYTE(STACK[0x6973]) = 1;
  LODWORD(STACK[0xB4C4]) = 937402136;
  return (*(STACK[0x57D8] + 8 * a5))();
}

uint64_t sub_1007B1290()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  STACK[0xC068] = 0;
  return (*(v1 + 8 * SLODWORD(STACK[0x34A4])))(v2);
}

uint64_t sub_1007B12D0()
{
  v0 = STACK[0x77E0];
  STACK[0xDB78] = STACK[0x77E0];
  LODWORD(STACK[0xDB84]) = STACK[0x8AAC];
  v1 = STACK[0xB2A8];
  v2 = *(STACK[0xB2A8] + 160);
  STACK[0xDB88] = v2;
  LODWORD(STACK[0xDB94]) = *(v1 + 168);
  if (v0)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(STACK[0x57D8] + 8 * ((67 * v4) ^ LODWORD(STACK[0x1AC4]))))();
}

uint64_t sub_1007B1350()
{
  v2 = *(v1 + 1368);
  v3 = (v2[615] - 76);
  v4 = (v2[1692] - 76);
  v5 = v2[1783] - 76;
  v6 = v5;
  v7 = ((v2[4825] - 76) << 16) | ((v2[4218] - 76) << 8) | v5;
  LODWORD(STACK[0x57C0]) = (v2[5227] - 76);
  v8 = (v2[812] - 76);
  v9 = (v2[1290] - 76) | ((((v2[3649] - 76) << 8) | (v2[4711] << 16) | v5) << 8);
  v10 = ((v2[3414] - 76) << 8) | ((v2[4605] - 76) << 16);
  v11 = v2[2716];
  v12 = v2[1654];
  LODWORD(STACK[0x5220]) = v2[2534] - 76;
  v13 = v2[8];
  LODWORD(STACK[0x51C0]) = v9 - 1275068416;
  LODWORD(STACK[0x57A0]) = ((((v2[4347] - 76) << 8) | (v13 << 16) | (v12 - 76)) << 8) - 1275068416;
  LODWORD(STACK[0x5780]) = (v11 - 76);
  v14 = (v2[5485] - 76);
  STACK[0x5760] = (v2 + 4096);
  STACK[0x5770] = v2;
  LODWORD(STACK[0x57B0]) = (v2[2572] - 76);
  return (*(STACK[0x57D8] + 8 * v0))(v8, v3, v4, v7, v6, v14, 0, v10);
}

uint64_t sub_1007B1578(int a1)
{
  v1 = LODWORD(STACK[0x52A0]) + LODWORD(STACK[0x53F8]);
  STACK[0x42C0] = STACK[0x50B8] | STACK[0x5520];
  STACK[0x42B8] = STACK[0x50B0] ^ STACK[0x53F0];
  LODWORD(STACK[0x42B0]) = 2 * LODWORD(STACK[0x54C0]);
  STACK[0x3FF0] = STACK[0x53E8] ^ STACK[0x5510];
  LODWORD(STACK[0x3FEC]) = 2 * LODWORD(STACK[0x5370]);
  STACK[0x55A0] = STACK[0x5168] - STACK[0x53B8];
  STACK[0x42A8] = STACK[0x5500] ^ STACK[0x52B8];
  LODWORD(STACK[0x42A4]) = LODWORD(STACK[0x53D8]) - LODWORD(STACK[0x53E0]);
  LODWORD(STACK[0x2B04]) = LODWORD(STACK[0x5580]) ^ v1 ^ 0x56;
  LODWORD(STACK[0x2B00]) = LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5280]) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * a1))(66558115);
}

uint64_t sub_1007B174C@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X6>, int a5@<W7>, int a6@<W8>)
{
  v18 = (*(a4 + ((a2 >> 4) * a3 - ((((((a2 >> 4) * a3) >> 1) * v9) >> 16) >> 8) * a5)) << v10) ^ *(a4 + ((a2 & 0xF) * a3 - ((((a2 & 0xF) * v8) >> 16) >> 7) * a5));
  v19 = a6 + (v18 ^ v16 ^ *(*(&off_101353600 + v15) + ((v18 ^ v11) * v12 - (((v18 ^ v11) * v12 * v13) >> 32) * v14) - 8)) * a3;
  *(a4 + a2 * a3 + 134334 - ((((a2 * a3 + 134334) * v6) >> 32) >> 8) * a5) = *(a4 + (v19 - ((v19 * v7) >> 32) * a5));
  return (*(STACK[0x6D8] + 8 * (((a2 == 255) * v17) ^ a1)))();
}

uint64_t sub_1007B1828@<X0>(int a1@<W8>)
{
  if (v1)
  {
    v3 = v2 == ((a1 - 21442) | 0x261) - 143114852;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * ((95 * v4) ^ (a1 - 13244))))();
}

uint64_t sub_1007B18BC(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v6 = *(STACK[0xDCB8] + a4 % ((v4 - 8939) ^ 0xEE5u));
  v7 = *(STACK[0xDCB0] + 4 * ((6419 * (v6 | ((v6 < 0x4C) << 8)) - 487844) % 0x2240));
  v8 = *(STACK[0xDCB8] + 5621 * (BYTE2(v7) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v7) ^ 0x38u) + 32028458)) >> 32) >> 7));
  v9 = *(STACK[0xDCB8] + (5621 * (((HIBYTE(v7) ^ 0x3906A575) + 1419796502) ^ ((HIBYTE(v7) ^ 0xE863F7B1) - 2050673966) ^ ((HIBYTE(v7) ^ 0xD1655286) - 1128032281)) + 1663184299) % 0x1808);
  v10 = *(STACK[0xDCB8] + (5621 * (((v7 ^ 0x43CA8AD3) - 1656756118) ^ ((v7 ^ 0x1A6A2084) - 996195777) ^ ((v7 ^ 0x59A0AAB1u) - 2024421364)) + 2147480361) % 0x1808);
  v11 = *(STACK[0xDCB8] + 5621 * (BYTE1(v7) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v7) ^ 0x8Fu) + 32028458)) >> 32) >> 7));
  v12 = v9 & 0x6C ^ 0xFC;
  v13 = v11 & 0xC2 ^ 0x8F;
  v14 = ((v8 ^ 0x34 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * (v8 & 0xB4)) ^ v8 & 0xB4)) ^ v8 & 0xB4)) ^ v8 & 0xB4)) ^ (v8 & 0xB4 | 0x40)))) << 8) | (((v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0x6C) << 16);
  v15 = v10 & 0x5A ^ 0xFFFFFFD3;
  v16 = ((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & 0x36 ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x7D0BC) & (v14 ^ 0x1FF0FF) | v14 & 0xF82F00;
  v17 = v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * (v15 ^ v10 & 0x2E)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  HIDWORD(v18) = v17 ^ 0x1A;
  LODWORD(v18) = (((v16 << 8) ^ 0xB80201C0) & (v17 & 0xC0 ^ 0xBBC26140) | (v16 << 8) & 0x443D9E00) ^ 0xBFD27F00;
  HIDWORD(v18) = v18 >> 6;
  LODWORD(v18) = HIDWORD(v18);
  *(STACK[0xDCB0] + 4 * (v5 % 0x2240)) = __ROR4__((v18 >> 15) - ((2 * (v18 >> 15)) & 0x46278280) + 588497216, 11) ^ 0x6A3CED9E;
  return (*(STACK[0x57D8] + 8 * ((27613 * (a3 == 0)) ^ v4)))();
}

uint64_t sub_1007B1CB0()
{
  LODWORD(STACK[0x5580]) = v1;
  STACK[0x5590] = STACK[0x54A0] - STACK[0x5460];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007B1D48(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(v13 + 1360) + a8 - 35072 * ((((v9 >> 6) * v12) >> 64) >> 1));
  *(*(v13 + 1368) + v11 + (a2 ^ 0x1794E74) - 6152 * (((a2 ^ 0x1794E74u) + v11) / 0x1808)) = (((v14 ^ v10) - 123) ^ ((v14 ^ 0xB3) + 124) ^ ((v14 ^ 0x19) - 46)) + 29;
  return (*(STACK[0x57D8] + 8 * ((184 * (v8 == 0)) ^ a2)))();
}

uint64_t sub_1007B1E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 - 1569404569 + v7 + 1569403258 + 3338)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1007B1E90()
{
  v1 = STACK[0x51B8] - 176;
  v2 = STACK[0xE158] + 10 + (v0 ^ 0xD21C8094);
  STACK[0xD520] = v2;
  return (*(STACK[0x57D8] + 8 * ((22 * (v2 > STACK[0xE150])) ^ v1)))();
}

uint64_t sub_1007B1F9C()
{
  LODWORD(STACK[0x5720]) = v1;
  LODWORD(STACK[0x5600]) *= 2;
  return (*(STACK[0x57D8] + 8 * ((14887 * (v0 > 0xB50FD253)) ^ (v0 - 911038956))))();
}

uint64_t sub_1007B2234()
{
  v0 = STACK[0x5740];
  v1 = (LODWORD(STACK[0x5740]) + 66992978) | 0x1145u;
  LODWORD(STACK[0x5790]) = LODWORD(STACK[0x5408]) ^ 0x8D0EA5A0;
  LODWORD(STACK[0x56F0]) = LODWORD(STACK[0x53F8]) ^ 0x22B37D0A;
  LODWORD(STACK[0x57B0]) = LODWORD(STACK[0x5400]) ^ 0x5E57794;
  LODWORD(STACK[0x5780]) = LODWORD(STACK[0x5410]) ^ 0x21AE800E;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0xFC0249A7 ^ (9543 * (v0 > 0x71E0F537)))))(v1);
}

uint64_t sub_1007B2328()
{
  v1 = STACK[0xB160];
  LOBYTE(STACK[0x926F]) = STACK[0xB0F7];
  v2 = STACK[0x5C70];
  v3 = STACK[0x51F0];
  v4 = *STACK[0x51E8] & 0x717266A8;
  *(v2 - 0x30BDFED8F32E6509) = (*(*STACK[0x51F0] + v4) & 0x7FFFFFFFFFFFFFFFLL ^ 0x65E1552A8BFEE85ALL) - 0x139E1D33ADF62548;
  *(v2 - 0x30BDFED8F32E6509) = (*(*v3 + v4) & 0x7FFFFFFFFFFFFFFFLL ^ ((v0 + 22090) + 0x65E1552A8BFE9004)) + 0x40BD04494FDF8354;
  STACK[0x6B20] = v1;
  return (*(STACK[0x57D8] + 8 * (v0 + 4521)))();
}

uint64_t sub_1007B2468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v11 = *(STACK[0xDCB8] + v8 % ((v9 + 11020) ^ 0x7CD5));
  v12 = *(STACK[0xDCB0] + 4 * ((6419 * (v11 | ((v11 < 0x4C) << 8)) + 53906762) % 0x2240));
  v13 = *(a5 + 3141);
  v14 = *(STACK[0xDCB8] + a6 + 5621 * (BYTE1(v12) ^ 0x8F) - 6152 * (((89362129 * (a6 + 5621 * (BYTE1(v12) ^ 0x8Fu))) >> 32) >> 7));
  v15 = *(STACK[0xDCB8] + (5621 * (((HIBYTE(v12) ^ 0xA67916A3) + 360817662) ^ ((HIBYTE(v12) ^ 0x9F9E7BAE) + 744935153) ^ ((HIBYTE(v12) ^ 0x39E76D4F) - 1977624558)) + 1577582953) % 0x1808);
  v16 = *(STACK[0xDCB8] + a6 + 5621 * (BYTE2(v12) ^ 0x38) - 6152 * (((89362129 * (a6 + 5621 * (BYTE2(v12) ^ 0x38u))) >> 32) >> 7));
  v17 = v15 & 0xC2 ^ 0x8F;
  v18 = *(STACK[0xDCB8] + (5621 * (((v12 ^ 0x4081D553) - 1231442893) ^ ((v12 ^ 0x233F11DB) - 718837573) ^ ((v12 ^ 0x63BEC46Eu) - 1784234736)) + 2055487490) % 0x1808);
  LOBYTE(v11) = v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * (v16 | 0xD9)) & 0x5E ^ (v16 | 0xD9))) ^ (v16 | 0xD9))) ^ (v16 | 0xD9))) ^ (v16 | 0xD9))) ^ (v16 | 0xD9))) ^ (v16 | 0xD9)));
  v19 = v14 & 0xE4 ^ 0xB8;
  v20 = (((v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & 0x36 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xC2) << 16) | ((v11 ^ 0x26) << 8);
  v21 = ((v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x75995F) & ~v20;
  v22 = v18 & 0x3E ^ 0x45;
  v23 = v21 | v20 & 0x8A6600;
  LOBYTE(v20) = (v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * (v22 ^ v18 & 0xA)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22;
  *(STACK[0xDCB0] + 4 * (a8 % 0x2240)) = (((v23 << 8) ^ 0x15C898BF) & ((v18 ^ (2 * v20)) ^ 0xFFFFFFC1) | (v18 ^ (2 * v20)) & 0x40) ^ 0x2269AC59;
  return (*(STACK[0x57D8] + 8 * ((53 * (v10 == 0)) ^ v9)))(v13);
}

uint64_t sub_1007B2804(int a1)
{
  if (a1 - 1172461588 >= 0)
  {
    v4 = a1 - 1172461588;
  }

  else
  {
    v4 = 1172461588 - a1;
  }

  v5 = v3 - 1172461588;
  if (v3 - 1172461588 < 0)
  {
    v5 = 1172461588 - v3;
  }

  v6 = *(STACK[0x57D8] + 8 * (((((v2 - 738617791) & 0x2C06595E) - 17842) * (v4 > v5)) ^ v2));
  STACK[0x5720] = v1;
  return v6();
}

uint64_t sub_1007B2874(uint64_t a1)
{
  v2 = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3392) + 12;
  v3 = STACK[0x57D8];
  v4 = *(STACK[0x57D8] + 8 * LODWORD(STACK[0x44B0]));
  *(a1 + 220) = 0;
  *(a1 + 200) = v4;
  *(a1 + 208) = v2;
  return (*(v3 + 8 * (v1 + 3070)))();
}

uint64_t sub_1007B2A0C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0xB880] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * (((a1 + 2427) ^ 0x34CE) + a1)))();
}

uint64_t sub_1007B2AAC()
{
  v5 = STACK[0xB774];
  *(v4 + 992) = v1;
  *(v4 + 991) = v3;
  LODWORD(STACK[0x5D5C]) = v0;
  LODWORD(STACK[0x865C]) = v5;
  v6 = v3 == (v2 - 34 + ((v2 - 25) | 0xC0) + 73);
  LOBYTE(STACK[0x97BF]) = v6;
  return (*(STACK[0x57D8] + 8 * ((7899 * v6) ^ v2)))();
}

uint64_t sub_1007B2B84()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x9530] = 0;
  return (*(v1 + 8 * (v0 + 4560)))(v2);
}

uint64_t sub_1007B2BBC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0xB11E70E7)))();
  return (*(v1 + 8 * ((13841 * (v0 < ((v0 + 1323435943) | 0x20) + 1840690550)) ^ (v0 + 1323435360))))(v2);
}

uint64_t sub_1007B2C18()
{
  v0 = STACK[0x2D00];
  v1 = (LODWORD(STACK[0x2D00]) + 6275) | 0x1002;
  v2 = STACK[0x57D8];
  STACK[0xA830] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2D00]));
  return (*(v2 + 8 * (v0 - 4740 + v1)))();
}

uint64_t sub_1007B2C7C()
{
  v4 = *(STACK[0x8070] + (12337 * v1 + v2) % 0x3282u);
  LOBYTE(v4) = (((v4 ^ 0x7C) + 96) ^ ((v4 ^ 0xC0) - 28) ^ ((v4 ^ 0xE5) - 57)) + (((*((v4 ^ 0x12) + STACK[0x5490] + 12070) ^ 0x1C) - 28) ^ ((*((v4 ^ 0x12) + STACK[0x5490] + 12070) ^ 0xF3) + 13) ^ ((*((v4 ^ 0x12) + STACK[0x5490] + 12070) ^ 0xEA) + 22)) - 11;
  v5 = v4 & 0x57 ^ 0x61;
  v6 = v4 ^ 0x14;
  *(STACK[0x8070] + (12337 * v1 + v3) % 0x3282u) = v4 ^ (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (((2 * (((2 * v4) & 0x2A | 0x15) & v4)) ^ 0x42) & v6 ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ 0x47;
  return (*(STACK[0x57D8] + 8 * (((v1 != 255) | (32 * (v1 != 255))) ^ v0)))();
}

uint64_t sub_1007B2F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22 = *(*v18 + (((((((v9 ^ v12) + v13) & (2 * ((v21 + a9) & 0xFFFFFFF8))) + ((v21 + a9) & 0xFFFFFFF8 ^ v14)) & 0xFFFFFFF8) + a7) & *v19));
  v23 = (v22 + __ROR8__((v21 + a9) & 0xFFFFFFFFFFFFFFF8, 8)) ^ a2;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a5;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a6;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v10;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a3;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = __ROR8__((v34 + v35) ^ a4, 8) + ((v34 + v35) ^ a4 ^ __ROR8__(v35, 61));
  *(v15 + a9) = (((v16 - (v36 | v16) + (v36 | a8)) ^ v11) >> (8 * ((v21 + a9) & 7))) ^ *(v21 + a9);
  return (*(STACK[0x57D8] + 8 * (((a9 + 1 != v20) * v17) ^ v9)))();
}

uint64_t sub_1007B3008()
{
  LODWORD(STACK[0x62E4]) = 0;
  STACK[0x8570] = 4;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2440)))(&STACK[0x1D1CD], &STACK[0xCE20], &STACK[0x8570], 0, 0);
  v4 = STACK[0x3D08];
  STACK[0x1D4E0] = STACK[0x3D08];
  STACK[0x1D4D8] = v3 - v4;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v4;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 1413022465) ^ 0x19) - v4;
  LODWORD(STACK[0x1D4CC]) = v0 + 1413022465 - v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4C4]) = v4 ^ (v0 + 1413022465) ^ 0xF89;
  v5 = (*(v2 + 8 * (v0 ^ 0x2411)))(v1 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1007B3100()
{
  v3 = *(v1 + 1944);
  v4 = v3 & 0xFFFFFFF8;
  v5 = *STACK[0x51E8];
  v6 = *STACK[0x51F0];
  v7 = *(v6 + (((v3 & 0xFFFFFFF8) + 1529331808 - (v3 & 0xC85787B0) + (v3 & 0xC85787B0 | 0x37A87848)) & v5));
  v8 = *(v1 + 295);
  v9 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (v7 + v9) ^ 0xC2AF3EAA3FF1B8E4;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = __ROR8__(v10, 8);
  v13 = __ROR8__((0x8676D0ABF6C973ACLL - ((v12 + v11) | 0x8676D0ABF6C973ACLL) + ((v12 + v11) | 0x79892F5409368C53)) ^ 0x1C7B7B8911BB38AFLL, 8);
  v14 = (0x8676D0ABF6C973ACLL - ((v12 + v11) | 0x8676D0ABF6C973ACLL) + ((v12 + v11) | 0x79892F5409368C53)) ^ 0x1C7B7B8911BB38AFLL ^ __ROR8__(v11, 61);
  v15 = (v13 + v14) ^ 0x6FF046966119128DLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xA1B29DC5D776132BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0x2D447053582EF1E4) + 0x16A23829AC1778F2) ^ 0xF9A6186859F2301ELL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0x6B855771E4CBA3BELL) + 0x35C2ABB8F265D1DFLL) ^ 0xED0518A7387C0801;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0x7768B028B8A40D85 - ((v25 + v24) | 0x7768B028B8A40D85) + ((v25 + v24) | 0x88974FD7475BF27ALL)) ^ 0xDCC24EF9CDEA31F5;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  LOBYTE(v3) = 8 * (v3 & 7);
  *(v1 + 1778) = (((v28 + v27 - ((2 * (v28 + v27)) & 0x4A549EDDBAED0214) + 0x252A4F6EDD76810ALL) ^ 0x4A652FD2D374DFEALL) >> v3) ^ v8;
  v29 = *(v6 + (v5 & (v4 - 1831847764) & 0xFFFFFFF8));
  v30 = (v29 + v9) ^ 0xC2AF3EAA3FF1B8E4;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x65F254DD188DB4FCLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) & 0x1C6703115E1E5E2ALL) - (v34 + v33) - 0xE338188AF0F2F16) ^ 0x9E3C38E131E9C267;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xA1B29DC5D776132BLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v2;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xD8C7B31FCA19D9DELL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x5455012E8AB1C38FLL;
  *(STACK[0x8070] + 12106) ^= v8 ^ (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3);
  v44 = (STACK[0x8070] + 11513);
  *(v1 + 1952) = v44;
  *(v1 + 1967) = *v44;
  v45 = *(v1 + 3920) + 2;
  *(v1 + 296) = v45;
  v46 = STACK[0x57D8];
  v47 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x23D7));
  *(v1 + 1968) = v45;
  *(v1 + 280) = v47;
  return (*(v46 + 8 * (v0 + 8890)))();
}

uint64_t sub_1007B3560(uint64_t a1)
{
  v1 = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3360) + 12;
  *(a1 + 220) = STACK[0x7FDC];
  v2 = STACK[0x57D8];
  *(a1 + 200) = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4C34]) + 9145));
  *(a1 + 208) = v1;
  return (*(v2 + 8 * LODWORD(STACK[0x44AC])))();
}

uint64_t sub_1007B35BC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2446)))();
  return (*(v1 + 8 * (v0 - 11660)))(v2);
}

uint64_t sub_1007B35F0()
{
  v3 = *(v0 + 295);
  v4 = *(v0 + 2400);
  v5 = v4 & 0xFFFFFFF8;
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFF8;
  v8 = *(v6 + (v7 & ((v4 & 0xC1A6C970 | 0x3E593689) - 1831847764 + (v4 & 0x3E593688 | 0xC1A6C976) + 1)));
  v9 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (((2 * (v8 + v9)) & 0xEE1438AE0C7DE618) - (v8 + v9) + 0x8F5E3A8F9C10CF3) ^ 0xCA5ADD02C630B417;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0x6CC91BD9EBA39BDALL) + 0x36648DECF5D1CDEDLL) ^ 0x5396D931ED5C7911;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (0xB15EAF9D80436F82 - ((v15 + v14) | 0xB15EAF9D80436F82) + ((v15 + v14) | 0x4EA150627FBC907DLL)) ^ 0x215116F41EA582F0;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0xCFC81A5AE6D8FE6ELL) - (v18 + v17) - 0x67E40D2D736C7F38) ^ 0x39A96F175BE593E3;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((((2 * (v21 + v20)) & 0x3966ABF6111BE564) - (v21 + v20) + 0x634CAA04F7720D4DLL) ^ 0x8C488A45029745A1, 8);
  v23 = (((2 * (v21 + v20)) & 0x3966ABF6111BE564) - (v21 + v20) + 0x634CAA04F7720D4DLL) ^ 0x8C488A45029745A1 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23 - ((2 * (v22 + v23)) & 0x9AF52117DE1BF8E6) - 0x32856F7410F2038DLL) ^ 0x15BD2394251425ADLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x48C5877CA4BFCB4ALL) - (v26 + v25) - 0x2462C3BE525FE5A5) ^ 0x7037C290D8EE262ALL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  LOBYTE(v4) = 8 * (v4 & 7);
  *(v0 + 1881) = (((((2 * ((v29 + v28) ^ 0xA3BE880531708A2FLL)) & 0x79B40B686D824920) - ((v29 + v28) ^ 0xA3BE880531708A2FLL) - 0x3CDA05B436C12491) ^ 0xFD412F2F64C0FA0) >> v4) ^ v3;
  v30 = *(v6 + (v7 & ((v5 | 0x4CC1F90D) - 1831847764 + (v5 | 0xB33E06F3))));
  v31 = (v30 + v9) ^ 0xC2AF3EAA3FF1B8E4;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x65F254DD188DB4FCLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x6FF046966119128DLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xA1B29DC5D776132BLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v2;
  v40 = __ROR8__(v39, 8);
  v41 = v39 ^ __ROR8__(v38, 61);
  v42 = (0xC4C1F048485B512BLL - ((v40 + v41) | 0xC4C1F048485B512BLL) + ((v40 + v41) | 0x3B3E0FB7B7A4AED4)) ^ 0xE3F9BCA87DBD770ALL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x5455012E8AB1C38FLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  *(STACK[0x8070] + 362) ^= v3 ^ (((v46 + v45 - ((2 * (v46 + v45)) & 0xC9E89B48113B1346) + 0x64F44DA4089D89A3) ^ 0xBBB2D18069FD743) >> v4);
  v47 = *(v0 + 3920) + 32;
  *(v0 + 296) = v47;
  v48 = STACK[0x57D8];
  v49 = *(STACK[0x57D8] + 8 * (v1 + 10041));
  *(v0 + 2408) = v47;
  *(v0 + 280) = v49;
  return (*(v48 + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x2346)))();
}

uint64_t sub_1007B3A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v16 = STACK[0xDCB8];
  v17 = *(STACK[0xDCB8] + v13 + ((v15 + 1803362977) & 0x9482BEAF) - 6152 * ((((v15 + 1803362977) & 0x9482BEAF) + v13) / 0x1808));
  v18 = STACK[0xDCB0];
  v19 = *(STACK[0xDCB0] + 4 * ((6419 * (v17 | ((v17 < 0x4C) << 8)) + 29123003) % 0x2240));
  LODWORD(STACK[0x5330]) = a8[1988];
  LODWORD(STACK[0x5328]) = *(v8 + 2170);
  v20 = STACK[0x5750];
  LODWORD(STACK[0x5348]) = *(STACK[0x5750] + 1730);
  LODWORD(STACK[0x5358]) = a7[577];
  LODWORD(STACK[0x5350]) = *(STACK[0x5300] + 2898);
  v21 = STACK[0x5740];
  LODWORD(STACK[0x5340]) = *(STACK[0x5740] + 3156);
  LODWORD(STACK[0x5368]) = *(v11 + 190);
  LODWORD(STACK[0x5370]) = *STACK[0x52F0];
  LODWORD(STACK[0x5360]) = *(v20 + 3323);
  LODWORD(STACK[0x53A0]) = a8[46];
  LODWORD(STACK[0x5388]) = *(STACK[0x56C0] + 1457);
  v22 = *(v16 + 5621 * (BYTE1(v19) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v19) ^ 0x8Fu) + 32028458)) >> 32) >> 7));
  v23 = *(v16 + 5621 * (BYTE2(v19) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v19) ^ 0x38u) + 32028458)) >> 32) >> 7));
  v24 = *(v16 + (5621 * (((v19 ^ 0x8C2632D9) - 611191210) ^ ((v19 ^ 0xBC66BA6D) - 338592030) ^ ((v19 ^ 0x30408852) + 1744260319)) - 68356669) % 0x1808);
  v25 = *(v16 + (5621 * (((HIBYTE(v19) ^ 0xFB34918F) + 2057744958) ^ ((HIBYTE(v19) ^ 0xF8597FA6) + 2043370517) ^ ((HIBYTE(v19) ^ 0x36DEE6B) - 2097164838)) + 68783237) % 0x1808);
  v26 = v25 & 0x10 ^ 0xF6;
  v27 = v23 & 0x68 ^ 0x7A;
  LODWORD(v16) = a7[1305];
  *(v14 - 152) = v8;
  LODWORD(STACK[0x5338]) = v16;
  v28 = STACK[0x5730];
  LODWORD(STACK[0x5318]) = *(STACK[0x5730] + 1700);
  v29 = (v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27;
  v30 = STACK[0x55E0];
  LODWORD(STACK[0x5320]) = *(STACK[0x55E0] + 2519);
  v31 = *(v14 - 152);
  v32 = v23 ^ (2 * v29);
  v33 = 2 * ((v22 ^ 0x34) & (2 * ((v22 ^ 0x34) & (2 * ((v22 ^ 0x34) & (2 * (v22 & 0xB4)) ^ v22 & 0xB4)) ^ v22 & 0xB4)) ^ v22 & 0xB4);
  v34 = ((v32 ^ 0x68) << 8) | (((v25 ^ (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x10) << 16);
  v35 = ((v22 ^ (2 * ((v33 ^ v22) & 0x34 ^ v33 & v22))) ^ 0x773E27) & ~v34;
  v36 = v24 & 0x68 ^ 0xFA;
  v37 = v24 ^ (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36));
  LODWORD(STACK[0x5378]) = *(STACK[0x5760] + 2026);
  LODWORD(STACK[0x5380]) = *(v21 + 3634);
  LODWORD(STACK[0x5398]) = *STACK[0x52E8];
  LODWORD(STACK[0x53A8]) = *(STACK[0x5470] + 3778);
  LODWORD(STACK[0x5390]) = *STACK[0x5298];
  LODWORD(STACK[0x53B0]) = v9[8];
  LODWORD(STACK[0x53C8]) = *(STACK[0x5550] + 2678);
  LODWORD(STACK[0x53B8]) = *(v30 + 926);
  v38 = STACK[0x5700];
  LODWORD(STACK[0x53C0]) = *(STACK[0x5700] + 1434);
  LODWORD(STACK[0x5400]) = *(STACK[0x56E0] + 327);
  LODWORD(STACK[0x53D8]) = a7[3012];
  LODWORD(STACK[0x53D0]) = *STACK[0x5660];
  LODWORD(STACK[0x53E0]) = *(v11 + 1525);
  LODWORD(STACK[0x5408]) = *STACK[0x5480];
  LODWORD(STACK[0x5410]) = *(v38 + 539);
  LODWORD(STACK[0x5420]) = v9[4074];
  LODWORD(STACK[0x54C0]) = v31[2807];
  LODWORD(STACK[0x5430]) = *(v28 + 547);
  v39 = STACK[0x5308];
  LODWORD(STACK[0x5440]) = *(STACK[0x5308] + 3687);
  LODWORD(STACK[0x54E0]) = *(STACK[0x55F0] + 213);
  LODWORD(STACK[0x54D0]) = a7[2587];
  LODWORD(STACK[0x5520]) = v9[2792];
  LODWORD(STACK[0x5510]) = *(STACK[0x5670] + 2056);
  v40 = STACK[0x5790];
  LODWORD(STACK[0x54F0]) = *(STACK[0x5790] + 448);
  LODWORD(STACK[0x5500]) = v31[3581];
  LODWORD(STACK[0x5530]) = *(v39 + 774);
  LODWORD(STACK[0x5540]) = *(STACK[0x54B0] + 3854);
  LODWORD(STACK[0x5600]) = v31[994];
  LODWORD(STACK[0x5640]) = a8[2496];
  LODWORD(STACK[0x5610]) = *(v40 + 228);
  *(v18 + 4 * (v12 % 0x2240)) = ((((v35 | v34 & 0x88C100) << 8) ^ 0xD7E299D8) & (v37 ^ 0xFFFFFF94) | v37 & 0x27) ^ 0xE2E4851E;
  return (*(STACK[0x57D8] + 8 * ((713 * (v10 == 0)) ^ v15)))();
}

uint64_t sub_1007B4204@<X0>(int a1@<W0>, unint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, unint64_t a8@<X7>, unint64_t a9@<X8>)
{
  v23 = STACK[0x57D8];
  v24 = *a7 & ((v11 + 20180) + 0x7FFFFFFFFFFFA7A9);
  STACK[0x89B0] = *(STACK[0x57D8] + 8 * v14);
  STACK[0xC010] = a9;
  STACK[0xC3E0] = v13;
  STACK[0x7110] = v9;
  STACK[0x94D0] = v15;
  *(v22 + 1180) = v16;
  LODWORD(STACK[0x875C]) = a1;
  LODWORD(STACK[0x6A6C]) = v10;
  STACK[0x6A40] = v24 ^ 0x5CF48C4EEE5BDE29;
  STACK[0x9E40] = v12;
  STACK[0x6F90] = a2;
  LODWORD(STACK[0x73AC]) = a3;
  STACK[0xCDD0] = a4;
  STACK[0x58D8] = a5;
  STACK[0xBBB0] = v17;
  STACK[0x63D8] = a6;
  STACK[0x8C58] = v19;
  STACK[0x8800] = v18;
  STACK[0x77B0] = v20;
  STACK[0x5848] = a8;
  LODWORD(STACK[0x6420]) = v21;
  v25 = STACK[0x7ED8];
  STACK[0xBC10] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v25 + 880;
  return (*(v23 + 8 * (v11 + 2152)))();
}

uint64_t sub_1007B4430(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x48D8]) = LODWORD(STACK[0x54D0]) | LODWORD(STACK[0x54E0]);
  LODWORD(STACK[0x4958]) = LODWORD(STACK[0x53E8]) | LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x4760]) = LODWORD(STACK[0x53E0]) + LODWORD(STACK[0x53F0]);
  LODWORD(STACK[0x5420]) = STACK[0x53D0] & (v16 ^ 0xA25775BA);
  LODWORD(STACK[0x53C8]) = STACK[0x53B0] & (LODWORD(STACK[0x53C8]) ^ 0x7061F3AF);
  LODWORD(STACK[0x5640]) = v8 & (LODWORD(STACK[0x53C0]) ^ 0x31256875);
  LODWORD(STACK[0x53C0]) = v15 & (a3 ^ 0x736BA7F5);
  LODWORD(STACK[0x53F0]) = STACK[0x5520] & (a8 ^ 0xF943B19E);
  LODWORD(STACK[0x5520]) = STACK[0x5398] & (v9 ^ 0x90CE511C);
  LODWORD(STACK[0x54D0]) = STACK[0x5388] & (v21 ^ 0xA6988571);
  LODWORD(STACK[0x53B0]) = v18 & (LODWORD(STACK[0x5380]) ^ 0xA6285495);
  LODWORD(STACK[0x53E8]) = v17 & (LODWORD(STACK[0x5358]) ^ 0xEAEE0C3A);
  LODWORD(STACK[0x5398]) = a7 & (v19 ^ 0xBD3BB56);
  LODWORD(STACK[0x54F0]) = STACK[0x5328] & (LODWORD(STACK[0x5338]) ^ 0x2B62FDFF);
  LODWORD(STACK[0x5388]) = STACK[0x5318] & (LODWORD(STACK[0x5360]) ^ 0x1F81194D);
  LODWORD(STACK[0x53E0]) = STACK[0x52A8] & (v10 ^ 0xF73E8B28);
  LODWORD(STACK[0x5380]) = STACK[0x5290] & (v12 ^ 0xA367C04);
  LODWORD(STACK[0x47C8]) = STACK[0x5138] & (v13 ^ 0x2853F37F) | LODWORD(STACK[0x4948]);
  LODWORD(STACK[0x53D0]) = a6 & (v14 ^ 0x862DC485);
  LODWORD(STACK[0x54E0]) = STACK[0x4920] & (v11 ^ 0xD1114DF2);
  return (*(STACK[0x57D8] + 8 * v20))();
}

uint64_t sub_1007B47E8@<X0>(int a1@<W8>)
{
  STACK[0x57B0] = v2;
  *v1 = a1 + 1;
  LODWORD(STACK[0x1D4C0]) = (v3 + 1717146945) ^ (1964904101 * (v4 ^ 0xFA22EB84));
  STACK[0x1D4C8] = 0;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 + 7510)))(v5 - 240);
  return (*(v6 + 8 * (((*(STACK[0x4638] + 4) != 1468289323) * ((v3 - 24303) ^ 0x1C)) ^ v3)))(v7);
}

uint64_t sub_1007B488C@<X0>(int a1@<W8>)
{
  v4 = 3903 * ((LODWORD(STACK[0x4D1C]) + ((((*(v2 + v1) ^ 0x66) + 2) ^ *(v2 + v1)) ^ ((*(v2 + v1) ^ 1) - 1)) * ((a1 - 49) ^ 6)) & 7) + 20705415;
  v5 = 3903 * ((3 * (((*(v2 + v1) >> 3) ^ (((*(v2 + v1) >> 3) ^ 3) + 3) ^ (((*(v2 + v1) >> 3) ^ 4) + 6)) ^ 6) + 6) & 7) + 20705415;
  v6 = v5 - 5896 * (((93242167 * v5) >> 32) >> 7);
  v7 = *(v3 + 4008);
  LOBYTE(v6) = *(v7 + v6);
  v8 = v4 - 5896 * (((93242167 * v4) >> 32) >> 7);
  v9 = *(v7 + v8);
  v10 = v6 & 0x4A ^ 0xF3;
  v11 = v9 & 0xB0 ^ 0xEE;
  v12 = v9 ^ v6 ^ (2 * (v11 ^ v10 ^ (v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & 0x2E ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ (v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11))));
  *(v7 + v8) = (((v12 ^ 0xDB) - 127) ^ ((v12 ^ 0x30) + 108) ^ ((v12 ^ 0x11) + 75)) + 122;
  return (*(STACK[0x57D8] + 8 * ((112 * (v1 == 127)) ^ a1)))();
}

uint64_t sub_1007B4B5C@<X0>(int a1@<W6>, int a2@<W8>)
{
  v6 = ((v2 - 1558301349) & 0x5CE1F3FE ^ 0x4249) * v3;
  *(STACK[0x8070] + v6 + a1 - (((((v6 + a1) >> 1) * v4) >> 32) >> 12) * a2) = *((*(STACK[0x8070] + v6 + v5 - (((((v6 + v5) >> 1) * v4) >> 32) >> 12) * a2) ^ 0x39) + STACK[0x5490] + 13111) ^ 0xB3;
  return (*(STACK[0x57D8] + 8 * ((14878 * (v3 == 255)) ^ v2)))();
}

uint64_t sub_1007B4C8C(uint64_t a1, int a2, int a3, char a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v9 = *(v7 + 4008);
  v10 = *(v9 + a5 % (((a3 - 1340984266) | 0x14406C0) ^ 0xB15698CA));
  LOBYTE(v10) = *(v9 + (3903 * (v10 | ((v10 < 0x1C) << 8)) + 6916116) % 0x1708);
  LOBYTE(v9) = v10 & 0x94 ^ 0xD8;
  *(STACK[0xFE70] + 4 * (a7 % 0x2240)) = (v10 ^ (2 * ((v10 ^ a4) & (2 * ((v10 ^ a4) & (2 * ((v10 ^ a4) & (2 * ((v10 ^ a4) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ (v8 - 140);
  return (*(STACK[0x57D8] + 8 * ((19 * (a2 == 0)) ^ a3)))(a1, (a2 - 1));
}

uint64_t sub_1007B4DA0@<X0>(int a1@<W0>, int a2@<W7>, int a3@<W8>)
{
  v10 = STACK[0x41C];
  if ((*(v9 - 140) & 2) == 0)
  {
    v10 = STACK[0x418];
  }

  LODWORD(STACK[0x438]) = v10;
  v11 = LODWORD(STACK[0x364]) - 1461685061;
  v12 = a2 + v7;
  v13 = v3 + a2 + ((a2 + a1 + a3 + HIWORD(v12) - ((a2 + a1 + a3 + HIWORD(v12) - ((v12 + HIWORD(v12)) >> 8)) >> 13) - ((v12 + HIWORD(v12)) >> 8)) >> 7) + HIWORD(v12) + a3 - ((a2 + a1 + a3 + HIWORD(v12) - ((v12 + HIWORD(v12)) >> 8)) >> 13) - ((v12 + HIWORD(v12)) >> 8) - v8;
  v14 = (v13 ^ 0xBFD074C1) + ((v13 ^ 0xBFD074C1) >> 15) + (((v13 ^ 0xBFD074C1) + ((v13 ^ 0xBFD074C1) >> 15)) >> 7);
  v15 = v13 ^ v5;
  v16 = v14 ^ v6;
  v17 = v14 + 1455601742 + ((v14 + 1455601742) >> 12) + ((v14 + 1455601742 + ((v14 + 1455601742) >> 12)) >> 5);
  v18 = v17 + 402092259 - ((v17 + 402092259) >> 13) - ((v17 + 402092259 - ((v17 + 402092259) >> 13)) >> 4);
  v19 = v15 ^ v18;
  v20 = v18 + 1767124869 + ((v18 + 1767124869) >> 15) + ((v18 + 1767124869 + ((v18 + 1767124869) >> 15)) >> 2);
  v21 = v16 ^ v20;
  v22 = v20 + 345775710 - ((v20 + 345775710) >> 15) + ((v20 + 345775710 - ((v20 + 345775710) >> 15)) >> 1);
  v23 = v22 + 1034374308 + ((v22 + 1034374308) >> 15) - ((v22 + 1034374308 + ((v22 + 1034374308) >> 15)) >> 5);
  v24 = v19 ^ v23;
  v25 = (((v23 - 1382951538) >> 12) ^ (v23 - 1382951538)) + 2 * (((v23 - 1382951538) >> 12) & (v23 - 1382951538)) - (((((v23 - 1382951538) >> 12) ^ (v23 - 1382951538)) + 2 * (((v23 - 1382951538) >> 12) & (v23 - 1382951538))) >> 4);
  v26 = v21 ^ v25;
  v27 = v17 ^ v4 ^ v22 ^ (v25 - ((v25 - 579865062) >> 9) - 579865062 + ((v25 - ((v25 - 579865062) >> 9) - 579865062) >> 5));
  LODWORD(STACK[0x43C]) = v24 & 0x7F ^ 0x26;
  v28 = v27 & 7 ^ 6;
  LODWORD(STACK[0x37C]) = v28;
  v29 = -v28;
  LODWORD(STACK[0x388]) = -v28 & 7;
  v30 = -v28 & 7 ^ 0xC242D071;
  *(v9 - 148) = v30;
  v31 = v30 & 5 ^ 1;
  LODWORD(STACK[0x41C]) = v29;
  v32 = v29 & 2;
  if ((v27 & 7) == 6)
  {
    v33 = 0;
  }

  else
  {
    v33 = 255;
  }

  LODWORD(STACK[0x220]) = v31;
  LODWORD(STACK[0x23C]) = v32;
  v34 = v33 << v31 << v32;
  v35 = *(v9 - 184);
  v36 = STACK[0x380];
  v37 = *(STACK[0x380] + 8 * (0xFE4DD268 % v35));
  v38 = *(STACK[0x380] + 8 * (((((v37 ^ 0x34AEF8A6384423EALL) - 0x6EABE00EA4FAE4FDLL) ^ ((v37 ^ 0xCF994A5B56D8C0C3) + 0x6A63AD0C3599F82CLL) ^ ((v37 ^ 0x529E1B54C7354A80) - 0x89B03FC5B8B8D97)) - 0xC534EFE596A5C74) % v35));
  v39 = *(STACK[0x380] + 8 * (((((v38 ^ 0xD73CA0794B104189) + 0x127198DE4FA7F7) ^ ((v38 ^ 0x5FA5E056182BF959) - 0x7774CE48728BE0D9) ^ ((v38 ^ 0x2130E986FA921179) - 0x9E1C798903208F9)) - 0x7E87784831B16F07) % v35));
  LODWORD(STACK[0x3C0]) = v34;
  LODWORD(STACK[0x360]) = ((385875968 * v34) & v26) - ((2 * ((385875968 * v34) & v26)) & 0xD2000000) - 377571817;
  v40 = *(v36 + 8 * (((((v39 ^ 0x333BDD29AC07B23) - 0x4587533B9CDE67E1) ^ ((v39 ^ 0x1852F40DF18DCBBDLL) - 0x5EE61AE4F793D77FLL) ^ ((v39 ^ 0xB2C8E076C2E41937) + 0xB83F1603B05FA0BLL)) - 0x10E2B8BF29566898) % v35));
  if ((v27 & 7) == 6)
  {
    v41 = 0;
  }

  else
  {
    v41 = ~v34;
  }

  v42 = ((((v40 ^ 0x84EB43D579AD14CDLL) + 0x70389709B1AA9AC2) ^ ((v40 ^ 0xD27FCB20053270F7) + 0x26AC1FFCCD35FEFCLL) ^ ((v40 ^ 0xFF3D215CD536CD93) + 0xBEEF5801D3143A0)) - 0x5D7A7D74EF01689ALL) % v35;
  v43 = ((((v42 - ((2 * v42) & 0x1E02D8CA) + 1862364261) ^ 0xB7D138E1) + 211743219) ^ (((v42 - ((2 * v42) & 0x1E02D8CA) + 1862364261) ^ 0xA4D31078) + 530372972) ^ (((v42 - ((2 * v42) & 0x1E02D8CA) + 1862364261) ^ 0x7C0344FC) - 951284240)) - 1385174298;
  LODWORD(STACK[0x2F4]) = (~(2 * (v41 & v24)) + (v41 & v24));
  v44 = 16843009 * (v24 ^ 0x75 ^ ((v24 ^ 0x8175) >> 8) ^ ((v24 ^ 0xF3648175) >> 16) ^ HIBYTE(v24) ^ 0xDD);
  *(v9 - 172) = v26;
  *(v9 - 168) = v11;
  v45 = 16843009 * (v26 ^ 0xED ^ ((v26 ^ 0x9EED) >> 8) ^ ((v26 ^ 0xD6B79EED) >> 16) ^ HIBYTE(v26) ^ 0x18);
  v46 = *(*(v9 - 120) + 8 * a3);
  LODWORD(STACK[0x418]) = *(v9 - 144) ^ 0xDB445B4C;
  *(v9 - 128) = v24;
  LODWORD(STACK[0x354]) = v24 & 0xFFFFFF80;
  LODWORD(STACK[0x3FC]) = v27 & 0xFFFFFFF8;
  LODWORD(STACK[0x318]) = v44;
  *(v9 - 208) = v45;
  LODWORD(STACK[0x408]) = v45 ^ v44;
  LODWORD(STACK[0x414]) = v45 ^ v44 ^ 0xE0E0E0E0;
  *(v9 - 188) = v27;
  LODWORD(STACK[0x404]) = v27 ^ 0x93DE64A6;
  return v46((a3 + 18887318) | 0x28028284u, v43);
}

uint64_t sub_1007B541C()
{
  v1 = v0 ^ 0x521C;
  v2 = v0 + 543726656;
  v3 = v0 + 543729812;
  v4 = v0 + 9242;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(STACK[0xE840]);
  return (*(v5 + 8 * (((v3 > 0xDF3E79FC) * (v1 + 23783)) ^ (v2 - 543740375))))(v6);
}

uint64_t sub_1007B5498()
{
  LODWORD(STACK[0x5DEC]) = -143113071;
  v1 = STACK[0xA8A0];
  LOBYTE(STACK[0x6013]) = 32;
  STACK[0xA6A0] = STACK[0x8848];
  LODWORD(STACK[0x8A2C]) = STACK[0x6BCC];
  STACK[0x6E28] = v1;
  STACK[0x5908] = &STACK[0x5B80];
  STACK[0x8E78] = &STACK[0x8DE0];
  LODWORD(STACK[0x9058]) = 8;
  LODWORD(STACK[0xCF24]) = -1060642911;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007B5558()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 14322)))(v2);
}

uint64_t sub_1007B55FC()
{
  v1 = STACK[0x57D8];
  STACK[0xB2F0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((14666 * (v0 + 1568067274 == ((v0 + 207) | 0x440) - 1619643525)) ^ (v0 + 5873))))();
}

uint64_t sub_1007B56C0()
{
  v0 = STACK[0x14A0] | 0x182;
  v1 = STACK[0x57D8];
  STACK[0x8860] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((2 * v0) ^ 0x1008) + 8389) ^ v0)))();
}

uint64_t sub_1007B5718()
{
  v8 = v3 < v0;
  v9 = 16 * v4;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v2 ^ v7)))(*(v5 + v9));
  *(v5 + v9) = 0;
  v12 = v4 + 1;
  v13 = v12 + 2141670441 < v3;
  if (v8 != v12 > 0x8058B3D6)
  {
    v13 = v8;
  }

  return (*(v10 + 8 * ((v13 * v1) ^ v6)))(v11);
}

uint64_t sub_1007B5790()
{
  v0 = STACK[0x29CC] & 0x79E7DD57;
  v1 = STACK[0x29D0];
  v2 = LODWORD(STACK[0x29D0]) + 4423;
  v3 = STACK[0x9E30];
  STACK[0x7078] = STACK[0x9E30];
  return (*(STACK[0x57D8] + 8 * (((v3 == 0x683CBC57EAB92A3ELL) * (v2 ^ 0x2F3F ^ v0)) ^ v1)))();
}

uint64_t sub_1007B59D8@<X0>(int a1@<W8>)
{
  v3 = &STACK[0x1D280] + v2;
  *v3 = *STACK[0x57C0];
  v3[1] = *(v1 - 0x30BDFED8F32E6574);
  v3[2] = *(v1 - 0x30BDFED8F32E6573);
  v3[3] = *(v1 - 0x30BDFED8F32E6572);
  v3[4] = *(v1 - 0x30BDFED8F32E6571);
  v3[5] = *(v1 - 0x30BDFED8F32E6570);
  v3[6] = *(v1 - 0x30BDFED8F32E656FLL);
  v3[7] = *(v1 - 0x30BDFED8F32E656ELL);
  v3[8] = *(v1 - 0x30BDFED8F32E656DLL);
  v3[9] = *(v1 - 0x30BDFED8F32E656CLL);
  v3[10] = *(v1 - 0x30BDFED8F32E656BLL);
  v3[11] = *(v1 - 0x30BDFED8F32E656ALL);
  v3[12] = *(v1 - 0x30BDFED8F32E6569);
  v3[13] = *(v1 - 0x30BDFED8F32E6568);
  v3[14] = *(v1 - 0x30BDFED8F32E6567);
  v3[15] = *(v1 - 0x30BDFED8F32E6566);
  v4 = *(STACK[0x57D8] + 8 * a1);
  STACK[0x57C0] = v3;
  return v4();
}

uint64_t sub_1007B5B74(uint64_t a1)
{
  v2 = *(STACK[0x85A8] - 0x683CBC57EAB92A3ELL);
  STACK[0xB6B8] = 0;
  STACK[0xBBD8] = 0;
  return (*(STACK[0x57D8] + 8 * (((v2 != a1) * (((v1 - 23297) | 0x630) ^ 0x141 ^ ((v1 - 23099) | 0x630))) ^ v1)))();
}

uint64_t sub_1007B5C00@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W5>, int a4@<W6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v13 = (((v10 ^ 0xDBF8BEBD) + 604455235) ^ ((v10 ^ 0x659DEF85) - 1704849285) ^ (a3 + (v10 ^ 0x6C79D1AC) + 3294)) - 110492512;
  v14 = (((v8 + a1) & 0xBD327E56 ^ 0x1B3690BC ^ v13) - 1014713575) ^ v13 ^ ((v13 ^ 0x8535405D) + 1569143728) ^ ((v13 ^ a2) - 1107066697) ^ ((v13 ^ (a4 + 7)) + 122522637);
  v15 = v14 ^ v7;
  v16 = __ROR8__((v9 + v15) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((2 * (v16 + a5)) | 0x5ADB0EDB9A881570) - (v16 + a5) + 0x5292789232BBF548;
  v18 = __ROR8__(v17 ^ 0x42D5D9FCE970BA3CLL, 8);
  v17 ^= 0x328EF3F3CDEA5126uLL;
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0x96CC250345F5B17ALL) - 0x3499ED7E5D052743) ^ 0xD41D80158F15F952;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0xC38336EF1FC2FFCCLL) - (v21 + v20) + 0x1E3E6488701E8019) ^ 0x23CBBD3559CE3F4;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v11;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) & 0x1634D68337A7472ALL) - (v26 + v25) - 0xB1A6B419BD3A396) ^ 0xD6A99D7420205061;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v6 - ((v29 + v28) | v6) + ((v29 + v28) | 0x8E47E643A6F0AA40)) ^ 0x2FDE1FEDF977C005;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v12;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  *(a6 + v15) = (((v34 + v33 - ((2 * (v34 + v33)) & 0xF0F8CE4CB2F832F6) - 0x78398D9A683E685) ^ 0x912D1B8B5E0408F8) >> (8 * ((v9 + (v14 ^ v7)) & 7))) ^ *(v9 + v15);
  return (*(STACK[0x57D8] + 8 * ((20117 * (v14 == v7)) ^ v8)))();
}

uint64_t sub_1007B5F08()
{
  LODWORD(STACK[0x9C24]) = -769884012;
  v1 = STACK[0xAC24];
  v2 = *(STACK[0xAA58] + 16);
  v3 = STACK[0xAA58] + 76;
  STACK[0x6C28] = STACK[0x8A30];
  LODWORD(STACK[0x597C]) = v1;
  STACK[0xA448] = v2;
  LOBYTE(STACK[0xC5F3]) = 17;
  STACK[0xABB0] = v3;
  STACK[0x6CC0] = &STACK[0x9C24];
  LODWORD(STACK[0x73F8]) = 16;
  LODWORD(STACK[0x5D74]) = -1728654726;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007B61E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = LODWORD(STACK[0x4BA8]) ^ LODWORD(STACK[0x4B80]);
  v14 = STACK[0x51D8] ^ STACK[0x5018];
  STACK[0x5480] = v6;
  LODWORD(STACK[0x5430]) = LODWORD(STACK[0x53D8]) ^ v14;
  ++LODWORD(STACK[0x5128]);
  v15 = LODWORD(STACK[0x52E0]) == 134236192;
  v16 = STACK[0x4DD0];
  v17 = STACK[0x4DB0];
  STACK[0x51C8] = v7;
  if (v15)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v15)
  {
    v19 = STACK[0x4DC0];
  }

  else
  {
    v19 = STACK[0x4DC8];
  }

  v20 = STACK[0x53E8];
  v21 = STACK[0x4DA0];
  if ((STACK[0x53E8] & 2) != 0)
  {
    v22 = v19;
  }

  else
  {
    v21 = STACK[0x4DB8];
    v22 = v18;
  }

  if ((v20 & 2) == 0)
  {
    v18 = v19;
  }

  v23 = STACK[0x5640];
  v24 = v12;
  v25 = STACK[0x4DA8];
  v26 = (2 * ((v25 ^ 0x2E48EDB) & (LODWORD(STACK[0x5640]) ^ 0x665E25E8) ^ v25 & 0x548AA82D)) ^ 0x1011012;
  v27 = (2 * ((v18 ^ 0x2A05A36A) & STACK[0x5670] ^ STACK[0x5640] & 0x28E12DB1)) ^ 0x41801B02;
  v28 = 2 * ((v21 ^ 0x4F37F783) & STACK[0x5670] ^ STACK[0x5640] & 0x4DD37958);
  STACK[0x5470] = v8;
  v29 = (2 * ((v22 ^ 0x2E48EDB) & (v23 ^ 0x35A7A8E3) ^ v22 & 0x7732526)) ^ 0x4C00804;
  v30 = (v26 - 2098950437 - ((2 * v26) & 0x5C91DB4)) ^ v25;
  v31 = STACK[0x5760];
  v32 = ((v30 & STACK[0x5760]) << v12) | ((v30 & STACK[0x56E0]) >> STACK[0x57C0]);
  v33 = (v27 - 2098950437 - ((2 * v27) & 0x5C91DB4)) ^ v18;
  v34 = STACK[0x5720];
  v35 = STACK[0x56F0];
  v36 = ((v33 & STACK[0x5720]) >> STACK[0x57C0]) | ((v33 & STACK[0x56F0]) << a6);
  v37 = ((v28 ^ 0x1A01280) - 2098950437 - 2 * ((v28 ^ 0x1A01280) & 0x2E48EDE ^ v28 & 4)) ^ v21;
  v38 = ((v37 & STACK[0x5760]) << v12) + ((v37 & STACK[0x56E0]) >> STACK[0x5780]);
  v39 = ((((v29 - 2098950437 - ((2 * v29) & 0x5C91DB4)) ^ v22) & STACK[0x56E0]) >> STACK[0x5780]) | ((((v29 - 2098950437 - ((2 * v29) & 0x5C91DB4)) ^ v22) & STACK[0x56F0]) << a6);
  v40 = STACK[0x5298];
  if (STACK[0x5298])
  {
    v41 = STACK[0x4B60];
  }

  else
  {
    v41 = STACK[0x4B58];
  }

  if (v40)
  {
    v42 = STACK[0x4B50];
  }

  else
  {
    v42 = STACK[0x4B68];
  }

  v43 = __ROR4__(__ROR4__(STACK[0x4AE0], 30) ^ 0x56CECB8A, 2) ^ 0x95B3B2E2;
  v44 = STACK[0x4AF0];
  v45 = STACK[0x4AD8];
  if (v40)
  {
    v46 = STACK[0x4AF0];
  }

  else
  {
    v46 = STACK[0x4AD8];
  }

  if (v40)
  {
    v44 = STACK[0x4AE8];
  }

  else
  {
    v45 = v43;
    v43 = STACK[0x4AE8];
  }

  if (v40)
  {
    v47 = v36;
  }

  else
  {
    v47 = v32;
  }

  if (v40)
  {
    v48 = v32;
  }

  else
  {
    v48 = v39;
  }

  if (v40)
  {
    v36 = v38;
  }

  else
  {
    v39 = v38;
  }

  v49 = STACK[0x4B00];
  v50 = STACK[0x4AF8];
  if (v40)
  {
    v51 = STACK[0x4B00];
  }

  else
  {
    v51 = STACK[0x4AF8];
  }

  LODWORD(STACK[0x5460]) = v11;
  if (v40)
  {
    v52 = STACK[0x4B08];
  }

  else
  {
    v52 = v49;
  }

  v53 = STACK[0x4B10];
  if (v40)
  {
    v54 = STACK[0x4B10];
  }

  else
  {
    v54 = STACK[0x4B08];
  }

  STACK[0x5410] = v9;
  if (v40)
  {
    v55 = v50;
  }

  else
  {
    v55 = v53;
  }

  v56 = STACK[0x50D8];
  if (v40)
  {
    v57 = STACK[0x50E8];
  }

  else
  {
    v57 = STACK[0x50D8];
  }

  v58 = STACK[0x50E0];
  if (v40)
  {
    v59 = STACK[0x50E0];
  }

  else
  {
    v59 = STACK[0x50E8];
  }

  v60 = v20;
  LODWORD(STACK[0x5420]) = v10;
  if (v40)
  {
    v61 = STACK[0x5190];
  }

  else
  {
    v61 = v58;
  }

  if ((v40 & 1) == 0)
  {
    v56 = STACK[0x5190];
  }

  if ((v40 & 2) != 0)
  {
    v62 = v43;
  }

  else
  {
    v62 = v46;
  }

  if ((v40 & 2) != 0)
  {
    v63 = v46;
  }

  else
  {
    v63 = v43;
  }

  if ((v40 & 2) != 0)
  {
    v64 = v36;
  }

  else
  {
    v64 = v48;
  }

  LODWORD(STACK[0x53E0]) = v64;
  if ((v40 & 2) != 0)
  {
    v36 = v48;
  }

  LODWORD(STACK[0x53D8]) = v36;
  if ((v40 & 2) != 0)
  {
    v65 = v44;
  }

  else
  {
    v65 = v45;
  }

  if ((v40 & 2) != 0)
  {
    v66 = v45;
  }

  else
  {
    v66 = v44;
  }

  if ((v40 & 2) != 0)
  {
    v67 = v39;
  }

  else
  {
    v67 = v47;
  }

  LODWORD(STACK[0x53A8]) = v67;
  if ((v40 & 2) != 0)
  {
    v39 = v47;
  }

  LODWORD(STACK[0x53C0]) = v39;
  if ((v40 & 2) != 0)
  {
    v68 = v54;
  }

  else
  {
    v68 = v51;
  }

  LODWORD(STACK[0x5320]) = v68;
  if ((v40 & 2) == 0)
  {
    v51 = v54;
  }

  LODWORD(STACK[0x5190]) = v51;
  if ((v40 & 2) != 0)
  {
    v69 = v55;
  }

  else
  {
    v69 = v52;
  }

  LODWORD(STACK[0x52F8]) = v69;
  if ((v40 & 2) == 0)
  {
    v52 = v55;
  }

  LODWORD(STACK[0x54A0]) = v52;
  if ((v40 & 2) != 0)
  {
    v70 = v61;
  }

  else
  {
    v70 = v57;
  }

  LODWORD(STACK[0x55C0]) = v70;
  if ((v40 & 2) != 0)
  {
    v71 = v57;
  }

  else
  {
    v71 = v61;
  }

  LODWORD(STACK[0x55B0]) = v71;
  if ((v40 & 2) != 0)
  {
    v72 = STACK[0x4B78];
  }

  else
  {
    v72 = STACK[0x4B70];
  }

  LODWORD(STACK[0x53A0]) = v72;
  if ((v40 & 2) != 0)
  {
    v73 = v56;
  }

  else
  {
    v73 = v59;
  }

  LODWORD(STACK[0x54C0]) = v73;
  if ((v40 & 2) != 0)
  {
    v74 = v59;
  }

  else
  {
    v74 = v56;
  }

  LODWORD(STACK[0x5520]) = v74;
  if ((v40 & 2) != 0)
  {
    v75 = v42;
  }

  else
  {
    v75 = v41;
  }

  LODWORD(STACK[0x5398]) = v75;
  if ((v40 & 2) != 0)
  {
    v76 = v41;
  }

  else
  {
    v76 = v42;
  }

  LODWORD(STACK[0x5408]) = v76;
  v77 = STACK[0x53F8];
  v78 = 1222767897 * ((LODWORD(STACK[0x4B90]) + v72) ^ v77) + ((1222767897 * ((LODWORD(STACK[0x4B90]) + v72) ^ v77)) >> 16) + ((1222767897 * ((LODWORD(STACK[0x4B90]) + v72) ^ v77) + ((1222767897 * ((LODWORD(STACK[0x4B90]) + v72) ^ v77)) >> 16)) >> 8);
  v79 = STACK[0x53B0];
  v80 = (-2108438369 * (v78 + v79)) ^ ((-2108438369 * (v78 + v79)) >> 16);
  v81 = STACK[0x53D0];
  v82 = (278034807 * ((v80 + (v80 >> 8)) ^ v81)) ^ ((278034807 * ((v80 + (v80 >> 8)) ^ v81)) >> 16);
  v83 = STACK[0x5450];
  v84 = STACK[0x53B0];
  v85 = (v78 ^ v79) + 2 * (v78 & v79);
  v86 = v85 - v78;
  v87 = 278034807 * ((((-2108438369 * v85) ^ ((-2108438369 * v85) >> 16)) + (((-2108438369 * v85) ^ ((-2108438369 * v85) >> 16)) >> 8)) ^ LODWORD(STACK[0x53D0]));
  v88 = v87 ^ HIWORD(v87) ^ LODWORD(STACK[0x5450]) ^ ((v87 ^ HIWORD(v87)) >> 8);
  v89 = v13 + LODWORD(STACK[0x53F8]);
  LODWORD(STACK[0x5390]) = v89;
  v90 = -514357199 * ((-649781925 * v89 + ((-649781925 * v89) >> 16)) ^ v81 ^ ((-649781925 * v89 + ((-649781925 * v89) >> 16)) >> 8));
  v91 = -642980261 * (v82 ^ v83 ^ (v82 >> 8)) - ((-642980261 * (v82 ^ v83 ^ (v82 >> 8))) >> 16);
  v92 = v91 - (v91 >> 8);
  v93 = -269363375 * ((v90 ^ HIWORD(v90)) - v86 - ((v90 ^ HIWORD(v90)) >> 8));
  v94 = -1029468333 * (((v93 + HIWORD(v93)) ^ ((v93 + HIWORD(v93)) >> 8)) - v83);
  v95 = (v94 + HIWORD(v94)) ^ ((v94 + HIWORD(v94)) >> 8);
  v96 = v92 - LODWORD(STACK[0x50C8]);
  v97 = v92;
  LODWORD(STACK[0x5680]) = v92;
  v98 = v95 - v96;
  v99 = v95;
  LODWORD(STACK[0x4DA8]) = v95;
  if ((v95 - v96))
  {
    v100 = v65;
  }

  else
  {
    v100 = v63;
  }

  LODWORD(STACK[0x5270]) = v100;
  if (v98)
  {
    v65 = v62;
  }

  else
  {
    v63 = v66;
  }

  if (v98)
  {
    v101 = v66;
  }

  else
  {
    v101 = v62;
  }

  LODWORD(STACK[0x5338]) = v101;
  if (v98)
  {
    v102 = v68;
  }

  else
  {
    v102 = v52;
  }

  if (v98)
  {
    v103 = v51;
  }

  else
  {
    v103 = v69;
  }

  v104 = (v98 & 2) == 0;
  v105 = v98;
  LODWORD(STACK[0x54B0]) = v98;
  if ((v98 & 2) != 0)
  {
    v106 = v63;
  }

  else
  {
    v106 = v65;
  }

  if ((v98 & 2) != 0)
  {
    v107 = v102;
  }

  else
  {
    v65 = v63;
    v107 = v103;
  }

  if ((v98 & 2) != 0)
  {
    v102 = v103;
  }

  v108 = -642980261 * v88 - ((-642980261 * v88) >> 16) - ((-642980261 * v88 - ((-642980261 * v88) >> 16)) >> 8);
  LODWORD(STACK[0x5530]) = v108;
  v109 = 8 * v97;
  LODWORD(STACK[0x5510]) = v109;
  v110 = -v109;
  if (v104)
  {
    v111 = v101;
  }

  else
  {
    v111 = v100;
  }

  v112 = 8 * v108;
  LODWORD(STACK[0x50E0]) = -v112;
  v113 = v112;
  LODWORD(STACK[0x55F0]) = v112;
  v114 = -v112 & 0x18;
  LODWORD(STACK[0x5220]) = v114;
  v115 = v109 & 0x18;
  if ((v109 & 0x18) != 0)
  {
    v111 = (v111 >> (v110 & 0x18)) + (v111 << (v109 & 0x18));
  }

  LODWORD(STACK[0x5370]) = v111;
  v116 = (v106 >> v114) + (v106 << v115);
  if ((v109 & 0x18) == 0)
  {
    v116 = v106;
  }

  LODWORD(STACK[0x5380]) = v116;
  v117 = v110 & 0x18;
  if ((v110 & 0x18) != 0)
  {
    v102 = (v102 >> (v110 & 0x18)) + (v102 << v115);
  }

  LODWORD(STACK[0x5230]) = v102;
  v118 = __ROR4__(v65, v117);
  if ((v110 & 0x18) == 0)
  {
    v118 = v65;
  }

  LODWORD(STACK[0x5378]) = v118;
  v119 = STACK[0x50A0];
  if (STACK[0x50A0])
  {
    v120 = STACK[0x4B28];
  }

  else
  {
    v120 = STACK[0x4B30];
  }

  v121 = STACK[0x4B20];
  if (v119)
  {
    v122 = STACK[0x4B30];
  }

  else
  {
    v122 = STACK[0x4B20];
  }

  if (v119)
  {
    v123 = STACK[0x4B18];
  }

  else
  {
    v121 = STACK[0x4B18];
    v123 = STACK[0x4B28];
  }

  v124 = (STACK[0x50A0] & 2) == 0;
  v125 = STACK[0x50A0];
  if ((v119 & 2) != 0)
  {
    v126 = v121;
  }

  else
  {
    v126 = v120;
  }

  LODWORD(STACK[0x51D8]) = v126;
  if ((v119 & 2) != 0)
  {
    v127 = v120;
  }

  else
  {
    v127 = v121;
  }

  LODWORD(STACK[0x52B0]) = v127;
  v128 = v31;
  if (v124)
  {
    v129 = v122;
  }

  else
  {
    v129 = v123;
  }

  LODWORD(STACK[0x52A8]) = v129;
  if (v124)
  {
    v122 = v123;
  }

  v130 = v99 + LODWORD(STACK[0x5358]);
  LODWORD(STACK[0x56C0]) = v130;
  v131 = (v31 & 0xE0CA7823) + (v31 & 0xE0CA7823 ^ 0xE0CA7823) + 523601885 + v130;
  v132 = v122 - v131 + ((v130 | 0xE2A53513) & v131);
  LODWORD(STACK[0x5290]) = v132;
  LODWORD(STACK[0x4DC8]) = v105 - v96;
  v133 = v105 - v96 - v96;
  if (v133)
  {
    v134 = v127;
  }

  else
  {
    v134 = v132;
  }

  LODWORD(STACK[0x5010]) = v134;
  if (v133)
  {
    v135 = v126;
  }

  else
  {
    v135 = v129;
  }

  LODWORD(STACK[0x5040]) = v135;
  if ((v133 & 2) != 0)
  {
    v135 = v134;
  }

  v136 = (v107 >> v117) | (v107 << (v113 & 0x18));
  if ((v113 & 0x18) == 0)
  {
    v136 = v107;
  }

  LODWORD(STACK[0x5240]) = v136;
  v137 = (v135 >> (v110 & 0x18)) ^ (v135 << (v113 & 0x18));
  if ((v110 & 0x18) == 0)
  {
    v137 = v135;
  }

  LODWORD(STACK[0x5298]) = v137;
  if (v125)
  {
    v138 = STACK[0x5268];
  }

  else
  {
    v138 = STACK[0x5060];
  }

  LODWORD(STACK[0x4DD0]) = v138;
  if (v125)
  {
    v139 = STACK[0x5070];
  }

  else
  {
    v139 = STACK[0x5078];
  }

  LODWORD(STACK[0x4FF0]) = v139;
  v140 = v86;
  if (v131)
  {
    v141 = v86;
  }

  else
  {
    v141 = v83;
  }

  LODWORD(STACK[0x5340]) = v141;
  v142 = v77;
  if (v131)
  {
    v143 = v77;
  }

  else
  {
    v143 = v81;
  }

  LODWORD(STACK[0x5368]) = v143;
  if (v131)
  {
    v144 = v81;
  }

  else
  {
    v144 = v86;
  }

  LODWORD(STACK[0x5308]) = v144;
  LODWORD(STACK[0x50E8]) = v86;
  v145 = v81;
  if (v131)
  {
    v146 = v83;
  }

  else
  {
    v146 = v142;
  }

  LODWORD(STACK[0x5318]) = v146;
  if ((v131 & 2) == 0)
  {
    v143 = v141;
  }

  LODWORD(STACK[0x50D8]) = v143;
  if ((v125 & 2) == 0)
  {
    v139 = v138;
  }

  LODWORD(STACK[0x4DC0]) = v139;
  if ((v131 & 2) != 0)
  {
    v147 = v144;
  }

  else
  {
    v147 = v146;
  }

  if ((v110 & 0x18) != 0)
  {
    v147 = (v147 << v115) ^ (v147 >> (v110 & 0x18));
  }

  LODWORD(STACK[0x5278]) = v147;
  v148 = STACK[0x4DF8];
  if ((v60 & 2) != 0)
  {
    v148 = STACK[0x4DF0];
  }

  v149 = STACK[0x4E10];
  if (LODWORD(STACK[0x52E0]) != 134236192)
  {
    v149 = STACK[0x4E18];
  }

  v150 = STACK[0x4E00];
  if (LODWORD(STACK[0x52E0]) == 134236192)
  {
    v150 = STACK[0x4E08];
  }

  if ((v60 & 2) != 0)
  {
    v151 = v150;
  }

  else
  {
    v151 = v149;
  }

  if ((v60 & 2) == 0)
  {
    v149 = v150;
  }

  v152 = STACK[0x5670];
  v153 = LODWORD(STACK[0x4DD8]) ^ (2 * (STACK[0x4DD8] & LODWORD(STACK[0x5670])));
  v154 = STACK[0x5790];
  v155 = STACK[0x57C0];
  v156 = ((v153 & v35) << STACK[0x5790]) + ((v153 & v34) >> STACK[0x57C0]);
  LODWORD(STACK[0x5300]) = v156;
  v157 = STACK[0x5700];
  v158 = (((v149 ^ (2 * (v149 & STACK[0x5700]))) & v34) >> v155) | (((v149 ^ (2 * (v149 & STACK[0x5700]))) & v35) << v154);
  LODWORD(STACK[0x52F0]) = v158;
  v159 = (((v148 ^ (2 * (v148 & v152))) & v128) << v24) | (((v148 ^ (2 * (v148 & v152))) & v34) >> STACK[0x5780]);
  LODWORD(STACK[0x5018]) = v159;
  v160 = (((v151 ^ (2 * (v151 & v157))) & v35) << v24) + (((v151 ^ (2 * (v151 & v157))) & STACK[0x56E0]) >> v155);
  LODWORD(STACK[0x5138]) = v160;
  v161 = (STACK[0x5098] & 1) == 0;
  v162 = STACK[0x5098];
  v163 = STACK[0x52D0];
  if ((STACK[0x5098] & 1) == 0)
  {
    v163 = STACK[0x5188];
  }

  v164 = STACK[0x5180];
  if (STACK[0x5098])
  {
    v165 = STACK[0x5168];
  }

  else
  {
    v164 = STACK[0x5198];
    v165 = STACK[0x51A8];
  }

  if (STACK[0x5098])
  {
    v166 = STACK[0x5178];
  }

  else
  {
    v166 = STACK[0x5160];
  }

  if (STACK[0x5098])
  {
    v167 = STACK[0x50F8];
  }

  else
  {
    v167 = STACK[0x5108];
  }

  if (STACK[0x5098])
  {
    v168 = STACK[0x5100];
  }

  else
  {
    v168 = STACK[0x50F8];
  }

  if (STACK[0x5098])
  {
    v169 = STACK[0x50F0];
  }

  else
  {
    v169 = STACK[0x5100];
  }

  if (STACK[0x5098])
  {
    v170 = STACK[0x5108];
  }

  else
  {
    v170 = STACK[0x50F0];
  }

  if (STACK[0x5098])
  {
    v156 = v158;
  }

  LODWORD(STACK[0x5160]) = v156;
  if (v161)
  {
    v160 = v159;
  }

  LODWORD(STACK[0x5188]) = v160;
  v171 = (v162 & 2) == 0;
  if ((v162 & 2) != 0)
  {
    v172 = STACK[0x4C68];
  }

  else
  {
    v172 = STACK[0x4D58];
  }

  if (v171)
  {
    v173 = v163;
  }

  else
  {
    v173 = v164;
  }

  if (v171)
  {
    v174 = STACK[0x5170];
  }

  else
  {
    v164 = v163;
    v174 = STACK[0x4D98];
  }

  if (v171)
  {
    v175 = v165;
  }

  else
  {
    v175 = v166;
  }

  if (v171)
  {
    v176 = v166;
  }

  else
  {
    v176 = v165;
  }

  if (v171)
  {
    v177 = v167;
  }

  else
  {
    v177 = v169;
  }

  LODWORD(STACK[0x54E0]) = v177;
  if (v171)
  {
    v178 = v169;
  }

  else
  {
    v178 = v167;
  }

  LODWORD(STACK[0x54F0]) = v178;
  v179 = STACK[0x54C0];
  v180 = STACK[0x5190];
  v181 = v142;
  v182 = 1222767897 * ((v180 + v179) ^ v142) + ((1222767897 * ((v180 + v179) ^ v142)) >> 16);
  v183 = v182 + (v182 >> 8) + v84 + v172 + 2130488481 * (v182 + (v182 >> 8) + v84) * ((((v182 + (v182 >> 8)) & 0x34260FCE ^ 0x34260FCE) + ((v182 + (v182 >> 8)) & 0x34260FCE)) ^ 0xB675C751);
  if (v171)
  {
    v184 = v168;
  }

  else
  {
    v184 = v170;
  }

  LODWORD(STACK[0x4DD8]) = v184;
  if (v171)
  {
    v185 = v170;
  }

  else
  {
    v185 = v168;
  }

  LODWORD(STACK[0x4DB8]) = v185;
  v186 = STACK[0x5680];
  v187 = -649781925 * ((v139 ^ v175) + v181) + ((-649781925 * ((v139 ^ v175) + v181)) >> 16);
  v188 = (-514357199 * (v187 ^ v145 ^ (v187 >> 8))) ^ ((-514357199 * (v187 ^ v145 ^ (v187 >> 8))) >> 16);
  v189 = -269363375 * (v188 - v140 - (v188 >> 8)) + ((-269363375 * (v188 - v140 - (v188 >> 8))) >> 16);
  v190 = STACK[0x5450];
  v191 = (-1029468333 * ((v189 ^ (v189 >> 8)) - LODWORD(STACK[0x5450]))) & 0xD9451D5B;
  v192 = STACK[0x5390];
  v193 = ((v191 ^ 0xD9451D5B) + v191) * LODWORD(STACK[0x5390]);
  LODWORD(STACK[0x5100]) = v193;
  v194 = v175 - v192;
  v195 = LODWORD(STACK[0x56C0]) | 0xD4F45363;
  LODWORD(STACK[0x5580]) = v131;
  v196 = v131 ^ v186 ^ v195 & v131 ^ ((v174 ^ -v174 ^ (v186 - (v186 ^ v174))) + v186);
  if (v171)
  {
    v197 = v160;
  }

  else
  {
    v197 = v156;
  }

  LODWORD(STACK[0x5390]) = v197;
  v198 = STACK[0x4DA8];
  if (STACK[0x4DA8])
  {
    v199 = v164;
  }

  else
  {
    v199 = v196;
  }

  LODWORD(STACK[0x5180]) = v199;
  if (v198)
  {
    v200 = v196;
  }

  else
  {
    v200 = v173;
  }

  v201 = STACK[0x52A0];
  if (v198)
  {
    v202 = v173;
  }

  else
  {
    v202 = STACK[0x52A0];
  }

  LODWORD(STACK[0x5218]) = v202;
  if (v198)
  {
    v203 = v201;
  }

  else
  {
    v203 = v164;
  }

  v204 = v194 + 1942866643 * v193;
  v205 = STACK[0x5280];
  v206 = v176;
  if (v198)
  {
    v207 = v176;
  }

  else
  {
    v207 = STACK[0x5280];
  }

  LODWORD(STACK[0x5178]) = v207;
  if (v198)
  {
    v208 = v204;
  }

  else
  {
    v208 = v183;
  }

  LODWORD(STACK[0x5198]) = v208;
  if ((v198 & 2) != 0)
  {
    v209 = v208;
  }

  else
  {
    v209 = v207;
  }

  if ((v198 & 2) != 0)
  {
    v210 = v199;
  }

  else
  {
    v210 = v202;
  }

  if ((v198 & 2) != 0)
  {
    v211 = v203;
  }

  else
  {
    v211 = v200;
  }

  v212 = v110;
  v213 = __ROR4__(v210, v110 & 0x18);
  if ((v110 & 0x18) != 0)
  {
    v214 = v213;
  }

  else
  {
    v214 = v210;
  }

  LODWORD(STACK[0x52D0]) = v214;
  if (v133)
  {
    v215 = STACK[0x5290];
  }

  else
  {
    v215 = STACK[0x51D8];
  }

  if (v133)
  {
    v216 = STACK[0x52A8];
  }

  else
  {
    v216 = STACK[0x52B0];
  }

  v217 = v133;
  LODWORD(STACK[0x4DB0]) = v133;
  if ((v133 & 2) != 0)
  {
    v218 = v215;
  }

  else
  {
    v218 = v216;
  }

  v219 = v212;
  v220 = __ROR4__(v218, v212 & 0x18);
  if ((v212 & 0x18) != 0)
  {
    v221 = v220;
  }

  else
  {
    v221 = v218;
  }

  LODWORD(STACK[0x52A0]) = v221;
  v222 = STACK[0x54B0];
  v223 = STACK[0x52F8];
  if ((STACK[0x54B0] & 1) == 0)
  {
    v223 = STACK[0x5320];
  }

  LODWORD(STACK[0x4E08]) = v223;
  if (v222)
  {
    v224 = STACK[0x54A0];
  }

  else
  {
    v224 = v180;
  }

  LODWORD(STACK[0x4E10]) = v224;
  if ((v222 & 2) != 0)
  {
    v225 = v224;
  }

  else
  {
    v225 = v223;
  }

  v226 = v219 & 0x18;
  v227 = (v209 << v115) ^ (v209 >> (v219 & 0x18));
  if ((v219 & 0x18) == 0)
  {
    v227 = v209;
  }

  LODWORD(STACK[0x51A8]) = v227;
  v228 = __ROR4__(v225, v226);
  if ((v219 & 0x18) == 0)
  {
    v228 = v225;
  }

  LODWORD(STACK[0x51D8]) = v228;
  v229 = STACK[0x5520];
  if (v222)
  {
    v229 = STACK[0x55C0];
  }

  LODWORD(STACK[0x4DF8]) = v229;
  v230 = STACK[0x55B0];
  if ((v222 & 1) == 0)
  {
    v230 = v179;
  }

  LODWORD(STACK[0x4E00]) = v230;
  if ((v222 & 2) != 0)
  {
    v230 = v229;
  }

  v231 = STACK[0x5510];
  v232 = STACK[0x5510] & 0x18;
  v233 = __ROR4__(v230, v226);
  if ((STACK[0x5510] & 0x18) != 0)
  {
    v230 = v233;
  }

  LODWORD(STACK[0x5108]) = v230;
  v234 = (v211 << v232) ^ (v211 >> v226);
  if ((v231 & 0x18) == 0)
  {
    v234 = v211;
  }

  LODWORD(STACK[0x52B0]) = v234;
  if ((v198 & 2) != 0)
  {
    v235 = v200;
  }

  else
  {
    v235 = v203;
  }

  v236 = STACK[0x55F0];
  if ((STACK[0x55F0] & 0x18) != 0)
  {
    v235 = (v235 >> v226) + (v235 << (STACK[0x55F0] & 0x18));
  }

  LODWORD(STACK[0x52A8]) = v235;
  if ((v217 & 2) != 0)
  {
    v237 = v216;
  }

  else
  {
    v237 = v215;
  }

  if ((v198 & 1) == 0)
  {
    v205 = v204;
  }

  LODWORD(STACK[0x4E18]) = v205;
  if (v198)
  {
    v238 = v183;
  }

  else
  {
    v238 = v206;
  }

  LODWORD(STACK[0x5170]) = v238;
  v239 = STACK[0x54E0];
  if (v198)
  {
    v239 = v184;
  }

  LODWORD(STACK[0x4DF0]) = v239;
  v240 = STACK[0x54F0];
  if (v198)
  {
    v240 = v185;
  }

  LODWORD(STACK[0x5280]) = v240;
  v241 = v198;
  if ((v198 & 2) != 0)
  {
    v242 = v238;
  }

  else
  {
    v240 = v239;
    v242 = v205;
  }

  v243 = v236 & 0x18;
  if ((v236 & 0x18) != 0)
  {
    v240 = (v240 << (v236 & 0x18)) ^ (v240 >> v226);
  }

  LODWORD(STACK[0x50F0]) = v240;
  v244 = (v242 << v243) | (v242 >> v226);
  if ((v236 & 0x18) == 0)
  {
    v244 = v242;
  }

  LODWORD(STACK[0x5190]) = v244;
  LODWORD(STACK[0x50F8]) = v237;
  v245 = (v237 >> v226) + (v237 << v243);
  if ((v236 & 0x18) == 0)
  {
    v245 = v237;
  }

  LODWORD(STACK[0x5290]) = v245;
  v15 = LODWORD(STACK[0x52E0]) == 134236192;
  v246 = (LODWORD(STACK[0x5260]) + 1941930318) & STACK[0x1AB0];
  v247 = STACK[0x5570] ^ LODWORD(STACK[0x4F08]);
  LODWORD(STACK[0x4DA0]) = v246;
  v248 = v247 ^ (v246 - 2054856678);
  v249 = STACK[0x4ED0];
  if (v15)
  {
    v249 = v248;
    v248 = STACK[0x4ED8];
  }

  v250 = STACK[0x4E90];
  if ((STACK[0x53E8] & 2) != 0)
  {
    v250 = STACK[0x4EA0];
  }

  v251 = STACK[0x4EA8];
  if ((STACK[0x53E8] & 2) != 0)
  {
    v252 = STACK[0x4EB0];
  }

  else
  {
    v252 = STACK[0x4EA8];
  }

  if ((STACK[0x53E8] & 2) != 0)
  {
    v253 = v248;
  }

  else
  {
    v251 = STACK[0x4EB0];
    v253 = STACK[0x4E88];
  }

  if ((STACK[0x53E8] & 2) != 0)
  {
    v254 = STACK[0x4E88];
  }

  else
  {
    v254 = v248;
  }

  v255 = v190 - 833239417 + (LODWORD(STACK[0x53F8]) ^ 0xDB95CBFF ^ (LODWORD(STACK[0x4E80]) - 2109564896 + (LODWORD(STACK[0x53B0]) ^ 0x18CA8D0A)));
  if ((STACK[0x53E8] & 2) != 0)
  {
    v256 = STACK[0x4EB8];
  }

  else
  {
    v256 = v249;
  }

  if ((STACK[0x53E8] & 2) != 0)
  {
    v257 = v249;
  }

  else
  {
    v257 = STACK[0x4EB8];
  }

  v258 = STACK[0x5750];
  v259 = (v250 ^ v258) - 449890787 - ((2 * (v250 ^ v258)) & 0xCA5E6C3A);
  v260 = STACK[0x51C0];
  if (STACK[0x51C0])
  {
    v261 = STACK[0x5130];
  }

  else
  {
    v261 = STACK[0x5140];
  }

  if (v260)
  {
    v262 = STACK[0x5140];
  }

  else
  {
    v262 = STACK[0x5150];
  }

  if (v260)
  {
    v263 = STACK[0x5150];
  }

  else
  {
    v263 = STACK[0x5148];
  }

  if (v260)
  {
    v264 = STACK[0x5148];
  }

  else
  {
    v264 = STACK[0x5130];
  }

  v265 = STACK[0x5670];
  v266 = (((v254 ^ (2 * (v254 & v265))) & STACK[0x5720]) >> STACK[0x5780]) ^ (((v254 ^ (2 * (v254 & v265))) & STACK[0x56F0]) << STACK[0x5790]);
  v267 = STACK[0x5670];
  v268 = (((v256 ^ (2 * (v256 & v265))) & STACK[0x5760]) << STACK[0x57B0]) | (((v256 ^ (2 * (v256 & v265))) & STACK[0x5720]) >> STACK[0x57C0]);
  v269 = (((v253 ^ (2 * (v253 & v267))) & STACK[0x56F0]) << STACK[0x57B0]) ^ (((v253 ^ (2 * (v253 & v267))) & STACK[0x56E0]) >> STACK[0x5780]);
  v270 = (((v257 ^ (2 * (v257 & v267))) & STACK[0x56F0]) << STACK[0x57B0]) ^ (((v257 ^ (2 * (v257 & v267))) & STACK[0x56E0]) >> STACK[0x57C0]);
  if (v260)
  {
    v271 = v268;
  }

  else
  {
    v271 = v266;
  }

  LODWORD(STACK[0x4F08]) = v271;
  if (v260)
  {
    v272 = v269;
  }

  else
  {
    v272 = v268;
  }

  LODWORD(STACK[0x4ED8]) = v272;
  if (v260)
  {
    v273 = v270;
  }

  else
  {
    v273 = v269;
  }

  LODWORD(STACK[0x4EB8]) = v273;
  if (v260)
  {
    v274 = v266;
  }

  else
  {
    v274 = v270;
  }

  LODWORD(STACK[0x4ED0]) = v274;
  v275 = (LODWORD(STACK[0x4EC0]) ^ v258) - 449890787 - ((2 * (LODWORD(STACK[0x4EC0]) ^ v258)) & 0xCA5E6C3A);
  v276 = LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5730]) ^ v255;
  v277 = v255 ^ 0xE52F361D;
  v278 = v255 ^ 0xE52F361D ^ v259;
  v279 = v276 ^ v251;
  if (v260)
  {
    v280 = v276 ^ v251;
  }

  else
  {
    v280 = v255 ^ 0xE52F361D ^ v259;
  }

  LODWORD(STACK[0x4EC0]) = v280;
  if (v260)
  {
    v281 = STACK[0x4B48];
  }

  else
  {
    v281 = STACK[0x51B0];
  }

  if (v260)
  {
    v282 = STACK[0x4B40];
  }

  else
  {
    v282 = STACK[0x4B38];
  }

  if (v260)
  {
    v283 = STACK[0x51B0];
  }

  else
  {
    v283 = STACK[0x4B40];
  }

  if (v260)
  {
    v284 = STACK[0x4B38];
  }

  else
  {
    v284 = STACK[0x4B48];
  }

  v285 = v276 ^ v252;
  v286 = v277 ^ v275;
  if (v260)
  {
    v287 = v285;
  }

  else
  {
    v287 = v286;
  }

  LODWORD(STACK[0x4EB0]) = v287;
  v288 = STACK[0x5258];
  v289 = STACK[0x4F48];
  if ((STACK[0x5258] & 1) == 0)
  {
    v289 = STACK[0x4F50];
  }

  v290 = STACK[0x4F58];
  if ((v288 & 1) == 0)
  {
    v290 = STACK[0x4F10];
  }

  v291 = v276 ^ LODWORD(STACK[0x4EE0]);
  if ((v288 & 2) != 0)
  {
    v292 = v290;
  }

  else
  {
    v292 = v289;
  }

  v293 = v276 ^ v292;
  if (v260)
  {
    v294 = v291;
  }

  else
  {
    v294 = v293;
  }

  if ((v288 & 2) != 0)
  {
    v290 = v289;
  }

  v295 = STACK[0x5210];
  if ((STACK[0x5258] & 2) == 0)
  {
    v295 = STACK[0x5250];
  }

  v296 = v277 ^ ((v290 ^ v258) - 449890787 - ((2 * (v290 ^ v258)) & 0xCA5E6C3A));
  if (v260)
  {
    v297 = v278;
  }

  else
  {
    v297 = v285;
  }

  if (v260)
  {
    v298 = v286;
  }

  else
  {
    v298 = v279;
  }

  if (v260)
  {
    v299 = v296;
  }

  else
  {
    v299 = v291;
  }

  if (v260)
  {
    v300 = v293;
  }

  else
  {
    v300 = v255 ^ LODWORD(STACK[0x5740]) ^ v295;
  }

  if (v260)
  {
    v296 = v255 ^ LODWORD(STACK[0x5740]) ^ v295;
  }

  if ((v260 & 2) != 0)
  {
    v301 = v294;
  }

  else
  {
    v301 = v296;
  }

  if ((v260 & 2) != 0)
  {
    v302 = v300;
  }

  else
  {
    v296 = v294;
    v302 = v299;
  }

  if ((v260 & 2) != 0)
  {
    v303 = v282;
  }

  else
  {
    v299 = v300;
    v303 = v281;
  }

  if ((v260 & 2) != 0)
  {
    v304 = v281;
  }

  else
  {
    v304 = v282;
  }

  if ((v260 & 2) != 0)
  {
    v305 = v263;
  }

  else
  {
    v305 = v261;
  }

  if ((v260 & 2) != 0)
  {
    v306 = v261;
  }

  else
  {
    v306 = v263;
  }

  if ((v260 & 2) != 0)
  {
    v307 = v264;
  }

  else
  {
    v307 = v262;
  }

  if ((v260 & 2) != 0)
  {
    v308 = v262;
  }

  else
  {
    v308 = v264;
  }

  if ((v260 & 2) != 0)
  {
    v309 = v284;
  }

  else
  {
    v309 = v283;
  }

  if ((v260 & 2) != 0)
  {
    v310 = v283;
  }

  else
  {
    v310 = v284;
  }

  LODWORD(STACK[0x54A0]) = v255;
  v311 = v301 ^ v255;
  v312 = v302 ^ v255;
  v313 = v296 ^ v255;
  v314 = v299 ^ v255;
  v315 = STACK[0x4DC8];
  if (STACK[0x4DC8])
  {
    v316 = v312;
  }

  else
  {
    v316 = v313;
  }

  if (v315)
  {
    v312 = v311;
  }

  else
  {
    v313 = v314;
  }

  if (v315)
  {
    v311 = v314;
    v317 = v303;
  }

  else
  {
    v317 = v309;
  }

  if (v315)
  {
    v318 = v310;
  }

  else
  {
    v318 = v303;
  }

  if (v315)
  {
    v310 = v304;
    v304 = v309;
    v319 = v306;
  }

  else
  {
    v319 = v308;
  }

  if (v315)
  {
    v320 = v307;
  }

  else
  {
    v320 = v306;
  }

  LODWORD(STACK[0x5168]) = v305;
  if (v315)
  {
    v321 = v305;
  }

  else
  {
    v321 = v307;
  }

  if (v315)
  {
    v322 = v308;
  }

  else
  {
    v322 = v305;
  }

  v323 = v315;
  if ((v315 & 2) != 0)
  {
    v324 = v317;
  }

  else
  {
    v324 = v310;
  }

  if ((v315 & 2) != 0)
  {
    v325 = v310;
  }

  else
  {
    v325 = v317;
  }

  if ((v315 & 2) != 0)
  {
    v326 = v304;
  }

  else
  {
    v326 = v318;
  }

  if ((v315 & 2) != 0)
  {
    v304 = v318;
    v327 = v316;
  }

  else
  {
    v327 = v311;
  }

  if ((v315 & 2) != 0)
  {
    v328 = v312;
  }

  else
  {
    v311 = v316;
    v328 = v313;
  }

  if ((v315 & 2) != 0)
  {
    v329 = v313;
  }

  else
  {
    v329 = v312;
  }

  if ((v315 & 2) != 0)
  {
    v330 = v322;
  }

  else
  {
    v330 = v320;
  }

  if ((v219 & 0x18) != 0)
  {
    v327 = (v327 << v243) + (v327 >> (v219 & 0x18));
  }

  LODWORD(STACK[0x5320]) = v327;
  if ((v219 & 0x18) != 0)
  {
    v311 = (v311 << v243) ^ (v311 >> (v219 & 0x18));
  }

  LODWORD(STACK[0x52F8]) = v311;
  v331 = STACK[0x54B0];
  v332 = STACK[0x5338];
  if ((STACK[0x54B0] & 2) == 0)
  {
    v332 = STACK[0x5270];
  }

  v333 = STACK[0x5510];
  v334 = STACK[0x5510] & 0x18;
  if ((STACK[0x5510] & 0x18) != 0)
  {
    v332 = (v332 >> LODWORD(STACK[0x5220])) | (v332 << (STACK[0x5510] & 0x18));
  }

  LODWORD(STACK[0x52E0]) = v332;
  v335 = STACK[0x5198];
  if ((v241 & 2) != 0)
  {
    v335 = STACK[0x5178];
  }

  v336 = STACK[0x5218];
  if ((v241 & 2) == 0)
  {
    v336 = STACK[0x5180];
  }

  v337 = v219 & 0x18;
  if ((v219 & 0x18) != 0)
  {
    v335 = (v335 << v243) | (v335 >> (v219 & 0x18));
  }

  LODWORD(STACK[0x5198]) = v335;
  v338 = (v304 >> v337) ^ (v304 << v243);
  if ((v219 & 0x18) == 0)
  {
    v338 = v304;
  }

  LODWORD(STACK[0x5220]) = v338;
  v339 = (v324 >> v337) + (v324 << v334);
  if ((v219 & 0x18) == 0)
  {
    v339 = v324;
  }

  LODWORD(STACK[0x5218]) = v339;
  v340 = __ROR4__(v325, v337);
  if ((v219 & 0x18) == 0)
  {
    v340 = v325;
  }

  LODWORD(STACK[0x5250]) = v340;
  v341 = (v336 << v243) ^ (v336 >> v337);
  if ((v219 & 0x18) == 0)
  {
    v341 = v336;
  }

  LODWORD(STACK[0x5270]) = v341;
  v342 = v333 & 0x18;
  v343 = (v329 << (v333 & 0x18)) ^ (v329 >> v337);
  if ((v333 & 0x18) == 0)
  {
    v343 = v329;
  }

  LODWORD(STACK[0x5338]) = v343;
  v344 = (v328 >> v337) ^ (v328 << v342);
  if ((v333 & 0x18) == 0)
  {
    v344 = v328;
  }

  LODWORD(STACK[0x53F8]) = v344;
  v345 = STACK[0x50A0];
  v346 = STACK[0x5268];
  if (STACK[0x50A0])
  {
    v346 = STACK[0x5078];
  }

  v347 = STACK[0x5060];
  if ((v345 & 1) == 0)
  {
    v347 = STACK[0x5070];
  }

  v348 = STACK[0x50A0];
  if ((v345 & 2) != 0)
  {
    v349 = v347;
  }

  else
  {
    v349 = v346;
  }

  if ((STACK[0x50A0] & 2) == 0)
  {
    v346 = v347;
  }

  v350 = STACK[0x4FF0];
  if ((STACK[0x50A0] & 2) != 0)
  {
    v350 = STACK[0x4DD0];
  }

  v351 = STACK[0x4DB0];
  if (STACK[0x4DB0])
  {
    v352 = v349;
  }

  else
  {
    v352 = STACK[0x4DC0];
  }

  if (v351)
  {
    v349 = v350;
    v350 = v346;
    v353 = STACK[0x4DC0];
  }

  else
  {
    v353 = v346;
  }

  if ((v351 & 2) != 0)
  {
    v354 = v350;
  }

  else
  {
    v354 = v352;
  }

  if ((v351 & 2) == 0)
  {
    v352 = v350;
  }

  v355 = STACK[0x5010];
  if ((v351 & 2) != 0)
  {
    v355 = STACK[0x5040];
    v356 = v349;
  }

  else
  {
    v356 = v353;
  }

  if ((v351 & 2) != 0)
  {
    v349 = v353;
  }

  v357 = v219 & 0x18;
  v358 = v219;
  if ((v219 & 0x18) != 0)
  {
    v330 = (v330 << v342) + (v330 >> (v219 & 0x18));
  }

  LODWORD(STACK[0x5148]) = v330;
  v359 = (v352 << v243) | (v352 >> v357);
  if ((v219 & 0x18) == 0)
  {
    v359 = v352;
  }

  LODWORD(STACK[0x5178]) = v359;
  v360 = (v349 >> v357) | (v349 << v243);
  if ((v219 & 0x18) == 0)
  {
    v360 = v349;
  }

  LODWORD(STACK[0x5180]) = v360;
  v361 = STACK[0x55F0];
  v362 = STACK[0x55F0] & 0x18;
  v363 = (v326 << v362) | (v326 >> v357);
  if ((STACK[0x55F0] & 0x18) == 0)
  {
    v363 = v326;
  }

  LODWORD(STACK[0x5210]) = v363;
  if (v331)
  {
    v364 = STACK[0x5520];
  }

  else
  {
    v364 = STACK[0x55B0];
  }

  if (v331)
  {
    v365 = STACK[0x54C0];
  }

  else
  {
    v365 = STACK[0x55C0];
  }

  v366 = STACK[0x54E0];
  if ((v241 & 1) == 0)
  {
    v366 = STACK[0x4DB8];
  }

  v367 = STACK[0x54F0];
  if ((v241 & 1) == 0)
  {
    v367 = STACK[0x4DD8];
  }

  if ((v241 & 2) != 0)
  {
    v368 = v367;
  }

  else
  {
    v368 = v366;
  }

  if ((v241 & 2) != 0)
  {
    v369 = v366;
  }

  else
  {
    v369 = v367;
  }

  v370 = STACK[0x4DF0];
  if ((v241 & 2) == 0)
  {
    v370 = STACK[0x5280];
  }

  if ((v323 & 2) != 0)
  {
    v371 = v321;
  }

  else
  {
    v371 = v319;
  }

  if ((v323 & 2) != 0)
  {
    v372 = v319;
  }

  else
  {
    v372 = v321;
  }

  if ((v323 & 2) != 0)
  {
    v322 = v320;
  }

  v373 = v331;
  if ((v331 & 2) != 0)
  {
    v374 = STACK[0x4E08];
  }

  else
  {
    v374 = STACK[0x4E10];
  }

  v375 = STACK[0x4DF8];
  if ((v331 & 2) != 0)
  {
    v375 = STACK[0x4E00];
    v376 = v364;
  }

  else
  {
    v376 = v365;
  }

  v377 = v219 & 0x18;
  LODWORD(STACK[0x5540]) = v358;
  if (v377)
  {
    v370 = (v370 << v342) ^ (v370 >> v377);
  }

  v378 = __ROR4__(v369, v377);
  if (!v377)
  {
    v378 = v369;
  }

  v379 = (v368 >> v377) | (v368 << v362);
  if (v377)
  {
    v375 = (v375 << v362) + (v375 >> v377);
  }

  else
  {
    v379 = v368;
  }

  LODWORD(STACK[0x5280]) = v375;
  if (v377)
  {
    v380 = (v376 >> v377) + (v376 << v362);
  }

  else
  {
    v380 = v376;
  }

  LODWORD(STACK[0x5130]) = v380;
  v381 = (v371 >> v377) + (v371 << v362);
  v382 = (v322 >> v377) | (v322 << v362);
  if (v377)
  {
    v383 = v381;
  }

  else
  {
    v383 = v371;
  }

  LODWORD(STACK[0x5150]) = v383;
  if (v377)
  {
    v384 = v382;
  }

  else
  {
    v384 = v322;
  }

  LODWORD(STACK[0x5140]) = v384;
  v385 = STACK[0x5580];
  v386 = STACK[0x5308];
  if ((STACK[0x5580] & 2) != 0)
  {
    v386 = STACK[0x5318];
  }

  v387 = v358 & 0x18;
  v388 = __ROR4__(v386, v358 & 0x18);
  if ((v358 & 0x18) != 0)
  {
    v389 = v388;
  }

  else
  {
    v389 = v386;
  }

  LODWORD(STACK[0x5520]) = v361 & 0x18;
  v390 = (v374 >> v387) + (v374 << (v361 & 0x18));
  if ((v361 & 0x18) == 0)
  {
    v390 = v374;
  }

  LODWORD(STACK[0x51B0]) = v390;
  v391 = (v355 << (v333 & 0x18)) ^ (v355 >> v387);
  if ((v333 & 0x18) == 0)
  {
    v391 = v355;
  }

  LODWORD(STACK[0x5258]) = v391;
  v392 = STACK[0x5340];
  if ((v385 & 2) == 0)
  {
    v392 = STACK[0x5368];
  }

  v393 = STACK[0x52F0];
  if (STACK[0x5098])
  {
    v393 = STACK[0x5018];
  }

  v394 = STACK[0x5300];
  if ((STACK[0x5098] & 1) == 0)
  {
    v394 = STACK[0x5138];
  }

  v395 = (STACK[0x5098] & 2) == 0;
  v396 = STACK[0x5188];
  if ((STACK[0x5098] & 2) == 0)
  {
    v396 = STACK[0x5160];
  }

  LODWORD(STACK[0x53B0]) = v396;
  if (v395)
  {
    v397 = v393;
  }

  else
  {
    v397 = v394;
  }

  LODWORD(STACK[0x5340]) = v397;
  if (v395)
  {
    v393 = v394;
  }

  LODWORD(STACK[0x5368]) = v393;
  v398 = STACK[0x5170];
  if ((v241 & 2) != 0)
  {
    v398 = STACK[0x4E18];
  }

  v399 = v333 & 0x18;
  if ((v333 & 0x18) != 0)
  {
    v372 = (v372 << (v333 & 0x18)) ^ (v372 >> v387);
  }

  LODWORD(STACK[0x5138]) = v372;
  v400 = (v356 << v399) ^ (v356 >> v387);
  if ((v333 & 0x18) == 0)
  {
    v400 = v356;
  }

  LODWORD(STACK[0x5160]) = v400;
  v401 = __ROR4__(v354, v387);
  if ((v333 & 0x18) == 0)
  {
    v401 = v354;
  }

  LODWORD(STACK[0x5170]) = v401;
  v402 = (v398 >> v387) + (v398 << v399);
  if ((v333 & 0x18) == 0)
  {
    v402 = v398;
  }

  LODWORD(STACK[0x5188]) = v402;
  if ((v373 & 2) != 0)
  {
    v403 = v365;
  }

  else
  {
    v403 = v364;
  }

  v404 = v333 & 0x18;
  if ((v333 & 0x18) != 0)
  {
    v403 = (v403 << (v333 & 0x18)) + (v403 >> v387);
  }

  LODWORD(STACK[0x54B0]) = v403;
  v405 = STACK[0x5200];
  if ((STACK[0x53E8] & 2) != 0)
  {
    v405 = STACK[0x4EF8];
  }

  v406 = STACK[0x5630];
  v407 = STACK[0x4EE8];
  v408 = 2 * ((v407 ^ 0x48B9083C) & (LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x47A0])) ^ v407 & 0x8DD8168);
  v409 = v408 ^ 0x11320050;
  v410 = (v408 ^ 0x11320050) & 0x48B9083E ^ v408 & 2;
  v411 = 2 * ((LODWORD(STACK[0x4EF0]) ^ 0x674CAD06) & STACK[0x5670] ^ STACK[0x5640] & 0x2FF5A53A);
  v412 = v411 ^ 0x45A90A00;
  v413 = (v411 ^ 0x45A90A00) & 0x48B9083E ^ v411 & 2;
  v414 = STACK[0x5208];
  if ((STACK[0x53E8] & 2) == 0)
  {
    v414 = STACK[0x4F00];
  }

  v415 = (v409 + 1220085820 - 2 * v410) ^ v407;
  v416 = STACK[0x56F0];
  v417 = STACK[0x5790];
  v418 = STACK[0x5780];
  v419 = ((v415 & STACK[0x56F0]) << STACK[0x5790]) | ((v415 & STACK[0x56E0]) >> STACK[0x5780]);
  v420 = (v412 + 1220085820 - 2 * v413) ^ LODWORD(STACK[0x4EF0]);
  v421 = STACK[0x57C0];
  v422 = STACK[0x5760];
  v423 = STACK[0x57B0];
  v424 = ((v420 & STACK[0x56E0]) >> STACK[0x57C0]) + ((v420 & STACK[0x5760]) << STACK[0x57B0]);
  if (v348)
  {
    v425 = v424;
  }

  else
  {
    v425 = v419;
  }

  v426 = 701 * (LODWORD(STACK[0x5260]) ^ 0x7636);
  LODWORD(STACK[0x5098]) = v426;
  v427 = ((v426 + 1071036284) ^ v414) & STACK[0x5700] ^ v406 & 0x776FFE4B;
  v428 = (v405 ^ 0x42D1E02A) & STACK[0x5700] ^ v406 & 0xA68E816;
  if ((v260 & 2) != 0)
  {
    v429 = v298;
  }

  else
  {
    v429 = v297;
  }

  LODWORD(STACK[0x5510]) = v429;
  if ((v260 & 2) != 0)
  {
    v430 = v297;
  }

  else
  {
    v430 = v298;
  }

  LODWORD(STACK[0x54E0]) = v430;
  v431 = STACK[0x4EC0];
  v432 = STACK[0x4EB0];
  if ((v260 & 2) != 0)
  {
    v433 = STACK[0x4EC0];
  }

  else
  {
    v433 = STACK[0x4EB0];
  }

  LODWORD(STACK[0x53E8]) = v433;
  if ((v260 & 2) != 0)
  {
    v434 = v432;
  }

  else
  {
    v434 = v431;
  }

  LODWORD(STACK[0x54F0]) = v434;
  v435 = STACK[0x4F08];
  v436 = STACK[0x4EB8];
  if ((v260 & 2) != 0)
  {
    v437 = STACK[0x4EB8];
  }

  else
  {
    v437 = STACK[0x4F08];
  }

  LODWORD(STACK[0x52F0]) = v437;
  if ((v260 & 2) != 0)
  {
    v438 = v435;
  }

  else
  {
    v438 = v436;
  }

  LODWORD(STACK[0x5300]) = v438;
  v439 = STACK[0x4ED8];
  v440 = STACK[0x4ED0];
  if ((v260 & 2) != 0)
  {
    v441 = STACK[0x4ED0];
  }

  else
  {
    v441 = STACK[0x4ED8];
  }

  LODWORD(STACK[0x5318]) = v441;
  if ((v260 & 2) != 0)
  {
    v442 = v439;
  }

  else
  {
    v442 = v440;
  }

  LODWORD(STACK[0x5308]) = v442;
  v443 = (((2 * v427) ^ 0x2D8D800) + 1220085820 - ((2 * ((2 * v427) ^ 0x2D8D800)) & 0x91721078)) ^ v414;
  v444 = v443 & v416;
  v445 = v417;
  v446 = ((v443 & STACK[0x5720]) >> v421) ^ (v444 << v417);
  v447 = (((2 * v428) ^ 0xD0D008) + 1220085820 - ((2 * ((2 * v428) ^ 0xD0D008)) & 0x91721078)) ^ v405;
  v448 = ((v447 & STACK[0x5720]) >> v418) + ((v447 & v422) << v423);
  v449 = v348;
  if (v348)
  {
    v450 = ((v447 & STACK[0x5720]) >> v418) + ((v447 & v422) << v423);
  }

  else
  {
    v419 = v446;
    v450 = v424;
  }

  if ((v348 & 1) == 0)
  {
    v446 = v448;
  }

  v451 = STACK[0x50E0] & 0x18;
  LODWORD(STACK[0x56F0]) = v451;
  LODWORD(STACK[0x55C0]) = v404;
  if (v451)
  {
    v392 = (v392 << v404) | (v392 >> v451);
  }

  v452 = (LODWORD(STACK[0x50D8]) >> v451) | (LODWORD(STACK[0x50D8]) << v404);
  if (!v451)
  {
    v452 = STACK[0x50D8];
  }

  v453 = STACK[0x5660];
  v454 = (STACK[0x5600] & 0x2622060A ^ 0x503070A ^ (LODWORD(STACK[0x5660]) ^ 0x43F003Cu) & STACK[0x4BA0]) << v423;
  v455 = v452 ^ (v454 | (STACK[0x4B88] >> v418)) ^ v370;
  v456 = STACK[0x5620];
  v457 = STACK[0x5620] & 0x2A0C0000 ^ 0x220D0101 ^ STACK[0x4FD8] & (LODWORD(STACK[0x5650]) ^ 0x3A28002Fu);
  v458 = v389 ^ (STACK[0x4FD0] + (v457 >> v421)) ^ v379;
  v459 = STACK[0x4FD0] + (v457 >> v418);
  LODWORD(v457) = v454 | STACK[0x4B98];
  v460 = v392 ^ v459 ^ LODWORD(STACK[0x50F0]);
  LODWORD(STACK[0x54C0]) = -2097460731;
  v461 = STACK[0x5440];
  v462 = (v455 - 2097460732 - ((2 * v455) & 0x5F69408)) ^ LODWORD(STACK[0x5440]);
  v463 = ((LODWORD(STACK[0x5278]) ^ v457 ^ v378) - 2097460732 - ((2 * (LODWORD(STACK[0x5278]) ^ v457 ^ v378)) & 0x5F69408)) ^ LODWORD(STACK[0x5440]);
  v464 = (v458 - 2097460732 - ((2 * v458) & 0x5F69408)) ^ LODWORD(STACK[0x5440]);
  v465 = 545 * ((v458 + 4 - ((2 * v458) & 8)) ^ LODWORD(STACK[0x5440])) + 702505;
  v466 = v465 - 1552 * ((2767376 * v465) >> 32);
  v467 = (v460 - 2097460731 + ~((2 * v460) & 0x5F69408)) ^ LODWORD(STACK[0x5440]);
  v468 = 545 * ((v460 + 5 + ~((2 * v460) & 8)) ^ LODWORD(STACK[0x5440])) + 702505;
  v469 = STACK[0x5770];
  v470 = *(STACK[0x5770] + 4 * (545 * BYTE2(v462) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v462) + 702505)) >> 32)));
  LODWORD(STACK[0x5208]) = v464;
  v471 = *(v469 + 4 * (545 * HIBYTE(v463) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v463) + 702505)) >> 32))) ^ __ROR4__(v470, 8) ^ __ROR4__(*(v469 + 4 * (v468 - 1552 * ((2767376 * v468) >> 32))), 24);
  v472 = __ROR4__(*(v469 + 4 * (545 * BYTE1(v464) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v464) + 702505)) >> 32))), 16);
  v473 = STACK[0x56C0];
  v474 = STACK[0x5580];
  LODWORD(STACK[0x55B0]) = v387;
  v475 = (((v471 ^ v472) + v473 - v474) ^ v387) - v387 + 2 * (((v471 ^ v472) + v473 - v474) & v387);
  v476 = v422 & STACK[0x5158];
  STACK[0x56E0] = v476 << v423;
  v477 = LODWORD(STACK[0x5280]) ^ ((v476 << v423) + STACK[0x4FE0]) ^ v475;
  v478 = *(v469 + 4 * v466);
  v479 = (v477 - 2097460732 - ((2 * v477) & 0x5F69408)) ^ v461;
  LODWORD(STACK[0x5700]) = (545 * (((v477 + 18948 - ((2 * v477) & 0x9408)) ^ v461) >> 8) + 702505) % (((v478 << 8) & 0x600 ^ 0x610) + ((v478 << 8) & 0x600u));
  if ((v449 & 2) != 0)
  {
    v480 = v425;
  }

  else
  {
    v480 = v446;
  }

  LODWORD(STACK[0x5278]) = v480;
  if ((v449 & 2) == 0)
  {
    v446 = v425;
  }

  LODWORD(STACK[0x5280]) = v446;
  v481 = (LODWORD(STACK[0x5100]) + HIWORD(LODWORD(STACK[0x5100]))) ^ LODWORD(STACK[0x53D0]) ^ ((LODWORD(STACK[0x5100]) + HIWORD(LODWORD(STACK[0x5100]))) >> 8);
  if ((v449 & 2) != 0)
  {
    v482 = v450;
  }

  else
  {
    v482 = v419;
  }

  LODWORD(STACK[0x53D0]) = v482;
  if ((v449 & 2) != 0)
  {
    v450 = v419;
  }

  LODWORD(STACK[0x5268]) = v450;
  v483 = -269363375 * (((-514357199 * v481) ^ ((-514357199 * v481) >> 16)) - LODWORD(STACK[0x50E8]) - (((-514357199 * v481) ^ ((-514357199 * v481) >> 16)) >> 8));
  LODWORD(STACK[0x5450]) = ((v483 + HIWORD(v483)) ^ ((v483 + HIWORD(v483)) >> 8)) - LODWORD(STACK[0x5450]);
  v484 = *(v469 + 4 * (545 * v462 + 702505 - 1552 * ((2767376 * (545 * v462 + 702505)) >> 32)));
  v485 = *(STACK[0x57A0] + (((v484 >> 21) & 0xF8 | (v484 >> 29)) ^ 0x3D) + 133986);
  LOBYTE(v485) = (((v485 >> 4) ^ ((v485 ^ 0x6F) >> 1) ^ 0x1B) >> (((LODWORD(STACK[0x50F8]) | 4) - (STACK[0x50F8] & 3)) & 4 ^ 6)) ^ v485 ^ 0x6F;
  v486 = LODWORD(STACK[0x5108]) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v463) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v463) + 702505)) >> 32))), 16) ^ *(v469 + 4 * (545 * HIBYTE(v464) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v464) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v467) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v467) + 702505)) >> 32))), 8) ^ (((((v485 ^ 0xB2) - 77) ^ ((v485 ^ 0x76) + 119) ^ ((v485 ^ 0xAE) - 81)) - 7) | (v484 << 8));
  v487 = v453;
  v488 = v453 ^ 0x4EA5C867;
  v489 = STACK[0x4FE8];
  v490 = STACK[0x5650];
  v491 = v445;
  v492 = v461 ^ (((v456 & 0x8C80A80 ^ 0x25E90F81 ^ v489 & v488) << v445) | ((v456 & 0x408A0088 ^ 0x4A8208C ^ v489 & (LODWORD(STACK[0x5650]) ^ 0x444F2162u)) >> STACK[0x57C0])) ^ (v486 - 2097460732 - ((2 * v486) & 0x5F69408));
  LOBYTE(v485) = ((55 * HIBYTE(v492) + 66) ^ 0xBE) & (2 * ((55 * HIBYTE(v492) + 66) & 0xBE)) ^ (55 * HIBYTE(v492) + 66) & 0xBE;
  v493 = ((2 * ((55 * HIBYTE(v492) + 66) ^ 0xEA)) ^ 0xA8) & ((55 * HIBYTE(v492) + 66) ^ 0xEA) ^ (2 * ((55 * HIBYTE(v492) + 66) ^ 0xEA)) & 0x54;
  LOBYTE(v488) = (55 * HIBYTE(v492) + 66) ^ (2 * (((4 * (v493 ^ 0x54)) & 0x54 ^ 0x44 ^ ((4 * (v493 ^ 0x54)) ^ 0x40) & (v493 ^ 0x54)) & (16 * (v493 & (4 * v485) ^ v485)) ^ v493 & (4 * v485) ^ v485));
  v494 = ((v488 ^ 0xD5C3F22477F60F00) + 0x2A3C0DDB8809F0B1) ^ ((v488 ^ 0x4AD2142F6A1A3D7DLL) - 0x4AD2142F6A1A3D32) ^ ((v488 ^ 0x9F11E60B1DEC328FLL) + 0x60EE19F4E213CD40);
  LOBYTE(v488) = (((v488 ^ 0x50) + 112) ^ ((v488 ^ 0xED) - 45) ^ ((v488 ^ 0x77) + 73)) + (((v488 ^ 0x1A) + 94) ^ ((v488 ^ 0xC7) - 127) ^ ((v488 ^ 0x89) - 49));
  LOBYTE(v488) = (v488 + 55) ^ (10 - v488) ^ (((v488 + 55) ^ 0x1B) - 90) ^ (((v488 + 55) ^ 0x30) - 113) ^ (((v488 + 55) ^ 0x95) + 44) ^ *(v494 + STACK[0x57A0] + 47677);
  LOBYTE(v494) = ((v488 ^ 0x60) + 52) ^ ((v488 ^ 0xC1) - 109) ^ ((v488 ^ 0xCB) - 103);
  v495 = v463;
  v496 = STACK[0x57A0] + 132728 + (((BYTE1(v462) ^ 0x475A19A0E4B8880FLL) - 0x475A19A0E4B888B2) ^ ((BYTE1(v462) ^ 0x7CC420DCF8F948CCLL) - 0x7CC420DCF8F94871) ^ ((BYTE1(v462) ^ 0x3B9E397C1C41C0C3) - 0x3B9E397C1C41C07ELL));
  v497 = (((BYTE1(v462) ^ 0xF4) + 42) ^ ((BYTE1(v462) ^ 0x3B) - 25) ^ ((BYTE1(v462) ^ 0xD6) + 12)) + (((*(v496 + 3756) ^ 0xEA) + 22) ^ ((*(v496 + 3756) ^ 0xCF) + 49) ^ ((*(v496 + 3756) ^ 0x98) + 104)) - 105;
  LOBYTE(v496) = v497 & 0xF6 ^ 0x90;
  v498 = v497 ^ (2 * ((v497 ^ 0x54) & (2 * ((v497 ^ 0x54) & (2 * ((v497 ^ 0x54) & (2 * ((v497 ^ 0x54) & (2 * ((v497 ^ 0x54) & (2 * v496) ^ v496)) ^ v496)) ^ v496)) ^ v496)) ^ v496));
  v499 = 545 * (LODWORD(STACK[0x4960]) - 85 * (((v498 ^ 0x68) + 58) ^ ((v498 ^ 0x36) + 104) ^ ((v498 ^ 0x3C) + 110))) + 702505;
  HIDWORD(v500) = *(v469 + 4 * (545 * BYTE2(v463) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v463) + 702505)) >> 32)));
  LODWORD(v500) = HIDWORD(v500);
  v501 = LODWORD(STACK[0x5520]) - LODWORD(STACK[0x55C0]) + (LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x5680]) ^ (v500 >> 8) ^ __ROR4__(v478, 24) ^ __ROR4__(*(v469 + 4 * (v499 - 1552 * ((2767376 * v499) >> 32))), 16) ^ *(v469 + 4 * (545 * HIBYTE(v467) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v467) + 702505)) >> 32))));
  v502 = STACK[0x56E0] | (STACK[0x5008] >> STACK[0x57C0]);
  v503 = (LODWORD(STACK[0x54B0]) ^ v502 ^ v501) - 2097460732 - ((2 * (LODWORD(STACK[0x54B0]) ^ v502 ^ v501)) & 0x5F69408);
  LODWORD(STACK[0x54B0]) = 545 * v479 + 702505 - 1552 * ((2767376 * (545 * v479 + 702505)) >> 32);
  v504 = v487;
  v505 = v456 & 0x4AC04840 ^ 0x20E06960 ^ v489 & (v487 ^ LODWORD(STACK[0x4798]));
  v506 = v491;
  v507 = STACK[0x5780];
  LODWORD(v505) = (v505 << v491) + ((v456 & STACK[0x4790] ^ 0x80367 ^ v489 & (v490 ^ 0xCAEF8289)) >> STACK[0x5780]);
  v508 = 545 * BYTE2(LODWORD(STACK[0x5208])) + 702505;
  v509 = *(v469 + 4 * (545 * HIBYTE(v462) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v462) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v467) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v467) + 702505)) >> 32))), 16) ^ __ROR4__(*(v469 + 4 * (545 * v495 + 702505 - 1552 * ((2767376 * (545 * v495 + 702505)) >> 32))), 24) ^ __ROR4__(*(v469 + 4 * (v508 - 1552 * ((2767376 * v508) >> 32))), 8);
  v510 = -1029468333 * LODWORD(STACK[0x5450]) + ((-1029468333 * LODWORD(STACK[0x5450])) >> 16);
  v511 = (v510 ^ (v510 >> 8)) + LODWORD(STACK[0x50B0]);
  LODWORD(STACK[0x56E0]) = v511;
  v512 = LODWORD(STACK[0x55B0]) - v474 - LODWORD(STACK[0x56F0]) + v511 + v509;
  v513 = v461 ^ v505 ^ ((v512 ^ LODWORD(STACK[0x5130])) - 2097460732 - ((2 * (v512 ^ LODWORD(STACK[0x5130]))) & 0x5F69408));
  v514 = v503 ^ v461;
  LOBYTE(v503) = *(STACK[0x57A0] + ((((v503 ^ v461) >> 5) & 0xF8 | ((v503 ^ v461) >> 13)) ^ 0x23F3));
  LOBYTE(v496) = *(STACK[0x57A0] + (((v514 >> 5) | (8 * (v514 & 0x1F))) ^ 0xDA) + 163862);
  LOBYTE(v499) = ((v496 ^ 0x29) - 123) ^ (v496 - 82) ^ ((v496 ^ 0x53) - 1);
  v515 = ((((v503 ^ 0xE5) - 90) ^ ((v503 ^ 0x94) - 43) ^ ((v503 ^ 0xF2) - 77)) - 55);
  LODWORD(STACK[0x5450]) = (545 * (v515 | ((v515 < 0x29) << 8)) + 680160) % 0x610;
  LODWORD(STACK[0x5200]) = 545 * BYTE1(v492) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v492) + 702505)) >> 32);
  LODWORD(v496) = 545 * BYTE1(v513) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v513) + 702505)) >> 32);
  LODWORD(STACK[0x51C0]) = (545 * ((v499 - 16) | (((v499 - 16) < 0x64u) << 8)) + 648005) % 0x610u;
  LODWORD(STACK[0x5208]) = 545 * BYTE2(v492) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v492) + 702505)) >> 32);
  v516 = 545 * HIBYTE(v479) + 702505;
  v517 = v504;
  v518 = v456 & 0x90008 ^ 0x8D808C ^ STACK[0x5038] & (v504 ^ 0x1810508);
  LOBYTE(v515) = v507;
  LOBYTE(v511) = v506;
  v519 = (v518 << v506) | (STACK[0x5030] >> v507);
  LODWORD(v507) = LODWORD(STACK[0x5148]) ^ v519 ^ __ROR4__(*(v469 + 4 * (545 * v513 + 702505 - 1552 * ((2767376 * (545 * v513 + 702505)) >> 32))), 24) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5700])), 16) ^ *(v469 + 4 * (545 * (v494 - 71) + 702505 - 1552 * ((2767376 * (545 * (v494 - 71) + 702505)) >> 32)));
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (545 * BYTE2(v514) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v514) + 702505)) >> 32))), 8);
  v520 = (v507 ^ v500) - 2097460732 - ((2 * (v507 ^ v500)) & 0x5F69408);
  v521 = v490;
  v522 = STACK[0x5600];
  LODWORD(v507) = (2 * ((((v519 & 0x4000400 ^ 0x4000400) + (v519 & 0x4000400)) ^ 0x4F6491B0) & (LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x4788])) ^ STACK[0x5640] & 0x4FE01134)) ^ 0x8104868C;
  LODWORD(v507) = LODWORD(STACK[0x5138]) ^ (((v507 & STACK[0x5760]) << STACK[0x57B0]) | ((v507 & STACK[0x5720]) >> STACK[0x57C0])) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v479) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v479) + 702505)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * (545 * v492 + 702505 - 1552 * ((2767376 * (545 * v492 + 702505)) >> 32))), 24) ^ (*(v469 + 4 * v496) << 16) ^ HIWORD(*(v469 + 4 * v496)) ^ *(v469 + 4 * (545 * HIBYTE(v514) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v514) + 702505)) >> 32)));
  v523 = LODWORD(STACK[0x5140]) ^ (((v522 & 0x1010008 ^ 0x8580008C ^ (v517 ^ 0x848D8508) & STACK[0x51A0]) << v511) | ((v522 & 0x9000808 ^ 0x81848C88 ^ (v490 ^ 0x89018D04) & STACK[0x51A0]) >> v515)) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5200])), 16) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x51C0])), 24) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v513) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v513) + 702505)) >> 32))), 8) ^ *(v469 + 4 * (v516 - 1552 * ((2767376 * v516) >> 32)));
  v524 = v523 - 2097460732 - ((2 * v523) & 0x5F69408);
  v525 = STACK[0x5440];
  v526 = v520 ^ LODWORD(STACK[0x5440]);
  LODWORD(v494) = *(v469 + 4 * (545 * (v520 ^ v525) + 702505 - 1552 * ((2767376 * (545 * (v520 ^ v525) + 702505)) >> 32)));
  v527 = LODWORD(STACK[0x5150]) ^ (STACK[0x5048] | ((STACK[0x5600] & 0x9000008 ^ 0x504008C ^ (v521 ^ 0xD810100u) & STACK[0x51A0]) >> STACK[0x57C0])) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x54B0])), 24) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5450])), 16) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5208])), 8) ^ *(v469 + 4 * (545 * HIBYTE(v513) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v513) + 702505)) >> 32)));
  v528 = ((v494 >> 21) & 0xF8 | (v494 >> 29)) - 1037924984 - 2 * (((v494 >> 21) & 0x88 | (v494 >> 29) & 0x89) ^ (v494 >> 29) & 1);
  v529 = (v527 - 2097460732 - ((2 * v527) & 0x5F69408u)) ^ LODWORD(STACK[0x5440]);
  v530 = 545 * (v529 >> (((v518 & 8 ^ 0x38) + (v518 & 8)) & 0xDF)) + 702505;
  LODWORD(STACK[0x5700]) = v530 - 1552 * ((2767376 * v530) >> 32);
  v531 = v524 ^ v525;
  v532 = (((v531 >> 11) & 0xE0 | (v531 >> 19) & 0x1F) ^ 0xFD) + STACK[0x57A0];
  v533 = (*(v532 + 42048) >> 7) | (2 * *(v532 + 42048));
  v534 = (v507 - 2097460732 - ((2 * v507) & 0x5F69408)) ^ v525;
  LODWORD(v532) = 545 * (((v507 + 18948 - ((2 * v507) & 0x9408)) ^ v525) >> 8) + 702505;
  LODWORD(STACK[0x54B0]) = v532 - 1552 * ((2767376 * v532) >> 32);
  LODWORD(STACK[0x5208]) = 545 * BYTE2(v526) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v526) + 702505)) >> 32);
  LODWORD(STACK[0x5200]) = 545 * v531 + 702505 - 1552 * ((2767376 * (545 * v531 + 702505)) >> 32);
  LODWORD(STACK[0x5158]) = v528;
  LOBYTE(v505) = *(STACK[0x57A0] + (v528 ^ 0xC22285EC) + 121349);
  LOBYTE(v505) = (((v505 ^ 0x86) + 49) ^ (73 - v505) ^ ((v505 ^ 0xC7) + 114)) - 78;
  LOBYTE(v528) = v505 & 0x9D ^ 0x3A;
  LODWORD(v494) = ((v505 ^ (2 * ((v505 ^ 0x28) & (2 * ((v505 ^ 0x28) & (2 * ((v505 ^ 0x28) & (2 * ((v505 ^ 0x28) & (2 * (((2 * (((2 * v505) & 0x52 | 0x29) & v505)) ^ 0x34) & v505 ^ v528)) ^ v528)) ^ v528)) ^ v528)) ^ v528))) ^ 0x4B91816) & ((v494 << 8) ^ 0x9FFBDFFF) | (v494 << 8) & 0xFB46E700;
  LODWORD(v505) = 545 * ((STACK[0x5168] & 0x509 ^ 0x509) + (STACK[0x5168] & 0x509) + BYTE1(v529));
  LOBYTE(v528) = *(STACK[0x57A0] + ((55 * v529) ^ 0x2E2DLL));
  v535 = ((((v528 ^ 0x15) - 1) ^ ((v528 ^ 0xDF) + 53) ^ ((v528 ^ 0xA9) + 67)) - 49);
  v536 = 545 * (LODWORD(STACK[0x47B0]) + 117 * (((v533 ^ 0xC8) - 12) ^ ((v533 ^ 0x3E) + 6) ^ ((v533 ^ 0x77) + 77))) + 702505;
  v537 = 545 * BYTE2(v529) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v529) + 702505)) >> 32);
  LODWORD(v529) = 545 * HIBYTE(v526) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v526) + 702505)) >> 32);
  LODWORD(v532) = 545 * BYTE1(v531) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v531) + 702505)) >> 32);
  v538 = 545 * HIBYTE(v531) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v531) + 702505)) >> 32);
  v539 = 545 * BYTE2(v534) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v534) + 702505)) >> 32);
  v540 = 545 * HIBYTE(v534) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v534) + 702505)) >> 32);
  v541 = v521;
  v542 = LODWORD(STACK[0x5160]) ^ ((STACK[0x5068] & LODWORD(STACK[0x5760])) << STACK[0x57B0]) ^ STACK[0x5028] ^ __ROR4__(*(v469 + 4 * v537), 8) ^ __ROR4__(*(v469 + 4 * (545 * v534 + 702505 - 1552 * ((2767376 * (545 * v534 + 702505)) >> 32))), 24) ^ *(v469 + 4 * v538);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (545 * BYTE1(v526) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v526) + 702505)) >> 32))), 16);
  v543 = (v542 ^ v500) - 2097460732 - ((2 * (v542 ^ v500)) & 0x5F69408);
  v544 = STACK[0x5790];
  v545 = STACK[0x5780];
  v546 = ((v522 & 0x44444084 ^ 0x62200202 ^ (LODWORD(STACK[0x5660]) ^ 0x4208460u) & STACK[0x5058]) << STACK[0x5790]) ^ 0x4B9188B ^ ((v522 & 0xC440C084 ^ 0x60208022 ^ (v521 ^ 0xE484C040) & STACK[0x5058]) >> STACK[0x5780]) ^ LODWORD(STACK[0x5178]) ^ __ROR4__(*(v469 + 4 * (v505 - 1552 * ((2767376 * v505) >> 32))), 16) ^ __ROR4__(*(v469 + 4 * (v536 - 1552 * ((2767376 * v536) >> 32))), 8) ^ *(v469 + 4 * v540) ^ v494;
  v547 = v546 - 2097460732 - ((2 * v546) & 0x5F69408);
  v548 = STACK[0x5720];
  v549 = STACK[0x57C0];
  LOBYTE(v492) = STACK[0x57B0];
  v550 = v541;
  LODWORD(v494) = LODWORD(STACK[0x5180]) ^ ((STACK[0x5050] << v492) | ((STACK[0x5720] & LODWORD(STACK[0x5058])) >> STACK[0x57C0])) ^ *(v469 + 4 * v529) ^ __ROR4__(*(v469 + 4 * ((545 * (v535 | ((v535 < 0x65) << 8)) + 647460) % 0x610)), 24) ^ __ROR4__(*(v469 + 4 * v532), 16);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * v539), 8);
  LODWORD(v494) = (v494 ^ v500) - 2097460732 - ((2 * (v494 ^ v500)) & 0x5F69408);
  v551 = ((STACK[0x5620] & 0x8000C4 ^ 0x28022C2 ^ STACK[0x5068] & (LODWORD(STACK[0x5660]) ^ 0x60C4E420u)) << STACK[0x5790]) | ((STACK[0x5620] & 0x8440C084 ^ 0x244242A2 ^ STACK[0x5068] & (v541 ^ 0xA4A6C240)) >> STACK[0x5780]);
  LODWORD(v505) = *(v469 + 4 * LODWORD(STACK[0x5700]));
  v552 = LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x50A8]);
  LODWORD(STACK[0x5450]) = v552;
  LODWORD(v507) = v552 ^ v551 ^ LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x5170]) ^ v505 ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5208])), 8) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5200])), 24);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * LODWORD(STACK[0x54B0])), 16);
  LODWORD(v532) = v543 ^ v525;
  v553 = 545 * ((v543 ^ v525) >> 24) + 702505 - 1552 * ((2767376 * (545 * ((v543 ^ v525) >> 24) + 702505)) >> 32);
  LODWORD(v507) = ((v507 ^ v500) - 2097460732 - ((2 * (v507 ^ v500)) & 0x5F69408)) ^ v525;
  v554 = *(v469 + 4 * (545 * v507 + 702505 - 1552 * ((2767376 * (545 * v507 + 702505)) >> 32)));
  v555 = v547 ^ v525;
  v556 = v494 ^ v525;
  LODWORD(v494) = 545 * ((v494 ^ v525) >> 8) + 702505;
  v557 = LODWORD(STACK[0x5188]) ^ ((STACK[0x51C8] << v544) + (((v550 ^ 0x10E101EAu) & STACK[0x5228]) >> v545)) ^ *(v469 + 4 * v553) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v507) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v507) + 702505)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * (545 * (v547 ^ v525) + 702505 - 1552 * ((2767376 * (545 * (v547 ^ v525) + 702505)) >> 32))), 24);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (v494 - 1552 * ((2767376 * v494) >> 32))), 16);
  v558 = (v557 ^ v500) - 2097460732 - ((2 * (v557 ^ v500)) & 0x5F69408);
  LODWORD(v529) = 545 * ((v547 ^ v525) >> 16) + 702505;
  LOBYTE(v550) = v549;
  LODWORD(v494) = v525 ^ (STACK[0x51C8] << v492) ^ ((v548 & STACK[0x5228]) >> v549) ^ LODWORD(STACK[0x5190]) ^ ((-85 * (*(STACK[0x57A0] + ((v554 >> 24) ^ 0xD3) + 165415) ^ 0x1B ^ (*(STACK[0x57A0] + ((v554 >> 24) ^ 0xD3) + 165415) >> 1) & 0x7B)) | (v554 << 8)) ^ *(v469 + 4 * (545 * HIBYTE(v556) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v556) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (v529 - 1552 * ((2767376 * v529) >> 32))), 8);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (545 * BYTE1(v532) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v532) + 702505)) >> 32))), 16);
  LODWORD(v554) = v494 ^ v500;
  v559 = (((v494 ^ v500) >> 8) ^ 0xC8u) + STACK[0x57A0];
  LOBYTE(v559) = (((*(v559 + 38464) ^ 0x57) - 87) ^ ((*(v559 + 38464) ^ 0x48) - 72) ^ ((*(v559 + 38464) ^ 0xA2) + 94)) + 12;
  LOBYTE(v505) = v559 & 0xE ^ 0x89;
  LOBYTE(v559) = v559 ^ (2 * ((v559 ^ 0x7C) & (2 * ((v559 ^ 0x7C) & (2 * ((v559 ^ 0x7C) & (2 * ((v559 ^ 0x7C) & (2 * ((v559 ^ 0x7C) & (2 * (v505 ^ v559 & 0x32)) ^ v505)) ^ v505)) ^ v505)) ^ v505)) ^ v505));
  LOBYTE(v559) = ((v559 ^ 0xA2) + 60) ^ ((v559 ^ 1) - 103) ^ ((v559 ^ 0xC3) + 91);
  LOBYTE(v505) = 47 * (-12 - v559) - 38 * v559;
  LODWORD(v559) = v558 ^ v525;
  LODWORD(v505) = 545 * (v505 + 54);
  LODWORD(STACK[0x5228]) = (545 * (v558 ^ v525) + 702505) % (((2006 - v505) | (v505 + 702505)) & 0x610u);
  v560 = STACK[0x5620];
  LODWORD(STACK[0x5700]) = STACK[0x5620] & 0x4040404 ^ 0x6020202;
  v561 = 545 * BYTE2(v556) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v556) + 702505)) >> 32);
  LODWORD(STACK[0x5178]) = v554;
  LODWORD(v549) = v560 & 0xB2B2B2B2 ^ 0x79F94BDB;
  v562 = STACK[0x5660];
  v563 = v560 & 0x90B02232 ^ 0x11F94313 ^ v549 & (LODWORD(STACK[0x5660]) ^ 0xF2A1A0C1);
  v564 = LODWORD(STACK[0x51A8]) ^ ((v563 << v492) + ((v549 & v548) >> v550)) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v507) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v507) + 702505)) >> 32))), 16) ^ *(v469 + 4 * (545 * HIBYTE(v555) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v555) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * v556 + 702505 - 1552 * ((2767376 * (545 * v556 + 702505)) >> 32))), 24);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (545 * BYTE2(v532) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v532) + 702505)) >> 32))), 8);
  v565 = ((v564 ^ v500) - 2097460732 - ((2 * (v564 ^ v500)) & 0x5F69408)) ^ v525;
  v566 = 545 * (((v564 ^ v500) + 4 - ((2 * (v564 ^ v500)) & 8)) ^ v525) + 702505;
  LODWORD(v496) = *(v469 + 4 * (v566 - 1552 * ((2767376 * v566) >> 32)));
  v567 = *(v469 + 4 * (545 * BYTE1(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v559) + 702505)) >> 32)));
  LODWORD(STACK[0x51A0]) = v567;
  v568 = ((v567 & 0x37 ^ 0x37) + (v567 & 0x37)) * BYTE3(v496);
  LODWORD(STACK[0x5200]) = 545 * HIBYTE(v565) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v565) + 702505)) >> 32);
  LODWORD(v518) = *(v469 + 4 * ((545 * (((v554 ^ 0x604B1142) + 1116998120) ^ ((v554 ^ 0x72D0A417) + 1343208627) ^ ((v554 ^ 0x129BB551u) + 809807349)) - 1021884601) % 0x610));
  LODWORD(STACK[0x5170]) = v518;
  LODWORD(STACK[0x51C0]) = (BYTE3(v518) ^ 0x3CAFED70) & ((v518 << 8) ^ 0xFFFFEFFF) | (v518 << 8) & STACK[0x1AB4];
  LODWORD(STACK[0x51A8]) = 545 * BYTE2(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v559) + 702505)) >> 32);
  LODWORD(v529) = STACK[0x5650];
  v569 = STACK[0x5780];
  v570 = STACK[0x5790];
  LODWORD(v507) = LODWORD(STACK[0x5198]) ^ (v563 << STACK[0x5790]) ^ ((v560 & 0x222080B0 ^ 0x69694999 ^ v549 & (LODWORD(STACK[0x5650]) ^ 0x7B88C853)) >> STACK[0x5780]) ^ __ROR4__(*(v469 + 4 * v561), 8) ^ *(v469 + 4 * (545 * BYTE3(v507) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v507) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v555) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v555) + 702505)) >> 32))), 16);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (545 * v532 + 702505 - 1552 * ((2767376 * (545 * v532 + 702505)) >> 32))), 24);
  v571 = ((v507 ^ v500) - 2097460732 - ((2 * (v507 ^ v500)) & 0x5F69408)) ^ v525;
  LODWORD(v532) = 545 * ((((v507 ^ v500) + 18948 - ((2 * (v507 ^ v500)) & 0x9408)) ^ v525) >> 8) + 702505;
  LODWORD(STACK[0x5198]) = v532 - 1552 * ((2767376 * v532) >> 32);
  LODWORD(v507) = 545 * (((v507 ^ v500) + 4 - ((2 * (v507 ^ v500)) & 8)) ^ v525) + 702505;
  v572 = 545 * BYTE2(v565) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v565) + 702505)) >> 32);
  LOBYTE(v544) = *(STACK[0x57A0] + (((v554 >> 19) & 0xE0 ^ 0x71B262BF) & ((v554 >> 27) ^ 0x71B262F5) ^ 0x71B2620E) + 69568);
  LODWORD(STACK[0x54B0]) = 41;
  LOBYTE(v544) = 99 * (((v544 ^ 0x89) + 119) ^ ((v544 ^ 0xE2) + 30) ^ ((v544 ^ 0xD6) + 42)) + 41;
  LOBYTE(v549) = v544 & 0xBE ^ 0xE8;
  LOBYTE(v544) = v544 ^ (2 * ((v544 ^ 0x6C) & (2 * ((v544 ^ 0x6C) & (2 * ((v544 ^ 0x6C) & (2 * ((v544 ^ 0x6C) & (2 * ((v544 ^ 0x6C) & (2 * v549) ^ v549)) ^ v549)) ^ v549)) ^ v549)) ^ v549));
  LODWORD(v544) = 545 * (LODWORD(STACK[0x4A18]) + 117 * (((v544 ^ 0x1B) + 2) ^ ((v544 ^ 0x95) - 112) ^ ((v544 ^ 0x26) + 61))) + 702505;
  LODWORD(STACK[0x5180]) = v544 - 1552 * ((2767376 * v544) >> 32);
  LODWORD(v563) = 545 * HIBYTE(v571) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v571) + 702505)) >> 32);
  v573 = 545 * BYTE1(v565) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v565) + 702505)) >> 32);
  LODWORD(STACK[0x5190]) = -321495897 * ((STACK[0x5540] & 0x10 ^ 0x2D411BF7) + (STACK[0x5540] & 0x10)) * (BYTE2(v571) + 1289) % 0x610;
  LODWORD(STACK[0x5188]) = v505 + 702505 - 1552 * ((2767376 * (v505 + 702505)) >> 32);
  v574 = 545 * BYTE3(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v559) + 702505)) >> 32);
  LOBYTE(v544) = *(STACK[0x57A0] + (v568 ^ 0xF0u) + 156594);
  LOBYTE(v525) = ((73 - (v544 & 0x77)) ^ ((v544 | 0x88) + 63) ^ ((v544 & 0x77 ^ 0x42) - 11)) + (((v544 & 0x77 ^ 0x5C) - 109) ^ ((v544 | 0x88) + 71) ^ ((v544 & 0x77 ^ 0x96) + 89)) + 9;
  v575 = v525 & 0xD4 ^ 0x3B;
  v576 = ((v544 ^ ((v568 ^ 0xF0) - 2 * ((v568 ^ 0xF0) & 0x4A ^ v568 & 2) - 56) ^ v525 ^ (2 * ((v525 ^ 0x66) & (2 * ((v525 ^ 0x66) & (2 * ((v525 ^ 0x66) & (2 * ((v525 ^ 0x66) & (2 * ((v525 ^ 0x66) & (2 * ((v525 ^ 0x66) & 0x32 ^ v575)) ^ v575)) ^ v575)) ^ v575)) ^ v575)) ^ v575)) ^ 0x5E) - 13) | (v496 << 8);
  LODWORD(v559) = v560 & 0x7C7C7C7C ^ 0x5A162636;
  v577 = v560 & 0x2458202C ^ 0x122224 ^ v559 & (v562 ^ 0x4606645A);
  LODWORD(STACK[0x51C8]) = v559;
  v578 = STACK[0x57C0];
  v579 = v577 << v570;
  LODWORD(v554) = LODWORD(STACK[0x5230]) ^ ((v577 << v570) | ((v560 & 0x185C6870 ^ 0x18162030 ^ v559 & (v529 ^ 0x83A681E)) >> STACK[0x57C0])) ^ *(v469 + 4 * v563) ^ __ROR4__(*(v469 + 4 * (545 * (BYTE2(v554) ^ 0xFB) + 702505 - 1552 * ((2767376 * (545 * (BYTE2(v554) ^ 0xFBu) + 702505)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5228])), 24);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * v573), 16);
  v580 = (v554 ^ v500) - 2097460732 - ((2 * (v554 ^ v500)) & 0x5F69408);
  v581 = STACK[0x5600];
  LODWORD(v554) = STACK[0x5600] & 0x7C7C7C7C ^ 0x3E666636;
  LODWORD(STACK[0x5208]) = v554;
  v582 = v581;
  v583 = v581 & 0x5C706C64 ^ 0x1C626424 ^ (v529 ^ 0x4C166C0A) & v554;
  LODWORD(v505) = STACK[0x5760];
  v584 = STACK[0x5760] & v554;
  v585 = STACK[0x57B0];
  LODWORD(v507) = LODWORD(STACK[0x51D8]) ^ (v584 << STACK[0x57B0]) ^ ((STACK[0x5720] & v554) >> v569) ^ __ROR4__(STACK[0x51A0], 16) ^ __ROR4__(*(v469 + 4 * (v507 - 1552 * ((2767376 * v507) >> 32))), 24) ^ __ROR4__(*(v469 + 4 * v572), 8) ^ *(v469 + 4 * LODWORD(STACK[0x5180]));
  v586 = LODWORD(STACK[0x5450]) ^ ((v584 << v570) + ((v583 >> v578) & 0x7FFE | ((((v583 >> v578 >> 1) & 0xBFFFC000 | ((v583 >> v578) << 31)) >> 14) << 15) | (((v583 >> v578 >> 1) | ((v583 >> v578) << 31)) >> 31))) ^ LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x5240]) ^ *(v469 + 4 * LODWORD(STACK[0x5200])) ^ LODWORD(STACK[0x51C0]) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x51A8])), 8);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5198])), 16);
  v587 = LODWORD(STACK[0x51B0]) - 2097460732 - ((2 * LODWORD(STACK[0x51B0])) & 0x5F69408);
  LODWORD(v532) = (v586 ^ v500 ^ 0x3CAFED70) - 2097460732 - 2 * ((v586 ^ v500 ^ 0x3CAFED70) & 0x2FB4A06 ^ (v586 ^ v500) & 2);
  v588 = v559 & STACK[0x5720];
  STACK[0x51C0] = v588;
  LODWORD(v563) = STACK[0x5440];
  v589 = LODWORD(STACK[0x5440]) ^ ((v577 << v585) | (v588 >> v569)) ^ v587 ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5190])), 8) ^ *(v469 + 4 * v574) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5188])), 16) ^ v576;
  LODWORD(v532) = v532 ^ LODWORD(STACK[0x5440]);
  v590 = (v507 - 2097460732 - ((2 * v507) & 0x5F69408u)) ^ LODWORD(STACK[0x5440]);
  LOBYTE(v507) = v579 & (-8 * (v505 & 0x9F ^ 0x9F | v505 & 0x9F));
  LODWORD(v505) = v579 & 8 ^ 8;
  LODWORD(v507) = 545 * (v590 >> ((v505 + v507) & 0xF8)) + 702505;
  v591 = ((v532 >> 11) & 0xE0 | (v532 >> 19) & 0x1F) - 2 * (((v532 >> 11) & 0xC0 | (v532 >> 19) & 0x1F) ^ (v532 >> 19) & 0x1A) + 469842117;
  LODWORD(v559) = (v579 & 8) + v505;
  LODWORD(v505) = *(v469 + 4 * (v507 - 1552 * ((2767376 * v507) >> 32)));
  LOBYTE(v507) = (BYTE2(v505) & 0x18 ^ 0x18) + (BYTE2(v505) & 0x18);
  LODWORD(v569) = 545 * (v559 + v532 + 1281) - 1552 * ((2767376 * (545 * (v559 + v532 + 1281))) >> 32);
  LODWORD(v591) = 545 * (117 * (((v591 ^ *(STACK[0x57A0] + (v591 ^ 0x1C00F6CE)) ^ 0x15) - 100) ^ ((v591 ^ *(STACK[0x57A0] + (v591 ^ 0x1C00F6CE)) ^ 0xB3) + 62) ^ ((v591 ^ *(STACK[0x57A0] + (v591 ^ 0x1C00F6CE)) ^ 0x22) - 83)) - 7) + 702505;
  LODWORD(v529) = v580 ^ LODWORD(STACK[0x5440]);
  LODWORD(v559) = 545 * (v580 ^ v563) + 702505 - 1552 * ((2767376 * (545 * (v580 ^ v563) + 702505)) >> 32);
  HIDWORD(v500) = *(v469 + 4 * v569);
  LODWORD(v500) = HIDWORD(v500);
  v592 = 545 * BYTE3(v590) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v590) + 702505)) >> 32);
  LODWORD(v505) = (v500 >> 24) ^ __ROR4__(v505, 16) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v529) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v529) + 702505)) >> 32))), 8) ^ *(v469 + 4 * (545 * HIBYTE(v589) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v589) + 702505)) >> 32)));
  v593 = 545 * BYTE2(v590) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v590) + 702505)) >> 32);
  LODWORD(v579) = 545 * BYTE3(v529) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v529) + 702505)) >> 32);
  LODWORD(v529) = *(v469 + 4 * (545 * BYTE3(v532) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v532) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v589) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v589) + 702505)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * (545 * v590 + 702505 - 1552 * ((2767376 * (545 * v590 + 702505)) >> 32))), 24) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v529) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v529) + 702505)) >> 32))), 16);
  LODWORD(v590) = v582 & 0x1010A08 ^ 0x84810C0D;
  LODWORD(v588) = v582 & 0xB0B0B0A ^ 0x868D8C8D;
  v594 = STACK[0x5650];
  LODWORD(v518) = v588;
  v595 = v590 ^ (LODWORD(STACK[0x5650]) ^ 0x85040F83) & v588;
  v596 = STACK[0x5620];
  v597 = STACK[0x5620] & 0xB0B0B0A ^ 0x848C8E8F;
  v598 = STACK[0x5620] & 0x3020208 ^ 0x4028C ^ v597 & (LODWORD(STACK[0x5660]) ^ 0xA850A);
  HIDWORD(v500) = *(v469 + 4 * (545 * v589 + 702505 - 1552 * ((2767376 * (545 * v589 + 702505)) >> 32)));
  LODWORD(v500) = HIDWORD(v500);
  LODWORD(v532) = (v500 >> 24) ^ __ROR4__(*(v469 + 4 * v593), 8) ^ *(v469 + 4 * v579) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v532) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v532) + 702505)) >> 32))), 16);
  LODWORD(v505) = LODWORD(STACK[0x56E0]) - LODWORD(STACK[0x5580]) + v505;
  v599 = *(v469 + 4 * (v591 - 1552 * ((2767376 * v591) >> 32)));
  v600 = LODWORD(STACK[0x55C0]) + LODWORD(STACK[0x5680]) - LODWORD(STACK[0x5530]) - LODWORD(STACK[0x5520]) + (LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x56C0]) ^ (v599 >> 8) ^ __ROR4__(*(v469 + 4 * v559), 24) ^ *(v469 + 4 * v592) ^ (v599 << v507) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v589) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v589) + 702505)) >> 32))), 16));
  LODWORD(STACK[0x5200]) = v518;
  v601 = STACK[0x5760] & v518;
  STACK[0x5230] = v601;
  v602 = v601 << v585;
  LODWORD(v569) = v602;
  STACK[0x5228] = v602;
  LODWORD(v602) = (LODWORD(STACK[0x5210]) ^ (v602 | (v595 >> v578)) ^ v600) - 2097460732 - ((2 * (LODWORD(STACK[0x5210]) ^ (v602 | (v595 >> v578)) ^ v600)) & 0x5F69408);
  LODWORD(v585) = v594;
  LODWORD(STACK[0x51D8]) = v597;
  LODWORD(v590) = STACK[0x5720];
  v603 = STACK[0x5780];
  v604 = (v597 & STACK[0x5720]) >> STACK[0x5780];
  STACK[0x5240] = v604;
  v605 = v598 << STACK[0x5790];
  LODWORD(v604) = LODWORD(STACK[0x5218]) ^ v605 ^ v604 ^ v529;
  v606 = v605 ^ ((v596 & 0x80A0208 ^ 0x84088608 ^ v597 & (v594 ^ 0x8C8F8786)) >> v603);
  LODWORD(v605) = (LODWORD(STACK[0x5220]) ^ v606 ^ v505) - 2097460732 - ((2 * (LODWORD(STACK[0x5220]) ^ v606 ^ v505)) & 0x5F69408);
  v607 = v590;
  v608 = (v590 & v518) >> v578;
  STACK[0x5220] = v608;
  LODWORD(v608) = (LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5250]) ^ (v569 | v608) ^ v532) - 2097460732 - ((2 * (LODWORD(STACK[0x5250]) ^ (v569 | v608) ^ v532)) & 0x5F69408);
  LODWORD(v602) = v602 ^ v563;
  LODWORD(v605) = v605 ^ v563;
  LODWORD(v518) = (v605 >> 11) & 0xE0 | (v605 >> 19) & 0x1F;
  LOBYTE(v559) = v518 - ((2 * v518) & 0xCE) + 103;
  LODWORD(v532) = ((v602 >> 19) & 0xE0 | (v602 >> 27)) + 972031253 - 2 * (((v602 >> 19) & 0x80 | (v602 >> 27) & 0xFFFFFF87) ^ (v602 >> 27) & 4) + 110;
  LOBYTE(v518) = ((v532 ^ *((v532 ^ 0x39F00560) + STACK[0x57A0] + 56192) ^ 0xC7) + 33) ^ ((v532 ^ *((v532 ^ 0x39F00560) + STACK[0x57A0] + 56192) ^ 0x50) - 72) ^ ((v532 ^ *((v532 ^ 0x39F00560) + STACK[0x57A0] + 56192) ^ 0x6B) - 115);
  v609 = v608 ^ v563;
  LODWORD(v608) = 545 * ((v608 ^ v563) >> 16) + 702505;
  LODWORD(STACK[0x56E0]) = v608 - 1552 * ((2767376 * v608) >> 32);
  LOBYTE(v532) = v559 ^ *((((v559 ^ 0x212A547756F46A9CLL) - 0x212A547756F46ACDLL) ^ ((v559 ^ 0xE79B598EAFDBBDA0) + 0x1864A6715024420FLL) ^ ((v559 ^ 0xC6B10DF9F92FD703) + 0x394EF20606D028AELL)) + STACK[0x57A0] + 34222);
  LODWORD(v559) = (v604 - 2097460732 - ((2 * v604) & 0x5F69408)) ^ v563;
  LODWORD(v604) = 545 * ((v604 + 4 - ((2 * v604) & 8)) ^ v563) + 702505;
  LODWORD(STACK[0x5580]) = v604 - 1552 * ((2767376 * v604) >> 32);
  LOBYTE(v592) = LODWORD(STACK[0x4E78]) + 117 * (((v532 ^ 0x3D) - 28) ^ ((v532 ^ 0xB) - 42) ^ ((v532 ^ 0x23) - 2));
  LODWORD(STACK[0x5530]) = 545 * BYTE1(v602) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v602) + 702505)) >> 32);
  LODWORD(v529) = 545 * v592 + 702505 - 1552 * ((2767376 * (545 * v592 + 702505)) >> 32);
  LODWORD(v595) = (STACK[0x5640] & 0x2202A50 ^ 0x2000840) + (STACK[0x5640] & 0x2202A50 ^ 0x202210);
  LODWORD(STACK[0x5520]) = 545 * BYTE2(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v559) + 702505)) >> 32);
  v610 = 545 * BYTE1(v605) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v605) + 702505)) >> 32);
  v611 = 545 * v602 + 702505 - 1552 * ((2767376 * (545 * v602 + 702505)) >> 32);
  LODWORD(v505) = 545 * BYTE3(v605) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v605) + 702505)) >> 32);
  LODWORD(v518) = 545 * (LODWORD(STACK[0x4958]) + 117 * v518) + 702505;
  LODWORD(v579) = v518 - 1552 * ((2767376 * v518) >> 32);
  HIDWORD(v500) = *(v469 + 4 * (545 * BYTE2(v602) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v602) + 702505)) >> 32)));
  LODWORD(v500) = HIDWORD(v500);
  LODWORD(v602) = (v500 >> 8) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v559) + 702505)) >> 32))), 16);
  HIDWORD(v500) = *(v469 + 4 * (545 * v605 + 702505 - 1552 * ((2767376 * (545 * v605 + 702505)) >> 32)));
  LODWORD(v500) = HIDWORD(v500);
  LODWORD(v605) = v500 >> 24;
  LODWORD(v583) = v602 + v605;
  LODWORD(v602) = v602 & v605;
  LODWORD(v608) = v596 & 0xE2E2E2E2 ^ 0x11D173F3;
  LODWORD(v604) = STACK[0x5660];
  LODWORD(v549) = v596;
  v612 = v596 & STACK[0x4780] ^ 0x10412313 ^ v608 & (LODWORD(STACK[0x5660]) ^ 0xF131E0E1);
  LODWORD(v590) = v595 & 0x6404420 ^ v585;
  v613 = STACK[0x5600];
  LODWORD(STACK[0x5250]) = STACK[0x5600] & 0xE2E2E2E2;
  LODWORD(STACK[0x56F0]) = v590;
  LODWORD(v563) = v613 & 0xE2E2E2E2 ^ 0x73B1B171;
  LODWORD(v518) = v613;
  v614 = v613 & STACK[0x4778] ^ 0x21B00131 ^ (v590 ^ 0x33134251) & v563;
  LODWORD(v532) = v608;
  v615 = v549 & 0x800062A2 ^ 0x162B2 ^ (v590 ^ 0x92E06350) & v608;
  v616 = v608 & v607;
  LODWORD(STACK[0x5210]) = v608;
  v617 = STACK[0x5780];
  v618 = STACK[0x57B0];
  LODWORD(v612) = LODWORD(STACK[0x5258]) ^ ((v612 << STACK[0x57B0]) + (v616 >> STACK[0x5780])) ^ __ROR4__(*(v469 + 4 * v529), 8) ^ *(v469 + 4 * (545 * BYTE3(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v559) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v609) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v609) + 702505)) >> 32))), 16);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * v611), 24);
  LODWORD(v612) = (v612 ^ v500) - 2097460732 - ((2 * (v612 ^ v500)) & 0x5F69408);
  LODWORD(v616) = STACK[0x5760];
  v619 = STACK[0x5790];
  v620 = STACK[0x57C0];
  LODWORD(v529) = LODWORD(STACK[0x5298]) ^ (((STACK[0x5760] & v563) << STACK[0x5790]) | (v614 >> STACK[0x57C0]));
  LODWORD(v569) = *(v469 + 4 * (545 * HIBYTE(v609) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v609) + 702505)) >> 32)));
  LODWORD(STACK[0x5198]) = v569;
  LODWORD(v602) = (v529 ^ v569 ^ (v583 - 2 * v602)) - 2097460732 - ((2 * (v529 ^ v569 ^ (v583 - 2 * v602))) & 0x5F69408);
  LODWORD(v529) = (v604 ^ 0x2C15271) & v563;
  LODWORD(STACK[0x5218]) = v563;
  v621 = (v532 & v616) << v618;
  STACK[0x5258] = v621;
  LODWORD(v559) = LODWORD(STACK[0x5290]) ^ ((v615 >> v620) + v621) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5520])), 8) ^ __ROR4__(*(v469 + 4 * v610), 16) ^ *(v469 + 4 * v579);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (545 * v609 + 702505 - 1552 * ((2767376 * (545 * v609 + 702505)) >> 32))), 24);
  v622 = v607 & v563;
  STACK[0x5290] = v622;
  LODWORD(v617) = LODWORD(STACK[0x52A0]) ^ ((v518 & 0x60808082 ^ 0x61919101 ^ v529) << v619) ^ (v622 >> v617) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x56E0])), 8) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5580])), 24) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5530])), 16) ^ *(v469 + 4 * v505);
  LODWORD(v585) = STACK[0x5440];
  LODWORD(v563) = v612 ^ LODWORD(STACK[0x5440]);
  v623 = 545 * (v612 ^ v585) + 702505 - 1552 * ((2767376 * (545 * (v612 ^ v585) + 702505)) >> 32);
  LODWORD(v559) = ((v559 ^ v500) - 2097460732 - ((2 * (v559 ^ v500)) & 0x5F69408)) ^ LODWORD(STACK[0x5440]);
  LODWORD(STACK[0x5580]) = 545 * BYTE2(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v559) + 702505)) >> 32);
  LODWORD(v612) = ((v602 ^ v585) >> 8);
  LODWORD(v602) = v602 ^ v585;
  LODWORD(v569) = 545 * v612 + 702505 - 1552 * ((2767376 * (545 * v612 + 702505)) >> 32);
  LODWORD(v621) = (v617 - 2097460732 - ((2 * v617) & 0x5F69408)) ^ v585;
  LODWORD(STACK[0x51B0]) = 545 * BYTE1(v563) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v563) + 702505)) >> 32);
  LODWORD(STACK[0x5530]) = 545 * v621 + 702505 - 1552 * ((2767376 * (545 * v621 + 702505)) >> 32);
  LODWORD(STACK[0x51A8]) = v602;
  v624 = *(v469 + 4 * (545 * v602 + 702505 - 1552 * ((2767376 * (545 * v602 + 702505)) >> 32)));
  LODWORD(v614) = 545 * BYTE2(v602) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v602) + 702505)) >> 32);
  LODWORD(v583) = *(v469 + 4 * v623);
  v625 = (((v583 >> 21) & 0xF8 | (v583 >> 29)) - ((2 * ((v583 >> 21) & 0xF8 | (v583 >> 29))) & 0xF7) - 5);
  LOBYTE(v625) = *(STACK[0x57A0] + (((v625 ^ 0x2E0115FE) - 771823066) ^ ((v625 ^ 0xF0844923) + 259766009) ^ ((v625 ^ 0xDE855CE7) + 561685309)) + 58078);
  v626 = ((((v625 ^ 0xDA) + 102) ^ ((v625 ^ 0x2E) - 110) ^ ((v625 ^ 0xF3) + 77)) - 85) | (v583 << 8);
  v627 = STACK[0x5620];
  LODWORD(v617) = STACK[0x56F0];
  v628 = STACK[0x5700];
  LODWORD(v622) = v518 & 0x4040404 | 0x2020202;
  LODWORD(v612) = STACK[0x5660];
  v629 = STACK[0x5780];
  v630 = (v607 & v622) >> STACK[0x5780];
  STACK[0x52A0] = v630;
  LODWORD(v569) = LODWORD(STACK[0x5270]) ^ ((((v612 ^ 0x60402) & v622 ^ ((v518 & 4) + 33686016)) << STACK[0x57B0]) + v630) ^ __ROR4__(*(v469 + 4 * v569), 16) ^ *(v469 + 4 * (545 * BYTE3(v563) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v563) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * v559 + 702505 - 1552 * ((2767376 * (545 * v559 + 702505)) >> 32))), 24);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (545 * BYTE2(v621) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v621) + 702505)) >> 32))), 8);
  LODWORD(v569) = (v569 ^ v500) - 2097460732 - ((2 * (v569 ^ v500)) & 0x5F69408);
  LODWORD(v620) = STACK[0x5760];
  v631 = STACK[0x5790];
  v632 = (v628 & STACK[0x5760]) << STACK[0x5790];
  STACK[0x5520] = v632;
  v633 = STACK[0x57C0];
  LODWORD(v529) = LODWORD(STACK[0x52A8]) ^ (v632 + ((v627 & 0x4040400 ^ 0x4000200 ^ (v617 ^ 0x6000606) & v628) >> STACK[0x57C0])) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v559) + 702505)) >> 32))), 16) ^ *(v469 + 4 * (545 * BYTE3(v621) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v621) + 702505)) >> 32)));
  LODWORD(v500) = __ROR4__(*(v469 + 4 * v614), 8);
  v634 = (v529 ^ v500 ^ v626) - 2097460732 - ((2 * (v529 ^ v500 ^ v626)) & 0x5F69408);
  LODWORD(v632) = v518 & 0xB5B5B5B4 ^ 0xDB4A4BDA;
  LODWORD(STACK[0x56E0]) = v632;
  LODWORD(v559) = BYTE3(v559);
  LOBYTE(v614) = *((v559 ^ 0x1C) + STACK[0x57A0] + 61632);
  STACK[0x51A0] = v518 & 0x948480A4 ^ 0x904A48C2 ^ (v617 ^ 0x862BC908) & v632;
  LODWORD(v559) = 545 * (62 - 85 * (((v614 ^ v559 ^ 0xFB) + 104) ^ ((v614 ^ v559 ^ 0x58) - 59) ^ ((v614 ^ v559 ^ 0x7A) - 25))) + 702505;
  LODWORD(v579) = *(STACK[0x57A0] + ((v624 >> 24) ^ 0xCD) + 156852);
  LODWORD(v579) = (-85 * (((v579 >> 2) | (v579 << 6)) ^ v579 & 0xB4 ^ 0x2C)) | (v624 << 8);
  LODWORD(STACK[0x5298]) = v622;
  LODWORD(STACK[0x5450]) = v518 & 0x40400;
  v635 = (v617 ^ 0x604) & v622 ^ ((v518 & 0x40400) + 33554946);
  LODWORD(v518) = v620;
  v636 = (v620 & v622) << v631;
  LOBYTE(v628) = v631;
  STACK[0x52A8] = v636;
  LODWORD(v617) = LODWORD(STACK[0x52B0]) ^ v636 ^ (v635 >> v629) ^ v579 ^ *(v469 + 4 * (v559 - 1552 * ((2767376 * v559) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v563) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v563) + 702505)) >> 32))), 8);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (545 * BYTE1(v621) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v621) + 702505)) >> 32))), 16);
  LODWORD(v632) = STACK[0x5440];
  LODWORD(v631) = ((v617 ^ v500) - 2097460732 - ((2 * (v617 ^ v500)) & 0x5F69408)) ^ LODWORD(STACK[0x5440]);
  LODWORD(v617) = 545 * (((v617 ^ v500) + 4 - ((2 * (v617 ^ v500)) & 8)) ^ LODWORD(STACK[0x5440])) + 702505;
  LODWORD(v559) = *(v469 + 4 * LODWORD(STACK[0x51B0]));
  v637 = v569 ^ LODWORD(STACK[0x5440]);
  LOBYTE(v635) = *(((55 * HIBYTE(v637)) ^ 0xF0u) + STACK[0x57A0] + 56768);
  LODWORD(v569) = (v635 & 0x14 ^ 4) >> ((BYTE2(v559) & 3 ^ 3) + (BYTE2(v559) & 3u));
  LOBYTE(v635) = v635 ^ 0xDA ^ (v569 - ((2 * v569) & 0x30) - 104);
  v638 = *(v469 + 4 * (v617 - 1552 * ((2767376 * v617) >> 32)));
  LODWORD(v569) = (v638 >> (((v635 - 13) & 0x18 ^ 0x18) + ((v635 - 13) & 0x18))) | (v638 << 8);
  LODWORD(v638) = 545 * ((v635 - 13) + 1289) - 1552 * ((2767376 * (545 * ((v635 - 13) + 1289))) >> 32);
  LODWORD(STACK[0x51B0]) = v638;
  LODWORD(v629) = 545 * HIBYTE(LODWORD(STACK[0x51A8])) + 702505;
  LODWORD(v618) = STACK[0x5700];
  v639 = STACK[0x57B0];
  LODWORD(v621) = STACK[0x5720];
  v640 = (STACK[0x5700] & LODWORD(STACK[0x5720]));
  STACK[0x52B0] = v640;
  LODWORD(v559) = LODWORD(STACK[0x52D0]) ^ ((v627 & 0x4000000 ^ 0x4000002 ^ v618 & (v612 ^ 0x6040604)) << v639) ^ (v640 >> v633) ^ __ROR4__(v559, 16);
  LODWORD(v640) = *(v469 + 4 * LODWORD(STACK[0x5580]));
  LODWORD(v640) = v559 ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5530])), 24) ^ *(v469 + 4 * (v629 - 1552 * ((2767376 * v629) >> 32))) ^ (v640 << 24) ^ (v640 >> 8);
  LODWORD(v629) = v634 ^ v632;
  v641 = 545 * ((v634 ^ v632) >> 16) + 702505;
  LODWORD(v559) = (v640 - 2097460732 - ((2 * v640) & 0x5F69408)) ^ v632;
  LOBYTE(v640) = *(STACK[0x57A0] + ((55 * (((v640 + 18948 - ((2 * v640) & 0x9408)) ^ v632) >> 8)) ^ 0x1C562u));
  LOBYTE(v640) = 79 * (((v640 ^ 0x3C) - 60) ^ ((v640 ^ 0x5A) - 90) ^ ((v640 ^ 0xDB) + 37)) - 90;
  LOBYTE(v634) = v640 & 0xE9 ^ 0xA6;
  LOBYTE(v640) = v640 ^ (2 * ((v640 ^ 0x2C) & (2 * ((v640 ^ 0x2C) & (2 * ((v640 ^ 0x2C) & (2 * ((v640 ^ 0x2C) & (2 * ((v640 ^ 0x2C) & (2 * (v640 & (2 * v640) & 0x5A ^ v634)) ^ v634)) ^ v634)) ^ v634)) ^ v634)) ^ v634));
  v642 = ((v640 & 0xFC) >> 2) ^ 0xFFFFFF8A;
  LODWORD(STACK[0x5270]) = v642;
  LODWORD(v640) = 545 * ((v640 ^ (((v642 ^ v640) & 0xF0) >> 4) ^ 0x7F) - 13) + 702505;
  v643 = STACK[0x51A0] >> v633;
  LODWORD(v615) = STACK[0x56E0];
  v644 = v518 & STACK[0x56E0];
  STACK[0x5530] = v644 << v628;
  v645 = LODWORD(STACK[0x52E0]) ^ ((v644 << v628) + v643) ^ *(v469 + 4 * v638) ^ __ROR4__(*(v469 + 4 * (v641 - 1552 * ((2767376 * v641) >> 32))), 8);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (v640 - 1552 * ((2767376 * v640) >> 32))), 16);
  LODWORD(STACK[0x5580]) = (v645 ^ v500 ^ v569) - 2097460732 - ((2 * (v645 ^ v500 ^ v569)) & 0x5F69408);
  v646 = v621 & v615;
  STACK[0x52E0] = v646;
  LODWORD(v640) = LODWORD(STACK[0x5370]) ^ (v644 << v639) ^ (v646 >> STACK[0x5780]) ^ *(v469 + 4 * (545 * BYTE3(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v559) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * v629 + 702505 - 1552 * ((2767376 * (545 * v629 + 702505)) >> 32))), 24) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v631) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v631) + 702505)) >> 32))), 8);
  LODWORD(v500) = __ROR4__(*(v469 + 4 * (545 * BYTE1(v637) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v637) + 702505)) >> 32))), 16);
  LODWORD(v643) = (v640 ^ v500) - 2097460732 - ((2 * (v640 ^ v500)) & 0x5F69408);
  LODWORD(v569) = *(v469 + 4 * (545 * v559 + 702505 - 1552 * ((2767376 * (545 * v559 + 702505)) >> 32)));
  LODWORD(v635) = (v569 << (((v635 - 4) | (3 - v635)) & 8)) | BYTE3(v569);
  v647 = (BYTE2(v637) ^ 0xCu) + STACK[0x57A0];
  LOBYTE(v647) = (((*(v647 + 44928) ^ 0xFB) + 5) ^ ((*(v647 + 44928) ^ 0x32) - 50) ^ ((*(v647 + 44928) ^ 0x74) - 116)) + 93;
  LOBYTE(v644) = v647 & 0x62 ^ 0x51;
  LOBYTE(v647) = v647 ^ (2 * ((v647 ^ 0x40) & (2 * ((v647 ^ 0x40) & (2 * ((v647 ^ 0x40) & (2 * ((v647 ^ 0x40) & (2 * ((v647 ^ 0x40) & (2 * (v644 ^ v647 & 0x22)) ^ v644)) ^ v644)) ^ v644)) ^ v644)) ^ v644));
  LODWORD(v647) = 545 * (-12 - 85 * (((v647 ^ 0xF6) - 21) ^ ((v647 ^ 0x59) + 70) ^ ((v647 ^ 0x90) - 115))) + 702505;
  LODWORD(v644) = v647 - 1552 * ((2767376 * v647) >> 32);
  LODWORD(v647) = STACK[0x5620] & 0xB5B5B5B4 ^ 0xFF7BCB5A;
  v648 = v632 ^ (((STACK[0x5620] & 0x42110 ^ 0x480A0358 ^ v647 & (LODWORD(STACK[0x5660]) ^ 0x2B52E4AE)) << v639) + ((v647 & v621) >> STACK[0x5780])) ^ LODWORD(STACK[0x5378]) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v629) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v629) + 702505)) >> 32))), 16) ^ *(v469 + 4 * (545 * BYTE3(v631) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v631) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * v644), 8) ^ v635;
  LODWORD(v621) = LODWORD(STACK[0x5380]) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v559) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v559) + 702505)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * (545 * v637 + 702505 - 1552 * ((2767376 * (545 * v637 + 702505)) >> 32))), 24) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v631) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v631) + 702505)) >> 32))), 16) ^ *(v469 + 4 * (545 * BYTE3(v629) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v629) + 702505)) >> 32)));
  v649 = v632 ^ (((STACK[0x5620] & 0x34A02434 ^ 0x36280810 ^ v647 & (LODWORD(STACK[0x5660]) ^ 0x55F4EBC2)) << v628) | ((STACK[0x5620] & 0x94148020 ^ 0x94588A02 ^ (LODWORD(STACK[0x56F0]) ^ 0x86B98BCC) & v647) >> v633)) ^ (v621 - 2097460732 - ((2 * v621) & 0x5F69408));
  LOBYTE(v612) = BYTE2(v648) ^ 0xEB ^ *(STACK[0x57A0] + (BYTE2(v648) ^ 0xB41));
  v650 = v643 ^ v632;
  v651 = 545 * (v643 ^ v632) + 562440;
  LODWORD(v643) = 545 * (-85 * v612) + 562440 - 1552 * ((2767376 * (545 * (-85 * v612) + 562440)) >> 32);
  v652 = LODWORD(STACK[0x5580]) ^ v632;
  v653 = STACK[0x5570] ^ 0x7D7D7D7D;
  v654 = v653 ^ LODWORD(STACK[0x52F8]) ^ __ROR4__(*(v469 + 4 * v643), 16) ^ *(v469 + 4 * (545 * v649 + 562440 - 1552 * ((2767376 * (545 * v649 + 562440)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v652) + 562440 - 1552 * ((2767376 * (545 * BYTE1(v652) + 562440)) >> 32))), 24) ^ __ROR4__(*(v469 + 4 * (545 * (HIBYTE(v650) - (v651 & 0x7FBF8 ^ 0xFFF7FBF8 | v651 & 0xFFBF8)) % 0x610)), 8);
  v655 = STACK[0x55F0];
  v656 = STACK[0x55B0];
  if ((STACK[0x55F0] & 0x18) != 0)
  {
    v657 = (v654 >> (STACK[0x55F0] & 0x18)) | (v654 << LODWORD(STACK[0x55B0]));
  }

  else
  {
    v657 = v654;
  }

  LODWORD(STACK[0x5580]) = v657;
  v658 = *(STACK[0x57A0] + (LODWORD(STACK[0x51B0]) | 0x83902591) - (STACK[0x51B0] & 0x26E) + 2087710063 + ((55 * HIBYTE(v652)) ^ 0x8C));
  v659 = ((v658 ^ 0x2F) - 14) ^ (v658 - 33) ^ ((v658 ^ 0x7D) - 92);
  v660 = (v659 + 115) * ((((v658 ^ 0xE9) + 56) ^ ((v658 ^ 0x38) - 25) ^ ((v658 ^ 0x83) + 94)) + 31) + 84 * v659 + 51;
  v661 = v658 ^ (8 * v660) ^ (16 * ((v660 ^ 8) & (2 * ((v660 ^ 8) & (2 * ((v660 ^ 8) & (2 * (v660 & 0x1D ^ 0xCA)) ^ v660 & 0x1D ^ 0xCA)) ^ v660 & 0x1D ^ 0xCA)) ^ v660 & 0x1D ^ 0xCA));
  v662 = 545 * ((((v661 ^ 0x78) - 42) ^ ((v661 ^ 0x7D) - 47) ^ ((v661 ^ 0xBF) + 19)) - 37) + 562440;
  v663 = v653 ^ LODWORD(STACK[0x5320]) ^ __ROR4__(*(v469 + 4 * (v662 - 1552 * ((2767376 * v662) >> 32))), 8) ^ *(v469 + 4 * ((545 * (((v648 ^ 0xEF8334E6) - 1092722858) ^ ((v648 ^ 0xDB2F20C9) - 1972221061) ^ ((v648 ^ 0x34AC142B) + 1710325657)) - 937016752) % 0x610)) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v649) + 562440 - 1552 * ((2767376 * (545 * BYTE2(v649) + 562440)) >> 32))), 16) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v650) + 562440 - 1552 * ((2767376 * (545 * BYTE1(v650) + 562440)) >> 32))), 24);
  if ((v655 & 0x18) != 0)
  {
    v663 = (v663 >> (v655 & 0x18)) + (v663 << v656);
  }

  LODWORD(STACK[0x55F0]) = v663;
  v664 = *(v469 + 4 * ((545 * (((HIBYTE(v648) ^ 0xB434A4B1) - 197013556) ^ ((HIBYTE(v648) ^ 0x12CEBCCE) + 1388042165) ^ ((HIBYTE(v648) ^ 0xA6FA18FD) - 426806392)) - 972179473) % 0x610));
  v665 = v653 ^ LODWORD(STACK[0x5338]) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v652) + 562440 - 1552 * ((2767376 * (545 * BYTE2(v652) + 562440)) >> 32))), 16) ^ (v664 >> 8) ^ (v664 << 24) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v649) + 562440 - 1552 * ((2767376 * (545 * BYTE1(v649) + 562440)) >> 32))), 24) ^ *(v469 + 4 * (v651 - 1552 * ((2767376 * v651) >> 32)));
  v666 = STACK[0x5540];
  v667 = STACK[0x55C0];
  if ((STACK[0x5540] & 0x18) != 0)
  {
    v665 = (v665 << (STACK[0x5540] & 0x18)) + (v665 >> LODWORD(STACK[0x55C0]));
  }

  LODWORD(STACK[0x55B0]) = v665;
  v668 = 545 * BYTE2(v650) + 562440 - 1552 * ((2767376 * (545 * BYTE2(v650) + 562440)) >> 32);
  v669 = 545 * v652 + 562440 - 1552 * ((2767376 * (545 * v652 + 562440)) >> 32);
  v670 = STACK[0x52E8];
  v671 = STACK[0x50B8];
  v672 = STACK[0x50C0];
  v673 = (v670 >> LODWORD(STACK[0x50B8])) ^ (v670 << LODWORD(STACK[0x50C0]));
  v674 = STACK[0x52F0];
  v675 = (LODWORD(STACK[0x52F0]) >> LODWORD(STACK[0x50B8])) | (LODWORD(STACK[0x52F0]) << LODWORD(STACK[0x50C0]));
  v676 = v653 ^ LODWORD(STACK[0x53F8]) ^ __ROR4__(*(v469 + 4 * v668), 16) ^ __ROR4__(*(v469 + 4 * (545 * HIBYTE(v649) + 562440 - 1552 * ((2767376 * (545 * HIBYTE(v649) + 562440)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * (545 * (BYTE1(v648) ^ 0x4A) + 562440 - 1552 * ((2767376 * (545 * (BYTE1(v648) ^ 0x4Au) + 562440)) >> 32))), 24) ^ *(v469 + 4 * v669);
  if ((v666 & 0x18) != 0)
  {
    v676 = (v676 << (v666 & 0x18)) + (v676 >> v667);
  }

  LODWORD(STACK[0x55C0]) = v676;
  if (v671)
  {
    v677 = v675;
  }

  else
  {
    v677 = v674;
  }

  LODWORD(STACK[0x52F8]) = v677;
  v678 = v672;
  v679 = (LODWORD(STACK[0x5268]) >> v671) | (LODWORD(STACK[0x5268]) << v672);
  if (!v671)
  {
    v679 = STACK[0x5268];
  }

  LODWORD(STACK[0x5378]) = v679;
  v680 = (LODWORD(STACK[0x5278]) << v672) + (LODWORD(STACK[0x5278]) >> v671);
  if (!v671)
  {
    v680 = STACK[0x5278];
  }

  LODWORD(STACK[0x5338]) = v680;
  v681 = (LODWORD(STACK[0x5300]) << v672) ^ (LODWORD(STACK[0x5300]) >> v671);
  if (!v671)
  {
    v681 = STACK[0x5300];
  }

  LODWORD(STACK[0x5320]) = v681;
  v682 = (LODWORD(STACK[0x53D0]) << v672) | (LODWORD(STACK[0x53D0]) >> v671);
  if (!v671)
  {
    v682 = STACK[0x53D0];
  }

  LODWORD(STACK[0x5370]) = v682;
  v683 = (LODWORD(STACK[0x5280]) >> v671) | (LODWORD(STACK[0x5280]) << v672);
  if (!v671)
  {
    v683 = STACK[0x5280];
  }

  LODWORD(STACK[0x5380]) = v683;
  if (v672)
  {
    v684 = v673;
  }

  else
  {
    v684 = v670;
  }

  v685 = (LODWORD(STACK[0x5398]) << v672) ^ (LODWORD(STACK[0x5398]) >> v671);
  v686 = STACK[0x53A0];
  if (!v672)
  {
    v685 = STACK[0x5398];
  }

  LODWORD(STACK[0x5300]) = v685;
  if (v672)
  {
    v687 = (v686 >> v671) ^ (v686 << v672);
  }

  else
  {
    v687 = v686;
  }

  v688 = (LODWORD(STACK[0x5308]) >> v671) + (LODWORD(STACK[0x5308]) << v672);
  if (!v672)
  {
    v688 = STACK[0x5308];
  }

  LODWORD(STACK[0x5308]) = v688;
  v689 = (LODWORD(STACK[0x5318]) << v672) + (LODWORD(STACK[0x5318]) >> v671);
  if (!v672)
  {
    v689 = STACK[0x5318];
  }

  LODWORD(STACK[0x5398]) = v689;
  v690 = (LODWORD(STACK[0x5390]) << v672) ^ (LODWORD(STACK[0x5390]) >> v671);
  if (!v672)
  {
    v690 = STACK[0x5390];
  }

  LODWORD(STACK[0x53A0]) = v690;
  v691 = STACK[0x53A8];
  v692 = (v691 << v672) ^ (v691 >> v671);
  v693 = (LODWORD(STACK[0x53D8]) >> v671) ^ (LODWORD(STACK[0x53D8]) << v672);
  if (!v672)
  {
    v693 = STACK[0x53D8];
  }

  LODWORD(STACK[0x53D0]) = v693;
  v694 = (LODWORD(STACK[0x53C0]) >> v671) + (LODWORD(STACK[0x53C0]) << v672);
  if (!v672)
  {
    v694 = STACK[0x53C0];
  }

  LODWORD(STACK[0x53C0]) = v694;
  if (!v672)
  {
    v692 = v691;
  }

  LODWORD(STACK[0x53D8]) = v692;
  v695 = (LODWORD(STACK[0x53E0]) >> v671) | (LODWORD(STACK[0x53E0]) << v672);
  if (!v672)
  {
    v695 = STACK[0x53E0];
  }

  LODWORD(STACK[0x53F8]) = v695;
  v696 = (LODWORD(STACK[0x53E8]) >> v671) + (LODWORD(STACK[0x53E8]) << v672);
  if (!v672)
  {
    v696 = STACK[0x53E8];
  }

  LODWORD(STACK[0x5540]) = v696;
  if (v671)
  {
    v697 = (LODWORD(STACK[0x5408]) >> v671) ^ (LODWORD(STACK[0x5408]) << v672);
  }

  else
  {
    v697 = STACK[0x5408];
  }

  v698 = STACK[0x5340];
  v699 = (v698 >> v671) ^ (v698 << v678);
  v700 = (LODWORD(STACK[0x5368]) >> v671) | (LODWORD(STACK[0x5368]) << v678);
  if (!v671)
  {
    v700 = STACK[0x5368];
  }

  LODWORD(STACK[0x5408]) = v700;
  v701 = (LODWORD(STACK[0x53B0]) >> v671) | (LODWORD(STACK[0x53B0]) << v678);
  if (!v671)
  {
    v701 = STACK[0x53B0];
  }

  LODWORD(STACK[0x53E0]) = v701;
  if (!v671)
  {
    v699 = v698;
  }

  LODWORD(STACK[0x53E8]) = v699;
  v702 = STACK[0x5430];
  v703 = 545 * HIBYTE(v702) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v702) + 702505)) >> 32);
  v704 = STACK[0x56D0];
  v705 = *(v469 + 4 * (545 * LODWORD(STACK[0x51E0]) % 0x610u));
  v706 = (v705 << ((-97 * ((BYTE2(v705) & 0xF0 ^ 0xF0) + (BYTE2(v705) & 0xF0))) & 0xF0)) + WORD1(v705);
  LODWORD(v705) = BYTE1(STACK[0x5410]) ^ 0x99;
  v707 = 545 * v705 + 702505 - 1552 * ((2767376 * (545 * v705 + 702505)) >> 32);
  LODWORD(v705) = 545 * LODWORD(STACK[0x5420]) + 702505;
  v708 = v705 - 1552 * ((2767376 * v705) >> 32);
  v709 = 545 * BYTE1(v702) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v702) + 702505)) >> 32);
  LODWORD(v705) = v684 ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v702) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v702) + 702505)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * v707), 16) ^ *(v469 + 4 * (545 * LODWORD(STACK[0x5460]) + 702505 - 1552 * ((2767376 * (545 * LODWORD(STACK[0x5460]) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * STACK[0x56D0] + 702505 - 1552 * ((2767376 * (545 * STACK[0x56D0] + 702505)) >> 32))), 24);
  v710 = (-922629575 * LODWORD(STACK[0x5288])) ^ (-922629575 * (LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x50A8]))) ^ v687 ^ __ROR4__(*(v469 + 4 * ((545 * (((BYTE2(v704) ^ 0xE96420A3) - 2049937117) ^ ((BYTE2(v704) ^ 0x1CECCF47) + 1884856007) ^ ((BYTE2(v704) ^ 0xF588EFE4) - 1724072346)) - 1809239449) % 0x610)), 8) ^ *(v469 + 4 * ((545 * (((STACK[0x5480] ^ 0x8517E831) - 2022390484) ^ ((STACK[0x5480] ^ LODWORD(STACK[0x1AB8])) - 1000436652) ^ ((STACK[0x5480] ^ 0x9F6CE845) - 1659910816)) + 303781633) % 0x610)) ^ v706;
  v711 = __ROR4__(*(v469 + 4 * (545 * LODWORD(STACK[0x5430]) + 702505 - 1552 * ((2767376 * (545 * LODWORD(STACK[0x5430]) + 702505)) >> 32))), 24);
  v712 = (STACK[0x51C8] & LODWORD(STACK[0x5760])) << STACK[0x5790];
  v713 = v712 | (STACK[0x51C0] >> STACK[0x57C0]);
  v714 = STACK[0x5440];
  v715 = LODWORD(STACK[0x5440]) ^ v713 ^ (v705 - 2097460732 - ((2 * v705) & 0x5F69408));
  v716 = LODWORD(STACK[0x5440]) ^ v713 ^ ((v710 ^ v711) - 2097460732 - ((2 * (v710 ^ v711)) & 0x5F69408));
  v717 = *((((8 * (v716 & 0x1F)) | (v716 >> 5)) ^ 0x4D) + STACK[0x57A0] + 38208);
  v718 = (v717 ^ 0x60) & (((v713 & 0x77 ^ 0x77) + (v713 & 0x77) - ((2 * ((v713 & 0x77 ^ 0x77) + (v713 & 0x77))) & 0x33) + 25) & 0x70 ^ 0x42) ^ v717 & 0x52;
  v719 = ((LODWORD(STACK[0x5440]) ^ v713 ^ (v705 + 18948 - ((2 * v705) & 0x9408))) >> 8) >> ((v712 & 4) - (v712 | 0xFB));
  v720 = STACK[0x5650];
  v721 = STACK[0x5660];
  v722 = (STACK[0x5600] & 0x68205478 ^ 0x28204432 ^ (LODWORD(STACK[0x5650]) ^ 0x78445414u) & STACK[0x5208]) >> STACK[0x5780];
  v723 = STACK[0x57B0];
  v724 = (STACK[0x5600] & 0x2C4C4C40 ^ 0x2E464400 ^ (LODWORD(STACK[0x5660]) ^ 0x4C120A36u) & STACK[0x5208]) << STACK[0x57B0];
  v725 = v697 ^ (v724 | v722) ^ *(v469 + 4 * (545 * BYTE3(v704) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v704) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(LODWORD(STACK[0x5420])) + 702505 - 1552 * ((2767376 * (545 * BYTE2(LODWORD(STACK[0x5420])) + 702505)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * (545 * STACK[0x5470] + 702505 - 1552 * ((2767376 * (545 * STACK[0x5470] + 702505)) >> 32))), 24);
  v726 = __ROR4__(*(v469 + 4 * v709), 16);
  v727 = (v725 ^ v726) - 2097460732 - ((2 * (v725 ^ v726)) & 0x5F69408);
  v728 = STACK[0x57A0] + 123914 + (((8 * ((v715 >> 8) & 0x1FLL)) | v719) ^ 0x42);
  v729 = LODWORD(STACK[0x5300]) ^ (v724 + v722) ^ *(v469 + 4 * v703) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(STACK[0x5470]) + 702505 - 1552 * ((2767376 * (545 * BYTE2(STACK[0x5470]) + 702505)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * v708), 24);
  v730 = __ROR4__(*(v469 + 4 * (545 * BYTE1(v704) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v704) + 702505)) >> 32))), 16);
  LOBYTE(v708) = ((*(v728 + 2565) ^ 0xFE) - 30) ^ ((*(v728 + 2565) ^ 0x25) + 59) ^ ((*(v728 + 2565) ^ 0x98) - 120);
  LODWORD(v728) = ((v729 ^ v730) - 2097460732 - ((2 * (v729 ^ v730)) & 0x5F69408)) ^ LODWORD(STACK[0x5440]);
  LODWORD(v704) = STACK[0x5440];
  LOBYTE(v729) = (((v729 ^ v730) + 4 - ((2 * (v729 ^ v730)) & 8)) ^ LODWORD(STACK[0x5440])) & 0xF;
  v731 = (((v729 ^ 0xF) + v729) & 0x10 ^ BYTE3(v728) ^ 0xA7) + STACK[0x57A0];
  LOBYTE(v731) = -85 * (((*(v731 + 49536) ^ 0x2F) - 47) ^ ((*(v731 + 49536) ^ 0x9C) + 100) ^ ((*(v731 + 49536) ^ 0xE) - 14));
  LOBYTE(v722) = v731 + 121;
  LOBYTE(v731) = (-122 - v731) & 0xC6 | 0x21;
  LOBYTE(v724) = v731 ^ v722 & 0x4A;
  LOBYTE(v731) = v722 ^ (2 * ((v722 ^ 0x46) & (2 * ((v722 ^ 0x46) & (2 * ((v722 ^ 0x46) & (2 * ((v722 ^ 0x46) & (2 * ((v722 ^ 0x46) & (2 * ((v722 ^ 0x46) & (2 * v731) ^ v724)) ^ v724)) ^ v724)) ^ v724)) ^ v724)) ^ v724));
  v732 = 545 * v728 + 702505 - 1552 * ((2767376 * (545 * v728 + 702505)) >> 32);
  v733 = ((v731 ^ 0xBE) - 78) ^ ((v731 ^ 0x45) + 75) ^ ((v731 ^ 0x38) + 56);
  LODWORD(v731) = 545 * ((((v717 ^ (2 * v718) ^ 0x64) + 10) ^ ((v717 ^ (2 * v718) ^ 0xEF) - 125) ^ ((v717 ^ (2 * v718) ^ 0x7B) + 23)) - 58) + 702505;
  LODWORD(STACK[0x56D0]) = v731 - 1552 * ((2767376 * v731) >> 32);
  v734 = STACK[0x57A0] + 117359 + (((BYTE2(v728) ^ 0xFF4FDFE1C8B243B4) + 0xB0201E374DBC45) ^ ((BYTE2(v728) ^ 0x8D0654BA9A7DA864) + 0x72F9AB4565825795) ^ ((BYTE2(v728) ^ 0x72498B5B52CFEBA0) - 0x72498B5B52CFEBAFLL));
  LOBYTE(v734) = (*(v734 + 3346) >> 2) & 0x37 ^ *(v734 + 3346);
  LODWORD(STACK[0x5480]) = 545 * BYTE1(v728) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v728) + 702505)) >> 32);
  LODWORD(v728) = 545 * BYTE1(v716) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v716) + 702505)) >> 32);
  LODWORD(v734) = 545 * (LODWORD(STACK[0x49D8]) - 85 * (((v734 ^ 7) + 74) ^ ((v734 ^ 0x5B) + 22) ^ ((v734 ^ 0x7B) + 54))) + 702505;
  v735 = 545 * BYTE2(v716) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v716) + 702505)) >> 32);
  v736 = 545 * HIBYTE(v716) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v716) + 702505)) >> 32);
  v737 = 545 * BYTE2(v715) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v715) + 702505)) >> 32);
  HIDWORD(v738) = *(v469 + 4 * v728);
  LODWORD(v738) = HIDWORD(v738);
  v739 = v727 ^ v714;
  LODWORD(v728) = (v738 >> 16) ^ __ROR4__(*(v469 + 4 * (v734 - 1552 * ((2767376 * v734) >> 32))), 8) ^ *(v469 + 4 * (545 * HIBYTE(v715) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v715) + 702505)) >> 32)));
  LODWORD(v738) = __ROR4__(*(v469 + 4 * (545 * (v727 ^ v714) + 700953 - 1552 * ((2767376 * (545 * (v727 ^ v714) + 700953)) >> 32))), 24);
  LODWORD(v734) = 545 * ((v727 ^ v714) >> 16) + 702505;
  v740 = v734 - 1552 * ((2767376 * v734) >> 32);
  LODWORD(v734) = 545 * ((v727 ^ v714) >> 8) + 702505;
  v741 = v734 - 1552 * ((2767376 * v734) >> 32);
  v742 = *(v469 + 4 * (545 * v715 + 702505 - 1552 * ((2767376 * (545 * v715 + 702505)) >> 32)));
  v743 = (((v742 >> 19) & 0xE0 | (v742 >> 27)) ^ 0x2D) + STACK[0x57A0];
  LOBYTE(v743) = ((*(v743 + 45696) ^ 0x5E) - 94) ^ ((*(v743 + 45696) ^ 0x20) - 32) ^ ((*(v743 + 45696) ^ 0xC3) + 61);
  LOBYTE(v722) = v743 - 15;
  LOBYTE(v743) = (v743 + 113) & 0x92 | 0x60;
  LOBYTE(v724) = v743 ^ v722 & 0xC0;
  LOBYTE(v743) = v722 ^ (2 * ((v722 ^ 0x10) & (2 * ((v722 ^ 0x10) & (2 * ((v722 ^ 0x10) & (2 * ((v722 ^ 0x10) & (2 * ((v722 ^ 0x10) & (2 * v743) ^ v724)) ^ v724)) ^ v724)) ^ v724)) ^ v724)) ^ 0xCC;
  LODWORD(v722) = 545 * (-85 * v733 + 17) + 702505;
  v744 = STACK[0x5620] & 0x30A0200 ^ 0x840C8281 ^ STACK[0x51D8] & (v721 ^ 0x84020507);
  LODWORD(v728) = LODWORD(STACK[0x5308]) ^ ((STACK[0x5620] & 0x3010B00 ^ 0xA00 ^ STACK[0x51D8] & (v720 ^ 0x3840A8E)) >> STACK[0x5780]) ^ (v744 << v723) ^ (LODWORD(STACK[0x50B0]) - LODWORD(STACK[0x5358]) + (v728 ^ v738));
  v745 = v728 - 2097460732 - ((2 * v728) & 0x5F69408);
  LODWORD(v743) = LODWORD(STACK[0x52F8]) ^ (STACK[0x5230] << STACK[0x5790]) ^ STACK[0x5220] ^ __ROR4__(*(v469 + 4 * v735), 8) ^ __ROR4__(*(v469 + 4 * v741), 16) ^ (v742 << 8) ^ (117 * (((v743 ^ (32 * v743) ^ 0xD2) + 12) ^ ((v743 ^ (32 * v743) ^ 0xEC) + 54) ^ ((v743 ^ (32 * v743) ^ 0x6D) - 75)) + 121) ^ *(v469 + 4 * (v722 - 1552 * ((2767376 * v722) >> 32)));
  LODWORD(v728) = LODWORD(STACK[0x5398]) ^ (STACK[0x5228] | ((STACK[0x5600] & 0xA03090A ^ LODWORD(STACK[0x1ABC]) ^ (v720 ^ 0xA6658D5u) & STACK[0x5200]) >> STACK[0x57C0])) ^ __ROR4__(*(v469 + 4 * v732), 24) ^ *(v469 + 4 * v736) ^ __ROR4__(*(v469 + 4 * (545 * (v708 + 7) + 702505 - 1552 * ((2767376 * (545 * (v708 + 7) + 702505)) >> 32))), 16);
  LODWORD(v738) = __ROR4__(*(v469 + 4 * v740), 8);
  v746 = (v743 - 2097460732 - ((2 * v743) & 0x5F69408)) ^ v704;
  v747 = (((v746 >> 21) & 0xF8 | (v746 >> 29)) ^ 0x95) + STACK[0x57A0];
  LOBYTE(v747) = (((*(v747 + 59840) ^ 0xFA) + 6) ^ ((*(v747 + 59840) ^ 6) - 6) ^ ((*(v747 + 59840) ^ 0x41) - 65)) - 87;
  LOBYTE(v722) = v747 & 0xD ^ 0x75;
  v748 = v747 ^ (2 * ((v747 ^ 0x22) & (2 * ((v747 ^ 0x22) & (2 * ((v747 ^ 0x22) & (2 * ((v747 ^ 0x22) & (2 * ((v747 ^ 0x22) & (2 * (((2 * v747) & 0x46 ^ 0x2E) & (v747 ^ 0x22) ^ v722)) ^ v722)) ^ v722)) ^ v722)) ^ v722)) ^ v722));
  v749 = STACK[0x5620] & 0x620042A0 ^ 0x52B1 ^ STACK[0x5210] & (v720 ^ 0x72E15353);
  LODWORD(v728) = ((v728 ^ v738) - 2097460732 - ((2 * (v728 ^ v738)) & 0x5F69408)) ^ v704;
  v750 = v745 ^ v704;
  v751 = ((v745 ^ v704) >> 16) + 1289;
  LODWORD(v724) = LODWORD(STACK[0x5320]) ^ (v744 << STACK[0x5790]) ^ STACK[0x5240] ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x56D0])), 24) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5480])), 16) ^ (*(v469 + 4 * v737) >> 8) ^ (*(v469 + 4 * v737) << 24) ^ *(v469 + 4 * (545 * HIBYTE(v739) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v739) + 702505)) >> 32)));
  v752 = (v724 - 2097460732 - ((2 * v724) & 0x5F69408)) ^ v704;
  v753 = *(v469 + 4 * (545 * BYTE1(v746) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v746) + 702505)) >> 32)));
  LODWORD(v747) = LODWORD(STACK[0x5338]) ^ STACK[0x5258] ^ (v749 >> STACK[0x5780]) ^ __ROR4__(*(v469 + 4 * (545 * v728 + 702505 - 1552 * ((2767376 * (545 * v728 + 702505)) >> 32))), 24) ^ __ROR4__(*(v469 + 4 * (545 * v751 - 1552 * ((2767376 * (545 * v751)) >> 32))), 8) ^ *(v469 + 4 * (545 * HIBYTE(v752) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v752) + 702505)) >> 32)));
  LODWORD(v738) = __ROR4__(v753, 16);
  LODWORD(v722) = (v747 ^ v738) - 2097460732 - ((2 * (v747 ^ v738)) & 0x5F69408);
  HIDWORD(v738) = *(v469 + 4 * (545 * v746 + 702505 - 1552 * ((2767376 * (545 * v746 + 702505)) >> 32)));
  LODWORD(v738) = HIDWORD(v738);
  LODWORD(v724) = v738 >> 24;
  LODWORD(v747) = LODWORD(STACK[0x5250]) ^ 0x2C0C000 ^ ((v724 & 0x71717171 ^ 0x71717171) + (v724 & 0x71717171));
  v754 = *(v469 + 4 * (545 * HIBYTE(v750) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v750) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v728) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v728) + 702505)) >> 32))), 16);
  HIDWORD(v738) = *(v469 + 4 * (545 * v752 + 702505 - 1552 * ((2767376 * (545 * v752 + 702505)) >> 32)));
  LODWORD(v738) = HIDWORD(v738);
  LODWORD(v747) = LODWORD(STACK[0x5370]) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v746) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v746) + 702505)) >> 32))), 8) ^ (((v738 >> 24) ^ -(v738 >> 24) ^ (v754 - ((v738 >> 24) ^ v754))) + v754) ^ (((v747 & STACK[0x5760]) << STACK[0x5790]) | ((v747 & STACK[0x5720]) >> STACK[0x5780]));
  v755 = *(v469 + 4 * (545 * BYTE2(v752) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v752) + 702505)) >> 32)));
  LODWORD(v724) = LODWORD(STACK[0x5378]) ^ ((STACK[0x5620] & 0xA000A2A2 ^ 0x1032B2 ^ STACK[0x5210] & (LODWORD(STACK[0x5660]) ^ 0xC3407140)) << STACK[0x57B0]) ^ (v749 >> STACK[0x57C0]) ^ v724 ^ (v755 >> 8) ^ (v755 << 24) ^ *(v469 + 4 * (545 * BYTE3(v728) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v728) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v750) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v750) + 702505)) >> 32))), 16);
  v756 = 545 * ((((v748 ^ 0xF9) + 58) ^ ((v748 ^ 0x5A) - 101) ^ ((v748 ^ 6) - 57)) - 2) + 702505;
  LODWORD(v728) = *(v469 + 4 * (545 * BYTE2(v728) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v728) + 702505)) >> 32)));
  LODWORD(v728) = (v728 >> ((BYTE2(v753) & 8 ^ 8) + (BYTE2(v753) & 8))) + (v728 << 24);
  v757 = LODWORD(STACK[0x5380]) ^ (((STACK[0x5600] & 0xE2A08062 ^ 0x72A19160 ^ (LODWORD(STACK[0x5660]) ^ 0x91F15290) & STACK[0x5218]) << STACK[0x5790]) + (STACK[0x5290] >> STACK[0x57C0])) ^ *(v469 + 4 * (v756 - 1552 * ((2767376 * v756) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * v750 + 702505 - 1552 * ((2767376 * (545 * v750 + 702505)) >> 32))), 24);
  LODWORD(v738) = __ROR4__(*(v469 + 4 * (545 * BYTE1(v752) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v752) + 702505)) >> 32))), 16);
  v758 = ((v757 ^ v738 ^ v728) - 2097460732 - ((2 * (v757 ^ v738 ^ v728)) & 0x5F69408)) ^ v704;
  LOBYTE(v757) = *(STACK[0x57A0] + ((55 * ((((v757 ^ v738 ^ v728) + 18948 - ((2 * (v757 ^ v738 ^ v728)) & 0x9408)) ^ v704) >> 8)) ^ 0xB9u) + 131933);
  LODWORD(v747) = (v747 + LODWORD(STACK[0x54C0]) + ~((2 * v747) & 0x5F69408)) ^ v704;
  v759 = ((((v757 ^ 0xEB) - 26) ^ ((v757 ^ 0x19) + 24) ^ ((v757 ^ 0xD7) - 38)) + 12);
  LODWORD(v724) = (v724 - 2097460732 - ((2 * v724) & 0x5F69408)) ^ v704;
  v760 = *(v469 + 4 * ((545 * (v759 | ((v759 < 0x45) << 8)) + 664900) % 0x610));
  v761 = v722 ^ v704;
  v762 = *(v469 + 4 * (545 * BYTE1(v724) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v724) + 702505)) >> 32)));
  v763 = (v762 << (((BYTE2(v760) & 0x39 ^ 0x39) + (BYTE2(v760) & 0x39)) & 0x52)) | WORD1(v762);
  v764 = STACK[0x5298];
  LODWORD(v762) = LODWORD(STACK[0x53E0]) ^ (((LODWORD(STACK[0x5660]) ^ 0x6040402) & STACK[0x5298] ^ (STACK[0x5600] & 0x4000004 | 0x200u)) << STACK[0x57B0]) ^ STACK[0x52A0] ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v747) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v747) + 702505)) >> 32))), 8) ^ __ROR4__(v760, 16) ^ __ROR4__(*(v469 + 4 * (545 * v724 + 702505 - 1552 * ((2767376 * (545 * v724 + 702505)) >> 32))), 24) ^ *(v469 + 4 * (545 * HIBYTE(v761) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v761) + 702505)) >> 32)));
  LODWORD(v723) = STACK[0x5700];
  v765 = STACK[0x52B0] >> STACK[0x5780];
  LODWORD(v722) = LODWORD(STACK[0x53E8]) ^ (((STACK[0x5700] & (LODWORD(STACK[0x5660]) ^ 6) ^ (LODWORD(STACK[0x4EC8]) + 33554944)) << STACK[0x57B0]) | v765) ^ *(v469 + 4 * ((545 * (((BYTE3(v747) ^ 0x7D6BC85B) + 1322009412) ^ ((BYTE3(v747) ^ 0xECEE69AF) - 548805960) ^ ((BYTE3(v747) ^ 0x9185A1F4) - 1574819091)) + 140220400) % 0x610)) ^ __ROR4__(*(v469 + 4 * (545 * (v722 ^ v704) + 702505 - 1552 * ((2767376 * (545 * (v722 ^ v704) + 702505)) >> 32))), 24) ^ v763;
  LODWORD(v738) = __ROR4__(*(v469 + 4 * (545 * BYTE2(v758) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v758) + 702505)) >> 32))), 8);
  LODWORD(v722) = ((v722 ^ v738) - 2097460732 - ((2 * (v722 ^ v738)) & 0x5F69408)) ^ v704;
  v766 = 2 * WORD1(v722);
  v767 = ((((WORD1(v722) - (v766 & 2) + 1) ^ 0xFFFFFFC8) + 85) ^ (((WORD1(v722) - (v766 & 2) + 1) ^ 0xFFFFFF97) + 12) ^ (((WORD1(v722) - (v766 & 2) + 1) ^ 0xFFFFFFAE) + 51)) + ((((WORD1(v722) - (v766 & 0x1FF98) - 52) ^ 0xA) + 74) ^ (((WORD1(v722) - (v766 & 0x1FF98) - 52) ^ 0x3E) + 126) ^ (((WORD1(v722) - (v766 & 0x1FF98) - 52) ^ 0x24) + 104)) - 122;
  LOBYTE(v766) = (((((BYTE2(v722) - (v766 & 2) + 1) ^ 0xC8) + 85) ^ (((BYTE2(v722) - (v766 & 2) + 1) ^ 0x97) + 12) ^ (((BYTE2(v722) - (v766 & 2) + 1) ^ 0xAE) + 51)) + ((((BYTE2(v722) - (v766 & 0x98) - 52) ^ 0xA) + 74) ^ (((BYTE2(v722) - (v766 & 0x98) - 52) ^ 0x3E) + 126) ^ (((BYTE2(v722) - (v766 & 0x98) - 52) ^ 0x24) + 104)) - 122) & 0x70 ^ 0x6C;
  LOBYTE(v767) = v767 ^ *((BYTE2(v722) ^ 0xF3u) + STACK[0x57A0] + 35904) ^ (2 * ((v767 ^ 0x38) & (2 * ((v767 ^ 0x38) & (2 * ((v767 ^ 0x38) & (2 * ((v767 ^ 0x38) & (2 * v766) ^ v766)) ^ v766)) ^ v766)) ^ v766));
  v768 = 545 * (LODWORD(STACK[0x4E34]) - 85 * (((v767 ^ 0xB5) - 106) ^ ((v767 ^ 0xAA) - 117) ^ ((v767 ^ 0x6A) + 75))) + 702505;
  HIDWORD(v738) = *(v469 + 4 * (v768 - 1552 * ((2767376 * v768) >> 32)));
  LODWORD(v738) = HIDWORD(v738);
  LODWORD(STACK[0x56D0]) = v738 >> 8;
  LODWORD(v762) = (v762 - 2097460732 - ((2 * v762) & 0x5F69408)) ^ v704;
  LODWORD(STACK[0x54C0]) = (545 * v762 + 702505) % (((HIDWORD(v738) >> 8) & 0x610 ^ 0x610) + ((HIDWORD(v738) >> 8) & 0x610));
  v769 = (v761 >> 5) ^ (24 * ((v751 & 0xD3) + ((246 - HIWORD(v750)) & 0xD3)));
  LOBYTE(v769) = ((((v769 - ((2 * v769) & 0x9C) - 42) & 0xF8) - 8) ^ 0x8A) & ((3 - (v761 >> 13)) & 7 ^ 0xFD) | (3 - (v761 >> 13)) & 5;
  LOBYTE(v769) = v769 ^ *(STACK[0x57A0] + (v769 ^ 0x84u) + 36160);
  LOBYTE(v768) = ((v769 ^ 0xBD) - 109) ^ (v769 + 48) ^ ((v769 ^ 0x3E) + 18);
  v770 = *(v469 + 4 * (545 * v758 + 702505 - 1552 * ((2767376 * (545 * v758 + 702505)) >> 32)));
  v771 = 481986359 * HIBYTE(v770) - ((963972718 * HIBYTE(v770)) & 0xFFFFFFAA) - 43;
  LOBYTE(v771) = (((v771 ^ 0x56) + 105) ^ ((v771 ^ 0x33) + 14) ^ ((v771 ^ 0xF9) - 56)) - 90;
  LOBYTE(v749) = v771 & 0x1D ^ 0x70;
  LOBYTE(v771) = v771 ^ *(STACK[0x57A0] + ((55 * HIBYTE(v770)) ^ 0x58u) + 134499) ^ (2 * ((v771 ^ 0x3C) & (2 * ((v771 ^ 0x3C) & (2 * ((v771 ^ 0x3C) & (2 * ((v771 ^ 0x3C) & (2 * ((v771 ^ 0x3C) & (2 * (v771 & (2 * v771) & 0x7A ^ v749)) ^ v749)) ^ v749)) ^ v749)) ^ v749)) ^ v749));
  v772 = ((v771 ^ ((v771 ^ 0xAD) - 66) ^ ((v771 ^ 0xE1) - 14) ^ 0xEF) - 65) | (v770 << 8);
  v773 = *(v469 + 4 * (545 * v747 + 702505 - 1552 * ((2767376 * (545 * v747 + 702505)) >> 32)));
  LOBYTE(v763) = *(STACK[0x57A0] + ((v773 >> 24) ^ 0x23) + 163605);
  v774 = (LODWORD(STACK[0x4FC8]) - 85 * (((v763 ^ (32 * v763) ^ 7) + 11) ^ ((v763 ^ (32 * v763) ^ 0x6A) + 104) ^ ((v763 ^ (32 * v763) ^ 0xDF) - 45))) | (v773 << 8);
  LODWORD(v773) = 545 * BYTE2(v724) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v724) + 702505)) >> 32);
  LODWORD(v747) = 545 * ((v724 & 0xF69F7BB8) + BYTE1(v747) + (v724 & 0xF69F7BB8 ^ 0xF69F7BB8)) - 159099535;
  LODWORD(v744) = STACK[0x5650];
  v775 = STACK[0x5520];
  LODWORD(v724) = LODWORD(STACK[0x5408]) ^ STACK[0x5520] ^ ((v723 & (LODWORD(STACK[0x5650]) ^ 0x2000006) ^ (STACK[0x5620] & 0x40000 | 0x2000000)) >> STACK[0x57C0]) ^ *(v469 + 4 * (545 * BYTE3(v724) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v724) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v761) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v761) + 702505)) >> 32))), 8);
  LODWORD(v747) = *(v469 + 4 * (v747 % 0x610));
  LODWORD(v738) = __ROR4__(v747, 16);
  LODWORD(v724) = (v724 ^ v738 ^ v772) - 2097460732 - ((2 * (v724 ^ v738 ^ v772)) & 0x5F69408);
  LODWORD(v728) = LODWORD(STACK[0x53A0]) ^ (STACK[0x52A8] | (((LODWORD(STACK[0x5650]) ^ 0x2000404) & v764 ^ (LODWORD(STACK[0x5450]) | 0x2000002u)) >> STACK[0x57C0])) ^ __ROR4__(*(v469 + 4 * (545 * (v768 + 55) + 702505 - 1552 * ((2767376 * (545 * (v768 + 55) + 702505)) >> 32))), 16) ^ *(v469 + 4 * (545 * HIBYTE(v758) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v758) + 702505)) >> 32)));
  LODWORD(v738) = __ROR4__(*(v469 + 4 * v773), 8);
  LOBYTE(v769) = (BYTE2(v747) & 0xC ^ 0xC) + (BYTE2(v747) & 0xC);
  LODWORD(v747) = (v765 & 0x221 ^ 0x221) + (v765 & 0x221);
  LODWORD(v765) = ((v728 ^ v738 ^ v774) - 2097460732 - ((2 * (v728 ^ v738 ^ v774)) & 0x5F69408)) ^ v704;
  LODWORD(v728) = ((((v728 ^ v738 ^ v774) + 4 - ((2 * (v728 ^ v738 ^ v774)) & 8)) ^ v704) + 1289) * v747;
  LODWORD(STACK[0x5700]) = v728 - 1552 * ((2767376 * v728) >> 32);
  v776 = v724 ^ v704;
  v777 = 545 * ((v724 ^ v704) >> (v769 & 0x18)) + 702505;
  v778 = *(v469 + 4 * (545 * (v724 ^ v704) + 702505 - 1552 * ((2767376 * (545 * (v724 ^ v704) + 702505)) >> 32)));
  LOBYTE(v761) = *(STACK[0x57A0] + ((55 * HIBYTE(v778)) ^ 0x1A9ELL));
  LOBYTE(v761) = (((v761 ^ 0x3C) - 55) ^ ((v761 ^ 0x58) - 83) ^ ((v761 ^ 0x9E) + 107)) + 3;
  LOBYTE(v768) = v761 & 0xB7 ^ 0x6B;
  LODWORD(STACK[0x5620]) = ((v761 ^ (2 * ((v761 ^ 0x60) & (2 * ((v761 ^ 0x60) & (2 * ((v761 ^ 0x60) & (2 * ((v761 ^ 0x60) & (2 * ((v761 ^ 0x60) & (2 * (((2 * v761) & 0x42 ^ 0x56) & v761 ^ v768)) ^ v768)) ^ v768)) ^ v768)) ^ v768)) ^ v768))) ^ 0xE67A5E95) & ((v778 << 8) ^ 0xE67AFFFF) | (v778 << 8) & 0x1985A100;
  LODWORD(STACK[0x5480]) = 545 * BYTE2(v765) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v765) + 702505)) >> 32);
  LODWORD(v773) = (v765 >> 8) - ((v765 >> 7) & 0x1FFFF8A) - 59;
  LOBYTE(v773) = (((v773 ^ 0xD8) - 120) ^ ((v773 ^ 0x44) + 28) ^ ((v773 ^ 0x98) - 56)) + 74;
  LOBYTE(v774) = v773 & 0xF7 ^ 0xBA;
  LOBYTE(v773) = v773 ^ *(STACK[0x57A0] + (BYTE1(v765) ^ 6u) + 136808) ^ (2 * ((v773 ^ 2) & (2 * ((v773 ^ 2) & (2 * ((v773 ^ 2) & (2 * ((v773 ^ 2) & (2 * ((v773 ^ 2) & (2 * ((v773 ^ 2) & (2 * v774) ^ v774)) ^ v774)) ^ v774)) ^ v774)) ^ v774)) ^ v774));
  LOBYTE(v778) = ((((v775 & 2) - (v775 | 0xFD)) & 6 ^ 0x5E) + 77) ^ ((((v775 & 2) - (v775 | 0xFD)) & 6) + 83) ^ ((((v775 & 2) - (v775 | 0xFD)) & 6 ^ 0xC7) - 42);
  v779 = 545 * (((((v773 ^ 0xBF) - 7) ^ ((v773 ^ 0xDF) - 103) ^ ((v773 ^ 0x46) + 2)) - 31) * (v778 + 68) - 67 * v778 + 52) + 702505;
  v780 = v779 - 1552 * ((2767376 * v779) >> 32);
  v781 = 545 * BYTE1(v722) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v722) + 702505)) >> 32);
  v782 = 2 * (STACK[0x5640] & 0xDADADADA);
  v783 = v782 ^ 0xFF7BCB5A;
  LODWORD(v728) = LODWORD(STACK[0x53C0]) ^ ((STACK[0x5600] & 0x103410B4 ^ 0x1A480292 ^ (LODWORD(STACK[0x5660]) ^ 0x7920D540u) & STACK[0x56E0]) << STACK[0x57B0]) ^ (STACK[0x52E0] >> STACK[0x5780]) ^ __ROR4__(*(v469 + 4 * (545 * BYTE1(v762) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v762) + 702505)) >> 32))), 16) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v776) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v776) + 702505)) >> 32))), 8) ^ *(v469 + 4 * (545 * BYTE3(v765) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v765) + 702505)) >> 32)));
  LODWORD(v738) = __ROR4__(*(v469 + 4 * (545 * v722 + 702505 - 1552 * ((2767376 * (545 * v722 + 702505)) >> 32))), 24);
  LODWORD(v765) = (v728 ^ v738) - 2097460732 - ((2 * (v728 ^ v738)) & 0x5F69408);
  v784 = v704 ^ (((v783 & STACK[0x5760]) << STACK[0x5790]) + ((v782 & 0x9424A190 ^ 0xD668C918 ^ v783 & (v744 ^ 0xC689E876)) >> STACK[0x57C0])) ^ LODWORD(STACK[0x53D0]) ^ __ROR4__(*(v469 + 4 * (v777 - 1552 * ((2767376 * v777) >> 32))), 16) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5480])), 8) ^ *(v469 + 4 * (545 * BYTE3(v722) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v722) + 702505)) >> 32))) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x54C0])), 24);
  LODWORD(v722) = LODWORD(STACK[0x53D8]) ^ 0xE67A5E22 ^ __ROR4__(*(v469 + 4 * v780), 16) ^ *(v469 + 4 * (545 * BYTE3(v762) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v762) + 702505)) >> 32))) ^ LODWORD(STACK[0x56D0]);
  v785 = v704 ^ (STACK[0x5530] | (STACK[0x52E0] >> STACK[0x57C0])) ^ ((v722 ^ LODWORD(STACK[0x5620])) - 2097460732 - ((2 * (v722 ^ LODWORD(STACK[0x5620]))) & 0x5F69408));
  LODWORD(v747) = LODWORD(STACK[0x53F8]) ^ (((v782 & 0x24A00190 ^ 0x2E280B10 ^ v783 & (v744 ^ 0x3E4D0A7E)) >> STACK[0x5780]) | ((v782 & 0x94803490 ^ 0xD4420A18 ^ v783 & (LODWORD(STACK[0x5660]) ^ 0xB79EF96E)) << STACK[0x57B0])) ^ __ROR4__(*(v469 + 4 * LODWORD(STACK[0x5700])), 24) ^ __ROR4__(*(v469 + 4 * v781), 16) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v762) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v762) + 702505)) >> 32))), 8) ^ *(v469 + 4 * (545 * HIBYTE(v776) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v776) + 702505)) >> 32)));
  LODWORD(v724) = v747 - 2097460732 - ((2 * v747) & 0x5F69408);
  v786 = v765 ^ v704;
  v787 = v724 ^ v704;
  LOBYTE(v777) = *(STACK[0x57A0] + ((55 * BYTE1(v785)) ^ 0xE2u) + 158393);
  LOBYTE(v777) = (((v777 ^ 0xEC) + 20) ^ ((v777 ^ 0x7E) - 126) ^ ((v777 ^ 0x2F) - 47)) + 22;
  LOBYTE(v765) = v777 & 0x45 ^ 0x5C;
  LOBYTE(v777) = v777 ^ (2 * ((v777 ^ 0x2C) & (2 * ((v777 ^ 0x2C) & (2 * ((v777 ^ 0x2C) & (2 * ((v777 ^ 0x2C) & (2 * ((v777 ^ 0x2C) & (2 * (v777 & (2 * v777) & 0x5A ^ v765)) ^ v765)) ^ v765)) ^ v765)) ^ v765)) ^ v765));
  v788 = 545 * ((((v777 ^ 0x4F) + 82) ^ ((v777 ^ 0x8C) - 109) ^ ((v777 ^ 0x46) + 89)) + 87) + 562440;
  v789 = STACK[0x50C0];
  v790 = STACK[0x50B8];
  v791 = *(v469 + 4 * (v788 - 1552 * ((2767376 * v788) >> 32)));
  if (LODWORD(STACK[0x50B8]))
  {
    v792 = (LODWORD(STACK[0x54E0]) >> LODWORD(STACK[0x50B8])) + (LODWORD(STACK[0x54E0]) << LODWORD(STACK[0x50C0]));
  }

  else
  {
    v792 = STACK[0x54E0];
  }

  v793 = STACK[0x5570] ^ 0xF5F5F5F5;
  v794 = v793 ^ v792 ^ __ROR4__(v791, 24) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v787) + 562440 - 1552 * ((2767376 * (545 * BYTE2(v787) + 562440)) >> 32))), 16) ^ *(v469 + 4 * (545 * (v784 ^ 4) + 562440 - 1552 * ((2767376 * (545 * (v784 ^ 4u) + 562440)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * HIBYTE(v786) + 562440 - 1552 * ((2767376 * (545 * HIBYTE(v786) + 562440)) >> 32))), 8);
  if (v790)
  {
    v794 = (v794 << v790) | (v794 >> v789);
  }

  v795 = (((*(STACK[0x57A0] + (BYTE2(v785) ^ 0x1C36)) ^ 0x74) - 116) ^ ((*(STACK[0x57A0] + (BYTE2(v785) ^ 0x1C36)) ^ 0x96) + 106) ^ ((*(STACK[0x57A0] + (BYTE2(v785) ^ 0x1C36)) ^ 0x5F) - 95)) + 107;
  v796 = v795 & 0x73 ^ 0x4A;
  v797 = 2 * ((2 * v795) & v795 ^ (2 * v795) ^ v796);
  v798 = 2 * ((2 * (v797 ^ v796 ^ v797 & v795)) ^ v796 ^ (2 * (v797 ^ v796 ^ v797 & v795)) & v795);
  v799 = 2 * ((2 * (v798 ^ v796 ^ v798 & v795)) ^ v796 ^ (2 * (v798 ^ v796 ^ v798 & v795)) & v795);
  v800 = v795 ^ (2 * (v799 ^ v796 ^ v799 & v795));
  v801 = 545 * (LODWORD(STACK[0x54B0]) - 85 * (((v800 ^ 2) - 16) ^ ((v800 ^ 0x28) - 58) ^ ((v800 ^ 0x43) - 81))) + 562440;
  v802 = v801 - 1552 * ((2767376 * v801) >> 32);
  v803 = (LODWORD(STACK[0x54F0]) >> v790) | (LODWORD(STACK[0x54F0]) << v789);
  if (!v790)
  {
    v803 = STACK[0x54F0];
  }

  v804 = (LODWORD(STACK[0x5510]) << v789) | (LODWORD(STACK[0x5510]) >> v790);
  if (!v790)
  {
    v804 = STACK[0x5510];
  }

  v805 = v793 ^ LODWORD(STACK[0x5540]) ^ *(v469 + 4 * (545 * v786 + 562440 - 1552 * ((2767376 * (545 * v786 + 562440)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * HIBYTE(v787) + 562440 - 1552 * ((2767376 * (545 * HIBYTE(v787) + 562440)) >> 32))), 8) ^ __ROR4__(*(v469 + 4 * v802), 16) ^ __ROR4__(*(v469 + 4 * (545 * (BYTE1(v784) ^ 0x4A) + 562440 - 1552 * ((2767376 * (545 * (BYTE1(v784) ^ 0x4Au) + 562440)) >> 32))), 24);
  if (v790)
  {
    v805 = (v805 << v790) ^ (v805 >> v789);
  }

  v806 = *(STACK[0x57A0] + (((v784 >> 21) & 0xF8 | (v784 >> 29)) ^ 0xE8) + 89792);
  v807 = (v806 & 0x28 ^ 0x20u) << (((BYTE2(v786) & 0x2F ^ 0xEF) + (BYTE2(v786) & 0x2F)) & ((v782 & 0x10 ^ 0x10) + (v782 & 0x10)) | 1);
  LOBYTE(v807) = (v807 - ((2 * v807) & 0x80) + 108) ^ v806;
  LODWORD(v807) = 545 * ((((v807 ^ 0x78) - 6) ^ ((v807 ^ 0xC3) + 67) ^ ((v807 ^ 0x1F) - 97)) + 62) + 562440;
  v808 = 55 * HIBYTE(*(v469 + 4 * (545 * BYTE1(v787) + 562440 - 1552 * ((2767376 * (545 * BYTE1(v787) + 562440)) >> 32))));
  LOBYTE(v808) = ((((v808 - ((2 * v808) & 0x88) + 68) ^ 0x26) - 123) ^ (((v808 - ((2 * v808) & 0x88) + 68) ^ 0xF8) + 91) ^ (((v808 - ((2 * v808) & 0x88) + 68) ^ 0x29) - 116)) - 46;
  v809 = v808 & 0xDB ^ 0xB8;
  LOBYTE(v808) = v808 ^ *(STACK[0x57A0] + ((55 * HIBYTE(*(v469 + 4 * (545 * BYTE1(v787) + 562440 - 1552 * ((2767376 * (545 * BYTE1(v787) + 562440)) >> 32))))) ^ 0x2CLL) + 124683) ^ (2 * ((v808 ^ 0x6A) & (2 * ((v808 ^ 0x6A) & (2 * ((v808 ^ 0x6A) & (2 * ((v808 ^ 0x6A) & (2 * ((v808 ^ 0x6A) & (2 * ((v808 ^ 0xC3) & (2 * v808) & 0x56 ^ v809)) ^ v809)) ^ v809)) ^ v809)) ^ v809)) ^ v809));
  v810 = __ROR4__(__ROR4__(v803 ^ STACK[0x5570] ^ __ROR4__(*(v469 + 4 * (v807 - 1552 * ((2767376 * v807) >> 32))), 8) ^ *(v469 + 4 * (545 * v785 + 562440 - 1552 * ((2767376 * (545 * v785 + 562440)) >> 32))) ^ __ROR4__(*(v469 + 4 * (545 * BYTE2(v786) + 562440 - 1552 * ((2767376 * (545 * BYTE2(v786) + 562440)) >> 32))), 16) ^ (((((v808 ^ 0xCF) + 109) ^ ((v808 ^ 0x82) + 34) ^ ((v808 ^ 0xEE) + 78)) - 14) | (*(v469 + 4 * (545 * BYTE1(v787) + 562440 - 1552 * ((2767376 * (545 * BYTE1(v787) + 562440)) >> 32))) << 8)), 23) ^ 0x428DE7EC, 9) ^ 0x3D4B306;
  v811 = 545 * BYTE1(v786) + 562440;
  if (v789)
  {
    v810 = (v810 >> v789) | (v810 << v790);
  }

  v812 = *(v469 + 4 * (v811 - 1552 * ((2767376 * v811) >> 32)));
  v813 = *(STACK[0x57A0] + (((((v812 >> 21) & 0xF8 | (v812 >> 29)) ^ 0x873CFAB4) + 352757706) ^ ((((v812 >> 21) & 0xF8 | (v812 >> 29)) ^ 0xB7A67811) + 630990189) ^ ((((v812 >> 21) & 0xF8 | (v812 >> 29)) ^ 0x309A82EA) - 1566515304)) + 1841725837) ^ 0x14;
  v814 = ((2 * v813) & 0x68 | 0x10) ^ v813;
  v815 = v793 ^ v804 ^ *(v469 + 4 * (545 * v787 + 562440 - 1552 * ((2767376 * (545 * v787 + 562440)) >> 32))) ^ __ROR4__(*(v469 + 4 * ((545 * (((BYTE2(v784) ^ 0xEE0DB22A) + 340288789) ^ ((BYTE2(v784) ^ 0x750D2BE1) - 1891042080) ^ ((BYTE2(v784) ^ 0x9B009930) + 1631931919)) + 827865218) % 0x610)), 16) ^ __ROR4__(*(v469 + 4 * ((545 * (((HIBYTE(v785) ^ LODWORD(STACK[0x4770])) - 1735709426) ^ ((HIBYTE(v785) ^ 0xC8826D5) - 529345077) ^ ((HIBYTE(v785) ^ 0x78F9F8C7) - 1811739687)) + 2110324200) % 0x610u)), 8) ^ (((((v814 ^ 0x2D) - 97) ^ ((v814 ^ 0x3E) - 114) ^ ((v814 ^ 0x98) + 44)) + 43) | (v812 << 8));
  if (v789)
  {
    v815 = (v815 >> v789) + (v815 << v790);
  }

  v816 = LODWORD(STACK[0x5358]) - 2 * LODWORD(STACK[0x50C8]);
  if (STACK[0x5358])
  {
    v817 = v815;
  }

  else
  {
    v817 = v810;
  }

  if (STACK[0x5358])
  {
    v815 = v805;
    v805 = v794;
  }

  else
  {
    v810 = v794;
  }

  if ((v816 & 2) != 0)
  {
    v818 = v805;
  }

  else
  {
    v818 = v817;
  }

  if ((v816 & 2) != 0)
  {
    v819 = v815;
  }

  else
  {
    v819 = v810;
  }

  if ((v816 & 2) != 0)
  {
    v815 = v810;
  }

  else
  {
    v817 = v805;
  }

  v820 = LODWORD(STACK[0x56C0]) - 2 * LODWORD(STACK[0x5680]);
  v821 = STACK[0x55F0];
  v822 = STACK[0x55C0];
  if (STACK[0x56C0])
  {
    v823 = STACK[0x55F0];
  }

  else
  {
    v823 = STACK[0x55C0];
  }

  v824 = STACK[0x5580];
  if (STACK[0x56C0])
  {
    v821 = STACK[0x55B0];
  }

  else
  {
    v822 = STACK[0x5580];
    v824 = STACK[0x55B0];
  }

  v825 = (v820 & 2) == 0;
  if ((v820 & 2) != 0)
  {
    v826 = v821;
  }

  else
  {
    v826 = v822;
  }

  if (v825)
  {
    v822 = v821;
    v827 = v823;
  }

  else
  {
    v827 = v824;
  }

  if (!v825)
  {
    v824 = v823;
  }

  v828 = STACK[0x54A0];
  v829 = v824 ^ v818 ^ LODWORD(STACK[0x54A0]);
  v830 = v826 ^ (8 * v829);
  v831 = v819 ^ v828 ^ v822 ^ v827 ^ ((v819 ^ v828 ^ v822) >> 8);
  v832 = v817 ^ LODWORD(STACK[0x54A0]);
  v833 = v822 ^ v817 ^ ((v831 ^ 0x88000000 ^ v832) >> 3) ^ v831 ^ 0x11999999;
  v834 = (v829 ^ v830 ^ v815 ^ v828 ^ 0xCCCCCCC8 ^ v831 ^ (4 * (v829 ^ v830 ^ v815 ^ v828 ^ 0xCCCCCCC8)) ^ 0x22AAAAA8) + 900259247 * ((v833 ^ v828 ^ v819) - (v828 ^ 0x88888888));
  v835 = v832 ^ v824 ^ (-2014603453 * (v815 ^ 0x88888888)) ^ (-2014603453 * (v824 ^ v818 ^ 0x46666662 ^ (v829 >> 6) ^ v829 ^ v830)) ^ v834 ^ ((v834 ^ v832) >> 7);
  v836 = v818 ^ LODWORD(STACK[0x54A0]) ^ v834 ^ v835;
  v837 = *(STACK[0x4E50] + 4 * ((v819 ^ 0x88888888) % 0x101 + 52236)) ^ 0xF54C9CEF;
  v838 = v836 ^ 0x1111111;
  v839 = v832 ^ v838 ^ (v837 + (v835 ^ 0x89999999) + ((v833 % 0x101 + ((v833 % 0x101) ^ 0x6587166D) + *(STACK[0x4E50] + 4 * (v833 % 0x101 + 17669))) ^ 0x65C7162E) + 1) ^ ((v838 ^ v832) >> 5);
  v840 = v830 ^ (v829 >> 6) ^ 0x46666662;
  v841 = v838 - ((2 * v838) & 0x1C57F1D0ELL) + 0x5C24353DE2BF8E87;
  v842 = v839 ^ 0x8CCCCCCC;
  v843 = ((*(STACK[0x4E50] + 4 * ((v840 ^ v815) % 0x101 + 53779)) - (((v840 ^ v815) % 0x101) ^ 0x4CD8189A)) ^ 0x4C44F33B) + (v833 ^ v828) - (*(STACK[0x4E50] + 4 * ((v828 ^ 0x88888888) % 0x101 + 53264)) ^ LODWORD(STACK[0x4768]));
  v844 = v843 - ((2 * v843) & 0x15E2992FALL) - 0x13537BDA50EB3683;
  v845 = *(STACK[0x57A0] + (((v838 >> 13) & 0xF8 | (v836 >> 21) & 7) ^ 0x2A62));
  v846 = v840 - ((2 * v840) & 0x1207B3C96) + 0x228D7D8903D9E4BLL;
  LOBYTE(v829) = ((((8 * (v845 ^ 0xDE)) ^ 0x61) + 11) ^ (((8 * (v845 ^ 0xDE)) ^ 0xE6) - 114) ^ (((8 * (v845 ^ 0xDE)) ^ 0xAF) - 59)) + 13;
  LOBYTE(v836) = v829 & 0x9F ^ 0x5D;
  v847 = v829 ^ v845 ^ (2 * ((v829 ^ 0x6E) & (2 * ((v829 ^ 0x6E) & (2 * ((v829 ^ 0x6E) & (2 * ((v829 ^ 0x6E) & (2 * ((v829 ^ 0x6E) & (2 * (((2 * v829) & 0x5E ^ 0x76) & (v829 ^ 0x6E) ^ v836)) ^ v836)) ^ v836)) ^ v836)) ^ v836)) ^ v836));
  LOBYTE(v836) = *((HIBYTE(v839) ^ 3) + STACK[0x57A0] + 42304);
  v848 = ((v847 ^ 0x39) + 38) ^ ((v847 ^ 0xC9) - 42) ^ ((v847 ^ 0xA5) - 70);
  LOBYTE(v839) = v848 + 81;
  LOBYTE(v829) = (v848 - 47) & 0xC9 | 0x16;
  v849 = v829 ^ (v848 + 81) & 0x3C;
  v850 = STACK[0x47A8];
  v851 = STACK[0x57A0];
  LOBYTE(v836) = ((v836 ^ 0x9E) + 98) ^ ((v836 ^ 0x94) + 108) ^ ((v836 ^ 0xB7) + 73);
  LOBYTE(v833) = v836 + 122;
  LOBYTE(v836) = (v836 - 6) & 0xA1 | 0xC;
  v852 = v836 ^ v833 & 0x18;
  LOBYTE(v836) = (v833 ^ 0x20) & (2 * ((v833 ^ 0x20) & (2 * ((v833 ^ 0x20) & (2 * ((v833 ^ 0x20) & (2 * ((v833 ^ 0x20) & (2 * ((v833 ^ 0x20) & (2 * v836) ^ v852)) ^ v852)) ^ v852)) ^ v852)) ^ v852)) ^ v852;
  v853 = STACK[0x4F60];
  v853[4] = *(STACK[0x47A8] + ((v844 >> 24) ^ 0xECAC8425AFLL));
  v854 = *(v850 + (BYTE2(v846) ^ 0x3DLL));
  LOBYTE(v836) = v833 ^ (2 * v836);
  v855 = v854 >> 3;
  LOBYTE(v833) = *(v851 + ((((((32 * v854) ^ 0xD4) & (v855 ^ 0xE9) | v855 & 0xB) ^ 0x811B75D3) + 2128906873) ^ (((((32 * v854) ^ 0xD4) & (v855 ^ 0xE9) | v855 & 0xB) ^ 0x46343B7E) - 1177828138) ^ (((((32 * v854) ^ 0xD4) & (v855 ^ 0xE9) | v855 & 0xB) ^ 0xC72F4E44) + 953201136)) + 41725);
  LOBYTE(v854) = ((v833 ^ 0x27) - 9) ^ ((v833 ^ 0x56) - 120) ^ ((v833 ^ 0x7C) - 82);
  LOBYTE(v828) = v854 & 0x29 ^ 0xDD;
  v856 = (4 * v854) ^ (8 * ((v854 ^ 0x1E) & (2 * ((v854 ^ 0x3E) & (2 * ((v854 ^ 0x3E) & (2 * ((v854 ^ 0x3E) & (2 * v828) ^ v828)) ^ v828)) ^ v828)) ^ v828)) ^ 0x41;
  LOBYTE(v833) = 117 * (((v856 ^ v833 ^ 0x10) - 17) ^ ((v856 ^ v833) - 1) ^ ((v856 ^ v833 ^ 0x15) - 20)) - 84;
  v857 = v833 ^ 0x28;
  v853[13] = v833 ^ (2 * (v857 & (2 * (v857 & (2 * (v857 & (2 * (v857 & (2 * (v833 & 0x3C ^ 0xCA ^ v833 & 0x14)) ^ v833 & 0x3C ^ 0xCA)) ^ v833 & 0x3C ^ 0xCA)) ^ v833 & 0x3C ^ 0xCA)) ^ v833 & 0x3C ^ 0xCA)) ^ 0x81;
  v853[1] = *(v850 + BYTE2(v842));
  LOBYTE(v836) = LODWORD(STACK[0x51D0]) - 85 * (((v836 ^ 0x73) + 76) ^ ((v836 ^ 0xA4) - 99) ^ ((v836 ^ 0x96) - 81));
  v853[12] = *(v850 + ((v846 >> 24) ^ 0x228D7D890));
  v853[11] = *(v850 + v838);
  *v853 = *(v850 + v836);
  v853[14] = *(v850 + (BYTE1(v846) ^ 0x9ELL));
  v853[15] = *(v850 + v840);
  v853[2] = *(v850 + BYTE1(v842));
  v853[9] = *(v850 + ((v839 ^ (2 * ((v839 ^ 0x48) & (2 * ((v839 ^ 0x48) & (2 * ((v839 ^ 0x48) & (2 * ((v839 ^ 0x48) & (2 * ((v839 ^ 0x48) & (2 * (v839 & (2 * v829) ^ v849)) ^ v849)) ^ v849)) ^ v849)) ^ v849)) ^ v849))) ^ 0xF5u));
  LOBYTE(v838) = 55 * (((*(v850 + (BYTE1(v844) ^ 0xC9)) ^ 0x4A) - 74) ^ ((*(v850 + (BYTE1(v844) ^ 0xC9)) ^ 0x67) - 103) ^ ((*(v850 + (BYTE1(v844) ^ 0xC9)) ^ 0x90) + 112)) - 98;
  LOBYTE(v840) = v838 & 0xAD ^ 0x78;
  LODWORD(v838) = (v838 ^ (2 * ((v838 ^ 0x7C) & (2 * ((v838 ^ 0x7C) & (2 * ((v838 ^ 0x7C) & (2 * ((v838 ^ 0x7C) & (2 * ((v838 ^ 0x7C) & (2 * (v838 & (2 * v838) & 0x7A ^ v840)) ^ v840)) ^ v840)) ^ v840)) ^ v840)) ^ v840))) ^ 0xB;
  LOBYTE(v838) = *(v851 + (((v838 ^ 0x730028B2) - 1929390258) ^ ((v838 ^ 0x4C651754) - 1281693524) ^ ((v838 ^ 0x3F653F85) - 1063600005)) + 135111);
  LOBYTE(v838) = (((v838 ^ 0x66) - 102) ^ ((v838 ^ 0x9B) + 101) ^ ((v838 ^ 0x40) - 64)) - 127;
  LOBYTE(v840) = v838 & 0x35 ^ 0x5B;
  LOBYTE(v838) = v838 ^ (2 * ((v838 ^ 6) & (2 * ((v838 ^ 6) & (2 * ((v838 ^ 6) & (2 * ((v838 ^ 6) & (2 * ((v838 ^ 6) & (2 * (((2 * (v838 & 7)) ^ 0x32) & (v838 ^ 6) ^ v840)) ^ v840)) ^ v840)) ^ v840)) ^ v840)) ^ v840));
  LOBYTE(v840) = (((v838 ^ 0x5E) + 82) ^ ((v838 ^ 0x64) + 108) ^ ((v838 ^ 0x9D) - 109)) - 57;
  LOBYTE(v839) = v840 & 0x2F ^ 0x56;
  v858 = STACK[0x5128];
  v853[6] = v840 ^ (2 * ((v840 ^ 2) & (2 * ((v840 ^ 2) & (2 * ((v840 ^ 2) & (2 * ((v840 ^ 2) & (2 * ((v840 ^ 2) & (2 * ((v840 ^ 2) & (2 * v840) & 6 ^ v839)) ^ v839)) ^ v839)) ^ v839)) ^ v839)) ^ v839)) ^ 0x92;
  v853[10] = *(v850 + (BYTE1(v841) ^ 0x8ELL));
  v853[8] = *(v850 + ((v841 >> 24) ^ 0x5C24353DE2));
  v853[3] = *(v850 + v842);
  v853[7] = *(v850 + v843);
  LODWORD(v841) = *(v850 + (BYTE2(v844) ^ 0x14));
  LODWORD(v841) = *(((((v843 & 0xB4 ^ 0xB4) + (v843 & 0xB4) - ((2 * ((v843 & 0xB4 ^ 0xB4) + (v843 & 0xB4))) & 0xB0) - 40) ^ ((v841 >> 3) | (32 * v841))) ^ 0x78u) + 132728 + v851 + 1514);
  LODWORD(v841) = LODWORD(STACK[0x4950]) + 117 * (v841 ^ ((v841 ^ 0xFFFFFFD0) + 107) ^ ((v841 ^ 0xFFFFFFCC) + 119) ^ 0xFFFFFFC5);
  LOBYTE(v842) = v841 & 0x49 ^ 0x5B;
  LOBYTE(v844) = v841 ^ 0x5A;
  v853[5] = v841 ^ (2 * (v844 & (2 * (v844 & (2 * (v844 & (2 * (v844 & (2 * (v844 & (2 * (((2 * v841) & 0x36 ^ 0x12) & (v841 ^ 0x12) ^ v842)) ^ v842)) ^ v842)) ^ v842)) ^ v842)) ^ v842)) ^ 0xF4;
  return (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x5260]) ^ (2 * (v858 < LODWORD(STACK[0x49D0]))))))();
}