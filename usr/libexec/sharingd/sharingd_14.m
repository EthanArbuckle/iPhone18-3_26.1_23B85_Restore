void *sub_1002F1A08@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v8 = a3 >> 1;
  v9 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_40;
  }

  a4 = (v9 - 0x1000000000000000) >> 61;
  if (a4 != 7)
  {
    goto LABEL_41;
  }

  if ((v9 & 0x1FFFFFFFFFFFFFFFLL) != 2)
  {
    v14 = &unk_1007FA1B0;
    sub_10028088C(&unk_1009832C0, &unk_1007FA1B0);
    sub_100011630(&unk_100977330, &unk_1009832C0, &unk_1007FA1B0);
    swift_allocError();
    swift_willThrow();
    return v14;
  }

  v4 = a2;
  v5 = a1;
  v30 = _swiftEmptyArrayStorage;
  sub_10028FEB0(0, (a3 >> 1) - a2, 0);
  if (v4 <= v8)
  {
    a4 = v8;
  }

  else
  {
    a4 = v4;
  }

  if (v8 <= v4)
  {
    goto LABEL_38;
  }

  v8 = a4 - v4;
  v10 = _swiftEmptyArrayStorage;
  v6 = v5 + v4;
  v7 = *(v5 + v4);
  v5 = _swiftEmptyArrayStorage[2];
  a4 = _swiftEmptyArrayStorage[3];
  v4 = v5 + 1;
  if (v5 >= a4 >> 1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v10[1].i64[0] = v4;
    a4 = v10 + 2 * v5;
    *(a4 + 32) = v7;
    if (v8 != 1)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    sub_10028FEB0((a4 > 1), v4, 1);
    v10 = v30;
  }

  LOWORD(v6) = *(v6 + 1) << 8;
  v30 = v10;
  v11 = v10[1].u64[1];
  v12 = v5 + 2;
  if (v4 >= v11 >> 1)
  {
    sub_10028FEB0((v11 > 1), v12, 1);
    v10 = v30;
  }

  v10[1].i64[0] = v12;
  v10[2].i16[v4] = v6;
  if (v9 != 2)
  {
    v5 = 8190;
    while (1)
    {
      a4 = v8 + v5;
      if (v8 + v5 == 0x2000)
      {
        goto LABEL_38;
      }

      if (!v5)
      {
        goto LABEL_39;
      }

      v30 = v10;
      v6 = v10[1].u64[0];
      v15 = v10[1].u64[1];
      v4 = v6 + 1;
      if (v6 >= v15 >> 1)
      {
        sub_10028FEB0((v15 > 1), v6 + 1, 1);
        v10 = v30;
      }

      v10[1].i64[0] = v4;
      v10[2].i16[v6] = 0;
      --v5;
      if (v9 + v5 == 0x2000)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = v10[1].u64[0];
  if (v4)
  {
LABEL_14:
    if (v4 < 4)
    {
      v13 = 0;
      LODWORD(v14) = 0;
      goto LABEL_33;
    }

    if (v4 >= 0x10)
    {
      v13 = v4 & 0xFFFFFFFFFFFFFFF0;
      v16 = v10 + 3;
      v17 = 0uLL;
      v18 = v4 & 0xFFFFFFFFFFFFFFF0;
      v19 = 0uLL;
      do
      {
        v17 = vorrq_s8(v16[-1], v17);
        v19 = vorrq_s8(*v16, v19);
        v16 += 2;
        v18 -= 16;
      }

      while (v18);
      v20 = vorrq_s8(v19, v17);
      *v20.i8 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      v14 = (v20.i32[0] | v20.i32[1] | ((v20.i64[0] | HIDWORD(v20.i64[0])) >> 16));
      if (v4 != v13)
      {
        if ((v4 & 0xC) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else
    {
      LOWORD(v14) = 0;
      v13 = 0;
LABEL_30:
      v21 = v13;
      v13 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = v14;
      v23 = (&v10[2] + 2 * v21);
      v24 = v21 - (v4 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v25 = *v23++;
        v22 = vorr_s8(v25, v22);
        v24 += 4;
      }

      while (v24);
      v14 = (v22.i32[0] | v22.i32[1] | ((*&v22 | HIDWORD(*&v22)) >> 16));
      if (v4 != v13)
      {
LABEL_33:
        v26 = v4 - v13;
        v27 = &v10[2] + v13;
        do
        {
          v28 = *v27++;
          v14 = (v28 | v14);
          --v26;
        }

        while (v26);
      }
    }
  }

  else
  {

    return 0;
  }

  return v14;
}

uint64_t sub_1002F1D34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v62 = a4;
  v60 = a3;
  v72 = a1;
  v7 = type metadata accessor for DispatchTimeInterval();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  v9 = __chkstk_darwin(v7);
  v66 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = v58 - v11;
  v12 = sub_10028088C(&qword_100976C00, &unk_1007F9D70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v58[0] = v58 - v14;
  v71 = type metadata accessor for DispatchTime();
  v61 = *(v71 - 8);
  v15 = *(v61 + 64);
  v16 = __chkstk_darwin(v71);
  v63 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v64 = v58 - v18;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v58[1] = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F17FC(a2, v5 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_noLaterThan);
  sub_1000276B4(0, &qword_10097DBA0, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002F30F0(&unk_100977390, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10028088C(&qword_1009820E0, &qword_1008085E0);
  sub_100011630(qword_1009773A0, &qword_1009820E0, &qword_1008085E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v60;
  v27 = a2;
  v28 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v22 + 8))(v25, v21);
  v29 = v70;
  *(v70 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer) = v28;
  aBlock[4] = v62;
  aBlock[5] = v67;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v30 = v58[0];
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DAAD8;
  _Block_copy(aBlock);
  v73 = _swiftEmptyArrayStorage;
  sub_1002F30F0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);

  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  v31 = v29;
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  v32 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = type metadata accessor for DispatchWorkItem();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = DispatchWorkItem.init(flags:block:)();

  v37 = OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer;
  v38 = v31;
  v39 = *(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer);
  v40 = v71;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v62 = v36;
  OS_dispatch_source.setEventHandler(handler:)();
  swift_unknownObjectRelease();
  v67 = v27;
  sub_1002F17FC(v27, v30);
  v41 = *(v32 + 48);
  if (v41(v30, 1, v40) == 1)
  {
    v42 = v63;
    static DispatchTime.distantFuture.getter();
    if (v41(v30, 1, v40) != 1)
    {
      sub_100005508(v30, &qword_100976C00, &unk_1007F9D70);
    }
  }

  else
  {
    v42 = v63;
    (*(v32 + 32))(v63, v30, v40);
  }

  sub_1002F30F0(&qword_100976C08, &type metadata accessor for DispatchTime);
  v43 = v72;
  v44 = dispatch thunk of static Comparable.< infix(_:_:)();
  v45 = v64;
  if (v44)
  {
    (*(v32 + 32))(v64, v42, v40);
  }

  else
  {
    (*(v32 + 8))(v42, v40);
    (*(v32 + 16))(v45, v43, v40);
  }

  v46 = v32;
  v47 = *(v38 + v37);
  swift_getObjectType();
  v49 = v68;
  v48 = v69;
  v50 = *(v68 + 104);
  v51 = v65;
  v50(v65, enum case for DispatchTimeInterval.never(_:), v69);
  v52 = v66;
  *v66 = 0;
  v50(v52, enum case for DispatchTimeInterval.nanoseconds(_:), v48);
  v53 = v45;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();

  sub_100005508(v67, &qword_100976C00, &unk_1007F9D70);
  v54 = *(v46 + 8);
  v55 = v71;
  v54(v72, v71);
  v56 = *(v49 + 8);
  v56(v52, v48);
  v56(v51, v48);
  v54(v53, v55);
  return v70;
}

unint64_t sub_1002F24FC()
{
  result = qword_100976C38;
  if (!qword_100976C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C38);
  }

  return result;
}

uint64_t _s7FeatureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7FeatureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1002F26EC()
{
  sub_1002F2784();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1002F2784()
{
  if (!qword_100976D40)
  {
    type metadata accessor for DispatchTime();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100976D40);
    }
  }
}

void sub_1002F28F4()
{
  sub_1002F298C();
  if (v0 <= 0x3F)
  {
    sub_1002F29BC();
    if (v1 <= 0x3F)
    {
      sub_1000276B4(319, &unk_100977150, SFB389NFCPromptConfiguration_ptr);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_1002F298C()
{
  result = qword_100977140;
  if (!qword_100977140)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100977140);
  }

  return result;
}

void sub_1002F29BC()
{
  if (!qword_100977148)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100977148);
    }
  }
}

