_WORD *sub_10003B228@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

unint64_t sub_10003B238(unsigned int a1)
{
  if (qword_10058AA78 != -1)
  {
    swift_once();
  }

  if (sub_10002FFDC(a1, off_100591860))
  {
    v2 = 0;
    v3 = 3;
LABEL_13:
    v5 = v2;
    v6 = v3;
    sub_1000276D8();
    return a1 | (v5 << 32) | (v6 << 40);
  }

  if (qword_10058AA80 != -1)
  {
    swift_once();
  }

  if (sub_10002FFDC(a1, off_100591868))
  {
    v2 = 1;
    v3 = 4;
    goto LABEL_13;
  }

  if (qword_10058AA88 != -1)
  {
    swift_once();
  }

  if (sub_10002FFDC(a1, off_100591870))
  {
    v2 = 2;
    v3 = 5;
    goto LABEL_13;
  }

  return 0x300000000;
}

uint64_t _s7CoreP2P15AWDLActionFrameV13DataPathStateV30UnicastMasterIndicationOptionsO8rawValueAGSgs6UInt32V_tcfC_0(int a1)
{
  if (a1 < 0x800000)
  {
    if (a1 <= 2047)
    {
      if (a1 <= 31)
      {
        if (a1 <= 3)
        {
          if (a1 == 0x80000000)
          {
            return 34;
          }

          if (a1 == 2)
          {
            return 0;
          }
        }

        else
        {
          switch(a1)
          {
            case 4:
              return 6;
            case 8:
              return 7;
            case 16:
              return 8;
          }
        }
      }

      else if (a1 > 255)
      {
        switch(a1)
        {
          case 256:
            return 12;
          case 512:
            return 24;
          case 1024:
            return 28;
        }
      }

      else
      {
        switch(a1)
        {
          case 32:
            return 9;
          case 64:
            return 10;
          case 128:
            return 11;
        }
      }
    }

    else if (a1 >= 0x20000)
    {
      if (a1 >= 0x100000)
      {
        switch(a1)
        {
          case 0x100000:
            return 14;
          case 0x200000:
            return 19;
          case 0x400000:
            return 20;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x20000:
            return 17;
          case 0x40000:
            return 18;
          case 0x80000:
            return 1;
        }
      }
    }

    else if (a1 >= 0x4000)
    {
      switch(a1)
      {
        case 0x4000:
          return 15;
        case 0x8000:
          return 16;
        case 0x10000:
          return 5;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x800:
          return 29;
        case 0x1000:
          return 25;
        case 0x2000:
          return 13;
      }
    }
  }

  else if (a1 > 201326591)
  {
    if (a1 > 318767103)
    {
      if (a1 > 369098751)
      {
        switch(a1)
        {
          case 0x16000000:
            return 46;
          case 0x20000000:
            return 27;
          case 0x40000000:
            return 33;
        }
      }

      else
      {
        switch(a1)
        {
          case 318767104:
            return 43;
          case 335544320:
            return 44;
          case 352321536:
            return 45;
        }
      }
    }

    else if (a1 > 0xFFFFFFF)
    {
      switch(a1)
      {
        case 268435456:
          return 26;
        case 285212672:
          return 41;
        case 301989888:
          return 42;
      }
    }

    else
    {
      switch(a1)
      {
        case 201326592:
          return 38;
        case 218103808:
          return 39;
        case 234881024:
          return 40;
      }
    }
  }

  else if (a1 > 83886079)
  {
    if (a1 > 150994943)
    {
      switch(a1)
      {
        case 150994944:
          return 35;
        case 167772160:
          return 36;
        case 184549376:
          return 37;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x5000000:
          return 31;
        case 0x6000000:
          return 32;
        case 0x8000000:
          return 3;
      }
    }
  }

  else if (a1 > 50331647)
  {
    switch(a1)
    {
      case 50331648:
        return 30;
      case 67108864:
        return 2;
      case 67108866:
        return 4;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x800000:
        return 21;
      case 0x1000000:
        return 22;
      case 0x2000000:
        return 23;
    }
  }

  return 47;
}

unint64_t sub_10003B764()
{
  result = qword_10058E368;
  if (!qword_10058E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E368);
  }

  return result;
}

unint64_t sub_10003B818()
{
  result = qword_10058EA98;
  if (!qword_10058EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA98);
  }

  return result;
}

uint64_t sub_10003B86C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003B8D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003B934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003B994(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100591FF8, &qword_10049EDA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003BBB8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v13) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v13) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v13) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 3;
  sub_100039F68();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 16) | (v11 << 32);
}

unint64_t sub_10003BBB8()
{
  result = qword_100591C90;
  if (!qword_100591C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C90);
  }

  return result;
}

uint64_t sub_10003BC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_10002B154(a1, &v66);
  sub_10005DC58(&qword_10058D3D8, &unk_10049EDB0);
  v8 = type metadata accessor for BinaryDecoder();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v9 = v71[4];
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_53;
  }

  v11 = v71[2];
  v12 = v71[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      if (*(v11 + 24) >= v10)
      {
        goto LABEL_9;
      }
    }

    else if (v10 < 1)
    {
      goto LABEL_9;
    }

LABEL_21:
    sub_10000B02C();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 2;
    swift_willThrow();

LABEL_40:
    sub_100002A00(v72);
    return sub_100002A00(a1);
  }

  if (v13)
  {
    v14 = v11 >> 32;
  }

  else
  {
    v14 = BYTE6(v12);
  }

  if (v14 < v10)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (v10 < v9)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v15 = Data._Representation.subscript.getter();
  v17 = v16;

  v18 = sub_10003C7E8(v15, v17);
  sub_1000124C8(v15, v17);
  if ((v18 & 0x100) != 0)
  {
    goto LABEL_38;
  }

  v19 = sub_10003CB60(v18);
  if (v19 <= 4)
  {
    if (v19 <= 1)
    {
      if (v19)
      {
        sub_10022B784(v72, 1, &v66);
        v26 = 0;
        v75 = 0;
        v64 = 0;
        v65 = 0;
        LOBYTE(v17) = BYTE2(v66);
        LOWORD(v23) = WORD4(v66);
        v57 = v67;
        LOWORD(v58) = v68;
        v56 = v69;
        LOBYTE(v59) = v70;
        LOBYTE(v24) = v66;
        LODWORD(v3) = BYTE1(v66);
        v60 = *(&v66 + 1) >> 16;
        LOBYTE(v61) = 0;
        v62 = *(&v66 + 1) & 0xFFFFFFFF00000000;
        LOBYTE(v63) = 0;
      }

      else
      {
        sub_10022BD6C(v72, 0, &v66);
        v75 = 0;
        v64 = 0;
        v65 = 0;
        LOBYTE(v17) = BYTE2(v66);
        LOBYTE(v8) = BYTE4(v66);
        LOBYTE(v24) = v66;
        LODWORD(v3) = BYTE1(v66);
        LOWORD(v23) = WORD4(v66);
        v60 = *(&v66 + 1) >> 16;
        LOBYTE(v61) = 0;
        v62 = *(&v66 + 1) & 0xFFFFFFFF00000000;
        LOBYTE(v63) = BYTE3(v66);
        v26 = 2;
        LOBYTE(v59) = 0;
        v57 = v67;
        LOWORD(v58) = 0;
      }

      goto LABEL_46;
    }

    if (v19 == 2)
    {
      sub_10022C080(v72, 2, &v66);
      v75 = 0;
      LOBYTE(v63) = 0;
      v64 = 0;
      LOBYTE(v24) = v66;
      LOWORD(v23) = WORD4(v66);
      v60 = *(&v66 + 1) >> 16;
      LOBYTE(v61) = 0;
      v56 = v69;
      v57 = v67;
      v62 = *(&v66 + 1) & 0xFFFFFFFF00000000;
      v65 = v68 & 0xFFFFFFFFFFFF0000;
      v26 = 3;
      LOWORD(v58) = v68;
      LOBYTE(v59) = 0;
      goto LABEL_46;
    }

    if (v19 != 3)
    {
      v31 = sub_10003C870(v72, 4uLL);
      v75 = 0;
      LODWORD(v60) = HIWORD(v32);
      v8 = HIDWORD(v31);
      v64 = v31 & 0xFFFF000000000000;
      v65 = 0;
      v3 = v31 >> 8;
      v17 = v31 >> 16;
      v62 = 0;
      v63 = v31 >> 24;
      v26 = 4;
      v59 = v31 >> 24;
      v58 = v31 >> 24;
      v61 = v31 >> 40;
      LOBYTE(v24) = v31;
      LOWORD(v23) = v32;
      goto LABEL_46;
    }

    sub_10022C5B8(v72, 3, &v66);
    v75 = 0;
    LOBYTE(v24) = v66;
    LOWORD(v23) = WORD4(v66);
    v3 = v66 >> 8;
    v17 = v66 >> 16;
    v8 = DWORD1(v66);
    v64 = v66 & 0xFFFF000000000000;
    v65 = 0;
    v60 = *(&v66 + 1) >> 16;
    v61 = v66 >> 40;
    LOWORD(v25) = 0;
    v62 = *(&v66 + 1) & 0xFFFFFFFF00000000;
    v63 = v66 >> 24;
    v26 = 7;
    goto LABEL_29;
  }

  if (v19 > 7)
  {
    if (v19 != 8)
    {
      if (v19 == 9)
      {
        sub_10022C8E0(v72, 9, &v66);
        v75 = 0;
        LOBYTE(v24) = v66;
        LOWORD(v23) = WORD4(v66);
        v3 = v66 >> 8;
        v17 = v66 >> 16;
        v8 = DWORD1(v66);
        v64 = v66 & 0xFFFF000000000000;
        v65 = 0;
        v60 = *(&v66 + 1) >> 16;
        v61 = v66 >> 40;
        LOWORD(v25) = 0;
        v62 = *(&v66 + 1) & 0xFFFFFFFF00000000;
        v63 = v66 >> 24;
        v26 = 10;
LABEL_29:
        LOBYTE(v59) = v25;
        LOWORD(v58) = v25;
        goto LABEL_46;
      }

LABEL_38:
      sub_10000B02C();
      swift_allocError();
      *v21 = xmmword_10047CE70;
      goto LABEL_39;
    }

    sub_100031694(v72, v73);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v72, v73);
    v27 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (!v27)
    {
      goto LABEL_38;
    }

    v4 = v27;
    sub_100031694(v72, v73);
    v28 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v28 != 8)
    {
      if (v28 != 100)
      {
        goto LABEL_38;
      }

      v29 = 1;
LABEL_55:
      v43 = v73;
      sub_100031694(v72, v73);
      v24 = UnkeyedDecodingContainer.decodeData(with:)((v4 - 1), v43);
      v45 = v44;
      v46 = sub_100033AA8(_swiftEmptyArrayStorage);
      v47 = swift_allocObject();
      v47[5] = &_swiftEmptyDictionarySingleton;
      v47[2] = v24;
      v47[3] = v45;
      v48 = v45 >> 62;
      v49 = 0;
      if (v29)
      {
        if ((v45 >> 62) > 1)
        {
          if (v48 == 2)
          {
            v49 = *(v24 + 16);
          }
        }

        else if (v48)
        {
          v49 = v24;
        }

        v47[4] = v49;
        swift_beginAccess();
        v47[5] = v46;
        v68 = v8;
        v69 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        *&v66 = v47;
        sub_10000AB0C(v24, v45);

        sub_10022F280(&v66, v74);
        v50 = v74[0];
        v23 = v74[1];
        v57 = v74[2];
        v58 = v74[3];
        v51 = v74[5];
        v55 = v74[6];
        v56 = v74[4];
        sub_1000124C8(v24, v45);

        v17 = v50 >> 16;
        v62 = v23 & 0xFFFFFFFF00000000;
        v63 = v50 >> 24;
        v64 = v50 & 0xFFFF000000000000;
        v65 = v58 & 0xFFFFFFFFFFFF0000;
        v75 = v51 & 0xFFFFFFFFFFFFFF00;
        v61 = v50 >> 40;
        v26 = 6;
        LOBYTE(v59) = v51;
        v60 = v23 >> 16;
        v8 = HIDWORD(v50);
        LOBYTE(v24) = v50;
        v3 = v50 >> 8;
        goto LABEL_46;
      }

      if ((v45 >> 62) > 1)
      {
        if (v48 == 2)
        {
          v49 = *(v24 + 16);
        }
      }

      else if (v48)
      {
        v49 = v24;
      }

      v47[4] = v49;
      swift_beginAccess();
      v47[5] = v46;
      v68 = v8;
      v69 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v66 = v47;
      sub_10000AB0C(v24, v45);

      v52 = sub_10022ECCC(&v66, &qword_100591FA0, &qword_10049ED80, sub_10023037C);
      v23 = v53;
      sub_1000124C8(v24, v45);

      v75 = 0;
      v24 = v52;
      v3 = v52 >> 8;
      v17 = v52 >> 16;
      v54 = v52 >> 24;
      v64 = v52 & 0xFFFF000000000000;
      v65 = 0;
      v8 = HIDWORD(v52);
      v62 = v23 & 0xFFFFFFFF00000000;
      LOBYTE(v63) = v54;
      v26 = 5;
      v25 = v23 >> 16;
      v60 = v23 >> 16;
      v61 = v24 >> 40;
      goto LABEL_29;
    }

LABEL_54:
    v29 = 0;
    goto LABEL_55;
  }

  if (v19 == 5)
  {
    sub_10022C384(v72, 5);
    v56 = 0;
    v57 = 0;
    v55 = 0;
    LOBYTE(v59) = 0;
    v75 = 0;
    LOWORD(v58) = 0;
    v64 = 0;
    v65 = 0;
    LOWORD(v23) = 0;
    LOWORD(v60) = 0;
    LOBYTE(v61) = 0;
    v62 = 0;
    LOBYTE(v63) = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v17) = 0;
    LOBYTE(v24) = 0;
    LOBYTE(v3) = 0;
    v26 = 11;
  }

  else
  {
    if (v19 == 6)
    {
      sub_100031694(v72, v73);
      dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      sub_100031694(v72, v73);
      v20 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      if (v20 < 3u)
      {
        sub_10000B02C();
        swift_allocError();
        *v21 = 0;
        *(v21 + 8) = 0;
LABEL_39:
        *(v21 + 16) = 2;
        swift_willThrow();
        goto LABEL_40;
      }

      sub_100031694(v72, v73);
      sub_1000317F0();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v35 = v20;
      LODWORD(v24) = v66;
      LODWORD(v3) = BYTE1(v66);
      LODWORD(v17) = BYTE2(v66);
      v75 = v35 - 3;
      v36 = v73;
      sub_100031694(v72, v73);
      v37 = UnkeyedDecodingContainer.decodeData(with:)(v75, v36);
      v57 = v38;
      v23 = v37;
      if ((sub_1000319F0(v24 | (v3 << 8) | (v17 << 16), 0x9A6F50u) & 1) == 0 || (sub_10003C7E8(v23, v57) & 0x1FF) != 0x13)
      {
        v75 = 0;
        v64 = 0;
        v65 = 0;
        v60 = v23 >> 16;
        LOBYTE(v61) = 0;
        v62 = v23 & 0xFFFFFFFF00000000;
        LOBYTE(v63) = 0;
        LOBYTE(v59) = 0;
        LOWORD(v58) = 0;
        v26 = 9;
        goto LABEL_46;
      }

      v39 = sub_100033AA8(_swiftEmptyArrayStorage);
      v40 = swift_allocObject();
      v41 = 0;
      v40[5] = &_swiftEmptyDictionarySingleton;
      v40[2] = v23;
      v40[3] = v57;
      v42 = v57 >> 62;
      if ((v57 >> 62) > 1)
      {
        if (v42 == 2)
        {
          v41 = *(v23 + 16);
        }
      }

      else if (v42)
      {
        v41 = v23;
      }

      v40[4] = v41;
      swift_beginAccess();
      v40[5] = v39;
      v68 = v8;
      v69 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v66 = v40;
      v33 = sub_100288240(&v66);
      v75 = 0;
      LOWORD(v23) = 0;
      v3 = v33 >> 8;
      v17 = v33 >> 16;
      v62 = 0;
      v63 = v33 >> 24;
      v8 = HIDWORD(v33);
      LOWORD(v60) = 0;
      v61 = v33 >> 40;
      v64 = v33 & 0xFFFF000000000000;
      v65 = 0;
      v26 = 8;
      LOBYTE(v59) = 0;
      LOWORD(v58) = 0;
    }

    else
    {
      v33 = sub_10022BA84(v72, 7);
      v75 = 0;
      LOWORD(v23) = 0;
      v3 = v33 >> 8;
      v17 = v33 >> 16;
      v62 = 0;
      v63 = v33 >> 24;
      v8 = HIDWORD(v33);
      LOWORD(v60) = 0;
      v61 = v33 >> 40;
      v64 = v33 & 0xFFFF000000000000;
      v65 = 0;
      v26 = 1;
      LOBYTE(v59) = 0;
      LOWORD(v58) = 0;
    }

    LOBYTE(v24) = v33;
  }

LABEL_46:
  sub_100002A00(v72);
  result = sub_100002A00(a1);
  *a2 = v24 | (v3 << 8) | ((v17 | (v63 << 8)) << 16) | v64 | ((v8 | (v61 << 8)) << 32);
  *(a2 + 8) = v62 | v23 | (v60 << 16);
  *(a2 + 16) = v57;
  *(a2 + 24) = v65 | v58;
  v34 = v75 | v59;
  *(a2 + 32) = v56;
  *(a2 + 40) = v34;
  *(a2 + 48) = v55;
  *(a2 + 56) = v26;
  return result;
}

uint64_t sub_10003C7E8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

unint64_t sub_10003C870(uint64_t a1, unint64_t a2)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  v5 = *(a1 + 32);
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  swift_endAccess();
  if (v2)
  {
    return a2;
  }

  v6 = v18;
  v7 = v19;
  v8 = sub_10003CB60(v17);
  if (v8 <= 4)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        v9 = 48;
      }

      else
      {
        v9 = 45;
      }
    }

    else if (v8 == 2)
    {
      v9 = 61;
    }

    else if (v8 == 3)
    {
      v9 = 140;
    }

    else
    {
      v9 = 191;
    }
  }

  else if (v8 > 7)
  {
    if (v8 == 8)
    {
      v9 = 255;
    }

    else
    {
      if (v8 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v15 = xmmword_10047CE70;
        *(v15 + 16) = 2;
        swift_willThrow();
        sub_1000124C8(v6, v7);
        return a2;
      }

      v9 = 76;
    }
  }

  else if (v8 == 5)
  {
    v9 = 192;
  }

  else if (v8 == 6)
  {
    v9 = 221;
  }

  else
  {
    v9 = 244;
  }

  if (v9 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v18, v19);
  v10 = sub_100033AA8(_swiftEmptyArrayStorage);
  v11 = type metadata accessor for BinaryDecoder();
  v12 = swift_allocObject();
  v13 = 0;
  v12[5] = &_swiftEmptyDictionarySingleton;
  v12[2] = v6;
  v12[3] = v7;
  v14 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v13 = *(v6 + 16);
    }
  }

  else if (v14)
  {
    v13 = v6;
  }

  v12[4] = v13;
  swift_beginAccess();
  v12[5] = v10;
  v20 = v11;
  v21 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v17 = v12;
  a2 = sub_10003CC24(&v17);
  sub_1000124C8(v6, v7);
  return a2;
}

uint64_t sub_10003CB60(unsigned __int8 a1)
{
  if (a1 > 0xBEu)
  {
    if (a1 <= 0xDCu)
    {
      if (a1 == 191)
      {
        return 4;
      }

      if (a1 == 192)
      {
        return 5;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xDDu:
          return 6;
        case 0xF4u:
          return 7;
        case 0xFFu:
          return 8;
      }
    }
  }

  else if (a1 <= 0x3Cu)
  {
    if (a1 == 45)
    {
      return 0;
    }

    if (a1 == 48)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x3Du:
        return 2;
      case 0x4Cu:
        return 9;
      case 0x8Cu:
        return 3;
    }
  }

  return 10;
}

unint64_t sub_10003CC24(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100591FE8, &qword_10049ED98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v12 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003CED4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v18 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 2;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 4;
  v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v13 << 32) | (v10 << 48);
}

uint64_t sub_10003CE48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003CE90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NANAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003CED4()
{
  result = qword_100591CC0;
  if (!qword_100591CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591CC0);
  }

  return result;
}

uint64_t sub_10003CF28(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058ECD8, &qword_10048D640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003D0E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v12[14] = 0;
  sub_100032B20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v12[15];
  v12[13] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 8);
}

unint64_t sub_10003D0E4()
{
  result = qword_10058E3C8;
  if (!qword_10058E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E3C8);
  }

  return result;
}

uint64_t sub_10003D138@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = sub_10005DC58(&qword_10058ECB0, &qword_10048D630);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v27.i8[-v11];
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003D548();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v42) = 0;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v3.i32[0] = v42;
  v40 = BYTE4(v42);
  v14 = BYTE5(v42);
  v43 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v4.i32[0] = v42;
  v38 = BYTE4(v42);
  v39 = v14;
  v15 = BYTE5(v42);
  v43 = 3;
  sub_10003D59C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v15;
  v16 = v42;
  v43 = 4;
  sub_10003D8C0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v16;
  LODWORD(v16) = v42;
  v17 = BYTE1(v42);
  v43 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v17;
  v35 = v16;
  v5.i32[0] = v42;
  v18 = BYTE4(v42);
  v19 = BYTE5(v42);
  LOBYTE(v42) = 6;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v19;
  v33 = v20;
  LOBYTE(v42) = 7;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v18;
  v31 = v21;
  LOBYTE(v42) = 8;
  LOWORD(v19) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v42) = 9;
  LODWORD(v16) = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v9 + 8))(v12, v8);
  v27 = vmovl_u8(v3);
  v28 = vmovl_u8(v4);
  v29 = vmovl_u8(v5);
  result = sub_100002A00(a1);
  v23 = v40;
  *a2 = v41;
  *(a2 + 2) = vuzp1_s8(*v27.i8, *v27.i8).u32[0];
  *(a2 + 6) = v23;
  v24 = v38;
  *(a2 + 7) = v39;
  *(a2 + 8) = vuzp1_s8(*v28.i8, *v28.i8).u32[0];
  *(a2 + 12) = v24;
  *(a2 + 13) = v37;
  *(a2 + 16) = v36;
  v25 = v34;
  *(a2 + 24) = v35;
  *(a2 + 25) = v25;
  *(a2 + 26) = vuzp1_s8(*v29.i8, *v29.i8).u32[0];
  *(a2 + 30) = v30;
  v26 = v33;
  *(a2 + 31) = v32;
  *(a2 + 32) = v26;
  *(a2 + 33) = v31;
  *(a2 + 34) = v19;
  *(a2 + 36) = v16;
  return result;
}

unint64_t sub_10003D548()
{
  result = qword_10058E3F0;
  if (!qword_10058E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E3F0);
  }

  return result;
}

