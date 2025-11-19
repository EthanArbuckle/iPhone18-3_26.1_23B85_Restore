uint64_t sub_100264BA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v32, v33);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v31[0];
  sub_100031694(v32, v33);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v7 = v31[0];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  v9 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = sub_100037644(v10, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v9 + 16) || (v12 = sub_10007CF6C(v11), (v13 & 1) == 0))
  {

LABEL_12:
    v19 = v33;
    sub_100031694(v32, v33);
    v20 = UnkeyedDecodingContainer.decodeData(with:)(v7, v19);
    v22 = v21;
LABEL_14:
    sub_100002A00(v32);
    *a2 = v6;
    *(a2 + 8) = v20;
    *(a2 + 16) = v22;
    return sub_100002A00(a1);
  }

  sub_100002B30(*(v9 + 56) + 32 * v12, v31);

  if (!swift_dynamicCast() || (v30 & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = v33;
  sub_100031694(v32, v33);
  result = UnkeyedDecodingContainer.decodeData(with:)((v7 + 3) & 0x1FC, v14);
  v17 = 0;
  v18 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v17 = *(result + 16);
    }
  }

  else if (v18)
  {
    v17 = result;
  }

  v23 = __OFADD__(v17, v7);
  v24 = v17 + v7;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v25 = *(result + 16);
        v26 = *(result + 24);
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }
    }

    else if (v18)
    {
      v25 = result;
      v26 = result >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v16);
    }

    if (v26 >= v25 && v24 >= v25)
    {
      v27 = v16;
      v28 = result;
      v20 = Data._Representation.subscript.getter();
      v22 = v29;
      sub_1000124C8(v28, v27);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100264EC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v32, v33);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v31[0];
  sub_100031694(v32, v33);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v7 = v31[0];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  v9 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = sub_100037644(v10, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v9 + 16) || (v12 = sub_10007CF6C(v11), (v13 & 1) == 0))
  {

LABEL_12:
    v19 = v33;
    sub_100031694(v32, v33);
    v20 = UnkeyedDecodingContainer.decodeData(with:)(v7, v19);
    v22 = v21;
LABEL_14:
    sub_100002A00(v32);
    *a2 = v6;
    *(a2 + 8) = v20;
    *(a2 + 16) = v22;
    return sub_100002A00(a1);
  }

  sub_100002B30(*(v9 + 56) + 32 * v12, v31);

  if (!swift_dynamicCast() || (v30 & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = v33;
  sub_100031694(v32, v33);
  result = UnkeyedDecodingContainer.decodeData(with:)((v7 + 3) & 0x1FFFC, v14);
  v17 = 0;
  v18 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v17 = *(result + 16);
    }
  }

  else if (v18)
  {
    v17 = result;
  }

  v23 = __OFADD__(v17, v7);
  v24 = v17 + v7;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v25 = *(result + 16);
        v26 = *(result + 24);
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }
    }

    else if (v18)
    {
      v25 = result;
      v26 = result >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v16);
    }

    if (v26 >= v25 && v24 >= v25)
    {
      v27 = v16;
      v28 = result;
      v20 = Data._Representation.subscript.getter();
      v22 = v29;
      sub_1000124C8(v28, v27);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL _s7CoreP2P12NANAttributeO17ServiceDescriptorV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  v4 = *(a2 + 22);
  if (*(a1 + 22))
  {
    if (!*(a2 + 22))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) != *(a2 + 20))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a2 + 24);

    v8 = sub_1000BCCE0(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  *v29 = *(a1 + 32);
  *&v29[15] = *(a1 + 47);
  *v28 = *(a2 + 32);
  *&v28[15] = *(a2 + 47);
  v9 = *v29;
  v10 = *&v29[16] | (v29[18] << 16);
  v11 = *v28;
  v12 = *&v28[16] | (v28[18] << 16);
  if (v29[18] == 255)
  {
    if (v28[18] == 255)
    {
      sub_100012400(v29, &v26, &qword_100593880, &qword_1004ABB50);
      sub_100012400(v28, &v26, &qword_100593880, &qword_1004ABB50);
      sub_1001842AC(v9, *(&v9 + 1), v10);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v28[18] == 255)
  {
LABEL_20:
    sub_100012400(v29, &v26, &qword_100593880, &qword_1004ABB50);
    sub_100012400(v28, &v26, &qword_100593880, &qword_1004ABB50);
    sub_1001842AC(v9, *(&v9 + 1), v10);
    sub_1001842AC(v11, *(&v11 + 1), v12);
    return 0;
  }

  sub_100012400(v29, &v26, &qword_100593880, &qword_1004ABB50);
  sub_100012400(v28, &v26, &qword_100593880, &qword_1004ABB50);
  v13 = sub_100237C88(v9, *(&v9 + 1), v10 & 0x1FFFF, v11, *(&v11 + 1), v12 & 0x1FFFF);
  sub_1001842AC(v11, *(&v11 + 1), v12);
  sub_1001842AC(v9, *(&v9 + 1), v10);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v26 = *(a1 + 56);
  v14 = *(a1 + 72);
  v27 = v14;
  v24 = *(a2 + 56);
  v15 = *(a2 + 72);
  v25 = v15;
  v16 = v26;
  v17 = v24;
  if (v26 == 4)
  {
    if (v24 == 4)
    {
      sub_100012400(&v26, v23, &qword_10058F2E0, qword_100491AC0);
      sub_100012400(&v24, v23, &qword_10058F2E0, qword_100491AC0);
      sub_1001842D0(v16, *(&v16 + 1), v14);
      return 1;
    }

    goto LABEL_26;
  }

  if (v24 == 4)
  {
LABEL_26:
    sub_100012400(&v26, v23, &qword_10058F2E0, qword_100491AC0);
    sub_100012400(&v24, v23, &qword_10058F2E0, qword_100491AC0);
    sub_1001842D0(v16, *(&v16 + 1), v14);
    v20 = *(&v17 + 1);
    v19 = v17;
    v21 = v15;
LABEL_27:
    sub_1001842D0(v19, v20, v21);
    return 0;
  }

  if (v26 != v24)
  {
    sub_100012400(&v26, v23, &qword_10058F2E0, qword_100491AC0);
    sub_100012400(&v24, v23, &qword_10058F2E0, qword_100491AC0);
    sub_1001842D0(v17, *(&v17 + 1), v15);
    v20 = *(&v16 + 1);
    v19 = v16;
    v21 = v14;
    goto LABEL_27;
  }

  sub_100012400(&v26, v23, &qword_10058F2E0, qword_100491AC0);
  sub_100012400(&v24, v23, &qword_10058F2E0, qword_100491AC0);
  v22 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v16 + 1), v14, *(&v17 + 1), v15);
  sub_1001842D0(v17, *(&v17 + 1), v15);
  sub_1001842D0(v16, *(&v16 + 1), v14);
  return (v22 & 1) != 0;
}

BOOL sub_100265620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(v15) = BYTE4(a1);
  HIBYTE(v15) = BYTE5(a1);
  LOBYTE(v12) = BYTE4(a4);
  HIBYTE(v12) = BYTE5(a4);
  v8 = a1 == a4 && v15 == v12 && a2 == a5;
  if (!v8 || a3 != a6)
  {
    return 0;
  }

  LOBYTE(v14) = BYTE2(a3);
  BYTE1(v14) = BYTE3(a3);
  BYTE2(v14) = BYTE4(a3);
  HIBYTE(v14) = BYTE5(a3);
  LOBYTE(v16) = BYTE6(a3);
  HIBYTE(v16) = HIBYTE(a3);
  LOBYTE(v11) = BYTE2(a6);
  BYTE1(v11) = BYTE3(a6);
  BYTE2(v11) = BYTE4(a6);
  HIBYTE(v11) = BYTE5(a6);
  LOBYTE(v13) = BYTE6(a6);
  HIBYTE(v13) = HIBYTE(a6);
  return v14 == v11 && v16 == v13;
}

BOOL _s7CoreP2P12NANAttributeO26ServiceDescriptorExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v4 = a2[8];
  if (a1[8])
  {
    if (!a2[8])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = a2[10];
  if (a1[10])
  {
    if (!a2[10])
    {
      return 0;
    }
  }

  else
  {
    if (a1[9] != a2[9])
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v21 = v2;
  v22 = v3;
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  v11 = *(a2 + 2);
  v10 = *(a2 + 3);
  v12 = *(a2 + 4);
  if (v8 == 4)
  {
    if (v11 == 4)
    {
      sub_100197F08(a1, v20);
      sub_100197F08(a2, v20);
      sub_1001842D0(v8, v7, v9);
      return 1;
    }

    goto LABEL_20;
  }

  if (v11 == 4)
  {
LABEL_20:
    sub_100197F08(a1, v20);
    sub_100197F08(a2, v20);
    sub_1001842D0(v8, v7, v9);
    v15 = v11;
    v16 = v10;
    v17 = v12;
LABEL_21:
    sub_1001842D0(v15, v16, v17);
    return 0;
  }

  if (v8 != v11)
  {
    sub_100197F08(a1, v20);
    sub_100197F08(a2, v20);
    sub_1001842D0(v11, v10, v12);
    v15 = v8;
    v16 = v7;
    v17 = v9;
    goto LABEL_21;
  }

  sub_100197F08(a1, v20);
  sub_100197F08(a2, v20);
  v19 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9, v10, v12);
  sub_1001842D0(v11, v10, v12);
  sub_1001842D0(v8, v7, v9);
  return (v19 & 1) != 0;
}

BOOL sub_100265934(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = a1;
  v5 = WORD1(a1);
  v6 = BYTE4(a1);
  v7 = BYTE5(a1);
  v8 = BYTE6(a1);
  result = 0;
  if ((a3 & 0x100) != 0)
  {
    if ((v4 & 0x100) == 0)
    {
      return result;
    }
  }

  else if ((v4 & 0x100) != 0 || ((a3 ^ v4) & 0x7F) != 0)
  {
    return result;
  }

  if (v5 == WORD1(a3) && v6 == BYTE4(a3) && v7 == BYTE5(a3) && v8 == BYTE6(a3) && a2 == a4)
  {
    return BYTE2(a2) == BYTE2(a4);
  }

  return result;
}

BOOL _s7CoreP2P12NANAttributeO8DatapathV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  *v30 = *(a1 + 3);
  v2 = *(a1 + 7);
  *&v30[4] = *(a1 + 7);
  v3 = *v30 == *(a2 + 3) && v2 == *(a2 + 7);
  if (!v3 || a1[9] != a2[9] || a1[10] != a2[10])
  {
    return 0;
  }

  v4 = a2[12];
  if (a1[12])
  {
    if (!a2[12])
    {
      return 0;
    }
  }

  else
  {
    if (a1[11] != a2[11])
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = a2[19];
  if (a1[19])
  {
    if ((a2[19] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[19])
    {
      return 0;
    }

    v6 = *(a1 + 13) | (*(a1 + 17) << 32);
    v7 = *(a2 + 13) | (*(a2 + 17) << 32);
    v8.i64[0] = 0xFFFFFFFFFFFFLL;
    v8.i64[1] = 0xFFFFFFFFFFFFLL;
    v9 = vandq_s8(vdupq_n_s64(v6), v8);
    v10 = vshlq_u64(v9, xmmword_1004817A0);
    v11 = vandq_s8(vdupq_n_s64(v7), v8);
    v12 = vshlq_u64(v11, xmmword_1004817A0);
    v13 = vshlq_u64(v11, xmmword_100481790);
    v30[0] = *(a1 + 13);
    *v9.i8 = vmovn_s64(vshlq_u64(v9, xmmword_100481790));
    *v10.i8 = vmovn_s64(v10);
    v10.i16[1] = v10.i16[2];
    v10.i16[2] = v9.i16[0];
    v10.i16[3] = v9.i16[2];
    *&v30[1] = vmovn_s16(v10).u32[0];
    v30[5] = BYTE5(v6);
    v29[0] = v7;
    *v9.i8 = vmovn_s64(v13);
    *v13.i8 = vmovn_s64(v12);
    v13.i16[1] = v13.i16[2];
    v13.i16[2] = v9.i16[0];
    v13.i16[3] = v9.i16[2];
    *&v29[1] = vmovn_s16(v13).u32[0];
    v29[5] = BYTE5(v7);
    if (*v30 != *v29 || *&v30[4] != *&v29[4])
    {
      return 0;
    }
  }

  v16 = *(a1 + 3);
  v15 = *(a1 + 4);
  v17 = *(a1 + 5);
  v19 = *(a2 + 3);
  v18 = *(a2 + 4);
  v20 = *(a2 + 5);
  if (v16 == 4)
  {
    if (v19 == 4)
    {
      sub_1002862DC(a1, v30);
      sub_1002862DC(a2, v30);
      sub_1001842D0(v16, v15, v17);
      return 1;
    }

    goto LABEL_30;
  }

  if (v19 == 4)
  {
LABEL_30:
    sub_1002862DC(a1, v30);
    sub_1002862DC(a2, v30);
    sub_1001842D0(v16, v15, v17);
    v24 = v19;
    v25 = v18;
    v26 = v20;
LABEL_31:
    sub_1001842D0(v24, v25, v26);
    return 0;
  }

  if (v16 != v19)
  {
    sub_1002862DC(a1, v30);
    sub_1002862DC(a2, v30);
    sub_1001842D0(v19, v18, v20);
    v24 = v16;
    v25 = v15;
    v26 = v17;
    goto LABEL_31;
  }

  sub_1002862DC(a1, v30);
  sub_1002862DC(a2, v30);
  v28 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v15, v17, v18, v20);
  sub_1001842D0(v19, v18, v20);
  sub_1001842D0(v16, v15, v17);
  return (v28 & 1) != 0;
}

uint64_t sub_100265CD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if ((a1 & 0x10000000000) == 0)
  {
    if ((a5 & 0x10000000000) != 0 || BYTE4(a1) != BYTE4(a5))
    {
      return 0;
    }

LABEL_7:
    if (a3)
    {
      if ((a7 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a7 & 1) != 0 || a2 != a6)
    {
      return 0;
    }

    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a4, a8);
  }

  if ((a5 & 0x10000000000) != 0)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_100265D30(unint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    if (a4 ^ a1) >> 32 || (a5)
    {
      return 0;
    }

    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a3, a6);
  }

  if (a5)
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a3, a6);
  }

  return 0;
}

unsigned __int16 *_s7CoreP2P12NANAttributeO16ElementContainerV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *result, unsigned __int16 *a2)
{
  v2 = *(a2 + 2);
  if (result[1])
  {
    if ((a2[1] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    v7 = *result;
    v8 = *a2;
    if ((v8 & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0)
      {
        return 0;
      }
    }

    else if (v7 & 0x100 | (v8 ^ v7) & 0x7F)
    {
      return 0;
    }
  }

  v3 = *(result + 1);
  v4 = *(a2 + 1);
  if (!v3)
  {
    if (v4)
    {
      return 0;
    }

LABEL_18:
    v9 = *(result + 3);
    v10 = *(a2 + 3);
    if (v9)
    {
      if (!v10)
      {
        return 0;
      }

      v11 = *(v9 + 16);
      if (v11 != *(v10 + 16))
      {
        return 0;
      }

      if (v11 && v9 != v10)
      {
        v12 = (v9 + 32);
        v13 = (v10 + 32);
        while (*v12 == *v13)
        {
          ++v12;
          ++v13;
          if (!--v11)
          {
            goto LABEL_26;
          }
        }

        return 0;
      }

LABEL_26:
      if (result[16] != a2[16])
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    v16 = *(a2 + 5);
    if (*(result + 5))
    {
      if (!v16)
      {
        return 0;
      }

      v17 = result[24];
      v18 = a2[24];
      v19 = result;
      v20 = a2;
      if ((sub_1000C2E80(*(result + 5), *(a2 + 5)) & 1) == 0)
      {
        return 0;
      }

      a2 = v20;
      result = v19;
      if (v17 != v18)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    v21 = *(a2 + 7);
    if (*(result + 7))
    {
      if (!v21)
      {
        return 0;
      }

      v22 = result[32];
      v23 = a2[32];
      v24 = result;
      v25 = a2;
      if ((sub_1000C2E80(*(result + 7), *(a2 + 7)) & 1) == 0)
      {
        return 0;
      }

      a2 = v25;
      result = v24;
      if (v22 != v23)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    v26 = *(a2 + 9);
    if (*(result + 9))
    {
      if (!v26)
      {
        return 0;
      }

      v27 = result[40];
      v28 = a2[40];
      v29 = result;
      v30 = a2;
      if ((sub_1000C2E80(*(result + 9), *(a2 + 9)) & 1) == 0)
      {
        return 0;
      }

      a2 = v30;
      result = v29;
      if (v27 != v28)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    v31 = *(a2 + 11);
    if (*(result + 11))
    {
      if (!v31)
      {
        return 0;
      }

      v32 = result[48];
      v33 = a2[48];
      v34 = result;
      v35 = a2;
      if ((sub_1000C2E80(*(result + 11), *(a2 + 11)) & 1) == 0)
      {
        return 0;
      }

      a2 = v35;
      result = v34;
      if (v32 != v33)
      {
        return 0;
      }

LABEL_60:
      v36 = *(result + 13);
      v37 = *(a2 + 13);

      return sub_1000C2E80(v36, v37);
    }

    if (!v31)
    {
      goto LABEL_60;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 16);
  if (v5 != *(v4 + 16))
  {
    return 0;
  }

  if (v5)
  {
    v6 = v3 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_11:
    if (result[8] != a2[8])
    {
      return 0;
    }

    goto LABEL_18;
  }

  v14 = (v3 + 32);
  v15 = (v4 + 32);
  while (v5)
  {
    if (*v14 != *v15)
    {
      return 0;
    }

    ++v14;
    ++v15;
    if (!--v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

BOOL _s7CoreP2P12NANAttributeO26ExtendedWLANInfrastructureV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LOBYTE(v16) = BYTE4(a1);
  HIBYTE(v16) = BYTE5(a1);
  LOBYTE(v13) = BYTE4(a4);
  HIBYTE(v13) = BYTE5(a4);
  if (a1 != a4 || v16 != v13)
  {
    return 0;
  }

  LOBYTE(v15) = BYTE6(a1);
  BYTE1(v15) = HIBYTE(a1);
  HIWORD(v15) = a2;
  LOBYTE(v17) = BYTE2(a2);
  HIBYTE(v17) = BYTE3(a2);
  LOBYTE(v12) = BYTE6(a4);
  BYTE1(v12) = HIBYTE(a4);
  HIWORD(v12) = a5;
  LOBYTE(v14) = BYTE2(a5);
  HIBYTE(v14) = BYTE3(a5);
  return v15 == v12 && v17 == v14 && BYTE4(a2) == BYTE4(a5) && (a5 ^ a2) >> 40 == 0 && a3 == a6;
}

BOOL sub_100266124(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LOBYTE(v14) = BYTE4(a1);
  HIBYTE(v14) = BYTE5(a1);
  LOBYTE(v11) = BYTE4(a4);
  HIBYTE(v11) = BYTE5(a4);
  if (a1 != a4 || v14 != v11)
  {
    return 0;
  }

  LOBYTE(v13) = BYTE6(a1);
  BYTE1(v13) = HIBYTE(a1);
  HIWORD(v13) = a2;
  LOBYTE(v15) = BYTE2(a2);
  HIBYTE(v15) = BYTE3(a2);
  LOBYTE(v10) = BYTE6(a4);
  BYTE1(v10) = HIBYTE(a4);
  HIWORD(v10) = a5;
  LOBYTE(v12) = BYTE2(a5);
  HIBYTE(v12) = BYTE3(a5);
  if (v13 != v10 || v15 != v12)
  {
    return 0;
  }

  return (HIDWORD(a2) & 0xFFFFFF) == (HIDWORD(a5) & 0xFFFFFF) && a3 == a6;
}

uint64_t sub_100266240(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  LOBYTE(v11) = BYTE4(a1);
  HIBYTE(v11) = BYTE5(a1);
  LOBYTE(v10) = BYTE4(a5);
  HIBYTE(v10) = BYTE5(a5);
  v8 = a1 == a5 && v11 == v10;
  if (!v8 || BYTE6(a1) != BYTE6(a5) || (a5 ^ a1) >> 56 || a2 != a6 || WORD1(a2) != WORD1(a6) || WORD2(a2) != WORD2(a6))
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8);
}

uint64_t _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V23__derived_struct_equalsySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 1) != *(a2 + 1) || (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 2), *(a1 + 3), *(a2 + 2), *(a2 + 3)) & 1) == 0 || (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 4), *(a1 + 5), *(a2 + 4), *(a2 + 5)) & 1) == 0 || *(a1 + 6) != *(a2 + 6) || *(a1 + 7) != *(a2 + 7) || (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 8), *(a1 + 9), *(a2 + 8), *(a2 + 9)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v6 = *(a2 + 10);
  v7 = *(a2 + 11);

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v5, v6, v7);
}

BOOL _s7CoreP2P12NANAttributeO17DatapathExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  LODWORD(v32) = *(a1 + 3);
  v2 = *(a1 + 7);
  WORD2(v32) = *(a1 + 7);
  v3 = v32 == *(a2 + 3) && v2 == *(a2 + 7);
  if (!v3 || a1[9] != a2[9] || a1[10] != a2[10])
  {
    return 0;
  }

  v4 = a2[12];
  if (a1[12])
  {
    if (!a2[12])
    {
      return 0;
    }
  }

  else
  {
    if (a1[11] != a2[11])
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = a2[19];
  if (a1[19])
  {
    if ((a2[19] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[19])
    {
      return 0;
    }

    v6 = *(a1 + 13) | (*(a1 + 17) << 32);
    v7 = *(a2 + 13) | (*(a2 + 17) << 32);
    v8.i64[0] = 0xFFFFFFFFFFFFLL;
    v8.i64[1] = 0xFFFFFFFFFFFFLL;
    v9 = vandq_s8(vdupq_n_s64(v6), v8);
    v10 = vshlq_u64(v9, xmmword_1004817A0);
    v11 = vandq_s8(vdupq_n_s64(v7), v8);
    v12 = vshlq_u64(v11, xmmword_1004817A0);
    v13 = vshlq_u64(v11, xmmword_100481790);
    LOBYTE(v32) = *(a1 + 13);
    *v9.i8 = vmovn_s64(vshlq_u64(v9, xmmword_100481790));
    *v10.i8 = vmovn_s64(v10);
    v10.i16[1] = v10.i16[2];
    v10.i16[2] = v9.i16[0];
    v10.i16[3] = v9.i16[2];
    *(&v32 + 1) = vmovn_s16(v10).u32[0];
    BYTE5(v32) = BYTE5(v6);
    LOBYTE(v30) = v7;
    *v9.i8 = vmovn_s64(v13);
    *v13.i8 = vmovn_s64(v12);
    v13.i16[1] = v13.i16[2];
    v13.i16[2] = v9.i16[0];
    v13.i16[3] = v9.i16[2];
    *(&v30 + 1) = vmovn_s16(v13).u32[0];
    BYTE5(v30) = BYTE5(v7);
    if (v32 != v30 || WORD2(v32) != WORD2(v30))
    {
      return 0;
    }
  }

  v35 = *(a1 + 24);
  v34 = *(a2 + 24);
  v15 = v35;
  v16 = v34;
  if (*(&v35 + 1) >> 60 == 15)
  {
    if (*(&v34 + 1) >> 60 == 15)
    {
      v17 = a1;
      v18 = a2;
      sub_100012400(&v35, &v32, &unk_100596890, &qword_10049F8A0);
      sub_100012400(&v34, &v32, &unk_100596890, &qword_10049F8A0);
      sub_100017554(v15, *(&v15 + 1));
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (*(&v34 + 1) >> 60 == 15)
  {
LABEL_30:
    sub_100012400(&v35, &v32, &unk_100596890, &qword_10049F8A0);
    sub_100012400(&v34, &v32, &unk_100596890, &qword_10049F8A0);
    sub_100017554(v15, *(&v15 + 1));
    sub_100017554(v16, *(&v16 + 1));
    return 0;
  }

  v17 = a1;
  v18 = a2;
  sub_100012400(&v35, &v32, &unk_100596890, &qword_10049F8A0);
  sub_100012400(&v34, &v32, &unk_100596890, &qword_10049F8A0);
  v19 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v15, *(&v15 + 1), v16, *(&v16 + 1));
  sub_100017554(v16, *(&v16 + 1));
  sub_100017554(v15, *(&v15 + 1));
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v32 = *(v17 + 40);
  v20 = *(v17 + 7);
  v33 = v20;
  v30 = *(v18 + 40);
  v21 = *(v18 + 7);
  v31 = v21;
  v22 = v32;
  v23 = v30;
  if (v32 == 4)
  {
    if (v30 == 4)
    {
      sub_100012400(&v32, v29, &qword_10058F2E0, qword_100491AC0);
      sub_100012400(&v30, v29, &qword_10058F2E0, qword_100491AC0);
      sub_1001842D0(v22, *(&v22 + 1), v20);
      return 1;
    }

    goto LABEL_36;
  }

  if (v30 == 4)
  {
LABEL_36:
    sub_100012400(&v32, v29, &qword_10058F2E0, qword_100491AC0);
    sub_100012400(&v30, v29, &qword_10058F2E0, qword_100491AC0);
    sub_1001842D0(v22, *(&v22 + 1), v20);
    v26 = *(&v23 + 1);
    v25 = v23;
    v27 = v21;
LABEL_37:
    sub_1001842D0(v25, v26, v27);
    return 0;
  }

  if (v32 != v30)
  {
    sub_100012400(&v32, v29, &qword_10058F2E0, qword_100491AC0);
    sub_100012400(&v30, v29, &qword_10058F2E0, qword_100491AC0);
    sub_1001842D0(v23, *(&v23 + 1), v21);
    v26 = *(&v22 + 1);
    v25 = v22;
    v27 = v20;
    goto LABEL_37;
  }

  sub_100012400(&v32, v29, &qword_10058F2E0, qword_100491AC0);
  sub_100012400(&v30, v29, &qword_10058F2E0, qword_100491AC0);
  v28 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v22 + 1), v20, *(&v23 + 1), v21);
  sub_1001842D0(v23, *(&v23 + 1), v21);
  sub_1001842D0(v22, *(&v22 + 1), v20);
  return (v28 & 1) != 0;
}

BOOL _s7CoreP2P12NANAttributeO20PairingBootstrappingV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v23 = v2;
  v24 = v3;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v7 = *(a1 + 3);
  v6 = *(a1 + 4);
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  v11 = *(a2 + 3);
  v10 = *(a2 + 4);
  if (v6 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      v13 = a1;
      sub_10012A628(a1, v22);
      v14 = a2;
      sub_10012A628(a2, v22);
LABEL_7:
      sub_1000449CC(v5, v4, v7, v6);
      return *(v13 + 20) == *(v14 + 40);
    }

    goto LABEL_10;
  }

  if (v10 >> 60 != 15)
  {
    v14 = a2;
    if (v4)
    {
      if ((v8 & 1) == 0)
      {
LABEL_18:
        sub_10012A628(a1, v22);
        sub_10012A628(v14, v22);
        sub_1000449CC(v9, v8, v11, v10);
LABEL_19:
        v17 = v5;
        v18 = v4;
        v19 = v7;
        v20 = v6;
        goto LABEL_20;
      }
    }

    else if ((v8 & 1) != 0 || v5 != v9)
    {
      goto LABEL_18;
    }

    v13 = a1;
    sub_10012A628(a1, v22);
    sub_10012A628(v14, v22);
    v21 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v11, v10);
    sub_1000449CC(v9, v8, v11, v10);
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_10:
  sub_10012A628(a1, v22);
  sub_10012A628(a2, v22);
  sub_1000449CC(v5, v4, v7, v6);
  v17 = v9;
  v18 = v8;
  v19 = v11;
  v20 = v10;
