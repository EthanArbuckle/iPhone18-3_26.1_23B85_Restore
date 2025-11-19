uint64_t sub_100018BBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066710, &unk_100047120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100018C74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100018C84(uint64_t a1, unint64_t a2)
{
  v7 = _swiftEmptyArrayStorage;
  sub_100018D54(a1, a2, &v7);
  sub_10001316C(a1, a2);
  v5 = v7;
  if (v2)
  {
  }

  return v5;
}

uint64_t sub_100018CEC(uint64_t result)
{
  v3 = *(result + 16);
  v4 = (result + 32);
  do
  {
    if (!v3)
    {
      break;
    }

    v5 = *v4++;
    result = (*(**(v1 + 40) + 136))(v5);
    --v3;
  }

  while (!v2);
  return result;
}

uint64_t sub_100018D54(uint64_t result, unint64_t a2, uint64_t *a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      __break(1u);
      return result;
    }

    v6 = *(result + 16);
    v7 = *(result + 24);
    return sub_100018FE0(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v4)
  {
    v6 = result;
    v7 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
      goto LABEL_18;
    }

    return sub_100018FE0(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v15 = result;
  v16 = a2;
  v17 = BYTE2(a2);
  v18 = BYTE3(a2);
  v19 = BYTE4(a2);
  v20 = BYTE5(a2);
  if ((a2 & 0x3000000000000) != 0)
  {
    sub_100018F7C();
    swift_allocError();
    *v5 = xmmword_100047130;
    *(v5 + 16) = 2;
    return swift_willThrow();
  }

  v8 = (a2 >> 50) & 0x3F;
  if (!v8)
  {
LABEL_18:
    __break(1u);
  }

  v9 = 0;
  v10 = 4 * v8;
  do
  {
    v11 = *(&v15 + v9);
    v12 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v12;
    if ((result & 1) == 0)
    {
      result = sub_100019164(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
      *a3 = result;
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_100019164((v13 > 1), v14 + 1, 1, v12);
      v12 = result;
      *a3 = result;
    }

    *(v12 + 16) = v14 + 1;
    *(v12 + 4 * v14 + 32) = bswap32(v11);
    v9 += 4;
  }

  while (v10 != v9);
  return result;
}

unint64_t sub_100018F7C()
{
  result = qword_100066718;
  if (!qword_100066718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066718);
  }

  return result;
}

