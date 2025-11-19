unint64_t sub_10023524C()
{
  result = qword_10034F470;
  if (!qword_10034F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F470);
  }

  return result;
}

void sub_1002352C8()
{
  type metadata accessor for NoticeContext(319);
  if (v0 <= 0x3F)
  {
    sub_10012C2F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_10023534C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100235370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1002353B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100235420()
{
  result = qword_10034F510;
  if (!qword_10034F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F510);
  }

  return result;
}

uint64_t sub_100235474(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NoticeContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002354B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentNoticeRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10023551C()
{
  result = qword_10034F530;
  if (!qword_10034F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F530);
  }

  return result;
}

unint64_t sub_100235594()
{
  result = qword_10034F540;
  if (!qword_10034F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F540);
  }

  return result;
}

unint64_t sub_1002355EC()
{
  result = qword_10034F548;
  if (!qword_10034F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F548);
  }

  return result;
}

unint64_t sub_100235644()
{
  result = qword_10034F550;
  if (!qword_10034F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F550);
  }

  return result;
}

unint64_t sub_10023569C()
{
  result = qword_10034F558;
  if (!qword_10034F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F558);
  }

  return result;
}

unint64_t sub_1002356F4()
{
  result = qword_10034F560;
  if (!qword_10034F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F560);
  }

  return result;
}

unint64_t sub_10023574C()
{
  result = qword_10034F568[0];
  if (!qword_10034F568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10034F568);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LEDEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
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
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LEDEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
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

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100235908()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x6D6F6F6C62;
  }

  if (v1 == 3)
  {
    return 1886352499;
  }

  BYTE8(v4) = 0;
  v3._countAndFlagsBits = 0x2D776F6C67;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  *&v4 = v1 & 1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v4 + 1);
}

uint64_t sub_1002359B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  if (v2)
  {
    v5 = 0x746C7561666564;
  }

  else
  {
    v5 = 0x6F69746163756465;
  }

  if (v2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
  }

  if (v3)
  {
    v7 = 0x746C7561666564;
  }

  else
  {
    v7 = 0x6F69746163756465;
  }

  if (v3)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE90000000000006ELL;
  }

  if (v5 != v7 || v6 != v8)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v10 & 1;
  }

  return 1;
}

unint64_t sub_100235AB4(void *a1)
{
  v2 = a1[3];
  swift_getFunctionTypeMetadata1();
  result = type metadata accessor for Array();
  if (v4 <= 0x3F)
  {
    v5 = a1[2];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v7 <= 0x3F)
      {
        v8 = a1[4];
        result = type metadata accessor for Array();
        if (v9 <= 0x3F)
        {
          result = sub_100043FCC();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

double MultiEdge.init(_:trigger:end:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v26 = a5;
  v27 = a8;
  v28 = a3;
  v29 = a4;
  v30 = a1;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16);
  v17 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 2) = v26;
  *(v19 + 3) = a6;
  *(v19 + 4) = a7;
  *(v19 + 5) = v20;
  *(v19 + 6) = a10;
  (*(v14 + 32))(&v19[v17], v16, a6);
  v21 = &v19[v18];
  v22 = v29;
  *v21 = v28;
  *(v21 + 1) = v22;
  MultiEdge.init(startNodes:end:)(v30, sub_100236D20, v19, v31);
  (*(v14 + 8))(a2, a6);
  v23 = v31[1];
  *a9 = v31[0];
  a9[1] = v23;
  result = *&v32;
  a9[2] = v32;
  return result;
}

double MultiEdge.init(_:triggers:end:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v17 = sub_100059CAC(a5, a5);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = *(a5 - 8);
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  swift_allocObject();
  v23 = static Array._adoptStorage(_:count:)();
  (*(v20 + 16))(v24, a1, a5);
  v25 = sub_100042610(v23);
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;
  v26[5] = a8;
  v26[6] = a10;
  v26[7] = a2;
  v26[8] = a3;
  v26[9] = a4;
  MultiEdge.init(startNodes:end:)(v25, sub_1002370B0, v26, v31);
  (*(v20 + 8))(a1, a5);
  v27 = v31[1];
  *a9 = v31[0];
  a9[1] = v27;
  result = *&v32;
  a9[2] = v32;
  return result;
}

double MultiEdge.init(_:to:triggers:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v17 = sub_100059CAC(a4, a4);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = *(a4 - 8);
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  swift_allocObject();
  v23 = static Array._adoptStorage(_:count:)();
  (*(v20 + 16))(v24, a1, a4);
  v25 = sub_100042610(v23);
  v26 = sub_1002370E4(v25, a3, a4, a5, a6, a7, a8, v31);
  v27 = *(v20 + 8);
  v27(a2, a4, v26);
  (v27)(a1, a4);
  v28 = v31[1];
  *a9 = v31[0];
  a9[1] = v28;
  result = *&v32;
  a9[2] = v32;
  return result;
}

{
  v12 = sub_1002370E4(a1, a3, a4, a5, a6, a7, a8, v15);
  (*(*(a4 - 8) + 8))(a2, a4, v12);
  v13 = v15[1];
  *a9 = v15[0];
  a9[1] = v13;
  result = *&v16;
  a9[2] = v16;
  return result;
}

uint64_t MultiEdge.end.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MultiEdge.end.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MultiEdge.actions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t MultiEdge.filters.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t MultiEdge.outputs.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

double MultiEdge.init(_:to:trigger:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v17 = sub_100059CAC(a5, a5);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = *(a5 - 8);
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  swift_allocObject();
  v23 = static Array._adoptStorage(_:count:)();
  (*(v20 + 16))(v24, a3, a5);
  v25 = sub_100042610(v23);
  v26 = sub_1002370E4(a1, v25, a4, a5, a6, a7, a8, v30);
  (*(v20 + 8))(a3, a5, v26);
  (*(*(a4 - 8) + 8))(a2, a4);
  v27 = v30[1];
  *a9 = v30[0];
  a9[1] = v27;
  result = *&v31;
  a9[2] = v31;
  return result;
}

uint64_t sub_100236424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a9;
  v30 = a8;
  v28 = a1;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(a1);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v19;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    (*(v15 + 16))(v18, a3, a4);
    v21 = v29;
    v20 = v30;
    End.init(_:)(v18, a4, v29);
    v31 = a4;
    v32 = a5;
    v33 = a6;
    v34 = a7;
    v35 = v20;
  }

  else
  {
    v31 = a2;
    swift_getWitnessTable();
    v22 = *(v30 + 8);
    if ((Sequence<>.contains(_:)() & 1) == 0)
    {
      v31 = a4;
      v32 = a5;
      v33 = a6;
      v34 = a7;
      v35 = v30;
      v25 = type metadata accessor for End();
      v26 = 1;
      v21 = v29;
      return (*(*(v25 - 8) + 56))(v21, v26, 1);
    }

    (*(v15 + 16))(v18, a3, a4);
    v21 = v29;
    v23 = a6;
    v24 = v30;
    End.init(_:)(v18, a4, v29);
    v31 = a4;
    v32 = a5;
    v33 = v23;
    v34 = a7;
    v35 = v24;
  }

  v25 = type metadata accessor for End();
  v26 = 0;
  return (*(*(v25 - 8) + 56))(v21, v26, 1);
}

uint64_t MultiEdge.init(startNodes:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_getFunctionTypeMetadata1();
  v8 = static Array._allocateUninitialized(_:)();
  swift_getFunctionTypeMetadata1();
  v9 = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  swift_getFunctionTypeMetadata1();
  result = static Array._allocateUninitialized(_:)();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v8;
  a4[4] = v9;
  a4[5] = result;
  return result;
}

double MultiEdge.init(_:to:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a2;
  v18[8] = a3;
  MultiEdge.init(startNodes:end:)(a1, sub_100237258, v18, v21);
  v19 = v21[1];
  *a9 = v21[0];
  a9[1] = v19;
  result = *&v22;
  a9[2] = v22;
  return result;
}

uint64_t sub_100236828@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v38 = a8;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v34 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v34 - v22;
  a2(a1);
  if ((*(v17 + 48))(v16, 1, a3) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v39 = a3;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v24 = type metadata accessor for End();
    v25 = 1;
    v26 = v38;
  }

  else
  {
    (*(v17 + 32))(v23, v16, a3);
    (*(v17 + 16))(v21, v23, a3);
    v27 = v38;
    v28 = v21;
    v30 = v34;
    v29 = v35;
    v32 = v36;
    v31 = v37;
    End.init(_:)(v28, a3, v38);
    (*(v17 + 8))(v23, a3);
    v39 = a3;
    v40 = v30;
    v41 = v29;
    v42 = v32;
    v43 = v31;
    v24 = type metadata accessor for End();
    v25 = 0;
    v26 = v27;
  }

  return (*(*(v24 - 8) + 56))(v26, v25, 1);
}

uint64_t sub_100236AE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>, uint64_t a4)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return a2(a1);
  }

  swift_getWitnessTable();
  v7 = *(a4 + 8);
  if (Sequence<>.contains(_:)())
  {
    return a2(a1);
  }

  v9 = type metadata accessor for End();
  return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
}

uint64_t sub_100236C38@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>, uint64_t a4)
{
  v7 = *(a4 + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return a2(a1);
  }

  v9 = type metadata accessor for End();
  return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
}

uint64_t sub_100236D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2 + ((*(*(v2[3] - 8) + 64) + ((*(*(v2[3] - 8) + 80) + 56) & ~*(*(v2[3] - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 1);
  return sub_100236C38(a1, *v6, a2, v2[6]);
}

uint64_t MultiEdge.asEdges()(void *a1)
{
  v21 = *v1;
  v22 = v21;
  v2 = a1[3];
  v12 = a1[2];
  v13 = v2;
  v3 = a1[5];
  v14 = a1[4];
  v15 = v3;
  v4 = a1[6];
  v5 = type metadata accessor for Array();

  v16 = v12;
  v17 = v2;
  v18 = v14;
  v19 = v3;
  v20 = v4;
  v6 = type metadata accessor for Edge2();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_10007F168(sub_10023726C, &v11, v5, v6, &type metadata for Never, WitnessTable, &protocol witness table for Never, v8);
  (*(*(v5 - 8) + 8))(&v22, v5);
  return v9;
}

uint64_t sub_100236ED8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v20 = a2[1];
  v19 = a2[2];

  Edge2.init(start:end:)(v17, v20, v19, a3, a8);
  v21 = a2[3];
  v32[1] = a3;
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v22 = type metadata accessor for Edge2();
  v23 = v22[16];
  v24 = *(a8 + v23);

  *(a8 + v23) = v21;
  v25 = a2[4];
  v26 = v22[17];
  v27 = *(a8 + v26);

  *(a8 + v26) = v25;
  v28 = a2[5];
  v29 = v22[18];
  v30 = *(a8 + v29);

  *(a8 + v29) = v28;
  return result;
}

uint64_t sub_100237074(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return MultiEdge.asEdges()(a1);
}

uint64_t sub_1002370B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  v8 = *(v2 + 72);
  return sub_100236AE0(a1, *(v2 + 64), a2, *(v2 + 48));
}

double sub_1002370E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  v21 = a7;
  v22 = a1;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16);
  v17 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  *(v18 + 5) = a6;
  *(v18 + 6) = v21;
  *(v18 + 7) = a2;
  (*(v14 + 32))(&v18[v17], v16, a3);
  MultiEdge.init(startNodes:end:)(v22, sub_1002373B8, v18, v23);
  v19 = v23[1];
  *a8 = v23[0];
  a8[1] = v19;
  result = *&v24;
  a8[2] = v24;
  return result;
}

uint64_t sub_100237294(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002372D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10023730C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100237354(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s14descr1002FF079V23HandoffEnabledHeartbeatVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_1002374D8(uint64_t a1)
{
  result = sub_100237500();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100237500()
{
  result = qword_10034F770;
  if (!qword_10034F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F770);
  }

  return result;
}

uint64_t sub_100237554()
{
  v1 = 0x546D7269666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x657373696D736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746E6573657270;
  }
}

unint64_t sub_1002375C0(uint64_t a1)
{
  result = sub_1002375E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002375E8()
{
  result = qword_10034F778;
  if (!qword_10034F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034F778);
  }

  return result;
}

uint64_t sub_10023763C(uint64_t *a1, uint64_t *a2)
{
  v3 = qword_100347AC8;
  if (*(v2 + qword_100347AC8))
  {
    v4 = *(v2 + qword_100347AC8);
  }

  else
  {
    v5 = v2;
    v6 = sub_100035D04(a1, a2);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v4 = PassthroughSubject.init()();
    v9 = *(v5 + v3);
    *(v5 + v3) = v4;
  }

  return v4;
}

uint64_t sub_1002376DC(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v5 = qword_100347AD0;
  if (*(v3 + qword_100347AD0))
  {
    v6 = *(v3 + qword_100347AD0);
  }

  else
  {
    v8 = v3;
    sub_10023763C(a1, a2);
    sub_100035D04(a1, a2);
    sub_10000E244(a3, a1, a2);
    v6 = Publisher.eraseToAnyPublisher()();

    v10 = *(v3 + v5);
    *(v8 + v5) = v6;
  }

  return v6;
}

id sub_1002377E4(uint64_t a1, unint64_t a2, const char **a3)
{
  v7 = v3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100017494(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000903C(v11);
  }

  v12 = *(v7 + qword_100347AB0);
  v13 = *a3;

  return [v12 v13];
}

uint64_t sub_100237910()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034F780);
  sub_100003078(v0, qword_10034F780);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100237990()
{
  v1 = v0;
  if (qword_100339280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034F780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 16);
  swift_unownedRelease();

  v7 = *(v1 + 32);

  v8 = *(v1 + 40);

  return v1;
}

uint64_t sub_100237A90()
{
  sub_100237990();

  return swift_deallocClassInstance();
}

id sub_100237AE8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034F898, &qword_1002942E8);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v24 = v23 - v8;
  if (qword_100339280 != -1)
  {
    swift_once();
  }

  v9 = sub_100003078(v2, qword_10034F780);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, v27);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000903C(v13);
  }

  v23[1] = *(v1 + 24);
  v14 = sub_1002376DC(&qword_10034F8C0, &qword_100294300, &qword_10034F8C8);
  v15 = static os_log_type_t.info.getter();
  v27[0] = v14;
  (*(v3 + 16))(v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v2);
  v16 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v17 = v16 + v4;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = 0x6B6E696C2077654ELL;
  *(v18 + 5) = 0xEA0000000000203ALL;
  *(v18 + 6) = 0;
  *(v18 + 7) = 0xE000000000000000;
  (*(v3 + 32))(&v18[v16], v5, v2);
  v18[v17] = v15;
  sub_100035D04(&qword_10034F8A0, &unk_1002942F0);
  sub_100035D04(&qword_10034B518, &qword_100289688);
  sub_10000E244(&qword_10034F8A8, &qword_10034F8A0, &unk_1002942F0);
  v19 = v24;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034F8B0, &qword_10034F898, &qword_1002942E8);
  v20 = v26;
  v21 = Publisher.eraseToAnyPublisher()();

  (*(v25 + 8))(v19, v20);
  v27[0] = v21;

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return sub_1002377E4(0x29287472617473, 0xE700000000000000, &selRef_resume);
}

uint64_t sub_100237FA4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  swift_unownedRetainStrong();
  type metadata accessor for ProxControlDemoBridgeServer();
  swift_allocObject();

  v5 = sub_10009D168(v4, v3);

  sub_1002384E0(&qword_10034F8B8, 255, type metadata accessor for ProxControlDemoBridgeServer);
  v6 = Identifiable<>.id.getter();
  v7 = *(a2 + 32);
  sub_10004A124(v5);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v10 = v5[6];
  v11 = v5[7];
  v5[6] = sub_100238528;
  v5[7] = v9;

  sub_10002689C(v10);
}

uint64_t sub_100238104(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 32);

    sub_10004B0C0(a2);
  }

  return result;
}

uint64_t sub_10023818C()
{
  v1 = v0;
  if (qword_100339280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034F780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + 24);
  sub_1002377E4(0x2928706F7473, 0xE600000000000000, &selRef_invalidate);
  swift_beginAccess();
  v8 = *(v1 + 40);
  *(v1 + 40) = &_swiftEmptySetSingleton;
}

uint64_t sub_10023831C(uint64_t a1, uint64_t a2)
{
  if (a1 == 7761509 && a2 == 0xE300000000000000)
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_100238370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1002383C4(uint64_t a1, uint64_t a2)
{
  result = sub_1002384E0(&qword_10034F890, a2, type metadata accessor for ProxControlDemoLinkServerManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10023841C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CE1A0(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_1002384E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100238530(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(sub_100035D04(&qword_100346DD0, &qword_100294310));
  v1[3] = sub_10013DF08(0xD00000000000002ELL, 0x80000001002A6950);
  KeyPath = swift_getKeyPath();
  v6 = sub_100035D04(&qword_10034F8E0, &unk_100294350);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_10006D5A4(KeyPath, 0);

  v2[4] = v9;
  v2[5] = &_swiftEmptySetSingleton;
  if (qword_100339280 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10034F780);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Init", v13, 2u);
  }

  v2[2] = a1;
  swift_unownedRetain();
  return v2;
}

uint64_t sub_1002386BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100238710()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034F8E8);
  sub_100003078(v0, qword_10034F8E8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100238790()
{
  type metadata accessor for SetupAssistantMonitor();
  v0 = swift_allocObject();
  result = sub_100238804();
  qword_10038B600 = v0;
  return result;
}

uint64_t sub_1002387CC()
{
  result = BYSetupAssistantFinishedDarwinNotification;
  if (BYSetupAssistantFinishedDarwinNotification)
  {
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    qword_10034F900 = result;
    *algn_10034F908 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_100238804()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100035D04(&qword_100339900, &unk_1002703D0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[2] = sub_10002AA3C(1, 0, 0, 0);
  *(v0 + 6) = -1;
  if (qword_100339298 != -1)
  {
    swift_once();
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v6 = qword_10038B5B8;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  aBlock[4] = sub_100239124;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002386BC;
  aBlock[3] = &unk_100316090;
  v9 = _Block_copy(aBlock);

  v10 = String.utf8CString.getter();
  swift_beginAccess();
  notify_register_dispatch((v10 + 32), v0 + 6, v6, v9);
  swift_endAccess();

  _Block_release(v9);
  v11 = BYSetupAssistantNeedsToRun();
  v12 = v1[2];

  sub_100005000(v11 ^ 1);

  if (qword_100339288 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10034F8E8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    v17 = v1[2];
    v18 = *(v17 + 24);

    CurrentValueSubject.value.getter();
    v19 = v22;
    if (v22 == 2)
    {
      v20 = *(v17 + 16);
      CurrentValueSubject.value.getter();

      v19 = aBlock[0];
    }

    else
    {
    }

    *(v16 + 4) = v19 & 1;

    _os_log_impl(&_mh_execute_header, v14, v15, "Init: isSetUp=%{BOOL}d", v16, 8u);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_100238B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_10023912C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_1003160E0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_100239134(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_100238E6C()
{
  if (qword_100339288 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034F8E8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    if (qword_100339298 != -1)
    {
      swift_once();
    }

    *(v3 + 4) = sub_100017494(qword_10034F900, *algn_10034F908, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "Setup completed! %s fired", v3, 0xCu);
    sub_10000903C(v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 16);

    sub_100005000(1);
  }

  return result;
}

uint64_t sub_10023901C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100239078(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1002390CC(uint64_t a1, uint64_t a2)
{
  result = sub_100239134(qword_10034F9F0, a2, type metadata accessor for SetupAssistantMonitor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10023912C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100238E6C();
}

uint64_t sub_100239134(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100239184()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 16);
  v3 = *v0 | (*(v0 + 2) << 16);
  return sub_100239320();
}

unint64_t sub_1002391B8()
{
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  AnyHashable.init<A>(_:)();
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for HandoffTargetStatus();
  sub_1002394A0();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (v0)
  {
    sub_1000516C4(inited + 32);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v5;
    *(inited + 80) = v7;
    v5 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_1000FC194(inited + 32);
  }

  return v5;
}

unint64_t sub_100239320()
{
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  AnyHashable.init<A>(_:)();
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10015DD44();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (v0)
  {
    sub_1000516C4(inited + 32);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v5;
    *(inited + 80) = v7;
    v5 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_1000FC194(inited + 32);
  }

  return v5;
}

unint64_t sub_1002394A0()
{
  result = qword_1003480F8;
  if (!qword_1003480F8)
  {
    type metadata accessor for HandoffTargetStatus();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003480F8);
  }

  return result;
}

BOOL sub_10023951C()
{
  v1 = *v0;
  sub_1000104F8();
  v3 = v2;
  sub_100008574();
  v5 = sub_1000089FC(v4, v3);

  v6 = *(v5 + 16);

  return v6 != 0;
}

uint64_t sub_100239584(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100239624(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = v17 - v6;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v8._countAndFlagsBits = 0x64616F6C7961703CLL;
  v8._object = 0xE90000000000003DLL;
  String.append(_:)(v8);
  (*(v4 + 16))(v7, v2 + *(*v2 + 88), v3);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 8))(v7, v3);
  v9._object = 0x80000001002A6B80;
  v9._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v9);
  v10 = *(v2 + *(*v2 + 96));

  v11 = Dictionary.description.getter();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return v17[0];
}

uint64_t sub_1002397F8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_100239884()
{
  sub_1002397F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100239918()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v13 = 0x6E6F69737365733CLL;
  v14 = 0xEB000000003D4449;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x7473656D6974202CLL;
  v9._object = 0xEC0000003D706D61;
  String.append(_:)(v9);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtCO17proximitycontrold33HandoffRemoteLeaderSessionRequest7Started_timestamp, v1);
  sub_10015CC9C();
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  (*(v2 + 8))(v5, v1);
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return v13;
}

uint64_t sub_100239AF8()
{
  result = type metadata accessor for Date();
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

uint64_t sub_100239BB8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100239C14()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0x6E6F69737365733CLL;
}

uint64_t sub_100239C9C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v6._countAndFlagsBits = 0x6E6F69737365733CLL;
  v6._object = 0xEB000000003D4449;
  String.append(_:)(v6);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x61745364656C202CLL;
  v10._object = 0xEB000000003D6574;
  String.append(_:)(v10);
  v15[15] = *(v0 + 32);
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 0x7473656D6974202CLL;
  v11._object = 0xEC0000003D706D61;
  String.append(_:)(v11);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtCO17proximitycontrold33HandoffRemoteLeaderSessionRequest6Update_timestamp, v1);
  sub_10015CC9C();
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  (*(v2 + 8))(v5, v1);
  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return v16;
}

uint64_t sub_100239EA0(uint64_t *a1)
{
  v3 = *(v1 + 3);

  v4 = *a1;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(&v1[v4], v5);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100239F6C()
{
  result = type metadata accessor for Date();
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

unint64_t sub_10023A034()
{
  v1 = v0;
  _StringGuts.grow(_:)(20);

  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_100159F0C(v2, v3, v4);
  v5 = sub_1001F7300(v2, v3, v4);
  v7 = v6;
  sub_10000F024(v2, v3, v4);
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0xD000000000000011;
}

uint64_t sub_10023A110()
{
  sub_10000F024(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t End.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for End();
  v7 = v6[15];
  swift_getFunctionTypeMetadata1();
  *(a3 + v7) = static Array._allocateUninitialized(_:)();
  v8 = v6[16];
  swift_getFunctionTypeMetadata1();
  *(a3 + v8) = static Array._allocateUninitialized(_:)();
  v9 = v6[17];
  type metadata accessor for Array();
  swift_getFunctionTypeMetadata1();
  *(a3 + v9) = static Array._allocateUninitialized(_:)();
  return (*(*(a2 - 8) + 32))(a3, a1, a2);
}

uint64_t End.actions.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*End.actions.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_10023A344(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    swift_getFunctionTypeMetadata1();
    result = type metadata accessor for Array();
    if (v6 <= 0x3F)
    {
      swift_getFunctionTypeMetadata1();
      result = type metadata accessor for Array();
      if (v7 <= 0x3F)
      {
        v8 = a1[4];
        type metadata accessor for Array();
        swift_getFunctionTypeMetadata1();
        result = type metadata accessor for Array();
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10023A460(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_10023A5AC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata accessor for RemoteFollowerMessage()
{
  result = qword_10034FF48;
  if (!qword_10034FF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10023A7F0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10023A874(void *a1, uint64_t a2, int a3)
{
  v33 = a3;
  v32 = a2;
  v4 = sub_100035D04(&qword_10034FFF8, &qword_1002947F0);
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v29 = &v26 - v6;
  v7 = sub_100035D04(&qword_100350000, &qword_1002947F8);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_100035D04(&qword_100350008, &qword_100294800);
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_100035D04(&qword_100350010, &qword_100294808);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  v20 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10023C16C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v33)
  {
    if (v33 == 1)
    {
      v41 = 2;
      sub_10023C1C0();
      v21 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = BYTE1(v32);
      v40 = v32;
      v39 = 0;
      sub_1001D0EC0();
      v23 = v31;
      v24 = v34;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v24)
      {
        v38 = v22;
        v37 = 1;
        sub_10023C364();
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      }

      (*(v30 + 8))(v21, v23);
      return (*(v16 + 8))(v19, v15);
    }

    else
    {
      v36 = 1;
      sub_10023C2BC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v27 + 8))(v10, v28);
      return (*(v16 + 8))(v19, v15);
    }
  }

  else
  {
    v35 = 0;
    sub_10023C310();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v26 + 8))(v14, v11);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_10023ACEC()
{
  v1 = 0x6465646E65;
  if (*v0 != 1)
  {
    v1 = 0x74757074756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657472617473;
  }
}

uint64_t sub_10023AD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10023B9D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10023AD68(uint64_t a1)
{
  v2 = sub_10023C16C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023ADA4(uint64_t a1)
{
  v2 = sub_10023C16C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023ADE0(uint64_t a1)
{
  v2 = sub_10023C2BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023AE1C(uint64_t a1)
{
  v2 = sub_10023C2BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10023AE58()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_10023AE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002A6BA0 == a2)
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

uint64_t sub_10023AF68(uint64_t a1)
{
  v2 = sub_10023C1C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023AFA4(uint64_t a1)
{
  v2 = sub_10023C1C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023AFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001002A3110 == a2)
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

uint64_t sub_10023B090(uint64_t a1)
{
  v2 = sub_10023C310();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023B0CC(uint64_t a1)
{
  v2 = sub_10023C310();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10023B108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10023BAE8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_10023B158(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034FF98, &qword_1002947C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10023B81C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for UUID();
  sub_100019194(&qword_1003437D8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for RemoteFollowerMessage() + 20));
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 8);
    v15 = v12;
    v16 = v11;
    v14[15] = 1;
    sub_10023B984();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10023B320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = type metadata accessor for UUID();
  v30 = *(v33 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin(v33);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100035D04(&qword_10034FF80, &qword_1002947B8);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for RemoteFollowerMessage();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10023B81C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v28 = v12;
  v17 = v15;
  v18 = v30;
  v37 = 0;
  sub_100019194(&qword_1003437F0);
  v19 = v33;
  v20 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v27 = v17;
  v21(v17, v6, v19);
  v36 = 1;
  sub_10023B870();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 8))(v11, v20);
  v22 = v35;
  v23 = v27;
  v24 = v27 + *(v28 + 20);
  *v24 = v34;
  *(v24 + 8) = v22;
  sub_10023B8C4(v23, v29);
  sub_10000903C(a1);
  return sub_10023B928(v23);
}

uint64_t sub_10023B678()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_10023B6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_10023B774(uint64_t a1)
{
  v2 = sub_10023B81C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023B7B0(uint64_t a1)
{
  v2 = sub_10023B81C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10023B81C()
{
  result = qword_10034FF88;
  if (!qword_10034FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FF88);
  }

  return result;
}

unint64_t sub_10023B870()
{
  result = qword_10034FF90;
  if (!qword_10034FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FF90);
  }

  return result;
}

uint64_t sub_10023B8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteFollowerMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023B928(uint64_t a1)
{
  v2 = type metadata accessor for RemoteFollowerMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10023B984()
{
  result = qword_10034FFA0;
  if (!qword_10034FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFA0);
  }

  return result;
}

uint64_t sub_10023B9D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657472617473 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_10023BAE8(uint64_t *a1)
{
  v2 = sub_100035D04(&qword_10034FFA8, &qword_1002947C8);
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v45 = &v39 - v5;
  v41 = sub_100035D04(&qword_10034FFB0, &qword_1002947D0);
  v44 = *(v41 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v41);
  v8 = &v39 - v7;
  v9 = sub_100035D04(&qword_10034FFB8, &qword_1002947D8);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_100035D04(&qword_10034FFC0, &unk_1002947E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v47 = a1;
  v20 = sub_10000EBC0(a1, v19);
  sub_10023C16C();
  v21 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v46 = 0;
    v22 = v44;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v51 = v23;
    v52 = v23 + 32;
    v53 = 0;
    v54 = v24;
    v25 = sub_100218008();
    if (v25 == 3 || v53 != v54 >> 1)
    {
      v27 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      v30 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v29 = &type metadata for RemoteFollowerMessage.MessageType;
      v20 = v17;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
      swift_willThrow();
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        v50 = 1;
        sub_10023C2BC();
        v20 = v17;
        v26 = v46;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v26)
        {
          (*(v22 + 8))(v8, v41);
          (*(v14 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v20 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v50 = 2;
        sub_10023C1C0();
        v20 = v17;
        v35 = v46;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v14;
        if (!v35)
        {
          v49 = 0;
          sub_10023C214();
          v37 = v42;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v38 = v50;
          v48 = 1;
          sub_10023C268();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v43 + 8))(0, v37);
          (*(v36 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v20 = v38 | (v49 << 8);
          goto LABEL_10;
        }
      }
    }

    else
    {
      v50 = 0;
      sub_10023C310();
      v20 = v17;
      v32 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v32)
      {
        KeyedDecodingContainer.decode(_:forKey:)();
        v34 = v33;
        (*(v40 + 8))(v12, v9);
        (*(v14 + 8))(v17, v13);
        swift_unknownObjectRelease();
        v20 = v34;
        goto LABEL_10;
      }
    }

    (*(v14 + 8))(v17, v13);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_10000903C(v47);
  return v20;
}

unint64_t sub_10023C16C()
{
  result = qword_10034FFC8;
  if (!qword_10034FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFC8);
  }

  return result;
}

unint64_t sub_10023C1C0()
{
  result = qword_10034FFD0;
  if (!qword_10034FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFD0);
  }

  return result;
}

unint64_t sub_10023C214()
{
  result = qword_10034FFD8;
  if (!qword_10034FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFD8);
  }

  return result;
}

unint64_t sub_10023C268()
{
  result = qword_10034FFE0;
  if (!qword_10034FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFE0);
  }

  return result;
}

unint64_t sub_10023C2BC()
{
  result = qword_10034FFE8;
  if (!qword_10034FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFE8);
  }

  return result;
}

unint64_t sub_10023C310()
{
  result = qword_10034FFF0;
  if (!qword_10034FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034FFF0);
  }

  return result;
}

unint64_t sub_10023C364()
{
  result = qword_100350018;
  if (!qword_100350018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350018);
  }

  return result;
}

unint64_t sub_10023C40C()
{
  result = qword_100350020;
  if (!qword_100350020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350020);
  }

  return result;
}

unint64_t sub_10023C464()
{
  result = qword_100350028;
  if (!qword_100350028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350028);
  }

  return result;
}

unint64_t sub_10023C4BC()
{
  result = qword_100350030;
  if (!qword_100350030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350030);
  }

  return result;
}

unint64_t sub_10023C514()
{
  result = qword_100350038;
  if (!qword_100350038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350038);
  }

  return result;
}

unint64_t sub_10023C56C()
{
  result = qword_100350040;
  if (!qword_100350040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350040);
  }

  return result;
}

unint64_t sub_10023C5C4()
{
  result = qword_100350048;
  if (!qword_100350048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350048);
  }

  return result;
}

unint64_t sub_10023C61C()
{
  result = qword_100350050;
  if (!qword_100350050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350050);
  }

  return result;
}