LABEL_20:
  sub_1000449CC(v17, v18, v19, v20);
  return 0;
}

BOOL sub_100266B2C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  result = 0;
  LOBYTE(v10) = BYTE1(a1);
  BYTE1(v10) = BYTE2(a1);
  BYTE2(v10) = BYTE3(a1);
  HIBYTE(v10) = BYTE4(a1);
  LOBYTE(v11) = BYTE5(a1);
  HIBYTE(v11) = BYTE6(a1);
  LOBYTE(v8) = BYTE1(a3);
  BYTE1(v8) = BYTE2(a3);
  BYTE2(v8) = BYTE3(a3);
  HIBYTE(v8) = BYTE4(a3);
  LOBYTE(v9) = BYTE5(a3);
  HIBYTE(v9) = BYTE6(a3);
  v7 = v10 != v8 || v11 != v9;
  if (!((a3 ^ a1) >> 56) && !v7 && a2 == a4 && BYTE1(a2) == BYTE1(a4))
  {
    return (a2 >> 16) == (a4 >> 16);
  }

  return result;
}

BOOL sub_100266C4C(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  LOBYTE(v12) = BYTE1(a1);
  BYTE1(v12) = BYTE2(a1);
  BYTE2(v12) = BYTE3(a1);
  HIBYTE(v12) = BYTE4(a1);
  LOBYTE(v13) = BYTE5(a1);
  HIBYTE(v13) = BYTE6(a1);
  LOBYTE(v10) = BYTE1(a5);
  BYTE1(v10) = BYTE2(a5);
  BYTE2(v10) = BYTE3(a5);
  HIBYTE(v10) = BYTE4(a5);
  LOBYTE(v11) = BYTE5(a5);
  HIBYTE(v11) = BYTE6(a5);
  v8 = v12 == v10 && v13 == v11;
  return v8 && a2 == a6 && ((a2 ^ a6) & 0x10000) == 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8) & 1) != 0;
}

uint64_t sub_100266D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v7) = BYTE4(a1);
  HIBYTE(v7) = BYTE5(a1);
  LOBYTE(v6) = BYTE4(a3);
  HIBYTE(v6) = BYTE5(a3);
  v4 = a1 == a3 && v7 == v6;
  if (!v4 || BYTE6(a1) != BYTE6(a3))
  {
    return 0;
  }

  return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a2, a4);
}

BOOL sub_100266E38(_BOOL8 result, __int16 a2, uint64_t a3, __int16 a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return a2 == a4 && (a4 ^ a2) < 0x100u;
  }

  else
  {
    v6 = (result + 32);
    v7 = (a3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        return a2 == a4 && (a4 ^ a2) < 0x100u;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100266EAC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a1 == a5 && !((a5 ^ a1) >> 32) && a2 == a6 && a3 == a7 && BYTE1(a3) == BYTE1(a7))
  {
    v8 = BYTE3(a7);
    if ((a3 & 0x1000000) != 0)
    {
      if (!BYTE3(a7))
      {
        return v8;
      }
    }

    else
    {
      if (BYTE2(a3) != BYTE2(a7))
      {
        LOBYTE(v8) = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    if (BYTE5(a4) == 255)
    {
      if (BYTE5(a8) != 255)
      {
        return 0;
      }
    }

    else if (BYTE5(a8) == 255 || !sub_100237BFC(__PAIR64__(a4, HIDWORD(a3)), BYTE4(a4) | (((HIDWORD(a4) >> 8) & 1) << 8), __SPAIR64__(a8, HIDWORD(a7)), BYTE4(a8) | (((HIDWORD(a8) >> 8) & 1) << 8)))
    {
      return 0;
    }

    return 1;
  }

  return v8;
}

BOOL _s7CoreP2P12NANAttributeO18WLANInfrastructureV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 4);
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v9 = *(a1 + 10);
  v3 = 0;
  v4 = *(a1 + 6) == *(a2 + 6) && *(a1 + 10) == *(a2 + 10);
  if (v4 && *(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17))
  {
    if ((*(a1 + 18) ^ *(a2 + 18)) & 1) == 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
    {
      return *(a1 + 40) == *(a2 + 40);
    }

    return 0;
  }

  return v3;
}

uint64_t _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO21__derived_enum_equalsySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0) - 8) + 64);
  __chkstk_darwin();
  v54[0] = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0) - 8) + 64);
  __chkstk_darwin();
  v8 = (v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = (v54 - v9);
  __chkstk_darwin();
  v12 = (v54 - v11);
  __chkstk_darwin();
  v14 = v54 - v13;
  v15 = *(*(sub_10005DC58(&qword_1005935F0, &qword_1004ABA30) - 8) + 64);
  v16 = __chkstk_darwin();
  v18 = v54 - v17;
  v19 = (v54 + *(v16 + 56) - v17);
  sub_1002774DC(a1, v54 - v17, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  sub_1002774DC(a2, v19, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002774DC(v18, v10, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
      v22 = v10[1];
      v21 = v10[2];
      v24 = v10[3];
      v23 = v10[4];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v25 = *v10;
        v26 = *v19;
        v27 = *(v19 + 1);
        v28 = *(v19 + 2);
        v29 = *(v19 + 3);
        v30 = *(v19 + 4);
        if (v25 == v26 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v22, v21, v27, v28) & 1) != 0)
        {
          v31 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v24, v23, v29, v30);
          sub_1000124C8(v27, v28);
          sub_1000124C8(v29, v30);
          v32 = v22;
          v33 = v21;
          goto LABEL_21;
        }

        sub_1000124C8(v27, v28);
        sub_1000124C8(v29, v30);
        v51 = v22;
        v52 = v21;
        goto LABEL_31;
      }

      v44 = v22;
      v45 = v21;
    }

    else
    {
      sub_1002774DC(v18, v8, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
      v37 = v8[1];
      v36 = v8[2];
      v24 = v8[3];
      v23 = v8[4];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v38 = *v8;
        v39 = *v19;
        v40 = *(v19 + 1);
        v41 = *(v19 + 2);
        v42 = *(v19 + 3);
        v43 = *(v19 + 4);
        if (v38 == v39 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v37, v36, v40, v41) & 1) != 0)
        {
          v31 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v24, v23, v42, v43);
          sub_1000124C8(v40, v41);
          sub_1000124C8(v42, v43);
          v32 = v37;
          v33 = v36;
LABEL_21:
          sub_1000124C8(v32, v33);
          sub_1000124C8(v24, v23);
          if (v31)
          {
            sub_100277544(v18, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
            v35 = 1;
            return v35 & 1;
          }

LABEL_32:
          sub_100277544(v18, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
          goto LABEL_33;
        }

        sub_1000124C8(v40, v41);
        sub_1000124C8(v42, v43);
        v51 = v37;
        v52 = v36;
LABEL_31:
        sub_1000124C8(v51, v52);
        sub_1000124C8(v24, v23);
        goto LABEL_32;
      }

      v44 = v37;
      v45 = v36;
    }

    sub_1000124C8(v44, v45);
    sub_1000124C8(v24, v23);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1002774DC(v18, v12, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_26;
    }

    v35 = *v12 == *v19 && *(v12 + 1) == *(v19 + 1);
  }

  else
  {
    sub_1002774DC(v18, v14, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100277544(v14, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
LABEL_26:
      sub_100016290(v18, &qword_1005935F0, &qword_1004ABA30);
LABEL_33:
      v35 = 0;
      return v35 & 1;
    }

    v46 = v54[0];
    sub_100262DC8(v19, v54[0], type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v47 = v55;
    v48 = v56;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v49 = v55;
    v50 = v56;
    v35 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v47, v48, v55, v56);
    sub_1000124C8(v49, v50);
    sub_1000124C8(v47, v48);
    sub_100277544(v46, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    sub_100277544(v14, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
  }

  sub_100277544(v18, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  return v35 & 1;
}

uint64_t _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV23__derived_struct_equalsySbAI_AItFZ_0(__int16 *a1, __int16 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100480F30;
  *(v8 + 32) = v4;
  *(v8 + 34) = v5;
  v9 = sub_10002D874(v8);
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100480F30;
  *(v12 + 32) = v6;
  *(v12 + 34) = v7;
  v13 = sub_10002D874(v12);
  v15 = v14;

  v16 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v11, v13, v15);
  sub_1000124C8(v13, v15);
  sub_1000124C8(v9, v11);
  if ((v16 & 1) == 0 || (0x252409u >> (8 * *(a1 + 3))) != (0x252409u >> (8 * *(a2 + 3))))
  {
    return 0;
  }

  v17 = *(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0) + 24);

  return _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO21__derived_enum_equalsySbAK_AKtFZ_0(a1 + v17, a2 + v17);
}

uint64_t _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (((a1[8] ^ a2[8]) & 1) == 0 && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6) && *(a1 + 2) == *(a2 + 2))
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v5 = *(a1 + 7);
    v4 = *(a1 + 8);
    v17 = *(a1 + 10);
    v18 = *(a1 + 9);
    v15 = *(a1 + 12);
    v16 = *(a1 + 11);
    v6 = *(a2 + 5);
    v7 = *(a2 + 6);
    v9 = *(a2 + 7);
    v8 = *(a2 + 8);
    v10 = *(a2 + 9);
    v11 = *(a2 + 10);
    v13 = *(a2 + 12);
    v14 = *(a2 + 11);
    if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 3), *(a1 + 4), *(a2 + 3), *(a2 + 4)) & 1) != 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v6, v7) & 1) != 0 && v5 == v9 && v4 == v8 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v17, v10, v11) & 1) != 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v16, v15, v14, v13))
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_100267948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v11) = BYTE4(a1);
  BYTE1(v11) = BYTE5(a1);
  BYTE2(v11) = BYTE6(a1);
  HIBYTE(v11) = HIBYTE(a1);
  LOBYTE(v10) = BYTE4(a3);
  BYTE1(v10) = BYTE5(a3);
  BYTE2(v10) = BYTE6(a3);
  HIBYTE(v10) = HIBYTE(a3);
  return v11 == v10 && a2 == a4 && BYTE2(a2) == BYTE2(a4) && BYTE3(a2) == BYTE3(a4) && BYTE4(a2) == BYTE4(a4) && BYTE5(a2) == BYTE5(a4);
}

BOOL _s7CoreP2P12NANAttributeO4IBSSV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 4);
  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  result = 0;
  if (v2)
  {
    v6 = *(a1 + 10);
    v3 = *(a1 + 6) == *(a2 + 6) && *(a1 + 10) == *(a2 + 10);
    if (v3 && *(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17) && ((*(a1 + 18) ^ *(a2 + 18)) & 1) == 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s7CoreP2P12NANAttributeO4MeshV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 4);
  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  if (!v2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || ((*(a1 + 10) ^ *(a2 + 10)) & 1) != 0 || (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7, v8, v9);
}

BOOL sub_100267C38(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v10) = BYTE2(a1);
  BYTE1(v10) = BYTE3(a1);
  BYTE2(v10) = BYTE4(a1);
  HIBYTE(v10) = BYTE5(a1);
  LOBYTE(v11) = BYTE6(a1);
  HIBYTE(v11) = HIBYTE(a1);
  LOBYTE(v8) = BYTE2(a3);
  BYTE1(v8) = BYTE3(a3);
  BYTE2(v8) = BYTE4(a3);
  HIBYTE(v8) = BYTE5(a3);
  LOBYTE(v9) = BYTE6(a3);
  HIBYTE(v9) = HIBYTE(a3);
  v5 = v10 != v8 || v11 != v9;
  v6 = a2 == a4 && (a4 ^ a2) >> 32 == 0;
  return !v5 && v6;
}

BOOL _s7CoreP2P12NANAttributeO23CustomDeviceInformationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v5 = *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);

  return _s7CoreP2P12NANAttributeO23CustomDeviceInformationV0D10AttributesV23__derived_struct_equalsySbAG_AGtFZ_0(&a1[v5], &a2[v5]);
}