void sub_1002F2A70()
{
  type metadata accessor for B389PresentationConfig.Mode(319);
  if (v0 <= 0x3F)
  {
    sub_1002F2B90(319, &qword_1009771E8);
    if (v1 <= 0x3F)
    {
      sub_1002F2B90(319, qword_1009771F0);
      if (v2 <= 0x3F)
      {
        sub_1002F2B90(319, &unk_100978AB0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002F2B90(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1002F2BDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F43726F6C6F63 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7375655A7369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5079726574746162 && a2 == 0xEE0064616F6C7961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xED0000776F4C6F6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572685469737372 && a2 == 0xED0000646C6F6873 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010078B020 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E69766172676E65 && a2 == 0xED00006174614467)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1002F2F84(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7690, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002F2FF4()
{
  result = qword_100977268;
  if (!qword_100977268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977268);
  }

  return result;
}

unint64_t sub_1002F3048()
{
  result = qword_100977270;
  if (!qword_100977270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977270);
  }

  return result;
}

unint64_t sub_1002F309C()
{
  result = qword_100977278;
  if (!qword_100977278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977278);
  }

  return result;
}

uint64_t sub_1002F30F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002F3138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002F3198()
{
  result = qword_1009772B0;
  if (!qword_1009772B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009772B0);
  }

  return result;
}

Swift::Int sub_1002F31EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_100975460, &qword_1007F8820);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_100010684(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_100010684(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_100285E74(v18);
        if (v11)
        {
          sub_100285E74(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_1002F334C(uint64_t a1)
{
  v162 = sub_10028088C(&unk_100978CD0, &unk_1007FC090);
  v2 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v4 = &v157 - v3;
  v169 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v5 = *(*(v169 - 1) + 64);
  v6 = __chkstk_darwin(v169);
  v173 = (&v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v161 = (&v157 - v8);
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v168 = (&v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v159 = &v157 - v13;
  v14 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v166 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v158 = &v157 - v18;
  v19 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v22);
  v27 = (&v157 - v26);
  v28 = __chkstk_darwin(v25);
  v29 = __chkstk_darwin(v28);
  v31 = &v157 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v157 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = (&v157 - v36);
  __chkstk_darwin(v35);
  v179 = &v157 - v39;
  v40 = *(a1 + 16);
  if (!v40)
  {
    return _swiftEmptySetSingleton;
  }

  v172 = v38;
  sub_10028088C(&unk_100977340, &unk_1007FA1C0);
  v177 = a1;
  v41 = static _SetStorage.allocate(capacity:)();
  v42 = 0;
  v178 = v41;
  v176 = v41 + 56;
  v165 = v177 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v177 = *(v20 + 72);
  v43 = v162;
  v174 = v27;
  v171 = v31;
  v164 = v37;
  v167 = v24;
  v163 = v40;
  while (1)
  {
    v170 = v42;
    v44 = v179;
    sub_1002F4C20(v165 + v177 * v42, v179, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v45 = *(v178 + 40);
    Hasher.init(_seed:)();
    sub_1002F4C20(v44, v37, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v50 = v161;
        sub_1002F5394(v37, v161, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        Hasher._combine(_:)(2uLL);
        v51 = *v50;
        v52 = v50[1];
        Data.hash(into:)();
        v53 = v169;
        v54 = v169[5];
        type metadata accessor for UUID();
        sub_1002F30F0(&qword_100976170, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v55 = (v50 + v53[7]);
        if (v55[1])
        {
          v56 = *v55;
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v43 = v162;
        v59 = v161;
        Hasher._combine(_:)(*(v161 + v169[9]));
        sub_1002F3138(v59, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        v27 = v174;
        v31 = v171;
      }

      else
      {
        v58 = *v37;
        Hasher._combine(_:)(3uLL);
        NSObject.hash(into:)();

        v27 = v174;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v57 = v37;
        v48 = v159;
        sub_1002F5394(v57, v159, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        Hasher._combine(_:)(1uLL);
        sub_10032D050();
        v49 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      }

      else
      {
        v47 = v37;
        v48 = v158;
        sub_1002F5394(v47, v158, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        Hasher._combine(_:)(0);
        sub_10032CD80();
        v49 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      }

      sub_1002F3138(v48, v49);
    }

    v60 = Hasher._finalize()();
    v61 = v178;
    v175 = ~(-1 << *(v178 + 32));
    v62 = v60 & v175;
    v63 = (v60 & v175) >> 6;
    v64 = *(v176 + 8 * v63);
    v65 = 1 << (v60 & v175);
    if ((v65 & v64) != 0)
    {
      break;
    }

LABEL_17:
    *(v176 + 8 * v63) = v64 | v65;
    sub_1002F5394(v179, *(v61 + 48) + v62 * v177, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v66 = *(v61 + 16);
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
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
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
    }

    *(v61 + 16) = v68;
LABEL_4:
    v42 = v170 + 1;
    v37 = v164;
    if (v170 + 1 == v163)
    {
      return v178;
    }
  }

  while (1)
  {
    sub_1002F4C20(*(v61 + 48) + v62 * v177, v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v69 = *(v43 + 48);
    sub_1002F4C20(v34, v4, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1002F4C20(v179, &v4[v69], type metadata accessor for SDAirDropDiscoveredEndpoint);
    v70 = swift_getEnumCaseMultiPayload();
    if (v70 > 1)
    {
      break;
    }

    if (!v70)
    {
      sub_1002F4C20(v4, v31, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v71 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
        v72 = v31;
LABEL_46:
        sub_1002F3138(v72, v71);
LABEL_48:
        v61 = v178;
        sub_100005508(v4, &unk_100978CD0, &unk_1007FC090);
        goto LABEL_24;
      }

      v87 = v166;
      sub_1002F5394(&v4[v69], v166, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v88 = sub_100331670();
      sub_1002F3138(v87, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_1002F3138(v31, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v88)
      {
LABEL_3:
        sub_1002F3138(v179, type metadata accessor for SDAirDropDiscoveredEndpoint);
        sub_1002F3138(v4, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v27 = v174;
        goto LABEL_4;
      }

      goto LABEL_50;
    }

    v81 = v172;
    sub_1002F4C20(v4, v172, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v71 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v72 = v81;
      goto LABEL_46;
    }

    v82 = v168;
    sub_1002F5394(&v4[v69], v168, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v83 = sub_100331B60(v81, v82);
    sub_1002F3138(v82, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1002F3138(v81, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v83)
    {
      sub_1002F3138(v179, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_1002F3138(v4, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v27 = v174;
      v31 = v171;
      goto LABEL_4;
    }

    sub_1002F3138(v4, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v27 = v174;
    v31 = v171;
LABEL_23:
    v61 = v178;
LABEL_24:
    v62 = (v62 + 1) & v175;
    v63 = v62 >> 6;
    v64 = *(v176 + 8 * (v62 >> 6));
    v65 = 1 << v62;
    if ((v64 & (1 << v62)) == 0)
    {
      goto LABEL_17;
    }
  }

  if (v70 != 2)
  {
    sub_1002F4C20(v4, v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v84 = *v24;
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);

      v27 = v174;
      goto LABEL_48;
    }

    v85 = *&v4[v69];
    sub_1000276B4(0, &qword_1009772D8, NSObject_ptr);
    v86 = static NSObject.== infix(_:_:)();

    sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (v86)
    {
      goto LABEL_3;
    }

LABEL_50:
    sub_1002F3138(v4, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v27 = v174;
    goto LABEL_23;
  }

  sub_1002F4C20(v4, v27, type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v71 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v72 = v27;
    goto LABEL_46;
  }

  v73 = v173;
  sub_1002F5394(&v4[v69], v173, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  v74 = *v27;
  v75 = v27[1];
  v77 = *v73;
  v76 = v73[1];
  v78 = v75 >> 62;
  v79 = v76 >> 62;
  if (v75 >> 62 == 3)
  {
    v80 = 0;
    if (!v74 && v75 == 0xC000000000000000 && v76 >> 62 == 3)
    {
      v80 = 0;
      if (!v77 && v76 == 0xC000000000000000)
      {
        goto LABEL_168;
      }
    }

LABEL_61:
    if (v79 <= 1)
    {
      goto LABEL_62;
    }

    goto LABEL_67;
  }

  if (v78 <= 1)
  {
    if (!v78)
    {
      v80 = BYTE6(v75);
      if (v79 <= 1)
      {
        goto LABEL_62;
      }

      goto LABEL_67;
    }

    LODWORD(v80) = HIDWORD(v74) - v74;
    if (__OFSUB__(HIDWORD(v74), v74))
    {
      goto LABEL_187;
    }

    v80 = v80;
    goto LABEL_61;
  }

  if (v78 == 2)
  {
    v90 = *(v74 + 16);
    v89 = *(v74 + 24);
    v67 = __OFSUB__(v89, v90);
    v80 = v89 - v90;
    if (v67)
    {
      goto LABEL_186;
    }

    goto LABEL_61;
  }

  v80 = 0;
  if (v79 <= 1)
  {
LABEL_62:
    if (v79)
    {
      LODWORD(v91) = HIDWORD(v77) - v77;
      if (__OFSUB__(HIDWORD(v77), v77))
      {
        goto LABEL_185;
      }

      v91 = v91;
    }

    else
    {
      v91 = BYTE6(v76);
    }

    goto LABEL_69;
  }

LABEL_67:
  if (v79 != 2)
  {
    if (v80)
    {
      goto LABEL_20;
    }

    goto LABEL_168;
  }

  v93 = *(v77 + 16);
  v92 = *(v77 + 24);
  v67 = __OFSUB__(v92, v93);
  v91 = v92 - v93;
  if (v67)
  {
    goto LABEL_184;
  }

LABEL_69:
  if (v80 != v91)
  {
    goto LABEL_20;
  }

  if (v80 < 1)
  {
    goto LABEL_168;
  }

  if (v78 <= 1)
  {
    if (!v78)
    {
      *__s1 = v74;
      *&__s1[8] = v75;
      __s1[10] = BYTE2(v75);
      __s1[11] = BYTE3(v75);
      __s1[12] = BYTE4(v75);
      __s1[13] = BYTE5(v75);
      if (v79)
      {
        if (v79 == 1)
        {
          v94 = v77;
          if (v77 >> 32 < v77)
          {
            goto LABEL_191;
          }

          v157 = (v77 >> 32) - v77;
          v95 = __DataStorage._bytes.getter();
          if (!v95)
          {
            goto LABEL_222;
          }

          v96 = v95;
          v97 = __DataStorage._offset.getter();
          if (__OFSUB__(v94, v97))
          {
            goto LABEL_196;
          }

          v98 = v94 - v97 + v96;
          v99 = __DataStorage._length.getter();
          if (!v98)
          {
            goto LABEL_221;
          }

          goto LABEL_137;
        }

        v127 = *(v77 + 16);
        v128 = *(v77 + 24);
        v110 = __DataStorage._bytes.getter();
        if (v110)
        {
          v129 = __DataStorage._offset.getter();
          if (__OFSUB__(v127, v129))
          {
            goto LABEL_201;
          }

          v110 += v127 - v129;
        }

        v112 = v128 - v127;
        if (__OFSUB__(v128, v127))
        {
          goto LABEL_193;
        }

        v113 = __DataStorage._length.getter();
        if (!v110)
        {
          goto LABEL_220;
        }

        goto LABEL_128;
      }

LABEL_96:
      v180 = v77;
      v181 = v76;
      v182 = BYTE2(v76);
      v183 = BYTE3(v76);
      v184 = BYTE4(v76);
      v114 = BYTE6(v76);
      v185 = BYTE5(v76);
      v115 = __s1;
      v116 = &v180;
      goto LABEL_167;
    }

    v104 = v74;
    if (v74 > v74 >> 32)
    {
      goto LABEL_188;
    }

    v160 = v73[1];
    v105 = __DataStorage._bytes.getter();
    if (v105)
    {
      v106 = v105;
      v107 = __DataStorage._offset.getter();
      if (__OFSUB__(v104, v107))
      {
        goto LABEL_190;
      }

      v157 = v104 - v107 + v106;
    }

    else
    {
      v157 = 0;
    }

    __DataStorage._length.getter();
    v43 = v162;
    v31 = v171;
    if (v79 != 2)
    {
      v117 = BYTE6(v160);
      if (v79 == 1)
      {
        v123 = v77;
        v124 = (v77 >> 32) - v77;
        if (v77 >> 32 < v77)
        {
          goto LABEL_199;
        }

        v98 = __DataStorage._bytes.getter();
        if (v98)
        {
          v125 = __DataStorage._offset.getter();
          if (__OFSUB__(v123, v125))
          {
            goto LABEL_206;
          }

          v98 += v123 - v125;
        }

        v126 = __DataStorage._length.getter();
        if (v126 >= v124)
        {
          v122 = v124;
        }

        else
        {
          v122 = v126;
        }

        v115 = v157;
        if (!v157)
        {
          goto LABEL_214;
        }

        if (!v98)
        {
          goto LABEL_213;
        }

        goto LABEL_162;
      }

      v115 = v157;
      *__s1 = v77;
      *&__s1[8] = v160;
      *&__s1[12] = WORD2(v160);
      if (!v157)
      {
        goto LABEL_217;
      }

LABEL_166:
      v114 = v117;
      v116 = __s1;
LABEL_167:
      if (memcmp(v115, v116, v114))
      {
        goto LABEL_20;
      }

      goto LABEL_168;
    }

    v140 = *(v77 + 16);
    v141 = *(v77 + 24);
    v98 = __DataStorage._bytes.getter();
    if (v98)
    {
      v142 = __DataStorage._offset.getter();
      if (__OFSUB__(v140, v142))
      {
        goto LABEL_204;
      }

      v98 += v140 - v142;
    }

    if (__OFSUB__(v141, v140))
    {
      goto LABEL_200;
    }

    v143 = __DataStorage._length.getter();
    if (v143 >= v141 - v140)
    {
      v122 = v141 - v140;
    }

    else
    {
      v122 = v143;
    }

    v115 = v157;
    if (!v157)
    {
      goto LABEL_210;
    }

    v43 = v162;
    v31 = v171;
    if (!v98)
    {
      goto LABEL_209;
    }

    goto LABEL_162;
  }

  if (v78 == 2)
  {
    v160 = v73[1];
    v100 = *(v74 + 16);
    v101 = __DataStorage._bytes.getter();
    if (v101)
    {
      v102 = v101;
      v103 = __DataStorage._offset.getter();
      if (__OFSUB__(v100, v103))
      {
        goto LABEL_189;
      }

      v157 = v100 - v103 + v102;
    }

    else
    {
      v157 = 0;
    }

    __DataStorage._length.getter();
    v43 = v162;
    v31 = v171;
    if (v79 != 2)
    {
      v117 = BYTE6(v160);
      if (v79 == 1)
      {
        v118 = v77;
        v119 = (v77 >> 32) - v77;
        if (v77 >> 32 < v77)
        {
          goto LABEL_194;
        }

        v98 = __DataStorage._bytes.getter();
        if (v98)
        {
          v120 = __DataStorage._offset.getter();
          if (__OFSUB__(v118, v120))
          {
            goto LABEL_205;
          }

          v98 += v118 - v120;
        }

        v121 = __DataStorage._length.getter();
        if (v121 >= v119)
        {
          v122 = v119;
        }

        else
        {
          v122 = v121;
        }

        v115 = v157;
        if (!v157)
        {
          goto LABEL_212;
        }

        if (!v98)
        {
          goto LABEL_211;
        }

        goto LABEL_162;
      }

      v115 = v157;
      *__s1 = v77;
      *&__s1[8] = v160;
      *&__s1[12] = WORD2(v160);
      if (!v157)
      {
        goto LABEL_215;
      }

      goto LABEL_166;
    }

    v136 = *(v77 + 16);
    v137 = *(v77 + 24);
    v98 = __DataStorage._bytes.getter();
    if (v98)
    {
      v138 = __DataStorage._offset.getter();
      if (__OFSUB__(v136, v138))
      {
        goto LABEL_203;
      }

      v98 += v136 - v138;
    }

    if (__OFSUB__(v137, v136))
    {
      goto LABEL_198;
    }

    v139 = __DataStorage._length.getter();
    if (v139 >= v137 - v136)
    {
      v122 = v137 - v136;
    }

    else
    {
      v122 = v139;
    }

    v115 = v157;
    if (!v157)
    {
      goto LABEL_219;
    }

    v43 = v162;
    v31 = v171;
    if (!v98)
    {
      goto LABEL_218;
    }

LABEL_162:
    if (v115 != v98)
    {
      v114 = v122;
LABEL_164:
      v116 = v98;
      goto LABEL_167;
    }

LABEL_168:
    v144 = v169[5];
    if (static UUID.== infix(_:_:)())
    {
      v145 = v169[7];
      v27 = v174;
      v146 = (v174 + v145);
      v147 = *(v174 + v145 + 8);
      v148 = (v173 + v145);
      v149 = v148[1];
      if (!v147)
      {
        sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v24 = v167;
        if (!v149)
        {
          goto LABEL_177;
        }

        goto LABEL_21;
      }

      if (v149)
      {
        if (*v146 == *v148 && v147 == v149)
        {
          sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v24 = v167;
          v27 = v174;
          goto LABEL_177;
        }

        v150 = v148[1];
        v151 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v24 = v167;
        v27 = v174;
        if (v151)
        {
LABEL_177:
          v152 = v169[9];
          v153 = *(v27 + v152);
          v154 = *(v173 + v152);
          sub_1002F3138(v173, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          sub_1002F3138(v27, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          v155 = v153 == v154;
          v31 = v171;
          v43 = v162;
          if (v155)
          {
            sub_1002F3138(v179, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_1002F3138(v4, type metadata accessor for SDAirDropDiscoveredEndpoint);
            goto LABEL_4;
          }

          goto LABEL_22;
        }

LABEL_21:
        sub_1002F3138(v173, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        sub_1002F3138(v27, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
LABEL_22:
        sub_1002F3138(v4, type metadata accessor for SDAirDropDiscoveredEndpoint);
        goto LABEL_23;
      }
    }

LABEL_20:
    sub_1002F3138(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v24 = v167;
    v27 = v174;
    goto LABEL_21;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v79)
  {
    goto LABEL_96;
  }

  if (v79 == 2)
  {
    v108 = *(v77 + 16);
    v109 = *(v77 + 24);
    v110 = __DataStorage._bytes.getter();
    if (v110)
    {
      v111 = __DataStorage._offset.getter();
      if (__OFSUB__(v108, v111))
      {
        goto LABEL_202;
      }

      v110 += v108 - v111;
    }

    v112 = v109 - v108;
    if (__OFSUB__(v109, v108))
    {
      goto LABEL_195;
    }

    v113 = __DataStorage._length.getter();
    if (!v110)
    {
      goto LABEL_216;
    }

LABEL_128:
    if (v113 >= v112)
    {
      v130 = v112;
    }

    else
    {
      v130 = v113;
    }

    v131 = memcmp(__s1, v110, v130);
    v43 = v162;
    v31 = v171;
    if (v131)
    {
      goto LABEL_20;
    }

    goto LABEL_168;
  }

  v132 = v77;
  if (v77 >> 32 < v77)
  {
    goto LABEL_192;
  }

  v157 = (v77 >> 32) - v77;
  v133 = __DataStorage._bytes.getter();
  if (v133)
  {
    v134 = v133;
    v135 = __DataStorage._offset.getter();
    if (__OFSUB__(v132, v135))
    {
      goto LABEL_197;
    }

    v98 = v132 - v135 + v134;
    v99 = __DataStorage._length.getter();
    if (!v98)
    {
      goto LABEL_208;
    }

LABEL_137:
    if (v99 >= v157)
    {
      v114 = v157;
    }

    else
    {
      v114 = v99;
    }

    v115 = __s1;
    goto LABEL_164;
  }

  __DataStorage._length.getter();
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void sub_1002F48E0(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_10028088C(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_1000276B4(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_1000276B4(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1002F4BCC()
{
  result = qword_1009772E8;
  if (!qword_1009772E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009772E8);
  }

  return result;
}

uint64_t sub_1002F4C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002F4C88()
{
  result = qword_100977308;
  if (!qword_100977308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977308);
  }

  return result;
}

void sub_1002F4CDC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10028088C(&qword_100977360, &qword_1007FA1E0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SDAirDropSendConnection();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for SDAirDropSendConnection();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1002F4FA8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10028088C(&unk_100977310, &unk_1007FA1A0);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1002F30F0(&qword_100976170, &type metadata accessor for UUID);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1002F30F0(&qword_1009761E0, &type metadata accessor for UUID);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1002F52E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  return sub_1002E9CE8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 40), *(v2 + 48), a2);
}

uint64_t sub_1002F5308()
{
  v1 = *(*(v0 + 48) + 8);
  v2 = *(v0 + 24);
  return dispatch thunk of static BinaryInteger.| infix(_:_:)();
}

unint64_t sub_1002F5340()
{
  result = qword_100977320;
  if (!qword_100977320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977320);
  }

  return result;
}

uint64_t sub_1002F5394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F5464()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1002F54A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[4];
  v5 = v3[6];
  v6 = v3[8];
  return sub_1002EA9CC(a1, v3[2], v3[3], v3[5], v3[7], a3, a2);
}

uint64_t sub_1002F5508()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SDAirDropAgentClient.DeviceFilter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SDAirDropAgentClient.DeviceFilter(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for B389PresentationConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for B389PresentationConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002F57A8()
{
  result = qword_1009774A8;
  if (!qword_1009774A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774A8);
  }

  return result;
}

unint64_t sub_1002F5800()
{
  result = qword_1009774B0;
  if (!qword_1009774B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774B0);
  }

  return result;
}

unint64_t sub_1002F5858()
{
  result = qword_1009774B8;
  if (!qword_1009774B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774B8);
  }

  return result;
}

unint64_t sub_1002F58CC()
{
  result = qword_1009774C0;
  if (!qword_1009774C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774C0);
  }

  return result;
}

unint64_t sub_1002F5924()
{
  result = qword_1009774C8;
  if (!qword_1009774C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774C8);
  }

  return result;
}

unint64_t sub_1002F597C()
{
  result = qword_1009774D0;
  if (!qword_1009774D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774D0);
  }

  return result;
}

unint64_t sub_1002F59D4()
{
  result = qword_1009774D8;
  if (!qword_1009774D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774D8);
  }

  return result;
}

uint64_t sub_1002F5A6C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009774E0);
  v1 = sub_10000C4AC(v0, qword_1009774E0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F5B34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002F5BD0, v3, 0);
}

uint64_t sub_1002F5BD0()
{
  v1 = *(v0 + 16);
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = *(v0 + 16);
  v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v4)
  {
    goto LABEL_3;
  }

  v9 = *(v0 + 16);
  if (SFAirDropReceive.AskRequest.senderBundleID.getter() == 0xD000000000000014 && 0x800000010078B170 == v10)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_4;
    }
  }

  v12 = *(v0 + 24);
  v5 = sub_1002F5CC4(*(v0 + 16));
LABEL_4:
  v6 = *(v0 + 8);
  v7 = v5 & 1;

  return v6(v7);
}

uint64_t sub_1002F5CC4(uint64_t *a1)
{
  v2 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for SFAirDropReceive.AskRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = SFVoiceMemosAppAvailable();
  if (result)
  {
    v50 = v11;
    v51 = v8;
    v46 = v6;
    v47 = v3;
    v52 = v7;
    v48 = v2;
    v49 = a1;
    v18 = SFAirDropReceive.AskRequest.files.getter();
    v19 = 0;
    v20 = *(v18 + 16);
    while (1)
    {
      if (v20 == v19)
      {

        v23 = objc_allocWithZone(LSApplicationRecord);
        v24 = sub_10066F3F8(0xD000000000000014, 0x800000010078B170, 1);
        v41 = v53;
        v42 = *(v53 + 16);
        *(v53 + 16) = v24;

        return *(v41 + 16) != 0;
      }

      if (v19 >= *(v18 + 16))
      {
        break;
      }

      (*(v13 + 16))(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19++, v12);
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      (*(v13 + 8))(v16, v12);
      v21 = String._bridgeToObjectiveC()();

      v22 = SFIsVoiceMemo();

      if ((v22 & 1) == 0)
      {

        return 0;
      }
    }

    __break(1u);
    swift_once();
    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_1009774E0);
    v27 = v50;
    v26 = v51;
    v28 = v52;
    (*(v51 + 16))(v50, v49, v52);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v31 = 136315394;
      v32 = v46;
      SFAirDropReceive.AskRequest.id.getter();
      sub_1002F7108(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v33 = v48;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v30;
      v35 = v34;
      v37 = v36;
      (*(v47 + 8))(v32, v33);
      (*(v26 + 8))(v27, v28);
      v38 = sub_10000C4E4(v35, v37, &v54);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2112;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v39;
      v40 = v45;
      *v45 = v39;
      _os_log_impl(&_mh_execute_header, v29, v44, "Failed to get Voice Memo app for ask request %s: %@", v31, 0x16u);
      sub_100005508(v40, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v49);
    }

    else
    {

      (*(v26 + 8))(v27, v28);
    }

    v41 = v53;
    return *(v41 + 16) != 0;
  }

  return result;
}

uint64_t sub_1002F6228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002F62C8, v5, 0);
}

uint64_t sub_1002F62C8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1002F7108(&qword_100977C00, type metadata accessor for AirDropActor);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  *v6 = v0;
  v6[1] = sub_1002F6410;
  v8 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v1, v3, 0xD000000000000027, 0x800000010078B120, sub_1002F6FB0, v4, v7);
}

uint64_t sub_1002F6410()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_1002F6524(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009775E8, &qword_1007FA6D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_1002F6FB8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002F6764;
  aBlock[3] = &unk_1008DADF8;
  v11 = _Block_copy(aBlock);

  [v7 importMemosForItems:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_1002F6704()
{

  sub_10028088C(&qword_1009775E8, &qword_1007FA6D8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002F6764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for URL();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6(v4, a3);
}

uint64_t sub_1002F67E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1002F6C50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerVoiceMemos();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1002F6C88(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1002F5B34(a1);
}

uint64_t sub_1002F6D24(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_1002F6E28(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x454D5F4543494F56;
  v5 = inited + 32;
  *(inited + 40) = 0xEA00000000004F4DLL;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002F6FB8()
{
  v0 = *(*(sub_10028088C(&qword_1009775E8, &qword_1007FA6D8) - 8) + 80);

  return sub_1002F6704();
}

uint64_t sub_1002F7044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005C00;

  return sub_1003D19DC(a1, a2, a3, v9, v8);
}

uint64_t sub_1002F7108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002F7174()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009775F0);
  v1 = sub_10000C4AC(v0, qword_1009775F0);
  if (qword_1009736F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1002F723C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browserQueue;
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  *&v2[v7] = static OS_dispatch_queue.main.getter();
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_managedConfig;
  *&v3[v8] = [objc_opt_self() sharedConnection];
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser] = 0;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints] = &_swiftEmptyDictionarySingleton;
  v9 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_endpointsUpdateHandler];
  *v9 = a1;
  *(v9 + 1) = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

void sub_1002F733C()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_managedConfig);
    if (v2)
    {
      if ([v2 isClassroomEnabled])
      {
        v3 = [objc_allocWithZone(CRKShareTargetBrowser) initWithDelegate:v0 queue:*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browserQueue)];
        v4 = *(v0 + v1);
        *(v0 + v1) = v3;

        v5 = *(v0 + v1);
        if (v5)
        {

          [v5 resume];
        }
      }
    }
  }
}

uint64_t sub_1002F73F8(uint64_t a1)
{
  v79 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v2 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v78 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v77 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for UUID();
  v7 = *(v76 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v76);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v74 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v72 = *(v82 - 8);
  v13 = *(v72 + 64);
  v14 = __chkstk_darwin(v82);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (&v72 - v18);
  __chkstk_darwin(v17);
  v21 = &v72 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints;
    v24 = a1 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v25 = *(v72 + 72);
    v80 = v19;
    v81 = v25;
    v73 = (v7 + 8);
    v83 = &v72 - v20;
    do
    {
      sub_1002940CC(v24, v21);
      sub_1002940CC(v21, v19);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v37 = v78;
          sub_10000ECA8(v19, v78, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          v38 = v37 + *(v79 + 20);
          v33 = UUID.uuidString.getter();
          v35 = v39;
          sub_1002F96B0(v37, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        }

        else
        {
          v41 = *v19;
          v42 = [*v19 identifier];
          if (!v42)
          {
            goto LABEL_32;
          }

          v43 = v42;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v44;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v40 = v77;
        sub_10000ECA8(v19, v77, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v33 = *v40;
        v35 = v40[1];

        sub_1002F96B0(v40, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      }

      else
      {
        v31 = v74;
        sub_10000ECA8(v19, v74, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v32 = v75;
        sub_10032C0AC();
        v33 = UUID.uuidString.getter();
        v35 = v34;
        (*v73)(v32, v76);
        v36 = v31;
        v21 = v83;
        sub_1002F96B0(v36, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      }

      v45 = v84;
      swift_beginAccess();
      v46 = v16;
      sub_1002940CC(v21, v16);
      v47 = *(v45 + v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = *(v45 + v23);
      v49 = v86;
      *(v45 + v23) = 0x8000000000000000;
      v51 = sub_100012854(v33, v35);
      v52 = v49[2];
      v53 = (v50 & 1) == 0;
      v54 = v52 + v53;
      if (__OFADD__(v52, v53))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v55 = v50;
      if (v49[3] >= v54)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v83;
          if (v50)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1002CEC98();
          v21 = v83;
          if (v55)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_100572DF0(v54, isUniquelyReferenced_nonNull_native);
        v56 = sub_100012854(v33, v35);
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_33;
        }

        v51 = v56;
        v21 = v83;
        if (v55)
        {
LABEL_3:

          v26 = v86;
          v27 = v86[7] + v51 * v81;
          v28 = v81;
          v16 = v46;
          sub_1002F964C(v46, v27);
          goto LABEL_4;
        }
      }

      v26 = v86;
      v86[(v51 >> 6) + 8] |= 1 << v51;
      v58 = (v26[6] + 16 * v51);
      *v58 = v33;
      v58[1] = v35;
      v59 = v26[7] + v51 * v81;
      v28 = v81;
      v16 = v46;
      sub_10000ECA8(v46, v59, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v60 = v26[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_30;
      }

      v26[2] = v62;
LABEL_4:
      v29 = *(v84 + v23);
      *(v84 + v23) = v26;

      swift_endAccess();
      sub_1002F96B0(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v24 += v28;
      --v22;
      v19 = v80;
    }

    while (v22);
  }

  v63 = v84;
  v65 = *(v84 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_endpointsUpdateHandler);
  v64 = *(v84 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_endpointsUpdateHandler + 8);
  v66 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints;
  swift_beginAccess();
  v67 = *(v63 + v66);
  v68 = v67[2];
  if (v68)
  {
    v84 = v65;
    v69 = sub_10028F688(v68, 0);
    v70 = sub_100291D40(&v85, v69 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v68, v67);

    sub_100027D64();
    if (v70 != v68)
    {
      goto LABEL_31;
    }

    v84(v69);
  }

  else
  {
    v65(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1002F7AD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints;
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v13 = *v10;
      swift_beginAccess();
      v14 = *(v2 + v9);

      v15 = sub_100012854(v12, v13);
      LOBYTE(v14) = v16;

      if (v14)
      {
        v17 = *(v2 + v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v2 + v9);
        v37 = v19;
        *(v2 + v9) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002CEC98();
          v19 = v37;
        }

        v20 = *(*(v19 + 48) + 16 * v15 + 8);

        v21 = *(v19 + 56);
        v22 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
        v23 = *(v22 - 8);
        sub_10000ECA8(v21 + *(v23 + 72) * v15, v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
        sub_1002D45E0(v15, v19);
        v24 = *(v2 + v9);
        *(v2 + v9) = v19;

        (*(v23 + 56))(v7, 0, 1, v22);
      }

      else
      {
        v11 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
        (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      }

      sub_1002F94BC(v7);
      swift_endAccess();
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  v26 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_endpointsUpdateHandler);
  v25 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_endpointsUpdateHandler + 8);
  v27 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints;
  swift_beginAccess();
  v28 = *(v2 + v27);
  v29 = v28[2];
  if (!v29)
  {
    v26(_swiftEmptyArrayStorage);
  }

  v35 = v26;
  v30 = sub_10028F688(v29, 0);
  v31 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v32 = sub_100291D40(&v36, v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v29, v28);

  result = sub_100027D64();
  if (v32 == v29)
  {
    v35(v30);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F7E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1002F7E2C, 0, 0);
}

uint64_t sub_1002F7E2C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002F7F24, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1002F7F24()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_1002F73F8(v3);

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_1002F7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1002F8000, 0, 0);
}

uint64_t sub_1002F8000()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002F80F8, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1002F80F8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_1002F7AD4(v3);

  return _swift_task_switch(sub_1002F9710, 0, 0);
}

uint64_t sub_1002F8188(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = a4;
  if (a4)
  {
    sub_1000276B4(0, &qword_1009776F8, CRKShareTarget_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = a1;
  a5(v6);
}

uint64_t sub_1002F8220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002F82BC, 0, 0);
}

uint64_t sub_1002F82BC()
{
  v30 = v0;
  if (qword_1009735A8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009775F0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    if (!v5)
    {
      __break(1u);
      return _swift_task_switch(v7, v8, v9);
    }

    v10 = v7;

    swift_getErrorValue();
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[10];
    v14 = Error.localizedDescription.getter();
    v16 = sub_10000C4E4(v14, v15, &v29);

    *(v6 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Classroom browser failed %s", v6, 0xCu);
    sub_10000C60C(v10);
  }

  else
  {
  }

  v17 = v0[13];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v0[16] = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_delegate;
    v0[17] = type metadata accessor for MainActor();
    v0[18] = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    v22 = sub_1002F85A0;
    goto LABEL_11;
  }

  v23 = v0[13];
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  v0[20] = v24;
  if (v24)
  {
    type metadata accessor for MainActor();
    v0[21] = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v25;
    v22 = sub_1002F8A18;
LABEL_11:
    v7 = v22;
    v8 = v19;
    v9 = v21;

    return _swift_task_switch(v7, v8, v9);
  }

  v26 = v0[14];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1002F85A0()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v5 = sub_1002F8728;
  }

  else
  {
    v5 = sub_1002F862C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002F862C()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 168) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002F8A18, v4, v3);
  }

  else
  {
    v5 = *(v0 + 112);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1002F8728()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002F87C8, v1, 0);
}

uint64_t sub_1002F87C8()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;

  sub_1002B3098(0, 0, v3, &unk_1007FA798, v7);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1002F8924, 0, 0);
}

uint64_t sub_1002F8924()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[21] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002F8A18, v4, v3);
  }

  else
  {
    v5 = v0[14];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1002F8A18()
{
  v2 = v0[20];
  v1 = v0[21];

  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser;
  v4 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser);
  v5 = v0[20];
  if (v4)
  {
    [v4 invalidate];
    v6 = *(v2 + v3);
    *(v2 + v3) = 0;

    v5 = v6;
  }

  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002F8CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002F8220(a1, v4, v5, v7, v6);
}

uint64_t sub_1002F8D90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100485FCC(a1, v4, v5, v6);
}

uint64_t sub_1002F8E44(unint64_t a1)
{
  v28 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v28);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = *(*(v7 - 8) + 64);
  result = __chkstk_darwin(v7 - 8);
  v11 = &v25 - v10;
  if (a1)
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = &v25 - v10;
    for (i = v1; v13; i = v1)
    {
      v14 = 0;
      v27 = a1 & 0xC000000000000001;
      v15 = _swiftEmptyArrayStorage;
      v16 = a1;
      v17 = v12;
      v1 = v13;
      while (v27)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a1 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_17;
        }

LABEL_8:
        *v6 = v18;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10028E820(0, v15[2] + 1, 1, v15);
        }

        v11 = v15[2];
        v19 = v15[3];
        if (v11 >= v19 >> 1)
        {
          v15 = sub_10028E820(v19 > 1, v11 + 1, 1, v15);
        }

        v15[2] = v11 + 1;
        sub_10000ECA8(v6, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        ++v14;
        v20 = a1 == v1;
        a1 = v16;
        v12 = v17;
        if (v20)
        {
          goto LABEL_21;
        }
      }

      if (v14 >= *(v12 + 16))
      {
        goto LABEL_18;
      }

      v18 = *(a1 + 8 * v14 + 32);
      a1 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v11;
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_21:
    v21 = type metadata accessor for TaskPriority();
    v22 = v25;
    (*(*(v21 - 8) + 56))(v25, 1, 1, v21);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v23;
    v24[5] = v15;
    sub_1002B3398(0, 0, v22, &unk_1007FA7C0, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F9164(unint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8);
  v7 = &v25 - v6;
  if (a1)
  {
    if (a1 >> 62)
    {
LABEL_22:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v1;
      if (v8)
      {
LABEL_4:
        v9 = 0;
        v10 = _swiftEmptyArrayStorage;
        v1 = &selRef_finishedEventForRecordID_withResults_;
        do
        {
          v11 = v9;
          while (1)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v12 = *(a1 + 8 * v11 + 32);
            }

            v13 = v12;
            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            v14 = [v12 identifier];
            if (v14)
            {
              break;
            }

            ++v11;
            if (v9 == v8)
            {
              goto LABEL_24;
            }
          }

          v27 = v7;
          v15 = v14;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v17;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10028E1C8(0, *(v10 + 2) + 1, 1, v10);
          }

          v19 = *(v10 + 2);
          v18 = *(v10 + 3);
          if (v19 >= v18 >> 1)
          {
            v10 = sub_10028E1C8((v18 > 1), v19 + 1, 1, v10);
          }

          *(v10 + 2) = v19 + 1;
          v20 = &v10[16 * v19];
          v21 = v26;
          v7 = v27;
          *(v20 + 4) = v16;
          *(v20 + 5) = v21;
        }

        while (v9 != v8);
        goto LABEL_24;
      }
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v1;
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_24:
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v23;
    v24[5] = v10;
    sub_1002B3398(0, 0, v7, &unk_1007FA7A8, v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F93FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002F7FDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1002F94BC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002F9524(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  a2(v2[5]);

  return _swift_deallocObject(v2, 48);
}

uint64_t sub_1002F958C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002F7E08(a1, v4, v5, v7, v6);
}

uint64_t sub_1002F964C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F96B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002F9714()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_1007FA7D0;
  if (qword_1009735B0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(result + 64) = &off_10097BDE8;
  *(result + 96) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(result + 104) = &off_10097BDD0;
  *(result + 136) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(result + 144) = &off_10097BDB8;
  *(result + 176) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(result + 184) = &off_10097BDA0;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckWatchIsNearby;
  *(result + 224) = &off_10097BD88;
  *(result + 256) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 264) = &off_10097BE00;
  *(result + 296) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 304) = &off_10097BD70;
  *(result + 336) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 344) = &off_10097BD58;
  *(result + 376) = &type metadata for SDAuthentication.Operation.IncludeAWDLInfoInMessage;
  *(result + 384) = &off_10097BD40;
  *(result + 416) = &type metadata for SDAuthentication.Operation.IncludeLastUnlockDateInMessage;
  *(result + 424) = &off_10097BD28;
  *(result + 456) = &type metadata for SDAuthentication.Operation.IncludeRangingTokenInMessage;
  *(result + 464) = &off_10097BD10;
  *(result + 496) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(result + 504) = &off_10097BCF8;
  return result;
}