unint64_t sub_10023C674()
{
  result = qword_100350058;
  if (!qword_100350058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350058);
  }

  return result;
}

unint64_t sub_10023C6CC()
{
  result = qword_100350060;
  if (!qword_100350060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350060);
  }

  return result;
}

unint64_t sub_10023C724()
{
  result = qword_100350068;
  if (!qword_100350068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350068);
  }

  return result;
}

unint64_t sub_10023C77C()
{
  result = qword_100350070;
  if (!qword_100350070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350070);
  }

  return result;
}

unint64_t sub_10023C7D4()
{
  result = qword_100350078;
  if (!qword_100350078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350078);
  }

  return result;
}

unint64_t sub_10023C82C()
{
  result = qword_100350080;
  if (!qword_100350080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350080);
  }

  return result;
}

unint64_t sub_10023C884()
{
  result = qword_100350088;
  if (!qword_100350088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350088);
  }

  return result;
}

uint64_t sub_10023C8D8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350090);
  sub_100003078(v0, qword_100350090);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10023C95C(void *a1)
{
  v2 = sub_100035D04(&qword_1003502B8, &qword_100295030);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v34 = &v28 - v4;
  v5 = sub_100035D04(&qword_1003502C0, &qword_100295038);
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v31 = &v28 - v7;
  v8 = sub_100035D04(&qword_1003502C8, &qword_100295040);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = sub_100035D04(&qword_1003502D0, &qword_100295048);
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v16 = sub_100035D04(&qword_1003502D8, &qword_100295050);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  v21 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10023F5C8();
  v22 = v37;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = *(v22 + 2);
  switch(v23)
  {
    case 2:
      LOBYTE(v38) = 2;
      sub_10023F670();
      v24 = v31;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v32 + 8))(v24, v33);
      return (*(v17 + 8))(v20, v16);
    case 1:
      LOBYTE(v38) = 1;
      sub_10023F6C4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v29 + 8))(v11, v30);
      return (*(v17 + 8))(v20, v16);
    case 0:
      LOBYTE(v38) = 0;
      sub_10023F718();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v15, v12);
      return (*(v17 + 8))(v20, v16);
  }

  LOBYTE(v38) = 3;
  sub_10023F61C();
  v26 = v34;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v38 = *v22;
  v39 = v23;
  v40 = *(v22 + 24);
  v41 = *(v22 + 40);
  sub_10010B950();
  v27 = v36;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v35 + 8))(v26, v27);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_10023CE1C()
{
  v1 = 0x6574736575716572;
  v2 = 0x6564656563637573;
  if (*v0 != 2)
  {
    v2 = 0x64656C696166;
  }

  if (*v0)
  {
    v1 = 0x6572676F72506E69;
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

uint64_t sub_10023CE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10023ECC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10023CEC0(uint64_t a1)
{
  v2 = sub_10023F5C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023CEFC(uint64_t a1)
{
  v2 = sub_10023F5C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023CF38(uint64_t a1)
{
  v2 = sub_10023F61C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023CF74(uint64_t a1)
{
  v2 = sub_10023F61C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023CFB0(uint64_t a1)
{
  v2 = sub_10023F6C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023CFEC(uint64_t a1)
{
  v2 = sub_10023F6C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023D028(uint64_t a1)
{
  v2 = sub_10023F718();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023D064(uint64_t a1)
{
  v2 = sub_10023F718();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10023D0A0(uint64_t a1)
{
  v2 = sub_10023F670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023D0DC(uint64_t a1)
{
  v2 = sub_10023F670();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10023D118@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10023EE3C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10023D180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10023EB6C(v5, v7) & 1;
}

uint64_t sub_10023D1DC()
{
  v1 = sub_100035D04(&qword_1003502E0, &qword_100295058);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - v4;
  v6 = sub_100035D04(&qword_1003502E8, &unk_100295060);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher))
  {
    v13 = *(v0 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher);
  }

  else
  {
    v14 = *(v0 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state);
    v23 = v8;
    v24 = v9;

    v21 = v0;
    v22 = v1;
    v25 = sub_10005E71C();
    sub_100035D04(&qword_10033C268, &qword_10028EAD0);
    sub_10000E244(&qword_10033E580, &qword_10033C268, &qword_10028EAD0);
    v15 = Publisher.eraseToAnyPublisher()();
    v20 = v15;

    v25 = v15;
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&qword_10033E588, &unk_100274730);
    sub_100035D04(&qword_1003473E8, &unk_10027EE60);
    sub_10000E244(&qword_10033E590, &qword_10033E588, &unk_100274730);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_1003502F0, &qword_1003502E0, &qword_100295058);
    v16 = v22;
    Publisher.compactMap<A>(_:)();
    (*(v2 + 8))(v5, v16);
    sub_10000E244(&qword_1003502F8, &qword_1003502E8, &unk_100295060);
    v17 = v23;
    v13 = Publisher.eraseToAnyPublisher()();
    (*(v24 + 8))(v11, v17);
    v18 = *(v21 + v12);
    *(v21 + v12) = v13;
  }

  return v13;
}

void sub_10023D5AC(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v8 = 0;
    v5 = 2;
    goto LABEL_9;
  }

  v3 = Strong + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type;
  if (*(Strong + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32) != 1)
  {

LABEL_8:
    v8 = 0;
    v5 = 1;
    goto LABEL_9;
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = Strong;

  v7 = v5;

  if (*(*(v6 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state) + 40) >= 2uLL)
  {

    goto LABEL_8;
  }

  v8 = *(v6 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction);

LABEL_9:
  *a1 = v5;
  a1[1] = v8;
}

id sub_10023D698@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v2;
  return sub_100094B7C(v3);
}

uint64_t sub_10023D6A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
  v5 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 16);
  v28 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
  v29 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 48);
  v30 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 32);
  v31 = v6;
  v7 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v8 = v31;
    v10 = *(&v30 + 1);
    v9 = v30;
    v11 = *(&v29 + 1);
    v12 = v29;
    v13 = v28;
    v14 = *(&v31 + 1);
  }

  else
  {
    v13 = UUID.uuidString.getter();
    v7 = v15;
    v9 = *(v2 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_device);
    *&v23 = v13;
    *(&v23 + 1) = v15;
    v11 = 0x80000001002A6C20;
    v12 = 0xD000000000000017;
    *&v24 = 0xD000000000000017;
    *(&v24 + 1) = 0x80000001002A6C20;
    v10 = 0x3FF0000000000000;
    *&v25 = v9;
    *(&v25 + 1) = 0x3FF0000000000000;
    v14 = _swiftEmptyArrayStorage;
    LOBYTE(v26) = 0;
    *(&v26 + 1) = _swiftEmptyArrayStorage;
    v16 = v4[1];
    v27[0] = *v4;
    v27[1] = v16;
    v17 = v4[3];
    v27[2] = v4[2];
    v27[3] = v17;
    v18 = v23;
    v19 = v24;
    v20 = v26;
    v4[2] = v25;
    v4[3] = v20;
    *v4 = v18;
    v4[1] = v19;

    sub_100094CD8(&v23, &v22);
    sub_1000097E8(v27, &qword_10033E428, &qword_100274640);
    v8 = 0;
  }

  LOBYTE(v23) = v8 & 1;
  result = sub_10023F7BC(&v28, v27);
  *a1 = v13;
  *(a1 + 8) = v7;
  *(a1 + 16) = v12;
  *(a1 + 24) = v11;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v23;
  *(a1 + 56) = v14;
  return result;
}

void sub_10023D808(uint64_t *a1)
{
  v2 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v3 = *(v2 - 8);
  v66 = v2;
  v67 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v63 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  v71 = *a1;
  v72 = v20;
  v22 = a1[4];
  v21 = a1[5];
  v68 = v18;
  v69 = v21;
  v23 = a1[6];
  v70 = v19;
  if (v19 >= 3)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v38 = v22;
    if (Strong)
    {
      *&v77 = 0;
      *(&v77 + 1) = 0xE000000000000000;
      v39 = Strong;
      v40._countAndFlagsBits = 0x20B4949FF0;
      v40._object = 0xA500000000000000;
      String.append(_:)(v40);
      *&v85 = v71;
      *(&v85 + 1) = v68;
      *&v86 = v70;
      *(&v86 + 1) = v72;
      *&v87 = v22;
      *(&v87 + 1) = v69;
      v65 = v23;
      v88 = v23;
      _print_unlocked<A, B>(_:_:)();
      v41 = *(&v77 + 1);
      v63 = v77;
      v64 = v39;
      sub_10023D6A8(&v85);
      v81 = v85;
      v82 = v86;
      v83 = v87;
      v42 = v89;
      v84 = v88;
      static Date.now.getter();
      v43 = &v7[*(v66 + 48)];
      (*(v11 + 32))(v7, v15, v10);
      *v43 = v63;
      *(v43 + 1) = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1000AFF4C(0, v42[2] + 1, 1, v42);
      }

      v45 = v42[2];
      v44 = v42[3];
      v23 = v65;
      v38 = v22;
      if (v45 >= v44 >> 1)
      {
        v42 = sub_1000AFF4C(v44 > 1, v45 + 1, 1, v42);
      }

      v42[2] = v45 + 1;
      sub_100098288(v7, v42 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v45);
      v46 = v64 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report;
      v47 = *(v64 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 48);
      v48 = *(v64 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
      v49 = *(v64 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 16);
      v79 = *(v64 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 32);
      v80 = v47;
      v77 = v48;
      v78 = v49;
      v50 = v83;
      *(v46 + 16) = v82;
      *(v46 + 32) = v50;
      *v46 = v81;
      *(v46 + 48) = v84;
      *(v46 + 56) = v42;
      sub_1000097E8(&v77, &qword_10033E428, &qword_100274640);
    }

    if (qword_1003392A0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100003078(v51, qword_100350090);

    v52 = v70;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v55 = v68;
    v56 = v69;
    sub_1001CED4C(v71, v68, v52);
    if (os_log_type_enabled(v53, v54))
    {
      v57 = swift_slowAlloc();
      v58 = v23;
      v59 = swift_slowAlloc();
      *v57 = 138412290;
      sub_1000982F8();
      swift_allocError();
      *v60 = v71;
      v60[1] = v55;
      v61 = v72;
      v60[2] = v52;
      v60[3] = v61;
      v60[4] = v38;
      v60[5] = v56;
      v60[6] = v58;

      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v62;
      *v59 = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, "### Transfer failed: %@", v57, 0xCu);
      sub_1000097E8(v59, &qword_100339940, &unk_100272C50);
    }
  }

  else
  {
    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    if (v24)
    {
      v25 = v24;
      *&v77 = 0;
      *(&v77 + 1) = 0xE000000000000000;
      v26._countAndFlagsBits = 0x20A39F9FF0;
      v26._object = 0xA500000000000000;
      String.append(_:)(v26);
      *&v85 = v71;
      *(&v85 + 1) = v68;
      *&v86 = v70;
      *(&v86 + 1) = v72;
      *&v87 = v22;
      *(&v87 + 1) = v69;
      v88 = v23;
      _print_unlocked<A, B>(_:_:)();
      v27 = v77;
      sub_10023D6A8(&v85);
      v73 = v85;
      v74 = v86;
      v75 = v87;
      v28 = v89;
      v76 = v88;
      static Date.now.getter();
      v29 = &v9[*(v66 + 48)];
      (*(v11 + 32))(v9, v17, v10);
      *v29 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1000AFF4C(0, v28[2] + 1, 1, v28);
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1000AFF4C(v30 > 1, v31 + 1, 1, v28);
      }

      v28[2] = v31 + 1;
      sub_100098288(v9, v28 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v31);
      v32 = v25 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report;
      v33 = *(v25 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 48);
      v34 = *(v25 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report);
      v35 = *(v25 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 16);
      v79 = *(v25 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 32);
      v80 = v33;
      v77 = v34;
      v78 = v35;
      v36 = v75;
      *(v32 + 16) = v74;
      *(v32 + 32) = v36;
      *v32 = v73;
      *(v32 + 48) = v76;
      *(v32 + 56) = v28;
      sub_1000097E8(&v77, &qword_10033E428, &qword_100274640);
    }
  }
}

uint64_t sub_10023DEEC()
{
  v1 = v0;
  if (qword_1003392A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350090);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_activity);
  swift_unknownObjectRelease();
  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_device);

  v10 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_sessionID + 8);

  sub_10023F834(*(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 8), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 16), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 24), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32));
  v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state);

  v12 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___mediaTransferStatusPublisher);

  v13 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 16);
  v14 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 24);
  v15 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 32);
  v16 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 40);
  v17 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 48);
  v18 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 56);
  sub_1000983C8(*(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report), *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer____lazy_storage___report + 8));
  v19 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_tasks);

  return v1;
}

uint64_t sub_10023E0AC()
{
  sub_10023DEEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffTransfer()
{
  result = qword_1003500E8;
  if (!qword_1003500E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10023E158()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10023E254()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v12[1] = qword_10038B5B8;
  aBlock[4] = sub_10023F76C;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_1003166C8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10023F774(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_10023E53C()
{
  sub_10023D6A8(v10);
  if (qword_100339270 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10038B5E0);
  sub_100094CD8(v10, v9);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  sub_100098354(v10);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    *v3 = 136315138;
    v5 = sub_10022B95C();
    v7 = sub_100017494(v5, v6, v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  return sub_100098354(v10);
}

uint64_t sub_10023E6A4()
{
  v1 = v0;
  _StringGuts.grow(_:)(23);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  UUID.uuidString.getter();
  sub_10000B584(8);

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x3D65636976656420;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8 = *(v0 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_device);
  v9._countAndFlagsBits = sub_1000092A0();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x3D657461747320;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state);
  v14 = *(v11 + 24);
  v15 = *(v11 + 40);
  v16 = *(v11 + 56);
  v17 = *(v11 + 72);
  _print_unlocked<A, B>(_:_:)();
  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0;
}

uint64_t sub_10023E84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10023E894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10023E8F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10023E910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 56))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10023E96C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10023E9FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10023EA78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_10023EB14(uint64_t a1)
{
  result = sub_10023F774(&qword_100350260, type metadata accessor for HandoffTransfer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10023EB6C(void *a1, void *a2)
{
  v3 = a1[2];
  switch(v3)
  {
    case 2:
      return a2[2] == 2;
    case 1:
      return a2[2] == 1;
    case 0:
      return !a2[2];
  }

  v5 = a2[2];
  if (v5 < 3)
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    v6 = a1[3];
    v7 = a1[4];
    v9 = a1[5];
    v8 = a1[6];
    v10 = a2[3];
    v11 = a2[4];
    v13 = a2[5];
    v12 = a2[6];
    if (a1[1] == a2[1] && v3 == v5)
    {
      goto LABEL_18;
    }

    v14 = a1[1];
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_18:
      if (v6 == v10 && v7 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v8)
        {
          if (v12 && (v9 == v13 && v8 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v12)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10023ECC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564656563637573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10023EE3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v3 = sub_100035D04(&qword_100350268, &qword_100295000);
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v61 = &v50 - v6;
  v56 = sub_100035D04(&qword_100350270, &qword_100295008);
  v60 = *(v56 - 8);
  v7 = *(v60 + 64);
  __chkstk_darwin(v56);
  v59 = &v50 - v8;
  v9 = sub_100035D04(&qword_100350278, &qword_100295010);
  v10 = *(v9 - 8);
  v54 = v9;
  v55 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = sub_100035D04(&qword_100350280, &qword_100295018);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v18 = sub_100035D04(&qword_100350288, &unk_100295020);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v75 = a1;
  sub_10000EBC0(a1, v24);
  sub_10023F5C8();
  v25 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v26 = v25;
  if (v25)
  {
    return sub_10000903C(v75);
  }

  v52 = v17;
  v51 = v14;
  v27 = v13;
  v28 = v59;
  v29 = v60;
  v63 = v19;
  v30 = v61;
  v31 = v62;
  v32 = KeyedDecodingContainer.allKeys.getter();
  v33 = (2 * *(v32 + 16)) | 1;
  v71 = v32;
  v72 = v32 + 32;
  v73 = 0;
  v74 = v33;
  v34 = sub_100218018();
  if (v34 == 4 || v73 != v74 >> 1)
  {
    v42 = v18;
    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    v46 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v45 = &type metadata for TransferState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v45, enum case for DecodingError.typeMismatch(_:), v43);
    swift_willThrow();
    (*(v63 + 8))(v22, v42);
    swift_unknownObjectRelease();
    return sub_10000903C(v75);
  }

  if (v34 > 1u)
  {
    v48 = v63;
    if (v34 == 2)
    {
      LOBYTE(v64) = 2;
      sub_10023F670();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v50 = 0;
      (*(v29 + 8))(v28, v56);
      (*(v48 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v38 = 2;
    }

    else
    {
      LOBYTE(v64) = 3;
      sub_10023F61C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10010B758();
      v49 = v57;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v50 = 0;
      (*(v58 + 8))(v30, v49);
      (*(v48 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v36 = v64;
      v37 = v65;
      v38 = v66;
      v39 = v67;
      v40 = v68;
      v41 = v69;
      v26 = v70;
    }
  }

  else if (v34)
  {
    LOBYTE(v64) = 1;
    sub_10023F6C4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v50 = 0;
    (*(v55 + 8))(v27, v54);
    (*(v63 + 8))(v22, v18);
    swift_unknownObjectRelease();
    v36 = 0;
    v37 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v38 = 1;
  }

  else
  {
    LOBYTE(v64) = 0;
    sub_10023F718();
    v35 = v52;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v50 = 0;
    (*(v53 + 8))(v35, v51);
    (*(v63 + 8))(v22, v18);
    swift_unknownObjectRelease();
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  result = sub_10000903C(v75);
  *v31 = v36;
  v31[1] = v37;
  v31[2] = v38;
  v31[3] = v39;
  v31[4] = v40;
  v31[5] = v41;
  v31[6] = v26;
  return result;
}

unint64_t sub_10023F5C8()
{
  result = qword_100350290;
  if (!qword_100350290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350290);
  }

  return result;
}

unint64_t sub_10023F61C()
{
  result = qword_100350298;
  if (!qword_100350298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350298);
  }

  return result;
}

unint64_t sub_10023F670()
{
  result = qword_1003502A0;
  if (!qword_1003502A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003502A0);
  }

  return result;
}

unint64_t sub_10023F6C4()
{
  result = qword_1003502A8;
  if (!qword_1003502A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003502A8);
  }

  return result;
}

unint64_t sub_10023F718()
{
  result = qword_1003502B0;
  if (!qword_1003502B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003502B0);
  }

  return result;
}

uint64_t sub_10023F774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10023F7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E428, &qword_100274640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10023F834(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{

  if (a5)
  {
  }
}

unint64_t sub_10023F8EC()
{
  result = qword_100350300;
  if (!qword_100350300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350300);
  }

  return result;
}

unint64_t sub_10023F944()
{
  result = qword_100350308;
  if (!qword_100350308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350308);
  }

  return result;
}

unint64_t sub_10023F99C()
{
  result = qword_100350310;
  if (!qword_100350310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350310);
  }

  return result;
}

unint64_t sub_10023F9F4()
{
  result = qword_100350318;
  if (!qword_100350318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350318);
  }

  return result;
}

unint64_t sub_10023FA4C()
{
  result = qword_100350320;
  if (!qword_100350320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350320);
  }

  return result;
}

unint64_t sub_10023FAA4()
{
  result = qword_100350328;
  if (!qword_100350328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350328);
  }

  return result;
}

unint64_t sub_10023FAFC()
{
  result = qword_100350330;
  if (!qword_100350330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350330);
  }

  return result;
}

unint64_t sub_10023FB54()
{
  result = qword_100350338;
  if (!qword_100350338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350338);
  }

  return result;
}

unint64_t sub_10023FBAC()
{
  result = qword_100350340;
  if (!qword_100350340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350340);
  }

  return result;
}

unint64_t sub_10023FC04()
{
  result = qword_100350348;
  if (!qword_100350348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350348);
  }

  return result;
}

unint64_t sub_10023FC5C()
{
  result = qword_100350350;
  if (!qword_100350350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350350);
  }

  return result;
}

unint64_t sub_10023FCB4()
{
  result = qword_100350358;
  if (!qword_100350358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350358);
  }

  return result;
}

unint64_t sub_10023FD08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

uint64_t sub_10023FD28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 16))
  {
    return (*a1 + 122);
  }

  v3 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10023FD84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    *(result + 8) = 0;
    if (a3 >= 0x7A)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10023FDE4(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 6);
    result[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_100240220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000E5EE8(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000097E8(v12, &qword_10033E800, &qword_100278E80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000097E8(a3, &qword_10033E800, &qword_100278E80);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000097E8(a3, &qword_10033E800, &qword_100278E80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10024051C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350360);
  sub_100003078(v0, qword_100350360);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10024059C()
{
  v1 = v0;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350360);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  sub_1000268AC(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delegate);

  v8 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask);

  return v1;
}

uint64_t sub_1002406EC()
{
  sub_10024059C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCConnectionManager()
{
  result = qword_1003503C0;
  if (!qword_1003503C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100240798()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100240874()
{
  v32 = v0;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350360);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    v8 = *(v5 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 16);
    *(v0 + 16) = *(v5 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy);
    *(v0 + 32) = v8;
    v9 = String.init<A>(describing:)();
    v11 = sub_100017494(v9, v10, &v31);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "### Interrupted, retry policy is %s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v12 = *(v0 + 40);
  v13 = *(v12 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy);
  if (*(v12 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 16) > 1u)
  {
    v15 = *(v12 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 8);
    if (*(v12 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 16) != 2)
    {
      if (*&v13 | v15)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    v16 = *(v12 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries);
    if ((v16 & 0x8000000000000000) == 0 && v16 >= v15)
    {
      goto LABEL_13;
    }
  }

  else if (!*(v12 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy + 16))
  {
    v14 = *(v12 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries);
    if ((v14 & 0x8000000000000000) != 0 || v14 < *&v13)
    {
LABEL_19:
      v25 = *(v0 + 40);
      sub_100240BFC();
      goto LABEL_22;
    }

LABEL_13:
    v17 = 2;
    goto LABEL_16;
  }

  v18 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask;
  if (!*(v12 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask))
  {
    v26 = *(v0 + 40);
    v27 = sub_100240D68(v13);
    v28 = *(v12 + v18);
    *(v12 + v18) = v27;

    goto LABEL_22;
  }

  v17 = 1;
LABEL_16:
  sub_1002423B0();
  swift_allocError();
  *v19 = v17;
  swift_willThrow();
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "### Error handling interruption: %@", v22, 0xCu);
    sub_1000097E8(v23, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

LABEL_22:
  v29 = *(v0 + 8);

  return v29();
}

void sub_100240BFC()
{
  v1 = v0;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350360);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(v5 + 4) = v8;
    v9 = v5;

    _os_log_impl(&_mh_execute_header, v3, v4, "Retrying (new count: %ld)", v9, 0xCu);
  }

  else
  {
  }

  v10 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask) = 0;

  sub_100241D2C();
  v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries);
  v7 = __OFADD__(v11, 1);
  v12 = v11 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries) = v12;

  sub_100241254();
}

uint64_t sub_100240D68(double a1)
{
  v2 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100350360);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Scheduling retry after %f seconds", v9, 0xCu);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = v11;
  return sub_1000DBA98(0, 0, v5, &unk_100295730, v12);
}

uint64_t sub_100240F60(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  return (_swift_task_switch)(sub_100240F84, 0, 0);
}

uint64_t sub_100240F84(unint64_t a1)
{
  v3 = *(v1 + 40) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v1 + 56) = v6;
  *v6 = v1;
  v6[1] = sub_10024106C;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10024106C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1002411A0, 0, 0);
}

uint64_t sub_1002411A0()
{
  v1 = v0[8];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[1];
  }

  else
  {
    v3 = v0[6];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100240BFC();
    }

    v2 = v0[1];
  }

  return v2();
}

uint64_t sub_100241254()
{
  v1 = v0;
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350360);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0x4E66497472617473, 0xEF29286465646565, &aBlock);
    *(v5 + 12) = 2080;
    v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx);
    sub_100035D04(&qword_1003504F8, &unk_1002956F0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100017494(v7, v8, &aBlock);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.internalCnx=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx;
  v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Connection already exists", v15, 2u);
    }

    v16 = 0;
LABEL_22:

    return v16;
  }

  if (v14)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting", v17, 2u);
  }

  v18 = v1 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(ObjectType, v19);
    v22 = [v21 interruptionHandler];
    if (v22)
    {
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = sub_100242470;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v26 = swift_allocObject();
    v26[2] = v1;
    v26[3] = v25;
    v26[4] = v24;
    v43 = sub_100241F0C;
    v44 = v26;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100018AB8;
    v42 = &unk_1003169E0;
    v27 = _Block_copy(&aBlock);

    v38 = v25;
    sub_10009D4E0(v25);

    [v21 setInterruptionHandler:v27];
    _Block_release(v27);
    v28 = [v21 invalidationHandler];
    if (v28)
    {
      v29 = v28;
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v31 = sub_100241F20;
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    v43 = sub_100241F18;
    v44 = v32;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100018AB8;
    v42 = &unk_100316A30;
    v33 = _Block_copy(&aBlock);
    sub_10009D4E0(v31);

    [v21 setInvalidationHandler:v33];
    _Block_release(v33);
    [v21 activate];
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Connection created", v36, 2u);
    }

    sub_10002689C(v38);
    sub_10002689C(v31);
    swift_unknownObjectRelease();

    v12 = *(v1 + v10);
    *(v1 + v10) = v21;
    v16 = 1;
    goto LABEL_22;
  }

  return 2;
}

uint64_t sub_10024181C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  sub_100240220(0, 0, v6, &unk_100295708, v9);

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_10024197C()
{
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_100350360);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection interrupted", v4, 2u);
  }

  v5 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_100241B24;

    return sub_100240854();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100241B24()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_100241C34(void (*a1)(void))
{
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350360);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection invalidated", v5, 2u);
  }

  if (a1)
  {
    a1();
  }
}

void sub_100241D2C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx;
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx);
  if (v2)
  {
    v3 = v0;
    v4 = qword_1003392A8;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100350360);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Stopping", v9, 2u);
    }

    [v5 invalidate];
    v10 = *(v3 + v1);
    *(v3 + v1) = 0;
  }
}

uint64_t sub_100241E68(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_100241E90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100241F30(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100242028;

  return v7(a1);
}

uint64_t sub_100242028()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100242120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009D6D4;

  return sub_10024195C(a1, v4, v5, v6);
}

uint64_t sub_1002421D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000E6584;

  return sub_100241F30(a1, v5);
}

uint64_t sub_10024228C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009D6D4;

  return sub_100240F60(v6, a1, v4, v5, v7);
}

void sub_100242378(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_1002423B0()
{
  result = qword_100350500;
  if (!qword_100350500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350500);
  }

  return result;
}

unint64_t sub_100242418()
{
  result = qword_100350508;
  if (!qword_100350508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350508);
  }

  return result;
}

unint64_t sub_100242488(uint64_t a1)
{
  result = sub_1002424B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002424B0()
{
  result = qword_100350510;
  if (!qword_100350510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350510);
  }

  return result;
}

