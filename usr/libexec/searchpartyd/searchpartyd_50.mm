uint64_t sub_100537F9C()
{
  sub_1010A528C();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1010A5510();
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_101385D80;
    v3 = Array.description.getter();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100008C00();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    os_log(_:dso:log:_:_:)();

    v6 = *(v1 + 296);
    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100538100()
{
  v35 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v34 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v37);
  v36 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v30 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v0 + 56);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v20)
  {
    v22 = *(v0 + 48);
    if (v22)
    {
      v23 = *(v22 + 40);

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }

    else
    {
      v31 = v12;
      v32 = 0x8000000101359880;
      static DispatchQoS.background.getter();
      v30[0] = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for XPCActivity();
      v25 = swift_allocObject();
      sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v25 + 40) = v26;
      swift_unknownObjectWeakInit();
      *(v25 + 88) = 0;
      v27 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v30[1] = "aringExpirationTimer";
      v30[2] = v27;
      *(v25 + 96) = 0;
      *(v25 + 104) = 0;
      (*(v7 + 16))(v36, v12, v37);
      (*(v4 + 104))(v33, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
      v38 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);

      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      *(v25 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v25 + 24) = 0xD000000000000034;
      *(v25 + 32) = v32;
      v28 = v30[0];
      *(v25 + 48) = sub_1005892BC;
      *(v25 + 56) = v28;
      *(v25 + 64) = sub_1005892C4;
      *(v25 + 72) = v24;

      sub_100997398();

      (*(v7 + 8))(v31, v37);

      v29 = *(v0 + 48);
      *(v0 + 48) = v25;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10053867C(uint64_t a1, void *a2, uint64_t a3)
{
  v64 = a2;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v56 - v7;
  v9 = type metadata accessor for UUID();
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  v11 = __chkstk_darwin(v9);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v73 = &v56 - v14;
  __chkstk_darwin(v13);
  v76 = &v56 - v15;
  v61 = *(a1 + 16);
  if (!v61)
  {
    return;
  }

  v16 = 0;
  v60 = a1 + 32;
  v74 = (v68 + 32);
  v75 = (v68 + 48);
  v71 = (v68 + 8);
  v72 = (v68 + 16);
  v67 = v8;
  v77 = v9;
  v57 = a3;
  while (1)
  {
    v66 = v16;
    v17 = v60 + 160 * v16;
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    v78 = 0x79654B7974726964;
    v79 = 0xEA00000000002D73;

    v20._countAndFlagsBits = v19;
    v20._object = v18;
    String.append(_:)(v20);

    v63 = v78;
    v65 = v79;
    v21 = String._bridgeToObjectiveC()();
    v22 = [v64 stringArrayForKey:v21];

    if (!v22)
    {
      break;
    }

    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = v23[2];
    if (v24)
    {
      goto LABEL_7;
    }

LABEL_18:
    v27 = _swiftEmptyArrayStorage;
LABEL_19:

    v35 = sub_10000954C(v27);

    v80 = v35;
    v36 = v62;
    v70 = *v72;
    v70(v62, a3, v9);

    v37 = v73;
    sub_100DE8BCC(v73, v36);
    v69 = *v71;
    v69(v37, v9);
    v38 = v80;
    v39 = sub_100775E74(v35, v80);

    if ((v39 & 1) == 0)
    {
      v40 = *(v38 + 16);
      v59 = v38;
      if (v40)
      {
        v41 = sub_1003A85FC(v40, 0);
        v58 = sub_1003A9D58(&v78, &v41[(*(v68 + 80) + 32) & ~*(v68 + 80)], v40, v38);

        sub_1000128F8();
        if (v58 != v40)
        {
          goto LABEL_33;
        }

        v42 = *(v41 + 2);
        if (v42)
        {
LABEL_23:
          v78 = _swiftEmptyArrayStorage;
          sub_101123BB8(0, v42, 0);
          v43 = v78;
          v44 = (*(v68 + 80) + 32) & ~*(v68 + 80);
          v58 = v41;
          v45 = &v41[v44];
          v46 = *(v68 + 72);
          do
          {
            v47 = v73;
            v70(v73, v45, v9);
            v48 = UUID.uuidString.getter();
            v50 = v49;
            v69(v47, v9);
            v78 = v43;
            v52 = *(v43 + 16);
            v51 = *(v43 + 24);
            if (v52 >= v51 >> 1)
            {
              sub_101123BB8((v51 > 1), v52 + 1, 1);
              v43 = v78;
            }

            *(v43 + 16) = v52 + 1;
            v53 = v43 + 16 * v52;
            *(v53 + 32) = v48;
            *(v53 + 40) = v50;
            v45 += v46;
            --v42;
            v9 = v77;
          }

          while (v42);

          a3 = v57;
          v8 = v67;
          goto LABEL_30;
        }
      }

      else
      {
        v41 = _swiftEmptyArrayStorage;
        v42 = _swiftEmptyArrayStorage[2];
        if (v42)
        {
          goto LABEL_23;
        }
      }

LABEL_30:
      isa = Array._bridgeToObjectiveC()().super.isa;

      v55 = String._bridgeToObjectiveC()();

      [v64 setValue:isa forKey:v55];

      goto LABEL_4;
    }

LABEL_4:
    v16 = v66 + 1;
    if (v66 + 1 == v61)
    {
      return;
    }
  }

  v23 = _swiftEmptyArrayStorage;
  v24 = _swiftEmptyArrayStorage[2];
  if (!v24)
  {
    goto LABEL_18;
  }

LABEL_7:
  v25 = 0;
  v26 = v23 + 5;
  v27 = _swiftEmptyArrayStorage;
  while (v25 < v23[2])
  {
    v29 = *(v26 - 1);
    v28 = *v26;

    UUID.init(uuidString:)();

    if ((*v75)(v8, 1, v9) == 1)
    {
      sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v30 = v9;
      v31 = *v74;
      (*v74)(v76, v8, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100A5BFE0(0, *(v27 + 2) + 1, 1, v27);
      }

      v33 = *(v27 + 2);
      v32 = *(v27 + 3);
      if (v33 >= v32 >> 1)
      {
        v27 = sub_100A5BFE0(v32 > 1, v33 + 1, 1, v27);
      }

      *(v27 + 2) = v33 + 1;
      v34 = v77;
      v31(&v27[((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v33], v76, v77);
      v9 = v34;
      v8 = v67;
    }

    ++v25;
    v26 += 2;
    if (v24 == v25)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_100538D54(unsigned int (**a1)(uint64_t, uint64_t, uint64_t), void (*a2)(void, void, void))
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v83 = &v75[-v10];
  v81 = type metadata accessor for UUID();
  v80 = *(v81 - 8);
  v11 = *(v80 + 64);
  v12 = __chkstk_darwin(v81);
  v79 = &v75[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v84 = &v75[-v14];
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v75[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(v2 + 200);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    goto LABEL_31;
  }

  v77 = v9;
  static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10138BBE0;
    v23 = UUID.uuidString.getter();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v22 + 64) = v26;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v86 = 60;
    v87 = 0xE100000000000000;
    v27 = *(a2 + 7);
    v85[6] = *(a2 + 6);
    v85[7] = v27;
    v28 = *(a2 + 9);
    v85[8] = *(a2 + 8);
    v85[9] = v28;
    v29 = *(a2 + 3);
    v85[2] = *(a2 + 2);
    v85[3] = v29;
    v30 = *(a2 + 5);
    v85[4] = *(a2 + 4);
    v85[5] = v30;
    v31 = *(a2 + 1);
    v85[0] = *a2;
    v85[1] = v31;
    sub_10058ADE8();
    v32._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 8250;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    String.append(_:)(*(a2 + 6));
    v34._countAndFlagsBits = 62;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35 = v86;
    v36 = v87;
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v26;
    *(v22 + 72) = v35;
    *(v22 + 80) = v36;
    os_log(_:dso:log:_:_:)();

    v37 = [objc_opt_self() standardUserDefaults];
    v38 = *(a2 + 1);
    *&v85[0] = 0x79654B7974726964;
    *(&v85[0] + 1) = 0xEA00000000002D73;
    String.append(_:)(v38);
    *&v75[8] = v85[0];
    v39 = String._bridgeToObjectiveC()();
    v76 = v37;
    v40 = [v37 stringArrayForKey:v39];

    if (v40)
    {
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
    }

    v42 = v81;
    v78 = a1;
    v43 = _swiftEmptyArrayStorage;
    v82 = v41[2];
    if (!v82)
    {
      break;
    }

    v44 = 0;
    a1 = (v80 + 48);
    v45 = (v80 + 32);
    v46 = v41 + 5;
    v47 = v83;
    while (v44 < v41[2])
    {
      a2 = *(v46 - 1);
      v48 = *v46;

      UUID.init(uuidString:)();

      if ((*a1)(v47, 1, v42) == 1)
      {
        sub_10000B3A8(v47, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        a2 = *v45;
        (*v45)(v84, v47, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_100A5BFE0(0, v43[2] + 1, 1, v43);
        }

        v50 = v43[2];
        v49 = v43[3];
        if (v50 >= v49 >> 1)
        {
          v43 = sub_100A5BFE0(v49 > 1, v50 + 1, 1, v43);
        }

        v43[2] = v50 + 1;
        v51 = v43 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v50;
        v42 = v81;
        a2(v51, v84, v81);
      }

      ++v44;
      v46 += 2;
      if (v82 == v44)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_17:

  v52 = sub_10000954C(v43);

  v86 = v52;

  v53 = v77;
  sub_1010F6584(v78, v77);
  sub_10000B3A8(v53, &qword_1016980D0, &unk_10138F3B0);
  v54 = v86;
  v55 = sub_100775E74(v52, v86);

  if (v55)
  {

    return;
  }

  v56 = *(v54 + 16);
  if (!v56)
  {

    isa = String._bridgeToObjectiveC()();

    v73 = v76;
    [v76 setValue:0 forKey:isa];
LABEL_29:

    return;
  }

  v57 = sub_1003A85FC(*(v54 + 16), 0);
  v58 = v57 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
  v59 = sub_1003A9D58(v85, v58, v56, v54);

  sub_1000128F8();
  if (v59 == v56)
  {
    v60 = v57[2];
    if (v60)
    {
      v78 = v57;
      v82 = v54;
      *&v85[0] = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v60, 0);
      v61 = *&v85[0];
      v84 = *(v80 + 16);
      v83 = *(v80 + 72);
      v62 = (v80 + 8);
      v63 = v81;
      do
      {
        v64 = v79;
        (v84)(v79, v58, v63);
        v65 = UUID.uuidString.getter();
        v63 = v81;
        v66 = v65;
        v68 = v67;
        (*v62)(v64, v81);
        *&v85[0] = v61;
        v70 = *(v61 + 16);
        v69 = *(v61 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_101123BB8((v69 > 1), v70 + 1, 1);
          v63 = v81;
          v61 = *&v85[0];
        }

        *(v61 + 16) = v70 + 1;
        v71 = v61 + 16 * v70;
        *(v71 + 32) = v66;
        *(v71 + 40) = v68;
        v58 = &v83[v58];
        --v60;
      }

      while (v60);
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v73 = String._bridgeToObjectiveC()();

    v74 = v76;
    [v76 setValue:isa forKey:v73];

    goto LABEL_29;
  }

  __break(1u);
}

void sub_1005396C4(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for UUID();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 200);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = [objc_opt_self() standardUserDefaults];
  v18 = *(a1 + 16);
  v42[0] = 0x79654B7974726964;
  v42[1] = 0xEA00000000002D73;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();

  v37 = v17;
  v20 = [v17 stringArrayForKey:v19];

  if (v20)
  {
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v40 = v21[2];
  if (v40)
  {
    v22 = 0;
    v23 = (v39 + 48);
    v24 = (v39 + 32);
    v25 = v21 + 5;
    v26 = _swiftEmptyArrayStorage;
    v38 = v7;
    while (v22 < v21[2])
    {
      v27 = *(v25 - 1);
      v28 = *v25;

      UUID.init(uuidString:)();

      if ((*v23)(v6, 1, v7) == 1)
      {
        sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v29 = *v24;
        (*v24)(v41, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_100A5BFE0(0, v26[2] + 1, 1, v26);
        }

        v31 = v26[2];
        v30 = v26[3];
        if (v31 >= v30 >> 1)
        {
          v26 = sub_100A5BFE0(v30 > 1, v31 + 1, 1, v26);
        }

        v26[2] = v31 + 1;
        v32 = v26 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31;
        v7 = v38;
        v29(v32, v41, v38);
      }

      ++v22;
      v25 += 2;
      if (v40 == v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_17:

  v33 = sub_10000954C(v26);

  v34 = *(v33 + 16);
  if (!v34)
  {

    return;
  }

  v35 = sub_1003A85FC(*(v33 + 16), 0);
  v36 = sub_1003A9D58(v42, &v35[(*(v39 + 80) + 32) & ~*(v39 + 80)], v34, v33);
  sub_1000128F8();
  if (v36 == v34)
  {

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_100539B70@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v24[3] = &type metadata for Bool;
  LOBYTE(v24[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v24, v12);
  v17(v23, 0);
  sub_1000BC4D4(&qword_1016A48D8, &qword_1013B1258);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  *(v18 + 32) = a3;
  v24[0] = v18;
  sub_1000BC4D4(&qword_1016A48E0, &qword_1013B1260);
  sub_10058A740(&qword_1016A48E8, &qword_1016A48E0, &qword_1013B1260, sub_10058A694);
  v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v21 = v20;

  if (!v4)
  {
    *a4 = a1;
    *(a4 + 8) = v25;
    *(a4 + 16) = v19;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_100539DD4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A48B8, &qword_1013B1248);
  v18 = *(type metadata accessor for PeerTrustAckEnvelopeV1(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for PeerTrustAckEnvelopeV1);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A48C0, &qword_1013B1250);
  sub_10058A5E0();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for PeerTrustAckEnvelopeV1);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for PeerTrustAckEnvelopeV1);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053A0D0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A4898, &qword_1013B1238);
  v18 = *(type metadata accessor for CircleTrustAckEnvelopeV1(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for CircleTrustAckEnvelopeV1);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A48A0, &qword_1013B1240);
  sub_10058A52C();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for CircleTrustAckEnvelopeV1);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for CircleTrustAckEnvelopeV1);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053A3CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v28 = a1;
  v7 = type metadata accessor for CodingUserInfoKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PropertyListEncoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000076D4(v7, static CodingUserInfoKey.messagingCoder);
  (*(v8 + 16))(v11, v15, v7);
  v30[3] = &type metadata for Bool;
  LOBYTE(v30[0]) = 1;
  v16 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v30, v11);
  v16(v29, 0);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  (*(v18 + 16))(v21 + v20, a3, v17);
  v30[0] = v21;
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  sub_10057CC00();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    (*(v18 + 8))(a3, v17);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    (*(v18 + 8))(a3, v17);

    *a4 = v28;
    *(a4 + 8) = v31;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053A6CC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A46C0, &unk_1013B0FE0);
  v18 = *(type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A46C8, &unk_1013B2160);
  sub_10057D12C();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053A9C8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v25 = a1;
  v9 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PropertyListEncoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000076D4(v9, static CodingUserInfoKey.messagingCoder);
  (*(v10 + 16))(v13, v17, v9);
  v27[3] = &type metadata for Bool;
  LOBYTE(v27[0]) = 1;
  v18 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v27, v13);
  v18(v26, 0);
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  v27[0] = v19;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1001E8254();
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  if (!v5)
  {
    *a5 = v25;
    *(a5 + 8) = v28;
    *(a5 + 16) = v20;
    *(a5 + 24) = v22;
  }

  return result;
}

uint64_t sub_10053AC08@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v24[3] = &type metadata for Bool;
  LOBYTE(v24[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v24, v12);
  v17(v23, 0);
  sub_1000BC4D4(&qword_10169EF18, &unk_1013B1270);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  *(v18 + 32) = a3;
  v24[0] = v18;
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  sub_10058A740(&qword_1016A48F8, &qword_10169B770, &unk_101395210, sub_10057F2EC);
  v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v21 = v20;

  if (!v4)
  {
    *a4 = a1;
    *(a4 + 8) = v25;
    *(a4 + 16) = v19;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053AE6C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A49A8, &qword_1013B1360);
  v18 = *(type metadata accessor for CompanionSelfBeaconingKeyEnvelope(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A49B0, &unk_1013B1368);
  sub_10058B620();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053B168@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A49E0, &qword_1013B1388);
  v18 = *(type metadata accessor for CompanionFindMyAccessoryKeyEnvelope(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A49E8, &qword_1013B1390);
  sub_10058B858();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053B464@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A47B0, &qword_1013B1158);
  v18 = *(type metadata accessor for FamilyShareEnvelopeV1(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for FamilyShareEnvelopeV1);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A47B8, &qword_1013B1160);
  sub_100589714();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FamilyShareEnvelopeV1);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for FamilyShareEnvelopeV1);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053B760@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A4790, &qword_1013B1148);
  v18 = *(type metadata accessor for LegacyShareEnvelope(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for LegacyShareEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A4798, &qword_1013B1150);
  sub_100589638();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for LegacyShareEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for LegacyShareEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053BA5C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A47D0, &qword_1013B1168);
  v18 = *(type metadata accessor for FindMyAirPodsFamilyShareEnvelope() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A47D8, &qword_1013B1170);
  sub_10058981C();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053BD58@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A47F8, &qword_1013B1190);
  v18 = *(type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A4800, &unk_1013B1198);
  sub_100589C18();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053C054@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v18 = *(type metadata accessor for BeaconObservation() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for BeaconObservation);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A46F0, &qword_1013B1020);
  sub_10057F2EC();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for BeaconObservation);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for BeaconObservation);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053C350@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A4838, &unk_1013B11F0);
  v18 = *(type metadata accessor for FindMyAccessoryFamilyKeyEnvelope() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A4840, &unk_1013B2180);
  sub_10058A0FC();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053C64C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A4858, &qword_1013B1200);
  v18 = *(type metadata accessor for SelfBeaconingKeyEnvelope(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for SelfBeaconingKeyEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A4860, &qword_1013B1208);
  sub_10058A1B0();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for SelfBeaconingKeyEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for SelfBeaconingKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053C948@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A4818, &unk_1013B11E0);
  v18 = *(type metadata accessor for LegacySelfBeaconingKeyEnvelope(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A4820, &unk_1013B2170);
  sub_10058A01C();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for LegacySelfBeaconingKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053CC44@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A4878, &qword_1013B1228);
  v18 = *(type metadata accessor for KeyRequestEnvelope() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for KeyRequestEnvelope);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A4880, &qword_1013B1230);
  sub_10058A478();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for KeyRequestEnvelope);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for KeyRequestEnvelope);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053CF40@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_10169EFB8, &unk_1013B12F0);
  v18 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for SharedBeaconRecord);
  v28[0] = v21;
  sub_1000BC4D4(&qword_101697720, &unk_101392640);
  sub_10058AD34();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for SharedBeaconRecord);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for SharedBeaconRecord);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053D23C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v28[3] = &type metadata for Bool;
  LOBYTE(v28[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v28, v12);
  v17(v27, 0);
  sub_1000BC4D4(&qword_1016A4708, &qword_1013B1028);
  v18 = *(type metadata accessor for CircleTrustDeclineEnvelopeV1(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v21 + v20, type metadata accessor for CircleTrustDeclineEnvelopeV1);
  v28[0] = v21;
  sub_1000BC4D4(&qword_1016A4710, &qword_1013B1030);
  sub_10057F3A0();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for CircleTrustDeclineEnvelopeV1);
  }

  else
  {
    v25 = v22;
    v26 = v23;
    sub_10058B268(a3, type metadata accessor for CircleTrustDeclineEnvelopeV1);

    *a4 = a1;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
  }

  return result;
}

uint64_t sub_10053D538@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PropertyListEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v12, v16, v8);
  v24[3] = &type metadata for Bool;
  LOBYTE(v24[0]) = 1;
  v17 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v24, v12);
  v17(v23, 0);
  sub_1000BC4D4(&qword_1016A4A00, &qword_1013B1398);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  *(v18 + 32) = a3;
  v24[0] = v18;
  sub_1000BC4D4(&qword_1016A4A08, &qword_1013B13A0);
  sub_10058B9E8();
  v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v21 = v20;

  if (!v4)
  {
    *a4 = a1;
    *(a4 + 8) = v25;
    *(a4 + 16) = v19;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053D770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24[0] = a6;
  v11 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v24 - v13);
  sub_1000D2A70(a1, v24 - v13, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    static os_log_type_t.info.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    if (!a5)
    {
      return result;
    }

    return a5(result);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + 200);

    __chkstk_darwin(v23);
    v24[-4] = a2;
    v24[-3] = a3;
    v24[-2] = a4;
    sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  result = sub_10000B3A8(v14, &qword_10169F358, &qword_1013A0810);
  if (a5)
  {
    return a5(result);
  }

  return result;
}

uint64_t sub_10053DA08@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X1>, void (*a2)(void, void, void)@<X2>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (result)
  {
    sub_100538D54(a1, a2);
  }

  *a3 = v7 == 0;
  return result;
}

uint64_t sub_10053DA9C(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  result = os_log(_:dso:log:_:_:)();
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 48) = 0;
    v4 = *(v3 + 16);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_10058A7BC;
    *(v5 + 24) = v3;
    v7[4] = sub_10040B9F8;
    v7[5] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10013FE14;
    v7[3] = &unk_101628EA8;
    v6 = _Block_copy(v7);

    dispatch_sync(v4, v6);
    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10053DC50(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v27 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v18 = type metadata accessor for ShareRecord();
  sub_1000D2A70(a1 + *(v18 + 32), v10, &unk_101696900, &unk_10138B1E0);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &unk_101696900, &unk_10138B1E0);
    v20 = 0;
  }

  else
  {
    v26 = v2;
    v21 = v10;
    v22 = *(v12 + 32);
    v22(v17, v21, v11);
    sub_1000D2A70(v28 + *(v18 + 32), v8, &unk_101696900, &unk_10138B1E0);
    if (v19(v8, 1, v11) == 1)
    {
      (*(v12 + 8))(v17, v11);
      sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
      v20 = 0;
    }

    else
    {
      v23 = v27;
      v22(v27, v8, v11);
      v20 = static Date.< infix(_:_:)();
      v24 = *(v12 + 8);
      v24(v23, v11);
      v24(v17, v11);
    }
  }

  return v20 & 1;
}

