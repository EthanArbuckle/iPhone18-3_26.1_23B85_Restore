void sub_1001A39AC(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
LABEL_4:

    return;
  }

  if (a4 != 3)
  {
    if (a4 != 4)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_1001A3A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDPermanentlyHiddenReminder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A3A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDPermanentlyHiddenReminder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A3AF4(uint64_t a1)
{
  v2 = type metadata accessor for RDPermanentlyHiddenReminder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A3B50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A3B98(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000FDA74;

  return sub_1001A3538(a1, v5);
}

uint64_t sub_1001A3C50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000FCBFC;

  return sub_1001A3538(a1, v5);
}

uint64_t sub_1001A3D08(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))();
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  sub_1001A3EE4();
  static REMJSONRepresentable.fromJSONData(_:)();
  result = sub_100031A14(v6, v7);
  if (!v2)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1001A3DB4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A880);
  v1 = sub_100006654(v0, qword_10093A880);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001A3E7C()
{
  v1 = [v0 membershipsOfRemindersInSectionsAsData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1001A3EE4()
{
  result = qword_1009440A0;
  if (!qword_1009440A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009440A0);
  }

  return result;
}

uint64_t sub_1001A3F34()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_10093A898 = v0;
  return result;
}

void *sub_1001A3FA8(void *a1)
{
  v3 = sub_10000F8A4(7uLL, 0, 7u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {

    v15 = sub_10000EEFC(v6);
    sub_100011170(&v15);

    v7 = v15;
    v15 = _swiftEmptyArrayStorage;
    if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
    {
      goto LABEL_15;
    }

    for (i = *(v7 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v7 + 16))
          {
            goto LABEL_14;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = sub_1003FAFA0(a1);
        sub_100271FCC(v13);

        ++v9;
        if (v12 == i)
        {
          a1 = v15;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_17:
  }

  return a1;
}

void *sub_1001A41EC(unint64_t a1, uint64_t a2)
{
  v104 = a1;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v99 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = &v88 - v7;
  __chkstk_darwin(v8);
  v102 = &v88 - v9;
  __chkstk_darwin(v10);
  v107 = &v88 - v11;
  v108 = type metadata accessor for UUID();
  v89 = *(v108 - 8);
  v12 = *(v89 + 64);
  __chkstk_darwin(v108);
  v90 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v105 = &v88 - v15;
  v100 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v98 = *(v100 - 1);
  v16 = *(v98 + 64);
  __chkstk_darwin(v100);
  v96 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v93 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = _s9UtilitiesO12SortingStyleOMa();
  v21 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v95 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v92 = &v88 - v24;
  __chkstk_darwin(v25);
  v97 = &v88 - v26;
  v91 = _s10PredicatesOMa(0);
  v27 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v31 = *(Subtasks - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(Subtasks);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v88 - v36;
  v103 = a2;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  (*(v31 + 104))(v34, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), Subtasks);
  sub_1001A4E80();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v113 == v111 && v114 == v112)
  {
    v38 = *(v31 + 8);
    v38(v34, Subtasks);
    v38(v37, Subtasks);
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v40 = *(v31 + 8);
    v40(v34, Subtasks);
    v40(v37, Subtasks);

    if ((v39 & 1) == 0)
    {
      v54 = objc_opt_self();
      v86 = String._bridgeToObjectiveC()();
      [v54 internalErrorWithDebugDescription:v86];

      swift_willThrow();
      return v54;
    }
  }

  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  swift_storeEnumTagMultiPayload();
  v41 = sub_100043AA8();
  sub_1001A4F3C(v29, _s10PredicatesOMa);
  v42 = v93;
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v43 = v92;
  swift_storeEnumTagMultiPayload();
  v44 = v97;
  sub_1005368D8(v42, v43, v97);
  if (qword_1009363F8 != -1)
  {
    swift_once();
  }

  v113 = qword_100974F68;
  v45 = qword_100935B18;

  v46 = v102;
  v47 = v108;
  v48 = v95;
  if (v45 != -1)
  {
    swift_once();
  }

  v111 = qword_10093A898;

  v49 = sub_10053CBE4(v44);
  sub_100271A80(v49);
  sub_1001A4ED8(v44, v48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 4)
  {
    sub_1001A4F3C(v48, _s9UtilitiesO12SortingStyleOMa);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_14:
    v51 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  sub_1001A4F3C(v48, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367F0 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {

LABEL_15:
    sub_100271A80(v51);
    v52 = sub_100050654(v113, v111, 0, v41);

    v53 = v96;
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    v54 = sub_10053CE0C(v44, v53, 0);
    (*(v98 + 8))(v53, v100);
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v52 setSortDescriptors:isa];

    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v56 = v106;
    v57 = NSManagedObjectContext.fetch<A>(_:)();
    if (v56)
    {
      sub_1001A4F3C(v44, _s9UtilitiesO12SortingStyleOMa);

      return v54;
    }

    v115 = _swiftEmptyDictionarySingleton;
    v110 = _swiftEmptyDictionarySingleton;
    v104 = v57;
    if (v57 >> 62)
    {
      break;
    }

    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = v107;
    if (!v58)
    {
      goto LABEL_45;
    }

LABEL_19:
    v94 = 0;
    v95 = v52;
    v96 = v41;
    if (v58 >= 1)
    {
      v60 = v58;
      v61 = 0;
      v62 = v104;
      v106 = v104 & 0xC000000000000001;
      v63 = (v89 + 56);
      v64 = (v89 + 48);
      v100 = (v89 + 32);
      v98 = v89 + 8;
      v103 = v58;
      while (1)
      {
        if (v106)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v65 = *(v62 + 8 * v61 + 32);
        }

        v66 = v65;
        v67 = [v65 list];
        if (v67)
        {
          v68 = v67;
          v69 = [v67 identifier];

          if (v69)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v70 = 0;
          }

          else
          {
            v70 = 1;
          }

          v47 = v108;
          v71 = *v63;
          (*v63)(v46, v70, 1, v108);
          v59 = v107;
          sub_100100FB4(v46, v107);
          v72 = *v64;
          if ((*v64)(v59, 1, v47) != 1)
          {
            v73 = *v100;
            (*v100)(v105, v59, v47);
            v74 = [v66 parentReminder];
            if (v74)
            {
              v75 = v74;
              v76 = [v74 identifier];

              if (v76)
              {
                v77 = v99;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v78 = 0;
              }

              else
              {
                v78 = 1;
                v77 = v99;
              }

              v80 = v108;
              v71(v77, v78, 1, v108);
              v81 = v77;
              v82 = v80;
              v79 = v101;
              sub_100100FB4(v81, v101);
              if (v72(v79, 1, v82) == 1)
              {
LABEL_39:
                sub_1001A4F9C(v79);
                v109 = v66;
                sub_1000F5104(&qword_10093A8A8, &unk_100797EA0);
                sub_1001A5004();
                v83 = v105;
                v47 = v108;
                Dictionary<>.append(_:toCollectionUnderKey:)();
                (*v98)(v83, v47);
              }

              else
              {
                v84 = v90;
                v73(v90, v79, v82);
                v109 = v66;
                sub_1000F5104(&qword_10093A8A8, &unk_100797EA0);
                sub_1001A5004();
                v47 = v108;
                Dictionary<>.append(_:toCollectionUnderKey:)();
                v85 = *v98;
                (*v98)(v84, v47);
                v85(v105, v47);
              }

              v46 = v102;
              v60 = v103;
              v59 = v107;
              v62 = v104;
              goto LABEL_23;
            }

            v79 = v101;
            v71(v101, 1, 1, v47);
            goto LABEL_39;
          }

          v60 = v103;
          v62 = v104;
        }

        else
        {

          (*v63)(v59, 1, 1, v47);
        }

        sub_1001A4F9C(v59);
LABEL_23:
        if (v60 == ++v61)
        {

          v54 = v115;
          v44 = v97;
          goto LABEL_46;
        }
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
  }

  v58 = _CocoaArrayWrapper.endIndex.getter();
  v59 = v107;
  if (v58)
  {
    goto LABEL_19;
  }

LABEL_45:

  v54 = _swiftEmptyDictionarySingleton;
LABEL_46:

  sub_1001A4F3C(v44, _s9UtilitiesO12SortingStyleOMa);
  return v54;
}

unint64_t sub_1001A4E80()
{
  result = qword_10093A8A0;
  if (!qword_10093A8A0)
  {
    type metadata accessor for REMRemindersListDataView.FetchSubtasks();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A8A0);
  }

  return result;
}

uint64_t sub_1001A4ED8(uint64_t a1, uint64_t a2)
{
  v4 = _s9UtilitiesO12SortingStyleOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A4F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A4F9C(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001A5004()
{
  result = qword_10093A8B0;
  if (!qword_10093A8B0)
  {
    sub_1000F514C(&qword_10093CAC0, &unk_10079E1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A8B0);
  }

  return result;
}

uint64_t sub_1001A5080(uint64_t a1)
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
    v11 = (*(a1 + 56) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100378434(&v14, v12, v13);
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

uint64_t sub_1001A519C(uint64_t a1)
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

    sub_100378434(&v14, v12, v13);
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

uint64_t static REMCDTemplateSection.cdEntityName.getter()
{
  sub_1000060C8(0, &qword_10093A8B8, REMTemplateSection_ptr);
  v0 = [swift_getObjCClassFromMetadata() cdEntityName];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

Swift::Int __swiftcall REMCDTemplateSection.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 template];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDTemplateSection.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008DED80);
  sub_100034610(&unk_1008DEDA0);
  return v0;
}

id REMCDTemplateSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDTemplateSection();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDTemplateSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDTemplateSection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A5660(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100378434(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1001A57F4(unint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, void (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a2(0);
  while (1)
  {
    sub_1001A6868(a3, a4);
    result = Set.init(minimumCapacity:)();
    v17 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v12 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      a2 = v13;
      v14 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v13);

      ++v12;
      if (v14 == a3)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v15 = a2;
    _CocoaArrayWrapper.endIndex.getter();
    v15(0);
  }

  a4 = result;
  a3 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001A59A4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1001A6868(&qword_10093B410, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1003794C4(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1001A5B40(uint64_t a1)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(PredicateType);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1001A6868(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, PredicateType);
      sub_100379BD8(v9, v7);
      (*(v12 - 8))(v9, PredicateType);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1001A5CDC(uint64_t a1)
{
  v2 = type metadata accessor for REMManualOrdering.PinnedList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1001A6868(&qword_100943580, &type metadata accessor for REMManualOrdering.PinnedList);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_10037A15C(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1001A5ED8(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, void *))
{
  v10 = *(a1 + 16);
  sub_1000F5104(a2, a3);
  sub_10000CB48(a4, a2, a3);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = (a1 + 32);
    do
    {
      v13 = *v12++;
      a5(&v14, v13);

      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_1001A61EC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v10;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_100378ACC(&v9, v7);

      if (v8 == v2)
      {
        return v10;
      }
    }
  }

  v5 = result;
  v2 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001A6360(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_1001A6868(&qword_100936D28, type metadata accessor for URLResourceKey);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10037D23C(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1001A653C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1001A6868(&qword_1009438D0, &type metadata accessor for Calendar.Component);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_10037D478(v9, v6);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1001A6768(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001A6814();
  result = Set.init(minimumCapacity:)();
  v6 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      sub_10037E5F0(v5, *(v4 - 2), *(v4 - 1), *v4);

      v4 += 3;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

unint64_t sub_1001A6814()
{
  result = qword_10093A8F0;
  if (!qword_10093A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A8F0);
  }

  return result;
}

uint64_t sub_1001A6868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A68E0(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_1000F5104(a2, a3);
    sub_10000CB48(a4, a2, a3);
    result = Set.init(minimumCapacity:)();
    v16 = result;
    if (v10)
    {
      break;
    }

    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v14 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v16;
      a5(&v15, v14);

      ++a2;
      if (v10 == v13)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  a4 = result;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (v13)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001A6A48(uint64_t a1)
{
  v2 = type metadata accessor for RDPermanentlyHiddenReminder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_1001A6868(&qword_10093A908, type metadata accessor for RDPermanentlyHiddenReminder);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1001A3A2C(v12, v6);
      sub_10037E7F4(v9, v6);
      sub_1001A3AF4(v9);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_1001A6DC4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AA50);
  v1 = sub_100006654(v0, qword_10093AA50);
  if (qword_100936488 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001A6E8C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v11 = *(v1 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  aBlock[4] = sub_1001A727C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8470;
  v13 = _Block_copy(aBlock);
  v14 = v10;
  v15 = v11;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v5, v2);
  (*(v6 + 8))(v9, v18);

  return v1;
}

id sub_1001A712C(void *a1)
{
  if (qword_100935B20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093AA50);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating RDSpringBoardApplicationShortcutUpdater's application shortcut service", v5, 2u);
  }

  return [a1 invalidate];
}

uint64_t sub_1001A7224()
{
  sub_1001A6E8C();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A7284(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10093AA50);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v5;
    v17 = v16;
    v31 = swift_slowAlloc();
    v32 = v9;
    aBlock[0] = v31;
    *v17 = 136315138;
    type metadata accessor for REMAccountsListDataView.Model.GroupChild();
    v18 = Array.description.getter();
    v20 = a1;
    v21 = v12;
    v22 = v8;
    v23 = v4;
    v24 = v2;
    v25 = sub_10000668C(v18, v19, aBlock);

    *(v17 + 4) = v25;
    v2 = v24;
    v4 = v23;
    v8 = v22;
    v12 = v21;
    a1 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Application shortcut update requested for lists {lists: %s}", v17, 0xCu);
    sub_10000607C(v31);
    v9 = v32;

    v5 = v33;
  }

  v26 = *(v2 + 24);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = v2;
  aBlock[4] = sub_1001A8248;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E84C0;
  v28 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v5 + 8))(v8, v4);
  (*(v34 + 8))(v12, v9);
}

void sub_1001A7664(uint64_t a1, uint64_t a2)
{
  if (qword_100935B20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093AA50);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    type metadata accessor for REMAccountsListDataView.Model.GroupChild();
    v9 = Array.description.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Updating application shortcuts for lists {lists: %s}", v7, 0xCu);
    sub_10000607C(v8);
  }

  v12 = *(a2 + 16);
  sub_1001A77DC(a1);
}

void sub_1001A77DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v21 = v1;
    v25 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = sub_1001A8250();
    v14 = v5 + 16;
    v15 = *(v5 + 16);
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v22 = *(v14 + 56);
    v23 = v13;
    v24 = v14;
    v17 = (v14 - 8);
    do
    {
      v15(v11, v16, v4);
      v15(v9, v11, v4);
      sub_1001A79F4(v9);
      (*v17)(v11, v4);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = v25[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 += v22;
      --v12;
    }

    while (v12);
    v2 = v21;
  }

  sub_1001A8250();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 updateDynamicApplicationShortcutItems:isa forBundleIdentifier:REMAppBundleIdentifier];
}

id sub_1001A79F4(uint64_t a1)
{
  v2 = type metadata accessor for REMApplicationShortcutUserInfoKeys();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = String._bridgeToObjectiveC()();
  [v7 setType:v8];

  sub_1001A7CD4();
  v9 = String._bridgeToObjectiveC()();

  [v7 setLocalizedTitle:v9];

  v10 = objc_allocWithZone(SBSApplicationShortcutSystemIcon);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithSystemImageName:v11];

  [v7 setIcon:v12];
  sub_1000F5104(&qword_10093AB20, &qword_100798078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  (*(v3 + 104))(v6, enum case for REMApplicationShortcutUserInfoKeys.actionURLAbsoluteString(_:), v2);
  v14 = REMApplicationShortcutUserInfoKeys.rawValue.getter();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  *(inited + 48) = sub_1001A7EF4();
  sub_10038F578(inited);
  swift_setDeallocating();
  sub_1001A829C(inited + 32);
  sub_1000F5104(&qword_10093AB30, &qword_100798088);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 setUserInfo:isa];

  v18 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v7;
}

uint64_t sub_1001A7CD4()
{
  v1 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _REMGetLocalizedString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v2 + 16))(v5, v0, v1);
  v7 = (*(v2 + 88))(v5, v1);
  if (v7 == enum case for REMAccountsListDataView.Model.GroupChild.list(_:))
  {
    v8 = &selRef_displayName;
LABEL_5:
    (*(v2 + 96))(v5, v1);
    v9 = *v5;
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100791300;
    v11 = [v9 *v8];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100006600();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    v15 = static String.localizedStringWithFormat(_:_:)();

    return v15;
  }

  if (v7 == enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:))
  {
    v8 = &selRef_name;
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001A7EF4()
{
  v1 = v0;
  v26 = type metadata accessor for URL();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for REMNavigationSpecifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6);
  v16 = (*(v7 + 88))(v10, v6);
  if (v16 == enum case for REMAccountsListDataView.Model.GroupChild.list(_:))
  {
    v17 = &enum case for REMNavigationSpecifier.list(_:);
LABEL_5:
    (*(v7 + 96))(v10, v6);
    v18 = *v10;
    v19 = *(sub_1000F5104(&qword_10093AB38, qword_100798090) + 48);
    v20 = [v18 objectID];

    *v15 = v20;
    v21 = enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:);
    v22 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
    (*(*(v22 - 8) + 104))(&v15[v19], v21, v22);
    (*(v12 + 104))(v15, *v17, v11);
    REMNavigationSpecifier.url.getter();
    URL.absoluteString.getter();
    v23 = String._bridgeToObjectiveC()();

    (*(v2 + 8))(v5, v26);
    (*(v12 + 8))(v15, v11);
    return v23;
  }

  if (v16 == enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:))
  {
    v17 = &enum case for REMNavigationSpecifier.customSmartList(_:);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_1001A8250()
{
  result = qword_10093AB18;
  if (!qword_10093AB18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093AB18);
  }

  return result;
}

uint64_t sub_1001A829C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10093AB28, &qword_100798080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A830C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AB40);
  v1 = sub_100006654(v0, qword_10093AB40);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Bool __swiftcall REMCDReminder.markExtraneousAlarmsForDeletion()()
{
  if ([v0 markedForDeletion] & 1) != 0 || (objc_msgSend(v0, "isDeleted"))
  {
    goto LABEL_22;
  }

  v1 = [v0 account];
  if (!v1)
  {
    return v1;
  }

  v2 = v1;
  v3 = [v1 accountTypeHost];
  v4 = [v3 isCloudKit];

  if (!v4)
  {
LABEL_21:

LABEL_22:
    LOBYTE(v1) = 0;
    return v1;
  }

  v5 = [v0 alarmStorage];
  if (!v5)
  {
LABEL_13:
    if (qword_100935B28 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093AB40);
    v19 = v0;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v42 = v23;
      *v22 = 136446210;
      v24 = [v19 remObjectID];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 description];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v27 = 7104878;
        v29 = 0xE300000000000000;
      }

      v30 = sub_10000668C(v27, v29, &v42);

      *(v22 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "REMCDReminder.markExtraneousAlarmsForDeletion(): Reminder has <= 1 alarm, stopping early {reminderID: %{public}s}", v22, 0xCu);
      sub_10000607C(v23);
    }

    goto LABEL_21;
  }

  v6 = v5;
  if ([v5 count] < 2)
  {

    goto LABEL_13;
  }

  if (qword_100935B28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10093AB40);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = [v8 remObjectID];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 description];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v31 = sub_10000668C(v15, v17, &v42);

    *(v11 + 4) = v31;
    *(v11 + 12) = 2082;
    v32 = [v8 managedObjectContext];
    if (v32 && (v33 = v32, v34 = [v32 transactionAuthor], v33, v34))
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = v35;
    }

    else
    {
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    v39 = sub_10000668C(v38, v37, &v42);

    *(v11 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v9, v10, "REMCDReminder.markExtraneousAlarmsForDeletion() {reminderID: %{public}s, author: %{public}s}", v11, 0x16u);
    swift_arrayDestroy();
  }

  LOBYTE(v42) = 0;
  __chkstk_darwin(v40);
  static os_log_type_t.info.getter();
  measureTimeElapsed(_:level:block:)();

  LOBYTE(v1) = v42;
  return v1;
}