uint64_t sub_100018FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_100042DF4();
  v8 = result;
  if (result)
  {
    result = sub_100042E24();
    if (__OFSUB__(a1, result))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_100042E14();
  if (!v8)
  {
    goto LABEL_23;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if ((v11 & 3) != 0)
  {
    sub_100018F7C();
    swift_allocError();
    *v12 = xmmword_100047130;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }

  if (v11 < 4)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v13 = (v11 >> 2) - 1;
  v14 = 0x2000000000000000;
  while (1)
  {
    v16 = *v8++;
    v15 = v16;
    v17 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v17;
    if ((result & 1) == 0)
    {
      result = sub_100019164(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
      *a4 = result;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_100019164((v18 > 1), v19 + 1, 1, v17);
      v17 = result;
      *a4 = result;
    }

    *(v17 + 16) = v19 + 1;
    *(v17 + 4 * v19 + 32) = bswap32(v15);
    if (!v13)
    {
      return result;
    }

    --v13;
    if (!--v14)
    {
      __break(1u);
      goto LABEL_21;
    }
  }
}

char *sub_100019164(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100013A34(&qword_100066720, "ľ");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_100019268(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  v5 = sub_100019AC4;
  if (a1 == 0x363532616873 && a2 == 0xE600000000000000)
  {
    goto LABEL_8;
  }

  v6 = result;
  v7 = sub_1000437F4();
  v5 = sub_100019AC4;
  if (v7 & 1) != 0 || (v5 = sub_100019FC0, a1 == 0x323135616873) && a2 == 0xE600000000000000 || (v8 = sub_1000437F4(), v5 = sub_100019FC0, (v8))
  {
    result = v6;
LABEL_8:
    result[4] = v5;
    result[5] = 0;
    return result;
  }

  sub_100018F7C();
  swift_allocError();
  *v9 = xmmword_100047180;
  *(v9 + 16) = 2;
  swift_willThrow();
  v10 = v6[3];

  swift_deallocPartialClassInstance();
  return v6;
}

Swift::Int sub_1000193E0()
{
  sub_1000438A4();
  sub_100043384();
  return sub_1000438C4();
}

Swift::Int sub_10001943C()
{
  sub_1000438A4();
  sub_100043384();
  return sub_1000438C4();
}

uint64_t sub_100019484@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10005E438;
  v7._object = v3;
  v5 = sub_100043714(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000194FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10005E470;
  v8._object = a2;
  v6 = sub_100043714(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10001956C(uint64_t a1)
{
  v2 = sub_10001A614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000195A8(uint64_t a1)
{
  v2 = sub_10001A614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000195E4(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_100019634(a1);
  return v2;
}

void *sub_100019634(uint64_t *a1)
{
  v4 = sub_100013A34(&qword_100066728, &qword_1000471B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = a1[4];
  sub_100013B38(a1, a1[3]);
  sub_10001A614();
  sub_1000438E4();
  if (!v2)
  {
    v10 = sub_100043744();
    v13 = v10;
    v14 = v11;
    v1[2] = v10;
    v1[3] = v11;
    v15 = sub_100019AC4;
    v16 = v10 == 0x363532616873 && v11 == 0xE600000000000000;
    if (v16 || (v17 = sub_1000437F4(), v15 = sub_100019AC4, (v17 & 1) != 0) || ((v15 = sub_100019FC0, v13 == 0x323135616873) ? (v18 = v14 == 0xE600000000000000) : (v18 = 0), v18 || (v19 = sub_1000437F4(), v15 = sub_100019FC0, (v19 & 1) != 0)))
    {
      v20 = v15;
      (*(v5 + 8))(v8, v4);
      v1[4] = v20;
      v1[5] = 0;
      goto LABEL_4;
    }

    sub_100018F7C();
    swift_allocError();
    *v21 = xmmword_100047180;
    *(v21 + 16) = 2;
    swift_willThrow();
    (*(v5 + 8))(v8, v4);
    v22 = v1[3];
  }

  type metadata accessor for BloomFilterAlgorithm();
  swift_deallocPartialClassInstance();
LABEL_4:
  sub_100013B7C(a1);
  return v1;
}

uint64_t sub_1000198D4(void *a1)
{
  v2 = v1;
  v4 = sub_100013A34(&qword_100066738, &qword_1000471B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  sub_100013B38(a1, a1[3]);
  sub_10001A614();
  sub_1000438F4();
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  sub_1000437A4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100019A04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100019A44@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100019AC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100043284();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100043264();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001ABA8(&qword_100066740, &type metadata accessor for SHA256);
  sub_100043254();
  sub_100013104(a1, a2);
  sub_10001A6FC(a1, a2, v8);
  sub_10001316C(a1, a2);
  sub_100043244();
  (*(v5 + 8))(v8, v4);
  v56 = v9;
  v57 = sub_10001ABA8(&qword_100066748, &type metadata accessor for SHA256Digest);
  v13 = sub_10001A920(v55);
  v14 = v52;
  (*(v52 + 16))(v13, v12, v9);
  sub_100013B38(v55, v56);
  sub_100042E44();
  (*(v14 + 8))(v12, v9);
  v15 = v53;
  v16 = v54;
  sub_100013B7C(v55);
  sub_100013A34(&qword_100066750, &qword_1000471C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100047190;
  v18 = sub_100019F54(0, 3, v15, v16);
  v20 = v19;
  v21 = sub_100016E38(v18, v19);
  sub_10001316C(v18, v20);
  *(v17 + 32) = v21;
  v22 = sub_100019F54(4, 7, v15, v16);
  v24 = v23;
  v25 = sub_100016E38(v22, v23);
  sub_10001316C(v22, v24);
  *(v17 + 40) = v25;
  v26 = sub_100019F54(8, 11, v15, v16);
  v28 = v27;
  v29 = sub_100016E38(v26, v27);
  sub_10001316C(v26, v28);
  *(v17 + 48) = v29;
  v30 = sub_100019F54(12, 15, v15, v16);
  v32 = v31;
  v33 = sub_100016E38(v30, v31);
  sub_10001316C(v30, v32);
  *(v17 + 56) = v33;
  v34 = sub_100019F54(16, 19, v15, v16);
  v36 = v35;
  v37 = sub_100016E38(v34, v35);
  sub_10001316C(v34, v36);
  *(v17 + 64) = v37;
  v38 = sub_100019F54(20, 23, v15, v16);
  v40 = v39;
  v41 = sub_100016E38(v38, v39);
  sub_10001316C(v38, v40);
  *(v17 + 72) = v41;
  v42 = sub_100019F54(24, 27, v15, v16);
  v44 = v43;
  v45 = sub_100016E38(v42, v43);
  sub_10001316C(v42, v44);
  *(v17 + 80) = v45;
  v46 = sub_100019F54(28, 31, v15, v16);
  v48 = v47;
  v49 = sub_100016E38(v46, v47);
  sub_10001316C(v46, v48);
  *(v17 + 88) = v49;
  sub_10001316C(v15, v16);
  return v17;
}

uint64_t sub_100019F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
  }

  else if (v6 > a2)
  {
    if (a2 + 1 >= a1)
    {
      return Data._Representation.subscript.getter();
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return Data._Representation.subscript.getter();
}

uint64_t sub_100019FC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100043294();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100043274();
  v84 = *(v9 - 8);
  v10 = *(v84 + 64);
  __chkstk_darwin(v9);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001ABA8(&qword_100066758, &type metadata accessor for SHA512);
  sub_100043254();
  sub_100013104(a1, a2);
  sub_10001A984(a1, a2, v8);
  sub_10001316C(a1, a2);
  sub_100043244();
  (*(v5 + 8))(v8, v4);
  v88 = v9;
  v89 = sub_10001ABA8(&qword_100066760, &type metadata accessor for SHA512Digest);
  v13 = sub_10001A920(v87);
  v14 = v84;
  (*(v84 + 16))(v13, v12, v9);
  sub_100013B38(v87, v88);
  sub_100042E44();
  (*(v14 + 8))(v12, v9);
  v15 = v85;
  v16 = v86;
  sub_100013B7C(v87);
  sub_100013A34(&qword_100066750, &qword_1000471C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000471A0;
  v18 = sub_100019F54(0, 3, v15, v16);
  v20 = v19;
  v21 = sub_100016E38(v18, v19);
  sub_10001316C(v18, v20);
  *(v17 + 32) = v21;
  v22 = sub_100019F54(4, 7, v15, v16);
  v24 = v23;
  v25 = sub_100016E38(v22, v23);
  sub_10001316C(v22, v24);
  *(v17 + 40) = v25;
  v26 = sub_100019F54(8, 11, v15, v16);
  v28 = v27;
  v29 = sub_100016E38(v26, v27);
  sub_10001316C(v26, v28);
  *(v17 + 48) = v29;
  v30 = sub_100019F54(12, 15, v15, v16);
  v32 = v31;
  v33 = sub_100016E38(v30, v31);
  sub_10001316C(v30, v32);
  *(v17 + 56) = v33;
  v34 = sub_100019F54(16, 19, v15, v16);
  v36 = v35;
  v37 = sub_100016E38(v34, v35);
  sub_10001316C(v34, v36);
  *(v17 + 64) = v37;
  v38 = sub_100019F54(20, 23, v15, v16);
  v40 = v39;
  v41 = sub_100016E38(v38, v39);
  sub_10001316C(v38, v40);
  *(v17 + 72) = v41;
  v42 = sub_100019F54(24, 27, v15, v16);
  v44 = v43;
  v45 = sub_100016E38(v42, v43);
  sub_10001316C(v42, v44);
  *(v17 + 80) = v45;
  v46 = sub_100019F54(28, 31, v15, v16);
  v48 = v47;
  v49 = sub_100016E38(v46, v47);
  sub_10001316C(v46, v48);
  *(v17 + 88) = v49;
  v50 = sub_100019F54(32, 35, v15, v16);
  v52 = v51;
  v53 = sub_100016E38(v50, v51);
  sub_10001316C(v50, v52);
  *(v17 + 96) = v53;
  v54 = sub_100019F54(36, 39, v15, v16);
  v56 = v55;
  v57 = sub_100016E38(v54, v55);
  sub_10001316C(v54, v56);
  *(v17 + 104) = v57;
  v58 = sub_100019F54(40, 43, v15, v16);
  v60 = v59;
  v61 = sub_100016E38(v58, v59);
  sub_10001316C(v58, v60);
  *(v17 + 112) = v61;
  v62 = sub_100019F54(44, 47, v15, v16);
  v64 = v63;
  v65 = sub_100016E38(v62, v63);
  sub_10001316C(v62, v64);
  *(v17 + 120) = v65;
  v66 = sub_100019F54(48, 51, v15, v16);
  v68 = v67;
  v69 = sub_100016E38(v66, v67);
  sub_10001316C(v66, v68);
  *(v17 + 128) = v69;
  v70 = sub_100019F54(52, 55, v15, v16);
  v72 = v71;
  v73 = sub_100016E38(v70, v71);
  sub_10001316C(v70, v72);
  *(v17 + 136) = v73;
  v74 = sub_100019F54(56, 59, v15, v16);
  v76 = v75;
  v77 = sub_100016E38(v74, v75);
  sub_10001316C(v74, v76);
  *(v17 + 144) = v77;
  v78 = sub_100019F54(60, 63, v15, v16);
  v80 = v79;
  v81 = sub_100016E38(v78, v79);
  sub_10001316C(v78, v80);
  *(v17 + 152) = v81;
  sub_10001316C(v15, v16);
  return v17;
}

unint64_t sub_10001A614()
{
  result = qword_100066730;
  if (!qword_100066730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066730);
  }

  return result;
}

_BYTE *sub_10001A668@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000131C0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10001AEC8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10001AF44(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10001A6FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_100043284();
      sub_10001ABA8(&qword_100066740, &type metadata accessor for SHA256);
      return sub_100043234();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10001ADE8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100066740, &type metadata accessor for SHA256);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10001ADE8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100066740, &type metadata accessor for SHA256);
  }

  sub_100043284();
  sub_10001ABA8(&qword_100066740, &type metadata accessor for SHA256);
  return sub_100043234();
}

uint64_t *sub_10001A920(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001A984(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_100043294();
      sub_10001ABA8(&qword_100066758, &type metadata accessor for SHA512);
      return sub_100043234();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10001ADE8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100066758, &type metadata accessor for SHA512);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10001ADE8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100066758, &type metadata accessor for SHA512);
  }

  sub_100043294();
  sub_10001ABA8(&qword_100066758, &type metadata accessor for SHA512);
  return sub_100043234();
}

uint64_t sub_10001ABA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001ABF4()
{
  result = qword_100066768;
  if (!qword_100066768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066768);
  }

  return result;
}

unint64_t sub_10001AC4C()
{
  result = qword_100066770;
  if (!qword_100066770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066770);
  }

  return result;
}

unint64_t sub_10001ACA4()
{
  result = qword_100066778;
  if (!qword_100066778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilterAlgorithm.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BloomFilterAlgorithm.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10001ADE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_100042DF4();
  if (!result || (result = sub_100042E24(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100042E14();
      a5(0);
      sub_10001ABA8(a6, a7);
      return sub_100043234();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001AEC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100042E34();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_100042DE4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100043054();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10001AF44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100042E34();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_100042DE4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_10001B038()
{
  v1 = sub_1000432E4();
  [v0 deleteSetting:v1];
}

id sub_10001B0FC()
{
  v1 = sub_1000432E4();
  v2 = [v0 readSetting:v1];

  if (v2)
  {
    sub_100043314();

    v2 = sub_100043044();
  }

  return v2;
}

void sub_10001B1B8()
{
  v1 = sub_1000432E4();
  sub_1000430A4(0);
  v2 = sub_1000432E4();

  [v0 setSetting:v1 toValue:v2];
}

void sub_10001B250()
{
  v1 = sub_1000432E4();
  [v0 deleteSetting:v1];
}

uint64_t sub_10001B2D8()
{
  v1 = sub_1000432E4();
  v2 = [v0 readSetting:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100043314();

  return v3;
}

void sub_10001B370()
{
  v1 = sub_1000432E4();
  v2 = sub_1000432E4();
  [v0 setSetting:v1 toValue:v2];
}

uint64_t sub_10001B3F4(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10001B42C()
{
  v1 = *v0;
  sub_1000438A4();
  sub_1000438B4(v1);
  return sub_1000438C4();
}

Swift::Int sub_10001B4A0()
{
  v1 = *v0;
  sub_1000438A4();
  sub_1000438B4(v1);
  return sub_1000438C4();
}

void *sub_10001B4E4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL sub_10001B578(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10001B5A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10001B5D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_10001B6C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001B6F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10001BFD8(a1);

  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for LaunchWarningDetails()
{
  result = qword_100068660;
  if (!qword_100068660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001B77C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  v13 = type metadata accessor for LaunchWarningDetails();
  v14 = v13[6];
  v15 = sub_100043174();
  (*(*(v15 - 8) + 32))(a8 + v14, a4, v15);
  *(a8 + v13[7]) = a5 & 1;
  *(a8 + v13[8]) = a6;
  v16 = a8 + v13[9];

  return sub_10001B848(a7, v16);
}

uint64_t sub_10001B848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001B8BC()
{
  result = qword_100066840;
  if (!qword_100066840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066840);
  }

  return result;
}

unint64_t sub_10001B914()
{
  result = qword_100066848;
  if (!qword_100066848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066848);
  }

  return result;
}

unint64_t sub_10001B96C()
{
  result = qword_100067130;
  if (!qword_100067130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067130);
  }

  return result;
}

unint64_t sub_10001B9C4()
{
  result = qword_100066850;
  if (!qword_100066850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066850);
  }

  return result;
}

unint64_t sub_10001BA1C()
{
  result = qword_100066858;
  if (!qword_100066858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchWarningReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchWarningReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001BC04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100043174();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100013A34(&qword_100066838, &qword_1000473E0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10001BD44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100043174();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v13 = sub_100013A34(&qword_100066838, &qword_1000473E0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_10001BE74()
{
  type metadata accessor for SecCSDigestAlgorithm();
  if (v0 <= 0x3F)
  {
    sub_100043174();
    if (v1 <= 0x3F)
    {
      sub_10001BF80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for SecCSDigestAlgorithm()
{
  if (!qword_1000668F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000668F8);
    }
  }
}

void sub_10001BF80()
{
  if (!qword_1000668B8)
  {
    sub_100043004();
    v0 = sub_1000435A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1000668B8);
    }
  }
}

uint64_t sub_10001BFD8(uint64_t a1)
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

uint64_t sub_10001C014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 1634564716 && a2 == 0xE400000000000000;
  if (v4 || (sub_1000437F4() & 1) != 0)
  {
    v7 = &enum case for Algorithm.lzma(_:);
LABEL_7:
    v8 = *v7;
    v9 = sub_1000431B4();
    v16 = *(v9 - 8);
    (*(v16 + 104))(a3, v8, v9);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
    goto LABEL_8;
  }

  if (a1 == 1651076218 && a2 == 0xE400000000000000 || (sub_1000437F4() & 1) != 0)
  {
    v7 = &enum case for Algorithm.zlib(_:);
    goto LABEL_7;
  }

  v15 = sub_1000431B4();
  v10 = *(*(v15 - 8) + 56);
  v13 = v15;
  v11 = a3;
  v12 = 1;
LABEL_8:

  return v10(v11, v12, 1, v13);
}

void sub_10001C1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v54 = a2;
  v56 = a1;
  v52 = sub_1000431B4();
  v55 = *(v52 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v52);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000431A4();
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100043004();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  v18 = sub_10001C6AC();
  v19 = *(v11 + 16);
  v19(v17, v56, v10);
  v20 = v59;
  v21 = sub_10001C6F8(v17, &selRef_fileHandleForReadingFromURL_error_);
  if (!v20)
  {
    v47 = v19;
    v48 = v18;
    v49 = v15;
    v50 = v21;
    v56 = v6;
    v22 = v52;
    v45 = v9;
    v46 = v5;
    v59 = 0;
    v23 = objc_opt_self();
    v24 = [v23 defaultManager];
    v25 = v54;
    sub_100042FC4();
    v26 = sub_1000432E4();

    v27 = [v24 fileExistsAtPath:v26];

    if ((v27 & 1) == 0)
    {
      v28 = [v23 defaultManager];
      sub_100042FC4();
      v29 = sub_1000432E4();

      [v28 createFileAtPath:v29 contents:0 attributes:0];
    }

    v30 = v49;
    v47(v49, v25, v10);
    v31 = v59;
    v32 = sub_10001C6F8(v30, &selRef_fileHandleForWritingToURL_error_);
    v33 = v55;
    if (v31)
    {
    }

    else
    {
      v34 = v32;
      (*(v53 + 104))(v45, enum case for FilterOperation.decompress(_:), v56);
      (*(v33 + 16))(v46, v51, v22);
      v35 = swift_allocObject();
      v36 = v50;
      *(v35 + 16) = v50;
      v37 = sub_100013A34(&qword_100066908, &qword_1000476A8);
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();
      v40 = v36;
      sub_100043194();
      v41 = sub_100043184();
      for (i = v42; i >> 60 != 15; i = v44)
      {
        v57 = v41;
        v58 = i;
        sub_10001C8B8();
        sub_100043484();
        sub_100013158(v41, i);
        v41 = sub_100043184();
      }
    }
  }
}

unint64_t sub_10001C6AC()
{
  result = qword_100066900;
  if (!qword_100066900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066900);
  }

  return result;
}

id sub_10001C6F8(uint64_t a1, SEL *a2)
{
  sub_100042F84(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() *a2];

  v7 = v14;
  if (v6)
  {
    v8 = sub_100043004();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_100042F44();

    swift_willThrow();
    v12 = sub_100043004();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_10001C850()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C888@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  result = sub_100043474();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

unint64_t sub_10001C8B8()
{
  result = qword_100066910;
  if (!qword_100066910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066910);
  }

  return result;
}

uint64_t sub_10001C90C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v32 = sub_1000431B4();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v32);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000431A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_allocObject();
  *(result + 16) = 0;
  v35 = a2;
  v17 = a2 >> 62;
  v33 = v3;
  if ((a2 >> 62) > 1)
  {
    v18 = result;
    v19 = 0;
    if (v17 != 2)
    {
      goto LABEL_10;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = result;
    v19 = BYTE6(v35);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = HIDWORD(a1) - a1;
LABEL_10:
  (*(v12 + 104))(v15, enum case for FilterOperation.decompress(_:), v11);
  (*(v7 + 16))(v10, a3, v32);
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v18;
  v23 = v35;
  v22[4] = a1;
  v22[5] = v23;
  v24 = sub_100013A34(&qword_100066908, &qword_1000476A8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  sub_100013104(a1, v23);
  v27 = v33;
  sub_100043194();
  if (v27)
  {
  }

  v34 = xmmword_100046EE0;
  v28 = sub_100043184();
  while (v29 >> 60 != 15)
  {
    v30 = v28;
    v31 = v29;
    sub_1000430D4();
    sub_100013158(v30, v31);
    v28 = sub_100043184();
  }

  return v34;
}

uint64_t sub_10001CC60()
{
  v1 = v0[3];

  sub_10001316C(v0[4], v0[5]);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001CCA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  swift_beginAccess();
  result = *(v5 + 16);
  if (__OFSUB__(v6, result))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 - result >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = v6 - result;
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_10;
  }

  if (result + v10 < result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_1000430E4();
  v13 = v12;
  result = swift_beginAccess();
  v14 = *(v5 + 16);
  v15 = __OFADD__(v14, v10);
  v16 = v14 + v10;
  if (!v15)
  {
    *(v5 + 16) = v16;
    *a2 = v11;
    a2[1] = v13;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10001CD78(uint64_t *a1)
{
  v2 = sub_100043004();
  v133 = *(v2 - 8);
  v134 = v2;
  v3 = *(v133 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v124 - v8;
  v10 = __chkstk_darwin(v7);
  v131 = &v124 - v11;
  v12 = __chkstk_darwin(v10);
  v128 = &v124 - v13;
  __chkstk_darwin(v12);
  v126 = &v124 - v14;
  v15 = sub_1000431E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v124 - v22;
  v24 = __chkstk_darwin(v21);
  v130 = (&v124 - v25);
  v26 = __chkstk_darwin(v24);
  v129 = &v124 - v27;
  __chkstk_darwin(v26);
  v127 = &v124 - v28;
  staticCode = 0;
  v132 = a1;
  sub_100042F84((&v124 - v28));
  v30 = v29;
  v31 = SecStaticCodeCreateWithPath(v29, 0, &staticCode);

  if (v31 || !staticCode)
  {
    v37 = sub_1000212A8();
    v38 = v16;
    v39 = *(v16 + 16);
    v131 = v15;
    v39(v20, v37, v15);
    v40 = v133;
    v41 = v134;
    (*(v133 + 16))(v6, v132, v134);
    v42 = sub_1000431C4();
    v43 = sub_1000434A4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v138 = v130;
      *v44 = 67109378;
      *(v44 + 4) = v31;
      *(v44 + 8) = 2082;
      v45 = sub_100042FC4();
      v132 = v38;
      v47 = v46;
      (*(v40 + 8))(v6, v134);
      v48 = sub_100015730(v45, v47, &v138);

      *(v44 + 10) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "Unable to create code object (%d) for: %{public}s", v44, 0x12u);
      sub_100013B7C(v130);

      (v132[1])(v20, v131);
    }

    else
    {

      (*(v40 + 8))(v6, v41);
      (*(v38 + 8))(v20, v131);
    }

    sub_10001DB34();
    swift_allocError();
    *v49 = v31;
    *(v49 + 4) = 0;
    swift_willThrow();
    goto LABEL_42;
  }

  information = 0;
  v125 = staticCode;
  v32 = SecCodeCopySigningInformation(v125, 0x21u, &information);
  if (v32 || (v33 = information) == 0)
  {
    v50 = v32;
    v51 = sub_1000212A8();
    v52 = v16;
    v53 = *(v16 + 16);
    v54 = v15;
    v53(v23, v51, v15);
    v55 = v133;
    v56 = v134;
    (*(v133 + 16))(v9, v132, v134);
    v42 = sub_1000431C4();
    v57 = sub_1000434A4();
    if (os_log_type_enabled(v42, v57))
    {
      v58 = swift_slowAlloc();
      v131 = v54;
      v59 = v58;
      v132 = swift_slowAlloc();
      *&v138 = v132;
      *v59 = 67109378;
      v130 = v42;
      v60 = v50;
      *(v59 + 4) = v50;
      *(v59 + 8) = 2082;
      LODWORD(v129) = v57;
      v61 = sub_100042FC4();
      v63 = v62;
      (*(v55 + 8))(v9, v56);
      v64 = sub_100015730(v61, v63, &v138);
      v50 = v60;

      *(v59 + 10) = v64;
      v42 = v130;
      _os_log_impl(&_mh_execute_header, v130, v129, "Unable to create signing info (%d) for: %{public}s", v59, 0x12u);
      sub_100013B7C(v132);

      (*(v52 + 8))(v23, v131);
    }

    else
    {

      (*(v55 + 8))(v9, v56);
      (*(v52 + 8))(v23, v54);
    }

    sub_10001DB34();
    swift_allocError();
    *v65 = v50;
    *(v65 + 4) = 0;
    swift_willThrow();
    goto LABEL_41;
  }

  *&v136 = kSecCodeInfoCdHashesFull;
  v34 = kSecCodeInfoCdHashesFull;
  v35 = v33;
  sub_100013A34(&qword_100066920, &qword_1000476B0);
  v36 = [(__CFDictionary *)v35 __swift_objectForKeyedSubscript:sub_100043804()];
  swift_unknownObjectRelease();
  if (v36)
  {
    sub_1000435C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  v66 = v16;
  v67 = v134;
  v68 = v131;
  v138 = v136;
  v139 = v137;
  v69 = v15;
  if (!*(&v137 + 1))
  {
    sub_10001DB88(&v138);
LABEL_22:
    v71 = sub_1000212A8();
    v72 = v130;
    (*(v66 + 16))(v130, v71, v15);
    v73 = v66;
    v74 = v133;
    (*(v133 + 16))(v68, v132, v67);
    v75 = v68;
    v76 = sub_1000431C4();
    v77 = sub_1000434A4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v124 = v35;
      v80 = v79;
      *&v138 = v79;
      *v78 = 136446210;
      v81 = sub_100042FC4();
      v82 = v67;
      v83 = v81;
      v131 = v69;
      v85 = v84;
      (*(v74 + 8))(v75, v82);
      v86 = sub_100015730(v83, v85, &v138);

      *(v78 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v76, v77, "Unable to get full cdhash information for: %{public}s", v78, 0xCu);
      sub_100013B7C(v80);
      v35 = v124;

      v87 = *(v73 + 8);
      v42 = v73 + 8;
      v87(v130, v131);
    }

    else
    {

      (*(v74 + 8))(v75, v67);
      v88 = *(v73 + 8);
      v42 = v73 + 8;
      v88(v72, v69);
    }

    sub_10001DB34();
    swift_allocError();
    *v89 = 0;
    *(v89 + 4) = 1;
    swift_willThrow();

    goto LABEL_41;
  }

  sub_100013A34(&qword_100066930, &qword_1000476C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = v134;
    v68 = v131;
    goto LABEL_22;
  }

  v70 = v135;
  if ([(__CFDictionary *)v35 __swift_objectForKeyedSubscript:kSecCodeInfoDigestAlgorithm])
  {
    sub_1000435C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  v138 = v136;
  v139 = v137;
  v124 = v35;
  if (!*(&v137 + 1))
  {

    sub_10001DB88(&v138);
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_34:
    v93 = sub_1000212A8();
    v94 = v129;
    (*(v66 + 16))(v129, v93, v15);
    v95 = v133;
    v96 = v128;
    v97 = v134;
    (*(v133 + 16))(v128, v132, v134);
    v98 = sub_1000431C4();
    v99 = sub_1000434A4();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = v96;
      v132 = v66;
      v102 = v97;
      v103 = v100;
      v104 = swift_slowAlloc();
      *&v138 = v104;
      *v103 = 136446210;
      v105 = sub_100042FC4();
      v106 = v95;
      v108 = v107;
      (*(v106 + 8))(v101, v102);
      v109 = sub_100015730(v105, v108, &v138);

      *(v103 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v98, v99, "Unable to get best cdhash digest algorithm: %{public}s", v103, 0xCu);
      sub_100013B7C(v104);

      (v132[1])(v129, v69);
LABEL_40:
      sub_10001DB34();
      swift_allocError();
      *v122 = 0;
      *(v122 + 4) = 1;
      swift_willThrow();
      v42 = v124;

LABEL_41:
LABEL_42:

      return v42;
    }

LABEL_39:

    (*(v95 + 8))(v96, v97);
    (*(v66 + 8))(v94, v69);
    goto LABEL_40;
  }

  if (!*(v70 + 16) || (v42 = v135, v90 = sub_10001DBF0(v135), (v91 & 1) == 0))
  {

    v110 = sub_1000212A8();
    v94 = v127;
    (*(v66 + 16))(v127, v110, v69);
    v95 = v133;
    v96 = v126;
    v97 = v134;
    (*(v133 + 16))(v126, v132, v134);
    v98 = sub_1000431C4();
    v111 = sub_1000434A4();
    if (os_log_type_enabled(v98, v111))
    {
      v112 = swift_slowAlloc();
      v113 = v96;
      v132 = v66;
      v114 = v97;
      v115 = v112;
      v116 = swift_slowAlloc();
      *&v138 = v116;
      *v115 = 136446210;
      v117 = sub_100042FC4();
      v118 = v95;
      v120 = v119;
      (*(v118 + 8))(v113, v114);
      v121 = sub_100015730(v117, v120, &v138);

      *(v115 + 4) = v121;
      _os_log_impl(&_mh_execute_header, v98, v111, "Unable to get best cdhash data: %{public}s", v115, 0xCu);
      sub_100013B7C(v116);

      (v132[1])(v127, v69);
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v92 = v90;

  sub_100013104(*(*(v70 + 56) + 16 * v92), *(*(v70 + 56) + 16 * v92 + 8));

  return v42;
}

unint64_t sub_10001DB34()
{
  result = qword_100066918;
  if (!qword_100066918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066918);
  }

  return result;
}

uint64_t sub_10001DB88(uint64_t a1)
{
  v2 = sub_100013A34(&qword_100066928, &qword_1000476B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001DBF0(int a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100043894();

  return sub_10001DE28(a1, v4);
}

uint64_t initializeBufferWithCopyOfBuffer for CodeSignatureError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CodeSignatureError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodeSignatureError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10001DC98(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001DCB4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_10001DCE4(uint64_t a1)
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

__n128 sub_10001DD00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001DD14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10001DD68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_10001DDDC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_10001DE28(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10001DE9C()
{
  if (*v0)
  {
    result = 0x64696C61766E69;
  }

  else
  {
    result = 0x64696C6176;
  }

  *v0;
  return result;
}

uint64_t sub_10001DED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1000437F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000437F4();

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

uint64_t sub_10001DFB8(uint64_t a1)
{
  v2 = sub_10001E418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DFF4(uint64_t a1)
{
  v2 = sub_10001E418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E03C(uint64_t a1)
{
  v2 = sub_10001E46C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E078(uint64_t a1)
{
  v2 = sub_10001E46C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E0B4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10001E0E4(uint64_t a1)
{
  v2 = sub_10001E4C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E120(uint64_t a1)
{
  v2 = sub_10001E4C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E15C(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_100013A34(&qword_100066940, &qword_1000477E0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_100013A34(&qword_100066948, &qword_1000477E8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_100013A34(&qword_100066950, &unk_1000477F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_100013B38(a1, a1[3]);
  sub_10001E418();
  sub_1000438F4();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_10001E46C();
    sub_100043794();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_10001E4C0();
    sub_100043794();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_10001E418()
{
  result = qword_1000686F8;
  if (!qword_1000686F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686F8);
  }

  return result;
}

unint64_t sub_10001E46C()
{
  result = qword_100068700;
  if (!qword_100068700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068700);
  }

  return result;
}

unint64_t sub_10001E4C0()
{
  result = qword_100068708[0];
  if (!qword_100068708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068708);
  }

  return result;
}

uint64_t sub_10001E514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001ED48(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void sub_10001E560()
{
  v0 = sub_1000432E4();
  v1 = sub_1000432E4();
  v2 = sub_1000432E4();
  ApplePinned = SecPolicyCreateApplePinned();

  if (ApplePinned)
  {
    qword_10006A9A0 = ApplePinned;
  }

  else
  {
    sub_1000436A4();
    __break(1u);
  }
}

uint64_t sub_10001E668()
{
  v0 = sub_1000431E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v52 - v6;
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = [objc_allocWithZone(MSDecodeOptions) init];
  v11 = objc_opt_self();
  isa = sub_100043094().super.isa;
  v55 = 0;
  v54 = v10;
  v13 = [v11 decodeMessageSecurityObject:isa options:v10 error:&v55];

  if (v13)
  {
    v14 = v55;
    v15 = v1;
    if ([v13 embeddedContent])
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = v16;
        v18 = sub_100043094().super.isa;
        [v17 setDataContent:v18];

        v19 = [v17 signers];
        sub_10001F184();
        v20 = sub_100043404();

        if (v20 >> 62)
        {
          v47 = sub_1000436B4();

          if (v47)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v21)
          {
LABEL_6:
            sub_100013A34(&qword_100066960, qword_100047800);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_100046DE0;
            if (qword_1000686F0 != -1)
            {
              swift_once();
            }

            v23 = qword_10006A9A0;
            type metadata accessor for SecPolicy();
            *(v22 + 56) = v24;
            *(v22 + 32) = v23;
            v25 = v23;
            v26 = sub_1000433F4().super.isa;

            v55 = 0;
            v27 = [v17 verifySignaturesAndSignersWithPolicies:v26 verifyTime:0 error:&v55];

            if (v27)
            {
              v28 = v55;

              swift_unknownObjectRelease();
              return 0;
            }

            v46 = v55;
            sub_100042F44();

            swift_willThrow();
            swift_unknownObjectRelease();
            goto LABEL_11;
          }
        }

        v48 = sub_1000211D4();
        (*(v1 + 16))(v9, v48, v0);
        v49 = sub_1000431C4();
        v50 = sub_1000434A4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "CMS signers is empty", v51, 2u);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v15 + 8))(v9, v0);
        return 1;
      }

      swift_unknownObjectRelease();
    }

    v38 = sub_1000211D4();
    (*(v1 + 16))(v7, v38, v0);
    v39 = v13;
    v40 = sub_1000431C4();
    v41 = sub_1000434A4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      *(v42 + 4) = v39;
      *v43 = v13;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "Not MSCMSSignedData: %{public}@", v42, 0xCu);
      sub_100015C64(v43);

      v45 = v54;
    }

    else
    {
      v45 = v40;
      v40 = v54;
    }

    (*(v15 + 8))(v7, v0);
    return 1;
  }

  v30 = v55;
  sub_100042F44();

  swift_willThrow();
  v15 = v1;
LABEL_11:

  v31 = sub_1000211D4();
  v32 = v53;
  (*(v15 + 16))(v53, v31, v0);
  swift_errorRetain();
  v33 = sub_1000431C4();
  v34 = sub_1000434A4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138543362;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "Signature validation error: %{public}@", v35, 0xCu);
    sub_100015C64(v36);
  }

  else
  {
  }

  (*(v15 + 8))(v32, v0);
  return 1;
}

uint64_t sub_10001ED48(uint64_t *a1)
{
  v29 = sub_100013A34(&qword_100066A18, &qword_100047BB0);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v29);
  v4 = v25 - v3;
  v5 = sub_100013A34(&qword_100066A20, &qword_100047BB8);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = sub_100013A34(&qword_100066A28, &qword_100047BC0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_100013B38(a1, a1[3]);
  sub_10001E418();
  v14 = v31;
  sub_1000438E4();
  if (v14)
  {
    return sub_100013B7C(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_100043784();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_100043644();
    swift_allocError();
    v22 = v21;
    v23 = *(sub_100013A34(&qword_100066A30, &qword_100047BC8) + 48);
    *v22 = &type metadata for SignatureStatus;
    sub_100043734();
    sub_100043634();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_100013B7C(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_10001E46C();
    sub_100043724();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_10001E4C0();
    sub_100043724();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  sub_100013B7C(v31);
  return v32;
}

unint64_t sub_10001F184()
{
  result = qword_100066958;
  if (!qword_100066958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066958);
  }

  return result;
}

void type metadata accessor for SecPolicy()
{
  if (!qword_100066A10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100066A10);
    }
  }
}

unint64_t sub_10001F224()
{
  result = qword_100066968;
  if (!qword_100066968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066968);
  }

  return result;
}

unint64_t sub_10001F2E8()
{
  result = qword_100068C90[0];
  if (!qword_100068C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068C90);
  }

  return result;
}

unint64_t sub_10001F340()
{
  result = qword_100068DA0;
  if (!qword_100068DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DA0);
  }

  return result;
}

unint64_t sub_10001F398()
{
  result = qword_100068DA8[0];
  if (!qword_100068DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068DA8);
  }

  return result;
}

unint64_t sub_10001F3F0()
{
  result = qword_100068E30;
  if (!qword_100068E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E30);
  }

  return result;
}

unint64_t sub_10001F448()
{
  result = qword_100068E38[0];
  if (!qword_100068E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068E38);
  }

  return result;
}

unint64_t sub_10001F4A0()
{
  result = qword_100068EC0;
  if (!qword_100068EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068EC0);
  }

  return result;
}

unint64_t sub_10001F4F8()
{
  result = qword_100068EC8[0];
  if (!qword_100068EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068EC8);
  }

  return result;
}

uint64_t sub_10001F578(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1702521203;
  }

  else
  {
    v4 = 7107189;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1702521203;
  }

  else
  {
    v6 = 7107189;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000437F4();
  }

  return v9 & 1;
}

Swift::Int sub_10001F610()
{
  v1 = *v0;
  sub_1000438A4();
  sub_100043384();

  return sub_1000438C4();
}

uint64_t sub_10001F684()
{
  *v0;
  sub_100043384();
}

Swift::Int sub_10001F6E4()
{
  v1 = *v0;
  sub_1000438A4();
  sub_100043384();

  return sub_1000438C4();
}

uint64_t sub_10001F754@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10005E978;
  v8._object = v3;
  v5 = sub_100043714(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10001F7B4(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 1702521203;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10001F7E4()
{
  if (*v0)
  {
    result = 1702521203;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_10001F810@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_10005E978;
  v9._object = a2;
  v6 = sub_100043714(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10001F874(uint64_t a1)
{
  v2 = sub_100020F08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001F8B0(uint64_t a1)
{
  v2 = sub_100020F08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001F8EC(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_10001F944(a1, a2);
  return v7;
}

uint64_t sub_10001F944(uint64_t a1, unint64_t a2)
{
  v43 = sub_100043004();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v43);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  sub_100042FC4();
  v10 = sub_1000432E4();

  v11 = [v9 fileExistsAtPath:v10];

  v40 = a2;
  if ((v11 & 1) == 0)
  {
    v45 = sub_100018A0C(a2 >> 3);
    v46 = v22;
    sub_100020BAC(&v45, 0);
    v24 = v45;
    v23 = v46;
    v25 = [v8 defaultManager];
    sub_100042FC4();
    v26 = sub_1000432E4();

    isa = sub_100043094().super.isa;
    [v25 createFileAtPath:v26 contents:isa attributes:0];

    sub_10001316C(v24, v23);
    v21 = v42;
    v18 = v43;
    goto LABEL_12;
  }

  v12 = [v8 defaultManager];
  sub_100042FC4();
  v13 = sub_1000432E4();

  v45 = 0;
  v14 = [v12 attributesOfItemAtPath:v13 error:&v45];

  v15 = v45;
  if (!v14)
  {
    v35 = v45;
    sub_100042F44();

    swift_willThrow();
    (*(v5 + 8))(a1, v43);
    v21 = v42;
    goto LABEL_17;
  }

  type metadata accessor for FileAttributeKey();
  sub_100021128(&qword_1000666C0, type metadata accessor for FileAttributeKey);
  v16 = sub_1000432B4();
  v17 = v15;

  v18 = v43;
  if (*(v16 + 16) && (v19 = sub_100018488(NSFileSize), (v20 & 1) != 0))
  {
    sub_10001607C(*(v16 + 56) + 32 * v19, &v45);

    if (swift_dynamicCast())
    {
      v21 = v42;
      if (v44 >> 61)
      {
        __break(1u);
      }

      if (v40 != 8 * v44)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v21 = v42;
  if (v40)
  {
LABEL_16:
    sub_100018F7C();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 2;
    swift_willThrow();
    (*(v5 + 8))(a1, v18);
    goto LABEL_17;
  }

LABEL_12:
  v28 = a1;
  v29 = v5;
  v30 = *(v5 + 16);
  v43 = OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url;
  v30(v21 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url, v28, v18);
  sub_10001C6AC();
  v31 = v41;
  v30(v41, v28, v18);
  v32 = sub_10001FE78(v31);
  if (v2)
  {
    v33 = *(v29 + 8);
    v33(v28, v18);
    v33(v21 + v43, v18);
LABEL_17:
    type metadata accessor for BloomFilterDiskStorage();
    v37 = *(*v21 + 48);
    v38 = *(*v21 + 52);
    swift_deallocPartialClassInstance();
    return v21;
  }

  v34 = v32;
  (*(v29 + 8))(v28, v18);
  *(v21 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_fh) = v34;
  *(v21 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size) = v40;
  return v21;
}

id sub_10001FE78(uint64_t a1)
{
  sub_100042F84(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_100043004();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_100042F44();

    swift_willThrow();
    v10 = sub_100043004();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_10001FFD0(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_100020020(a1);
  return v5;
}

uint64_t sub_100020020(uint64_t *a1)
{
  v3 = sub_100043004();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v30 = v26 - v8;
  v9 = sub_100013A34(&qword_100066A38, &qword_100047BE0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v32 = a1;
  sub_100013B38(a1, v15);
  sub_100020F08();
  sub_1000438E4();
  if (v1)
  {
    v16 = v31;
    type metadata accessor for BloomFilterDiskStorage();
    v22 = *(*v16 + 48);
    v23 = *(*v16 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v7;
    v28 = v10;
    v17 = v29;
    v34 = 0;
    sub_100021128(&qword_100066A48, &type metadata accessor for URL);
    v18 = v30;
    sub_100043764();
    v19 = OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url;
    v16 = v31;
    (*(v17 + 32))(v31 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url, v18, v3);
    v33 = 1;
    v20 = sub_100043774();
    v26[1] = v19;
    *(v16 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size) = v20;
    sub_10001C6AC();
    v21 = v27;
    (*(v17 + 16))(v27, v16 + v19, v3);
    v25 = sub_10001FE78(v21);
    (*(v28 + 8))(v13, v9);
    *(v16 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_fh) = v25;
  }

  sub_100013B7C(v32);
  return v16;
}

uint64_t sub_1000203D0(void *a1)
{
  v3 = v1;
  v5 = sub_100013A34(&qword_100066A50, &qword_100047BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_100013B38(a1, a1[3]);
  sub_100020F08();
  sub_1000438F4();
  v13[15] = 0;
  sub_100043004();
  sub_100021128(&qword_100066A58, &type metadata accessor for URL);
  sub_1000437C4();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size);
    v13[14] = 1;
    sub_1000437D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000205A8(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size) <= a1)
  {
    sub_100018F7C();
    swift_allocError();
    *v10 = a1;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
LABEL_8:
    swift_willThrow();
    return v8 & 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_fh);
  v17 = 0;
  if (![v4 seekToOffset:a1 >> 3 error:&v17])
  {
    v11 = v17;
    sub_100042F44();

    goto LABEL_8;
  }

  v5 = v17;
  v6 = sub_100043474();
  if (!v2)
  {
    if (v7 >> 60 != 15)
    {
      v13 = ~a1 & 7;
      v14 = v6;
      v15 = v7;
      v16 = sub_100016E38(v6, v7);
      sub_100013158(v14, v15);
      v8 = (v16 >> v13) & 1;
      return v8 & 1;
    }

    sub_100018F7C();
    swift_allocError();
    *v9 = xmmword_100047BD0;
    *(v9 + 16) = 0;
    goto LABEL_8;
  }

  return v8 & 1;
}

void sub_10002073C(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size) <= a1)
  {
    sub_100018F7C();
    swift_allocError();
    *v10 = a1;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    goto LABEL_8;
  }

  v4 = a1 >> 3;
  v5 = *(v1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_fh);
  __src = 0;
  if (![v5 seekToOffset:a1 >> 3 error:&__src])
  {
    v11 = __src;
    sub_100042F44();

    goto LABEL_8;
  }

  v6 = __src;
  v7 = sub_100043474();
  if (v2)
  {
    return;
  }

  if (v8 >> 60 == 15)
  {
    sub_100018F7C();
    swift_allocError();
    *v9 = xmmword_100047BD0;
    *(v9 + 16) = 0;
LABEL_8:
    swift_willThrow();
    return;
  }

  v12 = ~a1 & 7;
  v13 = v7;
  v14 = v8;
  v21 = 0;
  __src = (sub_100016E38(v7, v8) | (1 << v12));
  if ([v5 seekToOffset:v4 error:&v21])
  {
    v15 = v21;
    v16 = sub_1000131C0(&__src, &__src + 1);
    v18 = v17;
    isa = sub_100043094().super.isa;
    sub_10001316C(v16, v18 & 0xFFFFFFFFFFFFFFLL);
    [v5 writeData:isa];
    sub_100013158(v13, v14);
  }

  else
  {
    v20 = v21;
    sub_100042F44();

    swift_willThrow();
    sub_100013158(v13, v14);
  }
}

id sub_100020970()
{
  v0 = [objc_opt_self() defaultManager];
  sub_100042F84(OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url);
  v2 = v1;
  sub_100042F84(v3);
  v5 = v4;
  v9 = 0;
  v6 = [v0 copyItemAtURL:v2 toURL:v4 error:&v9];

  if (v6)
  {
    return v9;
  }

  v8 = v9;
  sub_100042F44();

  return swift_willThrow();
}

uint64_t sub_100020A80()
{
  v1 = OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url;
  v2 = sub_100043004();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100020B2C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_100020BAC(uint64_t *a1, int a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_10001316C(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_100046EE0;
      sub_10001316C(0, 0xC000000000000000);
      sub_100020E14(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_10001316C(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  v9 = *a1;

  sub_10001316C(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_100046EE0;
  sub_10001316C(0, 0xC000000000000000);
  sub_100043014();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  v13 = sub_100042DF4();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_100042E24();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_16;
  }

  v19 = sub_100042E14();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  memset((v14 + v16), a2, v20);
  *a1 = __b;
  a1[1] = v10 | 0x8000000000000000;
}

void sub_100020E14(int *a1, int a2)
{
  sub_100043034();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = sub_100042DF4();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_100042E24();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = sub_100042E14();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t type metadata accessor for BloomFilterDiskStorage()
{
  result = qword_100069350;
  if (!qword_100069350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100020F08()
{
  result = qword_100066A40;
  if (!qword_100066A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A40);
  }

  return result;
}

unint64_t sub_100020F60()
{
  result = qword_100066A60;
  if (!qword_100066A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A60);
  }

  return result;
}

unint64_t sub_100020FB8()
{
  result = qword_100066A68;
  if (!qword_100066A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A68);
  }

  return result;
}

unint64_t sub_100021010()
{
  result = qword_100066A70;
  if (!qword_100066A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A70);
  }

  return result;
}

uint64_t sub_10002106C()
{
  result = sub_100043004();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100021128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021224(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000431E4();
  sub_1000168B0(v3, a2);
  sub_1000161D0(v3, a2);
  return sub_1000431D4();
}

uint64_t sub_1000212CC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1000431E4();

  return sub_1000161D0(v3, a2);
}

Swift::String __swiftcall MISError.hexString()()
{
  sub_10002138C();
  v3._countAndFlagsBits = sub_1000433D4();
  sub_100043394(v3);

  v0 = 30768;
  v1 = 0xE200000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_10002138C()
{
  result = qword_100066B50;
  if (!qword_100066B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B50);
  }

  return result;
}

uint64_t sub_1000213E0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 24) = a1;
  return result;
}

uint64_t sub_10002141C(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  sub_100021474(a1, a2);
  return v4;
}

uint64_t sub_100021474(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) != a1)
      {
        goto LABEL_8;
      }

LABEL_15:
      v12 = 1;
LABEL_25:
      sub_100021AB8();
      swift_allocError();
      *v22 = v12;
      swift_willThrow();
      sub_10001316C(a1, a2);
      type metadata accessor for LaunchWarningMark();
      swift_deallocPartialClassInstance();
      return v3;
    }

    goto LABEL_61;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_15;
  }

LABEL_8:
  if (sub_100043084() != 1)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v6 != 2)
  {
    if (v6 == 1)
    {
      LODWORD(v11) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v11 = v11;
        goto LABEL_21;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    goto LABEL_20;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v9 = __OFSUB__(v13, v14);
  v11 = v13 - v14;
  if (v9)
  {
    __break(1u);
LABEL_20:
    v11 = BYTE6(a2);
  }

LABEL_21:
  v12 = 1;
  if (v11 != 9)
  {
    goto LABEL_25;
  }

  *(v3 + 16) = 1;
  v49[3] = &type metadata for Data;
  v49[4] = &protocol witness table for Data;
  v49[0] = sub_100019F54(1, 8, a1, a2);
  v49[1] = v15;
  v16 = sub_100013B38(v49, &type metadata for Data);
  v17 = *v16;
  v18 = v16[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v19)
    {
      v47[0] = *v16;
      LOWORD(v47[1]) = v18;
      BYTE2(v47[1]) = BYTE2(v18);
      BYTE3(v47[1]) = BYTE3(v18);
      BYTE4(v47[1]) = BYTE4(v18);
      BYTE5(v47[1]) = BYTE5(v18);
      v20 = v47 + BYTE6(v18);
      v21 = v47;
      goto LABEL_46;
    }

LABEL_34:
    v29 = v17;
    v30 = v17 >> 32;
    v28 = v30 - v29;
    if (v30 >= v29)
    {
      v26 = sub_100042DF4();
      if (v26)
      {
        v31 = sub_100042E24();
        if (__OFSUB__(v29, v31))
        {
          goto LABEL_68;
        }

        v26 += v29 - v31;
      }

      goto LABEL_38;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v19 != 2)
  {
    memset(v47, 0, 14);
    v21 = v47;
    v20 = v47;
    goto LABEL_46;
  }

  v24 = *(v17 + 16);
  v25 = *(v17 + 24);
  v26 = sub_100042DF4();
  if (v26)
  {
    v27 = sub_100042E24();
    v17 = v24 - v27;
    if (__OFSUB__(v24, v27))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    v26 += v17;
  }

  v9 = __OFSUB__(v25, v24);
  v28 = v25 - v24;
  if (v9)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_38:
  v32 = sub_100042E14();
  if (v32 >= v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = v32;
  }

  v34 = (v33 + v26);
  if (v26)
  {
    v20 = v34;
  }

  else
  {
    v20 = 0;
  }

  v21 = v26;
LABEL_46:
  sub_10001A668(v21, v20, v48);
  v35 = v48[0];
  v36 = v48[1];
  sub_100013B7C(v49);
  v37 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v37 != 2)
    {
      sub_10001316C(a1, a2);
      *(v3 + 24) = 0;
      return v3;
    }

    v38 = *(v35 + 16);
    v39 = sub_100042DF4();
    if (v39)
    {
      v40 = v39;
      v41 = sub_100042E24();
      if (__OFSUB__(v38, v41))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v42 = (v38 - v41 + v40);
      sub_100042E14();
      if (v42)
      {
LABEL_58:
        v46 = *v42;
        sub_10001316C(a1, a2);
        sub_10001316C(v35, v36);
        *(v3 + 24) = v46;
        return v3;
      }
    }

    else
    {
      sub_100042E14();
    }

    __break(1u);
    goto LABEL_71;
  }

  if (!v37)
  {
    sub_10001316C(a1, a2);
    *(v3 + 24) = v35;
    return v3;
  }

  if (v35 > v35 >> 32)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v43 = sub_100042DF4();
  if (!v43)
  {
LABEL_71:
    result = sub_100042E14();
    __break(1u);
    goto LABEL_72;
  }

  v44 = v43;
  v45 = sub_100042E24();
  if (__OFSUB__(v35, v45))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v42 = (v35 - v45 + v44);
  result = sub_100042E14();
  if (v42)
  {
    goto LABEL_58;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000218B4(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_100013B38(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1000131C0(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10001AEC8(v3, v4);
    }

    else
    {
      v6 = sub_10001AF44(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100013B7C(v8);
  return v6;
}

uint64_t sub_100021970()
{
  v6 = xmmword_100047DB0;
  v5 = *(v0 + 24);
  v1 = sub_1000218B4(&v5, &v6);
  v3 = v2;
  sub_1000430D4();
  sub_10001316C(v1, v3);
  return v6;
}

uint64_t sub_100021A14()
{
  result = (*(*v0 + 112))();
  if (!v1)
  {
    v4 = v3;
    v5 = result;
    sub_100017558();
    return sub_10001316C(v5, v4);
  }

  return result;
}

unint64_t sub_100021AB8()
{
  result = qword_100066B58;
  if (!qword_100066B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B58);
  }

  return result;
}

unint64_t sub_100021B34()
{
  result = qword_100066B60;
  if (!qword_100066B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B60);
  }

  return result;
}

void *sub_100021BA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = *(a1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size);
  v17[5] = a1;
  v17[8] = a2;
  v17[9] = a3;
  type metadata accessor for BloomFilterAlgorithm();

  sub_100013104(a2, a3);
  v18 = sub_100019268(a4, a5);
  if (!v8)
  {
    v17[6] = v18;
    v20 = v18[4];
    v19 = v18[5];

    v21 = v20(0, 0xC000000000000000);

    v22 = *(v21 + 16);

    if (a6 >= 1 && v22 >= a6)
    {
      sub_10001316C(a2, a3);

      v17[7] = a6;
      return v17;
    }

    sub_100018F7C();
    swift_allocError();
    *v23 = xmmword_100047EC0;
    *(v23 + 16) = 2;
    swift_willThrow();
  }

  sub_10001316C(a2, a3);

  v24 = v17[3];

  v25 = v17[5];

  if (!v9)
  {
    v26 = v17[6];
  }

  sub_10001316C(v17[8], v17[9]);
  swift_deallocPartialClassInstance();
  return v17;
}

uint64_t sub_100021DAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x4572655073746962;
  v5 = 0xEC0000007972746ELL;
  v6 = 0xE400000000000000;
  v7 = 1953259891;
  if (a1 != 4)
  {
    v7 = 25705;
    v6 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x656761726F7473;
  if (a1 != 1)
  {
    v9 = 0x687469726F676C61;
    v8 = 0xE90000000000006DLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1702521203;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEC0000007972746ELL;
      if (v10 != 0x4572655073746962)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1953259891)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (v10 != 25705)
      {
LABEL_34:
        v13 = sub_1000437F4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656761726F7473)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006DLL;
      if (v10 != 0x687469726F676C61)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1702521203)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int sub_100021F84()
{
  sub_1000438A4();
  sub_100043384();

  return sub_1000438C4();
}

uint64_t sub_10002207C()
{
  *v0;
  *v0;
  *v0;
  sub_100043384();
}

Swift::Int sub_100022164()
{
  sub_1000438A4();
  sub_100043384();

  return sub_1000438C4();
}

uint64_t sub_100022258@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000232BC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100022288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702521203;
  v5 = 0xEC0000007972746ELL;
  v6 = 0x4572655073746962;
  v7 = 0xE400000000000000;
  v8 = 1953259891;
  if (v2 != 4)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656761726F7473;
  if (v2 != 1)
  {
    v10 = 0x687469726F676C61;
    v9 = 0xE90000000000006DLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100022338()
{
  v1 = *v0;
  v2 = 1702521203;
  v3 = 0x4572655073746962;
  v4 = 1953259891;
  if (v1 != 4)
  {
    v4 = 25705;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656761726F7473;
  if (v1 != 1)
  {
    v5 = 0x687469726F676C61;
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

uint64_t sub_1000223E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000232BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100022418(uint64_t a1)
{
  v2 = sub_100023308();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100022454(uint64_t a1)
{
  v2 = sub_100023308();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100022490(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1000224E0(a1);
  return v2;
}

uint64_t sub_1000224E0(uint64_t *a1)
{
  v4 = sub_100013A34(&qword_100066C28, &qword_100047ED0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  sub_100013B38(a1, a1[3]);
  sub_100023308();
  sub_1000438E4();
  if (v2)
  {
    type metadata accessor for BloomFilter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12) = 0;
    *(v1 + 32) = sub_100043774();
    LOBYTE(v12) = 3;
    *(v1 + 56) = sub_100043754();
    v13 = 4;
    sub_10002335C();
    sub_100043764();
    *(v1 + 64) = v12;
    LOBYTE(v12) = 5;
    *(v1 + 16) = sub_100043744();
    *(v1 + 24) = v11;
    type metadata accessor for BloomFilterAlgorithm();
    v13 = 2;
    sub_100023404(&qword_100066C40, type metadata accessor for BloomFilterAlgorithm);
    sub_100043764();
    *(v1 + 48) = v12;
    type metadata accessor for BloomFilterDiskStorage();
    v13 = 1;
    sub_100023404(&qword_100066C48, type metadata accessor for BloomFilterDiskStorage);
    sub_100043764();
    (*(v5 + 8))(v8, v4);
    *(v1 + 40) = v12;
  }

  sub_100013B7C(a1);
  return v1;
}

uint64_t sub_10002286C(void *a1)
{
  v3 = v1;
  v5 = sub_100013A34(&qword_100066C50, &qword_100047ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_100013B38(a1, a1[3]);
  sub_100023308();
  sub_1000438F4();
  v11 = v3[4];
  LOBYTE(v19) = 0;
  sub_1000437D4();
  if (!v2)
  {
    v12 = v3[7];
    LOBYTE(v19) = 3;
    sub_1000437B4();
    v13 = v3[9];
    v19 = v3[8];
    v20 = v13;
    v18 = 4;
    sub_100013104(v19, v13);
    sub_1000233B0();
    sub_1000437C4();
    sub_10001316C(v19, v20);
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v19) = 5;
    sub_1000437A4();
    v19 = v3[6];
    v18 = 2;
    type metadata accessor for BloomFilterAlgorithm();
    sub_100023404(&qword_100066C60, type metadata accessor for BloomFilterAlgorithm);
    sub_1000437C4();
    v19 = v3[5];
    v18 = 1;
    type metadata accessor for BloomFilterDiskStorage();
    sub_100023404(&qword_100066C68, type metadata accessor for BloomFilterDiskStorage);
    sub_1000437C4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100022B34()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v27 = &type metadata for Data;
  v28 = &protocol witness table for Data;
  v25 = v2;
  v26 = v1;
  v3 = sub_100013B38(&v25, &type metadata for Data);
  v4 = *v3;
  v5 = v3[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v23, 0, 14);
      sub_100013104(v2, v1);
      v7 = v23;
      v8 = v23;
      goto LABEL_23;
    }

    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    sub_100013104(v2, v1);
    v1 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    v2 = sub_100042DF4();
    if (v2)
    {
      v1 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v11 = sub_100042E24();
      v4 = v9 - v11;
      if (__OFSUB__(v9, v11))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v2 += v4;
    }

    v12 = __OFSUB__(v10, v9);
    v13 = v10 - v9;
    if (!v12)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v23[0] = *v3;
    LOWORD(v23[1]) = v5;
    BYTE2(v23[1]) = BYTE2(v5);
    BYTE3(v23[1]) = BYTE3(v5);
    BYTE4(v23[1]) = BYTE4(v5);
    BYTE5(v23[1]) = BYTE5(v5);
    sub_100013104(v2, v1);
    v7 = v23;
    v8 = v23 + BYTE6(v5);
    goto LABEL_23;
  }

  v14 = v4;
  v15 = v4 >> 32;
  v13 = v15 - v14;
  if (v15 < v14)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_100013104(v2, v1);
  v2 = sub_100042DF4();
  if (v2)
  {
    v16 = sub_100042E24();
    if (!__OFSUB__(v14, v16))
    {
      v2 += v14 - v16;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v17 = sub_100042E14();
  if (v17 >= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  v19 = (v18 + v2);
  if (v2)
  {
    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  v7 = v2;
LABEL_23:
  sub_10001A668(v7, v8, v24);
  v20 = v24[0];
  v21 = v24[1];
  sub_100013B7C(&v25);
  v25 = v20;
  v26 = v21;
  sub_1000430D4();
  return v25;
}

void *sub_100022D74()
{
  v1 = v0;
  v2 = (*(*v0 + 152))();
  v4 = v3;
  v5 = v0[6];
  v7 = *(v5 + 32);
  v6 = *(v5 + 40);

  v8 = v7(v2, v4);

  v10 = v1[7];
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v8 + 16) >= v10)
    {
      v11 = v1[7];
    }

    else
    {
      v11 = *(v8 + 16);
    }

    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      sub_10001316C(v2, v4);
      swift_unknownObjectRelease();
      return _swiftEmptyArrayStorage;
    }

    result = sub_100023198(0, v11, 0);
    v13 = v1[4];
    if (v13)
    {
      v18 = v4;
      v14 = 32;
      do
      {
        v15 = *(v8 + v14);
        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_100023198((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        _swiftEmptyArrayStorage[v17 + 4] = v15 % v13;
        v14 += 8;
        --v11;
      }

      while (v11);
      sub_10001316C(v2, v18);
      swift_unknownObjectRelease();
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100022F10()
{
  v2 = v0;
  result = ((*v0)[20])();
  if (v1)
  {
    return v2;
  }

  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  while (1)
  {
    v7 = v5;
    if (v6 == v5)
    {
LABEL_6:
      v2 = v6 != v7;

      return v2;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    result = (*(*v0[5] + 128))(*(v4 + 8 * v5 + 32));
    v5 = v7 + 1;
    if ((result & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100023000()
{
  result = ((*v0)[20])();
  if (!v1)
  {
    v3 = result;
    v4 = 0;
    v5 = *(result + 16);
    while (1)
    {
      if (v5 == v4)
      {
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      v6 = v4 + 1;
      result = (*(*v0[5] + 136))(*(v3 + 8 * v4 + 32));
      v4 = v6;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000230C8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  sub_10001316C(v0[8], v0[9]);

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_100023118@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_100023198(char *a1, int64_t a2, char a3)
{
  result = sub_1000231B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000231B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100013A34(&qword_100066750, &qword_1000471C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1000232BC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005EAE8;
  v6._object = a2;
  v4 = sub_100043714(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100023308()
{
  result = qword_100066C30;
  if (!qword_100066C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C30);
  }

  return result;
}

unint64_t sub_10002335C()
{
  result = qword_100066C38;
  if (!qword_100066C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C38);
  }

  return result;
}

unint64_t sub_1000233B0()
{
  result = qword_100066C58;
  if (!qword_100066C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C58);
  }

  return result;
}

uint64_t sub_100023404(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100023450()
{
  result = qword_100066C70;
  if (!qword_100066C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C70);
  }

  return result;
}

unint64_t sub_1000234A8()
{
  result = qword_100066C78;
  if (!qword_100066C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C78);
  }

  return result;
}

unint64_t sub_100023500()
{
  result = qword_100066C80;
  if (!qword_100066C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C80);
  }

  return result;
}

unint64_t sub_100023558()
{
  result = qword_100066C88;
  if (!qword_100066C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C88);
  }

  return result;
}

uint64_t sub_1000235AC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000235C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000235DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100023624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100023668(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BloomFilter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100023860@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100069A80 != -1)
  {
    swift_once();
  }

  v4 = *(&xmmword_10006AA08 + 1);
  v5 = xmmword_10006AA08;
  v6 = qword_10006AA18;
  v35 = unk_10006AA20;
  v7 = xmmword_10006AA28;
  v8 = sub_10001AFC8();
  v9 = *v8;
  v10 = *(v8 + 1);

  v11 = sub_1000432E4();

  v12 = [a1 readSetting:v11];

  if (v12)
  {
    v5 = sub_100043314();
    v4 = v13;
  }

  else
  {
  }

  v36 = v5;
  v14 = sub_10001AFD4();
  v15 = *v14;
  v16 = *(v14 + 1);

  v17 = sub_1000432E4();

  v18 = [a1 readSetting:v17];

  if (v18)
  {
    v19 = sub_100043314();
    v21 = v20;

    if (v19 == 0x786F62646E6173 && v21 == 0xE700000000000000 || (sub_1000437F4() & 1) != 0)
    {

      v6 = 2;
      goto LABEL_11;
    }

    if (v19 == 0x69746375646F7270 && v21 == 0xEA00000000006E6FLL)
    {
    }

    else
    {
      v34 = sub_1000437F4();

      if ((v34 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v6 = 1;
  }

LABEL_11:
  v22 = sub_10001AFE0();
  if (v23)
  {
    v24 = v22;
    v25 = v23;
  }

  else
  {

    v24 = v35;
    v25 = v7;
  }

  v26 = sub_10001B2BC();
  v28 = v27;
  v29 = sub_10001B0A0();
  v31 = v30;

  *&v38 = v36;
  *(&v38 + 1) = v4;
  v39.n128_u64[0] = v6;
  v39.n128_u64[1] = v24;
  *&v40 = v25;
  *(&v40 + 1) = v26;
  *&v41 = v28;
  *(&v41 + 1) = v29;
  v42 = v31;
  v43[0] = v36;
  v43[1] = v4;
  v43[2] = v6;
  v43[3] = v24;
  v43[4] = v25;
  v43[5] = v26;
  v43[6] = v28;
  v43[7] = v29;
  v43[8] = v31;
  sub_1000237F8(&v38, v37);
  sub_100023830(v43);
  v32 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v32;
  *(a2 + 64) = v42;
  result = v39;
  *a2 = v38;
  *(a2 + 16) = result;
  return result;
}

double sub_100023B14()
{
  *&v2 = 0xD00000000000001ELL;
  *(&v2 + 1) = 0x800000010004BB90;
  v3 = xmmword_100048200;
  *v4 = 0x800000010004BB70;
  memset(&v4[8], 0, 32);
  v5[0] = 0xD00000000000001ELL;
  v5[1] = 0x800000010004BB90;
  v6 = xmmword_100048200;
  v7 = 0x800000010004BB70;
  v8 = 0u;
  v9 = 0u;
  sub_1000237F8(&v2, v1);
  sub_100023830(v5);
  xmmword_10006AA28 = *v4;
  unk_10006AA38 = *&v4[16];
  qword_10006AA48 = *&v4[32];
  result = *&v3;
  xmmword_10006AA08 = v2;
  *&qword_10006AA18 = v3;
  return result;
}

void sub_100023BC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = objc_allocWithZone(CKContainerID);
  v8 = sub_1000432E4();
  v9 = [v7 initWithContainerIdentifier:v8 environment:v6];

  v10 = [objc_allocWithZone(CKContainer) initWithContainerID:v9];
  v11 = [v10 publicCloudDatabase];
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = objc_allocWithZone(CKRecordZone);
  v15 = v11;
  v16 = sub_1000432E4();
  v17 = [v14 initWithZoneName:v16];

  v30 = *(a1 + 40);
  if (*(&v30 + 1))
  {
    v18 = objc_allocWithZone(CKRecordZone);
    v19 = v17;
    sub_100023E04(&v30, v29);
    v20 = sub_1000432E4();
    sub_100023E74(&v30);
    v21 = [v18 initWithZoneName:v20];

    v22 = v21;
  }

  else
  {
    v22 = 0;
    v21 = v17;
  }

  v23 = v21;
  if (*(a1 + 64))
  {
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);

    sub_100023830(a1);
    v26 = objc_allocWithZone(CKRecordZone);
    v27 = sub_1000432E4();

    v28 = [v26 initWithZoneName:v27];
  }

  else
  {

    sub_100023830(a1);
    v28 = 0;
  }

  *a2 = v10;
  a2[1] = v15;
  a2[2] = v17;
  a2[3] = v28;
  a2[4] = v22;
}

uint64_t sub_100023E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066D88, &qword_100048210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023E74(uint64_t a1)
{
  v2 = sub_100013A34(&qword_100066D88, &qword_100048210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100023EDC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100023F00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100023F48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100023FA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100023FBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for CKContainerEnvironment()
{
  if (!qword_100066D90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100066D90);
    }
  }
}

uint64_t sub_1000240AC(uint64_t a1, id a2)
{
  v4 = [a2 profileUUID];
  v5 = sub_100043314();
  v7 = v6;

  (*(*a1 + 184))(v5, v7, 1);

  v8 = [a2 cdHash];
  v9 = sub_1000430B4();
  v11 = v10;

  (*(*a1 + 120))(v9, v11, 2);
  sub_10001316C(v9, v11);
  v12 = [a2 gracePeriod];
  v13 = *(*a1 + 152);
  v13(v12, 3);
  v13([a2 lastSuccessMonotonicTime], 4);
  v13([a2 lastSuccessResetCount], 5);
  v13([a2 isRejected], 6);
  return (v13)([a2 isRejectedByWholeProfile], 7);
}

uint64_t sub_100024270()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000243A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = *(*a1 + 152);
  v15(a2, 1);
  v15(a3, 2);
  (*(*a1 + 184))(a4, a5, 3);
  (*(*a1 + 120))(a6, a7, 4);
  return (v15)(a8, 5);
}

uint64_t sub_100024614(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v9 = 0xD000000000000024;
  }

  else
  {
    v9 = 0xD000000000000085;
  }

  if (a5)
  {
    v10 = "ted_by_whole_profile = 0";
  }

  else
  {
    v10 = ", cdhash) DO NOTHING";
  }

  sub_100043624(216);
  v13._countAndFlagsBits = 0xD0000000000000D6;
  v13._object = 0x800000010004BFB0;
  sub_100043394(v13);
  v14._object = (v10 | 0x8000000000000000);
  v14._countAndFlagsBits = v9;
  sub_100043394(v14);

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;

  sub_100013104(a3, a4);
  sub_100012AE8(0, 0xE000000000000000, sub_1000275F4, v11, 0, 0);
}

id sub_100024868(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v12 = sub_1000431E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v17 = sub_1000432E4();
  isa = sub_100043094().super.isa;
  v33 = 0;
  v31 = a5;
  LODWORD(v6) = [v6 recordIndeterminateEntryWithProfileUUID:v17 cdHash:isa onConflictDoNothing:a5 & 1 error:&v33];

  v19 = v33;
  if (v6)
  {

    return v19;
  }

  else
  {
    v32 = v33;
    v21 = v33;
    sub_100042F44();

    swift_willThrow();
    v22 = sub_100021190();
    v23 = *(v13 + 16);
    v32 = v12;
    v23(v16, v22, v12);

    sub_100013104(a3, a4);
    v24 = sub_1000431C4();
    v25 = sub_1000434A4();

    sub_10001316C(a3, a4);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v26 = 136446722;
      *(v26 + 4) = sub_100015730(v30, a2, &v33);
      *(v26 + 12) = 2082;
      v27 = sub_1000137B0(a3, a4);
      v29 = sub_100015730(v27, v28, &v33);

      *(v26 + 14) = v29;
      *(v26 + 22) = 1024;
      *(v26 + 24) = v31 & 1;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error recording indeterminate entry %{public}s, %{public}s, %{BOOL}d", v26, 0x1Cu);
      swift_arrayDestroy();
    }

    return (*(v13 + 8))(v16, v32);
  }
}

id sub_100024D74(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000431E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000432E4();
  v24 = 0;
  LODWORD(v4) = [v4 setGracePeriodWithProfileUUID:v13 gracePeriod:a3 error:&v24];

  v14 = v24;
  if (v4)
  {

    return v14;
  }

  else
  {
    v23 = v24;
    v16 = v24;
    sub_100042F44();

    swift_willThrow();
    v17 = sub_100021190();
    (*(v9 + 16))(v12, v17, v8);

    v18 = sub_1000431C4();
    v19 = sub_1000434A4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      LODWORD(v23) = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_100015730(a1, a2, &v24);
      *(v21 + 12) = 1024;
      *(v21 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error setting grace period for %{public}s, %d", v21, 0x12u);
      sub_100013B7C(v22);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1000250A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  (*(*a1 + 184))(a2, a3, 1);
  (*(*a1 + 120))(a4, a5, 2);
  return (*(*a1 + 152))(a6 & 1, 3);
}

void sub_1000254C4(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = (*(*a1 + 128))(1);
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(*a1 + 160);
    v10 = v9(2);
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v11 = v10;
      if (v10 <= 0x7FFFFFFF)
      {
        v21 = v9(3);
        v20 = v9(4);
        v12 = v9(5) != 0;
        v13 = v9(6) != 0;
        v14 = objc_allocWithZone(MISOnlineAuthEntry);
        v15 = sub_1000432E4();

        isa = sub_100043094().super.isa;
        LOBYTE(v19) = v13;
        v17 = [v14 initWithProfileUUID:v15 cdHash:isa gracePeriod:v11 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v20 isRejected:v12 isRejectedByWholeProfile:v19];

        sub_100013158(v7, v8);
        swift_beginAccess();
        v18 = *(a2 + 16);
        *(a2 + 16) = v17;

        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

void *sub_1000256C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1000431E4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;

  sub_100013104(a3, a4);

  sub_100012AE8(0xD0000000000000D0, 0x800000010004C2B0, sub_1000275F4, v11, sub_100027610, v10);

  swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = v12;

  return v12;
}

void sub_100025AA0(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = (*(*a1 + 128))(1);
    if (v6 >> 60 != 15)
    {
      v7 = v5;
      v8 = v6;
      v9 = *(*a1 + 160);
      v10 = (*a1 + 160);
      v11 = v9(2);
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v12 = v11;
        if (v11 <= 0x7FFFFFFF)
        {
          v21 = v9(3);
          v22 = a2;
          v13 = v9(4);
          v14 = v9(5) != 0;
          v15 = v9(6) != 0;
          v16 = objc_allocWithZone(MISOnlineAuthEntry);
          v17 = sub_1000432E4();

          isa = sub_100043094().super.isa;
          LOBYTE(v20) = v15;
          v19 = [v16 initWithProfileUUID:v17 cdHash:isa gracePeriod:v12 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v13 isRejected:v14 isRejectedByWholeProfile:v20];

          sub_100013158(v7, v8);
          swift_beginAccess();
          v10 = v19;
          sub_1000433E4();
          if (*((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_6:
            sub_100043424();
            swift_endAccess();

            return;
          }

LABEL_9:
          sub_100043414();
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100025CFC()
{
  v0 = sub_1000431E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;

  sub_100012AE8(0xD0000000000000B0, 0x800000010004C390, 0, 0, sub_100027628, v2);

  swift_beginAccess();
  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_100025FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000431E4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_100012AE8(0xD00000000000006ALL, 0x800000010004C450, sub_1000275F8, v7, sub_100027640, v6);

  swift_beginAccess();
  v8 = *(v6 + 16);

  return v8;
}

id sub_100026434(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_1000431E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000432E4();
  isa = sub_100043094().super.isa;
  v32 = 0;
  LODWORD(v5) = [v5 deleteOnlineAuthEntryWithProfileUUID:v15 cdHash:isa error:&v32];

  v17 = v32;
  if (v5)
  {

    return v17;
  }

  else
  {
    v31 = v32;
    v19 = v32;
    v20 = sub_100042F44();

    swift_willThrow();
    v21 = sub_100021190();
    (*(v11 + 16))(v14, v21, v10);

    sub_100013104(a3, a4);
    v22 = sub_1000431C4();
    v23 = sub_1000434A4();

    sub_10001316C(a3, a4);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = v10;
      v25 = v24;
      v26 = swift_slowAlloc();
      v30[1] = v20;
      v32 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_100015730(a1, a2, &v32);
      *(v25 + 12) = 2082;
      v27 = sub_1000137B0(a3, a4);
      v29 = sub_100015730(v27, v28, &v32);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error deleting online auth entry %{public}s, %{public}s", v25, 0x16u);
      swift_arrayDestroy();

      return (*(v11 + 8))(v14, v31);
    }

    else
    {

      return (*(v11 + 8))(v14, v10);
    }
  }
}

id sub_10002693C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000431E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_100043094().super.isa;
  v24 = 0;
  LODWORD(v3) = [v3 deleteOnlineAuthEntryWithCdHash:isa error:&v24];

  v12 = v24;
  if (v3)
  {

    return v12;
  }

  else
  {
    v23 = v24;
    v14 = v24;
    sub_100042F44();

    swift_willThrow();
    v15 = sub_100021190();
    (*(v7 + 16))(v10, v15, v6);
    sub_100013104(a1, a2);
    v16 = sub_1000431C4();
    v17 = sub_1000434A4();
    sub_10001316C(a1, a2);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      v20 = sub_1000137B0(a1, a2);
      v22 = sub_100015730(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error deleting online auth entry %{public}s", v18, 0xCu);
      sub_100013B7C(v19);
    }

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t MISDBManager.addMonotonicTimeOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x800000010004C590;
  }

  sub_100043624(88);
  v10._countAndFlagsBits = 0xD000000000000056;
  v10._object = 0x800000010004C530;
  sub_100043394(v10);
  v11._countAndFlagsBits = v6;
  v11._object = v7;
  sub_100043394(v11);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1000130F0(a2, a3);
  sub_100012AE8(0, 0xE000000000000000, sub_100027184, v8, 0, 0);
}

uint64_t MISDBManager.addRTCResetCountOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x800000010004C590;
  }

  sub_100043624(82);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x800000010004C5B0;
  sub_100043394(v10);
  v11._countAndFlagsBits = v6;
  v11._object = v7;
  sub_100043394(v11);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1000130F0(a2, a3);
  sub_100012AE8(0, 0xE000000000000000, sub_1000275FC, v8, 0, 0);
}

uint64_t sub_100026F4C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *, unint64_t))
{
  v7 = a4;
  if (a4)
  {
    v10 = a1;
    v11 = v7;
    v7 = sub_1000430B4();
    v13 = v12;
  }

  else
  {
    v14 = a1;
    v13 = 0xF000000000000000;
  }

  a6(a3, v7, v13);

  sub_100013158(v7, v13);
  return 1;
}

uint64_t sub_10002706C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000270FC(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 160))(0);
  result = swift_beginAccess();
  *(v2 + 16) = v3;
  return result;
}

uint64_t sub_100027188()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_10001316C(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000271D0(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  (*(*a1 + 152))(v1[2], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

uint64_t sub_10002725C(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  (*(*a1 + 184))(v1[2], v1[3], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

unint64_t sub_1000272E8()
{
  result = qword_100066D98;
  if (!qword_100066D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066D98);
  }

  return result;
}

uint64_t sub_100027338()
{
  sub_10001316C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000273C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027450(uint64_t a1)
{
  v3 = v1[3];

  sub_10001316C(v1[4], v1[5]);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000274AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_1000274E4(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(*a1 + 184))(*(v1 + 16), *(v1 + 24), 1);
  return (*(*a1 + 152))(v3, 2);
}

uint64_t sub_100027574(uint64_t a1)
{
  v3 = v1[5];

  sub_10001316C(v1[6], v1[7]);

  return _swift_deallocObject(v1, a1, 7);
}

Swift::Int sub_10002765C()
{
  sub_1000438A4();
  sub_1000438B4(0);
  return sub_1000438C4();
}

Swift::Int sub_1000276C8()
{
  sub_1000438A4();
  sub_1000438B4(0);
  return sub_1000438C4();
}

uint64_t sub_100027708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_1000431E4();
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v64 - v8;
  v9 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v15 = sub_100043174();
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  v17 = __chkstk_darwin(v15);
  v65 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v64 - v19;
  v21 = *(*a1 + 160);
  v22 = v21(0);
  v77 = (*(*a1 + 128))(1);
  v24 = v23;
  v69 = v21(2);
  v64 = v21(3);
  v25 = *(*a1 + 144);
  v70 = v20;
  v25(4);
  result = (*(*a1 + 192))(5);
  v28 = v27;
  v74 = v24;
  if (v24 >> 60 == 15)
  {

    v29 = sub_100021190();
    v30 = v73;
    (*(v73 + 16))(v7, v29, v3);
    v31 = sub_1000431C4();
    v32 = sub_1000434A4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "cdhash is nil in database", v33, 2u);
    }

    (*(v30 + 8))(v7, v3);
    v34 = v77;
    v35 = v74;
    v75 = v77;
    v76 = v74;
    sub_1000130F0(v77, v74);
    sub_100013A34(&qword_1000666C8, &qword_100046EF0);
    v36 = sub_100043364();
    v38 = v37;
    v39 = 0x687361686463;
LABEL_11:
    sub_100013550();
    swift_allocError();
    *v50 = v39;
    *(v50 + 8) = 0xE600000000000000;
    *(v50 + 16) = v36;
    *(v50 + 24) = v38;
    *(v50 + 32) = 1;
    swift_willThrow();
    sub_100013158(v34, v35);
    return (*(v71 + 8))(v70, v72);
  }

  v40 = v73;
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v22))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v41 = v77;
  v35 = v74;
  sub_100013104(v77, v74);
  v42 = sub_10001B3F4(v69);
  if (v42 == 2)
  {
    sub_100013158(v41, v35);

    v43 = sub_100021190();
    v44 = v40;
    v45 = v67;
    (*(v40 + 16))(v67, v43, v3);
    v46 = sub_1000431C4();
    v47 = sub_1000434A4();
    v34 = v41;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v46, v47, "Invalid reason in database: %lld", v48, 0xCu);
    }

    (*(v44 + 8))(v45, v3);
    v75 = v69;
    v36 = sub_1000437E4();
    v38 = v49;
    v39 = 0x6E6F73616572;
    goto LABEL_11;
  }

  v51 = v42;
  v52 = v22;
  v53 = sub_100043004();
  (*(*(v53 - 8) + 56))(v14, 1, 1, v53);
  v54 = v66;
  if (v28)
  {
    sub_100042FD4();

    sub_100029814(v14, &qword_100066838, &qword_1000473E0);
    sub_10001B848(v54, v14);
  }

  v55 = v70;
  v56 = v71;
  v57 = v65;
  v58 = v72;
  (*(v71 + 16))(v65, v70, v72);
  v59 = nullsub_1(v64);
  sub_100029070(v14, v54, &qword_100066838, &qword_1000473E0);
  v60 = v51 & 1;
  v61 = v52;
  v62 = v77;
  v63 = v74;
  sub_10001B77C(v61, v77, v74, v57, v60, v59, v54, v68);
  sub_100013158(v62, v63);
  sub_100029814(v14, &qword_100066838, &qword_1000473E0);
  return (*(v56 + 8))(v55, v58);
}

uint64_t sub_100027DFC(uint64_t a1, unsigned int *a2)
{
  v4 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = *(*a1 + 152);
  v8(*a2, 1);
  (*(*a1 + 120))(*(a2 + 1), *(a2 + 2), 2);
  v9 = type metadata accessor for LaunchWarningDetails();
  v10 = sub_10001B40C(*(a2 + v9[7]));
  v8(v10, 3);
  v8(*(a2 + v9[8]), 4);
  v8(0, 5);
  (*(*a1 + 136))(a2 + v9[6], 6);
  sub_100029070(a2 + v9[9], v7, &qword_100066838, &qword_1000473E0);
  v11 = sub_100043004();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100029814(v7, &qword_100066838, &qword_1000473E0);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = sub_100042F64();
    v14 = v16;
    (*(v12 + 8))(v7, v11);
    v13 = v15;
  }

  (*(*a1 + 184))(v13, v14, 7);
}

uint64_t sub_100028074@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = _s18LaunchWarningEntryVMa();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100043624(87);
  v15._countAndFlagsBits = 0x205443454C4553;
  v15._object = 0xE700000000000000;
  sub_100043394(v15);
  v16._object = 0x800000010004C740;
  v16._countAndFlagsBits = 0xD000000000000035;
  sub_100043394(v16);
  v17._countAndFlagsBits = 0xD00000000000004ELL;
  v17._object = 0x800000010004C810;
  sub_100043394(v17);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  sub_100013104(a2, a3);

  sub_100012AE8(0, 0xE000000000000000, sub_100029050, v11, sub_100029054, v7);

  if (v14)
  {
  }

  swift_beginAccess();
  sub_100029070(v9, a4, &qword_100066DA0, &qword_1000482E0);
}

uint64_t sub_10002829C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = _s18LaunchWarningEntryVMa();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100043624(62);
  v10._countAndFlagsBits = 0x205443454C4553;
  v10._object = 0xE700000000000000;
  sub_100043394(v10);
  v11._object = 0x800000010004C740;
  v11._countAndFlagsBits = 0xD000000000000035;
  sub_100043394(v11);
  v12._object = 0x800000010004C860;
  v12._countAndFlagsBits = 0xD000000000000035;
  sub_100043394(v12);

  sub_100012AE8(0, 0xE000000000000000, sub_1000290D8, a1, sub_100029B80, v5);

  if (v2)
  {
  }

  swift_beginAccess();
  sub_100029070(v7, a2, &qword_100066DA0, &qword_1000482E0);
}

uint64_t sub_100028490(uint64_t a1)
{
  v3 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v16 - v5);
  v7 = type metadata accessor for LaunchWarningDetails();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  result = sub_100027708(a1, v10);
  if (!v1)
  {
    v13 = (*(*a1 + 176))(6);
    result = (*(*a1 + 160))(7);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v14 = result;
      v15 = _s18LaunchWarningEntryVMa();
      sub_1000293AC(v10, v6 + *(v15 + 20), type metadata accessor for LaunchWarningDetails);
      *v6 = v14;
      *(v6 + *(v15 + 24)) = v13 & 1;
      (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
      swift_beginAccess();
      return sub_100029A9C(v6, v11);
    }
  }

  return result;
}

uint64_t sub_100028688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v34 = &v29 - v7;
  v8 = type metadata accessor for LaunchWarningDetails();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v36 = (v12 + 16);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = _s18LaunchWarningEntryVMa();
  v30 = *(v16 - 8);
  v31 = v15;
  v17 = *(v30 + 56);
  v32 = v16;
  v17(v15, 1, 1);
  sub_100029B0C(a1, v11, type metadata accessor for LaunchWarningDetails);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  sub_1000293AC(v11, v20 + v18, type metadata accessor for LaunchWarningDetails);
  *(v20 + v19) = v13;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;
  aBlock[4] = sub_1000292F8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028F14;
  aBlock[3] = &unk_10005F180;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  [v22 transaction:v21];
  _Block_release(v21);
  v23 = v36;
  swift_beginAccess();
  if (*v23)
  {
    swift_willThrow();
    swift_errorRetain();
  }

  else
  {
    v25 = v33;
    v26 = v31;
    swift_beginAccess();
    v27 = v26;
    v28 = v34;
    sub_100029070(v27, v34, &qword_100066DA0, &qword_1000482E0);
    result = (*(v30 + 48))(v28, 1, v32);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1000293AC(v28, v25, _s18LaunchWarningEntryVMa);
    }
  }

  return result;
}

uint64_t sub_100028A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v5 = type metadata accessor for LaunchWarningDetails();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v47 = &v43 - v12;
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = _s18LaunchWarningEntryVMa();
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  v22 = swift_projectBox();
  v23 = *a2;
  sub_100028074(*a2, *(a2 + 8), *(a2 + 16), v14);
  v45 = v23;
  v46 = 0;
  v43 = v19;
  v28 = a2;
  v29 = v51;
  v44 = *(v51 + 48);
  v30 = v15;
  if (v44(v14, 1, v15) == 1)
  {
    sub_100029814(v14, &qword_100066DA0, &qword_1000482E0);
    v31 = v28;
    v32 = v28;
    v33 = v49;
    sub_100029B0C(v32, v49, type metadata accessor for LaunchWarningDetails);
    v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v35 = swift_allocObject();
    sub_1000293AC(v33, v35 + v34, type metadata accessor for LaunchWarningDetails);
    v36 = v46;
    sub_100012AE8(0xD000000000000085, 0x800000010004C780, sub_100029B7C, v35, 0, 0);

    if (!v36)
    {
      v37 = v47;
      sub_100028074(v45, *(v31 + 8), *(v31 + 16), v47);
      if (v44(v37, 1, v30) != 1)
      {
        v40 = v43;
        sub_1000293AC(v37, v43, _s18LaunchWarningEntryVMa);
        v41 = v40;
        v42 = v50;
        sub_1000293AC(v41, v50, _s18LaunchWarningEntryVMa);
        v26 = 1;
        (*(v51 + 56))(v42, 0, 1, v30);
        swift_beginAccess();
        sub_100029A9C(v42, v22);
        return v26;
      }

      sub_100029814(v37, &qword_100066DA0, &qword_1000482E0);
      sub_100029A48();
      v38 = swift_allocError();
      swift_willThrow();
      v36 = v38;
    }

    v24 = v52;
    swift_beginAccess();
    v25 = *(v24 + 16);
    *(v24 + 16) = v36;

    return 0;
  }

  else
  {
    sub_1000293AC(v14, v21, _s18LaunchWarningEntryVMa);
    v39 = v50;
    sub_1000293AC(v21, v50, _s18LaunchWarningEntryVMa);
    v26 = 1;
    (*(v29 + 56))(v39, 0, 1, v15);
    swift_beginAccess();
    sub_100029A9C(v39, v22);
  }

  return v26;
}

uint64_t sub_100028F14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

uint64_t sub_100028F54(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100012AE8(0xD00000000000003ALL, 0x800000010004C8A0, sub_100029428, v4, 0, 0);
}

uint64_t _s18LaunchWarningEntryVMa()
{
  result = qword_100069C10;
  if (!qword_100069C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100029070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100013A34(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000290D8(uint64_t a1)
{
  result = *(v1 + 24);
  if ((result & 0x8000000000000000) == 0)
  {
    return (*(*a1 + 152))();
  }

  __break(1u);
  return result;
}

uint64_t sub_100029130()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029168()
{
  v1 = (type metadata accessor for LaunchWarningDetails() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_10001316C(*(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = v1[8];
  v6 = sub_100043174();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[11];
  v8 = sub_100043004();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10);

  v13 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v2 | 7);
}

uint64_t sub_1000292F8()
{
  v1 = *(type metadata accessor for LaunchWarningDetails() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100028A30(v4, v0 + v2, v5, v6);
}

uint64_t sub_100029394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000293AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029428(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  result = (*(*a1 + 168))(*(v2 + 16), 1);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return (*(*a1 + 152))(v4, 2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000294B0()
{
  sub_10001316C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000294E8(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  (*(*a1 + 152))(*(v1 + 16), 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

unint64_t sub_100029578()
{
  result = qword_100066DA8;
  if (!qword_100066DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066DA8);
  }

  return result;
}

uint64_t sub_1000295F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchWarningDetails();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000296D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LaunchWarningDetails();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100029790()
{
  result = type metadata accessor for LaunchWarningDetails();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100029814(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100013A34(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100029874()
{
  v1 = (type metadata accessor for LaunchWarningDetails() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_10001316C(*(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = v1[8];
  v6 = sub_100043174();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[11];
  v8 = sub_100043004();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000299D8(uint64_t a1)
{
  v3 = *(type metadata accessor for LaunchWarningDetails() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100027DFC(a1, v4);
}

unint64_t sub_100029A48()
{
  result = qword_100066E38;
  if (!qword_100066E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E38);
  }

  return result;
}

uint64_t sub_100029A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_100029B98()
{
  v1 = v0;
  v2 = sub_1000434C4();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000434F4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_100043224();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  type metadata accessor for LaunchWarningDB();
  v10 = sub_100016208();
  v11 = sub_100016210(v10 & 1);
  v12 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_db;
  *&v0[OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_db] = v11;
  sub_100023860(v11, v27);
  v13 = type metadata accessor for MetricReporter();
  v14 = sub_100015538();
  v15 = &v1[OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics];
  v15[3] = v13;
  v15[4] = &off_10005F9E8;
  *v15 = v14;
  v16 = type metadata accessor for CloudKitOperations();
  sub_100029EB0(v15, v26);
  v17 = sub_10002C8EC(v27, v26);
  type metadata accessor for LaunchWarningController(0);
  v18 = *&v1[v12];
  v26[3] = v16;
  v26[4] = &off_10005F598;
  v26[0] = v17;
  v19 = v18;

  *&v1[OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_launchWarningController] = sub_100036BE8(v19, v26);
  sub_100029F14();
  sub_100043214();
  v26[0] = _swiftEmptyArrayStorage;
  sub_100029F60();
  sub_100013A34(&qword_100066E68, &unk_1000483D0);
  sub_100029FB8();
  sub_1000435F4();
  (*(v23 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v24);
  v20 = sub_100043504();

  *&v1[OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_syncQueue] = v20;
  v21 = type metadata accessor for LaunchWarningOperations();
  v25.receiver = v1;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_100029EB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100029F14()
{
  result = qword_100066E58;
  if (!qword_100066E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066E58);
  }

  return result;
}

unint64_t sub_100029F60()
{
  result = qword_100066E60;
  if (!qword_100066E60)
  {
    sub_1000434F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E60);
  }

  return result;
}

unint64_t sub_100029FB8()
{
  result = qword_100066E70;
  if (!qword_100066E70)
  {
    sub_100013AF0(&qword_100066E68, &unk_1000483D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E70);
  }

  return result;
}

uint64_t sub_10002A064(char a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v49 = v43 - v6;
  v7 = _s18LaunchWarningEntryVMa();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v44 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000431E4();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v50 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v43 - v15;
  v17 = sub_1000212A8();
  v45 = v11[2];
  v46 = v17;
  v45(v16);
  v18 = sub_1000431C4();
  v19 = sub_1000434B4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = a2;
    *(v20 + 12) = 1024;
    *(v20 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Setting user override: %llu to %{BOOL}d", v20, 0x12u);
  }

  v21 = v11[1];
  v21(v16, v10);
  v22 = *(v52 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_db);
  v23 = v51;
  result = sub_100028F54(a1 & 1, a2);
  if (!v23 && (a1 & 1) != 0)
  {
    type metadata accessor for LaunchWarningMark();
    v43[0] = a2;
    v25 = sub_1000213E0(a2);
    v26 = v49;
    v43[1] = v25;
    sub_10002829C(v25, v49);
    v51 = 0;
    v27 = v48;
    v28 = (*(v47 + 48))(v26, 1, v48);
    v29 = v50;
    if (v28 == 1)
    {
      sub_100029814(v26, &qword_100066DA0, &qword_1000482E0);
      (v45)(v29, v46, v10);
      v30 = sub_1000431C4();
      v31 = sub_1000434A4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v43[0];
        _os_log_impl(&_mh_execute_header, v30, v31, "Unable to look up launch warning info for ID: %llu", v32, 0xCu);
      }

      return (v21)(v29, v10);
    }

    else
    {
      v33 = v44;
      sub_10002C150(v26, v44, _s18LaunchWarningEntryVMa);
      v34 = (v33 + *(v27 + 20));
      v35 = *v34;
      sub_100013104(*(v34 + 1), *(v34 + 2));
      v36 = nullsub_1(v35);
      v38 = v37;
      v40 = v39;
      v41 = *(v52 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 24);
      v42 = *(v52 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 32);
      sub_100013B38((v52 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics), v41);
      (*(v42 + 32))(v36, v38, v40, v41, v42);
      sub_10001316C(v38, v40);

      return sub_10002C2A4(v33, _s18LaunchWarningEntryVMa);
    }
  }

  return result;
}

uint64_t sub_10002A5E4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = v3;
  v114 = a3;
  v7 = _s18LaunchWarningEntryVMa();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v99 = (&v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100013A34(&qword_100066E80, &qword_1000483E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v111 = (&v97 - v12);
  v107 = type metadata accessor for LaunchWarningDetails();
  v105 = *(v107 - 8);
  v13 = *(v105 + 64);
  v14 = __chkstk_darwin(v107);
  v97 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v98 = &v97 - v17;
  __chkstk_darwin(v16);
  v102 = (&v97 - v18);
  v19 = sub_1000431E4();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v103 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v108 = &v97 - v25;
  v26 = __chkstk_darwin(v24);
  v101 = &v97 - v27;
  __chkstk_darwin(v26);
  v29 = &v97 - v28;
  v30 = sub_1000212A8();
  v31 = v20[2];
  v109 = v30;
  v110 = v31;
  (v31)(v29);
  sub_100013104(a1, a2);
  v32 = sub_1000431C4();
  v33 = sub_1000434B4();
  sub_10001316C(a1, a2);
  v34 = os_log_type_enabled(v32, v33);
  v104 = v4;
  v112 = a1;
  v113 = a2;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v100 = v20;
    v37 = v19;
    v38 = v36;
    v115 = v36;
    *v35 = 67109378;
    *(v35 + 4) = v114;
    *(v35 + 8) = 2082;
    v39 = sub_1000137B0(a1, a2);
    v41 = sub_100015730(v39, v40, &v115);

    *(v35 + 10) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Looking up launch warning for cdhash: %u, %{public}s", v35, 0x12u);
    sub_100013B7C(v38);
    v19 = v37;
    v20 = v100;

    v4 = v104;
  }

  v42 = v20[1];
  v42(v29, v19);
  v43 = *(v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_launchWarningController);
  v44 = v111;
  if (v43)
  {
    v45 = *(*v43 + 280);

    v46 = v106;
    v45(v112, v113, v114);
    if (v46)
    {

      (*(v105 + 56))(v44, 1, 1, v107);
      v106 = 0;
      v47 = v108;
LABEL_10:
      sub_100029814(v44, &qword_100066E80, &qword_1000483E0);
      v110(v47, v109, v19);
      v54 = v112;
      v55 = v113;
      sub_100013104(v112, v113);
      v56 = sub_1000431C4();
      v57 = sub_100043494();
      sub_10001316C(v54, v55);
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v111 = v42;
        v60 = v59;
        v115 = v59;
        *v58 = 67109378;
        *(v58 + 4) = v114;
        *(v58 + 8) = 2080;
        v61 = sub_1000137B0(v54, v55);
        v63 = v19;
        v64 = sub_100015730(v61, v62, &v115);

        *(v58 + 10) = v64;
        _os_log_impl(&_mh_execute_header, v56, v57, "Found no launch warning for cdhash: %u, %s", v58, 0x12u);
        sub_100013B7C(v60);

        v111(v108, v63);
      }

      else
      {

        v42(v47, v19);
      }

      return 0;
    }

    v106 = 0;
    v53 = (*(v105 + 48))(v44, 1, v107);
    v47 = v108;
    if (v53 == 1)
    {
      goto LABEL_10;
    }

    v65 = v102;
    sub_10002C150(v44, v102, type metadata accessor for LaunchWarningDetails);
    v66 = v101;
    v110(v101, v109, v19);
    v67 = v65;
    v68 = v65;
    v69 = v98;
    sub_10002C23C(v68, v98, type metadata accessor for LaunchWarningDetails);
    v70 = sub_1000431C4();
    v71 = sub_1000434B4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v100 = v20;
      v73 = v72;
      v74 = v69;
      v75 = swift_slowAlloc();
      v115 = v75;
      *v73 = 136446210;
      sub_10002C23C(v74, v97, type metadata accessor for LaunchWarningDetails);
      v76 = sub_100043364();
      v111 = v42;
      v77 = v76;
      v78 = v19;
      v80 = v79;
      sub_10002C2A4(v74, type metadata accessor for LaunchWarningDetails);
      v81 = sub_100015730(v77, v80, &v115);

      *(v73 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v70, v71, "Found launch warning with details: %{public}s", v73, 0xCu);
      sub_100013B7C(v75);

      v82 = v78;
      v67 = v102;
      v111(v101, v82);
    }

    else
    {

      sub_10002C2A4(v69, type metadata accessor for LaunchWarningDetails);
      v42(v66, v19);
    }

    v83 = *v67;
    sub_100013104(*(v67 + 1), *(v67 + 2));
    v84 = nullsub_1(v83);
    v86 = v85;
    v88 = v87;
    v89 = v104;
    v90 = *(v104 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 24);
    v91 = *(v104 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 32);
    sub_100013B38((v104 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics), v90);
    (*(v91 + 24))(v84, v86, v88, 0, 1, v90, v91);
    v92 = *(v89 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_db);
    v93 = v99;
    v94 = v106;
    sub_100028688(v67, v99);
    if (v94)
    {
      sub_10002C2A4(v67, type metadata accessor for LaunchWarningDetails);
      sub_10001316C(v86, v88);
    }

    else
    {
      type metadata accessor for LaunchWarningMark();
      v95 = sub_1000213E0(*v93);
      v96 = (*(*v95 + 112))();

      sub_10001316C(v86, v88);

      sub_10002C2A4(v93, _s18LaunchWarningEntryVMa);
      sub_10002C2A4(v67, type metadata accessor for LaunchWarningDetails);
      return v96;
    }
  }

  else
  {
    v48 = v103;
    v110(v103, v109, v19);
    v49 = sub_1000431C4();
    v50 = sub_1000434A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Launch warning lookup failed due to missing controller.", v51, 2u);
    }

    v42(v48, v19);
    sub_10002C0FC();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_10002B1CC()
{
  v1 = v0;
  v2 = sub_1000431E4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  result = sub_1000193D8();
  if (result)
  {
    v11 = sub_1000212A8();
    v12 = v3[2];
    v25 = v11;
    v24 = v12;
    (v12)(v9);
    v13 = sub_1000431C4();
    v14 = sub_1000434B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v23 = v1;
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Performing regular launch warning sync.", v15, 2u);
      v1 = v23;
    }

    v16 = v3[1];
    v17 = v16(v9, v2);
    v18 = *(v1 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_launchWarningController);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_syncQueue);
      __chkstk_darwin(v17);
      *(&v23 - 2) = v18;
      *(&v23 - 1) = v1;

      sub_1000434D4();
    }

    else
    {
      v24(v7, v25, v2);
      v20 = sub_1000431C4();
      v21 = sub_1000434A4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Launch warning sync failed due to missing controller.", v22, 2u);
      }

      v16(v7, v2);
      sub_10002C0FC();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10002B4C8(uint64_t a1, uint64_t a2)
{
  v128 = a2;
  v122 = type metadata accessor for LaunchWarningController.NewLaunchWarning(0);
  v124 = *(v122 - 8);
  v4 = *(v124 + 64);
  v5 = __chkstk_darwin(v122);
  v123 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v126 = &v107 - v7;
  v127 = sub_1000431E4();
  v125 = *(v127 - 8);
  v8 = *(v125 + 64);
  v9 = __chkstk_darwin(v127);
  v118 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v107 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v107 - v15;
  __chkstk_darwin(v14);
  v18 = (&v107 - v17);
  v129 = sub_100043174();
  v19 = *(v129 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v129);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v107 - v24;
  v26 = sub_100043164();
  v27 = (*(*a1 + 288))(v26);
  v120 = v29;
  if (v2)
  {
    v30 = *(v128 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 24);
    v31 = *(v128 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 32);
    sub_100013B38((v128 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics), v30);
    sub_100043164();
    sub_100043114();
    v33 = v32;
    v34 = *(v19 + 8);
    v35 = v23;
    v36 = v129;
    v34(v35, v129);
    (*(v31 + 16))(v2, v30, v31, v33);

    return (v34)(v25, v36);
  }

  v38 = v27;
  v113 = v18;
  *&v109 = v16;
  v114 = v13;
  v121 = 0;
  v40 = *(v128 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 24);
  v39 = *(v128 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 32);
  v116 = a1;
  v117 = (v128 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics);
  v41 = v28;
  sub_100013B38((v128 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics), v40);
  sub_100043164();
  v119 = v25;
  sub_100043114();
  v43 = v42;
  v44 = *(v19 + 8);
  v45 = v23;
  v46 = v129;
  v128 = v19 + 8;
  v115 = v44;
  v44(v45, v129);
  v47 = v41 & 0x101;
  v48 = v120;
  (*(v39 + 8))(v38 & 0x101, v120, v47, v40, v39, v43);
  if ((v38 & 1) == 0 && v48 < 1)
  {
    v49 = v119;
    goto LABEL_6;
  }

  v51 = sub_1000212A8();
  v52 = v125;
  v53 = *(v125 + 16);
  v54 = v113;
  v111 = v51;
  v112 = v125 + 16;
  v55 = v127;
  v110 = v53;
  (v53)(v113);
  v56 = sub_1000431C4();
  v57 = sub_1000434B4();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v121;
  if (v58)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "Launch warning sync triggered an update.", v60, 2u);
  }

  v63 = *(v52 + 8);
  v62 = v52 + 8;
  v61 = v63;
  v64 = (v63)(v54, v55);
  v65 = (*(*v116 + 296))(v64);
  v66 = v119;
  if (v59)
  {
    return v115(v119, v46);
  }

  v125 = v62;
  v121 = 0;
  v67 = v65;
  if (!*(v65 + 16))
  {

    v72 = v118;
    v110(v118, v111, v55);
    v73 = sub_1000431C4();
    v74 = sub_1000434B4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Launch warning sync found no impacted apps.", v75, 2u);
    }

    v61(v72, v55);
    v49 = v66;
LABEL_6:
    v50 = v46;
    return v115(v49, v50);
  }

  v113 = v61;
  v68 = v109;
  v110(v109, v111, v55);

  v69 = sub_1000431C4();
  v70 = sub_1000434B4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    *(v71 + 4) = *(v67 + 16);

    _os_log_impl(&_mh_execute_header, v69, v70, "Launch warning sync found %ld local warnings.", v71, 0xCu);
  }

  else
  {
  }

  v76 = v126;
  result = (v113)(v68, v55);
  v120 = *(v67 + 16);
  if (v120)
  {
    v78 = 0;
    v79 = v124;
    v118 = (v67 + ((*(v124 + 80) + 32) & ~*(v124 + 80)));
    *&v77 = 136446210;
    v109 = v77;
    v108 = v67;
    while (1)
    {
      v89 = v123;
      if (v78 >= *(v67 + 16))
      {
        break;
      }

      sub_10002C23C(&v118[*(v79 + 72) * v78], v76, type metadata accessor for LaunchWarningController.NewLaunchWarning);
      v90 = (v76 + *(v122 + 20));
      v91 = *(v90 + *(type metadata accessor for LaunchWarningDetails() + 32));
      v92 = *sub_10001B51C();
      v130 = v91;
      v131 = v92;
      sub_10001B96C();
      if (sub_1000435D4())
      {
        v80 = 0;
      }

      else
      {
        v93 = v114;
        v110(v114, v111, v55);
        sub_10002C23C(v76, v89, type metadata accessor for LaunchWarningController.NewLaunchWarning);
        v94 = sub_1000431C4();
        v95 = sub_1000434B4();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v131 = v97;
          *v96 = v109;
          v98 = (v89 + *(type metadata accessor for AppRecord(0) + 20));
          v99 = v89;
          v100 = *v98;
          v101 = v98[1];

          sub_10002C2A4(v99, type metadata accessor for LaunchWarningController.NewLaunchWarning);
          v102 = sub_100015730(v100, v101, &v131);

          *(v96 + 4) = v102;
          _os_log_impl(&_mh_execute_header, v94, v95, "Terminating app: %{public}s", v96, 0xCu);
          sub_100013B7C(v97);
          v76 = v126;

          v103 = v93;
          v104 = v127;
        }

        else
        {

          sub_10002C2A4(v89, type metadata accessor for LaunchWarningController.NewLaunchWarning);
          v103 = v93;
          v104 = v55;
        }

        v113(v103, v104);
        v105 = v121;
        v106 = (*(*v116 + 304))(v76);
        v121 = v105;
        v67 = v108;
        if (v105)
        {

          sub_10002C2A4(v76, type metadata accessor for LaunchWarningController.NewLaunchWarning);
          v49 = v119;
          v50 = v129;
          return v115(v49, v50);
        }

        v80 = v106;
      }

      ++v78;
      v81 = *v90;
      sub_100013104(*(v90 + 1), *(v90 + 2));
      v82 = nullsub_1(v81);
      v84 = v83;
      v86 = v85;
      v87 = v117[3];
      v88 = v117[4];
      sub_100013B38(v117, v87);
      (*(v88 + 24))(v82, v84, v86, v80 & 1, 0, v87, v88);
      sub_10001316C(v84, v86);
      v76 = v126;
      result = sub_10002C2A4(v126, type metadata accessor for LaunchWarningController.NewLaunchWarning);
      v66 = v119;
      v55 = v127;
      v79 = v124;
      if (v120 == v78)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:

    return v115(v66, v129);
  }

  return result;
}

id sub_10002C05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchWarningOperations();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10002C0FC()
{
  result = qword_100066E88;
  if (!qword_100066E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E88);
  }

  return result;
}

uint64_t sub_10002C150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002C1D8()
{
  result = qword_100066E90;
  if (!qword_100066E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E90);
  }

  return result;
}

uint64_t sub_10002C23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002C2A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10002C318(void *a1, void *a2)
{
  v28 = a1;
  v3 = sub_100043174();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  if (a2)
  {
    v17 = a2;
    v18 = [v28 creationDate];
    if (v18)
    {
      v19 = v18;
      sub_100043154();

      v20 = v4[4];
      v20(v16, v14, v3);
      v21 = [v28 creationDate];
      if (v21)
      {
        v22 = v21;
        sub_100043154();

        v20(v11, v8, v3);
        v23 = sub_100043124();
        v24 = v4[1];
        v24(v11, v3);
        v24(v16, v3);
        if (v23)
        {

          goto LABEL_6;
        }
      }

      else
      {
        (v4[1])(v16, v3);
      }
    }

    return v17;
  }

LABEL_6:
  v25 = v28;

  return v25;
}

id sub_10002C568@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v12 = v1[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v12;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;

  return v12;
}

void sub_10002C5F4(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v8;
  v1[6] = *(a1 + 32);
}

uint64_t sub_10002C718(uint64_t a1)
{
  swift_beginAccess();
  sub_10002C768(a1, v1 + 56);
  return swift_endAccess();
}

uint64_t sub_10002C768(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&unk_100066EC0, &unk_1000484E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C85C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_10002C8EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 72) = 0u;
  *(v4 + 81) = 0u;
  *(v4 + 56) = 0u;
  sub_100023BC0(a1, v7);
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  swift_beginAccess();
  sub_10002C768(a2, v4 + 56);
  swift_endAccess();
  return v4;
}

uint64_t sub_10002C994(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 72) = 0u;
  *(v4 + 81) = 0u;
  *(v4 + 56) = 0u;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  swift_beginAccess();
  sub_10002C768(a2, v4 + 56);
  swift_endAccess();
  return v4;
}

uint64_t sub_10002CA2C()
{
  v1 = objc_allocWithZone(CKRecordZone);
  v2 = sub_1000432E4();
  v3 = [v1 initWithZoneName:v2];

  v4 = *(*v0 + 120);
  v5 = v4(v15);
  v7 = *(v6 + 24);
  *(v6 + 24) = v3;

  v5(v15, 0);
  v8 = objc_allocWithZone(CKRecordZone);
  v9 = sub_1000432E4();
  v10 = [v8 initWithZoneName:v9];

  v11 = v4(v15);
  v13 = *(v12 + 32);
  *(v12 + 32) = v10;

  return v11(v15, 0);
}

void sub_10002CB74(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_100013A34(&qword_100066E80, &qword_1000483E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  sub_100034098(a1, a2, a3);
  if (!v4)
  {
    if (v13)
    {
      v14 = v13;
      sub_10003011C(a1, a2, a3, v13, v12);

      sub_100035F58(v12, a4, &qword_100066E80, &qword_1000483E0);
    }

    else
    {
      v15 = type metadata accessor for LaunchWarningDetails();
      (*(*(v15 - 8) + 56))(a4, 1, 1, v15);
    }
  }
}

void sub_10002CCC4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v135 = a3;
  v7 = sub_100013A34(&qword_100066ED0, &unk_1000484F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v134 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v137 = &v132 - v12;
  __chkstk_darwin(v11);
  v140 = &v132 - v13;
  v14 = sub_100013A34(&qword_100066ED8, &unk_100048D00);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v133 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v138 = &v132 - v19;
  __chkstk_darwin(v18);
  v146 = &v132 - v20;
  v21 = sub_1000431E4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v149 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v151 = &v132 - v27;
  __chkstk_darwin(v26);
  v29 = &v132 - v28;
  v30 = swift_allocObject();
  v157 = v30;
  *(v30 + 16) = xmmword_100046ED0;
  v132 = v30 + 16;
  v31 = swift_allocObject();
  v158 = v31;
  *(v31 + 16) = 0;
  v139 = (v31 + 16);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v136 = (v32 + 16);
  v33 = swift_allocObject();
  v150 = v33;
  *(v33 + 16) = 0;
  v148 = (v33 + 16);
  v34 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
  v35 = v34;
  v154 = v21;
  v155 = v4;
  v159 = v32;
  if (a2 >> 60 != 15)
  {
    v156 = v34;
    sub_100013104(a1, a2);
    v36 = sub_1000211D4();
    (*(v22 + 16))(v29, v36, v21);
    sub_100013104(a1, a2);
    v37 = sub_1000431C4();
    v38 = sub_100043494();
    sub_100013158(a1, a2);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      LODWORD(v153) = v38;
      v40 = v39;
      v152 = swift_slowAlloc();
      v162[0] = v152;
      *v40 = 136446210;
      v41 = sub_1000430A4(0);
      v43 = v22;
      v44 = sub_100015730(v41, v42, v162);
      v21 = v154;

      *(v40 + 4) = v44;
      v22 = v43;
      _os_log_impl(&_mh_execute_header, v37, v153, "Base asset sync with token: %{public}s", v40, 0xCu);
      sub_100013B7C(v152);
      v4 = v155;
    }

    (*(v22 + 8))(v29, v21);
    v45 = objc_allocWithZone(CKServerChangeToken);
    sub_100013104(a1, a2);
    isa = sub_100043094().super.isa;
    v47 = [v45 initWithData:isa];

    sub_100013158(a1, a2);
    v35 = v156;
    [(objc_class *)v156 setPreviousServerChangeToken:v47];

    sub_100013158(a1, a2);
    v32 = v159;
  }

  v48 = sub_100043544();
  v49 = *(*v4 + 104);
  v152 = (*v4 + 104);
  v153 = v49;
  (v49)(v163, v48);
  v50 = v35;
  v51 = v163[0];
  v52 = v163[2];

  v53 = v163[1];
  v174 = v163[3];
  sub_100029814(&v174, &qword_100066EE0, &qword_100048500);
  v173 = v163[4];
  sub_100029814(&v173, &qword_100066EE0, &qword_100048500);
  v54 = [v52 zoneID];

  v55 = &_swiftEmptyDictionarySingleton;
  v56 = v50;
  if (&_swiftEmptyDictionarySingleton >> 62)
  {
    v57 = sub_100043684();
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v55 = sub_100035330(&_swiftEmptyDictionarySingleton, v57 + 1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v162[0] = v55;
  sub_100035828(v56, v54, isUniquelyReferenced_nonNull_native);

  v156 = v162[0];
  v59 = sub_1000211D4();
  v60 = *(v22 + 16);
  v61 = v151;
  v142 = v59;
  v143 = v22 + 16;
  v141 = v60;
  v60(v151);

  v62 = v21;
  v63 = sub_1000431C4();
  v64 = sub_100043494();

  v65 = os_log_type_enabled(v63, v64);
  v144 = v22;
  v147 = v56;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v162[0] = v67;
    *v66 = 136446210;
    v153(v164);
    v68 = v164[0];
    v69 = v164[2];

    v70 = v164[1];
    v172 = v164[3];
    sub_100029814(&v172, &qword_100066EE0, &qword_100048500);
    v171 = v164[4];
    sub_100029814(&v171, &qword_100066EE0, &qword_100048500);
    v71 = [v69 zoneID];

    v72 = [v71 zoneName];
    v73 = sub_100043314();
    v75 = v74;

    v76 = sub_100015730(v73, v75, v162);

    *(v66 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v63, v64, "Starting sync of zone: %{public}s", v66, 0xCu);
    sub_100013B7C(v67);
    v32 = v159;

    v77 = v153;
    v78 = v151;
    v151 = *(v22 + 8);
    (v151)(v78, v154);
  }

  else
  {

    v151 = *(v22 + 8);
    (v151)(v61, v62);
    v77 = v153;
  }

  sub_100036008(0, &qword_100066EE8, CKFetchRecordZoneChangesOperation_ptr);
  sub_100013A34(&unk_100066EF0, &qword_100048508);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1000484D0;
  v77(v165);
  v80 = v165[0];
  v81 = v165[2];

  v82 = v165[1];
  v170 = v165[3];
  sub_100029814(&v170, &qword_100066EE0, &qword_100048500);
  v169 = v165[4];
  sub_100029814(&v169, &qword_100066EE0, &qword_100048500);
  v83 = [v81 zoneID];

  *(v79 + 32) = v83;
  v84 = v156;

  v175.value._rawValue = v79;
  v175.is_nil = v84;
  v85 = sub_100043524(v175, v176).super.super.super.super.isa;
  v86 = swift_allocObject();
  v87 = v150;
  v88 = v158;
  v86[2] = v150;
  v86[3] = v88;
  v86[4] = v32;

  sub_100043534();
  v89 = swift_allocObject();
  *(v89 + 16) = v157;
  *(v89 + 24) = v87;

  sub_100043514();
  v90 = v85;
  v91 = [(objc_class *)v90 configuration];
  if (!v91)
  {
    goto LABEL_33;
  }

  v92 = v91;
  v93 = v77;
  [v91 setQualityOfService:25];

  v94 = [(objc_class *)v90 configuration];
  v95 = v149;
  if (!v94)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v96 = v94;
  [v94 setTimeoutIntervalForRequest:10.0];

  v97 = [(objc_class *)v90 configuration];
  if (!v97)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v98 = v90;
  v99 = v97;
  [v97 setTimeoutIntervalForResource:60.0];

  v100 = [(objc_class *)v98 configuration];
  if (!v100)
  {
LABEL_36:
    __break(1u);
    return;
  }

  [v100 setPreferAnonymousRequests:1];

  v93(v166);
  v101 = v166[1];

  v168 = v166[3];
  sub_100029814(&v168, &qword_100066EE0, &qword_100048500);
  v167 = v166[4];
  sub_100029814(&v167, &qword_100066EE0, &qword_100048500);
  [v101 addOperation:v98];

  v156 = v98;
  [(objc_class *)v98 waitUntilFinished];
  v102 = v148;
  swift_beginAccess();
  v103 = *v102;
  if (*v102)
  {
    v104 = v154;
    v141(v95, v142, v154);
    swift_errorRetain();
    swift_errorRetain();
    v105 = sub_1000431C4();
    v106 = sub_1000434A4();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v161 = v108;
      *v107 = 136446210;
      v160 = v103;
      swift_errorRetain();
      sub_100013A34(&qword_100066690, &qword_100048510);
      v109 = sub_100043364();
      v111 = sub_100015730(v109, v110, &v161);

      *(v107 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v105, v106, "Sync error: %{public}s", v107, 0xCu);
      sub_100013B7C(v108);

      v112 = v149;
      v113 = v154;
    }

    else
    {

      v112 = v95;
      v113 = v104;
    }

    (v151)(v112, v113);
    swift_willThrow();

    v119 = v156;
    goto LABEL_23;
  }

  v114 = type metadata accessor for BloomFilterRecord(0);
  (*(*(v114 - 8) + 56))(v146, 1, 1, v114);
  v115 = v139;
  swift_beginAccess();
  if (*v115)
  {
    v116 = *v115;
    v117 = v138;
    v118 = v145;
    sub_100030FBC(v116, v138);
    if (v118)
    {
      sub_100029814(v146, &qword_100066ED8, &unk_100048D00);

      v119 = v147;
LABEL_23:

      return;
    }

    v145 = 0;
    v120 = v146;
    sub_100029814(v146, &qword_100066ED8, &unk_100048D00);

    sub_100035F58(v117, v120, &qword_100066ED8, &unk_100048D00);
  }

  v121 = type metadata accessor for DocumentCheckerRecord(0);
  (*(*(v121 - 8) + 56))(v140, 1, 1, v121);
  v122 = v136;
  swift_beginAccess();
  v123 = v137;
  if (*v122)
  {
    v124 = *v122;
    v125 = v145;
    sub_100032B90(v124, v123);
    if (v125)
    {

      sub_100029814(v140, &qword_100066ED0, &unk_1000484F0);
      sub_100029814(v146, &qword_100066ED8, &unk_100048D00);

      return;
    }

    v145 = 0;
    v126 = v140;
    sub_100029814(v140, &qword_100066ED0, &unk_1000484F0);

    sub_100035F58(v123, v126, &qword_100066ED0, &unk_1000484F0);
  }

  else
  {
    v126 = v140;
  }

  v127 = v146;
  v128 = v133;
  sub_100029070(v146, v133, &qword_100066ED8, &unk_100048D00);
  v129 = v134;
  sub_100029070(v126, v134, &qword_100066ED0, &unk_1000484F0);
  swift_beginAccess();
  v130 = *(v157 + 16);
  v131 = *(v157 + 24);
  sub_1000130F0(v130, v131);
  sub_10003EF90(v128, v129, v130, v131, v135);

  sub_100029814(v126, &qword_100066ED0, &unk_1000484F0);
  sub_100029814(v127, &qword_100066ED8, &unk_100048D00);
}

void sub_10002DD24(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = sub_1000431E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  if ((a3 & 1) == 0)
  {
    v32 = sub_1000211D4();
    (*(v13 + 16))(v19, v32, v12);
    v33 = a2;
    v34 = sub_1000431C4();
    v35 = sub_1000434B4();
    sub_100035F4C(a2, 0);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = a6;
      v38 = v37;
      *v36 = 138543362;
      *(v36 + 4) = v33;
      *v37 = a2;
      v39 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "Base asset record changed: %{public}@", v36, 0xCu);
      sub_100029814(v38, &qword_100067060, &qword_100046E00);
      a6 = v52;
    }

    (*(v13 + 8))(v19, v12);
    if (sub_100043554() == 0xD00000000000001DLL && 0x800000010004CA60 == v40)
    {
    }

    else
    {
      v41 = sub_1000437F4();

      if ((v41 & 1) == 0)
      {
        if (sub_100043554() == 0xD000000000000013 && 0x800000010004CA80 == v46)
        {
        }

        else
        {
          v47 = sub_1000437F4();

          if ((v47 & 1) == 0)
          {
            return;
          }
        }

        swift_beginAccess();
        v48 = a6[2];
        v49 = v48;
        v50 = sub_10002C318(v33, v48);

        swift_beginAccess();
        v45 = a6[2];
        a6[2] = v50;
LABEL_12:

        return;
      }
    }

    swift_beginAccess();
    v42 = *(a5 + 16);
    v43 = v42;
    v44 = sub_10002C318(v33, v42);

    swift_beginAccess();
    v45 = *(a5 + 16);
    *(a5 + 16) = v44;
    goto LABEL_12;
  }

  swift_errorRetain();
  v20 = sub_1000211D4();
  (*(v13 + 16))(v17, v20, v12);
  sub_100035F40(a2, 1);
  v21 = a1;
  v22 = sub_1000431C4();
  v23 = sub_1000434B4();

  sub_100035F4C(a2, 1);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v51 = v25;
    v52 = swift_slowAlloc();
    v53 = a2;
    v54 = v52;
    *v24 = 138412546;
    *(v24 + 4) = v21;
    *v25 = v21;
    *(v24 + 12) = 2082;
    sub_100035F40(a2, 1);
    v26 = v21;
    sub_100013A34(&qword_100066690, &qword_100048510);
    v27 = sub_100043364();
    v29 = a4;
    v30 = sub_100015730(v27, v28, &v54);

    *(v24 + 14) = v30;
    a4 = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Base asset record error: %@, %{public}s", v24, 0x16u);
    sub_100029814(v51, &qword_100067060, &qword_100046E00);

    sub_100013B7C(v52);
  }

  (*(v13 + 8))(v17, v12);
  swift_beginAccess();
  v31 = *(a4 + 16);
  *(a4 + 16) = a2;
}

void sub_10002E260(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v91 = a3;
  v96 = a2;
  v95 = a1;
  v6 = sub_1000431E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v98 = &v84 - v13;
  __chkstk_darwin(v12);
  v15 = &v84 - v14;
  v16 = swift_allocObject();
  v101 = v16;
  *(v16 + 16) = 0;
  v90 = v16 + 16;
  v17 = swift_allocObject();
  v99 = v17;
  *(v17 + 16) = xmmword_100046ED0;
  v89 = v17 + 16;
  v18 = swift_allocObject();
  v100 = v18;
  *(v18 + 16) = 0;
  v94 = (v18 + 16);
  v19 = *(*v4 + 104);
  v20 = *v4 + 104;
  v97 = v4;
  v93 = v19;
  v92 = v20;
  v19(v105);
  v21 = v105[0];
  v110 = v105[3];
  sub_100029070(&v110, v104, &qword_100066EE0, &qword_100048500);

  sub_100029814(&v110, &qword_100066EE0, &qword_100048500);
  v109 = v105[4];
  sub_100029814(&v109, &qword_100066EE0, &qword_100048500);
  v22 = v110;
  if (v110)
  {
    v23 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
    v24 = v23;
    v25 = v6;
    if (a4 >> 60 != 15)
    {
      v87 = v23;
      v26 = v91;
      sub_100013104(v91, a4);
      v27 = sub_1000211D4();
      (*(v7 + 16))(v15, v27, v6);
      sub_100013104(v26, a4);
      v28 = sub_1000431C4();
      v29 = sub_100043494();
      sub_100013158(v26, a4);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v86 = v29;
        v31 = v30;
        v85 = swift_slowAlloc();
        v104[0] = v85;
        *v31 = 136446210;
        v32 = sub_1000430A4(0);
        v34 = sub_100015730(v32, v33, v104);

        *(v31 + 4) = v34;
        v25 = v6;
        v26 = v91;
        _os_log_impl(&_mh_execute_header, v28, v86, "Update zone sync with token: %{public}s", v31, 0xCu);
        sub_100013B7C(v85);
      }

      (*(v7 + 8))(v15, v25);
      v35 = objc_allocWithZone(CKServerChangeToken);
      sub_100013104(v26, a4);
      isa = sub_100043094().super.isa;
      v37 = [v35 initWithData:isa];

      sub_100013158(v26, a4);
      v38 = v87;
      [v87 setPreviousServerChangeToken:v37];

      v39 = v26;
      v24 = v38;
      sub_100013158(v39, a4);
    }

    v88 = v7;
    sub_100043544();
    v40 = [v22 zoneID];
    v41 = &_swiftEmptyDictionarySingleton;
    v42 = v24;
    v43 = v100;
    v44 = v97;
    if (&_swiftEmptyDictionarySingleton >> 62)
    {
      v45 = sub_100043684();
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v41 = sub_100035330(&_swiftEmptyDictionarySingleton, v45 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = v41;
    v91 = v42;
    sub_100035828(v42, v40, isUniquelyReferenced_nonNull_native);

    v47 = v104[0];
    sub_100036008(0, &qword_100066EE8, CKFetchRecordZoneChangesOperation_ptr);
    sub_100013A34(&unk_100066EF0, &qword_100048508);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000484D0;
    *(v48 + 32) = [v22 zoneID];

    v111.value._rawValue = v48;
    v111.is_nil = v47;
    v49 = sub_100043524(v111, v112).super.super.super.super.isa;
    v50 = swift_allocObject();
    v51 = v101;
    v50[2] = v43;
    v50[3] = v51;
    v52 = v95;
    v50[4] = v44;
    v50[5] = v52;
    v50[6] = v96;

    sub_100043534();
    v53 = swift_allocObject();
    v54 = v99;
    *(v53 + 16) = v99;
    *(v53 + 24) = v43;

    sub_100043514();
    v55 = v49;
    v56 = [(objc_class *)v55 configuration];
    if (v56)
    {
      v57 = v56;
      [v56 setQualityOfService:25];

      v58 = [(objc_class *)v55 configuration];
      v59 = v98;
      if (v58)
      {
        v60 = v58;
        [v58 setTimeoutIntervalForRequest:10.0];

        v61 = [(objc_class *)v55 configuration];
        if (v61)
        {
          v62 = v61;
          [v61 setTimeoutIntervalForResource:60.0];

          v63 = [(objc_class *)v55 configuration];
          if (v63)
          {

            [v63 setPreferAnonymousRequests:1];

            v93(v106);
            v64 = v106[1];

            v108 = v106[3];
            sub_100029814(&v108, &qword_100066EE0, &qword_100048500);
            v107 = v106[4];
            sub_100029814(&v107, &qword_100066EE0, &qword_100048500);
            [v64 addOperation:v55];

            [(objc_class *)v55 waitUntilFinished];
            v65 = v94;
            swift_beginAccess();
            v66 = *v65;
            if (v66)
            {
              swift_errorRetain();
              v67 = sub_1000211D4();
              v68 = v88;
              (*(v88 + 16))(v59, v67, v25);
              swift_errorRetain();
              v69 = sub_1000431C4();
              v70 = sub_1000434A4();

              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                v97 = v25;
                v73 = v72;
                v103[0] = v72;
                *v71 = 136446210;
                v102 = v66;
                swift_errorRetain();
                sub_100013A34(&qword_100066690, &qword_100048510);
                v74 = sub_100043364();
                v76 = sub_100015730(v74, v75, v103);

                *(v71 + 4) = v76;
                _os_log_impl(&_mh_execute_header, v69, v70, "Update sync error: %{public}s", v71, 0xCu);
                sub_100013B7C(v73);

                (*(v68 + 8))(v98, v97);
              }

              else
              {

                (*(v68 + 8))(v59, v25);
              }

              swift_willThrow();
              sub_100029814(&v110, &qword_100066EE0, &qword_100048500);
            }

            else
            {
              swift_beginAccess();
              v83 = *(v101 + 16);
              swift_beginAccess();
              sub_1000130F0(*(v54 + 16), *(v54 + 24));
              sub_10003F01C(v83);
              sub_100029814(&v110, &qword_100066EE0, &qword_100048500);
            }

            return;
          }

LABEL_26:
          __break(1u);
          return;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v77 = sub_1000211D4();
  v78 = v7;
  (*(v7 + 16))(v11, v77, v6);
  v79 = sub_1000431C4();
  v80 = sub_1000434B4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&_mh_execute_header, v79, v80, "Update zone sync with no configured zone", v81, 2u);
  }

  (*(v78 + 8))(v11, v6);
  sub_100035A20();
  swift_allocError();
  *v82 = 3;
  swift_willThrow();
}

uint64_t sub_10002EE1C(void *a1, void *a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v52 = a6;
  v51 = a5;
  v14 = sub_1000431E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  if (a3)
  {
    swift_errorRetain();
    v22 = sub_1000211D4();
    (*(v15 + 16))(v19, v22, v14);
    sub_100035F40(a2, 1);
    v23 = a1;
    v24 = sub_1000431C4();
    v25 = sub_1000434B4();

    sub_100035F4C(a2, 1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v52 = a4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v57[0] = v51;
      *v27 = 138412546;
      *(v27 + 4) = v23;
      *v28 = v23;
      *(v27 + 12) = 2082;
      *&v53[0] = a2;
      sub_100035F40(a2, 1);
      v29 = v23;
      sub_100013A34(&qword_100066690, &qword_100048510);
      v30 = sub_100043364();
      v32 = sub_100015730(v30, v31, v57);

      *(v27 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Base asset record error: %@, %{public}s", v27, 0x16u);
      sub_100029814(v28, &qword_100067060, &qword_100046E00);

      sub_100013B7C(v51);

      a4 = v52;
    }

    (*(v15 + 8))(v19, v14);
    goto LABEL_5;
  }

  v50 = a8;
  v33 = sub_1000211D4();
  (*(v15 + 16))(v21, v33, v14);
  v34 = a2;
  v35 = sub_1000431C4();
  v36 = sub_1000434B4();
  sub_100035F4C(a2, 0);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = a7;
    v39 = a4;
    v40 = v38;
    *v37 = 138543362;
    *(v37 + 4) = v34;
    *v38 = a2;
    v41 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "Update zone record changed: %{public}@", v37, 0xCu);
    sub_100029814(v40, &qword_100067060, &qword_100046E00);
    a4 = v39;
    a7 = v49;
  }

  (*(v15 + 8))(v21, v14);
  if (sub_100043554() == 0xD000000000000019 && 0x800000010004CA40 == v42)
  {
  }

  else
  {
    v43 = sub_1000437F4();

    if ((v43 & 1) == 0)
    {
      return result;
    }
  }

  v44 = v51;
  swift_beginAccess();
  *(v44 + 16) = 1;
  sub_10003342C(v34, v53);
  if (!v55)
  {
    sub_100035A20();
    a2 = swift_allocError();
    *v47 = 2;
LABEL_5:
    swift_beginAccess();
    v45 = *(a4 + 16);
    *(a4 + 16) = a2;
  }

  v57[0] = v53[0];
  v57[1] = v53[1];
  v58 = v54;
  v59 = v55;
  v60 = v56;
  a7(v57);
  return sub_100029814(v53, &unk_1000670F0, &unk_100048630);
}

uint64_t sub_10002F35C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, const char *a8)
{
  v62 = a8;
  v63 = a7;
  v14 = sub_1000431E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v58 - v20;
  if ((a4 & 0x100) != 0)
  {
    swift_errorRetain();
    v43 = sub_1000211D4();
    (*(v15 + 16))(v19, v43, v14);
    swift_errorRetain();
    v44 = sub_1000431C4();
    v45 = sub_1000434A4();
    sub_100035E84(a1, a2, a3, a4, 1);
    v46 = os_log_type_enabled(v44, v45);
    v61 = a2;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v60 = a3;
      v48 = v47;
      v49 = swift_slowAlloc();
      LODWORD(v63) = a4;
      v50 = v49;
      v64[0] = v49;
      *v48 = 136446210;
      v65 = a1;
      swift_errorRetain();
      sub_100013A34(&qword_100066690, &qword_100048510);
      v51 = sub_100043364();
      v59 = v14;
      v53 = sub_100015730(v51, v52, v64);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, v62, v48, 0xCu);
      sub_100013B7C(v50);
      a4 = v63;

      a3 = v60;

      (*(v15 + 8))(v19, v59);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v64[0] = a1;
    swift_errorRetain();
    sub_100013A34(&qword_100066690, &qword_100048510);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v54 = v65;
      v64[0] = v65;
      sub_100036134(&qword_1000670E0, type metadata accessor for CKError);
      sub_100042EF4();
      if (v65 == 21)
      {
        sub_100035EEC();
        v55 = swift_allocError();
        sub_100035E84(a1, v61, a3, a4, 1);

        swift_beginAccess();
        v56 = *(a6 + 16);
        *(a6 + 16) = v55;
      }
    }

    swift_beginAccess();
    v57 = *(a6 + 16);
    *(a6 + 16) = a1;
  }

  v22 = sub_1000211D4();
  (*(v15 + 16))(v21, v22, v14);
  v23 = a1;
  v24 = sub_1000431C4();
  v25 = sub_100043494();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    LODWORD(v61) = v25;
    v27 = v26;
    v60 = swift_slowAlloc();
    v64[0] = v60;
    *v27 = 136446210;
    v28 = [v23 data];
    v29 = sub_1000430B4();
    v62 = v23;
    v31 = v30;

    v32 = sub_1000430A4(0);
    v34 = v33;
    sub_10001316C(v29, v31);
    v35 = sub_100015730(v32, v34, v64);

    *(v27 + 4) = v35;
    v23 = v62;
    _os_log_impl(&_mh_execute_header, v24, v61, v63, v27, 0xCu);
    sub_100013B7C(v60);
  }

  (*(v15 + 8))(v21, v14);
  v36 = [v23 data];
  v37 = sub_1000430B4();
  v39 = v38;

  swift_beginAccess();
  v40 = *(a5 + 16);
  v41 = *(a5 + 24);
  *(a5 + 16) = v37;
  *(a5 + 24) = v39;
  return sub_100013158(v40, v41);
}

uint64_t sub_10002F8B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v61 = a3;
  v62 = sub_1000431E4();
  v63 = *(v62 - 8);
  v10 = *(v63 + 64);
  v11 = __chkstk_darwin(v62);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v60 - v15;
  result = (*(*v5 + 152))(v14);
  if ((result & 1) == 0)
  {
    if (a4 >> 60 == 15)
    {
      (*(*v5 + 128))(v67);
      if (v68)
      {
        sub_100029EB0(v67, v64);
        sub_100029814(v67, &unk_100066EC0, &unk_1000484E0);
        v18 = v65;
        v19 = v66;
        sub_100013B38(v64, v65);
        (*(*v5 + 104))(v70);
        (*(v19 + 40))(v70, a5, 0, v18, v19);

        v74 = v70[3];
        sub_100029814(&v74, &qword_100066EE0, &qword_100048500);
        v73[0] = v70[4];
        sub_100029814(v73, &qword_100066EE0, &qword_100048500);
        sub_100013B7C(v64);
      }

      else
      {
        sub_100029814(v67, &unk_100066EC0, &unk_1000484E0);
      }

      v26 = v62;
      v27 = sub_1000211D4();
      v28 = v63;
      (*(v63 + 16))(v13, v27, v26);
      v29 = a5;
      v30 = sub_1000431C4();
      v31 = sub_1000434A4();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v67[0] = swift_slowAlloc();
        *v32 = 136446466;
        v33 = sub_100043554();
        v35 = sub_100015730(v33, v34, v67);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2082;
        v36 = [v29 recordID];
        v37 = [v36 recordName];

        v38 = sub_100043314();
        v40 = v39;

        v41 = sub_100015730(v38, v40, v67);

        *(v32 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v30, v31, "Missing signature for %{public}s record %{public}s", v32, 0x16u);
        swift_arrayDestroy();

        (*(v63 + 8))(v13, v26);
      }

      else
      {

        (*(v28 + 8))(v13, v26);
      }

      sub_100035A20();
      swift_allocError();
      *v42 = 4;
      return swift_willThrow();
    }

    else
    {
      type metadata accessor for DataValidator();
      v20 = v61;
      sub_100013104(v61, a4);
      v21 = sub_100015538();
      v22 = (*(*v21 + 80))(v20, a4, a1, a2);

      LOBYTE(v67[0]) = v22 & 1;
      LOBYTE(v64[0]) = 0;
      sub_10001F224();
      if (sub_1000432D4())
      {
        v23 = v20;
      }

      else
      {
        (*(*v5 + 128))(v67);
        if (v68)
        {
          sub_100029EB0(v67, v64);
          sub_100029814(v67, &unk_100066EC0, &unk_1000484E0);
          v24 = v65;
          v25 = v66;
          sub_100013B38(v64, v65);
          (*(*v5 + 104))(v69);
          (*(v25 + 40))(v69, a5, 1, v24, v25);

          v72 = v69[3];
          sub_100029814(&v72, &qword_100066EE0, &qword_100048500);
          v71 = v69[4];
          sub_100029814(&v71, &qword_100066EE0, &qword_100048500);
          sub_100013B7C(v64);
        }

        else
        {
          sub_100029814(v67, &unk_100066EC0, &unk_1000484E0);
        }

        v43 = v62;
        v44 = sub_1000211D4();
        v45 = v63;
        (*(v63 + 16))(v16, v44, v43);
        v46 = a5;
        v47 = sub_1000431C4();
        v48 = sub_1000434A4();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v67[0] = v60;
          *v49 = 136446466;
          v50 = sub_100043554();
          v52 = sub_100015730(v50, v51, v67);

          *(v49 + 4) = v52;
          *(v49 + 12) = 2082;
          v53 = [v46 recordID];
          v54 = [v53 recordName];

          v55 = sub_100043314();
          v57 = v56;

          v58 = sub_100015730(v55, v57, v67);

          *(v49 + 14) = v58;
          _os_log_impl(&_mh_execute_header, v47, v48, "Invalid signature for %{public}s record %{public}s", v49, 0x16u);
          swift_arrayDestroy();

          (*(v45 + 8))(v16, v62);
        }

        else
        {

          (*(v45 + 8))(v16, v43);
        }

        sub_100035A20();
        swift_allocError();
        *v59 = 5;
        swift_willThrow();
        v23 = v61;
      }

      return sub_100013158(v23, a4);
    }
  }

  return result;
}

uint64_t sub_10003011C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v141 = a3;
  v142 = a1;
  v143 = a2;
  v146 = a5;
  v6 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v140 = &v131[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v144 = &v131[-v10];
  v159 = sub_1000431E4();
  v11 = *(v159 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v159);
  v15 = &v131[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v145 = &v131[-v17];
  __chkstk_darwin(v16);
  v138 = &v131[-v18];
  v19 = sub_100013A34(&qword_100067120, &qword_100048650);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v131[-v21];
  v23 = sub_100043174();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v131[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v30 = &v131[-v29];
  v31 = [a4 creationDate];
  v147 = v24;
  v148 = v30;
  v149 = v23;
  v139 = v28;
  if (v31)
  {
    v32 = v31;
    sub_100043154();

    v33 = v28;
    v34 = a4;
    v35 = *(v24 + 32);
    v35(v22, v33, v23);
    (*(v24 + 56))(v22, 0, 1, v23);
    v35(v30, v22, v23);
    a4 = v34;
  }

  else
  {
    (*(v24 + 56))(v22, 1, 1, v23);
    sub_100043164();
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      sub_100029814(v22, &qword_100067120, &qword_100048650);
    }
  }

  v36 = sub_100043564();
  if (!v36 || (v151 = v36, sub_100013A34(&qword_1000670C8, &qword_100048628), (swift_dynamicCast() & 1) == 0))
  {
    v54 = sub_1000211D4();
    (*(v11 + 16))(v15, v54, v159);
    v55 = a4;
    v56 = sub_1000431C4();
    v57 = sub_1000434A4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = v11;
      v60 = swift_slowAlloc();
      v151 = v60;
      *v58 = 136315138;
      v157 = sub_100043564();
      sub_100013A34(&qword_100067128, &qword_100048658);
      v61 = sub_100043364();
      v63 = sub_100015730(v61, v62, &v151);

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "CloudKit record has invalid flags field: %s", v58, 0xCu);
      sub_100013B7C(v60);

      (*(v59 + 8))(v15, v159);
    }

    else
    {

      (*(v11 + 8))(v15, v159);
    }

    goto LABEL_19;
  }

  v37 = v157;
  v38 = nullsub_1(v157);
  v39 = sub_100043564();
  if (!v39 || (v151 = v39, (swift_dynamicCast() & 1) == 0))
  {
    v64 = sub_1000211D4();
    v45 = v145;
    (*(v11 + 16))(v145, v64, v159);
    v65 = a4;
    v46 = sub_1000431C4();
    v66 = sub_1000434A4();

    if (os_log_type_enabled(v46, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v151 = v68;
      *v67 = 136315138;
      v157 = sub_100043564();
      sub_100013A34(&qword_100067128, &qword_100048658);
      v69 = sub_100043364();
      v71 = sub_100015730(v69, v70, &v151);

      *(v67 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v46, v66, "CloudKit record has invalid reason field: %s", v67, 0xCu);
      sub_100013B7C(v68);
    }

    goto LABEL_18;
  }

  v136 = v37;
  v137 = v157;
  v40 = sub_10001B3F4(v157);
  if (v40 == 2)
  {
    v151 = *sub_10001B510();
    v157 = v38;
    sub_10001B96C();
    v41 = sub_1000435D4();
    v43 = v142;
    v42 = v143;
    if (v41)
    {
      v44 = sub_1000211D4();
      v45 = v138;
      (*(v11 + 16))(v138, v44, v159);
      sub_100013104(v43, v42);
      v46 = sub_1000431C4();
      v47 = sub_1000434B4();
      sub_10001316C(v43, v42);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v42;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v151 = v50;
        *v49 = 67109378;
        *(v49 + 4) = v141;
        *(v49 + 8) = 2082;
        v51 = sub_1000137B0(v43, v48);
        v53 = sub_100015730(v51, v52, &v151);

        *(v49 + 10) = v53;
        _os_log_impl(&_mh_execute_header, v46, v47, "Launch warning has unknown reason and flags indicate to ignore: %u, %{public}s", v49, 0x12u);
        sub_100013B7C(v50);

        (*(v11 + 8))(v45, v159);
LABEL_19:
        (*(v147 + 8))(v148, v149);
        v72 = 1;
        v73 = v146;
LABEL_20:
        v74 = type metadata accessor for LaunchWarningDetails();
        return (*(*(v74 - 8) + 56))(v73, v72, 1, v74);
      }

LABEL_18:

      (*(v11 + 8))(v45, v159);
      goto LABEL_19;
    }

    v132 = 1;
  }

  else
  {
    v132 = v40;
    v43 = v142;
    v42 = v143;
  }

  v76 = sub_100043004();
  (*(*(v76 - 8) + 56))(v144, 1, 1, v76);
  v77 = sub_100043564();
  if (v77 && (v157 = v77, (swift_dynamicCast() & 1) != 0))
  {
    v79 = v151;
    v78 = v152;

    v80 = v140;
    v134 = v79;
    sub_100042FD4();
    v138 = v78;

    v81 = v144;
    sub_100029814(v144, &qword_100066838, &qword_1000473E0);
    sub_100035F58(v80, v81, &qword_100066838, &qword_1000473E0);
  }

  else
  {
    v134 = 0;
    v138 = 0;
  }

  v82 = sub_100043564();
  v83 = 0xF000000000000000;
  v133 = v38;
  v135 = a4;
  if (v82)
  {
    v157 = v82;
    v84 = swift_dynamicCast();
    v85 = v151;
    if (!v84)
    {
      v85 = 0;
    }

    v159 = v85;
    if (v84)
    {
      v83 = v152;
    }
  }

  else
  {
    v159 = 0;
  }

  LODWORD(v151) = v141;
  sub_100035BFC();
  v86 = sub_1000170EC(&v151, &type metadata for UInt32);
  v88 = v87;
  v89 = sub_100017418(v43, v42);
  v91 = v90;
  v155 = v86;
  v156 = v88;
  v153 = &type metadata for Data;
  v154 = &protocol witness table for Data;
  v151 = v89;
  v152 = v90;
  v92 = sub_100013B38(&v151, &type metadata for Data);
  v93 = *v92;
  v94 = v92[1];
  sub_100013104(v86, v88);
  sub_100013104(v89, v91);
  v95 = v150;
  sub_100018620(v93, v94);
  sub_10001316C(v89, v91);
  sub_10001316C(v86, v88);
  result = sub_100013B7C(&v151);
  if ((v137 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v145 = v83;
  if (HIDWORD(v137))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v96 = v155;
  v97 = v156;
  LODWORD(v151) = v137;
  v98 = sub_1000170EC(&v151, &type metadata for UInt32);
  v100 = v99;
  v157 = v96;
  v158 = v97;
  v153 = &type metadata for Data;
  v154 = &protocol witness table for Data;
  v151 = v98;
  v152 = v99;
  v101 = sub_100013B38(&v151, &type metadata for Data);
  v103 = *v101;
  v102 = v101[1];
  sub_100013104(v96, v97);
  sub_100013104(v98, v100);
  sub_100018620(v103, v102);
  sub_10001316C(v98, v100);
  sub_10001316C(v96, v97);
  result = sub_100013B7C(&v151);
  if ((v136 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (HIDWORD(v136))
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v104 = v157;
  v105 = v158;
  LODWORD(v151) = v136;
  v106 = sub_1000170EC(&v151, &type metadata for UInt32);
  v108 = v107;
  v155 = v104;
  v156 = v105;
  v153 = &type metadata for Data;
  v154 = &protocol witness table for Data;
  v151 = v106;
  v152 = v107;
  v109 = sub_100013B38(&v151, &type metadata for Data);
  v110 = *v109;
  v111 = v109[1];
  sub_100013104(v104, v105);
  sub_100013104(v106, v108);
  sub_100018620(v110, v111);
  sub_10001316C(v106, v108);
  sub_10001316C(v104, v105);
  sub_100013B7C(&v151);
  v112 = v155;
  v113 = v156;
  v114 = sub_10001721C(v134, v138);
  v116 = v115;

  v157 = v112;
  v158 = v113;
  v153 = &type metadata for Data;
  v154 = &protocol witness table for Data;
  v151 = v114;
  v152 = v116;
  v117 = sub_100013B38(&v151, &type metadata for Data);
  v118 = *v117;
  v119 = v117[1];
  sub_100013104(v112, v113);
  sub_100013104(v114, v116);
  sub_100018620(v118, v119);
  sub_10001316C(v114, v116);
  sub_10001316C(v112, v113);
  sub_100013B7C(&v151);
  v120 = v157;
  v121 = v158;
  v122 = v159;
  v123 = v145;
  sub_10002F8B4(v157, v158, v159, v145, v135);
  if (!v95)
  {
    v124 = v147;
    v125 = *(v147 + 16);
    v126 = v139;
    v159 = v122;
    v127 = v143;
    v125(v139, v148, v149);
    v150 = 0;
    v128 = v144;
    v129 = v140;
    sub_100029070(v144, v140, &qword_100066838, &qword_1000473E0);
    v130 = v142;
    sub_100013104(v142, v127);
    v73 = v146;
    sub_10001B77C(v141, v130, v127, v126, v132 & 1, v133, v129, v146);
    sub_100013158(v159, v145);
    sub_10001316C(v120, v121);
    sub_100029814(v128, &qword_100066838, &qword_1000473E0);
    (*(v124 + 8))(v148, v149);
    v72 = 0;
    goto LABEL_20;
  }

  sub_100013158(v122, v123);
  sub_10001316C(v120, v121);
  sub_100029814(v144, &qword_100066838, &qword_1000473E0);
  return (*(v147 + 8))(v148, v149);
}