unint64_t sub_10003D59C()
{
  result = qword_10058ECB8;
  if (!qword_10058ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ECB8);
  }

  return result;
}

uint64_t sub_10003D5F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_100590C10, &qword_100494E98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003D750();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100002A00(a1);
  *a2 = v11;
  return result;
}

unint64_t sub_10003D750()
{
  result = qword_100590C08;
  if (!qword_100590C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C08);
  }

  return result;
}

uint64_t sub_10003D7E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = *v5;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  a4();
  result = sub_100032E9C(a5, a1, v9, v10, a5);
  if (!v6)
  {
    return v13;
  }

  return result;
}

unint64_t sub_10003D86C()
{
  result = qword_10058E2C8;
  if (!qword_10058E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E2C8);
  }

  return result;
}

unint64_t sub_10003D8C0()
{
  result = qword_10058ECC0;
  if (!qword_10058ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ECC0);
  }

  return result;
}

uint64_t sub_10003D940@<X0>(uint64_t (*a1)(void)@<X3>, _WORD *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10003D970(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_1005938B0, &qword_1004ABB70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13[-v7];
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003DB18();
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
    return v10 | (v11 << 8);
  }

  return v2;
}

unint64_t sub_10003DB18()
{
  result = qword_100592090;
  if (!qword_100592090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592090);
  }

  return result;
}

uint64_t sub_10003DB6C(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v11, v12);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v11, v12);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v11, v12);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v6 = sub_100039824(v4, v5);
    if ((v6 & 0xFF00000000) != 0x300000000)
    {
      v8 = v6;
      sub_100031694(v11, v12);
      v9 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      sub_10003DD34(v9 << 8, v11);
      sub_100002A00(v11);
      sub_100002A00(a1);
      return v8 & 0xFFFFFFFFFFFFLL;
    }

    sub_10000B02C();
    swift_allocError();
    *v7 = xmmword_10047CE70;
    *(v7 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v11);
  }

  return sub_100002A00(a1);
}

unint64_t sub_10003DD34(__int16 a1, uint64_t a2)
{
  v3 = (HIBYTE(a1) - a1);
  v23 = HIBYTE(a1);
  v24 = a1;
  if (HIBYTE(a1) < a1)
  {
    v4 = -(a1 - HIBYTE(a1));
  }

  else
  {
    v4 = (HIBYTE(a1) - a1);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  result = sub_10003DF80(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = _swiftEmptyArrayStorage;
    LODWORD(v8) = v23 - v24;
    if (v23 >= v24)
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = -v8;
    while (v4)
    {
      v10 = *(a2 + 32);
      sub_100031694(a2, *(a2 + 24));
      v11 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      if (v2)
      {
        goto LABEL_23;
      }

      v12 = v11;
      v25 = v4;
      v26 = v3;
      v13 = *(a2 + 32);
      sub_100031694(a2, *(a2 + 24));
      v14 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v15 = *(a2 + 32);
      sub_100031694(a2, *(a2 + 24));
      v16 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      result = sub_100039824(v12, v14);
      if ((result & 0xFF00000000) == 0x300000000 || BYTE4(result) < 2u)
      {
        sub_10000B02C();
        swift_allocError();
        *v22 = xmmword_10047CE70;
        *(v22 + 16) = 2;
        swift_willThrow();
LABEL_23:

        return v5;
      }

      v27 = v5;
      v19 = v5[2];
      v18 = v5[3];
      if (v19 >= v18 >> 1)
      {
        v21 = result;
        sub_10003DF80((v18 > 1), v19 + 1, 1);
        result = v21;
        v5 = v27;
      }

      v5[2] = v19 + 1;
      v20 = &v5[v19];
      *(v20 + 8) = result;
      *(v20 + 36) = BYTE4(result);
      *(v20 + 37) = BYTE5(result);
      *(v20 + 38) = v16;
      if (v23 < v24)
      {
        goto LABEL_26;
      }

      if (!v9)
      {
        goto LABEL_27;
      }

      ++v9;
      v4 = v25 - 1;
      v3 = v26 - 1;
      if (v26 == 1)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10003DF80(char *a1, int64_t a2, char a3)
{
  result = sub_100027BF8(a1, a2, a3, *v3, &qword_10058CCD0, &qword_100482FE8);
  *v3 = result;
  return result;
}

uint64_t sub_10003DFB0(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return (*a1 & 0x1FF | (BYTE2(*a1) << 9) | (*a1 >> 15) & 0xFFFE0000) + 2;
  }
}

uint64_t sub_10003DFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10003E048(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4)
{
  v480 = a3;
  v481 = a4;
  LODWORD(v479) = a2;
  v478 = a1;
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 440);
  v8 = *(v7 + 1);
  v9 = *(*v4 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v454 = swift_getAssociatedTypeWitness();
  v453 = *(v454 - 1);
  v12 = *(v453 + 64);
  __chkstk_darwin();
  v452 = &v420 - v13;
  v471 = type metadata accessor for UUID();
  v470 = *(v471 - 8);
  v14 = *(v470 + 64);
  __chkstk_darwin();
  v463 = &v420 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchTimeInterval();
  v468 = *(v16 - 8);
  v17 = *(v468 + 64);
  __chkstk_darwin();
  v430 = &v420 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v436 = &v420 - v19;
  __chkstk_darwin();
  v439 = &v420 - v20;
  __chkstk_darwin();
  v440 = &v420 - v21;
  v461 = AssociatedConformanceWitness;
  v460 = AssociatedTypeWitness;
  v451 = swift_getAssociatedTypeWitness();
  v450 = *(v451 - 8);
  v22 = *(v450 + 64);
  __chkstk_darwin();
  v449 = &v420 - v23;
  v24 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v455 = &v420 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v465 = &v420 - v26;
  __chkstk_darwin();
  v447 = &v420 - v27;
  v477 = v9;
  v472 = v7;
  v28 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v469 = type metadata accessor for Optional();
  v474 = *(v469 - 8);
  v29 = *(v474 + 64);
  __chkstk_darwin();
  v457 = &v420 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v437 = &v420 - v31;
  __chkstk_darwin();
  v459 = &v420 - v32;
  __chkstk_darwin();
  v458 = &v420 - v33;
  v34 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v433 = &v420 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v438 = &v420 - v36;
  __chkstk_darwin();
  v446 = &v420 - v37;
  __chkstk_darwin();
  v442 = &v420 - v38;
  v475 = *(v28 - 8);
  v39 = v475[8];
  __chkstk_darwin();
  v444 = &v420 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v464 = (&v420 - v41);
  __chkstk_darwin();
  v435 = &v420 - v42;
  __chkstk_darwin();
  v432 = &v420 - v43;
  __chkstk_darwin();
  v445 = &v420 - v44;
  __chkstk_darwin();
  v466 = &v420 - v45;
  __chkstk_darwin();
  v441 = &v420 - v46;
  v467 = type metadata accessor for DispatchTime();
  v462 = *(v467 - 8);
  v47 = *(v462 + 64);
  __chkstk_darwin();
  v434 = &v420 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v456 = &v420 - v49;
  __chkstk_darwin();
  v443 = &v420 - v50;
  v51 = *(*(sub_10005DC58(&unk_10059B170, &unk_1004B4D70) - 8) + 64);
  __chkstk_darwin();
  v448 = &v420 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v431 = &v420 - v53;
  __chkstk_darwin();
  v473 = (&v420 - v54);
  v55 = *(*(sub_10005DC58(&qword_10058D450, &unk_100486D78) - 8) + 64);
  __chkstk_darwin();
  v476 = &v420 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v429 = &v420 - v57;
  __chkstk_darwin();
  v59 = &v420 - v58;
  __chkstk_darwin();
  v61 = &v420 - v60;
  __chkstk_darwin();
  v63 = &v420 - v62;
  v64 = *(*(type metadata accessor for AWDLPeer(0) - 8) + 64);
  v65 = __chkstk_darwin();
  v67 = &v420 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + *(v5 + 712)) != 1 || (*(v4 + *(v6 + 664)) & 1) != 0)
  {
    return;
  }

  v426 = v59;
  v427 = v16;
  v423 = v28;
  v68 = v65;
  v69 = swift_allocBox();
  v71 = v70;
  v72 = v481;
  sub_100041B60(*v481 | (*(v481 + 2) << 16), v70);
  v73 = *(v71 + v68[20]);
  v74 = (v71 + v68[11]);
  v421 = *v74;
  v424 = *(v74 + 2);
  v425 = v73;

  AWDLPeer.received(actionFrame:with:)(v478 & 0xFFFFFFFF00FF01FFLL, v479, v480, v72);
  v75 = v68;
  v76 = v68[27];
  v77 = *(v71 + v76);
  v480 = v71;
  v481 = v75;
  v428 = v4;
  if (v77)
  {
    v479 = 0;
    v78 = v75;
    v79 = v427;
    v80 = v69;
  }

  else
  {
    v422 = v69;
    v81 = *(v71 + v75[5]) | (*(v71 + v75[5] + 2) << 16);
    v82 = WiFiAddress.ipv6LinkLocalAddress.getter(v81);
    v478 = v83;
    v479 = v82;
    v420 = v84;
    v86 = v85;
    v87 = *(*v4 + 152);
    swift_beginAccess();
    v88 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
    WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v81, v479, v478, v420, v86, v88);
    v479 = 0;
    swift_endAccess();

    *(v71 + v76) = 1;
    v80 = v422;
    v78 = v481;
    v79 = v427;
  }

  v89 = v426;
  v90 = v480;
  swift_beginAccess();
  v91 = (v90 + *(v78 + 5));
  v92 = *(v91 + 1);
  v93 = *v91;
  sub_100027648(v90, v67, type metadata accessor for AWDLPeer);
  v94 = v93 | (v92 << 16);
  sub_100044A04(v67, v94);
  v490 = 0;
  sub_100012400(v90 + *(v78 + 14), v63, &qword_10058D450, &unk_100486D78);
  v95 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  v96 = *(*(v95 - 8) + 48);
  if (v96(v63, 1, v95) == 1)
  {
    sub_100016290(v63, &qword_10058D450, &unk_100486D78);
    goto LABEL_15;
  }

  v97 = v63[64];
  sub_1000473F0(v63, type metadata accessor for AWDLActionFrame.DataPathState);
  if (v97 != 47)
  {
    v98 = sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v99 = AWDLTrafficRegistrationConfiguration.init(peerAddress:umiOptions:isActive:)(v94, v97, &v490);
    if (v99)
    {
      v100 = v99;
      if (v490 != 1)
      {
        v489 = v99;
        v176 = v428;
        v177 = *(*v428 + 592);
        swift_beginAccess();
        v178 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
        v179 = v423;
        type metadata accessor for Dictionary();
        v180 = v457;
        Dictionary.removeValue(forKey:)();
        swift_endAccess();
        sub_10004C128();
        v181 = v475;
        if ((v475[6])(v180, 1, v179) != 1)
        {
          v213 = v445;
          (v181[4])(v445, v180, v179);
          v214 = *(*v176 + 160);
          v215 = v100;
          v216 = Logger.logObject.getter();
          v217 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v216, v217))
          {
            v218 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v218 = 136315394;
            v219 = [v215 uniqueIdentifier];
            v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v222 = v221;

            v223 = sub_100002320(v220, v222, &aBlock);

            *(v218 + 4) = v223;
            *(v218 + 12) = 2080;
            v224 = [v215 peerAddress];
            v225 = WiFiMACAddress.wifiAddress.getter();

            v226 = WiFiAddress.description.getter(v225 & 0xFFFFFFFFFFFFLL);
            v228 = sub_100002320(v226, v227, &aBlock);

            *(v218 + 14) = v228;
            _os_log_impl(&_mh_execute_header, v216, v217, "Successfully cleared traffic registration for %s from %s", v218, 0x16u);
            swift_arrayDestroy();
            v179 = v423;
          }

          v117 = v480;
          v130 = v481;
          v229 = v475;
          v230 = v459;
          (v475[2])(v459, v213, v179);
          (v229[7])(v230, 0, 1, v179);
          sub_100456BB0(v215, v230);

          (*(v474 + 8))(v230, v469);
          (v229[1])(v213, v179);
          goto LABEL_80;
        }

        v476 = v100;
        v422 = v80;
        v182 = *(v474 + 8);
        v474 += 8;
        v182(v180, v469);
        v183 = *(*v176 + 608);
        swift_beginAccess();
        v184 = *(v176 + v183);
        if (*(v184 + 16))
        {
          v185 = *(v176 + v183);

          v186 = v476;
          sub_1003E09E8(v476);
          if (v187)
          {
            v479 = v182;
            v188 = *(v184 + 36);

            v189 = v428;
            v190 = *(v428 + v183);

            v418 = v178;
            v191 = v432;
            v477 = v188;
            Dictionary.subscript.getter();

            v192 = v433;
            sub_100012400(&v191[*(v179 + 36)], v433, &unk_100597330, &unk_100481FA0);
            v193 = v189;
            v194 = (v475 + 1);
            v478 = v475[1];
            (v478)(v191, v179);
            v195 = v462;
            v196 = v467;
            if ((*(v462 + 48))(v192, 1, v467) != 1)
            {
              v473 = v194;
              (*(v195 + 32))(v434, v192, v196);
              type metadata accessor for P2PTimer();
              v382 = v456;
              variable initialization expression of AWDLPeer.lastUpdated();
              v383 = v436;
              DispatchTime.distance(to:)();
              v384 = *(v195 + 8);
              v462 = v195 + 8;
              v472 = v384;
              v384(v382, v196);
              swift_beginAccess();
              Dictionary.remove(at:)();
              v385 = v488;
              swift_endAccess();

              sub_10004C128();
              v386 = *(*v193 + 160);
              v387 = v468;
              v388 = v430;
              v389 = v383;
              v390 = v427;
              (*(v468 + 16))(v430, v389, v427);
              v391 = v476;
              v392 = Logger.logObject.getter();
              v393 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v392, v393))
              {
                v394 = v388;
                v395 = swift_slowAlloc();
                v477 = swift_slowAlloc();
                v489 = v477;
                *v395 = 136315650;
                v396 = [v391 uniqueIdentifier];
                v397 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v399 = v398;

                v400 = sub_100002320(v397, v399, &v489);

                *(v395 + 4) = v400;
                *(v395 + 12) = 2080;
                v401 = [v391 peerAddress];
                v402 = WiFiMACAddress.wifiAddress.getter();

                v403 = WiFiAddress.description.getter(v402 & 0xFFFFFFFFFFFFLL);
                v405 = sub_100002320(v403, v404, &v489);

                *(v395 + 14) = v405;
                *(v395 + 22) = 2080;
                v406 = DispatchTimeInterval.description.getter();
                v408 = v407;
                v409 = *(v387 + 8);
                v410 = v394;
                v390 = v427;
                v409(v410, v427);
                v411 = sub_100002320(v406, v408, &v489);

                *(v395 + 24) = v411;
                _os_log_impl(&_mh_execute_header, v392, v393, "Successfully cleared traffic registration for %s from %s (in recovery for %s)", v395, 0x20u);
                swift_arrayDestroy();
              }

              else
              {

                v409 = *(v387 + 8);
                v409(v388, v390);
              }

              v117 = v480;
              v130 = v481;
              v412 = v475;
              v413 = v459;
              v414 = v435;
              v415 = v423;
              (v475[2])(v459, v435, v423);
              (v412[7])(v413, 0, 1, v415);
              sub_100456BB0(v391, v413);

              v479(v413, v469);
              (v478)(v414, v415);
              v409(v436, v390);
              v472(v434, v467);
              goto LABEL_80;
            }

            sub_100016290(v192, &unk_100597330, &unk_100481FA0);
            goto LABEL_78;
          }
        }

        else
        {
        }

        v117 = v480;
        v130 = v481;
        goto LABEL_38;
      }

      v478 = v98;
      v101 = *(v468 + 56);
      v101(v473, 1, 1, v79);
      v102 = v428;
      v103 = *(*v428 + 608);
      swift_beginAccess();
      v104 = *(v102 + v103);
      v105 = *(v104 + 16);
      v422 = v80;
      if (v105)
      {

        v106 = sub_1003E09E8(v100);
        if (v107)
        {
          v108 = v106;
          v476 = v100;
          v109 = *(v104 + 36);

          v110 = *(v102 + v103);
          v111 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

          v457 = v111;
          v418 = v111;
          v112 = v441;
          v464 = v108;
          v463 = v109;
          v465 = v103;
          v113 = v423;
          Dictionary.subscript.getter();

          v114 = v442;
          sub_100012400(&v112[*(v113 + 36)], v442, &unk_100597330, &unk_100481FA0);
          v455 = v475[1];
          (v455)(v112, v113);
          v115 = v462;
          v116 = v467;
          if ((*(v462 + 48))(v114, 1, v467) == 1)
          {
            sub_100016290(v114, &unk_100597330, &unk_100481FA0);
            v103 = v465;
          }

          else
          {
            (*(v115 + 32))();
            type metadata accessor for P2PTimer();
            v258 = v456;
            variable initialization expression of AWDLPeer.lastUpdated();
            v259 = v431;
            DispatchTime.distance(to:)();
            v260 = *(v115 + 8);
            v260(v258, v116);
            v261 = v473;
            sub_100016290(v473, &unk_10059B170, &unk_1004B4D70);
            v101(v259, 0, 1, v427);
            sub_10001CEA8(v259, v261, &unk_10059B170, &unk_1004B4D70);
            v262 = v465;
            v102 = v428;
            swift_beginAccess();
            v263 = v423;
            type metadata accessor for Dictionary();
            v264 = v466;
            Dictionary.remove(at:)();
            (v455)(v264, v263);
            v265 = v488;
            swift_endAccess();

            sub_10004C128();
            v260(v443, v467);
            v103 = v262;
          }

          v100 = v476;
        }

        else
        {
        }
      }

      v266 = *(*v102 + 592);
      swift_beginAccess();
      v466 = v266;
      v267 = *&v266[v102];
      v488 = v100;
      v268 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v269 = v100;
      v270 = v458;
      v271 = v423;
      v476 = v268;
      Dictionary.subscript.getter();

      swift_endAccess();
      v272 = v475;
      v273 = v475[6];
      v463 = (v475 + 6);
      v457 = v273;
      LODWORD(v267) = (v273)(v270, 1, v271);
      v274 = v474 + 8;
      v464 = *(v474 + 8);
      v464(v270, v469);
      if (v267 != 1)
      {
        v306 = *(*v102 + 160);
        v307 = v269;
        v308 = Logger.logObject.getter();
        v309 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v308, v309))
        {
          v310 = swift_slowAlloc();
          v489 = swift_slowAlloc();
          *v310 = 136315394;
          v311 = [v307 uniqueIdentifier];
          v312 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v314 = v313;

          v315 = sub_100002320(v312, v314, &v489);

          *(v310 + 4) = v315;
          *(v310 + 12) = 2080;
          v316 = WiFiAddress.description.getter(v94);
          v318 = sub_100002320(v316, v317, &v489);

          *(v310 + 14) = v318;
          _os_log_impl(&_mh_execute_header, v308, v309, "Received a duplicate traffic registration indication for %s from %s", v310, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_100016290(v473, &unk_10059B170, &unk_1004B4D70);
        goto LABEL_78;
      }

      v465 = v103;
      v474 = v274;
      type metadata accessor for P2PTimer();
      v275 = v269;
      v276 = v456;
      variable initialization expression of AWDLPeer.lastUpdated();
      v277 = *(v462 + 56);
      v278 = v446;
      v455 = (v462 + 56);
      v454 = v277;
      v277(v446, 1, 1, v467);
      v279 = v447;
      (*(v470 + 56))(v447, 1, 1, v471);
      v280 = v459;
      sub_100453F54(v276, v278, v279, v459);
      (v272[7])(v280, 0, 1, v271);
      v488 = v275;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      swift_endAccess();
      sub_10004C128();
      v281 = [v275 uniqueIdentifier];
      v282 = *(*v102 + 560);
      swift_beginAccess();
      sub_100159C80(&v488, v281);
      swift_endAccess();

      v283 = *(*v102 + 112);
      v284 = *(v461 + 152);
      swift_checkMetadataState();
      v285 = v449;
      v284();
      v286 = *(v102 + v282);
      v287 = v451;
      v288 = swift_getAssociatedConformanceWitness();
      v289 = *(v288 + 120);

      v289(v290, v287, v288);
      v291 = v468;

      v292 = v287;
      v293 = v275;
      v294 = &unk_100588000;
      (*(v450 + 8))(v285, v292);
      v295 = [v293 uniqueIdentifier];
      LODWORD(v283) = AWDLTrafficRegistrationService.serviceType.getter();

      v296 = v427;
      if (v283 == 2)
      {
        v297 = v428;
        v298 = v466;
        swift_beginAccess();
        v299 = *&v298[v297];
        v488 = v293;
        v300 = v293;
        v301 = v437;
        v302 = v423;
        Dictionary.subscript.getter();

        if ((v457)(v301, 1, v302))
        {
          v464(v301, v469);
          swift_endAccess();
          v303 = 1;
          v304 = v467;
          v305 = v438;
        }

        else
        {
          v305 = v438;
          v304 = v467;
          (*(v462 + 16))(v438, v301, v467);
          v464(v301, v469);
          swift_endAccess();
          v303 = 0;
        }

        v454(v305, v303, 1, v304);
        v322 = v428;
        v323 = *(*v428 + 544);
        swift_beginAccess();
        sub_1000B1B78(v305, v322 + v323, &unk_100597330, &unk_100481FA0);
        swift_endAccess();
        *(v322 + *(*v322 + 528)) = 0;
        *(v322 + *(*v322 + 536)) = 2;
      }

      v324 = v448;
      sub_100012400(v473, v448, &unk_10059B170, &unk_1004B4D70);
      v325 = (*(v291 + 48))(v324, 1, v296);
      v458 = v293;
      if (v325 == 1)
      {
        sub_100016290(v324, &unk_10059B170, &unk_1004B4D70);
        v326 = v428;
        sub_100455E40(v293);
        v327 = *(*v326 + 160);
        v328 = v293;
        v329 = Logger.logObject.getter();
        v330 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v329, v330))
        {
          v331 = swift_slowAlloc();
          v489 = swift_slowAlloc();
          *v331 = 136315394;
          v332 = [v328 uniqueIdentifier];
          v333 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v335 = v334;

          v336 = sub_100002320(v333, v335, &v489);
          v326 = v428;

          *(v331 + 4) = v336;
          *(v331 + 12) = 2080;
          v337 = WiFiAddress.description.getter(v94);
          v339 = sub_100002320(v337, v338, &v489);

          *(v331 + 14) = v339;
          _os_log_impl(&_mh_execute_header, v329, v330, "Successfully set traffic registration for %s from %s", v331, 0x16u);
          swift_arrayDestroy();
        }
      }

      else
      {
        v340 = v440;
        (*(v291 + 32))(v440, v324, v296);
        v341 = [v293 uniqueIdentifier];
        v342 = AWDLTrafficRegistrationService.showsInfraDisconnectUINotifications.getter();

        v343 = v428;
        if (v342)
        {
          sub_100454028(v293, 1, 1);
          v344 = v439;
        }

        else
        {
          v345 = v428 + *(*v428 + 160);
          v346 = Logger.logObject.getter();
          v347 = static os_log_type_t.default.getter();
          v348 = os_log_type_enabled(v346, v347);
          v344 = v439;
          if (v348)
          {
            v349 = swift_slowAlloc();
            *v349 = 0;
            _os_log_impl(&_mh_execute_header, v346, v347, "Skip Retro Mode evaluation", v349, 2u);
            v291 = v468;
          }
        }

        v350 = *(*v343 + 160);
        (*(v291 + 16))(v344, v340, v296);
        v351 = v293;
        v326 = v343;
        v352 = Logger.logObject.getter();
        v353 = v344;
        v354 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v352, v354))
        {

          v374 = *(v291 + 8);
          v375 = v427;
          v374(v353, v427);
          v374(v340, v375);
          v372 = v422;
          v117 = v480;
          v130 = v481;
          v373 = v465;
          v294 = &unk_100588000;
LABEL_106:
          v376 = *(v294 + 379);
          v377 = v458;
          v378 = [v458 v376];
          v379 = AWDLTrafficRegistrationService.serviceType.getter();

          if (v379 == 2)
          {
            v380 = *(v326 + v373);
            __chkstk_darwin();
            *(&v420 - 4) = v377;
            *(&v420 - 3) = v326;
            v418 = v372;

            v381 = Dictionary.filter(_:)();
            sub_10044E1B8(v381);

            sub_100016290(v473, &unk_10059B170, &unk_1004B4D70);
          }

          else
          {
            sub_100016290(v473, &unk_10059B170, &unk_1004B4D70);
          }

          goto LABEL_80;
        }

        v355 = swift_slowAlloc();
        v477 = swift_slowAlloc();
        v489 = v477;
        *v355 = 136315650;
        v356 = [v351 uniqueIdentifier];
        v357 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v359 = v358;

        v360 = sub_100002320(v357, v359, &v489);
        v326 = v428;

        *(v355 + 4) = v360;
        *(v355 + 12) = 2080;
        v361 = WiFiAddress.description.getter(v94);
        v363 = sub_100002320(v361, v362, &v489);

        *(v355 + 14) = v363;
        *(v355 + 22) = 2080;
        v364 = DispatchTimeInterval.description.getter();
        v366 = v365;
        v367 = v340;
        v368 = *(v468 + 8);
        v369 = v353;
        v370 = v427;
        v368(v369, v427);
        v371 = sub_100002320(v364, v366, &v489);

        *(v355 + 24) = v371;
        _os_log_impl(&_mh_execute_header, v352, v354, "Successfully recovered traffic registration for %s from %s (in recovery for %s)", v355, 0x20u);
        swift_arrayDestroy();

        v368(v367, v370);
        v294 = &unk_100588000;
      }

      v372 = v422;
      v117 = v480;
      v130 = v481;
      v373 = v465;
      goto LABEL_106;
    }
  }