uint64_t sub_1001A88E4(uint64_t a1, void *a2, BOOL *a3)
{
  sub_1000060C8(0, &unk_100938870, off_1008D4128);
  sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
  sub_1001AADC4();
  v5 = Sequence.elements<A>(ofType:)();
  v6 = [a2 remObjectID];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 description];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  v12 = sub_1001ADC98(v5, v9, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = sub_1001A8A54(v12, v14, v16, v18);

  *a3 = v19;
  return result;
}

BOOL sub_1001A8A54(uint64_t a1, int64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a3;
  v8 = a3 >> 62;
  if (a3 >> 62)
  {
LABEL_59:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = a1;
  if (v9 >= 2)
  {
    v54 = v8;
    v56 = v5;
    sub_1001A99E0(v5);
    v11 = v10;
    v5 = v12;
    v59 = 0;
    a1 = v13 >> 1;
    v14 = v12;
LABEL_5:
    v15 = v14;
    while (a1 != v15)
    {
      if (v14 < v5 || v15 >= a1)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v16 = v15 + 1;
      v17 = *(*(v11 + 8 * v15) + 16);

      v8 = sub_1001AA380();

      v15 = v16;
      if (v8)
      {
        v14 = v16;
        v18 = __OFADD__(v59++, 1);
        if (!v18)
        {
          goto LABEL_5;
        }

        __break(1u);
        goto LABEL_13;
      }
    }

    swift_unknownObjectRelease();
    if (v59 >= 1)
    {
      type metadata accessor for Analytics();
      if (static Analytics.isEventUsed(_:)())
      {
        sub_1000F5104(&unk_100939240, &unk_100798990);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100791340;
        *(inited + 32) = 1701869940;
        *(inited + 40) = 0xE400000000000000;
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        *(inited + 48) = NSString.init(stringLiteral:)();
        *(inited + 56) = 0x746E756F63;
        *(inited + 64) = 0xE500000000000000;
        *(inited + 72) = Int._bridgeToObjectiveC()();
        sub_10038D880(inited);
        swift_setDeallocating();
        sub_1000F5104(&unk_100939250, &unk_100795D30);
        swift_arrayDestroy();
        static Analytics.postEvent(_:payload:duration:)();
      }
    }

    v5 = v56;
    if (qword_100935B28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_10093AB40);

    v8 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    a1 = v58;
    if (os_log_type_enabled(v8, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60[0] = v27;
      *v26 = 134218498;
      if (v54)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v26 + 4) = v28;

      *(v26 + 12) = 2048;
      *(v26 + 14) = v59;
      *(v26 + 22) = 2080;
      *(v26 + 24) = sub_10000668C(v58, a2, v60);
      _os_log_impl(&_mh_execute_header, v8, v25, "REMCDReminder.ExtraneousAlarmsMarker: markExtraneousAlarmsForDeletion: (dueDateVerifiableAlarms) {total: %ld, deleted: %ld, reminderID: %s}", v26, 0x20u);
      sub_10000607C(v27);
    }

    else
    {
    }

    if ((a4 & 0x8000000000000000) != 0 || (a4 & 0x4000000000000000) != 0)
    {
      goto LABEL_60;
    }

LABEL_33:
    if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v55 = a2;
      v57 = a4;
      a4 = v5;
      v53 = 0;
      sub_1001A9D6C(v57);
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_13:
  if (qword_100935B28 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_10093AB40);

  v8 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v60[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10000668C(a1, a2, v60);
    _os_log_impl(&_mh_execute_header, v8, v20, "REMCDReminder.ExtraneousAlarmsMarker: Reminder has <= 1 dueDateVerifiableAlarms so no need to scan for extraneous items {reminderID: %s}", v21, 0xCu);
    sub_10000607C(v22);
  }

  v59 = 0;
  if ((a4 & 0x8000000000000000) == 0 && (a4 & 0x4000000000000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_60:
  if (_CocoaArrayWrapper.endIndex.getter() > 1)
  {
    v55 = a2;
    v57 = a4;
    a4 = v5;
    v53 = 1;
    sub_1001A9D6C(v57);
LABEL_35:
    v32 = v29;
    a2 = v30;
    v33 = 0;
    a1 = v31 >> 1;
    v34 = v30;
LABEL_36:
    v35 = v34;
    while (a1 != v35)
    {
      if (v34 < a2 || v35 >= a1)
      {
        goto LABEL_58;
      }

      v36 = v35 + 1;
      v5 = *(v32 + 8 * v35);
      v37 = *(v5 + 16);

      v8 = sub_1001AA380();

      v35 = v36;
      if (v8)
      {
        v34 = v36;
        v18 = __OFADD__(v33++, 1);
        if (!v18)
        {
          goto LABEL_36;
        }

        __break(1u);
        break;
      }
    }

    swift_unknownObjectRelease();
    if (v33 >= 1)
    {
      type metadata accessor for Analytics();
      if (static Analytics.isEventUsed(_:)())
      {
        sub_1000F5104(&unk_100939240, &unk_100798990);
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_100791340;
        *(v38 + 32) = 1701869940;
        *(v38 + 40) = 0xE400000000000000;
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        *(v38 + 48) = NSString.init(stringLiteral:)();
        *(v38 + 56) = 0x746E756F63;
        *(v38 + 64) = 0xE500000000000000;
        *(v38 + 72) = Int._bridgeToObjectiveC()();
        sub_10038D880(v38);
        swift_setDeallocating();
        sub_1000F5104(&unk_100939250, &unk_100795D30);
        swift_arrayDestroy();
        static Analytics.postEvent(_:payload:duration:)();
      }
    }

    if (qword_100935B28 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_10093AB40);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60[0] = v43;
      *v42 = 134218498;
      if (v53)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v42 + 4) = v44;

      *(v42 + 12) = 2048;
      *(v42 + 14) = v33;
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_10000668C(v58, v55, v60);
      _os_log_impl(&_mh_execute_header, v40, v41, "REMCDReminder.ExtraneousAlarmsMarker: markExtraneousAlarmsForDeletion: (dueDateNonVerifiableAlarms) {total: %ld, deleted: %ld, reminderID: %s}", v42, 0x20u);
      sub_10000607C(v43);
    }

    else
    {
    }

    if (v59 <= 0)
    {
      return v33 > 0;
    }

    return 1;
  }

LABEL_62:
  if (qword_100935B28 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100006654(v45, qword_10093AB40);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = a2;
    v51 = v49;
    v60[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_10000668C(a1, v50, v60);
    _os_log_impl(&_mh_execute_header, v46, v47, "REMCDReminder.ExtraneousAlarmsMarker: Reminder has <= 1 dueDateNonVerifiableAlarms so no need to scan for extraneous items {reminderID: %s}", v48, 0xCu);
    sub_10000607C(v51);
  }

  if (v59 > 0)
  {
    return 1;
  }

  v33 = 0;
  return v33 > 0;
}

void sub_1001A9494(uint64_t a1, id *a2)
{
  v3 = *a2;
  if (([*a2 markedForDeletion] & 1) == 0 && (objc_msgSend(v3, "isDeleted") & 1) == 0 && (objc_msgSend(v3, "isExtraneous") & 1) == 0 && (objc_msgSend(v3, "isSnooze") & 1) == 0)
  {
    v4 = [v3 trigger];
    if (v4)
    {
      v5 = v4;
      if ([v4 isTemporal])
      {
        [v3 dueDateResolutionTokenAsNonce];
        if (rem_isNonceUnset())
        {
          type metadata accessor for DueDateNonVerifiableAlarm();
          v6 = swift_allocObject();
          *(v6 + 32) = 1;
          *(v6 + 16) = v3;
          *(v6 + 24) = 0;
          v7 = qword_100935B28;
          v8 = v3;
          if (v7 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          sub_100006654(v9, qword_10093AB40);
          v10 = v8;

          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v11, v12))
          {
            v42 = v12;
            v13 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v44 = v40;
            *v13 = 136315394;
            v14 = [v10 remObjectID];
            if (v14)
            {
              v15 = v14;
              v16 = [v14 description];

              v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v19 = v18;
            }

            else
            {
              v17 = 7104878;
              v19 = 0xE300000000000000;
            }

            v34 = sub_10000668C(v17, v19, &v44);

            *(v13 + 4) = v34;
            *(v13 + 12) = 2048;
            sub_1001AA8AC();
            *(v13 + 14) = v35;
            _os_log_impl(&_mh_execute_header, v11, v42, "REMCDReminder.ExtraneousAlarmsMarker: Populating legacy alarm {remObjectID: %s, fallbackNonce: %f}", v13, 0x16u);
            sub_10000607C(v40);
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v38 = *((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }
        }

        else
        {
          type metadata accessor for DueDateVerifiableAlarm();
          v20 = swift_allocObject();
          *(v20 + 16) = v3;
          v21 = qword_100935B28;
          v22 = v3;
          if (v21 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_100006654(v23, qword_10093AB40);
          v24 = v22;

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v43 = v26;
            v27 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v44 = v41;
            *v27 = 136315394;
            v28 = [v24 remObjectID];
            if (v28)
            {
              v29 = v28;
              v30 = [v28 description];

              v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v32;
            }

            else
            {
              v31 = 7104878;
              v33 = 0xE300000000000000;
            }

            v36 = sub_10000668C(v31, v33, &v44);

            *(v27 + 4) = v36;
            *(v27 + 12) = 2048;
            [*(v20 + 16) dueDateResolutionTokenAsNonce];
            *(v27 + 14) = v37;
            _os_log_impl(&_mh_execute_header, v25, v43, "REMCDReminder.ExtraneousAlarmsMarker: Populating dueDate verifiable alarm {remObjectID: %s, nonce: %f}", v27, 0x16u);
            sub_10000607C(v41);
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }
}

void *sub_1001A99E0(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_51:
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      return sub_1001AAB90(_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C66C);
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    return sub_1001AAB90(_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C66C);
  }

  v18 = sub_1004363BC(v1);
  sub_1001AAC48(&v18, sub_10043653C, type metadata accessor for DueDateVerifiableAlarm, sub_1001AC67C, sub_1001AB51C);
  v2 = v18;
  v3 = v18 < 0 || (v18 & 0x4000000000000000) != 0;
  if (!v3)
  {
    v4 = *(v18 + 16);
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_54;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
LABEL_54:

    return sub_1001AAB90(_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C66C);
  }

LABEL_8:
  v5 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v6 = *(v2 + 32);
  }

  [*(v6 + 16) dueDateResolutionTokenAsNonce];

  v7 = 0;
  while (v4 != v7)
  {
    if (v5)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v7, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v7 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      v8 = *(v2 + 8 * v7 + 32);

      if (__OFADD__(v7, 1))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    [*(v8 + 16) dueDateResolutionTokenAsNonce];
    isEqualNonces = rem_isEqualNonces();

    ++v7;
    if ((isEqualNonces & 1) == 0)
    {
      v4 = v7 - 1;
      break;
    }
  }

  if (v3)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *(v2 + 16);
  }

  if (v10 >= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = v10;
  }

  if (v10 < 0)
  {
    v11 = v4;
  }

  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10 < v12)
  {
    goto LABEL_59;
  }

  if (v3)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < v12)
    {
      goto LABEL_60;
    }

    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *(v2 + 16);
    if (v13 < v12)
    {
      goto LABEL_60;
    }
  }

  if (v13 >= v10)
  {
    if (v10 < 0)
    {
      goto LABEL_62;
    }

    if (!v5 || v12 == v10)
    {
    }

    else
    {
      if (v12 >= v10)
      {
        goto LABEL_63;
      }

      type metadata accessor for DueDateVerifiableAlarm();

      v14 = v12;
      do
      {
        v15 = v14 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v14);
        v14 = v15;
      }

      while (v10 != v15);
    }

    if (v3)
    {
      v16 = _CocoaArrayWrapper.subscript.getter();

      return v16;
    }

    return v2;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_1001A9D6C(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  isEqualNonces = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v39 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_63:
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      return sub_1001AAB90(_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C4DC);
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    return sub_1001AAB90(_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C4DC);
  }

  v42 = isEqualNonces;

  v46 = sub_100436390(v14);
  sub_1001AAC48(&v46, sub_10043653C, type metadata accessor for DueDateNonVerifiableAlarm, sub_1001AB644, sub_1001AAF50);
  v15 = v46;
  v16 = v46 < 0 || (v46 & 0x4000000000000000) != 0;
  if (!v16)
  {
    v17 = *(v46 + 16);
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_66;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
LABEL_66:

    return sub_1001AAB90(_swiftEmptyArrayStorage, sub_100018D7C, sub_10027C4DC);
  }

LABEL_8:
  v18 = v15 & 0xC000000000000001;
  v40 = v16;
  if ((v15 & 0xC000000000000001) != 0)
  {
    isEqualNonces = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v15 + 16))
    {
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

      __break(1u);
      return result;
    }

    isEqualNonces = *(v15 + 32);
  }

  sub_1001AA8AC();

  v19 = 0;
  v39[1] = v15 + 32;
  v44 = (v10 + 56);
  v45 = (v10 + 48);
  v41 = (v10 + 32);
  v43 = (v10 + 8);
  while (v17 != v19)
  {
    if (v18)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v19, 1))
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v19 >= *(v15 + 16))
      {
        goto LABEL_62;
      }

      v10 = *(v15 + 8 * v19 + 32);

      if (__OFADD__(v19, 1))
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    if (*(v10 + 32))
    {
      v21 = [*(v10 + 16) ckServerRecord];
      if (v21)
      {
        v22 = v17;
        v23 = v18;
        v24 = v21;
        v25 = [v21 creationDate];

        if (v25)
        {
          v26 = v42;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v27 = 0;
        }

        else
        {
          v27 = 1;
          v26 = v42;
        }

        (*v44)(v26, v27, 1, v9);
        sub_10012F7FC(v26, v8);
        v18 = v23;
        v17 = v22;
        if ((*v45)(v8, 1, v9) == 1)
        {
          goto LABEL_28;
        }

        (*v41)(v13, v8, v9);
      }

      else
      {
        (*v44)(v8, 1, 1, v9);
LABEL_28:
        static Date.distantPast.getter();
        if ((*v45)(v8, 1, v9) != 1)
        {
          sub_1001AAD5C(v8);
        }
      }

      Date.timeIntervalSinceReferenceDate.getter();
      v29 = v28;
      (*v43)(v13, v9);
      *(v10 + 24) = v29;
      *(v10 + 32) = 0;
      goto LABEL_13;
    }

    v20 = *(v10 + 24);
LABEL_13:
    isEqualNonces = rem_isEqualNonces();

    ++v19;
    if ((isEqualNonces & 1) == 0)
    {
      v17 = v19 - 1;
      break;
    }
  }

  v30 = v40;
  if (v40)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *(v15 + 16);
  }

  if (v31 >= v17)
  {
    v32 = v17;
  }

  else
  {
    v32 = v31;
  }

  if (v31 < 0)
  {
    v32 = v17;
  }

  if (v17)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v31 < v33)
  {
    goto LABEL_71;
  }

  if (v30)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < v33)
    {
      goto LABEL_72;
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *(v15 + 16);
    if (v34 < v33)
    {
      goto LABEL_72;
    }
  }

  if (v34 < v31)
  {
    goto LABEL_73;
  }

  if (v31 < 0)
  {
    goto LABEL_74;
  }

  if (!v18 || v33 == v31)
  {
  }

  else
  {
    if (v33 >= v31)
    {
      goto LABEL_75;
    }

    type metadata accessor for DueDateNonVerifiableAlarm();

    v35 = v33;
    do
    {
      v36 = v35 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v35);
      v35 = v36;
    }

    while (v31 != v36);
  }

  if (v30)
  {
    v37 = _CocoaArrayWrapper.subscript.getter();

    return v37;
  }

  return v15;
}

BOOL sub_1001AA380()
{
  v1 = [v0 ckDirtyFlags];
  if (!v1)
  {
    v3 = [v0 reminder];
    [v3 removeAlarmStorageObject:v0];
    [v0 setIsExtraneous:1];
    [v0 __lowLevelMarkForDeletion];
    v14 = [v0 trigger];
    [v14 setIsExtraneous:1];

    v15 = [v0 trigger];
    if (v15)
    {
      v16 = v15;
      [v15 __lowLevelMarkForDeletion];
    }

    v17 = [v0 storeControllerManagedObjectContext];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 transactionAuthor];
      if (v19)
      {
        v20 = v19;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v21._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String.hasPrefix(_:)(v21);

        if (v22)
        {
          [v18 setPendingPostSaveActions:{objc_msgSend(v18, "pendingPostSaveActions") | 1}];
          goto LABEL_19;
        }
      }
    }

    if (v3)
    {
      [v3 forcePushToCloud];
    }

    [v0 setShouldSyncUpDeleteIfNeeded];
    v23 = [v0 trigger];
    if (!v23)
    {
      goto LABEL_20;
    }

    v18 = v23;
    [v23 setShouldSyncUpDeleteIfNeeded];
LABEL_19:

LABEL_20:
    if (qword_100935B28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_10093AB40);
    v25 = v0;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136446210;
      v30 = [v25 remObjectID];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 description];

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;
      }

      else
      {
        v33 = 7104878;
        v35 = 0xE300000000000000;
      }

      v38 = sub_10000668C(v33, v35, &v40);

      *(v28 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "REMCDAlarm.markAsExtraneousAndDelete(): Outdated alarm is marked extraneous and deleted {remObjectID: %{public}s}", v28, 0xCu);
      sub_10000607C(v29);
    }

    goto LABEL_30;
  }

  if (qword_100935B28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093AB40);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v5))
  {

LABEL_30:
    return v1 == 0;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v40 = v7;
  *v6 = 136446466;
  v8 = [v3 remObjectID];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 description];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 7104878;
    v13 = 0xE300000000000000;
  }

  v36 = sub_10000668C(v11, v13, &v40);

  *(v6 + 4) = v36;
  *(v6 + 12) = 514;
  v37 = [v3 ckDirtyFlags];

  *(v6 + 14) = v37;
  _os_log_impl(&_mh_execute_header, v4, v5, "REMCDAlarm.markAsExtraneousAndDelete(): Alarm is outdated but dirty flags is not .none, skipping {remObjectID: %{public}s, dirtyFlags: %{public}hd}", v6, 0x10u);
  sub_10000607C(v7);

  return v1 == 0;
}

void sub_1001AA8AC()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  *&v12 = __chkstk_darwin(v9).n128_u64[0];
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 32) & 1) == 0)
  {
    v18 = *(v1 + 24);
    return;
  }

  v15 = [*(v1 + 16) ckServerRecord];
  if (!v15)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_9:
    static Date.distantPast.getter();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1001AAD5C(v8);
    }

    goto LABEL_12;
  }

  v16 = v15;
  v17 = [v15 creationDate];

  if (v17)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v5, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v5, 1, 1, v9);
  }

  sub_10012F7FC(v5, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_9;
  }

  (*(v10 + 32))(v14, v8, v9);
LABEL_12:
  Date.timeIntervalSinceReferenceDate.getter();
  v20 = v19;
  (*(v10 + 8))(v14, v9);
  *(v1 + 24) = v20;
  *(v1 + 32) = 0;
}

uint64_t sub_1001AAB58()
{

  return swift_deallocClassInstance();
}

void *sub_1001AAB90(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      v9 = v8;
      v10 = a2(v8, 0);
      a3(v10 + 32, v9, a1);
      v12 = v11;

      result = v10;
      if (v12 == v9)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    result = _swiftEmptyArrayStorage;
    goto LABEL_3;
  }

  result = (a1 & 0xFFFFFFFFFFFFFF8);
LABEL_3:
  v4 = (2 * result[2]) | 1;
  return result;
}