uint64_t _s7CoreP2P12NANAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v358 = a2;
  *&v357 = a1;
  v3 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation(0) - 8) + 64);
  __chkstk_darwin();
  v318 = &v317 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = type metadata accessor for NANAttribute(0);
  v5 = *(*(v356 - 8) + 64);
  __chkstk_darwin();
  v354 = &v317 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v353 = &v317 - v7;
  __chkstk_darwin();
  v355 = &v317 - v8;
  __chkstk_darwin();
  v351 = (&v317 - v9);
  __chkstk_darwin();
  v350 = (&v317 - v10);
  __chkstk_darwin();
  v349 = (&v317 - v11);
  __chkstk_darwin();
  v348 = (&v317 - v12);
  __chkstk_darwin();
  v347 = (&v317 - v13);
  __chkstk_darwin();
  v345 = (&v317 - v14);
  __chkstk_darwin();
  v346 = &v317 - v15;
  __chkstk_darwin();
  v352 = &v317 - v16;
  __chkstk_darwin();
  v343 = (&v317 - v17);
  __chkstk_darwin();
  v344 = &v317 - v18;
  __chkstk_darwin();
  v341 = (&v317 - v19);
  __chkstk_darwin();
  v342 = &v317 - v20;
  __chkstk_darwin();
  v340 = &v317 - v21;
  __chkstk_darwin();
  v339 = &v317 - v22;
  __chkstk_darwin();
  v337 = (&v317 - v23);
  __chkstk_darwin();
  v335 = (&v317 - v24);
  __chkstk_darwin();
  v336 = &v317 - v25;
  __chkstk_darwin();
  v334 = &v317 - v26;
  __chkstk_darwin();
  v338 = &v317 - v27;
  __chkstk_darwin();
  v333 = &v317 - v28;
  __chkstk_darwin();
  v332 = (&v317 - v29);
  __chkstk_darwin();
  v330 = (&v317 - v30);
  __chkstk_darwin();
  v331 = &v317 - v31;
  __chkstk_darwin();
  v328 = (&v317 - v32);
  __chkstk_darwin();
  v329 = &v317 - v33;
  __chkstk_darwin();
  v326 = &v317 - v34;
  __chkstk_darwin();
  v327 = (&v317 - v35);
  __chkstk_darwin();
  v324 = &v317 - v36;
  __chkstk_darwin();
  v325 = &v317 - v37;
  __chkstk_darwin();
  v323 = &v317 - v38;
  __chkstk_darwin();
  v322 = &v317 - v39;
  __chkstk_darwin();
  v321 = (&v317 - v40);
  __chkstk_darwin();
  v320 = &v317 - v41;
  __chkstk_darwin();
  v319 = (&v317 - v42);
  __chkstk_darwin();
  v44 = (&v317 - v43);
  __chkstk_darwin();
  v46 = (&v317 - v45);
  __chkstk_darwin();
  v48 = (&v317 - v47);
  __chkstk_darwin();
  v50 = (&v317 - v49);
  __chkstk_darwin();
  v52 = &v317 - v51;
  __chkstk_darwin();
  v54 = &v317 - v53;
  v55 = *(*(sub_10005DC58(&qword_100593570, &qword_1004AB9F0) - 8) + 64);
  v56 = __chkstk_darwin();
  v58 = &v317 - v57;
  v59 = &v317 + *(v56 + 56) - v57;
  sub_1002774DC(v357, &v317 - v57, type metadata accessor for NANAttribute);
  *&v357 = v59;
  sub_1002774DC(v358, v59, type metadata accessor for NANAttribute);
  v358 = v58;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = v358;
      sub_1002774DC(v358, v52, type metadata accessor for NANAttribute);
      v2.i32[0] = *(v52 + 2);
      v171 = v52[6];
      v172 = v52[7];
      v173 = v52[8];
      v174 = *(v52 + 3);
      v175 = v357;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_237;
      }

      if (*v52 == *v175 && v52[1] == v175[1])
      {
        v176 = vmovl_u8(v2).u64[0];
        v177 = *(v175 + 3);
        v178 = v175[8];
        v179 = *(v175 + 3);
        LODWORD(v365) = vuzp1_s8(v176, v176).u32[0];
        BYTE4(v365) = v171;
        BYTE5(v365) = v172;
        v180 = v365 == *(v175 + 2) && WORD2(v365) == v179;
        if (v180 && v173 == v178 && v174 == v177)
        {
          goto LABEL_269;
        }
      }

      goto LABEL_273;
    case 2u:
      v60 = v358;
      sub_1002774DC(v358, v50, type metadata accessor for NANAttribute);
      v69 = *v50;
      v70 = v357;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_59;
      }

      goto LABEL_201;
    case 3u:
      v60 = v358;
      sub_1002774DC(v358, v48, type metadata accessor for NANAttribute);
      v158 = v48[3];
      v360[1] = v48[2];
      v361 = v158;
      v362 = v48[4];
      v159 = v48[1];
      v359 = *v48;
      v360[0] = v159;
      v160 = v357;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v161 = v160[3];
        v366[1] = v160[2];
        v367 = v161;
        v368 = v160[4];
        v162 = v160[1];
        v365 = *v160;
        v366[0] = v162;
        v77 = _s7CoreP2P12NANAttributeO17ServiceDescriptorV23__derived_struct_equalsySbAE_AEtFZ_0(&v359, &v365);
        sub_100197EB4(&v365);
        sub_100197EB4(&v359);
        goto LABEL_213;
      }

      sub_100197EB4(&v359);
      goto LABEL_237;
    case 4u:
      v60 = v358;
      sub_1002774DC(v358, v46, type metadata accessor for NANAttribute);
      v115 = v357;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_237;
      }

      v116 = *v46 == *v115;
      goto LABEL_107;
    case 5u:
      v60 = v358;
      sub_1002774DC(v358, v44, type metadata accessor for NANAttribute);
      v215 = v44[1];
      v365 = *v44;
      v366[0] = v215;
      *(v366 + 9) = *(v44 + 25);
      v216 = v357;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        sub_10027A24C(&v365);
        goto LABEL_237;
      }

      v217 = v216[1];
      v359 = *v216;
      v360[0] = v217;
      *(v360 + 9) = *(v216 + 25);
      LODWORD(v372[0]) = v365;
      v218 = v365 == v359 && WORD2(v365) == WORD2(v359);
      if (v218 && ((LODWORD(v372[0]) = *(&v365 + 6), *(&v365 + 6) == *(&v359 + 6)) ? (v219 = WORD5(v365) == WORD5(v359)) : (v219 = 0), v219 && LOBYTE(v366[0]) == LOBYTE(v360[0]) && BYTE1(v366[0]) == BYTE1(v360[0]) && ((BYTE2(v366[0]) ^ BYTE2(v360[0])) & 1) == 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v366[0] + 1), *&v366[1], *(&v360[0] + 1), *&v360[1]) & 1) != 0))
      {
        sub_10027A24C(&v365);
        sub_10027A24C(&v359);
        if (BYTE8(v366[1]) == BYTE8(v360[1]))
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_10027A24C(&v359);
        sub_10027A24C(&v365);
      }

      goto LABEL_273;
    case 6u:
      v60 = v358;
      v230 = v319;
      sub_1002774DC(v358, v319, type metadata accessor for NANAttribute);
      v231 = v230[1];
      v365 = *v230;
      v366[0] = v231;
      v232 = v357;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_10027A21C(&v365);
        goto LABEL_237;
      }

      v233 = v232[1];
      v359 = *v232;
      v360[0] = v233;
      if (v365 == v359 && ((LODWORD(v372[0]) = *(&v365 + 1), *(&v365 + 1) == *(&v359 + 1)) ? (v234 = *(&v365 + 5) == *(&v359 + 5)) : (v234 = 0), v234 && BYTE8(v365) == BYTE8(v359) && BYTE9(v365) == BYTE9(v359) && ((BYTE10(v365) ^ BYTE10(v359)) & 1) == 0))
      {
        v235 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*&v366[0], *(&v366[0] + 1), *&v360[0], *(&v360[0] + 1));
        sub_10027A21C(&v359);
        sub_10027A21C(&v365);
        if (v235)
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_10027A21C(&v359);
        sub_10027A21C(&v365);
      }

      goto LABEL_273;
    case 7u:
      v163 = v320;
      sub_1002774DC(v358, v320, type metadata accessor for NANAttribute);
      v164 = *(v163 + 16);
      v365 = *v163;
      v366[0] = v164;
      *&v366[1] = *(v163 + 32);
      v165 = v357;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        sub_10027A1EC(&v365);
        v60 = v358;
        goto LABEL_237;
      }

      v166 = v165[1];
      v359 = *v165;
      v360[0] = v166;
      *&v360[1] = *(v165 + 4);
      LODWORD(v372[0]) = v365;
      v167 = v365 == v359 && WORD2(v365) == WORD2(v359);
      if (!v167 || ((LODWORD(v372[0]) = *(&v365 + 6), *(&v365 + 6) == *(&v359 + 6)) ? (v168 = WORD5(v365) == WORD5(v359)) : (v168 = 0), !v168 || LOBYTE(v366[0]) != LOBYTE(v360[0]) || BYTE1(v366[0]) != BYTE1(v360[0]) || ((BYTE2(v366[0]) ^ BYTE2(v360[0])) & 1) != 0))
      {
        sub_10027A1EC(&v359);
        sub_10027A1EC(&v365);
        goto LABEL_246;
      }

      v169 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v366[0] + 1), *&v366[1], *(&v360[0] + 1), *&v360[1]);
      sub_10027A1EC(&v359);
      sub_10027A1EC(&v365);
      v170 = v358;
      if (v169)
      {
        goto LABEL_270;
      }

      goto LABEL_274;
    case 8u:
      v60 = v358;
      v245 = v321;
      sub_1002774DC(v358, v321, type metadata accessor for NANAttribute);
      v246 = v245[1];
      v365 = *v245;
      v366[0] = v246;
      v366[1] = v245[2];
      v247 = v357;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_10027A1BC(&v365);
        goto LABEL_237;
      }

      v248 = v247[1];
      v359 = *v247;
      v360[0] = v248;
      v360[1] = v247[2];
      LODWORD(v372[0]) = v365;
      v249 = v365 == v359 && WORD2(v365) == WORD2(v359);
      if (v249 && BYTE8(v365) == BYTE8(v359) && BYTE9(v365) == BYTE9(v359) && ((BYTE10(v365) ^ BYTE10(v359)) & 1) == 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*&v366[0], *(&v366[0] + 1), *&v360[0], *(&v360[0] + 1)) & 1) != 0)
      {
        v250 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*&v366[1], *(&v366[1] + 1), *&v360[1], *(&v360[1] + 1));
        sub_10027A1BC(&v359);
        sub_10027A1BC(&v365);
        if (v250)
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_10027A1BC(&v359);
        sub_10027A1BC(&v365);
      }

      goto LABEL_273;
    case 9u:
      v60 = v358;
      v123 = v322;
      sub_1002774DC(v358, v322, type metadata accessor for NANAttribute);
      v124 = v123[1];
      v125 = v123[2];
      v127 = *(v123 + 1);
      v126 = *(v123 + 2);
      v128 = v357;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v312 = v127;
        goto LABEL_233;
      }

      if (*v123 != *v128 || v124 != v128[1] || ((v125 ^ v128[2]) & 1) != 0)
      {
        sub_1000124C8(*(v128 + 1), *(v128 + 2));
        v314 = v127;
        goto LABEL_250;
      }

      v129 = *(v128 + 1);
      v130 = *(v128 + 2);
      v131 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v127, v126, v129, v130);
      sub_1000124C8(v129, v130);
      sub_1000124C8(v127, v126);
      if (v131)
      {
        goto LABEL_269;
      }

      goto LABEL_273;
    case 0xAu:
      v60 = v358;
      v240 = v323;
      sub_1002774DC(v358, v323, type metadata accessor for NANAttribute);
      v241 = *(v240 + 1);
      v242 = v357;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_201;
      }

      v243 = *v242;
      v244 = *(v242 + 1);
      if (*v240 != v243)
      {
        goto LABEL_244;
      }

      v190 = sub_1000BD2D0(v241, v244);
      goto LABEL_179;
    case 0xBu:
      v60 = v358;
      v112 = v325;
      sub_1002774DC(v358, v325, type metadata accessor for NANAttribute);
      v61 = v357;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_237;
      }

      v62 = v112[1];
      v63 = *v112;
      goto LABEL_37;
    case 0xCu:
      v60 = v358;
      v120 = v324;
      sub_1002774DC(v358, v324, type metadata accessor for NANAttribute);
      v365 = *v120;
      *&v366[0] = *(v120 + 16);
      v121 = v357;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        sub_10027A18C(&v365);
        goto LABEL_237;
      }

      v359 = *v121;
      *&v360[0] = *(v121 + 2);
      LODWORD(v372[0]) = v365;
      if (v365 != v359 || WORD2(v365) != WORD2(v359))
      {
        sub_10027A18C(&v359);
        sub_10027A18C(&v365);
        goto LABEL_273;
      }

      v315 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v365 + 1), *&v366[0], *(&v359 + 1), *&v360[0]);
      sub_10027A18C(&v359);
      sub_10027A18C(&v365);
      if ((v315 & 1) == 0)
      {
        goto LABEL_273;
      }

      goto LABEL_269;
    case 0xDu:
      v60 = v358;
      v228 = v327;
      sub_1002774DC(v358, v327, type metadata accessor for NANAttribute);
      v229 = v357;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_237;
      }

      v157 = sub_100265620((*(v228 + 5) << 40) | (*(v228 + 4) << 32) | *v228, *(v228 + 1), *(v228 + 2), *v229 | (*(v229 + 4) << 32) | (*(v229 + 5) << 40), *(v229 + 1), *(v229 + 2));
      goto LABEL_212;
    case 0xEu:
      v60 = v358;
      v101 = v326;
      sub_1002774DC(v358, v326, type metadata accessor for NANAttribute);
      v102 = *(v101 + 16);
      v359 = *v101;
      v360[0] = v102;
      *&v360[1] = *(v101 + 32);
      v103 = v357;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v104 = v103[1];
        v365 = *v103;
        v366[0] = v104;
        *&v366[1] = *(v103 + 4);
        v77 = _s7CoreP2P12NANAttributeO26ServiceDescriptorExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(&v359, &v365);
        sub_100277A14(&v365);
        sub_100277A14(&v359);
        goto LABEL_213;
      }

      sub_100277A14(&v359);
      goto LABEL_237;
    case 0xFu:
      v60 = v358;
      v146 = v329;
      sub_1002774DC(v358, v329, type metadata accessor for NANAttribute);
      v147 = v357;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_237;
      }

      v148 = *v147;
      v149 = *(v147 + 1);
      v150 = *(v146 + 4) | (v146[10] << 16);
      v151 = v147[4];
      v152 = v147[5];
      v153 = v147[6];
      v154 = *(v147 + 4);
      v155 = v147[10];
      v156 = *v146 | (v146[6] << 48) | (v146[5] << 40) | (v146[4] << 32) | (*(v146 + 1) << 16) | ((v146[1] & 1) << 8);
      LOBYTE(v365) = v147[1] & 1;
      v157 = sub_100265934(v156, v150, v148 | (v149 << 16) | (v151 << 32) | (v152 << 40) | (v153 << 48) | (v365 << 8), v154 | (v155 << 16));
      goto LABEL_212;
    case 0x10u:
      v60 = v358;
      v97 = v328;
      sub_1002774DC(v358, v328, type metadata accessor for NANAttribute);
      v98 = v97[1];
      v359 = *v97;
      v360[0] = v98;
      v360[1] = v97[2];
      v99 = v357;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v100 = v99[1];
        v365 = *v99;
        v366[0] = v100;
        v366[1] = v99[2];
        v77 = _s7CoreP2P12NANAttributeO8DatapathV23__derived_struct_equalsySbAE_AEtFZ_0(&v359, &v365);
        sub_10027A15C(&v365);
        sub_10027A15C(&v359);
        goto LABEL_213;
      }

      sub_10027A15C(&v359);
      goto LABEL_237;
    case 0x11u:
      v60 = v358;
      v184 = v331;
      sub_1002774DC(v358, v331, type metadata accessor for NANAttribute);
      v185 = *(v184 + 1);
      v186 = *(v184 + 1);
      v187 = v357;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_201;
      }

      v188 = *v184;
      v189 = *(v187 + 1);
      if (v188 != *v187 || v185 != *(v187 + 1))
      {
        goto LABEL_244;
      }

      v190 = sub_1000BD70C(v186, *(v187 + 1));
      goto LABEL_179;
    case 0x12u:
      v60 = v358;
      v236 = v330;
      sub_1002774DC(v358, v330, type metadata accessor for NANAttribute);
      v365 = *v236;
      v237 = v357;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        sub_10027A12C(&v365);
        goto LABEL_237;
      }

      v359 = *v237;
      LODWORD(v372[0]) = v365;
      v238 = v365 == v359 && WORD2(v365) == WORD2(v359);
      if (v238 && BYTE6(v365) == BYTE6(v359))
      {
        v239 = _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(*(&v365 + 1), *(&v359 + 1));
        sub_10027A12C(&v359);
        sub_10027A12C(&v365);
        if (v239)
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_10027A12C(&v359);
        sub_10027A12C(&v365);
      }

      goto LABEL_273;
    case 0x13u:
      v60 = v358;
      v281 = v332;
      sub_1002774DC(v358, v332, type metadata accessor for NANAttribute);
      v282 = v281[1];
      v365 = *v281;
      v366[0] = v282;
      v283 = v357;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v284 = v283[1];
        v359 = *v283;
        v360[0] = v284;
        LOBYTE(v372[0]) = BYTE5(v359);
        LOBYTE(v371[0]) = v284;
        v77 = sub_100265CD8(v365 | (BYTE4(v365) << 32) | (BYTE5(v365) << 40), *(&v365 + 1), v366[0], *(&v366[0] + 1), v359 | (BYTE4(v359) << 32) | (BYTE5(v359) << 40), *(&v359 + 1), v284, *(&v284 + 1));
        sub_10027A0FC(&v365);
        sub_10027A0FC(&v359);
        goto LABEL_213;
      }

      sub_10027A0FC(&v365);
      goto LABEL_237;
    case 0x14u:
      v60 = v358;
      v213 = v333;
      sub_1002774DC(v358, v333, type metadata accessor for NANAttribute);
      v214 = v357;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_237;
      }

      v62 = *(v213 + 1);
      v63 = *v213;
      v113 = *v214;
      v114 = *(v214 + 1);
      goto LABEL_104;
    case 0x15u:
      v60 = v358;
      v220 = v338;
      sub_1002774DC(v358, v338, type metadata accessor for NANAttribute);
      v221 = v220[18];
      v222 = v220[19];
      v223 = *(v220 + 20);
      v224 = *(v220 + 14);
      v225 = v357;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_237;
      }

      if (*v220 != *v225 || v220[1] != v225[1] || *(v220 + 1) != *(v225 + 1) || *(v220 + 2) != *(v225 + 2) || *(v220 + 3) != *(v225 + 3) || v220[16] != v225[16] || v220[17] != v225[17])
      {
        goto LABEL_273;
      }

      v226 = v225[19];
      v227 = *(v225 + 14);
      if (v222)
      {
        if (!v225[19])
        {
          goto LABEL_273;
        }
      }

      else
      {
        if (v221 != v225[18])
        {
          v226 = 1;
        }

        if (v226)
        {
          goto LABEL_273;
        }
      }

      if (v224 >> 8 <= 0xFE)
      {
        if (v227 >> 8 <= 0xFE && sub_100237BFC(v223, v224 & 0x1FF, *(v225 + 20), v227 & 0x1FF))
        {
          goto LABEL_269;
        }
      }

      else if (v227 >> 8 > 0xFE)
      {
        goto LABEL_269;
      }

      goto LABEL_273;
    case 0x16u:
      v60 = v358;
      v272 = v334;
      sub_1002774DC(v358, v334, type metadata accessor for NANAttribute);
      v273 = *(v272 + 1);
      v274 = v272[4];
      v275 = v357;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_237;
      }

      if (*v272 != *v275)
      {
        goto LABEL_273;
      }

      v276 = v275[4];
      if (v274)
      {
        if (v275[4])
        {
          goto LABEL_269;
        }
      }

      else
      {
        if (v273 != *(v275 + 1))
        {
          v276 = 1;
        }

        if ((v276 & 1) == 0)
        {
          goto LABEL_269;
        }
      }

      goto LABEL_273;
    case 0x17u:
      v60 = v358;
      v291 = v336;
      sub_1002774DC(v358, v336, type metadata accessor for NANAttribute);
      v109 = *(v291 + 16);
      v292 = v357;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_201;
      }

      v111 = *(v292 + 16);
      if (*v291 != *v292)
      {
        goto LABEL_244;
      }

      if ((*(v291 + 8) & 1) == 0)
      {
        if (*(v292 + 4) == *(v291 + 4) && (*(v292 + 8) & 1) == 0)
        {
          goto LABEL_267;
        }

LABEL_244:

        goto LABEL_273;
      }

      if (!*(v292 + 8))
      {
        goto LABEL_244;
      }

LABEL_267:
      v256 = _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(v109, v111);

LABEL_268:

      if (v256)
      {
LABEL_269:
        v170 = v60;
LABEL_270:
        sub_100277544(v170, type metadata accessor for NANAttribute);
        v77 = 1;
      }

      else
      {
LABEL_273:
        v170 = v60;
LABEL_274:
        sub_100277544(v170, type metadata accessor for NANAttribute);
LABEL_275:
        v77 = 0;
      }

      return v77 & 1;
    case 0x18u:
      v60 = v358;
      v140 = v335;
      sub_1002774DC(v358, v335, type metadata accessor for NANAttribute);
      v141 = *v140;
      v142 = v357;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_201;
      }

      v67 = _s7CoreP2P12NANAttributeO32FineTimingMeasurementRangeReportV23__derived_struct_equalsySbAE_AEtFZ_0(v141, *v142, v143, v144, v145);
      goto LABEL_93;
    case 0x19u:
      v60 = v358;
      v132 = v337;
      sub_1002774DC(v358, v337, type metadata accessor for NANAttribute);
      v133 = v132[5];
      v362 = v132[4];
      v363 = v133;
      v364 = v132[6];
      v134 = v132[1];
      v359 = *v132;
      v360[0] = v134;
      v135 = v132[3];
      v360[1] = v132[2];
      v361 = v135;
      v136 = v357;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v137 = v136[5];
        v368 = v136[4];
        v369 = v137;
        v370 = v136[6];
        v138 = v136[1];
        v365 = *v136;
        v366[0] = v138;
        v139 = v136[3];
        v366[1] = v136[2];
        v367 = v139;
        v77 = _s7CoreP2P12NANAttributeO16ElementContainerV23__derived_struct_equalsySbAE_AEtFZ_0(&v359, &v365);
        sub_10027A0CC(&v359);
        sub_10027A0CC(&v365);
        goto LABEL_213;
      }

      sub_10027A0CC(&v359);
      goto LABEL_237;
    case 0x1Au:
      v60 = v358;
      v310 = v339;
      sub_1002774DC(v358, v339, type metadata accessor for NANAttribute);
      v311 = v357;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_237;
      }

      v157 = _s7CoreP2P12NANAttributeO26ExtendedWLANInfrastructureV23__derived_struct_equalsySbAE_AEtFZ_0(*v310, *(v310 + 8), *(v310 + 16), *v311, *(v311 + 8), *(v311 + 16));
      goto LABEL_212;
    case 0x1Bu:
      v60 = v358;
      v78 = v340;
      sub_1002774DC(v358, v340, type metadata accessor for NANAttribute);
      v2.i32[0] = *(v78 + 1);
      v79 = v78[5];
      v80 = v78[6];
      v81 = v78[7];
      v82 = v78[8];
      v83 = v78[9];
      v84 = *(v78 + 5);
      LODWORD(v355) = *(v78 + 6);
      v85 = v357;
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_237;
      }

      if (*v78 != *v85)
      {
        goto LABEL_273;
      }

      v86 = vmovl_u8(v2).u64[0];
      v87 = *(v85 + 6);
      v88 = *(v85 + 5);
      v89 = v85[9];
      v90 = v85[8];
      v91 = v85[7];
      v92 = *(v85 + 5);
      LODWORD(v365) = vuzp1_s8(v86, v86).u32[0];
      BYTE4(v365) = v79;
      BYTE5(v365) = v80;
      v93 = v365 == *(v85 + 1) && WORD2(v365) == v92;
      if (!v93 || v81 != v91 || v82 != v90 || v83 != v89 || v84 != v88 || v355 != v87)
      {
        goto LABEL_273;
      }

      goto LABEL_269;
    case 0x1Cu:
      v60 = v358;
      v293 = v342;
      sub_1002774DC(v358, v342, type metadata accessor for NANAttribute);
      v294 = v357;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_237;
      }

      v157 = sub_100266124(*v293, (*(v293 + 14) << 48) | (*(v293 + 13) << 40) | (*(v293 + 12) << 32) | *(v293 + 8), *(v293 + 16), *v294, *(v294 + 8) | (*(v294 + 12) << 32) | (*(v294 + 13) << 40) | (*(v294 + 14) << 48), *(v294 + 16));
LABEL_212:
      v77 = v157;
      goto LABEL_213;
    case 0x1Du:
      v60 = v358;
      v295 = v341;
      sub_1002774DC(v358, v341, type metadata accessor for NANAttribute);
      v296 = v295[1];
      v365 = *v295;
      v366[0] = v296;
      v297 = v357;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v298 = v297[1];
        v359 = *v297;
        v360[0] = v298;
        v77 = sub_100266240(v365, BYTE8(v365) | (WORD5(v365) << 16) | (WORD6(v365) << 32), *&v366[0], *(&v366[0] + 1), v359, BYTE8(v359) | (WORD5(v359) << 16) | (WORD6(v359) << 32), v298, *(&v298 + 1));
        sub_10027A09C(&v359);
        sub_10027A09C(&v365);
        goto LABEL_213;
      }

      sub_10027A09C(&v365);
      goto LABEL_237;
    case 0x1Eu:
      v60 = v358;
      v251 = v344;
      sub_1002774DC(v358, v344, type metadata accessor for NANAttribute);
      v252 = *(v251 + 1);
      v253 = v357;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_201;
      }

      v254 = *v253;
      v255 = *(v253 + 1);
      if (*v251 != v254)
      {
        goto LABEL_244;
      }

      v190 = sub_1000BE1B8(v252, v255);
LABEL_179:
      v256 = v190;

      goto LABEL_268;
    case 0x1Fu:
      v60 = v358;
      v181 = v343;
      sub_1002774DC(v358, v343, type metadata accessor for NANAttribute);
      v182 = *v181;
      v183 = v357;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_201;
      }

      v67 = _s7CoreP2P12NANAttributeO26SecurityContextInformationV23__derived_struct_equalsySbAE_AEtFZ_0(v182, *v183);
      goto LABEL_93;
    case 0x20u:
      v60 = v358;
      v257 = v352;
      sub_1002774DC(v358, v352, type metadata accessor for NANAttribute);
      v258 = *(v257 + 80);
      v368 = *(v257 + 64);
      v369 = v258;
      *&v370 = *(v257 + 96);
      v259 = *(v257 + 16);
      v365 = *v257;
      v366[0] = v259;
      v260 = *(v257 + 48);
      v366[1] = *(v257 + 32);
      v367 = v260;
      v261 = v357;
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        sub_100143F68(&v365);
        goto LABEL_237;
      }

      v262 = v261[5];
      v362 = v261[4];
      v363 = v262;
      *&v364 = *(v261 + 12);
      v263 = v261[1];
      v359 = *v261;
      v360[0] = v263;
      v264 = v261[3];
      v360[1] = v261[2];
      v361 = v264;
      if (v365 == v359)
      {
        v265 = *(v257 + 56);
        v371[2] = *(v257 + 40);
        v371[3] = v265;
        v266 = *(v257 + 88);
        v371[4] = *(v257 + 72);
        v371[5] = v266;
        v267 = *(v257 + 24);
        v371[0] = *(v257 + 8);
        v371[1] = v267;
        v268 = *(v261 + 56);
        v372[2] = *(v261 + 40);
        v372[3] = v268;
        v269 = *(v261 + 88);
        v372[4] = *(v261 + 72);
        v372[5] = v269;
        v270 = *(v261 + 24);
        v372[0] = *(v261 + 8);
        v372[1] = v270;
        v271 = _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V23__derived_struct_equalsySbAG_AGtFZ_0(v371, v372);
        sub_100143F68(&v359);
        sub_100143F68(&v365);
        if (v271)
        {
          goto LABEL_269;
        }
      }

      else
      {
        sub_100143F68(&v359);
        sub_100143F68(&v365);
      }

      goto LABEL_273;
    case 0x21u:
      v60 = v358;
      v105 = v346;
      sub_1002774DC(v358, v346, type metadata accessor for NANAttribute);
      v106 = *(v105 + 8);
      v107 = *(v105 + 16);
      v108 = *(v105 + 18);
      v109 = *(v105 + 24);
      v110 = v357;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_201;
      }

      v111 = *(v110 + 24);
      if (*v105 != *v110 || v106 != *(v110 + 8) || v107 != *(v110 + 16) || v108 != *(v110 + 18))
      {
        goto LABEL_244;
      }

      goto LABEL_267;
    case 0x22u:
      v60 = v358;
      v94 = v345;
      sub_1002774DC(v358, v345, type metadata accessor for NANAttribute);
      v95 = *v94;
      v96 = v357;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_201;
      }

      v67 = _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(v95, *v96);
      goto LABEL_93;
    case 0x23u:
      v60 = v358;
      v68 = v347;
      sub_1002774DC(v358, v347, type metadata accessor for NANAttribute);
      v69 = *v68;
      v70 = v357;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_201;
      }

LABEL_59:
      v67 = _s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(v69, *v70);
      goto LABEL_93;
    case 0x24u:
      v60 = v358;
      v71 = v348;
      sub_1002774DC(v358, v348, type metadata accessor for NANAttribute);
      v72 = v71[1];
      v359 = *v71;
      v360[0] = v72;
      v73 = v71[3];
      v360[1] = v71[2];
      v361 = v73;
      v74 = v357;
      if (swift_getEnumCaseMultiPayload() == 36)
      {
        v75 = v74[1];
        v365 = *v74;
        v366[0] = v75;
        v76 = v74[3];
        v366[1] = v74[2];
        v367 = v76;
        v77 = _s7CoreP2P12NANAttributeO17DatapathExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(&v359, &v365);
        sub_10027A06C(&v365);
        sub_10027A06C(&v359);
        goto LABEL_213;
      }

      sub_10027A06C(&v359);
      goto LABEL_237;
    case 0x25u:
      v60 = v358;
      v64 = v349;
      sub_1002774DC(v358, v349, type metadata accessor for NANAttribute);
      v65 = *v64;
      v66 = v357;
      if (swift_getEnumCaseMultiPayload() != 37)
      {
LABEL_201:

        goto LABEL_237;
      }

      v67 = sub_1000C2E80(v65, *v66);
