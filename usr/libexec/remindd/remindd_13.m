unint64_t sub_1001907E0()
{
  result = qword_10093A520;
  if (!qword_10093A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A520);
  }

  return result;
}

unint64_t sub_100190834()
{
  result = qword_10093A530;
  if (!qword_10093A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A530);
  }

  return result;
}

uint64_t sub_100190888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001908EC(uint64_t a1)
{
  v2 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100190948()
{
  result = qword_100943E80;
  if (!qword_100943E80)
  {
    type metadata accessor for REMObjectID_Codable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943E80);
  }

  return result;
}

unint64_t sub_100190FF4()
{
  _StringGuts.grow(_:)(17);

  strcpy(&v11, "remObjectID: ");
  HIWORD(v11._object) = -4864;
  v1._countAndFlagsBits = UUID.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  String.append(_:)(v11);

  _StringGuts.grow(_:)(17);

  v11._countAndFlagsBits = 0x6163696E6F6E6163;
  v11._object = 0xEF203A656D614E6CLL;
  v3 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  v9 = *(v0 + *(v3 + 20));
  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v4._countAndFlagsBits = Optional.descriptionOrNil.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6163696E6F6E6163;
  v5._object = 0xEF203A656D614E6CLL;
  String.append(_:)(v5);

  strcpy(&v11, "displayName: ");
  HIWORD(v11._object) = -4864;
  v10 = *(v0 + *(v3 + 24));
  v6._countAndFlagsBits = Optional.descriptionOrNil.getter();
  String.append(_:)(v6);

  String.append(_:)(v11);

  v7._countAndFlagsBits = 125;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  return 0xD000000000000031;
}

unint64_t sub_100191244(void *a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(17);

  strcpy(&v17, "remObjectID: ");
  HIWORD(v17._object) = -4864;
  v6 = [a1 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  String.append(_:)(v17);

  v12._countAndFlagsBits = a2;
  v12._object = a3;
  String.append(_:)(v12);
  v13 = strcpy(&v17, "title: ");

  v14._countAndFlagsBits = v13;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 125;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);

  return 0xD00000000000002ELL;
}

uint64_t sub_1001913E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = v3;
  a2[1] = v2;
}

void sub_100191400(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = _s10PredicatesOMa_1();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  v22 = xmmword_1007953F0;
  *(v9 + 16) = xmmword_1007953F0;
  *(v9 + 32) = a1;
  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100797700;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  v11 = swift_initStackObject();
  *(v11 + 16) = v22;
  *(v11 + 32) = swift_getKeyPath();
  *&v22 = a1;
  v12 = sub_10001F6F4();
  v13 = sub_100405438(inited, v11, 0, v12);

  swift_setDeallocating();
  v14 = *(v11 + 16);
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100193BC4(v8, _s10PredicatesOMa_1);

    return;
  }

  v23 = v16;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
  v17 = Sequence.elements<A>(ofType:)();

  sub_100193BC4(v8, _s10PredicatesOMa_1);

  if (v17 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }

LABEL_12:

    [objc_opt_self() noSuchObjectErrorWithObjectID:v22];
    swift_willThrow();
    return;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 32);
LABEL_10:
    v19 = v18;

    sub_100192C08(v19, v24);
    v20 = v24[1];
    v21 = v25[0];
    *a2 = v24[0];
    a2[1] = v20;
    a2[2] = v21;
    *(a2 + 41) = *(v25 + 9);
    return;
  }

  __break(1u);
}

void sub_100191828(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 membershipsOfRemindersInSectionsChecksum];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100191890(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setMembershipsOfRemindersInSectionsChecksum:?];
}

void sub_100191924(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_100191994(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v8 = *a1;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = isa;
  [v6 *a5];
}

uint64_t sub_100191A0C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v97 = a4;
  v84 = a5;
  v9 = _s10PredicatesOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v86 = (v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = v81 - v13;
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v16[13];
  LODWORD(v88) = a2;
  if (a2)
  {
    v22 = 0;
  }

  else
  {
    v22 = a1;
  }

  v85 = v22;
  v23 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  if ((a2 & 1) == 0)
  {
    v23 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  v21(v20, *v23, v15, v18);
  v24 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v25 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
  *v14 = a3;
  v91 = v20;
  v92 = v16;
  v26 = v16[2];
  v93 = v15;
  v27 = v14;
  v26(v14 + v25, v20, v15);
  v83 = v9;
  swift_storeEnumTagMultiPayload();
  v28 = qword_100936080;
  v87 = a3;

  if (v28 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v29 = qword_100974E30;
    v96 = v27;
    v30 = sub_100043AA8();
    v31 = [objc_allocWithZone(NSFetchRequest) init];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [ObjCClassFromMetadata entity];
    [v31 setEntity:v32];

    [v31 setAffectedStores:0];
    [v31 setPredicate:v30];

    [v31 setFetchLimit:0];
    v94 = v31;
    [v31 setFetchOffset:0];
    v33 = _swiftEmptyArrayStorage;
    v102 = _swiftEmptyArrayStorage;
    v34 = sub_1000F5104(&qword_100949370, &unk_100797770);
    v35 = sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    v81[2] = v34;
    v81[1] = v35;
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v102 = sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v105 = v102;
    v37 = sub_100235FA0(Predicate);

    v27 = sub_100277CC0(v37);

    v38 = v24;

    v39 = *(v27 + 16);
    if (!v39)
    {
      goto LABEL_26;
    }

LABEL_10:
    v104 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      goto LABEL_57;
    }

    v89 = v29;
    v90 = v38;
    v40 = 0;
    v33 = v104;
    v98 = v39;
    v99 = v27 & 0xC000000000000001;
    while (1)
    {
      v24 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v99)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v40 >= *(v27 + 16))
        {
          goto LABEL_23;
        }

        v41 = *(v27 + 8 * v40 + 32);
      }

      v42 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v43)
      {
        v102 = 0;
        v103 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v79._object = 0x80000001007EC120;
        v79._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v79);
        v101 = v41;
        sub_1000F5104(&unk_100939F10, &qword_100797F30);
        goto LABEL_70;
      }

      v9 = v42;
      v5 = v43;

      v104 = v33;
      v14 = *(v33 + 16);
      v44 = *(v33 + 24);
      if (v14 >= v44 >> 1)
      {
        sub_100026EF4((v44 > 1), v14 + 1, 1);
        v33 = v104;
      }

      *(v33 + 16) = v14 + 1;
      v45 = v33 + 16 * v14;
      *(v45 + 32) = v9;
      *(v45 + 40) = v5;
      ++v40;
      if (v24 == v98)
      {

        v29 = v89;
        v38 = v90;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v39 = _CocoaArrayWrapper.endIndex.getter();
  if (v39)
  {
    goto LABEL_10;
  }

LABEL_26:

LABEL_27:
  sub_100271EA8(v33);
  v33 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v39 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
  v47 = v94;
  [v94 setRelationshipKeyPathsForPrefetching:isa];

  v5 = sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v48 = Array._bridgeToObjectiveC()().super.isa;
  [v47 setSortDescriptors:v48];

  v49 = v95;
  v50 = NSManagedObjectContext.fetch<A>(_:)();
  v14 = v49;
  if (v49)
  {

    sub_100193BC4(v96, _s10PredicatesOMa);
    return (v92[1])(v91, v93);
  }

  v52 = v47;
  v9 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v50);

  sub_100193BC4(v96, _s10PredicatesOMa);
  v106 = v9;
  if ((v88 & 1) == 0)
  {
    if (v9 >> 62)
    {
      goto LABEL_58;
    }

    v53 = v85;
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < v85)
    {
      v89 = v29;
      v90 = v38;
      *v86 = v87;
      swift_storeEnumTagMultiPayload();
      v54 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v29 = v53 - v54;
      if (!__OFSUB__(v53, v54))
      {
        goto LABEL_33;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      for (i = _CocoaArrayWrapper.endIndex.getter(); ; i = *(v29 + 16))
      {
        v81[0] = v5;
        if (!i)
        {
          break;
        }

        v88 = v9;
        v94 = v33;
        v95 = v14;
        v105 = v38;
        v61 = sub_100026EF4(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          goto LABEL_64;
        }

        v9 = 0;
        v5 = v105;
        v98 = i;
        v99 = v29 & 0xC000000000000001;
        while (1)
        {
          v14 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v99)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *(v29 + 16))
            {
              goto LABEL_56;
            }

            v41 = *(v29 + 8 * v9 + 32);
          }

          v62 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v63)
          {
            while (1)
            {
              v102 = 0;
              v103 = 0xE000000000000000;
              _StringGuts.grow(_:)(46);
              v80._object = 0x80000001007EC120;
              v80._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v80);
              v104 = v41;
              sub_1000F5104(&unk_100939F10, &qword_100797F30);
LABEL_70:
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }
          }

          v39 = v62;
          v64 = v63;

          v105 = v5;
          v33 = v5[2];
          v65 = v5[3];
          v38 = (v33 + 1);
          if (v33 >= v65 >> 1)
          {
            sub_100026EF4((v65 > 1), v33 + 1, 1);
            v5 = v105;
          }

          v5[2] = v38;
          v66 = &v5[2 * v33];
          v66[4] = v39;
          v66[5] = v64;
          ++v9;
          if (v14 == v98)
          {

            v14 = v95;
            v39 = 0x10092B000;
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v72 = _CocoaArrayWrapper.endIndex.getter();
        v73 = v85;
        if (v72 >= v85)
        {
          goto LABEL_66;
        }

        v89 = v29;
        v90 = v38;
        *v86 = v87;
        swift_storeEnumTagMultiPayload();
        v74 = _CocoaArrayWrapper.endIndex.getter();
        v29 = v73 - v74;
        if (__OFSUB__(v73, v74))
        {
          goto LABEL_61;
        }

LABEL_33:

        v55 = sub_100043AA8();
        v56 = [objc_allocWithZone(NSFetchRequest) init];
        v57 = [ObjCClassFromMetadata entity];
        [v56 setEntity:v57];

        [v56 setAffectedStores:0];
        [v56 setPredicate:v55];

        [v56 setFetchLimit:v29];
        v96 = v56;
        [v56 setFetchOffset:0];
        v38 = _swiftEmptyArrayStorage;
        v102 = _swiftEmptyArrayStorage;
        v58 = Sequence<>.postFetchPredicateTypes.getter();
        v100 = sub_1003EBAD0();
        sub_100271EA8(_swiftEmptyArrayStorage);
        v59 = sub_100235FA0(v58);

        v29 = sub_100277CC0(v59);

        if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      v5 = _swiftEmptyArrayStorage;
LABEL_50:
      sub_100271EA8(v5);
      Array<A>.removeDuplicates()();
      v67 = Array._bridgeToObjectiveC()().super.isa;

      v68 = v96;
      [v96 *(v39 + 40)];

      v69 = Array._bridgeToObjectiveC()().super.isa;
      [v68 setSortDescriptors:v69];

      v70 = NSManagedObjectContext.fetch<A>(_:)();
      if (v14)
      {

        sub_100193BC4(v86, _s10PredicatesOMa);
        (v92[1])(v91, v93);
      }

      v71 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v70);

      sub_100193BC4(v86, _s10PredicatesOMa);
      v61 = v71;
      if (v71 >> 62)
      {
LABEL_64:
        v75 = v61;
        v76 = _CocoaArrayWrapper.endIndex.getter();
        v61 = v75;
        if (v76)
        {
          goto LABEL_54;
        }
      }

      else if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_54:
        sub_100271930(v61);
        goto LABEL_66;
      }
    }
  }

LABEL_66:
  v105 = v106;

  v104 = sub_100192AF0(_swiftEmptyArrayStorage);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000F5104(&qword_10093A568, &unk_100797790);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  Sequence.reduce<A>(into:_:)();
  if (v14)
  {

    (v92[1])(v91, v93);
  }

  else
  {

    v102 = v87;
    __chkstk_darwin(v77);
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    sub_10000CB90(&qword_10093A580, &qword_10093A578, &qword_1007A1E10);
    v78 = Sequence.compactMap<A>(_:)();

    (v92[1])(v91, v93);

    *v84 = v78;
  }

  return result;
}