LABEL_15:
  v117 = v480;
  sub_100012400(v480 + v481[14], v61, &qword_10058D450, &unk_100486D78);
  if (v96(v61, 1, v95) == 1)
  {
    sub_100016290(v61, &qword_10058D450, &unk_100486D78);
  }

  else
  {
    v118 = v61[64];
    sub_1000473F0(v61, type metadata accessor for AWDLActionFrame.DataPathState);
    if (v118 == 31)
    {
      v119 = v428 + *(*v428 + 160);
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        aBlock = v123;
        *v122 = 136315138;
        v124 = WiFiAddress.description.getter(v94);
        v126 = sub_100002320(v124, v125, &aBlock);

        *(v122 + 4) = v126;
        _os_log_impl(&_mh_execute_header, v120, v121, "Received a recovery UMI from %s", v122, 0xCu);
        sub_100002A00(v123);
      }

      v127 = v428;
      v128 = *(*v428 + 568);
      swift_beginAccess();
      v129 = *(v127 + v128);
      sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v489 = NANBitmap.Channel.operatingClass.getter(v129);
      __chkstk_darwin();
      type metadata accessor for Dictionary.Keys();

      swift_getWitnessTable();
      v489 = Sequence.filter(_:)();
      __chkstk_darwin();
      v418 = v127;
      v419 = v80;
      sub_10005DC58(&unk_100595240, &qword_1004AF178);
      sub_10000CADC(&unk_10059B180, &unk_100595240, &qword_1004AF178);
      Sequence.forEach(_:)();

      v117 = v480;
      v130 = v481;
      goto LABEL_80;
    }
  }

  sub_100012400(v117 + v481[14], v89, &qword_10058D450, &unk_100486D78);
  v131 = v96(v89, 1, v95);
  v478 = v95;
  if (v131 == 1)
  {
    sub_100016290(v89, &qword_10058D450, &unk_100486D78);
LABEL_37:
    v173 = v481;
    v174 = v476;
    sub_100012400(v117 + v481[14], v476, &qword_10058D450, &unk_100486D78);
    v96(v174, 1, v478);
    v130 = v173;
    sub_100016290(v174, &qword_10058D450, &unk_100486D78);
LABEL_38:
    v175 = v424;
    goto LABEL_81;
  }

  v132 = *(v89 + 64);
  sub_1000473F0(v89, type metadata accessor for AWDLActionFrame.DataPathState);
  if (v132 != 32)
  {
    goto LABEL_37;
  }

  v422 = v80;
  v133 = v428;
  v134 = *(*v428 + 568);
  swift_beginAccess();
  v476 = v134;
  v488 = *&v134[v133];
  __chkstk_darwin();
  v135 = v472;
  *(&v420 - 4) = v477;
  *(&v420 - 3) = v135;
  v418 = v136;
  v137 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v138 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v477 = v137;
  v139 = v423;
  type metadata accessor for Dictionary();

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  v140 = v484;
  if (v484 == 255)
  {

    v197 = v133 + *(*v133 + 160);
    v198 = Logger.logObject.getter();
    v199 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      aBlock = v201;
      *v200 = 136315138;
      v202 = WiFiAddress.description.getter(*(v480 + v481[5]) | (*(v480 + v481[5] + 2) << 16));
      v204 = sub_100002320(v202, v203, &aBlock);

      *(v200 + 4) = v204;
      _os_log_impl(&_mh_execute_header, v198, v199, "Peer %s notified about infrastructure disconnect but no active traffic registration was found", v200, 0xCu);
      sub_100002A00(v201);
    }
  }

  else
  {
    v474 = aBlock;
    v479 = v483;
    v141 = *&v476[v133];

    v418 = v138;
    v142 = v466;
    Dictionary.subscript.getter();

    v143 = (v475 + 1);
    v473 = v475[1];
    (v473)(v142, v139);
    v144 = aBlock;
    v472 = [aBlock uniqueIdentifier];

    v145 = *&v476[v133];

    v468 = v138;
    v418 = v138;
    LODWORD(v469) = v140;
    v146 = v464;
    Dictionary.subscript.getter();

    v147 = v465;
    sub_100012400(v146 + *(v139 + 40), v465, &qword_10058F4D0, &qword_100491AB0);
    v467 = v143;
    (v473)(v146, v139);
    v148 = v470;
    v149 = v471;
    v150 = (*(v470 + 48))(v147, 1, v471);
    sub_100016290(v147, &qword_10058F4D0, &qword_100491AB0);
    if (v150 == 1)
    {
      v151 = v463;
      UUID.init()();
      v152 = v455;
      (*(v148 + 16))(v455, v151, v149);
      (*(v148 + 56))(v152, 0, 1, v149);
      v153 = v476;
      swift_beginAccess();
      v154 = *&v153[v133];
      *&v153[v133] = 0x8000000000000000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v488 = v154;
        type metadata accessor for _NativeDictionary();
        _NativeDictionary.copy()();
        v154 = v488;
      }

      if (v474 < 0 || v474 >= 1 << v154[32])
      {
        __break(1u);
      }

      else if ((*&v154[8 * (v474 >> 6) + 64] >> v474))
      {
        if (*(v154 + 9) == v479)
        {
          sub_1000B1B78(v152, *(v154 + 7) + v475[9] * v474 + *(v423 + 40), &qword_10058F4D0, &qword_100491AB0);
          v155 = v428;
          *&v153[v428] = v154;
          swift_endAccess();
          sub_10004C128();
          v156 = *(*v155 + 160);
          v157 = v472;
          v158 = Logger.logObject.getter();
          v159 = static os_log_type_t.default.getter();

          v160 = os_log_type_enabled(v158, v159);
          v475 = v157;
          if (v160)
          {
            v161 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v161 = 136315394;
            v162 = WiFiAddress.description.getter(*(v480 + v481[5]) | (*(v480 + v481[5] + 2) << 16));
            v164 = sub_100002320(v162, v163, &aBlock);

            *(v161 + 4) = v164;
            *(v161 + 12) = 2080;
            v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v167 = sub_100002320(v165, v166, &aBlock);

            *(v161 + 14) = v167;
            _os_log_impl(&_mh_execute_header, v158, v159, "Peer %s disconnected infrastructure network to avoid retro mode while running %s", v161, 0x16u);
            swift_arrayDestroy();
          }

          v168 = v461;
          v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v171 = v170;
          if (v169 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v171 == v172)
          {
            goto LABEL_36;
          }

          v231 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v231)
          {
            goto LABEL_54;
          }

          v249 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v251 = v250;
          if (v249 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v251 == v252)
          {
LABEL_36:
          }

          else
          {
            v253 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v253 & 1) == 0)
            {
              v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v256 = v255;
              if (v254 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v256 == v257)
              {
              }

              else
              {
                v416 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v232 = 0;
                if ((v416 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              v417 = v429;
              sub_100012400(v480 + v481[14], v429, &qword_10058D450, &unk_100486D78);
              if (v96(v417, 1, v478) == 1)
              {
                sub_100016290(v417, &qword_10058D450, &unk_100486D78);
                v232 = 0;
              }

              else
              {
                v232 = *(v417 + 84);
                sub_1000473F0(v417, type metadata accessor for AWDLActionFrame.DataPathState);
              }

              goto LABEL_55;
            }
          }

LABEL_54:
          v232 = 1;
LABEL_55:
          v233 = v428;
          v234 = *(*v428 + 112);
          v235 = *(v168 + 144);
          swift_checkMetadataState();
          v236 = v452;
          v235();
          v237 = v454;
          v238 = swift_getAssociatedConformanceWitness();
          v239 = (*(v238 + 8))(v237, v238);
          (*(v453 + 8))(v236, v237);
          if (v239)
          {
            v240 = *&v476[v233];

            v418 = v468;
            v241 = v444;
            v242 = v423;
            Dictionary.subscript.getter();

            (v473)(v241, v242);
            v243 = aBlock;
            v244 = [aBlock localization];

            v130 = v481;
            if (!v244)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v244 = String._bridgeToObjectiveC()();
            }

            v245 = v463;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v486 = sub_100457ED4;
            v487 = 0;
            aBlock = _NSConcreteStackBlock;
            v483 = 1107296256;
            v484 = sub_1004484C8;
            v485 = &unk_10057BE80;
            v247 = _Block_copy(&aBlock);
            v248 = v475;
            [v239 showInfrastructureDisconnectOnRetroModeNotificationForService:v475 localization:v244 phoneDisconnected:v232 uuid:isa completionHandler:v247];
            _Block_release(v247);

            swift_unknownObjectRelease();
            (*(v470 + 8))(v245, v471);
            goto LABEL_79;
          }

          (*(v470 + 8))(v463, v471);

LABEL_78:
          v130 = v481;
LABEL_79:
          v117 = v480;
LABEL_80:
          v175 = v424;
LABEL_81:
          sub_100047450();
          v319 = AWDLPeer.countryCode.getter();
          sub_1000479A0(v319);

          v320 = (v117 + *(v130 + 11));
          v321 = *(v320 + 2);
          if (v175)
          {
            if (v320[1])
            {
LABEL_87:

              return;
            }
          }

          else
          {
            if (v421 != *v320)
            {
              v321 = 1;
            }

            if ((v321 & 1) == 0)
            {
              goto LABEL_87;
            }
          }

          sub_10004D020();
          sub_10004D7F4(v117, v425);

          goto LABEL_87;
        }

LABEL_119:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_119;
    }

    v205 = v133 + *(*v133 + 160);
    v206 = Logger.logObject.getter();
    v207 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      aBlock = v209;
      *v208 = 136315138;
      v210 = WiFiAddress.description.getter(*(v480 + v481[5]) | (*(v480 + v481[5] + 2) << 16));
      v212 = sub_100002320(v210, v211, &aBlock);

      *(v208 + 4) = v212;
      _os_log_impl(&_mh_execute_header, v206, v207, "Peer %s notified about infrastructure disconnect but already presented notification for this session", v208, 0xCu);
      sub_100002A00(v209);
    }

    sub_100085170(v474, v479, v469);
  }
}

uint64_t sub_100041B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_10005DC58(&unk_10059B090, &unk_1004B1830) - 8) + 64);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = *(*v2 + 448);
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (*(v11 + 16) && (v12 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for AWDLPeer(0);
    v17 = *(v16 - 8);
    sub_100027648(v15 + *(v17 + 72) * v14, v9, type metadata accessor for AWDLPeer);
    (*(v17 + 56))(v9, 0, 1, v16);
  }

  else
  {
    v16 = type metadata accessor for AWDLPeer(0);
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  sub_10001CEA8(v9, v7, &unk_10059B090, &unk_1004B1830);
  type metadata accessor for AWDLPeer(0);
  if ((*(*(v16 - 8) + 48))(v7, 1, v16) == 1)
  {
    AWDLPeer.init(macAddress:)(a1 & 0xFFFFFFFFFFFFLL, a2);
    sub_100016290(v7, &unk_10059B090, &unk_1004B1830);
  }

  else
  {
    sub_10003DFE0(v7, a2, type metadata accessor for AWDLPeer);
  }

  return swift_endAccess();
}

unint64_t sub_100041DE8(unint64_t a1)
{
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(BYTE5(a1));
  v8 = Hasher._finalize()();

  return sub_100041EB4(a1 & 0xFFFFFFFFFFFFLL, v8);
}

unint64_t sub_100041EB4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      LOWORD(v7) = a1;
      BYTE2(v7) = BYTE2(a1);
      HIBYTE(v7) = BYTE3(a1);
      LOBYTE(v8) = BYTE4(a1);
      HIBYTE(v8) = BYTE5(a1);
      if (!(*(*(v2 + 48) + 6 * result) ^ v7 | *(*(v2 + 48) + 6 * result + 4) ^ v8))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100041FB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10004200C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100042028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100042078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000420C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100042114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100042164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000421B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 136);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100042294(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v7 = sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 136);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004234C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000423A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for DispatchTime();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_10005DC58(&qword_10058D450, &unk_100486D78);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[19]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[14];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100042518(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DispatchTime();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_10005DC58(&qword_10058D450, &unk_100486D78);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[14];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[19]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t AWDLPeer.received(actionFrame:with:)(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a3;
  v30 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v29 = type metadata accessor for DispatchTime();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 16);
  v14 = type metadata accessor for AWDLActionFrame.Header(0);
  v15 = *(a4 + *(v14 + 48));
  v16 = type metadata accessor for AWDLPeer(0);
  v17 = v16;
  v18 = v5 + *(v16 + 4 * v13 + 92);
  *v18 = v15;
  *(v18 + 8) = 0;
  v19 = v8 - v30;
  v20 = v8 < v30;
  if (v8 < v30)
  {
    v19 = 0;
  }

  v21 = v5 + *(v16 + 84);
  *v21 = v19;
  *(v21 + 4) = v20;
  v22 = v5 + *(v16 + 88);
  *v22 = *(a4 + *(v14 + 52));
  *(v22 + 4) = 0;
  sub_10004285C(v31, (v7 >> 8) & 1);
  v23 = *(v17 + 28);
  v24 = *(v5 + v23);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v5 + v23) = v26;
  if (qword_10058A890 != -1)
  {
LABEL_7:
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  return (*(v9 + 40))(v5 + *(v17 + 24), v12, v29);
}

uint64_t sub_10004285C(uint64_t a1, int a2)
{
  v294 = 0;
  v5 = *(*(sub_10005DC58(&qword_10058FA18, &qword_100493068) - 8) + 64);
  __chkstk_darwin();
  v313 = &v291 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v307 = (&v291 - v7);
  __chkstk_darwin();
  v333 = &v291 - v8;
  v332 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v337 = *(v332 - 8);
  v9 = *(v337 + 64);
  __chkstk_darwin();
  v312 = &v291 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v311 = &v291 - v11;
  __chkstk_darwin();
  v331 = &v291 - v12;
  v13 = *(*(sub_10005DC58(&qword_10058FA20, &qword_100493070) - 8) + 64);
  __chkstk_darwin();
  v342 = (&v291 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v329 = &v291 - v15;
  v16 = *(*(sub_10005DC58(&unk_10058B750, &unk_100480AB0) - 8) + 64);
  __chkstk_darwin();
  v326 = &v291 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v291 - v18;
  v328 = type metadata accessor for DNSRecords.SRV();
  v20 = *(v328 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v325 = &v291 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v320 = &v291 - v22;
  __chkstk_darwin();
  v321 = &v291 - v23;
  v327 = sub_10005DC58(&qword_10058F3A0, &qword_100492310);
  v316 = *(v327 - 8);
  v24 = *(v316 + 64);
  __chkstk_darwin();
  v324 = &v291 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v315 = &v291 - v26;
  v322 = type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  v27 = *(*(v322 - 1) + 8);
  __chkstk_darwin();
  v335 = &v291 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v291 - v29;
  v344 = type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  v31 = *(v344 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin();
  v34 = &v291 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AWDLPeer(0);
  v36 = v20;
  v334 = v35;
  v37 = *(v35 + 44);
  v339 = v2;
  v38 = (v2 + v37);
  v39 = *(v38 + 2);
  v40 = *(a1 + 16);
  v341 = v36;
  v336 = v38;
  if (!v40)
  {
    if ((a2 & 1) == 0)
    {
      if (v39)
      {
        v182 = &_swiftEmptyDictionarySingleton;
        v295 = 0;
        v296 = 0;
        v299 = 0;
        v300 = 0;
        v297 = 0;
        v298 = 0;
        v305 = 0;
        v306 = 0;
        v303 = 0;
        v304 = 0;
        v301 = 0;
        v302 = 0;
        goto LABEL_130;
      }

      v286 = 0;
      v288 = 0;
      v287 = 0;
LABEL_178:
      sub_100010520(v286);
      sub_100010520(v288);
      return sub_100010520(v287);
    }

    v295 = 0;
    v296 = 0;
    v299 = 0;
    v300 = 0;
    v297 = 0;
    v298 = 0;
    v305 = 0;
    v306 = 0;
    v303 = 0;
    v304 = 0;
    v301 = 0;
    v302 = 0;
    LODWORD(v338) = 0;
    v182 = &_swiftEmptyDictionarySingleton;
    v184 = v342;
    goto LABEL_124;
  }

  v309 = v21;
  v310 = v19;
  LODWORD(v323) = a2;
  v295 = 0;
  v296 = 0;
  v299 = 0;
  v300 = 0;
  v297 = 0;
  v298 = 0;
  v305 = 0;
  v306 = 0;
  v303 = 0;
  v304 = 0;
  v301 = 0;
  v302 = 0;
  LODWORD(v338) = 0;
  LODWORD(v345) = 0;
  v41 = 0;
  LODWORD(v318) = *v38;
  v346 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v308 = (v36 + 56);
  v330 = &_swiftEmptyDictionarySingleton;
  LODWORD(v340) = v39;
  LODWORD(v319) = v39;
  v42 = v31;
  v343 = v31;
  while (1)
  {
    v43 = v41;
    while (1)
    {
      while (1)
      {
        if (v43 >= v40)
        {
          goto LABEL_185;
        }

        v41 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_186;
        }

        v19 = *(v42 + 72);
        sub_100044904(v346 + v19 * v43, v34, type metadata accessor for AWDLActionFrame.AWDLAttribute);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 6)
        {
          break;
        }

        if (EnumCaseMultiPayload <= 11)
        {
          if (EnumCaseMultiPayload == 7)
          {
            ++v43;
LABEL_70:
            v68 = *v34;
            v69 = *(v34 + 1);
            v19 = *(v34 + 2);
            v70 = (v339 + v334[13]);
            v71 = v70[2];

            *v70 = v68;
            v70[1] = v69;
            v70[2] = v19;
            goto LABEL_9;
          }

          if (EnumCaseMultiPayload != 9)
          {
            if (EnumCaseMultiPayload != 11)
            {
              goto LABEL_73;
            }

            ++v43;
LABEL_50:
            v56 = *(v34 + 4);
            v57 = v339 + v334[15];
            v58 = *(v34 + 1);
            *v57 = *v34;
            *(v57 + 16) = v58;
            *(v57 + 32) = v56;
            *(v57 + 40) = 0;
            goto LABEL_10;
          }

          ++v43;
          goto LABEL_72;
        }

        if (EnumCaseMultiPayload != 17)
        {
          if (EnumCaseMultiPayload != 12)
          {
            if (EnumCaseMultiPayload == 18)
            {
              ++v43;
LABEL_65:
              v62 = *(v34 + 1);
              v63 = *v34 | (v34[4] << 32) | (v34[5] << 40);
              v19 = v339 + v334[18];
              v64 = *(v19 + 8);

              *v19 = v63;
              *(v19 + 8) = v62;
              goto LABEL_9;
            }

LABEL_73:
            ++v43;
            goto LABEL_74;
          }

          ++v43;
LABEL_78:
          v78 = v339 + v334[9];
          v79 = *(v34 + 1);
          *v78 = *v34;
          *(v78 + 16) = v79;
          *(v78 + 32) = *(v34 + 2);
          *(v78 + 48) = 0;
          goto LABEL_10;
        }

        ++v43;
LABEL_17:
        v51 = *(v34 + 4);
        v52 = v339 + v334[17];
        v53 = *(v34 + 1);
        *v52 = *v34;
        *(v52 + 16) = v53;
        *(v52 + 32) = v51;
        LODWORD(v345) = 1;
        if (v43 == v40)
        {
          v184 = v342;
          goto LABEL_128;
        }
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload == 5)
          {
            ++v43;
LABEL_5:
            v44 = *v34;
            v45 = *(v34 + 1);
            v46 = *(v34 + 2);
            v47 = *(v34 + 2);
            v19 = *(v34 + 3);
            *&v317 = *(v34 + 2);
            if (v46 == v318)
            {
              v39 = v319;
            }

            else
            {
              v39 = 1;
            }

            v48 = v44 | (v45 << 16) | (v46 << 32);
            v49 = v339 + v334[10];
            sub_1000449CC(*v49, *(v49 + 8), *(v49 + 16), *(v49 + 24));
            *v49 = v48;
            *(v49 + 8) = v47;
            LODWORD(v340) = v39;
            *(v49 + 16) = v317;
            *(v49 + 24) = v19;
          }

          else
          {
            ++v43;
LABEL_68:
            v65 = v334[14];
            v66 = v339;
            sub_100016290(v339 + v65, &qword_10058D450, &unk_100486D78);
            sub_1000390BC(v34, v66 + v65, type metadata accessor for AWDLActionFrame.DataPathState);
            v67 = type metadata accessor for AWDLActionFrame.DataPathState(0);
            (*(*(v67 - 8) + 56))(v66 + v65, 0, 1, v67);
          }

LABEL_9:
          v42 = v343;
          goto LABEL_10;
        }

        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_73;
          }

          ++v43;
LABEL_55:
          v59 = *(v34 + 2);
          v60 = v34[24];
          v61 = v339 + v334[8];
          *v61 = *v34;
          *(v61 + 16) = v59;
          *(v61 + 24) = v60;
          goto LABEL_10;
        }

        ++v43;
LABEL_76:
        v19 = *(v34 + 4);
        v73 = *(v34 + 5);
        v74 = v339 + v334[12];
        v75 = *(v74 + 40);
        v76 = *(v34 + 1);
        v317 = *v34;
        v314 = v76;

        v77 = v314;
        *v74 = v317;
        *(v74 + 16) = v77;
        *(v74 + 32) = v19;
        *(v74 + 40) = v73;
        v42 = v343;
        goto LABEL_10;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_73;
      }

      sub_1000390BC(v34, v30, type metadata accessor for AWDLActionFrame.ServiceResponse);
      if (v39)
      {
        break;
      }

      sub_10004496C(v30, type metadata accessor for AWDLActionFrame.ServiceResponse);
      if (v41 == v40)
      {
        goto LABEL_120;
      }

      v54 = v346 + v19 * v41;
      while (1)
      {
        if (v41 >= v40)
        {
          goto LABEL_185;
        }

        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
LABEL_186:
          __break(1u);
LABEL_187:
          if (v345)
          {
            v184 = v342;
            v182 = v330;
            if ((v340 & 1) == 0)
            {
              goto LABEL_177;
            }

            v36 = v19;
            goto LABEL_139;
          }

          v184 = v342;
          v182 = v330;
          LOBYTE(v39) = v340;
          v36 = v19;
          if ((v323 & 1) == 0)
          {
            if ((v340 & 1) == 0)
            {
              goto LABEL_177;
            }

            goto LABEL_139;
          }

          LODWORD(v338) = 1;
LABEL_124:
          v183 = v339 + v334[17];
          *v183 = xmmword_10047CE60;
          *(v183 + 24) = 0;
          *(v183 + 32) = 0;
          *(v183 + 16) = 0;
          if (v39)
          {
            goto LABEL_129;
          }

          goto LABEL_177;
        }

        sub_100044904(v54, v34, type metadata accessor for AWDLActionFrame.AWDLAttribute);
        v55 = swift_getEnumCaseMultiPayload();
        if (v55 != 1)
        {
          break;
        }

        sub_1000390BC(v34, v30, type metadata accessor for AWDLActionFrame.ServiceResponse);
        sub_10004496C(v30, type metadata accessor for AWDLActionFrame.ServiceResponse);
        ++v41;
        v54 += v19;
        if (v43 == v40)
        {
          goto LABEL_120;
        }
      }

      if (v55 > 8)
      {
        if (v55 > 11)
        {
          if (v55 != 12)
          {
            if (v55 == 17)
            {
              LOBYTE(v39) = 0;
              goto LABEL_17;
            }

            if (v55 != 18)
            {
              goto LABEL_61;
            }

            LOBYTE(v39) = 0;
            goto LABEL_65;
          }

          LOBYTE(v39) = 0;
          goto LABEL_78;
        }

        if (v55 != 9)
        {
          if (v55 != 11)
          {
            goto LABEL_61;
          }

          LOBYTE(v39) = 0;
          goto LABEL_50;
        }

        LOBYTE(v39) = 0;
LABEL_72:
        v72 = v339 + v334[16];
        *v72 = *v34;
        *(v72 + 2) = 0;
        goto LABEL_10;
      }

      if (v55 <= 4)
      {
        if (v55 != 2)
        {
          if (v55 != 3)
          {
            goto LABEL_61;
          }

          LOBYTE(v39) = 0;
          goto LABEL_55;
        }

        LOBYTE(v39) = 0;
        goto LABEL_76;
      }

      switch(v55)
      {
        case 5:
          goto LABEL_5;
        case 6:
          LOBYTE(v39) = 0;
          goto LABEL_68;
        case 7:
          LOBYTE(v39) = 0;
          goto LABEL_70;
      }