uint64_t sub_10053DF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v45 = *a1;
  v46 = v4;
  v5 = *(a1 + 32);
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Date();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShareRecord();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v43 - v19;
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v24 = xmmword_10139D930;
  v25 = 0uLL;
  if (!result)
  {
    v5 = 0;
LABEL_10:
    *a2 = v24;
    *(a2 + 16) = v25;
    *(a2 + 32) = v5;
    return result;
  }

  v43 = xmmword_10139D930;
  v48 = a2;
  v26 = *(result + 144);

  v27 = sub_100AA899C();

  v28 = sub_10058149C(v27);

  if (!v28[2])
  {

    goto LABEL_7;
  }

  sub_10058B200(v28 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v20, type metadata accessor for ShareRecord);

  sub_100589B28(v20, v22, type metadata accessor for ShareRecord);
  sub_1000D2A70(&v22[*(v13 + 32)], v9, &unk_101696900, &unk_10138B1E0);
  v30 = v49;
  v29 = v50;
  if ((*(v49 + 48))(v9, 1, v50) == 1)
  {
    sub_10058B268(v22, type metadata accessor for ShareRecord);
    sub_10000B3A8(v9, &unk_101696900, &unk_10138B1E0);
LABEL_7:
    a2 = v48;
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();

    v5 = 0;
    v24 = v43;
    v25 = 0uLL;
    goto LABEL_10;
  }

  v31 = v47;
  (*(v30 + 32))(v47, v9, v29);
  a2 = v48;
  if (*a1 != 2)
  {

    (*(v30 + 8))(v31, v29);
    result = sub_10058B268(v22, type metadata accessor for ShareRecord);
    v24 = v45;
    v25 = v46;
    goto LABEL_10;
  }

  LODWORD(v46) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10138BBE0;
  sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date);
  v33 = v47;
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = v35;
  *(v32 + 56) = &type metadata for String;
  v37 = sub_100008C00();
  *(v32 + 64) = v37;
  *(v32 + 32) = v34;
  *(v32 + 40) = v36;
  sub_10058B200(v22, v44, type metadata accessor for ShareRecord);
  v38 = String.init<A>(describing:)();
  *(v32 + 96) = &type metadata for String;
  *(v32 + 104) = v37;
  *(v32 + 72) = v38;
  *(v32 + 80) = v39;
  os_log(_:dso:log:_:_:)();

  Date.timeIntervalSinceNow.getter();
  v41 = v40;
  v42 = v40;

  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  a2 = v48;
  if (v41 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v41 < 9.22337204e18)
  {
    (*(v49 + 8))(v33, v50);
    result = sub_10058B268(v22, type metadata accessor for ShareRecord);
    *&v24 = vdupq_n_s64(1uLL).u64[0];
    *(&v24 + 1) = v41;
    v25 = xmmword_1013B0DA0;
    v5 = 707;
    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10053E55C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      v6 = *(v5 + 56);
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1005892E8;
      *(v7 + 24) = v5;
      aBlock[4] = sub_10040B9F8;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10013FE14;
      aBlock[3] = &unk_101627DA0;
      v8 = _Block_copy(aBlock);

      dispatch_sync(v6, v8);
      _Block_release(v8);
      LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

      if (v6)
      {
        __break(1u);
        return result;
      }

      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_10053E6F8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v41 - v4;
  v59 = type metadata accessor for ShareRecord();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v59);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Date();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  v13 = __chkstk_darwin(v11);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v53 = a1;
  v17 = *(a1 + 144);
  v18 = sub_100AA899C();
  v19 = sub_10058149C(v18);

  v58 = v16;
  static Date.trustedNow.getter(v16);
  v52 = dispatch_group_create();
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v49 = qword_10177C378;
  os_log(_:dso:log:_:_:)();
  v20 = v19[2];
  if (v20)
  {
    v21 = *(v6 + 80);
    v41 = v19;
    v22 = v19 + ((v21 + 32) & ~v21);
    v23 = *(v6 + 72);
    v24 = (v42 + 48);
    v47 = v21;
    v45 = (v21 + 16) & ~v21;
    v44 = (v7 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v42 + 8);
    v56 = (v42 + 32);
    v43 = xmmword_101385D80;
    v25 = v51;
    v48 = v5;
    v46 = v11;
    v57 = v23;
    do
    {
      sub_10058B200(v22, v10, type metadata accessor for ShareRecord);
      sub_1000D2A70(&v10[*(v59 + 32)], v5, &unk_101696900, &unk_10138B1E0);
      if ((*v24)(v5, 1, v11) == 1)
      {
        sub_10058B268(v10, type metadata accessor for ShareRecord);
        sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
      }

      else
      {
        (*v56)(v25, v5, v11);
        sub_100003DFC(&qword_1016C9070, &type metadata accessor for Date);
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          (*v55)(v25, v11);
        }

        else
        {
          v54 = static os_log_type_t.default.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v26 = swift_allocObject();
          *(v26 + 16) = v43;
          v27 = v50;
          sub_10058B200(v10, v50, type metadata accessor for ShareRecord);
          v28 = v24;
          v29 = String.init<A>(describing:)();
          v31 = v30;
          *(v26 + 56) = &type metadata for String;
          *(v26 + 64) = sub_100008C00();
          *(v26 + 32) = v29;
          *(v26 + 40) = v31;
          v24 = v28;
          os_log(_:dso:log:_:_:)();
          v11 = v46;

          v32 = v52;
          dispatch_group_enter(v52);
          v25 = v51;
          sub_10058B200(v10, v27, type metadata accessor for ShareRecord);
          v33 = v44;
          v34 = swift_allocObject();
          v35 = v27;
          v5 = v48;
          sub_100589B28(v35, v34 + v45, type metadata accessor for ShareRecord);
          *(v34 + v33) = v32;
          v36 = v55;
          v37 = v32;
          sub_100528B94(v10, sub_1005892F0, v34);

          (*v36)(v25, v11);
        }

        sub_10058B268(v10, type metadata accessor for ShareRecord);
        v23 = v57;
      }

      v22 += v23;
      --v20;
    }

    while (v20);
  }

  v38 = v52;
  OS_dispatch_group.wait()();
  sub_100538100(v39);

  return (*(v42 + 8))(v58, v11);
}

void sub_10053ECFC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = type metadata accessor for ShareRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10138BBE0;
    sub_10058B200(a2, v9, type metadata accessor for ShareRecord);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    v14 = sub_100008C00();
    *(v10 + 64) = v14;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v21[1] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v14;
    *(v10 + 72) = v15;
    *(v10 + 80) = v16;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    sub_10058B200(a2, v9, type metadata accessor for ShareRecord);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)();
  }

  dispatch_group_leave(a3);
}

uint64_t sub_10053EFC8(uint64_t a1)
{
  Transaction.capture()();
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v3 = String.init<A>(describing:)();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100008C00();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_10053F198()
{
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v97 = &v84 - v3;
  v93 = type metadata accessor for DirectorySequence();
  v87 = *(v93 - 8);
  v4 = *(v87 + 64);
  __chkstk_darwin(v93);
  v92 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  *&v86 = *(v6 - 8);
  v7 = *(v86 + 64);
  v8 = __chkstk_darwin(v6);
  v85 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = &v84 - v10;
  v104 = type metadata accessor for StableIdentifier();
  v11 = *(*(v104 - 1) + 64);
  v12 = __chkstk_darwin(v104);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v100 = &v84 - v15;
  v16 = type metadata accessor for OwnedBeaconRecord();
  v102 = *(v16 - 8);
  v103 = v16;
  v17 = *(v102 + 64);
  v18 = __chkstk_darwin(v16);
  v95 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v94 = &v84 - v21;
  v22 = __chkstk_darwin(v20);
  v105 = (&v84 - v23);
  __chkstk_darwin(v22);
  v25 = &v84 - v24;
  v91 = *(v0 + 144);
  result = sub_100025044();
  v27 = result;
  v99 = *(result + 16);
  if (v99)
  {
    v28 = 0;
    v98 = v14;
    v96 = v14 + 8;
    v29 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v30 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v31 = v27;
      v32 = *(v102 + 72);
      sub_10058B200(v27 + v30 + v32 * v28, v25, type metadata accessor for OwnedBeaconRecord);
      v33 = *(v103 + 24);
      v34 = v100;
      sub_10058B200(&v25[v33], v100, type metadata accessor for StableIdentifier);
      v35 = v29;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_10058B268(v34, type metadata accessor for StableIdentifier);
      v37 = EnumCaseMultiPayload == 1;
      v29 = v35;
      if (v37)
      {
        goto LABEL_12;
      }

      sub_10058B200(&v25[v33], v98, type metadata accessor for StableIdentifier);
      v38 = swift_getEnumCaseMultiPayload();
      if (v38 == 3)
      {
        break;
      }

      if (v38 == 2)
      {
        v39 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v40 = v96;
        v41 = *(v96 + v39[12]);

        v42 = *(v40 + v39[16]);

        v43 = *(v40 + v39[20]);

        v44 = v39[28];
LABEL_11:
        v48 = *(v40 + v44);

        v49 = type metadata accessor for UUID();
        (*(*(v49 - 8) + 8))(v98, v49);
        v29 = v35;
LABEL_12:
        sub_100589B28(v25, v105, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v29[2] + 1, 1);
          v29 = v108;
        }

        v27 = v31;
        v52 = v29[2];
        v51 = v29[3];
        if (v52 >= v51 >> 1)
        {
          sub_10112434C(v51 > 1, v52 + 1, 1);
          v29 = v108;
        }

        v29[2] = v52 + 1;
        result = sub_100589B28(v105, v29 + v30 + v52 * v32, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      sub_10058B268(v98, type metadata accessor for StableIdentifier);
      result = sub_10058B268(v25, type metadata accessor for OwnedBeaconRecord);
      v27 = v31;
LABEL_4:
      if (v99 == ++v28)
      {
        goto LABEL_18;
      }
    }

    v45 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v40 = v96;
    v46 = *(v96 + v45[12]);

    v47 = *(v40 + v45[16]);

    v44 = v45[20];
    goto LABEL_11;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_18:

  v90 = v29[2];
  if (v90)
  {
    v53 = 0;
    v88 = (v86 + 48);
    v54 = (v86 + 32);
    v55 = (v86 + 8);
    v87 += 8;
    v86 = xmmword_10138BBE0;
    v96 = _swiftEmptyArrayStorage;
    v56 = v94;
    v57 = v97;
    v89 = v29;
    v84 = v54;
    v105 = v55;
    while (v53 < v29[2])
    {
      v58 = *(v102 + 72);
      v99 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v100 = v53;
      v98 = v58;
      sub_10058B200(v29 + v99 + v58 * v53, v56, type metadata accessor for OwnedBeaconRecord);
      v59 = *(v103 + 20);
      v60 = *(v91 + 168);
      v61 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v6, qword_10177A518);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      objc_autoreleasePoolPop(v61);
      v106 = _swiftEmptyArrayStorage;
      v107 = _swiftEmptyArrayStorage;
      v62 = [objc_opt_self() defaultManager];
      v63 = v92;
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      v64 = v63;
      DirectorySequence.next()();
      v65 = *v88;
      v66 = v6;
      if ((*v88)(v57, 1, v6) != 1)
      {
        v104 = *v84;
        v67 = v97;
        v68 = v85;
        do
        {
          v104(v68, v67, v66);
          v69 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v68, v60, &v107, &v106);
          objc_autoreleasePoolPop(v69);
          (*v105)(v68, v66);
          DirectorySequence.next()();
        }

        while (v65(v67, 1, v66) != 1);
      }

      (*v87)(v64, v93);
      static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v70 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v71 = swift_allocObject();
      *(v71 + 16) = v86;
      v72 = v107;
      v73 = v107[2];
      *(v71 + 56) = &type metadata for Int;
      *(v71 + 64) = &protocol witness table for Int;
      *(v71 + 32) = v73;
      sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL);

      v74 = v101;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      *(v71 + 96) = &type metadata for String;
      *(v71 + 104) = sub_100008C00();
      *(v71 + 72) = v75;
      *(v71 + 80) = v77;
      os_log(_:dso:log:_:_:)();

      (*v105)(v74, v66);

      v78 = *(v72 + 16);

      v6 = v66;
      if (v78)
      {
        v56 = v94;
        sub_100589B28(v94, v95, type metadata accessor for OwnedBeaconRecord);
        v79 = v96;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v79;
        v108 = v79;
        v57 = v97;
        if ((v80 & 1) == 0)
        {
          sub_10112434C(0, v81[2] + 1, 1);
          v81 = v108;
        }

        v83 = v81[2];
        v82 = v81[3];
        v29 = v89;
        if (v83 >= v82 >> 1)
        {
          sub_10112434C(v82 > 1, v83 + 1, 1);
          v29 = v89;
          v81 = v108;
        }

        v81[2] = v83 + 1;
        v96 = v81;
        result = sub_100589B28(v95, v81 + v99 + v83 * v98, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v56 = v94;
        result = sub_10058B268(v94, type metadata accessor for OwnedBeaconRecord);
        v29 = v89;
        v57 = v97;
      }

      v53 = v100 + 1;
      if (v100 + 1 == v90)
      {
        goto LABEL_35;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
    v96 = _swiftEmptyArrayStorage;
LABEL_35:

    return v96;
  }

  return result;
}

uint64_t sub_10053FCDC(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v34 = &v31[-v5];
  v6 = type metadata accessor for ShareInstruction();
  v7 = v6 - 8;
  v33 = *(v6 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for StableIdentifier();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = dispatch_group_create();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v35 = (v14 + 16);
  v15 = *(v7 + 32);
  v16 = type metadata accessor for OwnedBeaconRecord();
  sub_10058B200(a1 + *(v16 + 24) + v15, v12, type metadata accessor for StableIdentifier);
  v32 = swift_getEnumCaseMultiPayload() != 0;
  sub_10058B268(v12, type metadata accessor for StableIdentifier);
  dispatch_group_enter(v13);
  v17 = *(v1 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = a1 + *(v7 + 36);
  v20 = *(v19 + 8);
  v21 = *(v19 + 16);
  *(v18 + 32) = *v19;
  *(v18 + 40) = v20;
  *(v18 + 48) = v21;
  sub_10058B200(a1, &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShareInstruction);
  v22 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v14;
  sub_100589B28(&v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v23 + v22, type metadata accessor for ShareInstruction);
  v24 = type metadata accessor for TaskPriority();
  v25 = v34;
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v17;
  *(v26 + 40) = v32;
  *(v26 + 48) = v18;
  *(v26 + 56) = sub_100589DB0;
  *(v26 + 64) = v23;

  v27 = v13;

  sub_10025EDD4(0, 0, v25, &unk_1013B11A8, v26);

  OS_dispatch_group.wait()();
  v28 = v35;
  swift_beginAccess();
  if (*v28 == 1)
  {

    return 0;
  }

  else
  {
    type metadata accessor for SPOwnerSessionError(0);
    v36 = 8;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();

    v29 = v37;
  }

  return v29;
}

void sub_100540120(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  if ((a2 & 1) == 0)
  {
    v9 = type metadata accessor for ShareInstruction();
    if (*(a1 + 16))
    {
      v10 = sub_100772110(*(a5 + *(v9 + 28)), *(a5 + *(v9 + 28) + 8), *(a5 + *(v9 + 28) + 16));
      if (v11 & 1) != 0 && (*(*(a1 + 56) + v10))
      {
        v12 = 1;
      }
    }
  }

  swift_beginAccess();
  *(a4 + 16) = v12;
  dispatch_group_leave(a3);
}

void *sub_1005401C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v77 - v10;
  v12 = type metadata accessor for DirectorySequence();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  __chkstk_darwin(v12);
  v87 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for URL();
  v89 = *(v91 - 8);
  v15 = *(v89 + 64);
  v16 = __chkstk_darwin(v91);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = v77 - v19;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v20 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v21 = v93[0];
  v22 = sub_10053FCDC(a1);
  if (v22)
  {
    v23 = v22;

    return v23;
  }

  v84 = v11;
  v81 = v21;
  v79 = v7;
  v77[1] = v2;
  v25 = *(v2 + 144);
  v78 = type metadata accessor for ShareInstruction();
  v26 = *(v78 + 24);
  v83 = a1;
  v27 = a1 + v26;
  v28 = *(v4 + 20);
  v29 = *(v25 + 168);
  v30 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v31 = v91;
  sub_1000076D4(v91, qword_10177A518);
  v82 = v27;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v30);
  v93[0] = _swiftEmptyArrayStorage;
  v92[0] = _swiftEmptyArrayStorage;
  v32 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v33 = v84;
  DirectorySequence.next()();
  v34 = v89;
  v35 = *(v89 + 48);
  v36 = v35(v33, 1, v31);
  v80 = v4;
  if (v36 == 1)
  {
    v37 = v87;
    v38 = v91;
  }

  else
  {
    *&v90 = *(v34 + 32);
    v39 = (v34 + 8);
    v37 = v87;
    v38 = v91;
    v40 = v35;
    v41 = v84;
    do
    {
      (v90)(v18, v41, v38);
      v42 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v18, v29, v93, v92);
      objc_autoreleasePoolPop(v42);
      (*v39)(v18, v91);
      DirectorySequence.next()();
      v38 = v91;
    }

    while (v40(v41, 1, v91) != 1);
  }

  (*(v85 + 8))(v37, v86);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v43 = v38;
  v44 = static OS_os_log.default.getter();
  v91 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v45 = swift_allocObject();
  v90 = xmmword_10138BBE0;
  *(v45 + 16) = xmmword_10138BBE0;
  v46 = v93[0];
  v47 = *(v93[0] + 16);
  *(v45 + 56) = &type metadata for Int;
  *(v45 + 64) = &protocol witness table for Int;
  *(v45 + 32) = v47;
  sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL);

  v48 = v88;
  v49 = dispatch thunk of CustomStringConvertible.description.getter();
  v51 = v50;
  *(v45 + 96) = &type metadata for String;
  v52 = sub_100008C00();
  *(v45 + 104) = v52;
  *(v45 + 72) = v49;
  *(v45 + 80) = v51;
  os_log(_:dso:log:_:_:)();

  (*(v89 + 8))(v48, v43);

  __chkstk_darwin(v53);
  v54 = v83;
  v77[-2] = v83;

  v55 = *(sub_10013D7F0(sub_100589D90, &v77[-4], v46) + 16);

  if (v55)
  {

    static os_log_type_t.default.getter();
    v56 = v82;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v57 = swift_allocObject();
    *(v57 + 16) = v90;
    sub_10058B200(v56, v79, type metadata accessor for OwnedBeaconRecord);
    v58 = String.init<A>(describing:)();
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = v52;
    *(v57 + 32) = v58;
    *(v57 + 40) = v59;
    v60 = v54 + *(v78 + 28);
    v62 = *(v60 + 8);
    v61 = *(v60 + 16);
    *(v57 + 96) = &type metadata for String;
    *(v57 + 104) = v52;
    *(v57 + 72) = v62;
    *(v57 + 80) = v61;

    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    v63 = 1;
  }

  else
  {
    v64 = *(v46 + 16);

    v65 = v81;
    v66 = sub_101074710(v81);
    v67 = v82;
    if (v64 >= v66)
    {
      v70 = v66;

      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_10138B360;
      sub_10058B200(v67, v79, type metadata accessor for OwnedBeaconRecord);
      v72 = String.init<A>(describing:)();
      *(v71 + 56) = &type metadata for String;
      *(v71 + 64) = v52;
      *(v71 + 32) = v72;
      *(v71 + 40) = v73;
      *(v71 + 96) = &type metadata for Int;
      *(v71 + 104) = &protocol witness table for Int;
      *(v71 + 72) = v64;
      *(v71 + 136) = &type metadata for Int;
      *(v71 + 144) = &protocol witness table for Int;
      *(v71 + 112) = v70;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v63 = 9;
    }

    else
    {
      v68 = sub_10107472C(v65);

      v69 = *(sub_10053F198() + 16);

      if (v69 < v68)
      {
        return 0;
      }

      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_10138B360;
      sub_10058B200(v67, v79, type metadata accessor for OwnedBeaconRecord);
      v75 = String.init<A>(describing:)();
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = v52;
      *(v74 + 32) = v75;
      *(v74 + 40) = v76;
      *(v74 + 96) = &type metadata for Int;
      *(v74 + 104) = &protocol witness table for Int;
      *(v74 + 72) = v69;
      *(v74 + 136) = &type metadata for Int;
      *(v74 + 144) = &protocol witness table for Int;
      *(v74 + 112) = v68;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v63 = 10;
    }
  }

  v92[0] = v63;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v93[0];
}

BOOL sub_100540BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareRecord();
  v5 = (a1 + *(v4 + 36));
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = (a2 + *(type metadata accessor for ShareInstruction() + 28));
  if (v6 != *v9)
  {
    return 0;
  }

  v10 = v7 == *(v9 + 1) && v8 == *(v9 + 2);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = (a1 + *(v4 + 40));
  v13 = *v11;
  v12 = v11[1];
  v14 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v14;
  }

  return v15 != 0;
}

uint64_t sub_100540CB8(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  if (v7 == 2)
  {
    return 1;
  }

  v13 = dispatch_group_create();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  dispatch_group_enter(v13);
  v15 = *(v3 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v15;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  *(v18 + 64) = sub_10057CA40;
  *(v18 + 72) = v16;

  v19 = v13;

  sub_10025EDD4(0, 0, v11, &unk_1013B0FC8, v18);

  OS_dispatch_group.wait()();

  swift_beginAccess();
  v12 = *(v14 + 16);

  return v12;
}

uint64_t sub_100540EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v15);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v19, v15);
  sub_1000D2A70(v27, v14, &unk_1016B1650, &unk_1013B1110);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 16) = v28;
  *(v22 + 24) = v23;
  sub_1000D2AD8(v14, v22 + v21, &unk_1016B1650, &unk_1013B1110);
  aBlock[4] = sub_100589D1C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101628408;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v25 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v33 + 8))(v5, v25);
  (*(v31 + 8))(v9, v32);
}

uint64_t sub_100541328@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for DirectorySequence();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v50 = *(*(v2 + 144) + 168);
  v19 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v19);
  v59 = _swiftEmptyArrayStorage;
  v60 = _swiftEmptyArrayStorage;
  v20 = [objc_opt_self() defaultManager];
  v53 = v18;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v21 = v10;
  DirectorySequence.next()();
  v23 = v12 + 6;
  v22 = v12[6];
  v24 = v11;
  v25 = v22(v6, 1, v11);
  v54 = v12;
  if (v25 != 1)
  {
    v57 = v12[4];
    v58 = v12 + 4;
    v26 = (v12 + 1);
    v27 = v50;
    do
    {
      v57(v16, v6, v24);
      v28 = v6;
      v29 = v23;
      v30 = v22;
      v31 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v16, v27, &v60, &v59);
      v32 = v31;
      v22 = v30;
      v23 = v29;
      v6 = v28;
      objc_autoreleasePoolPop(v32);
      (*v26)(v16, v24);
      DirectorySequence.next()();
    }

    while (v22(v28, 1, v24) != 1);
  }

  (*(v51 + 8))(v21, v52);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v33 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10138BBE0;
  v35 = v60;
  v36 = v60[2];
  *(v34 + 56) = &type metadata for Int;
  *(v34 + 64) = &protocol witness table for Int;
  *(v34 + 32) = v36;
  sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL);

  v37 = v53;
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = v39;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = sub_100008C00();
  *(v34 + 72) = v38;
  *(v34 + 80) = v40;
  os_log(_:dso:log:_:_:)();

  (v54[1])(v37, v24);

  __chkstk_darwin(v41);
  *(&v49 - 2) = v55;
  v42 = sub_10013D7F0(sub_100589CCC, (&v49 - 4), v35);
  if (*(v42 + 16))
  {
    v43 = v42;
    v44 = type metadata accessor for ShareRecord();
    v45 = *(v44 - 8);
    v46 = v56;
    sub_10058B200(v43 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v56, type metadata accessor for ShareRecord);

    return (*(v45 + 56))(v46, 0, 1, v44);
  }

  else
  {

    v48 = type metadata accessor for ShareRecord();
    return (*(*(v48 - 8) + 56))(v56, 1, 1, v48);
  }
}