void sub_100192794(uint64_t a1, id *a2)
{
  v2 = *a2;
  v3 = [*a2 parentReminder];
  if (v3)
  {

    return;
  }

  v12[0] = 0;
  if (![v2 remObjectIDWithError:v12])
  {
    v11 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v4 = v12[0];
  v5 = [v2 remObjectID];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v2 title];
  if (!v6)
  {

    v5 = 0;
LABEL_9:
    v8 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

LABEL_10:
  v12[0] = v5;
  v12[1] = v8;
  v12[2] = v10;
  sub_1000F5104(&qword_10093A568, &unk_100797790);
  Dictionary.subscript.setter();
}

void sub_100192918(void **a1)
{
  v1 = *a1;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10018BA8C();
  v2 = v1;
  Dictionary.subscript.getter();
}

void sub_1001929B4(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 canonicalName];
  if (v4)
  {
  }

  else
  {
    v5 = [v3 displayName];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10013BCF4();
      v7 = StringProtocol.lowercased(with:)();
      v9 = v8;

      if (*(*a1 + 16) && (sub_100005F4C(v7, v9), (v10 & 1) != 0))
      {
      }

      else
      {
        v11 = v3;
        v12 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *a1;
        sub_1002C86B4(v11, v7, v9, isUniquelyReferenced_nonNull_native);

        *a1 = v14;
      }
    }
  }
}

unint64_t sub_100192AF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_10093A588, qword_1007977A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 2);
      v7 = *(i - 1);
      v6 = *i;
      v8 = *(i - 3);
      v9 = v5;

      result = sub_10002B924(v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v12 = (v3[7] + 24 * result);
      *v12 = v9;
      v12[1] = v7;
      v12[2] = v6;
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

void sub_100192C08(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a1 objectID];
  v28 = [a1 remObjectID];
  v10 = [a1 name];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v13;
    v27 = v12;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v14 = [a1 shouldAutoCategorizeItems];
  v15 = [a1 shouldCategorizeGroceryItems];
  v16 = [a1 shouldSuggestConversionToGroceryList];
  if (v15)
  {
    v17 = [a1 groceryLocaleID];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }
  }

  else
  {
    static Locale.current.getter();
    v19 = Locale.identifier.getter();
    v21 = v22;
    (*(v5 + 8))(v9, v4);
  }

  v23 = [a1 sharingStatus];

  v24 = v28;
  *a2 = v29;
  *(a2 + 8) = v24;
  v25 = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v25;
  *(a2 + 32) = v14;
  *(a2 + 33) = v15;
  *(a2 + 34) = v16;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23 == 2;
}

BOOL sub_100192E28(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v124 = a2;
  v125 = a1;
  v117 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v11 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v120 = &v110 - v12;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v115 = &v110 - v18;
  __chkstk_darwin(v19);
  v118 = &v110 - v20;
  __chkstk_darwin(v21);
  v119 = &v110 - v22;
  v116 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  v23 = *(v116 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v116);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v123 = &v110 - v28;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v126 = v29;
  v127 = v30;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v110 - v35;
  __chkstk_darwin(v37);
  v128 = &v110 - v38;
  v129 = a6;
  v121 = a6;
  v122 = a7;
  v130 = a7;
  sub_10013BCF4();
  v39 = StringProtocol.lowercased(with:)();
  v41 = v40;
  if (!a3)
  {
    goto LABEL_39;
  }

  v114 = v39;
  v42 = a3;
  v43 = [v42 groupIdentifier];
  if (v43)
  {
    v113 = v42;
    v44 = v43;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v127;
    v46 = v128;
    v47 = *(v127 + 32);
    v48 = v36;
    v49 = v126;
    v47(v128, v48, v126);
    if (*(a4 + 16))
    {
      v50 = sub_100363F20(v46);
      v46 = v128;
      if (v51)
      {
        sub_100193AB0(*(a4 + 56) + *(v23 + 72) * v50, v26);
        v52 = v123;
        sub_100193B14(v26, v123);
        if (!v125)
        {
          goto LABEL_32;
        }

        v53 = &selRef_setPublicLinkLastModifiedDate_;
        v54 = [v125 memberships];
        v112 = sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
        v55 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v55 + 16) && (v56 = sub_100005F4C(v114, v41), (v57 & 1) != 0))
        {
          v58 = *(*(v55 + 56) + 8 * v56);

          v110 = v58;
          v59 = [v58 identifier];
          v111 = v41;
          if (v59)
          {
            v60 = v119;
            v61 = v59;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v62 = 0;
          }

          else
          {
            v62 = 1;
            v60 = v119;
          }

          v97 = v126;
          v96 = v127;
          v98 = *(v127 + 56);
          v98(v60, v62, 1, v126);
          v99 = v118;
          (*(v96 + 16))(v118, v123, v97);
          v98(v99, 0, 1, v97);
          v100 = *(v117 + 48);
          v101 = v120;
          sub_10018E470(v60, v120);
          sub_10018E470(v99, v101 + v100);
          v102 = *(v96 + 48);
          if (v102(v101, 1, v97) == 1)
          {

            sub_1000050A4(v99, &unk_100939D90, "8\n\r");
            v103 = v120;
            sub_1000050A4(v60, &unk_100939D90, "8\n\r");
            v104 = v102(v103 + v100, 1, v97);
            v49 = v97;
            v41 = v111;
            if (v104 == 1)
            {
              sub_1000050A4(v103, &unk_100939D90, "8\n\r");
              v77 = v113;
              v52 = v123;
LABEL_63:

LABEL_64:
              sub_100193BC4(v52, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
              (*(v127 + 8))(v128, v49);
              return 0;
            }
          }

          else
          {
            v105 = v115;
            sub_10018E470(v101, v115);
            if (v102(v101 + v100, 1, v97) != 1)
            {
              v47(v33, (v101 + v100), v97);
              sub_10018E4E0();
              v107 = v101;
              v108 = dispatch thunk of static Equatable.== infix(_:_:)();

              v109 = *(v127 + 8);
              v109(v33, v97);
              sub_1000050A4(v118, &unk_100939D90, "8\n\r");
              sub_1000050A4(v119, &unk_100939D90, "8\n\r");
              v109(v105, v97);
              sub_1000050A4(v107, &unk_100939D90, "8\n\r");
              v49 = v97;
              v77 = v113;
              v41 = v111;
              v52 = v123;
              v53 = &selRef_setPublicLinkLastModifiedDate_;
              if (v108)
              {
                goto LABEL_63;
              }

              goto LABEL_28;
            }

            sub_1000050A4(v118, &unk_100939D90, "8\n\r");
            v103 = v120;
            sub_1000050A4(v119, &unk_100939D90, "8\n\r");
            (*(v127 + 8))(v105, v97);
            v49 = v97;
            v41 = v111;
          }

          sub_1000050A4(v103, &unk_10093A3D0, &qword_100795770);
          v77 = v113;
          v52 = v123;
          v53 = &selRef_setPublicLinkLastModifiedDate_;
        }

        else
        {

          v77 = v113;
        }

LABEL_28:
        v78 = [v125 v53[203]];
        v79 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v79 + 16))
        {
          sub_100005F4C(v114, v41);
          if (v80)
          {

LABEL_66:
            sub_100193BC4(v52, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
            (*(v127 + 8))(v128, v49);
            return 1;
          }
        }

        v45 = v127;
LABEL_32:
        v81 = v124;
        if (v124)
        {
          v82 = v113;
          if (*(v124 + 16))
          {
            v83 = sub_100005F4C(v121, v122);
            if (v84)
            {
              v85 = (*(v81 + 56) + 16 * v83);
              v87 = *v85;
              v86 = v85[1];

LABEL_46:
              v94 = (v52 + *(v116 + 20));
              v95 = v94[1];
              if (v95)
              {
                if (*v94 != v87 || v95 != v86)
                {
                  v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  sub_100193BC4(v52, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
                  (*(v127 + 8))(v128, v49);
                  return (v106 & 1) == 0;
                }

                goto LABEL_64;
              }

              sub_100193BC4(v52, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
              (*(v127 + 8))(v128, v49);
              goto LABEL_20;
            }

            if (*(v81 + 16))
            {
              v90 = sub_100005F4C(v114, v41);
              v92 = v91;

              if ((v92 & 1) == 0)
              {

                goto LABEL_66;
              }

              v93 = (*(v81 + 56) + 16 * v90);
              v87 = *v93;
              v86 = v93[1];

              goto LABEL_46;
            }
          }
        }

        else
        {
        }

        sub_100193BC4(v52, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
        (*(v45 + 8))(v128, v49);
        return 1;
      }
    }

    (*(v45 + 8))(v46, v49);
    return 0;
  }

  v63 = v125;
  if (!v125)
  {
LABEL_22:
    v75 = v124;
    if (!v124)
    {

      return 0;
    }

    if (*(v124 + 16))
    {
      sub_100005F4C(v121, v122);
      if (v76)
      {

        return 1;
      }

      if (*(v75 + 16))
      {
        sub_100005F4C(v114, v41);
        v74 = v88;

        return v74;
      }
    }

LABEL_39:

    return 0;
  }

  v64 = [v125 memberships];
  sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
  v65 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v65 + 16) && (v66 = sub_100005F4C(v114, v41), (v67 & 1) != 0))
  {
    v68 = *(*(v65 + 56) + 8 * v66);

    v69 = [v68 identifier];
    if (!v69)
    {

      (*(v127 + 56))(v16, 1, 1, v126);
      sub_1000050A4(v16, &unk_100939D90, "8\n\r");
      return 0;
    }

    v70 = v69;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v127 + 56))(v16, 0, 1, v126);
    sub_1000050A4(v16, &unk_100939D90, "8\n\r");
  }

  else
  {
  }

  v71 = [v63 memberships];
  v72 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v72 + 16) || (sub_100005F4C(v114, v41), (v73 & 1) == 0))
  {

    goto LABEL_22;
  }

LABEL_20:

  return 1;
}