LABEL_93:
      v77 = v67;

      goto LABEL_213;
    case 0x26u:
      v60 = v358;
      v299 = v350;
      sub_1002774DC(v358, v350, type metadata accessor for NANAttribute);
      v301 = *v299;
      v300 = v299[1];
      v302 = v299[2];
      v303 = v299[3];
      v304 = v357;
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        sub_1000124C8(v301, v300);
        v312 = v302;
        v313 = v303;
        goto LABEL_236;
      }

      v305 = *v304;
      v306 = v304[1];
      v307 = v304[2];
      v308 = v304[3];
      if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v301, v300, *v304, v306))
      {
        v309 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v302, v303, v307, v308);
        sub_1000124C8(v305, v306);
        sub_1000124C8(v307, v308);
        sub_1000124C8(v301, v300);
        sub_1000124C8(v302, v303);
        if (v309)
        {
          v170 = v358;
          goto LABEL_270;
        }
      }

      else
      {
        sub_1000124C8(v305, v306);
        sub_1000124C8(v307, v308);
        sub_1000124C8(v301, v300);
        sub_1000124C8(v302, v303);
      }

      v170 = v358;
      goto LABEL_274;
    case 0x27u:
      v60 = v358;
      v277 = v351;
      sub_1002774DC(v358, v351, type metadata accessor for NANAttribute);
      v278 = v277[1];
      v359 = *v277;
      v360[0] = v278;
      *(v360 + 10) = *(v277 + 26);
      v279 = v357;
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        v280 = v279[1];
        v365 = *v279;
        v366[0] = v280;
        *(v366 + 10) = *(v279 + 26);
        v77 = _s7CoreP2P12NANAttributeO20PairingBootstrappingV23__derived_struct_equalsySbAE_AEtFZ_0(&v359, &v365);
        sub_1001440B0(&v365);
        sub_1001440B0(&v359);
        goto LABEL_213;
      }

      sub_1001440B0(&v359);
      goto LABEL_237;
    case 0x28u:
      v60 = v358;
      v117 = v355;
      sub_1002774DC(v358, v355, type metadata accessor for NANAttribute);
      v118 = v357;
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        v119 = v318;
        sub_100262DC8(v118, v318, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v77 = _s7CoreP2P12NANAttributeO23CustomDeviceInformationV23__derived_struct_equalsySbAE_AEtFZ_0(v117, v119);
        sub_100277544(v119, type metadata accessor for NANAttribute.CustomDeviceInformation);
        sub_100277544(v117, type metadata accessor for NANAttribute.CustomDeviceInformation);
        goto LABEL_213;
      }

      sub_100277544(v117, type metadata accessor for NANAttribute.CustomDeviceInformation);
      goto LABEL_237;
    case 0x29u:
      v60 = v358;
      v191 = v353;
      sub_1002774DC(v358, v353, type metadata accessor for NANAttribute);
      v192 = *(v191 + 8);
      v193 = *(v191 + 16);
      v194 = v357;
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        v312 = v192;
        v313 = v193;
        goto LABEL_236;
      }

      v195 = *(v191 + 2);
      v196 = *v191;
      v197 = *v194;
      v198 = *(v194 + 2);
      v199 = *(v194 + 1);
      v200 = *(v194 + 2);
      v356 = v199;
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v201 = swift_allocObject();
      v357 = xmmword_100480F30;
      *(v201 + 16) = xmmword_100480F30;
      *(v201 + 32) = v196;
      *(v201 + 34) = v195;
      v202 = sub_10002D874(v201);
      v204 = v203;

      v205 = swift_allocObject();
      *(v205 + 16) = v357;
      *(v205 + 32) = v197;
      *(v205 + 34) = v198;
      v206 = sub_10002D874(v205);
      v208 = v207;

      v209 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v202, v204, v206, v208);
      sub_1000124C8(v206, v208);
      sub_1000124C8(v202, v204);
      if ((v209 & 1) == 0)
      {
        sub_1000124C8(v356, v200);
        sub_1000124C8(v192, v193);
LABEL_246:
        v170 = v358;
        goto LABEL_274;
      }

      v210 = v200;
      v211 = v356;
      v212 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v192, v193, v356, v210);
      sub_1000124C8(v211, v210);
      sub_1000124C8(v192, v193);
      v170 = v358;
      if ((v212 & 1) == 0)
      {
        goto LABEL_274;
      }

      goto LABEL_270;
    case 0x2Au:
      v60 = v358;
      v285 = v354;
      sub_1002774DC(v358, v354, type metadata accessor for NANAttribute);
      v286 = *(v285 + 1);
      v126 = *(v285 + 2);
      v287 = v357;
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        v312 = v286;
LABEL_233:
        v313 = v126;
LABEL_236:
        sub_1000124C8(v312, v313);
LABEL_237:
        sub_100016290(v60, &qword_100593570, &qword_1004AB9F0);
        goto LABEL_275;
      }

      v288 = *v285;
      v290 = *(v287 + 1);
      v289 = *(v287 + 2);
      if (byte_1004ABDA2[v288] != byte_1004ABDA2[*v287])
      {
        sub_1000124C8(*(v287 + 1), *(v287 + 2));
        v314 = v286;
LABEL_250:
        sub_1000124C8(v314, v126);
        goto LABEL_273;
      }

      v77 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v286, v126, *(v287 + 1), *(v287 + 2));
      sub_1000124C8(v290, v289);
      sub_1000124C8(v286, v126);
LABEL_213:
      sub_100277544(v60, type metadata accessor for NANAttribute);
      return v77 & 1;
    default:
      v60 = v358;
      sub_1002774DC(v358, v54, type metadata accessor for NANAttribute);
      v61 = v357;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_237;
      }

      v62 = v54[1];
      v63 = *v54;
LABEL_37:
      v113 = *v61;
      v114 = v61[1];
LABEL_104:
      v116 = v63 == v113 && v62 == v114;
LABEL_107:
      v77 = v116;
      goto LABEL_213;
  }
}

BOOL _s7CoreP2P12NANAttributeO23CustomDeviceInformationV0D10AttributesV23__derived_struct_equalsySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v121 = *(v4 - 8);
  v5 = *(v121 + 64);
  __chkstk_darwin();
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&unk_100596870, &unk_1004B0F60) - 8) + 64);
  __chkstk_darwin();
  v119 = &v112 - v9;
  v120 = sub_10005DC58(&qword_100593578, &unk_1004AB9F8);
  v10 = *(*(v120 - 8) + 64);
  __chkstk_darwin();
  v12 = &v112 - v11;
  v13 = type metadata accessor for UUID();
  v126 = *(v13 - 8);
  v127 = v13;
  v14 = *(v126 + 64);
  __chkstk_darwin();
  v122 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v123 = &v112 - v17;
  v124 = sub_10005DC58(&qword_10058FF00, &qword_1004939D0);
  v18 = *(*(v124 - 8) + 64);
  __chkstk_darwin();
  v125 = &v112 - v19;
  v20 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin();
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v27 = &v112 - v26;
  v28 = *(*(sub_10005DC58(&qword_100593580, &qword_1004ABA08) - 8) + 64);
  v29 = __chkstk_darwin();
  v31 = &v112 - v30;
  if (*a1 != *a2)
  {
    return 0;
  }

  v32 = a2[2];
  if (a1[2])
  {
    if (!a2[2])
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v113 = v7;
  v114 = v4;
  v115 = v12;
  v33 = v29;
  v34 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v35 = *(v34 + 24);
  v36 = *(v33 + 48);
  v116 = v34;
  v117 = a1;
  sub_100012400(&a1[v35], v31, &unk_100595C40, &qword_100499070);
  v118 = a2;
  sub_100012400(&a2[v35], &v31[v36], &unk_100595C40, &qword_100499070);
  v37 = *(v21 + 48);
  if (v37(v31, 1, v20) == 1)
  {
    if (v37(&v31[v36], 1, v20) == 1)
    {
      sub_100016290(v31, &unk_100595C40, &qword_100499070);
      goto LABEL_15;
    }

LABEL_13:
    sub_100016290(v31, &qword_100593580, &qword_1004ABA08);
    return 0;
  }

  sub_100012400(v31, v27, &unk_100595C40, &qword_100499070);
  if (v37(&v31[v36], 1, v20) == 1)
  {
    (*(v21 + 8))(v27, v20);
    goto LABEL_13;
  }

  (*(v21 + 32))(v24, &v31[v36], v20);
  v38 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v40 = v39;
  v41 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v43 = v42;
  v44 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v38, v40, v41, v42);
  sub_1000124C8(v41, v43);
  sub_1000124C8(v38, v40);
  v45 = *(v21 + 8);
  v45(v24, v20);
  v45(v27, v20);
  sub_100016290(v31, &unk_100595C40, &qword_100499070);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v47 = v116;
  v46 = v117;
  v48 = v116[7];
  v50 = *&v117[v48];
  v49 = *&v117[v48 + 8];
  v51 = v118;
  v52 = &v118[v48];
  v54 = *v52;
  v53 = v52[1];
  if (v49 >> 60 == 15)
  {
    if (v53 >> 60 != 15)
    {
      goto LABEL_29;
    }

    sub_10005D67C(v50, v49);
    sub_10005D67C(v54, v53);
    sub_100017554(v50, v49);
  }

  else
  {
    if (v53 >> 60 == 15)
    {
      goto LABEL_29;
    }

    sub_10005D67C(v50, v49);
    sub_10005D67C(v54, v53);
    v55 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v50, v49, v54, v53);
    sub_100017554(v54, v53);
    sub_100017554(v50, v49);
    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  v56 = v47[8];
  v50 = *&v46[v56];
  v49 = *&v46[v56 + 8];
  v57 = &v51[v56];
  v54 = *v57;
  v53 = v57[1];
  if (v49 >> 60 != 15)
  {
    if (v53 >> 60 == 15)
    {
      goto LABEL_29;
    }

    sub_10005D67C(v50, v49);
    sub_10005D67C(v54, v53);
    v58 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v50, v49, v54, v53);
    sub_100017554(v54, v53);
    sub_100017554(v50, v49);
    if (v58)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v53 >> 60 != 15)
  {
    goto LABEL_29;
  }

  sub_10005D67C(v50, v49);
  sub_10005D67C(v54, v53);
  sub_100017554(v50, v49);
LABEL_25:
  v59 = v47[9];
  v50 = *&v46[v59];
  v49 = *&v46[v59 + 8];
  v60 = &v51[v59];
  v54 = *v60;
  v53 = v60[1];
  if (v49 >> 60 == 15)
  {
    if (v53 >> 60 == 15)
    {
      sub_10005D67C(v50, v49);
      sub_10005D67C(v54, v53);
      sub_100017554(v50, v49);
      goto LABEL_34;
    }

LABEL_29:
    sub_10005D67C(v50, v49);
    sub_10005D67C(v54, v53);
    sub_100017554(v50, v49);
    v61 = v54;
    v62 = v53;
LABEL_30:
    sub_100017554(v61, v62);
    return 0;
  }

  if (v53 >> 60 == 15)
  {
    goto LABEL_29;
  }

  sub_10005D67C(v50, v49);
  sub_10005D67C(v54, v53);
  v64 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v50, v49, v54, v53);
  sub_100017554(v54, v53);
  sub_100017554(v50, v49);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  v65 = v47[10];
  v66 = v125;
  v67 = *(v124 + 48);
  sub_100012400(&v46[v65], v125, &qword_10058F4D0, &qword_100491AB0);
  sub_100012400(&v51[v65], v66 + v67, &qword_10058F4D0, &qword_100491AB0);
  v69 = v126;
  v68 = v127;
  v70 = *(v126 + 48);
  if (v70(v66, 1, v127) == 1)
  {
    if (v70(v66 + v67, 1, v68) == 1)
    {
      sub_100016290(v66, &qword_10058F4D0, &qword_100491AB0);
      goto LABEL_41;
    }

LABEL_39:
    sub_100016290(v66, &qword_10058FF00, &qword_1004939D0);
    return 0;
  }

  v72 = v123;
  sub_100012400(v66, v123, &qword_10058F4D0, &qword_100491AB0);
  if (v70(v66 + v67, 1, v68) == 1)
  {
    (*(v69 + 8))(v72, v68);
    goto LABEL_39;
  }

  v73 = v66 + v67;
  v74 = v122;
  (*(v69 + 32))(v122, v73, v68);
  sub_10027784C(&qword_100597540, &type metadata accessor for UUID);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  v76 = *(v69 + 8);
  v76(v74, v68);
  v76(v72, v68);
  sub_100016290(v66, &qword_10058F4D0, &qword_100491AB0);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  if ((sub_1000BE660(*&v46[v47[11]], *&v51[v47[11]], v71) & 1) == 0)
  {
    return 0;
  }

  v77 = v47[12];
  v78 = *(v120 + 48);
  v79 = v115;
  sub_100012400(&v46[v77], v115, &unk_100596870, &unk_1004B0F60);
  v80 = &v51[v77];
  v81 = v79;
  sub_100012400(v80, v79 + v78, &unk_100596870, &unk_1004B0F60);
  v82 = *(v121 + 48);
  v83 = v114;
  if (v82(v79, 1, v114) == 1)
  {
    if (v82(v79 + v78, 1, v83) == 1)
    {
      sub_100016290(v79, &unk_100596870, &unk_1004B0F60);
      goto LABEL_45;
    }

    goto LABEL_51;
  }

  v87 = v119;
  sub_100012400(v79, v119, &unk_100596870, &unk_1004B0F60);
  if (v82(v79 + v78, 1, v83) == 1)
  {
    sub_100277544(v87, type metadata accessor for NANInternetSharingStatistics.Requester);
LABEL_51:
    v88 = &qword_100593578;
    v89 = &unk_1004AB9F8;
LABEL_52:
    sub_100016290(v81, v88, v89);
    return 0;
  }

  v90 = v113;
  sub_100262DC8(v81 + v78, v113, type metadata accessor for NANInternetSharingStatistics.Requester);
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    sub_100277544(v90, type metadata accessor for NANInternetSharingStatistics.Requester);
    sub_100277544(v87, type metadata accessor for NANInternetSharingStatistics.Requester);
    v88 = &unk_100596870;
    v89 = &unk_1004B0F60;
    goto LABEL_52;
  }

  v91 = *(v83 + 20);
  v92 = *(v87 + v91);
  v93 = *(v90 + v91);
  sub_100277544(v90, type metadata accessor for NANInternetSharingStatistics.Requester);
  sub_100277544(v87, type metadata accessor for NANInternetSharingStatistics.Requester);
  sub_100016290(v81, &unk_100596870, &unk_1004B0F60);
  if (v92 != v93)
  {
    return 0;
  }

LABEL_45:
  v84 = v47[13];
  v85 = *&v46[v84];
  v86 = *&v51[v84];
  if (v85)
  {
    if (!v86 || (_s7CoreP2P25NANMulticastLinkConditionV23__derived_struct_equalsySbAC_ACtFZ_0(v85, v86) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v86)
  {
    return 0;
  }

  v94 = v47[14];
  v95 = &v46[v94];
  v96 = *&v46[v94];
  v97 = &v51[v94];
  v98 = *v97;
  if (!v96)
  {
    if (v98)
    {
      return 0;
    }

LABEL_65:
    v104 = v116[15];
    v105 = &v117[v104];
    v107 = *&v117[v104];
    v106 = *&v117[v104 + 8];
    v108 = &v118[v104];
    v110 = *v108;
    v109 = v108[1];
    if (v106 >> 60 == 15)
    {
      if (v109 >> 60 == 15)
      {
        sub_10005D67C(*v105, *(v105 + 1));
        sub_10005D67C(v110, v109);
        sub_100017554(v107, v106);
        return 1;
      }
    }

    else if (v109 >> 60 != 15)
    {
      sub_10005D67C(*v105, *(v105 + 1));
      sub_10005D67C(v110, v109);
      v111 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v107, v106, v110, v109);
      sub_100017554(v110, v109);
      sub_100017554(v107, v106);
      return (v111 & 1) != 0;
    }

    sub_10005D67C(*v105, *(v105 + 1));
    sub_10005D67C(v110, v109);
    sub_100017554(v107, v106);
    v61 = v110;
    v62 = v109;
    goto LABEL_30;
  }

  if (!v98)
  {
    return 0;
  }

  v100 = *(v95 + 1);
  v99 = *(v95 + 2);
  v102 = v97[1];
  v101 = v97[2];
  v103 = sub_1000CE004(v96, v98);
  result = 0;
  if ((v103 & 1) != 0 && v100 == v102 && v99 == v101)
  {
    goto LABEL_65;
  }

  return result;
}

uint64_t _s7CoreP2P12NANAttributeO13AttributeTypeO8rawValueAESgs5UInt8V_tcfC_0(char a1)
{
  if ((a1 + 35) > 0x4Fu)
  {
    return 46;
  }

  else
  {
    return asc_1004ABDD0[(a1 + 35)];
  }
}

uint64_t _s7CoreP2P12NANAttributeO23CustomDeviceInformationV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10026B094(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593690, &qword_1004ABA80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278E94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v29 = 0;
  sub_100285A80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v23;
  v29 = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v23;
  v19 = v9;
  v20 = v24;
  v22 = v25;
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v29 = 2;
  sub_1002859D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v13 = v23;
  v29 = 3;
  sub_100285A2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v19 | (v21 << 8) | (v20 << 16) | (v22 << 24) | (v18 << 32) | (v17 << 40) | (v16 << 48) | (v13 << 56);
}

uint64_t sub_10026B358(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593848, &qword_1004ABB38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277BCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v24 = 0;
  sub_100285A80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v18;
  v24 = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v18;
  v11 = v19;
  v17 = v20;
  v16 = v21;
  v15 = v22;
  v14 = v23;
  v24 = 2;
  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 8) | (v11 << 16) | (v17 << 24) | (v16 << 32) | (v15 << 40) | (v14 << 48);
}

uint64_t sub_10026B5D0(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593780, &qword_1004ABAD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002785DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v17 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v17 = 1;
  sub_10028607C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v14;
  sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
  v17 = 2;
  sub_1002854B0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 32) | (v11 << 40) | (v13 << 48);
}

uint64_t sub_10026B818(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593790, &unk_1004ABAE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278424();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v14 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[27] = 1;
  sub_1002860D0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v13;
  sub_10005DC58(&qword_100592270, &qword_10049F8B0);
  v12[15] = 2;
  sub_100286124();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 16);
}

uint64_t sub_10026BA2C(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593688, &qword_1004ABA78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278EE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v22 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *v21;
  v9 = v21[4];
  v10 = v21[5];
  v22 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v9;
  v19 = v10;
  v11 = v21[0];
  v12 = v21[1];
  v13 = *&v21[2];
  v22 = 2;
  sub_1002859D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v22 = 3;
  sub_100285A2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v20 | (v18 << 32) | (v19 << 40) | (v16 << 48) | (v15 << 56);
}

uint64_t sub_10026BCD8(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593670, &qword_1004ABA70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278F3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v25 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v25 = 1;
  sub_1002859D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v11;
  v20 = v10;
  v21 = v9;
  v12 = v22;
  v13 = BYTE1(v22);
  v14 = BYTE2(v22);
  v25 = 2;
  sub_100285A2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v25 = 3;
  sub_1002323F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v21 | (v20 << 32) | (v19 << 40) | (v18 << 48) | (v17 << 56);
}

uint64_t sub_10026BF80(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593768, &qword_1004ABAD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002787B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v12[15] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[14] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 16);
}

void *sub_10026C128(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593898, &qword_1004ABB60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_10027764C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_1005920C0, &unk_10049F800);
    sub_10028687C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100002A00(a1);
  }

  return v9;
}

uint64_t sub_10026C2AC(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593588, &qword_1004ABA10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279C5C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v14 = 0;
  sub_1000317F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v13[0];
  v10 = v13[1];
  v11 = v13[2];
  v14 = 1;
  sub_1002323F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 8) | (v11 << 16);
}

uint64_t sub_10026C49C(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_1005937F8, &qword_1004ABB08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277FE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v18 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v15;
  v9 = v16;
  v10 = v17;
  LOBYTE(v15) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v9;
  v13 = v10;
  v18 = 2;
  sub_100286464();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v14 | (v12 << 32) | (v13 << 40);
}

unint64_t sub_10026C6C0(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_1005937D0, &qword_1004ABB00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278088();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v20 = 0;
  sub_100285B7C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v19;
  v21 = HIBYTE(v19);
  v20 = 1;
  sub_100286314();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v19;
  v20 = 2;
  sub_1000E5328();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v20 = 3;
  sub_100286368();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v11;
  v12 = v19;
  v20 = 4;
  sub_1002863BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v12;
  v13 = v19;
  LOBYTE(v19) = 5;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 6;
  sub_100286410();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  v14 = v21;
  sub_100002A00(a1);
  return v9 | (v10 << 16) | (v17 << 32) | (v16 << 40) | (v13 << 48) | ((v14 & 1) << 8);
}

uint64_t sub_10026CA00(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = sub_10005DC58(a2, a3);
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = v6;
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  v18 = 0;
  sub_100165E30(&qword_10058ECD0);
  v12 = v15;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v19;
  v17 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v11 + 8))(v9, v12);
  sub_100002A00(a1);
  return v14;
}

uint64_t sub_10026CC64@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_1005936B8, &qword_1004ABA90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278BA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002A00(a1);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_100285B7C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v45;
    v61 = BYTE2(v45);
    LOBYTE(v38) = 1;
    sub_100285BD0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v45;
    v12 = v46;
    LOBYTE(v38) = 2;
    sub_100285C24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v60 = v12;
    v36 = v45;
    v13 = v46;
    LOBYTE(v38) = 3;
    sub_100285C78();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v13;
    v35 = v6;
    v14 = v45;
    v15 = v46;
    LOBYTE(v38) = 4;
    sub_100285CCC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v15;
    v16 = v45;
    v32 = v46;
    LOBYTE(v38) = 5;
    sub_100285D20();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v11;
    v17 = v45;
    v30 = v46;
    LOBYTE(v38) = 6;
    sub_100285D74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = a2;
    v18 = v45;
    v29 = v46;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    v62 = 7;
    sub_100165E30(&qword_10058ECD0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v35 + 8))(v9, v5);
    v27 = v59;
    LOWORD(v38) = v31;
    LODWORD(v35) = v61;
    BYTE2(v38) = v61;
    v19 = v37;
    *(&v38 + 1) = v37;
    v20 = v60;
    LOWORD(v39) = v60;
    v21 = v36;
    *(&v39 + 1) = v36;
    LOWORD(v40) = v34;
    *(&v40 + 1) = v14;
    LOWORD(v41) = v33;
    *(&v41 + 1) = v16;
    LOWORD(v42) = v32;
    *(&v42 + 1) = v17;
    LOWORD(v43) = v30;
    *(&v43 + 1) = v18;
    LOWORD(v44) = v29;
    *(&v44 + 1) = v59;
    sub_100285DC8(&v38, &v45);
    sub_100002A00(a1);
    LOWORD(v45) = v31;
    BYTE2(v45) = v35;
    v46 = v19;
    v47 = v20;
    v48 = v21;
    v49 = v34;
    v50 = v14;
    v51 = v33;
    v52 = v16;
    v53 = v32;
    v54 = v17;
    v55 = v30;
    v56 = v18;
    v57 = v29;
    v58 = v27;
    result = sub_10027A0CC(&v45);
    v23 = v43;
    v24 = v28;
    v28[4] = v42;
    v24[5] = v23;
    v24[6] = v44;
    v25 = v39;
    *v24 = v38;
    v24[1] = v25;
    v26 = v41;
    v24[2] = v40;
    v24[3] = v26;
  }

  return result;
}

uint64_t sub_10026D374(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593888, &qword_1004ABB58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100029B34(a1, v8);
  sub_1002867A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_10005DC58(&qword_10058E398, &qword_100489498);
    v10[7] = 0;
    sub_1002867F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002A00(a1);
  return v8;
}

void *sub_10026D54C(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_1005935A8, &qword_1004ABA18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_100279B60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
    sub_1002854B0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100002A00(a1);
  }

  return v9;
}