void sub_1002F98D0()
{
  type metadata accessor for SDAuthenticationCommonOperationInput();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_1009756D0);
    if (v1 <= 0x3F)
    {
      sub_1002F9C34(319, &qword_1009756D8, &type metadata for AuthenticationPolicies, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002F99A0(uint64_t a1)
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

uint64_t sub_1002F99BC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1002F99E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1002F9A00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1002F9A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002F9AF4()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1002A6BEC();
        if (v3 <= 0x3F)
        {
          sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1002F9C34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1002F9CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 + *(a3 + 40);
  result = sub_10028BCC0(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t sub_1002F9D64()
{
  v1 = *(v0 + 48);
  sub_100294008(v1, *(v0 + 56));
  return v1;
}

id sub_1002F9D98(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 44);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1002F9E18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_1009735B0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 64) = &off_10097BD58;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RangeAsResponder;
  *(v6 + 104) = &off_10097C0F0;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.IncludeAWDLInfoInMessage;
  *(v6 + 144) = &off_10097BD40;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v6 + 184) = &off_10097C1B0;
  *a3 = v6;
  v7 = _s10NanoWalletV20HandleRequestContextVMa(0);
  *(a3 + v7[11]) = 0;
  *(a3 + v7[12]) = 1;
  if ([a1 hasVersion] && objc_msgSend(a1, "hasType") && objc_msgSend(a1, "hasAwdlInfo") && objc_msgSend(a1, "hasRangingToken") && objc_msgSend(a1, "hasUnlockDate"))
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    v10 = (a3 + v7[9]);
    *v10 = v8;
    v10[1] = v9;
    sub_100294008(v8, v9);
    *(a3 + v7[8]) = [a1 version];
    result = [a1 awdlInfo];
    if (result)
    {
      v12 = result;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = (a3 + v7[10]);
      *v16 = v13;
      v16[1] = v15;
      result = [a1 rangingToken];
      if (result)
      {
        v17 = result;
        v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = (a3 + v7[7]);
        *v21 = v18;
        v21[1] = v20;
        [a1 unlockDate];
        v22 = a3 + v7[6];
        Date.init(timeIntervalSince1970:)();

        return sub_1002FAF88(a2);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(32);
    v23 = [a1 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27._countAndFlagsBits = 0xD00000000000001CLL;
    v27._object = 0x800000010078B2C0;
    String.append(_:)(v27);
    v28._object = 0x80000001007FAA90;
    v28._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v28);
    v29 = sub_100010F88(1, v24, v26);
    v31 = v30;
    sub_1000115C8();
    swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v31;
    swift_willThrow();

    sub_1002FAF88(a2);
  }

  return result;
}

uint64_t sub_1002FA174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1002FA1E8(uint64_t a1)
{
  v2 = v1 + *(a1 + 40);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1002FA28C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1002F9D98(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

id sub_1002FA364()
{
  v1 = *(_s10NanoWalletV21HandleResponseContextVMa(0) + 40);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1002FA3D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_1009735B0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v6 + 64) = &off_10097C1F8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RangeAsInitiator;
  *(v6 + 104) = &off_10097C0D8;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 184) = &off_10097BB00;
  *a3 = v6;
  v7 = _s10NanoWalletV21HandleResponseContextVMa(0);
  *(a3 + v7[10]) = 0;
  *(a3 + v7[11]) = 2;
  v8 = _s10NanoWalletV18InitialLockContextVMa(0);
  v9 = a2 + *(v8 + 40);
  v10 = *(v9 + 8);
  if (v10 >> 60 == 15)
  {
    v11 = sub_100010F88(10, 0xD000000000000015, 0x800000010078B2E0);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
LABEL_9:

    sub_1002FAFB8(a2, _s10NanoWalletV18InitialLockContextVMa);
  }

  v15 = v8;
  v16 = *v9;
  sub_100294008(*v9, *(v9 + 8));
  if (![a1 hasAwdlInfo])
  {
    v24 = sub_100010F88(1, 0xD000000000000011, 0x800000010078B300);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();
    sub_10028BCC0(v16, v10);
    goto LABEL_9;
  }

  sub_1002FB018(a2 + *(v15 + 24), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
  sub_1002A9938(a2 + 8, a3 + v7[6]);
  v17 = (a3 + v7[7]);
  *v17 = v16;
  v17[1] = v10;
  *(a3 + v7[8]) = [a1 version];
  result = [a1 awdlInfo];
  if (result)
  {
    v19 = result;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    result = sub_1002FAFB8(a2, _s10NanoWalletV18InitialLockContextVMa);
    v23 = (a3 + v7[9]);
    *v23 = v20;
    v23[1] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002FA724(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1002FA760(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1002FA7A0()
{
  v0 = sub_1002FA364();
  v1 = [v0 data];

  if (v1)
  {
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    v4 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v6 = v5;
    sub_1000115C8();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    return swift_willThrow();
  }
}

uint64_t sub_1002FA870@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_1009735B0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    sub_1002A9938(a2 + 8, a3 + 8);
    v7 = [a1 success];

    result = sub_1002FAFB8(a2, _s10NanoWalletV20HandleRequestContextVMa);
    *(a3 + 48) = v7;
  }

  else
  {
    v9 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v11 = v10;
    sub_1000115C8();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    swift_willThrow();

    sub_1002FAFB8(a2, _s10NanoWalletV20HandleRequestContextVMa);
  }

  return result;
}

void sub_1002FAA0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v6 = _s10NanoWalletV18InitialLockContextVMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _s10NanoWalletV21HandleResponseContextVMa(0);
  v10 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = _s10NanoWalletV20HandleRequestContextVMa(0);
  v13 = *(*(v37 - 8) + 64);
  v14 = __chkstk_darwin(v37);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (&v35 - v17);
  sub_1002A9938(a1, v38);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v38);
    sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
    if (swift_dynamicCast())
    {
      v21 = v40[0];
      sub_1002A9938(a2, v38);
      v22 = v21;
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      swift_dynamicCast();
      sub_1002FA3D4(v22, v9, v12);
      if (!v3)
      {
        v23 = v41;
        v41[3] = v36;
        v23[4] = &off_1008DB4A8;
        v24 = sub_10002F604(v23);
        sub_1002FAF20(v12, v24, _s10NanoWalletV21HandleResponseContextVMa);
      }
    }

    else
    {
      sub_1002A9938(a1, v38);
      sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
      if (!swift_dynamicCast())
      {
        v31 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
        v33 = v32;
        sub_1000115C8();
        swift_allocError();
        *v34 = v31;
        *(v34 + 8) = v33;
        swift_willThrow();
        return;
      }

      v25 = v40[0];
      sub_1002A9938(a2, v40);
      v22 = v25;
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      swift_dynamicCast();
      sub_1002FA870(v22, v16, v38);
      if (!v3)
      {
        v26 = v41;
        v41[3] = &_s10NanoWalletV25HandleConfirmationContextVN;
        v26[4] = &off_1008DB4C0;
        v27 = swift_allocObject();
        *v26 = v27;
        v28 = v38[1];
        *(v27 + 16) = v38[0];
        *(v27 + 32) = v28;
        *(v27 + 48) = v38[2];
        *(v27 + 64) = v39;
      }
    }

    return;
  }

  v19 = v40[0];
  sub_1002A9938(a2, v40);
  v20 = v19;
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  swift_dynamicCast();
  sub_1002F9E18(v20, v38, v18);
  if (!v3)
  {
    v29 = v41;
    v41[3] = v37;
    v29[4] = &off_1008DB490;
    v30 = sub_10002F604(v29);
    sub_1002FAF20(v18, v30, _s10NanoWalletV20HandleRequestContextVMa);
  }
}

uint64_t sub_1002FAF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FAFB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002FB018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_1002FB080(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002FB09C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1002FB0E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002FB16C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002FB294()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6B90(319, &unk_100977800);
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1002FB3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_1002FBF54(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_1002FB470(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1002FBFFC(v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1002FB508@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = -1 << *(a1 + 32);
  v9 = _HashTable.startBucket.getter();
  v10 = 1;
  if (v9 != 1 << *(a1 + 32))
  {
    sub_1002FC04C(v9, *(a1 + 36), a1, a2, a4);
    v10 = 0;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_1002FB5DC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_1002FB66C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1002FC620(v3, *(a1 + 36), 0, a1);

  return v5;
}

void sub_1002FB6E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  v10 = type metadata accessor for SFPlatform();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.macOS.getter();
  v15 = static SFPlatform.isPlatform(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) != 0 || (v16 = objc_allocWithZone(LSApplicationRecord), v17 = sub_10066F3F8(0xD000000000000016, 0x800000010078B360, 1), !v17))
  {
    v18 = 0;
  }

  else
  {
    v39 = v17;
    v40 = v17;
    v18 = v39;
  }

  v19 = *(a1 + 16);
  v41 = a1;
  v42 = v19;
  v43 = v18;
  if (v19)
  {
    v20 = v4 + 16;
    v21 = *(v4 + 16);
    v47 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v22 = a1 + v47;
    v23 = *(v20 + 56);
    v49 = (v20 + 16);
    v45 = (v20 - 8);
    v24 = _swiftEmptyArrayStorage;
    v48 = v3;
    v46 = v23;
    v21(v9, v22, v3);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v45)(v9, v3);
      }

      else
      {
        v25 = *v49;
        (*v49)(v50, v9, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v24[2] + 1, 1);
          v24 = v51;
        }

        v28 = v24[2];
        v27 = v24[3];
        if (v28 >= v27 >> 1)
        {
          sub_10028FAB4(v27 > 1, v28 + 1, 1);
          v24 = v51;
        }

        v24[2] = v28 + 1;
        v29 = v24 + v47 + v28 * v46;
        v23 = v46;
        v3 = v48;
        v25(v29, v50, v48);
      }

      v22 += v23;
      if (!--v19)
      {
        break;
      }

      v21(v9, v22, v3);
    }
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v30 = v24[2];
  if (v30)
  {
    v31 = v43;
    if (v30 != v42)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000C4AC(v32, qword_10097B528);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Asked to view mixed files and links, only viewing links", v35, 2u);
      }
    }

    v51 = 0;
    v36 = swift_allocObject();
    *(v36 + 16) = v24;
    *(v36 + 24) = v31;
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
  }

  else
  {

    v51 = 0;
    v37 = swift_allocObject();
    v38 = v43;
    *(v37 + 16) = v43;
    *(v37 + 24) = 1;
    *(v37 + 32) = v41;

    SFProgressTask.init(_:initialProgress:operation:file:line:)();
  }
}