void sub_100541920(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  v5 = type metadata accessor for ShareInstruction();
  v6 = a1 + *(v5 + 24);
  v7 = v6 + *(type metadata accessor for OwnedBeaconRecord() + 20);
  v8 = UUID.uuidString.getter();
  v10 = v9;
  *(v4 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v4 + 64) = v11;
  *(v4 + 32) = v8;
  *(v4 + 40) = v10;
  v12 = a1 + *(v5 + 32);
  v13 = UUID.uuidString.getter();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v11;
  *(v4 + 72) = v13;
  *(v4 + 80) = v14;
  os_log(_:dso:log:_:_:)();

  sub_100541C30(a1);
  if (!v27)
  {
    static os_log_type_t.default.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    aBlock = sub_1005892B4;
    v22 = a2;

    sub_1000BC4D4(&qword_1016A4788, &unk_1013B1120);
    v16 = String.init<A>(describing:)();
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v11;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(a2 + 56);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1005892B8;
    *(v19 + 24) = a2;
    v25 = sub_1000D2FB0;
    v26 = v19;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10013FE14;
    v24 = &unk_101627D50;
    v20 = _Block_copy(&aBlock);

    dispatch_sync(v18, v20);
    _Block_release(v20);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
    }
  }
}

void sub_100541C30(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StableIdentifier();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(type metadata accessor for ShareInstruction() + 24);
  sub_10058B200(v10 + v2[6], v9, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10058B268(v9, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload)
  {
    if (sub_1000322C8())
    {
      if (sub_100E0EA64(*(v10 + v2[16]), *(v10 + v2[17])))
      {
        sub_100551690(a1);
      }

      else
      {
        sub_1005530EC(a1);
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_101385D80;
      sub_10058B200(v10, v5, type metadata accessor for OwnedBeaconRecord);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_100008C00();
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      os_log(_:dso:log:_:_:)();
    }
  }

  else
  {
    sub_10054F898(a1);
  }
}

uint64_t sub_100541EB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v38 = a5;
  v39 = a4;
  v37 = a3;
  v7 = type metadata accessor for ShareRecord();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = (&v34 - v19);
  sub_1000D2A70(a1, &v34 - v19, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v41 = *v20;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v22 = v40;
      v41 = v40;
      sub_100003DFC(&qword_101696250, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v40 == 14)
      {
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        *v18 = v21;
        swift_storeEnumTagMultiPayload();
        swift_errorRetain();
        v39(v18);

LABEL_14:

        return sub_10000B3A8(v18, &unk_1016B1650, &unk_1013B1110);
      }
    }

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    v41 = v21;
    swift_errorRetain();
    v31 = String.init<A>(describing:)();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)();

    *v18 = v21;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v39(v18);
    goto LABEL_14;
  }

  v36 = v14;
  sub_100589B28(v20, v13, type metadata accessor for ShareRecord);
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v23 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  v34 = xmmword_101385D80;
  *(v24 + 16) = xmmword_101385D80;
  sub_10058B200(v13, v11, type metadata accessor for ShareRecord);
  v25 = String.init<A>(describing:)();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100008C00();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v35 = v23;
  os_log(_:dso:log:_:_:)();

  v28 = *(a2 + 144);
  sub_100A8306C(1);
  sub_100541920(v37, a2);
  sub_10058B200(v13, v18, type metadata accessor for ShareRecord);
  swift_storeEnumTagMultiPayload();
  v39(v18);
  sub_10000B3A8(v18, &unk_1016B1650, &unk_1013B1110);
  return sub_10058B268(v13, type metadata accessor for ShareRecord);
}

uint64_t sub_1005425AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  v6 = *(a1 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 192);
  *(a1 + 192) = 0x8000000000000000;
  sub_100FFE25C(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 192) = v9;
  return swift_endAccess();
}

uint64_t sub_10054263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 + 168);
  (*(v16 + 16))(v18, a3, v15);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  (*(v16 + 32))(v21 + v19, v18, v15);
  v22 = (v21 + v20);
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  aBlock[4] = sub_10057C9B0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101627008;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v32 + 8))(v10, v7);
  (*(v30 + 8))(v14, v31);
}

uint64_t sub_1005429F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = *(a1 + 192);
  if (!*(v21 + 16))
  {
    return swift_endAccess();
  }

  v22 = sub_1000210EC(a2);
  if ((v23 & 1) == 0)
  {
    return swift_endAccess();
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  if (v24 >> 62)
  {
    if (v24 >> 62 == 1)
    {
      v25 = v24 & 0x3FFFFFFFFFFFFFFFLL;
      swift_errorRetain();
      static os_log_type_t.error.getter();
      v48 = v24;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_101385D80;
      aBlock = v24 & 0x3FFFFFFFFFFFFFFFLL;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_100008C00();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      os_log(_:dso:log:_:_:)();

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
      v30 = static OS_dispatch_queue.global(qos:)();
      (*(v17 + 8))(v20, v16);
      v31 = swift_allocObject();
      v32 = v50;
      v31[2] = v49;
      v31[3] = v32;
      v31[4] = v25;
      v61 = sub_10057C9C8;
      v62 = v31;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100006684;
      v60 = &unk_101627058;
      v33 = _Block_copy(&aBlock);
      v34 = v48;
      sub_10057C920(v48);

      static DispatchQoS.unspecified.getter();
      v56 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v35 = v51;
      v36 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      sub_1001E61B8(v34);
    }

    else
    {
      static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
      v48 = static OS_dispatch_queue.global(qos:)();
      (*(v17 + 8))(v20, v16);
      (*(v7 + 16))(&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
      v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v43 = swift_allocObject();
      v44 = v50;
      *(v43 + 16) = v49;
      *(v43 + 24) = v44;
      (*(v7 + 32))(v43 + v42, &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      v61 = sub_10057C9F8;
      v62 = v43;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100006684;
      v60 = &unk_1016270A8;
      v45 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v56 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v35 = v51;
      v36 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v46 = v48;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v45);
    }
  }

  else
  {

    static os_log_type_t.error.getter();
    v48 = v24;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v17 + 8))(v20, v16);
    v39 = swift_allocObject();
    v40 = v50;
    *(v39 + 16) = v49;
    *(v39 + 24) = v40;
    v61 = sub_10057CA24;
    v62 = v39;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100006684;
    v60 = &unk_1016270F8;
    v41 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v35 = v51;
    v36 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    sub_1001E61B8(v48);
  }

  (*(v54 + 8))(v35, v36);
  (*(v52 + 8))(v15, v53);
}

uint64_t sub_100543478(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_1000BC4D4(a4, a5);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  *(&v14 - v11) = a3;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a1(v12);
  return sub_10000B3A8(v12, a4, a5);
}

void sub_100543540(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, NSObject *a6)
{
  v42 = a5;
  v43 = a6;
  v40 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v38[-v14];
  v16 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v38[-v18];
  v41 = a1;
  sub_1000D2A70(a1, &v38[-v18], &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v22 = qword_10177C378;
    if (os_log_type_enabled(qword_10177C378, v21))
    {
      v23 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_1000136BC(a3, v40, v44);
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_1000136BC(v24, v25, v44);

      *(v23 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v22, v21, "Failed to send message to %s: (%s)", v23, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    (*(v9 + 32))(v15, v19, v8);
    v28 = static os_log_type_t.info.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v29 = qword_10177C378;
    (*(v9 + 16))(v13, v15, v8);
    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      v39 = v28;
      v31 = v30;
      v44[0] = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_1000136BC(a3, v40, v44);
      *(v31 + 12) = 2080;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v35 = *(v9 + 8);
      v35(v13, v8);
      v36 = sub_1000136BC(v32, v34, v44);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v39, "Successfully sent message to %s: (%s)", v31, 0x16u);
      swift_arrayDestroy();

      v27 = (v35)(v15, v8);
    }

    else
    {
      v37 = *(v9 + 8);
      v37(v13, v8);
      v27 = (v37)(v15, v8);
    }
  }

  __chkstk_darwin(v27);
  *&v38[-16] = v41;
  sub_1000BC4D4(&qword_1016A46E8, &qword_1013B1008);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  dispatch_group_leave(v43);
}

uint64_t sub_100543A7C(void **a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = v13 - v7;
  sub_1000D2A70(a2, v13 - v7, &qword_10169F358, &qword_1013A0810);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100A5D2B4(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100A5D2B4(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = sub_1000D2AD8(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, &qword_10169F358, &qword_1013A0810);
  *a1 = v9;
  return result;
}

void sub_100543BF0(unsigned __int8 a1@<W0>, os_log_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, char a11, char a12)
{
  v13 = v12;
  LODWORD(v177) = a7;
  v174 = a8;
  v179 = v13;
  v180 = *v13;
  v20 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v175 = (v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v178 = (v161 - v24);
  v25 = type metadata accessor for UUID();
  v182 = *(v25 - 8);
  v183 = v25;
  v26 = *(v182 + 64);
  v27 = __chkstk_darwin(v25);
  v173 = v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = v161 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = (v161 - v33);
  v35 = __chkstk_darwin(v32);
  v37 = v161 - v36;
  __chkstk_darwin(v35);
  v186 = a1;
  v187 = a2;
  v188 = a3;
  v39 = v161 - v38;
  v189 = a4;
  UUID.init()();
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = a5;
  *(inited + 40) = a6;

  v41 = sub_101129930(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v42 = type metadata accessor for PropertyListEncoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000BC4D4(&qword_1016A49C8, &qword_1013B1378);
  sub_1000041A4(&qword_1016A49D0, &qword_1016A49C8, &qword_1013B1378);
  v45 = v181;
  v46 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v45)
  {
    (*(v182 + 8))(v39, v183);

    return;
  }

  v170 = v34;
  v176 = v46;
  v181 = v47;
  v165 = 0;
  v166 = v31;

  if (a12)
  {
    v48 = 0xD000000000000017;
  }

  else
  {
    v48 = 0x6567617373656DLL;
  }

  if (a12)
  {
    v49 = 0x800000010135AAC0;
  }

  else
  {
    v49 = 0xE700000000000000;
  }

  v172 = v39;
  v171 = sub_100580FCC(v39, v177 & 1, a9, a10, a11 & 1, a12 & 1);
  v50 = v178;
  sub_1000D2A70(a9, v178, &qword_1016980D0, &unk_10138F3B0);
  v52 = v182;
  v51 = v183;
  v53 = *(v182 + 48);
  v169 = v182 + 48;
  v168 = v53;
  v54 = v53(v50, 1, v183);
  v55 = &qword_101695000;
  v177 = v41;
  if (v54 == 1)
  {
    sub_10000B3A8(v50, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000076D4(v56, qword_10177C4F0);
    v57 = v186;
    v58 = v188;
    v178 = v187;
    v59 = v189;
    sub_100017D5C(v188, v189);

    sub_100017D5C(v58, v59);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v167 = v48;
      v63 = v62;
      v64 = swift_slowAlloc();
      v170 = v64;
      *v63 = 136315906;
      v184 = v180;
      v185 = v64;
      sub_1000BC4D4(&qword_1016A49D8, &qword_1013B1380);
      v65 = String.init<A>(describing:)();
      v164 = v61;
      v67 = sub_1000136BC(v65, v66, &v185);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      v68 = sub_1000136BC(v167, v49, &v185);

      *(v63 + 14) = v68;
      *(v63 + 22) = 2080;
      sub_100D47A5C(v57, v178, v58, v59);
      v70 = v69;
      v72 = v71;
      sub_100016590(v58, v59);
      sub_100016590(v58, v59);
      v73 = sub_1000136BC(v70, v72, &v185);

      *(v63 + 24) = v73;
      *(v63 + 32) = 2080;
      v74 = Set.description.getter();
      v76 = sub_1000136BC(v74, v75, &v185);

      *(v63 + 34) = v76;
      _os_log_impl(&_mh_execute_header, v60, v164, "%s: Sending %s: %s to %s", v63, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      sub_100016590(v58, v59);

      sub_100016590(v58, v59);
    }

    v106 = v171;
    v55 = &qword_101695000;
  }

  else
  {
    v167 = v48;
    v77 = v37;
    (*(v52 + 32))(v37, v50, v51);
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_1000076D4(v78, qword_10177C4F0);
    v164 = v186;
    v79 = v188;
    v163 = v187;
    v80 = v189;
    (*(v52 + 16))(v170, v77, v51);
    sub_100017D5C(v79, v80);
    sub_100017D5C(v79, v80);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();

    LODWORD(v178) = v82;
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v162 = v77;
      v84 = v83;
      v85 = swift_slowAlloc();
      v161[1] = v85;
      *v84 = 136316162;
      v184 = v180;
      v185 = v85;
      sub_1000BC4D4(&qword_1016A49D8, &qword_1013B1380);
      v86 = String.init<A>(describing:)();
      v161[0] = v81;
      v88 = sub_1000136BC(v86, v87, &v185);

      *(v84 + 4) = v88;
      *(v84 + 12) = 2080;
      v89 = sub_1000136BC(v167, v49, &v185);

      *(v84 + 14) = v89;
      *(v84 + 22) = 2080;
      sub_100D47A5C(v164, v163, v79, v80);
      v91 = v90;
      v93 = v92;
      sub_100016590(v79, v80);
      sub_100016590(v79, v80);
      v94 = sub_1000136BC(v91, v93, &v185);

      *(v84 + 24) = v94;
      *(v84 + 32) = 2080;
      v95 = Set.description.getter();
      v97 = sub_1000136BC(v95, v96, &v185);

      *(v84 + 34) = v97;
      *(v84 + 42) = 2080;
      v98 = v183;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
      v99 = v170;
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v101;
      v103 = *(v52 + 8);
      v103(v99, v98);
      v104 = sub_1000136BC(v100, v102, &v185);

      *(v84 + 44) = v104;
      v105 = v161[0];
      _os_log_impl(&_mh_execute_header, v161[0], v178, "%s: Sending %s: %s to %s in response to %s", v84, 0x34u);
      swift_arrayDestroy();

      v103(v162, v98);
      v55 = &qword_101695000;
    }

    else
    {
      sub_100016590(v79, v80);

      sub_100016590(v79, v80);

      v107 = *(v52 + 8);
      v108 = v183;
      v107(v170, v183);
      v107(v77, v108);
    }

    v106 = v171;
  }

  if (v55[50] != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  sub_1000076D4(v109, qword_10177C4F0);

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *v112 = 136315394;
    v184 = v180;
    v185 = v113;
    sub_1000BC4D4(&qword_1016A49D8, &qword_1013B1380);
    v114 = String.init<A>(describing:)();
    v116 = sub_1000136BC(v114, v115, &v185);

    *(v112 + 4) = v116;
    *(v112 + 12) = 2080;
    v117 = Dictionary.description.getter();
    v119 = sub_1000136BC(v117, v118, &v185);

    *(v112 + 14) = v119;
    _os_log_impl(&_mh_execute_header, v110, v111, "%s: IDSSendMessageOptions: %s", v112, 0x16u);
    swift_arrayDestroy();
  }

  v120 = v179[7];
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100D1B288(v177);

  v122 = Set._bridgeToObjectiveC()().super.isa;

  sub_1006950E0(v106);

  v123 = Dictionary._bridgeToObjectiveC()().super.isa;

  v184 = 0;
  v185 = 0;
  v124 = [v120 sendData:isa toDestinations:v122 priority:300 options:v123 identifier:&v184 error:&v185];

  v126 = v184;
  v125 = v185;
  if (!v124)
  {
    v132 = v185;
    v129 = v126;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v176, v181);
    (*(v182 + 8))(v172, v183);
    goto LABEL_31;
  }

  v127 = v183;
  if (v184)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v125;
    v129 = v126;
    v130 = v175;
    UUID.init(uuidString:)();

    if (v168(v130, 1, v127) == 1)
    {
      sub_10000B3A8(v130, &qword_1016980D0, &unk_10138F3B0);
      sub_1001DCF6C();
      swift_allocError();
      *v131 = 0;
      swift_willThrow();
      sub_100016590(v176, v181);
      (*(v182 + 8))(v172, v127);
LABEL_31:

      return;
    }

    v179 = v129;
    v135 = v182;
    v136 = v166;
    v178 = *(v182 + 32);
    (v178)(v166, v130, v127);
    LODWORD(v177) = v186;
    v137 = v188;
    v175 = v187;
    v138 = v189;
    v139 = v173;
    (*(v135 + 16))(v173, v136, v127);
    sub_100017D5C(v137, v138);
    sub_100017D5C(v137, v138);
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v170 = v140;
      v143 = v142;
      v144 = swift_slowAlloc();
      v171 = v144;
      *v143 = 136315650;
      v184 = v180;
      v185 = v144;
      sub_1000BC4D4(&qword_1016A49D8, &qword_1013B1380);
      v145 = String.init<A>(describing:)();
      LODWORD(v180) = v141;
      v147 = v135;
      v148 = sub_1000136BC(v145, v146, &v185);

      *(v143 + 4) = v148;
      *(v143 + 12) = 2080;
      sub_100D47A5C(v177, v175, v137, v138);
      v150 = v149;
      v152 = v151;
      sub_100016590(v137, v138);
      sub_100016590(v137, v138);
      v153 = sub_1000136BC(v150, v152, &v185);

      *(v143 + 14) = v153;
      *(v143 + 22) = 2080;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      v157 = *(v147 + 8);
      v157(v139, v127);
      v158 = sub_1000136BC(v154, v156, &v185);

      *(v143 + 24) = v158;
      v159 = v170;
      _os_log_impl(&_mh_execute_header, v170, v180, "%s: Sent message %s with identifier: %s", v143, 0x20u);
      swift_arrayDestroy();

      sub_100016590(v176, v181);

      v157(v172, v127);
      v136 = v166;
    }

    else
    {
      sub_100016590(v137, v138);
      sub_100016590(v176, v181);

      sub_100016590(v137, v138);
      v160 = *(v135 + 8);
      v160(v139, v127);
      v160(v172, v127);
    }

    (v178)(v174, v136, v127);
  }

  else
  {
    sub_1001DCF6C();
    swift_allocError();
    *v133 = 0;
    swift_willThrow();
    v134 = v125;
    sub_100016590(v176, v181);
    (*(v182 + 8))(v172, v127);
  }
}

uint64_t sub_100544E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = *(a2 + 168);
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v10 + 32))(v14 + v13, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v15 = (v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a4;
  v15[1] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10058B6D4;
  *(v16 + 24) = v14;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_1016295B0;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v12, v17);
  _Block_release(v17);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100545064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = *(a1 + 192);
  if (!*(v21 + 16))
  {
    return swift_endAccess();
  }

  v22 = sub_1000210EC(a2);
  if ((v23 & 1) == 0)
  {
    return swift_endAccess();
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  if (v24 >> 62)
  {
    if (v24 >> 62 == 1)
    {
      v25 = v24 & 0x3FFFFFFFFFFFFFFFLL;
      swift_errorRetain();
      static os_log_type_t.error.getter();
      v48 = v24;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_101385D80;
      aBlock = v24 & 0x3FFFFFFFFFFFFFFFLL;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_100008C00();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      os_log(_:dso:log:_:_:)();

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
      v30 = static OS_dispatch_queue.global(qos:)();
      (*(v17 + 8))(v20, v16);
      v31 = swift_allocObject();
      v32 = v50;
      v31[2] = v49;
      v31[3] = v32;
      v31[4] = v25;
      v61 = sub_10058D73C;
      v62 = v31;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100006684;
      v60 = &unk_101629600;
      v33 = _Block_copy(&aBlock);
      v34 = v48;
      sub_10057C920(v48);

      static DispatchQoS.unspecified.getter();
      v56 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v35 = v51;
      v36 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      sub_1001E61B8(v34);
    }

    else
    {
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
      v48 = static OS_dispatch_queue.global(qos:)();
      (*(v17 + 8))(v20, v16);
      (*(v7 + 16))(&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
      v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v43 = swift_allocObject();
      v44 = v50;
      *(v43 + 16) = v49;
      *(v43 + 24) = v44;
      (*(v7 + 32))(v43 + v42, &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      v61 = sub_10058D4F4;
      v62 = v43;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100006684;
      v60 = &unk_101629650;
      v45 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v56 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v35 = v51;
      v36 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v46 = v48;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v45);
    }
  }

  else
  {

    static os_log_type_t.error.getter();
    v48 = v24;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v17 + 8))(v20, v16);
    v39 = swift_allocObject();
    v40 = v50;
    *(v39 + 16) = v49;
    *(v39 + 24) = v40;
    v61 = sub_10058D53C;
    v62 = v39;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100006684;
    v60 = &unk_1016296A0;
    v41 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v35 = v51;
    v36 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    sub_1001E61B8(v48);
  }

  (*(v54 + 8))(v35, v36);
  (*(v52 + 8))(v15, v53);
}

uint64_t sub_100545A78(void (*a1)(uint64_t *))
{
  v2 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v7 - v4);
  sub_10057C95C();
  *v5 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_10000B3A8(v5, &qword_10169F358, &qword_1013A0810);
}

uint64_t sub_100545B58(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v8, a3, v9);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_10000B3A8(v8, &qword_10169F358, &qword_1013A0810);
}

uint64_t sub_100545C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v31[1] = a4;
  v32 = a2;
  v35 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v38 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v18, v14);
  v24 = swift_allocObject();
  v25 = v33;
  v26 = v35;
  v24[2] = v32;
  v24[3] = v26;
  v24[4] = a1;
  aBlock[4] = v25;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v34;
  v27 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v28 = v38;
  v29 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v39 + 8))(v28, v29);
  (*(v36 + 8))(v13, v37);
}

uint64_t sub_100546130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = UUID.uuidString.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();

  v10 = *(a2 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 192);
  *(a2 + 192) = 0x8000000000000000;
  sub_100FFE25C(a3, a1, isUniquelyReferenced_nonNull_native);
  *(a2 + 192) = v13;
  return swift_endAccess();
}

uint64_t sub_1005462C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v42);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v24 = *(a1 + 192);
  if (!*(v24 + 16))
  {
    return swift_endAccess();
  }

  v25 = sub_1000210EC(a2);
  if ((v26 & 1) == 0)
  {
    return swift_endAccess();
  }

  v27 = *(*(v24 + 56) + 8 * v25);
  result = swift_endAccess();
  if (!(v27 >> 62))
  {
    sub_10057C920(v27);

    static os_log_type_t.error.getter();
    v35 = v27;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    (*(v20 + 16))(v23, a2, v19);
    swift_beginAccess();
    sub_1001DF51C(0xF000000000000007, v23);
    swift_endAccess();
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);
    v29 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v18, v14);
    v30 = v35;
    aBlock[4] = v38;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = v39;
    v31 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v32 = v41;
    v33 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    sub_1001E61B8(v30);
    sub_1001E61B8(v30);
    (*(v43 + 8))(v32, v33);
    (*(v40 + 8))(v13, v42);
  }

  return result;
}