uint64_t sub_10026D6D0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v7 = sub_10005DC58(&qword_100593850, &qword_1004ABB40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277A98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v40) = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = a2;
  v3.i32[0] = v42;
  v13 = v43;
  v14 = v44;
  LOBYTE(v40) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v50 = v13;
  v4.i32[0] = v42;
  v15 = v43;
  v16 = v44;
  LOBYTE(v40) = 2;
  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v42;
  v37 = v16;
  v34 = BYTE2(v42);
  v35 = BYTE1(v42);
  v17 = v46;
  v38 = *&v45[2];
  v51 = 3;
  sub_100285B28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = vmovl_u8(v3);
  v32 = vmovl_u8(v4);
  (*(v8 + 8))(v11, v7);
  v30 = v52;
  LOBYTE(v40) = v33.i8[0];
  LOBYTE(v18) = v33.i8[4];
  BYTE1(v18) = v33.i8[6];
  v19 = v15;
  v31 = v15;
  LOBYTE(v15) = v50;
  BYTE2(v18) = v50;
  v20 = v17;
  v29 = v17;
  LOBYTE(v17) = v14;
  BYTE3(v18) = v14;
  BYTE4(v18) = v32.i8[0];
  BYTE5(v18) = v32.i8[2];
  BYTE6(v18) = v32.i8[4];
  BYTE1(v40) = v33.i8[2];
  HIBYTE(v18) = v32.i8[6];
  *(&v40 + 2) = v18;
  BYTE10(v40) = v19;
  v21 = v36;
  v22 = v37;
  BYTE11(v40) = v37;
  v41[0] = v36;
  v23 = v34;
  v24 = v35;
  v41[1] = v35;
  v41[2] = v34;
  v25 = v38;
  *&v41[8] = v38;
  *&v41[16] = v20;
  v41[24] = v52;
  sub_100277AEC(&v40, &v42);
  sub_100002A00(a1);
  v42 = vuzp1_s8(*v33.i8, *v33.i8).u32[0];
  v43 = v15;
  v44 = v17;
  *v45 = vuzp1_s8(*v32.i8, *v32.i8).u32[0];
  v45[4] = v31;
  v45[5] = v22;
  LOBYTE(v46) = v21;
  BYTE1(v46) = v24;
  BYTE2(v46) = v23;
  v47 = v25;
  v48 = v29;
  v49 = v30;
  result = sub_10027A24C(&v42);
  v27 = *v41;
  v28 = v39;
  *v39 = v40;
  v28[1] = v27;
  *(v28 + 25) = *&v41[9];
  return result;
}

uint64_t sub_10026DAD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v23 = sub_10005DC58(a2, a3);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return sub_100002A00(a1);
  }

  v13 = v22;
  v14 = v23;
  LOBYTE(v24) = 0;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = 1;
  sub_100039F68();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v24;
  v15 = v25;
  v27 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v11, v14);
  v16 = v24;
  v17 = v25;
  v18 = v21;
  sub_10000AB0C(v21, v15);
  sub_10000AB0C(v16, v17);
  sub_100002A00(a1);
  sub_1000124C8(v18, v15);
  result = sub_1000124C8(v16, v17);
  *v13 = v26;
  *(v13 + 8) = v18;
  *(v13 + 16) = v15;
  *(v13 + 24) = v16;
  *(v13 + 32) = v17;
  return result;
}

uint64_t sub_10026DD40(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593608, &qword_1004ABA48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279580();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v12[13] = 0;
  sub_1002856D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v13;
  v12[12] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 32);
}

uint64_t sub_10026DEFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10005DC58(&qword_1005935D0, &qword_1004ABA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279A10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v17) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[15] = 1;
  sub_1002855DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *&v23[39] = v19;
  *&v23[55] = v20;
  *&v23[71] = v21;
  *&v23[87] = v22;
  *&v23[7] = v17;
  *&v23[23] = v18;
  result = sub_100002A00(a1);
  v13 = *&v23[32];
  *(a2 + 49) = *&v23[48];
  v14 = *&v23[80];
  *(a2 + 65) = *&v23[64];
  *(a2 + 81) = v14;
  v15 = *&v23[16];
  *(a2 + 1) = *v23;
  *(a2 + 17) = v15;
  *a2 = v11;
  *(a2 + 96) = *&v23[95];
  *(a2 + 33) = v13;
  return result;
}

uint64_t sub_10026E128(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593650, &qword_1004ABA60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279110();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v12[14] = 0;
  sub_100285930();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v12[15];
  v12[13] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 8);
}

uint64_t sub_10026E2E4(uint64_t *a1)
{
  v2 = sub_10005DC58(&qword_100593630, &qword_1004ABA58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002791B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[30] = 0;
  sub_100285804();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v10[31];
  sub_10005DC58(&qword_100592460, &qword_10049F958);
  v10[15] = 1;
  sub_100285858();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100002A00(a1);
  return v8;
}

uint64_t sub_10026E4D0(uint64_t *a1)
{
  v2 = sub_10005DC58(&qword_100593810, &qword_1004ABB18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277E60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[30] = 0;
  sub_1000E5184();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v10[31];
  sub_10005DC58(&qword_100592188, &qword_10049F850);
  v10[15] = 1;
  sub_1002864B8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100002A00(a1);
  return v8;
}

unint64_t sub_10026E6BC(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100031694(v8, v8[3]);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v7 = _s7CoreP2P12NANAttributeO23CustomDeviceInformationV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(v5);
    if (v7 == 6)
    {
      v4 = 0;
    }

    else
    {
      v4 = v7;
    }

    sub_100002A00(v8);
    sub_100002A00(a1);
  }

  return v4;
}

uint64_t sub_10026E78C(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593828, &qword_1004ABB20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v13 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277E0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  v10 = v14;
  v11 = v13[4];
  sub_100002A00(a1);
  if (v10)
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  return v11 | v12;
}

uint64_t sub_10026E918(uint64_t *a1)
{
  v2 = sub_10005DC58(&qword_1005935C0, &qword_1004ABA20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279AB8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v11) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 2;
  sub_100285588();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = 3;
  sub_100285408();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v11;
  sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
  v13 = 4;
  sub_1002854B0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100002A00(a1);
  return v8;
}

void *sub_10026EBAC(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_1005937C8, &qword_1004ABAF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_100278280();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_100165E30(&qword_10058ECD0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100002A00(a1);
  }

  return v9;
}

uint64_t sub_10026ED54(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_1005936A0, &qword_1004ABA88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v15 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100285AD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v23 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *v22;
  v9 = v22[4];
  v10 = v22[5];
  v23 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v9;
  v20 = v10;
  v11 = v22[0];
  v12 = v22[1];
  v13 = *&v22[2];
  v23 = 2;
  sub_100285B28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v12;
  v17 = v11;
  v18 = v13;
  v23 = 3;
  sub_1002859D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[1] = v22[2];
  v23 = 4;
  sub_100285A2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v21 | (v19 << 32) | (v20 << 40) | (v17 << 48) | (v16 << 56);
}

void *sub_10026F04C(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593618, &qword_1004ABA50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_100279338();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_100592488, &qword_10049F968);
    sub_10028572C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100002A00(a1);
  }

  return v9;
}

uint64_t sub_10026F1D0(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_100593868, &qword_1004ABB48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13[-v7];
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10027796C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v13[15] = 0;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v13[14] = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    sub_100002A00(a1);
    return v10 | (v11 << 16);
  }

  return v2;
}

uint64_t sub_10026F378(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593668, &qword_1004ABA68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v14 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278F90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v34 = 0;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v28;
  v20 = v29;
  v9 = v30;
  v10 = v31;
  v11 = v32;
  v12 = v33;
  v26 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  v25 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 4;
  v14[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v22 | (v21 << 32) | (v20 << 40) | (v19 << 48) | (v18 << 56);
}

uint64_t sub_10026F628@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_10005DC58(&qword_100593840, &qword_1004ABB30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v21.i8[-v10];
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277C74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v31 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v3.i32[0] = v25;
  v30 = v26;
  v13 = v27;
  v31 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v30;
  v4.i32[0] = v25;
  v23 = v27;
  v24 = v26;
  v31 = 2;
  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v11, v7);
  v21 = vmovl_u8(v3);
  v22 = vmovl_u8(v4);
  v15 = v25;
  v16 = BYTE2(v25);
  v17 = v28;
  v18 = v29;
  result = sub_100002A00(a1);
  *a2 = vuzp1_s8(*v21.i8, *v21.i8).u32[0];
  *(a2 + 4) = v14;
  *(a2 + 5) = v13;
  *(a2 + 6) = vuzp1_s8(*v22.i8, *v22.i8).u32[0];
  v20 = v23;
  *(a2 + 10) = v24;
  *(a2 + 11) = v20;
  *(a2 + 16) = v15;
  *(a2 + 18) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_10026F8B0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_100593838, &qword_1004ABB28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277D00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v36) = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v40;
  v35 = v39;
  v51 = v41;
  v33 = v42;
  v11 = v43;
  v12 = v44;
  LOBYTE(v36) = 1;
  sub_100286590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v12;
  v29 = v11;
  v31 = v40;
  v32 = v39;
  v30 = v41;
  v14 = v45;
  v13 = v46;
  v52 = 2;
  sub_1002323F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v26 = *(&v50 + 1);
  v27 = v50;
  v15 = v13;
  v25 = v13;
  LOBYTE(v13) = v35;
  LOBYTE(v36) = v35;
  v16 = v14;
  v24 = v14;
  v17 = v33;
  LOBYTE(v14) = v34;
  BYTE1(v36) = v34;
  v18 = v51;
  BYTE2(v36) = v51;
  BYTE3(v36) = v33;
  v20 = v28;
  v19 = v29;
  BYTE4(v36) = v29;
  BYTE5(v36) = v28;
  BYTE8(v36) = v32;
  BYTE9(v36) = v31;
  BYTE10(v36) = v30;
  *&v37 = v16;
  *(&v37 + 1) = v15;
  v38 = v50;
  sub_1002865E4(&v36, &v39);
  sub_100002A00(a1);
  v39 = v13;
  v40 = v14;
  v41 = v18;
  v42 = v17;
  v43 = v19;
  v44 = v20;
  LOBYTE(v45) = v32;
  BYTE1(v45) = v31;
  BYTE2(v45) = v30;
  v46 = v24;
  v47 = v25;
  v48 = v27;
  v49 = v26;
  result = sub_10027A1BC(&v39);
  v22 = v37;
  *a2 = v36;
  a2[1] = v22;
  a2[2] = v38;
  return result;
}

uint64_t sub_10026FBF8(uint64_t *a1)
{
  v2 = sub_10005DC58(&qword_1005938A8, &qword_1004ABB68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002775A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[7] = 0;
  sub_100286464();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v11;
  v10[6] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10[5] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100002A00(a1);
  return v8;
}

uint64_t sub_10026FDE0(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100593808, &qword_1004ABB10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277F8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v16 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v13;
  v10 = v14;
  v11 = v15;
  v16 = 1;
  sub_1002323F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 32) | (v11 << 40);
}

uint64_t sub_10026FFCC(uint64_t a1, uint64_t a2, unsigned __int8 a3, const char *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < a3)
  {
    Logger.init(subsystem:category:)();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 16777728;
      *(v14 + 4) = a3;
      *(v14 + 5) = 2048;
      v15 = *(a1 + 16);

      *(v14 + 7) = v15;

      _os_log_impl(&_mh_execute_header, v12, v13, a4, v14, 0xFu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return a1;
}

uint64_t sub_1002701BC(uint64_t a1, uint64_t a2, unsigned __int8 a3, const char *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < a3)
  {
    Logger.init(subsystem:category:)();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 16777728;
      *(v14 + 4) = a3;
      *(v14 + 5) = 2048;
      v15 = *(a1 + 16);

      *(v14 + 7) = v15;

      _os_log_impl(&_mh_execute_header, v12, v13, a4, v14, 0xFu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return a1;
}

uint64_t sub_10027039C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v93 = a2;
  v96 = type metadata accessor for Logger();
  v3 = *(v96 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v73 - v7;
  __chkstk_darwin();
  v10 = &v73 - v9;
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v11 = __chkstk_darwin();
  v16 = *(a1 + 16);
  if (!v16)
  {
    v83 = 0;

    Logger.init(subsystem:category:)();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Init failed: rawValue byte array is empty", v66, 2u);
    }

    (*(v3 + 8))(v6, v96);
    sub_10000B02C();
    swift_allocError();
    *v67 = 0;
    *(v67 + 8) = 0;
    *(v67 + 16) = 2;
LABEL_77:
    swift_willThrow();

    if (v83)
    {
    }

    return result;
  }

  v77 = &v73 - v12;
  v78 = v11;
  v79 = v15;
  v80 = v14;
  v81 = v13;
  v17 = *(a1 + 32);
  v149 = a1 + 32;
  if (v17)
  {
    v18 = 256;
  }

  else
  {
    v18 = (v17 >> 1) & 0xF;
  }

  v82 = v18;

  v148 = 0;
  v21 = *(a1 + 16);
  if (v21 < 2)
  {
    v22 = 0;
    v85 = 0;
    v86 = 0;
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    goto LABEL_75;
  }

  v74 = v10;
  v83 = v16;
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v22 = 0;
  v94 = (v3 + 8);
  v95 = &qword_1004B4E88[7];
  v76 = "er";
  v23 = 1;
  *&v20 = 16777728;
  v75 = v20;
  while (2)
  {
    v84 = v22;
LABEL_8:
    v24 = v23;
    while (1)
    {
      if (v24 + 1 >= v21)
      {

        sub_10000B02C();
        swift_allocError();
        *v72 = 0;
        *(v72 + 8) = 0;
        *(v72 + 16) = 2;
        goto LABEL_77;
      }

      v25 = *(v149 + v24 + 1);
      v26 = v24 + 2;
      v23 = v24 + 2 + v25;
      if (__OFADD__(v24 + 2, v25))
      {
        __break(1u);
LABEL_81:
        __break(1u);
        return result;
      }

      if (v21 < v23)
      {
        goto LABEL_74;
      }

      v27 = v23 - v26;
      if (v23 < v26)
      {
        goto LABEL_81;
      }

      v28 = *(v149 + v24);
      if (v21 == v27)
      {

        v29 = a1;
      }

      else
      {
        v29 = _swiftEmptyArrayStorage;
        if (v23 != v26)
        {
          if (v27 >= 1)
          {
            sub_10005DC58(&qword_10058B3C0, &qword_100481920);
            v29 = swift_allocObject();
            v33 = j__malloc_size(v29);
            v29[2] = v27;
            v29[3] = 2 * v33 - 64;
          }

          memcpy(v29 + 4, (v149 + v26), v23 - v26);
        }
      }

      if (v28 <= 191)
      {
        break;
      }

      switch(v28)
      {
        case 192:
          if (v29[2] >= v25)
          {

            HIDWORD(v86) = (v25 << 8) | 0xC0;
            v90 = v29;
            v22 = v84;
          }

          else
          {
            Logger.init(subsystem:category:)();

            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              HIDWORD(v86) = v35;
              v37 = v36;
              *v36 = v75;
              *(v36 + 4) = v25;
              *(v36 + 5) = 2048;
              v38 = v29[2];

              *(v37 + 7) = v38;

              _os_log_impl(&_mh_execute_header, v34, BYTE4(v86), "VHTOperation must be at least %hhu bytes (Size: %ld bytes)", v37, 0xFu);
            }

            else
            {
            }

            v22 = v84;
            (*v94)(v80, v96);

            v90 = 0;
            HIDWORD(v86) = 0;
          }

LABEL_60:
          v21 = *(a1 + 16);
          if (v23 < v21)
          {
            goto LABEL_8;
          }

          goto LABEL_75;
        case 221:
          if (v29[2] >= v25)
          {

            LODWORD(v87) = (v25 << 8) | 0xDD;
            v89 = v29;
            v22 = v84;
          }

          else
          {
            Logger.init(subsystem:category:)();

            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              LODWORD(v87) = v55;
              v57 = v56;
              *v56 = v75;
              *(v56 + 4) = v25;
              *(v56 + 5) = 2048;
              v58 = v29[2];

              *(v57 + 7) = v58;

              _os_log_impl(&_mh_execute_header, v54, v87, "VendorSpecific must be at least %hhu bytes (Size: %ld bytes)", v57, 0xFu);
            }

            else
            {
            }

            v22 = v84;
            (*v94)(v81, v96);

            v89 = 0;
            LODWORD(v87) = 0;
          }

          goto LABEL_60;
        case 255:
          if (v29[2] >= v25)
          {

            HIDWORD(v87) = (v25 << 8) | 0xFF;
            v88 = v29;
            v22 = v84;
          }

          else
          {
            Logger.init(subsystem:category:)();

            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              HIDWORD(v87) = v40;
              v42 = v41;
              *v41 = v75;
              *(v41 + 4) = v25;
              *(v41 + 5) = 2048;
              v43 = v29[2];

              *(v42 + 7) = v43;

              _os_log_impl(&_mh_execute_header, v39, BYTE4(v87), "ElementIDExtension must be at least %hhu bytes (Size: %ld bytes)", v42, 0xFu);
            }

            else
            {
            }

            v22 = v84;
            (*v94)(v74, v96);

            v88 = 0;
            HIDWORD(v87) = 0;
          }

          goto LABEL_60;
      }

LABEL_24:

      Logger.init(subsystem:category:)();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 16777472;
        v32[4] = v28;
        _os_log_impl(&_mh_execute_header, v30, v31, "Parsing ElementContainer. Unknown type: %hhu", v32, 5u);
      }

      result = (*v94)(v8, v96);
      v21 = *(a1 + 16);
      v24 = v23;
      if (v23 >= v21)
      {
LABEL_74:
        v22 = v84;
        goto LABEL_75;
      }
    }

    if (v28 != 45)
    {
      if (v28 == 61)
      {
        if (v29[2] >= v25)
        {

          HIDWORD(v85) = (v25 << 8) | 0x3D;
          v92 = v29;
          v22 = v84;
        }

        else
        {
          Logger.init(subsystem:category:)();

          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            HIDWORD(v85) = v45;
            v47 = v46;
            *v46 = v75;
            *(v46 + 4) = v25;
            *(v46 + 5) = 2048;
            v48 = v29[2];

            *(v47 + 7) = v48;

            _os_log_impl(&_mh_execute_header, v44, BYTE4(v85), "HTInformation must be at least %hhu bytes. (Size: %ld bytes)", v47, 0xFu);
          }

          else
          {
          }

          v22 = v84;
          (*v94)(v78, v96);

          v92 = 0;
          HIDWORD(v85) = 0;
        }

        goto LABEL_60;
      }

      if (v28 == 191)
      {
        if (v29[2] >= v25)
        {

          LODWORD(v86) = (v25 << 8) | 0xBF;
          v91 = v29;
          v22 = v84;
        }

        else
        {
          Logger.init(subsystem:category:)();

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            LODWORD(v86) = v50;
            v52 = v51;
            *v51 = v75;
            *(v51 + 4) = v25;
            *(v51 + 5) = 2048;
            v53 = v29[2];

            *(v52 + 7) = v53;

            _os_log_impl(&_mh_execute_header, v49, v86, "VHTCapabilities must be at least %hhu bytes (Size: %ld bytes)", v52, 0xFu);
          }

          else
          {
          }

          v22 = v84;
          (*v94)(v79, v96);

          v91 = 0;
          LODWORD(v86) = 0;
        }

        goto LABEL_60;
      }

      goto LABEL_24;
    }

    if (v29[2] >= v25)
    {

      LODWORD(v85) = (v25 << 8) | 0x2D;
      v22 = v29;
    }

    else
    {
      Logger.init(subsystem:category:)();

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        LODWORD(v85) = v60;
        v62 = v61;
        *v61 = v75;
        *(v61 + 4) = v25;
        *(v61 + 5) = 2048;
        v63 = v29[2];

        *(v62 + 7) = v63;

        _os_log_impl(&_mh_execute_header, v59, v85, "HTCapabilities must be at least %hhu bytes. (Size: %ld bytes)", v62, 0xFu);
      }

      else
      {
      }

      (*v94)(v77, v96);

      v22 = 0;
      LODWORD(v85) = 0;
    }

    v21 = *(a1 + 16);
    if (v23 < v21)
    {
      continue;
    }

    break;
  }

LABEL_75:

  *(&v98 + 3) = v146;
  BYTE7(v98) = v147;
  *(&v99 + 2) = v144;
  WORD3(v99) = v145;
  *(&v100 + 2) = v142;
  WORD3(v100) = v143;
  *(&v101 + 2) = v140;
  WORD3(v101) = v141;
  *(&v102 + 2) = v138;
  WORD3(v102) = v139;
  *(&v103 + 2) = v136;
  WORD3(v103) = v137;
  WORD3(v104) = v135;
  *(&v104 + 2) = v134;
  LOWORD(v98) = v82;
  v105 = v82;
  BYTE2(v98) = v148;
  v106 = v148;
  v108 = v147;
  v107 = v146;
  *(&v98 + 1) = v22;
  LOWORD(v99) = v85;
  *(&v99 + 1) = v92;
  LOWORD(v100) = WORD2(v85);
  *(&v100 + 1) = v91;
  LOWORD(v101) = v86;
  *(&v101 + 1) = v90;
  LOWORD(v102) = WORD2(v86);
  *(&v102 + 1) = v89;
  LOWORD(v103) = v87;
  *(&v103 + 1) = v88;
  LOWORD(v104) = WORD2(v87);
  *(&v104 + 1) = a1;
  v109 = v22;
  v110 = v85;
  v111 = v144;
  v112 = v145;
  v113 = v92;
  v114 = WORD2(v85);
  v116 = v143;
  v115 = v142;
  v117 = v91;
  v118 = v86;
  v120 = v141;
  v119 = v140;
  v121 = v90;
  v122 = WORD2(v86);
  v124 = v139;
  v123 = v138;
  v125 = v89;
  v126 = v87;
  v128 = v137;
  v127 = v136;
  v129 = v88;
  v130 = WORD2(v87);
  v132 = v135;
  v131 = v134;
  v133 = a1;
  sub_100285DC8(&v98, &v97);
  result = sub_10027A0CC(&v105);
  v68 = v103;
  v69 = v93;
  v93[4] = v102;
  v69[5] = v68;
  v69[6] = v104;
  v70 = v99;
  *v69 = v98;
  v69[1] = v70;
  v71 = v101;
  v69[2] = v100;
  v69[3] = v71;
  return result;
}

uint64_t sub_1002712F8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = 1;
  v60 = 1;
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_1001842D0(4, 0, 0);
  }

  else
  {
    sub_100031694(v56, v57);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v41 = a2;
    sub_100031694(v56, v57);
    sub_10005DC58(&qword_100592220, &unk_10049F890);
    sub_10000CADC(&qword_1005937B0, &qword_100592220, &unk_10049F890);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v58 = v44;
    sub_100031694(v56, v57);
    sub_100285408();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    sub_100031694(v56, v57);
    sub_10003804C();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v37 = v44;
    v38 = v44;
    v39 = BYTE1(v44);
    v40 = v44;
    sub_100031694(v56, v57);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v33 = BYTE5(v44);
    v34 = BYTE4(v44);
    v35 = BYTE2(v44);
    v36 = BYTE3(v44);
    sub_100031694(v56, v57);
    sub_100286288();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    if ((v44 & 8) != 0)
    {
      sub_100031694(v56, v57);
      v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v59 = 0;
    }

    else
    {
      v7 = 0;
    }

    if ((v44 & 0x10) != 0)
    {
      sub_100031694(v56, v57);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v8 = v44 | (BYTE4(v44) << 32) | (BYTE5(v44) << 40);
      v60 = 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = v44;
    v10 = BYTE3(v44);
    if ((v44 & 0x20) != 0)
    {
      sub_100031694(v56, v57);
      sub_100039F68();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v28 = v8;
      v30 = v7;
      v31 = v44;
      v32 = v44;
      v16 = *v42;
      v17 = sub_100033AA8(_swiftEmptyArrayStorage);
      v18 = type metadata accessor for BinaryDecoder();
      v19 = swift_allocObject();
      v20 = 0;
      *(v19 + 40) = &_swiftEmptyDictionarySingleton;
      *(v19 + 16) = v16;
      v21 = *(&v16 + 1) >> 62;
      if ((*(&v16 + 1) >> 62) > 1)
      {
        if (v21 == 2)
        {
          v20 = *(v16 + 16);
        }
      }

      else if (v21)
      {
        v20 = v16;
      }

      *(v19 + 32) = v20;
      swift_beginAccess();
      *(v19 + 40) = v17;
      v53 = v18;
      v54 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      v44 = v19;
      v22 = NANServiceInfo.init(from:)(&v44);
      v29 = v23;
      v25 = v24;
      v27 = v22;
      sub_1001842D0(4, 0, 0);
      v11 = v58;
      v12 = v39;
      v9 = v40;
      v13 = v35;
      v10 = v36;
      v26 = v25;
    }

    else
    {
      v28 = v8;
      v29 = 0;
      v30 = v7;
      v31 = v44;
      v32 = v44;
      v26 = 0;
      v27 = 4;
      v11 = v58;
      v12 = BYTE1(v44);
      v13 = BYTE2(v44);
    }

    sub_100002A00(v56);
    v42[0] = v11;
    v42[1] = v37;
    v42[2] = v38;
    v42[3] = v9;
    v42[4] = v12;
    v42[5] = v13;
    v42[6] = v10;
    v42[7] = v34;
    v42[8] = v33;
    v42[9] = v32;
    v42[10] = v31;
    v42[11] = v30;
    v58 = v59;
    v42[12] = v59;
    *&v42[17] = WORD2(v28);
    *&v42[13] = v28;
    v14 = v60;
    v42[19] = v60;
    *&v42[24] = v27;
    *&v43 = v29;
    *(&v43 + 1) = v26;
    sub_1002862DC(v42, &v44);
    sub_100002A00(a1);
    LOBYTE(v44) = v11;
    BYTE1(v44) = v37;
    BYTE2(v44) = v38;
    BYTE3(v44) = v40;
    BYTE4(v44) = v39;
    BYTE5(v44) = v35;
    BYTE6(v44) = v36;
    HIBYTE(v44) = v34;
    v45 = v33;
    v46 = v32;
    v47 = v31;
    v48 = v30;
    v49 = v58;
    v51 = WORD2(v28);
    v50 = v28;
    v52 = v14;
    v53 = v27;
    v54 = v29;
    v55 = v26;
    result = sub_10027A15C(&v44);
    v15 = *&v42[16];
    *v41 = *v42;
    v41[1] = v15;
    v41[2] = v43;
  }

  return result;
}