uint64_t sub_1002FBC5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerWebLinks();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1002FBC90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1002FC674(a1);
}

void sub_1002FBD54(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1002FCA54();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1002FCA54();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1002FBF54@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8) + 72) * result;

  return sub_1002940CC(v6, a4);
}

uint64_t sub_1002FBFFC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002FC04C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

void sub_1002FC110(uint64_t a1, char a2)
{
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v13 = SFAirDropReceive.AskRequest.itemsDescription.getter();
  v15 = v14;
  if (v12 != 1)
  {
    goto LABEL_4;
  }

  v16 = v13;
  v17 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB508(v17, &type metadata accessor for URL, &type metadata accessor for URL, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
LABEL_4:
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    v35 = xmmword_1007F5670;
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x45544953424557;
    v19 = inited + 32;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v12;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v19, &qword_100981D40, &unk_1007FA6C0);
    v20 = String._bridgeToObjectiveC()();
    v21 = SFLocalizedStringForKey();

    if (v21)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v22 = swift_allocObject();
      *(v22 + 16) = v35;
      *(v22 + 56) = &type metadata for Int;
      *(v22 + 64) = &protocol witness table for Int;
      *(v22 + 32) = v12;
      static String.localizedStringWithFormat(_:_:)();

LABEL_15:

      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  (*(v8 + 32))(v11, v6, v7);
  if (SFAirDropReceive.AskRequest.senderBundleID.getter() == 0xD000000000000016 && 0x800000010078B360 == v23)
  {

    if (v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0 || !v15)
  {
LABEL_12:
    URL._bridgeToObjectiveC()(v24);
    v27 = v26;
    v28 = [v26 _lp_simplifiedDisplayString];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v15 = v30;
  }

LABEL_13:
  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v31 = swift_initStackObject();
  v35 = xmmword_1007F5670;
  *(v31 + 16) = xmmword_1007F5670;
  *(v31 + 32) = 0xD000000000000012;
  *(v31 + 40) = 0x800000010078B380;
  *(v31 + 48) = 1;

  sub_1003D8D18(v31, a2 & 1);
  swift_setDeallocating();
  sub_100005508(v31 + 32, &qword_100981D40, &unk_1007FA6C0);
  v32 = String._bridgeToObjectiveC()();
  v33 = SFLocalizedStringForKey();

  if (v33)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v34 = swift_allocObject();
    *(v34 + 16) = v35;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100026764();
    *(v34 + 32) = v16;
    *(v34 + 40) = v15;
    static String.localizedStringWithFormat(_:_:)();

    (*(v8 + 8))(v11, v7);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1002FC620(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002FC674(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.TransferType();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FC7C8, v8, 0);
}

uint64_t sub_1002FC7C8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[4];
    v6 = v0[2];
    result = SFAirDropReceive.AskRequest.urlItems.getter();
    v8 = 0;
    v9 = result + 56;
    v10 = -1;
    v11 = -1 << *(result + 32);
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & *(result + 56);
    v13 = (63 - v11) >> 6;
    v26 = result;
    while (v12)
    {
LABEL_11:
      v15 = v0[5];
      v16 = v0[3];
      (*(v5 + 16))(v15, *(v26 + 48) + *(v5 + 72) * (__clz(__rbit64(v12)) | (v8 << 6)), v16);
      URL.scheme.getter();
      v18 = v17;
      (*(v5 + 8))(v15, v16);
      if (!v18)
      {
        goto LABEL_20;
      }

      v12 &= v12 - 1;
      v19 = String.lowercased()();

      v20 = v19._countAndFlagsBits == 1886680168 && v19._object == 0xE400000000000000;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v19._countAndFlagsBits == 0x7370747468 && v19._object == 0xE500000000000000)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
LABEL_20:
          v22 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        v22 = 1;
        goto LABEL_23;
      }

      v12 = *(v9 + 8 * v14);
      ++v8;
      if (v12)
      {
        v8 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_24:
    v23 = v0[8];
    v24 = v0[5];

    v25 = v0[1];

    return v25(v22);
  }

  return result;
}