LABEL_61:
      LOBYTE(v39) = 0;
LABEL_74:
      sub_10004496C(v34, type metadata accessor for AWDLActionFrame.AWDLAttribute);
LABEL_10:
      if (v43 == v40)
      {
LABEL_120:
        v184 = v342;
        if (!(v345 & 1 | ((v323 & 1) == 0)))
        {
          LOBYTE(v39) = v340;
          v182 = v330;
          v36 = v341;
          goto LABEL_124;
        }

LABEL_128:
        v182 = v330;
        v36 = v341;
        if ((v340 & 1) == 0)
        {
          goto LABEL_177;
        }

LABEL_129:
        if ((v338 & 1) == 0)
        {
LABEL_130:
          v185 = v339 + v334[10];
          v186 = *(v185 + 24);
          if (v186 >> 60 == 15)
          {
            v187 = 0;
            v188 = 0;
            v186 = 0xF000000000000000;
          }

          else
          {
            v187 = *(v185 + 8);
            v188 = *(v185 + 16);
            sub_10000AB0C(v188, *(v185 + 24));
          }

          if (qword_10058A850 != -1)
          {
            swift_once();
          }

          v189 = static AWDLActionFrame.ServiceParameter.SSTH.zero;
          v191 = qword_10059B498;
          v190 = unk_10059B4A0;
          if (v186 >> 60 == 15)
          {
            if (unk_10059B4A0 >> 60 == 15)
            {
              sub_10000AB0C(qword_10059B498, unk_10059B4A0);
              sub_10002F75C(v187, v188, v186);
              goto LABEL_138;
            }

LABEL_142:
            sub_10000AB0C(qword_10059B498, unk_10059B4A0);
            sub_10002F75C(v187, v188, v186);
            v195 = v189;
            v196 = v191;
            v197 = v190;
LABEL_143:
            sub_10002F75C(v195, v196, v197);
            goto LABEL_177;
          }

          if (unk_10059B4A0 >> 60 == 15)
          {
            goto LABEL_142;
          }

          sub_10000AB0C(qword_10059B498, unk_10059B4A0);
          if (v189 != v187)
          {
            sub_10002F75C(v189, v191, v190);
            v195 = v187;
            v196 = v188;
            v197 = v186;
            goto LABEL_143;
          }

          sub_10000AB0C(v191, v190);
          sub_10005D4F4(v187, v188, v186);
          v290 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v188, v186, v191, v190);
          sub_10002F75C(v189, v191, v190);
          sub_1000124C8(v191, v190);
          sub_10002F75C(v187, v188, v186);
          sub_10002F75C(v187, v188, v186);
          if ((v290 & 1) == 0)
          {
LABEL_177:

            sub_100010520(v296);
            sub_100010520(v300);
            sub_100010520(v299);
            v287 = v305;
            v286 = v306;
            v288 = v302;
            goto LABEL_178;
          }

LABEL_138:
          v36 = v341;
          v184 = v342;
        }

LABEL_139:
        v192 = v339 + v334[10];
        v193 = *(v192 + 24) >> 60;
        if (v193 == 15)
        {
          v194 = 0;
        }

        else
        {
          v194 = *(v192 + 4);
        }

        v198 = v336;
        *v336 = v194;
        *(v198 + 2) = v193 > 0xE;
        v199 = v334[20];
        v347[0] = *(v339 + v199);
        v309 = v199;
        *(v339 + v199) = &_swiftEmptySetSingleton;
        v200 = v182 + 64;
        v201 = 1 << v182[32];
        v202 = -1;
        if (v201 < 64)
        {
          v202 = ~(-1 << v201);
        }

        v19 = v202 & *(v182 + 8);
        v310 = (v201 + 63) >> 6;
        v322 = (v36 + 48);
        *&v314 = v337 + 48;

        v203 = 0;
        v330 = v182;
        v323 = v182 + 64;
        while (2)
        {
          if (!v19)
          {
            if (v310 <= v203 + 1)
            {
              v205 = v203 + 1;
            }

            else
            {
              v205 = v310;
            }

            v206 = v205 - 1;
            while (1)
            {
              v204 = v203 + 1;
              if (__OFADD__(v203, 1))
              {
                break;
              }

              if (v204 >= v310)
              {
                v258 = sub_10005DC58(&qword_10058FA28, &qword_100493078);
                (*(*(v258 - 8) + 56))(v184, 1, 1, v258);
                v19 = 0;
                v203 = v206;
                goto LABEL_162;
              }

              v19 = *&v200[8 * v204];
              ++v203;
              if (v19)
              {
                v203 = v204;
                goto LABEL_161;
              }
            }

            __break(1u);
LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

          v204 = v203;
LABEL_161:
          v207 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v208 = v207 | (v204 << 6);
          v209 = *(v182 + 7);
          v210 = *(v182 + 6) + 40 * v208;
          v211 = *(v210 + 8);
          v346 = *v210;
          v212 = *(v210 + 24);
          v345 = *(v210 + 16);
          v213 = *(v210 + 32);
          v214 = *(v210 + 33);
          v215 = v315;
          sub_100012400(v209 + *(v316 + 72) * v208, v315, &qword_10058F3A0, &qword_100492310);
          v216 = sub_10005DC58(&qword_10058FA28, &qword_100493078);
          v217 = *(v216 + 48);
          v218 = v342;
          v219 = v345;
          *v342 = v346;
          v218[1] = v211;
          v218[2] = v219;
          v218[3] = v212;
          *(v218 + 32) = v213;
          v184 = v218;
          *(v218 + 33) = v214;
          sub_10001CEA8(v215, v218 + v217, &qword_10058F3A0, &qword_100492310);
          (*(*(v216 - 8) + 56))(v184, 0, 1, v216);

LABEL_162:
          v220 = v329;
          sub_10001CEA8(v184, v329, &qword_10058FA20, &qword_100493070);
          v221 = sub_10005DC58(&qword_10058FA28, &qword_100493078);
          if ((*(*(v221 - 8) + 48))(v220, 1, v221) == 1)
          {

            sub_1001AD1B4(v347[0], v339);

            goto LABEL_177;
          }

          v222 = *(v220 + 8);
          v223 = *(v220 + 24);

          v224 = v220 + *(v221 + 48);
          v225 = *v224;
          v226 = *(v224 + 8);
          v337 = *(v224 + 16);
          v338 = v225;
          v340 = *(v224 + 24);
          v341 = v226;
          LODWORD(v336) = *(v224 + 32);
          LODWORD(v335) = *(v224 + 33);
          v227 = *(v224 + 88);
          v228 = *(v327 + 64);
          v229 = v324;
          *(v324 + 40) = *(v224 + 40);
          *(v229 + 7) = *(v224 + 56);
          *(v229 + 9) = *(v224 + 72);
          v229[11] = v227;
          sub_10001CEA8(v224 + v228, v229 + v228, &unk_10058B750, &unk_100480AB0);
          v230 = v229[5];
          v231 = v229[6];
          v232 = v229[7];
          v233 = v229[9];
          v234 = v229[10];
          v343 = v229[8];
          v344 = v233;
          v235 = v229[11];
          v345 = v234;
          v346 = v235;
          v236 = v229 + v228;
          v237 = v326;
          sub_10001CEA8(v236, v326, &unk_10058B750, &unk_100480AB0);
          if ((*v322)(v237, 1, v328) == 1)
          {
            sub_1000835CC(v230, v231, v232, v343, v344, v345, v346);

            sub_100016290(v237, &unk_10058B750, &unk_100480AB0);
          }

          else
          {
            v238 = v325;
            sub_1000390BC(v237, v325, type metadata accessor for DNSRecords.SRV);
            v239 = v331;
            sub_100044904(v238, &v331[*(v332 + 28)], type metadata accessor for DNSRecords.SRV);
            *v239 = 0;
            v240 = v341;
            *(v239 + 8) = v338;
            *(v239 + 16) = v240;
            v241 = v340;
            *(v239 + 24) = v337;
            *(v239 + 32) = v241;
            *(v239 + 40) = v336;
            *(v239 + 41) = v335;
            *(v239 + 48) = v230;
            *(v239 + 56) = v231;
            v242 = v343;
            v243 = v344;
            *(v239 + 64) = v232;
            *(v239 + 72) = v242;
            v244 = v345;
            v245 = v346;
            *(v239 + 80) = v243;
            *(v239 + 88) = v244;
            *(v239 + 96) = v245;
            v319 = v230;
            v320 = v231;
            v321 = v232;
            sub_100083900(v230, v231, v232, v242, v243, v244, v245);
            sub_1001D4E10(v239, v333);
            v246 = *(v239 + 48);
            v247 = *(v239 + 56);
            v248 = *(v239 + 64);
            v249 = *(v239 + 72);
            v250 = *(v239 + 80);
            v251 = *(v239 + 88);
            v252 = v246;
            v340 = v248;
            v341 = v247;
            v253 = *(v239 + 96);
            v337 = v250;
            v338 = v249;
            v335 = v253;
            v336 = v251;
            if (!v247)
            {
              *&v317 = v253;
              v318 = v251;
              v254 = v250;
              v308 = v249;
              v255 = v248;
              v256 = v246;
              v257 = v307;
              sub_100012400(v333, v307, &qword_10058FA18, &qword_100493068);
              if ((*v314)(v257, 1, v332) == 1)
              {
                sub_100016290(v257, &qword_10058FA18, &qword_100493068);
                v252 = 0;
                v340 = 0;
                v341 = 0;
                v337 = 0;
                v338 = 0;
                v335 = 0;
                v336 = 0;
              }

              else
              {
                v252 = v257[6];
                v259 = v257[7];
                v260 = v257[9];
                v261 = v257[10];
                v262 = v257[11];
                v263 = v257[12];
                v340 = v257[8];
                v341 = v259;
                v337 = v261;
                v338 = v260;
                v335 = v263;
                v336 = v262;
                sub_100083900(v252, v259, v340, v260, v261, v262, v263);
                sub_10004496C(v257, type metadata accessor for AWDLPeer.AdvertisedService);
              }

              v246 = v256;
              v247 = 0;
              v248 = v255;
              v249 = v308;
              v250 = v254;
              v251 = v318;
              v253 = v317;
              v239 = v331;
            }

            v318 = v252;
            v264 = *(v239 + 48);
            *&v317 = *(v239 + 56);
            v265 = *(v239 + 64);
            v266 = *(v239 + 72);
            v268 = *(v239 + 80);
            v267 = *(v239 + 88);
            v269 = *(v239 + 96);
            sub_100083900(v246, v247, v248, v249, v250, v251, v253);
            sub_1000835CC(v264, v317, v265, v266, v268, v267, v269);
            v271 = v340;
            v270 = v341;
            *(v239 + 48) = v318;
            *(v239 + 56) = v270;
            v273 = v337;
            v272 = v338;
            *(v239 + 64) = v271;
            *(v239 + 72) = v272;
            v274 = v335;
            v275 = v336;
            *(v239 + 80) = v273;
            *(v239 + 88) = v275;
            *(v239 + 96) = v274;
            v276 = v333;
            v277 = v313;
            sub_100012400(v333, v313, &qword_10058FA18, &qword_100493068);
            if ((*v314)(v277, 1, v332) == 1)
            {
              sub_100016290(v277, &qword_10058FA18, &qword_100493068);
              v278 = v339 + v334[19];
              v279 = sub_1001B9528();
              v280 = v279;
              if ((v279 & 0x100) != 0)
              {
                sub_1000835CC(v319, v320, v321, v343, v344, v345, v346);
                sub_100016290(v276, &qword_10058FA18, &qword_100493068);
                sub_10004496C(v325, type metadata accessor for DNSRecords.SRV);
                v281 = v331;
                goto LABEL_175;
              }
            }

            else
            {
              v282 = v277;
              v280 = *v277;
              sub_10004496C(v282, type metadata accessor for AWDLPeer.AdvertisedService);
            }

            v283 = v331;
            *v331 = v280;
            v284 = v312;
            sub_100044904(v283, v312, type metadata accessor for AWDLPeer.AdvertisedService);
            v285 = v311;
            sub_100159E2C(v311, v284);
            sub_1000835CC(v319, v320, v321, v343, v344, v345, v346);
            sub_10004496C(v285, type metadata accessor for AWDLPeer.AdvertisedService);
            sub_100016290(v276, &qword_10058FA18, &qword_100493068);
            sub_10004496C(v325, type metadata accessor for DNSRecords.SRV);
            v281 = v283;
LABEL_175:
            sub_10004496C(v281, type metadata accessor for AWDLPeer.AdvertisedService);
          }

          v184 = v342;
          v182 = v330;
          v200 = v323;
          continue;
        }
      }
    }

    sub_100044904(v30, v335, type metadata accessor for AWDLActionFrame.ServiceResponse);
    v80 = swift_getEnumCaseMultiPayload();
    if (!v80)
    {
      v100 = v335;
      v101 = *(v335 + 16);
      v348 = *v335;
      v349 = v101;
      v350 = *(v335 + 32);
      v102 = *(v335 + 16);
      v365 = v348;
      v366 = v102;
      v367 = *(v335 + 32);
      v103 = swift_allocObject();
      v104 = *(v100 + 16);
      *(v103 + 16) = *v100;
      *(v103 + 32) = v104;
      *(v103 + 48) = *(v100 + 32);
      sub_1000836D4(&v365, v347);
      sub_100083730(&v366, v347);
      sub_100010520(v296);
      v105 = swift_allocObject();
      *(v105 + 16) = sub_1001AF29C;
      *(v105 + 24) = v103;
      v338 = v105;
      sub_100010520(v300);
      v106 = v330;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v347[0] = v106;
      v108 = sub_10007CE78(&v348);
      v110 = *(v106 + 16);
      v111 = (v109 & 1) == 0;
      v112 = __OFADD__(v110, v111);
      v113 = v110 + v111;
      if (v112)
      {
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      if (*(v106 + 24) >= v113)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v139 = v103;
          v179 = v108;
          v180 = v109;
          sub_100197574();
          v109 = v180;
          v108 = v179;
          goto LABEL_100;
        }
      }

      else
      {
        v114 = v109;
        sub_100190A60(v113, isUniquelyReferenced_nonNull_native);
        v108 = sub_10007CE78(&v348);
        if ((v114 & 1) != (v115 & 1))
        {
          goto LABEL_200;
        }

        v109 = v114;
      }

      v139 = v103;
LABEL_100:
      v19 = v341;
      v140 = v347[0];
      if (v109)
      {
        v141 = *(v316 + 72) * v108;
      }

      else
      {
        v157 = *(v338 + 3);
        v158 = v315;
        v159 = v108;
        sub_1001AE578(*(v338 + 2), v315);
        v140[(v159 >> 6) + 8] |= 1 << v159;
        v160 = v140[6] + 40 * v159;
        v161 = v349;
        *v160 = v348;
        *(v160 + 16) = v161;
        *(v160 + 32) = v350;
        v141 = *(v316 + 72) * v159;
        sub_10001CEA8(v158, v140[7] + v141, &qword_10058F3A0, &qword_100492310);
        v162 = v140[2];
        v112 = __OFADD__(v162, 1);
        v163 = v162 + 1;
        if (v112)
        {
          goto LABEL_198;
        }

        v140[2] = v163;
        sub_1000836D4(&v365, v347);
        sub_100083730(&v366, v347);
        v42 = v343;
      }

      v330 = v140;
      v164 = v140[7] + v141;
      v165 = *(v164 + 8);
      v166 = *(v164 + 24);
      *(v164 + 32) = v350;
      v167 = v349;
      *v164 = v348;
      *(v164 + 16) = v167;

      v300 = sub_1001AF2A4;
      v295 = v139;
      v296 = sub_1001AF29C;
      v298 = v338;
      goto LABEL_116;
    }

    if (v80 != 1)
    {
      v338 = type metadata accessor for DNSRecords.SRV;
      v116 = v321;
      sub_1000390BC(v335, v321, type metadata accessor for DNSRecords.SRV);
      v117 = *(v116 + 16);
      v356 = *v116;
      v357 = v117;
      v358 = *(v116 + 32);
      v118 = *(v116 + 16);
      v359 = v356;
      v360 = v118;
      v361 = *(v116 + 32);
      *&v317 = type metadata accessor for DNSRecords.SRV;
      v119 = v320;
      sub_100044904(v116, v320, type metadata accessor for DNSRecords.SRV);
      v120 = v341;
      v121 = (*(v341 + 80) + 16) & ~*(v341 + 80);
      v122 = swift_allocObject();
      sub_1000390BC(v119, v122 + v121, v338);
      sub_1000836D4(&v359, v347);
      sub_100083730(&v360, v347);
      sub_100010520(v302);
      v123 = v116;
      v124 = v310;
      sub_100044904(v123, v310, v317);
      (*(v120 + 56))(v124, 0, 1, v328);
      v125 = swift_allocObject();
      *(v125 + 16) = sub_1001AF20C;
      *(v125 + 24) = v122;
      v338 = v122;
      sub_100010520(v305);
      v126 = v330;
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v347[0] = v126;
      v129 = sub_10007CE78(&v356);
      v130 = *(v126 + 16);
      v131 = (v128 & 1) == 0;
      v132 = v130 + v131;
      if (__OFADD__(v130, v131))
      {
        goto LABEL_196;
      }

      if (*(v126 + 24) >= v132)
      {
        if ((v127 & 1) == 0)
        {
          v181 = v128;
          sub_100197574();
          v128 = v181;
        }

        v19 = v341;
        v136 = v129;
      }

      else
      {
        v133 = v128;
        sub_100190A60(v132, v127);
        v134 = sub_10007CE78(&v356);
        if ((v133 & 1) != (v135 & 1))
        {
          goto LABEL_200;
        }

        v136 = v134;
        v128 = v133;
        v19 = v341;
      }

      v168 = v347[0];
      if (v128)
      {
        v169 = v125;
        sub_10008378C(&v359);
        sub_1000837E0(&v360);
        v170 = *(v316 + 72) * v136;
      }

      else
      {
        v171 = *(v125 + 16);
        v172 = *(v125 + 24);
        v169 = v125;
        v173 = v315;
        sub_1001AE578(v171, v315);
        v168[(v136 >> 6) + 8] |= 1 << v136;
        v174 = v168[6] + 40 * v136;
        v175 = v357;
        *v174 = v356;
        *(v174 + 16) = v175;
        *(v174 + 32) = v358;
        v170 = *(v316 + 72) * v136;
        sub_10001CEA8(v173, v168[7] + v170, &qword_10058F3A0, &qword_100492310);
        v176 = v168[2];
        v112 = __OFADD__(v176, 1);
        v177 = v176 + 1;
        if (v112)
        {
          goto LABEL_197;
        }

        v168[2] = v177;
      }

      v42 = v343;
      v330 = v168;
      sub_1000B1B78(v310, v168[7] + *(v327 + 64) + v170, &unk_10058B750, &unk_100480AB0);
      sub_10004496C(v321, type metadata accessor for DNSRecords.SRV);
      v305 = sub_1001AF28C;
      v301 = v338;
      v302 = sub_1001AF20C;
      v303 = v169;
      goto LABEL_116;
    }

    v81 = v335;
    v82 = *(v335 + 16);
    v317 = *v335;
    v354[0] = v317;
    v354[1] = v82;
    v83 = *(v335 + 16);
    v354[2] = *(v335 + 32);
    v84 = *(v335 + 48);
    *&v314 = *(v335 + 40);
    v355 = v84;
    v293 = v83;
    v292 = *(v335 + 32);
    v353 = *(v335 + 32);
    v351 = v317;
    v352 = v82;
    v364 = v317;
    v363 = *(v335 + 32);
    v362 = v82;
    v85 = swift_allocObject();
    v86 = *(v81 + 16);
    *(v85 + 16) = *v81;
    *(v85 + 32) = v86;
    *(v85 + 48) = *(v81 + 32);
    *(v85 + 64) = *(v81 + 48);
    sub_1000836D4(&v364, v347);
    sub_100083730(&v362, v347);
    sub_100083AB8(v354, v347);
    sub_100010520(v299);
    v87 = swift_allocObject();
    *(v87 + 16) = sub_1001AF294;
    *(v87 + 24) = v85;
    v338 = v87;
    sub_100010520(v306);
    v88 = v330;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v347[0] = v88;
    v306 = sub_10007CE78(&v351);
    v91 = *(v88 + 16);
    v92 = (v90 & 1) == 0;
    v93 = v91 + v92;
    if (__OFADD__(v91, v92))
    {
      goto LABEL_195;
    }

    v94 = *(v88 + 24);
    v291 = v84;
    if (v94 < v93)
    {
      break;
    }

    if (v89)
    {
      v99 = v85;
    }

    else
    {
      v99 = v85;
      v178 = v90;
      sub_100197574();
      v90 = v178;
    }

    v19 = v341;
    v98 = v306;