uint64_t sub_100271900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = 1;
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_1001842D0(4, 0, 0);
  }

  sub_100031694(v35, v36);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v35, v36);
  sub_10028661C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if ((v30 & 0x100) != 0)
  {
    sub_100031694(v35, v36);
    sub_100286670();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v7 = v30;
    v37 = 0;
    if ((v30 & 0x200) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100031694(v35, v36);
    v21 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v22 = v7;
    v23 = v30;
    v24 = v30;
    v40 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  v37 = 1;
  if ((v30 & 0x200) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v22 = v7;
  v23 = v30;
  v24 = v30;
  v21 = 0;
LABEL_9:
  sub_10005DC58(&qword_10058D3B0, &unk_1004869B0);
  sub_100031694(v35, v36);
  sub_10000CADC(&qword_10058D3B8, &qword_10058D3B0, &unk_1004869B0);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v8 = v30;
  v9 = v31;
  v10 = sub_100033AA8(_swiftEmptyArrayStorage);
  v11 = type metadata accessor for BinaryDecoder();
  v12 = swift_allocObject();
  v13 = 0;
  v12[5] = &_swiftEmptyDictionarySingleton;
  v12[2] = v8;
  v12[3] = v9;
  v14 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v13 = *(v8 + 16);
    }
  }

  else if (v14)
  {
    v13 = v8;
  }

  v12[4] = v13;
  swift_beginAccess();
  v12[5] = v10;
  v33 = v11;
  v34 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v30 = v12;
  sub_10000AB0C(v8, v9);

  v18 = NANServiceInfo.init(from:)(&v30);
  v25 = v20;
  v26 = v19;

  sub_1000124C8(v8, v9);
  sub_1001842D0(4, 0, 0);
  sub_100002A00(v35);
  LOBYTE(v27) = v24;
  WORD1(v27) = v23;
  DWORD1(v27) = v22;
  v15 = v37;
  BYTE8(v27) = v37;
  BYTE9(v27) = v21;
  v16 = v40;
  BYTE10(v27) = v40;
  *&v28 = v18;
  *(&v28 + 1) = v26;
  v29 = v25;
  sub_100197F08(&v27, &v30);
  sub_100002A00(a1);
  LOBYTE(v30) = v24;
  WORD1(v30) = v23;
  HIDWORD(v30) = v22;
  LOBYTE(v31) = v15;
  BYTE1(v31) = v21;
  BYTE2(v31) = v16;
  *(&v31 + 3) = v38;
  HIBYTE(v31) = v39;
  v32 = v18;
  v33 = v26;
  v34 = v25;
  result = sub_100277A14(&v30);
  v17 = v28;
  *a2 = v27;
  *(a2 + 16) = v17;
  *(a2 + 32) = v29;
  return result;
}

uint64_t sub_100271D64(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v20, v21);
  v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v20, v21);
  v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v20, v21);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v21;
  sub_100031694(v20, v21);
  v7 = UnkeyedDecodingContainer.decodeData(with:)(v4, v6);
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_12;
    }

    v13 = v7;
    v7 = *(v7 + 16);
    v11 = v13;
    v14 = *(v13 + 24);
LABEL_10:
    v12 = v8;
    if (v14 >= v7)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    v12 = v8;
    v11 = v7;
    goto LABEL_13;
  }

  if (v10)
  {
    v15 = v7;
    v7 = v7;
    v11 = v15;
    v14 = v15 >> 32;
    goto LABEL_10;
  }

  v11 = v7;
  v12 = v8;
LABEL_13:
  v16 = Data.subdata(in:)();
  v18 = v17;
  sub_1000124C8(v11, v12);
  sub_100002A00(v20);
  sub_10000AB0C(v16, v18);
  sub_100002A00(a1);
  sub_1000124C8(v16, v18);
  return v19 | (v5 << 8);
}

uint64_t sub_100271F90(uint64_t *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100031694(v12, v13);
    sub_10027952C();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v4 = v13;
    sub_100031694(v12, v13);
    v3 = UnkeyedDecodingContainer.decodeData(with:)(8, v4);
    v7 = v6;
    v8 = v13;
    sub_100031694(v12, v13);
    v9 = UnkeyedDecodingContainer.decodeData(with:)(8, v8);
    v11 = v10;
    sub_100002A00(v12);
    sub_10000AB0C(v3, v7);
    sub_10000AB0C(v9, v11);
    sub_100002A00(a1);
    sub_1000124C8(v3, v7);
    sub_1000124C8(v9, v11);
  }

  return v3;
}

uint64_t sub_100272138@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_1000449CC(0, 0, 0, 0xF000000000000000);
  }

  else
  {
    sub_100031694(v31, v32);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v22 = a2;
    sub_100031694(v31, v32);
    sub_10005DC58(&qword_1005925C0, &qword_10049F9C8);
    sub_10000CADC(&qword_100593590, &qword_1005925C0, &qword_10049F9C8);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v33 = v25[0];
    sub_100031694(v31, v32);
    sub_100285408();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    if ((v25[0] & 0xF0) == 0x20)
    {
      sub_100031694(v31, v32);
      if ((v25[0] & 0xF) == 2)
      {
        LOWORD(v13) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        sub_100031694(v31, v32);
        v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v8 = v32;
        sub_100031694(v31, v32);
        v9 = UnkeyedDecodingContainer.decodeData(with:)(v7, v8);
        v11 = v10;
        v12 = 0;
        v13 = v13;
      }

      else
      {
        v14 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v15 = v32;
        sub_100031694(v31, v32);
        v9 = UnkeyedDecodingContainer.decodeData(with:)(v14, v15);
        v11 = v16;
        v13 = 0;
        v12 = 1;
      }

      v21 = v25[0];
      sub_1000449CC(0, 0, 0, 0xF000000000000000);
    }

    else
    {
      v21 = v25[0];
      v13 = 0;
      v12 = 0;
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    sub_100031694(v31, v32);
    sub_10028545C();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v17 = v34;
    sub_100002A00(v31);
    v20 = v25[0];
    v18 = v33;
    LOBYTE(v23) = v33;
    BYTE1(v23) = v25[0];
    BYTE2(v23) = v21;
    *(&v23 + 1) = v13;
    *v24 = v12;
    *&v24[8] = v9;
    *&v24[16] = v11;
    *&v24[24] = v17;
    sub_10012A628(&v23, v25);
    sub_100002A00(a1);
    v25[0] = v18;
    v25[1] = v20;
    v25[2] = v21;
    v26 = v13;
    v27 = v12;
    v28 = v9;
    v29 = v11;
    v30 = v17;
    result = sub_1001440B0(v25);
    v19 = *v24;
    *v22 = v23;
    v22[1] = v19;
    *(v22 + 26) = *&v24[10];
  }

  return result;
}

uint64_t sub_100272538@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  v6 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(&v49, v50);
  sub_100285630();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v51 = a2;
  sub_100031694(&v49, v50);
  sub_100285684();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v33 = v40[0];
  sub_100031694(&v49, v50);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(&v49, v50);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v32 = v40[0];
  v7 = v50;
  sub_100031694(&v49, v50);
  v30 = v40[0];
  *&v31 = UnkeyedDecodingContainer.decodeData(with:)(32, v7);
  *(&v31 + 1) = v8;
  v9 = v50;
  sub_100031694(&v49, v50);
  v10 = UnkeyedDecodingContainer.decodeData(with:)(16, v9);
  v12 = v11;
  v29 = v10;
  sub_100031694(&v49, v50);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v28 = v40[0];
  sub_100031694(&v49, v50);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v26 = v40[0];
  v13 = v50;
  sub_100031694(&v49, v50);
  *&v27 = UnkeyedDecodingContainer.decodeData(with:)(16, v13);
  *(&v27 + 1) = v14;
  v25 = v40[0];
  sub_100031694(&v49, v50);
  v15 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v16 = v50;
  sub_100031694(&v49, v50);
  v24 = UnkeyedDecodingContainer.decodeData(with:)(v15, v16);
  v23 = v17;
  sub_100002A00(&v49);
  LOBYTE(v34) = v33;
  WORD1(v34) = v25;
  WORD2(v34) = v30;
  *(&v34 + 1) = v32;
  v35 = v31;
  *&v36 = v29;
  *(&v36 + 1) = v12;
  *&v37 = v28;
  *(&v37 + 1) = v26;
  v38 = v27;
  *&v39 = v24;
  *(&v39 + 1) = v23;
  sub_100143E5C(&v34, v40);
  sub_100002A00(a1);
  LOBYTE(v40[0]) = v33;
  WORD1(v40[0]) = v25;
  WORD2(v40[0]) = v30;
  v40[1] = v32;
  v41 = v31;
  v42 = v29;
  v43 = v12;
  v44 = v28;
  v45 = v26;
  v46 = v27;
  v47 = v24;
  v48 = v23;
  result = sub_100143EB8(v40);
  v19 = v37;
  v20 = v51;
  v51[2] = v36;
  v20[3] = v19;
  v21 = v39;
  v20[4] = v38;
  v20[5] = v21;
  v22 = v35;
  *v20 = v34;
  v20[1] = v22;
  return result;
}

unint64_t sub_100272C84(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v7, v8);
  sub_100285F2C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if ((v6 & 8) != 0)
  {
    sub_100031694(v7, v8);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  }

  else
  {
    v5 = 0;
  }

  sub_100002A00(v7);
  sub_100002A00(a1);
  return (v5 << 16) | (((v6 & 8) == 0) << 32) | v6;
}

uint64_t sub_100272DB8(uint64_t *a1)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v42, v44);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v9 = v37;
  sub_100031694(v42, v44);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v10 = v37;
  sub_100031694(v42, v44);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v35 = v10;
  v11 = v37;
  sub_100031694(v42, v44);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v34 = v11;
  v12 = v37;
  sub_100031694(v42, v44);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v33 = v12;
  v13 = v37;
  sub_100031694(v42, v44);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v31 = v13;
  v14 = v37;
  v32 = v45;
  sub_100031694(v42, v44);
  sub_100285F80();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v46 = v37;
  v32 = v45;
  sub_100031694(v42, v44);
  sub_100285FD4();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v47 = 0;
  LODWORD(v32) = v37;
  v15 = sub_100038CD4(0, 2uLL, v37);
  if (v15 <= 1)
  {
    if (v15)
    {
      sub_100031694(v42, v44);
      sub_1000E537C();
      UnkeyedDecodingContainer.inferredDecode<A>()();
      v17 = v37 | (HIWORD(v37) << 16) | (v38 << 32) | (v39 << 48);
      v16 = v40 | 0x100;
    }

    else
    {
      sub_100031694(v42, v44);
      sub_1000E5328();
      UnkeyedDecodingContainer.inferredDecode<A>()();
      v16 = 0;
      v17 = v37;
    }

    goto LABEL_15;
  }

  if (v15 == 2)
  {
    v18 = a1[3];
    v30 = a1[4];
    sub_100029B34(a1, v18);
    v19 = dispatch thunk of Decoder.userInfo.getter();
    if (qword_10058A848 != -1)
    {
      swift_once();
    }

    v30 = sub_100037644(v3, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
    if (*(v19 + 16) && (v20 = sub_10007CF6C(v30), (v21 & 1) != 0))
    {
      sub_100002B30(*(v19 + 56) + 32 * v20, v41);
    }

    else
    {

      memset(v41, 0, sizeof(v41));
    }

    sub_10002B154(a1, &v37);
    v25 = sub_10005DC58(&qword_10058D3D8, &unk_10049EDB0);
    v26 = type metadata accessor for BinaryDecoder();
    v28[2] = v25;
    v28[1] = v26;
    if (swift_dynamicCast())
    {
      (*(v4 + 16))(v7, v30, v3);
      v36[3] = &type metadata for Bool;
      LOBYTE(v36[0]) = 1;
      swift_beginAccess();
      sub_100072BFC(v36, v7);
      swift_endAccess();
    }

    v29 = v45;
    sub_100031694(v42, v44);
    sub_1000E537C();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v29 = v37 | (HIWORD(v37) << 16) | (v38 << 32) | (v39 << 48);
    v16 = v40 | 0x100;
    sub_10002B154(a1, &v37);
    if (swift_dynamicCast())
    {
      (*(v4 + 16))(v7, v30, v3);
      sub_100012400(v41, v36, &qword_10058BA80, &qword_1004818C0);
      swift_beginAccess();
      sub_100072BFC(v36, v7);
      swift_endAccess();
    }

    sub_100016290(v41, &qword_10058BA80, &qword_1004818C0);
    v23 = v32;
    v17 = v29;
    goto LABEL_16;
  }

  if (v15 == 3)
  {
    v17 = 0;
    v16 = -256;
LABEL_15:
    v23 = v32;
LABEL_16:
    sub_100002A00(v42);
    v24 = v47;
    sub_100002A00(a1);
    result = v9 | (v35 << 8) | (v34 << 32);
    v42[0] = v14;
    v42[1] = v46;
    v42[2] = v23;
    v42[3] = v24 & 1;
    *&v42[4] = v17;
    v43 = v16;
    return result;
  }

  sub_10000B02C();
  swift_allocError();
  *v27 = xmmword_10047CE70;
  *(v27 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1002736B0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
LABEL_4:
    sub_1001842AC(0, 0, 16711680);
    return sub_1001842D0(4, 0, 0);
  }

  sub_100031694(v118, v119);
  sub_1002866C4();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v7 = *(&v102 + 1);
  v123 = v102;
  sub_100031694(v118, v119);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v118, v119);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v118, v119);
  sub_100286718();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v8 = v102;
  v96 = v102;
  if ((v102 & 0x40) != 0)
  {
    sub_100031694(v118, v119);
    v84 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v8 = v102;
  }

  else
  {
    v84 = 0;
  }

  v85 = v102;
  v86 = v102;
  v122 = (v8 & 0x40) == 0;
  if ((v8 & 4) == 0)
  {
    v9 = 0;
    if ((v8 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

  sub_10005DC58(&qword_10058CC70, &unk_100484290);
  sub_100031694(v118, v119);
  sub_10000CADC(&qword_10058D408, &qword_10058CC70, &unk_100484290);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v15 = v102;
  v16 = sub_100033AA8(_swiftEmptyArrayStorage);
  v17 = type metadata accessor for BinaryDecoder();
  v18 = swift_allocObject();
  v19 = 0;
  *(v18 + 40) = &_swiftEmptyDictionarySingleton;
  v83 = v7;
  *(v18 + 16) = v15;
  v20 = *(&v15 + 1) >> 62;
  if ((*(&v15 + 1) >> 62) > 1)
  {
    if (v20 == 2)
    {
      v19 = *(v15 + 16);
    }
  }

  else if (v20)
  {
    v19 = v15;
  }

  *(v18 + 32) = v19;
  swift_beginAccess();
  *(v18 + 40) = v16;
  v22 = *(v18 + 16);
  v21 = *(v18 + 24);
  sub_10000AB0C(v15, *(&v15 + 1));
  v23 = v21 >> 62;
  v88 = v22;
  v81 = v22 >> 32;
  v92 = BYTE6(v21);
  v78 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = v83;
    v24 = *(v18 + 32);
    if (v23 > 1)
    {
      break;
    }

    v25 = v92;
    if (v23)
    {
      v25 = v81;
    }

LABEL_24:
    if (v24 >= v25)
    {
      goto LABEL_32;
    }

LABEL_27:
    v108 = v17;
    v109 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
    *&v102 = v18;

    v26 = sub_1001424D4(&v102);
    v28 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_1001162E8(0, v78[2] + 1, 1, v78);
    }

    v30 = v78[2];
    v29 = v78[3];
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v33 = sub_1001162E8((v29 > 1), v30 + 1, 1, v78);
      v31 = v30 + 1;
      v78 = v33;
    }

    v78[2] = v31;
    v32 = &v78[2 * v30];
    v32[4] = v26;
    v32[5] = v28;
  }

  if (v23 == 2)
  {
    v25 = *(v88 + 24);
    goto LABEL_24;
  }

  if (v24 < 0)
  {
    goto LABEL_27;
  }

LABEL_32:

  v34 = v78[2];
  if (v34)
  {
    *&v102 = _swiftEmptyArrayStorage;
    sub_1000C05C4(0, v34, 0);
    v9 = v102;
    v35 = v78 + 5;
    while (1)
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      v38 = *v35 >> 62;
      v93 = v34;
      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v40 = *(v36 + 16);
          v39 = *(v36 + 24);
          goto LABEL_40;
        }
      }

      else if (v38)
      {
        v40 = v36;
        v39 = v36 >> 32;
LABEL_40:
        sub_10000AB0C(v36, v37);
        if (v39 < v40)
        {
          __break(1u);
          goto LABEL_82;
        }
      }

      v41 = Data.subdata(in:)();
      v89 = v42;
      sub_1000124C8(v36, v37);
      *&v102 = v9;
      v44 = v9[2];
      v43 = v9[3];
      if (v44 >= v43 >> 1)
      {
        sub_1000C05C4((v43 > 1), v44 + 1, 1);
        v9 = v102;
      }

      v35 += 2;
      v9[2] = v44 + 1;
      v45 = &v9[2 * v44];
      v45[4] = v41;
      v45[5] = v89;
      v34 = v93 - 1;
      if (v93 == 1)
      {

        sub_1000124C8(v15, *(&v15 + 1));
        v7 = v83;
        goto LABEL_47;
      }
    }
  }

  sub_1000124C8(v15, *(&v15 + 1));
  v9 = _swiftEmptyArrayStorage;
LABEL_47:
  v8 = v96;
  if ((v96 & 8) == 0)
  {
LABEL_10:
    v10 = 16711680;
    sub_1001842AC(0, 0, 16711680);
    v11 = 0;
    v12 = 0;
    if ((v8 & 0x10) == 0)
    {
LABEL_11:
      v77 = 0;
      v79 = 0;
      v80 = 4;
LABEL_12:
      sub_100002A00(v118);
      *&v97 = v123;
      *(&v97 + 1) = v7;
      LOBYTE(v98) = v86;
      BYTE1(v98) = v85;
      BYTE2(v98) = v96;
      WORD2(v98) = v84;
      v87 = v122;
      BYTE6(v98) = v122;
      *(&v98 + 1) = v9;
      *&v99 = v11;
      *(&v99 + 1) = v12;
      BYTE2(v100) = BYTE2(v10);
      LOWORD(v100) = v10;
      *(&v100 + 3) = v120;
      BYTE7(v100) = v121;
      *(&v100 + 1) = v80;
      *&v101 = v79;
      *(&v101 + 1) = v77;
      sub_10028676C(&v97, &v102);
      sub_100002A00(a1);
      *&v102 = v123;
      *(&v102 + 1) = v7;
      v103 = v86;
      v104 = v85;
      v105 = v96;
      v106 = v84;
      v107 = v87;
      v108 = v9;
      v109 = v11;
      v110 = v12;
      v112 = BYTE2(v10);
      v111 = v10;
      v113 = v120;
      v114 = v121;
      v115 = v80;
      v116 = v79;
      v117 = v77;
      result = sub_100197EB4(&v102);
      v13 = v100;
      a2[2] = v99;
      a2[3] = v13;
      a2[4] = v101;
      v14 = v98;
      *a2 = v97;
      a2[1] = v14;
      return result;
    }

LABEL_76:
    sub_10005DC58(&qword_10058CC70, &unk_100484290);
    sub_100031694(v118, v119);
    sub_10000CADC(&qword_10058D408, &qword_10058CC70, &unk_100484290);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v67 = v102;
    v91 = sub_100033AA8(_swiftEmptyArrayStorage);
    v82 = type metadata accessor for BinaryDecoder();
    v68 = swift_allocObject();
    v69 = v68;
    v70 = 0;
    *(v68 + 40) = &_swiftEmptyDictionarySingleton;
    *(v68 + 16) = v67;
    v71 = *(&v67 + 1) >> 62;
    if ((*(&v67 + 1) >> 62) > 1)
    {
      if (v71 == 2)
      {
        v70 = *(v67 + 16);
      }
    }

    else if (v71)
    {
      v70 = v67;
    }

    *(v68 + 32) = v70;
    swift_beginAccess();
    *(v69 + 40) = v91;
    v108 = v82;
    v109 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
    *&v102 = v69;
    v72 = NANServiceInfo.init(from:)(&v102);
    v79 = v73;
    v80 = v72;
    v77 = v74;
    sub_1001842D0(4, 0, 0);
    goto LABEL_12;
  }