unint64_t sub_1002FCA54()
{
  result = qword_100974F60;
  if (!qword_100974F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100974F60);
  }

  return result;
}

uint64_t sub_1002FCAA0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100977A70);
  v1 = sub_10000C4AC(v0, qword_100977A70);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002FCB68@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection))
  {

    sub_10062D138(a1);
  }

  else
  {
    if (qword_1009735B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100977A70);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "UPLOAD connection is not active", v7, 2u);
    }

    v8 = enum case for SFNWInterfaceType.other(_:);
    v9 = type metadata accessor for SFNWInterfaceType();
    v10 = *(*(v9 - 8) + 104);

    return v10(a1, v8, v9);
  }
}

id sub_1002FCCDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v47 = type metadata accessor for URL();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v47);
  v46 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFSandboxTokenURLPair();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &ObjectType - v11;
  if (qword_1009735B8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    v52 = sub_10000C4AC(v13, qword_100977A70);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "SDAirDropSendConnection deinit", v16, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection))
    {
      v17 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection);

      NWConnection.cancel()();
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection))
    {
      v18 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection);

      NWConnection.cancel()();
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection))
    {
      v19 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);

      NWConnection.cancel()();
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection))
    {
      v20 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection);

      NWConnection.cancel()();
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection))
    {
      v21 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection);

      NWConnection.cancel()();
    }

    v39 = v1;
    v1 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs);
    v22 = v1[2];

    v51 = v22;
    if (!v22)
    {
      break;
    }

    v24 = 0;
    v50 = v6 + 16;
    v41 = (v2 + 8);
    *&v23 = 136315138;
    v40 = v23;
    v49 = (v6 + 8);
    v48 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v6;
    v45 = v5;
    v42 = v1;
    v43 = v12;
    while (v24 < v1[2])
    {
      v26 = *(v6 + 16);
      v26(v12, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v5);
      v26(v10, v12, v5);
      v27 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v2))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v54 = v29;
        *v28 = v40;
        v30 = v46;
        SFSandboxTokenURLPair.url.getter();
        sub_1000106F0(&qword_100975160, &type metadata accessor for URL);
        v31 = v47;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        v35 = v30;
        v5 = v45;
        (*v41)(v35, v31);
        v25 = *v49;
        (*v49)(v10, v5);
        v36 = sub_10000C4E4(v32, v34, &v54);
        v6 = v44;

        *(v28 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v27, v2, "Releasing extension for %s", v28, 0xCu);
        sub_10000C60C(v29);
        v12 = v43;

        v1 = v42;
      }

      else
      {

        v25 = *v49;
        (*v49)(v10, v5);
      }

      ++v24;
      SFSandboxTokenURLPair.releaseSandboxExtension()();
      v25(v12, v5);
      if (v51 == v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_21:

  v53.receiver = v39;
  v53.super_class = ObjectType;
  return objc_msgSendSuper2(&v53, "dealloc");
}

uint64_t type metadata accessor for SDAirDropSendConnection()
{
  result = qword_100977B28;
  if (!qword_100977B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002FD580(uint64_t a1)
{
  v2 = v1;
  v4 = _s12HelloRequestVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v24[-4] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100977B90, &qword_1007FADC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24[-4] - v10;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100977A70);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v2;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sending HELLO request", v15, 2u);
    v2 = v23;
  }

  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logStartHello()();
  swift_endAccess();
  sub_10030D7A0(a1, v11, _s12HelloRequestVMa);
  (*(v5 + 56))(v11, 0, 1, v4);
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloRequest;
  swift_beginAccess();
  sub_10000C788(v11, v2 + v16, &qword_100977B90, &qword_1007FADC0);
  swift_endAccess();
  strcpy(v24, "Send HELLO [");
  HIBYTE(v24[6]) = 0;
  v24[7] = -5120;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 93;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  sub_10030D7A0(a1, v7, _s12HelloRequestVMa);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  sub_10030D808(v7, v20 + v19, _s12HelloRequestVMa);
  v21 = v2;
  withProgressTask<A, B>(_:initialProgress:operation:)();
}

uint64_t sub_1002FD96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(_s12HelloRequestVMa() - 8);
  v3[8] = v4;
  v3[9] = *(v4 + 64);
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_100977B98, &qword_1007FADC8) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[13] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FDAE0, v7, 0);
}

uint64_t sub_1002FDAE0()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  sub_10000C788(v1, v2 + v6, &qword_100977B98, &qword_1007FADC8);
  swift_endAccess();
  v7 = sub_1002FDFC8(0, 0);
  v0[14] = v7;
  v9 = v0[10];
  v8 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  v14 = *&v13[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection];
  *&v13[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection] = v7;
  v15 = v7;

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_10030D7A0(v12, v9, _s12HelloRequestVMa);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v0[15] = v18;
  *(v18 + 16) = v13;
  sub_10030D808(v9, v18 + v17, _s12HelloRequestVMa);
  *(v18 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v19 = swift_allocObject();
  v0[16] = v19;
  *(v19 + 16) = v13;
  v20 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
  v21 = v13;

  v22 = v21;
  v23 = swift_task_alloc();
  v0[17] = v23;
  *v23 = v0;
  v23[1] = sub_1002FDE30;
  v24 = v0[11];

  return concurrentRace<A>(priority:operation:against:)(v23, v24, &unk_1007FAF68, v18, &unk_1007FAF78, v19, &type metadata for () + 8);
}

uint64_t sub_1002FDE30()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v4 = *v1;
  (*v1)[18] = v0;

  v5 = v2[16];
  v6 = v2[15];
  v7 = v2[13];
  sub_100005508(v2[11], &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v8 = sub_10030DB14;
  }

  else
  {
    v8 = sub_10030DB0C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002FDFC8(int a1, uint64_t *a2)
{
  v3 = v2;
  v45 = a1;
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v44[-v10];
  v12 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_deviceStatus);
  v13 = sub_10046938C();
  v14 = sub_100636668(v13);
  v16 = v15;

  swift_beginAccess();
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  SFAirDrop.NetworkMetrics.log(senderTLSCertDigest:)(v17);
  swift_endAccess();

  sub_1002A9938(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor, v46);
  v18 = v47;
  v19 = v48;
  sub_10002CDC0(v46, v47);
  (*(v19 + 8))(v18, v19);
  sub_10000C60C(v46);
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint;
  sub_10030D7A0(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      goto LABEL_6;
    }

    v22 = type metadata accessor for SDAirDropDiscoveredEndpoint;
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_6:
    sub_10030D1B4(v11, v23);
    v24 = a2;
    goto LABEL_10;
  }

  sub_10030D1B4(v11, v22);
  v24 = a2;
  if (a2)
  {
    NWConnection.cancel()();
  }

LABEL_10:
  sub_10030D7A0(v3 + v20, v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v25 = swift_getEnumCaseMultiPayload();
  v26 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      v27 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      goto LABEL_17;
    }

    v26 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
LABEL_15:
    sub_10030D1B4(v9, v26);

    goto LABEL_18;
  }

  if (!v25)
  {
    goto LABEL_15;
  }

  v27 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
LABEL_17:
  sub_10030D1B4(v9, v27);
  v24 = 0;
LABEL_18:
  v28 = v49;
  v29 = sub_100306CC4(v24, v3, v45 & 1);
  if (!v28)
  {
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;

    NWConnection.stateUpdateHandler.setter();

    if (qword_1009735B8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_100977A70);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v49 = v24;
      v37 = v36;
      v38 = swift_slowAlloc();
      v46[0] = v38;
      *v37 = 136315138;
      v39 = NWConnection.debugDescription.getter();
      v41 = sub_10000C4E4(v39, v40, v46);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Starting connection %s", v37, 0xCu);
      sub_10000C60C(v38);
    }

    v42 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_queue);
    NWConnection.start(queue:)();
  }

  return v29;
}

uint64_t sub_1002FE4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[9] = static AirDropActor.shared;
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_1002FE5A4;

  return sub_1006718A8(a3, a4);
}

uint64_t sub_1002FE5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 72);

    return _swift_task_switch(sub_1002FE6E8, v7, 0);
  }
}

uint64_t sub_1002FE6E8()
{
  v1 = v0[8];
  v0[11] = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logSentHello()();
  swift_endAccess();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1002FE7AC;
  v3 = v0[8];

  return sub_1002FE944();
}

uint64_t sub_1002FE7AC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1002FE8BC, v2, 0);
}