uint64_t _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa()
{
  result = qword_10093A5E8;
  if (!qword_10093A5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100193AB0(uint64_t a1, uint64_t a2)
{
  v4 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193B14(uint64_t a1, uint64_t a2)
{
  v4 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100193C24(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v141 = a3;
  v150 = a4;
  v145 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v6 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v151 = &v127 - v7;
  v8 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  v146 = *(v8 - 8);
  v9 = *(v146 + 64);
  __chkstk_darwin(v8);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v135 = (&v127 - v13);
  __chkstk_darwin(v14);
  v136 = &v127 - v15;
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v20 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v127 - v22;
  __chkstk_darwin(v24);
  v144 = &v127 - v25;
  __chkstk_darwin(v26);
  v148 = &v127 - v27;
  __chkstk_darwin(v28);
  v140 = &v127 - v29;
  __chkstk_darwin(v30);
  v137 = &v127 - v31;
  __chkstk_darwin(v32);
  v138 = &v127 - v33;
  v158 = type metadata accessor for UUID();
  v152 = *(v158 - 8);
  v34 = *(v152 + 64);
  __chkstk_darwin(v158);
  v36 = (&v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v39 = &v127 - v38;
  __chkstk_darwin(v40);
  v139 = &v127 - v41;
  *&v43 = __chkstk_darwin(v42).n128_u64[0];
  v147 = &v127 - v44;
  v153 = a1;
  v45 = [a1 name];
  if (v45)
  {
    v46 = a2;
    v47 = v45;
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v149 = v48;

    a2 = v46;
  }

  else
  {
    v143 = 0;
    v149 = 0;
  }

  v142 = v8;
  v49 = a2 >> 62;
  v50 = v158;
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v70 = a2;
    }

    else
    {
      v70 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v157 = v70;
    v51 = _CocoaArrayWrapper.endIndex.getter();
    if (v51 == 1)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_61;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v51 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51 == 1)
    {
LABEL_6:
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_79;
      }

      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v52 = *(a2 + 32);
        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_81;
    }
  }

  if (v51 < 2)
  {
    goto LABEL_61;
  }

  v134 = (a2 >> 62);
  v159 = _swiftEmptyArrayStorage;
  v154 = v51;
  sub_100253218(0, v51, 0);
  v71 = 0;
  v36 = v159;
  v155 = a2;
  v72 = a2 & 0xC000000000000001;
  v157 = (v152 + 56);
  do
  {
    if (v72)
    {
      v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v73 = *(v155 + 8 * v71 + 32);
    }

    v74 = v73;
    v75 = [v73 groupIdentifier];
    if (v75)
    {
      v76 = v75;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = 0;
    }

    else
    {
      v77 = 1;
    }

    v156 = *v157;
    v156(v20, v77, 1, v50);
    sub_100100FB4(v20, v23);
    v159 = v36;
    v79 = v36[2];
    v78 = v36[3];
    if (v79 >= v78 >> 1)
    {
      sub_100253218(v78 > 1, v79 + 1, 1);
      v36 = v159;
    }

    ++v71;
    v36[2] = v79 + 1;
    v11 = ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v49 = *(v17 + 72);
    sub_100100FB4(v23, &v11[v36 + v49 * v79]);
    v50 = v158;
  }

  while (v154 != v71);
  if (v134)
  {
    v80 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v80 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = v146;
  v23 = v138;
  v20 = v137;
  if (v80)
  {
    if (!v72)
    {
      if (!*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v82 = *(v155 + 32);
      goto LABEL_39;
    }

LABEL_81:
    v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_39:
    v83 = v82;
    v84 = v151;
    v85 = [v82 groupIdentifier];

    if (v85)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v86 = 0;
    }

    else
    {
      v86 = 1;
    }

    v87 = v152;
    v39 = v140;
    v156(v20, v86, 1, v50);
    sub_100100FB4(v20, v23);
    v88 = v87[6];
    v131 = (v87 + 6);
    v137 = v88;
    if ((v88)(v23, 1, v50) == 1)
    {

      v81 = v146;
      goto LABEL_45;
    }

    v97 = v87[4];
    v129 = v87 + 4;
    v128 = v97;
    v97(v147, v23, v50);
    v133 = v36[2];
    if (!v133)
    {

      v116 = v87[2];
LABEL_71:
      v117 = sub_1000F5104(&qword_10093A550, &qword_100797758);
      v118 = *(v117 + 48);
      v119 = *(v117 + 64);
      v120 = v135;
      *v135 = v154;
      v116(&v120[v118], v147, v50);
      v121 = type metadata accessor for Date();
      (*(*(v121 - 8) + 16))(&v120[v119], v141, v121);
      v122 = v146;
      v123 = v142;
      (*(v146 + 104))(v120, enum case for REMRemindersListDataView.AutoCategorizationMessage.manyRemindersToOneSection(_:), v142);
      REMRemindersListDataView.AutoCategorizationMessage.encodedString.getter();
      if (v124)
      {
        v125 = String._bridgeToObjectiveC()();
      }

      else
      {
        v125 = 0;
      }

      [v153 setName:{v125, v127}];

      (*(v122 + 8))(v120, v123);
      (*(v152 + 8))(v147, v50);
      goto LABEL_61;
    }

    v98 = 0;
    v130 = (v87 + 1);
    v99 = &v11[v36];
    v134 = (v87 + 2);
    v127 = (v87 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11 = v131;
    v100 = v84;
    while (v98 < v36[2])
    {
      v138 = v98;
      v155 = v99;
      sub_10018E470(v99, v39);
      v101 = v39;
      v102 = v148;
      v132 = *v134;
      v132(v148, v147, v50);
      v156(v102, 0, 1, v50);
      v103 = v11;
      v104 = *(v145 + 48);
      sub_10018E470(v101, v100);
      sub_10018E470(v102, v100 + v104);
      v105 = v137;
      if ((v137)(v100, 1, v50) == 1)
      {
        v106 = v102;
        v39 = v101;
        sub_1000050A4(v106, &unk_100939D90, "8\n\r");
        sub_1000050A4(v101, &unk_100939D90, "8\n\r");
        if (v105(v100 + v104, 1, v50) != 1)
        {
          (*v130)(v147, v50);

          v90 = v141;
          v89 = v142;
          v81 = v146;
          v91 = v136;
          v108 = v100;
LABEL_77:
          sub_1000050A4(v108, &unk_10093A3D0, &qword_100795770);
          goto LABEL_47;
        }

        v11 = v103;
        sub_1000050A4(v100, &unk_100939D90, "8\n\r");
      }

      else
      {
        v107 = v144;
        sub_10018E470(v100, v144);
        v108 = v100;
        if (v105(v100 + v104, 1, v50) == 1)
        {

          sub_1000050A4(v148, &unk_100939D90, "8\n\r");
          sub_1000050A4(v140, &unk_100939D90, "8\n\r");
          v126 = *v130;
          (*v130)(v147, v50);
          v126(v107, v50);
          v90 = v141;
          v89 = v142;
          v81 = v146;
          v91 = v136;
          goto LABEL_77;
        }

        v109 = v139;
        v128(v139, v100 + v104, v50);
        sub_10018E4E0();
        v110 = dispatch thunk of static Equatable.== infix(_:_:)();
        v111 = *v130;
        (*v130)(v109, v50);
        sub_1000050A4(v148, &unk_100939D90, "8\n\r");
        v39 = v140;
        sub_1000050A4(v140, &unk_100939D90, "8\n\r");
        v111(v144, v50);
        sub_1000050A4(v151, &unk_100939D90, "8\n\r");
        v11 = v131;
        if ((v110 & 1) == 0)
        {
          v111(v147, v50);

          v89 = v142;
          v81 = v146;
          goto LABEL_46;
        }
      }

      v98 = v138 + 1;
      v99 = v155 + v49;
      v100 = v151;
      if (v133 == v138 + 1)
      {

        v116 = v132;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_79:
    v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v53 = v52;
    v54 = [v52 groupIdentifier];
    if (v54)
    {
      v55 = v50;
      v56 = v54;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = [v53 memberIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = sub_1000F5104(&qword_10093A558, &qword_100797760);
      v59 = *(v58 + 48);
      v60 = *(v58 + 64);
      v61 = *(v152 + 16);
      v61(v11, v36, v55);
      v62 = v55;
      v63 = v142;
      v61(&v11[v59], v39, v62);
      v64 = type metadata accessor for Date();
      (*(*(v64 - 8) + 16))(&v11[v60], v141, v64);
      v65 = v146;
      (*(v146 + 104))(v11, enum case for REMRemindersListDataView.AutoCategorizationMessage.oneReminderToOneSection(_:), v63);
      REMRemindersListDataView.AutoCategorizationMessage.encodedString.getter();
      if (v66)
      {
        v67 = String._bridgeToObjectiveC()();
      }

      else
      {
        v67 = 0;
      }

      [v153 setName:v67];

      (*(v65 + 8))(v11, v63);
      v68 = *(v152 + 8);
      v69 = v158;
      v68(v36, v158);
      v68(v39, v69);
    }

    else
    {
    }

    goto LABEL_61;
  }

  v156(v23, 1, 1, v50);
LABEL_45:
  sub_1000050A4(v23, &unk_100939D90, "8\n\r");
  v89 = v142;
LABEL_46:
  v90 = v141;
  v91 = v136;
LABEL_47:
  v92 = v154;
  v93 = *(sub_1000F5104(&qword_10093A548, &qword_100797750) + 48);
  *v91 = v92;
  v94 = type metadata accessor for Date();
  (*(*(v94 - 8) + 16))(&v91[v93], v90, v94);
  (*(v81 + 104))(v91, enum case for REMRemindersListDataView.AutoCategorizationMessage.manyRemindersToManySections(_:), v89);
  REMRemindersListDataView.AutoCategorizationMessage.encodedString.getter();
  if (v95)
  {
    v96 = String._bridgeToObjectiveC()();
  }

  else
  {
    v96 = 0;
  }

  [v153 setName:{v96, v127}];

  (*(v81 + 8))(v91, v89);
LABEL_61:
  v159 = 0;
  if ([v150 save:&v159])
  {
    if (v149)
    {
      v112 = v159;
      v113 = String._bridgeToObjectiveC()();
    }

    else
    {
      v115 = v159;
      v113 = 0;
    }
  }

  else
  {
    v114 = v159;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (v149)
    {
      v113 = String._bridgeToObjectiveC()();
    }

    else
    {
      v113 = 0;
    }
  }

  [v153 setName:v113];
}

uint64_t *sub_100194C20(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = (a1 + v8);
    v11 = (a2 + v8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (a1 + v9);
    v14 = (a2 + v9);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
  }

  return a1;
}

uint64_t sub_100194D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20) + 8);

  v6 = *(a1 + *(a2 + 24) + 8);
}

uint64_t sub_100194D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t sub_100194E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v11 = *(a3 + 24);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  *v12 = *v13;
  v14 = v12[1];
  v12[1] = v13[1];

  return a1;
}

uint64_t sub_100194EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_100194F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;

  v13 = *(a3 + 24);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v17 = *v15;
  v16 = v15[1];
  v18 = v14[1];
  *v14 = v17;
  v14[1] = v16;

  return a1;
}

uint64_t sub_100195050()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s9UtilitiesO44REMCDReminderThreadSafePartialRepresentationVwxx(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void *sub_100195134(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t _s9UtilitiesO44REMCDReminderThreadSafePartialRepresentationVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  return a1;
}

uint64_t _s9UtilitiesO44REMCDReminderThreadSafePartialRepresentationVwta(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  v6 = *(a1 + 16);
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedDueDateDeltaAlert(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RDSavedDueDateDeltaAlert(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwxx(uint64_t a1)
{
  v2 = *(a1 + 24);

  v3 = *(a1 + 48);
}

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = v3;
  v8 = v4;

  return a1;
}

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  v10 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

__n128 _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwtk(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 24);
  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  v7 = *(a2 + 48);
  v8 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001955C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100010364(a3, v27 - v11, &qword_100936FA8, &qword_100791B70);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000050A4(v12, &qword_100936FA8, &qword_100791B70);
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

      sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);

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

  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
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

uint64_t sub_1001958C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100010364(a3, v27 - v11, &qword_100936FA8, &qword_100791B70);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000050A4(v12, &qword_100936FA8, &qword_100791B70);
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

      sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);

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

  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
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

uint64_t sub_100195BBC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A628);
  v1 = sub_100006654(v0, qword_10093A628);
  if (qword_1009364C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975188);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100195C84(unint64_t a1)
{
  v182 = *v1;
  v3 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v165 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v177 = &v155 - v7;
  v176 = type metadata accessor for REMUrgentReminder();
  v168 = *(v176 - 8);
  v8 = *(v168 + 64);
  __chkstk_darwin(v176);
  v164 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v9;
  __chkstk_darwin(v10);
  v175 = &v155 - v11;
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v155 - v14;
  v16 = type metadata accessor for UUID();
  v173 = *(v16 - 8);
  v17 = *(v173 + 64);
  __chkstk_darwin(v16);
  v181 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v184 = &v155 - v20;
  __chkstk_darwin(v21);
  v163 = &v155 - v22;
  __chkstk_darwin(v23);
  v158 = &v155 - v24;
  __chkstk_darwin(v25);
  v27 = &v155 - v26;
  v28 = sub_1000F5104(&qword_10093A6F8, &qword_100797B38);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v166 = (&v155 - v33);
  __chkstk_darwin(v34);
  v161 = &v155 - v35;
  v183 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
  v178 = *(v183 - 8);
  v36 = *(v178 + 64);
  __chkstk_darwin(v183);
  v159 = &v155 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v172 = (&v155 - v39);
  __chkstk_darwin(v40);
  v171 = &v155 - v41;
  __chkstk_darwin(v42);
  v162 = &v155 - v43;
  __chkstk_darwin(v44);
  v179 = (&v155 - v45);
  __chkstk_darwin(v46);
  v174 = &v155 - v47;
  __chkstk_darwin(v48);
  v169 = (&v155 - v49);
  __chkstk_darwin(v50);
  v160 = &v155 - v51;
  if (qword_100935B08 != -1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_10093A628);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = *(a1 + 16);

      _os_log_impl(&_mh_execute_header, v53, v54, "RDUrgentAlarmConsumer consume %ld producerAlarms", v55, 0xCu);
    }

    else
    {
    }

    v167 = v31;
    v56 = *(a1 + 16);
    v180 = v15;
    v57 = v161;
    v58 = 0;
    if (v56)
    {
      v59 = (v178 + 48);
      v60 = (a1 + 66);
      v61 = _swiftEmptyArrayStorage;
      do
      {
        v62 = *v60;
        v63 = *(v60 - 1);
        v64 = *(v60 - 2);
        v65 = *(v60 - 10);
        v190 = *(v60 - 34);
        v191 = *(v60 - 26);
        v192 = v65;
        v193 = v64;
        v194 = v63;
        v195 = v62;
        sub_100197254(&v190, v57);
        if ((*v59)(v57, 1, v183) == 1)
        {
          sub_1000050A4(v57, &qword_10093A6F8, &qword_100797B38);
        }

        else
        {
          v66 = v160;
          sub_100031B58(v57, v160, &qword_10093A700, &qword_100797B40);
          sub_100031B58(v66, v169, &qword_10093A700, &qword_100797B40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_1003666F4(0, v61[2] + 1, 1, v61);
          }

          v68 = v61[2];
          v67 = v61[3];
          v69 = v61;
          v57 = v161;
          if (v68 >= v67 >> 1)
          {
            v69 = sub_1003666F4(v67 > 1, v68 + 1, 1, v61);
          }

          *(v69 + 16) = v68 + 1;
          v61 = v69;
          sub_100031B58(v169, v69 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v68, &qword_10093A700, &qword_100797B40);
          v15 = v180;
        }

        v60 += 40;
        --v56;
      }

      while (v56);
    }

    else
    {
      v61 = _swiftEmptyArrayStorage;
    }

    v70 = v61[2];
    v71 = _swiftEmptyArrayStorage;
    v169 = v61;
    v185 = v16;
    if (v70)
    {
      v157 = 0;
      v190 = _swiftEmptyArrayStorage;
      sub_100253258(0, v70, 0);
      v71 = v190;
      v72 = v61 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
      v161 = *(v178 + 72);
      v160 = v173 + 32;
      do
      {
        v73 = v174;
        sub_100010364(v72, v174, &qword_10093A700, &qword_100797B40);
        v74 = v179;
        sub_100010364(v73, v179, &qword_10093A700, &qword_100797B40);
        v75 = v27;
        v76 = *v74;
        v182 = *(v183 + 48);
        v77 = [v76 objectID];

        v78 = [v77 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000050A4(v73, &qword_10093A700, &qword_100797B40);
        v79 = type metadata accessor for Date();
        (*(*(v79 - 8) + 8))(v74 + v182, v79);
        v190 = v71;
        v81 = v71[2];
        v80 = v71[3];
        if (v81 >= v80 >> 1)
        {
          sub_100253258(v80 > 1, v81 + 1, 1);
          v71 = v190;
        }

        v71[2] = v81 + 1;
        v16 = v185;
        (*(v173 + 32))(v71 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v81, v75, v185);
        v72 += v161;
        --v70;
        v27 = v75;
      }

      while (v70);
      v58 = v157;
      v15 = v180;
    }

    v82 = sub_1001A59A4(v71);

    v83 = sub_100197B90();
    v84 = sub_1001A59A4(v83);

    v85 = sub_1001A2130(v84, v82, sub_1001A2E50, sub_1001A2E50);
    v86 = v85;
    if (v85[2] <= v84[2] >> 3)
    {
      v190 = v84;
      sub_10019BC20(v85);
      v87 = v190;
    }

    else
    {
      v87 = sub_10019CB14(v85, v84);
    }

    v182 = v86;
    v157 = v58;
    sub_100197D34(v87);

    v88 = v169;
    v174 = v169[2];
    if (v174)
    {
      a1 = 0;
      v89 = (v173 + 48);
      v27 = v173 + 32;
      v90 = _swiftEmptyArrayStorage;
      v31 = &qword_10093A700;
      while (a1 < *(v88 + 16))
      {
        v91 = v162;
        sub_100010364(v88 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * a1, v162, &qword_10093A700, &qword_100797B40);
        sub_1001982CC(*v91, v91 + *(v183 + 48), v15);
        sub_1000050A4(v91, &qword_10093A700, &qword_100797B40);
        if ((*v89)(v15, 1, v16) == 1)
        {
          sub_1000050A4(v15, &unk_100939D90, "8\n\r");
        }

        else
        {
          v92 = *v27;
          v93 = v158;
          (*v27)(v158, v15, v16);
          v92(v163, v93, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_100366328(0, *(v90 + 2) + 1, 1, v90);
          }

          v95 = *(v90 + 2);
          v94 = *(v90 + 3);
          if (v95 >= v94 >> 1)
          {
            v90 = sub_100366328(v94 > 1, v95 + 1, 1, v90);
          }

          *(v90 + 2) = v95 + 1;
          v92(&v90[((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v95], v163, v16);
          v88 = v169;
          v15 = v180;
        }

        if (v174 == ++a1)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_81;
    }

    v90 = _swiftEmptyArrayStorage;
LABEL_37:
    v96 = sub_1001A59A4(v90);

    if (*(v182 + 16) <= v96[2] >> 3)
    {
      v190 = v96;
      sub_10019BC20(v182);

      v31 = v190;
    }

    else
    {
      v31 = sub_10019CB14(v182, v96);
    }

    a1 = v184;
    v97 = v169;
    if (!v174)
    {
      break;
    }

    v98 = 0;
    v182 = v31 + 56;
    v180 = (v173 + 16);
    v15 = _swiftEmptyArrayStorage;
    v27 = &qword_10093A700;
    v99 = (v173 + 8);
    while (v98 < *(v97 + 16))
    {
      v163 = ((*(v178 + 80) + 32) & ~*(v178 + 80));
      v162 = *(v178 + 72);
      v100 = v171;
      sub_100010364(&v163[v97 + v162 * v98], v171, &qword_10093A700, &qword_100797B40);
      v101 = v100;
      v102 = v172;
      sub_100010364(v101, v172, &qword_10093A700, &qword_100797B40);
      v103 = *v102;
      v104 = [v103 objectID];

      v105 = [v104 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v106 = *(v31 + 16);
      v179 = v15;
      if (v106 && (v107 = *(v31 + 40), sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID), v108 = dispatch thunk of Hashable._rawHashValue(seed:)(), v109 = -1 << *(v31 + 32), v110 = v108 & ~v109, ((*(v182 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) != 0))
      {
        v111 = ~v109;
        v112 = *(v173 + 72);
        v113 = *(v173 + 16);
        while (1)
        {
          v114 = v31;
          v115 = *(v31 + 48) + v112 * v110;
          v116 = v181;
          v117 = v185;
          v113(v181, v115, v185);
          sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID);
          v118 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v99)(v116, v117);
          if (v118)
          {
            break;
          }

          v110 = (v110 + 1) & v111;
          v31 = v114;
          if (((*(v182 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        v31 = v114;
      }

      else
      {
        v118 = 0;
      }

LABEL_53:
      a1 = v184;
      v119 = *(v183 + 48);
      v16 = v185;
      (*v99)(v184, v185);
      v120 = type metadata accessor for Date();
      (*(*(v120 - 8) + 8))(v172 + v119, v120);
      if (v118)
      {
        v27 = &qword_10093A700;
        sub_100031B58(v171, v159, &qword_10093A700, &qword_100797B40);
        v15 = v179;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v190 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10025375C(0, *(v15 + 16) + 1, 1);
          v15 = v190;
        }

        v123 = *(v15 + 16);
        v122 = *(v15 + 24);
        if (v123 >= v122 >> 1)
        {
          sub_10025375C(v122 > 1, v123 + 1, 1);
          v15 = v190;
        }

        *(v15 + 16) = v123 + 1;
        sub_100031B58(v159, &v163[v15 + v123 * v162], &qword_10093A700, &qword_100797B40);
      }

      else
      {
        v27 = &qword_10093A700;
        sub_1000050A4(v171, &qword_10093A700, &qword_100797B40);
        v15 = v179;
      }

      ++v98;
      v97 = v169;
      if (v98 == v174)
      {
        goto LABEL_60;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_once();
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_60:

  a1 = 0;
  v124 = *(v15 + 16);
  v181 = (v178 + 48);
  v182 = v178 + 56;
  v180 = (v168 + 16);
  v174 = (v156 + 7);
  v173 = v168 + 32;
  v172 = (v168 + 8);
  v125 = v167;
  v126 = v166;
  v179 = v15;
  v171 = v124;
  while (1)
  {
    if (a1 == v124)
    {
      v128 = 1;
      v129 = v124;
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }

      if (a1 >= *(v15 + 16))
      {
        goto LABEL_83;
      }

      sub_100010364(v15 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * a1, v125, &qword_10093A700, &qword_100797B40);
      v128 = 0;
      v129 = a1 + 1;
    }

    v130 = v183;
    (*v182)(v125, v128, 1, v183);
    sub_100031B58(v125, v126, &qword_10093A6F8, &qword_100797B38);
    if ((*v181)(v126, 1, v130) == 1)
    {
    }

    v131 = *v126;
    v132 = [v131 objectID];
    v133 = [v131 titleAsString];
    v184 = v131;
    v185 = v129;
    if (v133)
    {
      v134 = v133;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v135 = v175;
    REMUrgentReminder.init(reminderID:title:)();
    v136 = type metadata accessor for TaskPriority();
    v137 = *(v136 - 8);
    v138 = v177;
    (*(v137 + 56))(v177, 1, 1, v136);
    v139 = v168;
    v140 = v164;
    v141 = v176;
    (*(v168 + 16))(v164, v135, v176);
    v142 = (*(v139 + 80) + 40) & ~*(v139 + 80);
    v143 = &v174[v142] & 0xFFFFFFFFFFFFFFF8;
    v144 = swift_allocObject();
    *(v144 + 2) = 0;
    *(v144 + 3) = 0;
    *(v144 + 4) = v170;
    (*(v139 + 32))(&v144[v142], v140, v141);
    v145 = v184;
    *&v144[v143] = v184;
    v146 = v165;
    sub_100010364(v138, v165, &qword_100936FA8, &qword_100791B70);
    LODWORD(v142) = (*(v137 + 48))(v146, 1, v136);

    v147 = v145;

    if (v142 == 1)
    {
      sub_1000050A4(v146, &qword_100936FA8, &qword_100791B70);
      v31 = 7168;
    }

    else
    {
      v148 = TaskPriority.rawValue.getter();
      (*(v137 + 8))(v146, v136);
      v31 = v148 | 0x1C00;
    }

    v149 = *(v144 + 2);
    v150 = *(v144 + 3);
    swift_unknownObjectRetain();

    v125 = v167;
    if (v149)
    {
      swift_getObjectType();
      v151 = dispatch thunk of Actor.unownedExecutor.getter();
      v27 = v152;
      swift_unknownObjectRelease();
    }

    else
    {
      v151 = 0;
      v27 = 0;
    }

    v16 = *(v183 + 48);
    sub_1000050A4(v177, &qword_100936FA8, &qword_100791B70);
    v153 = swift_allocObject();
    *(v153 + 16) = &unk_100797B50;
    *(v153 + 24) = v144;
    if (v27 | v151)
    {
      v186 = 0;
      v187 = 0;
      v188 = v151;
      v189 = v27;
    }

    v15 = v179;
    v124 = v171;
    a1 = v185;
    swift_task_create();

    (*v172)(v175, v176);
    v127 = type metadata accessor for Date();
    v126 = v166;
    (*(*(v127 - 8) + 8))(v166 + v16, v127);
  }
}

void sub_100197254(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v40 = *(a1 + 8);
  v15 = *(a1 + 16);
  v38 = *(a1 + 24);
  v39 = v15;
  v16 = *(a1 + 32);
  v17 = v14;
  if ([v17 prefersUrgentPresentationStyleForDateAlarms])
  {
    v37[1] = v2;
    if (v16)
    {

      v18 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
      (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
    }

    else
    {
      v20 = v40;
      v37[0] = v40;
      sub_100197764(v17, v37[0], v8);
      v21 = a2;
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
        v22 = v38;
        v23 = v39;
        if (qword_100935B08 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100006654(v24, qword_10093A628);
        v25 = v17;
        v26 = v40;
        sub_1001A3944(v40, v23, v22, 0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.fault.getter();

        sub_1001A39AC(v26, v23, v22, 0);
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543618;
          v31 = [v25 objectID];
          *(v29 + 4) = v31;
          *v30 = v31;
          *(v29 + 12) = 2114;
          v32 = [v37[0] objectID];
          *(v29 + 14) = v32;
          v30[1] = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "RDUrgentAlarmConsumer: Unable to determine fireDate. An alarm without fireDate shouldn't have reached here {reminderID: %{public}@, alarmID: %{public}@}", v29, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          sub_1001A39AC(v26, v23, v22, 0);
        }

        else
        {

          sub_1001A39AC(v26, v23, v22, 0);
        }

        v36 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
        (*(*(v36 - 8) + 56))(v21, 1, 1, v36);
      }

      else
      {
        sub_1001A39AC(v20, v39, v38, 0);
        v33 = *(v10 + 32);
        v33(v13, v8, v9);
        v34 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
        v35 = *(v34 + 48);
        *a2 = v17;
        v33(a2 + v35, v13, v9);
        (*(*(v34 - 8) + 56))(a2, 0, 1, v34);
      }
    }
  }

  else
  {
    v19 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t sub_100197764@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v28 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  *&v13 = __chkstk_darwin(v10).n128_u64[0];
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [a2 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v28, v31);
    Date.init()();
    v16 = v32;
    v17 = v33;
    sub_10000F61C(v31, v32);
    (*(v17 + 24))(a1, v15, v16, v17);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
      v18 = v32;
      v19 = v33;
      sub_10000F61C(v31, v32);
      (*(v19 + 8))(a1, v18, v19);
      (*(v11 + 8))(v15, v10);
    }

    else
    {
      (*(v11 + 8))(v15, v10);
      (*(v11 + 32))(a3, v9, v10);
      (*(v11 + 56))(a3, 0, 1, v10);
    }

    return sub_10000607C(v31);
  }

  else
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_1000050A4(v28, &qword_10093A718, &qword_100797B90);
    if (qword_100935B08 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10093A628);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = [v21 objectID];
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "RDUrgentConsumer: Failed to cast alarm trigger as RDFireDateSource {reminderID: %{public}@}", v24, 0xCu);
      sub_1000050A4(v25, &unk_100938E70, &unk_100797230);
    }

    return (*(v11 + 56))(a3, 1, 1, v10);
  }
}

void sub_100197D34(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v43 = v32 - v10;
  if (*(a1 + 16))
  {
    v42 = v9;
    v11 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v36 = v8 + 32;
    v37 = v8;
    v39 = (v8 + 8);
    v40 = v8 + 16;

    v34 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    *&v19 = 136446210;
    v32[3] = v19;
    v41 = v2;
    v33 = v5;
    v38 = a1;
    while (v14)
    {
      v45 = v17;
      v35 = v16;
LABEL_11:
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v22 = *(a1 + 48);
      v23 = v37;
      v24 = v43;
      v25 = v41;
      (*(v37 + 16))(v43, v22 + *(v37 + 72) * (v21 | (v18 << 6)), v41);
      v26 = v42;
      (*(v23 + 32))(v42, v24, v25);
      v27 = *sub_10000F61C((v44 + 16), *(v44 + 40));
      sub_10051CB34(v26);
      (*v39)(v26, v25);
      v16 = v45 + 1;
      v17 = v45 + 1;
      a1 = v38;
      if (__OFADD__(v45, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        swift_once();
        goto LABEL_15;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v20 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v20);
      ++v18;
      if (v14)
      {
        v45 = v17;
        v35 = v16;
        v18 = v20;
        goto LABEL_11;
      }
    }

    if (qword_100935B08 != -1)
    {
      goto LABEL_21;
    }

LABEL_15:
    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10093A628);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      *(v31 + 4) = v16;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "RDUrgentAlarmConsumer: Finished cancelling alarms in alarm service {successfulCancelCount: %ld, failedCancelCount: %ld}", v31, 0x16u);
    }
  }
}

uint64_t sub_1001982CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v51[-v7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v55 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v51[-v14];
  __chkstk_darwin(v16);
  v18 = &v51[-v17];
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = &v51[-v21];
  v23 = [a1 lastBannerPresentationDate];
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v10 + 32);
    v25(v8, v18, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    v25(v22, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    static Date.distantPast.getter();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
    }
  }

  if (static Date.> infix(_:_:)())
  {
    v26 = [a1 objectID];
    v27 = [v26 uuid];

    v28 = v56;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 8))(v22, v9);
    v29 = 0;
  }

  else
  {
    if (qword_100935B08 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_10093A628);
    v31 = *(v10 + 16);
    v31(v15, a2, v9);
    v32 = v55;
    v31(v55, v22, v9);
    v33 = a1;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = v37;
      v54 = swift_slowAlloc();
      v57 = v54;
      *v36 = 138543874;
      v38 = [v33 objectID];
      *(v36 + 4) = v38;
      *v37 = v38;
      *(v36 + 12) = 2082;
      sub_1001A3B50(&qword_100937010, &type metadata accessor for Date);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v35;
      v41 = v40;
      v42 = *(v10 + 8);
      v42(v15, v9);
      v43 = sub_10000668C(v39, v41, &v57);

      *(v36 + 14) = v43;
      *(v36 + 22) = 2082;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v42(v32, v9);
      v47 = sub_10000668C(v44, v46, &v57);

      *(v36 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v34, v52, "RDUrgentAlarmConsumer: lastBannerPresentationDate is after the reminder fireDate. Assuming the alarm has already fired. Skipping {reminderID: %{public}@, fireDate: %{public}s, lastBannerPresentationDate: %{public}s}", v36, 0x20u);
      sub_1000050A4(v53, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v42(v22, v9);
    }

    else
    {

      v48 = *(v10 + 8);
      v48(v32, v9);
      v48(v15, v9);
      v48(v22, v9);
    }

    v29 = 1;
    v28 = v56;
  }

  v49 = type metadata accessor for UUID();
  return (*(*(v49 - 8) + 56))(v28, v29, 1, v49);
}

uint64_t sub_1001988F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v8 = *(*(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v6[4] = v9;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_1001989DC;

  return sub_100198CC0(v9, a5);
}

uint64_t sub_1001989DC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v3;
  v4[1] = sub_100198B48;
  v5 = v1[4];
  v6 = v1[3];
  v7 = v1[2];

  return sub_1001997C0(v6, v5);
}

uint64_t sub_100198B48()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_100198C44, 0, 0);
}

uint64_t sub_100198C44()
{
  sub_1000050A4(*(v0 + 32), &unk_100938850, qword_100795AE0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100198CC0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for REMUrgentReminder();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100198E10, 0, 0);
}

uint64_t sub_100198E10()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[5];
  Date.init(timeIntervalSinceNow:)();
  v4 = sub_10000F61C((v3 + 16), *(v3 + 40));
  Date.init()();
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_100198ED4;
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[4];

  return sub_10051BE18(v9, v7, v8);
}