LABEL_96:
    v137 = v347[0];
    if (v90)
    {
      sub_10008378C(&v364);
      sub_1000837E0(&v362);
      v138 = *(v316 + 72) * v98;
    }

    else
    {
      v142 = *(v338 + 3);
      v143 = v315;
      sub_1001AE578(*(v338 + 2), v315);
      v137[(v98 >> 6) + 8] |= 1 << v98;
      v144 = v137[6] + 40 * v98;
      v145 = v352;
      *v144 = v351;
      *(v144 + 16) = v145;
      *(v144 + 32) = v353;
      v138 = *(v316 + 72) * v98;
      sub_10001CEA8(v143, v137[7] + v138, &qword_10058F3A0, &qword_100492310);
      v146 = v137[2];
      v112 = __OFADD__(v146, 1);
      v147 = v146 + 1;
      if (v112)
      {
        goto LABEL_199;
      }

      v137[2] = v147;
      v42 = v343;
    }

    v330 = v137;
    v148 = (v137[7] + v138);
    v149 = v148[5];
    v150 = v148[6];
    v151 = v148[7];
    v152 = v148[8];
    v153 = v148[9];
    v154 = v148[10];
    v155 = v148[11];
    *(v148 + 5) = v317;
    *(v148 + 7) = v293;
    v156 = v314;
    v148[9] = v292;
    v148[10] = v156;
    v148[11] = v291;
    sub_1000835CC(v149, v150, v151, v152, v153, v154, v155);
    v306 = sub_1001AF2A4;
    v299 = sub_1001AF294;
    v297 = v99;
    v304 = v338;
LABEL_116:
    sub_10004496C(v30, type metadata accessor for AWDLActionFrame.ServiceResponse);
    LODWORD(v338) = 1;
    LOBYTE(v39) = 1;
    if (v41 == v40)
    {
      goto LABEL_187;
    }
  }

  v95 = v90;
  sub_100190A60(v93, v89);
  v96 = sub_10007CE78(&v351);
  if ((v95 & 1) == (v97 & 1))
  {
    v98 = v96;
    v90 = v95;
    v99 = v85;
    v19 = v341;
    goto LABEL_96;
  }

LABEL_200:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004471C()
{
  v1 = (type metadata accessor for DNSRecords.SRV() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v1[7];
  v8 = type metadata accessor for NWEndpoint.Port();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044834()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_1000124C8(v0[7], v0[8]);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004487C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_100044904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004496C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000449CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    return sub_1000124C8(a3, a4);
  }

  return result;
}

uint64_t sub_1000449E8(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 0xA)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

void sub_100044A04(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v223 = 0;
  v6 = *v2;
  v218 = type metadata accessor for DispatchTime();
  v217 = *(v218 - 8);
  v7 = *(v217 + 64);
  __chkstk_darwin();
  v207 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v220 = &v184 - v9;
  v210 = type metadata accessor for DispatchTimeInterval();
  v209 = *(v210 - 1);
  v10 = *(v209 + 64);
  __chkstk_darwin();
  v208 = (&v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v206 = &v184 - v12;
  v13 = type metadata accessor for AWDLPeer(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v187 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v192 = &v184 - v17;
  __chkstk_darwin();
  v189 = &v184 - v18;
  __chkstk_darwin();
  v186 = &v184 - v19;
  __chkstk_darwin();
  v190 = &v184 - v20;
  v21 = *(v6 + 440);
  v205 = *(v6 + 432);
  v204 = v21;
  v22 = type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  v203 = type metadata accessor for Optional();
  v202 = *(v203 - 8);
  v23 = *(v202 + 64);
  __chkstk_darwin();
  v201 = &v184 - v24;
  v25 = *(*(sub_10005DC58(&unk_10059B090, &unk_1004B1830) - 8) + 64);
  __chkstk_darwin();
  v191 = &v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v197 = &v184 - v27;
  __chkstk_darwin();
  v196 = &v184 - v28;
  __chkstk_darwin();
  v198 = &v184 - v29;
  __chkstk_darwin();
  v193 = &v184 - v30;
  __chkstk_darwin();
  v199 = &v184 - v31;
  __chkstk_darwin();
  v188 = &v184 - v32;
  __chkstk_darwin();
  v195 = &v184 - v33;
  __chkstk_darwin();
  v194 = &v184 - v34;
  __chkstk_darwin();
  v200 = &v184 - v35;
  __chkstk_darwin();
  v37 = &v184 - v36;
  v38 = sub_100046564(a2 & 0xFFFFFFFFFFFFLL);
  v39 = WiFiAddress.apiAddress.getter(a2 & 0xFFFFFFFFFFFFLL);
  sub_100027648(a1, v37, type metadata accessor for AWDLPeer);
  v213 = v14;
  v40 = *(v14 + 56);
  v215 = v14 + 56;
  v214 = v40;
  v40(v37, 0, 1, v13);
  v41 = *(*v2 + 448);
  swift_beginAccess();
  v224 = a2;
  sub_1000467B4(v37, a2 & 0xFFFFFFFFFFFFLL);
  swift_endAccess();
  v219 = v41;
  v212 = v38;
  v216 = a1;
  v221 = v13;
  v222 = v39;
  v211 = v22;
  if (v38)
  {
    v42 = sub_100046D70();
    v43 = *(a1 + *(v13 + 112));
    v44 = v43 | v42;
    if (v43 != 1)
    {
LABEL_24:
      LODWORD(v205) = v44;
      v90 = v218;
      v91 = v217;
      v45 = v220;
LABEL_46:
      v108 = v210;
      goto LABEL_47;
    }

    v45 = v220;
    v46 = v22;
    if ((v42 & 1) == 0)
    {
      goto LABEL_13;
    }

    LODWORD(v205) = v43 | v42;
LABEL_45:
    v90 = v218;
    v91 = v217;
    goto LABEL_46;
  }

  v47 = [objc_allocWithZone(AWDLTrafficRegistrationConfiguration) initWithUniqueIdentifier:AWDLTrafficRegistrationServiceAssistedDiscovery peerAddress:v39];
  v48 = *(*v3 + 568);
  swift_beginAccess();
  v49 = *(v3 + v48);
  v229 = v47;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v50 = v201;
  Dictionary.subscript.getter();

  swift_endAccess();
  LODWORD(v47) = (*(*(v22 - 8) + 48))(v50, 1, v22);
  (*(v202 + 8))(v50, v203);
  v46 = v22;
  if (v47 != 1)
  {
    sub_10004D020();
    sub_100377818();
  }

  v51 = sub_100046D70();
  v41 = v219;
  v45 = v220;
  if (v51)
  {
    LOBYTE(v52) = sub_100046D70();
    swift_beginAccess();
    v53 = *(v3 + v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v41;
    v41 = isUniquelyReferenced_nonNull_native;
    v229 = *(v3 + v55);
    v56 = v229;
    *(v3 + v55) = 0x8000000000000000;
    v58 = sub_100041DE8(v224 & 0xFFFFFFFFFFFFLL);
    v59 = v56[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v45 = v57;
    if (v56[3] >= v61)
    {
      if ((v41 & 1) == 0)
      {
        goto LABEL_82;
      }

      if ((v57 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100310628(v61, v41);
      v62 = sub_100041DE8(v224 & 0xFFFFFFFFFFFFLL);
      if ((v45 & 1) != (v63 & 1))
      {
        goto LABEL_90;
      }

      v58 = v62;
      if ((v45 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_27:
    v92 = v229;
    v93 = v213;
    v94 = *(v213 + 72) * v58;
    v95 = v199;
    sub_10003DFE0(v229[7] + v94, v199, type metadata accessor for AWDLPeer);
    v96 = v221;
    v214(v95, 0, 1, v221);
    *(v95 + *(v96 + 112)) = v52 & 1;
    v97 = v95;
    v98 = v193;
    sub_100012400(v97, v193, &unk_10059B090, &unk_1004B1830);
    if ((*(v93 + 48))(v98, 1, v96) == 1)
    {
      sub_100016290(v98, &unk_10059B090, &unk_1004B1830);
      sub_10004B80C(v58, v92, type metadata accessor for AWDLPeer);
    }

    else
    {
      v106 = v189;
      sub_10003DFE0(v98, v189, type metadata accessor for AWDLPeer);
      sub_10003DFE0(v106, *(v92 + 56) + v94, type metadata accessor for AWDLPeer);
    }

    v90 = v218;
    v107 = v217;
    v45 = v220;
    v108 = v210;
    v109 = v219;
    sub_100016290(v199, &unk_10059B090, &unk_1004B1830);
    *(v3 + v109) = v92;
    swift_endAccess();
    LODWORD(v205) = 1;
    v91 = v107;
LABEL_47:
    v220 = type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    v41 = *(*v3 + 600);
    swift_beginAccess();
    v127 = v207;
    (*(v91 + 16))(v207, v3 + v41, v90);
    v128 = v45;
    v129 = v206;
    DispatchTime.distance(to:)();
    v130 = *(v91 + 8);
    v130(v127, v90);
    v130(v128, v90);
    v131 = v208;
    *v208 = 10;
    v132 = v209;
    (*(v209 + 104))(v131, enum case for DispatchTimeInterval.seconds(_:), v108);
    v133 = static DispatchTimeInterval.< infix(_:_:)();
    v134 = *(v132 + 8);
    v134(v131, v108);
    v134(v129, v108);
    if (v133)
    {
      v38 = v211;
      v46 = v216;
      v135 = v221;
    }

    else
    {
      v136 = *(*v3 + 608);
      swift_beginAccess();
      v210 = &v184;
      v137 = *(v3 + v136);
      __chkstk_darwin();
      *(&v184 - 2) = v222;
      *(&v184 - 1) = v3;
      v138 = v217;
      sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v139 = v211;
      sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

      v38 = v139;
      v140 = v223;
      v141 = Dictionary.filter(_:)();
      v223 = v140;
      v46 = v216;
      v135 = v221;
      sub_10044E1B8(v141);
      variable initialization expression of AWDLPeer.lastUpdated();
      swift_beginAccess();
      (*(v138 + 40))(v3 + v41, v128, v218);
      swift_endAccess();
    }

    if (v212)
    {
      if (v205 & 1 | ((*(v46 + *(v135 + 116)) & 1) == 0))
      {
        sub_1000473F0(v46, type metadata accessor for AWDLPeer);

        return;
      }

      goto LABEL_59;
    }

    if ((v205 & 1) == 0)
    {
LABEL_59:
      v46 = v224;
      v152 = v224 >> 40;
      v153 = HIDWORD(v224);
      v58 = v224 >> 24;
      v154 = v224 >> 16;
      v155 = v224 >> 8;
      v227 = 0;
      v156 = *(*v3 + 608);
      swift_beginAccess();
      v220 = &v184;
      v226 = *(v3 + v156);
      __chkstk_darwin();
      *(&v184 - 4) = v222;
      *(&v184 - 3) = v3;
      *(&v184 - 16) = v46;
      *(&v184 - 15) = v155;
      *(&v184 - 14) = v154;
      *(&v184 - 13) = v58;
      *(&v184 - 12) = v153;
      *(&v184 - 11) = v152;
      *(&v184 - 1) = &v227;
      sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      type metadata accessor for Dictionary();

      swift_getWitnessTable();
      LOBYTE(v52) = v223;
      Sequence.forEach(_:)();

      LOBYTE(v58) = v227;
      v41 = v219;
      swift_beginAccess();
      v157 = *(v3 + v41);
      v158 = swift_isUniquelyReferenced_nonNull_native();
      v225 = *(v3 + v41);
      v159 = v225;
      *(v3 + v41) = 0x8000000000000000;
      v22 = sub_100041DE8(v46 & 0xFFFFFFFFFFFFLL);
      v161 = *(v159 + 16);
      v162 = (v160 & 1) == 0;
      v163 = v161 + v162;
      if (!__OFADD__(v161, v162))
      {
        LOBYTE(v52) = v160;
        if (*(v159 + 24) < v163)
        {
          sub_100310628(v163, v158);
          v164 = sub_100041DE8(v224 & 0xFFFFFFFFFFFFLL);
          v38 = v221;
          v46 = v198;
          if ((v52 & 1) != (v165 & 1))
          {
            goto LABEL_90;
          }

          v22 = v164;
          goto LABEL_64;
        }

        v38 = v221;
        v46 = v198;
        if (v158)
        {
LABEL_64:
          v166 = v216;
          if ((v52 & 1) == 0)
          {
            v214(v46, 1, 1, v38);
            __break(1u);
            goto LABEL_89;
          }

          v167 = v58 ^ 1;
          v168 = v225;
          v169 = v213;
          v170 = *(v213 + 72) * v22;
          sub_10003DFE0(*(v225 + 56) + v170, v46, type metadata accessor for AWDLPeer);
          v214(v46, 0, 1, v38);
          *(v46 + *(v38 + 116)) = v167;
          v171 = v196;
          sub_100012400(v46, v196, &unk_10059B090, &unk_1004B1830);
          if ((*(v169 + 48))(v171, 1, v38) == 1)
          {
            sub_100016290(v171, &unk_10059B090, &unk_1004B1830);
            sub_10004B80C(v22, v168, type metadata accessor for AWDLPeer);
          }

          else
          {
            v172 = v171;
            v173 = v192;
            sub_10003DFE0(v172, v192, type metadata accessor for AWDLPeer);
            sub_10003DFE0(v173, *(v168 + 56) + v170, type metadata accessor for AWDLPeer);
          }

          v174 = v222;
          sub_100016290(v46, &unk_10059B090, &unk_1004B1830);
          *(v3 + v41) = v168;
          swift_endAccess();

          v175 = v166;
          goto LABEL_75;
        }

LABEL_80:
        sub_10046B248();
        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_77;
    }

    v38 = v135;
    v22 = sub_100046D70();
    v142 = v219;
    swift_beginAccess();
    v143 = *(v3 + v142);
    LODWORD(v58) = swift_isUniquelyReferenced_nonNull_native();
    v226 = *(v3 + v142);
    v144 = v226;
    *(v3 + v142) = 0x8000000000000000;
    v52 = sub_100041DE8(v224 & 0xFFFFFFFFFFFFLL);
    v146 = *(v144 + 16);
    v147 = (v145 & 1) == 0;
    v148 = v146 + v147;
    if (__OFADD__(v146, v147))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v149 = v145;
    if (*(v144 + 24) < v148)
    {
      sub_100310628(v148, v58);
      v150 = sub_100041DE8(v224 & 0xFFFFFFFFFFFFLL);
      if ((v149 & 1) != (v151 & 1))
      {
        goto LABEL_90;
      }

      v52 = v150;
      if ((v149 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_71:
      v176 = v226;
      v177 = v213;
      v178 = *(v213 + 72) * v52;
      v179 = v197;
      sub_10003DFE0(*(v226 + 56) + v178, v197, type metadata accessor for AWDLPeer);
      v214(v179, 0, 1, v38);
      *(v179 + *(v38 + 116)) = v22 & 1;
      v180 = v179;
      v181 = v191;
      sub_100012400(v180, v191, &unk_10059B090, &unk_1004B1830);
      if ((*(v177 + 48))(v181, 1, v38) == 1)
      {
        sub_100016290(v181, &unk_10059B090, &unk_1004B1830);
        sub_10004B80C(v52, v176, type metadata accessor for AWDLPeer);
      }

      else
      {
        v182 = v187;
        sub_10003DFE0(v181, v187, type metadata accessor for AWDLPeer);
        sub_10003DFE0(v182, *(v176 + 56) + v178, type metadata accessor for AWDLPeer);
      }

      v183 = v222;
      sub_100016290(v197, &unk_10059B090, &unk_1004B1830);
      *(v3 + v142) = v176;
      swift_endAccess();

      v175 = v46;
LABEL_75:
      sub_1000473F0(v175, type metadata accessor for AWDLPeer);
      return;
    }

    if (v58)
    {
      if (v145)
      {
        goto LABEL_71;
      }
    }

    else
    {
      sub_10046B248();
      if (v149)
      {
        goto LABEL_71;
      }
    }

LABEL_58:
    v214(v197, 1, 1, v38);
    __break(1u);
    goto LABEL_59;
  }

  while (1)
  {
LABEL_13:
    v64 = *(*v3 + 584);
    swift_beginAccess();
    v65 = *(v3 + v64);
    __chkstk_darwin();
    v66 = v204;
    *(&v184 - 4) = v205;
    *(&v184 - 3) = v66;
    *(&v184 - 2) = v222;
    v67 = sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v68 = sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

    v52 = v223;
    v205 = Dictionary.filter(_:)();
    v223 = v67;
    v38 = v46;
    if ((Dictionary.isEmpty.getter() & 1) == 0)
    {
      v203 = v68;
      swift_beginAccess();
      v80 = *(v3 + v41);
      LODWORD(v58) = swift_isUniquelyReferenced_nonNull_native();
      v228 = *(v3 + v41);
      v81 = v228;
      *(v3 + v41) = 0x8000000000000000;
      v22 = sub_100041DE8(v224 & 0xFFFFFFFFFFFFLL);
      v83 = *(v81 + 16);
      v84 = (v82 & 1) == 0;
      v85 = v83 + v84;
      if (__OFADD__(v83, v84))
      {
        goto LABEL_78;
      }

      v86 = v82;
      v87 = *(v81 + 24);
      v204 = v52;
      if (v87 < v85)
      {
        sub_100310628(v85, v58);
        v88 = sub_100041DE8(v224 & 0xFFFFFFFFFFFFLL);
        if ((v86 & 1) != (v89 & 1))
        {
          goto LABEL_90;
        }

        v22 = v88;
        if ((v86 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_31:
        v99 = v228;
        v100 = v213;
        v101 = *(v213 + 72) * v22;
        v102 = v200;
        sub_10003DFE0(*(v228 + 56) + v101, v200, type metadata accessor for AWDLPeer);
        v103 = v221;
        v214(v102, 0, 1, v221);
        *(v102 + *(v103 + 112)) = 1;
        v104 = v102;
        v105 = v194;
        sub_100012400(v104, v194, &unk_10059B090, &unk_1004B1830);
        if ((*(v100 + 48))(v105, 1, v103) == 1)
        {
          sub_100016290(v105, &unk_10059B090, &unk_1004B1830);
          sub_10004B80C(v22, v99, type metadata accessor for AWDLPeer);
        }

        else
        {
          v110 = v190;
          sub_10003DFE0(v105, v190, type metadata accessor for AWDLPeer);
          sub_10003DFE0(v110, *(v99 + 56) + v101, type metadata accessor for AWDLPeer);
        }

        v45 = v220;
        sub_100016290(v200, &unk_10059B090, &unk_1004B1830);
        *(v3 + v41) = v99;
        swift_endAccess();
        v52 = v204;
LABEL_44:
        v229 = v205;
        v121 = __chkstk_darwin();
        *(&v184 - 2) = v3;
        *(&v184 - 8) = v121;
        *(&v184 - 7) = v122;
        *(&v184 - 6) = v123;
        *(&v184 - 5) = v124;
        *(&v184 - 4) = v125;
        *(&v184 - 3) = v126;
        type metadata accessor for Dictionary();
        swift_getWitnessTable();
        Sequence.forEach(_:)();
        v223 = v52;

        LODWORD(v205) = 0;
        goto LABEL_45;
      }

      if (v58)
      {
        if (v82)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_10046B248();
        if (v86)
        {
          goto LABEL_31;
        }
      }

LABEL_23:
      v214(v200, 1, 1, v221);
      __break(1u);
      goto LABEL_24;
    }

    if ((v212 & 1) == 0)
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v69 = *(v3 + v41);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v228 = *(v3 + v41);
    v70 = v228;
    *(v3 + v41) = 0x8000000000000000;
    v72 = sub_100041DE8(v224 & 0xFFFFFFFFFFFFLL);
    v73 = *(v70 + 16);
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (!__OFADD__(v73, v74))
    {
      break;
    }

    __break(1u);
LABEL_82:
    sub_10046B248();
    if (v45)
    {
      goto LABEL_27;
    }

LABEL_12:
    v214(v199, 1, 1, v221);
    __break(1u);
  }

  v76 = v71;
  v77 = *(v70 + 24);
  v185 = v3;
  if (v77 >= v75)
  {
    if ((v58 & 1) == 0)
    {
      sub_10046B248();
    }
  }

  else
  {
    sub_100310628(v75, v58);
    v78 = sub_100041DE8(v224 & 0xFFFFFFFFFFFFLL);
    if ((v76 & 1) != (v79 & 1))
    {
      goto LABEL_90;
    }

    v72 = v78;
  }

  v204 = v52;
  if (v76)
  {
    v111 = v45;
    v112 = v228;
    v113 = v213;
    v114 = *(v213 + 72) * v72;
    v115 = v195;
    sub_10003DFE0(*(v228 + 56) + v114, v195, type metadata accessor for AWDLPeer);
    v116 = v221;
    v214(v115, 0, 1, v221);
    *(v115 + *(v116 + 112)) = 0;
    v117 = v115;
    v118 = v188;
    sub_100012400(v117, v188, &unk_10059B090, &unk_1004B1830);
    if ((*(v113 + 48))(v118, 1, v116) == 1)
    {
      sub_100016290(v118, &unk_10059B090, &unk_1004B1830);
      sub_10004B80C(v72, v112, type metadata accessor for AWDLPeer);
    }

    else
    {
      v119 = v118;
      v120 = v186;
      sub_10003DFE0(v119, v186, type metadata accessor for AWDLPeer);
      sub_10003DFE0(v120, *(v112 + 56) + v114, type metadata accessor for AWDLPeer);
    }

    v45 = v111;
    v52 = v204;
    sub_100016290(v195, &unk_10059B090, &unk_1004B1830);
    v3 = v185;
    *(v185 + v41) = v112;
    swift_endAccess();
    goto LABEL_44;
  }

LABEL_89:
  v214(v195, 1, 1, v221);
  __break(1u);
LABEL_90:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

BOOL sub_100046564(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&unk_10059B090, &unk_1004B1830) - 8) + 64);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = *(*v1 + 448);
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (v8 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for AWDLPeer(0);
    v13 = *(v12 - 8);
    sub_100027648(v11 + *(v13 + 72) * v10, v5, type metadata accessor for AWDLPeer);
    (*(v13 + 56))(v5, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for AWDLPeer(0);
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  swift_endAccess();
  type metadata accessor for AWDLPeer(0);
  v14 = (*(*(v12 - 8) + 48))(v5, 1, v12) != 1;
  sub_100016290(v5, &unk_10059B090, &unk_1004B1830);
  return v14;
}

id WiFiAddress.apiAddress.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(WiFiMACAddress);

  return [v2 initWithAddress:a1 & 0xFFFFFFFFFFFFLL];
}

uint64_t sub_1000467B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(sub_10005DC58(&unk_10059B090, &unk_1004B1830) - 8) + 64);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = type metadata accessor for AWDLPeer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100016290(a1, &unk_10059B090, &unk_1004B1830);
    v14 = *v2;
    v15 = sub_100041DE8(a2 & 0xFFFFFFFFFFFFLL);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046B248();
        v20 = v25;
      }

      sub_10036D640(*(v20 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for AWDLPeer);
      sub_10004B7F4(v17, v20);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100016290(v8, &unk_10059B090, &unk_1004B1830);
  }

  else
  {
    sub_10036D640(a1, v13, type metadata accessor for AWDLPeer);
    v21 = *v2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    result = sub_100046AF0(v13, a2 & 0xFFFFFFFFFFFFLL, v22);
    *v2 = v25;
  }

  return result;
}

uint64_t sub_100046A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046A70(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  a2(v10, a1 & 0xFFFFFFFFFFFFLL);
  v7 = Hasher._finalize()();

  return a3(a1 & 0xFFFFFFFFFFFFLL, v7);
}

uint64_t sub_100046AF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for AWDLPeer(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for AWDLPeer);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046B248();
    goto LABEL_7;
  }

  sub_100310628(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DDD5C(v10, a2 & 0xFFFFFFFFFFFFLL, a1, v16);
}

void NANClusterChangeEvent.hash(into:)(int a1, unint64_t a2)
{
  v2 = a2 >> 8;
  v3 = a2 >> 16;
  v4 = a2 >> 24;
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

uint64_t sub_100046D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046D70()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v14 - v6;
  sub_100046F00(&v14 - v6);
  *v5 = 10;
  (*(v2 + 104))(v5, enum case for DispatchTimeInterval.seconds(_:), v1);
  v8 = static DispatchTimeInterval.< infix(_:_:)();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  if (v8)
  {
    v10 = *(v0 + *(*v0 + 736));
    swift_unownedRetainStrong();
    sub_1003EB084();
    v12 = v11;

    if (!v12)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100046F00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = *(*v1 + 696);
  swift_beginAccess();
  sub_100012400(v1 + v13, v5, &unk_100597330, &unk_100481FA0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100016290(v5, &unk_100597330, &unk_100481FA0);
    v14 = enum case for DispatchTimeInterval.never(_:);
    v15 = type metadata accessor for DispatchTimeInterval();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    DispatchTime.distance(to:)();
    v17 = *(v7 + 8);
    v17(v10, v6);
    return (v17)(v12, v6);
  }
}

BOOL static DispatchTimeInterval.< infix(_:_:)()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = enum case for DispatchTimeInterval.never(_:);
  v6 = v1[13];
  v6(v4, enum case for DispatchTimeInterval.never(_:), v0);
  v7 = static DispatchTimeInterval.== infix(_:_:)();
  v8 = v1[1];
  v8(v4, v0);
  if (v7)
  {
    return 0;
  }

  v6(v4, v5, v0);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v8(v4, v0);
  if (v10)
  {
    return 1;
  }

  v11 = sub_100028EF8();
  return v11 < sub_100028EF8();
}

uint64_t sub_1000472EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100047340(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100018AB4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100047390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000473F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100047450()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80) - 8) + 64);
  __chkstk_darwin();
  v5 = &v14 - v4;
  v6 = v2[93];
  if (*(v1 + v6))
  {
    v7 = *(v1 + v6);
  }

  else
  {
    v8 = v2[54];
    v9 = *(v2[55] + 8);
    type metadata accessor for LocaleManager();
    v10 = *(v1 + v2[92]);
    swift_unownedRetainStrong();
    sub_1003EB9D8(v5);

    v11 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v7 = sub_10042880C(v1, v5, v11);

    v12 = *(v1 + v6);
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t AWDLPeer.countryCode.getter()
{
  v1 = *(*(sub_10005DC58(&qword_10058D450, &unk_100486D78) - 8) + 64);
  __chkstk_darwin();
  v3 = (&v10 - v2);
  v4 = type metadata accessor for AWDLPeer(0);
  sub_100012400(v0 + *(v4 + 56), v3, &qword_10058D450, &unk_100486D78);
  v5 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_100016290(v3, &qword_10058D450, &unk_100486D78);
  }

  else
  {
    v6 = *v3;
    v7 = *(v3 + 2);
    sub_10004496C(v3, type metadata accessor for AWDLActionFrame.DataPathState);
    if ((v7 & 1) == 0)
    {
      v8 = v6 >> 8;
      return v6 | (v8 << 8);
    }
  }

  if (qword_10058A898 != -1)
  {
    swift_once();
  }

  LOBYTE(v6) = static CountryCode.unknown;
  v8 = HIBYTE(static CountryCode.unknown);
  return v6 | (v8 << 8);
}

uint64_t sub_100047728()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for Preferences();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v8 = *(v0 + qword_10059A828);
  v9 = swift_unownedRetainStrong();
  (*(*v8 + 192))(v9);

  v10 = Preferences.enableUserspaceP2POptions.getter(v3);
  (*(v4 + 8))(v7, v3);
  if ((*PreferenceDefaults.EnableUserspaceP2POptions.localeManager.unsafeMutableAddressor() & ~v10) != 0)
  {
    v14 = 0;
  }

  else
  {
    v11 = swift_unownedRetainStrong();
    v12 = (*(*v8 + 200))(v11);

    v13 = *WiFiDriverCapabilities.peerCountryCodeLearningCapable.unsafeMutableAddressor();
    v16[0] = v12;
    v16[1] = v13;
    sub_1000C2A14();

    v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  }

  return v14 & 1;
}

void sub_1000479A0(__int16 a1)
{
  if (sub_100047728())
  {
    *(v1 + qword_10059A810) = a1;
    sub_100427868();
    *(v1 + qword_10059A818) = 3;

    sub_1004279D0();
  }
}

uint64_t WiFiInterface.preferences.getter()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 120);
  v6 = swift_checkMetadataState();
  return v5(v6, AssociatedConformanceWitness);
}

uint64_t sub_100047AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Preferences();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t Preferences.enableUserspaceP2POptions.getter(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(a1 + 24);
  v5[0] = *(a1 + 16);
  v5[1] = &type metadata for PreferenceDefaults.EnableUserspaceP2POptions;
  v5[2] = v2;
  v5[3] = sub_100047C68();
  v3 = type metadata accessor for Preferences.EnumPreference();
  Preferences.EnumPreference.wrappedValue.getter(v3, v5);
  return v5[0];
}

unint64_t sub_100047C68()
{
  result = qword_10058D6C8;
  if (!qword_10058D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D6C8);
  }

  return result;
}

uint64_t Preferences.EnumPreference.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = *(a1 + 52);
  v17 = *(a1 + 16);
  v18 = *(a1 + 32);
  v19 = type metadata accessor for Preferences.Preference();
  Preferences.Preference.wrappedValue.getter(v19, v10);
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v20 = *(v6 - 8);
  v21 = *(v20 + 48);
  if (v21(v15, 1, v6) != 1)
  {
    return (*(v20 + 32))(v24, v15, v6);
  }

  (*(v20 + 16))(v24, v3, v6);
  result = (v21)(v15, 1, v6);
  if (result != 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t Preferences.Preference.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - v10;
  if (*(v2 + *(a1 + 52)) == 1)
  {
    v12 = v9;
    (*(*(a1 + 32) + 8))(*(v2 + *(a1 + 44)), v5, *(a1 + 16));
    v13 = *(v5 - 8);
    v14 = *(v13 + 48);
    if (v14(v11, 1, v5) == 1)
    {
      (*(v13 + 16))(a2, v2 + *(a1 + 48), v5);
      result = v14(v11, 1, v5);
      if (result != 1)
      {
        return (*(v7 + 8))(v11, v12);
      }
    }

    else
    {
      return (*(v13 + 32))(a2, v11, v5);
    }
  }

  else
  {
    v16 = *(*(v5 - 8) + 16);
    v17 = v2 + *(a1 + 48);

    return v16(a2, v17, v5);
  }

  return result;
}

void LockedPreferencesStorage.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v20 - v13;
  os_unfair_lock_lock(*(*v5 + 16));
  v15 = *(a2 + 16);
  v16 = *(*(a2 + 24) + 8);
  v17 = v5 + *(a2 + 36);
  v16(a1, a3, v15);
  v18 = *(a3 - 8);
  if ((*(v18 + 48))(v14, 1, a3) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v19 = 1;
  }

  else
  {
    (*(v18 + 32))(a4, v14, a3);
    v19 = 0;
  }

  (*(v18 + 56))(a4, v19, 1, a3);
  os_unfair_lock_unlock(*(*v5 + 16));
}

uint64_t CachedPreferenceStorage.subscript.getter@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v43 = a2;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v35 - v12;
  __chkstk_darwin();
  v14 = &v35 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v39 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v35 - v18;
  v42 = v4;
  v20 = *v4;
  v44 = a1;
  InMemoryPreferenceStorage.subscript.getter(a1, a3, v14);
  v21 = *(v15 + 48);
  if (v21(v14, 1, a3) == 1)
  {
    v37 = v8;
    v38 = a4;
    v36 = *(v9 + 8);
    v36(v14, v8);
    v22 = v43;
    v24 = *(v43 + 16);
    v23 = *(v43 + 24);
    v25 = type metadata accessor for CachedPreferenceStorage.EmptyPreference();
    InMemoryPreferenceStorage.subscript.getter(v44, v25, &v46);
    if ((v46 & 1) == 0)
    {
      return (*(v15 + 56))(v38, 1, 1, a3);
    }

    v35 = v20;
    v26 = *(v22 + 36);
    v27 = v41;
    (*(v23 + 8))(v44, a3, v24, v23);
    if (v21(v27, 1, a3) == 1)
    {
      v36(v27, v37);
      v45 = 0;
      sub_100124E60(&v45, v44);
      return (*(v15 + 56))(v38, 1, 1, a3);
    }

    v30 = *(v15 + 32);
    v31 = v39;
    v30(v39, v27, a3);
    v32 = v40;
    (*(v15 + 16))(v40, v31, a3);
    v33 = *(v15 + 56);
    v33(v32, 0, 1, a3);
    sub_100124E60(v32, v44);
    v36(v32, v37);
    v34 = v38;
    v30(v38, v31, a3);
    return v33(v34, 0, 1, a3);
  }

  else
  {
    v29 = *(v15 + 32);
    v29(v19, v14, a3);
    v29(a4, v19, a3);
    return (*(v15 + 56))(a4, 0, 1, a3);
  }
}

uint64_t InMemoryPreferenceStorage.subscript.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = PreferencesName.rawValue.getter(a1);
  v8 = v7;
  swift_beginAccess();
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (, v10 = sub_1000102E8(v6, v8), v12 = v11, , (v12 & 1) != 0))
  {
    sub_100002B30(*(v9 + 56) + 32 * v10, v15);
  }

  else
  {

    memset(v15, 0, sizeof(v15));
  }

  sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
  v13 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v13 ^ 1u, 1, a2);
}