uint64_t sub_100546800()
{
  sub_10057C95C();
  swift_allocError();
  Future.finish(error:)();
}

uint64_t sub_10054686C()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  sub_101074EA4(v2);

  result = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  qword_1016A44F0 = result;
  return result;
}

uint64_t sub_100546944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100546968, 0, 0);
}

uint64_t sub_100546968()
{
  if (qword_1016947C8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v8 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100546AB4;
  v6 = v0[3];

  return (v8)(v6, &unk_1013B1058, v3, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100546AB4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_10058D72C;
  }

  else
  {

    v6 = sub_100546BFC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100546C24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100546C44, 0, 0);
}

uint64_t sub_100546C44()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_100546CB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = type metadata accessor for Transaction();
    __chkstk_darwin(v1);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_100546D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v22 = *(v10 - 8);
  v23 = v10;
  v11 = *(v22 + 64);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OwnedBeaconRecord();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v21[1] = *(a2 + 184);
  sub_10058B200(a3, v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_100589B28(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for OwnedBeaconRecord);
  aBlock[4] = sub_10057F698;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101627B70;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v9, v6);
  (*(v22 + 8))(v13, v23);
}

uint64_t sub_10054712C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  Transaction.capture()();
  sub_1005473E4(a3);
  type metadata accessor for Transaction();
  sub_10058B200(a3, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  sub_100589B28(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for OwnedBeaconRecord);

  static Transaction.asyncTask(name:block:)();
}

void sub_1005473E4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v4 + 184);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  sub_100547644(a1);
  if (v2)
  {
    return;
  }

  v3 = v14;
  v10 = v15;
  v22 = v13;
  v23 = 0;
  static os_log_type_t.default.getter();
  if (qword_101695058 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1 + *(type metadata accessor for OwnedBeaconRecord() + 20);
  v18 = UUID.uuidString.getter();
  v20 = v19;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  os_log(_:dso:log:_:_:)();

  sub_100548EBC(a1, v3);
  sub_100549C10(a1, v22, v10);
}

void sub_100547644(uint64_t a1)
{
  v2 = v1;
  v151 = a1;
  v145 = type metadata accessor for CorrelationIdentifierMap();
  v3 = *(v145 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v145);
  v144 = v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v159 = v142 - v11;
  v160 = type metadata accessor for ShareRecord();
  v12 = *(v160 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v160);
  v158 = v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v142 - v17;
  __chkstk_darwin(v16);
  v156 = v142 - v19;
  v20 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v148 = v142 - v22;
  v150 = type metadata accessor for DirectorySequence();
  v149 = *(v150 - 8);
  v23 = *(v149 + 64);
  __chkstk_darwin(v150);
  *&v163 = v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for URL();
  v153 = *(v147 - 8);
  v25 = *(v153 + 64);
  v26 = __chkstk_darwin(v147);
  v146 = v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v152 = v142 - v28;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = (v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v164[0] = 0x7365547265646E75;
  v164[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v165 == 1)
  {
    sub_100909CAC(_swiftEmptyArrayStorage);
    return;
  }

  v143 = v3;
  v34 = v1[23];
  *v33 = v34;
  (*(v30 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v29);
  v35 = v34;
  v36 = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v33, v29);
  if (v36)
  {
    v157 = v10;
    v37 = v2[18];
    v36 = *(type metadata accessor for OwnedBeaconRecord() + 20);
    v162 = *(v37 + 168);
    v2 = objc_autoreleasePoolPush();
    if (qword_101694468 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_7:
  v38 = v147;
  sub_1000076D4(v147, qword_10177A518);
  v142[1] = v36;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v2);
  v164[0] = _swiftEmptyArrayStorage;
  v165 = _swiftEmptyArrayStorage;
  v39 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v40 = v148;
  DirectorySequence.next()();
  v41 = v38;
  v42 = v153;
  v155 = *(v153 + 48);
  if ((v155)(v40, 1, v41) == 1)
  {
LABEL_11:
    (*(v149 + 8))(v163, v150);
    LODWORD(v163) = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v47 = v41;
    v48 = static OS_os_log.default.getter();
    v150 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10138BBE0;
    v50 = v164[0];
    v51 = *(v164[0] + 16);
    *(v49 + 56) = &type metadata for Int;
    *(v49 + 64) = &protocol witness table for Int;
    *(v49 + 32) = v51;
    v52 = sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL);

    v53 = v152;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    *(v49 + 96) = &type metadata for String;
    v149 = sub_100008C00();
    *(v49 + 104) = v149;
    *(v49 + 72) = v54;
    *(v49 + 80) = v56;
    os_log(_:dso:log:_:_:)();

    (*(v153 + 8))(v53, v47);

    v57 = *(v50 + 16);
    if (v57)
    {
      v155 = (v156 + *(v160 + 36));
      v58 = v50 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v154 = *(v12 + 72);
      v59 = _swiftEmptyArrayStorage;
      do
      {
        v60 = v156;
        sub_10058B200(v58, v156, type metadata accessor for ShareRecord);
        LODWORD(v163) = *v155;
        v61 = *(v155 + 2);
        v162 = *(v155 + 1);

        sub_10058B268(v60, type metadata accessor for ShareRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_100A5C1F8(0, *(v59 + 2) + 1, 1, v59);
        }

        v63 = *(v59 + 2);
        v62 = *(v59 + 3);
        if (v63 >= v62 >> 1)
        {
          v59 = sub_100A5C1F8((v62 > 1), v63 + 1, 1, v59);
        }

        *(v59 + 2) = v63 + 1;
        v64 = &v59[24 * v63];
        v64[32] = v163;
        *(v64 + 5) = v162;
        *(v64 + 6) = v61;
        v58 += v154;
        --v57;
      }

      while (v57);
    }

    else
    {
      v59 = _swiftEmptyArrayStorage;
    }

    v162 = sub_101129FC8(v59);

    v156 = sub_100589064();
    v65 = Set.init(minimumCapacity:)();
    v66 = 0;
    v165 = v65;
    *&v163 = v12 + 56;
    v67 = (v12 + 48);
    while (1)
    {
      v68 = *(v50 + 16);
      v69 = v160;
      if (v66 != v68)
      {
        v71 = v66;
        v70 = v157;
        while ((v66 & 0x8000000000000000) == 0)
        {
          if (v71 >= *(v50 + 16))
          {
            goto LABEL_50;
          }

          v72 = v71 + 1;
          sub_10058B200(v50 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v71, v18, type metadata accessor for ShareRecord);
          v73 = &v18[*(v69 + 40)];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = v75 & 0xFFFFFFFFFFFFLL;
          if ((v74 & 0x2000000000000000) != 0)
          {
            v77 = HIBYTE(v74) & 0xF;
          }

          else
          {
            v77 = v76;
          }

          if (v77)
          {
            v78 = v159;
            sub_100589B28(v18, v159, type metadata accessor for ShareRecord);
            (*v163)(v78, 0, 1, v69);
            v66 = v72;
            goto LABEL_34;
          }

          v65 = sub_10058B268(v18, type metadata accessor for ShareRecord);
          v71 = v72;
          if (v68 == v72)
          {
            v66 = v68;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v70 = v157;
LABEL_32:
      v78 = v159;
      (*v163)(v159, 1, 1, v69);
LABEL_34:
      sub_1000D2AD8(v78, v70, &qword_1016A4780, &qword_1013B34F0);
      if ((*v67)(v70, 1, v69) == 1)
      {
        break;
      }

      v79 = v158;
      sub_100589B28(v70, v158, type metadata accessor for ShareRecord);
      v80 = (v79 + *(v69 + 36));
      v82 = *(v80 + 1);
      v81 = *(v80 + 2);
      v83 = *v80;

      sub_10058B268(v79, type metadata accessor for ShareRecord);
      sub_100DEB438(v164, v83, v82, v81);
    }

    v12 = v165;
    v84 = v161;
    v85 = sub_100582A7C();
    if (v84)
    {
      goto LABEL_47;
    }

    v66 = v85;
    v86 = *(v85 + 16);
    v87 = _swiftEmptyArrayStorage;
    if (v86)
    {
      v160 = v12;
      v161 = 0;
      v164[0] = _swiftEmptyArrayStorage;
      sub_101124900(0, v86, 0);
      v87 = v164[0];
      *&v163 = v66;
      v88 = (v66 + 64);
      do
      {
        v89 = *(v88 - 32);
        v90 = *(v88 - 3);
        v91 = *(v88 - 2);
        v92 = *(v88 - 1);
        v93 = *v88;

        sub_10002E98C(v92, v93);
        sub_100006654(v92, v93);
        v164[0] = v87;
        v95 = v87[2];
        v94 = v87[3];
        if (v95 >= v94 >> 1)
        {
          sub_101124900((v94 > 1), v95 + 1, 1);
          v87 = v164[0];
        }

        v87[2] = v95 + 1;
        v96 = &v87[3 * v95];
        *(v96 + 32) = v89;
        v88 += 5;
        v96[5] = v90;
        v96[6] = v91;
        --v86;
      }

      while (v86);
      v12 = v160;
      v97 = v161;
      v66 = v163;
    }

    else
    {
      v97 = 0;
    }

    v68 = sub_101129FC8(v87);

    v69 = v162;

    v99 = sub_10039DC8C(v98, v12);

    v101 = sub_10039DC8C(v100, v99);
    v102 = swift_allocObject();
    v102[2] = v101;
    v102[3] = v12;
    v102[4] = v69;

    v67 = v144;
    v18 = v145;
    v52 = v97;
    unsafeFromAsyncTask<A>(_:)();
    if (v97)
    {

LABEL_47:

LABEL_48:

      return;
    }

    v65 = sub_1004F019C(v68);
LABEL_51:
    v103 = v65;
    v104 = sub_1004F019C(v12);
    if (v52)
    {
      (*(v143 + 8))(v67, v18);

      goto LABEL_48;
    }

    v105 = v104;

    if (*(v105 + 16) <= v103[2] >> 3)
    {
      v164[0] = v103;
      sub_10087DA70(v105);
    }

    else
    {
      sub_100615308(v105, v103);
    }

    v160 = sub_1004F04AC();

    v106 = sub_1004F019C(v69);

    v107 = sub_1004F019C(v68);

    if (*(v107 + 16) <= v106[2] >> 3)
    {
      v164[0] = v106;
      sub_10087DA70(v107);
    }

    else
    {
      sub_100615308(v107, v106);
    }

    v155 = sub_1004F04AC();

    v108 = sub_100909CAC(_swiftEmptyArrayStorage);
    v109 = *(v66 + 16);
    v161 = 0;
    if (v109)
    {
      v110 = 0;
      v157 = v109;
      v158 = v66 + 32;
      v111 = v160;
      v162 = v160 + 56;
      *&v163 = v66;
      while (v110 < *(v66 + 16))
      {
        v159 = v108;
        v114 = (v158 + 40 * v110);
        v116 = v114[2];
        v115 = v114[3];
        v117 = v114[4];
        if (*(v111 + 16))
        {
          v118 = *v114;
          v119 = v114[1];
          v120 = *(v111 + 40);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v118);

          sub_10002E98C(v115, v117);

          sub_10002E98C(v115, v117);

          String.hash(into:)();
          v121 = Hasher._finalize()();
          v122 = -1 << *(v160 + 32);
          v123 = v121 & ~v122;
          if ((*(v162 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123))
          {
            v124 = ~v122;
            v125 = *(v160 + 48);
            while (1)
            {
              v126 = (v125 + 24 * v123);
              if (*v126 == v118)
              {
                v127 = *(v126 + 1) == v119 && *(v126 + 2) == v116;
                if (v127 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }
              }

              v123 = (v123 + 1) & v124;
              if (((*(v162 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) == 0)
              {
                sub_100006654(v115, v117);
                swift_bridgeObjectRelease_n();
                sub_100006654(v115, v117);
                v129 = v159;

                v108 = v129;
                v66 = v163;
                v109 = v157;
                goto LABEL_64;
              }
            }

            v109 = v157;
            if (v117 >> 60 == 15)
            {

              sub_100006654(v115, v117);

              goto LABEL_79;
            }

            sub_100017D5C(v115, v117);
            v130 = v159;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v164[0] = v130;
            sub_100FFE428(v115, v117, v118, v119, v116, isUniquelyReferenced_nonNull_native);
            sub_100006654(v115, v117);

            sub_100006654(v115, v117);

            v108 = v164[0];
          }

          else
          {
            sub_100006654(v115, v117);
            swift_bridgeObjectRelease_n();
            sub_100006654(v115, v117);
LABEL_79:
            v128 = v159;

            v108 = v128;
          }

          v66 = v163;
        }

        else
        {
          v112 = v114[2];

          sub_10002E98C(v115, v117);

          sub_10002E98C(v115, v117);
          v113 = v159;

          sub_100006654(v115, v117);
          swift_bridgeObjectRelease_n();
          sub_100006654(v115, v117);

          v108 = v113;
        }

LABEL_64:
        ++v110;
        v111 = v160;
        if (v110 == v109)
        {
          goto LABEL_83;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_83:
      v159 = v108;

      static os_log_type_t.default.getter();
      if (qword_101695058 == -1)
      {
LABEL_84:
        v132 = swift_allocObject();
        v163 = xmmword_101385D80;
        *(v132 + 16) = xmmword_101385D80;
        v133 = UUID.uuidString.getter();
        v134 = v149;
        *(v132 + 56) = &type metadata for String;
        *(v132 + 64) = v134;
        *(v132 + 32) = v133;
        *(v132 + 40) = v135;
        os_log(_:dso:log:_:_:)();

        static os_log_type_t.default.getter();
        v136 = swift_allocObject();
        *(v136 + 16) = v163;
        v137 = Set.description.getter();
        *(v136 + 56) = &type metadata for String;
        *(v136 + 64) = v134;
        *(v136 + 32) = v137;
        *(v136 + 40) = v138;
        os_log(_:dso:log:_:_:)();

        static os_log_type_t.default.getter();
        v139 = swift_allocObject();
        *(v139 + 16) = v163;
        v140 = Set.description.getter();
        *(v139 + 56) = &type metadata for String;
        *(v139 + 64) = v134;
        *(v139 + 32) = v140;
        *(v139 + 40) = v141;
        os_log(_:dso:log:_:_:)();

        (*(v143 + 8))(v144, v145);
        return;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  v154 = *(v42 + 32);
  v43 = (v42 + 8);
  v44 = v146;
  while (1)
  {
    v154(v44, v40, v41);
    v45 = objc_autoreleasePoolPush();
    v46 = v161;
    sub_1005FF9CC(v44, v162, v164, &v165);
    v161 = v46;
    if (v46)
    {
      break;
    }

    objc_autoreleasePoolPop(v45);
    (*v43)(v44, v41);
    DirectorySequence.next()();
    if ((v155)(v40, 1, v41) == 1)
    {
      goto LABEL_11;
    }
  }

  objc_autoreleasePoolPop(v45);
  __break(1u);
}

uint64_t sub_100548BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100548C14, 0, 0);
}

uint64_t sub_100548C14()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100548D28;
  v6 = v0[2];
  v7 = v0[3];

  return sub_1004EF498(v6, 0xD00000000000001BLL, 0x800000010134CCA0, v7, sub_100589FEC, v4);
}

uint64_t sub_100548D28()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100548E1C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  if ((sub_10111FDB4(a4, a5, a6, a7) & 1) == 0)
  {
    if (sub_10111FDB4(v11, a5, a6, a8))
    {
      v11 = v11;
    }

    else
    {
      v11 = a1;
    }
  }

  return v11;
}

uint64_t sub_100548EBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ShareRecord();
  v7 = *(v6 - 8);
  v103 = v6;
  v104 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v106 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105 = &v85 - v11;
  v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v97 = &v85 - v14;
  v96 = type metadata accessor for DirectorySequence();
  v15 = *(v96 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v96);
  v95 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for URL();
  v18 = *(v94 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v94);
  v86 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v102 = &v85 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v3[23];
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v27, v23);
  if (v30)
  {
    v32 = a2 + 56;
    v33 = 1 << *(a2 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a2 + 56);
    v36 = (v33 + 63) >> 6;
    v93 = (v18 + 48);
    v92 = (v15 + 8);

    v37 = 0;
    v101 = xmmword_10138BBE0;
    v91 = a2;
    v90 = v3;
    v89 = a1;
    v88 = a2 + 56;
    v87 = v36;
    v85 = (v18 + 32);
    v111 = (v18 + 8);
    if (!v35)
    {
      goto LABEL_5;
    }

    do
    {
LABEL_9:
      v99 = v37;
      v100 = v35;
      v39 = (*(a2 + 48) + 24 * (__clz(__rbit64(v35)) | (v37 << 6)));
      v112 = *v39;
      v40 = *(v39 + 2);
      v110 = *(v39 + 1);
      v41 = v3[18];
      v42 = *(type metadata accessor for OwnedBeaconRecord() + 20);
      v43 = *(v41 + 168);
      v109 = v40;

      v44 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v45 = v94;
      sub_1000076D4(v94, qword_10177A518);
      v98 = v42;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      objc_autoreleasePoolPop(v44);
      v113 = _swiftEmptyArrayStorage;
      v114 = _swiftEmptyArrayStorage;
      v46 = [objc_opt_self() defaultManager];
      v47 = v95;
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      v48 = v97;
      DirectorySequence.next()();
      v49 = v45;
      v50 = *v93;
      v51 = (*v93)(v48, 1, v45);
      v52 = v105;
      if (v51 != 1)
      {
        v53 = *v85;
        v107 = v43;
        v108 = v53;
        v54 = v86;
        do
        {
          v108(v54, v48, v49);
          v55 = v49;
          v56 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v54, v107, &v114, &v113);
          objc_autoreleasePoolPop(v56);
          (*v111)(v54, v55);
          DirectorySequence.next()();
          v49 = v55;
        }

        while (v50(v48, 1, v55) != 1);
      }

      (*v92)(v47, v96);
      static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v57 = v49;
      v58 = static OS_os_log.default.getter();
      v108 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v59 = swift_allocObject();
      *(v59 + 16) = v101;
      v60 = v114;
      v61 = v114[2];
      *(v59 + 56) = &type metadata for Int;
      *(v59 + 64) = &protocol witness table for Int;
      *(v59 + 32) = v61;
      sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL);

      v62 = v102;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      *(v59 + 96) = &type metadata for String;
      v107 = sub_100008C00();
      *(v59 + 104) = v107;
      *(v59 + 72) = v63;
      *(v59 + 80) = v65;
      os_log(_:dso:log:_:_:)();

      (*v111)(v62, v57);

      v66 = *(v60 + 16);
      if (v66)
      {
        v67 = 0;
        v68 = _swiftEmptyArrayStorage;
        v69 = v103;
        v70 = v104;
        while (v67 < *(v60 + 16))
        {
          v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v72 = *(v70 + 72);
          sub_10058B200(v60 + v71 + v72 * v67, v52, type metadata accessor for ShareRecord);
          v73 = (v52 + *(v69 + 36));
          if (*v73 == v112 && (*(v73 + 1) == v110 ? (v74 = *(v73 + 2) == v109) : (v74 = 0), v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            sub_100589B28(v52, v106, type metadata accessor for ShareRecord);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v114 = v68;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101124CDC(0, v68[2] + 1, 1);
              v69 = v103;
              v68 = v114;
            }

            v77 = v68[2];
            v76 = v68[3];
            if (v77 >= v76 >> 1)
            {
              sub_101124CDC(v76 > 1, v77 + 1, 1);
              v69 = v103;
              v68 = v114;
            }

            v68[2] = v77 + 1;
            result = sub_100589B28(v106, v68 + v71 + v77 * v72, type metadata accessor for ShareRecord);
            v70 = v104;
            v52 = v105;
          }

          else
          {
            result = sub_10058B268(v52, type metadata accessor for ShareRecord);
          }

          if (v66 == ++v67)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      v68 = _swiftEmptyArrayStorage;
LABEL_31:

      static os_log_type_t.default.getter();
      if (qword_101695058 != -1)
      {
        swift_once();
      }

      v78 = (v100 - 1) & v100;
      v79 = swift_allocObject();
      *(v79 + 16) = v101;
      v80 = UUID.uuidString.getter();
      v81 = v107;
      *(v79 + 56) = &type metadata for String;
      *(v79 + 64) = v81;
      *(v79 + 32) = v80;
      *(v79 + 40) = v82;
      *(v79 + 96) = &type metadata for String;
      *(v79 + 104) = v81;
      v83 = v109;
      *(v79 + 72) = v110;
      *(v79 + 80) = v83;
      os_log(_:dso:log:_:_:)();
      v35 = v78;

      v84 = type metadata accessor for Transaction();
      __chkstk_darwin(v84);
      v3 = v90;
      *(&v85 - 2) = v68;
      *(&v85 - 1) = v3;
      static Transaction.named<A>(_:with:)();

      a2 = v91;
      v32 = v88;
      v36 = v87;
      v37 = v99;
    }

    while (v35);
LABEL_5:
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {
      }

      v35 = *(v32 + 8 * v38);
      ++v37;
      if (v35)
      {
        v37 = v38;
        goto LABEL_9;
      }
    }

LABEL_37:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100549964(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result;
    v5 = *(type metadata accessor for ShareRecord() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {

      sub_100528B94(v6, sub_100589F30, v4);

      v6 += v7;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100549A40(uint64_t a1)
{
  Transaction.capture()();
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v3 = String.init<A>(describing:)();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100008C00();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }
}

void sub_100549C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v110 = a2;
  v106 = a1;
  v102 = type metadata accessor for ShareInstruction();
  v4 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v101 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharingRampState();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v107 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for UUID();
  v9 = *(v111 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v111);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = v3;
  v18 = *(v3 + 184);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    goto LABEL_45;
  }

  v20 = [objc_allocWithZone(ACAccountStore) init];
  v21 = [v20 aa_primaryAppleAccount];

  if (!v21)
  {
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_7;
  }

  sub_1000BC4D4(&qword_1016A4778, &qword_1013B10F8);
  unsafeFromAsyncTask<A>(_:)();
  v99 = v114;
  if (!v114)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177A560);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No BeaconSharingService available!", v28, 2u);
    }

    return;
  }

  v22 = [v21 aa_altDSID];
  v91 = v21;
  v108 = v12;
  if (v22)
  {
    v23 = v22;
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v24;
  }

  else
  {
    v98 = 0;
    v100 = 0xE000000000000000;
  }

  v29 = v110 + 56;
  v30 = 1 << *(v110 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v110 + 56);
  v33 = (v30 + 63) >> 6;
  v95 = (v9 + 16);
  v94 = (v9 + 8);

  v34 = 0;
  v35 = 0;
  *&v36 = 141558275;
  v92 = v36;
  v93 = xmmword_101385D80;
  v97 = v29;
  v96 = v33;
  while (v32)
  {
    v112 = v35;
LABEL_23:
    v38 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v39 = (*(v110 + 48) + 24 * (v38 | (v34 << 6)));
    v113 = *v39;
    v40 = *(v39 + 1);
    v41 = *(v39 + 2);

    v42 = v107;
    sub_10052FFA4(v107);
    v43 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    v44 = (*(*(v43 - 8) + 48))(v42, 2, v43);
    sub_10058B268(v42, type metadata accessor for SharingRampState);
    if (v44 == 2)
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177A560);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Beacon sharing is allowed to use item sharing for self beacons.", v48, 2u);
      }

      v49 = swift_allocObject();
      *(v49 + 16) = v99;
      *(v49 + 24) = v113;
      *(v49 + 32) = v40;
      *(v49 + 40) = v41;

      unsafeFromAsyncTask<A>(_:)();

      v50 = v114;

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      v53 = os_log_type_enabled(v51, v52);
      if (v50 == 1)
      {
        if (v53)
        {
          v54 = swift_slowAlloc();
          v55 = v41;
          v56 = swift_slowAlloc();
          v114 = v56;
          *v54 = v92;
          *(v54 + 4) = 1752392040;
          *(v54 + 12) = 2081;

          v57 = sub_1000136BC(v40, v55, &v114);

          *(v54 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v51, v52, "Destination has devices requiring legacy shares to %{private,mask.hash}s.", v54, 0x16u);
          sub_100007BAC(v56);
          v41 = v55;
        }

        goto LABEL_32;
      }

      if (v53)
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v114 = v88;
        *v87 = v92;
        *(v87 + 4) = 1752392040;
        *(v87 + 12) = 2081;
        v89 = sub_1000136BC(v40, v41, &v114);

        *(v87 + 14) = v89;
        _os_log_impl(&_mh_execute_header, v51, v52, "Skipping sending .automatic_legacy share to %{private,mask.hash}s since they have no devices not capable of item sharing", v87, 0x16u);
        sub_100007BAC(v88);
      }

      else
      {
      }

      v35 = v112;
    }

    else
    {
LABEL_32:
      v58 = *(v109 + 16);
      v105 = v40;
      if (v58 && (v59 = sub_100772110(v113, v40, v41), (v60 & 1) != 0))
      {
        v61 = (*(v109 + 56) + 16 * v59);
        v63 = *v61;
        v62 = v61[1];
        v64 = *(type metadata accessor for OwnedBeaconRecord() + 20);
        v90 = v62;
        sub_100017D5C(v63, v62);
        v65 = UUID.data.getter();
        v104 = v41;
        v67 = v66;
        v118 = v65;
        v119 = v66;
        v116 = &type metadata for Data;
        v117 = &protocol witness table for Data;
        v114 = v63;
        v115 = v62;
        v68 = sub_1000035D0(&v114, &type metadata for Data);
        v70 = *v68;
        v69 = v68[1];
        sub_100017D5C(v63, v62);
        sub_100017D5C(v65, v67);
        v71 = v112;
        sub_100017DB0(v70, v69);
        v112 = v71;
        sub_100016590(v65, v67);
        sub_100007BAC(&v114);
        v72 = v118;
        v73 = v119;
        v114 = v118;
        v115 = v119;
        sub_1000E0A3C();
        v74 = v108;
        v75 = v104;
        DataProtocol.stableUUID.getter();
        sub_100016590(v63, v90);
        sub_100016590(v72, v73);
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_101695058 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v76 = swift_allocObject();
        *(v76 + 16) = v93;
        *(v76 + 56) = &type metadata for String;
        *(v76 + 64) = sub_100008C00();
        *(v76 + 32) = v40;
        *(v76 + 40) = v41;

        os_log(_:dso:log:_:_:)();

        v74 = v108;
        UUID.init()();
        v75 = v41;
      }

      v78 = v101;
      v77 = v102;
      v79 = v106;
      sub_10058B200(v106, &v101[*(v102 + 24)], type metadata accessor for OwnedBeaconRecord);
      (*v95)(v78 + v77[8], v74, v111);
      v80 = v77[9];
      v81 = type metadata accessor for Date();
      (*(*(v81 - 8) + 56))(v78 + v80, 1, 1, v81);
      *v78 = 1;
      v82 = v100;
      *(v78 + 8) = v98;
      *(v78 + 16) = v82;
      v83 = v78 + v77[7];
      v84 = v113;
      *v83 = v113;
      v85 = v105;
      *(v83 + 8) = v105;
      *(v83 + 16) = v75;
      v86 = type metadata accessor for Transaction();
      v104 = &v90;
      __chkstk_darwin(v86);
      *(&v90 - 6) = v103;
      *(&v90 - 5) = v78;
      *(&v90 - 4) = v79;
      *(&v90 - 24) = v84;
      *(&v90 - 2) = v85;
      *(&v90 - 1) = v75;

      v35 = v112;
      static Transaction.named<A>(_:with:)();

      (*v94)(v108, v111);
      sub_10058B268(v78, type metadata accessor for ShareInstruction);
      v29 = v97;
      v33 = v96;
    }
  }

  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v37 >= v33)
    {

      return;
    }

    v32 = *(v29 + 8 * v37);
    ++v34;
    if (v32)
    {
      v112 = v35;
      v34 = v37;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_7:
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10054A8AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_10054A940;

  return daemon.getter();
}

