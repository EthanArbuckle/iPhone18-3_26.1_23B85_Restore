uint64_t sub_100142A80(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[4];
  sub_100029B34(a1, a1[3]);
  result = dispatch thunk of Encoder.unkeyedContainer()();
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v8 == 2)
  {
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    v11 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_17;
    }

    v11 = HIDWORD(a2) - a2;
LABEL_10:
    result = sub_10000AB0C(a2, a3);
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >> 16)
      {
        __break(1u);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_13:
  sub_100031694(v12, v13);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v3)
  {
    sub_100031694(v12, v13);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  sub_1000124C8(a2, a3);
  return sub_100002A00(v12);
}

unint64_t sub_100142BEC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_10000AD84(a1, &a1[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_100142CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_100142ED4(&type metadata for UInt8, sub_100144214, v10, a1, a2, &type metadata for UInt8, &type metadata for Never, TupleTypeMetadata2, &protocol witness table for Never, v9);
}

uint64_t sub_100142D8C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v6 + 16))(v9, a1, a2);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a3 + v10) = result;
  return result;
}

uint64_t sub_100142ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v23 = v25 - v22;
  if (v18)
  {
    v24 = *(*(v20 - 8) + 72);
    if (v24)
    {
      if (v19 - v18 != 0x8000000000000000 || v24 != -1)
      {
        result = v21(v18, (v19 - v18) / v24, v16);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v16, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v21(0, 0, v25 - v22);
  v16 = v23;
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

uint64_t sub_100143034(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_100222F30(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_100222F30(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_10014316C(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    if (v5)
    {
      v6 = v3 >> 32;
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == v6)
    {
      goto LABEL_14;
    }
  }

  result = Data._Representation.subscript.getter();
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else if (v2 + 1 >= v2)
  {
    v8 = result;
    Data._Representation.replaceSubrange(_:with:count:)();
    return v8;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100143218()
{
  result = sub_1001433B4(*v0, *(v0 + 8));
  if ((result & 0x100) == 0)
  {
    v2 = result;
    v3 = *v0;
    v4 = *(v0 + 8);
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 == 2)
      {
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }
    }

    else
    {
      if (v5)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }

      if (v5)
      {
        v7 = v3 >> 32;
      }

      else
      {
        v7 = BYTE6(v4);
      }
    }

    sub_10000AB0C(*v0, *(v0 + 8));
    result = sub_1000124C8(v3, v4);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
    }

    else if (v7 - 1 >= v6)
    {
      v8 = Data._Representation.subscript.getter();
      v10 = v9;
      sub_1000124C8(v3, v4);
      *v0 = v8;
      *(v0 + 8) = v10;
      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100143300(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001433B4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v3 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      v4 = 0;
      v5 = 1;
      return v4 | (v5 << 8);
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = a1 >> 32;
  }

LABEL_12:
  result = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v4 = Data._Representation.subscript.getter();
    v5 = 0;
    return v4 | (v5 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_10014345C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_10000AE44(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1001434FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  __chkstk_darwin();
  v10 = &v30 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v30 - v13;
  v15 = *(*(a2 - 8) + 64);
  __chkstk_darwin();
  (*(v17 + 16))(&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_10005DC58(&qword_10058D3F8, &unk_1004869D0);
  if (swift_dynamicCast())
  {
    sub_100029954(v33, &v35);
    sub_100029B34(&v35, v36);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v33[0] = v32;
    sub_100002A00(&v35);
    goto LABEL_34;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_100016290(v33, &unk_10059B0D0, &unk_1004B4D10);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v35 + 1) >> 60 != 15)
  {
    v33[0] = v35;
    goto LABEL_34;
  }

  v31 = v35;
  v18 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v33[0] = sub_10014345C(v18);
  *(&v33[0] + 1) = v19;
  __chkstk_darwin();
  *(&v30 - 4) = a2;
  *(&v30 - 3) = a3;
  *(&v30 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v20 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v21 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) <= 1)
  {
    if (v21)
    {
      if (__OFSUB__(DWORD1(v33[0]), v33[0]))
      {
        goto LABEL_38;
      }

      if (v20 == DWORD1(v33[0]) - LODWORD(v33[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v20 == BYTE14(v33[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v21 == 2)
  {
    v23 = *(*&v33[0] + 16);
    v22 = *(*&v33[0] + 24);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (v24)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v20 == v25)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v21 == 2)
    {
      v26 = *(*&v33[0] + 24);
    }

    else if (v21 == 1)
    {
      v26 = *&v33[0] >> 32;
    }

    else
    {
      v26 = BYTE14(v33[0]);
    }

LABEL_31:
    if (v26 >= v20)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v20)
  {
    v26 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v35 = 0;
  *(&v35 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v32) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v27) = 0;
  do
  {
    *(&v35 + v27) = v32;
    v27 = v27 + 1;
    if ((v27 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v27 == 14)
    {
      *&v32 = v35;
      *(&v32 + 6) = *(&v35 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v27) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v32) & 1) == 0);
  if (v27)
  {
    *&v32 = v35;
    *(&v32 + 6) = *(&v35 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100017554(v31, *(&v31 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_100017554(v31, *(&v31 + 1));
LABEL_34:
  v28 = v33[0];
  sub_10000AB0C(*&v33[0], *(&v33[0] + 1));
  sub_1000124C8(v28, *(&v28 + 1));
  return v28;
}

uint64_t sub_100143A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14 - v10;
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return 4;
}

uint64_t sub_100143BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = *(a5 + 32);
  v27 = a1;
  v25 = v13;
  v13(a3, a5);
  v28 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = v16;
  v18 = *(v9 + 8);
  v29 = v9 + 8;
  v26 = v18;
  v18(v12, AssociatedTypeWitness);
  sub_10000AB0C(v15, v17);
  sub_1002B9AE4(32, v15, v17, &v30);
  v23 = v31;
  v24 = v30;
  sub_10000AB0C(v15, v17);
  sub_10012CD54(32, v15, v17, &v30);
  v20 = v30;
  v19 = v31;
  result = sub_1001433B4(v30, v31);
  HIDWORD(v22) = result;
  if ((result & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    v25(v28, a5);
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_1000124C8(v20, v19);
    sub_1000124C8(v24, v23);
    sub_1000124C8(v15, v17);
    v26(v12, AssociatedTypeWitness);
    if ((v22 & 0x100000000) != 0)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_100143FBC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = (((a3 & 0x1000000000000000) != 0) | (2 * a4));
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
  }

  if (v4 == 3)
  {
    return sub_100144000(result, a2, a3 & 0xEFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_10014400C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_100144178(unsigned __int8 *a1)
{
  v2 = *(v1 + 48);
  v3 = *a1;
  v4 = a1[1];
  v7 = *(v1 + 16);
  v8 = *(v1 + 32);
  v5 = type metadata accessor for NANPairing.PASN();
  return v4 == *(v2 + *(v5 + 84)) && v3 == *(v2 + *(v5 + 56));
}

uint64_t sub_100144290()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Bandwidth.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static Bandwidth.allCases = a1;
}

uint64_t Bandwidth.suffix.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return 30840;
    }

    if (a1 == 6)
    {
      return 31097;
    }
  }

  else
  {
    if (a1 - 2 < 2)
    {
      return 0;
    }

    if (a1 == 4)
    {
      return 11051;
    }
  }

  if (a1)
  {
    return 43;
  }

  else
  {
    return 45;
  }
}

uint64_t Bandwidth.description.getter(unsigned __int8 a1)
{
  result = 0x7A484D203031;
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      return result;
    }

    if (a1 == 3)
    {
      return 0x7A484D203032;
    }
  }

  else
  {
    switch(a1)
    {
      case 4u:
        return 0x7A484D203038;
      case 5u:
        return 0x7A484D20303631;
      case 6u:
        return 0x7A484D20303233;
    }
  }

  if (a1)
  {
    return 0x7A484D202B3034;
  }

  else
  {
    return 0x7A484D202D3034;
  }
}

uint64_t Bandwidth.updateWithFloor(bandwidth:)(unsigned __int8 a1)
{
  v3 = *v1;
  result = sub_10005DC58(&qword_10058DFA0, &qword_100488570);
  if (v3 == 2)
  {
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    goto LABEL_3;
  }

  if (v3 == 3)
  {
    goto LABEL_5;
  }

  if (a1 == 3)
  {
    goto LABEL_3;
  }

  if ((v3 - 2) >= 5 && (v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((a1 - 2) >= 5u && (a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (v3 - 2) >= 5u && (v3)
  {
    goto LABEL_5;
  }

  if (a1 - 2) >= 5u && (a1)
  {
    goto LABEL_3;
  }

  if (v3 == 4)
  {
    goto LABEL_5;
  }

  if (a1 == 4)
  {
    goto LABEL_3;
  }

  if (v3 == 5)
  {
    goto LABEL_5;
  }

  if (a1 == 5)
  {
LABEL_3:
    a1 = v3;
LABEL_5:
    *v1 = a1;
    return result;
  }

  if (v3 == 6)
  {
    goto LABEL_5;
  }

  v5 = a1;
  a1 = v3;
  if (v5 == 6)
  {
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001445F8()
{
  v1 = *v0;
  v2 = 0x7A484D6E6574;
  v3 = 0x484D797468676965;
  v4 = 0x7974786953656E6FLL;
  if (v1 != 4)
  {
    v4 = 0x6577546565726874;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x484D79746E657774;
  if (v1 != 1)
  {
    v5 = 0x7A484D7974726F66;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001446CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100146D04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100144700(uint64_t a1)
{
  v2 = sub_100145894();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014473C(uint64_t a1)
{
  v2 = sub_100145894();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144778(uint64_t a1)
{
  v2 = sub_100145990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001447B4(uint64_t a1)
{
  v2 = sub_100145990();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014480C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001004B99B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1001448A0(uint64_t a1)
{
  v2 = sub_1001459E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001448DC(uint64_t a1)
{
  v2 = sub_1001459E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144918(uint64_t a1)
{
  v2 = sub_10014593C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100144954(uint64_t a1)
{
  v2 = sub_10014593C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144990(uint64_t a1)
{
  v2 = sub_100145A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001449CC(uint64_t a1)
{
  v2 = sub_100145A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144A08(uint64_t a1)
{
  v2 = sub_1001458E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100144A44(uint64_t a1)
{
  v2 = sub_1001458E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144A80(uint64_t a1)
{
  v2 = sub_100145A38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100144ABC(uint64_t a1)
{
  v2 = sub_100145A38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Bandwidth.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      if (a2 == 2)
      {
        return 1;
      }
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_17;
      }

      if (a2 == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 4u:
      return a2 == 4;
    case 5u:
      return a2 == 5;
    case 6u:
      return a2 == 6;
  }

LABEL_17:
  if ((a2 - 2) < 5u)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

uint64_t Bandwidth.encode(to:)(void *a1, int a2)
{
  v55 = a2;
  v3 = sub_10005DC58(&qword_10058DFA8, &qword_100488578);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  __chkstk_darwin();
  v49 = &v39 - v5;
  v6 = sub_10005DC58(&qword_10058DFB0, &qword_100488580);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  __chkstk_darwin();
  v46 = &v39 - v8;
  v9 = sub_10005DC58(&qword_10058DFB8, &qword_100488588);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  __chkstk_darwin();
  v41 = &v39 - v11;
  v45 = sub_10005DC58(&qword_10058DFC0, &qword_100488590);
  v42 = *(v45 - 8);
  v12 = *(v42 + 64);
  __chkstk_darwin();
  v40 = &v39 - v13;
  v14 = sub_10005DC58(&qword_10058DFC8, &qword_100488598);
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  __chkstk_darwin();
  v17 = &v39 - v16;
  v18 = sub_10005DC58(&qword_10058DFD0, &qword_1004885A0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v39 - v21;
  v23 = sub_10005DC58(&qword_10058DFD8, &qword_1004885A8);
  v53 = *(v23 - 8);
  v54 = v23;
  v24 = *(v53 + 64);
  __chkstk_darwin();
  v26 = &v39 - v25;
  v27 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100145894();
  v28 = v55;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v28 > 3u)
  {
    switch(v28)
    {
      case 4u:
        v59 = 3;
        sub_100145990();
        v29 = v41;
        v30 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v43;
        v31 = v44;
        goto LABEL_11;
      case 5u:
        v60 = 4;
        sub_10014593C();
        v29 = v46;
        v30 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v47;
        v31 = v48;
        goto LABEL_11;
      case 6u:
        v61 = 5;
        sub_1001458E8();
        v29 = v49;
        v30 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v50;
        v31 = v51;
LABEL_11:
        (*(v32 + 8))(v29, v31);
        return (*(v53 + 8))(v26, v30);
    }

LABEL_15:
    v58 = 2;
    sub_1001459E4();
    v36 = v40;
    v37 = v54;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = v45;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v42 + 8))(v36, v38);
    return (*(v53 + 8))(v26, v37);
  }

  v33 = v52;
  if (v28 == 2)
  {
    v56 = 0;
    sub_100145A8C();
    v35 = v54;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v22, v18);
    return (*(v53 + 8))(v26, v35);
  }

  if (v28 != 3)
  {
    goto LABEL_15;
  }

  v57 = 1;
  sub_100145A38();
  v30 = v54;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v33 + 8))(v17, v14);
  return (*(v53 + 8))(v26, v30);
}

void Bandwidth.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    if (a2 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (a2 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a2)
    {
      case 4u:
        v2 = 3;
        goto LABEL_12;
      case 5u:
        v2 = 4;
        goto LABEL_12;
      case 6u:
        v2 = 5;
LABEL_12:
        Hasher._combine(_:)(v2);
        return;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(a2 & 1);
}

Swift::Int Bandwidth.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(a1 & 1);
    return Hasher._finalize()();
  }

  if (a1 == 4)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (a1 == 5)
  {
    v2 = 4;
    goto LABEL_12;
  }

  if (a1 != 6)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10014539C()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v1)
    {
      case 4u:
        v2 = 3;
        goto LABEL_12;
      case 5u:
        v2 = 4;
        goto LABEL_12;
      case 6u:
        v2 = 5;
LABEL_12:
        Hasher._combine(_:)(v2);
        return;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int sub_100145430()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(v1 & 1);
    return Hasher._finalize()();
  }

  if (v1 == 4)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (v1 == 5)
  {
    v2 = 4;
    goto LABEL_12;
  }

  if (v1 != 6)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001454F0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static Bandwidth.allCases;
}

uint64_t sub_100145540()
{
  result = 0x7A484D203031;
  v2 = *v0;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      return result;
    }

    if (v2 == 3)
    {
      return 0x7A484D203032;
    }
  }

  else
  {
    switch(v2)
    {
      case 4u:
        return 0x7A484D203038;
      case 5u:
        return 0x7A484D20303631;
      case 6u:
        return 0x7A484D20303233;
    }
  }

  if (v2)
  {
    return 0x7A484D202B3034;
  }

  else
  {
    return 0x7A484D202D3034;
  }
}

uint64_t sub_100145668@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100145AE0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1001456B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      return v3 == 2;
    }

    if (v2 == 3)
    {
      return v3 == 3;
    }
  }

  else
  {
    switch(v2)
    {
      case 4u:
        return v3 == 4;
      case 5u:
        return v3 == 5;
      case 6u:
        return v3 == 6;
    }
  }

  if ((v3 - 2) < 5)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t Bandwidth.asInt.getter(char a1)
{
  if ((a1 - 2) > 4u)
  {
    return 40;
  }

  else
  {
    return qword_100488D68[(a1 - 2)];
  }
}

uint64_t _s7CoreP2P9BandwidthO1loiySbAC_ACtFZ_0(char a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_10005DC58(&qword_10058DFA0, &qword_100488570);
  if (v4 == 2)
  {
    return 0;
  }

  if (a1 == 2)
  {
    return 1;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if ((a2 - 2) >= 5u && (a2 & 1) == 0)
  {
    return 0;
  }

  if ((a1 - 2) >= 5u && (a1 & 1) == 0)
  {
    return 1;
  }

  if (a2 - 2) >= 5u && (a2)
  {
    return 0;
  }

  if (a1 - 2) >= 5u && (a1)
  {
    return 1;
  }

  if (a2 == 4)
  {
    return 0;
  }

  if (a1 == 4)
  {
    return 1;
  }

  if (a2 == 5)
  {
    return 0;
  }

  if (a1 == 5)
  {
    return 1;
  }

  if (a2 == 6)
  {
    return 0;
  }

  if (a1 == 6)
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_100145894()
{
  result = qword_10058DFE0;
  if (!qword_10058DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058DFE0);
  }

  return result;
}

unint64_t sub_1001458E8()
{
  result = qword_10058DFE8;
  if (!qword_10058DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058DFE8);
  }

  return result;
}

unint64_t sub_10014593C()
{
  result = qword_10058DFF0;
  if (!qword_10058DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058DFF0);
  }

  return result;
}

unint64_t sub_100145990()
{
  result = qword_10058DFF8;
  if (!qword_10058DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058DFF8);
  }

  return result;
}

unint64_t sub_1001459E4()
{
  result = qword_10058E000;
  if (!qword_10058E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E000);
  }

  return result;
}

unint64_t sub_100145A38()
{
  result = qword_10058E008;
  if (!qword_10058E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E008);
  }

  return result;
}

unint64_t sub_100145A8C()
{
  result = qword_10058E010;
  if (!qword_10058E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E010);
  }

  return result;
}

uint64_t sub_100145AE0(uint64_t *a1)
{
  v2 = sub_10005DC58(&qword_10058E0B0, &qword_100488D30);
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  __chkstk_darwin();
  v63 = &v49 - v4;
  v5 = sub_10005DC58(&qword_10058E0B8, &qword_100488D38);
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v66 = &v49 - v8;
  v55 = sub_10005DC58(&qword_10058E0C0, &qword_100488D40);
  v58 = *(v55 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin();
  v65 = &v49 - v10;
  v11 = sub_10005DC58(&qword_10058E0C8, &qword_100488D48);
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  __chkstk_darwin();
  v64 = &v49 - v13;
  v14 = sub_10005DC58(&qword_10058E0D0, &qword_100488D50);
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = *(v53 + 64);
  __chkstk_darwin();
  v17 = &v49 - v16;
  v18 = sub_10005DC58(&qword_10058E0D8, &qword_100488D58);
  v52 = *(v18 - 8);
  v19 = *(v52 + 64);
  __chkstk_darwin();
  v21 = &v49 - v20;
  v22 = sub_10005DC58(&qword_10058E0E0, &qword_100488D60);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin();
  v26 = &v49 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v68 = a1;
  sub_100029B34(a1, v27);
  sub_100145894();
  v29 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v50 = v18;
    v51 = v17;
    v31 = v64;
    v30 = v65;
    v32 = v66;
    v67 = v23;
    v33 = KeyedDecodingContainer.allKeys.getter();
    if (*(v33 + 16) != 1 || (v34 = *(v33 + 32), v34 == 6))
    {
      v21 = type metadata accessor for DecodingError();
      swift_allocError();
      v38 = v37;
      v39 = *(sub_10005DC58(&qword_10058CE38, &unk_100483C40) + 48);
      *v38 = &type metadata for Bandwidth;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v21 - 8) + 104))(v38, enum case for DecodingError.typeMismatch(_:), v21);
      swift_willThrow();
      (*(v67 + 8))(v26, v22);
      swift_unknownObjectRelease();
    }

    else if (*(v33 + 32) > 2u)
    {
      if (v34 == 3)
      {
        v72 = 3;
        sub_100145990();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v42 = v67;
        (*(v58 + 8))(v30, v55);
        (*(v42 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v21 = 4;
      }

      else
      {
        v41 = v67;
        if (v34 == 4)
        {
          v73 = 4;
          sub_10014593C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v60 + 8))(v32, v59);
          (*(v41 + 8))(v26, v22);
          swift_unknownObjectRelease();
          v21 = 5;
        }

        else
        {
          v74 = 5;
          sub_1001458E8();
          v48 = v63;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v61 + 8))(v48, v62);
          (*(v41 + 8))(v26, v22);
          swift_unknownObjectRelease();
          v21 = 6;
        }
      }
    }

    else if (*(v33 + 32))
    {
      if (v34 == 1)
      {
        v70 = 1;
        sub_100145A38();
        v35 = v51;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v67;
        (*(v53 + 8))(v35, v54);
        (*(v36 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v21 = 3;
      }

      else
      {
        v71 = 2;
        sub_1001459E4();
        v43 = v31;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v44 = v67;
        v45 = v57;
        v46 = KeyedDecodingContainer.decode(_:forKey:)();
        v47 = v43;
        LOBYTE(v43) = v46;
        (*(v56 + 8))(v47, v45);
        (*(v44 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v21 = v43 & 1;
      }
    }

    else
    {
      v69 = 0;
      sub_100145A8C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v52 + 8))(v21, v50);
      (*(v67 + 8))(v26, v22);
      swift_unknownObjectRelease();
      v21 = 2;
    }
  }

  sub_100002A00(v68);
  return v21;
}

unint64_t sub_10014637C()
{
  result = qword_10058E018;
  if (!qword_10058E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E018);
  }

  return result;
}

unint64_t sub_1001463D4()
{
  result = qword_10058E020;
  if (!qword_10058E020)
  {
    sub_10005DD04(&qword_10058E028, &qword_1004885F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E020);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Bandwidth(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Bandwidth(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100146590(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1001465AC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransmissionMode802_11(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransmissionMode802_11(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100146788()
{
  result = qword_10058E030;
  if (!qword_10058E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E030);
  }

  return result;
}

unint64_t sub_1001467E0()
{
  result = qword_10058E038;
  if (!qword_10058E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E038);
  }

  return result;
}

unint64_t sub_100146838()
{
  result = qword_10058E040;
  if (!qword_10058E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E040);
  }

  return result;
}

unint64_t sub_100146890()
{
  result = qword_10058E048;
  if (!qword_10058E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E048);
  }

  return result;
}

unint64_t sub_1001468E8()
{
  result = qword_10058E050;
  if (!qword_10058E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E050);
  }

  return result;
}

unint64_t sub_100146940()
{
  result = qword_10058E058;
  if (!qword_10058E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E058);
  }

  return result;
}

unint64_t sub_100146998()
{
  result = qword_10058E060;
  if (!qword_10058E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E060);
  }

  return result;
}

unint64_t sub_1001469F0()
{
  result = qword_10058E068;
  if (!qword_10058E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E068);
  }

  return result;
}

unint64_t sub_100146A48()
{
  result = qword_10058E070;
  if (!qword_10058E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E070);
  }

  return result;
}

unint64_t sub_100146AA0()
{
  result = qword_10058E078;
  if (!qword_10058E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E078);
  }

  return result;
}

unint64_t sub_100146AF8()
{
  result = qword_10058E080;
  if (!qword_10058E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E080);
  }

  return result;
}

unint64_t sub_100146B50()
{
  result = qword_10058E088;
  if (!qword_10058E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E088);
  }

  return result;
}

unint64_t sub_100146BA8()
{
  result = qword_10058E090;
  if (!qword_10058E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E090);
  }

  return result;
}

unint64_t sub_100146C00()
{
  result = qword_10058E098;
  if (!qword_10058E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E098);
  }

  return result;
}

unint64_t sub_100146C58()
{
  result = qword_10058E0A0;
  if (!qword_10058E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E0A0);
  }

  return result;
}

unint64_t sub_100146CB0()
{
  result = qword_10058E0A8;
  if (!qword_10058E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E0A8);
  }

  return result;
}

uint64_t sub_100146D04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A484D6E6574 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x484D79746E657774 && a2 == 0xE90000000000007ALL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A484D7974726F66 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x484D797468676965 && a2 == 0xE90000000000007ALL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974786953656E6FLL && a2 == 0xEB000000007A484DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6577546565726874 && a2 == 0xEE007A484D79746ELL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

Swift::Int static WiFiP2PHasher.hash(_:)(uint64_t a1)
{
  Hasher.init()();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      AnyHashable.hash(into:)();
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return Hasher.finalize()();
}

uint64_t static BinaryDecoder.decode<A>(_:data:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v8 = swift_allocObject();
  v9 = v8;
  v8[5] = &_swiftEmptyDictionarySingleton;
  v8[2] = a2;
  v8[3] = a3;
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(a2 + 16);
    }
  }

  else
  {
    v11 = a2;
    if (!v10)
    {
      v11 = 0;
    }
  }

  v8[4] = v11;
  swift_beginAccess();
  v9[5] = v7;
  sub_10000AB0C(a2, a3);
  BinaryDecoder.decode<A>(_:)(a4);
}

void *BinaryDecoder.__allocating_init(data:userInfo:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[5] = &_swiftEmptyDictionarySingleton;
  v6[2] = a1;
  v6[3] = a2;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(a1 + 16);
    }
  }

  else
  {
    v8 = a1;
    if (!v7)
    {
      v8 = 0;
    }
  }

  v6[4] = v8;
  v9 = v6;
  swift_beginAccess();
  v9[5] = a3;
  return v9;
}