unint64_t PreferencesName.rawValue.getter(char a1)
{
  result = 1818523489;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 28:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
    case 29:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 8:
    case 16:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      return result;
    case 12:
      result = 0x4143414D6C647761;
      break;
    case 13:
      result = 7233902;
      break;
    case 14:
      result = 0x644143414D6E616ELL;
      break;
    case 15:
    case 30:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x5374694B65676465;
      break;
    case 18:
    case 19:
    case 26:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0xD000000000000021;
      break;
    case 21:
      result = 0xD000000000000016;
      break;
    case 22:
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 24:
      result = 0xD00000000000001FLL;
      break;
    case 25:
      result = 0xD000000000000025;
      break;
    case 27:
      result = 0xD00000000000001ELL;
      break;
    case 31:
      result = 0xD00000000000001CLL;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

void *sub_100048C30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100048C4C(uint64_t result)
{
  if (result >> 30 <= 1)
  {
  }

  return result;
}

uint64_t sub_100048C6C(uint64_t *a1)
{
  v3 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v4 = a1[3];
  sub_100029B34(a1, v4);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v14, v15);
    sub_100048E7C();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v4 = v16;
    sub_100031694(v14, v15);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v6 = v15;
    sub_100031694(v14, v15);
    v8 = UnkeyedDecodingContainer.decodeData(with:)(v5, v6);
    v10 = v9;
    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    v12 = v11;
    sub_1000124C8(v8, v10);
    if (v12)
    {
      sub_100002A00(v14);
      sub_100002A00(a1);
      return v4;
    }

    sub_10000B02C();
    swift_allocError();
    *v13 = xmmword_10047CE70;
    *(v13 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v14);
  }

  sub_100002A00(a1);
  return v4;
}

unint64_t sub_100048E7C()
{
  result = qword_10058ECF0;
  if (!qword_10058ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ECF0);
  }

  return result;
}

unint64_t sub_100048F30()
{
  result = qword_10058E578;
  if (!qword_10058E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E578);
  }

  return result;
}

uint64_t AWDLActionFrame.ServiceResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v3 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  __chkstk_darwin();
  v5 = &v157 - v4;
  v6 = type metadata accessor for NWEndpoint.Port();
  v176 = *(v6 - 8);
  v7 = *(v176 + 64);
  __chkstk_darwin();
  v9 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v12 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin();
  v16 = (&v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v18 = a1[4];
  v178 = a1;
  sub_100029B34(a1, v17);
  v19 = v179;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v19)
  {
    return sub_100002A00(v178);
  }

  v173 = v5;
  v174 = v13;
  v179 = v12;
  v175 = v16;
  v171 = v9;
  v172 = v6;
  sub_100031694(v183, v184);
  v20 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if ((v20 - 256) <= 0xFF01u)
  {
    sub_10000B02C();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 2;
    swift_willThrow();
LABEL_9:
    sub_100002A00(v183);
    return sub_100002A00(v178);
  }

  v22 = v20 - 1;
  v23 = v184;
  sub_100031694(v183, v184);
  v169 = UnkeyedDecodingContainer.decodeData(with:)(v22, v23);
  v170 = v24;
  sub_100031694(v183, v184);
  v25 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v26 = _s7CoreP2P10DNSRecordsO10RecordTypeO8rawValueAESgs6UInt16V_tcfC_0(v25);
  if (v26 == 65)
  {
    goto LABEL_5;
  }

  v28 = v26;
  sub_100031694(v183, v184);
  v29 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v183, v184);
  v30 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if (v29 <= v30)
  {
    goto LABEL_46;
  }

  v32 = v29 - v30;
  if (v29 - v30 == 0xFFFF)
  {
    goto LABEL_46;
  }

  v33 = 0;
  v34 = v170 >> 62;
  if ((v170 >> 62) > 1)
  {
    v35 = v28;
    if (v34 == 2)
    {
      v33 = *(v169 + 16);
    }
  }

  else
  {
    v35 = v28;
    if (v34)
    {
      v33 = v169;
    }
  }

  v168 = 0;
  if (v35 == 11)
  {
    sub_100031694(v183, v184);
    v36 = v168;
    v37 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v36)
    {
      goto LABEL_8;
    }

    v38 = v37;
    v39 = v184;
    sub_100031694(v183, v184);
    v40 = UnkeyedDecodingContainer.decodeData(with:)(v38, v39);
    v168 = 0;
    v58 = v40;
    v60 = v59;
    static String.Encoding.utf8.getter();
    v160 = String.init(data:encoding:)();
    v62 = v61;
    LOBYTE(v63) = sub_1000124C8(v58, v60);
    v165 = v62;
    if (!v62)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

  v41 = Data._Representation.subscript.getter();
  v42 = v33 + 1;
  if (__OFADD__(v33, 1))
  {
    __break(1u);
LABEL_229:
    if (v161)
    {
      goto LABEL_230;
    }

LABEL_237:
    if (v6 == 0x6C61636F6CLL && v164 == 0xE500000000000000)
    {

LABEL_256:
      v105 = v167;
      LOBYTE(v34) = v159;
      goto LABEL_186;
    }

LABEL_255:
    v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v132 & 1) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_256;
  }

  v43 = v41;
  v44 = sub_100033A48(v42, v169, v170);
  v6 = v44;
  v46 = v45;
  v47 = v45 >> 62;
  if ((v45 >> 62) <= 1)
  {
    if (!v47)
    {
      sub_1000124C8(v44, v45);
      v48 = BYTE6(v46);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v47 != 2)
  {
    sub_1000124C8(v44, v45);
    if (!v43)
    {
      goto LABEL_34;
    }

LABEL_46:
    sub_10000B02C();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    goto LABEL_6;
  }

  v50 = *(v44 + 16);
  v49 = *(v44 + 24);
  sub_1000124C8(v44, v45);
  v48 = v49 - v50;
  if (!__OFSUB__(v49, v50))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_29:
  sub_1000124C8(v6, v46);
  LODWORD(v48) = HIDWORD(v6) - v6;
  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  v48 = v48;
LABEL_31:
  if (v48 < v43)
  {
    goto LABEL_46;
  }

LABEL_34:
  v51 = sub_10004AF78(v42, v43, v169, v170);
  if (v51 < v42)
  {
    __break(1u);
    goto LABEL_237;
  }

  v33 = v51;
  v52 = Data._Representation.subscript.getter();
  v54 = v53;
  static String.Encoding.utf8.getter();
  v160 = String.init(data:encoding:)();
  v56 = v55;
  LOBYTE(v63) = sub_1000124C8(v52, v54);
  v165 = v56;
  if (!v56)
  {
LABEL_5:
    sub_10000B02C();
    swift_allocError();
    *v27 = xmmword_10047CE70;
LABEL_6:
    *(v27 + 16) = 2;
    swift_willThrow();
LABEL_8:
    sub_1000124C8(v169, v170);
    goto LABEL_9;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      if (!v33)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    }

    v57 = *(v169 + 24);
  }

  else if (v34)
  {
    v57 = v169 >> 32;
  }

  else
  {
    v57 = BYTE6(v170);
  }

  if (v33 == v57)
  {
LABEL_45:

    goto LABEL_46;
  }

LABEL_48:
  v163 = 0;
  v161 = 0;
  v158 = 0;
  v164 = 0;
  v166 = v169 >> 32;
  v64 = BYTE6(v170);
  v162 = v169;
  LODWORD(v159) = 2;
  v65 = v33;
LABEL_49:
  v66 = v65;
  v67 = v164;
  while (1)
  {
    v167 = v67;
    if (v34 > 1)
    {
      if (v34 != 2)
      {

        if (!v33)
        {
          v167 = 0;
          goto LABEL_174;
        }

LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
        goto LABEL_271;
      }

      v68 = *(v169 + 24);
    }

    else
    {
      v68 = v64;
      if (v34)
      {
        v68 = v166;
      }
    }

    if (v66 == v68)
    {
      goto LABEL_173;
    }

    if (v34 == 2)
    {
      if (v66 >= *(v169 + 16))
      {
        if (v66 >= *(v169 + 24))
        {
          goto LABEL_245;
        }

        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_281;
        }

        v69 = result;
        v63 = __DataStorage._offset.getter();
        v70 = v66 - v63;
        if (__OFSUB__(v66, v63))
        {
          goto LABEL_247;
        }

        goto LABEL_68;
      }

      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
      goto LABEL_248;
    }

    if (v34 == 1)
    {
      break;
    }

    if (v66 >= v64)
    {
      goto LABEL_243;
    }

    v180 = v169;
    v181 = v170;
    v182 = WORD2(v170);
    LODWORD(v65) = *(&v180 + v66);