uint64_t sub_1001AAC48(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_1001AAE2C(v14, a3, a4, a5);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1001AAD5C(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001AADC4()
{
  result = qword_100940C60;
  if (!qword_100940C60)
  {
    sub_1000060C8(255, &unk_100939E90, NSOrderedSet_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100940C60);
  }

  return result;
}

Swift::Int sub_1001AAE2C(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1001AAF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v62 = &v55 - v16;
  __chkstk_darwin(v17);
  v64 = &v55 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v69 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v55 - v24;
  v56 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v67 = (v23 + 56);
    v68 = (v23 + 48);
    v60 = (v23 + 32);
    v61 = v11;
    v65 = v14;
    v66 = (v23 + 8);
    v27 = (v26 + 8 * a3 - 8);
    v28 = a1 - a3;
    v63 = v26;
LABEL_6:
    v58 = v27;
    v59 = a3;
    v29 = *(v26 + 8 * a3);
    v57 = v28;
    v30 = v28;
    while (1)
    {
      v31 = *v27;
      if ((*(v29 + 32) & 1) == 0)
      {
        v38 = *(v29 + 24);

        if ((*(v31 + 32) & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      v32 = *(v29 + 16);

      v33 = [v32 ckServerRecord];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 creationDate];

        if (v35)
        {
          v36 = v62;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = 0;
        }

        else
        {
          v37 = 1;
          v36 = v62;
        }

        (*v67)(v36, v37, 1, v19);
        v39 = v64;
        sub_10012F7FC(v36, v64);
        v40 = (*v68)(v39, 1, v19);
        v14 = v65;
        if (v40 != 1)
        {
          v41 = v25;
          (*v60)(v25, v39, v19);
          goto LABEL_20;
        }
      }

      else
      {
        v39 = v64;
        (*v67)(v64, 1, 1, v19);
      }

      v41 = v25;
      static Date.distantPast.getter();
      if ((*v68)(v39, 1, v19) != 1)
      {
        sub_1001AAD5C(v39);
      }

LABEL_20:
      Date.timeIntervalSinceReferenceDate.getter();
      v38 = v42;
      (*v66)(v41, v19);
      *(v29 + 24) = v38;
      *(v29 + 32) = 0;
      v26 = v63;
      if ((*(v31 + 32) & 1) == 0)
      {
LABEL_12:
        if (*(v31 + 24) >= v38)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }

LABEL_21:
      v43 = [*(v31 + 16) ckServerRecord];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 creationDate];

        if (v45)
        {
          v46 = v61;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v47 = 0;
        }

        else
        {
          v47 = 1;
          v46 = v61;
        }

        v48 = v69;
        (*v67)(v46, v47, 1, v19);
        v49 = v46;
        v14 = v65;
        sub_10012F7FC(v49, v65);
        if ((*v68)(v14, 1, v19) != 1)
        {
          (*v60)(v48, v14, v19);
          goto LABEL_30;
        }
      }

      else
      {
        (*v67)(v14, 1, 1, v19);
      }

      static Date.distantPast.getter();
      if ((*v68)(v14, 1, v19) != 1)
      {
        sub_1001AAD5C(v14);
      }

LABEL_30:
      Date.timeIntervalSinceReferenceDate.getter();
      v51 = v50;
      (*v66)(v69, v19);
      *(v31 + 24) = v51;
      *(v31 + 32) = 0;
      if (v51 >= v38)
      {
LABEL_4:

LABEL_5:
        a3 = v59 + 1;
        v27 = v58 + 1;
        v28 = v57 - 1;
        if (v59 + 1 == v56)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_31:
      isEqualNonces = rem_isEqualNonces();

      if (isEqualNonces)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        __break(1u);
        return;
      }

      v53 = *v27;
      v29 = v27[1];
      *v27 = v29;
      v27[1] = v53;
      --v27;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t sub_1001AB51C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v19 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = *(v8 + 16);

      [v11 dueDateResolutionTokenAsNonce];
      v13 = v12;
      [*(v10 + 16) dueDateResolutionTokenAsNonce];
      if (v14 >= v13)
      {

LABEL_5:
        ++v4;
        v6 = v19 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      isEqualNonces = rem_isEqualNonces();

      if (isEqualNonces)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v16;
      --v6;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1001AB644(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v170 = a1;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v166 - v13;
  __chkstk_darwin(v15);
  v182 = &v166 - v16;
  __chkstk_darwin(v17);
  v19 = &v166 - v18;
  __chkstk_darwin(v20);
  v172 = &v166 - v21;
  __chkstk_darwin(v22);
  v24 = &v166 - v23;
  __chkstk_darwin(v25);
  v171 = &v166 - v26;
  __chkstk_darwin(v27);
  v29 = &v166 - v28;
  v30 = type metadata accessor for Date();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v192 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v183 = a3;
  v40 = a3[1];
  if (v40 < 1)
  {
    v42 = _swiftEmptyArrayStorage;
LABEL_146:
    v44 = *v170;
    if (!*v170)
    {
      goto LABEL_184;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_148:
      v193 = v42;
      v162 = *(v42 + 16);
      if (v162 >= 2)
      {
        while (*v183)
        {
          v163 = *(v42 + 16 * v162);
          v164 = *(v42 + 16 * (v162 - 1) + 40);
          sub_1001ACD84((*v183 + 8 * v163), (*v183 + 8 * *(v42 + 16 * (v162 - 1) + 32)), (*v183 + 8 * v164), v44);
          if (v5)
          {
            goto LABEL_156;
          }

          if (v164 < v163)
          {
            goto LABEL_171;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1004361F4(v42);
          }

          if (v162 - 2 >= *(v42 + 16))
          {
            goto LABEL_172;
          }

          v165 = (v42 + 16 * v162);
          *v165 = v163;
          v165[1] = v164;
          v193 = v42;
          sub_100436168(v162 - 1);
          v42 = v193;
          v162 = *(v193 + 16);
          if (v162 <= 1)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_182;
      }

LABEL_156:

      return;
    }

LABEL_178:
    v42 = sub_1004361F4(v42);
    goto LABEL_148;
  }

  v176 = v24;
  v188 = v19;
  v181 = v11;
  v168 = a4;
  v190 = (v36 + 56);
  v191 = (v36 + 48);
  v184 = (v36 + 32);
  v174 = v39;
  v41 = (v36 + 8);
  v42 = _swiftEmptyArrayStorage;
  v189 = v14;
  v175 = v29;
  v43 = 0;
  v186 = v38;
  v173 = &v166 - v37;
  v187 = v41;
  while (1)
  {
    v44 = v43;
    v45 = v43 + 1;
    if (v43 + 1 < v40)
    {
      v179 = v40;
      v46 = *v183;
      v47 = *(*v183 + 8 * v45);
      v169 = v43;
      v48 = *(v46 + 8 * v43);

      sub_1001AA8AC();
      v50 = v49;
      sub_1001AA8AC();
      if (v51 >= v50)
      {

        LODWORD(v180) = 0;
      }

      else
      {
        isEqualNonces = rem_isEqualNonces();

        LODWORD(v180) = isEqualNonces ^ 1;
      }

      v44 = v169;
      v45 = v169 + 2;
      if (v169 + 2 < v179)
      {
        v53 = v46 + 8 * v169 + 16;
        while (1)
        {
          v185 = v45;
          v55 = *(v53 - 8);
          v54 = *v53;
          if ((*(*v53 + 32) & 1) == 0)
          {
            v63 = *(v54 + 24);
            v64 = *v53;

            if ((*(v55 + 32) & 1) == 0)
            {
              goto LABEL_18;
            }

            goto LABEL_27;
          }

          v56 = *(v54 + 16);
          v57 = *v53;

          v58 = [v56 ckServerRecord];
          if (v58)
          {
            v59 = v58;
            v60 = [v58 creationDate];

            if (v60)
            {
              v61 = v171;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v62 = 0;
            }

            else
            {
              v62 = 1;
              v61 = v171;
            }

            (*v190)(v61, v62, 1, v30);
            v65 = v175;
            sub_10012F7FC(v61, v175);
            v66 = (*v191)(v65, 1, v30);
            v14 = v189;
            if (v66 != 1)
            {
              v67 = v173;
              (*v184)(v173, v65, v30);
              goto LABEL_26;
            }
          }

          else
          {
            v65 = v175;
            (*v190)(v175, 1, 1, v30);
          }

          v67 = v173;
          static Date.distantPast.getter();
          if ((*v191)(v65, 1, v30) != 1)
          {
            sub_1001AAD5C(v175);
          }

LABEL_26:
          Date.timeIntervalSinceReferenceDate.getter();
          v63 = v68;
          v41 = v187;
          (*v187)(v67, v30);
          *(v54 + 24) = v63;
          *(v54 + 32) = 0;
          if ((*(v55 + 32) & 1) == 0)
          {
LABEL_18:
            if (*(v55 + 24) < v63)
            {
              goto LABEL_37;
            }

            goto LABEL_11;
          }

LABEL_27:
          v69 = [*(v55 + 16) ckServerRecord];
          v178 = v5;
          if (v69)
          {
            v70 = v69;
            v71 = [v69 creationDate];

            if (v71)
            {
              v72 = v172;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v73 = 0;
            }

            else
            {
              v73 = 1;
              v72 = v172;
            }

            (*v190)(v72, v73, 1, v30);
            v74 = v176;
            sub_10012F7FC(v72, v176);
            v75 = (*v191)(v74, 1, v30);
            v14 = v189;
            if (v75 != 1)
            {
              v76 = v174;
              (*v184)(v174, v74, v30);
              goto LABEL_36;
            }
          }

          else
          {
            v74 = v176;
            (*v190)(v176, 1, 1, v30);
          }

          v76 = v174;
          static Date.distantPast.getter();
          if ((*v191)(v74, 1, v30) != 1)
          {
            sub_1001AAD5C(v176);
          }

LABEL_36:
          Date.timeIntervalSinceReferenceDate.getter();
          v78 = v77;
          (*v41)(v76, v30);
          *(v55 + 24) = v78;
          *(v55 + 32) = 0;
          v5 = v178;
          if (v78 < v63)
          {
LABEL_37:
            v79 = rem_isEqualNonces();

            if (v180 == v79)
            {
              v45 = v185;
LABEL_40:
              v44 = v169;
              break;
            }

            goto LABEL_12;
          }

LABEL_11:

          if (v180)
          {
            v45 = v185;
            v44 = v169;
            if (v185 < v169)
            {
              goto LABEL_175;
            }

            goto LABEL_43;
          }

LABEL_12:
          v45 = v185 + 1;
          v53 += 8;
          if (v179 == v185 + 1)
          {
            v45 = v179;
            goto LABEL_40;
          }
        }
      }

      if (v180)
      {
        if (v45 < v44)
        {
          goto LABEL_175;
        }

LABEL_43:
        if (v44 < v45)
        {
          v80 = 8 * v45 - 8;
          v81 = 8 * v44;
          v82 = v45;
          v83 = v44;
          do
          {
            if (v83 != --v82)
            {
              v84 = *v183;
              if (!*v183)
              {
                goto LABEL_181;
              }

              v85 = *(v84 + v81);
              *(v84 + v81) = *(v84 + v80);
              *(v84 + v80) = v85;
            }

            ++v83;
            v80 -= 8;
            v81 += 8;
          }

          while (v83 < v82);
        }
      }
    }

    v86 = v183[1];
    if (v45 < v86)
    {
      if (__OFSUB__(v45, v44))
      {
        goto LABEL_174;
      }

      if (v45 - v44 < v168)
      {
        break;
      }
    }

LABEL_92:
    if (v45 < v44)
    {
      goto LABEL_173;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1003658B8(0, *(v42 + 16) + 1, 1, v42);
    }

    v116 = *(v42 + 16);
    v115 = *(v42 + 24);
    v117 = v116 + 1;
    if (v116 >= v115 >> 1)
    {
      v42 = sub_1003658B8((v115 > 1), v116 + 1, 1, v42);
    }

    *(v42 + 16) = v117;
    v118 = v42 + 16 * v116;
    *(v118 + 32) = v44;
    *(v118 + 40) = v45;
    v44 = *v170;
    if (!*v170)
    {
      goto LABEL_183;
    }

    v185 = v45;
    if (v116)
    {
      while (1)
      {
        v119 = v117 - 1;
        if (v117 >= 4)
        {
          break;
        }

        if (v117 == 3)
        {
          v120 = *(v42 + 32);
          v121 = *(v42 + 40);
          v130 = __OFSUB__(v121, v120);
          v122 = v121 - v120;
          v123 = v130;
LABEL_112:
          if (v123)
          {
            goto LABEL_162;
          }

          v136 = (v42 + 16 * v117);
          v138 = *v136;
          v137 = v136[1];
          v139 = __OFSUB__(v137, v138);
          v140 = v137 - v138;
          v141 = v139;
          if (v139)
          {
            goto LABEL_165;
          }

          v142 = (v42 + 32 + 16 * v119);
          v144 = *v142;
          v143 = v142[1];
          v130 = __OFSUB__(v143, v144);
          v145 = v143 - v144;
          if (v130)
          {
            goto LABEL_168;
          }

          if (__OFADD__(v140, v145))
          {
            goto LABEL_169;
          }

          if (v140 + v145 >= v122)
          {
            if (v122 < v145)
            {
              v119 = v117 - 2;
            }

            goto LABEL_133;
          }

          goto LABEL_126;
        }

        v146 = (v42 + 16 * v117);
        v148 = *v146;
        v147 = v146[1];
        v130 = __OFSUB__(v147, v148);
        v140 = v147 - v148;
        v141 = v130;
LABEL_126:
        if (v141)
        {
          goto LABEL_164;
        }

        v149 = v42 + 16 * v119;
        v151 = *(v149 + 32);
        v150 = *(v149 + 40);
        v130 = __OFSUB__(v150, v151);
        v152 = v150 - v151;
        if (v130)
        {
          goto LABEL_167;
        }

        if (v152 < v140)
        {
          goto LABEL_3;
        }

LABEL_133:
        v157 = v119 - 1;
        if (v119 - 1 >= v117)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        if (!*v183)
        {
          goto LABEL_180;
        }

        v158 = v42;
        v159 = *(v42 + 32 + 16 * v157);
        v160 = *(v42 + 32 + 16 * v119);
        v42 = *(v42 + 32 + 16 * v119 + 8);
        sub_1001ACD84((*v183 + 8 * v159), (*v183 + 8 * v160), (*v183 + 8 * v42), v44);
        if (v5)
        {
          goto LABEL_156;
        }

        if (v42 < v159)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v158 = sub_1004361F4(v158);
        }

        if (v157 >= *(v158 + 2))
        {
          goto LABEL_159;
        }

        v161 = &v158[16 * v157];
        *(v161 + 4) = v159;
        *(v161 + 5) = v42;
        v193 = v158;
        sub_100436168(v119);
        v42 = v193;
        v117 = *(v193 + 16);
        v14 = v189;
        if (v117 <= 1)
        {
          goto LABEL_3;
        }
      }

      v124 = v42 + 32 + 16 * v117;
      v125 = *(v124 - 64);
      v126 = *(v124 - 56);
      v130 = __OFSUB__(v126, v125);
      v127 = v126 - v125;
      if (v130)
      {
        goto LABEL_160;
      }

      v129 = *(v124 - 48);
      v128 = *(v124 - 40);
      v130 = __OFSUB__(v128, v129);
      v122 = v128 - v129;
      v123 = v130;
      if (v130)
      {
        goto LABEL_161;
      }

      v131 = (v42 + 16 * v117);
      v133 = *v131;
      v132 = v131[1];
      v130 = __OFSUB__(v132, v133);
      v134 = v132 - v133;
      if (v130)
      {
        goto LABEL_163;
      }

      v130 = __OFADD__(v122, v134);
      v135 = v122 + v134;
      if (v130)
      {
        goto LABEL_166;
      }

      if (v135 >= v127)
      {
        v153 = (v42 + 32 + 16 * v119);
        v155 = *v153;
        v154 = v153[1];
        v130 = __OFSUB__(v154, v155);
        v156 = v154 - v155;
        if (v130)
        {
          goto LABEL_170;
        }

        if (v122 < v156)
        {
          v119 = v117 - 2;
        }

        goto LABEL_133;
      }

      goto LABEL_112;
    }

LABEL_3:
    v40 = v183[1];
    v43 = v185;
    if (v185 >= v40)
    {
      goto LABEL_146;
    }
  }

  if (__OFADD__(v44, v168))
  {
    goto LABEL_176;
  }

  if (v44 + v168 < v86)
  {
    v86 = (v44 + v168);
  }

  if (v86 < v44)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v45 == v86)
  {
    goto LABEL_92;
  }

  v177 = v86;
  v167 = v42;
  v178 = v5;
  v87 = *v183;
  v88 = (*v183 + 8 * v45 - 8);
  v169 = v44;
  v89 = (v44 - v45);
LABEL_60:
  v185 = v45;
  v90 = *(v87 + 8 * v45);
  v179 = v89;
  v180 = v88;
  while (1)
  {
    v91 = *v88;
    if ((*(v90 + 32) & 1) == 0)
    {
      v98 = *(v90 + 24);

      if ((*(v91 + 32) & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_75;
    }

    v92 = *(v90 + 16);

    v93 = [v92 ckServerRecord];
    if (v93)
    {
      v94 = v93;
      v95 = [v93 creationDate];

      if (v95)
      {
        v96 = v182;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v97 = 0;
      }

      else
      {
        v97 = 1;
        v96 = v182;
      }

      (*v190)(v96, v97, 1, v30);
      v99 = v188;
      sub_10012F7FC(v96, v188);
      v100 = (*v191)(v99, 1, v30);
      v14 = v189;
      if (v100 != 1)
      {
        v101 = v186;
        (*v184)(v186, v99, v30);
        goto LABEL_74;
      }
    }

    else
    {
      v99 = v188;
      (*v190)(v188, 1, 1, v30);
    }

    v101 = v186;
    static Date.distantPast.getter();
    if ((*v191)(v99, 1, v30) != 1)
    {
      sub_1001AAD5C(v188);
    }

LABEL_74:
    Date.timeIntervalSinceReferenceDate.getter();
    v98 = v102;
    v41 = v187;
    (*v187)(v101, v30);
    *(v90 + 24) = v98;
    *(v90 + 32) = 0;
    if ((*(v91 + 32) & 1) == 0)
    {
LABEL_66:
      if (*(v91 + 24) >= v98)
      {
        goto LABEL_58;
      }

      goto LABEL_85;
    }

LABEL_75:
    v103 = [*(v91 + 16) ckServerRecord];
    if (v103)
    {
      v104 = v103;
      v105 = [v103 creationDate];

      if (v105)
      {
        v106 = v181;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v107 = 0;
      }

      else
      {
        v107 = 1;
        v106 = v181;
      }

      v108 = v192;
      (*v190)(v106, v107, 1, v30);
      v109 = v106;
      v14 = v189;
      sub_10012F7FC(v109, v189);
      if ((*v191)(v14, 1, v30) != 1)
      {
        (*v184)(v108, v14, v30);
        goto LABEL_84;
      }
    }

    else
    {
      (*v190)(v14, 1, 1, v30);
    }

    static Date.distantPast.getter();
    if ((*v191)(v14, 1, v30) != 1)
    {
      sub_1001AAD5C(v14);
    }

LABEL_84:
    Date.timeIntervalSinceReferenceDate.getter();
    v111 = v110;
    (*v41)(v192, v30);
    *(v91 + 24) = v111;
    *(v91 + 32) = 0;
    if (v111 >= v98)
    {
LABEL_58:

LABEL_59:
      v45 = v185 + 1;
      v88 = v180 + 1;
      v89 = (v179 - 1);
      if ((v185 + 1) == v177)
      {
        v45 = v177;
        v5 = v178;
        v42 = v167;
        v44 = v169;
        goto LABEL_92;
      }

      goto LABEL_60;
    }

LABEL_85:
    v112 = rem_isEqualNonces();

    if (v112)
    {
      goto LABEL_59;
    }

    if (!v87)
    {
      break;
    }

    v113 = *v88;
    v90 = v88[1];
    *v88 = v90;
    v88[1] = v113;
    --v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
}

uint64_t sub_1001AC67C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_97:
    v7 = *v105;
    if (!*v105)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_99:
      v96 = *(v9 + 2);
      if (v96 >= 2)
      {
        while (1)
        {
          v97 = *v6;
          if (!*v6)
          {
            goto LABEL_133;
          }

          v6 = (v96 - 1);
          v98 = *&v9[16 * v96];
          v99 = *&v9[16 * v96 + 24];
          sub_1001AD974((v97 + 8 * v98), (v97 + 8 * *&v9[16 * v96 + 16]), (v97 + 8 * v99), v7);
          if (v5)
          {
          }

          if (v99 < v98)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1004361F4(v9);
          }

          if (v96 - 2 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v100 = &v9[16 * v96];
          *v100 = v98;
          *(v100 + 1) = v99;
          result = sub_100436168(v96 - 1);
          v96 = *(v9 + 2);
          v6 = a3;
          if (v96 <= 1)
          {
          }
        }
      }
    }

LABEL_129:
    result = sub_1004361F4(v9);
    v9 = result;
    goto LABEL_99;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = *v6;
      v13 = *(*v6 + 8 * v11);
      v103 = v8;
      v14 = *(*v6 + 8 * v8);
      v15 = *(v13 + 16);

      [v15 dueDateResolutionTokenAsNonce];
      v17 = v16;
      [*(v14 + 16) dueDateResolutionTokenAsNonce];
      if (v18 >= v17)
      {

        v20 = 0;
      }

      else
      {
        isEqualNonces = rem_isEqualNonces();

        v20 = isEqualNonces ^ 1;
      }

      v10 = v103;
      v11 = v103 + 2;
      if (v103 + 2 < v7)
      {
        v21 = v12 + 8 * v103 + 16;
        while (1)
        {
          v22 = v11;
          v23 = *(v21 - 8);
          v24 = *(*v21 + 16);

          [v24 dueDateResolutionTokenAsNonce];
          v26 = v25;
          [*(v23 + 16) dueDateResolutionTokenAsNonce];
          if (v27 >= v26)
          {

            if (v20)
            {
              v11 = v22;
              v6 = a3;
              v10 = v103;
              if (v11 < v103)
              {
                goto LABEL_126;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v28 = rem_isEqualNonces();

            if (v20 == v28)
            {
              v11 = v22;
LABEL_16:
              v6 = a3;
              v10 = v103;
              break;
            }
          }

          v11 = v22 + 1;
          v21 += 8;
          if (v7 == v22 + 1)
          {
            v11 = v7;
            goto LABEL_16;
          }
        }
      }

      if (v20)
      {
        if (v11 < v10)
        {
          goto LABEL_126;
        }

LABEL_19:
        if (v10 < v11)
        {
          v29 = 8 * v11 - 8;
          v30 = 8 * v10;
          v31 = v11;
          v32 = v10;
          do
          {
            if (v32 != --v31)
            {
              v33 = *v6;
              if (!*v6)
              {
                goto LABEL_132;
              }

              v34 = *(v33 + v30);
              *(v33 + v30) = *(v33 + v29);
              *(v33 + v29) = v34;
            }

            ++v32;
            v29 -= 8;
            v30 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v35 = v6[1];
    if (v11 < v35)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_125;
      }

      if (v11 - v10 < a4)
      {
        break;
      }
    }

LABEL_44:
    if (v11 < v10)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003658B8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v51 = *(v9 + 2);
    v50 = *(v9 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_1003658B8((v50 > 1), v51 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v52;
    v53 = &v9[16 * v51];
    *(v53 + 4) = v10;
    *(v53 + 5) = v11;
    v109 = v11;
    v54 = *v105;
    if (!*v105)
    {
      goto LABEL_134;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = *(v9 + 4);
          v57 = *(v9 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_64:
          if (v59)
          {
            goto LABEL_113;
          }

          v72 = &v9[16 * v52];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_116;
          }

          v78 = &v9[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_120;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v82 = &v9[16 * v52];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_78:
        if (v77)
        {
          goto LABEL_115;
        }

        v85 = &v9[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_118;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_85:
        v93 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v6)
        {
          goto LABEL_131;
        }

        v94 = *&v9[16 * v93 + 32];
        v7 = *&v9[16 * v55 + 40];
        sub_1001AD974((*v6 + 8 * v94), (*v6 + 8 * *&v9[16 * v55 + 32]), (*v6 + 8 * v7), v54);
        if (v5)
        {
        }

        if (v7 < v94)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1004361F4(v9);
        }

        if (v93 >= *(v9 + 2))
        {
          goto LABEL_110;
        }

        v95 = &v9[16 * v93];
        *(v95 + 4) = v94;
        *(v95 + 5) = v7;
        result = sub_100436168(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v9[16 * v52 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_111;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_112;
      }

      v67 = &v9[16 * v52];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_114;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_117;
      }

      if (v71 >= v63)
      {
        v89 = &v9[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_121;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v109;
    if (v109 >= v7)
    {
      goto LABEL_97;
    }
  }

  v36 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_127;
  }

  if (v36 >= v35)
  {
    v36 = v6[1];
  }

  if (v36 < v10)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v11 == v36)
  {
    goto LABEL_44;
  }

  v101 = v5;
  v37 = *v6;
  v38 = *v6 + 8 * v11 - 8;
  v104 = v10;
  v39 = v10 - v11;
  v107 = v36;
LABEL_36:
  v108 = v11;
  v40 = *(v37 + 8 * v11);
  v41 = v39;
  v7 = v38;
  while (1)
  {
    v42 = *v7;
    v43 = *(v40 + 16);

    [v43 dueDateResolutionTokenAsNonce];
    v45 = v44;
    [*(v42 + 16) dueDateResolutionTokenAsNonce];
    if (v46 >= v45)
    {

LABEL_35:
      v11 = v108 + 1;
      v38 += 8;
      --v39;
      if (v108 + 1 == v107)
      {
        v11 = v107;
        v5 = v101;
        v6 = a3;
        v10 = v104;
        goto LABEL_44;
      }

      goto LABEL_36;
    }

    v47 = rem_isEqualNonces();

    if (v47)
    {
      goto LABEL_35;
    }

    if (!v37)
    {
      break;
    }

    v48 = *v7;
    v40 = *(v7 + 8);
    *v7 = v40;
    *(v7 + 8) = v48;
    v7 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1001ACD84(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v104 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = (&v100 - v12);
  __chkstk_darwin(v13);
  v103 = &v100 - v14;
  __chkstk_darwin(v15);
  v106 = &v100 - v16;
  __chkstk_darwin(v17);
  v102 = &v100 - v18;
  __chkstk_darwin(v19);
  v107 = (&v100 - v20);
  __chkstk_darwin(v21);
  v101 = &v100 - v22;
  __chkstk_darwin(v23);
  v111 = &v100 - v24;
  v25 = type metadata accessor for Date();
  v109 = *(v25 - 8);
  v26 = *(v109 + 8);
  __chkstk_darwin(v25);
  v113 = (&v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v105 = (&v100 - v29);
  __chkstk_darwin(v30);
  v112 = &v100 - v31;
  __chkstk_darwin(v32);
  v34 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v34 = a2 - a1;
  }

  v35 = v34 >> 3;
  v36 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v36 = a3 - a2;
  }

  v37 = v36 >> 3;
  if (v35 >= v36 >> 3)
  {
    if (a4 != a2 || &a2[8 * v37] <= a4)
    {
      memmove(a4, a2, 8 * v37);
    }

    v114 = &a4[8 * v37];
    if (a3 - a2 < 8 || a2 <= a1)
    {
      goto LABEL_89;
    }

    v112 = v109 + 48;
    v102 = v109 + 32;
    v107 = (v109 + 8);
    v108 = v109 + 56;
LABEL_52:
    v71 = a2 - 8;
    a3 -= 8;
    v72 = v114;
    v109 = a2 - 8;
    v111 = a2;
    while (1)
    {
      v74 = *(v72 - 1);
      v72 -= 8;
      v73 = v74;
      v75 = *v71;
      if ((*(v74 + 32) & 1) == 0)
      {
        v82 = *(v73 + 24);

        goto LABEL_66;
      }

      v76 = *(v73 + 16);

      v77 = [v76 ckServerRecord];
      if (!v77)
      {
        break;
      }

      v78 = v77;
      v79 = [v77 creationDate];

      if (v79)
      {
        v80 = v103;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v81 = 0;
      }

      else
      {
        v81 = 1;
        v80 = v103;
      }

      v84 = v105;
      (*v108)(v80, v81, 1, v25);
      v85 = v80;
      v83 = v106;
      sub_10012F7FC(v85, v106);
      if ((*v112)(v83, 1, v25) == 1)
      {
        goto LABEL_62;
      }

      (*v102)(v84, v83, v25);
LABEL_65:
      Date.timeIntervalSinceReferenceDate.getter();
      v82 = v86;
      (*v107)(v84, v25);
      *(v73 + 24) = v82;
      *(v73 + 32) = 0;
LABEL_66:
      v87 = v110;
      if ((*(v75 + 32) & 1) == 0)
      {
        if (*(v75 + 24) < v82)
        {
          goto LABEL_79;
        }

        goto LABEL_71;
      }

      v88 = [*(v75 + 16) ckServerRecord];
      if (v88)
      {
        v89 = v88;
        v90 = [v88 creationDate];

        if (v90)
        {
          v91 = v104;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v92 = 0;
        }

        else
        {
          v92 = 1;
          v91 = v104;
        }

        v93 = v113;
        (*v108)(v91, v92, 1, v25);
        v94 = v91;
        v87 = v110;
        sub_10012F7FC(v94, v110);
        if ((*v112)(v87, 1, v25) != 1)
        {
          (*v102)(v93, v87, v25);
          goto LABEL_78;
        }
      }

      else
      {
        (*v108)(v87, 1, 1, v25);
      }

      static Date.distantPast.getter();
      if ((*v112)(v87, 1, v25) != 1)
      {
        sub_1001AAD5C(v87);
      }

LABEL_78:
      Date.timeIntervalSinceReferenceDate.getter();
      v96 = v95;
      (*v107)(v113, v25);
      *(v75 + 24) = v96;
      *(v75 + 32) = 0;
      if (v96 < v82)
      {
LABEL_79:
        isEqualNonces = rem_isEqualNonces();

        if ((isEqualNonces & 1) == 0)
        {
          v98 = v109;
          if (a3 + 8 != v111)
          {
            *a3 = *v109;
          }

          if (v114 <= a4 || (a2 = v98, v98 <= a1))
          {
            a2 = v98;
            goto LABEL_89;
          }

          goto LABEL_52;
        }

        goto LABEL_80;
      }

LABEL_71:

LABEL_80:
      a2 = v111;
      if (a3 + 8 != v114)
      {
        *a3 = *v72;
      }

      a3 -= 8;
      v114 = v72;
      v71 = v109;
      if (v72 <= a4)
      {
        v114 = v72;
        goto LABEL_89;
      }
    }

    v83 = v106;
    (*v108)(v106, 1, 1, v25);
    v84 = v105;
LABEL_62:
    static Date.distantPast.getter();
    if ((*v112)(v83, 1, v25) != 1)
    {
      sub_1001AAD5C(v83);
    }

    goto LABEL_65;
  }

  v106 = &v100 - v33;
  if (a4 != a1 || &a1[8 * v35] <= a4)
  {
    memmove(a4, a1, 8 * v35);
  }

  v114 = &a4[8 * v35];
  v38 = v107;
  if (a2 - a1 >= 8 && a2 < a3)
  {
    v39 = a2;
    v40 = (v109 + 56);
    v113 = (v109 + 48);
    v105 = (v109 + 32);
    v109 += 8;
    v110 = v40;
    v41 = v111;
    while (1)
    {
      v42 = *v39;
      v43 = *a4;
      if ((*(*v39 + 32) & 1) == 0)
      {
        v53 = *(v42 + 24);
        v54 = *v39;

        goto LABEL_24;
      }

      v44 = *(v42 + 16);
      v45 = *v39;

      v46 = [v44 ckServerRecord];
      v108 = a1;
      if (!v46)
      {
        break;
      }

      v47 = v39;
      v48 = v46;
      v49 = [v46 creationDate];

      v50 = a4;
      if (v49)
      {
        v51 = v101;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = 0;
      }

      else
      {
        v52 = 1;
        v51 = v101;
      }

      (*v110)(v51, v52, 1, v25);
      v41 = v111;
      sub_10012F7FC(v51, v111);
      v56 = (*v113)(v41, 1, v25);
      v39 = v47;
      v55 = v107;
      if (v56 == 1)
      {
        goto LABEL_20;
      }

      v57 = v106;
      (*v105)(v106, v41, v25);
LABEL_23:
      Date.timeIntervalSinceReferenceDate.getter();
      v53 = v58;
      (*v109)(v57, v25);
      *(v42 + 24) = v53;
      *(v42 + 32) = 0;
      v38 = v55;
      a4 = v50;
      a1 = v108;
LABEL_24:
      if ((*(v43 + 32) & 1) == 0)
      {
        if (*(v43 + 24) >= v53)
        {
          goto LABEL_29;
        }

        goto LABEL_37;
      }

      v59 = [*(v43 + 16) ckServerRecord];
      if (v59)
      {
        v60 = v39;
        v61 = v59;
        v62 = [v59 creationDate];

        if (v62)
        {
          v63 = v102;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v64 = 0;
        }

        else
        {
          v64 = 1;
          v63 = v102;
        }

        (*v110)(v63, v64, 1, v25);
        v65 = v107;
        sub_10012F7FC(v63, v107);
        v39 = v60;
        v38 = v65;
        if ((*v113)(v65, 1, v25) != 1)
        {
          (*v105)(v112, v65, v25);
          goto LABEL_36;
        }
      }

      else
      {
        (*v110)(v38, 1, 1, v25);
      }

      static Date.distantPast.getter();
      if ((*v113)(v38, 1, v25) != 1)
      {
        sub_1001AAD5C(v38);
      }

LABEL_36:
      Date.timeIntervalSinceReferenceDate.getter();
      v67 = v66;
      (*v109)(v112, v25);
      *(v43 + 24) = v67;
      *(v43 + 32) = 0;
      if (v67 >= v53)
      {
LABEL_29:

LABEL_38:
        v69 = a4;
        v70 = a1 == a4;
        a4 += 8;
        if (v70)
        {
          goto LABEL_40;
        }

LABEL_39:
        *a1 = *v69;
        goto LABEL_40;
      }

LABEL_37:
      v68 = rem_isEqualNonces();

      if (v68)
      {
        goto LABEL_38;
      }

      v69 = v39;
      v70 = a1 == v39;
      v39 += 8;
      if (!v70)
      {
        goto LABEL_39;
      }

LABEL_40:
      a1 += 8;
      v41 = v111;
      if (a4 >= v114 || v39 >= a3)
      {
        goto LABEL_87;
      }
    }

    v50 = a4;
    v55 = v38;
    (*v110)(v41, 1, 1, v25);
LABEL_20:
    v57 = v106;
    static Date.distantPast.getter();
    if ((*v113)(v41, 1, v25) != 1)
    {
      sub_1001AAD5C(v41);
    }

    goto LABEL_23;
  }

LABEL_87:
  a2 = a1;
LABEL_89:
  if (a2 != a4 || a2 >= &a4[(v114 - a4 + (v114 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, a4, 8 * ((v114 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1001AD974(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (__dst != __src || &__src[8 * v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_42;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *(*v6 + 16);

      [v16 dueDateResolutionTokenAsNonce];
      v18 = v17;
      [*(v15 + 16) dueDateResolutionTokenAsNonce];
      if (v19 >= v18)
      {
        break;
      }

      isEqualNonces = rem_isEqualNonces();

      if (isEqualNonces)
      {
        goto LABEL_17;
      }

      v21 = v6;
      v22 = v7 == v6;
      v6 += 8;
      if (!v22)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_42;
      }
    }

LABEL_17:
    v21 = v4;
    v22 = v7 == v4;
    v4 += 8;
    if (v22)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v21;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[8 * v13] <= __dst)
  {
    memmove(__dst, a2, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_27:
    v33 = v6;
    v23 = v6 - 8;
    v5 -= 8;
    v24 = v14;
    while (1)
    {
      v25 = *(v24 - 1);
      v24 -= 8;
      v6 = v23;
      v26 = *v23;
      v27 = *(v25 + 16);

      [v27 dueDateResolutionTokenAsNonce];
      v29 = v28;
      [*(v26 + 16) dueDateResolutionTokenAsNonce];
      if (v30 >= v29)
      {
      }

      else
      {
        v31 = rem_isEqualNonces();

        if ((v31 & 1) == 0)
        {
          if (v5 + 8 != v33)
          {
            *v5 = *v6;
          }

          if (v14 <= v4 || v6 <= v7)
          {
            break;
          }

          goto LABEL_27;
        }
      }

      v23 = v6;
      if (v5 + 8 != v14)
      {
        *v5 = *v24;
      }

      v5 -= 8;
      v14 = v24;
      if (v24 <= v4)
      {
        v14 = v24;
        v6 = v33;
        break;
      }
    }
  }

LABEL_42:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

unint64_t sub_1001ADC98(unint64_t a1, unint64_t a2, uint64_t a3)
{
  j = a2;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = _swiftEmptyArrayStorage;
  v11[3] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = v6;
      sub_1001A9494(v11, &v10);

      if (v8 == i)
      {
        return v11[0];
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return j;
}

void *sub_1001ADDE4(uint64_t a1)
{
  result = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v1;
    v6 = kREMSupportedVersionUnset;
    v7 = (a1 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 2);
      v10 = [v5 addDueDateDeltaAlertWithDueDateDelta:v9];
      if (v6 < v8)
      {
        v11 = [v5 updateDueDateDeltaAlert:v10];
        v12 = [v11 _setMinimumSupportedAppVersion:v8];

        v10 = v12;
      }

      v13 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v7 += 3;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      --v4;
    }

    while (v4);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

Swift::Int sub_1001ADF48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(10 * v1 + 10);
  return Hasher._finalize()();
}

Swift::Int sub_1001ADFD0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(10 * v1 + 10);
  return Hasher._finalize()();
}

unsigned __int16 *sub_1001AE01C@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 10)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 20)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 30)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1001AE064()
{
  v1 = 1751607656;
  if (*v0 != 1)
  {
    v1 = 0x72656B636F6C62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7827308;
  }
}

Swift::Int sub_1001AE0EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x65000300020001uLL >> (16 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_1001AE18C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x65000300020001uLL >> (16 * v1));
  return Hasher._finalize()();
}

uint64_t sub_1001AE1E4@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001AEAE8(*a1);
  *a2 = result;
  return result;
}

void sub_1001AE234(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31 - v10;
  *a2 = [a1 objectID];
  v12 = [a1 operationTypeRawValue];
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 == 101)
      {
        v13 = 3;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v13 = 2;
  }

  else
  {
    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v13 = 1;
        goto LABEL_11;
      }

LABEL_8:
      v13 = 4;
      goto LABEL_11;
    }

    v13 = 0;
  }

LABEL_11:
  *(a2 + 8) = v13;
  v14 = [a1 priorityRawValue];
  v15 = v14 == 20;
  if (v14 == 30)
  {
    v15 = 2;
  }

  *(a2 + 9) = v15;
  v16 = [a1 creationDate];
  if (v16)
  {
    v17 = v16;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  }

  v20 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation();
  sub_100031B58(v11, a2 + v20[7], &unk_100938850, qword_100795AE0);
  *(a2 + v20[8]) = [a1 isCompleted];
  v21 = [a1 entityIdentifier];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 56))(v7, v23, 1, v24);
  sub_100031B58(v7, a2 + v20[9], &unk_100939D90, "8\n\r");
  v25 = [a1 configurationData];
  if (v25)
  {
    v26 = v25;
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {

    v27 = 0;
    v29 = 0xF000000000000000;
  }

  v30 = (a2 + v20[10]);
  *v30 = v27;
  v30[1] = v29;
}

unint64_t sub_1001AEA94()
{
  result = qword_10093AD50;
  if (!qword_10093AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AD50);
  }

  return result;
}

uint64_t sub_1001AEAE8(unsigned __int16 a1)
{
  if (a1 > 2u)
  {
    if (a1 != 101)
    {
      if (a1 == 3)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

uint64_t type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation()
{
  result = qword_10093ADB0;
  if (!qword_10093ADB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1001AEB88(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    *(a1 + 4) = *(a2 + 4);
    v8 = a3[7];
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v4;
    if (v11(a2 + v8, 1, v9))
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(&v7[v8], a2 + v8, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v7[v8], a2 + v8, v9);
      (*(v10 + 56))(&v7[v8], 0, 1, v9);
    }

    v14 = a3[9];
    v7[a3[8]] = *(a2 + a3[8]);
    v15 = type metadata accessor for UUID();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(a2 + v14, 1, v15))
    {
      v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
      memcpy(&v7[v14], a2 + v14, *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&v7[v14], a2 + v14, v15);
      (*(v16 + 56))(&v7[v14], 0, 1, v15);
    }

    v18 = a3[10];
    v19 = &v7[v18];
    v20 = (a2 + v18);
    v21 = v20[1];
    if (v21 >> 60 == 15)
    {
      *v19 = *v20;
    }

    else
    {
      v22 = *v20;
      sub_100029344(*v20, v20[1]);
      *v19 = v22;
      *(v19 + 1) = v21;
    }
  }

  return v7;
}

uint64_t sub_1001AEE1C(id *a1, int *a2)
{
  v4 = a2[7];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = a2[9];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(a1 + v7, 1, v8);
  if (!result)
  {
    result = (*(v9 + 8))(a1 + v7, v8);
  }

  v11 = (a1 + a2[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    v13 = *v11;

    return sub_10001BBA0(v13, v12);
  }

  return result;
}

uint64_t sub_1001AEF98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v7 = a3[7];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v6;
  if (v10(a2 + v7, 1, v8))
  {
    v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v7), (a2 + v7), *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v13 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a2 + v13, 1, v14))
  {
    v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
    memcpy((a1 + v13), (a2 + v13), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(a1 + v13, a2 + v13, v14);
    (*(v15 + 56))(a1 + v13, 0, 1, v14);
  }

  v17 = a3[10];
  v18 = a1 + v17;
  v19 = (a2 + v17);
  v20 = v19[1];
  if (v20 >> 60 == 15)
  {
    *v18 = *v19;
  }

  else
  {
    v21 = *v19;
    sub_100029344(*v19, v19[1]);
    *v18 = v21;
    *(v18 + 8) = v20;
  }

  return a1;
}

uint64_t sub_1001AF1E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v9 = a3[7];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (v13)
  {
    if (!v14)
    {
      (*(v11 + 16))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v14)
  {
    (*(v11 + 8))(a1 + v9, v10);
LABEL_6:
    v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v9), (a2 + v9), *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 24))(a1 + v9, a2 + v9, v10);
LABEL_7:
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v16 = a3[9];
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(a1 + v16, 1, v17);
  v21 = v19(a2 + v16, 1, v17);
  if (v20)
  {
    if (!v21)
    {
      (*(v18 + 16))(a1 + v16, a2 + v16, v17);
      (*(v18 + 56))(a1 + v16, 0, 1, v17);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v21)
  {
    (*(v18 + 8))(a1 + v16, v17);
LABEL_12:
    v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
    memcpy((a1 + v16), (a2 + v16), *(*(v22 - 8) + 64));
    goto LABEL_13;
  }

  (*(v18 + 24))(a1 + v16, a2 + v16, v17);
LABEL_13:
  v23 = a3[10];
  v24 = (a1 + v23);
  v25 = (a2 + v23);
  v26 = *(a2 + v23 + 8);
  if (*(a1 + v23 + 8) >> 60 != 15)
  {
    if (v26 >> 60 != 15)
    {
      v28 = *v25;
      sub_100029344(v28, v26);
      v29 = *v24;
      v30 = v24[1];
      *v24 = v28;
      v24[1] = v26;
      sub_10001BBA0(v29, v30);
      return a1;
    }

    sub_1001531B8(v24);
    goto LABEL_18;
  }

  if (v26 >> 60 == 15)
  {
LABEL_18:
    *v24 = *v25;
    return a1;
  }

  v27 = *v25;
  sub_100029344(v27, v26);
  *v24 = v27;
  v24[1] = v26;
  return a1;
}

uint64_t sub_1001AF540(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 32))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t sub_1001AF748(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v7 = a3[7];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(a1 + v7, a2 + v7, v8);
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(a1 + v7, v8);
LABEL_6:
    v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(a1 + v7, a2 + v7, v8);
LABEL_7:
  v14 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(a1 + v14, 1, v15);
  v19 = v17(a2 + v14, 1, v15);
  if (v18)
  {
    if (!v19)
    {
      (*(v16 + 32))(a1 + v14, a2 + v14, v15);
      (*(v16 + 56))(a1 + v14, 0, 1, v15);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    (*(v16 + 8))(a1 + v14, v15);
LABEL_12:
    v20 = sub_1000F5104(&unk_100939D90, "8\n\r");
    memcpy((a1 + v14), (a2 + v14), *(*(v20 - 8) + 64));
    goto LABEL_13;
  }

  (*(v16 + 40))(a1 + v14, a2 + v14, v15);
LABEL_13:
  v21 = a3[10];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = *(a1 + v21 + 8);
  if (v24 >> 60 != 15)
  {
    v25 = v23[1];
    if (v25 >> 60 != 15)
    {
      v26 = *v22;
      *v22 = *v23;
      v22[1] = v25;
      sub_10001BBA0(v26, v24);
      return a1;
    }

    sub_1001531B8(v22);
  }

  *v22 = *v23;
  return a1;
}

void sub_1001AFA8C()
{
  sub_1001AFBC0(319, &qword_100938D60, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1001AFBC0(319, &qword_10093ADC0, &type metadata accessor for UUID);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_1001AFBC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1001AFC28()
{
  result = qword_10093AE08;
  if (!qword_10093AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AE08);
  }

  return result;
}

void sub_1001AFC7C(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void (*a4)(uint64_t, char *, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v206 = a2;
  v210 = a3;
  v179 = a5;
  v181 = type metadata accessor for REMRemindersListDataView.FlaggedModel();
  v180 = *(v181 - 8);
  v7 = *(v180 + 64);
  __chkstk_darwin(v181);
  v176 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v178 = &v163 - v10;
  v194 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v177 = *(v194 - 8);
  v11 = *(v177 + 64);
  __chkstk_darwin(v194);
  v187 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v197 = &v163 - v14;
  v15 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v203 = *(v15 - 8);
  v204 = v15;
  v16 = *(v203 + 64);
  __chkstk_darwin(v15);
  v173 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  v18 = *(*(v184 - 8) + 64);
  __chkstk_darwin(v184);
  v185 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v200 = &v163 - v21;
  v201 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v193 = *(v201 - 8);
  v22 = *(v193 + 64);
  __chkstk_darwin(v201);
  v172 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v192 = &v163 - v25;
  __chkstk_darwin(v26);
  v199 = &v163 - v27;
  v28 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v171 = &v163 - v30;
  v31 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v189 = *(v31 - 8);
  v190 = v31;
  v32 = *(v189 + 64);
  __chkstk_darwin(v31);
  v188 = &v163 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v198 = &v163 - v35;
  v195 = type metadata accessor for REMRemindersListDataView.Diff();
  v186 = *(v195 - 8);
  v36 = *(v186 + 64);
  __chkstk_darwin(v195);
  v175 = &v163 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v207 = &v163 - v39;
  v202 = _s10PredicatesOMa(0);
  v40 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  v182 = &v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v196 = (&v163 - v43);
  v44 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v174 = &v163 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v183 = &v163 - v48;
  __chkstk_darwin(v49);
  v191 = &v163 - v50;
  __chkstk_darwin(v51);
  v53 = &v163 - v52;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v55 = *(Configuration - 8);
  v56 = *(v55 + 64);
  __chkstk_darwin(Configuration);
  v58 = &v163 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = &v163 - v60;
  __chkstk_darwin(v62);
  v64 = &v163 - v63;
  __chkstk_darwin(v65);
  v67 = &v163 - v66;
  v208 = a4;
  REMRemindersListDataView.FlaggedInvocation.Parameters.configuration.getter();
  v68 = v209;
  v69 = sub_1001B14D0(a1, v210);
  if (v68)
  {
    (*(v55 + 8))(v67, Configuration);
    return;
  }

  v164 = v61;
  v165 = v58;
  v169 = v69;
  v166 = v70;
  v168 = a1;
  v209 = 0;
  v170 = v53;
  v73 = *(v55 + 8);
  v72 = v55 + 8;
  v71 = v73;
  v73(v67, Configuration);
  REMRemindersListDataView.FlaggedInvocation.Parameters.configuration.getter();
  v74 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v75 = Configuration;
  v167 = v73;
  if (v74)
  {
    v76 = v196;
    swift_storeEnumTagMultiPayload();
    v77 = sub_100043AA8();
    sub_1001A4F3C(v76, _s10PredicatesOMa);
    v78 = v170;
    v79 = v168;
    v80 = v209;
    sub_10053464C(v168, v77);
    v209 = v80;
    v81 = v205;
    if (v80)
    {
      v167(v64, v75);
LABEL_10:

      return;
    }

    v167(v64, v75);

    v82 = 0;
  }

  else
  {
    v71(v64, Configuration);
    v82 = 1;
    v78 = v170;
    v79 = v168;
    v81 = v205;
  }

  (*(v203 + 56))(v78, v82, 1, v204);
  v77 = [v81 fetchResultTokenToDiffAgainst];
  v83 = v207;
  v84 = v209;
  sub_100534D44(v77, v207);
  v209 = v84;
  if (v84)
  {
    sub_1000050A4(v78, &qword_100938A70, &qword_1007ACC60);
    goto LABEL_10;
  }

  v85 = v164;
  REMRemindersListDataView.FlaggedInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v86 = v85;
  v87 = v75;
  v206 = v72;
  v167(v86, v75);
  v89 = v189;
  v88 = v190;
  v90 = v188;
  (*(v189 + 16))();
  v91 = (*(v89 + 88))(v90, v88);
  if (v91 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v89 + 96))(v90, v88);
    v92 = sub_10053DB98(*v90, v169, v79, v210, 0);
LABEL_15:
    v205 = v92;
    v196 = _swiftEmptyArrayStorage;
LABEL_16:
    v97 = v201;
    v98 = v198;
    v99 = v182;
    goto LABEL_17;
  }

  v93 = v210;
  if (v91 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v89 = v189;
    v94 = v190;
    v95 = v188;
    (*(v189 + 96))(v188, v190);
    v96 = v93;
    v88 = v94;
    v92 = sub_10053E698(*v95, v83, v79, v96, 0);
    goto LABEL_15;
  }

  if (v91 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v89 = v189;
    v140 = v190;
    v141 = v188;
    (*(v189 + 96))(v188, v190);
    v142 = v93;
    v143 = *v141;
    v144 = v141 + *(sub_1000F5104(&qword_100938A78, &qword_1007AABE0) + 48);
    v145 = v171;
    sub_100031B58(v144, v171, &qword_10094B8E0, &unk_1007AABD0);
    v146 = v143;
    v88 = v140;
    v147 = v169;
    v205 = sub_10053DB98(v146, v169, v79, v142, 0);
    v196 = sub_10053EBE4(v145, v147, v79, v142, 0);
    sub_1000050A4(v145, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_16;
  }

  v97 = v201;
  if (v91 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    goto LABEL_43;
  }

  v196 = _swiftEmptyArrayStorage;
  v205 = _swiftEmptyArrayStorage;
  v89 = v189;
  v88 = v190;
  v98 = v198;
  v99 = v182;
LABEL_17:
  (*(v89 + 8))(v98, v88);
  v100 = v193;
  v101 = *(v193 + 104);
  LODWORD(v206) = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  v101(v99);
  swift_storeEnumTagMultiPayload();
  v210 = sub_100043AA8();
  sub_1001A4F3C(v99, _s10PredicatesOMa);
  v102 = v165;
  REMRemindersListDataView.FlaggedInvocation.Parameters.configuration.getter();
  v103 = v199;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v167(v102, v87);
  v104 = v200;
  sub_100010364(v78, v200, &qword_100938A70, &qword_1007ACC60);
  v105 = v184;
  v106 = v104 + *(v184 + 48);
  v208 = *(v100 + 16);
  v208(v106, v103, v97);
  *(v104 + *(v105 + 64)) = v169;
  v107 = v104;
  v108 = v185;
  sub_100010364(v107, v185, &qword_10093AE38, &unk_100798450);
  v109 = *(v105 + 48);
  v110 = *(v105 + 64);
  v111 = v97;
  v112 = *(v108 + v110);
  v113 = v191;
  sub_100031B58(v108, v191, &qword_100938A70, &qword_1007ACC60);
  v114 = v108 + v109;
  v115 = v192;
  (*(v100 + 32))(v192, v114, v111);
  v116 = v183;
  sub_100010364(v113, v183, &qword_100938A70, &qword_1007ACC60);
  v117 = v203;
  v118 = v204;
  v119 = (*(v203 + 48))(v116, 1, v204);

  if (v119 != 1)
  {

    v130 = v173;
    (*(v117 + 32))(v173, v116, v118);
    v131 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v132 = REMRemindersListDataView.CountByCompleted.completed.getter();

    (*(v117 + 8))(v130, v118);
    v133 = *(v100 + 8);
    v134 = v201;
    v133(v115, v201);
    sub_1000050A4(v113, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v200, &qword_10093AE38, &unk_100798450);
    v133(v199, v134);
    v135 = __OFADD__(v131, v132);
    v124 = v181;
    v125 = v180;
    v126 = v194;
    v128 = v187;
    v129 = v186;
    if (!v135)
    {
      v127 = v176;
      v121 = v197;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_43;
  }

  v120 = v210;
  sub_1000050A4(v116, &qword_100938A70, &qword_1007ACC60);
  v121 = v197;
  if (*(v112 + 16))
  {

    v122 = *(v193 + 8);
    v123 = v201;
    v122(v192, v201);
    sub_1000050A4(v191, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v200, &qword_10093AE38, &unk_100798450);
    v122(v199, v123);
    v124 = v181;
    v125 = v180;
    v126 = v194;
    v127 = v176;
    v128 = v187;
    v129 = v186;
LABEL_22:
    v136 = v174;
    goto LABEL_23;
  }

  v148 = v172;
  v149 = v201;
  v208(v172, v192, v201);
  v150 = v193;
  v151 = (*(v193 + 88))(v148, v149);
  v152 = v191;
  if (v151 != enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    if (v151 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
    {

      (*(v150 + 8))(v148, v201);
      goto LABEL_34;
    }

    v153 = v187;
    v129 = v186;
    if (v151 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
    {

      goto LABEL_35;
    }

    if (v151 == v206)
    {

      v161 = *(v193 + 8);
      v162 = v201;
      v161(v192, v201);
      sub_1000050A4(v152, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v200, &qword_10093AE38, &unk_100798450);
      v161(v199, v162);
      v126 = v194;
      v127 = v176;
      v136 = v174;
      v124 = v181;
      v125 = v180;
      v121 = v197;
      v128 = v187;
      goto LABEL_23;
    }

    while (1)
    {
LABEL_43:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  (*(v150 + 8))(v148, v149);
LABEL_34:
  v153 = v187;
  v129 = v186;
LABEL_35:
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v154 = [objc_allocWithZone(NSFetchRequest) init];
  v155 = [swift_getObjCClassFromMetadata() entity];
  [v154 setEntity:v155];

  [v154 setAffectedStores:0];
  [v154 setPredicate:v120];
  [v154 setFetchLimit:1];
  [v154 setAffectedStores:0];
  v156 = v209;
  NSManagedObjectContext.count<A>(for:)();
  v209 = v156;
  if (v156)
  {

    v157 = *(v193 + 8);
    v158 = v201;
    v157(v192, v201);
    sub_1000050A4(v191, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v200, &qword_10093AE38, &unk_100798450);
    v157(v199, v158);
    (*(v129 + 8))(v207, v195);
    v139 = v170;
    goto LABEL_24;
  }

  v159 = *(v193 + 8);
  v160 = v201;
  v159(v192, v201);
  sub_1000050A4(v191, &qword_100938A70, &qword_1007ACC60);
  sub_1000050A4(v200, &qword_10093AE38, &unk_100798450);
  v159(v199, v160);
  v126 = v194;
  v127 = v176;
  v121 = v197;
  v136 = v174;
  v128 = v153;
  v124 = v181;
  v125 = v180;
LABEL_23:
  sub_100010364(v170, v136, &qword_100938A70, &qword_1007ACC60);
  REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
  v137 = v177;
  (*(v177 + 16))(v128, v121, v126);
  v210 = v166;
  v138 = v178;
  REMRemindersListDataView.FlaggedModel.init(flatModel:flaggedSmartList:)();
  (*(v125 + 16))(v127, v138, v124);
  (*(v129 + 16))(v175, v207, v195);
  sub_1001B1D58(&qword_10093AE40, &type metadata accessor for REMRemindersListDataView.FlaggedModel);
  sub_1001B1D58(&qword_10093AE48, &type metadata accessor for REMRemindersListDataView.FlaggedModel);
  REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

  (*(v125 + 8))(v138, v124);
  (*(v137 + 8))(v197, v194);
  (*(v129 + 8))(v207, v195);
  v139 = v170;
LABEL_24:
  sub_1000050A4(v139, &qword_100938A70, &qword_1007ACC60);
}

uint64_t sub_1001B1210(uint64_t a1)
{
  result = sub_1001B1D58(&qword_10093AE30, &type metadata accessor for REMRemindersListDataView.FlaggedInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_1001B1268(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a2;
    v28 = a1 + 32;
    v25 = a1 & 0xC000000000000001;
    v26 = v3;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_26;
        }

        a1 = *(v28 + 8 * v4);
      }

      v8 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v10 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {
        if (v10 < 0)
        {
          v11 = *a2;
        }

        v12 = *a2;

        v13 = v8;
        v14 = __CocoaSet.contains(_:)();

        if (v14)
        {

          goto LABEL_6;
        }
      }

      else if (*(v10 + 16))
      {
        sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
        v15 = *(v10 + 40);

        v16 = NSObject._rawHashValue(seed:)(v15);
        v17 = -1 << *(v10 + 32);
        v18 = v16 & ~v17;
        if ((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = *(*(v10 + 48) + 8 * v18);
            v21 = static NSObject.== infix(_:_:)();

            if (v21)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v3 = v26;
          a2 = v27;
          v6 = v24;
          v5 = v25;
          goto LABEL_6;
        }

LABEL_4:

        v3 = v26;
        a2 = v27;
        v6 = v24;
        v5 = v25;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = specialized ContiguousArray._endMutation()();
LABEL_6:
      if (v4 == v3)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v23 = a1;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v23;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001B14D0(void *a1, uint64_t a2)
{
  v79 = a1;
  v76 = a2;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v84 = *(Subtasks - 8);
  v85 = Subtasks;
  v3 = *(v84 + 64);
  __chkstk_darwin(Subtasks);
  v86 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  __chkstk_darwin(v5);
  v78 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s9UtilitiesO12SortingStyleOMa();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v77 = &v74 - v17;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  v24 = _s10PredicatesOMa(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  swift_storeEnumTagMultiPayload();
  v28 = sub_100043AA8();
  sub_1001A4F3C(v27, _s10PredicatesOMa);
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v29 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v30 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v30 - 8) + 104))(v20, v29, v30);
  v31 = v86;
  swift_storeEnumTagMultiPayload();
  v32 = v11;
  v33 = v78;
  sub_1005368D8(v32, v20, v23);
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v35 = v79;
  v34 = v80;
  v36 = REMSmartListTypeFlagged;
  v81 = v23;
  v37 = sub_100538914(v15, v79, REMSmartListTypeFlagged, v23);
  if (v34)
  {

    (*(v84 + 8))(v31, v85);
    (*(v82 + 8))(v33, v83);
    return sub_1001A4F3C(v81, _s9UtilitiesO12SortingStyleOMa);
  }

  v74 = v37;
  v80 = v28;
  v38 = v33;
  v39 = v77;
  sub_1001B1DA0(v15, v77);
  v40 = [v35 persistentStoreCoordinator];
  v75 = v36;
  if (v40)
  {
    v41 = v40;
    v42 = [v40 persistentStores];

    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = v75;
    v88 = _swiftEmptySetSingleton;
    if ((sub_1006B08B0(v75, 1) & 1) == 0)
    {
      v45 = [objc_opt_self() localAccountID];
      v46 = [v35 persistentStoreOfAccountWithAccountID:v45];

      v44 = v75;
      if (v46)
      {
        sub_10037A9C0(&v87, v46);
        v44 = v75;
      }
    }

    if ((sub_1006B08B0(v44, 5) & 1) == 0)
    {
      v47 = [objc_opt_self() localInternalAccountID];
      v48 = [v35 persistentStoreOfAccountWithAccountID:v47];

      if (v48)
      {
        sub_10037A9C0(&v87, v48);
      }
    }

    v49 = sub_1001B1268(v43, &v88);
  }

  else
  {
    v49 = 0;
  }

  v50 = v86;
  v51 = sub_100536D54(v35, v80, v39, v38, v86, _swiftEmptyArrayStorage, v49);
  v53 = v84;
  v52 = v85;
  v55 = v51;

  sub_1001A4F3C(v39, _s9UtilitiesO12SortingStyleOMa);
  (*(v53 + 8))(v50, v52);
  (*(v82 + 8))(v38, v83);
  v56 = v74;
  if (!v74)
  {
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v80;
    if (v59 == v62 && v61 == v63)
    {
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v67 & 1) == 0)
      {
        v70 = sub_10003A1B8();
        if (v70)
        {
          v71 = v70;
          v72 = sub_10022F65C(v75, v70);
          v73 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
          [v73 initWithStore:v76 storage:v72];
        }

        goto LABEL_19;
      }
    }

    v68 = objc_opt_self();
    v69 = String._bridgeToObjectiveC()();
    [v68 invalidParameterErrorWithDescription:v69];

    swift_willThrow();
    return sub_1001A4F3C(v81, _s9UtilitiesO12SortingStyleOMa);
  }

  v57 = sub_10022EB6C(v74);
  v58 = v80;
  v64 = v57;
  v65 = objc_allocWithZone(REMSmartList);
  [v65 initWithStore:v76 storage:v64];
  v66 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
  REMSmartList_Codable.init(_:)();

LABEL_19:
  sub_1001A4F3C(v81, _s9UtilitiesO12SortingStyleOMa);
  return v55;
}

uint64_t sub_1001B1D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B1DA0(uint64_t a1, uint64_t a2)
{
  v4 = _s9UtilitiesO12SortingStyleOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B1E04()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AE50);
  v1 = sub_100006654(v0, qword_10093AE50);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_ResetReminderCountsCache.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  if (qword_100935B30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093AE50);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDStoreControllerMigrator_ResetReminderCountsCache: migrating if needed", v7, 2u);
  }

  *&v13 = 0xD000000000000032;
  *(&v13 + 1) = 0x8000000100798440;
  v8 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_1001B2134(v15);
LABEL_13:
    v10 = [objc_opt_self() daemonUserDefaults];
    sub_1001B2490(v10, _.super.isa);

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v15[0] = 0xD000000000000032;
    *(&v15[0] + 1) = 0x8000000100798440;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_10014F63C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = [v12 integerValue];

  if (v9 < 1)
  {
    goto LABEL_13;
  }
}

uint64_t sub_1001B2134(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100939ED0, &qword_100791B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001B2218(void *a1, uint64_t a2)
{
  if (qword_100935B30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093AE50);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    v15[1] = a2;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10000668C(v8, v9, v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = sub_1003533B0();
    v13 = sub_10000668C(v11, v12, v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, "%s: END {store: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

id RDStoreControllerMigrator_ResetReminderCountsCache.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_ResetReminderCountsCache();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_ResetReminderCountsCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_ResetReminderCountsCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001B2490(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  if (qword_100935B30 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10093AE50);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = ObjectType;
    *v9 = 136315394;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_10000668C(v10, v11, &v31);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = sub_1003533B0();
    v15 = sub_10000668C(v13, v14, &v31);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: BEGIN {store: %{public}s}", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = [a1 accountsListCategorizedCountsCache];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    sub_10001BBA0(v18, v20);
    sub_1001B27E0(a1);
  }

  else
  {
    v21 = v6;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = ObjectType;
      *v24 = 136315394;
      swift_getMetatypeMetadata();
      v25 = String.init<A>(describing:)();
      v27 = sub_10000668C(v25, v26, &v31);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v28 = sub_1003533B0();
      v30 = sub_10000668C(v28, v29, &v31);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: NO NEED TO RESET CACHE {store: %{public}s}", v24, 0x16u);
      swift_arrayDestroy();
    }
  }

  sub_1001B2218(v6, ObjectType);
}

void sub_1001B27E0(void *a1)
{
  [a1 setAccountsListCategorizedCountsCache:0];
  if (qword_100935B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093AE50);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "RDStoreControllerMigrator_ResetReminderCountsCache did reset accountsListCategorizedCountsCache", v3, 2u);
  }
}

uint64_t sub_1001B28D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AE90);
  v1 = sub_100006654(v0, qword_10093AE90);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1001B29A0()
{
  v0 = [objc_opt_self() sharedConfiguration];
  [v0 iCloudIsOffTimeIntervalSinceLastPrompt];
  v2 = [objc_allocWithZone(REMICloudIsOffDataViewConfigurationsInvocationResult) initWithTimeIntervalSinceLastPrompt:v1];

  return v2;
}

uint64_t sub_1001B2A30(uint64_t a1)
{
  v2 = v1;
  v129 = a1;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v119 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v121 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v120 = &v119 - v12;
  __chkstk_darwin(v13);
  v130 = &v119 - v14;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v119 - v17;
  v19 = [v2 accountObjectID];
  v20 = [v19 uuid];

  v21 = v18;
  v131 = v18;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000F5104(&unk_10093AEB0, qword_100798560);
  inited = swift_initStackObject();
  v132 = xmmword_100791340;
  *(inited + 16) = xmmword_100791340;
  v23 = inited;
  v133 = inited;
  KeyPath = swift_getKeyPath();
  v25 = sub_1003EF7D8(KeyPath, 0);

  *(v23 + 32) = v25;
  v26 = swift_initStackObject();
  *(v26 + 16) = v132;
  v27 = swift_getKeyPath();
  v29 = v8 + 2;
  v28 = v8[2];
  v30 = v6;
  v28(v6, v21, v7);
  v125 = v8;
  v31 = v8[7];
  v31(v6, 0, 1, v7);
  v32 = sub_10039239C(v27, v6);

  *(v26 + 32) = v32;
  v33 = swift_getKeyPath();
  v124 = v29;
  v123 = v28;
  v28(v30, v131, v7);
  v128 = v7;
  v31(v30, 0, 1, v7);
  v34 = sub_10039239C(v33, v30);

  *(v26 + 40) = v34;
  v35 = sub_100025060(v26);
  v36 = v133;
  *(v133 + 40) = v35;
  v37 = sub_10000C2B0(v36);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1007953F0;
  *(v38 + 32) = swift_getKeyPath();
  v136 = _swiftEmptyArrayStorage;
  v39 = v37;
  sub_100026EF4(0, 1, 0);
  v40 = v136;
  if ((v38 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v30 = *(v38 + 32);
  }

  v41 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v42)
  {
LABEL_41:
    v135[0] = 0;
    v135[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v118._object = 0x80000001007EC120;
    v118._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v118);
    v134 = v30;
    sub_1000F5104(&unk_10093AEC0, &unk_100798638);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v43 = v41;
  v44 = v42;

  v46 = v40[2];
  v45 = v40[3];
  if (v46 >= v45 >> 1)
  {
    sub_100026EF4((v45 > 1), v46 + 1, 1);
    v40 = v136;
  }

  v40[2] = v46 + 1;
  v47 = &v40[2 * v46];
  v47[4] = v43;
  v47[5] = v44;
  sub_1001B3930();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_setDeallocating();
  v49 = *(v38 + 16);
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v51 = [ObjCClassFromMetadata ic_resultsMatchingPredicate:v39 sortDescriptors:0 resultType:0 fetchBatchSize:0 propertiesToFetch:isa relationshipKeyPathsForPrefetching:0 context:v129];

  v129 = sub_1000F5104(&unk_10093AF30, &qword_100798648);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100935B38 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v53 = sub_100006654(v52, qword_10093AE90);
  v54 = v130;
  v55 = v128;
  v123(v130, v131, v128);

  *&v132 = v53;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();

  v58 = os_log_type_enabled(v56, v57);
  v119 = v39;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v135[0] = swift_slowAlloc();
    *v59 = 136315394;
    sub_1001B397C();
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v54;
    v63 = v62;
    v122 = v125[1];
    v122(v61, v55);
    v64 = sub_10000668C(v60, v63, v135);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2080;
    v65 = Array.description.getter();
    v67 = sub_10000668C(v65, v66, v135);

    *(v59 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v56, v57, "REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount: {accountUUID: %s, results: %s}", v59, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v122 = v125[1];
    v122(v54, v55);
  }

  if (v30 >> 62)
  {
    v69 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v69 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v130 = v69;
  if (!v69)
  {
    goto LABEL_31;
  }

  if (v69 < 1)
  {
    __break(1u);
    goto LABEL_40;
  }

  v70 = 0;
  v133 = v30 & 0xC000000000000001;
  v71 = _swiftEmptyArrayStorage;
  *&v68 = 136315138;
  v126 = v68;
  v127 = v30;
  do
  {
    if (v133)
    {
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v77 = *(v30 + 8 * v70 + 32);
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v78 = swift_dynamicCastObjCClass();
    if (v78)
    {
      v79 = [v78 remObjectID];
      v135[0] = v79;
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v80 = Optional.descriptionOrNil.getter();
      v82 = v81;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_100365788(0, *(v71 + 2) + 1, 1, v71);
      }

      v84 = *(v71 + 2);
      v83 = *(v71 + 3);
      if (v84 >= v83 >> 1)
      {
        v71 = sub_100365788((v83 > 1), v84 + 1, 1, v71);
      }

      swift_unknownObjectRelease();
      *(v71 + 2) = v84 + 1;
      v85 = &v71[16 * v84];
      *(v85 + 4) = v80;
      *(v85 + 5) = v82;
    }

    else
    {
      swift_unknownObjectRetain();
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v86, v87))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v135[0] = v73;
        *v72 = v126;
        v136 = v77;
        swift_unknownObjectRetain();
        v74 = String.init<A>(describing:)();
        v76 = sub_10000668C(v74, v75, v135);

        *(v72 + 4) = v76;
        v69 = v130;
        _os_log_impl(&_mh_execute_header, v86, v87, "REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount found non-REMCDObject: %s", v72, 0xCu);
        sub_10000607C(v73);

        v30 = v127;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    ++v70;
  }

  while (v69 != v70);
LABEL_31:

  v88 = v120;
  v89 = v128;
  v123(v120, v131, v128);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v88;
    v93 = swift_slowAlloc();
    v135[0] = swift_slowAlloc();
    *v93 = 136315394;
    sub_1001B397C();
    v94 = dispatch thunk of CustomStringConvertible.description.getter();
    v96 = v95;
    v122(v92, v89);
    v97 = sub_10000668C(v94, v96, v135);

    *(v93 + 4) = v97;
    *(v93 + 12) = 2080;

    v98 = Array.description.getter();
    v100 = v99;

    v101 = sub_10000668C(v98, v100, v135);

    *(v93 + 14) = v101;
    _os_log_impl(&_mh_execute_header, v90, v91, "REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount {accountUUID: %s, dirtyCloudObjectIDs: %s", v93, 0x16u);
    swift_arrayDestroy();
    v69 = v130;
  }

  else
  {

    v122(v88, v89);
  }

  v102 = v89;
  v103 = v121;
  v123(v121, v131, v89);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v104, v105))
  {
    LODWORD(v133) = v69 != 0;
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v135[0] = v107;
    *v106 = 136315394;
    sub_1001B397C();
    v108 = dispatch thunk of CustomStringConvertible.description.getter();
    v110 = v109;
    v111 = v103;
    v112 = v122;
    v122(v111, v128);
    v113 = sub_10000668C(v108, v110, v135);

    *(v106 + 4) = v113;
    *(v106 + 12) = 1024;
    *(v106 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v104, v105, "REMICloudIsOffDataViewInvocation_fetchHasAnyDirtyCloudObjectInAccount {accountUUID: %s, hasDirtyCloudObjects: %{BOOL}d", v106, 0x12u);
    sub_10000607C(v107);
    v69 = v130;

    v102 = v128;
  }

  else
  {

    v114 = v103;
    v112 = v122;
    v122(v114, v89);
  }

  v115 = [objc_allocWithZone(NSNumber) initWithBool:v69 != 0];
  v116 = [objc_allocWithZone(REMICloudIsOffDataViewFetchHasAnyCKDirtyObjectInAccountInvocationResult) initWithHasAnyDirtyCloudObject:v115];

  v112(v131, v102);

  return v116;
}

unint64_t sub_1001B3930()
{
  result = qword_100939D80;
  if (!qword_100939D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100939D80);
  }

  return result;
}

unint64_t sub_1001B397C()
{
  result = qword_10093F2A0;
  if (!qword_10093F2A0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F2A0);
  }

  return result;
}

void sub_1001B39D4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v32 = a3;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v28 - v9;
  v10 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  v36 = a1;
  v22 = v38;
  sub_1001B3E0C(a1);
  if (!v22)
  {
    v30 = v4;
    v31 = v14;
    v38 = v15;
    v29 = v7;
    v23 = v33;
    v24 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v25 = [v34 fetchResultTokenToDiffAgainst];
    sub_100534D44(v25, v37);

    v26 = v38;
    v27 = v31;
    (*(v38 + 16))(v18, v21, v31);
    (*(v23 + 16))(v29, v37, v30);
    sub_1001B4148(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
    sub_1001B4148(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v23 + 8))(v37, v30);
    (*(v26 + 8))(v21, v27);
  }
}

uint64_t sub_1001B3DB4(uint64_t a1)
{
  result = sub_1001B4148(&qword_10093AF70, &type metadata accessor for REMRemindersListDataView.TodayNotificationInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001B3E0C(uint64_t a1)
{
  v24 = a1;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v1 = *(Subtasks - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(Subtasks);
  v4 = &Subtasks - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &Subtasks - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9UtilitiesO12SortingStyleOMa();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &Subtasks - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s10PredicatesOMa(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &Subtasks - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v18 = sub_100043AA8();
  sub_1001A4F3C(v17, _s10PredicatesOMa);
  v19 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v20 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v20 - 8) + 104))(v13, v19, v20);
  v21 = Subtasks;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 104))(v9, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v5);
  (*(v1 + 104))(v4, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), v21);
  v25 = sub_100536D54(v24, v18, v13, v9, v4, _swiftEmptyArrayStorage, 0);

  (*(v1 + 8))(v4, v21);
  (*(v6 + 8))(v9, v5);
  sub_1001A4F3C(v13, _s9UtilitiesO12SortingStyleOMa);
  return v25;
}

uint64_t sub_1001B4148(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001B4190(uint64_t a1)
{
  v1 = a1;
  v37 = a1 & 0xC000000000000001;
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
    v44 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
    v39 = _swiftEmptyArrayStorage;
    if (v37)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v41 = v3;
    v42 = v4;
    v43 = v37 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_38;
        }

        v9 = v41;
        v10 = v43;
        v38 = v42;
        v11 = v1;
        sub_100411D80(v41, v42, v43, v1);
        v13 = v12;
        v14 = [v12 remObjectID];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 description];

          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;
        }

        else
        {

          v19 = 0xE300000000000000;
          v17 = 7104878;
        }

        v20 = v39;
        v44 = v39;
        v22 = v39[2];
        v21 = v39[3];
        if (v22 >= v21 >> 1)
        {
          sub_100026EF4((v21 > 1), v22 + 1, 1);
          v20 = v44;
        }

        v20[2] = v22 + 1;
        v23 = &v20[2 * v22];
        v23[4] = v17;
        v23[5] = v19;
        v39 = v20;
        if (v37)
        {
          if (!v10)
          {
            goto LABEL_43;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v36;
          sub_1000F5104(&qword_10093B310, &qword_100798930);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v40, 0);
          if (v6 == v36)
          {
LABEL_35:
            sub_100010E34(v41, v42, v43);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_44;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v1 = v11;
          v24 = 1 << *(v11 + 32);
          if (v9 >= v24)
          {
            goto LABEL_39;
          }

          v25 = v9 >> 6;
          v26 = *(v35 + 8 * (v9 >> 6));
          if (((v26 >> v9) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v11 + 36) != v38)
          {
            goto LABEL_41;
          }

          v27 = v26 & (-2 << (v9 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v36;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            v2 = v36;
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_100010E34(v9, v38, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_34;
              }
            }

            sub_100010E34(v9, v38, 0);
          }

LABEL_34:
          v33 = *(v11 + 36);
          v41 = v24;
          v42 = v33;
          v43 = 0;
          if (v6 == v2)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_1001B4530()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093AF90);
  v1 = sub_100006654(v0, qword_10093AF90);
  if (qword_100936498 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001B45F8()
{
  v1 = v0;
  if (qword_100935B40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093AF90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: START ALL", v5, 2u);
  }

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001BBB58;
  *(v7 + 24) = v1;
  v10[4] = sub_1000529DC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10000F160;
  v10[3] = &unk_1008E8838;
  v8 = _Block_copy(v10);

  [v6 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    sub_1001B90E4(0x1000000000000044, 0x80000001007EF470);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1001B4830(uint64_t a1)
{
  if (qword_100935B40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093AF90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: START .userInitiated", v5, 2u);
  }

  sub_1001B4F90(1);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: FINISH .userInitiated", v8, 2u);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: START .sharedToMe", v11, 2u);
  }

  sub_1001B4F90(0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: FINISH .sharedToMe", v14, 2u);
  }

  v15 = *(a1 + 16);
  if (![v15 hasChanges])
  {
    goto LABEL_14;
  }

  v16 = (a1 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler7Batcher_metrics);
  swift_beginAccess();
  sub_1001B4C84(v15);
  swift_endAccess();
  v31[0] = 0;
  if ([v15 save:v31])
  {
    v17 = v31[0];
LABEL_14:
    v18 = OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler7Batcher_metrics;
    swift_beginAccess();
    v19 = *(a1 + v18);
    *(a1 + v18) = 0;
  }

  v20 = v31[0];
  v21 = _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136446210;
    swift_getErrorValue();
    v26 = Error.rem_errorDescription.getter();
    v28 = sub_10000668C(v26, v27, v31);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "#️⃣ RDSharedInlineTagAutoConvertStoreHandler.Batcher: Error saving at end of consumeJournalUpdates {error: %{public}s}", v24, 0xCu);
    sub_10000607C(v25);
  }

  v16[6] = 0;
  v16[7] = 0;
  v16[8] = 0;
  v29 = *v16;
  *v16 = v21;
  swift_errorRetain();
}

uint64_t sub_1001B4C84(void *a1)
{
  v2 = v1;
  v4 = [a1 insertedObjects];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  sub_10000CE28(&qword_10093B350, &qword_1009388B0, NSManagedObject_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 updatedObjects];
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1007252C4(v7, v5);
  v9 = v8;
  v10 = [a1 deletedObjects];
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1007252C4(v11, v9);
  type metadata accessor for REMCKSharedEntitySyncActivity();
  sub_1000F5104(&qword_10093B358, &qword_1007989A8);
  sub_10000CB48(&unk_10093B360, &qword_10093B358, &qword_1007989A8);
  v12 = Sequence.elements<A>(ofExactType:)();
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2[6] = v13;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v14 = Sequence.elements<A>(ofExactType:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2[7] = v15;
  v16 = [a1 insertedObjects];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v17 = Sequence.elements<A>(ofExactType:)();

  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2[8] = v18;
  return result;
}

uint64_t sub_1001B4F90(char a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    v4 = &off_1008DEF80;
  }

  else
  {
    v4 = &off_1008DEF58;
  }

  v5 = sub_1001B535C(v4, 100);

  v26[0] = v5;
  sub_1000F5104(&qword_10093B330, &qword_100798980);
  sub_10000CB48(&qword_10093B338, &qword_10093B330, &qword_100798980);
  v6 = BidirectionalCollection<>.slices(by:)();

  v7 = *(v6 + 16);
  if (v7)
  {
    v19 = *(v2 + 16);
    v8 = (v6 + 56);
    v20 = v3;
    do
    {
      v16 = *(v8 - 1);
      v17 = *v8;
      v21 = *(v8 - 3);
      swift_unknownObjectRetain();
      v22 = objc_autoreleasePoolPush();
      if (v3)
      {
        v9 = type metadata accessor for RDUserInitiatedHashtagLabelApprovalTagAutoConvertRunner();
        v10 = swift_allocObject();
        *(v10 + 24) = 1;
        v11 = &off_1008FB508;
      }

      else
      {
        v9 = type metadata accessor for RDNewlySharedToMeTagAutoConvertRunner();
        v10 = swift_allocObject();
        v11 = &off_1008F6D10;
      }

      *(v10 + 16) = v19;
      v26[3] = v9;
      v26[4] = v11;
      v26[0] = v10;
      sub_10000F61C(v26, v9);
      v23 = v21;
      v24 = v16;
      v25 = v17;
      v12 = v11[1];
      v13 = v19;
      v14 = sub_1000F5104(&qword_10093B340, &qword_100798988);
      v15 = sub_10000CB48(&qword_10093B348, &qword_10093B340, &qword_100798988);
      v12(&v23, v14, v15);
      sub_10000607C(v26);
      objc_autoreleasePoolPop(v22);
      swift_unknownObjectRelease();
      v8 += 4;
      --v7;
      v3 = v20;
    }

    while (v7);
  }
}

uint64_t sub_1001B535C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100016ED8(0, v3, 0);
    v5 = (a1 + 32);
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = _swiftEmptyArrayStorage[3];
      if (v6 >= v9 >> 1)
      {
        sub_100016ED8((v9 > 1), v6 + 1, 1);
      }

      v10 = word_100798AFE[v7];
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6++) = v10;
      --v3;
    }

    while (v3);
  }

  KeyPath = swift_getKeyPath();
  v12 = sub_1003EF734(KeyPath, _swiftEmptyArrayStorage);

  type metadata accessor for REMCKSharedEntitySyncActivity();
  v13 = [objc_allocWithZone(NSFetchRequest) init];
  v14 = [swift_getObjCClassFromMetadata() entity];
  [v13 setEntity:v14];

  [v13 setAffectedStores:0];
  [v13 setPredicate:v12];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007953F0;
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithKey:v17 ascending:1];

  *(v15 + 32) = v18;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setSortDescriptors:isa];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100791340;
  strcpy((v20 + 32), "ckIdentifier");
  *(v20 + 45) = 0;
  *(v20 + 46) = -5120;
  *(v20 + 88) = &type metadata for String;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = 0xD000000000000014;
  *(v20 + 72) = 0x8000000100798920;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setPropertiesToFetch:v21];

  [v13 setFetchBatchSize:a2];
  v22 = *(v25 + 16);
  v23 = NSManagedObjectContext.fetch<A>(_:)();

  return v23;
}