unint64_t sub_100242514()
{
  v1 = 0x49746E6573657270;
  v2 = 0xD00000000000001DLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

unint64_t sub_1002425AC()
{
  result = qword_100350518;
  if (!qword_100350518)
  {
    sub_100035D4C(&qword_100350520, qword_100295880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350518);
  }

  return result;
}

unint64_t sub_100242628(uint64_t a1)
{
  result = sub_100242650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100242650()
{
  result = qword_100350528;
  if (!qword_100350528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350528);
  }

  return result;
}

Swift::Int sub_1002426C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100295B30[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100242750()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100295B30[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10024279C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100242944(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002427F0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100242888()
{
  result = qword_1003506C0;
  if (!qword_1003506C0)
  {
    sub_100035D4C(&qword_1003506C8, qword_100295A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003506C0);
  }

  return result;
}

unint64_t sub_1002428F0()
{
  result = qword_1003506D0;
  if (!qword_1003506D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003506D0);
  }

  return result;
}

uint64_t sub_100242944(uint64_t a1)
{
  if (a1 <= 299)
  {
    if (a1 <= 199)
    {
      if (a1 == -1)
      {
        return 0;
      }

      if (a1 == 100)
      {
        return 1;
      }
    }

    else
    {
      switch(a1)
      {
        case 200:
          return 2;
        case 250:
          return 3;
        case 251:
          return 4;
      }
    }
  }

  else if (a1 > 400)
  {
    switch(a1)
    {
      case 401:
        return 8;
      case 450:
        return 9;
      case 1000:
        return 10;
    }
  }

  else
  {
    switch(a1)
    {
      case 300:
        return 5;
      case 350:
        return 6;
      case 400:
        return 7;
    }
  }

  return 11;
}

uint64_t sub_100242A14()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003506D8);
  sub_100003078(v0, qword_1003506D8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100242A94()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    sub_100035D04(&qword_1003507C0, &qword_100295BF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10026F050;
    *(inited + 32) = 3;
    v3 = *(v0 + 16);
    *(inited + 64) = type metadata accessor for TelephonyProxyState();
    *(inited + 72) = &off_1003105B8;
    *(inited + 40) = v3;
    v1 = sub_10024D960(inited);
    swift_setDeallocating();

    sub_100242E9C(inited + 32);
    v4 = *(v0 + 32);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_100242B74(uint64_t a1, char a2)
{
  v4 = sub_100242A94();
  if (*(v4 + 16) && (v5 = sub_10008522C(a1), (v6 & 1) != 0))
  {
    sub_10007E790(*(v4 + 56) + 40 * v5, v25);

    sub_10000E754(v25, v26);
    v7 = v27;
    v8 = v28;
    sub_10000EBC0(v26, v27);
    v9 = (*(v8 + 8))(a1, a2 & 1, v7, v8);
    sub_10000903C(v26);
    return v9;
  }

  else
  {

    if (qword_1003392B0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_1003506D8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[0] = v15;
      v16 = 0xEC0000006D72616CLL;
      *v14 = 136315138;
      v17 = 0x41746E6572727563;
      v18 = 0xEC00000061696465;
      v19 = 0x4D746E6572727563;
      v20 = 0xEB000000006C6C61;
      v21 = 0x43746E6572727563;
      if (a1 != 3)
      {
        v21 = 0x54746E6572727563;
        v20 = 0xEC00000072656D69;
      }

      if (a1 != 2)
      {
        v19 = v21;
        v18 = v20;
      }

      if (a1)
      {
        v17 = 0xD000000000000013;
        v16 = 0x80000001002A35A0;
      }

      if (a1 <= 1u)
      {
        v22 = v17;
      }

      else
      {
        v22 = v19;
      }

      if (a1 <= 1u)
      {
        v23 = v16;
      }

      else
      {
        v23 = v18;
      }

      v24 = sub_100017494(v22, v23, v26);

      *(v14 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Stream for %s not supported by activity server", v14, 0xCu);
      sub_10000903C(v15);
    }

    return 0;
  }
}

uint64_t sub_100242E0C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_100242E9C(uint64_t a1)
{
  v2 = sub_100035D04(&qword_1003507C8, qword_100295C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExperienceState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 49156 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49156 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49156;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49156;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49156;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 13) | (8 * ((*a1 >> 2) & 0x780 | (*a1 >> 1)))) ^ 0x3FFF;
  if (v6 >= 0x3FFB)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for ExperienceState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49156 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49156 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 2 >= 0xFFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 2 > 0xFFE)
  {
    v6 = ((a2 - 16380) >> 16) + 1;
    *result = a2 - 16380;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100243094(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 13;
  v4 = v1 & 1 | (2 * ((v1 >> 8) & 1)) | 4;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_1002430CC(_WORD *result, unsigned int a2)
{
  if (a2 < 4)
  {
    *result = *result & 0x101 | (a2 << 13);
  }

  else
  {
    *result = (a2 << 7) & 0x100 | a2 & 1 | 0x8000;
  }

  return result;
}

uint64_t sub_100243130()
{
  result = type metadata accessor for NoticeEffect();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100243208()
{
  result = type metadata accessor for TransferEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002433A0()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v66 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v66 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v66 - v14;
  v16 = __chkstk_darwin(v13);
  v67 = (&v66 - v17);
  v18 = __chkstk_darwin(v16);
  v20 = &v66 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v66 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = (&v66 - v25);
  v27 = __chkstk_darwin(v24);
  v29 = &v66 - v28;
  __chkstk_darwin(v27);
  v30 = v1;
  v32 = &v66 - v31;
  sub_1002460F4(v30, &v66 - v31, type metadata accessor for ExperienceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1002460F4(v32, v23, type metadata accessor for ExperienceEvent);
        LOBYTE(v36) = ((*v23 - 5) & 0xFB) != 0;
        goto LABEL_77;
      }

      sub_1002460F4(v32, v12, type metadata accessor for ExperienceEvent);
      if (*v12 >= 2u)
      {
        goto LABEL_76;
      }

      goto LABEL_70;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_76;
      }

      sub_1002460F4(v32, v26, type metadata accessor for ExperienceEvent);
      v37 = v26[1];
      v68[0] = *v26;
      v68[1] = v37;
      *v69 = v26[2];
      *&v69[9] = *(v26 + 41);
      v38 = v69[24] >> 5;
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          if (LOBYTE(v68[0]) != 2)
          {
            goto LABEL_76;
          }

          goto LABEL_70;
        }

        if (v38 == 4 && v69[24] == 128 && *&v68[0] == 1 && !(v37 | *(&v68[0] + 1) | *(&v37 + 1) | *v69 | *&v69[8] | *&v69[16]))
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v38 == 1)
        {
          goto LABEL_64;
        }

        if (v38 != 2)
        {
          goto LABEL_44;
        }

        if ((v69[24] & 0x1F) == 0)
        {
LABEL_64:
          sub_100231D28(v68);
          LOBYTE(v36) = 1;
          goto LABEL_77;
        }

        if ((v69[24] & 0x1F) == 2)
        {
          v39 = v37 | *(&v68[0] + 1) | *(&v37 + 1) | *v69 | *&v69[8] | *&v69[16];
          if (*&v68[0] == 3 && !v39)
          {
            goto LABEL_70;
          }

          if (*&v68[0] == 5 && !v39)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_44:
      sub_100231D28(v68);
      goto LABEL_76;
    }

    sub_1002460F4(v32, v29, type metadata accessor for ExperienceEvent);
    v48 = *v29;
    v49 = *(v29 + 1);
    v50 = v29[16];
    if ((v50 & 0x80) != 0)
    {
      v60 = v50 & 0x7F;
      if ((v50 & 0x7F) != 0 && v60 != 1)
      {
        v51 = v60 == 4;
        goto LABEL_55;
      }
    }

    else if (v29[16])
    {
      if (v50 == 1)
      {
        LOBYTE(v36) = 1;
        sub_1000D65DC(v48, v49, 1);
        goto LABEL_77;
      }

      v51 = v50 == 4;
LABEL_55:
      if (!v51 || v48 != 2 || v49 != 0)
      {
        sub_1000D65DC(v48, v49, v50);
        goto LABEL_76;
      }

      goto LABEL_70;
    }

    sub_1000D65DC(v48, v49, v50);
    LOBYTE(v36) = 1;
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_1002460F4(v32, v15, type metadata accessor for ExperienceEvent);
      v40 = *v15;
      v41 = *(v15 + 1);
      v42 = *(v15 + 2);
      v43 = *(v15 + 3);
      v44 = *(v15 + 4);
      v45 = *(v15 + 5);
      v46 = *(v15 + 6);
      v47 = v15[56];
      if (v47 == 1)
      {
        LOBYTE(v36) = 1;
        sub_1000D67AC(v40, v41, v42, v43, v44, v45, v46, 1);
        goto LABEL_77;
      }

      sub_1000D67AC(v40, v41, v42, v43, v44, v45, v46, v47);
      goto LABEL_76;
    }

    sub_1002460F4(v32, v20, type metadata accessor for ExperienceEvent);
    v52 = *v20;
    v53 = *(v20 + 1);
    v54 = *(v20 + 2);
    v55 = *(v20 + 3);
    v56 = *(v20 + 4);
    v57 = *(v20 + 5);
    v58 = *(v20 + 6);
    if (v20[56] <= 1u)
    {
      if (v20[56])
      {
        LOBYTE(v36) = 1;
        sub_1000D6710(v52, v53, v54, v55, v56, v57, v58, 1);
        goto LABEL_77;
      }

      sub_1000D6710(v52, v53, v54, v55, v56, v57, v58, 0);
      goto LABEL_76;
    }

    if (v20[56] == 2)
    {
      sub_1000D6710(v52, v53, v54, v55, v56, v57, v58, 2);
      LOBYTE(v36) = 1;
      goto LABEL_77;
    }

LABEL_70:
    LOBYTE(v36) = 1;
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_1002460F4(v32, v9, type metadata accessor for ExperienceEvent);
    LOBYTE(v36) = *v9 < 2u;
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload == 7)
  {
    sub_1002460F4(v32, v6, type metadata accessor for ExperienceEvent);
    v59 = v6[8];
    if (v59 < 7)
    {
      v36 = 0x4Eu >> v59;
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_76;
  }

  v34 = v67;
  sub_1002460F4(v32, v67, type metadata accessor for ExperienceEvent);
  type metadata accessor for TransferEvent();
  v35 = swift_getEnumCaseMultiPayload();
  LOBYTE(v36) = 1;
  if (v35 <= 5)
  {
    if (v35 > 2)
    {
      goto LABEL_68;
    }

    if (v35)
    {
      if (v35 == 1)
      {
LABEL_68:
        sub_100245F58(v34, type metadata accessor for TransferEvent);
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    goto LABEL_77;
  }

  if ((v35 - 7) < 2)
  {
    goto LABEL_77;
  }

  if (v35 == 6)
  {
    v63 = *v34;
    v64 = *v34 >> 62;
    if (!v64)
    {
      sub_1000D680C(v63);
      goto LABEL_77;
    }

    if (v64 != 1)
    {
      goto LABEL_77;
    }

    sub_1000D680C(v63);
LABEL_76:
    LOBYTE(v36) = 0;
    goto LABEL_77;
  }

  if (v35 != 10)
  {
LABEL_75:
    sub_100245F58(v34, type metadata accessor for TransferEvent);
    goto LABEL_76;
  }

LABEL_77:
  sub_100245F58(v32, type metadata accessor for ExperienceEvent);
  return v36 & 1;
}

uint64_t sub_100243A20()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEffect(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - v14;
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  sub_1002460F4(v1, &v31 - v16, type metadata accessor for ExperienceEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = 1;
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        goto LABEL_29;
      case 8:
        sub_1002460F4(v17, v6, type metadata accessor for ExperienceEffect);
        if (*v6 < 2u)
        {
          goto LABEL_29;
        }

        break;
      case 9:
        sub_1002460F4(v17, v15, type metadata accessor for ExperienceEffect);
        v20 = *v15;
        v21 = *(v15 + 1);
        v22 = *(v15 + 2);
        v23 = v15[24];
        v24 = v23 == 4 && v20 == 2;
        if (!v24 || (v22 | v21) != 0)
        {
          sub_100215598(v20, v21, v22, v23);
          goto LABEL_29;
        }

        break;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1002460F4(v17, v9, type metadata accessor for ExperienceEffect);
        goto LABEL_29;
      }

LABEL_28:
      v19 = 0;
    }
  }

  else
  {
    sub_1002460F4(v17, v12, type metadata accessor for ExperienceEffect);
    v26 = *v12;
    v27 = v12[16];
    if ((v27 & 0x80) == 0)
    {
      if ((v26 & 0xFE) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ((v27 & 0x7F) != 3)
    {
      v28 = *(v12 + 1);
      if ((v27 & 0x7F) != 4 || (v28 | v26) != 0)
      {
        sub_100094CB0(v26, v28, v27);
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  sub_100245F58(v17, type metadata accessor for ExperienceEffect);
  return v19;
}

void *sub_1002444CC(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_1000CDFA0(0, v3, 0);
    result = _swiftEmptyArrayStorage;
    v6 = (a2 + 32);
    do
    {
      v7 = *v6;
      v11 = result;
      v9 = result[2];
      v8 = result[3];
      if (v9 >= v8 >> 1)
      {
        sub_1000CDFA0((v8 > 1), v9 + 1, 1);
        result = v11;
      }

      result[2] = v9 + 1;
      v10 = result + 2 * v9;
      v10[32] = a1 & 1;
      v10[33] = v7;
      ++v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1002445A4()
{
  v0 = _swiftEmptyArrayStorage;
  v50 = _swiftEmptyArrayStorage;
  v1 = sub_1000CDF80(0, 2, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = _swiftEmptyArrayStorage[2];
  v3 = _swiftEmptyArrayStorage[3];
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    goto LABEL_53;
  }

  while (1)
  {
    *(v2 + 2) = v6;
    *&v2[2 * v4 + 32] = 1;
    v7 = v4 + 2;
    if (v5 < v7)
    {
      v1 = sub_1000CDF80((v3 > 1), v7, 1);
      v2 = v50;
    }

    *(v2 + 2) = v7;
    *&v2[2 * v6 + 32] = 0;
    v52 = v2;
    v50 = &off_1003003C0;
    __chkstk_darwin(v1);
    v48 = &v50;
    v4 = 0;
    v8 = sub_100082DF8(sub_100245FB8, v47, &off_100300398);
    v6 = *(v8 + 2);
    if (v6)
    {
      v49 = 0;
      v50 = v0;
      v4 = v8;
      sub_1000CDF80(0, v6, 0);
      v9 = v4;
      v10 = 0;
      v11 = v50;
      v12 = (v4 + 33);
      while (v10 < *(v9 + 16))
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v50 = v11;
        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        v0 = (v16 + 1);
        if (v16 >= v15 >> 1)
        {
          sub_1000CDF80((v15 > 1), v16 + 1, 1);
          v9 = v4;
          v11 = v50;
        }

        ++v10;
        if (v14)
        {
          v17 = 256;
        }

        else
        {
          v17 = 0;
        }

        *(v11 + 2) = v0;
        v3 = &v11[2 * v16];
        *(v3 + 32) = v17 | v13 | 0x2000;
        v12 += 2;
        if (v6 == v10)
        {

          v0 = _swiftEmptyArrayStorage;
          v4 = v49;
          goto LABEL_15;
        }
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_15:
    v53 = v11;
    v54 = &off_1003003E8;
    v50 = &off_100300438;
    __chkstk_darwin(v18);
    v48 = &v50;
    v19 = sub_100082DF8(sub_100246BF4, v47, &off_100300410);
    v6 = *(v19 + 2);
    if (!v6)
    {
      break;
    }

    v50 = v0;
    v0 = v19;
    sub_1000CDF80(0, v6, 0);
    v20 = v0;
    v21 = 0;
    v22 = v50;
    v23 = (v0 + 33);
    while (v21 < *(v20 + 2))
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v50 = v22;
      v27 = *(v22 + 2);
      v26 = *(v22 + 3);
      v4 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_1000CDF80((v26 > 1), v27 + 1, 1);
        v20 = v0;
        v22 = v50;
      }

      ++v21;
      if (v25)
      {
        v28 = 256;
      }

      else
      {
        v28 = 0;
      }

      *(v22 + 2) = v4;
      v3 = &v22[2 * v27];
      *(v3 + 32) = v28 | v24 | 0x4000;
      v23 += 2;
      if (v6 == v21)
      {

        v0 = _swiftEmptyArrayStorage;
        goto LABEL_26;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v1 = sub_1000CDF80((v3 > 1), v6, 1);
    v2 = v50;
    v3 = *(v50 + 3);
    v5 = v3 >> 1;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_26:
  v55 = v22;
  v50 = v0;
  sub_1000CDF80(0, 2, 0);
  v29 = v50;
  v31 = *(v50 + 2);
  v30 = *(v50 + 3);
  v32 = v30 >> 1;
  v33 = v31 + 1;
  if (v30 >> 1 <= v31)
  {
    sub_1000CDF80((v30 > 1), v31 + 1, 1);
    v29 = v50;
    v30 = *(v50 + 3);
    v32 = v30 >> 1;
  }

  *(v29 + 2) = v33;
  *&v29[2 * v31 + 32] = 24576;
  v34 = v31 + 2;
  if (v32 < v34)
  {
    sub_1000CDF80((v30 > 1), v34, 1);
    v29 = v50;
  }

  v0 = v51;
  *(v29 + 2) = v34;
  *&v29[2 * v33 + 32] = 24577;
  v3 = &off_100300460;
  v56 = v29;
  v57 = &off_100300460;
  v6 = _swiftEmptyArrayStorage;
  v4 = 32;
  while (2)
  {
    v35 = *&v51[v4];
    v36 = *(v35 + 16);
    v37 = *(v6 + 16);
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v39 = *&v51[v4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v38 > *(v6 + 24) >> 1)
    {
      if (v37 <= v38)
      {
        v41 = v37 + v36;
      }

      else
      {
        v41 = v37;
      }

      v6 = sub_1000AF59C(isUniquelyReferenced_nonNull_native, v41, 1, v6);
      if (!*(v35 + 16))
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    }

    if (*(v35 + 16))
    {
LABEL_42:
      v42 = *(v6 + 16);
      v3 = (*(v6 + 24) >> 1) - v42;
      if (v3 < v36)
      {
        goto LABEL_51;
      }

      memcpy((v6 + 2 * v42 + 32), (v35 + 32), 2 * v36);

      if (v36)
      {
        v43 = *(v6 + 16);
        v44 = __OFADD__(v43, v36);
        v45 = v43 + v36;
        if (v44)
        {
          goto LABEL_52;
        }

        *(v6 + 16) = v45;
      }

      goto LABEL_32;
    }

LABEL_31:

    if (v36)
    {
      goto LABEL_48;
    }

LABEL_32:
    v4 += 8;
    if (v4 != 80)
    {
      continue;
    }

    break;
  }

  sub_100035D04(&qword_100350948, qword_100295E20);
  result = swift_arrayDestroy();
  qword_10038B670 = v6;
  return result;
}

void sub_100244AC4(uint64_t a1, unsigned int a2)
{
  v3 = a2 >> 13;
  if (v3 <= 1)
  {
    if (!(a2 >> 13))
    {
      Hasher._combine(_:)(0);
      LOBYTE(v4) = a2 & 1;
LABEL_13:
      Hasher._combine(_:)(v4);
      return;
    }

    Hasher._combine(_:)(1uLL);
    v5 = a2 & 1;
LABEL_12:
    Hasher._combine(_:)(v5);
    v4 = (a2 >> 8) & 1;
    goto LABEL_13;
  }

  if (v3 == 2)
  {
    Hasher._combine(_:)(3uLL);
    v5 = a2 & 1;
    goto LABEL_12;
  }

  if (v3 == 3)
  {
    Hasher._combine(_:)(4uLL);
    Hasher._combine(_:)(a2 & 1);
  }

  else if (a2 == 0x8000)
  {
    Hasher._combine(_:)(2uLL);
  }

  else if (a2 == 32769)
  {
    Hasher._combine(_:)(5uLL);
  }

  else
  {
    Hasher._combine(_:)(6uLL);
  }
}

uint64_t sub_100244B94@<X0>(void *a1@<X8>)
{
  if (qword_1003392B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10038B670;
}

Swift::Int sub_100244C18()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100244AC4(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100244C68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100244AC4(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1002452D8(uint64_t a1)
{
  result = sub_100245330(&qword_100350928, type metadata accessor for ExperienceEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100245330(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10024537C()
{
  result = qword_100350930;
  if (!qword_100350930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350930);
  }

  return result;
}

unint64_t sub_1002453D0(uint64_t a1)
{
  result = sub_10024537C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002453F8(uint64_t a1)
{
  result = sub_100245420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100245420()
{
  result = qword_100350938;
  if (!qword_100350938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350938);
  }

  return result;
}

uint64_t sub_1002454A4(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v3 = type metadata accessor for TransferEvent();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExperienceEvent(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v82 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v83 = &v77 - v11;
  v12 = __chkstk_darwin(v10);
  v81 = &v77 - v13;
  v14 = __chkstk_darwin(v12);
  v80 = &v77 - v15;
  v16 = __chkstk_darwin(v14);
  v79 = (&v77 - v17);
  v18 = __chkstk_darwin(v16);
  v20 = (&v77 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = &v77 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v77 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = (&v77 - v28);
  __chkstk_darwin(v27);
  v31 = &v77 - v30;
  v32 = sub_100035D04(&qword_100350950, &qword_100295E60);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = &v77 - v35;
  v37 = &v77 + *(v34 + 56) - v35;
  sub_1002460F4(v84, &v77 - v35, type metadata accessor for ExperienceEvent);
  sub_1002460F4(a2, v37, type metadata accessor for ExperienceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v54 = v83;
        sub_1002460F4(v36, v83, type metadata accessor for ExperienceEvent);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v55 = v78;
          sub_10024615C(v37, v78, type metadata accessor for TransferEvent);
          v49 = sub_100255274(v54, v55);
          sub_100245F58(v55, type metadata accessor for TransferEvent);
          sub_100245F58(v54, type metadata accessor for TransferEvent);
          goto LABEL_59;
        }

        sub_100245F58(v54, type metadata accessor for TransferEvent);
      }

      else if (EnumCaseMultiPayload == 9)
      {
        v43 = v82;
        sub_1002460F4(v36, v82, type metadata accessor for ExperienceEvent);
        v44 = *v43;
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v45 = *v37;
          switch(v44)
          {
            case 3:
              if (v45 == 3)
              {
                goto LABEL_103;
              }

              break;
            case 2:
              if (v45 == 2)
              {
                goto LABEL_103;
              }

              break;
            case 1:
              if (v45 == 1)
              {
                goto LABEL_103;
              }

              break;
            default:
              sub_1000E605C(v44);
              sub_1000E605C(v45);
              if ((v45 - 1) >= 3)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
          }

          sub_1000E605C(*v37);
          goto LABEL_117;
        }

        sub_1000E605C(v44);
      }

      goto LABEL_56;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v39 = v80;
        sub_1002460F4(v36, v80, type metadata accessor for ExperienceEvent);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v40 = *v39;
LABEL_30:
          v49 = v40 == *v37;
LABEL_59:
          sub_100245F58(v36, type metadata accessor for ExperienceEvent);
          return v49 & 1;
        }

        goto LABEL_56;
      }

      v60 = v81;
      sub_1002460F4(v36, v81, type metadata accessor for ExperienceEvent);
      v61 = *v60;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v62 = *(v60 + 8);
        v63 = *v37;
        v64 = v37[8];
        if (v62 <= 2)
        {
          if (*(v60 + 8))
          {
            if (v62 == 1)
            {
              if (v64 != 1)
              {
                goto LABEL_117;
              }
            }

            else if (v64 != 2)
            {
              goto LABEL_117;
            }
          }

          else if (v37[8])
          {
            goto LABEL_117;
          }
        }

        else if (*(v60 + 8) > 4u)
        {
          if (v62 == 5)
          {
            if (v64 != 5)
            {
              goto LABEL_117;
            }
          }

          else if (v64 != 6)
          {
            goto LABEL_117;
          }
        }

        else
        {
          if (v62 == 3)
          {
            if (v64 != 3 || v61 != v63)
            {
              goto LABEL_117;
            }

LABEL_103:
            sub_100245F58(v36, type metadata accessor for ExperienceEvent);
            v49 = 1;
            return v49 & 1;
          }

          if (v64 != 4)
          {
LABEL_117:
            sub_100245F58(v36, type metadata accessor for ExperienceEvent);
            goto LABEL_57;
          }
        }

        if (((v63 ^ v61) & 1) == 0)
        {
          goto LABEL_103;
        }

        goto LABEL_117;
      }

      goto LABEL_56;
    }

    v50 = v79;
    sub_1002460F4(v36, v79, type metadata accessor for ExperienceEvent);
    v51 = v50[1];
    v87 = *v50;
    v88 = v51;
    *v89 = v50[2];
    *&v89[9] = *(v50 + 41);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_100231ADC(&v87);
      goto LABEL_56;
    }

    v52 = *(v37 + 1);
    v85 = *v37;
    *v86 = v52;
    *&v86[16] = *(v37 + 2);
    *&v86[25] = *(v37 + 41);
    if (!v89[24])
    {
      sub_100231ADC(&v87);
      v69 = v86[40];
      sub_100231ADC(&v85);
      if (!v69)
      {
        goto LABEL_103;
      }

      goto LABEL_117;
    }

    if (v89[24] == 1)
    {
      sub_100231ADC(&v87);
      v53 = v86[40];
      sub_100231ADC(&v85);
      if (v53 == 1)
      {
        goto LABEL_103;
      }

      goto LABEL_117;
    }

    v70 = *(&v88 + 1) | v88 | *(&v87 + 1);
    if (*&v89[8] | *&v89[16] | v87 | *v89 | v70)
    {
      v71 = *&v89[8] | *&v89[16] | *v89 | v70;
      if (v87 != 1 || v71)
      {
        if (v87 != 2 || v71)
        {
          if (v86[40] != 2 || v85 != 3)
          {
            goto LABEL_116;
          }
        }

        else if (v86[40] != 2 || v85 != 2)
        {
          goto LABEL_116;
        }
      }

      else if (v86[40] != 2 || v85 != 1)
      {
        goto LABEL_116;
      }

      v75 = *(&v85 + 1);
      v76 = vorrq_s8(*&v86[8], *&v86[24]);
      v74 = *&vorr_s8(*v76.i8, *&vextq_s8(v76, v76, 8uLL)) | *v86;
    }

    else
    {
      if (v86[40] != 2)
      {
LABEL_116:
        sub_100231ADC(&v85);
        goto LABEL_117;
      }

      v73 = vorrq_s8(*&v86[8], *&v86[24]);
      v74 = *&vorr_s8(*v73.i8, *&vextq_s8(v73, v73, 8uLL)) | *v86;
      v75 = *(&v85 + 1) | v85;
    }

    if (!(v74 | v75))
    {
      goto LABEL_103;
    }

    goto LABEL_116;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1002460F4(v36, v29, type metadata accessor for ExperienceEvent);
      v58 = v29[1];
      v85 = *v29;
      *v86 = v58;
      *&v86[16] = v29[2];
      *&v86[25] = *(v29 + 41);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = *(v37 + 1);
        v87 = *v37;
        v88 = v59;
        *v89 = *(v37 + 2);
        *&v89[9] = *(v37 + 41);
        v49 = sub_100109FBC(&v85, &v87);
        sub_100231D28(&v85);
        sub_100231D28(&v87);
        goto LABEL_59;
      }

      sub_100231D28(&v85);
    }

    else
    {
      sub_1002460F4(v36, v31, type metadata accessor for ExperienceEvent);
      v46 = *v31;
      v47 = *(v31 + 1);
      v48 = v31[16];
      if (!swift_getEnumCaseMultiPayload())
      {
        v66 = *v37;
        v67 = *(v37 + 1);
        v68 = v37[16];
        v49 = sub_1001146FC(v46, v47, v48, *v37, v67, v68);
        sub_1000D65DC(v66, v67, v68);
        sub_1000D65DC(v46, v47, v48);
        goto LABEL_59;
      }

      sub_1000D65DC(v46, v47, v48);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002460F4(v36, v26, type metadata accessor for ExperienceEvent);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v40 = *v26;
        goto LABEL_30;
      }

      goto LABEL_56;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1002460F4(v36, v23, type metadata accessor for ExperienceEvent);
      v41 = *v23;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v42 = *v37;
        if (v41 <= 6)
        {
          if (v41 == 5)
          {
            if (v42 == 5)
            {
              goto LABEL_103;
            }

            goto LABEL_117;
          }

          if (v41 == 6)
          {
            if (v42 == 6)
            {
              goto LABEL_103;
            }

            goto LABEL_117;
          }
        }

        else
        {
          switch(v41)
          {
            case 7:
              if (v42 == 7)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
            case 8:
              if (v42 == 8)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
            case 9:
              if (v42 == 9)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
          }
        }

        if ((v42 - 5) >= 5)
        {
          if (v41 == 4)
          {
            if (v42 == 4)
            {
              goto LABEL_103;
            }
          }

          else if (v42 != 4 && v41 == v42)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_117;
      }
    }

    else
    {
      sub_1002460F4(v36, v20, type metadata accessor for ExperienceEvent);
      v56 = v20[1];
      v85 = *v20;
      *v86 = v56;
      *&v86[16] = v20[2];
      *&v86[25] = *(v20 + 41);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v57 = *(v37 + 1);
        v87 = *v37;
        v88 = v57;
        *v89 = *(v37 + 2);
        *&v89[9] = *(v37 + 41);
        v49 = sub_1001B20A8(&v85, &v87);
        sub_100183628(&v87);
        sub_100183628(&v85);
        goto LABEL_59;
      }

      sub_100183628(&v85);
    }
  }

LABEL_56:
  sub_1000097E8(v36, &qword_100350950, &qword_100295E60);
LABEL_57:
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_100245F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100245FD0@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  result = sub_1002444CC(*a1, **(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100246008(int a1, int a2)
{
  v2 = a1 >> 13;
  if (v2 <= 1)
  {
    if (!(a1 >> 13))
    {
      if (a2 < 0x2000u)
      {
        return (a2 ^ a1 ^ 1) & 1;
      }

      return 0;
    }

    if ((a2 & 0xE000) != 0x2000)
    {
      return 0;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        if ((a2 & 0xE000) == 0x6000)
        {
          return ((a2 ^ a1) & 1) == 0;
        }

        return 0;
      }

      if (a1 == 0x8000)
      {
        if (a2 != 0x8000)
        {
          return 0;
        }
      }

      else
      {
        if (a1 == 32769)
        {
          return a2 == 32769;
        }

        if (a2 != 33024)
        {
          return 0;
        }
      }

      return 1;
    }

    if ((a2 & 0xE000) != 0x4000)
    {
      return 0;
    }
  }

  if ((a2 ^ a1))
  {
    v4 = 0;
  }

  else
  {
    v4 = ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }

  return v4 & 1;
}

uint64_t sub_1002460F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024615C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002461C4(uint64_t a1, uint64_t a2)
{
  v87 = a1;
  v3 = type metadata accessor for NoticeEffect();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v81 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExperienceEffect(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v85 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v84 = &v80 - v11;
  v12 = __chkstk_darwin(v10);
  v83 = &v80 - v13;
  v14 = __chkstk_darwin(v12);
  v86 = &v80 - v15;
  v16 = __chkstk_darwin(v14);
  v82 = &v80 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v80 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v80 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v80 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v80 - v28;
  __chkstk_darwin(v27);
  v31 = &v80 - v30;
  v32 = sub_100035D04(&qword_100350958, &qword_100295E68);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = &v80 - v35;
  v37 = (&v80 + *(v34 + 56) - v35);
  sub_1002460F4(v87, &v80 - v35, type metadata accessor for ExperienceEffect);
  v38 = a2;
  v39 = v37;
  sub_1002460F4(v38, v37, type metadata accessor for ExperienceEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1002460F4(v36, v31, type metadata accessor for ExperienceEffect);
        v57 = *v31;
        v58 = *(v31 + 1);
        v59 = v31[16];
        if (!swift_getEnumCaseMultiPayload())
        {
          v76 = *v37;
          v77 = v37[1];
          v78 = *(v39 + 16);
          v43 = sub_100114930(v57, v58, v59, *v39, v39[1], v78);
          sub_100094CB0(v57, v58, v59);
          sub_100094CB0(v76, v77, v78);
          goto LABEL_73;
        }

        sub_100094CB0(v57, v58, v59);
        goto LABEL_70;
      }

      sub_1002460F4(v36, v29, type metadata accessor for ExperienceEffect);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_70;
      }

      v72 = *v29;
      goto LABEL_62;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1002460F4(v36, v26, type metadata accessor for ExperienceEffect);
      v60 = *v26;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_70;
      }

      v61 = *v37;
      if (v60 == 5)
      {
        goto LABEL_78;
      }

      if (v61 == 5)
      {
        goto LABEL_84;
      }

      if (v60 != 4)
      {
        if (v60 != 3)
        {
          if ((v61 - 5) <= 0xFFFFFFFD && v60 == v61)
          {
            goto LABEL_86;
          }

          goto LABEL_84;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1002460F4(v36, v23, type metadata accessor for ExperienceEffect);
        v44 = *v23;
        v45 = *(v23 + 2);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v46 = v23[8];
          v47 = *v37;
          v43 = sub_100079248(v44, v46, v45, *v37, *(v37 + 8), v37[2]);

          goto LABEL_73;
        }

        goto LABEL_70;
      }

      sub_1002460F4(v36, v20, type metadata accessor for ExperienceEffect);
      v73 = *v20;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_70;
      }

      v61 = *v37;
      if (v73 <= 3)
      {
        if (v73 == 2)
        {
          goto LABEL_74;
        }

        if (v73 == 3)
        {
          goto LABEL_58;
        }

LABEL_82:
        if ((v61 - 2) >= 4 && ((v61 ^ v73) & 1) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      if (v73 != 4)
      {
        if (v73 != 5)
        {
          goto LABEL_82;
        }

LABEL_78:
        if (v61 == 5)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }
    }

    if (v61 == 4)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v48 = v85;
        sub_1002460F4(v36, v85, type metadata accessor for ExperienceEffect);
        v49 = *v48;
        v50 = *(v48 + 8);
        v51 = *(v48 + 16);
        v52 = *(v48 + 24);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v53 = *v37;
          v54 = v39[1];
          v55 = v39[2];
          v56 = *(v39 + 24);
          v43 = sub_1002556DC(v49, v50, v51, v52, *v39, v54, v55, v56);
          sub_100215598(v53, v54, v55, v56);
          sub_100215598(v49, v50, v51, v52);
          goto LABEL_73;
        }

        sub_100215598(v49, v50, v51, v52);
        goto LABEL_70;
      }

      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_86;
      }

LABEL_70:
      sub_1000097E8(v36, &qword_100350958, &qword_100295E68);
LABEL_71:
      v43 = 0;
      return v43 & 1;
    }

    v71 = v84;
    sub_1002460F4(v36, v84, type metadata accessor for ExperienceEffect);
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      goto LABEL_70;
    }

    v72 = *v71;
LABEL_62:
    v43 = v72 == *v37;
    goto LABEL_73;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v63 = v82;
    sub_1002460F4(v36, v82, type metadata accessor for ExperienceEffect);
    v64 = *v63;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_70;
    }

    v61 = *v37;
    if (v64 != 2)
    {
      if (v64 != 3)
      {
        if ((v61 & 0xFE) == 2)
        {
          goto LABEL_84;
        }

        if (v64)
        {
          v65 = 0x746C7561666564;
        }

        else
        {
          v65 = 0x6F69746163756465;
        }

        if (v64)
        {
          v66 = 0xE700000000000000;
        }

        else
        {
          v66 = 0xE90000000000006ELL;
        }

        if (v61)
        {
          v67 = 0x746C7561666564;
        }

        else
        {
          v67 = 0x6F69746163756465;
        }

        if (v61)
        {
          v68 = 0xE700000000000000;
        }

        else
        {
          v68 = 0xE90000000000006ELL;
        }

        if (v65 != v67 || v66 != v68)
        {
          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v70)
          {
            goto LABEL_86;
          }

LABEL_84:
          sub_100245F58(v36, type metadata accessor for ExperienceEffect);
          goto LABEL_71;
        }

LABEL_86:
        sub_100245F58(v36, type metadata accessor for ExperienceEffect);
        v43 = 1;
        return v43 & 1;
      }

LABEL_58:
      if (v61 == 3)
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }

LABEL_74:
    if (v61 == 2)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v41 = v86;
    sub_1002460F4(v36, v86, type metadata accessor for ExperienceEffect);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v42 = v81;
      sub_10024615C(v37, v81, type metadata accessor for NoticeEffect);
      v43 = sub_1001B2404(v41, v42);
      sub_100245F58(v42, type metadata accessor for NoticeEffect);
      sub_100245F58(v41, type metadata accessor for NoticeEffect);
LABEL_73:
      sub_100245F58(v36, type metadata accessor for ExperienceEffect);
      return v43 & 1;
    }

    sub_100245F58(v41, type metadata accessor for NoticeEffect);
    goto LABEL_70;
  }

  v74 = v83;
  sub_1002460F4(v36, v83, type metadata accessor for ExperienceEffect);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    goto LABEL_70;
  }

  v75 = *v74 ^ *v37;
  sub_100245F58(v36, type metadata accessor for ExperienceEffect);
  v43 = v75 ^ 1;
  return v43 & 1;
}