uint64_t static BinaryDecoder.decode<A>(_:data:)(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v7 = swift_allocObject();
  v8 = v7;
  v7[5] = &_swiftEmptyDictionarySingleton;
  v7[2] = a1;
  v7[3] = a2;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v10 = *(a1 + 16);
    }
  }

  else
  {
    v10 = a1;
    if (!v9)
    {
      v10 = 0;
    }
  }

  v7[4] = v10;
  swift_beginAccess();
  v8[5] = v6;
  sub_10000AB0C(a1, a2);
  v11 = BinaryDecoder.decode<A>(_:)(a3);

  return v11;
}

uint64_t sub_100147274()
{
  v0 = *(*(sub_10005DC58(&qword_10058E308, &qword_1004893F0) - 8) + 64);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_100068888(v3, static CodingUserInfoKey.fourByteAlignedValue);
  v4 = sub_100037644(v3, static CodingUserInfoKey.fourByteAlignedValue);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001473C8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CodingUserInfoKey();

  return sub_100037644(v3, a2);
}

uint64_t sub_100147440()
{
  v0 = *(*(sub_10005DC58(&qword_10058E308, &qword_1004893F0) - 8) + 64);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_100068888(v3, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
  v4 = sub_100037644(v3, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100147594@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = sub_100037644(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t BinaryDecoder.userInfo.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t BinaryDecoder.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_100147728@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  a2[4] = sub_1000325F0();
  *a2 = a1;
}

uint64_t sub_10014777C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for BinaryDecoder();
  a2[4] = sub_100033ADC();
  *a2 = a1;
}

uint64_t sub_1001477CC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for BinaryDecoder();
  a2[4] = sub_100033ADC();
  *a2 = a1;
}

uint64_t sub_10014781C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_100148EEC();
}

uint64_t sub_100147828(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  sub_1000380A0(&type metadata for Bool, a1, *v2, *(a2 + 16), &type metadata for Bool);
  if (!v3)
  {
    v5 = v7;
  }

  return v5 & 1;
}

void *sub_100147880(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  result = sub_1000380A0(&type metadata for String, a1, *v2, *(a2 + 16), &type metadata for String);
  if (!v3)
  {
    return v6;
  }

  return result;
}

double sub_1001478D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  sub_1000380A0(&type metadata for Double, a1, *v2, *(a2 + 16), &type metadata for Double);
  if (!v3)
  {
    return v6;
  }

  return result;
}

float sub_100147928(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  sub_1000380A0(&type metadata for Float, a1, *v2, *(a2 + 16), &type metadata for Float);
  if (!v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_100147B08()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147B58()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147C00()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147C50()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147D90()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_100147E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  return sub_1001476FC();
}

uint64_t sub_100147E64@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_100147728(*v2, a2);
}

uint64_t sub_100147E88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_10014777C(*v2, a2);
}

uint64_t sub_100147EAC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1001477CC(*v2, a2);
}