id sub_1001B56AC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 activityTypeRawValue];
  *a2 = result;
  return result;
}

uint64_t sub_1001B56F4()
{
  sub_1001BBBD0(v0 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler7Batcher_metrics, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1001B5774()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1001B5940();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyArrayStorage;
  v5 = [v3 length];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v0;
  v6[4] = v4;
  v6[5] = ObjectType;
  v13[4] = sub_1001BBAEC;
  v13[5] = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001B64AC;
  v13[3] = &unk_1008E87E8;
  v7 = _Block_copy(v13);
  v8 = v3;
  v9 = v0;

  [v8 rem_enumerateHashtagInRange:0 options:v5 usingBlock:{0, v7}];
  _Block_release(v7);
  swift_beginAccess();
  v10 = *(v4 + 16);

  v11 = sub_1001B653C(v10, *&v9[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder]);

  return v11;
}

id sub_1001B5940()
{
  v1 = *(v0 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder);
  result = [v1 account];
  if (result)
  {
    v3 = result;
    v4 = [result remObjectID];

    if (!v4)
    {
      return 0;
    }

    v5 = [v1 remObjectID];
    if (!v5)
    {
LABEL_12:

      return 0;
    }

    v6 = v5;
    v7 = *(v0 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_field);
    v8 = objc_allocWithZone(REMReplicaIDSource);
    v9 = v6;
    v4 = v4;
    v10 = String._bridgeToObjectiveC()();

    v11 = [v8 initWithAccountID:v4 objectID:v9 property:v10];

    if (v7)
    {
      v12 = [v1 notesDocument];
      if (v12)
      {
LABEL_6:
        v13 = v12;
        v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v9;
        v18 = v11;
        v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v14, v16);
LABEL_9:
        v22 = String._bridgeToObjectiveC()();

        v23 = [objc_opt_self() documentFromSerializedData:v19.super.isa replicaIDSource:v11 forKey:v22 ofObjectID:v9];

        if (v23)
        {
          v24 = v23;
          v25 = [v24 attributedString];

          return v25;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v12 = [v1 titleDocument];
      if (v12)
      {
        goto LABEL_6;
      }
    }

    v20 = v9;
    v21 = v11;
    v19.super.isa = 0;
    goto LABEL_9;
  }

  return result;
}

void sub_1001B5BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1000F5104(&qword_10093B318, &qword_100798938);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v66 - v15;
  v17 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v71 = *(v17 - 8);
  v18 = *(v71 + 64);
  __chkstk_darwin(v17);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v66 - v21;
  v23 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v66 - v25;
  if (a1)
  {
    v67 = a7;
    v68 = v22;
    v70 = a1;
    v27 = [a5 string];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_1001BB6DC(v28, v30, a2, a3);
    v33 = v32;
    v35 = v34;
    v37 = v36;

    if (v37)
    {
      v38 = *(a6 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName + 8);
      v39 = v31;
      if (v38)
      {
        v66 = *(a6 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName);
        v72[0] = v31;
        v72[1] = v33;
        v72[2] = v35;
        v72[3] = v37;
        static Locale.current.getter();
        v40 = type metadata accessor for Locale();
        (*(*(v40 - 8) + 56))(v26, 0, 1, v40);
        sub_1001BBAF8();
        v41 = StringProtocol.foldedStringForWriting(locale:)();
        v43 = v42;
        sub_1000050A4(v26, &unk_10093F420, &unk_100797AE0);
        if (v41 == v66 && v38 == v43)
        {
        }

        else
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v45 & 1) == 0)
          {

            return;
          }
        }
      }

      v46 = v70;
      sub_1001B61CC(v46, v39, v33, v35, v37, v16);
      v47 = v71;
      if ((*(v71 + 48))(v16, 1, v17) == 1)
      {
        sub_1000050A4(v16, &qword_10093B318, &qword_100798938);
        if (qword_100935B40 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_100006654(v48, qword_10093AF90);
        v49 = v46;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v72[0] = v53;
          *v52 = 136446210;
          v54 = [v49 objectIdentifier];
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v58 = sub_10000668C(v55, v57, v72);

          *(v52 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v50, v51, "#️⃣ RDSharedInlineTagAutoConvertHandler.Runner: REMTTHashtag objectIdentifier[%{public}s] does not represent a valid UUID", v52, 0xCu);
          sub_10000607C(v53);
        }

        else
        {
        }
      }

      else
      {
        v59 = v68;
        sub_1001BBA14(v16, v68, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
        v60 = v69;
        sub_1001BB9B0(v59, v69);
        v61 = v67;
        swift_beginAccess();
        v62 = *(v61 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v61 + 16) = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = sub_100366784(0, v62[2] + 1, 1, v62);
          *(v61 + 16) = v62;
        }

        v65 = v62[2];
        v64 = v62[3];
        if (v65 >= v64 >> 1)
        {
          v62 = sub_100366784(v64 > 1, v65 + 1, 1, v62);
        }

        v62[2] = v65 + 1;
        sub_1001BBA14(v60, v62 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v65, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
        *(v61 + 16) = v62;
        swift_endAccess();

        sub_1001BBBD0(v68, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      }
    }

    else
    {
      v44 = v70;
    }
  }
}