uint64_t sub_100198ED4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v10 = *v1;
  v2[17] = v0;

  v7 = *(v5 + 8);
  v2[18] = v7;
  v2[19] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_1001993BC;
  }

  else
  {
    v8 = sub_100199058;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100199058()
{
  v42 = v0;
  if (qword_100935B08 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10093A628);
  (*(v7 + 16))(v5, v8, v6);
  (*(v4 + 16))(v2, v1, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[18];
  v14 = v0[13];
  v15 = v0[9];
  v16 = v0[10];
  v18 = v0[6];
  v17 = v0[7];
  if (v12)
  {
    v38 = v0[19];
    v19 = swift_slowAlloc();
    v39 = v11;
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v19 = 138543618;
    v37 = v13;
    v21 = REMUrgentReminder.reminderID.getter();
    (*(v17 + 8))(v15, v18);
    *(v19 + 4) = v21;
    *v20 = v21;
    *(v19 + 12) = 2082;
    sub_1001A3B50(&qword_100937010, &type metadata accessor for Date);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v37(v14, v16);
    v25 = sub_10000668C(v22, v24, &v41);

    *(v19 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v10, v39, "RDUrgentAlarmConsumer: Successfully scheduled alarm {reminderID: %{public}@, fireDate: %{public}s}", v19, 0x16u);
    sub_1000050A4(v20, &unk_100938E70, &unk_100797230);

    sub_10000607C(v40);
  }

  else
  {

    v13(v14, v16);
    (*(v17 + 8))(v15, v18);
  }

  v26 = v0[10];
  v27 = v0[11];
  v28 = v0[3];
  (*(v27 + 32))(v28, v0[15], v26);
  (*(v27 + 56))(v28, 0, 1, v26);
  v30 = v0[14];
  v29 = v0[15];
  v32 = v0[12];
  v31 = v0[13];
  v34 = v0[8];
  v33 = v0[9];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1001993BC()
{
  v46 = v0;
  if (qword_100935B08 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v43 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10093A628);
  (*(v5 + 16))(v6, v8, v7);
  (*(v3 + 16))(v2, v43, v4);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  LOBYTE(v5) = static os_log_type_t.fault.getter();

  v41 = v5;
  v11 = os_log_type_enabled(v10, v5);
  v12 = v0[18];
  v13 = v0[17];
  v42 = v13;
  v44 = v0[15];
  v14 = v0[12];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[6];
  if (v11)
  {
    v38 = v0[19];
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v19 = 138543874;
    log = v10;
    v20 = v15;
    v21 = v12;
    v22 = REMUrgentReminder.reminderID.getter();
    (*(v17 + 8))(v16, v18);
    *(v19 + 4) = v22;
    *v39 = v22;
    *(v19 + 12) = 2082;
    sub_1001A3B50(&qword_100937010, &type metadata accessor for Date);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v21(v14, v20);
    v26 = sub_10000668C(v23, v25, &v45);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2082;
    v0[2] = v42;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v27 = String.init<A>(describing:)();
    v29 = sub_10000668C(v27, v28, &v45);

    *(v19 + 24) = v29;
    _os_log_impl(&_mh_execute_header, log, v41, "RDUrgentAlarmConsumer: Failed to schedule alarm with alarm service. Urgent reminder will not go off {reminderID: %{public}@, fireDate: %{public}s, error: %{public}s}", v19, 0x20u);
    sub_1000050A4(v39, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v21(v44, v20);
  }

  else
  {

    v12(v14, v15);
    (*(v17 + 8))(v16, v18);
    v12(v44, v15);
  }

  (*(v0[11] + 56))(v0[3], 1, 1, v0[10]);
  v31 = v0[14];
  v30 = v0[15];
  v33 = v0[12];
  v32 = v0[13];
  v35 = v0[8];
  v34 = v0[9];

  v36 = v0[1];

  return v36();
}

uint64_t sub_1001997C0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001998D4, 0, 0);
}

uint64_t sub_1001998D4()
{
  v45 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_100010364(v0[7], v3, &unk_100938850, qword_100795AE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000050A4(v0[9], &unk_100938850, qword_100795AE0);
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[12];
    v7 = v0[9];

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[11] + 32))(v0[14], v0[9], v0[10]);
    if (qword_100935B08 != -1)
    {
      swift_once();
    }

    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[11];
    v14 = v0[6];
    v15 = type metadata accessor for Logger();
    v0[15] = sub_100006654(v15, qword_10093A628);
    v16 = *(v13 + 16);
    v0[16] = v16;
    v0[17] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v10, v11, v12);
    v17 = v14;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[13];
    v23 = v0[10];
    v22 = v0[11];
    if (v20)
    {
      v24 = v0[6];
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v25 = 138543618;
      v26 = [v24 objectID];
      *(v25 + 4) = v26;
      *v42 = v26;
      *(v25 + 12) = 2082;
      v27 = Date.description.getter();
      v29 = v28;
      v30 = *(v22 + 8);
      v30(v21, v23);
      v31 = sub_10000668C(v27, v29, &v44);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDUrgentAlarmConsumer: Attempting to update lastBannerPresentationDate {reminderID: %{public}@, lastBannerPresentationDate: %{public}s}", v25, 0x16u);
      sub_1000050A4(v42, &unk_100938E70, &unk_100797230);

      sub_10000607C(v43);
    }

    else
    {

      v30 = *(v22 + 8);
      v30(v21, v23);
    }

    v0[18] = v30;
    v32 = v0[14];
    v33 = v0[8];
    v34 = v0[6];
    v35 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v33 + 64)];
    v0[19] = v35;
    v36 = [objc_allocWithZone(REMSaveRequest) initWithStore:v35];
    v0[20] = v36;
    [v36 setAuthor:RDUrgentAlarmConsumerLastBannerPresentationDateAuthor];
    [v36 setUpdateLastModifiedDates:0];
    [v36 setSyncToCloudKit:0];
    v37 = [v36 updateReminder:v34];
    v0[21] = v37;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v37 setLastBannerPresentationDate:isa];

    v39 = *(v33 + 56);
    v40 = async function pointer to REMSaveRequest.saveAsync(with:)[1];
    v41 = swift_task_alloc();
    v0[22] = v41;
    *v41 = v0;
    v41[1] = sub_100199D5C;

    return REMSaveRequest.saveAsync(with:)(v39);
  }
}