BOOL sub_100147EFC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = BYTE6(v1);
    v5 = v2 >> 32;
    if (!v3)
    {
      v5 = v4;
    }
  }

  return *(*v0 + 32) == v5;
}

uint64_t sub_100147F88()
{
  v1 = *v0;
  type metadata accessor for BinaryDecoder();
  sub_100033ADC();

  return String.init(from:)();
}

uint64_t sub_100148018()
{
  v1 = *v0;
  type metadata accessor for BinaryDecoder();
  sub_100033ADC();

  return Float.init(from:)();
}

uint64_t sub_100148164()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1001481B4()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014825C()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1001482AC()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1001483EC()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014843C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1001484B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t sub_1001484E0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for BinaryDecoder();
  a1[4] = sub_100033ADC();
  *a1 = v3;
}

uint64_t sub_100148618@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  a2[4] = a1();
  *a2 = v2;
}

uint64_t BinaryDecoder.peekBytes(_:)(uint64_t a1)
{
  result = v1[4];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = v1[2];
    v6 = v1[3];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        if (*(v5 + 24) >= v4)
        {
          goto LABEL_7;
        }
      }

      else if (v4 <= 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (v8 >= v4)
      {
LABEL_7:
        if (v4 >= result)
        {
          return Data._Representation.subscript.getter();
        }

        goto LABEL_15;
      }
    }

    sub_10000B02C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    return swift_willThrow();
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001487A8(uint64_t (*a1)(void))
{
  result = v1[4];
  v5 = result + 8;
  if (__OFADD__(result, 8))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      if (*(v6 + 24) >= v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5 < 1)
    {
      v10 = 0;
      v11 = 0;
      if (result > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  v9 = BYTE6(v7);
  if (v8)
  {
    v9 = v6 >> 32;
  }

  if (v9 < v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v10 < result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v6;
      v10 = v6 >> 32;
      if (v6 >> 32 < result)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = BYTE6(v7);
    if (BYTE6(v7) < result)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  if (v10 >= v11)
  {
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    v2 = a1();
    sub_1000124C8(v13, v15);
    v1[4] = v5;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t IEEE80211InformationElement.ManagementMIC.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t BinaryDecoder.DataCopy.init(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    a1 = *(a1 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    a1 = a1;
    v5 = v3 >> 32;
  }

  if (v5 < a1)
  {
    __break(1u);
  }

LABEL_9:
  v6 = Data.subdata(in:)();
  sub_1000124C8(v3, a2);
  return v6;
}

uint64_t InterfaceIdentifier.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100031694(v7, v7[3]);
  sub_10000AB0C(a2, a3);
  sub_1000B8088();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  sub_1000124C8(a2, a3);
  return sub_100002A00(v7);
}

uint64_t sub_100148AD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = BinaryDecoder.DataCopy.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *BinaryDecoder.deinit()
{
  sub_1000124C8(v0[2], v0[3]);
  v1 = v0[5];

  return v0;
}

uint64_t sub_100148B4C(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v10, v10[3]);
    sub_100039F68();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v5 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v5 != 2)
      {
LABEL_13:
        v3 = Data.subdata(in:)();
        sub_1000124C8(v8, v9);
        sub_100002A00(v10);
        sub_100002A00(a1);
        return v3;
      }

      v6 = *(v8 + 16);
      v7 = *(v8 + 24);
    }

    else
    {
      if (!v5)
      {
        goto LABEL_13;
      }

      v6 = v8;
      v7 = v8 >> 32;
    }

    if (v7 < v6)
    {
      __break(1u);
    }

    goto LABEL_13;
  }

  sub_100002A00(a1);
  return v3;
}

unint64_t sub_100148C98()
{
  result = qword_10058E0F0;
  if (!qword_10058E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E0F0);
  }

  return result;
}

uint64_t sub_100148CFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100148D48()
{
  result = qword_10058E2E0;
  if (!qword_10058E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E2E0);
  }

  return result;
}

unint64_t sub_100148D9C()
{
  result = qword_10058E2E8;
  if (!qword_10058E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E2E8);
  }

  return result;
}

unint64_t sub_100148DF0()
{
  result = qword_10058E2F0;
  if (!qword_10058E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E2F0);
  }

  return result;
}

unint64_t sub_100148E44()
{
  result = qword_10058E300;
  if (!qword_10058E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E300);
  }

  return result;
}

unint64_t sub_100148E98()
{
  result = qword_10059B070;
  if (!qword_10059B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059B070);
  }

  return result;
}

void sub_100148EF8(uint64_t a1)
{
  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = *(v2 + 32);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v4 + 16) < 2uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(v4 + 33);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v6 + 16) < 3uLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v6 + 34);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v8 + 16) < 4uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(v8 + 35);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v10 + 16) < 5uLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = *(v10 + 36);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v12 + 16) < 6uLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = *(v12 + 37);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v14 + 16) < 7uLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v14 + 38);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v16 + 16) < 8uLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v16 + 39);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v18 + 16) < 9uLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = *(v18 + 40);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v19 + 16) < 0xAuLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = *(v19 + 41);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v20 + 16) < 0xBuLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v31 = *(v20 + 42);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v21 + 16) < 0xCuLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v30 = *(v21 + 43);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v22 + 16) < 0xDuLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = *(v22 + 44);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v23 + 16) < 0xEuLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v28 = *(v23 + 45);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v24 + 16) < 0xFuLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = *(v24 + 46);

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v25 + 16) >= 0x10uLL)
  {
    v26 = *(v25 + 47);

    return;
  }

LABEL_33:
  __break(1u);
}

unint64_t NANAttribute.ElementContainer.HTCapabilities.apple80211_ht_cap.getter(uint64_t a1, __int16 a2)
{
  v4 = NANAttribute.ElementContainer.HTCapabilities.htcapabilitiesInfo.getter(a1);
  v5 = *(a1 + 16);
  if (v5 >= 3)
  {
    v6 = *(a1 + 34);
  }

  sub_100148EF8(a1);
  NANAttribute.ElementContainer.HTCapabilities.htExtcapabilities.getter(a1);
  NANAttribute.ElementContainer.HTCapabilities.txbeamForm.getter(a1);
  if (v5 >= 0x1A)
  {
    v7 = *(a1 + 57) << 56;
  }

  return (HIBYTE(a2) << 40) | (a2 << 32) | (v4 << 48);
}

uint64_t NANAttribute.ElementContainer.VHTCapabilities.apple80211_vht_cap.getter(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a2 >> 8;
  v5 = NANAttribute.ElementContainer.VHTCapabilities.info.getter(a1);
  NANAttribute.ElementContainer.VHTCapabilities.rxMCSMap.getter(a1);
  NANAttribute.ElementContainer.VHTCapabilities.rxHighLgiRate.getter(a1);
  NANAttribute.ElementContainer.VHTCapabilities.txMCSMap.getter(a1);
  NANAttribute.ElementContainer.VHTCapabilities.txHighLgiRate.getter(a1);
  LODWORD(v7) = 0;
  BYTE4(v7) = v2;
  BYTE5(v7) = v4;
  HIWORD(v7) = v5;
  return v7;
}

void sub_10014936C(uint64_t a1)
{
  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v2 + 32);

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v4 + 16) < 2uLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v4 + 33);

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v6 + 16) < 3uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v6 + 34);

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v8 + 16) < 4uLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *(v8 + 35);

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v10 + 16) < 5uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(v10 + 36);

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v12 + 16) >= 6uLL)
  {
    v13 = *(v12 + 37);

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_100149488(uint64_t a1)
{
  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(v2 + 32);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v4 + 16) < 2uLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = *(v4 + 33);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v6 + 16) < 3uLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v6 + 34);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v8 + 16) < 4uLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v8 + 35);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v10 + 16) < 5uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v10 + 36);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v12 + 16) < 6uLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = *(v12 + 37);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v14 + 16) < 7uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = *(v14 + 38);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v16 + 16) < 8uLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = *(v16 + 39);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v18 + 16) < 9uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = *(v18 + 40);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v19 + 16) < 0xAuLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = *(v19 + 41);

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v21 + 16) >= 0xBuLL)
  {
    v22 = *(v21 + 42);

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t NANAttribute.ElementContainer.ElementIDExtension.apple80211_he_cap.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10014936C(a1);
  v5 = v4;
  v6 = v4 >> 8;
  v15 = v4 >> 16;
  v16 = v4 >> 24;
  v17 = HIDWORD(v4);
  v18 = v4 >> 40;
  sub_100149488(a1);
  v8 = v7;
  v10 = v9;
  v11 = NANAttribute.ElementContainer.ElementIDExtension.rxMCSMap80MHz.getter(a1);
  v12 = NANAttribute.ElementContainer.ElementIDExtension.txMCSMap80MHz.getter(a1);
  v13 = NANAttribute.ElementContainer.ElementIDExtension.rxMCSMap160MHz.getter(a1);
  result = NANAttribute.ElementContainer.ElementIDExtension.txMCSMap160MHz.getter(a1);
  *a2 = 0;
  *(a2 + 4) = 1536;
  *(a2 + 6) = v5;
  *(a2 + 7) = v6;
  *(a2 + 8) = v15;
  *(a2 + 9) = v16;
  *(a2 + 10) = v17;
  *(a2 + 11) = v18;
  *(a2 + 12) = 2816;
  *(a2 + 14) = v8;
  *(a2 + 24) = BYTE2(v10);
  *(a2 + 22) = v10;
  *(a2 + 26) = v11;
  *(a2 + 28) = v12;
  *(a2 + 30) = v13;
  *(a2 + 32) = result;
  *(a2 + 34) = 0;
  return result;
}