unint64_t sub_100246AF0(uint64_t a1)
{
  result = sub_100246B18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100246B18()
{
  result = qword_100350960;
  if (!qword_100350960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350960);
  }

  return result;
}

unint64_t sub_100246BA0()
{
  result = qword_100350978;
  if (!qword_100350978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350978);
  }

  return result;
}

uint64_t sub_100246C10()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350980);
  sub_100003078(v0, qword_100350980);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100246CC4()
{
  v0 = sub_100035D04(&qword_100350AE8, &qword_100296000);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v12 - v3;
  v5 = sub_100035D04(&qword_100350AF0, &qword_100296008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v12[1] = 0;
  sub_100035D04(&qword_10034B4F0, &unk_10027C100);
  Just.init(_:)();
  sub_100035D04(&unk_100346020, &qword_100271A00);
  Just.setFailureType<A>(to:)();
  (*(v1 + 8))(v4, v0);
  sub_100247104();
  v10 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_100246E98()
{
  v1 = v0;
  swift_defaultActor_initialize();
  type metadata accessor for ShareableContentResolverState();
  *(v0 + 112) = swift_allocObject();
  if (qword_1003392C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350980);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Init", v5, 2u);
  }

  if (qword_100338F70 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100246FC4()
{
  v1 = v0;
  if (qword_1003392C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350980);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 112);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1002470B4()
{
  sub_100246FC4();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100247104()
{
  result = qword_100350AF8;
  if (!qword_100350AF8)
  {
    sub_100035D4C(&qword_100350AF0, &qword_100296008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100350AF8);
  }

  return result;
}

uint64_t sub_100247168()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350B00);
  sub_100003078(v0, qword_100350B00);
  return Logger.init(subsystem:category:)();
}

void sub_1002471E8()
{
  v1 = v0;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350B00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29286873696E6966, 0xE800000000000000, v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_published;
  if ((*(v0 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_published) & 1) == 0)
  {
    sub_10024898C(v13);
    sub_100117B5C();
    sub_100249B44(v13);
    *(v0 + v7) = 1;
    v11 = *(v0 + 16);
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "### Attempted double-publish", v10, 2u);
  }

  v11 = *(v1 + 16);
  if (v11)
  {
LABEL_11:
    v12 = *(v1 + 24);

    v11(v1);
    sub_10002689C(v11);
  }
}

uint64_t sub_100247418()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  __chkstk_darwin(v2);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v27 - v15;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_100350B00);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100017494(0xD000000000000015, 0x80000001002A49D0, aBlock);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s", v20, 0xCu);
    sub_10000903C(v21);
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v27[1] = qword_10038B5B8;
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v10 + 8);
  v22(v14, v9);
  aBlock[4] = sub_100249B98;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100316F60;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100249B9C(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  v24 = v28;
  v25 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v24, v25);
  (*(v29 + 8))(v8, v30);
  v22(v16, v9);
}

void sub_1002478CC()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_100350B00);

  v31 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v18))
  {
    v28 = v9;
    v29 = v7;
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v19 = 136315394;
    *(v19 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A49B0, &v32);
    *(v19 + 12) = 2080;
    v20 = v2;
    v21 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v1 + v21, v16, &qword_100342A10, &qword_100278A10);
    sub_100009848(v16, v14, &qword_100342A10, &qword_100278A10);
    if ((*(v3 + 48))(v14, 1, v20) == 1)
    {
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v25 = v28;
      sub_1001DC3CC(v14, v28);
      sub_10007E658(v25, v29);
      v23 = String.init<A>(describing:)();
      v22 = v26;
      sub_10007E6BC(v25);
    }

    sub_1000097E8(v16, &qword_100342A10, &qword_100278A10);
    v27 = sub_100017494(v23, v22, &v32);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v31, v18, "%s: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v31;
  }
}

uint64_t sub_100247C94()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100345620, &unk_10027C940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v39 = &v39 - v4;
  v5 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - v10;
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = type metadata accessor for ExperienceEvent(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v39 - v21;
  __chkstk_darwin(v20);
  v24 = &v39 - v23;
  v25 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger;
  swift_beginAccess();
  sub_100009848(v1 + v25, v13, &qword_100342A10, &qword_100278A10);
  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) != 1)
  {
    v34 = sub_1001DC3CC(v13, v24);
    v33 = sub_100243F84(v34);
    v35 = v24;
LABEL_10:
    sub_10007E6BC(v35);
    return v33;
  }

  sub_1000097E8(v13, &qword_100342A10, &qword_100278A10);
  sub_100009848(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_inactiveStateTrigger, v11, &qword_100342A10, &qword_100278A10);
  if (v26(v11, 1, v14) != 1)
  {
    v36 = sub_1001DC3CC(v11, v22);
    v33 = sub_100243F84(v36);
    v35 = v22;
    goto LABEL_10;
  }

  sub_1000097E8(v11, &qword_100342A10, &qword_100278A10);
  v27 = v40;
  sub_100009848(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_finishedStateTrigger, v40, &qword_100342A10, &qword_100278A10);
  if (v26(v27, 1, v14) != 1)
  {
    v37 = sub_1001DC3CC(v27, v19);
    v33 = sub_100243F84(v37);
    v35 = v19;
    goto LABEL_10;
  }

  sub_1000097E8(v27, &qword_100342A10, &qword_100278A10);
  v28 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_sessionEnded;
  swift_beginAccess();
  v29 = v1 + v28;
  v30 = v39;
  sub_100009848(v29, v39, &qword_100345620, &unk_10027C940);
  v31 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
  sub_1000097E8(v30, &qword_100345620, &unk_10027C940);
  if (v32 == 1)
  {
    return 0;
  }

  else
  {
    return 0x206E6F6973736553;
  }
}

uint64_t sub_1002480D8()
{
  v1 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v46 = &v40 - v5;
  v47 = type metadata accessor for Date();
  v45 = *(v47 - 8);
  v6 = *(v45 + 64);
  v7 = __chkstk_darwin(v47);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented;
  swift_beginAccess();
  v21 = *(v13 + 48);
  if (v21(v0 + v20, 1, v12))
  {
    return 0;
  }

  v40 = v17;
  v42 = v9;
  sub_100009848(v0 + v20, v19, &qword_10034BD38, &qword_10028B418);
  v23 = v45;
  v24 = *(v45 + 32);
  v43 = v11;
  v25 = v47;
  v41 = v24;
  v24(v11, v19, v47);
  v26 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_requested;
  swift_beginAccess();
  v27 = 1;
  v28 = v21(v0 + v26, 1, v12);
  v29 = v46;
  if (!v28)
  {
    v30 = v0 + v26;
    v31 = v40;
    sub_100009848(v30, v40, &qword_10034BD38, &qword_10028B418);
    v41(v29, v31, v25);
    v27 = 0;
  }

  (*(v23 + 56))(v29, v27, 1, v25);
  v32 = v44;
  sub_100009848(v29, v44, &qword_10033C280, &qword_100272A80);
  v33 = (*(v23 + 48))(v32, 1, v25);
  v34 = v42;
  if (v33 == 1)
  {
    sub_1000097E8(v29, &qword_10033C280, &qword_100272A80);
    (*(v23 + 8))(v43, v25);
    sub_1000097E8(v32, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v41(v42, v32, v25);
    v35 = v25;
    v36 = v43;
    Date.timeIntervalSince(_:)();
    v38 = v37;
    v39 = *(v23 + 8);
    v39(v34, v35);
    sub_1000097E8(v29, &qword_10033C280, &qword_100272A80);
    v39(v36, v35);
    return v38;
  }
}

uint64_t sub_100248540()
{
  v1 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  __chkstk_darwin(v1);
  v4 = &v31 - v3;
  v5 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Date();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v35 = v0;
  v19 = v0 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissed;
  swift_beginAccess();
  v20 = sub_100035D04(&unk_100350B60, &unk_1002960B0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    return 0;
  }

  v32 = v16;
  v22 = v36;
  (*(v36 + 16))(v18, v19 + *(v20 + 28), v12);
  v23 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presenting;
  v24 = v35;
  swift_beginAccess();
  v25 = 1;
  if (!(*(v33 + 48))(v24 + v23, 1, v34))
  {
    sub_100009848(v24 + v23, v4, &qword_10034BD38, &qword_10028B418);
    (*(v22 + 32))(v11, v4, v12);
    v25 = 0;
  }

  (*(v22 + 56))(v11, v25, 1, v12);
  sub_100009848(v11, v9, &qword_10033C280, &qword_100272A80);
  v26 = (*(v22 + 48))(v9, 1, v12);
  v27 = v32;
  if (v26 == 1)
  {
    sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    (*(v22 + 8))(v18, v12);
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    (*(v22 + 32))(v32, v9, v12);
    Date.timeIntervalSince(_:)();
    v29 = v28;
    v30 = *(v22 + 8);
    v30(v27, v12);
    sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    v30(v18, v12);
    return v29;
  }
}

void sub_10024898C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100035D04(&qword_10034BE70, &unk_10028B4C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v117 = &v91 - v7;
  v8 = sub_100035D04(&qword_10034BE88, &unk_10028B620);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  *&v11 = &v91 - v10;
  v12 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v91 - v15;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_100350B00);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v123 = v11;
    v21 = v20;
    v122 = swift_slowAlloc();
    v132[0] = v122;
    *v21 = 136315394;
    *(v21 + 4) = sub_100017494(0x636974796C616E61, 0xEE00746E65764573, v132);
    *(v21 + 12) = 2080;
    v124[3] = v4;
    v124[0] = v2;

    v22 = v13;
    v23 = v16;
    v24 = sub_100057F50(v124);
    v121 = v19;
    v25 = v12;
    v27 = v26;
    sub_10000903C(v124);
    v28 = sub_100017494(v24, v27, v132);
    v12 = v25;

    *(v21 + 14) = v28;
    v16 = v23;
    v13 = v22;
    _os_log_impl(&_mh_execute_header, v18, v121, "%s: self=%s", v21, 0x16u);
    swift_arrayDestroy();

    v11 = v123;
  }

  v29 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented;
  swift_beginAccess();
  v30 = 0.0;
  LODWORD(v122) = (*(v13 + 48))(v2 + v29, 1, v12);
  if (!v122)
  {
    sub_100009848(v2 + v29, v16, &qword_10034BD38, &qword_10028B418);
    v31 = *(sub_100035D04(&qword_10034BE78, &unk_10028B4D0) + 28);
    Date.timeIntervalSince(_:)();
    v30 = v32;
    v33 = type metadata accessor for Date();
    (*(*(v33 - 8) + 8))(v16, v33);
  }

  v123 = COERCE_DOUBLE(sub_1002480D8());
  v121 = v34;
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B9E0();
  v35 = sub_10014C668(1);
  v119 = 0;
  v120 = v35;

  sub_10014B9E0();
  v36 = sub_10014C668(28);
  v114 = 0;
  v118 = v36;

  v116 = *(v2 + 32);
  sub_10014B9E0();
  v37 = sub_10014C668(7);
  v113 = 0;
  v115 = v37;

  v38 = (v2 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_denied);
  swift_beginAccess();
  sub_100009848(v38, *&v11, &qword_10034BE88, &unk_10028B620);
  v39 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  v40 = *(*(v39 - 8) + 48);
  v108 = v40(*&v11, 1, v39);
  sub_1000097E8(*&v11, &qword_10034BE88, &unk_10028B620);
  v41 = 0;
  v42 = 0;
  if (!v40(v38, 1, v39))
  {
    v41 = *v38;
    v42 = v38[1];
  }

  v111 = v42;
  v112 = v41;
  v43 = sub_100247C94();
  v109 = v44;
  v110 = v43;
  v45 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_failed;
  swift_beginAccess();
  v46 = v117;
  sub_100009848(v2 + v45, v117, &qword_10034BE70, &unk_10028B4C0);
  v47 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  v48 = *(*(v47 - 8) + 48);
  v107 = v48(v46, 1, v47);
  sub_1000097E8(v46, &qword_10034BE70, &unk_10028B4C0);
  if (v48(v2 + v45, 1, v47) || !*(v2 + v45))
  {
    v117 = 0;
    v106 = 0;
  }

  else
  {
    v49 = *(v2 + v45);
    swift_getErrorValue();
    v50 = v124[6];
    v117 = v124[5];
    swift_errorRetain();
    v51 = sub_100140158(v50);
    v52 = [v51 code];

    v124[4] = v52;
    v117 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v53;
  }

  if (v48(v2 + v45, 1, v47) || !*(v2 + v45))
  {
    v104 = 0;
    v105 = 0;
  }

  else
  {
    v54 = *(v2 + v45);
    swift_getErrorValue();
    v55 = v124[10];
    v105 = v124[9];
    swift_errorRetain();
    v56 = sub_100140158(v55);

    v57 = [v56 domain];

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v59;
    v105 = v58;
  }

  if (v48(v2 + v45, 1, v47) || !*(v2 + v45))
  {
    v102 = 0;
    v103 = 0;
  }

  else
  {
    v60 = *(v2 + v45);
    swift_getErrorValue();
    swift_errorRetain();
    v61 = Error.localizedDescription.getter();
    v102 = v62;
    v103 = v61;
  }

  v101 = *(v2 + 56);
  if (qword_100338E90 != -1)
  {
    swift_once();
  }

  if (byte_10038AFB0 != 1)
  {
    goto LABEL_29;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v63 = *(qword_10038B0B8 + 888);
  v64 = sub_10005F4D0();

  if ((v64 & 1) == 0)
  {
    v100 = 1;
  }

  else
  {
LABEL_29:
    v100 = 0;
  }

  v65 = *(v2 + 48);
  v97 = *(v2 + 40);
  v99 = v65;

  v98 = sub_100248540();
  v93 = v66;
  v67 = v2 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presentEffect;
  v68 = sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
  v69 = v67 + *(v68 + 32);
  v96 = *v69;
  v92 = *(v69 + 4);
  v70 = sub_100243F84(v68);
  v94 = v71;
  v95 = v70;
  if (qword_100338F10 != -1)
  {
    swift_once();
  }

  v72 = v113 != 0;
  v73 = v114 != 0;
  v74 = v119 != 0;
  v75 = v121;
  v76 = v122 != 0;
  v77 = (v122 != 0) | v121 & 1;
  if (v77)
  {
    v78 = 0.0;
  }

  else
  {
    v78 = v30 - v123;
  }

  v122 = *&v78;
  LODWORD(v114) = v107 != 1;
  LODWORD(v113) = v108 != 1;
  v79 = *(qword_10038B0B0 + 80);
  v119 = sub_10005FFC0();
  v81 = v80;

  v130 = v77;
  v128 = v76;
  v126 = v92;
  *a1 = v120;
  *(a1 + 16) = v118;
  *(a1 + 32) = v116;
  v131 = 0;
  v129 = v75 & 1;
  v127 = v93 & 1;
  v125 = v81 & 1;
  *(a1 + 8) = v74;
  *(a1 + 24) = v73;
  *(a1 + 40) = 0;
  *(a1 + 48) = v115;
  *(a1 + 56) = v72;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v113;
  v82 = v111;
  *(a1 + 88) = v112;
  *(a1 + 96) = v82;
  v83 = v109;
  *(a1 + 104) = v110;
  *(a1 + 112) = v83;
  *(a1 + 120) = v114;
  v85 = v105;
  v84 = v106;
  *(a1 + 128) = v117;
  *(a1 + 136) = v84;
  v87 = v103;
  v86 = v104;
  *(a1 + 144) = v85;
  *(a1 + 152) = v86;
  v88 = v102;
  *(a1 + 160) = v87;
  *(a1 + 168) = v88;
  *(a1 + 176) = v101;
  *(a1 + 184) = v100;
  *(a1 + 192) = v131;
  v89 = v99;
  *(a1 + 200) = v97;
  *(a1 + 208) = v89;
  *(a1 + 216) = v122;
  *(a1 + 224) = v130;
  *(a1 + 232) = v123;
  *(a1 + 240) = v129;
  *(a1 + 248) = v30;
  *(a1 + 256) = v128;
  *(a1 + 264) = v98;
  *(a1 + 272) = v127;
  *(a1 + 276) = v96;
  *(a1 + 280) = v126;
  v90 = v94;
  *(a1 + 288) = v95;
  *(a1 + 296) = v90;
  *(a1 + 304) = v119;
  *(a1 + 312) = v125;
}

uint64_t *sub_1002494D8()
{
  v1 = v0;
  if (qword_1003392C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100350B00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[3];
  sub_10002689C(v1[2]);
  v7 = v1[6];

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presentEffect, &qword_10034BE78, &unk_10028B4D0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_requested, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presenting, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_denied, &qword_10034BE88, &unk_10028B620);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_failed, &qword_10034BE70, &unk_10028B4C0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissed, &qword_100350C60, &qword_100296120);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_sessionEnded, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger, &qword_100342A10, &qword_100278A10);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_inactiveStateTrigger, &qword_100342A10, &qword_100278A10);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_finishedStateTrigger, &qword_100342A10, &qword_100278A10);
  return v1;
}

uint64_t sub_100249718()
{
  sub_1002494D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HintPresentationRecord()
{
  result = qword_100350B48;
  if (!qword_100350B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002497C4()
{
  sub_1001DC23C(319, &qword_10034BD28, type metadata accessor for StateUpdateWithDistance);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_10011CC54(319, &qword_10034BD30, &qword_10034BD38, &qword_10028B418);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_10011CC54(319, &qword_10034BD50, &qword_10034BD58, &unk_1002960A0);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_10011CC54(319, &qword_10034BD40, &qword_10034BD48, &unk_10028B420);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_10011CC54(319, &qword_100350B58, &unk_100350B60, &unk_1002960B0);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_10011CC54(319, &qword_1003454F0, &qword_1003454F8, &unk_10028B580);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_1001DC23C(319, &unk_10034BD60, &type metadata accessor for Optional);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100249A94(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;

  v3 = sub_100057F50(v5);
  sub_10000903C(v5);
  return v3;
}

uint64_t sub_100249AEC(uint64_t a1)
{
  result = sub_100249B9C(&qword_100350C58, type metadata accessor for HintPresentationRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100249B9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100249BE4@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v141 = a3;
  v5 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v140 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v144 = &v131 - v10;
  v133 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  v11 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v135 = (&v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v131 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v131 - v17;
  v134 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  v18 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v132 = (&v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_100035D04(qword_100350C68, &qword_100296128);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v138 = &v131 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = (&v131 - v28);
  v30 = __chkstk_darwin(v27);
  v146 = &v131 - v31;
  __chkstk_darwin(v30);
  v145 = &v131 - v32;
  if (qword_100339058 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100003078(v33, qword_10038B208);
  swift_unknownObjectRetain();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  v36 = os_log_type_enabled(v34, v35);
  v139 = v24;
  v143 = v6;
  if (v36)
  {
    v147 = v5;
    v37 = swift_slowAlloc();
    v149[0] = swift_slowAlloc();
    *v37 = 136315650;
    *(v37 + 4) = sub_100017494(0xD000000000000016, 0x80000001002A70A0, v149);
    *(v37 + 12) = 2080;
    v38 = a1;
    v39 = sub_1000092A0();
    v41 = sub_100017494(v39, v40, v149);

    *(v37 + 14) = v41;
    *(v37 + 22) = 2080;
    if (a2)
    {
      v148 = a2;
      swift_unknownObjectRetain();
      sub_100035D04(&qword_10033D6D0, &unk_10027C120);
      v42 = String.init<A>(describing:)();
      v44 = v43;
    }

    else
    {
      v44 = 0xE300000000000000;
      v42 = 7104878;
    }

    v48 = sub_100017494(v42, v44, v149);

    *(v37 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s: device%s, activity=%s", v37, 0x20u);
    swift_arrayDestroy();

    v6 = v143;
    a1 = v38;
    v5 = v147;
    v45 = v145;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v45 = v145;
    if (!a2)
    {
LABEL_11:
      v46 = 0;
      goto LABEL_12;
    }
  }

  v46 = [a2 pcactivityType];
  if (v46 == 1)
  {
    v47 = 0;
    v147 = 1;
    goto LABEL_16;
  }

LABEL_12:
  v49 = sub_10006FE7C();
  if (v49)
  {
    v50 = v46;
  }

  else
  {
    v50 = 0;
  }

  v147 = v50;
  v47 = (a2 == 0) | v49 ^ 1;
LABEL_16:
  v51 = *(v6 + 56);
  v51(v45, 1, 1, v5);
  v52 = v146;
  v137 = v51;
  v51(v146, 1, 1, v5);
  v53 = v147;
  v142 = v47;
  if ((v47 & 1) == 0)
  {
    v71 = 0;
    if (v147 <= 1)
    {
      if (v147)
      {
        if (v147 != 1)
        {
          goto LABEL_58;
        }

        goto LABEL_17;
      }

      if (!a2)
      {
        goto LABEL_33;
      }

      objc_opt_self();
      v84 = swift_dynamicCastObjCClass();
      if (!v84)
      {
LABEL_57:
        v71 = [a2 image];
        goto LABEL_58;
      }

      v85 = v84;
      swift_unknownObjectRetain();
      v86 = [v85 displayName];
      if (v86)
      {
        v87 = v86;
        v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;
      }

      else
      {
        v135 = 0;
        v89 = 0;
      }

      v90 = v136;
      v91 = [v85 dateConnected];
      if (v91)
      {
        v92 = v91;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v93 = 0;
      }

      else
      {
        v93 = 1;
      }

      v94 = type metadata accessor for Date();
      (*(*(v94 - 8) + 56))(v90, v93, 1, v94);
      v95 = [v85 title];
      if (v95)
      {
        v96 = v95;
        v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v98;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v97 = 0;
        v99 = 0;
      }

      v52 = v146;
      sub_10024A9F8(v146);
      v100 = v145;
      sub_10024A9F8(v145);
      v101 = v136;
      v102 = v132;
      *v132 = v135;
      *(v102 + 8) = v89;
      v103 = v134;
      sub_10003693C(v101, v102 + *(v134 + 20), &qword_10033C280, &qword_100272A80);
      v104 = (v102 + *(v103 + 24));
      *v104 = v97;
      v104[1] = v99;
      sub_10024AAD0(v102, v100, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    }

    else
    {
      if ((v147 - 2) < 2)
      {
        if (a2)
        {
          v72 = [swift_unknownObjectRetain() activityString];
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;
          swift_unknownObjectRelease();

          sub_10024A9F8(v146);
          v76 = v145;
          sub_10024A9F8(v145);
          *v29 = v73;
          v29[1] = v75;
          swift_storeEnumTagMultiPayload();
          v137(v29, 0, 1, v5);
          sub_10003693C(v29, v76, qword_100350C68, &qword_100296128);
          v53 = v147;
          sub_10024AA60(v76, v146);
        }

        goto LABEL_30;
      }

      if (v147 != 4)
      {
        goto LABEL_58;
      }

      if (!a2)
      {
        goto LABEL_33;
      }

      objc_opt_self();
      v77 = swift_dynamicCastObjCClass();
      if (!v77)
      {
        goto LABEL_57;
      }

      v78 = v77;
      swift_unknownObjectRetain();
      v79 = [v78 displayTitle];
      if (v79)
      {
        v80 = v79;
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;

        v52 = v146;
      }

      else
      {
        v81 = 0;
        v83 = 0;
      }

      v105 = v131;
      v106 = [v78 fireDate];
      v100 = v145;
      if (v106)
      {
        v107 = v106;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v108 = 0;
      }

      else
      {
        v108 = 1;
      }

      swift_unknownObjectRelease();
      sub_10024A9F8(v52);
      sub_10024A9F8(v100);
      v109 = type metadata accessor for Date();
      (*(*(v109 - 8) + 56))(v105, v108, 1, v109);
      v110 = v135;
      *v135 = v81;
      *(v110 + 8) = v83;
      sub_10003693C(v105, v110 + *(v133 + 20), &qword_10033C280, &qword_100272A80);
      sub_10024AAD0(v110, v100, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    }

    swift_storeEnumTagMultiPayload();
    v137(v100, 0, 1, v5);
    sub_10024AA60(v100, v52);
    v53 = v147;
    goto LABEL_57;
  }

LABEL_17:
  v54 = *(*&a1[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext] + 24);
  if (v54)
  {
    v55 = v54;
    v56 = [v55 proxDeviceState];
    if (v56)
    {
      v57 = v56;
      v58 = [objc_allocWithZone(PCMediaActivity) initWithDisplayContext:v55 response:v56];
      v59 = [v58 activityString];
      v136 = a1;
      v60 = v59;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = v145;
      sub_10024A9F8(v145);
      *v29 = v61;
      v29[1] = v63;
      swift_storeEnumTagMultiPayload();
      v135 = a2;
      v65 = v137;
      v137(v29, 0, 1, v5);
      sub_10003693C(v29, v64, qword_100350C68, &qword_100296128);
      v66 = [v58 description];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = v146;
      sub_10024A9F8(v70);
      *v29 = v67;
      v29[1] = v69;
      v53 = v147;
      swift_storeEnumTagMultiPayload();
      v65(v29, 0, 1, v5);
      a2 = v135;
      sub_10003693C(v29, v70, qword_100350C68, &qword_100296128);
    }

    else
    {
    }

    LOBYTE(v47) = v142;
  }

  if (v47)
  {
    goto LABEL_33;
  }

LABEL_30:
  v71 = 0;
  if (v53 <= 4 && v53 != 1)
  {
    if (!a2)
    {
LABEL_33:
      v71 = 0;
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_58:
  v147 = v53;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v111 = sub_1000BDC5C();
  v113 = v112;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v114 = sub_10000C868();
  v116 = v115;

  v117 = sub_100058DC8(v114, v116);
  v119 = v118;

  v120 = v138;
  sub_10003693C(v145, v138, qword_100350C68, &qword_100296128);
  v121 = *(v143 + 48);
  if (v121(v120, 1, v5) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v122 = v121(v120, 1, v5) == 1;
    v123 = v120;
    v124 = v139;
    if (!v122)
    {
      sub_10024A9F8(v123);
    }
  }

  else
  {
    sub_10024AAD0(v120, v144, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    v124 = v139;
  }

  sub_10003693C(v146, v124, qword_100350C68, &qword_100296128);
  v125 = v5;
  if (v121(v124, 1, v5) == 1)
  {
    v126 = v140;
    swift_storeEnumTagMultiPayload();
    if (v121(v124, 1, v125) != 1)
    {
      sub_10024A9F8(v124);
    }
  }

  else
  {
    v126 = v140;
    sub_10024AAD0(v124, v140, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  }

  v127 = v141;
  *v141 = v147;
  if (v113)
  {
    v128 = 0;
  }

  else
  {
    v128 = v111;
  }

  *(v127 + 8) = v142 & 1;
  v127[2] = v128;
  v127[3] = v117;
  v127[4] = v119;
  v127[5] = v71;
  v129 = type metadata accessor for ActivityDisplayContext(0);
  sub_10024AAD0(v144, v127 + *(v129 + 32), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  return sub_10024AAD0(v126, v127 + *(v129 + 36), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
}

uint64_t sub_10024A9F8(uint64_t a1)
{
  v2 = sub_100035D04(qword_100350C68, &qword_100296128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024AA60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(qword_100350C68, &qword_100296128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024AAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024AB38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_10024AB8C()
{
  result = swift_dynamicCastTypeToObjCProtocolConditional();
  if (result)
  {
    return [swift_getObjCClassFromMetadata() supportsSecureCoding];
  }

  return result;
}

id sub_10024ABD4(uint64_t *a1, id a2)
{
  v5 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    sub_10000EBC0(v13, v13[3]);
    sub_100165E88();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v6 = objc_allocWithZone(NSKeyedUnarchiver);
    sub_10006DA04(v11, v12);
    v7 = sub_10024B210();
    sub_100010708(v11, v12);
    [v7 setRequiresSecureCoding:sub_10024AB8C() & 1];
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder:v7];
    if (v9)
    {
      a2 = v9;

      sub_100010708(v11, v12);
      sub_10000903C(v13);
      sub_10000903C(a1);
      return a2;
    }

    sub_10001618C();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 7;
    swift_willThrow();

    sub_100010708(v11, v12);
    sub_10000903C(v13);
  }

  sub_10000903C(a1);
  return a2;
}

uint64_t sub_10024AD94(void *a1, void *a2)
{
  v3 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:sub_10024AB8C() & 1];
  [a2 encodeWithCoder:v4];
  [v4 finishEncoding];
  v5 = [v4 encodedData];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_100051608(v10, v10[3]);
  sub_100165FDC();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  sub_100010708(v6, v8);
  return sub_10000903C(v10);
}

id sub_10024AF10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_10024ABD4(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10024AF64(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = *a2;
  v7 = *(a3 + 16);
  return sub_10024AED4();
}

void *sub_10024AF78(uint64_t *a1, void *a2)
{
  v5 = a1[4];
  v6 = sub_10000EBC0(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_10000903C(a1);
  }

  else
  {
    sub_10000EBC0(v9, v9[3]);
    if (dispatch thunk of SingleValueDecodingContainer.decodeNil()())
    {
      v6 = 0;
    }

    else
    {
      sub_10007E790(a1, v8);
      v6 = sub_10024ABD4(v8, a2);
    }

    sub_10000903C(v9);
    sub_10000903C(a1);
  }

  return v6;
}

uint64_t sub_10024B068(void *a1, void *a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_10024AD94(a1, a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v5 = a1[4];
    sub_10000EBC0(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_100051608(v6, v6[3]);
    dispatch thunk of SingleValueEncodingContainer.encodeNil()();
    return sub_10000903C(v6);
  }
}

uint64_t sub_10024B124(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      swift_unknownObjectRetain();
      v2 = dispatch thunk of static Equatable.== infix(_:_:)();
      swift_unknownObjectRelease();
      if (v2)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

void *sub_10024B1A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_10024AF78(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10024B1FC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return sub_10024B124(*a1, *a2);
}

id sub_10024B210()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10024B2D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10024B30C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350D70);
  sub_100003078(v0, qword_100350D70);
  return Logger.init(subsystem:category:)();
}

id sub_10024B7E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TempProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024B8C4(void *a1)
{
  v2 = v1;
  if (qword_1003392D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100350D70);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "receive event %@", v8, 0xCu);
    sub_1000030B0(v9);
  }

  v11 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12TempProvider_proximityEventHandler);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12TempProvider_proximityEventHandler + 8);

    v11(v5);
    sub_10002689C(v11);
  }

  v13 = OBJC_IVAR____TtC17proximitycontrold12TempProvider_receivedEvents;
  swift_beginAccess();
  v14 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((*(v2 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

id sub_10024BB1C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12TempProvider_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B5B8;
  *&v0[v1] = qword_10038B5B8;
  v3 = &v0[OBJC_IVAR____TtC17proximitycontrold12TempProvider_displayContextHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC17proximitycontrold12TempProvider_progressEventHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC17proximitycontrold12TempProvider_proximityEventHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC17proximitycontrold12TempProvider_receivedEvents] = _swiftEmptyArrayStorage;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TempProvider();
  v6 = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10024BC10()
{
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9[0] = 0;
  v2 = [v0 JSONObjectWithData:isa options:0 error:v9];

  v3 = v9[0];
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10001766C(v10, v9);
    sub_100035D04(&qword_100350E40, qword_1002963B8);
    if (swift_dynamicCast())
    {
      sub_100140528(v8);

      v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v5 = sub_10024BDFC();
    }

    else
    {
      v5 = 0x80000001002A7180;
      sub_10001618C();
      swift_allocError();
      *v6 = 0xD00000000000001CLL;
      *(v6 + 8) = 0x80000001002A7180;
      *(v6 + 16) = 7;
      swift_willThrow();
    }

    sub_10000903C(v10);
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id sub_10024BDFC()
{
  type metadata accessor for Key(0);
  sub_10024BEF0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_10024BEF0()
{
  result = qword_100339C00;
  if (!qword_100339C00)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100339C00);
  }

  return result;
}

uint64_t AnyTransition.init(arrayLiteral:)(uint64_t a1)
{
  static AnyTransition.identity.getter();
  v2 = *(a1 + 16);

  v4 = result;
  if (v2)
  {
    v5 = 0;
    while (v5 < *(a1 + 16))
    {
      v6 = v5 + 1;
      v7 = *(a1 + 32 + 8 * v5);

      v4 = AnyTransition.combined(with:)();

      v5 = v6;
      if (v2 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return v4;
  }

  return result;
}

uint64_t sub_10024C004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AnyTransition.init(arrayLiteral:)(a1);
  *a2 = result;
  return result;
}

id sub_10024C02C()
{
  v0 = objc_allocWithZone(NSNumber);

  return [v0 initWithInteger:0];
}

id sub_10024C068()
{
  v0 = objc_allocWithZone(NSString);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithString:v1];

  return v2;
}

id sub_10024C1FC()
{
  v1 = qword_1002964E8[*v0];
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:v1];
}

id sub_10024C250()
{
  v1 = qword_100296550[*v0];
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:v1];
}

uint64_t sub_10024C2A4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350E48);
  sub_100003078(v0, qword_100350E48);
  return Logger.init(subsystem:category:)();
}

void sub_10024C328(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    sub_10001766C(a3, v32);

    sub_100035D04(&qword_10033BDC8, &unk_100278380);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v29, &v33);
      v8 = v35;
      v9 = v36;
      sub_10000EBC0(&v33, v35);
      if (((*(v9 + 16))(v8, v9) & 1) == 0)
      {

        goto LABEL_20;
      }

      sub_10000903C(&v33);
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_1000097E8(&v29, &qword_10033BDD0, &unk_100272700);
    }

    sub_10001766C(a3, v32);
    sub_100035D04(&qword_100350E60, &qword_1002964D0);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v29, &v33);
      v13 = v35;
      v14 = v36;
      sub_10000EBC0(&v33, v35);
      v15 = (*(v14 + 8))(v13, v14);
      v16 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v29 = *a4;
      *a4 = 0x8000000000000000;
      sub_10004E040(v15, a1, a2, isUniquelyReferenced_nonNull_native);

      *a4 = v29;
LABEL_20:
      sub_10000903C(&v33);
      return;
    }

    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_1000097E8(&v29, &qword_100350E68, &unk_1002964D8);
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v18._object = 0x80000001002A71A0;
    v18._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v18);
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    String.append(_:)(v19);

    v21 = v33;
    v20 = v34;
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003078(v22, qword_100350E48);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      v27 = sub_100017494(v21, v20, &v33);

      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s", v25, 0xCu);
      sub_10000903C(v26);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003392D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_100350E48);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "### Key is nil?", v12, 2u);
    }
  }
}

id sub_10024C788()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithBool:v1];
}

id sub_10024C7D0()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithDouble:v1];
}