uint64_t sub_100199D5C()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_10019A120;
  }

  else
  {
    v3 = sub_100199E70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100199E70()
{
  v36 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 48);
  (*(v0 + 128))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 112);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 80);
  if (v7)
  {
    v33 = *(v0 + 160);
    v15 = *(v0 + 48);
    v31 = *(v0 + 168);
    v34 = *(v0 + 112);
    v16 = swift_slowAlloc();
    v32 = v10;
    v17 = swift_slowAlloc();
    log = v5;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v16 = 138543618;
    v18 = [v15 objectID];
    *(v16 + 4) = v18;
    *v17 = v18;
    *(v16 + 12) = 2082;
    v19 = Date.description.getter();
    v21 = v20;
    v9(v12, v14);
    v22 = sub_10000668C(v19, v21, &v35);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, log, v6, "RDUrgentAlarmConsumer: Updated lastBannerPresentationDate {reminderID: %{public}@, lastBannerPresentationDate: %{public}s}", v16, 0x16u);
    sub_1000050A4(v17, &unk_100938E70, &unk_100797230);

    sub_10000607C(v30);

    v9(v34, v14);
  }

  else
  {

    v9(v12, v14);
    v9(v11, v14);
  }

  v24 = *(v0 + 104);
  v23 = *(v0 + 112);
  v25 = *(v0 + 96);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10019A120()
{
  v39 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 120);
  v3 = *(v0 + 48);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    v36 = *(v0 + 112);
    v37 = *(v0 + 144);
    v32 = *(v0 + 160);
    v33 = *(v0 + 88);
    v34 = *(v0 + 152);
    v35 = *(v0 + 80);
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v9 = 138543618;
    v12 = [v8 objectID];
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    v15 = *(v0 + 32);
    v16 = Error.localizedDescription.getter();
    v18 = sub_10000668C(v16, v17, &v38);

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "RDUrgentAlarmConsumer: Failed to update lastBannerPresentationDate {reminderID: %{public}@, error: %s}", v9, 0x16u);
    sub_1000050A4(v10, &unk_100938E70, &unk_100797230);

    sub_10000607C(v11);

    v37(v36, v35);
  }

  else
  {
    v19 = *(v0 + 184);
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 144);
    v23 = *(v0 + 112);
    v24 = *(v0 + 80);
    v25 = *(v0 + 88);

    v22(v23, v24);
  }

  v27 = *(v0 + 104);
  v26 = *(v0 + 112);
  v28 = *(v0 + 96);
  v29 = *(v0 + 72);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_10019A3C4()
{
  sub_10000607C((v0 + 16));

  sub_10000CC4C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112) | (*(v0 + 116) << 32));

  return swift_deallocClassInstance();
}