LABEL_71:
    v71 = v66 + 1;
    if (v65 != 192)
    {
      if (v65 > 0x3F)
      {
        goto LABEL_173;
      }

      v164 = v34;
      if (v34)
      {
        v78 = v166;
        v79 = v162;
        if (v34 == 2)
        {
          v79 = *(v169 + 16);
          v78 = *(v169 + 24);
        }
      }

      else
      {
        v78 = v64;
        v79 = v164;
      }

      if (v78 <= v66 || v78 < v79)
      {
        __break(1u);
        goto LABEL_260;
      }

      v157 = v65;
      v80 = Data._Representation.subscript.getter();
      v82 = v81 >> 62;
      if ((v81 >> 62) > 1)
      {
        if (v82 != 2)
        {
          LOBYTE(v63) = sub_1000124C8(v80, v81);
          if (v65)
          {
            goto LABEL_173;
          }

LABEL_130:
          v65 = v71 + v157;
          if (!__OFADD__(v71, v157))
          {
            if (v34)
            {
              v87 = v166;
              v164 = v162;
              if (v34 == 2)
              {
                v87 = *(v169 + 24);
                v164 = *(v169 + 16);
              }
            }

            else
            {
              v87 = v64;
            }

            if (v87 >= v65 && v65 >= v164)
            {
              if (v65 > v66)
              {
                v164 = Data._Representation.subscript.getter();
                v89 = v88;
                static String.Encoding.utf8.getter();
                v6 = String.init(data:encoding:)();
                v91 = v90;
                sub_1000124C8(v164, v89);
                v164 = v91;
                if (v91)
                {
                  if (!v167)
                  {

                    v66 = v65;
LABEL_151:
                    if (v159 == 2)
                    {
                      LODWORD(v159) = 2;
LABEL_155:
                      v158 = v6;
LABEL_156:
                      v65 = v66;
LABEL_157:

                      goto LABEL_49;
                    }

                    if ((v163 & 1) == 0)
                    {
                      v163 = 0;
                      goto LABEL_155;
                    }

                    LOBYTE(v34) = v159;
                    v158 = v6;
                    v167 = v164;
                    goto LABEL_187;
                  }

                  if (v159 != 2)
                  {
                    goto LABEL_229;
                  }

                  if ((v164 & 0x2000000000000000) != 0)
                  {
                    v92 = HIBYTE(v164) & 0xF;
                  }

                  else
                  {
                    v92 = v6 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v92)
                  {
                    goto LABEL_230;
                  }

                  v93 = 7;
                  if (((v164 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
                  {
                    v93 = 11;
                  }

                  v159 = v93;
                  if (String.subscript.getter() == 95 && v94 == 0xE100000000000000)
                  {
                  }

                  else
                  {
                    LODWORD(v157) = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v157 & 1) == 0)
                    {
                      v101._countAndFlagsBits = v6;
                      v101._object = v164;
                      v102 = _findStringSwitchCase(cases:string:)(&off_100555F28, v101);
                      if (!v102)
                      {

                        if (v163)
                        {
LABEL_184:
                          LOBYTE(v34) = 0;
                          goto LABEL_185;
                        }

                        v163 = 0;
                        v100 = &v185;
LABEL_166:
                        *(v100 - 64) = 0;
                        v164 = v167;
                        goto LABEL_157;
                      }

                      if (v102 == 1)
                      {

                        LODWORD(v159) = 1;
                        if (v163)
                        {
                          goto LABEL_178;
                        }

                        goto LABEL_165;
                      }

                      goto LABEL_230;
                    }
                  }

                  if (4 * v92 >= String.index(after:)() >> 14)
                  {
                    String.subscript.getter();
                    v95 = static String._fromSubstring(_:)();
                    v97 = v96;

                    v98._countAndFlagsBits = v95;
                    v98._object = v97;
                    v99 = _findStringSwitchCase(cases:string:)(&off_100555ED8, v98);

                    if (!v99)
                    {
                      LODWORD(v159) = 0;
LABEL_164:

                      if (v163)
                      {
                        LOBYTE(v34) = v159;
                        goto LABEL_185;
                      }

LABEL_165:
                      v100 = &v186 + 4;
                      goto LABEL_166;
                    }

                    if (v99 == 1)
                    {
                      LODWORD(v159) = 1;
                      goto LABEL_164;
                    }

LABEL_230:

                    goto LABEL_231;
                  }

                  __break(1u);
                  goto LABEL_269;
                }

LABEL_173:

LABEL_174:
                sub_10000B02C();
                swift_allocError();
                *v103 = 0;
                *(v103 + 8) = 0;
LABEL_234:
                *(v103 + 16) = 2;
                swift_willThrow();

                goto LABEL_8;
              }

LABEL_262:
              __break(1u);
              goto LABEL_263;
            }

LABEL_261:
            __break(1u);
            goto LABEL_262;
          }

LABEL_260:
          __break(1u);
          goto LABEL_261;
        }

        v65 = *(v80 + 16);
        v85 = *(v80 + 24);
        LOBYTE(v63) = sub_1000124C8(v80, v81);
        v84 = v85 - v65;
        if (__OFSUB__(v85, v65))
        {
          goto LABEL_270;
        }
      }

      else if (v82)
      {
        LODWORD(v65) = v80;
        v86 = HIDWORD(v80);
        LOBYTE(v63) = sub_1000124C8(v80, v81);
        LODWORD(v84) = v86 - v65;
        if (__OFSUB__(v86, v65))
        {
LABEL_271:
          __break(1u);
          goto LABEL_272;
        }

        v84 = v84;
      }

      else
      {
        v83 = BYTE6(v81);
        LOBYTE(v63) = sub_1000124C8(v80, v81);
        v84 = v83;
      }

      if (v84 < v157)
      {
        goto LABEL_173;
      }

      goto LABEL_130;
    }

    v72 = v64;
    if (v34)
    {
      v72 = v166;
      if (v34 == 2)
      {
        v72 = *(v169 + 24);
      }
    }

    if (v71 == v72)
    {
      goto LABEL_173;
    }

    if (v34 == 2)
    {
      if (v71 < *(v169 + 16))
      {
        goto LABEL_249;
      }

      if (v71 >= *(v169 + 24))
      {
        goto LABEL_252;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_283;
      }

      v73 = result;
      LOBYTE(v65) = v170;
      v76 = __DataStorage._offset.getter();
      v75 = v71 - v76;
      if (__OFSUB__(v71, v76))
      {
        goto LABEL_254;
      }

      goto LABEL_88;
    }

    if (v34 == 1)
    {
      if (v71 < v162 || v71 >= v166)
      {
        goto LABEL_251;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_282;
      }

      v73 = result;
      LOBYTE(v65) = v170;
      v74 = __DataStorage._offset.getter();
      v75 = v71 - v74;
      if (__OFSUB__(v71, v74))
      {
        goto LABEL_253;
      }

LABEL_88:
      v77 = *(v73 + v75);
      goto LABEL_91;
    }

    if (v71 >= v64)
    {
      goto LABEL_250;
    }

    v180 = v169;
    v181 = v170;
    v182 = WORD2(v170);
    v77 = *(&v180 + v66 + 1);
LABEL_91:
    LOBYTE(v63) = sub_10004AEF8(v77);
    if (v63 == 14)
    {
      goto LABEL_173;
    }

    v66 += 2;
    if (v63 != 11)
    {
      if (v63 <= 6u)
      {
        if (v63 > 2u)
        {
          if (v63 <= 4u)
          {
            if (v63 == 3)
            {
              if (!v167)
              {
                LOBYTE(v34) = 0;
                v158 = 0x706F61725FLL;
                v104 = 0xE500000000000000;
                goto LABEL_199;
              }
            }

            else if (!v167)
            {
              v158 = 0x706F61725FLL;
              LOBYTE(v34) = 1;
              v104 = 0xE500000000000000;
LABEL_199:
              v164 = v104;
              if (v159 != 2 || (v161 & 1) != 0)
              {

                v108 = &v187;
LABEL_232:
                v128 = *(v108 - 32);

                goto LABEL_233;
              }

              v167 = 0;
              goto LABEL_205;
            }
          }

          else
          {
            if (v63 == 5)
            {
              if (v167)
              {
                goto LABEL_231;
              }

              v164 = 0xE500000000000000;
              v6 = 0x706F61725FLL;
              goto LABEL_151;
            }

            if (!v167)
            {
              LOBYTE(v34) = 0;
              v107 = 0x706F72647269615FLL;
              goto LABEL_197;
            }
          }

          goto LABEL_231;
        }

        if (!v63)
        {
          if (!v167)
          {
            LOBYTE(v34) = 0;
            v107 = 0x79616C707269615FLL;
LABEL_197:
            v158 = v107;
            goto LABEL_198;
          }

LABEL_231:
          v108 = &v188;
          goto LABEL_232;
        }

        if (v63 != 1)
        {
          if (v167)
          {
            goto LABEL_231;
          }

          v164 = 0xE800000000000000;
          v6 = 0x79616C707269615FLL;
          goto LABEL_151;
        }

        if (v167)
        {
          goto LABEL_231;
        }

        v106 = 0x79616C707269615FLL;
LABEL_194:
        v158 = v106;
        LOBYTE(v34) = 1;
LABEL_198:
        v104 = 0xE800000000000000;
        goto LABEL_199;
      }

      if (v63 <= 9u)
      {
        if (v63 == 7)
        {
          if (v167)
          {
            goto LABEL_231;
          }

          v106 = 0x706F72647269615FLL;
          goto LABEL_194;
        }

        if (v63 == 8)
        {
          if (v167)
          {
            goto LABEL_231;
          }

          v164 = 0xE800000000000000;
          v6 = 0x706F72647269615FLL;
          goto LABEL_151;
        }

        if (!v167 || v159 != 2)
        {
          goto LABEL_231;
        }

        goto LABEL_184;
      }

      if (v63 - 12 < 2 || !v167 || v159 != 2)
      {
        goto LABEL_231;
      }

LABEL_178:
      LOBYTE(v34) = 1;
LABEL_185:
      v105 = v167;
LABEL_186:
      v164 = v105;
LABEL_187:

LABEL_205:
      if (v28 != 32)
      {
        if (v28 != 15)
        {
          if (v28 == 11)
          {

            sub_1000124C8(v169, v170);
            v109 = v175;
            v110 = v165;
            *v175 = v160;
            v109[1] = v110;
            v111 = v164;
            v109[2] = v158;
            v109[3] = v111;
            *(v109 + 32) = v34 & 1;
            *(v109 + 33) = 1;
LABEL_227:
            swift_storeEnumTagMultiPayload();
            sub_100002A00(v183);
            sub_10004AF10(v175, v177, type metadata accessor for AWDLActionFrame.ServiceResponse);
            return sub_100002A00(v178);
          }

          goto LABEL_230;
        }

        v112 = v184;
        sub_100031694(v183, v184);
        v113 = v168;
        v114 = UnkeyedDecodingContainer.decodeData(with:)(v32, v112);
        v168 = v113;
        if (v113)
        {
          goto LABEL_212;
        }

        v118 = v114;
        v119 = v115;
        v120 = v115 >> 62;
        if ((v115 >> 62) > 1)
        {
          if (v120 != 2)
          {
LABEL_226:
            v122 = Data.subdata(in:)();
            v124 = v123;

            sub_1000124C8(v169, v170);
            sub_1000124C8(v118, v119);
            v125 = v175;
            v126 = v165;
            *v175 = v160;
            v125[1] = v126;
            v127 = v164;
            v125[2] = v158;
            v125[3] = v127;
            *(v125 + 32) = v34 & 1;
            *(v125 + 33) = 1;
            *(v125 + 34) = v180;
            *(v125 + 19) = WORD2(v180);
            v125[5] = v122;
            v125[6] = v124;
            goto LABEL_227;
          }

          v114 = *(v114 + 16);
          v121 = *(v118 + 24);
        }

        else
        {
          if (!v120)
          {
            goto LABEL_226;
          }

          v114 = v114;
          v121 = v118 >> 32;
        }

        if (v121 < v114)
        {
          __break(1u);
        }

        goto LABEL_226;
      }

      sub_100031694(v183, v184);
      v116 = v168;
      LODWORD(v166) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v33 = v116;
      if (v116)
      {
LABEL_212:

        sub_1000124C8(v169, v170);
LABEL_213:

        sub_100002A00(v183);
        return sub_100002A00(v178);
      }

      sub_100031694(v183, v184);
      v163 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      sub_100031694(v183, v184);
      dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v117 = v173;
      NWEndpoint.Port.init(rawValue:)();
      if ((*(v176 + 48))(v117, 1, v172) == 1)
      {

        sub_100016290(v173, &qword_10058BA40, &qword_100480D90);
LABEL_233:
        sub_10000B02C();
        swift_allocError();
        *v103 = xmmword_10047CE70;
        goto LABEL_234;
      }

      v129 = v173;
      v173 = *(v176 + 32);
      v173(v171, v129, v172);
      sub_100031694(v183, v184);
      v130 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v131 = v184;
      sub_100031694(v183, v184);
      v133 = UnkeyedDecodingContainer.decodeData(with:)(v130, v131);
      v135 = v134;
      static String.Encoding.utf8.getter();
      v162 = String.init(data:encoding:)();
      v137 = v136;
      sub_1000124C8(v133, v135);
      v179 = v137;
      if (!v137)
      {
LABEL_279:

        sub_10000B02C();
        swift_allocError();
        *v156 = xmmword_10047CE70;
        *(v156 + 16) = 2;
        swift_willThrow();

        sub_1000124C8(v169, v170);
        (*(v176 + 8))(v171, v172);
        goto LABEL_9;
      }

      sub_100031694(v183, v184);
      LOBYTE(v63) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
LABEL_263:
      v138 = v63;
      sub_100031694(v183, v184);
      v139 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      LOBYTE(v65) = v139;
      v168 = v33;
      if (v138 == 192)
      {
        if (!v168)
        {
          if (v139 == 17 || v139 == 12)
          {
            sub_1000124C8(v169, v170);

LABEL_277:
            v150 = type metadata accessor for DNSRecords.SRV();
            v151 = v175;
            v173(v175 + v150[5], v171, v172);
            v152 = v165;
            *v151 = v160;
            v151[1] = v152;
            v153 = v164;
            v151[2] = v158;
            v151[3] = v153;
            *(v151 + 32) = v34 & 1;
            *(v151 + 33) = 1;
            v154 = (v151 + v150[6]);
            v155 = v179;
            *v154 = v162;
            v154[1] = v155;
            *(v151 + v150[7]) = v166;
            *(v151 + v150[8]) = v163;
            goto LABEL_227;
          }

LABEL_278:

          goto LABEL_279;
        }

        goto LABEL_274;
      }

LABEL_272:
      if (!v168)
      {
        v140 = v184;
        sub_100031694(v183, v184);
        v141 = v168;
        v142 = UnkeyedDecodingContainer.decodeData(with:)(v65, v140);
        v168 = v141;
        if (!v141)
        {
          v144 = v142;
          v145 = v143;
          v146 = sub_10016FD40(0x6C61636F6CLL, 0xE500000000000000);
          v148 = v147;
          v149 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v144, v145, v146, v147);
          sub_1000124C8(v146, v148);
          sub_1000124C8(v144, v145);
          if (v149)
          {

            sub_1000124C8(v169, v170);
            goto LABEL_277;
          }

          goto LABEL_278;
        }
      }

LABEL_274:
      (*(v176 + 8))(v171, v172);

      sub_1000124C8(v169, v170);

      goto LABEL_213;
    }

    v67 = 0;
    v163 = 1;
    v161 = 1;
    if (v167)
    {
      if (v159 != 2)
      {
        goto LABEL_256;
      }

      LODWORD(v159) = 2;
      v163 = 1;
      v164 = v167;
      v161 = 1;
      goto LABEL_156;
    }
  }

  if (v66 < v162 || v66 >= v166)
  {
    goto LABEL_244;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v69 = result;
    v63 = __DataStorage._offset.getter();
    v70 = v66 - v63;
    if (__OFSUB__(v66, v63))
    {
      goto LABEL_246;
    }

LABEL_68:
    LODWORD(v65) = *(v69 + v70);
    goto LABEL_71;
  }

  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
  return result;
}

uint64_t _s7CoreP2P10DNSRecordsO10RecordTypeO8rawValueAESgs6UInt16V_tcfC_0(unsigned __int16 a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      result = 14;
      break;
    case 15:
      result = 15;
      break;
    case 16:
      result = 16;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 19;
      break;
    case 20:
      result = 20;
      break;
    case 21:
      result = 21;
      break;
    case 22:
      result = 22;
      break;
    case 23:
      result = 23;
      break;
    case 24:
      result = 24;
      break;
    case 25:
      result = 25;
      break;
    case 26:
      result = 26;
      break;
    case 27:
      result = 27;
      break;
    case 28:
      result = 28;
      break;
    case 29:
      result = 29;
      break;
    case 30:
      result = 30;
      break;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 54:
      result = 51;
      break;
    case 63:
      result = 52;
      break;
    case 64:
      result = 53;
      break;
    case 98:
      result = 54;
      break;
    case 99:
      result = 55;
      break;
    case 100:
      result = 56;
      break;
    case 101:
      result = 57;
      break;
    case 102:
      result = 58;
      break;
    case 248:
      result = 59;
      break;
    case 249:
      result = 60;
      break;
    case 250:
      result = 61;
      break;
    case 251:
      result = 62;
      break;
    case 252:
      result = 63;
      break;
    case 253:
      result = 64;
      break;
    default:
      result = 65;
      break;
  }

  return result;
}

uint64_t sub_10004AEF8(char a1)
{
  if ((a1 - 1) >= 0xEu)
  {
    return 14;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t sub_10004AF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004AF78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
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
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

void *sub_10004AFDC(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058ECE0, &qword_10048D648);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_10004B190();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_10058E398, &qword_100489498);
    sub_10004B1E4(&qword_10058ECE8, sub_10003804C);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100002A00(a1);
  }

  return v9;
}

unint64_t sub_10004B190()
{
  result = qword_10058E390;
  if (!qword_10058E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E390);
  }

  return result;
}

uint64_t sub_10004B1E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(&qword_10058E398, &qword_100489498);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004B25C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = BinaryDecoder.decode<A>(_:)(a1);
  if (!v2)
  {
    v5 = result;
    result = type metadata accessor for Array();
    a2[3] = result;
    *a2 = v5;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for WiFiAddress(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

int64_t sub_10004B2F0@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 68)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 68)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x44uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      *v32 = *(v15 + 46);
      *&v32[14] = *(v15 + 60);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
      *(a3 + 46) = *v32;
      *(a3 + 60) = *&v32[14];
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_10004B588@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 68)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 68) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 68)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_10004B2F0(result, a2, a3);
      *(a3 + 68) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 68)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100046A70(a1 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046B248();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for AWDLPeer(0);
    v20 = *(v13 - 8);
    sub_100046A08(v12 + *(v20 + 72) * v8, a2, type metadata accessor for AWDLPeer);
    sub_10004B7F4(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for AWDLPeer(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_10004B80C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 6 * v7);
      v13 = *(v12 + 1);
      v14 = *v12;
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v29, v14 | (v13 << 16));
      result = Hasher._finalize()();
      v15 = result & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v15 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v16 = *(a2 + 48);
      v17 = v16 + 6 * v4;
      v18 = (v16 + 6 * v7);
      if (v4 != v7 || v17 >= v18 + 6)
      {
        v19 = *v18;
        *(v17 + 4) = *(v18 + 2);
        *v17 = v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v15 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10004B9FC(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*(type metadata accessor for AWDLPeer(0) - 8) + 64);
  v6 = __chkstk_darwin();
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v6;
  v47 = *(a1 + *(v6 + 20)) | (*(a1 + *(v6 + 20) + 2) << 16);
  v9 = WiFiAddress.apiAddress.getter(v47);
  v55 = 0;
  v56 = 0;
  v10 = *(*v2 + 568);
  swift_beginAccess();
  v11 = *(v2 + v10);
  v51 = v9;
  v52 = v2;
  v53 = &v56;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v12 = *(v4 + 440);
  v44 = *(v4 + 432);
  v43 = v12;
  type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

  v13 = Dictionary.filter(_:)();
  sub_10004C0C0(v13);
  v14 = *(*v2 + 592);
  swift_beginAccess();
  v15 = *(v2 + v14);
  v46 = v9;
  v48 = v9;
  v49 = v2;
  v50 = &v55;

  v16 = Dictionary.filter(_:)();
  sub_10004CE1C(v16);
  v17 = v56;
  if (v56 > 0 || v55 >= 1)
  {
    v18 = v2 + *(*v2 + 160);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      *v21 = 136315650;
      v22 = WiFiAddress.description.getter(v47);
      v24 = a1;
      v25 = sub_100002320(v22, v23, &v54);

      *(v21 + 4) = v25;
      a1 = v24;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v17;
      *(v21 + 22) = 2048;
      swift_beginAccess();
      *(v21 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v19, v20, "Aged out %s with total traffic registrations: %ld, total responder traffic registrations: %ld", v21, 0x20u);
      sub_100002A00(v42);
    }
  }

  sub_10004D020();
  sub_10004CE84();

  v26 = *(v2 + *(*v2 + 464));

  v27 = v47;
  AWDLPeer.init(macAddress:)(v47, v8);
  v28 = v45;
  sub_10004D7F4(v8, *(a1 + *(v45 + 80)));

  sub_1000473F0(v8, type metadata accessor for AWDLPeer);
  if (*(a1 + *(v28 + 108)) == 1)
  {
    v29 = a1;
    v30 = WiFiAddress.ipv6LinkLocalAddress.getter(v27);
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = *(*v2 + 152);
    swift_beginAccess();
    v38 = *(v43 + 8);
    v39 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
    WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v27, v30, v32, v34, v36, v39);
    swift_endAccess();

    a1 = v29;
  }

  v40 = *(*v2 + 776);
  swift_beginAccess();
  v41 = *(v2 + v40);
  __chkstk_darwin();
  *(&v42 - 2) = a1;

  sub_100448174(sub_100474C88, (&v42 - 4), v41);
}

uint64_t sub_10004C0C0(uint64_t a1)
{
  v3 = *(*v1 + 568);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  return sub_10004C128();
}

uint64_t sub_10004C128()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2[55] + 8);
  v33 = v2[55];
  v4 = v2[54];
  swift_getAssociatedTypeWitness();
  v32 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29[1] = AssociatedConformanceWitness;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness;
  v35 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v31 = v29 - v9;
  v10 = v2[14];
  v11 = *(AssociatedConformanceWitness + 144);
  v30 = swift_checkMetadataState();
  v11(v30, AssociatedConformanceWitness);
  v12 = *(*v1 + 608);
  swift_beginAccess();
  v13 = *(v1 + v12);
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  type metadata accessor for AWDLInterface.AdditionalTrafficRegistrationInformation();
  sub_100047340(&qword_100595238, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v38 = NANBitmap.Channel.operatingClass.getter(v13);
  v14 = type metadata accessor for Dictionary.Keys();
  type metadata accessor for AWDLTrafficRegistrationService(0);
  v16 = v15;

  WitnessTable = swift_getWitnessTable();
  v29[0] = sub_10002B84C(sub_1004770B0, 0, v14, v16, &type metadata for Never, WitnessTable, &protocol witness table for Never, v18);

  v19 = *(*v1 + 592);
  swift_beginAccess();
  v37 = NANBitmap.Channel.operatingClass.getter(*(v1 + v19));

  v21 = sub_10002B84C(sub_1004770B0, 0, v14, v16, &type metadata for Never, WitnessTable, &protocol witness table for Never, v20);

  v37 = v29[0];
  sub_10004C6AC(v21);
  v22 = sub_10004C8CC(v37);

  v23 = v34;
  v24 = swift_getAssociatedConformanceWitness();
  v25 = v31;
  (*(v24 + 24))(v22, v23, v24);

  (*(v35 + 8))(v25, v23);
  v26 = *(*v1 + 616);
  swift_beginAccess();
  v27 = *(v1 + v26);
  type metadata accessor for AWDLInterface.TrafficRegistrationServiceAvailabilityMonitor();
  sub_10004C988(&unk_100594A20, type metadata accessor for AWDLTrafficRegistrationService);
  v36 = NANBitmap.Channel.operatingClass.getter(v27);
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  v36 = Array.init<A>(_:)();
  sub_10005DC58(&qword_10059B0A0, &unk_1004B4CF0);
  sub_10000CADC(&qword_10059B0A8, &qword_10059B0A0, &unk_1004B4CF0);
  Sequence.forEach(_:)();
}