uint64_t sub_1001B61CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a6;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v16 = *(v35 - 8);
  v17 = *(v16 + 64);
  *&v18 = __chkstk_darwin(v35).n128_u64[0];
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 objectIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1000050A4(v10, &unk_100939D90, "8\n\r");
    v22 = 1;
    v23 = v37;
    v24 = v35;
  }

  else
  {
    v25 = *(v12 + 32);
    v25(v15, v10, v11);
    v26 = v35;
    v25(&v20[*(v35 + 24)], v15, v11);
    *v20 = a1;
    v27 = static String._fromSubstring(_:)();
    v29 = v28;

    *(v20 + 1) = v27;
    *(v20 + 2) = v29;
    v30 = v37;
    sub_1001BBA14(v20, v37, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
    v22 = 0;
    v23 = v30;
    v24 = v26;
  }

  return (*(v16 + 56))(v23, v22, 1, v24);
}

void sub_1001B64AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = a2;
  v10(a2, a3, a4, a5);
}

uint64_t sub_1001B653C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v143 = *(v5 - 8);
  v6 = *(v143 + 64);
  __chkstk_darwin(v5);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v145 = *(v9 - 8);
  v10 = v145[8];
  __chkstk_darwin(v9);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v144 = &v131 - v15;
  v16 = [a2 account];
  if (!v16)
  {
    return 0xD000000000000010;
  }

  v17 = v16;
  v18 = [v16 remObjectID];

  v146 = v18;
  if (!v18)
  {
    return 0xD000000000000010;
  }

  v19 = [a2 remObjectID];
  if (!v19)
  {

    return 0x7265646E696D6572;
  }

  v20 = v19;
  v21 = sub_1001B8BA0();
  sub_1001B7A4C(a1, v21);
  v23 = v22;

  v141 = v9;
  v142 = v20;
  v133 = v2;
  v131 = a2;
  v132 = 0;
  v26 = (v23 + 64);
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v23 + 64);
  v30 = (v27 + 63) >> 6;
  v139 = (v143 + 8);
  v140 = (v143 + 16);

  v31 = 0;
  v32 = _swiftEmptyDictionarySingleton;
  v33 = v23;
  v137 = v8;
  v138 = v5;
  v135 = (v23 + 64);
  v136 = v23;
  v134 = v30;