uint64_t sub_10019A470(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10019A568;

  return v7(a1);
}

uint64_t sub_10019A568()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_10019A674()
{
  v1 = v0;
  sub_1000F5104(&qword_100942EE0, &qword_1007A3970);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10019ABF4()
{
  v1 = v0;
  sub_1000F5104(&qword_100943E70, &qword_100797DA8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 24);
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        *(v20 + 24) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10019AD80()
{
  v1 = v0;
  sub_1000F5104(&qword_10093A858, &qword_100797DD8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10019AF4C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000F5104(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10019B0B4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_1000F5104(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

id sub_10019B300()
{
  v1 = v0;
  sub_1000F5104(&qword_100943A70, &qword_100797D20);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10019B45C()
{
  v1 = v0;
  sub_1000F5104(&qword_10093A748, &qword_100797BF8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
        v22 = v19;
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10019B5C8()
{
  v1 = v0;
  v2 = type metadata accessor for RDPermanentlyHiddenReminder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&qword_10093A750, &qword_100797C30);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1001A3A2C(*(v7 + 48) + v22, v6);
        result = sub_1001A3A90(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_10019B7C0()
{
  v1 = v0;
  sub_1000F5104(&qword_10093A740, &qword_100797BF0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10019B93C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000F5104(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_10019BAF4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10019EC58(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_10019BC20(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v19[0] = v8 + 8;
    v19[1] = v8 + 16;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v7);
      sub_10019ED94(v11, v6);
      (*(v8 + 8))(v11, v7);
      sub_1000050A4(v6, &unk_100939D90, "8\n\r");
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_10019BE3C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_1001A3B50(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    Set.Iterator.init(_cocoa:)();
    v5 = v77;
    v7 = v78;
    v8 = v79;
    v9 = v80;
    v10 = v81;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v72 = v5;
  v73 = v7;
  v74 = v8;
  v75 = v9;
  v63 = v8;
  v14 = (v8 + 64) >> 6;
  v69 = v4 + 7;
  v76 = v10;
  v66 = v5;
  v67 = v14;
  v65 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_62;
      }

      v70 = v22;
      type metadata accessor for REMObjectID_Codable();
      swift_dynamicCast();
      v20 = v71;
      v18 = v9;
      v2 = v10;
      if (!v71)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v72 = v5;
      v73 = v7;
      v74 = v63;
      v75 = v18;
      v76 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(v4[5]);
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v65;
    v5 = v66;
    v14 = v67;
  }

  v3 = ~v25;
  v26 = type metadata accessor for REMObjectID_Codable();
  v27 = *(v4[6] + 8 * v7);
  v68 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v4[6] + 8 * v7);
  }

  v30 = *(v4 + 32);
  v60 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v60;
  v3 = v67;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v61 = &v59;
    __chkstk_darwin(v29);
    v32 = &v59 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v69, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = v4[2];
    v62 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v65;
    v35 = v66;
LABEL_33:
    v64 = v5;
    while (v35 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v70 = v37;
      swift_dynamicCast();
      v38 = v71;
      if (!v71)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(v4[5]);
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v69[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(v44[6] + 8 * v7);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v69[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v67;

        v51 = v62[v46];
        v62[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v65;
        v35 = v66;
        v5 = v64;
        if (!v52)
        {
          v5 = v64 - 1;
          if (__OFSUB__(v64, 1))
          {
            __break(1u);
          }

          if (v64 == 1)
          {

            v4 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v65;
        v35 = v66;
        v3 = v67;
        v5 = v64;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v72 = v35;
      v73 = v36;
      v74 = v63;
      v75 = v40;
      v18 = v40;
      v76 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1001A1154(v62, v60, v5, v4, &qword_10093A838, &unk_1007A4510);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v54 = v6;

    v55 = v54;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v69, v55);
  sub_10019F6B0(v56, v60, v4, v7, &v72);
  v58 = v57;

  v4 = v58;
LABEL_62:
  sub_10001B860();
  return v4;
}

void *sub_10019C4D4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1001A0BCC(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_10019F93C(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_10001B860();
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_10019CA44(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943670, &qword_100797CB0);
}

void *sub_10019CAAC(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_1009432A0, &qword_100797C48);
}

void *sub_10019CB14(uint64_t a1, void *a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v69 - v10);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v89 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v69 - v16);
  __chkstk_darwin(v18);
  v84 = (&v69 - v20);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v70 = v11;
  v72 = v8;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = a2 + 7;
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_1000050A4(v32, &unk_100939D90, "8\n\r");
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = a2[5];
    v74 = sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v17, a2[6] + v88 * v26, v12);
    v38 = sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v91 = *v92;
    v91(v17, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    __chkstk_darwin(v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_1000050A4(v26, &unk_100939D90, "8\n\r");
        a2 = sub_1001A0E04(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = a2[5];
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v17, v56[6] + v58 * v88, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91(v17, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v17, v56[6] + v58 * v88, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v91(v17, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v84 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v84;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v86, v65);
  sub_10019FD7C(v67, v69, v84, v26, &v93);
  a2 = v68;

LABEL_52:
  sub_10001B860();
  return a2;
}

void *sub_10019D578(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7C8, &qword_100797CE8);
}

void *sub_10019D5E0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943520, &qword_1007A3EA0);
}

void *sub_10019D648(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943BE0, &unk_100797D50);
}

void *sub_10019D6B0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943BA0, &qword_100797D48);
}

void *sub_10019D718(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943B60, &qword_100797D40);
}

void *sub_10019D780(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943B20, &qword_100797D38);
}

void *sub_10019D7E8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v60 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v52 - v9;
  __chkstk_darwin(v11);
  i = v52 - v12;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v66[0] = a1;
  v13 = *(a1 + 16);

  v54 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v56 = a1;
  v57 = a1 + ((v17 + 32) & ~v17);
  v63 = *(v15 + 56);
  v64 = v16;
  v61 = a2 + 7;
  v62 = a2;
  v65 = v15;
  v18 = (v15 - 8);
  v53 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v58 = v14 + 1;
    v66[1] = v14 + 1;
    v64(i, v57 + v63 * v14, v4);
    v19 = a2[5];
    v55 = sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v58;
    if (v58 == v54)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v64(v10, v62[6] + v22 * v63, v4);
    sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v18;
    (*v18)(v10, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) == 0)
    {
      a2 = v62;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v62;
  v30 = *(v62 + 32);
  v52[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v52[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v52[1] = v52;
    __chkstk_darwin(v28);
    v33 = v52 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v61, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v53 = v33;
    v54 = (v34 - 1);
    v35 = *(v56 + 16);
    v36 = v58;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_1001A0E04(v53, v52[0], v54, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v56 + 16))
      {
        break;
      }

      v58 = v36;
      v64(v60, v57 + v36 * v63, v4);
      v38 = *(v29 + 40);
      v39 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v61[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v64(v10, v62[6] + v22 * v63, v4);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27(v10, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v61[v22 >> 6]) == 0)
          {
            break;
          }

          v64(v10, v62[6] + v22 * v63, v4);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v27(v10, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v60, v4);
        v29 = v62;
LABEL_16:
        v37 = v58;
        goto LABEL_17;
      }

LABEL_25:
      v27(v60, v4);
      v44 = v53[v24];
      v53[v24] = v44 & ~v23;
      v29 = v62;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v54 - 1;
      v37 = v58;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_33;
      }

      --v54;
      if (!v45)
      {

        a2 = _swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v47 = v31;

    v48 = v47;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v49 = v62;

      v29 = v49;
      continue;
    }

    break;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v48);
  sub_1001A0250(v50, v52[0], v62, v22, v66);
  a2 = v51;

LABEL_30:

  return a2;
}

void *sub_10019DEA8(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7A0, &qword_100797CC0);
}

void *sub_10019DF10(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7A8, &qword_100797CC8);
}

void *sub_10019DF78(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7B0, &qword_100797CD0);
}

void *sub_10019DFE0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7B8, &qword_100797CD8);
}

void *sub_10019E048(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7C0, &qword_100797CE0);
}