LABEL_48:
  sub_10005DC58(&qword_10058CC70, &unk_100484290);
  sub_100031694(v118, v119);
  sub_10000CADC(&qword_10058D408, &qword_10058CC70, &unk_100484290);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v102 = v97;
  v46 = *(&v97 + 1) >> 62;
  if ((*(&v97 + 1) >> 62) > 1)
  {
    if (v46 != 2)
    {
      goto LABEL_56;
    }

    v48 = *(v97 + 16);
    v47 = *(v97 + 24);
LABEL_55:
    if (v48 != v47)
    {
      goto LABEL_57;
    }

LABEL_56:
    sub_10000B02C();
    swift_allocError();
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 2;
    swift_willThrow();
    sub_1000124C8(v102, *(&v102 + 1));
    sub_100002A00(v118);
    sub_100002A00(a1);
    sub_1000124C8(v123, v7);

    goto LABEL_4;
  }

  if (v46)
  {
    v48 = v97;
    v47 = v97 >> 32;
    goto LABEL_55;
  }

  if ((*(&v97 + 1) & 0xFF000000000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_57:
  v50 = sub_100264734();
  v51 = sub_100038CD4(0, 1uLL, v50);
  if (!v51)
  {
    v52 = *(&v102 + 1);
    v53 = v102;
    v94 = sub_100033AA8(_swiftEmptyArrayStorage);
    type metadata accessor for BinaryDecoder();
    v54 = swift_allocObject();
    v55 = 0;
    v54[5] = &_swiftEmptyDictionarySingleton;
    v54[2] = v53;
    v54[3] = v52;
    v56 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v56 == 2)
      {
        v55 = *(v53 + 16);
      }
    }

    else if (v56)
    {
      v55 = v53;
    }

    v54[4] = v55;
    swift_beginAccess();
    v54[5] = v94;
    sub_10000AB0C(v53, v52);
    v90 = sub_100239F6C();

    v95 = sub_1000E5570(1, 1uLL, v50, v61) != 0;
    sub_1000124C8(v53, v52);
    v10 = 0;
LABEL_75:
    sub_1001842AC(0, 0, 16711680);
    v11 = v90;
    v12 = v95;
    if ((v96 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_76;
  }

  if (v51 != 1)
  {
LABEL_82:
    sub_10000B02C();
    swift_allocError();
    *v75 = xmmword_10047CE70;
    *(v75 + 16) = 2;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_83;
  }

  v57 = v102;
  v58 = *(&v102 + 1) >> 62;
  if ((*(&v102 + 1) >> 62) > 1)
  {
    if (v58 != 2)
    {
      goto LABEL_73;
    }

    v59 = *(v102 + 16);
    v60 = *(v102 + 24);
  }

  else
  {
    if (!v58)
    {
      goto LABEL_73;
    }

    v59 = v102;
    v60 = v102 >> 32;
  }

  if (v60 < v59)
  {
    __break(1u);
  }

LABEL_73:
  v90 = Data.subdata(in:)();
  v95 = v62;
  v63 = sub_100038CD4(2, 2uLL, v50);
  v64 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v63);
  if (v64 != 4)
  {
    v65 = v64;
    v66 = (sub_1000E5570(1, 1uLL, v50, v64) != 0) << 8;
    sub_1000124C8(v57, *(&v57 + 1));
    v10 = v66 | v65 | 0x10000;
    goto LABEL_75;
  }

LABEL_83:
  sub_10000B02C();
  swift_allocError();
  *v76 = xmmword_10047CE70;
  *(v76 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t *sub_10027446C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v112 = 1;
  v113 = 1;
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    sub_100017554(0, 0xF000000000000000);
    return sub_1001842D0(4, 0, 0);
  }

  sub_100031694(v108, v109);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v90 = a2;
  sub_100031694(v108, v109);
  sub_10005DC58(&qword_100592220, &unk_10049F890);
  sub_10000CADC(&qword_1005937B0, &qword_100592220, &unk_10049F890);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v111 = v94;
  v89 = v94;
  sub_100031694(v108, v109);
  sub_100285408();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v108, v109);
  sub_10003804C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v85 = v94;
  v86 = v94;
  v84 = BYTE1(v94);
  sub_100031694(v108, v109);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v74 = BYTE5(v94);
  v75 = BYTE4(v94);
  v76 = BYTE3(v94);
  v77 = BYTE2(v94);
  sub_100031694(v108, v109);
  sub_1002861FC();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if ((v94 & 8) != 0)
  {
    sub_100031694(v108, v109);
    v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v112 = 0;
  }

  else
  {
    v7 = 0;
  }

  if ((v94 & 0x10) != 0)
  {
    sub_100031694(v108, v109);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v62 = v7;
    v63 = v94;
    v61 = v94 | (BYTE4(v94) << 32) | (BYTE5(v94) << 40);
    v113 = 0;
  }

  else
  {
    v62 = v7;
    v63 = v94;
    v61 = 0;
  }

  v8 = v109;
  v9 = v110;
  sub_100031694(v108, v109);
  v10 = sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
  v11 = sub_10000CADC(&qword_10058CF88, &qword_10058CF90, &qword_1004841A0);
  result = UnkeyedDecodingContainer.inferredArrayDecode<A>()(v8, v10, v9, v11);
  v73 = result[2];
  v60 = v94;
  v78 = result;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!v73)
  {
    v17 = 0xF000000000000000;
    v18 = 4;
    v19 = v111;
LABEL_54:

    sub_100002A00(v108);
    v91[0] = v19;
    v91[1] = v89;
    v91[2] = v86;
    v91[3] = v85;
    v91[4] = v84;
    v91[5] = v77;
    v91[6] = v76;
    v91[7] = v75;
    v91[8] = v74;
    v91[9] = v60;
    v91[10] = v63;
    v91[11] = v62;
    v88 = v112;
    v91[12] = v112;
    *&v91[17] = WORD2(v61);
    *&v91[13] = v61;
    v56 = v113;
    v91[19] = v113;
    *&v91[24] = v12;
    *&v92 = v17;
    *(&v92 + 1) = v18;
    *&v93 = v13;
    *(&v93 + 1) = v14;
    sub_100286250(v91, &v94);
    sub_100002A00(a1);
    LOBYTE(v94) = v111;
    BYTE1(v94) = v89;
    BYTE2(v94) = v86;
    BYTE3(v94) = v85;
    BYTE4(v94) = v84;
    BYTE5(v94) = v77;
    BYTE6(v94) = v76;
    HIBYTE(v94) = v75;
    v95 = v74;
    v96 = v60;
    v97 = v63;
    v98 = v62;
    v99 = v88;
    v101 = WORD2(v61);
    v100 = v61;
    v102 = v56;
    v103 = v12;
    v104 = v17;
    v105 = v18;
    v106 = v13;
    v107 = v14;
    result = sub_10027A06C(&v94);
    v57 = *&v91[16];
    *v90 = *v91;
    v90[1] = v57;
    v58 = v93;
    v90[2] = v92;
    v90[3] = v58;
    return result;
  }

  v15 = 0;
  v59 = enum case for DecodingError.valueNotFound(_:);
  v16 = result + 6;
  v17 = 0xF000000000000000;
  v18 = 4;
  v19 = v111;
  while (v15 < v78[2])
  {
    v87 = *(v16 - 1);
    v83 = *v16;
    if (*(v16 - 16))
    {
      if (*(v16 - 16) == 1)
      {
        v79 = v16;
        v81 = v15;
        v24 = type metadata accessor for BinaryDecoder();
        v25 = swift_allocObject();
        v26 = 0;
        v25[5] = &_swiftEmptyDictionarySingleton;
        v25[2] = v87;
        v25[3] = v83;
        v27 = v83 >> 62;
        v70 = v24;
        if ((v83 >> 62) > 1)
        {
          if (v27 == 2)
          {
            v26 = *(v87 + 16);
          }
        }

        else if (v27)
        {
          v26 = v87;
        }

        v25[4] = v26;
        v31 = v25;
        swift_beginAccess();
        *(v31 + 40) = &_swiftEmptyDictionarySingleton;
        v103 = v70;
        v104 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v94 = v31;
        sub_10000AB0C(v87, v83);
        sub_10000AB0C(v87, v83);
        sub_10000AB0C(v87, v83);

        v64 = sub_1002060AC(&v94);
        v67 = v32;
        v71 = v33;
        sub_1000124C8(v87, v83);

        sub_1000124C8(v87, v83);
        result = sub_1001842D0(v18, v13, v14);
        v18 = v64;
        v13 = v67;
        v14 = v71;
        v19 = v111;
        v16 = v79;
        v15 = v81;
      }

      goto LABEL_16;
    }

    v80 = v16;
    v82 = v15;
    type metadata accessor for BinaryDecoder();
    v28 = swift_allocObject();
    v29 = 0;
    v28[5] = &_swiftEmptyDictionarySingleton;
    v28[2] = v87;
    v28[3] = v83;
    v30 = v83 >> 62;
    if ((v83 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v29 = *(v87 + 16);
      }
    }

    else if (v30)
    {
      v29 = v87;
    }

    v28[4] = v29;
    swift_beginAccess();
    v28[5] = &_swiftEmptyDictionarySingleton;
    v103 = &type metadata for BinaryDecoder.UnkeyedContainer;
    v34 = sub_1000325F0();
    v104 = v34;
    v94 = v28;
    v35 = *sub_100031694(&v94, &type metadata for BinaryDecoder.UnkeyedContainer);
    *&v91[24] = &type metadata for BinaryDecoder.UnkeyedContainer;
    *&v92 = v34;
    *v91 = v35;
    result = sub_100031694(v91, &type metadata for BinaryDecoder.UnkeyedContainer);
    v36 = *result;
    v37 = *(*result + 32);
    v38 = v37 + 8;
    if (__OFADD__(v37, 8))
    {
      goto LABEL_56;
    }

    v39 = v36[2];
    v40 = v36[3];
    v41 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      v43 = v87;
      if (v41 != 2)
      {
        if (v38 < 1)
        {
          goto LABEL_40;
        }

        goto LABEL_13;
      }

      v42 = *(v39 + 24);
    }

    else
    {
      if (v41)
      {
        v42 = v39 >> 32;
      }

      else
      {
        v42 = BYTE6(v40);
      }

      v43 = v87;
    }

    if (v42 >= v38)
    {
LABEL_40:
      v68 = v36[3];
      v65 = v37 + 8;
      if (v38 < v37)
      {
        goto LABEL_57;
      }

      sub_10000AB0C(v43, v83);

      sub_10000AB0C(v87, v83);

      v69 = Data._Representation.subscript.getter();
      v72 = v44;
      v36[4] = v65;

      v45 = v72 >> 62;
      if ((v72 >> 62) > 1)
      {
        v47 = v87;
        v48 = v69;
        if (v45 == 2)
        {
          v50 = *(v69 + 16);
          v49 = *(v69 + 24);
          v51 = __OFSUB__(v49, v50);
          v46 = v49 - v50;
          if (v51)
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }
      }

      else
      {
        if (v45)
        {
          v48 = v69;
          LODWORD(v46) = HIDWORD(v69) - v69;
          if (__OFSUB__(HIDWORD(v69), v69))
          {
            goto LABEL_59;
          }

          v46 = v46;
          v47 = v87;
        }

        else
        {
          v46 = BYTE6(v72);
          v47 = v87;
          v48 = v69;
        }

LABEL_50:
        if (v46 == 8)
        {
          v52 = v47;
          sub_100002A00(v91);

          sub_100002A00(&v94);
          v23 = v52;
          v21 = v69;
          v22 = v72;
          goto LABEL_15;
        }
      }

      v66 = type metadata accessor for DecodingError();
      swift_allocError();
      v54 = v53;
      v55 = *(sub_10005DC58(&qword_10058CE38, &unk_100483C40) + 48);
      *v54 = &type metadata for Data;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v66 - 8) + 104))(v54, v59);
      swift_willThrow();
      sub_1000124C8(v48, v72);
      goto LABEL_14;
    }

LABEL_13:
    sub_10000B02C();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 2;
    swift_willThrow();
    sub_10000AB0C(v43, v83);

    sub_10000AB0C(v43, v83);

LABEL_14:
    sub_100002A00(v91);

    sub_100002A00(&v94);

    v21 = 0;
    v22 = 0xF000000000000000;
    v23 = v87;
LABEL_15:
    sub_1000124C8(v23, v83);
    result = sub_100017554(v12, v17);
    v12 = v21;
    v17 = v22;
    v16 = v80;
    v15 = v82;
    v19 = v111;
LABEL_16:
    ++v15;
    v16 += 3;
    if (v73 == v15)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_100274FB8(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v11, v12);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v11, v12);
  sub_10005DC58(&qword_1005922F8, &qword_10049F8D8);
  sub_10000CADC(&qword_100593728, &qword_1005922F8, &qword_10049F8D8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v11, v12);
  sub_100285408();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v11, v12);
  sub_100285E00();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if ((v10 & 2) != 0)
  {
    sub_100031694(v11, v12);
    sub_10005DC58(&qword_100593738, &qword_1004ABAC8);
    sub_100285E54();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v5 = v10 << 32;
  }

  else
  {
    v5 = 0;
  }

  if ((v10 & 4) != 0)
  {
    v9 = v5;
    v6 = v12;
    v7 = v13;
    sub_100031694(v11, v12);
    v8 = sub_100285534();
    UnkeyedDecodingContainer.inferredArrayDecode<A>()(v6, &type metadata for NANScheduleEntry, v7, v8);
    v5 = v9;
  }

  sub_100002A00(v11);
  sub_100002A00(a1);
  return v10 | (v10 << 8) | (v10 << 16) | (v10 << 24) | v5;
}

void *sub_1002752A8(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v7, v8);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    sub_100031694(v7, v8);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    sub_100031694(v7, v8);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v4 = (v6 | (v6 << 8) | (v6 << 16));
    sub_100002A00(v7);
  }

  sub_100002A00(a1);
  return v4;
}

unint64_t sub_10027541C(uint64_t *a1)
{
  v12 = 1;
  v11 = 1;
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v9, v10);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v9, v10);
  sub_10005DC58(&qword_1005922B8, &qword_10049F8C8);
  sub_10000CADC(&qword_100593770, &qword_1005922B8, &qword_10049F8C8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v9, v10);
  sub_100285408();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v9, v10);
  sub_100286028();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  if (v8)
  {
    sub_100031694(v9, v10);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v12 = 0;
    v7 = v5 << 32;
  }

  else
  {
    v7 = 0;
  }

  if ((v8 & 0x10) != 0)
  {
    sub_100031694(v9, v10);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v11 = 0;
  }

  sub_100002A00(v9);
  v6 = v12;
  sub_100002A00(a1);
  return v7 | ((v6 & 1) << 40) | (v8 << 24) | (v8 << 16) | (v8 << 8) | v8;
}

uint64_t sub_10027576C(uint64_t a1)
{
  result = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  if (!v21)
  {
    return result;
  }

  v3 = 0;
  v20 = a1 + 32;
  while (1)
  {
    v4 = *(v20 + 8 * v3);
    v5 = v22;
    v6 = v22[2];
    v7 = *(v4 + 16);
    if (v6 <= v7)
    {

      v8 = v22;
      if (!v6)
      {
LABEL_23:
        if (!*(v4 + 16))
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }
    }

    else
    {

      result = sub_100235DAC((v6 - v7));
      v8 = v22;
      v6 = v22[2];
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    if (v7)
    {
      v9 = 0;
      v10 = v7 - 1;
      v11 = v6 - 1;
      while (1)
      {
        v12 = *(v4 + 32 + v9);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000C28C4(v8);
          v8 = result;
        }

        v6 = *(v8 + 16);
        if (v9 >= v6)
        {
          break;
        }

        *(v8 + v9 + 32) &= v12;
        if (v11 != v9)
        {
          v13 = v10 == v9++;
          if (!v13)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_15:
    if (v6 == *(v4 + 16))
    {
      break;
    }

LABEL_24:

    v15 = v22[2];
    v16 = *(v4 + 16);

    if (v15 && v16)
    {
      v17 = 0;
      v18 = v15 - 1;
      while (1)
      {
        v19 = *(v4 + 32 + v17);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000C28C4(v5);
          v5 = result;
        }

        v15 = *(v5 + 16);
        if (v17 >= v15)
        {
          break;
        }

        *(v5 + v17 + 32) |= v19;
        v22 = v5;
        if (v18 != v17)
        {
          v13 = v16 - 1 == v17++;
          if (!v13)
          {
            continue;
          }
        }

        goto LABEL_33;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_33:
    if (v15 < v16)
    {
      sub_100234FC0(v4, v4 + 32, v15, (2 * v16) | 1);
      goto LABEL_4;
    }

LABEL_3:

LABEL_4:
    ++v3;

    if (v3 == v21)
    {
      return v22;
    }
  }

  if (v8 == v4)
  {
    goto LABEL_3;
  }

  v14 = 32;
  while (v6)
  {
    if (*(v8 + v14) != *(v4 + v14))
    {
      goto LABEL_24;
    }

    ++v14;
    if (!--v6)
    {
      goto LABEL_3;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1002759E0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100275A18(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100275A50(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100275A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100275AC0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      if (BYTE6(a2) != 8)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 8)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 != 2)
  {
    goto LABEL_21;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v12 != 8)
  {
    goto LABEL_21;
  }

LABEL_11:
  v13 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_21;
    }

    v16 = *(a3 + 16);
    v15 = *(a3 + 24);
    v11 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v11)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a4);
    goto LABEL_20;
  }

  LODWORD(v14) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v14 = v14;
LABEL_20:
    if (v14 == 8)
    {
      return v7;
    }

LABEL_21:
    sub_10000B02C();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 2;
    swift_willThrow();
    sub_1000124C8(a3, a4);
    sub_1000124C8(v7, a2);
    return v7;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100275C0C(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v81 = type metadata accessor for SymmetricKey();
  v80 = *(v81 - 8);
  v3 = *(v80 + 64);
  __chkstk_darwin();
  v78 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10005DC58(&qword_100592550, &unk_10049F998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v77 - v8;
  v85 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  v10 = *(v85 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (!v14)
  {
LABEL_20:
    v33 = v89;
    v34 = sub_100033AA8(_swiftEmptyArrayStorage);
    v35 = type metadata accessor for BinaryEncoder();
    v36 = swift_allocObject();
    *(v36 + 1) = xmmword_100480A90;
    v19 = (v36 + 2);
    v36[4] = v34;
    v94 = v35;
    v95 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v92 = v36;

    sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
    sub_10000CADC(&qword_1005938C8, &qword_10058CCE0, &unk_1004ABB80);
    Array<A>.encode(to:)();
    v37 = v33;
    if (v33)
    {

      sub_100002A00(&v92);
      return v19;
    }

    sub_100002A00(&v92);
    swift_beginAccess();
    v38 = v36[2];
    v39 = v36[3];
    sub_10000AB0C(v38, v39);

    v96 = v38;
    v97 = v39;
    v40 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      v43 = 0;
      if (v40 != 2)
      {
        goto LABEL_46;
      }

      v45 = *(v38 + 16);
      v44 = *(v38 + 24);
      v28 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v28)
      {
        goto LABEL_72;
      }

      if (v46 <= 15)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!v40)
      {
        if (BYTE6(v39) > 0xFuLL)
        {
          goto LABEL_25;
        }

LABEL_32:
        if (v40 == 2)
        {
          goto LABEL_42;
        }

        if (v40 != 1)
        {
          goto LABEL_45;
        }

        LODWORD(v43) = HIDWORD(v38) - v38;
        if (!__OFSUB__(HIDWORD(v38), v38))
        {
          v43 = v43;
          goto LABEL_46;
        }

        goto LABEL_77;
      }

      if (__OFSUB__(HIDWORD(v38), v38))
      {
        goto LABEL_73;
      }

      if (HIDWORD(v38) - v38 <= 15)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    if (v40 > 1)
    {
LABEL_51:
      if (v40 != 2)
      {
        goto LABEL_66;
      }

      v59 = *(v38 + 16);
      v41 = *(v38 + 24);
      v28 = __OFSUB__(v41, v59);
      LOBYTE(v41) = v41 - v59;
      if (v28)
      {
        goto LABEL_74;
      }
    }

    else
    {
      while (v40)
      {
        LOBYTE(v41) = BYTE4(v38) - v38;
        if (!__OFSUB__(HIDWORD(v38), v38))
        {
          goto LABEL_53;
        }

        __break(1u);
LABEL_42:
        v48 = *(v38 + 16);
        v47 = *(v38 + 24);
        v28 = __OFSUB__(v47, v48);
        v43 = v47 - v48;
        if (v28)
        {
          __break(1u);
LABEL_45:
          v43 = BYTE6(v39);
        }

LABEL_46:
        v49 = v37;
        v50 = 16 - v43;
        if (__OFSUB__(16, v43))
        {
          goto LABEL_70;
        }

        if (v40 == 2)
        {
          v51 = *(v38 + 24);
        }

        v52 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
        v94 = v52;
        v95 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
        LOBYTE(v92) = -35;
        v90 = *sub_100029B34(&v92, v52);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_100002A00(&v92);
        if (__OFSUB__(v50, 1))
        {
          goto LABEL_71;
        }

        v53 = sub_10014345C(v50 - 1);
        v55 = v54;
        v94 = &type metadata for Data;
        v95 = &protocol witness table for Data;
        v92 = v53;
        v93 = v54;
        v56 = sub_100029B34(&v92, &type metadata for Data);
        v57 = *v56;
        v58 = v56[1];
        sub_10000AB0C(v53, v55);
        sub_100178A18(v57, v58);
        v37 = v49;
        sub_1000124C8(v53, v55);
        sub_100002A00(&v92);
        v38 = v96;
        v39 = v97;
        v40 = v97 >> 62;
        if ((v97 >> 62) > 1)
        {
          goto LABEL_51;
        }
      }

      v41 = HIWORD(v39);
    }

LABEL_53:
    if ((v41 & 7) != 0)
    {
      if (v40)
      {
        if (v40 == 2)
        {
          v60 = *(v38 + 16);
          v61 = *(v38 + 24);
          v28 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          if (v28)
          {
            goto LABEL_75;
          }

          v63 = -v62 < 0;
          v64 = -v62 & 7;
          v65 = v62 & 7;
          if (v63)
          {
            v66 = v65;
          }

          else
          {
            v66 = -v64;
          }
        }

        else
        {
          if (__OFSUB__(HIDWORD(v38), v38))
          {
            goto LABEL_76;
          }

          v67 = (BYTE4(v38) - v38) & 7;
          if (v38 - HIDWORD(v38) >= 0)
          {
            v67 = -((v38 - HIDWORD(v38)) & 7);
          }

          v66 = v67;
        }
      }

      else
      {
        v66 = HIWORD(v39) & 7;
      }

      v68 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
      v94 = v68;
      v95 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
      LOBYTE(v92) = -35;
      v90 = *sub_100029B34(&v92, v68);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_100002A00(&v92);
      v69 = sub_10014345C(7 - v66);
      v71 = v70;
      v94 = &type metadata for Data;
      v95 = &protocol witness table for Data;
      v92 = v69;
      v93 = v70;
      v72 = sub_100029B34(&v92, &type metadata for Data);
      v73 = *v72;
      v74 = v72[1];
      sub_10000AB0C(v69, v71);
      sub_100178A18(v73, v74);
      sub_1000124C8(v69, v71);
      sub_100002A00(&v92);
      v38 = v96;
      v39 = v97;
    }

LABEL_66:
    v92 = v38;
    v93 = v39;
    sub_10000AB0C(v38, v39);
    v75 = v78;
    SymmetricKey.init<A>(data:)();
    v19 = static AES.KeyWrap.wrap(_:using:)();
    (*(v80 + 8))(v75, v81);
    sub_1000124C8(v96, v97);
    return v19;
  }

  v92 = _swiftEmptyArrayStorage;
  v87 = v14;
  sub_1000C06C4(0, v14, 0);
  v15 = v92;
  v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v84 = (v6 + 8);
  v82 = *(v10 + 72);
  v83 = xmmword_100480A90;
  while (1)
  {
    v88 = v15;
    v86 = v16;
    sub_1002774DC(v16, v13, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    type metadata accessor for BinaryEncoder();
    v17 = swift_allocObject();
    *(v17 + 16) = v83;
    *(v17 + 32) = &_swiftEmptyDictionarySingleton;
    v91 = v17;
    swift_retain_n();
    sub_10005DC58(&qword_1005938B8, &qword_1004ABB78);
    sub_10000CADC(&qword_1005938C0, &qword_1005938B8, &qword_1004ABB78);
    KeyedEncodingContainer.init<A>(_:)();
    v18 = v13[2];
    LOWORD(v91) = *v13;
    BYTE2(v91) = v18;
    v90 = 0;
    sub_1001F5AF0();
    v19 = v9;
    v20 = v89;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v20)
    {
      break;
    }

    LOBYTE(v91) = v13[3];
    v90 = 1;
    sub_100279984();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v9;
    v21 = v5;
    v22 = *(v85 + 24);
    LOBYTE(v91) = 2;
    type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
    sub_10027784C(&qword_100592568, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v89 = 0;
    (*v84)(v19, v21);

    swift_beginAccess();
    v23 = *(v17 + 16);
    v24 = *(v17 + 24);
    sub_10000AB0C(v23, v24);

    v25 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v25 == 2)
      {
        v27 = *(v23 + 16);
        v26 = *(v23 + 24);
        v28 = __OFSUB__(v26, v27);
        v29 = v26 - v27;
        if (v28)
        {
          goto LABEL_69;
        }

        if (v29 >= 255)
        {
LABEL_28:
          sub_10000B02C();
          swift_allocError();
          *v42 = 0;
          *(v42 + 8) = 0;
          *(v42 + 16) = 2;
          swift_willThrow();
          sub_1000124C8(v23, v24);
          sub_100277544(v13, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);

          return v19;
        }
      }
    }

    else if (v25)
    {
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (HIDWORD(v23) - v23 >= 255)
      {
        goto LABEL_28;
      }
    }

    else if (BYTE6(v24) == 255)
    {
      goto LABEL_28;
    }

    sub_100277544(v13, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    v15 = v88;
    v92 = v88;
    v31 = v88[2];
    v30 = v88[3];
    if (v31 >= v30 >> 1)
    {
      sub_1000C06C4((v30 > 1), v31 + 1, 1);
      v15 = v92;
    }

    v15[2] = v31 + 1;
    v32 = &v15[3 * v31];
    *(v32 + 32) = -35;
    v32[5] = v23;
    v32[6] = v24;
    v16 = v86 + v82;
    --v87;
    v5 = v21;
    v9 = v19;
    if (!v87)
    {
      goto LABEL_20;
    }
  }

  (*v84)(v9, v5);
  sub_100277544(v13, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);

  return v19;
}

double sub_100276834@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = type metadata accessor for __DataStorage();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = __DataStorage.init(length:)() | 0x4000000000000000;
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  swift_allocObject();
  v13 = __DataStorage.init(length:)() | 0x4000000000000000;
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  swift_allocObject();
  v16 = __DataStorage.init(length:)() | 0x4000000000000000;
  v17 = sub_100275C0C(a1, a2);
  if (v3)
  {
    v19 = type metadata accessor for SymmetricKey();
    (*(*(v19 - 8) + 8))(a2, v19);

    sub_1000124C8(0x2000000000, v10);
    sub_1000124C8(0x1000000000, v13);
    sub_1000124C8(0x1000000000, v16);
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v23 = type metadata accessor for SymmetricKey();
    (*(*(v23 - 8) + 8))(a2, v23);

    v28[0] = 1;
    *&v28[2] = 4232;
    *&v28[8] = xmmword_1004881D0;
    *&v28[24] = v10;
    *&v29 = 0x1000000000;
    *(&v29 + 1) = v13;
    v30 = 0uLL;
    *&v31 = 0x1000000000;
    *(&v31 + 1) = v16;
    *&v32 = v21;
    *(&v32 + 1) = v22;
    v33[0] = 1;
    v34 = 4232;
    v35 = xmmword_1004881D0;
    v36 = v10;
    v37 = 0x1000000000;
    v38 = v13;
    v39 = 0;
    v40 = 0;
    v41 = 0x1000000000;
    v42 = v16;
    v43 = v21;
    v44 = v22;
    sub_100143E5C(v28, v27);
    sub_100143EB8(v33);
    v24 = v30;
    a3[2] = v29;
    a3[3] = v24;
    v25 = v32;
    a3[4] = v31;
    a3[5] = v25;
    result = *v28;
    v26 = *&v28[16];
    *a3 = *v28;
    a3[1] = v26;
  }

  return result;
}

uint64_t sub_100276A4C(uint64_t a1)
{
  v76 = sub_10005DC58(&qword_100592550, &unk_10049F998);
  v3 = *(v76 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v69 - v5;
  v74 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  v7 = *(v74 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_19:
    v30 = sub_100033AA8(_swiftEmptyArrayStorage);
    v31 = type metadata accessor for BinaryEncoder();
    v32 = swift_allocObject();
    *(v32 + 1) = xmmword_100480A90;
    v15 = (v32 + 2);
    v32[4] = v30;
    v81 = v31;
    v82 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v79 = v32;

    sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
    sub_10000CADC(&qword_1005938C8, &qword_10058CCE0, &unk_1004ABB80);
    Array<A>.encode(to:)();
    if (v1)
    {

      sub_100002A00(&v79);
      return v15;
    }

    sub_100002A00(&v79);
    swift_beginAccess();
    v15 = v32[2];
    v33 = v32[3];
    sub_10000AB0C(v15, v33);

    v83 = v15;
    v84 = v33;
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      v38 = 0;
      if (v34 != 2)
      {
        goto LABEL_46;
      }

      v40 = *(v15 + 16);
      v39 = *(v15 + 24);
      v25 = __OFSUB__(v39, v40);
      v41 = v39 - v40;
      if (v25)
      {
        goto LABEL_71;
      }

      if (v41 <= 15)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!v34)
      {
        if (BYTE6(v33) > 0xFuLL)
        {
          goto LABEL_24;
        }

LABEL_32:
        if (v34 == 2)
        {
          goto LABEL_42;
        }

        if (v34 != 1)
        {
          goto LABEL_45;
        }

        LODWORD(v38) = HIDWORD(v15) - v15;
        if (!__OFSUB__(HIDWORD(v15), v15))
        {
          v38 = v38;
          goto LABEL_46;
        }

        goto LABEL_76;
      }

      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_72;
      }

      if (HIDWORD(v15) - v15 <= 15)
      {
        goto LABEL_32;
      }
    }

LABEL_24:
    if (v34 > 1)
    {
LABEL_51:
      if (v34 != 2)
      {
        goto LABEL_66;
      }

      v53 = *(v15 + 16);
      v35 = *(v15 + 24);
      v25 = __OFSUB__(v35, v53);
      LOBYTE(v35) = v35 - v53;
      if (v25)
      {
        goto LABEL_73;
      }
    }

    else
    {
      while (v34)
      {
        LOBYTE(v35) = BYTE4(v15) - v15;
        if (!__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_53;
        }

        __break(1u);
LABEL_42:
        v43 = *(v15 + 16);
        v42 = *(v15 + 24);
        v25 = __OFSUB__(v42, v43);
        v38 = v42 - v43;
        if (v25)
        {
          __break(1u);
LABEL_45:
          v38 = BYTE6(v33);
        }

LABEL_46:
        v44 = 16 - v38;
        if (__OFSUB__(16, v38))
        {
          goto LABEL_69;
        }

        if (v34 == 2)
        {
          v45 = *(v15 + 24);
        }

        v46 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
        v81 = v46;
        v82 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
        LOBYTE(v79) = -35;
        v77 = *sub_100029B34(&v79, v46);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_100002A00(&v79);
        if (__OFSUB__(v44, 1))
        {
          goto LABEL_70;
        }

        v47 = sub_10014345C(v44 - 1);
        v49 = v48;
        v81 = &type metadata for Data;
        v82 = &protocol witness table for Data;
        v79 = v47;
        v80 = v48;
        v50 = sub_100029B34(&v79, &type metadata for Data);
        v51 = *v50;
        v52 = v50[1];
        sub_10000AB0C(v47, v49);
        sub_100178A18(v51, v52);
        sub_1000124C8(v47, v49);
        sub_100002A00(&v79);
        v15 = v83;
        v33 = v84;
        v34 = v84 >> 62;
        if ((v84 >> 62) > 1)
        {
          goto LABEL_51;
        }
      }

      v35 = HIWORD(v33);
    }

LABEL_53:
    if ((v35 & 7) != 0)
    {
      if (v34)
      {
        if (v34 == 2)
        {
          v54 = *(v15 + 16);
          v55 = *(v15 + 24);
          v25 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v25)
          {
            goto LABEL_74;
          }

          v57 = -v56 < 0;
          v58 = -v56 & 7;
          v59 = v56 & 7;
          if (v57)
          {
            v60 = v59;
          }

          else
          {
            v60 = -v58;
          }
        }

        else
        {
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_75;
          }

          v61 = (BYTE4(v15) - v15) & 7;
          if (v15 - HIDWORD(v15) >= 0)
          {
            v61 = -((v15 - HIDWORD(v15)) & 7);
          }

          v60 = v61;
        }
      }

      else
      {
        v60 = HIWORD(v33) & 7;
      }

      v62 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
      v81 = v62;
      v82 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
      LOBYTE(v79) = -35;
      v77 = *sub_100029B34(&v79, v62);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_100002A00(&v79);
      v63 = sub_10014345C(7 - v60);
      v65 = v64;
      v81 = &type metadata for Data;
      v82 = &protocol witness table for Data;
      v79 = v63;
      v80 = v64;
      v66 = sub_100029B34(&v79, &type metadata for Data);
      v67 = *v66;
      v68 = v66[1];
      sub_10000AB0C(v63, v65);
      sub_100178A18(v67, v68);
      sub_1000124C8(v63, v65);
      sub_100002A00(&v79);
      v15 = v83;
      v33 = v84;
    }

