uint64_t sub_100047C78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = 0x6C696E2D6E6F6ELL;
  }

  else
  {
    v3 = 7104878;
  }

  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  v5 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  v6._countAndFlagsBits = v3;
  v6._object = v4;
  String.append(_:)(v6);

  *a2 = 0x4E494C2097949FF0;
  a2[1] = 0xAD00002020203A4BLL;
  type metadata accessor for SessionEvent();
  swift_storeEnumTagMultiPayload();
  *v5 = UUID.uuidString.getter();
  v5[1] = v7;
  type metadata accessor for HandoffEvent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100047D98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = sub_100035D04(&qword_10033B4F8, &qword_100271FE8);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = sub_100035D04(&qword_10033B500, &unk_100271FF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *a1;
  v20 = sub_10008CF3C();

  sub_100035D04(&qword_10033B508, &qword_1002744C0);
  type metadata accessor for HandoffEvent();
  sub_10000E244(&qword_10033B510, &qword_10033B508, &qword_1002744C0);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  sub_10000E244(&qword_10033B518, &qword_10033B500, &unk_100271FF0);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B520, &qword_10033B4F8, &qword_100271FE8);
  v14 = v17;
  v15 = Publisher.eraseToAnyPublisher()();
  (*(v18 + 8))(v7, v14);
  result = (*(v9 + 8))(v12, v8);
  *v19 = v15;
  return result;
}

uint64_t sub_100048090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  v5 = *(sub_100035D04(&qword_10033B528, &unk_100272000) + 48);
  sub_100013B14(a1, a2, type metadata accessor for ExperienceEffect);
  v6 = sub_100035D04(&qword_10033B530, &unk_1002783D0);
  sub_100013B14(a1 + *(v6 + 36), a2 + v5, type metadata accessor for ExperienceEvent);
  type metadata accessor for SessionEvent();
  swift_storeEnumTagMultiPayload();
  *v4 = UUID.uuidString.getter();
  v4[1] = v7;
  type metadata accessor for HandoffEvent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000481A8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
    sub_100048924(a1, (a1 + *(v3 + 48)), *(a1 + *(v3 + 64)) | (*(a1 + *(v3 + 64) + 4) << 32));
  }

  return result;
}

uint64_t sub_100048240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + *(sub_100035D04(&unk_10034C700, &qword_100273D30) + 48));
  v6 = *v4;
  v5 = v4[1];
  v7 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  sub_100013B14(a1, a2, type metadata accessor for ExperienceEvent);
  type metadata accessor for SessionEvent();
  swift_storeEnumTagMultiPayload();
  *v7 = v6;
  v7[1] = v5;
  type metadata accessor for HandoffEvent();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_100048318(uint64_t a1)
{
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for HandoffEvent();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SessionEvent();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v25 - v18;
  sub_100013B14(a1, v12, type metadata accessor for HandoffEvent);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = *&v12[*(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48) + 8];

    sub_10005177C(v12, v19, type metadata accessor for SessionEvent);
    sub_10005177C(v19, v17, type metadata accessor for SessionEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10005177C(v17, v8, type metadata accessor for ExperienceEvent);
      sub_10005177C(v8, v6, type metadata accessor for ExperienceEvent);
      v21 = swift_getEnumCaseMultiPayload() != 1;
      sub_10001439C(v6, type metadata accessor for ExperienceEvent);
      return v21;
    }

    v23 = type metadata accessor for SessionEvent;
    v24 = v17;
  }

  else
  {
    v23 = type metadata accessor for HandoffEvent;
    v24 = v12;
  }

  sub_10001439C(v24, v23);
  return 1;
}

uint64_t sub_1000485C8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v4;
  v15[0] = *(a1 + 32);
  *(v15 + 9) = *(a1 + 41);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(sub_100035D04(&qword_10033B4E0, &unk_100278FD0) + 80);
  v8 = *(sub_100035D04(&qword_10033B4C8, &unk_100271FC0) + 48);
  v9 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  v10 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v10;
  a2[2] = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  type metadata accessor for ExperienceEvent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SessionEvent();
  swift_storeEnumTagMultiPayload();
  *v9 = v6;
  v9[1] = v5;
  type metadata accessor for HandoffEvent();
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 16))(a2 + v8, a1 + v7, v11);
  sub_100051520(v14, &v13);
}

uint64_t sub_100048728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = sub_100035D04(a3, a4);
    sub_100048924(a1, (a1 + *(v8 + 48)), 0x100000000uLL);
  }

  return result;
}

void *sub_1000487BC()
{
  v1 = v0;
  if (qword_100338E50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B120);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[5];

  v10 = v1[6];

  v11 = v1[7];

  return v1;
}

uint64_t sub_1000488CC()
{
  sub_1000487BC();

  return swift_deallocClassInstance();
}

void sub_100048924(uint64_t a1, void (*a2)(void, void, void), unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SessionEvent();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for HandoffEvent();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v62 - v18;
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  if (qword_100338E50 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100003078(v22, qword_10033B120);
  sub_100013B14(a1, v21, type metadata accessor for HandoffEvent);
  v66 = v23;
  v24 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v67))
  {
    v25 = swift_slowAlloc();
    v65 = v4;
    v26 = v25;
    v63 = swift_slowAlloc();
    v68[0] = v63;
    *v26 = 136315394;
    *(v26 + 4) = sub_100017494(0xD000000000000029, 0x8000000100298850, v68);
    *(v26 + 12) = 2080;
    sub_100013B14(v21, v19, type metadata accessor for HandoffEvent);
    v27 = String.init<A>(describing:)();
    v64 = v16;
    v28 = a1;
    v29 = v11;
    v30 = a3;
    v31 = a2;
    v33 = v32;
    sub_10001439C(v21, type metadata accessor for HandoffEvent);
    v34 = sub_100017494(v27, v33, v68);
    a2 = v31;
    a3 = v30;
    v11 = v29;
    a1 = v28;
    v16 = v64;

    *(v26 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v24, v67, "%s: handoffEvent=%s", v26, 0x16u);
    swift_arrayDestroy();

    v4 = v65;
  }

  else
  {

    sub_10001439C(v21, type metadata accessor for HandoffEvent);
  }

  sub_100013B14(a1, v16, type metadata accessor for HandoffEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = &v16[*(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48)];
      v39 = *v37;
      v38 = v37[1];
      sub_10005177C(v16, v11, type metadata accessor for SessionEvent);
      v40 = *(v4 + 24) + qword_100346AF8;
      os_unfair_lock_lock(v40);
      v41 = *(v40 + 8);
      if (*(v41 + 16) && (v42 = sub_100004B58(v39, v38), (v43 & 1) != 0))
      {
        v44 = *(*(v41 + 56) + 8 * v42);
      }

      else
      {
        v44 = 0;
      }

      os_unfair_lock_unlock(v40);

      if (v44)
      {
        sub_100255FF0(v11, a2, a3 | ((HIDWORD(a3) & 1) << 32));
      }

      else
      {
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "### No SessionHistory for session?", v58, 2u);
        }
      }

      v54 = type metadata accessor for SessionEvent;
      v55 = v11;
    }

    else
    {
      v54 = type metadata accessor for HandoffEvent;
      v55 = v16;
    }

    sub_10001439C(v55, v54);
  }

  else if (EnumCaseMultiPayload)
  {
    v45 = *v16;
    v46 = v4;
    v48 = *(v16 + 1);
    v47 = *(v16 + 2);
    v49 = *(v46 + 16) + qword_100346AF8;
    os_unfair_lock_lock(v49);
    v50 = *(v49 + 8);
    if (*(v50 + 16) && (v51 = sub_100004B58(v48, v47), (v52 & 1) != 0))
    {
      v53 = *(*(v50 + 56) + 8 * v51);
    }

    else
    {
      v53 = 0;
    }

    os_unfair_lock_unlock(v49);

    if (v53)
    {
      sub_10025AFA4(v45, a2, a3 | ((HIDWORD(a3) & 1) << 32));
    }

    else
    {
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "### No DeviceHistory for device?", v61, 2u);
      }
    }
  }

  else
  {
    v36 = *(v4 + 40);
    sub_100013B7C(*v16, v16[8], a2);
  }
}

uint64_t sub_100048F24()
{
  v1 = v0;
  _StringGuts.grow(_:)(106);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001002987C0;
  String.append(_:)(v2);
  swift_beginAccess();
  v3 = v0[7];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = v1[7];
    }

    v5 = v1[7];

    __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v3 + 16);
  }

  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._object = 0x80000001002987F0;
  v8._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v8);
  v9 = v1[2] + qword_100346AF8;
  os_unfair_lock_lock(v9);
  v10 = *(*(v9 + 8) + 16);
  os_unfair_lock_unlock(v9);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._object = 0x8000000100298810;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v13 = v1[3] + qword_100346AF8;
  os_unfair_lock_lock(v13);
  v14 = *(*(v13 + 8) + 16);
  os_unfair_lock_unlock(v13);
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._object = 0x8000000100298830;
  v16._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v16);
  v17 = v1[4] + qword_100346AF8;
  os_unfair_lock_lock(v17);
  v18 = *(*(v17 + 8) + 16);
  os_unfair_lock_unlock(v17);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  return 0;
}

uint64_t getEnumTagSinglePayload for HapticEffect.ClickIntensity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HapticEffect.ClickIntensity(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000492C4()
{
  result = qword_10033B240;
  if (!qword_10033B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033B240);
  }

  return result;
}

uint64_t sub_10004933C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  v7 = *(v6 + 48);
  sub_100013B14(a1, a3, type metadata accessor for HandoffEvent);
  Date.init()();
  v8 = *(*(a2 + 24) + 24);
  v9 = *(v8 + 24);

  CurrentValueSubject.value.getter();
  if (v17)
  {
    v10 = *(v8 + 16);
    CurrentValueSubject.value.getter();

    v12 = v18;
    v13 = v19;
  }

  else
  {
    v12 = v15;

    v13 = v16 & 1;
  }

  v14 = a3 + *(v6 + 64);
  *v14 = v12;
  *(v14 + 4) = v13;
  return result;
}

uint64_t sub_100049428(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void *, void *, uint64_t, uint64_t))
{
  v10 = v5;
  v11 = a1;
  v43 = a1;
  v12 = *(v5 + 16);

  swift_getAtKeyPath();

  v14 = v41;
  v13 = v42;
  swift_bridgeObjectRetain_n();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v38 = v11;
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, &v39);
    *(v17 + 12) = 2080;
    v40[0] = v14;
    v40[1] = v13;
    v18 = String.init<A>(describing:)();
    log = v15;
    v20 = v13;
    v21 = v14;
    v22 = a3;
    v23 = a4;
    v24 = sub_100017494(v18, v19, &v39);

    *(v17 + 14) = v24;
    a4 = v23;
    a3 = v22;
    v25 = v16;
    v26 = v21;
    v13 = v20;
    _os_log_impl(&_mh_execute_header, log, v25, "%s: key=%s", v17, 0x16u);
    swift_arrayDestroy();

    v11 = v38;
  }

  else
  {

    v26 = v41;
  }

  v27 = v10 + qword_100346AF8;
  os_unfair_lock_lock((v10 + qword_100346AF8));

  v28 = *(v27 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = *(v27 + 8);
  *(v27 + 8) = 0x8000000000000000;
  sub_10004DD28(v11, v26, v13, isUniquelyReferenced_nonNull_native, a2, a3);

  v30 = v40[0];
  *(v27 + 8) = v40[0];

  os_unfair_lock_unlock(v27);
  v31 = *(v10 + 32);

  PassthroughSubject.send(_:)();

  v32 = *(v10 + 40);
  v33 = *(v30 + 16);
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = a4(*(v30 + 16), 0);
  v35 = a5(v40, v34 + 4, v33, v30);

  sub_100004F98();
  if (v35 != v33)
  {
    __break(1u);
LABEL_7:

    v34 = _swiftEmptyArrayStorage;
  }

  v40[0] = v34;
  PassthroughSubject.send(_:)();
}

uint64_t sub_100049928(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void, void, void, void))
{
  v10 = v5;
  v11 = a1;
  v36[6] = a1;
  v12 = *(v5 + 16);

  swift_getAtKeyPath();

  v13 = v36[5];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v35 = v11;
    v16 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, v36);
    *(v16 + 12) = 2080;
    v17 = String.init<A>(describing:)();
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = sub_100017494(v17, v18, v36);

    *(v16 + 14) = v23;
    a5 = v22;
    a4 = v21;
    a3 = v20;
    a2 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: key=%s", v16, 0x16u);
    swift_arrayDestroy();

    v11 = v35;
  }

  else
  {
  }

  v24 = v10 + qword_100346AF8;
  os_unfair_lock_lock((v10 + qword_100346AF8));
  v25 = v11;
  v26 = *(v24 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36[0] = *(v24 + 8);
  *(v24 + 8) = 0x8000000000000000;
  sub_10004D630(v25, v13, isUniquelyReferenced_nonNull_native, a2, a3);
  v28 = v36[0];
  *(v24 + 8) = v36[0];

  os_unfair_lock_unlock(v24);
  v29 = *(v10 + 32);

  PassthroughSubject.send(_:)();

  v30 = *(v10 + 40);
  v31 = *(v28 + 16);
  if (!v31)
  {
    goto LABEL_7;
  }

  v32 = a4(*(v28 + 16), 0);
  v33 = a5(v36, v32 + 4, v31, v28);

  sub_100004F98();
  if (v33 != v31)
  {
    __break(1u);
LABEL_7:

    v32 = _swiftEmptyArrayStorage;
  }

  v36[0] = v32;
  PassthroughSubject.send(_:)();
}

uint64_t sub_100049CD8(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(void, void), uint64_t (*a5)(uint64_t *, void *, uint64_t, uint64_t))
{
  v47 = a4;
  v48 = a5;
  v52 = a2;
  v7 = v5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v51 = a1;
  v54[5] = a1;
  v20 = v7[2];

  swift_getAtKeyPath();

  v53 = v10;
  v21 = *(v10 + 16);
  v21(v17, v19, v9);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v50 = v9;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v46 = v19;
    v26 = v25;
    v27 = swift_slowAlloc();
    v45 = a3;
    v54[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, v54);
    *(v26 + 12) = 2080;
    v21(v14, v17, v9);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v49 = *(v53 + 8);
    v49(v17, v9);
    v31 = sub_100017494(v28, v30, v54);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: key=%s", v26, 0x16u);
    swift_arrayDestroy();
    a3 = v45;

    v19 = v46;
  }

  else
  {

    v49 = *(v53 + 8);
    v49(v17, v9);
  }

  v32 = v7 + qword_100346AF8;
  os_unfair_lock_lock((v7 + qword_100346AF8));
  v33 = v51;

  v34 = *(v32 + 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54[0] = *(v32 + 1);
  *(v32 + 1) = 0x8000000000000000;
  sub_10001B8A0(v33, v19, isUniquelyReferenced_nonNull_native, v52, a3);
  v36 = v54[0];
  *(v32 + 1) = v54[0];

  os_unfair_lock_unlock(v32);
  v37 = v7[4];

  PassthroughSubject.send(_:)();

  v38 = v7[5];
  v39 = *(v36 + 16);
  if (!v39)
  {
    v43 = v7[5];

    v40 = _swiftEmptyArrayStorage;
LABEL_8:
    v54[0] = v40;
    PassthroughSubject.send(_:)();

    return (v49)(v19, v50);
  }

  v40 = v47(*(v36 + 16), 0);
  v41 = v48(v54, v40 + 4, v39, v36);

  result = sub_100004F98();
  if (v41 == v39)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A178(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void, void, void, void))
{
  v10 = v5;
  v11 = a1;
  v36[6] = a1;
  v12 = *(v5 + 16);

  swift_getAtKeyPath();

  v13 = v36[5];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v35 = v11;
    v16 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, v36);
    *(v16 + 12) = 2080;
    v17 = String.init<A>(describing:)();
    v19 = v13;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = sub_100017494(v17, v18, v36);

    *(v16 + 14) = v24;
    a5 = v23;
    a4 = v22;
    a3 = v21;
    a2 = v20;
    v13 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: key=%s", v16, 0x16u);
    swift_arrayDestroy();

    v11 = v35;
  }

  v25 = v10 + qword_100346AF8;
  os_unfair_lock_lock((v10 + qword_100346AF8));

  v26 = *(v25 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36[0] = *(v25 + 8);
  *(v25 + 8) = 0x8000000000000000;
  sub_10004DEC0(v11, v13, isUniquelyReferenced_nonNull_native, sub_100026910, a2, a3);
  v28 = v36[0];
  *(v25 + 8) = v36[0];

  os_unfair_lock_unlock(v25);
  v29 = *(v10 + 32);

  PassthroughSubject.send(_:)();

  v30 = *(v10 + 40);
  v31 = *(v28 + 16);
  if (!v31)
  {
    goto LABEL_6;
  }

  v32 = a4(*(v28 + 16), 0);
  v33 = a5(v36, v32 + 4, v31, v28);

  sub_100004F98();
  if (v33 != v31)
  {
    __break(1u);
LABEL_6:

    v32 = _swiftEmptyArrayStorage;
  }

  v36[0] = v32;
  PassthroughSubject.send(_:)();
}