uint64_t sub_10054A940(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100003DFC(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003DFC(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_10054AB1C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10054AB1C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;

  v8 = *(v4 + 32);
  if (v1)
  {

    v9 = sub_10054AC90;
  }

  else
  {

    *(v5 + 48) = a1;
    v9 = sub_10054AC70;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10054ACAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_100466D68;

  return sub_10018E438(a3, a4, a5);
}

uint64_t sub_10054AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v57 = a6;
  v56 = a4;
  v53 = a2;
  v54 = a3;
  v47 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v10 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v48 = (&v45 - v11);
  v52 = type metadata accessor for OwnedBeaconRecord();
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v52);
  v15 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  sub_10058B200(v56, &v45 - v19, type metadata accessor for OwnedBeaconRecord);
  v56 = v18;
  sub_10058B200(v20, v18, type metadata accessor for OwnedBeaconRecord);
  v21 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  sub_100589B28(v20, v23 + v21, type metadata accessor for OwnedBeaconRecord);
  v55 = v23;
  v24 = v23 + v22;
  v49 = a5;
  *v24 = a5;
  *(v24 + 8) = v57;
  *(v24 + 16) = a7;
  v50 = a7;

  v46 = a1;

  v51 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  v45 = xmmword_10138BBE0;
  *(v25 + 16) = xmmword_10138BBE0;
  v26 = type metadata accessor for ShareInstruction();
  v27 = v54;
  sub_10058B200(v54 + *(v26 + 24), v15, type metadata accessor for OwnedBeaconRecord);
  v28 = String.init<A>(describing:)();
  v30 = v29;
  *(v25 + 56) = &type metadata for String;
  v31 = sub_100008C00();
  *(v25 + 64) = v31;
  *(v25 + 32) = v28;
  *(v25 + 40) = v30;
  v32 = v27 + *(v26 + 28);
  v33 = *(v32 + 8);
  v34 = *(v32 + 16);
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v31;
  *(v25 + 72) = v33;
  *(v25 + 80) = v34;

  os_log(_:dso:log:_:_:)();

  v35 = v53;
  v36 = sub_1005401C0(v27);
  if (v36)
  {
    v37 = v36;
    static os_log_type_t.error.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = v45;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = v31;
    *(v38 + 32) = v33;
    *(v38 + 40) = v34;
    v58 = v37;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v39 = String.init<A>(describing:)();
    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v31;
    *(v38 + 72) = v39;
    *(v38 + 80) = v40;
    os_log(_:dso:log:_:_:)();

    v41 = v48;
    *v48 = v37;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v42 = v56;
    sub_10054B230(v41, v46, v56, v49, v57, v50);

    sub_10000B3A8(v41, &unk_1016B1650, &unk_1013B1110);
  }

  else
  {
    v43 = v55;

    sub_1005816AC(v27, v35, sub_1005891D8, v43);

    v42 = v56;
  }

  return sub_10058B268(v42, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_10054B230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v30 - v12);
  Transaction.capture()();
  sub_1000D2A70(a1, v13, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10138B360;
    v16 = a3 + *(type metadata accessor for OwnedBeaconRecord() + 20);
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(v15 + 56) = &type metadata for String;
    v20 = sub_100008C00();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v20;
    *(v15 + 64) = v20;
    *(v15 + 72) = a5;
    *(v15 + 80) = a6;
    v30[1] = v14;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v21 = String.init<A>(describing:)();
    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = v20;
    *(v15 + 112) = v21;
    *(v15 + 120) = v22;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10138BBE0;
    v25 = a3 + *(type metadata accessor for OwnedBeaconRecord() + 20);
    v26 = UUID.uuidString.getter();
    v28 = v27;
    *(v24 + 56) = &type metadata for String;
    v29 = sub_100008C00();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v29;
    *(v24 + 64) = v29;
    *(v24 + 72) = a5;
    *(v24 + 80) = a6;

    os_log(_:dso:log:_:_:)();

    return sub_10000B3A8(v13, &unk_1016B1650, &unk_1013B1110);
  }
}

unint64_t sub_10054B538(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void **a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  __chkstk_darwin(v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  __chkstk_darwin(v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v70 = *(v17 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  swift_beginAccess();
  v21 = *(a2 + 192);
  if (*(v21 + 16))
  {
    v22 = sub_1000210EC(a3);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      swift_endAccess();
      if (v24 >> 62)
      {
        if (v24 >> 62 == 1)
        {
          swift_errorRetain();
          static os_log_type_t.error.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
          return sub_1001E61B8(v24);
        }

        else
        {
          static os_log_type_t.error.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          return os_log(_:dso:log:_:_:)();
        }
      }

      v69 = v24;
      if (a4)
      {
        swift_beginAccess();

        v30 = *(a2 + 192);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = *(a2 + 192);
        *(a2 + 192) = 0x8000000000000000;
        sub_100FFE25C(0x8000000000000000, a3, isUniquelyReferenced_nonNull_native);
        *(a2 + 192) = v81;
        swift_endAccess();
        LODWORD(v68) = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_101385D80;
        type metadata accessor for UUID();
        sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = sub_100008C00();
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        os_log(_:dso:log:_:_:)();

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v36 = v70;
        (*(v70 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v17);
        v37 = static OS_dispatch_queue.global(qos:)();
        (*(v36 + 8))(v20, v17);
        v38 = v69;
        v78 = sub_10058CE30;
        v79 = v69;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_100006684;
        v77 = &unk_10162A0A0;
        v39 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v81 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v40 = v39;
      }

      else
      {
        if (a5)
        {
          sub_10057C920(v24);
          swift_errorRetain();
          LODWORD(v68) = static os_log_type_t.error.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v67 = qword_10177C378;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_10138BBE0;
          v66 = type metadata accessor for UUID();
          sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = v43;
          v66 = v42;
          *(v41 + 56) = &type metadata for String;
          v44 = sub_100008C00();
          *(v41 + 64) = v44;
          v45 = v65;
          *(v41 + 32) = v66;
          *(v41 + 40) = v45;
          aBlock = a5;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v46 = String.init<A>(describing:)();
          *(v41 + 96) = &type metadata for String;
          *(v41 + 104) = v44;
          *(v41 + 72) = v46;
          *(v41 + 80) = v47;
          os_log(_:dso:log:_:_:)();

          swift_beginAccess();
          swift_errorRetain();
          v48 = *(a2 + 192);
          v49 = swift_isUniquelyReferenced_nonNull_native();
          v81 = *(a2 + 192);
          *(a2 + 192) = 0x8000000000000000;
          sub_100FFE25C(a5 | 0x4000000000000000, a3, v49);
          *(a2 + 192) = v81;
          swift_endAccess();
          sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
          v50 = v70;
          (*(v70 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v17);
          v68 = static OS_dispatch_queue.global(qos:)();
          (*(v50 + 8))(v20, v17);
          v51 = swift_allocObject();
          v52 = v69;
          *(v51 + 16) = v69;
          *(v51 + 24) = a5;
          v78 = sub_10058CE08;
          v79 = v51;
          aBlock = _NSConcreteStackBlock;
          v75 = 1107296256;
          v76 = sub_100006684;
          v77 = &unk_10162A078;
          v53 = _Block_copy(&aBlock);
          sub_10057C920(v52);
          swift_errorRetain();
          static DispatchQoS.unspecified.getter();
          v81 = _swiftEmptyArrayStorage;
          sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v54 = v68;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v53);

          sub_1001E61B8(v52);

          goto LABEL_26;
        }

        LODWORD(v68) = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v67 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_101385D80;
        type metadata accessor for UUID();
        sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        *(v55 + 56) = &type metadata for String;
        *(v55 + 64) = sub_100008C00();
        *(v55 + 32) = v56;
        *(v55 + 40) = v58;
        os_log(_:dso:log:_:_:)();

        type metadata accessor for SPOwnerSessionError(0);
        aBlock = 0;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v59 = v81;
        swift_beginAccess();
        v60 = *(a2 + 192);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v80 = *(a2 + 192);
        *(a2 + 192) = 0x8000000000000000;
        sub_100FFE25C(v59 | 0x4000000000000000, a3, v61);
        *(a2 + 192) = v80;
        swift_endAccess();
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v62 = v70;
        (*(v70 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v17);
        v37 = static OS_dispatch_queue.global(qos:)();
        (*(v62 + 8))(v20, v17);
        v38 = v69;
        v78 = sub_10058CD94;
        v79 = v69;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_100006684;
        v77 = &unk_10162A028;
        v63 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v81 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v40 = v63;
      }

      _Block_release(v40);

      sub_1001E61B8(v38);
LABEL_26:
      (*(v73 + 8))(v12, v9);
      (*(v71 + 8))(v16, v72);
    }
  }

  swift_endAccess();
  static os_log_type_t.debug.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  v27 = UUID.uuidString.getter();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100008C00();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10054C3A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v31 = a5;
  v32 = a7;
  v30 = a4;
  v29 = a1;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v37 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v37);
  v35 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  v12 = *(v36 + 64);
  __chkstk_darwin(v38);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a2 + 168);
  (*(v15 + 16))(v17, a3, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = v18 + v16;
  v20 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v29;
  *(v21 + 24) = a2;
  (*(v15 + 32))(v21 + v18, v17, v14);
  *(v21 + v19) = v30;
  *(v21 + v20 + 8) = v31;
  aBlock[4] = v32;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v34;
  v22 = _Block_copy(aBlock);

  swift_errorRetain();
  v23 = v28;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v24 = v35;
  v25 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v39 + 8))(v24, v25);
  (*(v36 + 8))(v23, v38);
}

unint64_t sub_10054C78C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void **a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  __chkstk_darwin(v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  __chkstk_darwin(v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v70 = *(v17 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  swift_beginAccess();
  v21 = *(a2 + 192);
  if (!*(v21 + 16) || (v22 = sub_1000210EC(a3), (v23 & 1) == 0))
  {
    swift_endAccess();
    static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
LABEL_9:
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_101385D80;
      v27 = UUID.uuidString.getter();
      v29 = v28;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_100008C00();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      os_log(_:dso:log:_:_:)();
    }

LABEL_25:
    swift_once();
    goto LABEL_9;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  if (!(v24 >> 62))
  {
    v69 = v24;
    if (a4)
    {
      swift_beginAccess();

      v30 = *(a2 + 192);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = *(a2 + 192);
      *(a2 + 192) = 0x8000000000000000;
      sub_100FFE25C(0x8000000000000000, a3, isUniquelyReferenced_nonNull_native);
      *(a2 + 192) = v81;
      swift_endAccess();
      LODWORD(v68) = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_101385D80;
      type metadata accessor for UUID();
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_100008C00();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      os_log(_:dso:log:_:_:)();

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v36 = v70;
      (*(v70 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v17);
      v37 = static OS_dispatch_queue.global(qos:)();
      (*(v36 + 8))(v20, v17);
      v38 = v69;
      v78 = sub_10058D728;
      v79 = v69;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v76 = sub_100006684;
      v77 = &unk_1016297E0;
      v39 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v81 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v40 = v39;
    }

    else
    {
      if (a5)
      {
        sub_10057C920(v24);
        swift_errorRetain();
        LODWORD(v68) = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v67 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_10138BBE0;
        v66 = type metadata accessor for UUID();
        sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v43;
        v66 = v42;
        *(v41 + 56) = &type metadata for String;
        v44 = sub_100008C00();
        *(v41 + 64) = v44;
        v45 = v65;
        *(v41 + 32) = v66;
        *(v41 + 40) = v45;
        aBlock = a5;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v46 = String.init<A>(describing:)();
        *(v41 + 96) = &type metadata for String;
        *(v41 + 104) = v44;
        *(v41 + 72) = v46;
        *(v41 + 80) = v47;
        os_log(_:dso:log:_:_:)();

        swift_beginAccess();
        swift_errorRetain();
        v48 = *(a2 + 192);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v81 = *(a2 + 192);
        *(a2 + 192) = 0x8000000000000000;
        sub_100FFE25C(a5 | 0x4000000000000000, a3, v49);
        *(a2 + 192) = v81;
        swift_endAccess();
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v50 = v70;
        (*(v70 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v17);
        v68 = static OS_dispatch_queue.global(qos:)();
        (*(v50 + 8))(v20, v17);
        v51 = swift_allocObject();
        v52 = v69;
        *(v51 + 16) = v69;
        *(v51 + 24) = a5;
        v78 = sub_10058D540;
        v79 = v51;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_100006684;
        v77 = &unk_1016297B8;
        v53 = _Block_copy(&aBlock);
        sub_10057C920(v52);
        swift_errorRetain();
        static DispatchQoS.unspecified.getter();
        v81 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v54 = v68;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v53);

        sub_1001E61B8(v52);

        goto LABEL_24;
      }

      LODWORD(v68) = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v67 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_101385D80;
      type metadata accessor for UUID();
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      *(v55 + 56) = &type metadata for String;
      *(v55 + 64) = sub_100008C00();
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      aBlock = 0;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v59 = v81;
      swift_beginAccess();
      v60 = *(a2 + 192);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v80 = *(a2 + 192);
      *(a2 + 192) = 0x8000000000000000;
      sub_100FFE25C(v59 | 0x4000000000000000, a3, v61);
      *(a2 + 192) = v80;
      swift_endAccess();
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v62 = v70;
      (*(v70 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v17);
      v37 = static OS_dispatch_queue.global(qos:)();
      (*(v62 + 8))(v20, v17);
      v38 = v69;
      v78 = sub_10058D4FC;
      v79 = v69;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v76 = sub_100006684;
      v77 = &unk_101629768;
      v63 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v81 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v40 = v63;
    }

    _Block_release(v40);

    sub_1001E61B8(v38);
LABEL_24:
    (*(v73 + 8))(v12, v9);
    (*(v71 + 8))(v16, v72);
  }

  if (v24 >> 62 != 1)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  swift_errorRetain();
  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  return sub_1001E61B8(v24);
}

void sub_10054D63C()
{
  type metadata accessor for CommandError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_101696428, type metadata accessor for CommandError);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

void sub_10054D6EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_beginAccess();
    v9 = *(a5 + 16);
    *(a5 + 16) = a1;
  }

  else
  {
    swift_beginAccess();
    v12 = *(a4 + 24);
    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
  }

  dispatch_group_leave(a6);
}

void sub_10054D7C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_beginAccess();
    v8 = *(a4 + 16);
    *(a4 + 16) = a1;
  }

  else
  {
    swift_beginAccess();
    v10 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  dispatch_group_leave(a5);
}

void sub_10054D890(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v9 = *(a1 + 16) && (v7 = sub_10077262C(a3), (v8 & 1) != 0) && *(*(a1 + 56) + 8 * v7) > 0;
  swift_beginAccess();
  *(a2 + 16) = v9;
  dispatch_group_leave(a4);
}

uint64_t sub_10054D914()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  sub_10000B3A8(v0 + 64, &qword_1016A4998, &qword_1013B1340);
  sub_10000B3A8(v0 + 88, &qword_1016A49A0, &unk_1013B1348);
  sub_100007BAC((v0 + 104));
  v6 = *(v0 + 144);

  v7 = *(v0 + 152);

  v8 = *(v0 + 160);

  v9 = *(v0 + 192);

  v10 = *(v0 + 208);

  v11 = *(v0 + 216);

  v12 = *(v0 + 232);

  v13 = *(v0 + 240);

  v14 = *(v0 + 248);

  v15 = *(v0 + 256);

  v16 = *(v0 + 264);

  v17 = *(v0 + 272);

  v18 = *(v0 + 288);

  v19 = *(v0 + 296);

  v20 = *(v0 + 304);

  v21 = *(v0 + 312);

  v22 = *(v0 + 320);

  v23 = *(v0 + 328);

  v24 = *(v0 + 336);

  v25 = *(v0 + 368);

  return v0;
}

uint64_t sub_10054DA54()
{
  sub_10054D914();

  return swift_deallocClassInstance();
}

unint64_t sub_10054DAAC(uint64_t *a1)
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

uint64_t sub_10054DAC8(uint64_t a1, unsigned int a2)
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

uint64_t sub_10054DB24(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_10054DB74(void *result, uint64_t a2)
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

uint64_t sub_10054DBB0(uint64_t a1, int a2, uint64_t a3, void (*a4)(char *, char *, uint64_t))
{
  v190 = a4;
  v189 = a3;
  LODWORD(v188) = a2;
  v176 = type metadata accessor for DispatchQoS.QoSClass();
  v165 = *(v176 - 8);
  v5 = *(v165 + 64);
  __chkstk_darwin(v176);
  v164 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for DispatchTime();
  v160 = *(v162 - 8);
  v7 = *(v160 + 64);
  v8 = __chkstk_darwin(v162);
  v158 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v159 = &v145 - v10;
  v178 = type metadata accessor for DispatchWorkItemFlags();
  v182 = *(v178 - 8);
  v11 = *(v182 + 64);
  __chkstk_darwin(v178);
  v177 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v180 = v13;
  v181 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v179 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for SecureLocationsRelayAction(0);
  v169 = *(v168 - 8);
  v17 = *(v169 + 8);
  v18 = __chkstk_darwin(v168);
  v171 = (&v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = v19;
  __chkstk_darwin(v18);
  v173 = (&v145 - v20);
  v172 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v21 = *(*(v172 - 8) + 64);
  v22 = __chkstk_darwin(v172);
  v161 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v174 = &v145 - v24;
  v167 = type metadata accessor for MessagingOptions(0);
  v25 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v175 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v166 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v183 = (&v145 - v31);
  v32 = type metadata accessor for UUID();
  v184 = *(v32 - 8);
  v185 = v32;
  v33 = v184[8];
  v34 = __chkstk_darwin(v32);
  v163 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v34);
  v37 = &v145 - v36;
  __chkstk_darwin(v35);
  v39 = &v145 - v38;
  v40 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = (&v145 - v42);
  v44 = type metadata accessor for SystemInfo.DeviceLockState();
  *&v187 = *(v44 - 8);
  v45 = *(v187 + 64);
  v46 = __chkstk_darwin(v44);
  v48 = &v145 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v50 = &v145 - v49;

  v51 = v191;
  result = sub_10053AC08(12, 1, a1, &aBlock);
  if (!v51)
  {
    v151 = v40;
    v152 = v43;
    v150 = v37;
    v146 = v33;
    v147 = v39;
    v191 = 0;
    v149 = aBlock;
    v148 = v193;
    v156 = v194;
    v157 = v195;
    v53 = swift_allocObject();
    *(v53 + 16) = a1;
    v54 = v188;
    *(v53 + 24) = v188;
    v55 = v189;
    v155 = v53;
    v56 = v190;
    *(v53 + 32) = v189;
    *(v53 + 40) = v56;
    v153 = a1;

    sub_100908F24(_swiftEmptyArrayStorage);

    v154 = sub_101129A8C(_swiftEmptyArrayStorage);
    static SystemInfo.lockState.getter();
    v57 = v187;
    (*(v187 + 104))(v48, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v44);
    sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v59 = *(v57 + 8);
    v59(v48, v44);
    v59(v50, v44);
    if (v58)
    {

      static os_log_type_t.error.getter();
      v60 = v152;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      type metadata accessor for SPOwnerSessionError(0);
      v198 = 5;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v60 = aBlock;
      swift_storeEnumTagMultiPayload();
      sub_1005746A0(v60, v153, v54, v55, v56);

      sub_100016590(v156, v157);
      v61 = v60;
      return sub_10000B3A8(v61, &qword_10169F358, &qword_1013A0810);
    }

    v62 = v186;
    if ((sub_100540CB8(v54, v55, v56) & 1) == 0)
    {
      v87 = v157;

      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_101385D80;
      *(v88 + 56) = &type metadata for String;
      *(v88 + 64) = sub_100008C00();
      *(v88 + 32) = v55;
      *(v88 + 40) = v56;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v198 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v89 = v152;
      *v152 = aBlock;
      swift_storeEnumTagMultiPayload();
      sub_1005746A0(v89, v153, v54, v55, v56);

      sub_100016590(v156, v87);
      v61 = v89;
      return sub_10000B3A8(v61, &qword_10169F358, &qword_1013A0810);
    }

    v153 = *(v62 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v63 = swift_allocObject();
    v187 = xmmword_101385D80;
    *(v63 + 16) = xmmword_101385D80;
    *(v63 + 32) = v54;
    *(v63 + 40) = v55;
    *(v63 + 48) = v56;
    v64 = v183;
    v65 = v184;
    v66 = v184[7];
    v67 = v185;
    v66(v183, 1, 1, v185);

    v68 = v150;
    UUID.init()();
    v69 = v65[2];
    v70 = v175;
    v189 = (v65 + 2);
    v190 = v69;
    v69(v175, v68, v67);
    v71 = v166;
    sub_1000D2A70(v64, v166, &qword_1016980D0, &unk_10138F3B0);
    v72 = v167;
    v73 = *(v167 + 28);
    v66((v70 + v73), 1, 1, v67);
    *(v70 + v72[5]) = v63;
    *(v70 + v72[6]) = 0;
    sub_10002311C(v71, v70 + v73, &qword_1016980D0, &unk_10138F3B0);
    v74 = v70 + v72[8];
    *v74 = 0;
    *(v74 + 8) = 1;
    *(v70 + v72[9]) = 1;
    *(v70 + v72[10]) = &_swiftEmptySetSingleton;
    *(v70 + v72[11]) = v154;
    v75 = (v70 + v72[12]);
    *v75 = 0;
    v75[1] = 0;
    *(v70 + v72[13]) = xmmword_1013B0D90;
    v76 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v77 = v173;
    sub_10058B200(v70, v173 + *(v76 + 24), type metadata accessor for MessagingOptions);
    *v77 = v149;
    v78 = v156;
    *(v77 + 8) = v148;
    *(v77 + 16) = v78;
    v79 = v157;
    *(v77 + 24) = v157;
    *(v77 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v80 = v171;
    sub_10058B200(v77, v171, type metadata accessor for SecureLocationsRelayAction);
    v81 = (*(v169 + 80) + 24) & ~*(v169 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = v153;
    sub_100589B28(v80, v82 + v81, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v78, v79);

    v83 = v174;
    v84 = v191;
    unsafeFromAsyncTask<A>(_:)();
    v191 = v84;
    if (v84)
    {

      sub_10058B268(v77, type metadata accessor for SecureLocationsRelayAction);
      v85 = v191;
      v191 = 0;
      v86 = v176;
    }

    else
    {
      sub_10058B268(v77, type metadata accessor for SecureLocationsRelayAction);

      v90 = v161;
      sub_10058B200(v83, v161, type metadata accessor for SecureLocationsRelayAction.Response);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v86 = v176;
      if (EnumCaseMultiPayload == 4)
      {
        sub_10058B268(v83, type metadata accessor for SecureLocationsRelayAction.Response);
        v93 = v184;
        v92 = v185;
        v94 = v184[1];
        v174 = (v184 + 1);
        v173 = v94;
        v94(v150, v185);
        sub_10000B3A8(v183, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v70, type metadata accessor for MessagingOptions);
        v95 = v93[4];
        v96 = v147;
        v188 = v93 + 4;
        v183 = v95;
        (v95)(v147, v90, v92);
        v97 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        v98 = *(v97 + 48);
        v99 = *(v97 + 52);
        swift_allocObject();
        v100 = Future.init()();
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v101 = swift_allocObject();
        *(v101 + 16) = v187;
        v102 = UUID.uuidString.getter();
        v104 = v103;
        *(v101 + 56) = &type metadata for String;
        *(v101 + 64) = sub_100008C00();
        *(v101 + 32) = v102;
        *(v101 + 40) = v104;
        os_log(_:dso:log:_:_:)();

        v105 = v186;
        *&v187 = *(v186 + 168);
        v106 = v163;
        v190(v163, v96, v92);
        v107 = (*(v93 + 80) + 24) & ~*(v93 + 80);
        v176 = *(v93 + 80);
        v172 = v107 + v146;
        v108 = v107;
        v184 = v107;
        v109 = (v107 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
        v110 = swift_allocObject();
        *(v110 + 16) = v105;
        (v183)(v110 + v108, v106, v92);
        *(v110 + v109) = v100;
        v175 = v100;
        v196 = sub_10058D4DC;
        v197 = v110;
        aBlock = _NSConcreteStackBlock;
        v193 = 1107296256;
        v171 = &v194;
        v194 = sub_100006684;
        v195 = &unk_101628DB8;
        v111 = _Block_copy(&aBlock);

        v112 = v179;
        static DispatchQoS.unspecified.getter();
        v198 = _swiftEmptyArrayStorage;
        v167 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v166 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v168 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v113 = v177;
        v114 = v178;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v111);
        v115 = *(v182 + 8);
        v182 += 8;
        v170 = v115;
        v115(v113, v114);
        v116 = *(v181 + 8);
        v181 += 8;
        v169 = v116;
        v116(v112, v180);

        v117 = v163;
        v118 = v185;
        v190(v163, v147, v185);
        v119 = swift_allocObject();
        *(v119 + 16) = v105;
        (v183)(v184 + v119, v117, v118);
        v120 = (v119 + v109);
        v121 = v155;
        *v120 = sub_10058A730;
        v120[1] = v121;

        Future.addSuccess(block:)();

        v122 = swift_allocObject();
        *(v122 + 16) = sub_10058A730;
        *(v122 + 24) = v121;

        Future.addFailure(block:)();

        v123 = v158;
        static DispatchTime.now()();
        v124 = v159;
        + infix(_:_:)();
        v165 = *(v160 + 8);
        (v165)(v123, v162);
        v125 = v163;
        v190(v163, v147, v118);
        v126 = swift_allocObject();
        *(v126 + 16) = v105;
        v127 = v125;
        v128 = v118;
        (v183)(v184 + v126, v127, v118);
        v196 = sub_10058D4E0;
        v197 = v126;
        aBlock = _NSConcreteStackBlock;
        v193 = 1107296256;
        v194 = sub_100006684;
        v195 = &unk_101628E58;
        v129 = _Block_copy(&aBlock);

        v130 = v179;
        static DispatchQoS.unspecified.getter();
        v198 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v129);

        sub_100016590(v156, v157);
        v170(v113, v114);
        v169(v130, v180);
        (v165)(v124, v162);
        v173(v147, v128);
      }

      sub_10058B268(v90, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v85 = swift_allocError();
      swift_willThrow();
      sub_10058B268(v83, type metadata accessor for SecureLocationsRelayAction.Response);
      v191 = 0;
    }

    v131 = v183;
    v132 = v155;
    (v184[1])(v150, v185);
    sub_10000B3A8(v131, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v70, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v133 = swift_allocObject();
    *(v133 + 16) = v187;
    aBlock = v85;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v134 = String.init<A>(describing:)();
    v136 = v135;
    *(v133 + 56) = &type metadata for String;
    *(v133 + 64) = sub_100008C00();
    *(v133 + 32) = v134;
    *(v133 + 40) = v136;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v137 = v165;
    v138 = v164;
    (*(v165 + 104))(v164, enum case for DispatchQoS.QoSClass.default(_:), v86);
    v190 = static OS_dispatch_queue.global(qos:)();
    (*(v137 + 8))(v138, v86);
    v139 = swift_allocObject();
    v139[2] = sub_10058A730;
    v139[3] = v132;
    v139[4] = v85;
    v196 = sub_10058D73C;
    v197 = v139;
    aBlock = _NSConcreteStackBlock;
    v193 = 1107296256;
    v194 = sub_100006684;
    v195 = &unk_101628D68;
    v140 = _Block_copy(&aBlock);

    swift_errorRetain();
    v141 = v179;
    static DispatchQoS.unspecified.getter();
    v198 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v142 = v177;
    v143 = v178;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v144 = v190;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v140);

    sub_100016590(v156, v157);
    (*(v182 + 8))(v142, v143);
    (*(v181 + 8))(v141, v180);
  }

  return result;
}

uint64_t sub_10054F5EC(uint64_t a1)
{
  v4 = type metadata accessor for BeaconObservation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10058B200(a1, v7, type metadata accessor for BeaconObservation);
  result = sub_10053C054(13, 1, v7, &v35);
  if (!v2)
  {
    v34 = 0;
    v9 = v35;
    v11 = v36;
    v10 = v37;
    v12 = v38;
    v39 = v1;
    v13 = *(v1 + 24);
    v14 = sub_1010A5510();
    v15 = v14[2];
    if (v15)
    {
      v29 = v11;
      v30 = v9;
      v31 = a1;
      v32 = v12;
      v33 = v10;
      v35 = _swiftEmptyArrayStorage;
      sub_101124900(0, v15, 0);
      v16 = v35;
      v28[1] = v14;
      v17 = v14 + 23;
      do
      {
        v18 = *(v17 - 16);
        v20 = *(v17 - 1);
        v19 = *v17;
        v35 = v16;
        v22 = v16[2];
        v21 = v16[3];

        if (v22 >= v21 >> 1)
        {
          sub_101124900((v21 > 1), v22 + 1, 1);
          v16 = v35;
        }

        v16[2] = v22 + 1;
        v23 = &v16[3 * v22];
        *(v23 + 32) = v18;
        v23[5] = v20;
        v23[6] = v19;
        v17 += 20;
        --v15;
      }

      while (v15);

      v12 = v32;
      v10 = v33;
      v9 = v30;
      v11 = v29;
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v35 = 0xD000000000000017;
    v36 = 0x8000000101359290;
    v24._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v24);

    v25 = v35;
    v26 = v36;
    v27 = sub_101129A8C(_swiftEmptyArrayStorage);
    sub_10057D1E0(v9, v11, v10, v12, v16, 0, 1, 0, &_swiftEmptySetSingleton, v27, v25, v26, sub_100574524);

    return sub_100016590(v10, v12);
  }

  return result;
}

id sub_10054F898(uint64_t a1)
{
  v218 = a1;
  v1 = type metadata accessor for CryptoKeys();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v193 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for LegacyShareEnvelope(0);
  v5 = *(*(v195 - 8) + 64);
  v6 = __chkstk_darwin(v195);
  v196 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v197 = &v184 - v8;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v198 = &v184 - v11;
  v223 = type metadata accessor for TimeBasedKey();
  v201 = *(v223 - 8);
  v12 = *(v201 + 64);
  v13 = __chkstk_darwin(v223);
  v207 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v206 = &v184 - v16;
  v17 = __chkstk_darwin(v15);
  v200 = &v184 - v18;
  __chkstk_darwin(v17);
  v222 = &v184 - v19;
  v233 = type metadata accessor for FamilyCryptoKeysV1();
  v221 = *(v233 - 8);
  v20 = *(v221 + 64);
  v21 = __chkstk_darwin(v233);
  v226 = (&v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v224 = &v184 - v23;
  v202 = type metadata accessor for FamilyShareEnvelopeV1(0);
  v24 = *(*(v202 - 8) + 64);
  v25 = __chkstk_darwin(v202);
  v203 = &v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v204 = &v184 - v27;
  v210 = type metadata accessor for UUID();
  v215 = *(v210 - 8);
  v28 = v215[8];
  __chkstk_darwin(v210);
  v219 = &v184 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for OwnedBeaconRecord();
  v30 = *(*(v213 - 1) + 64);
  __chkstk_darwin(v213);
  v208 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SharedBeaconRecord(0);
  v33 = *(*(v32 - 1) + 64);
  __chkstk_darwin(v32);
  v216 = (&v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v184 - v37;
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v44 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = &v184 - v45;
  v225 = type metadata accessor for DateInterval();
  v214 = *(v225 - 8);
  v47 = *(v214 + 64);
  v48 = __chkstk_darwin(v225);
  v211 = &v184 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v49;
  __chkstk_darwin(v48);
  v220 = &v184 - v50;
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    goto LABEL_53;
  }

  v52 = result;
  v53 = [result aa_primaryAppleAccount];

  if (!v53)
  {
    type metadata accessor for SPOwnerSessionError(0);
    *&v227 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    return swift_willThrow();
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v54 = *(qword_10177B348 + 40);
  v55 = v217;
  OS_dispatch_queue.sync<A>(execute:)();
  v194 = v55;
  v205 = v229[0];
  v56 = sub_101073EA4(v229[0]);
  static Date.trustedNow.getter(v46);
  if ((v56 * 60) >> 64 != (60 * v56) >> 63)
  {
    __break(1u);
LABEL_51:
    swift_once();
LABEL_20:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_101385D80;
    v109 = v217;
    result = [v217 v53[27]];
    if (result)
    {
      v110 = result;

      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      *(v108 + 56) = &type metadata for String;
      *(v108 + 64) = sub_100008C00();
      *(v108 + 32) = v111;
      *(v108 + 40) = v113;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      *&v227 = 7;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return (*(v214 + 8))(v220, v225);
    }

    goto LABEL_54;
  }

  v217 = v53;
  DateInterval.init(start:duration:)();
  v199 = type metadata accessor for ShareInstruction();
  sub_1000D2A70(v218 + v199[9], v38, &unk_101696900, &unk_10138B1E0);
  v57 = (*(v40 + 48))(v38, 1, v39);
  v184 = v2;
  if (v57 == 1)
  {
    sub_10000B3A8(v38, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v40 + 32))(v44, v38, v39);
    DateInterval.end.getter();
    v58 = static Date.< infix(_:_:)();
    v59 = *(v40 + 8);
    v59(v46, v39);
    if (v58)
    {
      (*(v40 + 16))(v46, v44, v39);
      DateInterval.end.setter();
    }

    v59(v44, v39);
  }

  v53 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  result = [(SEL *)v217 username];
  if (!result)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v60 = result;
  [result copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
  if (!v63)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

  v186 = v61;
  v185 = v62;
  v187 = v63;

  v64 = v199;
  v65 = v218;
  v192 = v218 + v199[6];
  v205 = type metadata accessor for OwnedBeaconRecord;
  v66 = v208;
  sub_10058B200(v192, v208, type metadata accessor for OwnedBeaconRecord);
  v67 = v64[8];
  v68 = v215[2];
  v69 = v210;
  v68(v219, v65 + v67, v210);
  v70 = v216;
  *(v216 + v32[14]) = 3;
  v188 = v32[15];
  v71 = v32[20];
  v190 = v71;
  v189 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v191 = *(*(v189 - 8) + 56);
  v191(&v70[v71], 1, 1, v189);
  *v70 = xmmword_10138C660;
  v72 = v213;
  v68(&v70[v32[5]], v66 + v213[5], v69);
  v73 = v219;
  v68(&v70[v32[6]], v219, v69);
  v74 = &v70[v32[7]];
  *v74 = v186;
  v75 = v187;
  *(v74 + 1) = v185;
  *(v74 + 2) = v75;
  v76 = &v70[v32[8]];
  *v76 = 0;
  v76[1] = 0xE000000000000000;
  v77 = (v66 + v72[14]);
  v79 = *v77;
  v78 = v77[1];
  v80 = &v70[v32[9]];
  *v80 = v79;
  v80[1] = v78;
  v81 = (v66 + v72[15]);
  v82 = *v81;
  v83 = v81[1];
  v84 = &v70[v32[10]];
  *v84 = v82;
  v84[1] = v83;
  *&v70[v32[11]] = *(v66 + v72[16]);
  *&v70[v32[12]] = *(v66 + v72[17]);
  *&v70[v188] = -1;
  v70[v32[13]] = 0;
  v70[v32[16]] = 1;
  *&v70[v32[17]] = 0;
  v85 = v32[18];

  static Date.distantPast.getter();
  (v215[1])(v73, v69);
  sub_1000D2A70(v66 + v72[7], &v70[v32[19]], &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v66, type metadata accessor for OwnedBeaconRecord);
  v86 = v190;
  sub_10000B3A8(&v70[v190], &unk_1016AF890, &qword_1013926D0);
  v191(&v70[v86], 1, 1, v189);
  v87 = *(v212 + 144);
  v231 = v72;
  v232 = sub_100003DFC(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v88 = sub_1000280DC(v229);
  v89 = v192;
  sub_10058B200(v192, v88, v205);
  v90 = *(v87 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  v91 = v194;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v215 = v91;
  v92 = v227;
  sub_10001F280(v229, &v227);
  v93 = v214;
  v94 = v211;
  v95 = v225;
  v219 = *(v214 + 16);
  (v219)(v211, v220, v225);
  v96 = (*(v93 + 80) + 64) & ~*(v93 + 80);
  v97 = v96 + v209;
  v98 = swift_allocObject();
  *(v98 + 16) = v92;
  sub_100031694(&v227, v98 + 24);
  (*(v93 + 32))(v98 + v96, v94, v95);
  v99 = v98 + v97;
  *v99 = 0;
  *(v99 + 2) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v100 = v227;
  v101 = v228;
  sub_100007BAC(v229);
  if (v101 > 1)
  {
    if (v101 == 2)
    {
      sub_100359088(v100, *(&v100 + 1), 2u);
    }

    static os_log_type_t.error.getter();
    v114 = v216;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_101385D80;
    v116 = v89 + v213[5];
    v117 = UUID.uuidString.getter();
    v119 = v118;
    *(v115 + 56) = &type metadata for String;
    *(v115 + 64) = sub_100008C00();
    *(v115 + 32) = v117;
    *(v115 + 40) = v119;
    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    *&v227 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    (*(v93 + 8))(v220, v225);
    v107 = v114;
  }

  else if (v101)
  {
    v213 = *(&v100 + 1);
    v120 = *(v100 + 16);
    v121 = _swiftEmptyArrayStorage;
    v211 = v100;
    v210 = v120;
    if (v120)
    {
      v229[0] = _swiftEmptyArrayStorage;
      sub_101124C98(0, v120, 0);
      v121 = v229[0];
      v122 = v100 + ((*(v201 + 80) + 32) & ~*(v201 + 80));
      v123 = *(v201 + 72);
      v124 = v120;
      v125 = v200;
      do
      {
        v126 = v222;
        sub_10058B200(v122, v222, type metadata accessor for TimeBasedKey);
        sub_100589B28(v126, v125, type metadata accessor for TimeBasedKey);
        v127 = v225;
        v128 = v226;
        *v226 = *v125;
        v129 = v223;
        (v219)(v128 + *(v233 + 20), v125 + *(v223 + 20), v127);
        v130 = (v125 + *(v129 + 24));
        v131 = v130[5];
        if (v131 >> 60 == 15)
        {
          v132 = v130[2];
          v133 = v130[3];
          sub_100017D5C(v132, v133);
          sub_10058B268(v125, type metadata accessor for TimeBasedKey);
        }

        else
        {
          v132 = v130[4];
          sub_100017D5C(v132, v130[5]);
          sub_10058B268(v125, type metadata accessor for TimeBasedKey);
          v133 = v131 | 0x2000000000000000;
        }

        v134 = v226;
        v135 = (v226 + *(v233 + 24));
        *v135 = v132;
        v135[1] = v133;
        v136 = v224;
        sub_100589B28(v134, v224, type metadata accessor for FamilyCryptoKeysV1);
        v229[0] = v121;
        v138 = v121[2];
        v137 = v121[3];
        if (v138 >= v137 >> 1)
        {
          sub_101124C98(v137 > 1, v138 + 1, 1);
          v136 = v224;
          v121 = v229[0];
        }

        v121[2] = v138 + 1;
        sub_100589B28(v136, v121 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v138, type metadata accessor for FamilyCryptoKeysV1);
        v122 += v123;
        --v124;
      }

      while (v124);
      v93 = v214;
    }

    v139 = v216;
    v140 = v204;
    sub_10058B200(v216, v204, type metadata accessor for SharedBeaconRecord);
    *(v140 + *(v202 + 20)) = v121;
    v141 = v203;
    sub_10058B200(v140, v203, type metadata accessor for FamilyShareEnvelopeV1);
    v142 = v215;
    sub_10053B464(0, 2, v141, v229);
    v143 = v220;
    if (v142)
    {

      sub_100359088(v211, v213, 1u);
      sub_10058B268(v140, type metadata accessor for FamilyShareEnvelopeV1);
      (*(v93 + 8))(v143, v225);
      v107 = v139;
    }

    else
    {
      LODWORD(v233) = LOBYTE(v229[0]);
      v144 = v230;
      v226 = v229[1];
      v145 = v231;
      sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = 0x44495344746C41;
      *(inited + 40) = 0xE700000000000000;
      v147 = v218;
      v148 = *(v218 + 16);
      *(inited + 48) = *(v218 + 8);
      *(inited + 56) = v148;

      v149 = sub_100907E70(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
      v150 = type metadata accessor for Transaction();
      __chkstk_darwin(v150);
      v151 = v212;
      *(&v184 - 8) = v212;
      *(&v184 - 56) = v233;
      *(&v184 - 6) = v226;
      *(&v184 - 5) = v144;
      v224 = v144;
      v226 = v145;
      *(&v184 - 4) = v145;
      *(&v184 - 3) = v149;
      *(&v184 - 2) = v147;
      v222 = v150;
      static Transaction.named<A>(_:with:)();

      v152 = (v147 + v199[7]);
      LODWORD(v233) = *v152;
      v153 = *(v152 + 2);
      v223 = *(v152 + 1);
      v154 = dispatch_group_create();
      v155 = sub_101129A8C(&off_101609298);
      v156 = swift_allocObject();
      *(v156 + 16) = 0;
      dispatch_group_enter(v154);
      v157 = *(v151 + 24);
      v158 = swift_allocObject();
      v158[2] = v156;
      v158[3] = v155;
      v158[4] = v154;
      v159 = type metadata accessor for TaskPriority();
      v160 = v198;
      (*(*(v159 - 8) + 56))(v198, 1, 1, v159);
      v161 = swift_allocObject();
      *(v161 + 16) = 0;
      *(v161 + 24) = 0;
      *(v161 + 32) = v157;
      *(v161 + 40) = v233;
      *(v161 + 48) = v223;
      *(v161 + 56) = v153;
      *(v161 + 64) = sub_1005894EC;
      *(v161 + 72) = v158;

      v162 = v154;

      sub_10025EDD4(0, 0, v160, &unk_1013B1138, v161);

      OS_dispatch_group.wait()();

      swift_beginAccess();
      LODWORD(v153) = *(v156 + 16);

      if (v153 == 1)
      {
        v163 = v210;
        if (v210)
        {
          v229[0] = _swiftEmptyArrayStorage;
          sub_101124D20(0, v210, 0);
          v164 = v229[0];
          v165 = v211 + ((*(v201 + 80) + 32) & ~*(v201 + 80));
          v233 = *(v201 + 72);
          v166 = v184;
          v167 = v193;
          do
          {
            v168 = v206;
            sub_10058B200(v165, v206, type metadata accessor for TimeBasedKey);
            v169 = v207;
            sub_10058B200(v168, v207, type metadata accessor for TimeBasedKey);
            sub_10076FED0(v169, v167);
            sub_10058B268(v168, type metadata accessor for TimeBasedKey);
            v229[0] = v164;
            v171 = v164[2];
            v170 = v164[3];
            if (v171 >= v170 >> 1)
            {
              sub_101124D20(v170 > 1, v171 + 1, 1);
              v167 = v193;
              v164 = v229[0];
            }

            v164[2] = v171 + 1;
            sub_100589B28(v167, v164 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v171, type metadata accessor for CryptoKeys);
            v165 += v233;
            --v163;
          }

          while (v163);
          sub_100359088(v211, v213, 1u);
        }

        else
        {
          sub_100359088(v211, v213, 1u);
          v164 = _swiftEmptyArrayStorage;
        }

        v173 = v216;
        v174 = v197;
        sub_10058B200(v216, v197, type metadata accessor for SharedBeaconRecord);
        *(v174 + *(v195 + 20)) = v164;
        v175 = v196;
        sub_10058B200(v174, v196, type metadata accessor for LegacyShareEnvelope);
        v176 = sub_10053B760(0, 1, v175, v229);
        v177 = v226;
        v178 = v224;
        v179 = v230;
        v180 = v231;
        __chkstk_darwin(v176);
        *(&v184 - 6) = v212;
        *(&v184 - 40) = v181;
        *(&v184 - 4) = v182;
        *(&v184 - 3) = v179;
        v183 = v218;
        *(&v184 - 2) = v180;
        *(&v184 - 1) = v183;
        static Transaction.named<A>(_:with:)();

        sub_100016590(v178, v177);
        sub_100016590(v179, v180);
        sub_10058B268(v174, type metadata accessor for LegacyShareEnvelope);
        v172 = v214;
      }

      else
      {

        sub_100016590(v224, v226);
        sub_100359088(v211, v213, 1u);
        v172 = v214;
        v173 = v216;
      }

      sub_10058B268(v204, type metadata accessor for FamilyShareEnvelopeV1);
      (*(v172 + 8))(v220, v225);
      v107 = v173;
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_101385D80;
    v103 = v89 + v213[5];
    v104 = UUID.uuidString.getter();
    v106 = v105;
    *(v102 + 56) = &type metadata for String;
    *(v102 + 64) = sub_100008C00();
    *(v102 + 32) = v104;
    *(v102 + 40) = v106;
    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    *&v227 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100359088(v100, *(&v100 + 1), 0);
    (*(v93 + 8))(v220, v225);
    v107 = v216;
  }

  return sub_10058B268(v107, type metadata accessor for SharedBeaconRecord);
}

void sub_100551690(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v254 = type metadata accessor for TimeBasedKey();
  v234 = *(v254 - 8);
  v7 = *(v234 + 64);
  v8 = __chkstk_darwin(v254);
  v249 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v248 = &v208 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v208 - v13;
  __chkstk_darwin(v12);
  v247 = &v208 - v15;
  v259 = type metadata accessor for FamilyCryptoKeysV1();
  *&v255 = *(v259 - 8);
  v16 = *(v255 + 64);
  v17 = __chkstk_darwin(v259);
  v226 = (&v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v225 = (&v208 - v20);
  v21 = __chkstk_darwin(v19);
  v251 = &v208 - v22;
  v23 = __chkstk_darwin(v21);
  v227 = (&v208 - v24);
  v25 = __chkstk_darwin(v23);
  v253 = &v208 - v26;
  v27 = __chkstk_darwin(v25);
  v250 = &v208 - v28;
  v29 = __chkstk_darwin(v27);
  v252 = &v208 - v30;
  __chkstk_darwin(v29);
  v228 = &v208 - v31;
  MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope();
  v32 = *(*(MyAirPodsFamilyShareEnvelope - 8) + 64);
  v33 = __chkstk_darwin(MyAirPodsFamilyShareEnvelope);
  v233 = &v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v236 = &v208 - v35;
  v231 = type metadata accessor for UUID();
  v239 = *(v231 - 8);
  v36 = *(v239 + 64);
  __chkstk_darwin(v231);
  v238 = &v208 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for OwnedBeaconRecord();
  v38 = *(*(v230 - 8) + 64);
  __chkstk_darwin(v230);
  v229 = &v208 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for SharedBeaconRecord(0);
  v40 = *(*(v235 - 8) + 64);
  v41 = __chkstk_darwin(v235);
  v224 = &v208 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v240 = &v208 - v44;
  __chkstk_darwin(v43);
  v241 = &v208 - v45;
  v46 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = &v208 - v48;
  v256 = type metadata accessor for DateInterval();
  v243 = *(v256 - 8);
  v50 = *(v243 + 64);
  v51 = __chkstk_darwin(v256);
  v53 = &v208 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v244 = &v208 - v54;
  v55 = [objc_opt_self() defaultStore];
  if (!v55)
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v56 = v55;
  v57 = [v55 aa_primaryAppleAccount];

  v245 = v57;
  if (!v57)
  {
    type metadata accessor for SPOwnerSessionError(0);
    v257 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v221 = v6;
  v223 = type metadata accessor for ShareInstruction();
  v58 = *(v223 + 24);
  v59 = *(v3 + 56);
  v222 = v2;
  v59(v49, 1, 1, v2);
  v60 = v244;
  sub_1005579E8(v244, v53, a1 + v58, v49);
  sub_10000B3A8(v49, &unk_101696900, &unk_10138B1E0);
  v61 = v243 + 8;
  v62 = *(v243 + 8);
  v63 = v53;
  v64 = v60;
  v65 = v256;
  v62(v63, v256);
  v66 = v246;
  v67 = sub_1005583F4(a1, v64);
  v237 = v66;
  if (v66)
  {
    v62(v64, v65);

    return;
  }

  v246 = v58;
  v219 = v67;
  v220 = v68;
  v216 = v62;
  v218 = v61;
  v209 = v3;
  v217 = a1;
  v69 = [v245 username];
  if (!v69)
  {
    goto LABEL_43;
  }

  v70 = v69;
  [v69 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
  v74 = v223;
  v75 = v246;
  if (!v73)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_101385D80;
    v118 = v245;
    v119 = [v245 username];
    v120 = v216;
    if (v119)
    {
      v121 = v119;

      v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v124 = v123;

      *(v117 + 56) = &type metadata for String;
      *(v117 + 64) = sub_100008C00();
      *(v117 + 32) = v122;
      *(v117 + 40) = v124;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v257 = 0;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      v120(v244, v256);
      return;
    }

    goto LABEL_44;
  }

  v211 = v71;
  v210 = v72;
  v212 = v73;

  v76 = v217;
  v77 = v229;
  sub_10058B200(v217 + v75, v229, type metadata accessor for OwnedBeaconRecord);
  v78 = *(v239 + 16);
  v79 = v76 + *(v74 + 32);
  v80 = v238;
  v81 = v231;
  v78(v238, v79, v231);
  v82 = v235;
  v83 = v241;
  v241[*(v235 + 56)] = 3;
  v213 = v82[15];
  v84 = v82[20];
  v215 = v84;
  v246 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v85 = *(v246 - 8);
  v223 = *(v85 + 56);
  v214 = v85 + 56;
  (v223)(&v83[v84], 1, 1, v246);
  *v83 = xmmword_10138C660;
  v86 = v230;
  v78(&v83[v82[5]], v77 + *(v230 + 20), v81);
  v78(&v83[v82[6]], v80, v81);
  v87 = &v83[v82[7]];
  *v87 = v211;
  v88 = v212;
  *(v87 + 1) = v210;
  *(v87 + 2) = v88;
  v89 = &v83[v82[8]];
  *v89 = 0;
  *(v89 + 1) = 0xE000000000000000;
  v90 = (v77 + v86[14]);
  v92 = *v90;
  v91 = v90[1];
  v93 = &v83[v82[9]];
  *v93 = v92;
  *(v93 + 1) = v91;
  v94 = (v77 + v86[15]);
  v95 = *v94;
  v96 = v94[1];
  v97 = &v83[v82[10]];
  *v97 = v95;
  *(v97 + 1) = v96;
  *&v83[v82[11]] = *(v77 + v86[16]);
  *&v83[v82[12]] = *(v77 + v86[17]);
  *&v83[v213] = -1;
  v83[v82[13]] = 0;
  v83[v82[16]] = 1;
  *&v83[v82[17]] = 0;
  v98 = v82[18];

  static Date.distantPast.getter();
  (*(v239 + 8))(v238, v81);
  sub_1000D2A70(v77 + v86[7], &v83[v82[19]], &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v77, type metadata accessor for OwnedBeaconRecord);
  v99 = v215;
  sub_10000B3A8(&v83[v215], &unk_1016AF890, &qword_1013926D0);
  (v223)(&v83[v99], 1, 1, v246);
  sub_10058B200(v83, v240, type metadata accessor for SharedBeaconRecord);
  v100 = *(v219 + 16);
  if (v100)
  {
    v258[0] = _swiftEmptyArrayStorage;
    v101 = v219;
    sub_101124C98(0, v100, 0);
    v102 = v258[0];
    v103 = v101 + ((*(v234 + 80) + 32) & ~*(v234 + 80));
    v246 = *(v234 + 72);
    v104 = (v243 + 16);
    v105 = v228;
    do
    {
      v106 = v247;
      sub_10058B200(v103, v247, type metadata accessor for TimeBasedKey);
      sub_100589B28(v106, v14, type metadata accessor for TimeBasedKey);
      v107 = v252;
      *v252 = *v14;
      v108 = v254;
      (*v104)(&v107[*(v259 + 20)], &v14[*(v254 + 20)], v256);
      v109 = &v14[*(v108 + 24)];
      v110 = *(v109 + 5);
      if (v110 >> 60 == 15)
      {
        v112 = *(v109 + 2);
        v111 = *(v109 + 3);
        sub_100017D5C(v112, v111);
        sub_10058B268(v14, type metadata accessor for TimeBasedKey);
      }

      else
      {
        v112 = *(v109 + 4);
        sub_100017D5C(v112, *(v109 + 5));
        sub_10058B268(v14, type metadata accessor for TimeBasedKey);
        v111 = v110 | 0x2000000000000000;
      }

      v113 = v252;
      v114 = &v252[*(v259 + 24)];
      *v114 = v112;
      v114[1] = v111;
      sub_100589B28(v113, v105, type metadata accessor for FamilyCryptoKeysV1);
      v258[0] = v102;
      v116 = v102[2];
      v115 = v102[3];
      if (v116 >= v115 >> 1)
      {
        sub_101124C98(v115 > 1, v116 + 1, 1);
        v102 = v258[0];
      }

      v102[2] = v116 + 1;
      sub_100589B28(v105, v102 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v116, type metadata accessor for FamilyCryptoKeysV1);
      v103 += v246;
      --v100;
    }

    while (v100);
  }

  else
  {

    v102 = _swiftEmptyArrayStorage;
  }

  v125 = *(v220 + 16);
  v126 = v251;
  v127 = v243;
  if (v125)
  {
    v258[0] = _swiftEmptyArrayStorage;
    v128 = v220;
    sub_101124C98(0, v125, 0);
    v129 = v258[0];
    v130 = v128 + ((*(v234 + 80) + 32) & ~*(v234 + 80));
    v131 = *(v234 + 72);
    v132 = (v127 + 16);
    do
    {
      v133 = v248;
      sub_10058B200(v130, v248, type metadata accessor for TimeBasedKey);
      v134 = v249;
      sub_100589B28(v133, v249, type metadata accessor for TimeBasedKey);
      v135 = v253;
      v136 = v254;
      *v253 = *v134;
      (*v132)(&v135[*(v259 + 20)], &v134[*(v136 + 20)], v256);
      v137 = &v134[*(v136 + 24)];
      v138 = *(v137 + 5);
      if (v138 >> 60 == 15)
      {
        v139 = *(v137 + 2);
        v140 = *(v137 + 3);
        sub_100017D5C(v139, v140);
        sub_10058B268(v134, type metadata accessor for TimeBasedKey);
      }

      else
      {
        v139 = *(v137 + 4);
        sub_100017D5C(v139, *(v137 + 5));
        sub_10058B268(v134, type metadata accessor for TimeBasedKey);
        v140 = v138 | 0x2000000000000000;
      }

      v141 = v253;
      v142 = &v253[*(v259 + 24)];
      *v142 = v139;
      v142[1] = v140;
      v143 = v250;
      sub_100589B28(v141, v250, type metadata accessor for FamilyCryptoKeysV1);
      v258[0] = v129;
      v145 = v129[2];
      v144 = v129[3];
      if (v145 >= v144 >> 1)
      {
        sub_101124C98(v144 > 1, v145 + 1, 1);
        v143 = v250;
        v129 = v258[0];
      }

      v129[2] = v145 + 1;
      sub_100589B28(v143, v129 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v145, type metadata accessor for FamilyCryptoKeysV1);
      v130 += v131;
      --v125;
      v126 = v251;
    }

    while (v125);
  }

  else
  {

    v129 = _swiftEmptyArrayStorage;
  }

  v146 = v256;
  v147 = v236;
  sub_100589B28(v240, v236, type metadata accessor for SharedBeaconRecord);
  v148 = MyAirPodsFamilyShareEnvelope;
  *(v147 + *(MyAirPodsFamilyShareEnvelope + 20)) = v102;
  *(v147 + *(v148 + 24)) = v129;
  v149 = v233;
  sub_10058B200(v147, v233, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
  v150 = v237;
  sub_10053BA5C(0, 4, v149, v258);
  v151 = v245;
  if (v150)
  {
    v216(v244, v146);

    sub_10058B268(v241, type metadata accessor for SharedBeaconRecord);
    v152 = v147;
  }

  else
  {
    v237 = 0;
    LODWORD(v252) = LOBYTE(v258[0]);
    v153 = v258[2];
    v250 = v258[1];
    v253 = v258[3];
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    v254 = xmmword_101385D80;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0x44495344746C41;
    *(inited + 40) = 0xE700000000000000;
    v155 = *(v217 + 16);
    *(inited + 48) = *(v217 + 8);
    *(inited + 56) = v155;

    v249 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v156 = qword_10177C378;
    v247 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v157 = swift_allocObject();
    *(v157 + 16) = v254;
    sub_10058B200(v147, v224, type metadata accessor for SharedBeaconRecord);
    v158 = String.init<A>(describing:)();
    v160 = v159;
    *(v157 + 56) = &type metadata for String;
    *&v254 = sub_100008C00();
    *(v157 + 64) = v254;
    *(v157 + 32) = v158;
    *(v157 + 40) = v160;
    v248 = v156;
    os_log(_:dso:log:_:_:)();

    v161 = v102[2];
    v162 = v245;
    if (v161)
    {
      v246 = v153;
      v163 = v255;
      v164 = (*(v255 + 80) + 32) & ~*(v255 + 80);
      sub_10058B200(v102 + v164, v227, type metadata accessor for FamilyCryptoKeysV1);
      v165 = v161 - 1;
      v166 = *(v163 + 72);
      sub_10058B200(v102 + v164 + v166 * v165, v126, type metadata accessor for FamilyCryptoKeysV1);
      v167 = v129[2];
      if (v167)
      {
        sub_10058B200(v129 + v164, v225, type metadata accessor for FamilyCryptoKeysV1);
        sub_10058B200(v129 + v164 + (v167 - 1) * v166, v226, type metadata accessor for FamilyCryptoKeysV1);
        LODWORD(v243) = static os_log_type_t.default.getter();
        v168 = swift_allocObject();
        v255 = xmmword_101391790;
        *(v168 + 16) = xmmword_101391790;
        v169 = v227;
        v170 = *v227;
        *(v168 + 56) = &type metadata for UInt64;
        *(v168 + 64) = &protocol witness table for UInt64;
        *(v168 + 32) = v170;
        v171 = *v126;
        *(v168 + 96) = &type metadata for UInt64;
        *(v168 + 104) = &protocol witness table for UInt64;
        *(v168 + 72) = v171;
        v172 = v259;
        v173 = v169 + *(v259 + 20);
        v174 = v221;
        DateInterval.start.getter();
        v175 = sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date);
        v176 = v222;
        v240 = v175;
        v177 = dispatch thunk of CustomStringConvertible.description.getter();
        v179 = v178;
        v180 = *(v209 + 8);
        v180(v174, v176);
        v181 = v254;
        *(v168 + 136) = &type metadata for String;
        *(v168 + 144) = v181;
        *(v168 + 112) = v177;
        *(v168 + 120) = v179;
        v182 = &v251[*(v172 + 20)];
        DateInterval.end.getter();
        v183 = dispatch thunk of CustomStringConvertible.description.getter();
        v185 = v184;
        v180(v174, v176);
        v186 = v180;
        v187 = v254;
        *(v168 + 176) = &type metadata for String;
        *(v168 + 184) = v187;
        *(v168 + 152) = v183;
        *(v168 + 160) = v185;
        os_log(_:dso:log:_:_:)();

        LODWORD(v243) = static os_log_type_t.default.getter();
        v188 = swift_allocObject();
        *(v188 + 16) = v255;
        v189 = v225;
        v190 = *v225;
        *(v188 + 56) = &type metadata for UInt64;
        *(v188 + 32) = v190;
        v191 = *v226;
        *(v188 + 96) = &type metadata for UInt64;
        *(v188 + 104) = &protocol witness table for UInt64;
        *(v188 + 64) = &protocol witness table for UInt64;
        *(v188 + 72) = v191;
        v192 = v259;
        v193 = v189 + *(v259 + 20);
        DateInterval.start.getter();
        v194 = dispatch thunk of CustomStringConvertible.description.getter();
        v196 = v195;
        v180(v174, v176);
        v197 = v254;
        *(v188 + 136) = &type metadata for String;
        *(v188 + 144) = v197;
        *(v188 + 112) = v194;
        *(v188 + 120) = v196;
        v198 = v226;
        v199 = v226 + *(v192 + 20);
        DateInterval.end.getter();
        v200 = dispatch thunk of CustomStringConvertible.description.getter();
        v202 = v201;
        v203 = v174;
        v126 = v251;
        v186(v203, v176);
        v162 = v245;
        v204 = v254;
        *(v188 + 176) = &type metadata for String;
        *(v188 + 184) = v204;
        *(v188 + 152) = v200;
        *(v188 + 160) = v202;
        os_log(_:dso:log:_:_:)();

        sub_10058B268(v198, type metadata accessor for FamilyCryptoKeysV1);
        sub_10058B268(v225, type metadata accessor for FamilyCryptoKeysV1);
      }

      sub_10058B268(v126, type metadata accessor for FamilyCryptoKeysV1);
      sub_10058B268(v227, type metadata accessor for FamilyCryptoKeysV1);
      v153 = v246;
    }

    v205 = type metadata accessor for Transaction();
    __chkstk_darwin(v205);
    *(&v208 - 8) = v242;
    *(&v208 - 56) = v252;
    *(&v208 - 6) = v250;
    *(&v208 - 5) = v153;
    v206 = v253;
    v207 = v249;
    *(&v208 - 4) = v253;
    *(&v208 - 3) = v207;
    *(&v208 - 2) = v217;
    static Transaction.named<A>(_:with:)();

    sub_100016590(v153, v206);

    v216(v244, v256);
    sub_10058B268(v241, type metadata accessor for SharedBeaconRecord);
    v152 = v236;
  }

  sub_10058B268(v152, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
}

void sub_1005530EC(uint64_t a1)
{
  v219 = type metadata accessor for Date();
  v220 = *(v219 - 8);
  v3 = *(v220 + 64);
  __chkstk_darwin(v219);
  v201 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v226 = type metadata accessor for TimeBasedKey();
  v215 = *(v226 - 8);
  v5 = *(v215 + 64);
  __chkstk_darwin(v226);
  v7 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for FamilyCryptoKeysV2();
  *&v227 = *(v228 - 8);
  v8 = *(v227 + 64);
  v9 = __chkstk_darwin(v228);
  v202 = (&v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v204 = (&v184 - v12);
  v13 = __chkstk_darwin(v11);
  v208 = &v184 - v14;
  v15 = __chkstk_darwin(v13);
  v205 = (&v184 - v16);
  v17 = __chkstk_darwin(v15);
  v207 = &v184 - v18;
  __chkstk_darwin(v17);
  v206 = &v184 - v19;
  MyAccessoryFamilyShareEnvelope = type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0);
  v20 = *(*(MyAccessoryFamilyShareEnvelope - 8) + 64);
  v21 = __chkstk_darwin(MyAccessoryFamilyShareEnvelope);
  v213 = &v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v184 - v23;
  v211 = type metadata accessor for UUID();
  v216 = *(v211 - 8);
  v25 = *(v216 + 64);
  __chkstk_darwin(v211);
  v224 = &v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for OwnedBeaconRecord();
  v27 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v210 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for SharedBeaconRecord(0);
  v29 = *(*(v214 - 8) + 64);
  v30 = __chkstk_darwin(v214);
  v203 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v217 = &v184 - v33;
  __chkstk_darwin(v32);
  v218 = &v184 - v34;
  v35 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v184 - v37;
  v39 = type metadata accessor for DateInterval();
  v222 = *(v39 - 8);
  v40 = v222[8];
  v41 = __chkstk_darwin(v39);
  v43 = &v184 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v223 = &v184 - v44;
  v45 = [objc_opt_self() defaultStore];
  if (!v45)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v46 = v45;
  v47 = [v45 aa_primaryAppleAccount];

  v221 = v47;
  if (!v47)
  {
    type metadata accessor for SPOwnerSessionError(0);
    v230 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v200 = v24;
  v199 = type metadata accessor for ShareInstruction();
  v48 = *(v199 + 24);
  (*(v220 + 56))(v38, 1, 1, v219);
  v49 = v223;
  sub_1005579E8(v223, v43, v48 + a1, v38);
  sub_10000B3A8(v38, &unk_101696900, &unk_10138B1E0);
  v50 = v222 + 1;
  v51 = v222[1];
  v51(v43, v39);
  v52 = v225;
  v53 = sub_1005583F4(a1, v49);
  if (v52)
  {
    v51(v49, v39);

    return;
  }

  v194 = v48;
  v55 = v199;
  v197 = v53;
  v198 = v54;
  v196 = 0;
  v195 = v51;
  v225 = v39;
  v56 = [v221 username];
  if (!v56)
  {
    goto LABEL_37;
  }

  v57 = v56;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
  if (!v60)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_101385D80;
    v101 = v221;
    v102 = [v221 username];
    if (v102)
    {
      v103 = v102;

      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;

      *(v100 + 56) = &type metadata for String;
      *(v100 + 64) = sub_100008C00();
      *(v100 + 32) = v104;
      *(v100 + 40) = v106;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v230 = 0;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      v195(v223, v225);
      return;
    }

    goto LABEL_38;
  }

  v193 = v50;
  v185 = v1;
  v189 = v60;
  v188 = v58;
  v61 = v210;
  v187 = v59;
  sub_10058B200(v194 + a1, v210, type metadata accessor for OwnedBeaconRecord);
  v62 = *(v55 + 32);
  v63 = *(v216 + 16);
  v186 = a1;
  v64 = v211;
  v63(v224, a1 + v62, v211);
  v65 = v214;
  v66 = v218;
  v218[*(v214 + 56)] = 3;
  v190 = v65[15];
  v67 = v65[20];
  v192 = v67;
  v199 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v68 = *(v199 - 8);
  v194 = *(v68 + 56);
  v191 = v68 + 56;
  v194(&v66[v67], 1, 1, v199);
  *v66 = xmmword_10138C660;
  v69 = v209;
  v63(&v66[v65[5]], v61 + *(v209 + 20), v64);
  v63(&v66[v65[6]], v224, v64);
  v70 = &v66[v65[7]];
  *v70 = v188;
  v71 = v189;
  *(v70 + 1) = v187;
  *(v70 + 2) = v71;
  v72 = &v66[v65[8]];
  *v72 = 0;
  *(v72 + 1) = 0xE000000000000000;
  v73 = (v61 + v69[14]);
  v75 = *v73;
  v74 = v73[1];
  v76 = &v66[v65[9]];
  *v76 = v75;
  *(v76 + 1) = v74;
  v77 = (v61 + v69[15]);
  v78 = *v77;
  v79 = v77[1];
  v80 = &v66[v65[10]];
  *v80 = v78;
  *(v80 + 1) = v79;
  *&v66[v65[11]] = *(v61 + v69[16]);
  *&v66[v65[12]] = *(v61 + v69[17]);
  *&v66[v190] = -1;
  v66[v65[13]] = 0;
  v66[v65[16]] = 1;
  *&v66[v65[17]] = 0;
  v81 = v65[18];

  static Date.distantPast.getter();
  (*(v216 + 8))(v224, v64);
  sub_1000D2A70(v61 + v69[7], &v66[v65[19]], &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v61, type metadata accessor for OwnedBeaconRecord);
  v82 = v192;
  sub_10000B3A8(&v66[v192], &unk_1016AF890, &qword_1013926D0);
  v194(&v66[v82], 1, 1, v199);
  sub_10058B200(v66, v217, type metadata accessor for SharedBeaconRecord);
  v83 = *(v197 + 16);
  if (v83)
  {
    v229[0] = _swiftEmptyArrayStorage;
    v84 = v197;
    sub_101124C54(0, v83, 0);
    v85 = v229[0];
    v86 = v84 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
    v224 = *(v215 + 72);
    v87 = (v222 + 2);
    v88 = v206;
    do
    {
      sub_10058B200(v86, v7, type metadata accessor for TimeBasedKey);
      *v88 = *v7;
      v89 = v85;
      v90 = v226;
      v91 = v228;
      (*v87)(&v88[*(v228 + 20)], &v7[*(v226 + 20)], v225);
      v92 = &v7[*(v90 + 24)];
      v93 = *(v92 + 2);
      v94 = *(v92 + 3);
      sub_100017D5C(v93, v94);
      sub_10058B268(v7, type metadata accessor for TimeBasedKey);
      v95 = &v88[*(v91 + 24)];
      *v95 = v93;
      v95[1] = v94;
      v85 = v89;
      v229[0] = v89;
      v97 = v89[2];
      v96 = v89[3];
      if (v97 >= v96 >> 1)
      {
        sub_101124C54(v96 > 1, v97 + 1, 1);
        v88 = v206;
        v85 = v229[0];
      }

      v85[2] = v97 + 1;
      sub_100589B28(v88, v85 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v97, type metadata accessor for FamilyCryptoKeysV2);
      v86 += v224;
      --v83;
    }

    while (v83);

    v98 = v222;
    v99 = v215;
  }

  else
  {

    v85 = _swiftEmptyArrayStorage;
    v99 = v215;
    v98 = v222;
  }

  v107 = *(v198 + 16);
  v108 = v225;
  if (v107)
  {
    v222 = v85;
    v229[0] = _swiftEmptyArrayStorage;
    v109 = v198;
    sub_101124C54(0, v107, 0);
    v110 = v229[0];
    v111 = v109 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v224 = *(v99 + 72);
    v112 = (v98 + 2);
    v113 = v207;
    do
    {
      sub_10058B200(v111, v7, type metadata accessor for TimeBasedKey);
      *v113 = *v7;
      v114 = v226;
      v115 = v228;
      (*v112)(&v113[*(v228 + 20)], &v7[*(v226 + 20)], v108);
      v116 = &v7[*(v114 + 24)];
      v117 = *(v116 + 2);
      v118 = *(v116 + 3);
      sub_100017D5C(v117, v118);
      sub_10058B268(v7, type metadata accessor for TimeBasedKey);
      v119 = &v113[*(v115 + 24)];
      *v119 = v117;
      v119[1] = v118;
      v229[0] = v110;
      v121 = v110[2];
      v120 = v110[3];
      if (v121 >= v120 >> 1)
      {
        sub_101124C54(v120 > 1, v121 + 1, 1);
        v113 = v207;
        v110 = v229[0];
      }

      v110[2] = v121 + 1;
      sub_100589B28(v113, v110 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v121, type metadata accessor for FamilyCryptoKeysV2);
      v108 = v225;
      v111 += v224;
      --v107;
    }

    while (v107);

    v85 = v222;
  }

  else
  {

    v110 = _swiftEmptyArrayStorage;
  }

  v122 = v200;
  sub_100589B28(v217, v200, type metadata accessor for SharedBeaconRecord);
  v123 = MyAccessoryFamilyShareEnvelope;
  *(v122 + *(MyAccessoryFamilyShareEnvelope + 20)) = v85;
  *(v122 + *(v123 + 24)) = v110;
  v124 = v85;
  v125 = v213;
  sub_10058B200(v122, v213, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
  v126 = v196;
  sub_10053BD58(0, 3, v125, v229);
  if (v126)
  {
    v195(v223, v108);

    sub_10058B268(v218, type metadata accessor for SharedBeaconRecord);
    v127 = v122;
  }

  else
  {
    v128 = v124;
    v196 = 0;
    LODWORD(v224) = LOBYTE(v229[0]);
    v129 = v229[2];
    v222 = v229[1];
    v130 = v229[3];
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    v226 = xmmword_101385D80;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0x44495344746C41;
    *(inited + 40) = 0xE700000000000000;
    v132 = *(v186 + 16);
    *(inited + 48) = *(v186 + 8);
    *(inited + 56) = v132;

    v217 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v133 = qword_10177C378;
    v215 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v134 = swift_allocObject();
    *(v134 + 16) = v226;
    sub_10058B200(v200, v203, type metadata accessor for SharedBeaconRecord);
    v135 = String.init<A>(describing:)();
    v137 = v136;
    *(v134 + 56) = &type metadata for String;
    *&v226 = sub_100008C00();
    *(v134 + 64) = v226;
    *(v134 + 32) = v135;
    *(v134 + 40) = v137;
    v216 = v133;
    os_log(_:dso:log:_:_:)();

    v138 = v128;
    v139 = v128[2];
    v140 = v208;
    v141 = v205;
    if (v139)
    {
      v213 = v130;
      v214 = v129;
      v142 = v227;
      v143 = (*(v227 + 80) + 32) & ~*(v227 + 80);
      v144 = v138 + v143;
      sub_10058B200(v138 + v143, v205, type metadata accessor for FamilyCryptoKeysV2);
      v145 = v139 - 1;
      v146 = *(v142 + 72);
      sub_10058B200(v144 + v146 * v145, v140, type metadata accessor for FamilyCryptoKeysV2);
      v147 = v110[2];
      if (v147)
      {
        sub_10058B200(v110 + v143, v204, type metadata accessor for FamilyCryptoKeysV2);
        sub_10058B200(v110 + v143 + (v147 - 1) * v146, v202, type metadata accessor for FamilyCryptoKeysV2);
        LODWORD(MyAccessoryFamilyShareEnvelope) = static os_log_type_t.default.getter();
        v148 = swift_allocObject();
        v227 = xmmword_101391790;
        *(v148 + 16) = xmmword_101391790;
        v149 = *v141;
        *(v148 + 56) = &type metadata for UInt64;
        *(v148 + 64) = &protocol witness table for UInt64;
        *(v148 + 32) = v149;
        v150 = *v140;
        *(v148 + 96) = &type metadata for UInt64;
        *(v148 + 104) = &protocol witness table for UInt64;
        *(v148 + 72) = v150;
        v151 = v228;
        v152 = v141 + *(v228 + 20);
        v153 = v201;
        DateInterval.start.getter();
        v211 = sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date);
        v154 = v219;
        v155 = dispatch thunk of CustomStringConvertible.description.getter();
        v157 = v156;
        v159 = v220 + 8;
        v158 = *(v220 + 8);
        v158(v153, v154);
        v220 = v159;
        v160 = v226;
        *(v148 + 136) = &type metadata for String;
        *(v148 + 144) = v160;
        *(v148 + 112) = v155;
        *(v148 + 120) = v157;
        v161 = &v208[*(v151 + 20)];
        DateInterval.end.getter();
        v162 = dispatch thunk of CustomStringConvertible.description.getter();
        v164 = v163;
        v158(v153, v154);
        v165 = v158;
        *(v148 + 176) = &type metadata for String;
        *(v148 + 184) = v160;
        *(v148 + 152) = v162;
        *(v148 + 160) = v164;
        os_log(_:dso:log:_:_:)();

        LODWORD(MyAccessoryFamilyShareEnvelope) = static os_log_type_t.default.getter();
        v166 = swift_allocObject();
        *(v166 + 16) = v227;
        v167 = v204;
        v168 = *v204;
        *(v166 + 56) = &type metadata for UInt64;
        *(v166 + 32) = v168;
        v169 = v202;
        v170 = *v202;
        *(v166 + 96) = &type metadata for UInt64;
        *(v166 + 104) = &protocol witness table for UInt64;
        *(v166 + 64) = &protocol witness table for UInt64;
        *(v166 + 72) = v170;
        v171 = v228;
        v172 = v167 + *(v228 + 20);
        DateInterval.start.getter();
        v173 = dispatch thunk of CustomStringConvertible.description.getter();
        v175 = v174;
        v165(v153, v154);
        v176 = v226;
        *(v166 + 136) = &type metadata for String;
        *(v166 + 144) = v176;
        *(v166 + 112) = v173;
        *(v166 + 120) = v175;
        v177 = v169 + *(v171 + 20);
        DateInterval.end.getter();
        v178 = dispatch thunk of CustomStringConvertible.description.getter();
        v180 = v179;
        v165(v153, v154);
        v141 = v205;
        v140 = v208;
        v181 = v226;
        *(v166 + 176) = &type metadata for String;
        *(v166 + 184) = v181;
        *(v166 + 152) = v178;
        *(v166 + 160) = v180;
        os_log(_:dso:log:_:_:)();

        sub_10058B268(v169, type metadata accessor for FamilyCryptoKeysV2);
        sub_10058B268(v204, type metadata accessor for FamilyCryptoKeysV2);
      }

      sub_10058B268(v140, type metadata accessor for FamilyCryptoKeysV2);
      sub_10058B268(v141, type metadata accessor for FamilyCryptoKeysV2);
      v129 = v214;
      v130 = v213;
    }

    v182 = type metadata accessor for Transaction();
    __chkstk_darwin(v182);
    *(&v184 - 8) = v185;
    *(&v184 - 56) = v224;
    *(&v184 - 6) = v222;
    *(&v184 - 5) = v129;
    v183 = v217;
    *(&v184 - 4) = v130;
    *(&v184 - 3) = v183;
    *(&v184 - 2) = v186;
    static Transaction.named<A>(_:with:)();

    sub_100016590(v129, v130);

    v195(v223, v225);
    sub_10058B268(v218, type metadata accessor for SharedBeaconRecord);
    v127 = v200;
  }

  sub_10058B268(v127, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
}

uint64_t sub_1005548D4(uint64_t (*a1)(uint64_t a1), uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v163 = a8;
  v148 = a6;
  v147 = a5;
  v146 = a4;
  LODWORD(v145) = a3;
  v159 = a2;
  v165 = a1;
  v138 = type metadata accessor for DispatchQoS.QoSClass();
  v137 = *(v138 - 8);
  v9 = *(v137 + 64);
  __chkstk_darwin(v138);
  v136 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for DispatchTime();
  v135 = *(v140 - 8);
  v11 = *(v135 + 64);
  v12 = __chkstk_darwin(v140);
  v133 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v134 = &v131 - v14;
  v150 = type metadata accessor for DispatchWorkItemFlags();
  v157 = *(v150 - 8);
  v15 = *(v157 + 64);
  __chkstk_darwin(v150);
  v149 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for DispatchQoS();
  v156 = *(v152 - 8);
  v17 = *(v156 + 64);
  __chkstk_darwin(v152);
  v151 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for MessagingOptions(0);
  v19 = *(*(v144 - 1) + 8);
  __chkstk_darwin(v144);
  v21 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v142 = (&v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v27 = &v131 - v26;
  v28 = type metadata accessor for UUID();
  v154 = *(v28 - 8);
  v155 = v28;
  v29 = *(v154 + 64);
  v30 = __chkstk_darwin(v28);
  v139 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v143 = (&v131 - v33);
  v132 = v34;
  __chkstk_darwin(v32);
  v153 = &v131 - v35;
  v160 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v36 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  *&v161 = &v131 - v37;
  v38 = type metadata accessor for SystemInfo.DeviceLockState();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v43 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v131 - v44;
  v46 = type metadata accessor for SharingRampState();
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = &v131 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10052FFA4(v49);
  v50 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  v51 = (*(*(v50 - 8) + 48))(v49, 2, v50);
  sub_10058B268(v49, type metadata accessor for SharingRampState);
  v158 = v27;
  v141 = v21;
  if (v51 == 2)
  {
    v162 = sub_100B0F690(&off_1016094E0);
  }

  else
  {
    v162 = &_swiftEmptySetSingleton;
  }

  sub_100695608(a7);

  v52 = (v163 + *(type metadata accessor for ShareInstruction() + 28));
  LODWORD(v163) = *v52;
  v53 = *(v52 + 1);
  v54 = *(v52 + 2);
  v55 = sub_100B0F690(&off_101609508);

  static SystemInfo.lockState.getter();
  (*(v39 + 104))(v43, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v38);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v57 = *(v39 + 8);
  v57(v43, v38);
  v57(v45, v38);
  if (v56)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPOwnerSessionError(0);
    v172 = 5;
LABEL_16:
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v89 = v161;
    *v161 = aBlock;
    swift_storeEnumTagMultiPayload();
    sub_100557804(v89);

    return sub_10000B3A8(v89, &qword_10169F358, &qword_1013A0810);
  }

  v131 = v55;
  v58 = v163;
  v59 = v159;
  v60 = v53;
  if ((sub_100540CB8(v163, v53, v54) & 1) == 0)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_101385D80;
    *(v88 + 56) = &type metadata for String;
    *(v88 + 64) = sub_100008C00();
    *(v88 + 32) = v60;
    *(v88 + 40) = v54;

    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    v172 = 12;
    goto LABEL_16;
  }

  v160 = *(v59 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v61 = swift_allocObject();
  v161 = xmmword_101385D80;
  *(v61 + 16) = xmmword_101385D80;
  *(v61 + 32) = v58;
  *(v61 + 40) = v53;
  *(v61 + 48) = v54;
  v62 = v155;
  v63 = *(v154 + 56);
  v64 = v158;
  v63(v158, 1, 1, v155);

  v65 = v141;
  UUID.init()();
  v66 = v142;
  sub_1000D2A70(v64, v142, &qword_1016980D0, &unk_10138F3B0);
  v67 = v144;
  v68 = *(v144 + 7);
  v63((v65 + v68), 1, 1, v62);
  *(v65 + v67[5]) = v61;
  *(v65 + v67[6]) = 1;
  sub_10002311C(v66, v65 + v68, &qword_1016980D0, &unk_10138F3B0);
  v69 = v65 + v67[8];
  *v69 = 0;
  *(v69 + 8) = 1;
  *(v65 + v67[9]) = 0;
  *(v65 + v67[10]) = v131;
  *(v65 + v67[11]) = v162;
  v70 = (v65 + v67[12]);
  *v70 = 0;
  v70[1] = 0;
  *(v65 + v67[13]) = xmmword_1013B0D90;
  v71 = v143;
  v72 = v164;
  sub_1010A6F88(v145, v146, v147, v148, v65, v143);
  if (v72)
  {
    sub_10000B3A8(v158, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v65, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v73 = swift_allocObject();
    *(v73 + 16) = v161;
    aBlock = v72;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v74 = String.init<A>(describing:)();
    v76 = v75;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = sub_100008C00();
    *(v73 + 32) = v74;
    *(v73 + 40) = v76;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v77 = v137;
    v78 = v136;
    v79 = v138;
    (*(v137 + 104))(v136, enum case for DispatchQoS.QoSClass.default(_:), v138);
    v164 = static OS_dispatch_queue.global(qos:)();
    (*(v77 + 8))(v78, v79);
    v80 = swift_allocObject();
    v81 = v165;
    v80[2] = sub_1005896EC;
    v80[3] = v81;
    v80[4] = v72;
    v170 = sub_10058D73C;
    v171 = v80;
    aBlock = _NSConcreteStackBlock;
    v167 = 1107296256;
    v168 = sub_100006684;
    v169 = &unk_101627FF8;
    v82 = _Block_copy(&aBlock);

    swift_errorRetain();
    v83 = v151;
    static DispatchQoS.unspecified.getter();
    v172 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v84 = v149;
    v85 = v150;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v86 = v164;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v82);

    (*(v157 + 8))(v84, v85);
    (*(v156 + 8))(v83, v152);
  }

  else
  {
    v164 = 0;
    sub_10000B3A8(v158, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v65, type metadata accessor for MessagingOptions);
    v91 = v153;
    v90 = v154;
    v92 = v154 + 32;
    v93 = v155;
    v162 = *(v154 + 32);
    (v162)(v153, v71, v155);
    v94 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    swift_allocObject();
    v163 = Future.init()();
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v97 = swift_allocObject();
    *(v97 + 16) = v161;
    v98 = UUID.uuidString.getter();
    v100 = v99;
    *(v97 + 56) = &type metadata for String;
    *(v97 + 64) = sub_100008C00();
    *(v97 + 32) = v98;
    *(v97 + 40) = v100;
    os_log(_:dso:log:_:_:)();

    v101 = v159;
    v147 = *(v159 + 168);
    v102 = *(v90 + 16);
    v160 = v90 + 16;
    *&v161 = v102;
    v103 = v139;
    v102(v139, v91, v93);
    v104 = (*(v90 + 80) + 24) & ~*(v90 + 80);
    v148 = *(v90 + 80);
    v145 = v104 + v132;
    v105 = v104;
    v158 = v104;
    v106 = (v104 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
    v107 = swift_allocObject();
    *(v107 + 16) = v101;
    (v162)(v107 + v105, v103, v93);
    *(v107 + v106) = v163;
    v170 = sub_10058D4DC;
    v171 = v107;
    aBlock = _NSConcreteStackBlock;
    v167 = 1107296256;
    v144 = &v168;
    v168 = sub_100006684;
    v169 = &unk_101628048;
    v108 = _Block_copy(&aBlock);
    v146 = v92;
    v109 = v108;

    v110 = v151;
    static DispatchQoS.unspecified.getter();
    v172 = _swiftEmptyArrayStorage;
    v138 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    v137 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v141 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v111 = v93;
    v112 = v149;
    v113 = v150;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v109);
    v114 = *(v157 + 8);
    v157 += 8;
    v143 = v114;
    (v114)(v112, v113);
    v115 = *(v156 + 8);
    v156 += 8;
    v142 = v115;
    (v115)(v110, v152);

    v116 = v139;
    (v161)(v139, v153, v111);
    v117 = swift_allocObject();
    *(v117 + 16) = v101;
    (v162)(&v158[v117], v116, v111);
    v118 = (v117 + v106);
    v119 = v165;
    *v118 = sub_1005896EC;
    v118[1] = v119;

    Future.addSuccess(block:)();

    v120 = swift_allocObject();
    *(v120 + 16) = sub_1005896EC;
    *(v120 + 24) = v119;

    Future.addFailure(block:)();

    v121 = v133;
    static DispatchTime.now()();
    v122 = v134;
    + infix(_:_:)();
    v136 = *(v135 + 8);
    (v136)(v121, v140);
    v123 = v116;
    v124 = v116;
    v125 = v155;
    (v161)(v124, v153, v155);
    v126 = swift_allocObject();
    *(v126 + 16) = v101;
    v127 = v123;
    v128 = v125;
    (v162)(&v158[v126], v127, v125);
    v170 = sub_10058D4E0;
    v171 = v126;
    aBlock = _NSConcreteStackBlock;
    v167 = 1107296256;
    v168 = sub_100006684;
    v169 = &unk_1016280E8;
    v129 = _Block_copy(&aBlock);

    v130 = v151;
    static DispatchQoS.unspecified.getter();
    v172 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v129);

    (v143)(v112, v113);
    (v142)(v130, v152);
    (v136)(v122, v140);
    (*(v154 + 8))(v153, v128);
  }
}