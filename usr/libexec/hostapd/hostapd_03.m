void *sub_100027780(uint64_t a1, __int128 *__src, size_t __n)
{
  v3 = __n;
  v4 = __src;
  v6 = *(a1 + 16);
  v7 = *(a1 + 20) + __CFADD__(v6, 8 * __n) + (__n >> 29);
  *(a1 + 16) = v6 + 8 * __n;
  *(a1 + 20) = v7;
  v8 = (v6 >> 3) & 0x3F;
  if (v8)
  {
    v9 = a1 + 24;
    v10 = 64 - v8;
    if (__n < 64 - v8)
    {
      __n = __n;
      v11 = (v9 + v8);
      goto LABEL_8;
    }

    memcpy((v9 + v8), __src, (64 - v8));
    sub_100027920(a1, (a1 + 24));
    v4 = (v4 + v10);
    v3 -= v10;
  }

  if (v3 >= 0x40)
  {
    do
    {
      v12 = *v4;
      v13 = v4[1];
      v14 = v4[2];
      *(a1 + 72) = v4[3];
      *(a1 + 56) = v14;
      *(a1 + 40) = v13;
      *(a1 + 24) = v12;
      sub_100027920(a1, (a1 + 24));
      v4 += 4;
      v3 -= 64;
    }

    while (v3 > 0x3F);
  }

  __n = v3;
  v11 = (a1 + 24);
LABEL_8:

  return memcpy(v11, v4, __n);
}