void *sub_10019E0B0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7D0, &unk_100797CF0);
}

void *sub_10019E118(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7D8, &qword_100797D08);
}

void *sub_10019E180(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A760, &qword_100797C40);
}

void *sub_10019E1E8(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A768, &qword_100797C50);
}

void *sub_10019E250(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A848, &qword_1007A4740);
}

void *sub_10019E2B8(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A770, &qword_100797C58);
}

void *sub_10019E320(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A778, &qword_100797C60);
}

void *sub_10019E388(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A780, &qword_100797C68);
}

void *sub_10019E3F0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A788, &unk_100797C70);
}

void *sub_10019E458(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_1009435C0, &unk_100797CA0);
}

void *sub_10019E4C0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943620, &qword_1007A3F40);
}

void *sub_10019E528(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A798, &qword_100797CB8);
}

void *sub_10019E590(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943900, &qword_100797D00);
}

void *sub_10019E5F8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2[2])
  {
    v5 = a1;
    v48 = a3;
    v49 = a4;
    v57[0] = a1;
    v6 = *(a1 + 16);

    v52 = v6;
    if (!v6)
    {
      goto LABEL_29;
    }

    v7 = 0;
    v54 = v5 + 32;
    v56 = v4 + 7;
    while (1)
    {
      v8 = *(v54 + 8 * v7);
      v55 = v7 + 1;
      v9 = v4[5];
      Hasher.init(_seed:)();
      v10 = v8;
      NSObject.hash(into:)();
      v11 = Hasher._finalize()();
      v12 = -1 << *(v4 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v56[v13 >> 6]) != 0)
      {
        break;
      }

LABEL_4:

      v7 = v55;
      if (v55 == v52)
      {
        goto LABEL_29;
      }
    }

    v16 = ~v12;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    while (1)
    {
      v17 = *(v4[6] + 8 * v13);
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        break;
      }

      v13 = (v13 + 1) & v16;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v56[v13 >> 6]) == 0)
      {
        goto LABEL_4;
      }
    }

    v19 = v55;
    v57[1] = v55;

    v21 = *(v4 + 32);
    v22 = ((1 << v21) + 63) >> 6;
    v23 = 8 * v22;
    if ((v21 & 0x3Fu) > 0xD)
    {
LABEL_33:
      v40 = v23;

      v41 = v40;
      if (!swift_stdlib_isStackAllocationSafe())
      {
        v42 = swift_slowAlloc();
        memcpy(v42, v56, v41);
        sub_10019FB74(v42, v22, v4, v13, v57, v48, v49);
        v44 = v43;

        return v44;
      }
    }

    v46 = v22;
    v47 = &v45;
    __chkstk_darwin(v20);
    v25 = &v45 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v25, v56, v24);
    v26 = v4[2];
    v27 = *&v25[8 * v14] & ~v15;
    v51 = v25;
    *&v25[8 * v14] = v27;
    v28 = v26 - 1;
    v29 = *(v5 + 16);
    v52 = v29;
    v53 = v5;
LABEL_13:
    v50 = v28;
    if (v19 != v29)
    {
      v22 = v19;
      v55 = v19;
      do
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v22 >= *(v5 + 16))
        {
          goto LABEL_32;
        }

        v30 = *(v54 + 8 * v22++);
        v31 = v4[5];
        Hasher.init(_seed:)();
        v32 = v30;
        NSObject.hash(into:)();
        v33 = Hasher._finalize()();
        v34 = -1 << *(v4 + 32);
        v15 = v33 & ~v34;
        v13 = v15 >> 6;
        v14 = 1 << v15;
        if (((1 << v15) & v56[v15 >> 6]) != 0)
        {
          v35 = ~v34;
          while (1)
          {
            v36 = *(v4[6] + 8 * v15);
            v37 = static NSObject.== infix(_:_:)();

            if (v37)
            {
              break;
            }

            v15 = (v15 + 1) & v35;
            v13 = v15 >> 6;
            v14 = 1 << v15;
            if (((1 << v15) & v56[v15 >> 6]) == 0)
            {
              goto LABEL_15;
            }
          }

          v19 = v55;
          v29 = v52;

          v38 = v51[v13];
          v51[v13] = v38 & ~v14;
          v5 = v53;
          if ((v38 & v14) != 0)
          {
            v28 = v50 - 1;
            if (__OFSUB__(v50, 1))
            {
              __break(1u);
            }

            v19 = v22;
            if (v50 == 1)
            {

              v4 = _swiftEmptySetSingleton;
              goto LABEL_29;
            }

            goto LABEL_13;
          }
        }

        else
        {
LABEL_15:

          v29 = v52;
          v5 = v53;
          v19 = v55;
        }
      }

      while (v22 != v29);
    }

    v4 = sub_1001A1340(v51, v46, v50, v4, v48, v49);
LABEL_29:
  }

  else
  {

    return _swiftEmptySetSingleton;
  }

  return v4;
}

