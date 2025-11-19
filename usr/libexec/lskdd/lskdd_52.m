uint64_t sub_100DEB530(__n128 a1)
{
  v2[-1] = a1;
  *v2 = a1;
  return (*(v5 + 8 * (((v1 != 0) * v4) ^ v3)))();
}

uint64_t sub_100DEB558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v18 = v8 ^ STACK[0x3B78];
  v19 = LODWORD(STACK[0x3730]) ^ LODWORD(STACK[0x3B70]);
  v20 = v10 ^ LODWORD(STACK[0x3B68]);
  LODWORD(STACK[0x37A0]) = STACK[0x39C0] ^ LODWORD(STACK[0x3B48]);
  v21 = v12 ^ STACK[0x3B20];
  v22 = LODWORD(STACK[0x3768]) ^ STACK[0x3800];
  v23 = v9 ^ STACK[0x3B00];
  v24 = v11 ^ LODWORD(STACK[0x3AF0]);
  v25 = LODWORD(STACK[0x3C00]) ^ STACK[0x3AE8];
  LODWORD(STACK[0x3AE0]) ^= LODWORD(STACK[0x3C08]);
  LODWORD(STACK[0x3C80]) = LODWORD(STACK[0x3710]) ^ STACK[0x3AD8] ^ LODWORD(STACK[0x3790]);
  LODWORD(STACK[0x3AE8]) = LODWORD(STACK[0x3708]) ^ LODWORD(STACK[0x3A60]);
  LODWORD(STACK[0x3AF0]) = LODWORD(STACK[0x3738]) ^ LODWORD(STACK[0x3B18]);
  STACK[0x3B20] = LODWORD(STACK[0x3C90]) ^ LODWORD(STACK[0x3C10]) ^ (LODWORD(STACK[0x3980]) ^ LODWORD(STACK[0x3798]));
  STACK[0x3B68] = STACK[0x3988] ^ LODWORD(STACK[0x37B8]) ^ LODWORD(STACK[0x3788]);
  STACK[0x3B70] = (LODWORD(STACK[0x3940]) ^ LODWORD(STACK[0x37A8])) ^ LODWORD(STACK[0x3778]);
  LODWORD(STACK[0x3B00]) = LODWORD(STACK[0x3948]) ^ LODWORD(STACK[0x3BF8]);
  LODWORD(STACK[0x3B18]) = LODWORD(STACK[0x3938]) ^ LODWORD(STACK[0x3760]);
  STACK[0x3B78] = STACK[0x3930] ^ LODWORD(STACK[0x3C20]) ^ LODWORD(STACK[0x3758]);
  STACK[0x3BF8] = STACK[0x3920] ^ LODWORD(STACK[0x3700]) ^ LODWORD(STACK[0x3750]);
  v26 = LODWORD(STACK[0x3908]) ^ LODWORD(STACK[0x3720]);
  STACK[0x3C20] = (LODWORD(STACK[0x3840]) ^ LODWORD(STACK[0x3C18])) ^ LODWORD(STACK[0x36F8]);
  LODWORD(STACK[0x3C18]) = LODWORD(STACK[0x37E8]) ^ LODWORD(STACK[0x3820]);
  STACK[0x3C00] = (LODWORD(STACK[0x3810]) ^ LODWORD(STACK[0x37C0])) ^ LODWORD(STACK[0x3718]);
  STACK[0x3C10] = STACK[0x3808] ^ LODWORD(STACK[0x3C60]) ^ LODWORD(STACK[0x3998]);
  v27 = STACK[0x3A90];
  LODWORD(STACK[0x39C0]) = *(STACK[0x3A90] + a8) | (*(STACK[0x3A90] + BYTE1(a8)) << 8) | (*(STACK[0x3A90] + BYTE2(a8)) << 16) | (*(STACK[0x3A90] + (a8 >> 24)) << 24);
  v28 = LODWORD(STACK[0x71B0]) ^ LODWORD(STACK[0x6884]);
  LODWORD(STACK[0x3C60]) = v28;
  v29 = STACK[0x3838];
  v30 = *(v27 + v15) | (*(v27 + BYTE1(v15)) << 8);
  v31 = *(v27 + BYTE2(v15));
  LODWORD(STACK[0x3988]) = *(v27 + (v28 ^ v29)) | (*(v27 + ((v28 ^ v29) >> 8)) << 8) | (*(v27 + ((v28 ^ v29) >> 16)) << 16) | (*(v27 + ((v28 ^ v29) >> 24)) << 24);
  v32 = v30 | (v31 << 16);
  v33 = STACK[0x540C];
  LODWORD(STACK[0x3C08]) = STACK[0x540C];
  v34 = v33 ^ LODWORD(STACK[0x3C68]) ^ LODWORD(STACK[0x70E8]);
  v35 = *(v27 + v34) | (*(v27 + BYTE1(v34)) << 8);
  LODWORD(STACK[0x3980]) = v32 | (*(v27 + (v15 >> 24)) << 24);
  LODWORD(STACK[0x1734]) = LOBYTE(STACK[0x535D]) - (STACK[0x3BA0] >> 16);
  LODWORD(STACK[0x3C90]) = v18 ^ LODWORD(STACK[0x6754]);
  v36 = STACK[0x3D88];
  v37 = STACK[0x3D88] ^ LODWORD(STACK[0x3B08]) ^ STACK[0x3D70];
  LODWORD(STACK[0x3820]) = v37;
  v38 = v35 | (*(v27 + BYTE2(v34)) << 16);
  v39 = v19 ^ LODWORD(STACK[0x6888]);
  LODWORD(STACK[0x3810]) = v39;
  LODWORD(STACK[0x3D70]) = v20 ^ LODWORD(STACK[0x676C]);
  v40 = *(v27 + (v34 >> 24));
  LODWORD(STACK[0x3C70]) = v21 ^ LODWORD(STACK[0x6780]);
  LODWORD(STACK[0x3940]) = v38 | (v40 << 24);
  v41 = STACK[0x3D78];
  LODWORD(STACK[0x3C68]) = LODWORD(STACK[0x3A28]) ^ STACK[0x3D78];
  v42 = STACK[0x3B88];
  LODWORD(STACK[0x3D68]) = STACK[0x3D68] ^ LODWORD(STACK[0x3B88]) ^ v41 ^ LODWORD(STACK[0x3818]);
  LODWORD(v41) = *(v27 + v14) | (*(v27 + BYTE1(v14)) << 8);
  v43 = STACK[0x3B80];
  v44 = STACK[0x3D98] ^ LODWORD(STACK[0x3B80]) ^ v22;
  LODWORD(STACK[0x3808]) = v44;
  v45 = v43 ^ v42 ^ v17 ^ LODWORD(STACK[0x6794]);
  LODWORD(v34) = STACK[0x52BC];
  v46 = STACK[0x52C0];
  LODWORD(STACK[0x3840]) = STACK[0x52C0];
  LODWORD(STACK[0x3D78]) = v45 ^ v46 ^ v34;
  LODWORD(STACK[0x3798]) = v23 ^ LODWORD(STACK[0x67A0]);
  v47 = v24 ^ LODWORD(STACK[0x67A8]);
  v48 = *(v27 + BYTE2(v14));
  STACK[0x2A40] = v48;
  LODWORD(STACK[0x3A28]) = v41 | (v48 << 16) | (*(v27 + (v14 >> 24)) << 24);
  v49 = v25 ^ LODWORD(STACK[0x67B0]);
  LODWORD(STACK[0x3B48]) = v49;
  v50 = LODWORD(STACK[0x3AE0]) ^ LODWORD(STACK[0x67B8]);
  v51 = LODWORD(STACK[0x39F0]) ^ v29 ^ v16;
  LODWORD(v48) = *(v27 + (LOBYTE(STACK[0x39F0]) ^ v29 ^ v16)) | (*(v27 + ((LOWORD(STACK[0x39F0]) ^ v29 ^ v16) >> 8)) << 8);
  v52 = STACK[0x3CF0];
  v53 = LODWORD(STACK[0x3AE8]) ^ LODWORD(STACK[0x3848]) ^ LODWORD(STACK[0x3CF0]);
  LODWORD(STACK[0x3818]) = v53;
  v54 = v48 | (*(v27 + BYTE2(v51)) << 16);
  v55 = STACK[0x3C78];
  v56 = LODWORD(STACK[0x3B98]) ^ 0xA6EF0179 ^ LODWORD(STACK[0x3C78]) ^ LODWORD(STACK[0x674C]);
  LODWORD(STACK[0x3788]) = LODWORD(STACK[0x3AF0]) ^ LODWORD(STACK[0x6788]);
  v57 = LODWORD(STACK[0x3A68]) ^ v29 ^ LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x3938]) = v54 | (*(v27 + (v51 >> 24)) << 24);
  LODWORD(v51) = LODWORD(STACK[0x3850]) ^ v52;
  v58 = STACK[0x3BC8];
  v59 = LODWORD(STACK[0x39E8]) ^ LODWORD(STACK[0x3BC8]) ^ v51;
  v60 = (LODWORD(STACK[0x3B00]) ^ LODWORD(STACK[0x688C]));
  v61 = STACK[0x39A8] ^ v55 ^ LODWORD(STACK[0x3860]);
  v62 = STACK[0x3C88] ^ v36 ^ LODWORD(STACK[0x3B18]);
  v63 = LODWORD(STACK[0x37C8]) ^ LODWORD(STACK[0x3B90]);
  v64 = LODWORD(STACK[0x39A0]) ^ LODWORD(STACK[0x37C8]) ^ LODWORD(STACK[0x6824]);
  LODWORD(STACK[0x3930]) = *(v27 + STACK[0x3958]) | (*(v27 + BYTE2(STACK[0x3958])) << 16) | (*(v27 + BYTE1(STACK[0x3958])) << 8) | (*(v27 + (STACK[0x3958] >> 24)) << 24);
  v65 = STACK[0x3E38] ^ STACK[0x3D80] ^ v26;
  v66 = STACK[0x3D40];
  LODWORD(v36) = *(v27 + STACK[0x3D40]) | (*(v27 + BYTE1(STACK[0x3D40])) << 8);
  LODWORD(v51) = LODWORD(STACK[0x37A0]) ^ v34;
  LODWORD(STACK[0x3858]) = v51;
  v67 = v47 ^ v34;
  LODWORD(STACK[0x3838]) = v47 ^ v34;
  LODWORD(STACK[0x3B90]) = v50 ^ v34;
  v68 = v56 ^ v34;
  LODWORD(STACK[0x37E8]) = v56 ^ v34;
  v69 = v64 ^ v34;
  v70 = LODWORD(STACK[0x3C18]) ^ v34;
  LODWORD(STACK[0x3920]) = v36 | (*(v27 + BYTE2(v66)) << 16);
  v71 = (LODWORD(STACK[0x37F0]) ^ LODWORD(STACK[0x3D48])) ^ LODWORD(STACK[0x6858]);
  v72 = LODWORD(STACK[0x3950]) ^ bswap32(STACK[0x3928]);
  LODWORD(v36) = *(v27 + v57) | (*(v27 + BYTE1(v57)) << 8);
  LODWORD(v66) = LODWORD(STACK[0x3C68]) ^ STACK[0x3D90];
  LODWORD(STACK[0x3860]) = v66;
  LODWORD(v36) = v36 | (*(v27 + BYTE2(v57)) << 16);
  v73 = LODWORD(STACK[0x3CE0]) ^ v66 ^ v37 ^ LODWORD(STACK[0x3D38]) ^ LODWORD(STACK[0x3CA8]) ^ LODWORD(STACK[0x3CE8]) ^ LODWORD(STACK[0x3D10]) ^ LODWORD(STACK[0x3C80]) ^ LODWORD(STACK[0x3CB8]);
  v74 = v57 >> 24;
  v75 = STACK[0x37D8];
  LODWORD(v57) = *(v27 + STACK[0x37D8]);
  STACK[0x3298] = v74;
  LODWORD(STACK[0x3958]) = v36 | (*(v27 + v74) << 24);
  v76 = v73 ^ LODWORD(STACK[0x3CC0]) ^ LODWORD(STACK[0x3CB0]) ^ LODWORD(STACK[0x3CC8]) ^ LODWORD(STACK[0x3CD0]) ^ LODWORD(STACK[0x3CA0]) ^ LODWORD(STACK[0x3C98]);
  LODWORD(v36) = v57 | (*(v27 + BYTE1(v75)) << 8) | (*(v27 + BYTE2(v75)) << 16);
  LODWORD(v57) = LODWORD(STACK[0x3C60]) ^ LODWORD(STACK[0x3D50]);
  LODWORD(STACK[0x3800]) = v57;
  v77 = STACK[0x542C];
  LODWORD(STACK[0x3C18]) = STACK[0x542C];
  v78 = v63 ^ v77;
  LODWORD(STACK[0x3850]) = v78;
  LODWORD(STACK[0x3950]) = v36 | (*(v27 + (v75 >> 24)) << 24);
  LODWORD(STACK[0x3848]) = v76 ^ v57 ^ v39 ^ v78 ^ v51 ^ LODWORD(STACK[0x3C70]) ^ v67 ^ v49;
  LODWORD(v75) = STACK[0x3B60];
  LODWORD(v66) = STACK[0x38C8];
  LODWORD(v36) = LODWORD(STACK[0x3CD8]) ^ LODWORD(STACK[0x3B60]) ^ LODWORD(STACK[0x3D20]) ^ LODWORD(STACK[0x3D68]) ^ v44 ^ LODWORD(STACK[0x3D30]) ^ v53 ^ LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x38C8]);
  v79 = STACK[0x3B68];
  LODWORD(v74) = *(v27 + STACK[0x3B68]) | (*(v27 + BYTE1(STACK[0x3B68])) << 8);
  v80 = STACK[0x38F8];
  LODWORD(v57) = STACK[0x38D8];
  LODWORD(v36) = v36 ^ LODWORD(STACK[0x38F8]) ^ LODWORD(STACK[0x38D8]) ^ LODWORD(STACK[0x3C90]) ^ LODWORD(STACK[0x3D70]);
  LODWORD(STACK[0x3948]) = *(v27 + STACK[0x3B20]) | (*(v27 + BYTE1(STACK[0x3B20])) << 8) | (*(v27 + BYTE2(STACK[0x3B20])) << 16) | (*(v27 + (STACK[0x3B20] >> 24)) << 24);
  v81 = STACK[0x3798];
  v82 = v36 ^ LODWORD(STACK[0x3798]) ^ LODWORD(STACK[0x3D78]);
  v83 = STACK[0x37F8];
  LODWORD(v36) = *(v27 + BYTE1(STACK[0x37F8]));
  v84 = *(v27 + STACK[0x37F8]);
  v85 = STACK[0x3788];
  LODWORD(STACK[0x3B88]) = v82 ^ LODWORD(STACK[0x3788]) ^ v68;
  v86 = v84 | (v36 << 8) | (*(v27 + BYTE2(v83)) << 16);
  LODWORD(STACK[0x3908]) = v74 | (*(v27 + (v79 >> 24)) << 24) | (*(v27 + BYTE2(v79)) << 16);
  LODWORD(STACK[0x3998]) = v86 | (*(v27 + (v83 >> 24)) << 24);
  LODWORD(STACK[0x39E8]) = *(v27 + STACK[0x3960]) | (*(v27 + BYTE2(STACK[0x3960])) << 16) | (*(v27 + BYTE1(STACK[0x3960])) << 8) | (*(v27 + (STACK[0x3960] >> 24)) << 24);
  LODWORD(STACK[0x3960]) = *(v27 + STACK[0x3B70]) | (*(v27 + BYTE1(STACK[0x3B70])) << 8) | (*(v27 + BYTE2(STACK[0x3B70])) << 16) | (*(v27 + (STACK[0x3B70] >> 24)) << 24);
  LODWORD(STACK[0x3928]) = *(v27 + STACK[0x3878]) | (*(v27 + BYTE1(STACK[0x3878])) << 8) | (*(v27 + BYTE2(STACK[0x3878])) << 16) | (*(v27 + (STACK[0x3878] >> 24)) << 24);
  LODWORD(STACK[0x39F0]) = *(v27 + v59) | (*(v27 + BYTE1(v59)) << 8) | (*(v27 + BYTE2(v59)) << 16) | (*(v27 + (v59 >> 24)) << 24);
  LODWORD(v59) = *(v27 + v60) | (*(v27 + BYTE1(v60)) << 8);
  LODWORD(v36) = *(v27 + (v60 >> 24));
  LODWORD(STACK[0x3AA0]) = *(v27 + STACK[0x3AA0]) | (*(v27 + BYTE2(STACK[0x3AA0])) << 16) | (*(v27 + BYTE1(STACK[0x3AA0])) << 8) | (*(v27 + (STACK[0x3AA0] >> 24)) << 24);
  LODWORD(STACK[0x39A8]) = v59 | (v36 << 24) | (*(v27 + BYTE2(v60)) << 16);
  LODWORD(STACK[0x39A0]) = *(v27 + v61) | (*(v27 + BYTE1(v61)) << 8) | (*(v27 + BYTE2(v61)) << 16) | (*(v27 + (v61 >> 24)) << 24);
  v87 = STACK[0x3830];
  LODWORD(v61) = *(v27 + STACK[0x3830]) | (*(v27 + BYTE1(STACK[0x3830])) << 8);
  LODWORD(STACK[0x3B80]) = *(v27 + STACK[0x3828]) | (*(v27 + BYTE2(STACK[0x3828])) << 16) | (*(v27 + BYTE1(STACK[0x3828])) << 8) | (*(v27 + (STACK[0x3828] >> 24)) << 24);
  LODWORD(STACK[0x3AD8]) = v61 | (*(v27 + BYTE2(v87)) << 16) | (*(v27 + (v87 >> 24)) << 24);
  LODWORD(STACK[0x3A60]) = *(v27 + v62) | (*(v27 + BYTE2(v62)) << 16) | (*(v27 + BYTE1(v62)) << 8) | (*(v27 + (v62 >> 24)) << 24);
  LODWORD(STACK[0x3A68]) = *(v27 + STACK[0x3B78]) | (*(v27 + BYTE1(STACK[0x3B78])) << 8) | (*(v27 + BYTE2(STACK[0x3B78])) << 16) | (*(v27 + (STACK[0x3B78] >> 24)) << 24);
  v88 = STACK[0x3870];
  v89 = *(v27 + STACK[0x3870]);
  v90 = *(v27 + BYTE1(STACK[0x3870]));
  LODWORD(v87) = *(v27 + BYTE2(STACK[0x3870]));
  STACK[0x2D98] = v89;
  LODWORD(STACK[0x3B00]) = v89 | (v90 << 8) | (v87 << 16) | (*(v27 + (v88 >> 24)) << 24);
  LODWORD(v89) = *(v27 + v69);
  LODWORD(v61) = *(v27 + BYTE1(v69));
  LODWORD(STACK[0x3B70]) = *(v27 + STACK[0x3D60]) | (*(v27 + BYTE1(STACK[0x3D60])) << 8);
  v91 = v89 | (v61 << 8) | (*(v27 + BYTE2(v69)) << 16);
  v92 = STACK[0x3BF8];
  LODWORD(v89) = *(v27 + STACK[0x3BF8]);
  LODWORD(STACK[0x3AE0]) = v91 | (*(v27 + (v69 >> 24)) << 24);
  v93 = v89 | (*(v27 + BYTE2(v92)) << 16) | (*(v27 + BYTE1(v92)) << 8);
  LODWORD(v87) = *(v27 + (v92 >> 24));
  v94 = STACK[0x38A0];
  v95 = *(v27 + BYTE1(STACK[0x38A0]));
  LODWORD(v89) = *(v27 + BYTE2(STACK[0x38A0]));
  LODWORD(STACK[0x3AF0]) = v93 | (v87 << 24);
  v96 = *(v27 + v94);
  STACK[0x2E80] = v95;
  v97 = v96 | (v95 << 8) | (v89 << 16);
  v98 = STACK[0x3880];
  LODWORD(v89) = *(v27 + STACK[0x3880]);
  LODWORD(STACK[0x3B98]) = v97 | (*(v27 + (v94 >> 24)) << 24);
  v99 = v89 | (*(v27 + BYTE1(v98)) << 8) | (*(v27 + (v98 >> 24)) << 24);
  LODWORD(v87) = *(v27 + BYTE2(v98));
  LODWORD(v89) = *(v27 + v65);
  LODWORD(v98) = *(v27 + BYTE1(v65));
  LODWORD(STACK[0x3B08]) = v99 | (v87 << 16);
  v100 = v89 | (v98 << 8) | (*(v27 + BYTE2(v65)) << 16);
  v101 = STACK[0x38C0];
  LODWORD(v89) = *(v27 + STACK[0x38C0]);
  LODWORD(STACK[0x3B18]) = v100 | (*(v27 + (v65 >> 24)) << 24);
  v102 = v89 | (*(v27 + BYTE1(v101)) << 8) | (*(v27 + BYTE2(v101)) << 16);
  v103 = STACK[0x3C20];
  LODWORD(v87) = *(v27 + STACK[0x3C20]);
  LODWORD(v89) = *(v27 + (v101 >> 24));
  LODWORD(v101) = *(v27 + BYTE1(STACK[0x3C20]));
  LODWORD(STACK[0x3B68]) = v102 | (v89 << 24);
  v104 = v87 | (v101 << 8) | (*(v27 + BYTE2(v103)) << 16);
  v105 = STACK[0x3888];
  LODWORD(v89) = *(v27 + BYTE1(STACK[0x3888]));
  LODWORD(STACK[0x3BF8]) = v104 | (*(v27 + (v103 >> 24)) << 24);
  v106 = *(v27 + v105) | (v89 << 8) | (*(v27 + BYTE2(v105)) << 16);
  LODWORD(v87) = *(v27 + (v105 >> 24));
  LODWORD(v89) = *(v27 + BYTE1(v70));
  LODWORD(v105) = *(v27 + v70);
  LODWORD(STACK[0x3C60]) = v106 | (v87 << 24);
  v107 = v105 | (v89 << 8) | (*(v27 + BYTE2(v70)) << 16);
  STACK[0x3CF0] = v70;
  v108 = STACK[0x38D0];
  LODWORD(v89) = *(v27 + BYTE1(STACK[0x38D0]));
  LODWORD(STACK[0x3B78]) = v107 | (*(v27 + (v70 >> 24)) << 24);
  v109 = *(v27 + v108);
  STACK[0x2D90] = v109;
  LODWORD(v109) = v109 | (v89 << 8) | (*(v27 + BYTE2(v108)) << 16);
  LODWORD(v87) = *(v27 + (v108 >> 24));
  v110 = STACK[0x3C00];
  LODWORD(v89) = *(v27 + STACK[0x3C00]);
  LODWORD(v108) = *(v27 + BYTE1(STACK[0x3C00]));
  LODWORD(STACK[0x3C20]) = v109 | (v87 << 24);
  LODWORD(v109) = v89 | (v108 << 8) | (*(v27 + BYTE2(v110)) << 16);
  v111 = STACK[0x3890];
  LODWORD(v87) = *(v27 + BYTE1(STACK[0x3890]));
  LODWORD(STACK[0x3C88]) = v109 | (*(v27 + (v110 >> 24)) << 24);
  LODWORD(v109) = *(v27 + v111) | (v87 << 8) | (*(v27 + BYTE2(v111)) << 16);
  LODWORD(v87) = *(v27 + (v111 >> 24));
  v112 = STACK[0x38B0];
  LODWORD(v89) = *(v27 + BYTE1(STACK[0x38B0]));
  LODWORD(v111) = *(v27 + STACK[0x38B0]);
  LODWORD(STACK[0x3BA0]) = v109 | (v87 << 24);
  LODWORD(v109) = v111 | (v89 << 8) | (*(v27 + BYTE2(v112)) << 16);
  v113 = *(v27 + (v72 >> 24));
  LODWORD(STACK[0x3D88]) = v109 | (*(v27 + (v112 >> 24)) << 24);
  LODWORD(v109) = *(v27 + BYTE2(v72));
  STACK[0x24D8] = v113;
  LODWORD(STACK[0x3D80]) = (v113 << 24) | (v109 << 16) | *(v27 + v72) | (*(v27 + BYTE1(v72)) << 8);
  LODWORD(STACK[0x3C78]) = *(v27 + STACK[0x38B8]) | (*(v27 + (STACK[0x38B8] >> 24)) << 24) | (*(v27 + BYTE2(STACK[0x38B8])) << 16) | (*(v27 + BYTE1(STACK[0x38B8])) << 8);
  LODWORD(STACK[0x3C68]) = (*(v27 + BYTE1(v71)) << 8) | (*(v27 + BYTE2(v71)) << 16) | *(v27 + v71) | (*(v27 + (v71 >> 24)) << 24);
  LODWORD(STACK[0x3AE8]) = *(v27 + STACK[0x3C10]) | (*(v27 + BYTE2(STACK[0x3C10])) << 16) | (*(v27 + BYTE1(STACK[0x3C10])) << 8) | (*(v27 + (STACK[0x3C10] >> 24)) << 24);
  v114 = STACK[0x3900];
  v115 = *(v27 + BYTE2(STACK[0x3900]));
  LODWORD(v109) = *(v27 + (STACK[0x3900] >> 24));
  STACK[0x2FE8] = v115;
  LODWORD(STACK[0x3B20]) = (v115 << 16) | (v109 << 24) | *(v27 + v114) | (*(v27 + BYTE1(v114)) << 8);
  LODWORD(v62) = STACK[0x3840];
  LODWORD(v60) = LODWORD(STACK[0x3840]) ^ v66;
  LODWORD(v71) = STACK[0x52A4];
  LODWORD(v72) = LODWORD(STACK[0x52A4]) ^ LODWORD(STACK[0x3860]);
  LODWORD(v114) = LODWORD(STACK[0x52A4]) ^ LODWORD(STACK[0x3850]);
  LODWORD(STACK[0x37C8]) = v114;
  v116 = v62 ^ v57;
  LODWORD(v59) = STACK[0x3CC8];
  v117 = STACK[0x3800];
  v118 = STACK[0x3CD0];
  LODWORD(v69) = STACK[0x37E8];
  LODWORD(STACK[0x3790]) = LODWORD(STACK[0x3800]) ^ LODWORD(STACK[0x3CC8]);
  LODWORD(v109) = v117 ^ v59 ^ v118 ^ v69 ^ v62 ^ v66 ^ v72 ^ v114 ^ v62 ^ v57;
  LODWORD(v114) = v62 ^ LODWORD(STACK[0x3820]);
  LODWORD(STACK[0x37F8]) = v114;
  LODWORD(v57) = v71 ^ LODWORD(STACK[0x3810]);
  LODWORD(STACK[0x37D8]) = v57;
  LODWORD(STACK[0x37A8]) = v62 ^ v75;
  LODWORD(v115) = v71 ^ LODWORD(STACK[0x3C98]);
  LODWORD(STACK[0x37B8]) = v115;
  LODWORD(v109) = v109 ^ v114 ^ v57 ^ v62 ^ v75 ^ v115;
  LODWORD(v66) = v71 ^ LODWORD(STACK[0x3D38]);
  LODWORD(STACK[0x37C0]) = v66;
  LODWORD(v112) = v71 ^ LODWORD(STACK[0x3D20]);
  LODWORD(STACK[0x37F0]) = v112;
  LODWORD(v111) = v62 ^ LODWORD(STACK[0x3CA0]);
  LODWORD(STACK[0x3D20]) = v111;
  LODWORD(v57) = v62 ^ LODWORD(STACK[0x3D70]);
  LODWORD(STACK[0x3820]) = v57;
  LODWORD(v114) = v71 ^ LODWORD(STACK[0x3CD8]);
  LODWORD(STACK[0x3830]) = v114;
  LODWORD(v65) = v62 ^ LODWORD(STACK[0x3C90]);
  LODWORD(v109) = v109 ^ v66 ^ v112 ^ v111 ^ v57 ^ v114 ^ v65;
  LODWORD(v57) = v71 ^ LODWORD(STACK[0x3CA8]);
  LODWORD(STACK[0x3870]) = v57;
  LODWORD(v66) = v71 ^ LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x3810]) = v66;
  LODWORD(v112) = v62 ^ LODWORD(STACK[0x3C70]);
  LODWORD(STACK[0x3828]) = v112;
  LODWORD(v115) = v62 ^ LODWORD(STACK[0x3808]);
  LODWORD(STACK[0x3890]) = v115;
  LODWORD(v114) = v62 ^ LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x3888]) = v114;
  LODWORD(STACK[0x3850]) = v71 ^ v85;
  LODWORD(v109) = v109 ^ v57 ^ v66 ^ v112 ^ v115 ^ v114 ^ v71 ^ v85;
  LODWORD(STACK[0x3878]) = v62 ^ v81;
  LODWORD(v66) = v62 ^ LODWORD(STACK[0x3CB0]);
  LODWORD(STACK[0x3860]) = v66;
  LODWORD(v36) = v71 ^ LODWORD(STACK[0x3D68]);
  LODWORD(STACK[0x3858]) = v36;
  LODWORD(v111) = v71 ^ LODWORD(STACK[0x3D78]);
  LODWORD(STACK[0x3880]) = v111;
  LODWORD(v114) = v71 ^ LODWORD(STACK[0x3CE0]);
  LODWORD(STACK[0x38B8]) = v114;
  LODWORD(v57) = v62 ^ LODWORD(STACK[0x3838]);
  LODWORD(STACK[0x38B0]) = v57;
  LODWORD(v115) = v62 ^ LODWORD(STACK[0x3CC0]);
  LODWORD(STACK[0x3900]) = v115;
  LODWORD(v109) = v109 ^ v62 ^ v81 ^ v66 ^ v36 ^ v111 ^ v114 ^ v57 ^ v115;
  LODWORD(v115) = STACK[0x3B90];
  LODWORD(STACK[0x3D10]) = LODWORD(STACK[0x3848]) ^ LODWORD(STACK[0x3B90]);
  LODWORD(v75) = v62 ^ LODWORD(STACK[0x3CE8]);
  LODWORD(STACK[0x38A0]) = v75;
  LODWORD(v114) = v71 ^ v115;
  LODWORD(STACK[0x38D8]) = v71 ^ v115;
  LODWORD(v66) = v71 ^ LODWORD(STACK[0x3B48]);
  LODWORD(STACK[0x3CE8]) = v66;
  LODWORD(v57) = v62 ^ LODWORD(STACK[0x3D30]);
  LODWORD(STACK[0x38D0]) = v57;
  LODWORD(v111) = v71 ^ LODWORD(STACK[0x3CB8]);
  LODWORD(STACK[0x38C8]) = v111;
  LODWORD(v112) = v62 ^ LODWORD(STACK[0x3C80]);
  LODWORD(STACK[0x38C0]) = v112;
  LODWORD(v115) = v71 ^ LODWORD(STACK[0x3818]);
  LODWORD(STACK[0x3CE0]) = v115;
  LODWORD(v109) = v109 ^ v75 ^ v114 ^ v66 ^ v57 ^ v111 ^ v112 ^ v115;
  LODWORD(STACK[0x3CD8]) = v62 ^ v80;
  LODWORD(v114) = v71 ^ LODWORD(STACK[0x3D28]);
  LODWORD(STACK[0x3C98]) = v114;
  LODWORD(STACK[0x38F8]) = v109 ^ v62 ^ v80 ^ v114;
  LODWORD(v109) = LODWORD(STACK[0x3BA8]) ^ ((STACK[0x5264] & LODWORD(STACK[0x3BA8])) >> 1);
  LODWORD(v115) = STACK[0x5290];
  LODWORD(STACK[0x3D78]) = STACK[0x5290];
  v119 = v109 & v115;
  v120 = STACK[0x53D8];
  STACK[0x3D70] = STACK[0x53D8];
  v121 = v119 >> v120;
  LODWORD(v120) = STACK[0x5284];
  LODWORD(STACK[0x3D38]) = STACK[0x5284];
  v122 = v109 & v120;
  v123 = STACK[0x53E8];
  STACK[0x3D68] = STACK[0x53E8];
  LODWORD(v36) = v121 | (v122 << v123);
  v124 = (*STACK[0x5400] << 24) | (*STACK[0x5400] << 16) | *STACK[0x5400] | (*STACK[0x5400] << 8);
  LODWORD(v121) = (*STACK[0x5400] << 24) | (*STACK[0x5400] << 16) | *STACK[0x5400] | (*STACK[0x5400] << 8);
  LODWORD(v74) = v124 ^ (2 * (STACK[0x52B8] & v124));
  LODWORD(v123) = STACK[0x52D8];
  LODWORD(STACK[0x3C70]) = STACK[0x52D8];
  LODWORD(v122) = v124 ^ (2 * (v123 & v124));
  LODWORD(v123) = v121 ^ (2 * (v123 & v121));
  LODWORD(v114) = STACK[0x52AC];
  LODWORD(STACK[0x3B60]) = STACK[0x52AC];
  LODWORD(v57) = STACK[0x52C8];
  LODWORD(STACK[0x3BA8]) = STACK[0x52C8];
  v125 = STACK[0x5328];
  v126 = STACK[0x5320];
  STACK[0x3C00] = STACK[0x5320];
  v127 = ((v114 & v122) << v126) | ((v57 & v122) >> v125);
  LODWORD(v122) = STACK[0x52A8];
  LODWORD(STACK[0x3C80]) = STACK[0x52A8];
  v128 = v74 & v122;
  LODWORD(v122) = STACK[0x52CC];
  LODWORD(STACK[0x3C90]) = STACK[0x52CC];
  v129 = v74 & v122;
  v130 = STACK[0x5338];
  STACK[0x3C10] = STACK[0x5338];
  v131 = v129 << v130;
  LODWORD(v129) = LODWORD(STACK[0x5260]) ^ (v129 << v130);
  v132 = STACK[0x5350];
  STACK[0x3B48] = STACK[0x5350];
  v133 = v129 ^ (v128 >> v132);
  v134 = LODWORD(STACK[0x528C]) ^ v127;
  v135 = LODWORD(STACK[0x5258]) ^ ((v123 & v114) << v126) ^ ((v123 & v57) >> v132);
  LODWORD(STACK[0x3CC0]) = *(v27 + v133) | (*(v27 + BYTE1(v133)) << 8) | (*(v27 + BYTE2(v133)) << 16) | (*(v27 + (v133 >> 24)) << 24);
  LODWORD(STACK[0x3CB8]) = *(v27 + v134) | (*(v27 + BYTE1(v134)) << 8) | (*(v27 + BYTE2(v134)) << 16) | (*(v27 + (v134 >> 24)) << 24);
  v136 = v131 ^ LODWORD(STACK[0x5268]) ^ (v128 >> v125);
  LODWORD(v70) = *(v27 + (v131 ^ LOBYTE(STACK[0x5268]) ^ (v128 >> v125)));
  v137 = *(v27 + BYTE1(v136));
  LODWORD(STACK[0x3CA8]) = *(v27 + v135) | (*(v27 + BYTE1(v135)) << 8) | (*(v27 + BYTE2(v135)) << 16) | (*(v27 + (v135 >> 24)) << 24);
  LODWORD(STACK[0x3CA0]) = v70 | (v137 << 8) | (*(v27 + BYTE2(v136)) << 16) | (*(v27 + (v136 >> 24)) << 24);
  v138 = v117 ^ v58 ^ LODWORD(STACK[0x6890]) ^ v134;
  v139 = v59 ^ v58 ^ LODWORD(STACK[0x6894]) ^ v133;
  LODWORD(v123) = v60 ^ v58 ^ LODWORD(STACK[0x5408]);
  v140 = v72 ^ v58 ^ LODWORD(STACK[0x3C08]) ^ v136;
  v141 = STACK[0x3AC0];
  LODWORD(v136) = v65 ^ v58 ^ *(STACK[0x3AC0] + ((v140 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3AC0] + 4 * BYTE2(v139)), 8) ^ __ROR4__(*(STACK[0x3AC0] + 4 * BYTE1(v138)), 16);
  STACK[0x3CB0] = v135;
  v142 = v123 ^ v135;
  v143 = v136 ^ __ROR4__(*(v141 + 4 * (v123 ^ v135)), 24) ^ LODWORD(STACK[0x5410]);
  v144 = v116 ^ v58 ^ *(v141 + ((v142 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v139)), 16) ^ __ROR4__(*(v141 + 4 * v138), 24) ^ __ROR4__(*(v141 + 4 * BYTE2(v140)), 8) ^ LODWORD(STACK[0x5414]);
  v145 = v118 ^ v58 ^ *(v141 + ((v139 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE2(v138)), 8) ^ __ROR4__(*(v141 + 4 * BYTE1(v142)), 16) ^ __ROR4__(*(v141 + 4 * v140), 24) ^ LODWORD(STACK[0x5418]) ^ v71;
  STACK[0x3D30] = v142;
  LODWORD(v114) = v69 ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE2(v142)), 8) ^ __ROR4__(*(v141 + 4 * v139), 24);
  STACK[0x3B90] = v140;
  v146 = v114 ^ __ROR4__(*(v141 + 4 * BYTE1(v140)), 16) ^ *(v141 + ((v138 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x541C]) ^ v71;
  v147 = LODWORD(STACK[0x37A8]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE2(v146)), 8) ^ *(v141 + ((v145 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v144)), 16) ^ __ROR4__(*(v141 + 4 * v143), 24) ^ LODWORD(STACK[0x5420]);
  v148 = LODWORD(STACK[0x37B8]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE2(v143)), 8) ^ *(v141 + ((v144 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v145)), 16) ^ __ROR4__(*(v141 + 4 * v146), 24) ^ LODWORD(STACK[0x5424]);
  v149 = LODWORD(STACK[0x37C0]) ^ v58 ^ __ROR4__(*(v141 + 4 * v144), 24) ^ __ROR4__(*(v141 + 4 * BYTE2(v145)), 8) ^ *(v141 + ((v143 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v146)), 16) ^ LODWORD(STACK[0x5428]);
  STACK[0x3D28] = v145;
  LODWORD(v140) = *(v141 + 4 * v145);
  LODWORD(v144) = *(v141 + 4 * BYTE2(v144));
  LODWORD(v57) = LODWORD(STACK[0x37C8]) ^ v58;
  LODWORD(STACK[0x3268]) = v140;
  v150 = v57 ^ __ROR4__(v140, 24) ^ __ROR4__(v144, 8) ^ *(v141 + ((v146 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v143)), 16) ^ LODWORD(STACK[0x3C18]);
  LODWORD(v131) = LODWORD(STACK[0x3B88]) ^ LODWORD(STACK[0x3D10]);
  v151 = LODWORD(STACK[0x37D8]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE2(v149)), 8) ^ *(v141 + ((v148 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v147)), 16) ^ __ROR4__(*(v141 + 4 * v150), 24) ^ LODWORD(STACK[0x5430]);
  v152 = LODWORD(STACK[0x37F0]) ^ v58 ^ __ROR4__(*(v141 + 4 * v148), 24) ^ *(v141 + ((v149 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v150)), 16) ^ __ROR4__(*(v141 + 4 * BYTE2(v147)), 8) ^ LODWORD(STACK[0x5434]);
  LODWORD(v138) = STACK[0x38F8];
  v153 = (24459339 * v131) ^ v58 ^ LODWORD(STACK[0x3D20]) ^ (24459339 * LODWORD(STACK[0x38F8])) ^ *(v141 + ((v147 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * v149), 24) ^ __ROR4__(*(v141 + 4 * BYTE2(v150)), 8) ^ __ROR4__(*(v141 + 4 * BYTE1(v148)), 16) ^ LODWORD(STACK[0x5438]);
  STACK[0x3D20] = v148;
  LODWORD(v57) = LODWORD(STACK[0x37F8]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE2(v148)), 8);
  LODWORD(v150) = *(v141 + ((v150 >> 22) & 0x3FC));
  STACK[0x3D10] = v149;
  LODWORD(v150) = v57 ^ v150 ^ __ROR4__(*(v141 + 4 * BYTE1(v149)), 16);
  STACK[0x3270] = v147;
  v154 = v150 ^ __ROR4__(*(v141 + 4 * v147), 24) ^ LODWORD(STACK[0x543C]);
  v155 = LODWORD(STACK[0x3810]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE1(v152)), 16) ^ __ROR4__(*(v141 + 4 * BYTE2(v151)), 8) ^ __ROR4__(*(v141 + 4 * v153), 24) ^ *(v141 + ((v154 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5440]);
  v156 = LODWORD(STACK[0x3820]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE1(v151)), 16) ^ *(v141 + ((v153 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE2(v154)), 8) ^ __ROR4__(*(v141 + 4 * v152), 24) ^ LODWORD(STACK[0x5444]);
  v157 = LODWORD(STACK[0x3828]) ^ v58 ^ __ROR4__(*(v141 + 4 * v151), 24) ^ __ROR4__(*(v141 + 4 * BYTE1(v154)), 16) ^ __ROR4__(*(v141 + 4 * BYTE2(v153)), 8) ^ *(v141 + ((v152 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5448]);
  v158 = LODWORD(STACK[0x3830]) ^ v58 ^ __ROR4__(*(v141 + 4 * v154), 24) ^ __ROR4__(*(v141 + 4 * BYTE1(v153)), 16) ^ *(v141 + ((v151 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE2(v152)), 8) ^ LODWORD(STACK[0x544C]);
  v159 = LODWORD(STACK[0x3850]) ^ v58 ^ __ROR4__(*(v141 + 4 * v155), 24) ^ *(v141 + ((v158 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v156)), 16) ^ __ROR4__(*(v141 + 4 * BYTE2(v157)), 8) ^ LODWORD(STACK[0x5450]);
  v160 = v131 ^ v58 ^ LODWORD(STACK[0x3858]) ^ v138 ^ *(v141 + ((v155 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * v156), 24) ^ __ROR4__(*(v141 + 4 * BYTE1(v157)), 16) ^ __ROR4__(*(v141 + 4 * BYTE2(v158)), 8) ^ LODWORD(STACK[0x5454]);
  v161 = LODWORD(STACK[0x3860]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE2(v156)), 8) ^ __ROR4__(*(v141 + 4 * BYTE1(v155)), 16) ^ __ROR4__(*(v141 + 4 * v158), 24) ^ *(v141 + ((v157 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5458]);
  v162 = LODWORD(STACK[0x3870]) ^ v58 ^ *(v141 + ((v156 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE2(v155)), 8) ^ __ROR4__(*(v141 + 4 * v157), 24) ^ __ROR4__(*(v141 + 4 * BYTE1(v158)), 16) ^ LODWORD(STACK[0x545C]);
  LODWORD(v158) = *(v141 + 4 * v159);
  LODWORD(v155) = *(v141 + 4 * BYTE2(v162));
  LODWORD(v157) = LODWORD(STACK[0x3878]) ^ v58;
  LODWORD(STACK[0x3250]) = v158;
  v163 = v157 ^ __ROR4__(v158, 24) ^ __ROR4__(v155, 8) ^ *(v141 + ((v161 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5460]) ^ __ROR4__(*(v141 + 4 * BYTE1(v160)), 16);
  v164 = LODWORD(STACK[0x3880]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE2(v159)), 8) ^ __ROR4__(*(v141 + 4 * BYTE1(v161)), 16) ^ __ROR4__(*(v141 + 4 * v162), 24) ^ *(v141 + ((v160 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5464]);
  v165 = LODWORD(STACK[0x3888]) ^ v58 ^ __ROR4__(*(v141 + 4 * v160), 24) ^ __ROR4__(*(v141 + 4 * BYTE1(v162)), 16) ^ *(v141 + ((v159 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE2(v161)), 8) ^ LODWORD(STACK[0x5468]);
  LODWORD(v159) = LODWORD(STACK[0x3890]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE1(v159)), 16) ^ *(v141 + ((v162 >> 22) & 0x3FC));
  STACK[0x3C18] = v161;
  v166 = v159 ^ __ROR4__(*(v141 + 4 * v161), 24) ^ __ROR4__(*(v141 + 4 * BYTE2(v160)), 8) ^ LODWORD(STACK[0x546C]);
  v167 = LODWORD(STACK[0x38A0]) ^ v58 ^ *(v141 + ((v165 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * v164), 24) ^ __ROR4__(*(v141 + 4 * BYTE2(v163)), 8) ^ __ROR4__(*(v141 + 4 * BYTE1(v166)), 16) ^ LODWORD(STACK[0x5470]);
  v168 = LODWORD(STACK[0x38B0]) ^ v58 ^ __ROR4__(*(v141 + 4 * v166), 24) ^ __ROR4__(*(v141 + 4 * BYTE1(v163)), 16) ^ __ROR4__(*(v141 + 4 * BYTE2(v165)), 8) ^ *(v141 + ((v164 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5474]);
  LODWORD(v162) = LODWORD(STACK[0x38B8]) ^ v58 ^ *(v141 + ((v166 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE2(v164)), 8) ^ __ROR4__(*(v141 + 4 * BYTE1(v165)), 16);
  LODWORD(v166) = *(v141 + 4 * BYTE2(v166));
  v169 = v162 ^ __ROR4__(*(v141 + 4 * v163), 24) ^ LODWORD(STACK[0x5478]);
  STACK[0x3B88] = v163;
  LODWORD(v164) = LODWORD(STACK[0x3CE8]) ^ v58 ^ *(v141 + ((v163 >> 22) & 0x3FC)) ^ __ROR4__(v166, 8) ^ __ROR4__(*(v141 + 4 * BYTE1(v164)), 16);
  STACK[0x3CE8] = v165;
  v170 = v164 ^ __ROR4__(*(v141 + 4 * v165), 24) ^ LODWORD(STACK[0x547C]);
  v171 = LODWORD(STACK[0x38C0]) ^ v58 ^ __ROR4__(*(v141 + 4 * v167), 24) ^ __ROR4__(*(v141 + 4 * BYTE2(v169)), 8) ^ __ROR4__(*(v141 + 4 * BYTE1(v168)), 16) ^ *(v141 + ((v170 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5480]);
  LODWORD(v158) = *(v141 + 4 * v170);
  v172 = LODWORD(STACK[0x38C8]) ^ v58 ^ __ROR4__(*(v141 + 4 * v168), 24) ^ __ROR4__(*(v141 + 4 * BYTE2(v170)), 8) ^ *(v141 + ((v167 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v169)), 16) ^ LODWORD(STACK[0x5484]);
  LODWORD(v166) = *(v141 + ((v169 >> 22) & 0x3FC));
  LODWORD(v157) = LODWORD(STACK[0x38D0]) ^ v58;
  LODWORD(STACK[0x3230]) = v158;
  v173 = v157 ^ __ROR4__(v158, 24) ^ v166 ^ __ROR4__(*(v141 + 4 * BYTE2(v168)), 8) ^ LODWORD(STACK[0x5488]) ^ __ROR4__(*(v141 + 4 * BYTE1(v167)), 16);
  LODWORD(v169) = LODWORD(STACK[0x38D8]) ^ v58 ^ __ROR4__(*(v141 + 4 * v169), 24);
  STACK[0x3C08] = v167;
  v174 = v169 ^ __ROR4__(*(v141 + 4 * BYTE2(v167)), 8) ^ __ROR4__(*(v141 + 4 * BYTE1(v170)), 16) ^ *(v141 + ((v168 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x548C]);
  v175 = LODWORD(STACK[0x3900]) ^ v58 ^ __ROR4__(*(v141 + 4 * BYTE1(v172)), 16) ^ __ROR4__(*(v141 + 4 * BYTE2(v174)), 8) ^ *(v141 + ((v173 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5490]) ^ __ROR4__(*(v141 + 4 * v171), 24);
  v176 = LODWORD(STACK[0x3C98]) ^ v58 ^ __ROR4__(*(v141 + 4 * v172), 24) ^ *(v141 + ((v171 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v174)), 16) ^ __ROR4__(*(v141 + 4 * BYTE2(v173)), 8) ^ LODWORD(STACK[0x5494]);
  v177 = LODWORD(STACK[0x3CD8]) ^ v58 ^ *(v141 + ((v172 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE2(v171)), 8) ^ __ROR4__(*(v141 + 4 * v174), 24) ^ LODWORD(STACK[0x5498]) ^ HIWORD(*(v141 + 4 * BYTE1(v173))) ^ (*(v141 + 4 * BYTE1(v173)) << 16);
  LODWORD(v173) = LODWORD(STACK[0x3CE0]) ^ v58 ^ __ROR4__(*(v141 + 4 * v173), 24) ^ *(v141 + ((v174 >> 22) & 0x3FC));
  STACK[0x3300] = v171;
  LODWORD(v173) = v173 ^ __ROR4__(*(v141 + 4 * BYTE1(v171)), 16) ^ LODWORD(STACK[0x549C]);
  STACK[0x3CE0] = v172;
  v179 = __ROR4__(*(v141 + 4 * BYTE2(v172)), 8);
  v178 = v173 ^ v179;
  LODWORD(v173) = STACK[0x3D90] ^ STACK[0x3E38] ^ bswap32(STACK[0x3BB0]) ^ v58 ^ __ROR4__(*(v141 + 4 * (v173 ^ v179)), 24) ^ *(v141 + ((v177 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE2(v176)), 8) ^ LODWORD(STACK[0x6898]) ^ __ROR4__(*(v141 + 4 * BYTE1(v175)), 16);
  LODWORD(v174) = LODWORD(STACK[0x3D50]) ^ v58 ^ bswap32(STACK[0x3BB8]);
  LODWORD(v172) = *(v141 + 4 * v175);
  LODWORD(v158) = *(v141 + ((v178 >> 22) & 0x3FC));
  LODWORD(v171) = *(v141 + 4 * BYTE2(v177));
  LODWORD(STACK[0x3228]) = v172;
  LODWORD(v158) = v174 ^ __ROR4__(v172, 24) ^ v158 ^ __ROR4__(v171, 8) ^ LODWORD(STACK[0x689C]) ^ __ROR4__(*(v141 + 4 * BYTE1(v176)), 16);
  LODWORD(v174) = STACK[0x3D98] ^ STACK[0x3D58] ^ bswap32(STACK[0x3BC0]) ^ v58 ^ *(v141 + ((v175 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(v177)), 16) ^ __ROR4__(*(v141 + 4 * BYTE2(v178)), 8) ^ LODWORD(STACK[0x68A0]);
  v180 = __ROR4__(*(v141 + 4 * v176), 24);
  STACK[0x3D58] = v173 ^ v62;
  STACK[0x3D90] = v174 ^ v180 ^ v62;
  LODWORD(v171) = LODWORD(STACK[0x3D48]) ^ v58;
  v181 = bswap32(STACK[0x3E18]);
  STACK[0x3CD8] = v176;
  LODWORD(v177) = v171 ^ v181 ^ *(v141 + ((v176 >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * v177), 24) ^ __ROR4__(*(v141 + 4 * BYTE1(v178)), 16);
  v182 = __ROR4__(*(v141 + 4 * BYTE2(v175)), 8);
  STACK[0x3E38] = v158 ^ v71;
  STACK[0x3D50] = v177 ^ v182 ^ LODWORD(STACK[0x68A4]) ^ v71;
  LODWORD(v126) = STACK[0x5280];
  v183 = LODWORD(STACK[0x3CC0]) ^ LODWORD(STACK[0x39C0]) ^ LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x54A0]) ^ v36;
  v184 = LODWORD(STACK[0x3CA0]) ^ LODWORD(STACK[0x3940]) ^ LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x54A8]) ^ v36;
  LODWORD(v176) = STACK[0x5294];
  v185 = LODWORD(STACK[0x3CB8]) ^ LODWORD(STACK[0x3988]) ^ LODWORD(STACK[0x5294]) ^ LODWORD(STACK[0x54B0]) ^ v36;
  v186 = v36 ^ LODWORD(STACK[0x3980]) ^ LODWORD(STACK[0x54B8]) ^ LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x3CA8]);
  v187 = STACK[0x3AB8];
  LODWORD(v171) = v36 ^ LODWORD(STACK[0x3938]) ^ __ROR4__(*(STACK[0x3AB8] + 4 * (LOBYTE(STACK[0x3CC0]) ^ LOBYTE(STACK[0x39C0]) ^ LOBYTE(STACK[0x5280]) ^ LOBYTE(STACK[0x54A0]) ^ v36)), 24) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE2(v186)), 8) ^ *(STACK[0x3AB8] + ((v185 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x54BC]) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE1(v184)), 16);
  v188 = *(STACK[0x3AB8] + ((v186 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x3930]) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE1(v183)), 16) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE2(v184)), 8) ^ __ROR4__(*(STACK[0x3AB8] + 4 * (LOBYTE(STACK[0x3CB8]) ^ LOBYTE(STACK[0x3988]) ^ LOBYTE(STACK[0x5294]) ^ LOBYTE(STACK[0x54B0]) ^ v36)), 24) ^ LODWORD(STACK[0x5294]) ^ LODWORD(STACK[0x54C0]) ^ v36;
  v189 = *(v27 + (STACK[0x3D40] >> 24));
  LODWORD(v177) = *(STACK[0x3AB8] + 4 * BYTE1(v185));
  STACK[0x2348] = v189;
  v190 = v36 ^ (LODWORD(STACK[0x3920]) | (v189 << 24)) ^ __ROR4__(v177, 16) ^ *(v187 + ((v184 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE2(v183)), 8) ^ __ROR4__(*(v187 + 4 * v186), 24) ^ LODWORD(STACK[0x54C8]) ^ v176;
  STACK[0x3278] = v183;
  LODWORD(v184) = v36 ^ LODWORD(STACK[0x3A28]) ^ *(v187 + ((v183 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE2(v185)), 8) ^ __ROR4__(*(v187 + 4 * v184), 24);
  STACK[0x3288] = v186;
  v191 = v184 ^ __ROR4__(*(v187 + 4 * BYTE1(v186)), 16) ^ LODWORD(STACK[0x54CC]) ^ v126;
  v192 = v171 ^ v176;
  v193 = LODWORD(STACK[0x3908]) ^ __ROR4__(*(v187 + 4 * BYTE1(v192)), 16) ^ __ROR4__(*(v187 + 4 * v188), 24) ^ *(v187 + ((v190 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE2(v191)), 8) ^ v176 ^ LODWORD(STACK[0x54D0]) ^ v36;
  v194 = LODWORD(STACK[0x3958]) ^ __ROR4__(*(v187 + 4 * BYTE2(v192)), 8) ^ __ROR4__(*(v187 + 4 * BYTE1(v188)), 16) ^ *(v187 + ((v191 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * v190), 24) ^ v126 ^ LODWORD(STACK[0x54D8]) ^ v36;
  v195 = LODWORD(STACK[0x3950]) ^ __ROR4__(*(v187 + 4 * BYTE2(v188)), 8) ^ HIWORD(*(v187 + 4 * BYTE1(v190))) ^ (*(v187 + 4 * BYTE1(v190)) << 16) ^ __ROR4__(*(v187 + 4 * v191), 24) ^ *(v187 + ((v192 >> 22) & 0x3FC)) ^ v126 ^ LODWORD(STACK[0x54E0]) ^ v36;
  v196 = v36 ^ LODWORD(STACK[0x3948]) ^ *(v187 + ((v188 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(v191)), 16) ^ __ROR4__(*(v187 + 4 * v192), 24) ^ __ROR4__(*(v187 + 4 * BYTE2(v190)), 8) ^ LODWORD(STACK[0x54E8]) ^ v126;
  v197 = v36 ^ LODWORD(STACK[0x3928]) ^ __ROR4__(*(v187 + 4 * BYTE1(v195)), 16) ^ __ROR4__(*(v187 + 4 * v196), 24) ^ __ROR4__(*(v187 + 4 * BYTE2(v194)), 8) ^ *(v187 + ((v193 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x54EC]) ^ v176;
  v198 = LODWORD(STACK[0x3998]) ^ __ROR4__(*(v187 + 4 * BYTE1(v196)), 16) ^ __ROR4__(*(v187 + 4 * v193), 24) ^ __ROR4__(*(v187 + 4 * BYTE2(v195)), 8) ^ *(v187 + ((v194 >> 22) & 0x3FC)) ^ v176 ^ LODWORD(STACK[0x54F0]) ^ v36;
  v199 = *(v187 + ((v196 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x3960]) ^ __ROR4__(*(v187 + 4 * BYTE2(v193)), 8) ^ __ROR4__(*(v187 + 4 * v195), 24) ^ __ROR4__(*(v187 + 4 * BYTE1(v194)), 16) ^ v126 ^ LODWORD(STACK[0x54F8]) ^ v36;
  LODWORD(v190) = v131;
  STACK[0x3D40] = v194;
  v200 = v131 ^ LODWORD(STACK[0x39E8]) ^ v138 ^ v36 ^ __ROR4__(*(v187 + 4 * v194), 24) ^ __ROR4__(*(v187 + 4 * BYTE1(v193)), 16) ^ __ROR4__(*(v187 + 4 * BYTE2(v196)), 8) ^ *(v187 + ((v195 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5500]) ^ v126;
  v201 = v36 ^ LODWORD(STACK[0x39F0]) ^ __ROR4__(*(v187 + 4 * v197), 24) ^ __ROR4__(*(v187 + 4 * BYTE2(v200)), 8) ^ *(v187 + ((v198 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(v199)), 16) ^ LODWORD(STACK[0x5504]) ^ v126;
  v202 = LODWORD(STACK[0x39A8]) ^ __ROR4__(*(v187 + 4 * BYTE2(v197)), 8) ^ __ROR4__(*(v187 + 4 * v200), 24) ^ *(v187 + ((v199 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(v198)), 16) ^ v176 ^ LODWORD(STACK[0x5508]) ^ v36;
  STACK[0x3E18] = v199;
  v203 = LODWORD(STACK[0x39A0]) ^ __ROR4__(*(v187 + 4 * v199), 24) ^ __ROR4__(*(v187 + 4 * BYTE1(v200)), 16) ^ __ROR4__(*(v187 + 4 * BYTE2(v198)), 8) ^ *(v187 + ((v197 >> 22) & 0x3FC)) ^ v126 ^ LODWORD(STACK[0x5510]) ^ v36;
  LODWORD(v71) = *(v187 + 4 * v198);
  STACK[0x3280] = v197;
  LODWORD(v198) = *(v187 + 4 * BYTE1(v197));
  LODWORD(v196) = v36 ^ LODWORD(STACK[0x3AA0]);
  LODWORD(STACK[0x31E8]) = v71;
  LODWORD(v198) = v196 ^ __ROR4__(v71, 24) ^ __ROR4__(v198, 16);
  LODWORD(v196) = *(v187 + 4 * BYTE2(v199));
  STACK[0x3CB8] = v200;
  v204 = v198 ^ __ROR4__(v196, 8) ^ *(v187 + ((v200 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x551C]) ^ v126;
  LODWORD(v200) = v138 ^ __ROR4__(*(v187 + 4 * BYTE1(v201)), 16) ^ *(v187 + ((v202 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE2(v203)), 8) ^ __ROR4__(*(v187 + 4 * v204), 24);
  LODWORD(v190) = v190 ^ LODWORD(STACK[0x3A60]) ^ v176 ^ LODWORD(STACK[0x5520]) ^ v36;
  v205 = *(v187 + ((v204 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x3AD8]) ^ __ROR4__(*(v187 + 4 * v201), 24) ^ __ROR4__(*(v187 + 4 * BYTE2(v202)), 8) ^ __ROR4__(*(v187 + 4 * BYTE1(v203)), 16) ^ v126 ^ LODWORD(STACK[0x5528]) ^ v36;
  v206 = v36 ^ LODWORD(STACK[0x3A68]) ^ __ROR4__(*(v187 + 4 * BYTE1(v204)), 16) ^ __ROR4__(*(v187 + 4 * BYTE2(v201)), 8) ^ __ROR4__(*(v187 + 4 * v202), 24) ^ *(v187 + ((v203 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5534]) ^ v176;
  LODWORD(v202) = LODWORD(STACK[0x3B80]) ^ __ROR4__(*(v187 + 4 * BYTE1(v202)), 16);
  STACK[0x3CC0] = v201;
  LODWORD(v202) = v202 ^ *(v187 + ((v201 >> 22) & 0x3FC));
  STACK[0x3B80] = v204;
  v207 = v202 ^ __ROR4__(*(v187 + 4 * BYTE2(v204)), 8) ^ __ROR4__(*(v187 + 4 * v203), 24) ^ v126 ^ LODWORD(STACK[0x5538]) ^ v36;
  LODWORD(v202) = LODWORD(STACK[0x3AE0]) ^ __ROR4__(*(v187 + 4 * BYTE1(v207)), 16);
  LODWORD(STACK[0x3A28]) = v200;
  v208 = v190 ^ v200;
  v209 = v202 ^ __ROR4__(*(v187 + 4 * v205), 24) ^ *(v187 + ((v208 >> 22) & 0x3FC)) ^ (*(v187 + 4 * BYTE2(v206)) >> 8) ^ (*(v187 + 4 * BYTE2(v206)) << 24) ^ v176 ^ LODWORD(STACK[0x5540]) ^ v36;
  v210 = LODWORD(STACK[0x3B00]) ^ __ROR4__(*(v187 + 4 * BYTE1(v208)), 16) ^ __ROR4__(*(v187 + 4 * v206), 24) ^ __ROR4__(*(v187 + 4 * BYTE2(v205)), 8) ^ *(v187 + ((v207 >> 22) & 0x3FC)) ^ v126 ^ LODWORD(STACK[0x5548]) ^ v36;
  v211 = *(v27 + BYTE2(STACK[0x3D60]));
  v212 = *(v27 + (STACK[0x3D60] >> 24));
  STACK[0x2918] = v211;
  LODWORD(v188) = STACK[0x3B70];
  STACK[0x2F50] = v212;
  v213 = v36 ^ (v188 | (v211 << 16) | (v212 << 24)) ^ *(v187 + ((v205 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * v207), 24) ^ __ROR4__(*(v187 + 4 * BYTE1(v206)), 16) ^ __ROR4__(*(v187 + 4 * BYTE2(v208)), 8) ^ LODWORD(STACK[0x5554]) ^ v176;
  STACK[0x3CA0] = v208;
  LODWORD(v198) = v36 ^ LODWORD(STACK[0x3AF0]) ^ __ROR4__(*(v187 + 4 * v208), 24);
  STACK[0x3CA8] = v206;
  LODWORD(v198) = v198 ^ *(v187 + ((v206 >> 22) & 0x3FC));
  STACK[0x31E0] = v205;
  LODWORD(v198) = v198 ^ __ROR4__(*(v187 + 4 * BYTE1(v205)), 16);
  STACK[0x3B70] = v207;
  v214 = v198 ^ __ROR4__(*(v187 + 4 * BYTE2(v207)), 8) ^ LODWORD(STACK[0x5558]) ^ v126;
  v215 = v36 ^ LODWORD(STACK[0x3B08]) ^ __ROR4__(*(v187 + 4 * BYTE2(v209)), 8) ^ *(v187 + ((v213 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * v210), 24) ^ __ROR4__(*(v187 + 4 * BYTE1(v214)), 16) ^ LODWORD(STACK[0x555C]) ^ v176;
  v216 = *(v187 + ((v209 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x3B18]) ^ __ROR4__(*(v187 + 4 * v213), 24) ^ __ROR4__(*(v187 + 4 * BYTE1(v210)), 16) ^ __ROR4__(*(v187 + 4 * BYTE2(v214)), 8) ^ v126 ^ LODWORD(STACK[0x5560]) ^ v36;
  v217 = LODWORD(STACK[0x3B98]) ^ __ROR4__(*(v187 + 4 * v214), 24) ^ __ROR4__(*(v187 + 4 * BYTE2(v213)), 8) ^ *(v187 + ((v210 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(v209)), 16) ^ v176 ^ LODWORD(STACK[0x5568]) ^ v36;
  STACK[0x3C98] = v213;
  LODWORD(v212) = v36 ^ LODWORD(STACK[0x3B68]) ^ __ROR4__(*(v187 + 4 * BYTE1(v213)), 16);
  v218 = __ROR4__(*(v187 + 4 * BYTE2(v210)), 8);
  STACK[0x3258] = v214;
  v219 = v212 ^ v218 ^ *(v187 + ((v214 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * v209), 24) ^ LODWORD(STACK[0x5570]) ^ v176;
  v220 = v36 ^ LODWORD(STACK[0x3BF8]) ^ *(v187 + ((v217 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(v216)), 16) ^ __ROR4__(*(v187 + 4 * BYTE2(v215)), 8) ^ __ROR4__(*(v187 + 4 * v219), 24) ^ LODWORD(STACK[0x5574]) ^ v126;
  v221 = LODWORD(STACK[0x3B78]) ^ __ROR4__(*(v187 + 4 * BYTE2(v219)), 8) ^ __ROR4__(*(v187 + 4 * v215), 24) ^ __ROR4__(*(v187 + 4 * BYTE1(v217)), 16) ^ *(v187 + ((v216 >> 22) & 0x3FC)) ^ v176 ^ LODWORD(STACK[0x5578]) ^ v36;
  v222 = LODWORD(STACK[0x3C60]) ^ __ROR4__(*(v187 + 4 * BYTE2(v216)), 8) ^ *(v187 + ((v215 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(v219)), 16) ^ __ROR4__(*(v187 + 4 * v217), 24) ^ v126 ^ LODWORD(STACK[0x5580]) ^ v36;
  STACK[0x3B68] = v216;
  LODWORD(v212) = LODWORD(STACK[0x3C20]) ^ __ROR4__(*(v187 + 4 * v216), 24);
  STACK[0x3D98] = v219;
  LODWORD(v217) = v212 ^ *(v187 + ((v219 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE2(v217)), 8);
  STACK[0x3248] = v215;
  v223 = v217 ^ __ROR4__(*(v187 + 4 * BYTE1(v215)), 16) ^ v176 ^ LODWORD(STACK[0x5588]) ^ v36;
  v224 = *(v187 + ((v223 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x3AE8]) ^ __ROR4__(*(v187 + 4 * BYTE1(v222)), 16) ^ __ROR4__(*(v187 + 4 * BYTE2(v220)), 8) ^ __ROR4__(*(v187 + 4 * v221), 24) ^ v176 ^ LODWORD(STACK[0x5590]) ^ v36;
  v225 = v36 ^ LODWORD(STACK[0x3BA0]) ^ __ROR4__(*(v187 + 4 * BYTE2(v221)), 8) ^ *(v187 + ((v222 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(v223)), 16) ^ __ROR4__(*(v187 + 4 * v220), 24) ^ LODWORD(STACK[0x5598]) ^ v176;
  LODWORD(v212) = v36 ^ LODWORD(STACK[0x3C88]) ^ __ROR4__(*(v187 + 4 * BYTE2(v222)), 8) ^ *(v187 + ((v220 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(v221)), 16);
  LODWORD(v211) = *(v187 + 4 * v223);
  LODWORD(STACK[0x31C8]) = v211;
  v226 = v212 ^ __ROR4__(v211, 24) ^ LODWORD(STACK[0x559C]) ^ v126;
  HIDWORD(v227) = *(v187 + 4 * BYTE1(v220));
  LODWORD(v227) = HIDWORD(v227);
  LODWORD(v212) = v227 >> 16;
  STACK[0x3260] = v222;
  LODWORD(v220) = *(v187 + 4 * v222);
  LODWORD(STACK[0x2144]) = v212;
  LODWORD(v220) = v212 ^ LODWORD(STACK[0x3B20]) ^ __ROR4__(v220, 24);
  STACK[0x31D0] = v223;
  v228 = v220 ^ __ROR4__(*(v187 + 4 * BYTE2(v223)), 8) ^ *(v187 + ((v221 >> 22) & 0x3FC)) ^ v126 ^ LODWORD(STACK[0x55A0]) ^ v36;
  LODWORD(v212) = v36 ^ LODWORD(STACK[0x3C68]) ^ __ROR4__(*(v187 + 4 * BYTE2(v225)), 8) ^ *(v187 + ((v226 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(v228)), 16) ^ LODWORD(STACK[0x55A8]) ^ __ROR4__(*(v187 + 4 * v224), 24);
  LODWORD(v220) = v36 ^ LODWORD(STACK[0x3C78]) ^ __ROR4__(*(v187 + 4 * BYTE2(v228)), 8) ^ __ROR4__(*(v187 + 4 * BYTE1(v224)), 16);
  LODWORD(v221) = *(v187 + ((v225 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x55AC]) ^ v176;
  LODWORD(v211) = *(v187 + 4 * v226);
  LODWORD(STACK[0x31C0]) = v211;
  STACK[0x3D48] = v220 ^ __ROR4__(v211, 24) ^ v221;
  STACK[0x3D60] = LODWORD(STACK[0x3D80]) ^ __ROR4__(*(v187 + 4 * v225), 24) ^ __ROR4__(*(v187 + 4 * BYTE2(v224)), 8) ^ __ROR4__(*(v187 + 4 * BYTE1(v226)), 16) ^ *(v187 + ((v228 >> 22) & 0x3FC)) ^ v126 ^ LODWORD(STACK[0x55B0]) ^ v36;
  LODWORD(v211) = v36 ^ LODWORD(STACK[0x3D88]);
  STACK[0x3C88] = v228;
  LODWORD(v225) = v211 ^ __ROR4__(*(v187 + 4 * v228), 24) ^ __ROR4__(*(v187 + 4 * BYTE1(v225)), 16);
  STACK[0x3B78] = v226;
  LODWORD(v211) = *(v187 + 4 * BYTE2(v226));
  STACK[0x3D80] = v224;
  v229 = v212 ^ v126;
  STACK[0x3D88] = v225 ^ __ROR4__(v211, 8) ^ *(v187 + ((v224 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x55CC]) ^ v126;
  LODWORD(v211) = *STACK[0x55E8] ^ __ROR4__(*STACK[0x55F0], 24) ^ __ROR4__(*STACK[0x55F8], 16) ^ __ROR4__(*STACK[0x5600], 8);
  LODWORD(v226) = *STACK[0x5610] ^ __ROR4__(*STACK[0x5608], 24) ^ __ROR4__(*STACK[0x5618], 16) ^ __ROR4__(*STACK[0x5620], 8);
  LODWORD(v223) = *STACK[0x5628] ^ __ROR4__(*STACK[0x5630], 16) ^ __ROR4__(*STACK[0x5638], 24) ^ __ROR4__(*STACK[0x5640], 8);
  LODWORD(v212) = bswap32(*STACK[0x55B8] ^ __ROR4__(*STACK[0x55C0], 24) ^ __ROR4__(*STACK[0x55D0], 16) ^ __ROR4__(*STACK[0x55D8], 8));
  LODWORD(v220) = STACK[0x3C70];
  LODWORD(v176) = STACK[0x52DC];
  LODWORD(v126) = STACK[0x3B60];
  LODWORD(v225) = STACK[0x3C80];
  v230 = STACK[0x3B48];
  v231 = STACK[0x3C10];
  LODWORD(STACK[0x3CD0]) = (((v212 ^ (2 * (STACK[0x3C70] & v212))) & STACK[0x3B60]) << STACK[0x3C10]) + (((v212 ^ (2 * (STACK[0x3C70] & v212))) & STACK[0x3C80]) >> STACK[0x3B48]);
  LODWORD(v212) = ((STACK[0x5270] & (v212 ^ ((v176 & v212) >> 1))) >> STACK[0x53F0]) | ((STACK[0x3D38] & (v212 ^ ((v176 & v212) >> 1))) << STACK[0x53F8]);
  LODWORD(v211) = bswap32(v211);
  LODWORD(v222) = ((STACK[0x3C90] & (v211 ^ (2 * (v220 & v211)))) << STACK[0x3C00]) ^ ((STACK[0x3BA8] & (v211 ^ (2 * (v220 & v211)))) >> v125);
  LODWORD(v211) = (((v211 ^ ((v176 & v211) >> 1)) & STACK[0x526C]) << STACK[0x3D68]) | (((v211 ^ ((v176 & v211) >> 1)) & STACK[0x3D78]) >> STACK[0x3D70]);
  LODWORD(v226) = bswap32(v226);
  LODWORD(v213) = ((v225 & (v226 ^ (2 * (v220 & v226)))) >> v230) ^ (((v226 ^ (2 * (v220 & v226))) & v126) << STACK[0x3C00]);
  LODWORD(v226) = ((STACK[0x5270] & (v226 ^ ((v176 & v226) >> 1))) >> STACK[0x53F0]) + ((STACK[0x3D38] & (v226 ^ ((v176 & v226) >> 1))) << STACK[0x3D68]);
  v232 = bswap32(v223);
  LODWORD(v223) = v232 ^ (2 * (v220 & v232));
  LODWORD(v176) = ((STACK[0x3D78] & (v232 ^ ((v176 & v232) >> 1))) >> STACK[0x53F0]) + ((STACK[0x526C] & (v232 ^ ((v176 & v232) >> 1))) << STACK[0x53F8]);
  v233 = v213 ^ __ROR4__(*(v141 + 4 * BYTE2(STACK[0x3D50])), 8) ^ *(v141 + ((STACK[0x3D58] >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(STACK[0x3D90])), 16) ^ __ROR4__(*(v141 + 4 * STACK[0x3E38]), 24);
  v234 = v222 ^ __ROR4__(*(v141 + 4 * BYTE2(STACK[0x3D58])), 8) ^ *(v141 + ((STACK[0x3E38] >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(STACK[0x3D50])), 16) ^ __ROR4__(*(v141 + 4 * STACK[0x3D90]), 24);
  LODWORD(v231) = (((v223 & STACK[0x3BA8]) >> v230) + ((v223 & STACK[0x3C90]) << v231)) ^ __ROR4__(*(v141 + 4 * BYTE2(STACK[0x3D90])), 8) ^ *(v141 + ((STACK[0x3D50] >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * BYTE1(STACK[0x3E38])), 16);
  v235 = (LODWORD(STACK[0x3CD0]) ^ __ROR4__(*(v141 + 4 * BYTE2(STACK[0x3E38])), 8)) ^ __ROR4__(*(v141 + 4 * BYTE1(STACK[0x3D58])), 16) ^ *(v141 + ((STACK[0x3D90] >> 22) & 0x3FC)) ^ __ROR4__(*(v141 + 4 * STACK[0x3D50]), 24);
  v236 = STACK[0x3AD0];
  v237 = v231 ^ __ROR4__(*(v141 + 4 * STACK[0x3D58]), 24);
  LODWORD(v228) = HIWORD(*(v236 + 4 * BYTE2(v234))) ^ (*(v236 + ((v235 >> 22) & 0x3FC)) >> 8) ^ (*(v236 + 4 * BYTE2(v234)) << 16) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE1(v233)), 24) ^ *(v236 + 4 * v237);
  LODWORD(v36) = (*(v236 + ((v234 >> 22) & 0x3FC)) >> 8) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE2(v233)), 16) ^ *(v236 + 4 * v235);
  LODWORD(v174) = (*(v236 + ((v233 >> 22) & 0x3FC)) >> 8) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE2(v237)), 16) ^ *(v236 + 4 * v234) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE1(v235)), 24);
  HIDWORD(v227) = *(STACK[0x3AD0] + 4 * BYTE1(v234));
  LODWORD(v227) = HIDWORD(v227);
  LODWORD(v234) = (v227 >> 24) ^ (*(STACK[0x3AD0] + ((v237 >> 22) & 0x3FC)) >> 8);
  LODWORD(v227) = __ROR4__(*(STACK[0x3AD0] + 4 * BYTE2(v235)), 16);
  STACK[0x31A8] = v233;
  v238 = v234 ^ v227 ^ *(v236 + 4 * v233);
  v239 = *(v187 + ((STACK[0x3D48] >> 22) & 0x3FC)) ^ v211 ^ __ROR4__(*(v187 + 4 * BYTE1(STACK[0x3D88])), 16) ^ __ROR4__(*(v187 + 4 * BYTE2(STACK[0x3D60])), 8) ^ __ROR4__(*(v187 + 4 * v229), 24);
  v240 = v226 ^ __ROR4__(*(v187 + 4 * BYTE1(v229)), 16) ^ __ROR4__(*(v187 + 4 * BYTE2(STACK[0x3D88])), 8) ^ *(v187 + ((STACK[0x3D60] >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * STACK[0x3D48]), 24);
  v241 = v212 ^ __ROR4__(*(v187 + 4 * BYTE2(STACK[0x3D48])), 8) ^ *(v187 + ((v229 >> 22) & 0x3FC)) ^ __ROR4__(*(v187 + 4 * BYTE1(STACK[0x3D60])), 16) ^ __ROR4__(*(v187 + 4 * STACK[0x3D88]), 24);
  LODWORD(v126) = v176 ^ __ROR4__(*(v187 + 4 * BYTE2(v229)), 8) ^ *(v187 + ((STACK[0x3D88] >> 22) & 0x3FC));
  LODWORD(v221) = *(v187 + 4 * STACK[0x3D60]);
  LODWORD(v220) = *(v187 + 4 * BYTE1(STACK[0x3D48]));
  LODWORD(STACK[0x31A0]) = v221;
  v242 = v126 ^ __ROR4__(v221, 24) ^ __ROR4__(v220, 16);
  v243 = STACK[0x3AB0];
  v244 = ((*(STACK[0x3AB0] + 4 * BYTE1(v240)) << 8) ^ __ROR4__(*(STACK[0x3AB0] + ((v241 >> 22) & 0x3FC)), 8)) ^ __ROR4__(*(STACK[0x3AB0] + 4 * BYTE2(v239)), 16) ^ *(STACK[0x3AB0] + 4 * v242);
  HIDWORD(v227) = *(STACK[0x3AB0] + ((v239 >> 22) & 0x3FC));
  LODWORD(v227) = HIDWORD(v227);
  v245 = (v227 >> 8) ^ (*(STACK[0x3AB0] + 4 * BYTE1(v242)) << 8) ^ __ROR4__(*(STACK[0x3AB0] + 4 * BYTE2(v240)), 16) ^ *(STACK[0x3AB0] + 4 * v241);
  v246 = ((*(STACK[0x3AB0] + 4 * BYTE1(v241)) << 8) ^ __ROR4__(*(STACK[0x3AB0] + ((v240 >> 22) & 0x3FC)), 8)) ^ __ROR4__(*(STACK[0x3AB0] + 4 * BYTE2(v242)), 16) ^ *(STACK[0x3AB0] + 4 * v239);
  LODWORD(v242) = (*(STACK[0x3AB0] + 4 * BYTE1(v239)) << 8) ^ __ROR4__(*(STACK[0x3AB0] + ((v242 >> 22) & 0x3FC)), 8);
  LODWORD(v221) = *(STACK[0x3AB0] + 4 * BYTE2(v241));
  STACK[0x3D90] = v240;
  v247 = v242 ^ *(v243 + 4 * v240) ^ __ROR4__(v221, 16);
  v248 = STACK[0x3A70];
  v249 = v228 & 0xFF00FF | (*(v248 + BYTE1(v244)) << 8) | (*(v248 + (v244 >> 24)) << 24);
  LODWORD(v244) = *(v236 + 4 * BYTE1(v237));
  LODWORD(STACK[0x3198]) = v244;
  v250 = v36 ^ __ROR4__(v244, 24);
  v251 = *(v248 + BYTE1(v245));
  LODWORD(v244) = *(v248 + (v245 >> 24));
  STACK[0x3030] = v251;
  v252 = v250 & 0xFF00FF | (v251 << 8) | (v244 << 24);
  LODWORD(v244) = v174 & 0xFF00FF | (*(v248 + BYTE1(v246)) << 8);
  v253 = v238 & 0xFF00FF | (*(v248 + BYTE1(v247)) << 8) | (*(v248 + (v247 >> 24)) << 24);
  STACK[0x3C90] = v246;
  v254 = STACK[0x3A88];
  v255 = v244 | (*(v248 + (v246 >> 24)) << 24);
  LODWORD(v244) = *(STACK[0x3A88] + ((v249 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v253)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v244)), 16);
  STACK[0x2120] = v250;
  LODWORD(v247) = *(v254 + 4 * v250);
  STACK[0x3498] = v238;
  v256 = v244 ^ __ROR4__(v247, 24) ^ LODWORD(STACK[0x564C]);
  v257 = (*(v254 + ((v255 >> 22) & 0x3FC)) ^ __ROR4__(*(v254 + 4 * v238), 24)) ^ __ROR4__(*(v254 + 4 * BYTE2(v252)), 8) ^ __ROR4__(*(v254 + 4 * BYTE1(v249)), 16) ^ LODWORD(STACK[0x5654]);
  LODWORD(v249) = *(v254 + ((v252 >> 22) & 0x3FC)) ^ __ROR4__(*(v254 + 4 * BYTE2(v249)), 8);
  LODWORD(v247) = *(v254 + 4 * BYTE1(v253));
  STACK[0x3AE8] = v253;
  LODWORD(v249) = v249 ^ __ROR4__(v247, 16);
  v258 = (*(v254 + ((v253 >> 22) & 0x3FC)) ^ __ROR4__(*(v254 + 4 * BYTE1(v252)), 16)) ^ __ROR4__(*(v254 + 4 * BYTE2(v255)), 8) ^ __ROR4__(*(v254 + 4 * v228), 24) ^ LODWORD(STACK[0x5658]);
  v259 = v249 ^ __ROR4__(*(v254 + 4 * v174), 24) ^ LODWORD(STACK[0x5650]);
  LODWORD(v249) = *(v254 + ((v256 >> 22) & 0x3FC)) ^ __ROR4__(*(v254 + 4 * BYTE2(v258)), 8);
  LODWORD(v228) = *(v254 + ((v259 >> 22) & 0x3FC)) ^ __ROR4__(*(v254 + 4 * BYTE2(v256)), 8) ^ __ROR4__(*(v254 + 4 * BYTE1(v258)), 16) ^ __ROR4__(*(v254 + 4 * v257), 24);
  HIDWORD(v227) = *(v254 + 4 * BYTE1(v256));
  LODWORD(v227) = HIDWORD(v227);
  LODWORD(v174) = (v227 >> 16) ^ __ROR4__(*(v254 + 4 * BYTE2(v259)), 8) ^ *(v254 + ((v257 >> 22) & 0x3FC));
  LODWORD(v252) = *(v254 + 4 * v258);
  STACK[0x3AE0] = v256;
  LODWORD(v255) = *(v254 + 4 * v256);
  STACK[0x3D88] = v258;
  LODWORD(v174) = v174 ^ __ROR4__(v252, 24);
  LODWORD(v252) = *(v254 + ((v258 >> 22) & 0x3FC)) ^ __ROR4__(v255, 24) ^ __ROR4__(*(v254 + 4 * BYTE2(v257)), 8);
  LODWORD(v257) = *(v254 + 4 * BYTE1(v257));
  v260 = v252 ^ __ROR4__(*(v254 + 4 * BYTE1(v259)), 16);
  STACK[0x31D8] = v259;
  LODWORD(v255) = *(v254 + 4 * v259);
  v261 = STACK[0x3D18];
  v261[1393] = BYTE3(v260);
  v261[1395] = BYTE1(v260);
  v261[1386] = BYTE2(v228);
  v261[1385] = BYTE3(v228);
  v261[1387] = BYTE1(v228);
  v261[1391] = BYTE1(v174);
  v261[1390] = BYTE2(v174);
  v261[1392] = v174;
  v261[1389] = BYTE3(v174);
  v261[1388] = v228;
  v262 = v249 ^ __ROR4__(v257, 16) ^ __ROR4__(v255, 24);
  v261[1382] = BYTE2(v262);
  STACK[0x2D10] = STACK[0x3E18] >> 8;
  v261[1396] = v260;
  STACK[0x3C78] = v262 >> 8;
  v261[1383] = BYTE1(v262);
  v261[1384] = v262;
  STACK[0x2D28] = v262 >> 24;
  v261[1381] = BYTE3(v262);
  STACK[0x2D38] = v260 >> 16;
  v261[1394] = BYTE2(v260);
  return (*(v13 + 8 * SLODWORD(STACK[0x3E40])))();
}

uint64_t sub_100DEEC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  STACK[0x3D98] = 0;
  v25 = *(v24 + 8 * (a9 - 5939));
  STACK[0x2238] = 1;
  LODWORD(STACK[0x3B08]) = a9;
  v26 = STACK[0x32E8];
  LODWORD(STACK[0x3E18]) = STACK[0x32E8];
  LODWORD(STACK[0x1AA8]) = STACK[0x39A8];
  LODWORD(STACK[0x1698]) = STACK[0x3700];
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3488]) = v26;
  return v25(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_100DEED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = (v22 + 8279) ^ 0x2816;
  v25 = *(v23 - 184);
  v26 = (*(v25 + 8 * (v22 | 0x61EA)))(1032) == 0;
  *(v23 - 224) = v24;
  return (*(v25 + 8 * ((v26 * (v24 - 4685)) ^ v22)))(a22);
}

uint64_t sub_100DEEDE4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (((((((a1 - 1393923195) & 0x5315BFDF) + 3898) | 0x144) + 10399) * (v1 & 1)) ^ (a1 - 1393923195) & 0x5315BFDF));
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x33E8]) = STACK[0x3688];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  LODWORD(STACK[0x38C8]) = STACK[0x31D0];
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x3958]) = STACK[0x39C0];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  return v3();
}

uint64_t sub_100DEEF08@<X0>(int a1@<W8>)
{
  v2 = a1 + 1391028028;
  v3 = (*(v1 + 8 * (a1 + 1391048562)))();
  return (*(v1 + 8 * v2))(v3, 16295, 0x1EF2BFD8ALL, 0xD5CB96EBF795FEC5, 0x2A346914086A013BLL, 1391039517, 2018409467, 2276551197);
}

uint64_t sub_100DEF054()
{
  LODWORD(STACK[0x680]) = -143155721;
  LODWORD(STACK[0x90C]) = -143155721;
  LOBYTE(STACK[0x1377]) = 0;
  return (*(v2 + 8 * (v1 ^ (v0 + 2522) ^ ((((v1 - 1194867154) | 0x10900380) + 1211077331) * (v1 < 0xEBB3DC3D)))))();
}

uint64_t sub_100DEF0C8()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x168B)))((((v0 + 1453986378) & 0xA955BF6F) - 769899483) ^ *STACK[0x558]);
  STACK[0x20D8] = v3;
  if (v3)
  {
    v4 = -143113071;
  }

  else
  {
    v4 = v1;
  }

  LODWORD(STACK[0x20E4]) = v4;
  return (*(v2 + 8 * (((v3 != 0) * (v0 ^ 0x6AC4)) ^ v0)))();
}

void sub_100DEF15C(uint64_t a1)
{
  v1 = 289235981 * ((~a1 & 0xB2599C30 | a1 & 0x4DA663CF) ^ 0x35DB4C0F);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100DEF228()
{
  STACK[0x37A8] = 0;
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3CF0]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * (((v0 ^ 0x62C5 ^ (3 * (v0 ^ 0x3882))) * (LODWORD(STACK[0x38C8]) > STACK[0x3840])) ^ v0));
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x3578];
  STACK[0x3D40] = STACK[0x3578];
  STACK[0x3B20] = v3;
  STACK[0x3B18] = STACK[0x3D78];
  LODWORD(STACK[0x3798]) = STACK[0x39F0];
  STACK[0x3D90] = LODWORD(STACK[0x32D0]);
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100DEF9B0()
{
  LODWORD(STACK[0x3D98]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x3D68]) = v1 ^ 0x4164;
  v3 = *(v2 + 8 * ((((((v1 + 1834584937) & 0x92A677FF) + 15871) ^ v1 ^ 0x4164) * (v0 & 1)) ^ v1));
  LODWORD(STACK[0x3E18]) = 1;
  STACK[0x3D58] = STACK[0x3198];
  STACK[0x3D60] = STACK[0x3998];
  STACK[0x3D88] = STACK[0x39E8];
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3D40]) = 1;
  LODWORD(STACK[0x3E40]) = STACK[0x39A0];
  LODWORD(STACK[0x30D0]) = STACK[0x39C0];
  LODWORD(STACK[0x2010]) = STACK[0x38B8];
  LODWORD(STACK[0x3D20]) = STACK[0x3948];
  LODWORD(STACK[0x3D90]) = STACK[0x3988];
  LODWORD(STACK[0x3958]) = STACK[0x32C8];
  LODWORD(STACK[0x3D70]) = STACK[0x3980];
  return v3();
}

uint64_t sub_100DEFA8C@<X0>(int a1@<W8>)
{
  v6 = STACK[0x35C0];
  v7 = STACK[0x3D88];
  *(v6 + v2) = STACK[0x3D88];
  v8 = STACK[0x3598];
  v9 = STACK[0x3D98];
  *(v8 + v2) = STACK[0x3D98];
  v10 = v2 | 1;
  v11 = STACK[0x3E18];
  *(v6 + v10) = STACK[0x3E18];
  v12 = STACK[0x3D90];
  *(v8 + v10) = STACK[0x3D90];
  v13 = v2 | 2;
  *(v6 + v13) = a1;
  v14 = STACK[0x3E38];
  *(v8 + v13) = STACK[0x3E38];
  v15 = v2 | 3;
  *(v6 + v15) = v3;
  LODWORD(v6) = a1 ^ 0x72F934F4;
  v16 = STACK[0x3D80];
  *(v8 + v15) = STACK[0x3D80];
  v17 = (v6 + v7) ^ (v6 + v11);
  LODWORD(v15) = v14 ^ 0x72F934F4;
  LODWORD(STACK[0x3D88]) = v17;
  LODWORD(v8) = v12 + (v14 ^ 0x72F934F4);
  v18 = v8 ^ (v9 + (v14 ^ 0x72F934F4));
  v19 = v15 ^ v16;
  LODWORD(STACK[0x3D98]) = v18;
  LODWORD(v15) = v18 + v15;
  LODWORD(STACK[0x3D90]) = v15 + v8;
  LODWORD(STACK[0x3E38]) = v15;
  LODWORD(STACK[0x3D80]) = v15 + v19;
  LODWORD(STACK[0x3E18]) = v6 + v4 + v17 + v6 + 800324349;
  return (*(v5 + 8 * ((56 * (v2 > 0x3B)) ^ (v1 - 2306))))();
}

uint64_t sub_100DEFB78@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v4 = STACK[0x4D0] << 7;
  *(a1 + v4 + 16) = 0x30BDFED8F32E6831;
  v5 = a2 | ((a2 + 651985734 + ((3 * (a2 ^ 0xACAFF73D) - 1356685034) & 0x50DD72C7)) << 32);
  return (*(v3 + 8 * (((((*(*(v2 + 8) + v4) - v5) | (v5 - *(*(v2 + 8) + v4))) & 0x8000000000000000) == 0) | (a2 + 1397772310))))();
}

uint64_t sub_100DEFF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  LODWORD(a41) = v44;
  HIDWORD(a38) = a6;
  return (*(STACK[0x200] + 8 * v45))(61, 893, 34415, 975, 1311746155, 183, 46, 31082, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v43, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, &STACK[0x610]);
}

uint64_t sub_100DF0014@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *STACK[0xA68] = a1;
  *STACK[0x838] = v3;
  return (*(v2 + 8 * a2))();
}

uint64_t sub_100DF0070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>)
{
  v10 = ~v4 + a2;
  v11 = *(v8 + v10 - 15);
  v12 = *(v8 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = veorq_s8(v11, a3);
  *(v13 - 31) = veorq_s8(v12, a3);
  return (*(v9 + 8 * (((v6 + v4 == v3) * v7) ^ v5)))();
}

uint64_t sub_100DF0100()
{
  v3 = (*(v2 + 8 * (v1 + 20598)))(LODWORD(STACK[0x9E0]) ^ 0xD21C8764 ^ (v1 + 739384370) & 0xD3EDBFF5);
  STACK[0x1A98] = v3;
  if (v3)
  {
    v4 = -143113071;
  }

  else
  {
    v4 = v0;
  }

  LODWORD(STACK[0x1AA4]) = v4;
  return (*(v2 + 8 * (((v3 != 0) * ((v1 - 1365519369) & 0x5164597F ^ 0x5EFD)) ^ v1)))();
}

uint64_t sub_100DF02BC(unint64_t a1)
{
  v4 = *(v3 + 8 * (v2 - 9198));
  STACK[0x36F0] = v1;
  STACK[0x3750] = a1;
  STACK[0x3D98] = STACK[0x3D98];
  return v4();
}

uint64_t sub_100DF032C(int a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  v19 = v10;
  LODWORD(STACK[0x3B08]) += LODWORD(STACK[0x3D68]);
  LODWORD(STACK[0x3B00]) += LODWORD(STACK[0x3D70]);
  ++LODWORD(STACK[0x38B8]);
  LODWORD(STACK[0x38B0]) -= 64;
  v20 = v15 - v17 + v8 + 672078032;
  v21 = 2764 * (LODWORD(STACK[0x3B20]) ^ 0x3EAE);
  LODWORD(STACK[0x3D70]) = v21;
  v22 = (v21 ^ 0x43760DBF) + a8 - v17;
  LODWORD(STACK[0x3D68]) = v22;
  v23 = (a8 - v17) ^ (v17 - 672078032);
  LODWORD(STACK[0x3D60]) = v20;
  v24 = v17 - 672078032 - (v15 - v17 + 672078032);
  LODWORD(STACK[0x3D58]) = v24;
  v25 = v24 ^ v23;
  v26 = v22 + (v24 ^ v23);
  v27 = v20 ^ v23;
  v28 = v26 + 1211453989 + (v24 ^ v23);
  v29 = v27 - v28;
  LODWORD(STACK[0x3D40]) = v28;
  v30 = (v26 + 1211453989) ^ a1 ^ (v27 - v28);
  v31 = STACK[0x3D90];
  v32 = a2 - 672078032;
  v33 = v12 - a2;
  LODWORD(STACK[0x3D30]) = v33;
  LODWORD(STACK[0x3D20]) = a5;
  v34 = v14 - v32 + a5;
  LODWORD(STACK[0x3CF0]) = v34;
  v35 = v32 - (v14 - v32);
  LODWORD(STACK[0x3D48]) = v35;
  v36 = v33 ^ v32;
  v37 = v36 ^ v35;
  v38 = v33 - 1951680404 + (v36 ^ v35);
  v39 = (v38 ^ v31) - v38;
  v40 = v38 + (v36 ^ v35);
  v41 = (v36 ^ v34) - v40;
  LODWORD(STACK[0x3998]) = (((v41 ^ v31) - v41) ^ v39 ^ ((v30 ^ v31) - v30)) + LODWORD(STACK[0x3998]) - v40;
  v42 = v25 + 659944943 + v26;
  LODWORD(STACK[0x3820]) = v42;
  v43 = (v29 - v25) ^ v25;
  LODWORD(STACK[0x3D28]) = v43;
  LODWORD(STACK[0x3828]) = v25 ^ 0x5E2758B8;
  v44 = ((v23 + 1264619616 - (v26 + 1211453989 + v25)) ^ 0xC6BBA559) + (v25 ^ 0x5E2758B8);
  v45 = v43 - v42;
  LODWORD(STACK[0x3860]) = v45;
  v46 = v44 - 931722570 + (v45 ^ 0x54A9CBCA);
  LODWORD(STACK[0x3838]) = v46;
  v47 = (v45 ^ 0x624002C3) + 967804344;
  LODWORD(STACK[0x3830]) = v47;
  v48 = v47 + v46;
  LODWORD(STACK[0x3D90]) = v48;
  v49 = v48 ^ v19;
  v50 = STACK[0x3D80];
  v51 = (v49 ^ LODWORD(STACK[0x3D80])) - v49;
  v52 = 25 * (LODWORD(STACK[0x3B20]) ^ 0x3E1C);
  v53 = (v41 - v37) ^ v37;
  LODWORD(STACK[0x3850]) = v53;
  v54 = v36 + 1264619616 - v40;
  v55 = v40 - 551509046;
  LODWORD(STACK[0x3818]) = v52;
  v56 = v53 - (v40 - 551509046);
  LODWORD(STACK[0x3840]) = v56;
  v57 = v56 ^ v52 ^ 0x54A9DA32;
  LODWORD(STACK[0x3848]) = v57;
  LODWORD(STACK[0x3858]) = v37 ^ 0x5E2758B8;
  v58 = (v54 ^ 0xC6BBA559) + (v37 ^ 0x5E2758B8);
  v59 = v58 - 931722570 + v57;
  LODWORD(STACK[0x3890]) = v59;
  v60 = (v56 ^ 0x624002C3) + 967804344;
  v61 = v55 + (v37 ^ 0x5E2758B8);
  v62 = v58 ^ v61;
  v63 = v59 ^ v58 ^ v61;
  v64 = v63 + v60;
  v65 = v63 + v60 + 58903901;
  v66 = v50 ^ 0xE030731D ^ v65;
  v67 = v65 ^ 0xE030731D;
  LODWORD(STACK[0x3878]) = v65 ^ 0xE030731D;
  v68 = v59 + v60;
  v69 = v67 ^ (v59 + v60);
  LODWORD(STACK[0x3888]) = v69;
  v70 = ((v69 ^ v50) - v69) ^ (v66 - v67) ^ v51;
  v71 = v61 + (v37 ^ 0x40760745);
  v72 = v63 + (v71 ^ 0xA7D01D5E);
  v73 = (v71 ^ 0xA7D01D5E) - v60;
  LODWORD(STACK[0x3D80]) = v73;
  LODWORD(STACK[0x3AF0]) = v70 + LODWORD(STACK[0x3AF0]) - (v73 ^ v68);
  v74 = STACK[0x3828];
  v75 = STACK[0x3820];
  v76 = LODWORD(STACK[0x3820]) + LODWORD(STACK[0x3828]) + (v25 ^ 0x40760745);
  v77 = v44 ^ (LODWORD(STACK[0x3820]) + LODWORD(STACK[0x3828]));
  LODWORD(STACK[0x3988]) += v9 + LODWORD(STACK[0x3D58]);
  LODWORD(STACK[0x3980]) = ((((LODWORD(STACK[0x3D30]) + 1131832903) ^ LODWORD(STACK[0x3E38])) - (LODWORD(STACK[0x3D30]) + 1131832903)) ^ ((LODWORD(STACK[0x3CF0]) ^ LODWORD(STACK[0x3E38])) - LODWORD(STACK[0x3CF0])) ^ ((LODWORD(STACK[0x3D60]) ^ v9 ^ LODWORD(STACK[0x3D68]) ^ LODWORD(STACK[0x3E38])) - (LODWORD(STACK[0x3D60]) ^ v9 ^ LODWORD(STACK[0x3D68])))) + LODWORD(STACK[0x3980]) - LODWORD(STACK[0x3D48]);
  v78 = STACK[0x3838];
  v79 = LODWORD(STACK[0x3838]) ^ v77;
  v80 = STACK[0x3830];
  v81 = v79 + LODWORD(STACK[0x3830]);
  v82 = STACK[0x3E18];
  LODWORD(STACK[0x3AE8]) = (((v64 ^ LODWORD(STACK[0x3D98])) - v64) ^ ((v60 ^ LODWORD(STACK[0x3D98])) - v60) ^ ((LODWORD(STACK[0x3830]) ^ LODWORD(STACK[0x3E18]) ^ v81 ^ LODWORD(STACK[0x3D98])) - (LODWORD(STACK[0x3830]) ^ LODWORD(STACK[0x3E18]) ^ v81))) + LODWORD(STACK[0x3AE8]) - v72;
  v83 = (v62 ^ v11) - v62;
  v84 = v18 + LODWORD(STACK[0x39E8]);
  LODWORD(STACK[0x3AA0]) = (((v16 ^ 0x91725E66 ^ LODWORD(STACK[0x3840])) - LODWORD(STACK[0x3848])) ^ v83 ^ ((v16 ^ 0x91725E66 ^ LODWORD(STACK[0x3860]) ^ v18 ^ v77) - (LODWORD(STACK[0x3860]) ^ v18 ^ v77 ^ 0x54A9CBCA))) + LODWORD(STACK[0x3AA0]) - v71;
  LODWORD(STACK[0x39F0]) = (((LODWORD(STACK[0x3850]) ^ LODWORD(STACK[0x3E40])) - LODWORD(STACK[0x3850])) ^ ((v55 ^ LODWORD(STACK[0x3E40])) - v55) ^ ((v75 ^ a6 ^ LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x3E40])) - (v75 ^ a6 ^ LODWORD(STACK[0x3D28])))) + LODWORD(STACK[0x39F0]) - LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x39A0]) += LODWORD(STACK[0x3D38]) + LODWORD(STACK[0x3D40]);
  LODWORD(STACK[0x3A28]) += a6 + v74;
  v85 = v8 + STACK[0x3900];
  v86 = v82 + LODWORD(STACK[0x3AD8]);
  LODWORD(STACK[0x39E8]) = v84 + v76;
  LODWORD(STACK[0x3AD8]) = v86 + (v76 ^ 0xA7D01D5E) + v79;
  v87 = STACK[0x3D88];
  v88 = (LODWORD(STACK[0x3D88]) ^ v14) - v14;
  v89 = STACK[0x3D78];
  STACK[0x3900] = (v85 + LODWORD(STACK[0x3D78]));
  v90 = (v12 ^ v87) - v12;
  v91 = LODWORD(STACK[0x3888]) + 1181368360;
  v92 = (v81 + 58903901) ^ 0xE030731D;
  v93 = v90 ^ v88;
  v94 = STACK[0x3D90];
  v95 = (v92 ^ LODWORD(STACK[0x3D90])) + 1181368360;
  v96 = v91 ^ LODWORD(STACK[0x3D80]);
  LODWORD(STACK[0x3960]) = (v93 ^ ((a8 ^ v15 ^ v89 ^ v87) - (a8 ^ v15 ^ v89))) + LODWORD(STACK[0x3960]) - LODWORD(STACK[0x3D20]);
  LODWORD(STACK[0x3AE0]) += LODWORD(STACK[0x3D50]) + (v94 ^ ((v76 ^ 0xA7D01D5E) - v80));
  v97 = *(v13 + 8 * (LODWORD(STACK[0x3B20]) ^ (30056 * (LODWORD(STACK[0x37F8]) > LODWORD(STACK[0x3940])))));
  LODWORD(STACK[0x3E40]) = STACK[0x3940];
  return v97(v96, v95 ^ ((v78 ^ 0x509D1014) - v92), v91 ^ 0x5FAE5B14u);
}

uint64_t sub_100DF0980()
{
  v4 = STACK[0x3D18];
  v4[224] = HIBYTE(v1);
  v4[226] = BYTE1(v1);
  v5 = STACK[0x3E18];
  v4[227] = v1;
  v4[225] = v1 >> (5 * (v0 ^ 0xCB) - 26);
  return (*(v3 + 8 * ((31 * (v2 >= v5)) ^ v0)))();
}

uint64_t sub_100DF09F8(int a1, unint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, int a8)
{
  STACK[0x36C8] = 0;
  STACK[0x36E8] = 0;
  STACK[0x3940] = 0;
  LODWORD(STACK[0x3348]) = 0;
  v18 = STACK[0x3858];
  LODWORD(STACK[0x3D90]) = a1;
  v19 = HIWORD(v18);
  v20 = *(v11 + 8 * SLODWORD(STACK[0x498]));
  v21 = HIBYTE(v18);
  LODWORD(STACK[0x3D80]) = 1;
  STACK[0x38B0] = v14;
  STACK[0x3808] = v15;
  STACK[0x3650] = v10;
  STACK[0x37A8] = v16;
  LODWORD(STACK[0x3D78]) = v17;
  STACK[0x34F0] = v13;
  STACK[0x3800] = a7;
  LODWORD(STACK[0x3D88]) = a8;
  STACK[0x3428] = v12;
  LODWORD(STACK[0x3E38]) = v9;
  STACK[0x35A0] = a4;
  STACK[0x3570] = a6;
  LODWORD(STACK[0x3D70]) = a3;
  STACK[0x36E0] = v8;
  STACK[0x3828] = a2;
  STACK[0x3838] = v21;
  LODWORD(STACK[0x3858]) = v21;
  LODWORD(STACK[0x1B50]) = STACK[0x221C];
  LODWORD(STACK[0x3310]) = STACK[0x35FC];
  LODWORD(STACK[0x3308]) = STACK[0x3970];
  LODWORD(STACK[0x3300]) = STACK[0x35F8];
  return v20(v19);
}

uint64_t sub_100DF0B0C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v58 = (v55 + a2) >> 16;
  v59 = v52 + v55 + v58 - ((v55 + v58 + v54 - ((v55 + v58 + v54 - ((v55 + a2 + v58) >> 8)) >> 15) - ((v55 + a2 + v58) >> 8)) >> 5) - ((v55 + v58 + v54 - ((v55 + a2 + v58) >> 8)) >> 15) - ((v55 + a2 + v58) >> 8) - v53;
  v60 = (v59 ^ 0x4A96EB54) - ((v59 ^ 0x4A96EB54u) >> ((a5 + 37) & 0xFB ^ 0x20));
  v61 = v60 - (v60 >> 2);
  v62 = (v61 ^ 0x77403490) - ((v61 ^ 0x77403490) >> 10) - (((v61 ^ 0x77403490) - ((v61 ^ 0x77403490) >> 10)) >> 3);
  v63 = (v62 ^ 0x738A30ED) + ((v62 ^ 0x738A30ED) >> 14) - (((v62 ^ 0x738A30ED) + ((v62 ^ 0x738A30ED) >> 14)) >> 8);
  v64 = v63 + 976643595 + ((v63 + 976643595) >> 9) + ((v63 + 976643595 + ((v63 + 976643595) >> 9)) >> 7);
  v65 = (v64 ^ 0x56D1C0B2) - ((v64 ^ 0x56D1C0B2) >> 15) + (((v64 ^ 0x56D1C0B2) - ((v64 ^ 0x56D1C0B2) >> 15)) >> 5);
  v66 = v59 ^ v51;
  v67 = v65 + 671343139 + ((v65 + 671343139) >> 13) - ((v65 + 671343139 + ((v65 + 671343139) >> 13)) >> 3);
  v68 = v66 ^ v63;
  v69 = v68 ^ v67;
  v70 = v61 ^ v49 ^ v64;
  v71 = v67 - 778742001 + ((v67 - 778742001) >> 11) + ((v67 - 778742001 + ((v67 - 778742001) >> 11)) >> 7);
  v72 = v70 ^ v71;
  LOBYTE(v70) = v70 ^ v71 ^ 0xCF ^ ((v70 ^ v71 ^ 0x23CF) >> 8) ^ ((v70 ^ v71 ^ 0x607223CF) >> 16);
  LODWORD(STACK[0x278]) = (v68 ^ v67) & 0x7F ^ 0x29;
  v73 = v62 ^ v50 ^ v65 ^ (v71 + 1404006668 + ((v71 + 1404006668) >> 14) - ((v71 + 1404006668 + ((v71 + 1404006668) >> 14)) >> 2));
  LODWORD(STACK[0x274]) = v73;
  v73 ^= 1u;
  v74 = -v73;
  v75 = v73 & 7;
  *(v57 - 248) = v75;
  *(v57 - 240) = v70 ^ BYTE3(v72) ^ 0x92;
  *(v57 - 236) = (16843009 * ((v68 ^ v67) ^ 0xC9 ^ ((v68 ^ v67 ^ 0x5C9) >> 8) ^ ((v68 ^ v67 ^ 0x3BA905C9) >> 16) ^ BYTE3(v69) ^ 0x82)) ^ 0xB9B9B9B9;
  if (v75)
  {
    v76 = 255;
  }

  else
  {
    v76 = 0;
  }

  v77 = v74 & 7;
  *(v57 - 252) = v77;
  v78 = v76 << v77;
  LODWORD(STACK[0x2A0]) = v78;
  LODWORD(STACK[0x270]) = (-1224736768 * v78) & v72;
  if (v75)
  {
    v79 = ~v78;
  }

  else
  {
    v79 = 0;
  }

  *(v57 - 232) = v69;
  LODWORD(STACK[0x2AC]) = (v68 ^ v67) & v79;
  return (*(v56 + 8 * a5))(*(v56 + 8 * a5), 2090640027, 107, 1828753386, a5, v69, v72, 0xCB6C4E766118578, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_100DF1154()
{
  STACK[0x38B0] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = (((v3 ^ 0x491C) - 5196) ^ 0x3E40) + v0;
  v5 = *(v4 + 8 * (v3 ^ (1928 * (v1 != 18))));
  STACK[0x3850] = 18;
  return v5();
}

uint64_t sub_100DF11A8()
{
  v2 = STACK[0x3D78];
  v3 = STACK[0x3CD8];
  v4 = STACK[0x3BF8];
  v5 = STACK[0x3CC8];
  v6 = STACK[0x3708];
  v7 = STACK[0x3C18];
  v8 = STACK[0x3BC0];
  v9 = STACK[0x3718];
  v10 = STACK[0x3CE0];
  v11 = STACK[0x3B38];
  STACK[0x3470] = STACK[0x3C18];
  v11[1422] = v7;
  LODWORD(STACK[0x33E4]) = v3;
  v11[1431] = v3;
  v11[1428] = STACK[0x3600];
  v11[1433] = v8;
  v11[1424] = STACK[0x3640];
  v12 = STACK[0x3C50];
  STACK[0x3CB8] = v2;
  *v12 = v2;
  STACK[0x33B0] = v6;
  v11[1426] = v6;
  v11[1423] = STACK[0x3CD0];
  STACK[0x33B8] = v10;
  v11[1435] = v10;
  v11[1434] = STACK[0x3B78];
  STACK[0x33C8] = v5;
  v11[1427] = v5;
  STACK[0x34A8] = v9;
  v11[1430] = v9;
  v11[1432] = STACK[0x3638];
  v11[1436] = STACK[0x3630];
  STACK[0x33D0] = v4;
  v11[1425] = v4;
  v11[1429] = STACK[0x3720];
  STACK[0x3388] = v8;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100DF1320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v5 = *(v4 + 8 * (v3 - 14599));
  LODWORD(STACK[0x3CF0]) = 26;
  LODWORD(STACK[0x3D88]) = 2;
  v6 = STACK[0x438];
  STACK[0x3D40] = STACK[0x438];
  v7 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
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
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = v8;
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v5(a1, v3, a3, v8);
}

uint64_t sub_100DF148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 8 * ((LODWORD(STACK[0x3E18]) * (LODWORD(STACK[0x3D68]) ^ 0x1BE6)) ^ (LODWORD(STACK[0x3D68]) - 5718)));
  LODWORD(STACK[0x33E8]) = 14;
  return v9(a1, STACK[0x3290], a3, a4, a5, a8);
}

uint64_t sub_100DF151C(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v9 = v5 < a3;
  *(v4 + v6) = 0;
  v10 = v6 + a1 + (v7 ^ v8);
  v11 = a3 + v6 + 1 < v5;
  if (v9 == v10 > a2)
  {
    v9 = v11;
  }

  return (*(STACK[0x8B0] + 8 * ((!v9 * a4) ^ v7)))();
}

uint64_t sub_100DF1578()
{
  LODWORD(STACK[0x31D0]) = STACK[0x3850];
  v4 = *(v3 + 8 * (((v2 > v0) * (((509 * (v1 ^ 0x2055)) ^ 0x7F9) + 101 * (v1 ^ 0x20C7))) ^ v1));
  STACK[0x3850] = 0;
  return v4();
}

uint64_t sub_100DF15CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  LODWORD(STACK[0x3D70]) = 0;
  *v5 = *v7;
  v10 = *(v9 + 8 * (((v4 + 1 == a4) * ((v8 | 0x120C) - 18323)) ^ v6));
  LODWORD(STACK[0x3D80]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  STACK[0x3D98] = a4;
  return v10();
}

uint64_t sub_100DF1710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v8 = *(v7 + 8 * (a7 - 9672));
  LODWORD(STACK[0x3980]) = 43;
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

uint64_t sub_100DF1848@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * ((((a1 + 10147) ^ 0x5BC) * (STACK[0x2AF0] & 1)) ^ (a1 + 2073)));
  LODWORD(STACK[0x3CF0]) = 67;
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x448];
  STACK[0x3D40] = STACK[0x448];
  v4 = STACK[0x1BE8];
  STACK[0x3D78] = STACK[0x1BE8];
  STACK[0x3B20] = v3;
  STACK[0x3B18] = v4;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v5 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = v5;
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100DF19FC@<X0>(int a1@<W6>, unint64_t a2@<X7>, int a3@<W8>)
{
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
  v5 = (a3 - 783269982) & 0x2EAFDF7C;
  v6 = (v5 + 1455764883) & 0xA93AD2BE;
  LODWORD(STACK[0x3D68]) = v6;
  v7 = (v5 + 2130);
  v8 = *(v4 + 8 * ((11807 * (v3 != v6 - 21134)) ^ v5));
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
  v9 = STACK[0x3540];
  LODWORD(STACK[0x3E18]) = STACK[0x3540];
  LODWORD(STACK[0x3D40]) = v9;
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
  LODWORD(v9) = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D80]) = v9;
  LODWORD(STACK[0x3D70]) = STACK[0x3980];
  LODWORD(STACK[0x2BB0]) = 17;
  LODWORD(STACK[0x3AD8]) = 15;
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2928];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  v10 = STACK[0x32D8];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v10;
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
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
  LODWORD(STACK[0x2BC8]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x39A8]) = STACK[0x3B18];
  LODWORD(STACK[0x3860]) = STACK[0x3808];
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  LODWORD(STACK[0x3268]) = v10;
  return v8(v7);
}

uint64_t sub_100DF1C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v11 = (STACK[0x3B50] + a8);
  v12 = v11[1];
  *(v10 - 1) = *v11;
  *v10 = v12;
  return (*(v8 + 8 * ((503 * (v9 != 0)) ^ a7)))();
}

uint64_t sub_100DF1D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v25 = (a2 - ((((v24 + 798456813) ^ 0x1A49u) - 0x7B7DFA016E250EE8) & (2 * a2)) - 0x3DBEFD00B7126414) ^ v18 ^ 0x103AE65781E96451;
  v26 = a3 ^ ((v19 | a14) - ((2 * (v19 | a14)) & 0x9F11986CD19E573ELL) + 0x4F88CC3668CF2B9FLL);
  v27 = v18 ^ 0x103AE65781E96451 ^ v21;
  v28 = v27 ^ 0x70906B7240742C17;
  v29 = (v25 ^ 0xEF0A7E6E21FB574BLL) & (v26 ^ 0x5D990D94EC1E2ADDLL);
  v30 = (v25 ^ 0x10F58191DE04A8B4) & (v27 ^ 0x530EA91B6DA59D37);
  v31 = v26 ^ v22 ^ v21 & 0x6DCC1223E21D956CLL ^ (v18 ^ 0xBFB7F68B2B196AD1) & (v21 ^ 0x914FABE4254806DBLL);
  v32 = (v26 ^ v22 ^ 0x4AB480A0B0DD6F63) & (v26 ^ 0x15C6C50AF1D3F185) ^ v26 & 0x6FA8BFB13B0104A0 ^ v25 ^ 0x10F58191DE04A8B4;
  v33 = v21 & 0x99D66108CBF38BE0 ^ (v26 ^ v22 ^ 0x4335A1E6BFD01FDCLL) & (v21 ^ 0x6EB0541BDAB7F924) ^ 0xFD7844CC6C076413 ^ ((v32 ^ 0x580850031010080) - ((2 * (v32 ^ 0x580850031010080)) & 0xEBD009894D69DA66) - 0xA17FB3B594B12CDLL);
  v34 = v26 ^ 0xCEDCBA05D5AD6364 ^ (v33 - ((2 * v33) & 0x35C69CD825F7AAF8) + 0x1AE34E6C12FBD57CLL);
  v35 = *(a15 + (((v34 >> 61) | (16 * (v34 >> 61))) ^ 0x13));
  v36 = v25 & 0xB7A03761E23224A7 ^ v28 ^ v29;
  v37 = v32 ^ 0x75C709536B78E099 ^ v36;
  v38 = ((v35 >> 4) | (16 * v35));
  v39 = v21 ^ ((v31 ^ 0x24503D31ABD46F8BLL) - 2 * ((v31 ^ 0x24503D31ABD46F8BLL) & 0x5C37B45346558C35 ^ v31 & 4) - 0x23C84BACB9AA73CFLL) ^ 0x4EB8E21454390950 ^ (v30 - ((2 * v30) & 0x842F1675B92CB204) - 0x3DE874C52369A6FELL);
  v36 ^= 0x6D7C08754734E00BuLL;
  v40 = (8 * v34) ^ __ROR8__(v34, 39);
  v41 = v36 >> (v28 & 7) >> (v28 & 7 ^ 7);
  HIDWORD(v42) = ((v35 >> 4) | (16 * v35)) ^ (v38 >> 3) ^ (v38 >> 1);
  LODWORD(v42) = v35 << 28;
  v43 = ((v36 >> 41) | (v36 << 57)) ^ (v36 << 23) ^ (v41 + v36 - 2 * (v41 & v36));
  v44 = v37 ^ (v37 >> 19) ^ (v37 << 36) ^ ((v37 >> 28) | (v37 << 45)) ^ v43;
  v45 = (((v39 ^ (v39 << 47)) + (v39 >> 10) - 2 * ((v39 ^ (v39 << 47)) & (v39 >> 10))) ^ (v39 << 54)) + (v39 >> 17) - 2 * (((v39 ^ (v39 << 47)) + (v39 >> 10) - 2 * ((v39 ^ (v39 << 47)) & (v39 >> 10))) & (v39 >> 17));
  v46 = v31 ^ 0x92D6282350DCE628 ^ ((v31 ^ 0x92D6282350DCE628) >> 1) ^ ((((v31 ^ 0x92D6282350DCE628) << 58) ^ (v31 << 63)) & 0xFC00000000000000 | ((v31 ^ 0x92D6282350DCE628) >> 6));
  v47 = v40 + v34 - 2 * (v40 & v34) + ((v42 >> 31) ^ 0x28u) - 2 * ((v40 + v34 - 2 * (v40 & v34)) & ((v42 >> 31) ^ 0x28u));
  v48 = v45 ^ v43;
  v49 = v47 ^ v46;
  v50 = v47 & ~v44;
  v51 = v45 & ~(v47 ^ v46) ^ v47;
  v52 = v46 & ~v47;
  v53 = v44 & ~(v45 ^ v43);
  v54 = v52 ^ v44;
  LOWORD(v44) = v51 ^ v54;
  v55 = v51 ^ v54 ^ 0xD07C2F2AEC6C67C9;
  v56 = v44 & 0x1000;
  v57 = v53 ^ v45;
  v58 = v49 ^ v43 & ~v45;
  v59 = v50 ^ v48 ^ 0xF8ED69D3B518BDE5 ^ v54;
  v60 = v57 ^ v58;
  v61 = v58 ^ 0x765D3F7FAF3A6F85;
  v62 = 8 * v55;
  v63 = __ROR8__(v60 ^ 0x616237B89EB43743, 10);
  v64 = v50 ^ v48 ^ 0x1AF8CE114CEE643FLL;
  v65 = v55 & 0xFFFFFFFFFFFFEFFFLL ^ (v55 << 25) ^ (v55 >> 39) ^ (8 * v55) ^ (v56 & 0xFFFFFFFFFFFFFFF8 | (v55 >> 61));
  v66 = ((v60 ^ 0x616237B89EB43743 ^ v63 ^ -(v60 ^ 0x616237B89EB43743 ^ v63) ^ (((v60 ^ 0x616237B89EB43743) << 47) - (v60 ^ 0x616237B89EB43743 ^ v63 ^ ((v60 ^ 0x616237B89EB43743) << 47)))) + ((v60 ^ 0x616237B89EB43743) << 47)) ^ ((v60 ^ 0x616237B89EB43743uLL) >> 17);
  v67 = (v61 ^ (v61 << 63) ^ (v61 << 58)) & (v61 >> 1) ^ (v61 >> 6) ^ (v61 ^ (v61 << 63) ^ (v61 << 58) | (v61 >> 1));
  v68 = v65 ^ v67;
  v69 = __ROR8__(__ROR8__(((((v64 << 57) ^ (v64 << 23)) >> 37) | (v64 << 50)) ^ __ROR8__(((v64 >> 7) ^ -(v64 >> 7) ^ ((v64 ^ (v64 >> 41)) - (v64 ^ (v64 >> 41) ^ (v64 >> 7)))) + (v64 ^ (v64 >> 41)), 37) ^ 0x1ACB3E0D80102DF4, 19) ^ 0xC69E3C2460B0AEF5, 8);
  v70 = v59 ^ (v59 >> 19) ^ (v59 << 36) ^ (v59 << 45) ^ (v59 >> 28) ^ v69;
  v71 = v70 ^ 0xF7C320BF7D07711ELL ^ v67 & ~v65;
  v72 = (v69 ^ v66 ^ 0x83CDF4082F88EE1) & (v70 ^ 0xF7C320BF7D07711ELL);
  v73 = v69 ^ v66 ^ 0xF7C320BF7D07711ELL;
  v74 = (v70 ^ 0x83CDF4082F88EE1) & v65;
  LOBYTE(v38) = v74 & v73;
  v75 = v73 & ~v66 ^ v68;
  v76 = v74 + v73 - 2 * (v74 & v73);
  v77 = __ROR8__(v66 & ~v68 ^ v65 ^ v71, 27);
  v78 = v75 ^ 0xC9E50360AD239EC3;
  v79 = __ROR8__(v77 ^ 0xD9FA6728C070E1DCLL, 37) ^ 0xE231BE709CA68C7BLL;
  v80 = v66 ^ 0xA9072CA33E7B43AALL ^ v72 ^ v75;
  v81 = v79 << ((2 * v38) & 0x18) << ((2 * v38) & 0x18 ^ 0x19);
  v82 = v76 ^ 0x605CB58E1FE00274 ^ ((v76 ^ 0x605CB58E1FE00274uLL) >> 7) ^ ((v76 ^ 0x605CB58E1FE00274) << 23) ^ ((v76 ^ 0x605CB58E1FE00274uLL) >> 41) ^ ((v76 ^ 0x605CB58E1FE00274) << 57);
  v83 = (v79 >> 39) ^ (8 * v79) ^ (v79 >> 61) ^ v81;
  v84 = v71 ^ 0xF29EA515014D9368 ^ v76 ^ ((v71 ^ 0xF29EA515014D9368 ^ v76) << 36) ^ ((v71 ^ 0xF29EA515014D9368 ^ v76) >> 19) ^ ((v71 ^ 0xF29EA515014D9368 ^ v76) << 45) ^ ((v71 ^ 0xF29EA515014D9368 ^ v76) >> 28) ^ v82;
  v85 = v80 ^ (v80 << 47) ^ ((v80 >> 17) ^ (v80 >> 10) | (v80 << 54));
  v86 = v82 ^ v85;
  v87 = v78 ^ __ROR8__(v78, 1) ^ (v78 >> 6) ^ (v78 << 58);
  v88 = v83 ^ v79 ^ v87;
  v89 = v82 & ~v85;
  v90 = v87 & ~(v83 ^ v79) ^ v84;
  v91 = v84 & ~(v82 ^ v85);
  v92 = v88 ^ v89;
  v93 = v90 & 0x4000000000000000;
  v94 = (v83 ^ v79) & ~v84 ^ v86;
  if ((v90 & 0x4000000000000000 & (v83 ^ v79)) != 0)
  {
    v93 = -v93;
  }

  v95 = v93 + (v83 ^ v79);
  v96 = v90 ^ 0x50FF212418BCB223 ^ v94;
  v97 = (v95 ^ v90 & 0xBFFFFFFFFFFFFFFFLL) + (v85 & ~v88) - 2 * ((v95 ^ v90 & 0xBFFFFFFFFFFFFFFFLL) & v85 & ~v88);
  v98 = v85 ^ 0x923C29E5F8525192 ^ v91 ^ v92;
  v99 = v96 ^ __ROR8__(v96, 19);
  v100 = v97 ^ 0x504449AA2A626442 ^ ((v97 ^ 0x504449AA2A626442) >> 61) ^ __ROR8__(v97 ^ 0x504449AA2A626442, 39) ^ (8 * (v97 ^ 0x504449AA2A626442));
  v101 = v99 & 0x82A7EAD7EFF1E332 ^ (v96 >> 28) & 0x7EFF1E332 | v99 & 0x7D581528100E1CCDLL;
  v102 = __ROR8__(v98, 10);
  v103 = v83 == v79;
  v104 = (v98 ^ v102) & (v98 >> 17);
  v105 = (v98 ^ v102) + (v98 >> 17);
  *(&v106 + 1) = v92;
  *&v106 = v92 ^ 0x9B47C97CD56462A0;
  v107 = v92 ^ 0x9B47C97CD56462A0 ^ ((v92 ^ 0x9B47C97CD56462A0) >> 6) ^ (v106 >> 1) ^ ((v92 ^ 0x9B47C97CD56462A0) << (v62 & 0x38) << (v62 & 0x38 ^ 0x3Au));
  v108 = (v105 - 2 * v104) ^ (v98 << 47);
  v109 = v100 ^ v107;
  v110 = v94 ^ 0x9AFB4727FC479B7BLL ^ ((v94 ^ 0x9AFB4727FC479B7BLL) << 23) ^ ((v94 ^ 0x9AFB4727FC479B7BLL) >> 7) ^ (((v94 ^ 0x9AFB4727FC479B7BLL) >> 41) | ((v94 ^ 0x9AFB4727FC479B7BLL) << 57));
  v111 = v108 ^ 0xA27EFDC26BFD6178;
  if (v103)
  {
    v111 = 0x5D81023D94029E87;
  }

  v112 = v110 ^ __ROR8__(v96, 28) & 0xFFFFFFF8100E1CCDLL ^ v101;
  v113 = (v111 & v108 ^ 0xA27EFDC26BFD6178) & (v108 | 0x5D81023D94029E87);
  v114 = v108 ^ v110;
  v115 = v107 & ~v100 ^ v112;
  v116 = v110 & ~v108;
  if (v60 == 0x616237B89EB43743)
  {
    v113 = -1;
  }

  v117 = v100 & ~v112 ^ v114;
  v118 = v109 ^ v116;
  v119 = (v109 ^ v113) & v108;
  v120 = v115 ^ 0x7F32546C6841816FLL ^ v117;
  v121 = v112 & ~v114 ^ v108 ^ v118;
  v122 = v100 ^ 0xD9CD26D1E3E8DEA4 ^ v115 ^ v119;
  v123 = 0x2000000000000;
  if ((v121 & 0x2000000000000) != 0)
  {
    v123 = 0xFFFE000000000000;
  }

  v124 = v117 ^ 0x9AF1B6A4738879B7 ^ (v117 >> 7) ^ ((v117 ^ 0x9AF1B6A4738879B7) >> 41) ^ ((v117 ^ 0x9AF1B6A4738879B7) << 23) ^ ((v117 ^ 0x9AF1B6A4738879B7) << 57) ^ 0x135E36D48E710F3;
  v125 = ((v122 ^ (v122 >> 39) ^ (v122 >> 61)) + 8 * v122 - 2 * ((v122 ^ (v122 >> 39) ^ (v122 >> 61)) & (8 * v122))) ^ (v122 << 25);
  v126 = (v120 >> 28) ^ (v120 >> 19) ^ (v120 << 36) ^ __ROR8__(((v120 & 0x7FFFF) << 14) ^ __ROR8__(v120, 31) ^ 0x81B6C2C6ED3D873DLL, 33) ^ v124;
  v127 = v126 ^ 0x769EC39EC0DB6163 ^ (v118 ^ 0xA2E5312F0674774BLL ^ __ROR8__(v118 ^ 0xA2E5312F0674774BLL, 1) ^ ((v118 ^ 0xA2E5312F0674774BLL) >> 6) ^ ((v118 ^ 0xA2E5312F0674774BLL) << 58)) & ~v125 ^ 0x2410DAA9615C8747 ^ (v123 + v121) ^ 0x982143725CC45DADLL ^ (((v123 + v121) ^ 0x982143725CC45DADLL) >> 17) ^ (((v123 + v121) ^ 0x982143725CC45DADLL) >> 10) ^ (((v123 + v121) ^ 0x982143725CC45DADLL) << 47) ^ (((v123 + v121) ^ 0x982143725CC45DADLL) << (v61 & 0x36) << (v61 & 0x36 ^ 0x36)) ^ v124 ^ v125 & (v126 ^ 0x89613C613F249E9CLL);
  return (*(v20 + 8 * ((v24 + v23) ^ (2 * (a17 + 1 == a18)))))(a1, v127 ^ (v127 << 36) ^ (v127 << 45) ^ (v127 >> 19) ^ (v127 >> 28));
}

uint64_t sub_100DF29DC()
{
  v2 = *(STACK[0xD00] + 24);
  STACK[0x11D0] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 ^ (v0 - 1048100641) & 0x3E78BF3E)) ^ v0)))();
}

uint64_t sub_100DF2A58()
{
  STACK[0x1D58] = STACK[0xB10];
  v2 = STACK[0x1310];
  v3 = &STACK[0x2280] + STACK[0x1310];
  STACK[0x1D60] = v3;
  STACK[0x1310] = v2 + 32;
  (*(v1 + 8 * (v0 + 29877)))(v3, 0, 32);
  STACK[0x1D68] = STACK[0x18E0];
  STACK[0x6B8] = v3;
  STACK[0x1BD8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 - 1414742562 + (v0 ^ 0x54534BC3))))(2174744536);
}

uint64_t sub_100DF2B40(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  STACK[0x3D28] += STACK[0x3D40];
  v18 = LODWORD(STACK[0x3B90]) ^ LODWORD(STACK[0x3970]);
  v19 = LODWORD(STACK[0x3B88]) ^ LODWORD(STACK[0x3868]);
  v20 = LODWORD(STACK[0x3D08]) ^ LODWORD(STACK[0x3968]);
  LODWORD(STACK[0x3B88]) = LODWORD(STACK[0x3578]) | HIBYTE(LODWORD(STACK[0x3DA8])) | LODWORD(STACK[0x3570]) | LODWORD(STACK[0x3568]);
  v21 = LODWORD(STACK[0x3B00]) ^ LODWORD(STACK[0x3560]);
  LODWORD(STACK[0x3848]) = STACK[0x3B40] ^ LODWORD(STACK[0x3558]);
  v22 = v17 ^ LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x3868]) = v20 ^ v15;
  LODWORD(STACK[0x3860]) = v19 ^ LODWORD(STACK[0x3540]);
  LODWORD(STACK[0x3D08]) = v18 ^ LODWORD(STACK[0x3850]);
  v23 = STACK[0x3CF8] ^ LODWORD(STACK[0x3980]);
  v24 = LODWORD(STACK[0x3B48]) ^ LODWORD(STACK[0x3B68]) ^ LODWORD(STACK[0x3948]);
  LODWORD(STACK[0x3B90]) = v21 ^ v7;
  LODWORD(STACK[0x3D40]) = v14 ^ STACK[0x39B0] ^ LODWORD(STACK[0x3A98]);
  v25 = LODWORD(STACK[0x37E8]) ^ __ROR4__(STACK[0x3730], 8);
  LODWORD(STACK[0x37D0]) ^= __ROR4__(STACK[0x3728], 16) ^ LODWORD(STACK[0x3520]);
  LODWORD(STACK[0x37E8]) = LODWORD(STACK[0x3710]) ^ __ROR4__(STACK[0x3718], 24) ^ LODWORD(STACK[0x3538]) ^ LODWORD(STACK[0x351C]);
  LODWORD(STACK[0x3B68]) = STACK[0x34F0] + STACK[0x3500];
  v26 = v13 ^ STACK[0x3708];
  STACK[0x3A98] = (LODWORD(STACK[0x35A0]) ^ LODWORD(STACK[0x3840]));
  STACK[0x3730] = (LODWORD(STACK[0x3598]) ^ LODWORD(STACK[0x3818]));
  STACK[0x39B0] = (LODWORD(STACK[0x34D8]) ^ LODWORD(STACK[0x37D8]));
  STACK[0x3980] = (LODWORD(STACK[0x34D4]) ^ LODWORD(STACK[0x37C8]));
  STACK[0x3988] = (LODWORD(STACK[0x34C8]) ^ LODWORD(STACK[0x37C0]));
  v27 = v16 ^ LODWORD(STACK[0x37A0]);
  STACK[0x3948] = (LODWORD(STACK[0x34C0]) ^ LODWORD(STACK[0x37A8]));
  STACK[0x3798] = (LODWORD(STACK[0x34B8]) ^ LODWORD(STACK[0x3798]));
  v28 = LODWORD(STACK[0x3680]) ^ LODWORD(STACK[0x3788]);
  STACK[0x37B8] = (LODWORD(STACK[0x3590]) ^ LODWORD(STACK[0x3750]));
  STACK[0x37C0] = v9 ^ LODWORD(STACK[0x3758]);
  v29 = a1 ^ LODWORD(STACK[0x3748]);
  v30 = v10 ^ LODWORD(STACK[0x35D8]);
  v31 = STACK[0x3778];
  LODWORD(STACK[0x3B48]) = LODWORD(STACK[0x3978]) ^ LODWORD(STACK[0x3778]) ^ LODWORD(STACK[0x3D00]);
  LODWORD(STACK[0x3E18]) = v22 ^ LODWORD(STACK[0x4DE4]);
  v32 = STACK[0x3DE8];
  LODWORD(STACK[0x3850]) = v23 ^ (STACK[0x3DF0] + STACK[0x3DE8]);
  LODWORD(STACK[0x3838]) = LODWORD(STACK[0x39C8]) ^ v31 ^ (a7 | a6);
  LODWORD(STACK[0x3D00]) = a7 ^ LODWORD(STACK[0x39A8]) ^ a6 ^ LODWORD(STACK[0x3A70]);
  v33 = STACK[0x3D10];
  v34 = v26 ^ LODWORD(STACK[0x4DB4]);
  LODWORD(STACK[0x3840]) = LODWORD(STACK[0x3DB0]) ^ v31 ^ LODWORD(STACK[0x3DC8]) ^ LODWORD(STACK[0x3B70]);
  STACK[0x3970] = STACK[0x3CC0] ^ STACK[0x3CC8] ^ v27;
  STACK[0x3968] = LODWORD(STACK[0x36E8]) ^ v31 ^ STACK[0x3DD8] ^ v8 ^ LODWORD(STACK[0x37E4]);
  STACK[0x3790] = LODWORD(STACK[0x3CF0]) ^ v31 ^ v28;
  v35 = STACK[0x36B8];
  LODWORD(STACK[0x3830]) = v24 ^ STACK[0x36B8] ^ a2;
  STACK[0x38A8] = v29 ^ v35 ^ a2;
  STACK[0x37A0] = v30 ^ bswap32(v25);
  STACK[0x37A8] = LODWORD(STACK[0x3600]) ^ bswap32(STACK[0x3760]);
  LODWORD(STACK[0x39C8]) = bswap32(STACK[0x3A68]);
  LODWORD(STACK[0x3CF8]) = LODWORD(STACK[0x3A40]) ^ LODWORD(STACK[0x3CE8]);
  LODWORD(STACK[0x3DA8]) = LODWORD(STACK[0x35B0]) ^ v32;
  LODWORD(STACK[0x3E10]) = v11 - 5917;
  return (*(v12 + 8 * v11))(v34, v33 | STACK[0x3D18], (v11 - 21215));
}

uint64_t sub_100DF2F1C@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x3B18]) = 0;
  v3 = a1 >= LODWORD(STACK[0x3E18]);
  *(STACK[0x3B38] + 1949) = bswap32(STACK[0x3CE8]);
  v4 = !v3;
  return (*(v2 + 8 * ((((v4 ^ (5 * (v1 ^ 0x1C))) & 1) * (((v1 - 1033) | 0x421) ^ 0x4CCF)) ^ v1)))();
}

uint64_t sub_100DF2F7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x1164]) = v9;
  LODWORD(STACK[0x13A4]) = a8;
  LODWORD(STACK[0x11A4]) = v10;
  LODWORD(STACK[0x1844]) = a6;
  LODWORD(STACK[0x148C]) = a4;
  LODWORD(STACK[0x107C]) = v11 + 80;
  v13 = (((a4 ^ 0x67542553) - 1733567827) ^ ((a4 ^ 0x5A82AA52) - 1518512722) ^ ((a4 ^ 0xA6DE59EB) + 1495377429)) + 1388521160 + (((*(STACK[0x4C0] + 88) ^ 0xE1B603C4) + 508165180) ^ ((*(STACK[0x4C0] + 88) ^ 0x5F572ACE) - 1599548110) ^ ((*(STACK[0x4C0] + 88) ^ (v8 + 636087289)) - 636092384));
  v14 = (v13 ^ 0xCA0C262C) & (2 * (v13 & 0xE34E870C)) ^ v13 & 0xE34E870C;
  v15 = ((2 * (v13 ^ 0xCA9D202C)) ^ 0x53A74E40) & (v13 ^ 0xCA9D202C) ^ (2 * (v13 ^ 0xCA9D202C)) & 0x29D3A720;
  v16 = v15 ^ 0x2850A120;
  v17 = (v15 ^ 0x1020400) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0xA74E9C80) & v16 ^ (4 * v16) & 0x29D3A720;
  v19 = (v18 ^ 0x21428400) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x8912320)) ^ 0x9D3A7200) & (v18 ^ 0x8912320) ^ (16 * (v18 ^ 0x8912320)) & 0x29D3A720;
  v21 = v19 ^ 0x29D3A720 ^ (v20 ^ 0x9122200) & (v19 << 8);
  *(STACK[0x4C0] + 88) = v13 ^ (2 * ((v21 << 16) & 0x29D30000 ^ v21 ^ ((v21 << 16) ^ 0x27200000) & (((v20 ^ 0x20C18520) << 8) & 0x29D30000 ^ 0x28500000 ^ (((v20 ^ 0x20C18520) << 8) ^ 0x53A70000) & (v20 ^ 0x20C18520)))) ^ 0x69E11FA6;
  return (*(v12 + 8 * v8))(&STACK[0x5D0]);
}

uint64_t sub_100DF31E8()
{
  v8 = *(v0 + 4 * (v6 - 1));
  *(v0 + 4 * v6) = *(v4 + 4 * v5) + v5 + ((1664525 * ((v8 >> 30) ^ 0x1EB67459 ^ (v8 + 515273817 - ((2 * v8) & 0x3D6CE8B2)))) ^ *(v0 + 4 * v6));
  STACK[0x25F0] = (v6 + 1) ^ v3;
  *(v7 - 220) = v3 ^ (v2 - 455767602) ^ 0xEF4;
  *(v7 - 216) = v2 - 455767602 + v3;
  *(v7 - 196) = v3;
  STACK[0x25D8] = v3 + 623;
  *(v7 - 240) = ((v2 - 455767602) ^ 0x6D) + v3;
  *(v7 - 224) = 317506016 - v3 + v2;
  v9 = (*(v1 + 8 * (v2 + 2120268401)))(v7 - 240);
  return (*(v1 + 8 * *(v7 - 200)))(v9);
}

uint64_t sub_100DF3488(uint64_t a1, int a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v17 = STACK[0x3D80];
  v18 = STACK[0x3D98];
  v19 = v16;
  HIDWORD(v20) = v16;
  LODWORD(v20) = v16;
  v21 = (v20 >> 6) ^ __ROR4__(v16, 11);
  v23 = __PAIR64__(v9, __ROR4__(v16, 25));
  v22 = v21 ^ v23;
  v24 = STACK[0x3E18];
  LODWORD(STACK[0x3D50]) = STACK[0x3E18];
  LODWORD(v23) = v9;
  v25 = (v23 >> 11) ^ __ROR4__(v9, 6) ^ __ROR4__(v9, 25);
  LODWORD(STACK[0x3D80]) = v18;
  LODWORD(STACK[0x3D20]) = a7;
  LODWORD(STACK[0x3D98]) = v19;
  v26 = (v24 ^ a7) & v19 ^ v17 ^ (v17 ^ v18) & v9;
  LODWORD(STACK[0x3E18]) = v9;
  v27 = v18 & v19 ^ a7 ^ (v24 ^ a7) & v9 ^ v17 & v19;
  v28 = v14 ^ v8;
  v29 = v14 ^ a8;
  v30 = v13 - (v14 ^ v8);
  v31 = ((a8 ^ v13 ^ v25 ^ v22) - (a8 ^ v13 ^ v25)) ^ ((v22 ^ v10) - v10) ^ ((v12 ^ v22) - v12);
  v32 = v30 ^ v29;
  v33 = (v28 << LODWORD(STACK[0x3CF0])) + a8;
  v34 = v8 ^ a8;
  v35 = (v32 ^ v26 ^ v33 ^ v27) - (v32 ^ v26 ^ v33);
  v36 = (v8 ^ a8) - 1256531463 + v29;
  v37 = v33 - (v32 + v36);
  v39 = a5 ^ a2;
  v40 = a2 ^ v10;
  v41 = v10 + 2 * v39;
  v42 = (v12 - v39) ^ v40;
  v43 = ((v27 ^ v41) - v41) ^ ((v27 ^ v42) - v42) ^ v35;
  STACK[0x3D30] = a3;
  v44 = a3 + 63;
  v45 = (a3 + 63);
  v46 = STACK[0x3DC0];
  v47 = v44 ^ 0x15BF82CF ^ *(STACK[0x3DC0] + 4 * (v45 ^ 0x24) + 179976);
  v48 = v8 + LODWORD(STACK[0x3D68]) + v34;
  v49 = v15[1609];
  STACK[0x3D28] = v15;
  v50 = v48 + v49;
  v51 = STACK[0x3D90];
  v52 = STACK[0x3D88];
  v53 = STACK[0x3E38];
  v54 = STACK[0x3D78];
  LODWORD(STACK[0x3D78]) = STACK[0x3E40];
  v55 = STACK[0x3D40];
  v56 = STACK[0x3D48];
  v57 = a5 ^ v10;
  v58 = v50 + v25;
  v59 = v40 - 1256531463 + (a5 ^ v10);
  v60 = v37 + (v32 ^ v36);
  v61 = v29 + 904084214;
  v62 = v41 - v59 - v42;
  v63 = v62 + (v42 ^ v59);
  v61 ^= 0x368D3172u;
  v64 = v36 - v61;
  v65 = v58 + v26 + v47;
  HIDWORD(v23) = v54;
  LODWORD(v23) = v54;
  v66 = a5 - LODWORD(STACK[0x3D70]) + v57 - v31 - *v15 + (*(v46 + 4 * (v45 ^ 3) + 359212) ^ 0x6D873BA3) - v43;
  v67 = (v23 >> 13) ^ __ROR4__(v54, 2);
  v68 = __PAIR64__(v52, __ROR4__(v54, 22));
  LODWORD(v45) = v67 ^ v68;
  LODWORD(v68) = v52;
  v69 = (v68 >> 2) ^ __ROR4__(v52, 13) ^ __ROR4__(v52, 22);
  LODWORD(STACK[0x3D38]) = v53;
  v70 = v54 & v55 ^ v55 & v56 ^ v52 & v56 ^ v51 & v54 ^ (v51 ^ v52) & v53;
  LODWORD(STACK[0x3E38]) = v54;
  v71 = v53 & v54 ^ v54 & v56;
  LODWORD(STACK[0x3E40]) = v56;
  v72 = v53 & v56 ^ v52 & v55;
  LODWORD(STACK[0x3D90]) = v55;
  v73 = v51;
  v74 = v71 ^ v72 ^ v51 & v52 ^ v51 & v55;
  v61 -= 1004286715;
  LODWORD(STACK[0x3D88]) = ((v62 ^ v45) - v62) ^ ((v63 ^ v45) - v63) ^ ((v37 ^ v69 ^ v60 ^ v45) - (v37 ^ v69 ^ v60));
  v75 = (v64 ^ 0xA4F7F322) - v61;
  v76 = v60 - v61;
  v77 = (v60 + v37) ^ v75;
  v78 = (v70 ^ 0xF13109D1 ^ v77 ^ v76 ^ v74) - (v77 ^ v76 ^ v74 ^ 0xF13109D1);
  v79 = (v40 + 904084214) ^ 0x368D3172;
  v80 = v59 - v79;
  v81 = v79 - 1004286715;
  v82 = (v80 ^ 0xA4F7F322) - (v79 - 1004286715);
  v83 = v63 - v81;
  v84 = (v63 + v62) ^ v82;
  v85 = v70 ^ 0xF13109D1 ^ v83;
  v83 ^= 0xF13109D1;
  v86 = (v85 - v83) ^ ((v84 ^ v70) - v84);
  v87 = v77 - v75;
  v88 = v78 ^ v86;
  v76 ^= 0xF13109D1;
  v89 = v76 ^ v60;
  v90 = v76 ^ v60 ^ v75;
  v91 = (v90 + v76) ^ v87;
  v87 += 616571375;
  v92 = STACK[0x3D20];
  v93 = v84 - v82;
  v94 = v83 ^ v63;
  v95 = v83 ^ v63 ^ v82;
  v96 = (v95 + v83) ^ v93;
  LODWORD(STACK[0x3D70]) = (v90 ^ 0xE921F9B7) + LODWORD(STACK[0x3D20]);
  LODWORD(STACK[0x3D68]) = ((((v93 + 616571375) ^ v17) - (v93 + 616571375)) ^ ((v96 ^ v17) - v96) ^ ((v87 ^ v92 ^ v91 ^ v17) - (v87 ^ v92 ^ v91))) - (v95 ^ 0xE921F9B7);
  v89 ^= 0xE921F9B7;
  v97 = (v91 + 243918710) ^ v89 ^ (v91 - 666903197 + v87);
  v98 = (v96 - 666903197 + v93 + 616571375) ^ v94 ^ 0xE921F9B7;
  v99 = v69 + v64;
  v100 = v75 + v74;
  LODWORD(v46) = ((v91 - 666903197) ^ v89) - 916614608;
  LODWORD(v45) = (v75 - 2 * (v91 - 666903197) - 467639424) ^ v46;
  v101 = ((v96 - 666903197) ^ v94 ^ 0xE921F9B7) - 916614608;
  v102 = (v82 - 2 * (v96 - 666903197) - 467639424) ^ v101;
  LODWORD(v46) = v46 - v45;
  v103 = v99 + v100 + v65;
  v104 = ((v91 + 243918710) ^ 0xC5DB95AC) - v45;
  v105 = ((v96 + 243918710) ^ 0xC5DB95AC) - v102;
  LODWORD(v45) = v45 - v104 - (v97 - v45 + v104);
  LODWORD(v46) = v46 + v104;
  v106 = v101 - v102;
  v107 = v102 - v105 - (v105 + (v98 ^ (v96 + 243918710)) - v102);
  v108 = v105 + v106;
  v109 = v105 + 2069301741;
  v110 = v82 + v80 - LODWORD(STACK[0x3D88]) - v88 + v66 + 1;
  LODWORD(STACK[0x3D88]) = ((v46 ^ v103 ^ v110) - v108) ^ v109 ^ ((v110 ^ v103 ^ v45) - v107);
  LODWORD(STACK[0x3D78]) = ((v46 ^ v103 ^ v45) - (v108 ^ v110 ^ v107)) ^ (v104 + 2069301741);
  v111 = *(v11 + 8 * ((474 * (STACK[0x3D30] == 0)) ^ STACK[0x3D60]));
  LODWORD(STACK[0x3D58]) = v73;
  v112 = LODWORD(STACK[0x3D38]);
  LODWORD(STACK[0x3D48]) = v112;
  LODWORD(STACK[0x3D40]) = v52;
  return v111(v112);
}

uint64_t sub_100DF3B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 8 * (v5 - 5549));
  LODWORD(STACK[0x3D80]) = 2;
  v7 = STACK[0x3750];
  LODWORD(STACK[0x1B50]) = STACK[0x221C];
  LODWORD(STACK[0x3310]) = STACK[0x35FC];
  LODWORD(STACK[0x3308]) = STACK[0x3970];
  LODWORD(STACK[0x3300]) = STACK[0x35F8];
  return v6(v7, a2, a3, a4, 0);
}

uint64_t sub_100DF3CB0@<X0>(unint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, int a4@<W6>, unint64_t a5@<X7>, unint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int8x16_t a55, int8x16_t a56, int8x16_t a57, int8x16_t a58, int64x2_t a59, int8x16_t a60, int8x16_t a61, int8x16_t a62)
{
  *&STACK[0x370] = *(v65 + v67 - 16);
  v68.i64[0] = a2 + v67 + 5;
  v68.i64[1] = a2 + v67 + 4;
  v69 = v68;
  v68.i64[0] = v65 + v67 - 1;
  v68.i64[1] = v65 + v67 - 2;
  v70 = v68;
  *&STACK[0x320] = v68;
  v68.i64[0] = v65 + v67 - 3;
  v68.i64[1] = a3 + v67;
  v71 = v68;
  *&STACK[0x470] = v68;
  v72.i64[0] = v65 + v67 - 5;
  v72.i64[1] = v65 + v67 - 6;
  v73.i64[0] = v65 + v67 - 7;
  v73.i64[1] = v65 + v67 - 8;
  v68.i64[0] = v65 + v67 - 9;
  v68.i64[1] = v65 + v67 - 10;
  v74.i64[0] = v65 + v67 - 11;
  v74.i64[1] = v65 + v67 - 12;
  *&STACK[0x350] = v74;
  *&STACK[0x360] = v68;
  v75.i64[0] = v65 + v67 - 13;
  v76.i64[0] = a2 + v67 + 3;
  v75.i64[1] = v65 + v67 - 14;
  v77 = v75;
  *&STACK[0x330] = v75;
  v76.i64[1] = a2 + v67 + 2;
  v78 = v76;
  v75.i64[0] = v65 + v67 - 15;
  v75.i64[1] = v65 + v67 - 16;
  *&STACK[0x340] = v75;
  v79 = vandq_s8(v75, *&STACK[0x410]);
  v80 = vandq_s8(v77, *&STACK[0x410]);
  v81 = vandq_s8(v74, *&STACK[0x410]);
  v82 = vandq_s8(v68, *&STACK[0x410]);
  v83 = vandq_s8(v73, *&STACK[0x410]);
  v84 = vandq_s8(v72, *&STACK[0x410]);
  v85 = vandq_s8(v71, *&STACK[0x410]);
  v86 = vandq_s8(v70, *&STACK[0x410]);
  v87 = *&STACK[0x410];
  v88 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v96 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x220], v95), *&STACK[0x210]), vandq_s8(vaddq_s64(v95, *&STACK[0x230]), *&STACK[0x200]));
  v97 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x220], v94), *&STACK[0x210]), vandq_s8(vaddq_s64(v94, *&STACK[0x230]), *&STACK[0x200]));
  v98 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x220], v93), *&STACK[0x210]), vandq_s8(vaddq_s64(v93, *&STACK[0x230]), *&STACK[0x200]));
  v99 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x220], v92), *&STACK[0x210]), vandq_s8(vaddq_s64(v92, *&STACK[0x230]), *&STACK[0x200]));
  v100 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x220], v91), *&STACK[0x210]), vandq_s8(vaddq_s64(v91, *&STACK[0x230]), *&STACK[0x200]));
  v101 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x220], v90), *&STACK[0x210]), vandq_s8(vaddq_s64(v90, *&STACK[0x230]), *&STACK[0x200]));
  v102 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x220], v89), *&STACK[0x210]), vandq_s8(vaddq_s64(v89, *&STACK[0x230]), *&STACK[0x200]));
  v103 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x220], v88), *&STACK[0x210]), vandq_s8(vaddq_s64(v88, *&STACK[0x230]), *&STACK[0x200]));
  v104 = veorq_s8(v103, a62);
  v105 = veorq_s8(v102, a62);
  v106 = veorq_s8(v101, a62);
  v107 = veorq_s8(v100, a62);
  v108 = veorq_s8(v99, a62);
  v109 = veorq_s8(v98, a62);
  v110 = veorq_s8(v97, a62);
  v111 = veorq_s8(v96, a62);
  v112 = veorq_s8(v96, a61);
  v113 = veorq_s8(v97, a61);
  v114 = veorq_s8(v98, a61);
  v115 = veorq_s8(v99, a61);
  v116 = veorq_s8(v100, a61);
  v117 = veorq_s8(v101, a61);
  v118 = veorq_s8(v102, a61);
  v119 = veorq_s8(v103, a61);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v119);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v118);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v117);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v116);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v115);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v114);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v113);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), a60), v127), a59), a58);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), a60), v126), a59), a58);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), a60), v125), a59), a58);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), a60), v124), a59), a58);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), a60), v123), a59), a58);
  v133 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), a60), v122), a59), a58);
  v136 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v121, v121), a60), v121), a59), a58);
  v139 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), a60), v120), a59), a58);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v144 = veorq_s8(v138, v141);
  v145 = veorq_s8(v135, v140);
  v146 = veorq_s8(v132, v139);
  v147 = veorq_s8(v131, v137);
  v148 = veorq_s8(v130, v136);
  v149 = veorq_s8(v129, v134);
  v150 = veorq_s8(v128, v133);
  v151 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v146);
  v155 = vaddq_s64(v152, v144);
  v156 = veorq_s8(vaddq_s64(v151, v143), a57);
  v157 = veorq_s8(v155, a57);
  v158 = veorq_s8(vaddq_s64(v153, v145), a57);
  v159 = veorq_s8(v154, a57);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v147), a57);
  v161 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v148), a57);
  v163 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v149), a57);
  v166 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v150), a57);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v171 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v172 = veorq_s8(v162, v168);
  v173 = veorq_s8(v160, v167);
  v174 = veorq_s8(v159, v166);
  v175 = veorq_s8(v158, v164);
  v176 = veorq_s8(v157, v163);
  v177 = veorq_s8(v156, v161);
  v178 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v181 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v183 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v177);
  v186 = veorq_s8(vaddq_s64(v178, v170), *&STACK[0x4C0]);
  v187 = veorq_s8(vaddq_s64(v179, v171), *&STACK[0x4C0]);
  v188 = veorq_s8(vaddq_s64(v180, v172), *&STACK[0x4C0]);
  v189 = veorq_s8(vaddq_s64(v181, v173), *&STACK[0x4C0]);
  v190 = veorq_s8(vaddq_s64(v182, v174), *&STACK[0x4C0]);
  v191 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v194 = veorq_s8(vaddq_s64(v183, v175), *&STACK[0x4C0]);
  v195 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v197 = veorq_s8(vaddq_s64(v184, v176), *&STACK[0x4C0]);
  v198 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v199 = veorq_s8(v185, *&STACK[0x4C0]);
  v200 = *&STACK[0x4C0];
  v201 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v202 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v203 = veorq_s8(v194, v198);
  v204 = veorq_s8(v190, v196);
  v205 = veorq_s8(v189, v195);
  v206 = veorq_s8(v188, v193);
  v207 = veorq_s8(v187, v192);
  v208 = veorq_s8(v186, v191);
  v209 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v204);
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v201), a56);
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v202), a56);
  v213 = veorq_s8(vaddq_s64(v209, v203), a56);
  v214 = veorq_s8(v210, a56);
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v205), a56);
  v216 = vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v206), a56);
  v219 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v207), a56);
  v222 = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v208), a56);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v227 = veorq_s8(v221, v224);
  v228 = veorq_s8(v218, v223);
  v229 = veorq_s8(v215, v222);
  v230 = veorq_s8(v214, v220);
  v231 = veorq_s8(v213, v219);
  v232 = veorq_s8(v212, v217);
  v233 = veorq_s8(v211, v216);
  *&STACK[0x310] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v229);
  *&STACK[0x2B0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v228);
  *&STACK[0x2C0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v233);
  *&STACK[0x2D0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226);
  *&STACK[0x2E0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v227);
  v234 = *&STACK[0x4D0];
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v230), *&STACK[0x4D0]);
  *&STACK[0x2F0] = vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL);
  *&STACK[0x2A0] = vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL);
  *&STACK[0x290] = vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL);
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v231), v234);
  *&STACK[0x300] = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v232), v234);
  *&STACK[0x280] = vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v239 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v240 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v241 = vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL);
  v242 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v243 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v244 = vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL);
  v245 = vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL);
  v246 = vandq_s8(v69, v87);
  v247 = v69;
  v248 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v249 = vandq_s8(v78, v87);
  v250 = v78;
  v251 = vaddq_s64(v243, v240);
  v252 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v253 = *&STACK[0x440];
  v254 = vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL);
  v255 = *&STACK[0x430];
  v256 = vaddq_s64(v242, v239);
  v257 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v252, v252), *&STACK[0x440]), *&STACK[0x430]), v252), *&STACK[0x420]);
  v258 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v248, v248), *&STACK[0x440]), *&STACK[0x430]), v248), *&STACK[0x420]);
  v259 = *&STACK[0x420];
  v261 = *&STACK[0x3E0];
  v260 = *&STACK[0x3F0];
  v262 = veorq_s8(v258, *&STACK[0x3F0]);
  v263 = veorq_s8(v257, *&STACK[0x3F0]);
  v264 = veorq_s8(v257, *&STACK[0x3E0]);
  v265 = veorq_s8(v258, *&STACK[0x3E0]);
  v266 = veorq_s8(vaddq_s64(v241, v238), a55);
  v267 = *&STACK[0x3C0];
  v268 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264), *&STACK[0x3D0]);
  v269 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v265), *&STACK[0x3D0]);
  v270 = veorq_s8(v256, a55);
  v271 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v272 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v273 = veorq_s8(v251, a55);
  v274 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v272);
  v275 = veorq_s8(v273, v245);
  v276 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), v271);
  v277 = veorq_s8(v270, v254);
  v278 = vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL);
  v280 = *&STACK[0x3B0];
  v281 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274, *&STACK[0x4A0]), vorrq_s8(v274, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v282 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v276, *&STACK[0x4A0]), vorrq_s8(v276, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v283 = vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL);
  v284 = veorq_s8(v282, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v285 = veorq_s8(v281, v278);
  *&STACK[0x270] = veorq_s8(v266, v244);
  v286 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v287 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v284), v200);
  v288 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL), v285), v200);
  v289 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v290 = veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL));
  v291 = vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL);
  v292 = vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL);
  v68.i64[0] = a2 + v67 + 9;
  v68.i64[1] = a2 + v67 + 8;
  v293 = v68;
  *&STACK[0x260] = v68;
  v294 = vaddq_s64(v292, v290);
  v295 = vaddq_s64(v283, v277);
  v296 = vaddq_s64(v291, v289);
  v297 = vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), *&STACK[0x490]));
  v298 = vsubq_s64(v294, vandq_s8(vaddq_s64(v294, v294), *&STACK[0x490]));
  v296.i64[0] = a2 + v67 + 7;
  v296.i64[1] = a2 + v67 + 6;
  v299 = *&STACK[0x400];
  v300 = vnegq_s64(vandq_s8(vshlq_n_s64(v72, 3uLL), *&STACK[0x400]));
  v301 = vnegq_s64(vandq_s8(vshlq_n_s64(v73, 3uLL), *&STACK[0x400]));
  v302 = *&STACK[0x390];
  v303 = *&STACK[0x3A0];
  v304 = vaddq_s64(v279, v275);
  v305 = veorq_s8(vaddq_s64(v297, *&STACK[0x3A0]), *&STACK[0x390]);
  v306 = veorq_s8(vaddq_s64(v298, *&STACK[0x3A0]), *&STACK[0x390]);
  v307 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL));
  v308 = veorq_s8(v305, vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL));
  v309 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL), v308);
  v310 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), v307);
  v311 = *&STACK[0x380];
  v312 = vsubq_s64(vorrq_s8(vaddq_s64(v309, v309), *&STACK[0x380]), v309);
  v313 = v87;
  v314 = vandq_s8(v296, v87);
  v315 = vshlq_u64(veorq_s8(v295, *&STACK[0x450]), v300);
  v316 = vaddq_s64(v312, *&STACK[0x480]);
  v317 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v310, v310), *&STACK[0x380]), v310), *&STACK[0x480]);
  v318 = vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL);
  v319 = veorq_s8(v304, *&STACK[0x450]);
  v320 = vsraq_n_u64(vshlq_n_s64(v308, 3uLL), v308, 0x3DuLL);
  v321 = vdupq_n_s64(a6);
  *&STACK[0x460] = v321;
  v322 = veorq_s8(v317, v321);
  v323 = veorq_s8(v316, v321);
  v324 = vshlq_u64(v319, v301);
  v325 = veorq_s8(v323, v320);
  v326 = veorq_s8(v322, v318);
  v327 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), v325), a55);
  v328 = vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL);
  v329 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v322, 0x38uLL), v322, 8uLL), v326), a55);
  v330 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL));
  v331 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), veorq_s8(v327, v328));
  v332 = vdupq_n_s64(a5);
  v333 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), v330);
  v334 = vdupq_n_s64(a1);
  v335 = vdupq_n_s64(v62);
  *&STACK[0x240] = v335;
  *&STACK[0x250] = v332;
  v519.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v331, v332), vorrq_s8(v331, v334)), v334), v335), vnegq_s64(vandq_s8(vshlq_n_s64(v250, 3uLL), v299))), v324);
  v519.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v333, v332), vorrq_s8(v333, v334)), v334), v335), vnegq_s64(vandq_s8(vshlq_n_s64(v247, 3uLL), v299))), v315);
  v336 = vandq_s8(v293, v313);
  v337 = vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL);
  v339 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v338, v338), v253), v255), v338), v259);
  v340 = veorq_s8(v339, v260);
  v341 = veorq_s8(v339, v261);
  v342 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v343 = *&STACK[0x3D0];
  v344 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v341), *&STACK[0x3D0]);
  v345 = veorq_s8(v344, v342);
  v346 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), v345);
  v347 = *&STACK[0x4A0];
  v348 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v346, *&STACK[0x4A0]), vorrq_s8(v346, v267)), v267), v280);
  v349 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v345, 3uLL), v345, 0x3DuLL));
  v350 = *&STACK[0x4C0];
  v351 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), v349), *&STACK[0x4C0]);
  v352 = veorq_s8(v351, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL));
  v353 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), v352);
  v354 = *&STACK[0x490];
  v355 = veorq_s8(vaddq_s64(vsubq_s64(v353, vandq_s8(vaddq_s64(v353, v353), *&STACK[0x490])), v303), v302);
  v356 = veorq_s8(v355, vsraq_n_u64(vshlq_n_s64(v352, 3uLL), v352, 0x3DuLL));
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL), v356);
  v358 = *&STACK[0x450];
  v359 = vshlq_u64(veorq_s8(vaddq_s64(v286, *&STACK[0x270]), *&STACK[0x450]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x470], 3uLL), v299)));
  v360 = *&STACK[0x480];
  v361 = *&STACK[0x460];
  v362 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v357, v357), v311), v357), *&STACK[0x480]), *&STACK[0x460]);
  v363 = veorq_s8(v362, vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL));
  v364 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v362, 0x38uLL), v362, 8uLL), v363), a55);
  v365 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), veorq_s8(v364, vsraq_n_u64(vshlq_n_s64(v363, 3uLL), v363, 0x3DuLL)));
  v366 = vsubq_s64(vorrq_s8(v365, v332), vorrq_s8(v365, v334));
  v332.i64[0] = a2 + v67 + 1;
  v332.i64[1] = a2 + v67;
  *&STACK[0x470] = v332;
  v367 = vshlq_u64(veorq_s8(vaddq_s64(v366, v334), v335), vnegq_s64(vandq_s8(vshlq_n_s64(v296, 3uLL), v299)));
  v296.i64[0] = a2 + v67 - 1;
  v368 = STACK[0x540];
  v296.i64[1] = a2 + v67 - 2;
  *&STACK[0x270] = v296;
  v369 = veorq_s8(*&STACK[0x2C0], *&STACK[0x4D0]);
  v370 = veorq_s8(v369, *&STACK[0x280]);
  v519.val[1] = veorq_s8(v367, v359);
  v371 = v255;
  v372 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v337, v337), v253), v255), v337), v259);
  v373 = veorq_s8(v372, v260);
  v374 = vsraq_n_u64(vshlq_n_s64(v369, 0x38uLL), v369, 8uLL);
  v375 = veorq_s8(v372, v261);
  v376 = v261;
  v377 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL), v375), v343);
  v378 = veorq_s8(v377, vsraq_n_u64(vshlq_n_s64(v375, 3uLL), v375, 0x3DuLL));
  v379 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL), v378);
  v380 = vsraq_n_u64(vshlq_n_s64(v370, 3uLL), v370, 0x3DuLL);
  v381 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v379, v347), vorrq_s8(v379, v267)), v267), v280);
  v382 = veorq_s8(v381, vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL));
  v383 = veorq_s8(vaddq_s64(v374, v370), a55);
  v384 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL), v382), v350);
  v385 = vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL);
  v386 = veorq_s8(v383, v380);
  v387 = veorq_s8(v384, v385);
  v388 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v387);
  v389 = vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL);
  v390 = veorq_s8(vaddq_s64(vsubq_s64(v388, vandq_s8(vaddq_s64(v388, v388), v354)), v303), v302);
  v391 = veorq_s8(v390, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v392 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391);
  v387.i64[0] = a2 + v67 - 3;
  v387.i64[1] = a2 + v67 - 4;
  v393 = vaddq_s64(v389, v386);
  v394 = vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL);
  v391.i64[0] = a2 + v67 - 5;
  v391.i64[1] = a2 + v67 - 6;
  v395 = veorq_s8(*&STACK[0x2D0], *&STACK[0x4D0]);
  v396 = veorq_s8(*&STACK[0x2E0], *&STACK[0x4D0]);
  v397 = veorq_s8(*&STACK[0x2B0], *&STACK[0x4D0]);
  v398 = veorq_s8(v397, *&STACK[0x290]);
  v399 = veorq_s8(v396, *&STACK[0x2A0]);
  v400 = *&STACK[0x400];
  v401 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v392, v392), v311), v392), v360), v361);
  v402 = veorq_s8(v401, v394);
  v403 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL), v402), a55);
  v404 = veorq_s8(v403, vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v405 = vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL);
  v406 = vandq_s8(v391, *&STACK[0x410]);
  v407 = vaddq_s64(v405, v404);
  v408 = *&STACK[0x250];
  v409 = vandq_s8(v296, *&STACK[0x410]);
  v410 = *&STACK[0x240];
  v411 = vandq_s8(*&STACK[0x470], *&STACK[0x410]);
  v519.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v407, *&STACK[0x250]), vorrq_s8(v407, v334)), v334), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x260], 3uLL), *&STACK[0x400]))), vshlq_u64(veorq_s8(v393, v358), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x320], 3uLL), *&STACK[0x400]))));
  v412 = vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL);
  v413 = vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL);
  v414 = vandq_s8(v387, *&STACK[0x410]);
  v415 = vsraq_n_u64(vshlq_n_s64(v397, 0x38uLL), v397, 8uLL);
  v416 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v417 = vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL);
  v418 = v63[25];
  *&STACK[0x2E0] = v418;
  *&STACK[0x320] = vqtbl4q_s8(v519, v418);
  v519.val[3] = veorq_s8(v395, *&STACK[0x2F0]);
  v519.val[0] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v413, v413), v253), v371), v413);
  v519.val[1] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v416, v416), v253), v371), v416);
  v419 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v417, v417), v253), v371), v417), *&STACK[0x420]);
  v519.val[1] = vaddq_s64(v519.val[1], *&STACK[0x420]);
  v420 = veorq_s8(v519.val[1], v260);
  v519.val[2] = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v421 = veorq_s8(v419, v260);
  v422 = veorq_s8(v419, v376);
  v519.val[1] = veorq_s8(v519.val[1], v376);
  v423 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL), v422);
  v424 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL), v519.val[1]), v343);
  v425 = vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL);
  v426 = vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL);
  v519.val[1] = veorq_s8(v424, vsraq_n_u64(vshlq_n_s64(v519.val[1], 3uLL), v519.val[1], 0x3DuLL));
  v427 = vsraq_n_u64(vshlq_n_s64(v424, 0x38uLL), v424, 8uLL);
  v428 = vsraq_n_u64(vshlq_n_s64(v519.val[3], 3uLL), v519.val[3], 0x3DuLL);
  v429 = veorq_s8(v423, v343);
  v430 = veorq_s8(v429, v426);
  v519.val[3] = vaddq_s64(v425, v519.val[3]);
  v431 = vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL);
  v432 = vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL);
  v433 = vaddq_s64(v431, v430);
  v519.val[2] = vaddq_s64(v519.val[2], v399);
  v434 = vaddq_s64(v427, v519.val[1]);
  v435 = vsubq_s64(vorrq_s8(v433, *&STACK[0x4A0]), vorrq_s8(v433, *&STACK[0x3C0]));
  v519.val[2] = veorq_s8(v519.val[2], a55);
  v436 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v434, *&STACK[0x4A0]), vorrq_s8(v434, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v519.val[3] = veorq_s8(v519.val[3], a55);
  v437 = vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL);
  v519.val[1] = veorq_s8(v436, vsraq_n_u64(vshlq_n_s64(v519.val[1], 3uLL), v519.val[1], 0x3DuLL));
  v438 = veorq_s8(v519.val[3], v428);
  v439 = vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL);
  v440 = veorq_s8(vaddq_s64(v435, *&STACK[0x3C0]), *&STACK[0x3B0]);
  v441 = veorq_s8(v440, v437);
  v442 = vsraq_n_u64(vshlq_n_s64(v519.val[3], 0x38uLL), v519.val[3], 8uLL);
  v519.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL), v441);
  v443 = vaddq_s64(v439, v519.val[1]);
  v444 = veorq_s8(v519.val[2], v432);
  v445 = vsraq_n_u64(vshlq_n_s64(v519.val[1], 3uLL), v519.val[1], 0x3DuLL);
  v519.val[1] = vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL);
  v519.val[3] = veorq_s8(v519.val[3], *&STACK[0x4C0]);
  v446 = vsraq_n_u64(vshlq_n_s64(v519.val[2], 0x38uLL), v519.val[2], 8uLL);
  v519.val[1] = veorq_s8(v519.val[3], v519.val[1]);
  v519.val[2] = vsraq_n_u64(vshlq_n_s64(v519.val[3], 0x38uLL), v519.val[3], 8uLL);
  v519.val[3] = veorq_s8(v443, *&STACK[0x4C0]);
  v447 = veorq_s8(v519.val[3], v445);
  v519.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v519.val[3], 0x38uLL), v519.val[3], 8uLL), v447);
  v519.val[2] = vaddq_s64(v519.val[2], v519.val[1]);
  v448 = vaddq_s64(v442, v438);
  v519.val[2] = veorq_s8(vaddq_s64(vsubq_s64(v519.val[2], vandq_s8(vaddq_s64(v519.val[2], v519.val[2]), *&STACK[0x490])), *&STACK[0x3A0]), *&STACK[0x390]);
  v449 = vsraq_n_u64(vshlq_n_s64(v519.val[1], 3uLL), v519.val[1], 0x3DuLL);
  v519.val[3] = veorq_s8(vaddq_s64(vsubq_s64(v519.val[3], vandq_s8(vaddq_s64(v519.val[3], v519.val[3]), *&STACK[0x490])), *&STACK[0x3A0]), *&STACK[0x390]);
  v519.val[1] = veorq_s8(v519.val[3], vsraq_n_u64(vshlq_n_s64(v447, 3uLL), v447, 0x3DuLL));
  v450 = veorq_s8(v519.val[2], v449);
  v451 = vsraq_n_u64(vshlq_n_s64(v519.val[3], 0x38uLL), v519.val[3], 8uLL);
  v519.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v519.val[2], 0x38uLL), v519.val[2], 8uLL), v450);
  v519.val[2] = vshlq_u64(veorq_s8(v448, v358), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), v400)));
  v452 = vaddq_s64(v451, v519.val[1]);
  v453 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v452, v452), *&STACK[0x380]), v452), *&STACK[0x480]), *&STACK[0x460]);
  v519.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v519.val[3], v519.val[3]), *&STACK[0x380]), v519.val[3]), *&STACK[0x480]), *&STACK[0x460]);
  v454 = vsraq_n_u64(vshlq_n_s64(v519.val[1], 3uLL), v519.val[1], 0x3DuLL);
  v519.val[1] = veorq_s8(v519.val[3], vsraq_n_u64(vshlq_n_s64(v450, 3uLL), v450, 0x3DuLL));
  v455 = veorq_s8(v453, v454);
  v456 = vsraq_n_u64(vshlq_n_s64(v519.val[3], 0x38uLL), v519.val[3], 8uLL);
  v519.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL), v455);
  v457 = veorq_s8(vaddq_s64(v456, v519.val[1]), a55);
  v519.val[3] = veorq_s8(v519.val[3], a55);
  v458 = vsraq_n_u64(vshlq_n_s64(v519.val[1], 3uLL), v519.val[1], 0x3DuLL);
  v519.val[1] = veorq_s8(v519.val[3], vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v459 = veorq_s8(v457, v458);
  v460 = vsraq_n_u64(vshlq_n_s64(v519.val[3], 0x38uLL), v519.val[3], 8uLL);
  v519.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL), v459);
  v519.val[1] = vaddq_s64(v460, v519.val[1]);
  v461 = vaddq_s64(v519.val[0], *&STACK[0x420]);
  v519.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v519.val[3], v408), vorrq_s8(v519.val[3], v334)), v334), v410), vnegq_s64(vandq_s8(vshlq_n_s64(v391, 3uLL), v400))), v519.val[2]);
  v519.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v519.val[1], v408), vorrq_s8(v519.val[1], v334)), v334), v410), vnegq_s64(vandq_s8(vshlq_n_s64(v387, 3uLL), v400))), vshlq_u64(veorq_s8(vaddq_s64(v446, v444), v358), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), v400))));
  v462 = veorq_s8(v461, *&STACK[0x3F0]);
  v463 = vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL);
  v464 = vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL);
  v465 = veorq_s8(v461, *&STACK[0x3E0]);
  v466 = vaddq_s64(v415, v398);
  v467 = veorq_s8(vaddq_s64(v463, v465), v343);
  v468 = veorq_s8(v467, vsraq_n_u64(vshlq_n_s64(v465, 3uLL), v465, 0x3DuLL));
  v469 = veorq_s8(v466, a55);
  v470 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL), v468);
  v471 = veorq_s8(v469, v464);
  v472 = vsraq_n_u64(vshlq_n_s64(v468, 3uLL), v468, 0x3DuLL);
  v473 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v470, *&STACK[0x4A0]), vorrq_s8(v470, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v474 = vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL);
  v475 = veorq_s8(v473, v472);
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v473, 0x38uLL), v473, 8uLL), v475), *&STACK[0x4C0]);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477);
  v479 = vaddq_s64(v474, v471);
  v480 = veorq_s8(vaddq_s64(vsubq_s64(v478, vandq_s8(vaddq_s64(v478, v478), *&STACK[0x490])), *&STACK[0x3A0]), *&STACK[0x390]);
  v481 = veorq_s8(v480, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v482 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL), v481);
  v483 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v482, v482), *&STACK[0x380]), v482), *&STACK[0x480]), *&STACK[0x460]);
  v484 = veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v481, 3uLL), v481, 0x3DuLL));
  v485 = vshlq_u64(veorq_s8(v479, v358), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v400)));
  v486 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), v484), a55);
  v487 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL), veorq_s8(v486, vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL)));
  v488 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v487, v408), vorrq_s8(v487, v334)), v334), v410), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x270], 3uLL), v400)));
  v489 = veorq_s8(*&STACK[0x310], *&STACK[0x4D0]);
  v490 = veorq_s8(v489, *&STACK[0x300]);
  v519.val[1] = veorq_s8(v488, v485);
  v491 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v412, v412), *&STACK[0x440]), *&STACK[0x430]), v412), *&STACK[0x420]);
  v492 = veorq_s8(v491, *&STACK[0x3F0]);
  v493 = vsraq_n_u64(vshlq_n_s64(v489, 0x38uLL), v489, 8uLL);
  v494 = veorq_s8(v491, *&STACK[0x3E0]);
  v495 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v492, 0x38uLL), v492, 8uLL), v494), v343);
  v496 = veorq_s8(v495, vsraq_n_u64(vshlq_n_s64(v494, 3uLL), v494, 0x3DuLL));
  v497 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v495, 0x38uLL), v495, 8uLL), v496);
  v498 = vsraq_n_u64(vshlq_n_s64(v490, 3uLL), v490, 0x3DuLL);
  v499 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v497, *&STACK[0x4A0]), vorrq_s8(v497, *&STACK[0x3C0])), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v500 = veorq_s8(v499, vsraq_n_u64(vshlq_n_s64(v496, 3uLL), v496, 0x3DuLL));
  v501 = veorq_s8(vaddq_s64(v493, v490), a55);
  v502 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v499, 0x38uLL), v499, 8uLL), v500), *&STACK[0x4C0]);
  v503 = vsraq_n_u64(vshlq_n_s64(v500, 3uLL), v500, 0x3DuLL);
  v504 = veorq_s8(v501, v498);
  v505 = veorq_s8(v502, v503);
  v506 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v502, 0x38uLL), v502, 8uLL), v505);
  v507 = vsraq_n_u64(vshlq_n_s64(v501, 0x38uLL), v501, 8uLL);
  v508 = veorq_s8(vaddq_s64(vsubq_s64(v506, vandq_s8(vaddq_s64(v506, v506), *&STACK[0x490])), *&STACK[0x3A0]), *&STACK[0x390]);
  v509 = veorq_s8(v508, vsraq_n_u64(vshlq_n_s64(v505, 3uLL), v505, 0x3DuLL));
  v510 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v508, 0x38uLL), v508, 8uLL), v509);
  v511 = vaddq_s64(v507, v504);
  v512 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v510, v510), *&STACK[0x380]), v510), *&STACK[0x480]), *&STACK[0x460]);
  v513 = veorq_s8(v512, vsraq_n_u64(vshlq_n_s64(v509, 3uLL), v509, 0x3DuLL));
  v514 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v512, 0x38uLL), v512, 8uLL), v513), a55);
  v515 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v514, 0x38uLL), v514, 8uLL), veorq_s8(v514, vsraq_n_u64(vshlq_n_s64(v513, 3uLL), v513, 0x3DuLL)));
  v519.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v515, v408), vorrq_s8(v515, v334)), v334), v410), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x470], 3uLL), v400))), vshlq_u64(veorq_s8(v511, v358), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v400))));
  v516 = *&STACK[0x320];
  v516.i64[1] = vqtbl4q_s8(v519, *&STACK[0x2E0]).u64[0];
  v517 = vrev64q_s8(v516);
  *(a2 + v67 - 6) = veorq_s8(vextq_s8(v517, v517, 8uLL), *&STACK[0x370]);
  return (*(v368 + 8 * (((v64 == v67) * a4) ^ v66)))();
}

uint64_t sub_100DF5BA4@<X0>(char a1@<W6>, char a2@<W7>, uint64_t a3@<X8>)
{
  if (((v4 ^ a1) * a2 + ((2 * *(v3 + a3)) & 0xEF) + (*(v3 + a3) ^ v5) + 3) >= 0x1Au)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  return (*(v9 + 8 * ((((v10 + ((2 * *(v3 + a3)) & 0xEF) + (*(v3 + a3) ^ v5) - 119) < ((v4 ^ a1) - 35)) * v8) ^ v4)))();
}

uint64_t sub_100DF5D0C@<X0>(int a1@<W2>, int a2@<W6>, unint64_t a3@<X7>, unint64_t a4@<X8>)
{
  LODWORD(STACK[0x4E00]) = STACK[0x3300];
  LODWORD(STACK[0x4DFC]) = v4;
  LODWORD(STACK[0x4DF8]) = STACK[0x3308];
  LODWORD(STACK[0x4DF4]) = STACK[0x3310];
  LODWORD(STACK[0x4DF0]) = STACK[0x1B50];
  STACK[0x4DE8] = STACK[0x1AC0];
  LODWORD(STACK[0x4DE4]) = STACK[0x195C];
  LODWORD(STACK[0x4DE0]) = STACK[0x3930];
  LODWORD(STACK[0x4DDC]) = STACK[0x12F4];
  LODWORD(STACK[0x4DD8]) = STACK[0x49C];
  LODWORD(STACK[0x4DD4]) = STACK[0x3958];
  LODWORD(STACK[0x4DD0]) = STACK[0x3858];
  LODWORD(STACK[0x4DCC]) = STACK[0x21F4];
  LODWORD(STACK[0x4DC8]) = STACK[0x37A0];
  LODWORD(STACK[0x4DC4]) = STACK[0x2234];
  LODWORD(STACK[0x4DC0]) = STACK[0x2704];
  LODWORD(STACK[0x4DBC]) = STACK[0x16B4];
  LODWORD(STACK[0x4DB8]) = STACK[0x3960];
  LODWORD(STACK[0x4DB4]) = STACK[0x17D0];
  LODWORD(STACK[0x4DB0]) = STACK[0x3808];
  LODWORD(STACK[0x4DAC]) = STACK[0x36F8];
  LODWORD(STACK[0x4DA8]) = STACK[0x3540];
  LODWORD(STACK[0x4DA4]) = STACK[0x31B0];
  LODWORD(STACK[0x4DA0]) = STACK[0x3798];
  LODWORD(STACK[0x4D9C]) = STACK[0x1C98];
  LODWORD(STACK[0x4D98]) = STACK[0x2C20];
  LODWORD(STACK[0x4D94]) = STACK[0x3B18];
  LODWORD(STACK[0x4D90]) = STACK[0x1834];
  LODWORD(STACK[0x4D8C]) = STACK[0x20AC];
  LODWORD(STACK[0x4D88]) = STACK[0x2134];
  LODWORD(STACK[0x4D84]) = a2;
  LODWORD(STACK[0x4D80]) = STACK[0x2144];
  LODWORD(STACK[0x4D7C]) = STACK[0x17DC];
  LODWORD(STACK[0x4D78]) = STACK[0x3768];
  LODWORD(STACK[0x4D74]) = STACK[0x39A0];
  LOBYTE(STACK[0x4D73]) = STACK[0xD44];
  LOBYTE(STACK[0x4D72]) = STACK[0x9A4];
  LOBYTE(STACK[0x4D71]) = STACK[0x9B4];
  LOBYTE(STACK[0x4D70]) = STACK[0x26F0];
  LOBYTE(STACK[0x4D6F]) = STACK[0x9BC];
  LOBYTE(STACK[0x4D6E]) = STACK[0x3828];
  LOBYTE(STACK[0x4D6D]) = STACK[0x1C9C];
  LOBYTE(STACK[0x4D6C]) = STACK[0x9B8];
  LOBYTE(STACK[0x4D6B]) = STACK[0xD6C];
  LOBYTE(STACK[0x4D6A]) = STACK[0x9AC];
  LOBYTE(STACK[0x4D69]) = STACK[0x9B0];
  LOBYTE(STACK[0x4D68]) = STACK[0x9A8];
  LOBYTE(STACK[0x4D67]) = STACK[0xD48];
  LOBYTE(STACK[0x4D66]) = STACK[0xD3C];
  LOBYTE(STACK[0x4D65]) = STACK[0xD28];
  LOBYTE(STACK[0x4D64]) = STACK[0xD4C];
  LOBYTE(STACK[0x4D63]) = STACK[0x1B30];
  LOBYTE(STACK[0x4D62]) = STACK[0xD18];
  LOBYTE(STACK[0x4D61]) = STACK[0x3100];
  LOBYTE(STACK[0x4D60]) = STACK[0xD1C];
  LOBYTE(STACK[0x4D5F]) = STACK[0xD30];
  LOBYTE(STACK[0x4D5E]) = STACK[0xD64];
  LOBYTE(STACK[0x4D5D]) = STACK[0x1CA8];
  LOBYTE(STACK[0x4D5C]) = STACK[0xD50];
  LOBYTE(STACK[0x4D5B]) = STACK[0x16B8];
  LOBYTE(STACK[0x4D5A]) = STACK[0xD74];
  LOBYTE(STACK[0x4D59]) = STACK[0xD40];
  LOBYTE(STACK[0x4D58]) = STACK[0xD20];
  LOBYTE(STACK[0x4D57]) = STACK[0x16BC];
  LOBYTE(STACK[0x4D56]) = STACK[0x2168];
  LOBYTE(STACK[0x4D55]) = STACK[0xD60];
  LOBYTE(STACK[0x4D54]) = STACK[0x2178];
  LOBYTE(STACK[0x4D53]) = STACK[0x1C40];
  LOBYTE(STACK[0x4D52]) = STACK[0x1138];
  LOBYTE(STACK[0x4D51]) = STACK[0xD5C];
  LOBYTE(STACK[0x4D50]) = STACK[0xD58];
  LOBYTE(STACK[0x4D4F]) = STACK[0x9C0];
  LOBYTE(STACK[0x4D4E]) = STACK[0xD24];
  LOBYTE(STACK[0x4D4D]) = STACK[0x118C];
  LOBYTE(STACK[0x4D4C]) = STACK[0x2878];
  LOBYTE(STACK[0x4D4B]) = STACK[0x2820];
  LOBYTE(STACK[0x4D4A]) = STACK[0x16C0];
  LOBYTE(STACK[0x4D49]) = STACK[0x1CA0];
  LOBYTE(STACK[0x4D48]) = STACK[0x1CB4];
  LOBYTE(STACK[0x4D47]) = STACK[0x1CCC];
  LOBYTE(STACK[0x4D46]) = STACK[0x9C8];
  LOBYTE(STACK[0x4D45]) = STACK[0x12D8];
  LOBYTE(STACK[0x4D44]) = STACK[0x9C4];
  LOBYTE(STACK[0x4D43]) = STACK[0x2FB8];
  LOBYTE(STACK[0x4D42]) = STACK[0xD38];
  LOBYTE(STACK[0x4D41]) = STACK[0xD34];
  LOBYTE(STACK[0x4D40]) = STACK[0x11C0];
  LOBYTE(STACK[0x4D3F]) = STACK[0xD54];
  LOBYTE(STACK[0x4D3E]) = STACK[0x9F0];
  LOBYTE(STACK[0x4D3D]) = STACK[0xD9C];
  LOBYTE(STACK[0x4D3C]) = STACK[0x9D4];
  LOBYTE(STACK[0x4D3B]) = STACK[0xD88];
  LOBYTE(STACK[0x4D3A]) = STACK[0x9EC];
  LOBYTE(STACK[0x4D39]) = STACK[0x19E8];
  LOBYTE(STACK[0x4D38]) = STACK[0x9F4];
  LOBYTE(STACK[0x4D37]) = STACK[0x2EB0];
  LOBYTE(STACK[0x4D36]) = STACK[0x1CB8];
  LOBYTE(STACK[0x4D35]) = STACK[0xD94];
  LOBYTE(STACK[0x4D34]) = STACK[0xD2C];
  LOBYTE(STACK[0x4D33]) = STACK[0x1CC0];
  LOBYTE(STACK[0x4D32]) = STACK[0x1190];
  LOBYTE(STACK[0x4D31]) = STACK[0x1B08];
  LOBYTE(STACK[0x4D30]) = STACK[0x9D8];
  LOBYTE(STACK[0x4D2F]) = STACK[0x9F8];
  LOBYTE(STACK[0x4D2E]) = STACK[0x9E0];
  LOBYTE(STACK[0x4D2D]) = STACK[0xD68];
  LOBYTE(STACK[0x4D2C]) = STACK[0xDA0];
  LOBYTE(STACK[0x4D2B]) = STACK[0xA04];
  LOBYTE(STACK[0x4D2A]) = STACK[0x9D0];
  LOBYTE(STACK[0x4D29]) = STACK[0x1978];
  LOBYTE(STACK[0x4D28]) = STACK[0xA08];
  LOBYTE(STACK[0x4D27]) = STACK[0xA0C];
  LOBYTE(STACK[0x4D26]) = STACK[0x9DC];
  LOBYTE(STACK[0x4D25]) = STACK[0x9CC];
  LOBYTE(STACK[0x4D24]) = STACK[0x2D28];
  LOBYTE(STACK[0x4D23]) = STACK[0x9E4];
  LOBYTE(STACK[0x4D22]) = STACK[0xA10];
  LOBYTE(STACK[0x4D21]) = STACK[0x1EB0];
  LOBYTE(STACK[0x4D20]) = STACK[0x1970];
  LOBYTE(STACK[0x4D1F]) = STACK[0xD70];
  LOBYTE(STACK[0x4D1E]) = STACK[0x9E8];
  LOBYTE(STACK[0x4D1D]) = STACK[0xA00];
  LOBYTE(STACK[0x4D1C]) = STACK[0x9FC];
  LOBYTE(STACK[0x4D1B]) = STACK[0xA30];
  LOBYTE(STACK[0x4D1A]) = STACK[0xA44];
  LOBYTE(STACK[0x4D19]) = STACK[0xA40];
  LOBYTE(STACK[0x4D18]) = STACK[0xDC4];
  LOBYTE(STACK[0x4D17]) = STACK[0x19F8];
  LOBYTE(STACK[0x4D16]) = STACK[0xA38];
  LOBYTE(STACK[0x4D15]) = STACK[0xA24];
  LOBYTE(STACK[0x4D14]) = STACK[0xA3C];
  LOBYTE(STACK[0x4D13]) = STACK[0xDB4];
  LOBYTE(STACK[0x4D12]) = STACK[0xA34];
  LOBYTE(STACK[0x4D11]) = STACK[0xA4C];
  LOBYTE(STACK[0x4D10]) = STACK[0xA28];
  LOBYTE(STACK[0x4D0F]) = STACK[0xD78];
  LOBYTE(STACK[0x4D0E]) = STACK[0x2670];
  LOBYTE(STACK[0x4D0D]) = STACK[0xA14];
  LOBYTE(STACK[0x4D0C]) = STACK[0x2E98];
  LOBYTE(STACK[0x4D0B]) = STACK[0x1988];
  LOBYTE(STACK[0x4D0A]) = STACK[0x1F70];
  LOBYTE(STACK[0x4D09]) = STACK[0x1CD0];
  LOBYTE(STACK[0x4D08]) = STACK[0xDC8];
  LOBYTE(STACK[0x4D07]) = STACK[0xDC0];
  LOBYTE(STACK[0x4D06]) = STACK[0x2A40];
  LOBYTE(STACK[0x4D05]) = STACK[0xA48];
  LOBYTE(STACK[0x4D04]) = STACK[0x1EB8];
  LOBYTE(STACK[0x4D03]) = STACK[0x1084];
  LOBYTE(STACK[0x4D02]) = STACK[0xA58];
  LOBYTE(STACK[0x4D01]) = STACK[0x2F10];
  LOBYTE(STACK[0x4D00]) = STACK[0xA64];
  LOBYTE(STACK[0x4CFF]) = STACK[0x2170];
  LOBYTE(STACK[0x4CFE]) = STACK[0x1ECC];
  LOBYTE(STACK[0x4CFD]) = STACK[0x2300];
  LOBYTE(STACK[0x4CFC]) = STACK[0x10A4];
  LOBYTE(STACK[0x4CFB]) = STACK[0xD7C];
  LOBYTE(STACK[0x4CFA]) = STACK[0xD98];
  LOBYTE(STACK[0x4CF9]) = STACK[0x23C0];
  LOBYTE(STACK[0x4CF8]) = STACK[0xD14];
  LOBYTE(STACK[0x4CF7]) = STACK[0xA2C];
  LOBYTE(STACK[0x4CF6]) = STACK[0xD90];
  LOBYTE(STACK[0x4CF5]) = STACK[0xA5C];
  LOBYTE(STACK[0x4CF4]) = STACK[0xDBC];
  LOBYTE(STACK[0x4CF3]) = STACK[0xD84];
  LOBYTE(STACK[0x4CF2]) = STACK[0x1CD8];
  LOBYTE(STACK[0x4CF1]) = STACK[0xA54];
  LOBYTE(STACK[0x4CF0]) = STACK[0x1980];
  LOBYTE(STACK[0x4CEF]) = STACK[0x1CE0];
  LOBYTE(STACK[0x4CEE]) = STACK[0x1ED4];
  LOBYTE(STACK[0x4CED]) = STACK[0xA50];
  LOBYTE(STACK[0x4CEC]) = STACK[0x22D0];
  LOBYTE(STACK[0x4CEB]) = STACK[0xDB8];
  LOBYTE(STACK[0x4CEA]) = STACK[0xA18];
  LOBYTE(STACK[0x4CE9]) = STACK[0x19F0];
  LOBYTE(STACK[0x4CE8]) = STACK[0xA60];
  LOBYTE(STACK[0x4CE7]) = STACK[0xD8C];
  LOBYTE(STACK[0x4CE6]) = STACK[0x2F78];
  LOBYTE(STACK[0x4CE5]) = STACK[0xA20];
  LOBYTE(STACK[0x4CE4]) = STACK[0x16C4];
  LOBYTE(STACK[0x4CE3]) = STACK[0xD80];
  LOBYTE(STACK[0x4CE2]) = STACK[0xA1C];
  LOBYTE(STACK[0x4CE1]) = STACK[0x1ED8];
  LOBYTE(STACK[0x4CE0]) = STACK[0x1FF8];
  LOBYTE(STACK[0x4CDF]) = STACK[0xDCC];
  LOBYTE(STACK[0x4CDE]) = STACK[0xDDC];
  LOBYTE(STACK[0x4CDD]) = STACK[0x3570];
  LOBYTE(STACK[0x4CDC]) = STACK[0xDA8];
  LOBYTE(STACK[0x4CDB]) = STACK[0x1EC0];
  LOBYTE(STACK[0x4CDA]) = STACK[0x19E0];
  LOBYTE(STACK[0x4CD9]) = STACK[0xDE4];
  LOBYTE(STACK[0x4CD8]) = STACK[0xDE8];
  LOBYTE(STACK[0x4CD7]) = STACK[0x1D08];
  LOBYTE(STACK[0x4CD6]) = STACK[0x1A00];
  LOBYTE(STACK[0x4CD5]) = STACK[0xDA4];
  LOBYTE(STACK[0x4CD4]) = STACK[0xDD0];
  LOBYTE(STACK[0x4CD3]) = STACK[0xA80];
  LOBYTE(STACK[0x4CD2]) = STACK[0x1ED0];
  LOBYTE(STACK[0x4CD1]) = STACK[0xDEC];
  LOBYTE(STACK[0x4CD0]) = STACK[0x3600];
  LOBYTE(STACK[0x4CCF]) = STACK[0x1FE4];
  LOBYTE(STACK[0x4CCE]) = STACK[0xA68];
  LOBYTE(STACK[0x4CCD]) = STACK[0xDAC];
  LOBYTE(STACK[0x4CCC]) = STACK[0xDD8];
  LOBYTE(STACK[0x4CCB]) = STACK[0x1CE8];
  LOBYTE(STACK[0x4CCA]) = STACK[0xDE0];
  LOBYTE(STACK[0x4CC9]) = STACK[0x1CE4];
  LOBYTE(STACK[0x4CC8]) = STACK[0xDD4];
  LOBYTE(STACK[0x4CC7]) = STACK[0xA74];
  LOBYTE(STACK[0x4CC6]) = STACK[0x1CF0];
  LOBYTE(STACK[0x4CC5]) = STACK[0x1FE8];
  LOBYTE(STACK[0x4CC4]) = STACK[0xA70];
  LOBYTE(STACK[0x4CC3]) = STACK[0x1EDC];
  LOBYTE(STACK[0x4CC2]) = STACK[0x1CF8];
  LOBYTE(STACK[0x4CC1]) = STACK[0xA78];
  LOBYTE(STACK[0x4CC0]) = STACK[0x3718];
  LOBYTE(STACK[0x4CBF]) = STACK[0x1CEC];
  LOBYTE(STACK[0x4CBE]) = STACK[0x2800];
  LOBYTE(STACK[0x4CBD]) = STACK[0x2810];
  LOBYTE(STACK[0x4CBC]) = STACK[0xA7C];
  LOBYTE(STACK[0x4CBB]) = STACK[0x1D00];
  LOBYTE(STACK[0x4CBA]) = STACK[0xDB0];
  LOBYTE(STACK[0x4CB9]) = STACK[0x1788];
  LOBYTE(STACK[0x4CB8]) = STACK[0xA6C];
  LOBYTE(STACK[0x4CB7]) = STACK[0x1D0C];
  LOBYTE(STACK[0x4CB6]) = STACK[0xBD4];
  LOBYTE(STACK[0x4CB5]) = STACK[0x1D28];
  LOBYTE(STACK[0x4CB4]) = STACK[0x2000];
  LOBYTE(STACK[0x4CB3]) = STACK[0xEEC];
  LOBYTE(STACK[0x4CB2]) = STACK[0xBFC];
  LOBYTE(STACK[0x4CB1]) = STACK[0x17A8];
  LOBYTE(STACK[0x4CB0]) = STACK[0x1D10];
  LOBYTE(STACK[0x4CAF]) = STACK[0x22F0];
  LOBYTE(STACK[0x4CAE]) = STACK[0x1D1C];
  LOBYTE(STACK[0x4CAD]) = STACK[0xBC8];
  LOBYTE(STACK[0x4CAC]) = STACK[0x2F20];
  LOBYTE(STACK[0x4CAB]) = STACK[0xBD0];
  LOBYTE(STACK[0x4CAA]) = STACK[0x1C60];
  LOBYTE(STACK[0x4CA9]) = STACK[0xF68];
  LOBYTE(STACK[0x4CA8]) = STACK[0xBA8];
  LOBYTE(STACK[0x4CA7]) = STACK[0xF84];
  LOBYTE(STACK[0x4CA6]) = STACK[0x1F74];
  LOBYTE(STACK[0x4CA5]) = STACK[0x1B38];
  LOBYTE(STACK[0x4CA4]) = STACK[0x16C8];
  LOBYTE(STACK[0x4CA3]) = STACK[0x1EF4];
  LOBYTE(STACK[0x4CA2]) = STACK[0xB9C];
  LOBYTE(STACK[0x4CA1]) = STACK[0x2668];
  LOBYTE(STACK[0x4CA0]) = STACK[0x23C8];
  LOBYTE(STACK[0x4C9F]) = STACK[0x16CC];
  LOBYTE(STACK[0x4C9E]) = STACK[0xBB8];
  LOBYTE(STACK[0x4C9D]) = STACK[0xBE8];
  LOBYTE(STACK[0x4C9C]) = STACK[0x2890];
  LOBYTE(STACK[0x4C9B]) = STACK[0x178C];
  LOBYTE(STACK[0x4C9A]) = STACK[0xBF8];
  LOBYTE(STACK[0x4C99]) = STACK[0xED0];
  LOBYTE(STACK[0x4C98]) = STACK[0x1D14];
  LOBYTE(STACK[0x4C97]) = STACK[0xB98];
  LOBYTE(STACK[0x4C96]) = STACK[0x1088];
  LOBYTE(STACK[0x4C5D]) = STACK[0xE48];
  LOBYTE(STACK[0x4C63]) = STACK[0xB88];
  LOBYTE(STACK[0x4C62]) = STACK[0x3120];
  LOBYTE(STACK[0x4C61]) = STACK[0x1E48];
  LOBYTE(STACK[0x4C60]) = STACK[0xE64];
  LOBYTE(STACK[0x4C5F]) = STACK[0x1120];
  LOBYTE(STACK[0x4C5E]) = STACK[0x1720];
  LOBYTE(STACK[0x4C69]) = STACK[0x1E60];
  LOBYTE(STACK[0x4C68]) = STACK[0xEB0];
  LOBYTE(STACK[0x4C67]) = STACK[0xE00];
  LOBYTE(STACK[0x4C66]) = STACK[0x1FA4];
  LOBYTE(STACK[0x4C65]) = STACK[0x19AC];
  LOBYTE(STACK[0x4C64]) = STACK[0x170C];
  LOBYTE(STACK[0x4C6F]) = STACK[0xB38];
  LOBYTE(STACK[0x4C6E]) = STACK[0x1E58];
  LOBYTE(STACK[0x4C6D]) = STACK[0x2E58];
  LOBYTE(STACK[0x4C6C]) = STACK[0xB78];
  LOBYTE(STACK[0x4C6B]) = STACK[0x1728];
  LOBYTE(STACK[0x4C6A]) = STACK[0x1724];
  LOBYTE(STACK[0x4C75]) = STACK[0x1E50];
  LOBYTE(STACK[0x4C74]) = STACK[0xB40];
  LOBYTE(STACK[0x4C73]) = STACK[0xBA0];
  LOBYTE(STACK[0x4C72]) = STACK[0xE94];
  LOBYTE(STACK[0x4C71]) = STACK[0x1B10];
  LOBYTE(STACK[0x4C70]) = STACK[0xBCC];
  LOBYTE(STACK[0x4C7B]) = STACK[0x23E8];
  LOBYTE(STACK[0x4C7A]) = STACK[0x11A4];
  LOBYTE(STACK[0x4C79]) = STACK[0x1F38];
  LOBYTE(STACK[0x4C78]) = STACK[0xF8C];
  LOBYTE(STACK[0x4C77]) = STACK[0x172C];
  LOBYTE(STACK[0x4C76]) = STACK[0xB4C];
  LOBYTE(STACK[0x4C81]) = STACK[0xBC4];
  LOBYTE(STACK[0x4C80]) = STACK[0x1668];
  LOBYTE(STACK[0x4C7F]) = STACK[0x1A48];
  LOBYTE(STACK[0x4C7E]) = STACK[0xBF0];
  LOBYTE(STACK[0x4C7D]) = STACK[0x1730];
  LOBYTE(STACK[0x4C7C]) = STACK[0xE84];
  LOBYTE(STACK[0x4C87]) = STACK[0x1F14];
  LOBYTE(STACK[0x4C86]) = STACK[0x1808];
  LOBYTE(STACK[0x4C85]) = STACK[0xEC8];
  LOBYTE(STACK[0x4C84]) = STACK[0x2F28];
  LOBYTE(STACK[0x4C83]) = STACK[0x33E4];
  LOBYTE(STACK[0x4C82]) = STACK[0x2740];
  LOBYTE(STACK[0x4C8D]) = STACK[0xED8];
  LOBYTE(STACK[0x4C8C]) = STACK[0x1D48];
  LOBYTE(STACK[0x4C8B]) = STACK[0xBE0];
  LOBYTE(STACK[0x4C8A]) = STACK[0x1D40];
  LOBYTE(STACK[0x4C89]) = STACK[0x1D54];
  LOBYTE(STACK[0x4C88]) = STACK[0x2040];
  LOBYTE(STACK[0x4C93]) = STACK[0x2848];
  LOBYTE(STACK[0x4C92]) = STACK[0x2798];
  LOBYTE(STACK[0x4C91]) = STACK[0xEC4];
  LOBYTE(STACK[0x4C90]) = STACK[0xEE0];
  LOBYTE(STACK[0x4C8F]) = STACK[0x12E8];
  LOBYTE(STACK[0x4C8E]) = STACK[0xED4];
  LOBYTE(STACK[0x4C95]) = STACK[0x1D18];
  LOBYTE(STACK[0x4C94]) = STACK[0xBC0];
  LOBYTE(STACK[0x4C5C]) = STACK[0xBDC];
  LOBYTE(STACK[0x4C5B]) = STACK[0x2EC8];
  LOBYTE(STACK[0x4C5A]) = STACK[0xE9C];
  LOBYTE(STACK[0x4C59]) = STACK[0x1E30];
  LOBYTE(STACK[0x4C58]) = STACK[0x119C];
  LOBYTE(STACK[0x4C57]) = STACK[0x1F40];
  LOBYTE(STACK[0x4C56]) = STACK[0x23E0];
  LOBYTE(STACK[0x4C55]) = STACK[0x2120];
  LOBYTE(STACK[0x4C54]) = STACK[0x1F30];
  LOBYTE(STACK[0x4C53]) = STACK[0x171C];
  LOBYTE(STACK[0x4C52]) = STACK[0x27C0];
  LOBYTE(STACK[0x4C51]) = STACK[0xE88];
  LOBYTE(STACK[0x4C50]) = STACK[0x1A40];
  LOBYTE(STACK[0x4C4F]) = STACK[0xF7C];
  LOBYTE(STACK[0x4C4E]) = STACK[0x26C8];
  LOBYTE(STACK[0x4C4D]) = STACK[0x21A0];
  LOBYTE(STACK[0x4C4C]) = STACK[0x1A38];
  LOBYTE(STACK[0x4C4B]) = STACK[0xEAC];
  LOBYTE(STACK[0x4C4A]) = STACK[0x11A8];
  LOBYTE(STACK[0x4C49]) = STACK[0x1E28];
  LOBYTE(STACK[0x4C48]) = STACK[0xF40];
  LOBYTE(STACK[0x4C47]) = STACK[0xEB8];
  LOBYTE(STACK[0x4C46]) = STACK[0x17C0];
  LOBYTE(STACK[0x4C45]) = STACK[0xF44];
  LOBYTE(STACK[0x4C44]) = STACK[0xB5C];
  LOBYTE(STACK[0x4C43]) = STACK[0x1F44];
  LOBYTE(STACK[0x4C42]) = STACK[0xF5C];
  LOBYTE(STACK[0x4C41]) = STACK[0x1A20];
  LOBYTE(STACK[0x4C40]) = STACK[0x1A1C];
  LOBYTE(STACK[0x4C3F]) = STACK[0xF64];
  LOBYTE(STACK[0x4C3E]) = STACK[0xB70];
  LOBYTE(STACK[0x4C3D]) = STACK[0x1700];
  LOBYTE(STACK[0x4C3C]) = STACK[0x1718];
  LOBYTE(STACK[0x4C3B]) = STACK[0x11CC];
  LOBYTE(STACK[0x4C3A]) = STACK[0x2808];
  LOBYTE(STACK[0x4C39]) = STACK[0x1E00];
  LOBYTE(STACK[0x4C38]) = STACK[0x1704];
  LOBYTE(STACK[0x4C37]) = STACK[0x1714];
  LOBYTE(STACK[0x4C36]) = STACK[0xE5C];
  LOBYTE(STACK[0x4C35]) = STACK[0xB74];
  LOBYTE(STACK[0x4C34]) = STACK[0xE78];
  LOBYTE(STACK[0x4C33]) = STACK[0x17C8];
  LOBYTE(STACK[0x4C32]) = STACK[0x2DA0];
  LOBYTE(STACK[0x4C31]) = STACK[0x1E38];
  LOBYTE(STACK[0x4C30]) = STACK[0xEA4];
  LOBYTE(STACK[0x4C2F]) = STACK[0x16FC];
  LOBYTE(STACK[0x4C2E]) = STACK[0x2D78];
  LOBYTE(STACK[0x4C2D]) = STACK[0xE90];
  LOBYTE(STACK[0x4C2C]) = STACK[0x1710];
  LOBYTE(STACK[0x4C2B]) = STACK[0x3750];
  LOBYTE(STACK[0x4C2A]) = STACK[0xF30];
  LOBYTE(STACK[0x4C29]) = STACK[0x1E34];
  LOBYTE(STACK[0x4C28]) = STACK[0x21E8];
  LOBYTE(STACK[0x4C27]) = STACK[0xE44];
  LOBYTE(STACK[0x4C26]) = STACK[0x1F2C];
  LOBYTE(STACK[0x4C25]) = STACK[0x1744];
  LOBYTE(STACK[0x4C24]) = STACK[0x1E2C];
  LOBYTE(STACK[0x4C23]) = STACK[0xAD4];
  LOBYTE(STACK[0x4C22]) = STACK[0xDFC];
  LOBYTE(STACK[0x4C21]) = STACK[0x2F30];
  LOBYTE(STACK[0x4C20]) = STACK[0xB24];
  LOBYTE(STACK[0x4C1F]) = STACK[0x1E40];
  LOBYTE(STACK[0x4C1E]) = STACK[0x1E4C];
  LOBYTE(STACK[0x4C1D]) = STACK[0x1818];
  LOBYTE(STACK[0x4C1C]) = STACK[0xE58];
  LOBYTE(STACK[0x4C1B]) = STACK[0x2F18];
  LOBYTE(STACK[0x4C1A]) = STACK[0x1F3C];
  LOBYTE(STACK[0x4C19]) = STACK[0xB14];
  LOBYTE(STACK[0x4C18]) = STACK[0xE24];
  LOBYTE(STACK[0x4C17]) = STACK[0xF3C];
  LOBYTE(STACK[0x4C16]) = STACK[0xEF8];
  LOBYTE(STACK[0x4C15]) = STACK[0x2918];
  LOBYTE(STACK[0x4C14]) = STACK[0x1FA0];
  LOBYTE(STACK[0x4C13]) = STACK[0xB2C];
  LOBYTE(STACK[0x4C12]) = STACK[0x3348];
  LOBYTE(STACK[0x4C11]) = STACK[0x2D40];
  LOBYTE(STACK[0x4C10]) = STACK[0x1DD8];
  LOBYTE(STACK[0x4C0F]) = STACK[0xB80];
  LOBYTE(STACK[0x4C0E]) = STACK[0x1708];
  LOBYTE(STACK[0x4C0D]) = STACK[0xB54];
  LOBYTE(STACK[0x4C0C]) = STACK[0x1140];
  LOBYTE(STACK[0x4C0B]) = STACK[0x1DEC];
  LOBYTE(STACK[0x4C0A]) = STACK[0xBB0];
  LOBYTE(STACK[0x4C09]) = STACK[0xE6C];
  LOBYTE(STACK[0x4C08]) = STACK[0xF1C];
  LOBYTE(STACK[0x4C07]) = STACK[0xE3C];
  LOBYTE(STACK[0x4C06]) = STACK[0x1A28];
  LOBYTE(STACK[0x4C05]) = STACK[0x2F98];
  LOBYTE(STACK[0x4C04]) = STACK[0x2180];
  LOBYTE(STACK[0x4C03]) = STACK[0x1A64];
  LOBYTE(STACK[0x4C02]) = STACK[0xB44];
  LOBYTE(STACK[0x4C01]) = STACK[0x2EC0];
  LOBYTE(STACK[0x4C00]) = STACK[0xF18];
  LOBYTE(STACK[0x4BFF]) = STACK[0x1DC8];
  LOBYTE(STACK[0x4BFE]) = STACK[0x1FEC];
  LOBYTE(STACK[0x4BFD]) = STACK[0x23D8];
  LOBYTE(STACK[0x4BFC]) = STACK[0x3568];
  LOBYTE(STACK[0x4BFB]) = STACK[0x2D50];
  LOBYTE(STACK[0x4BFA]) = STACK[0xE74];
  LOBYTE(STACK[0x4BF9]) = STACK[0x1F34];
  LOBYTE(STACK[0x4BF8]) = STACK[0x111C];
  LOBYTE(STACK[0x4BF7]) = STACK[0x27A0];
  LOBYTE(STACK[0x4BF6]) = STACK[0xB28];
  LOBYTE(STACK[0x4BF5]) = STACK[0x1C70];
  LOBYTE(STACK[0x4BF4]) = STACK[0x16F8];
  LOBYTE(STACK[0x4BF3]) = STACK[0x16F0];
  LOBYTE(STACK[0x4BF2]) = STACK[0x2198];
  LOBYTE(STACK[0x4BF1]) = STACK[0x1E14];
  LOBYTE(STACK[0x4BF0]) = STACK[0x114C];
  LOBYTE(STACK[0x4BEF]) = STACK[0xE28];
  LOBYTE(STACK[0x4BEE]) = STACK[0xAC0];
  LOBYTE(STACK[0x4BED]) = STACK[0xE50];
  LOBYTE(STACK[0x4BEC]) = STACK[0x2738];
  LOBYTE(STACK[0x4BEB]) = STACK[0x1E08];
  LOBYTE(STACK[0x4BEA]) = STACK[0x3498];
  LOBYTE(STACK[0x4BE9]) = STACK[0xF50];
  LOBYTE(STACK[0x4BE8]) = STACK[0x21D0];
  LOBYTE(STACK[0x4BE7]) = STACK[0xF4C];
  LOBYTE(STACK[0x4BE6]) = STACK[0xB3C];
  LOBYTE(STACK[0x4BE5]) = STACK[0xAEC];
  LOBYTE(STACK[0x4BE4]) = STACK[0x25E0];
  LOBYTE(STACK[0x4BE3]) = STACK[0xEFC];
  LOBYTE(STACK[0x4BE2]) = STACK[0x2EA8];
  LOBYTE(STACK[0x4BE1]) = STACK[0xF34];
  LOBYTE(STACK[0x4BE0]) = STACK[0xAAC];
  LOBYTE(STACK[0x4BDF]) = STACK[0x12E0];
  LOBYTE(STACK[0x4BDE]) = STACK[0x1E18];
  LOBYTE(STACK[0x4BDD]) = STACK[0xB08];
  LOBYTE(STACK[0x4BDC]) = STACK[0x1D88];
  LOBYTE(STACK[0x4BDB]) = STACK[0x1F20];
  LOBYTE(STACK[0x4BDA]) = STACK[0xEF0];
  LOBYTE(STACK[0x4BD9]) = STACK[0x1DF0];
  LOBYTE(STACK[0x4BD8]) = STACK[0x1DD4];
  LOBYTE(STACK[0x4BD7]) = STACK[0x1F9C];
  LOBYTE(STACK[0x4BD6]) = STACK[0x2DD0];
  LOBYTE(STACK[0x4BD5]) = STACK[0x1E24];
  LOBYTE(STACK[0x4BD4]) = STACK[0x1DA0];
  LOBYTE(STACK[0x4BD3]) = STACK[0xEE4];
  LOBYTE(STACK[0x4BD2]) = STACK[0x1118];
  LOBYTE(STACK[0x4BD1]) = STACK[0x1DFC];
  LOBYTE(STACK[0x4BD0]) = STACK[0xADC];
  LOBYTE(STACK[0x4BCF]) = STACK[0x17B0];
  LOBYTE(STACK[0x4BCE]) = STACK[0x16F4];
  LOBYTE(STACK[0x4BCD]) = STACK[0x1D98];
  LOBYTE(STACK[0x4BCC]) = STACK[0x1A08];
  LOBYTE(STACK[0x4BCB]) = STACK[0x1E20];
  LOBYTE(STACK[0x4BCA]) = STACK[0x1F28];
  LOBYTE(STACK[0x4BC9]) = STACK[0x16E4];
  LOBYTE(STACK[0x4BC8]) = STACK[0x25F0];
  LOBYTE(STACK[0x4BC7]) = STACK[0xE30];
  LOBYTE(STACK[0x4BC6]) = STACK[0xAF0];
  LOBYTE(STACK[0x4BC5]) = STACK[0xAC4];
  LOBYTE(STACK[0x4BC4]) = STACK[0xAE0];
  LOBYTE(STACK[0x4BC3]) = STACK[0xAD8];
  LOBYTE(STACK[0x4BC2]) = STACK[0xAB0];
  LOBYTE(STACK[0x4BC1]) = STACK[0x1F24];
  LOBYTE(STACK[0x4BC0]) = STACK[0xAB8];
  LOBYTE(STACK[0x4BBF]) = STACK[0x2830];
  LOBYTE(STACK[0x4BBE]) = STACK[0xE08];
  LOBYTE(STACK[0x4BBD]) = STACK[0x1F1C];
  LOBYTE(STACK[0x4BBC]) = STACK[0xAE8];
  LOBYTE(STACK[0x4BBB]) = STACK[0xF0C];
  LOBYTE(STACK[0x4BBA]) = STACK[0xDF8];
  LOBYTE(STACK[0x4BB9]) = STACK[0x2EA0];
  LOBYTE(STACK[0x4BB8]) = STACK[0x1AE8];
  LOBYTE(STACK[0x4BB7]) = STACK[0x11C8];
  LOBYTE(STACK[0x4BB6]) = STACK[0xE98];
  LOBYTE(STACK[0x4BB5]) = STACK[0x24E8];
  LOBYTE(STACK[0x4BB4]) = STACK[0xF58];
  LOBYTE(STACK[0x4BB3]) = STACK[0xB64];
  LOBYTE(STACK[0x4BB2]) = STACK[0xBBC];
  LOBYTE(STACK[0x4BB1]) = STACK[0x1110];
  LOBYTE(STACK[0x4BB0]) = STACK[0xEDC];
  LOBYTE(STACK[0x4BAF]) = STACK[0xE8C];
  LOBYTE(STACK[0x4BAE]) = STACK[0x2D48];
  LOBYTE(STACK[0x4BAD]) = STACK[0x1F8C];
  LOBYTE(STACK[0x4BAC]) = STACK[0xB94];
  LOBYTE(STACK[0x4BAB]) = STACK[0xBEC];
  LOBYTE(STACK[0x4BAA]) = STACK[0xF88];
  LOBYTE(STACK[0x4BA9]) = STACK[0x19B0];
  LOBYTE(STACK[0x4BA8]) = STACK[0xF48];
  LOBYTE(STACK[0x4BA7]) = STACK[0xEA8];
  LOBYTE(STACK[0x4BA6]) = STACK[0x2EB8];
  LOBYTE(STACK[0x4BA5]) = STACK[0x2658];
  LOBYTE(STACK[0x4BA4]) = STACK[0xBB4];
  LOBYTE(STACK[0x4BA3]) = STACK[0xECC];
  LOBYTE(STACK[0x4BA2]) = STACK[0xB48];
  LOBYTE(STACK[0x4BA1]) = STACK[0x1D78];
  LOBYTE(STACK[0x4BA0]) = STACK[0x29D0];
  LOBYTE(STACK[0x4B9F]) = STACK[0x17BC];
  LOBYTE(STACK[0x4B9E]) = STACK[0x1D68];
  LOBYTE(STACK[0x4B9D]) = STACK[0x1DBC];
  LOBYTE(STACK[0x4B9C]) = STACK[0xF2C];
  LOBYTE(STACK[0x4B9B]) = STACK[0xEB4];
  LOBYTE(STACK[0x4B9A]) = STACK[0x3010];
  LOBYTE(STACK[0x4B99]) = STACK[0xBD8];
  LOBYTE(STACK[0x4B98]) = STACK[0x1A24];
  LOBYTE(STACK[0x4B97]) = STACK[0x2388];
  LOBYTE(STACK[0x4B96]) = STACK[0xE68];
  LOBYTE(STACK[0x4B95]) = STACK[0xB58];
  LOBYTE(STACK[0x4B94]) = STACK[0x1D74];
  LOBYTE(STACK[0x4B93]) = STACK[0x1F7C];
  LOBYTE(STACK[0x4B92]) = STACK[0xEBC];
  LOBYTE(STACK[0x4B91]) = STACK[0xB20];
  LOBYTE(STACK[0x4B90]) = STACK[0x1DE8];
  LOBYTE(STACK[0x4B8F]) = STACK[0x1DC0];
  LOBYTE(STACK[0x4B8E]) = STACK[0x1D90];
  LOBYTE(STACK[0x4B8D]) = STACK[0x2F70];
  LOBYTE(STACK[0x4B8C]) = STACK[0xBA4];
  LOBYTE(STACK[0x4B8B]) = STACK[0xF28];
  LOBYTE(STACK[0x4B8A]) = STACK[0x1798];
  LOBYTE(STACK[0x4B89]) = STACK[0xE60];
  LOBYTE(STACK[0x4B88]) = STACK[0x16EC];
  LOBYTE(STACK[0x4B87]) = STACK[0x16E8];
  LOBYTE(STACK[0x4B86]) = STACK[0xB90];
  LOBYTE(STACK[0x4B85]) = STACK[0xB7C];
  LOBYTE(STACK[0x4B84]) = STACK[0xB04];
  LOBYTE(STACK[0x4B83]) = STACK[0xB0C];
  LOBYTE(STACK[0x4B82]) = STACK[0x2A08];
  LOBYTE(STACK[0x4B81]) = STACK[0x1DE4];
  LOBYTE(STACK[0x4B80]) = STACK[0x17A0];
  LOBYTE(STACK[0x4B7F]) = STACK[0x32D0];
  LOBYTE(STACK[0x4B7E]) = STACK[0xB8C];
  LOBYTE(STACK[0x4B7D]) = STACK[0x1D80];
  LOBYTE(STACK[0x4B7C]) = STACK[0x1AE0];
  LOBYTE(STACK[0x4A82]) = STACK[0xF90];
  LOBYTE(STACK[0x4A83]) = STACK[0xC24];
  LOBYTE(STACK[0x4A81]) = STACK[0x1750];
  LOBYTE(STACK[0x4A80]) = STACK[0xF38];
  LOBYTE(STACK[0x4A7F]) = STACK[0x11C4];
  LOBYTE(STACK[0x4A7E]) = STACK[0x1014];
  LOBYTE(STACK[0x4A7D]) = STACK[0x108C];
  LOBYTE(STACK[0x4A7C]) = STACK[0x177C];
  LOBYTE(STACK[0x4A7B]) = STACK[0xC3C];
  LOBYTE(STACK[0x4A7A]) = STACK[0x1090];
  LOBYTE(STACK[0x4A79]) = STACK[0xC44];
  LOBYTE(STACK[0x4A78]) = STACK[0x1B20];
  LOBYTE(STACK[0x4A77]) = STACK[0x11B0];
  LOBYTE(STACK[0x4B7B]) = STACK[0x1A34];
  LOBYTE(STACK[0x4A76]) = STACK[0x1030];
  LOBYTE(STACK[0x4A75]) = STACK[0x174C];
  LOBYTE(STACK[0x4A74]) = STACK[0xC2C];
  LOBYTE(STACK[0x4A73]) = STACK[0x179C];
  LOBYTE(STACK[0x4A72]) = STACK[0x1758];
  LOBYTE(STACK[0x4B7A]) = STACK[0xB84];
  LOBYTE(STACK[0x4B79]) = STACK[0xE70];
  LOBYTE(STACK[0x4B78]) = STACK[0xB10];
  LOBYTE(STACK[0x4B77]) = STACK[0x1DB0];
  LOBYTE(STACK[0x4B76]) = STACK[0xE80];
  LOBYTE(STACK[0x4B75]) = STACK[0xAE4];
  LOBYTE(STACK[0x4B74]) = STACK[0x11D4];
  LOBYTE(STACK[0x4B73]) = STACK[0xB50];
  LOBYTE(STACK[0x4B72]) = STACK[0xE7C];
  LOBYTE(STACK[0x4B71]) = STACK[0xE34];
  LOBYTE(STACK[0x4B70]) = STACK[0xAFC];
  LOBYTE(STACK[0x4B6F]) = STACK[0xF24];
  LOBYTE(STACK[0x4B6E]) = STACK[0x21A8];
  LOBYTE(STACK[0x4B6D]) = STACK[0x1D58];
  LOBYTE(STACK[0x4B6C]) = STACK[0xE38];
  LOBYTE(STACK[0x4B6B]) = STACK[0xF54];
  LOBYTE(STACK[0x4B6A]) = STACK[0x2930];
  LOBYTE(STACK[0x4B69]) = STACK[0x1DB4];
  LOBYTE(STACK[0x4B68]) = STACK[0xAD0];
  LOBYTE(STACK[0x4B67]) = STACK[0x1DAC];
  LOBYTE(STACK[0x4B66]) = STACK[0xB34];
  LOBYTE(STACK[0x4B65]) = STACK[0xE4C];
  LOBYTE(STACK[0x4B64]) = STACK[0x1B18];
  LOBYTE(STACK[0x4B63]) = STACK[0x3470];
  LOBYTE(STACK[0x4B62]) = STACK[0x1F78];
  LOBYTE(STACK[0x4B61]) = STACK[0x19A0];
  LOBYTE(STACK[0x4B60]) = STACK[0xB30];
  LOBYTE(STACK[0x4B5F]) = STACK[0x11D0];
  LOBYTE(STACK[0x4B5E]) = STACK[0x1DB8];
  LOBYTE(STACK[0x4B5D]) = STACK[0x2D30];
  LOBYTE(STACK[0x4B5C]) = STACK[0xACC];
  LOBYTE(STACK[0x4B5B]) = STACK[0x1810];
  LOBYTE(STACK[0x4B5A]) = STACK[0xE2C];
  LOBYTE(STACK[0x4B59]) = STACK[0xE40];
  LOBYTE(STACK[0x4B58]) = STACK[0xB1C];
  LOBYTE(STACK[0x4B57]) = STACK[0x2FD8];
  LOBYTE(STACK[0x4B56]) = STACK[0x1828];
  LOBYTE(STACK[0x4B55]) = STACK[0x21E0];
  LOBYTE(STACK[0x4B54]) = STACK[0x3428];
  LOBYTE(STACK[0x4B53]) = STACK[0xAC8];
  LOBYTE(STACK[0x4B52]) = STACK[0x1F08];
  LOBYTE(STACK[0x4B51]) = STACK[0x1FF0];
  LOBYTE(STACK[0x4B50]) = STACK[0xAB4];
  LOBYTE(STACK[0x4B4F]) = STACK[0xAF4];
  LOBYTE(STACK[0x4B4E]) = STACK[0xF04];
  LOBYTE(STACK[0x4B4D]) = STACK[0xF00];
  LOBYTE(STACK[0x4B4C]) = STACK[0xB00];
  LOBYTE(STACK[0x4B4B]) = STACK[0xF08];
  LOBYTE(STACK[0x4B4A]) = STACK[0xAF8];
  LOBYTE(STACK[0x4B49]) = STACK[0x1F18];
  LOBYTE(STACK[0x4B48]) = STACK[0x3480];
  LOBYTE(STACK[0x4B47]) = STACK[0x1198];
  LOBYTE(STACK[0x4B46]) = STACK[0xE54];
  LOBYTE(STACK[0x4B45]) = STACK[0xE14];
  LOBYTE(STACK[0x4B44]) = STACK[0x23B8];
  LOBYTE(STACK[0x4B43]) = STACK[0x1C68];
  LOBYTE(STACK[0x4B42]) = STACK[0x1D38];
  LOBYTE(STACK[0x4B41]) = STACK[0x3800];
  LOBYTE(STACK[0x4B40]) = STACK[0xAA4];
  LOBYTE(STACK[0x4B3F]) = STACK[0xE18];
  LOBYTE(STACK[0x4B3E]) = STACK[0xF20];
  LOBYTE(STACK[0x4B3D]) = STACK[0xE10];
  LOBYTE(STACK[0x4B3C]) = STACK[0x1D44];
  LOBYTE(STACK[0x4B3B]) = STACK[0xB18];
  LOBYTE(STACK[0x4B3A]) = STACK[0xA9C];
  LOBYTE(STACK[0x4B39]) = STACK[0x20A0];
  LOBYTE(STACK[0x4B38]) = STACK[0x1794];
  LOBYTE(STACK[0x4B37]) = STACK[0x3388];
  LOBYTE(STACK[0x4B36]) = STACK[0x1998];
  LOBYTE(STACK[0x4B35]) = STACK[0x2400];
  LOBYTE(STACK[0x4B34]) = STACK[0xF10];
  LOBYTE(STACK[0x4B33]) = STACK[0xF14];
  LOBYTE(STACK[0x4B32]) = STACK[0x3588];
  LOBYTE(STACK[0x4B31]) = STACK[0x1F90];
  LOBYTE(STACK[0x4B30]) = STACK[0x1D3C];
  LOBYTE(STACK[0x4B2F]) = STACK[0x26E8];
  LOBYTE(STACK[0x4B2E]) = STACK[0x1D8C];
  LOBYTE(STACK[0x4B2D]) = STACK[0x1790];
  LOBYTE(STACK[0x4B2C]) = STACK[0x3138];
  LOBYTE(STACK[0x4B2B]) = STACK[0xABC];
  LOBYTE(STACK[0x4B2A]) = STACK[0x1EF8];
  LOBYTE(STACK[0x4B29]) = STACK[0xA94];
  LOBYTE(STACK[0x4B28]) = STACK[0xEF4];
  LOBYTE(STACK[0x4B27]) = STACK[0x22E8];
  LOBYTE(STACK[0x4B26]) = STACK[0x1AF8];
  LOBYTE(STACK[0x4B25]) = STACK[0x1194];
  LOBYTE(STACK[0x4B24]) = STACK[0x1D5C];
  LOBYTE(STACK[0x4B23]) = STACK[0xE20];
  LOBYTE(STACK[0x4B22]) = STACK[0x16D0];
  LOBYTE(STACK[0x4B21]) = STACK[0x17AC];
  LOBYTE(STACK[0x4B20]) = STACK[0x1994];
  LOBYTE(STACK[0x4B1F]) = STACK[0x1F00];
  LOBYTE(STACK[0x4B1E]) = STACK[0x1D60];
  LOBYTE(STACK[0x4B1D]) = STACK[0x1F80];
  LOBYTE(STACK[0x4B1C]) = STACK[0x1D64];
  LOBYTE(STACK[0x4B1B]) = STACK[0xE1C];
  LOBYTE(STACK[0x4B1A]) = STACK[0xAA8];
  LOBYTE(STACK[0x4B19]) = STACK[0xA90];
  LOBYTE(STACK[0x4B18]) = STACK[0x16E0];
  LOBYTE(STACK[0x4B17]) = STACK[0x1EE0];
  LOBYTE(STACK[0x4B16]) = STACK[0x23D0];
  LOBYTE(STACK[0x4B15]) = STACK[0xE04];
  LOBYTE(STACK[0x4B14]) = STACK[0xE0C];
  LOBYTE(STACK[0x4B13]) = STACK[0x30B8];
  LOBYTE(STACK[0x4B12]) = STACK[0xEE8];
  LOBYTE(STACK[0x4B11]) = STACK[0x3440];
  LOBYTE(STACK[0x4B10]) = STACK[0x1EF0];
  LOBYTE(STACK[0x4B0F]) = STACK[0x16D8];
  LOBYTE(STACK[0x4B0E]) = STACK[0xAA0];
  LOBYTE(STACK[0x4B0D]) = STACK[0x16D4];
  LOBYTE(STACK[0x4B0C]) = STACK[0x1F0C];
  LOBYTE(STACK[0x4B0B]) = STACK[0x2108];
  LOBYTE(STACK[0x4B0A]) = STACK[0xA98];
  LOBYTE(STACK[0x4B09]) = STACK[0x1A10];
  LOBYTE(STACK[0x4B08]) = STACK[0x2DD8];
  LOBYTE(STACK[0x4B07]) = STACK[0x1734];
  LOBYTE(STACK[0x4B06]) = STACK[0x24F0];
  LOBYTE(STACK[0x4B05]) = STACK[0x1F10];
  LOBYTE(STACK[0x4B04]) = STACK[0xBE4];
  LOBYTE(STACK[0x4B03]) = STACK[0x3140];
  LOBYTE(STACK[0x4B02]) = STACK[0x11A0];
  LOBYTE(STACK[0x4B01]) = STACK[0xBAC];
  LOBYTE(STACK[0x4B00]) = STACK[0x31A0];
  LOBYTE(STACK[0x4AFF]) = STACK[0x1D30];
  LOBYTE(STACK[0x4AFE]) = STACK[0x16DC];
  LOBYTE(STACK[0x4AFD]) = STACK[0x26E0];
  LOBYTE(STACK[0x4AFC]) = STACK[0x11AC];
  LOBYTE(STACK[0x4AFB]) = STACK[0x1D34];
  LOBYTE(STACK[0x4AFA]) = STACK[0x1D20];
  LOBYTE(STACK[0x4AF9]) = STACK[0xB68];
  LOBYTE(STACK[0x4AF8]) = STACK[0xBF4];
  LOBYTE(STACK[0x4AF7]) = STACK[0xB6C];
  LOBYTE(STACK[0x4AF6]) = STACK[0x1EEC];
  LOBYTE(STACK[0x4AF5]) = STACK[0xF74];
  LOBYTE(STACK[0x4AF4]) = STACK[0x1D2C];
  LOBYTE(STACK[0x4AF3]) = STACK[0x166C];
  LOBYTE(STACK[0x4AF2]) = STACK[0xB60];
  LOBYTE(STACK[0x4AF1]) = STACK[0xEA0];
  LOBYTE(STACK[0x4AF0]) = STACK[0x1E5C];
  LOBYTE(STACK[0x4AEF]) = STACK[0xEC0];
  LOBYTE(STACK[0x4AEE]) = STACK[0x2F38];
  LOBYTE(STACK[0x4AED]) = STACK[0x29C8];
  LOBYTE(STACK[0x4AEC]) = STACK[0xC08];
  LOBYTE(STACK[0x4AEB]) = STACK[0x1968];
  LOBYTE(STACK[0x4AEA]) = STACK[0x23F0];
  LOBYTE(STACK[0x4AE9]) = STACK[0x2ED8];
  LOBYTE(STACK[0x4AE8]) = STACK[0x1E64];
  LOBYTE(STACK[0x4AE7]) = STACK[0xC00];
  LOBYTE(STACK[0x4AE6]) = STACK[0x1E68];
  LOBYTE(STACK[0x4AE5]) = STACK[0xC0C];
  LOBYTE(STACK[0x4AE4]) = STACK[0xC04];
  LOBYTE(STACK[0x4AE3]) = STACK[0x1778];
  LOBYTE(STACK[0x4AE2]) = STACK[0x1AF0];
  LOBYTE(STACK[0x4AE1]) = STACK[0x11D8];
  LOBYTE(STACK[0x4AE0]) = STACK[0xC10];
  LOBYTE(STACK[0x4ADF]) = STACK[0x1E74];
  LOBYTE(STACK[0x4ADE]) = STACK[0x34F0];
  LOBYTE(STACK[0x4ADD]) = STACK[0xF78];
  LOBYTE(STACK[0x4ADC]) = STACK[0x1F48];
  LOBYTE(STACK[0x4ADB]) = STACK[0x2318];
  LOBYTE(STACK[0x4ADA]) = STACK[0xFE4];
  LOBYTE(STACK[0x4AD9]) = STACK[0xC18];
  LOBYTE(STACK[0x4AD8]) = STACK[0x23F8];
  LOBYTE(STACK[0x4AD7]) = STACK[0x1740];
  LOBYTE(STACK[0x4AD6]) = STACK[0x27D8];
  LOBYTE(STACK[0x4AD5]) = STACK[0x2EE8];
  LOBYTE(STACK[0x4AD4]) = STACK[0x27A8];
  LOBYTE(STACK[0x4AD3]) = STACK[0xF60];
  LOBYTE(STACK[0x4AD2]) = STACK[0x1C78];
  LOBYTE(STACK[0x4AD1]) = STACK[0xF80];
  LOBYTE(STACK[0x4AD0]) = STACK[0xF6C];
  LOBYTE(STACK[0x4ACF]) = STACK[0xF70];
  LOBYTE(STACK[0x4ACE]) = STACK[0xC14];
  LOBYTE(STACK[0x4ACD]) = STACK[0x173C];
  LOBYTE(STACK[0x4ACC]) = STACK[0xA84];
  LOBYTE(STACK[0x4ACB]) = STACK[0xC1C];
  LOBYTE(STACK[0x4ACA]) = STACK[0xFCC];
  LOBYTE(STACK[0x4AC9]) = STACK[0x1E78];
  LOBYTE(STACK[0x4AC8]) = STACK[0x2EE0];
  LOBYTE(STACK[0x4AC7]) = STACK[0x1C48];
  LOBYTE(STACK[0x4AC6]) = STACK[0xFB4];
  LOBYTE(STACK[0x4AC5]) = STACK[0xC20];
  LOBYTE(STACK[0x4AC4]) = STACK[0xC60];
  LOBYTE(STACK[0x4AC3]) = STACK[0xF98];
  LOBYTE(STACK[0x4AC2]) = STACK[0xC5C];
  LOBYTE(STACK[0x4AC1]) = STACK[0x1004];
  LOBYTE(STACK[0x4AC0]) = STACK[0x3108];
  LOBYTE(STACK[0x4ABF]) = STACK[0x17E0];
  LOBYTE(STACK[0x4ABE]) = STACK[0x102C];
  LOBYTE(STACK[0x4ABD]) = STACK[0xC40];
  LOBYTE(STACK[0x4ABC]) = STACK[0xC30];
  LOBYTE(STACK[0x4ABB]) = STACK[0x1E7C];
  LOBYTE(STACK[0x4ABA]) = STACK[0x1F50];
  LOBYTE(STACK[0x4AB9]) = STACK[0xF94];
  LOBYTE(STACK[0x4AB8]) = STACK[0xFA0];
  LOBYTE(STACK[0x4AB7]) = STACK[0xC28];
  LOBYTE(STACK[0x4AB6]) = STACK[0x2188];
  LOBYTE(STACK[0x4AB5]) = STACK[0x1FA8];
  LOBYTE(STACK[0x4AB4]) = STACK[0xC34];
  LOBYTE(STACK[0x4AB3]) = STACK[0xF9C];
  LOBYTE(STACK[0x4AB2]) = STACK[0x101C];
  LOBYTE(STACK[0x4AB1]) = STACK[0x1748];
  LOBYTE(STACK[0x4AB0]) = STACK[0x1034];
  LOBYTE(STACK[0x4AAF]) = STACK[0x21B0];
  LOBYTE(STACK[0x4AAE]) = STACK[0xC58];
  LOBYTE(STACK[0x4AAD]) = STACK[0xFA4];
  LOBYTE(STACK[0x4AAC]) = STACK[0xC38];
  LOBYTE(STACK[0x4AAB]) = STACK[0x2D70];
  LOBYTE(STACK[0x4AAA]) = STACK[0x2610];
  LOBYTE(STACK[0x4AA9]) = STACK[0x1028];
  LOBYTE(STACK[0x4AA8]) = STACK[0xC64];
  LOBYTE(STACK[0x4AA7]) = STACK[0xFA8];
  LOBYTE(STACK[0x4AA6]) = STACK[0x17E8];
  LOBYTE(STACK[0x4AA5]) = STACK[0xC4C];
  LOBYTE(STACK[0x4AA4]) = STACK[0x1E84];
  LOBYTE(STACK[0x4AA3]) = STACK[0xC70];
  LOBYTE(STACK[0x4AA2]) = STACK[0x1024];
  LOBYTE(STACK[0x4AA1]) = STACK[0x21D8];
  LOBYTE(STACK[0x4AA0]) = STACK[0x2750];
  LOBYTE(STACK[0x4A9F]) = STACK[0x3020];
  LOBYTE(STACK[0x4A9E]) = STACK[0xC7C];
  LOBYTE(STACK[0x4A9D]) = STACK[0x34B8];
  LOBYTE(STACK[0x4A9C]) = STACK[0x17F8];
  LOBYTE(STACK[0x4A9B]) = STACK[0x1FB0];
  LOBYTE(STACK[0x4A9A]) = STACK[0xC48];
  LOBYTE(STACK[0x4A99]) = STACK[0x2EF0];
  LOBYTE(STACK[0x4A98]) = STACK[0x2F48];
  LOBYTE(STACK[0x4A97]) = STACK[0xC74];
  LOBYTE(STACK[0x4A96]) = STACK[0xC50];
  LOBYTE(STACK[0x4A95]) = STACK[0xC68];
  LOBYTE(STACK[0x4A94]) = STACK[0xC6C];
  LOBYTE(STACK[0x4A93]) = STACK[0x28A0];
  LOBYTE(STACK[0x4A92]) = STACK[0x21B8];
  LOBYTE(STACK[0x4A91]) = STACK[0x1FBC];
  LOBYTE(STACK[0x4A90]) = STACK[0x1C18];
  LOBYTE(STACK[0x4A8F]) = STACK[0x1F4C];
  LOBYTE(STACK[0x4A8E]) = STACK[0xFAC];
  LOBYTE(STACK[0x4A8D]) = STACK[0x2FA0];
  LOBYTE(STACK[0x4A8C]) = STACK[0x30E8];
  LOBYTE(STACK[0x4A8B]) = STACK[0x1FB4];
  LOBYTE(STACK[0x4A8A]) = STACK[0x2860];
  LOBYTE(STACK[0x4A89]) = STACK[0xC84];
  LOBYTE(STACK[0x4A88]) = STACK[0x100C];
  LOBYTE(STACK[0x4A87]) = STACK[0x29A0];
  LOBYTE(STACK[0x4A86]) = STACK[0x17F0];
  LOBYTE(STACK[0x4A85]) = STACK[0xC78];
  LOBYTE(STACK[0x4A84]) = STACK[0xFB0];
  LOBYTE(STACK[0x4A71]) = STACK[0x1044];
  LOBYTE(STACK[0x4A70]) = STACK[0x1F54];
  LOBYTE(STACK[0x4A6F]) = STACK[0x3058];
  LOBYTE(STACK[0x4A6E]) = STACK[0xC88];
  LOBYTE(STACK[0x4A6D]) = STACK[0x1FB8];
  LOBYTE(STACK[0x4A6C]) = STACK[0x1EA0];
  LOBYTE(STACK[0x4A6B]) = STACK[0xC54];
  LOBYTE(STACK[0x4A6A]) = STACK[0xFC8];
  LOBYTE(STACK[0x4A69]) = STACK[0x3730];
  LOBYTE(STACK[0x4A68]) = STACK[0xFC4];
  LOBYTE(STACK[0x4A67]) = STACK[0x1E88];
  LOBYTE(STACK[0x4A66]) = STACK[0x2ED0];
  LOBYTE(STACK[0x4A65]) = STACK[0x11E4];
  LOBYTE(STACK[0x4A64]) = STACK[0x1050];
  LOBYTE(STACK[0x4A63]) = STACK[0x175C];
  LOBYTE(STACK[0x4A62]) = STACK[0xFC0];
  LOBYTE(STACK[0x4A61]) = STACK[0x2A28];
  LOBYTE(STACK[0x4A60]) = STACK[0xFD4];
  LOBYTE(STACK[0x4A5F]) = STACK[0x1048];
  LOBYTE(STACK[0x4A5E]) = STACK[0x1A50];
  LOBYTE(STACK[0x4A5D]) = STACK[0xC90];
  LOBYTE(STACK[0x4A5C]) = STACK[0x1760];
  LOBYTE(STACK[0x4A5B]) = STACK[0xCA8];
  LOBYTE(STACK[0x4A5A]) = STACK[0x103C];
  LOBYTE(STACK[0x4A59]) = STACK[0xC9C];
  LOBYTE(STACK[0x4A58]) = STACK[0x1150];
  LOBYTE(STACK[0x4A57]) = STACK[0x1FC0];
  LOBYTE(STACK[0x4A56]) = STACK[0x2DA8];
  LOBYTE(STACK[0x4A55]) = STACK[0x1754];
  LOBYTE(STACK[0x4A54]) = STACK[0x11E0];
  LOBYTE(STACK[0x4A53]) = STACK[0x36C8];
  LOBYTE(STACK[0x4A52]) = STACK[0x2868];
  LOBYTE(STACK[0x4A51]) = STACK[0x1C38];
  LOBYTE(STACK[0x4A50]) = STACK[0x11E8];
  LOBYTE(STACK[0x4A4F]) = STACK[0xFD0];
  LOBYTE(STACK[0x4A4E]) = STACK[0xFBC];
  LOBYTE(STACK[0x4A4D]) = STACK[0x1038];
  LOBYTE(STACK[0x4A4C]) = STACK[0x1E9C];
  LOBYTE(STACK[0x4A4B]) = STACK[0xC80];
  LOBYTE(STACK[0x4A4A]) = STACK[0x1EA8];
  LOBYTE(STACK[0x4A49]) = STACK[0x1FC8];
  LOBYTE(STACK[0x4A48]) = STACK[0x104C];
  LOBYTE(STACK[0x4A47]) = STACK[0x105C];
  LOBYTE(STACK[0x4A46]) = STACK[0x30A8];
  LOBYTE(STACK[0x4A45]) = STACK[0x2408];
  LOBYTE(STACK[0x4A44]) = STACK[0x1670];
  LOBYTE(STACK[0x4A43]) = STACK[0x1124];
  LOBYTE(STACK[0x4A42]) = STACK[0xC98];
  LOBYTE(STACK[0x4A41]) = STACK[0x21D4];
  LOBYTE(STACK[0x4A40]) = STACK[0x2718];
  LOBYTE(STACK[0x4A3F]) = STACK[0x1E98];
  LOBYTE(STACK[0x4A3E]) = STACK[0xFB8];
  LOBYTE(STACK[0x4A3D]) = STACK[0xCB8];
  LOBYTE(STACK[0x4A3C]) = STACK[0xFDC];
  LOBYTE(STACK[0x4A3B]) = STACK[0x1054];
  LOBYTE(STACK[0x4A3A]) = STACK[0x176C];
  LOBYTE(STACK[0x4A39]) = STACK[0x1F60];
  LOBYTE(STACK[0x4A38]) = STACK[0xCB4];
  LOBYTE(STACK[0x4A37]) = STACK[0x22F8];
  LOBYTE(STACK[0x4A36]) = STACK[0x1E90];
  LOBYTE(STACK[0x4A35]) = STACK[0x1674];
  LOBYTE(STACK[0x4A34]) = STACK[0xC94];
  LOBYTE(STACK[0x4A33]) = STACK[0xCC8];
  LOBYTE(STACK[0x4A32]) = STACK[0xC8C];
  LOBYTE(STACK[0x4A31]) = STACK[0xFF0];
  LOBYTE(STACK[0x4A30]) = STACK[0x1784];
  LOBYTE(STACK[0x4A2F]) = STACK[0x1040];
  LOBYTE(STACK[0x4A2E]) = STACK[0x29D8];
  LOBYTE(STACK[0x4A2D]) = STACK[0x1770];
  LOBYTE(STACK[0x4A2C]) = STACK[0xCB0];
  LOBYTE(STACK[0x4A2B]) = STACK[0x11DC];
  LOBYTE(STACK[0x4A2A]) = STACK[0x3838];
  LOBYTE(STACK[0x4A29]) = STACK[0xFFC];
  LOBYTE(STACK[0x4A28]) = STACK[0x1058];
  LOBYTE(STACK[0x4A27]) = STACK[0x2410];
  LOBYTE(STACK[0x4A26]) = STACK[0xFF4];
  LOBYTE(STACK[0x4A25]) = STACK[0x1FD4];
  LOBYTE(STACK[0x4A24]) = STACK[0xA88];
  LOBYTE(STACK[0x4A23]) = STACK[0x19B8];
  LOBYTE(STACK[0x4A22]) = STACK[0xFD8];
  LOBYTE(STACK[0x4A21]) = STACK[0x1F58];
  LOBYTE(STACK[0x4A20]) = STACK[0x1FC4];
  LOBYTE(STACK[0x4A1F]) = STACK[0x1820];
  LOBYTE(STACK[0x4A1E]) = STACK[0x3788];
  LOBYTE(STACK[0x4A1D]) = STACK[0xCD8];
  LOBYTE(STACK[0x4A1C]) = STACK[0x1C58];
  LOBYTE(STACK[0x4A1B]) = STACK[0x2110];
  LOBYTE(STACK[0x4A1A]) = STACK[0xFE0];
  LOBYTE(STACK[0x4A19]) = STACK[0xCA4];
  LOBYTE(STACK[0x4A18]) = STACK[0x2680];
  LOBYTE(STACK[0x4A17]) = STACK[0xCA0];
  LOBYTE(STACK[0x4A16]) = STACK[0xFEC];
  LOBYTE(STACK[0x4A15]) = STACK[0xCD0];
  LOBYTE(STACK[0x4A14]) = STACK[0x2378];
  LOBYTE(STACK[0x4A13]) = STACK[0x2770];
  LOBYTE(STACK[0x4A12]) = STACK[0x19C0];
  LOBYTE(STACK[0x4A11]) = STACK[0x2678];
  LOBYTE(STACK[0x4A10]) = STACK[0x1838];
  LOBYTE(STACK[0x4A0F]) = STACK[0x1768];
  LOBYTE(STACK[0x4A0E]) = STACK[0x1000];
  LOBYTE(STACK[0x4A0D]) = STACK[0xCDC];
  LOBYTE(STACK[0x4A0C]) = STACK[0xCC0];
  LOBYTE(STACK[0x4A0B]) = STACK[0x1060];
  LOBYTE(STACK[0x4A0A]) = STACK[0x1158];
  LOBYTE(STACK[0x4A09]) = STACK[0xCD4];
  LOBYTE(STACK[0x4A08]) = STACK[0x1F5C];
  LOBYTE(STACK[0x4A07]) = STACK[0xCAC];
  LOBYTE(STACK[0x4A06]) = STACK[0x106C];
  LOBYTE(STACK[0x4A05]) = STACK[0x11B4];
  LOBYTE(STACK[0x4A04]) = STACK[0x1C80];
  LOBYTE(STACK[0x4A03]) = STACK[0x17FC];
  LOBYTE(STACK[0x4A02]) = STACK[0xFE8];
  LOBYTE(STACK[0x4A01]) = STACK[0x1018];
  LOBYTE(STACK[0x4A00]) = STACK[0x2F50];
  LOBYTE(STACK[0x49FF]) = STACK[0x1068];
  LOBYTE(STACK[0x49FE]) = STACK[0x1738];
  LOBYTE(STACK[0x49FD]) = STACK[0x19C8];
  LOBYTE(STACK[0x49FC]) = STACK[0x2F40];
  LOBYTE(STACK[0x49FB]) = STACK[0x107C];
  LOBYTE(STACK[0x49FA]) = STACK[0x1A58];
  LOBYTE(STACK[0x49F9]) = STACK[0xCE0];
  LOBYTE(STACK[0x49F8]) = STACK[0x1064];
  LOBYTE(STACK[0x49F7]) = STACK[0xCBC];
  LOBYTE(STACK[0x49F6]) = STACK[0x1764];
  LOBYTE(STACK[0x49F5]) = STACK[0x2190];
  LOBYTE(STACK[0x49F4]) = STACK[0x1B28];
  LOBYTE(STACK[0x49F3]) = STACK[0x1098];
  LOBYTE(STACK[0x49F2]) = STACK[0x1EA4];
  LOBYTE(STACK[0x49F1]) = STACK[0x1008];
  LOBYTE(STACK[0x49F0]) = STACK[0xCFC];
  LOBYTE(STACK[0x49EF]) = STACK[0xCC4];
  LOBYTE(STACK[0x49EE]) = STACK[0x2FC8];
  LOBYTE(STACK[0x49ED]) = STACK[0x1078];
  LOBYTE(STACK[0x49EC]) = STACK[0x2128];
  LOBYTE(STACK[0x49EB]) = STACK[0x19D0];
  LOBYTE(STACK[0x49EA]) = STACK[0x1800];
  LOBYTE(STACK[0x49E9]) = STACK[0xCF8];
  LOBYTE(STACK[0x49E8]) = STACK[0xCE8];
  LOBYTE(STACK[0x49E7]) = STACK[0xCE4];
  LOBYTE(STACK[0x49E6]) = STACK[0x1B00];
  LOBYTE(STACK[0x49E5]) = STACK[0xFF8];
  LOBYTE(STACK[0x49E4]) = STACK[0x1070];
  LOBYTE(STACK[0x49E3]) = STACK[0x36C0];
  LOBYTE(STACK[0x49E2]) = STACK[0x19D8];
  LOBYTE(STACK[0x49E1]) = STACK[0x1080];
  LOBYTE(STACK[0x49E0]) = STACK[0x17A4];
  LOBYTE(STACK[0x49DF]) = STACK[0x2D58];
  LOBYTE(STACK[0x49DE]) = STACK[0xCEC];
  LOBYTE(STACK[0x49DD]) = STACK[0xDF4];
  LOBYTE(STACK[0x49DC]) = STACK[0xCCC];
  LOBYTE(STACK[0x49DB]) = STACK[0x3590];
  LOBYTE(STACK[0x49DA]) = STACK[0x1774];
  LOBYTE(STACK[0x49D9]) = STACK[0x24F8];
  LOBYTE(STACK[0x49D8]) = STACK[0xD0C];
  LOBYTE(STACK[0x49D7]) = STACK[0x1E80];
  LOBYTE(STACK[0x49D6]) = STACK[0xD00];
  LOBYTE(STACK[0x49D5]) = STACK[0x2D60];
  LOBYTE(STACK[0x49D4]) = STACK[0x1EAC];
  LOBYTE(STACK[0x49D3]) = STACK[0x1020];
  LOBYTE(STACK[0x49D2]) = STACK[0xCF4];
  LOBYTE(STACK[0x49D1]) = STACK[0x1010];
  LOBYTE(STACK[0x49D0]) = STACK[0xD04];
  LOBYTE(STACK[0x49CF]) = STACK[0x11EC];
  LOBYTE(STACK[0x49CE]) = STACK[0xCF0];
  LOBYTE(STACK[0x49CD]) = STACK[0x2D68];
  LOBYTE(STACK[0x49CC]) = STACK[0x1F6C];
  LOBYTE(STACK[0x49CB]) = STACK[0x1074];
  LOBYTE(STACK[0x49CA]) = STACK[0xD08];
  LOBYTE(STACK[0x49C9]) = STACK[0xDF0];
  LOBYTE(STACK[0x49C8]) = STACK[0x31C0];
  LOBYTE(STACK[0x49C7]) = STACK[0xD10];
  LOBYTE(STACK[0x49C6]) = STACK[0xA8C];
  LOBYTE(STACK[0x49C5]) = STACK[0x2E90];
  LOBYTE(STACK[0x49C4]) = STACK[0x1780];
  STACK[0x49B8] = a4;
  STACK[0x49B0] = STACK[0x11F0];
  STACK[0x49A8] = a3;
  STACK[0x49A0] = STACK[0x3290];
  STACK[0x4998] = STACK[0x2B88];
  STACK[0x4990] = STACK[0x1960];
  STACK[0x4988] = STACK[0x478];
  STACK[0x4980] = STACK[0x920];
  STACK[0x4978] = STACK[0x3760];
  STACK[0x4970] = STACK[0x3860];
  STACK[0x4968] = STACK[0x37A8];
  STACK[0x4960] = STACK[0x36D0];
  STACK[0x4958] = STACK[0x980];
  STACK[0x4950] = STACK[0x3198];
  STACK[0x4948] = STACK[0x1210];
  STACK[0x4940] = STACK[0x10D8];
  STACK[0x4938] = STACK[0x1278];
  STACK[0x4930] = STACK[0x10C0];
  STACK[0x4928] = STACK[0x940];
  STACK[0x4920] = STACK[0x970];
  STACK[0x4918] = STACK[0x488];
  STACK[0x4910] = STACK[0x948];
  STACK[0x4908] = STACK[0x10C8];
  STACK[0x4900] = STACK[0x938];
  STACK[0x48F8] = STACK[0x968];
  STACK[0x48F0] = STACK[0x958];
  STACK[0x48E8] = STACK[0x1280];
  STACK[0x48E0] = STACK[0x10E8];
  STACK[0x48D8] = STACK[0x930];
  STACK[0x48D0] = STACK[0x2A58];
  STACK[0x48C8] = STACK[0x1108];
  STACK[0x48C0] = STACK[0x2A80];
  STACK[0x48B8] = STACK[0x978];
  STACK[0x48B0] = STACK[0x10B8];
  v6 = LOBYTE(STACK[0x4A6B]) ^ LOBYTE(STACK[0x4A43]);
  v7 = LOBYTE(STACK[0x4D71]) ^ LOBYTE(STACK[0x4BF8]);
  STACK[0x48A8] = STACK[0x10D0];
  STACK[0x48A0] = STACK[0x3CF0];
  STACK[0x4898] = STACK[0x3B20];
  STACK[0x4890] = STACK[0x39E8];
  v8 = LOBYTE(STACK[0x4C5F]);
  v9 = LOBYTE(STACK[0x4D1B]) ^ v8;
  v8 ^= 0xFFFFFF99;
  STACK[0x4888] = STACK[0x3998];
  STACK[0x4880] = STACK[0x3D48];
  v10 = LOBYTE(STACK[0x4D1B]);
  v11 = v8 + v10;
  v12 = v10 - v8;
  LOBYTE(STACK[0x4E05]) = v8;
  v13 = LOBYTE(STACK[0x4BD2]);
  v14 = LOBYTE(STACK[0x4CED]) ^ v13;
  v13 ^= 0x1Cu;
  v15 = LOBYTE(STACK[0x4CED]);
  v16 = v13 + v15;
  v17 = v15 - v13;
  LOBYTE(STACK[0x4E06]) = v13;
  v18 = LOBYTE(STACK[0x4A43]) ^ 0xFFFFFF85;
  v19 = LOBYTE(STACK[0x4A6B]);
  v20 = v18 + v19;
  v21 = v18 - v19;
  LOBYTE(STACK[0x4E07]) = v18;
  v22 = LOBYTE(STACK[0x4BF8]) ^ 0x18;
  v23 = LOBYTE(STACK[0x4D71]);
  v24 = v22 + v23;
  v25 = v22 - v23;
  LOBYTE(STACK[0x4E08]) = v22;
  LODWORD(STACK[0x3AD8]) = v6 ^ ((a1 ^ 0x330C) + 5);
  LODWORD(STACK[0x3D40]) = v9 ^ 0xFFFFFF89;
  LODWORD(STACK[0x3CF0]) = v9 ^ 0xFFFFFF99;
  STACK[0x3D68] = LODWORD(STACK[0x1BF0]);
  STACK[0x3D70] = LODWORD(STACK[0x1BF8]);
  STACK[0x3D60] = LODWORD(STACK[0x1C08]);
  STACK[0x3D58] = LODWORD(STACK[0x1C00]);
  LODWORD(STACK[0x3CE8]) = v6 ^ 0xFFFFFF85;
  LODWORD(STACK[0x3AA0]) = v14 ^ 0x1C;
  LODWORD(STACK[0x3D38]) = v14 ^ 0x3A;
  LODWORD(STACK[0x3D10]) = v7 ^ 8;
  LODWORD(STACK[0x3A68]) = v7 ^ 0x18;
  STACK[0x3E40] = STACK[0x2DB0];
  STACK[0x3D90] = STACK[0x2880];
  STACK[0x3D88] = STACK[0x25C8];
  STACK[0x3E18] = STACK[0x2910];
  STACK[0x3D98] = STACK[0x34A0];
  STACK[0x3D80] = STACK[0x29E0];
  STACK[0x3D78] = STACK[0x2A20];
  v26 = STACK[0x2FD0];
  v27 = STACK[0x2D38];
  v28 = *(v5 + 8 * a1);
  LODWORD(STACK[0x3D48]) = v11;
  LODWORD(STACK[0x3A60]) = v11 ^ 0x10;
  LODWORD(STACK[0x3D28]) = v16;
  LODWORD(STACK[0x3D30]) = v16 ^ 0x26;
  LODWORD(STACK[0x3AE8]) = v20;
  LODWORD(STACK[0x3CE0]) = v20 ^ 0x26;
  LODWORD(STACK[0x3AE0]) = v21;
  LODWORD(STACK[0x3B48]) = v21 ^ 0x26;
  LODWORD(STACK[0x3B18]) = v12;
  LODWORD(STACK[0x3B00]) = v12 ^ 0x10;
  LODWORD(STACK[0x3D50]) = v17;
  LODWORD(STACK[0x3A28]) = v17 ^ 0x26;
  LODWORD(STACK[0x3B08]) = v25;
  LODWORD(STACK[0x3AF0]) = v25 ^ 0x10;
  LODWORD(STACK[0x3D20]) = v24;
  LODWORD(STACK[0x3B20]) = v24 ^ 0x10;
  return v28(v27, v26);
}

uint64_t sub_100DF9D44@<X0>(char a1@<W8>)
{
  v4 = v3 ^ (2 * (v3 & STACK[0x3920]));
  v5 = ((*(STACK[0x35E0] + 4 * v3) & STACK[0x3908]) << a1) ^ *(STACK[0x35E0] + 4 * v3);
  LODWORD(v4) = ((((v4 & STACK[0x3E18]) >> STACK[0x3D70]) | (v4 << STACK[0x3D60])) ^ LODWORD(STACK[0x3880]));
  *(STACK[0x3AC0] + 4 * v4) = ((v5 & STACK[0x38F8]) >> STACK[0x3D58]) ^ ((v5 & STACK[0x38C0]) << STACK[0x3D68]) ^ LODWORD(STACK[0x36B0]);
  *(STACK[0x3AD0] + 4 * v4) = *(STACK[0x3738] + v3) ^ LODWORD(STACK[0x3778]);
  return (*(v2 + 8 * (((v3 == 255) * v1) | LODWORD(STACK[0x3E10]))))();
}

uint64_t sub_100DF9E00@<X0>(int a1@<W8>)
{
  v2[298] = v1;
  v5 = v2[32];
  v2[299] = v5;
  return (*(v4 + 8 * (((v1 - v5 > (a1 - 6486) - 1474) * ((a1 - v3 - 662) ^ 0x819F9706)) ^ a1)))();
}

uint64_t sub_100DF9E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52)
{
  *(v55 - 236) = a52 & 0x3BACB795;
  v56 = *(*(v55 - 184) + 8 * (v53 - 4783));
  *(v55 - 252) = v53 ^ 0x6AE5;
  return v56(a1, a2, 1 - (v52 - 15982), a4, a5, a6, v54);
}

uint64_t sub_100DF9F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(v6 + 4);
  *(a5 + 4) = v8 + 1;
  return (*(v7 + 8 * (((v8 == -1) * ((v5 ^ 0x6AF5) - 19711)) ^ v5)))(a1, a2, a3, (a4 + 1));
}

uint64_t sub_100DF9FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = v14 + a4;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((v23 + v12) | ((v13 - 256) | 0x100u) ^ 0xD1BB30ECA0493791) - ((v23 + v12) | a1) + a1;
  v25 = __ROR8__(v24 ^ 0x3E036E7D847D9E3DLL, 8);
  v26 = v24 ^ a2;
  v27 = v21;
  v28 = (v25 + v26 - (a3 & (2 * (v25 + v26))) + a5) ^ v8;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - (a7 & (2 * (v30 + v29))) + v15) ^ v16;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x51FC477E33DE4033;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x224C09CA440C0C0BLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xA199F9AE5F876A45;
  v38 = __ROR8__(v37, 8);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = (v11 - ((v38 + v39) | v11) + ((v38 + v39) | v17)) ^ v18;
  *(a8 + a4) = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ v27) >> (8 * (v22 & 7u))) ^ *v22;
  v41 = a4 - 1981008507 < v9;
  if (v9 < v10 != a4 + 1 > v19)
  {
    v41 = v9 < v10;
  }

  return (*(a6 + 8 * ((v41 * v20) ^ (v13 - 452))))();
}

uint64_t sub_100DFA160@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = STACK[0x3E38];
  v11 = (LODWORD(STACK[0x3E38]) + 988);
  STACK[0x3D60] = v11;
  v12 = 4 * (a4 + v11) - 56140;
  v13 = STACK[0x3E10];
  v14 = *(STACK[0x3E10] + v12);
  v15 = STACK[0x3DB8];
  v16 = *(STACK[0x3DB8] + v12);
  HIDWORD(v18) = v14;
  LODWORD(v18) = v14;
  v17 = v18 >> 12;
  HIDWORD(v18) = v16;
  LODWORD(v18) = v16;
  v19 = v18 >> 11;
  HIDWORD(v18) = v16;
  LODWORD(v18) = v16;
  v20 = v18 >> 13;
  v21 = 4 * a4;
  v22 = 4 * a4 - 60;
  v23 = *(STACK[0x3E10] + v22);
  HIDWORD(v18) = v23;
  LODWORD(v18) = v23;
  v24 = (v18 >> 26) & 0x1FFFFFFF;
  HIDWORD(v18) = v23;
  LODWORD(v18) = v23;
  v25 = v18 >> 28;
  v26 = v25 & 0x1FFFFFFF;
  HIDWORD(v18) = v23;
  LODWORD(v18) = v23;
  v27 = v18 >> 19;
  v28 = v25 ^ v24;
  HIDWORD(v18) = v23;
  LODWORD(v18) = v23;
  v29 = (v18 >> 13) & 0x1FFFFFFF;
  HIDWORD(v18) = v23;
  LODWORD(v18) = v23;
  v30 = v28 ^ v27 & 0x1FFFFFFF ^ v29 ^ (v18 >> 10) & 0x1FFFFFFF;
  v31 = *(STACK[0x3DB8] + v22);
  HIDWORD(v18) = v31;
  LODWORD(v18) = v31;
  LODWORD(v22) = v18 >> 4;
  HIDWORD(v18) = v31;
  LODWORD(v18) = v31;
  v32 = v18 >> 11;
  HIDWORD(v18) = v31;
  LODWORD(v18) = v31;
  v33 = (v16 >> 9) & 0x3FFFFF ^ (v16 >> 7) & 0x3FFFFF ^ (v16 >> 2) & 0x3FFFFF ^ v19 & 0x3FFFFF ^ (v20 ^ __ROR4__(v16, 30) ^ __ROR4__(v16, 18)) & 0x3FFFFF;
  v34 = (v18 >> 23) & 0x1FFFFFFF;
  HIDWORD(v18) = v31;
  LODWORD(v18) = v31;
  v35 = v18 >> 27;
  HIDWORD(v18) = v16;
  LODWORD(v18) = v16;
  LODWORD(v22) = v31 & 0x1FFFFFFF ^ v22 ^ v35 ^ v34 ^ v32 & 0x1FFFFFFF ^ v22 & 0x1FFFFFFF;
  v36 = (v18 >> 22) ^ __ROR4__(v16, 27) ^ __ROR4__(v16, 25) ^ __ROR4__(v16, 14);
  v37 = __PAIR64__(v31, __ROR4__(v16, 5));
  v38 = v36 ^ v37 ^ v19;
  LODWORD(v37) = v31;
  v39 = (v37 >> 8) ^ __ROR4__(v31, 31) ^ __ROR4__(v31, 21) ^ __ROR4__(v31, 26) ^ __ROR4__(v31, 19);
  v41 = __PAIR64__(v31, __ROR4__(v31, 17));
  v40 = v39 ^ v41;
  LODWORD(v41) = v31;
  v42 = v22 ^ (v31 >> 2) & 0x1FFFFFFF ^ v35 & 0x1FFFFFFF ^ (v41 >> 6) & 0x1FFFFFFF;
  v43 = v38 ^ __ROR4__(v16, 7);
  v45 = __PAIR64__(v14, __ROR4__(v23, 14));
  v44 = v23 ^ __ROR4__(v23, 9) ^ __ROR4__(v23, 25) ^ __ROR4__(v23, 11) ^ __ROR4__(v23, 2) ^ __ROR4__(v23, 23) ^ __ROR4__(v23, 30) ^ __ROR4__(v23, 17) ^ v45;
  v46 = v40 ^ v42;
  LODWORD(v45) = v14;
  v47 = v45 >> 3;
  HIDWORD(v45) = v14;
  LODWORD(v45) = v14;
  LODWORD(v22) = v45 >> 20;
  v49 = __PAIR64__(v14, __ROR4__(v16, 9));
  v48 = v43 ^ v49;
  LODWORD(v49) = v14;
  v50 = v49 >> 26;
  v51 = v44 ^ v30 ^ v26;
  v52 = __PAIR64__(v14, __ROR4__(v14, 8));
  v53 = v17 ^ __ROR4__(v14, 29) ^ __ROR4__(v14, 24) ^ __ROR4__(v14, 27) ^ v52 ^ v47 ^ v50;
  LODWORD(v52) = v14;
  v54 = v48 ^ v33;
  v55 = v53 ^ __ROR4__(v14, 1) ^ v22 & 0x3FFFFF ^ (v52 >> 17) & 0x3FFFFF ^ v47 & 0x3FFFFF ^ (v14 >> 1) & 0x3FFFFF ^ v50 & 0x3FFFFF;
  v56 = (v8 ^ v7 ^ v46 ^ v51) - (v8 ^ v7 ^ v46);
  v57 = v51 ^ a3;
  LODWORD(v22) = (v51 ^ a1) - a1;
  v58 = (a2 + v7) ^ (v8 - v9);
  v59 = a1 - v4;
  v60 = a3 + v5;
  v61 = v57 - a3;
  v62 = v60 ^ v59;
  v63 = (v8 - v9) ^ 0xD59B899F;
  v64 = v22 ^ v61;
  LODWORD(v22) = v9 - 1879046634 + v63;
  v59 ^= 0xD59B899F;
  v65 = v64 ^ v56;
  v66 = v4 - 1879046634 + v59;
  v67 = (v58 - 141414051) ^ v22;
  v68 = 4 * a4 - 28;
  v69 = (v62 - 141414051) ^ v66;
  v70 = v22 - v4 + *(STACK[0x3DC8] + v68);
  v71 = 4 * a4 - 64;
  v72 = (((v54 ^ v62) - v62) ^ ((v54 ^ (a2 + v7) ^ 0xD59B899F ^ v55) - ((a2 + v7) ^ 0xD59B899F ^ v55)) ^ ((v59 ^ v54) - v59)) - v66;
  v73 = STACK[0x3E20];
  v74 = v70 + *(STACK[0x3DC8] + v71) + v55 + v65;
  LODWORD(v71) = *(v73 + v71) + v9 + *(v73 + v68);
  v75 = v58 ^ ((a2 ^ 0x69348240) - 593105751);
  v76 = v62 ^ ((v5 ^ 0x69348240) - 593105751);
  v77 = v63 - v75 - 957929186;
  v78 = v59 - v76;
  *(STACK[0x3DC8] + v21) = v74;
  v79 = v69 ^ v76;
  v78 -= 957929186;
  v80 = v71 + v46 + v72;
  *(v73 + v21) = v80;
  v81 = -v80;
  v82 = v81 ^ (v67 - v77) ^ v74;
  v83 = v74 ^ v67 ^ v75;
  HIDWORD(v52) = ((v83 ^ v81) - v79) ^ v78 ^ (v82 - (v69 - v78));
  LODWORD(v52) = HIDWORD(v52);
  v84 = ((v83 ^ (v67 - v77)) - ((v69 - v78) ^ v79 ^ v81)) ^ v77;
  *(v15 + v21) = (v52 >> 31) ^ __ROR4__(HIDWORD(v52), 29) ^ __ROR4__(HIDWORD(v52), 26) ^ __ROR4__(HIDWORD(v52), 25) ^ __ROR4__(HIDWORD(v52), 24) ^ __ROR4__(HIDWORD(v52), 23) ^ __ROR4__(HIDWORD(v52), 22) ^ __ROR4__(HIDWORD(v52), 19) ^ __ROR4__(HIDWORD(v52), 18) ^ __ROR4__(HIDWORD(v52), 17) ^ __ROR4__(HIDWORD(v52), 15) ^ __ROR4__(HIDWORD(v52), 14) ^ __ROR4__(HIDWORD(v52), 13) ^ __ROR4__(HIDWORD(v52), 12) ^ __ROR4__(HIDWORD(v52), 11) ^ __ROR4__(HIDWORD(v52), 8) ^ __ROR4__(HIDWORD(v52), 5) ^ __ROR4__(HIDWORD(v52), 3) ^ __ROR4__(HIDWORD(v52), 1);
  v86 = __PAIR64__(v84, __ROR4__(v84, 8));
  v85 = v84 ^ __ROR4__(v84, 25) ^ __ROR4__(v84, 24) ^ __ROR4__(v84, 22) ^ __ROR4__(v84, 21) ^ __ROR4__(v84, 19) ^ __ROR4__(v84, 16) ^ __ROR4__(v84, 18) ^ __ROR4__(v84, 13) ^ __ROR4__(v84, 12) ^ __ROR4__(v84, 11) ^ __ROR4__(v84, 10) ^ __ROR4__(v84, 9) ^ v86;
  LODWORD(v86) = v84;
  v87 = v85 ^ __ROR4__(v84, 7);
  LODWORD(STACK[0x3CE0]) = v87;
  *(v13 + v21) = (v86 >> 6) ^ __ROR4__(v84, 5) ^ __ROR4__(v84, 2) ^ __ROR4__(v84, 1) ^ v87;
  return (*(v6 + 8 * ((469 * (a4 != 63)) ^ v10)))();
}

uint64_t sub_100DFA5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49)
{
  LODWORD(STACK[0x2B0]) = *(v50 - 224) ^ ~(a44 & STACK[0x358]);
  *(v50 - 200) = 1076116647 * LODWORD(STACK[0x2B8]);
  LODWORD(STACK[0x2C4]) += LODWORD(STACK[0x2A4]) + a46 + 1;
  LODWORD(STACK[0x2B8]) = 16 * LODWORD(STACK[0x354]);
  LODWORD(STACK[0x2A8]) = a45 + LODWORD(STACK[0x298]);
  v51 = a43 + *(v50 - 208);
  LODWORD(STACK[0x298]) = a42 ^ 0x5F439F3C;
  LODWORD(STACK[0x2C0]) = a49 + (*(v50 - 244) ^ LODWORD(STACK[0x35C]) ^ v51 ^ 0xE2882584);
  LODWORD(STACK[0x218]) = a48 ^ 0x7D7D7D7D;
  return (*(*(v50 - 184) + 8 * v49))(a1, a2, 0xF4CA5B258704748CLL, a4, 727815627, a6, 0x36A04ACBB5F58E70);
}

uint64_t sub_100DFA9E8@<X0>(int a1@<W8>)
{
  v4 = STACK[0x3B38];
  v4[2050] = BYTE2(v2);
  v4[2049] = v2 >> (a1 - 19);
  v4[2052] = v2;
  v4[2051] = BYTE1(v2);
  return (*(v3 + 8 * ((4661 * (LODWORD(STACK[0x3E18]) > v1)) ^ a1)))();
}

uint64_t sub_100DFAAB4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, unsigned int a8@<W8>)
{
  LODWORD(STACK[0xB54]) ^= v13;
  LODWORD(STACK[0x11A0]) ^= HIWORD(a8);
  LODWORD(STACK[0x19B8]) ^= LODWORD(STACK[0x3D38]);
  LODWORD(STACK[0xA50]) ^= v24;
  LODWORD(STACK[0xB80]) ^= LODWORD(STACK[0x3808]);
  LODWORD(STACK[0xA70]) ^= v11;
  LODWORD(STACK[0xC58]) ^= a7;
  LODWORD(STACK[0x11B0]) ^= LODWORD(STACK[0x3D70]);
  LODWORD(STACK[0xCD4]) ^= a5;
  LODWORD(STACK[0x9C4]) ^= LODWORD(STACK[0x3D30]);
  LODWORD(STACK[0xC18]) ^= v17;
  LODWORD(STACK[0x9D4]) ^= LODWORD(STACK[0x3D28]);
  LODWORD(STACK[0xA30]) ^= v21;
  LODWORD(STACK[0xCEC]) ^= a2;
  LODWORD(STACK[0xB1C]) ^= a1;
  LODWORD(STACK[0xAB8]) ^= v14;
  LODWORD(STACK[0xC68]) ^= LODWORD(STACK[0x3D20]);
  LODWORD(STACK[0xB34]) ^= LODWORD(STACK[0x3CF0]);
  LODWORD(STACK[0x19C0]) ^= LODWORD(STACK[0x3D68]);
  LODWORD(STACK[0xADC]) ^= a4;
  LODWORD(STACK[0xC6C]) ^= LODWORD(STACK[0x32D8]);
  LODWORD(STACK[0xA00]) ^= v19;
  LODWORD(STACK[0xABC]) ^= LODWORD(STACK[0x32D0]);
  LODWORD(STACK[0xCF4]) ^= LODWORD(STACK[0x32C8]);
  LODWORD(STACK[0xA34]) ^= v22;
  LODWORD(STACK[0xB5C]) ^= LODWORD(STACK[0x32B8]);
  LODWORD(STACK[0xC98]) ^= v10;
  LODWORD(STACK[0xA28]) ^= v16;
  LODWORD(STACK[0xB44]) ^= LODWORD(STACK[0x32C0]);
  LODWORD(STACK[0xAC4]) ^= v9;
  LODWORD(STACK[0xB78]) ^= v20;
  LODWORD(STACK[0xA24]) ^= a3;
  LODWORD(STACK[0xAF8]) ^= LODWORD(STACK[0x32E8]);
  LODWORD(STACK[0xCE0]) ^= LODWORD(STACK[0x3CE8]);
  LODWORD(STACK[0x9D8]) ^= v23;
  LODWORD(STACK[0x9FC]) ^= LODWORD(STACK[0x35AC]);
  LODWORD(STACK[0xB28]) ^= v12;
  LODWORD(STACK[0x9C0]) ^= LODWORD(STACK[0x32E0]);
  LODWORD(STACK[0x11A4]) ^= LODWORD(STACK[0x3B20]);
  LODWORD(STACK[0xBA0]) ^= LODWORD(STACK[0x3438]);
  LODWORD(STACK[0xAF4]) ^= LODWORD(STACK[0x36A0]);
  LODWORD(STACK[0xBBC]) ^= LODWORD(STACK[0x3550]);
  LODWORD(STACK[0xC4C]) ^= v18;
  LODWORD(STACK[0x1B08]) ^= LODWORD(STACK[0x3D60]);
  LODWORD(STACK[0xCB0]) ^= LODWORD(STACK[0x3688]);
  LODWORD(STACK[0x9E0]) ^= a6;
  LODWORD(STACK[0xBE0]) ^= LODWORD(STACK[0x35FC]);
  LODWORD(STACK[0xB24]) ^= LODWORD(STACK[0x33C0]);
  LODWORD(STACK[0xAA8]) ^= LODWORD(STACK[0x3CC8]);
  LODWORD(STACK[0xBAC]) ^= v8;
  LODWORD(STACK[0xA8C]) ^= LODWORD(STACK[0x3760]);
  LODWORD(STACK[0xAEC]) ^= LODWORD(STACK[0x3B00]);
  LODWORD(STACK[0x9AC]) ^= LODWORD(STACK[0x37A8]);
  LODWORD(STACK[0x9B0]) ^= LODWORD(STACK[0x35F8]);
  LODWORD(STACK[0xAA0]) ^= LODWORD(STACK[0x3750]);
  LODWORD(STACK[0xAB0]) ^= LODWORD(STACK[0x3700]);
  LODWORD(STACK[0xB14]) ^= LODWORD(STACK[0x3800]);
  LODWORD(STACK[0xBE8]) ^= LODWORD(STACK[0x36B8]);
  LODWORD(STACK[0x108C]) ^= LODWORD(STACK[0x3D90]);
  LODWORD(STACK[0xA2C]) ^= LODWORD(STACK[0x3780]);
  LODWORD(STACK[0xC04]) ^= LODWORD(STACK[0x3878]);
  v25 = STACK[0x3D18];
  v26 = *(STACK[0x3D18] + 87);
  LODWORD(STACK[0xC3C]) ^= LODWORD(STACK[0x3970]);
  v27 = v25[90];
  LODWORD(STACK[0x9DC]) ^= LODWORD(STACK[0x3940]);
  v28 = v25[91];
  LODWORD(STACK[0x19AC]) ^= LODWORD(STACK[0x3D58]);
  v29 = v25[88];
  LODWORD(STACK[0xBC4]) ^= LODWORD(STACK[0x3988]);
  v30 = v25[92];
  LODWORD(STACK[0xA98]) ^= LODWORD(STACK[0x39A0]);
  v31 = v25[93];
  LODWORD(STACK[0xCF0]) ^= LODWORD(STACK[0x39A8]);
  v32 = v25[96];
  LODWORD(STACK[0x9A8]) ^= LODWORD(STACK[0x3980]);
  v33 = v25[94];
  LODWORD(STACK[0x19C8]) ^= LODWORD(STACK[0x3D50]);
  v34 = v25[95];
  LODWORD(STACK[0x9E4]) ^= LODWORD(STACK[0x3990]);
  v35 = v25[98];
  LODWORD(STACK[0xB94]) ^= LODWORD(STACK[0x3998]);
  v36 = v25[97];
  LODWORD(STACK[0xB58]) ^= LODWORD(STACK[0x39E8]);
  v37 = v25[100];
  LODWORD(STACK[0xC50]) ^= LODWORD(STACK[0x39B0]);
  v38 = STACK[0x3D40];
  LODWORD(STACK[0xCE4]) ^= BYTE1(LODWORD(STACK[0x3D40]));
  v39 = v25[99];
  LODWORD(STACK[0xC94]) ^= LODWORD(STACK[0x3AF0]);
  v40 = LODWORD(STACK[0x3D48]) + 3581;
  LODWORD(STACK[0xC40]) ^= LODWORD(STACK[0x39E0]);
  LODWORD(STACK[0x9E8]) ^= BYTE2(v38);
  LODWORD(STACK[0x3D50]) = v40;
  v41 = v38 >> (v40 ^ 0x83);
  LODWORD(STACK[0x9D0]) ^= LODWORD(STACK[0x3B08]);
  LODWORD(STACK[0xCC0]) ^= v38;
  LODWORD(STACK[0xCE8]) ^= v41;
  v42 = v25[101];
  LODWORD(STACK[0xCD0]) ^= LODWORD(STACK[0x3AF8]);
  v43 = v25[102];
  LODWORD(STACK[0xA38]) ^= LODWORD(STACK[0x3B18]);
  v44 = v25[103];
  LODWORD(STACK[0xBB4]) ^= LODWORD(STACK[0x3AD8]);
  v45 = v25[110];
  LODWORD(STACK[0xB50]) ^= LODWORD(STACK[0x3AE0]);
  v46 = v25[104];
  LODWORD(STACK[0xA3C]) ^= LODWORD(STACK[0x3AE8]);
  v47 = v25[108];
  LODWORD(STACK[0xA48]) ^= v27;
  v48 = v25[116];
  LODWORD(STACK[0xB30]) ^= v26;
  v49 = v25[106];
  LODWORD(STACK[0xA40]) ^= v28;
  v50 = v25[105];
  LODWORD(STACK[0xC78]) ^= v29;
  v51 = v25[107];
  LODWORD(STACK[0xC44]) ^= v30;
  v52 = v25[109];
  LODWORD(STACK[0xCB4]) ^= v32;
  v53 = v25[113];
  LODWORD(STACK[0xD04]) ^= v31;
  v54 = v25[111];
  LODWORD(STACK[0x1A64]) ^= v33;
  v55 = v25[114];
  LODWORD(STACK[0xA54]) ^= v37;
  v56 = v25[112];
  LODWORD(STACK[0xB70]) ^= v36;
  v57 = v25[115];
  LODWORD(STACK[0xC08]) ^= v39;
  v58 = v25[119];
  LODWORD(STACK[0x9F8]) ^= v42;
  v59 = v25[117];
  LODWORD(STACK[0xAD8]) ^= v35;
  v60 = v25[118];
  LODWORD(STACK[0xD00]) ^= v43;
  v61 = v25[124];
  LODWORD(STACK[0xAE0]) ^= v44;
  v62 = v25[121];
  LODWORD(STACK[0xB2C]) ^= v46;
  v63 = v25[120];
  LODWORD(STACK[0xB08]) ^= v49;
  v64 = v25[123];
  LODWORD(STACK[0xC88]) ^= v34;
  v65 = v25[126];
  LODWORD(STACK[0xC0C]) ^= v51;
  v66 = v25[122];
  LODWORD(STACK[0xD08]) ^= v47;
  v67 = v25[125];
  LODWORD(STACK[0xA44]) ^= v48;
  v68 = v25[127];
  LODWORD(STACK[0xCDC]) ^= v50;
  v69 = v25[130];
  LODWORD(STACK[0xB88]) ^= v52;
  v70 = v25[128];
  LODWORD(STACK[0xBCC]) ^= v54;
  v71 = v25[131];
  LODWORD(STACK[0x1088]) ^= v55;
  v72 = v25[132];
  LODWORD(STACK[0xB7C]) ^= v45;
  v73 = v25[133];
  LODWORD(STACK[0xC64]) ^= v56;
  v74 = v25[134];
  LODWORD(STACK[0xA84]) ^= v53;
  v75 = v25[129];
  LODWORD(STACK[0xA4C]) ^= v57;
  v76 = v25[135];
  LODWORD(STACK[0xCB8]) ^= v58;
  v77 = v25[136];
  LODWORD(STACK[0x1B18]) ^= v59;
  v78 = v25[138];
  LODWORD(STACK[0xBE4]) ^= v62;
  v79 = v25[139];
  LODWORD(STACK[0x9EC]) ^= v60;
  v80 = v25[140];
  LODWORD(STACK[0xC74]) ^= v61;
  v81 = v25[145];
  LODWORD(STACK[0xBF8]) ^= v63;
  v82 = v25[141];
  LODWORD(STACK[0x9F4]) ^= v66;
  v83 = v25[137];
  LODWORD(STACK[0xC90]) ^= v64;
  v84 = v25[142];
  LODWORD(STACK[0x19B0]) ^= v67;
  v85 = v25[143];
  LODWORD(STACK[0x19D0]) ^= v68;
  v86 = v25[144];
  LODWORD(STACK[0xB90]) ^= v69;
  v87 = v25[146];
  LODWORD(STACK[0xC1C]) ^= v65;
  v88 = v25[148];
  LODWORD(STACK[0x1198]) ^= v71;
  v89 = v25[149];
  LODWORD(STACK[0xD10]) ^= v70;
  v90 = v25[147];
  LODWORD(STACK[0x1B28]) ^= v73;
  v91 = v25[150];
  LODWORD(STACK[0xA60]) ^= v74;
  v92 = v25[151];
  LODWORD(STACK[0xB84]) ^= v72;
  v93 = v25[152];
  LODWORD(STACK[0xA74]) ^= v75;
  v94 = v25[153];
  LODWORD(STACK[0xB74]) ^= v76;
  v95 = v25[154];
  LODWORD(STACK[0x9F0]) ^= v77;
  v96 = v25[155];
  LODWORD(STACK[0xA04]) ^= v78;
  v97 = v25[156];
  LODWORD(STACK[0x11A8]) ^= v79;
  v98 = v25[157];
  LODWORD(STACK[0xA08]) ^= v80;
  v99 = v25[159];
  LODWORD(STACK[0x11AC]) ^= v83;
  v100 = v25[158];
  LODWORD(STACK[0x9C8]) ^= v82;
  v101 = v25[160];
  LODWORD(STACK[0xAF0]) ^= v84;
  v102 = v25[162];
  LODWORD(STACK[0xCF8]) ^= v85;
  v103 = v25[161];
  v104 = LODWORD(STACK[0x3D90]) >> 8;
  LODWORD(STACK[0xC70]) ^= v86;
  v105 = v25[163];
  v106 = LODWORD(STACK[0x3D48]) - 14906;
  LODWORD(STACK[0xC9C]) ^= v88;
  v107 = v25[170];
  LODWORD(STACK[0xC20]) ^= v89;
  LODWORD(STACK[0xA0C]) ^= v87;
  v108 = v25[164];
  LODWORD(STACK[0xBA4]) ^= v90;
  v109 = v25[167];
  LODWORD(STACK[0xA78]) ^= v81;
  LODWORD(STACK[0xBFC]) ^= v91;
  v110 = v25[165];
  LODWORD(STACK[0xBEC]) ^= v92;
  v111 = v25[171];
  v112 = STACK[0xB00];
  STACK[0x3750] = v104;
  LODWORD(STACK[0xB00]) = v104 ^ v112;
  LODWORD(STACK[0xB8C]) ^= v93;
  v113 = v25[172];
  LODWORD(STACK[0xAE8]) ^= v94;
  LODWORD(STACK[0xCD8]) ^= v95;
  v114 = v25[168];
  LODWORD(STACK[0xA5C]) ^= v96;
  LODWORD(STACK[0x1FF0]) ^= v97;
  v115 = v25[166];
  LODWORD(STACK[0xBF0]) ^= v99;
  LODWORD(STACK[0xB3C]) ^= v100;
  v116 = v25[169];
  LODWORD(STACK[0x9B8]) ^= v98;
  LODWORD(STACK[0xC5C]) ^= v101;
  v117 = v25[174];
  LODWORD(STACK[0xA7C]) ^= v102;
  LODWORD(STACK[0xA64]) ^= v105;
  v118 = v25[173];
  LODWORD(STACK[0x19D8]) ^= v103;
  LODWORD(STACK[0xC7C]) ^= v108;
  v119 = v25[176];
  LODWORD(STACK[0xA58]) ^= v109;
  LODWORD(STACK[0xC84]) ^= v111;
  v120 = v25[179];
  LODWORD(STACK[0xD0C]) ^= v110;
  LODWORD(STACK[0xB18]) ^= v113;
  v121 = v25[177];
  LODWORD(STACK[0xCC8]) ^= v115;
  LODWORD(STACK[0xBDC]) ^= v116;
  v122 = v25[183];
  LODWORD(STACK[0xA80]) ^= v117;
  LODWORD(STACK[0xBF4]) ^= v118;
  v123 = v25[181];
  LODWORD(STACK[0x1978]) ^= v107;
  LODWORD(STACK[0xCFC]) ^= v119;
  v124 = v25[180];
  LODWORD(STACK[0xC60]) ^= v114;
  LODWORD(STACK[0xBD8]) ^= v121;
  v125 = v25[182];
  LODWORD(STACK[0xCA8]) ^= v124;
  v126 = v25[178];
  LODWORD(STACK[0xBB0]) ^= v25[175];
  LODWORD(STACK[0xA10]) ^= v120;
  LODWORD(STACK[0x9BC]) ^= v126;
  LODWORD(STACK[0xC48]) ^= v125;
  v127 = v25[186];
  LODWORD(STACK[0xAC8]) ^= v25[184];
  LODWORD(STACK[0x10A4]) ^= v123;
  v128 = v25[185];
  LODWORD(STACK[0x1988]) ^= v122;
  LODWORD(STACK[0xB6C]) ^= v128;
  LODWORD(STACK[0x11B4]) ^= LODWORD(STACK[0x3D78]) >> 8;
  v129 = v25[187];
  LODWORD(STACK[0x1B20]) ^= HIBYTE(LODWORD(STACK[0x3D88]));
  v130 = v25[188];
  LODWORD(STACK[0xCA4]) ^= v25[190];
  LODWORD(STACK[0xC2C]) ^= v129;
  v131 = v25[191];
  LODWORD(STACK[0xB48]) ^= v127;
  v132 = v25[192];
  v133 = v25[189];
  LODWORD(STACK[0xB68]) ^= v131;
  LODWORD(STACK[0xB10]) ^= v132;
  v134 = v25[194];
  LODWORD(STACK[0xB60]) ^= v130;
  v135 = v25[193];
  v136 = v25[195];
  LODWORD(STACK[0xB64]) ^= v134;
  v137 = STACK[0xC00];
  STACK[0x3800] = v133;
  LODWORD(STACK[0xC00]) = v133 ^ v137;
  LODWORD(STACK[0xAFC]) ^= v136;
  v138 = v25[196];
  LODWORD(STACK[0xA20]) ^= v135;
  v139 = v25[197];
  v140 = v25[202];
  LODWORD(STACK[0x9CC]) ^= v25[198];
  v141 = v25[201];
  LODWORD(v133) = v25[199];
  LODWORD(STACK[0xD14]) ^= v140;
  LODWORD(STACK[0xBC0]) ^= v133;
  LODWORD(STACK[0xCBC]) ^= v138;
  v142 = v25[200];
  LODWORD(STACK[0xBB8]) ^= v139;
  LODWORD(STACK[0xCA0]) ^= v142;
  LODWORD(STACK[0x1190]) ^= v25[203];
  v143 = v25[209];
  LODWORD(STACK[0xC30]) ^= v141;
  LODWORD(STACK[0x1194]) ^= v25[205];
  v144 = v25[207];
  LODWORD(STACK[0xB4C]) ^= v25[211];
  LODWORD(STACK[0x9B4]) ^= v25[204];
  v145 = v25[213];
  LODWORD(STACK[0xA6C]) ^= v25[206];
  v146 = v25[210];
  LODWORD(STACK[0xAB4]) ^= v144;
  v147 = v25[208];
  LODWORD(STACK[0xA18]) ^= v145;
  LODWORD(STACK[0xC80]) ^= v147;
  LODWORD(STACK[0xC8C]) ^= v143;
  v148 = STACK[0xB38];
  STACK[0x3878] = v146;
  LODWORD(STACK[0xB38]) = v146 ^ v148;
  LODWORD(STACK[0xACC]) ^= v25[212];
  LODWORD(STACK[0xB0C]) ^= v25[214];
  v149 = v25[216];
  LODWORD(STACK[0xBD0]) ^= v25[215];
  LODWORD(STACK[0xA90]) ^= v25[217];
  LODWORD(STACK[0xC34]) ^= v25[218];
  LODWORD(STACK[0xB40]) ^= v25[219];
  LODWORD(STACK[0xCC4]) ^= v25[220];
  LODWORD(STACK[0xAA4]) ^= v25[221];
  LODWORD(STACK[0xB98]) ^= v25[222];
  v150 = v25[223];
  LODWORD(STACK[0x1970]) ^= v149;
  LODWORD(STACK[0xCAC]) ^= v150;
  v151 = v25[229];
  LODWORD(STACK[0xA1C]) ^= v25[224];
  LODWORD(STACK[0xBC8]) ^= v25[225];
  v152 = v25[230];
  v153 = v25[226];
  LODWORD(STACK[0xB9C]) ^= v151;
  LODWORD(STACK[0xAAC]) ^= v153;
  v154 = v25[236];
  v155 = v25[231];
  LODWORD(STACK[0x9A4]) ^= v25[227];
  LODWORD(STACK[0xB20]) ^= v25[228];
  LODWORD(STACK[0xA88]) ^= v25[232];
  LODWORD(STACK[0x19A0]) ^= v152;
  LODWORD(STACK[0xAD4]) ^= v25[233];
  v156 = v25[234];
  v157 = STACK[0xA68];
  STACK[0x3940] = v155;
  LODWORD(STACK[0xA68]) = v155 ^ v157;
  LODWORD(STACK[0xB04]) ^= v156;
  LODWORD(STACK[0xC10]) ^= v25[238];
  v158 = v25[240];
  LODWORD(STACK[0x119C]) ^= v25[235];
  v159 = STACK[0x1B10];
  STACK[0x3808] = v154;
  LODWORD(STACK[0x1B10]) = v154 ^ v159;
  v160 = v25[237];
  LODWORD(STACK[0xA9C]) ^= v158;
  LODWORD(STACK[0xBA8]) ^= v160;
  v161 = v25[241];
  LODWORD(STACK[0xBD4]) ^= v25[239];
  v162 = v25[247];
  LODWORD(STACK[0xCCC]) ^= v25[242];
  v163 = v25[246];
  v164 = v25[244];
  LODWORD(v155) = v25[245];
  LODWORD(STACK[0x1998]) ^= v161;
  LODWORD(STACK[0xAC0]) ^= v163;
  LODWORD(STACK[0xC54]) ^= v164;
  LODWORD(STACK[0xC24]) ^= v25[243];
  LODWORD(STACK[0x118C]) ^= v155;
  v165 = v25[251];
  v166 = v25[248];
  LODWORD(STACK[0xC38]) ^= v25[249];
  v167 = v25[250];
  LODWORD(STACK[0xA94]) ^= v165;
  v168 = v25[252];
  LODWORD(v155) = STACK[0xAD0];
  LODWORD(STACK[0x3550]) = v162;
  LODWORD(STACK[0xAD0]) = v162 ^ v155;
  LODWORD(STACK[0xAE4]) ^= v167;
  LODWORD(STACK[0xC14]) ^= v168;
  LODWORD(STACK[0x1980]) ^= v166;
  LODWORD(STACK[0xC28]) ^= v25[253];
  v169 = v25[255];
  v170 = STACK[0xA14];
  STACK[0x37A8] = v169;
  LODWORD(STACK[0xA14]) = v169 ^ v170;
  LODWORD(STACK[0x1994]) ^= v25[254];
  LODWORD(STACK[0x3688]) = 14;
  v25[2] = BYTE1(v38);
  LODWORD(STACK[0x3B00]) = 7;
  *v25 = v41;
  v25[1] = BYTE2(v38);
  v25[3] = v38;
  v171 = *(v15 + 8 * v106);
  STACK[0x3D80] = STACK[0x1100];
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  LODWORD(STACK[0x32E8]) = STACK[0x1C28];
  LODWORD(STACK[0x2B70]) = STACK[0x3E18];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x32D8]) = STACK[0x1C90];
  return v171();
}

uint64_t sub_100DFBB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *STACK[0x450] = v7;
  STACK[0x1310] = (v8 + 14350) + STACK[0x1310] - 14367 + v9;
  return (*(v10 + 8 * ((1697 * (*(*(&off_101353600 + v8 + 1206) - 1) == -17958193)) ^ (v8 | 0x335C))))(a1, a2, a3, a4, a5, a6, a7, 2120236533);
}

uint64_t sub_100DFBCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v59 = *(STACK[0x5E0] + 260) & 1;
  v60 = 1534937323 * ((a55 - ((v58 - 240) | 0x352BA5ED3F4B71DFLL) + 0x352BA5ED3F4B71DFLL) ^ 0x7ACD2D0065A7567);
  *(v58 - 224) = v60;
  *(v58 - 220) = (v55 - 14111584) ^ v60;
  *(v58 - 240) = v59 ^ v60;
  *(v58 - 216) = v60;
  *(v58 - 208) = ((v55 - 14111584) ^ 0x4C) + v60;
  *(v58 - 232) = ((v55 - 14111584) ^ 0x1073) - v60;
  *(v58 - 228) = v60 + v55 - 1632379223;
  v61 = (*(v57 + 8 * (v55 ^ v56)))(v58 - 240);
  return (*(v57 + 8 * *(v58 - 204)))(v61);
}

uint64_t sub_100DFBD68@<X0>(void *a1@<X3>, int a2@<W8>)
{
  a1[408] = *(v4 + 8 * v2);
  a1[416] = v3;
  v5 = a1[424];
  v6 = &STACK[0x2280] + v5;
  a1[82] = &STACK[0x2280] + v5;
  *(&STACK[0x2280] + v5 + 32) = 0xF5A5064B3D610419;
  a1[424] = (a2 ^ 0x2231u) + v5 - 8456;
  *(v6 + 5) = 0x1753068AC93073DBLL;
  *(v6 + 12) = 798430673;
  return (*(v4 + 8 * (a2 ^ 0x3468)))();
}

uint64_t sub_100DFBE10(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v17 = (v8 ^ v15) - v8;
  v18 = v10 ^ a2 ^ a7;
  v19 = v13 ^ v15;
  v20 = v18 ^ v15;
  v21 = a7 + v12;
  v22 = v10 - v12;
  v23 = a2 - v22;
  v24 = v23 ^ v12;
  v25 = v8 - v9;
  v26 = v20 - v18;
  v27 = v24 ^ v22;
  v28 = a5 - v24 + (v24 ^ v22);
  v29 = (v26 ^ (v19 - v13) ^ v17) - v9;
  v30 = (v13 - v25) ^ v9;
  v31 = v14 - v30;
  v32 = v28 ^ v22;
  v33 = 3 * v29;
  v34 = v28 ^ v23;
  v35 = v30 ^ v25;
  v36 = v31 + v35;
  v21 *= 3;
  v37 = v36 ^ (v13 - v25);
  v38 = (v21 + 1);
  v39 = v21 == -1;
  v40 = v33 >= ~v21;
  v41 = v36 ^ v25;
  if (!v40)
  {
    v39 = 1;
  }

  v42 = v36 ^ v35;
  v43 = v28 ^ v27;
  v44 = v36 - v41;
  v45 = v28 - v32 - 1540410127;
  v46 = v37 - v42;
  v47 = v34 - v43;
  v48 = v32 + 2 * v43;
  v49 = v41 + 2 * v42;
  v50 = v44 - 1540410127;
  v51 = (v49 ^ v46) + v42;
  v52 = (v48 ^ v47) + v43;
  if (v39)
  {
    v53 = a3;
  }

  else
  {
    v53 = 475588671;
  }

  v54 = v51 + v50;
  v55 = v48 ^ v47 ^ v7;
  v56 = v52 + v45;
  v57 = v52 ^ v55;
  v58 = v57 + v55;
  v59 = (v57 + 644547396);
  v60 = v49 ^ v46 ^ v7;
  v61 = v59 + (v47 ^ v7);
  v62 = v51 ^ v60;
  v63 = (v56 - v61);
  v64 = (v62 + 644547396);
  v65 = v64 + (v46 ^ v7);
  v66 = (v54 - v65);
  v67 = 0x547B86F0DLL * v38;
  v68 = -627435249 * v67;
  v69 = 185981188 * v67;
  v70 = v64 ^ v66 ^ v68;
  v71 = ((v63 ^ v69 ^ v68) - v66) ^ ((v59 ^ v69 ^ v68) - v64);
  LODWORD(v64) = v66 + v64;
  v72 = (v59 ^ v69 ^ v63) - v70;
  LODWORD(v59) = v63 + v59;
  v73 = v66 ^ v65;
  v74 = v63 ^ v61;
  v75 = (v63 - 1118952453);
  v76 = -627435249 * HIDWORD(v67);
  v77 = v73 ^ (v62 + v60) ^ v64;
  v78 = v71 ^ v72;
  v79 = (v64 + 392366821);
  LODWORD(v66) = v66 - 1118952453;
  LODWORD(v69) = v59 ^ v58 ^ v74;
  v80 = (v59 + 392366821);
  v81 = v73 + v66;
  v82 = 185981188 * HIDWORD(v67);
  LODWORD(v71) = v74 + v75;
  v83 = (v82 ^ v76 ^ v80) - v79;
  v84 = v66 ^ 0xEAE794F8;
  v85 = (v82 ^ v76 ^ v75 ^ 0xEAE794F8) - v84;
  v86 = v75 ^ 0xEAE794F8;
  v87 = v79 ^ v76 ^ v84;
  LODWORD(v76) = v69 ^ v86;
  LODWORD(v69) = v69 ^ v80;
  v88 = (v80 ^ v86 ^ v82) - v87;
  LODWORD(v87) = v71 - v80;
  v89 = v71 - v80 + 671517247;
  LODWORD(v84) = v77 ^ v84;
  LODWORD(v80) = v80 - v76;
  v90 = v77 ^ v79;
  v91 = v81 ^ v71;
  v92 = v81 - v79;
  LODWORD(v69) = v69 ^ v80;
  LODWORD(v79) = v79 - v84;
  v93 = v85 ^ v91 ^ v83 ^ v88;
  LODWORD(v84) = v79 ^ v84;
  LODWORD(v91) = v80 ^ v76;
  LODWORD(v80) = v80 - 776242421;
  LODWORD(v76) = v80 ^ v53;
  v94 = v90 ^ v79;
  LODWORD(v79) = v79 - 776242421;
  LODWORD(v83) = (v80 ^ v53 ^ v91) - (v84 ^ a3 ^ v79);
  v95 = v53 ^ a3 ^ v91;
  LODWORD(v91) = v91 - v69;
  v96 = v95 - v84;
  v97 = v80 - v91;
  LODWORD(v80) = v69 ^ v89;
  LODWORD(v84) = v84 - v94;
  LODWORD(v69) = v97 ^ v91;
  v98 = (v79 - v84) ^ v84;
  v99 = (((HIDWORD(v78) + v93) >> 32) + HIDWORD(v93) + ((v92 + 671517247) ^ v89 ^ v96 ^ ((v76 ^ a3) - v79) ^ v83));
  v100 = v94 ^ (v92 + 671517247);
  LODWORD(v79) = v84 ^ v100;
  v101 = v98 ^ v100;
  STACK[0x1AC0] = (((v69 ^ v80) + (v91 ^ v80)) ^ v69 ^ 0x8F550CFCLL ^ (196236731 * ((0x547B86F0DLL * v99) >> 32)) ^ ((v69 ^ v80) + 1730418749 + (((v69 ^ v80) + (v91 ^ v80)) ^ (v87 + 2069747405)) + (v69 ^ v80) + (v91 ^ v80))) - ((v101 + 1730418749 + ((v101 + v79) ^ (v92 + 2069747405)) + v101 + v79) ^ (v98 ^ 0x8F550CFC ^ (v101 + v79)) ^ (-617179706 * ((0x547B86F0DLL * v99) >> 32)));
  return (*(v11 + 8 * v16))();
}

uint64_t sub_100DFC728()
{
  v2 = (v0 - 21093) | 0x400Cu;
  v3 = LODWORD(STACK[0x3A28]) ^ 1;
  STACK[0x3D98] = v2;
  return (*(v1 + 8 * (((v2 ^ (v0 - 511829500) & 0x1E81BDF6 ^ 0x6FBE) * v3) ^ v0)))();
}

uint64_t sub_100DFC880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X5>, int a4@<W6>, unsigned int a5@<W8>, double a6@<D0>)
{
  v11 = (a1 + v7 + v6);
  *v11 = a6;
  v11[1] = a6;
  return (*(v10 + 8 * (((v7 + a3 + (v8 ^ a5) != a2) * a4) ^ (v8 + v9))))();
}

uint64_t sub_100DFC8F0@<X0>(unint64_t a1@<X2>, int a2@<W3>, int a3@<W8>)
{
  STACK[0x37A8] = 0;
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x2B80]) = 0;
  LODWORD(STACK[0x2AF8]) = 0;
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
  STACK[0x3840] = 0;
  v7 = (a3 + 2121638497) & 0x818A5EBF;
  v8 = (a3 + 1682745954) & 0x9BB356BE;
  v9 = STACK[0x3290] & 1;
  STACK[0x3AF0] = v7;
  LODWORD(STACK[0x3B08]) = v8;
  v10 = *(v5 + 8 * (((v7 ^ v8 ^ 0xD53) * v9) ^ a3));
  STACK[0x3CD0] = LODWORD(STACK[0x3D60]);
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  LODWORD(STACK[0x1A70]) = v4;
  LODWORD(STACK[0x31D0]) = STACK[0x3E18];
  LODWORD(STACK[0x3CE0]) = v6;
  LODWORD(STACK[0x3438]) = a2;
  LODWORD(STACK[0x2B28]) = a2;
  LODWORD(STACK[0x1954]) = a2;
  STACK[0x3D90] = a1;
  LODWORD(STACK[0x3830]) = a1;
  LODWORD(STACK[0x3810]) = v3;
  LODWORD(STACK[0x3988]) = 41;
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
  LODWORD(STACK[0x2A90]) = 1;
  LODWORD(STACK[0x8C8]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0x820]) = 1;
  LODWORD(STACK[0x8D0]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x2BB0]) = STACK[0x2238];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  v11 = LODWORD(STACK[0x3268]);
  LODWORD(STACK[0x2B40]) = v11;
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3998]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x1A78]) = v11;
  LODWORD(STACK[0x183C]) = STACK[0x23B0];
  return v10(v11, 0);
}

uint64_t sub_100DFCB9C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D88]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  *v2 = v3 | (*(STACK[0x3580] - v1 + 270) << 8) | (*(STACK[0x3580] - v1 + 269) << 16) | (*(STACK[0x3580] - v1 + 268) << 24);
  STACK[0x37B8] = ((((a1 + 7250) | 0x2400) - 8546) ^ (a1 - 342340881) & 0x1467D3FF) + STACK[0x37B8];
  v5 = *(v4 + 8 * (a1 ^ (26679 * (v1 < 0x10C))));
  LODWORD(STACK[0x3D68]) = 4;
  LODWORD(STACK[0x3488]) = STACK[0x32E8];
  LODWORD(STACK[0x3E18]) = 1;
  return v5();
}

uint64_t sub_100DFCCBC(int a1, uint64_t a2, int a3)
{
  STACK[0x3318] = LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x3810]) = STACK[0x3B00];
  LODWORD(STACK[0x2500]) = STACK[0x3AF0];
  LODWORD(STACK[0x31E8]) = STACK[0x3AE8];
  LODWORD(STACK[0x2424]) = a3;
  LODWORD(STACK[0x3710]) = STACK[0x3B08];
  STACK[0x3540] = LODWORD(STACK[0x3D40]);
  LODWORD(STACK[0x2C20]) = v6;
  STACK[0x3700] = v3;
  LODWORD(STACK[0x39A8]) = STACK[0x3B18];
  STACK[0x10D0] = STACK[0x3D50];
  STACK[0x3D88] = STACK[0x3D58];
  LODWORD(STACK[0x3E40]) = v4;
  return (*(v5 + 8 * (((v4 + ((a1 - 13154) ^ 0x1F3E) == 0) * (a1 ^ 0x52EE)) ^ (a1 + 10083))))();
}

uint64_t sub_100DFCE24()
{
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3B00]) = 0;
  LODWORD(STACK[0x3998]) = 0;
  LODWORD(STACK[0x3810]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x39A0]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3828]) = 0;
  LODWORD(STACK[0x3B08]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3AD8]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3860]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  STACK[0x3B18] = v2 >> ((v0 + 85) ^ 0x96u);
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3D30]) = 1;
  STACK[0x3950] = v2;
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
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x3AF0]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3800]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3808]) = 1;
  LODWORD(STACK[0x3858]) = 1;
  LODWORD(STACK[0x3838]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  return v3();
}

uint64_t sub_100DFCF00()
{
  v4 = v1 & 0x52BB7EF7;
  v5 = v2 != 0;
  v6 = *v0 != -769884012 || v5;
  return (*(v3 + 8 * ((v6 * (((v4 + 10830) | 0x2002) - 28920)) ^ v4)))();
}

uint64_t sub_100DFCFBC()
{
  v3 = (*(v1 + 8 * (v2 ^ 0x61E9)))();
  **(v0 + 56) = 0;
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_100DFCFE4()
{
  v1 = STACK[0x37E4];
  v2 = (*(v0 + 8 * (LODWORD(STACK[0x37E4]) ^ 0x6FAF)))(STACK[0x3B58]);
  STACK[0x3E98] = v2;
  return (*(v0 + 8 * (((v2 == 0) * (v1 - 4996)) ^ v1)))();
}

uint64_t sub_100DFD034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3D98]) = 0;
  STACK[0x3B08] = a6 >> (((v6 - 24) & 0xFEu) - 126);
  v8 = (STACK[0x3D80] & 1) == 0;
  v9 = STACK[0x3768];
  if (STACK[0x3D80])
  {
    v9 = a6;
  }

  LODWORD(STACK[0x3768]) = v9;
  v10 = *(v7 + 8 * v6);
  v11 = STACK[0x2138];
  if (v8)
  {
    v11 = a6;
  }

  LODWORD(STACK[0x2138]) = v11;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  return v10();
}

uint64_t sub_100DFD0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>)
{
  v24 = (((v17 ^ 0x762E9AC) - 123922860) ^ ((v17 ^ 0x6A857E59) - 1787133529) ^ ((v17 ^ 0xBFFB1761) + 1074063519)) - 481773288;
  v25 = v19;
  v26 = (v24 ^ 0xCE9BE77B) & (2 * (v24 & 0xEED3C77B)) ^ v24 & 0xEED3C77B;
  v27 = ((2 * (v24 ^ 0x923AEBED)) ^ v18) & (v24 ^ 0x923AEBED) ^ (2 * (v24 ^ 0x923AEBED)) & v13;
  v28 = v27 ^ 0x4292492;
  v29 = (v27 ^ 0x78C00804) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xF3A4B258) & v28 ^ (4 * v28) & v21;
  v31 = (v30 ^ 0x70A02010) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0xC490C86)) ^ 0xCE92C960) & (v30 ^ 0xC490C86) ^ (16 * (v30 ^ 0xC490C86)) & v9;
  v33 = v31 ^ v13 ^ (v32 ^ 0x4C800800) & (v31 << 8);
  v34 = v24 ^ (2 * ((v33 << 16) & a3 ^ v33 ^ ((v33 << 16) ^ 0x2C960000) & (((v32 ^ 0x30692496) << 8) & a3 ^ 0x14C10000 ^ (((v32 ^ 0x30692496) << 8) ^ 0x692C0000) & (v32 ^ 0x30692496))));
  v35 = v34 ^ v14;
  v36 = __ROR8__((v16 + v35) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = ((2 * v36 - 0x63E9357C36D9453ALL) & 0xF3EA6EB79B737226) - v36 - 0x48009C9DB24D1677;
  v38 = v37 ^ 0xE9B296351672F668;
  v37 ^= 0x99E9BC3A32E81D72;
  v39 = __ROR8__(v38, 8);
  v40 = (((2 * (v39 + v37)) | 0xBE65E3AFCBC65836) - (v39 + v37) + 0x20CD0E281A1CD3E5) ^ 0xC0496343C80C0DF4;
  v41 = v40 ^ __ROR8__(v37, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__((((2 * (v42 + v41)) & 0x1385175A7E5F53A2) - (v42 + v41) - 0x9C28BAD3F2FA9D2) ^ v23, 8);
  v44 = (((2 * (v42 + v41)) & 0x1385175A7E5F53A2) - (v42 + v41) - 0x9C28BAD3F2FA9D2) ^ v23 ^ __ROR8__(v41, 61);
  v45 = (v11 - ((v43 + v44) | v11) + ((v43 + v44) | v10)) ^ a1;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__((v12 - ((v47 + v46) | v12) + ((v47 + v46) | a2)) ^ a4, 8);
  v49 = (v12 - ((v47 + v46) | v12) + ((v47 + v46) | a2)) ^ a4 ^ __ROR8__(v46, 61);
  v50 = (v48 + v49) ^ v25;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v20;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  *(*a9 + v35) = ((((a5 | (2 * (v54 + v53))) - (v54 + v53) + a6) ^ a7) >> (8 * ((v16 + (v34 ^ v14)) & 7))) ^ *(v16 + v35);
  return (*(v22 + 8 * (((v34 == v14) * a8) ^ v15)))();
}

uint64_t sub_100DFD3DC()
{
  STACK[0x2FA8] = HIBYTE(LODWORD(STACK[0x3878]));
  LODWORD(STACK[0x3E38]) = v0 ^ 0xC1823FC5;
  v2 = STACK[0x3D40];
  v3 = *(STACK[0x3D40] + 4 * LODWORD(STACK[0x37F0])) ^ 0xFBEF1DBD;
  v4 = *(STACK[0x3D40] + 4 * LODWORD(STACK[0x37A8]));
  v5 = v3 ^ (16 * v3) ^ (v3 << (v0 ^ 0xFD)) ^ __ROR4__(*(v2 + 4 * LODWORD(STACK[0x3800])) ^ 0x1FE307FA ^ (16 * (*(v2 + 4 * LODWORD(STACK[0x3800])) ^ 0xFBEF1DBD)) ^ (8 * (*(v2 + 4 * LODWORD(STACK[0x3800])) ^ 0xFBEF1DBD)), 8);
  v6 = STACK[0x3D18];
  LOBYTE(v3) = *(STACK[0x3D18] + 394);
  v7 = v5 ^ __ROR4__(*(v2 + 4 * LODWORD(STACK[0x37B8])) ^ (16 * (*(v2 + 4 * LODWORD(STACK[0x37B8])) ^ 0xFBEF1DBD)) ^ (8 * (*(v2 + 4 * LODWORD(STACK[0x37B8])) ^ 0xFBEF1DBD)) ^ 0x5896ACDC, 24) ^ 0xB37CB1A1;
  STACK[0x3AE0] = v7;
  LODWORD(v7) = v7 ^ __ROR4__(v4 ^ (16 * (v4 ^ 0xFBEF1DBD)) ^ (8 * (v4 ^ 0xFBEF1DBD)) ^ 0xCA7B3A00, 16);
  v6[394] = v7 ^ v3;
  v6[393] ^= BYTE1(v7);
  v6[392] ^= BYTE2(v7);
  v6[391] ^= BYTE3(v7);
  v8 = *(v1 + 8 * v0);
  STACK[0x30A0] = STACK[0x30A8];
  return v8();
}

uint64_t sub_100DFD578@<X0>(int a1@<W6>, unint64_t a2@<X7>, unsigned int a3@<W8>)
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3260]) = 0;
  LODWORD(STACK[0x2BE0]) = 0;
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
  v5 = (a3 + 1995410978) & 0x89107A9E;
  LODWORD(STACK[0x3D68]) = v5;
  v6 = *(v4 + 8 * ((5370 * (v3 != a3 - 40039 + v5)) ^ a3));
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
  v7 = STACK[0x3540];
  LODWORD(STACK[0x3E18]) = STACK[0x3540];
  LODWORD(STACK[0x3D40]) = v7;
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
  LODWORD(v7) = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D80]) = v7;
  LODWORD(STACK[0x3D70]) = STACK[0x3980];
  LODWORD(STACK[0x2BB0]) = 21;
  LODWORD(STACK[0x3AD8]) = 19;
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2928];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  v8 = STACK[0x32D8];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v8;
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
  LODWORD(STACK[0x2BC8]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x39A8]) = STACK[0x3B18];
  LODWORD(STACK[0x3860]) = STACK[0x3808];
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  LODWORD(STACK[0x3268]) = v8;
  return v6();
}

uint64_t sub_100DFF7B8@<X0>(int a1@<W6>, int a2@<W8>)
{
  STACK[0x38B0] = *(v4 + LODWORD(STACK[0x3798]));
  LODWORD(STACK[0x3798]) = a1 + 21;
  v5 = *(v2 + 8 * ((224 * (((v3 == 21) ^ (a2 + 82) ^ 0x7F) & 1)) ^ a2));
  LODWORD(STACK[0x3D58]) = 21;
  return v5();
}

uint64_t sub_100DFF810(uint64_t a1, int a2)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v3 = *(v2 + 8 * (a2 - 10147));
  LODWORD(STACK[0x3CF0]) = 68;
  LODWORD(STACK[0x3D88]) = 2;
  v4 = STACK[0x4A8];
  STACK[0x3D40] = STACK[0x4A8];
  v5 = STACK[0x1BE8];
  STACK[0x3D78] = STACK[0x1BE8];
  STACK[0x3B20] = v4;
  STACK[0x3B18] = v5;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v6 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = v6;
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v3();
}

uint64_t sub_100DFF8E8()
{
  LODWORD(STACK[0x3D20]) = 0;
  v2 = *(v1 + 8 * (v0 - 5192));
  LODWORD(STACK[0x2BB0]) = 37;
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
  return v2();
}

uint64_t sub_100DFFAE0@<X0>(unsigned int a1@<W8>)
{
  v4 = STACK[0x3B38];
  v4[1968] = v2;
  v4[1965] = HIBYTE(v2);
  v5 = v2 >> ((v1 + 114) ^ 0x19);
  v4[1967] = BYTE1(v2);
  v6 = LODWORD(STACK[0x3E18]) > a1;
  v4[1966] = v5;
  return (*(v3 + 8 * ((81 * v6) ^ v1)))();
}

uint64_t sub_100DFFB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v32 = (((v31 ^ 0x89ED1D53) + 1980949165) ^ ((v31 ^ 0xC0E76D4A) + 1058575030) ^ ((v31 ^ 0xDEDBC77) - 233684087)) - 1485083060 + (((a31 ^ 0xBFB726D6) + 1078516010) ^ ((a31 ^ 0xD8C378E7) + 658278169) ^ ((a31 ^ 0x2393925F) - 596873823));
  v33 = ((2 * (v32 & 0xE2542A90)) & 0x205000 | v32 & 0xE2542A90) ^ (2 * (v32 & 0xE2542A90)) & (v32 ^ 0xD3675250);
  v34 = ((2 * (v32 ^ 0xD3675250)) ^ 0x6266F180) & (v32 ^ 0xD3675250) ^ (2 * (v32 ^ 0xD3675250)) & 0x313378C0;
  v35 = v34 ^ 0x11110840;
  v36 = (v34 ^ 0x207080) & (4 * v33) ^ v33;
  v37 = ((4 * v35) ^ 0xC4CDE300) & v35 ^ (4 * v35) & 0x313378C0;
  return a18((((v37 ^ 0x16000) & (16 * v36) ^ v36 ^ 0x313378C0 ^ (((16 * (v37 ^ 0x313218C0)) ^ 0x13378C00) & (v37 ^ 0x313218C0) ^ (16 * (v37 ^ 0x313218C0)) & 0x313378C0 ^ 0x11330800) & (((v37 ^ 0x16000) & (16 * v36) ^ v36) << 8)) << 16) ^ 0x78C00000, 825425920, 1864564736, a4, a5, a6, a7, 479949625, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19 - 320, a20, a21, a22, a23);
}

void sub_100E002D4(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (800103191 * ((a1 - 2 * (a1 & 0x57A77836) + 1470593078) ^ 0x26E33555));
  v4 = **(a1 + 8);
  v6 = &v3;
  v5 = v1 - 1964904101 * ((2 * (&v5 & 0x24D94EB0) - &v5 - 618221236) ^ 0x21045AC8) - 9323;
  v2 = *(&off_101353600 + v1 - 12426) - 4;
  (*&v2[8 * (v1 ^ 0x490D)])(&v5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100E0050C()
{
  v3 = *(STACK[0xA38] + 24);
  STACK[0xC20] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((v0 - 11882) ^ (v1 - 64)) + 1211063933 + ((v0 - 11882) | 0x1024) + 3407)) ^ v0)))();
}

uint64_t sub_100E00638(char a1, uint64_t a2, int a3, int a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v19 = a4 & ((v8 - 10839) ^ 0x1F5E);
  v20 = *STACK[0x660];
  v21 = (1 << (a4 & ((v8 - 87) ^ 0x5E))) - ((2 << (a4 & ((v8 - 87) ^ 0x5E))) & 0x7C) - 66;
  v22 = *v15;
  v23 = *(v20 + (v22 & v9));
  v24 = *v10 ^ a8;
  v25 = (*(v20 + (v22 & STACK[0x658])) + v13 + 673210726);
  v26 = *((qword_101362AE8 ^ v18) + (v25 & v24));
  v27 = *((qword_101362AE8 ^ v18) + ((v25 + 2) & v24));
  v28 = v27 ^ v26 ^ v14 ^ v12;
  v29 = (((v11 + 1645 * v19) % 0xA88u) ^ 0xE53FFDF75ABDF7AFLL) + v16 + ((2 * ((v11 + 1645 * v19) % 0xA88u)) & 0xF5E);
  v30 = v28 ^ 0xA8;
  v31 = *(v29 - 0x2AE3475393DB11C4) ^ (76 * (v29 + 81)) ^ v28 ^ *((qword_101362AE8 ^ v18) + ((v29 - 1522399151 + v23 + v17) & v24)) ^ *((qword_101362AE8 ^ v18) + ((v29 - 1522399151 + v23 + v17 + 2) & v24)) ^ 0xD8;
  if ((((a1 ^ a6 ^ *((qword_101362AE8 ^ v18) + ((v23 + a5 + v17) & v24)) ^ *((qword_101362AE8 ^ v18) + ((v23 + a5 + v17 + 2) & v24))) ^ 0xDD) & (v21 ^ 0xBE) ^ v21 & 0xAD) == 0xAC)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  *(v13 - 0x34EE34220E8AC3B8) = a3 ^ v26 ^ v27 ^ v32 ^ 0x61;
  return (*(STACK[0x668] + 8 * ((1001 * (((v19 - 255) & 0xF8) == 0)) ^ v8)))();
}

uint64_t sub_100E00888()
{
  v4 = *(v1 + 280);
  v5 = 1534937323 * ((-2 - ((~(v3 - 240) | 0xB06618C4134E371BLL) + ((v3 - 240) | 0x4F99E73BECB1C8E4))) ^ 0x7D1E9006D5A0CC5CLL);
  *(v3 - 208) = ((v0 + 2120236532) ^ 0xD2DA6DD5) + v5;
  STACK[0x25E8] = v5;
  STACK[0x25D0] = v4 ^ v5;
  *(v3 - 224) = v5;
  *(v3 - 220) = v5 ^ (v0 + 2120236532) ^ 0xD2DA6C0F;
  *(v3 - 232) = ((v0 + 2120236532) ^ 0xD2DA62FC) - v5;
  *(v3 - 228) = v5 + v0 - 723214290;
  v6 = (*(v2 + 8 * (v0 + 2120268328)))(v3 - 240);
  return (*(v2 + 8 * *(v3 - 204)))(v6);
}

uint64_t sub_100E00978(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 ^ 0x819FB247;
  v10 = a3 + a8 + 839;
  v11 = *(v8 + 1984);
  v12 = STACK[0x540];
  v13 = (*(STACK[0x540] + 254600))();
  v14 = (*(v12 + 255384))(STACK[0x1F00], v11, 41, v13);
  return (*(v12 + 8 * (((v14 == 0) * (v9 ^ 0x77D8)) ^ v10)))(16450, 17474, &STACK[0x1730]);
}

uint64_t sub_100E00CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3D90] = 0;
  v8 = STACK[0x3E40];
  v9 = *(v7 + 8 * SLODWORD(STACK[0x3E40]));
  LODWORD(STACK[0x3D68]) = LODWORD(STACK[0x3E40]) ^ 0x6A;
  STACK[0x3E18] = ((v8 ^ 0x6A) - 814364136) & 0x308A74FB;
  return v9(a1, a2, a3, a4, STACK[0x3E10], a6, a7, STACK[0x3E20]);
}

uint64_t sub_100E00D20(uint64_t result)
{
  v1 = 551690071 * (result ^ 0x719D52CE4EED5357);
  v2 = *(result + 24) + v1;
  v3 = *(result + 32) - v1;
  v4 = v3 == v2;
  v5 = v3 > v2;
  v6 = v4;
  if ((*(result + 16) ^ v1))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v4 = v7 == 0;
  v8 = 8;
  if (!v4)
  {
    v8 = 12;
  }

  *(result + 20) = *(result + 4) ^ v1 ^ (*(result + v8) + v1);
  return result;
}

uint64_t sub_100E00E30()
{
  v3 = *(v1 + 8 * (((LODWORD(STACK[0x2C20]) == v0 - 19558) * (v0 - 10991)) ^ v0));
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x3430];
  v4 = STACK[0x3710];
  LODWORD(STACK[0x3E18]) = STACK[0x3710];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3D40]) = v2;
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v4;
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  return v3((v0 + 1580));
}

void sub_100E00EE8()
{
  v0 = __chkstk_darwin();
  v1 = *v0 + 1917435887 * ((v0 + 1437401473 - 2 * (v0 & 0x55AD0181)) ^ 0xB3165A87);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100E01128@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x1188] + 24);
  STACK[0x18F0] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (103 * ((a1 + 90) ^ 0x87))) & 1) * ((a1 - 166) ^ 0x1893)) | (a1 - 166))))();
}

uint64_t sub_100E011D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  STACK[0x4C0] = a7;
  LODWORD(STACK[0x148C]) = *(a7 + 88);
  LODWORD(STACK[0x107C]) = v8;
  return (*(v9 + 8 * v7))();
}

uint64_t sub_100E01204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = v9 + 16 * ((a3 ^ v6) + (a2 & (2 * a3)));
  v13 = v4 + v12;
  v14 = *(v4 + v12);
  v15 = a1 + v12;
  *v15 = v14;
  *(v15 + 8) = *(v13 + 8);
  *(v15 + 12) = *(v13 + 12);
  return (*(v10 + 8 * (((a3 + 1 < *(v8 + v7)) * ((v3 + v5) ^ v11)) ^ v3)))();
}

uint64_t sub_100E013E8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x25D8] = *(v2 + 552);
  STACK[0x25E0] = a1;
  *(v6 - 236) = v4 - ((v5 + 1530515283 - 2 * (v5 & 0x5B39CF53)) ^ 0xEB7FA7B) * v1 + 20601;
  (*(v3 + 8 * (v4 + 26570)))(v6 - 240);
  v7 = *(v6 - 240);
  v8 = STACK[0x1AE8];
  *(v6 - 240) = -1070754614 - 1964904101 * (((v5 | 0x786610EF) + (~v5 | 0x8799EF10)) ^ 0x8244FB6A) + v4;
  STACK[0x25D8] = v8;
  v9 = (*(v3 + 8 * (v4 + 26551)))(v6 - 240);
  return (*(v3 + 8 * ((3541 * (v7 == ((v4 - 2083364152) & 0x7C2DFDE7 ^ 0xF7783112))) ^ v4)))(v9);
}

uint64_t sub_100E01508()
{
  STACK[0x4F0] = STACK[0xDE8];
  STACK[0x530] = STACK[0x8F8];
  return (*(v2 + 8 * (v0 ^ (v1 + 259) ^ (15771 * (v0 < 0x79B1A567)))))();
}

uint64_t sub_100E0156C()
{
  *(v3 - 216) = (v1 + 1098033273) ^ (1964904101 * (((v3 - 216) & 0x27EADB62 | ~((v3 - 216) | 0x27EADB62)) ^ 0x2237CF19));
  *(v3 - 208) = v2;
  v4 = (*(v0 + 8 * (v1 ^ 0x24E737F2)))(v3 - 216);
  return (*(v0 + 8 * ((10428 * (v1 != 1628030352)) ^ (((v1 - 115752286) ^ 0xC519DFFF) + v1))))(v4);
}

uint64_t sub_100E016C4()
{
  v4 = (v1 - 134970860) & STACK[0x890];
  v5 = *v0;
  STACK[0x1600] = *(v2 + 8 * v3);
  return (*(v2 + 8 * (((v5 == 0x308E083E0C524CBELL) * (v4 ^ (v1 - 1211096675))) ^ v1)))();
}

uint64_t sub_100E01730()
{
  v2 = *(STACK[0x878] + 24);
  STACK[0xF68] = v2;
  return (*(v1 + 8 * ((((((v0 + 1292727237) & 0xB2F236FF) - 2120242289) ^ ((v0 + 9229861) | 0x81128008)) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_100E017F0()
{
  STACK[0x6C0] = v0;
  STACK[0x870] = v4;
  STACK[0x880] = v2;
  STACK[0xAB0] += 16;
  v5 = (*(v3 + 8 * (v1 ^ 0x57ED)))(25) == 0;
  return (*(v3 + 8 * ((v5 * ((205 * (v1 ^ 0x2BB4) + 1514679083) & 0xA5B7EBFF ^ 0x6992)) ^ v1)))();
}

uint64_t sub_100E0186C()
{
  v3 = STACK[0x1A60];
  v4 = *(STACK[0x1A60] + 8);
  v5 = *(v1 + 1136);
  v5[1] = v4;
  *v5 = *v3;
  return (*(v2 + 8 * (((v4 == 0) * (v0 ^ 0x2C79 ^ (10156 * (v0 ^ 0x5B57)))) ^ v0)))();
}

uint64_t sub_100E019A0()
{
  v5 = (*(v4 + 8 * (v1 ^ (v1 - 971))))(v0);
  *(v2 + 1584) = 0;
  return (*(v4 + 8 * (v3 + v1 - 2296)))(v5);
}

uint64_t sub_100E019D0()
{
  v3 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0xA88] = v3;
  return (*(v2 + 8 * (((v3 == 0x308E083E0C524CBELL) * ((((v0 - 402662074) & 0x999FC27E) + 2120246940) ^ (v0 + 1656))) ^ v0)))();
}

uint64_t sub_100E01A50(uint64_t a1)
{
  v8 = 3 * (v1 ^ 0x907);
  v9 = STACK[0x4B8];
  v10 = *(*v4 + (((((v2 + 56) & 0xFFFFFFF8) - 103642729) & *STACK[0x4B8]) & 0xFFFFFFFFFFFFFFF8));
  v11 = __ROR8__((v2 + 56) & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = *(v2 + 64);
  v13 = (0x77F97CFE4C221B5CLL - ((v10 + v11) | 0x77F97CFE4C221B5CLL) + ((v10 + v11) | 0x88068301B3DDE4A3)) ^ (29 * (v8 ^ 0x1B17u) + 0x7C10D2482C83D5B5);
  v14 = v13 ^ __ROR8__(v10, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ v7;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x2275D4C73835399BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xE5AF1AB32EBD3CDDLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xC7DDC9F6CC45B721;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23) ^ 0xA82620A559D2DA78;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v5;
  *(v2 + 56) = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v25, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v2 + 56) & 7))) ^ (v12 >> 21);
  LOBYTE(v25) = (v12 >> 13) - ((v12 >> 12) & 0xBE);
  v27 = *(*v4 + (((((v2 + 57) & 0xCEAC18E0) + ((v2 + 57) & 0x3153E718 | 0xCEAC18E4) + 723939506) & *v9) & 0xFFFFFFFFFFFFFFF8));
  v28 = __ROR8__((v2 + 57) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (0x990AC1F609D281E0 - ((v27 + v28) | 0x990AC1F609D281E0) + ((v27 + v28) | 0x66F53E09F62D7E1FLL)) ^ 0x92E36F4069734278;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0x1DC8A7CC9314627DLL - ((v31 + v30) | 0x1DC8A7CC9314627DLL) + ((v31 + v30) | 0xE23758336CEB9D82)) ^ 0xF7051ADD501BF7CBLL ^ __ROR8__(v30, 61);
  v33 = (__ROR8__((0x1DC8A7CC9314627DLL - ((v31 + v30) | 0x1DC8A7CC9314627DLL) + ((v31 + v30) | 0xE23758336CEB9D82)) ^ 0xF7051ADD501BF7CBLL, 8) + v32) ^ 0x2275D4C73835399BLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) & 0x59D19FB3BA8DE6FELL) - (v35 + v34) + 0x5317302622B90C80) ^ 0xB6B82A950C04305DLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0x888007E44BD81450) - (v38 + v37) - 0x444003F225EC0A29) ^ 0x7C6235FB165642F6;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((v41 + v40) & 0x585250CA8819F87 ^ 0x85010428000184) + ((v41 + v40) ^ 0x1F02BC88979BDE53) - (((v41 + v40) ^ 0x1F02BC88979BDE53) & 0x585250CA8819F87)) ^ 0xB2A1B92166C89BACLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0x6E6C04623370B2E2) - (v44 + v43) - 0x3736023119B85971) ^ 0x68BBEE0FBA20536ALL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  *(v2 + 57) = (v25 + 95) ^ 0x5F ^ (((0xA397730F16D31B4BLL - ((v47 + v46) | 0xA397730F16D31B4BLL) + ((v47 + v46) | 0x5C688CF0E92CE4B4)) ^ 0x9DAB44224DE9AC9CLL) >> (8 * ((v2 + 57) & 7)));
  v48 = *(v3 + 32);
  v49 = *(v48 + 64);
  LODWORD(v25) = *(v48 + 68);
  v50 = *(*v4 + ((*v9 & (((v48 + 58) & 0xFFFFFFF8 ^ 0xD83305D3) + 564102084 + ((2 * ((v48 + 58) & 0xFFFFFFF8)) & 0xB0660BA0))) & 0xFFFFFFFFFFFFFFF8));
  v51 = __ROR8__((v48 + 58) & 0xFFFFFFFFFFFFFFF8, 8);
  v52 = (((2 * (v51 + v50)) | 0xA6DDA72078456A56) - (v51 + v50) + 0x2C912C6FC3DD4AD5) ^ 0x277882D9A37C894CLL;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ v7;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x2275D4C73835399BLL;
  v57 = __ROR8__(v56, 8);
  v58 = v56 ^ __ROR8__(v55, 61);
  v59 = (((2 * (v57 + v58)) & 0x1B607037DA6A66B4) - (v57 + v58) + 0x724FC7E412CACCA5) ^ 0x97E0DD573C77F078;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xC7DDC9F6CC45B721;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (0x9CC0D58D9C23278CLL - ((v63 + v62) | 0x9CC0D58D9C23278CLL) + ((v63 + v62) | 0x633F2A7263DCD873)) ^ 0xCB190AD73A0E020BLL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ v5;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  *(v48 + 58) = ((v49 >> 5) - ((v49 >> 4) & 0x8E) - 57) ^ (((((v68 + v67) & 0x55062B405B733F6FLL ^ 0x5104200003201742) + ((v68 + v67) ^ 0xAC920FF0585B28BDLL) - (((v68 + v67) ^ 0xAC920FF0585B28BDLL) & 0x55062B405B733F6FLL)) ^ 0x3857EC62A7ED5FFALL) >> (8 * ((v48 + 58) & 7))) ^ 0xC7;
  v69 = *(*v4 + ((*v9 & (((v48 + 59) & 0xFFFFFFF8 ^ 0x93643082) - 1925793254 + ((2 * ((v48 + 59) & 0xFFFFFFF8)) | 0xD9379EFB))) & 0xFFFFFFFFFFFFFFF8));
  v70 = (v69 + __ROR8__((v48 + 59) & 0xFFFFFFFFFFFFFFF8, 8)) ^ a1;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (0xA1F45D6D0715164 - ((v72 + v71) | 0xA1F45D6D0715164) + ((v72 + v71) | 0xF5E0BA292F8EAE9BLL)) ^ 0xE0D2F8C7137EC4D2;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x2275D4C73835399BLL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0xE5AF1AB32EBD3CDDLL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * ((v79 + v78) ^ 0x29E7CDA1C2EA77)) | 0xBFE0FADD7577D44ELL) - ((v79 + v78) ^ 0x29E7CDA1C2EA77) + 0x200F8291454415D9) ^ 0x18045355D73CB771;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xA82620A559D2DA78;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (((2 * (v84 + v83)) & 0x1A82BB5CD525AB24) - (v84 + v83) - 0xD415DAE6A92D593) ^ 0xAD334E6F36F52076;
  v86 = __ROR8__(v85, 8);
  v87 = __ROR8__(v83, 61);
  *(v48 + 59) = ((__PAIR64__(v49, v25) >> 29) - ((2 * (__PAIR64__(v49, v25) >> 29)) & 0x30) - 104) ^ 0x98 ^ (((((2 * (v86 + (v85 ^ v87))) & 0x4E41995D49978B0CLL) - (v86 + (v85 ^ v87)) + 0x58DF33515B343A79) ^ 0x991CFB83FFF17251) >> (8 * ((v48 + 59) & 7)));
  v88 = *(v3 + 32);
  v89 = *(v88 + 68);
  v90 = *(*v4 + ((*v9 & (((v88 + 60) & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v91 = __ROR8__((v88 + 60) & 0xFFFFFFFFFFFFFFF8, 8);
  v92 = (((2 * ((v91 + v90) ^ 0x34E701D6E4DF3E28)) | 0xFCDABB529D9337CLL) - ((v91 + v90) ^ 0x34E701D6E4DF3E28) - 0x7E6D5DA94EC99BELL) ^ 0xC7178545EF6D9BF1;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ v7;
  v95 = __ROR8__(v94, 8);
  v96 = v94 ^ __ROR8__(v93, 61);
  v97 = (v95 + v96) ^ 0x2275D4C73835399BLL;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (v99 + v98 - ((2 * (v99 + v98)) & 0x7ABD7CB8EE83B334) + 0x3D5EBE5C7741D99ALL) ^ 0xD8F1A4EF59FCE547;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xC7DDC9F6CC45B721;
  v103 = __ROR8__(v102, 8);
  v104 = v102 ^ __ROR8__(v101, 61);
  v105 = (v103 + v104 - ((2 * (v103 + v104)) & 0x9BC3F468D9282484) - 0x321E05CB936BEDBELL) ^ 0x65C7DA913546C83ALL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * ((v107 + v106) ^ 0x599ED2EC36BAF74BLL)) | 0x5C8101B600030C58) - ((v107 + v106) ^ 0x599ED2EC36BAF74BLL) + 0x51BF7F24FFFE79D4) ^ 0xA853BE0995237B7CLL;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  *(v88 + 60) = ((v89 >> 21) - ((v89 >> 20) & 0xB6) - 37) ^ 0xDB ^ (((((2 * (v110 + v109)) | 0x90F85744BFF43E14) - (v110 + v109) - 0x487C2BA25FFA1F0ALL) ^ 0x89BFE370FB3F5722) >> (8 * ((v88 + 60) & 7)));
  v111 = *(*v4 + ((*v9 & (((v88 + 61) & 0xFFFFFFF8 ^ 0x1E3B1124) + 403544764 + ((2 * ((v88 + 61) & 0xFFFFFFF8)) | 0xC389DDB7))) & 0xFFFFFFFFFFFFFFF8));
  v112 = (v111 + __ROR8__((v88 + 61) & 0xFFFFFFFFFFFFFFF8, 8)) ^ a1;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = __ROR8__(v112, 8);
  v115 = (((2 * (v114 + v113)) & 0xC93F764B3517F62ELL) - (v114 + v113) + 0x1B6044DA657404E8) ^ 0xE52063459846EA1;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (0x2E674B5FD8A19793 - ((v117 + v116) | 0x2E674B5FD8A19793) + ((v117 + v116) | 0xD198B4A0275E686CLL)) ^ 0xF3ED60671F6B51F7;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (((2 * (v120 + v119)) & 0xDF6C12CB3BA9BE7CLL) - (v120 + v119) - 0x6FB609659DD4DF3FLL) ^ 0x75E6EC294C961C1CLL;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0xC7DDC9F6CC45B721;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = __ROR8__(v123, 8);
  v126 = __ROR8__((0xEAC7DBE51F113F93 - ((v125 + v124) | 0xEAC7DBE51F113F93) + ((v125 + v124) | 0x1538241AE0EEC06CLL)) ^ 0xBD1E04BFB93C1A14, 8);
  v127 = (0xEAC7DBE51F113F93 - ((v125 + v124) | 0xEAC7DBE51F113F93) + ((v125 + v124) | 0x1538241AE0EEC06CLL)) ^ 0xBD1E04BFB93C1A14 ^ __ROR8__(v124, 61);
  v128 = (v126 + v127 - ((2 * (v126 + v127)) & 0xB565F1645E87885ELL) + 0x5AB2F8B22F43C42FLL) ^ 0x53F148C8CDBCE34;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  *(v88 + 61) = ((v89 >> 13) - ((v89 >> 12) & 0x64) - 78) ^ 0xB2 ^ (((v130 + v129 - ((2 * (v130 + v129)) & 0xF6D341F070BACD98) + 0x7B69A0F8385D66CCLL) ^ 0xBAAA682A9C982EE4) >> (8 * ((v88 + 61) & 7)));
  v131 = *(v3 + 32);
  v132 = *(v131 + 68);
  v133 = *(*v4 + ((*v9 & (((v131 + 62) & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v134 = (__ROR8__((v131 + 62) & 0xFFFFFFFFFFFFFFF8, 8) + v133) ^ a1;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ v7;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = __ROR8__(v136, 8);
  v139 = __ROR8__((0x4A09A675D66C65C1 - ((v138 + v137) | 0x4A09A675D66C65C1) + ((v138 + v137) | 0xB5F6598A29939A3ELL)) ^ 0x97838D4D11A6A3A5, 8);
  v140 = (0x4A09A675D66C65C1 - ((v138 + v137) | 0x4A09A675D66C65C1) + ((v138 + v137) | 0xB5F6598A29939A3ELL)) ^ 0x97838D4D11A6A3A5 ^ __ROR8__(v137, 61);
  v141 = (((2 * ((v139 + v140) ^ 0x424204F72AB5D459)) & 0x396832F14BBAF88ELL) - ((v139 + v140) ^ 0x424204F72AB5D459) - 0x1CB41978A5DD7C48) ^ 0x44A6F8C35E2A6B3CLL;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (v143 + v142 - ((2 * (v143 + v142)) & 0xC4379ED77706C74CLL) - 0x1DE43094447C9C5ALL) ^ 0x25C6069D77C6D487;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (0x9E33AF7701FAC6A3 - ((v146 + v145) | 0x9E33AF7701FAC6A3) + ((v146 + v145) | 0x61CC5088FE05395CLL)) ^ 0xC9EA702DA7D7E324;
  v148 = v147 ^ __ROR8__(v145, 61);
  v149 = __ROR8__(v147, 8);
  v150 = (0xB132F41F1BBFE9CBLL - ((v149 + v148) | 0xB132F41F1BBFE9CBLL) + ((v149 + v148) | 0x4ECD0BE0E4401634)) ^ 0x1140E7DE47D81C2FLL;
  v151 = v150 ^ __ROR8__(v148, 61);
  v152 = __ROR8__(v150, 8);
  *(v131 + 62) = ((v132 >> 5) - ((v132 >> 4) & 0x52) + 41) ^ 0x29 ^ (((v152 + v151 - ((2 * (v152 + v151)) & 0x681E51886D441C4ELL) - 0x4BF0D73BC95DF1D9) ^ 0x75CCE0169267460FLL) >> (8 * ((v131 + 62) & 7)));
  v153 = *(*v4 + ((*v9 & (((v131 + 63) & 0xFFFFFFF8 ^ 0x6E69ECB6) - 1956078367 + ((2 * ((v131 + 63) & 0xFFFFFFF8)) & 0xDCD3D960))) & 0xFFFFFFFFFFFFFFF8));
  v154 = __ROR8__((v131 + 63) & 0xFFFFFFFFFFFFFFF8, 8);
  v155 = (((2 * (v153 + v154)) & 0xA502D72C09D64CCLL) - (v153 + v154) - 0x52816B9604EB267) ^ 0xEC1B80F00EF71FELL;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ v7;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0x2275D4C73835399BLL;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0xE5AF1AB32EBD3CDDLL;
  v162 = __ROR8__(v161, 8);
  v163 = v161 ^ __ROR8__(v160, 61);
  v164 = (((2 * (v162 + v163)) & 0xF8B962721623C9BALL) - (v162 + v163) - 0x7C5CB1390B11E4DELL) ^ 0x447E873038ABAC03;
  v165 = v164 ^ __ROR8__(v163, 61);
  v166 = (__ROR8__(v164, 8) + v165) ^ 0xA82620A559D2DA78;
  v167 = v166 ^ __ROR8__(v165, 61);
  v168 = __ROR8__(v166, 8);
  v169 = (v168 + v167 - ((2 * (v168 + v167)) & 0x781FE43148FC928ALL) + 0x3C0FF218A47E4945) ^ 0x63821E2607E6435ELL;
  *(v131 + 63) = (((__ROR8__(v169, 8) + (v169 ^ __ROR8__(v167, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v131 + 63) & 7))) ^ (8 * v132);
  return (*(v6 + 8 * v8))();
}

uint64_t sub_100E02B8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = LODWORD(STACK[0xED4])++;
  *STACK[0x440] = v8 + 631038936;
  v9 = *STACK[0x450];
  v10 = 1534937323 * ((-2 - ((~(v7 - 240) | 0xFEB852314BEDD123) + ((v7 - 240) | 0x147ADCEB4122EDCLL))) ^ 0x33C0DAF38D032A64);
  *(v7 - 240) = (v4 + 1927870975) ^ v10;
  *(v7 - 220) = ((v4 + 1927870975) ^ 0x1D) - v10;
  *(v5 + 1048) = v9 ^ v10;
  *(v7 - 208) = v10 + v4 + 1927870975 - 4088;
  *(v7 - 204) = 593217887 - v10 + v4;
  *(v5 + 1064) = 5119 - v10;
  *(v7 - 200) = v10 ^ 1;
  v11 = (*(v6 + 8 * (v4 ^ (a4 - 954))))(v7 - 240);
  return (*(v6 + 8 * *(v7 - 224)))(v11);
}

uint64_t sub_100E02EC4()
{
  v3 = v0;
  v4 = (*(v2 + 8 * (v1 ^ 0x5E7B)))();
  (*(v2 + 8 * (v1 + 23177)))(STACK[0x4D0], STACK[0x530], v3, v4);
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100E02F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = *(v9 + 68) & 0x3F;
  v15 = *(*v10 + ((*STACK[0x4B8] & (((v9 + (*(v9 + 68) & 0x3F)) & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v16 = __ROR8__((v9 + v14) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (v16 + v15 - (((v16 + v15) << ((v8 ^ (a8 - 3)) - 11)) & 0x2F23F5948C0DBCFCLL) - 0x686E0535B9F92182) ^ 0x6387AB83D958E219;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v13;
  v20 = __ROR8__(v19, 8);
  v21 = v19 ^ __ROR8__(v18, 61);
  v22 = (((2 * (v20 + v21)) & 0xDEFD3009BAE4EDDCLL) - (v20 + v21) + 0x108167FB228D8911) ^ 0x32F4B33C1AB8B08ALL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x1819A9BB8C5D56D0) - (v24 + v23) - 0xC0CD4DDC62EAB68) ^ 0xE9A3CE6EE89397B5;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xC7DDC9F6CC45B721;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0x9DE1827681F038B6) - 0x310F3EC4BF07E3A5) ^ 0x66D6E19E192AC623;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v11;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  *(v9 + v14) = (((((2 * (v34 + v33)) & 0xA72A08E5432F20DELL) - (v34 + v33) + 0x2C6AFB8D5E686F90) ^ 0xEDA9335FFAAD27B8) >> (8 * ((v9 + v14) & 7))) ^ 0x80;
  return (*(v12 + 8 * ((6941 * (v14 > 0x37)) ^ v8)))();
}

uint64_t sub_100E033E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 3392) -= 128;
  v7 = *(v6 + 8 * v4);
  STACK[0x530] = v4 ^ 0x567F;
  return v7(v4 ^ 0xFFFFFFFFFFFF8BDBLL, 0xC1C3C8D2A4C54828, 0x813D9936E068C4B9, a4, *v5, v6, 0x2275D4C73835399BLL, 4191324567);
}

uint64_t sub_100E036F0(uint64_t a1, int a2, int a3)
{
  v8 = STACK[0x640] + 4 * ((v3 + 551 * a2) % ((a3 + 21024) ^ 0x6C89u));
  v9 = (*(*STACK[0x660] + (*v7 & STACK[0x658])) + 673210726 + v8);
  *(v8 - 0x34EE34220E8AC3B8) = (v8 * v6) ^ 0xA32579C9 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (*v4 ^ v5))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v9 + 2) & (*v4 ^ v5)));
  return (*(STACK[0x668] + 8 * (a3 + 17832)))((175 * v8));
}

uint64_t sub_100E03AA8(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x4F0]) = v4 ^ 0xC2C;
  *(a2 + 2176) = v3 + 0x3FBEFF77DBFF7DBCLL;
  *(a2 + 2184) = a1 + v2 + 1;
  v7 = (*(v5 + 8 * (v4 ^ 0x47CA)))((((v4 ^ 0xC2Cu) + 8208) ^ 0xFFFFA817) & (v6 + v2 + v3 + 0x3FBEFF77DBFF7DBCLL + 34));
  STACK[0xE48] = v7;
  return (*(v5 + 8 * ((2046 * (v7 == 0)) ^ v4)))();
}

uint64_t sub_100E03C9C()
{
  v2 = (64 - v0);
  v3 = STACK[0x4F0];
  v4 = *(STACK[0x540] + 8 * SLODWORD(STACK[0x4F0]));
  STACK[0x530] = v1;
  STACK[0x4D0] = v2;
  LODWORD(STACK[0x4C0]) = v3 - 15119;
  return v4(0xEB31963496E28202, 0xA6734E5B48EBEFFLL, 0x324502EC8734F620, v2 - 1, 1 - v2, (v3 - 15912), v1 + v0);
}

uint64_t sub_100E0435C()
{
  v4 = (*(v3 + 8 * (v2 + 14645)))(v0 - 0x4322B87CA9B2587);
  *v1 = 0x4322B87CA9B2587;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_100E04408()
{
  v3 = *(v0 - 0x683CBC57EAB92A36);
  STACK[0x10E8] = 0;
  LODWORD(STACK[0x1820]) = -769884012;
  STACK[0xE40] = 0;
  return (*(v2 + 8 * (((v3 == 0x308E083E0C524CBELL) * (((v1 | 0xE) - 10547) ^ 0x92B)) ^ (v1 | 0xE))))();
}

uint64_t sub_100E0455C()
{
  v2 = STACK[0x2088] + 10 + (v0 ^ 0xD21C8094);
  STACK[0x1CD0] = v2;
  return (*(v1 + 8 * ((32739 * (v2 <= STACK[0x2080])) ^ 0x3FF3)))();
}

uint64_t sub_100E046AC@<X0>(int a1@<W8>)
{
  v3 = a1 + 2120254144;
  v4 = (*(v2 + 8 * (a1 + 2120271645)))(v1);
  return (*(v2 + 8 * v3))(v4);
}

uint64_t sub_100E0471C()
{
  v5 = *(v1 + v3 * v4 + 36);
  v7 = v5 != 1655636836 && (v5 + 491846811) < 0x80000004;
  return (*(v2 + 8 * ((v7 * (((v0 - 211151676) & 0xC95FF2B) + 10406)) ^ v0)))();
}

uint64_t sub_100E04784()
{
  v5 = 1534937323 * (v0 ^ 0xCD7888C2C6EEFB47);
  *(v1 + 1040) = STACK[0x578] ^ v5;
  *(v4 - 224) = v5;
  *(v4 - 220) = v5 ^ (v2 + 2120236533) ^ 0x6F1A9454;
  *(v1 + 1064) = v5;
  *(v4 - 208) = ((v2 + 2120236533) ^ 0x6F1A94AD) + v5;
  *(v4 - 232) = ((v2 + 2120236533) | 0x6F1A9AD8) - v5;
  *(v4 - 228) = v5 + v2 - 723214290;
  v6 = (*(v3 + 8 * (v2 + 2120268328)))(v4 - 240);
  return (*(v3 + 8 * *(v4 - 204)))(v6);
}

uint64_t sub_100E048C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, int a58, int a59, int a60, int a61, uint64_t a62, uint64_t a63)
{
  if (*(v68 - 208))
  {
    a60 = a61;
  }

  v70 = (*(v68 - 208) & 2) == 0;
  v71 = STACK[0x32C];
  if ((*(v68 - 208) & 2) == 0)
  {
    v71 = STACK[0x328];
  }

  LODWORD(STACK[0x328]) = v71;
  v72 = STACK[0x2D4];
  if (!v70)
  {
    v72 = a59;
  }

  LODWORD(STACK[0x330]) = v72;
  if (v70)
  {
    a64 = a58;
  }

  LODWORD(STACK[0x36C]) = a64;
  v74 = STACK[0x340];
  if (!v70)
  {
    v74 = STACK[0x33C];
  }

  LODWORD(STACK[0x2D4]) = v74;
  v75 = STACK[0x338];
  if (!v70)
  {
    v75 = STACK[0x334];
  }

  LODWORD(STACK[0x334]) = v75;
  v76 = *(v68 - 224);
  LODWORD(STACK[0x2AC]) = a60;
  if (!v70)
  {
    v76 = a60;
  }

  LODWORD(STACK[0x2B0]) = v76;
  v77 = (*(v68 - 212) & 2) == 0;
  if ((*(v68 - 212) & 2) != 0)
  {
    a67 = a65;
  }

  LODWORD(STACK[0x33C]) = a67;
  v79 = STACK[0x2C8];
  if (v77)
  {
    v79 = STACK[0x2C4];
  }

  LODWORD(STACK[0x340]) = v79;
  v80 = STACK[0x2BC];
  if (!v77)
  {
    v80 = a57;
  }

  LODWORD(STACK[0x32C]) = v80;
  v81 = a1 - 0x40CA0B9628973324 + ((a1 - 0x40CA0B9628973324) >> 25) - ((a1 - 0x40CA0B9628973324 + ((a1 - 0x40CA0B9628973324) >> 25)) >> 8);
  v82 = v81 + (v81 >> 4);
  v83 = v82 + 0xE035DB6131EBC0 - ((v82 + 0xE035DB6131EBC0) >> 31) + ((v82 + 0xE035DB6131EBC0 - ((v82 + 0xE035DB6131EBC0) >> 31)) >> 14);
  v84 = ((v83 - (v83 >> 1)) ^ 0x1A8B475777D3265BLL) + (((v83 - (v83 >> 1)) ^ 0x1A8B475777D3265BLL) >> 31) - ((((v83 - (v83 >> 1)) ^ 0x1A8B475777D3265BLL) + (((v83 - (v83 >> 1)) ^ 0x1A8B475777D3265BLL) >> 31)) >> 10);
  v85 = v84 + (v84 >> 6) - 0x3259015CC5171466 + ((v84 + (v84 >> 6) - 0x3259015CC5171466) >> 25) + ((v84 + (v84 >> 6) - 0x3259015CC5171466 + ((v84 + (v84 >> 6) - 0x3259015CC5171466) >> 25)) >> 9);
  v86 = v85 + (v85 >> 5);
  LODWORD(v82) = v86 ^ v82;
  v87 = v86 + 0x15B4105CAF67042ELL - ((v86 + 0x15B4105CAF67042ELL) >> 24) + ((v86 + 0x15B4105CAF67042ELL - ((v86 + 0x15B4105CAF67042ELL) >> 24)) >> 12);
  v88 = v87 - (v87 >> 1) - 0x4646582407D314FELL + ((v87 - (v87 >> 1) - 0x4646582407D314FELL) >> 26) + ((v87 - (v87 >> 1) - 0x4646582407D314FELL + ((v87 - (v87 >> 1) - 0x4646582407D314FELL) >> 26)) >> 12);
  v89 = v88 + (v88 >> 4) + 0x7C01769D0109A649 - ((v88 + (v88 >> 4) + 0x7C01769D0109A649) >> 25) - ((v88 + (v88 >> 4) + 0x7C01769D0109A649 - ((v88 + (v88 >> 4) + 0x7C01769D0109A649) >> 25)) >> 15);
  return (*(*(v68 - 184) + 8 * v67))(3104078084, 2050714000, v82 ^ a7 ^ (v89 + (v89 >> 7)));
}

uint64_t sub_100E04C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8 + 2120249456;
  v9 = STACK[0x540];
  v10 = (*(STACK[0x540] + 8 * (a8 + 2120268423)))(STACK[0xD10], 0);
  return (*(v9 + 8 * v8))(v10);
}

uint64_t sub_100E04DBC()
{
  v4 = *(v3 + 8 * (v0 ^ 0x734B ^ ((((v1 & (v0 ^ v1) | (v1 - v0) & ~(v0 ^ v1)) >> (((v0 + 97) | 0x84) + 32)) & 1) * (v0 + 26))));
  STACK[0x530] = v2;
  return v4();
}

uint64_t sub_100E04E84()
{
  v3 = *(v1 + 296);
  STACK[0xD38] = v3;
  return (*(v2 + 8 * ((((((v0 + 1433930262) & 0xAA87DF07) + 7606) ^ (v0 + 1744)) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_100E04FC0()
{
  v4 = v1 + v0;
  v5 = (*(v3 + 8 * (v1 ^ (v1 - 971))))(*(v2 + 1328));
  return (*(v3 + 8 * ((v1 ^ (v1 + 1)) + v4 + 12515)))(v5);
}

uint64_t sub_100E05068()
{
  v4 = STACK[0x1310];
  STACK[0x14F0] = &STACK[0x2280] + STACK[0x1310];
  STACK[0x1310] = v4 + 48;
  STACK[0x18D8] = v0;
  STACK[0x610] = 0x55A8D952E5D4689ELL;
  STACK[0x6F8] = 0x683CBC57EAB92A3ELL;
  STACK[0xF00] = v1;
  return (*(v3 + 8 * ((41 * (v1 == 0x79CEC8CF5A6FCEBALL)) ^ (v2 - 2120233545))))();
}

uint64_t sub_100E05138(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(v9 + 1160);
  a1[331] = a1[128];
  a1[377] = v11;
  LODWORD(STACK[0x1B74]) = 711052740;
  return (*(v10 + 8 * (a8 + v8)))();
}

uint64_t sub_100E05174()
{
  *(v4 - 240) = v0 + 410706167 * ((~((v4 - 240) | 0x815A03CA) + ((v4 - 240) & 0x815A03CA)) ^ 0xE57AD063) - 8651;
  (*(v3 + 8 * (v0 ^ 0x3E08)))(v4 - 240);
  *(*(v1 + 8) + v2) = 0xD38CBDD3ACAFF84ALL;
  return (*(v3 + 8 * v0))(*(v1 + 8));
}

uint64_t sub_100E0520C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x1815)))(*STACK[0x1AB8] + (LOWORD(STACK[0x19BE]) ^ 0xF2A9));
  STACK[0x7B8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 - 20906) | 0x4C) - 2120241349) ^ ((v0 + 204253) | 0x819C4004))) ^ v0)))();
}

uint64_t sub_100E052E4@<X0>(int a1@<W3>, char a2@<W4>, uint64_t a3@<X8>)
{
  v8 = v6 - 1;
  *(a3 + v8) = *(v3 + v8) + (v5 & a2) - 2 * (*(v3 + v8) & 0xF) - 52;
  return (*(v7 + 8 * (((v8 == 0) * a1) ^ v4)))();
}

uint64_t sub_100E0531C(unint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, int a6, uint64_t a7, int a8)
{
  v22 = *(a3 + (((a1 * v21) >> 64) >> 10) * a7);
  LOBYTE(v22) = *(v13 + a8 + (v22 | ((v22 < (v10 + 29)) << 8)) * v12 - ((((a8 + (v22 | ((v22 < (v10 + 29)) << 8)) * v12) * v14) >> 32) >> 9) * v9);
  v23 = v22 & v15 ^ v16;
  v24 = v22 ^ 0x20;
  *(v17 + 4 * (v19 - (((v19 * a5) >> 32) >> 12) * a6)) = (v22 ^ (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v24 & (2 * (v22 & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ (v8 + 37);
  return (*(v20 + 8 * (((a4 == 0) * v18) ^ v11)))(a1 + 1633, a2, a3 + 1633, (a4 - 1));
}

uint64_t sub_100E0549C(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a1 + v8;
  *(v10 + 25) = a2;
  *(v10 + 41) = a2;
  return (*(v9 + 8 * ((2 * (((v7 == v8) ^ (a5 + v5 - 15)) & 1)) & 0xFB | (4 * (((v7 == v8) ^ (a5 + v5 - 15)) & 1)) | (v6 - 200))))();
}

uint64_t sub_100E054E0@<X0>(int a1@<W4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v13 = a1 - 161907981 + ((a2 + 798030734) & 0xD06EF7F6) - 13181;
  v14 = a12 - 1187688937 < v13;
  if ((a12 - 1187688937) < 0xFB72DD73 != v13 < 0xFB72DD73)
  {
    v14 = v13 < 0xFB72DD73;
  }

  return (*(v12 + 8 * ((v14 | (4 * v14)) ^ a2)))();
}

uint64_t sub_100E05560(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  v21 = a18 + v18 - 1222633504;
  v22 = v21 + v19 - 1893983582 > a1 - 1979508850;
  if ((a1 - 1979508850) < 0x8F1C59B5 != v21 > 0x70E3A64A)
  {
    v22 = v21 > 0x70E3A64A;
  }

  return (*(v20 + 8 * ((v22 * (((v19 - 316145572) & 0x12D7EDF8) - 11613)) ^ v19)))();
}

uint64_t sub_100E055FC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x11DC]) = a1;
  v4 = (&STACK[0x2280] + STACK[0x1310]);
  STACK[0x1310] += 16;
  *v4 = 0;
  v5 = (*(v3 + 8 * (v2 + 15183)))(0, v4) == 0;
  return (*(v3 + 8 * (((((v2 - 90) ^ v5) & 1) * ((v2 - 2120253267) ^ (v1 + 22))) ^ v2)))();
}

uint64_t sub_100E05860()
{
  v3 = STACK[0x608];
  v4 = STACK[0xEB0];
  STACK[0x25D0] = *STACK[0xAA0];
  *(v2 - 220) = (v0 + 2049906769) ^ (711523751 * ((((v2 - 240) | 0xE23F50D9) - (v2 - 240) + ((v2 - 240) & 0x1DC0AF20)) ^ 0xD2257108));
  STACK[0x25E8] = v3;
  STACK[0x25D8] = v4;
  v5 = (*(v1 + 8 * (v0 + 15579)))(v2 - 240);
  return (*(v1 + 8 * v0))(v5);
}

uint64_t sub_100E05920(uint64_t a1, uint64_t a2)
{
  v5 = STACK[0x1270];
  *(v2 + 1424) = *(v4 + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0xF56 ^ (8061 * ((v3 - 1939128405) > 0x7258106D)))))(a1, a2, v5);
}

uint64_t sub_100E05A14(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v20 = v17 + v10;
  *v12 = *(v20 + 2) ^ v16;
  v12[1] = *(v17 + v11) ^ v18;
  v12[2] = *(v20 + 3) ^ 1;
  v12[3] = *(v17 + (((v8 + a8) | v14) ^ (a2 - 1) | v10)) ^ v19;
  v21 = v10 + 4 + a6;
  v23 = v9 < a6 || v9 > v21;
  return (*(v15 + 8 * ((v23 * v13) ^ v8)))();
}

uint64_t sub_100E05B80()
{
  LODWORD(STACK[0x1108]) = v0;
  v2 = LOWORD(STACK[0x1CFE]);
  STACK[0x18B8] = STACK[0x1D00];
  return (*(v1 + 8 * ((13718 * (v2 == 62543)) ^ 0x5E5A)))();
}

uint64_t sub_100E06024(uint64_t a1)
{
  LODWORD(STACK[0x29C]) = (((2 * (v1 + 12040)) ^ 0xFC18) + 1665815953) ^ LODWORD(STACK[0x21C]);
  LODWORD(STACK[0x298]) = LODWORD(STACK[0x220]) ^ 0x7CA052EE;
  return (*(v2 + 8 * (v1 + 12040)))(a1, *(v3 - 256), *(v3 - 248), LODWORD(STACK[0x2A8]), LODWORD(STACK[0x2A4]), LODWORD(STACK[0x2A0]));
}

uint64_t sub_100E06138()
{
  v1 = STACK[0xAB0];
  v2 = &STACK[0x1D80] + STACK[0xAB0];
  STACK[0x1368] = v2;
  STACK[0xAB0] = v1 + 128;
  v3 = (*(v0 + 254680))(v2, 0, 120);
  STACK[0xEA8] = v2;
  LODWORD(STACK[0x1104]) = 105532149;
  return (*(v0 + 162672))(v3);
}

uint64_t sub_100E06218@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 232) = (v2 + 231976188) ^ (1917435887 * ((v5 - 2013182630 - 2 * ((v5 - 240) & 0x8801464A)) ^ 0x6EBA1D4C));
  *(v3 + 1040) = a1;
  v6 = (*(v4 + 8 * (v2 ^ 0x8B77C03F)))(v5 - 240);
  return (*(v4 + 8 * (((v2 ^ 0x8B77D0CB ^ (v1 + 3741)) + v2) ^ (11611 * (v2 == 224660200)))))(v6);
}

uint64_t sub_100E064C4()
{
  *(v2 - 232) = -1606498426 - 16169987 * ((v2 - 240) ^ 0x558E3528) + v0 + 3666;
  (*(v1 + 8 * (v0 + 30966)))(v2 - 240);
  STACK[0x680] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((v0 + 6816) ^ v0)))(2174744536);
}

uint64_t sub_100E06634()
{
  LODWORD(STACK[0x1554]) = v2;
  v5 = 1534937323 * ((0x8603DC72E0E7E78 - ((v4 - 240) | 0x8603DC72E0E7E78) + ((v4 - 240) | 0xF79FC238D1F18187)) ^ 0x3AE74AFA171F7AC0);
  STACK[0x25E8] = v5;
  *(v4 - 208) = ((v0 - 2095175382) ^ 0x36) + v5;
  STACK[0x25D0] = v1 ^ v5;
  *(v4 - 232) = ((v0 - 2095175382) ^ 0x10AA) - v5;
  *(v4 - 228) = v5 + v0 - 723214290;
  *(v4 - 224) = v5;
  *(v4 - 220) = (v0 - 2095175382) ^ v5;
  v6 = (*(v3 + 8 * (v0 + 2120268328)))(v4 - 240);
  return (*(v3 + 8 * *(v4 - 204)))(v6);
}

uint64_t sub_100E06718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18.i64[0] = v5 + v6;
  v18.i64[1] = v5 + v6 + 1;
  *&v19 = v5 + v6 + 14;
  *(&v19 + 1) = v5 + v6 + 15;
  *&STACK[0x8A0] = v19;
  *&v19 = v5 + v6 + 12;
  *(&v19 + 1) = v5 + v6 + 13;
  *&STACK[0x890] = v19;
  v20.i64[0] = v5 + v6 + 6;
  v20.i64[1] = v5 + v6 + 7;
  v21.i64[0] = v5 + v6 + 2;
  v21.i64[1] = v5 + v6 + 3;
  v22.i64[0] = v8 + v6 + (v10 | (a5 + 256));
  v22.i64[1] = v5 + v6 + 5;
  v23 = *&STACK[0x850];
  v24 = vandq_s8(v21, *&STACK[0x850]);
  v25 = vandq_s8(v20, *&STACK[0x850]);
  v26 = vandq_s8(v18, *&STACK[0x850]);
  v27 = vandq_s8(v22, *&STACK[0x850]);
  v28 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v29 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v30 = vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v32 = v16;
  v33 = vaddq_s64(v29, v16);
  v34 = vaddq_s64(v28, v16);
  v35 = veorq_s8(v34, *&STACK[0x810]);
  v36 = veorq_s8(v33, *&STACK[0x810]);
  v37 = veorq_s8(v33, v15);
  v38 = veorq_s8(v34, v15);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v38);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v37);
  v41 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v39, v39), *&STACK[0x800]), v39), v14), *&STACK[0x7F0]);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL);
  v43 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v40, v40), *&STACK[0x800]), v40), v14), *&STACK[0x7F0]);
  v44 = *&STACK[0x7F0];
  v45 = veorq_s8(v41, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v46 = veorq_s8(v43, v42);
  v47 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v45), v13);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v46), v13);
  v49 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v50 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v49);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v50);
  v53 = *&STACK[0x7E0];
  v54 = *&STACK[0x7D0];
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v51, v12), vorrq_s8(v51, *&STACK[0x7E0])), *&STACK[0x7E0]), *&STACK[0x7D0]);
  v56 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v52, v12), vorrq_s8(v52, *&STACK[0x7E0])), *&STACK[0x7E0]), *&STACK[0x7D0]);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v59 = veorq_s8(v55, v56);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58);
  v62 = *&STACK[0x7C0];
  v63 = *&STACK[0x7B0];
  v64 = *&STACK[0x7A0];
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v60, v60), *&STACK[0x7C0]), v60), *&STACK[0x7B0]), *&STACK[0x7A0]);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), *&STACK[0x7C0]), v61), *&STACK[0x7B0]), *&STACK[0x7A0]);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = *&STACK[0x790];
  v73 = *&STACK[0x780];
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, *&STACK[0x790]), vorrq_s8(v71, v17)), v17), *&STACK[0x780]);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, *&STACK[0x790]), vorrq_s8(v70, v17)), v17), *&STACK[0x780]);
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v77 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v80 = *&STACK[0x830];
  v81 = veorq_s8(vaddq_s64(v78, v76), *&STACK[0x830]);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(v79, v77), *&STACK[0x830]);
  v85 = veorq_s8(v84, v83);
  v86 = veorq_s8(v81, v82);
  v87 = v13;
  v88 = v12;
  v89 = *&STACK[0x810];
  v90 = *&STACK[0x800];
  v91 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v93.i64[0] = v5 + v6 + 10;
  v93.i64[1] = v5 + v6 + 11;
  *&STACK[0x870] = v93;
  v94 = vaddq_s64(v30, v32);
  v95 = *&STACK[0x820];
  v96 = *&STACK[0x770];
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v91, v86), *&STACK[0x820]), vnegq_s64(vandq_s8(vshlq_n_s64(v18, 3uLL), *&STACK[0x770])));
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v92, v85), *&STACK[0x820]), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), *&STACK[0x770])));
  v97 = veorq_s8(v94, v89);
  v98 = veorq_s8(v94, v15);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), v90), v99), v14), v44);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v87);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v104, v88), vorrq_s8(v104, v53)), v53), v54);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v62), v107), v63), v64);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v110, v72), vorrq_s8(v110, v17)), v17), v73);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v80);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v113.i64[0] = v5 + v6 + 8;
  v113.i64[1] = v5 + v6 + 9;
  *&STACK[0x880] = v113;
  v116 = vaddq_s64(v115, v114);
  v117 = vandq_s8(v113, v23);
  v118 = vaddq_s64(v31, v32);
  v199.val[1] = vshlq_u64(veorq_s8(v116, v95), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v96)));
  v119 = veorq_s8(v118, v89);
  v120 = veorq_s8(v118, v15);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), v90), v121), v14), v44);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v87);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v88), vorrq_s8(v126, v53)), v53), v54);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v62), v129), v63), v64);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v132, v72), vorrq_s8(v132, v17)), v17), v73);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v80);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v138 = vandq_s8(v93, v23);
  v139 = vaddq_s64(v137, v136);
  v140 = vandq_s8(*&STACK[0x890], v23);
  v199.val[2] = vshlq_u64(veorq_s8(v139, v95), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v96)));
  v141 = vandq_s8(*&STACK[0x8A0], v23);
  v142 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v32);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v32);
  v146 = v87;
  v23.i64[0] = vqtbl4q_s8(v199, *&STACK[0x840]).u64[0];
  v199.val[0] = veorq_s8(v145, v89);
  v199.val[1] = veorq_s8(v144, v89);
  v147 = veorq_s8(v144, v15);
  v148 = veorq_s8(v145, v15);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v148);
  v199.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v147);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v199.val[1], v199.val[1]), v90), v199.val[1]), v14), v44);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v199.val[0], v199.val[0]), v90), v199.val[0]), v14), v44);
  v199.val[2] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v149 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v150 = veorq_s8(v199.val[1], v199.val[2]);
  v199.val[2] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v150);
  v199.val[1] = veorq_s8(vaddq_s64(v199.val[2], v149), v87);
  v199.val[0] = veorq_s8(v199.val[0], v87);
  v199.val[2] = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v151 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v152 = veorq_s8(v199.val[1], v199.val[2]);
  v199.val[2] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v152);
  v199.val[1] = vaddq_s64(v199.val[2], v151);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[0], v88), vorrq_s8(v199.val[0], v53)), v53), v54);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[1], v88), vorrq_s8(v199.val[1], v53)), v53), v54);
  v153 = veorq_s8(v199.val[1], vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v154);
  v199.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v153);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), v62), v199.val[1]), v63), v64);
  v199.val[2] = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v62), v199.val[0]), v63), v64);
  v155 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v156 = veorq_s8(v199.val[1], v199.val[2]);
  v199.val[2] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v156);
  v199.val[1] = vaddq_s64(v199.val[2], v155);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[0], v72), vorrq_s8(v199.val[0], v17)), v17), v73);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[1], v72), vorrq_s8(v199.val[1], v17)), v17), v73);
  v157 = veorq_s8(v199.val[1], vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v199.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v157), v80);
  v199.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v158), v80);
  v159 = vaddq_s64(v142, v32);
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), veorq_s8(v199.val[1], vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL))), v95), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x8A0], 3uLL), v96)));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL))), v95), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x890], 3uLL), v96)));
  v160 = veorq_s8(v159, v89);
  v161 = veorq_s8(v159, v15);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v90), v162), v14), v44);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v146);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, v88), vorrq_s8(v167, v53)), v53), v54);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), v62), v170), v63), v64);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, v72), vorrq_s8(v173, v17)), v17), v73);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v80);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL)));
  v178 = vaddq_s64(v143, v32);
  v199.val[1] = vshlq_u64(veorq_s8(v177, v95), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x870], 3uLL), v96)));
  v179 = veorq_s8(v178, v89);
  v180 = veorq_s8(v178, v15);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), v90), v181), v14), v44);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v146);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, v88), vorrq_s8(v186, v53)), v53), v54);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189, v189), v62), v189), v63), v64);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v72), vorrq_s8(v192, v17)), v17), v73);
  v194 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v196 = veorq_s8(v193, v194);
  v197 = veorq_s8(vaddq_s64(v195, v196), v80);
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL))), v95), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x880], 3uLL), v96)));
  v23.i64[1] = vqtbl4q_s8(v199, *&STACK[0x840]).u64[0];
  *(v5 + v6) = v23;
  return (*(v11 + 8 * ((v9 != v6) ^ v7)))();
}

uint64_t sub_100E071C0@<X0>(uint64_t a1@<X8>)
{
  (*(v3 + 8 * (v1 + 12824)))(a1);
  *(*(v2 + 3040) + 24) = 0;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100E07204()
{
  STACK[0x19C0] = v0;
  LOWORD(STACK[0x15DE]) = 23;
  LODWORD(STACK[0x1214]) = 1892652425;
  return (*(v2 + 352 * (v1 ^ 0x28C9)))();
}

uint64_t sub_100E0725C()
{
  *(v0 + 2944) = v1;
  LODWORD(STACK[0x1184]) = STACK[0x1644];
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100E0727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 656) = v7;
  LOWORD(STACK[0x15DE]) = 37;
  LODWORD(STACK[0x1214]) = -1107660428;
  return (*(v10 + 8 * v9))(a1, a2, a3, a4, a5, a6, a7, 2174730764);
}

uint64_t sub_100E07334(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int8x16_t a11, uint64_t a12, uint64_t a13, int64x2_t a14, int8x16_t a15, int64x2_t a16, int8x16_t a17, int8x16_t a18, int64x2_t a19, int8x16_t a20, int8x16_t a21, int64x2_t a22, int8x16_t a23, int8x16_t a24, int8x16_t a25, int8x16_t a26, int8x16_t a27, int64x2_t a28, int8x16_t a29, int64x2_t a30, int8x16_t a31, int8x16_t a32, int64x2_t a33, int64x2_t a34, int8x16_t a35)
{
  v45 = v36 + a4 + v43;
  v46.i64[0] = v36 + a4 + v40;
  v47.i64[0] = v36 + a4 + v37;
  v47.i64[1] = v36 + a4 + v41;
  v48.i64[0] = v36 + a4 + v42;
  v46.i64[1] = v45 + (((a1 - 16) | 1u) ^ 0xFFFFFFFFFFFFB7B9) + 4;
  *&STACK[0x790] = v46;
  v48.i64[1] = v45;
  v49.i64[0] = v36 + a4 + v38;
  v49.i64[1] = v36 + a4 - 0x3FBBC74D6FF8DEE5;
  v50 = vandq_s8(v49, *&STACK[0x5C0]);
  v51 = vandq_s8(v48, *&STACK[0x5C0]);
  v52 = vandq_s8(v47, *&STACK[0x5C0]);
  v53 = vandq_s8(v46, *&STACK[0x5C0]);
  v54 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v57 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v58 = vaddq_s64(v57, a34);
  *&STACK[0x780] = vbslq_s8(a32, vsubq_s64(a33, v54), vaddq_s64(v54, a34));
  v59 = vsubq_s64(a33, v57);
  v60 = vbslq_s8(a32, vsubq_s64(a33, v55), vaddq_s64(v55, a34));
  v61 = vbslq_s8(a32, vsubq_s64(a33, v56), vaddq_s64(v56, a34));
  v62 = vbslq_s8(a32, v59, v58);
  v63 = veorq_s8(v62, a35);
  v64 = veorq_s8(v61, a35);
  v65 = veorq_s8(v61, a24);
  v66 = veorq_s8(v62, a24);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v65);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v68, vandq_s8(vaddq_s64(v68, v68), a31)), a30), a29);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(v67, vandq_s8(vaddq_s64(v67, v67), a31)), a30), a29);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), a23), v76), a22), a21);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), a23), v75), a22), a21);
  v79 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v83, a20), vorrq_s8(v83, a28)), a28), a27);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, a20), vorrq_s8(v84, a28)), a28), a27);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v88);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v89, a26), vorrq_s8(v89, a19)), a19), a18);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v90, a26), vorrq_s8(v90, a19)), a19), a18);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v94);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), a17)), a16), a15);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), a17)), a16), a15);
  v99 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v101);
  v104 = veorq_s8(vaddq_s64(v102, v100), *&STACK[0x660]);
  v105 = veorq_s8(v103, *&STACK[0x660]);
  v106 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v107 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, v106));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v107);
  v151.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v108, v108), *&STACK[0x200]), v108), a14), a25), vnegq_s64(vandq_s8(vshlq_n_s64(v49, 3uLL), a11)));
  v151.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v109, v109), *&STACK[0x200]), v109), a14), a25), vnegq_s64(vandq_s8(vshlq_n_s64(v48, 3uLL), a11)));
  v110 = veorq_s8(v60, a35);
  v111 = veorq_s8(v60, a24);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), a31)), a30), a29);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v115, v115), a23), v115), a22), a21);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, a20), vorrq_s8(v118, a28)), a28), a27);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, a26), vorrq_s8(v121, a19)), a19), a18);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(v124, vandq_s8(vaddq_s64(v124, v124), a17)), a16), a15);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), *&STACK[0x660]);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL)));
  v151.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), *&STACK[0x200]), v128), a14), a25), vnegq_s64(vandq_s8(vshlq_n_s64(v47, 3uLL), a11)));
  v129 = veorq_s8(*&STACK[0x780], a35);
  v130 = veorq_s8(*&STACK[0x780], a24);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(v131, vandq_s8(vaddq_s64(v131, v131), a31)), a30), a29);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), a23), v134), a22), a21);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v137, a20), vorrq_s8(v137, a28)), a28), a27);
  v139 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v141 = veorq_s8(v138, v139);
  v142 = vaddq_s64(v140, v141);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v142, a26), vorrq_s8(v142, a19)), a19), a18);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(v145, vandq_s8(vaddq_s64(v145, v145), a17)), a16), a15);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), *&STACK[0x660]);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL)));
  v151.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v149, v149), *&STACK[0x200]), v149), a14), a25), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x790], 3uLL), a11)));
  *(v45 - 4) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v151, v44)), *(a5 + v35));
  return (*(v39 + 8 * ((4690 * (a2 == a3)) ^ a1)))();
}

uint64_t sub_100E07A58()
{
  v1[214] = &STACK[0x2261];
  v3 = STACK[0x688];
  v1[215] = STACK[0x688];
  v4 = STACK[0x1310];
  v1[216] = &STACK[0x2280] + STACK[0x1310];
  STACK[0x1310] = (v0 - 9056) + v4 - 11244;
  return (*(v2 + 8 * (((v3 == 0) * (((v0 - 1917624221) & 0x724C577A) - 1870)) ^ v0)))();
}

uint64_t sub_100E07AEC@<X0>(int a1@<W0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v9 = ((2 * (v6 + a1)) & 0x7FEAF5C6) + ((v6 + a1) ^ 0x17FEFB773FF57AE3) + *(a4 - 0x1883660EE8144416);
  v10 = v9 + (((v5 + 239091) | 0x819C020C) ^ 0xE801048841954711);
  v11 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = v11 - ((2 * v11 + 0x9827CF4CE56C3ECLL) & 0x3957F10543DB6692) + 0x416D36FD0919153FLL;
  v13 = __ROR8__(v12 ^ 0x17B34518C320E509, 8);
  v12 ^= 0x31BAB6CBFA7BEABCuLL;
  v14 = (v13 + v12) ^ 0x9D63C3648794ABC0;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x893772B00383F7DCLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0xD6B62F72DA3AF558) - 0x14A4E84692E28554) ^ 0xC3791E20E6C1DACFLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a2;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v23 + v22 - ((2 * (v23 + v22)) & 0x2FDC4994DED0F27ELL) + 0x17EE24CA6F68793FLL) ^ 0x1232289882D5A91ALL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v7;
  v27 = __ROR8__(v26, 8);
  v28 = __ROR8__(v25, 61);
  *v10 = (((((2 * (v27 + (v26 ^ v28))) | 0x92B6D773076E6100) - (v27 + (v26 ^ v28)) + 0x36A494467C48CF80) ^ 0x969F7B97163778FDLL) >> (8 * ((v9 + (((v5 - 13) | 0xC) ^ 0x11)) & 7))) ^ HIBYTE(v4) ^ 0xD3;
  v9 -= 0x17FEFB773FF57AE2;
  v29 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = v29 - ((2 * v29 + 0x49827CF4CE56C3ECLL) & 0xC99C1DCC454814BCLL) - 0x7670B29F763093ACLL;
  v31 = v30 ^ 0x6FD6B37C40695C1ELL;
  v30 ^= 0x49DF40AF793253ABuLL;
  v32 = (__ROR8__(v31, 8) + v30) ^ 0x9D63C3648794ABC0;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0xB386C3C7855383A0) - 0x263C9E1C3D563E30) ^ 0x50F41353C12A360CLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x282209998BDCA063;
  v38 = __ROR8__(v37, 8);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = (((v38 + v39) | 0xE9F260E3A806A857) - ((v38 + v39) | 0x160D9F1C57F957A8) + 0x160D9F1C57F957A8) ^ 0x7618F1A5397C8CCLL;
  v41 = __ROR8__(v40, 8);
  v42 = v40 ^ __ROR8__(v39, 61);
  v43 = (((2 * (v41 + v42)) | 0x3B9F87464EC80908) - (v41 + v42) + 0x62303C5CD89BFB7CLL) ^ 0x9813CFF1CAD9D4A1;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((2 * (v45 + v44)) & 0xD1A48FD1CB971A3ALL) - (v45 + v44) - 0x68D247E8E5CB8D1ELL) ^ 0xB9809546FD35F536;
  *v9 = (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v44, 61))) ^ 0x5FC4102E9580487DLL) >> (8 * (v9 & 7u))) ^ BYTE6(v4) ^ 0x8C;
  v47 = __ROR8__((v9 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = ((2 * (v47 + a3)) | 0xE03B6E28800C33FELL) - (v47 + a3) - 0x701DB714400619FFLL;
  v49 = v48 ^ 0xFB050A8E22CB4FBFLL;
  v48 ^= 0xDD0CF95D1B90400ALL;
  v50 = __ROR8__(v49, 8);
  v51 = (((2 * (v50 + v48)) | 0xA87531EBA9B966ALL) - (v50 + v48) + 0x7ABC5670A2B234CBLL) ^ 0x18206AEBDAD960F5;
  v52 = v51 ^ __ROR8__(v48, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x893772B00383F7DCLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((2 * (v55 + v54)) & 0xD83815A221AB35C8) - (v55 + v54) - 0x6C1C0AD110D59AE5) ^ 0xBBC1FCB764F6C578;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((v58 + v57) | 0xDB1ADE0A8B89D38) - ((v58 + v57) | 0xF24E521F574762C7) - 0xDB1ADE0A8B89D39) ^ 0xE32242195329FDA3;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x5DC0C52EDBDD025;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((v63 + v62) | 0x14A48C87F68CDAE5) - ((v63 + v62) | 0xEB5B73780973251ALL) - 0x14A48C87F68CDAE6) ^ 0x3A09A1D6118D5D31;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  *(v9 + 1) = (((((v66 + v65) | 0xD7450D9785850C8BLL) - ((v66 + v65) | 0x28BAF2687A7AF374) + 0x28BAF2687A7AF374) ^ 0x88811DB9100544F6) >> (8 * ((v9 + 1) & 7))) ^ BYTE5(v4) ^ 0xBD;
  v67 = __ROR8__((v9 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = -2 - (((0x5B3EC18598D49E09 - v67) | 0x214CCD444D3DA228) + ((v67 + 0x24C13E7A672B61F6) | 0xDEB332BBB2C25DD7));
  v69 = __ROR8__(v68 ^ 0xAA5470DE2FF0F468, 8);
  v68 ^= 0x8C5D830D16ABFBDDLL;
  v70 = (v69 + v68) ^ 0x9D63C3648794ABC0;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x893772B00383F7DCLL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x282209998BDCA063;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (((2 * (v76 + v75)) | 0xA86919FDD4060E30) - (v76 + v75) - 0x54348CFEEA030718) ^ 0xBAA7630711926783;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x5DC0C52EDBDD025;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v7;
  v82 = __ROR8__(v81, 8);
  v83 = __ROR8__(v80, 61);
  *(v9 + 2) = (((((v82 + (v81 ^ v83)) ^ 0x4E7DD96BC7B5F115) - ((2 * ((v82 + (v81 ^ v83)) ^ 0x4E7DD96BC7B5F115)) & 0x37F102CB054546F6) + 0x1BF8816582A2A37BLL) ^ 0xA414820D0971A13uLL) >> (8 * ((v9 + 2) & 7))) ^ BYTE4(v4) ^ 0xD3;
  v84 = __ROR8__((v9 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v85 = -2 - (((0x1B3EC18598D49E09 - v84) | 0xC146854EDF38E771) + ((v84 + a3) | 0x3EB97AB120C7188ELL));
  v86 = v85 ^ 0x4A5E38D4BDF5B131;
  v85 ^= 0x6C57CB0784AEBE84uLL;
  v87 = __ROR8__(v86, 8);
  v88 = (((2 * (v87 + v85)) & 0x5B856D54EE81EBEELL) - (v87 + v85) + 0x523D495588BF0A08) ^ 0xCF5E8A310F2BA1C8;
  v89 = v88 ^ __ROR8__(v85, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x893772B00383F7DCLL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0x282209998BDCA063;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ a2;
  v95 = __ROR8__(v94, 8);
  v96 = v94 ^ __ROR8__(v93, 61);
  v97 = (((v95 + v96) | 0xDCEBEBACDEAD7ED4) - ((v95 + v96) | 0x231414532152812BLL) + 0x231414532152812BLL) ^ 0xD937E7FE3310AEF1;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ v7;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = __ROR8__(v99, 8);
  *(v9 + 3) = (((((2 * (v101 + v100)) | 0x35D78A885745178CLL) - (v101 + v100) + 0x65143ABBD45D743ALL) ^ 0xC52FD56ABE22C3BBLL) >> (8 * ((v9 + 3) & 7))) ^ BYTE3(v4) ^ 0xAC;
  v102 = __ROR8__((v9 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v103 = ((2 * (v102 + a3)) | 0xFB0A84D7C1F34BCLL) - (v102 + a3) + 0x7827ABD941F065A2;
  v104 = v103 ^ 0xCC0E9BCDCC2CC1ELL;
  v103 ^= 0x2AC91A6FE599C3ABuLL;
  v105 = __ROR8__(v104, 8);
  v106 = (((2 * (v105 + v103)) & 0x33EE57D4AAA8E4CELL) - (v105 + v103) + 0x6608D415AAAB8D98) ^ 0xFB6B17712D3F2658;
  v107 = v106 ^ __ROR8__(v103, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (v108 + v107 - ((2 * (v108 + v107)) & 0x3BD6F6090EF3F7CCLL) + 0x1DEB7B048779FBE6) ^ 0x94DC09B484FA0C3ALL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((v111 + v110) | 0xBAACFD03E875B896) - ((v111 + v110) | 0x455302FC178A4769) + 0x455302FC178A4769) ^ 0x928EF49A63A918F5;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = __ROR8__(v112, 8);
  v115 = (((2 * ((v114 + v113) ^ 0xBF3BA610F34FDCF3)) & 0x9EF6EC6C774AB486) - ((v114 + v113) ^ 0xBF3BA610F34FDCF3) - 0x4F7B76363BA55A44) ^ 0xE12CC020CC8419D4;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (v117 + v116 - ((2 * (v117 + v116)) & 0x8D73200556F12CC0) + 0x46B99002AB789660) ^ 0x43659C5046C54645;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ v7;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  *(v9 + 4) = (((((2 * (v122 + v121)) & 0xFE44E0D5AC34F454) - (v122 + v121) - 0x7F22706AD61A7A2BLL) ^ 0xDF199FBBBC65CDA8) >> (8 * ((v9 + 4) & 7))) ^ BYTE2(v4) ^ 0xAF;
  v123 = __ROR8__((v9 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v124 = ((2 * (v123 + a3)) | 0x647981ABE5E50392) - (v123 + a3) - 0x323CC0D5F2F281C9;
  v125 = v124 ^ 0xB9247D4F903FD789;
  v124 ^= 0x9F2D8E9CA964D83CLL;
  v126 = __ROR8__(v125, 8);
  v127 = (((2 * (v126 + v124)) & 0xDC8A7A59EF48667ELL) - (v126 + v124) + 0x11BAC2D3085BCCC0) ^ 0x8CD901B78FCF6700;
  v128 = v127 ^ __ROR8__(v124, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x893772B00383F7DCLL;
  v130 = __ROR8__(v129, 8);
  v131 = v129 ^ __ROR8__(v128, 61);
  v132 = (((v130 + v131) | 0x12AB2A081BCD1AC8) - ((v130 + v131) | 0xED54D5F7E432E537) - 0x12AB2A081BCD1AC9) ^ 0x3A8923919011BAABLL;
  v133 = __ROR8__(v132, 8);
  v134 = v132 ^ __ROR8__(v131, 61);
  v135 = (((2 * (v133 + v134)) & 0x9CDEA8C4145BD2B0) - (v133 + v134) - 0x4E6F54620A2DE959) ^ 0x5F0344640E43763CLL;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (((2 * (v137 + v136)) & 0x13CD403E6C4B9C20) - (v137 + v136) - 0x9E6A01F3625CE11) ^ 0xF3C553B22467E1CALL;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ v7;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = __ROR8__(v140, 8);
  *(v9 + 5) = (((v142 + v141 - ((2 * (v142 + v141)) & 0xDBE44936F6129DEELL) - 0x120DDB6484F6B109) ^ 0xB23634B5EE89068ALL) >> (8 * ((v9 + 5) & 7))) ^ BYTE1(v4) ^ 0xF8;
  v143 = __ROR8__((v9 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v144 = ((v143 + a3) | 0x70C93B313AA7E14DLL) - ((v143 + a3) | 0x8F36C4CEC5581EB2) - 0x70C93B313AA7E14ELL;
  v145 = v144 ^ 0xFBD186AB586AB70DLL;
  v144 ^= 0xDDD875786131B8B8;
  v146 = (__ROR8__(v145, 8) + v144) ^ 0x9D63C3648794ABC0;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = __ROR8__(v146, 8);
  v149 = (((2 * (v148 + v147)) & 0xAD23570A2DCE8E8ELL) - (v148 + v147) - 0x5691AB8516E74748) ^ 0x205926CAEA9B4F64;
  v150 = v149 ^ __ROR8__(v147, 61);
  v151 = (__ROR8__(v149, 8) + v150) ^ 0x282209998BDCA063;
  v152 = __ROR8__(v151, 8);
  v153 = v151 ^ __ROR8__(v150, 61);
  v154 = (((2 * (v152 + v153)) & 0x7B9FFAA596DA8668) - (v152 + v153) + 0x423002AD3492BCCBLL) ^ 0xACA3ED54CF03DC50;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = (__ROR8__(v154, 8) + v155) ^ 0x5DC0C52EDBDD025;
  v157 = v156 ^ __ROR8__(v155, 61);
  v158 = __ROR8__(v156, 8);
  v159 = (((2 * (v158 + v157)) & 0x33262DBFAA1200CALL) - (v158 + v157) + 0x666CE9202AF6FF9ALL) ^ 0x48C1C471CDF7784ELL;
  *(v9 + 6) = (((__ROR8__(v159, 8) + (v159 ^ __ROR8__(v157, 61))) ^ 0x5FC4102E9580487DuLL) >> (8 * ((v9 + 6) & 7))) ^ v4 ^ 0x4A;
  *(a4 - 0x1883660EE814440ALL) = v6 + 8;
  return (*(v8 + 8 * v5))();
}

uint64_t sub_100E08C1C@<X0>(_BYTE *a1@<X8>)
{
  a1[3] = (((v1 + 21) & 0xBF) - 54) ^ LOBYTE(STACK[0x1ADF]);
  a1[2] = LOBYTE(STACK[0x1ADE]) ^ 0x87;
  a1[1] = LOBYTE(STACK[0x1ADD]) ^ 0x87;
  return (*(v2 + 8 * (v1 + 2594)))();
}

uint64_t sub_100E08DE0()
{
  STACK[0x4C0] = v1;
  STACK[0x4A0] = v2;
  return (*(v7 + 8 * ((113 * (((*(v4 + v3) == v6 + ((v0 - 16628) | 0x200C) - 2120246818 - 1) ^ (((v0 + 12) | 0xC) - v5 + 94)) & 1)) ^ ((v0 - 16628) | 0x200C))))();
}

uint64_t sub_100E08EFC()
{
  *(v3 - 232) = v0 - 16169987 * ((v3 - 1396135805 - 2 * ((v3 - 240) & 0xACC8A973)) ^ 0xF9469C5B) - 1606505679;
  v4 = (*(v2 + 8 * (v0 + 20047)))(v3 - 240);
  *(v1 - 0x79CEC8CF5A6FCE4ALL) = *(v3 - 240) ^ ((v0 ^ 0x2D4B) + 1560464761);
  return (*(v2 + 8 * v0))(v4);
}

uint64_t sub_100E08F98@<X0>(int a1@<W8>)
{
  STACK[0x1F20] = v1;
  v3 = STACK[0x1B08];
  STACK[0x1F28] = STACK[0x1B08];
  return (*(v2 + 8 * (((v1 - v3 > 9) * ((((a1 - 675081622) & 0x283CDFF3) + 4172) ^ ((a1 + 4205) | 0x3CE))) ^ a1)))();
}

uint64_t sub_100E09074()
{
  v4 = STACK[0x1B60];
  v5 = 1534937323 * ((v3 - 240) ^ 0xCD7888C2C6EEFB47);
  STACK[0x25E8] = v5;
  *(v3 - 224) = v5;
  *(v3 - 220) = (v0 + 172268364) ^ v5;
  STACK[0x25D0] = v4 ^ v5;
  *(v3 - 232) = ((v0 + 172268364) ^ 0xF7B) - v5;
  *(v3 - 228) = v5 + v0 - 723214290;
  *(v3 - 208) = ((v0 + 172268364) | 0x20) + v5;
  v6 = (*(v2 + 8 * (v0 ^ (v1 - 980))))(v3 - 240);
  return (*(v2 + 8 * *(v3 - 204)))(v6);
}

uint64_t sub_100E0912C(uint64_t a1, unsigned int a2)
{
  v4 = STACK[0x2068] + 10 + (v2 ^ a2);
  v5 = v4 <= STACK[0x2060];
  STACK[0x1CF0] = v4;
  return (*(v3 + 8 * (44 * v5 + 4418)))();
}

uint64_t sub_100E0935C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = *(*(v3 + 2904) + v2);
  *(a1 + v2) = ((a2 - 95) & 0xDF ^ 0xC2) + v5 - 2 * (v5 & 0xF);
  return (*(v4 + 8 * a2))();
}

uint64_t sub_100E094A8@<X0>(_BYTE *a1@<X8>)
{
  a1[3] = LOBYTE(STACK[0x145B]) ^ 0x87;
  a1[2] = ((v1 - 122) | 0x6A) ^ LOBYTE(STACK[0x145A]) ^ 0xE8;
  a1[1] = LOBYTE(STACK[0x1459]) ^ 0x87;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100E09574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  v31 = *(*STACK[0x4E8] + (*STACK[0x4B8] & 0xDF49AC04)) ^ 0xDF49AC05;
  v32 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v31 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v31;
  v33 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v32 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v32;
  v34 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v33 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v33;
  v35 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v34 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v34;
  v36 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v35 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v35;
  v37 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v36 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v36;
  v38 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v37 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v37;
  v39 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v38 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v38;
  *(v29 + 64) = 0;
  *(v29 + 72) = v27;
  v40 = 16777619 * ((-548819963 * v39 + 7) ^ (-548819963 * v39)) % 7;
  v41 = *(&STACK[0x2200] | v40);
  *(&STACK[0x2200] | v40) = 0;
  *(v29 + 71) = v41;
  v42 = 16777619 * ((-548819963 * v39 + 6) ^ (-548819963 * v39)) % 6;
  v43 = *(&STACK[0x2200] | v42);
  *(&STACK[0x2200] | v42) = *(v29 + 70);
  *(v29 + 70) = v43;
  v44 = 16777619 * ((-548819963 * v39 + 5) ^ (-548819963 * v39)) % 5;
  v45 = *(&STACK[0x2200] | v44);
  *(&STACK[0x2200] | v44) = *(v29 + 69);
  *(v29 + 69) = v45;
  v46 = *(v29 + 64);
  *(v29 + 64) = *(v29 + 68);
  *(v29 + 68) = v46;
  v47 = 16777619 * ((-548819963 * v39 + 3) ^ (-548819963 * v39)) % 3;
  v48 = *(&STACK[0x2200] | v47);
  *(&STACK[0x2200] | v47) = *(v29 + 67);
  *(v29 + 67) = v48;
  v49 = *(v29 + 65);
  *(v29 + 66) = *(v29 + 64);
  LOWORD(STACK[0x2200]) = v49;
  v50 = vdup_n_s32(-548819963 * v39);
  v51.i32[0] = v50.i32[0];
  v51.i32[1] = -548819963 * v39 + 1;
  v52 = veor_s8(vmul_s32(v51, v50), v50);
  *(v29 + 64) = vmla_s32(v52, *(v29 + 64), vdup_n_s32(0x1000193u));
  *(v29 + 72) ^= *(v29 + 64);
  *(v29 + 72) = vmul_s32(vsub_s32(*(v29 + 72), v52), vdup_n_s32(0x359C449Bu));
  v53 = *(v29 + 74);
  *(v29 + 73) = STACK[0x2208];
  *(v29 + 72) = v53;
  v54 = (&STACK[0x2208] | v47);
  LOBYTE(v49) = *v54;
  *v54 = *(v29 + 75);
  *(v29 + 75) = v49;
  LOBYTE(v54) = *(v29 + 72);
  *(v29 + 72) = *(v29 + 76);
  *(v29 + 76) = v54;
  v55 = (&STACK[0x2208] | v44);
  LOBYTE(v54) = *v55;
  *v55 = *(v29 + 77);
  *(v29 + 77) = v54;
  v56 = (&STACK[0x2208] | v42);
  LOBYTE(v55) = *v56;
  *v56 = *(v29 + 78);
  *(v29 + 78) = v55;
  v57 = (&STACK[0x2208] | v40);
  v58 = *v57;
  *v57 = *(v29 + 79);
  *(v29 + 79) = v58;
  v59 = *(v29 + 72);
  v60 = (-548819963 * v59) ^ v39;
  for (i = 1; i != 4; ++i)
  {
    v62 = 16777619 * ((v60 + i) ^ v60) % i;
    v63 = *(v59 + 8 * v62) ^ *(v59 + 8 * i);
    *(v59 + 8 * i) = v63;
    v64 = *(v59 + 8 * v62) ^ v63;
    *(v59 + 8 * v62) = v64;
    *(v59 + 8 * i) ^= v64;
  }

  v65 = 0;
  v66 = xmmword_1012370F0;
  v67 = xmmword_101237100;
  v68 = xmmword_101237110;
  v69 = xmmword_101237120;
  v70.i64[0] = 0x9B009B009B009BLL;
  v70.i64[1] = 0x9B009B009B009BLL;
  v71 = vdupq_n_s32(v60);
  v72.i64[0] = 0x1000000010;
  v72.i64[1] = 0x1000000010;
  do
  {
    v73 = *(v59 + v65);
    v74 = vmovl_high_u8(v73);
    v75 = vmovl_u8(*v73.i8);
    v77.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v68, v71), vsubq_s32(v68, v71)), v71), vmull_high_u16(v75, v70));
    v77.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v67, v71), vsubq_s32(v67, v71)), v71), vmull_u16(*v74.i8, 0x9B009B009B009BLL));
    v77.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v69, v71), vsubq_s32(v69, v71)), v71), vmull_u16(*v75.i8, 0x9B009B009B009BLL));
    v77.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v66, v71), vsubq_s32(v66, v71)), v71), vmull_high_u16(v74, v70));
    *(v59 + v65) = vqtbl4q_s8(v77, xmmword_101237130);
    v65 += 16;
    v69 = vaddq_s32(v69, v72);
    v68 = vaddq_s32(v68, v72);
    v67 = vaddq_s32(v67, v72);
    v66 = vaddq_s32(v66, v72);
  }

  while (v65 != 32);
  *a27 = *(v29 + 72);
  return (*(v30 + 8 * (v28 - 15008)))(v66, v67, v68, v69);
}

uint64_t sub_100E099E8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x1FF0] = (((v1 ^ 0x634019759DEB8C0BLL) - 0x634019759DEB8C0BLL) ^ ((v1 ^ 0x4F28E9F83985C20ELL) - 0x4F28E9F83985C20ELL) ^ ((v1 ^ 0x2C68F08D7672CE91) - 0x2C68F08D7672CE91)) + 0x621C9BE956A16A5;
  *(a1 + 16) = (((v1 ^ 0x2796E21) - 41512481) ^ ((v1 ^ 0x5C165E1B) - 1544969755) ^ ((v1 ^ 0xDEC72A2 ^ ((v2 - 2122278739) | 0x1EC004)) + 1938575186)) - 769884002;
  v5 = (*(v3 + 8 * (v2 ^ 0x1565)))();
  *(a1 + 24) = v5;
  return (*(v3 + 8 * ((237 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_100E09BB8()
{
  v3 = 1534937323 * ((v2 - 0x200DE51F1F94C295 - 2 * ((v2 - 240) & 0xDFF21AE0E06B3E5BLL)) ^ 0x128A92222685C51CLL);
  *(v2 - 240) = STACK[0x8F0] ^ v3;
  *(v2 - 216) = v3;
  *(v2 - 208) = ((v0 - 1913854801) | 0x33) + v3;
  *(v2 - 224) = v3;
  *(v2 - 220) = (v0 - 1913854801) ^ v3;
  *(v2 - 232) = ((v0 - 1913854801) ^ 0xF16) - v3;
  *(v2 - 228) = v3 + v0 - 1632379223;
  v4 = (*(v1 + 8 * (v0 + 1211103395)))(v2 - 240);
  return (*(v1 + 8 * *(v2 - 204)))(v4);
}

uint64_t sub_100E09D14(double a1, double a2, double a3, double a4, double a5, double a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = v15 + STACK[0x440];
  *&v27 = v26 - 5;
  *(&v27 + 1) = v26 - 6;
  *&STACK[0x490] = v27;
  v28 = v26 + STACK[0x430] + 8;
  v29.i64[0] = v26 + 1;
  v29.i64[1] = v26;
  v30.i64[0] = v26 + 5;
  v30.i64[1] = v26 + 4;
  *&v31 = v26 - 7;
  v32.i64[0] = v26 + 7;
  v32.i64[1] = v26 + 6;
  *&STACK[0x4D0] = *(v26 - 8);
  v33.i64[0] = v26 + 3;
  *(&v31 + 1) = v26 - 8;
  *&STACK[0x4A0] = v31;
  v33.i64[1] = v28;
  v34 = *&STACK[0x450];
  v35 = vandq_s8(v33, *&STACK[0x450]);
  v36 = vandq_s8(v32, *&STACK[0x450]);
  v37 = vandq_s8(v30, *&STACK[0x450]);
  v38 = vandq_s8(v29, *&STACK[0x450]);
  v39 = *&STACK[0x400];
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0x400]);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0x400]);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x400]);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), *&STACK[0x400]);
  v44 = *&STACK[0x530];
  v45 = vorrq_s8(v43, *&STACK[0x530]);
  v46 = vorrq_s8(v42, *&STACK[0x530]);
  v47 = *&STACK[0x310];
  *&STACK[0x4C0] = vsubq_s64(vorrq_s8(v40, *&STACK[0x530]), vorrq_s8(v40, *&STACK[0x310]));
  v48 = vsubq_s64(vorrq_s8(v41, v44), vorrq_s8(v41, v47));
  v49 = vsubq_s64(v46, vorrq_s8(v42, v47));
  v50 = vaddq_s64(vsubq_s64(v45, vorrq_s8(v43, v47)), v47);
  v51 = vaddq_s64(v49, v47);
  v52 = *&STACK[0x3F0];
  v53 = veorq_s8(v51, *&STACK[0x3F0]);
  v54 = veorq_s8(v50, *&STACK[0x3F0]);
  v55 = veorq_s8(v50, a7);
  v56 = veorq_s8(v51, a7);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55);
  v59 = veorq_s8(v58, v19);
  v60 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v58, v18), v20), v59), vandq_s8(v59, v18));
  v61 = veorq_s8(v57, v19);
  v62 = *&STACK[0x3B0];
  v63 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v57, v18), v20), v61), vandq_s8(v61, v18)), *&STACK[0x3B0]);
  v64 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v66 = veorq_s8(v60, *&STACK[0x3B0]);
  v67 = veorq_s8(v66, v65);
  v68 = veorq_s8(v63, v64);
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v68);
  v71 = veorq_s8(vaddq_s64(v69, v67), v21);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v73 = veorq_s8(v70, v21);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v71, v72);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v79 = *&STACK[0x380];
  v78 = *&STACK[0x390];
  v80 = veorq_s8(vaddq_s64(v76, v74), *&STACK[0x390]);
  v81 = veorq_s8(v77, *&STACK[0x390]);
  v82 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v83);
  v88 = *&STACK[0x360];
  v87 = *&STACK[0x370];
  v89 = veorq_s8(vaddq_s64(vsubq_s64(v86, vandq_s8(vaddq_s64(v86, v86), *&STACK[0x380])), *&STACK[0x370]), v22);
  v90 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(v85, vandq_s8(vaddq_s64(v85, v85), *&STACK[0x380])), *&STACK[0x370]), v22);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), *&STACK[0x360]), v95), v23), v24);
  v97 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v94, v94), *&STACK[0x360]), v94), v23), v24);
  v100 = veorq_s8(v99, v98);
  v101 = veorq_s8(v96, v97);
  v102 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v101);
  v104 = veorq_s8(vaddq_s64(v102, v100), v25);
  v105 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v106 = veorq_s8(v103, v25);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v108 = veorq_s8(v104, v105);
  v109 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v111.i64[0] = v26 - 3;
  v111.i64[1] = v26 - 4;
  *&STACK[0x470] = v111;
  v112 = vaddq_s64(v48, v47);
  v113 = *&STACK[0x320];
  v226.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v110, v108), *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v17)));
  v226.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v109, v107), *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v17)));
  v114 = veorq_s8(v112, v52);
  v115 = veorq_s8(v112, a7);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(v116, v19);
  v118 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v116, v18), v20), v117), vandq_s8(v117, v18)), v62);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v21);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v78);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(v124, vandq_s8(vaddq_s64(v124, v124), v79)), v87), v22);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v127, v127), v88), v127), v23), v24);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v25);
  v131.i64[0] = v26 - 1;
  v131.i64[1] = v26 - 2;
  *&STACK[0x480] = v131;
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL)));
  v133 = vandq_s8(v131, v34);
  v134 = vaddq_s64(*&STACK[0x4C0], v47);
  v226.val[0] = vshlq_u64(veorq_s8(v132, v113), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v17)));
  v135 = veorq_s8(v134, v52);
  v136 = veorq_s8(v134, a7);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(v137, v19);
  v139 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v137, v18), v20), v138), vandq_s8(v138, v18)), v62);
  v140 = v62;
  v141 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v141), v21);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v78);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(v146, vandq_s8(vaddq_s64(v146, v146), v79)), v87), v22);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v149, v149), v88), v149), v23), v24);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v25);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v155 = v34;
  v156 = vandq_s8(v111, v34);
  v157 = vaddq_s64(v154, v153);
  v158 = *&STACK[0x490];
  v159 = vandq_s8(*&STACK[0x490], v155);
  v226.val[2] = vshlq_u64(veorq_s8(v157, v113), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v17)));
  v160 = *&STACK[0x4A0];
  v161 = vandq_s8(*&STACK[0x4A0], v155);
  v162 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v39);
  v166 = vaddq_s64(v164, v39);
  v167 = vaddq_s64(v162, v39);
  v168 = vaddq_s64(v163, v39);
  v169 = *&STACK[0x530];
  *&STACK[0x4C0] = vsubq_s64(vorrq_s8(v165, *&STACK[0x530]), vorrq_s8(v165, v47));
  v170 = vsubq_s64(vorrq_s8(v166, v169), vorrq_s8(v166, v47));
  v171 = vaddq_s64(vsubq_s64(vorrq_s8(v168, v169), vorrq_s8(v168, v47)), v47);
  v172 = vaddq_s64(vsubq_s64(vorrq_s8(v167, v169), vorrq_s8(v167, v47)), v47);
  v167.i64[0] = vqtbl4q_s8(v226, *&STACK[0x420]).u64[0];
  v226.val[0] = veorq_s8(v172, v52);
  v226.val[1] = veorq_s8(v171, v52);
  v226.val[2] = veorq_s8(v171, a7);
  v226.val[3] = veorq_s8(v172, a7);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL), v226.val[3]);
  v226.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[2]);
  v173 = veorq_s8(v226.val[1], v19);
  v226.val[1] = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v226.val[1], v18), v20), v173), vandq_s8(v173, v18));
  v174 = veorq_s8(v226.val[0], v19);
  v226.val[0] = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v226.val[0], v18), v20), v174), vandq_s8(v174, v18)), v140);
  v226.val[1] = veorq_s8(v226.val[1], v140);
  v226.val[2] = veorq_s8(v226.val[1], vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[2]), v21);
  v226.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL), v226.val[3]), v21);
  v175 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v175);
  v176 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = veorq_s8(vaddq_s64(v176, v226.val[2]), v78);
  v177 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[0] = veorq_s8(v226.val[0], v78);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v177);
  v178 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = vaddq_s64(v178, v226.val[2]);
  v226.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v226.val[1], vandq_s8(vaddq_s64(v226.val[1], v226.val[1]), v79)), v87), *&STACK[0x4F0]);
  v226.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v226.val[0], vandq_s8(vaddq_s64(v226.val[0], v226.val[0]), v79)), v87), *&STACK[0x4F0]);
  v179 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v179);
  v180 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = vaddq_s64(v180, v226.val[2]);
  v226.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v226.val[1], v226.val[1]), v88), v226.val[1]), v23), v24);
  v226.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v226.val[0], v226.val[0]), v88), v226.val[0]), v23), v24);
  v181 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v226.val[3] = veorq_s8(v226.val[1], v181);
  v182 = vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL);
  v226.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), v226.val[3]);
  v226.val[1] = veorq_s8(vaddq_s64(v182, v226.val[2]), v25);
  v226.val[0] = veorq_s8(v226.val[0], v25);
  v183 = vsraq_n_u64(vshlq_n_s64(v226.val[2], 3uLL), v226.val[2], 0x3DuLL);
  v226.val[2] = veorq_s8(v226.val[0], vsraq_n_u64(vshlq_n_s64(v226.val[3], 3uLL), v226.val[3], 0x3DuLL));
  v184 = vaddq_s64(v170, v47);
  v226.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[1], 0x38uLL), v226.val[1], 8uLL), veorq_s8(v226.val[1], v183)), v113), vnegq_s64(vandq_s8(vshlq_n_s64(v160, 3uLL), v17)));
  v226.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226.val[0], 0x38uLL), v226.val[0], 8uLL), v226.val[2]), v113), vnegq_s64(vandq_s8(vshlq_n_s64(v158, 3uLL), v17)));
  v185 = veorq_s8(v184, v52);
  v186 = veorq_s8(v184, a7);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(v187, v19);
  v189 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v187, v18), v20), v188), vandq_s8(v188, v18)), v140);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v21);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v78);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(v195, vandq_s8(vaddq_s64(v195, v195), v79)), v87), *&STACK[0x4F0]);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v198, v198), v88), v198), v23), v24);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v201 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200), v25);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL)));
  v203 = vaddq_s64(*&STACK[0x4C0], v47);
  v226.val[1] = vshlq_u64(veorq_s8(v202, v113), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x470], 3uLL), v17)));
  v204 = veorq_s8(v203, v52);
  v205 = veorq_s8(v203, a7);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205);
  v207 = veorq_s8(v206, v19);
  v208 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v206, v18), v20), v207), vandq_s8(v207, v18)), v140);
  v209 = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v211 = veorq_s8(v208, v209);
  v212 = veorq_s8(vaddq_s64(v210, v211), v21);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), v78);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(v216, vandq_s8(vaddq_s64(v216, v216), v79)), v87), *&STACK[0x4F0]);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v219, v219), v88), v219), v23), v24);
  v221 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v223 = veorq_s8(v220, v221);
  v224 = veorq_s8(vaddq_s64(v222, v223), v25);
  v226.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL))), v113), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x480], 3uLL), v17)));
  v167.i64[1] = vqtbl4q_s8(v226, *&STACK[0x420]).u64[0];
  v226.val[0] = vrev64q_s8(v167);
  *(v16 + a13) = veorq_s8(vextq_s8(v226.val[0], v226.val[0], 8uLL), *&STACK[0x4D0]);
  return (*(v13 + 8 * ((30896 * (v14 == 0)) ^ LODWORD(STACK[0x460]))))();
}

uint64_t sub_100E0A7B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = LODWORD(STACK[0x11DC])++;
  *STACK[0x440] = v9 + 631038936;
  v10 = STACK[0x3E0];
  *(v6 + 1072) = *v5 ^ STACK[0x3E0];
  *(v8 - 196) = v10;
  *(v6 + 1048) = STACK[0x3C0];
  *(v8 - 220) = (v4 + 830909606) ^ v10;
  *(v8 - 216) = v4 + 830906859 + v10;
  *(v8 - 240) = ((v4 + 830906859) ^ 0x7B) + v10;
  *(v8 - 224) = 317506016 - v10 + v4;
  LODWORD(STACK[0x4F0]) = a4 - 923;
  v11 = (*(v7 + 8 * (v4 ^ (a4 - 923))))(v8 - 240);
  return (*(v7 + 8 * *(v8 - 200)))(v11);
}

uint64_t sub_100E0A8EC@<X0>(int a1@<W8>)
{
  *(v3 + 1592) = *(v7 + 8 * a1);
  *(v5 + 1352) = v1;
  STACK[0x16A0] = v4;
  *(v5 + 1192) = *(v7 + 8 * v2);
  return (*(v7 + 8 * (((v2 ^ (v6 + 2665)) - 1414739411) ^ v2)))();
}

uint64_t sub_100E0A944(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28.i64[0] = v8 + v6 + v10;
  v28.i64[1] = v8 + v6 + 2;
  v29.i64[0] = v8 + v6 + 9;
  v29.i64[1] = v8 + v6 + 8;
  v30.i64[0] = v8 + v6 + 7;
  v30.i64[1] = v8 + v6 + 6;
  v31.i64[0] = v8 + v6 + 5;
  v31.i64[1] = v8 + v6 + 4;
  v32 = vandq_s8(v31, *&STACK[0x4F0]);
  v33 = vandq_s8(v30, *&STACK[0x4F0]);
  v34 = vandq_s8(v29, *&STACK[0x4F0]);
  v35 = vandq_s8(v28, *&STACK[0x4F0]);
  v36 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v40 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x490], v37), *&STACK[0x480]), vorrq_s8(vaddq_s64(v37, *&STACK[0x4C0]), *&STACK[0x4A0]));
  v41 = vsubq_s64(*&STACK[0x470], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x490], v38), *&STACK[0x480]), vorrq_s8(vaddq_s64(v38, *&STACK[0x4C0]), *&STACK[0x4A0])));
  v42 = vsubq_s64(*&STACK[0x470], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x490], v39), *&STACK[0x480]), vorrq_s8(vaddq_s64(v39, *&STACK[0x4C0]), *&STACK[0x4A0])));
  v43 = veorq_s8(v42, *&STACK[0x460]);
  v44 = veorq_s8(v41, *&STACK[0x460]);
  v45 = veorq_s8(v41, *&STACK[0x450]);
  v46 = veorq_s8(v42, *&STACK[0x450]);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v46);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v45);
  v49 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v47, v13), vorrq_s8(v47, v14)), v14), v15);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v48, v13), vorrq_s8(v48, v14)), v14), v15);
  v51 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v52 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v51);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(v54, vandq_s8(vaddq_s64(v54, v54), v16)), v17), v18);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(v53, vandq_s8(vaddq_s64(v53, v53), v16)), v17), v18);
  v57 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v55, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), v19);
  v63 = veorq_s8(v61, v19);
  v64 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v65 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v62, v64);
  v67 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = vaddq_s64(v67, v65);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), v20), v69), v21), v22);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), v20), v68), v21), v22);
  v72 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v73 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = veorq_s8(v70, v72);
  v75 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74);
  v77 = vaddq_s64(v75, v73);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(v77, vandq_s8(vaddq_s64(v77, v77), v23)), v24), v25);
  v79 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(v76, vandq_s8(vaddq_s64(v76, v76), v23)), v24), v25);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v82 = veorq_s8(v78, v79);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v26);
  v86 = veorq_s8(v84, v26);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v92 = vsubq_s64(*&STACK[0x470], v40);
  v93 = vaddq_s64(v91, v89);
  v94 = vaddq_s64(v90, v88);
  v134.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, v27), vorrq_s8(v94, v11)), v11), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), *&STACK[0x4D0])));
  v134.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v93, v27), vorrq_s8(v93, v11)), v11), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), *&STACK[0x4D0])));
  v95 = veorq_s8(v92, *&STACK[0x460]);
  v96 = veorq_s8(v92, *&STACK[0x450]);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, v13), vorrq_s8(v97, v14)), v14), v15);
  v100 = veorq_s8(v99, v98);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), v16)), v17), v18);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v19);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), v20), v106), v21), v22);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), v23)), v24), v25);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v26);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL)));
  v114 = vsubq_s64(*&STACK[0x470], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x490], v36), *&STACK[0x480]), vorrq_s8(vaddq_s64(v36, *&STACK[0x4C0]), *&STACK[0x4A0])));
  v134.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, v27), vorrq_s8(v113, v11)), v11), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), *&STACK[0x4D0])));
  v115 = veorq_s8(v114, *&STACK[0x460]);
  v116 = veorq_s8(v114, *&STACK[0x450]);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v117, v13), vorrq_s8(v117, v14)), v14), v15);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(v120, vandq_s8(vaddq_s64(v120, v120), v16)), v17), v18);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v19);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), v20), v125), v21), v22);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), v23)), v24), v25);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v26);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL)));
  v134.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v132, v27), vorrq_s8(v132, v11)), v11), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), *&STACK[0x4D0])));
  *v28.i64[1] = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v9 + v6)), 0xF0F0F0F0F0F0F0FLL), *&vqtbl4q_s8(v134, *&STACK[0x440])));
  return (*(a5 + 8 * (((v7 != 0) * a1) ^ v5)))();
}

uint64_t sub_100E0AF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = v19 + v11;
  v23 = v19 - 1;
  v24 = STACK[0x4F0] + v23;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (0x31F49ABE1B6CA29CLL - v25) & v12 | (v25 + 0x4E0B6541E4935D63) & a1;
  v27 = v26 ^ v21;
  v26 ^= 0xEC8A812A20635A97;
  v28 = __ROR8__(v27, 8);
  v29 = ((v10 & (2 * (v28 + v26))) - (v28 + v26) + v13) ^ v14;
  v30 = v29 ^ __ROR8__(v26, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x1C02DF5B258263EDLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x51FC477E33DE4033;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x224C09CA440C0C0BLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__((v22 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = ((2 * v37 + 0x1C16CA83C926BAC6) & v15) - v37 + v16;
  v39 = v38 ^ a6;
  v40 = v38 ^ a5;
  v41 = (__ROR8__(v35, 8) + v36) ^ 0xA199F9AE5F876A45;
  v42 = (__ROR8__(v39, 8) + v40) ^ 0x1F7B92942DEF21EFLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = v41 ^ __ROR8__(v36, 61);
  v46 = (__ROR8__(v41, 8) + v45) ^ 0xB2823E14A03C0367;
  v47 = (v9 - ((v44 + v43) | v9) + ((v44 + v43) | a4)) ^ a8;
  v48 = v47 ^ __ROR8__(v43, 61);
  v49 = __ROR8__(v46, 8) + (v46 ^ __ROR8__(v45, 61));
  v50 = (__ROR8__(v47, 8) + v48) ^ 0x51FC477E33DE4033;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__((v52 + v51 - (v8 & (2 * (v52 + v51))) + v17) ^ a3, 8);
  v54 = (v52 + v51 - (v8 & (2 * (v52 + v51))) + v17) ^ a3 ^ __ROR8__(v51, 61);
  v55 = ((a2 | (2 * (v53 + v54))) - (v53 + v54) - 0x7F81AF56F489D5E1) ^ 0xDE1856F8AB0EBFA4;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xB2823E14A03C0367;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  *(v22 + 9) = (((0xDF90A477B1CC4211 - ((v59 + v58) | 0xDF90A477B1CC4211) + ((v59 + v58) | a7)) ^ 0x493E2725494BAC6DLL) >> (8 * ((v22 + 9) & 7))) ^ ((v49 ^ 0x69517CAD07781183) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(v20 + 8 * (((8 * (v23 != 0)) | (16 * (v23 != 0))) ^ (v18 + 5))))(0x8C960A4BDF32FEF6);
}

uint64_t sub_100E0B218@<X0>(_BYTE *a1@<X8>)
{
  a1[3] = v5;
  a1[2] = v4;
  a1[1] = v3;
  *a1 = v2;
  return (*(v6 + 8 * (v1 - 15397)))();
}

uint64_t sub_100E0B23C()
{
  v2 = *(STACK[0x1468] + 24);
  STACK[0xE68] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 2129617906) ^ 0x81114318) + ((v0 - 2129617906) | 0x8EC208) + 2120221359)) ^ v0)))();
}

uint64_t sub_100E0B2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = (((((v8 + 5602) ^ 0x5D62) * a8 + 2113825) % 0xA88) ^ 0xF7EFAE5DD7D3F3FELL) + ((2 * ((((v8 + 5602) ^ 0x5D62) * a8 + 2113825) % 0xA88)) & 0x7FC) + STACK[0x638];
  v13 = *STACK[0x660];
  v14 = *v11;
  v15 = *(v13 + (v14 & STACK[0x648]));
  v16 = *v9 ^ v10;
  v17 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v12) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + 673975298 + v15 - 963544004) & v16)) ^ *(v12 - 0x3D92F7BA10F10E13) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + 673975298 + v15 - 963544002) & v16)) ^ (76 * (v12 + 2));
  v18 = STACK[0x640] + 4 * ((551 * (((v12 ^ 0xDCD0CDDE) - 203133809) ^ ((v12 ^ 0x21C3555A) + 251130891) ^ ((v12 ^ 0xFD1398F4) - 769181275)) + 1708622675) % 0x1D48);
  v19 = *(v13 + (v14 & STACK[0x658]));
  v20 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v19 + 673210726) & v16)) ^ *(v18 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v19 + 673210728) & v16));
  LODWORD(v12) = 1645 * (((v20 ^ (6319 * v18)) >> 8) ^ 0x79) + 3391990;
  v21 = v12 - 2696 * (((12744711 * v12) >> 32) >> 3);
  LODWORD(v14) = 1645 * (((v20 ^ (333999 * v18)) >> 16) ^ 0x25) + 3391990;
  v22 = 1645 * (((((v20 ^ (-1962600273 * v18)) >> 24) ^ 0x955FBABA) + 1085198807) ^ ((((v20 ^ (-1962600273 * v18)) >> 24) ^ 0x9D12DFCF) + 1222882468) ^ ((((v20 ^ (-1962600273 * v18)) >> 24) ^ 0x84D65D6) - 574878021)) + 1071774310;
  v23 = (v20 ^ (-81 * v18));
  v24 = v14 - 2696 * (((12744711 * v14) >> 32) >> 3);
  v25 = (v21 ^ 0x7BBFFFBDFF791F4FLL) + STACK[0x638] + ((2 * v21) & 0x1E9E);
  LODWORD(v18) = *(v25 + 0x3E9CB6E5C769C69CLL);
  v26 = (v24 ^ 0xDFD79DFFBFFB1FF5) + STACK[0x638] + ((2 * v24) & 0x1FEA);
  v27 = v22 % 0xA88;
  v28 = v25 + 8839345;
  v29 = (551 * a8 + 710790) % 0x3A90u;
  v30 = (v27 ^ 0xB3BDBF82FFFD1D5BLL) + STACK[0x638] + ((2 * v27) & 0x1AB6);
  LODWORD(v26) = (*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v26 + 1074061323 + v15 - 963544004) & v16)) ^ *(v26 - 0x257AE75BF9183A0ALL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v26 + 1074061323 + v15 - 963544002) & v16)) ^ (76 * (v26 + 11))) << 8;
  v32 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v28 + v15 - 963544004) & v16)) ^ v18 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v28 + v15 - 963544002) & v16)) ^ (76 * v28);
  v33 = v26 & 0x7400;
  v34 = (((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 + 189093 + v15 - 963544004) & v16)) ^ *(v30 + 0x69EF720C6E5C890) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 + 189093 + v15 - 963544002) & v16)) ^ (76 * (v30 - 91))) << 16) ^ 0x2C8B22) & ~v26;
  v35 = v29 - 7496;
  if (v29 >> 3 < 0x3A9)
  {
    v35 = (551 * a8 + 710790) % 0x3A90u;
  }

  v31 = (1645 * (((v23 ^ 0x108F12C0) + 259213331) ^ ((v23 ^ 0xDDF9EAA1) - 1039814540) ^ ((v23 ^ 0xCD76F8A8) - 762666373)) + 2007284746) % 0xA88;
  v36 = (v31 ^ 0x7D96E26EC6F774DFLL) + STACK[0x638] + ((2 * v31) & 0x9BE);
  v37 = *(v17 + ((v36 + 956861217 + v15 - 963544004) & v16)) ^ *(v36 + 0x3CC5D434FFEB710CLL) ^ *(v17 + ((v36 + 956861217 + v15 - 963544002) & v16)) ^ (76 * (v36 + 33));
  v38 = STACK[0x640] + 4 * v35;
  *(v38 - 0x34EE34220E8AC3B8) = (-1962600273 * v38) ^ *(v17 + ((v19 + v38 + 673210726) & v16)) ^ *(v17 + ((v19 + v38 + 673210728) & v16)) ^ 0xDC8C0930 ^ ((((((v34 | v33) ^ 0xBBEB24) & (v32 ^ 0xFFFF06) | v32 & 0xFFFFFFF9) << 8) ^ 0x98B906F9) & (v37 ^ 0xFFFFFF89) | v37 & 6);
  return (*(STACK[0x668] + 8 * ((13450 * (a8 == 255)) ^ v8)))();
}

uint64_t sub_100E14274()
{
  LODWORD(STACK[0x864]) = v2;
  v3 = (*(v0 + 8 * (v1 + 503385689)))(STACK[0xA48]);
  STACK[0xA48] = 0;
  return (*(v0 + 176928))(v3);
}

uint64_t sub_100E14314@<X0>(_BYTE *a1@<X8>)
{
  a1[23] = (17 * (v1 ^ 0xD4) + 127) ^ v2[23];
  a1[22] = v2[22] ^ 0x2F;
  a1[21] = v2[21] ^ 0xCE;
  a1[20] = v2[20] ^ 0x9F;
  a1[19] = v2[19] ^ 0x8A;
  a1[18] = v2[18] ^ 0x57;
  a1[17] = v2[17] ^ 0x49;
  a1[16] = v2[16] ^ 0x8B;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100E143EC@<X0>(unint64_t a1@<X8>)
{
  v7 = *(v6 + 8 * v1);
  *&STACK[0x4F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x4D0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x4C0] = vdupq_n_s64(0xE0B6541E4935D63uLL);
  *&STACK[0x4A0] = vdupq_n_s64(0xD882371E60A30A6DLL);
  *&STACK[0x490] = vdupq_n_s64(a1);
  *&STACK[0x480] = vdupq_n_s64(v2);
  *&STACK[0x470] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x460] = vdupq_n_s64(v5);
  *&STACK[0x450] = vdupq_n_s64(v4);
  STACK[0x430] = v3;
  *&STACK[0x440] = xmmword_1012371A0;
  return v7(46);
}

uint64_t sub_100E14540(uint64_t a1)
{
  v4 = STACK[0x107C];
  v5 = ((v4 & v2) << ((LOBYTE(STACK[0x480]) ^ 0x65) + 103)) & (v4 ^ 0x9BD2A479) ^ v4 & v2;
  v6 = (((v4 ^ 0x9BD78439) << LODWORD(STACK[0x460])) ^ 0x6A6A86) & (v4 ^ 0x9BD78439) ^ ((v4 ^ 0x9BD78439) << LODWORD(STACK[0x460])) & 0x353542;
  v7 = v6 ^ 0x151541;
  v8 = v6 & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xD4D50C) & v7 ^ (4 * v7) & 0x353540;
  v10 = (v9 ^ 0x141500) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x212043)) ^ 0x3535430) & (v9 ^ 0x212043) ^ (16 * (v9 ^ 0x212043)) & 0x353540;
  v12 = v10 ^ 0x353543 ^ (v11 ^ 0x111400) & (v10 << 8);
  *(STACK[0x4D0] + 4 * (((v4 ^ (2 * ((v12 << 16) & 0x350000 ^ v12 ^ ((v12 << 16) ^ 0x35430000) & ((((v11 ^ 0x242143) << 8) ^ 0x35350000) & (v11 ^ 0x242143) ^ ((v11 ^ 0x242143) << 8) & 0x350000u)))) >> 2) ^ 0x26E2B6FF)) = v1;
  LODWORD(STACK[0x107C]) = v4 + 4;
  return (*(v3 + 8 * ((238 * (((~(v4 + 4 + v2) | 0x40) & (v4 + 4 + v2 - 64) | ~(v4 + 4 + v2) & 0x40) >= 0)) ^ 0x367D)))(a1, LODWORD(STACK[0x470]), 379499311, 3915455999, 4294961667, 2391196372);
}

uint64_t sub_100E1473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x4C0] & 0x745EBBF7;
  v11 = v9 + a8 + 1924;
  STACK[0x1690] = *(a4 + 560);
  v12 = STACK[0x540];
  *(v8 + 1192) = *(STACK[0x540] + 8 * v11);
  return (*(v12 + 8 * ((v10 - 8883) ^ v11)))();
}

uint64_t sub_100E14798()
{
  v2 = v0 & 0xFFFFFFFF84B76DB7;
  STACK[0x1910] = *(v1 + 8 * v2);
  return (*(v1 + 8 * ((v2 + 4555) ^ v2)))();
}

uint64_t sub_100E14848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v58 = *(a55 + 260) & 1;
  v59 = 1534937323 * (((~(v57 - 240) | 0xF160ECA76EEB8696) + ((v57 - 240) | 0xE9F135891147969)) ^ 0xC3E79B9A57FA822FLL);
  STACK[0x25D0] = v59;
  *(v57 - 208) = ((v55 + 1739394315) ^ 0xFD) + v59;
  *(v57 - 224) = v59;
  *(v57 - 220) = (v55 + 1739394315) ^ v59;
  STACK[0x25E8] = v58 + v59;
  *(v57 - 232) = ((v55 + 1739394315) ^ 0xE82) - v59;
  *(v57 - 228) = v59 + v55 - 723214290;
  v60 = (*(v56 + 8 * (v55 + 2120268328)))(v57 - 240);
  return (*(v56 + 8 * *(v57 - 204)))(v60);
}

uint64_t sub_100E149C0@<X0>(int a1@<W8>)
{
  *(v2 + 1472) = *(v3 + 8 * a1);
  v4 = (*(v3 + 8 * (v1 + 24215)))(48) != 0;
  return (*(v3 + 8 * ((v4 * ((29 * (v1 ^ 0x1F42)) ^ 0x538D)) ^ v1)))();
}

uint64_t sub_100E14A88@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = STACK[0x16E0];
  v4 = STACK[0x1310];
  STACK[0xC58] = &STACK[0x2280] + STACK[0x1310];
  STACK[0x1310] = v4 + 16;
  STACK[0x1040] = v3;
  *(a1 + 152) = 0;
  STACK[0xCF8] = 0;
  LODWORD(STACK[0xE3C]) = 0;
  return (*(v2 + 8 * ((a2 ^ 0x5FAE) + a2)))();
}

uint64_t sub_100E14CE8()
{
  v5 = STACK[0x630];
  *(v4 - 208) = STACK[0x630] ^ 0x20;
  *(v4 - 196) = v5;
  v6 = v0 - 651996459 + v5;
  *(v4 - 224) = -591658917 - v5 + v0;
  *(v4 - 220) = (v0 - 651995105) ^ v5;
  *(v4 - 216) = v6;
  *(v4 - 232) = v1 + v5;
  *(v4 - 240) = v6 + 19;
  v7 = (*(v2 + 8 * (v3 + v0 + 73)))(v4 - 240);
  return (*(v2 + 8 * *(v4 - 200)))(v7);
}

uint64_t sub_100E14D80@<X0>(unint64_t a1@<X8>)
{
  STACK[0x25D0] = a1;
  *(v5 - 232) = (v4 + 397125375) ^ (1917435887 * ((2 * ((v5 - 240) & 0x7981FFD0) - (v5 - 240) - 2038562770) ^ 0x60C55B28));
  v6 = (*(v1 + 8 * (v2 + v4 - 4)))(v5 - 240);
  return (*(v1 + 8 * (v3 + v4 + 2862)))(v6);
}

uint64_t sub_100E14EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>)
{
  v24 = *(a1 + (v11 & ((a3 & 0x510CCDF0 | 0xAEF3320B) - 103642729 + (a3 & 0xAEF33208 | 0x510CCDF5))));
  v25 = (__ROR8__(a3 & 0xFFFFFFFFFFFFFFF8, 8) + v24) ^ 0xF41651499F5E3C67;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((v12 & (2 * (v27 + v26))) - (v27 + v26) + v14) ^ v17;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((a7 | (2 * (v30 + v29))) - (v30 + v29) + a6) ^ v20;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = ((v16 | (2 * (v33 + v32))) - (v33 + v32) + v23) ^ a8;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v13;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (v37 + v38) ^ v22;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v19;
  *a5 = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ v18) >> (a4 & 0x38)) ^ *(v10 + v9);
  return (*(v15 + 8 * (((a2 == 0) * v21) ^ a9)))();
}

uint64_t sub_100E1518C()
{
  v3 = *(v1 + 295);
  *(v1 + 1781) = v3;
  v4 = *(v1 + 2000);
  v5 = v4 & 0xFFFFFFF8;
  v6 = 2 * (v4 & 0xFFFFFFF8);
  v7 = *STACK[0x51F0];
  v8 = *STACK[0x51E8] & 0xFFFFFFF8;
  v9 = *(v7 + (v8 & ((v4 & 0xFFFFFFF8 ^ 0x628B04F9) + 809841587 + (v6 & 0xC51609F0))));
  v10 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (v9 + v10 - ((2 * (v9 + v10)) & 0x88FA27FC6A6B622ALL) + 0x447D13FE3535B115) ^ 0x86D22D540AC409F1;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x65F254DD188DB4FCLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0xCBC0E61E5AEB7046) - (v15 + v14) + 0x1A1F8CF0D28A47DDLL) ^ 0x8A1035994C6CAAAELL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = __ROR8__((v18 + v17 - ((2 * (v18 + v17)) & 0xFCFCD722EFB14EC2) + 0x7E7E6B9177D8A761) ^ 0xDFCCF654A0AEB44ALL, 8);
  v20 = (v18 + v17 - ((2 * (v18 + v17)) & 0xFCFCD722EFB14EC2) + 0x7E7E6B9177D8A761) ^ 0xDFCCF654A0AEB44ALL ^ __ROR8__(v17, 61);
  v21 = (v19 + v20) ^ v2;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) & 0xF2C4B0E1107A7F6) - (v23 + v22) - 0x79625870883D3FCLL) ^ 0x20AE69673D65F5DALL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5455012E8AB1C38FLL;
  LOBYTE(v4) = 8 * (v4 & 7);
  v27 = ((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v25, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v4;
  v28 = STACK[0x8070];
  LOBYTE(v19) = *(STACK[0x8070] + 10327);
  *(v1 + 1782) = v27;
  v29 = *(v7 + (v8 & ((v5 ^ 0xCBEDF01E) - 958248818 + (v6 & 0x97DBE030))));
  v30 = (v29 + v10) ^ 0xC2AF3EAA3FF1B8E4;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0xB347CB25C6965050) - 0x265C1A6D1CB4D7D8) ^ 0xBC51B14FFBC69CD4;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0x618EE34C2ACB248CLL) - (v35 + v34) + 0x4F388E59EA9A6DBALL) ^ 0xDF373730747C80CBLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xA1B29DC5D776132BLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v2;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (0xCBC3F680A2E4CF9BLL - ((v42 + v41) | 0xCBC3F680A2E4CF9BLL) + ((v42 + v41) | 0x343C097F5D1B3064)) ^ 0xECFBBA609702E9BALL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((2 * (v45 + v44)) & 0x4AA505DE3EA466EALL) - (v45 + v44) - 0x255282EF1F523376) ^ 0x8EF87C3E6A1C0F05;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  *(v28 + 10327) = v3 ^ v19 ^ (((((2 * (v48 + v47)) & 0xA150EE65AC2A1862) - (v48 + v47) - 0x50A87732D6150C32) ^ 0xC018E87127E8AD2ELL) >> v4);
  v49 = *(v1 + 3920) + 5;
  *(v1 + 296) = v49;
  v50 = STACK[0x57D8];
  v51 = *(STACK[0x57D8] + 8 * (v0 + 8954));
  *(v1 + 2008) = v49;
  *(v1 + 280) = v51;
  return (*(v50 + 8 * (STACK[0x51B8] ^ 0x2346)))();
}

uint64_t sub_100E156DC@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x1948] + v1;
  STACK[0x16F8] = a1;
  LODWORD(STACK[0xDAC]) = v3;
  STACK[0x1BC8] = v5;
  return (*(v4 + 8 * (v2 + 8698)))();
}

uint64_t sub_100E15734()
{
  v6 = -121 * (v2 ^ (v1 + 9));
  v7 = *v0;
  *(v3 + 2128) = *v0;
  return (*(v5 + 8 * (((8 * (((v7 == 0) ^ v6) & 1)) & 0xEF | (16 * (((v7 == 0) ^ v6) & 1))) ^ (v4 + v2 + 290))))();
}

uint64_t sub_100E15894(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x1FE0] = v1 ^ 0xD21C8094;
  *(a1 + 16) = (((v1 ^ 0x9E1BC77D) + 1642346627) ^ ((v1 ^ 0x66A42CCF) - 1722035407) ^ ((v1 ^ 0x2AA36B26) + 1404883662 + (((v2 & 0x8DF7FCFF) - 1178633555) & 0xC7DFE27F))) - 769888428 + 1021 * (v2 & 0x8DF7FCFF ^ 0x64DC) + 1363;
  v5 = (*(v3 + 8 * (v2 & 0x8DF7FCFF ^ 0x18E1)))();
  *(a1 + 24) = v5;
  return (*(v3 + 8 * ((61 * (v5 == 0)) ^ v2 & 0x8DF7FCFF)))();
}

uint64_t sub_100E159E4()
{
  *(v0 + 1048) = *(v1 + 1872);
  *(v3 - 240) = 27052 - 711523751 * ((-336551939 - ((v3 - 240) | 0xEBF09FFD) + ((v3 - 240) | 0x140F6002)) ^ 0x241541D3);
  v4 = (*(v2 + 254160))(v3 - 240);
  return (*(v2 + 28176))(v4);
}

uint64_t sub_100E15A90(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, int a7)
{
  v13 = *(*STACK[0x660] + (*v11 & STACK[0x658]));
  v14 = STACK[0x640] + 4 * ((a4 * v12 + a7) % (((v7 + 549004458) & 0xDF46B7EF) - 2182));
  v15 = STACK[0x640] + 4 * (a4 * v12 + 2836548 - (((((a4 * v12 + 2836548) >> 3) * a5) >> 32) >> 7) * v10);
  v16 = *v8 ^ v9;
  *(v15 - 0x34EE34220E8AC3B8) = (-1962600273 * v14) ^ *(v14 - 0x34EE34220E8AC3B8) ^ (-1962600273 * v15) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v15 + v13 + 673210726) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v15 + v13 + a3) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v14 + 673210726) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v14 + a3) & v16));
  return (*(STACK[0x668] + 8 * ((119 * (a4 == 255)) ^ v7)))();
}

uint64_t sub_100E15CB4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2ECE)))(32);
  STACK[0xD48] = v2;
  return (*(v1 + 8 * ((((((v0 - 2120257764) ^ (v2 == 0)) & 1) == 0) * (5 * (v0 ^ 0x5E31) - 15818)) ^ v0)))(0x224C09CA440C0C0BLL);
}

uint64_t sub_100E15D44(uint64_t a1, int a2)
{
  v5 = v4 - 2001341102 < ((v2 - 344165863) & 0xF7E7E7FE ^ 0x299741D0);
  if ((a2 - 975551865) < 0xCAF384AE == v5)
  {
    LOBYTE(v5) = v4 - 2001341102 > (a2 - 975551865);
  }

  return (*(v3 + 8 * ((212 * (((v2 - 1) ^ v5) & 1)) ^ v2)))();
}

uint64_t sub_100E15E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = 551690071 * ((0x6D8017DE3CF9449 - (v8 | 0x6D8017DE3CF9449) + STACK[0x470]) ^ 0x88BAAC4C52DD38E1);
  *(v11 + 1072) = v14;
  v15 = v14 ^ LODWORD(STACK[0x460]);
  *(v13 - 240) = (a8 + 1041169529) ^ v14;
  *(v13 - 236) = v15;
  *(v11 + 1064) = (v10 & 7) - v14;
  v16 = LODWORD(STACK[0x480]) - v14;
  *(v13 - 232) = v16 + 6;
  *(v13 - 228) = v16;
  *(v13 - 224) = v14;
  v17 = (*(v12 + 8 * (v9 + a8 + 19)))(v13 - 240);
  return (*(v12 + 8 * *(v13 - 220)))(v17);
}

uint64_t sub_100E15ED0()
{
  v3 = v0 ^ 0x5704;
  v4 = v0 ^ 0x55E7;
  v5 = (v0 ^ 0x5704) - 2120251858;
  STACK[0x16C0] = v1 - 0x683CBC57EAB92A36;
  v6 = STACK[0x14C8];
  LODWORD(STACK[0x1B78]) = STACK[0xD2C];
  STACK[0x13B8] = v6;
  STACK[0x12D8] = 0;
  LODWORD(STACK[0x1340]) = -769884012;
  STACK[0x1080] = 0x8305A984834A17DDLL;
  STACK[0xEC8] = 0;
  v7 = (*(v2 + 8 * (v0 ^ 0x10E4)))(16);
  STACK[0xD78] = v7 + 0x308E083E0C524CBELL;
  return (*(v2 + 8 * (((v7 == 0) * (v5 + v4 + 2120221163 + 756)) ^ v3)))();
}

uint64_t sub_100E16010()
{
  if (v2 < 0xF1D1418B != v0 - 237944373 < (v1 ^ v3 ^ 0xF1D14BED ^ (13 * (v1 ^ (v1 - 1236)))))
  {
    v5 = v0 - 237944373 < (v1 ^ v3 ^ 0xF1D14BED ^ (13 * (v1 ^ (v1 - 1236))));
  }

  else
  {
    v5 = v0 - 237944373 > v2;
  }

  return (*(v4 + 8 * ((206 * v5) ^ (v1 + 479956938))))();
}

uint64_t sub_100E160CC@<X0>(unsigned int a1@<W8>)
{
  v3 = v1 + 1322;
  v4 = (LODWORD(STACK[0x280]) + 10);
  STACK[0x390] = v4 ^ 0xD78D7DFEFBFDDF3DLL;
  v5 = *(v2 + 8 * (((2 * (((((v3 - 19772) | 0x432C) - 1288169140) ^ a1) < ((v3 + 1843042707) ^ 0x6DDB0757u))) | (32 * (((((v3 - 19772) | 0x432C) - 1288169140) ^ a1) < ((v3 + 1843042707) ^ 0x6DDB0757u)))) ^ v3));
  STACK[0x380] = (2 * v4) & 0x1F7FBBE7ALL;
  return v5();
}

uint64_t sub_100E162C0(uint64_t a1, uint64_t a2)
{
  v8 = *(a2 + 4 * (v2 - 1));
  v9 = 1664525 * (((v8 ^ (v8 >> 30) ^ 0x1E971FE) + 946054488) ^ ((v8 ^ (v8 >> 30) ^ 0xECD50518) - 715140686) ^ ((v8 ^ (v8 >> 30) ^ 0xED3C74E6) - 726228912)) + 107148493;
  v10 = (v9 ^ 0xFEB82291) & (2 * (v9 & 0xF83A8291)) ^ v9 & 0xF83A8291;
  v11 = ((2 * (v9 ^ 0x2EC823B1)) ^ 0xADE54240) & (v9 ^ 0x2EC823B1) ^ (2 * (v9 ^ 0x2EC823B1)) & 0xD6F2A120;
  v12 = v11 ^ 0x5212A120;
  v13 = (v11 ^ 0x80E00000) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x5BCA8480) & v12 ^ (4 * v12) & 0xD6F2A120;
  v15 = (v14 ^ 0x52C28000) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x84302120)) ^ 0x6F2A1200) & (v14 ^ 0x84302120) ^ (16 * (v14 ^ 0x84302120)) & 0xD6F2A120;
  v17 = v15 ^ 0xD6F2A120 ^ (v16 ^ 0x46220000) & (v15 << 8);
  v18 = v9 ^ *(a2 + 4 * v2) ^ (2 * ((v17 << 16) & 0x56F20000 ^ v17 ^ ((v17 << 16) ^ 0x21200000) & (((v16 ^ 0x90D0A120) << 8) & 0x56F20000 ^ 0x4520000 ^ (((v16 ^ 0x90D0A120) << 8) ^ 0x72A10000) & (v16 ^ 0x90D0A120))));
  *(a2 + 4 * v2) = v3 + *(STACK[0x4D0] + 4 * v3) + 221281874 + (((v18 ^ 0x1826F555) - 1082739670) ^ ((v18 ^ 0x36475026) - 1860759205) ^ ((v18 ^ 0x7BFE65A2) - 592567073));
  STACK[0x25D8] = v4 + 623;
  *(v7 - 220) = v4 ^ (v6 - 1531493102) ^ 0xE36;
  *(v7 - 216) = v6 - 1531493102 + v4;
  *(v7 - 224) = 317506016 - v4 + v6;
  *(v7 - 240) = ((v6 - 1531493102) ^ 0x28) + v4;
  STACK[0x25F0] = (v2 + 1) ^ v4;
  *(v7 - 196) = v4;
  v19 = (*(v5 + 8 * (v6 ^ LODWORD(STACK[0x4F0]))))(v7 - 240);
  return (*(v5 + 8 * *(v7 - 200)))(v19);
}

uint64_t sub_100E16618()
{
  v1 = *(v0 - 224);
  LODWORD(STACK[0x2BC]) ^= 0x7D6A93EC ^ (4 * v1) ^ 0x6135E4F0;
  LODWORD(STACK[0x21C]) = LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x2B8]) ^ 0x4C4C4C4C;
  return (*(*(v0 - 184) + 8 * (v1 ^ 0x984D4236 ^ (31039 * (v1 > 0x1861F65F)))))(3104078084, 4058);
}

uint64_t sub_100E168FC@<X0>(int a1@<W8>)
{
  v4 = (((2 * v3) ^ 0x4AC157EC) - 2128441438) ^ (((2 * v3) ^ 0xA39C3200) + 1753213518) ^ (((2 * v3) ^ 0x4D646340 ^ (((v1 - 2120570451) | 0x50004) + 2120238456)) - 2037924726);
  v5 = a1 | 0x9F99D204;
  v7 = v4 > 0x6FDAD965 && v4 + 801044638 < v5;
  return (*(v2 + 8 * ((60 * v7) ^ v1)))();
}

uint64_t sub_100E16A20()
{
  v3 = STACK[0x790];
  v4 = (v3 ^ 0x8A24A3E4) & (2 * (v3 & v2)) ^ v3 & v2;
  v5 = (((v3 ^ 0x8B4CA1EC) << ((v1 + 110) ^ 0x58)) ^ 0x13F454D0) & (v3 ^ 0x8B4CA1EC) ^ ((v3 ^ 0x8B4CA1EC) << ((v1 + 110) ^ 0x58)) & 0x9FA2A68;
  v6 = v5 ^ 0x80A2A28;
  v7 = (v5 ^ 0x1F00008) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x27E8A9A0) & v6 ^ (4 * v6) & 0x9FA2A68;
  v9 = (v8 ^ 0x1E82820) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x8120248)) ^ 0x9FA2A680) & (v8 ^ 0x8120248) ^ (16 * (v8 ^ 0x8120248)) & 0x9FA2A60;
  v11 = v9 ^ 0x9FA2A68 ^ (v10 ^ 0x9A22200) & (v9 << 8);
  v12 = (*(v0 + 8 * (v1 ^ 0x40D5)))(LODWORD(STACK[0x790]) ^ (2 * ((v11 << 16) & 0x9FA0000 ^ v11 ^ ((v11 << 16) ^ 0x2A680000) & (((v10 ^ 0x580868) << 8) & 0x9FA0000 ^ 0x1D00000 ^ (((v10 ^ 0x580868) << 8) ^ 0x7A2A0000) & (v10 ^ 0x580868)))) ^ 0x8192DF54) != 0;
  return (*(v0 + 8 * (((2 * v12) | (4 * v12)) ^ v1)))();
}

uint64_t sub_100E16C0C@<X0>(int a1@<W8>)
{
  v3 = a1 + 2120260205;
  v4 = (*(v2 + 8 * (v1 + a1 + 25)))();
  return (*(v2 + 8 * v3))(v4);
}

uint64_t sub_100E16C40()
{
  v3 = *(v2 + 8 * ((((v0 ^ 0x307E4170 ^ ((v1 ^ 0x63EEu) - 2120237523)) > 7) * ((18 * (v1 ^ 0x63EE)) ^ 0x45D3)) ^ v1));
  STACK[0x530] = *(STACK[0x1370] + 24);
  return v3(0xCFCFF1427020737CLL, 0x7301F4C8C8D79D4ALL, 0x1A4B9753FB7EF797, 0x42600A02020150, 0xA89F09F2FBC20B7, 0xF5F3C9C2DF4A4713, 0xDD871B5A503C70A3, 0x733519A723181E1ELL);
}

uint64_t sub_100E16E4C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t a9@<X8>)
{
  v21 = *(v18 + 8 * v16);
  *&STACK[0x4A0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3E0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x490] = vdupq_n_s64(0x4E0B6541E4935D63uLL);
  STACK[0x2D0] = v17 & 0xFFFFFFF0;
  *&STACK[0x480] = vdupq_n_s64(v12);
  *&STACK[0x470] = vdupq_n_s64(v9);
  *&STACK[0x460] = vdupq_n_s64(a6);
  *&STACK[0x3C0] = vdupq_n_s64(a3);
  *&STACK[0x3D0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x450] = vdupq_n_s64(v10);
  *&STACK[0x2E0] = vdupq_n_s64(v11);
  *&STACK[0x3A0] = vdupq_n_s64(a4);
  *&STACK[0x3B0] = vdupq_n_s64(v19);
  *&STACK[0x380] = vdupq_n_s64(0x1C02DF5B258263EDuLL);
  *&STACK[0x390] = vdupq_n_s64(a5);
  *&STACK[0x360] = vdupq_n_s64(v20);
  *&STACK[0x370] = vdupq_n_s64(0x97A272994B3412E8);
  *&STACK[0x340] = vdupq_n_s64(a8);
  *&STACK[0x350] = vdupq_n_s64(v14);
  *&STACK[0x440] = vdupq_n_s64(v15);
  *&STACK[0x430] = vdupq_n_s64(a2);
  *&STACK[0x420] = vdupq_n_s64(a1);
  *&STACK[0x320] = vdupq_n_s64(a9);
  *&STACK[0x330] = vdupq_n_s64(a7);
  *&STACK[0x300] = vdupq_n_s64(0xB2823E14A03C0367);
  *&STACK[0x310] = vdupq_n_s64(v13);
  *&STACK[0x410] = vdupq_n_s64(0x69517CAD07781183uLL);
  *&STACK[0x2F0] = xmmword_101237190;
  return v21();
}

uint64_t sub_100E170AC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1824]) = v1;
  v4 = STACK[0xD40];
  v5 = 1534937323 * ((v3 - 0x6E540563E0B4AC9DLL - 2 * ((v3 - 240) & 0x91ABFA9C1F4B5453)) ^ 0x5CD3725ED9A5AF14);
  *(v3 - 208) = ((a1 + 1211071600) ^ 0xF1E7D2BA) + 1534937323 * ((v3 + 525030243 - 2 * ((v3 - 240) & 0x1F4B5453)) ^ 0xD9A5AF14);
  *(v3 - 216) = v4 + v5;
  *(v3 - 224) = 1534937323 * ((v3 + 525030243 - 2 * ((v3 - 240) & 0x1F4B5453)) ^ 0xD9A5AF14);
  *(v3 - 220) = (1534937323 * ((v3 + 525030243 - 2 * ((v3 - 240) & 0x1F4B5453)) ^ 0xD9A5AF14)) ^ (a1 + 1211071600) ^ 0xF1E7D2AC;
  *(v3 - 232) = ((a1 + 1211071600) ^ 0xF1E7DD81) - 1534937323 * ((v3 + 525030243 - 2 * ((v3 - 240) & 0x1F4B5453)) ^ 0xD9A5AF14);
  *(v3 - 228) = 1534937323 * ((v3 + 525030243 - 2 * ((v3 - 240) & 0x1F4B5453)) ^ 0xD9A5AF14) + a1 - 1632379223;
  *(v3 - 240) = v5;
  v6 = (*(v2 + 8 * (a1 + 1211103395)))(v3 - 240);
  return (*(v2 + 8 * *(v3 - 204)))(v6);
}

uint64_t sub_100E17544()
{
  v6 = *(v0 + v5 * v3 + 36);
  v8 = (v6 + 621564094) < 0x80000003 && v6 != (((v1 - 1574656832) | 0x41400536) ^ v2);
  return (*(v4 + 8 * ((v8 * (((v1 - 202825231) & 0xC16DAFF) + 22744)) ^ v1)))();
}

uint64_t sub_100E17840()
{
  v2 = *STACK[0x5E0];
  v3 = STACK[0xAB0];
  v4 = &STACK[0x1D80] + STACK[0xAB0];
  STACK[0xB10] = (v4 + 32);
  STACK[0xD50] = (v4 + 48);
  STACK[0xAB0] = v3 + 128;
  v5 = (*(v0 + 8 * (v1 + 10651)))(v4, 0, 32);
  STACK[0xE70] = 0x683CBC57EAB92A3ELL;
  STACK[0xAC8] = v2;
  return (*(v0 + 8 * (((((v1 - 87) ^ (v2 == 0x79CEC8CF5A6FCEBALL)) & 1) * ((v1 + 4133) ^ 0x62EA)) | v1)))(v5);
}

uint64_t sub_100E17904(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, int a14)
{
  *&STACK[0x4F0] = *(v17 + v15 - 16);
  v35.i64[0] = v14 + v15;
  v35.i64[1] = v17 + v15 - 6;
  *&v36 = v17 + v15 - 15;
  *(&v36 + 1) = v17 + v15 - 16;
  *&STACK[0x4C0] = v36;
  v37.i64[0] = v17 + v15 - 13;
  v37.i64[1] = v17 + v15 - 14;
  v38.i64[0] = v17 + v15 - 11;
  v38.i64[1] = v17 + v15 - 12;
  v39 = v34;
  v40 = v33;
  v41 = v32;
  v42 = v31;
  v43 = v30;
  v44 = v29;
  v45 = v28;
  v46 = v27;
  v47 = v25;
  v48 = v24;
  v49 = v23;
  v51 = v22;
  v52.i64[0] = v17 + v15 - 7;
  v52.i64[1] = v17 + v15 - 8;
  v53.i64[0] = v17 + v15 - 3;
  v54 = STACK[0x540];
  v53.i64[1] = v17 + v15 - 4;
  v55.i64[0] = v17 + v15 - 1;
  v55.i64[1] = v17 + v15 - 2;
  v56 = vandq_s8(v55, v21);
  v57 = vandq_s8(v53, v21);
  v58 = vandq_s8(v52, v21);
  v59 = vandq_s8(v35, v21);
  v61 = *&STACK[0x4D0];
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), *&STACK[0x4D0]);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), *&STACK[0x4D0]);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), *&STACK[0x4D0]);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), *&STACK[0x4D0]);
  v66 = *&STACK[0x490];
  v67 = vorrq_s8(v65, *&STACK[0x490]);
  v68 = vorrq_s8(v64, *&STACK[0x490]);
  *&STACK[0x4A0] = vsubq_s64(vorrq_s8(v62, *&STACK[0x490]), vorrq_s8(v62, a5));
  v69 = vorrq_s8(v64, a5);
  v70 = vsubq_s64(vorrq_s8(v63, v66), vorrq_s8(v63, a5));
  v71 = vaddq_s64(vsubq_s64(v67, vorrq_s8(v65, a5)), a5);
  v72 = vaddq_s64(vsubq_s64(v68, v69), a5);
  v73 = veorq_s8(v72, v51);
  v74 = veorq_s8(v71, v51);
  v75 = veorq_s8(v71, a8);
  v76 = veorq_s8(v72, a8);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v75), v49);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76), v49);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v81 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80);
  v83 = veorq_s8(vaddq_s64(v81, v79), v48);
  v84 = veorq_s8(v82, v48);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v87 = veorq_s8(v83, v85);
  v88 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), v47);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v92 = veorq_s8(v89, v47);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v91);
  v95 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v97 = vaddq_s64(v95, v93);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, v46), vorrq_s8(v96, v26)), v26), v45);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, v46), vorrq_s8(v97, v26)), v26), v45);
  v100 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v101 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v102 = veorq_s8(v98, v100);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v102);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v101);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), v44), v103), v43), v42);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v44), v104), v43), v42);
  v107 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v108 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v109 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v108);
  v111 = vaddq_s64(v109, v107);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(v111, vandq_s8(vaddq_s64(v111, v111), v41)), v40), v39);
  v113 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), v41)), v40), v39);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v116 = veorq_s8(v112, v113);
  v117 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v119 = vdupq_n_s64(v19);
  v120 = vaddq_s64(v70, a5);
  v234.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v118, v116), a6), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v119)));
  v234.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v117, v115), a6), vnegq_s64(vandq_s8(vshlq_n_s64(v52, 3uLL), v119)));
  v121 = veorq_s8(v120, v51);
  v122 = veorq_s8(v120, a8);
  v123 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v49);
  v125 = veorq_s8(v124, v123);
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v48);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v47);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v130, v46), vorrq_s8(v130, v26)), v26), v45);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), v44), v133), v43), v42);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v41)), v40), v39);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v135.i64[0] = v17 + v15 - 9;
  v135.i64[1] = v17 + v15 - 10;
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138);
  v140 = vandq_s8(v135, v21);
  v141 = vaddq_s64(*&STACK[0x4A0], a5);
  v234.val[1] = vshlq_u64(veorq_s8(v139, a6), vnegq_s64(vandq_s8(vshlq_n_s64(v53, 3uLL), v119)));
  v142 = veorq_s8(v141, v51);
  v143 = veorq_s8(v141, a8);
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v49);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v48);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v47);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, v46), vorrq_s8(v150, v26)), v26), v45);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), v44), v153), v43), v42);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(v156, vandq_s8(vaddq_s64(v156, v156), v41)), v40), v39);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v159 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v160 = vandq_s8(v38, v21);
  v161 = vaddq_s64(v159, v158);
  v162 = vandq_s8(v37, v21);
  v234.val[0] = vshlq_u64(veorq_s8(v161, a6), vnegq_s64(vandq_s8(vshlq_n_s64(v55, 3uLL), v119)));
  v163 = vandq_s8(*&STACK[0x4C0], v21);
  v164 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v61);
  v168 = vaddq_s64(v166, v61);
  v169 = vaddq_s64(v165, v61);
  v170 = vaddq_s64(v164, v61);
  v171 = vsubq_s64(vorrq_s8(v167, v66), vorrq_s8(v167, a5));
  v172 = vaddq_s64(vsubq_s64(vorrq_s8(v170, v66), vorrq_s8(v170, a5)), a5);
  v173 = vaddq_s64(vsubq_s64(vorrq_s8(v169, v66), vorrq_s8(v169, a5)), a5);
  v174 = v20[25];
  v169.i64[0] = vqtbl4q_s8(v234, v174).u64[0];
  v234.val[0] = veorq_s8(v173, v51);
  v234.val[1] = veorq_s8(v172, v51);
  v234.val[2] = veorq_s8(v172, a8);
  v234.val[3] = veorq_s8(v173, a8);
  v234.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[1], 0x38uLL), v234.val[1], 8uLL), v234.val[2]), v49);
  v234.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), v234.val[3]), v49);
  v175 = vsraq_n_u64(vshlq_n_s64(v234.val[2], 3uLL), v234.val[2], 0x3DuLL);
  v234.val[2] = veorq_s8(v234.val[0], vsraq_n_u64(vshlq_n_s64(v234.val[3], 3uLL), v234.val[3], 0x3DuLL));
  v234.val[3] = veorq_s8(v234.val[1], v175);
  v176 = vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL);
  v234.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[1], 0x38uLL), v234.val[1], 8uLL), v234.val[3]);
  v234.val[1] = veorq_s8(vaddq_s64(v176, v234.val[2]), v48);
  v177 = vsraq_n_u64(vshlq_n_s64(v234.val[2], 3uLL), v234.val[2], 0x3DuLL);
  v234.val[0] = veorq_s8(v234.val[0], v48);
  v234.val[2] = veorq_s8(v234.val[0], vsraq_n_u64(vshlq_n_s64(v234.val[3], 3uLL), v234.val[3], 0x3DuLL));
  v234.val[3] = veorq_s8(v234.val[1], v177);
  v178 = vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL);
  v234.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[1], 0x38uLL), v234.val[1], 8uLL), v234.val[3]);
  v234.val[1] = veorq_s8(vaddq_s64(v178, v234.val[2]), v47);
  v179 = vsraq_n_u64(vshlq_n_s64(v234.val[2], 3uLL), v234.val[2], 0x3DuLL);
  v234.val[0] = veorq_s8(v234.val[0], v47);
  v234.val[2] = veorq_s8(v234.val[0], vsraq_n_u64(vshlq_n_s64(v234.val[3], 3uLL), v234.val[3], 0x3DuLL));
  v234.val[3] = veorq_s8(v234.val[1], v179);
  v180 = vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL);
  v234.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[1], 0x38uLL), v234.val[1], 8uLL), v234.val[3]);
  v234.val[1] = vaddq_s64(v180, v234.val[2]);
  v234.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v234.val[0], v46), vorrq_s8(v234.val[0], v26)), v26), v45);
  v234.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v234.val[1], v46), vorrq_s8(v234.val[1], v26)), v26), v45);
  v234.val[2] = veorq_s8(v234.val[1], vsraq_n_u64(vshlq_n_s64(v234.val[2], 3uLL), v234.val[2], 0x3DuLL));
  v234.val[3] = veorq_s8(v234.val[0], vsraq_n_u64(vshlq_n_s64(v234.val[3], 3uLL), v234.val[3], 0x3DuLL));
  v234.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), v234.val[3]);
  v234.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[1], 0x38uLL), v234.val[1], 8uLL), v234.val[2]);
  v234.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v234.val[1], v234.val[1]), v44), v234.val[1]), v43), v42);
  v234.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v234.val[0], v234.val[0]), v44), v234.val[0]), v43), v42);
  v181 = vsraq_n_u64(vshlq_n_s64(v234.val[2], 3uLL), v234.val[2], 0x3DuLL);
  v234.val[2] = veorq_s8(v234.val[0], vsraq_n_u64(vshlq_n_s64(v234.val[3], 3uLL), v234.val[3], 0x3DuLL));
  v234.val[3] = veorq_s8(v234.val[1], v181);
  v182 = vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL);
  v234.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[1], 0x38uLL), v234.val[1], 8uLL), v234.val[3]);
  v234.val[1] = vaddq_s64(v182, v234.val[2]);
  v234.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v234.val[1], vandq_s8(vaddq_s64(v234.val[1], v234.val[1]), v41)), v40), v39);
  v183 = vsraq_n_u64(vshlq_n_s64(v234.val[2], 3uLL), v234.val[2], 0x3DuLL);
  v234.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v234.val[0], vandq_s8(vaddq_s64(v234.val[0], v234.val[0]), v41)), v40), v39);
  v234.val[2] = veorq_s8(v234.val[0], vsraq_n_u64(vshlq_n_s64(v234.val[3], 3uLL), v234.val[3], 0x3DuLL));
  v184 = vaddq_s64(vsubq_s64(vorrq_s8(v168, v66), vorrq_s8(v168, a5)), a5);
  v185 = v51;
  v186 = a8;
  v187 = v49;
  v188 = v48;
  v189 = v47;
  v190 = v46;
  v191 = v45;
  v192 = v44;
  v193 = v43;
  v194 = v42;
  v195 = v41;
  v196 = v40;
  v197 = v39;
  v234.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[1], 0x38uLL), v234.val[1], 8uLL), veorq_s8(v234.val[1], v183)), *&STACK[0x530]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x4C0], 3uLL), v119)));
  v234.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234.val[0], 0x38uLL), v234.val[0], 8uLL), v234.val[2]), *&STACK[0x530]), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v119)));
  v198 = veorq_s8(v184, v185);
  v199 = veorq_s8(v184, v186);
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v187);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v188);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v204 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203), v189);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v206, v190), vorrq_s8(v206, v26)), v26), v191);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v208);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v209, v209), v192), v209), v193), v194);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211);
  v213 = veorq_s8(vaddq_s64(vsubq_s64(v212, vandq_s8(vaddq_s64(v212, v212), v195)), v196), v39);
  v214 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL)));
  v215 = vaddq_s64(v171, a5);
  v234.val[1] = vshlq_u64(veorq_s8(v214, *&STACK[0x530]), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v119)));
  v216 = veorq_s8(v215, v185);
  v217 = vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL);
  v218 = veorq_s8(v215, v186);
  v219 = veorq_s8(vaddq_s64(v217, v218), v187);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), v188);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), v189);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v225, v190), vorrq_s8(v225, v26)), v26), v191);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228, v228), v192), v228), v193), v194);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(v231, vandq_s8(vaddq_s64(v231, v231), v195)), v196), v197);
  v234.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL))), *&STACK[0x530]), vnegq_s64(vandq_s8(vshlq_n_s64(v135, 3uLL), v119)));
  v234.val[0].i64[0] = vqtbl4q_s8(v234, v174).u64[0];
  v234.val[1].i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v234.val[1].i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v169.i64[1] = v234.val[0].i64[0];
  v234.val[0] = vrev64q_s8(*&STACK[0x4F0]);
  v234.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v234.val[0], v234.val[0], 8uLL), v234.val[1]), v169));
  *(v18 + v15) = vextq_s8(v234.val[0], v234.val[0], 8uLL);
  return (*(v54 + 8 * (((v16 == v15) * a11) ^ a14)))();
}

uint64_t sub_100E18470@<X0>(_BYTE *a1@<X8>)
{
  v1[20] = a1[112];
  v1[21] = a1[113];
  v1[22] = a1[114];
  v1[23] = a1[115];
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100E18548(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = v12 + (a4 - 1329026839);
  v24 = *(*v18 + ((*a2 & ((v23 & 0xFFFFFFF8) + v16)) & 0xFFFFFFFFFFFFFFF8));
  v25 = (__ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8) + v24) ^ v19;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v22;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v17 - ((v29 + v28) | v17) + ((v29 + v28) | 0x1F14EC46A824BA78)) ^ 0x3D613881901183E3;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xE5AF1AB32EBD3CDDLL;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (((2 * (v33 + v34)) & 0x9394A061B0F3B938) - (v33 + v34) + 0x3635AFCF27862363) ^ 0xF1E86639EBC39442;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (0x51B0E2BC8CAE7338 - ((v37 + v36) | 0x51B0E2BC8CAE7338) + ((v37 + v36) | 0xAE4F1D4373518CC7)) ^ 0x6693DE62A8356BFLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((v40 + v39) & 0xC25C4C9F91B92FFBLL ^ 0xC018049001090BE3) + ((v40 + v39) & 0x3DA3B3606E46D004 ^ 0x5A293006E044005) - 1) ^ 0x9A377BAECC9541FCLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = *(v10 + 4 * (((((a4 ^ 0xEDAE3ACA) + 1567003171) ^ a4 ^ ((a4 ^ 0x7EAC5E4D) - 832244058) ^ ((a4 ^ 0xA1CBCC6C) + 285435016) ^ ((a4 ^ 0x7DFEFFFC) - 852076776)) >> 2) ^ 0x13CDD5C5) + 72);
  *v23 = v44 ^ v14 ^ (((0xD96B88D9DB2F70E4 - ((v43 + v42) | 0xD96B88D9DB2F70E4) + ((v43 + v42) | 0x2694772624D08F1BLL)) ^ 0xE757BFF48015C733) >> (8 * (v23 & 7u)));
  v45 = v12 + (a4 - 1329026838);
  v46 = *(*v18 + ((*a2 & (v16 + (v45 & 0xFFFFFFF8) - 1)) & 0xFFFFFFFFFFFFFFF8));
  v47 = __ROR8__(v45 & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = (v13 - ((v46 + v47) | v13) + ((v46 + v47) | 0x9FF91125F5085B8)) ^ 0xFDE9C05BC00EB9DFLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0x22680DFA3B0E97AALL) - (v50 + v49) + 0x6ECBF902E278B42ALL) ^ 0x7BF9BBECDE88DE63;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (0x911254BE5BB72595 - ((v53 + v52) | 0x911254BE5BB72595) + ((v53 + v52) | 0x6EEDAB41A448DA6ALL)) ^ 0x4C987F869C7DE3F1;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (a3 - ((v56 + v55) | a3) + ((v56 + v55) | 0x1CEBEAE8E6DC2AC9)) ^ 0xF944F05BC8611614;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v11;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ v15;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (v63 + v62 - ((2 * (v63 + v62)) & 0xD640282177A93F28) + 0x6B201410BBD49F94) ^ 0x34ADF82E184C958FLL;
  *v45 = (((__ROR8__(v64, 8) + (v64 ^ __ROR8__(v62, 61))) ^ v9) >> (8 * (v45 & 7u))) ^ BYTE1(v44) ^ 0xD6;
  v65 = v12 + (a4 - 1329026837);
  v66 = *(*v18 + ((((v65 & 0xFFFFFFF8) + v16) & *a2) & 0xFFFFFFFFFFFFFFF8));
  v67 = __ROR8__(v65 & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = (((2 * (v66 + v67)) | 0xAD045F9CC028C28CLL) - (v66 + v67) + 0x297DD0319FEB9EBALL) ^ 0x22947E87FF4A5D21;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (0xC8D4608183E1D454 - ((v70 + v69) | 0xC8D4608183E1D454) + ((v70 + v69) | 0x372B9F7E7C1E2BABLL)) ^ 0x2219DD9040EE41E2;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((2 * (v73 + v72)) & 0x45402589A0CAE1C0) - (v73 + v72) - 0x22A012C4D06570E1) ^ 0xFF2A39FC17AFB684;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = __ROR8__(v74, 8);
  v77 = __ROR8__((a8 - ((v76 + v75) | a8) + ((v76 + v75) | 0x1EB133D364E0338ALL)) ^ 0xFB1E29604A5D0F57, 8);
  v78 = (a8 - ((v76 + v75) | a8) + ((v76 + v75) | 0x1EB133D364E0338ALL)) ^ 0xFB1E29604A5D0F57 ^ __ROR8__(v75, 61);
  v79 = (v77 + v78 - ((2 * (v77 + v78)) & 0x2219F596E3A17A52) + 0x110CFACB71D0BD29) ^ 0xD6D1333DBD950A08;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((2 * (v81 + v80)) | 0x4362E3B07C85996ELL) - (v81 + v80) - 0x21B171D83E42CCB7) ^ 0x8997517D679016CFLL;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ v20;
  *v65 = (((__ROR8__(v84, 8) + (v84 ^ __ROR8__(v83, 61))) ^ v9) >> (8 * (v65 & 7u))) ^ BYTE2(v44) ^ 8;
  v85 = v12 + (a4 - 1329026836);
  v86 = *(*v18 + ((((v85 & 0xFFFFFFF8) + v16) & *a2) & 0xFFFFFFFFFFFFFFF8));
  v87 = __ROR8__(v85 & 0xFFFFFFFFFFFFFFF8, 8);
  v88 = (((2 * (v86 + v87)) & 0x66756D3FE33EF8A6) - (v86 + v87) + 0x4CC549600E6083ACLL) ^ 0xB8D31829913EBFCBLL;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (v90 + v89 - ((2 * (v90 + v89)) & 0xE7343EF5539D6334) + 0x739A1F7AA9CEB19ALL) ^ 0x66A85D94953EDBD3;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (((2 * (v93 + v92)) | 0x898C547C978AAB3ALL) - (v93 + v92) - 0x44C62A3E4BC5559DLL) ^ 0x66B3FEF973F06C06 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__((((2 * (v93 + v92)) | 0x898C547C978AAB3ALL) - (v93 + v92) - 0x44C62A3E4BC5559DLL) ^ 0x66B3FEF973F06C06, 8) + v94) ^ 0xE5AF1AB32EBD3CDDLL;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (v97 + v96 - ((2 * (v97 + v96)) & 0x3A02643BF41280E6) + 0x1D01321DFA094073) ^ 0xDADCFBEB364CF752;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ v15;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8) + v101;
  *v85 = (((__ROR8__((v102 - ((2 * v102) & 0x23028890B4DAECA0) + 0x118144485A6D7650) ^ 0x4E0CA876F9F57C4BLL, 8) + ((v102 - ((2 * v102) & 0x23028890B4DAECA0) + 0x118144485A6D7650) ^ 0x4E0CA876F9F57C4BLL ^ __ROR8__(v101, 61))) ^ v9) >> (8 * (v85 & 7u))) ^ HIBYTE(v44) ^ 0x9B;
  LODWORD(v85) = *(v10 + 104);
  LODWORD(v101) = v85 - 1745137883;
  v103 = v85 > 0x6804B0DA;
  v104 = a4 + 1220802578 < v101;
  if ((a4 + 1220802578) < 0x97FB4F25 == v103)
  {
    v103 = v104;
  }

  return (*(v21 + 8 * ((18419 * v103) ^ (v8 + 2120241855))))();
}

uint64_t sub_100E18E50()
{
  v3 = v0 + 2120243609;
  *(v1 - 0x2369327399A66D85) = 0x1883660EE8144416;
  (*(v2 + 8 * (v0 + 2120268353)))(v1 - 0x2369327399A66D95);
  return (*(v2 + 8 * v3))(0xE5AF1AB32EBD3CDDLL);
}

uint64_t sub_100E18F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int8x16_t a51, int8x16_t a52, int64x2_t a53)
{
  v61 = *&STACK[0x3A0];
  v60 = *&STACK[0x3B0];
  STACK[0x420] = *(a12 + v55 - 8);
  v62.i64[0] = a12 + v55 + (a4 ^ 0xFFFFFFFFFFFFBE77);
  v62.i64[1] = a12 + v55 - 8;
  *&STACK[0x410] = v62;
  v63.i64[0] = a12 + v55 - 1;
  v64.i64[0] = a12 + v55 - 3;
  v63.i64[1] = a12 + v55 - 2;
  v64.i64[1] = a12 + v55 - 4;
  v65.i64[0] = a12 + v55 - 5;
  v65.i64[1] = a12 + v55 - 6;
  v66 = v53 + v55 - 1652052922;
  v67.i64[0] = v53 + v55 - 1652052923;
  v67.i64[1] = v53 + v55 - 1652052924;
  v68 = v67;
  *&STACK[0x3E0] = v67;
  v69.i64[0] = v53 + v55 - 1652052925;
  v69.i64[1] = v53 + v55 - 1652052926;
  v67.i64[0] = v66 + (a4 ^ 0xFFFFFFFFFFFFBE77);
  v67.i64[1] = v53 + v55 - 1652052930;
  v70 = v67;
  *&STACK[0x400] = v67;
  v71.i64[0] = v53 + v55 - 1652052927;
  v71.i64[1] = v53 + v55 - 1652052928;
  v72 = vandq_s8(v65, *&STACK[0x430]);
  v73 = vandq_s8(v64, *&STACK[0x430]);
  v74 = vandq_s8(v63, *&STACK[0x430]);
  v75 = vandq_s8(v62, *&STACK[0x430]);
  v76 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v80 = vaddq_s64(vsubq_s64(v79, vandq_s8(vaddq_s64(vaddq_s64(v79, v79), *&STACK[0x360]), *&STACK[0x390])), v61);
  v81 = vaddq_s64(vsubq_s64(v78, vandq_s8(vaddq_s64(vaddq_s64(v78, v78), *&STACK[0x360]), *&STACK[0x390])), v61);
  v82 = vaddq_s64(vsubq_s64(v77, vandq_s8(vaddq_s64(vaddq_s64(v77, v77), *&STACK[0x360]), *&STACK[0x390])), v61);
  v83 = vaddq_s64(vsubq_s64(v76, vandq_s8(vaddq_s64(vaddq_s64(v76, v76), *&STACK[0x360]), *&STACK[0x390])), v61);
  v84 = veorq_s8(v83, *&STACK[0x2C0]);
  v85 = veorq_s8(v82, *&STACK[0x2C0]);
  v86 = veorq_s8(v81, *&STACK[0x2C0]);
  v87 = veorq_s8(v80, *&STACK[0x2C0]);
  v88 = veorq_s8(v80, v60);
  v89 = veorq_s8(v81, v60);
  v90 = veorq_s8(v82, v60);
  v91 = veorq_s8(v83, v60);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), v59);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v89), v59);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v90), v59);
  v96 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v91), v59);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v100 = veorq_s8(v95, v97);
  v101 = veorq_s8(v93, v96);
  v102 = veorq_s8(v92, v94);
  v103 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v102);
  v107 = veorq_s8(vaddq_s64(v103, v99), v57);
  v108 = veorq_s8(vaddq_s64(v104, v100), v57);
  v109 = veorq_s8(vaddq_s64(v105, v101), v57);
  v110 = veorq_s8(v106, v57);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), v58), v110), *&STACK[0x330]), *&STACK[0x380]);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), v58), v109), *&STACK[0x330]), *&STACK[0x380]);
  v113 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v58), v108), *&STACK[0x330]), *&STACK[0x380]);
  v115 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v58), v107), *&STACK[0x330]), *&STACK[0x380]);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v119 = veorq_s8(v114, v116);
  v120 = veorq_s8(v112, v115);
  v121 = veorq_s8(v111, v113);
  v122 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v121);
  v126 = vaddq_s64(v123, v119);
  v127 = veorq_s8(vaddq_s64(v122, v118), *&STACK[0x2E0]);
  v128 = veorq_s8(v126, *&STACK[0x2E0]);
  v129 = veorq_s8(vaddq_s64(v124, v120), *&STACK[0x2E0]);
  v130 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v131 = veorq_s8(v125, *&STACK[0x2E0]);
  v132 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v134 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v135 = veorq_s8(v129, v133);
  v136 = veorq_s8(v128, v132);
  v137 = veorq_s8(v127, v130);
  v138 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v137);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v136);
  v142 = veorq_s8(vaddq_s64(v138, v134), *&STACK[0x320]);
  v143 = veorq_s8(vaddq_s64(v139, v135), *&STACK[0x320]);
  v144 = veorq_s8(v141, *&STACK[0x320]);
  v145 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v147 = veorq_s8(v140, *&STACK[0x320]);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v149 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v150 = veorq_s8(v143, v146);
  v151 = veorq_s8(v142, v145);
  v152 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v151);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v150);
  v156 = vaddq_s64(v153, v149);
  v157 = vaddq_s64(v152, v148);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v157, v157), *&STACK[0x370]), v157), a53), a52);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), *&STACK[0x370]), v156), a53), a52);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v155, v155), *&STACK[0x370]), v155), a53), a52);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v154, v154), *&STACK[0x370]), v154), a53), a52);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v163 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v164 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v165 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v166 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v169 = vandq_s8(v71, *&STACK[0x430]);
  v170 = vandq_s8(v69, *&STACK[0x430]);
  v171 = vandq_s8(v68, *&STACK[0x430]);
  v172 = vandq_s8(v70, *&STACK[0x430]);
  *&STACK[0x3F0] = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), *&STACK[0x340]);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), *&STACK[0x340]);
  v177 = veorq_s8(v176, *&STACK[0x2A0]);
  v178 = veorq_s8(v175, *&STACK[0x2A0]);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v165);
  v180 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v181 = veorq_s8(v175, *&STACK[0x2F0]);
  v182 = veorq_s8(v176, *&STACK[0x2F0]);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v181);
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v182), a51);
  v185 = vaddq_s64(v168, v164);
  v186 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v187 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v188 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v190 = veorq_s8(v183, a51);
  v191 = veorq_s8(v190, v186);
  v192 = vaddq_s64(v167, v163);
  v193 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v195 = vaddq_s64(v166, v162);
  v196 = vaddq_s64(v188, v187);
  v197 = veorq_s8(v196, *&STACK[0x440]);
  v198 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v196, v56), *&STACK[0x4A0]), v197), vandq_s8(v197, v56));
  v199 = veorq_s8(v194, *&STACK[0x440]);
  v200 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v194, v56), *&STACK[0x4A0]), v199), vandq_s8(v199, v56)), *&STACK[0x490]);
  v201 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v202 = veorq_s8(v198, *&STACK[0x490]);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v204 = veorq_s8(v200, v201);
  v205 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v206 = veorq_s8(v195, *&STACK[0x2D0]);
  v207 = vaddq_s64(v205, v203);
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v204), *&STACK[0x480]);
  v209 = veorq_s8(v192, *&STACK[0x2D0]);
  v210 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v211 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v212 = veorq_s8(v209, v189);
  v213 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v214 = veorq_s8(v207, *&STACK[0x480]);
  v215 = veorq_s8(v214, v210);
  v216 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v217 = vaddq_s64(v213, v211);
  v218 = veorq_s8(v206, v193);
  v219 = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), *&STACK[0x530]);
  v222 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v223 = veorq_s8(v221, v220);
  v224 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v225 = veorq_s8(v217, *&STACK[0x530]);
  v226 = veorq_s8(v225, v219);
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226);
  v228 = vaddq_s64(v224, v223);
  v229 = vaddq_s64(v216, v212);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v227, *&STACK[0x4F0]), vorrq_s8(v227, a8)), a8), *&STACK[0x4D0]);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228, *&STACK[0x4F0]), vorrq_s8(v228, a8)), a8), *&STACK[0x4D0]);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v233 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v234 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v235 = veorq_s8(vaddq_s64(v222, v218), *&STACK[0x310]);
  v236 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v237 = vsubq_s64(vorrq_s8(vaddq_s64(v235, v235), *&STACK[0x350]), v235);
  v238 = veorq_s8(vaddq_s64(v234, v232), *&STACK[0x450]);
  v239 = vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL);
  v240 = veorq_s8(vaddq_s64(v236, v233), *&STACK[0x450]);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v242 = veorq_s8(v238, v239);
  v243 = vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL);
  v244 = vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL);
  v245 = veorq_s8(v229, *&STACK[0x310]);
  v246 = vaddq_s64(v244, v242);
  v247 = vaddq_s64(v243, v241);
  v248 = vdupq_n_s64(0x38uLL);
  v249 = vaddq_s64(v173, *&STACK[0x340]);
  v250 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v246, v246), *&STACK[0x470]), v246), *&STACK[0x460]), *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), v248)));
  v299.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v237, *&STACK[0x2B0]), *&STACK[0x300]), vnegq_s64(vandq_s8(vshlq_n_s64(v65, 3uLL), v248))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v247, v247), *&STACK[0x470]), v247), *&STACK[0x460]), *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v71, 3uLL), v248))));
  v299.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v245, v245), *&STACK[0x350]), v245), *&STACK[0x2B0]), *&STACK[0x300]), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), v248))), v250);
  v251 = veorq_s8(v249, *&STACK[0x2A0]);
  v252 = veorq_s8(v249, *&STACK[0x2F0]);
  v253 = veorq_s8(v185, *&STACK[0x2D0]);
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252), a51);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v256 = veorq_s8(v179, *&STACK[0x2D0]);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255);
  v258 = veorq_s8(v257, *&STACK[0x440]);
  v259 = veorq_s8(v256, v174);
  v260 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v257, v56), *&STACK[0x4A0]), v258), vandq_s8(v258, v56)), *&STACK[0x490]);
  v261 = veorq_s8(v253, v180);
  v262 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v263 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v264 = vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL);
  v265 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v262), *&STACK[0x480]);
  v266 = vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL);
  v267 = veorq_s8(v265, v264);
  v268 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v267), *&STACK[0x530]);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v269);
  v271 = veorq_s8(vaddq_s64(v266, v261), *&STACK[0x310]);
  v272 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v270, *&STACK[0x4F0]), vorrq_s8(v270, a8)), a8), *&STACK[0x4D0]);
  v273 = veorq_s8(v272, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v274 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v273), *&STACK[0x450]);
  v275 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), veorq_s8(v274, vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL)));
  v276 = vaddq_s64(*&STACK[0x3F0], *&STACK[0x340]);
  v299.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v271, v271), *&STACK[0x350]), v271), *&STACK[0x2B0]), *&STACK[0x300]), vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), v248))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v275, v275), *&STACK[0x470]), v275), *&STACK[0x460]), *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), v248))));
  v277 = veorq_s8(v276, *&STACK[0x2A0]);
  v278 = veorq_s8(v276, *&STACK[0x2F0]);
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v278), a51);
  v280 = veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v280);
  v282 = vandq_s8(v281, v56);
  v283 = veorq_s8(v281, *&STACK[0x440]);
  v284 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(v282, *&STACK[0x4A0]), v283), vandq_s8(v283, v56)), *&STACK[0x490]);
  v285 = veorq_s8(v284, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL));
  v286 = veorq_s8(vaddq_s64(v263, v259), *&STACK[0x310]);
  v287 = vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL);
  v288 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v285), *&STACK[0x480]);
  v289 = vsubq_s64(vorrq_s8(vaddq_s64(v286, v286), *&STACK[0x350]), v286);
  v290 = veorq_s8(v288, v287);
  v291 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v290), *&STACK[0x530]);
  v292 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL));
  v293 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v293, *&STACK[0x4F0]), vorrq_s8(v293, a8)), a8), *&STACK[0x4D0]);
  v295 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v296 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295), *&STACK[0x450]);
  v297 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL), veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL)));
  v299.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v289, *&STACK[0x2B0]), *&STACK[0x300]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x410], 3uLL), v248))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v297, v297), *&STACK[0x470]), v297), *&STACK[0x460]), *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x400], 3uLL), v248))));
  *(v66 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v299, xmmword_1012371A0)), STACK[0x420]);
  return (*(v54 + 8 * ((94 * ((a2 | a11) >> 63)) ^ a3)))(a1, a2 + 8);
}

uint64_t sub_100E19B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 + 2120242972;
  if (LODWORD(STACK[0x12C8]) == a8 + 2120249007 + (a8 ^ 0x76E7D1DA))
  {
    v9 = a8 + 2120242973;
  }

  return (*(v8 + 8 * (v9 - 538)))(a1, STACK[0x4B8], 0xC7DDC9F6CC45B721, 0xA82620A559D2DA78, 0x153242EE3CF06A49);
}

uint64_t sub_100E19B9C(uint64_t a1)
{
  v4 = STACK[0x990];
  *(v1 + 1424) = *(v3 + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x1063)))(a1, 4151849234, v4);
}

uint64_t sub_100E19BFC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  v23 = 0;
  v24 = *(*STACK[0x4E8] + (*STACK[0x4B8] & 0xDF49AC04)) ^ 0xDF49AC05;
  v25 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v24 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v24;
  v26 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v25 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v25;
  v27 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v26 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v26;
  v28 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v27 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v27;
  v29 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v28 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v28;
  v30 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v29 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v29;
  v31 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v30 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v30;
  v32 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v31 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v31;
  STACK[0x21C0] = 0;
  v33 = 16777619 * ((-548819963 * v32 + 7) ^ (-548819963 * v32)) % 7;
  v34 = 16777619 * ((-548819963 * v32 + 6) ^ (-548819963 * v32)) % 6;
  v35 = 16777619 * ((-548819963 * v32 + 5) ^ (-548819963 * v32)) % 5;
  v36 = *(&STACK[0x21C0] | v33);
  *(&STACK[0x21C0] | v33) = STACK[0x21C7];
  v37 = *(&STACK[0x21C0] | v34);
  *(&STACK[0x21C0] | v34) = STACK[0x21C6];
  v38 = *(&STACK[0x21C0] | v35);
  *(&STACK[0x21C0] | v35) = STACK[0x21C5];
  *(v21 + 8) = v20;
  v39 = vdup_n_s32(-548819963 * v32);
  v40 = 16777619 * ((-548819963 * v32 + 3) ^ (-548819963 * v32)) % 3;
  v41.i32[0] = v39.i32[0];
  v41.i32[1] = -548819963 * v32 + 1;
  LOBYTE(STACK[0x21C7]) = v36;
  v42 = veor_s8(vmul_s32(v41, v39), v39);
  LOBYTE(STACK[0x21C6]) = v37;
  LOBYTE(STACK[0x21C5]) = v38;
  v43 = STACK[0x21C0];
  LOBYTE(STACK[0x21C0]) = STACK[0x21C4];
  LOBYTE(STACK[0x21C4]) = v43;
  v44 = *(&STACK[0x21C0] | v40);
  *(&STACK[0x21C0] | v40) = STACK[0x21C3];
  LOBYTE(STACK[0x21C3]) = v44;
  v45 = *(v21 + 1);
  *(v21 + 2) = STACK[0x21C0];
  LOWORD(STACK[0x21C0]) = v45;
  *v21 = vmla_s32(v42, *v21, vdup_n_s32(0x1000193u));
  v46 = *(v21 + 8);
  v47 = (-548819963 * v46) ^ v32;
  v48 = vdupq_n_s32(v47);
  v49 = xmmword_1012370F0;
  v50 = xmmword_101237100;
  v51 = xmmword_101237110;
  v52 = xmmword_101237120;
  v53.i64[0] = 0x9393939393939393;
  v53.i64[1] = 0x9393939393939393;
  v54.i64[0] = 0x1000000010;
  v54.i64[1] = 0x1000000010;
  do
  {
    v55 = *(v46 + v23);
    v68.val[1] = veorq_s8(vqtbl1q_s8(v55, xmmword_101237140), veorq_s8(v48, vmulq_s32(vaddq_s32(v51, v48), vsubq_s32(v51, v48))));
    v68.val[0] = veorq_s8(vqtbl1q_s8(v55, xmmword_101237150), veorq_s8(v48, vmulq_s32(vaddq_s32(v52, v48), vsubq_s32(v52, v48))));
    v68.val[2] = veorq_s8(vqtbl1q_s8(v55, xmmword_101237160), veorq_s8(v48, vmulq_s32(vaddq_s32(v50, v48), vsubq_s32(v50, v48))));
    v68.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v55, xmmword_101237170), v48), vmulq_s32(vaddq_s32(v49, v48), vsubq_s32(v49, v48)));
    *(v46 + v23) = vmulq_s8(vqtbl4q_s8(v68, xmmword_101237130), v53);
    v23 += 16;
    v52 = vaddq_s32(v52, v54);
    v51 = vaddq_s32(v51, v54);
    v50 = vaddq_s32(v50, v54);
    v49 = vaddq_s32(v49, v54);
  }

  while (v23 != 32);
  v56 = 3;
  do
  {
    v57 = 16777619 * ((v47 + v56) ^ v47) % v56;
    v58 = *(v46 + 8 * v57) ^ *(v46 + 8 * v56);
    *(v46 + 8 * v56) = v58;
    v59 = *(v46 + 8 * v57) ^ v58;
    *(v46 + 8 * v57) = v59;
    *(v46 + 8 * v56) ^= v59;
    v60 = v56-- + 1;
  }

  while (v60 > 2);
  v61 = *(&STACK[0x21C8] + v33);
  *(&STACK[0x21C8] + v33) = *(v21 + 15);
  *(v21 + 15) = v61;
  v62 = *(&STACK[0x21C8] + v34);
  *(&STACK[0x21C8] + v34) = *(v21 + 14);
  *(v21 + 14) = v62;
  v63 = *(&STACK[0x21C8] + v35);
  *(&STACK[0x21C8] + v35) = *(v21 + 13);
  *(v21 + 13) = v63;
  v64 = *(v21 + 8);
  *(v21 + 8) = *(v21 + 12);
  *(v21 + 12) = v64;
  v65 = *(&STACK[0x21C8] + v40);
  *(&STACK[0x21C8] + v40) = *(v21 + 11);
  *(v21 + 11) = v65;
  v66 = *(v21 + 9);
  *(v21 + 10) = *(v21 + 8);
  LOWORD(STACK[0x21C8]) = v66;
  *(v21 + 8) = vmla_s32(v42, *(v21 + 8), vdup_n_s32(0x1000193u));
  *a20 = *(v21 + 8) ^ *v21;
  return (*(v22 + 8 * a1))();
}

uint64_t sub_100E1A154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v57 = (v55 + 2031269901) & 0x342F9FD;
  v58 = (*(v56 - 208) & 2) == 0;
  v59 = STACK[0x350];
  if ((*(v56 - 208) & 2) == 0)
  {
    v59 = STACK[0x34C];
  }

  LODWORD(STACK[0x338]) = v59;
  v60 = STACK[0x348];
  if (v58)
  {
    v60 = STACK[0x344];
  }

  LODWORD(STACK[0x370]) = v60;
  v61 = STACK[0x368];
  if (v58)
  {
    v61 = STACK[0x354];
  }

  LODWORD(STACK[0x2F8]) = v61;
  v62 = (*(v56 - 212) & 2) == 0;
  v63 = *(v56 - 236);
  if ((*(v56 - 212) & 2) == 0)
  {
    v63 = *(v56 - 244);
  }

  LODWORD(STACK[0x344]) = v63;
  v64 = STACK[0x39C];
  if (v62)
  {
    v64 = STACK[0x2E0];
  }

  LODWORD(STACK[0x2C8]) = v64;
  v65 = *(*(v56 - 184) + 8 * (((v57 ^ 0x7C55E472) + v55) ^ (11151 * (v55 != -882040344))));
  LODWORD(STACK[0x368]) = v57 ^ 0xE8444D40;
  return v65(v65, a2, a3, 987416517, -1552293625, (v54 + 1552293625), -1838144676, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_100E1A414@<X0>(int a1@<W8>)
{
  v2 = a1 & 0xFFFFFFFFE4C4398FLL;
  STACK[0x998] = *(v1 + 8 * v2);
  return (*(v1 + 8 * ((v2 + 9080) ^ v2)))();
}

uint64_t sub_100E1A5F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = ((v4 - 1836711987) ^ v3) < ((v4 + 1515462735) & 0xA5ABF1FF ^ 0x51A2) || a3 - a1 < 0x10;
  v8 = *(v5 + 8 * ((58 * v7) ^ v4));
  STACK[0x4D0] = a3;
  return v8();
}

uint64_t sub_100E1A8B0@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 8 * a1 + 8) = v3;
  *(v4 + 4 * a1 + 48) = 8;
  **(&off_101353600 + v2 - 2816) = (*(v1 + 8 * (v2 + 28066)))(10);
  v5 = (*(v1 + 8 * (v2 ^ 0x7202)))();
  return (*(v1 + 8 * ((13988 * (((3459 * (v2 ^ 0xE5E)) ^ 0xF7FB2695) == -134514688)) ^ v2)))(v5);
}

uint64_t sub_100E1A978(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  a1.n128_u16[0] = 32125;
  a1.n128_u8[2] = 125;
  a1.n128_u8[3] = 125;
  a1.n128_u8[4] = 125;
  a1.n128_u8[5] = 125;
  a1.n128_u8[6] = 125;
  a1.n128_u8[7] = 125;
  return (*(v17 + 8 * (v16 + v15 + 9)))(va, (v14 & 0xFFFFFFFFFFFFFFF0) + v13, a1);
}

uint64_t sub_100E1B010@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 3472);
  v8 = STACK[0x1700] + 4;
  v9 = LODWORD(STACK[0x159C]) - 4;
  v10 = 1917435887 * (((v6 - 240) & 0x1CC494B3 | ~((v6 - 240) | 0x1CC494B3)) ^ 0x580304A);
  v5[132] = *(v3 + 1064) + 4;
  v5[135] = v7;
  v5[131] = v8;
  *(v6 - 216) = 449 * (v2 ^ 0x1490) - v10 + (v9 ^ 0xEB641E9F) + ((2 * v9) & 0xD6C83D3E) + 1476361339;
  *(v6 - 240) = (v2 + 7087) ^ v10;
  v5[134] = a2;
  v11 = (*(v4 + 8 * (v2 + 26586)))(v6 - 240);
  return (*(v4 + 8 * v2))(v11);
}

uint64_t sub_100E1B0F8(unint64_t a1)
{
  v3 = *(v2 + 8 * (v1 ^ 0x2F8A));
  STACK[0x4D0] = a1;
  v4 = v3();
  v5 = v4 != (*(v2 + 8 * (v1 + 10367)))();
  return (*(v2 + 8 * ((v5 * (((v1 ^ 0x5367) + 4619) ^ (41 * (v1 ^ 0x5367)))) ^ v1)))();
}

uint64_t sub_100E1B214(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = STACK[0x2F0];
  v7 = ((2 * a5) & 0x17F1E5FEELL) + (a5 ^ 0xEBD7F9F7BF8F2FF7) + STACK[0x2F0];
  *(v7 + 0x142806084070D009) = 0;
  *(v7 + ((a2 - 1385999505) & 0x529CAF72) + 0x142806084070A0A9) = 0;
  *(v7 + 0x142806084070D00CLL) = 0;
  *(((2 * (a5 + 4)) & 0x175F9DEFELL) + ((a5 + 4) ^ 0x3BD9FBEFBAFCEF7FLL) + v6 - 0x3BD9FBEFBAFCEF7FLL) = -9392;
  v8 = STACK[0x270];
  v9 = ((v8 ^ 0x71AF52FC) - 1382350704) ^ v8 ^ ((v8 ^ 0xED1D9283) + 824819953) ^ ((v8 ^ 0xC186920F) + 498253949) ^ ((v8 ^ 0x7EFFFFFC) - 1563710064);
  v10 = (((2 * (a5 + 6)) & 0x1FF0BDFDCLL) + ((a5 + 6) ^ 0x4BFFF9FFFF85EFEELL) + v6 - 0x4BFFF9FFFF85EFEELL);
  *v10 = HIBYTE(v9) ^ 0x23;
  v10[1] = BYTE2(v9) ^ 0xCB;
  v10[2] = ((((v8 ^ 0x52FC) + 144) ^ v8 ^ ((v8 ^ 0x9283) - 16143) ^ ((v8 ^ 0x920F) - 16259) ^ ((v8 ^ 0xFFFC) - 21104)) >> 8) ^ 0xAD;
  v10[3] = ((v8 ^ 0xFC) - 112) ^ v8 ^ ((v8 ^ 0x83) - 15) ^ ((v8 ^ 0xF) + 125) ^ ((v8 ^ 0xFC) - 112) ^ 0x8C;
  return (*(v5 + 8 * (a2 ^ (14 * (((16 - LODWORD(STACK[0x2D0])) ^ 0xEBFEDFDB797EFEE7) + 2 * ((16 - LODWORD(STACK[0x2D0])) & 7) != 0xEBFEDFDB797EFEE7)))))();
}

uint64_t sub_100E1B4B8()
{
  v5 = *(v0 + 3056);
  strcpy(&STACK[0x162E], "false");
  (*(v3 + 8 * (v1 + 14682)))(*(&off_101353600 + (v1 ^ 0x4181)), v5, 21);
  v6 = 1379010179 * ((((v4 - 240) | 0xD7F712DEC6BD3AB1) - ((v4 - 240) & 0xD7F712DEC6BD3AB1)) ^ 0x67A160B7E2EC03DFLL);
  *(v2 + 1064) = &STACK[0x162E];
  *(v4 - 224) = v1 - v6 + 1600;
  *(v2 + 1048) = v5;
  *(v2 + 1040) = v6 + 6;
  v7 = (*(v3 + 8 * (v1 + 14716)))(v4 - 240);
  return (*(v3 + 8 * (((*(v2 + 1060) == 1) * ((v1 - 2699) ^ 0x17B3)) ^ v1)))(v7);
}

uint64_t sub_100E1B5B0(unint64_t a1)
{
  v6 = *(v3 + 1872);
  v7 = 289235981 * ((v5 - 1181739475 - 2 * ((v5 - 240) & 0xB990171D)) ^ 0x3E12C722);
  v8 = LODWORD(STACK[0xA60]) ^ v7;
  *(v5 - 216) = v1 - v7 - 529116321;
  *(v5 - 212) = v8;
  STACK[0x25F0] = &STACK[0x7F4];
  STACK[0x25E0] = a1;
  STACK[0x25D8] = v6;
  v9 = (*(v4 + 8 * (v1 + 9892)))(v5 - 240);
  return (*(v4 + 8 * ((2095 * (LODWORD(STACK[0x7F4]) < v2 + ((v1 - 20317) | 2) + ((v1 + 10251407) | 0x81030000) - 290)) ^ v1)))(v9);
}

uint64_t sub_100E1B760()
{
  v3 = (*(v2 + 8 * (v1 ^ (v1 - 971))))(STACK[0x778]);
  STACK[0x778] = 0;
  return (*(v2 + 8 * v0 + 33744))(v3);
}

uint64_t sub_100E1B794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v22 = v16 - 1;
  v23 = a9 + v9 + v22;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v24 - 0x67659A219E1678C8) | v20) - ((v24 - 0x67659A219E1678C8) | a7) + a7;
  v26 = v25 ^ ((v18 ^ 0x819F8542) + v17);
  v27 = v25 ^ v10;
  v28 = __ROR8__(v26, 8);
  v29 = (((v28 + v27) & a6 ^ v12) + ((v28 + v27) ^ v11) - (((v28 + v27) ^ v11) & a6)) ^ v13;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xBD6CE439E669F3DFLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x1A1C4C99A6B3D690;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v35 + v34 - (v14 & (2 * (v35 + v34))) + v15) ^ a2;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((a3 | (2 * (v38 + v37))) - (v38 + v37) + a4) ^ a5;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x8469B2E456434039;
  *(a1 + v22) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v21 + 8 * (((v22 != 0) * v19) ^ (a8 + 850))))();
}

uint64_t sub_100E1B954()
{
  STACK[0x1710] = STACK[0x1348];
  *(v1 + 8) = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 + v0 + 6636 - 2037)))(2193001348);
}

uint64_t sub_100E1BA14@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W8>)
{
  v15 = ((16 * a3) | ((a3 < v5) << 36)) + a1 + v7;
  *v15 = 0;
  *(v15 + 8) = v13;
  *(v15 + 12) = v13;
  v16 = a3 + v8 < *v10 + v4;
  if (a3 + v8 < v4 != *v10 > ((v11 + a4 + 192) | v6) + v9)
  {
    v16 = *v10 > ((v11 + a4 + 192) | v6) + v9;
  }

  return (*(v14 + 8 * ((!v16 * a2) ^ (v12 + a4 + 136))))();
}

uint64_t sub_100E1BA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = STACK[0x530];
  v9 = vld1q_dup_f32(v8);
  v10.n128_u64[0] = 0x8000000080000000;
  v10.n128_u64[1] = 0x8000000080000000;
  v11.i64[0] = 0x100000001;
  v11.i64[1] = 0x100000001;
  return (*(v7 + 8 * (v4 + v5 + 2478)))(a1, a2, a3, a4, 2174734572, v10, vnegq_f32(v11), vdupq_n_s32(0xB78F2A6u), vdupq_n_s32(v6), v9);
}

uint64_t sub_100E1BB90(uint64_t a1, unsigned int a2)
{
  v4 = STACK[0x2100] + 10 + (v2 ^ a2);
  STACK[0x1C88] = v4;
  return (*(v3 + 8 * ((239 * (v4 <= STACK[0x20F8])) ^ 0x7762)))();
}

uint64_t sub_100E1BC5C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  STACK[0x208] = a2;
  STACK[0x238] = a4;
  return (*(v8 + 8 * ((7 * (((v6 + 29) ^ ((v7 & 0x3Fu) + a6 > ((v6 + 323301837) & 0xECBAFEFB ^ 0x4EC4))) & 1)) ^ v6)))(a1, a2, a2);
}

uint64_t sub_100E1BCD8()
{
  v6 = STACK[0x58C];
  v7 = STACK[0x580];
  v8 = (LODWORD(STACK[0x58C]) ^ v3) - STACK[0x580];
  v9 = STACK[0x580] + 1944991791;
  *(v5 - 192) = (v4 & 7 ^ 0x73EE382Fu) - STACK[0x580];
  *(v5 - 184) = v9;
  *(v5 - 208) = v8;
  *(v5 - 204) = v6 - v7;
  *(v5 - 200) = v7;
  v10 = v7 ^ LODWORD(STACK[0x57C]);
  *(v5 - 216) = (v0 - 1582452692) ^ v7;
  *(v5 - 212) = v10;
  v11 = (*(v1 + 8 * (v2 + v0 - 6)))(v5 - 216);
  return (*(v1 + 8 * *(v5 - 196)))(v11);
}

uint64_t sub_100E1BE10(uint64_t a1, uint64_t a2)
{
  STACK[0x1420] = STACK[0x1258] + 4;
  *(v2 + 1192) = *(v3 + 15432);
  return (*(v3 + 36680))(2174744536, a2, 2120264440);
}

void *sub_100E1BF08@<X0>(unsigned int a1@<W8>)
{
  v6[308] = v4;
  LODWORD(STACK[0x135C]) = v1;
  *(v3 + 760) = v5;
  LODWORD(STACK[0x191C]) = v2;
  LODWORD(STACK[0x16AC]) = v2;
  v6[35] = 0;
  LODWORD(STACK[0x1918]) = 0;
  v6[503] = 0;
  LODWORD(STACK[0x1944]) = 1280;
  v8 = v6[424];
  v9 = &STACK[0x2280] + v8;
  v6[424] = v8 + (a1 ^ 0x7C9);
  v6[90] = 0;
  *(v3 + 920) = 0x683CBC57EAB92A3ELL;
  *v9 = 0x1D8A118EDE6D14DLL;
  *(v9 + 2) = 0;
  *(v9 + 2) = 0;
  *(v9 + 6) = 1414217035;
  *(v9 + 28) = 0x800000002;
  *(v9 + 9) = 1;
  *(v9 + 5) = 0;
  *(v9 + 12) = -843970039;
  *(v9 + 7) = 0;
  *(v9 + 16) = 1768711563;
  *(v9 + 68) = 0x400000001;
  *(v9 + 19) = 2;
  v6[84] = *(v7 + 8 * a1);
  LODWORD(STACK[0xBDC]) = v2;
  return (*(v7 + 8 * (a1 ^ 0x2698)))(&STACK[0x1AC8]);
}

uint64_t sub_100E1C114()
{
  v2 = *(STACK[0x668] + 24);
  STACK[0xBF0] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 2120267346) ^ 0x819FE3C5 ^ ((v0 - 22622) | 0x8A))) ^ v0)))();
}

uint64_t sub_100E1C260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = ~v5 + a4;
  v10 = __CFADD__(a5, v8) || v8 > (341 * (((v6 - 11036) | 0x4004) ^ 0x44C5)) + 4294942743u;
  return (*(v7 + 8 * ((114 * v10) ^ v6)))();
}

uint64_t sub_100E1C2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = LOBYTE(STACK[0x559]);
  v77 = (1081 * (v72 ^ 0x36A5148F)) ^ (LOBYTE(STACK[0x463]) ^ 0x36 | ((LOBYTE(STACK[0x4B5]) ^ 0x29) << 8) | ((LOBYTE(STACK[0x507]) ^ 0x29) << 16) | ((v76 ^ 0x29) << 24)) ^ 0x47D6;
  HIDWORD(v79) = v77;
  LODWORD(v79) = ((LOBYTE(STACK[0x507]) ^ 0x29) << 16) | ((v76 ^ 0x29) << 24);
  v78 = v79 >> 17;
  HIDWORD(v79) = v77;
  v80 = v76 ^ 0x29 | (v77 << 8);
  v81 = (((v76 ^ 0x29) >> 3) | (32 * v77)) ^ v77 ^ ((v76 >> 5) ^ 1 | (8 * v77)) ^ (((v76 ^ 0x29) >> 1) | (v77 << 7)) ^ (2 * v77 + (v77 >> ((v77 & 0x1F) + ((LOBYTE(STACK[0x463]) ^ 0x36) & 0x1F))));
  v82 = v81 - (v81 ^ v80);
  v83 = v80 ^ -v80;
  v84 = LOBYTE(STACK[0x2CC]) ^ 0x36;
  v85 = (v83 ^ v82) + v81;
  v86 = LOBYTE(STACK[0x5A5]) ^ 0x36 | ((LOBYTE(STACK[0x5F7]) ^ 0x36) << 8) | (v84 << 24) | ((LOBYTE(STACK[0x27A]) ^ 0x36) << 16);
  LODWORD(v79) = __ROR4__(v78 ^ (v79 >> 21) ^ __ROR4__(v77, 16) ^ __ROR4__(v77, 15) ^ __ROR4__(v77, 14) ^ __ROR4__(v77, 10) ^ __ROR4__(v77, 13) ^ __ROR4__(v77, 3) ^ v85, 15) ^ 0x5505852D;
  HIDWORD(v79) = v79;
  v87 = v79 >> 17;
  v89 = __PAIR64__(v86, __ROR4__(v77, 2));
  v88 = v87 ^ v89;
  LODWORD(v89) = v86;
  LOBYTE(STACK[0x559]) = HIBYTE(v88) ^ 0xEB;
  v90 = (v89 >> 31) ^ __ROR4__(v86, 23) ^ __ROR4__(v86, 29) ^ __ROR4__(v86, 27) ^ __ROR4__(v86, 21) ^ __ROR4__(v86, 15) ^ __ROR4__(v86, 10) ^ __ROR4__(v86, 19) ^ __ROR4__(v86, 18) ^ __ROR4__(v86, 16) ^ __ROR4__(v86, 9) ^ __ROR4__(v86, 8) ^ __ROR4__(v86, 4) ^ __ROR4__(v86, 3) ^ __ROR4__(v86, 2) ^ __ROR4__(v86, 1) ^ ((v84 >> 1) | (v86 << 7));
  LOBYTE(STACK[0x2CC]) = HIBYTE(v90) ^ 0x36;
  LOBYTE(STACK[0x507]) = BYTE2(v88) ^ 0xBF;
  LOBYTE(STACK[0x4B5]) = BYTE1(v88) ^ 0x83;
  LOBYTE(STACK[0x27A]) = BYTE2(v90) ^ 0x36;
  LOBYTE(STACK[0x5F7]) = BYTE1(v90) ^ 0x36;
  LOBYTE(STACK[0x5A5]) = v90 ^ 0x36;
  LOBYTE(STACK[0x463]) = v88 ^ 0xAB;
  v91 = LOBYTE(STACK[0x411]);
  v92 = LOBYTE(STACK[0x553]) ^ 0x36;
  v93 = LOBYTE(STACK[0x45D]) ^ 0x36;
  v94 = ((LOBYTE(STACK[0x501]) ^ 0x36) << 16) | ((LOBYTE(STACK[0x4AF]) ^ 0x36) << 8) | (v92 << 24) | v93;
  v95 = LOBYTE(STACK[0x31B]) ^ 0x29 | ((LOBYTE(STACK[0x3BF]) ^ 0x29) << 16) | ((LOBYTE(STACK[0x36D]) ^ 0x29) << 8) | ((v91 ^ 0x29) << 24);
  HIDWORD(v89) = v95;
  LODWORD(v89) = ((LOBYTE(STACK[0x3BF]) ^ 0x29) << 16) | ((LOBYTE(STACK[0x36D]) ^ 0x29) << 8) | ((v91 ^ 0x29) << 24);
  v96 = v89 >> 21;
  HIDWORD(v89) = v95;
  v97 = v89 >> 17;
  HIDWORD(v89) = v95;
  v98 = v89 >> 15;
  HIDWORD(v89) = v95;
  v99 = v89 >> 16;
  HIDWORD(v89) = v95;
  v100 = v89 >> 13;
  v101 = v96 ^ v99;
  HIDWORD(v89) = v95;
  v102 = v89 >> 14;
  HIDWORD(v89) = v95;
  v103 = v97 ^ v95 ^ v101 ^ v98 ^ v102 ^ v100 ^ (v89 >> 10) ^ __ROR4__(v95, 3) ^ __ROR4__(v95, 2) ^ (((v91 ^ 0x29) >> 3) | (32 * v95)) ^ ((v91 >> 7) | (2 * v95)) ^ ((v91 >> 5) ^ 1 | (8 * v95)) ^ (((v91 ^ 0x29) >> 1) | (v95 << 7)) ^ (v91 ^ 0x29 | (v95 << 8));
  v104 = ((v92 >> 3) | (v93 << 24)) ^ __ROR4__(v94, 29) ^ __ROR4__(v94, 31) ^ __ROR4__(v94, 23) ^ __ROR4__(v94, 21) ^ __ROR4__(v94, 19) ^ __ROR4__(v94, 16) ^ __ROR4__(v94, 15) ^ __ROR4__(v94, 10) ^ __ROR4__(v94, 9) ^ __ROR4__(v94, 4) ^ __ROR4__(v94, 3) ^ __ROR4__(v94, 2) ^ __ROR4__(v94, 1) ^ (v94 >> (((v92 >> 1) & 8 ^ 8) + ((v92 >> 1) & 8))) ^ (v94 << (v93 & v73) << (v93 & v73 ^ v73)) ^ ((v92 >> 1) | (v94 << 7)) ^ ((v94 >> (((v92 >> 1) & 0x12 ^ 0x12) + ((v92 >> 1) & 0x12))) | (v94 << 14));
  LOBYTE(STACK[0x4AF]) = BYTE1(v104) - ((v104 >> 7) & 0x6C) + 54;
  LOBYTE(STACK[0x553]) = HIBYTE(v104) - ((v104 >> 23) & 0x6C) + 54;
  LOBYTE(STACK[0x501]) = BYTE2(v104) - ((v104 >> 15) & 0x6C) + 54;
  LOBYTE(STACK[0x36D]) = BYTE1(v103) ^ 0x29;
  LOBYTE(STACK[0x3BF]) = BYTE2(v103) ^ 0x29;
  LOBYTE(STACK[0x411]) = (HIBYTE(v103) ^ 0x1F) - ((2 * (HIBYTE(v103) ^ 0x1F)) & 0x6C) + 54;
  LOBYTE(STACK[0x31B]) = v103 ^ 0x29;
  LOBYTE(STACK[0x45D]) = v104 ^ 0x36;
  v105 = ((LOBYTE(STACK[0x277]) ^ 0x29u) << ((HIBYTE(v104) & 0x10 ^ 0x10) + (HIBYTE(v104) & 0x10u))) | ((LOBYTE(STACK[0x2C9]) ^ 0x29) << 24);
  v106 = v105 ^ (LOBYTE(STACK[0x5A2]) ^ 0x36 | ((LOBYTE(STACK[0x5F4]) ^ 0x29) << 8));
  v107 = v106 ^ 0x1F;
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v105;
  v108 = v89 >> 27;
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v105;
  v109 = v89 >> 31;
  v110 = ((LOBYTE(STACK[0x40B]) ^ 0x36) << 24) | ((LOBYTE(STACK[0x3B9]) ^ 0x36) << 16);
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v105;
  v111 = v89 >> 29;
  v112 = LOBYTE(STACK[0x315]) ^ 0x36;
  v113 = v112 | ((LOBYTE(STACK[0x367]) ^ 0x36) << 8);
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v105;
  v114 = v89 >> 21;
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v105;
  v115 = v89 >> 25;
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v105;
  v116 = v89 >> 24;
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v105;
  v117 = v89 >> 17;
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v106;
  v118 = v89 >> 14;
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v106;
  v119 = v89 >> 15;
  HIDWORD(v89) = v106 ^ 0x1F;
  LODWORD(v89) = v106;
  v120 = v107 ^ (v107 << 29) ^ (v89 >> 10) ^ __ROR4__(v107, 2) ^ (v107 >> 3) ^ v109 ^ v111 ^ v108 ^ v115 ^ v116 ^ v114 ^ v117 ^ __ROR4__(v106 ^ 0x1F, 16) ^ v119 ^ v118;
  HIDWORD(v89) = v113 | v110;
  LODWORD(v89) = (LOBYTE(STACK[0x40B]) ^ 0x36) << 24;
  v121 = v89 >> 27;
  HIDWORD(v89) = v113 | v110;
  v122 = v89 >> 29;
  HIDWORD(v89) = v113 | v110;
  v123 = v89 >> 25;
  HIDWORD(v89) = v113 | v110;
  v124 = v89 >> 31;
  HIDWORD(v89) = v113 | v110;
  LODWORD(v89) = v110;
  v125 = v89 >> 23;
  HIDWORD(v89) = v113 | v110;
  LODWORD(v89) = v110;
  v126 = v89 >> 19;
  v127 = v120 ^ __ROR4__(v107, 13);
  HIDWORD(v89) = v113 | v110;
  LODWORD(v89) = v110;
  v128 = v122 ^ (__PAIR64__(v113, v110) >> 16) ^ v124 ^ v121 ^ v123 ^ v125 ^ __ROR4__(v113 | v110, 21) ^ v126 ^ (v89 >> 18);
  v130 = __PAIR64__(v113 | v110, __ROR4__(v113 | v110, 15));
  v129 = v128 ^ v130;
  LODWORD(v130) = v113 | v110;
  v131 = v130 >> 9;
  HIDWORD(v130) = v112;
  LODWORD(v130) = v113 | v110;
  v132 = v131 ^ (v112 << 29) ^ __ROR4__(v113 | v110, 10) ^ __ROR4__(v113 | v110, 4) ^ ((v113 | v110) >> 3) ^ __ROR4__(v113 | v110, 1) ^ __ROR4__(v113 | v110, 2) ^ (v130 >> 8);
  LODWORD(v130) = __ROR4__(__ROR4__(v129, 28) ^ 0x35AAEB18, 4);
  LOBYTE(STACK[0x277]) = BYTE2(v127) ^ 0x29;
  LOBYTE(STACK[0x315]) = v132 ^ v130 ^ 0x87;
  LOBYTE(STACK[0x40B]) = ((v132 ^ v130) >> 24) ^ 0xB5;
  LOBYTE(STACK[0x2C9]) = HIBYTE(v127) ^ 0x29;
  LOBYTE(STACK[0x5F4]) = BYTE1(v127) ^ 0x29;
  LOBYTE(STACK[0x367]) = ((v132 ^ v130) >> 8) ^ 0x98;
  LOBYTE(STACK[0x3B9]) = ((v132 ^ v130) >> 16) ^ 0x6C;
  LOBYTE(STACK[0x5A2]) = v127 ^ 0x29;
  v133 = LOBYTE(STACK[0x2C3]);
  v134 = LOBYTE(STACK[0x5EE]);
  v135 = ((LOBYTE(STACK[0x4AC]) ^ 0x29) << ((v134 & 8 ^ 8) + (v134 & 8))) ^ (((LOBYTE(STACK[0x550]) ^ 0x29) << 24) | ((LOBYTE(STACK[0x4FE]) ^ 0x29) << 16));
  v136 = LOBYTE(STACK[0x45A]) ^ v135;
  v137 = v136 ^ 0x29u;
  HIDWORD(v130) = v136 ^ 0x29;
  LODWORD(v130) = v135;
  v138 = v130 >> 21;
  HIDWORD(v130) = v136 ^ 0x29;
  LODWORD(v130) = (LOBYTE(STACK[0x550]) ^ 0x29) << 24;
  v139 = v130 >> 31;
  HIDWORD(v130) = v136 ^ 0x29;
  LODWORD(v130) = v135;
  v140 = v130 >> 29;
  HIDWORD(v130) = v136 ^ 0x29;
  LODWORD(v130) = v135;
  v141 = v130 >> 27;
  HIDWORD(v130) = v136 ^ 0x29;
  LODWORD(v130) = v135;
  v142 = v130 >> 25;
  HIDWORD(v130) = v136 ^ 0x29;
  LODWORD(v130) = v135;
  v143 = LOBYTE(STACK[0x59C]);
  v144 = ((v133 ^ 0x36) << 24) | ((LOBYTE(STACK[0x271]) ^ 0x36) << 16);
  v145 = v143 ^ 0x36 | ((v134 ^ 0x36) << 8);
  v146 = (v137 << ((((v136 ^ 0x29) & 7) + ((v136 ^ 6) & 7)) | 0xC)) | (v135 >> 17);
  v147 = (v137 << ((v143 & 0x12 ^ 0x12) + (v143 & 0x12))) + (v135 >> 14);
  LODWORD(v137) = (__PAIR64__(v137, v135) >> 13) ^ v137 ^ (__PAIR64__(v137, v135) >> 10) ^ v140 ^ v139 ^ v141 ^ v142 ^ (v130 >> 24) ^ v138 ^ __ROR4__(v137, 16) ^ (__PAIR64__(v137, v135) >> 15) ^ __ROR4__(v137, 3) ^ __ROR4__(v137, 2);
  v148 = v147 ^ v146;
  HIDWORD(v130) = v145 | v144;
  LODWORD(v130) = v144;
  v149 = v130 >> 23;
  HIDWORD(v130) = v145 | v144;
  LODWORD(v130) = v144;
  v150 = v130 >> 21;
  HIDWORD(v130) = v145 | v144;
  LODWORD(v130) = v144;
  v151 = v130 >> 19;
  HIDWORD(v130) = v145 | v144;
  LODWORD(v130) = v144;
  v152 = v130 >> 18;
  HIDWORD(v130) = v143 ^ 0x36;
  LODWORD(v130) = v145 | v144;
  LODWORD(v137) = v137 ^ v148;
  v153 = (__PAIR64__(v145, v144) >> 16) ^ (v145 << 23) ^ __ROR4__(v145 | v144, 10) ^ (__PAIR64__(v145, v145 | v144) >> 15) ^ ((v145 | v144) >> 9) ^ (v130 >> 8) ^ v149 ^ v150 ^ v151 ^ v152 ^ ((v133 >> 7) | (2 * (v145 | v144))) ^ ((v133 >> 5) ^ 1 | (8 * (v145 | v144))) ^ ((v133 >> 3) ^ 6 | (32 * (v145 | v144))) ^ ((v133 >> 1) ^ 0x1B | ((v145 | v144) << 7));
  HIDWORD(v130) = v143 ^ 0x36;
  LODWORD(v130) = v145 | v144;
  v154 = (v130 >> 4) ^ __ROR4__(v145 | v144, 3) ^ (__PAIR64__(v143, v145 | v144) >> 1) ^ v153 ^ (((v145 | v144) >> ((v153 & 2 ^ 2) + (v153 & 2))) + ((v143 ^ 0x36) << 30));
  LOBYTE(STACK[0x550]) = BYTE3(v137) ^ 0x29;
  LOBYTE(STACK[0x2C3]) = HIBYTE(v154) ^ 0x36;
  LOBYTE(STACK[0x4FE]) = BYTE2(v137) ^ 0x29;
  LOBYTE(STACK[0x271]) = BYTE2(v154) ^ 0x36;
  LOBYTE(STACK[0x45A]) = v137 ^ 0x29;
  LOBYTE(STACK[0x5EE]) = BYTE1(v154) ^ 0x36;
  LOBYTE(STACK[0x59C]) = v154 ^ 0x36;
  LOBYTE(STACK[0x4AC]) = BYTE1(v137) ^ 0x29;
  v155 = LOBYTE(STACK[0x54A]);
  v156 = LOBYTE(STACK[0x408]);
  v157 = LOBYTE(STACK[0x454]);
  v158 = ((v155 ^ 0x36) << 24) | ((LOBYTE(STACK[0x4F8]) ^ 0x36) << 16);
  v159 = LOBYTE(STACK[0x312]) ^ 0x36 | ((LOBYTE(STACK[0x364]) ^ 0x29) << 8) | ((LOBYTE(STACK[0x3B6]) ^ 0x29) << 16) | ((v156 ^ 0x29) << 24);
  LODWORD(v137) = v157 ^ 0x36 | ((LOBYTE(STACK[0x4A6]) ^ 0x36) << 8);
  v160 = v137 | v158;
  HIDWORD(v130) = v159 ^ 0x1F;
  LODWORD(v130) = ((LOBYTE(STACK[0x3B6]) ^ 0x29) << 16) | ((v156 ^ 0x29) << 24);
  v161 = v130 >> 17;
  HIDWORD(v130) = v159 ^ 0x1F;
  v162 = v130 >> 21;
  v163 = (v155 >> 3) ^ 6;
  HIDWORD(v130) = v159 ^ 0x1F;
  LODWORD(v130) = v159;
  v164 = v130 >> 13;
  v165 = v161 ^ v159 ^ 0x1F ^ v162;
  HIDWORD(v130) = v159 ^ 0x1F;
  LODWORD(v130) = v159;
  v166 = (v130 >> 15) ^ v164;
  HIDWORD(v130) = v159 ^ 0x1F;
  LODWORD(v130) = v159;
  v167 = v130 >> 10;
  HIDWORD(v130) = v159 ^ 0x1F;
  LODWORD(v130) = v159;
  v168 = v165 ^ __ROR4__(v159 ^ 0x1F, 16) ^ v166 ^ (v130 >> 14) ^ v167 ^ __ROR4__(v159 ^ 0x1F, 3) ^ __ROR4__(v159 ^ 0x1F, 2) ^ (((v156 ^ 0x29) >> 1) | ((v159 ^ 0x1F) << 7)) ^ (v156 ^ 0x29 | ((v159 ^ 0x1F) << 8)) ^ ((v156 >> 5) ^ 1 | (8 * (v159 ^ 0x1F))) ^ ((v156 >> 7) | (2 * (v159 ^ 0x1F))) ^ (((v156 ^ 0x29) >> 3) | (32 * (v159 ^ 0x1F)));
  v169 = v163 | (32 * (v137 | v158));
  HIDWORD(v130) = v137 | v158;
  LODWORD(v130) = v158;
  v170 = v130 >> 19;
  HIDWORD(v130) = v137 | v158;
  LODWORD(v130) = v158;
  v171 = v130 >> 21;
  HIDWORD(v130) = v137 | v158;
  LODWORD(v130) = v158;
  v172 = v130 >> 23;
  HIDWORD(v130) = v137 | v158;
  LODWORD(v130) = v158;
  v173 = v130 >> 18;
  v174 = ((v137 | v158) >> ((((LOBYTE(STACK[0x54A]) >> 3) ^ 0xF9) + v163) & 0xF)) + (v137 << 17);
  LOBYTE(STACK[0x3B6]) = BYTE2(v168) ^ 0x29;
  HIDWORD(v130) = v157 ^ 0x36;
  LODWORD(v130) = v137 | v158;
  v175 = v130 >> 4;
  HIDWORD(v130) = v157 ^ 0x36;
  LODWORD(v130) = v137 | v158;
  LOBYTE(STACK[0x408]) = HIBYTE(v168) ^ 0x29;
  v176 = v172 ^ (__PAIR64__(v137, v158) >> 16) ^ v171 ^ v170 ^ v173 ^ (__PAIR64__(v137, v160) >> 9) ^ __ROR4__(v160, 8) ^ v175 ^ __ROR4__(v160, 3) ^ (v130 >> 2) ^ (__PAIR64__(v137, v160) >> 10) ^ (__PAIR64__(v157, v160) >> 1) ^ ((v155 >> 7) | (2 * (v137 | v158))) ^ ((v155 >> 5) ^ 1 | (8 * (v137 | v158))) ^ v169 ^ ((v155 >> 1) ^ 0x1B | ((v137 | v158) << 7)) ^ v174;
  LOBYTE(STACK[0x312]) = v168 ^ 0x29;
  LOBYTE(STACK[0x4F8]) = BYTE2(v176) ^ 0x36;
  LOBYTE(STACK[0x364]) = BYTE1(v168) ^ 0x29;
  LOBYTE(STACK[0x4A6]) = BYTE1(v176) ^ 0x36;
  LOBYTE(STACK[0x54A]) = HIBYTE(v176) ^ 0x36;
  LOBYTE(STACK[0x454]) = v176 ^ 0x36;
  v177 = LOBYTE(STACK[0x402]) ^ 0x36;
  LODWORD(v137) = v177 << 24;
  v178 = ((LOBYTE(STACK[0x2C0]) ^ 0x29) << 24) | ((((2 * (STACK[0x26E] & 0x1F)) ^ 0xD3) + (((LOBYTE(STACK[0x26E]) ^ 0x23) - 35) ^ ((LOBYTE(STACK[0x26E]) ^ 0xEB) + 21) ^ ((LOBYTE(STACK[0x26E]) ^ 0xFE) + 2)) + 86) << 16) | ((LOBYTE(STACK[0x5EB]) ^ 0x29) << 8);
  v179 = LOBYTE(STACK[0x599]);
  v180 = (v178 | v179 ^ 0x36) ^ 0x1F;
  HIDWORD(v130) = v180;
  LODWORD(v130) = ((LOBYTE(STACK[0x2C0]) ^ 0x29) << 24) | ((((2 * (STACK[0x26E] & 0x1F)) ^ 0xD3) + (((LOBYTE(STACK[0x26E]) ^ 0x23) - 35) ^ ((LOBYTE(STACK[0x26E]) ^ 0xEB) + 21) ^ ((LOBYTE(STACK[0x26E]) ^ 0xFE) + 2)) + 86) << 16);
  v181 = v130 >> 21;
  HIDWORD(v130) = v180;
  LODWORD(v130) = (LOBYTE(STACK[0x2C0]) ^ 0x29) << 24;
  v182 = v130 >> 24;
  HIDWORD(v130) = v180;
  v183 = v130 >> 29;
  HIDWORD(v130) = v180;
  v184 = v130 >> 27;
  HIDWORD(v130) = v180;
  v185 = v130 >> 25;
  v186 = (((LOBYTE(STACK[0x3B0]) ^ 0x36) << 16) | ((LOBYTE(STACK[0x35E]) ^ 0x36) << 8)) & 0xFFFFFF | (v177 << 24);
  v187 = v186 | LOBYTE(STACK[0x30C]) ^ 0x36;
  HIDWORD(v130) = v180;
  LODWORD(v130) = v130 | ((((2 * (STACK[0x26E] & 0x1F)) ^ 0xD3) + (((LOBYTE(STACK[0x26E]) ^ 0x23) - 35) ^ ((LOBYTE(STACK[0x26E]) ^ 0xEB) + 21) ^ ((LOBYTE(STACK[0x26E]) ^ 0xFE) + 2)) + 86) << 16);
  v188 = v130 >> 17;
  HIDWORD(v130) = v180;
  v189 = v180 ^ (2 * v180) ^ (v180 >> ((((v179 & 0xCC ^ 0xC8) + (v179 & 0xCC ^ 4)) ^ 0xCC) + 31)) ^ v183 ^ v184 ^ v185 ^ v182 ^ v181 ^ v188 ^ (v130 >> 16) ^ (__PAIR64__(v180, v178) >> 15) ^ (__PAIR64__(v180, v178) >> 14) ^ (__PAIR64__(v180, v178) >> 13) ^ (__PAIR64__(v180, v178) >> 10) ^ __ROR4__(v180, 3) ^ __ROR4__(v180, 2);
  v190 = (__PAIR64__(v187, v137) >> 31) ^ (__PAIR64__(v187, v137) >> 29) ^ (__PAIR64__(v187, v137) >> 27) ^ (__PAIR64__(v187, v137) >> 25) ^ __ROR4__(v187, 23) ^ (__PAIR64__(v187, v186) >> 21) ^ (__PAIR64__(v187, v186) >> 19) ^ (__PAIR64__(v187, v186) >> 18) ^ (__PAIR64__(v187, v186) >> 16) ^ __ROR4__(v187, 15) ^ __ROR4__(v187, 10) ^ (__PAIR64__(v187, v186) >> 9) ^ __ROR4__(v187, 8) ^ __ROR4__(v187, 4) ^ __ROR4__(v187, 3) ^ __ROR4__(v187, 2) ^ __ROR4__(v187, 1);
  LOBYTE(STACK[0x2C0]) = HIBYTE(v189) ^ 0x29;
  LOBYTE(STACK[0x35E]) = BYTE1(v190) ^ 0x36;
  LOBYTE(STACK[0x599]) = v189 ^ 0x29;
  LOBYTE(v137) = BYTE1(v189) ^ 0x29;
  LOBYTE(STACK[0x3B0]) = BYTE2(v190) ^ 0x36;
  LOBYTE(STACK[0x30C]) = v190 ^ 0x36;
  LOBYTE(STACK[0x26E]) = BYTE2(v189) ^ 0x29;
  v191 = v190 >> (8 * ((9 * (((v190 & 9 ^ 9) + (v190 & 9)) | ((v190 & 0x4A ^ 0x4A) + (v190 & 0x4A)))) & 0x1F));
  LOBYTE(STACK[0x5EB]) = v137;
  LOBYTE(STACK[0x402]) = (v191 - ((2 * v191) & 0xA6) - 45) ^ 0xE5;
  LODWORD(v137) = LOBYTE(STACK[0x2BA]);
  v192 = LOBYTE(STACK[0x547]);
  v193 = v192 ^ 0x29;
  v194 = ((LOBYTE(STACK[0x4F5]) ^ 0x29) << 16) | ((LOBYTE(STACK[0x4A3]) ^ 0x29) << 8) | LOBYTE(STACK[0x451]) ^ 0x36 | ((v192 ^ 0x29) << 24);
  v195 = v194 ^ 0x1F;
  v196 = (v192 ^ 0x29) >> 3;
  v197 = (v192 ^ 0x29) >> 1;
  v198 = LOBYTE(STACK[0x593]) ^ 0x36 | ((LOBYTE(STACK[0x5E5]) ^ 0x36) << 8) | ((LOBYTE(STACK[0x268]) ^ 0x36) << 16) | ((v137 ^ 0x36) << 24);
  v199 = (v192 >> 5) ^ 1 | (8 * (v194 ^ 0x1F));
  v200 = (v192 >> 7) | (2 * (v194 ^ 0x1F));
  v201 = v196 | (32 * (v194 ^ 0x1F));
  v202 = v197 | ((v194 ^ 0x1F) << 7);
  HIDWORD(v130) = v194 ^ 0x1F;
  LODWORD(v130) = v194;
  v203 = v130 >> 16;
  v204 = (v194 ^ 0x1Fu) >> (((v194 & 0x15) + ((v194 ^ 0x1F) & 0x15)) & 0x3F);
  v205 = v204 | ((v194 ^ 0x1F) << 11);
  HIDWORD(v130) = v194 ^ 0x1F;
  LODWORD(v130) = v194;
  v206 = v130 >> 17;
  v207 = v193 | ((v194 ^ 0x1F) << 8);
  HIDWORD(v130) = v194 ^ 0x1F;
  LODWORD(v130) = v194;
  v208 = v130 >> 15;
  v209 = ((v194 ^ 0x1Fu) >> ((v204 & 0xD ^ 0xD) + (v204 & 0xD))) | ((v194 ^ 0x1F) << 19);
  HIDWORD(v130) = v194 ^ 0x1F;
  LODWORD(v130) = v194;
  v210 = v130 >> 10;
  v211 = __PAIR64__(v198, __ROR4__(v195, 2));
  v212 = v203 ^ v195 ^ v206 ^ v208 ^ __ROR4__(v195, 14) ^ __ROR4__(v195, 3) ^ v211 ^ v210 ^ v199 ^ v200 ^ v201 ^ v202 ^ v207 ^ v205 ^ v209;
  LODWORD(v211) = ((LOBYTE(STACK[0x268]) ^ 0x36) << 16) | ((v137 ^ 0x36) << 24);
  v213 = v211 >> 23;
  HIDWORD(v211) = v198;
  v214 = v211 >> 21;
  HIDWORD(v211) = v198;
  v215 = v211 >> 19;
  HIDWORD(v211) = v198;
  v216 = v211 >> 18;
  HIDWORD(v211) = LOBYTE(STACK[0x593]) ^ 0x36;
  LODWORD(v211) = v198;
  v217 = v211 >> 8;
  HIDWORD(v211) |= (LOBYTE(STACK[0x5E5]) ^ 0x36) << 8;
  LODWORD(v211) = v198;
  v218 = v211 >> 9;
  HIDWORD(v211) = LOBYTE(STACK[0x593]) ^ 0x36 | ((LOBYTE(STACK[0x5E5]) ^ 0x36) << 8);
  LODWORD(v211) = v198;
  v219 = v211 >> 15;
  HIDWORD(v211) = LOBYTE(STACK[0x593]) ^ 0x36;
  LODWORD(v211) = v198;
  v220 = v215 ^ v213 ^ v214 ^ v216 ^ __ROR4__(v198, 16) ^ v219 ^ __ROR4__(v198, 10) ^ v218 ^ v217 ^ (v211 >> 4) ^ ((v137 >> 5) ^ 1 | (8 * v198)) ^ ((v137 >> 7) | (2 * v198)) ^ ((v137 >> 3) ^ 6 | (32 * v198)) ^ ((v137 >> 1) ^ 0x1B | (v198 << 7));
  LODWORD(v211) = v198;
  LOBYTE(STACK[0x547]) = HIBYTE(v212) ^ 0x29;
  v221 = (v211 >> 2) ^ __ROR4__(v198, 1) ^ __ROR4__(v198, 3) ^ v220;
  *(v75 + (v220 & 0x7A ^ 0x7Au) + (v220 & 0x7A)) = HIBYTE(v221) ^ 0x36;
  LOBYTE(STACK[0x4F5]) = BYTE2(v212) ^ 0x29;
  LOBYTE(STACK[0x268]) = BYTE2(v221) ^ 0x36;
  LOBYTE(STACK[0x4A3]) = BYTE1(v212) ^ 0x29;
  LOBYTE(STACK[0x5E5]) = BYTE1(v221) ^ 0x36;
  LOBYTE(STACK[0x451]) = v212 ^ 0x29;
  LOBYTE(STACK[0x593]) = v221 ^ 0x36;
  v222 = LOBYTE(STACK[0x3FF]);
  LODWORD(v137) = v222 ^ 0x29;
  v223 = LOBYTE(STACK[0x541]);
  v224 = ((LOBYTE(STACK[0x4EF]) ^ 0x36) << 16) | ((v223 ^ 0x36) << 24);
  v225 = LOBYTE(STACK[0x309]) ^ 0x36 | ((LOBYTE(STACK[0x3AD]) ^ 0x29) << 16) | ((v222 ^ 0x29) << 24) | ((LOBYTE(STACK[0x35B]) ^ 0x29) << 8);
  v226 = LOBYTE(STACK[0x44B]) ^ 0x36 | ((LOBYTE(STACK[0x49D]) ^ 0x36) << 8) | v224;
  v227 = v225 ^ 0x1F;
  v228 = (v222 ^ 0x29) >> 1;
  v229 = (v222 >> 7) | (2 * (v225 ^ 0x1F));
  v230 = (v222 >> 5) ^ 1 | (8 * (v225 ^ 0x1F));
  v231 = ((v222 ^ 0x29) >> 3) | (32 * (v225 ^ 0x1F));
  HIDWORD(v211) = LOBYTE(STACK[0x44B]) ^ 0x36 | ((LOBYTE(STACK[0x49D]) ^ 0x36) << 8);
  LODWORD(v211) = v226;
  v232 = v211 >> 10;
  LODWORD(v211) = v224;
  v233 = v211 >> 16;
  HIDWORD(v211) = v225 ^ 0x1F;
  LODWORD(v211) = v225;
  v234 = v211 >> 21;
  v235 = v228 | ((v225 ^ 0x1F) << 7);
  HIDWORD(v211) = v225 ^ 0x1F;
  LODWORD(v211) = v225;
  v236 = v211 >> 17;
  HIDWORD(v211) = v225 ^ 0x1F;
  LODWORD(v211) = v225;
  v237 = v234 ^ (v211 >> 16);
  HIDWORD(v211) = v225 ^ 0x1F;
  LODWORD(v211) = v225;
  v238 = v211 >> 14;
  HIDWORD(v211) = v225 ^ 0x1F;
  LODWORD(v211) = v225;
  v239 = v236 ^ v225 ^ 0x1F ^ v237 ^ v238 ^ (v211 >> 10);
  LODWORD(v137) = v137 | ((v225 ^ 0x1F) << 8);
  HIDWORD(v211) = v225 ^ 0x1F;
  LODWORD(v211) = v225;
  v240 = v211 >> 15;
  HIDWORD(v211) = LOBYTE(STACK[0x44B]) ^ 0x36 | ((LOBYTE(STACK[0x49D]) ^ 0x36) << 8);
  LODWORD(v211) = v226;
  v241 = v211 >> 9;
  LODWORD(v137) = v239 ^ __ROR4__(v227, 3) ^ __ROR4__(v227, 2) ^ __ROR4__(v227, 13) ^ v240 ^ v230 ^ v229 ^ v231 ^ v235 ^ v137;
  HIDWORD(v211) = LOBYTE(STACK[0x44B]) ^ 0x36;
  LODWORD(v211) = v226;
  LOBYTE(STACK[0x3FF]) = BYTE3(v137) ^ 0x29;
  LOBYTE(STACK[0x3AD]) = BYTE2(v137) ^ 0x29;
  LOBYTE(STACK[0x309]) = v137 ^ 0x29;
  v242 = v233 ^ (v224 >> 23) ^ (v226 << 9) ^ (__PAIR64__(v226, v224) >> 21) ^ (__PAIR64__(v226, v224) >> 19) ^ (__PAIR64__(v226, v224) >> 18) ^ v232 ^ v241 ^ __ROR4__(v226, 8) ^ __ROR4__(v226, 4) ^ (v211 >> 3) ^ __ROR4__(v226, 2) ^ __ROR4__(v226, 1) ^ __ROR4__(v226, 15) ^ ((v223 >> 5) ^ 1 | (8 * v226)) ^ ((v223 >> 7) | (2 * v226)) ^ ((v223 >> 1) ^ 0x1B | (v226 << 7)) ^ ((v223 >> 3) ^ 6 | (32 * v226));
  LOBYTE(STACK[0x44B]) = v242 ^ 0x36;
  LOBYTE(STACK[0x541]) = HIBYTE(v242) ^ 0x36;
  LOBYTE(STACK[0x49D]) = BYTE1(v242) ^ 0x36;
  LOBYTE(STACK[0x35B]) = BYTE1(v137) ^ 0x29;
  LOBYTE(STACK[0x4EF]) = BYTE2(v242) ^ 0x36;
  v243 = LOBYTE(STACK[0x3F9]) ^ 0x36;
  v244 = (((LOBYTE(STACK[0x2B7]) ^ 0x29) << 24) | ((LOBYTE(STACK[0x265]) ^ 0x29) << 16) | ((LOBYTE(STACK[0x5E2]) ^ 0x29) << 8) | LOBYTE(STACK[0x590]) ^ 0x36) ^ 0x1F;
  v245 = LOBYTE(STACK[0x303]) ^ 0x36 | ((LOBYTE(STACK[0x355]) ^ 0x36) << 8) | ((LOBYTE(STACK[0x3A7]) ^ 0x36) << 16) | (v243 << 24);
  v247 = __PAIR64__(v245, __ROR4__(v244, 2));
  v246 = v244 ^ __ROR4__(v244, 31) ^ __ROR4__(v244, 29) ^ __ROR4__(v244, 27) ^ __ROR4__(v244, 25) ^ __ROR4__(v244, 24) ^ __ROR4__(v244, 21) ^ __ROR4__(v244, 17) ^ __ROR4__(v244, 16) ^ __ROR4__(v244, 15) ^ __ROR4__(v244, 14) ^ __ROR4__(v244, 13) ^ __ROR4__(v244, 10) ^ __ROR4__(v244, 3) ^ v247;
  LOBYTE(STACK[0x2B7]) = HIBYTE(v246) ^ 0x29;
  LODWORD(v247) = v245;
  v248 = (v247 >> 9) ^ __ROR4__(v245, 10) ^ __ROR4__(v245, 8) ^ __ROR4__(v245, 4) ^ __ROR4__(v245, 3) ^ __ROR4__(v245, 2) ^ __ROR4__(v245, 1) ^ __ROR4__(v245, 31) ^ __ROR4__(v245, 29) ^ __ROR4__(v245, 27) ^ __ROR4__(v245, 23) ^ __ROR4__(v245, 21) ^ __ROR4__(v245, 19) ^ __ROR4__(v245, 18) ^ __ROR4__(v245, 16) ^ __ROR4__(v245, 15) ^ ((v243 >> 1) | (v245 << 7));
  LOBYTE(STACK[0x590]) = v246 ^ 0x29;
  LOBYTE(STACK[0x3A7]) = BYTE2(v248) ^ 0x36;
  LOBYTE(STACK[0x5E2]) = BYTE1(v246) ^ 0x29;
  LOBYTE(STACK[0x355]) = BYTE1(v248) ^ 0x36;
  LOBYTE(STACK[0x303]) = v248 ^ 0x36;
  LOBYTE(STACK[0x3F9]) = HIBYTE(v248) ^ 0x36;
  LOBYTE(STACK[0x265]) = BYTE2(v246) ^ 0x29;
  v249 = LOBYTE(STACK[0x53E]);
  v250 = v249 ^ 0x29;
  v251 = LOBYTE(STACK[0x2B1]);
  v252 = ((LOBYTE(STACK[0x25F]) ^ 0x36) << 16) | ((v251 ^ 0x36) << 24);
  v253 = ((v249 ^ 0x29) << 24) | ((LOBYTE(STACK[0x4EC]) ^ 0x29) << 16);
  v254 = v253 | LOBYTE(STACK[0x448]) ^ 0x36 | ((LOBYTE(STACK[0x49A]) ^ 0x29) << 8);
  v255 = v254 ^ 0x1F;
  v256 = (v249 >> 7) | (2 * (v254 ^ 0x1F));
  v257 = (v249 >> 5) ^ 1 | (8 * (v254 ^ 0x1F));
  v258 = ((v249 ^ 0x29) >> 3) | (32 * (v254 ^ 0x1F));
  v259 = ((v249 ^ 0x29) >> 1) | ((v254 ^ 0x1F) << 7);
  LODWORD(v137) = LOBYTE(STACK[0x58A]) ^ 0x36;
  v260 = v137 | ((LOBYTE(STACK[0x5DC]) ^ 0x36) << 8);
  v261 = v260 | v252;
  HIDWORD(v247) = v254 ^ 0x1F;
  LODWORD(v247) = v253;
  v262 = v247 >> 17;
  HIDWORD(v247) = v254 ^ 0x1F;
  LODWORD(v247) = v253;
  v263 = v247 >> 16;
  HIDWORD(v247) = v254 ^ 0x1F;
  LODWORD(v247) = v253;
  v264 = v247 >> 21;
  v265 = v250 | ((v254 ^ 0x1F) << 8);
  HIDWORD(v247) = v254 ^ 0x1F;
  LODWORD(v247) = v254;
  v266 = v247 >> 15;
  HIDWORD(v247) = v254 ^ 0x1F;
  LODWORD(v247) = v254;
  v267 = (v247 >> 13) ^ v264;
  HIDWORD(v247) = v254 ^ 0x1F;
  LODWORD(v247) = v254;
  v268 = v247 >> 14;
  HIDWORD(v247) = v254 ^ 0x1F;
  LODWORD(v247) = v254;
  v269 = v268 ^ v254 ^ 0x1F ^ v267 ^ v262 ^ v263 ^ v266 ^ (v247 >> 10);
  HIDWORD(v247) = v260 | v252;
  LODWORD(v247) = v252;
  v270 = v247 >> 23;
  v271 = v269 ^ __ROR4__(v255, 3) ^ __ROR4__(v255, 2) ^ v257 ^ v256 ^ v258 ^ v259 ^ v265;
  HIDWORD(v247) = v260 | v252;
  LODWORD(v247) = v252;
  v272 = v247 >> 21;
  v273 = (v260 | v252) >> (((((LOBYTE(STACK[0x2B1]) >> 5) ^ 1 | (8 * v137)) & 0x12 ^ 0x12) + (((LOBYTE(STACK[0x2B1]) >> 5) ^ 1 | (8 * (v260 | v252))) & 0x12)) | 3);
  HIDWORD(v247) = v137;
  LODWORD(v247) = v260 | v252;
  LODWORD(v137) = v247 >> 3;
  HIDWORD(v247) = v260;
  LODWORD(v247) = v260 | v252;
  v274 = v271 ^ 0x1F1F1F1F;
  v275 = HIBYTE(v271) ^ 0x29;
  LOBYTE(STACK[0x4EC]) = BYTE2(v271) ^ 0x29;
  v276 = (v271 >> 8) ^ 0x29;
  v277 = (__PAIR64__(v260, v252) >> 16) ^ (v252 >> 18) ^ (v260 << 23) ^ v270 ^ v272 ^ (v261 << 14) ^ (v247 >> 15) ^ __ROR4__(v261, 10) ^ (v261 >> 9) ^ __ROR4__(v261, 4) ^ __ROR4__(v261, 8) ^ v137 ^ __ROR4__(v261, 2) ^ __ROR4__(v261, 1) ^ ((v251 >> 3) ^ 6 | (32 * (v260 | v252))) ^ ((v251 >> 7) | (2 * (v260 | v252))) ^ ((v251 >> 1) ^ 0x1B | ((v260 | v252) << 7)) ^ ((v251 >> 5) ^ 1 | (8 * (v260 | v252))) ^ (v273 | ((v260 | v252) << 13));
  LOBYTE(STACK[0x53E]) = v275;
  LOBYTE(STACK[0x2B1]) = HIBYTE(v277) ^ 0x36;
  v278 = v274;
  if (v274 < 0xBE3EB6D6)
  {
    v278 = v274;
  }

  LOBYTE(STACK[0x25F]) = BYTE2(v277) ^ 0x36;
  LOBYTE(STACK[0x5DC]) = BYTE1(v277) ^ 0x36;
  LOBYTE(STACK[0x448]) = (v278 - ((2 * v278) & 0xE3) - 15) ^ 0xC7;
  LOBYTE(STACK[0x58A]) = v277 ^ 0x36;
  LOBYTE(STACK[0x49A]) = v276;
  v279 = LOBYTE(STACK[0x3F6]);
  v280 = LOBYTE(STACK[0x538]);
  v281 = LOBYTE(STACK[0x300]) ^ 0x36 | ((LOBYTE(STACK[0x352]) ^ 0x29) << 8) | ((v279 ^ 0x29) << 24) | ((LOBYTE(STACK[0x3A4]) ^ 0x29) << 16);
  v282 = LOBYTE(STACK[0x442]);
  v283 = v281 ^ 0x1Fu;
  v284 = ((LOBYTE(STACK[0x4E6]) ^ 0x36) << 16) | ((v280 ^ 0x36) << 24);
  v285 = v282 ^ 0x36 | ((LOBYTE(STACK[0x494]) ^ 0x36) << 8) | v284;
  HIDWORD(v287) = v281 ^ 0x1F;
  LODWORD(v287) = ((v279 ^ 0x29) << 24) | ((LOBYTE(STACK[0x3A4]) ^ 0x29) << 16);
  v286 = v287 >> 17;
  HIDWORD(v287) = v281 ^ 0x1F;
  v288 = v287 >> 21;
  HIDWORD(v287) = v281 ^ 0x1F;
  v289 = v287 >> 16;
  HIDWORD(v287) = v281 ^ 0x1F;
  LODWORD(v287) = v281;
  v290 = v287 >> 15;
  v291 = ((v281 ^ 0x1F) & 0x24) + (v281 & 0x24 ^ 0x20);
  v292 = v288 ^ v289;
  HIDWORD(v287) = v281 ^ 0x1F;
  LODWORD(v287) = v281;
  v293 = v287 >> 13;
  v294 = v286 ^ v283 ^ v292;
  HIDWORD(v287) = v281 ^ 0x1F;
  LODWORD(v287) = v281;
  v295 = v287 >> 10;
  HIDWORD(v287) = v281 ^ 0x1F;
  LODWORD(v287) = v281;
  v296 = v294 ^ v290 ^ (v287 >> 14) ^ v295;
  HIDWORD(v287) = v282 ^ 0x36 | ((LOBYTE(STACK[0x494]) ^ 0x36) << 8) | v284;
  LODWORD(v287) = v284;
  v297 = v287 >> 19;
  LODWORD(v287) = v284;
  v298 = v287 >> 23;
  LODWORD(v287) = v284;
  v299 = v287 >> 21;
  LODWORD(v283) = v296 ^ v293 ^ (v283 >> 3) ^ (v283 << 29) ^ ((v279 >> 5) ^ 1 | (8 * v283)) ^ ((v279 >> 7) | (2 * v283)) ^ (((v279 ^ 0x29) >> 3) | (32 * v283)) ^ (((v279 ^ 0x29) >> 1) | (v283 << 7)) ^ (v279 ^ 0x29 | (v283 << 8)) ^ ((v283 << ((v291 - 14) | 0xEu)) | (v283 >> 2));
  LODWORD(v287) = v284;
  v300 = v299 ^ v298 ^ v297 ^ (v287 >> 18) ^ __ROR4__(v285, 16);
  v301 = __PAIR64__(v285, __ROR4__(v285, 15));
  v302 = v300 ^ v301 ^ ((v280 >> 5) ^ 1 | (8 * v285)) ^ ((v280 >> 7) | (2 * v285)) ^ ((v280 >> 3) ^ 6 | (32 * v285)) ^ ((v280 >> 1) ^ 0x1B | (v285 << 7));
  LODWORD(v301) = v285;
  v303 = v301 >> 10;
  HIDWORD(v301) = v282 ^ 0x36;
  LODWORD(v301) = v285;
  v304 = v301 >> 8;
  HIDWORD(v301) = v282 ^ 0x36;
  LODWORD(v301) = v285;
  v305 = v301 >> 4;
  HIDWORD(v301) = v282 ^ 0x36;
  LODWORD(v301) = v285;
  v306 = v303 ^ __ROR4__(v285, 9) ^ v304 ^ v305 ^ (v301 >> 2) ^ (__PAIR64__(v282, v285) >> 1) ^ v302 ^ ((v285 >> (85 * ((v283 & 0xF7 ^ 0xF7) + (v283 & 0xF7)))) + (v285 << a12));
  LOBYTE(STACK[0x538]) = HIBYTE(v306) ^ 0x36;
  LOBYTE(STACK[0x3F6]) = BYTE3(v283) ^ 0x29;
  LOBYTE(STACK[0x442]) = v306 ^ 0x36;
  LOBYTE(STACK[0x3A4]) = BYTE2(v283) ^ 0x29;
  LOBYTE(STACK[0x4E6]) = BYTE2(v306) ^ 0x36;
  LOBYTE(STACK[0x494]) = BYTE1(v306) ^ 0x36;
  LOBYTE(STACK[0x352]) = BYTE1(v283) ^ 0x29;
  LOBYTE(STACK[0x300]) = v283 ^ 0x29;
  LODWORD(v285) = LOBYTE(STACK[0x2FA]);
  v307 = LOBYTE(STACK[0x39E]) ^ 0x36;
  v308 = LOBYTE(STACK[0x3F0]);
  v309 = (v307 << 16) | ((v308 ^ 0x36) << 24) | v285 ^ 0x36 | ((LOBYTE(STACK[0x34C]) ^ 0x36) << 8);
  LOBYTE(v297) = v308 & 0x1F ^ 0x16 | v308 & 0x1F ^ 9;
  v310 = (v297 - (v74 & (2 * v297)) + 54) ^ LOBYTE(STACK[0x25C]);
  v311 = LOBYTE(STACK[0x2AE]);
  v312 = v311 ^ 0x29;
  v313 = ((v311 ^ 0x29) << 24) | (v310 << 16);
  v314 = v313 | LOBYTE(STACK[0x587]) ^ 0x36 | ((LOBYTE(STACK[0x5D9]) ^ 0x29) << 8);
  v315 = v314 ^ 0x1F;
  v316 = v313 >> 21;
  v317 = (v314 ^ 0x1F) << ((((v313 >> 21) & 9 ^ 9) + ((v313 >> 21) & 9)) | 0xA);
  HIDWORD(v301) = v314 ^ 0x1F;
  LODWORD(v301) = v313;
  v318 = v301 >> 17;
  HIDWORD(v301) = v314 ^ 0x1F;
  LODWORD(v301) = v313;
  v319 = v301 >> 16;
  v320 = v317 | v316;
  HIDWORD(v301) = v314 ^ 0x1F;
  LODWORD(v301) = v314;
  v321 = v318 ^ (v301 >> 15);
  HIDWORD(v301) = v314 ^ 0x1F;
  LODWORD(v301) = v314;
  v322 = v301 >> 14;
  v323 = v319 ^ v314 ^ 0x1F ^ v321;
  HIDWORD(v301) = v314 ^ 0x1F;
  LODWORD(v301) = v314;
  v324 = v322 ^ (v301 >> 13);
  v325 = (v311 >> 7) | (2 * (v314 ^ 0x1F));
  v326 = (v311 >> 5) ^ 1 | (8 * (v314 ^ 0x1F));
  HIDWORD(v301) = v314 ^ 0x1F;
  LODWORD(v301) = v314;
  v327 = v323 ^ v324 ^ (v301 >> 10) ^ __ROR4__(v314 ^ 0x1F, 3);
  v328 = __PAIR64__(v309, __ROR4__(v315, 2));
  v329 = v327 ^ v328 ^ v326 ^ v325 ^ ((v312 >> 3) | (32 * v315)) ^ ((v312 >> 1) | (v315 << 7)) ^ (v312 | (v315 << 8)) ^ v320;
  LODWORD(v328) = v309;
  v330 = v328 >> 23;
  HIDWORD(v328) = v309;
  LODWORD(v328) = (v307 << 16) | ((v308 ^ 0x36) << 24);
  v331 = v328 >> 21;
  HIDWORD(v328) = v309;
  v332 = v328 >> 19;
  HIDWORD(v328) = v285 ^ 0x36;
  LODWORD(v328) = v309;
  v333 = v328 >> 8;
  HIDWORD(v328) = v285 ^ 0x36 | ((LOBYTE(STACK[0x34C]) ^ 0x36) << 8);
  LODWORD(v328) = v309;
  LODWORD(v283) = v328 >> 9;
  HIDWORD(v328) = v285 ^ 0x36;
  LODWORD(v328) = v309;
  v334 = v328 >> 4;
  HIDWORD(v328) = v285 ^ 0x36;
  LODWORD(v328) = v309;
  v335 = v328 >> 3;
  HIDWORD(v328) = v285 ^ 0x36;
  LODWORD(v328) = v309;
  LOBYTE(STACK[0x2AE]) = HIBYTE(v329) ^ 0x29;
  v336 = v330 ^ (v309 << 14) ^ v331 ^ __ROR4__(v309, 16) ^ __ROR4__(v309, 15) ^ __ROR4__(v309, 10) ^ v283 ^ v333 ^ v334 ^ v335 ^ (__PAIR64__(v285, v309) >> 1) ^ (v328 >> 2) ^ ((v308 >> 7) | (2 * v309)) ^ ((v308 >> 5) ^ 1 | (8 * v309)) ^ ((v308 >> 3) ^ 6 | (32 * v309)) ^ ((v308 >> 1) ^ 0x1B | (v309 << 7)) ^ v332 ^ (v309 >> (((v307 >> 3) & 0x12 ^ 0x12) + ((v307 >> 3) & 0x12)));
  LOBYTE(STACK[0x25C]) = BYTE2(v329) ^ 0x29;
  LOBYTE(STACK[0x39E]) = BYTE2(v336) ^ 0x36;
  LOBYTE(STACK[0x3F0]) = HIBYTE(v336) ^ 0x36;
  LOBYTE(STACK[0x34C]) = BYTE1(v336) ^ 0x36;
  LOBYTE(STACK[0x5D9]) = BYTE1(v329) ^ 0x29;
  LOBYTE(STACK[0x587]) = v329 ^ 0x29;
  LOBYTE(STACK[0x2FA]) = v336 ^ 0x36;
  LODWORD(v285) = LOBYTE(STACK[0x535]);
  v337 = v285 ^ 0x29;
  v338 = ((v285 ^ 0x29) << 24) | ((LOBYTE(STACK[0x4E3]) ^ 0x29) << 16);
  v339 = v338 | LOBYTE(STACK[0x43F]) ^ 0x36 | ((LOBYTE(STACK[0x491]) ^ 0x29) << 8);
  HIDWORD(v328) = v339 ^ 0x1F;
  LODWORD(v328) = v339;
  v340 = v328 >> 14;
  LODWORD(v283) = (v285 >> 7) | (2 * (v339 ^ 0x1F));
  v341 = (v285 >> 5) ^ 1 | (8 * (v339 ^ 0x1F));
  v342 = ((v285 ^ 0x29) >> 3) | (32 * (v339 ^ 0x1F));
  v343 = ((v285 ^ 0x29) >> 1) | ((v339 ^ 0x1F) << 7);
  v344 = LOBYTE(STACK[0x2A8]);
  v345 = LOBYTE(STACK[0x581]);
  v346 = v345 ^ 0x36;
  v347 = v345 ^ 0x36 | ((LOBYTE(STACK[0x5D3]) ^ 0x36) << 8);
  LODWORD(v285) = v347 | ((LOBYTE(STACK[0x256]) ^ 0x36) << 16) | ((v344 ^ 0x36) << 24);
  HIDWORD(v328) = v339 ^ 0x1F;
  LODWORD(v328) = v338;
  v348 = v328 >> 21;
  HIDWORD(v328) = v339 ^ 0x1F;
  LODWORD(v328) = v338;
  v349 = (v328 >> 17) ^ v339 ^ 0x1F ^ v348;
  HIDWORD(v328) = v339 ^ 0x1F;
  LODWORD(v328) = v339;
  v350 = v340 ^ (v328 >> 13);
  HIDWORD(v328) = v339 ^ 0x1F;
  LODWORD(v328) = v339;
  v351 = v349 ^ __ROR4__(v339 ^ 0x1F, 16) ^ __ROR4__(v339 ^ 0x1F, 15) ^ v350 ^ (v328 >> 10) ^ __ROR4__(v339 ^ 0x1F, 3) ^ __ROR4__(v339 ^ 0x1F, 2) ^ v341 ^ v283 ^ v342 ^ v343 ^ (v337 | ((v339 ^ 0x1F) << 8));
  HIDWORD(v328) = v285;
  LODWORD(v328) = ((LOBYTE(STACK[0x256]) ^ 0x36) << 16) | ((v344 ^ 0x36) << 24);
  v352 = v328 >> 23;
  HIDWORD(v328) = v285;
  v353 = v328 >> 21;
  HIDWORD(v328) = v285;
  v354 = v328 >> 18;
  HIDWORD(v328) = v285;
  v355 = v328 >> 19;
  HIDWORD(v328) = v285;
  LODWORD(v328) = v285;
  HIDWORD(a57) = ((v344 >> 7) | (2 * v285)) ^ ((v344 >> 5) ^ 1 | (8 * v285)) ^ 0xB1AE812 ^ (((v344 >> 3) ^ 6 | (32 * v285)) + 1638382923 - 2 * (((v344 >> 3) ^ 6 | (32 * v285)) & 0x61A7BD5F ^ ((v344 >> 3) ^ 6) & 0x14));
  v356 = (v328 >> 4) ^ (v346 << 24) ^ (v285 >> 8) ^ v352 ^ v353 ^ v355 ^ v354 ^ (__PAIR64__(v347, v285) >> 15) ^ (__PAIR64__(v347, v285) >> 10) ^ (__PAIR64__(v347, v285) >> 9) ^ (__PAIR64__(v346, v285) >> 3) ^ (__PAIR64__(v346, v285) >> 2) ^ (__PAIR64__(v345, v285) >> 1) ^ ((v344 >> 1) ^ 0x1B | (v285 << 7)) ^ ((v285 >> ((v345 ^ 0x36) & 0x10) >> ((v345 ^ 0x36) & 0x10 ^ 0x10)) + (v347 << 16)) ^ HIDWORD(a57);
  LOBYTE(STACK[0x2A8]) = (HIBYTE(v356) ^ 0x6A) - 2 * ((HIBYTE(v356) ^ 0x6A) & 0x37 ^ HIBYTE(v356) & 1) + 54;
  LOBYTE(STACK[0x535]) = HIBYTE(v351) ^ 0x29;
  *(v75 + ((HIWORD(v356) ^ 0x6ABD) & 0x2A3 ^ 0x2A3) + ((HIWORD(v356) ^ 0x6ABD) & 0x2A3)) = BYTE2(v351) ^ 0x29;
  LOBYTE(STACK[0x256]) = (BYTE2(v356) ^ 0xBD) - ((2 * (BYTE2(v356) ^ 0xBD)) & 0x6C) + 54;
  LOBYTE(STACK[0x43F]) = v351 ^ 0x29;
  LOBYTE(STACK[0x5D3]) = (BYTE1(v356) ^ 0x55) - ((2 * (BYTE1(v356) ^ 0x55)) & 0x6C) + 54;
  LOBYTE(STACK[0x581]) = v356 ^ 0x6F;
  LOBYTE(STACK[0x491]) = BYTE1(v351) ^ 0x29;
  LODWORD(v285) = LOBYTE(STACK[0x3ED]);
  v357 = ((LOBYTE(STACK[0x52F]) ^ 0x36) << 24) | ((LOBYTE(STACK[0x4DD]) ^ 0x36) << 16);
  v358 = LOBYTE(STACK[0x439]) ^ 0x36 | ((LOBYTE(STACK[0x48B]) ^ 0x36) << 8) | v357;
  HIDWORD(v328) = (LOBYTE(STACK[0x2F7]) ^ 0x36 | ((LOBYTE(STACK[0x349]) ^ 0x29) << 8) | ((v285 ^ 0x29) << 24) | ((LOBYTE(STACK[0x39B]) ^ 0x29) << 16)) ^ 0x1F;
  LODWORD(v328) = HIDWORD(v328);
  v359 = v328 >> 2;
  LODWORD(v285) = HIDWORD(v328) ^ __ROR4__(HIDWORD(v328), 21) ^ __ROR4__(HIDWORD(v328), 24) ^ __ROR4__(HIDWORD(v328), 17) ^ __ROR4__(HIDWORD(v328), 16) ^ __ROR4__(HIDWORD(v328), 15) ^ __ROR4__(HIDWORD(v328), 14) ^ __ROR4__(HIDWORD(v328), 13) ^ __ROR4__(HIDWORD(v328), 10) ^ __ROR4__(HIDWORD(v328), 3) ^ v359 ^ ((v285 >> 5) ^ 1 | (8 * HIDWORD(v328))) ^ ((v285 >> 7) | (2 * HIDWORD(v328))) ^ (((v285 ^ 0x29) >> 3) | (32 * HIDWORD(v328))) ^ (((v285 ^ 0x29) >> 1) | (HIDWORD(v328) << 7));
  HIDWORD(v328) = LOBYTE(STACK[0x439]) ^ 0x36 | ((LOBYTE(STACK[0x48B]) ^ 0x36) << 8);
  LODWORD(v328) = v357;
  v360 = (v358 >> 8) ^ (v357 >> 23) ^ __ROR4__(v358, 31) ^ __ROR4__(v358, 29) ^ __ROR4__(v358, 27) ^ __ROR4__(v358, 25) ^ __ROR4__(v358, 21) ^ __ROR4__(v358, 19) ^ __ROR4__(v358, 18) ^ (v328 >> 16) ^ __ROR4__(v358, 15) ^ __ROR4__(v358, 10) ^ __ROR4__(v358, 9) ^ __ROR4__(v358, 4) ^ __ROR4__(v358, 3) ^ __ROR4__(v358, 2) ^ __ROR4__(v358, 1) ^ (v358 << ((v359 & 9 ^ 9) + (v359 & 9))) ^ (v358 << (9 * (((LOBYTE(STACK[0x439]) ^ 0x36) & 0xD2 ^ 0xD2) + ((LOBYTE(STACK[0x439]) ^ 0x36) & 0xD2u)) - 74));
  LOBYTE(STACK[0x4DD]) = BYTE2(v360) ^ 0x36;
  LOBYTE(STACK[0x39B]) = BYTE2(v285) ^ 0x29;
  LOBYTE(STACK[0x3ED]) = BYTE3(v285) ^ 0x29;
  LOBYTE(STACK[0x52F]) = HIBYTE(v360) ^ 0x36;
  LOBYTE(STACK[0x2F7]) = v285 ^ 0x29;
  LOBYTE(STACK[0x48B]) = BYTE1(v360) ^ 0x36;
  LOBYTE(STACK[0x439]) = v360 ^ 0x36;
  LOBYTE(STACK[0x349]) = BYTE1(v285) ^ 0x29;
  LODWORD(v358) = LOBYTE(STACK[0x3E7]);
  LODWORD(v283) = LOBYTE(STACK[0x2A5]);
  v361 = ((v283 ^ 0x29) << 24) | ((LOBYTE(STACK[0x253]) ^ 0x29) << 16);
  v362 = ((v358 ^ 0x36) << 24) | ((LOBYTE(STACK[0x395]) ^ 0x36) << 16);
  v363 = (LOBYTE(STACK[0x57E]) ^ 0x36 | ((LOBYTE(STACK[0x5D0]) ^ 0x29) << 8) | v361) ^ 0x1F;
  v364 = (v283 ^ 0x29) >> 1;
  v365 = LOBYTE(STACK[0x2F1]);
  v366 = v365 ^ 0x36 | ((LOBYTE(STACK[0x343]) ^ 0x36) << 8);
  v367 = v363 >> ((v364 & 0x18 ^ 0x18) + (v364 & 0x18));
  HIDWORD(v328) = v363;
  LODWORD(v328) = LOBYTE(STACK[0x57E]) ^ 0x36 | ((LOBYTE(STACK[0x5D0]) ^ 0x29) << 8) | v361;
  v368 = v328 >> 15;
  LOBYTE(v344) = (v367 & 0x21) + (v367 & 0x21 ^ 0xE1);
  v369 = (__PAIR64__(v363, v361) >> 21);
  HIDWORD(v328) = v363;
  v370 = ((v283 ^ 0x29) >> 3) | (32 * v363);
  v371 = (v283 >> 7) | (2 * v363);
  v372 = v364 | (v363 << 7);
  v373 = v367 | (v363 << 8);
  v374 = v363 >> ((v344 + 45) & 0x3E);
  v375 = v369 ^ v363 ^ (v363 << 18) ^ (__PAIR64__(v363, v361) >> 16) ^ v368 ^ (v328 >> 13) ^ __ROR4__(v363, 3) ^ __ROR4__(v363, 10);
  LODWORD(v328) = __ROR4__(v363, 2);
  LODWORD(v283) = (__PAIR64__(v363, v361) >> 17) ^ ((v283 >> 5) ^ 1 | (8 * v363));
  v376 = (v366 | v362) - 1675123712 + ~(2 * ((v366 | v362) & 0x1C27A43B ^ (v365 ^ 0x36) & 0xA)) + 50;
  LODWORD(v283) = v375 ^ v328 ^ v283 ^ v371 ^ v370 ^ v372 ^ v373 ^ v374;
  HIDWORD(v328) = v376 ^ 0x27A431;
  LODWORD(v328) = v376 ^ 0x9C000000;
  v377 = v328 >> 23;
  HIDWORD(v328) = v376 ^ 0x7A431;
  LODWORD(v328) = v362;
  LODWORD(v358) = ((v358 >> 5) ^ 1 | (8 * v376)) ^ ((v358 >> 7) | (2 * v376)) ^ ((v358 >> 3) ^ 6 | (32 * v376)) ^ ((v358 >> 1) ^ 0x1B | (v376 << 7)) ^ v377 ^ (v328 >> 21) ^ 0x4E54F74A;
  HIDWORD(v328) = v376 ^ 0x7A431;
  LODWORD(v328) = v362;
  v378 = v328 >> 19;
  HIDWORD(v328) = v366;
  LODWORD(v328) = v376 ^ 0x9C27A400;
  v379 = v328 >> 10;
  v380 = ((v376 >> 15) ^ 0xB055005F) & ((v366 << 17) ^ 0xB877FFFF) | (v366 << 17) & 0x4FAA0000;
  v381 = v378 ^ (__PAIR64__(v366, v362) >> 16) ^ (((v376 ^ 0x9C27A431) << ((v358 | 0xAD) + 82 - (v358 & 0x52) + 15)) + (v362 >> 18));
  HIDWORD(v328) = v366;
  LODWORD(v328) = v376 ^ 0x9C27A400;
  v382 = v328 >> 9;
  v383 = v376 ^ 0x9C27A430;
  HIDWORD(v328) = v365 ^ 0x36;
  LODWORD(v328) = v376 ^ 0x9C27A430;
  v384 = v328 >> 3;
  HIDWORD(v328) = v365 ^ 0x36;
  LODWORD(v328) = v376 ^ 0x9C27A400;
  v385 = v328 >> 8;
  HIDWORD(v328) = v376 ^ 1;
  LODWORD(v328) = v376 ^ 0x9C27A430;
  v386 = v328 >> 2;
  HIDWORD(v328) = v365 ^ 0x36;
  LODWORD(v328) = v383;
  LOBYTE(STACK[0x2A5]) = BYTE3(v283) ^ 0x29;
  v387 = v382 ^ v379 ^ v385 ^ (v328 >> 4) ^ v384 ^ v386 ^ (__PAIR64__(v365, v383) >> 1) ^ v380 ^ v358 ^ (v381 - ((2 * v381) & 0xD35C55C) - 2036669778);
  LOBYTE(STACK[0x2F1]) = v387 ^ 0x88;
  LOBYTE(STACK[0x395]) = BYTE2(v387) ^ 0xF8;
  LOBYTE(STACK[0x5D0]) = BYTE1(v283) ^ 0x29;
  LOBYTE(STACK[0x3E7]) = HIBYTE(v387);
  LOBYTE(STACK[0x57E]) = v283 ^ 0x29;
  LOBYTE(STACK[0x253]) = BYTE2(v283) ^ 0x29;
  LOBYTE(STACK[0x343]) = BYTE1(v387) ^ 0xEC;
  LODWORD(v285) = LOBYTE(STACK[0x52C]);
  v388 = LOBYTE(STACK[0x29F]);
  v389 = v285 ^ 0x29;
  LODWORD(v283) = ((v285 ^ 0x29) << 24) | ((LOBYTE(STACK[0x4DA]) ^ 0x29) << 16);
  v390 = LOBYTE(STACK[0x436]) ^ 0x36 | ((LOBYTE(STACK[0x488]) ^ 0x29) << 8) | v283;
  v391 = v390 ^ 0x1F;
  LODWORD(v358) = (v285 >> 5) ^ 1 | (8 * (v390 ^ 0x1F));
  LODWORD(v285) = (v285 >> 7) | (2 * (v390 ^ 0x1F));
  v392 = (v389 >> 1) | ((v390 ^ 0x1F) << 7);
  v393 = (v389 >> 3) | (32 * (v390 ^ 0x1F));
  HIDWORD(v328) = v390 ^ 0x1F;
  LODWORD(v328) = v390;
  v394 = v328 >> 14;
  HIDWORD(v328) = v390 ^ 0x1F;
  LODWORD(v328) = v390;
  v395 = v394 ^ v390 ^ 0x1F ^ (v328 >> 13);
  HIDWORD(v328) = v390 ^ 0x1F;
  LODWORD(v328) = v283;
  v396 = (v328 >> 17);
  v397 = v389 | ((v390 ^ 0x1F) << 8);
  HIDWORD(v328) = v390 ^ 0x1F;
  LODWORD(v328) = v283;
  LODWORD(v283) = v328 >> 16;
  HIDWORD(v328) = v390 ^ 0x1F;
  LODWORD(v328) = v390;
  v398 = v395 ^ __ROR4__(v391, 10) ^ __ROR4__(v391, 3) ^ __ROR4__(v391, 2);
  v399 = v396 ^ v283 ^ (v328 >> 15) ^ v358;
  v400 = LOBYTE(STACK[0x578]) ^ 0x36;
  v401 = v400 | ((LOBYTE(STACK[0x5CA]) ^ 0x36) << 8);
  LODWORD(v285) = v399 ^ v285 ^ v393;
  v402 = v401 | ((LOBYTE(STACK[0x24D]) ^ 0x36) << 16) | ((v388 ^ 0x36) << 24);
  v403 = v398 ^ __ROR4__(v391, 21) ^ v285 ^ v392 ^ v397;
  HIDWORD(v328) = v402;
  LODWORD(v328) = ((LOBYTE(STACK[0x24D]) ^ 0x36) << 16) | ((v388 ^ 0x36) << 24);
  v404 = v328 >> 18;
  HIDWORD(v328) = v402;
  v405 = (v328 >> 19) ^ v404 ^ ((v388 >> 5) ^ 1 | (8 * v402));
  HIDWORD(v328) = v402;
  v406 = (v328 >> 21) ^ __ROR4__(v402, 23) ^ v405;
  HIDWORD(v328) = v401;
  v407 = v328 >> 16;
  v408 = (v328 >> 16) & 0x4000;
  v409 = v406 ^ ((v388 >> 7) | (2 * v402)) ^ ((v388 >> 3) ^ 6 | (32 * v402)) ^ ((v388 >> 1) ^ 0x1B | (v402 << 7));
  if ((v409 & v408) != 0)
  {
    v410 = -v408;
  }

  else
  {
    v410 = v408;
  }

  v411 = __PAIR64__(v400, __ROR4__(v402, 15));
  v412 = v407 & 0xFFFFBFFF ^ (v401 << 23) ^ v411 ^ (__PAIR64__(v401, v402) >> 10);
  LODWORD(v411) = v402;
  v413 = v412 ^ __ROR4__(v402, 8) ^ __ROR4__(v402, 4) ^ (v411 >> 2) ^ (v402 >> 3) ^ __ROR4__(v402, 1) ^ ((v402 >> 9) | (v400 << 29)) ^ (v410 + v409);
  LOBYTE(STACK[0x52C]) = (HIBYTE(v403) - ((v403 >> 23) & 0x2A) - 107) ^ 0xBC;
  LOBYTE(STACK[0x578]) = v413 ^ 0x36;
  LOBYTE(STACK[0x29F]) = HIBYTE(v413) ^ 0x36;
  LOBYTE(STACK[0x4DA]) = (BYTE2(v403) - ((v403 >> 15) & 0xEE) - 9) ^ 0xDE;
  LOBYTE(STACK[0x5CA]) = BYTE1(v413) ^ 0x36;
  LOBYTE(STACK[0x488]) = (BYTE1(v403) - ((v403 >> 7) & 0x54) - 86) ^ 0x83;
  LOBYTE(STACK[0x436]) = (v403 - ((2 * v403) & 0x6A) - 75) ^ 0x9C;
  LOBYTE(STACK[0x24D]) = BYTE2(v413) ^ 0x36;
  return (*(STACK[0x200] + 8 * ((18793 * (v72 > 0xC9F9EDA1)) ^ (v72 - 916773831))))(v393, v398, 2258297518, v396, a60, a72, v374, v369, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_100E1E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  LODWORD(STACK[0x148C]) = a7[22];
  LODWORD(STACK[0x1570]) = a7[23];
  LODWORD(STACK[0xBC4]) = a7[24];
  STACK[0x4C0] = a7;
  LODWORD(STACK[0x9A0]) = a7[25];
  return (*(v8 + 8 * v7))(a1, a2, a3, a4, a5, a6, 2174720927);
}

uint64_t sub_100E1E250@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X7>, int a4@<W8>)
{
  v23 = (v17 + ((v8 ^ v11) ^ 0xFFFFFFAA) + 165905224 + *(*(a3 + 8 * a1) + 4 * ((v8 ^ v11) ^ 0x14u) - 4)) ^ v20;
  v24 = v7 + (((v23 ^ 0xD0BF68A2) + 618472556) ^ ((v23 ^ 0x2CAAA0E5) - 657920979) ^ ((v23 ^ 0x747D3C11) - 2145423143)) - ((((2 * ((v23 ^ 0x3D7C246D) & v5 ^ v6)) ^ 0x8107D6E4) - 2115418349) ^ (((2 * ((v23 ^ 0x3D7C246D) & v5 ^ v6)) ^ 0x3C1EA0C4) + 1022374195) ^ (((2 * ((v23 ^ 0x3D7C246D) & v5 ^ v6)) ^ 0xB730F670) - 1210161273));
  v25 = (v24 ^ 0x9E9759DB) & (2 * (v24 & 0x9F0781E2)) ^ v24 & 0x9F0781E2;
  v26 = ((2 * (v24 ^ 0xA290585B)) ^ 0x7B2FB372) & (v24 ^ 0xA290585B) ^ (2 * (v24 ^ 0xA290585B)) & v4;
  v27 = ((4 * (v26 ^ 0x4904889)) ^ 0xF65F66E4) & (v26 ^ 0x4904889) ^ (4 * (v26 ^ 0x4904889)) & v4;
  v28 = (v27 ^ 0x341740A0) & (16 * ((v26 ^ 0x38060110) & (4 * v25) ^ v25)) ^ (v26 ^ 0x38060110) & (4 * v25) ^ v25;
  v29 = ((16 * (v27 ^ 0x9809919)) ^ 0xD97D9B90) & (v27 ^ 0x9809919) ^ (16 * (v27 ^ 0x9809919)) & (v4 - 8);
  v30 = v28 ^ (v4 + 1) ^ (v29 ^ v14) & (v28 << 8);
  *(v16 + 4 * v8) = v22 ^ v24 ^ (2 * (v12 ^ v30 ^ (v30 << 16) & v18 ^ ((v30 << 16) ^ v13) & (((v29 ^ 0x24824029) << 8) & v18 ^ v15 ^ (((v29 ^ 0x24824029) << 8) ^ v19) & (v29 ^ 0x24824029)))) ^ v10;
  return (*(*(v21 - 96) + 8 * (((v9 == 0) * a2) ^ a4)))();
}

uint64_t sub_100E1E4A0()
{
  STACK[0x1AA8] = v1;
  v4 = STACK[0x1468];
  STACK[0x1AB0] = STACK[0x1468];
  return (*(v3 + 8 * (((v1 - v4 > 9) * ((v0 - 4548) ^ (v2 + 589) ^ 0xB7D0FF93)) ^ v0)))();
}

uint64_t sub_100E1E4EC(int a1)
{
  v5 = *(&STACK[0x320] + (v2 + 2361 * a1) % (v1 - 5095));
  v6 = *(&STACK[0xDE0] + (825 * (v5 | ((v5 < 0x60) << 8)) + 978450) % 0x1940);
  v7 = *(&STACK[0x320] + (2361 * (((v6 ^ 0xB8C535BE) + 567425208) ^ ((v6 ^ 0xE75B8CF6) + 2118943232) ^ ((v6 ^ 0x5F9EB9A1) - 964053847)) + 445607912) % 0xA88);
  v8 = 2361 * (((HIBYTE(v6) ^ 0xCD548DD) - 179164750) ^ ((HIBYTE(v6) ^ 0x154E7965) - 322365430) ^ ((HIBYTE(v6) ^ 0x199B31C4) - 535015255)) - 1365231048;
  v9 = *(&STACK[0x320] + (2361 * (((BYTE2(v6) ^ 0x2AFE3A15) - 1815308699) ^ ((BYTE2(v6) ^ 0x8EF6E4D3) + 935610531) ^ ((BYTE2(v6) ^ 0xA408DEA6) + 490369752)) - 69632513) % 0xA88);
  LOBYTE(v6) = v7 & 0xB8 ^ 0x8C;
  v10 = *(&STACK[0x320] + v8 % 0xA88);
  v11 = *(&STACK[0x320] + (2361 * (((BYTE1(v6) ^ 0x4E737152) + 1898505226) ^ ((BYTE1(v6) ^ 0x74CA4B95) + 1267850959) ^ ((BYTE1(v6) ^ 0x3AB93A74u) + 98742064)) - 1400578528) % 0xA88);
  v12 = v10 & 0x60 ^ 0xE0;
  v13 = (v9 & 0xA0 | 0x5B) ^ v9 & 0xF6;
  v14 = v7 ^ (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * v6) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6));
  LOBYTE(v6) = v9 ^ (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * (v9 & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13));
  v15 = v11 & 0xA0 | 7;
  v16 = v15 ^ v11 & 0xE;
  HIDWORD(v17) = v9;
  LODWORD(v17) = ((v6 & 0xFE | 0xB370FF00) & (((v10 ^ (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12))) << 8) ^ 0xB3705456) | v6 & 0xA8) ^ 0xB3703456;
  HIDWORD(v17) = v17 >> 1;
  LODWORD(v17) = HIDWORD(v17);
  *(&STACK[0xDE0] + (v3 + 825 * a1) % 0x1940u) = (((((v11 ^ (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * (v11 & (2 * v15) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ ((v17 >> 18) >> 5)) << 8) ^ 0x47DEDD) & (v14 ^ 0xFFFFFF65) | v14 & 0x22) ^ 0x7C27C314;
  return (*(v4 + 8 * ((250 * (a1 == 255)) ^ v1)))();
}

uint64_t sub_100E1E9C8@<X0>(int a1@<W8>)
{
  *(v6 + 504) = *(v7 + 8 * a1);
  v8 = *(v4 + 3392);
  *(v6 + 624) = &STACK[0x2280] + v8;
  *(v4 + 3392) = v8 + 48;
  v9 = (v2 - v3 - 2357) ^ 0x819F9A79 ^ (v2 + 649463998) & 0xD949D97D;
  if (v1)
  {
    v10 = v5 == v9;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(v7 + 8 * ((114 * v11) ^ v2)))();
}

uint64_t sub_100E1EA54()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x59F6u)))(**(v0 + 688) ^ 0xD21C8094);
  STACK[0x2010] = v3;
  if (v3)
  {
    v4 = -143113071;
  }

  else
  {
    v4 = -143156080;
  }

  LODWORD(STACK[0x201C]) = v4;
  return (*(v2 + 8 * (((((v1 + 127) ^ (v3 == 0)) & 1) * ((v1 - 8836) ^ 0xE4)) ^ v1)))();
}

uint64_t sub_100E1EB2C()
{
  STACK[0x4D0] = *(v1 + 376);
  STACK[0x4C0] = STACK[0x1020];
  v3 = *(v2 + 8 * (v0 ^ 0x819FF974 ^ ((v0 + 26638137) | 0x80094208)));
  *&STACK[0x4F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x530] = xmmword_101237190;
  return v3(505);
}

uint64_t sub_100E1ED0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (a7 + 908);
  v10 = vld1q_dup_f32(v9);
  v11.n128_u64[0] = 0x8000000080000000;
  v11.n128_u64[1] = 0x8000000080000000;
  v12.i64[0] = 0x100000001;
  v12.i64[1] = 0x100000001;
  return (*(v8 + 8 * (v7 + 2120245517)))(484, v11, vnegq_f32(v12), vdupq_n_s32(0xB78F2A6u), vdupq_n_s32(0x85BC7953), v10);
}

uint64_t sub_100E1ED64()
{
  *(v1 + 1752) = 0;
  LODWORD(STACK[0x1E04]) = -143155721;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_100E1EDF8@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v5 = *(a1 + 4 * (v2 - 1));
  v6 = 1566083941 * (((v5 ^ (v5 >> 30) ^ 0x85D3FBFA) + 775130828) ^ ((v5 ^ (v5 >> 30) ^ 0xB36094DF) + 411099631) ^ ((v5 ^ (v5 >> 30) ^ 0x36B36F25) - 1655498219)) + 608406840;
  v7 = (v6 ^ 0xB55940AC) & (2 * (v6 & 0xB95C100E)) ^ v6 & 0xB95C100E;
  v8 = ((2 * (v6 ^ 0xB5F140A8)) ^ 0x195AA14C) & (v6 ^ 0xB5F140A8) ^ (2 * (v6 ^ 0xB5F140A8)) & 0xCAD50A6;
  v9 = v8 ^ 0x4A550A2;
  v10 = (v8 ^ 0x8000000) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x32B54298) & v9 ^ (4 * v9) & 0xCAD50A4;
  v12 = v10 ^ 0xCAD50A6 ^ (v11 ^ 0xA54080) & (16 * v10);
  v13 = (16 * (v11 ^ 0xC081026)) & 0xCAD50A0 ^ 0x4285086 ^ ((16 * (v11 ^ 0xC081026)) ^ 0xCAD50A60) & (v11 ^ 0xC081026);
  v14 = (v12 << 8) & 0xCAD5000 ^ v12 ^ ((v12 << 8) ^ 0xAD50A600) & v13;
  *(a1 + 4 * v2) = (*(a1 + 4 * v2) ^ v6 ^ (2 * ((v14 << 16) & 0xCAD0000 ^ v14 ^ ((v14 << 16) ^ 0x50A60000) & ((v13 << 8) & 0xCAD0000 ^ 0xAD0000 ^ ((v13 << 8) ^ 0x2D500000) & v13))) ^ 0xB94EB142) - v2;
  v15 = 1534937323 * ((~((v4 - 240) | 0x24446C892BA0CF88) + ((v4 - 240) & 0x24446C892BA0CF88)) ^ 0x16C31BB412B1CB30);
  STACK[0x25E8] = 623 - v15;
  *(v4 - 240) = (a2 - 749399065) ^ v15;
  *(v4 - 220) = a2 - 749399065 - v15 - 10;
  *(v4 - 204) = 593217887 - v15 + a2;
  *(v4 - 200) = v15 ^ 1;
  *(v4 - 208) = ((a2 - 749399065) ^ 0xDB1) + v15;
  STACK[0x25D8] = (v2 + 1) ^ v15;
  v16 = (*(v3 + 8 * (a2 ^ 0x819FBE52)))(v4 - 240);
  return (*(v3 + 8 * *(v4 - 224)))(v16);
}

uint64_t sub_100E1F0E8@<X0>(char a1@<W8>)
{
  v6 = ((v3 - 52) ^ ~(a1 ^ v2)) & 1;
  v7 = 1534937323 * ((~((v5 - 240) | 0xC102FC9254377E5DLL) + ((v5 - 240) & 0xC102FC9254377E5DLL)) ^ 0xF3858BAF6D267AE5);
  STACK[0x25D0] = v6 ^ v7;
  *(v5 - 208) = v7 + v3 - 2077617204 - 18;
  STACK[0x25E8] = v7;
  *(v5 - 224) = v7;
  *(v5 - 220) = (v3 - 2077617204) ^ v7;
  *(v5 - 232) = ((v3 - 2077617204) ^ v1 ^ 0xD4A) - v7;
  *(v5 - 228) = v7 + v3 - 723214290;
  v8 = (*(v4 + 8 * (v3 + 2120268328)))(v5 - 240);
  return (*(v4 + 8 * *(v5 - 204)))(v8);
}

uint64_t sub_100E1F384@<X0>(int a1@<W8>)
{
  STACK[0x1F40] = v1;
  v3 = STACK[0xC78];
  STACK[0x1F48] = STACK[0xC78];
  return (*(v2 + 8 * ((6174 * (v1 - v3 > ((a1 - 2120244862) ^ 0x819FC205uLL))) ^ a1)))();
}

uint64_t sub_100E1F418()
{
  v2 = (v0 - 1665703175) & 0x6348B59F;
  v3 = (*(v1 + 8 * (v2 ^ 0x49A5u)))((((v2 - 1836767144) & 0x6D7ABF0F) + ((v2 - 12875) ^ 0xD21C60C1)) ^ *STACK[0x558]);
  STACK[0x20B8] = v3;
  if (v3)
  {
    v4 = -143113071;
  }

  else
  {
    v4 = -143156080;
  }

  LODWORD(STACK[0x20C4]) = v4;
  return (*(v1 + 8 * ((54 * (v3 == 0)) ^ v2)))();
}

uint64_t sub_100E1F4DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v12 = STACK[0x640] + 4 * (a4 * v10 + 852948 - (((((a4 * v10 + 852948) >> 3) * v11) >> 32) >> 7) * v5);
  v13 = *(*STACK[0x660] + (*v9 & STACK[0x658]));
  v14 = STACK[0x640] + 4 * ((a4 * v10 + a5) % ((v8 + 1830202299) & 0x92E95AF7 ^ 0x5DFF));
  v15 = *v6 ^ v7;
  *(v12 - 0x34EE34220E8AC3B8) = (-1962600273 * v14) ^ *(v14 - 0x34EE34220E8AC3B8) ^ (-1962600273 * v12) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v13 + 673210726) & v15)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v13 + 673210728) & v15)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v14 + 673210726) & v15)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v14 + 673210728) & v15));
  return (*(STACK[0x668] + 8 * ((31411 * (a4 == 255)) ^ v8)))();
}

uint64_t sub_100E1F6D8(uint64_t a1)
{
  v5 = v1 + v2 - 123;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 42;
  v6 = (*(v3 + 8 * (v2 + 23126)))(42);
  *(a1 + 24) = v6;
  return (*(v3 + 8 * ((2 * (((v5 + v2 + 41) ^ (v6 == 0)) & 1)) & 0xEF | (16 * (((v5 + v2 + 41) ^ (v6 == 0)) & 1)) | v2)))();
}

uint64_t sub_100E1F794@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v5 = 1534937323 * ((((v4 - 240) | 0xB9EA3A3DE79C6EDLL) - (v4 - 240) + ((v4 - 240) & 0xF4615C5C21863910)) ^ 0xC6E62B6118973DAALL);
  STACK[0x25E8] = v5;
  *(v4 - 224) = v5;
  *(v4 - 220) = (a1 + 832712391) ^ v5;
  *(v4 - 208) = ((a1 + 832712391) ^ 0x28) + v5;
  *(v4 - 232) = ((a1 + 832712391) ^ 0xD51) - v5;
  *(v4 - 228) = v5 + a1 - 723214290;
  STACK[0x25D0] = (a2 != 0x8206425FD3C3C6BBLL) ^ v5;
  v6 = (*(v3 + 8 * (a1 + v2)))(v4 - 240);
  return (*(v3 + 8 * *(v4 - 204)))(v6);
}

uint64_t sub_100E1F88C(int a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a7.i64[0] = *(v16 + 4);
  a7.i32[2] = *(v16 + 12);
  v22 = vextq_s8(a6, a7, 0xCuLL);
  a7.i32[3] = *(a13 + 4 * (v17 + ((v20 + v13 + 512) | v19)));
  v23 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a7, a3), vandq_s8(v22, a2)), 1uLL), *(v16 - 908));
  v24.i32[0] = *(v14 + 4 * (*(v16 + 4) & 1));
  v24.i32[1] = *(v14 + 4 * (*(v16 + 8) & 1));
  v24.i32[2] = *(v14 + 4 * (a7.i8[8] & 1));
  v24.i32[3] = *(v14 + 4 * (a7.i8[12] & 1));
  *v16 = veorq_s8(vaddq_s32(vsubq_s32(v23, vandq_s8(vaddq_s32(v23, v23), a4)), a5), v24);
  return (*(v21 + 8 * (((v18 != 0) * a1) ^ (v15 + 1650))))();
}

uint64_t sub_100E1F98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = ~v4 + v3;
  v13 = *(v7 + v12 - 15);
  v14 = *(v7 + v12 - 31);
  v15 = a1 + a2 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  LODWORD(v15) = (((v10 + v5 + 371) | v8) ^ v9) + v4 == v2;
  return (*(v11 + 8 * ((v15 | (8 * v15)) ^ v6)))();
}

uint64_t sub_100E1FA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  *(v28 + 1040) = 0;
  *(v30 - 232) = (v27 - 1723139001) ^ (1917435887 * (((v30 - 240) & 0xED3435E0 | ~((v30 - 240) | 0xED3435E0)) ^ 0xF4709119));
  v31 = (*(v29 + 8 * (v27 + 3948)))(v30 - 240);
  if (*a23)
  {
    v32 = 1;
  }

  else
  {
    v32 = *a27 == 0;
  }

  v33 = v32;
  return (*(v29 + 8 * ((v33 * ((v27 ^ 0x34A) - 28536)) ^ v27)))(v31);
}

uint64_t sub_100E1FACC@<X0>(int a1@<W8>)
{
  v7 = v1 + v2 + 235;
  v8 = *(v3 + 8) / 1000;
  STACK[0x1310] -= 16;
  v5[1] = v8;
  v5[2] = a1;
  STACK[0x3A0] = v8;
  v5[3] = (*(v6 + 8 * (v2 + 2120268429)))();
  *v5 = (*(v6 + 8 * (v2 ^ v4)))();
  return (*(v6 + 8 * v7))();
}

uint64_t sub_100E1FCD4()
{
  *(v2 - 0x2369327399A66D95) = 0;
  *(v2 + v1) = 0;
  *(v2 - 0x2369327399A66D8DLL) = 0;
  *(v2 - 0x2369327399A66D7DLL) = 0;
  *(v2 - 0x2369327399A66D75) = 0xD38CBDD3ACAFF84ALL;
  *(v2 - 0x2369327399A66D6DLL) = -1;
  v5 = 1534937323 * ((v4 - 0x50E77E9E3DA11968 - 2 * ((v4 - 240) & 0xAF188161C25EE788)) ^ 0x626009A304B01CCFLL);
  STACK[0x25D0] = v5 ^ 0x208BEEA65CE96893;
  *(v4 - 208) = v5 + v0 + 200323277 + 24;
  *(v4 - 224) = v5;
  *(v4 - 220) = (v0 + 200323277) ^ v5;
  STACK[0x25E8] = STACK[0x4C0] + 0x808889774D5247DLL + v5;
  *(v4 - 232) = ((v0 + 200323277) ^ 0x1061) - v5;
  *(v4 - 228) = v5 + v0 - 723214290;
  v6 = (*(v3 + 8 * (v0 + 2120268328)))(v4 - 240);
  return (*(v3 + 8 * *(v4 - 204)))(v6);
}

uint64_t sub_100E1FFE8@<X0>(int a1@<W1>, int a2@<W8>)
{
  if (STACK[0x1388])
  {
    v4 = LODWORD(STACK[0x9CC]) == ((((a2 + 5616) | 0x3A21) - a1 - 3549) ^ v2);
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * (v5 | a2)))();
}

uint64_t sub_100E20048()
{
  v5 = v0 + 0x683CBC57EAB929D6;
  v9 = v0 + v2 + ((v1 - 6567) ^ 0x1293E30504E4E931uLL) > 0xF && (v0 + 0x683CBC57EAB929D6 + *(v3 + 8 * (v1 ^ 0x4287))) > 0xF && (v5 + *(v3 + 8 * (v1 - 16559)) - 8) > 0xF && (v5 + *(v3 + 8 * (v1 - 16500)) - 8) > 0xF;
  return (*(v4 + 8 * (((16 * v9) | (v9 << 7)) ^ v1)))();
}

uint64_t sub_100E2012C@<X0>(unsigned int a1@<W8>)
{
  v6 = 1534937323 * ((v5 - 240) ^ 0xCD7888C2C6EEFB47);
  *(v5 - 224) = v6;
  *(v5 - 220) = (v3 - 1672426464) ^ v6;
  STACK[0x25D0] = v6;
  STACK[0x25E8] = v6 + a1;
  *(v5 - 232) = ((v3 - 1672426464) ^ 0xD66) - v6;
  *(v5 - 228) = v6 + v3 - 723214290;
  *(v5 - 208) = v6 - v1 + 2 * (v3 - 1672426464) - 502304339;
  v7 = (*(v4 + 8 * (v3 + v2)))(v5 - 240);
  return (*(v4 + 8 * *(v5 - 204)))(v7);
}

uint64_t sub_100E202D8@<X0>(int a1@<W0>, int a2@<W8>)
{
  STACK[0x21B0] = v2;
  v5 = STACK[0xC40];
  STACK[0x21B8] = STACK[0xC40];
  return (*(v4 + 8 * (((v2 - v5 > (a2 - 8967) - 1440) * (v3 + (a2 ^ (a1 - 3356)) + 1199)) ^ a2)))();
}

uint64_t sub_100E2036C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = STACK[0x640] + 4 * ((551 * a2 + a7) % 0x1D48u);
  v13 = STACK[0x640] + 4 * ((551 * a2 + 2552232) % 0x1D48u);
  v14 = *(*STACK[0x660] + (*v11 & STACK[0x658]));
  v15 = *v8 ^ v10;
  *(v13 - 0x34EE34220E8AC3B8) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v14 + 673210726) & v15)) ^ *(v12 - 0x34EE34220E8AC3B8) ^ (-1962600273 * v13) ^ (-1962600273 * v12) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v14 + v7) & v15)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v14 + 673210726) & v15)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v14 + v7) & v15));
  return (*(STACK[0x668] + 8 * ((58 * (((v9 + 22) ^ 0x54E9u) + a2 > 0xFF)) ^ v9)))();
}

uint64_t sub_100E204B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a3 + 120) - 0x683CBC57EAB92A3ELL);
  STACK[0x1438] = 0;
  STACK[0xC40] = 0;
  return (*(v5 + 8 * (((v6 == a4) * ((v4 - 2120265307) ^ 0x819FCB24 ^ (227 * (v4 ^ 0x706C)))) ^ v4)))(a1, a2, 2120264440);
}

uint64_t sub_100E205BC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1B08] = a1;
  LODWORD(STACK[0xEC4]) = v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100E205F4()
{
  v2[292] = v1;
  v4 = v2[49];
  v2[293] = v4;
  return (*(v3 + 8 * ((((v0 + 1405) | 0x40) + 18001) ^ v0 ^ (6757 * (((((v1 - v4) ^ v0) & (v1 - v4)) >> (__clz((v1 - v4) ^ v0 | 1) ^ 0x3Fu)) & 1)))))();
}

uint64_t sub_100E2081C()
{
  v4 = (*(v3 + 8 * (v1 + 2120268353)))(v0);
  *(v2 + 2248) = 0;
  return (*(v3 + 8 * (v1 + 2120257947)))(v4);
}

uint64_t sub_100E209C4@<X0>(void *a1@<X1>, int a2@<W2>, char a3@<W3>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v24 = (a6 + v9);
  v25 = (a6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(*a1 + (*v8 & a5 & ((v25 & v15) + (v25 | v11) + a2)));
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xF41651499F5E3C67;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) | 0xE162DB180DB5E180) - (v29 + v28) + 0xF4E9273F9250F40) ^ 0xE5832F623A2A9A89;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x2275D4C73835399BLL;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34) ^ 0xE5AF1AB32EBD3CDDLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - (v22 & (2 * (v37 + v36))) + v19) ^ v14;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (a7 - ((v40 + v39) | a7) + ((v40 + v39) | v18)) ^ v7;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v13;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  *v24 = ((((v23 | (2 * (v45 + v44))) - (v45 + v44) + v20) ^ v16) >> (a3 & 0x38)) ^ *(v12 + (a4 + v9));
  return (*(v21 + 8 * (((v9 != 63) * v17) ^ v10)))();
}

uint64_t sub_100E20C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (((1645 * a8 + 2113825) % 0xA88u) ^ 0x76BFFFECE3F2BFEFLL) + STACK[0x638] + ((((STACK[0x630] - 5573) | 0x215A) - 4604) & (2 * ((1645 * a8 + 2113825) % 0xA88u)));
  v12 = *STACK[0x660];
  v13 = *v10;
  v14 = *(v12 + (v13 & STACK[0x648]));
  v15 = *v8 ^ v9;
  LODWORD(v11) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v11 + 470630417 + v14 - 963544004) & v15)) ^ *(v11 + 0x439CB6B6E2F025FCLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v11 + 470630417 + v14 - 963544002) & v15)) ^ (76 * (v11 + 17));
  v16 = STACK[0x640] + 4 * ((551 * (((v11 ^ 0x85520FCD) - 1815123602) ^ ((v11 ^ 0x23F89BE3) + 895876420) ^ ((v11 ^ 0xA6AA945E) - 1338510593)) + 1396159529) % 0x1D48);
  v17 = *(v16 - 0x34EE34220E8AC3B8);
  LODWORD(v12) = *(v12 + (v13 & STACK[0x658]));
  v18 = (v16 + v12 + 673210726);
  LODWORD(v11) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 + v12 + 673210728) & v15));
  LODWORD(v13) = (v11 ^ v17 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((0xC31D39C4A22FF15FLL * (*v8 ^ 0xDB653AB621E69720) - 0x3CE2C63B5DD00EA1 + v18) & (*v8 ^ 0xDB653AB621E69720))) ^ (-1962600273 * v16)) >> 10;
  LODWORD(v18) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v18 & v15));
  v19 = v11 ^ v17 ^ v18;
  LOBYTE(v11) = v18 ^ v17 ^ v11 ^ (-81 * v16);
  v20 = 1645 * (((v19 ^ (333999 * v16)) >> 16) ^ 0x25) + 3391990;
  v21 = 1645 * (((v19 ^ (6319 * v16)) >> 8) ^ 0x79) + 3391990;
  LODWORD(v11) = 1645 * (((v11 ^ 0xE7DE0B8A) - 1557846717) ^ ((v11 ^ 0x482C201F) + 215420632) ^ ((v11 ^ 0xAFF22B5C) - 351730283)) - 1104339172;
  v22 = v20 - 2696 * (((12744711 * v20) >> 32) >> 3);
  v23 = ((v11 % 0xA88) ^ 0xEF65BFC63F7FBEDFLL) + STACK[0x638] + ((2 * (v11 % 0xA88)) & 0x1DBE);
  v24 = *(v23 - 0x35090922789CD8F4);
  LODWORD(v13) = 1645 * (((((v13 ^ 0x408BB3BF) - 1777186833) ^ ((v13 ^ 0xA2E141FF) + 1954067887) ^ ((v13 ^ 0xE2423B10) + 886820688)) + 726811376) >> 14);
  v25 = v23 - 1065336543;
  v26 = v13 - 2696 * (((407830723 * v13) >> 32) >> 8);
  v27 = (v26 ^ 0x3EFBD7EEE78EEFEFLL) + STACK[0x638] + ((2 * v26) & 0x1FDE);
  v28 = (v22 ^ 0x7F6F9BF9FFBC7BCFLL) + STACK[0x638] + ((2 * v22) & 0x179E);
  v29 = v21 - 2696 * (((12744711 * v21) >> 32) >> 3);
  v30 = (v29 ^ 0xFFFB997FE7E13BBBLL) + STACK[0x638] + ((2 * v29) & 0x1776);
  LODWORD(v18) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v28 + 4424753 + v14 - 963544004) & v15)) ^ *(v28 + 0x3AED1AA9C7266A1CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v28 + 4424753 + v14 - 963544002) & v15)) ^ (76 * (v28 + 49));
  LODWORD(v30) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 + 404669509 + v14 - 963544004) & v15)) ^ *(v30 - 0x459EE2DC20FE55D0) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 + 404669509 + v14 - 963544002) & v15)) ^ (76 * (v30 + 69));
  LODWORD(v27) = (((((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 + 410062865 + v14 - 963544004) & v15)) ^ *(v27 + 0x7B60DEB4DF53F5FCLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 + 410062865 + v14 - 963544002) & v15)) ^ (76 * (v27 + 17))) << 16) ^ 0xEC3E9) & ((v18 << 8) ^ 0xFF83E9) & 0xFFFFC3FF | (((v18 >> 2) & 0xF) << 10)) ^ 0x2A42DE) & (v30 ^ 0xFFFF07) ^ (v30 & 0xC8 | 0xAA0A00);
  LODWORD(v18) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v25 + v14 - 963544004) & v15)) ^ v24 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v25 + v14 - 963544002) & v15)) ^ (76 * v25);
  v31 = STACK[0x640] + 4 * ((551 * a8 + 710790) % 0x1D48u);
  *(v31 - 0x34EE34220E8AC3B8) = (-1962600273 * v31) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v31 + 673210726) & v15)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v31 + 673210728) & v15)) ^ 0x1559EC3F ^ (((v27 << 8) ^ 0x48C7E286) & ~v18 | v18 & 0x79);
  return (*(STACK[0x668] + 8 * ((6047 * (a8 == 255)) ^ STACK[0x630])))();
}

uint64_t sub_100E212A0()
{
  *(v4 - 232) = 513742651 - 16169987 * (((v4 - 240) & 0xEAAF6ED2 | ~((v4 - 240) | 0xEAAF6ED2)) ^ 0x40DEA405) + v0;
  (*(v3 + 8 * (v0 ^ v1)))(v4 - 240);
  return (*(v3 + 8 * (v2 + v0 + 188)))(&STACK[0x1730]);
}

uint64_t sub_100E2137C()
{
  *(v2 + 1760) = v1;
  v4 = STACK[0xBE8];
  *(v2 + 1768) = STACK[0xBE8];
  return (*(v3 + 8 * ((12513 * (v1 - v4 > (((v0 - 356) - 3109) ^ (v0 - 3472)))) ^ v0)))();
}

uint64_t sub_100E214DC()
{
  *(STACK[0x710] + 112) |= 0xBAu;
  STACK[0x1310] += v0 ^ 0xFFFFFFFFFFFFF730;
  STACK[0xBC8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x5F3B)))();
}

uint64_t sub_100E21540@<X0>(unint64_t a1@<X8>)
{
  v4 = v2 - ((2 * v2) & 0x348320A4) + 440504402;
  LOBYTE(STACK[0xAC8]) = (HIBYTE(v4) ^ 0x1A) - (((HIBYTE(v4) ^ 0x1A) << ((v1 - 37) ^ 0xCE)) & 0xE) - 121;
  LOBYTE(STACK[0xAC9]) = (BYTE2(v4) ^ 0x41) - 2 * ((BYTE2(v4) ^ 0x41) & 0xF ^ BYTE2(v4) & 8) - 121;
  LOBYTE(STACK[0xACA]) = (BYTE1(v4) ^ 0x90) - ((v4 >> 7) & 0xE) - 121;
  LOBYTE(STACK[0xACB]) = v4 ^ 0xD5;
  return (*(v3 + 8 * ((8129 * (&STACK[0xAC8] > a1)) ^ v1)))();
}

uint64_t sub_100E216FC()
{
  v4 = LODWORD(STACK[0x115C])++;
  *STACK[0x440] = v4 + 631038936;
  v5 = *STACK[0x450];
  v6 = 1917435887 * ((~(v3 - 240) & 0xF45310B2F63A19EBLL | (v3 - 240) & 0xBACEF4D09C5E614) ^ 0x21587C4C108142EDLL);
  *(v3 - 240) = ((v0 + 911568921) ^ 0x187) + v6;
  *(v1 + 1072) = v5 ^ v6;
  *(v3 - 216) = v0 + 911568921 + v6;
  *(v3 - 224) = 317506016 - v6 + v0;
  *(v3 - 220) = (v0 + 911571586) ^ v6;
  *(v1 + 1048) = v6 + 5119;
  *(v3 - 196) = v6;
  v7 = (*(v2 + 8 * (v0 ^ LODWORD(STACK[0x4F0]))))(v3 - 240);
  return (*(v2 + 8 * *(v3 - 200)))(v7);
}

uint64_t sub_100E218A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28)
{
  *(v31 - 240) = (v28 - 457559516) ^ (1964904101 * ((2 * ((v31 - 240) & 0x7548BC70) - (v31 - 240) - 1967701107) ^ 0x7095A809));
  STACK[0x25D8] = a28;
  v32 = (*(v30 + 8 * (v28 + 2120268345)))(v31 - 240);
  return (*(v30 + 8 * (v29 + v28 - 214)))(v32);
}

uint64_t sub_100E21938()
{
  (*(v2 + 8 * (v0 + 23731)))();
  *(v1 + 256) = 0;
  return (*(v2 + 8 * v0))(0x224C09CA440C0C0BLL);
}

uint64_t sub_100E2198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x530] = 0;
  STACK[0x6C0] = 0x1883660EE8144416;
  STACK[0x4F0] = &STACK[0x6C0];
  STACK[0xDE8] = &STACK[0x6C0];
  STACK[0x8F8] = 0;
  LODWORD(STACK[0x1654]) = 2118564986;
  return (*(v9 + 8 * ((14173 * ((a8 + v8 + 941188353) < 0x1CA7FC7D)) ^ (a8 + v8 + 4802))))();
}

uint64_t sub_100E21B34(uint64_t a1)
{
  v6 = STACK[0x14E0];
  v7 = STACK[0x3F0];
  v8 = STACK[0x3F0] ^ 0xA09F08B;
  v4[131] = a1;
  v4[135] = v7 + v6 + v3 + 19601 - ((2 * v6) & 0xC41C019BD0696304) + 0x620E00CDE834501ELL;
  v4[133] = &STACK[0x1B58];
  *(v5 - 224) = v7 + v3 + 781717914;
  *(v5 - 220) = v8;
  v4[130] = &STACK[0x159C];
  v9 = (*(v2 + 8 * (v3 ^ 0x69D7)))(v5 - 240);
  return (*(v2 + 8 * ((13305 * (*(v5 - 208) == ((v3 + 24752) ^ v1))) ^ v3)))(v9);
}

uint64_t sub_100E21C5C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, int a3@<W4>, int8x16_t *a4@<X5>, unint64_t a5@<X8>)
{
  STACK[0x440] = *(v6 + a1 - 8);
  v18.i64[0] = v11 + a1 + 9;
  v18.i64[1] = v11 + a1 + 8;
  v19 = v18;
  *&STACK[0x410] = v18;
  v18.i64[0] = v11 + a1 + 7;
  v18.i64[1] = v11 + a1 + 6;
  v20 = v18;
  *&STACK[0x3E0] = v18;
  v18.i64[0] = v6 + a1 - 1;
  v21.i64[0] = v11 + a1 + 5;
  v18.i64[1] = v6 + a1 - 2;
  v22 = v18;
  *&STACK[0x430] = v18;
  v21.i64[1] = v11 + a1 + 4;
  v18.i64[0] = v6 + a1 - 3;
  v18.i64[1] = v6 + a1 + v7;
  *&STACK[0x420] = v18;
  v23.i64[0] = v6 + a1 - 5;
  v23.i64[1] = v6 + a1 - 6;
  v24.i64[0] = v6 + a1 - 7;
  v24.i64[1] = v6 + a1 - 8;
  v25.i64[0] = v11 + a1 + 3;
  v25.i64[1] = v11 + a1 + 2;
  v26 = vandq_s8(v24, *&STACK[0x2D0]);
  v27 = vandq_s8(v23, *&STACK[0x2D0]);
  v28 = vandq_s8(v18, *&STACK[0x2D0]);
  v29 = vandq_s8(v22, *&STACK[0x2D0]);
  v30 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v32 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v34 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3C0], v33), *&STACK[0x3B0]), vandq_s8(vaddq_s64(v33, *&STACK[0x3D0]), *&STACK[0x3A0]));
  v35 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3C0], v32), *&STACK[0x3B0]), vandq_s8(vaddq_s64(v32, *&STACK[0x3D0]), *&STACK[0x3A0]));
  v36 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3C0], v31), *&STACK[0x3B0]), vandq_s8(vaddq_s64(v31, *&STACK[0x3D0]), *&STACK[0x3A0]));
  v37 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3C0], v30), *&STACK[0x3B0]), vandq_s8(vaddq_s64(v30, *&STACK[0x3D0]), *&STACK[0x3A0]));
  v38 = veorq_s8(v37, *&STACK[0x390]);
  v39 = veorq_s8(v36, *&STACK[0x390]);
  v40 = veorq_s8(v35, *&STACK[0x390]);
  v41 = veorq_s8(v34, *&STACK[0x390]);
  v42 = veorq_s8(v34, *&STACK[0x380]);
  v43 = veorq_s8(v35, *&STACK[0x380]);
  v44 = veorq_s8(v36, *&STACK[0x380]);
  v45 = veorq_s8(v37, *&STACK[0x380]);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v45);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v44);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v43);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v42);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v49, v49), *&STACK[0x370]), v49), *&STACK[0x360]), *&STACK[0x350]);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v48, v48), *&STACK[0x370]), v48), *&STACK[0x360]), *&STACK[0x350]);
  v52 = vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v47, v47), *&STACK[0x370]), v47), *&STACK[0x360]), *&STACK[0x350]);
  v54 = vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v56 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v46, v46), *&STACK[0x370]), v46), *&STACK[0x360]), *&STACK[0x350]);
  v58 = veorq_s8(v57, v56);
  v59 = veorq_s8(v53, v55);
  v60 = veorq_s8(v51, v54);
  v61 = veorq_s8(v50, v52);
  v62 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v63 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v64 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v61);
  v66 = veorq_s8(vaddq_s64(v62, v58), *&STACK[0x340]);
  v67 = veorq_s8(vaddq_s64(v63, v59), *&STACK[0x340]);
  v68 = veorq_s8(vaddq_s64(v64, v60), *&STACK[0x340]);
  v69 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v70 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v71 = veorq_s8(v65, *&STACK[0x340]);
  v72 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v73 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v74 = veorq_s8(v68, v72);
  v75 = veorq_s8(v67, v70);
  v76 = veorq_s8(v66, v69);
  v77 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v76);
  v81 = veorq_s8(vaddq_s64(v77, v73), *&STACK[0x4A0]);
  v82 = veorq_s8(vaddq_s64(v78, v74), *&STACK[0x4A0]);
  v83 = veorq_s8(vaddq_s64(v79, v75), *&STACK[0x4A0]);
  v84 = *&STACK[0x4A0];
  v85 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v88 = veorq_s8(v80, *&STACK[0x4A0]);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v90 = veorq_s8(v83, v87);
  v91 = veorq_s8(v82, v86);
  v92 = veorq_s8(v81, v85);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), *&STACK[0x330]);
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v90), *&STACK[0x330]);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v91), *&STACK[0x330]);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v92), *&STACK[0x330]);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v98 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v99 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v100 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v101 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v106 = vandq_s8(v25, *&STACK[0x2D0]);
  v107 = vandq_s8(v21, *&STACK[0x2D0]);
  v108 = vandq_s8(v19, *&STACK[0x2D0]);
  v109 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v110 = vandq_s8(v20, *&STACK[0x2D0]);
  *&STACK[0x3F0] = vaddq_s64(v104, v100);
  *&STACK[0x400] = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v113 = vaddq_s64(v103, v99);
  v114 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v116 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v114, v114), *&STACK[0x300]), *&STACK[0x2F0]), v114), *&STACK[0x2E0]);
  v117 = vaddq_s64(v102, v98);
  v118 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v112, v112), *&STACK[0x300]), *&STACK[0x2F0]), v112), *&STACK[0x2E0]);
  v119 = veorq_s8(v118, *&STACK[0x4D0]);
  v120 = veorq_s8(v116, *&STACK[0x4D0]);
  v121 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v124 = veorq_s8(v116, *&STACK[0x4C0]);
  v125 = veorq_s8(v118, *&STACK[0x4C0]);
  v126 = vaddq_s64(v101, v97);
  v127 = vaddq_s64(v122, v125);
  v128 = veorq_s8(vaddq_s64(v121, v124), *&STACK[0x2C0]);
  v129 = veorq_s8(v127, *&STACK[0x2C0]);
  v130 = veorq_s8(v126, *&STACK[0x320]);
  v131 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v132 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v133 = veorq_s8(v117, *&STACK[0x320]);
  v134 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v132);
  v136 = veorq_s8(v133, v115);
  v137 = vaddq_s64(v134, v131);
  v138 = veorq_s8(v130, v123);
  v139 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v137, *&STACK[0x490]), vorrq_s8(v137, v14)), v14), v17);
  v143 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v144 = veorq_s8(v142, v141);
  v145 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v147 = vaddq_s64(v143, v138);
  v148 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v135, *&STACK[0x490]), vorrq_s8(v135, v14)), v14), v17);
  v150 = veorq_s8(v149, v139);
  v151 = vaddq_s64(v140, v136);
  v152 = veorq_s8(vaddq_s64(v145, v144), v84);
  v153 = veorq_s8(v151, v13);
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v84);
  v155 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v156 = veorq_s8(v147, v13);
  v157 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v158 = veorq_s8(v152, v155);
  v159 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v160 = veorq_s8(v156, v146);
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v158);
  v162 = vaddq_s64(v159, v157);
  v163 = veorq_s8(v153, v148);
  v164 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v168 = vaddq_s64(vsubq_s64(v161, vandq_s8(vaddq_s64(v161, v161), *&STACK[0x480])), *&STACK[0x470]);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(v162, vandq_s8(vaddq_s64(v162, v162), *&STACK[0x480])), *&STACK[0x470]), *&STACK[0x460]);
  v170 = veorq_s8(v168, *&STACK[0x460]);
  v171 = veorq_s8(v170, v166);
  v172 = veorq_s8(v169, v165);
  v173 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v174 = vaddq_s64(v164, v160);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v172);
  v176 = vaddq_s64(v173, v171);
  v177 = vsubq_s64(vorrq_s8(vaddq_s64(v176, v176), *&STACK[0x450]), v176);
  v178 = veorq_s8(v113, *&STACK[0x320]);
  v179 = veorq_s8(v178, v105);
  v180 = vshlq_u64(veorq_s8(vaddq_s64(v167, v163), v16), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), *&STACK[0x2B0])));
  v181 = vdupq_n_s64(a5);
  v182 = veorq_s8(vaddq_s64(v177, v15), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v175, v175), *&STACK[0x450]), v175), v15), v181);
  v184 = vshlq_u64(veorq_s8(v174, v16), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), *&STACK[0x2B0])));
  v185 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v186 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v187 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v186);
  v189 = veorq_s8(vaddq_s64(v187, v185), v13);
  v190 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v191 = veorq_s8(v188, v13);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), veorq_s8(v189, v190));
  v193 = vdupq_n_s64(v5);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL)));
  v195 = vdupq_n_s64(a2);
  v196 = vdupq_n_s64(v8);
  v255.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v193), vorrq_s8(v192, v195)), v195), v196), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), *&STACK[0x2B0]))), v184);
  v255.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v194, v193), vorrq_s8(v194, v195)), v195), v196), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), *&STACK[0x2B0]))), v180);
  v197 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v109, v109), *&STACK[0x300]), *&STACK[0x2F0]), v109);
  v198 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v111, v111), *&STACK[0x300]), *&STACK[0x2F0]), v111), *&STACK[0x2E0]);
  v199 = veorq_s8(v198, *&STACK[0x4D0]);
  v200 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v201 = veorq_s8(v198, *&STACK[0x4C0]);
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v201), *&STACK[0x2C0]);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203);
  v205 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v204, *&STACK[0x490]), vorrq_s8(v204, v14)), v14), v17);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v208 = veorq_s8(vaddq_s64(v200, v179), v13);
  v209 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), *&STACK[0x4A0]);
  v210 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v211 = veorq_s8(v208, v205);
  v212 = veorq_s8(v209, v210);
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v212);
  v214 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v215 = veorq_s8(vaddq_s64(vsubq_s64(v213, vandq_s8(vaddq_s64(v213, v213), *&STACK[0x480])), *&STACK[0x470]), *&STACK[0x460]);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v217, v217), *&STACK[0x450]), v217), v15), v181);
  v219 = vshlq_u64(veorq_s8(vaddq_s64(v214, v211), v16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x420], 3uLL), *&STACK[0x2B0])));
  v220 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v220), v13);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL)));
  v223 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v222, v193), vorrq_s8(v222, v195)), v195), v196), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), *&STACK[0x2B0])));
  v224 = veorq_s8(*&STACK[0x3F0], *&STACK[0x320]);
  v225 = veorq_s8(v224, *&STACK[0x400]);
  v226 = vaddq_s64(v197, *&STACK[0x2E0]);
  v255.val[1] = veorq_s8(v223, v219);
  v227 = veorq_s8(v226, *&STACK[0x4D0]);
  v228 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v229 = veorq_s8(v226, *&STACK[0x4C0]);
  v230 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v231 = veorq_s8(vaddq_s64(v228, v229), *&STACK[0x2C0]);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232);
  v234 = vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v236 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v233, *&STACK[0x490]), vorrq_s8(v233, v14)), v14), v17);
  v237 = veorq_s8(v236, v234);
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237), *&STACK[0x4A0]);
  v239 = veorq_s8(vaddq_s64(v230, v225), v13);
  v240 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v241 = vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL);
  v242 = veorq_s8(v239, v235);
  v243 = vaddq_s64(v241, v240);
  v244 = vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL);
  v245 = veorq_s8(vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), *&STACK[0x480])), *&STACK[0x470]), *&STACK[0x460]);
  v246 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v246);
  v248 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v247, v247), *&STACK[0x450]), v247), v15), v181);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v250 = vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL);
  v251 = vshlq_u64(veorq_s8(vaddq_s64(v244, v242), v16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x430], 3uLL), *&STACK[0x2B0])));
  v252 = veorq_s8(vaddq_s64(v250, v249), v13);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL)));
  v255.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v253, v193), vorrq_s8(v253, v195)), v195), v196), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x410], 3uLL), *&STACK[0x2B0]))), v251);
  *(v11 + a1 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v255, a4[26])), STACK[0x440]);
  return (*(v10 + 8 * (((v12 == a1) * a3) ^ v9)))();
}