LABEL_13:
  if (v29)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v36 >= v30)
    {
      break;
    }

    v29 = v26[v36];
    ++v31;
    if (v29)
    {
      v31 = v36;
LABEL_18:
      v143 = v32;
      v37 = v144;
      sub_1001BB9B0(*(v33 + 56) + v145[9] * (__clz(__rbit64(v29)) | (v31 << 6)), v144);
      sub_1001BBA14(v37, v12, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      (*v140)(v8, &v12[*(v141 + 6)], v5);
      sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
      v38 = [swift_getObjCClassFromMetadata() cdEntityName];
      if (!v38)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = String._bridgeToObjectiveC()();
      }

      v39 = objc_allocWithZone(REMObjectID);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v41 = [v39 initWithUUID:isa entityName:v38];

      (*v139)(v8, v5);
      v42 = *(v12 + 1);
      v43 = *(v12 + 2);
      v44 = objc_allocWithZone(REMHashtag);
      v45 = v41;
      v46 = v146;
      v47 = v142;
      v48 = String._bridgeToObjectiveC()();
      v49 = [v44 initWithObjectID:v45 accountID:v46 reminderID:v47 type:1 name:v48];

      v26 = v143;
      if ((v143 & 0xC000000000000001) != 0)
      {
        if (v143 < 0)
        {
          v50 = v143;
        }

        else
        {
          v50 = v143 & 0xFFFFFFFFFFFFFF8;
        }

        v51 = v49;
        v52 = __CocoaDictionary.count.getter();
        if (__OFADD__(v52, 1))
        {
          goto LABEL_86;
        }

        v26 = sub_10021D254(v50, v52 + 1);
      }

      else
      {
        v53 = v49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v149 = v26;
      v56 = sub_10002B924(v45);
      v57 = v26[2];
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_84;
      }

      v60 = v55;
      if (v26[3] >= v59)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v149;
          if ((v55 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v26 = &v149;
          sub_100374A30();
          v32 = v149;
          if ((v60 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_11:
        v34 = v32[7];
        v35 = *(v34 + 8 * v56);
        *(v34 + 8 * v56) = v49;

        goto LABEL_12;
      }

      sub_10036CE90(v59, isUniquelyReferenced_nonNull_native);
      v26 = v149;
      v61 = sub_10002B924(v45);
      if ((v60 & 1) != (v62 & 1))
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v56 = v61;
      v32 = v149;
      if (v60)
      {
        goto LABEL_11;
      }

LABEL_34:
      v32[(v56 >> 6) + 8] |= 1 << v56;
      *(v32[6] + 8 * v56) = v45;
      *(v32[7] + 8 * v56) = v49;

      v63 = v32[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_87;
      }

      v32[2] = v65;
LABEL_12:
      v8 = v137;
      v5 = v138;
      v26 = v135;
      v33 = v136;
      v30 = v134;
      v29 &= v29 - 1;
      sub_1001BBBD0(v12, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      goto LABEL_13;
    }
  }

  type metadata accessor for REMHashtagCDIngestor();
  v66 = swift_allocObject();
  v67 = v146;
  v68 = v142;
  *(v66 + 16) = v146;
  *(v66 + 24) = v68;
  v69 = v67;
  v29 = v68;
  v24 = v132;
  sub_1001B7414(v32, v66);
  if (v24)
  {

    return v24;
  }

  v143 = v32;
  v70 = *(v33 + 16);
  if (v70)
  {
    v71 = sub_100018D7C(*(v33 + 16), 0);
    v72 = v33;
    v73 = v71;
    v74 = sub_100279888(&v149, (v71 + 32), v70, v72);
    sub_10001B860();
    if (v74 == v70)
    {
      goto LABEL_44;
    }

    __break(1u);
  }

  v73 = _swiftEmptyArrayStorage;
LABEL_44:

  v76 = sub_100277FAC(v75);

  sub_1001B76C4(v73, v76);

  v77 = sub_1001B8BA0();
  v26 = v77;
  v146 = v69;
  if ((v77 & 0xC000000000000001) == 0)
  {
    v96 = *(v77 + 32);
    v142 = (((1 << v96) + 63) >> 6);
    if ((v96 & 0x3Fu) > 0xD)
    {
      goto LABEL_89;
    }

LABEL_66:
    v141 = &v131;
    __chkstk_darwin(v77);
    v144 = &v131 - ((v97 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v144, v97);
    v145 = 0;
    v98 = 0;
    v99 = 1 << *(v26 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & v26[7];
    v102 = (v99 + 63) >> 6;
    do
    {
      while (1)
      {
        if (!v101)
        {
          v104 = v98;
          while (1)
          {
            v98 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              goto LABEL_88;
            }

            if (v98 >= v102)
            {
              goto LABEL_81;
            }

            v105 = v26[v98 + 7];
            ++v104;
            if (v105)
            {
              v103 = __clz(__rbit64(v105));
              v101 = (v105 - 1) & v105;
              goto LABEL_76;
            }
          }
        }

        v103 = __clz(__rbit64(v101));
        v101 &= v101 - 1;
LABEL_76:
        v106 = v103 | (v98 << 6);
        v107 = v26[6][v106];
        v108 = [v107 hashtagLabel];

        if (!v108)
        {
          break;
        }
      }

      *&v144[(v106 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v106;
      v64 = __OFADD__(v145, 1);
      v145 = (v145 + 1);
    }

    while (!v64);
    __break(1u);
LABEL_81:
    v78 = sub_1001A112C(v144, v142, v145, v26);
    v95 = v78 & 0xC000000000000001;
    if ((v78 & 0xC000000000000001) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_82;
  }

  v78 = _swiftEmptySetSingleton;
  v149 = _swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v79 = __CocoaSet.Iterator.next()();
  if (!v79)
  {
LABEL_63:

    v95 = v78 & 0xC000000000000001;
    if ((v78 & 0xC000000000000001) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_82;
  }

  v80 = v79;
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v81 = v80;
  while (1)
  {
    v147 = v81;
    swift_dynamicCast();
    v82 = [v148 hashtagLabel];
    if (!v82)
    {
      break;
    }

LABEL_48:
    v81 = __CocoaSet.Iterator.next()();
    if (!v81)
    {
      goto LABEL_63;
    }
  }

  v83 = v148;
  v84 = *(v78 + 16);
  if (*(v78 + 24) <= v84)
  {
    sub_100380E64(v84 + 1);
  }

  v78 = v149;
  v26 = v83;
  v85 = NSObject._rawHashValue(seed:)(v149[5]);
  v86 = v78 + 56;
  v87 = -1 << *(v78 + 32);
  v88 = v85 & ~v87;
  v89 = v88 >> 6;
  if (((-1 << v88) & ~*(v78 + 56 + 8 * (v88 >> 6))) != 0)
  {
    v90 = __clz(__rbit64((-1 << v88) & ~*(v78 + 56 + 8 * (v88 >> 6)))) | v88 & 0x7FFFFFFFFFFFFFC0;
LABEL_62:
    *(v86 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
    *(*(v78 + 48) + 8 * v90) = v83;
    ++*(v78 + 16);
    goto LABEL_48;
  }

  v91 = 0;
  v92 = (63 - v87) >> 6;
  while (++v89 != v92 || (v91 & 1) == 0)
  {
    v93 = v89 == v92;
    if (v89 == v92)
    {
      v89 = 0;
    }

    v91 |= v93;
    v94 = *(v86 + 8 * v89);
    if (v94 != -1)
    {
      v90 = __clz(__rbit64(~v94)) + (v89 << 6);
      goto LABEL_62;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  v110 = v142;

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_66;
  }

  v111 = swift_slowAlloc();
  v78 = sub_1001BAAE8(v111, v110, v26, sub_1001B73C4, 0);

  v95 = v78 & 0xC000000000000001;
  if ((v78 & 0xC000000000000001) != 0)
  {
LABEL_82:
    v109 = __CocoaSet.count.getter();
    goto LABEL_93;
  }

LABEL_92:
  v109 = *(v78 + 16);
LABEL_93:
  if (!v109)
  {

    goto LABEL_106;
  }

  if (qword_100935B40 != -1)
  {
    swift_once();
  }

  v112 = type metadata accessor for Logger();
  sub_100006654(v112, qword_10093AF90);
  swift_retain_n();
  v113 = v131;
  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v149 = v145;
    *v116 = 136446722;
    v117 = [v113 remObjectID];
    if (v117)
    {
      v118 = v117;
      v119 = [v117 description];

      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;
    }

    else
    {
      v122 = 0xE300000000000000;
      v120 = 7104878;
    }

    v123 = sub_10000668C(v120, v122, &v149);

    *(v116 + 4) = v123;
    *(v116 + 12) = 2048;
    if (v95)
    {
      v124 = __CocoaSet.count.getter();
    }

    else
    {
      v124 = *(v78 + 16);
    }

    *(v116 + 14) = v124;

    *(v116 + 22) = 2082;
    sub_1001B4190(v78);
    v126 = v125;

    v148 = v126;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v127 = BidirectionalCollection<>.joined(separator:)();
    v129 = v128;

    v130 = sub_10000668C(v127, v129, &v149);

    *(v116 + 24) = v130;
    _os_log_impl(&_mh_execute_header, v114, v115, "#️⃣ RDSharedInlineTagAutoConvertHandler.Runner: Reminder[%{public}s] is missing %ld HashtagLabels[%{public}s]", v116, 0x20u);
    swift_arrayDestroy();

LABEL_106:
  }

  else
  {
  }

  return 0;
}

BOOL sub_1001B73C4(id *a1)
{
  v1 = [*a1 hashtagLabel];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

uint64_t sub_1001B7414(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1000F5104(&qword_10093B2E8, "ʽ\v");
  sub_10000CB48(&unk_10093B2F0, &qword_10093B2E8, "ʽ\v");
  v6 = Sequence.mapToSet<A>(_:)();
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1001BB0F0(v7, v6);
    if (!v3)
    {
      v9 = v8;

LABEL_9:

      v11 = *(v4 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_persistentStoreLookup);
      v12 = *(v4 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      type metadata accessor for CDIngestionCoordinator();
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 112) = _swiftEmptyArrayStorage;
      *(v16 + 120) = _swiftEmptyArrayStorage;
      *(v16 + 128) = _swiftEmptyArrayStorage;
      *(v16 + 136) = _swiftEmptyArrayStorage;
      *(v16 + 72) = v9;
      *(v16 + 80) = v11;
      *(v16 + 88) = v12;
      *(v16 + 24) = v13;
      *(v16 + 32) = v15;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 40) = 0;
      *(v16 + 62) = 0;
      swift_unknownObjectRetain();
      v17 = v12;
      *(v16 + 144) = sub_10038F67C(_swiftEmptyArrayStorage);
      *(v16 + 96) = 0;
      *(v16 + 104) = 1;

      v19 = sub_100277FAC(v18);

      sub_1005F9680(v19, a2);

      sub_1003DA48C();
    }
  }

  else
  {
    v10 = sub_1001BAF9C(a1, v6);
    if (!v3)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

_BYTE *sub_1001B764C@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x44497463656A626FLL;
  v4 = 1701667182;
  if (*result != 2)
  {
    v4 = 1701869940;
  }

  if (*result)
  {
    v3 = 0x6E6F697461657263;
    v2 = 0xEC00000065746144;
  }

  if (*result <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*result > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a2 = v5;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001B76C4(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  KeyPath = a2;
  if (a2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); !i; i = _CocoaArrayWrapper.endIndex.getter())
  {
LABEL_14:
    v13 = *&v5[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext];
    sub_1005ED9D0(_swiftEmptyArrayStorage, 0, 1, 0, 0);
    v5 = v14;

    if (v4)
    {
      return result;
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_1000F5104(&qword_10093B2C8, &qword_100798908);
    sub_10000CB48(&qword_10093B2D0, &qword_10093B2C8, &qword_100798908);
    v15 = Sequence.compactIndexBy<A, B>(key:value:)();

    v16 = sub_1001BB358(v5);

    v17 = 0;
    v18 = v15 + 64;
    v33 = v15;
    v19 = 1 << *(v15 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v15 + 64);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
      v23 = v21;
LABEL_25:
      v21 = (v23 - 1) & v23;
      if (v16[2])
      {
        v34 = (v23 - 1) & v23;
        v25 = __clz(__rbit64(v23)) | (v17 << 6);
        v26 = *(*(v33 + 56) + 8 * v25);
        v27 = (*(v33 + 48) + 16 * v25);
        v28 = *v27;
        v29 = v27[1];

        v5 = v26;
        KeyPath = sub_100005F4C(v28, v29);
        v31 = v30;

        if (v31)
        {
          KeyPath = *(v16[7] + 8 * KeyPath);

          sub_10020C4A4(v5, KeyPath, 0);
        }

        v21 = v34;
      }
    }

    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
      }

      v23 = *(v18 + 8 * v24);
      ++v17;
      if (v23)
      {
        v17 = v24;
        goto LABEL_25;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((i & 0x8000000000000000) == 0)
  {
    v32 = v5;
    v9 = 0;
    while (1)
    {
      v5 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((KeyPath & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v10 = *(KeyPath + 8 * v9 + 32);
      }

      v11 = v10;
      sub_1005E5328([v10 remObjectID]);

      if (v4)
      {
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v9;
      if (v5 == i)
      {
        v5 = v32;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_1001B7A4C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v83 = &v76 - v7;
  v8 = sub_1000F5104(&qword_10093B290, &qword_100798890);
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = *(v80 + 64);
  __chkstk_darwin(v8);
  v79 = (&v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v82 = &v76 - v12;
  v13 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v85 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v88 = &v76 - v18;
  __chkstk_darwin(v19);
  v21 = (&v76 - v20);
  v90[0] = a2;
  sub_1000F5104(&qword_10093B298, &qword_100798898);
  sub_10000CB48(&qword_10093B2A0, &qword_10093B298, &qword_100798898);
  v22 = Sequence.compactMapToSet<A>(_:)();
  v23 = v22;
  v77 = v2;
  v87 = *(a1 + 16);
  v76 = v14;
  if (v87)
  {
    v24 = 0;
    v84 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v86 = a1 + v84;
    v89 = *(v14 + 72);
    v25 = v22 + 56;
    v26 = _swiftEmptyArrayStorage;
    do
    {
      sub_1001BB9B0(v86 + v89 * v24, v21);
      v27 = [*v21 objectIdentifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (*(v23 + 16) && (v31 = *(v23 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v32 = Hasher._finalize()(), v33 = -1 << *(v23 + 32), v34 = v32 & ~v33, ((*(v25 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
      {
        v35 = ~v33;
        while (1)
        {
          v36 = (*(v23 + 48) + 16 * v34);
          v37 = *v36 == v28 && v36[1] == v30;
          if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v25 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        sub_1001BBBD0(v21, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      }

      else
      {
LABEL_14:

        sub_1001BBA14(v21, v88, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10025379C(0, v26[2] + 1, 1);
          v26 = v91;
        }

        v40 = v26[2];
        v39 = v26[3];
        if (v40 >= v39 >> 1)
        {
          sub_10025379C(v39 > 1, v40 + 1, 1);
          v26 = v91;
        }

        v26[2] = v40 + 1;
        sub_1001BBA14(v88, v26 + v84 + v40 * v89, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
      }

      ++v24;
    }

    while (v24 != v87);
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v89 = v26;
  v90[0] = v26;
  sub_1000F5104(&qword_10093B2A8, qword_1007988A0);
  sub_10000CB48(&unk_10093B2B0, &qword_10093B2A8, qword_1007988A0);
  v41 = v77;
  v42 = Sequence.mapToSet<A>(_:)();
  v43 = v41;
  v44 = *(v78 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100791300;
  *(v45 + 56) = &type metadata for String;
  strcpy((v45 + 32), "canonicalName");
  *(v45 + 46) = -4864;
  v90[0] = _swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  v47 = sub_100394808(v42);

  sub_10042D838(KeyPath, v47);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v90[0] + 16) >= *(v90[0] + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v48 = sub_10000C2B0(v90[0]);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v49 = [objc_allocWithZone(NSFetchRequest) init];
  v50 = [swift_getObjCClassFromMetadata() entity];
  [v49 setEntity:v50];

  [v49 setAffectedStores:0];
  [v49 setPredicate:v48];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v49 setPropertiesToFetch:isa];

  [v49 setRelationshipKeyPathsForPrefetching:0];
  v52 = NSManagedObjectContext.fetch<A>(_:)();
  if (v41)
  {

    return;
  }

  v53 = v52;

  v90[0] = v53;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10093B2C8, &qword_100798908);
  sub_10000CB48(&qword_10093B2D0, &qword_10093B2C8, &qword_100798908);
  v54 = Sequence.compactIndexBy<A, B>(key:value:)();

  v55 = v89[2];
  if (v55)
  {
    v88 = 0;
    v56 = _swiftEmptyArrayStorage;
    v57 = v89 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v58 = *(v76 + 72);
    while (1)
    {
      v59 = v85;
      sub_1001BB9B0(v57, v85);
      v60 = *(v59 + 16);
      v90[0] = *(v59 + 8);
      v90[1] = v60;

      v61 = v83;
      static Locale.current.getter();
      v62 = type metadata accessor for Locale();
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
      sub_10013BCF4();
      v63 = StringProtocol.foldedStringForWriting(locale:)();
      v65 = v64;
      sub_1000050A4(v61, &unk_10093F420, &unk_100797AE0);

      if (*(v54 + 16))
      {
        v66 = sub_100005F4C(v63, v65);
        v68 = v67;

        if (v68)
        {
          v69 = *(*(v54 + 56) + 8 * v66);
          v70 = *(v81 + 48);
          v71 = v79;
          *v79 = v69;
          sub_1001BBA14(v85, v71 + v70, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
          sub_100031B58(v71, v82, &qword_10093B290, &qword_100798890);
          v72 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_100366718(0, v56[2] + 1, 1, v56);
          }

          v74 = v56[2];
          v73 = v56[3];
          if (v74 >= v73 >> 1)
          {
            v56 = sub_100366718(v73 > 1, v74 + 1, 1, v56);
          }

          v56[2] = v74 + 1;
          sub_100031B58(v82, v56 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v74, &qword_10093B290, &qword_100798890);
          goto LABEL_28;
        }
      }

      else
      {
      }

      sub_1001BBBD0(v85, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
LABEL_28:
      v57 += v58;
      if (!--v55)
      {

        v43 = v88;
        if (v56[2])
        {
          goto LABEL_37;
        }

LABEL_39:
        v75 = _swiftEmptyDictionarySingleton;
        goto LABEL_40;
      }
    }
  }

  v56 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_39;
  }

LABEL_37:
  sub_1000F5104(&qword_10093B2E0, &unk_100798910);
  v75 = static _DictionaryStorage.allocate(capacity:)();
LABEL_40:
  v90[0] = v75;
  sub_1001BAB78(v56, 1, v90);

  if (v43)
  {

    __break(1u);
  }
}