id sub_10024C818()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:v1];
}

id sub_10024C860()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);
  LODWORD(v3) = v1;

  return [v2 initWithFloat:v3];
}

id sub_10024C8A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(NSString);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithString:v4];

  return v5;
}

unint64_t PCDisambiguationContext.description.getter()
{
  v1 = v0;
  sub_100035D04(&qword_100350E70, &qword_100278AE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002727F0;
  *(inited + 32) = 0x4449656369766564;
  *(inited + 40) = 0xE800000000000000;
  v3 = [v1 deviceIdentifier];
  v4 = sub_10024CBA4();
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6F69746365726964;
  *(inited + 88) = 0xE90000000000006ELL;
  v5 = [v1 interactionDirection];
  type metadata accessor for PCInteractionDirection(0);
  *(inited + 96) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0x7974697669746361;
  *(inited + 136) = 0xE800000000000000;
  if ([v1 activity])
  {
    sub_100035D04(&qword_10033D6D0, &unk_10027C120);
    v7 = String.init<A>(describing:)();
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  sub_10024DA80(inited);
  swift_setDeallocating();
  sub_100035D04(&unk_100350E80, &qword_100278AE8);
  swift_arrayDestroy();
  v9 = Dictionary.description.getter();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  return 0xD000000000000019;
}

unint64_t sub_10024CBA4()
{
  result = qword_100350E78;
  if (!qword_100350E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100350E78);
  }

  return result;
}

unint64_t sub_10024CC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DEF0, &qword_100274218);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100004B58(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024CD24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350F60, &qword_1002965E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_100004B58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10024CE24(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100035D04(&qword_100350F48, &qword_1002965D8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_100085110(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100085110(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10024CF38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_100350F40, &qword_1002741B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1000850CC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D084(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_100035D04(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_100035D04(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_100009848(v17, v13, a2, v28);
      result = sub_100019110(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10024D28C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100035D04(&unk_100350EA0, &qword_100274268);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10008CE8C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_10008CE8C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10024D3B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_100350F18, &qword_1002965C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100004B58(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D50C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100035D04(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100004B58(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DEC0, &qword_1002741D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100004B58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D730(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100035D04(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = a1[5];
  result = sub_10008CE8C(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v7;
    return v5;
  }

  v10 = (a1 + 7);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 8 * result) = v7;
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v5[2] = v13;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v6 = *(v10 - 1);
    v15 = *v10;
    v16 = v7;
    result = sub_10008CE8C(v6);
    v10 = v14;
    v7 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10024D824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350E90, &unk_10027C950);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009848(v4, v13, &qword_100344038, qword_100279DB0);
      result = sub_1000851E8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000516B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024D960(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350F30, &qword_1002965D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      sub_100009848(i, v11, &qword_1003507C8, qword_100295C00);
      v5 = v11[0];
      result = sub_10008522C(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_10000E754(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DA80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DED8, &qword_1002741F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009848(v4, &v13, &unk_100350E80, &qword_100278AE8);
      v5 = v13;
      v6 = v14;
      result = sub_100004B58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000516B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DBB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350F20, &qword_1002965C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009848(v4, v15, &qword_10034CDC0, &qword_10028C930);
      result = sub_1000851E8(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DCF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350FD0, &qword_100296610);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10006DA04(v7, v8);
      result = sub_100004B58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DE1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100035D04(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100004B58(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024DF3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_100350F70, &qword_1002965F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100004B58(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024E04C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100035D04(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v15 = *(a1 + 32);
  result = sub_100026910(*(a1 + 32));
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v8 = (a1 + 48);
  v9 = v3 - 1;
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v15;
    *(v5[7] + 8 * result) = *(&v15 + 1);
    v10 = v5[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v5[2] = v12;
    if (!v9)
    {
      goto LABEL_8;
    }

    v13 = *v8++;
    v15 = v13;

    result = sub_100026910(v13);
    --v9;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10024E154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DEF8, &qword_100274220);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009848(v4, &v11, &unk_100350FA0, &qword_100296600);
      v5 = v11;
      result = sub_10008CE90(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000516B4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024E27C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&unk_100350F90, &qword_100274210);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100004B58(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024E380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033DEE8, &qword_100274208);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_100004B58(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10024E4A4(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100350FE0, &qword_100296618);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100035D04(&qword_10033DF30, &unk_100274280);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009848(v10, v6, &qword_100350FE0, &qword_100296618);
      result = sub_100019110(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
      result = sub_10008CD9C(&v6[v9], v17 + *(*(active - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t PCUserAlert.__allocating_init(definition:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  return sub_100251EA8(v5, a1);
}

uint64_t PCUserAlert.run()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return (_swift_task_switch)(sub_10024E79C, 0, 0);
}

uint64_t sub_10024E79C()
{
  if (qword_1003392E8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v0[2] = v0[4];
  v2 = swift_task_alloc();
  v0[6] = v2;
  WitnessTable = swift_getWitnessTable();
  *v2 = v0;
  v2[1] = sub_10024E8A4;
  v4 = v0[3];

  return sub_10024F7C8(v4, (v0 + 2), v1, WitnessTable);
}

uint64_t sub_10024E8A4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_10024E9D8, 0, 0);
}

uint64_t sub_10024E9F0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100350FE8);
  sub_100003078(v0, qword_100350FE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10024EA70()
{
  v0 = type metadata accessor for PCUserAlertManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_10024EAB0();
  qword_10038B6D0 = v3;
  return result;
}

uint64_t sub_10024EAB0()
{
  v1 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v25 = &v22 - v3;
  v4 = sub_100035D04(&qword_100351308, &qword_100296838);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v24 = sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v24);
  v12 = &v22 - v11;
  v23 = sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v23);
  v16 = &v22 - v15;
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_10024E4A4(_swiftEmptyArrayStorage);
  v17 = OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventStream;
  v22 = OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventContinuation;
  sub_100035D04(&qword_100351080, &qword_1002966F0);
  (*(v5 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v8, v4);
  (*(v13 + 32))(v0 + v17, v16, v23);
  (*(v9 + 32))(v0 + v22, v12, v24);
  *(v0 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventTask) = 0;
  v18 = type metadata accessor for TaskPriority();
  v19 = v25;
  (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v0;

  sub_100240220(0, 0, v19, &unk_100296848, v20);

  return v0;
}

uint64_t sub_10024EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v4[5] = *(v7 + 64);
  v4[6] = swift_task_alloc();
  v8 = *(*(sub_100035D04(&qword_10033E800, &qword_100278E80) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_10024EF54, a4, 0);
}

uint64_t sub_10024EF54()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v4 + 16))(v2, v5 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventStream, v6);
  v8 = sub_1002528E0(&qword_1003512F8, type metadata accessor for PCUserAlertManager);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v8;
  (*(v4 + 32))(v11 + v9, v2, v6);
  *(v11 + v10) = v5;
  swift_retain_n();
  v12 = sub_100240220(0, 0, v1, &unk_100296858, v11);
  v13 = *(v5 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventTask);
  *(v5 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventTask) = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_10024F128()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventTask;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventTask);

    Task.cancel()();
  }

  v3 = *(v0 + 112);

  v4 = OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventStream;
  v5 = sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventContinuation;
  v7 = sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + v1);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10024F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for UUID();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = *(*(sub_100035D04(&qword_100351310, &qword_100296860) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v11 = sub_100035D04(&qword_100351318, &qword_100296868);
  v5[8] = v11;
  v12 = *(v11 - 8);
  v5[9] = v12;
  v13 = *(v12 + 64) + 15;
  v5[10] = swift_task_alloc();

  return (_swift_task_switch)(sub_10024F3B4, a5, 0);
}

uint64_t sub_10024F3B4()
{
  v1 = v0[10];
  v2 = v0[2];
  sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  AsyncStream.makeAsyncIterator()();
  v3 = sub_1002528E0(&qword_1003512F8, type metadata accessor for PCUserAlertManager);
  v0[11] = v3;
  v4 = v0[3];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10024F4C4;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v8, v4, v3, v9);
}

uint64_t sub_10024F4C4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return (_swift_task_switch)(sub_10024F5D4, v2, 0);
}

uint64_t sub_10024F5D4()
{
  v1 = v0[7];
  v2 = sub_100035D04(&qword_100351080, &qword_1002966F0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = *v1;
    (*(v0[5] + 32))(v0[6], v1 + *(v2 + 48), v0[4]);
    if ((v6 - 1) >= 2)
    {
      v7 = v0[3];
      if (v6 == 3)
      {
        sub_100251284(v0[6], 0);
      }

      else
      {
        sub_100251284(v0[6], v6);
        sub_1000E605C(v6);
      }
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
    v8 = v0[11];
    v9 = v0[3];
    v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_10024F4C4;
    v12 = v0[10];
    v13 = v0[7];
    v14 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v13, v9, v8, v14);
  }
}

uint64_t sub_10024F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[29] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v5[30] = v7;
  v8 = *(v7 - 8);
  v5[31] = v8;
  v9 = *(v8 + 64) + 15;
  v5[32] = swift_task_alloc();
  v10 = *(AssociatedTypeWitness - 8);
  v5[33] = v10;
  v11 = *(v10 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v12 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
  v5[36] = v12;
  v13 = *(v12 - 8);
  v5[37] = v13;
  v14 = *(v13 + 64) + 15;
  v5[38] = swift_task_alloc();
  v15 = *(*(sub_100035D04(&qword_1003512D0, &qword_100296808) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v16 = sub_100035D04(&qword_1003512D8, &qword_100296810);
  v5[40] = v16;
  v17 = *(v16 - 8);
  v5[41] = v17;
  v18 = *(v17 + 64) + 15;
  v5[42] = swift_task_alloc();
  v19 = *(*(sub_100035D04(&qword_10034B6B0, &qword_1002967F0) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v20 = sub_100035D04(&qword_1003512E0, &qword_100296818);
  v5[44] = v20;
  v21 = *(v20 - 8);
  v5[45] = v21;
  v22 = *(v21 + 64) + 15;
  v5[46] = swift_task_alloc();
  v23 = sub_100035D04(&qword_1003511F8, &unk_100296750);
  v5[47] = v23;
  v24 = *(v23 - 8);
  v5[48] = v24;
  v25 = *(v24 + 64) + 15;
  v5[49] = swift_task_alloc();
  v26 = sub_100035D04(&qword_1003512E8, &qword_100296820);
  v5[50] = v26;
  v27 = *(v26 - 8);
  v5[51] = v27;
  v28 = *(v27 + 64) + 15;
  v5[52] = swift_task_alloc();
  v29 = sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  v5[53] = v29;
  v30 = *(v29 - 8);
  v5[54] = v30;
  v5[55] = *(v30 + 64);
  v5[56] = swift_task_alloc();
  v31 = type metadata accessor for UUID();
  v5[57] = v31;
  v32 = *(v31 - 8);
  v5[58] = v32;
  v5[59] = *(v32 + 64);
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();

  return (_swift_task_switch)(sub_10024FC64, v4, 0);
}

uint64_t sub_10024FC64()
{
  v1 = v0[58];
  v33 = v0[59];
  v2 = v0[56];
  v29 = v0[61];
  v30 = v0[57];
  v3 = v0[54];
  v31 = v0[60];
  v32 = v0[55];
  v4 = v0[53];
  v43 = v0[49];
  v44 = v0[52];
  v45 = v0[48];
  v46 = v0[47];
  v39 = v0[44];
  v40 = v0[46];
  v37 = v0[43];
  v38 = v0[45];
  v41 = v0[36];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v42 = *(v6 + 24);
  v35 = v6;
  v36 = v0[25];
  v34 = v7;
  v42(v7, v6);
  v0[16] = type metadata accessor for PCUserAlertPresentationContext();
  v0[17] = sub_1002528E0(&qword_1003512F0, type metadata accessor for PCUserAlertPresentationContext);
  v8 = sub_10000F798(v0 + 13);
  v9 = PCUserAlertProtocol.presentationContext.getter(v7, v6, v8);
  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC17proximitycontrold18PCUserAlertManager_eventContinuation, v4, v9);
  (*(v1 + 16))(v31, v29, v30);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v32 + *(v1 + 80) + v10) & ~*(v1 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v2, v4);
  (*(v1 + 32))(v12 + v11, v31, v30);
  v13 = objc_allocWithZone(type metadata accessor for PCViewServiceHandle());
  v14 = sub_10009D944(0xD000000000000019, 0x80000001002A7290, (v0 + 13), sub_1002529F0, v12);
  v0[62] = v14;
  (*(v38 + 104))(v40, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v39);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v38 + 8))(v40, v39);
  v42(v34, v35);
  v37[3] = v34;
  v37[4] = v35;
  v15 = sub_10000F798(v37);
  (*(*(v34 - 8) + 16))(v15, v36, v34);
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(v45 + 16))(v37 + *(active + 24), v43, v46);
  v37[5] = v14;
  (*(*(active - 8) + 56))(v37, 0, 1, active);
  swift_beginAccess();
  v17 = v14;
  sub_1001CFBE0(v37, v31);
  swift_endAccess();
  sub_10009DD84();
  v18 = v0[52];
  v19 = v0[50];
  v20 = v0[42];
  v21 = v0[28];
  AsyncThrowingStream.makeAsyncIterator()();
  v22 = sub_1002528E0(&qword_1003512F8, type metadata accessor for PCUserAlertManager);
  v23 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v24 = swift_task_alloc();
  v0[63] = v24;
  *v24 = v0;
  v24[1] = sub_100250304;
  v25 = v0[42];
  v26 = v0[39];
  v27 = v0[40];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v26, v21, v22, v27, v0 + 22);
}

uint64_t sub_100250304()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v7 = *v1;
  *(*v1 + 512) = v0;

  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_100250A44;
  }

  else
  {
    v5 = sub_10025041C;
  }

  return (_swift_task_switch)(v5, v4, 0);
}

uint64_t sub_10025041C()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v88 = *(v0 + 512);
  if (v4 == 1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    static Task<>.checkCancellation()();
    v5 = *(v0 + 496);
    v6 = *(v0 + 464);
    v81 = *(v0 + 456);
    v85 = *(v0 + 488);
    v8 = *(v0 + 408);
    v7 = *(v0 + 416);
    v10 = *(v0 + 392);
    v9 = *(v0 + 400);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    if (!v88)
    {
      sub_10001618C();
      swift_allocError();
      *v29 = 0;
      *(v29 + 8) = 0xE000000000000000;
      *(v29 + 16) = 11;
      swift_willThrow();
    }

    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
    goto LABEL_8;
  }

  v13 = *(v0 + 488);
  v82 = *(v0 + 240);
  v86 = *(v0 + 280);
  v74 = *(v0 + 232);
  v77 = *(v0 + 256);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v17 = *(v0 + 200);
  v16 = *(v0 + 208);
  (*(v2 + 32))(*(v0 + 304), v1, v3);
  sub_100251284(v13, 0);
  (*(v15 + 32))(v16, v15);
  *(v0 + 168) = *(v0 + 80);
  v18 = type metadata accessor for PCUserAlertDefinition();
  v19 = *(*(v18 - 8) + 8);

  v19(v0 + 16, v18);
  PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.actionIndex.getter();
  *(v0 + 184) = *(v0 + 168);
  v20 = type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.subscript.getter();
  (*(*(v20 - 8) + 8))(v0 + 168, v20);
  sub_10013FFB4(0xD00000000000001BLL, 0x80000001002A72B0, v82, v86);
  v85 = *(v0 + 488);
  if (v88)
  {
    v6 = *(v0 + 464);
    v21 = *(v0 + 408);
    v78 = *(v0 + 416);
    v81 = *(v0 + 456);
    v75 = *(v0 + 400);
    v22 = *(v0 + 384);
    v70 = *(v0 + 376);
    v72 = *(v0 + 392);
    v23 = *(v0 + 328);
    v66 = *(v0 + 320);
    v68 = *(v0 + 336);
    v24 = *(v0 + 296);
    v64 = *(v0 + 304);
    v25 = *(v0 + 288);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 240);

    (*(v26 + 8))(v27, v28);
    (*(v24 + 8))(v64, v25);
    (*(v23 + 8))(v68, v66);
    (*(v22 + 8))(v72, v70);
    (*(v21 + 8))(v78, v75);
LABEL_8:
    (*(v6 + 8))(v85, v81);
    v31 = *(v0 + 480);
    v30 = *(v0 + 488);
    v32 = *(v0 + 448);
    v33 = *(v0 + 416);
    v34 = *(v0 + 392);
    v35 = *(v0 + 368);
    v37 = *(v0 + 336);
    v36 = *(v0 + 344);
    v38 = *(v0 + 304);
    v39 = *(v0 + 312);
    v79 = *(v0 + 280);
    v83 = *(v0 + 272);
    v87 = *(v0 + 256);

    v40 = *(v0 + 8);
    goto LABEL_9;
  }

  v69 = *(v0 + 456);
  v71 = *(v0 + 480);
  v73 = *(v0 + 448);
  v65 = *(v0 + 416);
  v67 = *(v0 + 464);
  v62 = *(v0 + 408);
  v63 = *(v0 + 400);
  v42 = *(v0 + 384);
  v59 = *(v0 + 376);
  v60 = *(v0 + 392);
  v76 = *(v0 + 368);
  v80 = *(v0 + 344);
  v58 = *(v0 + 336);
  v43 = *(v0 + 328);
  v57 = *(v0 + 320);
  v44 = *(v0 + 304);
  v84 = *(v0 + 312);
  v45 = *(v0 + 296);
  v54 = *(v0 + 288);
  v46 = *(v0 + 272);
  v47 = *(v0 + 280);
  v48 = *(v0 + 264);
  v89 = *(v0 + 256);
  v49 = *(v0 + 240);
  v50 = *(v0 + 232);
  v61 = *(v0 + 192);
  v51 = *(v0 + 496);
  (*(*(v0 + 248) + 8))();
  (*(v48 + 16))(v46, v47, v50);
  v52 = PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.textResponse.getter();
  v55 = v53;
  v56 = v52;

  (*(v48 + 8))(v47, v50);
  (*(v45 + 8))(v44, v54);
  (*(v43 + 8))(v58, v57);
  (*(v42 + 8))(v60, v59);
  (*(v62 + 8))(v65, v63);
  (*(v67 + 8))(v85, v69);
  sub_1000F07AC(v46, v56, v55, v50, v61);

  v40 = *(v0 + 8);
LABEL_9:

  return v40();
}

uint64_t sub_100250A44()
{
  v1 = *(v0 + 464);
  v25 = *(v0 + 456);
  v27 = *(v0 + 488);
  v2 = *(v0 + 408);
  v23 = *(v0 + 416);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v9 = *(v0 + 320);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v23, v3);
  (*(v1 + 8))(v27, v25);
  v11 = *(v0 + 480);
  v10 = *(v0 + 488);
  v12 = *(v0 + 448);
  v13 = *(v0 + 416);
  v14 = *(v0 + 392);
  v15 = *(v0 + 368);
  v17 = *(v0 + 336);
  v16 = *(v0 + 344);
  v18 = *(v0 + 304);
  v19 = *(v0 + 312);
  v22 = *(v0 + 280);
  v24 = *(v0 + 272);
  v26 = *(v0 + 256);
  v28 = *(v0 + 176);

  v20 = *(v0 + 8);

  return v20();
}

double PCUserAlertProtocol.presentationContext.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 24))();
  v6 = *(a2 + 32);
  v6(v26, a1, a2);
  v42 = v26[0];
  sub_100009848(&v42, v36, &qword_10033A238, &qword_10027D3E0);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for PCUserAlertDefinition();
  v8 = *(*(v7 - 8) + 8);
  v8(v26, v7);
  v6(v27, a1, a2);
  v41 = v28;
  sub_100009848(&v41, v36, &qword_10033A238, &qword_10027D3E0);
  v8(v27, v7);
  v6(v29, a1, a2);
  v40 = v30;
  sub_100009848(&v40, v36, &qword_10033A238, &qword_10027D3E0);
  v8(v29, v7);
  v6(v31, a1, a2);
  v8(v31, v7);
  v38 = v31[6];
  v39 = v32;
  v6(v33, a1, a2);
  v8(v33, v7);
  v19 = v34;
  v6(v35, a1, a2);
  v37 = v35[8];

  v8(v35, v7);
  v25 = v37;
  v6(v36, a1, a2);
  v9 = v36[9];
  v10 = v36[10];

  v8(v36, v7);
  v21 = a1;
  v22 = a2;
  v23 = v9;
  v24 = v10;
  v11 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_10007F168(sub_100252330, v20, v11, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v13);
  (*(*(v11 - 8) + 8))(&v37, v11);

  v15 = type metadata accessor for PCUserAlertPresentationContext();
  v16 = v41;
  *(a3 + v15[5]) = v42;
  *(a3 + v15[6]) = v16;
  result = *&v40;
  *(a3 + v15[7]) = v40;
  v18 = a3 + v15[8];
  *(v18 + 8) = v39;
  *v18 = v38;
  *(a3 + v15[9]) = v19;
  *(a3 + v15[10]) = v14;
  return result;
}

uint64_t sub_100250F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100035D04(&qword_100351080, &qword_1002966F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v33[-v8];
  v10 = sub_100035D04(&qword_100351300, &unk_100296828);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33[-v13];
  if (qword_1003392E0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_100350FE8);
  sub_1000E6048(a1);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  sub_1000E605C(a1);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v14;
    v19 = v18;
    v35 = swift_slowAlloc();
    v38 = v35;
    *v19 = 136315138;
    v20 = sub_1000376F8(a1);
    v37 = a2;
    v22 = sub_100017494(v20, v21, &v38);
    v34 = v17;
    v23 = v6;
    v24 = v11;
    v25 = a1;
    v26 = v9;
    v27 = v10;
    v28 = a3;
    v29 = v22;

    *(v19 + 4) = v29;
    a3 = v28;
    v10 = v27;
    v9 = v26;
    a1 = v25;
    v11 = v24;
    v6 = v23;
    _os_log_impl(&_mh_execute_header, v16, v34, "PCViewService event: %s", v19, 0xCu);
    sub_10000903C(v35);

    v14 = v36;
  }

  v30 = *(v6 + 48);
  *v9 = a1;
  v31 = type metadata accessor for UUID();
  (*(*(v31 - 8) + 16))(v9 + v30, a3, v31);
  sub_1000E6048(a1);
  sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  AsyncStream.Continuation.yield(_:)();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100251284(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_1003511F8, &unk_100296750);
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  __chkstk_darwin(v4);
  v7 = &v47 - v6;
  v8 = sub_100035D04(&qword_10034B6B0, &qword_1002967F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v52 = &v47 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = (&v47 - v15);
  __chkstk_darwin(v14);
  v54 = &v47 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003392E0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100003078(v23, qword_100350FE8);
  v24 = *(v19 + 16);
  v51 = a1;
  v24(v22, a1, v18);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v53 = a2;
  if (v27)
  {
    v48 = v7;
    v49 = v4;
    v28 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57[0] = v47;
    *v28 = 136315394;
    sub_1002528E0(&qword_10033E718, &type metadata accessor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v19 + 8))(v22, v18);
    v32 = sub_100017494(v29, v31, v57);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    if (a2)
    {
      v56 = a2;
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      v33 = String.init<A>(describing:)();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = v54;
    v38 = sub_100017494(v33, v35, v57);

    *(v28 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "Invalidating %s... error=%s", v28, 0x16u);
    swift_arrayDestroy();

    v7 = v48;
    v4 = v49;
    v37 = v55;
  }

  else
  {

    (*(v19 + 8))(v22, v18);
    v36 = v54;
    v37 = v55;
  }

  swift_beginAccess();
  sub_10020935C(v51, v36);
  swift_endAccess();
  sub_100009848(v36, v16, &qword_10034B6B0, &qword_1002967F0);
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  v40 = *(*(active - 8) + 48);
  v41 = v40(v16, 1, active);
  v42 = v53;
  if (v41 == 1)
  {
    sub_10025281C(v16);
  }

  else
  {
    v43 = v16[5];
    sub_100252884(v16);
    sub_10009DBD8();
  }

  v44 = v52;
  if (v42)
  {
    sub_100009848(v36, v52, &qword_10034B6B0, &qword_1002967F0);
    if (v40(v44, 1, active) != 1)
    {
      (*(v37 + 16))(v7, v44 + *(active + 24), v4);
      swift_errorRetain();
      sub_100252884(v44);
      v57[0] = v42;
LABEL_18:
      AsyncThrowingStream.Continuation.finish(throwing:)();
      (*(v37 + 8))(v7, v4);
      v45 = v36;
      return sub_10025281C(v45);
    }
  }

  else
  {
    v44 = v50;
    sub_100009848(v36, v50, &qword_10034B6B0, &qword_1002967F0);
    if (v40(v44, 1, active) != 1)
    {
      (*(v37 + 16))(v7, v44 + *(active + 24), v4);
      sub_100252884(v44);
      v57[0] = 0;
      goto LABEL_18;
    }
  }

  sub_10025281C(v36);
  v45 = v44;
  return sub_10025281C(v45);
}

uint64_t sub_1002518B8(uint64_t a1)
{
  v38 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
  v35 = *(v38 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100035D04(&qword_1003512B8, &qword_1002967F8);
  v34 = *(v36 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v36);
  v33 = &v32 - v5;
  v6 = sub_100035D04(&qword_10034B6B0, &qword_1002967F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  v19 = *(active - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(active);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  PCProximityHandoffServiceInvocations.UserAlertAction.Parameters.id.getter();
  v23 = v40;
  swift_beginAccess();
  v24 = *(v23 + 112);
  if (*(v24 + 16))
  {

    v25 = sub_100019110(v17);
    if (v26)
    {
      sub_10025298C(*(v24 + 56) + *(v19 + 72) * v25, v12);
      (*(v14 + 8))(v17, v13);

      v27 = 0;
      goto LABEL_6;
    }
  }

  (*(v14 + 8))(v17, v13);
  v27 = 1;
LABEL_6:
  (*(v19 + 56))(v12, v27, 1, active);
  sub_100009848(v12, v10, &qword_10034B6B0, &qword_1002967F0);
  if ((*(v19 + 48))(v10, 1, active) == 1)
  {
    sub_100035D04(&qword_1003512C0, &qword_100296800);
    sub_100252928();
    swift_allocError();
    *v28 = 0xD000000000000017;
    v28[1] = 0x80000001002A7270;
    swift_willThrow();
    return sub_10025281C(v12);
  }

  else
  {
    sub_10025281C(v12);
    sub_10008CD9C(v10, v22);
    v30 = *(active + 24);
    (*(v35 + 16))(v37, v39, v38);
    sub_100035D04(&qword_1003511F8, &unk_100296750);
    v31 = v33;
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v34 + 8))(v31, v36);
    return sub_100252884(v22);
  }
}

uint64_t sub_100251D60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PCUserAlertManager(0);
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t PCUserAlert.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PCUserAlert.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PCUserAlert.definition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PCUserAlert.definition;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for PCUserAlertDefinition();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

uint64_t sub_100251EA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = direct field offset for PCUserAlert.id;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  v10 = v7 + direct field offset for PCUserAlert.definition;
  v11 = *(a2 + 48);
  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a2 + 64);
  *(v10 + 80) = *(a2 + 80);
  v12 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v12;
  return v7;
}

uint64_t sub_100251F5C(uint64_t a1, uint64_t a2)
{
  v5 = direct field offset for PCUserAlert.id;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  v7 = v2 + direct field offset for PCUserAlert.definition;
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  v9 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v9;
  return v2;
}

uint64_t sub_10025201C()
{
  if (qword_1003392E8 != -1)
  {
    swift_once();
  }

  v1 = direct field offset for PCUserAlert.id;
  *(v0 + 24) = qword_10038B6D0;
  *(v0 + 32) = v1;

  return (_swift_task_switch)(sub_1002520BC);
}

uint64_t sub_1002520BC()
{
  v1 = v0[3];
  sub_100251284(v0[2] + v0[4], 0);
  v2 = v0[1];

  return v2();
}

uint64_t PCUserAlert.deinit()
{
  v1 = direct field offset for PCUserAlert.id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + direct field offset for PCUserAlert.definition + 8);
  v4 = *(v0 + direct field offset for PCUserAlert.definition + 24);
  v5 = *(v0 + direct field offset for PCUserAlert.definition + 40);
  v6 = *(v0 + direct field offset for PCUserAlert.definition + 64);
  v7 = *(v0 + direct field offset for PCUserAlert.definition + 80);

  return v0;
}

uint64_t PCUserAlert.__deallocating_deinit()
{
  PCUserAlert.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100252234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = direct field offset for PCUserAlert.definition;
  v6 = *(a1 + 80);
  v7 = type metadata accessor for PCUserAlertDefinition();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v4 + v5, v7);
}

uint64_t sub_1002522B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for PCUserAlert.id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100252330@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_100252370(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_10025241C()
{
  sub_10025253C(319, &qword_100351078, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10025253C(319, &unk_100351088, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10025253C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100035D4C(&qword_100351080, &qword_1002966F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1002525A8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002526A0()
{
  sub_10025273C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PCViewServiceHandle();
    if (v1 <= 0x3F)
    {
      sub_1002527A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10025273C()
{
  result = qword_100351268;
  if (!qword_100351268)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100351268);
  }

  return result;
}

void sub_1002527A0()
{
  if (!qword_100351270)
  {
    type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
    sub_100035D4C(&unk_100346020, &qword_100271A00);
    v0 = type metadata accessor for AsyncThrowingStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &qword_100351270);
    }
  }
}

uint64_t sub_10025281C(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10034B6B0, &qword_1002967F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100252884(uint64_t a1)
{
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t sub_1002528E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100252928()
{
  result = qword_1003512C8;
  if (!qword_1003512C8)
  {
    sub_100035D4C(&qword_1003512C0, &qword_100296800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003512C8);
  }

  return result;
}

uint64_t sub_10025298C(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1002529F0(uint64_t a1)
{
  v3 = *(sub_100035D04(&qword_1003512B0, &qword_1002967E8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100250F6C(a1, v1 + v4, v7);
}

uint64_t sub_100252AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E6584;

  return sub_10024EE44(a1, v4, v5, v6);
}

uint64_t sub_100252B84(uint64_t a1)
{
  v4 = *(sub_100035D04(&qword_1003512A8, &qword_1002967E0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009D6D4;

  return sub_10024F250(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_100252CB4(uint64_t a1)
{
  result = sub_100252CDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100252CDC()
{
  result = qword_100351338;
  if (!qword_100351338)
  {
    type metadata accessor for RapportProxy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100351338);
  }

  return result;
}

uint64_t sub_100252D34()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100351320);
  v1 = sub_100003078(v0, qword_100351320);
  if (qword_100339110 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B420);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100252DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void, void))
{
  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_100351320);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v23 = a8;
    v15 = swift_slowAlloc();
    v16 = a2;
    v17 = a3;
    v18 = swift_slowAlloc();
    v24 = v18;
    *v15 = 136315138;
    v19 = static String._fromSubstring(_:)();
    v21 = sub_100017494(v19, v20, &v24);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received response for messageID: %s", v15, 0xCu);
    sub_10000903C(v18);
    a3 = v17;
    a2 = v16;

    a8 = v23;
  }

  return a8(a1, a2, a3);
}

void sub_100252FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100351320);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v12 = v16;
    *v11 = 136315138;
    v13 = static String._fromSubstring(_:)();
    v15 = sub_100017494(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Completion for messageID: %s", v11, 0xCu);
    sub_10000903C(v12);
  }

  if (a6)
  {
    a6(a1);
  }
}

uint64_t sub_100253174(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, id a7)
{
  v76 = a4;
  v77 = a3;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88[3] = a6;
  v88[4] = a7;
  v17 = sub_10000F798(v88);
  v18 = *(*(a6 - 8) + 16);
  v82 = v17;
  v81 = a6;
  v18(v17, a1, a6);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v13 + 8))(v16, v12);
  v80 = sub_10000B584(8);
  v79 = v19;
  v78 = v20;
  v22 = v21;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100003078(v23, qword_100351320);
  sub_10007E790(v88, aBlock);
  v24 = a2;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v75 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v86[0] = v73;
    *v28 = 136315906;
    *(v28 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A25F0, v86);
    *(v28 + 12) = 2080;
    sub_10007E790(aBlock, &v83);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v30 = a5;
    v31 = String.init<A>(describing:)();
    v74 = a7;
    v33 = v32;
    sub_10000903C(aBlock);
    v34 = sub_100017494(v31, v33, v86);

    *(v28 + 14) = v34;
    a5 = v30;
    *(v28 + 22) = 2112;
    *(v28 + 24) = v24;
    *v29 = v24;
    *(v28 + 32) = 2080;
    v35 = v24;

    v36 = static String._fromSubstring(_:)();
    v38 = v37;

    v39 = sub_100017494(v36, v38, v86);
    a7 = v74;

    *(v28 + 34) = v39;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s: request=%s, rpCLDevice=%@, messageID=%s", v28, 0x2Au);
    sub_1000030B0(v29);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v40 = (*(a7 + 2))(v81, a7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v43 = Strong;
    v44 = v42;

    if (v42)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v45 = aBlock[0];
      if (aBlock[0] && (v46 = [aBlock[0] discoveryToken], v45, v46))
      {
        sub_100159FB0();
        v47 = sub_100168F0C(v46);
        v49 = v48;

        if (v49 >> 60 != 15)
        {
          strcpy(&v83, "rangingToken");
          BYTE13(v83) = 0;
          HIWORD(v83) = -5120;
          AnyHashable.init<A>(_:)();
          v84 = &type metadata for Data;
          *&v83 = v47;
          *(&v83 + 1) = v49;
          sub_1000516B4(&v83, v86);
          sub_10006DA04(v47, v49);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = v40;
          sub_10004D368(v86, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v47, v49);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v51 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v51)
  {

    v74 = v51;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v54 = 136315138;

      v56 = a7;
      v57 = static String._fromSubstring(_:)();
      v59 = v58;

      v60 = sub_100017494(v57, v59, aBlock);

      *(v54 + 4) = v60;
      a7 = v56;
      _os_log_impl(&_mh_execute_header, v52, v53, "Sending request with messageID: %s", v54, 0xCu);
      sub_10000903C(v55);
    }

    (*(a7 + 1))(v81, a7);
    v61 = String._bridgeToObjectiveC()();

    v62.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v63 = [v75 effectiveIdentifier];
    if (!v63)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = String._bridgeToObjectiveC()();
    }

    v64 = swift_allocObject();
    v65 = v79;
    v64[2] = v80;
    v64[3] = v65;
    v64[4] = v78;
    v64[5] = v22;
    v66 = v76;
    v64[6] = v77;
    v64[7] = v66;
    aBlock[4] = sub_100253BA4;
    aBlock[5] = v64;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100151C6C;
    aBlock[3] = &unk_1003172A0;
    v67 = _Block_copy(aBlock);

    v68 = v74;
    [v74 sendRequestID:v61 request:v62.super.isa destinationID:v63 options:0 responseHandler:v67];
    _Block_release(v67);
  }

  else
  {

    v63 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v63, v69, "### Could not send request - no client?", v70, 2u);
    }
  }

  return sub_10000903C(v88);
}

uint64_t sub_100253C3C()
{
  sub_100253BE4();

  return swift_deallocClassInstance();
}

void *sub_100253C94()
{
  v1 = v0;
  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B240;
  v3 = sub_100035D04(&qword_1003423B0, &unk_100296970);
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v6 = sub_1000C8188(48, 0xE100000000000000, 0xD000000000000022, 0x80000001002A7380, v2);

  v1[2] = v6;
  v7 = objc_allocWithZone(sub_100035D04(&qword_1003423A8, qword_100277700));
  v8 = v5;
  v9 = sub_1000C83E0(0, 1, 0xD000000000000021, 0x80000001002A73B0, v2);

  v1[3] = v9;
  v10 = objc_allocWithZone(sub_100035D04(&qword_1003422D8, &qword_100277650));
  v11 = v8;
  v12 = sub_1000C7160(0, 0xD000000000000020, 0x80000001002A73E0, v2);

  v1[4] = v12;
  v13 = objc_allocWithZone(v3);
  v14 = v11;
  v15 = sub_1000C8188(0xD000000000000011, 0x80000001002A2BD0, 0xD00000000000001ELL, 0x80000001002A7410, v2);

  v1[5] = v15;
  v16 = objc_allocWithZone(v3);
  v17 = v14;
  v18 = sub_1000C8188(0x697665446B636F4DLL, 0xEA00000000006563, 0xD00000000000001DLL, 0x80000001002A7430, v2);

  v1[6] = v18;
  v19 = objc_allocWithZone(sub_100035D04(&qword_1003423A0, &qword_1002776F8));
  v20 = v17;
  v21 = sub_1000C8640(5, 0xD00000000000001FLL, 0x80000001002A7450, v2);

  v1[7] = v21;
  v22 = objc_allocWithZone(sub_100035D04(&qword_100342378, &qword_1002776F0));
  v23 = sub_1000C7F8C(0, 1, 0xD00000000000002CLL, 0x80000001002A7470, v2);

  v1[8] = v23;
  v24 = objc_allocWithZone(v3);
  v25 = sub_1000C8188(0, 0xE000000000000000, 0xD00000000000002ELL, 0x80000001002A74A0, v2);

  v1[9] = v25;
  return v1;
}

uint64_t sub_100253F94(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t sub_100253FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100253FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100254040(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t type metadata accessor for TransferEvent()
{
  result = qword_100351588;
  if (!qword_100351588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002540B8()
{
  type metadata accessor for PCInteractionDirection(319);
  if (v0 <= 0x3F)
  {
    sub_10025415C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HandoffTargetStatus();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_10025415C()
{
  result = qword_100351598;
  if (!qword_100351598)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100351598);
  }

  return result;
}

unint64_t sub_1002541C0(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1002541DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100254238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_100254298(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_10025484C(uint64_t a1, int64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      _StringGuts.grow(_:)(30);

      v8 = 0xD00000000000001BLL;
    }

    else
    {
      _StringGuts.grow(_:)(20);

      v8 = 0xD000000000000011;
    }

    v16 = v8;
    v13._countAndFlagsBits = sub_100078EF8(a1, a2 & 1, a3);
    String.append(_:)(v13);
    goto LABEL_30;
  }

  if (a4 == 2)
  {
    _StringGuts.grow(_:)(19);

    v16 = 0xD000000000000010;
    if (a2 <= 1)
    {
      if (!a2)
      {
        v9 = 0xE800000000000000;
        v10 = 0x656D695465636146;
        goto LABEL_29;
      }

      if (a2 == 1)
      {
        v9 = 0xE500000000000000;
        v10 = 0x636973754DLL;
        goto LABEL_29;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          v9 = 0xEB00000000676E69;
          v10 = 0x79616C5020776F4ELL;
          goto LABEL_29;
        case 3:
          v9 = 0xEF6F6D65446C6F72;
          v10 = 0x746E6F43786F7250;
          goto LABEL_29;
        case 4:
          v9 = 0xE600000000000000;
          v10 = 0x697261666153;
LABEL_29:
          sub_10009D534(a1, a2);
          v14._countAndFlagsBits = v10;
          v14._object = v9;
          String.append(_:)(v14);
LABEL_30:

          v15._countAndFlagsBits = 41;
          v15._object = 0xE100000000000000;
          String.append(_:)(v15);
          return v16;
      }
    }

    v10 = a1;
    v9 = a2;
    goto LABEL_29;
  }

  if (a4 == 3)
  {
    _StringGuts.grow(_:)(19);

    v16 = 0xD000000000000011;
    v6._countAndFlagsBits = sub_100254BB4(a1);
    String.append(_:)(v6);

    return v16;
  }

  v11 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    return 0x726566736E617274;
  }

  if (a1 == 1 && !v11)
  {
    return 0xD000000000000013;
  }

  if (a1 == 2 && !v11)
  {
    return 0xD000000000000014;
  }

  if (a1 != 3 || v11)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000016;
}

uint64_t sub_100254BB4(uint64_t a1)
{
  if (!a1)
  {
    return 0x6164696C61766E69;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000CDF40(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v18 = *v4;
      v5 = String.init<A>(describing:)();
      v19 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1000CDF40((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v19;
      }

      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 0x2865766C6F736572;
}

uint64_t sub_100254D5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_100254FC0(v2, v3);
  }
}

uint64_t sub_100254EDC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 62;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (*a1 == 0x8000000000000000)
    {
      if (v2 == 0x8000000000000000)
      {
        return 1;
      }
    }

    else if (v2 == 0x8000000000000008)
    {
      return 1;
    }
  }

  else if (!(v2 >> 62))
  {
    return 1;
  }

  return 0;
}

unint64_t sub_100254F44(uint64_t a1)
{
  result = sub_100254F6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100254F6C()
{
  result = qword_1003515C8;
  if (!qword_1003515C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003515C8);
  }

  return result;
}

uint64_t sub_100254FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_100255034(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1001AE1FC();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_100255274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferEvent();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v24 - v9);
  v11 = sub_100035D04(&qword_1003515D0, &qword_100296CB8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  sub_100255614(a1, &v24 - v14, type metadata accessor for TransferEvent);
  sub_100255614(a2, &v15[v16], type metadata accessor for TransferEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100255614(v15, v10, type metadata accessor for TransferEvent);
      if (!swift_getEnumCaseMultiPayload())
      {
        v22 = *v10 == *&v15[v16];
        sub_10025567C(v15, type metadata accessor for TransferEvent);
        return v22;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 1 && swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10025567C(&v15[v16], type metadata accessor for TransferEvent);
      goto LABEL_16;
    }

LABEL_20:
    sub_1002555AC(v15);
    return 0;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload != 7 || swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_20;
      }

LABEL_16:
      sub_10025567C(v15, type metadata accessor for TransferEvent);
      return 1;
    }

    if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  sub_100255614(v15, v8, type metadata accessor for TransferEvent);
  v18 = *v8;
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1000D680C(v18);
    goto LABEL_20;
  }

  v19 = *&v15[v16];
  if (!(v18 >> 62))
  {
    sub_1000D680C(v18);
    v20 = v19 >> 62 == 0;
LABEL_22:
    v23 = v20;
    goto LABEL_25;
  }

  if (v18 >> 62 == 1)
  {
    sub_1000D680C(v18);
    v20 = v19 >> 62 == 1;
    goto LABEL_22;
  }

  if (v18 == 0x8000000000000000)
  {
    if (v19 == 0x8000000000000000)
    {
LABEL_29:
      v23 = 1;
      goto LABEL_26;
    }
  }

  else if (v19 == 0x8000000000000008)
  {
    goto LABEL_29;
  }

  v23 = 0;
LABEL_25:
  sub_1000D680C(v19);
LABEL_26:
  sub_10025567C(v15, type metadata accessor for TransferEvent);
  return v23;
}

uint64_t sub_1002555AC(uint64_t a1)
{
  v2 = sub_100035D04(&qword_1003515D0, &qword_100296CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100255614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025567C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002556DC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        if (a8 == 3)
        {
          if (a1)
          {
            if (a5)
            {
              v8 = *(a1 + 2);
              if (v8 == *(a5 + 16))
              {
                if (v8 && a1 != a5)
                {
                  v9 = a1 + 32;
                  v10 = (a5 + 32);
                  result = 1;
                  while (*v9 == *v10)
                  {
                    ++v9;
                    ++v10;
                    if (!--v8)
                    {
                      return result;
                    }
                  }

                  return 0;
                }

                return 1;
              }
            }
          }

          else if (!a5)
          {
            return 1;
          }
        }
      }

      else
      {
        v14 = a3 | a2;
        if (a3 | a2 | a1)
        {
          if (a1 != 1 || v14)
          {
            if (a1 != 2 || v14)
            {
              if (a1 != 3 || v14)
              {
                if (a8 != 4 || a5 != 4)
                {
                  return 0;
                }
              }

              else if (a8 != 4 || a5 != 3)
              {
                return 0;
              }
            }

            else if (a8 != 4 || a5 != 2)
            {
              return 0;
            }
          }

          else if (a8 != 4 || a5 != 1)
          {
            return 0;
          }

          if (!(a7 | a6))
          {
            return 1;
          }
        }

        else if (a8 == 4 && !(a7 | a6 | a5))
        {
          return 1;
        }
      }

      return 0;
    }

    if (a8 != 2)
    {
      return 0;
    }

    if (a2 <= 1)
    {
      if (!a2)
      {
        return !a6;
      }

      if (a2 == 1)
      {
        return a6 == 1;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          return a6 == 2;
        case 3:
          return a6 == 3;
        case 4:
          return a6 == 4;
      }
    }

    return a6 >= 5 && (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  if (a4)
  {
    if (a8 != 1)
    {
      return 0;
    }

    v12 = a2 & 1;
    v13 = a6 & 1;
  }

  else
  {
    if (a8)
    {
      return 0;
    }

    v12 = a2 & 1;
    v13 = a6 & 1;
  }

  return sub_100079248(a1, v12, a3, a5, v13, a7);
}

unint64_t sub_100255970(uint64_t a1)
{
  result = sub_100255998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100255998()
{
  result = qword_1003515D8;
  if (!qword_1003515D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003515D8);
  }

  return result;
}

unint64_t sub_1002559F0()
{
  result = qword_1003515E0;
  if (!qword_1003515E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003515E0);
  }

  return result;
}

void sub_100255A44()
{
  v1 = v0;
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003515E8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29286873696E6966, 0xE800000000000000, v46);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
    swift_retain_n();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v45 = v12;
      *v11 = 136315138;
      v47 = type metadata accessor for CardPresentationRecord();
      v46[0] = v7;

      v13 = sub_100057F14(v46);
      v15 = v14;
      sub_10000903C(v46);
      v16 = sub_100017494(v13, v15, &v45);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "### Found pending card: %s - sending now", v11, 0xCu);
      sub_10000903C(v12);
    }

    sub_1001D8AE4();
  }

  v17 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (v18)
  {
    v19 = *(v1 + v17);
    swift_retain_n();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136315138;
      v47 = type metadata accessor for EducationPresentationRecord();
      v46[0] = v18;

      v24 = sub_100057F8C(v46);
      v26 = v25;
      sub_10000903C(v46);
      v27 = sub_100017494(v24, v26, &v44);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "### Found pending education: %s - sending now", v22, 0xCu);
      sub_10000903C(v23);
    }

    sub_1001DC4FC();
  }

  v28 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
  swift_beginAccess();
  v29 = *(v1 + v28);
  if (v29)
  {
    v30 = *(v1 + v28);
    swift_retain_n();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      v47 = type metadata accessor for HintPresentationRecord();
      v46[0] = v29;

      v35 = sub_100057F50(v46);
      v37 = v36;
      sub_10000903C(v46);
      v38 = sub_100017494(v35, v37, &v43);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "### Found pending card: %s - sending now", v33, 0xCu);
      sub_10000903C(v34);
    }

    sub_1002471E8();
  }

  v39 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_published;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_published))
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "### Attempted double-publish", v42, 2u);
    }
  }

  else
  {
    sub_10025DBDC(v46);
    sub_100117FCC();
    sub_10025F19C(v46);
    *(v1 + v39) = 1;
  }
}

