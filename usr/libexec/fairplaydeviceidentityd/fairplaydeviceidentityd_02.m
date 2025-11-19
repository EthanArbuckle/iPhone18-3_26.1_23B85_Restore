uint64_t sub_1000919DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + 153697588) | 0x440;
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v6 = v3 ^ 0xB61518C1 ^ (((v5 + 2021085581) & 0x8788A99D) - 9106);
  STACK[0x7C0] = v6;
  LODWORD(v6) = ((v6 + 10) ^ 0x7AFF6DDE) - 1644299392 + ((2 * (v6 + 10)) & 0xF5FEDBBC);
  *(a1 + 16) = v6;
  v7 = (*(a2 + 8 * (v5 ^ 0x6727)))((v6 - 419260766));
  v8 = STACK[0x2B8];
  *(a1 + 24) = v7;
  return (*(v8 + 8 * (v5 | (8 * (v7 != 0)))))();
}

uint64_t sub_100091AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  LODWORD(STACK[0x270]) = v54;
  LODWORD(STACK[0x280]) = STACK[0x820];
  LODWORD(STACK[0x200]) = STACK[0x824];
  return (*(a2 + 8 * (v55 ^ 0x3E8 ^ (((v55 ^ 0x14FAF4FAu) < 0xE7083D07) * ((v55 + 12609) ^ 0x2F44)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_100091D20@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v18 = *v10 + v12 - 0x2FC92220EDE8F7EBLL;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((v19 + 0x72B0B1A0EB3E1587) | 0x4473AF4093FD868BLL) - ((v19 + 0x72B0B1A0EB3E1587) | 0xBB8C50BF6C027974) - 0x4473AF4093FD868CLL;
  v21 = __ROR8__(v20 ^ 0x103499350F83EBA0, 8);
  v20 ^= 0x85B114325673479BLL;
  v22 = (v21 + v20) ^ 0x71739F379BF98FD9;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0xF8065C5468770AD6 - ((v24 + v23) | 0xF8065C5468770AD6) + ((v24 + v23) | 0x7F9A3AB9788F529)) ^ 0x7923B3737F35115CLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xCB1FD105091A75A6;
  v28 = __ROR8__(v27, 8);
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (v28 + v29 - ((2 * (v28 + v29)) & 0x60317E7E2F95E7CELL) - 0x4FE740C0E8350C19) ^ 0x30BB974B947E342ELL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = *(a3 + 8 * v14);
  v34 = (v32 + v31) ^ 0x8562C5B0FD26117BLL;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x97F56CB0FB361A73;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  *v18 = (((((2 * ((v38 + v37) ^ 0x43F178B4D98B7452)) | 0x4770352C8FBEC122) - ((v38 + v37) ^ 0x43F178B4D98B7452) + 0x5C47E569B8209F6FLL) ^ 0x1850485775ACE65DLL) >> (8 * (v18 & 7u))) ^ HIBYTE(v13) ^ 0xB6;
  v39 = __ROR8__((v18 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = ((2 * ((v39 + 0x72B0B1A0EB3E1587) ^ 0x66E9636B7B522E08)) | 0x9198600C55AE5EBCLL) - ((v39 + 0x72B0B1A0EB3E1587) ^ 0x66E9636B7B522E08) + 0x3733CFF9D528D0A2;
  v41 = v40 ^ 0xFA626518CDFB6C7DLL;
  v40 ^= 0x6FE7E81F940BC046uLL;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0x71739F379BF98FD9;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x7EDA10D8E8BDE475;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xCB1FD105091A75A6;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x80A3287483B4C7C9;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = __ROR8__((((2 * (v50 + v49)) & 0x5B7AB7335E1C4A0ELL) - (v50 + v49) - 0x2DBD5B99AF0E2508) ^ 0x572061D6ADD7CB83, 8);
  v52 = (((2 * (v50 + v49)) & 0x5B7AB7335E1C4A0ELL) - (v50 + v49) - 0x2DBD5B99AF0E2508) ^ 0x572061D6ADD7CB83 ^ __ROR8__(v49, 61);
  *(v18 + 1) = (((__ROR8__((v51 + v52) ^ 0x97F56CB0FB361A73, 8) + ((v51 + v52) ^ 0x97F56CB0FB361A73 ^ __ROR8__(v52, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v18 + 1) & 7))) ^ BYTE2(v13) ^ 0x15;
  v53 = __ROR8__((v18 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v54 = ((2 * (v53 + 0x72B0B1A0EB3E1587)) | 0xD26D64F9B5F9A13CLL) - (v53 + 0x72B0B1A0EB3E1587) - 0x6936B27CDAFCD09ELL;
  v55 = __ROR8__(v54 ^ 0x3D7184094682BDB5, 8);
  v54 ^= 0xA8F4090E1F72118ELL;
  v56 = (0x106BA8B4217F8315 - ((v55 + v54) | 0x106BA8B4217F8315) + ((v55 + v54) | 0xEF94574BDE807CEALL)) ^ 0x9EE7C87C4579F333;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x7EDA10D8E8BDE475;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xCB1FD105091A75A6;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (v62 + v61 - ((2 * (v62 + v61)) & 0xF13B5A97EEF23B9ALL) - 0x76252B40886E233) ^ 0x783E853F74CDDA04;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (v65 + v64 - ((2 * (v65 + v64)) & 0xD28C89D33650FA36) + 0x694644E99B287D1BLL) ^ 0xEC248159660E6C60;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x97F56CB0FB361A73;
  *(v18 + 2) = (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v67, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v18 + 2) & 7))) ^ BYTE1(v13) ^ 0x1D;
  v69 = __ROR8__((v18 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v70 = v69 - ((2 * v69 - 0x1A9E9CBE2983D4F2) & 0xD5FA7621D5890D1ELL) - 0x2252134E29FD63EALL;
  v71 = v70 ^ 0x3EBA0D6576BAEBA4;
  v70 ^= 0xAB3F80622F4A479FLL;
  v72 = (__ROR8__(v71, 8) + v70) ^ 0x71739F379BF98FD9;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (((v74 + v73) & 0xF13D7081F999AACFLL ^ 0xD1247000C089A841) + ((v74 + v73) & 0xEC28F7E06665530 ^ 0xC028C4806265401) - 1) ^ 0xA3FCEC902E121834;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v77 + v76 - ((2 * (v77 + v76)) & 0x72FEE9966B00DB32) - 0x46808B34CA7F9267) ^ 0x7260A5CE3C9A183FLL;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = __ROR8__(v78, 8);
  v81 = ((a4 | (2 * (v80 + v79))) - (v80 + v79) + v11) ^ a2;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v84 = ((v15 | (2 * (v83 + v82))) - (v83 + v82) + v16) ^ v17;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = ((a5 | (2 * (v86 + v85))) - (v86 + v85) + v6) ^ v5;
  v88 = __ROR8__(v87, 8) + (v87 ^ __ROR8__(v85, 61));
  *(v18 + 3) = v13 ^ a1 ^ ((((v7 | (2 * v88)) - v88 + v8) ^ v9) >> (8 * ((v18 + 3) & 7)));
  return v33();
}

uint64_t sub_10009271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(v10 - 0x4761F68478C333DDLL);
  v12 = __ROR8__((v11 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = (0xD4F4E5F14C1EA78 - v12) & 0x4CD81EFE8FE3B1B9 | (v12 + 0x72B0B1A0EB3E1587) & 0xB327E101701C4E46;
  v14 = v13 ^ 0x189F288B139DDC92;
  v13 ^= 0x8D1AA58C4A6D70A9;
  v15 = (__ROR8__(v14, 8) + v13) ^ 0x71739F379BF98FD9;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x7EDA10D8E8BDE475;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xCB1FD105091A75A6;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = *(a7 + 8 * v8);
  v23 = (((2 * (v21 + v20)) & 0xDA36B97DC122FFD4) - (v21 + v20) - 0x6D1B5CBEE0917FEBLL) ^ 0x12478B359CDA47DCLL;
  v24 = v23 ^ __ROR8__(v20, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x8562C5B0FD26117BLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x97F56CB0FB361A73;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  *(v11 + 4) = v9 ^ 0x8E ^ (((((2 * (v29 + v28)) & 0x690FF71E81D3EE3ELL) - (v29 + v28) - 0x3487FB8F40E9F720) ^ 0x33612E0554EEFA7ELL) >> (8 * ((v11 + 4) & 7)));
  v30 = __ROR8__((v11 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = ((2 * (v30 + 0x72B0B1A0EB3E1587)) | 0x587B403F710B33CALL) - (v30 + 0x72B0B1A0EB3E1587) - 0x2C3DA01FB88599E5;
  v32 = v31 ^ 0x787A966A24FBF4CELL;
  v31 ^= 0xEDFF1B6D7D0B58F5;
  v33 = __ROR8__(v32, 8);
  v34 = (v33 + v31 - ((2 * (v33 + v31)) & 0xB52AF481DEBED47ALL) - 0x256A85BF10A095C3) ^ 0xABE6E57774A6E5E4;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) & 0x903F4534BF6955C0) - (v36 + v35) - 0x481FA29A5FB4AAE1) ^ 0xC93A4DBD48F6B16ALL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) & 0x5C307F409900B7F2) - (v39 + v38) + 0x51E7C05FB37FA406) ^ 0x9AF8115ABA65D1A0;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x80A3287483B4C7C9;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xEF0BBF44D834E002;
  v45 = (0x5E4EF690E20CD2B0 - (v44 | 0x5E4EF690E20CD2B0) + (v44 | 0xA1B1096F1DF32D4FLL)) ^ 0xCBD8739B38E1DC36;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x97F56CB0FB361A73;
  v48 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  *(v11 + 5) = v7 ^ 0x97 ^ (((((2 * v48) | 0x39371380251567D4) - v48 + 0x6364763FED754C16) ^ 0x6482A3B5F9724174) >> (8 * ((v11 + 5) & 7)));
  return v22();
}

uint64_t sub_100092DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = (v8 - 1);
  v23 = v22 == v21;
  v24 = (v22 | ((v22 < v21) << 32)) + v12;
  v25 = v24 + v9 + 10;
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = v26 - ((2 * v26 - 0x1A9E9CBE2983D4F2) & 0xA682CC081D3CC4C6) + 0x49F217A4F9DC77EALL;
  v28 = v27 ^ a1;
  v29 = v27 ^ a2;
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x71739F379BF98FD9;
  v31 = __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + (v30 ^ v31)) ^ 0x7EDA10D8E8BDE475;
  v33 = v32 ^ __ROR8__(v30 ^ v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xCB1FD105091A75A6;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((v36 + v35 - (a3 & (2 * (v36 + v35))) + a4) ^ a5, 8);
  v38 = (v36 + v35 - (a3 & (2 * (v36 + v35))) + a4) ^ a5 ^ __ROR8__(v35, 61);
  v39 = (v37 + v38 - (a6 & (2 * (v37 + v38))) + v14) ^ a8;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = ((v17 | (2 * ((v41 + v40) ^ v16))) - ((v41 + v40) ^ v16) + v18) ^ v19;
  v43 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v40, 61));
  *v25 = (((v10 - (v43 | v10) + (v43 | v20)) ^ v15) >> (8 * (v25 & 7u))) ^ *(v13 + v24);
  v44 = v23;
  return (*(a7 + 8 * (((16 * v44) | (v44 << 6)) ^ v11)))();
}

uint64_t sub_1000931C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v9 = *(v7 - 0x4761F68478C333DDLL);
  v10 = __ROR8__((v9 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = *(a2 + 8 * v8);
  v12 = (0x8D4F4E5F14C1EA78 - v10) & 0xB123D19BF46E51D1 | (v10 + 0x72B0B1A0EB3E1587) & 0x4ADC2E640B91AE2ELL;
  v13 = v12 ^ 0xE564E7EE68103CFALL;
  v12 ^= 0x70E16AE931E090C1uLL;
  v14 = __ROR8__(v13, 8);
  v15 = (v14 + v12 - ((2 * (v14 + v12)) & 0xB542D5AA10E925ELL) + 0x5AA16AD5087492FLL) ^ 0x74D9899ACB7EC6F6;
  v16 = v15 ^ __ROR8__(v12, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((v17 + v16) ^ 0xB15146501DE8B6F8) - ((2 * ((v17 + v16) ^ 0xB15146501DE8B6F8)) & 0x2FBBA3BDFDFC908ALL) + 0x17DDD1DEFEFE4845) ^ 0xD85687560BAB1AC8;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0xDBBCA2A7F6876CE0) - (v20 + v19) + 0x1221AEAC04BC498FLL) ^ 0xD93E7FA90DA63C29;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a4;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v25 + v24 - ((2 * (v25 + v24)) & 0xC1F3C952FDBD84A4) - 0x1F061B5681213DAELL) ^ 0x659B211983F8D329;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x97F56CB0FB361A73;
  v9[10] = (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v27, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v9 + 10) & 7u))) ^ HIBYTE(a7) ^ 0x3C;
  v29 = __ROR8__((v9 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = v29 - ((2 * v29 + 0x5616341D67C2B0ELL) & 0x10309689D7FEB624) - 0x137031A28C28F67;
  v31 = v30 ^ 0xD85F7D3177813639;
  v30 ^= 0x4DDAF0362E719A02uLL;
  v32 = __ROR8__(v31, 8);
  v33 = (((v32 + v30) | 0x337A902E34222EAELL) - ((v32 + v30) | 0xCC856FD1CBDDD151) - 0x337A902E34222EAFLL) ^ 0x42090F19AFDBA177;
  v34 = v33 ^ __ROR8__(v30, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | 0x7B372A0BF60D2AC5) - ((v35 + v34) | 0x84C8D5F409F2D53ALL) - 0x7B372A0BF60D2AC6) ^ 0x5ED3AD31EB0CEB0;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a1;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a4;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ a3;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x97F56CB0FB361A73;
  v9[11] = (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v9 + 11) & 7u))) ^ BYTE6(a7) ^ 0x37;
  v45 = __ROR8__((v9 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = ((2 * v45 - 0x1A9E9CBE2983D4F2) & 0xB50EA0BD07EE0F74) - v45 + 0x32C7FE0090CAE2BELL;
  v47 = v46 ^ 0xF13F99D4E076956ELL;
  v46 ^= 0x64BA14D3B9863955uLL;
  v48 = (__ROR8__(v47, 8) + v46) ^ a6;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ a5;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ a1;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ a4;
  v55 = __ROR8__(v54, 8);
  v56 = v54 ^ __ROR8__(v53, 61);
  v57 = (((v55 + v56) | 0xAE83C850330BCB1ELL) - ((v55 + v56) | 0x517C37AFCCF434E1) + 0x517C37AFCCF434E1) ^ 0x2BE10DE0CE2DDA65;
  v58 = __ROR8__(v57, 8);
  v59 = v57 ^ __ROR8__(v56, 61);
  v60 = (((2 * (v58 + v59)) & 0x8B666A266E091910) - (v58 + v59) - 0x45B3351337048C89) ^ 0x2DB9A65C33CD6904;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v9[12] = (((((2 * (v62 + v61)) | 0x21458F0F9B85813CLL) - (v62 + v61) - 0x10A2C787CDC2C09ELL) ^ 0xE8BBEDF2263A3200) >> (8 * ((v9 + 12) & 7u))) ^ BYTE5(a7) ^ 0x27;
  v63 = __ROR8__((v9 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (0xD4F4E5F14C1EA78 - v63) & 0x745A46F181E71788 | (v63 + 0x72B0B1A0EB3E1587) & 0x8BA5B90E7E18E877;
  v65 = v64 ^ 0x201D70841D997AA3;
  v64 ^= 0xB598FD834469D698;
  v66 = __ROR8__(v65, 8);
  v67 = __ROR8__((((2 * (v66 + v64)) | 0x26843C234468C454) - (v66 + v64) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3, 8);
  v68 = (((2 * (v66 + v64)) | 0x26843C234468C454) - (v66 + v64) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3 ^ __ROR8__(v64, 61);
  v69 = (((v67 + v68) | 0x61D635255ACF2C94) - ((v67 + v68) | 0x9E29CADAA530D36BLL) - 0x61D635255ACF2C95) ^ 0x1F0C25FDB272C8E1;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ a1;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ a4;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((v75 + v74) | 0xBAAB3E68C36E4B71) - ((v75 + v74) | 0x4554C1973C91B48ELL) + 0x4554C1973C91B48ELL) ^ 0x3FC9FBD83E485A0ALL;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x97F56CB0FB361A73;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((((v80 + v79) ^ 0x4325F627768ABA89 | 0x899A10D664E772BCLL) - ((v80 + v79) ^ 0x4325F627768ABA89 | 0x7665EF299B188D43) + 0x7665EF299B188D43) ^ 0x32A6CC84F9953AABLL) >> (8 * ((v9 + 13) & 7u))) ^ BYTE4(a7) ^ 0x12;
  v82 = __ROR8__((v9 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v9[13] = v81;
  v83 = ((v82 + 0x72B0B1A0EB3E1587) | 0x393C5199A3ABE61FLL) - ((v82 + 0x72B0B1A0EB3E1587) | 0xC6C3AE665C5419E0) - 0x393C5199A3ABE620;
  v84 = v83 ^ 0x6D7B67EC3FD58B34;
  v83 ^= 0xF8FEEAEB6625270FLL;
  v85 = __ROR8__(v84, 8);
  v86 = __ROR8__((((2 * (v85 + v83)) & 0xA01676447DFA0AA6) - (v85 + v83) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575, 8);
  v87 = (((2 * (v85 + v83)) & 0xA01676447DFA0AA6) - (v85 + v83) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575 ^ __ROR8__(v83, 61);
  v88 = (v86 + v87) ^ a5;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ a1;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (v92 + v91 - ((2 * (v92 + v91)) & 0x281B8329B2C6E956) + 0x140DC194D96374ABLL) ^ 0x94AEE9E05AD7B362;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (((v95 + v94) | 0x73019C173CCE7FA9) - ((v95 + v94) | 0x8CFE63E8C3318056) - 0x73019C173CCE7FAALL) ^ 0xF66359A7C1E86ED2;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (((v98 + v97) | 0x5071512C1C535486) - ((v98 + v97) | 0xAF8EAED3E3ACAB79) - 0x5071512C1C535487) ^ 0xC7843D9CE7654EF5;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  v9[14] = (((v101 + v100 - ((2 * (v101 + v100)) & 0x52FFCC8FA67424BALL) + 0x297FE647D33A125DLL) ^ 0xD166CC3238C2E0C3) >> (8 * ((v9 + 14) & 7u))) ^ BYTE3(a7) ^ 0xAA;
  v102 = __ROR8__((v9 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v103 = ((2 * v102 + 0x65616341D67C2B0ELL) & 0x40755CE9BCEE341ELL) - v102 - 0x16EB6015C9B52F97;
  v104 = v103 ^ 0xF8267FEBDF688DBLL;
  v103 ^= 0x9A07EAF9E40624E0;
  v105 = (__ROR8__(v104, 8) + v103) ^ a6;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (v107 + v106 - ((2 * (v107 + v106)) & 0x6FB477EC2E9438B2) + 0x37DA3BF6174A1C59) ^ 0x49002B2EFFF7F82CLL;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = __ROR8__((((2 * (v110 + v109)) & 0x6760441E82814852) - (v110 + v109) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70, 8);
  v112 = (((2 * (v110 + v109)) & 0x6760441E82814852) - (v110 + v109) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70 ^ __ROR8__(v109, 61);
  v113 = (((2 * (v111 + v112)) & 0x14B03C0D0DEA5DFELL) - (v111 + v112) + 0x75A7E1F9790AD100) ^ 0xF504C98DFABE16C9;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((v115 + v114) | 0x39BC71E438FBF891) - ((v115 + v114) | 0xC6438E1BC704076ELL) - 0x39BC71E438FBF892) ^ 0xBCDEB454C5DDE9EALL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = __ROR8__(v116, 8);
  v119 = (((2 * (v118 + v117)) & 0xFC603D156314A35ELL) - (v118 + v117) - 0x7E301E8AB18A51B0) ^ 0x163A8DC5B543B423;
  v9[15] = (((__ROR8__(v119, 8) + (v119 ^ __ROR8__(v117, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v9 + 15) & 7u))) ^ BYTE2(a7) ^ 0x4B;
  v120 = __ROR8__((v9 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v121 = (v120 + 0x72B0B1A0EB3E1587) ^ 0xC1C2BB72C58EC110;
  v122 = (__ROR8__((v120 + 0x72B0B1A0EB3E1587) ^ 0x544736759C7E6D2BLL, 8) + v121) ^ a6;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ a5;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v127 = __ROR8__((v126 + v125 - ((2 * (v126 + v125)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338, 8);
  v128 = (v126 + v125 - ((2 * (v126 + v125)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338 ^ __ROR8__(v125, 61);
  v129 = (v127 + v128 - ((2 * (v127 + v128)) & 0xBC90FC75EE7BA9DCLL) - 0x21B781C508C22B12) ^ 0x5EEB564E74891327;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ a3;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0x97F56CB0FB361A73;
  v9[16] = (((__ROR8__(v133, 8) + (v133 ^ __ROR8__(v132, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v9 + 16) & 7u))) ^ BYTE1(a7) ^ 0xC;
  v134 = __ROR8__((v9 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v135 = ((2 * (v134 + 0x72B0B1A0EB3E1587)) | 0xA5E64CF69756B5C4) - (v134 + 0x72B0B1A0EB3E1587) + 0x2D0CD984B454A51ELL;
  v136 = v135 ^ 0x86B4100ED7D537C9;
  v135 ^= 0x13319D098E259BF2uLL;
  v137 = __ROR8__(v136, 8);
  v138 = (((2 * (v137 + v135)) | 0x559C992A13D30352) - (v137 + v135) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70;
  v139 = v138 ^ __ROR8__(v135, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ a5;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ a1;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ a4;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (((2 * (v146 + v145)) & 0x3B5AD3916A0336E4) - (v146 + v145) - 0x1DAD69C8B5019B73) ^ 0x67305387B7D875F6;
  v148 = v147 ^ __ROR8__(v145, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0x97F56CB0FB361A73;
  v9[17] = (((__ROR8__(v149, 8) + (v149 ^ __ROR8__(v148, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v9 + 17) & 7u))) ^ a7 ^ 0xF8;
  return v11();
}

uint64_t sub_10009402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  STACK[0x2C0] = 0x4761F68478C333F5;
  STACK[0x6A8] = STACK[0x6F0];
  LODWORD(STACK[0x2D4]) = STACK[0x7A0];
  STACK[0x378] = a13;
  LODWORD(STACK[0x66C]) = -2002531010;
  return (*(a7 + 8 * (v13 - 8728)))(a1, a7, LODWORD(STACK[0x2AC]), a4, a5, a6, a7, 0x71739F379BF98FD9);
}

uint64_t sub_1000941CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  STACK[0x658] = 0x4761F68478C333F5;
  STACK[0x6A8] = STACK[0x6E8];
  LODWORD(STACK[0x2D4]) = STACK[0x818];
  STACK[0x378] = a12;
  LODWORD(STACK[0x66C]) = -2002531015;
  return (*(a7 + 8 * (v12 - 8728)))(a1, a7, LODWORD(STACK[0x2AC]), a4, a5, a6, a7, 0x71739F379BF98FD9);
}

uint64_t sub_100094268@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v7 = (v5 - 1);
  v8 = (v7 | ((v7 < (a2 ^ 0x1BD8u) + 279790708) << 32)) - 279801104;
  v9 = v4 + v8;
  v10 = v8 + v3;
  v11 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = ((v11 + 0x72B0B1A0EB3E1587) | 0x4FAF6E94D8C1692CLL) - ((v11 + 0x72B0B1A0EB3E1587) | 0xB050916B273E96D3) - 0x4FAF6E94D8C1692DLL;
  v13 = v12 ^ 0x1BE858E144BF0407;
  v12 ^= 0x8E6DD5E61D4FA83CLL;
  v14 = (__ROR8__(v13, 8) + v12) ^ 0x71739F379BF98FD9;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x7EDA10D8E8BDE475;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xCB1FD105091A75A6;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x80A3287483B4C7C9;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8562C5B0FD26117BLL;
  v23 = __ROR8__((v10 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = ((v23 + 0x72B0B1A0EB3E1587) | 0x1ABEEDF775B7C90ALL) - ((v23 + 0x72B0B1A0EB3E1587) | 0xE54112088A4836F5) - 0x1ABEEDF775B7C90BLL;
  v26 = v25 ^ 0x4EF9DB82E9C9A421;
  v25 ^= 0xDB7C5685B039081ALL;
  v27 = (__ROR8__(v22, 8) + v24) ^ 0x97F56CB0FB361A73;
  v28 = (__ROR8__(v26, 8) + v25) ^ 0x71739F379BF98FD9;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x7EDA10D8E8BDE475;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__(v27, 8) + (v27 ^ __ROR8__(v24, 61));
  v34 = (v32 + v31 - ((2 * (v32 + v31)) & 0xCA64426AC452CB7CLL) - 0x1ACDDECA9DD69A42) ^ 0x2E2DF0306B331018;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x80A3287483B4C7C9;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x8562C5B0FD26117BLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x97F56CB0FB361A73;
  *(v10 + 10) = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v10 + 10) & 7))) ^ (((((2 * v33) | 0x4F0E3F734592CA70) - v33 - 0x27871FB9A2C96538) ^ 0xDF9E35CC493197A6) >> (8 * (v9 & 7u))) ^ *v9;
  return (*(a1 + 8 * (((v7 == v2) * v6) | a2)))();
}

uint64_t sub_10009464C(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x2C0];
  v4 = *(STACK[0x2C0] - 0x4761F68478C333EDLL);
  v5 = STACK[0x430];
  *(v5 - 0x4761F68478C333EDLL) = v4;
  *(v5 - 0x4761F68478C333F5) = *(v3 - 0x4761F68478C333F5);
  return (*(a2 + 8 * (((v4 == 0x4761F68478C333F5) * ((2 * v2) ^ 0xA7D8 ^ (v2 - 4611))) ^ v2)))();
}

uint64_t sub_100094914(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 8 * (v2 ^ 0x7AF9)))();
  v4 = STACK[0x2B8];
  *(STACK[0x2C0] - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_10009499C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 ^ 0x47F1)))(a2 - 0x4761F68478C333F5);
  v4 = STACK[0x2B8];
  STACK[0x2C0] = 0x4761F68478C333F5;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_100094A88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + v2) = v3;
  *(a2 - 0xAB5C364D9808152) = v3;
  return (*(a1 + 13960 * (v4 ^ 0x3324)))();
}

uint64_t sub_100094AD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v5 - 0x4761F68478C333F5) = v3;
  *(v3 - 0x4761F68478C333EDLL) = *(a2 + v2);
  *(a2 + v2) = v3;
  return (*(a1 + 8 * ((v4 - 9990) | 0x182)))();
}

uint64_t sub_100094BF4(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8 * (v3 ^ 0x42D4)))();
  v5 = STACK[0x2B8];
  *(v2 - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_100095058@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  STACK[0x4E8] = *(a1 + 8 * v2);
  STACK[0x350] = v3;
  LODWORD(STACK[0x50C]) = v4;
  STACK[0x4F0] = a2;
  STACK[0x420] = 0x147805C96CDE8B2CLL;
  LODWORD(STACK[0x5CC]) = -1240130101;
  STACK[0x520] = 0x8C38D1834A63647;
  STACK[0x720] = 0;
  v6 = (*(a1 + 8 * (v5 + 11445)))(16);
  v7 = STACK[0x2B8];
  STACK[0x390] = v6 + 0xAB5C364D9808152;
  return (*(v7 + 8 * (((v6 == 0) * ((v5 + 1190252062) & 0xB90E3CDC ^ (v5 + 2788))) ^ v5)))();
}

uint64_t sub_10009512C(void *a1, uint64_t a2)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  return (*(a2 + 8 * (v2 - 4598)))();
}

uint64_t sub_1000952DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = (v2 + ((2 * (a2 - 0x147805C96CDE8B26)) & 0x7AE1F87BBFBFFFDELL) + ((a2 - 0x147805C96CDE8B26) ^ 0xFD70FC3DDFDFFFEFLL) + 0x28F03C220200011);
  v6 = (*v5 << 24) | (v5[1] << 16) | (v5[2] << 8);
  v7 = (((v6 | v5[3]) - 1240130101 - 2 * ((v6 | v5[3]) & 0x36151DCF ^ v5[3] & 4)) ^ 0xB6151DCB) + a2 - 0x147805C8FB15E071;
  v8 = v4 - 0x6E9FDBFE813714A3;
  v10 = v8 > 0x71C8AAB0 && v7 > v8;
  return (*(a1 + 8 * ((409 * v10) ^ v3)))();
}

uint64_t sub_10009542C@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  STACK[0x398] = v15;
  STACK[0x560] = a15;
  LODWORD(STACK[0x464]) = 1434723228;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_100095620@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  STACK[0x720] = v2 + a2 - 0x147805C96CDE8B22;
  STACK[0x420] = v3;
  return (*(a1 + 8 * (((((v4 ^ 0x5B31) - 6105) ^ 0x288B) * (v5 != -1240130101)) ^ v4)))();
}

uint64_t sub_10009578C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = (v2 + a2 - 0x147805C96CDE8B22);
  v5 = (*v4 << 24) | (v4[1] << 16);
  v6 = v4[2] << ((v3 - 30) ^ 0x94);
  LODWORD(STACK[0x5CC]) = (v5 | v4[3] | v6) - 1240130101 - 2 * ((v5 | v4[3] | v6) & 0x36151DCF ^ v4[3] & 4);
  return (*(a1 + 8 * v3))();
}

uint64_t sub_1000958D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = (v3 + 1240131421) | 0x2A9A;
  v5 = *(v2 + ((v4 - 1822) ^ 0xEB87FA3693215C42) + a2) << 56;
  v6 = (a2 - 0x147805C96CDE8B22 + v2);
  v7 = v5 | (v6[1] << 48) | (v6[2] << 40) | (v6[3] << 32) | (v6[4] << 24) | (v6[5] << 16) | (v6[6] << 8) | v6[7];
  STACK[0x520] = v7 + 0x8C38D1834A63647 - ((2 * v7) & 0x11871A30694C6C8ELL);
  return (*(a1 + 8 * v4))();
}

uint64_t sub_1000959B0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v7 = STACK[0x5CC];
  v8 = STACK[0x520];
  v9 = STACK[0x720];
  STACK[0x368] = STACK[0x390];
  LODWORD(STACK[0x6E4]) = v6;
  LOWORD(STACK[0x42E]) = a4;
  LODWORD(STACK[0x558]) = v5;
  LODWORD(STACK[0x474]) = v7;
  STACK[0x3C8] = v8;
  STACK[0x628] = v9;
  LODWORD(STACK[0x3E4]) = -2103693372;
  return (*(a2 + 8 * (v4 - 7742)))();
}

uint64_t sub_100095B30(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x710];
  STACK[0x4C8] = STACK[0x710];
  v5 = STACK[0x500];
  v6 = STACK[0x580];
  v7 = 1901182499 * ((((v3 - 216) | 0xFDA28792) - ((v3 - 216) & 0xFDA28792)) ^ 0xB1BF0070);
  *(v3 - 216) = ((LODWORD(STACK[0x32C]) ^ 0x48AAE264) + (((v2 - 3074) | 0xC94) ^ 0x6BEEE320) + ((LODWORD(STACK[0x32C]) << (((v2 - 71) & 0xEF) + 19)) & 0xFD7FFF5E ^ 0x6C2A3B16)) ^ v7;
  *(v3 - 208) = v4;
  *(v3 - 200) = v5;
  *(v3 - 176) = v6;
  *(v3 - 168) = v4;
  *(v3 - 188) = v7 ^ 0x42DBB3DE;
  *(v3 - 184) = (v2 + 8786) ^ v7;
  v8 = (*(a2 + 8 * (v2 ^ 0x4679)))(v3 - 216);
  return (*(STACK[0x2B8] + 8 * ((235 * (*(v3 - 192) == -1418238986)) ^ v2)))(v8);
}

uint64_t sub_100095C74(uint64_t a1, uint64_t a2)
{
  STACK[0x5A8] = STACK[0x3D0];
  LODWORD(STACK[0x43C]) = 1099992266;
  STACK[0x5B0] = v2;
  LODWORD(STACK[0x574]) = -1240130069;
  LODWORD(STACK[0x5BC]) = -1694030222;
  return (*(a2 + 8 * (((v3 > 0x3DA0B0C2) * (v3 - 677302675)) ^ (v3 - 677303767))))();
}

uint64_t sub_100095D54(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x4C8];
  v4 = STACK[0x32C];
  STACK[0x5A8] = STACK[0x3D0];
  LODWORD(STACK[0x43C]) = 1262304268;
  STACK[0x5B0] = v3;
  LODWORD(STACK[0x574]) = v4;
  LODWORD(STACK[0x5BC]) = -885940129;
  return (*(a2 + 8 * ((v2 + 1188780092) ^ (109 * ((v2 + 1188780092) ^ 0xF252BC59)) ^ (2600 * ((v2 + 1188780092) < 0x55642DC3)) ^ 0xF25297AA)))();
}

uint64_t sub_100095E78(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x680];
  v4 = STACK[0x32C];
  STACK[0x5A8] = STACK[0x3D0];
  LODWORD(STACK[0x43C]) = 1262304268;
  STACK[0x5B0] = v3;
  LODWORD(STACK[0x574]) = v4;
  LODWORD(STACK[0x5BC]) = -77850036;
  return (*(a2 + 8 * v2))();
}

uint64_t sub_1000961A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8 * v2);
  STACK[0x530] = *(a2 + 8 * v3);
  LODWORD(STACK[0x290]) = v4 - 3982;
  LODWORD(STACK[0x270]) = v4 - 8612;
  LODWORD(STACK[0x250]) = v4 - 1240140465;
  LODWORD(STACK[0x268]) = (v4 - 1240140465) ^ 0x1D627E1D;
  LODWORD(STACK[0x240]) = -1240130140;
  LODWORD(STACK[0x280]) = v4 ^ 0x3CC3;
  LODWORD(STACK[0x260]) = v4 - 8580;
  return v5(0x34E1E6605CEF2330);
}

uint64_t sub_100096278(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x310];
  *v3 = 0u;
  v3[1] = 0u;
  STACK[0x530] = *(a2 + 8 * (v2 & 0x3F7B479F));
  return (*(a2 + 100936))();
}

uint64_t sub_10009633C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8 = v5 & 0x56DD9CEB;
  v9 = 358777457 * ((((v7 - 216) | 0xF4E2BDF3) - ((v7 - 216) & 0xF4E2BDF3)) ^ 0x9B4AB981);
  *(v7 - 204) = v4 + (v5 & 0x56DD9CEB ^ 0x134D182) + v9;
  *(v7 - 200) = a2;
  *(v7 - 192) = v3;
  *(v7 - 176) = v2 - v9;
  *(v7 - 216) = v6;
  *(v7 - 184) = (v5 & 0x56DD9CEB) - v9 - 3335;
  *(v7 - 180) = 593035557 - v9;
  (*(a1 + 8 * (v5 & 0x56DD9CEB ^ 0x5E4Fu)))(v7 - 216);
  return (*(STACK[0x2B8] + 8 * v8))(0x34E1E6605CEF2330);
}

uint64_t sub_100096628@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  STACK[0x2A0] = *(a1 + 8 * v2);
  STACK[0x778] = 0;
  return (*(a1 + 8 * (((STACK[0x778] > 0x1F) * ((a2 + 484982384) & 0xE317A9BC ^ 0x2887)) ^ a2)))();
}

uint64_t sub_100096854(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x2B0] - 4182;
  v5 = v3 == ((STACK[0x2B0] - 9618) ^ (v2 + 250));
  if (v3 == ((STACK[0x2B0] - 9618) ^ (v2 + 250)))
  {
    v6 = 36;
  }

  else
  {
    v6 = 35;
  }

  LOBYTE(STACK[0x2E7]) = v6;
  return (*(a2 + 8 * ((15732 * v5) ^ v4)))();
}

uint64_t sub_100096A00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  STACK[0x6C0] = v2;
  STACK[0x360] = 0x4761F68478C333F5;
  LODWORD(STACK[0x55C]) = -1240130101;
  STACK[0x468] = 0x405B3F9B31904DEDLL;
  v5 = v2 == 0x19DB8C4958E7B74FLL || a2 == 0xAB5C364D9808152;
  return (*(a1 + 8 * ((v5 * (((v3 - 1149905226) & 0x448A2F9E) - 10372)) ^ v3)))();
}

uint64_t sub_100096B28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 ^ 0x17A1) + 2133;
  LODWORD(STACK[0x290]) = v5;
  return (*(a2 + 8 * ((18364 * (v4 == (v5 ^ (v3 - 1793)))) ^ v2)))();
}

uint64_t sub_100096BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, unint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  STACK[0x6A8] = a3;
  LODWORD(STACK[0x2D4]) = v24;
  STACK[0x378] = a23;
  LODWORD(STACK[0x66C]) = -2002531009;
  return (*(a2 + 8 * (v23 - 7107)))(a1, a2, LODWORD(STACK[0x2AC]));
}

uint64_t sub_100096BF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x86C]) = v3;
  STACK[0x870] = v4;
  v6 = a2 != 0xAB5C364D9808152 && v4 != 0x71A6F7CCD264D70ELL;
  return (*(a1 + 8 * ((v6 * ((v2 + 230513169) & 0xF242ACFE ^ 0x289F)) | v2)))();
}

uint64_t sub_100096C8C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  STACK[0x540] = *v2;
  return (*(a2 + 8 * (((v4 != 0x4761F68478C333F5) * (v3 - 10275)) ^ (v3 + 1697))))();
}

uint64_t sub_100096D4C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = STACK[0x7F0] - 0x5920DF265F3E6885;
  STACK[0x250] = STACK[0x730];
  STACK[0x200] = (v2 ^ 0x7DE9B39FFF965F6BLL) - 0x5400B0010A140903 + ((2 * v2) & 0xFBD3673FFF2CBED6);
  STACK[0x240] = STACK[0x610];
  STACK[0x210] = STACK[0x810];
  v3 = *(a1 + 8 * a2);
  STACK[0x268] = STACK[0x590];
  STACK[0x2A0] = STACK[0x2C8];
  STACK[0x260] = STACK[0x478];
  STACK[0x290] = STACK[0x4D8];
  STACK[0x230] = STACK[0x678];
  STACK[0x220] = STACK[0x3D8];
  LODWORD(STACK[0x270]) = LOWORD(STACK[0x78A]);
  LODWORD(STACK[0x280]) = LOWORD(STACK[0x766]);
  return v3(0x684634ED764B9714, 0xD42EB43EF5303DCBLL, 0x2DEF23FEFF8657FBLL, 0xB70FAD487CFABC9CLL, 0x28115C47F750098CLL, 0xCBDCE58944DA3476);
}

uint64_t sub_1000974A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 + 8 * ((v8 - 9242) | 0x96D));
  LOWORD(STACK[0x78A]) = v7;
  LODWORD(STACK[0x270]) = v7;
  return v9();
}

uint64_t sub_100097C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x2B0];
  LODWORD(STACK[0x784]) = v7;
  return (*(a7 + 8 * (v8 - 6479)))();
}

uint64_t sub_100097C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v63 = (v62 ^ 0xB6151DCB) + a62;
  STACK[0x768] = v63 + 10;
  v63 -= 0x405B3F9B05EC1BBFLL;
  v64 = v63 < 0x2BA43224;
  v65 = v63 > a58;
  if (a58 < 0x2BA43224 != v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = v65;
  }

  return (*(a7 + 8 * (a43 ^ (v66 | (2 * v66)))))();
}

uint64_t sub_100097E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 8 * (v7 - 6829));
  LODWORD(STACK[0x280]) = 64380;
  return v8();
}

uint64_t sub_100097EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (STACK[0x2B0] - 1840036029) & 0x6DAC9CF7;
  v67 = STACK[0x2B0] + 3403;
  LODWORD(STACK[0x78C]) = v65;
  v68 = (v65 ^ 0xB6151DCB) + STACK[0x210];
  STACK[0x790] = v68 + 10;
  v68 -= 0x7D84AD1F1861C5ECLL;
  v69 = v68 < 0xC785B603;
  v70 = v68 > a65;
  if (a65 < 0xC785B603 != v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = v70;
  }

  return (*(a7 + 8 * (((v66 ^ 0xCC6) * v71) ^ v67)))();
}

uint64_t sub_1000980FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 8 * (v7 - 6829));
  LODWORD(STACK[0x270]) = 64380;
  return v8();
}

uint64_t sub_1000985F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 + 8 * (v8 - 6829));
  LOWORD(STACK[0x766]) = v7;
  LODWORD(STACK[0x280]) = v7;
  return v9();
}

uint64_t sub_1000986FC(uint64_t a1, uint64_t a2)
{
  v4 = (v3 - 1558774966) | 0x8604010;
  LODWORD(STACK[0x290]) = v4 ^ 0xAB777AF8;
  return (*(a2 + 8 * (v4 ^ 0xAB7764EE ^ (16227 * (((((v3 + 74) | 0x10) + 59) ^ (((v2 - v4) | (v4 - v2)) >> ((((v3 + 74) | 0x10) ^ 0xF8) + 17))) & 1)))))();
}

uint64_t sub_100098798(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 - 0x270676553BF336C1);
  STACK[0x728] = 0x4761F68478C333F5;
  STACK[0x5F8] = 0x5CB535C59EF8B5A8;
  return (*(a2 + 8 * (((v4 != 0xAB5C364D9808152) * (((v2 - 4669) | 0x600) ^ 0x754)) ^ v2)))();
}

uint64_t sub_100098820@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  STACK[0x6A8] = a2;
  LODWORD(STACK[0x2D4]) = 1262304268;
  STACK[0x378] = a10;
  LODWORD(STACK[0x66C]) = -2002531014;
  return (*(a1 + 8 * v10))();
}

uint64_t sub_1000988D4(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x2E8];
  STACK[0x5A8] = STACK[0x3D0];
  LODWORD(STACK[0x43C]) = -365885575;
  STACK[0x5B0] = v3;
  LODWORD(STACK[0x574]) = -1240130069;
  LODWORD(STACK[0x5BC]) = 730240057;
  return (*(a2 + 8 * v2))();
}

uint64_t sub_100098928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x7F0] + (v7 ^ 0xB6151DCB) - 0x5920DF25AD2BA3F9;
  v9 = STACK[0x7E8] - 0x667779E67748A6A1;
  v10 = v8 < 0xB212C486;
  v11 = v8 > v9;
  if (v10 != v9 < 0xB212C486)
  {
    v11 = v10;
  }

  return (*(a7 + 8 * ((37 * v11) | (STACK[0x2B0] - 2500))))(a1, a7, LODWORD(STACK[0x2AC]), a4, a5, a6, a7, 0x71739F379BF98FD9);
}

uint64_t sub_100098AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x7E0] + (v7 ^ 0xB6151DCB) - 0x5CB535C4A1CE53F1;
  v9 = STACK[0x7D8] - 0x7018A52970213091;
  v10 = v8 < 0xFD2A61AD;
  v11 = v8 > v9;
  if (v10 != v9 < 0xFD2A61AD)
  {
    v11 = v10;
  }

  return (*(a7 + 8 * ((209 * v11) ^ (STACK[0x2B0] - 2600))))(a1, a7, LODWORD(STACK[0x2AC]), a4, a5, a6, a7, 0x71739F379BF98FD9);
}

uint64_t sub_100098C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x2B0];
  v9 = STACK[0x2B0] - 8051;
  LODWORD(STACK[0x55C]) = v7;
  v10 = LOWORD(STACK[0x766]);
  STACK[0x468] = STACK[0x768];
  return (*(a7 + 8 * ((5104 * (v10 == (v8 - 11552))) ^ v9)))();
}

uint64_t sub_100098CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x2B0] - 4110;
  v9 = STACK[0x850] + (v7 ^ 0xB6151DCB);
  STACK[0x758] = v9 + 10;
  v9 -= 0x3FED88CF3053F8FDLL;
  v10 = STACK[0x848] - 0x377B019559B91EFCLL;
  v11 = v9 < 0xFB70A9DC;
  v12 = v9 > v10;
  if (v11 != v10 < 0xFB70A9DC)
  {
    v12 = v11;
  }

  return (*(a7 + 8 * ((30 * !v12) ^ v8)))(a1, a7, LODWORD(STACK[0x2AC]));
}

uint64_t sub_100098EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x860] + (v7 ^ 0xB6151DCB) - 0x402A632DBD5671DELL;
  v9 = STACK[0x858] - 0x4ECE032368615296;
  v10 = v8 < 0x7860CC90;
  v11 = v8 > v9;
  if (v10 != v9 < 0x7860CC90)
  {
    v11 = v10;
  }

  return (*(a7 + 8 * ((STACK[0x2B0] + 2341) | (2 * v11))))(a1, a7, LODWORD(STACK[0x2AC]));
}

uint64_t sub_100099314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x360] - 0x4761F68478C333DDLL);
  STACK[0x4D8] = v8;
  return (*(a7 + 8 * (((v8 == 0) * (v7 ^ 0x407B ^ (293 * (v7 ^ 0x4948)))) ^ v7)))();
}

uint64_t sub_100099380@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + 0x150CFD3C461B6EE5;
  STACK[0x838] = v3;
  v4 = STACK[0x468];
  STACK[0x840] = STACK[0x468];
  return (*(a1 + 8 * (((v3 - v4 + 0x2B4E425ED27775A0 < 0xFFFFFFFFFFFFFFF6) ^ (a2 + 1)) & 1 | a2)))();
}

uint64_t sub_100099508@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v2 = *(STACK[0x728] - 0x4761F68478C333DDLL);
  STACK[0x590] = v2;
  return (*(a1 + 8 * (((v2 == 0) * (((a2 ^ 0x51E2) + 4570) ^ 0x28B3)) ^ a2 ^ 0x7072)))();
}

uint64_t sub_100099578@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < ((a2 - 586203204) & 0x22F0ADFDu) + 419259618) << 32)) + 0x7018A52A544E28E0;
  STACK[0x7D8] = v3;
  v4 = STACK[0x5F8];
  STACK[0x7E0] = STACK[0x5F8];
  return (*(a1 + 8 * (((v3 - v4 - 0x13636F64CE52DCA0 < 0xFFFFFFFFFFFFFFF6) * (((a2 + 2050352635) & 0x85CA2BDE) + 11655)) ^ a2)))();
}

uint64_t sub_100099728(uint64_t a1, uint64_t a2)
{
  v3 = *(STACK[0x538] - 0x4761F68478C333DDLL);
  STACK[0x678] = v3;
  return (*(a2 + 8 * (((v3 == 0) * ((226 * (v2 ^ 0x4794) - 4988) ^ (v2 - 12919))) ^ v2)))();
}

uint64_t sub_10009979C(uint64_t a1, uint64_t a2)
{
  v4 = (v3 | ((v3 < ((452 * (v2 ^ 0x1554)) ^ 0x18FD41C2u)) << 32)) + 0x377B01963C2C5F7ALL;
  STACK[0x848] = v4;
  v5 = STACK[0x5A0];
  STACK[0x850] = STACK[0x5A0];
  return (*(a2 + 8 * (((v4 - v5 + 0x8728739D69ADA01 < 0xFFFFFFFFFFFFFFF6) * (13 * (v2 ^ 0x1514) + 12991)) ^ v2)))();
}

uint64_t sub_1000999E4@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v4 = a2 - 13906;
  v5 = (a2 - 13906) ^ 0x6C;
  LODWORD(STACK[0x290]) = v5 + 4506;
  return (*(a1 + 8 * (((v5 + 2928) * (v3 == v2 - 7)) ^ v4)))();
}

uint64_t sub_100099B94(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x658];
  v4 = *(STACK[0x658] - 0x4761F68478C333EDLL);
  v5 = STACK[0x698];
  *(v5 - 0x4761F68478C333EDLL) = v4;
  *(v5 - 0x4761F68478C333F5) = *(v3 - 0x4761F68478C333F5);
  return (*(a2 + 8 * (((v4 == 0x4761F68478C333F5) * (v2 - 12504 + 3 * (v2 ^ 0x213D))) ^ v2)))();
}

uint64_t sub_100099DF4(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 8 * (v2 ^ 0x4C6E)))();
  v4 = STACK[0x2B8];
  *(STACK[0x658] - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_100099EB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 + 14477)))(a2 - 0x4761F68478C333F5);
  v4 = STACK[0x2B8];
  STACK[0x658] = 0x4761F68478C333F5;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_100099F6C(uint64_t a1, uint64_t a2)
{
  v3 = *(STACK[0x340] - 0x4761F68478C333DDLL);
  STACK[0x730] = v3;
  return (*(a2 + 8 * ((((((113 * (v2 ^ 0x968)) ^ (v3 == 0)) & 1) == 0) * ((v2 + 1060) ^ 0xDE0)) ^ v2)))();
}

uint64_t sub_100099FE4@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + (a2 ^ 0x667779E7105E0C91);
  STACK[0x7E8] = v3;
  v4 = STACK[0x660];
  STACK[0x7F0] = STACK[0x660];
  return (*(a1 + 8 * ((18641 * ((((a2 - 3276) | 0x2810) ^ 0xF2A9653F35E2D5C4) - v4 + v3 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_10009A0F8(uint64_t a1, uint64_t a2)
{
  v3 = *(STACK[0x320] - 0x4761F68478C333DDLL);
  STACK[0x610] = v3;
  return (*(a2 + 8 * (((v3 == 0) * ((1942 * (v2 ^ 0xCFF)) ^ ((v2 ^ 0x2460) - 4406))) ^ v2)))();
}

uint64_t sub_10009A16C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0x18FD695E) << 32)) + ((a2 + 650318906) & 0xD93CFD9F ^ 0x140E396631C3EDC7);
  STACK[0x7F8] = v3;
  v4 = STACK[0x498];
  STACK[0x800] = STACK[0x498];
  return (*(a1 + 8 * ((3774 * (v3 - v4 + 0x4076900AB6A43D20 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_10009A2A0(uint64_t a1, uint64_t a2)
{
  v3 = *(STACK[0x2F8] - 0x4761F68478C333DDLL);
  STACK[0x3D8] = v3;
  return (*(a2 + 8 * (((v3 == 0) * (((v2 + 11) ^ 0xFFFFC45C) + v2 + 1316)) ^ v2)))();
}

uint64_t sub_10009A304@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 263 * (a2 ^ 0x1BE7u) + 419252350) << 32)) + 0x4ECE0323C7C4B5C8;
  STACK[0x858] = v3;
  v4 = STACK[0x3B8];
  STACK[0x860] = STACK[0x3B8];
  return (*(a1 + 8 * ((14340 * (v3 - v4 + (a2 - 5956) - 0xEA39FF5AB0AE53BLL < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_10009A434(uint64_t a1, uint64_t a2)
{
  v3 = *(STACK[0x330] - 0x4761F68478C333DDLL);
  STACK[0x478] = v3;
  return (*(a2 + 8 * (((v3 != 0) * ((6 * (v2 ^ 0x2896)) ^ ((v2 ^ 0x23DE) + 2559))) ^ v2)))();
}

uint64_t sub_10009A4B4(uint64_t a1, uint64_t a2)
{
  v4 = (v2 ^ 0x19C6E27270F7A2DELL) + v3 + ((v3 < (((v2 - 3809) | 0x408) ^ 0x18FD6DD2)) << 32);
  STACK[0x7C8] = v4;
  v5 = STACK[0x440];
  STACK[0x7D0] = STACK[0x440];
  return (*(a2 + 8 * ((11242 * (v4 - v5 + 0x4688066D29FD0F4 < 0xFFFFFFFFFFFFFFF6)) ^ v2)))();
}

uint64_t sub_10009A63C(uint64_t a1, uint64_t a2)
{
  *(v6 - 0x4761F68478C333F5) = v5;
  *(v5 - 0x4761F68478C333EDLL) = *(v2 + v4);
  *(v2 + v4) = v5;
  return (*(a2 + 8 * v3))();
}

uint64_t sub_10009A688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x2B0] - 3555;
  LODWORD(STACK[0x674]) = v7;
  return (*(a7 + 8 * v8))(a1, a7, LODWORD(STACK[0x2AC]), a4, a5, a6, a7, 0x71739F379BF98FD9);
}

uint64_t sub_10009A6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = ((((STACK[0x2B0] + 1520948434) & 0xA5581B9F) - 1240136515) ^ v7) + STACK[0x7D0] - 0x1E2F62D891DB09A3;
  v9 = STACK[0x7C8] - 0x19C6E271BF3B38AFLL;
  v10 = v8 < 0xCAB9DE6A;
  v11 = v8 > v9;
  if (v9 < 0xCAB9DE6A != v10)
  {
    v11 = v10;
  }

  return (*(a7 + 8 * ((91 * v11) ^ (STACK[0x2B0] - 6494))))(a1, a7, LODWORD(STACK[0x2AC]), a4, 0xCB1FD105091A75A6, 0x80A3287483B4C7C9, 0x7EDA10D8E8BDE475, 0x71739F379BF98FD9);
}

uint64_t sub_10009A808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x800] + (v7 ^ 0xB6151DCB) - 0x5484C9709B12665ALL;
  v9 = STACK[0x7F8] - 0x140E3965E46E293ALL;
  v10 = v8 < 0x6653057F;
  v11 = v8 > v9;
  if (v10 != v9 < 0x6653057F)
  {
    v11 = v10;
  }

  return (*(a7 + 8 * ((135 * v11) ^ (STACK[0x2B0] - 4695))))(a1, a7, LODWORD(STACK[0x2AC]), a4, a5, a6, a7, 0x71739F379BF98FD9);
}

uint64_t sub_10009AC48(uint64_t a1, uint64_t a2)
{
  *(v2 + v3) = v4;
  *(v2 - 0xAB5C364D9808152) = v4;
  return (*(a2 + 8 * v5))();
}

uint64_t sub_10009AD94@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  STACK[0x5F8] = a2;
  LODWORD(STACK[0x6D4]) = v3;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_10009BD0C(uint64_t a1, uint64_t a2)
{
  STACK[0x588] = v2;
  v4 = LOWORD(STACK[0x756]);
  STACK[0x5A0] = STACK[0x758];
  return (*(a2 + 8 * ((100 * (v4 != (v3 - 16398))) ^ (v3 - 4981))))();
}

uint64_t sub_10009BEA0(uint64_t a1, uint64_t a2)
{
  STACK[0x440] = v2;
  LODWORD(STACK[0x374]) = v4;
  return (*(a2 + 8 * v3))();
}

uint64_t sub_10009BF9C(uint64_t a1, uint64_t a2)
{
  STACK[0x5D8] = STACK[0x790];
  v4 = LODWORD(STACK[0x784]) == -1240130101 && LOWORD(STACK[0x78A]) == 15568;
  return (*(a2 + 8 * ((v4 * (((v2 - 10391) | 0x808) ^ 0x87E)) ^ (v2 - 5358))))();
}

uint64_t sub_10009C000@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  v5 = STACK[0x78C];
  STACK[0x6E8] = a2;
  LODWORD(STACK[0x818]) = v4;
  LOWORD(STACK[0x81E]) = v3;
  LODWORD(STACK[0x820]) = v5;
  v6 = STACK[0x674];
  LODWORD(STACK[0x200]) = STACK[0x674];
  LODWORD(STACK[0x824]) = v6;
  STACK[0x828] = STACK[0x488];
  STACK[0x528] = STACK[0x578];
  LODWORD(STACK[0x280]) = v5;
  v8 = a2 != 0xAB5C364D9808152 && (v5 ^ 0xB6151630 ^ (v2 + 622552049) & 0xDAE49FFB) < ((v2 + 14100) ^ 0xFFFFC0D7);
  return (*(a1 + 8 * ((11003 * v8) ^ v2)))();
}

uint64_t sub_10009C0AC(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 8 * (v2 + 2869)))(32);
  v4 = STACK[0x2B8];
  STACK[0x698] = v3 + 0x4761F68478C333F5;
  return (*(v4 + 8 * (((v3 == 0) * (((v2 ^ 0x521) - 4452) ^ 0x2898)) | v2)))();
}

uint64_t sub_10009C124(uint64_t a1, uint64_t a2)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v5 = (v2 - 13527) ^ LODWORD(STACK[0x280]) ^ (v3 - 1240141754);
  STACK[0x830] = v5;
  LODWORD(v5) = ((v5 + 10) ^ 0xB9FFFB7F) + 1593667039 + ((2 * (v5 + 10)) & 0x73FFF6FE);
  *(a1 + 16) = v5;
  v6 = (*(a2 + 8 * (v2 + 4182)))((v5 - 419260766));
  v7 = STACK[0x2B8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * ((90 * (v6 != 0)) ^ v2)))();
}

uint64_t sub_10009C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  LODWORD(STACK[0x2A0]) = LOWORD(STACK[0x7A6]);
  LODWORD(STACK[0x270]) = STACK[0x7A8];
  STACK[0x290] = STACK[0x430];
  return (*(a2 + 8 * ((v54 + 5531) | v54)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_10009C2D0(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8 * (v3 + 10650)))();
  v5 = STACK[0x2B8];
  *(v2 - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_10009C514(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x4F8];
  STACK[0x2C8] = STACK[0x4F8];
  return (*(a2 + 8 * (((v3 == 0) * ((v2 - 5661) ^ 0xD30)) ^ v2)))();
}

uint64_t sub_10009C550@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v4 = ((a2 << ((((v2 ^ 0xC4) - 76) | 0x10u) + 42)) & 0xFD7FFFF4) + (a2 ^ 0x56EFFED77EBFFFFALL);
  STACK[0x808] = v4 - 0x102000C302058008;
  STACK[0x810] = v3;
  return (*(a1 + 8 * ((5296 * (v4 - v3 + 0x2694AE4861277BF5 < 0xFFFFFFFFFFFFFFF6)) ^ v2 ^ 0x2FC4)))();
}

uint64_t sub_10009C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25)
{
  LODWORD(STACK[0x3AC]) = v25;
  STACK[0x3E8] = STACK[0x3F8];
  STACK[0x560] = a25;
  LODWORD(STACK[0x464]) = 960650310;
  return (*(a7 + 8 * v26))(0xD13EB676091753AALL, a7, LODWORD(STACK[0x2AC]));
}

uint64_t sub_10009C708@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  v5 = STACK[0x730] + v2;
  STACK[0x660] = a2;
  STACK[0x648] = v5;
  return (*(a1 + 8 * ((v3 - 1240135911) ^ 0xB6152AA6 ^ (3100 * (((v3 - 55) ^ (((v4 - (v3 - 1240135911)) | (v3 - 1240135911 - v4)) < 0)) & 1)))))();
}

uint64_t sub_10009C770(uint64_t a1, uint64_t a2)
{
  v3 = *(STACK[0x518] - 0x270676553BF336C1);
  STACK[0x320] = 0x4761F68478C333F5;
  STACK[0x498] = 0x5484C97101656BE3;
  return (*(a2 + 8 * ((((((2453 * (v2 ^ 0xB6151DDE) - 2021) ^ (v3 == 0xAB5C364D9808152)) & 1) == 0) * ((556 * ((2453 * (v2 ^ 0xB6151DDE)) ^ 0x2FEA)) ^ 0x196D)) ^ (2453 * (v2 ^ 0xB6151DDE)))))();
}

uint64_t sub_10009C828@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>, uint64_t a3, unint64_t a4)
{
  STACK[0x6A8] = a2;
  LODWORD(STACK[0x2D4]) = 1099992266;
  STACK[0x378] = a4;
  LODWORD(STACK[0x66C]) = -2002531016;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_10009C8D0@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  v5 = STACK[0x590] + v2;
  STACK[0x5F8] = a2;
  LODWORD(STACK[0x6D4]) = v4;
  STACK[0x618] = v5;
  return (*(a1 + 8 * ((35 * (*(STACK[0x518] - 0x270676553BF33645) & (LODWORD(STACK[0x5E8]) != ((41 * (v3 ^ 0x113B)) ^ 0x1A1B)))) ^ v3)))();
}

uint64_t sub_10009C93C(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 - 0x270676553BF336C1);
  STACK[0x340] = 0x4761F68478C333F5;
  STACK[0x660] = 0x5920DF265F3E6889;
  return (*(a2 + 8 * (((v4 == 0xAB5C364D9808152) * ((((v2 ^ 0x5C27) + 713226713) ^ 0xBA97FCB4) + (((v2 ^ 0x5C27) + 713226713) | 0x45680402))) ^ v2 ^ 0x5C27)))();
}

uint64_t sub_10009C9E4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>, unint64_t a3)
{
  STACK[0x6A8] = a2;
  LODWORD(STACK[0x2D4]) = 1328047355;
  STACK[0x378] = a3;
  LODWORD(STACK[0x66C]) = -2002531013;
  return (*(a1 + 8 * ((2977 * (v3 < 0x4E01D6DB)) ^ (v3 - 1877687699))))();
}

uint64_t sub_10009CB3C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  STACK[0x3B8] = a2;
  LODWORD(STACK[0x4C4]) = v4;
  return (*(a1 + 8 * ((((8 * v3) ^ 0x1B900 ^ (36 * (v3 ^ 0x3DB5))) * (v2 == 15568)) ^ v3)))();
}

uint64_t sub_10009CB98(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x5C0];
  STACK[0x598] = STACK[0x5C0];
  return (*(a2 + 8 * (((v3 == 0) * (((v2 + 1007598627) & 0xC3F13DEC) + (v2 ^ 0xFFFFF9FC))) | v2)))();
}

uint64_t sub_10009CBE4(uint64_t a1, uint64_t a2)
{
  v3 = v2 ^ 0x1A71;
  v4 = (*(a2 + 8 * (v2 ^ 0x6C86)))((((2 * (v2 ^ 0x1A71)) ^ 0x6E04) - 1240144475 + 2104 * (v2 ^ 0x26D4u)) ^ LODWORD(STACK[0x4C4]));
  return (*(STACK[0x2B8] + 8 * ((108 * (v4 != 0)) ^ v3)))();
}

uint64_t sub_10009CD34@<X0>(unint64_t a1@<X0>, int a2@<W2>, int a3@<W8>)
{
  v5 = a2 + v3 - 503168495 < (a3 ^ 0x218Fu) - 10388 || STACK[0x598] - a1 < 0x10;
  v6 = *(STACK[0x2B8] + 8 * ((v5 * ((a3 + 13655) ^ 0x3E30)) ^ a3));
  STACK[0x2A0] = a1;
  return v6();
}

uint64_t sub_10009CE7C(uint64_t a1, int a2, int a3, unint64_t a4)
{
  v10 = *(STACK[0x2B8] + 8 * v4);
  LODWORD(STACK[0x290]) = v5 & 0xFFFFFFF8;
  return v10(STACK[0x2B8], (a3 + v6 + a2 + 2), (a3 + v6 + a2 + 3), (a3 + v6 + a2 - 2373), (a3 + v6 + a2 + 5), (a3 + v6 + a2 + 6), vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(v7), vdupq_n_s64(v9), vdupq_n_s64(a4), vdupq_n_s64(0x7C08561DC6567759uLL), vdupq_n_s64(0x64F579A9812D6258uLL), vdupq_n_s64(v8));
}

uint64_t sub_10009CFBC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int8x16_t a7, int8x16_t a8, int64x2_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14, uint64_t a15, int a16)
{
  v38 = (v18 + v21 + 8);
  v39.i64[0] = v16 + (v23 + v21 + 8);
  v39.i64[1] = v16 + (v22 + v21 + 8);
  v40.i64[0] = v16 + (a3 + v21 + 8);
  v41.i64[0] = v16 + v38;
  v40.i64[1] = v16 + (a2 + v21 + 8);
  v41.i64[1] = v16 + (a6 + v21 + 8);
  v42.i64[0] = v16 + (a5 + v21 + 8);
  v42.i64[1] = v16 + (a4 + v21 + a16 + 8);
  v43 = vandq_s8(v42, a7);
  v44 = vandq_s8(v41, a7);
  v45 = vandq_s8(v40, a7);
  v46 = vandq_s8(v39, a7);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), a9);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), a9);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), a9);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), a9);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v50, a10), vorrq_s8(v50, a11)), a11);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(v49, a10), vorrq_s8(v49, a11)), a11);
  v53 = veorq_s8(v52, a12);
  v54 = veorq_s8(v51, a12);
  v55 = veorq_s8(v51, a14);
  v56 = veorq_s8(v52, a14);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v58, v58), v25), v58), v26), v27);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v57, v57), v25), v57), v26), v27);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v62 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62);
  v65 = vaddq_s64(v63, v61);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v64, v28), vorrq_s8(v64, a13)), a13), v29);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, v28), vorrq_s8(v65, a13)), a13), v29);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68), v30);
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69), v30);
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v73 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v74 = veorq_s8(v70, v72);
  v75 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74);
  v77 = veorq_s8(vaddq_s64(v75, v73), v31);
  v78 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v79 = veorq_s8(v76, v31);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v77, v78);
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v32), v84), v33), v34);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), v32), v83), v33), v34);
  v87 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89);
  v92 = veorq_s8(vaddq_s64(v90, v88), v35);
  v93 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v94 = veorq_s8(v91, v35);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v96 = veorq_s8(v92, v93);
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v99 = vaddq_s64(vsubq_s64(vorrq_s8(v48, a10), vorrq_s8(v48, a11)), a11);
  v100 = vaddq_s64(v98, v96);
  v101 = veorq_s8(vaddq_s64(v97, v95), v36);
  v136.val[3] = vshlq_u64(veorq_s8(v100, v36), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a8)));
  v136.val[2] = vshlq_u64(v101, vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a8)));
  v102 = veorq_s8(v99, a12);
  v103 = veorq_s8(v99, a14);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v25), v104), v26), v27);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, v28), vorrq_s8(v107, a13)), a13), v29);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v30);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v31);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v114, v114), v32), v114), v33), v34);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v35);
  v118 = vaddq_s64(vsubq_s64(vorrq_s8(v47, a10), vorrq_s8(v47, a11)), a11);
  v136.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL))), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a8)));
  v119 = veorq_s8(v118, a12);
  v120 = veorq_s8(v118, a14);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), v25), v121), v26), v27);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v28), vorrq_s8(v124, a13)), a13), v29);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v30);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v31);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), v32), v131), v33), v34);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v35);
  v136.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL))), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a8)));
  *(v19 + v38) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v136, v37)), *(v16 + v38 - 7));
  return (*(a1 + 8 * (((v20 == v21) * v24) ^ v17)))();
}

uint64_t sub_10009D664(uint64_t a1, uint64_t a2)
{
  v6 = STACK[0x478] + v3;
  STACK[0x440] = v2;
  LODWORD(STACK[0x374]) = v5;
  STACK[0x650] = v6;
  return (*(a2 + 8 * v4))();
}

uint64_t sub_10009D7E4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  v5 = STACK[0x610] + v2;
  STACK[0x498] = a2;
  STACK[0x6F8] = v5;
  return (*(a1 + 8 * (((v4 == (((v3 - 13700) | 0x204) ^ 0xB6150EEF)) * ((v3 ^ 0x6E18) - 6794)) ^ v3)))();
}

uint64_t sub_10009D8A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = v5 | 0x44;
  v8 = STACK[0x6F8];
  v9 = 2054851651 * ((v6 + 741692267 - 2 * ((v6 - 216) & 0x2C355443)) ^ 0xA09BFB65);
  *(v6 - 200) = v2;
  *(v6 - 192) = v8;
  *(v6 - 204) = v9 + (v4 ^ 0x374FDBFD) - 302858848 + ((v4 << (7 * ((v5 | 0x44) ^ 0x25) - 87)) & 0x6E9FB7FA);
  *(v6 - 176) = v2;
  *(v6 - 184) = v9 ^ v3 ^ 0xA8F85FEF;
  *(v6 - 180) = (v5 | 0x44) - v9 - 2809;
  *(v6 - 216) = a2;
  v10 = (*(a1 + 8 * ((v5 | 0x44) + 14205)))(v6 - 216);
  return (*(STACK[0x2B8] + 8 * v7))(v10);
}

uint64_t sub_10009DA00@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v3 - 0x270676553BF3365DLL);
  v7 = 292178203 * ((v5 - 216) ^ 0x5E4AF7F6);
  *(v5 - 192) = ((*(v3 - 0x270676553BF33649) ^ 0x698765D5) - 134684992 + ((2 * *(v3 - 0x270676553BF33649)) & 0xD6EEFFD6 ^ 0x4E03454)) ^ v7;
  *(v5 - 188) = v7 + (v2 ^ 0x63C2EEF5) + ((2 * v2) & 0xABAFE67C ^ 0x282A2214) + 1056734948;
  *(v5 - 212) = (v4 + 193571718) ^ v7;
  *(v5 - 184) = v1;
  *(v5 - 176) = v3 + 0x532952AC47F4EDD2;
  *(v5 - 208) = v1;
  *(v5 - 200) = a1;
  *(v5 - 168) = v7 ^ 0xB7924CE;
  *(v5 - 164) = ((v4 - 1769474757) & 0x75019F58 ^ 0x6CB83BF1) + v7 - 96737305 * v6 - ((1954009038 * v6 + 128410814) & 0x51C90894);
  v8 = (*(STACK[0x2B8] + 8 * (v4 ^ 0xF47632FD)))(v5 - 216);
  return (*(STACK[0x2B8] + 8 * (v4 ^ 0xF4766A09 ^ (14162 * (v4 == -146566807)))))(v8);
}

uint64_t sub_10009DCFC(void *a1, uint64_t a2)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *(v2 - 0x270676553BF336B9) = a1 + 0xAB5C364D9808152;
  LODWORD(STACK[0x450]) = -1418238986;
  return (*(a2 + 8 * v3))();
}

uint64_t sub_10009DD64(uint64_t a1, uint64_t a2)
{
  STACK[0x640] = v2 - 0x270676553BF336B9;
  v4 = STACK[0x618];
  LODWORD(STACK[0x554]) = STACK[0x6D4];
  STACK[0x4F8] = v4;
  STACK[0x5D8] = 0x7D84AD1FDFE77BF9;
  LODWORD(STACK[0x674]) = -1240130101;
  STACK[0x488] = 0x7643118333A2D791;
  STACK[0x578] = 0;
  v5 = (*(a2 + 8 * (v3 + 11539)))(16);
  v6 = STACK[0x2B8];
  STACK[0x3F8] = v5 + 0xAB5C364D9808152;
  return (*(v6 + 8 * (((v5 != 0) * (((125 * (v3 ^ 0x1D02) - 8097) | 0x2880) ^ 0x2896)) ^ v3)))();
}

uint64_t sub_10009DE54(void *a1, uint64_t a2)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  return (*(a2 + 8 * v2))();
}

uint64_t sub_10009E060@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>, int8x16_t a8@<Q4>)
{
  v36.i64[0] = v8 + (v18 + a6 + 16);
  v36.i64[1] = v8 + (LODWORD(STACK[0x260]) + a6 + 16);
  *&STACK[0x280] = v36;
  v36.i64[0] = v8 + (v14 + a6 + 16);
  v37.i64[0] = v8 + (v15 + a6 + 16);
  v36.i64[1] = v8 + (v13 + a6 + 16);
  v38 = v36;
  v37.i64[1] = v8 + (v10 + a6 + 16);
  v39.i64[0] = v8 + (v17 + a6 + 16);
  v39.i64[1] = v8 + (v11 + a6 + 16);
  v40 = (a7 + a6 + 16);
  v41.i64[0] = v8 + (a3 + a6 + 16);
  v42.i64[0] = v8 + v40;
  v42.i64[1] = v8 + (v20 + a6 + 16);
  v41.i64[1] = v8 + (v19 + a6 + v12 + 16);
  v43 = *&STACK[0x240];
  v44 = vandq_s8(v41, *&STACK[0x240]);
  v45 = vandq_s8(v42, *&STACK[0x240]);
  v46 = vandq_s8(v39, *&STACK[0x240]);
  v47 = vandq_s8(v37, *&STACK[0x240]);
  v48 = *&STACK[0x220];
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), *&STACK[0x220]);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), *&STACK[0x220]);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), *&STACK[0x220]);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), *&STACK[0x220]);
  v53 = *&STACK[0x290];
  v54 = vorrq_s8(v52, *&STACK[0x290]);
  v55 = vorrq_s8(v51, *&STACK[0x290]);
  *&STACK[0x270] = vsubq_s64(vorrq_s8(v49, *&STACK[0x290]), vorrq_s8(v49, v23));
  v56 = vaddq_s64(vsubq_s64(v54, vorrq_s8(v52, v23)), v23);
  v57 = vaddq_s64(vsubq_s64(v55, vorrq_s8(v51, v23)), v23);
  v58 = veorq_s8(v57, *&STACK[0x210]);
  v59 = veorq_s8(v56, *&STACK[0x210]);
  v60 = veorq_s8(v56, v22);
  v61 = veorq_s8(v57, v22);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v60);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v63, v63), v24), v63), v25), v26);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v62, v62), v24), v62), v25), v26);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v68, v28), vorrq_s8(v68, v27)), v27), v29);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v69, v28), vorrq_s8(v69, v27)), v27), v29);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = veorq_s8(v70, v71);
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v73), v30);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74), v30);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v78), v31);
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79), v31);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v83 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v84 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v83);
  v86 = vaddq_s64(v84, v82);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v86, v86), v32), v86), v33), v34);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v85, v85), v32), v85), v33), v34);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v90);
  v93 = veorq_s8(vaddq_s64(v91, v89), v35);
  v94 = veorq_s8(v92, v35);
  v55.i64[0] = v8 + (a2 + a6 + 16);
  v55.i64[1] = v8 + (a1 + a6 + 16);
  v95 = vaddq_s64(vsubq_s64(vorrq_s8(v50, v53), vorrq_s8(v50, v23)), v23);
  v181.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x230])));
  v181.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x230])));
  v96 = veorq_s8(v95, *&STACK[0x210]);
  v97 = veorq_s8(v95, v22);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), v24), v98), v25), v26);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, v28), vorrq_s8(v101, v27)), v27), v29);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v30);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v31);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v108, v108), v32), v108), v33), v34);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v35);
  v37.i64[0] = v8 + (v9 + a6 + 16);
  v37.i64[1] = v8 + (v16 + a6 + 16);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL)));
  v113 = vandq_s8(v37, v43);
  v114 = vaddq_s64(*&STACK[0x270], v23);
  v181.val[0] = vshlq_u64(veorq_s8(v112, a8), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), *&STACK[0x230])));
  v115 = veorq_s8(v114, *&STACK[0x210]);
  v116 = veorq_s8(v114, v22);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v117, v117), v24), v117), v25), v26);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, v28), vorrq_s8(v120, v27)), v27), v29);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v30);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v31);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v127, v127), v32), v127), v33), v34);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v35);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v133 = vandq_s8(v55, v43);
  v134 = vaddq_s64(v132, v131);
  v135 = vandq_s8(v38, v43);
  v181.val[1] = vshlq_u64(veorq_s8(v134, a8), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), *&STACK[0x230])));
  v136 = vandq_s8(*&STACK[0x280], v43);
  v137 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v48);
  v141 = vaddq_s64(v139, v48);
  v142 = vaddq_s64(v138, v48);
  v143 = vaddq_s64(v137, v48);
  v144 = vsubq_s64(vorrq_s8(v140, *&STACK[0x290]), vorrq_s8(v140, v23));
  v145 = vsubq_s64(vorrq_s8(v141, *&STACK[0x290]), vorrq_s8(v141, v23));
  v146 = vsubq_s64(vorrq_s8(v142, *&STACK[0x290]), vorrq_s8(v142, v23));
  v147 = vaddq_s64(vsubq_s64(vorrq_s8(v143, *&STACK[0x290]), vorrq_s8(v143, v23)), v23);
  v148 = vaddq_s64(v146, v23);
  v181.val[3].i64[0] = vqtbl4q_s8(v181, *&STACK[0x250]).u64[0];
  v149 = veorq_s8(v148, *&STACK[0x210]);
  v181.val[0] = veorq_s8(v147, *&STACK[0x210]);
  v150 = veorq_s8(v147, v22);
  v151 = veorq_s8(v148, v22);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v151);
  v181.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v150);
  v181.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181.val[0], v181.val[0]), v24), v181.val[0]), v25), v26);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v24), v152), v25), v26);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(v181.val[0], v181.val[1]);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v155);
  v181.val[0] = vaddq_s64(v181.val[1], v154);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v156, v28), vorrq_s8(v156, v27)), v27), v29);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181.val[0], v28), vorrq_s8(v181.val[0], v27)), v27), v29);
  v160 = veorq_s8(v159, v158);
  v181.val[0] = veorq_s8(v157, v181.val[1]);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v181.val[0]);
  v162 = veorq_s8(vaddq_s64(v181.val[1], v160), v30);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v163 = veorq_s8(v161, v30);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v181.val[0], 3uLL), v181.val[0], 0x3DuLL));
  v181.val[0] = veorq_s8(v162, v181.val[1]);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v181.val[0]);
  v166 = veorq_s8(vaddq_s64(v181.val[1], v164), v31);
  v167 = veorq_s8(v165, v31);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v181.val[0], 3uLL), v181.val[0], 0x3DuLL));
  v181.val[0] = veorq_s8(v166, v181.val[1]);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v181.val[0]);
  v170 = vaddq_s64(v181.val[1], v168);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), v32), v170), v33), v34);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), v32), v169), v33), v34);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v181.val[0], 3uLL), v181.val[0], 0x3DuLL));
  v181.val[0] = veorq_s8(v171, v181.val[1]);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v181.val[0]);
  v175 = veorq_s8(vaddq_s64(v181.val[1], v173), v35);
  v176 = veorq_s8(v174, v35);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v181.val[0], 3uLL), v181.val[0], 0x3DuLL));
  v181.val[0] = veorq_s8(v175, v181.val[1]);
  v181.val[1] = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v181.val[2] = vaddq_s64(v145, v23);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v181.val[0]);
  v181.val[0] = veorq_s8(vaddq_s64(v181.val[1], v177), a8);
  v180.val[3] = vshlq_u64(veorq_s8(v178, a8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x280], 3uLL), *&STACK[0x230])));
  v180.val[2] = vshlq_u64(v181.val[0], vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), *&STACK[0x230])));
  v181.val[0] = veorq_s8(v181.val[2], *&STACK[0x210]);
  v181.val[1] = veorq_s8(v181.val[2], v22);
  v181.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]);
  v181.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181.val[0], v181.val[0]), v24), v181.val[0]), v25), v26);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]);
  v181.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181.val[0], v28), vorrq_s8(v181.val[0], v27)), v27), v29);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]), v30);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]), v31);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]);
  v181.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181.val[0], v181.val[0]), v32), v181.val[0]), v33), v34);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]), v35);
  v181.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL)));
  v181.val[1] = vaddq_s64(v144, v23);
  v180.val[1] = vshlq_u64(veorq_s8(v181.val[0], a8), vnegq_s64(vandq_s8(vshlq_n_s64(v55, 3uLL), *&STACK[0x230])));
  v181.val[0] = veorq_s8(v181.val[1], *&STACK[0x210]);
  v181.val[1] = veorq_s8(v181.val[1], v22);
  v181.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]);
  v181.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181.val[0], v181.val[0]), v24), v181.val[0]), v25), v26);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]);
  v181.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181.val[0], v28), vorrq_s8(v181.val[0], v27)), v27), v29);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]), v30);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]), v31);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]);
  v181.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181.val[0], v181.val[0]), v32), v181.val[0]), v33), v34);
  v181.val[1] = veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL));
  v181.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), v181.val[1]), v35);
  v180.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181.val[0], 0x38uLL), v181.val[0], 8uLL), veorq_s8(v181.val[0], vsraq_n_u64(vshlq_n_s64(v181.val[1], 3uLL), v181.val[1], 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x230])));
  v181.val[3].i64[1] = vqtbl4q_s8(v180, *&STACK[0x250]).u64[0];
  v180.val[1] = vrev64q_s8(v181.val[3]);
  *(STACK[0x268] + v40) = veorq_s8(vextq_s8(v180.val[1], v180.val[1], 8uLL), *(v8 + v40 - 15));
  return (*(STACK[0x2B8] + 8 * (((a5 == a6) * v21) ^ a4)))();
}

uint64_t sub_10009ECE0@<X0>(int a1@<W5>, uint64_t a2@<X6>, uint64_t a3@<X7>, int a4@<W8>)
{
  v20 = (a4 + v8);
  v21 = __ROR8__((v4 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((v21 + v12) | v16) - ((v21 + v12) | v5) + v5;
  v23 = v9 ^ v22;
  v24 = v22 ^ v14;
  v25 = __ROR8__(v23, 8);
  v26 = ((v15 | (2 * (v25 + v24))) - (v25 + v24) + v11) ^ v13;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v7 - ((v28 + v27) | v7) + ((v28 + v27) | v18)) ^ v19;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xCB1FD105091A75A6;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x80A3287483B4C7C9;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = ((v17 | (2 * (v34 + v35))) - (v34 + v35) + 0x2AB7DE0A3B0B673) ^ a2;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a3;
  *(STACK[0x2A0] + v20) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + a4 + v8) & 7))) ^ *(v4 + v20);
  return (*(STACK[0x2B8] + 8 * (((a4 - 1 == a1) * v10) ^ v6)))();
}

uint64_t sub_10009F144(uint64_t a1, uint64_t a2)
{
  *(a1 + (((v2 - 270805460) << (77 * (v3 ^ 0x23u))) & 0xBEDFEF74) + ((v2 - 270805460) ^ 0xFEBFF7FA5F6FF7BALL) + 0x1400805A0900846) = 0;
  *(a1 + ((2 * (v2 - 270805456)) & 0x16CBEBF6ELL) + ((v2 - 270805456) ^ 0x5FFDEFBFB65F5FB7) - 0x5FFDEFBFB65F5FB7) = -9392;
  v6 = a1 + ((2 * (v2 - 270805454)) & 0xB73F6F6ELL) + ((v2 - 270805454) ^ 0xFAA265335B9FB7B7) + 0x55D9ACCA4604849;
  *v6 = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = (-69 - v4 - ((2 * v5 + 38) & 0x56)) ^ 0xAB;
  return (*(a2 + 8 * (v3 ^ (8 * (((16 - v4) ^ 0xE6C2FF6ED8544CAFLL) + 2 * ((16 - v4) & 0xFLL) != 0xE6C2FF6ED8544CAFLL)))))();
}

uint64_t sub_10009F2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *(v4 - 0x7B28E17709C15CLL) = a1;
  *v3 = v5;
  return (*(a2 + 8 * a3))();
}

uint64_t sub_10009F368(uint64_t a1, uint64_t a2)
{
  STACK[0x6C8] = STACK[0x548];
  LODWORD(STACK[0x494]) = STACK[0x484];
  return (*(a2 + 8 * v2))();
}

uint64_t sub_10009F394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30)
{
  LODWORD(STACK[0x35C]) = v30;
  STACK[0x560] = a30;
  LODWORD(STACK[0x464]) = 723613851;
  return (*(a2 + 8 * v31))(0xD13EB676091753AALL);
}

uint64_t sub_10009F458(uint64_t a1, uint64_t a2)
{
  v5 = v4 - 1164 + v2 - 830366851;
  v6 = -24628384 - *(v3 - 0x4761F68478C333E5);
  v7 = v5 < 0xE58ACA03;
  v8 = v5 > v6;
  if (v7 != v6 < (((v4 - 4133) | 0x2094) ^ 0xE58AE29F))
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(a2 + 8 * ((23 * !v9) ^ v4)))();
}

uint64_t sub_10009F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (v13 | ((v13 < v16) << 32)) + 0x255B07BE854924D0;
  v20 = v19 + v10 - 0x255B07BE89A8D368;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((v18 + (v9 - 2892) + v21 - 3250) & 0x4010E9E83BB82F35 ^ 0x200002033000124) + ((v18 + (v9 - 2892) + v21 - 3250) & 0xB9EF1617C447D0CALL ^ 0x30C800000440D049) - 1;
  v23 = __ROR8__(v22 ^ 0x648F3655AB3EBC47, 8);
  v22 ^= 0xF10ABB52F2CE107CLL;
  v24 = (((2 * (v23 + v22)) & 0x475D9ED9F33B10C6) - (v23 + v22) + 0x5C5130930662779CLL) ^ 0x2D22AFA49D9BF845;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v17;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a8;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v15;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v14;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v8 - ((v34 + v33) | v8) + ((v34 + v33) | 0xCC0A83AA59BDF645)) ^ 0x5BFFEF1AA28BEC36;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  *(a1 + v11 + v19) = (((((2 * (v37 + v36)) | 0x6AFFFDB07E3B3B12) - (v37 + v36) - 0x357FFED83F1D9D89) ^ 0xCD66D4ADD4E56F17) >> (8 * (v20 & 7u))) ^ *v20;
  return (*(a7 + 8 * ((3371 * (v12 == 0)) ^ v9)))();
}

uint64_t sub_10009F97C(uint64_t a1, uint64_t a2)
{
  v7 = v3 < v6;
  *(v5 + (v4 + 2395) + v2 - 0x3E8CADFB2CA77A19) = 0;
  if (v7 == v5 - 0x3E8CADFB06D74E54 < v6)
  {
    v7 = v5 - 0x3E8CADFB06D74E54 < v3;
  }

  return (*(a2 + 8 * (v4 | (8 * v7))))();
}

uint64_t sub_10009FB14(uint64_t a1, uint64_t a2)
{
  v4 = (v3 - 3988) | 6;
  LODWORD(STACK[0x290]) = v4;
  return (*(a2 + 8 * (((v4 ^ 0x2AC6) * (v2 == -1418238986)) ^ (v3 - 8580))))();
}

uint64_t sub_10009FBBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x270676553BF336C1);
  STACK[0x330] = 0x4761F68478C333F5;
  STACK[0x440] = 0x1E2F62D95C94E817;
  return (*(a1 + 8 * ((((12 * (v2 ^ 0x2301) - 1256216997) & 0x4AE07BBC ^ 0x2886) * (v3 == 0xAB5C364D9808152)) ^ v2)))();
}

uint64_t sub_10009FCD8(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x290];
  LODWORD(STACK[0x450]) = v2;
  return (*(a2 + 8 * v3))();
}

uint64_t sub_10009FD20@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0x6A8] = a2;
  LODWORD(STACK[0x2D4]) = -365885575;
  STACK[0x378] = a5;
  LODWORD(STACK[0x66C]) = -2002531011;
  return (*(a1 + 8 * v5))();
}

uint64_t sub_10009FEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  STACK[0x4B8] = STACK[0x518];
  STACK[0x338] = a35;
  LODWORD(STACK[0x438]) = -1035983924;
  return (*(a2 + 8 * v35))();
}

uint64_t sub_10009FF78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 0x1052E0D040A32209);
  STACK[0x4D0] = v3;
  return (*(a1 + 8 * ((((92 * (((v2 - 7126) | 0x11) ^ 0xCA6)) ^ 0x28F0) * (v3 == 0x270676553BF336C1)) ^ (v2 + 2300))))();
}

uint64_t sub_10009FFE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  STACK[0x560] = a2 + 0x7BAD334BAF5759DLL;
  LODWORD(STACK[0x464]) = 1197686769;
  return (*(a1 + 8 * v2))(0xD13EB676091753AALL);
}

uint64_t sub_1000A0138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(v6 + a1);
  STACK[0x380] = v7;
  return (*(a2 + 8 * (((((v5 + 50) ^ (v7 == 0xAB5C364D9808152)) & 1) * (v5 ^ a5)) ^ v5)))();
}

uint64_t sub_1000A02C4(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8 * (v3 + 12562)))();
  v5 = STACK[0x2B8];
  *(v2 - 0x4761F68478C333DDLL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_1000A0628(uint64_t a1, uint64_t a2)
{
  STACK[0x560] = STACK[0x4D0] + 0x7BAD334BAF57595;
  LODWORD(STACK[0x464]) = 486577392;
  return (*(a2 + 8 * v2))();
}

uint64_t sub_1000A0B88@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  STACK[0x690] = v4;
  LODWORD(STACK[0x454]) = v5;
  STACK[0x348] = a2;
  LODWORD(STACK[0x38C]) = v3;
  return (*(a1 + 8 * (((((((v2 - 28) ^ 0xC0) + 1) ^ (a2 == 0)) & 1) * ((v2 - 268475676) & 0xB912DE55 ^ 0xA9125E22)) ^ v2)))();
}

uint64_t sub_1000A0BF8(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x31C]) = v2;
  v5 = v3 - 127826373;
  v6 = v2 - 1155772949 < v5;
  if ((v2 - 1155772949) < 0x21E23C24 != v5 < ((v4 - 1458418794) ^ 0x88F06220))
  {
    v6 = v5 < ((v4 - 1458418794) ^ 0x88F06220);
  }

  return (*(a2 + 8 * ((13793 * v6) ^ v4)))();
}

uint64_t sub_1000A0E54(uint64_t a1, uint64_t a2)
{
  v6 = v3 + 40 * v2;
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  STACK[0x5A8] = STACK[0x690];
  LODWORD(STACK[0x43C]) = v7;
  STACK[0x5B0] = v5;
  LODWORD(STACK[0x574]) = v8;
  LODWORD(STACK[0x5BC]) = 984756888;
  return (*(a2 + 8 * v4))();
}

uint64_t sub_1000A0F8C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  v5 = v3 + 40 * v2;
  v6 = *v5;
  v7 = *(v5 + 24);
  STACK[0x368] = a2;
  LODWORD(STACK[0x6E4]) = v7;
  LOWORD(STACK[0x42E]) = 692;
  LODWORD(STACK[0x558]) = -1240130109;
  LODWORD(STACK[0x474]) = -1240130101;
  STACK[0x3C8] = v6;
  STACK[0x628] = 0;
  LODWORD(STACK[0x3E4]) = 1884169497;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_1000A11F0@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>)
{
  STACK[0x368] = a2;
  LODWORD(STACK[0x6E4]) = v5;
  LOWORD(STACK[0x42E]) = -10518;
  LODWORD(STACK[0x558]) = v4;
  LODWORD(STACK[0x474]) = -1240130101;
  STACK[0x3C8] = 0x8C38D1834A63647;
  LODWORD(STACK[0x3E4]) = 1577065070;
  STACK[0x628] = v3;
  return (*(a1 + 8 * v2))();
}

void sub_1000A1588(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 32) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 16) == 0;
  v1 = *a1 - 693709591 * (((a1 | 0xA36D2EB0) - (a1 & 0xA36D2EB0)) ^ 0xA5F94AB);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000A16BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = v13;
  v25 = v11;
  v26 = v10;
  v27 = v12;
  STACK[0x300] = &STACK[0x3B5F75C64C87E510];
  STACK[0x308] = &STACK[0x78B317109557989];
  STACK[0x2F0] = &STACK[0x78B3171095576A1];
  STACK[0x2F8] = &STACK[0x224B346078804F00];
  STACK[0x388] = &STACK[0x78B317109557629];
  STACK[0x448] = &STACK[0x3B5F75C64C87E160];
  v15 = *(v9 + 8 * (v14 + 9029));
  STACK[0x468] = v9;
  v16 = v15(16);
  return (*(STACK[0x468] + 8 * (((v16 != 0) * (((v14 - 2090174506) & 0x7C9563FB) - 686)) ^ v14)))(v16, v17, v18, v19, v20, v21, v22, 1418211938, a9, &STACK[0x2CB46329DC91CF56], &STACK[0x2CB46329DC91CF86], v24, &STACK[0x2CB46329DC91D20E], &STACK[0x2CB46329DC91CE86], &STACK[0x2CB46329DC91CE0E], &STACK[0x2CB46329DC91D036], v25, &STACK[0x6596634DE9FFDA3F], &STACK[0x2CB46329DC91D056], &STACK[0x2CB46329DC91D04E], &STACK[0x2CB46329DC91D066], &STACK[0x2CB46329DC91D0B6], &STACK[0x2CB46329DC91CE3E], v26, &STACK[0x224B346078805340], &STACK[0x2CB46329DC91CE36], &STACK[0x224B346078804FF8], &STACK[0x2CB46329DC91CDEE], v27, &STACK[0x2CB46329DC91D1C6], &STACK[0x6596634DE9FFD957], &STACK[0x2CB46329DC91D226], &STACK[0x2CB46329DC91CD76], &STACK[0x27F2AA98AED1F203], &STACK[0x27F2AA98AED1EE5F], &STACK[0x3B5F75C64C87E248], a1, &STACK[0x224B346078805008], &STACK[0x27F2AA98AED1F0C7], &STACK[0x3B5F75C64C87E158], &STACK[0x2CB46329DC91CFA6]);
}

uint64_t sub_1000A1948(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  STACK[0x6E8] = a1 + v2;
  STACK[0x4F8] = *(v3 + 8 * v1);
  return (*(v3 + 8 * ((((v1 + 2653) | 0x3009) ^ 0x35AA) + v1)))();
}

uint64_t sub_1000A19EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = STACK[0x6E8];
  STACK[0x638] = STACK[0x6E8];
  return (*(v9 + 8 * (((v10 == v8) * ((17 * (a8 ^ 0x229A) - 735309070) & 0x2BD3FFAA ^ 0x1EC8)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000A1A44()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x54F4u)))(32);
  v3 = STACK[0x468];
  STACK[0x710] = v2 + 0x4761F68478C333F5;
  return (*(v3 + 8 * (((v2 != 0) * ((v0 - 1186197251) & 0x46B3FAFC ^ ((v0 ^ 0x3173) - 1349))) | v0)))();
}

uint64_t sub_1000A1AC8(uint64_t a1)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  *(a1 + 16) = 419260808;
  v4 = (*(v2 + 8 * (v1 + 6789)))(42);
  v5 = STACK[0x468];
  *(a1 + 24) = v4;
  return (*(v5 + 8 * (((((v1 + 44) ^ (v4 == 0)) & 1) * (((v1 + 57) | 0xE01) ^ 0x3E21)) | v1)))();
}

uint64_t sub_1000A1BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v19 = *v10 + v11 - 0x2FC92220EDE8F7EBLL;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((v20 + 0x72B0B1A0EB3E1587) | 0x4473AF4093FD868BLL) - ((v20 + 0x72B0B1A0EB3E1587) | v6) + v6;
  v22 = __ROR8__(v21 ^ 0x103499350F83EBA0, 8);
  v21 ^= 0x85B114325673479BLL;
  v23 = (v22 + v21) ^ 0x71739F379BF98FD9;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v4 - ((v25 + v24) | v4) + ((v25 + v24) | 0x7F9A3AB9788F529)) ^ 0x7923B3737F35115CLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xCB1FD105091A75A6;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30 - ((2 * (v29 + v30)) & 0x60317E7E2F95E7CELL) - 0x4FE740C0E8350C19) ^ 0x30BB974B947E342ELL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = *(v14 + 8 * v9);
  v34 = (__ROR8__(v31, 8) + v32) ^ 0x8562C5B0FD26117BLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x97F56CB0FB361A73;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  *v19 = (((((2 * ((v38 + v37) ^ 0x43F178B4D98B7452)) | 0x4770352C8FBEC122) - ((v38 + v37) ^ 0x43F178B4D98B7452) + 0x5C47E569B8209F6FLL) ^ 0x1850485775ACE65DLL) >> (8 * (v19 & 7u))) ^ HIBYTE(v12) ^ 0xBC;
  v39 = __ROR8__((v19 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = ((2 * ((v39 + 0x72B0B1A0EB3E1587) ^ 0x66E9636B7B522E08)) | 0x9198600C55AE5EBCLL) - ((v39 + 0x72B0B1A0EB3E1587) ^ 0x66E9636B7B522E08) + 0x3733CFF9D528D0A2;
  v41 = v40 ^ 0xFA626518CDFB6C7DLL;
  v40 ^= 0x6FE7E81F940BC046uLL;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0x71739F379BF98FD9;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x7EDA10D8E8BDE475;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xCB1FD105091A75A6;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x80A3287483B4C7C9;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = __ROR8__((((2 * (v50 + v49)) & 0x5B7AB7335E1C4A0ELL) - (v50 + v49) - 0x2DBD5B99AF0E2508) ^ 0x572061D6ADD7CB83, 8);
  v52 = (((2 * (v50 + v49)) & 0x5B7AB7335E1C4A0ELL) - (v50 + v49) - 0x2DBD5B99AF0E2508) ^ 0x572061D6ADD7CB83 ^ __ROR8__(v49, 61);
  *(v19 + 1) = (((__ROR8__((v51 + v52) ^ 0x97F56CB0FB361A73, 8) + ((v51 + v52) ^ 0x97F56CB0FB361A73 ^ __ROR8__(v52, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v19 + 1) & 7))) ^ BYTE2(v12) ^ 0x74;
  v53 = __ROR8__((v19 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v54 = ((2 * (v53 + 0x72B0B1A0EB3E1587)) | 0xD26D64F9B5F9A13CLL) - (v53 + 0x72B0B1A0EB3E1587) - 0x6936B27CDAFCD09ELL;
  v55 = __ROR8__(v54 ^ 0x3D7184094682BDB5, 8);
  v54 ^= 0xA8F4090E1F72118ELL;
  v56 = (v17 - ((v55 + v54) | v17) + ((v55 + v54) | 0xEF94574BDE807CEALL)) ^ 0x9EE7C87C4579F333;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x7EDA10D8E8BDE475;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xCB1FD105091A75A6;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (v62 + v61 - ((2 * (v62 + v61)) & 0xF13B5A97EEF23B9ALL) - 0x76252B40886E233) ^ 0x783E853F74CDDA04;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (v65 + v64 - ((2 * (v65 + v64)) & 0xD28C89D33650FA36) + 0x694644E99B287D1BLL) ^ 0xEC248159660E6C60;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x97F56CB0FB361A73;
  *(v19 + 2) = (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v67, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v19 + 2) & 7))) ^ BYTE1(v12) ^ 0x2D;
  v69 = __ROR8__((v19 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v70 = v69 - ((2 * v69 - 0x1A9E9CBE2983D4F2) & 0xD5FA7621D5890D1ELL) - 0x2252134E29FD63EALL;
  v71 = v70 ^ 0x3EBA0D6576BAEBA4;
  v70 ^= 0xAB3F80622F4A479FLL;
  v72 = (__ROR8__(v71, 8) + v70) ^ 0x71739F379BF98FD9;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (((v74 + v73) & 0xF13D7081F999AACFLL ^ 0xD1247000C089A841) + ((v74 + v73) & 0xEC28F7E06665530 ^ 0xC028C4806265401) - 1) ^ 0xA3FCEC902E121834;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v77 + v76 - ((2 * (v77 + v76)) & 0x72FEE9966B00DB32) - 0x46808B34CA7F9267) ^ 0x7260A5CE3C9A183FLL;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((2 * (v80 + v79)) | 0x9BF2874C46BB2BF0) - (v80 + v79) + a2) ^ v16;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v84 = ((a3 | (2 * (v83 + v82))) - (v83 + v82) + v15) ^ v13;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = ((v8 | (2 * (v86 + v85))) - (v86 + v85) + v18) ^ a1;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  *(v19 + 3) = v12 ^ ((((a4 | (2 * (v89 + v88))) - (v89 + v88) + v7) ^ v5) >> (8 * ((v19 + 3) & 7))) ^ 0xCC;
  return v33();
}

uint64_t sub_1000A25E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = *v7 + 4;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = (0xD4F4E5F14C1EA78 - v14) & 0x4CD81EFE8FE3B1B9 | (v14 + 0x72B0B1A0EB3E1587) & 0xB327E101701C4E46;
  v16 = v15 ^ 0x189F288B139DDC92;
  v15 ^= 0x8D1AA58C4A6D70A9;
  v17 = (__ROR8__(v16, 8) + v15) ^ 0x71739F379BF98FD9;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x7EDA10D8E8BDE475;
  v20 = __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + (v19 ^ v20)) ^ 0xCB1FD105091A75A6;
  v22 = v21 ^ __ROR8__(v19 ^ v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = *(v11 + 8 * v10);
  v25 = (((2 * (v23 + v22)) & 0xDA36B97DC122FFD4) - (v23 + v22) - 0x6D1B5CBEE0917FEBLL) ^ 0x12478B359CDA47DCLL;
  v26 = v25 ^ __ROR8__(v22, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x8562C5B0FD26117BLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x97F56CB0FB361A73;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  *(v12 + 4) = v9 ^ 0x8E ^ (((((2 * (v31 + v30)) & 0x690FF71E81D3EE3ELL) - (v31 + v30) - 0x3487FB8F40E9F720) ^ 0x33612E0554EEFA7ELL) >> (8 * (v13 & 7u)));
  v32 = __ROR8__((v12 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = ((2 * (v32 + 0x72B0B1A0EB3E1587)) | 0x587B403F710B33CALL) - (v32 + 0x72B0B1A0EB3E1587) - 0x2C3DA01FB88599E5;
  v34 = v33 ^ 0x787A966A24FBF4CELL;
  v33 ^= 0xEDFF1B6D7D0B58F5;
  v35 = __ROR8__(v34, 8);
  v36 = (v35 + v33 - ((2 * (v35 + v33)) & 0xB52AF481DEBED47ALL) - 0x256A85BF10A095C3) ^ 0xABE6E57774A6E5E4;
  v37 = v36 ^ __ROR8__(v33, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0x903F4534BF6955C0) - (v38 + v37) - 0x481FA29A5FB4AAE1) ^ 0xC93A4DBD48F6B16ALL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x5C307F409900B7F2) - (v41 + v40) + 0x51E7C05FB37FA406) ^ 0x9AF8115ABA65D1A0;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x80A3287483B4C7C9;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xEF0BBF44D834E002;
  v47 = (a7 - (v46 | a7) + (v46 | 0xA1B1096F1DF32D4FLL)) ^ 0xCBD8739B38E1DC36;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x97F56CB0FB361A73;
  v50 = __ROR8__(v49, 8) + (v49 ^ __ROR8__(v48, 61));
  *(v12 + 5) = v8 ^ 0x97 ^ (((((2 * v50) | 0x39371380251567D4) - v50 + 0x6364763FED754C16) ^ 0x6482A3B5F9724174) >> (8 * ((v12 + 5) & 7)));
  return v24();
}

uint64_t sub_1000A2BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  STACK[0x768] = 0x4761F68478C333F5;
  STACK[0x6A0] = STACK[0x640];
  LODWORD(STACK[0x510]) = 1170161237;
  STACK[0x6F0] = a16;
  LODWORD(STACK[0x704]) = -943473148;
  return (*(v17 + 8 * v16))();
}

uint64_t sub_1000A2C44@<X0>(unsigned int a1@<W8>)
{
  v10 = (v4 - 1);
  v11 = (v10 | ((v10 < a1) << 32)) - 2108551390;
  v12 = __ROR8__((v3 + v11) & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((((v1 - 1765041085) & 0x69343E9F) + 2 * v12 + 0x13276F239AA69976) & 0x342873A98AD947FALL) - v12 + 0x7C580E996D400B40;
  v14 = v13 ^ 0xE7032B1EC5ACBAFCLL;
  v13 ^= 0xAB9E9790AF363CEFLL;
  v15 = (__ROR8__(v14, 8) + v13) ^ 0x77E35FD4FCBE378CLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * ((v17 + v16) ^ 0xF6AEE054754389DLL)) | 0x3D94508AC2692B62) - ((v17 + v16) ^ 0xF6AEE054754389DLL) + 0x6135D7BA9ECB6A4FLL) ^ 0xDAFE3CECB45269C2;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((v20 + v19) | 0x51D6D0FFAE3A569) - ((v20 + v19) | 0xFAE292F0051C5A96) - 0x51D6D0FFAE3A56ALL) ^ 0x86B986DBF6DF0A7FLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((v23 + v22) ^ 0x85589D175C9E908DLL | 0x96FF2CDCF76A7483) - ((v23 + v22) ^ 0x85589D175C9E908DLL | 0x6900D32308958B7CLL);
  v25 = __ROR8__((v11 + v2 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v24 + 0x6900D32308958B7CLL) ^ 0xE6FED07976CBC527;
  v27 = (0xD4F4E5F14C1EA78 - v25) & 0x24C78A4147FCF091 | (v25 + 0x72B0B1A0EB3E1587) & 0xDB3875BEB8030F6ELL;
  v28 = v27 ^ 0x7080BC34DB829DBALL;
  v29 = v26 ^ __ROR8__(v22, 61);
  v27 ^= 0xE505313382723181;
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v27)) | 0x2BDD0FE7DCDD5514) - (v30 + v27) - 0x15EE87F3EE6EAA8ALL) ^ 0x649D18C475972553;
  v32 = (__ROR8__(v26, 8) + v29) ^ 0x398AD2670602F2C9;
  v33 = v31 ^ __ROR8__(v27, 61);
  v34 = (__ROR8__(v31, 8) + v33) ^ v8;
  v35 = v32 ^ __ROR8__(v29, 61);
  v36 = v34 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v34, 8) + v36) ^ v6;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v32, 8);
  v40 = (__ROR8__(v37, 8) + v38) ^ v7;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((v42 + v41) | 0x285B7E9D65539A48) - ((v42 + v41) | 0xD7A481629AAC65B7) - 0x285B7E9D65539A49) ^ 0xAD39BB2D98758B33;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((v39 + v35) | 0x8C95B2AD3DC6AD54) - ((v39 + v35) | 0x736A4D52C23952ABLL) + 0x736A4D52C23952ABLL) ^ 0x80DD35D3FA23D5DCLL;
  v47 = ((v45 + v44) | 0x5921EBC31F8451B6) - ((v45 + v44) | 0xA6DE143CE07BAE49);
  v48 = __ROR8__((v47 - 0x5921EBC31F8451B7) ^ 0xCED48773E4B24BC5, 8) + ((v47 - 0x5921EBC31F8451B7) ^ 0xCED48773E4B24BC5 ^ __ROR8__(v44, 61));
  *(v11 + v2 + 10) = (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v35, 61))) ^ 0xAC4C9E6531F6AF30) >> (8 * ((v3 + v10 + 34) & 7))) ^ ((((v48 | 0x6F8694E9435EF63ELL) - (v48 | 0x90796B16BCA109C1) - 0x6F8694E9435EF63FLL) ^ 0x979FBE9CA8A604A0) >> (8 * ((v11 + v2 + 10) & 7))) ^ *(v3 + v11);
  return (*(v9 + 8 * (((v10 == a1) * v5) ^ v1)))();
}

uint64_t sub_1000A327C@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, unint64_t a8@<X8>)
{
  v18 = *(v17 + 8 * (LODWORD(STACK[0x464]) + 870));
  *&STACK[0x320] = vdupq_n_s64(0x38uLL);
  *&STACK[0x330] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2E0] = vdupq_n_s64(v8);
  *&STACK[0x430] = vdupq_n_s64(v16);
  *&STACK[0x420] = vdupq_n_s64(0x8D4F4E5F14C1EA78);
  *&STACK[0x410] = vdupq_n_s64(v9);
  *&STACK[0x310] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x400] = vdupq_n_s64(v10);
  *&STACK[0x2C0] = vdupq_n_s64(0x71739F379BF98FD9uLL);
  *&STACK[0x2D0] = vdupq_n_s64(v11);
  *&STACK[0x2A0] = vdupq_n_s64(v13);
  *&STACK[0x2B0] = vdupq_n_s64(a8);
  *&STACK[0x280] = vdupq_n_s64(v15);
  *&STACK[0x290] = vdupq_n_s64(v14);
  *&STACK[0x3E0] = vdupq_n_s64(0x9912DC3759E6E132);
  *&STACK[0x3F0] = vdupq_n_s64(0x80A3287483B4C7C9);
  *&STACK[0x3D0] = vdupq_n_s64(v12);
  *&STACK[0x260] = vdupq_n_s64(a2);
  *&STACK[0x270] = vdupq_n_s64(a1);
  *&STACK[0x200] = vdupq_n_s64(a3);
  *&STACK[0x240] = vdupq_n_s64(a5);
  *&STACK[0x250] = vdupq_n_s64(a4);
  *&STACK[0x220] = vdupq_n_s64(a7);
  *&STACK[0x230] = vdupq_n_s64(a6);
  *&STACK[0x210] = xmmword_1004248A0;
  return v18();
}

uint64_t sub_1000A33C8@<X0>(int a1@<W8>)
{
  v17.i64[0] = v1 - v2 + 27;
  v17.i64[1] = v1 - v2 + 26;
  v18.i64[0] = v1 - v2 + 29;
  v18.i64[1] = v1 - v2 + 28;
  v19.i64[0] = v1 - v2 + 33;
  v19.i64[1] = v1 - v2 + 32;
  v20 = v19;
  *&STACK[0x390] = v19;
  v19.i64[0] = v1 + v7 - v2;
  v19.i64[1] = v1 - v2 + 30;
  v21 = v19;
  *&STACK[0x350] = v19;
  v19.i64[0] = v1 - v2 + 37;
  v19.i64[1] = v1 - v2 + 36;
  *&STACK[0x450] = v19;
  v19.i64[0] = v1 - v2 + 39;
  v19.i64[1] = v1 - v2 + 38;
  v22 = v19;
  *&STACK[0x340] = v19;
  v19.i64[0] = v1 - v2 + 41;
  v19.i64[1] = v1 - v2 + 40;
  v23 = v19;
  *&STACK[0x3B0] = v19;
  v19.i64[0] = v1 - v2 + (v5 & v6) - 2027;
  v19.i64[1] = v1 - v2 + 34;
  v24 = v19;
  *&STACK[0x3C0] = v19;
  v25 = *&STACK[0x330];
  v26 = vandq_s8(v21, *&STACK[0x330]);
  v27 = vandq_s8(v20, *&STACK[0x330]);
  v28 = vandq_s8(v18, *&STACK[0x330]);
  v29 = vandq_s8(v17, *&STACK[0x330]);
  v30 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v32 = *&STACK[0x2E0];
  v33 = vsraq_n_u64(*&STACK[0x2E0], v27, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v35 = vsraq_n_u64(*&STACK[0x2E0], v28, 8uLL);
  v36 = vsraq_n_u64(*&STACK[0x2E0], v29, 8uLL);
  v37 = vsraq_n_u64(*&STACK[0x2E0], v26, 8uLL);
  *&STACK[0x3A0] = vandq_s8(v23, *&STACK[0x330]);
  v38 = *&STACK[0x430];
  v39 = *&STACK[0x420];
  v40 = *&STACK[0x410];
  *&STACK[0x370] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x420], vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL)), *&STACK[0x410]), vorrq_s8(v37, *&STACK[0x430]));
  *&STACK[0x360] = vandq_s8(v24, v25);
  v41 = vaddq_s64(vorrq_s8(vsubq_s64(v39, v31), v40), vorrq_s8(v33, v38));
  v42 = vsubq_s64(*&STACK[0x310], vaddq_s64(vorrq_s8(vsubq_s64(v39, v30), v40), vorrq_s8(v36, v38)));
  v43 = vsubq_s64(*&STACK[0x310], vaddq_s64(vorrq_s8(vsubq_s64(v39, v34), v40), vorrq_s8(v35, v38)));
  v44 = veorq_s8(v43, *&STACK[0x400]);
  v45 = veorq_s8(v42, *&STACK[0x400]);
  v46 = veorq_s8(v42, *&STACK[0x2D0]);
  v47 = veorq_s8(v43, *&STACK[0x2D0]);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), *&STACK[0x2C0]);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), *&STACK[0x2C0]);
  v52 = veorq_s8(v51, v50);
  v53 = veorq_s8(v48, v49);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v52), v12);
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v53), v12);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v58 = veorq_s8(v54, v55);
  v59 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(v61, vandq_s8(vaddq_s64(v61, v61), *&STACK[0x2A0])), *&STACK[0x290]), v13);
  v63 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(v60, vandq_s8(vaddq_s64(v60, v60), *&STACK[0x2A0])), *&STACK[0x290]), v13);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = veorq_s8(v62, v63);
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), *&STACK[0x3F0]);
  v70 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v71 = veorq_s8(v68, *&STACK[0x3F0]);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v70);
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), *&STACK[0x3E0]), v76), *&STACK[0x3D0]), v15);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), *&STACK[0x3E0]), v75), *&STACK[0x3D0]), v15);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v81 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80);
  v83 = vaddq_s64(v81, v79);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, v16), vorrq_s8(v82, v11)), v11), v14);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v83, v16), vorrq_s8(v83, v11)), v11), v14);
  v86 = vandq_s8(v22, v25);
  v87 = vsubq_s64(*&STACK[0x310], v41);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL)));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL)));
  v194.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v88, v88), *&STACK[0x240]), v88), *&STACK[0x230]), v9), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), v10)));
  v194.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v89, v89), *&STACK[0x240]), v89), *&STACK[0x230]), v9), vnegq_s64(vandq_s8(vshlq_n_s64(v18, 3uLL), v10)));
  v90 = veorq_s8(v87, *&STACK[0x400]);
  v91 = veorq_s8(v87, *&STACK[0x2D0]);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), *&STACK[0x2C0]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v12);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), *&STACK[0x2A0])), *&STACK[0x290]), v13);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), *&STACK[0x3F0]);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v101, v101), *&STACK[0x3E0]), v101), *&STACK[0x3D0]), v15);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v104, v16), vorrq_s8(v104, v11)), v11), v14);
  v106 = vandq_s8(*&STACK[0x450], v25);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL)));
  v108 = vsubq_s64(*&STACK[0x310], *&STACK[0x370]);
  v194.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v107, v107), *&STACK[0x240]), v107), *&STACK[0x230]), v9), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), v10)));
  v109 = veorq_s8(v108, *&STACK[0x400]);
  v110 = veorq_s8(v108, *&STACK[0x2D0]);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), *&STACK[0x2C0]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v12);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), *&STACK[0x2A0])), *&STACK[0x290]), v13);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), *&STACK[0x3F0]);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), *&STACK[0x3E0]), v120), *&STACK[0x3D0]), v15);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v16), vorrq_s8(v123, v11)), v11), v14);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL)));
  v194.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v125, v125), *&STACK[0x240]), v125), *&STACK[0x230]), v9), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v10)));
  v126 = vsubq_s64(*&STACK[0x310], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x420], vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL)), *&STACK[0x410]), vorrq_s8(vsraq_n_u64(v32, v106, 8uLL), *&STACK[0x430])));
  v127 = vsubq_s64(*&STACK[0x310], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x420], vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL)), *&STACK[0x410]), vorrq_s8(vsraq_n_u64(v32, v86, 8uLL), *&STACK[0x430])));
  v107.i64[0] = vqtbl4q_s8(v194, *&STACK[0x210]).u64[0];
  v128 = veorq_s8(v127, *&STACK[0x400]);
  v194.val[0] = veorq_s8(v126, *&STACK[0x400]);
  v129 = veorq_s8(v126, *&STACK[0x2D0]);
  v130 = veorq_s8(v127, *&STACK[0x2D0]);
  v194.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194.val[0], 0x38uLL), v194.val[0], 8uLL), v129), *&STACK[0x2C0]);
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v130), *&STACK[0x2C0]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = veorq_s8(v194.val[0], vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v194.val[1] = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194.val[0], 0x38uLL), v194.val[0], 8uLL), v133);
  v194.val[0] = veorq_s8(vaddq_s64(v194.val[1], v132), v12);
  v194.val[1] = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v135 = veorq_s8(v134, v12);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(v194.val[0], v194.val[1]);
  v194.val[1] = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194.val[0], 0x38uLL), v194.val[0], 8uLL), v137);
  v194.val[0] = vaddq_s64(v194.val[1], v136);
  v194.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v194.val[0], vandq_s8(vaddq_s64(v194.val[0], v194.val[0]), *&STACK[0x2A0])), *&STACK[0x290]), v13);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(v138, vandq_s8(vaddq_s64(v138, v138), *&STACK[0x2A0])), *&STACK[0x290]), v13);
  v194.val[1] = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v141 = veorq_s8(v194.val[0], v194.val[1]);
  v194.val[1] = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194.val[0], 0x38uLL), v194.val[0], 8uLL), v141);
  v194.val[0] = veorq_s8(vaddq_s64(v194.val[1], v140), *&STACK[0x3F0]);
  v194.val[1] = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v143 = veorq_s8(v142, *&STACK[0x3F0]);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v145 = veorq_s8(v194.val[0], v194.val[1]);
  v194.val[1] = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194.val[0], 0x38uLL), v194.val[0], 8uLL), v145);
  v194.val[0] = vaddq_s64(v194.val[1], v144);
  v194.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v194.val[0], v194.val[0]), *&STACK[0x3E0]), v194.val[0]), *&STACK[0x3D0]), v15);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), *&STACK[0x3E0]), v146), *&STACK[0x3D0]), v15);
  v194.val[1] = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(v194.val[0], v194.val[1]);
  v194.val[1] = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194.val[0], 0x38uLL), v194.val[0], 8uLL), v149);
  v194.val[0] = vaddq_s64(v194.val[1], v148);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, v16), vorrq_s8(v150, v11)), v11), v14);
  v194.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v194.val[0], v16), vorrq_s8(v194.val[0], v11)), v11), v14);
  v152 = vsubq_s64(*&STACK[0x310], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x420], vsraq_n_u64(vshlq_n_s64(*&STACK[0x3A0], 0x38uLL), *&STACK[0x3A0], 8uLL)), *&STACK[0x410]), vorrq_s8(vsraq_n_u64(v32, *&STACK[0x3A0], 8uLL), *&STACK[0x430])));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL)));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194.val[0], 0x38uLL), v194.val[0], 8uLL), veorq_s8(v194.val[0], vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL)));
  v194.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v153, v153), *&STACK[0x240]), v153), *&STACK[0x230]), v9), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x450], 3uLL), v10)));
  v194.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v154, v154), *&STACK[0x240]), v154), *&STACK[0x230]), v9), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), v10)));
  v155 = veorq_s8(v152, *&STACK[0x400]);
  v156 = veorq_s8(v152, *&STACK[0x2D0]);
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), *&STACK[0x2C0]);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v12);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(v161, vandq_s8(vaddq_s64(v161, v161), *&STACK[0x2A0])), *&STACK[0x290]), v13);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), *&STACK[0x3F0]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), *&STACK[0x3E0]), v166), *&STACK[0x3D0]), v15);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v16), vorrq_s8(v169, v11)), v11), v14);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL)));
  v172 = vsubq_s64(*&STACK[0x310], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x420], vsraq_n_u64(vshlq_n_s64(*&STACK[0x360], 0x38uLL), *&STACK[0x360], 8uLL)), *&STACK[0x410]), vorrq_s8(vsraq_n_u64(v32, *&STACK[0x360], 8uLL), *&STACK[0x430])));
  v173 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), *&STACK[0x240]), v171), *&STACK[0x230]), v9), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v10)));
  v174 = veorq_s8(v172, *&STACK[0x400]);
  v175 = veorq_s8(v172, *&STACK[0x2D0]);
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), *&STACK[0x2C0]);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v12);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(v180, vandq_s8(vaddq_s64(v180, v180), *&STACK[0x2A0])), *&STACK[0x290]), v13);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), *&STACK[0x3F0]);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v185, v185), *&STACK[0x3E0]), v185), *&STACK[0x3D0]), v15);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v188, v16), vorrq_s8(v188, v11)), v11), v14);
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL)));
  v194.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v190, v190), *&STACK[0x240]), v190), *&STACK[0x230]), v9), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), v10)));
  v190.i64[0] = vqtbl4q_s8(v194, *&STACK[0x210]).u64[0];
  v190.i64[1] = v107.i64[0];
  v191 = vrev64q_s8(*(v4 + v7 - v2));
  v187.i64[0] = 0x1212121212121212;
  v187.i64[1] = 0x1212121212121212;
  v192 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v191, v191, 8uLL), v187), v190));
  *(v1 - v2 + 26) = vextq_s8(v192, v192, 8uLL);
  return (*(v8 + 8 * (((v2 == 16) * a1) ^ v3)))();
}

uint64_t sub_1000A3F34(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  STACK[0x5B8] = 0x4761F68478C333F5;
  STACK[0x6A0] = STACK[0x638];
  LODWORD(STACK[0x510]) = -796229959;
  STACK[0x6F0] = a14;
  LODWORD(STACK[0x704]) = -943473149;
  return (*(v14 + 8 * a1))();
}

uint64_t sub_1000A3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(STACK[0x550] - 0x4761F68478C333DDLL);
  v23 = (a17 - v19 - 10) < 0x10 || *(&off_10044E3E0 + v17 - 1250) - v19 - 1950978892 < ((v17 + 5570) ^ 0x1BCFuLL) || *(&off_10044E3E0 + (v17 ^ 0x6A9)) - v19 - 563677862 < 0x10 || *(&off_10044E3E0 + (v17 ^ 0x666)) - v19 - 693756424 < 0x10;
  return (*(v18 + 8 * ((208 * (((v17 - 62) ^ v23) & 1)) ^ (v17 + 13640))))();
}

uint64_t sub_1000A4148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v21.i64[0] = v7 + 23;
  v21.i64[1] = v7 + 22;
  *&STACK[0x450] = v21;
  v22.i64[0] = v7 + 25;
  v22.i64[1] = v7 + 24;
  v23.i64[0] = v7 + 19;
  v23.i64[1] = v7 + 18;
  v24.i64[0] = v7 + 21;
  v24.i64[1] = v7 + 20;
  v25.i64[0] = v7 + 15;
  v25.i64[1] = v7 + 14;
  v26.i64[0] = v7 + 17;
  v26.i64[1] = v7 + 16;
  v27.i64[0] = v7 + 11;
  v27.i64[1] = v7 + 10;
  v28.i64[0] = v7 + 13;
  v28.i64[1] = v7 + 12;
  v29 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v30 = vdupq_n_s64(v13);
  v31 = vdupq_n_s64(v12);
  v32 = vdupq_n_s64(v11);
  v33 = vdupq_n_s64(v19);
  v34 = vdupq_n_s64(a7);
  v35 = vandq_s8(v28, v29);
  v36 = vandq_s8(v27, v29);
  v37 = vandq_s8(v26, v29);
  v38 = vandq_s8(v25, v29);
  v39 = vandq_s8(v24, v29);
  v40 = vandq_s8(v23, v29);
  v41 = vandq_s8(v22, v29);
  v42 = vandq_s8(v21, v29);
  v43 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v51 = vdupq_n_s64(v18);
  v52 = vaddq_s64(v50, v51);
  v53 = vaddq_s64(v49, v51);
  v54 = vaddq_s64(v48, v51);
  v55 = vaddq_s64(v47, v51);
  v56 = vaddq_s64(v46, v51);
  v57 = vaddq_s64(v45, v51);
  v58 = vaddq_s64(v44, v51);
  v59 = vaddq_s64(v43, v51);
  v60 = vdupq_n_s64(0xD4F4E5F14C1EA78uLL);
  v61 = vaddq_s64(vandq_s8(vsubq_s64(v60, v43), v30), v59);
  v62 = vaddq_s64(vandq_s8(vsubq_s64(v60, v44), v30), v58);
  v63 = vaddq_s64(vandq_s8(vsubq_s64(v60, v45), v30), v57);
  v64 = vaddq_s64(vandq_s8(vsubq_s64(v60, v46), v30), v56);
  v65 = vaddq_s64(vandq_s8(vsubq_s64(v60, v47), v30), v55);
  v66 = vaddq_s64(vandq_s8(vsubq_s64(v60, v48), v30), v54);
  v67 = vaddq_s64(vandq_s8(vsubq_s64(v60, v49), v30), v53);
  v68 = vandq_s8(v59, v30);
  v69 = vandq_s8(v58, v30);
  v70 = vandq_s8(v57, v30);
  v71 = vandq_s8(v56, v30);
  v72 = vandq_s8(v55, v30);
  v73 = vandq_s8(v54, v30);
  v74 = vandq_s8(v53, v30);
  v75 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v60, v50), v30), v52), vandq_s8(v52, v30));
  v76 = vsubq_s64(v67, v74);
  v77 = vsubq_s64(v66, v73);
  v78 = vsubq_s64(v65, v72);
  v79 = vsubq_s64(v64, v71);
  v80 = vsubq_s64(v63, v70);
  v81 = vsubq_s64(v62, v69);
  v82 = vsubq_s64(v61, v68);
  v83 = veorq_s8(v82, v31);
  v84 = veorq_s8(v81, v31);
  v85 = veorq_s8(v80, v31);
  v86 = veorq_s8(v79, v31);
  v87 = veorq_s8(v78, v31);
  v88 = veorq_s8(v77, v31);
  v89 = veorq_s8(v76, v31);
  v90 = veorq_s8(v75, v31);
  v91 = veorq_s8(v75, v32);
  v92 = veorq_s8(v76, v32);
  v93 = veorq_s8(v77, v32);
  v94 = veorq_s8(v78, v32);
  v95 = veorq_s8(v79, v32);
  v96 = veorq_s8(v80, v32);
  v97 = veorq_s8(v81, v32);
  v98 = veorq_s8(v82, v32);
  v99 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v92);
  v101 = vdupq_n_s64(v14);
  v102 = veorq_s8(vaddq_s64(v99, v91), v101);
  v103 = veorq_s8(v100, v101);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v93), v101);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v94), v101);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v95), v101);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v96), v101);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v97), v101);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v98), v101);
  v110 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v117 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v118 = veorq_s8(v108, v116);
  v119 = veorq_s8(v107, v115);
  v120 = veorq_s8(v106, v114);
  v121 = veorq_s8(v105, v113);
  v122 = veorq_s8(v104, v112);
  v123 = veorq_s8(v103, v111);
  v124 = veorq_s8(v102, v110);
  v125 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v124);
  v133 = vaddq_s64(v131, v123);
  v134 = veorq_s8(vaddq_s64(v125, v117), v33);
  v135 = veorq_s8(vaddq_s64(v126, v118), v33);
  v136 = veorq_s8(vaddq_s64(v127, v119), v33);
  v137 = veorq_s8(vaddq_s64(v128, v120), v33);
  v138 = veorq_s8(vaddq_s64(v129, v121), v33);
  v139 = veorq_s8(vaddq_s64(v130, v122), v33);
  v140 = veorq_s8(v133, v33);
  v141 = veorq_s8(v132, v33);
  v142 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v149 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v150 = veorq_s8(v140, v148);
  v151 = veorq_s8(v139, v147);
  v152 = veorq_s8(v138, v146);
  v153 = veorq_s8(v137, v145);
  v154 = veorq_s8(v136, v144);
  v155 = veorq_s8(v135, v143);
  v156 = veorq_s8(v134, v142);
  v157 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v156);
  v165 = vdupq_n_s64(v15);
  v166 = veorq_s8(vaddq_s64(v157, v149), v165);
  v167 = veorq_s8(vaddq_s64(v158, v150), v165);
  v168 = veorq_s8(vaddq_s64(v159, v151), v165);
  v169 = veorq_s8(vaddq_s64(v160, v152), v165);
  v170 = veorq_s8(vaddq_s64(v161, v153), v165);
  v171 = veorq_s8(vaddq_s64(v162, v154), v165);
  v172 = veorq_s8(vaddq_s64(v163, v155), v165);
  v173 = veorq_s8(v164, v165);
  v174 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL);
  v181 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v182 = veorq_s8(v172, v180);
  v183 = veorq_s8(v171, v179);
  v184 = veorq_s8(v170, v178);
  v185 = veorq_s8(v169, v177);
  v186 = veorq_s8(v168, v176);
  v187 = veorq_s8(v167, v175);
  v188 = veorq_s8(v166, v174);
  v189 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v188);
  v197 = vaddq_s64(v194, v186);
  v198 = vaddq_s64(v189, v181);
  v199 = vdupq_n_s64(0x80A3287483B4C7C9);
  v200 = veorq_s8(v198, v199);
  v201 = veorq_s8(vaddq_s64(v190, v182), v199);
  v202 = veorq_s8(vaddq_s64(v191, v183), v199);
  v203 = veorq_s8(vaddq_s64(v192, v184), v199);
  v204 = veorq_s8(vaddq_s64(v193, v185), v199);
  v205 = veorq_s8(v197, v199);
  v206 = veorq_s8(vaddq_s64(v195, v187), v199);
  v207 = veorq_s8(v196, v199);
  v208 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v211 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v212 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v213 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v214 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v215 = veorq_s8(v205, v212);
  v216 = veorq_s8(v204, v211);
  v217 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v218 = veorq_s8(v202, v210);
  v219 = veorq_s8(v201, v209);
  v220 = veorq_s8(v200, v208);
  v221 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v226 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v220);
  v228 = vaddq_s64(v226, v219);
  v229 = vaddq_s64(v225, v218);
  v230 = vaddq_s64(v224, v217);
  v231 = vaddq_s64(v223, v216);
  v232 = vaddq_s64(v222, v215);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v214);
  v234 = vaddq_s64(v221, v213);
  v235 = vandq_s8(vaddq_s64(v227, v227), v34);
  v236 = vandq_s8(vaddq_s64(v228, v228), v34);
  v237 = vandq_s8(vaddq_s64(v229, v229), v34);
  v238 = vandq_s8(vaddq_s64(v230, v230), v34);
  v239 = vandq_s8(vaddq_s64(v231, v231), v34);
  v240 = vandq_s8(vaddq_s64(v232, v232), v34);
  v241 = vsubq_s64(v234, vandq_s8(vaddq_s64(v234, v234), v34));
  v242 = vsubq_s64(v233, vandq_s8(vaddq_s64(v233, v233), v34));
  v243 = vsubq_s64(v231, v239);
  v244 = vsubq_s64(v230, v238);
  v245 = vdupq_n_s64(v10);
  v246 = vaddq_s64(vsubq_s64(v227, v235), v245);
  v247 = vaddq_s64(vsubq_s64(v228, v236), v245);
  v248 = vaddq_s64(vsubq_s64(v229, v237), v245);
  v249 = vaddq_s64(v244, v245);
  v250 = vaddq_s64(v243, v245);
  v251 = vaddq_s64(vsubq_s64(v232, v240), v245);
  v252 = vaddq_s64(v242, v245);
  v253 = vaddq_s64(v241, v245);
  v254 = vdupq_n_s64(v9);
  v255 = veorq_s8(v253, v254);
  v256 = veorq_s8(v252, v254);
  v257 = veorq_s8(v251, v254);
  v258 = veorq_s8(v250, v254);
  v259 = veorq_s8(v249, v254);
  v260 = veorq_s8(v248, v254);
  v261 = veorq_s8(v247, v254);
  v262 = veorq_s8(v246, v254);
  v263 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v264 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v265 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v266 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v267 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v268 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v269 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v270 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v271 = veorq_s8(v261, v269);
  v272 = veorq_s8(v260, v268);
  v273 = veorq_s8(v259, v267);
  v274 = veorq_s8(v258, v266);
  v275 = veorq_s8(v257, v265);
  v276 = veorq_s8(v256, v264);
  v277 = veorq_s8(v255, v263);
  v278 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v272);
  v281 = vaddq_s64(v278, v270);
  v282 = vdupq_n_s64(v16);
  v283 = veorq_s8(v281, v282);
  v284 = veorq_s8(vaddq_s64(v279, v271), v282);
  v285 = veorq_s8(v280, v282);
  v286 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v273), v282);
  v287 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), v274), v282);
  v288 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v275), v282);
  v289 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v276), v282);
  v290 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v277), v282);
  v291 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v292 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v293 = vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL);
  v294 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v295 = vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL);
  v296 = vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL);
  v297 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL));
  v298 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v299 = veorq_s8(v283, v291);
  v300 = vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL);
  v301 = vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL);
  v302 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), veorq_s8(v288, v296));
  v303 = vdupq_n_s64(0xF8192A75EBF8F29ELL);
  v304 = veorq_s8(vaddq_s64(v301, v298), v303);
  v305 = vdupq_n_s64(0x38uLL);
  v306 = vrev64q_s8(veorq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), veorq_s8(v284, v292)), v303), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v305))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL), v299), v303), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x450], 3uLL), v305)))), vuzp1q_s32(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), veorq_s8(v286, v294)), v303), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v305))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), veorq_s8(v285, v293)), v303), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v305))))), vuzp1q_s16(vuzp1q_s32(vshlq_u64(veorq_s8(v302, v303), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v305))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), veorq_s8(v287, v295)), v303), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v305)))), vuzp1q_s32(vshlq_u64(veorq_s8(vaddq_s64(v300, v297), v303), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v305))), vshlq_u64(v304, vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v305)))))), xmmword_100425030));
  *(v7 + 10) = veorq_s8(vextq_s8(v306, v306, 8uLL), *v17);
  return (*(v20 + 8 * (v8 & 0x2C34FBFF)))(a1, a2, a3, a4, a5, a6, ((v8 & 0x2C34FBFF) + 982138144) & 0x4575AF0E);
}

uint64_t sub_1000A4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  STACK[0x540] = 0x4761F68478C333F5;
  STACK[0x6A0] = STACK[0x7B0];
  LODWORD(STACK[0x510]) = 1813326314;
  STACK[0x6F0] = a15;
  LODWORD(STACK[0x704]) = -943473152;
  return (*(v15 + 8 * a7))();
}

uint64_t sub_1000A4B48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v43 = v41 - 349713871 + v29;
  v44 = __ROR8__((v43 + 10) & ((v31 - 13298) - 2070), 8);
  v45 = -2 - (((0x8D4F4E5F14C1EA78 - v44) | v33) + ((v44 + v32) | v40));
  v46 = v45 ^ v34;
  v47 = v45 ^ v35;
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x71739F379BF98FD9;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ a8;
  v51 = __ROR8__(v50, 8);
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = (v51 + v52 - (v37 & (2 * (v51 + v52))) + v38) ^ v39;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x80A3287483B4C7C9;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) & 0x9912DC3759E6E132) - (v57 + v56) + v36) ^ a1;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((v60 + v59) | a2) - ((v60 + v59) | a3) + a3) ^ a4;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  *(v43 + 10) = *(a29 + v41 - 349713871) ^ 0x12 ^ ((((a5 | (2 * (v63 + v62))) - (v63 + v62) + a6) ^ a7) >> (8 * ((v41 + 49 + v29 + 10) & 7)));
  return (*(v42 + 8 * ((45 * (v41 - 1 == v30)) ^ v31)))();
}

uint64_t sub_1000A4CB8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a5 - 1492408667 + v6;
  v21 = __ROR8__((v20 + 2072) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((0xD4F4E5F14C1EA78 - v21) & v11) + v21 + v17 - ((v21 + v17) & v11);
  v23 = v22 ^ v10;
  v24 = v22 ^ v9;
  v25 = (__ROR8__(v23, 8) + v24) ^ v13;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v18;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v14;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x80A3287483B4C7C9;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - (a6 & (2 * (v33 + v32))) + v8) ^ v7;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v15;
  *(v20 + 2072) = *(a2 + a5 - 1492408667 + 1031 * (a1 ^ 0x1BDDu)) ^ *(v16 + a5 - 1492408667 + 1031 * (a1 ^ 0x1BDDu)) ^ *(a5 - 1492408667 + a3 + 2069) ^ *(a5 - 1492408667 + a4 + 2066) ^ (47 * (a5 - 91 + 7 * (a1 ^ 0xDD))) ^ (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v20 + 24) & 7)));
  return (*(v19 + 8 * ((63 * (a5 - 1 != v12)) ^ a1)))();
}

uint64_t sub_1000A5130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = (v8 - 1);
  v24 = v23 == v22;
  v25 = (v23 | ((v23 < v22) << 32)) + v13;
  v26 = v25 + v9 + 10;
  v27 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = v27 - ((2 * v27 - 0x1A9E9CBE2983D4F2) & 0xA682CC081D3CC4C6) + 0x49F217A4F9DC77EALL;
  v29 = v28 ^ a1;
  v30 = v28 ^ a2;
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x71739F379BF98FD9;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x7EDA10D8E8BDE475;
  v34 = __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + (v33 ^ v34)) ^ 0xCB1FD105091A75A6;
  v36 = v35 ^ __ROR8__(v33 ^ v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - (a3 & (2 * (v37 + v36))) + a4) ^ a5;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - (a6 & (2 * (v40 + v39))) + a7) ^ a8;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = ((v16 | (2 * ((v43 + v42) ^ v15))) - ((v43 + v42) ^ v15) + v17) ^ v18;
  v45 = __ROR8__(v44, 8);
  v46 = __ROR8__(v42, 61);
  *v26 = (((v10 - ((v45 + (v44 ^ v46)) | v10) + ((v45 + (v44 ^ v46)) | v19)) ^ v14) >> (8 * (v26 & 7u))) ^ *(v12 + v25);
  v47 = v24;
  return (*(v20 + 8 * ((v47 * v21) ^ v11)))();
}

uint64_t sub_1000A5394@<X0>(int a1@<W8>)
{
  v7 = (v4 - 1);
  v8 = (v7 | ((v7 < v1) << 32)) - 279801104;
  v9 = v8 + v2 + 10;
  v10 = ((a1 - 7039) | 0x605u) + 0x72B0B1A0EB3E1587 + __ROR8__((v3 + v8) & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = ((v10 - 1565) | 0x4FAF6E94D8C1692CLL) - ((v10 - 1565) | 0xB050916B273E96D3) - 0x4FAF6E94D8C1692DLL;
  v12 = v11 ^ 0x1BE858E144BF0407;
  v11 ^= 0x8E6DD5E61D4FA83CLL;
  v13 = (__ROR8__(v12, 8) + v11) ^ 0x71739F379BF98FD9;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x7EDA10D8E8BDE475;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xCB1FD105091A75A6;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x80A3287483B4C7C9;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x8562C5B0FD26117BLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8) + 0x72B0B1A0EB3E1587;
  v24 = (v23 | 0x1ABEEDF775B7C90ALL) - (v23 | 0xE54112088A4836F5) - 0x1ABEEDF775B7C90BLL;
  v25 = v24 ^ 0x4EF9DB82E9C9A421;
  v24 ^= 0xDB7C5685B039081ALL;
  v26 = (__ROR8__(v21, 8) + v22) ^ 0x97F56CB0FB361A73;
  v27 = (__ROR8__(v25, 8) + v24) ^ 0x71739F379BF98FD9;
  v28 = v27 ^ __ROR8__(v24, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x7EDA10D8E8BDE475;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(v26, 8) + (v26 ^ __ROR8__(v22, 61));
  v33 = __ROR8__((v31 + v30 - ((2 * (v31 + v30)) & 0xCA64426AC452CB7CLL) - 0x1ACDDECA9DD69A42) ^ 0x2E2DF0306B331018, 8);
  v34 = (v31 + v30 - ((2 * (v31 + v30)) & 0xCA64426AC452CB7CLL) - 0x1ACDDECA9DD69A42) ^ 0x2E2DF0306B331018 ^ __ROR8__(v30, 61);
  v35 = __ROR8__((v33 + v34) ^ 0x80A3287483B4C7C9, 8);
  v36 = (v33 + v34) ^ 0x80A3287483B4C7C9 ^ __ROR8__(v34, 61);
  v37 = __ROR8__((v35 + v36) ^ 0x8562C5B0FD26117BLL, 8);
  v38 = (v35 + v36) ^ 0x8562C5B0FD26117BLL ^ __ROR8__(v36, 61);
  *v9 = (((__ROR8__((v37 + v38) ^ 0x97F56CB0FB361A73, 8) + ((v37 + v38) ^ 0x97F56CB0FB361A73 ^ __ROR8__(v38, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * (v9 & 7u))) ^ (((((2 * v32) | 0x4F0E3F734592CA70) - v32 - 0x27871FB9A2C96538) ^ 0xDF9E35CC493197A6) >> (8 * ((v3 + v7 - 16) & 7))) ^ *(v3 + v8);
  return (*(v6 + 8 * (((v7 != v1) * v5) ^ a1)))();
}

uint64_t sub_1000A57C0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 - 0x4761F68478C333DDLL);
  v5 = __ROR8__((v4 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = *(v3 + 8 * v2);
  v7 = (0x8D4F4E5F14C1EA78 - v5) & 0xB123D19BF46E51D1 | (v5 + 0x72B0B1A0EB3E1587) & 0x4ADC2E640B91AE2ELL;
  v8 = v7 ^ 0xE564E7EE68103CFALL;
  v7 ^= 0x70E16AE931E090C1uLL;
  v9 = __ROR8__(v8, 8);
  v10 = (v9 + v7 - ((2 * (v9 + v7)) & 0xB542D5AA10E925ELL) + 0x5AA16AD5087492FLL) ^ 0x74D9899ACB7EC6F6;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((v12 + v11) ^ 0xB15146501DE8B6F8) - ((2 * ((v12 + v11) ^ 0xB15146501DE8B6F8)) & 0x2FBBA3BDFDFC908ALL) + 0x17DDD1DEFEFE4845) ^ 0xD85687560BAB1AC8;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0xDBBCA2A7F6876CE0) - (v15 + v14) + 0x1221AEAC04BC498FLL) ^ 0xD93E7FA90DA63C29;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x80A3287483B4C7C9;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0xC1F3C952FDBD84A4) - 0x1F061B5681213DAELL) ^ 0x659B211983F8D329;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x97F56CB0FB361A73;
  v4[10] = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 10) & 7u))) ^ HIBYTE(a1) ^ 0x3C;
  v24 = __ROR8__((v4 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v24 - ((2 * v24 + 0x5616341D67C2B0ELL) & 0x10309689D7FEB624) - 0x137031A28C28F67;
  v26 = v25 ^ 0xD85F7D3177813639;
  v25 ^= 0x4DDAF0362E719A02uLL;
  v27 = __ROR8__(v26, 8);
  v28 = (((v27 + v25) | 0x337A902E34222EAELL) - ((v27 + v25) | 0xCC856FD1CBDDD151) - 0x337A902E34222EAFLL) ^ 0x42090F19AFDBA177;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((v30 + v29) | 0x7B372A0BF60D2AC5) - ((v30 + v29) | 0x84C8D5F409F2D53ALL) - 0x7B372A0BF60D2AC6) ^ 0x5ED3AD31EB0CEB0;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xCB1FD105091A75A6;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x80A3287483B4C7C9;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x8562C5B0FD26117BLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x97F56CB0FB361A73;
  v4[11] = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 11) & 7u))) ^ BYTE6(a1) ^ 0x37;
  v40 = __ROR8__((v4 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = ((2 * v40 - 0x1A9E9CBE2983D4F2) & 0xB50EA0BD07EE0F74) - v40 + 0x32C7FE0090CAE2BELL;
  v42 = v41 ^ 0xF13F99D4E076956ELL;
  v41 ^= 0x64BA14D3B9863955uLL;
  v43 = (__ROR8__(v42, 8) + v41) ^ 0x71739F379BF98FD9;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x7EDA10D8E8BDE475;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xCB1FD105091A75A6;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x80A3287483B4C7C9;
  v50 = __ROR8__(v49, 8);
  v51 = v49 ^ __ROR8__(v48, 61);
  v52 = (((v50 + v51) | 0xAE83C850330BCB1ELL) - ((v50 + v51) | 0x517C37AFCCF434E1) + 0x517C37AFCCF434E1) ^ 0x2BE10DE0CE2DDA65;
  v53 = __ROR8__(v52, 8);
  v54 = v52 ^ __ROR8__(v51, 61);
  v55 = (((2 * (v53 + v54)) & 0x8B666A266E091910) - (v53 + v54) - 0x45B3351337048C89) ^ 0x2DB9A65C33CD6904;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v4[12] = (((((2 * (v57 + v56)) | 0x21458F0F9B85813CLL) - (v57 + v56) - 0x10A2C787CDC2C09ELL) ^ 0xE8BBEDF2263A3200) >> (8 * ((v4 + 12) & 7u))) ^ BYTE5(a1) ^ 0x27;
  v58 = __ROR8__((v4 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = (0xD4F4E5F14C1EA78 - v58) & 0x745A46F181E71788 | (v58 + 0x72B0B1A0EB3E1587) & 0x8BA5B90E7E18E877;
  v60 = v59 ^ 0x201D70841D997AA3;
  v59 ^= 0xB598FD834469D698;
  v61 = __ROR8__(v60, 8);
  v62 = __ROR8__((((2 * (v61 + v59)) | 0x26843C234468C454) - (v61 + v59) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3, 8);
  v63 = (((2 * (v61 + v59)) | 0x26843C234468C454) - (v61 + v59) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3 ^ __ROR8__(v59, 61);
  v64 = (((v62 + v63) | 0x61D635255ACF2C94) - ((v62 + v63) | 0x9E29CADAA530D36BLL) - 0x61D635255ACF2C95) ^ 0x1F0C25FDB272C8E1;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xCB1FD105091A75A6;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x80A3287483B4C7C9;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((v70 + v69) | 0xBAAB3E68C36E4B71) - ((v70 + v69) | 0x4554C1973C91B48ELL) + 0x4554C1973C91B48ELL) ^ 0x3FC9FBD83E485A0ALL;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x97F56CB0FB361A73;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((((v75 + v74) ^ 0x4325F627768ABA89 | 0x899A10D664E772BCLL) - ((v75 + v74) ^ 0x4325F627768ABA89 | 0x7665EF299B188D43) + 0x7665EF299B188D43) ^ 0x32A6CC84F9953AABLL) >> (8 * ((v4 + 13) & 7u))) ^ BYTE4(a1) ^ 0x12;
  v77 = __ROR8__((v4 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v4[13] = v76;
  v78 = ((v77 + 0x72B0B1A0EB3E1587) | 0x393C5199A3ABE61FLL) - ((v77 + 0x72B0B1A0EB3E1587) | 0xC6C3AE665C5419E0) - 0x393C5199A3ABE620;
  v79 = v78 ^ 0x6D7B67EC3FD58B34;
  v78 ^= 0xF8FEEAEB6625270FLL;
  v80 = __ROR8__(v79, 8);
  v81 = __ROR8__((((2 * (v80 + v78)) & 0xA01676447DFA0AA6) - (v80 + v78) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575, 8);
  v82 = (((2 * (v80 + v78)) & 0xA01676447DFA0AA6) - (v80 + v78) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575 ^ __ROR8__(v78, 61);
  v83 = (v81 + v82) ^ 0x7EDA10D8E8BDE475;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xCB1FD105091A75A6;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (v87 + v86 - ((2 * (v87 + v86)) & 0x281B8329B2C6E956) + 0x140DC194D96374ABLL) ^ 0x94AEE9E05AD7B362;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((v90 + v89) | 0x73019C173CCE7FA9) - ((v90 + v89) | 0x8CFE63E8C3318056) - 0x73019C173CCE7FAALL) ^ 0xF66359A7C1E86ED2;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (((v93 + v92) | 0x5071512C1C535486) - ((v93 + v92) | 0xAF8EAED3E3ACAB79) - 0x5071512C1C535487) ^ 0xC7843D9CE7654EF5;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = __ROR8__(v94, 8);
  v4[14] = (((v96 + v95 - ((2 * (v96 + v95)) & 0x52FFCC8FA67424BALL) + 0x297FE647D33A125DLL) ^ 0xD166CC3238C2E0C3) >> (8 * ((v4 + 14) & 7u))) ^ BYTE3(a1) ^ 0xAA;
  v97 = __ROR8__((v4 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v98 = ((2 * v97 + 0x65616341D67C2B0ELL) & 0x40755CE9BCEE341ELL) - v97 - 0x16EB6015C9B52F97;
  v99 = v98 ^ 0xF8267FEBDF688DBLL;
  v98 ^= 0x9A07EAF9E40624E0;
  v100 = (__ROR8__(v99, 8) + v98) ^ 0x71739F379BF98FD9;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (v102 + v101 - ((2 * (v102 + v101)) & 0x6FB477EC2E9438B2) + 0x37DA3BF6174A1C59) ^ 0x49002B2EFFF7F82CLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = __ROR8__(v103, 8);
  v106 = __ROR8__((((2 * (v105 + v104)) & 0x6760441E82814852) - (v105 + v104) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70, 8);
  v107 = (((2 * (v105 + v104)) & 0x6760441E82814852) - (v105 + v104) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70 ^ __ROR8__(v104, 61);
  v108 = (((2 * (v106 + v107)) & 0x14B03C0D0DEA5DFELL) - (v106 + v107) + 0x75A7E1F9790AD100) ^ 0xF504C98DFABE16C9;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((v110 + v109) | 0x39BC71E438FBF891) - ((v110 + v109) | 0xC6438E1BC704076ELL) - 0x39BC71E438FBF892) ^ 0xBCDEB454C5DDE9EALL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (((2 * (v113 + v112)) & 0xFC603D156314A35ELL) - (v113 + v112) - 0x7E301E8AB18A51B0) ^ 0x163A8DC5B543B423;
  v4[15] = (((__ROR8__(v114, 8) + (v114 ^ __ROR8__(v112, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 15) & 7u))) ^ BYTE2(a1) ^ 0x4B;
  v115 = __ROR8__((v4 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = (v115 + 0x72B0B1A0EB3E1587) ^ 0xC1C2BB72C58EC110;
  v117 = (__ROR8__((v115 + 0x72B0B1A0EB3E1587) ^ 0x544736759C7E6D2BLL, 8) + v116) ^ 0x71739F379BF98FD9;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x7EDA10D8E8BDE475;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = __ROR8__((v121 + v120 - ((2 * (v121 + v120)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338, 8);
  v123 = (v121 + v120 - ((2 * (v121 + v120)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338 ^ __ROR8__(v120, 61);
  v124 = (v122 + v123 - ((2 * (v122 + v123)) & 0xBC90FC75EE7BA9DCLL) - 0x21B781C508C22B12) ^ 0x5EEB564E74891327;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0x8562C5B0FD26117BLL;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0x97F56CB0FB361A73;
  v4[16] = (((__ROR8__(v128, 8) + (v128 ^ __ROR8__(v127, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 16) & 7u))) ^ BYTE1(a1) ^ 0xC;
  v129 = __ROR8__((v4 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v130 = ((2 * (v129 + 0x72B0B1A0EB3E1587)) | 0xA5E64CF69756B5C4) - (v129 + 0x72B0B1A0EB3E1587) + 0x2D0CD984B454A51ELL;
  v131 = v130 ^ 0x86B4100ED7D537C9;
  v130 ^= 0x13319D098E259BF2uLL;
  v132 = __ROR8__(v131, 8);
  v133 = (((2 * (v132 + v130)) | 0x559C992A13D30352) - (v132 + v130) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70;
  v134 = v133 ^ __ROR8__(v130, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0x7EDA10D8E8BDE475;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0xCB1FD105091A75A6;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x80A3287483B4C7C9;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((2 * (v141 + v140)) & 0x3B5AD3916A0336E4) - (v141 + v140) - 0x1DAD69C8B5019B73) ^ 0x67305387B7D875F6;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0x97F56CB0FB361A73;
  v4[17] = (((__ROR8__(v144, 8) + (v144 ^ __ROR8__(v143, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 17) & 7u))) ^ a1 ^ 0xF8;
  return v6();
}

uint64_t sub_1000A6680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20)
{
  STACK[0x780] = 0x4761F68478C333F5;
  STACK[0x6A0] = STACK[0x9E0];
  LODWORD(STACK[0x510]) = STACK[0xBE0];
  STACK[0x6F0] = a20;
  LODWORD(STACK[0x704]) = -943473146;
  return (*(v21 + 8 * (v20 + 497)))();
}

uint64_t sub_1000A6728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  STACK[0x798] = 0x4761F68478C333F5;
  STACK[0x6A0] = STACK[0x828];
  LODWORD(STACK[0x510]) = STACK[0xBA8];
  STACK[0x6F0] = a21;
  LODWORD(STACK[0x704]) = -943473150;
  return (*(v22 + 8 * ((v21 - 1742523386) ^ 0x9823322D ^ (6207 * (v21 - 1742523386 < (v21 ^ 0x2C97B187u))))))();
}

uint64_t sub_1000A68EC@<X0>(void *a1@<X8>)
{
  *(v3 - 0x4761F68478C333F5) = v1;
  *(v1 - 0x4761F68478C333EDLL) = *a1;
  return (*(v4 + 8 * (((((v2 - 330324537) | 0x815) ^ 0xEC4FAFB5) + v2) ^ (4284 * (v2 < 0xA2EC39AD)))))();
}

uint64_t sub_1000A69A0()
{
  v2 = STACK[0x5B8];
  v3 = *(STACK[0x5B8] - 0x4761F68478C333EDLL);
  v4 = STACK[0x710];
  *(v4 - 0x4761F68478C333EDLL) = v3;
  *(v4 - 0x4761F68478C333F5) = *(v2 - 0x4761F68478C333F5);
  return (*(v1 + 8 * (((v3 == 0x4761F68478C333F5) * (v0 - 27835 + ((v0 - 163120437) & 0x9B8E7E7))) ^ v0)))();
}

uint64_t sub_1000A6C28()
{
  v3 = (*(v2 + 8 * (v1 ^ v0)))();
  v4 = STACK[0x468];
  *(STACK[0x5B8] - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * (v1 ^ 0x4BEB6FFA ^ (14970 * (v1 > 0xFB2DED9F)))))(v3);
}

uint64_t sub_1000A6CDC@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 12656)))(a1 - 0x4761F68478C333F5);
  v4 = STACK[0x468];
  STACK[0x5B8] = 0x4761F68478C333F5;
  return (*(v4 + 8 * (((LODWORD(STACK[0x5D0]) == -1418238986) * ((((v1 - 352888292) & 0x15088FFE) + 7341) ^ (v1 + 4537))) ^ (v1 + 1471))))(v3);
}

uint64_t sub_1000A6DBC()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x60BF)))();
  v4 = STACK[0x468];
  *(v1 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1000A7084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = STACK[0x6E8];
  STACK[0x7B0] = STACK[0x6E8];
  return (*(v9 + 8 * (((v10 == v8) * (((a8 - 7983) | 0xC01) ^ 0x2DD0 ^ (394 * (a8 ^ 0x1F25)))) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000A70DC()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x6B8A)))(32);
  v3 = STACK[0x468];
  STACK[0x550] = v2 + 0x4761F68478C333F5;
  return (*(v3 + 8 * ((62 * (((v2 == 0) ^ (v0 - 45)) & 1)) ^ v0)))();
}

uint64_t sub_1000A7164(uint64_t a1)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  *(a1 + 16) = 419260792;
  v4 = (*(v2 + 8 * (v1 + 8987)))(26);
  v5 = STACK[0x468];
  *(a1 + 24) = v4;
  return (*(v5 + 8 * (((v4 == 0) * ((((v1 - 1702987617) & 0x658173FD) - 3444) ^ (313 * (v1 ^ 0x273E)))) ^ v1)))();
}

uint64_t sub_1000A7358@<X0>(void *a1@<X8>)
{
  *(v3 - 0x4761F68478C333F5) = v1;
  *(v1 - 0x4761F68478C333EDLL) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000A73E0()
{
  v2 = STACK[0x540];
  v3 = *(STACK[0x540] - 0x4761F68478C333EDLL);
  v4 = STACK[0x550];
  *(v4 - 0x4761F68478C333EDLL) = v3;
  *(v4 - 0x4761F68478C333F5) = *(v2 - 0x4761F68478C333F5);
  return (*(v1 + 8 * (((v3 != 0x4761F68478C333F5) * ((v0 + 348) ^ 0x1873)) ^ v0)))();
}

uint64_t sub_1000A764C()
{
  v2 = (*(v1 + 8 * (v0 + 14205)))();
  v3 = STACK[0x468];
  *(STACK[0x540] - 0x4761F68478C333DDLL) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000A76DC@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 14010)))(a1 - 0x4761F68478C333F5);
  v4 = STACK[0x468];
  STACK[0x540] = 0x4761F68478C333F5;
  return (*(v4 + 8 * (((LODWORD(STACK[0x774]) == -1418238986) * ((((v1 - 5014) | 0x98) + 17915) ^ (v1 - 1894257834) & 0x70E847BF)) ^ v1)))(v3);
}

uint64_t sub_1000A77C4()
{
  v3 = (*(v2 + 8 * (v0 + 13754)))();
  v4 = STACK[0x468];
  *(v1 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1000A7984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x9F0];
  LODWORD(STACK[0x98C]) = STACK[0x7CC];
  return (*(v8 + 8 * (((v9 != 0) * (v7 ^ 0x376D)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000A79C0@<X0>(int a1@<W8>)
{
  STACK[0x838] = 0;
  LODWORD(STACK[0x914]) = 1055313029;
  STACK[0x718] = 0;
  LODWORD(STACK[0xA2C]) = -1240130101;
  STACK[0x620] = 0;
  return (*(v2 + 8 * ((437 * (a1 != ((106 * (v1 ^ 0x3762)) ^ 0x328B) - 1240131666)) ^ (106 * (v1 ^ 0x3762)))))();
}

uint64_t sub_1000A7A30()
{
  v3 = 2054851651 * ((-2 - ((~(v1 - 216) | 0x1EC18F436B648A91) + ((v1 - 216) | 0xE13E70BC949B756ELL))) ^ 0xBF36F4B8E7CA25B7);
  *(v1 - 216) = *(v2 + 8 * v0) - v3;
  *(v1 - 204) = (v0 - 1915005007) ^ v3;
  v4 = (*(v2 + 8 * (v0 ^ 0x4FA2)))(v1 - 216);
  return (*(STACK[0x468] + 8 * (v0 ^ (v0 - 1013859806) & 0x3C6E4BAB ^ 0x3A91 ^ (32179 * (*(v1 - 208) == ((v0 - 299) | 0x141) - 1418240501)))))(v4);
}

uint64_t sub_1000A7B2C()
{
  v4 = 53688491 * (((v1 | 0xEBFADCC1842B475ALL) - (v1 & 0xEBFADCC1842B475ALL)) ^ 0x431E99FA32329F8CLL);
  *(v2 - 208) = *(v3 + 8 * v0) ^ v4;
  *(v2 - 200) = v4 - 939497975 + v0;
  v5 = (*(v3 + 8 * (v0 + 17519)))(v2 - 216);
  v6 = STACK[0x468];
  v7 = *(v2 - 216);
  v8 = *(&off_10044E3E0 + (v0 ^ 0x460));
  v9 = *(&off_10044E3E0 + v0 - 1229);
  if (v7 == (((v0 - 72) ^ 0xF7) + 7))
  {
    v10 = v9 - 1414356775;
  }

  else
  {
    v10 = v8 - 1580036722;
  }

  STACK[0x620] = v10;
  v11 = (v9 - 1414356751);
  v12 = (v8 - 1580036698);
  if (v7 == (((v0 - 72) ^ 0xF7) + 7))
  {
    v12 = v11;
  }

  return (*(v6 + 8 * (v0 ^ 0xE64 ^ (1492 * (*v12 == 47)))))(v5);
}

uint64_t sub_1000A7C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (v10 + 40);
  v15 = (v9 + 40);
  if (v7 == v8)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = *v16;
  v18 = STACK[0x840];
  STACK[0x498] = &STACK[0xCA7CCBE83EA7CFF] + STACK[0x840];
  STACK[0x840] = v18 + 48;
  STACK[0x9F8] = v11;
  STACK[0x4F0] = 0x5AB679E9A06C14EALL;
  STACK[0x4B8] = 0x270676553BF336C1;
  STACK[0x488] = v17;
  return (*(v13 + 8 * (((v17 != 0xAFE9FCD361E1173) * ((v12 - 4125) ^ (v12 - 4151))) ^ v12)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000A7D24()
{
  v3 = *(v2 + 8 * (v0 ^ 0xD41 ^ (5886 * (v0 == -96533014))));
  LODWORD(STACK[0x420]) = v1;
  return v3();
}

uint64_t sub_1000A7E10()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xAF9)))(112);
  v3 = STACK[0x468];
  STACK[0xA20] = v2 + 0x5AB679E9A06C14EALL;
  return (*(v3 + 8 * (((v2 != 0) * (v0 ^ 0x40D5)) ^ v0)))();
}

uint64_t sub_1000A7E78(uint64_t a1)
{
  *a1 = 320605855;
  *(a1 + 4) = 716240777;
  *(a1 + 72) = 1233350219;
  *(a1 + 76) = 1233350219;
  *(a1 + 80) = 545;
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 24) = v3;
  *(a1 + 32) = v3;
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  *(a1 + 56) = v3;
  *(a1 + 64) = v3;
  v6 = STACK[0xA20];
  *(v6 - 0x5AB679E9A06C1496) = -1125453800;
  *(v6 - 0x5AB679E9A06C1482) = 49289790;
  *(v6 + v4) = v3;
  *(v6 - 0x5AB679E9A06C148ALL) = v3;
  *(v6 - 0x5AB679E9A06C147ELL) = 28;
  *(v1 - 0x224B346078804A10) = v6;
  return (*(v5 + 8 * v2))();
}

uint64_t sub_1000A7FE8()
{
  v5 = STACK[0x488];
  *(v1 - 0x5AB679E9A06C1482) = 49289774;
  *(v1 - 0x5AB679E9A06C1483) = *(v5 - 0xAFE9FCD361E115CLL);
  *(v1 - 0x5AB679E9A06C1484) = *(v5 - 0xAFE9FCD361E115DLL);
  *(v1 - 0x5AB679E9A06C1485) = *(v5 - 0xAFE9FCD361E115ELL);
  *(v1 - 0x5AB679E9A06C1486) = *(v5 - 0xAFE9FCD361E115FLL);
  *(v1 - 0x5AB679E9A06C1487) = *(v5 - 0xAFE9FCD361E1160);
  *(v1 - 0x5AB679E9A06C1488) = *(v5 - 0xAFE9FCD361E1161);
  *(v1 - 0x5AB679E9A06C1489) = *(v5 - 0xAFE9FCD361E1162);
  *(v1 - 0x5AB679E9A06C148ALL) = *(v5 - 0xAFE9FCD361E1163);
  *(v1 - 0x5AB679E9A06C148BLL) = *(v5 - 0xAFE9FCD361E1164);
  *(v1 - 0x5AB679E9A06C148CLL) = *(v5 - 0xAFE9FCD361E1165);
  *(v1 - 0x5AB679E9A06C148DLL) = *(v5 - 0xAFE9FCD361E1166);
  *(v1 - 0x5AB679E9A06C148ELL) = *(v5 - 0xAFE9FCD361E1167);
  *(v1 - 0x5AB679E9A06C148FLL) = *(v5 - 0xAFE9FCD361E1168);
  *(v1 - 0x5AB679E9A06C1490) = *(v5 - 0xAFE9FCD361E1169);
  *(v1 - 0x5AB679E9A06C1491) = *(v5 - 0xAFE9FCD361E116ALL);
  *(v1 + v3) = *(v5 - 0xAFE9FCD361E116BLL);
  return (*(v4 + 8 * (((STACK[0x4F0] == v2) * (((v0 ^ 0x509) - 3341) ^ 0xBCC)) ^ v0)))();
}

uint64_t sub_1000A8370@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 0x5AB679E9A06C14A2) = 1233350251;
  *(v2 - 0x5AB679E9A06C14C3) = *(a1 - 0xAFE9FCD361E113CLL);
  *(v2 - 0x5AB679E9A06C14C4) = *(a1 - 0xAFE9FCD361E113DLL);
  *(v2 - 0x5AB679E9A06C14C5) = *(a1 - 0xAFE9FCD361E113ELL);
  *(v2 - 0x5AB679E9A06C14C6) = *(a1 - 0xAFE9FCD361E113FLL);
  *(v2 - 0x5AB679E9A06C14C7) = *(a1 - 0xAFE9FCD361E1140);
  *(v2 - 0x5AB679E9A06C14C8) = *(a1 - 0xAFE9FCD361E1141);
  *(v2 - 0x5AB679E9A06C14C9) = *(a1 - 0xAFE9FCD361E1142);
  *(v2 - 0x5AB679E9A06C14CALL) = *(a1 - 0xAFE9FCD361E1143);
  *(v2 - 0x5AB679E9A06C14CBLL) = *(a1 - 0xAFE9FCD361E1144);
  *(v2 - 0x5AB679E9A06C14CCLL) = *(a1 - 0xAFE9FCD361E1145);
  *(v2 - 0x5AB679E9A06C14CDLL) = *(a1 - 0xAFE9FCD361E1146);
  *(v2 - 0x5AB679E9A06C14CELL) = *(a1 - 0xAFE9FCD361E1147);
  *(v2 - 0x5AB679E9A06C14CFLL) = *(a1 - 0xAFE9FCD361E1148);
  *(v2 - 0x5AB679E9A06C14D0) = *(a1 - 0xAFE9FCD361E1149);
  *(v2 - 0x5AB679E9A06C14D1) = *(a1 - 0xAFE9FCD361E114ALL);
  *(v2 - 0x5AB679E9A06C14D2) = *(a1 - 0xAFE9FCD361E114BLL);
  *(v2 - 0x5AB679E9A06C14D3) = *(a1 - 0xAFE9FCD361E114CLL);
  *(v2 - 0x5AB679E9A06C14D4) = *(a1 - 0xAFE9FCD361E114DLL);
  *(v2 - 0x5AB679E9A06C14D5) = *(a1 - 0xAFE9FCD361E114ELL);
  *(v2 - 0x5AB679E9A06C14D6) = *(a1 - 0xAFE9FCD361E114FLL);
  *(v2 - 0x5AB679E9A06C14D7) = *(a1 - 0xAFE9FCD361E1150);
  *(v2 - 0x5AB679E9A06C14D8) = *(a1 - 0xAFE9FCD361E1151);
  *(v2 - 0x5AB679E9A06C14D9) = *(a1 - 0xAFE9FCD361E1152);
  *(v2 - 0x5AB679E9A06C14DALL) = *(a1 - 0xAFE9FCD361E1153);
  *(v2 - 0x5AB679E9A06C14DBLL) = *(a1 - 0xAFE9FCD361E1154);
  *(v2 - 0x5AB679E9A06C14DCLL) = *(a1 - 0xAFE9FCD361E1155);
  *(v2 - 0x5AB679E9A06C14DDLL) = *(a1 - 0xAFE9FCD361E1156);
  *(v2 - 0x5AB679E9A06C14DELL) = *(a1 - 0xAFE9FCD361E1157);
  *(v2 - 0x5AB679E9A06C14DFLL) = *(a1 - 0xAFE9FCD361E1158);
  *(v2 - 0x5AB679E9A06C14E0) = *(a1 - 0xAFE9FCD361E1159);
  *(v2 - 0x5AB679E9A06C14E1) = *(a1 - 0xAFE9FCD361E115ALL);
  *(v2 - 0x5AB679E9A06C14E2) = *v3;
  return (*(v4 + 8 * v1))();
}

uint64_t sub_1000A8894@<X0>(uint64_t a1@<X8>)
{
  v5 = STACK[0x498];
  *(v5 - 0xCA7CCBE83EA709FLL) = 0x8C38D1834A63647;
  *(v5 - 0xCA7CCBE83EA7097) = *(a1 - 0xAFE9FCD361E1107) - 1240130101 - ((*(a1 - 0xAFE9FCD361E1107) << ((v2 - 49) ^ 0x30 ^ ((v2 + 68) | 0xBA))) & 0x6C2A3B96);
  *(v5 - 0xCA7CCBE83EA708FLL) = 0;
  *(v5 - 0xCA7CCBE83EA7087) = 1284922585;
  *(v5 - 0xCA7CCBE83EA7083) = v1 + 2;
  *(v5 - 0xCA7CCBE83EA707FLL) = -1240130097;
  *(v5 - 0xCA7CCBE83EA707BLL) = 686744947;
  STACK[0x7E0] = v5 + 0x24A0A544BB1DD6C8;
  LODWORD(STACK[0x6E4]) = 0;
  STACK[0x5E8] = v3;
  v6 = (*(v4 + 8 * (v2 ^ 0x6CAA)))(128);
  v7 = STACK[0x468];
  STACK[0x658] = v6 + 0x270676553BF336C1;
  return (*(v7 + 8 * ((476 * (v6 == 0)) ^ v2)))();
}

uint64_t sub_1000A8B28@<X0>(int a1@<W8>)
{
  v5 = a1 ^ 0x7AC;
  v6 = STACK[0x898];
  *(v1 - 0x5AB679E9A06C1482) = 49289774;
  *(v1 - 0x5AB679E9A06C1483) = *(v6 - 0xAFE9FCD361E115CLL);
  *(v1 - 0x5AB679E9A06C1484) = *(v6 - 0xAFE9FCD361E115DLL);
  *(v1 - 0x5AB679E9A06C1485) = *(v6 - 0xAFE9FCD361E115ELL);
  *(v1 - 0x5AB679E9A06C1486) = *(v6 - 0xAFE9FCD361E115FLL);
  *(v1 - 0x5AB679E9A06C1487) = *(v6 - 0xAFE9FCD361E1160);
  *(v1 - 0x5AB679E9A06C1488) = *(v6 - 0xAFE9FCD361E1161);
  *(v1 - 0x5AB679E9A06C1489) = *(v6 - 0xAFE9FCD361E1162);
  *(v1 - 0x5AB679E9A06C148ALL) = *(v6 - 0xAFE9FCD361E1163);
  *(v1 - 0x5AB679E9A06C148BLL) = *(v6 - 0xAFE9FCD361E1164);
  *(v1 - 0x5AB679E9A06C148CLL) = *(v6 - 0xAFE9FCD361E1165);
  *(v1 - 0x5AB679E9A06C148DLL) = *(v6 - 0xAFE9FCD361E1166);
  *(v1 - 0x5AB679E9A06C148ELL) = *(v6 - 0xAFE9FCD361E1167);
  *(v1 - 0x5AB679E9A06C148FLL) = *(v6 - 0xAFE9FCD361E1168);
  *(v1 - 0x5AB679E9A06C1490) = *(v6 - 0xAFE9FCD361E1169);
  *(v1 - 0x5AB679E9A06C1491) = *(v6 - 0xAFE9FCD361E116ALL);
  *(v1 + v3) = *(v6 - 0xAFE9FCD361E116BLL);
  return (*(v4 + 8 * ((16355 * (v2 & ~((v5 - 8100) ^ (*(v6 - 0xAFE9FCD361E116FLL) == (v5 ^ 0xBC))))) ^ v5)))();
}

uint64_t sub_1000A8EF8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 0x5AB679E9A06C14A2) = 1233350251;
  *(v1 - 0x5AB679E9A06C14C3) = *(a1 - 0xAFE9FCD361E113CLL);
  *(v1 - 0x5AB679E9A06C14C4) = *(a1 - 0xAFE9FCD361E113DLL);
  *(v1 - 0x5AB679E9A06C14C5) = *(a1 - 0xAFE9FCD361E113ELL);
  *(v1 - 0x5AB679E9A06C14C6) = *(a1 - 0xAFE9FCD361E113FLL);
  *(v1 - 0x5AB679E9A06C14C7) = *(a1 - 0xAFE9FCD361E1140);
  *(v1 - 0x5AB679E9A06C14C8) = *(a1 - 0xAFE9FCD361E1141);
  *(v1 - 0x5AB679E9A06C14C9) = *(a1 - 0xAFE9FCD361E1142);
  *(v1 - 0x5AB679E9A06C14CALL) = *(a1 - 0xAFE9FCD361E1143);
  *(v1 - 0x5AB679E9A06C14CBLL) = *(a1 - 0xAFE9FCD361E1144);
  *(v1 - 0x5AB679E9A06C14CCLL) = *(a1 - 0xAFE9FCD361E1145);
  *(v1 - 0x5AB679E9A06C14CDLL) = *(a1 - 0xAFE9FCD361E1146);
  *(v1 - 0x5AB679E9A06C14CELL) = *(a1 - 0xAFE9FCD361E1147);
  *(v1 - 0x5AB679E9A06C14CFLL) = *(a1 - 0xAFE9FCD361E1148);
  *(v1 - 0x5AB679E9A06C14D0) = *(a1 - 0xAFE9FCD361E1149);
  *(v1 - 0x5AB679E9A06C14D1) = *(a1 - 0xAFE9FCD361E114ALL);
  *(v1 - 0x5AB679E9A06C14D2) = *(a1 - 0xAFE9FCD361E114BLL);
  *(v1 - 0x5AB679E9A06C14D3) = *(a1 - 0xAFE9FCD361E114CLL);
  *(v1 - 0x5AB679E9A06C14D4) = *(a1 - 0xAFE9FCD361E114DLL);
  *(v1 - 0x5AB679E9A06C14D5) = *(a1 - 0xAFE9FCD361E114ELL);
  *(v1 - 0x5AB679E9A06C14D6) = *(a1 - 0xAFE9FCD361E114FLL);
  *(v1 - 0x5AB679E9A06C14D7) = *(a1 - 0xAFE9FCD361E1150);
  *(v1 - 0x5AB679E9A06C14D8) = *(a1 - 0xAFE9FCD361E1151);
  *(v1 - 0x5AB679E9A06C14D9) = *(a1 - 0xAFE9FCD361E1152);
  *(v1 - 0x5AB679E9A06C14DALL) = *(a1 - 0xAFE9FCD361E1153);
  *(v1 - 0x5AB679E9A06C14DBLL) = *(a1 - 0xAFE9FCD361E1154);
  *(v1 - 0x5AB679E9A06C14DCLL) = *(a1 - 0xAFE9FCD361E1155);
  *(v1 - 0x5AB679E9A06C14DDLL) = *(a1 - 0xAFE9FCD361E1156);
  *(v1 - 0x5AB679E9A06C14DELL) = *(a1 - 0xAFE9FCD361E1157);
  *(v1 - 0x5AB679E9A06C14DFLL) = *(a1 - 0xAFE9FCD361E1158);
  *(v1 - 0x5AB679E9A06C14E0) = *(a1 - 0xAFE9FCD361E1159);
  *(v1 - 0x5AB679E9A06C14E1) = *(a1 - 0xAFE9FCD361E115ALL);
  *(v1 - 0x5AB679E9A06C14E2) = *v3;
  return (*(v4 + 8 * ((v2 - 4944) ^ v2 ^ (24164 * (v2 == 732959776)))))();
}

uint64_t sub_1000A948C()
{
  *(v0 - 0x5AB679E9A06C1496) = *(STACK[0x898] - 0xAFE9FCD361E1173);
  v4 = STACK[0x840];
  STACK[0x500] = &STACK[0xC60] + STACK[0x840];
  STACK[0x840] = v4 + 32;
  v5 = STACK[0x778];
  STACK[0x9C0] = STACK[0x778];
  STACK[0x4D0] = 0;
  STACK[0x4E8] = 0;
  STACK[0x538] = 0;
  LODWORD(STACK[0x47C]) = 0;
  STACK[0x930] = v1;
  STACK[0x608] = 0;
  v6 = (*(v3 + 8 * (v2 ^ 0x67CF)))();
  if (v5)
  {
    v7 = LODWORD(STACK[0xA14]) == (v2 ^ 0x1F9F) + 1055291955 + 37 * (v2 ^ 0x2D57);
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(STACK[0x468] + 8 * ((23 * v8) | v2)))(v6);
}

uint64_t sub_1000A9574()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x7841)))(128);
  v3 = STACK[0x468];
  STACK[0x8D8] = v2 + 0x270676553BF336C1;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 - 4572) ^ 0x32A9 ^ (19 * (v0 ^ 0x32EC)))) ^ v0)))();
}

uint64_t sub_1000A970C()
{
  v2 = *(v1 + 8 * ((v0 - 1059) ^ 0xD05));
  LODWORD(STACK[0x450]) = -1240130101;
  LODWORD(STACK[0x430]) = -1240130101;
  return v2();
}

uint64_t sub_1000A973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x514]) = a8;
  LODWORD(STACK[0x954]) = STACK[0x430];
  LODWORD(STACK[0x9EC]) = STACK[0x450];
  LODWORD(STACK[0x974]) = STACK[0x420];
  return (*(v9 + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000A9788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x514]) = v9;
  LODWORD(STACK[0x954]) = STACK[0x430];
  LODWORD(STACK[0x9EC]) = STACK[0x450];
  LODWORD(STACK[0x974]) = a8;
  return (*(v10 + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000A97C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x514]) = v9;
  LODWORD(STACK[0x954]) = -1240130101;
  LODWORD(STACK[0x9EC]) = -1240130101;
  LODWORD(STACK[0x974]) = STACK[0x420];
  return (*(v10 + 8 * v8))(a1, 3351494148, a3, a4, a5, a6, a7, v7);
}

uint64_t sub_1000A982C()
{
  v3 = LODWORD(STACK[0x464]) + 5255;
  v4 = LODWORD(STACK[0x464]) + 4501;
  LODWORD(STACK[0x514]) = v1;
  LODWORD(STACK[0x954]) = STACK[0x430];
  LODWORD(STACK[0x9EC]) = STACK[0x450];
  LODWORD(STACK[0x974]) = STACK[0x420];
  return (*(v2 + 8 * (((v3 ^ 0x3970) * v0) ^ v4)))();
}

uint64_t sub_1000A98C4()
{
  v3 = (LODWORD(STACK[0x464]) - 73082398) & 0x45B2933;
  v4 = LODWORD(STACK[0x464]) + 8068;
  LODWORD(STACK[0x514]) = v1;
  LODWORD(STACK[0x954]) = STACK[0x430];
  LODWORD(STACK[0x9EC]) = STACK[0x450];
  LODWORD(STACK[0x974]) = STACK[0x420];
  return (*(v2 + 8 * (((v3 ^ 0x935) * v0) ^ v4)))();
}

uint64_t sub_1000A996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x400];
  LODWORD(STACK[0x514]) = a8;
  LODWORD(STACK[0x954]) = STACK[0x430];
  LODWORD(STACK[0x9EC]) = STACK[0x450];
  LODWORD(STACK[0x974]) = STACK[0x420];
  return (*(v8 + 8 * v9))();
}

uint64_t sub_1000A99C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x410];
  LODWORD(STACK[0x514]) = v8;
  LODWORD(STACK[0x954]) = STACK[0x430];
  LODWORD(STACK[0x9EC]) = STACK[0x450];
  LODWORD(STACK[0x974]) = a8;
  return (*(v9 + 8 * v10))();
}

uint64_t sub_1000A9A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x514]) = v7;
  LODWORD(STACK[0x954]) = STACK[0x430];
  LODWORD(STACK[0x9EC]) = STACK[0x450];
  LODWORD(STACK[0x974]) = v8;
  return (*(v10 + 8 * v9))(a1, a2, a3, a4, a5, a6, a7, 1418211938);
}

uint64_t sub_1000A9A6C()
{
  LODWORD(STACK[0x514]) = v1;
  LODWORD(STACK[0x954]) = STACK[0x430];
  LODWORD(STACK[0x9EC]) = STACK[0x450];
  LODWORD(STACK[0x974]) = v2;
  return (*(v3 + 8 * (v0 + v0 + 5582 + 2926)))();
}

uint64_t sub_1000A9AC0()
{
  LODWORD(STACK[0x514]) = v1;
  LODWORD(STACK[0x954]) = -1240130101;
  LODWORD(STACK[0x9EC]) = -1240130101;
  LODWORD(STACK[0x974]) = STACK[0x420];
  return (*(v2 + 8 * (((v0 ^ 0x636) + 8594) ^ v0 ^ 0x636)))();
}

uint64_t sub_1000A9B24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v12 = *(v11 + 8 * v7);
  v14 = v9 != v10 && a7 != 0x270676553BF336C1;
  return (*(v11 + 8 * ((v14 * (((23 * (v8 ^ 0x1582) - 2766) | 0x60C) + 8915)) ^ v8)))(v12, a1, a2, a3, a4, a5, a6, 1418211936);
}

uint64_t sub_1000A9B84@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  STACK[0x450] = a1;
  *(a2 - 0x270676553BF336B1) = *(v3 - 0x5AB679E9A06C14EALL);
  *(a2 - 0x270676553BF33669) = *(v3 - 0x5AB679E9A06C14A2);
  *(a2 - 0x270676553BF33665) = *(v3 - 0x5AB679E9A06C149ELL);
  *(a2 - 0x270676553BF33661) = *(v3 - 0x5AB679E9A06C149ALL);
  *(a2 - 0x270676553BF33660) = *(v3 - 0x5AB679E9A06C1499);
  *(a2 - 0x270676553BF33649) = *(v3 - 0x5AB679E9A06C1482);
  *(a2 - 0x270676553BF3365DLL) = *(v3 - 0x5AB679E9A06C1496);
  *(a2 - 0x270676553BF33645) = *(v3 - 0x5AB679E9A06C147ELL) & 1 ^ (((v2 + 31) & 0x57) - 47);
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000A9D78(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v16 = (v10 + v9) & 0xF;
  *(a2 + v10) = *(a4 + v10) ^ (-63 * v16) ^ *(*(v8 + 8 * a5) + a6 + v16) ^ *(*(v8 + 8 * a7) + a8 + v16) ^ v13 ^ *(a3 + v16 + *(v8 + 8 * v11) + v12 - 3624);
  return (*(v15 + 8 * (((v10 != -31) * v14) | a1)))();
}

uint64_t sub_1000A9EBC()
{
  v4 = v2 + v0 + ((((v1 - 5849) | 0x2446u) - 3409) ^ 0xCC4FFC6B9B873632);
  v5 = v0 + 0x270676553BF33659;
  v7 = *(&off_10044E3E0 + (v1 ^ 0x17C7)) + v5 - 453888039 >= 0x10 && v4 >= 0x10 && *(&off_10044E3E0 + (v1 ^ 0x1756)) + v5 - 1137891790 >= 0x10;
  v8 = *(&off_10044E3E0 + (v1 ^ 0x17D0)) + v5 - 953913542;
  v10 = !v7 || v8 < 0x10;
  return (*(v3 + 8 * ((44 * v10) ^ v1)))();
}

uint64_t sub_1000A9FF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v10 = *(v8 - 0x5AB679E9A06C14E6);
  *(a7 - 0x270676553BF336ADLL) = v10;
  return (*(v9 + 8 * (((((v7 - 810849948) & 0x79D7EEEB) + ((v7 + 546029764) & 0xDF742F5D) - 1233350831) * (v10 == 716240777)) ^ v7)))(STACK[0x450], a1, a2, a3, a4, a5, a6, 2876728310);
}

uint64_t sub_1000AA164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (((v7 - 5884) | 0x1502u) ^ 0xFFFFFFFF8873525BLL) + v6;
  *(v9 + v11) = *(v8 + v11) ^ *(a1 + v11) ^ *(a2 + v11) ^ *(a5 + v11) ^ (-25 * v11) ^ 0x12;
  return (*(v10 + 8 * ((9168 * (v6 - 1 == v5)) ^ v7)))();
}

uint64_t sub_1000AA3AC(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *(v1 - 0x270676553BF336B9) = a1 + v3;
  return (*(v4 + 8 * (((((((v2 | 0x1030) - 10783) | 0x122) + 13040) ^ (((v2 | 0x1030) - 2600) | 0x1460)) * (v1 == 0x270676553BF336C1)) ^ (v2 | 0x1030))))();
}

uint64_t sub_1000AA4C4(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *v1 = a1 + v3;
  return (*(v4 + 8 * (((STACK[0x7E0] != 0x314872033F084767) * (((v2 - 14432) | 0x215) - 1501)) ^ (v2 - 10796))))();
}

uint64_t sub_1000AA614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v13 = *v11;
  STACK[0x6C8] = *(v12 + 8 * a8);
  STACK[0x948] = v13;
  LODWORD(STACK[0x5D4]) = v10;
  STACK[0x6F8] = v8;
  return (*(v12 + 8 * (((v8 != 0x314872033F084767) * ((2 * v9) ^ 0xC50)) ^ (v9 + 14208))))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000AA6DC@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33)
{
  STACK[0x4B0] = *(v33 - 0x270676553BF336B9);
  LODWORD(STACK[0x634]) = 1082348533;
  STACK[0x6C0] = a33;
  LODWORD(STACK[0x7F4]) = -1565989279;
  return (*(v34 + 8 * ((7886 * ((a2 + 117823502) < 0x5958F98C)) ^ ((a2 ^ 0x3F0D) + a2 + 117823502 - 117836217))))(a1, 3351494148);
}

uint64_t sub_1000AA7C4()
{
  *(v1 - 216) = v0 + 2054851651 * ((v1 + 234084516 - 2 * ((v1 - 216) & 0xDF3D97C)) ^ 0x815D765A) + 13540;
  v3 = (*(v2 + 8 * (v0 + 18282)))(v1 - 216);
  v4 = STACK[0x468];
  STACK[0x4F8] = *(STACK[0x468] + 8 * v0);
  return (*(v4 + 8 * (v0 + 2267)))(v3);
}

uint64_t sub_1000AA9A4()
{
  STACK[0x818] = v1;
  STACK[0x900] = *(v2 + 8 * v0);
  return (*(v2 + 8 * ((((v0 + 2033395834) & 0x86CCFEE7) - 1432) ^ v0)))();
}

uint64_t sub_1000AA9E0()
{
  v1 = (LODWORD(STACK[0x464]) - 1563) | 0x189;
  v2 = LODWORD(STACK[0x464]) + 12912;
  STACK[0x658] = 0x270676553BF336C1;
  v3 = STACK[0x66C];
  STACK[0x4B8] = 0x270676553BF336C1;
  return (*(v0 + 8 * (((v3 == -1418238986) * (v1 + 148)) ^ v2)))();
}

uint64_t sub_1000AAAA4()
{
  v4 = *(v1 - 0x270676553BF336B9);
  STACK[0x640] = v4;
  return (*(v3 + 8 * (((((v4 == v2) ^ (v0 + 42)) & 1) * ((79 * (v0 ^ 0x4156)) ^ 0x1B8)) ^ v0)))();
}

uint64_t sub_1000AABB4()
{
  v2 = (*(v1 + 8 * (v0 + 5100)))(32);
  v3 = STACK[0x468];
  STACK[0x968] = v2 + 0x4761F68478C333F5;
  return (*(v3 + 8 * (((v2 != 0) * (((v0 ^ 0x366F) + 9460) ^ (1894 * (v0 ^ 0x366F)))) ^ v0)))();
}

uint64_t sub_1000AAC34(uint64_t a1)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v5 = (((5 * (v1 ^ 0x25C7)) ^ 0x293C) - 1240142166) ^ v2;
  STACK[0xAC0] = v5;
  LODWORD(v5) = ((v5 + 10) ^ 0x9FFFE95F) + 2029879295 + ((2 * (v5 + 10)) & 0x3FFFD2BE);
  *(a1 + 16) = v5;
  v6 = (*(v3 + 8 * (v1 + 9560)))((v5 - 419260766));
  v7 = STACK[0x468];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * ((498 * (v6 != 0)) ^ v1)))();
}

uint64_t sub_1000AAF30()
{
  v3 = (*(v2 + 8 * (v0 + 11212)))();
  v4 = STACK[0x468];
  *(v1 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1000AB030@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x21A;
  v3 = 178 * (a1 ^ 0x1D52);
  v4 = STACK[0x768];
  v5 = *(STACK[0x768] - 0x4761F68478C333EDLL);
  v6 = STACK[0x968];
  *(v6 - 0x4761F68478C333EDLL) = v5;
  *(v6 - 0x4761F68478C333F5) = *(v4 - 0x4761F68478C333F5);
  return (*(v1 + 8 * (((v5 != 0x4761F68478C333F5) * (v3 ^ 0x26DD)) ^ v2)))();
}

uint64_t sub_1000AB298()
{
  v2 = v0 | 0x280;
  v3 = (*(v1 + 8 * ((v0 | 0x280) ^ 0x59AB)))();
  v4 = STACK[0x468];
  *(STACK[0x768] - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_1000AB330@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 ^ 0x156D;
  v4 = (*(v2 + 8 * (v1 ^ 0x4250)))(a1 - 0x4761F68478C333F5);
  v5 = STACK[0x468];
  STACK[0x768] = 0x4761F68478C333F5;
  return (*(v5 + 8 * (((LODWORD(STACK[0x7BC]) == v3 - 1418246520) * (v3 + 8544)) ^ v3)))(v4);
}

uint64_t sub_1000AB3B8@<X0>(void *a1@<X8>)
{
  *(v3 - 0x4761F68478C333F5) = v1;
  *(v1 - 0x4761F68478C333EDLL) = *a1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000AB4C4@<X0>(int a1@<W8>)
{
  v4 = (a1 - 748476849) & 0x2C9CD9BE;
  *(v2 - 216) = v4 + 2054851651 * ((-2098112271 - ((v2 - 216) | 0x82F158F1) + ((v2 - 216) | 0x7D0EA70E)) ^ 0xF1A00828) + 9747;
  v5 = (*(v3 + 8 * (v4 ^ 0x5BE9)))(v2 - 216);
  v6 = STACK[0x468];
  *(v1 - 0xAFE9FCD361E1103) = ((v4 - 4476) | 0x403) ^ *(v2 - 208) ^ 0x437C9DAF;
  return (*(v6 + 8 * v4))(v5);
}

uint64_t sub_1000AB818()
{
  v3 = STACK[0x4B8];
  v4 = STACK[0x840];
  v5 = &STACK[0xC60] + STACK[0x840];
  STACK[0x6B0] = v5;
  v6 = v5 + 16;
  STACK[0x878] = (v5 + 16);
  STACK[0x8E0] = (v5 + 48);
  STACK[0x840] = v4 + 80;
  (*(v2 + 8 * (v0 + 2475)))();
  v7 = (*(STACK[0x468] + 8 * (v0 + 2475)))(v6, 0, 32);
  v8 = STACK[0x468];
  STACK[0xA00] = v1;
  STACK[0x908] = 0;
  LODWORD(STACK[0x604]) = -1240130101;
  STACK[0x470] = 0;
  LODWORD(STACK[0x724]) = 1055313029;
  STACK[0x760] = v3;
  return (*(v8 + 8 * (((v3 == 0x270676553BF336C1) * (((v0 - 1948184925) & 0x741EB5F6) - 1288)) ^ v0)))(v7);
}

uint64_t sub_1000AB910()
{
  STACK[0x860] = 0;
  LODWORD(STACK[0x51C]) = 1055313029;
  return (*(v1 + 8 * (v0 - 5003 + v0 + 12429)))();
}

uint64_t sub_1000AB9AC()
{
  v2 = STACK[0x860];
  v3 = STACK[0x51C];
  STACK[0x528] = STACK[0x300];
  STACK[0x4D8] = v2;
  LODWORD(STACK[0x7AC]) = v3;
  LODWORD(STACK[0xA30]) = 1044168123;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000ABB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x7D8] = *(v12 + 8 * v10);
  STACK[0x8A8] = v8;
  STACK[0x9D0] = 0;
  LODWORD(STACK[0xA0C]) = 1255259084;
  LODWORD(STACK[0x734]) = -1240130101;
  return (*(v12 + 8 * (((v9 == v11) * ((313 * (v7 ^ 0x45BB)) ^ ((v7 ^ 0x4C29) - 807))) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000ABC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (v7 + 14) & 0xF;
  LODWORD(STACK[0xA0C]) = v8 - v11 + 16;
  return (*(v10 + 8 * ((1530 * ((16 - v11) + (((695 * (v9 ^ 0x1077)) ^ 0xFF3A51E7) + v7) < ((v9 - 1023547763) & 0x3D020F1D) + 4294965721u)) ^ v9)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000ABD04()
{
  v4 = v1 + v0 - (((v2 - 1283297242) ^ 0xDFA8462E) & (2 * (v1 + v0) + 1758544228)) + 1786625661;
  LODWORD(STACK[0x734]) = v4;
  v5 = (*(v3 + 8 * (v2 ^ 0x47C5)))(v4 ^ 0xB6151DCB);
  v6 = STACK[0x468];
  STACK[0x9D0] = v5;
  return (*(v6 + 8 * (((v5 != 0) * ((v2 - 1283297242) & 0x4C7D96FE ^ 0x1499)) ^ v2)))();
}

uint64_t sub_1000AC374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1 + v13 - 0x29042A29C848A081;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((2 * (v16 + 0x6993B791CD5350C2)) | 0x41464A5B394381C2) - (v16 + 0x6993B791CD5350C2) - 0x20A3252D9CA1C0E1;
  v18 = __ROR8__(v17 ^ 0x224BC818639E261FLL, 8);
  v17 ^= 0x6ED674960904A00CuLL;
  v19 = (v18 + v17) ^ a4;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (a7 - ((v21 + v20) | a7) + ((v21 + v20) | 0x94ADF2ED9093A116)) ^ 0xDFF3084102A165F8;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v10;
  v25 = *(v9 + 8 * v14);
  v26 = v24 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v24, 8) + v26) ^ v8;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a3;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xC48877EC7E57888;
  *v15 = (((__ROR8__(v31, 8) + (v31 ^ __ROR8__(v30, 61))) ^ a5) >> (8 * (v15 & 7u))) ^ HIBYTE(v12) ^ 0x39;
  v32 = __ROR8__((v15 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = (v32 + 0x6993B791CD5350C2) ^ a8;
  v34 = __ROR8__((v32 + 0x6993B791CD5350C2) ^ v11, 8);
  v35 = __ROR8__((((v34 + v33) & 0x8CBEECD508176A84 ^ 0x8826C05100060884) + ((v34 + v33) ^ 0x37993C8639997610) - (((v34 + v33) ^ 0x37993C8639997610) & 0x8CBEECD508176A84)) ^ 0xCCC48F87CD302B18, 8);
  v36 = (((v34 + v33) & 0x8CBEECD508176A84 ^ 0x8826C05100060884) + ((v34 + v33) ^ 0x37993C8639997610) - (((v34 + v33) ^ 0x37993C8639997610) & 0x8CBEECD508176A84)) ^ 0xCCC48F87CD302B18 ^ __ROR8__(v33, 61);
  v37 = (v35 + v36) ^ 0x4B5EFAAC9232C4EELL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0xD2CC4FF622D0DD5ELL - ((v39 + v38) | 0xD2CC4FF622D0DD5ELL) + ((v39 + v38) | 0x2D33B009DD2F22A1)) ^ 0xAE975BDDD1138DB7;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0xBA550E4D1AF9B3B6) - (v42 + v41) - 0x5D2A87268D7CD9DCLL) ^ 0x578C196BAFBC070DLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = __ROR8__((((2 * (v45 + v44)) | 0x524236F1B792259ELL) - (v45 + v44) + 0x56DEE4872436ED31) ^ 0x90ABC91FDDCBE006, 8);
  v47 = (((2 * (v45 + v44)) | 0x524236F1B792259ELL) - (v45 + v44) + 0x56DEE4872436ED31) ^ 0x90ABC91FDDCBE006 ^ __ROR8__(v44, 61);
  *(v15 + 1) = (((__ROR8__((v46 + v47) ^ 0xC48877EC7E57888, 8) + ((v46 + v47) ^ 0xC48877EC7E57888 ^ __ROR8__(v47, 61))) ^ a5) >> (8 * ((v15 + 1) & 7))) ^ BYTE2(v12) ^ 0x90;
  v48 = __ROR8__((v15 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = ((2 * (v48 + 0x6993B791CD5350C2)) | 0x20034F39A2C9E294) - (v48 + 0x6993B791CD5350C2) - 0x1001A79CD164F14ALL;
  v50 = __ROR8__(v49 ^ 0x12E94AA92E5B17B4, 8);
  v49 ^= 0x5E74F62744C191A7uLL;
  v51 = (((v50 + v49) & 0x3E559E766351B66FLL ^ 0x1804960262400267) + ((v50 + v49) & 0xC1AA61899CAE4990 ^ 0x8100618110064981) - 1) ^ 0xEEE7A8578EF87C6BLL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x4B5EFAAC9232C4EELL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = __ROR8__((((2 * (v55 + v54)) | 0x64C4DA04D527E96ELL) - (v55 + v54) + 0x4D9D92FD956C0B49) ^ 0x31C686D666AF5BA1, 8);
  v57 = (((2 * (v55 + v54)) | 0x64C4DA04D527E96ELL) - (v55 + v54) + 0x4D9D92FD956C0B49) ^ 0x31C686D666AF5BA1 ^ __ROR8__(v54, 61);
  v58 = (v56 + v57) ^ v8;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ a3;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xC48877EC7E57888;
  *(v15 + 2) = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ a5) >> (8 * ((v15 + 2) & 7))) ^ BYTE1(v12) ^ 0xC7;
  v63 = __ROR8__((v15 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (v63 + 0x6993B791CD5350C2) ^ a8;
  v65 = (__ROR8__((v63 + 0x6993B791CD5350C2) ^ v11, 8) + v64) ^ a4;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x4B5EFAAC9232C4EELL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ v10;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ v8;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ a3;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xC48877EC7E57888;
  v76 = __ROR8__(v75, 8) + (v75 ^ __ROR8__(v74, 61));
  *(v15 + 3) = v12 ^ 0x56 ^ (((((2 * v76) | 0x4D88BAE9387C10B4) - v76 + 0x593BA28B63C1F7A6) ^ 0xA88C311ADC8A76AuLL) >> (8 * ((v15 + 3) & 7)));
  return v25();
}

uint64_t sub_1000AC8E8()
{
  v6 = STACK[0x464];
  *v1 = v3;
  *v2 = v4;
  return (*(v0 + 8 * (v6 + 8641)))(v5);
}

uint64_t sub_1000AC990()
{
  v4 = 210380649 - *(v1 - 0x4761F68478C333E5);
  v5 = v0 - 221832576 > v4;
  if ((v0 - 221832576) < 0xF38CBE0C != v4 < ((((v2 - 1144055442) ^ 0xBBCF2FC2) - 208883330) ^ (v2 - 1144055442) & 0x4430DFB7))
  {
    v5 = (v0 - 221832576) < 0xF38CBE0C;
  }

  return (*(v3 + 8 * ((v5 | (2 * v5)) ^ v2)))();
}

uint64_t sub_1000ACB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x450] = a8;
  LODWORD(STACK[0x430]) = v9;
  return (*(v10 + 8 * v8))();
}

uint64_t sub_1000ACC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v20 = (a6 | ((a6 < 5 * (v7 ^ 0x3AA4u) + v6) << 32)) + 0x122F5B9815EA0D49;
  v21 = v20 + v10 - 0x122F5B984139239BLL;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = a1 + a4 + v20;
  v24 = v22 - ((a3 + 2 * v22) & 0x25C1D39330189B28) + 0x5919B6A834A631BLL;
  v25 = __ROR8__(v24 ^ 0xC6A7DFBC047220BFLL, 8);
  v24 ^= 0x532252BB5D828C84uLL;
  v26 = (v25 + v24) ^ v15;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v12;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xCF048CB0FFFE1ACELL) - (v30 + v29) + 0x187DB9A78000F298) ^ 0xD36268A2891A873ELL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0xB0C104016A1458EELL) + 0x58608200B50A2C77) ^ 0xD8C3AA7436BEEBBELL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((2 * (v36 + v35)) | 0x29D0B04F6069146CLL) - (v36 + v35);
  v38 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = (v37 - 0x14E85827B0348A36) ^ 0x918A9D974D129B4DLL;
  v40 = ((v38 + v17) | 0x4DB55771656C47E3) - ((v38 + v17) | v11) + v11;
  v41 = v40 ^ 0x4F5DBA449A53A11DLL;
  v42 = v39 ^ __ROR8__(v35, 61);
  v40 ^= 0x3C006CAF0C9270EuLL;
  v43 = (__ROR8__(v41, 8) + v40) ^ v18;
  v44 = v43 ^ __ROR8__(v40, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v9;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v39, 8) + v42) ^ v14;
  v48 = (__ROR8__(v45, 8) + v46) ^ v8;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8) + v49;
  v51 = (((2 * v50) & 0xB29E551FCF567774) - v50 + 0x26B0D5701854C445) ^ 0xD3E9B4C2C56BE56CLL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v42, 61));
  v54 = __ROR8__(v51, 8);
  v55 = (((2 * (v54 + v52)) & 0xC95BDFF66F213F6ELL) - (v54 + v52) + 0x1B521004C86F6048) ^ 0x22D8C263CE6D9281;
  v56 = v55 ^ __ROR8__(v52, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ v16;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  *v23 = (((v13 - (v53 | v13) + (v53 | 0x90A460FA0134A3D6)) ^ 0x68BD4A8FEACC5148) >> (8 * (v21 & 7u))) ^ (((((2 * (v59 + v58)) & 0x9041B642E88C552CLL) - (v59 + v58) + 0x37DF24DE8BB9D569) ^ 0x9B93BABBBA4F7A59) >> (8 * (v23 & 7u))) ^ *v21;
  return (*(v19 + 8 * ((2000 * (a5 == 0)) ^ v7)))();
}

uint64_t sub_1000AD060()
{
  v1 = (LODWORD(STACK[0x464]) - 127) | 0x2A00;
  v2 = LODWORD(STACK[0x464]) + 15311;
  STACK[0x450] = STACK[0x9D0];
  v3 = LODWORD(STACK[0xA0C]) - ((v1 + 2 * LODWORD(STACK[0xA0C]) + 710695114) & 0x25A94C5E) + 1208150627;
  v4 = ((2 * v3) & 0x973AFBDE ^ 0x528485E) + (v3 ^ 0x5949DBC0) + 1056697299 == 177826242;
  return (*(v0 + 8 * ((2 * v4) | (16 * v4) | v2)))();
}

uint64_t sub_1000AD15C(int a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x430] = ((LODWORD(STACK[0x430]) - 1697713656) ^ 0xE62A6BFFF8FBBFAELL) + v5 + ((2 * (LODWORD(STACK[0x430]) - 1697713656)) & 0x1F1F77F5CLL) + 0x7BDDFFABFF7FB467;
  v7 = a1 + a4 + 878871057 < (v4 ^ 0x1A2Au) - 13740;
  return (*(v6 + 8 * (((8 * v7) | (v7 << 6)) ^ v4)))();
}

uint64_t sub_1000AD2B4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W2>, int a3@<W8>)
{
  LODWORD(STACK[0x410]) = a3 - 7630;
  v4 = a2 < ((a3 - 7630) ^ 0x3771A2D4u) - 930198818;
  v5 = *(v3 + 8 * (((2 * v4) | (8 * v4)) ^ a3));
  LODWORD(STACK[0x240]) = a2;
  return v5(a1, 0);
}

uint64_t sub_1000AD314(uint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v12 = *(v11 + 8 * SLODWORD(STACK[0x410]));
  LODWORD(STACK[0x400]) = a3 & 0xFFFFFFF8;
  *&STACK[0x420] = xmmword_1004248B0;
  return v12(0, 0x9DF7945407847E58, a2 - (a3 & 0xFFFFFFF8) + 8, vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(a5), vdupq_n_s64(a7), vdupq_n_s64(v8), vdupq_n_s64(a8), vdupq_n_s64(v9), vdupq_n_s64(v10));
}

uint64_t sub_1000AD450(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int8x16_t a9, int8x16_t a10, int64x2_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16)
{
  v37 = v16 + v17 + a2;
  v38.i64[0] = v37 + (a5 + a1);
  v38.i64[1] = v37 + (a4 + a1);
  v39.i64[0] = v37 + (a7 + a1);
  v39.i64[1] = v37 + (a6 + a1);
  v40.i64[0] = v37 + (v19 + a1);
  v40.i64[1] = v37 + (a8 + a1);
  v41.i64[0] = v37 + (v21 + a1);
  v41.i64[1] = v37 + (v20 + a1);
  v42 = vandq_s8(v41, a9);
  v43 = vandq_s8(v40, a9);
  v44 = vandq_s8(v39, a9);
  v45 = vandq_s8(v38, a9);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), a11);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), a11);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), a11);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), a11);
  v50 = vsubq_s64(vorrq_s8(v48, a12), vorrq_s8(v48, a13));
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v49, a12), vorrq_s8(v49, a13)), a13);
  v52 = vaddq_s64(v50, a13);
  v53 = veorq_s8(v52, a14);
  v54 = veorq_s8(v51, a14);
  v55 = veorq_s8(v51, a15);
  v56 = veorq_s8(v52, a15);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), a16), v58), v24), v25);
  v60 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v61 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57, v57), a16), v57), v24), v25);
  v63 = veorq_s8(v62, v61);
  v64 = veorq_s8(v59, v60);
  v65 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v64);
  v67 = veorq_s8(vaddq_s64(v65, v63), v26);
  v68 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v69 = veorq_s8(v66, v26);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v71 = veorq_s8(v67, v68);
  v72 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = veorq_s8(v74, v27);
  v76 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v74, v28), v29), v75), vandq_s8(v75, v28));
  v77 = veorq_s8(v73, v27);
  v78 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v73, v28), v29), v77), vandq_s8(v77, v28)), v30);
  v79 = veorq_s8(v76, v30);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v80), v31);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81), v31);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v86 = veorq_s8(v82, v83);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = veorq_s8(vaddq_s64(v87, v85), v32);
  v90 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v91 = veorq_s8(v88, v32);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = veorq_s8(vaddq_s64(v94, v92), v33);
  v97 = veorq_s8(v95, v33);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v99 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(v47, a12), vorrq_s8(v47, a13)), a13);
  v104 = vaddq_s64(v102, v100);
  v105 = vaddq_s64(v101, v99);
  v145.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v34), v104), v35), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a10)));
  v145.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), v34), v105), v35), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a10)));
  v106 = veorq_s8(v103, a14);
  v107 = veorq_s8(v103, a15);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), a16), v108), v24), v25);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v26);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(v113, v27);
  v115 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v113, v28), v29), v114), vandq_s8(v114, v28)), v30);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v31);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v32);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v33);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL)));
  v123 = vaddq_s64(vsubq_s64(vorrq_s8(v46, a12), vorrq_s8(v46, a13)), a13);
  v145.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v34), v122), v35), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a10)));
  v124 = veorq_s8(v123, a14);
  v125 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v126 = veorq_s8(v123, a15);
  v127 = vaddq_s64(v125, v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), a16), v127), v24), v25);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v26);
  v131 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v133 = veorq_s8(v130, v131);
  v134 = vaddq_s64(v132, v133);
  v135 = veorq_s8(v134, v27);
  v136 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v134, v28), v29), v135), vandq_s8(v135, v28)), v30);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v31);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v32);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), v33);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL)));
  v145.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), v34), v143), v35), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a10)));
  *(v41.i64[0] - 7) = vrev64_s8(*&vqtbl4q_s8(v145, *&STACK[0x420]));
  return (*(v23 + 8 * (((a3 == a1) * v22) ^ v18)))((a1 - 8));
}

uint64_t sub_1000ADAB0(int a1, uint64_t a2, int a3, int a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v21 = v14;
  v22 = v19;
  v23 = (v8 + 128) | 0x180A;
  v24 = *(v20 + 8 * ((v8 + v23) ^ (10645 * (v9 > 0x800437F8))));
  LODWORD(STACK[0x210]) = a3 & 0xFFFFFFF0;
  LODWORD(STACK[0x230]) = a4;
  LODWORD(STACK[0x220]) = a1;
  v25 = a1 + a4 + 878871049;
  LODWORD(STACK[0x3D0]) = a1 + a4 + 878871042;
  *&STACK[0x390] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  LODWORD(STACK[0x3C0]) = a1 + a4 + 878871043;
  LODWORD(STACK[0x3B0]) = a1 + a4 + 878871044;
  *&STACK[0x420] = vdupq_n_s64(a5);
  *&STACK[0x410] = vdupq_n_s64(a7);
  *&STACK[0x360] = vdupq_n_s64(a8);
  *&STACK[0x370] = vdupq_n_s64(0x38uLL);
  *&STACK[0x340] = vdupq_n_s64(v15);
  *&STACK[0x350] = vdupq_n_s64(v13);
  *&STACK[0x320] = vdupq_n_s64(v12);
  *&STACK[0x330] = vdupq_n_s64(v22);
  *&STACK[0x310] = vdupq_n_s64(v21);
  *&STACK[0x2D0] = vdupq_n_s64(v18);
  *&STACK[0x2E0] = vdupq_n_s64(v16);
  *&STACK[0x2B0] = vdupq_n_s64(0xF55961B2DD3F2129);
  *&STACK[0x2C0] = vdupq_n_s64(v10);
  *&STACK[0x290] = vdupq_n_s64(0xC48877EC7E57888uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x398AD2670602F2C9uLL);
  *&STACK[0x270] = vdupq_n_s64(v11);
  *&STACK[0x280] = vdupq_n_s64(v17);
  LODWORD(STACK[0x200]) = (v23 - 6280) | 0x1021;
  *&STACK[0x260] = vdupq_n_s64(0x4337BB2E5387DDB9uLL);
  *&STACK[0x3A0] = xmmword_1004248A0;
  return v24((a1 + a4 + 878871045), (v25 + 7), (v25 - 2), (v25 - 1), (v25 + 2), (v25 + 3), (v25 + 4), (v25 + 5));
}

uint64_t sub_1000ADCA8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int8x16_t a13, double a14, double a15, int8x16_t a16)
{
  v42 = v18 + v19 + v25;
  v43.i64[0] = v42 + (LODWORD(STACK[0x3D0]) + v22 + 16);
  v43.i64[1] = v42 + (v26 + v22 + 16);
  v44.i64[0] = v42 + (LODWORD(STACK[0x3B0]) + v22 + 16);
  v45.i64[0] = v42 + (v21 + v22 + 16);
  v44.i64[1] = v42 + (LODWORD(STACK[0x3C0]) + v22 + 16);
  v45.i64[1] = v42 + (a1 + v22 + 16);
  v46.i64[0] = v42 + (a4 + v22 + 16);
  v46.i64[1] = v42 + (a3 + v22 + 16);
  *&v47 = v42 + (a6 + v22 + 16);
  *(&v47 + 1) = v42 + (a5 + v22 + 16);
  *&STACK[0x400] = v47;
  *&v47 = v42 + (a8 + v22 + 16);
  *(&v47 + 1) = v42 + (a7 + v22 + 16);
  *&STACK[0x3F0] = v47;
  v48 = *&STACK[0x390];
  v49 = vandq_s8(v46, *&STACK[0x390]);
  v50 = vandq_s8(v45, *&STACK[0x390]);
  v51 = vandq_s8(v44, *&STACK[0x390]);
  v52 = vandq_s8(v43, *&STACK[0x390]);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), *&STACK[0x420]);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), *&STACK[0x420]);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), *&STACK[0x420]);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), *&STACK[0x420]);
  v57 = *&STACK[0x410];
  v58 = vorrq_s8(v56, *&STACK[0x410]);
  v59 = vorrq_s8(v55, *&STACK[0x410]);
  *&STACK[0x3E0] = vsubq_s64(vorrq_s8(v53, *&STACK[0x410]), vorrq_s8(v53, v29));
  v60 = vsubq_s64(vorrq_s8(v54, v57), vorrq_s8(v54, v29));
  v61 = vsubq_s64(v59, vorrq_s8(v55, v29));
  v62 = vaddq_s64(vsubq_s64(v58, vorrq_s8(v56, v29)), v29);
  v63 = vaddq_s64(v61, v29);
  v64 = veorq_s8(v63, *&STACK[0x360]);
  v65 = veorq_s8(v62, *&STACK[0x360]);
  v66 = veorq_s8(v62, a16);
  v67 = veorq_s8(v63, a16);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), *&STACK[0x340]), v69), v30), v31);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), *&STACK[0x340]), v68), v30), v31);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), v32);
  v77 = veorq_s8(v75, v32);
  v78 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v83 = vaddq_s64(v81, v79);
  v84 = veorq_s8(v83, v34);
  v85 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v83, v33), v35), v84), vandq_s8(v84, v33));
  v86 = veorq_s8(v82, v34);
  v87 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v82, v33), v35), v86), vandq_s8(v86, v33)), v36);
  v88 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v90 = veorq_s8(v85, v36);
  v91 = veorq_s8(v90, v89);
  v92 = veorq_s8(v87, v88);
  v93 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v92);
  v95 = veorq_s8(vaddq_s64(v93, v91), v37);
  v96 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v97 = veorq_s8(v94, v37);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v99 = veorq_s8(v95, v96);
  v100 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = veorq_s8(vaddq_s64(v100, v98), v38);
  v103 = veorq_s8(v101, v38);
  v104 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v105 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v106 = veorq_s8(v102, v104);
  v107 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v106);
  v109 = veorq_s8(vaddq_s64(v107, v105), v39);
  v110 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v111 = veorq_s8(v108, v39);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v113 = veorq_s8(v109, v110);
  v114 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v110.i64[0] = v42 + (a2 + v22 + 16);
  v110.i64[1] = v42 + (v24 + v22 + 16);
  v115 = vaddq_s64(v60, v29);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113);
  v117 = vaddq_s64(v114, v112);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v117, v117), v40), v117), v41), a13);
  v230.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), v40), v116), v41), a13), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), *&STACK[0x370])));
  v230.val[2] = vshlq_u64(v118, vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), *&STACK[0x370])));
  v119 = veorq_s8(v115, *&STACK[0x360]);
  v120 = veorq_s8(v115, a16);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v121, v121), *&STACK[0x340]), v121), v30), v31);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v32);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(v126, v34);
  v128 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v126, v33), v35), v127), vandq_s8(v127, v33)), v36);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v37);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v38);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v39);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v134.i64[0] = v42 + (v20 + v22 + v17 + 16);
  v134.i64[1] = v42 + (v23 + v22 + 16);
  v137 = vaddq_s64(v136, v135);
  v138 = vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), v40), v137);
  v139 = vandq_s8(v110, v48);
  v140 = vaddq_s64(*&STACK[0x3E0], v29);
  v230.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v138, v41), a13), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), *&STACK[0x370])));
  v141 = veorq_s8(v140, *&STACK[0x360]);
  v142 = veorq_s8(v140, a16);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v143, v143), *&STACK[0x340]), v143), v30), v31);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v32);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(v148, v34);
  v150 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v148, v33), v35), v149), vandq_s8(v149, v33)), v36);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v37);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v38);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v39);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v159 = vandq_s8(*&STACK[0x3F0], v48);
  v160 = vaddq_s64(v158, v157);
  v161 = vandq_s8(*&STACK[0x400], v48);
  v230.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), v40), v160), v41), a13), vnegq_s64(vandq_s8(vshlq_n_s64(v46, 3uLL), *&STACK[0x370])));
  v162 = vandq_s8(v134, v48);
  v163 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v167 = vaddq_s64(v165, *&STACK[0x420]);
  v168 = vaddq_s64(v164, *&STACK[0x420]);
  v169 = vaddq_s64(v163, *&STACK[0x420]);
  v170 = vaddq_s64(v166, *&STACK[0x420]);
  v171 = vsubq_s64(vorrq_s8(v167, *&STACK[0x410]), vorrq_s8(v167, v29));
  v172 = vsubq_s64(vorrq_s8(v168, *&STACK[0x410]), vorrq_s8(v168, v29));
  v173 = vsubq_s64(vorrq_s8(v170, *&STACK[0x410]), vorrq_s8(v170, v29));
  v174 = vaddq_s64(vsubq_s64(vorrq_s8(v169, *&STACK[0x410]), vorrq_s8(v169, v29)), v29);
  v175 = vaddq_s64(v172, v29);
  v172.i64[0] = vqtbl4q_s8(v230, *&STACK[0x3A0]).u64[0];
  v230.val[3] = veorq_s8(v175, *&STACK[0x360]);
  v230.val[0] = veorq_s8(v174, *&STACK[0x360]);
  v230.val[1] = veorq_s8(v174, a16);
  v230.val[2] = veorq_s8(v175, a16);
  v230.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230.val[3], 0x38uLL), v230.val[3], 8uLL), v230.val[2]);
  v230.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230.val[0], 0x38uLL), v230.val[0], 8uLL), v230.val[1]);
  v230.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v230.val[0], v230.val[0]), *&STACK[0x340]), v230.val[0]), v30), v31);
  v230.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v230.val[3], v230.val[3]), *&STACK[0x340]), v230.val[3]), v30), v31);
  v176 = vsraq_n_u64(vshlq_n_s64(v230.val[1], 3uLL), v230.val[1], 0x3DuLL);
  v230.val[1] = veorq_s8(v230.val[3], vsraq_n_u64(vshlq_n_s64(v230.val[2], 3uLL), v230.val[2], 0x3DuLL));
  v230.val[2] = veorq_s8(v230.val[0], v176);
  v177 = vsraq_n_u64(vshlq_n_s64(v230.val[3], 0x38uLL), v230.val[3], 8uLL);
  v230.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230.val[0], 0x38uLL), v230.val[0], 8uLL), v230.val[2]);
  v230.val[0] = veorq_s8(vaddq_s64(v177, v230.val[1]), v32);
  v230.val[3] = veorq_s8(v230.val[3], v32);
  v178 = vsraq_n_u64(vshlq_n_s64(v230.val[1], 3uLL), v230.val[1], 0x3DuLL);
  v230.val[1] = veorq_s8(v230.val[3], vsraq_n_u64(vshlq_n_s64(v230.val[2], 3uLL), v230.val[2], 0x3DuLL));
  v230.val[2] = veorq_s8(v230.val[0], v178);
  v179 = vsraq_n_u64(vshlq_n_s64(v230.val[3], 0x38uLL), v230.val[3], 8uLL);
  v230.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230.val[0], 0x38uLL), v230.val[0], 8uLL), v230.val[2]);
  v230.val[0] = vaddq_s64(v179, v230.val[1]);
  v180 = veorq_s8(v230.val[0], v34);
  v230.val[0] = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v230.val[0], v33), v35), v180), vandq_s8(v180, v33));
  v181 = veorq_s8(v230.val[3], v34);
  v230.val[3] = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v230.val[3], v33), v35), v181), vandq_s8(v181, v33)), v36);
  v230.val[0] = veorq_s8(v230.val[0], v36);
  v230.val[1] = veorq_s8(v230.val[0], vsraq_n_u64(vshlq_n_s64(v230.val[1], 3uLL), v230.val[1], 0x3DuLL));
  v230.val[2] = veorq_s8(v230.val[3], vsraq_n_u64(vshlq_n_s64(v230.val[2], 3uLL), v230.val[2], 0x3DuLL));
  v230.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230.val[0], 0x38uLL), v230.val[0], 8uLL), v230.val[1]), v37);
  v230.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230.val[3], 0x38uLL), v230.val[3], 8uLL), v230.val[2]), v37);
  v182 = vsraq_n_u64(vshlq_n_s64(v230.val[1], 3uLL), v230.val[1], 0x3DuLL);
  v230.val[1] = veorq_s8(v230.val[3], vsraq_n_u64(vshlq_n_s64(v230.val[2], 3uLL), v230.val[2], 0x3DuLL));
  v230.val[2] = veorq_s8(v230.val[0], v182);
  v183 = vsraq_n_u64(vshlq_n_s64(v230.val[3], 0x38uLL), v230.val[3], 8uLL);
  v230.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230.val[0], 0x38uLL), v230.val[0], 8uLL), v230.val[2]);
  v230.val[0] = veorq_s8(vaddq_s64(v183, v230.val[1]), v38);
  v230.val[3] = veorq_s8(v230.val[3], v38);
  v184 = vsraq_n_u64(vshlq_n_s64(v230.val[1], 3uLL), v230.val[1], 0x3DuLL);
  v230.val[1] = veorq_s8(v230.val[3], vsraq_n_u64(vshlq_n_s64(v230.val[2], 3uLL), v230.val[2], 0x3DuLL));
  v230.val[2] = veorq_s8(v230.val[0], v184);
  v185 = vsraq_n_u64(vshlq_n_s64(v230.val[3], 0x38uLL), v230.val[3], 8uLL);
  v230.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230.val[0], 0x38uLL), v230.val[0], 8uLL), v230.val[2]);
  v230.val[0] = veorq_s8(vaddq_s64(v185, v230.val[1]), v39);
  v186 = vsraq_n_u64(vshlq_n_s64(v230.val[1], 3uLL), v230.val[1], 0x3DuLL);
  v230.val[3] = veorq_s8(v230.val[3], v39);
  v230.val[1] = veorq_s8(v230.val[3], vsraq_n_u64(vshlq_n_s64(v230.val[2], 3uLL), v230.val[2], 0x3DuLL));
  v230.val[2] = veorq_s8(v230.val[0], v186);
  v187 = vsraq_n_u64(vshlq_n_s64(v230.val[3], 0x38uLL), v230.val[3], 8uLL);
  v188 = vaddq_s64(v171, v29);
  v230.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230.val[0], 0x38uLL), v230.val[0], 8uLL), v230.val[2]);
  v230.val[0] = vaddq_s64(v187, v230.val[1]);
  v230.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v230.val[3], v230.val[3]), v40), v230.val[3]), v41), a13), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x400], 3uLL), *&STACK[0x370])));
  v230.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v230.val[0], v230.val[0]), v40), v230.val[0]), v41), a13), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3F0], 3uLL), *&STACK[0x370])));
  v189 = veorq_s8(v188, *&STACK[0x360]);
  v190 = veorq_s8(v188, a16);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191, v191), *&STACK[0x340]), v191), v30), v31);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193), v32);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(v196, v34);
  v198 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v196, v33), v35), v197), vandq_s8(v197, v33));
  v199 = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v200 = veorq_s8(v198, v36);
  v201 = veorq_s8(v200, v199);
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v37);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v204 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203), v38);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v206 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205), v39);
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL)));
  v208 = vaddq_s64(v173, v29);
  v230.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v207, v207), v40), v207), v41), a13), vnegq_s64(vandq_s8(vshlq_n_s64(v110, 3uLL), *&STACK[0x370])));
  v209 = veorq_s8(v208, *&STACK[0x360]);
  v210 = veorq_s8(v208, a16);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210);
  v212 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v211, v211), *&STACK[0x340]), v211), v30), v31);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), v32);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v217 = vandq_s8(v216, v33);
  v218 = veorq_s8(v216, v34);
  v219 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(v217, v35), v218), vandq_s8(v218, v33)), v36);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), v37);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), v38);
  v224 = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL);
  v226 = veorq_s8(v223, v224);
  v227 = veorq_s8(vaddq_s64(v225, v226), v39);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL)));
  v230.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), v40), v228), v41), a13), vnegq_s64(vandq_s8(vshlq_n_s64(v134, 3uLL), *&STACK[0x370])));
  v230.val[3].i64[0] = vqtbl4q_s8(v230, *&STACK[0x3A0]).u64[0];
  v230.val[3].i64[1] = v172.i64[0];
  v230.val[3] = vrev64q_s8(v230.val[3]);
  *(v110.i64[0] - 15) = vextq_s8(v230.val[3], v230.val[3], 8uLL);
  return (*(v28 + 8 * ((12650 * (v16 == v22)) ^ v27)))();
}

uint64_t sub_1000AE988(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v26 = STACK[0x450] + (v12 + v11) + STACK[0x430] + v15;
  v27 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = ((v27 + a5) | a7) - ((v27 + a5) | v8) + v8;
  v29 = v28 ^ a8;
  v30 = v28 ^ v17;
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(((v20 & (2 * (v31 + v30))) - (v31 + v30) + v24) ^ v16, 8);
  v33 = ((v20 & (2 * (v31 + v30))) - (v31 + v30) + v24) ^ v16 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ v18;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((v36 + v35) & v9 ^ v23) + ((v36 + v35) ^ v21) - (((v36 + v35) ^ v21) & v9)) ^ v13;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v19;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x398AD2670602F2C9;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xC48877EC7E57888;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  *v26 = (((v22 | (2 * (v45 + v44))) - (v45 + v44) + v14) ^ 0x4337BB2E5387DDB9uLL) >> (8 * (v26 & 7u));
  return (*(v25 + 8 * (((v12 - 1 != a6) * a1) ^ v10)))();
}

uint64_t sub_1000AEABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  *(STACK[0x8A8] - 0x6596634DE9FFD04FLL) = STACK[0x450];
  *STACK[0x250] = STACK[0x734];
  return (*(v8 + 8 * a8))(a1, a2, a3, a4, a5, a6, a7, 2876728310);
}

uint64_t sub_1000AEC34()
{
  *(v3 - 216) = v2 + 2054851651 * ((((2 * (v3 - 216)) | 0x9393BA32) - (v3 - 216) + 909517543) ^ 0x4567723F) + 10446;
  v5 = (*(v4 + 8 * (v2 ^ 0x4554)))(v3 - 216);
  return (*(STACK[0x468] + 8 * ((((v1 & 0x7FFFFFF0) == v0) * (((v2 + 5710) ^ 0x368) - 9733)) ^ v2)))(v5);
}

uint64_t sub_1000AECCC()
{
  v8 = *(v6 - 208);
  v9 = (v3 + v0 - 181399232);
  *v9 = v8 ^ 0x27;
  v9[1] = (v8 >> ((v4 ^ v5) - 71)) ^ 0x84;
  v9[2] = (v8 >> (v4 - 23)) ^ 0x69;
  v9[3] = BYTE3(v8) ^ 0xF5;
  v9[4] = BYTE4(v8) ^ 0xC8;
  v9[5] = BYTE5(v8) ^ 0x70;
  v9[6] = BYTE6(v8) ^ 0x79;
  v9[7] = HIBYTE(v8) ^ 0x60;
  v11 = ((v3 + 8) & (v1 + 16)) != v1 || v3 + 8 == v2;
  return (*(v7 + 8 * (v4 ^ (113 * v11))))();
}

uint64_t sub_1000AEE30()
{
  v3 = STACK[0x908];
  STACK[0x5F0] = STACK[0x908];
  v4 = STACK[0x760] + 0x51BCF095CB70AFBLL;
  v5 = STACK[0x6B0];
  v6 = -587088623 * *(STACK[0x760] - 0x270676553BF3365DLL) - 332567923;
  v7 = (*(STACK[0x760] - 0x270676553BF33649) ^ 0x590FD559) - 270567175 + ((*(STACK[0x760] - 0x270676553BF33649) << ((14 * (v0 ^ 0x5D)) ^ 0x53)) & ((17 * (v0 ^ 0x6A7)) ^ 0xB7FF92CB) ^ 0x5E0144C);
  v8 = (LODWORD(STACK[0x604]) ^ 0x41C8C2AA) + 216986367 + ((2 * LODWORD(STACK[0x604])) & 0xEFBBBEC2 ^ 0x6C2A3A82);
  STACK[0xC20] = *(v2 + 8 * v0);
  LODWORD(STACK[0xC28]) = v6;
  LODWORD(STACK[0xC2C]) = 853154850;
  STACK[0xC30] = v4;
  LODWORD(STACK[0xC38]) = v7;
  STACK[0xC40] = v5;
  STACK[0xC48] = v3;
  STACK[0xC50] = v3;
  LODWORD(STACK[0xC58]) = v8;
  *(v1 - 204) = (v0 + 879788239) ^ (41492489 * ((((2 * (v1 - 216)) | 0x97C034B4) - (v1 - 216) + 874505638) ^ 0x6AB416E1));
  *(v1 - 216) = &STACK[0xC20];
  v9 = (*(v2 + 8 * (v0 + 17454)))(v1 - 216);
  return (*(STACK[0x468] + 8 * ((15312 * (*(v1 - 208) == -1418238986)) ^ (v0 + 336))))(v9);
}

uint64_t sub_1000AF210()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x6E5E)))(STACK[0x8E0], 0, 32);
  v3 = STACK[0x468];
  STACK[0x3D0] = STACK[0x500];
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000AF274()
{
  LODWORD(STACK[0x3F0]) = STACK[0x9EC];
  LODWORD(STACK[0x3E0]) = v1 + 1791738179;
  STACK[0x410] = v0;
  STACK[0x3B0] = v0 - 0x270676553BF33689;
  LODWORD(STACK[0x400]) = STACK[0x59C];
  LODWORD(STACK[0x450]) = LOBYTE(STACK[0x9B7]);
  LODWORD(STACK[0x420]) = STACK[0x8D4];
  STACK[0x430] = STACK[0xA58];
  v3 = *(v2 + 8 * (v1 ^ 0x4B495590 ^ (1219 * (v1 > 0xCF15820))));
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x464]) + 16605;
  LODWORD(STACK[0x3C0]) = 1233347504;
  return v3();
}

uint64_t sub_1000AF370()
{
  *v1 = 0u;
  v1[1] = 0u;
  LODWORD(STACK[0x450]) = 30;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1000AF490()
{
  v8 = 358777457 * ((v6 - 1629373376 - 2 * ((v6 - 216) & 0x9EE1BD18)) ^ 0xF149B96A);
  *(v6 - 200) = v3;
  *(v6 - 192) = v1;
  *(v6 - 184) = v2 - v8 - 7250;
  *(v6 - 180) = 593035557 - v8;
  *(v6 - 216) = v0;
  *(v6 - 204) = v4 + v8;
  *(v6 - 176) = v5 - v8 + 375371725;
  v9 = (*(v7 + 8 * (v2 ^ 0x6982)))(v6 - 216);
  return (*(STACK[0x468] + 8 * v2))(v9);
}

uint64_t sub_1000AF6B8()
{
  v2 = *(v1 + 8 * ((((v0 ^ 0x40E7) + 1751) * (LODWORD(STACK[0x3F0]) == LODWORD(STACK[0x3E0]))) ^ v0));
  LODWORD(STACK[0x420]) = -1418238986;
  return v2();
}

uint64_t sub_1000AF728()
{
  LODWORD(STACK[0x450]) = v1;
  v3 = *(v2 + 8 * (v0 + 10390));
  LODWORD(STACK[0x420]) = -1418238986;
  return v3();
}

uint64_t sub_1000AF7A4()
{
  v2 = *(v1 + 8 * ((((v0 - 9204) ^ 0x531D ^ ((v0 - 2561) | 0x18C2)) * (LODWORD(STACK[0x3F0]) == LODWORD(STACK[0x3E0]))) ^ v0));
  LODWORD(STACK[0x400]) = -1418238986;
  return v2();
}

uint64_t sub_1000AF820()
{
  LODWORD(STACK[0x450]) = v2;
  v4 = *(v3 + 8 * (v0 + 10390));
  LODWORD(STACK[0x400]) = v1;
  return v4();
}

uint64_t sub_1000AF840()
{
  STACK[0x430] = *(v2 + 8 * v1);
  STACK[0xA68] = 0;
  return (*(v2 + 8 * (((STACK[0xA68] < 0x20) * (((v0 + 743) | 0x222B) - 11039)) ^ (v0 + 9490))))(0xCB1FD105091A75A6, 0x80A3287483B4C7C9, 0x71739F379BF98FD9, 0xCDDFFD7F198C084ALL, 0x5A2A91CFE2BA1239, 0x7EDA10D8E8BDE475, 0x32200280E673F7B5, 0x25616341D67C2B0ELL);
}

uint64_t sub_1000AFBA0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x59C]) = STACK[0x400];
  LOBYTE(STACK[0x9B7]) = v2;
  LODWORD(STACK[0x8D4]) = STACK[0x420];
  STACK[0xA58] = STACK[0x430];
  LODWORD(STACK[0xA64]) = v1;
  return (*(v3 + 8 * a1))();
}

uint64_t sub_1000AFC20@<X0>(int a1@<W7>, int a2@<W8>)
{
  LODWORD(STACK[0x59C]) = STACK[0x400];
  LOBYTE(STACK[0x9B7]) = STACK[0x450];
  LODWORD(STACK[0x8D4]) = STACK[0x420];
  STACK[0xA58] = STACK[0x430];
  LODWORD(STACK[0xA64]) = v2;
  return (*(v3 + 8 * ((((((((a2 - 8835) | 0x462) + 158) | 0x405) - 1976) ^ 0x3B11) * (a1 == -1418238986)) ^ ((a2 - 8835) | 0x462))))();
}

uint64_t sub_1000AFD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x59C]) = STACK[0x400];
  LOBYTE(STACK[0x9B7]) = STACK[0x450];
  LODWORD(STACK[0x8D4]) = a8;
  STACK[0xA58] = STACK[0x430];
  LODWORD(STACK[0xA64]) = v9;
  return (*(v10 + 8 * v8))();
}

uint64_t sub_1000AFDCC()
{
  v3 = LODWORD(STACK[0x464]) + 10888;
  v4 = LODWORD(STACK[0x464]) + 12981;
  LODWORD(STACK[0x59C]) = STACK[0x400];
  LOBYTE(STACK[0x9B7]) = STACK[0x450];
  LODWORD(STACK[0x8D4]) = STACK[0x420];
  STACK[0xA58] = v0;
  LODWORD(STACK[0xA64]) = v1;
  return (*(v2 + 8 * ((11 * (v1 == (v3 ^ 0xA9BF750D))) ^ v4)))();
}

uint64_t sub_1000AFEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x59C]) = a8;
  LOBYTE(STACK[0x9B7]) = STACK[0x450];
  LODWORD(STACK[0x8D4]) = STACK[0x420];
  STACK[0xA58] = STACK[0x430];
  LODWORD(STACK[0xA64]) = v9;
  return (*(v10 + 8 * v8))();
}

uint64_t sub_1000B01CC(uint64_t a1)
{
  v6 = (v2 + v1);
  v7 = ((2 * v6) & 0xFFDF7F66) + (v6 ^ 0x3FA677F67FEFBFB3) + a1;
  v8 = v7 - 0x3FA677F67FEFBFB3;
  *v8 = 0;
  *(v7 + ((v3 - 2961) | 0x1A59u) - 0x3FA677F67FEFDA8FLL) = 0;
  *(v8 + 2) = 0;
  *(((2 * (v6 + 4)) & 0x19E7CFFFELL) + ((v6 + 4) ^ 0xDDEDCFFFCF3E7FFFLL) + a1 + 0x2212300030C18001) = -9392;
  v9 = ((2 * (v6 + 6)) & 0x1F75B7B74) + ((v6 + 6) ^ 0x3FE66DFFFBADBDBALL) + a1 - 0x3FE66DFFFBADBDBALL;
  *v9 = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = (-69 - v4 - ((-2 * v4) & 0x16)) ^ 0xAB;
  LODWORD(v8) = ((16 - v4) ^ 0x7956FDFFFCDA5EE7) + 2 * ((16 - v4) & 7) != 0x7956FDFFFCDA5EE7;
  return (*(v5 + 8 * (v3 ^ ((16 * v8) | (32 * v8)))))();
}

uint64_t sub_1000B0364(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *v6 = a1;
  *v5 = a4;
  return (*(v7 + 8 * v4))();
}

uint64_t sub_1000B03D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x838] = STACK[0x470];
  LODWORD(STACK[0x914]) = STACK[0x724];
  return (*(v9 + 8 * ((((17 * ((v8 - 192) ^ 0x58EE769)) ^ 0xE3A) * (v8 != 550492419)) ^ (v8 - 192 + v7))))(a1, a2, a3, a4, a5, a6, a7, 2876728310);
}

uint64_t sub_1000B042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xA10]) = a8;
  STACK[0x830] = STACK[0x300];
  LODWORD(STACK[0x4E4]) = 695878991;
  return (*(v9 + 8 * v8))(a1, 0x3B5F75C64C87DB10, 695869141);
}

uint64_t sub_1000B04FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 1542438526 - *(v8 - 0x4761F68478C333E5);
  v12 = v7 + 130212929 > v11;
  v13 = ((v7 + 130212929) < 0x42F25521) ^ (v11 < v9 + 1123175907);
  v14 = v12;
  if (v13)
  {
    v15 = (v7 + 130212929) < 0x42F25521;
  }

  else
  {
    v15 = v14;
  }

  return (*(v10 + 8 * ((118 * (((v9 - 95) ^ v15) & 1)) ^ v9)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000B07A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, uint64_t a8@<X8>)
{
  v14 = ((v12 + 1714820530) & 0x99C9FFED ^ 0x255B07BE85491F31) + a7 + ((a7 < v11) << 32);
  v15 = v14 + a2 - 0x255B07BE89A8D368;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((v16 + v10) & 0x4010E9E83BB82F35 ^ 0x200002033000124) + ((v16 + v10) & 0xB9EF1617C447D0CALL ^ 0x30C800000440D049) - 1;
  v18 = __ROR8__(v17 ^ 0x648F3655AB3EBC47, 8);
  v17 ^= 0xF10ABB52F2CE107CLL;
  v19 = (((2 * (v18 + v17)) & 0x475D9ED9F33B10C6) - (v18 + v17) + 0x5C5130930662779CLL) ^ 0x2D22AFA49D9BF845;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a3;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v9;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a8;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v8;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (a4 - ((v29 + v28) | a4) + ((v29 + v28) | 0xCC0A83AA59BDF645)) ^ 0x5BFFEF1AA28BEC36;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  *(a1 + a5 + v14) = (((((2 * (v32 + v31)) | 0x6AFFFDB07E3B3B12) - (v32 + v31) - 0x357FFED83F1D9D89) ^ 0xCD66D4ADD4E56F17) >> (8 * (v15 & 7u))) ^ *v15;
  return (*(v13 + 8 * ((25830 * (a6 == 0)) ^ v12)))();
}

uint64_t sub_1000B0A20()
{
  v6 = v1 < v2;
  *(v3 + v0 - 0x3E8CADFB2CA76998) = 0;
  v7 = v3 - 0x3E8CADFB06D76931 + (v4 + 3784);
  v8 = v6 ^ (v7 < v2);
  v9 = v7 < v1;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(v5 + 8 * (((16 * v6) | (32 * v6)) ^ v4)))();
}

uint64_t sub_1000B0B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x5AC]) = a8;
  STACK[0x900] = *(v9 + 8 * v8);
  return (*(v9 + 8 * ((v8 + 8754) ^ v8)))();
}

uint64_t sub_1000B0C58()
{
  v3 = *(v2 + 8 * v0);
  *(v1 - 200) = 53688491 * ((((2 * (v1 - 216)) | 0xC782D806) - (v1 - 216) + 473863165) ^ 0x55D8B4D5) - 939497975 + v0;
  *(v1 - 208) = v3 ^ (53688491 * ((((2 * (v1 - 216)) | 0x5E6E08C1C782D806) - (v1 - 216) - 0x2F370460E3C16C03) ^ 0x87D3415B55D8B4D5));
  v4 = (*(v2 + 8 * (v0 + 17519)))(v1 - 216);
  return (*(STACK[0x468] + 8 * (v0 ^ 0x2FB5 ^ (((v0 ^ (*(v1 - 216) == 91)) & 1) * (((v0 - 994) | 0x420) ^ 0x609)))))(v4);
}

uint64_t sub_1000B0D2C()
{
  v4 = v1 ^ 0x3C0;
  v5 = STACK[0x620];
  v6 = STACK[0x914];
  v7 = *(v0 + 8 * v4) - 1901182499 * ((v2 - 2 * (v2 & 0x56633E58E0BD97E1) + 0x56633E58E0BD97E1) ^ 0x674A7528ACA01003);
  *(v3 - 208) = STACK[0x838];
  *(v3 - 200) = v7;
  *(v3 - 192) = 1901182499 * ((v2 - 2 * (v2 & 0xE0BD97E1) - 524445727) ^ 0xACA01003) + v6 - 220635871;
  *(v3 - 188) = 1901182499 * ((v2 - 2 * (v2 & 0xE0BD97E1) - 524445727) ^ 0xACA01003) - 1426381849 + v4;
  *(v3 - 216) = v5;
  v8 = (*(v0 + 8 * (v4 ^ 0x4C48)))(v3 - 216);
  return (*(STACK[0x468] + 8 * (v4 ^ 0x2EB2 ^ (v4 + 1380))))(v8);
}

uint64_t sub_1000B0DEC()
{
  v4 = STACK[0x620];
  v5 = STACK[0x914];
  v6 = 1901182499 * ((2 * (v2 & 0x64EDD7972423BC18) - v2 - 0x64EDD7972423BC20) ^ 0xAA3B631897C1C402);
  v7 = *(v0 + 8 * v1) - v6;
  *(v3 - 208) = STACK[0x838];
  *(v3 - 200) = v7;
  *(v3 - 192) = v6 + v5 + 266204995 + v1 + 1382;
  *(v3 - 188) = v6 - 1426381849 + v1 + 2;
  *(v3 - 216) = v4;
  v8 = (*(v0 + 8 * (v1 + 17466)))(v3 - 216);
  return (*(STACK[0x468] + 8 * (v1 ^ 0x253F)))(v8);
}

uint64_t sub_1000B0F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = STACK[0x838];
  STACK[0x778] = STACK[0x838];
  LODWORD(STACK[0xA14]) = v8;
  STACK[0x898] = 0xAFE9FCD361E1173;
  LODWORD(STACK[0x62C]) = -1240130101;
  LODWORD(STACK[0x668]) = -1240130101;
  STACK[0x530] = 0x270676553BF336C1;
  STACK[0x5F8] = 0x5AB679E9A06C14EALL;
  return (*(v9 + 8 * ((115 * (((v10 == 0) ^ ((v7 ^ 0x16) + 88)) & 1)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B1014()
{
  STACK[0x740] = *(v2 + 8 * v1);
  LODWORD(STACK[0x430]) = STACK[0x954];
  LODWORD(STACK[0x450]) = STACK[0x9EC];
  LODWORD(STACK[0x420]) = STACK[0x974];
  v3 = *(v2 + 8 * ((15054 * (v0 != 1776537212)) ^ (v0 + 4492)));
  v4 = STACK[0x464];
  LODWORD(STACK[0x410]) = (LODWORD(STACK[0x464]) + 9731) | 0x30A;
  LODWORD(STACK[0x3F0]) = v4 + 12072;
  LODWORD(STACK[0x400]) = (v4 - 89818658) & 0x55A9D06;
  LODWORD(STACK[0x3E0]) = v4 + 15662;
  return v3();
}

uint64_t sub_1000B1108()
{
  v2 = LODWORD(STACK[0x464]) + 4331;
  STACK[0x450] = v0 + 0x79DA7ABF2E0146D9;
  return (*(v1 + 8 * v2))(4294959345, 4294960891, 6723, 4294960277, 4294962527, 3674076716, 4098);
}

uint64_t sub_1000B1270()
{
  v4 = v0 + 4108;
  v5 = STACK[0x450] == 0x9C25AF1FA68190E9;
  v6 = (v0 - 6388) | v2;
  (*(v3 + 8 * ((v0 + 4108) ^ 0x6012)))(v1 - 0x5AB679E9A06C14EALL);
  return (*(STACK[0x468] + 8 * (((v6 ^ 0x1B50) * v5) ^ v4)))(4294959345, 4294960891, 6723, 4294960277, 4294962527, 3674076716, 4098, 2876728310);
}

uint64_t sub_1000B16A8()
{
  LODWORD(STACK[0x2A0]) = v2;
  STACK[0x450] = (v1 ^ 0x2B5Cu) - 36222699;
  return (*(v3 + 8 * (v1 | (8 * ((((v1 ^ 0x2B5C) - 804919774) ^ (v0 - ((2 * v0) & 0x4FFED032) - 1476433895)) - 27954272 + ((2 * (v0 - ((2 * v0) & 0x4FFED032) - 1476433895)) & 0xEFF53FEE ^ 0x4FF41022) == 1984959383)))))();
}

uint64_t sub_1000B185C(uint64_t a1)
{
  v5 = *(v4 + 8 * ((220 * (v2 < (((v1 | 0x22) - 9997) ^ ((v1 | 0x22) - 2396) ^ 0x3E63u))) ^ (v1 | 0x22)));
  STACK[0x290] = v3;
  LODWORD(STACK[0x280]) = v2;
  return v5(a1, 0xC47CAF263BDF856ALL);
}

uint64_t sub_1000B18B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v14 = v10 & 0xFFFFFFF8;
  v16 = *(v13 + 8 * v8);
  LODWORD(STACK[0x430]) = v14;
  *&STACK[0x450] = xmmword_1004248B0;
  return v16(vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(a8), vdupq_n_s64(a2), vdupq_n_s64(v12), vdupq_n_s64(a6), vdupq_n_s64(v11), vdupq_n_s64(v9));
}

uint64_t sub_1000B19E0(uint64_t a1, int a2, int a3, int a4, int a5, int8x16_t a6, int8x16_t a7, int64x2_t a8, int8x16_t a9, int64x2_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v37 = (v19 + v22 + 8);
  v38.i64[0] = a1 + v37;
  v38.i64[1] = a1 + (v24 + v22 + 8);
  v39.i64[0] = a1 + (a4 + v22 + v23 + 8);
  v40.i64[0] = a1 + (v20 + v22 + 8);
  v40.i64[1] = a1 + (a16 + v22 + 8);
  v39.i64[1] = a1 + (a3 + v22 + 8);
  v41.i64[0] = a1 + (a5 + v22 + 8);
  v41.i64[1] = a1 + (a2 + v22 + 8);
  v42 = STACK[0x468];
  v43 = vandq_s8(v41, a6);
  v44 = vandq_s8(v40, a6);
  v45 = vandq_s8(v38, a6);
  v46 = vandq_s8(v39, a6);
  v47 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v51 = vsubq_s64(v48, vandq_s8(vaddq_s64(vaddq_s64(v48, v48), a8), a9));
  v52 = vaddq_s64(vsubq_s64(v50, vandq_s8(vaddq_s64(vaddq_s64(v50, v50), a8), a9)), a10);
  v53 = vaddq_s64(vsubq_s64(v49, vandq_s8(vaddq_s64(vaddq_s64(v49, v49), a8), a9)), a10);
  v54 = veorq_s8(v53, a11);
  v55 = veorq_s8(v52, a11);
  v56 = veorq_s8(v52, a12);
  v57 = veorq_s8(v53, a12);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(v59, vandq_s8(vaddq_s64(v59, v59), a13)), v25), v26);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(v58, vandq_s8(vaddq_s64(v58, v58), a13)), v25), v26);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v66, v66), v27), v66), v28), v29);
  v68 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v65, v65), v27), v65), v28), v29);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v67, v68);
  v72 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = veorq_s8(vaddq_s64(v72, v70), v30);
  v75 = veorq_s8(v73, v30);
  v76 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v77 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v78 = veorq_s8(v74, v76);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78);
  v81 = veorq_s8(vaddq_s64(v79, v77), v31);
  v82 = veorq_s8(v80, v31);
  v83 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), v32);
  v89 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v90 = veorq_s8(v87, v32);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = veorq_s8(v88, v89);
  v93 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v92);
  v95 = vaddq_s64(v93, v91);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, v33), vorrq_s8(v94, v34)), v34), v35);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, v33), vorrq_s8(v95, v34)), v34), v35);
  v98 = vaddq_s64(vsubq_s64(v47, vandq_s8(vaddq_s64(vaddq_s64(v47, v47), a8), a9)), a10);
  v134.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL))), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a7)));
  v134.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL))), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a7)));
  v99 = veorq_s8(v98, a11);
  v100 = veorq_s8(v98, a12);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), a13)), v25), v26);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v27), v104), v28), v29);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v30);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v31);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v32);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, v33), vorrq_s8(v113, v34)), v34), v35);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL)));
  v116 = vaddq_s64(v51, a10);
  v134.val[0] = vshlq_u64(veorq_s8(v115, v36), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a7)));
  v117 = veorq_s8(v116, a11);
  v118 = veorq_s8(v116, a12);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(v119, vandq_s8(vaddq_s64(v119, v119), a13)), v25), v26);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v27), v122), v28), v29);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v30);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v31);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v32);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v33), vorrq_s8(v131, v34)), v34), v35);
  v134.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL))), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a7)));
  *(a1 + v37 - 7) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v18 + v37)), 0x1212121212121212), *&vqtbl4q_s8(v134, *&STACK[0x450])));
  return (*(v42 + 8 * (((v21 == v22) * v17) ^ v16)))();
}

uint64_t sub_1000B1F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (v5 - 36222699);
  v8 = LODWORD(STACK[0x280]) == LODWORD(STACK[0x430]);
  STACK[0x450] = v7;
  return (*(v6 + 8 * ((((v7 ^ 0xFDD77C63) + v5 - 2991) * v8) ^ v5)))(a1, a2, a3, a4, a5, 0x367961E68191AF9ELL, 0x680CCFDCCAA3BBAALL, 0xE5616341D67C2B0ELL);
}

uint64_t sub_1000B20B0()
{
  v2 = STACK[0x9C0];
  STACK[0x528] = STACK[0x8D8] + 0x1458FF711094A44FLL;
  STACK[0x4D8] = v2;
  LODWORD(STACK[0x7AC]) = STACK[0xA14];
  LODWORD(STACK[0xA30]) = -1224668474;
  return (*(v1 + 8 * (v0 ^ 0x42B5436D ^ (((1879 * (v0 ^ 0x42B56213)) ^ 0x7475) * (v0 == -150213079)))))();
}

uint64_t sub_1000B2134(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x450] = *(v20 + 8 * v10);
  STACK[0x230] = v19 - 15;
  LODWORD(STACK[0x270]) = v11 & 0xFFFFFFF0;
  LODWORD(STACK[0x240]) = 16 - (v11 & 0xFFFFFFF0);
  LODWORD(STACK[0x260]) = a3;
  LODWORD(STACK[0x250]) = a5;
  *&STACK[0x3F0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x400] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3D0] = vdupq_n_s64(a2);
  *&STACK[0x3E0] = vdupq_n_s64(a8);
  *&STACK[0x3B0] = vdupq_n_s64(a6);
  *&STACK[0x3C0] = vdupq_n_s64(v18);
  *&STACK[0x390] = vdupq_n_s64(v9);
  *&STACK[0x3A0] = vdupq_n_s64(v16);
  *&STACK[0x360] = vdupq_n_s64(a7);
  *&STACK[0x370] = vdupq_n_s64(v15);
  *&STACK[0x340] = vdupq_n_s64(v8);
  *&STACK[0x350] = vdupq_n_s64(v14);
  *&STACK[0x320] = vdupq_n_s64(0xCB1FD105091A75A6);
  *&STACK[0x330] = vdupq_n_s64(v17);
  *&STACK[0x310] = vdupq_n_s64(0x80A3287483B4C7C9);
  *&STACK[0x2D0] = vdupq_n_s64(v13);
  *&STACK[0x2E0] = vdupq_n_s64(0x8562C5B0FD26117BLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xF8192A75EBF8F29ELL);
  *&STACK[0x2C0] = vdupq_n_s64(v12);
  v21 = LODWORD(STACK[0x240]);
  *&STACK[0x410] = xmmword_1004248A0;
  return (STACK[0x450])(a1, v21, (a5 + a3 - 2012913657));
}

uint64_t sub_1000B22F8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W6>, int a5@<W7>, int a6@<W8>, int8x16_t a7@<Q2>, int64x2_t a8@<Q4>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v41 = (v22 + v26);
  *&v42 = a1 + v41;
  *(&v42 + 1) = a1 + (a3 + v26);
  *&STACK[0x430] = v42;
  v43.i64[0] = a1 + (v14 + v26);
  v43.i64[1] = a1 + (v13 + v26);
  v44.i64[0] = a1 + (v10 + v26);
  v44.i64[1] = a1 + (v19 + v26);
  v45.i64[0] = a1 + (a5 + v26);
  v45.i64[1] = a1 + (a6 + v26);
  *&v42 = a1 + (v23 + v26);
  *(&v42 + 1) = a1 + v11 + v26 + ((v15 + 3639) ^ v25);
  *&STACK[0x450] = v42;
  v46.i64[0] = a1 + (v18 + v26);
  v46.i64[1] = a1 + (a4 + v26);
  v47 = *&STACK[0x400];
  v48 = vandq_s8(v46, *&STACK[0x400]);
  v49 = vandq_s8(v45, *&STACK[0x400]);
  v50 = vandq_s8(v44, *&STACK[0x400]);
  v51 = vandq_s8(v43, *&STACK[0x400]);
  v52 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v53 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v54 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  *&STACK[0x420] = vsubq_s64(v52, vandq_s8(vaddq_s64(vaddq_s64(v52, v52), v33), v32));
  v56 = vsubq_s64(v53, vandq_s8(vaddq_s64(vaddq_s64(v53, v53), v33), v32));
  v57 = vaddq_s64(vsubq_s64(v55, vandq_s8(vaddq_s64(vaddq_s64(v55, v55), v33), v32)), a8);
  v58 = vaddq_s64(vsubq_s64(v54, vandq_s8(vaddq_s64(vaddq_s64(v54, v54), v33), v32)), a8);
  v59 = veorq_s8(v58, *&STACK[0x3B0]);
  v60 = veorq_s8(v57, *&STACK[0x3B0]);
  v61 = veorq_s8(v57, a9);
  v62 = veorq_s8(v58, a9);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v61);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), a10)), v29), v30);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), a10)), v29), v30);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v68);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v71, v71), v31), v71), v28), v34);
  v73 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v70, v70), v31), v70), v28), v34);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v73);
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v35);
  v80 = veorq_s8(v78, v35);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v36);
  v87 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v88 = veorq_s8(v85, v36);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v86, v87);
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = veorq_s8(vaddq_s64(v91, v89), v37);
  v94 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v95 = veorq_s8(v92, v37);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v97 = veorq_s8(v93, v94);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v97);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v98, v39), vorrq_s8(v98, v38)), v38), v40);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, v39), vorrq_s8(v99, v38)), v38), v40);
  v104 = veorq_s8(v103, v102);
  v105 = veorq_s8(v100, v101);
  v106 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v101.i64[0] = a1 + (v20 + v26);
  v101.i64[1] = a1 + (v17 + v26);
  v108 = vaddq_s64(v56, a8);
  v203.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v107, v105), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v46, 3uLL), a7)));
  v203.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v106, v104), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), a7)));
  v109 = veorq_s8(v108, *&STACK[0x3B0]);
  v110 = veorq_s8(v108, a9);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(v111, vandq_s8(vaddq_s64(v111, v111), a10)), v29), v30);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v114, v114), v31), v114), v28), v34);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v35);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v36);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v37);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v39), vorrq_s8(v123, v38)), v38), v40);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v124.i64[0] = a1 + (v16 + v26);
  v124.i64[1] = a1 + (v24 + v26);
  v127 = vaddq_s64(v126, v125);
  v128 = vandq_s8(v124, v47);
  v129 = vaddq_s64(*&STACK[0x420], a8);
  v203.val[1] = vshlq_u64(veorq_s8(v127, *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), a7)));
  v130 = veorq_s8(v129, *&STACK[0x3B0]);
  v131 = veorq_s8(v129, a9);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(v132, vandq_s8(vaddq_s64(v132, v132), a10)), v29), v30);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), v31), v135), v28), v34);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v35);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v36);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), v37);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v144, v39), vorrq_s8(v144, v38)), v38), v40);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v148 = vandq_s8(v101, v47);
  v149 = vaddq_s64(v147, v146);
  v150 = vandq_s8(*&STACK[0x430], v47);
  v203.val[0] = vshlq_u64(veorq_s8(v149, *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), a7)));
  v151 = vandq_s8(*&STACK[0x450], v47);
  v152 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v156 = vsubq_s64(v152, vandq_s8(vaddq_s64(vaddq_s64(v152, v152), v33), v32));
  v157 = vaddq_s64(vsubq_s64(v155, vandq_s8(vaddq_s64(vaddq_s64(v155, v155), v33), v32)), a8);
  v158 = vaddq_s64(vsubq_s64(v154, vandq_s8(vaddq_s64(vaddq_s64(v154, v154), v33), v32)), a8);
  v154.i64[0] = vqtbl4q_s8(v203, *&STACK[0x410]).u64[0];
  v203.val[0] = veorq_s8(v158, *&STACK[0x3B0]);
  v203.val[1] = veorq_s8(v157, *&STACK[0x3B0]);
  v159 = veorq_s8(v157, a9);
  v203.val[2] = veorq_s8(v158, a9);
  v203.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203.val[0], 0x38uLL), v203.val[0], 8uLL), v203.val[2]);
  v203.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203.val[1], 0x38uLL), v203.val[1], 8uLL), v159);
  v203.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v203.val[1], vandq_s8(vaddq_s64(v203.val[1], v203.val[1]), a10)), v29), v30);
  v203.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v203.val[0], vandq_s8(vaddq_s64(v203.val[0], v203.val[0]), a10)), v29), v30);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v160 = veorq_s8(v203.val[0], vsraq_n_u64(vshlq_n_s64(v203.val[2], 3uLL), v203.val[2], 0x3DuLL));
  v203.val[2] = veorq_s8(v203.val[1], v203.val[3]);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v203.val[0], 0x38uLL), v203.val[0], 8uLL);
  v203.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203.val[1], 0x38uLL), v203.val[1], 8uLL), v203.val[2]);
  v203.val[1] = vaddq_s64(v203.val[3], v160);
  v203.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v203.val[1], v203.val[1]), v31), v203.val[1]), v28), v34);
  v203.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v203.val[0], v203.val[0]), v31), v203.val[0]), v28), v34);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v161 = veorq_s8(v203.val[0], vsraq_n_u64(vshlq_n_s64(v203.val[2], 3uLL), v203.val[2], 0x3DuLL));
  v203.val[2] = veorq_s8(v203.val[1], v203.val[3]);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v203.val[0], 0x38uLL), v203.val[0], 8uLL);
  v203.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203.val[1], 0x38uLL), v203.val[1], 8uLL), v203.val[2]);
  v203.val[1] = veorq_s8(vaddq_s64(v203.val[3], v161), v35);
  v203.val[0] = veorq_s8(v203.val[0], v35);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v162 = veorq_s8(v203.val[0], vsraq_n_u64(vshlq_n_s64(v203.val[2], 3uLL), v203.val[2], 0x3DuLL));
  v203.val[2] = veorq_s8(v203.val[1], v203.val[3]);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v203.val[0], 0x38uLL), v203.val[0], 8uLL);
  v203.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203.val[1], 0x38uLL), v203.val[1], 8uLL), v203.val[2]);
  v203.val[1] = veorq_s8(vaddq_s64(v203.val[3], v162), v36);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v203.val[0] = veorq_s8(v203.val[0], v36);
  v163 = veorq_s8(v203.val[0], vsraq_n_u64(vshlq_n_s64(v203.val[2], 3uLL), v203.val[2], 0x3DuLL));
  v203.val[2] = veorq_s8(v203.val[1], v203.val[3]);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v203.val[0], 0x38uLL), v203.val[0], 8uLL);
  v203.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203.val[1], 0x38uLL), v203.val[1], 8uLL), v203.val[2]);
  v203.val[1] = veorq_s8(vaddq_s64(v203.val[3], v163), v37);
  v203.val[0] = veorq_s8(v203.val[0], v37);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v164 = veorq_s8(v203.val[0], vsraq_n_u64(vshlq_n_s64(v203.val[2], 3uLL), v203.val[2], 0x3DuLL));
  v203.val[2] = veorq_s8(v203.val[1], v203.val[3]);
  v203.val[3] = vsraq_n_u64(vshlq_n_s64(v203.val[0], 0x38uLL), v203.val[0], 8uLL);
  v203.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203.val[1], 0x38uLL), v203.val[1], 8uLL), v203.val[2]);
  v203.val[1] = vaddq_s64(v203.val[3], v164);
  v203.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v203.val[0], v39), vorrq_s8(v203.val[0], v38)), v38), v40);
  v203.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v203.val[1], v39), vorrq_s8(v203.val[1], v38)), v38), v40);
  v165 = vaddq_s64(v156, a8);
  v203.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203.val[0], 0x38uLL), v203.val[0], 8uLL), veorq_s8(v203.val[0], vsraq_n_u64(vshlq_n_s64(v203.val[2], 3uLL), v203.val[2], 0x3DuLL))), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v124, 3uLL), a7)));
  v203.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203.val[1], 0x38uLL), v203.val[1], 8uLL), veorq_s8(v203.val[1], vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL))), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v101, 3uLL), a7)));
  v166 = veorq_s8(v165, *&STACK[0x3B0]);
  v167 = veorq_s8(v165, a9);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(v168, vandq_s8(vaddq_s64(v168, v168), a10)), v29), v30);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), v31), v171), v28), v34);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v35);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v36);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v37);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180, v39), vorrq_s8(v180, v38)), v38), v40);
  v182 = vaddq_s64(vsubq_s64(v153, vandq_s8(vaddq_s64(vaddq_s64(v153, v153), v33), v32)), a8);
  v203.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL))), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x430], 3uLL), a7)));
  v183 = veorq_s8(v182, *&STACK[0x3B0]);
  v184 = veorq_s8(v182, a9);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(v185, vandq_s8(vaddq_s64(v185, v185), a10)), v29), v30);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188, v188), v31), v188), v28), v34);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v35);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v36);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v37);
  v196 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v197 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v198 = veorq_s8(v195, v196);
  v199 = vaddq_s64(v197, v198);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199, v39), vorrq_s8(v199, v38)), v38), v40);
  v203.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL))), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x450], 3uLL), a7)));
  v198.i64[0] = vqtbl4q_s8(v203, *&STACK[0x410]).u64[0];
  v198.i64[1] = v154.i64[0];
  v203.val[0] = vrev64q_s8(*(v12 + v41));
  v203.val[1].i64[0] = 0x1212121212121212;
  v203.val[1].i64[1] = 0x1212121212121212;
  v201 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v203.val[0], v203.val[0], 8uLL), v203.val[1]), v198));
  *(a1 + v41 - 15) = vextq_s8(v201, v201, 8uLL);
  return (*(v21 + 8 * (((a2 == v26) * v27) ^ v15)))();
}

uint64_t sub_1000B2D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = (a5 - 36233840);
  v8 = LODWORD(STACK[0x280]) == LODWORD(STACK[0x270]);
  STACK[0x450] = v7;
  return (*(v6 + 8 * (((v7 ^ 0xFDD7433F ^ (a5 - 9066)) * v8) ^ a5)))(a1, 0xC47CAF263BDF856ALL, LODWORD(STACK[0x260]), v5, LODWORD(STACK[0x250]), 0x367961E68191AF9ELL, 0x680CCFDCCAA3BBAALL, 0xE5616341D67C2B0ELL);
}

uint64_t sub_1000B2ED4(uint64_t a1)
{
  v3 = *(v2 + 8 * (v1 + 973));
  STACK[0x450] = (v1 - 36219708);
  return v3(a1, 7596);
}

uint64_t sub_1000B2F2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>)
{
  v23 = (a6 + v10);
  v24 = __ROR8__((a1 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v24 - ((a5 + 2 * v24) & v11) + v20;
  v26 = v25 ^ a3;
  v27 = v25 ^ v17;
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - (v7 & (2 * (v28 + v27))) + v16) ^ a4;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(((v15 | (2 * (v31 + v30))) - (v31 + v30) + v6) ^ v18, 8);
  v33 = ((v15 | (2 * (v31 + v30))) - (v31 + v30) + v6) ^ v18 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ 0xCB1FD105091A75A6;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x80A3287483B4C7C9;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x8562C5B0FD26117BLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v8 - ((v40 + v39) | v8) + ((v40 + v39) | v14)) ^ v13;
  *(a1 + v23) = *(v21 + v23) ^ v12 ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v39, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((a1 + a6 + v10) & 7)));
  return (*(v22 + 8 * (((a6 - 1 == v19) * a2) ^ v9)))();
}

uint64_t sub_1000B3070(unint64_t a1)
{
  v2 = STACK[0x450];
  v3 = (STACK[0x450] + 36218913) | 0x8A1;
  STACK[0x8F0] = a1;
  LODWORD(STACK[0x600]) = STACK[0x2A0];
  return (*(v1 + 8 * (v2 ^ 0xFDD7516E ^ (7341 * (v2 == v3 - 1490974006)))))();
}

uint64_t sub_1000B310C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x41E3)))();
  v3 = STACK[0x468];
  STACK[0x838] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000B3220@<X0>(int a1@<W8>)
{
  STACK[0x680] = *(v6 + 8 * a1);
  STACK[0x7C0] = v2;
  LODWORD(STACK[0x588]) = v3;
  STACK[0x9A8] = v1;
  STACK[0x978] = 0x13B218D63E46E6FBLL;
  LODWORD(STACK[0x824]) = -1240130101;
  LOWORD(STACK[0xA1A]) = 27659;
  LODWORD(STACK[0x7C8]) = -1240130101;
  LODWORD(STACK[0x9CC]) = -1240130101;
  STACK[0x920] = 0x7643118333A2D791;
  STACK[0x618] = 0;
  v7 = (*(v6 + 8 * (v4 ^ 0x79D5)))(16);
  v8 = STACK[0x468];
  STACK[0x690] = v7 + v5;
  return (*(v8 + 8 * (((v7 == 0) * (v4 - 11622 + ((v4 - 4800) ^ 0xFFFFDAC3))) ^ v4)))();
}

uint64_t sub_1000B32F4(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000B33B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x9A8] == 0;
  STACK[0x580] = STACK[0x9A8];
  return (*(v8 + 8 * ((v9 * ((((v7 - 8704) | 0x2010) - 8072) ^ 0xC16)) ^ ((v7 - 8704) | 0x2010))))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B3410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = ((v8 << ((v9 + 53) & 0xFB ^ 0xDAu)) & 0xFF7785F4) + (v8 ^ 0xAE7DF7F77FBBC2FALL);
  STACK[0xBD0] = v11 + 0x7DD6A9C9FD6EFFE8;
  STACK[0xBD8] = v7;
  return (*(v10 + 8 * ((11517 * ((((v9 - 3222) | 0x609u) ^ 0x653420DEBE8B25EALL) - v7 + v11 < 0xFFFFFFFFFFFFFFF6)) ^ v9)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000B35BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *(a8 - 0x270676553BF336C1);
  STACK[0x520] = 0x4761F68478C333F5;
  STACK[0x810] = 0x3470F9770ACA47A1;
  return (*(v10 + 8 * (((v11 == v9) * ((((v8 - 423952514) & 0x1944FB9F) - 497) ^ 0x659)) ^ (v8 - 1255))))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B3644@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  STACK[0x6A0] = a1;
  LODWORD(STACK[0x510]) = -365885575;
  STACK[0x6F0] = a21;
  LODWORD(STACK[0x704]) = -943473141;
  return (*(v22 + 8 * v21))();
}

uint64_t sub_1000B3710()
{
  v2 = *(STACK[0x520] - 0x4761F68478C333DDLL);
  STACK[0x848] = v2;
  return (*(v1 + 8 * ((45 * ((((((v0 - 665766695) & 0x7C377FF7 ^ 0x219) - 6888) ^ (v2 == 0)) & 1) == 0)) ^ (v0 - 665766695) & 0x7C377FF7u)))();
}

uint64_t sub_1000B379C()
{
  v3 = (v1 | ((v1 < 0x18FD695E) << 32)) + 0x63B35582ECF95D72;
  STACK[0xAC8] = v3;
  v4 = STACK[0x810];
  STACK[0xAD0] = STACK[0x810];
  return (*(v2 + 8 * ((20865 * ((((v3 - v4 - 0x2F425C0BFB2C7F39) ^ ~((v0 | 9) << 32)) & (v3 - v4 - 0x2F425C0BFB2C7F39 - (v0 | ((v0 | 9) << 32))) | ((v0 | 9) << 32) & ~(v3 - v4 - 0x2F425C0BFB2C7F39)) >> 63)) ^ (v0 + 6353))))();
}

uint64_t sub_1000B397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  STACK[0x4B0] = *(STACK[0x8D8] - 0x270676553BF336C1);
  LODWORD(STACK[0x634]) = -815579951;
  STACK[0x6C0] = a35;
  LODWORD(STACK[0x7F4]) = -925056812;
  return (*(v36 + 8 * v35))(a1, 3351494148);
}

uint64_t sub_1000B39DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  LOWORD(STACK[0xAAE]) = v7;
  v9 = *(v8 + 8 * ((a7 - 328) ^ 0xA9C ^ (4841 * (((a7 - 328) ^ 0x509110BBu) > 0x8EC087F6))));
  LODWORD(STACK[0x390]) = v7;
  return v9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000B4100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LODWORD(STACK[0x464]) + 11118;
  v73 = (v70 ^ 0xB6151DCB) + a70;
  STACK[0xA38] = v73 + 10;
  v73 -= 0x18927B711AAAAF4ALL;
  v74 = v73 < 0xEFC965F7;
  v75 = v73 > a50;
  if (a50 < 0xEFC965F7 != v74)
  {
    v76 = v74;
  }

  else
  {
    v76 = v75;
  }

  return (*(v71 + 8 * (v72 ^ (!v76 | (16 * !v76)))))();
}

uint64_t sub_1000B4298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = *(v7 + 8 * ((a7 - 335) ^ 0xA87));
  LODWORD(STACK[0x3E0]) = 64380;
  return v8();
}

uint64_t sub_1000B4300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x464];
  LODWORD(STACK[0xA44]) = v6;
  return (*(v7 + 8 * (v8 + 677)))(a1, a2, a3, a4, a5, a6, STACK[0x400]);
}

uint64_t sub_1000B4364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53)
{
  v55 = LODWORD(STACK[0x464]) + 15019;
  LODWORD(STACK[0xA4C]) = v53;
  v56 = (v53 ^ 0xB6151DCB) + STACK[0x2E0];
  STACK[0xA50] = v56 + 10;
  v56 -= 0x13B218D61A5BAD32;
  v57 = v56 < 0x23EB39BF;
  v58 = v56 > a53;
  if (a53 < 0x23EB39BF != v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = v58;
  }

  return (*(v54 + 8 * (v55 ^ (v59 | (16 * v59)))))();
}

uint64_t sub_1000B4514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = *(v7 + 8 * ((a7 - 331) ^ 0xA9B));
  LODWORD(STACK[0x3A0]) = 64380;
  return v8();
}

uint64_t sub_1000B4584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unint64_t a54)
{
  v56 = STACK[0x464];
  v57 = (v54 ^ 0xB6151DCB) + STACK[0x260];
  STACK[0xA80] = v57 + 10;
  v57 -= 0x4CC5F8EDC6C1EDA6;
  v58 = v57 < 0x7FCC1A6C;
  v59 = v57 > a54;
  if (a54 < 0x7FCC1A6C != v58)
  {
    v60 = v58;
  }

  else
  {
    v60 = v59;
  }

  return (*(v55 + 8 * ((v56 + 16799) ^ (112 * v60))))();
}

uint64_t sub_1000B46F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = *(v7 + 8 * ((a7 - 323) ^ 0xA93));
  LODWORD(STACK[0x3B0]) = 64380;
  return v8();
}

uint64_t sub_1000B4788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57)
{
  v59 = LODWORD(STACK[0x464]) + 9613;
  v60 = (v57 ^ 0xB6151DCB) + STACK[0x2C0];
  STACK[0xAB0] = v60 + 10;
  v60 -= 0x4F9B2EECE569AA52;
  v61 = v60 < 0x8F59CF8F;
  v62 = v60 > a57;
  if (a57 < 0x8F59CF8F != v61)
  {
    v63 = v61;
  }

  else
  {
    v63 = v62;
  }

  return (*(v58 + 8 * (v59 ^ (97 * !v63))))();
}

uint64_t sub_1000B4980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = *(v7 + 8 * ((a7 - 430) ^ 0xA26));
  LODWORD(STACK[0x390]) = 64380;
  return v8();
}

uint64_t sub_1000B49A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, unint64_t a56)
{
  v58 = LODWORD(STACK[0x464]) + 14069;
  v59 = (v56 ^ 0xB6151DCB) + STACK[0x2A0];
  STACK[0xAA0] = v59 + 10;
  v59 -= 0x23E3161977C94AE2;
  v60 = v59 < 0x9EE8F4B6;
  v61 = v59 > a56;
  if (a56 < 0x9EE8F4B6 != v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = v61;
  }

  return (*(v57 + 8 * (v58 ^ (37 * v62))))();
}

uint64_t sub_1000B4B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = *(v7 + 8 * (a7 + 2092));
  LODWORD(STACK[0x3C0]) = 64380;
  return v8();
}

uint64_t sub_1000B4BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55)
{
  v57 = LODWORD(STACK[0x464]);
  v58 = (v55 ^ 0xB6151DCB) + STACK[0x280];
  STACK[0xA90] = v58 + 10;
  v58 -= 0x364437D0896C2429;
  v59 = v58 < 0x6AAF0B58;
  v60 = v58 > a55;
  if (a55 < 0x6AAF0B58 != v59)
  {
    v61 = v59;
  }

  else
  {
    v61 = v60;
  }

  return (*(v56 + 8 * ((v57 + 5256) ^ (!v61 | (16 * !v61)))))(a1, a2, a3, a4, a5, a6, v57);
}

uint64_t sub_1000B4D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = *(v7 + 8 * (a7 + 2092));
  LODWORD(STACK[0x3D0]) = 64380;
  return v8();
}

uint64_t sub_1000B522C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(v8 + 8 * (a7 + 2092));
  LOWORD(STACK[0xA36]) = v7;
  LODWORD(STACK[0x3E0]) = v7;
  return v9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000B529C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(v8 + 8 * (a7 + 2092));
  LOWORD(STACK[0xA8E]) = v7;
  LODWORD(STACK[0x3D0]) = v7;
  return v9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000B5334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(v8 + 8 * ((a7 - 350) ^ 0xAF6));
  LOWORD(STACK[0xA4A]) = v7;
  LODWORD(STACK[0x3A0]) = v7;
  return v9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000B53B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(v8 + 8 * (a7 + 2092));
  LOWORD(STACK[0xA9E]) = v7;
  LODWORD(STACK[0x3C0]) = v7;
  return v9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000B53D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(v8 + 8 * (a7 + 2092));
  LOWORD(STACK[0xA7E]) = v7;
  LODWORD(STACK[0x3B0]) = v7;
  return v9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000B5400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xAE0] + (v7 ^ 0xB6151DCB) - 0x322D9C1446E1CD5ELL;
  v10 = STACK[0xAD8] - 0xA84FBEB42C2A4A1;
  v11 = v9 < 0x9A388CE2;
  v12 = v9 > v10;
  if (v11 != v10 < 0x9A388CE2)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((50 * v12) ^ (LODWORD(STACK[0x464]) + 17191))))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000B5578()
{
  v2 = ((LODWORD(STACK[0x464]) + 1645881650) ^ 0xB9995A5C153D391DLL) + STACK[0xB00] + (v0 ^ 0xB6151DCB);
  v3 = STACK[0xAF8] - 0x15BADA869C40BF95;
  v4 = v2 < 0x14A6B839;
  v5 = v2 > v3;
  if (v3 < 0x14A6B839 != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((4092 * !v5) ^ (LODWORD(STACK[0x464]) + 477))))();
}

uint64_t sub_1000B5734()
{
  v2 = STACK[0x464];
  LODWORD(STACK[0x9CC]) = v0;
  return (*(v1 + 8 * (v2 + 10360)))();
}

uint64_t sub_1000B5764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xB90] + (v7 ^ 0xB6151DCB) - 0x1F5F9432F6972BD4;
  v10 = ((LODWORD(STACK[0x464]) + 3322) ^ 0xC1F2BC21FC794D0FLL) + STACK[0xB88];
  v11 = v9 < 0xF75FB9B5;
  v12 = v9 > v10;
  if (v11 != v10 < 0xF75FB9B5)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((4 * v12) | (16 * v12) | (LODWORD(STACK[0x464]) + 11150))))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000B59F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x464];
  v10 = LODWORD(STACK[0x464]) + 8661;
  LODWORD(STACK[0x7F8]) = v7;
  v11 = LOWORD(STACK[0xA36]);
  STACK[0x508] = STACK[0xA38];
  return (*(v8 + 8 * ((7521 * (v11 == (v9 ^ 0xFD61))) ^ v10)))(a1, 3351494148, a3, a4, a5, a6, a7, 1418211956);
}

uint64_t sub_1000B5AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = LODWORD(STACK[0x464]);
  LODWORD(STACK[0x8E8]) = v6;
  v9 = LOWORD(STACK[0xA7E]);
  STACK[0x980] = STACK[0xA80];
  return (*(v7 + 8 * ((17230 * (v9 == (v8 ^ 0xFD61))) ^ (v8 + 266))))(a1, a2, a3, a4, a5, a6, v8, 1418211956);
}

uint64_t sub_1000B5B84()
{
  v2 = STACK[0xAD0] + (v0 ^ 0xB6151DCB) - 0x3470F976298CE450;
  v3 = STACK[0xAC8] - 0x63B3558224B96389;
  v4 = v2 < 0xE13D6347;
  v5 = v2 > v3;
  if (v4 != v3 < ((LODWORD(STACK[0x464]) + 5313) ^ 0xE13D7999uLL))
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((25 * !v5) ^ (LODWORD(STACK[0x464]) + 13361))))();
}

uint64_t sub_1000B5D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xAF0] + (v7 ^ 0xB6151DCB) - 0x2C0571FF2D47EB3CLL;
  v10 = STACK[0xAE8] - 0x2A12DA12AD1D55A8;
  v11 = v9 < 0x9A9D2138;
  v12 = v9 > v10;
  if (v11 != v10 < 0x9A9D2138)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((115 * !v12) ^ (LODWORD(STACK[0x464]) + 8587))))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000B5F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xB30] + (v7 ^ 0xB6151DCB) - 0x3706D67873A2FAD0;
  v10 = STACK[0xB28] - 0x77BFCEBE7E219EC8;
  v11 = v9 < 0x78C8C83E;
  v12 = v9 > v10;
  if (v11 != v10 < 0x78C8C83E)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((57 * v12) ^ (LODWORD(STACK[0x464]) + 17327))))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000B6100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (LODWORD(STACK[0x464]) - 477) | 0x23A4;
  v10 = LODWORD(STACK[0x464]) + 8647;
  LODWORD(STACK[0x630]) = v7;
  v11 = SLOWORD(STACK[0xA9E]);
  STACK[0x888] = STACK[0xAA0];
  return (*(v8 + 8 * (((v11 == -1156) * (v9 ^ 0x39BD)) ^ v10)))(a1, a2, a3, a4, a5, a6, a7, 1418211956);
}

uint64_t sub_1000B61A0()
{
  v2 = STACK[0x464];
  v3 = LODWORD(STACK[0x464]) + 8874;
  LODWORD(STACK[0x8EC]) = v0;
  v4 = LOWORD(STACK[0xAAE]);
  STACK[0x960] = STACK[0xAB0];
  return (*(v1 + 8 * ((456 * (v4 == ((v2 + 3405) ^ 0xE816))) ^ v3)))();
}

uint64_t sub_1000B6244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = LODWORD(STACK[0x464]);
  LODWORD(STACK[0x67C]) = v6;
  v9 = SLOWORD(STACK[0xA8E]);
  STACK[0x868] = STACK[0xA90];
  return (*(v7 + 8 * (((v9 == -1156) * (((v8 - 538) | 0x324) ^ 0x3161)) ^ (v8 + 5256))))(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_1000B62D8()
{
  v2 = STACK[0xB10] + (v0 ^ 0xB6151DCB) - 0x42504346EAB2AEFCLL;
  v3 = STACK[0xB08] - 0x6400522B6F884E33;
  v4 = v2 < 0x5C15C7D;
  v5 = v2 > v3;
  if (v4 != v3 < 0x5C15C7D)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((23 * !v5) ^ (LODWORD(STACK[0x464]) + 7634))))();
}

uint64_t sub_1000B6500()
{
  v2 = v0 | 0x6C0341C8;
  v3 = 5 * ((v0 | 0x6C0341C8) ^ 0x6C0BE0C4u);
  v4 = (STACK[0x2E0] - 0x13B218D63E46E6F7 + STACK[0x580]);
  v5 = v4[13];
  v6 = (v4 + 13);
  v7 = (v4 + 13) & 0xFFFFFFFFFFFFFFF8;
  v8 = __ROR8__((v4 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (v8 + 0x72B0B1A0EB3E1587) ^ (v3 - 0x3E3D448D3A71450DLL);
  v10 = __ROR8__((v8 + 0x72B0B1A0EB3E1587) ^ 0x544736759C7E6D2BLL, 8);
  v11 = (((2 * (v10 + v9)) | 0x713ADA83E03030C8) - (v10 + v9) - 0x389D6D41F0181864) ^ 0x49EEF2766BE197BDLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((v13 + v12) | 0x2461F968FBFF0163) - ((v13 + v12) | 0xDB9E06970400FE9CLL) - 0x2461F968FBFF0164) ^ 0x5ABBE9B01342E516;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((v16 + v15) | 0x6D6BB52985E2F24DLL) - ((v16 + v15) | 0x92944AD67A1D0DB2) - 0x6D6BB52985E2F24ELL) ^ 0xA674642C8CF887EBLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0xCCD960305F813542) + 0x666CB0182FC09AA1) ^ 0xE6CF986CAC745D68;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8562C5B0FD26117BLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x97F56CB0FB361A73;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((((v26 + v25) & 0x9A045EBD5DF4F657 ^ 0x12044C3111048417) + ((v26 + v25) & 0x65FBA142A20B09A8 ^ 0x1182042A0090109) - 1) ^ 0xEB0546065AF57781) >> (8 * ((LOBYTE(STACK[0x2E0]) + 9 + LOBYTE(STACK[0x580]) + 6) & 7u))) ^ v4[6];
  LODWORD(v25) = v4[7];
  v28 = __ROR8__((v4 + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (v28 + 0x72B0B1A0EB3E1587) ^ 0xC1C2BB72C58EC110;
  v30 = (__ROR8__((v28 + 0x72B0B1A0EB3E1587) ^ 0x544736759C7E6D2BLL, 8) + v29) ^ 0x71739F379BF98FD9;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x7EDA10D8E8BDE475;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xCB1FD105091A75A6;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((v36 + v35) ^ 0x931AAD2D149C7419 | 0xB50B4E64146C30EELL) - ((v36 + v35) ^ 0x931AAD2D149C7419 | 0x4AF4B19BEB93CF11) + 0x4AF4B19BEB93CF11) ^ 0xA6B2CB3D8344833ELL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x8562C5B0FD26117BLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x97F56CB0FB361A73;
  v42 = (((((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((LOBYTE(STACK[0x2E0]) + 9 + LOBYTE(STACK[0x580]) + 7) & 7u))) ^ v25) << 48) | (v27 << 56);
  v43 = __ROR8__((v6 - 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = (0xD4F4E5F14C1EA78 - v43) & 0x48473740FE452EF0 | (v43 + 0x72B0B1A0EB3E1587) & 0xB1B8C8BF01BAD10FLL;
  v45 = v44 ^ 0x1E000135623B43DBLL;
  v44 ^= 0x8B858C323BCBEFE0;
  v46 = (__ROR8__(v45, 8) + v44) ^ 0x71739F379BF98FD9;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) | 0xCD70925242C3C4F8) - (v48 + v47) - 0x66B849292161E27CLL) ^ 0x186259F1C9DC0609;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xCB1FD105091A75A6;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x80A3287483B4C7C9;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x8562C5B0FD26117BLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (v57 + v56 - ((2 * (v57 + v56)) & 0xAECF792BC5D2DC2ALL) - 0x2898436A1D1691EBLL) ^ 0x4092D02519DF7466;
  v59 = v42 | (((((__ROR8__(v58, 8) + (v58 ^ __ROR8__(v56, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v6 - 5) & 7))) ^ *(v6 - 5)) << 40);
  v60 = __ROR8__((v6 - 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = (v60 + 0x72B0B1A0EB3E1587) ^ 0xC1C2BB72C58EC110;
  v62 = __ROR8__((v60 + 0x72B0B1A0EB3E1587) ^ 0x544736759C7E6D2BLL, 8);
  v63 = (((v62 + v61) | 0xA023A7F3D3809006) - ((v62 + v61) | 0x5FDC580C2C7F6FF9) + 0x5FDC580C2C7F6FF9) ^ 0xD15038C448791FDFLL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x7EDA10D8E8BDE475;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((v67 + v66) | 0x84F6E75AB8989892) - ((v67 + v66) | 0x7B0918A54767676DLL) + 0x7B0918A54767676DLL) ^ 0x4FE9365FB182ED34;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x80A3287483B4C7C9;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x8562C5B0FD26117BLL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x97F56CB0FB361A73;
  v75 = v59 | (((((__ROR8__(v74, 8) + (v74 ^ __ROR8__(v73, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v6 - 4) & 7))) ^ *(v6 - 4)) << 32);
  v76 = __ROR8__((v6 - 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((2 * (v76 + 0x72B0B1A0EB3E1587)) | 0x67BC5CBBF13EB39CLL) - (v76 + 0x72B0B1A0EB3E1587) - 0x33DE2E5DF89F59CELL;
  v78 = v77 ^ 0x6799182864E134E5;
  v77 ^= 0xF21C952F3D1198DELL;
  v79 = __ROR8__(v78, 8);
  v80 = (((2 * (v79 + v77)) & 0x82CA1806AE1DB8DELL) - (v79 + v77) - 0x41650C03570EDC70) ^ 0xCFE96CCB3308AC49;
  v81 = v80 ^ __ROR8__(v77, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((2 * (v82 + v81)) & 0x2880929527931986) - (v82 + v81) - 0x1440494A93C98CC4) ^ 0x9565A66D848B9749;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (v85 + v84 - ((2 * (v85 + v84)) & 0x8E3773EB16A74C72) - 0x38E4460A74AC59C7) ^ 0xC0468F08249D39FLL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = __ROR8__((((2 * (v88 + v87)) & 0x91DFEE1C4BEF4914) - (v88 + v87) - 0x48EFF70E25F7A48BLL) ^ 0x37B3208559BC9CBCLL, 8);
  v90 = (((2 * (v88 + v87)) & 0x91DFEE1C4BEF4914) - (v88 + v87) - 0x48EFF70E25F7A48BLL) ^ 0x37B3208559BC9CBCLL ^ __ROR8__(v87, 61);
  v91 = (v89 + v90) ^ 0x8562C5B0FD26117BLL;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0x97F56CB0FB361A73;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = v75 & 0xFFFFFFFF00FFFFFFLL | (((((((2 * (v95 + v94)) | 0xB2FB2A0ED78CC55ALL) - (v95 + v94) + 0x26826AF894399D53) ^ 0x2164BF72803E9033) >> (8 * ((v6 - 3) & 7))) ^ *(v6 - 3)) << 24);
  v97 = __ROR8__((v6 - 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v98 = ((2 * (v97 + 0x72B0B1A0EB3E1587)) | 0x9AE35AD9861BF272) - (v97 + 0x72B0B1A0EB3E1587) - 0x4D71AD6CC30DF939;
  v99 = v98 ^ 0x19369B195F739412;
  v98 ^= 0x8CB3161E06833829;
  v100 = (__ROR8__(v99, 8) + v98) ^ 0x71739F379BF98FD9;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (v102 + v101 - ((2 * (v102 + v101)) & 0x2BC8008860824A6CLL) + 0x15E4004430412536) ^ 0x6B3E109CD8FCC143;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xCB1FD105091A75A6;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x80A3287483B4C7C9;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0x8562C5B0FD26117BLL;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((2 * (v111 + v110)) & 0x69CA6988AE6A0444) - (v111 + v110) - 0x34E534C457350223) ^ 0x5CEFA78B53FCE7AELL;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = __ROR8__(v112, 8);
  v115 = v96 & 0xFFFFFFFFFF00FFFFLL | (((((((2 * (v114 + v113)) & 0x6EFA78B9B3A9E712) - (v114 + v113) + 0x4882C3A3262B0C76) ^ 0xB09BE9D6CDD3FEE8) >> (8 * ((v6 - 2) & 7))) ^ *(v6 - 2)) << 16);
  v116 = *--v6;
  v117 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  v118 = ((0x8D4F4E5F14C1EA78 - v117) & 0x88CD6B4F59250F5CLL) + v117 + 0x72B0B1A0EB3E1587 - ((v117 + 0x72B0B1A0EB3E1587) & 0x8ACD6B4F59250F5CLL);
  v119 = v118 ^ 0xDE8A5D3AC55B6277;
  v118 ^= 0x4B0FD03D9CABCE4CuLL;
  v120 = (__ROR8__(v119, 8) + v118) ^ 0x71739F379BF98FD9;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x7EDA10D8E8BDE475;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = __ROR8__((((v124 + v123) & 0x6CABF789BC813DF5 ^ 0x440A270910801D01) + ((v124 + v123) & 0x93540876437EC20ALL ^ 0x50084603328003) - 1) ^ 0x8F45FE4A1AA8E8A5, 8);
  v126 = (((v124 + v123) & 0x6CABF789BC813DF5 ^ 0x440A270910801D01) + ((v124 + v123) & 0x93540876437EC20ALL ^ 0x50084603328003) - 1) ^ 0x8F45FE4A1AA8E8A5 ^ __ROR8__(v123, 61);
  v127 = (v125 + v126) ^ 0x80A3287483B4C7C9;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (((2 * (v129 + v128)) | 0x2725BF17C666F6D4) - (v129 + v128) + 0x6C6D20741CCC8496) ^ 0x16F01A3B1E156A11;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0x97F56CB0FB361A73;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v135 = (((((v134 + v133) | 0x2FFA8ED465EDDB49) - ((v134 + v133) | 0xD005712B9A1224B6) - 0x2FFA8ED465EDDB4ALL) ^ 0xD7E3A4A18E1529D7) >> (8 * (v6 & 7u))) ^ v116;
  v136 = __ROR8__(v7, 8);
  v137 = v115 & 0xFFFFFFFFFFFF00FFLL | (v135 << 8);
  v138 = v136 - ((2 * v136 + 0x25616341D67C2B0ELL) & 0x26A047EDD63D1CEELL) + 0xA00D597D65CA3FELL;
  v139 = v138 ^ 0xC31715837760E35CLL;
  v138 ^= 0x569298842E904F67uLL;
  v140 = __ROR8__(v139, 8);
  v141 = __ROR8__((v140 + v138 - ((2 * (v140 + v138)) & 0xAF240C7C031DA904) - 0x286DF9C1FE712B7ELL) ^ 0xA6E199099A775B5BLL, 8);
  v142 = (v140 + v138 - ((2 * (v140 + v138)) & 0xAF240C7C031DA904) - 0x286DF9C1FE712B7ELL) ^ 0xA6E199099A775B5BLL ^ __ROR8__(v138, 61);
  v143 = (v141 + v142 - ((2 * (v141 + v142)) & 0xB8C951CC6C439EF4) + 0x5C64A8E63621CF7ALL) ^ 0x22BEB83EDE9C2B0FLL;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (((2 * (v145 + v144)) | 0xA03B9483A252B4C6) - (v145 + v144) + 0x2FE235BE2ED6A59DLL) ^ 0x1B021B44D8332FC5;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = __ROR8__(v146, 8);
  v149 = (((2 * (v148 + v147)) | 0xB1DBC268BBEB0D1CLL) - (v148 + v147) + 0x27121ECBA20A7972) ^ 0x584EC940DE414147;
  v150 = v149 ^ __ROR8__(v147, 61);
  v151 = __ROR8__(v149, 8);
  v152 = (v151 + v150 - ((2 * (v151 + v150)) & 0x7A9C67DBBE8213FALL) - 0x42B1CC1220BEF603) ^ 0x382CF65D22671886;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (v154 + v153 - ((2 * (v154 + v153)) & 0x92D54379182C8AC2) + 0x496AA1BC8C164561) ^ 0xDE9FCD0C77205F12;
  v156 = v137 | ((((__ROR8__(v155, 8) + (v155 ^ __ROR8__(v153, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((LOBYTE(STACK[0x2E0]) + 9 + LOBYTE(STACK[0x580]) + 13) & 7u))) ^ v5);
  STACK[0x920] = v156 + 0x7643118333A2D791 - ((2 * v156) & 0xEC8623066745AF22);
  return (*(v1 + 8 * (v2 ^ 0x6C0BCF68 ^ (29648 * (v2 < 0x637A5A0F)))))();
}

uint64_t sub_1000B7768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = 45 * (a7 ^ 0x3DD9);
  STACK[0x618] = STACK[0x580] + STACK[0x2E0] + ((v8 - 10360) ^ 0xEC4DE729C1B91F12);
  return (*(v7 + 8 * v8))();
}

uint64_t sub_1000B77C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x978] = STACK[0xA50];
  LODWORD(STACK[0x824]) = STACK[0xA44];
  LOWORD(STACK[0xA1A]) = STACK[0xA4A];
  LODWORD(STACK[0x7C8]) = STACK[0xA4C];
  return (*(v8 + 8 * (v7 + 1677)))(a1, a2, a3, a4, a5, a6, a7, 2876728310);
}

uint64_t sub_1000B790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x9E0] = a8;
  LODWORD(STACK[0xBE0]) = v10;
  LOWORD(STACK[0xBE6]) = v9;
  v13 = STACK[0x7C8];
  LODWORD(STACK[0xBE8]) = STACK[0x7C8];
  LODWORD(STACK[0xBEC]) = STACK[0x9CC];
  STACK[0xBF0] = STACK[0x920];
  STACK[0x560] = STACK[0x618];
  v15 = a8 != v11 && (v13 ^ 0xB6151DCA) < 181 * (v8 ^ 0xB5A) + (v8 ^ 0xFFFFF8BA);
  return (*(v12 + 8 * ((30 * v15) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B7990()
{
  v2 = v0 ^ 0x4F86;
  v3 = (*(v1 + 8 * (v0 ^ 0x411D)))(32);
  STACK[0x670] = v3 + 0x4761F68478C333F5;
  return (*(v1 + 8 * (((v3 == 0) * (v2 - 22684 + ((2 * v2) ^ 0x9D94))) ^ v2)))();
}

uint64_t sub_1000B7A10(uint64_t a1)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v5 = v2 ^ 0xB61509C5 ^ (v1 - 1425093573) ^ 0xAB0EFFB3;
  STACK[0xBF8] = v5;
  LODWORD(v5) = ((((v1 - 1425093573) & 0x54F115DA) + v5 - 398) ^ 0x7CFF7DDF) - 1677857921 + ((2 * (((v1 - 1425093573) & 0x54F115DA) + v5 - 398)) & 0xF9FEFBBE);
  *(a1 + 16) = v5;
  v6 = (*(v3 + 8 * (v1 ^ 0x55D4)))((v5 - 419260766));
  *(a1 + 24) = v6;
  return (*(v3 + 8 * (((v6 != 0) | (8 * (v6 != 0))) ^ v1)))();
}

uint64_t sub_1000B7CEC@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x698] + v1;
  STACK[0x758] = a1;
  LODWORD(STACK[0x954]) = v3;
  STACK[0x538] = v5;
  return (*(v4 + 8 * ((13779 * (*(STACK[0x8D8] - 0x270676553BF33645) & (LODWORD(STACK[0x47C]) != ((v2 + 5827) ^ 0x75C4) - 17740))) ^ (v2 - 3108))))();
}

uint64_t sub_1000B7D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(v8 - 0x270676553BF336C1);
  STACK[0x688] = 0x4761F68478C333F5;
  STACK[0x9B8] = 0x2C0571FFC7E50C7ELL;
  return (*(v10 + 8 * (((v11 == v9) * (v7 - 10859 + 1031 * (v7 ^ 0x308A) - 3582)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B7DDC@<X0>(unint64_t a1@<X8>, uint64_t a2, unint64_t a3)
{
  STACK[0x6A0] = a1;
  LODWORD(STACK[0x510]) = 1328047355;
  STACK[0x6F0] = a3;
  LODWORD(STACK[0x704]) = -943473143;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1000B7F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x610] = a8;
  LODWORD(STACK[0x58C]) = v8;
  return (*(v10 + 8 * v9))(a1, a2, a3, a4, a5, a6, a7, 1418211956);
}

uint64_t sub_1000B7F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x810] = v7;
  LODWORD(STACK[0x9EC]) = v9;
  return (*(v10 + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, 1418211956);
}

uint64_t sub_1000B80B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x590] = a8;
  LODWORD(STACK[0xA2C]) = v9;
  return (*(v10 + 8 * (v8 ^ 0xB59399F3 ^ (14530 * (v8 != ((v8 - 1068055341) & 0x8A15EEFE) - 1254363695)))))(a1, a2, a3, a4, a5, a6, a7, 1418211956);
}

uint64_t sub_1000B8198@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x4C8] + v1;
  STACK[0x5E0] = a1;
  LODWORD(STACK[0xA2C]) = v2;
  STACK[0x5B0] = v5;
  return (*(v4 + 8 * (((v5 != 0) * ((9 * (v3 ^ 0x2513)) ^ 0x11A1)) ^ v3)))();
}

uint64_t sub_1000B81E0()
{
  v2 = (*(v1 + 8 * (v0 + 14503)))(LODWORD(STACK[0xA2C]) ^ 0xB61517F5 ^ (v0 + 1056050704) & 0xC10DEA7E);
  v3 = STACK[0x468];
  STACK[0xB18] = v2;
  if (v2)
  {
    v4 = -1418238986;
  }

  else
  {
    v4 = 1418211938;
  }

  LODWORD(STACK[0xB24]) = v4;
  return (*(v3 + 8 * ((((((v0 - 3759) ^ (v2 == 0)) & 1) == 0) | (16 * ((((v0 - 3759) ^ (v2 == 0)) & 1) == 0))) ^ v0)))();
}

uint64_t sub_1000B831C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x758] = a8;
  LODWORD(STACK[0x954]) = v9;
  return (*(v10 + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, 1418211956);
}

uint64_t sub_1000B83A4@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x5C0] + v1;
  STACK[0x998] = a1;
  STACK[0x4E8] = v5;
  return (*(v4 + 8 * (((((v2 - 488) | 0x10) + 16685) * (v3 == -1240130069)) ^ v2)))();
}

uint64_t sub_1000B8440@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v4 - 0x270676553BF3365DLL);
  v8 = (v3 ^ 0x1F06 ^ *(v4 - 0x270676553BF33649) ^ 0xED0F6DDC) + ((2 * *(v4 - 0x270676553BF33649)) & 0xDFFEFF5E ^ 0x5E0345C) + 1936776956;
  v9 = 292178203 * ((v5 + 1692637207 - 2 * ((v5 - 216) & 0x64E398EF)) ^ 0x3AA96F19);
  *(v5 - 212) = (v3 + 3327) ^ v9;
  *(v5 - 192) = v8 ^ v9;
  *(v5 - 188) = v9 + (v2 ^ 0xAACBE769) + ((2 * v2) & 0x39BDF544 ^ 0x28283104) - 134908032;
  *(v5 - 208) = a1;
  *(v5 - 200) = v1;
  *(v5 - 168) = v9 ^ 0xB7924CE;
  *(v5 - 164) = v9 - 96737305 * v7 - ((1954009038 * v7 + 128410814) & 0x51C90894) + 1824011945;
  *(v5 - 184) = a1;
  *(v5 - 176) = v4 + 0x532952AC47F4EDD2;
  v10 = (*(v6 + 8 * (v3 ^ 0x5D72)))(v5 - 216);
  return (*(STACK[0x468] + 8 * v3))(v10);
}

uint64_t sub_1000B8614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  v12 = STACK[0x5D8] + v8;
  STACK[0x610] = a8;
  LODWORD(STACK[0x58C]) = v9;
  STACK[0x928] = v12;
  return (*(v11 + 8 * (v10 - 9020)))(a1, a2, a3, a4, a5, a6, a7, 2876728310);
}

uint64_t sub_1000B8688@<X0>(int a1@<W8>)
{
  v5 = STACK[0x848] + v2;
  STACK[0x810] = v1;
  LODWORD(STACK[0x9EC]) = v3;
  STACK[0x608] = v5;
  return (*(v4 + 8 * (a1 - 3280)))();
}

uint64_t sub_1000B8764@<X0>(int a1@<W8>)
{
  v2 = *(v1 + 8 * a1);
  STACK[0x3D0] = STACK[0x500];
  return v2();
}

uint64_t sub_1000B882C@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x850] + v1;
  STACK[0x9B8] = a1;
  STACK[0x4D0] = v5;
  return (*(v4 + 8 * (((v3 == ((v2 - 560) ^ 0xB6151BC6)) * ((v2 + 1223030160) & 0xB71A2BF7 ^ 0x2881)) ^ v2)))();
}

uint64_t sub_1000B888C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(STACK[0x8D8] - 0x270676553BF336C1);
  STACK[0x6B8] = 0x4761F68478C333F5;
  STACK[0x998] = 0x4666A5A39D7FA1F1;
  return (*(v9 + 8 * (((v10 == v8) * ((v7 - 9144) ^ 0x62B)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B8900@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, unint64_t a4)
{
  STACK[0x6A0] = a1;
  LODWORD(STACK[0x510]) = 1099992266;
  STACK[0x6F0] = a4;
  LODWORD(STACK[0x704]) = -943473138;
  return (*(v5 + 8 * (v4 ^ 0xE13)))();
}

uint64_t sub_1000B89AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  v12 = STACK[0x558] + v8;
  STACK[0x590] = a8;
  LODWORD(STACK[0xA2C]) = v10;
  STACK[0x9D8] = v12;
  return (*(v11 + 8 * ((934 * (v12 != 0)) ^ v9)))(a1, a2, a3, a4, a5, a6, a7, 1418211938);
}

uint64_t sub_1000B89FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (*(v9 + 8 * (v8 ^ 0x7A4B)))(((v8 - 11741) | 0x107) ^ LODWORD(STACK[0xA2C]) ^ (((v8 + 5103) | 0xF2u) - 1240147570));
  v12 = STACK[0x468];
  STACK[0xB38] = v11;
  if (v11)
  {
    v13 = -1418238986;
  }

  else
  {
    v13 = a8;
  }

  LODWORD(STACK[0xB44]) = v13;
  return (*(v12 + 8 * ((57 * (v11 != 0)) ^ v8)))();
}

uint64_t sub_1000B8B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  if (*(v9 - 0x270676553BF33660) == (((a9 - 62) | 0x1C) - 27))
  {
    a8 = 1418211958;
  }

  else
  {
    a8 = a8;
  }

  return (*(v10 + 8 * a9))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000B8BDC@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1829;
  v8 = STACK[0x4E8];
  v9 = 2054851651 * ((v5 - 216) ^ 0x8CAEAF26);
  *(v5 - 176) = a1;
  *(v5 - 200) = a1;
  *(v5 - 192) = v8;
  *(v5 - 216) = v1;
  *(v5 - 204) = v9 + (v3 ^ 0x275E9F9F) - 35390978 + ((v7 + 1321019379) & (2 * v3));
  *(v5 - 184) = v9 ^ v2 ^ 0xA8F85FEF;
  *(v5 - 180) = v7 - v9 - 3959;
  v10 = (*(v6 + 8 * (v7 + 13055)))(v5 - 216);
  return (*(STACK[0x468] + 8 * v7))(v10);
}

uint64_t sub_1000B8DD8(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  *(v1 - 0x270676553BF336B9) = a1 + v3;
  LODWORD(STACK[0x74C]) = -1418238986;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000B8F18()
{
  v2 = (v0 - 84804791) & 0xB085DFF7;
  LODWORD(STACK[0x47C]) = *(STACK[0x8D8] - 0x270676553BF336B1) + ((v2 + 5324) ^ 0xECE3D3E3);
  return (*(v1 + 8 * v2))();
}

uint64_t sub_1000B8FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *(a8 - 0x270676553BF336C1);
  STACK[0x7E8] = 0x4761F68478C333F5;
  STACK[0x758] = 0x322D9C14E11A5A4ALL;
  return (*(v10 + 8 * (((((v8 + 85) ^ (v11 == v9)) & 1) * ((v8 - 7269) ^ 0x60D)) | v8)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B9048@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  STACK[0x6A0] = a1;
  LODWORD(STACK[0x510]) = 1262304268;
  STACK[0x6F0] = a15;
  LODWORD(STACK[0x704]) = -943473144;
  return (*(v16 + 8 * ((3366 * ((v15 & 0x33FFC2FFu) < (v15 & 0x33FFC2FFu) + 1620154073)) ^ ((v15 & 0x33FFC2FF) - 299335087))))();
}

uint64_t sub_1000B9118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W8>)
{
  v9 = *(STACK[0x7E8] - 0x4761F68478C333DDLL);
  STACK[0x698] = v9;
  return (*(v8 + 8 * ((979 * ((a8 ^ (v9 == 0)) & 1)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B9180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W8>)
{
  v10 = (v8 | ((v8 < 0x18FD695E) << 32)) + 0xA84FBEBC3FDC208 + ((a8 + 2113998106) & 0x81FEDF3D);
  STACK[0xAD8] = v10;
  v11 = STACK[0x758];
  STACK[0xAE0] = STACK[0x758];
  return (*(v9 + 8 * ((14810 * (v10 - v11 + 0x27A8A029041F28BDLL < 0xFFFFFFFFFFFFFFF6)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000B9298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(STACK[0x688] - 0x4761F68478C333DDLL);
  STACK[0x850] = v9;
  return (*(v8 + 8 * (((((25 * (v7 ^ 0x3A61) - 1597) | 0x40D) ^ 0x616) * (v9 == 0)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B9310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = (v8 | ((v8 < ((a8 - 1589) ^ 0x6AFu) + 419259559) << 32)) + 0x2A12DA132EBD0D82;
  STACK[0xAE8] = v10;
  v11 = STACK[0x9B8];
  STACK[0xAF0] = STACK[0x9B8];
  return (*(v9 + 8 * ((15855 * (v10 - v11 + 0x1F297EC802A9594 < ((a8 - 1589) | 0x405u) - 1575)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000B9430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v9 = *(STACK[0x6B8] - 0x4761F68478C333DDLL);
  STACK[0x5C0] = v9;
  return (*(v8 + 8 * (((v9 == 0) * ((((a8 ^ 0x3754) - 1324197972) & 0x4EEDA67F) + (((a8 ^ 0x3754) - 1648) | 0x1844) - 8158)) ^ a8 ^ 0x3754)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B94BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = (v8 | ((v8 < 0x18FD695E) << 32)) + 0x15BADA8697EA0E70;
  STACK[0xAF8] = v10;
  v11 = STACK[0x998];
  STACK[0xB00] = STACK[0x998];
  LODWORD(v10) = v10 - v11 + 0x30ABCB1CEC982A19 < ((a8 + 772182829) & 0xD1F957EF ^ (5 * (a8 ^ 0x18FC)) ^ 0xFFFFFFFFFFFFFD09);
  return (*(v9 + 8 * ((16 * v10) | (v10 << 10) | a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000B9634()
{
  v1 = STACK[0x464];
  LODWORD(STACK[0x74C]) = -1418238986;
  return (*(v0 + 8 * (v1 + 5255)))();
}

uint64_t sub_1000B969C()
{
  STACK[0x6D0] = STACK[0x8D8];
  STACK[0x900] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v0 + 10132) ^ 0x808) + v0)))();
}

uint64_t sub_1000B96D0()
{
  v1 = LODWORD(STACK[0x464]) + 259;
  STACK[0x8D8] = 0x270676553BF336C1;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_1000B9780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x530];
  STACK[0x858] = STACK[0x530];
  return (*(v8 + 8 * ((125 * ((((v7 - 2737) ^ (v9 == 0x270676553BF336C1)) & 1) == 0)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B97D4()
{
  v4 = *(v0 - 0x270676553BF336B9);
  STACK[0x5B0] = 0;
  return (*(v3 + 8 * (((v4 != v2) * ((2153 * ((v1 + 6698) ^ 0x3DDE)) ^ 0x1906)) ^ (v1 + 6698))))();
}

uint64_t sub_1000B9828@<X0>(uint64_t a1@<X8>)
{
  STACK[0x570] = 0x4761F68478C333F5;
  STACK[0x5E0] = 0x42504346F0740B83;
  return (*(v3 + 8 * (((((v1 ^ 0x1C3B) + 143596745) & 0xF770F979 ^ (((v1 ^ 0x1C3B) - 8678) | 0x80E) ^ 0x33D9) * (a1 == v2)) ^ v1 ^ 0x1C3B)))();
}

uint64_t sub_1000B98A8@<X0>(int a1@<W1>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  STACK[0x6A0] = a2;
  LODWORD(STACK[0x510]) = 1170161237;
  STACK[0x6F0] = a17;
  LODWORD(STACK[0x704]) = a1 + 14;
  return (*(v18 + 8 * v17))();
}

uint64_t sub_1000B9930()
{
  v2 = *(STACK[0x570] - 0x4761F68478C333DDLL);
  STACK[0x4C8] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 2590) | 0x3809) - 14268)) ^ v0)))();
}

uint64_t sub_1000B9990@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 | ((a1 < v1 + 419246389) << 32)) + 0x6400522B5C4C4152;
  STACK[0xB08] = v3;
  v4 = STACK[0x5E0];
  STACK[0xB10] = STACK[0x5E0];
  return (*(v2 + 8 * ((10602 * (v3 - v4 - 0x21B00EE484D59F37 < (11 * ((v1 - 11995) ^ 0xC55u)) - 14387)) ^ (v1 - 11995))))();
}

uint64_t sub_1000B9A68()
{
  v1 = LODWORD(STACK[0x464]) + 278;
  STACK[0x718] = STACK[0xB18];
  return (*(v0 + 8 * v1))();
}

uint64_t sub_1000B9AF4()
{
  STACK[0x718] = 0;
  LODWORD(STACK[0xA2C]) = -1240130101;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000B9B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(v7 - 0x270676553BF336C1);
  STACK[0x9D8] = 0;
  return (*(v10 + 8 * ((((((v8 ^ 0x13) + 1) ^ (v11 == v9)) & 1) * (v8 - 6354)) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B9B78@<X0>(uint64_t a1@<X8>)
{
  STACK[0x568] = 0x4761F68478C333F5;
  STACK[0x590] = 0x3706D678EC6BC318;
  return (*(v3 + 8 * ((102 * ((((v1 - 16666) ^ (v1 - 1066) ^ (a1 == v2)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_1000B9BDC@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  STACK[0x6A0] = a1;
  LODWORD(STACK[0x510]) = 1170161237;
  STACK[0x6F0] = a19;
  LODWORD(STACK[0x704]) = -943473137;
  return (*(v20 + 8 * v19))();
}

uint64_t sub_1000B9C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(STACK[0x568] - 0x4761F68478C333DDLL);
  STACK[0x558] = v9;
  return (*(v8 + 8 * ((((((v7 - 16552) | 0x4400) - 4455) ^ ((v7 - 4510) | 0x15)) * (v9 == 0)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000B9D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = (v8 | ((v8 < 0x18FD695E) << 32)) + 0x77BFCEBEDDECFDA8;
  STACK[0xB28] = v10;
  v11 = STACK[0x590];
  STACK[0xB30] = STACK[0x590];
  return (*(v9 + 8 * ((342 * (v10 - v11 - 0x40B8F8460A7EA3F8 < (((a8 ^ 0x34D0u) + 16433) ^ 0xFFFFFFFFFFFFBB08))) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000BA9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = LODWORD(STACK[0x464]) + 1295;
  STACK[0x718] = STACK[0xB38];
  return (*(v7 + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, LODWORD(STACK[0xB44]));
}

uint64_t sub_1000BAA70@<X0>(int a1@<W8>)
{
  STACK[0x718] = 0;
  LODWORD(STACK[0xA2C]) = -1240130101;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1000BAB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x530];
  STACK[0x7A0] = STACK[0x530];
  return (*(v8 + 8 * ((4089 * (((v9 == 0x270676553BF336C1) ^ (v7 - 101)) & 1)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000BAB80@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 0x270676553BF336B9);
  STACK[0x788] = 0x4761F68478C333F5;
  LODWORD(STACK[0x8EC]) = -1240130101;
  STACK[0x960] = 0x4F9B2EED74C379EBLL;
  return (*(v3 + 8 * (((v4 == v2) * (v1 - 8647 + ((v1 + 3217) ^ 0x3C7B) - 3437)) ^ (v1 + 3217))))();
}

uint64_t sub_1000BAC00@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  STACK[0x6A0] = a1;
  LODWORD(STACK[0x510]) = 1318356775;
  STACK[0x6F0] = a12;
  LODWORD(STACK[0x704]) = -943473140;
  return (*(v13 + 8 * v12))();
}

uint64_t sub_1000BACD0()
{
  v2 = *(STACK[0x788] - 0x4761F68478C333DDLL);
  STACK[0x490] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 8816) ^ 0xFFFFF013) + v0 - 7761)) ^ v0)))();
}

uint64_t sub_1000BAD38@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < 0x18FD695E) << 32)) + 0x1519AA6EA4054A60;
  STACK[0xB48] = v3;
  v4 = STACK[0x960];
  STACK[0xB50] = STACK[0x960];
  return (*(v2 + 8 * (((v3 - v4 + 0x3A81847EB7C0C623 < 0xFFFFFFFFFFFFFFF6) * ((a1 + 834644926) & 0xCE404EF7 ^ 0x2B6C)) ^ a1)))();
}

uint64_t sub_1000BADF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(STACK[0x7A0] - 0x270676553BF336C1);
  STACK[0x958] = 0x4761F68478C333F5;
  LODWORD(STACK[0x630]) = -1240130101;
  STACK[0x888] = 0x23E3161A16B23FA2;
  return (*(v8 + 8 * (((v9 == 0xAB5C364D9808152) * ((v7 + 497) ^ 0x812)) ^ (v7 + 10029))))(a1, 3351494148, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000BAE9C@<X0>(int a1@<W1>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26)
{
  STACK[0x6A0] = a2;
  LODWORD(STACK[0x510]) = 1318356775;
  STACK[0x6F0] = a26;
  LODWORD(STACK[0x704]) = a1 + 1;
  return (*(v27 + 8 * v26))();
}

uint64_t sub_1000BAF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(STACK[0x958] - 0x4761F68478C333DDLL);
  STACK[0x708] = v10;
  return (*(v9 + 8 * (((v10 == 0) * (((v7 ^ 0x6013) + v8) ^ 0x9DC)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000BAF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = (v8 | ((v8 < 0x18FD695E) << 32)) + 0x3280338ABBEDFC93;
  STACK[0xB58] = v10;
  v11 = STACK[0x888];
  STACK[0xB60] = STACK[0x888];
  return (*(v9 + 8 * (((v10 - v11 - 0xE9D1D70BE392659 < ((a8 - 8647) ^ 0xFFFFFFFFFFFFF9EBLL)) * (a8 - 7716)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000BB0A8()
{
  v2 = STACK[0x530];
  STACK[0x8B8] = STACK[0x530];
  return (*(v1 + 8 * (((v2 != 0x270676553BF336C1) * ((5 * (v0 ^ 0x46C9)) ^ 0x9E0)) ^ v0)))();
}

uint64_t sub_1000BB0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a7 - 0x270676553BF336B9);
  STACK[0x8F8] = 0x4761F68478C333F5;
  LODWORD(STACK[0x67C]) = -1240130101;
  STACK[0x868] = 0x364437D0F41B2F8BLL;
  return (*(v9 + 8 * ((((v7 ^ 0x5B ^ (v10 == v8)) & 1) * (v7 ^ 0x4810)) ^ v7 ^ 0x505B)))(a1, a2, a3, a4, a5, a6, v7 ^ 0x41EDu);
}

uint64_t sub_1000BB17C@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  STACK[0x6A0] = a1;
  LODWORD(STACK[0x510]) = 1258753473;
  STACK[0x6F0] = a23;
  LODWORD(STACK[0x704]) = -943473139;
  return (*(v24 + 8 * (v23 ^ 0x1FA5)))();
}

uint64_t sub_1000BB264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(STACK[0x8F8] - 0x4761F68478C333DDLL);
  STACK[0x918] = v8;
  return (*(v7 + 8 * (((((v8 == 0) ^ (v6 + 125)) & 1) * (((v6 + 1451397228) | 0xA97D3EF2) ^ 0xFFFFFFC9)) ^ v6)))(a1, a2, a3, a4, a5, a6, (v6 - 10883) | 8u);
}

uint64_t sub_1000BB2E4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 | ((v1 < 0x18FD695E) << 32)) + 0x1C6B0DF42FA3A2E8 + (a1 + 1237);
  STACK[0xB68] = v3;
  v4 = STACK[0x868];
  STACK[0xB70] = STACK[0x868];
  return (*(v2 + 8 * (a1 ^ 0xFFFFCF6E ^ (29123 * ((((a1 | ((a1 + 9) << 32)) & ~(v3 - v4 + 0x19D929DCAB7A1E70) | (a1 | ((a1 + 9) << 32) | ~(v3 - v4 + 0x19D929DCAB7A1E70)) & (v3 - v4 + 0x19D929DCAB7A1E70 - (a1 | ((a1 + 9) << 32)))) >> (((a1 + 23) | 0x10) + 34)) & 1)))))();
}

uint64_t sub_1000BB3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = *(STACK[0x8B8] - 0x270676553BF336C1);
  STACK[0x4A8] = 0x4761F68478C333F5;
  LODWORD(STACK[0x8E8]) = -1240130101;
  STACK[0x980] = 0x4CC5F8EE468E081CLL;
  return (*(v7 + 8 * ((a7 + 150) ^ (4 * ((((1031 * (a7 ^ 0x61F)) ^ (v8 == 0xAB5C364D9808152)) & 1) == 0)))))(a1, 3351494148);
}

uint64_t sub_1000BB470@<X0>(int a1@<W1>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27)
{
  STACK[0x6A0] = a2;
  LODWORD(STACK[0x510]) = 1258753473;
  STACK[0x6F0] = a27;
  LODWORD(STACK[0x704]) = a1 + 6;
  return (*(v28 + 8 * v27))();
}

uint64_t sub_1000BB500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(STACK[0x4A8] - 0x4761F68478C333DDLL);
  STACK[0x4A0] = v9;
  return (*(v8 + 8 * ((109 * (((v9 == 0) ^ (v7 - 52)) & 1)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000BB570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v6 | ((v6 < (v7 & 0x4AC747BF ^ 0x18FD6FEDu)) << 32)) + 0xA93C95592BFBB54;
  STACK[0xB78] = v9;
  v10 = STACK[0x980];
  STACK[0xB80] = STACK[0x980];
  return (*(v8 + 8 * ((2663 * (v9 - v10 + (v7 & 0x4AC747BFu) - 461 + 0x42322F989AD0DE7ALL < 0xFFFFFFFFFFFFFFF6)) ^ v7 & 0x4AC747BFu)))(a1, a2, a3, a4, a5, a6, v7 & 0x4AC747BF ^ 0xAEu, 1418211964);
}

uint64_t sub_1000BB74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 0xAFE9FCD361E1103) = STACK[0x668];
  *(v8 + v9) = (v10 ^ 0xB6151DCB) - 1240130101 - (((v7 - 919479652) & 0x36CE09F3 ^ 0x6C2A3A04) & (2 * (v10 ^ 0xB6151DCB) + 2)) + 1;
  return (*(v11 + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, 2876728310);
}

uint64_t sub_1000BB864@<X0>(int a1@<W7>, int a2@<W8>)
{
  LODWORD(STACK[0x970]) = a1;
  STACK[0x900] = *(v2 + 8 * a2);
  return (*(v2 + 8 * (((a2 - 242877331) & 0xE7A2AE1 ^ 0x845) + a2)))();
}

uint64_t sub_1000BB8EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 | 0x22;
  v4 = ((v1 | 0x22) + 246020091) & 0xF1560D57;
  v5 = *(a1 - 0x78B317109557171);
  STACK[0x578] = v5;
  return (*(v2 + 8 * (((v5 != 0x270676553BF336C1) * (v4 - 2974)) ^ v3)))();
}

uint64_t sub_1000BB958(uint64_t a1)
{
  STACK[0x830] = v2 + 0x1458FF711094A457;
  LODWORD(STACK[0x4E4]) = 695878984;
  return (*(v3 + 8 * v1))(a1, 0x3B5F75C64C87DB10, 695869141);
}

uint64_t sub_1000BBA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34)
{
  STACK[0x4B0] = STACK[0x650];
  LODWORD(STACK[0x634]) = 1600166575;
  STACK[0x6C0] = a34;
  LODWORD(STACK[0x7F4]) = 2088045550;
  return (*(v35 + 8 * v34))(a1, 3351494148);
}

uint64_t sub_1000BBB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = STACK[0x650];
  STACK[0x928] = 0;
  return (*(v9 + 8 * ((((((v7 + 305056257) & 0xEDD10EEF) + 14866) ^ (v7 - 796056661) & 0x2F72EF5A) * (v10 == v8)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000BBBC0@<X0>(uint64_t a1@<X8>)
{
  STACK[0x940] = 0x4761F68478C333F5;
  STACK[0x610] = 0x1F5F9433EDF6E593;
  return (*(v3 + 8 * (((v1 ^ 0x555B ^ (9 * (v1 ^ 0x4405))) * (a1 != v2)) ^ v1)))();
}

uint64_t sub_1000BBC30@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  STACK[0x6A0] = a1;
  LODWORD(STACK[0x510]) = 1813326314;
  STACK[0x6F0] = a6;
  LODWORD(STACK[0x704]) = -943473145;
  return (*(v8 + 8 * ((((3692 * (v7 ^ v6)) ^ 0x5038) * (v7 < 0xD0F52405)) ^ (v7 + 784071884))))();
}

uint64_t sub_1000BBCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(STACK[0x940] - 0x4761F68478C333DDLL);
  STACK[0x5D8] = v10;
  return (*(v9 + 8 * (((v10 == 0) * (v7 ^ (v8 - 8999) ^ 0x1845)) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000BBD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = (v8 | ((v8 < 0x18FD695E) << 32)) + (a8 ^ 0xFBFu) + 0x3E0D43DEE1E8ED6FLL;
  STACK[0xB88] = v10;
  v11 = STACK[0x610];
  STACK[0xB90] = STACK[0x610];
  return (*(v9 + 8 * ((1968 * (((a8 + 1960) ^ 0xE1525054F3109AFBLL) - v11 + v10 < 0xFFFFFFFFFFFFFFF6)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000BBEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (*(v9 + 8 * (v8 ^ 0x68DC)))(LODWORD(STACK[0x58C]) ^ (v8 - 8048) ^ ((v8 ^ 0x3199u) - 1240134722));
  v12 = STACK[0x468];
  STACK[0xB98] = v11;
  if (v11)
  {
    v13 = -1418238986;
  }

  else
  {
    v13 = a8;
  }

  LODWORD(STACK[0xBA4]) = v13;
  return (*(v12 + 8 * ((26 * (v11 == 0)) ^ v8)))();
}

uint64_t sub_1000BC014(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = (v8 + a6 - 2012719577) < 8 || *v7 - a1 < 0x10;
  v12 = *(v9 + 8 * (((569 * (((v6 - 11768) | 1) ^ 0xA23) - 6722) * v11) ^ ((v6 - 11768) | 1)));
  STACK[0x450] = a1;
  return v12();
}

uint64_t sub_1000BC134(uint64_t a1, unsigned int a2)
{
  v4 = *(v3 + 8 * (((a2 < (((v2 ^ 0x17EE) - 922003395) & 0x36F49B79u) - 4456) * ((v2 ^ 0x17EE) - 6615)) ^ v2 ^ 0x17EE));
  LODWORD(STACK[0x220]) = a2;
  return v4();
}

uint64_t sub_1000BC198(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, unint64_t a8)
{
  v13 = *(v12 + 8 * v8);
  *&STACK[0x420] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x410] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3F0] = vdupq_n_s64(v10);
  *&STACK[0x400] = vdupq_n_s64(a7);
  *&STACK[0x3D0] = vdupq_n_s64(v11);
  *&STACK[0x3E0] = vdupq_n_s64(a8);
  *&STACK[0x3C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  LODWORD(STACK[0x3A0]) = a2 & 0xFFFFFFF8;
  *&STACK[0x3B0] = xmmword_1004248B0;
  return v13((a6 + v9 - 2012719579), (v8 - 3956) | 0x841u, -a3);
}

uint64_t sub_1000BC308@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>, int64x2_t a10@<Q5>, int8x16_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  v35 = (v12 + a3);
  v36 = STACK[0x468];
  v37.i64[0] = v13 + (a9 + a3);
  v37.i64[1] = v13 + (a4 + a3);
  v38.i64[0] = v13 + (a8 + a3);
  v38.i64[1] = v13 + (a7 + a3);
  v39.i64[0] = v13 + v35;
  v39.i64[1] = v13 + (a1 + a3);
  v40.i64[0] = v13 + (a6 + a3);
  v40.i64[1] = v13 + a5 + a3 + (a2 ^ (v14 + 3165));
  v41 = vandq_s8(v40, *&STACK[0x420]);
  v42 = vandq_s8(v39, *&STACK[0x420]);
  v43 = vandq_s8(v38, *&STACK[0x420]);
  v44 = vandq_s8(v37, *&STACK[0x420]);
  v45 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v50 = *&STACK[0x3F0];
  v49 = *&STACK[0x400];
  v51 = vaddq_s64(v47, *&STACK[0x400]);
  v52 = vaddq_s64(v46, *&STACK[0x400]);
  *&STACK[0x430] = vaddq_s64(vorrq_s8(vsubq_s64(a10, v48), a11), vorrq_s8(vaddq_s64(v48, *&STACK[0x400]), *&STACK[0x3F0]));
  v53 = vaddq_s64(vorrq_s8(vsubq_s64(a10, v47), a11), vorrq_s8(v51, v50));
  v54 = vsubq_s64(*&STACK[0x3C0], vaddq_s64(vorrq_s8(vsubq_s64(a10, v45), a11), vorrq_s8(vaddq_s64(v45, v49), v50)));
  v55 = vsubq_s64(*&STACK[0x3C0], vaddq_s64(vorrq_s8(vsubq_s64(a10, v46), a11), vorrq_s8(v52, v50)));
  v56 = veorq_s8(v55, a12);
  v57 = veorq_s8(v54, a12);
  v58 = veorq_s8(v54, v20);
  v59 = veorq_s8(v55, v20);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(v61, vandq_s8(vaddq_s64(v61, v61), v21)), v22), v23);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(v60, vandq_s8(vaddq_s64(v60, v60), v21)), v22), v23);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v68 = vaddq_s64(v66, v64);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), v24), v68), v25), v26);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), v24), v67), v25), v26);
  v71 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, v27), vorrq_s8(v75, v28)), v28), v29);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, v27), vorrq_s8(v76, v28)), v28), v29);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v79), v30);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80), v30);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), v31);
  v89 = veorq_s8(v87, v31);
  v90 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v91 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = veorq_s8(v88, v90);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v92);
  v95 = vaddq_s64(v93, v91);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), v32)), v33), v34);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v94, vandq_s8(vaddq_s64(v94, v94), v32)), v33), v34);
  v98 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v99 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v103 = vsubq_s64(*&STACK[0x3C0], v53);
  v141.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v102, v100), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x410])));
  v141.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v101, v99), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), *&STACK[0x410])));
  v104 = veorq_s8(v103, a12);
  v105 = veorq_s8(v103, v20);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(v106, vandq_s8(vaddq_s64(v106, v106), v21)), v22), v23);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), v24), v109), v25), v26);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v27), vorrq_s8(v112, v28)), v28), v29);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v30);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v31);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(v119, vandq_s8(vaddq_s64(v119, v119), v32)), v33), v34);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL)));
  v122 = vsubq_s64(*&STACK[0x3C0], *&STACK[0x430]);
  v141.val[0] = vshlq_u64(veorq_s8(v121, v19), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x410])));
  v123 = veorq_s8(v122, a12);
  v124 = veorq_s8(v122, v20);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(v125, v125), v21)), v22), v23);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), v24), v128), v25), v26);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v27), vorrq_s8(v131, v28)), v28), v29);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v30);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), v31);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(v138, vandq_s8(vaddq_s64(v138, v138), v32)), v33), v34);
  v141.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL))), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), *&STACK[0x410])));
  *(v16 + v35) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v13 + v35 - 7)), 0x1212121212121212), *&vqtbl4q_s8(v141, *&STACK[0x3B0])));
  return (*(v36 + 8 * (((v17 == a3) * v18) ^ v15)))();
}

uint64_t sub_1000BCBD8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v31.i64[0] = v10 + (v21 + v19 + 16);
  v31.i64[1] = v10 + (v17 + v19 + 16);
  v32.i64[0] = v10 + (v12 + v19 + 16);
  v33.i64[0] = v10 + (v14 + v19 + 16);
  v32.i64[1] = v10 + (v22 + v19 + 16);
  v33.i64[1] = v10 + (v13 + v19 + 16);
  v34.i64[0] = v10 + (a2 + v19 + 16);
  v34.i64[1] = v10 + (v15 + v19 + 16);
  *&v35 = v10 + (a5 + v19 + 16);
  *(&v35 + 1) = v10 + (a4 + v19 + 16);
  *&STACK[0x390] = v35;
  *&v35 = v10 + (a7 + v19 + 16);
  *(&v35 + 1) = v10 + (a6 + v19 + 16);
  *&STACK[0x370] = v35;
  v36 = *&STACK[0x340];
  v37 = vandq_s8(v34, *&STACK[0x340]);
  v38 = vandq_s8(v33, *&STACK[0x340]);
  v39 = vandq_s8(v32, *&STACK[0x340]);
  v40 = vandq_s8(v31, *&STACK[0x340]);
  v41 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v45 = vaddq_s64(v43, *&STACK[0x430]);
  v46 = vaddq_s64(v42, *&STACK[0x430]);
  v47 = *&STACK[0x430];
  v48 = *&STACK[0x420];
  v49 = *&STACK[0x320];
  v50 = *&STACK[0x410];
  *&STACK[0x360] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x320], v44), *&STACK[0x410]), vorrq_s8(vaddq_s64(v44, *&STACK[0x430]), *&STACK[0x420]));
  v51 = vorrq_s8(v46, v48);
  v52 = vorrq_s8(vsubq_s64(v49, v42), v50);
  v53 = vaddq_s64(vorrq_s8(vsubq_s64(v49, v43), v50), vorrq_s8(v45, v48));
  v54 = vaddq_s64(vorrq_s8(vsubq_s64(v49, v41), v50), vorrq_s8(vaddq_s64(v41, v47), v48));
  v55 = *&STACK[0x310];
  v56 = vsubq_s64(*&STACK[0x310], v54);
  v57 = vsubq_s64(*&STACK[0x310], vaddq_s64(v52, v51));
  v58 = *&STACK[0x2E0];
  v59 = veorq_s8(v57, *&STACK[0x2E0]);
  v60 = veorq_s8(v56, *&STACK[0x2E0]);
  v61 = *&STACK[0x3F0];
  v62 = veorq_s8(v56, *&STACK[0x400]);
  v63 = veorq_s8(v57, *&STACK[0x400]);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v62);
  v66 = (a1 + v19 + 16);
  v67 = *&STACK[0x2D0];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(v65, vandq_s8(vaddq_s64(v65, v65), *&STACK[0x3F0])), *&STACK[0x2D0]), v24);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), *&STACK[0x3F0])), *&STACK[0x2D0]), v24);
  v70 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v71);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), v25), v74), v27), v28);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), v25), v73), v27), v28);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78);
  v81 = vaddq_s64(v79, v77);
  v82 = *&STACK[0x3D0];
  v83 = *&STACK[0x3E0];
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v80, *&STACK[0x3E0]), vorrq_s8(v80, v23)), v23), *&STACK[0x3D0]);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v81, *&STACK[0x3E0]), vorrq_s8(v81, v23)), v23), *&STACK[0x3D0]);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v87 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v88 = *&STACK[0x3B0];
  v89 = *&STACK[0x3C0];
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), *&STACK[0x3C0]);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87), *&STACK[0x3C0]);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v93 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v94 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v93);
  v96 = veorq_s8(vaddq_s64(v94, v92), *&STACK[0x3B0]);
  v97 = veorq_s8(v95, *&STACK[0x3B0]);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v99 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v100);
  v103 = vaddq_s64(v101, v99);
  v104 = *&STACK[0x3A0];
  v105 = veorq_s8(vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), *&STACK[0x3A0])), v30), v29);
  v106 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(v102, vandq_s8(vaddq_s64(v102, v102), *&STACK[0x3A0])), v30), v29);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v109 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v100.i64[0] = v10 + v66;
  v100.i64[1] = v10 + (a8 + v19 + 16);
  *&STACK[0x350] = v100;
  v110 = v55;
  v111 = vsubq_s64(v55, v53);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, v106));
  v113 = vshlq_n_s64(v32, 3uLL);
  v114 = *&STACK[0x330];
  v236.val[3] = vshlq_u64(veorq_s8(v112, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), *&STACK[0x330])));
  v236.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v109, v108), v26), vnegq_s64(vandq_s8(v113, *&STACK[0x330])));
  v115 = veorq_s8(v111, v58);
  v116 = *&STACK[0x400];
  v117 = veorq_s8(v111, *&STACK[0x400]);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(v118, vandq_s8(vaddq_s64(v118, v118), v61)), v67), v24);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v121, v121), v25), v121), v27), v28);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v83), vorrq_s8(v124, v23)), v23), v82);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v89);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = v88;
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v88);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(v132, vandq_s8(vaddq_s64(v132, v132), v104)), v30), v29);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v131.i64[0] = v10 + (a9 + v19 + v16 + 16);
  v131.i64[1] = v10 + (v20 + v19 + 16);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = vandq_s8(v100, v36);
  v137 = vsubq_s64(v110, *&STACK[0x360]);
  v236.val[1] = vshlq_u64(veorq_s8(v135, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), *&STACK[0x330])));
  v138 = veorq_s8(v137, v58);
  v139 = veorq_s8(v137, *&STACK[0x400]);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(v140, vandq_s8(vaddq_s64(v140, v140), v61)), v67), v24);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v143, v143), v25), v143), v27), v28);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v146, v83), vorrq_s8(v146, v23)), v23), v82);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v89);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v129);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(v153, vandq_s8(vaddq_s64(v153, v153), v104)), v30), v29);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v157 = *&STACK[0x370];
  v158 = vandq_s8(*&STACK[0x370], v36);
  v159 = vaddq_s64(v156, v155);
  v160 = *&STACK[0x390];
  v161 = vandq_s8(*&STACK[0x390], v36);
  v236.val[0] = vshlq_u64(veorq_s8(v159, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), *&STACK[0x330])));
  v162 = vandq_s8(v131, v36);
  v163 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v167 = vaddq_s64(vorrq_s8(vsubq_s64(v49, v165), *&STACK[0x410]), vorrq_s8(vaddq_s64(v165, *&STACK[0x430]), *&STACK[0x420]));
  v168 = vaddq_s64(vorrq_s8(vsubq_s64(v49, v166), *&STACK[0x410]), vorrq_s8(vaddq_s64(v166, *&STACK[0x430]), *&STACK[0x420]));
  v169 = vsubq_s64(v110, vaddq_s64(vorrq_s8(vsubq_s64(v49, v163), *&STACK[0x410]), vorrq_s8(vaddq_s64(v163, *&STACK[0x430]), *&STACK[0x420])));
  v170 = vsubq_s64(v110, vaddq_s64(vorrq_s8(vsubq_s64(v49, v164), *&STACK[0x410]), vorrq_s8(vaddq_s64(v164, *&STACK[0x430]), *&STACK[0x420])));
  v171 = *&STACK[0x250];
  *&STACK[0x360] = vqtbl4q_s8(v236, *&STACK[0x250]);
  v172 = veorq_s8(v170, v58);
  v236.val[0] = veorq_s8(v169, v58);
  v236.val[1] = veorq_s8(v169, v116);
  v236.val[2] = veorq_s8(v170, v116);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v236.val[2]);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[1]);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v236.val[0], vandq_s8(vaddq_s64(v236.val[0], v236.val[0]), *&STACK[0x3F0])), v67), v24);
  v174 = vsraq_n_u64(vshlq_n_s64(v236.val[1], 3uLL), v236.val[1], 0x3DuLL);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(v173, vandq_s8(vaddq_s64(v173, v173), *&STACK[0x3F0])), v67), v24);
  v236.val[1] = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL));
  v236.val[2] = veorq_s8(v236.val[0], v174);
  v176 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[2]);
  v236.val[0] = vaddq_s64(v176, v236.val[1]);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v236.val[0], v236.val[0]), v25), v236.val[0]), v27), v28);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), v25), v177), v27), v28);
  v179 = vsraq_n_u64(vshlq_n_s64(v236.val[1], 3uLL), v236.val[1], 0x3DuLL);
  v236.val[1] = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL));
  v236.val[2] = veorq_s8(v236.val[0], v179);
  v180 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[2]);
  v236.val[0] = vaddq_s64(v180, v236.val[1]);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181, *&STACK[0x3E0]), vorrq_s8(v181, v23)), v23), *&STACK[0x3D0]);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236.val[0], *&STACK[0x3E0]), vorrq_s8(v236.val[0], v23)), v23), *&STACK[0x3D0]);
  v236.val[1] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[1], 3uLL), v236.val[1], 0x3DuLL));
  v236.val[2] = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL));
  v236.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[1]), *&STACK[0x3C0]);
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v236.val[2]), *&STACK[0x3C0]);
  v184 = vsraq_n_u64(vshlq_n_s64(v236.val[1], 3uLL), v236.val[1], 0x3DuLL);
  v236.val[1] = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL));
  v236.val[2] = veorq_s8(v236.val[0], v184);
  v185 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[2]);
  v236.val[0] = veorq_s8(vaddq_s64(v185, v236.val[1]), *&STACK[0x3B0]);
  v187 = vsraq_n_u64(vshlq_n_s64(v236.val[1], 3uLL), v236.val[1], 0x3DuLL);
  v188 = veorq_s8(v186, *&STACK[0x3B0]);
  v236.val[1] = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL));
  v236.val[2] = veorq_s8(v236.val[0], v187);
  v189 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[2]);
  v236.val[0] = vaddq_s64(v189, v236.val[1]);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v236.val[0], vandq_s8(vaddq_s64(v236.val[0], v236.val[0]), *&STACK[0x3A0])), v30), v29);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(v190, vandq_s8(vaddq_s64(v190, v190), *&STACK[0x3A0])), v30), v29);
  v192 = vsraq_n_u64(vshlq_n_s64(v236.val[1], 3uLL), v236.val[1], 0x3DuLL);
  v236.val[1] = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL));
  v236.val[2] = veorq_s8(v236.val[0], v192);
  v193 = vsubq_s64(v110, v167);
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v236.val[1]), v26);
  v236.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[2]), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v160, 3uLL), v114)));
  v236.val[0] = vshlq_u64(v194, vnegq_s64(vandq_s8(vshlq_n_s64(v157, 3uLL), v114)));
  v195 = veorq_s8(v193, v58);
  v196 = veorq_s8(v193, v116);
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(v197, vandq_s8(vaddq_s64(v197, v197), *&STACK[0x3F0])), v67), v24);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v200, v200), v25), v200), v27), v28);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v203, *&STACK[0x3E0]), vorrq_s8(v203, v23)), v23), *&STACK[0x3D0]);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v206 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205), *&STACK[0x3C0]);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), *&STACK[0x3B0]);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(v210, vandq_s8(vaddq_s64(v210, v210), *&STACK[0x3A0])), v30), v29);
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL)));
  v213 = vsubq_s64(v110, v168);
  v214 = vshlq_u64(veorq_s8(v212, v26), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v114)));
  v215 = veorq_s8(v213, v58);
  v216 = veorq_s8(v213, v116);
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(v217, vandq_s8(vaddq_s64(v217, v217), *&STACK[0x3F0])), v67), v24);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219);
  v221 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v220, v220), v25), v220), v27), v28);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v223, *&STACK[0x3E0]), vorrq_s8(v223, v23)), v23), *&STACK[0x3D0]);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), *&STACK[0x3C0]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227), *&STACK[0x3B0]);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(v230, vandq_s8(vaddq_s64(v230, v230), *&STACK[0x3A0])), v30), v29);
  v236.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v131, 3uLL), v114)));
  v231.i64[0] = vqtbl4q_s8(v236, v171).u64[0];
  v231.i64[1] = STACK[0x360];
  v232 = STACK[0x468];
  v233 = vrev64q_s8(*(v10 + v66 - 15));
  v236.val[0].i64[0] = 0x1212121212121212;
  v236.val[0].i64[1] = 0x1212121212121212;
  v234 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v233, v233, 8uLL), v236.val[0]), v231));
  *(v11 + v66) = vextq_s8(v234, v234, 8uLL);
  return (*(v232 + 8 * (((a3 + v19 != 0) * v18) ^ v9)))();
}

uint64_t sub_1000BD968@<X0>(int a1@<W1>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v22 = (v7 + v14 + v9);
  v23 = __ROR8__((v5 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v10 - (((a3 - v23) | v16) + ((v23 + a2) | v15));
  v25 = __ROR8__(v24 ^ v18, 8);
  v26 = v24 ^ v20;
  v27 = (v25 + v26 - ((2 * (v25 + v26)) & 0x7936AD91CEB18754) + a4) ^ v17;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = ((v6 & (2 * (v29 + v28))) - (v29 + v28) + v13) ^ v12;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((v4 - ((v32 + v31) | v4) + ((v32 + v31) | v19)) ^ 0x7D0FEE692F663634, 8);
  v34 = (v4 - ((v32 + v31) | v4) + ((v32 + v31) | v19)) ^ 0x7D0FEE692F663634 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34) ^ 0x80A3287483B4C7C9;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x8562C5B0FD26117BLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  *(STACK[0x450] + v22) = *(v5 + v22) ^ v11 ^ (((__ROR8__((v39 + v38 - ((2 * (v39 + v38)) & 0x977EB3F49C3491F4) + 0x4BBF59FA4E1A48FALL) ^ 0xDC4A354AB52C5289, 8) + ((v39 + v38 - ((2 * (v39 + v38)) & 0x977EB3F49C3491F4) + 0x4BBF59FA4E1A48FALL) ^ 0xDC4A354AB52C5289 ^ __ROR8__(v38, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v5 + v7 + v14 + v9) & 7)));
  return (*(v21 + 8 * (((v7 != 1372006857) * a1) ^ v8)))();
}

uint64_t sub_1000BDB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = LODWORD(STACK[0x464]) + 7283;
  STACK[0x790] = STACK[0xB98];
  return (*(v7 + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, LODWORD(STACK[0xBA4]));
}

uint64_t sub_1000BDB78()
{
  STACK[0x790] = 0;
  LODWORD(STACK[0x58C]) = -1240130101;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000BDB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  LODWORD(STACK[0x4C4]) = a8;
  STACK[0x830] = a48;
  LODWORD(STACK[0x4E4]) = 695878988;
  return (*(v49 + 8 * v48))(a1, 0x3B5F75C64C87DB10, 695869141);
}

uint64_t sub_1000BDC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12)
{
  v13 = STACK[0x790];
  a12[15] = *(STACK[0x790] + 15);
  a12[14] = v13[14];
  a12[13] = v13[13];
  a12[12] = v13[12];
  a12[11] = v13[11];
  a12[10] = v13[10];
  a12[9] = v13[9];
  a12[8] = v13[8];
  a12[7] = v13[7];
  a12[6] = v13[6];
  a12[5] = v13[5];
  a12[4] = v13[4];
  a12[3] = v13[3];
  a12[2] = v13[2];
  a12[1] = v13[1];
  *a12 = *v13;
  return (*(v12 + 8 * a8))(a1, a2, a3, a4, a5, a6, a7, 2876728310);
}

uint64_t sub_1000BDD2C()
{
  v4 = *(v1 - 0x3B5F75C64C87DB10);
  STACK[0x660] = v4;
  return (*(v3 + 8 * (((v4 == v2) * (((v0 - 17075) | 0x4104) + ((v0 - 18107) | 0x615) - 19242)) ^ v0)))();
}

uint64_t sub_1000BDEB4()
{
  v3 = (*(v2 + 8 * (v1 + 16415)))();
  v4 = STACK[0x468];
  *(v0 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_1000BE1BC()
{
  STACK[0x830] = STACK[0x578] + 0x1458FF711094A44FLL;
  LODWORD(STACK[0x4E4]) = 695878985;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000BE264()
{
  STACK[0x830] = STACK[0x448];
  LODWORD(STACK[0x4E4]) = 695878989;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000BE724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x828] = a8;
  LODWORD(STACK[0xBA8]) = v15;
  LOWORD(STACK[0xBAE]) = v8;
  LODWORD(STACK[0xBB0]) = v14;
  LODWORD(STACK[0xBB4]) = v9;
  STACK[0xBB8] = v11;
  STACK[0xBC0] = v13;
  v19 = a8 != v16 && (v14 ^ (v12 - 1)) < 0xFFFFFFF6;
  return (*(v17 + 8 * (v10 ^ (4 * (((-35 * (v10 ^ 0xBA) + 1) ^ v19) & 1)))))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000BE788()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x5CBE)))(32);
  v3 = STACK[0x468];
  STACK[0x8C0] = v2 + 0x4761F68478C333F5;
  return (*(v3 + 8 * (((((v0 + 41) ^ (v2 == 0)) & 1) * ((v0 + 1572) ^ 0x1CE3)) ^ v0)))();
}

uint64_t sub_1000BE804(uint64_t a1)
{
  *a1 = 0x4761F68478C333F5;
  *(a1 + 8) = 0x4761F68478C333F5;
  v5 = v1 ^ 0xB6151DCB;
  STACK[0xBC8] = v5;
  LODWORD(v5) = ((((((v2 - 7403) | 0x188) + 1140) ^ 0x617) + v5) ^ 0xFEFFE9DF) + 436043647 + ((2 * (((((v2 - 7403) | 0x188) + 1140) ^ 0x617) + v5)) & 0xFDFFD3BE);
  *(a1 + 16) = v5;
  v6 = (*(v3 + 8 * (v2 + 11594)))((v5 - 419260766));
  v7 = STACK[0x468];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * ((21 * (v6 == 0)) ^ v2)))();
}

uint64_t sub_1000BE97C()
{
  v3 = (*(v2 + 8 * (v1 + 17207)))();
  v4 = STACK[0x468];
  *(v0 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_1000BEC20()
{
  STACK[0x450] = STACK[0x8C0] - 0x4761F68478C333DDLL;
  v3 = SLOWORD(STACK[0xBAE]);
  LODWORD(STACK[0x3E0]) = v3;
  LODWORD(STACK[0x3C0]) = v3 ^ 0x8A6;
  LODWORD(STACK[0x260]) = LODWORD(STACK[0xBB4]) ^ v0;
  STACK[0x430] = STACK[0x670] - 0x4761F68478C333DDLL;
  v4 = SLOWORD(STACK[0xBE6]);
  LODWORD(STACK[0x3D0]) = v4;
  LODWORD(STACK[0x3B0]) = v4 ^ 0xFFFFE29C;
  LODWORD(STACK[0x250]) = LODWORD(STACK[0xBEC]) ^ v0;
  STACK[0x420] = STACK[0x968] - 0x4761F68478C333DDLL;
  STACK[0x410] = STACK[0x550] - 0x4761F68478C333DDLL;
  STACK[0x400] = STACK[0x710] - 0x4761F68478C333DDLL;
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x98C]) ^ v0;
  v5 = STACK[0x464];
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x464]) + 17160;
  v6 = *(v2 + 8 * (v1 + 1597));
  v7 = (v5 + 1779513698) & 0x95EECEF9;
  LODWORD(STACK[0x370]) = v5 + 8827;
  LODWORD(STACK[0x240]) = v7;
  LODWORD(STACK[0x360]) = v7 ^ 0xF505;
  LODWORD(STACK[0x2C0]) = ((v5 ^ 0x97E) + 1461243670) & 0xA8E72FFF;
  LODWORD(STACK[0x350]) = v5 ^ 0x864;
  LODWORD(STACK[0x2B0]) = v5 ^ 0x97E;
  LODWORD(STACK[0x2A0]) = v5 ^ 0x3ACD;
  LODWORD(STACK[0x340]) = v5 + 10620;
  v8 = 29 * (v5 ^ 0x6F4);
  LODWORD(STACK[0x230]) = v8;
  v9 = (v8 + 10651) | 0x50;
  LODWORD(STACK[0x330]) = v5 + 8968;
  LODWORD(STACK[0x290]) = v9;
  LODWORD(STACK[0x320]) = v9 - 17474;
  v10 = STACK[0xBB0];
  LODWORD(STACK[0x3F0]) = -1240130097;
  v11 = STACK[0xBE8];
  LODWORD(STACK[0x280]) = v10;
  LODWORD(STACK[0x310]) = v10 ^ v0;
  LODWORD(STACK[0x270]) = v11;
  LODWORD(STACK[0x2E0]) = v11 ^ v0;
  LODWORD(STACK[0x2D0]) = v5 + 4277;
  return v6(0xA3EEF82EC5D4676CLL);
}

uint64_t sub_1000BEFBC()
{
  v2 = STACK[0x798];
  v3 = *(STACK[0x798] - 0x4761F68478C333EDLL);
  v4 = STACK[0x8C0];
  *(v4 - 0x4761F68478C333EDLL) = v3;
  *(v4 - 0x4761F68478C333F5) = *(v2 - 0x4761F68478C333F5);
  return (*(v1 + 8 * (((v3 == 0x4761F68478C333F5) * (((v0 - 7859) | 0x501) - 7328)) ^ v0)))();
}

uint64_t sub_1000BF214()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x42A1)))();
  v3 = STACK[0x468];
  *(STACK[0x798] - 0x4761F68478C333DDLL) = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000BF29C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 1112182773) & 0xBDB55EE8;
  v4 = (*(v2 + 8 * (v3 + 13163)))(a1 - 0x4761F68478C333F5);
  v5 = STACK[0x468];
  STACK[0x798] = 0x4761F68478C333F5;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_1000BF3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + v8) = v10;
  *(a8 - 0xAB5C364D9808152) = v10;
  return (*(v11 + 8 * (v9 ^ 0x8DA80E3 ^ (7282 * (v9 < (v9 ^ 0x3F278EB3))))))(a1, a2, a3, a4, a5, a6, a7, 2876728310);
}

uint64_t sub_1000BF424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(v11 - 0x4761F68478C333F5) = v10;
  *(v10 - 0x4761F68478C333EDLL) = *(a8 + v8);
  *(a8 + v8) = v10;
  return (*(v12 + 8 * v9))(a1, a2, a3, a4, a5, a6, a7, 2876728310);
}

uint64_t sub_1000BF578@<X0>(void *a1@<X8>)
{
  *(v3 - 0x4761F68478C333F5) = v1;
  *(v1 - 0x4761F68478C333EDLL) = *a1;
  return (*(v4 + 2128 * (v2 ^ 0x1EBF)))();
}

uint64_t sub_1000BF658()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x5E7E)))();
  v4 = STACK[0x468];
  *(v1 - 0x4761F68478C333DDLL) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1000BF788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36)
{
  LODWORD(STACK[0x93C]) = a8;
  STACK[0x738] = STACK[0x690];
  STACK[0x830] = a36;
  LODWORD(STACK[0x4E4]) = 695878990;
  return (*(v37 + 8 * v36))(a1, 0x3B5F75C64C87DB10, 695869141);
}

uint64_t sub_1000BF7E0()
{
  v2 = STACK[0x780];
  v3 = *(STACK[0x780] - 0x4761F68478C333EDLL);
  v4 = STACK[0x670];
  *(v4 - 0x4761F68478C333EDLL) = v3;
  *(v4 - 0x4761F68478C333F5) = *(v2 - 0x4761F68478C333F5);
  return (*(v1 + 8 * (((v3 == 0x4761F68478C333F5) * (((v0 ^ 0x2345) + 514049716) & 0xE15C2FBE ^ ((v0 ^ 0x2345) + 1044498327) & 0xC1BE2DDD ^ 0x17A)) | v0 ^ 0x2345)))();
}

uint64_t sub_1000BFA6C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x6723)))();
  v3 = STACK[0x468];
  *(STACK[0x780] - 0x4761F68478C333DDLL) = 0;
  return (*(v3 + 8 * (v0 ^ 0x3D16)))(v2);
}

uint64_t sub_1000BFAFC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 7927;
  v4 = (*(v2 + 8 * (v3 + 15322)))(a1 - 0x4761F68478C333F5);
  STACK[0x780] = 0x4761F68478C333F5;
  return (*(v2 + 8 * ((6799 * (LODWORD(STACK[0xA1C]) == ((v3 + 1429) ^ 0xAB77573B ^ (v3 + 959566694) & 0xC6CE3EE3))) ^ v3)))(v4);
}

uint64_t sub_1000BFC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  STACK[0x5A0] = v9;
  STACK[0x6D8] = 0x4761F68478C333F5;
  LODWORD(STACK[0x7F8]) = -1240130101;
  STACK[0x508] = 0x18927B720A74154BLL;
  v13 = a8 == v10 || v9 == 0x27F2AA98AED1E9E3;
  return (*(v11 + 8 * ((((((v8 - 165933076) ^ v13) & 1) == 0) * (5 * (v8 ^ 0x3829) - 1561)) | v8)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000BFCB4@<X0>(int a1@<W1>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  STACK[0x6A0] = a2;
  LODWORD(STACK[0x510]) = v35;
  STACK[0x6F0] = a35;
  LODWORD(STACK[0x704]) = a1 - 3;
  return (*(v37 + 8 * (v36 ^ 0xF61C07CA ^ (130 * (v36 ^ 0x761C4872)) ^ (3876 * (v36 > 0x7EFF7FE)))))();
}

uint64_t sub_1000BFD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  LODWORD(STACK[0xC14]) = v8;
  STACK[0xC18] = v10;
  v14 = a8 == v11 || v10 == 0x2CB46329DC91C8CELL;
  return (*(v12 + 8 * ((v14 * ((v9 ^ 0x79CF) - 25091 + 11 * (v9 ^ 0x4C7B))) ^ v9)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000BFDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v8;
  STACK[0x870] = *v8;
  return (*(v9 + 8 * (((v10 == 0x4761F68478C333F5) * ((v7 - 10290) ^ (v7 - 15867) ^ 0x1E54)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 1418211957);
}

uint64_t sub_1000BFFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v9 = *(STACK[0x6D8] - 0x4761F68478C333DDLL);
  STACK[0x728] = v9;
  return (*(v8 + 8 * (((v9 != 0) * (a8 ^ 0x3EEC)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 1418211936);
}

uint64_t sub_1000C003C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = (v8 | ((v8 < 0x18FD695E) << 32)) + 0x798A7C48742CEB1ELL;
  STACK[0xC00] = v10;
  v11 = STACK[0x508];
  STACK[0xC08] = STACK[0x508];
  return (*(v9 + 8 * ((5903 * (v10 - v11 - 0x60F800D682B63F3BLL < (((((a8 ^ 0x1917) + 889354187) & 0xCAFD665F) - 375) ^ 0xFFFFFFFFFFFFFB50))) ^ a8 ^ 0x1917)))(a1, a2, a3, a4, a5, a6, a7, 1418211964);
}

uint64_t sub_1000C0A10()
{
  v2 = 26 * (v0 ^ 0xEC2);
  STACK[0x5C8] = *(v1 + 8 * v2);
  return (*(v1 + 8 * (v2 - 4612 + ((v2 + 1642734922) & 0x9E15FBFB))))();
}

uint64_t sub_1000C0C20@<X0>(unint64_t a1@<X8>)
{
  STACK[0x9A0] = v1;
  LODWORD(STACK[0x6AC]) = v2;
  STACK[0x808] = a1;
  STACK[0x8C8] = 0x717CD78A187ACC69;
  LODWORD(STACK[0x54C]) = -1240130101;
  STACK[0x990] = 0x8C38D1834A63647;
  STACK[0x480] = 0;
  v6 = (*(v5 + 8 * (v3 + 13393)))(16);
  v7 = STACK[0x468];
  STACK[0x8A0] = v6 + v4;
  return (*(v7 + 8 * (((((v3 ^ 0x2413 ^ (v6 == 0)) & 1) == 0) * ((v3 - 753788694) & 0x2CEDDD9F ^ 0xCE2)) ^ v3)))();
}

uint64_t sub_1000C0CE4(void *a1)
{
  *a1 = 0x4761F68478C333F5;
  a1[1] = 0x4761F68478C333F5;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000C0D44@<X0>(uint64_t a1@<X8>)
{
  v4 = ((v1 + 2057) ^ 0x8E832876C3CEB113) + a1;
  v6 = v4 > 0xDC495E3D && v4 < (v2 - 1055313029) + 3695795774u;
  return (*(v3 + 8 * ((v6 * (v1 - 6222)) ^ v1)))();
}

uint64_t sub_1000C0E6C@<X0>(uint64_t a1@<X8>)
{
  v5 = (*(((2 * (a1 - 0x717CD78A187ACC63)) & 0x3BE9F8FB7FF7DDDELL) + ((a1 - 0x717CD78A187ACC63) ^ 0x5DF4FC7DBFFBEEEFLL) + v2 - 0x5DF4FC7DBFFBEEEFLL) << 24) | (*(((2 * (a1 - 0x717CD78A187ACC63)) & 0x3BE9F8FB7FF7DDDELL) + ((a1 - 0x717CD78A187ACC63) ^ 0x5DF4FC7DBFFBEEEFLL) + v2 - 0x5DF4FC7DBFFBEEEELL) << 16) | (*(((2 * (a1 - 0x717CD78A187ACC63)) & 0x3BE9F8FB7FF7DDDELL) + ((a1 - 0x717CD78A187ACC63) ^ 0x5DF4FC7DBFFBEEEFLL) + v2 - 0x5DF4FC7DBFFBEEEDLL) << 8);
  v6 = *(((2 * (a1 - 0x717CD78A187ACC63)) & 0x3BE9F8FB7FF7DDDELL) + ((a1 - 0x717CD78A187ACC63) ^ 0x5DF4FC7DBFFBEEEFLL) + v2 - 0x5DF4FC7DBFFBEEECLL);
  v7 = (((v5 | v6) - 1240130101 - 2 * ((v5 | v6) & 0x36151DCF ^ v6 & 4)) ^ 0xB6151DCB) + a1 - 0x717CD78A1351BBDDLL;
  v8 = v3 - 0x741EEEBAD68926CFLL;
  v10 = v8 > 0x5291081 && v7 > v8;
  return (*(v4 + 8 * ((250 * v10) ^ v1)))();
}

uint64_t sub_1000C0F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40)
{
  LODWORD(STACK[0x7FC]) = a8;
  STACK[0x648] = STACK[0x8A0];
  STACK[0x830] = a40;
  LODWORD(STACK[0x4E4]) = 695878986;
  return (*(v41 + 8 * v40))();
}

uint64_t sub_1000C1338@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + a1 + v2);
  v6 = (*v5 << 56) | (v5[1] << 48) | (v5[(v3 ^ 0x156F) - 3903] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
  STACK[0x990] = v6 + 0x8C38D1834A63647 - ((2 * v6) & 0x11871A30694C6C8ELL);
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1000C1428@<X0>(uint64_t a1@<X8>)
{
  STACK[0x480] = v1 + a1 + v2;
  STACK[0x8C8] = v3;
  return (*(v6 + 8 * (v4 ^ 0xB615128A ^ (31 * (((((v5 - v4) | (v4 - v5)) >> ((v4 + 51) & 0xDB ^ 0xC5)) & 1) == 0)))))();
}

uint64_t sub_1000C1578@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + a1 + v2);
  v6 = v5[3];
  v7 = (*v5 << 24) | (v5[1] << 16) | (v5[(v3 ^ 0x156F) - 3903] << 8) | v6;
  LODWORD(STACK[0x54C]) = v7 - 1240130101 - 2 * (v7 & 0x36151DCF ^ v6 & 4);
  return (*(v4 + 8 * v3))();
}

void sub_1000C1650(id a1)
{
  v1 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 - dword_100450DA0) ^ 0x20)) ^ byte_1004247A0[byte_10041B080[(33 * ((qword_100450D48 - dword_100450DA0) ^ 0x20))] ^ 0x65]) + 168);
  v2 = *(v1 - 858441147);
  v3 = *(&off_10044E3E0 + (byte_1004247A0[byte_10041B080[(33 * ((qword_100450D48 - v2) ^ 0x20))] ^ 0x65] ^ (33 * ((qword_100450D48 - v2) ^ 0x20))) + 218);
  v4 = 2128276769 * (((*(v3 - 895037751) ^ v2) - &v9) ^ 0xEEDD19FB0E58FC20);
  *(v1 - 858441147) = v4;
  *(v3 - 895037751) = v4;
  v7 = 0;
  v8 = 4;
  LODWORD(v1) = *(v1 - 858441147);
  LODWORD(v3) = *(v3 - 895037751);
  v5 = *(&off_10044E3E0 + ((33 * (dword_100450DA0 ^ 0x20 ^ qword_100450D48)) ^ byte_10040EBA0[byte_1003FFD80[(33 * (dword_100450DA0 ^ 0x20 ^ qword_100450D48))] ^ 0x8C]) + 39) - 1286268654;
  v6 = *&v5[8 * ((16144 * ((*&v5[8 * ((33 * ((v3 - v1) ^ 0x20)) ^ byte_1004247A0[byte_10041B080[(33 * ((v3 - v1) ^ 0x20))] ^ 0x6E]) + 152096])(*(&off_10044E3E0 + (byte_1003FFF80[byte_1004246A0[(33 * ((v3 + v1) ^ 0x20))] ^ 0xE5] ^ (33 * ((v3 + v1) ^ 0x20))) + 26) - 248625826, &v7, &v8, 0, 0) == 0)) ^ 0x109E)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000C1880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  if (a11)
  {
    v12 = 102;
  }

  else
  {
    v12 = 103;
  }

  byte_100450E17 = v12;
  return (*(v11 + 34032))();
}

void *sub_1000C197C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = (result[2] - a2) ^ v2;
  result[4] = 0;
  result[5] = v3;
  return result;
}

void sub_1000C1990()
{
  v0 = __chkstk_darwin();
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000C1AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v9 - 0x2968F53CA5E435F9) = *(v8 - 0x7203BC651AC4C10ELL);
  *(v9 - 0x2968F53CA5E435F1) = *(v8 - 0x7203BC651AC4C10ALL);
  return (*(a8 + 8 * (a7 + 1660735268)))();
}

uint64_t sub_1000C1C88@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = *(a7 + (a6 & (((v16 + a5) & 0xFFFFFFF8) - 1757664884) & 0xFFFFFFFFFFFFFFF8));
  v22 = (__ROR8__((v16 + a5) & 0xFFFFFFFFFFFFFFF8, 8) + v21) ^ v11;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x874BFC825F0F5BD1;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - (((v26 + v25) << ((((a4 - 84) | 0x86) ^ 0x7B) + ((a4 - 88) | 8u))) & 0xB591773F40BDE026) - 0x253744605FA10FEDLL) ^ 0x89488650739F0779;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v9 - ((v29 + v28) | v9) + ((v29 + v28) | 0x3179AA80D7171FADLL)) ^ 0x94925957F9F5166ELL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v13;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__((a9 - ((v34 + v33) | a9) + ((v34 + v33) | 0x5A8B2EA08800A84)) ^ 0x48CBC1ACD0CE8DBALL, 8);
  v36 = (a9 - ((v34 + v33) | a9) + ((v34 + v33) | 0x5A8B2EA08800A84)) ^ 0x48CBC1ACD0CE8DBALL ^ __ROR8__(v33, 61);
  v37 = (((2 * (v35 + v36)) & 0xD720969376A75E30) - (v35 + v36) - 0x6B904B49BB53AF19) ^ 0x4C860A30852A8B9ALL;
  v38 = (((__ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61))) ^ 0xAFD0449D7DBC15B7) >> (v17 & 0x38)) ^ *(v18 + a5);
  v39 = *(a7 + ((((a2 + ((v20 + a5) & 0x7F88F090 | 0x80770F6B) + ((v20 + a5) & 0xFFFFFFF8 | a2) + 1) & 0xFFFFFFF8) + 397621496) & a6));
  v40 = (__ROR8__((v20 + a5) & 0xFFFFFFFFFFFFFFF8, 8) + v39) ^ v11;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (v42 + v41 - ((2 * (v42 + v41)) & 0x420AA19AFA0011FELL) + 0x210550CD7D0008FFLL) ^ 0xA64EAC4F220F532ELL ^ __ROR8__(v41, 61);
  v44 = (__ROR8__((v42 + v41 - ((2 * (v42 + v41)) & 0x420AA19AFA0011FELL) + 0x210550CD7D0008FFLL) ^ 0xA64EAC4F220F532ELL, 8) + v43) ^ 0x53803DCFD3C1F76ALL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xA5EBF3D72EE209C3;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v13;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x4D637346D84E873ELL;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xD8E9BE86C186DB7DLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  LODWORD(v53) = v38 - (((((v10 & (2 * (v54 + v53))) - (v54 + v53) + v12) ^ a1) >> (v14 & 0x38)) ^ *(v15 + a5));
  LODWORD(v53) = (v19 & (2 * v53)) + (v53 ^ a3) != a3;
  return (*(a8 + 8 * (((16 * v53) | (32 * v53)) ^ a4)))();
}

uint64_t sub_1000C21BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, _DWORD *a41)
{
  v44 = (v41 + a8);
  *(*(v43 - 0x2968F53CA5E435D1) - 0x5480F16B0E863C9DLL) = a37;
  v45 = (*a41 ^ v42) - (((v41 ^ 0x1AF1) + v44 + 1341872468) & (2 * (*a41 ^ v42))) + 1988065913;
  return (*(a7 + 8 * ((26 * ((v45 ^ 0x8C81AFC6) + 1742305917 + ((2 * v45) & 0xF5FDAB7E ^ 0xE4FCA072) != 1658343484)) ^ v41)))(a1, a2, a3, a4, a5, a6, v44, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1000C2334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v10 - 0x2968F53CA5E435D9) = 18;
  *(v10 - 0x2968F53CA5E435E9) = *(v9 - 0x7203BC651AC4C10ELL);
  *(v10 - 0x2968F53CA5E435E1) = *(v9 - 0x7203BC651AC4C10ALL);
  return (*(a8 + 8 * (v8 + a7 + 684)))();
}

uint64_t sub_1000C2548@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v36 = *(*v32 + v29);
  *(v33 + (a2 + a7) + 4) = a5 + v36 - (v35 & (2 * v36)) - 11;
  v37 = *(a6 + 8 * (((v29 + 1 < (*v34 ^ v30)) * a1) ^ v31));
  return v37(a1, (a2 + 1), v37, v35 & (2 * v36), a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1000C25B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, _DWORD *a41)
{
  *(a41 + (a40 + a9) + 4) = 53;
  *a41 = a40;
  return (*(a8 + 8 * (a6 + a7 - 1536)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1000C26F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v10 - 0x2968F53CA5E43619) = *(v9 - 0x7203BC651AC4C10ELL);
  *(v10 - 0x2968F53CA5E43611) = *(v9 - 0x7203BC651AC4C10ALL);
  return (*(a8 + 8 * (v8 + a7 + 684)))();
}

uint64_t sub_1000C28DC@<X0>(void *a1@<X1>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33, int a34, int a35)
{
  *(*(v39 - 0x2968F53CA5E435D1) - 0x5480F16B0E863A35) = a3 - 32;
  *(*(v39 - 0x2968F53CA5E435D1) - 0x5480F16B0E863A31) = a3;
  *(*(v39 - 0x2968F53CA5E435D1) - 0x5480F16B0E863A2DLL) = *(v39 - 0x2968F53CA5E435D1) - 0x4944BAFB43C0D595;
  v41 = *(v39 - 0x2968F53CA5E435D1) - 0x2E5AD28702E86540;
  v42 = *(v36 + v35) + (*a33 ^ a3) - (a35 ^ 0xB6155C28 ^ (101 * (v37 ^ 0x6A7)));
  v43 = *(a2 + 8 * v37);
  *(v40 - 144) = v37 - 53688491 * ((((v40 - 168) | 0xC563F81) - ((v40 - 168) | 0xF3A9C07E) - 206978946) ^ 0xBA4FE757) + 152858035;
  *(v40 - 140) = ((a35 ^ 0xC9FAE2A4) - 1073758241 + ((2 * a35) & 0xFFDFFEDE ^ 0x6C0A3A96)) ^ (53688491 * ((((v40 - 168) | 0xC563F81) - ((v40 - 168) | 0xF3A9C07E) - 206978946) ^ 0xBA4FE757));
  a1[689] = v42;
  a1[688] = v41;
  a1[687] = v43 ^ (53688491 * ((((v40 - 168) | 0x92EE81C80C563F81) - ((v40 - 168) | 0x6D117E37F3A9C07ELL) + 0x6D117E37F3A9C07ELL) ^ 0x3A0AC4F3BA4FE757));
  (*(a2 + 8 * (v37 + 17480)))(v40 - 168);
  return (*(a29 + 8 * (v37 + 2923)))(v38);
}

uint64_t sub_1000C2AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v10 - 0x2968F53CA5E43631) = *(v9 - 0x7203BC651AC4C102);
  *(v10 - 0x2968F53CA5E43629) = *(v9 - 0x7203BC651AC4C0FALL);
  return (*(a8 + 8 * (v8 + a7 + 684)))();
}

uint64_t sub_1000C2C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v9 - 0x2968F53CA5E43609) = *(v8 - 0x7203BC651AC4C10ELL);
  *(v9 - 0x2968F53CA5E43601) = *(v8 - 0x7203BC651AC4C10ALL);
  return (*(a8 + 8 * (a7 + 1660735268)))();
}

uint64_t sub_1000C2C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  HIDWORD(a35) = 17;
  HIDWORD(a36) = 1418211936;
  return (*(a8 + 8 * (((a7 ^ 0x9D032C36 ^ (676 * (a7 ^ 0x9D036B5B))) * (v38 != 0x324461391297B33ALL)) ^ (a7 + 1660736159))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1000C2CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  v71 = *(*v69 + ((((((v64 - 945517976) & 0xFAF20008 | 0x50DFFF4) + 84803572 + ((v68 - 84821825) | (v64 - 945517976) & 0xFFFFFFF8) + 1) & 0xFFFFFFF8) - 1842468456) & *v70));
  v72 = __ROR8__((v64 - 0xBD11DAB385B7598) & 0xFFFFFFFFFFFFFFF8, 8);
  v73 = (((v71 + v72) ^ 0x5D920E3DE9FEED2ALL) - ((((v71 + v72) ^ 0x5D920E3DE9FEED2ALL) << (((8 * v68) ^ 0x38u) - 87)) & 0x4460777D24B8D540) + 0x22303BBE925C6AA0) ^ 0x1D30E14AA53AAE2CLL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x874BFC825F0F5BD1;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v77 + v76 - ((2 * (v77 + v76)) & 0x961C1979201D7266) - 0x34F1F3436FF146CDLL) ^ 0x988E317343CF4E59 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__((v77 + v76 - ((2 * (v77 + v76)) & 0x961C1979201D7266) - 0x34F1F3436FF146CDLL) ^ 0x988E317343CF4E59, 8) + v78) ^ 0xA5EBF3D72EE209C3;
  v80 = __ROR8__(v79, 8);
  v81 = v79 ^ __ROR8__(v78, 61);
  v82 = (((v80 + v81) | 0x925004AC3F9FDE37) - ((v80 + v81) | 0x6DAFFB53C06021C8) + 0x6DAFFB53C06021C8) ^ 0x8A2A47E1901D675CLL;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x4D637346D84E873ELL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xD8E9BE86C186DB7DLL;
  *(v64 - 0x324461391297B33ALL) = ((__ROR8__(v86, 8) + (v86 ^ __ROR8__(v85, 61))) ^ 0xAFD0449D7DBC15B7) >> (8 * ((v64 + 104) & 7));
  v96 = v64;
  *(v64 - 0x324461391297B23ALL) = -1240130101;
  v87 = *(*(v65 + 8 * (v68 ^ 0x4674)) - 488494207);
  v67[6] = v64 - 0xBD11DAB385B7598;
  v67[7] = v87;
  (*(a8 + 8 * (v68 ^ 0xD5B)))(v66, &a47 + 4, 32);
  v88 = (*(a34 + 8 * (v68 + 841)))(v87, &a47 + 4);
  v67[8] = v88;
  a64 = v88 == 0;
  HIBYTE(a51) = 1;
  *v67 = 0;
  v67[1] = 0;
  LODWORD(a39) = 1418211960;
  return (*(a34 + 8 * ((v88 != 0) ^ v68)))(v88, v89, v90, v91, v92, v93, v94, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v96, a21, a1, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_1000C2FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v62 = (*(a8 + 8 * (v58 + 17435)))(v60[8], @"com.apple.private.fairplay.FPDI", &a46);
  v60[10] = v62;
  if (v62)
  {
    v69 = a46 == 0;
  }

  else
  {
    v69 = 0;
  }

  v70 = v69;
  v60[2] = a46;
  a58 = v59;
  v60[4] = 0;
  v60[5] = v62;
  HIDWORD(a39) = v61;
  return (*(a34 + 8 * ((50 * (((v58 - 1) ^ v70) & 1)) ^ v58)))(v62, v63, v64, v65, v66, v67, v68, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_1000C307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v45 = (*(a8 + 8 * (v44 ^ 0x64B9)))();
  v46 = v43[10];
  v47 = (*(a34 + 8 * (v44 ^ 0x64C0)))(v46);
  *v43 = 0;
  v43[1] = v46;
  LODWORD(a39) = 1418211960;
  return (*(a34 + 8 * (((v45 == v47) * ((v44 ^ 6) + 16460)) ^ v44)))(v47, v48, v49, v50, v51, v52, v53, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_1000C3108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v46 = v44[10];
  v47 = (*(a8 + 8 * (v43 + 7083)))(v44[7], v46);
  v44[11] = v47;
  *v44 = 0;
  v44[1] = v46;
  LODWORD(a39) = v45;
  return (*(a34 + 8 * (((v47 == 0) * (((v43 - 10121) ^ 0xFFFFFEDE) + (v43 ^ 0x28A1))) ^ v43)))(v47, v48, v49, v50, v51, v52, v53, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_1000C3178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v45 = v44[11];
  v46 = (*(a8 + 8 * (v43 ^ 0x4DC1)))(v45, @"client-identifier");
  v47 = v44[10];
  *v44 = v45;
  v44[1] = v47;
  LODWORD(a39) = 1418211960;
  return (*(a34 + 8 * (((v46 == 0) * ((v43 + 420845757) & 0xE6EA66AA ^ 0x675)) ^ v43)))(v46, v48, v49, v50, v51, v52, v53, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_1000C31FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v35 ^ 0x4CB9)))(*(v34 + 88), @"client-identifier");
  *(v34 + 96) = v36;
  v37 = (*(a34 + 8 * (v35 ^ 0x4F47)))();
  v38 = v37 == (*(a34 + 8 * (v35 ^ 0x4CA7)))(v36);
  return (*(a34 + 8 * ((v38 * (v35 + 1660729402 + ((v35 - 2130691434) | 0x1C032A00) - 1167)) ^ v35)))();
}

uint64_t sub_1000C32BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  (*(a8 + 8 * (v43 ^ 0x5E77)))(&STACK[0x12F0], 0, 256);
  v46 = (*(a34 + 8 * (v43 + 13905)))(v45[12], &STACK[0x12F0], 256, 134217984);
  v47 = v45[10];
  *v45 = v45[11];
  v45[1] = v47;
  LODWORD(a39) = v44 + 24;
  return (*(a34 + 8 * (((v46 != 0) * (((v43 - 5126) | 0x640) - 1400)) ^ v43)))(v46, v48, v49, v50, v51, v52, v53, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_1000C34AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v24 = *(*v21 + ((*v22 & ((v13 & 0xFFFFFFF8) - 1757664884)) & 0xFFFFFFFFFFFFFFF8));
  v25 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((((v25 + v24) << v15) | 0x6B4BE1977A652B7ELL) - (v25 + v24) - 0x35A5F0CBBD3295BFLL) ^ a2;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((v28 + v27) & v8 ^ a4) + ((v28 + v27) ^ a3) - (((v28 + v27) ^ a3) & v8)) ^ a5;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(((a6 | (2 * (v31 + v30))) - (v31 + v30) + v16) ^ v17, 8);
  v33 = ((a6 | (2 * (v31 + v30))) - (v31 + v30) + v16) ^ v17 ^ __ROR8__(v30, 61);
  v34 = ((v18 & (2 * (v32 + v33))) - (v32 + v33) + v19) ^ v20;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x187A434DAF82B96BLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a1;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v9;
  *v11 = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ v10) >> (v14 & 0x38)) ^ *(&STACK[0x12F0] + v12);
  return (*(a7 + 8 * (((v12 == 0) * v23) ^ a8)))();
}

uint64_t sub_1000C3628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v45 = v43[11];
  v46 = (*(a8 + 8 * (v44 + 1660739395)))(v45, @"capabilities");
  v47 = v43[10];
  *v43 = v45;
  v43[1] = v47;
  LODWORD(a39) = -1418238986;
  return (*(a34 + 8 * (((v46 == ((68 * (v44 ^ 0xC) - 48) & 0xFC)) * ((v44 + 2070606638) & 0xE791A7FB ^ 0x199E)) ^ (v44 + 1660732589))))(v46, v48, v49, v50, v51, v52, v53, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_1000C36E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v56 = (*(a8 + 8 * (v45 + 13795)))(v43[11], @"capabilities");
  v46 = (*(a34 + 8 * (v45 ^ 0x5E49)))();
  v47 = (*(a34 + 8 * (v45 + 13789)))(v56);
  v48 = v43[10];
  *v43 = v43[11];
  v43[1] = v48;
  LODWORD(a39) = v44;
  return (*(a34 + 8 * (((v46 == v47) * ((2 * v45) ^ 0x54D)) ^ v45)))(v47, v49, v50, v51, v52, v53, v54, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_1000C378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44)
{
  STACK[0x27F8] = *(a8 + 8 * v45) - ((((v47 - 168) | 0x3FA44864878270AELL) - ((v47 - 168) | 0xC05BB79B787D8F51) - 0x3FA44864878270AFLL) ^ 0xBD6053BAD2712F39) * v44;
  *(v47 - 136) = -1660720319 - ((((v47 - 168) | 0x878270AE) - ((v47 - 168) | 0x787D8F51) + 2021494609) ^ 0xD2712F39) * v44 + v45 - 1506;
  STACK[0x2810] = a20 + 0x1C519DEEB039A473;
  STACK[0x2800] = a44;
  v48 = (*(a8 + 8 * (v45 + 17475)))(v47 - 168);
  v49 = v46[10];
  *v46 = v46[11];
  v46[1] = v49;
  return (*(a34 + 8 * ((v45 - 869) ^ v45)))(v48);
}

uint64_t sub_1000C3870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *v47;
  v49 = v47[1];
  v47[2] = a46;
  v47[4] = v50;
  v47[5] = v49;
  HIDWORD(a39) = a39;
  return (*(a8 + 8 * v48))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_1000C3994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = v35 + 1320;
  v37 = v35 - 803874353;
  (*(a2 + 8 * ((v35 + 1320) ^ a3)))(a35);
  return (*(a29 + 8 * ((14022 * (v36 < 0xEAC2AED5)) ^ ((v37 ^ 0xD015EC30) + v36))))(a1);
}

uint64_t sub_1000C3B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (**(v27 - 0x7203BC651AC4C10ALL) == (((a8 - 55) | 0x40) - 64))
  {
    v29 = 18;
  }

  else
  {
    v29 = 19;
  }

  *(v28 - 0x2968F53CA5E435D9) = v29;
  return (*(a7 + 8 * a8))(a1, a2, a3, a4, a5, a6, (a8 + 486629833) | 0x80020240, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1000C3BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  HIDWORD(a35) = 13;
  HIDWORD(a36) = 1418211936;
  return (*(a8 + 8 * (((((a7 + 153250483) & 0x59DA6BEF) - 16814) * (v36 == 0x4E95FF27C2D156ADLL)) ^ (a7 + 1660733649))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_1000C3C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = (v36 - 16867);
  *(v35 - 0x4E95FF27C2D156ADLL) = -1240130101;
  v40 = (*(a8 + 8 * (v37 ^ 0x4A59)))(v34);
  return (*(a34 + 8 * (v37 ^ 0x116B ^ (1957 * (((v37 - v40) & ~v40) >> 63)))))(a1);
}

uint64_t sub_1000C3D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = (*(a8 + 8 * (v34 ^ 0x5E14)))(a20);
  v36 = (*(a34 + 8 * (v34 + 13797)))();
  v37 = v36 == (*(a34 + 8 * (v34 + 13709)))(v35);
  return (*(a34 + 8 * ((v37 * ((v34 - 789) ^ 0x1669 ^ ((v34 - 3178) | 0x2121))) ^ v34)))();
}

uint64_t sub_1000C3E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  a42 = 0;
  v44 = (*(a8 + 8 * (v43 + 8472)))(v42, 4, &a42);
  return (*(a34 + 8 * (((v44 == ((v43 + 52) ^ 0x6B)) * (((v43 - 10342) | 0x520) - 1509)) ^ v43)))(v44, v45, v46, v47, v48, v49, v50, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1000C3E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42)
{
  *v44 = -469967976;
  v46 = *(a8 + 8 * v43);
  v47 = 1912505411 * (((v42 | 0x5F181C4275CC890) - (v42 & 0x5F181C4275CC890)) ^ 0xF3ADFAB7D9A7BB68);
  STACK[0x2808] = a33;
  STACK[0x2800] = v46 ^ v47;
  *(v45 - 144) = v47 + (a42 ^ (((v43 - 1159) | 0x1001) - 283644300)) + ((2 * a42) & 0xDE2FFFBE) + 2147189880;
  *(v45 - 168) = (v43 - 1663692255) ^ v47;
  v48 = (*(a8 + 8 * (v43 + 17334)))(v45 - 168);
  return (*(a34 + 8 * (((*(v45 - 140) != -1418238986) * (5 * (v43 ^ 0xDCE) - 10327)) ^ (v43 + 3699))))(v48);
}

uint64_t sub_1000C3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = *v33 ^ 0xB6151DCB | *v35 ^ 0xE3FCDB98;
  *v33 = v36 - 1240130101 - ((2 * v36) & 0x6C2A3B96);
  return (*(a8 + 8 * ((7583 * (a32 > v34 - 259119572 + v32 - 5307)) ^ v32)))();
}

uint64_t sub_1000C4060(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v12 = v8 + a7 - 1746;
  v13 = *(v9 - 0x7203BC651AC4C102);
  *(*(v10 - 0x2968F53CA5E435D1) - 0x5480F16B0E863CB5) = v13;
  v14 = *(v9 - 0x7203BC651AC4C0FALL);
  v15 = *(v10 - 0x2968F53CA5E435D1) - 0x5480F16B0E8634C9;
  v16 = 1912505411 * ((((v11 - 168) | 0x371E847C1BDF2FACLL) - (v11 - 168) + ((v11 - 168) & 0xC8E17B83E420D050)) ^ 0xC142FF0FE5245C54);
  a2[688] = *(a8 + 8 * v12) + v16;
  a2[690] = v15;
  *(v11 - 168) = v16 + v13 - ((2 * v13 - 2048946852) & 0xAD9E5DAA) - 1715538557;
  *(v11 - 164) = (a7 + 767722544) ^ v16;
  a2[689] = v14;
  (*(a8 + 8 * (a7 + 1660739358)))(v11 - 168);
  return (*(a8 + 8 * (v12 ^ 0x986)))(a1);
}

uint64_t sub_1000C41BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  LODWORD(STACK[0x21C]) = 1418211936;
  v30 = v28 != 0x1989C1493973D246 && v27 != 0;
  return (*(a8 + 8 * ((a7 + 1660738496) | (16 * v30))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1000C4214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v13 + 336) = v12 + 456;
  v14 = *(v12 + 456) == 0;
  *(v13 + 168) = 0xAB5C364D9808152;
  LODWORD(STACK[0x20C]) = -1418238986;
  return (*(a8 + 8 * ((v14 * ((((a7 + 1359254047) & 0x11F80FBC ^ 0x841) - 506) ^ (11 * ((a7 + 1359254047) & 0x11F80FBC ^ 0x841)))) ^ (a7 + 1359254047) & 0x11F80FBC)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_1000C4294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = (*(a8 + 8 * (v34 ^ 0x70A9)))(16);
  *(v35 + 344) = v37;
  *(v35 + 168) = 0xAB5C364D9808152;
  LODWORD(STACK[0x20C]) = 1418211938;
  return (*(a34 + 8 * (((v37 != 0) * ((((v34 ^ 0x3ADC) + 8263) ^ 0xFFFFD790) + 73 * (v34 ^ 0x3ADC))) ^ v34)))(a1);
}

uint64_t sub_1000C4320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = v59[43];
  v59[44] = v60 + 0xAB5C364D9808152;
  v59[45] = v60;
  *v60 = 0x4761F68478C333F5;
  v60[1] = 0x4761F68478C333F5;
  v59[46] = v60 + 1;
  v59[47] = v58 - 0x1989C1493973D246;
  v61 = (*(a8 + 8 * (v57 ^ 0x6A3D)))();
  return (*(a34 + 8 * ((25538 * (v61 - ((2 * v61) & 0x7524399C) == 256)) ^ v57)))(v61, v62, v63, v64, v65, v66, v67, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1000C44C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x260]) = (((LODWORD(STACK[0x2DC]) ^ v9) + 1) ^ 0xF1DFDFFF) + ((2 * ((LODWORD(STACK[0x2DC]) ^ v9) + 1)) & 0xE3BFBFFE) + (((v8 | 0x816) - 6251) ^ 0xF68EA32);
  LOWORD(STACK[0x266]) = -19638;
  LODWORD(STACK[0x268]) = a4;
  LODWORD(STACK[0x26C]) = 1131258859;
  *(v10 + 280) = *(v10 + 376);
  LODWORD(STACK[0x284]) = -635732261;
  return (*(a8 + 8 * (v8 | 0x816)))();
}

uint64_t sub_1000C45BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _DWORD *a38)
{
  *(*(v41 - 0x2968F53CA5E435D1) - 0x5480F16B0E8638A5) = -1240130133;
  *(*(v41 - 0x2968F53CA5E435D1) - 0x5480F16B0E8638A1) = -1240130101;
  *(*(v41 - 0x2968F53CA5E435D1) - 0x5480F16B0E86389DLL) = *(v41 - 0x2968F53CA5E435D1) - 0x4944BAFB43C0D405;
  v43 = *(v38 - 0x7203BC651AC4C10ALL);
  v44 = (*a38 ^ 0x49EAA294) + 1072693231 + ((*a38 << (v40 + ((v39 - 6) & 0x45) + 19)) & 0xFFFF7EBE ^ 0x6C2A3A96);
  v45 = *(a8 + 8 * v39);
  v46 = 53688491 * ((~(v42 - 168) & 0xF0706018C3DA16D8 | (v42 - 168) & 0xF8F9FE73C25E927) ^ 0x5894252375C3CE0ELL);
  a2[688] = *(v41 - 0x2968F53CA5E435D1) - 0x2E5AD28702E863B0;
  a2[687] = v45 ^ v46;
  a2[689] = v43;
  *(v42 - 144) = v39 - v46 + 152858035;
  *(v42 - 140) = v44 ^ v46;
  (*(a8 + 8 * (v39 ^ 0x4C48)))(v42 - 168);
  return (*(a34 + 8 * (v39 ^ 0x137)))(a1);
}

uint64_t sub_1000C49F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27[312] = &STACK[0x7F79D10BACD3C2CA];
  v27[313] = &STACK[0x4A2A075403309152];
  v27[314] = &STACK[0x5D9CBB2201153DB3];
  v27[315] = &STACK[0x228E4550EC68B6D8];
  v27[316] = &STACK[0x96EE636C80926AF];
  v27[317] = &STACK[0x96EE636C809273F];
  v27[318] = &STACK[0x96EE636C80924F7];
  v27[319] = &STACK[0x6D77B9B5EEF59670];
  v27[320] = &STACK[0x400EB7F470E18797];
  v27[321] = &STACK[0x96EE636C809270F];
  v27[111] = 0;
  LODWORD(STACK[0x7AC]) = 1418211962;
  return (*(a8 + 8 * ((((a7 + 1856585269) < 0xCB615623) * (4129 * (a7 ^ 0x9D036B42) - 5233)) ^ (a7 + 1660734307))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1000C4C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 - 0x5549DA8D86355C24);
  *(v10 + 2952) = v11;
  return (*(a8 + 8 * (((((v8 + 2054049350) & 0x8591AFDD ^ 0x62FC9C4F) + ((v8 - 1120967667) & 0xDFD3FBF9)) * (v11 == 0)) ^ v8)))();
}

uint64_t sub_1000C4CEC@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v14 = *a11;
  *(v11 + 2960) = *a11;
  LODWORD(STACK[0x7AC]) = v13 + 4;
  return (*(a1 + 8 * (((55 * (((a2 - 2147458845) | 0x1D030100) ^ (v12 - 313)) - 17814) * (v14 != 0)) ^ a2)))();
}

uint64_t sub_1000C4D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[371] = *(v9[370] + 48);
  v12 = *(v9[369] + 200) == ((v8 + 30) ^ 0x96);
  LODWORD(STACK[0x7AC]) = v11;
  return (*(a8 + 8 * ((v12 * ((v8 - 1660738360) ^ (v10 + 5))) | v8)))();
}

uint64_t sub_1000C4DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(*(v9 + 2952) + 224);
  *(v9 + 2976) = v11;
  LODWORD(STACK[0x7AC]) = v10 + 34;
  return (*(a8 + 8 * (((v11 == 0) * (((v8 - 1088445103) & 0xDDE37F58) + ((2 * v8) ^ 0xA6EE) + 1660709165)) ^ v8)))();
}

uint64_t sub_1000C4E08@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = (*(*(v2 + 2952) + 204) ^ 0xFE6BFFB9) + 738158336 + ((*(*(v2 + 2952) + 204) << (((a2 + 62) | 0x40) - 63)) & 0xFCD7FF72);
  LODWORD(STACK[0xD04]) = v4;
  *(v2 + 2992) = **(v2 + 2968);
  LODWORD(STACK[0x594]) = v4;
  *(v2 + 1200) = 0xAB5C364D9808152;
  LODWORD(STACK[0x7AC]) = v3;
  return (*(a1 + 8 * ((23 * (((a2 - 1) ^ (v4 == 711681721)) & 1)) ^ a2)))();
}

uint64_t sub_1000C4EC4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = *(v2 + 2992);
  *(v2 + 784) = v4;
  LODWORD(STACK[0x790]) = v3 + 3;
  return (*(a1 + 8 * (((v4 == 0x6BBFEBF589A7D72FLL) * ((((((a2 + 1443082920) & 0xA9FC3FDD) + 207758656) | 0x41842000) - 1306936032) ^ (((a2 + 1443082920) & 0xA9FC3FDD) - 1064955470) & 0x3F79F0BF)) ^ (a2 + 1443082920) & 0xA9FC3FDD)))();
}

uint64_t sub_1000C4FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36[167] = v36[372];
  v36[153] = 0x3DED9A097EC0573FLL;
  LODWORD(STACK[0x61C]) = -1240130101;
  v36[90] = 0x8C38D1834A63647;
  v36[107] = 0;
  v39 = (*(a8 + 8 * (v35 | 0x252u)))(16);
  v36[375] = v39;
  v36[173] = v39 + v34;
  LODWORD(STACK[0x790]) = v37 + 2;
  return (*(a34 + 8 * (((v39 != 0) * (((v35 + 1145420292) | 0x9A06180) - 1306944366)) ^ v35)))(a1);
}

uint64_t sub_1000C5078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 3000);
  *v10 = 0x4761F68478C333F5;
  v10[1] = 0x4761F68478C333F5;
  return (*(a8 + 8 * (v8 - 12170)))();
}

uint64_t sub_1000C526C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _DWORD *a38, int a39)
{
  *(*(v43 - 0x2968F53CA5E435D1) - 0x5480F16B0E8638A5) = v39 - 32;
  *(*(v43 - 0x2968F53CA5E435D1) - 0x5480F16B0E8638A1) = v39;
  *(*(v43 - 0x2968F53CA5E435D1) - 0x5480F16B0E86389DLL) = *(v43 - 0x2968F53CA5E435D1) - 0x4944BAFB43C0D405;
  v45 = *(v43 - 0x2968F53CA5E435D1) - 0x2E5AD28702E863B0;
  v46 = *(v40 - 0x7203BC651AC4C10ALL) + (*a38 ^ v39) - (a39 ^ v39);
  v47 = 53688491 * (((~(v44 - 168) | 0x5CABC37B802C9552) + ((v44 - 168) | 0xA3543C847FD36AADLL)) ^ 0xBB079BFC9CAB27ALL);
  a2[687] = *(a8 + 8 * v41) ^ v47;
  a2[689] = v46;
  *(v44 - 144) = v41 - v47 + 152858035;
  *(v44 - 140) = ((a39 ^ 0xC9FAA224) - 1073741985 + ((v41 ^ 0xFFDF79DE) & (2 * a39) ^ 0x6C0A3B96)) ^ v47;
  a2[688] = v45;
  (*(a8 + 8 * (v41 ^ 0x4C48)))(v44 - 168);
  return (*(a34 + 8 * (v41 | 0xEE)))(v42);
}

uint64_t sub_1000C5520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 + 1232) = 0;
  LODWORD(STACK[0x4F4]) = 35459530;
  LODWORD(STACK[0x7AC]) = v12;
  return (*(a8 + 8 * (((8 * ((v9 - 4478361) & 0x9D477B41 ^ 0x9D036260) - 18675) * (v10 != 0x5549DA8D86355C24)) ^ v9)))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1000C5594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 - 0x5549DA8D86355C1CLL);
  *(v10 + 3192) = v11;
  return (*(a8 + 8 * ((29 * (((v11 == 0) ^ (v8 + v8 + 64 + 1)) & 1)) ^ v8)))();
}

uint64_t sub_1000C55F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v22 = *a17;
  *(v19 + 3200) = *a17;
  LODWORD(STACK[0x7AC]) = v21 + 4;
  return (*(a8 + 8 * (((v22 != 0) * (v18 ^ (v17 + 493) ^ (v20 + 6))) ^ v18)))();
}

uint64_t sub_1000C5630@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v5[401] = **(v5[400] + 48);
  v7 = *(v4 - 0x5549DA8D86355C14);
  LODWORD(STACK[0xDEC]) = v7;
  v5[127] = 0;
  LODWORD(STACK[0x614]) = -1240130101;
  v5[106] = 0;
  LODWORD(STACK[0x464]) = -1240130101;
  v5[157] = 0;
  LODWORD(STACK[0x6E0]) = a2;
  v5[138] = 0xAB5C364D9808152;
  LODWORD(STACK[0x7AC]) = v6;
  return (*(a1 + 8 * (((v7 == -1240130101) * (((v2 + ((v3 - 18368) | 0x4629) + 1660735108) | 0x882) - 16040)) ^ ((v3 - 18368) | 0x4629))))();
}

uint64_t sub_1000C56E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 3208);
  *(v9 + 1008) = v11;
  LODWORD(STACK[0x794]) = v10 + 3;
  return (*(a8 + 8 * (((((v11 == 0x6BBFEBF589A7D72FLL) ^ (v8 + 79)) & 1) * ((v8 - 7857) ^ 0x2014)) | v8)))();
}

uint64_t sub_1000C57A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[205] = 0;
  v9[209] = v9[401];
  v9[210] = v9[399];
  LODWORD(STACK[0x7F4]) = v8;
  v9[212] = &STACK[0x550];
  LODWORD(STACK[0x800]) = STACK[0xDEC];
  return (*(a8 + 8 * ((((v8 + 4397) | 0x642) - 3859) ^ v8)))();
}

uint64_t sub_1000C5840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v20 = v17 ^ 0xF3B;
  v21 = (v17 ^ 0xF3B) - 1660733237;
  v22 = ((v17 ^ 0xF3B) - 11761) | 0x910;
  v18[144] = 0;
  v18[96] = 0;
  LODWORD(STACK[0x4DC]) = 0;
  v18[116] = 0;
  LODWORD(STACK[0x414]) = 0;
  v18[101] = 0;
  LODWORD(STACK[0x5BC]) = 35459530;
  v23 = *a17;
  v18[322] = *a17;
  LODWORD(STACK[0x7AC]) = v19 + 4;
  return (*(a8 + 8 * (((v23 == 0) * (v22 + (v21 ^ 0x62FC9823))) ^ v20)))();
}

uint64_t sub_1000C58D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = (*(a8 + 8 * (v34 ^ 0x47C2)))(8);
  STACK[0xB70] = v37;
  *(STACK[0xB68] + 48) = v37;
  LODWORD(STACK[0x7AC]) = v35 + 2;
  return (*(a34 + 8 * (((v37 == 0) * (((v34 + 15788) | 0x9D032000) ^ 0x9D036B74)) ^ v34)))(a1);
}

uint64_t sub_1000C5950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = (*(a8 + 8 * ((v34 - 14) ^ 0x47F3)))(0, &STACK[0x5D8], &STACK[0x458], &STACK[0x4DC], &STACK[0x4F8], &STACK[0x414]);
  LODWORD(STACK[0x780]) = v35 - ((2 * v35) & 0x56EEC7EC) - 1418238986;
  return (*(a34 + 8 * (((v35 == ((2 * v35) & 0x56EEC7EC)) * (((v34 - 1664487331) & 0x6336464E) + 2587)) ^ (v34 - 14))))();
}

uint64_t sub_1000C59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x600] = STACK[0xB70];
  STACK[0xB78] = STACK[0x5D8];
  v11 = STACK[0x458];
  STACK[0x670] = STACK[0x458];
  v12 = LODWORD(STACK[0x4DC]) - ((LODWORD(STACK[0x4DC]) << (((v10 + 44) ^ 0xAD) + (v10 ^ (v8 - 19)))) & 0x6C2A3B96) - 1240130101;
  LODWORD(STACK[0xB84]) = v12;
  LODWORD(STACK[0x410]) = v12;
  v13 = STACK[0x4F8];
  STACK[0x4E0] = STACK[0x4F8];
  LODWORD(STACK[0x6CC]) = LODWORD(STACK[0x414]) - ((2 * LODWORD(STACK[0x414])) & 0x6C2A3B96) - 1240130101;
  STACK[0xB88] = &STACK[0x5480F16B0E8650A5];
  STACK[0x3F8] = &STACK[0x5480F16B0E8650A5];
  STACK[0xB90] = &STACK[0x5480F16B0E86596D];
  STACK[0x478] = &STACK[0x5480F16B0E86596D];
  STACK[0x4D0] = 4496;
  STACK[0xB98] = &STACK[0x558];
  STACK[0x3F0] = 0xAB5C364D9808152;
  STACK[0x6B0] = 0;
  LODWORD(STACK[0x518]) = v9;
  STACK[0x528] = 0;
  STACK[0x4C0] = 0;
  LODWORD(STACK[0x50C]) = -1240130101;
  STACK[0x538] = 0;
  LODWORD(STACK[0x6C8]) = -1240130101;
  STACK[0x6A8] = 0;
  if (STACK[0xB78])
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  v16 = !v14 && v13 != 0;
  return (*(a8 + 8 * ((v16 | (16 * v16)) ^ v10)))();
}

uint64_t sub_1000C5B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 + 12778)))(64);
  *(v35 + 2632) = v36;
  *(v35 + 2640) = v36 + 0x6BBFEBF589A7D72FLL;
  **(v35 + 2624) = v36 + 0x6BBFEBF589A7D72FLL;
  return (*(a34 + 8 * (((((v36 == 0) ^ (v34 - 1)) & 1) * (((v34 - 1116) | 0xA88) ^ 0x1E8D)) ^ v34)))();
}

uint64_t sub_1000C5B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v11[329];
  *v12 = v8;
  *(v12 + 8) = 0xCAF0868442EA372;
  v11[331] = v12 + 8;
  *(v12 + 16) = 0;
  *(v12 + 24) = v8;
  *(v12 + 32) = 0;
  *(v12 + 40) = v8;
  *(v12 + 48) = 0;
  *(v12 + 56) = v8;
  *(v12 + 44) = 24;
  v13 = *(*(v9 + 8 * (v10 - 7428)) - 1672523459);
  v11[332] = v12 + 44;
  return (*(a8 + 8 * (((v13 != ((v10 - 1660728152) ^ 0xFFFFFFFF62FC94BFLL)) * ((v10 - 1660728152) ^ 0x9D036B16)) ^ v10)))();
}

uint64_t sub_1000C5C68@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v34 = a2 + v32 + 230;
  v35 = (*(a1 + 8 * (v32 ^ (v30 + 14))))(v28 + v29, *(v31 + 8 * (v32 ^ (v33 - 8))) - 434594518);
  return (*(a28 + 8 * v34))(v35);
}

uint64_t sub_1000C5D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[145] = 0;
  v10[162] = 0;
  LODWORD(STACK[0x5F4]) = 0;
  v10[134] = 0;
  LODWORD(STACK[0x6A4]) = 0;
  LODWORD(STACK[0x7AC]) = v11;
  return (*(a8 + 8 * ((((v8 ^ 0x62FCA1E6) + v8 - 1660733889) * (v9 == 0x5549DA8D86355C24)) ^ v8)))();
}

uint64_t sub_1000C5DBC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v5 = *v2;
  *(v3 + 3464) = *v2;
  LODWORD(STACK[0x7AC]) = v4 + 4;
  return (*(a1 + 8 * (((((v5 == 0) ^ (a2 - 24)) & 1) * (a2 - 18608)) ^ a2)))();
}

uint64_t sub_1000C5E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = v34 & 0xA5055FFB;
  v38 = (v34 & 0xA5055FFB) - 1660727147;
  v40 = (*(a8 + 8 * ((v34 & 0xA5055FFB) + 12203)))(8);
  *(v35 + 3472) = v40;
  *(*(v35 + 3464) + 48) = v40;
  LODWORD(STACK[0x7AC]) = v36 + 2;
  return (*(a34 + 8 * (((((v38 ^ (v40 == 0)) & 1) == 0) * (v37 ^ 0x1AB5)) ^ v37)))(a1);
}

uint64_t sub_1000C5EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(v9 - 0x5549DA8D86355C24);
  *(v10 + 3480) = v12;
  LODWORD(v12) = *(v12 + 200) != ((((v8 ^ 0x15) - 46) | 0x2A) + 70);
  LODWORD(STACK[0x7A8]) = v11;
  return (*(a8 + 8 * ((439 * v12) ^ v8 ^ 0x3615)))();
}

uint64_t sub_1000C5F04@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = *(*(v2 + 3480) + 224);
  *(v2 + 3488) = v4;
  LODWORD(STACK[0x7A8]) = v3 + 34;
  return (*(a1 + 8 * (((((v4 == 0) ^ (((a2 + 82) | 0x41) - 82)) & 1) * ((2 * ((a2 + 6482) | 0x41)) ^ 0x8CA4)) ^ ((a2 + 6482) | 0x41))))();
}

uint64_t sub_1000C5F6C@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v29 = a2 & 0x98D97A7B;
  LODWORD(STACK[0xF04]) = *(v28[435] + 204);
  v30 = (*(a1 + 8 * (a2 & 0x98D97A7B ^ 0x500E)))(0, &STACK[0x5E0], &STACK[0x668], &STACK[0x5F4], &STACK[0x588], &STACK[0x6A4]);
  v31 = v30 - (((v29 ^ 0x3517) + 1458477184) & (2 * v30)) - 1418238986;
  v32 = v28[162];
  v28[438] = v32;
  v28[200] = v32;
  LODWORD(STACK[0x7A4]) = v31;
  return (*(a28 + 8 * ((246 * (v31 != v29 - 1418245765)) ^ v29)))();
}

uint64_t sub_1000C6020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = v35[434] + 0x2247C47638163C1DLL;
  v38 = v35[145];
  v39 = STACK[0x5F4];
  v40 = (LODWORD(STACK[0xF04]) ^ 0x2FB53F7F) - 800407423 + ((LODWORD(STACK[0xF04]) << ((-37 * (v34 ^ 0x89)) ^ 0x6D)) & 0x5F6A7EFEu);
  v41 = v35[436];
  v42 = 1912505411 * ((v36 - 168 - 2 * ((v36 - 168) & 0xD3071563C9EAFC1CLL) - 0x2CF8EA9C361503E4) ^ 0x255B6E1037118FE4);
  STACK[0x27F8] = v35[438];
  STACK[0x2810] = v42 + (v38 ^ 0xEDBF9FF97EBFFBF3) + ((2 * v38) & 0xDB7F3FF2FD7FF7E6) + 0x1EEF686EC56EA77FLL;
  STACK[0x2818] = v41;
  STACK[0x2828] = v37;
  STACK[0x2800] = v42 + v40 + (~(2 * v40) | 0xFFFFFFFF60FC5025) - 0x76F0E7E0B07E2812;
  *(v36 - 112) = v34 - v42 - 3336;
  *(v36 - 128) = v42 + v39 - 1240130101 - ((2 * v39) & 0x6C2A3B96);
  v43 = (*(a8 + 8 * (v34 + 12305)))(v36 - 168);
  v44 = *(v36 - 152);
  v35[200] = v35[162];
  LODWORD(STACK[0x7A4]) = v44;
  return (*(a34 + 8 * v34))(v43);
}

uint64_t sub_1000C61C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = STACK[0x7A4];
  LODWORD(STACK[0xF14]) = STACK[0x7A4];
  v12 = *(v10 + 1600);
  *(v10 + 3520) = v12;
  LODWORD(STACK[0x7A8]) = v11;
  return (*(a8 + 8 * (((v12 == 0) * (((v8 ^ 0x1D6) - 508) ^ 0x2CA7)) ^ v8)))(v9);
}

uint64_t sub_1000C6210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v34 + 7570)))(*(v36 + 3520));
  *(v36 + 1296) = 0;
  LODWORD(STACK[0x7A8]) = STACK[0xF14];
  return (*(a34 + 8 * v34))(v35);
}

uint64_t sub_1000C624C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x7A8];
  LODWORD(STACK[0xF24]) = STACK[0x7A8];
  v11 = *(v9 + 1072);
  *(v9 + 3536) = v11;
  LODWORD(STACK[0x7AC]) = v10;
  return (*(a8 + 8 * (((v11 == 0) * ((v8 ^ 0x25D1) - 2917)) ^ v8)))();
}

uint64_t sub_1000C62A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v34 + 16101)))(*(v36 + 3536));
  LODWORD(STACK[0x7AC]) = STACK[0xF24];
  return (*(a34 + 8 * v34))(v35);
}

uint64_t sub_1000C62FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v9;
  *(v10 + 3304) = *v9;
  LODWORD(STACK[0x7AC]) = v11 + 4;
  return (*(a8 + 8 * ((((((v8 - 49586262) & 0x9FF7EFC6) + 1660733537) ^ 0x33B7) * (v12 == 0)) ^ v8)))();
}

uint64_t sub_1000C6358@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = *(*(v3 + 3304) + 48);
  *(v3 + 3312) = v4;
  LODWORD(STACK[0x7AC]) = -1418238986;
  return (*(a1 + 8 * (((v4 != 0) * ((a2 + ((v2 - 545571793) ^ 0xDF7B5671) - 3817) ^ (v2 - 545571793) & 0xBD87FB6F)) ^ v2)))();
}

uint64_t sub_1000C63BC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = a2 - 3826;
  v5 = v3[414];
  v3[415] = v5;
  v6 = *v5;
  v3[416] = v6;
  return (*(a1 + 8 * (((v6 == 0x6BBFEBF589A7D72FLL) * (((v2 - 1878680664) & 0x6FFA3EFF ^ 0x62FC8090) + v4)) ^ v2)))();
}

uint64_t sub_1000C6424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v9[416] - 0x6BBFEBF589A7D727);
  v9[417] = v10;
  v11 = *v10 - 0xCAF0868442EA372;
  v9[418] = v11;
  return (*(a8 + 8 * ((41 * (v11 != 103 * (v8 ^ 0x1422) - 11021)) ^ v8)))();
}

uint64_t sub_1000C64C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  **(v9 + 3336) = 0xCAF0868442EA372;
  v10 = (*(v9 + 3328) - 0x6BBFEBF589A7D6FFLL);
  *(v9 + 3352) = v10;
  v11 = *v10;
  *(v9 + 3360) = v11;
  return (*(a8 + 8 * (((v11 != 0) * (v8 ^ 0x2B13)) ^ v8)))();
}

uint64_t sub_1000C6530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 ^ 0x615E)))(*(v35 + 3360));
  **(v35 + 3352) = 0;
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000C6564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v9[416] - 0x6BBFEBF589A7D71FLL);
  v9[421] = v10;
  v11 = *v10;
  v9[422] = *v10;
  return (*(a8 + 8 * (((v11 == 0) * (v8 - 27710 + ((v8 + 1057631646) & 0xC0F5EA7F))) ^ v8)))();
}

uint64_t sub_1000C65D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 ^ 0x4D16)))(*(v35 + 3376));
  **(v35 + 3368) = 0;
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000C6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v9[416] - 0x6BBFEBF589A7D70FLL);
  v9[423] = v10;
  v11 = *v10;
  v9[424] = *v10;
  return (*(a8 + 8 * (((2 * ((((((v8 - 4694) | 0x3A2) - 2088) ^ (v11 == 0)) & 1) == 0)) & 0xF7 | (8 * (((((v8 - 86) | 0xA2) - 40) ^ ~(v11 == 0)) & 1))) ^ v8)))();
}

uint64_t sub_1000C6670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (*(a8 + 8 * (v34 ^ 0x79F1)))(*(v35 + 3392));
  **(v35 + 3384) = 0;
  return (*(a34 + 8 * v34))(v36);
}

uint64_t sub_1000C674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  **(v11 + 3320) = 0;
  LODWORD(STACK[0x7AC]) = v8;
  return (*(a8 + 8 * v9))(v10);
}

uint64_t sub_1000C6780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[425] = &STACK[0x400];
  v10[85] = 0;
  v10[426] = &STACK[0x3D0];
  v10[79] = 0x4EEEA48CEECB9D00;
  v12 = *v9;
  v10[427] = *v9;
  LODWORD(STACK[0x7AC]) = v11 + 4;
  return (*(a8 + 8 * (((v12 != 0) * (((v8 - 577257566) & 0xBF6B6FC6) + 1660720332)) ^ v8)))();
}

uint64_t sub_1000C6800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = (v34 - 13783) | 0x41;
  v39 = v35[319];
  v40 = v35[320];
  v41 = *(a8 + 8 * v38);
  v42 = 53688491 * ((2 * ((v37 - 168) & 0x6D850519B856B190) - (v37 - 168) + 0x127AFAE647A94E6FLL) ^ 0xBA9EBFDDF1B096B9);
  a2[691] = **(v35[427] + 48);
  *(v37 - 168) = v42 - 161464876 + v38;
  a2[688] = v40;
  a2[692] = v41 - v42;
  a2[689] = v39;
  (*(a8 + 8 * (v38 + 17453)))(v37 - 168);
  v44 = *(v37 - 144);
  LODWORD(STACK[0x7AC]) = v44;
  return (*(a34 + 8 * (v38 ^ 0x1CEA ^ (10283 * (v44 == ((v38 - 1660721921) ^ (v36 + 1955) ^ 0xAB777A52))))))(a1);
}

uint64_t sub_1000C6928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 3424) = v9 + 32;
  v13 = **(v10 + 3400);
  *(v10 + 3432) = v13;
  v14 = **(v10 + 3408);
  LODWORD(STACK[0xECC]) = v14;
  LODWORD(STACK[0x7AC]) = v12;
  if (v13)
  {
    v15 = v14 == -288645888;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  return (*(a8 + 8 * ((v16 * ((v11 + (v8 ^ 0x19A0) - 5) ^ (v11 - 29))) ^ v8)))();
}

uint64_t sub_1000C698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 200);
  *(v10 + 3448) = v9 + 200;
  LOBYTE(STACK[0xEDF]) = v11;
  return (*(a8 + 8 * (v8 ^ 0xDA4 ^ (5373 * (((((v11 | v8) - v11) | (v8 | ~v11) & (v11 - v8)) >> (((v8 + 60) | 0x82) + 69)) & 1)))))();
}

uint64_t sub_1000C6A08@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v5 = v2 - v3 - 55;
  v6 = LOBYTE(STACK[0xEDF]);
  v7 = *(v4 + 3424) + 168;
  *(v7 + 8 * v6 + 24) = *(v4 + 3432);
  *(v7 + 4 * v6 + 4) = LODWORD(STACK[0xECC]) ^ a2;
  **(v4 + 3448) = v5 + v6 - 63;
  LODWORD(STACK[0x7AC]) = -1418238986;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_1000C6AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *STACK[0xBB8] = *(*(v36 + 8 * (v37 + 1660720401)) - 1693807422) & 1 ^ 0x19;
  *STACK[0xBB0] = ((17 * (v37 ^ (v38 - 283))) ^ STACK[0xB78] ^ 0xCCEF187CF7AFB4B8) + ((2 * STACK[0xB78]) & 0x99DE30F9EF5F46FCLL) + 0x3FBFEFEB4C7EFFF4;
  *(v40 - 168) = v37 + 2054851651 * (((v40 - 168) & 0x498B536E | ~((v40 - 168) | 0x498B536E)) ^ 0x3ADA03B7) + 1660734607;
  (*(a8 + 8 * (v37 ^ (v35 + 2))))(v40 - 168);
  STACK[0x528] = STACK[0x2800] ^ 0x607970C8F5698427;
  STACK[0x7C0] = 4496;
  LODWORD(STACK[0x7CC]) = STACK[0xB84];
  STACK[0x7D0] = STACK[0xB90];
  STACK[0x7D8] = STACK[0xB88];
  STACK[0x7E8] = &STACK[0x528];
  LODWORD(STACK[0x7F4]) = v37 + 1660720369;
  STACK[0x7F8] = &STACK[0x4C0];
  LODWORD(STACK[0x800]) = v34 - 8;
  return (*(a34 + 8 * ((v37 + 1660720369) ^ 0x8D5)))(v39);
}

uint64_t sub_1000C6C80@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4[451] = v2;
  LODWORD(STACK[0xF7C]) = STACK[0x800];
  v4[453] = v4[212];
  v6 = SLODWORD(STACK[0x7F4]);
  v4[454] = v4[210];
  v4[455] = v4[209];
  v4[456] = v4[208];
  v4[457] = v4[207];
  LODWORD(STACK[0xFAC]) = STACK[0x7CC];
  v4[459] = v4[205];
  v7 = *(a2 - 0x6BBFEBF589A7D727);
  v4[460] = v7;
  v4[461] = *(a1 + 8 * v6);
  LODWORD(STACK[0x80C]) = v5;
  return (*(a1 + 8 * (((v7 == ((v3 - 1660726406) ^ 0xCAF0868D92DC832)) * ((v3 - 3975) ^ 0x810)) ^ v3)))();
}

uint64_t sub_1000C6D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *(v36 + 1320) = 0;
  v37 = *(v36 + 3680);
  v38 = (*(a8 + 8 * (v34 + 16929)))(0, STACK[0xF88], LODWORD(STACK[0xF7C]) ^ 0xB6151DCB);
  STACK[0xFC8] = v38;
  v39 = (*(a34 + 8 * (v34 + 16963)))(v37 - 0xCAF0868442EA372, *(*(v35 + 8 * (v34 - 1934)) - 1248676830), v38, &STACK[0x680]);
  STACK[0xFD0] = v39;
  LODWORD(STACK[0x808]) = 1418211939;
  return (*(a34 + 8 * (((v39 == 0) * ((v34 ^ 0x83A) - 4151 + 853 * (v34 ^ 0x83A))) ^ v34)))();
}

uint64_t sub_1000C6E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = (*(a8 + 8 * (v34 ^ 0x5AD7)))(v35[463]);
  v38 = v34 - 1240137170 + v37 - ((2 * v37) & 0x6C2A3B96) + 2804;
  LODWORD(STACK[0xFDC]) = v38;
  v35[465] = v38 ^ 0xB6151DCB;
  v39 = (*(a34 + 8 * (v34 ^ 0x5AFF)))();
  v35[466] = v39;
  LODWORD(STACK[0x804]) = v36 + 1474;
  return (*(a34 + 8 * (((v39 == 0) * (((v34 - 4201) | 0x808) - 2019)) ^ v34)))();
}

uint64_t sub_1000C6ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v39 = *(v37 + 3720);
  v40 = *(v34 + 8 * v36);
  v41 = ((((v38 - 168) | 0x7B83B4B74DD899E5) - ((v38 - 168) & 0x7B83B4B74DD899E5)) ^ 0xF947AF69182BC672) * v35;
  *(v38 - 168) = v36 - v41 + 1224120629;
  STACK[0x2810] = 0x6BADB5983AE0A23DLL - v41;
  STACK[0x2800] = v40 + v41;
  STACK[0x2808] = v41 + v39 - ((v39 << (v36 ^ 0x2Bu)) & 0x175C08776) - 0x2050EDED451FBC45;
  (*(v34 + 8 * (v36 ^ 0x4CA3)))(v38 - 168);
  v42 = *(v37 + 3728);
  v43 = (*(a34 + 8 * (v36 ^ 0x4C48)))(*(v37 + 3704), STACK[0x2818], STACK[0x2820], v42);
  **(v37 + 3624) = v42;
  **(v37 + 3608) = STACK[0xFDC];
  LODWORD(STACK[0x804]) = -1418238986;
  return (*(a34 + 8 * (v36 ^ 0x16E6)))(v43);
}

uint64_t sub_1000C700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = STACK[0x804];
  v38 = (*(v34 + 8 * (v35 + 16932)))(*(v36 + 3704));
  LODWORD(STACK[0x808]) = v37;
  return (*(a34 + 8 * v35))(v38);
}

uint64_t sub_1000C7054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = STACK[0x808];
  LODWORD(STACK[0xFF0]) = STACK[0x808];
  v12 = *(v9 + 3696) == 0;
  LODWORD(STACK[0x80C]) = v11;
  return (*(a8 + 8 * ((v12 * ((v8 - 1660734388) ^ (v8 - 1660734393))) ^ v8)))(v10);
}

uint64_t sub_1000C70C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v34 ^ 0x5D85)))(*(v35 + 3696));
  LODWORD(STACK[0x80C]) = STACK[0xFF0];
  return (*(a34 + 8 * v34))(a1);
}

uint64_t sub_1000C7180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[186] = v10[459];
  v11 = v10[456];
  v10[191] = v11;
  LODWORD(STACK[0x758]) = STACK[0xFAC];
  return (*(a8 + 8 * v8))(v11, (v9 + 1));
}

uint64_t sub_1000C71CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32)
{
  v34 = LODWORD(STACK[0xFF4]) == ((6232 * (a32 ^ (v33 + 1))) ^ (v32 + 3291)) + a32 + 1660729429;
  LODWORD(STACK[0x794]) = STACK[0xFF4];
  return (*(a8 + 8 * ((12038 * v34) ^ (a32 + 1660722393))))();
}

uint64_t sub_1000C7234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(v9 + 3640) - 0x6BBFEBF589A7D703);
  v11 = *v10;
  *(v9 + 1408) = v10;
  return (*(a8 + 8 * (((v11 == ((v8 + 57) ^ 0xF1)) * ((3 * (v8 ^ 0x3203)) ^ 0x86E)) ^ v8)))();
}

uint64_t sub_1000C7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = (*(a8 + 8 * (v34 + 16957)))(16);
  *(v35 + 3224) = v38;
  LODWORD(STACK[0x794]) = v36 + 2;
  return (*(a34 + 8 * ((((((v34 ^ 0x94) + 8) ^ (v38 == 0)) & 1) * ((2 * (v34 ^ 0x394)) ^ 0x1736)) ^ v34)))(a1);
}

uint64_t sub_1000C7310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[403];
  v11 = v10 + 0xAB5C364D9808152;
  *v10 = 0x4761F68478C333F5;
  v10[1] = 0x4761F68478C333F5;
  v9[138] = v10 + 0xAB5C364D9808152;
  v12 = v9[127];
  v13 = STACK[0x614];
  v9[175] = v11;
  LODWORD(STACK[0x534]) = -905392885;
  v9[117] = v12;
  LODWORD(STACK[0x494]) = v13;
  LODWORD(STACK[0x610]) = 268445162;
  LODWORD(STACK[0x9DC]) = v13;
  v9[273] = v12;
  LODWORD(STACK[0x9EC]) = -905392885;
  v9[275] = v11;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000C73BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a7 + 8 * ((397 * (a8 ^ 0x5F8) - 1992) ^ a8));
  *(v14 + 2104) = *(v14 + 3672);
  return v15(v15, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, unint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32, unint64_t a33)
{
  STACK[0x3A0] = a33;
  STACK[0x3A8] = a28;
  LODWORD(STACK[0x24C]) = v37;
  STACK[0x298] = v38;
  LODWORD(STACK[0x2A0]) = v39;
  LODWORD(STACK[0x2A4]) = v41;
  STACK[0x220] = a32;
  LODWORD(STACK[0x234]) = a27;
  LODWORD(STACK[0x22C]) = v42;
  LODWORD(STACK[0x230]) = v40;
  STACK[0x238] = a18;
  STACK[0x240] = a11;
  LODWORD(STACK[0x3B0]) = v36;
  STACK[0x288] = v34;
  LODWORD(STACK[0x250]) = v33;
  LODWORD(STACK[0x3B4]) = v33;
  LODWORD(STACK[0x294]) = v33;
  return (*(a8 + 8 * (v35 ^ 0xC31C602B ^ (2482 * (v35 >= ((v35 + 1021560841) | 0x100) + 1750915237)))))(a22, 0xE6763EB6C68C2EBALL, a3, 2161025909, 21552897);
}

uint64_t sub_1000C7548@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61)
{
  *(v62 + 168) = *(v62 + 352);
  LODWORD(STACK[0x20C]) = a61;
  return (*(a1 + 8 * (((((a2 + 201528804) | 0x91004840) ^ 0x9D032299) * (a61 == v61)) ^ a2)))();
}

uint64_t sub_1000C75D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  *(v39 + 168) = *(v39 + 352);
  LODWORD(STACK[0x20C]) = a36;
  return (*(a8 + 8 * (((a36 == v38) * (365 * (v37 ^ 0x9D036B47) + 1710)) ^ (v36 + v37 + 46))))();
}

uint64_t sub_1000C7654@<X0>(int a1@<W3>, int a2@<W4>, uint64_t a3@<X7>, int a4@<W8>)
{
  v9 = *(v7 + v6) + a1 - ((2 * *(v7 + v6)) & 0x19D46EA);
  LODWORD(STACK[0x254]) = v4;
  LODWORD(STACK[0x258]) = a4;
  LODWORD(STACK[0x25C]) = v9;
  v10 = *(a3 + 8 * v4);
  v11 = v8[43] == 0;
  LODWORD(STACK[0x260]) = a2;
  LOWORD(STACK[0x266]) = -1562;
  LODWORD(STACK[0x268]) = v9;
  LODWORD(STACK[0x26C]) = 2030198426;
  v8[35] = 0;
  v8[36] = v10;
  LODWORD(STACK[0x284]) = a4;
  v8[38] = v10;
  LODWORD(STACK[0x294]) = 1418211936;
  return (*(a3 + 8 * ((v11 * ((22 * (v5 ^ 0x9D036BB2)) ^ 0x706F)) ^ (v5 + 1660731895))))();
}

uint64_t sub_1000C7700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x260];
  v67 = LODWORD(STACK[0x260]) - 21552893;
  v68 = STACK[0x284];
  if (v65[43])
  {
    v69 = v67 >= 2777 * (v64 ^ 0x14CFu) - 8341;
  }

  else
  {
    v69 = 1;
  }

  v70 = !v69;
  v76 = v65[36];
  v77 = v65[35];
  LODWORD(STACK[0x3B8]) = STACK[0x26C];
  v71 = STACK[0x268];
  v72 = LOWORD(STACK[0x266]);
  LOWORD(STACK[0x3BE]) = v72;
  HIBYTE(a51) = v70;
  LODWORD(STACK[0x3C0]) = v66 + 397707883;
  v73 = v72 - ((2 * v72 + 6946) & 0x1D2E) + 11304;
  v80 = v67 + 10;
  LODWORD(v79) = v68 - ((2 * v68 + 331877578) & 0x78E85B98) + 1180185649;
  v74 = 2 * v66 + 2104377862;
  LOBYTE(STACK[0x3C6]) = HIBYTE(v73);
  LOBYTE(STACK[0x3C7]) = v73;
  HIDWORD(v79) = v66 - (v74 & 0x78E85B98) - 1154789681;
  HIBYTE(a55) = v66 == a5;
  LODWORD(v78) = v71 ^ 0x3CBA8EB9;
  HIDWORD(v78) = ((v66 - (v74 & 0x4EAF30BA) - 1508984480) ^ 0xD5A8632E) - 805442338 + ((2 * (v66 - (v74 & 0x4EAF30BA) - 1508984480)) & 0xE5FFF6E6 ^ 0x44AF30A2);
  HIDWORD(a36) = v68 - 1981544859;
  HIDWORD(a21) = 907353567;
  return (*(a8 + 8 * v64))(v72, 7470, a3, 2028493720, a5, a6, a7, a8, a9, a60, STACK[0x240], a64, a63, a62, a59, a56, a17, STACK[0x238], a57, a20, a21, a22, a58, v65[2], *v65, a26, LODWORD(STACK[0x234]), v65[74], a44, a40, a31, v65[25], v65[73], a34, a35, a36, v76, v77, v78, a40, v79, a42, a43, a44, v80, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1000C7A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *a33 = 0x4761F68478C333F5;
  *(a33 + 8) = 0x4761F68478C333F5;
  *(a33 + 16) = STACK[0x3C0];
  v46 = (*(a8 + 8 * (v45 + 13705)))(a45);
  *(a33 + 24) = v46;
  return (*(a34 + 8 * (v45 ^ (2 * ((((v45 + 8577) ^ (v46 == 0)) & 1) == 0)))))(v46, v47, 1660725940, v48, v49, v50, v51, a34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a33 + 8, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1000C7C04(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v11;
  v14 = *v11 + 4;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = (0xD4F4E5F14C1EA78 - v15) & 0x4CD81EFE8FE3B1B9 | (v15 + v10) & 0xB327E101701C4E46;
  v17 = v16 ^ 0x189F288B139DDC92;
  v16 ^= 0x8D1AA58C4A6D70A9;
  v18 = (__ROR8__(v17, 8) + v16) ^ v12;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a7;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a4;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0x92E4A3411F6E8015 - (v24 + v23) + ((2 * (v24 + v23)) & 0xDA36B97DC122FFD4)) ^ 0x12478B359CDA47DCLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a5;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x97F56CB0FB361A73;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  *(v13 + 4) = v8 ^ (((0xCB780470BF1608E0 - (v31 + v30) + ((2 * (v31 + v30)) & 0x690FF71E81D3EE3ELL)) ^ 0x33612E0554EEFA7ELL) >> (8 * (v14 & 7u)));
  v32 = __ROR8__((v13 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = ((2 * (v32 + v10)) | 0x587B403F710B33CALL) - (v32 + v10) - 0x2C3DA01FB88599E5;
  v34 = v33 ^ 0x787A966A24FBF4CELL;
  v33 ^= 0xEDFF1B6D7D0B58F5;
  v35 = __ROR8__(v34, 8);
  v36 = __ROR8__((v35 + v33 - 0x256A85BF10A095C3 - ((2 * (v35 + v33)) & 0xB52AF481DEBED47ALL)) ^ 0xABE6E57774A6E5E4, 8);
  v37 = (v35 + v33 - 0x256A85BF10A095C3 - ((2 * (v35 + v33)) & 0xB52AF481DEBED47ALL)) ^ 0xABE6E57774A6E5E4 ^ __ROR8__(v33, 61);
  v38 = (0xB7E05D65A04B551FLL - (v36 + v37) + ((2 * (v36 + v37)) & 0x903F4534BF6955C0)) ^ 0xC93A4DBD48F6B16ALL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (0x51E7C05FB37FA406 - (v40 + v39) + ((2 * (v40 + v39)) & 0x5C307F409900B7F2)) ^ 0x9AF8115ABA65D1A0;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ a6;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (0x5E4EF690E20CD2B0 - ((v45 + v44) ^ 0xEF0BBF44D834E002 | 0x5E4EF690E20CD2B0) + ((v45 + v44) ^ 0xEF0BBF44D834E002 | 0xA1B1096F1DF32D4FLL)) ^ 0xCBD8739B38E1DC36;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x97F56CB0FB361A73;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  *(v13 + 5) = v9 ^ (((0x6364763FED754C16 - (v50 + v49) + ((2 * (v50 + v49)) | 0x39371380251567D4)) ^ 0x6482A3B5F9724174) >> (8 * ((v13 + 5) & 7)));
  return (*(a8 + 8 * (a2 + 1660737364)))();
}

uint64_t sub_1000C8008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *v9 + v11 - 0x2FC92220EDE8F7EBLL;
  v17 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = ((v17 + v8) | 0x4473AF4093FD868BLL) - ((v17 + v8) | 0xBB8C50BF6C027974) - 0x4473AF4093FD868CLL;
  v19 = __ROR8__(v18 ^ 0x103499350F83EBA0, 8);
  v18 ^= 0x85B114325673479BLL;
  v20 = (v19 + v18) ^ v10;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0xF8065C5468770AD6 - ((v22 + v21) | 0xF8065C5468770AD6) + ((v22 + v21) | 0x7F9A3AB9788F529)) ^ 0x7923B3737F35115CLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a4;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - 0x4FE740C0E8350C19 - ((2 * (v27 + v26)) & 0x60317E7E2F95E7CELL)) ^ 0x30BB974B947E342ELL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a5;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = *(a8 + 8 * v13);
  v33 = (__ROR8__(v30, 8) + v31) ^ 0x97F56CB0FB361A73;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  LOBYTE(v33) = (((0x5C47E569B8209F6FLL - ((v35 + v34) ^ 0x43F178B4D98B7452) + ((2 * ((v35 + v34) ^ 0x43F178B4D98B7452)) | 0x4770352C8FBEC122)) ^ 0x1850485775ACE65DLL) >> (8 * ((*v9 + v11 + 21) & 7))) ^ HIBYTE(v12) ^ 0xBC;
  v36 = __ROR8__((v16 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *v16 = v33;
  v37 = ((2 * ((v36 + v8) ^ 0x66E9636B7B522E08)) | 0x9198600C55AE5EBCLL) - ((v36 + v8) ^ 0x66E9636B7B522E08) + 0x3733CFF9D528D0A2;
  v38 = v37 ^ 0xFA626518CDFB6C7DLL;
  v37 ^= 0x6FE7E81F940BC046uLL;
  v39 = (__ROR8__(v38, 8) + v37) ^ 0x71739F379BF98FD9;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a7;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ a4;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a6;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (0xD242A46650F1DAF8 - (v47 + v46) + ((2 * (v47 + v46)) & 0x5B7AB7335E1C4A0ELL)) ^ 0x572061D6ADD7CB83;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x97F56CB0FB361A73;
  *(v16 + 1) = (((__ROR8__(v50, 8) + (v50 ^ __ROR8__(v49, 61))) ^ v14) >> (8 * ((v16 + 1) & 7))) ^ BYTE2(v12) ^ 0x74;
  v51 = __ROR8__((v16 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v52 = ((2 * (v51 + v8)) | 0xD26D64F9B5F9A13CLL) - (v51 + v8) - 0x6936B27CDAFCD09ELL;
  v53 = v52 ^ 0x3D7184094682BDB5;
  v52 ^= 0xA8F4090E1F72118ELL;
  v54 = __ROR8__(v53, 8);
  v55 = (0x106BA8B4217F8315 - ((v54 + v52) | 0x106BA8B4217F8315) + ((v54 + v52) | 0xEF94574BDE807CEALL)) ^ 0x9EE7C87C4579F333;
  v56 = v55 ^ __ROR8__(v52, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ a7;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ a4;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (v61 + v60 - 0x76252B40886E233 - ((2 * (v61 + v60)) & 0xF13B5A97EEF23B9ALL)) ^ 0x783E853F74CDDA04;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = __ROR8__((v64 + v63 + 0x694644E99B287D1BLL - ((2 * (v64 + v63)) & 0xD28C89D33650FA36)) ^ 0xEC248159660E6C60, 8);
  v66 = (v64 + v63 + 0x694644E99B287D1BLL - ((2 * (v64 + v63)) & 0xD28C89D33650FA36)) ^ 0xEC248159660E6C60 ^ __ROR8__(v63, 61);
  *(v16 + 2) = (((__ROR8__((v65 + v66) ^ 0x97F56CB0FB361A73, 8) + ((v65 + v66) ^ 0x97F56CB0FB361A73 ^ __ROR8__(v66, 61))) ^ v14) >> (8 * ((v16 + 2) & 7))) ^ BYTE1(v12) ^ 0x2D;
  v67 = __ROR8__((v16 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = v67 - 0x2252134E29FD63EALL - ((v15 + 2 * v67) & 0xD5FA7621D5890D1ELL);
  v69 = __ROR8__(v68 ^ 0x3EBA0D6576BAEBA4, 8);
  v68 ^= 0xAB3F80622F4A479FLL;
  v70 = (v69 + v68) ^ 0x71739F379BF98FD9;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((v72 + v71) & 0xF13D7081F999AACFLL ^ 0xD1247000C089A841) + ((v72 + v71) & 0xEC28F7E06665530 ^ 0xC028C4806265401) - 1) ^ 0xA3FCEC902E121834;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = __ROR8__((v75 + v74 - 0x46808B34CA7F9267 - ((2 * (v75 + v74)) & 0x72FEE9966B00DB32)) ^ 0x7260A5CE3C9A183FLL, 8);
  v77 = (v75 + v74 - 0x46808B34CA7F9267 - ((2 * (v75 + v74)) & 0x72FEE9966B00DB32)) ^ 0x7260A5CE3C9A183FLL ^ __ROR8__(v74, 61);
  v78 = (0x3206BC59DCA26A08 - (v76 + v77) + ((2 * (v76 + v77)) | 0x9BF2874C46BB2BF0)) ^ 0x4D5A6BD2A0E95231;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (0x1C128E40BBB76A6FLL - (v80 + v79) + ((2 * (v80 + v79)) | 0xC7DAE37E88912B22)) ^ 0x668FB40FB96E84EALL;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v84 = __ROR8__((0xCBE46B61C11D82E1 - (v83 + v82) + ((2 * (v83 + v82)) | 0x6837293C7DC4FA3ELL)) ^ 0xA3EEF82EC5D4676CLL, 8) + ((0xCBE46B61C11D82E1 - (v83 + v82) + ((2 * (v83 + v82)) | 0x6837293C7DC4FA3ELL)) ^ 0xA3EEF82EC5D4676CLL ^ __ROR8__(v82, 61));
  *(v16 + 3) = v12 ^ (((0xCB3A8F808CEFA77ELL - v84 + ((2 * v84) | 0x698AE0FEE620B104)) ^ 0xCCDC5A0A98E8AA1CLL) >> (8 * ((v16 + 3) & 7))) ^ 0xCC;
  return v32();
}

uint64_t sub_1000C89FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v32 = (a28 - 1);
  v33 = v32 == 1123936337;
  v34 = v32 + 0x1A75363BA9CA5E5ELL + ((v32 < 0x42FDE851) << 32) - 0x1A75363BECC846A5;
  v35 = __ROR8__((a25 + v34) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = v35 + 0x49F217A4F9DC77EALL - ((v31 + 2 * v35) & 0xA682CC081D3CC4C6);
  v37 = __ROR8__(v36 ^ 0x8306507192E00F48, 8);
  v36 ^= 0x1683DD76CB10A373uLL;
  v38 = (v37 + v36) ^ v30;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a1;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v29;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - 0x749ECA04E14DC30ALL - ((2 * (v44 + v43)) & 0x16C26BF63D6479ECLL)) ^ 0xBC21D8F9D06FB3FLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (v47 + v46 + 0x18BB50288A5F0387 - ((2 * (v47 + v46)) & 0x3176A05114BE070ELL)) ^ 0x9DD99598777912FCLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (0x18B00994D11F56C6 - ((v50 + v49) ^ 0xDCDF26E10C788B9CLL) + ((2 * ((v50 + v49) ^ 0xDCDF26E10C788B9CLL)) | 0xCE9FECD65DC15274)) ^ 0xAC65BC3AD9AE38D5;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  *(a25 + v34) = (((0x8C30D8C4A41F6AE4 - ((v53 + v52) | 0x8C30D8C4A41F6AE4) + ((v53 + v52) | 0x73CF273B5BE0951BLL)) ^ 0x8BD60D4EB0186785) >> (8 * ((a25 + v34) & 7))) ^ *(v34 + v28 - 10);
  v54 = !v33;
  return (*(a8 + 8 * ((63 * v54) ^ (a9 + 606))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1000C8DAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  v26 = *(v22 - 0x4761F68478C333DDLL);
  v27 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = v27 + 0x5E8BF54219479CF0 - (((v27 << (((a2 + a7 - 54) ^ 0xAE) + a7 - 79)) + v25) & 0xD7B687425C130ED2);
  v29 = v28 ^ 0xBF9C75D4B277EA42;
  v28 ^= 0x2A19F8D3EB874679uLL;
  v30 = (__ROR8__(v29, 8) + v28) ^ v24;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (0x995B8213116B44B3 - ((v32 + v31) ^ 0xA9ABE765327C02E1 | 0x995B8213116B44B3) + ((v32 + v31) ^ 0xA9ABE765327C02E1 | 0x66A47DECEE94BB4CLL)) ^ 0xB1D58A5134555DD8;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (0xB83062AC343334AALL - (v35 + v34) + ((2 * (v35 + v34)) | 0x8F9F3AA7979996ACLL)) ^ 0x8CD04C56C2D6BEF0;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (0x517301251C7576FBLL - (v38 + v37) + ((2 * (v38 + v37)) | 0x5D19FDB5C715120ALL)) ^ 0x2E2FD6AE603E4ECCLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a3;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x97F56CB0FB361A73;
  v44 = __ROR8__((v26 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = -2 - (((0x8D4F4E5F14C1EA78 - v44) | 0x70B9FD8A439F9F18) + ((v44 + a5) | 0x8F460275BC6060E7));
  v46 = __ROR8__(v45 ^ 0x24FECBFFDFE1F233, 8);
  v45 ^= 0xB17B46F886115E08;
  v47 = (v46 + v45) ^ v24;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (0x19917B79A964598ELL - ((v49 + v48) | 0x19917B79A964598ELL) + ((v49 + v48) | 0xE66E8486569BA671)) ^ 0x98B4945EBE264204;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ a1;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ a4;
  v55 = __ROR8__(v54, 8);
  v56 = v54 ^ __ROR8__(v53, 61);
  v57 = (0x886F0BCD8764122FLL - (v55 + v56) + ((2 * (v55 + v56)) | 0xEF21E864F137DBA2)) ^ 0xF2F2318285BDFCAALL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (0x5E5892AF0CF95A2CLL - (v59 + v58) + ((2 * (v59 + v58)) & 0x434EDAA1E60D4BA6)) ^ 0xC9ADFE1FF7CF405FLL;
  v61 = __ROR8__((v26 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = (((((__ROR8__(v60, 8) + (v60 ^ __ROR8__(v58, 61))) ^ v23) >> (8 * ((v26 + 1) & 7))) ^ *(v26 + 1)) << 16) | (((((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ v23) >> (8 * (v26 & 7u))) ^ *v26) << 24);
  v63 = ((2 * (v61 + a5)) | 0xE7D352924E9D8982) - (v61 + a5) + 0xC1656B6D8B13B3FLL;
  v64 = v63 ^ 0xA7AE9F3CBB30A9EALL;
  v63 ^= 0x322B123BE2C005D1uLL;
  v65 = __ROR8__(v64, 8);
  v66 = (0xF8B28AAEE8D50531 - (v65 + v63) + ((2 * (v65 + v63)) | 0xE9AEAA22E55F59ELL)) ^ 0x763EEA668CD37516;
  v67 = v66 ^ __ROR8__(v63, 61);
  v68 = __ROR8__(v66, 8);
  v69 = __ROR8__((0x851BE4A164DEB464 - (v68 + v67) + ((2 * (v68 + v67)) | 0xF5C836BD36429738)) ^ 0x43E0B86739CAFE9, 8);
  v70 = (0x851BE4A164DEB464 - (v68 + v67) + ((2 * (v68 + v67)) | 0xF5C836BD36429738)) ^ 0x43E0B86739CAFE9 ^ __ROR8__(v67, 61);
  v71 = (0x33F0F3581F53F1CALL - ((v69 + v70) | 0x33F0F3581F53F1CALL) + ((v69 + v70) | 0xCC0F0CA7E0AC0E35)) ^ 0x710DDA2E9B67B93;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  v74 = __ROR8__((0xAB7263B5897B05FDLL - ((v73 + v72) | 0xAB7263B5897B05FDLL) + ((v73 + v72) | 0x548D9C4A7684FA02)) ^ 0xD42EB43EF5303DCBLL, 8);
  v75 = (0xAB7263B5897B05FDLL - ((v73 + v72) | 0xAB7263B5897B05FDLL) + ((v73 + v72) | 0x548D9C4A7684FA02)) ^ 0xD42EB43EF5303DCBLL ^ __ROR8__(v72, 61);
  v76 = (v74 + v75) ^ a3;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x97F56CB0FB361A73;
  v79 = v62 | (((((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v77, 61))) ^ v23) >> (8 * ((v26 + 2) & 7))) ^ *(v26 + 2)) << 8);
  v80 = *(v26 + 3);
  v26 += 3;
  v81 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8);
  v82 = (v81 + a5) ^ 0xC1C2BB72C58EC110;
  v83 = __ROR8__((v81 + a5) ^ 0x544736759C7E6D2BLL, 8);
  v84 = (0xD3FB36A486289AAALL - (v83 + v82) + ((2 * (v83 + v82)) | 0x580992B6F3AECAACLL)) ^ 0x5D77566CE22EEA8FLL;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (0xD7EEA3B808AFF673 - ((v86 + v85) ^ 0xB70FAD487CFABC9CLL | 0xD7EEA3B808AFF673) + ((v86 + v85) ^ 0xB70FAD487CFABC9CLL | 0x28115C47F750098CLL)) ^ 0xE1C4E1D763175165;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ a1;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ a4;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ a3;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0x97F56CB0FB361A73;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  LODWORD(v26) = (((0xCBDCE58944DA3476 - (v97 + v96) + ((2 * (v97 + v96)) | 0x684634ED764B9714)) ^ 0xCC3A300350DD3914) >> (8 * (v26 & 7u))) ^ v80;
  return (*(a6 + 8 * ((500 * ((((v79 | v26) - 1240130101 - 2 * ((v79 | v26) & a21 ^ v26 & 0x14)) ^ v21) == -1240130101)) ^ (a7 + 1660738454))))(0xD7EEA3B808AFF673, a1, a2, a3, a4, a5, 0x97F56CB0FB361A73, a6, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C9628@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v23 - 0x4761F68478C333F5) = a22;
  v24 = *(v22 + 368);
  *a19 = *v24;
  *v24 = a22;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000C96EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = (*(a8 + 8 * (v34 + 1660739347)))(a30);
  *a29 = 0;
  return (*(a34 + 8 * (v34 + 1660731318)))(v35);
}

uint64_t sub_1000C9884@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = *(v22 + 360);
  **(v22 + 368) = a22;
  *v23 = a22;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1000C98CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  v48 = *(v47 - 0x4761F68478C333EDLL);
  *a25 = v48;
  *a46 = *(v47 - 0x4761F68478C333F5);
  return (*(a8 + 8 * ((426 * (((v48 == 0x4761F68478C333F5) ^ (v46 + 49)) & 1)) ^ v46)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000C9BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = (*(a8 + 8 * (v34 ^ 0x9D032113)))(a12);
  *a23 = 0;
  return (*(a34 + 8 * (v34 + 1660723679)))(v35);
}

uint64_t sub_1000C9CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, unint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32, unint64_t a33)
{
  LODWORD(STACK[0x250]) = v33;
  STACK[0x3A0] = a33;
  STACK[0x3A8] = a28;
  LODWORD(STACK[0x24C]) = v37;
  STACK[0x298] = v38;
  LODWORD(STACK[0x2A0]) = v39;
  LODWORD(STACK[0x2A4]) = v41;
  STACK[0x220] = a32;
  LODWORD(STACK[0x234]) = a27;
  LODWORD(STACK[0x22C]) = v42;
  LODWORD(STACK[0x230]) = v40;
  STACK[0x238] = a18;
  STACK[0x240] = a11;
  LODWORD(STACK[0x3B0]) = v36;
  LODWORD(STACK[0x3B4]) = v33;
  STACK[0x288] = v34;
  LODWORD(STACK[0x294]) = v33;
  return (*(a8 + 8 * v35))(a22, 0xE6763EB6C68C2EBALL, a3, 2161025909, 21552897);
}

uint64_t sub_1000C9DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  *(v39 + 168) = *(v39 + 352);
  LODWORD(STACK[0x20C]) = a36;
  return (*(a8 + 8 * ((((((v37 - 1559407425) & 0xBFEF49FB) + 6622) ^ 0x290) * (a36 == v38)) ^ (v36 + v37 + 46))))();
}

uint64_t sub_1000C9E3C@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14[49] = a14 + 464;
  v15 = v14[43] == 0;
  v14[21] = v14[44];
  LODWORD(STACK[0x20C]) = 1418211936;
  return (*(a1 + 8 * (((((a2 - 74) ^ v15) & 1) * ((a2 + 778569762) & 0xD197DDFF ^ 0x9D7)) ^ a2)))();
}

uint64_t sub_1000C9EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v62 = v60 & 0x45DDFEFB;
  v63 = ((v60 & 0x45DDFEFB) - 5580143) & 0x54FFFF;
  v64 = **(v61 + 360);
  *(v61 + 400) = v64;
  return (*(a8 + 8 * (((v64 != 0x4761F68478C333F5) * (v63 ^ 0xD0D)) ^ v62)))(a1, a2, a3, a4, a5, 660540079, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1000C9FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8)
{
  v15 = a6 + ((v8 + v9) & v10 ^ a3);
  v16 = a5 - *(v14 + a1);
  v17 = v15 < (v8 ^ v11) + a7;
  v18 = v15 > v16;
  if (v17 != v16 < v12)
  {
    v18 = v17;
  }

  return (*(a8 + 8 * ((v18 * v13) ^ v8)))();
}

uint64_t sub_1000CA06C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x2F4]) = a2;
  STACK[0x2F8] = v8;
  LODWORD(STACK[0x304]) = a4;
  return (*(a8 + 8 * (v9 + 5449)))(v10);
}

uint64_t sub_1000CA0B8@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  LODWORD(STACK[0x308]) = a63;
  v64 = (a63 + 11) & 0xF;
  LODWORD(STACK[0x30C]) = v64;
  v65 = (16 - v64);
  v63[55] = v65;
  v63[21] = v63[44];
  LODWORD(STACK[0x20C]) = 1418211964;
  return (*(a1 + 8 * ((4413 * (v65 + (a63 - 660540079) < ((9284 * (a2 ^ 0xD1Eu)) ^ 0xFFFFB77EuLL))) ^ a2)))();
}

uint64_t sub_1000CA140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  LODWORD(STACK[0x31C]) = v34 + LODWORD(STACK[0x308]) - LODWORD(STACK[0x30C]) + 26;
  v38 = (*(a8 + 8 * (v35 ^ 0x2DE)))();
  v36[57] = v38;
  v36[21] = v36[44];
  LODWORD(STACK[0x20C]) = 1418211938;
  return (*(a34 + 8 * (((((v35 + 115) ^ (v38 == 0)) & 1) * ((v35 ^ 0x7481) - 15246)) ^ v35)))(a1);
}

uint64_t sub_1000CA1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = **(v64 + 360);
  *(v64 + 464) = v65;
  return (*(a8 + 8 * ((26 * (((v65 == 0x4761F68478C333F5) ^ (v63 + 70)) & 1)) ^ v63)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1000CA390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v31 = *(v30 + a7) + a1 - ((v27 + 2 * *(v30 + a7)) & v26);
  v32 = (v31 ^ 0xB1C2E7A6) + v25 + (((v29 + 134425384) | 0x95002B00) ^ v28 ^ ((v29 + a4) & a5 ^ a2) & (2 * v31)) == a3;
  return (*(a8 + 8 * (((16 * v32) | (32 * v32)) ^ v29)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1000CA58C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v56 = (a8 - 1) + v45 + (((a8 - 1) < 0x45FAE98) << 32);
  v57 = v52 + v56 - 0x255B07BE89A8D368;
  v58 = __ROR8__(v57 & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = ((v58 + 0x72B0B1A0EB3E1587) & v54 ^ v46) + ((v55 - 1660722236) ^ a2 ^ (v58 + 0x72B0B1A0EB3E1587) & v42) - 1;
  v60 = v59 ^ v53;
  v59 ^= 0xF10ABB52F2CE107CLL;
  v61 = __ROR8__(v60, 8);
  v62 = (v49 - (v61 + v59) + (a5 & (2 * (v61 + v59)))) ^ v44;
  v63 = v62 ^ __ROR8__(v59, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0x7EDA10D8E8BDE475;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xCB1FD105091A75A6;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x80A3287483B4C7C9;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x8562C5B0FD26117BLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v43 - ((v72 + v71) | v43) + ((v72 + v71) | a4)) ^ v50;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  *(a1 + v56 + a42) = (((a6 - (v75 + v74) + (v48 | (2 * (v75 + v74)))) ^ a3) >> (8 * (v57 & 7u))) ^ *v57;
  return (*(a7 + 8 * (((v51 == 0) * v47) ^ v55)))();
}

uint64_t sub_1000CA7F4@<X0>(int a1@<W1>, int a2@<W3>, int a3@<W5>, uint64_t a4@<X7>, unint64_t a5@<X8>)
{
  LODWORD(STACK[0x2F4]) = a1;
  STACK[0x2F8] = v5;
  LODWORD(STACK[0x304]) = a2;
  STACK[0x200] = a5;
  LODWORD(STACK[0x20C]) = 1418211964;
  return (*(a4 + 8 * a3))(v6);
}

uint64_t sub_1000CA84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x334]) = v64;
  STACK[0x338] = v63;
  STACK[0x340] = v65;
  STACK[0x348] = a32;
  LODWORD(STACK[0x354]) = HIDWORD(a31);
  return (*(a8 + 8 * v66))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1000CA890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v72[57];
  v74 = ((2 * ((v71 ^ 0x9352084D) + a71)) & 0xB6BB7FF4) + (((v71 ^ 0x9352084D) + a71) ^ 0x7BF76FB25B5DBFFALL) + v73;
  v75 = v74 - 0x7BF76FB25B5DBFFALL;
  *v75 = 0;
  *(v74 + ((v71 + 458963138) & 0xE4A4BADF ^ 0x8408904DA4A2729FLL)) = 0;
  *(v75 + 2) = 0;
  *(((2 * (a71 - 1823328577)) & 0x11CBDFFDELL) + ((a71 - 1823328577) ^ 0x5FFDBCBF8E5EFFEFLL) + v73 - 0x5FFDBCBF8E5EFFEFLL) = -9392;
  v76 = (10 - 2 * LOBYTE(STACK[0x308])) & 0x16;
  v77 = STACK[0x30C];
  v78 = ((2 * (a71 - 1823328575)) & 0xF67B7FFELL) + ((a71 - 1823328575) ^ 0xFEBAFDF27B3DBFFFLL) + v73 + 0x145020D84C24001;
  *v78 = 0;
  *(v78 + 2) = 0;
  *(v78 + 3) = (-69 - v77 - v76) ^ 0xAB;
  v72[64] = v73 + (a71 - 1823328571);
  v80 = (v72[55] ^ 0xEB80FF7FF79B3CC6) + 0x147F00802E34DE7DLL + ((2 * v72[55]) & 0xC);
  LOBYTE(STACK[0x363]) = v80 < 0x25D01B43;
  return (*(a8 + 8 * ((507 * (v80 != 634395459)) ^ v71)))(a1, 1660723630);
}

uint64_t sub_1000CAAE0@<X0>(int a1@<W1>, uint64_t a2@<X7>, unint64_t a3@<X8>)
{
  *(v9 + v4) = 0;
  if (v7 != v5 < a3)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5 < v8;
  }

  return (*(a2 + 8 * ((v10 * (a1 + v3 - 3213)) ^ v6)))();
}

uint64_t sub_1000CAB48(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  **(v23 + 336) = *(v23 + 456);
  **(v23 + 392) = STACK[0x31C];
  *(v23 + 168) = *(v23 + 352);
  LODWORD(STACK[0x20C]) = -1418238986;
  return (*(a8 + 8 * (a2 + v22 + 46)))(a22);
}

uint64_t sub_1000CAB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x20C];
  LODWORD(STACK[0x364]) = STACK[0x20C];
  v11 = *(v9 + 168);
  *(v9 + 528) = v11;
  LODWORD(STACK[0x21C]) = v10;
  return (*(a8 + 8 * (((((5 * (v8 ^ 0xC0)) ^ (v11 == 0xAB5C364D9808152)) & 1) * ((v8 ^ 0x7C0) - 2646)) ^ v8)))(a1, a2, a3, a4, a5, a6, (v8 ^ 0x7C0u) - 1660723963);
}

uint64_t sub_1000CAC00@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (v2[66] - 0xAB5C364D9808152);
  v4 = *v3;
  v2[67] = v3;
  v2[68] = v4;
  return (*(a1 + 8 * ((92 * ((a2 ^ (v4 == 0x4761F68478C333F5)) & 1)) ^ a2)))();
}

uint64_t sub_1000CAC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a8 + 16 * (a9 ^ 0x4BCF));
  *(v15 + 184) = *(v15 + 544);
  return v16(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1000CAD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = (*(a8 + 8 * (v36 ^ 0x9D032113)))();
  *(v37 + v35) = 0;
  return (*(a34 + 8 * (v34 + v36 - 785)))(v38);
}

uint64_t sub_1000CADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(a8 + 8 * (v34 + 16472)))(*(v35 + 536));
  LODWORD(STACK[0x21C]) = STACK[0x364];
  return (*(a34 + 8 * v34))(a1);
}

uint64_t sub_1000CAF04(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, int a31, uint64_t a32, uint64_t a33, int a34)
{
  *(v39 + 1720) = v41;
  *(v39 + 1728) = v44;
  *(v39 + 1736) = v36;
  *(v39 + 1744) = v35;
  *(v39 + 1752) = v38;
  *(v39 + 1760) = v37;
  *(v39 + 1768) = v45;
  *(v39 + 1776) = v43;
  *(v39 + 1784) = v40;
  *(v39 + 1792) = a28;
  LODWORD(STACK[0x864]) = a29;
  *(v39 + 3744) = a1;
  LODWORD(STACK[0x1004]) = a2;
  LODWORD(STACK[0x1008]) = v42;
  LODWORD(STACK[0x100C]) = a34;
  *(v39 + 3768) = a33;
  LODWORD(STACK[0x1018]) = a31;
  LODWORD(STACK[0x101C]) = a29;
  *(v39 + 3784) = a28;
  *(v39 + 3792) = v40;
  *(v39 + 3800) = v43;
  *(v39 + 3808) = v45;
  *(v39 + 3816) = *(v39 + 1760);
  *(v39 + 3824) = *(v39 + 1752);
  *(v39 + 3832) = *(v39 + 1744);
  *(v39 + 3840) = *(v39 + 1736);
  *(v39 + 3848) = *(v39 + 1728);
  *(v39 + 3856) = *(v39 + 1720);
  v46 = *(v39 + 3744) == 0x5480F16B0E863CB5;
  *(v39 + 3871) = v46;
  LODWORD(STACK[0x894]) = 1418211936;
  return (*(a8 + 8 * ((v46 * ((v34 ^ 0xBBD9273) - 196988600 + ((v34 - 8926) | 0x2002))) ^ v34)))();
}

uint64_t sub_1000CB028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10[468] - 0x5480F16B0E863CB5) = 1024473426;
  *(v10[468] - 0x5480F16B0E863CB1) = 0;
  *(v10[468] - 0x5480F16B0E863CB0) = 0;
  *(v10[468] - 0x5480F16B0E863CAFLL) = 0;
  *(v10[468] - 0x5480F16B0E863CAELL) = 0;
  *(v10[468] - 0x5480F16B0E863CADLL) = 0;
  *(v10[468] - 0x5480F16B0E863CACLL) = 0;
  *(v10[468] - 0x5480F16B0E863CABLL) = 0;
  *(v10[468] - 0x5480F16B0E863CAALL) = 0;
  *(v10[468] - 0x5480F16B0E863CA9) = 0;
  *(v10[468] - 0x5480F16B0E863CA8) = 0;
  *(v10[468] - 0x5480F16B0E863CA7) = 0;
  *(v10[468] - 0x5480F16B0E863CA6) = 0;
  *(v10[468] - 0x5480F16B0E863CA5) = 0;
  *(v10[468] - 0x5480F16B0E863CA4) = 0;
  *(v10[468] - 0x5480F16B0E863CA3) = 0;
  *(v10[468] - 0x5480F16B0E863CA2) = 0;
  *(v10[468] - 0x5480F16B0E863CA1) = 0;
  *(v10[468] - 0x5480F16B0E863CA0) = 0;
  *(v10[468] - 0x5480F16B0E863C9FLL) = 0;
  *(v10[468] - 0x5480F16B0E863C9ELL) = 0;
  *(v10[468] - 0x5480F16B0E863C9DLL) = -1240130101;
  *(v10[468] - 0x5480F16B0E863C99) = 1865164611;
  *(v10[468] - 0x5480F16B0E863B95) = 1865164611;
  *(v10[468] - 0x5480F16B0E863A91) = 0;
  *(v10[468] - 0x5480F16B0E863A90) = 0;
  *(v10[468] - 0x5480F16B0E863A8FLL) = 0;
  *(v10[468] - 0x5480F16B0E863A8ELL) = 0;
  *(v10[468] - 0x5480F16B0E863A8DLL) = 0;
  *(v10[468] - 0x5480F16B0E863A8CLL) = 0;
  *(v10[468] - 0x5480F16B0E863A8BLL) = 0;
  *(v10[468] - 0x5480F16B0E863A8ALL) = 0;
  *(v10[468] - 0x5480F16B0E863A89) = 0;
  *(v10[468] - 0x5480F16B0E863A88) = 0;
  *(v10[468] - 0x5480F16B0E863A87) = 0;
  *(v10[468] - 0x5480F16B0E863A86) = 0;
  *(v10[468] - 0x5480F16B0E863A85) = 0;
  *(v10[468] - 0x5480F16B0E863A84) = 0;
  *(v10[468] - 0x5480F16B0E863A83) = 0;
  *(v10[468] - 0x5480F16B0E863A82) = 0;
  *(v10[468] - 0x5480F16B0E863A81) = 0;
  *(v10[468] - 0x5480F16B0E863A80) = 0;
  *(v10[468] - 0x5480F16B0E863A7FLL) = 0;
  *(v10[468] - 0x5480F16B0E863A7ELL) = 0;
  *(v10[468] - 0x5480F16B0E863A7DLL) = 0;
  *(v10[468] - 0x5480F16B0E863A7CLL) = 0;
  *(v10[468] - 0x5480F16B0E863A7BLL) = 0;
  *(v10[468] - 0x5480F16B0E863A7ALL) = 0;
  *(v10[468] - 0x5480F16B0E863A79) = 0;
  *(v10[468] - 0x5480F16B0E863A78) = 0;
  *(v10[468] - 0x5480F16B0E863A77) = 0;
  *(v10[468] - 0x5480F16B0E863A76) = 0;
  *(v10[468] - 0x5480F16B0E863A75) = 0;
  *(v10[468] - 0x5480F16B0E863A74) = 0;
  *(v10[468] - 0x5480F16B0E863A73) = 0;
  *(v10[468] - 0x5480F16B0E863A72) = 0;
  *(v10[468] - 0x5480F16B0E863A71) = 0;
  *(v10[468] - 0x5480F16B0E863A70) = 0;
  *(v10[468] - 0x5480F16B0E863A6FLL) = 0;
  *(v10[468] - 0x5480F16B0E863A6ELL) = 0;
  *(v10[468] - 0x5480F16B0E863A6DLL) = 0;
  *(v10[468] - 0x5480F16B0E863A6CLL) = 0;
  *(v10[468] - 0x5480F16B0E863A6BLL) = 0;
  *(v10[468] - 0x5480F16B0E863A6ALL) = 0;
  v11 = *(a8 + 8 * ((v8 - 196979803 + v8 - 196970501) ^ (5218 * (v8 < 0x75AC7543))));
  v10[484] = v10[468] - 0x5480F16B0E8636CDLL;
  v10[226] = v9;
  return v11((v8 - 196970501) ^ 0x18A4, v8 - 196976344);
}

uint64_t sub_1000CB6D4(int a1, int a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (v8 + ((v9 + 97) ^ v13)) & 0xF;
  *(v10 + ((v9 + 1121) ^ v13)) = *(*(v12 + 8 * a2) + a6 + v15) ^ *(*(v12 + 8 * a1) + v14 + v15) ^ (v15 * a4) ^ *(v15 + *(v12 + 8 * v11) + a3 + 2);
  return (*(a8 + 8 * (((v8 != 0x4968B6C4247EA888) * a5) ^ v9)))();
}

uint64_t sub_1000CB758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(STACK[0xFF8] - 0x5480F16B0E8636B9) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636B8) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636B7) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636B6) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636B5) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636B4) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636B3) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636B2) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636B1) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636B0) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636AFLL) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636AELL) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636ADLL) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636ACLL) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636ABLL) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636AALL) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636A9) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636A8) = 0;
  *(STACK[0xFF8] - 0x5480F16B0E8636A7) = 0;
  STACK[0x868] = v9;
  *(STACK[0xFF8] - 0x5480F16B0E8636A6) = 0;
  STACK[0x1080] = STACK[0xFF8] - 0x5480F16B0E8636A5;
  STACK[0x870] = 0x3E8CADFB2CA76998;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000CB9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[227] = v9;
  *(v11[468] - 0x5480F16B0E863525) = 1812911071;
  *(v11[468] - 0x5480F16B0E863521) = 193142772;
  v11[486] = v11[468] - 0x5480F16B0E86351DLL;
  v11[228] = v10;
  return (*(a8 + 8 * v8))(v10);
}

uint64_t sub_1000CBAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[228] = a1;
  v9[487] = v9[468] - 0x5480F16B0E863509;
  v9[229] = 0x3E8CADFB2CA76998;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000CBB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[229] = v9;
  v11[488] = v11[468] - 0x5480F16B0E8634C9;
  v11[230] = v10;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000CBC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 1840) = v9;
  *(*(v10 + 3744) - 0x5480F16B0E86345DLL) = -1240130101;
  *(*(v10 + 3744) - 0x5480F16B0E863455) = 0;
  *(*(v10 + 3744) - 0x5480F16B0E86346DLL) = -1240130101;
  *(*(v10 + 3744) - 0x5480F16B0E863465) = 0;
  *(*(v10 + 3744) - 0x5480F16B0E86340DLL) = 0;
  *(*(v10 + 3744) - 0x5480F16B0E863445) = 0;
  *(*(v10 + 3744) - 0x5480F16B0E86344DLL) = -1240130101;
  *(*(v10 + 3744) - 0x5480F16B0E863435) = 0;
  *(*(v10 + 3744) - 0x5480F16B0E86343DLL) = -1240130101;
  *(*(v10 + 3744) - 0x5480F16B0E863425) = 0;
  *(*(v10 + 3744) - 0x5480F16B0E86342DLL) = -1240130101;
  *(*(v10 + 3744) - 0x5480F16B0E863415) = 0;
  *(*(v10 + 3744) - 0x5480F16B0E86341DLL) = -1240130101;
  LODWORD(STACK[0x894]) = -1418238986;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000CBD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x10A4]) = STACK[0x894];
  v9[235] = v9[482];
  v9[236] = v9[481];
  v9[237] = v9[480];
  v9[238] = v9[479];
  v9[239] = v9[478];
  v9[240] = v9[477];
  v9[241] = v9[476];
  v9[242] = v9[475];
  v9[243] = v9[474];
  v9[244] = v9[473];
  LODWORD(STACK[0x900]) = STACK[0x101C];
  LODWORD(STACK[0x904]) = STACK[0x1018];
  v9[246] = v9[471];
  LODWORD(STACK[0x914]) = STACK[0x100C];
  LODWORD(STACK[0x918]) = STACK[0x1008];
  LODWORD(STACK[0x91C]) = STACK[0x1004];
  v9[249] = v9[468];
  return (*(a8 + 8 * v8))(a1, 852818952);
}

uint64_t sub_1000CBF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x898]) = STACK[0x10A4];
  LODWORD(STACK[0x89C]) = STACK[0x1008];
  LODWORD(STACK[0x8A0]) = v8;
  LODWORD(STACK[0x8A4]) = STACK[0xC04];
  *(v9 + 1872) = *(v9 + 2744);
  return (*(a8 + 8 * (v8 - 5104 + (v8 ^ 0x2AA3))))();
}

uint64_t sub_1000CBFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 - 10780;
  v11 = *(v9 + 1360);
  v12 = *v11;
  LODWORD(v11) = *(v11 + 2) - 1240130101 - ((*(v11 + 2) << (v10 - 120)) & 0x6C2A3B96);
  LODWORD(STACK[0x898]) = STACK[0x100C];
  LODWORD(STACK[0x89C]) = STACK[0x10A4];
  LODWORD(STACK[0x8A0]) = v10;
  LODWORD(STACK[0x8A4]) = v11;
  *(v9 + 1872) = v12;
  return (*(a8 + 8 * (v10 + 7154)))();
}

uint64_t sub_1000CC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[490] = v9;
  v11 = v10[234];
  v10[491] = v11;
  LODWORD(STACK[0x10BC]) = STACK[0x8A4];
  v12 = SLODWORD(STACK[0x8A0]);
  LODWORD(STACK[0x10C0]) = STACK[0x89C];
  LODWORD(STACK[0x10C4]) = STACK[0x898];
  v10[494] = *(a8 + 8 * v12);
  v13 = v10[474];
  v10[495] = v10[344] + v13;
  v10[496] = v13 + 112;
  return (*(a8 + 8 * (((v11 != 0) * ((v8 - 4562) ^ (v8 - 10662) ^ 0x795)) ^ v8)))();
}

uint64_t sub_1000CC154(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[495];
  *(v10 - 0x2968F53CA5E43631) = 1024473426;
  *(v10 - 0x2968F53CA5E43629) = 0;
  *(v10 - 0x2968F53CA5E43621) = 1891954783;
  *(v10 - 0x2968F53CA5E43619) = -1240130101;
  *(v10 - 0x2968F53CA5E43611) = 0;
  *(v10 - 0x2968F53CA5E43609) = -1240130101;
  *(v10 - 0x2968F53CA5E43601) = 0;
  *(v10 - 0x2968F53CA5E435F9) = -1240130101;
  *(v10 - 0x2968F53CA5E435F1) = 0;
  *(v10 - 0x2968F53CA5E435E9) = -1240130101;
  *(v10 - 0x2968F53CA5E435D9) = 18;
  *(v10 - 0x2968F53CA5E435E1) = 0;
  v9[235] = v10 - 0x2968F53CA5E435E1;
  v9[236] = v10 - 0x2968F53CA5E435E9;
  v9[237] = v10 - 0x2968F53CA5E435F1;
  v9[238] = v10 - 0x2968F53CA5E435F9;
  v9[239] = v10 - 0x2968F53CA5E43601;
  v9[240] = v10 - 0x2968F53CA5E43609;
  v9[241] = v9[491];
  v9[242] = v9[495];
  v9[243] = v9[496];
  v9[244] = v9[490];
  LODWORD(STACK[0x900]) = STACK[0x10BC];
  LODWORD(STACK[0x904]) = 2080884515;
  v9[246] = v9[494];
  LODWORD(STACK[0x914]) = STACK[0x10C4];
  LODWORD(STACK[0x918]) = STACK[0x10C0];
  LODWORD(STACK[0x91C]) = a2 + 3;
  v9[249] = v9[490];
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000CC304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x5B4]) = STACK[0x10C0];
  LODWORD(STACK[0x3E4]) = STACK[0x10C4];
  v9[102] = v9[494];
  LODWORD(STACK[0x4BC]) = 2080884515;
  LODWORD(STACK[0x4CC]) = STACK[0x10BC];
  v9[89] = v9[490];
  v9[99] = v9[495];
  v9[143] = v9[491];
  v9[146] = v9[477];
  v9[78] = v9[478];
  v9[82] = v9[479];
  v9[80] = v9[480];
  v9[158] = v9[481];
  v9[161] = v9[482];
  v9[257] = v9[494];
  v9[258] = v9[496];
  v9[259] = v9[495];
  v9[260] = v9[490];
  LODWORD(STACK[0x984]) = 1418211936;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000CC3B0()
{
  LODWORD(STACK[0x1124]) = STACK[0x984];
  v0[506] = v0[260];
  v0[507] = v0[259];
  v1 = v0[258];
  v2 = v0[257];
  v0[508] = v2;
  v1 -= 112;
  v0[509] = v1;
  v0[111] = v1;
  return v2();
}

uint64_t sub_1000CC444@<X0>(uint64_t a1@<X7>, unsigned int a2@<W8>)
{
  v3 = *(v2 + 672);
  *(v2 + 2664) = v3;
  LODWORD(v3) = *(v3 - 0x5480F16B0E863C9DLL);
  LODWORD(STACK[0xBCC]) = v3;
  return (*(a1 + 8 * ((115 * (((v3 == ((3860 * (a2 ^ 0x39B3)) ^ 0xB615219B)) ^ (a2 + 74)) & 1)) ^ a2)))();
}

uint64_t sub_1000CC4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = v35[128];
  v35[335] = v37;
  v35[336] = v37 - 0x6BBFEBF589A7D717;
  v38 = STACK[0xBCC];
  *(v37 - 0x6BBFEBF589A7D717) = STACK[0xBCC];
  v39 = (*(a8 + 8 * (v34 ^ 0x7606)))((v34 - 12102) ^ v38 ^ 0xB61510C1);
  v35[337] = v39;
  *(v35[335] - 0x6BBFEBF589A7D71FLL) = v39;
  return (*(a34 + 8 * ((194 * ((((v34 - v36 - 492) ^ (v39 == 0)) & 1) == 0)) ^ v34)))();
}

uint64_t sub_1000CC564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2704) = *(v9 + 2664) - 0x5480F16B0E863CB1;
  v10 = (**(v9 + 2688) ^ 0xB6151DCB) - ((2 * (**(v9 + 2688) ^ 0xB6151DCB)) & 0xECFEF4F2) + 1988065913;
  v11 = (v10 ^ ((v8 ^ 0x17E) - 1937661102)) + 1742305917 + ((v8 - 167928204) & (2 * v10) ^ 0xE4FCA072);
  LODWORD(STACK[0xBF4]) = v11;
  return (*(a8 + 8 * ((81 * (v11 == 1658343484)) | v8)))(1660725940);
}

uint64_t sub_1000CC70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[262] = v9[507];
  v9[263] = v9[509];
  v9[264] = v9[506];
  v9[265] = v9[508];
  return (*(a8 + 8 * (v8 + 1400 + ((v8 + 1400) ^ 0x1F2A) - 2136)))();
}

uint64_t sub_1000CC764@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v9[510] = v7;
  v9[511] = v8;
  v9[512] = v3;
  v9[513] = v6;
  v9[514] = v9[265];
  v9[515] = v9[264];
  v9[516] = v9[263];
  v9[517] = v9[262];
  v11 = *v4;
  LODWORD(STACK[0x118C]) = *v4;
  v12 = *v5;
  v13 = *(a1 + 8 * a2);
  v9[519] = *v5;
  v9[520] = v13;
  v9[136] = 0;
  LODWORD(STACK[0x514]) = 0;
  v9[121] = 0;
  LODWORD(STACK[0x6A0]) = 0;
  v9[172] = 0;
  LODWORD(STACK[0x580]) = 0;
  if (v12)
  {
    v14 = v11 == -1240130101;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  LODWORD(STACK[0x9D8]) = v10;
  return (*(a1 + 8 * ((v15 * (((v2 - 1660727069) ^ 0x9D034F47) - 9163)) ^ v2)))();
}

uint64_t sub_1000CC810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = (*(a8 + 8 * (v34 ^ 0x6E8D)))(*(v35 + 4152), LODWORD(STACK[0x118C]) ^ 0xB6151DCB, &STACK[0x598], &STACK[0x514], &STACK[0x520], &STACK[0x6A0], &STACK[0x6B8], &STACK[0x580]);
  LODWORD(STACK[0x9D4]) = v36 + 3;
  return (*(a34 + 8 * (((v37 == 0) * (303 * (v34 ^ 0x242A) - 13592)) ^ v34)))();
}

uint64_t sub_1000CC8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = v34 ^ 0x2C;
  LODWORD(STACK[0x11A4]) = STACK[0x514];
  v38 = (*(a8 + 8 * (v37 + 9771)))();
  *(v35 + 4176) = v38;
  LODWORD(STACK[0x9D4]) = v36 + 2;
  return (*(a34 + 8 * (((v38 == 0) * (v37 ^ 0x9EF ^ (v37 + 4376) ^ 0x183B)) ^ v37)))();
}

uint64_t sub_1000CC910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  *(v53 + 4184) = *(v53 + 1088);
  v55 = LODWORD(STACK[0x514]) - ((2 * LODWORD(STACK[0x514])) & 0xECFEF4F2) + 1988065913;
  v56 = ((v52 + ((v54 + 1655542331) & 0x9D5269FE) - 1641) ^ v55 ^ 0x1182C486) + ((2 * v55) & 0xF5FDAB7E ^ 0xE4FCA072) + 1742305917;
  LODWORD(STACK[0x11BC]) = v56;
  return (*(a8 + 8 * ((962 * (v56 == 1658343484)) ^ v54)))(&a52, 1660735268);
}

uint64_t sub_1000CCAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *STACK[0x1150] = STACK[0x11A8];
  *STACK[0x1148] = LODWORD(STACK[0x11A4]) - 1240130101 - ((LODWORD(STACK[0x11A4]) << (v34 + 106)) & 0x6C2A3B96);
  LODWORD(STACK[0x9D4]) = -1418238986;
  return (*(a34 + 8 * v34))();
}

uint64_t sub_1000CCB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x5B4]) = STACK[0x1008];
  LODWORD(STACK[0x3E4]) = STACK[0x100C];
  *(v10 + 816) = *(v10 + 3768);
  LODWORD(STACK[0x4BC]) = STACK[0x1018];
  LODWORD(STACK[0x4CC]) = STACK[0x101C];
  *(v10 + 712) = *(v10 + 3784);
  *(v10 + 888) = *(v10 + 3792);
  *(v10 + 792) = *(v10 + 3800);
  *(v10 + 1144) = *(v10 + 3808);
  *(v10 + 1168) = *(v10 + 3816);
  *(v10 + 624) = *(v10 + 3824);
  *(v10 + 656) = *(v10 + 3832);
  *(v10 + 640) = *(v10 + 3840);
  *(v10 + 1264) = *(v10 + 3848);
  *(v10 + 1288) = *(v10 + 3856);
  *(v10 + 2056) = *(v10 + 3768);
  *(v10 + 2064) = *(v10 + 3792);
  *(v10 + 2072) = *(v10 + 3800);
  *(v10 + 2080) = *(v10 + 3784);
  v11 = (*(v10 + 3871) * (((v9 + v8 - 1624) ^ (v9 - 997)) - 3086)) ^ v8;
  LODWORD(STACK[0x984]) = 1418211936;
  return (*(a8 + 8 * v11))();
}

uint64_t sub_1000CCC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v10[475];
  v10[125] = v11 - 0x2968F53CA5E435D1;
  v12 = v10[473];
  *(v11 - 0x2968F53CA5E435D1) = v12;
  *(v12 - 0x5480F16B0E863A69) = STACK[0x1018];
  v13 = v10[143];
  v14 = v10[99];
  v10[95] = *(v9 + 8 * (v8 - 2898)) - 1266975131;
  LODWORD(STACK[0x4F0]) = 1715515004;
  LODWORD(STACK[0x5B8]) = 404758363;
  v10[497] = &STACK[0x13F0];
  v10[498] = &STACK[0x57C];
  v10[499] = &STACK[0x4EC];
  v10[500] = &STACK[0x698];
  v10[501] = &STACK[0x44C];
  LODWORD(STACK[0x634]) = STACK[0x4CC];
  v15 = *(a8 + 8 * v8);
  v10[160] = v13;
  v10[164] = v14;
  LODWORD(STACK[0x618]) = 1389527626;
  return v15(2821326025, a2, a3, a4, a5, 2981579752, &STACK[0x1280]);
}

uint64_t sub_1000CCD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x618];
  v11 = v9[95];
  v12 = STACK[0x4F0];
  v13 = STACK[0x634];
  v14 = v9[160];
  v9[250] = v9[164];
  v9[251] = v14;
  LODWORD(STACK[0x938]) = v13;
  LODWORD(STACK[0x93C]) = v12;
  v9[253] = v11;
  LODWORD(STACK[0x94C]) = v10;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1000CCDE8@<X0>(int a1@<W0>, int a2@<W5>, _BYTE *a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  LODWORD(STACK[0x268]) = v9;
  *v13 = v7;
  *(v13 + 8) = v8;
  v15 = (*(v13 + 3976) + v10);
  *(v13 + 888) = v10 + 432;
  **(v13 + 3984) = v14;
  **(v13 + 3992) = -1240130101;
  **(v13 + 4000) = 0;
  **(v13 + 4008) = 564492027;
  *(v13 + 16) = v15;
  a3[35] = v11 == 1389527627;
  LODWORD(STACK[0x26C]) = v6 + 2082772005;
  a3[36] = v6 + 2082772005 < 1650803335;
  v16 = ((a5 - 7087) | 0x2188) + v6 - 1041682740;
  LODWORD(STACK[0x284]) = v16;
  a3[37] = v16 < a1;
  LODWORD(STACK[0x294]) = v6 - 881418874;
  a3[38] = v6 - 881418874 < a2;
  *v15 = 103435264;
  *(v13 + 32) = v15 + 2;
  *(v13 + 40) = v15 + 0x7203BC651AC4C29ALL;
  *(v13 + 48) = v15 + 98;
  *(v13 + 56) = v15 + 99;
  *(v13 + 64) = v15 + 100;
  *(v13 + 80) = v15 + 102;
  *(v13 + 88) = v15 + 104;
  LODWORD(STACK[0x2A0]) = v6 - 619580959;
  a3[39] = v6 - 619580959 < -1051549629;
  v17 = v6 + 1500320924;
  LODWORD(STACK[0x2A4]) = v17;
  LOBYTE(STACK[0x363]) = v17 < 1068352254;
  *(v13 + 2408) = v5;
  LODWORD(STACK[0xACC]) = STACK[0x268];
  LODWORD(STACK[0xAD0]) = v12 + 1;
  return (*(a4 + 8 * a5))();
}

uint64_t sub_1000CCF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v48 = *(*v46 + v46[40] * v45 + 36);
  v49 = v48 - 1777521729 < SLODWORD(STACK[0x2A4]);
  if ((LOBYTE(STACK[0x363]) ^ (v48 - 1777521729 < ((v44 + 1083101756) & 0xBF713BA1 ^ 0x3FADD9DF))))
  {
    v49 = STACK[0x363];
  }

  v46[307] = a44;
  LODWORD(STACK[0xAF8]) = STACK[0x308];
  LODWORD(STACK[0xAFC]) = v48;
  LODWORD(STACK[0xB00]) = v47;
  LODWORD(STACK[0xB04]) = 1418211964;
  return (*(a8 + 8 * (((v49 & 1) * (v44 ^ (v47 + 2751) ^ 0xAB772E14)) ^ v44)))();
}

uint64_t sub_1000CD024@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26)
{
  v28 = a2 ^ (v27 + 1799);
  v29 = v28 + 7824;
  v30 = 3 * v28;
  v31 = STACK[0xB00];
  v32 = STACK[0xAFC];
  v33 = STACK[0xAF8];
  v34 = ((LODWORD(STACK[0xB00]) - a2) | (a2 - LODWORD(STACK[0xB00]))) >> (v30 ^ 0x3E);
  *(v26 + 2408) = *(v26 + 2456);
  LODWORD(STACK[0xACC]) = v33;
  LODWORD(STACK[0xAD0]) = v32;
  LODWORD(STACK[0xB04]) = v31;
  return (*(a1 + 8 * (a2 ^ a26 ^ v29 ^ (10157 * ((v34 & 1) == 0)))))();
}

uint64_t sub_1000CD09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v51 = STACK[0xAD0];
  LODWORD(STACK[0x2DC]) = STACK[0xAD0];
  LODWORD(STACK[0x2F4]) = STACK[0xACC];
  *(v49 + 96) = *(v49 + 2408);
  v52 = **(v49 + 16);
  LODWORD(STACK[0x304]) = v52;
  LODWORD(STACK[0xB04]) = v50;
  return (*(a8 + 8 * (((v52 != 103435264 || v51 != v48) * (((v47 ^ 0x3CBA) + 2091) ^ 0x2375)) ^ v47)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_1000CD114@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  LODWORD(STACK[0xAD4]) = v53;
  LODWORD(STACK[0xAD8]) = STACK[0x2DC];
  LODWORD(STACK[0xADC]) = STACK[0x2F4];
  *(v52 + 2440) = *(v52 + 96);
  return (*(a1 + 8 * ((((a52 & 1) == 0) * (((a2 - 479155200) & 0x1C8F73BF ^ 0xFFFFACAA) + ((a2 - 8934) | 0x1009))) ^ a2)))();
}

uint64_t sub_1000CD248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xAD8]) = v9 + 2;
  LODWORD(STACK[0xADC]) = STACK[0x2F4];
  *(v10 + 2440) = *(v10 + 96);
  LODWORD(STACK[0xB04]) = 1418211964;
  return (*(a8 + 8 * ((*(a7 + 35) * (((v8 - 8263) | 0x1020) - 3769)) ^ (v8 - 941))))();
}