void *sub_10004C6AC(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10004C7A4(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for AWDLTrafficRegistrationService(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10004C7A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005DC58(&unk_100598760, &qword_1004B0928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AWDLTrafficRegistrationService(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10004C8CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AWDLTrafficRegistrationService(0);
  sub_10004C988(&unk_100594A20, type metadata accessor for AWDLTrafficRegistrationService);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100159C80(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10004C988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004C9F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v20 = *(v10 - 8);
  v21 = v10;
  v11 = *(v20 + 64);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v4[10];
  *(v16 + 24) = v4[11];
  *(v16 + 32) = *(v5 + 6);
  *(v16 + 48) = v4[14];
  *(v16 + 56) = v15;
  *(v16 + 64) = a1;
  aBlock[4] = sub_10004D298;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100574240;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v9, v6);
  (*(v20 + 8))(v13, v21);
}

uint64_t sub_10004CD88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CDC0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004CE1C(uint64_t a1)
{
  v3 = *(*v1 + 592);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  return sub_10004C128();
}

uint64_t sub_10004CE84()
{
  v1 = *v0;
  v2 = qword_10059BA40;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator();
  sub_10002B68C();

  Dictionary.filter(_:)();
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  Array.init<A>(_:)();
  sub_10005DC58(&qword_100597CD0, &unk_1004B1E98);
  sub_10000CB24(&qword_100597CD8, &qword_100597CD0, &unk_1004B1E98);
  Sequence.forEach(_:)();
}

uint64_t *sub_10004D020()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v4 = v0;
    v5 = *(v1 + 432);
    v6 = *(v1 + 440);
    type metadata accessor for AWDLDiscoveryEngine();

    v3 = sub_10037F7D0(v7);

    v8 = *(v4 + v2);
    *(v4 + v2) = v3;
  }

  return v3;
}

BOOL sub_10004D0F8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*a2 + qword_10059BA58);
  v5 = *(v4 + 1);
  v6 = *v4;
  v7 = type metadata accessor for AWDLPeer(0);
  return static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v6 | (v5 << 16), *(a3 + *(v7 + 20)) | (*(a3 + *(v7 + 20) + 2) << 16));
}

BOOL sub_10004D168(uint64_t a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_10004D0F8(a1, a2, v2[4]);
}

BOOL static NANClusterChangeEvent.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  LOBYTE(v5) = BYTE4(a1);
  HIBYTE(v5) = BYTE5(a1);
  LOBYTE(v4) = BYTE4(a2);
  HIBYTE(v4) = BYTE5(a2);
  return a1 == a2 && v5 == v4;
}

uint64_t sub_10004D218(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + qword_10059B860);
    *(result + qword_10059B860) = a2;
  }

  return result;
}

uint64_t sub_10004D298()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_10004D218(v0[7], v0[8]);
}

uint64_t sub_10004D2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AWDLPeer.init(macAddress:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = type metadata accessor for DispatchTime();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v8 = type metadata accessor for AWDLPeer(0);
  v9 = v8[6];
  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  v36 = HIDWORD(a1);
  v37 = a1 >> 40;
  v34 = a1 >> 16;
  v35 = a1 >> 24;
  (*(*algn_10059B518 + 8))();
  *(a2 + v8[7]) = 0;
  v10 = a2 + v8[8];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 256;
  v11 = a2 + v8[9];
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 1;
  v12 = (a2 + v8[10]);
  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0xF000000000000000;
  v13 = a2 + v8[11];
  *v13 = 0;
  *(v13 + 2) = 1;
  v14 = (a2 + v8[12]);
  v14[1] = 0u;
  v14[2] = 0u;
  *v14 = 0u;
  v15 = (a2 + v8[13]);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v16 = v8[14];
  v17 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
  v18 = a2 + v8[15];
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 40) = 1;
  v19 = a2 + v8[16];
  *v19 = 0;
  *(v19 + 2) = 1;
  v20 = a2 + v8[17];
  *v20 = xmmword_10047CE60;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *(v20 + 16) = 0;
  v21 = (a2 + v8[18]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a2 + v8[19]);
  v23 = sub_10004D6CC(&off_100556610);
  *v22 = &_swiftEmptySetSingleton;
  v22[1] = v23;
  *(a2 + v8[20]) = &_swiftEmptySetSingleton;
  v24 = a2 + v8[21];
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = a2 + v8[22];
  *v25 = 0;
  *(v25 + 4) = 1;
  v26 = a2 + v8[23];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = a2 + v8[24];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = a2 + v8[25];
  *v28 = 0;
  *(v28 + 8) = 1;
  *(a2 + v8[26]) = 0;
  *(a2 + v8[27]) = 0;
  *(a2 + v8[28]) = 0;
  *(a2 + v8[29]) = 0;
  v29 = a2 + v8[5];
  *v29 = a1;
  v30 = v35;
  *(v29 + 2) = v34;
  *(v29 + 3) = v30;
  v31 = v37;
  *(v29 + 4) = v36;
  *(v29 + 5) = v31;
  (*(*algn_10059B518 + 8))();
  return (*(v4 + 40))(a2 + v9, v7, v38);
}

uint64_t sub_10004D67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004D6CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10059B1A0, &qword_10048D5F0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    while (1)
    {
      v11 = *(v6 + v4);
      result = static Hasher._hash(seed:bytes:count:)();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10004D7F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*(sub_10005DC58(&qword_10058FA18, &qword_100493068) - 8) + 64);
  __chkstk_darwin();
  v126 = &v103 - v7;
  v130 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v125 = *(v130 - 8);
  v8 = *(v125 + 64);
  __chkstk_darwin();
  v129 = (&v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v103 - v10;
  __chkstk_darwin();
  v119 = &v103 - v12;
  v122 = *(v5 + 88);
  v13 = *(v122 + 8);
  v128 = v2;
  v14 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  v121 = v14;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Preferences();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v103 - v18;
  v113 = type metadata accessor for AWDLPeer(0);
  v20 = v113[10];
  v118 = a1;
  v21 = (a1 + v20);
  if (*(v21 + 3) >> 60 != 15)
  {
    v22 = *v21;
    if ((*AWDLActionFrame.ServiceParameter.Flags.supportsWiFiAwareMigration.unsafeMutableAddressor() & ~v22) == 0)
    {
      v23 = *(v128 + qword_10059BA38);
      swift_unownedRetainStrong();
      WiFiInterface.preferences.getter();

      v24 = Preferences.enableUserspaceP2POptions.getter(v15);
      (*(v16 + 8))(v19, v15);
      if ((*PreferenceDefaults.EnableUserspaceP2POptions.awdlToWiFiAwareMigration.unsafeMutableAddressor() & ~v24) == 0)
      {
        swift_unownedRetainStrong();
        v25 = WiFiInterface.capabilities.getter();

        v131 = *WiFiDriverCapabilities.supportsNAN.unsafeMutableAddressor();
        v137 = v25;
        sub_1000C2A14();

        v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();

        if (v26)
        {
          return result;
        }
      }
    }
  }

  v142 = a2;
  v28 = v118;
  v29 = *(v118 + v113[20]);
  v30 = v29 + 56;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 56);
  v114 = qword_100597980;
  v107 = qword_10059BA40;
  v34 = (v31 + 63) >> 6;
  v115 = v125 + 48;

  v124 = v29;

  v35 = 0;
  v36 = v126;
  v37 = v129;
  v117 = v30;
  v116 = v34;
  while (v33)
  {
    v38 = v35;
LABEL_16:
    v39 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v40 = v125;
    v41 = v119;
    sub_1000275E0(*(v124 + 48) + *(v125 + 72) * (v39 | (v38 << 6)), v119, type metadata accessor for AWDLPeer.AdvertisedService);
    sub_10037D4B0(v41, v11);
    sub_1001D4E10(v11, v36);
    if ((*(v40 + 48))(v36, 1, v130) == 1)
    {
      sub_100016290(v36, &qword_10058FA18, &qword_100493068);
      v43 = *(v11 + 3);
      v42 = *(v11 + 4);
      v44 = v11[40];
      v45 = v11[41];
      v46 = v114;
      v47 = v128;
      swift_beginAccess();
      v48 = *(v47 + v46);
      v137 = v43;
      v138 = v42;
      v139 = v44;
      v140 = v45;
      type metadata accessor for AWDLDiscoveryEngine.Browse();
      sub_10006153C();

      Dictionary.subscript.getter();

      if (v141)
      {
        swift_endAccess();
        sub_100377EE0(v11, *(v28 + v113[5]) | (*(v28 + v113[5] + 2) << 16));
      }

      else
      {
        swift_endAccess();
      }

      result = sub_100380008(v11, type metadata accessor for AWDLPeer.AdvertisedService);
      v35 = v38;
      v36 = v126;
      v37 = v129;
      goto LABEL_10;
    }

    sub_10037D4B0(v36, v37);
    v50 = v37[6];
    v49 = v37[7];
    v51 = v37[8];
    v52 = v37[9];
    v53 = v37[10];
    v54 = v37[11];
    v55 = v37[12];
    v57 = *(v11 + 6);
    v56 = *(v11 + 7);
    v120 = *(v11 + 8);
    v111 = *(v11 + 9);
    v58 = *(v11 + 11);
    v127 = *(v11 + 10);
    v123 = v58;
    v112 = *(v11 + 12);
    if (v49)
    {
      if (!v56)
      {
        goto LABEL_28;
      }

      v131 = v50;
      v132 = v49;
      v137 = v57;
      v138 = v56;
      v110 = v50;
      v59 = v50;
      v60 = v56;
      v104 = v49;
      v105 = v51;
      v106 = v52;
      v109 = v55;
      sub_100083900(v59, v49, v51, v52, v53, v54, v55);
      v108 = v57;
      v103 = v60;
      v61 = v120;
      v62 = v111;
      v63 = v112;
      sub_100083900(v57, v60, v120, v111, v127, v123, v112);
      sub_10005E2E4();
      if (StringProtocol.caseInsensitiveCompare<A>(_:)() || !static DNSRecords.Identifier.== infix(_:_:)(v105, v106, v53 & 0xFF01, v61, v62, v127 & 0xFF01))
      {
        sub_1000835CC(v108, v103, v61, v62, v127, v123, v63);
        v76 = v110;
        v77 = v104;
        v78 = v105;
        v79 = v106;
        v80 = v53;
        v81 = v54;
        v82 = v109;
        goto LABEL_30;
      }

      v64 = v109;
      v65 = v123;
      v66 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v54, v109, v123, v63);
      sub_1000835CC(v108, v103, v120, v62, v127, v65, v63);
      sub_1000835CC(v110, v104, v105, v106, v53, v54, v64);
      v28 = v118;
      if ((v66 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v56)
      {
LABEL_28:
        v67 = v50;
        v110 = v50;
        v68 = v57;
        v108 = v57;
        v69 = v49;
        v70 = v56;
        v109 = v55;
        sub_100083900(v67, v49, v51, v52, v53, v54, v55);
        v71 = v68;
        v72 = v70;
        v73 = v70;
        v106 = v11;
        v74 = v111;
        v75 = v112;
        sub_100083900(v71, v73, v120, v111, v127, v123, v112);
        sub_1000835CC(v110, v69, v51, v52, v53, v54, v109);
        v76 = v108;
        v77 = v72;
        v78 = v120;
        v79 = v74;
        v11 = v106;
        v80 = v127;
        v81 = v123;
        v82 = v75;
LABEL_30:
        sub_1000835CC(v76, v77, v78, v79, v80, v81, v82);
        v28 = v118;
LABEL_31:
        v84 = *(v11 + 3);
        v83 = *(v11 + 4);
        v85 = v11[40];
        v86 = v11[41];
        v87 = v114;
        v88 = v128;
        swift_beginAccess();
        v89 = *(v88 + v87);
        v137 = v84;
        v138 = v83;
        v139 = v85;
        v140 = v86;
        type metadata accessor for AWDLDiscoveryEngine.Browse();
        sub_10006153C();

        Dictionary.subscript.getter();

        if (v141)
        {
          swift_endAccess();
          sub_1003779EC(v11, *(v28 + v113[5]) | (*(v28 + v113[5] + 2) << 16));
        }

        else
        {
          swift_endAccess();
        }

        goto LABEL_35;
      }

      v90 = v57;
      v91 = v53;
      v92 = v53;
      v93 = v55;
      sub_100083900(v50, 0, v51, v52, v92, v54, v55);
      sub_100083900(v90, 0, v120, v111, v127, v123, v112);
      sub_1000835CC(v50, 0, v51, v52, v91, v54, v93);
      v28 = v118;
    }

LABEL_35:
    v37 = v129;
    v94 = *(v130 + 28);
    if (static DNSRecords.SRV.__derived_struct_equals(_:_:)(v129 + v94, &v11[v94]))
    {
      sub_100380008(v37, type metadata accessor for AWDLPeer.AdvertisedService);
      result = sub_100380008(v11, type metadata accessor for AWDLPeer.AdvertisedService);
      v35 = v38;
    }

    else
    {
      v95 = *(v11 + 2);
      v127 = *(v11 + 1);
      v97 = *(v11 + 3);
      v96 = *(v11 + 4);
      v98 = v11[40];
      v99 = v128;
      LODWORD(v123) = v11[41];
      v100 = v107;
      swift_beginAccess();
      v101 = *(v99 + v100);
      v131 = v127;
      v132 = v95;
      v133 = v97;
      v134 = v96;
      v135 = v98;
      v136 = v123;
      type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator();
      sub_10002B68C();

      Dictionary.subscript.getter();

      if (v141)
      {
        swift_endAccess();
        sub_100377BC4(&v11[v94]);
      }

      else
      {
        swift_endAccess();
      }

      v37 = v129;
      sub_100380008(v129, type metadata accessor for AWDLPeer.AdvertisedService);
      result = sub_100380008(v11, type metadata accessor for AWDLPeer.AdvertisedService);
      v35 = v38;
      v28 = v118;
    }

    v36 = v126;
LABEL_10:
    v30 = v117;
    v34 = v116;
  }

  while (1)
  {
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v38 >= v34)
    {

      v102 = v142;
      __chkstk_darwin();
      *(&v103 - 2) = v128;
      *(&v103 - 1) = v28;
      sub_10004E460(sub_10037F644, (&v103 - 4), v102);
    }

    v33 = *(v30 + 8 * v38);
    ++v35;
    if (v33)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004E460(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v5 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_100027648(*(a3 + 48) + *(v5 + 72) * (v16 | (v15 << 6)), v8, type metadata accessor for AWDLPeer.AdvertisedService);
    v18(v8);
    result = sub_1000473F0(v8, type metadata accessor for AWDLPeer.AdvertisedService);
    if (v3)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(a3 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t WiFiAddress.ipv6LinkLocalAddress.getter(unint64_t a1)
{
  v1 = a1 >> 8;
  v2 = a1 >> 16;
  v3 = a1 >> 24;
  v4 = HIDWORD(a1);
  v5 = a1 >> 40;
  v6 = a1;
  v7 = type metadata accessor for __DataStorage();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v60 = __DataStorage.init(length:)() | 0x4000000000000000;
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004817D0;
  *(v10 + 32) = v6;
  *(v10 + 33) = v1;
  *(v10 + 34) = v2;
  *(v10 + 35) = v3;
  *(v10 + 36) = v4;
  *(v10 + 37) = v5;
  v11 = sub_10002D874(v10);
  v13 = v12;

  Data._Representation.subscript.getter();
  sub_1000124C8(v11, v13);
  Data._Representation.subscript.setter();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004817D0;
  *(v14 + 32) = v6;
  *(v14 + 33) = v1;
  *(v14 + 34) = v2;
  *(v14 + 35) = v3;
  *(v14 + 36) = v4;
  *(v14 + 37) = v5;
  v15 = sub_10002D874(v14);
  v17 = v16;

  Data._Representation.subscript.getter();
  sub_1000124C8(v15, v17);
  Data._Representation.subscript.setter();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004817D0;
  *(v18 + 32) = v6;
  *(v18 + 33) = v1;
  *(v18 + 34) = v2;
  *(v18 + 35) = v3;
  *(v18 + 36) = v4;
  *(v18 + 37) = v5;
  v19 = sub_10002D874(v18);
  v21 = v20;

  Data._Representation.subscript.getter();
  sub_1000124C8(v19, v21);
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004817D0;
  *(v22 + 32) = v6;
  *(v22 + 33) = v1;
  *(v22 + 34) = v2;
  *(v22 + 35) = v3;
  *(v22 + 36) = v4;
  *(v22 + 37) = v5;
  v23 = sub_10002D874(v22);
  v25 = v24;

  Data._Representation.subscript.getter();
  sub_1000124C8(v23, v25);
  Data._Representation.subscript.setter();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1004817D0;
  *(v26 + 32) = v6;
  *(v26 + 33) = v1;
  *(v26 + 34) = v2;
  *(v26 + 35) = v3;
  *(v26 + 36) = v4;
  *(v26 + 37) = v5;
  v27 = sub_10002D874(v26);
  v29 = v28;

  Data._Representation.subscript.getter();
  sub_1000124C8(v27, v29);
  Data._Representation.subscript.setter();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1004817D0;
  *(v30 + 32) = v6;
  *(v30 + 33) = v1;
  *(v30 + 34) = v2;
  *(v30 + 35) = v3;
  *(v30 + 36) = v4;
  *(v30 + 37) = v5;
  v31 = sub_10002D874(v30);
  v33 = v32;

  Data._Representation.subscript.getter();
  sub_1000124C8(v31, v33);
  Data._Representation.subscript.setter();
  v34 = v60 >> 62;
  if ((v60 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v60);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v34 != 2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v35 = MEMORY[0x1000000018] - MEMORY[0x1000000010];
  if (__OFSUB__(MEMORY[0x1000000018], MEMORY[0x1000000010]))
  {
    __break(1u);
LABEL_8:
    v35 = 16;
  }

LABEL_9:
  if (v35 < 16)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_23;
  }

  if (v34 != 2)
  {
    if (v34 != 1)
    {
      v54 = vdupq_n_s64(0x1000000000uLL);
      v59 = vmovn_s32(vuzp1q_s32(vshlq_u64(v54, xmmword_1004817A0), vshlq_u64(v54, xmmword_100481790)));
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = 0;
      goto LABEL_21;
    }

    v36 = __DataStorage._bytes.getter();
    if (v36)
    {
      v37 = v36;
      v38 = __DataStorage._offset.getter();
      if (!__OFSUB__(0, v38))
      {
        v39 = v37 - v38;
        result = __DataStorage._length.getter();
        if (!v39)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
    }

LABEL_27:
    result = __DataStorage._length.getter();
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v42 = MEMORY[0x1000000010];
  v43 = __DataStorage._bytes.getter();
  if (!v43)
  {
LABEL_26:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v44 = v43;
  v45 = __DataStorage._offset.getter();
  if (__OFSUB__(v42, v45))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v42 - v45 + v44;
  result = __DataStorage._length.getter();
  if (v39)
  {
LABEL_19:
    v46 = *v39;
    v41.i32[0] = *(v39 + 1);
    v59 = vmovl_u8(v41).u64[0];
    v47 = *(v39 + 5);
    v48 = *(v39 + 6);
    v49 = *(v39 + 7);
    v50 = *(v39 + 8);
    v51 = *(v39 + 9);
    v52 = *(v39 + 10);
    v53 = *(v39 + 14);
LABEL_21:
    sub_1000124C8(0x1000000000, v60);
    v55 = vmovl_u16((*&v59 & 0xFF00FF00FF00FFLL));
    v56.i64[0] = v55.u32[0];
    v56.i64[1] = v55.u32[1];
    v57 = v56;
    v56.i64[0] = v55.u32[2];
    v56.i64[1] = v55.u32[3];
    v58 = vorrq_s8(vshlq_u64(v57, xmmword_100481850), vshlq_u64(v56, xmmword_1004AD2B0));
    return (*&vorr_s8(*v58.i8, *&vextq_s8(v58, v58, 8uLL)) | (v47 << 40) | v46) + (v48 << 48) + (v49 << 56);
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = type metadata accessor for Logger();
  v43 = *(v45 - 8);
  v13 = *(v43 + 64);
  __chkstk_darwin();
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);
  LOWORD(v59) = a1;
  BYTE2(v59) = BYTE2(a1);
  BYTE3(v59) = BYTE3(a1);
  BYTE4(v59) = BYTE4(a1);
  BYTE5(v59) = BYTE5(a1);
  v49 = a3;
  *(&v59 + 1) = a2;
  *&v60 = a3;
  v48 = a2;
  v17 = *(a6 + 36);
  v51 = v6;
  v18 = *(v6 + v17);
  v50 = a4;
  *(&v60 + 1) = a4;
  v61 = a5;
  v54 = v59;
  v55 = v60;
  v56 = a5;

  v47 = v15;
  v46 = v16;
  v19 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v52, &v59, v19);
  swift_getWitnessTable();
  Dictionary.subscript.getter();
  v62[0] = v54;
  v62[1] = v55;
  v63 = v56;
  v21 = *(v20 + 8);
  v21(v62, v19);
  if (v58 == 1 || v57 < 1)
  {
    return v21(&v59, v19);
  }

  if (v57 == 1)
  {
    v54 = v59;
    v55 = v60;
    v56 = v61;
    type metadata accessor for Dictionary();
    v23 = v51;
    Dictionary.removeValue(forKey:)();
    v21(&v59, v19);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = *(AssociatedConformanceWitness + 144);
    v26 = swift_checkMetadataState();
    v27 = v64;
    result = v25(a1 & 0xFFFFFFFFFFFFLL, v48, v49, v50, a5, v26, AssociatedConformanceWitness);
    if (!v27)
    {
      v64 = 0;
      v28 = (*(AssociatedConformanceWitness + 40))(v26, AssociatedConformanceWitness);
      v30 = v29;
      v31 = v43;
      v32 = v23 + *(a6 + 40);
      v33 = v44;
      v34 = v45;
      (*(v43 + 16))(v44, v32, v45);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *&v54 = swift_slowAlloc();
        *v37 = 136315394;
        v38 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
        v40 = v31;
        v41 = sub_100002320(v38, v39, &v54);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = sub_100002320(v28, v30, &v54);

        *(v37 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v35, v36, "Posted peer absence for %s on %s", v37, 0x16u);
        swift_arrayDestroy();

        return (*(v40 + 8))(v44, v45);
      }

      else
      {

        return (*(v31 + 8))(v33, v34);
      }
    }
  }

  else
  {
    v52 = v57 - 1;
    v53 = 0;
    v54 = v59;
    v55 = v60;
    v56 = v61;
    type metadata accessor for Dictionary();
    return Dictionary.subscript.setter();
  }

  return result;
}

Swift::Int sub_10004F23C()
{
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_10004F294();
  return Hasher._finalize()();
}

void sub_10004F294()
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
  v11 = *(v0 + 8);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = sub_10004F3B0(&v11, &v12);
  v10 = v9;
  Data.hash(into:)();
  sub_1000124C8(v8, v10);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}