uint64_t sub_1002FE8BC()
{
  v1 = v0[11];
  v2 = v0[8];
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logFinishedHello()();
  swift_endAccess();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002FE944()
{
  v1[11] = v0;
  v2 = *(*(sub_10028088C(&qword_100977B98, &qword_1007FADC8) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v3 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v5 = *(v4 + 64) + 15;
  v1[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v1[16] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FEA84, v6, 0);
}

uint64_t sub_1002FEA84()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection);
  v0[17] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1002FEB94;

    return sub_1006725BC(v1);
  }

  else
  {
    v4 = v0[15];
    v5 = v0[12];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1002FEB94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v7 = *(v3 + 128);
  if (v1)
  {
    v8 = sub_1002FEE9C;
  }

  else
  {
    v8 = sub_1002FECC8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002FECC8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_receiverFeatureFlags) = *(v0 + 152);
  v5 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);
  *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection) = v1;

  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  if ((*(v3 + 48))(v4 + v6, 1, v2))
  {
    v7 = *(v0 + 136);
  }

  else
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 136);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 104);
    (*(v11 + 16))(v10, v4 + v6, v12);
    *(v0 + 168) = v8;
    *(v0 + 172) = BYTE4(v8);
    SFProgressContinuation.finish(with:)();

    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  (*(*(v0 + 112) + 56))(v14, 1, 1, *(v0 + 104));
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  sub_10000C788(v14, v13 + v15, &qword_100977B98, &qword_1007FADC8);
  swift_endAccess();
  v16 = *(v0 + 120);
  v17 = *(v0 + 96);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002FEE9C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection, "Cancelling HELLO connection %s");
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  v5 = (*(v2 + 48))(v3 + v4, 1, v1);
  v6 = v0[20];
  v7 = v0[17];
  if (v5)
  {
    v8 = v0[17];
  }

  else
  {
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    (*(v10 + 16))(v9, v3 + v4, v11);
    SFProgressContinuation.fail(with:)();

    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[11];
  v13 = v0[12];
  (*(v0[14] + 56))(v13, 1, 1, v0[13]);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  sub_10000C788(v13, v12 + v14, &qword_100977B98, &qword_1007FADC8);
  swift_endAccess();
  v15 = v0[15];
  v16 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002FF058(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Failure();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v2[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FF218, v12, 0);
}

uint64_t sub_1002FF218()
{
  v1 = *(v0 + 112);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1002FF2E4;
  v3 = *(v0 + 112);

  return sub_10002ED10(0x70801D946C940000, 2, 0, 0, 1);
}

uint64_t sub_1002FF2E4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v6 = sub_10030DB10;
  }

  else
  {
    v6 = sub_1002FF460;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002FF460()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "HELLO request timeout", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  sub_100301A48(1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection, "Cancelling HELLO connection %s");
  (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v7);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[6];
    v17 = v0[7];
    (*(v17 + 16))(v15, v10 + v11, v16);
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v13 + 16))(v18, v12, v14);
    SFProgressContinuation.fail(with:)();
    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v20 + 16))(v22, v19, v21);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);
  v23 = v0[14];
  v24 = v0[11];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1002FF790(uint64_t a1)
{
  v2 = v1;
  v4 = _s10AskRequestVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100977BA0, &qword_1007FADD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100977A70);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23[0] = v5;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sending ASK request", v15, 2u);
    v5 = v23[0];
  }

  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logStartAsk()();
  swift_endAccess();
  sub_10030D7A0(a1, v11, _s10AskRequestVMa);
  (*(v5 + 56))(v11, 0, 1, v4);
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest;
  swift_beginAccess();
  sub_10000C788(v11, v2 + v16, &qword_100977BA0, &qword_1007FADD0);
  swift_endAccess();
  v23[1] = 0;
  v23[2] = 0xE000000000000000;
  v17._countAndFlagsBits = 0x4B534120646E6553;
  v17._object = 0xEA00000000005B20;
  String.append(_:)(v17);
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v18._countAndFlagsBits = 93;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  sub_10030D7A0(a1, v7, _s10AskRequestVMa);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  sub_10030D808(v7, v20 + v19, _s10AskRequestVMa);
  v21 = v2;
  withProgressTask<A, B>(_:initialProgress:operation:)();
}

uint64_t sub_1002FFB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(_s10AskRequestVMa() - 8);
  v3[8] = v4;
  v3[9] = *(v4 + 64);
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_100977BA8, &qword_1007FADD8) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[13] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FFCDC, v7, 0);
}

uint64_t sub_1002FFCDC()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  sub_10000C788(v1, v2 + v6, &qword_100977BA8, &qword_1007FADD8);
  swift_endAccess();
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);

  v8 = sub_1002FDFC8(0, v7);
  v0[14] = v8;
  v9 = v0[10];
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v8;

  v16 = *&v14[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection];
  *&v14[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection] = v15;

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_10030D7A0(v13, v9, _s10AskRequestVMa);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v0[15] = v19;
  *(v19 + 16) = v14;
  sub_10030D808(v9, v19 + v18, _s10AskRequestVMa);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v20 = swift_allocObject();
  v0[16] = v20;
  *(v20 + 16) = v14;
  v21 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
  v22 = v14;

  v23 = v22;
  v24 = swift_task_alloc();
  v0[17] = v24;
  *v24 = v0;
  v24[1] = sub_100300054;
  v25 = v0[11];

  return concurrentRace<A>(priority:operation:against:)(v24, v25, &unk_1007FAF30, v19, &unk_1007FAF40, v20, &type metadata for () + 8);
}

uint64_t sub_100300054()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v4 = *v1;
  (*v1)[18] = v0;

  v5 = v2[16];
  v6 = v2[15];
  v7 = v2[13];
  sub_100005508(v2[11], &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v8 = sub_100300278;
  }

  else
  {
    v8 = sub_1003001EC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003001EC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100300278()
{
  v1 = v0[14];

  v2 = v0[18];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100300300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[9] = static AirDropActor.shared;
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_1003003F8;

  return sub_100671C2C(a3, a4);
}

uint64_t sub_1003003F8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 72);

    return _swift_task_switch(sub_10030053C, v7, 0);
  }
}

uint64_t sub_10030053C()
{
  v1 = v0[8];
  v0[11] = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logSentAsk()();
  swift_endAccess();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_100300600;
  v3 = v0[8];

  return sub_100300798();
}

uint64_t sub_100300600()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100300710, v2, 0);
}

uint64_t sub_100300710()
{
  v1 = v0[11];
  v2 = v0[8];
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logFinishedAsk()();
  swift_endAccess();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100300798()
{
  v1[37] = v0;
  v2 = *(*(sub_10028088C(&qword_100977BA8, &qword_1007FADD8) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v3 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
  v1[39] = v3;
  v4 = *(v3 - 8);
  v1[40] = v4;
  v5 = *(v4 + 64) + 15;
  v1[41] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v1[42] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003008D8, v6, 0);
}

uint64_t sub_1003008D8()
{
  v1 = *(v0[37] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection);
  v0[43] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[44] = v2;
    *v2 = v0;
    v2[1] = sub_1003009F0;

    return sub_100672BF0((v0 + 2), v1);
  }

  else
  {
    v4 = v0[41];
    v5 = v0[38];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1003009F0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    v6 = sub_100300F78;
  }

  else
  {
    v6 = sub_100300B1C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100300B1C()
{
  v48 = v0;
  v1 = *(v0 + 296);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection;
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);
  if (!v3)
  {
    v4 = *(v0 + 344);
  }

  *(v1 + v2) = v3;
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 80);
  v8 = *(v0 + 96);
  v45 = *(v0 + 88);
  v46 = *(v0 + 72);
  v9 = qword_1009735B8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100977A70);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v44 = v6;
  if (!os_log_type_enabled(v11, v12))
  {

    if (!*(v1 + v2))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v13 = 136315650;
  v43 = v2;
  if (v5)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0xD000000000000015;
  }

  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = 0x8000000100789F30;
  }

  v16 = sub_10000C4E4(v14, v15, &v47);

  *(v13 + 4) = v16;
  *(v13 + 12) = 2080;
  if (v7)
  {
    v17 = v46;
  }

  else
  {
    v17 = 0xD000000000000015;
  }

  if (v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = 0x8000000100789F30;
  }

  v19 = sub_10000C4E4(v17, v18, &v47);

  *(v13 + 14) = v19;
  *(v13 + 22) = 2080;
  if (v8)
  {
    v20 = v45;
  }

  else
  {
    v20 = 0xD000000000000015;
  }

  if (v8)
  {
    v21 = v8;
  }

  else
  {
    v21 = 0x8000000100789F30;
  }

  v22 = sub_10000C4E4(v20, v21, &v47);

  *(v13 + 24) = v22;
  _os_log_impl(&_mh_execute_header, v11, v12, "Sender extracted IDS session ID %s, pseudonym: %s, push token: %s from ask response", v13, 0x20u);
  swift_arrayDestroy();

  if (*(v1 + v43))
  {
LABEL_27:

    sub_10062DD18(v44, v5, v46, v7, v45, v8);
  }

LABEL_28:
  v24 = *(v0 + 312);
  v23 = *(v0 + 320);
  v25 = *(v0 + 296);
  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  v27 = (*(v23 + 48))(v25 + v26, 1, v24);
  v28 = *(v0 + 344);
  if (v27)
  {
    v29 = *(v0 + 344);
  }

  else
  {
    v31 = *(v0 + 320);
    v30 = *(v0 + 328);
    v32 = *(v0 + 312);
    (*(v31 + 16))(v30, v25 + v26, v32);
    v33 = *(v0 + 48);
    *(v0 + 168) = *(v0 + 64);
    v34 = *(v0 + 96);
    *(v0 + 184) = *(v0 + 80);
    *(v0 + 200) = v34;
    *(v0 + 216) = *(v0 + 112);
    v35 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 16);
    *(v0 + 136) = v35;
    *(v0 + 152) = v33;
    SFProgressContinuation.finish(with:)();

    (*(v31 + 8))(v30, v32);
  }

  sub_10030D74C(v0 + 16);
  v36 = *(v0 + 296);
  v37 = *(v0 + 304);
  (*(*(v0 + 320) + 56))(v37, 1, 1, *(v0 + 312));
  v38 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  sub_10000C788(v37, v36 + v38, &qword_100977BA8, &qword_1007FADD8);
  swift_endAccess();
  v39 = *(v0 + 328);
  v40 = *(v0 + 304);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100300F78()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection, "Cancelling ASK connection %s");
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  v5 = (*(v2 + 48))(v3 + v4, 1, v1);
  v6 = v0[45];
  v7 = v0[43];
  if (v5)
  {
    v8 = v0[43];
  }

  else
  {
    v10 = v0[40];
    v9 = v0[41];
    v11 = v0[39];
    (*(v10 + 16))(v9, v3 + v4, v11);
    SFProgressContinuation.fail(with:)();

    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[37];
  v13 = v0[38];
  (*(v0[40] + 56))(v13, 1, 1, v0[39]);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  sub_10000C788(v13, v12 + v14, &qword_100977BA8, &qword_1007FADD8);
  swift_endAccess();
  v15 = v0[41];
  v16 = v0[38];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100301134(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Failure();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.TransferType();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v2[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_10030135C, v15, 0);
}

uint64_t sub_10030135C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[5] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendRequest;
  SFAirDropSend.Request.type.getter();
  (*(v4 + 104))(v2, enum case for SFAirDrop.TransferType.peerPayment(_:), v3);
  v7 = static SFAirDrop.TransferType.== infix(_:_:)();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (v7)
  {
    v9 = 0x8155A43676E00000;
  }

  else
  {
    v9 = 0x70801D946C940000;
  }

  if (v7)
  {
    v10 = 6;
  }

  else
  {
    v10 = 2;
  }

  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_1003014E8;
  v12 = v0[14];

  return sub_10002ED10(v9, v10, 0, 0, 1);
}

uint64_t sub_1003014E8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = v2[19];
  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v6 = sub_1003019A8;
  }

  else
  {
    v6 = sub_100301664;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100301664()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ASK request timeout", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  sub_100301A48(1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection, "Cancelling ASK connection %s");
  (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v7);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[6];
    v17 = v0[7];
    (*(v17 + 16))(v15, v10 + v11, v16);
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v13 + 16))(v18, v12, v14);
    SFProgressContinuation.fail(with:)();
    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v20 + 16))(v22, v19, v21);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);
  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[14];
  v26 = v0[11];
  v27 = v0[8];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1003019A8()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100301A48(uint64_t result, uint64_t *a2, char *a3)
{
  v4 = *a2;
  if (*(v3 + *a2))
  {
    v6 = v3;
    v7 = result;
    v8 = qword_1009735B8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100977A70);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      format = a3;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = NWConnection.debugDescription.getter();
      v16 = sub_10000C4E4(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, format, v12, 0xCu);
      sub_10000C60C(v13);
    }

    if (v7)
    {
      NWConnection.forceCancel()();
    }

    else
    {
      NWConnection.cancel()();
    }

    v17 = *(v6 + v4);
    *(v6 + v4) = 0;
  }

  return result;
}

uint64_t sub_100301C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDrop.Progress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100977A70);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a2;
    v15 = v14;
    v25 = swift_slowAlloc();
    v26 = v3;
    v28[0] = v25;
    *v15 = 136315138;
    type metadata accessor for URL();
    v16 = Array.description.getter();
    v18 = sub_10000C4E4(v16, v17, v28);

    *(v15 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Sending UPLOAD request %s", v15, 0xCu);
    sub_10000C60C(v25);
    v3 = v26;
  }

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v28, "Send UPLOAD [");
  HIWORD(v28[1]) = -4864;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 93;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  (*(v7 + 104))(v10, enum case for SFAirDrop.Progress.notStarted(_:), v6);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = a1;

  v22 = v3;
  withProgressTask<A, B>(_:initialProgress:operation:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100301FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = type metadata accessor for SFSecurityScopedURL();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for SFSandboxTokenURLPair();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = *(*(sub_10028088C(&qword_100977BB8, &qword_1007FADE8) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v11 = *(*(sub_10028088C(&qword_100977BA0, &qword_1007FADD0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v3[20] = static AirDropActor.shared;

  return _swift_task_switch(sub_100302178, v12, 0);
}

size_t sub_100302178()
{
  v1 = v0[19];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest;
  swift_beginAccess();
  sub_10000FF90(v2 + v3, v1, &qword_100977BA0, &qword_1007FADD0);
  v4 = _s10AskRequestVMa();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_100005508(v1, &qword_100977BA0, &qword_1007FADD0);
  if (v2 == 1)
  {
    v5 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for SFAirDropSend.Failure.badRequest(_:), v5);
    swift_willThrow();
    v28 = v0[18];
    v27 = v0[19];
    v29 = v0[17];
    v30 = v0[14];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v0[8] = v0[11];
    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    sub_10030D150();
    v7 = RandomAccessCollection<>.securityScopedURLs.getter();
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v0[16];
      v10 = v0[13];
      result = sub_10028FC5C(0, v8, 0);
      v12 = 0;
      v38 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      while (v12 < *(v7 + 16))
      {
        v13 = v0[17];
        (*(v10 + 16))(v0[14], v38 + *(v10 + 72) * v12, v0[12]);
        static SFSecurityScopedURL.consumeSandboxToken(item:)();
        (*(v10 + 8))(v0[14], v0[12]);
        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_10028FC5C(v14 > 1, v15 + 1, 1);
        }

        ++v12;
        v16 = v0[17];
        v17 = v0[15];
        _swiftEmptyArrayStorage[2] = v15 + 1;
        result = (*(v9 + 32))(_swiftEmptyArrayStorage + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v16, v17);
        if (v8 == v12)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      v18 = v0[18];
      v20 = v0[9];
      v19 = v0[10];
      v21 = *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs);
      *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs) = _swiftEmptyArrayStorage;

      v22 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
      v23 = *(v22 - 8);
      (*(v23 + 16))(v18, v20, v22);
      (*(v23 + 56))(v18, 0, 1, v22);
      v24 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
      swift_beginAccess();
      sub_10000C788(v18, v19 + v24, &qword_100977BB8, &qword_1007FADE8);
      swift_endAccess();
      v25 = *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);

      v26 = sub_1002FDFC8(0, v25);
      v0[21] = v26;
      v32 = v0[10];
      v33 = v26;

      v34 = *(v32 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);
      *(v32 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection) = v33;

      v35 = swift_task_alloc();
      v0[22] = v35;
      *v35 = v0;
      v35[1] = sub_1003026D0;
      v37 = v0[10];
      v36 = v0[11];

      return sub_100302928(v36);
    }
  }

  return result;
}