uint64_t sub_10019EA98(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1001A1548(v4, v6, sub_10037F9A0, &type metadata accessor for REMObjectID_Codable);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for REMObjectID_Codable();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B93C(&qword_10093A838, &unk_1007A4510);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_100052DA4(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_10019EC58(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019A674();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1001A1820(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10019ED94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10019B0B4(&type metadata accessor for UUID, &qword_10093A708, &unk_100797B68);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1001A19E4(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_10019F060(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1001A16B0(v4, v6, sub_10037F77C, &qword_1009391E0, REMObjectID_ptr);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B93C(&qword_10093A728, &unk_100797BC0);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_100052DA4(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_10019F22C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for RDPermanentlyHiddenReminder();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  v6 = *v1;
  v7 = *(*v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v27 = v2;
  v8 = *(v2 + 20);
  type metadata accessor for Date();
  sub_1001A3B50(&unk_1009431A0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return (*(v26 + 56))(v25, 1, 1, v27);
  }

  v12 = ~v10;
  v13 = *(v26 + 72);
  while (1)
  {
    sub_1001A3A2C(*(v6 + 48) + v13 * v11, v5);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    sub_1001A3AF4(v5);
LABEL_4:
    v11 = (v11 + 1) & v12;
    if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return (*(v26 + 56))(v25, 1, 1, v27);
    }
  }

  v14 = *(v27 + 20);
  v15 = static Date.== infix(_:_:)();
  sub_1001A3AF4(v5);
  if ((v15 & 1) == 0)
  {
    goto LABEL_4;
  }

  v16 = v24;
  v17 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v16;
  v28 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B5C8();
    v19 = v28;
  }

  v20 = *(v19 + 48) + v13 * v11;
  v21 = v25;
  sub_1001A3A90(v20, v25);
  sub_1001A1CEC(v11);
  *v16 = v28;
  return (*(v26 + 56))(v21, 0, 1, v27);
}

uint64_t sub_10019F4E4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1001A16B0(v4, v6, sub_10037FE48, &unk_10093F610, NSString_ptr);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B93C(&qword_10093A850, &qword_100797DD0);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_100052DA4(v13);
  result = v20;
  *v10 = v21;
  return result;
}

void sub_10019F6B0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          type metadata accessor for REMObjectID_Codable();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_1001A1154(a1, a2, v30, a3, &qword_10093A838, &unk_1007A4510);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for REMObjectID_Codable();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_10019F93C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_1001A0BCC(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

void sub_10019FB74(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v32 = a3 + 56;
  v31 = a5;
  while (2)
  {
    v29 = v9;
    while (1)
    {
      v10 = a5[1];
      v11 = *(*a5 + 16);
      if (v10 == v11)
      {

        sub_1001A1340(a1, a2, v29, a3, a6, a7);
        return;
      }

      if (v10 >= v11)
      {
        __break(1u);
        goto LABEL_18;
      }

      v12 = *(*a5 + 8 * v10 + 32);
      a5[1] = v10 + 1;
      v13 = *(a3 + 40);
      Hasher.init(_seed:)();
      v14 = v12;
      NSObject.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(a3 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v32 + 8 * (v17 >> 6))) == 0)
      {
        goto LABEL_3;
      }

      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
      v20 = *(*(a3 + 48) + 8 * v17);
      v21 = static NSObject.== infix(_:_:)();

      if ((v21 & 1) == 0)
      {
        v22 = ~v16;
        while (1)
        {
          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          if (((1 << v17) & *(v32 + 8 * (v17 >> 6))) == 0)
          {
            break;
          }

          v23 = *(*(a3 + 48) + 8 * v17);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            goto LABEL_12;
          }
        }

LABEL_3:

        goto LABEL_4;
      }

LABEL_12:

      v25 = a1[v18];
      a1[v18] = v25 & ~v19;
      if ((v25 & v19) != 0)
      {
        break;
      }

LABEL_4:
      a5 = v31;
    }

    v9 = v29 - 1;
    a5 = v31;
    if (__OFSUB__(v29, 1))
    {
LABEL_18:
      __break(1u);
      return;
    }

    if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_10019FD7C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13, v17);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1000050A4(v12, &unk_100939D90, "8\n\r");
          v48 = v64;

          sub_1001A0E04(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        v24(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v24(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1001A0250(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v44 = &v37 - v15;
  v17 = __chkstk_darwin(v16);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    sub_1001A0E04(v38, v37, v39, a3);
    return;
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9, v17);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
    v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_5:
      v23(v50, v9);
      goto LABEL_6;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      (v46)(v13, *(v32 + 48) + v29 * v47, v9);
      sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v49;
      (*v49)(v13, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_5;
      }
    }

    v23(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_6:
      v10 = v43;
      goto LABEL_7;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_20;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return;
    }

LABEL_7:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1001A0644(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000F5104(&qword_10093A748, &qword_100797BF8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 24 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v9[5];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    v21 = v18;
    v22 = v19;
    NSObject.hash(into:)();
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (v9[6] + 24 * v26);
    *v31 = v17;
    v31[1] = v21;
    v31[2] = v22;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    v10 = v34;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v34 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001A08A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v8 = *(PredicateType - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(PredicateType);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000F5104(&qword_10093A820, &qword_1007A4570);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), PredicateType);
    v20 = *(v11 + 40);
    sub_1001A3B50(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, PredicateType);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001A0BCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000F5104(&qword_100942EE0, &qword_1007A3970);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001A0E04(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for UUID();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000F5104(&qword_10093A708, &unk_100797B68);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001A1154(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_1000F5104(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001A1340(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = _swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_1000F5104(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    v19 = v11[5];
    Hasher.init(_seed:)();
    v20 = v18;
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(v11[6] + 8 * v24) = v20;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001A1548(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = *v4;

  v9 = __CocoaSet.count.getter();
  v10 = swift_unknownObjectRetain();
  v11 = a3(v10, v9);
  v21 = v11;
  v12 = *(v11 + 40);

  v13 = NSObject._rawHashValue(seed:)(v12);
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    a4(0);
    while (1)
    {
      v17 = *(*(v11 + 48) + 8 * v15);
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v11 + 48) + 8 * v15);
  sub_100052DA4(v15);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v7 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A16B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t *a5)
{
  v9 = v5;
  v10 = *v5;

  v11 = __CocoaSet.count.getter();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v23 = v13;
  v14 = *(v13 + 40);

  v15 = NSObject._rawHashValue(seed:)(v14);
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_1000060C8(0, a4, a5);
    while (1)
    {
      v19 = *(*(v13 + 48) + 8 * v17);
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v13 + 48) + 8 * v17);
  sub_100052DA4(v17);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v9 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A1820(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1001A19E4(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = v12;
      v16 = (v14 + 1) & v12;
      v37 = v4[2];
      v38 = v4 + 2;
      v17 = v4[9];
      v35 = (v4 + 1);
      v36 = v9;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v11;
        v37(v7, *(v8 + 48) + v18 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        v25 = *(v21 + 40);
        sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v35)(v7, v3);
        v27 = v26 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v27 >= v22 && a1 >= v27)
          {
LABEL_16:
            v8 = v24;
            v30 = *(v24 + 48);
            v18 = v19;
            v31 = v19 * a1;
            if (v19 * a1 < v20 || v30 + v19 * a1 >= (v30 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v31 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v27 >= v22 || a1 >= v27)
        {
          goto LABEL_16;
        }

        v8 = v24;
        v18 = v19;
LABEL_5:
        v11 = (v11 + 1) & v15;
        v9 = v36;
      }

      while (((*(v36 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v8 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v34;
    ++*(v8 + 36);
  }
}

void sub_1001A1CEC(int64_t a1)
{
  v30 = type metadata accessor for RDPermanentlyHiddenReminder();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    v12 = *v1;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v29 = (v13 + 1) & v11;
      v14 = *(v3 + 72);
      v15 = v11;
      do
      {
        v16 = v8;
        v17 = v14;
        v18 = v14 * v10;
        sub_1001A3A2C(*(v7 + 48) + v14 * v10, v6);
        v19 = *(v7 + 40);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
        v20 = v15;
        dispatch thunk of Hashable.hash(into:)();
        v21 = *(v30 + 20);
        type metadata accessor for Date();
        sub_1001A3B50(&unk_1009431A0, &type metadata accessor for Date);
        dispatch thunk of Hashable.hash(into:)();
        v22 = Hasher._finalize()();
        sub_1001A3AF4(v6);
        v23 = v22 & v20;
        v15 = v20;
        if (a1 >= v29)
        {
          if (v23 < v29)
          {
            v14 = v17;
            goto LABEL_5;
          }

          v14 = v17;
          if (a1 < v23)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = v17;
          if (v23 < v29 && a1 < v23)
          {
            goto LABEL_5;
          }
        }

        v24 = v14 * a1;
        if (v14 * a1 < v18 || *(v7 + 48) + v14 * a1 >= (*(v7 + 48) + v18 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v10;
        if (v24 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v16;
      }

      while (((*(v16 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v7 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v27;
    ++*(v7 + 36);
  }
}

void *sub_1001A2030(uint64_t a1, uint64_t a2)
{

  return sub_1001A2130(a1, a2, sub_1001A23A4, sub_1001A23A4);
}

void *sub_1001A20B0(uint64_t a1, uint64_t a2)
{

  return sub_1001A2130(a1, a2, sub_1001A2A8C, sub_1001A2A8C);
}

void *sub_1001A2130(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_1001A230C(v15, v10, a2, a1, a4);
  }

  return v13;
}

void *sub_1001A230C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_1001A23A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v7 = *(PredicateType - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(PredicateType);
  v78 = (v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v13 = v64 - v12;
  v14 = __chkstk_darwin(v11);
  v79 = (v64 - v15);
  result = __chkstk_darwin(v14);
  v68 = v64 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v80 = v7 + 16;
  v76 = a4;
  v77 = a3;
  v72 = v7;
  if (v19 >= v18)
  {
    v44 = 0;
    v45 = *(a3 + 56);
    v67 = a3 + 56;
    v46 = 1 << *(a3 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v75 = a4 + 56;
    v79 = (v7 + 8);
    j = v49;
    v71 = 0;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_31:
    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
LABEL_44:

        return sub_1001A08A4(v69, v65, v71, a3);
      }

      v52 = *(v67 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        for (i = ((v52 - 1) & v52); ; i = ((v48 - 1) & v48))
        {
          v53 = v50 | (v44 << 6);
          v54 = *(a3 + 48);
          v55 = *(v7 + 72);
          v73 = v53;
          v56 = *(v7 + 16);
          v56(v78, v54 + v55 * v53, PredicateType);
          v57 = *(a4 + 40);
          sub_1001A3B50(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
          v58 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              v56(v13, *(v76 + 48) + v60 * v55, PredicateType);
              sub_1001A3B50(&qword_100943DD0, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
              v62 = dispatch thunk of static Equatable.== infix(_:_:)();
              v63 = *v79;
              (*v79)(v13, PredicateType);
              if (v62)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                a4 = v76;
                goto LABEL_42;
              }
            }

            result = (v63)(v78, PredicateType);
            v7 = v72;
            *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
            v49 = j;
            v28 = __OFADD__(v71++, 1);
            a4 = v76;
            a3 = v77;
            v48 = i;
            if (v28)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v63 = *v79;
LABEL_42:
            result = (v63)(v78, PredicateType);
            a3 = v77;
            v7 = v72;
            v49 = j;
            v48 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v50 = __clz(__rbit64(v48));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v71 = 0;
    v20 = a4;
    v21 = 0;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v64[0] = v23;
    v24 = 1 << *(v23 - 24);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v66 = v7 + 32;
    v67 = v27;
    v73 = a3 + 56;
    v78 = (v7 + 8);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_44;
      }

      v31 = *(v64[0] + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        for (j = (v31 - 1) & v31; ; j = (v26 - 1) & v26)
        {
          v32 = *(v7 + 72);
          v33 = *(v76 + 48) + v32 * (v29 | (v21 << 6));
          v34 = v68;
          i = *(v7 + 16);
          v75 = v32;
          i(v68, v33, PredicateType);
          (*(v7 + 32))(v79, v34, PredicateType);
          v35 = *(a3 + 40);
          sub_1001A3B50(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
          v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          v39 = v38 >> 6;
          v40 = 1 << v38;
          if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) != 0)
          {
            v64[1] = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v41 = ~v37;
            while (1)
            {
              i(v13, *(v77 + 48) + v38 * v75, PredicateType);
              sub_1001A3B50(&qword_100943DD0, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
              v42 = dispatch thunk of static Equatable.== infix(_:_:)();
              v43 = *v78;
              (*v78)(v13, PredicateType);
              if (v42)
              {
                break;
              }

              v38 = (v38 + 1) & v41;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) == 0)
              {
                a3 = v77;
                goto LABEL_21;
              }
            }

            result = (v43)(v79, PredicateType);
            v26 = j;
            v69[v39] |= v40;
            v7 = v72;
            v28 = __OFADD__(v71++, 1);
            a3 = v77;
            v27 = v67;
            if (v28)
            {
              goto LABEL_48;
            }

            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = *v78;
LABEL_21:
            result = (v43)(v79, PredicateType);
            v7 = v72;
            v27 = v67;
            v26 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v29 = __clz(__rbit64(v26));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void sub_1001A2A8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v51 = 0;
    v25 = 0;
    v47 = v5 + 56;
    v26 = 1 << *(v5 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v5 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = v4 + 56;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v53 = (v28 - 1) & v28;
LABEL_34:
      v34 = v31 | (v25 << 6);
      v35 = *(v5 + 48);
      v50 = v34;
      v36 = *(v4 + 40);
      v37 = *(v35 + 8 * v34);
      v38 = NSObject._rawHashValue(seed:)(v36);
      v39 = -1 << *(v4 + 32);
      v40 = v38 & ~v39;
      if ((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v42 = *(*(v4 + 48) + 8 * v40);
          v43 = static NSObject.== infix(_:_:)();

          if (v43)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v4 = a4;
          if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v28 = v53;
        v24 = __OFADD__(v51++, 1);
        v5 = a3;
        v4 = a4;
        if (v24)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:

        v28 = v53;
        v5 = a3;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_42;
      }

      v33 = *(v47 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v53 = (v33 - 1) & v33;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v6 = 0;
  v44 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v51 = 0;
  v52 = a3 + 56;
  v46 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v49 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(v5 + 40);
    v15 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
    v16 = NSObject._rawHashValue(seed:)(v14);
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) != 0)
    {
      type metadata accessor for REMObjectID_Codable();
      v4 = *(*(v5 + 48) + 8 * v18);
      v21 = static NSObject.== infix(_:_:)();

      if ((v21 & 1) == 0)
      {
        v22 = ~v17;
        do
        {
          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v23 = *(*(a3 + 48) + 8 * v18);
          v4 = static NSObject.== infix(_:_:)();
        }

        while ((v4 & 1) == 0);
      }

      v5 = a3;

      v10 = v46;
      a1[v19] |= v20;
      v9 = v49;
      v24 = __OFADD__(v51++, 1);
      if (v24)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v10 = v46;
      v9 = v49;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_42:

      sub_1001A1154(a1, a2, v51, v5, &qword_10093A838, &unk_1007A4510);
      return;
    }

    v13 = *(v44 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
}

void sub_1001A2E50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v78 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v64 - v11;
  __chkstk_darwin(v13);
  v79 = (v64 - v14);
  v16 = __chkstk_darwin(v15);
  v68 = v64 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v80 = v7 + 16;
  v76 = a4;
  v77 = a3;
  v72 = v7;
  if (v19 >= v18)
  {
    v44 = 0;
    v45 = *(a3 + 56);
    v67 = a3 + 56;
    v46 = 1 << *(a3 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v75 = a4 + 56;
    v79 = (v7 + 8);
    j = v49;
    v71 = 0;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_31:
    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
LABEL_44:

        sub_1001A0E04(v69, v65, v71, a3);
        return;
      }

      v52 = *(v67 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        for (i = ((v52 - 1) & v52); ; i = ((v48 - 1) & v48))
        {
          v53 = v50 | (v44 << 6);
          v54 = *(a3 + 48);
          v55 = *(v7 + 72);
          v73 = v53;
          v56 = *(v7 + 16);
          v56(v78, v54 + v55 * v53, v6, v16);
          v57 = *(a4 + 40);
          sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
          v58 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              (v56)(v12, *(v76 + 48) + v60 * v55, v6);
              sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID);
              v62 = dispatch thunk of static Equatable.== infix(_:_:)();
              v63 = *v79;
              (*v79)(v12, v6);
              if (v62)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                a4 = v76;
                goto LABEL_42;
              }
            }

            v63(v78, v6);
            v7 = v72;
            *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
            v49 = j;
            v28 = __OFADD__(v71++, 1);
            a4 = v76;
            a3 = v77;
            v48 = i;
            if (v28)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v63 = *v79;
LABEL_42:
            v63(v78, v6);
            a3 = v77;
            v7 = v72;
            v49 = j;
            v48 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v50 = __clz(__rbit64(v48));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v71 = 0;
    v20 = a4;
    v21 = 0;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v64[0] = v23;
    v24 = 1 << *(v23 - 24);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v66 = v7 + 32;
    v67 = v27;
    v73 = a3 + 56;
    v78 = (v7 + 8);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_44;
      }

      v31 = *(v64[0] + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        for (j = (v31 - 1) & v31; ; j = (v26 - 1) & v26)
        {
          v32 = *(v7 + 72);
          v33 = *(v76 + 48) + v32 * (v29 | (v21 << 6));
          v34 = v68;
          i = *(v7 + 16);
          v75 = v32;
          i(v68, v33, v6, v16);
          (*(v7 + 32))(v79, v34, v6);
          v35 = *(a3 + 40);
          sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID);
          v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          v39 = v38 >> 6;
          v40 = 1 << v38;
          if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) != 0)
          {
            v64[1] = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v41 = ~v37;
            while (1)
            {
              (i)(v12, *(v77 + 48) + v38 * v75, v6);
              sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID);
              v42 = dispatch thunk of static Equatable.== infix(_:_:)();
              v43 = *v78;
              (*v78)(v12, v6);
              if (v42)
              {
                break;
              }

              v38 = (v38 + 1) & v41;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) == 0)
              {
                a3 = v77;
                goto LABEL_21;
              }
            }

            v43(v79, v6);
            v26 = j;
            v69[v39] |= v40;
            v7 = v72;
            v28 = __OFADD__(v71++, 1);
            a3 = v77;
            v27 = v67;
            if (v28)
            {
              goto LABEL_48;
            }

            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = *v78;
LABEL_21:
            v43(v79, v6);
            v7 = v72;
            v27 = v67;
            v26 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v29 = __clz(__rbit64(v26));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1001A3538(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1001A362C;

  return v6(v2 + 16);
}

uint64_t sub_1001A362C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001A375C(uint64_t a1)
{
  v4 = *(type metadata accessor for REMUrgentReminder() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FCBFC;

  return sub_1001988F0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1001A388C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000FDA74;

  return sub_10019A470(a1, v5);
}

id sub_1001A3944(id result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 3u || a4 == 4)
  {

    return result;
  }

  if (a4 == 3)
  {
    v6 = result;

    result = v6;

    return result;
  }

  return result;
}