uint64_t sub_100255FF0(void (*a1)(uint64_t *, void, uint64_t, uint64_t), void (*a2)(void, void, void), unint64_t a3)
{
  v372 = a3;
  v5 = sub_100035D04(&qword_100345618, &qword_10027C938);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v358 = &v342 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v357 = (&v342 - v9);
  v354 = type metadata accessor for TransferEvent();
  v10 = *(*(v354 - 8) + 64);
  v11 = __chkstk_darwin(v354);
  v356 = &v342 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v355 = &v342 - v13;
  v14 = sub_100035D04(&qword_100350C60, &qword_100296120);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v344 = &v342 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v343 = (&v342 - v18);
  v19 = sub_100035D04(&qword_10034BE70, &unk_10028B4C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v348 = &v342 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v351 = (&v342 - v23);
  v24 = sub_100035D04(&qword_10034BE80, &unk_10028B4E0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v347 = &v342 - v26;
  v27 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v350 = &v342 - v29;
  v30 = sub_100035D04(&qword_100345620, &unk_10027C940);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v360 = &v342 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v362 = &v342 - v34;
  v35 = sub_100035D04(&qword_10034BE88, &unk_10028B620);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v346 = &v342 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v345 = &v342 - v40;
  v41 = __chkstk_darwin(v39);
  v352 = &v342 - v42;
  __chkstk_darwin(v41);
  v361 = &v342 - v43;
  v368 = type metadata accessor for ExperienceEvent(0);
  v349 = *(v368 - 8);
  v44 = *(v349 + 64);
  v45 = __chkstk_darwin(v368);
  v364 = &v342 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v369 = &v342 - v48;
  __chkstk_darwin(v47);
  v366 = &v342 - v49;
  v363 = type metadata accessor for ExperienceEffect(0);
  v50 = *(*(v363 - 8) + 64);
  v51 = __chkstk_darwin(v363);
  v365 = &v342 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v367 = &v342 - v53;
  v370 = sub_100035D04(&qword_100351BA0, &qword_100297018);
  v54 = *(*(v370 - 8) + 64);
  __chkstk_darwin(v370);
  v56 = &v342 - v55;
  v57 = type metadata accessor for Date();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  v61 = &v342 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = type metadata accessor for SessionEvent();
  v62 = *(*(v377 - 8) + 64);
  v63 = __chkstk_darwin(v377);
  v371 = (&v342 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = __chkstk_darwin(v63);
  v67 = &v342 - v66;
  __chkstk_darwin(v65);
  v69 = &v342 - v68;
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  v71 = sub_100003078(v70, qword_1003515E8);
  v378 = a1;
  sub_10025F520(a1, v69, type metadata accessor for SessionEvent);
  v72 = *(v58 + 16);
  v375 = v58 + 16;
  v374 = v72;
  v72(v61, a2, v57);
  v359 = v71;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v75 = os_log_type_enabled(v73, v74);
  v373 = v57;
  if (v75)
  {
    v353 = a2;
    v76 = swift_slowAlloc();
    v342 = swift_slowAlloc();
    *&v380 = v342;
    *v76 = 136315906;
    *(v76 + 4) = sub_100017494(0xD000000000000029, 0x80000001002A7970, &v380);
    *(v76 + 12) = 2080;
    sub_10025F520(v69, v67, type metadata accessor for SessionEvent);
    v77 = String.init<A>(describing:)();
    v79 = v78;
    sub_10025F588(v69, type metadata accessor for SessionEvent);
    v80 = sub_100017494(v77, v79, &v380);
    v57 = v373;

    *(v76 + 14) = v80;
    *(v76 + 22) = 2080;
    sub_10015CC9C();
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v82;
    (*(v58 + 8))(v61, v57);
    v84 = sub_100017494(v81, v83, &v380);

    *(v76 + 24) = v84;
    *(v76 + 32) = 2080;
    v85 = v372;
    if ((v372 & 0x100000000) != 0)
    {
      v86 = 0xE300000000000000;
      v87 = 7104878;
    }

    else
    {
      v379 = v372;
      v87 = String.init<A>(describing:)();
      v86 = v88;
    }

    v89 = sub_100017494(v87, v86, &v380);

    *(v76 + 34) = v89;
    _os_log_impl(&_mh_execute_header, v73, v74, "%s: event=%s, timestamp=%s, distance=%s", v76, 0x2Au);
    swift_arrayDestroy();

    a2 = v353;
  }

  else
  {

    (*(v58 + 8))(v61, v57);
    sub_10025F588(v69, type metadata accessor for SessionEvent);
    v85 = v372;
  }

  sub_10025F520(v378, v56, type metadata accessor for SessionEvent);
  v90 = v370;
  v91 = a2;
  v374(&v56[*(v370 + 28)], a2, v57);
  v92 = &v56[*(v90 + 32)];
  *v92 = v85;
  v93 = HIDWORD(v85) & 1;
  v92[4] = v93;
  v94 = v376;
  swift_beginAccess();
  v95 = *(v94 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v94 + 64) = v95;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v95 = sub_1000AFDC0(0, v95[2] + 1, 1, v95);
    *(v94 + 64) = v95;
  }

  v98 = v95[2];
  v97 = v95[3];
  if (v98 >= v97 >> 1)
  {
    v95 = sub_1000AFDC0((v97 > 1), v98 + 1, 1, v95);
    *(v94 + 64) = v95;
  }

  *(&v381 + 1) = v90;
  *v382 = sub_10025F40C();
  v99 = sub_10000F798(&v380);
  sub_100009848(v56, v99, &qword_100351BA0, &qword_100297018);
  v95[2] = v98 + 1;
  sub_10000E754(&v380, &v95[5 * v98 + 4]);
  sub_1000097E8(v56, &qword_100351BA0, &qword_100297018);
  *(v94 + 64) = v95;
  swift_endAccess();
  v100 = v371;
  sub_10025F520(v378, v371, type metadata accessor for SessionEvent);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v102 = v373;
    if (!result)
    {
      v103 = *(sub_100035D04(&qword_10033B528, &unk_100272000) + 48);
      v104 = v367;
      sub_10025F4B8(v100, v367, type metadata accessor for ExperienceEffect);
      v105 = v366;
      sub_10025F4B8(v100 + v103, v366, type metadata accessor for ExperienceEvent);
      v106 = v365;
      sub_10025F520(v104, v365, type metadata accessor for ExperienceEffect);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 7)
        {
          if (EnumCaseMultiPayload != 6)
          {
            goto LABEL_137;
          }

          goto LABEL_51;
        }

        if (EnumCaseMultiPayload == 9)
        {
LABEL_51:
          sub_10025F588(v105, type metadata accessor for ExperienceEvent);
          v134 = type metadata accessor for ExperienceEffect;
          v135 = type metadata accessor for ExperienceEffect;
          v136 = v104;
LABEL_56:
          v137 = v134;
LABEL_57:
          sub_10025F588(v136, v137);
          v131 = v106;
          v130 = v135;
          return sub_10025F588(v131, v130);
        }

        goto LABEL_137;
      }

      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_137;
        }

        v156 = v106[16];
        if (v156 < 0)
        {
          sub_100094CB0(*v106, *(v106 + 1), v156);
          goto LABEL_137;
        }

        if (!*v106)
        {
          sub_10025D1D4(v91, v372 | (v93 << 32), v105);
          goto LABEL_137;
        }

        if (*v106 != 1)
        {
LABEL_137:
          v193 = v105;
          goto LABEL_138;
        }

        v157 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
        swift_beginAccess();
        v158 = *(v94 + v157);
        if (v158)
        {
          swift_endAccess();
          v159 = v350;
          sub_10025F520(v105, v350, type metadata accessor for ExperienceEvent);
          (*(v349 + 56))(v159, 0, 1, v368);
          v160 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger;
          swift_beginAccess();

          sub_10011D5D8(v159, v158 + v160, &qword_100342A10, &qword_100278A10);
          swift_endAccess();
          sub_1002478CC();
LABEL_95:

          sub_1000097E8(v159, &qword_100342A10, &qword_100278A10);
          v193 = v105;
LABEL_138:
          sub_10025F588(v193, type metadata accessor for ExperienceEvent);
          v130 = type metadata accessor for ExperienceEffect;
          v131 = v104;
          return sub_10025F588(v131, v130);
        }

        goto LABEL_129;
      }

      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          goto LABEL_51;
        }

        v132 = 0;
        v133 = *v106;
        if (v133 > 3)
        {
          if (v133 == 4)
          {
            v132 = 2;
          }

          else if (v133 == 5)
          {
            v132 = 3;
          }
        }

        else if (v133 == 2)
        {
          v132 = 1;
        }

        else if (v133 == 3)
        {
          goto LABEL_137;
        }

        sub_100037298(v132);
        goto LABEL_137;
      }

      v186 = *v106;
      v187 = *(v94 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
      if (v186 == 5)
      {
        v159 = v350;
        v188 = v349;
        if (v187)
        {
          sub_10025F520(v105, v350, type metadata accessor for ExperienceEvent);
          (*(v188 + 56))(v159, 0, 1, v368);
          v189 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger;
          swift_beginAccess();

          sub_10011D5D8(v159, v187 + v189, &qword_100342A10, &qword_100278A10);
          swift_endAccess();
          sub_1001D90FC();

          sub_1000097E8(v159, &qword_100342A10, &qword_100278A10);
        }

        v190 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        swift_beginAccess();
        v191 = *(v94 + v190);
        if (v191)
        {
          swift_endAccess();
          sub_10025F520(v105, v159, type metadata accessor for ExperienceEvent);
          (*(v188 + 56))(v159, 0, 1, v368);
          v192 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger;
          swift_beginAccess();

          sub_10011D5D8(v159, v191 + v192, &qword_100342A10, &qword_100278A10);
          swift_endAccess();
          sub_1001DC72C();
          goto LABEL_95;
        }

LABEL_129:
        sub_10025F588(v105, type metadata accessor for ExperienceEvent);
        v235 = v104;
LABEL_130:
        sub_10025F588(v235, type metadata accessor for ExperienceEffect);
        return swift_endAccess();
      }

      if (!v187)
      {
        sub_10025BF40(v91, v372 | (v93 << 32), v105);
      }

      v194 = v361;
      v195 = v352;
      if (v186 != 3)
      {
        if (v186 == 4)
        {
          sub_10025F588(v366, type metadata accessor for ExperienceEvent);
          v130 = type metadata accessor for ExperienceEffect;
          v131 = v367;
          return sub_10025F588(v131, v130);
        }

        v247 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        swift_beginAccess();
        v104 = v367;
        v105 = v366;
        if (!*(v94 + v247))
        {
          sub_10025C9A4(v91, v372 | (v93 << 32), v366);
        }

        if (v186)
        {
          if (v186 == 1)
          {
            goto LABEL_137;
          }

          swift_beginAccess();
          v248 = *(v94 + v247);
          if (v248)
          {
            swift_endAccess();
            v249 = v362;
            v374(v362, v91, v102);
            v250 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
            (*(*(v250 - 8) + 56))(v249, 0, 1, v250);
            v251 = &OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented;
LABEL_190:
            v316 = *v251;
            swift_beginAccess();

            sub_1000097E8(v248 + v316, &qword_100345620, &unk_10027C940);
            sub_10003693C(v249, v248 + v316, &qword_100345620, &unk_10027C940);
            swift_endAccess();
            sub_10025F588(v105, type metadata accessor for ExperienceEvent);
            v176 = type metadata accessor for ExperienceEffect;
            v177 = v104;
            goto LABEL_191;
          }
        }

        else
        {
          swift_beginAccess();
          v248 = *(v94 + v247);
          if (v248)
          {
            swift_endAccess();
            v249 = v362;
            v374(v362, v91, v102);
            v315 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
            (*(*(v315 - 8) + 56))(v249, 0, 1, v315);
            v251 = &OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
            goto LABEL_190;
          }
        }

        sub_10025F588(v105, type metadata accessor for ExperienceEvent);
        sub_10025F588(v104, type metadata accessor for ExperienceEffect);
        return swift_endAccess();
      }

      v241 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
      swift_beginAccess();
      v242 = *(v94 + v241);
      if (!v242)
      {
        sub_10025F588(v366, type metadata accessor for ExperienceEvent);
        v235 = v367;
        goto LABEL_130;
      }

      swift_endAccess();
      v243 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
      v374(&v194[*(v243 + 28)], v91, v102);
      *v194 = xmmword_100296DE0;
      (*(*(v243 - 8) + 56))(v194, 0, 1, v243);
      sub_100009848(v194, v195, &qword_10034BE88, &unk_10028B620);
      v244 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
      swift_beginAccess();

      sub_10011D5D8(v195, v242 + v244, &qword_10034BE88, &unk_10028B620);
      swift_endAccess();
      sub_1001DC4FC();
      sub_1000097E8(v195, &qword_10034BE88, &unk_10028B620);
      sub_1000097E8(v194, &qword_10034BE88, &unk_10028B620);
      sub_10025F588(v366, type metadata accessor for ExperienceEvent);
      v245 = type metadata accessor for ExperienceEffect;
      v246 = &v382[24];
      goto LABEL_197;
    }

    v126 = v369;
    sub_10025F4B8(v100, v369, type metadata accessor for ExperienceEvent);
    v106 = v364;
    sub_10025F520(v126, v364, type metadata accessor for ExperienceEvent);
    v127 = swift_getEnumCaseMultiPayload();
    if (v127 <= 4)
    {
      if (v127 > 1)
      {
        if (v127 == 2)
        {
          goto LABEL_38;
        }

        if (v127 == 3)
        {
          v128 = *v106;
          if (v128 <= 2)
          {
            if (*v106)
            {
              if (v128 == 1)
              {
                v129 = 16;
              }

              else
              {
                v129 = 15;
              }

              goto LABEL_154;
            }
          }

          else if (v128 - 4 >= 6)
          {
            v129 = 17;
LABEL_154:
            sub_100037298(v129);
          }

LABEL_38:
          v130 = type metadata accessor for ExperienceEvent;
          v131 = v126;
          return sub_10025F588(v131, v130);
        }

LABEL_55:
        v134 = type metadata accessor for ExperienceEvent;
        v135 = type metadata accessor for ExperienceEvent;
        v136 = v126;
        goto LABEL_56;
      }

      if (!v127)
      {
        v139 = *v106;
        v138 = *(v106 + 1);
        v140 = v106[16];
        v141 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
        v142 = v376;
        swift_beginAccess();
        v143 = *(v142 + v141);
        if (v143)
        {
          if ((v140 & 0x80) == 0)
          {
            if (v140 <= 1)
            {
              v236 = v373;
              if (v140)
              {
                v310 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
                v311 = v361;
                v374(&v361[*(v310 + 28)], v91, v236);
                *v311 = v139;
                v311[1] = v138;
                (*(*(v310 - 8) + 56))(v311, 0, 1, v310);
                v312 = v352;
                sub_100009848(v311, v352, &qword_10034BE88, &unk_10028B620);
                v313 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_denied;
                swift_beginAccess();

                sub_10025F470(v139, v138, 1);
                sub_10011D5D8(v312, v143 + v313, &qword_10034BE88, &unk_10028B620);
                swift_endAccess();
                sub_1002471E8();
                sub_1000097E8(v312, &qword_10034BE88, &unk_10028B620);
                sub_1000097E8(v311, &qword_10034BE88, &unk_10028B620);
                v150 = v139;
                v151 = v138;
                v152 = 1;
              }

              else
              {
                v237 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
                v238 = v351;
                v374(v351 + *(v237 + 28), v91, v236);
                *v238 = v139;
                (*(*(v237 - 8) + 56))(v238, 0, 1, v237);
                v239 = v348;
                sub_100009848(v238, v348, &qword_10034BE70, &unk_10028B4C0);
                v240 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_failed;
                swift_beginAccess();

                sub_10025F470(v139, v138, 0);
                sub_10011D5D8(v239, v143 + v240, &qword_10034BE70, &unk_10028B4C0);
                swift_endAccess();
                sub_1002471E8();
                sub_1000097E8(v239, &qword_10034BE70, &unk_10028B4C0);
                sub_1000097E8(v238, &qword_10034BE70, &unk_10028B4C0);
                v150 = v139;
                v151 = v138;
                v152 = 0;
              }

              goto LABEL_183;
            }

            v144 = v373;
            if (v140 == 2)
            {
              sub_1000D65DC(v139, v138, 2);
              goto LABEL_38;
            }

            if (v140 == 3)
            {
              v145 = sub_100035D04(&unk_100350B60, &unk_1002960B0);
              v146 = v343;
              v374(v343 + *(v145 + 28), v91, v144);
              *v146 = v139;
              v146[1] = v138;
              v147 = v146 + *(v145 + 32);
              *v147 = v372;
              v147[4] = v93;
              (*(*(v145 - 8) + 56))(v146, 0, 1, v145);
              v148 = v344;
              sub_100009848(v146, v344, &qword_100350C60, &qword_100296120);
              v149 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissed;
              swift_beginAccess();

              sub_10025F470(v139, v138, 3);
              sub_10011D5D8(v148, v143 + v149, &qword_100350C60, &qword_100296120);
              swift_endAccess();
              sub_1002471E8();
              sub_1000097E8(v148, &qword_100350C60, &qword_100296120);
              sub_1000097E8(v146, &qword_100350C60, &qword_100296120);
              v150 = v139;
              v151 = v138;
              v152 = 3;
LABEL_183:
              sub_1000D65DC(v150, v151, v152);
              v245 = type metadata accessor for ExperienceEvent;
              v314 = v126;
LABEL_198:
              sub_10025F588(v314, v245);
            }

            if (v139 <= 1)
            {
              if (!(v139 | v138))
              {
                v324 = v347;
                v374(v347, v91, v373);
                v325 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
                v326 = v324 + *(v325 + 32);
                *v326 = v372;
                *(v326 + 4) = v93;
                (*(*(v325 - 8) + 56))(v324, 0, 1, v325);
                v327 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_requested;
                swift_beginAccess();

                sub_1000097E8(v143 + v327, &qword_10034BE80, &unk_10028B4E0);
                sub_10003693C(v324, v143 + v327, &qword_10034BE80, &unk_10028B4E0);
                swift_endAccess();
                v150 = v139;
                v151 = v138;
                v152 = 4;
                goto LABEL_183;
              }

              v333 = v347;
              v374(v347, v91, v373);
              v334 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
              v335 = v333 + *(v334 + 32);
              *v335 = v372;
              *(v335 + 4) = v93;
              (*(*(v334 - 8) + 56))(v333, 0, 1, v334);
              v336 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presenting;
              swift_beginAccess();

              sub_1000097E8(v143 + v336, &qword_10034BE80, &unk_10028B4E0);
              sub_10003693C(v333, v143 + v336, &qword_10034BE80, &unk_10028B4E0);
              swift_endAccess();
              v332 = 4;
            }

            else
            {
              if (v139 ^ 2 | v138)
              {
                goto LABEL_208;
              }

              v328 = v347;
              v374(v347, v91, v373);
              v329 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
              v330 = v328 + *(v329 + 32);
              *v330 = v372;
              *(v330 + 4) = v93;
              (*(*(v329 - 8) + 56))(v328, 0, 1, v329);
              v331 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented;
              swift_beginAccess();

              sub_1000097E8(v143 + v331, &qword_10034BE80, &unk_10028B4E0);
              sub_10003693C(v328, v143 + v331, &qword_10034BE80, &unk_10028B4E0);
              swift_endAccess();
              v332 = 5;
            }

            sub_100037298(v332);

LABEL_208:
            sub_1000D65DC(v139, v138, 4);
            goto LABEL_38;
          }
        }

        else
        {
          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v196, v197))
          {
            sub_1000D65DC(v139, v138, v140);

            goto LABEL_38;
          }

          v198 = swift_slowAlloc();
          *v198 = 0;
          _os_log_impl(&_mh_execute_header, v196, v197, "### No active hintPresentation?", v198, 2u);
        }

        sub_1000D65DC(v139, v138, v140);
        goto LABEL_38;
      }

      v161 = *(v106 + 1);
      v380 = *v106;
      v381 = v161;
      *v382 = *(v106 + 2);
      *&v382[9] = *(v106 + 41);
      v162 = *(v376 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
      if (!v162)
      {
        sub_100231D28(&v380);
        v199 = Logger.logObject.getter();
        v200 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v199, v200))
        {
          v201 = swift_slowAlloc();
          *v201 = 0;
          _os_log_impl(&_mh_execute_header, v199, v200, "### No active cardPresentation?", v201, 2u);
        }

        goto LABEL_115;
      }

      v163 = v380;
      v164 = v381;
      v165 = *v382;
      v166 = *&v382[8];
      v167 = *&v382[16];
      v168 = v382[24] >> 5;
      if (v168 > 1)
      {
        v169 = v351;
        if (v168 != 2)
        {
          if (v168 == 3)
          {
            if (v380 >= 2u)
            {
              v170 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
              v171 = v376;
              swift_beginAccess();
              v172 = *(v171 + v170);
              if (v172)
              {
                swift_endAccess();
                v173 = v362;
                v374(v362, v91, v373);
                v174 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
                (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
                v175 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_subtitleSwipedBack;
                swift_beginAccess();

                sub_1000097E8(v172 + v175, &qword_100345620, &unk_10027C940);
                sub_10003693C(v173, v172 + v175, &qword_100345620, &unk_10027C940);
                swift_endAccess();

                v176 = type metadata accessor for ExperienceEvent;
                v177 = v369;
LABEL_191:
                sub_10025F588(v177, v176);
              }

              sub_10025F588(v369, type metadata accessor for ExperienceEvent);
              swift_endAccess();
            }
          }

          else
          {
            if (!(v381 | *(&v380 + 1) | v380 | *(&v381 + 1) | *v382 | *&v382[8] | *&v382[16]) && v382[24] == 128)
            {
              v270 = v347;
              v374(v347, v91, v373);
              v271 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
              v272 = v270 + *(v271 + 32);
              *v272 = v372;
              *(v272 + 4) = v93;
              (*(*(v271 - 8) + 56))(v270, 0, 1, v271);
              v273 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting;
              swift_beginAccess();

              sub_1000097E8(v162 + v273, &qword_10034BE80, &unk_10028B4E0);
              sub_10003693C(v270, v162 + v273, &qword_10034BE80, &unk_10028B4E0);
              swift_endAccess();
              sub_10025F588(v369, type metadata accessor for ExperienceEvent);
            }

            sub_100037298(19);
          }

LABEL_115:
          v130 = type metadata accessor for ExperienceEvent;
          v131 = v369;
          return sub_10025F588(v131, v130);
        }

        v376 = *(v376 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
        v252 = *(&v380 + 1);
        if ((v382[24] & 0x1F) != 0)
        {
          if ((v382[24] & 0x1F) != 1)
          {
            if (!(v381 | *(&v380 + 1) | v380 | *(&v381 + 1) | *v382 | *&v382[8] | *&v382[16]))
            {
              v337 = v347;
              v374(v347, v91, v373);
              v338 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
              v339 = v337 + *(v338 + 32);
              *v339 = v372;
              *(v339 + 4) = v93;
              (*(*(v338 - 8) + 56))(v337, 0, 1, v338);
              v340 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardRequested;
              v341 = v376;
              swift_beginAccess();

              sub_1000097E8(v341 + v340, &qword_10034BE80, &unk_10028B4E0);
              sub_10003693C(v337, v341 + v340, &qword_10034BE80, &unk_10028B4E0);
              swift_endAccess();
              sub_100231D28(&v380);
              sub_10025F588(v369, type metadata accessor for ExperienceEvent);
            }

            v253 = v376;
            if (v380 == 1 && !(v381 | *(&v380 + 1) | *(&v381 + 1) | *v382 | *&v382[8] | *&v382[16]))
            {
              v254 = v362;
              v374(v362, v91, v373);
              v255 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
              (*(*(v255 - 8) + 56))(v254, 0, 1, v255);
              v256 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded;
              swift_beginAccess();

              sub_1000097E8(v253 + v256, &qword_100345620, &unk_10027C940);
              sub_10003693C(v254, v253 + v256, &qword_100345620, &unk_10027C940);
              swift_endAccess();
              sub_100037298(18);
            }
          }

          sub_100231D28(&v380);
          goto LABEL_115;
        }

        sub_1000982F8();
        v317 = swift_allocError();
        *v318 = v163;
        *(v318 + 8) = v252;
        *(v318 + 16) = v164;
        *(v318 + 32) = v165;
        *(v318 + 40) = v166;
        *(v318 + 48) = v167;
        v319 = v169;
        v320 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
        v374(v319 + *(v320 + 28), v91, v373);
        *v319 = v317;
        (*(*(v320 - 8) + 56))(v319, 0, 1, v320);
        v321 = v348;
        sub_100009848(v319, v348, &qword_10034BE70, &unk_10028B4C0);
        v322 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
        v323 = v376;
        swift_beginAccess();

        sub_100051520(&v380, &v379);
        swift_errorRetain();
        sub_10011D5D8(v321, v323 + v322, &qword_10034BE70, &unk_10028B4C0);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v321, &qword_10034BE70, &unk_10028B4C0);
        sub_1000097E8(v319, &qword_10034BE70, &unk_10028B4C0);
        goto LABEL_194;
      }

      v220 = *(&v380 + 1);
      v221 = v351;
      v353 = v91;
      v377 = *(&v380 + 1);
      v378 = v380;
      if (v168)
      {
        v372 = sub_1000982F8();
        v274 = swift_allocError();
        v275 = v163;
        v276 = v274;
        *v277 = v275;
        *(v277 + 8) = v220;
        *(v277 + 16) = v164;
        *(v277 + 32) = v165;
        *(v277 + 40) = v166;
        *(v277 + 48) = v167;
        v278 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
        v374(v221 + *(v278 + 28), v91, v373);
        *v221 = v276;
        v279 = *(v278 - 8);
        v280 = *(v279 + 56);
        v371 = v278;
        v370 = v280;
        v368 = v279 + 56;
        v280(v221, 0, 1, v278);
        v281 = v348;
        sub_100009848(v221, v348, &qword_10034BE70, &unk_10028B4C0);
        v282 = v221;
        v283 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
        swift_beginAccess();
        sub_100051520(&v380, &v379);

        sub_100051520(&v380, &v379);
        swift_errorRetain();
        sub_10011D5D8(v281, v162 + v283, &qword_10034BE70, &unk_10028B4C0);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v281, &qword_10034BE70, &unk_10028B4C0);
        sub_1000097E8(v282, &qword_10034BE70, &unk_10028B4C0);

        v284 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v285 = v376;
        swift_beginAccess();
        v286 = *(v285 + v284);
        if (v286)
        {
          swift_endAccess();
          v287 = swift_allocError();
          v288 = v377;
          *v289 = v378;
          *(v289 + 8) = v288;
          *(v289 + 16) = v164;
          *(v289 + 32) = v165;
          *(v289 + 40) = v166;
          *(v289 + 48) = v167;
          v290 = v371;
          v291 = v351;
          v374(v351 + *(v371 + 7), v353, v373);
          *v291 = v287;
          (v370)(v291, 0, 1, v290);
          v292 = v348;
          sub_100009848(v291, v348, &qword_10034BE70, &unk_10028B4C0);
          v293 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed;
          swift_beginAccess();

          swift_errorRetain();
          sub_10011D5D8(v292, v286 + v293, &qword_10034BE70, &unk_10028B4C0);
          swift_endAccess();
          sub_1001DC4FC();
          sub_1000097E8(v292, &qword_10034BE70, &unk_10028B4C0);
          sub_1000097E8(v291, &qword_10034BE70, &unk_10028B4C0);

LABEL_194:

          goto LABEL_195;
        }
      }

      else
      {
        v222 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
        v223 = v361;
        v224 = v91;
        v225 = v374;
        v374(&v361[*(v222 + 28)], v224, v373);
        *v223 = v163;
        *(v223 + 1) = v220;
        v226 = *(v222 - 8);
        v227 = *(v226 + 56);
        v372 = v226 + 56;
        v227(v223, 0, 1, v222);
        v228 = v352;
        sub_100009848(v223, v352, &qword_10034BE88, &unk_10028B620);
        v229 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
        swift_beginAccess();
        sub_100051520(&v380, &v379);

        sub_100051520(&v380, &v379);
        sub_10011D5D8(v228, v162 + v229, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v228, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v223, &qword_10034BE88, &unk_10028B620);
        v230 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v231 = v376;
        swift_beginAccess();
        v232 = *(v231 + v230);
        if (v232)
        {
          swift_endAccess();
          v225(&v223[*(v222 + 28)], v353, v373);
          v233 = v377;
          *v223 = v378;
          *(v223 + 1) = v233;
          v227(v223, 0, 1, v222);
          sub_100009848(v223, v228, &qword_10034BE88, &unk_10028B620);
          v234 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
          swift_beginAccess();

          sub_10011D5D8(v228, v232 + v234, &qword_10034BE88, &unk_10028B620);
          swift_endAccess();
          sub_1001DC4FC();
          sub_1000097E8(v228, &qword_10034BE88, &unk_10028B620);
          sub_1000097E8(v223, &qword_10034BE88, &unk_10028B620);

LABEL_195:
          sub_100231D28(&v380);
          goto LABEL_196;
        }
      }

      sub_10025F588(v369, type metadata accessor for ExperienceEvent);
      swift_endAccess();
      sub_100231D28(&v380);

      return sub_100231D28(&v380);
    }

    if (v127 <= 7)
    {
      if (v127 != 5)
      {
        goto LABEL_38;
      }

      goto LABEL_55;
    }

    if (v127 == 8)
    {
      v153 = v355;
      sub_10025F4B8(v106, v355, type metadata accessor for TransferEvent);
      v106 = v356;
      sub_10025F520(v153, v356, type metadata accessor for TransferEvent);
      v154 = swift_getEnumCaseMultiPayload();
      if (v154 <= 4)
      {
        if (!v154)
        {
          v155 = 22;
          goto LABEL_176;
        }
      }

      else
      {
        if (v154 > 7)
        {
          if (v154 != 8)
          {
            goto LABEL_177;
          }

          v155 = 21;
LABEL_176:
          sub_100037298(v155);
LABEL_177:
          sub_10025F588(v153, type metadata accessor for TransferEvent);
          goto LABEL_38;
        }

        if (v154 != 5 && v154 != 6)
        {
          v155 = 20;
          goto LABEL_176;
        }
      }

      v135 = type metadata accessor for TransferEvent;
      sub_10025F588(v153, type metadata accessor for TransferEvent);
      v137 = type metadata accessor for ExperienceEvent;
      v136 = v126;
      goto LABEL_57;
    }

    if (v127 != 9)
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v178 = *v106;
    v179 = *(v376 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
    v180 = v361;
    v181 = v358;
    v182 = v357;
    if (!v179)
    {
      v202 = Logger.logObject.getter();
      v203 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v202, v203))
      {
        v204 = swift_slowAlloc();
        *v204 = 0;
        _os_log_impl(&_mh_execute_header, v202, v203, "### No active cardPresentation?", v204, 2u);

        sub_1000E605C(v178);
      }

      else
      {
        sub_1000E605C(v178);
      }

      goto LABEL_38;
    }

    if (v178 > 1)
    {
      if (v178 == 2)
      {
        v183 = v362;
        (v374)();
        v308 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
        (*(*(v308 - 8) + 56))(v183, 0, 1, v308);
        v185 = &OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertActivated;
        goto LABEL_173;
      }

      if (v178 != 3)
      {
        goto LABEL_161;
      }

      v205 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
      swift_beginAccess();
      v206 = v345;
      sub_100009848(v179 + v205, v345, &qword_10034BE88, &unk_10028B620);
      v207 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
      v208 = *(v207 - 8);
      if ((*(v208 + 48))(v206, 1, v207) == 1)
      {

        sub_1000097E8(v206, &qword_10034BE88, &unk_10028B620);
        v209 = &v180[*(v207 + 28)];
        v210 = v180;
        v353 = v91;
        v211 = v91;
        v212 = v374;
        v374(v209, v211, v373);
        *v180 = 0xD000000000000017;
        *(v180 + 1) = 0x80000001002A7950;
        v378 = 0x80000001002A7950;
        v213 = *(v208 + 56);
        v213(v180, 0, 1, v207);
        v214 = v180;
        v215 = v352;
        sub_100009848(v214, v352, &qword_10034BE88, &unk_10028B620);
        swift_beginAccess();
        sub_10011D5D8(v215, v179 + v205, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v215, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v210, &qword_10034BE88, &unk_10028B620);
        v216 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v217 = v376;
        swift_beginAccess();
        v218 = *(v217 + v216);
        if (!v218)
        {
          sub_10025F588(v369, type metadata accessor for ExperienceEvent);
          swift_endAccess();
        }

        swift_endAccess();
        v212(&v210[*(v207 + 28)], v353, v373);
        *v210 = 0xD000000000000017;
        *(v210 + 1) = v378;
        v213(v210, 0, 1, v207);
        sub_100009848(v210, v215, &qword_10034BE88, &unk_10028B620);
        v219 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
        swift_beginAccess();

        sub_10011D5D8(v215, v218 + v219, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001DC4FC();
        sub_1000097E8(v215, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v210, &qword_10034BE88, &unk_10028B620);

        goto LABEL_196;
      }
    }

    else
    {
      if (v178)
      {
        if (v178 == 1)
        {
          v183 = v362;
          (v374)();
          v184 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
          (*(*(v184 - 8) + 56))(v183, 0, 1, v184);
          v185 = &OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertRequested;
LABEL_173:
          v309 = *v185;
          swift_beginAccess();

          sub_1000097E8(v179 + v309, &qword_100345620, &unk_10027C940);
          sub_10003693C(v183, v179 + v309, &qword_100345620, &unk_10027C940);
          swift_endAccess();
          sub_10025F588(v126, type metadata accessor for ExperienceEvent);
        }

LABEL_161:
        v257 = sub_100035D04(&unk_100345508, &qword_10027C860);
        v258 = v182 + *(v257 + 28);
        v353 = v91;
        v259 = v91;
        v260 = v182;
        v261 = v374;
        v374(v258, v259, v102);
        *v182 = v178;
        v262 = *(v257 - 8);
        v378 = *(v262 + 56);
        v377 = v262 + 56;
        v378(v182, 0, 1, v257);
        sub_100009848(v182, v181, &qword_100345618, &qword_10027C938);
        v263 = v181;
        v264 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed;
        swift_beginAccess();
        sub_1000E6048(v178);

        sub_1000E6048(v178);
        sub_10011D5D8(v263, v179 + v264, &qword_100345618, &qword_10027C938);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v263, &qword_100345618, &qword_10027C938);
        sub_1000097E8(v182, &qword_100345618, &qword_10027C938);
        v265 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v266 = v376;
        swift_beginAccess();
        v267 = *(v266 + v265);
        if (!v267)
        {
          sub_10025F588(v369, type metadata accessor for ExperienceEvent);
          swift_endAccess();
          sub_1000E605C(v178);

          return sub_1000E605C(v178);
        }

        swift_endAccess();
        v261(v260 + *(v257 + 28), v353, v373);
        *v260 = v178;
        v378(v260, 0, 1, v257);
        sub_100009848(v260, v263, &qword_100345618, &qword_10027C938);
        v268 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_remoteAlertFailed;
        swift_beginAccess();
        sub_1000E6048(v178);

        sub_10011D5D8(v263, v267 + v268, &qword_100345618, &qword_10027C938);
        swift_endAccess();
        sub_1001DC4FC();
        sub_1000097E8(v263, &qword_100345618, &qword_10027C938);
        sub_1000097E8(v260, &qword_100345618, &qword_10027C938);

        sub_1000E605C(v178);
        v269 = v178;
LABEL_171:
        sub_1000E605C(v269);
LABEL_196:
        v245 = type metadata accessor for ExperienceEvent;
        v246 = &v383;
LABEL_197:
        v314 = *(v246 - 32);
        goto LABEL_198;
      }

      v294 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
      swift_beginAccess();
      v206 = v346;
      sub_100009848(v179 + v294, v346, &qword_10034BE88, &unk_10028B620);
      v295 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
      v296 = *(v295 - 8);
      if ((*(v296 + 48))(v206, 1, v295) == 1)
      {

        sub_1000097E8(v206, &qword_10034BE88, &unk_10028B620);
        v297 = &v180[*(v295 + 28)];
        v298 = v180;
        v353 = v91;
        v299 = v91;
        v300 = v374;
        v374(v297, v299, v373);
        *v180 = 0xD000000000000017;
        *(v180 + 1) = 0x80000001002A7930;
        v378 = 0x80000001002A7930;
        v301 = *(v296 + 56);
        v301(v180, 0, 1, v295);
        v302 = v180;
        v303 = v352;
        sub_100009848(v302, v352, &qword_10034BE88, &unk_10028B620);
        swift_beginAccess();
        sub_10011D5D8(v303, v179 + v294, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001D8AE4();
        sub_1000097E8(v303, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v298, &qword_10034BE88, &unk_10028B620);
        v304 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
        v305 = v376;
        swift_beginAccess();
        v306 = *(v305 + v304);
        if (!v306)
        {
          sub_10025F588(v369, type metadata accessor for ExperienceEvent);
          swift_endAccess();

          return sub_1000E605C(0);
        }

        swift_endAccess();
        v300(&v298[*(v295 + 28)], v353, v373);
        *v298 = 0xD000000000000017;
        *(v298 + 1) = v378;
        v301(v298, 0, 1, v295);
        sub_100009848(v298, v303, &qword_10034BE88, &unk_10028B620);
        v307 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
        swift_beginAccess();

        sub_10011D5D8(v303, v306 + v307, &qword_10034BE88, &unk_10028B620);
        swift_endAccess();
        sub_1001DC4FC();
        sub_1000097E8(v303, &qword_10034BE88, &unk_10028B620);
        sub_1000097E8(v298, &qword_10034BE88, &unk_10028B620);

        v269 = 0;
        goto LABEL_171;
      }

      sub_1000E605C(0);
    }

    sub_10025F588(v126, type metadata accessor for ExperienceEvent);
    return sub_1000097E8(v206, &qword_10034BE88, &unk_10028B620);
  }

  if (result != 2)
  {
    v130 = type metadata accessor for SessionEvent;
    v131 = v100;
    return sub_10025F588(v131, v130);
  }

  v108 = *v100;
  v109 = v108 >> 13;
  if (v108 >> 13 <= 1)
  {
    if (v109 && (v108 & 0x100) == 0 && *(v94 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType) == 2)
    {
      *(v94 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType) = 0;
    }

    return result;
  }

  if (v109 == 2)
  {
    if ((v108 & 0x100) != 0)
    {
      return result;
    }

    goto LABEL_53;
  }

  if (v109 == 3)
  {
LABEL_53:
    if (*(v94 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType) == 2)
    {
      *(v94 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType) = 1;
    }

    return result;
  }

  if (v108 >= -32766)
  {
    v110 = v362;
    v111 = v373;
    v112 = v374;
    v374(v362, v91, v373);
    v113 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
    v114 = *(v113 - 8);
    v378 = *(v114 + 56);
    v377 = v114 + 56;
    v378(v110, 0, 1, v113);
    v115 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionEnded;
    swift_beginAccess();
    sub_1000097E8(v94 + v115, &qword_100345620, &unk_10027C940);
    sub_10003693C(v110, v94 + v115, &qword_100345620, &unk_10027C940);
    swift_endAccess();
    v116 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
    result = swift_beginAccess();
    v117 = *(v94 + v116);
    v118 = v113;
    if (v117)
    {
      v112(v110, v91, v111);
      v378(v110, 0, 1, v113);
      v119 = v360;
      sub_100009848(v110, v360, &qword_100345620, &unk_10027C940);
      v120 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_sessionEnded;
      swift_beginAccess();

      sub_10011D5D8(v119, v117 + v120, &qword_100345620, &unk_10027C940);
      swift_endAccess();
      sub_100247418();
      sub_1000097E8(v119, &qword_100345620, &unk_10027C940);
      sub_1000097E8(v110, &qword_100345620, &unk_10027C940);
    }

    v121 = v378;
    v122 = *(v376 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
    if (v122)
    {
      v123 = v362;
      v374(v362, v91, v373);
      v121(v123, 0, 1, v118);
      v124 = v360;
      sub_100009848(v123, v360, &qword_100345620, &unk_10027C940);
      v125 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_sessionEnded;
      swift_beginAccess();

      sub_10011D5D8(v124, v122 + v125, &qword_100345620, &unk_10027C940);
      swift_endAccess();
      sub_1001D8D14();
      sub_1000097E8(v124, &qword_100345620, &unk_10027C940);
      sub_1000097E8(v123, &qword_100345620, &unk_10027C940);
    }
  }

  return result;
}