uint64_t sub_1003026D0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_100302894;
  }

  else
  {
    v6 = sub_1003027FC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003027FC()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100302894()
{
  v1 = v0[21];

  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100302928(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003029C8, v3, 0);
}

uint64_t sub_1003029C8()
{
  v1 = v0[2];
  if (*(v1 + 16))
  {
    v2 = v0[3];
    v3 = v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_receiverFeatureFlags];
    v4 = type metadata accessor for SDAirDropSendCompressionAdapter();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();

    v7 = v2;
    v8 = sub_100294F7C(v1, (v3 >> 2) & 1, v2, &off_1008DB5A0);
    v0[5] = v8;
    v9 = *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter];
    *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = v8;

    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_100302BC4;

    return sub_100295F98();
  }

  else
  {
    v12 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for SFAirDropSend.Failure.badRequest(_:), v12);
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100302BC4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100302CD4, v2, 0);
}

uint64_t sub_100302CD4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100302D38(uint64_t a1)
{
  v2 = v1;
  v4 = _s15ExchangeRequestVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100977A70);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Sending EXCHANGE request", v10, 2u);
  }

  _StringGuts.grow(_:)(18);

  v17[0] = 0x43584520646E6553;
  v17[1] = 0xEF5B2045474E4148;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 93;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  sub_10030D7A0(a1, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s15ExchangeRequestVMa);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  sub_10030D808(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, _s15ExchangeRequestVMa);
  _s16ExchangeResponseVMa(0);
  v15 = v2;
  withProgressTask<A, B>(_:initialProgress:operation:)();
}

uint64_t sub_100303020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(_s15ExchangeRequestVMa(0) - 8);
  v3[8] = v4;
  v3[9] = *(v4 + 64);
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&unk_100977BC0, &qword_1007FADF0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[13] = static AirDropActor.shared;

  return _swift_task_switch(sub_100303194, v7, 0);
}

uint64_t sub_100303194()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  sub_10000C788(v1, v2 + v6, &unk_100977BC0, &qword_1007FADF0);
  swift_endAccess();
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);

  v8 = sub_1002FDFC8(0, v7);
  v0[14] = v8;
  v9 = v0[10];
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v8;

  v16 = *&v14[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection];
  *&v14[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection] = v15;

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_10030D7A0(v13, v9, _s15ExchangeRequestVMa);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v0[15] = v19;
  *(v19 + 16) = v14;
  sub_10030D808(v9, v19 + v18, _s15ExchangeRequestVMa);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v20 = swift_allocObject();
  v0[16] = v20;
  *(v20 + 16) = v14;
  v21 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
  v22 = v14;

  v23 = v22;
  v24 = swift_task_alloc();
  v0[17] = v24;
  *v24 = v0;
  v24[1] = sub_1002FDE30;
  v25 = v0[11];

  return concurrentRace<A>(priority:operation:against:)(v24, v25, &unk_1007FAE68, v19, &unk_1007FAE78, v20, &type metadata for () + 8);
}

uint64_t sub_10030350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1003035F4;

  return sub_1006720EC(a3, a4);
}

uint64_t sub_1003035F4()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v2 + 32) = v7;
    *v7 = v4;
    v7[1] = sub_100303764;
    v8 = *(v2 + 16);

    return sub_10030385C();
  }
}

uint64_t sub_100303764()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10030385C()
{
  v1[11] = v0;
  v2 = *(*(sub_10028088C(&unk_100977BC0, &qword_1007FADF0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v3 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v5 = *(v4 + 64) + 15;
  v1[15] = swift_task_alloc();
  v6 = *(*(_s16ExchangeResponseVMa(0) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v1[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003039C8, v7, 0);
}

uint64_t sub_1003039C8()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection);
  v0[18] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_100303AE8;
    v3 = v0[16];

    return sub_100673718(v3, v1);
  }

  else
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[12];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100303AE8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_100303DF4;
  }

  else
  {
    v6 = sub_100303C14;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100303C14()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  v5 = (*(v1 + 48))(v3 + v4, 1, v2);
  v6 = v0[18];
  v7 = v0[16];
  if (v5)
  {
    sub_10030D1B4(v0[16], _s16ExchangeResponseVMa);
    swift_endAccess();
  }

  else
  {
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    (*(v9 + 16))(v8, v3 + v4, v10);
    swift_endAccess();
    SFProgressContinuation.finish(with:)();

    (*(v9 + 8))(v8, v10);
    sub_10030D1B4(v7, _s16ExchangeResponseVMa);
  }

  v11 = v0[11];
  v12 = v0[12];
  (*(v0[14] + 56))(v12, 1, 1, v0[13]);
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  sub_10000C788(v12, v11 + v13, &unk_100977BC0, &qword_1007FADF0);
  swift_endAccess();
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100303DF4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection, "Cancelling UPLOAD connection %s");
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  v5 = (*(v2 + 48))(v3 + v4, 1, v1);
  v6 = v0[20];
  v7 = v0[18];
  if (v5)
  {
    v8 = v0[18];
  }

  else
  {
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    (*(v10 + 16))(v9, v3 + v4, v11);
    SFProgressContinuation.fail(with:)();

    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[11];
  v13 = v0[12];
  (*(v0[14] + 56))(v13, 1, 1, v0[13]);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  sub_10000C788(v13, v12 + v14, &unk_100977BC0, &qword_1007FADF0);
  swift_endAccess();
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100303FB8(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Failure();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v2[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_100304178, v12, 0);
}

uint64_t sub_100304178()
{
  v1 = *(v0 + 112);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_100304244;
  v3 = *(v0 + 112);

  return sub_10002ED10(0x70801D946C940000, 2, 0, 0, 1);
}

uint64_t sub_100304244()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v6 = sub_10030DB10;
  }

  else
  {
    v6 = sub_1003043C0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003043C0()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "EXCHANGE request timeout", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  sub_100301A48(1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection, "Cancelling UPLOAD connection %s");
  (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v7);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[6];
    v17 = v0[7];
    (*(v17 + 16))(v15, v10 + v11, v16);
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v13 + 16))(v18, v12, v14);
    SFProgressContinuation.fail(with:)();
    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v20 + 16))(v22, v19, v21);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);
  v23 = v0[14];
  v24 = v0[11];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1003046F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12ErrorRequestVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100977A70);
  sub_10030D7A0(a1, v10, _s12ErrorRequestVMa);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = v5;
    v17 = v16;
    v34[0] = v16;
    *v15 = 136315138;
    v18 = &v10[*(v4 + 20)];
    v19 = CodableError.description.getter();
    v21 = v20;
    sub_10030D1B4(v10, _s12ErrorRequestVMa);
    v22 = sub_10000C4E4(v19, v21, v34);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Sending ERROR request %s", v15, 0xCu);
    sub_10000C60C(v17);
    v5 = v31;
  }

  else
  {

    sub_10030D1B4(v10, _s12ErrorRequestVMa);
  }

  strcpy(v34, "Send ERROR [");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 93;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  sub_10030D7A0(a1, v8, _s12ErrorRequestVMa);
  v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v26 = swift_allocObject();
  v27 = v33;
  *(v26 + 16) = v33;
  sub_10030D808(v8, v26 + v25, _s12ErrorRequestVMa);
  v28 = v27;
  withProgressTask<A, B>(_:initialProgress:operation:)();
}

uint64_t sub_100304AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(_s12ErrorRequestVMa() - 8);
  v3[4] = v4;
  v3[5] = *(v4 + 64);
  v3[6] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_100304BEC, v6, 0);
}

uint64_t sub_100304BEC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);

  v2 = sub_1002FDFC8(0, v1);
  v0[9] = v2;

  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  v9 = *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection];
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection] = v2;

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_10030D7A0(v7, v4, _s12ErrorRequestVMa);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v0[10] = v12;
  *(v12 + 16) = v8;
  sub_10030D808(v4, v12 + v11, _s12ErrorRequestVMa);
  *(v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v13 = swift_allocObject();
  v0[11] = v13;
  *(v13 + 16) = v8;
  v14 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
  v15 = v8;

  v16 = v15;
  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_100304E8C;
  v18 = v0[7];

  return concurrentRace<A>(priority:operation:against:)(v17, v18, &unk_1007FAF00, v12, &unk_1007FAF10, v13, &type metadata for () + 8);
}

uint64_t sub_100304E8C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 104) = v0;

  sub_100005508(v6, &qword_100976160, &qword_1007F8770);

  v8 = *(v2 + 64);
  if (v0)
  {
    v9 = sub_10030509C;
  }

  else
  {
    v9 = sub_100305024;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100305024()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10030509C()
{
  v1 = v0[9];

  v2 = v0[13];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100305110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint;
  v4[4] = static AirDropActor.shared;
  v4[5] = v7;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_100305208;

  return sub_100672354(a3, a4);
}

uint64_t sub_100305208()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 32);

    return _swift_task_switch(sub_10030534C, v7, 0);
  }
}

uint64_t sub_10030534C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection);
  v0[7] = v1;
  if (v1)
  {
    v2 = v0[5];

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1003054F8;

    return sub_100673E40(v1);
  }

  else
  {
    v5 = v0[3];
    v6 = *(_s12ErrorRequestVMa() + 20);
    v7 = type metadata accessor for CodableError();
    sub_1000106F0(&qword_100977C18, &type metadata accessor for CodableError);
    swift_allocError();
    (*(*(v7 - 8) + 16))(v8, v5 + v6, v7);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1003054F8(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  v9 = *(v6 + 32);
  if (v2)
  {
    v10 = sub_10030575C;
  }

  else
  {
    sub_100026AC0(a1, a2);
    v10 = sub_100305644;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100305644()
{
  v1 = v0[7];

  v2 = v0[3];
  v3 = *(_s12ErrorRequestVMa() + 20);
  v4 = type metadata accessor for CodableError();
  sub_1000106F0(&qword_100977C18, &type metadata accessor for CodableError);
  swift_allocError();
  (*(*(v4 - 8) + 16))(v5, v2 + v3, v4);
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t sub_10030575C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[2];
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection, "Cancelling ERROR connection %s");

  v4 = v0[3];
  v5 = *(_s12ErrorRequestVMa() + 20);
  v6 = type metadata accessor for CodableError();
  sub_1000106F0(&qword_100977C18, &type metadata accessor for CodableError);
  swift_allocError();
  (*(*(v6 - 8) + 16))(v7, v4 + v5, v6);
  swift_willThrow();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1003058A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_10030599C, v6, 0);
}

uint64_t sub_10030599C()
{
  v1 = *(v0 + 40);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100305A68;
  v3 = *(v0 + 40);

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100305A68()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 48);
  if (v0)
  {
    v9 = sub_100305DD0;
  }

  else
  {
    v9 = sub_100305BF0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100305BF0()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ERROR request timeout", v4, 2u);
  }

  v5 = v0[2];

  sub_100301A48(1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection, "Cancelling ERROR connection %s");
  v6 = type metadata accessor for SFAirDropSend.Failure();
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v6);
  swift_willThrow();
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100305DD0()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100305E34(char a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26[-1] - v5;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100977A70);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136315138;
    v13 = sub_10032B99C();
    v15 = sub_10000C4E4(v13, v14, v26);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finish send connection to endpoint %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  sub_100301A48(a1 & 1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection, "Cancelling HELLO connection %s");
  sub_100301A48(a1 & 1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection, "Cancelling ASK connection %s");
  sub_100301A48(a1 & 1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection, "Cancelling UPLOAD connection %s");
  sub_100301A48(a1 & 1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection, "Cancelling UPLOAD connection %s");
  sub_1002A9938(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor, v26);
  v16 = v27;
  v17 = v28;
  sub_10002CDC0(v26, v27);
  (*(v17 + 16))(v16, v17);
  sub_10000C60C(v26);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = qword_1009735E0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static AirDropActor.shared;
  v22 = sub_1000106F0(&qword_100977C00, type metadata accessor for AirDropActor);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v19;

  sub_1002B3098(0, 0, v6, &unk_1007FAEC0, v23);
}

uint64_t sub_1003061D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  *(v4 + 72) = static AirDropActor.shared;

  return _swift_task_switch(sub_100306278, v5, 0);
}

uint64_t sub_100306278()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter];
    v0[10] = v4;
    if (v4)
    {

      v5 = swift_task_alloc();
      v0[11] = v5;
      *v5 = v0;
      v5[1] = sub_1003063C8;

      return sub_100296198();
    }
  }

  v7 = v0[8];
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter];
    *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = 0;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003063C8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return _swift_task_switch(sub_1003064F4, v3, 0);
}