LABEL_66:
    sub_10000AB0C(v15, v33);
    sub_1000124C8(v15, v33);
    return v15;
  }

  v73 = v6;
  v79 = _swiftEmptyArrayStorage;
  sub_1000C06C4(0, v11, 0);
  v12 = v79;
  v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v72 = (v3 + 8);
  v70 = *(v7 + 72);
  v71 = xmmword_100480A90;
  while (1)
  {
    v75 = v12;
    sub_1002774DC(v13, v10, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    type metadata accessor for BinaryEncoder();
    v14 = swift_allocObject();
    *(v14 + 16) = v71;
    *(v14 + 32) = &_swiftEmptyDictionarySingleton;
    v78 = v14;
    swift_retain_n();
    sub_10005DC58(&qword_1005938B8, &qword_1004ABB78);
    sub_10000CADC(&qword_1005938C0, &qword_1005938B8, &qword_1004ABB78);
    v15 = v73;
    KeyedEncodingContainer.init<A>(_:)();
    v16 = v10[2];
    LOWORD(v78) = *v10;
    BYTE2(v78) = v16;
    v77 = 0;
    sub_1001F5AF0();
    v17 = v76;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v1)
    {
      break;
    }

    LOBYTE(v78) = v10[3];
    v77 = 1;
    sub_100279984();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v74 + 24);
    LOBYTE(v78) = 2;
    type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
    sub_10027784C(&qword_100592568, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    v19 = v76;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v72)(v15, v19);

    swift_beginAccess();
    v21 = *(v14 + 16);
    v20 = *(v14 + 24);
    sub_10000AB0C(v21, v20);

    v22 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        v25 = __OFSUB__(v23, v24);
        v26 = v23 - v24;
        if (v25)
        {
          goto LABEL_68;
        }

        if (v26 >= 255)
        {
LABEL_27:
          sub_10000B02C();
          swift_allocError();
          *v36 = 0;
          *(v36 + 8) = 0;
          *(v36 + 16) = 2;
          swift_willThrow();
          sub_1000124C8(v21, v20);
          sub_100277544(v10, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);

          return v15;
        }
      }
    }

    else if (v22)
    {
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
      }

      if (HIDWORD(v21) - v21 >= 255)
      {
        goto LABEL_27;
      }
    }

    else if (BYTE6(v20) == 255)
    {
      goto LABEL_27;
    }

    sub_100277544(v10, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    v12 = v75;
    v79 = v75;
    v28 = v75[2];
    v27 = v75[3];
    if (v28 >= v27 >> 1)
    {
      sub_1000C06C4((v27 > 1), v28 + 1, 1);
      v12 = v79;
    }

    v12[2] = v28 + 1;
    v29 = &v12[3 * v28];
    *(v29 + 32) = -35;
    v29[5] = v21;
    v29[6] = v20;
    v13 += v70;
    if (!--v11)
    {
      goto LABEL_19;
    }
  }

  (*v72)(v15, v17);
  sub_100277544(v10, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);

  return v15;
}

uint64_t sub_1002774DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100277544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002775A4()
{
  result = qword_1005920A0;
  if (!qword_1005920A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005920A0);
  }

  return result;
}

unint64_t sub_1002775F8()
{
  result = qword_1005920A8;
  if (!qword_1005920A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005920A8);
  }

  return result;
}

unint64_t sub_10027764C()
{
  result = qword_1005920B8;
  if (!qword_1005920B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005920B8);
  }

  return result;
}

unint64_t sub_1002776A0()
{
  result = qword_1005920C8;
  if (!qword_1005920C8)
  {
    sub_10005DD04(&qword_1005920C0, &unk_10049F800);
    sub_100277724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005920C8);
  }

  return result;
}

unint64_t sub_100277724()
{
  result = qword_1005920D0;
  if (!qword_1005920D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005920D0);
  }

  return result;
}

uint64_t sub_100277778(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_100277790(result, a2, a3, BYTE2(a3) & 1);
  }

  return result;
}

uint64_t sub_100277790(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_10000AB0C(a1, a2);
  }

  else
  {
  }
}

unint64_t sub_1002777F8()
{
  result = qword_1005920D8;
  if (!qword_1005920D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005920D8);
  }

  return result;
}

uint64_t sub_10027784C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100277894()
{
  result = qword_1005920E0;
  if (!qword_1005920E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005920E0);
  }

  return result;
}

unint64_t sub_1002778E8()
{
  result = qword_10058E3A0;
  if (!qword_10058E3A0)
  {
    sub_10005DD04(&qword_10058E398, &qword_100489498);
    sub_10008A490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E3A0);
  }

  return result;
}

unint64_t sub_10027796C()
{
  result = qword_1005920F0;
  if (!qword_1005920F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005920F0);
  }

  return result;
}

unint64_t sub_1002779C0()
{
  result = qword_1005920F8;
  if (!qword_1005920F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005920F8);
  }

  return result;
}

unint64_t sub_100277A44()
{
  result = qword_100592108;
  if (!qword_100592108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592108);
  }

  return result;
}

unint64_t sub_100277A98()
{
  result = qword_100592118;
  if (!qword_100592118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592118);
  }

  return result;
}

unint64_t sub_100277B24()
{
  result = qword_100592120;
  if (!qword_100592120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592120);
  }

  return result;
}

unint64_t sub_100277B78()
{
  result = qword_100592128;
  if (!qword_100592128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592128);
  }

  return result;
}

unint64_t sub_100277BCC()
{
  result = qword_100592138;
  if (!qword_100592138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592138);
  }

  return result;
}

unint64_t sub_100277C20()
{
  result = qword_100592140;
  if (!qword_100592140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592140);
  }

  return result;
}

unint64_t sub_100277C74()
{
  result = qword_100592150;
  if (!qword_100592150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592150);
  }

  return result;
}

unint64_t sub_100277D00()
{
  result = qword_100592160;
  if (!qword_100592160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592160);
  }

  return result;
}

unint64_t sub_100277E0C()
{
  result = qword_100592170;
  if (!qword_100592170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592170);
  }

  return result;
}

unint64_t sub_100277E60()
{
  result = qword_100592180;
  if (!qword_100592180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592180);
  }

  return result;
}

unint64_t sub_100277EB4()
{
  result = qword_100592190;
  if (!qword_100592190)
  {
    sub_10005DD04(&qword_100592188, &qword_10049F850);
    sub_100277F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592190);
  }

  return result;
}

unint64_t sub_100277F38()
{
  result = qword_100592198;
  if (!qword_100592198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592198);
  }

  return result;
}

unint64_t sub_100277F8C()
{
  result = qword_1005921A8;
  if (!qword_1005921A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005921A8);
  }

  return result;
}

unint64_t sub_100277FE0()
{
  result = qword_1005921B8;
  if (!qword_1005921B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005921B8);
  }

  return result;
}

unint64_t sub_100278034()
{
  result = qword_1005921C8;
  if (!qword_1005921C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005921C8);
  }

  return result;
}

unint64_t sub_100278088()
{
  result = qword_1005921E0;
  if (!qword_1005921E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005921E0);
  }

  return result;
}

unint64_t sub_1002780DC()
{
  result = qword_1005921E8;
  if (!qword_1005921E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005921E8);
  }

  return result;
}

unint64_t sub_100278130()
{
  result = qword_1005921F0;
  if (!qword_1005921F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005921F0);
  }

  return result;
}

unint64_t sub_100278184()
{
  result = qword_1005921F8;
  if (!qword_1005921F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005921F8);
  }

  return result;
}

unint64_t sub_1002781D8()
{
  result = qword_100592200;
  if (!qword_100592200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592200);
  }

  return result;
}

unint64_t sub_10027822C()
{
  result = qword_100592208;
  if (!qword_100592208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592208);
  }

  return result;
}

unint64_t sub_100278280()
{
  result = qword_100592218;
  if (!qword_100592218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592218);
  }

  return result;
}

unint64_t sub_1002782D4()
{
  result = qword_100592230;
  if (!qword_100592230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592230);
  }

  return result;
}

unint64_t sub_100278328()
{
  result = qword_100592238;
  if (!qword_100592238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592238);
  }

  return result;
}

unint64_t sub_10027837C()
{
  result = qword_100592240;
  if (!qword_100592240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592240);
  }

  return result;
}

unint64_t sub_1002783D0()
{
  result = qword_100592248;
  if (!qword_100592248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592248);
  }

  return result;
}

unint64_t sub_100278424()
{
  result = qword_100592260;
  if (!qword_100592260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592260);
  }

  return result;
}

unint64_t sub_100278478()
{
  result = qword_100592268;
  if (!qword_100592268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592268);
  }

  return result;
}

unint64_t sub_1002784CC()
{
  result = qword_100592278;
  if (!qword_100592278)
  {
    sub_10005DD04(&qword_100592270, &qword_10049F8B0);
    sub_100278550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592278);
  }

  return result;
}

unint64_t sub_100278550()
{
  result = qword_100592280;
  if (!qword_100592280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592280);
  }

  return result;
}

unint64_t sub_1002785DC()
{
  result = qword_100592290;
  if (!qword_100592290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592290);
  }

  return result;
}

unint64_t sub_100278630()
{
  result = qword_100592298;
  if (!qword_100592298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592298);
  }

  return result;
}

unint64_t sub_100278684()
{
  result = qword_1005922A8;
  if (!qword_1005922A8)
  {
    sub_10005DD04(&qword_1005922A0, &qword_10049F8C0);
    sub_100278708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005922A8);
  }

  return result;
}

unint64_t sub_100278708()
{
  result = qword_1005922B0;
  if (!qword_1005922B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005922B0);
  }

  return result;
}

unint64_t sub_10027875C()
{
  result = qword_1005922C8;
  if (!qword_1005922C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005922C8);
  }

  return result;
}

unint64_t sub_1002787B0()
{
  result = qword_1005922D8;
  if (!qword_1005922D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005922D8);
  }

  return result;
}

unint64_t sub_100278804()
{
  result = qword_1005922E0;
  if (!qword_1005922E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005922E0);
  }

  return result;
}

unint64_t sub_100278858()
{
  result = qword_1005922E8;
  if (!qword_1005922E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005922E8);
  }

  return result;
}

unint64_t sub_1002788AC()
{
  result = qword_1005922F0;
  if (!qword_1005922F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005922F0);
  }

  return result;
}

unint64_t sub_100278900()
{
  result = qword_100592308;
  if (!qword_100592308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592308);
  }

  return result;
}

unint64_t sub_100278954()
{
  result = qword_100592310;
  if (!qword_100592310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592310);
  }

  return result;
}

unint64_t sub_1002789A8()
{
  result = qword_100592320;
  if (!qword_100592320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592320);
  }

  return result;
}

unint64_t sub_1002789FC()
{
  result = qword_100592330;
  if (!qword_100592330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592330);
  }

  return result;
}

unint64_t sub_100278A50()
{
  result = qword_100592340;
  if (!qword_100592340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592340);
  }

  return result;
}

unint64_t sub_100278AA4()
{
  result = qword_100592350;
  if (!qword_100592350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592350);
  }

  return result;
}

unint64_t sub_100278AF8()
{
  result = qword_100592360;
  if (!qword_100592360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592360);
  }

  return result;
}

unint64_t sub_100278B4C()
{
  result = qword_100592370;
  if (!qword_100592370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592370);
  }

  return result;
}

unint64_t sub_100278BA0()
{
  result = qword_100592380;
  if (!qword_100592380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592380);
  }

  return result;
}

unint64_t sub_100278BF4()
{
  result = qword_100592388;
  if (!qword_100592388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592388);
  }

  return result;
}

unint64_t sub_100278C48()
{
  result = qword_100592390;
  if (!qword_100592390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592390);
  }

  return result;
}

unint64_t sub_100278C9C()
{
  result = qword_100592398;
  if (!qword_100592398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592398);
  }

  return result;
}

unint64_t sub_100278CF0()
{
  result = qword_1005923A0;
  if (!qword_1005923A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005923A0);
  }

  return result;
}

unint64_t sub_100278D44()
{
  result = qword_1005923A8;
  if (!qword_1005923A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005923A8);
  }

  return result;
}

unint64_t sub_100278D98()
{
  result = qword_1005923B0;
  if (!qword_1005923B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005923B0);
  }

  return result;
}

unint64_t sub_100278DEC()
{
  result = qword_1005923B8;
  if (!qword_1005923B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005923B8);
  }

  return result;
}

unint64_t sub_100278E40()
{
  result = qword_1005923C0;
  if (!qword_1005923C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005923C0);
  }

  return result;
}

unint64_t sub_100278E94()
{
  result = qword_1005923D0;
  if (!qword_1005923D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005923D0);
  }

  return result;
}

unint64_t sub_100278EE8()
{
  result = qword_1005923E0;
  if (!qword_1005923E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005923E0);
  }

  return result;
}

unint64_t sub_100278F3C()
{
  result = qword_1005923F0;
  if (!qword_1005923F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005923F0);
  }

  return result;
}

unint64_t sub_100278F90()
{
  result = qword_100592400;
  if (!qword_100592400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592400);
  }

  return result;
}

unint64_t sub_100278FE4()
{
  result = qword_100592410;
  if (!qword_100592410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592410);
  }

  return result;
}

unint64_t sub_100279038()
{
  result = qword_100592420;
  if (!qword_100592420)
  {
    sub_10005DD04(&qword_100592418, &qword_10049F940);
    sub_1002790BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592420);
  }

  return result;
}

unint64_t sub_1002790BC()
{
  result = qword_100592428;
  if (!qword_100592428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592428);
  }

  return result;
}

unint64_t sub_100279110()
{
  result = qword_100592438;
  if (!qword_100592438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592438);
  }

  return result;
}

unint64_t sub_100279164()
{
  result = qword_100592440;
  if (!qword_100592440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592440);
  }

  return result;
}

unint64_t sub_1002791B8()
{
  result = qword_100592450;
  if (!qword_100592450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592450);
  }

  return result;
}

unint64_t sub_10027920C()
{
  result = qword_100592458;
  if (!qword_100592458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592458);
  }

  return result;
}

unint64_t sub_100279260()
{
  result = qword_100592468;
  if (!qword_100592468)
  {
    sub_10005DD04(&qword_100592460, &qword_10049F958);
    sub_1002792E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592468);
  }

  return result;
}

unint64_t sub_1002792E4()
{
  result = qword_100592470;
  if (!qword_100592470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592470);
  }

  return result;
}

unint64_t sub_100279338()
{
  result = qword_100592480;
  if (!qword_100592480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592480);
  }

  return result;
}

unint64_t sub_10027938C()
{
  result = qword_100592490;
  if (!qword_100592490)
  {
    sub_10005DD04(&qword_100592488, &qword_10049F968);
    sub_100279410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592490);
  }

  return result;
}

unint64_t sub_100279410()
{
  result = qword_100592498;
  if (!qword_100592498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592498);
  }

  return result;
}

unint64_t sub_100279464()
{
  result = qword_1005924A8;
  if (!qword_1005924A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005924A8);
  }

  return result;
}

unint64_t sub_1002794B8()
{
  result = qword_1005924B0;
  if (!qword_1005924B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005924B0);
  }

  return result;
}

unint64_t sub_10027952C()
{
  result = qword_1005924C8;
  if (!qword_1005924C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005924C8);
  }

  return result;
}

unint64_t sub_100279580()
{
  result = qword_1005924E0;
  if (!qword_1005924E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005924E0);
  }

  return result;
}

unint64_t sub_1002795D4()
{
  result = qword_1005924E8;
  if (!qword_1005924E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005924E8);
  }

  return result;
}