uint64_t sub_1001497A4(__int16 a1, uint64_t a2)
{
  v35 = HIBYTE(a1);
  v34 = (HIBYTE(a1) - a1);
  if (HIBYTE(a1) < a1)
  {
    v3 = -(a1 - HIBYTE(a1));
  }

  else
  {
    v3 = (HIBYTE(a1) - a1);
  }

  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = a1;
  result = sub_100032034(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_49;
  }

  v7 = 0;
  LODWORD(v8) = v35 - v5;
  if (v35 >= v5)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v32 = v3;
  v33 = v8;
  while (v7 != v3)
  {
    v9 = *(a2 + 32);
    sub_100031694(a2, *(a2 + 24));
    result = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v2)
    {

      return _swiftEmptyArrayStorage;
    }

    v10 = result;
    if (qword_10058AA78 != -1)
    {
      result = swift_once();
    }

    v11 = off_100591860;
    if (*(off_100591860 + 2) && (v12 = *(off_100591860 + 5), result = static Hasher._hash(seed:bytes:count:)(), v13 = -1 << *(v11 + 32), v14 = result & ~v13, ((*(v11 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) != 0))
    {
      v15 = ~v13;
      while (*(v11[6] + 4 * v14) != v10)
      {
        v14 = (v14 + 1) & v15;
        if (((*(v11 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v27 = 0;
      v28 = 3;
    }

    else
    {
LABEL_19:
      if (qword_10058AA80 != -1)
      {
        result = swift_once();
      }

      v16 = off_100591868;
      if (*(off_100591868 + 2) && (v17 = *(off_100591868 + 5), result = static Hasher._hash(seed:bytes:count:)(), v18 = -1 << *(v16 + 32), v19 = result & ~v18, ((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (*(v16[6] + 4 * v19) != v10)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v27 = 1;
        v28 = 4;
      }

      else
      {
LABEL_26:
        if (qword_10058AA88 != -1)
        {
          result = swift_once();
        }

        v21 = off_100591870;
        if (!*(off_100591870 + 2) || (v22 = *(off_100591870 + 5), result = static Hasher._hash(seed:bytes:count:)(), v23 = -1 << v21[32], v24 = result & ~v23, ((*&v21[((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v24) & 1) == 0))
        {
LABEL_33:
          v26 = 0x300000000;
          goto LABEL_38;
        }

        v25 = ~v23;
        while (*(*(v21 + 6) + 4 * v24) != v10)
        {
          v24 = (v24 + 1) & v25;
          if (((*&v21[((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v24) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v27 = 2;
        v28 = 5;
      }
    }

    v36 = v27;
    v37 = v28;
    result = sub_1000276D8(result);
    v26 = v10 | (v36 << 32) | (v37 << 40);
LABEL_38:
    v30 = _swiftEmptyArrayStorage[2];
    v29 = _swiftEmptyArrayStorage[3];
    if (v30 >= v29 >> 1)
    {
      result = sub_100032034((v29 > 1), v30 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v30 + 1;
    v31 = &_swiftEmptyArrayStorage[v30];
    *(v31 + 8) = v26;
    *(v31 + 18) = WORD2(v26);
    if (v35 < v5)
    {
      goto LABEL_47;
    }

    if (v7 == v33)
    {
      goto LABEL_48;
    }

    ++v7;
    v3 = v32;
    if (v7 == v34)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

Swift::Int sub_100149BFC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(8u);
  return Hasher._finalize()();
}

Swift::Int sub_100149C68()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(8u);
  return Hasher._finalize()();
}

CoreP2P::AWDLActionFrame::OUISubtype_optional __swiftcall AWDLActionFrame.OUISubtype.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 3)
  {
    v1.value = CoreP2P_AWDLActionFrame_OUISubtype_masterIndication;
  }

  else
  {
    v1.value = CoreP2P_AWDLActionFrame_OUISubtype_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AWDLActionFrame.OUISubtype.rawValue.getter(char a1)
{
  if (a1)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

void sub_100149CD4(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

Swift::Int sub_100149D3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100149D8C()
{
  if (*v0)
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100149DC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100149E34()
{
  v1 = 7955819;
  if (*v0 == 1)
  {
    v1 = 0x6574736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574736575716572;
  }
}

uint64_t sub_100149E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001645F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100149EB8(uint64_t a1)
{
  v2 = sub_10015CDD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100149EF4(uint64_t a1)
{
  v2 = sub_10015CDD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.ServiceRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005DC58(&qword_10058E310, &unk_100489468);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10015CDD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[1] = a3;
    v14 = 2;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_100165E30(&qword_10058E320);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

void AWDLActionFrame.ServiceRequest.hash(into:)(int a1, unsigned int a2, uint64_t a3)
{
  v4 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  v5 = *(a3 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a3 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }
}

Swift::Int AWDLActionFrame.ServiceRequest.hashValue.getter(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  v4 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  v5 = *(a2 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_10014A260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015F550(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_10014A2D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  AWDLActionFrame.ServiceRequest.hash(into:)(&v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.ServiceResponse.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for DNSRecords.SRV();
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for AWDLActionFrame.ServiceResponse(0) - 8) + 64);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B86C(v1, v8, type metadata accessor for AWDLActionFrame.ServiceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v8;
      v10 = *(v8 + 1);
      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      v14 = v8[32];
      v15 = *(v8 + 5);
      v16 = *(v8 + 6);
      v17 = v8[33];
      Hasher._combine(_:)(1uLL);
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v17);
      Data.hash(into:)();

      return sub_1000124C8(v15, v16);
    }

    else
    {
      sub_100039054(v8, v5, type metadata accessor for DNSRecords.SRV);
      Hasher._combine(_:)(2uLL);
      v25 = *v5;
      v26 = *(v5 + 1);
      v27 = *(v5 + 2);
      v28 = *(v5 + 3);
      v29 = v5[32];
      v30 = v5[33];
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v30);
      v31 = v2[5];
      type metadata accessor for NWEndpoint.Port();
      sub_1000348B8(&qword_10058CF48, &type metadata accessor for NWEndpoint.Port);
      dispatch thunk of Hashable.hash(into:)();
      v32 = &v5[v2[6]];
      v33 = *v32;
      v34 = *(v32 + 1);
      String.hash(into:)();
      Hasher._combine(_:)(*&v5[v2[7]]);
      Hasher._combine(_:)(*&v5[v2[8]]);
      return sub_10003B934(v5, type metadata accessor for DNSRecords.SRV);
    }
  }

  else
  {
    v20 = *v8;
    v19 = *(v8 + 1);
    v22 = *(v8 + 2);
    v21 = *(v8 + 3);
    v23 = v8[32];
    v24 = v8[33];
    Hasher._combine(_:)(0);
    String.lowercased()();
    String.hash(into:)();

    String.lowercased()();
    String.hash(into:)();

    String.hash(into:)();

    Hasher._combine(_:)(v24);
  }
}

Swift::Int ChannelSequence.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  ChannelSequence.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t sub_10014A818(void *a1)
{
  v3 = *v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_1001587A0(v6, 3u, v3);
  if (!v2)
  {
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v6);
}

uint64_t AWDLActionFrame.AWDLChannelSequenceParameter.encode(to:)(void *a1, uint64_t a2)
{
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_1001587A0(v6, 3u, a2);
  if (!v2)
  {
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v6);
}

Swift::Int sub_10014A9D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ChannelSequence.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.SynchronizationParameter.master.setter(uint64_t result)
{
  *(v1 + 22) = result;
  *(v1 + 24) = BYTE2(result);
  *(v1 + 25) = BYTE3(result);
  *(v1 + 26) = BYTE4(result);
  *(v1 + 27) = BYTE5(result);
  return result;
}

uint64_t sub_10014ACB4(char a1)
{
  result = 0x74696D736E617274;
  switch(a1)
  {
    case 1:
      result = 0x6E756F436E776F64;
      break;
    case 2:
    case 5:
    case 10:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6D69546472617567;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x7367616C66;
      break;
    case 7:
      result = 0xD000000000000021;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0x72657473616DLL;
      break;
    case 15:
      v3 = 1936028272;
      goto LABEL_13;
    case 16:
      result = 0x6465767265736572;
      break;
    case 17:
      v3 = 1970365811;
LABEL_13:
      result = v3 | 0x65636E6500000000;
      break;
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10014AED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016471C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014AF08(uint64_t a1)
{
  v2 = sub_100037EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014AF44(uint64_t a1)
{
  v2 = sub_100037EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AWDLActionFrame.SynchronizationParameter.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(*(v2 + 2));
  Hasher._combine(_:)(*(v2 + 4));
  Hasher._combine(_:)(*(v2 + 5));
  Hasher._combine(_:)(*(v2 + 6));
  Hasher._combine(_:)(*(v2 + 8));
  Hasher._combine(_:)(*(v2 + 10));
  Hasher._combine(_:)(*(v2 + 12));
  Hasher._combine(_:)(*(v2 + 14));
  Hasher._combine(_:)(*(v2 + 16));
  Hasher._combine(_:)(*(v2 + 18));
  Hasher._combine(_:)(*(v2 + 19));
  Hasher._combine(_:)(*(v2 + 20));
  Hasher._combine(_:)(*(v2 + 21));
  v4 = *(v2 + 23);
  v5 = *(v2 + 24);
  v6 = *(v2 + 25);
  v7 = *(v2 + 26);
  v8 = *(v2 + 27);
  Hasher._combine(_:)(*(v2 + 22));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(*(v2 + 28));
  Hasher._combine(_:)(*(v2 + 29));
  Hasher._combine(_:)(*(v2 + 30));
  Hasher._combine(_:)(*(v2 + 32));
  v9 = *(v2 + 40);

  ChannelSequence.hash(into:)(a1, v9);
}

Swift::Int AWDLActionFrame.SynchronizationParameter.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 5));
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 10));
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 14));
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 18));
  Hasher._combine(_:)(*(v0 + 19));
  Hasher._combine(_:)(*(v0 + 20));
  Hasher._combine(_:)(*(v0 + 21));
  v1 = *(v0 + 23);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 27);
  Hasher._combine(_:)(*(v0 + 22));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(*(v0 + 28));
  Hasher._combine(_:)(*(v0 + 29));
  Hasher._combine(_:)(*(v0 + 30));
  Hasher._combine(_:)(*(v0 + 32));
  ChannelSequence.hash(into:)(v7, *(v0 + 40));
  return Hasher._finalize()();
}

double AWDLActionFrame.SynchronizationParameter.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000379CC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t AWDLActionFrame.SynchronizationParameter.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v5 = *v1;
  sub_100031694(v24, v25);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    v6 = *(v3 + 1);
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v7 = v3[4];
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v8 = v3[5];
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v9 = *(v3 + 3);
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v10 = *(v3 + 4);
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v11 = *(v3 + 5);
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v12 = *(v3 + 6);
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v13 = *(v3 + 7);
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v14 = *(v3 + 8);
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v15 = v3[18];
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v16 = v3[19];
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v17 = v3[20];
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v18 = v3[21];
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v26 = *(v3 + 22);
    v27 = *(v3 + 13);
    sub_100031694(v24, v25);
    sub_10008A490();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v19 = v3[28];
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v20 = v3[29];
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v21 = *(v3 + 15);
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v22 = *(v3 + 16);
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_1001587A0(v24, 1u, *(v3 + 5));
    sub_100031694(v24, v25);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v24);
}

uint64_t sub_10014B7AC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7CoreP2P15AWDLActionFrameV24SynchronizationParameterV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8) & 1;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.address.getter(uint64_t a1, uint64_t a2)
{
  *(&v2 + 1) = a2;
  *&v2 = a1;
  return (v2 >> 48) & 0xFFFFFFFFFFFFLL;
}

uint64_t AWDLActionFrame.Header.bssid.setter(uint64_t result)
{
  *(v1 + 6) = result;
  *(v1 + 8) = BYTE2(result);
  *(v1 + 9) = BYTE3(result);
  *(v1 + 10) = BYTE4(result);
  *(v1 + 11) = BYTE5(result);
  return result;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.topMasterMetric.getter(uint64_t a1, uint64_t a2, char a3)
{
  *(&v4 + 1) = a3 & 1;
  *&v4 = a2;
  return v4 >> 32;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.topMasterMetric.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.selfElectionMetric.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(&v5 + 1) = a4 & 1;
  *&v5 = a3;
  return v5 >> 32;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.selfElectionMetric.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_10014B888()
{
  v1 = *v0;
  v2 = 0x7367616C66;
  v3 = 0x657473614D706F74;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x6465767265736572;
  if (v1 != 3)
  {
    v4 = 0x73736572646461;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697463656C65;
  if (v1 != 1)
  {
    v5 = 0x65636E6174736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10014B98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100164D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014B9C0(uint64_t a1)
{
  v2 = sub_100039434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014B9FC(uint64_t a1)
{
  v2 = sub_100039434();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(int a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v18 = HIDWORD(a4);
  v7 = a2 >> 16;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  v11 = HIBYTE(a2);
  v12 = a3 >> 8;
  v13 = a3 >> 16;
  *v16 = a3 >> 24;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v16[0]);
  if (a4)
  {
    LODWORD(v14) = dword_10048DB84[a3 >> 32];
  }

  else
  {
    v14 = HIDWORD(a3);
  }

  Hasher._combine(_:)(v14);
  v15 = v18;
  if (a5)
  {
    v15 = dword_10048DB84[a4 >> 32];
  }

  Hasher._combine(_:)(v15);
}

Swift::Int AWDLActionFrame.DeprecatedElectionParameter.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  v8 = a3 & 0xFFFFFFFF00000000;
  Hasher.init(_seed:)();
  AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(&v10, a1 & 0xFFFFFFFFFFFF00FFLL, a2, v8 | v5 & 1, a4 & 1);
  return Hasher._finalize()();
}

unint64_t AWDLActionFrame.DeprecatedElectionParameter.init(from:)(uint64_t *a1)
{
  result = sub_100039124(a1);
  if (!v1)
  {
    result &= 0xFFFFFFFFFFFF00FFLL;
  }

  return result;
}

unint64_t sub_10014BC48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100039124(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = WORD1(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 6) = BYTE6(result);
    *(a2 + 7) = HIBYTE(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 20) = v7;
    *(a2 + 24) = v8 & 1;
  }

  return result;
}

uint64_t sub_10014BCE4(void *a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 5);
  v4 = *v1 | (*(v1 + 1) << 16) | (v1[4] << 32) | (v1[5] << 40) | (v1[6] << 48) | (v1[7] << 56);
  v7 = v1[16] & 1;
  v6 = v1[24] & 1;
  return AWDLActionFrame.DeprecatedElectionParameter.encode(to:)(a1);
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.encode(to:)(void *a1)
{
  v2 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v4, v5);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    sub_10008A490();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v4, v5);
    sub_100160538();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v4);
}

Swift::Int sub_10014BFE4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[16];
  v7 = v0[24];
  v8 = v0[7];
  v9 = *(v0 + 1);
  v10 = *(v0 + 5);
  Hasher.init(_seed:)();
  AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(&v12, v1 | (v2 << 16) | (v3 << 32) | (v4 << 40) | (v5 << 48) | (v8 << 56), v9, v6 & 1 | (v10 << 32), v7 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10014C0FC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[16];
  v7 = v0[24];
  v8 = v0[7];
  v9 = *(v0 + 1);
  v10 = *(v0 + 5);
  Hasher.init(_seed:)();
  AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(&v12, v1 | (v2 << 16) | (v3 << 32) | (v4 << 40) | (v5 << 48) | (v8 << 56), v9, v6 & 1 | (v10 << 32), v7 & 1);
  return Hasher._finalize()();
}

BOOL sub_10014C1B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1[16];
  v4 = a1[24];
  v5 = *(a1 + 1);
  v6 = *(a1 + 5);
  v7 = *(a2 + 1);
  v8 = *a1 | (*(a1 + 1) << 16) | (a1[4] << 32) | (a1[5] << 40) | (a1[6] << 48) | (a1[7] << 56);
  v9 = *a2 | (*(a2 + 1) << 16) | (a2[4] << 32) | (a2[5] << 40) | (a2[6] << 48) | (a2[7] << 56);
  v10 = a2[24] & 1;
  v11 = a2[16] & 1 | (*(a2 + 5) << 32);

  return sub_10015D27C(v8, v5, v3 & 1 | (v6 << 32), v4 & 1, v9, v7, v11, v10);
}

uint64_t sub_10014C32C()
{
  result = Data.subdata(in:)();
  static AWDLActionFrame.ServiceParameter.SSTH.zero = 0;
  qword_10059B498 = result;
  unk_10059B4A0 = v1;
  return result;
}

uint64_t AWDLActionFrame.ServiceParameter.SSTH.init(ssthByteMap:compressedSSTH:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10003A0D8(a1, a2, a3);
  if (v3)
  {
    return sub_1000124C8(a2, a3);
  }

  v8 = v6;
  sub_1000124C8(a2, a3);
  return v8;
}

int *AWDLActionFrame.ServiceParameter.SSTH.zero.unsafeMutableAddressor()
{
  if (qword_10058A850 != -1)
  {
    swift_once();
  }

  return &static AWDLActionFrame.ServiceParameter.SSTH.zero;
}

uint64_t static AWDLActionFrame.ServiceParameter.SSTH.zero.getter()
{
  if (qword_10058A850 != -1)
  {
    swift_once();
  }

  v0 = static AWDLActionFrame.ServiceParameter.SSTH.zero;
  sub_10000AB0C(qword_10059B498, unk_10059B4A0);
  return v0;
}

uint64_t AWDLActionFrame.ServiceParameter.SSTH.init(from:)(uint64_t *a1)
{
  LODWORD(result) = sub_100039DC8(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10014C4C8()
{
  if (*v0)
  {
    result = 0x73736572706D6F63;
  }

  else
  {
    result = 0x6574794268747373;
  }

  *v0;
  return result;
}

uint64_t sub_10014C518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574794268747373 && a2 == 0xEB0000000070614DLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEE00485453536465)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10014C600(uint64_t a1)
{
  v2 = sub_10016058C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014C63C(uint64_t a1)
{
  v2 = sub_10016058C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static AWDLActionFrame.ServiceParameter.SSTH.__derived_struct_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a1 == a4)
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t AWDLActionFrame.ServiceParameter.SSTH.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_10005DC58(&qword_10058E330, &qword_100489478);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10016058C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_10000AB0C(a3, v15);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t AWDLActionFrame.ServiceParameter.SSTH.hash(into:)(int a1, Swift::UInt32 a2)
{
  Hasher._combine(_:)(a2);

  return Data.hash(into:)();
}

Swift::Int AWDLActionFrame.ServiceParameter.SSTH.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10014C8F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10014C958()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);

  return Data.hash(into:)();
}

Swift::Int sub_10014C9AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10014CA2C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t AWDLActionFrame.ServiceParameter.ssth.setter(int a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000124C8(*(v3 + 16), *(v3 + 24));
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

unint64_t sub_10014CA98()
{
  v1 = 0x7367616C66;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 1752462195;
  }

  if (*v0)
  {
    v1 = 0x6D69546C6C657764;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10014CB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100164FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014CB38(uint64_t a1)
{
  v2 = sub_1001605E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014CB74(uint64_t a1)
{
  v2 = sub_1001605E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static AWDLActionFrame.ServiceParameter.__derived_struct_equals(_:_:)(unint64_t a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  result = 0;
  if (a1 == a5 && (a1 >> 16) == (a5 >> 16))
  {
    return a2 == a6 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8) & 1) != 0;
  }

  return result;
}

uint64_t AWDLActionFrame.ServiceParameter.encode(to:)(void *a1, char a2, int a3, uint64_t a4, unint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v9 = sub_10005DC58(&qword_10058E340, &unk_100489480);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v19 - v12;
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001605E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = a2;
  v25 = 0;
  sub_100160634();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v15 = a3;
    v16 = v20;
    v17 = v21;
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = 3;
    sub_10000AB0C(v16, v17);
    sub_100160688();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v23, v24);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t AWDLActionFrame.ServiceParameter.hash(into:)(int a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = a2 >> 16;
  v5 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(a3);

  return Data.hash(into:)();
}

Swift::Int AWDLActionFrame.ServiceParameter.hashValue.getter(unint64_t a1, Swift::UInt32 a2)
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(a2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10014CF80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AWDLActionFrame.ServiceParameter.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = WORD1(result);
    *(a2 + 4) = WORD2(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_10014CFF8(void *a1)
{
  *(v1 + 2);
  *(v1 + 4);
  return AWDLActionFrame.ServiceParameter.encode(to:)(a1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
}

Swift::Int sub_10014D02C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10014D0D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v1);

  return Data.hash(into:)();
}

Swift::Int sub_10014D158()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10014D334@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15AWDLActionFrameV13DataPathStateV30UnicastMasterIndicationOptionsO8rawValueAGSgs6UInt32V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10014D378()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10048DBB8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10014D400()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10048DBB8[v1]);
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.DataPathState.countryCode.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.socialChannelMap.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = WORD2(result);
  return result;
}

uint64_t AWDLActionFrame.DataPathState.infraBSSID.setter(uint64_t result)
{
  *(v1 + 10) = result;
  *(v1 + 14) = WORD2(result);
  *(v1 + 16) = BYTE6(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.infraChannel.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = WORD2(result);
  return result;
}

uint64_t AWDLActionFrame.DataPathState.infraAddress.setter(uint64_t result)
{
  *(v1 + 26) = result;
  *(v1 + 30) = WORD2(result);
  *(v1 + 32) = BYTE6(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.infraSSID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AWDLActionFrame.DataPathState.infraSSID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.awdlAddress.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = WORD2(result);
  *(v1 + 62) = BYTE6(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.portUniqueLogID.setter(uint64_t result)
{
  *(v1 + 66) = result;
  *(v1 + 68) = BYTE2(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.rootLoopFreeCounter.setter(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 76) = BYTE4(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.awdlOnSince.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AWDLActionFrame.DataPathState(0) + 136);

  return sub_1001606DC(v3, a1);
}

uint64_t AWDLActionFrame.DataPathState.awdlOnSince.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AWDLActionFrame.DataPathState(0) + 136);

  return sub_10016074C(a1, v3);
}

uint64_t AWDLActionFrame.DataPathState.availabilityWindowSequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLActionFrame.DataPathState(0);
  v4 = v1 + *(result + 140);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.actionFrameUpdateCounter.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLActionFrame.DataPathState(0);
  v4 = v1 + *(result + 144);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

void AWDLActionFrame.DataPathState.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10059B170, &unk_1004B4D70) - 8) + 64);
  __chkstk_darwin();
  v8 = &v53 - v7;
  LOBYTE(v7) = *(v1 + 2);
  v55 = v3;
  if (v7)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = *v1;
    v9 = v10 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v10);
  }

  Hasher._combine(_:)(v9);
  v11 = *(v1 + 1) | (v1[4] << 32);
  if ((v11 & 0xFF00000000) == 0x300000000)
  {
    v12 = 0;
LABEL_6:
    Hasher._combine(_:)(v12);
    goto LABEL_19;
  }

  v13 = v11 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(0x801004u >> ((v11 >> 29) & 0xF8));
  if ((v11 >> 40) <= 3)
  {
    if (v13 == 2)
    {
      v14 = 0;
      goto LABEL_18;
    }

    if (v13 == 3)
    {
      v14 = 1;
      goto LABEL_18;
    }

LABEL_63:
    Hasher._combine(_:)(2uLL);
    v12 = BYTE5(v11) & 1;
    goto LABEL_6;
  }

  if (v13 == 4)
  {
    v14 = 3;
    goto LABEL_18;
  }

  if (v13 == 5)
  {
    v14 = 4;
    goto LABEL_18;
  }

  if (v13 != 6)
  {
    goto LABEL_63;
  }

  v14 = 5;
LABEL_18:
  Hasher._combine(_:)(v14);
LABEL_19:
  v15 = *(v1 + 16);
  v56 = v2;
  if (v15)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v17 = v1[7];
    v18 = *(v1 + 5);
    v19 = v18 | (v1[7] << 32);
    v20 = v19 >> 8;
    v21 = v19 >> 16;
    v22 = v19 >> 24;
    v16 = v17 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v18);
    Hasher._combine(_:)(v20);
    Hasher._combine(_:)(v21);
    Hasher._combine(_:)(v22);
    Hasher._combine(_:)(v17);
  }

  Hasher._combine(_:)(v16);
  v23 = *(v1 + 5) | (v1[12] << 32);
  if ((v23 & 0xFF00000000) == 0x300000000)
  {
    v24 = 0;
    goto LABEL_24;
  }

  v26 = v23 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v23);
  Hasher._combine(_:)(0x801004u >> ((v23 >> 29) & 0xF8));
  if ((v23 >> 40) <= 3)
  {
    if (v26 == 2)
    {
      v27 = 0;
    }

    else
    {
      if (v26 != 3)
      {
        goto LABEL_64;
      }

      v27 = 1;
    }

LABEL_37:
    Hasher._combine(_:)(v27);
    if (v1[16])
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  switch(v26)
  {
    case 4:
      v27 = 3;
      goto LABEL_37;
    case 5:
      v27 = 4;
      goto LABEL_37;
    case 6:
      v27 = 5;
      goto LABEL_37;
  }

LABEL_64:
  Hasher._combine(_:)(2uLL);
  v24 = BYTE5(v23) & 1;
LABEL_24:
  Hasher._combine(_:)(v24);
  if (v1[16])
  {
LABEL_25:
    LOBYTE(v25) = 0;
    goto LABEL_39;
  }

LABEL_38:
  v28 = v1[15];
  v29 = *(v1 + 13);
  v30 = v29 | (v1[15] << 32);
  v31 = v30 >> 8;
  v32 = v30 >> 16;
  v33 = v30 >> 24;
  v25 = v28 >> 8;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v29);
  Hasher._combine(_:)(v31);
  Hasher._combine(_:)(v32);
  Hasher._combine(_:)(v33);
  Hasher._combine(_:)(v28);
LABEL_39:
  Hasher._combine(_:)(v25);
  if (*(v1 + 6))
  {
    v34 = *(v1 + 5);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[31])
    {
LABEL_41:
      LOBYTE(v35) = 0;
      goto LABEL_44;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1[31])
    {
      goto LABEL_41;
    }
  }

  v36 = v1[30];
  v37 = *(v1 + 14);
  v38 = v37 | (v1[30] << 32);
  v39 = v38 >> 8;
  v40 = v38 >> 16;
  v41 = v38 >> 24;
  v35 = v36 >> 8;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v37);
  Hasher._combine(_:)(v39);
  Hasher._combine(_:)(v40);
  Hasher._combine(_:)(v41);
  Hasher._combine(_:)(v36);
LABEL_44:
  v43 = v55;
  v42 = v56;
  Hasher._combine(_:)(v35);
  Hasher._combine(_:)(*(v1 + 63));
  v44 = *(v1 + 64);
  if (v44 == 47)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(dword_10048DBB8[v44]);
  }

  Hasher._combine(_:)(*(v1 + 65));
  if (*(v1 + 68) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = v1[33];
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v45);
  }

  if (*(v1 + 76) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v46 = *(v1 + 18);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v46);
  }

  Hasher._combine(_:)(*(v1 + 77));
  Hasher._combine(_:)(*(v1 + 78));
  Hasher._combine(_:)(*(v1 + 79));
  Hasher._combine(_:)(*(v1 + 80));
  Hasher._combine(_:)(*(v1 + 81));
  Hasher._combine(_:)(*(v1 + 82));
  Hasher._combine(_:)(*(v1 + 83));
  Hasher._combine(_:)(*(v1 + 84));
  Hasher._combine(_:)(*(v1 + 85));
  Hasher._combine(_:)(*(v1 + 86));
  Hasher._combine(_:)(*(v1 + 87));
  Hasher._combine(_:)(*(v1 + 88));
  Hasher._combine(_:)(*(v1 + 89));
  Hasher._combine(_:)(*(v1 + 90));
  Hasher._combine(_:)(*(v1 + 91));
  Hasher._combine(_:)(*(v1 + 92));
  Hasher._combine(_:)(*(v1 + 93));
  Hasher._combine(_:)(*(v1 + 94));
  v47 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  sub_1001606DC(v1 + v47[34], v8);
  if ((*(v43 + 48))(v8, 1, v42) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v48 = v54;
    (*(v43 + 32))(v54, v8, v42);
    Hasher._combine(_:)(1u);
    DispatchTimeInterval.hash(into:)();
    (*(v43 + 8))(v48, v42);
  }

  v49 = v1 + v47[35];
  if (v49[4] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v50 = *v49;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v50);
  }

  v51 = v1 + v47[36];
  if (v51[4] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v52 = *v51;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v52);
  }
}

uint64_t AWDLActionFrame.DataPathState.encode(to:)(uint64_t a1)
{
  v5 = v2;
  v6 = v1;
  v8 = *(*(sub_10005DC58(&unk_10059B170, &unk_1004B4D70) - 8) + 64);
  __chkstk_darwin();
  v10 = &v76 - v9;
  v99 = type metadata accessor for DispatchTimeInterval();
  v83 = *(v99 - 8);
  v11 = *(v83 + 64);
  __chkstk_darwin();
  v81 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 78);
  v14 = *(v6 + 94);
  v15 = *(v6 + 79);
  v16 = *(v6 + 80);
  v17 = *(v6 + 81);
  v18 = *(v6 + 77) == 1;
  v82 = v10;
  if (!v18)
  {
    if (v13)
    {
      if (v14)
      {
        if (v15)
        {
          if (v16)
          {
            if (v17)
            {
              v19 = 3280;
              goto LABEL_97;
            }

            if (v6[41])
            {
              v19 = 1232;
              goto LABEL_98;
            }

            v19 = 1232;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

LABEL_100:
            v19 |= 0x4000u;
            goto LABEL_101;
          }

          if ((v17 & 1) == 0)
          {
            if (v6[41])
            {
              v19 = 208;
              goto LABEL_98;
            }

            v19 = 208;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v19 = 2256;
        }

        else if (v16)
        {
          if ((v17 & 1) == 0)
          {
            if (v6[41])
            {
              v19 = 1104;
              goto LABEL_98;
            }

            v19 = 1104;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v19 = 3152;
        }

        else
        {
          if ((v17 & 1) == 0)
          {
            if (v6[41])
            {
              v19 = 80;
              goto LABEL_98;
            }

            v19 = 80;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v19 = 2128;
        }
      }

      else if (v15)
      {
        if (v16)
        {
          if ((v17 & 1) == 0)
          {
            if (v6[41])
            {
              v19 = 1216;
              goto LABEL_98;
            }

            v19 = 1216;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v19 = 3264;
        }

        else
        {
          if ((v17 & 1) == 0)
          {
            if (v6[41])
            {
              v19 = 192;
              goto LABEL_98;
            }

            v19 = 192;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v19 = 2240;
        }
      }

      else if (v16)
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 1088;
            goto LABEL_98;
          }

          v19 = 1088;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 3136;
      }

      else
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 64;
            goto LABEL_98;
          }

          v19 = 64;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 2112;
      }
    }

    else if (v14)
    {
      if (v15)
      {
        if (v16)
        {
          if ((v17 & 1) == 0)
          {
            if (v6[41])
            {
              v19 = 1168;
              goto LABEL_98;
            }

            v19 = 1168;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v19 = 3216;
        }

        else
        {
          if ((v17 & 1) == 0)
          {
            if (v6[41])
            {
              v19 = 144;
              goto LABEL_98;
            }

            v19 = 144;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v19 = 2192;
        }
      }

      else if (v16)
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 1040;
            goto LABEL_98;
          }

          v19 = 1040;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 3088;
      }

      else
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 16;
            goto LABEL_98;
          }

          v19 = 16;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 2064;
      }
    }

    else if (v15)
    {
      if (v16)
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 1152;
            goto LABEL_98;
          }

          v19 = 1152;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 3200;
      }

      else
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 128;
            goto LABEL_98;
          }

          v19 = 128;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 2176;
      }
    }

    else if (v16)
    {
      if ((v17 & 1) == 0)
      {
        if (v6[41])
        {
          v19 = 1024;
          goto LABEL_98;
        }

        v19 = 1024;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v19 = 3072;
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        if (v6[41])
        {
          v19 = 0;
          goto LABEL_98;
        }

        v19 = 0;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v19 = 2048;
    }

    goto LABEL_97;
  }

  if ((v13 & 1) == 0)
  {
    if (v14)
    {
      if (v15)
      {
        if (v16)
        {
          if ((v17 & 1) == 0)
          {
            if (v6[41])
            {
              v19 = 1200;
              goto LABEL_98;
            }

            v19 = 1200;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v19 = 3248;
        }

        else
        {
          if ((v17 & 1) == 0)
          {
            if (v6[41])
            {
              v19 = 176;
              goto LABEL_98;
            }

            v19 = 176;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v19 = 2224;
        }
      }

      else if (v16)
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 1072;
            goto LABEL_98;
          }

          v19 = 1072;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 3120;
      }

      else
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 48;
            goto LABEL_98;
          }

          v19 = 48;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 2096;
      }
    }

    else if (v15)
    {
      if (v16)
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 1184;
            goto LABEL_98;
          }

          v19 = 1184;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 3232;
      }

      else
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 160;
            goto LABEL_98;
          }

          v19 = 160;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 2208;
      }
    }

    else if (v16)
    {
      if ((v17 & 1) == 0)
      {
        if (v6[41])
        {
          v19 = 1056;
          goto LABEL_98;
        }

        v19 = 1056;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v19 = 3104;
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        if (v6[41])
        {
          v19 = 32;
          goto LABEL_98;
        }

        v19 = 32;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v19 = 2080;
    }

LABEL_97:
    if ((v6[41] & 1) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  if (!v14)
  {
    if (v15)
    {
      if (v16)
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 1248;
            goto LABEL_98;
          }

          v19 = 1248;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 3296;
      }

      else
      {
        if ((v17 & 1) == 0)
        {
          if (v6[41])
          {
            v19 = 224;
            goto LABEL_98;
          }

          v19 = 224;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v19 = 2272;
      }
    }

    else if (v16)
    {
      if ((v17 & 1) == 0)
      {
        if (v6[41])
        {
          v19 = 1120;
          goto LABEL_98;
        }

        v19 = 1120;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v19 = 3168;
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        if (v6[41])
        {
          v19 = 96;
          goto LABEL_98;
        }

        v19 = 96;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v19 = 2144;
    }

    goto LABEL_97;
  }

  if (!v15)
  {
    if (v16)
    {
      if ((v17 & 1) == 0)
      {
        if (v6[41])
        {
          v19 = 1136;
          goto LABEL_98;
        }

        v19 = 1136;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v19 = 3184;
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        if (v6[41])
        {
          v19 = 112;
          goto LABEL_98;
        }

        v19 = 112;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v19 = 2160;
    }

    goto LABEL_97;
  }

  if (!v16)
  {
    if ((v17 & 1) == 0)
    {
      if (v6[41])
      {
        v19 = 240;
        goto LABEL_98;
      }

      v19 = 240;
      if ((*(v6 + 83) & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_100;
    }

    v19 = 2288;
    goto LABEL_97;
  }

  if (v17)
  {
    v19 = 3312;
    goto LABEL_97;
  }

  if (v6[41])
  {
    v19 = 1264;
LABEL_98:
    v19 |= 0x2000u;
LABEL_99:
    if (*(v6 + 83) != 1)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v19 = 1264;
  if (*(v6 + 83))
  {
    goto LABEL_100;
  }

LABEL_101:
  v20 = sub_100033AA8(_swiftEmptyArrayStorage);
  v85 = type metadata accessor for BinaryEncoder();
  v21 = swift_allocObject();
  v84 = xmmword_100480A90;
  *(v21 + 16) = xmmword_100480A90;
  v80 = v21 + 16;
  *(v21 + 32) = v20;
  v97 = &type metadata for BinaryEncoder.UnkeyedContainer;
  v22 = sub_1000D12E4();
  v23 = v22;
  v98 = v22;
  v96[0] = v21;
  if (v6[1])
  {
  }

  else
  {
    v33 = *v6;
    v3 = v22;
    sub_100031694(v96, &type metadata for BinaryEncoder.UnkeyedContainer);

    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v2)
    {
      goto LABEL_392;
    }

    sub_100031694(v96, v97);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v4 = v97;
    sub_100031694(v96, v97);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v19 |= 0x100u;
    v23 = v3;
  }

  if (((*(v6 + 1) | (v6[4] << 32)) & 0xFF00000000) != 0x300000000)
  {
    if ((*(v6 + 1) & 0xFFFF0000) != 0)
    {
      __break(1u);
      goto LABEL_587;
    }

    sub_100031694(v96, v97);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v2)
    {
      goto LABEL_392;
    }

    v19 |= 0x200u;
  }

  v24 = *(v6 + 16);
  v79 = a1;
  if ((v24 & 1) != 0 || (v25 = *(v6 + 5) | (v6[12] << 32), (v25 & 0xFF00000000) == 0x300000000))
  {
    if (v6[16])
    {
      goto LABEL_112;
    }

LABEL_110:
    v26 = v6[15];
    v27 = *(v6 + 13) | (v26 << 32);
    LOBYTE(v93[0]) = *(v6 + 13);
    v28.i64[0] = 0xFFFFFFFFFFFFLL;
    v28.i64[1] = 0xFFFFFFFFFFFFLL;
    v29 = vandq_s8(vdupq_n_s64(v27), v28);
    v30 = vshlq_u64(v29, xmmword_1004817A0);
    *v29.i8 = vmovn_s64(vshlq_u64(v29, xmmword_100481790));
    *v30.i8 = vmovn_s64(v30);
    v30.i16[1] = v30.i16[2];
    v30.i16[2] = v29.i16[0];
    v30.i16[3] = v29.i16[2];
    *(v93 + 1) = vmovn_s16(v30).u32[0];
    BYTE5(v93[0]) = BYTE1(v26);
    sub_100031694(v96, v97);
    sub_10008A490();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if (v2)
    {
      goto LABEL_392;
    }

    v19 |= 2u;
    a1 = v79;
LABEL_112:
    if (v6[31])
    {
      v3 = a1;
      v31 = v23;
      v32 = *(v6 + 6);
      if (!v32)
      {
LABEL_121:
        v42 = v31;
        if (*(v6 + 63) != 1)
        {
          LODWORD(v78) = v19;
          goto LABEL_128;
        }

        v43 = v19 | 0x1000;
        switch(*(v6 + 64))
        {
          case '/':
            *(v6 + 65);
            break;
          default:
            *(v6 + 65);
            break;
        }

        sub_100031694(v96, v97);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        if (!v5)
        {
          sub_100031694(v96, v97);
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          LODWORD(v78) = v43;
          v3 = v79;
LABEL_128:
          v77 = v21;
          v50 = sub_100033AA8(_swiftEmptyArrayStorage);
          a1 = swift_allocObject();
          *(a1 + 16) = v84;
          v4 = (a1 + 16);
          *(a1 + 32) = v50;
          v94 = &type metadata for BinaryEncoder.UnkeyedContainer;
          v95 = v42;
          v93[0] = a1;
          v51 = *(v6 + 85);
          v52 = *(v6 + 87);
          v53 = *(v6 + 89);
          v54 = *(v6 + 86);
          v55 = *(v6 + 88);
          if (*(v6 + 84) == 1)
          {
            v21 = v99;
            if (*(v6 + 85))
            {
              if (*(v6 + 87))
              {
                if (*(v6 + 89))
                {
                  if (*(v6 + 86))
                  {
                    if (v6[44])
                    {
                      v56 = 474;
                      goto LABEL_351;
                    }

                    if (v6[45])
                    {
                      v56 = 346;
LABEL_352:
                      v56 |= 0x200u;
LABEL_353:
                      if (*(v6 + 91) != 1)
                      {
                        goto LABEL_355;
                      }

                      goto LABEL_354;
                    }

                    if (*(v6 + 91))
                    {
                      v56 = 346;
LABEL_354:
                      v56 |= 0x800u;
LABEL_355:
                      if (*(v6 + 92) != 1)
                      {
                        goto LABEL_357;
                      }

                      goto LABEL_356;
                    }

                    if (v6[46])
                    {
                      v56 = 346;
LABEL_356:
                      v56 |= 0x1000u;
LABEL_357:
                      if (*(v6 + 93) != 1)
                      {
                        goto LABEL_359;
                      }

                      goto LABEL_358;
                    }

LABEL_587:
                    v56 = 346;
                    if ((*(v6 + 93) & 1) == 0)
                    {
                      goto LABEL_359;
                    }

LABEL_358:
                    v56 |= 0x2000u;
                    goto LABEL_359;
                  }

                  if (v6[44])
                  {
                    v56 = 472;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 344;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 344;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 344;
                    goto LABEL_356;
                  }

                  v56 = 344;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

LABEL_359:
                  if (*(v6 + 68) == 1)
                  {
                  }

                  else
                  {
                    v57 = v6[33];
                    sub_100031694(v93, &type metadata for BinaryEncoder.UnkeyedContainer);

                    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                    if (v5)
                    {
LABEL_365:

LABEL_386:
                      sub_100002A00(v93);
                      return sub_100002A00(v96);
                    }

                    v56 |= 1u;
                    v3 = v79;
                  }

                  v85 = v4;
                  if ((v6[38] & 1) == 0)
                  {
                    v58 = *(v6 + 18);
                    sub_100031694(v93, v94);
                    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                    if (v5)
                    {
                      goto LABEL_365;
                    }

                    v56 |= 4u;
                    v3 = v79;
                  }

                  v59 = type metadata accessor for AWDLActionFrame.DataPathState(0);
                  v60 = v82;
                  sub_1001606DC(v6 + v59[34], v82);
                  v61 = v83;
                  if ((*(v83 + 48))(v60, 1, v21) == 1)
                  {
                    sub_100016290(v60, &unk_10059B170, &unk_1004B4D70);
                    v62 = v77;
                    v63 = v56;
LABEL_369:
                    v64 = v78;
LABEL_375:
                    if (v63)
                    {
                      v68 = v64 | 0x8000;
                    }

                    else
                    {
                      v68 = v64;
                    }

                    v69 = v3[4];
                    sub_100029B34(v3, v3[3]);
                    dispatch thunk of Encoder.unkeyedContainer()();
                    v90 = v68;
                    sub_100031694(v91, v92);
                    sub_1001607BC();
                    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
                    if (v5)
                    {
                      goto LABEL_384;
                    }

                    LODWORD(v99) = v63;
                    swift_beginAccess();
                    v71 = *(v62 + 24);
                    v88 = *(v62 + 16);
                    v70 = v88;
                    v89 = v71;
                    sub_100031694(v91, v92);
                    sub_10000AB0C(v70, v71);
                    sub_1000B8088();
                    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
                    sub_1000124C8(v88, v89);
                    if ((v68 & 0x8000) == 0)
                    {
LABEL_384:
                    }

                    else
                    {
                      LOWORD(v88) = v99;
                      sub_100031694(v91, v92);
                      sub_100160810();
                      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
                      swift_beginAccess();
                      v75 = *(a1 + 24);
                      v86 = *(a1 + 16);
                      v74 = v86;
                      v87 = v75;
                      sub_100031694(v91, v92);
                      sub_10000AB0C(v74, v75);
                      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
                      sub_1000124C8(v86, v87);
                    }

                    sub_100002A00(v91);
                    goto LABEL_386;
                  }

                  *&v84 = a1;
                  v65 = v81;
                  (*(v61 + 32))(v81, v60, v21);
                  v66 = v6 + v59[35];
                  if (v66[4] == 1)
                  {
                    (*(v61 + 8))(v65, v21);
                  }

                  else
                  {
                    v67 = (v6 + v59[36]);
                    if (*(v67 + 4) != 1)
                    {
                      LODWORD(v82) = *v66;
                      v72 = *v67;
                      v73 = v81;
                      sub_100028EF8();
                      sub_100031694(v93, v94);
                      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                      if (v5)
                      {
                        (*(v83 + 8))(v73, v99);
                        goto LABEL_365;
                      }

                      sub_100031694(v93, v94);
                      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                      sub_100031694(v93, v94);
                      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                      v63 = v56 | 0x20;
                      (*(v83 + 8))(v81, v99);
                      v3 = v79;
                      a1 = v84;
                      v62 = v77;
                      goto LABEL_369;
                    }

                    (*(v83 + 8))(v81, v21);
                  }

                  a1 = v84;
                  v62 = v77;
                  v64 = v78;
                  v63 = v56;
                  goto LABEL_375;
                }

                if (*(v6 + 86))
                {
                  if (v6[44])
                  {
                    v56 = 218;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 90;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 90;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 90;
                    goto LABEL_356;
                  }

                  v56 = 90;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((v6[44] & 1) == 0)
                {
                  if (v6[45])
                  {
                    v56 = 88;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 88;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 88;
                    goto LABEL_356;
                  }

                  v56 = 88;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v56 = 216;
              }

              else if (*(v6 + 89))
              {
                if (*(v6 + 86))
                {
                  if (v6[44])
                  {
                    v56 = 466;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 338;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 338;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 338;
                    goto LABEL_356;
                  }

                  v56 = 338;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((v6[44] & 1) == 0)
                {
                  if (v6[45])
                  {
                    v56 = 336;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 336;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 336;
                    goto LABEL_356;
                  }

                  v56 = 336;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v56 = 464;
              }

              else
              {
                if (*(v6 + 86))
                {
                  if (v6[44])
                  {
                    v56 = 210;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 82;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 82;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 82;
                    goto LABEL_356;
                  }

                  v56 = 82;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((v6[44] & 1) == 0)
                {
                  if (v6[45])
                  {
                    v56 = 80;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 80;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 80;
                    goto LABEL_356;
                  }

                  v56 = 80;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v56 = 208;
              }
            }

            else if (*(v6 + 87))
            {
              if (*(v6 + 89))
              {
                if (*(v6 + 86))
                {
                  if (v6[44])
                  {
                    v56 = 410;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 282;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 282;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 282;
                    goto LABEL_356;
                  }

                  v56 = 282;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((v6[44] & 1) == 0)
                {
                  if (v6[45])
                  {
                    v56 = 280;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 280;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 280;
                    goto LABEL_356;
                  }

                  v56 = 280;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v56 = 408;
              }

              else
              {
                if (*(v6 + 86))
                {
                  if (v6[44])
                  {
                    v56 = 154;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 26;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 26;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 26;
                    goto LABEL_356;
                  }

                  v56 = 26;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((v6[44] & 1) == 0)
                {
                  if (v6[45])
                  {
                    v56 = 24;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 24;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 24;
                    goto LABEL_356;
                  }

                  v56 = 24;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v56 = 152;
              }
            }

            else if (*(v6 + 89))
            {
              if (*(v6 + 86))
              {
                if (v6[44])
                {
                  v56 = 402;
                  goto LABEL_351;
                }

                if (v6[45])
                {
                  v56 = 274;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v56 = 274;
                  goto LABEL_354;
                }

                if (v6[46])
                {
                  v56 = 274;
                  goto LABEL_356;
                }

                v56 = 274;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              if ((v6[44] & 1) == 0)
              {
                if (v6[45])
                {
                  v56 = 272;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v56 = 272;
                  goto LABEL_354;
                }

                if (v6[46])
                {
                  v56 = 272;
                  goto LABEL_356;
                }

                v56 = 272;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              v56 = 400;
            }

            else
            {
              if (*(v6 + 86))
              {
                if (v6[44])
                {
                  v56 = 146;
                  goto LABEL_351;
                }

                if (v6[45])
                {
                  v56 = 18;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v56 = 18;
                  goto LABEL_354;
                }

                if (v6[46])
                {
                  v56 = 18;
                  goto LABEL_356;
                }

                v56 = 18;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              if ((v6[44] & 1) == 0)
              {
                if (v6[45])
                {
                  v56 = 16;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v56 = 16;
                  goto LABEL_354;
                }

                if (v6[46])
                {
                  v56 = 16;
                  goto LABEL_356;
                }

                v56 = 16;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              v56 = 144;
            }
          }

          else
          {
            v21 = v99;
            if (*(v6 + 85))
            {
              if (*(v6 + 87))
              {
                if (*(v6 + 89))
                {
                  if (*(v6 + 86))
                  {
                    if (v6[44])
                    {
                      v56 = 458;
                      goto LABEL_351;
                    }

                    if (v6[45])
                    {
                      v56 = 330;
                      goto LABEL_352;
                    }

                    if (*(v6 + 91))
                    {
                      v56 = 330;
                      goto LABEL_354;
                    }

                    if (v6[46])
                    {
                      v56 = 330;
                      goto LABEL_356;
                    }

                    v56 = 330;
                    if (*(v6 + 93))
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_359;
                  }

                  if ((v6[44] & 1) == 0)
                  {
                    if (v6[45])
                    {
                      v56 = 328;
                      goto LABEL_352;
                    }

                    if (*(v6 + 91))
                    {
                      v56 = 328;
                      goto LABEL_354;
                    }

                    if (v6[46])
                    {
                      v56 = 328;
                      goto LABEL_356;
                    }

                    v56 = 328;
                    if (*(v6 + 93))
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_359;
                  }

                  v56 = 456;
                }

                else
                {
                  if (*(v6 + 86))
                  {
                    if (v6[44])
                    {
                      v56 = 202;
                      goto LABEL_351;
                    }

                    if (v6[45])
                    {
                      v56 = 74;
                      goto LABEL_352;
                    }

                    if (*(v6 + 91))
                    {
                      v56 = 74;
                      goto LABEL_354;
                    }

                    if (v6[46])
                    {
                      v56 = 74;
                      goto LABEL_356;
                    }

                    v56 = 74;
                    if (*(v6 + 93))
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_359;
                  }

                  if ((v6[44] & 1) == 0)
                  {
                    if (v6[45])
                    {
                      v56 = 72;
                      goto LABEL_352;
                    }

                    if (*(v6 + 91))
                    {
                      v56 = 72;
                      goto LABEL_354;
                    }

                    if (v6[46])
                    {
                      v56 = 72;
                      goto LABEL_356;
                    }

                    v56 = 72;
                    if (*(v6 + 93))
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_359;
                  }

                  v56 = 200;
                }
              }

              else if (*(v6 + 89))
              {
                if (*(v6 + 86))
                {
                  if (v6[44])
                  {
                    v56 = 450;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 322;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 322;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 322;
                    goto LABEL_356;
                  }

                  v56 = 322;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((v6[44] & 1) == 0)
                {
                  if (v6[45])
                  {
                    v56 = 320;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 320;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 320;
                    goto LABEL_356;
                  }

                  v56 = 320;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v56 = 448;
              }

              else
              {
                if (*(v6 + 86))
                {
                  if (v6[44])
                  {
                    v56 = 194;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 66;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 66;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 66;
                    goto LABEL_356;
                  }

                  v56 = 66;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((v6[44] & 1) == 0)
                {
                  if (v6[45])
                  {
                    v56 = 64;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 64;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 64;
                    goto LABEL_356;
                  }

                  v56 = 64;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v56 = 192;
              }
            }

            else if (*(v6 + 87))
            {
              if (*(v6 + 89))
              {
                if (v6[43])
                {
                  if (v6[44])
                  {
                    v56 = 394;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 266;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 266;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 266;
                    goto LABEL_356;
                  }

                  v56 = 266;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((v6[44] & 1) == 0)
                {
                  if (v6[45])
                  {
                    v56 = 264;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 264;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 264;
                    goto LABEL_356;
                  }

                  v56 = 264;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v56 = 392;
              }

              else
              {
                if (v6[43])
                {
                  if (v6[44])
                  {
                    v56 = 138;
                    goto LABEL_351;
                  }

                  if (v6[45])
                  {
                    v56 = 10;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 10;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 10;
                    goto LABEL_356;
                  }

                  v56 = 10;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((v6[44] & 1) == 0)
                {
                  if (v6[45])
                  {
                    v56 = 8;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v56 = 8;
                    goto LABEL_354;
                  }

                  if (v6[46])
                  {
                    v56 = 8;
                    goto LABEL_356;
                  }

                  v56 = 8;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v56 = 136;
              }
            }

            else if (*(v6 + 89))
            {
              if (*(v6 + 86))
              {
                if (v6[44])
                {
                  v56 = 386;
                  goto LABEL_351;
                }

                if (v6[45])
                {
                  v56 = 258;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v56 = 258;
                  goto LABEL_354;
                }

                if (v6[46])
                {
                  v56 = 258;
                  goto LABEL_356;
                }

                v56 = 258;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              if ((v6[44] & 1) == 0)
              {
                if (v6[45])
                {
                  v56 = 256;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v56 = 256;
                  goto LABEL_354;
                }

                if (v6[46])
                {
                  v56 = 256;
                  goto LABEL_356;
                }

                v56 = 256;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              v56 = 384;
            }

            else
            {
              if (*(v6 + 86))
              {
                if (v6[44])
                {
                  v56 = 130;
                  goto LABEL_351;
                }

                if (v6[45])
                {
                  v56 = 2;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v56 = 2;
                  goto LABEL_354;
                }

                if (v6[46])
                {
                  v56 = 2;
                  goto LABEL_356;
                }

                v56 = 2;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              if ((v6[44] & 1) == 0)
              {
                if (v6[45])
                {
                  v56 = 0;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v56 = 0;
                  goto LABEL_354;
                }

                if (v6[46])
                {
                  v56 = 0;
                  goto LABEL_356;
                }

                v56 = 0;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              v56 = 128;
            }
          }

LABEL_351:
          if ((v6[45] & 1) == 0)
          {
            goto LABEL_353;
          }

          goto LABEL_352;
        }

LABEL_392:

        return sub_100002A00(v96);
      }
    }

    else
    {
      v34 = v6[30];
      v35 = *(v6 + 14) | (v34 << 32);
      LOBYTE(v93[0]) = *(v6 + 14);
      v36.i64[0] = 0xFFFFFFFFFFFFLL;
      v36.i64[1] = 0xFFFFFFFFFFFFLL;
      v37 = vandq_s8(vdupq_n_s64(v35), v36);
      v38 = vshlq_u64(v37, xmmword_1004817A0);
      *v37.i8 = vmovn_s64(vshlq_u64(v37, xmmword_100481790));
      *v38.i8 = vmovn_s64(v38);
      v38.i16[1] = v38.i16[2];
      v38.i16[2] = v37.i16[0];
      v38.i16[3] = v37.i16[2];
      *(v93 + 1) = vmovn_s16(v38).u32[0];
      BYTE5(v93[0]) = BYTE1(v34);
      sub_100031694(v96, v97);
      sub_10008A490();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      if (v2)
      {
        goto LABEL_392;
      }

      v31 = v23;
      v19 |= 4u;
      v3 = v79;
      v32 = *(v6 + 6);
      if (!v32)
      {
        goto LABEL_121;
      }
    }

    v39 = *(v6 + 5);
    sub_100031694(v96, v97);
    v40._countAndFlagsBits = v39;
    v40._object = v32;
    UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v40);
    v5 = v41;
    if (v41)
    {
      goto LABEL_392;
    }

    v19 |= 8u;
    v3 = v79;
    goto LABEL_121;
  }

  v78 = v23;
  v44 = v6[7];
  v45 = *(v6 + 5) | (v44 << 32);
  LOBYTE(v93[0]) = *(v6 + 5);
  v46.i64[0] = 0xFFFFFFFFFFFFLL;
  v46.i64[1] = 0xFFFFFFFFFFFFLL;
  v47 = vandq_s8(vdupq_n_s64(v45), v46);
  v48 = vshlq_u64(v47, xmmword_1004817A0);
  *v47.i8 = vmovn_s64(vshlq_u64(v47, xmmword_100481790));
  *v48.i8 = vmovn_s64(v48);
  v48.i16[1] = v48.i16[2];
  v48.i16[2] = v47.i16[0];
  v48.i16[3] = v47.i16[2];
  *(v93 + 1) = vmovn_s16(v48).u32[0];
  BYTE5(v93[0]) = BYTE1(v44);
  sub_100031694(v96, v97);
  sub_10008A490();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v2)
  {
    goto LABEL_392;
  }

  if ((v25 & 0xFFFF0000) == 0)
  {
    sub_100031694(v96, v97);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v19 |= 1u;
    a1 = v79;
    v23 = v78;
    if (v6[16])
    {
      goto LABEL_112;
    }

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t AWDLActionFrame.Arpa.hostname.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static AWDLActionFrame.Arpa.__derived_struct_equals(_:_:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t AWDLActionFrame.Arpa.hash(into:)(int a1, Swift::UInt8 a2)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int AWDLActionFrame.Arpa.hashValue.getter(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001505B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AWDLActionFrame.Arpa.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t AWDLActionFrame.Arpa.encode(to:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v14, v15);
  sub_100160864();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    sub_100031694(v14, v15);
    v8._countAndFlagsBits = a3;
    v8._object = a4;
    UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v8);
    if (!v9)
    {
      v12 = sub_10002D874(&off_100552F58);
      v13 = v10;
      sub_100031694(v14, v15);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v12, v13);
    }
  }

  return sub_100002A00(v14);
}

Swift::Int sub_100150770()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001507D4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);

  return String.hash(into:)();
}

Swift::Int sub_100150828()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100150888(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1001508E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100150968(uint64_t a1)
{
  v2 = sub_10004B190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001509A4(uint64_t a1)
{
  v2 = sub_10004B190();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.SyncTreePath.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058E388, &qword_100489490);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10004B190();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10005DC58(&qword_10058E398, &qword_100489498);
  sub_10004B1E4(&qword_10058E3A0, sub_10008A490);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void AWDLActionFrame.SyncTreePath.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 37);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      v4 += 6;
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      --v3;
    }

    while (v3);
  }
}

Swift::Int AWDLActionFrame.SyncTreePath.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = (a1 + 37);
    do
    {
      v4 = *(v3 - 5);
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = *v3;
      v3 += 6;
      Hasher._combine(_:)(v4);
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

void *sub_100150CF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10004AFDC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100150D64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t static AWDLActionFrame.AWDLVersion.< infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 >> 4;
  v3 = a2 >> 4;
  v4 = (a1 & 0xFu) < (a2 & 0xFu);
  if (v2 != v3)
  {
    v4 = 0;
  }

  return v2 < v3 || v4;
}

uint64_t sub_100150EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100150F2C(uint64_t a1)
{
  v2 = sub_100032CD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150F68(uint64_t a1)
{
  v2 = sub_100032CD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.AWDLVersion.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_10058E3A8, &qword_1004894A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100032CD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t AWDLActionFrame.AWDLVersion.init(from:)(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058E3B8, &qword_1004894A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_100032CD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002A00(a1);
  return v9;
}

uint64_t sub_10015122C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 4;
  v5 = (v2 & 0xF) < (v3 & 0xF);
  if (v4 != v3 >> 4)
  {
    v5 = 0;
  }

  return v4 < v3 >> 4 || v5;
}

uint64_t sub_100151260(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 4;
  if (v3 >> 4 < v2 >> 4)
  {
    return 0;
  }

  v6 = (v3 & 0xF) >= (v2 & 0xF);
  return v3 >> 4 != v4 || v6;
}

uint64_t sub_1001512A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 4;
  if (v2 >> 4 < v3 >> 4)
  {
    return 0;
  }

  v6 = (v2 & 0xF) >= (v3 & 0xF);
  return v4 != v3 >> 4 || v6;
}

uint64_t sub_1001512E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 4;
  v5 = (v3 & 0xF) < (v2 & 0xF);
  if (v3 >> 4 != v4)
  {
    v5 = 0;
  }

  return v3 >> 4 < v4 || v5;
}

uint64_t sub_100151314(void *a1)
{
  v3 = sub_10005DC58(&qword_10058E3A8, &qword_1004894A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  sub_100029B34(a1, a1[3]);
  sub_100032CD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1001514A4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15AWDLActionFrameV7VersionV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1001514F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x1008040201uLL >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100151588()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x1008040201uLL >> (8 * v1));
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.Version.platformType.getter(__int16 a1)
{
  if (HIBYTE(a1) <= 3u)
  {
    if (HIBYTE(a1) == 1)
    {
      return 0;
    }

    if (HIBYTE(a1) == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(HIBYTE(a1))
    {
      case 4u:
        return 2;
      case 8u:
        return 3;
      case 0x10u:
        return 4;
    }
  }

  return 5;
}

uint64_t sub_1001516C4()
{
  if (*v0)
  {
    result = 0x726F6674616C705FLL;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_10015170C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6674616C705FLL && a2 == 0xED0000657079546DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001517F0(uint64_t a1)
{
  v2 = sub_10003D0E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015182C(uint64_t a1)
{
  v2 = sub_10003D0E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.Version.encode(to:)(void *a1, char a2)
{
  v5 = sub_10005DC58(&qword_10058E3C0, &qword_1004894B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003D0E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = a2;
  v12[14] = 0;
  sub_1001608B8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void AWDLThreadCoexistenceEvent.hash(into:)(int a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int AWDLThreadCoexistenceEvent.hashValue.getter(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100151AB8@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_10003CF28(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100151B00()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100151B60()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100151BA0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100151BFC()
{
  v1 = 0x746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x6D6F6F6C62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_100151C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100151C7C(uint64_t a1)
{
  v2 = sub_10016090C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151CB8(uint64_t a1)
{
  v2 = sub_10016090C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.PeerMACAddressListBloomFilter.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005DC58(&qword_10058E3D8, &qword_1004894B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10016090C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[1] = a3;
    v14 = 2;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_100165E30(&qword_10058E320);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

void AWDLActionFrame.PeerMACAddressListBloomFilter.hash(into:)(int a1, __int16 a2, uint64_t a3)
{
  v4 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  v5 = *(a3 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a3 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }
}

Swift::Int AWDLActionFrame.PeerMACAddressListBloomFilter.hashValue.getter(__int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  v5 = *(a2 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_100152024@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015F770(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_100152094()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  AWDLActionFrame.PeerMACAddressListBloomFilter.hash(into:)(&v4, v2, v1);
  return Hasher._finalize()();
}

uint64_t NANElectionParameters.clusterID.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 4) = BYTE2(result);
  *(v1 + 5) = BYTE3(result);
  *(v1 + 6) = BYTE4(result);
  *(v1 + 7) = BYTE5(result);
  return result;
}

uint64_t AWDLActionFrame.NANSynchronization.clusterID.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 10) = BYTE2(result);
  *(v1 + 11) = BYTE3(result);
  *(v1 + 12) = BYTE4(result);
  *(v1 + 13) = BYTE5(result);
  return result;
}

unint64_t AWDLActionFrame.NANSynchronization.anchorMasterCluster.getter()
{
  result = __rev16(*(v0 + 32)) | (*(v0 + 26) << 16) | (*(v0 + 27) << 24) | (*(v0 + 28) << 32) | (*(v0 + 29) << 40) | (*(v0 + 30) << 48) | (*(v0 + 31) << 56);
  v2 = *(v0 + 34) | (*(v0 + 36) << 32);
  return result;
}

unint64_t sub_1001521F4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000016;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000022;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000018;
    if (a1 == 5)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746E756F43706F68;
    v2 = 0x4972657473756C63;
    v3 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6F4E656372756F73;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100152350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100152384(uint64_t a1)
{
  v2 = sub_10003D548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001523C0(uint64_t a1)
{
  v2 = sub_10003D548();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.NANSynchronization.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_10058E3E8, &qword_1004894C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003D548();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LODWORD(v17) = *(v3 + 1);
    WORD2(v17) = v3[3];
    v18 = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LODWORD(v17) = *(v3 + 2);
    WORD2(v17) = v3[6];
    v18 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + 2);
    v18 = 3;
    sub_100160960();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOWORD(v17) = v3[12];
    v18 = 4;
    sub_1001609B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LODWORD(v17) = *(v3 + 13);
    WORD2(v17) = v3[15];
    v18 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 32);
    LOBYTE(v17) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 33);
    LOBYTE(v17) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[17];
    LOBYTE(v17) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 9);
    LOBYTE(v17) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void AWDLActionFrame.NANSynchronization.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  v9 = *(v0 + 12);
  v10 = *(v0 + 13);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(*(v0 + 16));
  v11 = *(v0 + 25);
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(v11);
  v12 = *(v0 + 27);
  v13 = *(v0 + 28);
  v14 = *(v0 + 29);
  v15 = *(v0 + 30);
  v16 = *(v0 + 31);
  Hasher._combine(_:)(*(v0 + 26));
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 33));
  Hasher._combine(_:)(*(v0 + 34));
  Hasher._combine(_:)(*(v0 + 36));
}

Swift::Int AWDLActionFrame.NANSynchronization.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  v9 = *(v0 + 12);
  v10 = *(v0 + 13);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(*(v0 + 16));
  v11 = *(v0 + 25);
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(v11);
  v12 = *(v0 + 27);
  v13 = *(v0 + 28);
  v14 = *(v0 + 29);
  v15 = *(v0 + 30);
  v16 = *(v0 + 31);
  Hasher._combine(_:)(*(v0 + 26));
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 33));
  Hasher._combine(_:)(*(v0 + 34));
  Hasher._combine(_:)(*(v0 + 36));
  return Hasher._finalize()();
}

double AWDLActionFrame.NANSynchronization.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003D138(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_100152AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P15AWDLActionFrameV18NANSynchronizationV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t AWDLActionFrame.ElectionParameter.selfMetric.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.ElectionParameter.init(rootNode:parentNode:rootLoopFreeCounter:hopCount:rootMetric:selfMetric:electionID:electionFlags:selfLoopFreeCounter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int a10)
{
  *a9 = result;
  *(a9 + 2) = BYTE2(result);
  *(a9 + 3) = BYTE3(result);
  *(a9 + 4) = BYTE4(result);
  *(a9 + 5) = BYTE5(result);
  *(a9 + 6) = a2;
  *(a9 + 8) = BYTE2(a2);
  *(a9 + 9) = BYTE3(a2);
  *(a9 + 10) = BYTE4(a2);
  *(a9 + 11) = BYTE5(a2);
  *(a9 + 12) = a3;
  *(a9 + 16) = a4;
  *(a9 + 20) = a5;
  *(a9 + 24) = BYTE4(a5) & 1;
  *(a9 + 28) = a6;
  *(a9 + 32) = BYTE4(a6) & 1;
  *(a9 + 36) = a7;
  *(a9 + 40) = a8;
  *(a9 + 44) = a10;
  return result;
}

unint64_t sub_100152CA8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65646F4E746F6F72;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x746E756F43706F68;
    }

    if (a1)
    {
      v5 = 0x6F4E746E65726170;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6F697463656C65;
    v2 = 0x6E6F697463656C65;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7274654D746F6F72;
    if (a1 != 4)
    {
      v3 = 0x7274654D666C6573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100152DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016557C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100152E28(uint64_t a1)
{
  v2 = sub_10003A618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100152E64(uint64_t a1)
{
  v2 = sub_10003A618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.ElectionParameter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_10058E408, &qword_1004894C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003A618();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v19 = *(v3 + 2);
  HIBYTE(v17) = 0;
  sub_10008A490();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v18 = *(v3 + 6);
    v19 = *(v3 + 5);
    HIBYTE(v17) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[3];
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[4];
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[5];
    LOBYTE(v19) = *(v3 + 24);
    HIBYTE(v17) = 4;
    sub_100160538();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v3[7];
    LOBYTE(v19) = *(v3 + 32);
    HIBYTE(v17) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[9];
    LOBYTE(v18) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[10];
    LOBYTE(v18) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[11];
    LOBYTE(v18) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void AWDLActionFrame.ElectionParameter.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 9);
  v9 = *(v0 + 10);
  v10 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 16));
  v11 = *(v0 + 20);
  if (*(v0 + 24))
  {
    v11 = dword_10048DB84[v11];
  }

  Hasher._combine(_:)(v11);
  v12 = *(v0 + 28);
  if (*(v0 + 32))
  {
    v12 = dword_10048DB84[v12];
  }

  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(*(v0 + 36));
  Hasher._combine(_:)(*(v0 + 40));
  Hasher._combine(_:)(*(v0 + 44));
}

Swift::Int AWDLActionFrame.ElectionParameter.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLActionFrame.ElectionParameter.hash(into:)();
  return Hasher._finalize()();
}

double AWDLActionFrame.ElectionParameter.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10003A254(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int sub_100153380(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

BOOL sub_1001533C4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7CoreP2P15AWDLActionFrameV17ElectionParameterV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

uint64_t sub_100153410@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15AWDLActionFrameV20MultiPeerBSSSteeringV17SteeringMessageIDO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100153508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100153598(uint64_t a1)
{
  v2 = sub_100160A08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001535D4(uint64_t a1)
{
  v2 = sub_100160A08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.MultiPeerBSSSteering.encode(to:)(void *a1, char a2)
{
  v4 = sub_10005DC58(&qword_10058E418, &qword_1004894D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100160A08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = a2;
  sub_100160A5C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void *sub_100153770@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015F990(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001537B8()
{
  if (*v0)
  {
    result = 0x44496E656B6F74;
  }

  else
  {
    result = 0x7367616C66;
  }

  *v0;
  return result;
}

uint64_t sub_1001537F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496E656B6F74 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001538C8(uint64_t a1)
{
  v2 = sub_100160AB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100153904(uint64_t a1)
{
  v2 = sub_100160AB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.Ranging.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_10005DC58(&qword_10058E430, &qword_1004894D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100160AB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12[9] = BYTE1(a2);
    v12[10] = BYTE2(a2);
    v12[11] = BYTE3(a2);
    v12[12] = BYTE4(a2);
    v12[13] = BYTE5(a2);
    v12[14] = BYTE6(a2);
    v12[8] = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100153B00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015FB00(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 6) = BYTE6(result);
  }

  return result;
}

uint64_t AWDLActionFrame.RealtimeGroup.infrastructureChannel.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = WORD2(result);
  return result;
}

uint64_t AWDLActionFrame.RealtimeGroup.customRealtimeGroupInfraChannel.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = WORD2(result);
  return result;
}

void *AWDLActionFrame.RealtimeGroup.activeServiceIdentifiers.getter()
{
  v6 = &_swiftEmptySetSingleton;
  v1 = *v0;
  if ((*v0 & 4) != 0)
  {
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceSidecar);
  }

  if ((v1 & 2) != 0)
  {
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceUniversalControl);
  }

  if ((v1 & 9) != 0)
  {
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceAirPlay);
  }

  if ((v1 & 0x10) != 0)
  {
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceMPRemoteCamera);

    v2 = v0[24];
    if ((v2 & 4) == 0)
    {
LABEL_9:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v2 = v0[24];
    if ((v2 & 4) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_100159C80(&v5, AWDLTrafficRegistrationServiceEdgeKit);

  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  sub_100159C80(&v5, AWDLTrafficRegistrationServiceRemoteCamera);

  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  sub_100159C80(&v5, AWDLTrafficRegistrationServiceTVRemoteCamera);

  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    v3 = v0[34];
    if ((v3 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceSpatialStreaming);

    if ((v3 & 4) == 0)
    {
      return v6;
    }

    goto LABEL_14;
  }

LABEL_20:
  sub_100159C80(&v5, AWDLTrafficRegistrationServiceRemoteScreen);

  v3 = v0[34];
  if (v3)
  {
    goto LABEL_21;
  }

LABEL_13:
  if ((v3 & 4) != 0)
  {
LABEL_14:
    sub_100159C80(&v5, AWDLTrafficRegistrationServiceMacVirtualDisplay);
  }

  return v6;
}

void AWDLActionFrame.RealtimeGroup.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 8) | (*(v0 + 12) << 32);
  if ((v6 & 0xFF00000000) == 0x300000000)
  {
    v7 = 0;
LABEL_3:
    Hasher._combine(_:)(v7);
    goto LABEL_4;
  }

  v10 = v6 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(0x801004u >> ((v6 >> 29) & 0xF8));
  if ((v6 >> 40) <= 3)
  {
    if (v10 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_30;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v10)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_30:
        Hasher._combine(_:)(2uLL);
        v7 = BYTE5(v6) & 1;
        goto LABEL_3;
    }
  }

LABEL_4:
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  v8 = *(v0 + 28) | (*(v0 + 32) << 32);
  if ((v8 & 0xFF00000000) == 0x300000000)
  {
    v9 = 0;
  }

  else
  {
    v11 = v8 >> 40;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v8);
    Hasher._combine(_:)(0x801004u >> ((v8 >> 29) & 0xF8));
    if ((v8 >> 40) <= 3)
    {
      if (v11 == 2)
      {
        Hasher._combine(_:)(0);
        goto LABEL_7;
      }

      if (v11 == 3)
      {
        Hasher._combine(_:)(1uLL);
        goto LABEL_7;
      }
    }

    else
    {
      switch(v11)
      {
        case 4:
          Hasher._combine(_:)(3uLL);
          goto LABEL_7;
        case 5:
          Hasher._combine(_:)(4uLL);
          goto LABEL_7;
        case 6:
          Hasher._combine(_:)(5uLL);
          goto LABEL_7;
      }
    }

    Hasher._combine(_:)(2uLL);
    v9 = BYTE5(v8) & 1;
  }

  Hasher._combine(_:)(v9);
LABEL_7:
  Hasher._combine(_:)(*(v0 + 34));
  Hasher._combine(_:)(*(v0 + 35));
  Hasher._combine(_:)(*(v0 + 36));
  Hasher._combine(_:)(*(v0 + 37));
  Hasher._combine(_:)(*(v0 + 38));
  Hasher._combine(_:)(*(v0 + 39));
}