uint64_t sub_1003064F4()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter];
    *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = 0;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10030658C()
{
  v1[16] = v0;
  v2 = *(*(sub_10028088C(&qword_100977BB8, &qword_1007FADE8) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v3 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v1[18] = v3;
  v4 = *(v3 - 8);
  v1[19] = v4;
  v5 = *(v4 + 64) + 15;
  v1[20] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v1[21] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003066CC, v6, 0);
}

uint64_t sub_1003066CC()
{
  v1 = *(v0[16] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);
  v0[22] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_1003067DC;

    return sub_100673208(v1);
  }

  else
  {
    v4 = v0[20];
    v5 = v0[17];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1003067DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 184);
  v7 = *v3;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = v2;

  v8 = v4[21];
  if (v2)
  {
    v9 = sub_100306B08;
  }

  else
  {
    v9 = sub_100306914;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100306914()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = *(*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs) + 16);
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logUploadFinish(urlCount:)(v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  if ((*(v2 + 48))(v3 + v5, 1, v1))
  {
    v6 = v0[24];
    v7 = v0[25];
    v8 = v0[22];

    v9 = v6;
    v10 = v7;
  }

  else
  {
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[22];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];
    (*(v15 + 16))(v14, v3 + v5, v16);
    v0[14] = v12;
    v0[15] = v11;
    SFProgressContinuation.finish(with:)();

    (*(v15 + 8))(v14, v16);
    v9 = v12;
    v10 = v11;
  }

  sub_100026AC0(v9, v10);
  v17 = v0[16];
  v18 = v0[17];
  (*(v0[19] + 56))(v18, 1, 1, v0[18]);
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  sub_10000C788(v18, v17 + v19, &qword_100977BB8, &qword_1007FADE8);
  swift_endAccess();
  v20 = v0[20];
  v21 = v0[17];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100306B08()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection, "Cancelling UPLOAD connection %s");
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  v5 = (*(v2 + 48))(v3 + v4, 1, v1);
  v6 = v0[26];
  v7 = v0[22];
  if (v5)
  {
    v8 = v0[22];
  }

  else
  {
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[18];
    (*(v10 + 16))(v9, v3 + v4, v11);
    SFProgressContinuation.fail(with:)();

    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[16];
  v13 = v0[17];
  (*(v0[19] + 56))(v13, 1, 1, v0[18]);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  sub_10000C788(v13, v12 + v14, &qword_100977BB8, &qword_1007FADE8);
  swift_endAccess();
  v15 = v0[20];
  v16 = v0[17];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100306CC4(uint64_t *a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v13 = qword_1009735B8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100977A70);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      v19 = NWConnection.debugDescription.getter();
      v21 = sub_10000C4E4(v19, v20, &v36);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Creating new AirDrop connection from existing %s", v17, 0xCu);
      sub_10000C60C(v18);
    }

    v22 = sub_100636820(a1);
  }

  else
  {
    v34 = v10;
    v35 = v9;
    if (qword_1009735B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100977A70);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Creating new AirDrop connection", v26, 2u);
    }

    v27 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_queue);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v22 = sub_10062E05C(v27, a2, a3 & 1, sub_10030CF24, v28, sub_10030CF2C, v29);

    if (!v3)
    {
      *v12 = sub_10032BCF4();
      (*(v34 + 104))(v12, enum case for NWEndpoint.opaque(_:), v35);
      v31 = type metadata accessor for NWConnection();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      return NWConnection.init(to:using:)();
    }
  }

  return v22;
}

void sub_1003070D8(uint64_t a1, NSObject *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10030C9E4(a2, a3);
  }
}

uint64_t sub_100307150(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_deviceStatus);
    v5 = result;
    sub_10046949C();
    a2();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003071E0(uint64_t a1)
{
  v2 = type metadata accessor for NWConnection.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16[-v7];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v3 + 16))(&v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2);
  v13 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v12;
  *(v14 + 5) = v10;
  (*(v3 + 32))(&v14[v13], &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  sub_1002B3098(0, 0, v8, &unk_1007FAE90, v14);
}

uint64_t sub_10030745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return _swift_task_switch(sub_100307480, 0, 0);
}

uint64_t sub_100307480()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[9];
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v0[12] = v5;
    if (v5)
    {
      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v6[1] = sub_1003075AC;
      v7 = v0[10];

      return sub_100307720(v7, v3);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003075AC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1003076C0, 0, 0);
}

uint64_t sub_1003076C0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100307720(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v9 = type metadata accessor for NWError();
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v11 = *(v10 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v12 = type metadata accessor for NWConnection.State();
  v3[26] = v12;
  v13 = *(v12 - 8);
  v3[27] = v13;
  v14 = *(v13 + 64) + 15;
  v3[28] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v3[29] = static AirDropActor.shared;

  return _swift_task_switch(sub_100307944, v15, 0);
}

uint64_t sub_100307944()
{
  v177 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  (*(v2 + 16))(v1, v0[10], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for NWConnection.State.waiting(_:))
  {
    if (v4 == enum case for NWConnection.State.failed(_:))
    {
      v37 = v0[28];
      v38 = v0[21];
      v39 = v0[18];
      v40 = v0[19];
      (*(v0[27] + 96))(v37, v0[26]);
      (*(v40 + 32))(v38, v37, v39);
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v41 = v0[20];
      v42 = v0[21];
      v43 = v0[18];
      v44 = v0[19];
      v45 = v0[11];
      v46 = type metadata accessor for Logger();
      sub_10000C4AC(v46, qword_100977A70);
      v173 = *(v44 + 16);
      v173(v41, v42, v43);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      v49 = os_log_type_enabled(v47, v48);
      v51 = v0[19];
      v50 = v0[20];
      v52 = v0[18];
      if (v49)
      {
        v53 = v0[11];
        v54 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v176 = v169;
        *v54 = 136315394;
        v55 = NWConnection.debugDescription.getter();
        v57 = sub_10000C4E4(v55, v56, &v176);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2112;
        sub_1000106F0(&qword_100977BF8, &type metadata accessor for NWError);
        swift_allocError();
        v173(v58, v50, v52);
        v59 = _swift_stdlib_bridgeErrorToNSError();
        v62 = *(v51 + 8);
        v60 = v51 + 8;
        v61 = v62;
        v62(v50, v52);
        *(v54 + 14) = v59;
        *v165 = v59;
        _os_log_impl(&_mh_execute_header, v47, v48, "Transfer connection failed %s %@", v54, 0x16u);
        sub_100005508(v165, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v169);
      }

      else
      {

        v108 = *(v51 + 8);
        v60 = v51 + 8;
        v61 = v108;
        v108(v50, v52);
      }

      v0[33] = v60;
      v0[34] = v61;
      v109 = v0[21];
      v110 = v0[18];
      v111 = v0[11];
      NWConnection.cancel()();
      sub_1000106F0(&qword_100977BF8, &type metadata accessor for NWError);
      v104 = swift_allocError();
      v0[35] = v104;
      v173(v112, v109, v110);
      v106 = swift_task_alloc();
      v0[36] = v106;
      *v106 = v0;
      v107 = sub_100308DD4;
      goto LABEL_30;
    }

    if (v4 == enum case for NWConnection.State.setup(_:))
    {
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v82 = v0[11];
      v83 = type metadata accessor for Logger();
      sub_10000C4AC(v83, qword_100977A70);

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v84, v85))
      {
        goto LABEL_39;
      }

      v86 = v0[11];
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v176 = v88;
      *v87 = 136315138;
      v89 = NWConnection.debugDescription.getter();
      v91 = sub_10000C4E4(v89, v90, &v176);

      *(v87 + 4) = v91;
      v92 = "Setting up transfer connection %s";
    }

    else if (v4 == enum case for NWConnection.State.preparing(_:))
    {
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v116 = v0[11];
      v117 = type metadata accessor for Logger();
      sub_10000C4AC(v117, qword_100977A70);

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v84, v85))
      {
        goto LABEL_39;
      }

      v118 = v0[11];
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v176 = v88;
      *v87 = 136315138;
      v119 = NWConnection.debugDescription.getter();
      v121 = sub_10000C4E4(v119, v120, &v176);

      *(v87 + 4) = v121;
      v92 = "Preparing transfer connection %s";
    }

    else
    {
      if (v4 == enum case for NWConnection.State.ready(_:))
      {
        if (qword_1009735B8 != -1)
        {
          swift_once();
        }

        v123 = v0[11];
        v124 = type metadata accessor for Logger();
        sub_10000C4AC(v124, qword_100977A70);

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = v0[11];
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v176 = v129;
          *v128 = 136315138;
          v130 = NWConnection.debugDescription.getter();
          v132 = sub_10000C4E4(v130, v131, &v176);

          *(v128 + 4) = v132;
          _os_log_impl(&_mh_execute_header, v125, v126, "Transfer connection ready %s", v128, 0xCu);
          sub_10000C60C(v129);
        }

        v133 = v0[11];
        sub_1002A9938(v0[12] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor, (v0 + 2));
        v134 = v0[5];
        v135 = v0[6];
        sub_10002CDC0(v0 + 2, v134);
        v136 = (*(v135 + 24))(v133, v134, v135);
        swift_beginAccess();
        SFAirDrop.NetworkMetrics.log(rssi:)(v136);
        swift_endAccess();
        sub_10000C60C(v0 + 2);
        goto LABEL_57;
      }

      if (v4 != enum case for NWConnection.State.cancelled(_:))
      {
        if (qword_1009735B8 != -1)
        {
          swift_once();
        }

        v143 = v0[11];
        v144 = type metadata accessor for Logger();
        sub_10000C4AC(v144, qword_100977A70);

        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v145, v146))
        {
          v147 = v0[11];
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v176 = v149;
          *v148 = 136315138;
          v150 = NWConnection.debugDescription.getter();
          v152 = sub_10000C4E4(v150, v151, &v176);

          *(v148 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v145, v146, "Unknown transfer connection state %s", v148, 0xCu);
          sub_10000C60C(v149);
        }

        (*(v0[27] + 8))(v0[28], v0[26]);
        goto LABEL_57;
      }

      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v137 = v0[11];
      v138 = type metadata accessor for Logger();
      sub_10000C4AC(v138, qword_100977A70);

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v84, v85))
      {
        goto LABEL_39;
      }

      v139 = v0[11];
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v176 = v88;
      *v87 = 136315138;
      v140 = NWConnection.debugDescription.getter();
      v142 = sub_10000C4E4(v140, v141, &v176);

      *(v87 + 4) = v142;
      v92 = "Transfer connection invalidated %s";
    }

    _os_log_impl(&_mh_execute_header, v84, v85, v92, v87, 0xCu);
    sub_10000C60C(v88);

LABEL_39:

LABEL_57:
    v153 = v0[28];
    v154 = v0[24];
    v155 = v0[25];
    v157 = v0[22];
    v156 = v0[23];
    v159 = v0[20];
    v158 = v0[21];
    v160 = v0[17];
    v161 = v0[14];

    v162 = v0[1];

    return v162();
  }

  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[24];
  v8 = v0[18];
  v9 = v0[19];
  (*(v0[27] + 96))(v5, v0[26]);
  (*(v9 + 32))(v6, v5, v8);
  v10 = *(v9 + 16);
  v10(v7, v6, v8);
  v11 = (*(v9 + 88))(v7, v8);
  v12 = v0[24];
  v13 = v0[18];
  v14 = v0[19];
  if (v11 == enum case for NWError.posix(_:))
  {
    (*(v14 + 96))(v0[24], v13);
    v15 = *v12;
    v16 = POSIXErrorCode.rawValue.getter();
    if (v16 == POSIXErrorCode.rawValue.getter())
    {
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v17 = v0[25];
      v18 = v0[23];
      v19 = v0[18];
      v20 = v0[11];
      v21 = type metadata accessor for Logger();
      sub_10000C4AC(v21, qword_100977A70);
      v10(v18, v17, v19);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      v24 = os_log_type_enabled(v22, v23);
      v25 = v0[25];
      v26 = v10;
      v27 = v0[23];
      v28 = v0[18];
      v29 = v0[19];
      if (v24)
      {
        v164 = v0[11];
        v30 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v176 = v172;
        *v30 = 138412546;
        sub_1000106F0(&qword_100977BF8, &type metadata accessor for NWError);
        swift_allocError();
        v168 = v25;
        v26(v31, v27, v28);
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = *(v29 + 8);
        v33(v27, v28);
        *(v30 + 4) = v32;
        *v163 = v32;
        *(v30 + 12) = 2080;
        v34 = NWConnection.debugDescription.getter();
        v36 = sub_10000C4E4(v34, v35, &v176);

        *(v30 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring error %@ for connection %s", v30, 0x16u);
        sub_100005508(v163, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v172);

        v33(v168, v28);
      }

      else
      {

        v122 = *(v29 + 8);
        v122(v27, v28);
        v122(v25, v28);
      }

      goto LABEL_57;
    }
  }

  else
  {
    (*(v14 + 8))(v0[24], v13);
  }

  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v63 = v0[25];
  v64 = v0[22];
  v65 = v0[18];
  v66 = v0[11];
  v67 = type metadata accessor for Logger();
  sub_10000C4AC(v67, qword_100977A70);
  v10(v64, v63, v65);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  v70 = os_log_type_enabled(v68, v69);
  v71 = v0[22];
  v72 = v0[18];
  v73 = v0[19];
  if (v70)
  {
    v74 = v0[11];
    v75 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v176 = v174;
    *v75 = 136315394;
    v76 = NWConnection.debugDescription.getter();
    v166 = v10;
    v78 = sub_10000C4E4(v76, v77, &v176);

    *(v75 + 4) = v78;
    *(v75 + 12) = 2112;
    sub_1000106F0(&qword_100977BF8, &type metadata accessor for NWError);
    swift_allocError();
    v166(v79, v71, v72);
    v80 = _swift_stdlib_bridgeErrorToNSError();
    v81 = *(v73 + 8);
    v81(v71, v72);
    *(v75 + 14) = v80;
    *v170 = v80;
    _os_log_impl(&_mh_execute_header, v68, v69, "Waiting for transfer connection %s %@", v75, 0x16u);
    sub_100005508(v170, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v174);
  }

  else
  {

    v81 = *(v73 + 8);
    v81(v71, v72);
  }

  v0[30] = v81;
  v93 = v0[13];
  v171 = v0[12];
  v175 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint;
  sub_10030D7A0(v171 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v0[14], type metadata accessor for SDAirDropDiscoveredEndpoint);
  v94 = swift_getEnumCaseMultiPayload() == 1;
  if (v94)
  {
    v95 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
  }

  else
  {
    v95 = type metadata accessor for SDAirDropDiscoveredEndpoint;
  }

  sub_10030D1B4(v0[14], v95);
  v97 = v0[16];
  v96 = v0[17];
  v98 = v0[15];
  v99 = v0[12];
  v167 = v0[11];
  v100 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendRequest;
  *v96 = v94;
  v101 = enum case for SFAirDropSend.Failure.resolveFailure(_:);
  v102 = type metadata accessor for SFAirDropSend.Failure();
  v103 = *(*(v102 - 8) + 104);
  v103(v96, v101, v102);
  (*(v97 + 104))(v96, enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:), v98);
  sub_1003E6A4C(v99 + v100, v171 + v175, v96);
  (*(v97 + 8))(v96, v98);
  NWConnection.cancel()();
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  v104 = swift_allocError();
  v0[31] = v104;
  *v105 = 0;
  v103(v105, v101, v102);
  v106 = swift_task_alloc();
  v0[32] = v106;
  *v106 = v0;
  v107 = sub_100308BC0;
LABEL_30:
  v106[1] = v107;
  v113 = v0[11];
  v114 = v0[12];

  return sub_100308FE4(v113, v104);
}

uint64_t sub_100308BC0()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 232);
  v5 = *v0;

  return _swift_task_switch(sub_100308CEC, v3, 0);
}

uint64_t sub_100308CEC()
{
  v1 = *(v0 + 152) + 8;
  (*(v0 + 240))(*(v0 + 200), *(v0 + 144));
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100308DD4()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 232);
  v5 = *v0;

  return _swift_task_switch(sub_100308F00, v3, 0);
}