double sub_100027870(_OWORD *a1, uint64_t a2)
{
  v4 = (*(a2 + 16) >> 3) & 0x3F;
  v5 = a2 + 24;
  v6 = (a2 + 24 + v4);
  *v6 = 0x80;
  v7 = v6 + 1;
  v8 = v4 ^ 0x3F;
  if (v8 > 7)
  {
    bzero(v7, (55 - v4));
  }

  else
  {
    bzero(v7, v8);
    sub_100027920(a2, v5);
    *(v5 + 48) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
  }

  *(a2 + 80) = *(a2 + 16);
  sub_100027920(a2, v5);
  *a1 = *a2;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

_DWORD *sub_100027920(_DWORD *result, int *a2)
{
  v2 = result[1];
  v4 = result[2];
  v3 = result[3];
  v6 = *a2;
  v5 = a2[1];
  HIDWORD(v7) = *result + *a2 - 680876936 + (v4 & v2 | v3 & ~v2);
  LODWORD(v7) = HIDWORD(v7);
  v8 = (v7 >> 25) + v2;
  HIDWORD(v7) = v3 + v5 - 389564586 + (v2 & v8 | v4 & ~v8);
  LODWORD(v7) = HIDWORD(v7);
  v9 = (v7 >> 20) + v8;
  v10 = a2[2];
  v11 = a2[3];
  HIDWORD(v7) = v4 + v10 + 606105819 + (v8 & v9 | v2 & ~v9);
  LODWORD(v7) = HIDWORD(v7);
  v12 = (v7 >> 15) + v9;
  HIDWORD(v7) = v2 + v11 - 1044525330 + (v9 & v12 | v8 & ~v12);
  LODWORD(v7) = HIDWORD(v7);
  v13 = (v7 >> 10) + v12;
  v15 = a2[4];
  v14 = a2[5];
  HIDWORD(v7) = v15 + v8 - 176418897 + (v12 & v13 | v9 & ~v13);
  LODWORD(v7) = HIDWORD(v7);
  v16 = (v7 >> 25) + v13;
  HIDWORD(v7) = v14 + v9 + 1200080426 + (v13 & v16 | v12 & ~v16);
  LODWORD(v7) = HIDWORD(v7);
  v17 = (v7 >> 20) + v16;
  v18 = a2[6];
  v19 = a2[7];
  HIDWORD(v7) = v18 + v12 - 1473231341 + (v16 & v17 | v13 & ~v17);
  LODWORD(v7) = HIDWORD(v7);
  v20 = (v7 >> 15) + v17;
  HIDWORD(v7) = v19 + v13 - 45705983 + (v17 & v20 | v16 & ~v20);
  LODWORD(v7) = HIDWORD(v7);
  v21 = (v7 >> 10) + v20;
  v22 = a2[8];
  v23 = a2[9];
  HIDWORD(v7) = v22 + v16 + 1770035416 + (v20 & v21 | v17 & ~v21);
  LODWORD(v7) = HIDWORD(v7);
  v24 = (v7 >> 25) + v21;
  HIDWORD(v7) = v23 + v17 - 1958414417 + (v21 & v24 | v20 & ~v24);
  LODWORD(v7) = HIDWORD(v7);
  v25 = (v7 >> 20) + v24;
  v27 = a2[10];
  v26 = a2[11];
  HIDWORD(v7) = v27 + v20 - 42063 + (v24 & v25 | v21 & ~v25);
  LODWORD(v7) = HIDWORD(v7);
  v28 = (v7 >> 15) + v25;
  HIDWORD(v7) = v26 + v21 - 1990404162 + (v25 & v28 | v24 & ~v28);
  LODWORD(v7) = HIDWORD(v7);
  v29 = (v7 >> 10) + v28;
  v31 = a2[12];
  v30 = a2[13];
  HIDWORD(v7) = v31 + v24 + 1804603682 + (v28 & v29 | v25 & ~v29);
  LODWORD(v7) = HIDWORD(v7);
  v32 = (v7 >> 25) + v29;
  HIDWORD(v7) = v30 + v25 - 40341101 + (v29 & v32 | v28 & ~v32);
  LODWORD(v7) = HIDWORD(v7);
  v33 = (v7 >> 20) + v32;
  v35 = a2[14];
  v34 = a2[15];
  HIDWORD(v7) = v35 + v28 - 1502002290 + (v32 & v33 | v29 & ~v33);
  LODWORD(v7) = HIDWORD(v7);
  v36 = (v7 >> 15) + v33;
  HIDWORD(v7) = v34 + v29 + 1236535329 + (v33 & v36 | v32 & ~v36);
  LODWORD(v7) = HIDWORD(v7);
  v37 = (v7 >> 10) + v36;
  HIDWORD(v7) = v5 + v32 - 165796510 + (v37 & v33 | v36 & ~v33);
  LODWORD(v7) = HIDWORD(v7);
  v38 = (v7 >> 27) + v37;
  HIDWORD(v7) = v18 + v33 - 1069501632 + (v38 & v36 | v37 & ~v36);
  LODWORD(v7) = HIDWORD(v7);
  v39 = (v7 >> 23) + v38;
  HIDWORD(v7) = v26 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
  LODWORD(v7) = HIDWORD(v7);
  v40 = (v7 >> 18) + v39;
  HIDWORD(v7) = v6 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
  LODWORD(v7) = HIDWORD(v7);
  v41 = (v7 >> 12) + v40;
  HIDWORD(v7) = v14 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
  LODWORD(v7) = HIDWORD(v7);
  v42 = (v7 >> 27) + v41;
  HIDWORD(v7) = v27 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
  LODWORD(v7) = HIDWORD(v7);
  v43 = (v7 >> 23) + v42;
  HIDWORD(v7) = v34 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
  LODWORD(v7) = HIDWORD(v7);
  v44 = (v7 >> 18) + v43;
  HIDWORD(v7) = v15 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
  LODWORD(v7) = HIDWORD(v7);
  v45 = (v7 >> 12) + v44;
  HIDWORD(v7) = v23 + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
  LODWORD(v7) = HIDWORD(v7);
  v46 = (v7 >> 27) + v45;
  HIDWORD(v7) = v35 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
  LODWORD(v7) = HIDWORD(v7);
  v47 = (v7 >> 23) + v46;
  HIDWORD(v7) = v11 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
  LODWORD(v7) = HIDWORD(v7);
  v48 = (v7 >> 18) + v47;
  HIDWORD(v7) = v22 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
  LODWORD(v7) = HIDWORD(v7);
  v49 = (v7 >> 12) + v48;
  HIDWORD(v7) = v30 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
  LODWORD(v7) = HIDWORD(v7);
  v50 = (v7 >> 27) + v49;
  HIDWORD(v7) = v10 + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
  LODWORD(v7) = HIDWORD(v7);
  v51 = (v7 >> 23) + v50;
  HIDWORD(v7) = v19 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
  LODWORD(v7) = HIDWORD(v7);
  v52 = (v7 >> 18) + v51;
  HIDWORD(v7) = v31 + v49 - 1926607734 + ((v52 ^ v51) & v50 ^ v51);
  LODWORD(v7) = HIDWORD(v7);
  v53 = (v7 >> 12) + v52;
  HIDWORD(v7) = v14 + v50 - 378558 + (v52 ^ v51 ^ v53);
  LODWORD(v7) = HIDWORD(v7);
  v54 = (v7 >> 28) + v53;
  HIDWORD(v7) = v22 + v51 - 2022574463 + (v53 ^ v52 ^ v54);
  LODWORD(v7) = HIDWORD(v7);
  v55 = (v7 >> 21) + v54;
  HIDWORD(v7) = v26 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
  LODWORD(v7) = HIDWORD(v7);
  v56 = (v7 >> 16) + v55;
  HIDWORD(v7) = v35 + v53 - 35309556 + (v55 ^ v54 ^ v56);
  LODWORD(v7) = HIDWORD(v7);
  v57 = (v7 >> 9) + v56;
  HIDWORD(v7) = v5 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
  LODWORD(v7) = HIDWORD(v7);
  v58 = (v7 >> 28) + v57;
  HIDWORD(v7) = v15 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
  LODWORD(v7) = HIDWORD(v7);
  v59 = (v7 >> 21) + v58;
  HIDWORD(v7) = v19 + v56 - 155497632 + (v58 ^ v57 ^ v59);
  LODWORD(v7) = HIDWORD(v7);
  v60 = (v7 >> 16) + v59;
  HIDWORD(v7) = v27 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
  LODWORD(v7) = HIDWORD(v7);
  v61 = (v7 >> 9) + v60;
  HIDWORD(v7) = v30 + v58 + 681279174 + (v60 ^ v59 ^ v61);
  LODWORD(v7) = HIDWORD(v7);
  v62 = (v7 >> 28) + v61;
  HIDWORD(v7) = v6 + v59 - 358537222 + (v61 ^ v60 ^ v62);
  LODWORD(v7) = HIDWORD(v7);
  v63 = (v7 >> 21) + v62;
  HIDWORD(v7) = v11 + v60 - 722521979 + (v62 ^ v61 ^ v63);
  LODWORD(v7) = HIDWORD(v7);
  v64 = (v7 >> 16) + v63;
  HIDWORD(v7) = v18 + v61 + 76029189 + (v63 ^ v62 ^ v64);
  LODWORD(v7) = HIDWORD(v7);
  v65 = (v7 >> 9) + v64;
  HIDWORD(v7) = v23 + v62 - 640364487 + (v64 ^ v63 ^ v65);
  LODWORD(v7) = HIDWORD(v7);
  v66 = (v7 >> 28) + v65;
  HIDWORD(v7) = v31 + v63 - 421815835 + (v65 ^ v64 ^ v66);
  LODWORD(v7) = HIDWORD(v7);
  v67 = (v7 >> 21) + v66;
  HIDWORD(v7) = v34 + v64 + 530742520 + (v66 ^ v65 ^ v67);
  LODWORD(v7) = HIDWORD(v7);
  v68 = (v7 >> 16) + v67;
  HIDWORD(v7) = v10 + v65 - 995338651 + (v67 ^ v66 ^ v68);
  LODWORD(v7) = HIDWORD(v7);
  v69 = (v7 >> 9) + v68;
  HIDWORD(v7) = v6 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
  LODWORD(v7) = HIDWORD(v7);
  v70 = (v7 >> 26) + v69;
  HIDWORD(v7) = v19 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
  LODWORD(v7) = HIDWORD(v7);
  v71 = (v7 >> 22) + v70;
  HIDWORD(v7) = v35 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
  LODWORD(v7) = HIDWORD(v7);
  v72 = (v7 >> 17) + v71;
  HIDWORD(v7) = v14 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
  LODWORD(v7) = HIDWORD(v7);
  v73 = (v7 >> 11) + v72;
  HIDWORD(v7) = v31 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
  LODWORD(v7) = HIDWORD(v7);
  v74 = (v7 >> 26) + v73;
  HIDWORD(v7) = v11 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
  LODWORD(v7) = HIDWORD(v7);
  v75 = (v7 >> 22) + v74;
  HIDWORD(v7) = v27 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
  LODWORD(v7) = HIDWORD(v7);
  v76 = (v7 >> 17) + v75;
  HIDWORD(v7) = v5 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
  LODWORD(v7) = HIDWORD(v7);
  v77 = (v7 >> 11) + v76;
  HIDWORD(v7) = v22 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
  LODWORD(v7) = HIDWORD(v7);
  v78 = (v7 >> 26) + v77;
  HIDWORD(v7) = v34 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
  LODWORD(v7) = HIDWORD(v7);
  v79 = (v7 >> 22) + v78;
  HIDWORD(v7) = v18 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
  LODWORD(v7) = HIDWORD(v7);
  v80 = (v7 >> 17) + v79;
  HIDWORD(v7) = v30 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
  LODWORD(v7) = HIDWORD(v7);
  v81 = (v7 >> 11) + v80;
  HIDWORD(v7) = v15 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
  LODWORD(v7) = HIDWORD(v7);
  v82 = (v7 >> 26) + v81;
  HIDWORD(v7) = v26 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
  LODWORD(v7) = HIDWORD(v7);
  v83 = (v7 >> 22) + v82;
  HIDWORD(v7) = v10 + v80 + 718787259 + ((v83 | ~v81) ^ v82);
  LODWORD(v7) = HIDWORD(v7);
  v84 = (v7 >> 17) + v83;
  HIDWORD(v7) = v23 + v81 - 343485551 + ((v84 | ~v82) ^ v83);
  LODWORD(v7) = HIDWORD(v7);
  *result += v82;
  result[1] = v84 + v2 + (v7 >> 11);
  result[2] = v84 + v4;
  result[3] = v83 + v3;
  return result;
}

uint64_t sub_1000282FC(uint64_t a1, char **a2, _DWORD *a3, uint64_t a4)
{
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v11 = xmmword_10002C990;
  v13 = 0;
  v12 = 3285377520;
  if (a1)
  {
    v7 = a1;
    do
    {
      v9 = *a2++;
      v8 = v9;
      LODWORD(v9) = *a3;
      a3 += 2;
      sub_1000283E0(&v11, v8, v9);
      --v7;
    }

    while (v7);
  }

  sub_1000284C8(a4, &v11);
  return 0;
}

double sub_1000283C0(uint64_t a1)
{
  *a1 = xmmword_10002C990;
  *(a1 + 24) = 0;
  *&result = 3285377520;
  *(a1 + 16) = 3285377520;
  return result;
}

void *sub_1000283E0(_DWORD *a1, char *__src, unsigned int a3)
{
  v6 = (a1[5] >> 3) & 0x3F;
  *(a1 + 5) += __PAIR64__(a3 >> 29, 8 * a3);
  if (v6 + a3 < 0x40)
  {
    v7 = 0;
    v9 = v6;
  }

  else
  {
    v7 = 64 - v6;
    memcpy(a1 + v6 + 28, __src, (64 - v6));
    sub_100028610(a1, a1 + 7);
    v8 = v6 ^ 0x7F;
    if ((v6 ^ 0x7F) >= a3)
    {
      v9 = 0;
    }

    else
    {
      do
      {
        sub_100028610(a1, &__src[v8 - 63]);
        v8 += 64;
      }

      while (v8 < a3);
      v9 = 0;
      v7 = v8 - 63;
    }
  }

  return memcpy(a1 + v9 + 28, &__src[v7], a3 - v7);
}

double sub_1000284C8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  for (i = 0; i != 8; ++i)
  {
    v9[i] = *(a2 + 20 + 4 * (i < 4)) >> (~v4 & 0x18);
    v4 += 8;
  }

  sub_1000283E0(a2, "\x80", 1u);
  while ((*(a2 + 20) & 0x1F8) != 0x1C0)
  {
    sub_1000283E0(a2, byte_10002C9A8, 1u);
  }

  sub_1000283E0(a2, v9, 8u);
  v6 = 0;
  for (j = 0; j != 20; ++j)
  {
    *(a1 + j) = *(a2 + (j & 0xFFFFFFFC)) >> (~v6 & 0x18);
    v6 += 8;
  }

  result = 0.0;
  *(a2 + 76) = 0u;
  *(a2 + 60) = 0u;
  *(a2 + 44) = 0u;
  *(a2 + 28) = 0u;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100028610(_DWORD *a1, unsigned int *a2)
{
  HIDWORD(v3) = *a1;
  LODWORD(v3) = *a1;
  v2 = v3 >> 27;
  HIDWORD(v3) = a1[1];
  LODWORD(v3) = HIDWORD(v3);
  v4 = v3 >> 2;
  v5 = a1[2];
  v6 = *a1 & __ROR4__(HIDWORD(v3), 2);
  v474 = a1[4];
  v471 = a1[3];
  v472 = HIDWORD(v3);
  v7 = bswap32(*a2);
  v8 = v7 + v474 + v2 + (v5 & HIDWORD(v3) | v471 & ~HIDWORD(v3)) + 1518500249;
  HIDWORD(v3) = v8;
  LODWORD(v3) = v8;
  v9 = v3 >> 27;
  v469 = v5;
  v470 = *a1;
  HIDWORD(v3) = *a1;
  LODWORD(v3) = *a1;
  v10 = v3 >> 2;
  v11 = v8 & __ROR4__(*a1, 2);
  v12 = bswap32(a2[1]);
  v13 = v12 + v471 + (v6 | v5 & ~*a1) + 1518500249 + v9;
  HIDWORD(v3) = v13;
  LODWORD(v3) = v13;
  v14 = v3 >> 27;
  HIDWORD(v3) = v8;
  LODWORD(v3) = v8;
  v15 = v3 >> 2;
  v16 = v13 & __ROR4__(v8, 2);
  v17 = v11 | v4 & ~v8;
  v18 = bswap32(a2[2]);
  v19 = v18 + v5 + v17 + 1518500249 + v14;
  HIDWORD(v3) = v19;
  LODWORD(v3) = v19;
  v20 = v3 >> 27;
  HIDWORD(v3) = v13;
  LODWORD(v3) = v13;
  v21 = v3 >> 2;
  v22 = v19 & __ROR4__(v13, 2);
  v23 = bswap32(a2[3]);
  v24 = v23 + v4 + (v16 | v10 & ~v13) + 1518500249 + v20;
  HIDWORD(v3) = v24;
  LODWORD(v3) = v24;
  v25 = v3 >> 27;
  HIDWORD(v3) = v19;
  LODWORD(v3) = v19;
  v26 = v3 >> 2;
  v27 = v24 & __ROR4__(v19, 2);
  v28 = v22 | v15 & ~v19;
  v29 = bswap32(a2[4]);
  v30 = v29 + v10 + v28 + 1518500249 + v25;
  HIDWORD(v3) = v30;
  LODWORD(v3) = v30;
  v31 = v3 >> 27;
  HIDWORD(v3) = v24;
  LODWORD(v3) = v24;
  v32 = v3 >> 2;
  v33 = v30 & __ROR4__(v24, 2);
  v34 = v27 | v21 & ~v24;
  v35 = bswap32(a2[5]);
  v36 = v35 + v15 + v34 + 1518500249 + v31;
  HIDWORD(v3) = v36;
  LODWORD(v3) = v36;
  v37 = v3 >> 27;
  HIDWORD(v3) = v30;
  LODWORD(v3) = v30;
  v38 = v3 >> 2;
  v39 = v36 & __ROR4__(v30, 2);
  v40 = bswap32(a2[6]);
  v41 = v40 + v21 + (v33 | v26 & ~v30) + 1518500249 + v37;
  HIDWORD(v3) = v41;
  LODWORD(v3) = v41;
  v42 = v3 >> 27;
  HIDWORD(v3) = v36;
  LODWORD(v3) = v36;
  v43 = v3 >> 2;
  v44 = v41 & __ROR4__(v36, 2);
  v45 = bswap32(a2[7]);
  v46 = v45 + v26 + (v39 | v32 & ~v36) + 1518500249 + v42;
  HIDWORD(v3) = v46;
  LODWORD(v3) = v46;
  v47 = v3 >> 27;
  HIDWORD(v3) = v41;
  LODWORD(v3) = v41;
  v48 = v3 >> 2;
  v49 = v46 & __ROR4__(v41, 2);
  v50 = bswap32(a2[8]);
  v51 = v50 + v32 + (v44 | v38 & ~v41) + 1518500249 + v47;
  HIDWORD(v3) = v51;
  LODWORD(v3) = v51;
  v52 = v3 >> 27;
  HIDWORD(v3) = v46;
  LODWORD(v3) = v46;
  v53 = v3 >> 2;
  v54 = v51 & __ROR4__(v46, 2);
  v55 = bswap32(a2[9]);
  v56 = v55 + v38 + (v49 | v43 & ~v46) + 1518500249 + v52;
  HIDWORD(v3) = v56;
  LODWORD(v3) = v56;
  v57 = v3 >> 27;
  HIDWORD(v3) = v51;
  LODWORD(v3) = v51;
  v58 = v3 >> 2;
  v59 = v56 & __ROR4__(v51, 2);
  v60 = bswap32(a2[10]);
  v61 = v60 + v43 + (v54 | v48 & ~v51) + 1518500249 + v57;
  HIDWORD(v3) = v61;
  LODWORD(v3) = v61;
  v62 = v3 >> 27;
  HIDWORD(v3) = v56;
  LODWORD(v3) = v56;
  v63 = v3 >> 2;
  v64 = v61 & __ROR4__(v56, 2);
  v65 = bswap32(a2[11]);
  v66 = v65 + v48 + (v59 | v53 & ~v56) + 1518500249 + v62;
  HIDWORD(v3) = v66;
  LODWORD(v3) = v66;
  v67 = v3 >> 27;
  HIDWORD(v3) = v61;
  LODWORD(v3) = v61;
  v68 = v3 >> 2;
  v69 = v66 & __ROR4__(v61, 2);
  v70 = bswap32(a2[12]);
  v71 = v70 + v53 + (v64 | v58 & ~v61) + 1518500249 + v67;
  HIDWORD(v3) = v71;
  LODWORD(v3) = v71;
  v72 = v3 >> 27;
  HIDWORD(v3) = v66;
  LODWORD(v3) = v66;
  v73 = v3 >> 2;
  v74 = v71 & __ROR4__(v66, 2);
  v75 = bswap32(a2[13]);
  v76 = v75 + v58 + (v69 | v63 & ~v66) + 1518500249 + v72;
  HIDWORD(v3) = v76;
  LODWORD(v3) = v76;
  v77 = v3 >> 27;
  HIDWORD(v3) = v71;
  LODWORD(v3) = v71;
  v78 = v3 >> 2;
  v79 = v76 & __ROR4__(v71, 2);
  v80 = v74 | v68 & ~v71;
  v81 = bswap32(a2[14]);
  v82 = v81 + v63 + v80 + 1518500249 + v77;
  HIDWORD(v3) = v82;
  LODWORD(v3) = v82;
  v83 = v3 >> 27;
  v84 = v79 | v73 & ~v76;
  HIDWORD(v3) = v76;
  LODWORD(v3) = v76;
  v85 = v3 >> 2;
  v86 = bswap32(a2[15]);
  v87 = v18 ^ v7 ^ v50 ^ v75;
  HIDWORD(v3) = v87;
  LODWORD(v3) = v87;
  v88 = v3 >> 31;
  v89 = v86 + v68 + v84 + 1518500249 + v83;
  HIDWORD(v3) = v89;
  LODWORD(v3) = v89;
  v90 = v3 >> 27;
  v91 = v88 + v73;
  HIDWORD(v3) = v82;
  LODWORD(v3) = v82;
  v92 = v3 >> 2;
  v93 = v91 + (v82 & __ROR4__(v76, 2) | v78 & ~v82);
  v94 = v23 ^ v12 ^ v55 ^ v81;
  HIDWORD(v3) = v94;
  LODWORD(v3) = v94;
  v95 = v3 >> 31;
  v96 = v93 + 1518500249 + v90;
  v97 = v89 & __ROR4__(v82, 2) | v85 & ~v89;
  HIDWORD(v3) = v96;
  LODWORD(v3) = v96;
  v98 = v3 >> 27;
  HIDWORD(v3) = v89;
  LODWORD(v3) = v89;
  v99 = v3 >> 2;
  v100 = v95 + v78 + v97;
  v101 = v29 ^ v18 ^ v60 ^ v86;
  HIDWORD(v3) = v101;
  LODWORD(v3) = v101;
  v444 = v3 >> 31;
  v102 = v100 + 1518500249 + v98;
  HIDWORD(v3) = v102;
  LODWORD(v3) = v102;
  v104 = v87;
  v105 = v444 + v85 + (v96 & __ROR4__(v89, 2) | v92 & ~v96) + 1518500249 + (v3 >> 27);
  LODWORD(v3) = v35 ^ v23 ^ v65 ^ __ROR4__(v87, 31);
  v103 = v3;
  HIDWORD(v3) = v3;
  v436 = v3 >> 31;
  v106 = v436 + v92;
  HIDWORD(v3) = v105;
  LODWORD(v3) = v105;
  v107 = v3 >> 27;
  HIDWORD(v3) = v102;
  LODWORD(v3) = v102;
  v108 = v3 >> 2;
  v109 = v106 + (v102 & __ROR4__(v96, 2) | v99 & ~v102) + 1518500249 + v107;
  v110 = v40;
  LODWORD(v3) = v40 ^ v29 ^ v70 ^ __ROR4__(v94, 31);
  v111 = v3;
  HIDWORD(v3) = v3;
  v441 = v3 >> 31;
  HIDWORD(v3) = v109;
  LODWORD(v3) = v109;
  v112 = v441 + v99 + (v108 ^ __ROR4__(v96, 2) ^ v105) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v96;
  LODWORD(v3) = v96;
  v113 = v3 >> 2;
  HIDWORD(v3) = v105;
  LODWORD(v3) = v105;
  v114 = v3 >> 2;
  v115 = v45;
  LODWORD(v3) = v45 ^ v35 ^ v75 ^ __ROR4__(v101, 31);
  v116 = v3;
  HIDWORD(v3) = v3;
  v117 = v3 >> 31;
  HIDWORD(v3) = v112;
  LODWORD(v3) = v112;
  v118 = v117 + v113 + (v114 ^ __ROR4__(v102, 2) ^ v109) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v109;
  LODWORD(v3) = v109;
  v119 = v3 >> 2;
  LODWORD(v3) = v50 ^ v110 ^ v81 ^ __ROR4__(v103, 31);
  v120 = v3;
  HIDWORD(v3) = v3;
  v431 = v3 >> 31;
  HIDWORD(v3) = v118;
  LODWORD(v3) = v118;
  v121 = v431 + v108 + (v119 ^ __ROR4__(v105, 2) ^ v112) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v112;
  LODWORD(v3) = v112;
  v122 = v3 >> 2;
  v123 = v122 ^ __ROR4__(v109, 2);
  LODWORD(v3) = v55 ^ v115 ^ v86 ^ __ROR4__(v111, 31);
  v124 = v3;
  HIDWORD(v3) = v3;
  v434 = v3 >> 31;
  HIDWORD(v3) = v121;
  LODWORD(v3) = v121;
  v125 = v434 + v114 + (v123 ^ v118) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v118;
  LODWORD(v3) = v118;
  v126 = v3 >> 2;
  LODWORD(v3) = v60 ^ v50 ^ __ROR4__(v104, 31) ^ __ROR4__(v116, 31);
  v127 = v3;
  HIDWORD(v3) = v3;
  v448 = v3 >> 31;
  HIDWORD(v3) = v125;
  LODWORD(v3) = v125;
  v128 = v448 + v119 + (v126 ^ __ROR4__(v112, 2) ^ v121) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v121;
  LODWORD(v3) = v121;
  v129 = v3 >> 2;
  LODWORD(v3) = v65 ^ v55 ^ __ROR4__(v94, 31) ^ __ROR4__(v120, 31);
  v130 = v3;
  HIDWORD(v3) = v3;
  v460 = v3 >> 31;
  HIDWORD(v3) = v128;
  LODWORD(v3) = v128;
  v131 = v460 + v122 + (v129 ^ __ROR4__(v118, 2) ^ v125) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v125;
  LODWORD(v3) = v125;
  v132 = v3 >> 2;
  LODWORD(v3) = v70 ^ v60 ^ __ROR4__(v101, 31) ^ __ROR4__(v124, 31);
  HIDWORD(v3) = v3;
  v466 = v3 >> 31;
  v133 = v3;
  HIDWORD(v3) = v131;
  LODWORD(v3) = v131;
  v134 = v466 + v126 + (v132 ^ __ROR4__(v121, 2) ^ v128) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v128;
  LODWORD(v3) = v128;
  v135 = v3 >> 2;
  v136 = v75 ^ v65 ^ __ROR4__(v103, 31) ^ __ROR4__(v127, 31);
  HIDWORD(v3) = v136;
  LODWORD(v3) = v136;
  v451 = v3 >> 31;
  HIDWORD(v3) = v134;
  LODWORD(v3) = v134;
  v137 = v451 + v129 + (v135 ^ __ROR4__(v125, 2) ^ v131) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v131;
  LODWORD(v3) = v131;
  v138 = v3 >> 2;
  v139 = v81 ^ v70 ^ __ROR4__(v111, 31) ^ __ROR4__(v130, 31);
  HIDWORD(v3) = v139;
  LODWORD(v3) = v139;
  v457 = v3 >> 31;
  HIDWORD(v3) = v137;
  LODWORD(v3) = v137;
  v140 = v457 + v132 + (v138 ^ __ROR4__(v128, 2) ^ v134) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v134;
  LODWORD(v3) = v134;
  v141 = v3 >> 2;
  v142 = v141 ^ __ROR4__(v131, 2) ^ v137;
  v143 = v86 ^ v75 ^ __ROR4__(v116, 31) ^ __ROR4__(v133, 31);
  v144 = v133;
  HIDWORD(v3) = v143;
  LODWORD(v3) = v143;
  v454 = v3 >> 31;
  HIDWORD(v3) = v140;
  LODWORD(v3) = v140;
  v145 = v454 + v135 + v142 + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v137;
  LODWORD(v3) = v137;
  v146 = v3 >> 2;
  LODWORD(v3) = v81 ^ __ROR4__(v104, 31) ^ __ROR4__(v120, 31) ^ __ROR4__(v136, 31);
  v147 = v3;
  HIDWORD(v3) = v3;
  v148 = v3 >> 31;
  HIDWORD(v3) = v145;
  LODWORD(v3) = v145;
  v149 = v148 + v138 + (v146 ^ __ROR4__(v134, 2) ^ v140) + 1859775393 + (v3 >> 27);
  HIDWORD(v3) = v140;
  LODWORD(v3) = v140;
  v150 = v3 >> 2;
  v151 = v86 ^ __ROR4__(v94, 31) ^ __ROR4__(v124, 31) ^ __ROR4__(v139, 31);
  HIDWORD(v3) = v151;
  LODWORD(v3) = v151;
  v463 = v3 >> 31;
  HIDWORD(v3) = v149;
  LODWORD(v3) = v149;
  v152 = v463 + v141 + (v150 ^ __ROR4__(v137, 2) ^ v145) + 1859775393 + (v3 >> 27);
  v154 = __PAIR64__(v145, __ROR4__(v104, 31));
  v153 = v444 ^ v154;
  LODWORD(v154) = v145;
  v155 = v154 >> 2;
  v156 = v153 ^ __ROR4__(v127, 31) ^ __ROR4__(v143, 31);
  HIDWORD(v154) = v156;
  LODWORD(v154) = v156;
  v439 = v154 >> 31;
  HIDWORD(v154) = v152;
  LODWORD(v154) = v152;
  v157 = v439 + v146 + (v155 ^ __ROR4__(v140, 2) ^ v149) + 1859775393 + (v154 >> 27);
  v159 = __PAIR64__(v149, __ROR4__(v94, 31));
  v158 = v436 ^ v159;
  LODWORD(v159) = v149;
  v160 = v159 >> 2;
  LODWORD(v159) = v158 ^ __ROR4__(v130, 31) ^ __ROR4__(v147, 31);
  v161 = v159;
  HIDWORD(v159) = v159;
  v445 = v159 >> 31;
  HIDWORD(v159) = v157;
  LODWORD(v159) = v157;
  v162 = v445 + v150 + (v160 ^ __ROR4__(v145, 2) ^ v152) + 1859775393 + (v159 >> 27);
  v164 = __PAIR64__(v152, __ROR4__(v101, 31));
  v163 = v441 ^ v164;
  LODWORD(v164) = v152;
  v165 = v164 >> 2;
  LODWORD(v164) = v163 ^ __ROR4__(v144, 31) ^ __ROR4__(v151, 31);
  v166 = v164;
  HIDWORD(v164) = v164;
  v442 = v164 >> 31;
  HIDWORD(v164) = v162;
  LODWORD(v164) = v162;
  v167 = v442 + v155 + (v165 ^ __ROR4__(v149, 2) ^ v157) + 1859775393 + (v164 >> 27);
  v169 = __PAIR64__(v157, __ROR4__(v103, 31));
  v168 = v117 ^ v169;
  LODWORD(v169) = v157;
  v170 = v169 >> 2;
  LODWORD(v169) = v168 ^ __ROR4__(v136, 31) ^ __ROR4__(v156, 31);
  v171 = v169;
  HIDWORD(v169) = v169;
  v437 = v169 >> 31;
  HIDWORD(v169) = v167;
  LODWORD(v169) = v167;
  v172 = v437 + v160 + (v170 ^ __ROR4__(v152, 2) ^ v162) + 1859775393 + (v169 >> 27);
  v174 = __PAIR64__(v162, __ROR4__(v111, 31));
  v173 = v431 ^ v174;
  LODWORD(v174) = v162;
  v175 = v174 >> 2;
  LODWORD(v174) = v173 ^ __ROR4__(v139, 31) ^ __ROR4__(v161, 31);
  v176 = v174;
  HIDWORD(v174) = v174;
  v177 = v174 >> 31;
  HIDWORD(v174) = v172;
  LODWORD(v174) = v172;
  v178 = v177 + v165 + (v175 ^ __ROR4__(v157, 2) ^ v167) + 1859775393 + (v174 >> 27);
  v180 = __PAIR64__(v167, __ROR4__(v116, 31));
  v179 = v434 ^ v180;
  LODWORD(v180) = v167;
  v181 = v180 >> 2;
  LODWORD(v180) = v179 ^ __ROR4__(v143, 31) ^ __ROR4__(v166, 31);
  v182 = v180;
  HIDWORD(v180) = v180;
  v183 = v180 >> 31;
  HIDWORD(v180) = v178;
  LODWORD(v180) = v178;
  v184 = v183 + v170 + (v181 ^ __ROR4__(v162, 2) ^ v172) + 1859775393 + (v180 >> 27);
  v186 = __PAIR64__(v172, __ROR4__(v120, 31));
  v185 = v448 ^ v186;
  LODWORD(v186) = v172;
  v187 = v186 >> 2;
  LODWORD(v186) = v185 ^ __ROR4__(v147, 31) ^ __ROR4__(v171, 31);
  v188 = v186;
  HIDWORD(v186) = v186;
  v429 = v183;
  v432 = v186 >> 31;
  HIDWORD(v186) = v184;
  LODWORD(v186) = v184;
  v189 = v432 + v175 + (v187 ^ __ROR4__(v167, 2) ^ v178) + 1859775393 + (v186 >> 27);
  v191 = __PAIR64__(v178, __ROR4__(v124, 31));
  v190 = v460 ^ v191;
  LODWORD(v191) = v178;
  v192 = v191 >> 2;
  LODWORD(v191) = v190 ^ __ROR4__(v151, 31) ^ __ROR4__(v176, 31);
  v193 = v191;
  HIDWORD(v191) = v191;
  v461 = v191 >> 31;
  HIDWORD(v191) = v189;
  LODWORD(v191) = v189;
  v194 = v461 + v181 + (v192 ^ __ROR4__(v172, 2) ^ v184) + 1859775393 + (v191 >> 27);
  LODWORD(v191) = v466 ^ __ROR4__(v127, 31) ^ __ROR4__(v156, 31) ^ __ROR4__(v182, 31);
  v195 = v191;
  HIDWORD(v191) = v191;
  v467 = v191 >> 31;
  HIDWORD(v191) = v194;
  LODWORD(v191) = v194;
  v196 = v467 + v187 + ((v189 | __ROR4__(v184, 2)) & __ROR4__(v178, 2) | v189 & __ROR4__(v184, 2)) + (v191 >> 27) - 1894007588;
  v197 = v451 ^ __ROR4__(v130, 31) ^ __ROR4__(v161, 31);
  LODWORD(v191) = __ROR4__(v188, 31);
  v198 = v197 ^ v191;
  v200 = __PAIR64__(v197 ^ v191, __ROR4__(v189, 2));
  v199 = v194 & v200;
  LODWORD(v200) = v198;
  v449 = v200 >> 31;
  HIDWORD(v200) = v196;
  LODWORD(v200) = v196;
  v201 = v449 + v192 + ((v194 | __ROR4__(v189, 2)) & __ROR4__(v184, 2) | v199) + (v200 >> 27);
  v202 = __PAIR64__(v184, __ROR4__(v194, 2));
  v203 = (v196 | __ROR4__(v194, 2)) & __ROR4__(v189, 2) | v196 & v202;
  LODWORD(v202) = v184;
  v204 = v202 >> 2;
  LODWORD(v202) = v457 ^ __ROR4__(v144, 31) ^ __ROR4__(v166, 31) ^ __ROR4__(v193, 31);
  v205 = v202;
  HIDWORD(v202) = v202;
  v458 = v202 >> 31;
  v206 = v201 - 1894007588;
  HIDWORD(v202) = v201 - 1894007588;
  LODWORD(v202) = v201 - 1894007588;
  v207 = v458 + v204 + v203 + (v202 >> 27);
  v209 = __PAIR64__(v189, __ROR4__(v136, 31));
  v208 = v454 ^ v209;
  LODWORD(v209) = v189;
  v210 = v209 >> 2;
  LODWORD(v209) = v208 ^ __ROR4__(v171, 31) ^ __ROR4__(v195, 31);
  HIDWORD(v209) = v209;
  v455 = v209 >> 31;
  v211 = v209;
  v212 = v207 - 1894007588;
  HIDWORD(v209) = v207 - 1894007588;
  LODWORD(v209) = v207 - 1894007588;
  v213 = v455 + v210 + ((v206 | __ROR4__(v196, 2)) & __ROR4__(v194, 2) | v206 & __ROR4__(v196, 2)) + (v209 >> 27);
  v215 = __PAIR64__(v194, __ROR4__(v139, 31));
  v214 = v148 ^ v215;
  LODWORD(v215) = v194;
  v216 = v215 >> 2;
  LODWORD(v215) = v214 ^ __ROR4__(v176, 31) ^ __ROR4__(v198, 31);
  v217 = v215;
  HIDWORD(v215) = v215;
  v452 = v215 >> 31;
  v218 = v213 - 1894007588;
  HIDWORD(v215) = v213 - 1894007588;
  LODWORD(v215) = v213 - 1894007588;
  v219 = v452 + v216 + ((v212 | __ROR4__(v206, 2)) & __ROR4__(v196, 2) | v212 & __ROR4__(v206, 2)) + (v215 >> 27);
  v221 = __PAIR64__(v196, __ROR4__(v143, 31));
  v220 = v463 ^ v221;
  LODWORD(v221) = v196;
  v222 = v221 >> 2;
  v219 -= 1894007588;
  LODWORD(v221) = v220 ^ __ROR4__(v182, 31) ^ __ROR4__(v205, 31);
  v223 = v221;
  HIDWORD(v221) = v221;
  v464 = v221 >> 31;
  HIDWORD(v221) = v219;
  LODWORD(v221) = v219;
  v224 = v464 + v222 + ((v218 | __ROR4__(v212, 2)) & __ROR4__(v206, 2) | v218 & __ROR4__(v212, 2)) + (v221 >> 27);
  v226 = __PAIR64__(v206, __ROR4__(v147, 31));
  v225 = v439 ^ v226;
  LODWORD(v226) = v206;
  v227 = v226 >> 2;
  v228 = v225 ^ __ROR4__(v188, 31);
  LODWORD(v226) = __ROR4__(v211, 31);
  v229 = v228 ^ v226;
  v230 = v211;
  v232 = __PAIR64__(v228 ^ v226, __ROR4__(v218, 2));
  v231 = v219 & v232;
  LODWORD(v232) = v229;
  v440 = v232 >> 31;
  v224 -= 1894007588;
  HIDWORD(v232) = v224;
  LODWORD(v232) = v224;
  v233 = v440 + v227 + ((v219 | __ROR4__(v218, 2)) & __ROR4__(v212, 2) | v231) + (v232 >> 27);
  v235 = __PAIR64__(v212, __ROR4__(v151, 31));
  v234 = v445 ^ v235;
  LODWORD(v235) = v212;
  v236 = v235 >> 2;
  LODWORD(v235) = v234 ^ __ROR4__(v193, 31) ^ __ROR4__(v217, 31);
  v237 = v235;
  HIDWORD(v235) = v235;
  v446 = v235 >> 31;
  v233 -= 1894007588;
  HIDWORD(v235) = v233;
  LODWORD(v235) = v233;
  v238 = v446 + v236 + ((v224 | __ROR4__(v219, 2)) & __ROR4__(v218, 2) | v224 & __ROR4__(v219, 2)) + (v235 >> 27);
  v239 = __PAIR64__(v218, __ROR4__(v224, 2));
  v240 = (v233 | __ROR4__(v224, 2)) & __ROR4__(v219, 2) | v233 & v239;
  LODWORD(v239) = v218;
  v241 = v239 >> 2;
  LODWORD(v239) = v442 ^ __ROR4__(v156, 31) ^ __ROR4__(v195, 31) ^ __ROR4__(v223, 31);
  v242 = v239;
  HIDWORD(v239) = v239;
  v443 = v239 >> 31;
  v243 = v443 + v241 + v240;
  v244 = v238 - 1894007588;
  HIDWORD(v239) = v238 - 1894007588;
  LODWORD(v239) = v238 - 1894007588;
  v245 = v243 + (v239 >> 27);
  v247 = __PAIR64__(v219, __ROR4__(v161, 31));
  v246 = v437 ^ v247;
  LODWORD(v247) = v219;
  v248 = v247 >> 2;
  LODWORD(v247) = v246 ^ __ROR4__(v198, 31) ^ __ROR4__(v229, 31);
  v249 = v247;
  HIDWORD(v247) = v247;
  v438 = v247 >> 31;
  v245 -= 1894007588;
  HIDWORD(v247) = v245;
  LODWORD(v247) = v245;
  v250 = v438 + v248 + ((v244 | __ROR4__(v233, 2)) & __ROR4__(v224, 2) | v244 & __ROR4__(v233, 2)) + (v247 >> 27);
  v252 = __PAIR64__(v224, __ROR4__(v166, 31));
  v251 = v177 ^ v252;
  LODWORD(v252) = v224;
  v253 = v252 >> 2;
  LODWORD(v252) = v251 ^ __ROR4__(v205, 31) ^ __ROR4__(v237, 31);
  v254 = v252;
  HIDWORD(v252) = v252;
  v435 = v252 >> 31;
  v255 = v250 - 1894007588;
  HIDWORD(v252) = v250 - 1894007588;
  LODWORD(v252) = v250 - 1894007588;
  v256 = v435 + v253 + ((v245 | __ROR4__(v244, 2)) & __ROR4__(v233, 2) | v245 & __ROR4__(v244, 2)) + (v252 >> 27);
  v258 = __PAIR64__(v233, __ROR4__(v171, 31));
  v257 = v429 ^ v258;
  LODWORD(v258) = v233;
  v259 = v258 >> 2;
  v256 -= 1894007588;
  LODWORD(v258) = v257 ^ __ROR4__(v230, 31) ^ __ROR4__(v242, 31);
  v260 = v258;
  HIDWORD(v258) = v258;
  v430 = v258 >> 31;
  HIDWORD(v258) = v256;
  LODWORD(v258) = v256;
  v261 = v430 + v259 + ((v255 | __ROR4__(v245, 2)) & __ROR4__(v244, 2) | v255 & __ROR4__(v245, 2)) + (v258 >> 27);
  v263 = __PAIR64__(v244, __ROR4__(v176, 31));
  v262 = v432 ^ v263;
  LODWORD(v263) = v244;
  v264 = v263 >> 2;
  v265 = v262 ^ __ROR4__(v217, 31);
  LODWORD(v263) = __ROR4__(v249, 31);
  v266 = v265 ^ v263;
  v268 = __PAIR64__(v265 ^ v263, __ROR4__(v255, 2));
  v267 = v256 & v268;
  LODWORD(v268) = v266;
  v433 = v268 >> 31;
  v261 -= 1894007588;
  HIDWORD(v268) = v261;
  LODWORD(v268) = v261;
  v269 = v433 + v264 + ((v256 | __ROR4__(v255, 2)) & __ROR4__(v245, 2) | v267) + (v268 >> 27);
  v271 = __PAIR64__(v245, __ROR4__(v182, 31));
  v270 = v461 ^ v271;
  LODWORD(v271) = v245;
  v272 = v271 >> 2;
  LODWORD(v271) = v270 ^ __ROR4__(v223, 31) ^ __ROR4__(v254, 31);
  v273 = v271;
  HIDWORD(v271) = v271;
  v274 = v271 >> 31;
  v269 -= 1894007588;
  HIDWORD(v271) = v269;
  LODWORD(v271) = v269;
  v275 = v274 + v272 + ((v261 | __ROR4__(v256, 2)) & __ROR4__(v255, 2) | v261 & __ROR4__(v256, 2)) + (v271 >> 27);
  v276 = __PAIR64__(v255, __ROR4__(v261, 2));
  v277 = (v269 | __ROR4__(v261, 2)) & __ROR4__(v256, 2) | v269 & v276;
  LODWORD(v276) = v255;
  v278 = v276 >> 2;
  v279 = v467 ^ __ROR4__(v188, 31) ^ __ROR4__(v229, 31) ^ __ROR4__(v260, 31);
  HIDWORD(v276) = v279;
  LODWORD(v276) = v279;
  v468 = v276 >> 31;
  v280 = v275 - 1894007588;
  HIDWORD(v276) = v275 - 1894007588;
  LODWORD(v276) = v275 - 1894007588;
  v281 = v468 + v278 + v277 + (v276 >> 27);
  v283 = __PAIR64__(v256, __ROR4__(v193, 31));
  v282 = v449 ^ v283;
  LODWORD(v283) = v256;
  v284 = v283 >> 2;
  LODWORD(v283) = v282 ^ __ROR4__(v237, 31) ^ __ROR4__(v266, 31);
  v285 = v283;
  HIDWORD(v283) = v283;
  v462 = v283 >> 31;
  v281 -= 1894007588;
  HIDWORD(v283) = v281;
  LODWORD(v283) = v281;
  v286 = v462 + v284 + ((v280 | __ROR4__(v269, 2)) & __ROR4__(v261, 2) | v280 & __ROR4__(v269, 2)) + (v283 >> 27);
  v288 = __PAIR64__(v261, __ROR4__(v195, 31));
  v287 = v458 ^ v288;
  LODWORD(v288) = v261;
  v289 = v288 >> 2;
  LODWORD(v288) = v287 ^ __ROR4__(v242, 31) ^ __ROR4__(v273, 31);
  v290 = v288;
  HIDWORD(v288) = v288;
  v459 = v288 >> 31;
  v291 = v286 - 1894007588;
  HIDWORD(v288) = v286 - 1894007588;
  LODWORD(v288) = v286 - 1894007588;
  v292 = v459 + v289 + ((v281 | __ROR4__(v280, 2)) & __ROR4__(v269, 2) | v281 & __ROR4__(v280, 2)) + (v288 >> 27);
  v294 = __PAIR64__(v269, __ROR4__(v198, 31));
  v293 = v455 ^ v294;
  LODWORD(v294) = v269;
  v295 = v294 >> 2;
  v292 -= 1894007588;
  LODWORD(v294) = v293 ^ __ROR4__(v249, 31) ^ __ROR4__(v279, 31);
  v296 = v294;
  HIDWORD(v294) = v294;
  v456 = v294 >> 31;
  HIDWORD(v294) = v292;
  LODWORD(v294) = v292;
  v297 = v456 + v295 + ((v291 | __ROR4__(v281, 2)) & __ROR4__(v280, 2) | v291 & __ROR4__(v281, 2)) + (v294 >> 27);
  v299 = __PAIR64__(v280, __ROR4__(v205, 31));
  v298 = v452 ^ v299;
  LODWORD(v299) = v280;
  v300 = v299 >> 2;
  v301 = v298 ^ __ROR4__(v254, 31);
  LODWORD(v299) = __ROR4__(v285, 31);
  v302 = v301 ^ v299;
  v304 = __PAIR64__(v301 ^ v299, __ROR4__(v291, 2));
  v303 = v292 & v304;
  LODWORD(v304) = v302;
  v453 = v304 >> 31;
  v297 -= 1894007588;
  HIDWORD(v304) = v297;
  LODWORD(v304) = v297;
  v305 = v453 + v300 + ((v292 | __ROR4__(v291, 2)) & __ROR4__(v281, 2) | v303) + (v304 >> 27);
  v307 = __PAIR64__(v281, __ROR4__(v230, 31));
  v306 = v464 ^ v307;
  LODWORD(v307) = v281;
  v308 = v307 >> 2;
  LODWORD(v307) = v306 ^ __ROR4__(v260, 31) ^ __ROR4__(v290, 31);
  v309 = v307;
  HIDWORD(v307) = v307;
  v465 = v307 >> 31;
  v305 -= 1894007588;
  HIDWORD(v307) = v305;
  LODWORD(v307) = v305;
  v310 = v465 + v308 + ((v297 | __ROR4__(v292, 2)) & __ROR4__(v291, 2) | v297 & __ROR4__(v292, 2)) + (v307 >> 27) - 1894007588;
  v312 = __PAIR64__(v291, __ROR4__(v217, 31));
  v311 = v440 ^ v312;
  LODWORD(v312) = v291;
  v313 = v312 >> 2;
  HIDWORD(v312) = v297;
  LODWORD(v312) = v297;
  v314 = v312 >> 2;
  LODWORD(v312) = v311 ^ __ROR4__(v266, 31) ^ __ROR4__(v296, 31);
  v315 = v312;
  HIDWORD(v312) = v312;
  v450 = v312 >> 31;
  HIDWORD(v312) = v310;
  LODWORD(v312) = v310;
  v316 = v450 + v313 + (v314 ^ __ROR4__(v292, 2) ^ v305) - 899497514 + (v312 >> 27);
  v318 = __PAIR64__(v292, __ROR4__(v223, 31));
  v317 = v446 ^ v318;
  LODWORD(v318) = v292;
  v319 = v318 >> 2;
  HIDWORD(v318) = v305;
  LODWORD(v318) = v305;
  v320 = v318 >> 2;
  v321 = v317 ^ __ROR4__(v273, 31) ^ __ROR4__(v302, 31);
  HIDWORD(v318) = v321;
  LODWORD(v318) = v321;
  v322 = v318 >> 31;
  HIDWORD(v318) = v316;
  LODWORD(v318) = v316;
  v323 = v322 + v319 + (v320 ^ __ROR4__(v297, 2) ^ v310) - 899497514 + (v318 >> 27);
  v325 = __PAIR64__(v310, __ROR4__(v229, 31));
  v324 = v443 ^ v325;
  LODWORD(v325) = v310;
  v326 = v325 >> 2;
  LODWORD(v325) = v324 ^ __ROR4__(v279, 31) ^ __ROR4__(v309, 31);
  v327 = v325;
  HIDWORD(v325) = v325;
  v447 = v325 >> 31;
  HIDWORD(v325) = v323;
  LODWORD(v325) = v323;
  v328 = v447 + v314 + (v326 ^ __ROR4__(v305, 2) ^ v316) - 899497514 + (v325 >> 27);
  v330 = __PAIR64__(v316, __ROR4__(v237, 31));
  v329 = v438 ^ v330;
  LODWORD(v330) = v316;
  v331 = v330 >> 2;
  LODWORD(v330) = v329 ^ __ROR4__(v285, 31) ^ __ROR4__(v315, 31);
  v332 = v330;
  HIDWORD(v330) = v330;
  v333 = v330 >> 31;
  HIDWORD(v330) = v328;
  LODWORD(v330) = v328;
  v334 = v333 + v320 + (v331 ^ __ROR4__(v310, 2) ^ v323) - 899497514 + (v330 >> 27);
  v336 = __PAIR64__(v323, __ROR4__(v242, 31));
  v335 = v435 ^ v336;
  LODWORD(v336) = v323;
  v337 = v336 >> 2;
  LODWORD(v336) = v335 ^ __ROR4__(v290, 31) ^ __ROR4__(v321, 31);
  v338 = v336;
  HIDWORD(v336) = v336;
  v339 = v336 >> 31;
  HIDWORD(v336) = v334;
  LODWORD(v336) = v334;
  v340 = v339 + v326 + (v337 ^ __ROR4__(v316, 2) ^ v328) - 899497514 + (v336 >> 27);
  v342 = __PAIR64__(v328, __ROR4__(v249, 31));
  v341 = v430 ^ v342;
  LODWORD(v342) = v328;
  v343 = v342 >> 2;
  v344 = v341 ^ __ROR4__(v296, 31) ^ __ROR4__(v327, 31);
  HIDWORD(v342) = v344;
  LODWORD(v342) = v344;
  v345 = v342 >> 31;
  HIDWORD(v342) = v340;
  LODWORD(v342) = v340;
  v346 = v345 + v331 + (v343 ^ __ROR4__(v323, 2) ^ v334) - 899497514 + (v342 >> 27);
  LODWORD(v342) = v433 ^ __ROR4__(v254, 31) ^ __ROR4__(v302, 31) ^ __ROR4__(v332, 31);
  v347 = v342;
  HIDWORD(v342) = v342;
  v348 = (v342 >> 31) + v337;
  HIDWORD(v342) = v334;
  LODWORD(v342) = v334;
  v349 = v342 >> 2;
  v350 = __PAIR64__(v346, __ROR4__(v328, 2));
  v351 = v348 + (v349 ^ v350 ^ v340) - 899497514;
  LODWORD(v350) = v346;
  v352 = v351 + (v350 >> 27);
  LODWORD(v350) = v274 ^ __ROR4__(v260, 31) ^ __ROR4__(v309, 31) ^ __ROR4__(v338, 31);
  v353 = v350;
  HIDWORD(v350) = v350;
  v354 = (v350 >> 31) + v343;
  HIDWORD(v350) = v340;
  LODWORD(v350) = v340;
  v355 = v350 >> 2;
  v356 = __PAIR64__(v352, __ROR4__(v334, 2));
  v357 = v354 + (v355 ^ v356 ^ v346) - 899497514;
  LODWORD(v356) = v352;
  v358 = v357 + (v356 >> 27);
  LODWORD(v356) = v468 ^ __ROR4__(v266, 31) ^ __ROR4__(v315, 31) ^ __ROR4__(v344, 31);
  v359 = v356;
  HIDWORD(v356) = v356;
  v360 = (v356 >> 31) + v349;
  HIDWORD(v356) = v346;
  LODWORD(v356) = v346;
  v361 = v356 >> 2;
  v362 = __PAIR64__(v358, __ROR4__(v340, 2));
  v363 = v360 + (v361 ^ v362 ^ v352) - 899497514;
  LODWORD(v362) = v358;
  v364 = v363 + (v362 >> 27);
  LODWORD(v362) = v462 ^ __ROR4__(v273, 31) ^ __ROR4__(v321, 31) ^ __ROR4__(v347, 31);
  v365 = v362;
  HIDWORD(v362) = v362;
  v366 = (v362 >> 31) + v355;
  HIDWORD(v362) = v352;
  LODWORD(v362) = v352;
  v367 = v362 >> 2;
  v368 = __PAIR64__(v364, __ROR4__(v346, 2));
  v369 = v366 + (v367 ^ v368 ^ v358) - 899497514;
  LODWORD(v368) = v364;
  v370 = v369 + (v368 >> 27);
  LODWORD(v368) = v459 ^ __ROR4__(v279, 31) ^ __ROR4__(v327, 31) ^ __ROR4__(v353, 31);
  v371 = v368;
  HIDWORD(v368) = v368;
  v372 = (v368 >> 31) + v361;
  HIDWORD(v368) = v358;
  LODWORD(v368) = v358;
  v373 = v368 >> 2;
  v374 = __PAIR64__(v370, __ROR4__(v352, 2));
  v375 = v372 + (v373 ^ v374 ^ v364) - 899497514;
  LODWORD(v374) = v370;
  v376 = v375 + (v374 >> 27);
  LODWORD(v374) = v456 ^ __ROR4__(v285, 31) ^ __ROR4__(v332, 31) ^ __ROR4__(v359, 31);
  v377 = v374;
  HIDWORD(v374) = v374;
  v378 = (v374 >> 31) + v367;
  HIDWORD(v374) = v364;
  LODWORD(v374) = v364;
  v379 = v374 >> 2;
  v380 = __PAIR64__(v376, __ROR4__(v358, 2));
  v381 = v378 + (v379 ^ v380 ^ v370) - 899497514;
  LODWORD(v380) = v376;
  v382 = v381 + (v380 >> 27);
  v383 = v453 ^ __ROR4__(v290, 31) ^ __ROR4__(v338, 31) ^ __ROR4__(v365, 31);
  HIDWORD(v380) = v383;
  LODWORD(v380) = v383;
  v384 = (v380 >> 31) + v373;
  HIDWORD(v380) = v370;
  LODWORD(v380) = v370;
  v385 = v380 >> 2;
  v386 = __PAIR64__(v382, __ROR4__(v364, 2));
  v387 = v384 + (v385 ^ v386 ^ v376) - 899497514;
  LODWORD(v386) = v382;
  v388 = v387 + (v386 >> 27);
  LODWORD(v386) = v465 ^ __ROR4__(v296, 31) ^ __ROR4__(v344, 31) ^ __ROR4__(v371, 31);
  v389 = v386;
  HIDWORD(v386) = v386;
  v390 = (v386 >> 31) + v379;
  HIDWORD(v386) = v376;
  LODWORD(v386) = v376;
  v391 = v386 >> 2;
  v392 = __PAIR64__(v388, __ROR4__(v370, 2));
  v393 = v390 + (v391 ^ v392 ^ v382) - 899497514;
  LODWORD(v392) = v388;
  v394 = v393 + (v392 >> 27);
  v395 = v450 ^ __ROR4__(v302, 31) ^ __ROR4__(v347, 31) ^ __ROR4__(v377, 31);
  HIDWORD(v392) = v395;
  LODWORD(v392) = v395;
  v396 = (v392 >> 31) + v385;
  HIDWORD(v392) = v382;
  LODWORD(v392) = v382;
  v397 = v392 >> 2;
  v398 = __PAIR64__(v394, __ROR4__(v376, 2));
  v399 = v396 + (v397 ^ v398 ^ v388) - 899497514;
  LODWORD(v398) = v394;
  v400 = v399 + (v398 >> 27);
  LODWORD(v398) = v322 ^ __ROR4__(v309, 31) ^ __ROR4__(v353, 31) ^ __ROR4__(v383, 31);
  v401 = v398;
  HIDWORD(v398) = v398;
  v402 = (v398 >> 31) + v391;
  HIDWORD(v398) = v388;
  LODWORD(v398) = v388;
  v403 = v398 >> 2;
  v404 = __PAIR64__(v400, __ROR4__(v382, 2));
  v405 = v402 + (v403 ^ v404 ^ v394);
  LODWORD(v404) = v400;
  v406 = v405 - 899497514 + (v404 >> 27);
  v408 = __PAIR64__(v394, __ROR4__(v359, 31));
  v407 = v447 ^ __ROR4__(v315, 31) ^ v408;
  LODWORD(v408) = v394;
  result = (v408 >> 2);
  v410 = v407 ^ __ROR4__(v389, 31);
  HIDWORD(v408) = v410;
  LODWORD(v408) = v410;
  v411 = (v408 >> 31) + v397;
  HIDWORD(v408) = v406;
  LODWORD(v408) = v406;
  v412 = v411 + (result ^ __ROR4__(v388, 2) ^ v400) - 899497514 + (v408 >> 27);
  LODWORD(v408) = v333 ^ __ROR4__(v321, 31) ^ __ROR4__(v365, 31) ^ __ROR4__(v395, 31);
  HIDWORD(v408) = v408;
  v413 = (v408 >> 31) + v403;
  HIDWORD(v408) = v400;
  LODWORD(v408) = v400;
  v414 = v408 >> 2;
  v415 = __PAIR64__(v412, __ROR4__(v394, 2));
  v416 = v413 + (v414 ^ v415 ^ v406);
  LODWORD(v415) = v412;
  v417 = v416 - 899497514 + (v415 >> 27);
  v419 = __PAIR64__(v406, __ROR4__(v401, 31));
  v418 = v339 ^ __ROR4__(v327, 31) ^ __ROR4__(v371, 31) ^ v419;
  LODWORD(v419) = v406;
  v420 = v419 >> 2;
  v421 = __PAIR64__(v418, __ROR4__(v400, 2));
  v422 = v420 ^ v421 ^ v412;
  LODWORD(v421) = v418;
  v423 = (v421 >> 31) + result;
  HIDWORD(v421) = v417;
  LODWORD(v421) = v417;
  v424 = v423 + v422 - 899497514 + (v421 >> 27);
  LODWORD(v421) = v345 ^ __ROR4__(v332, 31) ^ __ROR4__(v377, 31) ^ __ROR4__(v410, 31);
  HIDWORD(v421) = v421;
  v425 = v470 + (v421 >> 31) + v414;
  HIDWORD(v421) = v412;
  LODWORD(v421) = v412;
  v426 = v421 >> 2;
  v427 = __PAIR64__(v424, __ROR4__(v406, 2));
  v428 = v425 + (v426 ^ v427 ^ v417) - 899497514;
  LODWORD(v427) = v424;
  *a1 = v428 + (v427 >> 27);
  a1[1] = v424 + v472;
  HIDWORD(v427) = v417;
  LODWORD(v427) = v417;
  a1[2] = (v427 >> 2) + v469;
  a1[3] = v426 + v471;
  a1[4] = v420 + v474;
  return result;
}

void sub_100029778(char **a1, const char *a2, const char *a3)
{
  bzero(a1 + 1, 0xF0uLL);
  v6 = strdup(a2);
  v7 = strdup(a3);
  v8 = v7;
  *a1 = v6;
  if (v7)
  {
    v9 = 1;
    while (1)
    {
      v10 = *v7;
      if (!*v7)
      {
        break;
      }

      while (v10 == 32)
      {
        v11 = *++v7;
        v10 = v11;
      }

      if (!v10)
      {
        break;
      }

      v12 = v9 + 1;
      a1[v9] = v7;
      v13 = strchr(v7, 32);
      if (v13)
      {
        *v13 = 0;
        v7 = v13 + 1;
        if (v9++ < 0x1D)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

LABEL_13:
  a1[v12] = 0;
  execv(a2, a1);
  perror("execv");
  free(v6);
  free(v8);
  exit(0);
}

void sub_10002989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = *(a5 + 832);
    if (v6)
    {
      v7 = *(a5 + 824);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "darwin_wireless_event_service_notification_callback";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: enter", buf, 0xCu);
        v6 = *(a5 + 832);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_10002477C;
      block[3] = &unk_10003CC10;
      block[4] = a5;
      CFRunLoopPerformBlock(v6, kCFRunLoopDefaultMode, block);
      CFRunLoopWakeUp(*(a5 + 832));
      v8 = *(a5 + 824);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "darwin_wireless_event_service_notification_callback";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: exit", buf, 0xCu);
      }
    }
  }
}

void sub_100029A0C()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029A48()
{
  v0 = *__error();
  sub_100025634();
  sub_100025618();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100029ACC()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029B70()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029BAC()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029BE8()
{
  v0 = *__error();
  sub_100025634();
  sub_100025618();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100029D88()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029EE0(unsigned int *a1)
{
  v1 = *a1;
  sub_100025634();
  sub_1000255E4(&_mh_execute_header, v2, v3, "Invalid wpa_key_mgmt cipher 0x%x.", v4, v5, v6, v7, v8);
}

void sub_100029F4C(unsigned int *a1)
{
  v1 = *a1;
  sub_100025634();
  sub_1000255E4(&_mh_execute_header, v2, v3, "Invalid wpa_pairwise cipher 0x%x", v4, v5, v6, v7, v8);
}

void sub_10002A020()
{
  v5 = *__error();
  sub_100025618();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10002A0B8()
{
  v0 = *__error();
  sub_100025634();
  sub_100025618();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10002A1A4(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136446466;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Apple80211BindToInterface() failed (%{public}s, %d)", &v3, 0x12u);
}

void sub_10002A5AC(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 824);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Apple80211EventMonitoringInit() failed (%d)", v4, 8u);
  }

  *a2 = 0;
}

void sub_10002A6B8()
{
  v0 = *__error();
  sub_100025634();
  sub_100025618();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10002A7A4()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002A918()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002A954()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002A990()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002A9CC()
{
  sub_100025628();
  sub_100025600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_10002AA08(const char *a1, const char *a2)
{
  dword_1000404D0 = 0;
  dword_100040300 = getpid();
  qword_1000404B0 = asl_open(a1, a2, 0);
  if (!qword_1000404B0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = asl_open(a1, a2, 0);
  qword_1000404B8 = v4;
  if (!qword_1000404B0)
  {
    return 0xFFFFFFFFLL;
  }

  asl_set_filter(v4, 255);
  v5 = asl_new(0);
  qword_1000404C0 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  asl_set(v5, "Sender", a1);
  v6 = asl_new(0);
  qword_1000404C8 = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  asl_set(v6, "Sender", a1);
  if (dword_100040304 < 0)
  {
    dword_100040304 = open("/dev/io8log", 1);
  }

  strlen(a1);
  sub_100025D90();
  qword_1000404D8 = malloc_type_malloc(v7 + 1, v8);
  strcpy(qword_1000404D8, a1);
  return 0;
}

void sub_10002AB24(uint64_t a1, char *cStr, ...)
{
  va_start(va, cStr);
  if (!qword_1000404C0)
  {
    sub_10002AA08("Apple80211 framework", "Daemon");
  }

  v18 = 0;
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (v3)
  {
    v4 = v3;
    va_copy(v18, va);
    v5 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v3, va);
    if (!v5)
    {
LABEL_16:
      CFRelease(v4);
      return;
    }

    v6 = v5;
    v17 = time(0);
    v7 = localtime(&v17);
    v8 = asctime(v7);
    v8[strlen(v8) - 6] = 0;
    v9 = getpid();
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: (%d) %@\n", v8, v9, v6);
    if (!v10)
    {
      close(1);
      v11 = v6;
      goto LABEL_15;
    }

    v11 = v10;
    Length = CFStringGetLength(v10);
    v13 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
    if (v13 < 0x101)
    {
      v15 = v19;
    }

    else
    {
      sub_100025D90();
      v15 = malloc_type_malloc(v13, v14);
      if (!v15)
      {
LABEL_14:
        close(1);
        CFRelease(v6);
LABEL_15:
        CFRelease(v11);
        goto LABEL_16;
      }
    }

    if (sub_100025DA4(v11))
    {
      v16 = strlen(v15);
      write(1, v15, v16);
    }

    if (v15 != v19)
    {
      free(v15);
    }

    goto LABEL_14;
  }
}

void sub_10002ACF0(const __CFString *a1, char *a2, const void *a3)
{
  Length = CFStringGetLength(a1);
  v7 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
  if (v7 <= 0x100)
  {
    v9 = a2;
  }

  else
  {
    sub_100025D90();
    v9 = malloc_type_malloc(v7, v8);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if (sub_100025DA4(a1))
  {
    v10 = strlen(v9);
    write(dword_100040304, v9, v10);
  }

LABEL_7:
  CFRelease(a3);
  CFRelease(a1);
  if (v9)
  {
    if (v9 != a2)
    {
      free(v9);
    }
  }
}