uint64_t sub_10004A49C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_100346AF8;
  os_unfair_lock_lock((v2 + qword_100346AF8));
  v6 = sub_10004B2C8((v5 + 8), a1, a2, sub_100089E6C);
  v8 = v7;
  os_unfair_lock_unlock(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

  v18 = v6;

  v9 = v2;
  sub_10004BB88(&v18, type metadata accessor for DeviceHistory);
  v10 = *(v2 + 48);

  PassthroughSubject.send(_:)();

  v11 = *(v9 + 40);
  v12 = *(v8 + 16);
  if (!v12)
  {
    v15 = *(v9 + 40);

    v13 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v13 = sub_100009194(*(v8 + 16), 0);
  v14 = sub_100009A04(&v17, v13 + 4, v12, v8);

  sub_100004F98();
  if (v14 == v12)
  {
LABEL_7:
    v17 = v13;
    PassthroughSubject.send(_:)();

    return v6;
  }

  __break(1u);
LABEL_5:

  return v6;
}

uint64_t sub_10004A638(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void, void), uint64_t (*a5)(void *, void *, uint64_t, uint64_t))
{
  v11 = v5 + qword_100346AF8;
  os_unfair_lock_lock((v5 + qword_100346AF8));
  v12 = sub_10004B2C8((v11 + 8), a1, a2, a3);
  v14 = v13;
  os_unfair_lock_unlock(v11);
  if (!v12)
  {
    goto LABEL_5;
  }

  v23[5] = v12;
  v15 = *(v5 + 48);

  v16 = v5;
  PassthroughSubject.send(_:)();

  v17 = *(v5 + 40);
  v18 = *(v14 + 16);
  if (!v18)
  {
    v21 = *(v16 + 40);

    v19 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v19 = a4(*(v14 + 16), 0);
  v20 = a5(v23, v19 + 4, v18, v14);

  sub_100004F98();
  if (v20 == v18)
  {
LABEL_7:
    v23[0] = v19;
    PassthroughSubject.send(_:)();

    return v12;
  }

  __break(1u);
LABEL_5:

  return v12;
}

uint64_t sub_10004A7C0(uint64_t a1)
{
  v3 = v1 + qword_100346AF8;
  os_unfair_lock_lock((v1 + qword_100346AF8));
  v4 = sub_10004B384((v3 + 8), a1, sub_10008CE8C, sub_10004C600, sub_10008A2C0);
  v6 = v5;
  os_unfair_lock_unlock(v3);
  if (!v4)
  {

    return v4;
  }

  v17 = v4;
  v7 = v4;
  v8 = v1;
  sub_1000059F0(&v17, &qword_10033B5F8, PCLockscreenControlsObserver_ptr);
  v9 = *(v1 + 48);

  PassthroughSubject.send(_:)();

  v10 = *(v8 + 40);
  v11 = *(v6 + 16);
  if (!v11)
  {
    v15 = *(v8 + 40);

    v12 = _swiftEmptyArrayStorage;
LABEL_7:
    v16 = v12;
    PassthroughSubject.send(_:)();

    return v4;
  }

  v12 = sub_100009194(v11, 0);
  v13 = sub_1001295D4(&v16, v12 + 4, v11, v6);

  result = sub_100004F98();
  if (v13 == v11)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A9D4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_100346AF8;
  os_unfair_lock_lock((v2 + qword_100346AF8));
  v6 = sub_10004B2C8((v5 + 8), a1, a2, sub_10008A5FC);
  v8 = v7;
  os_unfair_lock_unlock(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

  v18 = v6;

  v9 = v2;
  sub_10004B544(&v18);
  v10 = *(v2 + 48);

  PassthroughSubject.send(_:)();

  v11 = *(v9 + 40);
  v12 = *(v8 + 16);
  if (!v12)
  {
    v15 = *(v9 + 40);

    v13 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v13 = sub_100009194(*(v8 + 16), 0);
  v14 = sub_100009A04(&v17, v13 + 4, v12, v8);

  sub_100004F98();
  if (v14 == v12)
  {
LABEL_7:
    v17 = v13;
    PassthroughSubject.send(_:)();

    return v6;
  }

  __break(1u);
LABEL_5:

  return v6;
}

uint64_t sub_10004AB5C(uint64_t a1)
{
  v3 = v1 + qword_100346AF8;
  os_unfair_lock_lock((v1 + qword_100346AF8));
  v4 = sub_10004B440((v3 + 8), a1, sub_100089CF0);
  v6 = v5;
  os_unfair_lock_unlock(v3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v16 = v4;

  v7 = v1;
  sub_10004B544(&v16);
  v8 = *(v1 + 48);

  PassthroughSubject.send(_:)();

  v9 = *(v7 + 40);
  v10 = *(v6 + 16);
  if (!v10)
  {
    v13 = *(v7 + 40);

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v11 = sub_100009194(*(v6 + 16), 0);
  v12 = sub_100009A04(&v15, v11 + 4, v10, v6);

  sub_100004F98();
  if (v12 == v10)
  {
LABEL_7:
    v15 = v11;
    PassthroughSubject.send(_:)();

    return v4;
  }

  __break(1u);
LABEL_5:

  return v4;
}

uint64_t sub_10004ACDC(uint64_t a1)
{
  v3 = v1 + qword_100346AF8;
  os_unfair_lock_lock((v1 + qword_100346AF8));
  v4 = sub_10004B384((v3 + 8), a1, sub_10008CE8C, sub_10004C600, sub_10008A7C8);
  v6 = v5;
  os_unfair_lock_unlock(v3);
  if (!v4)
  {

    return v4;
  }

  v17 = v4;
  v7 = v4;
  v8 = v1;
  sub_10004B810(&v17);
  v9 = *(v1 + 48);

  PassthroughSubject.send(_:)();

  v10 = *(v8 + 40);
  v11 = *(v6 + 16);
  if (!v11)
  {
    v15 = *(v8 + 40);

    v12 = _swiftEmptyArrayStorage;
LABEL_7:
    v16 = v12;
    PassthroughSubject.send(_:)();

    return v4;
  }

  v12 = sub_100009194(v11, 0);
  v13 = sub_1001295D4(&v16, v12 + 4, v11, v6);

  result = sub_100004F98();
  if (v13 == v11)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004AEE0(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(void, void), uint64_t (*a5)(void **, void *, uint64_t, uint64_t))
{
  v11 = v5 + qword_100346AF8;
  os_unfair_lock_lock((v5 + qword_100346AF8));
  v12 = sub_10004B440((v11 + 8), a1, a2);
  v14 = v13;
  os_unfair_lock_unlock(v11);
  if (!v12)
  {
    goto LABEL_5;
  }

  v24 = v12;

  v15 = v5;
  sub_10004BB88(&v24, a3);
  v16 = *(v5 + 48);

  PassthroughSubject.send(_:)();

  v17 = *(v15 + 40);
  v18 = *(v14 + 16);
  if (!v18)
  {
    v21 = *(v15 + 40);

    v19 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v19 = a4(*(v14 + 16), 0);
  v20 = a5(&v23, v19 + 4, v18, v14);

  sub_100004F98();
  if (v20 == v18)
  {
LABEL_7:
    v23 = v19;
    PassthroughSubject.send(_:)();

    return v12;
  }

  __break(1u);
LABEL_5:

  return v12;
}

uint64_t sub_10004B114(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(void, void), uint64_t (*a5)(void **, void *, uint64_t, uint64_t))
{
  v11 = v5 + qword_100346AF8;
  os_unfair_lock_lock((v5 + qword_100346AF8));
  v12 = sub_10004B384((v11 + 8), a1, sub_100026910, sub_10004C600, a2);
  v14 = v13;
  os_unfair_lock_unlock(v11);
  if (!v12)
  {
    goto LABEL_5;
  }

  v24 = v12;

  v15 = v5;
  sub_10004BB88(&v24, a3);
  v16 = *(v5 + 48);

  PassthroughSubject.send(_:)();

  v17 = *(v15 + 40);
  v18 = *(v14 + 16);
  if (!v18)
  {
    v21 = *(v15 + 40);

    v19 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v19 = a4(*(v14 + 16), 0);
  v20 = a5(&v23, v19 + 4, v18, v14);

  sub_100004F98();
  if (v20 == v18)
  {
LABEL_7:
    v23 = v19;
    PassthroughSubject.send(_:)();

    return v12;
  }

  __break(1u);
LABEL_5:

  return v12;
}

uint64_t sub_10004B2C8(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *a1;
  v7 = sub_100004B58(a2, a3);
  if (v8)
  {
    v9 = v7;
    v10 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    v16 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v12 = v16;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(*(v12 + 56) + 8 * v9);
    sub_100005840(v9, v12);
    *a1 = v12;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_10004B384(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v8 = *a1;
  v9 = a3(a2);
  if (v10)
  {
    v11 = v9;
    v12 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    v17 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v14 = v17;
    }

    v15 = *(*(v14 + 56) + 8 * v11);
    a4(v11, v14);
    *a1 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_10004B440(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *a1;
  v6 = sub_100019110(a2);
  if (v7)
  {
    v8 = v6;
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v16 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v11 = v16;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(*(v11 + 56) + 8 * v8);
    sub_10004CAF0(v8, v11);
    *a1 = v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t *sub_10004B544(uint64_t *result)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *result;
    v26 = type metadata accessor for HandoffDevice();
    v27 = &off_1003034F0;
    v25[0] = v2;
    sub_10000EBC0(v25, v26);

    v3 = sub_100075990();
    v4 = v3;
    if ((v3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_1000515C0(&qword_10033B5E8, &type metadata accessor for AnyCancellable);
      result = Set.Iterator.init(_cocoa:)();
      v6 = v28;
      v5 = v29;
      v7 = v30;
      v8 = v31;
      v9 = v32;
    }

    else
    {
      v10 = -1 << *(v3 + 32);
      v5 = v3 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(v3 + 56);

      v8 = 0;
      v6 = v4;
    }

    if (v6 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8;
      v14 = v9;
      v15 = v8;
      if (!v9)
      {
        break;
      }

LABEL_13:
      v16 = (v14 - 1) & v14;
      v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

      if (!v17)
      {
LABEL_19:
        sub_100004F98();

        v18 = v26;
        v19 = v27;
        sub_100051608(v25, v26);
        v20 = (v19[3])(v24, v18, v19);
        v22 = v21;
        v23 = *v21;

        *v22 = &_swiftEmptySetSingleton;
        v20(v24, 0);
        return sub_10000903C(v25);
      }

      while (1)
      {
        AnyCancellable.cancel()();

        v8 = v15;
        v9 = v16;
        if ((v6 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for AnyCancellable();
          swift_dynamicCast();
          v15 = v8;
          v16 = v9;
          if (v24[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

id *sub_10004B810(id *result)
{
  if (*(v1 + 24) == 1)
  {
    v26[0] = *result;
    type metadata accessor for XPCConnection();
    v2 = v26[0];
    sub_100035D04(&qword_10033B5D8, &qword_100272068);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v30, v27);
      v3 = v28;
      v4 = v29;
      sub_10000EBC0(v27, v28);
      v5 = (*(v4 + 8))(v3, v4);
      v6 = v5;
      if ((v5 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCancellable();
        sub_1000515C0(&qword_10033B5E8, &type metadata accessor for AnyCancellable);
        result = Set.Iterator.init(_cocoa:)();
        v7 = *(&v30 + 1);
        v8 = v30;
        v10 = *(&v31 + 1);
        v9 = v31;
        v11 = v32;
      }

      else
      {
        v12 = -1 << *(v5 + 32);
        v7 = v5 + 56;
        v9 = ~v12;
        v13 = -v12;
        if (v13 < 64)
        {
          v14 = ~(-1 << v13);
        }

        else
        {
          v14 = -1;
        }

        v11 = v14 & *(v5 + 56);

        v10 = 0;
        v8 = v6;
      }

      if (v8 < 0)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v15 = v10;
        v16 = v11;
        v17 = v10;
        if (!v11)
        {
          break;
        }

LABEL_15:
        v18 = (v16 - 1) & v16;
        v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        if (!v19)
        {
LABEL_21:
          sub_100004F98();

          v20 = v28;
          v21 = v29;
          sub_100051608(v27, v28);
          v22 = (*(v21 + 24))(v26, v20, v21);
          v24 = v23;
          v25 = *v23;

          *v24 = &_swiftEmptySetSingleton;
          v22(v26, 0);
          return sub_10000903C(v27);
        }

        while (1)
        {
          AnyCancellable.cancel()();

          v10 = v17;
          v11 = v18;
          if ((v8 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_17:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for AnyCancellable();
            swift_dynamicCast();
            v17 = v10;
            v18 = v11;
            if (v26[0])
            {
              continue;
            }
          }

          goto LABEL_21;
        }
      }

      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= ((v9 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v16 = *(v7 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      return sub_1000097E8(&v30, &qword_10033B5E0, &qword_100272070);
    }
  }

  return result;
}

void *sub_10004BB88(void *result, void (*a2)(void))
{
  if (*(v2 + 24) == 1)
  {
    v26[0] = *result;
    a2(0);

    sub_100035D04(&qword_10033B5D8, &qword_100272068);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v30, v27);
      v3 = v28;
      v4 = v29;
      sub_10000EBC0(v27, v28);
      v5 = (*(v4 + 8))(v3, v4);
      v6 = v5;
      if ((v5 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCancellable();
        sub_1000515C0(&qword_10033B5E8, &type metadata accessor for AnyCancellable);
        result = Set.Iterator.init(_cocoa:)();
        v7 = *(&v30 + 1);
        v8 = v30;
        v10 = *(&v31 + 1);
        v9 = v31;
        v11 = v32;
      }

      else
      {
        v12 = -1 << *(v5 + 32);
        v7 = v5 + 56;
        v9 = ~v12;
        v13 = -v12;
        if (v13 < 64)
        {
          v14 = ~(-1 << v13);
        }

        else
        {
          v14 = -1;
        }

        v11 = v14 & *(v5 + 56);

        v10 = 0;
        v8 = v6;
      }

      if (v8 < 0)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v15 = v10;
        v16 = v11;
        v17 = v10;
        if (!v11)
        {
          break;
        }

LABEL_15:
        v18 = (v16 - 1) & v16;
        v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        if (!v19)
        {
LABEL_21:
          sub_100004F98();

          v20 = v28;
          v21 = v29;
          sub_100051608(v27, v28);
          v22 = (*(v21 + 24))(v26, v20, v21);
          v24 = v23;
          v25 = *v23;

          *v24 = &_swiftEmptySetSingleton;
          v22(v26, 0);
          return sub_10000903C(v27);
        }

        while (1)
        {
          AnyCancellable.cancel()();

          v10 = v17;
          v11 = v18;
          if ((v8 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_17:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for AnyCancellable();
            swift_dynamicCast();
            v17 = v10;
            v18 = v11;
            if (v26[0])
            {
              continue;
            }
          }

          goto LABEL_21;
        }
      }

      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= ((v9 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v16 = *(v7 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      return sub_1000097E8(&v30, &qword_10033B5E0, &qword_100272070);
    }
  }

  return result;
}

uint64_t sub_10004BEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_100035D04(&qword_10033B498, &qword_100271FA8) + 48);
  sub_100013B14(a1, a2, type metadata accessor for HandoffEvent);
  return Date.init()();
}

uint64_t sub_10004BF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_100035D04(&qword_10033B378, &qword_100271F38) + 48);
  sub_100009848(a1, a2, &qword_10033B368, &qword_100271F30);
  return Date.init()();
}

uint64_t sub_10004BF8C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10004C13C(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000515C0(&qword_100339848, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_10004C45C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_100051658(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_1000516C4(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10004C600(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10004C7A0(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_1000515C0(&qword_100339848, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10004CAF0(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000515C0(&qword_100339848, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_10004CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100004B58(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100086B2C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100004B58(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100089EBC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_10004D010(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_100019110(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_10008A034();
      goto LABEL_9;
    }

    sub_100086DEC(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_100019110(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_10004E0B4(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_10004D1EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004B58(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000871E8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100004B58(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10008A2E8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_10004D368(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000851E8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10008A458();
      goto LABEL_7;
    }

    sub_100087490(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1000851E8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100051658(a2, v22);
      return sub_10004E174(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000903C(v17);

  return sub_1000516B4(a1, v17);
}

_OWORD *sub_10004D4E0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004B58(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10008A624();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100087770(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100004B58(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000903C(v23);

    return sub_1000516B4(a1, v23);
  }

  else
  {
    sub_10004E1F0(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_10004D630(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  result = sub_10008CE8C(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_8:
    v24 = *v8;
    if (v19)
    {
      v25 = v24[7];
      v26 = *(v25 + 8 * result);
      *(v25 + 8 * result) = a1;

      return _objc_release_x1();
    }

    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 8 * result) = a2;
    *(v24[7] + 8 * result) = a1;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    a4();
    result = v21;
    goto LABEL_8;
  }

  a5(v18, a3 & 1);
  v22 = *v8;
  result = sub_10008CE8C(a2);
  if ((v19 & 1) == (v23 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1();
}

uint64_t sub_10004D794(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004B58(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100087FA8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100004B58(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10008AAE4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_10004D910(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100019110(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10008ADDC();
      goto LABEL_7;
    }

    sub_100088520(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_100019110(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10004E25C(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_10004DB14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100019110(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10008B130();
      goto LABEL_7;
    }

    sub_1000889B4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100019110(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10004E350(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for PCUserAlertManager.ActiveAlertContext(0) - 8) + 72) * v15;

  return sub_100051718(a1, v23);
}

uint64_t sub_10004DD28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100004B58(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_100004B58(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

unint64_t sub_10004DEC0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void))
{
  v10 = v6;
  v14 = *v6;
  result = a4(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      a6(v20, a3 & 1);
      v24 = *v10;
      result = a4(a2);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v26 = *v10;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 8 * result) = a2;
    *(v26[7] + 8 * result) = a1;
    v29 = v26[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v26[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7];
  v28 = *(v27 + 8 * result);
  *(v27 + 8 * result) = a1;
}

unint64_t sub_10004E06C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10004E0B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_10004E174(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000516B4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_10004E1F0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000516B4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10004E25C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_10004E350(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  result = sub_10005177C(a3, v10 + *(*(active - 8) + 72) * a1, type metadata accessor for PCUserAlertManager.ActiveAlertContext);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_10004E440@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  *a3 = *a2;
  a3[1] = v3;
}

uint64_t sub_10004E4BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *(sub_100035D04(a2, a3) + 48);
  *a4 = v5;

  return Date.init()();
}

void *sub_10004E50C(uint64_t a1)
{
  v2 = v1;
  v229 = a1;
  v208 = sub_100035D04(&qword_10033B248, &qword_100271DC0);
  v207 = *(v208 - 8);
  v3 = *(v207 + 64);
  __chkstk_darwin(v208);
  v206 = v162 - v4;
  v205 = sub_100035D04(&qword_10033B250, &qword_100271DC8);
  v204 = *(v205 - 8);
  v5 = *(v204 + 64);
  __chkstk_darwin(v205);
  v203 = v162 - v6;
  v199 = sub_100035D04(&qword_10033B258, &qword_100271DD0);
  v198 = *(v199 - 8);
  v7 = *(v198 + 64);
  __chkstk_darwin(v199);
  v197 = v162 - v8;
  v202 = sub_100035D04(&qword_10033B260, &qword_100271DD8);
  v201 = *(v202 - 8);
  v9 = *(v201 + 64);
  __chkstk_darwin(v202);
  v200 = v162 - v10;
  v220 = sub_100035D04(&qword_10033B268, &qword_100271DE0);
  v225 = *(v220 - 8);
  v11 = *(v225 + 64);
  __chkstk_darwin(v220);
  v195 = v162 - v12;
  v221 = sub_100035D04(&qword_10033B270, &qword_100271DE8);
  v226 = *(v221 - 8);
  v13 = *(v226 + 64);
  __chkstk_darwin(v221);
  v196 = v162 - v14;
  v213 = sub_100035D04(&qword_10033B278, &qword_100271DF0);
  v212 = *(v213 - 8);
  v15 = *(v212 + 8);
  __chkstk_darwin(v213);
  v211 = v162 - v16;
  v192 = sub_100035D04(&qword_10033B280, &qword_100271DF8);
  v191 = *(v192 - 8);
  v17 = *(v191 + 64);
  __chkstk_darwin(v192);
  v190 = v162 - v18;
  v210 = sub_100035D04(&qword_10033B288, &unk_100271E00);
  v194 = *(v210 - 8);
  v19 = *(v194 + 64);
  __chkstk_darwin(v210);
  v193 = v162 - v20;
  v21 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v189 = v162 - v23;
  v24 = sub_100035D04(&qword_10033B290, &qword_100271E10);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v188 = v162 - v26;
  v215 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v187 = *(v215 - 8);
  v27 = *(v187 + 64);
  __chkstk_darwin(v215);
  v186 = v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_100035D04(&qword_10033B298, &qword_100271E18);
  v179 = *(v180 - 1);
  v29 = *(v179 + 64);
  __chkstk_darwin(v180);
  v178 = v162 - v30;
  v182 = sub_100035D04(&qword_10033B2A0, &qword_100271E20);
  v181 = *(v182 - 8);
  v31 = *(v181 + 64);
  __chkstk_darwin(v182);
  v214 = v162 - v32;
  v185 = sub_100035D04(&qword_10033B2A8, &qword_100271E28);
  v184 = *(v185 - 8);
  v33 = *(v184 + 64);
  __chkstk_darwin(v185);
  v183 = v162 - v34;
  v217 = sub_100035D04(&qword_10033B2B0, &unk_100271E30);
  v175 = *(v217 - 1);
  v35 = *(v175 + 64);
  __chkstk_darwin(v217);
  v174 = v162 - v36;
  v219 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v224 = *(v219 - 8);
  v37 = *(v224 + 64);
  __chkstk_darwin(v219);
  v209 = v162 - v38;
  v216 = sub_100035D04(&qword_10033B2B8, &qword_100271E40);
  v177 = *(v216 - 8);
  v39 = *(v177 + 64);
  __chkstk_darwin(v216);
  v176 = v162 - v40;
  v223 = sub_100035D04(&qword_10033B2C0, &qword_100271E48);
  v218 = *(v223 - 8);
  v41 = *(v218 + 64);
  __chkstk_darwin(v223);
  v173 = v162 - v42;
  v172 = sub_100035D04(&qword_10033B2C8, &qword_100271E50);
  v171 = *(v172 - 8);
  v43 = *(v171 + 64);
  __chkstk_darwin(v172);
  v170 = v162 - v44;
  v166 = sub_100035D04(&qword_10033B2D0, &qword_100271E58);
  v165 = *(v166 - 8);
  v45 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = v162 - v46;
  v169 = sub_100035D04(&qword_10033B2D8, &qword_100271E60);
  v168 = *(v169 - 8);
  v47 = *(v168 + 64);
  __chkstk_darwin(v169);
  v167 = v162 - v48;
  v163 = sub_100035D04(&qword_10033B2E0, &qword_100271E68);
  v49 = *(v163 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v163);
  v52 = v162 - v51;
  KeyPath = swift_getKeyPath();
  v54 = sub_100035D04(&qword_10033B2E8, &qword_100271E90);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = sub_10006C58C(KeyPath, 0);

  v2[2] = v57;
  v58 = swift_getKeyPath();
  v59 = sub_100035D04(&qword_10033B2F0, &qword_100271EB8);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v62 = sub_10006C7BC(v58, 0);

  v2[3] = v62;
  v63 = swift_getKeyPath();
  v64 = sub_100035D04(&qword_10033B2F8, &qword_100271EE0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v67 = sub_10006C9EC(v63, 0);

  v2[4] = v67;
  v68 = type metadata accessor for SystemHistory(0);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  v71 = swift_allocObject();
  v72 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_charging;
  v73 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
  v74 = *(*(v73 - 8) + 56);
  v74(v71 + v72, 1, 1, v73);
  v74(v71 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_deviceMotionStationary, 1, 1, v73);
  v74(v71 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_orientationIsValid, 1, 1, v73);
  v74(v71 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_screenOn, 1, 1, v73);
  v74(v71 + OBJC_IVAR____TtC17proximitycontrold13SystemHistory_ranging, 1, 1, v73);
  v2[5] = v71;
  v75 = sub_10024D4BC(_swiftEmptyArrayStorage);
  v76 = v2;
  v2[7] = &_swiftEmptySetSingleton;
  v77 = v2 + 7;
  *(v77 - 1) = v75;
  if (qword_100338E50 != -1)
  {
    swift_once();
  }

  v228 = v77;
  v78 = type metadata accessor for Logger();
  sub_100003078(v78, qword_10033B120);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&_mh_execute_header, v79, v80, "Init", v81, 2u);
  }

  v82 = v229;
  sub_10014330C();
  v83 = sub_1000D7228();

  v231 = v83;
  sub_100035D04(&qword_10033B308, &qword_100271EF0);
  sub_100035D04(&qword_10033B310, &qword_100271EF8);
  sub_10000E244(&qword_10033B318, &qword_10033B308, &qword_100271EF0);
  Publisher.map<A>(_:)();
  v222 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033B320, &qword_10033B2E0, &qword_100271E68);
  v84 = v163;
  v85 = Publisher.eraseToAnyPublisher()();

  (*(v49 + 8))(v52, v84);
  v231 = v85;
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = swift_allocObject();
  *(v87 + 16) = sub_100051388;
  *(v87 + 24) = v86;

  sub_100035D04(&qword_10033B328, &unk_100271F00);
  sub_10000E244(&qword_10033B330, &qword_10033B328, &unk_100271F00);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v163 = *(v82 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
  v231 = *(v163 + 32);
  v162[5] = sub_100035D04(&qword_100339828, &unk_100270300);
  v162[4] = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
  v231 = Publisher.eraseToAnyPublisher()();
  v162[2] = sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_100035D04(&qword_10033B338, &qword_100271F18);
  v162[3] = &protocol conformance descriptor for AnyPublisher<A, B>;
  v162[1] = sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
  v88 = v164;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033B340, &qword_10033B2D0, &qword_100271E58);
  v89 = v166;
  v90 = Publisher.eraseToAnyPublisher()();

  (*(v165 + 8))(v88, v89);
  v231 = v90;
  sub_100035D04(&qword_10033B348, &qword_100271F20);
  type metadata accessor for DeviceHistory(0);
  sub_10000E244(&qword_10033B350, &qword_10033B348, &qword_100271F20);
  v91 = v167;
  Publisher.map<A>(_:)();

  swift_allocObject();
  v227 = v76;
  swift_weakInit();
  sub_10000E244(&qword_10033B358, &qword_10033B2D8, &qword_100271E60);
  v92 = v169;
  Publisher<>.sink(receiveValue:)();

  (*(v168 + 8))(v91, v92);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v231 = *(v163 + 48);
  v231 = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v231 = sub_100140FF4();
  sub_100035D04(&qword_10033B360, &qword_100271F28);
  sub_100035D04(&qword_10033B368, &qword_100271F30);
  sub_10000E244(&qword_10033B370, &qword_10033B360, &qword_100271F28);
  v93 = v170;
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B378, &qword_100271F38);
  sub_10000E244(&qword_10033B380, &qword_10033B2C8, &qword_100271E50);
  v94 = v173;
  v95 = v172;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033B388, &qword_10033B2C0, &qword_100271E48);
  v96 = v223;
  v97 = Publisher.eraseToAnyPublisher()();
  (*(v218 + 8))(v94, v96);
  (*(v171 + 8))(v93, v95);
  v231 = v97;
  v98 = swift_allocObject();
  swift_weakInit();
  v99 = swift_allocObject();
  *(v99 + 16) = sub_1000513A0;
  *(v99 + 24) = v98;
  sub_100035D04(&qword_10033B390, &unk_100271F40);
  sub_10000E244(&qword_10033B398, &qword_10033B390, &unk_100271F40);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v231 = sub_100140E18();
  v223 = sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  v100 = type metadata accessor for HandoffSession();
  v101 = sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0);
  v102 = v209;
  v218 = v100;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_10033B3A0, &qword_100271F50);
  sub_10000E244(&qword_10033B3A8, &qword_10034C660, &qword_100278DD0);
  v103 = v174;
  v104 = v219;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033B3B0, &qword_10033B2B0, &unk_100271E30);
  v105 = v217;
  v106 = Publisher.eraseToAnyPublisher()();
  (*(v175 + 8))(v103, v105);
  v217 = *(v224 + 8);
  v224 += 8;
  (v217)(v102, v104);
  v231 = v106;
  sub_100035D04(&qword_10033B3B8, &qword_100271F58);
  type metadata accessor for SessionHistory(0);
  sub_10000E244(&qword_10033B3C0, &qword_10033B3B8, &qword_100271F58);
  v107 = v176;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033B3C8, &qword_10033B2B8, &qword_100271E40);
  v108 = v216;
  Publisher<>.sink(receiveValue:)();

  (*(v177 + 8))(v107, v108);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v216 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher;
  v230 = *(v229 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  v231 = 0;
  v232 = 0;

  sub_100035D04(&qword_10033B3D0, &qword_100271F60);
  v109 = v178;
  v222 = v101;
  Publisher.scan<A>(_:_:)();
  sub_10000E244(&qword_10033B3D8, &qword_10033B298, &qword_100271E18);
  v110 = v180;
  v111 = Publisher.eraseToAnyPublisher()();

  (*(v179 + 8))(v109, v110);
  v231 = v111;
  sub_100035D04(&qword_10033B3E0, &qword_100271F68);
  sub_10000E244(&qword_10033B3E8, &qword_10033B3E0, &qword_100271F68);
  Publisher.compactMap<A>(_:)();

  v112 = v186;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(integerLiteral:)();
  v113 = v187;
  v114 = v188;
  (*(v187 + 56))(v188, 1, 1, v215);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v115 = qword_10038B5B8;
  v231 = qword_10038B5B8;
  v116 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v117 = v189;
  (*(*(v116 - 8) + 56))(v189, 1, 1, v116);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v180 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10000E244(&qword_10033B3F0, &qword_10033B2A0, &qword_100271E20);
  sub_1000513CC();
  v118 = v115;
  v119 = v183;
  v120 = v182;
  v121 = v214;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000097E8(v117, &qword_10034C680, &qword_100270390);

  sub_1000097E8(v114, &qword_10033B290, &qword_100271E10);
  (*(v113 + 8))(v112, v215);
  (*(v181 + 8))(v121, v120);
  swift_allocObject();
  v122 = v227;
  swift_weakInit();
  sub_10000E244(&qword_10033B3F8, &qword_10033B2A8, &qword_100271E28);
  v123 = v185;
  Publisher<>.sink(receiveValue:)();

  (*(v184 + 8))(v119, v123);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v124 = *(sub_10001B4E0() + 48);

  v231 = *(v124 + 32);

  sub_100035D04(&qword_10033B400, &qword_100271F70);
  sub_10000E244(&qword_10033B408, &qword_10033B400, &qword_100271F70);
  v125 = Publisher.eraseToAnyPublisher()();

  v231 = v125;
  sub_100035D04(&qword_10033B410, &qword_100271F78);
  sub_100035D04(&qword_10033B418, &qword_100271F80);
  sub_10000E244(&qword_10033B420, &qword_10033B410, &qword_100271F78);
  v126 = v190;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033B428, &qword_10033B280, &qword_100271DF8);
  v127 = v192;
  v128 = Publisher.eraseToAnyPublisher()();

  (*(v191 + 8))(v126, v127);
  v231 = v128;
  sub_100035D04(&qword_10033B430, &qword_100271F88);
  type metadata accessor for TransferRecord();
  sub_10000E244(&qword_10033B438, &qword_10033B430, &qword_100271F88);
  v129 = v193;
  Publisher.map<A>(_:)();

  v130 = swift_allocObject();
  *(v130 + 16) = sub_10005143C;
  *(v130 + 24) = v122;
  v189 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033B440, &qword_10033B288, &unk_100271E00);
  swift_retain_n();
  v131 = v211;
  v132 = v210;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B448, &qword_10033B278, &qword_100271DF0);
  v133 = v213;
  v134 = Publisher.eraseToAnyPublisher()();

  (*(v212 + 1))(v131, v133);
  (*(v194 + 8))(v129, v132);
  v231 = v134;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033B450, &qword_100271F90);
  v188 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033B458, &qword_10033B450, &qword_100271F90);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v231 = *(v229 + v216);

  v135 = v209;
  Publisher.compactMap<A>(_:)();

  v211 = sub_100035D04(&qword_10033B460, &qword_100271F98);
  v136 = v195;
  v137 = v219;
  Publishers.CompactMap.map<A>(_:)();
  (v217)(v135, v137);
  v210 = sub_10000E244(&qword_10033B468, &qword_10033B268, &qword_100271DE0);
  v215 = sub_10000E244(&qword_10033B470, &qword_10033B460, &qword_100271F98);
  v138 = v196;
  v139 = v220;
  Publisher<>.switchToLatest()();
  v140 = *(v225 + 8);
  v225 += 8;
  v214 = v140;
  (v140)(v136, v139);
  swift_allocObject();
  swift_weakInit();
  v213 = sub_10000E244(&qword_10033B478, &qword_10033B270, &qword_100271DE8);
  v141 = v221;
  Publisher<>.sink(receiveValue:)();

  v142 = *(v226 + 8);
  v226 += 8;
  v212 = v142;
  v142(v138, v141);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v143 = v216;
  v231 = *(v229 + v216);

  Publisher.compactMap<A>(_:)();

  Publishers.CompactMap.map<A>(_:)();
  v144 = v217;
  (v217)(v135, v137);
  v145 = v220;
  Publisher<>.switchToLatest()();
  (v214)(v136, v145);
  swift_allocObject();
  swift_weakInit();
  v146 = v221;
  Publisher<>.sink(receiveValue:)();

  v212(v138, v146);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v231 = *(v229 + v143);

  Publisher.compactMap<A>(_:)();

  v147 = v219;
  Publishers.CompactMap.map<A>(_:)();
  v144(v135, v147);
  v148 = v220;
  Publisher<>.switchToLatest()();
  (v214)(v136, v148);
  swift_allocObject();
  swift_weakInit();
  v149 = v221;
  Publisher<>.sink(receiveValue:)();

  v212(v138, v149);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v231 = *(v229 + v216);

  Publisher.compactMap<A>(_:)();

  Publishers.CompactMap.map<A>(_:)();
  (v217)(v135, v147);
  Publisher<>.switchToLatest()();
  (v214)(v136, v148);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  v212(v138, v149);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v231 = sub_1001410D0();
  sub_100035D04(&qword_10033B480, &qword_100271FA0);
  type metadata accessor for HandoffEvent();
  sub_10000E244(&qword_10033B488, &qword_10033B480, &qword_100271FA0);
  v150 = v197;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B490, &qword_10033B258, &qword_100271DD0);
  v151 = v200;
  v152 = v199;
  Publisher.filter(_:)();
  (*(v198 + 8))(v150, v152);
  sub_100035D04(&qword_10033B498, &qword_100271FA8);
  sub_10000E244(&qword_10033B4A0, &qword_10033B260, &qword_100271DD8);
  v153 = v203;
  v154 = v202;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033B4A8, &qword_10033B250, &qword_100271DC8);
  v155 = v205;
  v156 = Publisher.eraseToAnyPublisher()();
  (*(v204 + 8))(v153, v155);
  (*(v201 + 8))(v151, v154);
  v231 = v156;
  swift_allocObject();
  v157 = v227;
  swift_weakInit();
  sub_100035D04(&qword_10033B4B0, &qword_100271FB0);
  sub_10000E244(&qword_10033B4B8, &qword_10033B4B0, &qword_100271FB0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1001411AC();
  v158 = sub_1000DD040();

  v231 = v158;
  sub_100035D04(&qword_10033B4C0, &qword_100271FB8);
  sub_100035D04(&qword_10033B4C8, &unk_100271FC0);
  sub_10000E244(&qword_10033B4D0, &qword_10033B4C0, &qword_100271FB8);
  v159 = v206;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();

  sub_10000E244(&qword_10033B4D8, &qword_10033B248, &qword_100271DC0);
  v160 = v208;
  Publisher<>.sink(receiveValue:)();

  (*(v207 + 8))(v159, v160);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v157;
}

unint64_t sub_1000513CC()
{
  result = qword_10034B420;
  if (!qword_10034B420)
  {
    sub_100003118(255, &qword_100339320, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B420);
  }

  return result;
}

uint64_t sub_100051444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v8 = *a1;
  v6 = v8;
  v4(&v8);
  *a2 = v6;
}

uint64_t sub_1000515C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100051608(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

_OWORD *sub_1000516B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100051718(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(*(active - 8) + 40))(a2, a1, active);
  return a2;
}

uint64_t sub_10005177C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000517E4()
{
  sub_100051900(319, &qword_10033B680);
  if (v0 <= 0x3F)
  {
    sub_100051898();
    if (v1 <= 0x3F)
    {
      sub_100051900(319, &unk_10033B690);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100051898()
{
  if (!qword_10033B688)
  {
    type metadata accessor for SessionEvent();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10033B688);
    }
  }
}

void sub_100051900(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_100051974()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033B6C0);
  sub_100003078(v0, qword_10033B6C0);
  return Logger.init(subsystem:category:)();
}

void sub_100051A18(int a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  if (a1 != 2)
  {
    if (a1 != 1)
    {
      if (a1)
      {
        if (qword_100338E58 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100003078(v17, qword_10033B6C0);
        oslog = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(oslog, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 67109376;
          *(v19 + 4) = a1;
          *(v19 + 8) = 2048;
          *(v19 + 10) = a2;
          _os_log_impl(&_mh_execute_header, oslog, v18, "### Unknown XPC publisher action: %u, token=%llu", v19, 0x12u);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_100338E58 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_100003078(v4, qword_10033B6C0);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 134217984;
          *(v7 + 4) = a2;
          _os_log_impl(&_mh_execute_header, v5, v6, "Handling ADD action: token=%llu", v7, 0xCu);
        }

        if (_CFXPCCreateCFObjectFromXPCObject())
        {
          sub_100035D04(&qword_10033B7D0, &unk_100272100);
          if (swift_dynamicCast())
          {
            v8 = v21;
          }

          else
          {
            v8 = 0;
          }

          v9 = type metadata accessor for XPCSubscriber();
          v10 = *(v9 + 48);
          v11 = *(v9 + 52);
          swift_allocObject();

          v12 = sub_10014F7C8(a2, v8);

          sub_10005D280(v12);

          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      return;
    }

    if (qword_100338E58 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003078(v13, qword_10033B6C0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v14, v15, "Handling REMOVE action: token=%llu", v16, 0xCu);
    }

    sub_10005D46C(a2);
  }

  swift_unknownObjectRelease();
}

void sub_100051DFC()
{
  if (qword_100338E58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10033B6C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activate", v4, 2u);
  }

  *(v0 + 48) = 1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Already activated xpc event publisher", v6, 2u);
  }
}

void sub_100051F6C(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_100338E58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10033B6C0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134218498;
    v43 = a1;
    v44 = v11;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2080;
    v12 = 1702195828;
    if ((a2 & 1) == 0)
    {
      v12 = 0x65736C6166;
    }

    v13 = 0xE500000000000000;
    if (a2)
    {
      v13 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v14 = 7104878;
    }

    else
    {
      v14 = v12;
    }

    if (a2 == 2)
    {
      v15 = 0xE300000000000000;
    }

    else
    {
      v15 = v13;
    }

    v16 = sub_100017494(v14, v15, &v44);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    if (a3)
    {
      v17 = Dictionary.description.getter();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = sub_100017494(v17, v19, &v44);

    *(v10 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Firing for %llu, keepAlive=%s, %s", v10, 0x20u);
    swift_arrayDestroy();

    a1 = v43;
  }

  else
  {
  }

  if (a2 == 2 || (v21 = *(v3 + 56), sub_100052528(a2 & 1, a1), (a2 & 1) != 0))
  {
    sub_1000526F0(a3);
    v22 = *(v3 + 56);
    v23 = xpc_event_publisher_fire();

    v24 = Logger.logObject.getter();
    if (v23)
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v44 = v27;
        *v26 = 134218498;
        *(v26 + 4) = a1;
        *(v26 + 12) = 1024;
        *(v26 + 14) = v23;
        *(v26 + 18) = 2080;
        if (a3)
        {
          v28 = Dictionary.description.getter();
          v30 = v29;
        }

        else
        {
          v28 = 7104878;
          v30 = 0xE300000000000000;
        }

        v36 = sub_100017494(v28, v30, &v44);

        *(v26 + 20) = v36;
        v37 = "### Fire failed: token=%llu, err=%d, payload=%s";
        v38 = v25;
        v39 = v24;
        v40 = v26;
        v41 = 28;
LABEL_35:
        _os_log_impl(&_mh_execute_header, v39, v38, v37, v40, v41);
        sub_10000903C(v27);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v31))
      {
        v32 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v44 = v27;
        *v32 = 134218242;
        *(v32 + 4) = a1;
        *(v32 + 12) = 2080;
        if (a3)
        {
          v33 = Dictionary.description.getter();
          v35 = v34;
        }

        else
        {
          v33 = 7104878;
          v35 = 0xE300000000000000;
        }

        v42 = sub_100017494(v33, v35, &v44);

        *(v32 + 14) = v42;
        v37 = "Fired: token=%llu payload=%s";
        v38 = v31;
        v39 = v24;
        v40 = v32;
        v41 = 22;
        goto LABEL_35;
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100052418()
{
  v1 = *(v0 + 24);

  sub_1000268AC(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100052484()
{
  if (xpc_strerror())
  {
    return String.init(cString:)();
  }

  _StringGuts.grow(_:)(21);

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return 0xD000000000000013;
}

void sub_100052528(char a1, uint64_t a2)
{
  if (xpc_event_publisher_set_subscriber_keepalive())
  {
    if (qword_100338E58 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_10033B6C0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = a2;
      *(v6 + 12) = 1024;
      *(v6 + 14) = a1 & 1;
      v7 = "### XPC publisher state change failed: token=%llu, keepAlive=%{BOOL}d";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 0x12u);
    }
  }

  else
  {
    if (qword_100338E58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_10033B6C0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = a2;
      *(v6 + 12) = 1024;
      *(v6 + 14) = a1 & 1;
      v7 = "XPC publisher state changed: token=%llu, keepAlive=%{BOOL}d";
      goto LABEL_10;
    }
  }
}

uint64_t sub_1000526F0(uint64_t result)
{
  if (result)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v2 = _CFXPCCreateXPCObjectFromCFObject();

    result = v2;
    if (!v2)
    {
      if (qword_100338E58 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003078(v3, qword_10033B6C0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "### Failed to convert payload to xpc_object_t", v6, 2u);
      }

      return 0;
    }
  }

  return result;
}

void sub_10005280C(int a1)
{
  if (qword_100338E58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B6C0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 67109378;
    *(v4 + 4) = a1;
    *(v4 + 8) = 2080;
    v6 = sub_100052484();
    v8 = sub_100017494(v6, v7, &v10);

    *(v4 + 10) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "### Lockscreen XPC publisher error: (%d) %s", v4, 0x12u);
    sub_10000903C(v5);
  }
}

uint64_t sub_100052978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000529D8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = [a1 UUID];
LABEL_5:
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = 0;
    goto LABEL_6;
  }

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 activeConversationForCall:a1];

  if (v7)
  {
    v4 = [v7 UUID];

    goto LABEL_5;
  }

  v8 = 1;
LABEL_6:
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, v8, 1, v9);
}

uint64_t sub_100052AF8(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 1819042147;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v10, "conversation(");
  HIWORD(v10[1]) = -4864;
  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v10[0];
}

uint64_t sub_100052BE4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033B7D8);
  sub_100003078(v0, qword_10033B7D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100052C64()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

id sub_100052CD0()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = objc_allocWithZone(NSUserDefaults);
    v4 = String._bridgeToObjectiveC()();
    v2 = [v3 initWithSuiteName:v4];

    v5 = *(v0 + 24);
    *(v0 + 24) = v2;
    v6 = v2;
    sub_10001DAC4(v5);
  }

  sub_100056F7C(v1);
  return v2;
}

void *sub_100052D88(uint64_t a1)
{
  v2 = v1;
  v1[3] = 1;
  v1[4] = [objc_allocWithZone(NPSManager) init];
  sub_100035D04(&qword_10033BA50, &qword_1002722D0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = _swiftEmptyDictionarySingleton;
  v1[5] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = _swiftEmptyDictionarySingleton;
  v1[6] = v5;
  v1[7] = &_swiftEmptySetSingleton;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033B7D8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  v2[2] = a1;
  return v2;
}

uint64_t sub_100052EF0()
{
  v1 = v0;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B7D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 16);

  sub_10001DAC4(*(v1 + 24));

  v7 = *(v1 + 40);

  v8 = *(v1 + 48);

  v9 = *(v1 + 56);

  return v1;
}

uint64_t sub_100053000()
{
  sub_100052EF0();

  return swift_deallocClassInstance();
}

void sub_100053058()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033BA58, &qword_1002722D8);
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  __chkstk_darwin(v2);
  v75 = v65 - v4;
  v5 = sub_100035D04(&qword_10033BA60, &qword_1002722E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v74 = v65 - v7;
  v8 = sub_100035D04(&qword_10033BA68, &qword_1002722E8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v65 - v11;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10033B7D8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v80 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v80);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v16, 0xCu);
    sub_10000903C(v17);
  }

  v18 = sub_100052CD0();
  if (v18)
  {
    v19 = v18;
    v78 = 0x8000000100298A20;
    v20 = sub_1000568DC(v18, 0xD000000000000018, 0x8000000100298A20);
    if (v20)
    {
      v21 = v1[5];
      v22 = *(v21 + 24);
      *(v21 + 24) = v20;

      sub_10005E7E8();
      v80 = *(v21 + 24);

      CurrentValueSubject.send(_:)();
    }

    v65[4] = v5;
    v66 = v12;
    v67 = v9;
    v68 = v8;
    v76 = v19;
    v79 = 0x8000000100298A40;
    v23 = sub_1000568DC(v19, 0xD000000000000014, 0x8000000100298A40);
    if (v23)
    {
      v24 = v1[6];
      v25 = *(v24 + 24);
      *(v24 + 24) = v23;

      sub_10005E7E8();
      v80 = *(v24 + 24);

      CurrentValueSubject.send(_:)();
    }

    v77 = v1[2];
    v26 = v77[2];

    v80 = sub_10005E744();
    v27 = sub_100035D04(&qword_10033BA70, &qword_1002722F0);
    v70 = &protocol conformance descriptor for CurrentValueSubject<A, B>;
    v28 = sub_10000E244(&qword_10033BA78, &qword_10033BA70, &qword_1002722F0);
    v29 = Publisher.eraseToAnyPublisher()();

    KeyPath = swift_getKeyPath();
    v80 = v29;
    v31 = swift_allocObject();
    v69 = 0xD000000000000018;
    v32 = v78;
    v31[2] = 0xD000000000000018;
    v31[3] = v32;
    v31[4] = v1;
    v31[5] = KeyPath;

    v33 = sub_100035D04(&qword_10033BA80, &qword_100272320);
    v71 = &protocol conformance descriptor for AnyPublisher<A, B>;
    v34 = sub_10000E244(&qword_10033BA88, &qword_10033BA80, &qword_100272320);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v35 = v77[3];

    v80 = sub_10005E744();
    v65[3] = v27;
    v65[2] = v28;
    v36 = Publisher.eraseToAnyPublisher()();

    v37 = swift_getKeyPath();
    v80 = v36;
    v38 = swift_allocObject();
    v38[2] = 0xD000000000000014;
    v38[3] = v79;
    v38[4] = v1;
    v38[5] = v37;

    v65[1] = v33;
    v65[0] = v34;
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v39 = v1[5];

    v80 = sub_10005E7E8();
    sub_100035D04(&qword_10033BA90, &unk_100272350);
    sub_10000E244(&qword_10033BA98, &qword_10033BA90, &unk_100272350);
    v40 = Publisher.eraseToAnyPublisher()();

    v41 = v76;
    sub_100054BCC(v40, v76, 0xD000000000000029, 0x8000000100298A60, v69, v78);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v42 = v1[6];

    v80 = sub_10005E7E8();
    v43 = Publisher.eraseToAnyPublisher()();

    v44 = v77;
    sub_100054BCC(v43, v41, 0xD000000000000029, 0x8000000100298A60, 0xD000000000000014, v79);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v80 = *(v44[4] + 32);
    sub_100035D04(&qword_100339828, &unk_100270300);
    sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
    v80 = Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_100339838, &qword_100271F10);
    sub_100035D04(&qword_10033BAA0, &unk_100274880);
    sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
    v45 = v75;
    Publisher.map<A>(_:)();

    sub_100035D04(&qword_10033BAA8, &qword_100272360);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_10026F050;
    v47 = v44[4];
    __chkstk_darwin(v46);
    v65[-4] = type metadata accessor for HandoffDevice();
    v65[-3] = type metadata accessor for UUID();
    v64 = sub_100056C7C(&qword_100339848, 255, &type metadata accessor for UUID);
    swift_getKeyPath();
    v48 = v47 + qword_100346AF8;

    os_unfair_lock_lock(v48);
    v80 = *(v48 + 8);

    swift_getAtKeyPath();

    v49 = v81;
    os_unfair_lock_unlock(v48);

    v50 = *(v49 + 16);
    if (!v50)
    {

      v51 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    v51 = sub_100009194(*(v49 + 16), 0);
    v52 = sub_100009A04(&v80, v51 + 4, v50, v49);
    sub_100004F98();
    if (v52 == v50)
    {

LABEL_19:
      *(v46 + 32) = v51;
      sub_10000E244(&qword_10033BAB0, &qword_10033BA58, &qword_1002722D8);
      v56 = v73;
      Publisher.prepend(_:)();

      (*(v72 + 8))(v45, v56);
      v57 = v44[2];

      v80 = sub_10005E744();
      v58 = Publisher.eraseToAnyPublisher()();

      v80 = v58;
      v59 = v44[3];

      v81 = sub_10005E744();
      v60 = Publisher.eraseToAnyPublisher()();

      v81 = v60;
      sub_10000E244(&qword_10033BAB8, &qword_10033BA60, &qword_1002722E0);
      v64 = v65[0];
      v61 = v66;
      Publishers.CombineLatest3.init(_:_:_:)();
      v62 = swift_allocObject();
      *(v62 + 16) = sub_100056C40;
      *(v62 + 24) = v1;
      sub_10000E244(&qword_10033BAC0, &qword_10033BA68, &qword_1002722E8);

      v63 = v68;
      Publisher<>.sink(receiveValue:)();

      (*(v67 + 8))(v61, v63);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return;
    }

    __break(1u);
  }

  else
  {
    v79 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v79, v53, "### No defaults?", v54, 2u);
    }

    v55 = v79;
  }
}

uint64_t sub_100053E1C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  v3 = *(v2 + 24);
  *(v2 + 24) = *a1;

  sub_10005E7E8();
  v5 = *(v2 + 24);

  CurrentValueSubject.send(_:)();
}

uint64_t sub_100053EAC(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 48);
  v3 = *(v2 + 24);
  *(v2 + 24) = *a1;

  sub_10005E7E8();
  v5 = *(v2 + 24);

  CurrentValueSubject.send(_:)();
}

uint64_t sub_100053F3C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  type metadata accessor for HandoffDevice();
  type metadata accessor for UUID();
  sub_100056C7C(&qword_100339848, 255, &type metadata accessor for UUID);
  swift_getKeyPath();
  v4 = v3 + qword_100346AF8;
  os_unfair_lock_lock(v4);
  v9 = *(v4 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v4);

  v5 = *(v10 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_100009194(*(v10 + 16), 0);
  v7 = sub_100009A04(&v9, v6 + 4, v5, v10);
  result = sub_100004F98();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = _swiftEmptyArrayStorage;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_100054088(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = result;
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    sub_1000556F8(0xD000000000000018, 0x8000000100298A20, KeyPath, v6, a2, a4);
  }

  if (a3)
  {
    v9 = swift_getKeyPath();
    sub_100056068(0xD000000000000014, 0x8000000100298A40, v9, v6, a3, a4);
  }

  return result;
}

void sub_100054184()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = *(v23 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);

  if (v0)
  {
    v20 = v0 >> 62;
    if (v0 >> 62)
    {
LABEL_63:
      v22 = v0 & 0xFFFFFFFFFFFFFF8;
      v1 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = v0 & 0xFFFFFFFFFFFFFF8;
      v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = 0;
    v3 = v0 & 0xC000000000000001;
    v21 = v0 + 32;
    while (v1 != v2)
    {
      if (v3)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v22 + 16))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v4 = *(v0 + 8 * v2 + 32);
      }

      v5 = v4;
      v6 = [v4 type];

      if (v6 == 4)
      {
        v1 = v2;
        break;
      }

      if (__OFADD__(v2++, 1))
      {
        goto LABEL_58;
      }
    }

    if (v20)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v1 == v8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v8 = *(v22 + 16);
      if (v1 == v8)
      {
        goto LABEL_42;
      }
    }

    while (2)
    {
      if (v3)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v1 >= *(v22 + 16))
        {
          goto LABEL_60;
        }

        v10 = *(v21 + 8 * v1);
      }

      v11 = v10;
      v12 = [v10 identifier];

      if (!v12)
      {
        if (!v20)
        {
          v13 = *(v22 + 16);
          if (v1 != v13)
          {
            goto LABEL_34;
          }

          goto LABEL_62;
        }

        if (v1 == _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_61;
        }

        v13 = _CocoaArrayWrapper.endIndex.getter();
        while (1)
        {
LABEL_34:
          v9 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          if (v9 == v13)
          {
            break;
          }

          if (v3)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_55;
            }

            if (v9 >= *(v22 + 16))
            {
              goto LABEL_56;
            }

            v14 = *(v21 + 8 * v9);
          }

          v15 = v14;
          v16 = [v14 type];

          ++v1;
          if (v16 == 4)
          {
            goto LABEL_21;
          }
        }

        v9 = v13;
LABEL_21:
        v1 = v9;
        if (v9 != v8)
        {
          continue;
        }

        v1 = v8;
        if (!v20)
        {
LABEL_43:
          if (v1 != *(v22 + 16))
          {
            goto LABEL_44;
          }

LABEL_52:

          return;
        }

LABEL_51:
        if (v1 != _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_44:
          if (!v3)
          {
            if ((v1 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v1 < *(v22 + 16))
            {
              v17 = *(v21 + 8 * v1);
              goto LABEL_48;
            }

            __break(1u);
LABEL_67:

            __break(1u);
            return;
          }

          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:
          v1 = v17;
          v18 = [v17 identifier];
          if (v18)
          {
            v19 = v18;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            return;
          }

          goto LABEL_67;
        }

        goto LABEL_52;
      }

      break;
    }

LABEL_42:
    if (!v20)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }
}

uint64_t sub_100054538()
{
  v1 = v0;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B7D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  swift_beginAccess();
  v7 = *(v1 + 56);
  *(v1 + 56) = &_swiftEmptySetSingleton;
}

uint64_t *sub_1000546A8(uint64_t *result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (*result)
  {
    if (qword_100338E60 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v8 = type metadata accessor for Logger();
      sub_100003078(v8, qword_10033B7D8);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v49[0] = swift_slowAlloc();
        *v11 = 136315394;
        *(v11 + 4) = sub_100017494(a2, a3, v49);
        *(v11 + 12) = 2080;
        v12 = Set.description.getter();
        v14 = sub_100017494(v12, v13, v49);

        *(v11 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v9, v10, "Pruning %s with validKeySet: %s", v11, 0x16u);
        swift_arrayDestroy();
      }

      v50 = a4;

      v15 = swift_readAtKeyPath();
      v17 = *v16;

      v15(v49, 0);
      v44 = a4;

      a3 = v17 + 64;
      v18 = 1 << *(v17 + 32);
      v19 = v18 < 64 ? ~(-1 << v18) : -1;
      a2 = v19 & *(v17 + 64);
      v20 = (v18 + 63) >> 6;
      v48 = v4 + 56;
      swift_bridgeObjectRetain_n();
      v21 = 0;
      v47 = v17;
      v45 = v4;
      v46 = v17;
      if (a2)
      {
        break;
      }

LABEL_12:
      while (1)
      {
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v24 >= v20)
        {

          v49[0] = v44;
          v50 = v47;

          swift_setAtReferenceWritableKeyPath();
        }

        a2 = *(a3 + 8 * v24);
        ++v21;
        if (a2)
        {
          v21 = v24;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_36:
      swift_once();
    }

    while (1)
    {
LABEL_16:
      v25 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v26 = (*(v17 + 48) + ((v21 << 10) | (16 * v25)));
      v27 = *v26;
      v28 = v26[1];
      if (*(v4 + 16))
      {
        v29 = *(v4 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v30 = Hasher._finalize()();
        v31 = -1 << *(v4 + 32);
        v32 = v30 & ~v31;
        if ((*(v48 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          a4 = ~v31;
          do
          {
            v33 = (*(v4 + 48) + 16 * v32);
            v34 = *v33 == v27 && v33[1] == v28;
            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_11;
            }

            v32 = (v32 + 1) & a4;
          }

          while (((*(v48 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
        }
      }

      else
      {
      }

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        a4 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v49[0] = v37;
        *a4 = 136315138;
        *(a4 + 4) = sub_100017494(v27, v28, v49);
        _os_log_impl(&_mh_execute_header, v35, v36, "Removing key: %s", a4, 0xCu);
        sub_10000903C(v37);
        v4 = v45;
      }

      v22 = sub_100004B58(v27, v28);
      v17 = v46;
      if (v23)
      {
        v38 = v22;
        v39 = v47;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49[0] = v47;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100089EBC();
          v39 = v49[0];
        }

        v41 = v38;
        v42 = 16 * v38;
        v43 = *(*(v39 + 48) + v42 + 8);

        a4 = *(*(v39 + 56) + v42 + 8);
        v47 = v39;
        sub_10004BF8C(v41, v39);

        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
LABEL_11:

        if (!a2)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100054BCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v87 = a3;
  v89 = a4;
  v90 = a6;
  v92 = a5;
  v88 = a2;
  v7 = sub_100035D04(&qword_10033BAC8, &qword_100272440);
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  __chkstk_darwin(v7);
  v83 = v71 - v9;
  v10 = type metadata accessor for Logger();
  v82 = *(v10 - 8);
  v11 = *(v82 + 64);
  __chkstk_darwin(v10);
  v96 = v12;
  v97 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100035D04(&qword_10033BAD0, &unk_100272448);
  v78 = *(v79 - 8);
  v13 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = v71 - v14;
  v15 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v71 - v17;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100035D04(&qword_10033BAD8, &qword_100272458);
  v75 = *(v76 - 8);
  v24 = *(v75 + 64);
  __chkstk_darwin(v76);
  v91 = v71 - v25;
  v26 = sub_100035D04(&qword_10033BAE0, &qword_100272460);
  v80 = *(v26 - 8);
  v81 = v26;
  v27 = *(v80 + 64);
  __chkstk_darwin(v26);
  v95 = v71 - v28;
  v100 = a1;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v29 = qword_10038B5B8;
  v98 = qword_10038B5B8;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  v31 = v29;
  v32 = sub_100035D04(&qword_10033BAE8, &qword_100272468);
  sub_100035CB8();
  v33 = sub_10000E244(&qword_10033BAF0, &qword_10033BAE8, &qword_100272468);
  sub_100056C7C(&qword_10034B420, 255, sub_100035CB8);
  v93 = v33;
  v94 = v32;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100056CC4(v18);

  (*(v20 + 8))(v23, v19);
  v98 = 544695630;
  v99 = 0xE400000000000000;
  v34._countAndFlagsBits = v92;
  v34._object = v90;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 8250;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  v36 = v99;
  v72 = v98;
  if (qword_100338E60 != -1)
  {
    swift_once();
  }

  v37 = sub_100003078(v10, qword_10033B7D8);
  v74 = v37;
  v38 = static os_log_type_t.info.getter();
  v39 = v82;
  v73 = *(v82 + 16);
  v40 = v97;
  v71[0] = v10;
  v73(v97, v37, v10);
  v41 = *(v39 + 80);
  v42 = (v41 + 64) & ~v41;
  v43 = v42 + v96;
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v72;
  v44[5] = v36;
  v44[6] = 0;
  v44[7] = 0xE000000000000000;
  v82 = *(v39 + 32);
  (v82)(v44 + v42, v40, v10);
  *(v44 + v43) = v38;
  v72 = sub_100035D04(&qword_10033BAF8, &unk_100272470);
  sub_10000E244(&qword_10033BB00, &qword_10033BAD8, &qword_100272458);
  v45 = v77;
  v46 = v76;
  v47 = v91;
  Publisher.map<A>(_:)();

  v71[1] = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033BB08, &qword_10033BAD0, &unk_100272448);
  v48 = v79;
  v49 = Publisher.eraseToAnyPublisher()();
  (*(v78 + 8))(v45, v48);
  (*(v75 + 8))(v47, v46);
  v98 = v49;
  sub_100056DE8();
  Publisher<>.removeDuplicates()();

  LOBYTE(v49) = static os_log_type_t.info.getter();
  v50 = v97;
  v51 = v71[0];
  v73(v97, v74, v71[0]);
  v52 = (v41 + 16) & ~v41;
  v53 = v52 + v96;
  v54 = (v52 + v96) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (v82)(v55 + v52, v50, v51);
  *(v55 + v53) = v49;
  v56 = v55 + v54;
  *(v56 + 8) = 0xD000000000000010;
  *(v56 + 16) = 0x8000000100298A90;
  sub_10000E244(&qword_10033BB18, &qword_10033BAE0, &qword_100272460);
  v57 = v83;
  v58 = v81;
  v59 = v95;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033BB20, &qword_10033BAC8, &qword_100272440);
  v60 = v85;
  v61 = Publisher.eraseToAnyPublisher()();
  (*(v84 + 8))(v57, v60);
  (*(v80 + 8))(v59, v58);
  v98 = v61;
  v62 = *(v86 + 32);
  v63 = swift_allocObject();
  v65 = v88;
  v64 = v89;
  v66 = v92;
  v63[2] = v88;
  v63[3] = v66;
  v63[4] = v90;
  v63[5] = v62;
  v63[6] = v87;
  v63[7] = v64;
  v67 = v62;
  v68 = v65;

  v69 = Publisher<>.sink(receiveValue:)();

  return v69;
}

void sub_10005559C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();
  [a2 setValue:isa forKey:v11];

  v12 = String._bridgeToObjectiveC()();
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  sub_1001CB970(inited);
  swift_setDeallocating();
  sub_100056F28(inited + 32);
  v14 = Set._bridgeToObjectiveC()().super.isa;

  [a5 synchronizeUserDefaultsDomain:v12 keys:v14];
}

uint64_t sub_1000556F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v69 = a1;
  v74 = type metadata accessor for UUID();
  v11 = *(v74 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v74);
  v73 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a6;

  v70 = a3;
  v14 = swift_readAtKeyPath();
  v16 = *v15;
  swift_bridgeObjectRetain_n();
  v14(v85, 0);
  v71 = a6;

  v17 = v16[2];

  if (v17 < 0x1F5)
  {
    v23 = v16;
  }

  else
  {

    if (qword_100338E60 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003078(v19, qword_10033B7D8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = v17;
      *(v22 + 12) = 2048;
      *(v22 + 14) = 500;
      _os_log_impl(&_mh_execute_header, v20, v21, "### Cache has grown above size limit %ld/%ld: resetting", v22, 0x16u);
    }

    v23 = sub_10024D608(_swiftEmptyArrayStorage);
  }

  if (a4 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v68 = a2;
    a2 = 0;
    v83 = a4 & 0xC000000000000001;
    v77 = a4 + 32;
    v78 = a4 & 0xFFFFFFFFFFFFFF8;
    v72 = (v11 + 8);
    v79 = a5 + 56;
    *&v18 = 136315906;
    v67 = v18;
    v75 = a4;
    v76 = a5;
    v80 = i;
    while (v83)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = __OFADD__(a2++, 1);
      if (v25)
      {
        goto LABEL_62;
      }

LABEL_19:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v82 = sub_10000DF0C();
      v27 = v26;

      v84 = v27;
      if (v27)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v28 = v85[0];
        v29 = *(v85[0] + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
        if (v29)
        {
          v30 = 4 * ([v29 relationship] & 1);
        }

        else
        {
          LOBYTE(v30) = 0;
        }

        v31 = *&v28[OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities];
        if (!v31)
        {
          goto LABEL_39;
        }

        if (v31 >> 62)
        {
          if (v31 < 0)
          {
            v37 = *&v28[OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities];
          }

          v32 = _CocoaArrayWrapper.endIndex.getter();
          if (!v32)
          {
            goto LABEL_39;
          }

LABEL_26:
          if (v32 < 1)
          {
            goto LABEL_64;
          }

          v81 = v23;

          v33 = 0;
          do
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v34 = *(v31 + 8 * v33 + 32);
            }

            v35 = v34;
            ++v33;
            v36 = [v34 type];

            if (v36 == 9)
            {
              LOBYTE(v30) = v30 | 2;
            }
          }

          while (v32 != v33);

          a4 = v75;
          a5 = v76;
          v23 = v81;
          if ((v30 & 2) == 0)
          {
            goto LABEL_52;
          }

LABEL_40:
          if ((v30 & 4) != 0)
          {
            goto LABEL_52;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v38 = v85[0];
          if (!v85[0])
          {

            i = v80;
            goto LABEL_12;
          }

          v81 = v23;
          v39 = [v85[0] uniqueIdentifier];

          v40 = v73;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = UUID.uuidString.getter();
          v43 = v42;
          (*v72)(v40, v74);
          if (!*(a5 + 16))
          {

            i = v80;
            v23 = v81;
            goto LABEL_12;
          }

          v44 = *(a5 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v45 = Hasher._finalize()();
          v46 = -1 << *(a5 + 32);
          v47 = v45 & ~v46;
          if ((*(v79 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            v48 = ~v46;
            while (1)
            {
              v49 = (*(a5 + 48) + 16 * v47);
              v50 = *v49 == v41 && v49[1] == v43;
              if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v47 = (v47 + 1) & v48;
              if (((*(v79 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                goto LABEL_51;
              }
            }

            if (qword_100338E60 != -1)
            {
              swift_once();
            }

            v51 = type metadata accessor for Logger();
            sub_100003078(v51, qword_10033B7D8);
            v52 = v68;

            v53 = v84;

            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              HIDWORD(v65) = v55;
              v57 = v56;
              v66 = swift_slowAlloc();
              v85[0] = v66;
              *v57 = v67;
              *(v57 + 4) = sub_100017494(v69, v52, v85);
              *(v57 + 12) = 2080;
              v58 = sub_1000092A0();
              v60 = sub_100017494(v58, v59, v85);

              *(v57 + 14) = v60;
              *(v57 + 22) = 2080;
              *(v57 + 24) = sub_100017494(v41, v43, v85);
              *(v57 + 32) = 2080;
              v61 = v82;
              *(v57 + 34) = sub_100017494(v82, v84, v85);
              _os_log_impl(&_mh_execute_header, v54, BYTE4(v65), "Assigning to %s for %s: ID=%s, MR=%s", v57, 0x2Au);
              swift_arrayDestroy();

              v53 = v84;
            }

            else
            {

              v61 = v82;
            }

            v62 = v81;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85[0] = v62;
            sub_10004CE88(v61, v53, v41, v43, isUniquelyReferenced_nonNull_native);

            v23 = v85[0];
          }

          else
          {
LABEL_51:

            v23 = v81;
          }
        }

        else
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v32)
          {
            goto LABEL_26;
          }

LABEL_39:

          if ((v30 & 2) != 0)
          {
            goto LABEL_40;
          }

LABEL_52:
        }

        i = v80;
        goto LABEL_12;
      }

LABEL_12:
      if (a2 == i)
      {
        goto LABEL_66;
      }
    }

    if (a2 >= *(v78 + 16))
    {
      goto LABEL_63;
    }

    v11 = *(v77 + 8 * a2);

    v25 = __OFADD__(a2++, 1);
    if (!v25)
    {
      goto LABEL_19;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

LABEL_66:
  v85[0] = v71;
  v86 = v23;

  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_100056068(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;

  v11 = swift_readAtKeyPath();
  v13 = *v12;
  swift_bridgeObjectRetain_n();
  v11(v66, 0);
  v55 = a6;

  v14 = v13[2];

  if (v14 >= 0x1F5)
  {

    if (qword_100338E60 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10033B7D8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v14;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 500;
      _os_log_impl(&_mh_execute_header, v16, v17, "### Cache has grown above size limit %ld/%ld: resetting", v18, 0x16u);
    }

    v13 = sub_10024D608(_swiftEmptyArrayStorage);
  }

  if (a4 >> 62)
  {
    goto LABEL_64;
  }

  v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v56 = v13;
  v59 = v19;
  if (v19)
  {
    v53 = a1;
    v54 = a2;
    v20 = 0;
    v64 = a4 & 0xC000000000000001;
    v60 = a4 + 32;
    v61 = a4 & 0xFFFFFFFFFFFFFF8;
    v62 = a5 + 56;
    a2 = &unk_1002723B0;
    v57 = a4;
    v58 = a5;
    a1 = v19;
    while (1)
    {
      if (v64)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v21 = __OFADD__(v20++, 1);
        if (v21)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v20 >= *(v61 + 16))
        {
          goto LABEL_62;
        }

        v22 = *(v60 + 8 * v20);

        v21 = __OFADD__(v20++, 1);
        if (v21)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v19 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_9;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v13 = sub_10000DF0C();
      v24 = v23;

      if (v24)
      {
        break;
      }

LABEL_12:
      if (v20 == a1)
      {
        goto LABEL_60;
      }
    }

    v65 = v24;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = v66[0];
    v26 = *(v66[0] + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    if (v26)
    {
      v27 = 4 * ([v26 relationship] & 1);
    }

    else
    {
      LOBYTE(v27) = 0;
    }

    v28 = *(v25 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
    v63 = v13;
    if (!v28)
    {

LABEL_40:
      if ((v27 & 2) == 0 || (v27 & 4) != 0)
      {
      }

      else
      {
        sub_100054184();
        if (v33)
        {
          v34 = v33;
          if (*(a5 + 16) && (v35 = v32, v36 = *(a5 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v37 = Hasher._finalize()(), v38 = -1 << *(a5 + 32), v39 = v37 & ~v38, ((*(v62 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
          {
            v40 = ~v38;
            while (1)
            {
              v41 = (*(a5 + 48) + 16 * v39);
              v42 = *v41 == v35 && v34 == v41[1];
              if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v39 = (v39 + 1) & v40;
              if (((*(v62 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            if (qword_100338E60 != -1)
            {
              swift_once();
            }

            v43 = type metadata accessor for Logger();
            sub_100003078(v43, qword_10033B7D8);

            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v66[0] = v52;
              *v46 = 136315906;
              *(v46 + 4) = sub_100017494(v53, v54, v66);
              *(v46 + 12) = 2080;
              v47 = sub_1000092A0();
              v49 = sub_100017494(v47, v48, v66);

              *(v46 + 14) = v49;
              a4 = v57;
              *(v46 + 22) = 2080;
              *(v46 + 24) = sub_100017494(v35, v34, v66);
              *(v46 + 32) = 2080;
              v13 = v63;
              *(v46 + 34) = sub_100017494(v63, v65, v66);
              _os_log_impl(&_mh_execute_header, v44, v45, "Assigning to %s for %s: ID=%s, MR=%s", v46, 0x2Au);
              swift_arrayDestroy();

              a1 = v59;
            }

            else
            {

              v13 = v63;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v66[0] = v56;
            sub_10004CE88(v13, v65, v35, v34, isUniquelyReferenced_nonNull_native);

            v56 = v66[0];
            a2 = &unk_1002723B0;
            a5 = v58;
          }

          else
          {
LABEL_52:

            a2 = &unk_1002723B0;
          }
        }

        else
        {

          a2 = &unk_1002723B0;
        }
      }

      goto LABEL_12;
    }

    if (v28 >> 62)
    {
      a2 = _CocoaArrayWrapper.endIndex.getter();
      if (a2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      a2 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2)
      {
LABEL_27:
        if (a2 < 1)
        {
          goto LABEL_63;
        }

        v29 = 0;
        do
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v30 = *(v28 + 8 * v29 + 32);
          }

          v31 = v30;
          ++v29;
          v13 = [v30 type];

          if (v13 == 9)
          {
            LOBYTE(v27) = v27 | 2;
          }
        }

        while (a2 != v29);

        a4 = v57;
        a5 = v58;
        a1 = v59;
        goto LABEL_39;
      }
    }

LABEL_39:
    a2 = &unk_1002723B0;
    goto LABEL_40;
  }

LABEL_60:
  v66[0] = v55;
  v67 = v56;

  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_100056830(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_100056884(uint64_t a1, uint64_t a2)
{
  result = sub_100056C7C(&qword_10033BA48, a2, type metadata accessor for NanoPreferencesSyncServer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000568DC(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 valueForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10001766C(v21, v20);
    sub_100035D04(&qword_10033BAF8, &unk_100272470);
    if (swift_dynamicCast())
    {
      sub_10000903C(v21);
      return v19;
    }

    if (qword_100338E60 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_10033B7D8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100017494(a2, a3, v20);
      _os_log_impl(&_mh_execute_header, v15, v16, "### %s: Could not cast to dict", v17, 0xCu);
      sub_10000903C(v18);
    }

    sub_10000903C(v21);
  }

  else
  {
    if (qword_100338E60 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_10033B7D8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100017494(a2, a3, v21);
      _os_log_impl(&_mh_execute_header, v10, v11, "### %s: No existing value", v12, 0xCu);
      sub_10000903C(v13);
    }
  }

  return 0;
}

uint64_t sub_100056BF0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100056C48(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

uint64_t sub_100056C7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100056CC4(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10034C680, &qword_100270390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056D2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CC720(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

unint64_t sub_100056DE8()
{
  result = qword_10033BB10;
  if (!qword_10033BB10)
  {
    sub_100035D4C(&qword_10033BAF8, &unk_100272470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BB10);
  }

  return result;
}

uint64_t sub_100056E64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  *a2 = sub_1000AB340(*a1, v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_100056F18(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  sub_10005559C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

id sub_100056F7C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100056F90()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033BB28);
  sub_100003078(v0, qword_10033BB28);
  return Logger.init(subsystem:category:)();
}

void sub_100057010()
{
  if (qword_100338E68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10033BB28);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_100017494(0xD000000000000014, 0x8000000100298B50, &v13);
    *(v3 + 12) = 2080;
    v4 = *(v0 + 16);
    v5 = *(v4 + 24);

    CurrentValueSubject.value.getter();
    if (!v12)
    {
      v6 = *(v4 + 16);
      CurrentValueSubject.value.getter();
    }

    type metadata accessor for UUID();
    sub_1000575F8(&qword_100339848, 255, &type metadata accessor for UUID);
    v7 = Set.description.getter();
    v9 = v8;

    v10 = sub_100017494(v7, v9, &v13);

    *(v3 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s: %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100057298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

void sub_1000572EC(uint64_t a1, char a2)
{
  v5 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v17 = *(v2 + 16);
  if (a2)
  {
    (*(v10 + 16))(v14, a1, v9);
    v18 = *(v17 + 16);
    v19 = *(v18 + 24);

    CurrentValueSubject.value.getter();
    v20 = v28;
    if (v28)
    {
    }

    else
    {
      v24 = *(v18 + 16);
      CurrentValueSubject.value.getter();

      v20 = v29;
    }

    v29 = v20;
    sub_100063F34(v16, v14);
    (*(v10 + 8))(v16, v9);
  }

  else
  {
    v21 = *(v17 + 16);
    v22 = *(v21 + 24);

    CurrentValueSubject.value.getter();
    v23 = v28;
    if (v28)
    {
    }

    else
    {
      v25 = *(v21 + 16);
      CurrentValueSubject.value.getter();

      v23 = v29;
    }

    v29 = v23;
    sub_100067BF4(a1, v8);
    sub_100057640(v8);
  }

  v26 = v29;
  v27 = *(v17 + 16);

  sub_1001C0474(v26);

  sub_100057010();
}

uint64_t sub_100057544()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000575A0(uint64_t a1, uint64_t a2)
{
  result = sub_1000575F8(&qword_10033BCB8, a2, type metadata accessor for HandoffSuppressionManagerState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000575F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100057640(uint64_t a1)
{
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000576B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000576D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 368) = v3;
  return result;
}

uint64_t sub_100057770()
{
  v1 = *(v0 + 3);

  sub_100010708(*(v0 + 4), *(v0 + 5));
  v2 = *(v0 + 7);

  v3 = *(v0 + 9);

  v4 = OBJC_IVAR____TtC17proximitycontrold15GuestHostDevice_timestamp;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuestHostDevice()
{
  result = qword_10033BCE8;
  if (!qword_10033BCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057880()
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

uint64_t sub_100057930@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_100057940(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;

  v3 = sub_100058040(v5, type metadata accessor for GuestHostDevice, &qword_10033BD98, &unk_1002726D0, sub_1000588F8);
  sub_10000903C(v5);
  return v3;
}

unint64_t sub_1000579DC(uint64_t a1)
{
  result = sub_100057A04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100057A04()
{
  result = qword_10033BD90;
  if (!qword_10033BD90)
  {
    type metadata accessor for GuestHostDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BD90);
  }

  return result;
}

uint64_t sub_100057B10(void *a1)
{
  v47._countAndFlagsBits = &type metadata for HandoffActionContext;
  sub_100035D04(&qword_10033BE18, qword_100272750);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  v45 = v2;
  v46 = v3;
  sub_10000EBC0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (swift_isClassType())
  {
    v6 = DynamicType == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = a1[3];
    v8 = sub_10000EBC0(a1, v7);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8);
    v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    swift_unknownObjectRelease();
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v44 = v13;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v47);

    v2 = v45;
    v4 = v46;
  }

  v47._countAndFlagsBits = 60;
  v47._object = 0xE100000000000000;
  v15._countAndFlagsBits = v2;
  v15._object = v4;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 62;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);

  countAndFlagsBits = v47._countAndFlagsBits;
  object = v47._object;
  v19 = sub_10005843C(a1, sub_100058A84);
  v20 = v19[2];
  if (v20)
  {
    v35 = countAndFlagsBits;
    v36 = object;
    v47._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1000CDF20(0, v20, 0);
    v21 = v47._countAndFlagsBits;
    v34[1] = v19;
    v22 = v19 + 7;
    v37 = xmmword_1002725A0;
    do
    {
      v23 = *(v22 - 3);
      v24 = *(v22 - 2);
      v25 = *(v22 - 1);
      v26 = *v22;
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v27 = swift_allocObject();
      *(v27 + 16) = v37;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      *(v27 + 48) = v25;
      *(v27 + 56) = v26;
      v47._countAndFlagsBits = v21;
      v28 = v21[2];
      v29 = v21[3];

      if (v28 >= v29 >> 1)
      {
        sub_1000CDF20((v29 > 1), v28 + 1, 1);
        v21 = v47._countAndFlagsBits;
      }

      v21[2] = v28 + 1;
      v21[v28 + 4] = v27;
      v22 += 4;
      --v20;
    }

    while (v20);

    countAndFlagsBits = v35;
    object = v36;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  v47._countAndFlagsBits = countAndFlagsBits;
  v47._object = object;
  v48 = 0;
  v49 = v21;
  v50 = 0;
  v30 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v32 = v31;

  v42 = v30;
  v43 = v32;
  v40 = 10;
  v41 = 0xE100000000000000;
  v38 = 2314;
  v39 = 0xE200000000000000;
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  return v44;
}

uint64_t sub_100058040(void *a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v54._countAndFlagsBits = a2(0);
  sub_100035D04(a3, a4);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  v52 = v9;
  v53 = v10;
  sub_10000EBC0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (swift_isClassType())
  {
    v13 = DynamicType == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = a1[3];
    v15 = sub_10000EBC0(a1, v14);
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15);
    v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v19, v14);
    swift_unknownObjectRelease();
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v51 = v20;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v54);

    v9 = v52;
    v11 = v53;
  }

  v54._countAndFlagsBits = 60;
  v54._object = 0xE100000000000000;
  v22._countAndFlagsBits = v9;
  v22._object = v11;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 62;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);

  countAndFlagsBits = v54._countAndFlagsBits;
  object = v54._object;
  v26 = sub_10005843C(a1, a5);
  v27 = v26[2];
  if (v27)
  {
    v42 = countAndFlagsBits;
    v43 = object;
    v54._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1000CDF20(0, v27, 0);
    v28 = v54._countAndFlagsBits;
    v41[1] = v26;
    v29 = v26 + 7;
    v44 = xmmword_1002725A0;
    do
    {
      v30 = *(v29 - 3);
      v31 = *(v29 - 2);
      v32 = *(v29 - 1);
      v33 = *v29;
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v34 = swift_allocObject();
      *(v34 + 16) = v44;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      *(v34 + 48) = v32;
      *(v34 + 56) = v33;
      v54._countAndFlagsBits = v28;
      v35 = v28[2];
      v36 = v28[3];

      if (v35 >= v36 >> 1)
      {
        sub_1000CDF20((v36 > 1), v35 + 1, 1);
        v28 = v54._countAndFlagsBits;
      }

      v28[2] = v35 + 1;
      v28[v35 + 4] = v34;
      v29 += 4;
      --v27;
    }

    while (v27);

    countAndFlagsBits = v42;
    object = v43;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  v54._countAndFlagsBits = countAndFlagsBits;
  v54._object = object;
  v55 = 0;
  v56 = v28;
  v57 = 0;
  v37 = sub_1000B1898(2128928, 0xE300000000000000, 0, 1);
  v39 = v38;

  v49 = v37;
  v50 = v39;
  v47 = 10;
  v48 = 0xE100000000000000;
  v45 = 2314;
  v46 = 0xE200000000000000;
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  return v51;
}

void *sub_10005843C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001766C(a1, v24);
  Mirror.init(reflecting:)();
  v9 = Mirror.children.getter();
  (*(v5 + 8))(v8, v4);
  v22 = v9;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v25 + 1))
  {
    v10 = &_swiftEmptyArrayStorage;
    do
    {
      v23[0] = v24[0];
      v23[1] = v24[1];
      v23[2] = v25;
      v12 = sub_100058680(v23, a2);
      v14 = v13;
      v16 = v15;
      v18 = v17;
      sub_1000097E8(v23, &qword_10033BDB0, &unk_1002726E0);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000AF2E4(0, v10[2] + 1, 1, v10);
        }

        v20 = v10[2];
        v19 = v10[3];
        if (v20 >= v19 >> 1)
        {
          v10 = sub_1000AF2E4((v19 > 1), v20 + 1, 1, v10);
        }

        v10[2] = v20 + 1;
        v11 = &v10[4 * v20];
        v11[4] = v12;
        v11[5] = v14;
        v11[6] = v16;
        v11[7] = v18;
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v25 + 1));
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  return v10;
}

uint64_t sub_100058680(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100058CB4(a1, &v14);
  if (*(&v14 + 1))
  {
    v11[0] = v14;
    sub_100058C60();
    Collection<>.trimmingPrefix<A>(_:)();

    sub_10000903C(v15);
    v4 = static String._fromSubstring(_:)();
  }

  else
  {
    sub_10000903C(v15);
    v4 = 63;
  }

  String.lowercased()();
  v5._countAndFlagsBits = 0x736B736174;
  v5._object = 0xE500000000000000;
  v6 = String.hasSuffix(_:)(v5);

  if (v6)
  {
    sub_100058CB4(a1, &v14);

    sub_100035D04(&qword_10033BDB8, &unk_100278370);
    if (swift_dynamicCast())
    {
      sub_10000E754(v11, v13);
      *&v14 = 40;
      *(&v14 + 1) = 0xE100000000000000;
      sub_10000EBC0(v13, v13[3]);
      *&v11[0] = dispatch thunk of Collection.count.getter();
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      v8._countAndFlagsBits = 41;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      sub_10000903C(v13);
      return v4;
    }

    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_1000097E8(v11, &qword_10033BDC0, &unk_1002726F0);
  }

  a2(a1 + 16);
  if (!v9)
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1000588F8(uint64_t a1)
{
  sub_10001766C(a1, &v7);
  sub_100035D04(&qword_10033BDC8, &unk_100278380);
  if (swift_dynamicCast())
  {
    sub_10000E754(v5, v9);
    v1 = v10;
    v2 = v11;
    sub_10000EBC0(v9, v10);
    (*(v2 + 24))(&v7, v1, v2);
    if (v8)
    {
      sub_1000516B4(&v7, v5);
      *&v7 = 0;
      *(&v7 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v3 = v7;
      sub_10000903C(v5);
      sub_10000903C(v9);
      return v3;
    }

    else
    {
      sub_1000097E8(&v7, &unk_100339680, &qword_100278390);
      sub_10000903C(v9);
      return 7104878;
    }
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1000097E8(v5, &qword_10033BDD0, &unk_100272700);
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    return v9[0];
  }
}

uint64_t sub_100058A84(uint64_t a1)
{
  sub_10001766C(a1, &v7);
  sub_100035D04(&qword_10033BDC8, &unk_100278380);
  if (swift_dynamicCast())
  {
    sub_10000E754(v5, v9);
    v1 = v10;
    v2 = v11;
    sub_10000EBC0(v9, v10);
    (*(v2 + 24))(&v7, v1, v2);
    if (v8)
    {
      sub_1000516B4(&v7, v5);
      *&v7 = 0;
      *(&v7 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v3 = v7;
      sub_10000903C(v5);
      sub_10000903C(v9);
      return v3;
    }

    else
    {
      sub_1000097E8(&v7, &unk_100339680, &qword_100278390);
      sub_10000903C(v9);
      return 0;
    }
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1000097E8(v5, &qword_10033BDD0, &unk_100272700);
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    return v9[0];
  }
}

unint64_t sub_100058C0C()
{
  result = qword_10033BDA0;
  if (!qword_10033BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BDA0);
  }

  return result;
}

unint64_t sub_100058C60()
{
  result = qword_10033BDA8;
  if (!qword_10033BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BDA8);
  }

  return result;
}

uint64_t sub_100058CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033BDB0, &unk_1002726E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058D2C()
{
  v0 = type metadata accessor for JSONDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_100058DC8(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() homeAppSuggestionVendor];
  v5 = [v4 roomSuggestions];

  sub_100058FA8();
  sub_100058FF4();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005904C(v6);
  v8 = v7;

  v16 = a1;
  v17 = a2;
  v15[2] = &v16;
  LOBYTE(v4) = sub_10015FB80(sub_1000595B4, v15, v8);

  if (v4)
  {
    v9 = [objc_opt_self() localizedStringForKey:15];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v16 = 0;
    v17 = 0xE000000000000000;
    v15[3] = v10;
    v15[4] = v12;
    sub_100035D04(&unk_10034A310, &qword_100272780);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10026F050;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000595D4();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    sub_10001369C();

    a1 = StringProtocol.appendingFormat<A>(_:_:)();
  }

  else
  {
  }

  return a1;
}

unint64_t sub_100058FA8()
{
  result = qword_10033BE20;
  if (!qword_10033BE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033BE20);
  }

  return result;
}

unint64_t sub_100058FF4()
{
  result = qword_10033BE28;
  if (!qword_10033BE28)
  {
    sub_100058FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BE28);
  }

  return result;
}

void sub_10005904C(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_1000593B4(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 name];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_1000CDF40((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_100035D04(&qword_10033BE38, qword_100272788);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_100059628(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100059628(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_100059628(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1000593B4(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100058FA8();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100058FA8();
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

unint64_t sub_1000595D4()
{
  result = qword_10033BE30;
  if (!qword_10033BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033BE30);
  }

  return result;
}

uint64_t sub_100059628(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t EdgeTransitioning.action(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v10 = static Array._adoptStorage(_:count:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  *v12 = sub_100059D20;
  v12[1] = v13;
  sub_100042610(v10);
  v14 = *(a4 + 64);

  v15 = v14(v17, a3, a4);
  static Array.+= infix(_:_:)();

  return v15(v17, 0);
}

uint64_t EdgeTransitioning.filter(isIncluded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v10 = static Array._adoptStorage(_:count:)();
  v12 = v11;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  *v12 = sub_100059D48;
  v12[1] = v13;
  sub_100042610(v10);
  v14 = *(a4 + 88);

  v15 = v14(v17, a3, a4);
  static Array.+= infix(_:_:)();

  return v15(v17, 0);
}

uint64_t EdgeTransitioning.output(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_100059CAC(AssociatedTypeWitness, AssociatedTypeWitness);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  swift_allocObject();
  v15 = static Array._adoptStorage(_:count:)();
  (*(v12 + 16))(v16, a1, AssociatedTypeWitness);
  v17 = sub_100042610(v15);
  EdgeTransitioning.output(_:)(v17, a2, a3, a4);
}

{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;

  EdgeTransitioning.output(_:)(sub_100059D7C, v8, a2, a3, a4);
}

uint64_t EdgeTransitioning.output(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v10 = static Array._adoptStorage(_:count:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  *v12 = sub_100059DAC;
  v12[1] = v13;
  sub_100042610(v10);
  v14 = *(a4 + 112);

  v15 = v14(v17, a3, a4);
  static Array.+= infix(_:_:)();

  return v15(v17, 0);
}

uint64_t sub_100059CAC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_100059D20()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_100059D48@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100059D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  nullsub_1(v4[4], v4[2], v4[3], a4);
}

uint64_t sub_100059DAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_100059DDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HandoffDevice();
  sub_10005E4C4(&qword_10033C1C8, 255, type metadata accessor for HandoffDevice);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v13 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));

    sub_100063B28(&v12, v11);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v13;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100059F30(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v25 - v9;
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v13 = *(a1 + 16);
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v12, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_100063F34(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A194(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100008DE4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A2B0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033BE40);
  sub_100003078(v0, qword_10033BE40);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005A354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

void *sub_10005A3A8()
{
  type metadata accessor for LockscreenControlsFeature();
  swift_allocObject();
  result = sub_10005A48C();
  qword_10038AEE0 = result;
  return result;
}

uint64_t sub_10005A3E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *(v2 + 24) = a1;

  sub_10005E5E4(&qword_10033C1F0, &qword_1002729F0);
  v5 = *(v2 + 24);

  CurrentValueSubject.send(_:)();
}

void *sub_10005A48C()
{
  v1 = v0;
  sub_100035D04(&qword_10033C1D8, &unk_1002729B0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v0[2] = v2;
  v0[3] = &_swiftEmptyDictionarySingleton;
  v0[4] = &_swiftEmptyDictionarySingleton;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v3 = qword_10038B5B8;
  v0[5] = qword_10038B5B8;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = &_swiftEmptyDictionarySingleton;
  v0[10] = &_swiftEmptyDictionarySingleton;
  KeyPath = swift_getKeyPath();
  v5 = sub_100035D04(&qword_10033C1E0, &qword_1002729E8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = v3;
  v9 = sub_10006C194(KeyPath, 0);

  v1[11] = v9;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10038B0B8 + 1488);
  sub_10005FA50();
  v12 = v11;

  *(v1 + 24) = v12;
  v1[13] = 0;
  v1[14] = &_swiftEmptyDictionarySingleton;
  v13 = sub_10024D28C(_swiftEmptyArrayStorage);
  v1[17] = &_swiftEmptySetSingleton;
  *(v1 + 30) = 0;
  v1[16] = v13;
  DeviceClass = GestaltGetDeviceClass();
  v15 = DeviceClass;
  v17 = DeviceClass != 4 && DeviceClass != 7;
  v26[3] = &type metadata for Feature;
  v26[4] = sub_100013104();
  LOBYTE(v26[0]) = 4;
  v18 = isFeatureEnabled(_:)();
  sub_10000903C(v26);
  *(v1 + 48) = v17 & v18;
  if ((v18 & 1) == 0 || v15 == 7 || v15 == 4)
  {
    if (qword_100338E70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003078(v19, qword_10033BE40);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109376;
      *(v22 + 4) = v18 & 1;
      *(v22 + 8) = 1024;
      *(v22 + 10) = !v17;
      _os_log_impl(&_mh_execute_header, v20, v21, "### Disabled. FF=%{BOOL}d communal=%{BOOL}d", v22, 0xEu);
    }
  }

  v23 = v1[2];

  v26[0] = sub_10005E5E4(&qword_10033C1F0, &qword_1002729F0);
  sub_100035D04(&qword_10033C1F0, &qword_1002729F0);
  sub_10000E244(&qword_10033C1F8, &qword_10033C1F0, &qword_1002729F0);
  v24 = Publisher.eraseToAnyPublisher()();

  v26[0] = v24;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033C200, &qword_1002729F8);
  sub_10000E244(&qword_10033C208, &qword_10033C200, &qword_1002729F8);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_10005A8BC(uint64_t *a1)
{
  v1 = *a1;
  if (qword_100338E70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033BE40);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;

    sub_100035D04(&qword_10033C210, &qword_100272A00);
    v7 = String.init<A>(describing:)();
    v9 = sub_100017494(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "New model: %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v19 = *(*(v1 + 16) + 32);
      v11 = Strong;
      sub_100035D04(&qword_100339828, &unk_100270300);
      sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
      Publisher.eraseToAnyPublisher()();

      sub_100035D04(&qword_100339838, &qword_100271F10);
      sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
      v12 = Publisher<>.sink(receiveValue:)();

      Strong = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(Strong + 56);
    *(Strong + 56) = v12;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      v18 = *(*(v1 + 16) + 48);
      v15 = result;
      sub_100035D04(&qword_100339828, &unk_100270300);
      sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
      Publisher.eraseToAnyPublisher()();

      sub_100035D04(&qword_100339838, &qword_100271F10);
      sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
      v16 = Publisher<>.sink(receiveValue:)();

      result = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(result + 64);
    *(result + 64) = v16;
  }

  return result;
}

uint64_t sub_10005ACC0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_10005AD34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100035D04(&qword_10033C3A8, &qword_100272C60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v54 - v12;
  v66 = sub_100035D04(&qword_10033C3B0, &qword_100272C68);
  v64 = *(v66 - 8);
  v14 = *(v64 + 64);
  __chkstk_darwin(v66);
  v16 = &v54 - v15;
  v67 = sub_100035D04(&qword_10033C3B8, &qword_100272C70);
  v65 = *(v67 - 8);
  v17 = *(v65 + 64);
  __chkstk_darwin(v67);
  v19 = &v54 - v18;
  v20 = sub_100035D04(&qword_10033C3C0, &qword_100272C78);
  v21 = *(*(v20 - 8) + 64);
  result = __chkstk_darwin(v20);
  if (*(v2 + 48) == 1)
  {
    v56 = &v54 - v23;
    v57 = v24;
    v58 = result;
    v60 = v4;
    v61 = v13;
    v63 = v9;
    if (qword_100338E70 != -1)
    {
      swift_once();
    }

    v59 = v5;
    v62 = v10;
    v25 = type metadata accessor for Logger();
    sub_100003078(v25, qword_10033BE40);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v55 = v8;
      v29 = v28;
      v30 = swift_slowAlloc();
      v69[0] = v30;
      *v29 = 136315138;
      v31 = sub_1000092A0();
      v33 = sub_100017494(v31, v32, v69);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Tracking %s", v29, 0xCu);
      sub_10000903C(v30);

      v8 = v55;
    }

    v34 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    swift_beginAccess();

    v35 = *(v2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    v37 = v34;
    v55 = v34;
    sub_10001B874(a1, a1 + v34, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v68;
    swift_endAccess();
    swift_beginAccess();
    sub_100035D04(&qword_10033C3C8, &unk_100272C80);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_10000E244(&qword_10033C3D0, &qword_10033C3B0, &qword_100272C68);
    v38 = v66;
    Publisher.compactMap<A>(_:)();
    (*(v64 + 8))(v16, v38);
    sub_10000E244(&qword_10033C3D8, &qword_10033C3B8, &qword_100272C70);
    v39 = v56;
    v40 = v67;
    Publisher<>.removeDuplicates()();
    (*(v65 + 8))(v19, v40);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = a1;
    *(v42 + 24) = v41;
    sub_10000E244(&qword_10033C3E0, &qword_10033C3C0, &qword_100272C78);

    v43 = v58;
    v44 = Publisher<>.sink(receiveValue:)();

    (*(v57 + 8))(v39, v43);
    swift_beginAccess();
    v45 = *(v2 + 80);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_10004CE14(v44, a1 + v37, v46);
    *(v2 + 80) = v68;
    swift_endAccess();
    v69[0] = sub_10006E2CC();
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    v68 = *(v2 + 40);
    sub_100035D04(&qword_10033C3E8, &qword_100274580);
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_10033C3F0, &qword_10033C3E8, &qword_100274580);
    sub_1000513CC();
    v47 = v61;
    Publisher.throttle<A>(for:scheduler:latest:)();
    (*(v59 + 8))(v8, v60);

    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = a1;
    sub_10000E244(&qword_10033C3F8, &qword_10033C3A8, &qword_100272C60);

    v50 = v63;
    v51 = Publisher<>.sink(receiveValue:)();

    (*(v62 + 8))(v47, v50);
    swift_beginAccess();
    v52 = *(v2 + 112);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_10004CE14(v51, &v55[a1], v53);
    *(v2 + 112) = v68;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10005B600@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10000DF0C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10005B62C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_100338E70 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033BE40);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_1000092A0();
    v11 = sub_100017494(v9, v10, v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100017494(v4, v3, v18);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s caching mediaRouteID: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    v14 = result;
    swift_beginAccess();

    v15 = *(v14 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + 72);
    *(v14 + 72) = 0x8000000000000000;
    sub_10004D010(v4, v3, a2 + v13, isUniquelyReferenced_nonNull_native);
    *(v14 + 72) = v17;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10005B868(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v5 & 1) != 0 || v4 > *(result + 96))
    {
      sub_10005C478(a3);
    }

    else
    {
      sub_10005CB38(a3, v4);
    }
  }

  return result;
}

uint64_t sub_10005B900(uint64_t result)
{
  if (*(v1 + 48) == 1)
  {
    v2 = result;
    if (qword_100338E70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_10033BE40);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      v8 = sub_1000092A0();
      v10 = sub_100017494(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Untrack %s", v6, 0xCu);
      sub_10000903C(v7);
    }

    v11 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    swift_beginAccess();
    sub_100209174(v2 + v11);
    swift_endAccess();

    swift_beginAccess();
    sub_100209148(v2 + v11);
    swift_endAccess();

    sub_10005C478(v2);
    swift_beginAccess();
    sub_10005BB48(v2 + v11);
    swift_endAccess();
    swift_beginAccess();
    sub_100209280(v2 + v11);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_10005BB48(unint64_t result)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    v3 = result;
    result = sub_100019110(result);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * result);
      type metadata accessor for AnyCancellable();

      dispatch thunk of Cancellable.cancel()();
      sub_1001D0954(v3);
    }
  }

  return result;
}

void sub_10005BBEC()
{
  v1 = v0;
  if (qword_100338E70 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10033BE40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_100017494(0xD000000000000011, 0x8000000100298E20, &v32);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
      sub_10000903C(v6);
    }

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v7 = *(qword_10038B0B8 + 1488);
    sub_10005FA50();
    v9 = v8;

    if (*(v1 + 96) == v9)
    {
      break;
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = *(v1 + 96);
      *(v12 + 12) = 2048;
      *(v12 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Threshold changed: %f -> %f", v12, 0x16u);
    }

    *(v1 + 96) = v9;
    swift_beginAccess();
    v13 = *(v1 + 32);
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = *(v1 + 32);

    v19 = 0;
    while (v16)
    {
LABEL_18:
      v21 = *(*(v13 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v16)))));

      sub_10005C478(v22);
      v23 = v21[3];
      v24 = *(v23 + 24);

      CurrentValueSubject.value.getter();
      if (v29)
      {
        v25 = *(v23 + 16);
        CurrentValueSubject.value.getter();

        if (v31)
        {
          goto LABEL_12;
        }

        v26 = v30;
      }

      else
      {

        if (((LODWORD(v27) | (v28 << 32)) & 0x100000000) != 0)
        {
          goto LABEL_12;
        }

        v26 = v27;
      }

      if (v26 < *(v1 + 96))
      {
        sub_10005CB38(v21, v26);
      }

LABEL_12:
      v16 &= v16 - 1;
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        return;
      }

      v16 = *(v13 + 64 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }
}

uint64_t sub_10005BFBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);

  sub_100049784(a2);
}

uint64_t sub_10005C034(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a2;
  v36 = a3;
  v8 = v5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v14 = *(v37 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v37);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338E70 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_10033BE40);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = a5;
    v34 = v14;
    v23 = v22;
    v24 = a4;
    v25 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v25 = v19;
    v26 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, v35, v23, 0xCu);
    sub_1000097E8(v25, &qword_100339940, &unk_100272C50);
    a4 = v24;

    a5 = v33;
    v14 = v34;
  }

  v27 = *(v8 + 40);
  v28 = swift_allocObject();
  *(v28 + 16) = v8;
  *(v28 + 24) = v19;
  aBlock[4] = a4;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = a5;
  v29 = _Block_copy(aBlock);
  v30 = v19;

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_10005E4C4(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v38 + 8))(v13, v10);
  (*(v14 + 8))(v17, v37);
}

void sub_10005C41C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);

  v4 = sub_1002094F8(a2);
}

void sub_10005C478(uint64_t a1)
{
  if (*(v1 + 48) != 1)
  {
    return;
  }

  v2 = v1;
  swift_beginAccess();
  if (!*(*(v1 + 24) + 16))
  {
    return;
  }

  v4 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;

  sub_100019110(a1 + v4);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return;
  }

  if (qword_100338E70 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10033BE40);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_14;
    }

    v10 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_1000092A0();
    v13 = sub_100017494(v11, v12, &v54);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = *(a1 + 24);
    v15 = *(v14 + 24);

    CurrentValueSubject.value.getter();
    if (v58)
    {
      v16 = *(v14 + 16);
      CurrentValueSubject.value.getter();

      if ((v55 & 0x100000000) == 0)
      {
        v19 = v55;
LABEL_12:
        v56 = v19;
        v17 = String.init<A>(describing:)();
        v18 = v21;
        goto LABEL_13;
      }

      v17 = 7104878;
      v18 = 0xE300000000000000;
    }

    else
    {
      v19 = v56;
      v20 = v56 | (v57 << 32);

      if ((v20 & 0x100000000) == 0)
      {
        goto LABEL_12;
      }

      v17 = 7104878;
      v18 = 0xE300000000000000;
    }

LABEL_13:
    v22 = sub_100017494(v17, v18, &v54);

    *(v10 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Reporting LOST: %s, distance=%s", v10, 0x16u);
    swift_arrayDestroy();

LABEL_14:

    swift_beginAccess();
    sub_100209148(a1 + v4);
    swift_endAccess();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000DF0C();
    v24 = v23;

    if (v24)
    {
      goto LABEL_15;
    }

    swift_beginAccess();
    v34 = *(v2 + 72);
    if (!*(v34 + 16))
    {
      goto LABEL_36;
    }

    v35 = *(v2 + 72);

    v36 = sub_100019110(a1 + v4);
    if ((v37 & 1) == 0)
    {
      break;
    }

    v38 = (*(v34 + 56) + 16 * v36);
    v40 = *v38;
    v39 = v38[1];

LABEL_15:
    v25 = objc_allocWithZone(PCLockscreenControlsDevice);
    v26 = String._bridgeToObjectiveC()();

    v27 = [v25 initWithMediaRouteID:v26 distance:0];

    v28 = *(v2 + 88);
    __chkstk_darwin(v29);
    sub_100003118(0, &qword_10033B5F8, PCLockscreenControlsObserver_ptr);
    swift_getKeyPath();
    v30 = v28 + qword_100346AF8;

    os_unfair_lock_lock(v30);
    v54 = *(v30 + 8);

    swift_getAtKeyPath();

    v31 = v55;
    os_unfair_lock_unlock(v30);

    v32 = *(v31 + 16);
    if (v32)
    {
      v2 = sub_100009194(*(v31 + 16), 0);
      v33 = sub_1001295D4(&v54, v2 + 32, v32, v31);
      sub_100004F98();
      if (v33 != v32)
      {
        __break(1u);
        return;
      }

      if (v2 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {

      v2 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }
    }

    if ((v2 & 0x4000000000000000) == 0)
    {
      a1 = *(v2 + 16);
      if (!a1)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }

LABEL_42:
    a1 = _CocoaArrayWrapper.endIndex.getter();
    if (!a1)
    {
LABEL_43:

      return;
    }

LABEL_25:
    v41 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *(v2 + 16))
        {
          goto LABEL_40;
        }

        v42 = *(v2 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v45 = [v42 deviceLost];
      if (v45)
      {
        v46 = v45;
        (*(v45 + 2))(v45, v27);

        _Block_release(v46);
      }

      else
      {
      }

      ++v41;
      if (v44 == a1)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

LABEL_36:

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54 = v50;
    *v49 = 136315138;
    v51 = sub_1000092A0();
    v53 = sub_100017494(v51, v52, &v54);

    *(v49 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v47, v48, "### Failed to create PCLockscreenControlsDevice for %s", v49, 0xCu);
    sub_10000903C(v50);
  }
}

void sub_10005CB38(id a1, float a2)
{
  if (*(v2 + 48) == 1)
  {
    v3 = v2;
    if (qword_100338E70 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_10033BE40);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v59[0] = swift_slowAlloc();
        *v9 = 136315394;
        v10 = sub_1000092A0();
        v12 = sub_100017494(v10, v11, v59);

        *(v9 + 4) = v12;
        *(v9 + 12) = 2080;
        v60[0] = a2;
        v13 = String.init<A>(describing:)();
        v15 = sub_100017494(v13, v14, v59);

        *(v9 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v7, v8, "UPDATE: %s, distance=%s", v9, 0x16u);
        swift_arrayDestroy();
      }

      v16 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
      swift_beginAccess();

      v17 = *(v3 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v60 = *(v3 + 24);
      *(v3 + 24) = 0x8000000000000000;
      sub_10001B874(a1, a1 + v16, isUniquelyReferenced_nonNull_native);
      *(v3 + 24) = *v60;
      swift_endAccess();
      sub_10005D6EC();
      v19 = *(v3 + 88) + qword_100346AF8;

      os_unfair_lock_lock(v19);
      v20 = *(*(v19 + 8) + 16);
      os_unfair_lock_unlock(v19);

      if (!v20)
      {
        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_10000DF0C();
      v22 = v21;

      if (!v22)
      {
        swift_beginAccess();
        v38 = *(v3 + 72);
        if (!*(v38 + 16))
        {
          goto LABEL_30;
        }

        v39 = *(v3 + 72);

        v40 = sub_100019110(a1 + v16);
        if ((v41 & 1) == 0)
        {

LABEL_30:

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v59[0] = v55;
            *v54 = 136315138;
            v56 = sub_1000092A0();
            v58 = sub_100017494(v56, v57, v59);

            *(v54 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v52, v53, "### Failed to create PCLockscreenControlsDevice for %s", v54, 0xCu);
            sub_10000903C(v55);
          }

          return;
        }

        v42 = (*(v38 + 56) + 16 * v40);
        v44 = *v42;
        v43 = v42[1];
      }

      sub_100003118(0, &qword_10034B560, NSNumber_ptr);
      isa = NSNumber.init(floatLiteral:)(a2).super.super.isa;
      v24 = objc_allocWithZone(PCLockscreenControlsDevice);
      v25 = String._bridgeToObjectiveC()();

      v26 = [v24 initWithMediaRouteID:v25 distance:isa];

      a1 = v26;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = a1;
        *v30 = a1;
        v31 = a1;
        _os_log_impl(&_mh_execute_header, v27, v28, "Reporting update to clients %@", v29, 0xCu);
        sub_1000097E8(v30, &qword_100339940, &unk_100272C50);
      }

      v32 = *(v3 + 88);
      __chkstk_darwin(v33);
      sub_100003118(0, &qword_10033B5F8, PCLockscreenControlsObserver_ptr);
      swift_getKeyPath();
      v34 = v32 + qword_100346AF8;

      os_unfair_lock_lock(v34);
      v59[0] = *(v34 + 8);

      swift_getAtKeyPath();

      v35 = v59[5];
      os_unfair_lock_unlock(v34);

      v36 = *(v35 + 16);
      if (v36)
      {
        v3 = sub_100009194(*(v35 + 16), 0);
        v37 = sub_1001295D4(v59, v3 + 32, v36, v35);
        sub_100004F98();
        if (v37 != v36)
        {
          __break(1u);
          return;
        }

        if (v3 < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {

        v3 = _swiftEmptyArrayStorage;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }
      }

      if ((v3 & 0x4000000000000000) == 0)
      {
        v45 = *(v3 + 16);
        if (!v45)
        {
          goto LABEL_37;
        }

        goto LABEL_19;
      }

LABEL_36:
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (!v45)
      {
LABEL_37:

        return;
      }

LABEL_19:
      v46 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v46 >= *(v3 + 16))
          {
            goto LABEL_34;
          }

          v47 = *(v3 + 8 * v46 + 32);
        }

        v48 = v47;
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        v50 = [v47 deviceUpdated];
        if (v50)
        {
          v51 = v50;
          (*(v50 + 2))(v50, a1);

          _Block_release(v51);
        }

        else
        {
        }

        ++v46;
        if (v49 == v45)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }
}

void sub_10005D280(uint64_t a1)
{
  if (*(v1 + 48) == 1)
  {
    os_unfair_lock_lock((v1 + 120));
    v3 = *(a1 + 24);

    v4 = *(v1 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v1 + 128);
    *(v1 + 128) = 0x8000000000000000;
    sub_10004CE40(a1, v3, isUniquelyReferenced_nonNull_native);
    *(v1 + 128) = v14;
    os_unfair_lock_unlock((v1 + 120));
    if (qword_100338E70 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_10033BE40);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v11 = sub_10014F690();
      v13 = sub_100017494(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "XPC Publisher added: %s", v9, 0xCu);
      sub_10000903C(v10);
    }

    swift_beginAccess();
    if (*(*(v1 + 24) + 16))
    {
      sub_10014F3D4(0, 2);
    }
  }
}

void sub_10005D46C(uint64_t a1)
{
  if (*(v1 + 48) == 1)
  {
    os_unfair_lock_lock((v1 + 120));
    sub_10005D654((v1 + 128), a1, &v12);
    os_unfair_lock_unlock((v1 + 120));
    if (v12)
    {
      if (qword_100338E70 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003078(v3, qword_10033BE40);

      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v12 = v6;
        *v5 = 136315138;

        v7 = sub_10014F690();
        v9 = v8;

        v10 = sub_100017494(v7, v9, &v12);

        *(v5 + 4) = v10;
        _os_log_impl(&_mh_execute_header, oslog, v4, "XPC Publisher removed: %s", v5, 0xCu);
        sub_10000903C(v6);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10005D654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = sub_10008CE8C(a2);
  if (v7)
  {
    v8 = result;
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v14 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100089EA8();
      v11 = v14;
    }

    v12 = v8;
    v13 = *(*(v11 + 56) + 8 * v8);
    result = sub_10004BF88(v12, v11);
    *a1 = v11;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  return result;
}

void sub_10005D6EC()
{
  if (*(v0 + 48) == 1)
  {
    swift_beginAccess();
    if (*(*(v0 + 24) + 16))
    {
      v1 = *(v0 + 88) + qword_100346AF8;

      os_unfair_lock_lock(v1);
      v2 = *(*(v1 + 8) + 16);
      os_unfair_lock_unlock(v1);

      if (!v2)
      {
        v3 = v0;
        if (qword_100338E70 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_100003078(v4, qword_10033BE40);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v5, v6, "Publishing via XPC", v7, 2u);
        }

        os_unfair_lock_lock((v3 + 120));
        sub_10005D884((v3 + 128));
        os_unfair_lock_unlock((v3 + 120));
        v8 = String.utf8CString.getter();
        notify_post((v8 + 32));
      }
    }
  }
}

uint64_t sub_10005D884(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    if (swift_weakLoadStrong())
    {
      v11 = *(v10 + 24);

      sub_100051F6C(v11, 2, 0);
    }

    else
    {

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "### Failed to fire xpc event: nil publisher", v14, 2u);
      }
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005DA38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  v8 = *(v0 + 88);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  sub_1000097E8(v0 + 128, &qword_10033C400, qword_100272C90);
  v11 = *(v0 + 136);

  return v0;
}

uint64_t sub_10005DAC8()
{
  sub_10005DA38();

  return swift_deallocClassInstance();
}

void *sub_10005E328(unint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100068B04(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100064A10(v5, v6, &qword_10033C1D0, &qword_1002729A8, type metadata accessor for HandoffDevice, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id);
LABEL_10:

  return sub_1000690B4(a1, v2);
}

uint64_t sub_10005E46C(uint64_t a1, uint64_t a2)
{
  result = sub_10005E4C4(&qword_10033C1C0, a2, type metadata accessor for LockscreenControlsFeatureModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005E4C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10005E50C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 24);
    v2 = sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}