uint64_t sub_100259E18(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  __chkstk_darwin(v3);
  v98 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  __chkstk_darwin(v6);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v96 - v17;
  v19 = type metadata accessor for UserDefaultsRepresentation();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + *((swift_isaMask & *v1) + 0x70));
  if (v23)
  {
    v101 = a1;
    sub_100009848(a1, v18, &qword_10033C280, &qword_100272A80);
    if ((*(v11 + 48))(v18, 1, v10) != 1)
    {
      (*(v11 + 32))(v22, v18, v10);
    }

    swift_storeEnumTagMultiPayload();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      v26 = v101;
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v83 = *v22;
          v84 = v22[1];
          v85 = v23;
          isa = Data._bridgeToObjectiveC()().super.isa;
          v87 = (v1 + *((swift_isaMask & *v1) + 0x68));
          v88 = *v87;
          v89 = v87[1];
          v48 = String._bridgeToObjectiveC()();
          [v85 setObject:isa forKey:v48];

          sub_100010708(v83, v84);
        }

        else
        {
          v43 = *v22;
          v44 = (v1 + *((swift_isaMask & *v1) + 0x68));
          v45 = *v44;
          v46 = v44[1];
          v47 = v23;
          v48 = String._bridgeToObjectiveC()();
          [v47 setBool:v43 forKey:v48];
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          (*(v11 + 32))(v14, v22, v10);
          v57 = v23;
          v58 = v1;
          v59 = Date._bridgeToObjectiveC()().super.isa;
          v60 = (v58 + *((swift_isaMask & *v58) + 0x68));
          v61 = *v60;
          v62 = v60[1];
          v63 = String._bridgeToObjectiveC()();
          [v57 setObject:v59 forKey:v63];

          sub_1000097E8(v26, &qword_10033C280, &qword_100272A80);
          return (*(v11 + 8))(v14, v10);
        }

        if (EnumCaseMultiPayload == 3)
        {
          v27 = *v22;
          v28 = (v1 + *((swift_isaMask & *v1) + 0x68));
          v29 = *v28;
          v30 = v28[1];
          v31 = v23;
          v32 = String._bridgeToObjectiveC()();
          [v31 setDouble:v32 forKey:v27];
        }

        else
        {
          v72 = *v22;
          v73 = (v1 + *((swift_isaMask & *v1) + 0x68));
          v74 = *v73;
          v75 = v73[1];
          v76 = v23;
          v77 = String._bridgeToObjectiveC()();
          [v76 setInteger:v72 forKey:v77];
        }
      }

      v24 = v26;
      return sub_1000097E8(v24, &qword_10033C280, &qword_100272A80);
    }

    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v49 = *v22;
        v50 = v22[1];
        v51 = v23;
        v52 = String._bridgeToObjectiveC()();

        v53 = (v1 + *((swift_isaMask & *v1) + 0x68));
        v54 = *v53;
        v55 = v53[1];
        v56 = String._bridgeToObjectiveC()();
        [v51 setObject:v52 forKey:v56];

LABEL_28:
        v24 = v101;
        return sub_1000097E8(v24, &qword_10033C280, &qword_100272A80);
      }

      v90 = *v22;
      v81 = v23;
      v91 = UInt32._bridgeToObjectiveC()().super.super.isa;
      v92 = (v1 + *((swift_isaMask & *v1) + 0x68));
      v93 = *v92;
      v94 = v92[1];
      v95 = String._bridgeToObjectiveC()();
      [v81 setObject:v91 forKey:v95];
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v65 = v96;
        v64 = v97;
        (*(v96 + 32))(v9, v22, v97);
        v66 = v23;
        URL.absoluteString.getter();
        v67 = String._bridgeToObjectiveC()();

        v68 = (v1 + *((swift_isaMask & *v1) + 0x68));
        v69 = *v68;
        v70 = v68[1];
        v71 = String._bridgeToObjectiveC()();
        [v66 setObject:v67 forKey:v71];

        sub_1000097E8(v101, &qword_10033C280, &qword_100272A80);
        return (*(v65 + 8))(v9, v64);
      }

      if (EnumCaseMultiPayload == 8)
      {
        v34 = v98;
        v33 = v99;
        v35 = v100;
        (*(v99 + 32))(v98, v22, v100);
        v36 = v23;
        UUID.uuidString.getter();
        v37 = String._bridgeToObjectiveC()();

        v38 = (v1 + *((swift_isaMask & *v1) + 0x68));
        v39 = *v38;
        v40 = v38[1];
        v41 = String._bridgeToObjectiveC()();
        [v36 setObject:v37 forKey:v41];

        sub_1000097E8(v101, &qword_10033C280, &qword_100272A80);
        return (*(v33 + 8))(v34, v35);
      }

      v78 = (v1 + *((swift_isaMask & *v1) + 0x68));
      v79 = *v78;
      v80 = v78[1];
      v81 = v23;
      v82 = String._bridgeToObjectiveC()();
      [v81 removeObjectForKey:v82];
    }

    goto LABEL_28;
  }

  v24 = a1;
  return sub_1000097E8(v24, &qword_10033C280, &qword_100272A80);
}

void sub_10025A734(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v93 = *(v4 - 8);
  v94 = v4;
  v5 = *(v93 + 64);
  __chkstk_darwin(v4);
  v92 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = *(v90 + 64);
  __chkstk_darwin(v7);
  v89 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  __chkstk_darwin(v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UserDefaultsRepresentation();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = (&v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = (&v86 - v19);
  v21 = *(v1 + *((swift_isaMask & *v1) + 0x70));
  if (v21)
  {
    v22 = type metadata accessor for JSONEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v95 = v21;
    JSONEncoder.init()();
    v96 = a1;
    sub_100035D04(&qword_10033C320, &qword_100272B40);
    sub_10025F388();
    v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v27 = v26;

    *v18 = v25;
    v18[1] = v27;
    swift_storeEnumTagMultiPayload();
    sub_10025F4B8(v18, v20, type metadata accessor for UserDefaultsRepresentation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v36 = v89;
          v35 = v90;
          v37 = v91;
          (*(v90 + 32))(v89, v20, v91);
          URL.absoluteString.getter();
        }

        else
        {
          if (EnumCaseMultiPayload != 8)
          {
            v70 = (v1 + *((swift_isaMask & *v1) + 0x68));
            v71 = *v70;
            v72 = v70[1];
            v33 = String._bridgeToObjectiveC()();
            v34 = v95;
            [v95 removeObjectForKey:v33];
            goto LABEL_24;
          }

          v36 = v92;
          v35 = v93;
          v37 = v94;
          (*(v93 + 32))(v92, v20, v94);
          UUID.uuidString.getter();
        }

        v59 = String._bridgeToObjectiveC()();

        v60 = (v2 + *((swift_isaMask & *v2) + 0x68));
        v61 = *v60;
        v62 = v60[1];
        v63 = String._bridgeToObjectiveC()();
        v64 = v95;
        [v95 setObject:v59 forKey:v63];

        (*(v35 + 8))(v36, v37);
        return;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v43 = *v20;
        v44 = v20[1];
        v45 = String._bridgeToObjectiveC()();

        v46 = (v2 + *((swift_isaMask & *v2) + 0x68));
        v47 = *v46;
        v48 = v46[1];
        v49 = String._bridgeToObjectiveC()();
        v50 = v95;
        [v95 setObject:v45 forKey:v49];

LABEL_29:
        return;
      }

      v81 = *v20;
      isa = UInt32._bridgeToObjectiveC()().super.super.isa;
      v83 = (v1 + *((swift_isaMask & *v1) + 0x68));
      v84 = *v83;
      v85 = v83[1];
      v69 = String._bridgeToObjectiveC()();
      v50 = v95;
      [v95 setObject:isa forKey:v69];

LABEL_28:
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v52 = v87;
        v51 = v88;
        (*(v87 + 32))(v13, v20, v88);
        v53 = Date._bridgeToObjectiveC()().super.isa;
        v54 = (v1 + *((swift_isaMask & *v1) + 0x68));
        v55 = *v54;
        v56 = v54[1];
        v57 = String._bridgeToObjectiveC()();
        v58 = v95;
        [v95 setObject:v53 forKey:v57];

        (*(v52 + 8))(v13, v51);
        return;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v29 = *v20;
        v30 = (v1 + *((swift_isaMask & *v1) + 0x68));
        v31 = *v30;
        v32 = v30[1];
        v33 = String._bridgeToObjectiveC()();
        v34 = v95;
        [v95 setDouble:v33 forKey:v29];
LABEL_24:

        goto LABEL_25;
      }

      v65 = *v20;
      v66 = (v1 + *((swift_isaMask & *v1) + 0x68));
      v67 = *v66;
      v68 = v66[1];
      v69 = String._bridgeToObjectiveC()();
      v50 = v95;
      [v95 setInteger:v65 forKey:v69];
      goto LABEL_28;
    }

    if (!EnumCaseMultiPayload)
    {
      v38 = *v20;
      v39 = (v1 + *((swift_isaMask & *v1) + 0x68));
      v40 = *v39;
      v41 = v39[1];
      v34 = String._bridgeToObjectiveC()();
      v42 = v95;
      [v95 setBool:v38 forKey:v34];

LABEL_25:
      return;
    }

    v74 = *v20;
    v73 = v20[1];
    v75 = Data._bridgeToObjectiveC()().super.isa;
    v76 = (v2 + *((swift_isaMask & *v2) + 0x68));
    v77 = *v76;
    v78 = v76[1];
    v79 = String._bridgeToObjectiveC()();
    v80 = v95;
    [v95 setObject:v75 forKey:v79];

    sub_100010708(v74, v73);
  }

  else
  {
  }
}

uint64_t sub_10025AF20()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003515E8);
  sub_100003078(v0, qword_1003515E8);
  return Logger.init(subsystem:category:)();
}

void sub_10025AFA4(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a3;
  v53 = a1;
  v6 = sub_100035D04(&qword_100351B90, &qword_100297010);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v50 = &v44 - v12;
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003078(v20, qword_1003515E8);
  v21 = *(v16 + 16);
  v51 = a2;
  v49 = v21;
  v21(v19, a2, v15);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v46 = v14;
    v47 = v10;
    v48 = v3;
    v24 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v55[0] = v45;
    *v24 = 136315906;
    *(v24 + 4) = sub_100017494(0xD000000000000028, 0x80000001002A7900, v55);
    *(v24 + 12) = 2080;
    v25 = sub_100207AA8(v53);
    v27 = sub_100017494(v25, v26, v55);

    *(v24 + 14) = v27;
    *(v24 + 22) = 2080;
    sub_10015CC9C();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v16 + 8))(v19, v15);
    v31 = sub_100017494(v28, v30, v55);

    *(v24 + 24) = v31;
    *(v24 + 32) = 2080;
    v32 = v52;
    if ((v52 & 0x100000000) != 0)
    {
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v54 = v52;
      v34 = String.init<A>(describing:)();
      v33 = v35;
    }

    v36 = sub_100017494(v34, v33, v55);

    *(v24 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: event=%s, timestamp=%s, distance=%s", v24, 0x2Au);
    swift_arrayDestroy();

    v10 = v47;
    v4 = v48;
    v14 = v46;
  }

  else
  {

    (*(v16 + 8))(v19, v15);
    v32 = v52;
  }

  v37 = v53;
  v38 = v51;
  if ((v53 - 5) >= 5u)
  {
    v39 = sub_100035D04(&unk_100351648, &qword_100296E80);
    v49(&v14[*(v39 + 28)], v38, v15);
    *v14 = v37;
    v40 = &v14[*(v39 + 32)];
    *v40 = v32;
    v40[4] = BYTE4(v32) & 1;
    (*(*(v39 - 8) + 56))(v14, 0, 1, v39);
    v41 = v50;
    sub_100009848(v14, v50, &qword_100351B90, &qword_100297010);
    v42 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_uxRegion;
    swift_beginAccess();
    sub_100009848(v4 + v42, v10, &qword_100351B90, &qword_100297010);
    swift_beginAccess();

    sub_10011D5D8(v41, v4 + v42, &qword_100351B90, &qword_100297010);
    swift_endAccess();
    sub_1000097E8(v41, &qword_100351B90, &qword_100297010);
    v43 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_previousUXRegion;
    swift_beginAccess();
    sub_10011D5D8(v10, v4 + v43, &qword_100351B90, &qword_100297010);
    swift_endAccess();
    sub_1000097E8(v10, &qword_100351B90, &qword_100297010);
    sub_1000097E8(v14, &qword_100351B90, &qword_100297010);
  }
}

uint64_t sub_10025B4F4()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_discoveryTime;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  sub_1000097E8(&v0[OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_previousUXRegion], &qword_100351B90, &qword_100297010);
  sub_1000097E8(&v0[OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_uxRegion], &qword_100351B90, &qword_100297010);
  v5 = *&v0[OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_tasks];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10025B620()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10011CC54(319, &qword_100351640, &unk_100351648, &qword_100296E80);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10025B724(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v78 = a1;
  v7 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v73 = &v69 - v12;
  __chkstk_darwin(v11);
  v72 = &v69 - v13;
  v77 = type metadata accessor for Date();
  v14 = *(v77 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v77);
  v76 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100035D04(&qword_100351B80, &unk_100296FB0);
  v17 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v19 = (&v69 - v18);
  *(v3 + 8) = _swiftEmptyArrayStorage;
  v20 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialDeviceUXRegion;
  v21 = sub_100035D04(&unk_100351648, &qword_100296E80);
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType] = 2;
  v22 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionEnded;
  v23 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffCardBeforeSession;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v25 = qword_10038B0B8;
  v26 = *(qword_10038B0B8 + 528);
  v27 = sub_1000031CC();

  v4[v24] = v27 & 1;
  v28 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffHintBeforeSession;
  v29 = *(v25 + 536);
  v30 = sub_1000031CC();

  v4[v28] = v30 & 1;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education] = 0;
  v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_published] = 0;
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100003078(v31, qword_1003515E8);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Init", v34, 2u);
  }

  v35 = v78;
  *(v4 + 2) = UUID.uuidString.getter();
  *(v4 + 3) = v36;
  *(v4 + 4) = UUID.uuidString.getter();
  *(v4 + 5) = v37;
  swift_getKeyPath();
  swift_getKeyPath();
  v75 = a2;
  static Published.subscript.getter();

  v38 = sub_10000A0B4();
  v40 = v39;

  *(v4 + 6) = v38;
  *(v4 + 7) = v40;
  v42 = v35[4];
  v41 = v35[5];
  (*(v14 + 16))(v76, a3, v77);
  v43 = *(v35[3] + 24);
  v44 = *(v43 + 24);

  sub_100097D54(v42, v41);
  CurrentValueSubject.value.getter();
  v70 = a3;
  if (v83)
  {
    v45 = *(v43 + 16);
    CurrentValueSubject.value.getter();

    v46 = v79;
    v47 = v80;
  }

  else
  {
    v46 = v81;
    v48 = v82;

    v47 = v48 & 1;
  }

  *v19 = v42;
  v19[1] = v41;
  v49 = v71;
  v50 = v77;
  (*(v14 + 32))(v19 + *(v71 + 28), v76, v77);
  v51 = v19 + *(v49 + 32);
  *v51 = v46;
  v51[4] = v47;
  sub_10003693C(v19, &v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionStarted], &qword_100351B80, &unk_100296FB0);
  v52 = v78[3];
  *&v4[OBJC_IVAR____TtC17proximitycontrold14SessionHistory_educationFlowPolicy] = sub_10006F838();
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B834();
  sub_10014C0EC();

  v53 = v72;
  Date.init()();
  (*(v14 + 56))(v53, 0, 1, v50);
  v54 = *(v25 + 568);
  v55 = v73;
  sub_100009848(v53, v73, &qword_10033C280, &qword_100272A80);
  v56 = v54;
  sub_100259E18(v55);

  sub_1000097E8(v53, &qword_10033C280, &qword_100272A80);
  v57 = *(v25 + 600);
  v58 = v74;
  sub_100060984(v74);

  if ((*(v14 + 48))(v58, 1, v50) == 1)
  {
    (*(v14 + 8))(v70, v50);

    sub_1000097E8(v58, &qword_10033C280, &qword_100272A80);
    return v4;
  }

  sub_1000097E8(v58, &qword_10033C280, &qword_100272A80);
  v59 = *(v25 + 608);
  result = sub_10006045C();
  v61 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v62 = *(v59 + *((swift_isaMask & *v59) + 0x70));
    if (v62)
    {
      v63 = (v59 + *((swift_isaMask & *v59) + 0x68));
      v64 = v50;
      v65 = *v63;
      v66 = v63[1];
      v67 = v62;
      v68 = String._bridgeToObjectiveC()();
      [v67 setInteger:v61 forKey:v68];

      (*(v14 + 8))(v70, v64);
    }

    else
    {

      (*(v14 + 8))(v70, v50);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10025BF40(void (*a1)(void, void, void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v86 = a1;
  v87 = a3;
  v92 = a2;
  v5 = type metadata accessor for ExperienceEvent(0);
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 64);
  __chkstk_darwin(v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v95 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  sub_100003078(v88, qword_1003515E8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = v9;
    v17 = swift_slowAlloc();
    v96[0] = v17;
    *v15 = 136315138;
    *(v15 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A79E0, v96);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_10000903C(v17);
    v9 = v16;
  }

  v91 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card;
  v18 = *(v3 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
  v93 = v9;
  if (v18)
  {
    swift_retain_n();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v97 = v22;
      *v21 = 136315138;
      v96[3] = type metadata accessor for CardPresentationRecord();
      v96[0] = v18;

      v23 = v10;
      v24 = sub_100057F14(v96);
      v26 = v25;
      sub_10000903C(v96);
      v27 = sub_100017494(v24, v26, &v97);

      *(v21 + 4) = v27;
      v10 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "### Unexpectedly found pending card: %s - sending now", v21, 0xCu);
      sub_10000903C(v22);

      v9 = v93;
    }

    sub_1001D8AE4();
  }

  v28 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount;
  v29 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    v94 = v8;
    *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount) = v31;
    if (qword_100338F18 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v32 = *(qword_10038B0B8 + 528);
  v33 = *(v32 + *((swift_isaMask & *v32) + 0x70));
  if (v33)
  {
    v34 = (v32 + *((swift_isaMask & *v32) + 0x68));
    v35 = *v34;
    v36 = v34[1];
    v37 = v32;
    v38 = v33;
    v39 = String._bridgeToObjectiveC()();
    [v38 setBool:1 forKey:v39];
  }

  v40 = *(v4 + v28);
  v41 = *(v4 + 56);
  v83 = *(v4 + 48);
  v80 = v41;
  v85 = v10;
  v42 = v86;
  v86 = *(v10 + 16);
  v86(v95, v42, v9);
  v43 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffCardBeforeSession);
  v84 = v40;
  v81 = v40 == 1;
  v82 = v43;
  sub_10025F520(v87, v94, type metadata accessor for ExperienceEvent);
  v44 = type metadata accessor for CardPresentationRecord();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v48 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertRequested;
  v49 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v50 = *(*(v49 - 8) + 56);
  v50(v47 + v48, 1, 1, v49);
  v50(v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertActivated, 1, 1, v49);
  v51 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed;
  v52 = sub_100035D04(&unk_100345508, &qword_10027C860);
  (*(*(v52 - 8) + 56))(v47 + v51, 1, 1, v52);
  v53 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardRequested;
  v54 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v55 = *(*(v54 - 8) + 56);
  v55(v47 + v53, 1, 1, v54);
  v50(v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded, 1, 1, v49);
  v55(v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting, 1, 1, v54);
  v56 = v80;
  v57 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
  v58 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  (*(*(v58 - 8) + 56))(v47 + v57, 1, 1, v58);
  v50(v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcRequested, 1, 1, v49);
  v50(v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcConnected, 1, 1, v49);
  v59 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
  v60 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  (*(*(v60 - 8) + 56))(v47 + v59, 1, 1, v60);
  v50(v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_sessionEnded, 1, 1, v49);
  (*(v89 + 56))(v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger, 1, 1, v90);
  *(v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_published) = 0;
  v61 = qword_100339188;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = v81 & ~v82;
  sub_100003078(v88, qword_10034BCD0);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Init", v65, 2u);
  }

  v66 = v83;
  *(v47 + 32) = v84;
  *(v47 + 40) = v66;
  *(v47 + 48) = v56;
  *(v47 + 56) = v62;
  v67 = v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_presentEffect;
  v68 = v94;
  sub_10025F520(v94, v47 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_presentEffect, type metadata accessor for ExperienceEvent);
  v69 = sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
  v70 = v95;
  v71 = v93;
  v86(v67 + *(v69 + 28), v95, v93);
  v72 = v67 + *(v69 + 32);
  v73 = BYTE4(v92);
  *v72 = v92;
  *(v72 + 4) = v73 & 1;
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B688();
  sub_10014C0EC();

  sub_10025F588(v68, type metadata accessor for ExperienceEvent);
  (*(v85 + 8))(v70, v71);
  v74 = *(v4 + v91);
  *(v4 + v91) = v47;

  v75 = swift_allocObject();
  swift_weakInit();
  v76 = *(v47 + 16);
  v77 = *(v47 + 24);
  *(v47 + 16) = sub_10025F60C;
  *(v47 + 24) = v75;

  sub_10002689C(v76);
}

uint64_t sub_10025C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a2;
  v7 = type metadata accessor for ExperienceEvent(0);
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  __chkstk_darwin(v7);
  v72 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_100003078(v65, qword_1003515E8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = a1;
    v18 = a3;
    v19 = swift_slowAlloc();
    v73[0] = v19;
    *v16 = 136315138;
    *(v16 + 4) = sub_100017494(0xD000000000000031, 0x80000001002A79A0, v73);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v16, 0xCu);
    sub_10000903C(v19);
    a3 = v18;
    a1 = v17;
  }

  v20 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education;
  swift_beginAccess();
  v64 = v20;
  v21 = *(v3 + v20);
  v70 = v13;
  if (v21)
  {
    swift_retain_n();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v63 = a3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v74 = v26;
      *v25 = 136315138;
      v73[3] = type metadata accessor for EducationPresentationRecord();
      v73[0] = v21;

      v27 = sub_100057F8C(v73);
      v28 = v10;
      v30 = v29;
      sub_10000903C(v73);
      v31 = sub_100017494(v27, v30, &v74);
      v10 = v28;

      *(v25 + 4) = v31;
      v13 = v70;
      _os_log_impl(&_mh_execute_header, v22, v23, "### Unexpectedly found pending education: %s - sending now", v25, 0xCu);
      sub_10000903C(v26);

      a3 = v63;
    }

    sub_1001DC4FC();
  }

  v32 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount);
  v33 = *(v4 + 56);
  v63 = *(v4 + 48);
  (*(v71 + 16))(v13, a1, v10);
  v34 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffCardBeforeSession);
  v68 = v10;
  v35 = (v34 & 1) == 0 && *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount) == 1;
  sub_10025F520(a3, v72, type metadata accessor for ExperienceEvent);
  v36 = type metadata accessor for EducationPresentationRecord();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v40 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_remoteAlertFailed;
  v41 = sub_100035D04(&unk_100345508, &qword_10027C860);
  (*(*(v41 - 8) + 56))(v39 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed;
  v43 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  (*(*(v43 - 8) + 56))(v39 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
  v45 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v46 = *(*(v45 - 8) + 56);
  v46(v39 + v44, 1, 1, v45);
  v46(v39 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_subtitleSwipedBack, 1, 1, v45);
  v46(v39 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented, 1, 1, v45);
  v47 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
  v48 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  (*(*(v48 - 8) + 56))(v39 + v47, 1, 1, v48);
  v46(v39 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_sessionEnded, 1, 1, v45);
  (*(v66 + 56))(v39 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger, 1, 1, v67);
  *(v39 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_published) = 0;
  v49 = qword_100339190;

  if (v49 != -1)
  {
    swift_once();
  }

  sub_100003078(v65, qword_10034BE90);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Init", v52, 2u);
  }

  v53 = v63;
  *(v39 + 32) = v32;
  *(v39 + 40) = v53;
  *(v39 + 48) = v33;
  *(v39 + 56) = v35;
  v54 = v39 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_presentEffect;
  sub_10025F4B8(v72, v39 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_presentEffect, type metadata accessor for ExperienceEvent);
  v55 = sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
  (*(v71 + 32))(v54 + *(v55 + 28), v70, v68);
  v56 = v54 + *(v55 + 32);
  v57 = BYTE4(v69);
  *v56 = v69;
  *(v56 + 4) = v57 & 1;
  v58 = *(v4 + v64);
  *(v4 + v64) = v39;

  v59 = swift_allocObject();
  swift_weakInit();
  v60 = *(v39 + 16);
  v61 = *(v39 + 24);
  *(v39 + 16) = sub_10025F5E8;
  *(v39 + 24) = v59;

  sub_10002689C(v60);
}

uint64_t sub_10025D1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a1;
  v83 = a3;
  v87 = a2;
  v85 = type metadata accessor for ExperienceEvent(0);
  v5 = *(v85 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v85);
  v8 = &v78[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Date();
  v90 = *(v9 - 8);
  v10 = *(v90 + 64);
  __chkstk_darwin(v9);
  v89 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  sub_100003078(v84, qword_1003515E8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = v8;
    v16 = swift_slowAlloc();
    v91[0] = v16;
    *v14 = 136315138;
    *(v14 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A7A10, v91);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000903C(v16);
    v8 = v15;
  }

  v17 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint;
  swift_beginAccess();
  v86 = v17;
  v18 = *(v3 + v17);
  v88 = v8;
  if (v18)
  {
    swift_retain_n();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v92 = v22;
      *v21 = 136315138;
      v91[3] = type metadata accessor for HintPresentationRecord();
      v91[0] = v18;

      v23 = sub_100057F50(v91);
      v25 = v24;
      sub_10000903C(v91);
      v26 = sub_100017494(v23, v25, &v92);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "### Unexpectedly found pending hint: %s - sending now", v21, 0xCu);
      sub_10000903C(v22);

      v8 = v88;
    }

    sub_1002471E8();
  }

  v27 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount;
  v28 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount) = v30;
    if (qword_100338F18 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v31 = *(qword_10038B0B8 + 536);
  v32 = *(v31 + *((swift_isaMask & *v31) + 0x70));
  if (v32)
  {
    v33 = (v31 + *((swift_isaMask & *v31) + 0x68));
    v34 = *v33;
    v35 = v33[1];
    v36 = v31;
    v37 = v32;
    v38 = String._bridgeToObjectiveC()();
    [v37 setBool:1 forKey:v38];
  }

  v39 = *(v4 + v27);
  v40 = *(v4 + 56);
  v80 = *(v4 + 48);
  v81 = v39;
  v41 = *(v90 + 16);
  v42 = v82;
  v82 = v9;
  v41(v89, v42, v9);
  v79 = *(v4 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_userHasDoneHandoffHintBeforeSession);
  sub_10025F520(v83, v8, type metadata accessor for ExperienceEvent);
  v43 = type metadata accessor for HintPresentationRecord();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v47 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_requested;
  v48 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v49 = *(*(v48 - 8) + 56);
  v49(v46 + v47, 1, 1, v48);
  v49(v46 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presenting, 1, 1, v48);
  v49(v46 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presented, 1, 1, v48);
  v50 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_denied;
  v51 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  (*(*(v51 - 8) + 56))(v46 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_failed;
  v53 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  (*(*(v53 - 8) + 56))(v46 + v52, 1, 1, v53);
  v54 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissed;
  v55 = sub_100035D04(&unk_100350B60, &unk_1002960B0);
  (*(*(v55 - 8) + 56))(v46 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_sessionEnded;
  v57 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  (*(*(v57 - 8) + 56))(v46 + v56, 1, 1, v57);
  v58 = *(v5 + 56);
  v59 = v85;
  v58(v46 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_dismissEffectTrigger, 1, 1, v85);
  v58(v46 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_inactiveStateTrigger, 1, 1, v59);
  v58(v46 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_finishedStateTrigger, 1, 1, v59);
  *(v46 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_published) = 0;
  v60 = qword_1003392C8;

  if (v60 != -1)
  {
    swift_once();
  }

  v61 = v79 ^ 1;
  sub_100003078(v84, qword_100350B00);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "Init", v64, 2u);
  }

  v65 = v80;
  *(v46 + 32) = v81;
  *(v46 + 40) = v65;
  *(v46 + 48) = v40;
  *(v46 + 56) = v61 & 1;
  v66 = v46 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presentEffect;
  v67 = v88;
  sub_10025F520(v88, v46 + OBJC_IVAR____TtC17proximitycontrold22HintPresentationRecord_presentEffect, type metadata accessor for ExperienceEvent);
  v68 = sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
  v69 = v89;
  v70 = v82;
  v41((v66 + *(v68 + 28)), v89, v82);
  v71 = v66 + *(v68 + 32);
  v72 = BYTE4(v87);
  *v71 = v87;
  *(v71 + 4) = v72 & 1;
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B9E0();
  sub_10014C0EC();

  sub_10025F588(v67, type metadata accessor for ExperienceEvent);
  (*(v90 + 8))(v69, v70);
  v73 = *(v4 + v86);
  *(v4 + v86) = v46;

  v74 = swift_allocObject();
  swift_weakInit();
  v75 = *(v46 + 16);
  v76 = *(v46 + 24);
  *(v46 + 16) = sub_10025F614;
  *(v46 + 24) = v74;

  sub_10002689C(v75);
}

uint64_t sub_10025DBDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v44 = &v44 - v8;
  if (qword_1003392F8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_1003515E8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0x636974796C616E61, 0xEE00746E65764573, v56);
    *(v12 + 12) = 2080;
    v48 = v2;

    v13 = String.init<A>(describing:)();
    v15 = v6;
    v16 = sub_100017494(v13, v14, v56);

    *(v12 + 14) = v16;
    v6 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: self=%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v17 = qword_10038B0B8;
  v18 = *(qword_10038B0B8 + 544);
  v19 = sub_1000031CC();

  v47 = v19;
  if ((v19 & 1) == 0)
  {
    v20 = *(v17 + 544);
    v21 = *(v20 + *((swift_isaMask & *v20) + 0x70));
    if (v21)
    {
      v22 = (v20 + *((swift_isaMask & *v20) + 0x68));
      v23 = *v22;
      v24 = v22[1];
      v25 = v20;
      v26 = v21;
      v27 = String._bridgeToObjectiveC()();
      [v26 setBool:1 forKey:v27];
    }
  }

  v46 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_cardCount);
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B834();
  v45 = sub_10014C668(1);

  sub_10014B834();
  v28 = sub_10014C668(28);

  sub_10014B834();
  v29 = sub_10014C668(7);

  v30 = OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionEnded;
  swift_beginAccess();
  v31 = (*(v6 + 48))(v2 + v30, 1, v5);
  v32 = 0;
  if (!v31)
  {
    v33 = v2 + v30;
    v34 = v44;
    sub_100009848(v33, v44, &qword_1003454F8, &unk_10028B580);
    v35 = *(sub_100035D04(&qword_100351B80, &unk_100296FB0) + 28);
    Date.timeIntervalSince(_:)();
    v32 = v36;
    v37 = type metadata accessor for Date();
    (*(*(v37 - 8) + 8))(v34, v37);
  }

  v38 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hintCount);
  v39 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialUIType);
  v41 = v2[6];
  v40 = v2[7];
  LOBYTE(v48) = 0;
  v55 = 0;
  v42 = (v47 & 1) == 0;
  v54 = 0;
  v53 = 0;
  v52 = v31 != 0;
  v51 = 0;
  v50 = v39 == 2;
  v49 = 1;
  *a1 = v46;
  *(a1 + 8) = 0;
  *(a1 + 16) = v45;
  *(a1 + 24) = 0;
  *(a1 + 32) = v28;
  *(a1 + 40) = 0;
  *(a1 + 48) = v29;
  *(a1 + 56) = 0;
  *(a1 + 64) = v32;
  *(a1 + 72) = v52;
  *(a1 + 73) = 2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = v42;
  *(a1 + 120) = v38;
  *(a1 + 128) = v51;
  *(a1 + 136) = v41;
  *(a1 + 144) = v40;
  *(a1 + 152) = v39 & 1;
  *(a1 + 160) = v50;
  *(a1 + 168) = 0;
  *(a1 + 176) = v49;
}

uint64_t sub_10025E210(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);

    if (v3)
    {

      if (v3 == a1)
      {
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {
          v4 = *(result + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);
          *(result + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10025E2D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *a3;
    v7 = result;
    swift_beginAccess();
    v8 = *(v7 + v6);

    if (v8)
    {

      if (v8 == a1)
      {
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {
          v9 = *a3;
          v10 = result;
          swift_beginAccess();
          v11 = *(v10 + v9);
          *(v10 + v9) = 0;
        }
      }
    }
  }

  return result;
}

void *sub_10025E3D0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionStarted, &qword_100351B80, &unk_100296FB0);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_initialDeviceUXRegion, &qword_100351B90, &qword_100297010);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_sessionEnded, &qword_100345620, &unk_10027C940);
  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_educationFlowPolicy);

  v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_card);

  v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_hint);

  v8 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14SessionHistory_education);

  return v0;
}

uint64_t sub_10025E4A8()
{
  sub_10025E3D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10025E528()
{
  sub_10025EE48(319, &unk_1003517E0, &type metadata for SessionStartReason, type metadata accessor for StateUpdateWithDistance);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10011CC54(319, &qword_100351640, &unk_100351648, &qword_100296E80);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10011CC54(319, &qword_1003454F0, &qword_1003454F8, &unk_10028B580);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10025E6FC()
{
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_charging, &qword_100351B88, &qword_100297008);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_deviceMotionStationary, &qword_100351B88, &qword_100297008);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_orientationIsValid, &qword_100351B88, &qword_100297008);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_screenOn, &qword_100351B88, &qword_100297008);
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_ranging, &qword_100351B88, &qword_100297008);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10025E810()
{
  sub_10011CC54(319, &unk_100351918, &qword_10033B300, &qword_100271EE8);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10025E8C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      sub_10025EE48(319, qword_100351AB8, &type metadata for Float, &type metadata accessor for Optional);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10025E984(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (v12 < a2)
  {
    v14 = ((*(*(v8 - 8) + 64) + (v13 & ~v11) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 5;
    if (v14 <= 3)
    {
      v15 = ((a2 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    v17 = v15 >= 2 ? v16 : 0;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *&a1[v14];
        if (*&a1[v14])
        {
          goto LABEL_20;
        }
      }

      else
      {
        v18 = *&a1[v14];
        if (v18)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v17)
    {
      v18 = a1[v14];
      if (a1[v14])
      {
LABEL_20:
        v19 = (v18 - 1) << (8 * v14);
        if (v14 <= 3)
        {
          v20 = *a1;
        }

        else
        {
          v19 = 0;
          v20 = *a1;
        }

        return v12 + (v20 | v19) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v10)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v21 = *(v9 + 48);

    return v21(&a1[v13] & ~v11);
  }
}

void sub_10025EBBC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + (v14 & ~v13) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 5;
  if (v12 >= a3)
  {
    v18 = 0;
    if (v12 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v12 >= a2)
    {
LABEL_17:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v9 >= v11)
      {
        v22 = *(v23 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v21 = *(v10 + 56);

        v21(&a1[v14] & ~v13, a2);
      }

      return;
    }
  }

  v19 = ~v12 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_27:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

void sub_10025EE48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10025EE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10025EF20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

char *sub_10025F1F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_previousUXRegion;
  v6 = sub_100035D04(&unk_100351648, &qword_100296E80);
  v7 = *(*(v6 - 8) + 56);
  v7(&v3[v5], 1, 1, v6);
  v7(&v3[OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_uxRegion], 1, 1, v6);
  *&v3[OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_tasks] = &_swiftEmptySetSingleton;
  *(v3 + 2) = UUID.uuidString.getter();
  *(v3 + 3) = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = sub_10000A0B4();
  v11 = v10;

  *(v3 + 4) = v9;
  *(v3 + 5) = v11;
  v12 = OBJC_IVAR____TtC17proximitycontrold13DeviceHistory_discoveryTime;
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 32))(&v3[v12], a2, v13);
  return v3;
}

unint64_t sub_10025F388()
{
  result = qword_100351B98;
  if (!qword_100351B98)
  {
    sub_100035D4C(&qword_10033C320, &qword_100272B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100351B98);
  }

  return result;
}

unint64_t sub_10025F40C()
{
  result = qword_100351BA8;
  if (!qword_100351BA8)
  {
    sub_100035D4C(&qword_100351BA0, &qword_100297018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100351BA8);
  }

  return result;
}

uint64_t sub_10025F478(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
    }
  }

  else
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10025F4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025F520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025F588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Publisher<>.switchToLatest()()
{
  return Publisher<>.switchToLatest()();
}

{
  return Publisher<>.switchToLatest()();
}

uint64_t Publisher.map<A>(_:)()
{
  return Publisher.map<A>(_:)();
}

{
  return Publisher.map<A>(_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t Sequence.flatMap<A>(_:)()
{
  return Sequence.flatMap<A>(_:)();
}

{
  return Sequence.flatMap<A>(_:)();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)()
{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}