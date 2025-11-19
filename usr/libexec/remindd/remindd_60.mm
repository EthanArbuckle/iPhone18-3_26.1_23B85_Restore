unint64_t sub_1005850F0()
{
  result = qword_10094CBD8;
  if (!qword_10094CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CBD8);
  }

  return result;
}

void sub_100585144()
{
  v1 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.sortingStyle.getter();
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1000050A4(v9, &qword_100941B98, qword_1007ACBD0);
    v10 = 0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    v11 = (*(v2 + 88))(v5, v1);
    v10 = v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
    if (v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) && v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v2 + 8))(v9, v1);
  }

  sub_1000131E0(0, 2, v10);
  if (!v0)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v24 = _swiftEmptyArrayStorage;
      v15 = v13;
      specialized ContiguousArray.reserveCapacity(_:)();
      v16 = type metadata accessor for REMHashtagLabel_Codable();
      v17 = (v15 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v20 = objc_allocWithZone(v16);

        v21 = String._bridgeToObjectiveC()();

        [v20 initWithName:v21];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = v24[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v17 += 2;
        --v14;
      }

      while (v14);
    }
  }
}

uint64_t sub_10058542C()
{
  v1 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v21 - v8;
  REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation.Parameters.sortingStyle.getter();
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1000050A4(v9, &qword_100941B98, qword_1007ACBD0);
    v10 = 0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    v11 = (*(v2 + 88))(v5, v1);
    v10 = v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
    if (v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) && v11 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v2 + 8))(v9, v1);
  }

  v13 = sub_10042F0DC(v10);
  if (!v0)
  {
    v14 = v13;
    v24 = _swiftEmptyArrayStorage;
    if (v13 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = 0;
      v10 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v23 = v17;
        sub_100582A84(&v23, &v22);

        if (v22)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v21[1] = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v10 = v24;
        }

        ++v16;
        if (v19 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_27:
  }

  return v10;
}

void _s5CacheVwxx(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

uint64_t *_s5CacheVwca(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v7 = v5;

  return a1;
}

uint64_t *_s5CacheVwta(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

unint64_t sub_10058585C()
{
  result = qword_10094CC20;
  if (!qword_10094CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CC20);
  }

  return result;
}

unint64_t sub_1005858B4()
{
  result = qword_10094CC28;
  if (!qword_10094CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CC28);
  }

  return result;
}

unint64_t sub_10058590C()
{
  result = qword_10094CC30;
  if (!qword_10094CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CC30);
  }

  return result;
}

uint64_t sub_100585994()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CC38);
  v1 = sub_100006654(v0, qword_10094CC38);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100586D04(uint64_t a1)
{
  result = sub_100586DA8(&unk_10094CC70, &type metadata accessor for REMSuggestedAttributesFeatureExtractor);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100586D5C()
{
  result = qword_10093E9B0;
  if (!qword_10093E9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093E9B0);
  }

  return result;
}

uint64_t sub_100586DA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100586DF0(void *a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for RDPublicCloudDatabaseControllerMock();
  inited = swift_initStackObject();
  *(inited + 16) = [objc_opt_self() cancelledError];
  *(inited + 56) = 1;
  v20[3] = v8;
  v20[4] = &off_1008E9260;
  v20[0] = inited;
  type metadata accessor for REMCDTemplateOperationQueueItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  while (1)
  {
    v11 = sub_100426AE4(0, 0, 128);
    v12 = [objc_allocWithZone(NSFetchRequest) init];
    v13 = [ObjCClassFromMetadata entity];
    [v12 setEntity:v13];

    [v12 setAffectedStores:0];
    [v12 setPredicate:v11];

    [v12 setFetchLimit:1];
    if (qword_1009360F0 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 setSortDescriptors:isa];

    [v12 setReturnsObjectsAsFaults:0];
    v15 = NSManagedObjectContext.fetch<A>(_:)();
    if (v4)
    {
      goto LABEL_15;
    }

    v16 = v15;
    if (v15 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_14:

LABEL_15:

        sub_10000607C(v20);
        return;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    if ((v16 & 0xC000000000000001) == 0)
    {
      break;
    }

    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
    v18 = v17;

    v19 = objc_autoreleasePoolPush();
    sub_10058AEF4(v18, v5, a2, v20, 1, a1, &v21);
    v4 = 0;
    objc_autoreleasePoolPop(v19);
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
    goto LABEL_10;
  }

  __break(1u);
  objc_autoreleasePoolPop(v16);
  __break(1u);
}

uint64_t sub_1005870CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CC80);
  v1 = sub_100006654(v0, qword_10094CC80);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100587194()
{
  result = [objc_opt_self() templates];
  qword_10094CC98 = result;
  return result;
}

uint64_t sub_1005871D0()
{
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v23 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v23);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v24);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v21 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v19 = *(v0 + 88);
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v8 + 8);
  v20(v12, v7);
  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10058D250;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F7E00;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v17 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);
  (*(v25 + 8))(v3, v17);
  (*(v22 + 8))(v6, v24);
  v20(v14, v21);
}

uint64_t sub_1005875B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 104);
    if ((v2 & 0xC000000000000001) != 0)
    {
      if (v2 < 0)
      {
        v3 = *(v1 + 104);
      }

      v4 = *(v1 + 104);

      v5 = __CocoaSet.count.getter();

      if (!v5)
      {
LABEL_8:
        sub_1005876C0();
        sub_10058848C(1);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v6 = *(v1 + 64);
          ObjectType = swift_getObjectType();
          (*(v6 + 8))(v1, ObjectType, v6);

          return swift_unknownObjectRelease();
        }
      }
    }

    else if (!*(v2 + 16))
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1005876C0()
{
  v1 = v0;
  v94 = *v0;
  v2 = sub_1000F5104(&qword_10094CDF8, &qword_1007B2518);
  v90 = *(v2 - 8);
  v3 = *(v90 + 64);
  __chkstk_darwin(v2);
  v89 = v69 - v4;
  v5 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  __chkstk_darwin(v5);
  v80 = v69 - v7;
  v8 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  __chkstk_darwin(v8);
  v83 = v69 - v10;
  v11 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v87 = *(v11 - 8);
  v88 = v11;
  v12 = *(v87 + 64);
  __chkstk_darwin(v11);
  v84 = v69 - v13;
  v14 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v74 = v69 - v16;
  v17 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v91 = *(v17 - 8);
  v92 = v17;
  v18 = *(v91 + 64);
  __chkstk_darwin(v17);
  v20 = v69 - v19;
  v77 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v76 = *(v77 - 1);
  v21 = *(v76 + 64);
  __chkstk_darwin(v77);
  v23 = v69 - v22;
  v24 = sub_1000F5104(&unk_10094CE00, &unk_100791BB0);
  v78 = *(v24 - 8);
  v79 = v24;
  v25 = *(v78 + 64);
  __chkstk_darwin(v24);
  v75 = v69 - v26;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = (v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = v1;
  v33 = v1[11];
  *v31 = v33;
  (*(v28 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v27);
  v34 = v33;
  v35 = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v31, v27);
  if (v35)
  {
    v36 = v1[9];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v2;
    v39 = v38;
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v40 = v34;
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100791300;
    *(v41 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v41 + 40) = v42;
    v43 = sub_100441DF8(v36, v37, v39, v41);

    v44 = sub_10038D894(&off_1008E3D38);
    sub_100034610(&unk_1008E3D58);
    v96 = v43;
    *(swift_allocObject() + 16) = v44;
    sub_1000F5104(&unk_10093D170, &unk_100791BC0);
    sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
    v93 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0);
    Publisher.map<A>(_:)();

    v72 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0);
    v45 = v92;
    Publisher.filter(_:)();

    (*(v91 + 8))(v20, v45);
    v46 = v40;
    v96 = v40;
    v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v48 = *(v47 - 8);
    v70 = *(v48 + 56);
    v71 = v48 + 56;
    v49 = v74;
    v70(v74, 1, 1, v47);
    v92 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v69[1] = &protocol conformance descriptor for Publishers.Filter<A>;
    sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0);
    v91 = sub_100006CA4();
    v69[0] = v46;
    v50 = v75;
    v51 = v77;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v49, &qword_100939980, &unk_10079ADA0);
    (*(v76 + 8))(v23, v51);
    v77 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10000CB48(&unk_100937000, &unk_10094CE00, &unk_100791BB0);
    v52 = v79;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v78 + 8))(v50, v52);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v96 = sub_100441A9C(0xD000000000000016, 0x80000001007EB210, 0);
    sub_1000F5104(&unk_10093D140, qword_1007969F0);
    sub_1000F5104(&unk_100936F70, &unk_100791B60);
    sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
    v53 = v80;
    Publisher.map<A>(_:)();
    sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40);
    v55 = v82;
    v54 = v83;
    Publisher.filter(_:)();

    (*(v81 + 8))(v53, v55);
    v56 = v32;
    v57 = v69[0];
    v96 = v69[0];
    v58 = v70;
    v70(v49, 1, 1, v47);
    sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0);
    v59 = v84;
    v60 = v86;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v49, &qword_100939980, &unk_10079ADA0);

    (*(v85 + 8))(v54, v60);
    sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50);
    v61 = v88;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v87 + 8))(v59, v61);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v62 = v56[12];
    v95 = v57;
    v96 = v62;
    v58(v49, 1, 1, v47);

    sub_1000F5104(&qword_10094CE10, qword_1007B2520);
    sub_10000CB48(&qword_10094CE18, &qword_10094CE10, qword_1007B2520);
    v63 = v89;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v49, &qword_100939980, &unk_10079ADA0);

    sub_10000CB48(qword_10094CE20, &qword_10094CDF8, &qword_1007B2518);
    v64 = v73;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v90 + 8))(v63, v64);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    if (qword_100936588 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v65 = type metadata accessor for Logger();
  sub_100006654(v65, qword_10094CC80);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&_mh_execute_header, v66, v67, "RDTemplateOperationQueue: Did set up subscriptions", v68, 2u);
  }
}

uint64_t sub_10058848C(int a1)
{
  v2 = v1;
  v60 = a1;
  v59 = *v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v58 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v52 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v2[11];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_4;
  }

  if (v2[15])
  {
    return result;
  }

  *(v2 + 120) = 1;
  sub_100588B48(0);
  if (qword_100936588 != -1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v57 = v3;
  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10094CC80);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "RDTemplateOperationQueue: Began handling template operation queue items", v21, 2u);
  }

  Date.init()();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = [objc_opt_self() sharedBabysitter];
  v56 = v22;
  if (v23)
  {
    v24 = v23;
    v25 = 16;
    if (v60)
    {
      v25 = 18;
    }

    v26 = 17;
    if (v60)
    {
      v26 = 19;
    }

    v27 = v2[v25];
    v28 = v2[v26];

    v29 = v2[22];
    v30 = String._bridgeToObjectiveC()();
    v31 = [v24 tokenByRegisteringAccount:v29 forOperationWithName:v30];

    *(v22 + 16) = v31;
    v32 = v31;
    v55 = v31 == 0;
    if (v31)
    {
    }

    else
    {
      v33 = objc_opt_self();
      v34 = String._bridgeToObjectiveC()();
      v53 = [v33 babySatErrorWithOperationName:v34];

      sub_1000F5104(&unk_10093D030, &unk_10079C950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;
      v36 = String._bridgeToObjectiveC()();

      *(inited + 48) = v36;
      v37 = sub_10038D9FC(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
      v52[1] = type metadata accessor for Analytics();
      v38 = v2[21];
      v52[0] = v2[20];
      sub_1004646CC(v37);

      v39 = v53;
      static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();
    }
  }

  else
  {
    v55 = 0;
  }

  v40 = [v2[9] newBackgroundContextWithAuthor:RDTemplateOperationAuthor];
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = *(v4 + 16);
  v43 = v58;
  v54 = v8;
  v44 = v8;
  v45 = v57;
  v42(v58, v44, v57);
  v46 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  (*(v4 + 32))(v47 + v46, v43, v45);
  v48 = v47 + ((v46 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v48 = v56;
  *(v48 + 8) = v55;
  v49 = v47 + ((v46 + v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v49 = v40;
  *(v49 + 8) = v60 & 1;
  *(v47 + ((v46 + v5 + 39) & 0xFFFFFFFFFFFFFFF8)) = v59;
  aBlock[4] = sub_10058D2A0;
  aBlock[5] = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F7E78;
  v50 = _Block_copy(aBlock);

  v51 = v40;

  [v51 performBlock:v50];
  _Block_release(v50);

  (*(v4 + 8))(v54, v45);
}

void sub_100588B48(char a1)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936588 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094CC80);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "os_transaction INIT {name: com.apple.remindd.RDTemplateOperationQueue.handleIncompleteOperationQueueItems}", v11, 2u);
  }

  if (*(v1 + 120) != (a1 & 1))
  {
    if (*(v1 + 120))
    {
      v12 = os_transaction_create();
      v13 = *(v1 + 112);
      *(v1 + 112) = v12;
      swift_unknownObjectRelease();
      static os_signpost_type_t.begin.getter();
      if (qword_100936590 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      static os_signpost_type_t.end.getter();
      if (qword_100936590 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v4 + 8))(v7, v3);
      v14 = *(v1 + 112);
      *(v1 + 112) = 0;
      swift_unknownObjectRelease();
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "os_transaction RELEASE {name: com.apple.remindd.RDTemplateOperationQueue.handleIncompleteOperationQueueItems}", v17, 2u);
    }
  }
}

void sub_100588EA0()
{
  v0 = objc_autoreleasePoolPush();
  sub_100588EF8();

  objc_autoreleasePoolPop(v0);
}

void sub_100588EF8()
{
  v0 = [objc_opt_self() sharedBabysitter];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    [v1 giveAccountWithIDAnotherChance:v2];

    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094CC80);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000668C(0xD000000000000035, 0x80000001007FCEA0, &v8);
      _os_log_impl(&_mh_execute_header, v4, v5, "RDTemplateOperationQueue: Reset babysitter upon enabled/disabled CloudKit account(s) for {waiterID: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }
  }
}

void sub_100589098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40) | (*(a2 + 44) << 32);
  if ((v2 & 0xC00000000000) == 0x800000000000)
  {
    v4 = *(a2 + 8);
    v3 = *(a2 + 16);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v3)
    {
      if (v4 == v5 && v3 == v6)
      {

        if ((v2 & 0x10000000000) == 0)
        {
          return;
        }
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v2 & 0x10000000000) == 0 || (v8 & 1) == 0)
        {
          return;
        }
      }

      sub_100589174();
      return;
    }
  }
}

void sub_100589174()
{
  v1 = *v0;
  v2 = [v0[9] newBackgroundContextWithAuthor:RDTemplateOperationAuthor];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v7[4] = sub_10058D3FC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100019200;
  v7[3] = &unk_1008F7FE0;
  v5 = _Block_copy(v7);
  v6 = v2;

  [v6 performBlock:v5];
  _Block_release(v5);
}

uint64_t sub_1005892C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, char a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v93 = result;
  if (!result)
  {
    return result;
  }

  if (a4)
  {
    type metadata accessor for REMCDTemplateOperationQueueItem();
    v73 = sub_100427050(a5);
    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_100006654(v74, qword_10094CC80);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v100[0] = v78;
      *v77 = 134218242;
      *(v77 + 4) = v73;
      *(v77 + 12) = 2080;
      if (a6)
      {
        v79 = 1702195828;
      }

      else
      {
        v79 = 0x65736C6166;
      }

      if (a6)
      {
        v80 = 0xE400000000000000;
      }

      else
      {
        v80 = 0xE500000000000000;
      }

      v81 = sub_10000668C(v79, v80, v100);

      *(v77 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "RDTemplateOperationQueue: Blocked by babysitter. Batch completed all incomplete template operation queue items. {affectedCount: %ld, isOnLaunch: %s}", v77, 0x16u);
      sub_10000607C(v78);
    }

    goto LABEL_64;
  }

  v91 = [objc_allocWithZone(REMStore) initWithDaemonController:*(result + 80)];
  swift_weakInit();
  type metadata accessor for REMCDTemplateOperationQueueItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v87 = 0;
  v90 = a5;
  while (1)
  {
    v18 = sub_100426AE4(0, 0, 128);
    v19 = [objc_allocWithZone(NSFetchRequest) init];
    v20 = [ObjCClassFromMetadata entity];
    [v19 setEntity:v20];

    [v19 setAffectedStores:0];
    [v19 setPredicate:v18];

    [v19 setFetchLimit:1];
    if (qword_1009360F0 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v19 setSortDescriptors:isa];

    [v19 setReturnsObjectsAsFaults:0];
    v22 = NSManagedObjectContext.fetch<A>(_:)();
    v23 = v22;
    if (v22 >> 62)
    {
      break;
    }

    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

LABEL_13:
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        swift_once();
        v10 = type metadata accessor for Logger();
        sub_100006654(v10, qword_10094CC80);
        swift_errorRetain();
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v100[0] = v14;
          *v13 = 136446210;
          swift_getErrorValue();
          v15 = Error.rem_errorDescription.getter();
          v17 = sub_10000668C(v15, v16, v100);

          *(v13 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v11, v12, "RDTemplateOperationQueue: Failed to batch complete all incomplete template operation queue items. {error: %{public}s}", v13, 0xCu);
          sub_10000607C(v14);
        }

        else
        {
        }

        goto LABEL_64;
      }

      v24 = *(v23 + 32);
    }

    v25 = v24;

    v94 = objc_autoreleasePoolPush();
    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10094CC80);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "RDTemplateOperationQueue: Handling incomplete template operation queue item with top priority. {templateOperationQueueItem: %{public}@}", v30, 0xCu);
      sub_1000050A4(v31, &unk_100938E70, &unk_100797230);
    }

    sub_10058B804(v27, v91, v100);
    sub_10058CF80(v100, &v95);
    if (v96)
    {
      sub_100054B6C(&v95, v97);
      v33 = v98;
      v34 = v99;
      sub_10000F61C(v97, v98);
      (*(v34 + 16))(a5, v33, v34);
      sub_10000607C(v97);
    }

    else
    {
      sub_1000050A4(&v95, &unk_10094CDD0, &unk_1007B24F8);
      v35 = v27;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138543362;
        v40 = [v35 objectID];
        *(v38 + 4) = v40;
        *v39 = v40;
        _os_log_impl(&_mh_execute_header, v36, v37, "RDTemplateOperationQueue: Failed to create template operation for template operation queue item. {templateOperationQueueItem.objectID: %{public}@}", v38, 0xCu);
        sub_1000050A4(v39, &unk_100938E70, &unk_100797230);
        a5 = v90;
      }
    }

    v41 = [v27 objectID];
    v97[0] = 0;
    v42 = [a5 existingObjectWithID:v41 error:v97];

    v43 = v97[0];
    if (!v42)
    {
      v55 = v97[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_36;
    }

    v44 = swift_dynamicCastClass();
    v45 = v43;
    if (v44)
    {
      [v44 setIsCompleted:1];
      v97[0] = 0;
      v46 = [a5 save:v97];
      v47 = v97[0];
      if ((v46 & 1) == 0)
      {
        v62 = v97[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
LABEL_36:
        v63 = v27;
        swift_errorRetain();
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v97[0] = v68;
          *v66 = 138543618;
          v69 = [v63 objectID];
          *(v66 + 4) = v69;
          *v67 = v69;
          *(v66 + 12) = 2082;
          swift_getErrorValue();
          v70 = Error.rem_errorDescription.getter();
          v72 = sub_10000668C(v70, v71, v97);

          *(v66 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v64, v65, "RDTemplateOperationQueue: Failed to save managed object context after completing template operation queue item. {templateOperationQueueItem.objectID: %{public}@, error: %{public}s}", v66, 0x16u);
          sub_1000050A4(v67, &unk_100938E70, &unk_100797230);
          a5 = v90;

          sub_10000607C(v68);
        }

        else
        {
        }

        goto LABEL_39;
      }

      v48 = v27;
      v49 = v47;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138543362;
        v54 = [v48 objectID];
        *(v52 + 4) = v54;
        *v53 = v54;
        _os_log_impl(&_mh_execute_header, v50, v51, "RDTemplateOperationQueue: Completed template operation queue item with top priority. {templateOperationQueueItem.objectID: %{public}@}", v52, 0xCu);
        sub_1000050A4(v53, &unk_100938E70, &unk_100797230);
        a5 = v90;
      }

      v87 = 1;
    }

    else
    {

      v56 = v27;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138543362;
        v61 = [v56 objectID];
        *(v59 + 4) = v61;
        *v60 = v61;
        _os_log_impl(&_mh_execute_header, v57, v58, "RDTemplateOperationQueue: Failed to retrieve template operation queue item by objectID. {templateOperationQueueItem.objectID: %{public}@}", v59, 0xCu);
        sub_1000050A4(v60, &unk_100938E70, &unk_100797230);
        a5 = v90;
      }
    }

LABEL_39:
    sub_10058CF80(v100, &v95);
    if (v96)
    {
      sub_100054B6C(&v95, v97);
      sub_10058A864(v97);
      sub_10000607C(v97);
    }

    else
    {
      sub_1000050A4(&v95, &unk_10094CDD0, &unk_1007B24F8);
    }

    [a5 reset];
    sub_1000050A4(v100, &unk_10094CDD0, &unk_1007B24F8);
    objc_autoreleasePoolPop(v94);
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_44:

  swift_weakDestroy();
  if (v87)
  {
    v82 = sub_100427964(a5);
    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_100006654(v83, qword_10094CC80);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 134217984;
      *(v86 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v84, v85, "RDTemplateOperationQueue: Batch deleted completed template operation queue items. {deletionCount: %ld}", v86, 0xCu);
    }

    sub_10058ABD8(v82);
  }

LABEL_64:
  sub_10058A47C(v93, a2, a3);
}

uint64_t sub_10058A47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(a1 + 88);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(v16, a2, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v14 + 32))(v20 + v18, v16, v13);
  *(v20 + v19) = v23[0];
  aBlock[4] = sub_10058D36C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F7F68;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v8, v5);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_10058A864(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v20 = *(v13 + 88);
      v14 = swift_allocObject();
      swift_weakInit();
      sub_10000A87C(a1, v23);
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v19 = v14;
      sub_100054B6C(v23, v15 + 24);
      aBlock[4] = sub_10058D360;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008F7F18;
      v18 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v21 = _swiftEmptyArrayStorage;
      sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      v17 = v7;
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v16 = v18;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);
      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v17);
    }
  }

  return result;
}

uint64_t sub_10058ABD8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    v18[1] = *(v1 + 88);
    v14 = swift_allocObject();
    v18[0] = v4;
    v19 = v8;
    v15 = v14;
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a1;
    aBlock[4] = sub_10058D358;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F7EC8;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v18[0] + 8))(v7, v3);
    (*(v9 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_10058AEF4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7)
{
  if (qword_100936588 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094CC80);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDTemplateOperationQueue: Handling incomplete template operation queue item with top priority. {templateOperationQueueItem: %{public}@}", v13, 0xCu);
    sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
  }

  sub_10058B804(v10, a3, v77);
  sub_10058CF80(v77, &v72);
  v16 = &selRef_hack_willSaveHandled;
  if (v73)
  {
    sub_100054B6C(&v72, v74);
    v17 = v75;
    v18 = v76;
    sub_10000F61C(v74, v75);
    v19 = a6;
    (*(v18 + 16))(a6, v17, v18);
    if (v71)
    {
      v20 = v10;
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v72 = v25;
        *v23 = 138543618;
        v26 = [v20 objectID];
        *(v23 + 4) = v26;
        *v24 = v26;
        *(v23 + 12) = 2082;
        swift_getErrorValue();
        v27 = Error.rem_errorDescription.getter();
        v29 = sub_10000668C(v27, v28, &v72);

        *(v23 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "RDTemplateOperationQueue: Failed to complete template operation queue item. {templateOperationQueueItem.objectID: %{public}@, error: %{public}s}", v23, 0x16u);
        sub_1000050A4(v24, &unk_100938E70, &unk_100797230);

        sub_10000607C(v25);

        v16 = &selRef_hack_willSaveHandled;
        v19 = a6;
      }

      else
      {

        v19 = a6;
        v16 = &selRef_hack_willSaveHandled;
      }
    }

    sub_10000607C(v74);
  }

  else
  {
    sub_1000050A4(&v72, &unk_10094CDD0, &unk_1007B24F8);
    v30 = v10;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    v19 = a6;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      v35 = [v30 objectID];
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "RDTemplateOperationQueue: Failed to create template operation for template operation queue item. {templateOperationQueueItem.objectID: %{public}@}", v33, 0xCu);
      sub_1000050A4(v34, &unk_100938E70, &unk_100797230);
    }
  }

  v36 = [v10 v16[433]];
  v74[0] = 0;
  v37 = [v19 existingObjectWithID:v36 error:v74];

  v38 = v74[0];
  if (!v37)
  {
    v50 = v74[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_26;
  }

  type metadata accessor for REMCDTemplateOperationQueueItem();
  v39 = swift_dynamicCastClass();
  v40 = v38;
  if (v39)
  {
    [v39 setIsCompleted:1];
    v74[0] = 0;
    v41 = [v19 save:v74];
    v42 = v74[0];
    if (v41)
    {
      *a7 = 1;
      v43 = v10;
      v44 = v42;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138543362;
        v49 = [v43 v16[433]];
        *(v47 + 4) = v49;
        *v48 = v49;
        _os_log_impl(&_mh_execute_header, v45, v46, "RDTemplateOperationQueue: Completed template operation queue item with top priority. {templateOperationQueueItem.objectID: %{public}@}", v47, 0xCu);
        sub_1000050A4(v48, &unk_100938E70, &unk_100797230);
      }

      goto LABEL_29;
    }

    v57 = v74[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_26:
    v58 = v10;
    swift_errorRetain();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v74[0] = v63;
      *v61 = 138543618;
      v64 = [v58 objectID];
      *(v61 + 4) = v64;
      *v62 = v64;
      *(v61 + 12) = 2082;
      swift_getErrorValue();
      v65 = Error.rem_errorDescription.getter();
      v67 = sub_10000668C(v65, v66, v74);

      *(v61 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v59, v60, "RDTemplateOperationQueue: Failed to save managed object context after completing template operation queue item. {templateOperationQueueItem.objectID: %{public}@, error: %{public}s}", v61, 0x16u);
      sub_1000050A4(v62, &unk_100938E70, &unk_100797230);

      sub_10000607C(v63);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v51 = v10;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138543362;
    v56 = [v51 v16[433]];
    *(v54 + 4) = v56;
    *v55 = v56;
    _os_log_impl(&_mh_execute_header, v52, v53, "RDTemplateOperationQueue: Failed to retrieve template operation queue item by objectID. {templateOperationQueueItem.objectID: %{public}@}", v54, 0xCu);
    sub_1000050A4(v55, &unk_100938E70, &unk_100797230);
  }

LABEL_29:
  [v19 reset];
  return sub_1000050A4(v77, &unk_10094CDD0, &unk_1007B24F8);
}

void sub_10058B804(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v91 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v91 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v91 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v91 - v21;
  __chkstk_darwin(v20);
  v24 = &v91 - v23;
  v25 = [a1 operationTypeRawValue];
  if (v25 > 2)
  {
    if (v25 - 3 >= 2)
    {
      if (v25 == 5)
      {
        v56 = type metadata accessor for RDTemplateOperationBatchDeleteCachedPublicTemplates();
        v57 = swift_allocObject();
        *(v57 + 16) = 4;
        *(v57 + 24) = 0;
        *(a3 + 24) = v56;
        *(a3 + 32) = &off_1008EC9D8;
        *a3 = v57;
        return;
      }

      goto LABEL_35;
    }

    v26 = [a1 templateIdentifier];
    if (v26)
    {
      v27 = v26;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v6 + 32))(v13, v10, v5);
      v28 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v30 = [v28 objectIDWithUUID:isa];

      (*(v6 + 8))(v13, v5);
      if (v30)
      {
        v31 = sub_100237C88();
        if (v31)
        {
          v32 = v31;
          v33 = [a1 configurationData];
          if (v33)
          {
            v34 = v33;
            v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v36;

            v96 = 0;
            v38 = [v94 fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:&v96];
            v39 = v96;
            if (v38)
            {
              v40 = v38;
              v41 = type metadata accessor for JSONDecoder();
              v42 = *(v41 + 48);
              v43 = *(v41 + 52);
              swift_allocObject();
              v44 = v39;
              JSONDecoder.init()();
              type metadata accessor for REMTemplateConfiguration_Codable();
              sub_10058D258(&unk_10094CDE8, &type metadata accessor for REMTemplateConfiguration_Codable);
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();

              v84 = v96;
              v85 = sub_100237C40();
              if (v85 == 2)
              {
                v86 = type metadata accessor for RDTemplateOperationCopyRemindersFromREMListToTemplate();
                v87 = swift_allocObject();
                *(v87 + 64) = 2;
                *(v87 + 16) = v30;
                *(v87 + 24) = v32;
                *(v87 + 32) = v40;
                *(v87 + 40) = v84;
                v88 = v94;
                *(v87 + 48) = v94;
                *(v87 + 56) = 50;
                v89 = &off_1008EEC30;
              }

              else
              {
                v86 = type metadata accessor for RDTemplateOperationCopyRemindersFromCustomSmartListToTemplate();
                v87 = swift_allocObject();
                *(v87 + 64) = 3;
                *(v87 + 16) = v30;
                *(v87 + 24) = v32;
                *(v87 + 32) = v40;
                *(v87 + 40) = v84;
                v88 = v94;
                *(v87 + 48) = v94;
                *(v87 + 56) = 50;
                v89 = &off_1008E7F38;
              }

              *(a3 + 24) = v86;
              *(a3 + 32) = v89;
              v90 = v88;
              sub_10001BBA0(v35, v37);
              *a3 = v87;
              return;
            }

            v66 = v96;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            if (qword_100936588 != -1)
            {
              swift_once();
            }

            v67 = type metadata accessor for Logger();
            sub_100006654(v67, qword_10094CC80);
            v68 = a1;
            v69 = v30;
            v70 = v32;
            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v93 = v37;
              v74 = v73;
              v75 = swift_slowAlloc();
              v94 = v35;
              v76 = v75;
              v92 = swift_slowAlloc();
              v96 = v92;
              *v74 = 136315650;
              v91 = v71;
              v95 = sub_100237C40();
              sub_1000F5104(&qword_10094CDE0, &unk_1007B2508);
              v77 = Optional.descriptionOrNil.getter();
              v79 = sub_10000668C(v77, v78, &v96);

              *(v74 + 4) = v79;
              *(v74 + 12) = 2114;
              *(v74 + 14) = v69;
              *(v74 + 22) = 2114;
              *(v74 + 24) = v70;
              *v76 = v30;
              v76[1] = v32;
              v80 = v69;
              v81 = v70;
              v82 = v72;
              v83 = v91;
              _os_log_impl(&_mh_execute_header, v91, v82, "RDTemplateOperationQueue: Cannot create template operation without primary active CloudKit account {operationType: %s, templateObjectID: %{public}@, listObjectID: %{public}@}", v74, 0x20u);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              sub_10000607C(v92);

              sub_10001BBA0(v94, v93);
            }

            else
            {
              sub_10001BBA0(v35, v37);
            }

            goto LABEL_35;
          }

          v30 = v32;
        }
      }
    }

LABEL_35:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if (v25 == 1)
  {
    v58 = [a1 templateIdentifier];
    if (!v58)
    {
      goto LABEL_35;
    }

    v59 = v58;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v24, v22, v5);
    v60 = objc_opt_self();
    v61 = UUID._bridgeToObjectiveC()().super.isa;
    v62 = [v60 objectIDWithUUID:v61];

    (*(v6 + 8))(v24, v5);
    if (!v62)
    {
      goto LABEL_35;
    }

    v63 = sub_100237C88();
    if (!v63)
    {

      goto LABEL_35;
    }

    v64 = v63;
    v52 = type metadata accessor for RDTemplateOperationCopyRemindersFromTemplateToREMList();
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = v62;
    *(v53 + 32) = v64;
    v54 = v94;
    *(v53 + 40) = v94;
    *(v53 + 48) = 50;
    v55 = &off_1008F3760;
  }

  else
  {
    if (v25 != 2)
    {
      goto LABEL_35;
    }

    v45 = [a1 templateIdentifier];
    if (!v45)
    {
      goto LABEL_35;
    }

    v46 = v45;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v19, v16, v5);
    v47 = objc_opt_self();
    v48 = UUID._bridgeToObjectiveC()().super.isa;
    v49 = [v47 objectIDWithUUID:v48];

    (*(v6 + 8))(v19, v5);
    if (!v49)
    {
      goto LABEL_35;
    }

    v50 = sub_100237C88();
    if (!v50)
    {

      goto LABEL_35;
    }

    v51 = v50;
    v52 = type metadata accessor for RDTemplateOperationCopyRemindersFromPublicTemplateToREMList();
    v53 = swift_allocObject();
    *(v53 + 16) = 1;
    *(v53 + 24) = v49;
    *(v53 + 32) = v51;
    v54 = v94;
    *(v53 + 40) = v94;
    *(v53 + 48) = 50;
    v55 = &off_1008EF7C8;
  }

  *(a3 + 24) = v52;
  *(a3 + 32) = v55;
  *a3 = v53;

  v65 = v54;
}

uint64_t sub_10058C2E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 64);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v4, a2, ObjectType, v5);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10058C398(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 64);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(v4, a2, ObjectType, v5);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_10058C448(uint64_t a1, void *a2, void *a3)
{
  v64 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v61 = v10;
    if (qword_1009367D8 != -1)
    {
      swift_once();
    }

    v20 = sub_100013674(qword_1009752E8);
    if (!v20)
    {
      goto LABEL_21;
    }

    v57 = v8;
    v58 = v9;
    v59 = v5;
    v60 = v4;
    v62 = v20;
    v21 = sub_100426AE4(&off_1008E3D68, 0, 1);
    type metadata accessor for REMCDTemplateOperationQueueItem();
    v22 = [objc_allocWithZone(NSFetchRequest) init];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [ObjCClassFromMetadata entity];
    [v22 setEntity:v24];

    [v22 setAffectedStores:0];
    [v22 setPredicate:v21];

    v35 = NSManagedObjectContext.count<A>(for:)();
    if (v35 > 0)
    {

      return;
    }

    v36 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext:a2];
    [v36 setAccount:v62];
    [v36 setOperationTypeRawValue:5];
    [v36 setPriorityRawValue:10];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v17, v13);
    [v36 setCreationDate:isa];

    aBlock[0] = 0;
    if ([a2 save:aBlock])
    {
      v38 = qword_100936588;
      v39 = aBlock[0];
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100006654(v40, qword_10094CC80);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 136315138;
        v45 = sub_1001424F8();
        v47 = sub_10000668C(v45, v46, aBlock);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "%s: Inserted template operation queue item for batch deleting cached public templates", v43, 0xCu);
        sub_10000607C(v44);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v48 = *(v19 + 64);
        ObjectType = swift_getObjectType();
        (*(v48 + 32))(v19, v36, ObjectType, v48);
        swift_unknownObjectRelease();
      }

      v64 = *(v19 + 88);
      v50 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_10058D408;
      aBlock[5] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008F8008;
      v51 = _Block_copy(aBlock);

      v52 = v63;
      static DispatchQoS.unspecified.getter();
      v66 = _swiftEmptyArrayStorage;
      sub_10058D258(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
      v53 = v57;
      v54 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v51);

      (*(v59 + 8))(v53, v54);
      (*(v61 + 8))(v52, v58);

LABEL_21:

      return;
    }

    v55 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100936588 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10094CC80);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v28 = 136315394;
      aBlock[0] = v64;
      swift_getMetatypeMetadata();
      v29 = String.init<A>(describing:)();
      v31 = sub_10000668C(v29, v30, &v66);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2082;
      swift_getErrorValue();
      v32 = Error.rem_errorDescription.getter();
      v34 = sub_10000668C(v32, v33, &v66);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s: Failed to insert template operation queue item for batch deleting cached public templates {error: %{public}s}", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_10058CD74()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10058848C(0);
  }

  return result;
}

id sub_10058CE54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDTemplateOperationQueue.BabysitTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10058CE8C()
{
  sub_10000607C((v0 + 16));
  sub_1000536E0(v0 + 56);

  v1 = *(v0 + 96);

  v2 = *(v0 + 104);

  v3 = *(v0 + 112);
  swift_unknownObjectRelease();
  v4 = *(v0 + 136);

  v5 = *(v0 + 152);

  v6 = *(v0 + 168);

  return v0;
}

uint64_t sub_10058CF04()
{
  sub_10058CE8C();

  return swift_deallocClassInstance();
}

uint64_t sub_10058CF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10094CDD0, &unk_1007B24F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10058CFF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + 120);
    *(v12 + 120) = 0;
    sub_100588B48(v13);
  }

  if (qword_100936588 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094CC80);
  (*(v4 + 16))(v10, a2, v3);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v19 = v18;
    v20 = *(v4 + 8);
    v20(v8, v3);
    v20(v10, v3);
    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "RDTemplateOperationQueue: Finished handling template operation queue items {elapsedSeconds: %f}", v17, 0xCu);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }
}

uint64_t sub_10058D258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10058D2A0()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005892C0(v4, v0 + v2, v6, v7, v9, v10);
}

void sub_10058D36C()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10058CFF0(v3, v0 + v2);
}

uint64_t sub_10058D440(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *(a5 + 8);
  if ((static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = a1[1];
  v13 = a2[1];
  type metadata accessor for Array();
  swift_getWitnessTable();
  if ((static Dictionary<>.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = a1[2];
  v15 = a2[2];
  v16 = *(a6 + 8);
  if (static Dictionary<>.== infix(_:_:)() & 1) != 0 && (v17 = a1[3], v18 = a2[3], (static Dictionary<>.== infix(_:_:)()))
  {
    v19 = a1[4];
    v20 = a2[4];
    v21 = static Set.== infix(_:_:)();
  }

  else
  {
LABEL_6:
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_10058D590(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_10058D65C(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 64) <= *(v4 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(v5 + 64);
  }

  v7 = (*(v5 + 80) | *(v4 + 80));
  if (v7 > 7 || (v6 + 1) > 0x18 || ((*(v5 + 80) | *(v4 + 80)) & 0x100000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v7 + 16) & ~v7));

    return v3;
  }

  v11 = *(a2 + v6);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v6 <= 3)
    {
      v13 = v6;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

LABEL_24:
      v15 = (v14 | (v12 << (8 * v6))) + 2;
      v11 = v14 + 2;
      if (v6 < 4)
      {
        v11 = v15;
      }

      goto LABEL_26;
    }

    if (v13)
    {
      v14 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v11 == 1)
  {
    (*(v5 + 16))(a1);
    *(v3 + v6) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v6) = 0;
  }

  return v3;
}

uint64_t sub_10058D818(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 24) - 8;
  v3 = *v2;
  v4 = *(*v2 + 64);
  if (v4 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v4 = *(*(*(a2 + 16) - 8) + 64);
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_17:
  if (v5 == 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = *(*(a2 + 16) - 8);
  }

  if (v5 == 1)
  {
    v11 = *(a2 + 24);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  return (*(v10 + 8))();
}

uint64_t sub_10058D93C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 < 2)
  {
    goto LABEL_18;
  }

  if (v6 <= 3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 4;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = *a2;
  }

  else if (v9 == 2)
  {
    v10 = *a2;
  }

  else if (v9 == 3)
  {
    v10 = *a2 | (a2[2] << 16);
  }

  else
  {
    v10 = *a2;
  }

  v11 = (v10 | (v8 << (8 * v6))) + 2;
  v7 = v10 + 2;
  if (v6 < 4)
  {
    v7 = v11;
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
    v13 = *(a3 + 24);
  }

  else
  {
    v13 = *(a3 + 16);
  }

  (*(v5 + 16))(a1);
  *(a1 + v6) = v12;
  return a1;
}

unsigned __int8 *sub_10058DA98(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = *(a2 + v9);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 16))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t sub_10058DCA8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 < 2)
  {
    goto LABEL_18;
  }

  if (v6 <= 3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 4;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = *a2;
  }

  else if (v9 == 2)
  {
    v10 = *a2;
  }

  else if (v9 == 3)
  {
    v10 = *a2 | (a2[2] << 16);
  }

  else
  {
    v10 = *a2;
  }

  v11 = (v10 | (v8 << (8 * v6))) + 2;
  v7 = v10 + 2;
  if (v6 < 4)
  {
    v7 = v11;
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
    v13 = *(a3 + 24);
  }

  else
  {
    v13 = *(a3 + 16);
  }

  (*(v5 + 32))(a1);
  *(a1 + v6) = v12;
  return a1;
}

unsigned __int8 *sub_10058DE04(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = *(a2 + v9);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 32))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t sub_10058E014(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_10058E13C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_10058E304(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_10058E3B4(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    v5 = *(*(a3 + 24) - 8);
    if (*(v5 + 64) <= *(*(*(a3 + 16) - 8) + 64))
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = *(v5 + 64);
    }

    v7 = a2 - 2;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 2;
      if (v6)
      {
        v9 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v6 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 2;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    v3 = *(*(a3 + 24) - 8);
    v4 = *(*(*(a3 + 16) - 8) + 64);
    if (*(v3 + 64) > v4)
    {
      v4 = *(v3 + 64);
    }

    a1[v4] = a2;
  }
}

uint64_t sub_10058E510()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CF30);
  v1 = sub_100006654(v0, qword_10094CF30);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10058E5D8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 24);
  aBlock[4] = sub_100590608;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F8228;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_10058E85C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 24);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_100936598 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10094CF30);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "ICCCU: Starting ICCloudConfigurationUpdater", v13, 2u);
  }

  sub_10058EA24(v14);
}

void sub_10058EA24(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v44 = &v37 - v5;
  v7 = *(v6 + 88);
  v42 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = type metadata accessor for Optional();
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v45);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + 3);
  *v19 = v20;
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14, v17);
  v41 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v21 = v7;
  v22 = *(*v1 + 120);
  swift_beginAccess();
  v23 = v45;
  (*(v8 + 16))(v13, &v1[v22], v45);
  v24 = *(AssociatedTypeWitness - 8);
  v25 = (*(v24 + 48))(v13, 1);
  (*(v8 + 8))(v13, v23);
  if (v25 == 1)
  {
    (*(v3 + 16))(v44, &v1[*(*v1 + 128)], v2);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v2;
    v27[3] = v21;
    v27[4] = v26;
    v40 = v8;
    v28 = v42;
    v38 = *(v42 + 24);

    v39 = v22;
    v29 = v43;
    v30 = v1;
    v31 = v44;
    v38(v41, sub_10059060C, v27, v2, v28);

    (*(v3 + 8))(v31, v2);

    (*(v24 + 56))(v29, 0, 1, AssociatedTypeWitness);
    v32 = v39;
    swift_beginAccess();
    (*(v40 + 40))(&v30[v32], v29, v45);
    swift_endAccess();
    sub_10058F910();
    return;
  }

  if (qword_100936598 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v33 = type metadata accessor for Logger();
  sub_100006654(v33, qword_10094CF30);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "ICCCU: Unexpectedly having an existing non-nil scheduler (xpcActivity) when trying to create and schedule a new one", v36, 2u);
  }
}

id sub_10058EF8C()
{
  if (qword_100936598 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10094CF30);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "ICCCU: Running scheduled background activity, let's check if we should download remote cloud configuration file", v3, 2u);
  }

  return sub_10058F078();
}

id sub_10058F078()
{
  v1 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v66 = &v60[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v60[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v64 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v60[-v12];
  __chkstk_darwin(v14);
  v16 = &v60[-v15];
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = v0[3];
  *v22 = v23;
  (*(v18 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v17, v20);
  v24 = v23;
  ObjectType = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v22, v17);
  if ((ObjectType & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v65 = v0[2];
  [v65 cloudConfigurationDownloadThrottleInterval];
  v27 = v26;
  v28 = v0[4];
  v17 = v0[5];
  ObjectType = swift_getObjectType();
  (*(v17 + 8))(ObjectType, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1001AAD5C(v6);
    if (qword_100936598 == -1)
    {
LABEL_4:
      v29 = type metadata accessor for Logger();
      sub_100006654(v29, qword_10094CF30);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "ICCCU: lastCloudConfigurationDownload == nil, downloading remote config", v32, 2u);
      }

LABEL_7:
      v33 = v66;
      Date.init()();
      (*(v8 + 56))(v33, 0, 1, v7);
      (*(v17 + 16))(v33, ObjectType, v17);
      return [v65 downloadRemoteConfiguration];
    }

LABEL_20:
    swift_once();
    goto LABEL_4;
  }

  v35 = v16;
  (*(v8 + 32))(v16, v6, v7);
  Date.timeIntervalSinceNow.getter();
  if (v36 < -v27)
  {
    if (qword_100936598 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10094CF30);
    (*(v8 + 16))(v13, v16, v7);
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67 = v64;
      *v40 = 136446722;
      sub_100054724(&qword_100937010, &type metadata accessor for Date);
      v62 = v38;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v39;
      v43 = v42;
      v44 = v13;
      v45 = *(v8 + 8);
      v63 = v35;
      v45(v44, v7);
      v46 = sub_10000668C(v41, v43, &v67);

      *(v40 + 4) = v46;
      *(v40 + 12) = 1040;
      *(v40 + 14) = 3;
      *(v40 + 18) = 2048;
      *(v40 + 20) = v27;
      v47 = v62;
      _os_log_impl(&_mh_execute_header, v62, v61, "ICCCU: lastCloudConfigurationDownload > configurationInterval, should download remote config {lastCloudConfigurationDownload: %{public}s, throttingInterval: %.*f}", v40, 0x1Cu);
      sub_10000607C(v64);

      v45(v63, v7);
    }

    else
    {

      v58 = *(v8 + 8);
      v58(v13, v7);
      v58(v16, v7);
    }

    goto LABEL_7;
  }

  if (qword_100936598 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100006654(v48, qword_10094CF30);
  v49 = v64;
  (*(v8 + 16))(v64, v16, v7);
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67 = v66;
    *v52 = 136446722;
    sub_100054724(&qword_100937010, &type metadata accessor for Date);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v56 = *(v8 + 8);
    v56(v49, v7);
    v57 = sub_10000668C(v53, v55, &v67);

    *(v52 + 4) = v57;
    *(v52 + 12) = 1040;
    *(v52 + 14) = 3;
    *(v52 + 18) = 2048;
    *(v52 + 20) = v27;
    _os_log_impl(&_mh_execute_header, v50, v51, "ICCCU: lastCloudConfigurationDownload < throttingInterval, not downloading remote config {lastCloudConfigurationDownload: %{public}s, throttingInterval: %.*f}", v52, 0x1Cu);
    sub_10000607C(v66);

    return (v56)(v16, v7);
  }

  else
  {

    v59 = *(v8 + 8);
    v59(v49, v7);
    return (v59)(v16, v7);
  }
}

uint64_t sub_10058F8B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10058EF8C();
  }

  return result;
}

void sub_10058F910()
{
  v1 = *v0;
  v36 = *(*v0 + 88);
  v2 = *(v1 + 80);
  v37 = *(v36 + 8);
  v38 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v39 = &v35 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v0[3];
  *v18 = v19;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v13, v16);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = *(*v0 + 120);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v21, v4);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v8, v4);
    if (qword_100936598 == -1)
    {
LABEL_4:
      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094CF30);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "ICCCU: Unexpectedly could not create an background scheduler (xpcActivity) when trying to schedule a new one", v25, 2u);
      }

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  v26 = v39;
  (*(v9 + 32))(v39, v8, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness))
  {
    if (qword_100936598 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10094CF30);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "ICCCU: Unexpectedly having pending activity on the background scheduler (xpcActivity) when trying to create and schedule a new one", v31, 2u);
    }
  }

  else
  {
    [v0[2] cloudConfigurationDownloadThrottleInterval];
    v33 = v32;
    v34 = swift_getAssociatedConformanceWitness();
    (*(v34 + 24))(AssociatedTypeWitness, v34, v33);
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  (*(v9 + 8))(v26, AssociatedTypeWitness);
}

uint64_t *sub_10058FE60()
{
  v1 = *v0;
  v2 = v0[2];
  swift_unknownObjectRelease();

  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = *(*v0 + 120);
  v5 = *(*(v1 + 88) + 8);
  v6 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);
  (*(*(v6 - 8) + 8))(v0 + *(*v0 + 128), v6);
  return v0;
}

uint64_t sub_10058FF80()
{
  sub_10058FE60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10058FFFC@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 lastCloudConfigurationDownload];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_1005900A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v2 setLastCloudConfigurationDownload:?];
}

uint64_t sub_100590198(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 88) + 8);
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1005902C8(uint64_t a1)
{
  v2 = v1;
  sub_100462F2C(a1, 0.0, 1.0);
  v3 = *(v1 + 16);
  v5 = v4 + 1.0;
  if (qword_100936598 != -1)
  {
    swift_once();
  }

  v6 = v3 * v5;
  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094CF30);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = *(v2 + 16);
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "ICCCU-XPCActivity: Updating scheduler (xpcActivity) criteria {inputDelay: %f, randomizedDelay: %f}", v10, 0x16u);
  }

  v13 = xmmword_1007AA870;
  v14 = v6;
  v15 = 0;
  v16 = 0;
  v17 = 65537;
  v18 = 0;
  v19 = 0x4024000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 33619969;
  v24 = 7;
  v25 = sub_10039363C(&off_1008E36A0);
  v11 = *(v2 + 24);
  sub_1005A46AC(&v13);
}

uint64_t sub_10059047C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10059052C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for RDICCloudConfigurationUpdaterXPCActivity();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();
  v10 = a1;

  v11 = sub_1005A9A28(1, sub_1000FCE88, v9);

  *(v8 + 24) = v11;
  *a4 = v8;
  return result;
}

uint64_t sub_10059060C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10058F8B0();
}

uint64_t sub_10059062C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a1;
  v122 = a3;
  v114 = type metadata accessor for NSFastEnumerationIterator();
  v113 = *(v114 - 8);
  v4 = *(v113 + 64);
  __chkstk_darwin(v114);
  v133 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v121 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v125 = &v110 - v11;
  __chkstk_darwin(v10);
  v128 = &v110 - v12;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v13 = *(PredicateType - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(PredicateType);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v120 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v119 = &v110 - v22;
  v23 = __chkstk_darwin(v21);
  v118 = &v110 - v24;
  v25 = __chkstk_darwin(v23);
  v127 = &v110 - v26;
  v27 = __chkstk_darwin(v25);
  v117 = &v110 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v110 - v30;
  v32 = __chkstk_darwin(v29);
  v115 = &v110 - v33;
  v34 = __chkstk_darwin(v32);
  v116 = &v110 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v110 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v110 - v40;
  __chkstk_darwin(v39);
  v43 = &v110 - v42;
  v44 = type metadata accessor for UUID();
  v45 = *(*(v44 - 8) + 56);
  v124 = v43;
  v45(v43, 1, 1, v44);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
  v135 = a2;
  LOBYTE(v43) = sub_100240F04(v16, a2);
  v46 = *(v13 + 8);
  v123 = v16;
  v134 = v13 + 8;
  v46(v16, PredicateType);
  v131 = v31;
  v126 = v38;
  v130 = v46;
  if (v43)
  {
    v112 = v45;
    v47 = [v129 identifier];
    if (v47)
    {
      v48 = v47;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v50 = v124;
    sub_1000050A4(v124, &unk_100939D90, "8\n\r");
    v45 = v112;
    v112(v41, v49, 1, v44);
    sub_100031B58(v41, v50, &unk_100939D90, "8\n\r");
    v38 = v126;
    v46 = v130;
  }

  v45(v38, 1, 1, v44);
  v51 = v123;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();
  v52 = sub_100240F04(v51, v135);
  v46(v51, PredicateType);
  v53 = v129;
  v54 = v127;
  v55 = v45;
  v56 = v131;
  if (v52)
  {
    v57 = [v129 list];
    if (v57)
    {
      v58 = v57;
      v59 = [v57 identifier];

      v60 = v116;
      if (v59)
      {
        v61 = v115;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = 0;
      }

      else
      {
        v62 = 1;
        v61 = v115;
      }

      v63 = v126;
      sub_1000050A4(v126, &unk_100939D90, "8\n\r");
      v55(v61, v62, 1, v44);
      sub_100031B58(v61, v60, &unk_100939D90, "8\n\r");
      v53 = v129;
      v56 = v131;
    }

    else
    {
      v63 = v126;
      sub_1000050A4(v126, &unk_100939D90, "8\n\r");
      v60 = v116;
      v55(v116, 1, 1, v44);
    }

    sub_100031B58(v60, v63, &unk_100939D90, "8\n\r");
    v54 = v127;
  }

  v55(v56, 1, 1, v44);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
  v64 = sub_100240F04(v51, v135);
  v46(v51, PredicateType);
  v65 = v125;
  if (v64)
  {
    v66 = [v53 account];
    if (v66)
    {
      v67 = v66;
      v68 = [v66 identifier];

      if (v68)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = 0;
      }

      else
      {
        v69 = 1;
      }

      sub_1000050A4(v56, &unk_100939D90, "8\n\r");
      v55(v54, v69, 1, v44);
      v70 = v117;
      sub_100031B58(v54, v117, &unk_100939D90, "8\n\r");
      v65 = v125;
    }

    else
    {
      sub_1000050A4(v56, &unk_100939D90, "8\n\r");
      v70 = v117;
      v55(v117, 1, 1, v44);
    }

    sub_100031B58(v70, v56, &unk_100939D90, "8\n\r");
  }

  v71 = type metadata accessor for Date();
  v72 = *(*(v71 - 8) + 56);
  v72(v128, 1, 1, v71);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
  v73 = sub_100240F04(v51, v135);
  v74 = PredicateType;
  v130(v51, PredicateType);
  if (v73 & 1) != 0 || (static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.partOfDay.getter(), v75 = sub_100240F04(v51, v135), v130(v51, v74), (v75))
  {
    v76 = [v53 displayDateDate];
    if (v76)
    {
      v77 = v76;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v78 = 0;
    }

    else
    {
      v78 = 1;
    }

    v79 = v128;
    sub_1000050A4(v128, &unk_100938850, qword_100795AE0);
    v72(v65, v78, 1, v71);
    sub_100031B58(v65, v79, &unk_100938850, qword_100795AE0);
    LODWORD(v117) = [v53 displayDateIsAllDay];
    v116 = [v53 displayDateUpdatedForSecondsFromGMT];
    LODWORD(v115) = 0;
    v74 = PredicateType;
  }

  else
  {
    v116 = 0;
    LODWORD(v117) = 2;
    LODWORD(v115) = 1;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.location.getter();
  v80 = sub_100240F04(v51, v135);
  v81 = v74;
  v82 = v130;
  v130(v51, v74);
  v83 = v131;
  if ((v80 & 1) != 0 && (v84 = [v53 alarmStorage]) != 0)
  {
    v146 = _swiftEmptyArrayStorage;
    v112 = v84;
    NSOrderedSet.makeIterator()();
    v85 = sub_1002FF4DC();
    v86 = v114;
    dispatch thunk of IteratorProtocol.next()();
    if (v145)
    {
      v111 = 0;
      v125 = _swiftEmptyArrayStorage;
      v87 = &unk_100938870;
      v127 = v85;
      while (1)
      {
        sub_100005EE0(&v144, &v143);
        sub_100005EF0(&v143, &v140);
        sub_1000060C8(0, v87, off_1008D4128);
        if (swift_dynamicCast())
        {
          v88 = v87;
          v89 = v137;
          v90 = [v89 remObjectID];
          if (!v90)
          {

            goto LABEL_50;
          }

          v91 = v90;
          v92 = [v89 account];

          if (!v92)
          {

            goto LABEL_50;
          }

          v93 = [v92 remObjectID];

          if (!v93)
          {

            goto LABEL_49;
          }

          v94 = [v89 trigger];
          if (!v94)
          {

            v139 = 0;
            v137 = 0u;
            v138 = 0u;
            goto LABEL_48;
          }

          v136 = v94;
          sub_1000060C8(0, &unk_100940330, off_1008D4148);
          sub_1000F5104(&qword_10093D488, &qword_10079AF40);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v139 = 0;
            v137 = 0u;
            v138 = 0u;
LABEL_47:

LABEL_48:
            sub_1000050A4(&v137, &qword_10093D490, &qword_10079AF48);
LABEL_49:
            v83 = v131;
LABEL_50:
            v87 = v88;
            goto LABEL_51;
          }

          if (!*(&v138 + 1))
          {
            goto LABEL_47;
          }

          sub_100054B6C(&v137, &v140);
          v95 = v141;
          v96 = v142;
          sub_10000F61C(&v140, v141);
          v97 = v111;
          v98 = (*(v96 + 8))(v93, v91, v95, v96);
          if (!v97)
          {
            v125 = v98;
            v111 = 0;

            sub_10000607C(&v140);
            sub_10000607C(&v143);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v81 = PredicateType;
            v86 = v114;
            if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v99 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v86 = v114;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v125 = v146;
            v83 = v131;
            v87 = v88;
            goto LABEL_52;
          }

          sub_10000607C(&v140);
          v111 = 0;
          v83 = v131;
          v81 = PredicateType;
          v86 = v114;
          v87 = v88;
        }

LABEL_51:
        sub_10000607C(&v143);
LABEL_52:
        dispatch thunk of IteratorProtocol.next()();
        if (!v145)
        {
          goto LABEL_59;
        }
      }
    }

    v125 = _swiftEmptyArrayStorage;
LABEL_59:

    (*(v113 + 8))(v133, v86);
    v53 = v129;
    v82 = v130;
    v100 = v125;
  }

  else
  {
    v100 = 0;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.priorities.getter();
  v101 = sub_100240F04(v51, v135);
  v102 = v81;
  v82(v51, v81);
  v125 = v100;
  if (v101)
  {
    result = [v53 priority];
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v127 = REMReminderPriorityLevelForPriority();
  }

  else
  {
    v127 = 0;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter();
  v104 = sub_100240F04(v51, v135);
  v82(v51, v102);
  if (v104)
  {
    v105 = [v53 flagged] > 0;
  }

  else
  {
    v105 = 2;
  }

  LODWORD(v114) = v105;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.completed.getter();
  v106 = sub_100240F04(v51, v135);

  v82(v51, v102);
  LODWORD(v133) = v101;
  if (v106)
  {
    LODWORD(v135) = [v53 completed];
  }

  else
  {
    LODWORD(v135) = 2;
  }

  v107 = v124;
  sub_100010364(v124, v118, &unk_100939D90, "8\n\r");
  v108 = v126;
  sub_100010364(v126, v119, &unk_100939D90, "8\n\r");
  sub_100010364(v83, v120, &unk_100939D90, "8\n\r");
  v109 = v128;
  sub_100010364(v128, v121, &unk_100938850, qword_100795AE0);
  REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(identifier:listIdentifier:accountIdentifier:displayDateDate:displayDateIsAllDay:displayDateSecondsFromGMT:alarmTriggers:priority:flagged:completed:)();

  sub_1000050A4(v109, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v83, &unk_100939D90, "8\n\r");
  sub_1000050A4(v108, &unk_100939D90, "8\n\r");
  return sub_1000050A4(v107, &unk_100939D90, "8\n\r");
}

uint64_t sub_1005917D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D1A0);
  v1 = sub_100006654(v0, qword_10094D1A0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005918A0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_opt_self() newCloudContainerWithPublicCloudDatabase];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_10059190C(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v68 = a7;
  v69 = a8;
  v65 = a2;
  v66 = a9;
  v67 = a6;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  if (a3)
  {
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10094D1A0);
    (*(v15 + 16))(v18, a5, v14);
    v26 = a1;
    v27 = v65;
    sub_100066F20(v65, 1);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    sub_100067078(v27, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70 = v64;
      v71 = a10;
      *v30 = 136446978;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = sub_10000668C(v31, v32, &v70);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v34 = [v26 recordName];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_10000668C(v35, v37, &v70);

      *(v30 + 14) = v38;
      *(v30 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v40 = v39;
      v41 = *(v15 + 8);
      v41(v21, v14);
      v41(v18, v14);
      *(v30 + 24) = v40;
      *(v30 + 32) = 2082;
      swift_getErrorValue();
      v42 = Error.rem_errorDescription.getter();
      v44 = sub_10000668C(v42, v43, &v70);

      *(v30 + 34) = v44;
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s: [perRecordSaveBlock] Failed to save CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f, error: %{public}s}", v30, 0x2Au);
      swift_arrayDestroy();

      v27 = v65;
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v61 = v27;
    v62 = 1;
  }

  else
  {
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_10094D1A0);
    (*(v15 + 16))(v24, a5, v14);
    v46 = a4;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v70 = v65;
      v71 = a10;
      *v49 = 136446722;
      swift_getMetatypeMetadata();
      v50 = String.init<A>(describing:)();
      v52 = sub_10000668C(v50, v51, &v70);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2082;
      v53 = [v46 recordName];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = sub_10000668C(v54, v56, &v70);

      *(v49 + 14) = v57;
      *(v49 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v59 = v58;
      v60 = *(v15 + 8);
      v60(v21, v14);
      v60(v24, v14);
      *(v49 + 24) = v59;
      _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: Did save CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v49, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v15 + 8))(v24, v14);
    }

    v61 = 0;
    v62 = 0;
  }

  return sub_100592A54(v61, v62, v67, v68, v69, v66);
}

void sub_100591F1C(objc_class *a1, uint64_t a2, void (*a3)(void), void (*a4)(void), uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v125 = a5;
  v126 = a6;
  v124 = a2;
  v127 = a1;
  v12 = *v7;
  v129 = type metadata accessor for Date();
  v13 = *(v129 - 1);
  v14 = *(v13 + 64);
  __chkstk_darwin(v129);
  __chkstk_darwin(v15);
  v17 = &v104 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v104 - v20;
  v22 = v7[2];
  v23 = v7[3];
  v24 = v22(v19);
  if (v24)
  {
    v120 = a3;
    v115 = a4;
    v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v122 = v13;
    v123 = v12;
    v117 = v17;
    v128 = v21;
    v131 = *(v8[4] + 48);
    __chkstk_darwin(v24);
    v113 = v25;
    *(&v104 - 2) = v25;
    *(&v104 - 1) = 1;
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();

    v121 = swift_allocObject();
    *(v121 + 16) = 0;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v27 = sub_100006654(v26, qword_10094D1A0);
    v28 = v127;
    v114 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v31 = 136446466;
      v131 = v123;
      swift_getMetatypeMetadata();
      v32 = String.init<A>(describing:)();
      v34 = sub_10000668C(v32, v33, &v130);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      v35 = [(objc_class *)v28 recordName];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_10000668C(v36, v38, &v130);

      *(v31 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: Will delete CKRecord for publicCloudObject {recordName: %{public}s}", v31, 0x16u);
      swift_arrayDestroy();
    }

    v40 = v128;
    Date.init()();
    v41 = sub_1005918A0();
    sub_1000060C8(0, &qword_10094D268, CKModifyRecordsOperation_ptr);
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v42 = swift_allocObject();
    v43 = v42;
    *(v42 + 16) = xmmword_1007953F0;
    *(v42 + 32) = v28;
    v44 = v28;
    v134.value._rawValue = 0;
    v134.is_nil = v43;
    v45 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v134, v135).super.super.super.super.isa;
    [(objc_class *)v45 setQualityOfService:17];
    [(objc_class *)v45 setQueuePriority:0];

    v46 = v45;
    v47 = [v41 publicCloudDatabase];
    [(objc_class *)v46 setDatabase:v47];

    v48 = v46;
    v49 = [(objc_class *)v48 configuration];
    if (v49)
    {
      v50 = v49;
      [v49 setContainer:v41];

      v51 = [(objc_class *)v48 configuration];
      v52 = v117;
      if (v51)
      {
        v53 = v51;
        v112 = v41;
        [v51 setTimeoutIntervalForRequest:a7];

        v54 = [(objc_class *)v48 configuration];
        v127 = v48;
        if (v54)
        {
          v55 = v54;
          [v54 setTimeoutIntervalForResource:a7];

          v56 = v122;
          v57 = *(v122 + 16);
          v118 = v122 + 16;
          v119 = v57;
          v57(v52, v40, v129);
          v58 = *(v56 + 80);
          v108 = (v58 + 24) & ~v58;
          v59 = (v14 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
          v110 = v59;
          v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
          v111 = v60;
          v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
          v109 = v61;
          v105 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
          v62 = swift_allocObject();
          *(v62 + 16) = v44;
          v107 = *(v56 + 32);
          v107(v62 + ((v58 + 24) & ~v58), v52, v129);
          v63 = v120;
          v64 = v121;
          *(v62 + v59) = v121;
          v65 = (v62 + v60);
          v66 = v115;
          *v65 = v63;
          v65[1] = v66;
          v67 = v113;
          *(v62 + v61) = v113;
          v68 = v44;
          v69 = v123;
          v70 = v105;
          *(v62 + v105) = v123;
          v106 = v68;

          CKModifyRecordsOperation.perRecordDeleteBlock.setter();
          v119(v52, v128, v129);
          v71 = swift_allocObject();
          v72 = v106;
          *(v71 + 16) = v106;
          v73 = v129;
          v107(v71 + v108, v52, v129);
          *(v71 + v110) = v64;
          v74 = (v71 + v111);
          v75 = v128;
          *v74 = v120;
          v74[1] = v66;
          *(v71 + v109) = v67;
          *(v71 + v70) = v69;
          v76 = v72;

          v77 = v75;

          v78 = v127;
          CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
          v131 = 0x6574656C6544;
          v132 = 0xE600000000000000;
          v79._countAndFlagsBits = (*(v126 + 24))(v125);
          String.append(_:)(v79);

          v80 = [objc_allocWithZone(CKOperationGroup) init];
          v81 = String._bridgeToObjectiveC()();

          [v80 setName:v81];

          [v80 setQuantity:1];
          [v80 setExpectedSendSize:1];
          [v80 setExpectedReceiveSize:1];
          [(objc_class *)v78 setGroup:v80];

          v82 = v116;
          v119(v116, v77, v73);
          v83 = v76;
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            *v86 = 136446722;
            v131 = v123;
            swift_getMetatypeMetadata();
            v87 = String.init<A>(describing:)();
            v89 = sub_10000668C(v87, v88, &v130);

            *(v86 + 4) = v89;
            *(v86 + 12) = 2082;
            v90 = [v83 recordName];
            v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v92;

            v94 = sub_10000668C(v91, v93, &v130);

            *(v86 + 14) = v94;
            *(v86 + 22) = 2048;
            v95 = v73;
            v96 = v117;
            Date.init()();
            Date.timeIntervalSince(_:)();
            v98 = v97;
            v99 = *(v122 + 8);
            v100 = v96;
            v73 = v95;
            v99(v100, v95);
            v99(v82, v95);
            *(v86 + 24) = v98;
            _os_log_impl(&_mh_execute_header, v84, v85, "%{public}s: Deleting CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v86, 0x20u);
            swift_arrayDestroy();

            v78 = v127;
            v77 = v128;
          }

          else
          {

            v99 = *(v122 + 8);
            v99(v82, v73);
          }

          v102 = v112;
          v103 = [v112 publicCloudDatabase];
          [v103 addOperation:v78];

          v99(v77, v73);

          return;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v129 = [objc_opt_self() internetNotReachableError];
  a3();
  v101 = v129;
}

uint64_t sub_100592A54(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    v12 = a4(a1, a2 & 1);
    v13 = *(a6 + 48);
    __chkstk_darwin(v12);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
  }

  return result;
}

uint64_t sub_100592B6C(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v68 = a7;
  v69 = a8;
  v65 = a2;
  v66 = a9;
  v67 = a6;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  if (a3)
  {
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10094D1A0);
    (*(v15 + 16))(v18, a5, v14);
    v26 = a1;
    v27 = v65;
    sub_100138D40(v65, 1);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    sub_100138D4C(v27, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70 = v64;
      v71 = a10;
      *v30 = 136446978;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = sub_10000668C(v31, v32, &v70);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v34 = [v26 recordName];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_10000668C(v35, v37, &v70);

      *(v30 + 14) = v38;
      *(v30 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v40 = v39;
      v41 = *(v15 + 8);
      v41(v21, v14);
      v41(v18, v14);
      *(v30 + 24) = v40;
      *(v30 + 32) = 2082;
      swift_getErrorValue();
      v42 = Error.rem_errorDescription.getter();
      v44 = sub_10000668C(v42, v43, &v70);

      *(v30 + 34) = v44;
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s: [perRecordDeleteBlock] Failed to delete CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f, error: %{public}s}", v30, 0x2Au);
      swift_arrayDestroy();

      v27 = v65;
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v61 = v27;
    v62 = 1;
  }

  else
  {
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_10094D1A0);
    (*(v15 + 16))(v24, a5, v14);
    v46 = a4;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v70 = v65;
      v71 = a10;
      *v49 = 136446722;
      swift_getMetatypeMetadata();
      v50 = String.init<A>(describing:)();
      v52 = sub_10000668C(v50, v51, &v70);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2082;
      v53 = [v46 recordName];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = sub_10000668C(v54, v56, &v70);

      *(v49 + 14) = v57;
      *(v49 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v59 = v58;
      v60 = *(v15 + 8);
      v60(v21, v14);
      v60(v24, v14);
      *(v49 + 24) = v59;
      _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: Did delete CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v49, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v15 + 8))(v24, v14);
    }

    v61 = 0;
    v62 = 0;
  }

  return sub_100592A54(v61, v62, v67, v68, v69, v66);
}

void sub_10059317C(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void), uint64_t a7, uint64_t a8, uint64_t a9, const char *a10, uint64_t a11)
{
  v51 = a5;
  v52 = a6;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  if (a2)
  {
    v49 = a11;
    v50 = a7;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10094D1A0);
    (*(v18 + 16))(v24, a4, v17);
    v26 = a3;
    sub_100138D40(a1, 1);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v47 = a10;
      v46 = v28;
      v29 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53[0] = v45;
      v53[1] = a9;
      *v29 = 136446978;
      swift_getMetatypeMetadata();
      v30 = String.init<A>(describing:)();
      v32 = sub_10000668C(v30, v31, v53);
      v48 = a8;
      v33 = v32;

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v34 = [v26 recordName];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_10000668C(v35, v37, v53);

      *(v29 + 14) = v38;
      *(v29 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v40 = v39;
      v41 = *(v18 + 8);
      v41(v21, v17);
      v41(v24, v17);
      *(v29 + 24) = v40;
      *(v29 + 32) = 2082;
      swift_getErrorValue();
      v42 = Error.rem_errorDescription.getter();
      v44 = sub_10000668C(v42, v43, v53);

      *(v29 + 34) = v44;
      a8 = v48;
      _os_log_impl(&_mh_execute_header, v27, v46, v47, v29, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v18 + 8))(v24, v17);
    }

    sub_100592A54(a1, 1, v51, v52, v50, a8);
  }
}

id sub_10059352C(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v129 = a2;
  v130 = a6;
  v128 = a1;
  v131 = *v7;
  sub_1000F514C(&unk_1009399E0, &qword_100795D00);
  v133 = a5;
  v13 = type metadata accessor for Result();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (v115 - v16);
  v135 = type metadata accessor for Date();
  v18 = *(v135 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v135);
  v126 = v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v132 = v115 - v21;
  v23 = __chkstk_darwin(v22);
  v25 = v115 - v24;
  v26 = v7[2];
  v27 = v7[3];
  v28 = v26(v23);
  if ((v28 & 1) == 0)
  {
    *v17 = [objc_opt_self() internetNotReachableError];
    swift_storeEnumTagMultiPayload();
    a3(v17);
    return (*(v14 + 8))(v17, v13);
  }

  v123 = a3;
  v124 = a4;
  v127 = v18;
  v134 = v25;
  v137 = *(v8[4] + 48);
  __chkstk_darwin(v28);
  v122 = v29;
  v115[-2] = v29;
  v115[-1] = 1;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  if (qword_1009365A0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100006654(v30, qword_10094D1A0);
  v32 = v128;
  v119 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    *v35 = 136446466;
    v137 = v131;
    swift_getMetatypeMetadata();
    v36 = String.init<A>(describing:)();
    v38 = sub_10000668C(v36, v37, &v136);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    v39 = [v32 recordName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_10000668C(v40, v42, &v136);

    *(v35 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Will fetch publicCloudObject from public cloud database {recordName: %{public}s}", v35, 0x16u);
    swift_arrayDestroy();
  }

  v44 = v134;
  v45 = v127;
  Date.init()();
  v46 = sub_1005918A0();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007953F0;
  *(v47 + 32) = v32;
  v48 = objc_allocWithZone(CKFetchRecordsOperation);
  sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
  v49 = v32;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v48 initWithRecordIDs:isa];

  v52 = v51;
  [v52 setQualityOfService:17];
  [v52 setQueuePriority:8];

  v53 = v52;
  v54 = [v46 publicCloudDatabase];
  [v53 setDatabase:v54];

  v55 = v53;
  result = [v55 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v57 = result;
  [result setContainer:v46];

  result = [v55 configuration];
  v58 = v132;
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v59 = result;
  v117 = v49;
  v118 = v46;
  [result setTimeoutIntervalForRequest:a7];

  result = [v55 configuration];
  v128 = v55;
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v60 = result;
  [result setTimeoutIntervalForResource:a7];

  v61 = *(v45 + 16);
  v120 = v45 + 16;
  v121 = v61;
  v61(v58, v44, v135);
  v62 = *(v45 + 80);
  v63 = (v62 + 32) & ~v62;
  v116 = v19 + 7;
  v64 = (v19 + 7 + v63) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v70 = v130;
  *(v69 + 16) = v133;
  *(v69 + 24) = v70;
  v115[0] = *(v45 + 32);
  v115[1] = v45 + 32;
  v71 = v69 + v63;
  v72 = v132;
  (v115[0])(v71, v132, v135);
  *(v69 + v64) = v129;
  v73 = v117;
  *(v69 + v65) = v117;
  v74 = v125;
  *(v69 + v66) = v125;
  v75 = (v69 + v67);
  v76 = v124;
  *v75 = v123;
  v75[1] = v76;
  *(v69 + v68) = v122;
  *(v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) = v131;
  v77 = v73;

  CKFetchRecordsOperation.perRecordResultBlock.setter();
  v121(v72, v134, v135);
  v78 = (v62 + 40) & ~v62;
  v79 = (v116 + v78) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v83 = v130;
  v82[2] = v133;
  v82[3] = v83;
  v82[4] = v77;
  (v115[0])(v82 + v78, v72, v135);
  *(v82 + v79) = v74;
  v84 = (v82 + v80);
  v85 = v124;
  *v84 = v123;
  v84[1] = v85;
  *(v82 + v81) = v122;
  v86 = v135;
  v87 = v131;
  *(v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8)) = v131;
  v88 = v87;
  v89 = v77;

  v90 = v128;
  CKFetchRecordsOperation.fetchRecordsResultBlock.setter();
  v137 = 0x6863746546;
  v138 = 0xE500000000000000;
  v91._countAndFlagsBits = (*(v83 + 24))(v133, v83);
  String.append(_:)(v91);

  v92 = [objc_allocWithZone(CKOperationGroup) init];
  v93 = String._bridgeToObjectiveC()();

  [v92 setName:v93];

  [v92 setQuantity:1];
  [v92 setExpectedSendSize:1];
  [v92 setExpectedReceiveSize:1];
  [v90 setGroup:v92];

  v94 = v90;
  v95 = v126;
  v121(v126, v134, v86);
  v96 = v89;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = v88;
    v100 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v137 = v99;
    *v100 = 136446722;
    swift_getMetatypeMetadata();
    v101 = String.init<A>(describing:)();
    v103 = sub_10000668C(v101, v102, &v136);

    *(v100 + 4) = v103;
    *(v100 + 12) = 2082;
    v104 = [v96 recordName];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    v108 = sub_10000668C(v105, v107, &v136);

    *(v100 + 14) = v108;
    *(v100 + 22) = 2048;
    v109 = v132;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v111 = v110;
    v112 = *(v127 + 8);
    v112(v109, v86);
    v112(v95, v86);
    *(v100 + 24) = v111;
    _os_log_impl(&_mh_execute_header, v97, v98, "%{public}s: Fetching CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v100, 0x20u);
    swift_arrayDestroy();
    v94 = v128;
  }

  else
  {

    v112 = *(v127 + 8);
    v112(v95, v86);
  }

  v113 = v118;
  v114 = [v118 publicCloudDatabase];
  [v114 addOperation:v94];

  v112(v134, v86);
}

uint64_t sub_100594144(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    v10 = a3(a1);
    v11 = *(a5 + 48);
    __chkstk_darwin(v10);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
  }

  return result;
}

uint64_t sub_100594258(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v139 = a8;
  v137 = a7;
  v129 = a6;
  v128 = a5;
  v141 = a4;
  v16 = a12;
  v131 = a11;
  v135 = a9;
  v136 = a10;
  sub_1000F514C(&unk_1009399E0, &qword_100795D00);
  v140 = type metadata accessor for Result();
  v138 = *(v140 - 8);
  v17 = *(v138 + 64);
  __chkstk_darwin(v140);
  v134 = &v117[-v18];
  v19 = *(a12 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  v130 = &v117[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  __chkstk_darwin(v26);
  v28 = &v117[-v27];
  __chkstk_darwin(v29);
  __chkstk_darwin(v30);
  v133 = &v117[-v31];
  __chkstk_darwin(v32);
  v36 = &v117[-v35];
  if (a3)
  {
    v132 = a2;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10094D1A0);
    (*(v24 + 16))(v28, v141, v23);
    v38 = v23;
    v39 = a1;
    v40 = v132;
    sub_100066F20(v132, 1);
    v41 = v40;
    v42 = v24;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    sub_100067078(v41, 1);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v126 = a12;
      v46 = v45;
      v141 = swift_slowAlloc();
      v142 = v141;
      *v46 = 136446978;
      v143 = v131;
      swift_getMetatypeMetadata();
      v47 = String.init<A>(describing:)();
      v49 = sub_10000668C(v47, v48, &v142);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2082;
      v50 = [v39 recordName];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_10000668C(v51, v53, &v142);

      *(v46 + 14) = v54;
      *(v46 + 22) = 2048;
      v55 = v133;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v57 = v56;
      v58 = *(v42 + 8);
      v59 = v55;
      v41 = v132;
      v58(v59, v38);
      v58(v28, v38);
      *(v46 + 24) = v57;
      *(v46 + 32) = 2082;
      swift_getErrorValue();
      v60 = Error.rem_errorDescription.getter();
      v62 = sub_10000668C(v60, v61, &v142);

      *(v46 + 34) = v62;
      _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: [perRecordResultBlock] Failed to fetch CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f, error: %{public}s}", v46, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v42 + 8))(v28, v38);
    }

    v87 = v134;
    *v134 = v41;
    v88 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100594144(v87, v137, v139, v135, v136);
    return (*(v138 + 8))(v87, v88);
  }

  else
  {
    v119 = v34;
    v121 = v33;
    v120 = v19;
    v127 = a13;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    v64 = sub_100006654(v63, qword_10094D1A0);
    v122 = *(v24 + 16);
    v122(v36, v141, v23);
    v65 = a1;
    v123 = v64;
    v66 = v23;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    v69 = os_log_type_enabled(v67, v68);
    v125 = v24;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v118 = v68;
      v71 = v70;
      v72 = swift_slowAlloc();
      v126 = a12;
      v142 = v72;
      *v71 = 136446722;
      v143 = v131;
      swift_getMetatypeMetadata();
      v73 = String.init<A>(describing:)();
      v75 = sub_10000668C(v73, v74, &v142);
      v132 = a2;
      v76 = v75;

      *(v71 + 4) = v76;
      *(v71 + 12) = 2082;
      v77 = [v65 recordName];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = sub_10000668C(v78, v80, &v142);

      *(v71 + 14) = v81;
      *(v71 + 22) = 2048;
      v82 = v133;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v84 = v83;
      v85 = *(v24 + 8);
      v86 = v82;
      a2 = v132;
      v85(v86, v66);
      v124 = v85;
      v85(v36, v66);
      *(v71 + 24) = v84;
      _os_log_impl(&_mh_execute_header, v67, v118, "%{public}s: Did fetch CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v71, 0x20u);
      swift_arrayDestroy();
      v16 = v126;
    }

    else
    {

      v124 = *(v24 + 8);
      v124(v36, v66);
    }

    v89 = v66;
    v90 = v127;
    v91 = *(v127 + 8);
    v92 = a2;
    v93 = v130;
    v91(v92, v16, v90);
    v94 = v119;
    v122(v119, v141, v89);
    v95 = v129;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v142 = v141;
      *v98 = 136446722;
      v143 = v131;
      swift_getMetatypeMetadata();
      v99 = String.init<A>(describing:)();
      v101 = v16;
      v102 = sub_10000668C(v99, v100, &v142);

      *(v98 + 4) = v102;
      *(v98 + 12) = 2082;
      v103 = [v95 recordName];
      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;

      v107 = sub_10000668C(v104, v106, &v142);
      v16 = v101;
      v93 = v130;

      *(v98 + 14) = v107;
      *(v98 + 22) = 2048;
      v108 = v133;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v110 = v109;
      v111 = v108;
      v112 = v124;
      v124(v111, v89);
      v112(v94, v89);
      *(v98 + 24) = v110;
      _os_log_impl(&_mh_execute_header, v96, v97, "%{public}s: Did initialize publicCloudObject from CKRecord {recordName: %{public}s, elapsedSeconds: %f}", v98, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v124(v94, v89);
    }

    v114 = v120;
    v115 = v134;
    (*(v120 + 16))(v134, v93, v16);
    v116 = v140;
    swift_storeEnumTagMultiPayload();
    sub_100594144(v115, v137, v139, v135, v136);
    (*(v138 + 8))(v115, v116);
    return (*(v114 + 8))(v93, v16);
  }
}

void sub_100595098(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59 = a6;
  v60 = a7;
  v58 = a5;
  sub_1000F514C(&unk_1009399E0, &qword_100795D00);
  v57 = a10;
  v16 = type metadata accessor for Result();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = *(v55 + 64);
  __chkstk_darwin(v16);
  v19 = (&v50 - v18);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v50 - v26;
  if (a2)
  {
    v53 = a11;
    v54 = a8;
    if (qword_1009365A0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10094D1A0);
    (*(v21 + 16))(v27, a4, v20);
    v29 = a3;
    sub_100138D40(a1, 1);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v52 = v31;
      v32 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61[0] = v51;
      v61[1] = a9;
      *v32 = 136446978;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v35 = sub_10000668C(v33, v34, v61);
      v50 = v30;
      v36 = v35;

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v37 = [v29 recordName];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_10000668C(v38, v40, v61);

      *(v32 + 14) = v41;
      *(v32 + 22) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v43 = v42;
      v44 = *(v21 + 8);
      v44(v24, v20);
      v44(v27, v20);
      *(v32 + 24) = v43;
      *(v32 + 32) = 2082;
      swift_getErrorValue();
      v45 = Error.rem_errorDescription.getter();
      v47 = sub_10000668C(v45, v46, v61);

      *(v32 + 34) = v47;
      v48 = v50;
      _os_log_impl(&_mh_execute_header, v50, v52, "%{public}s: [fetchRecordsResultBlock] Failed to fetch CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f, error: %{public}s}", v32, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v21 + 8))(v27, v20);
    }

    *v19 = a1;
    v49 = v56;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100594144(v19, v58, v59, v60, v54);
    (*(v55 + 8))(v19, v49);
  }
}

uint64_t sub_100595520()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_10059558C(void *a1, void (*a2)(void), uint64_t a3, double a4)
{
  v8 = *v4;
  v9 = sub_10000F61C(a1, a1[3]);

  return sub_100595860(v9, a2, a3, v8, a4);
}

uint64_t sub_100595638(void *a1, void *a2, char a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100594258(a1, a2, a3 & 1, v3 + v10, *(v3 + v11), *(v3 + v12), *(v3 + v13), *(v3 + v14), *(v3 + v14 + 8), *(v3 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v7, v8);
}

void sub_100595740(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100595098(a1, a2 & 1, *(v2 + 32), v2 + v8, *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

id sub_100595860(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, double a5)
{
  v127 = *a4;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v125 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v106 - v14;
  __chkstk_darwin(v16);
  v126 = &v106 - v17;
  __chkstk_darwin(v18);
  v20 = &v106 - v19;
  v21 = type metadata accessor for RDPublicTemplate();
  v134 = v21;
  v135 = &off_1008E60A0;
  v22 = sub_1000103CC(&v133);
  v23 = sub_10042A1BC(a1, v22);
  v24 = *(a4 + 24);
  v25 = (*(a4 + 16))(v23);
  if ((v25 & 1) == 0)
  {
    v49 = [objc_opt_self() internetNotReachableError];
    a2();

    return sub_10000607C(&v133);
  }

  v123 = a2;
  v121 = a3;
  v122 = v15;
  v129 = v10;
  v130 = *(*(a4 + 32) + 48);
  __chkstk_darwin(v25);
  v120 = v26;
  *(&v106 - 2) = v26;
  *(&v106 - 1) = 1;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  v124 = swift_allocObject();
  *(v124 + 16) = 0;
  sub_10000F61C(&v133, v134);
  v27 = *(v21 + 32);
  v28 = sub_10013FBFC();
  if (qword_1009365A0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100006654(v29, qword_10094D1A0);
  v31 = v28;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v128 = v20;
  v119 = v31;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v132[0] = v117;
    *v35 = 136446466;
    v130 = v127;
    swift_getMetatypeMetadata();
    v36 = String.init<A>(describing:)();
    v118 = v11;
    v38 = sub_10000668C(v36, v37, v132);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    v39 = [(objc_class *)v31 recordName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v30;
    v43 = v42;

    v44 = v40;
    v20 = v128;
    v11 = v118;
    v45 = sub_10000668C(v44, v43, v132);
    v30 = v41;

    *(v35 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s: Will save CKRecord for publicCloudObject {recordName: %{public}s}", v35, 0x16u);
    swift_arrayDestroy();
  }

  v46 = v129;
  v47 = v122;
  Date.init()();
  v48 = sub_1005918A0();
  sub_10000F61C(&v133, v134);
  v50 = sub_10013ECF4();
  sub_1000060C8(0, &qword_10094D268, CKModifyRecordsOperation_ptr);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1007953F0;
  *(v51 + 32) = v50;
  v116 = v50;
  v136.value._rawValue = v51;
  v136.is_nil = 0;
  v52 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v136, v137).super.super.super.super.isa;
  [(objc_class *)v52 setQualityOfService:17];
  [(objc_class *)v52 setQueuePriority:8];

  v53 = v52;
  v54 = [v48 publicCloudDatabase];
  [(objc_class *)v53 setDatabase:v54];

  [(objc_class *)v53 setSavePolicy:2];
  v55 = v53;
  result = [(objc_class *)v55 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v57 = result;
  [result setContainer:v48];

  result = [(objc_class *)v55 configuration];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v58 = result;
  v113 = v30;
  v117 = v48;
  [result setTimeoutIntervalForRequest:a5];

  result = [(objc_class *)v55 configuration];
  v126 = v55;
  if (result)
  {
    v59 = result;
    [result setTimeoutIntervalForResource:a5];

    v60 = *(v11 + 16);
    v114 = v11 + 16;
    v115 = v60;
    v60(v47, v20, v46);
    v61 = *(v11 + 80);
    v112 = v61;
    v62 = (v61 + 24) & ~v61;
    v109 = v62;
    v63 = (v12 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = v63;
    v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v111 = v64;
    v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
    v107 = v65;
    v66 = swift_allocObject();
    v67 = v119;
    *(v66 + 16) = v119;
    v118 = v11;
    v108 = *(v11 + 32);
    v108(v66 + v62, v47, v129);
    v68 = v47;
    v69 = v124;
    *(v66 + v63) = v124;
    v70 = (v66 + v64);
    v71 = v121;
    *v70 = v123;
    v70[1] = v71;
    v72 = v120;
    *(v66 + v65) = v120;
    v73 = v127;
    *(v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8)) = v127;
    v74 = v67;

    CKModifyRecordsOperation.perRecordSaveBlock.setter();
    v115(v68, v128, v129);
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    v108(v75 + v109, v68, v129);
    *(v75 + v110) = v69;
    v76 = (v75 + v111);
    *v76 = v123;
    v76[1] = v71;
    *(v75 + v107) = v72;
    *(v75 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8)) = v73;
    v77 = v129;
    v78 = v74;

    v79 = v126;
    CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
    v130 = 1702256979;
    v131 = 0xE400000000000000;
    v80._countAndFlagsBits = CKRecord.recordType.getter();
    String.append(_:)(v80);

    v81 = [objc_allocWithZone(CKOperationGroup) init];
    v82 = String._bridgeToObjectiveC()();

    [v81 setName:v82];

    [v81 setQuantity:1];
    [v81 setExpectedSendSize:1];
    [v81 setExpectedReceiveSize:1];
    [v79 setGroup:v81];

    v83 = v125;
    v115(v125, v128, v77);
    v84 = v78;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v132[0] = v123;
      *v87 = 136446722;
      v130 = v73;
      swift_getMetatypeMetadata();
      v88 = String.init<A>(describing:)();
      v89 = v77;
      v90 = v83;
      v92 = sub_10000668C(v88, v91, v132);

      *(v87 + 4) = v92;
      *(v87 + 12) = 2082;
      v93 = [(objc_class *)v84 recordName];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = sub_10000668C(v94, v96, v132);

      *(v87 + 14) = v97;
      *(v87 + 22) = 2048;
      v98 = v122;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v100 = v99;
      v101 = *(v118 + 8);
      v101(v98, v89);
      v102 = v90;
      v77 = v89;
      v101(v102, v89);
      *(v87 + 24) = v100;
      _os_log_impl(&_mh_execute_header, v85, v86, "%{public}s: Saving CKRecord for publicCloudObject {recordName: %{public}s, elapsedSeconds: %f}", v87, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v101 = *(v118 + 8);
      v101(v83, v77);
    }

    v103 = v117;
    v104 = [v117 publicCloudDatabase];
    v105 = v126;
    [v104 addOperation:v126];

    v101(v128, v77);

    return sub_10000607C(&v133);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1005967A8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, void, unint64_t, uint64_t, void, void, uint64_t, void))
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v11);
  v15 = *(v4 + v13);
  return a4(a1, a2, a3 & 1, *(v4 + 16), v4 + v10, v14, *(v4 + v12), *(v4 + v12 + 8), v15, *(v4 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100596898()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_1005969CC(uint64_t a1, char a2, const char *a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10059317C(a1, a2 & 1, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

size_t sub_100596AB8(unint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v46 = _swiftEmptyArrayStorage;
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      KeyPath = swift_getKeyPath();
      if (a1 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = _swiftEmptyArrayStorage;
      if (v13)
      {
        v43 = KeyPath;
        v44 = v11;
        v45 = _swiftEmptyArrayStorage;
        result = sub_100253218(0, v13 & ~(v13 >> 63), 0);
        if (v13 < 0)
        {
          __break(1u);
          return result;
        }

        v16 = 0;
        v14 = v45;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v17 = *(a1 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = [v17 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v20 = type metadata accessor for UUID();
          (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
          v45 = v14;
          v22 = v14[2];
          v21 = v14[3];
          if (v22 >= v21 >> 1)
          {
            sub_100253218(v21 > 1, v22 + 1, 1);
            v14 = v45;
          }

          ++v16;
          v14[2] = v22 + 1;
          sub_100100FB4(v9, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22);
        }

        while (v13 != v16);
        KeyPath = v43;
        v11 = v44;
      }

      sub_1003EE73C(KeyPath, v14);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v46[2] >= v46[3] >> 1)
      {
        v42 = v46[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v23 = swift_getKeyPath();
    v24 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
    sub_100391CA0(v23, v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v46[2] >= v46[3] >> 1)
    {
      v41 = v46[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_100023B44(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v46[2] >= v46[3] >> 1)
  {
    v38 = v46[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_10094D270, &unk_1007B28A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  v28 = swift_getKeyPath();
  v29 = sub_1003EE760(v28);

  *(inited + 32) = v29;
  v30 = swift_getKeyPath();
  v31 = sub_1003EE78C(v30);

  *(inited + 40) = v31;
  sub_100025060(inited);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v46[2] >= v46[3] >> 1)
  {
    v39 = v46[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_28:
  v32 = swift_getKeyPath();
  sub_1003EE78C(v32);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v46[2] >= v46[3] >> 1)
  {
    v37 = v46[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v26)
  {
    v33 = swift_getKeyPath();
    v34 = [objc_opt_self() localInternalAccountID];
    v35 = [v34 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = type metadata accessor for UUID();
    (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
    sub_1003EE7B4(v33, v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v46[2] >= v46[3] >> 1)
    {
      v40 = v46[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return sub_10000C2B0(v46);
}

void sub_1005970EC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

uint64_t sub_100597228@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1005972E0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

uint64_t sub_10059741C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100975240 = v0;
  return result;
}

uint64_t sub_100597494()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_10012DF40();
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_100975248 = v0;
  return result;
}

void *sub_100597524()
{
  sub_100026EF4(0, 5, 0);
  result = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 0xD000000000000023;
  v4[5] = 0x80000001007F2430;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 0x696669746E656469;
  v7[5] = 0xEA00000000007265;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100026EF4((v8 > 1), v9 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v10;
  v11 = &_swiftEmptyArrayStorage[2 * v9];
  v11[4] = 0xD00000000000001ALL;
  v11[5] = 0x80000001007EA730;
  v12 = _swiftEmptyArrayStorage[3];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v13;
  v14 = &_swiftEmptyArrayStorage[2 * v10];
  v14[4] = 0xD00000000000001ELL;
  v14[5] = 0x80000001007EC560;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_100026EF4((v15 > 1), v16 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = 0x4E79616C70736964;
  v17[5] = 0xEB00000000656D61;
  return result;
}

uint64_t sub_100597980()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

  v1 = *(inited + 32);

  while (1)
  {
    v2 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v3)
    {
      goto LABEL_21;
    }

    v4 = v2;
    v5 = v3;

    v6 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100365788(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100365788((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v10 = *(inited + 40);

      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
  v11 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v12)
  {
LABEL_21:
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&qword_100942F58, qword_1007A76A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = v11;
  v14 = v12;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_100365788(0, *(v6 + 2) + 1, 1, v6);
  }

  v16 = *(v6 + 2);
  v15 = *(v6 + 3);
  if (v16 >= v15 >> 1)
  {
    v6 = sub_100365788((v15 > 1), v16 + 1, 1, v6);
  }

  *(v6 + 2) = v16 + 1;
  v17 = &v6[16 * v16];
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  swift_setDeallocating();
  v18 = *(inited + 16);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_100597C80(uint64_t a1)
{
  swift_getObjectType();
  sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
  v15[0] = String.init<A>(describing:)();
  v15[1] = v2;
  sub_10013BCF4();
  v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32 * v4);
    v6 = *v5;
    v7 = v5[1];
    v9 = v5[2];
    v8 = v5[3];
  }

  else
  {

    Substring.init(_:)();
  }

  v15[0] = a1;
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100791340;
  v11 = static String._fromSubstring(_:)();
  v13 = v12;

  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100006600();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = sub_1000F5104(&qword_10094D310, &qword_1007B2B38);
  *(v10 + 104) = sub_100597E50();
  *(v10 + 72) = v15;
  return String.init(format:_:)();
}

unint64_t sub_100597E50()
{
  result = qword_10094D318;
  if (!qword_10094D318)
  {
    sub_1000F514C(&qword_10094D310, &qword_1007B2B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D318);
  }

  return result;
}

uint64_t sub_100597EB4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D320);
  v1 = sub_100006654(v0, qword_10094D320);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100597F7C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = v2[13];
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v6;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = v2[1];
  v11(v5, v1);
  if (v10)
  {
    sub_1005980FC();
    *v5 = v9;
    v8(v5, v7, v1);
    v12 = _dispatchPreconditionTest(_:)();
    v11(v5, v1);
    if (v12)
    {
      sub_10059910C(0, 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1005980FC()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3 + 13;
  v10 = v3[13];
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v11 = v7;
  v12 = _dispatchPreconditionTest(_:)();
  v15 = v3[1];
  v14 = (v3 + 1);
  v13 = v15;
  v15(v6, v2);
  if ((v12 & 1) == 0)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
    goto LABEL_38;
  }

  v163 = v0;
  v1 = *(v0 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_locationManager);
  v158 = OBJC_IVAR____TtC7remindd17RDLocationManager_queue;
  v16 = v13;
  v17 = *(v1 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v6 = v17;
  v10(v6, v8, v2);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  v16(v6, v2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_86;
  }

  v161 = v1;
  v157 = OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager;
  if (!*(v1 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager))
  {
    if (qword_1009365B8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_10094D320);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "locationManager hasn't started. Not reconciling geofences.", v39, 2u);
    }

    return;
  }

  v152 = v16;
  v153 = v10;
  v160 = v9;
  v154 = v8;
  v155 = v6;
  v151 = v14;
  v156 = v2;
  v20 = *sub_10000F61C((v163 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource), *(v163 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource + 24));

  v22 = sub_10041294C(v21);

  v166 = &_swiftEmptySetSingleton;
  v167 = &_swiftEmptySetSingleton;
  v23 = *(v22 + 16);
  if (v23)
  {
    v2 = (v22 + 48);
    v24 = &_swiftEmptyDictionarySingleton;
    do
    {
      v25 = *(v2 - 2);
      v26 = *(v2 - 1);
      v27 = *v2;
      v2 += 3;
      v28 = v27;
      v29 = v25;
      v30 = v26;
      v31 = sub_10059B1B0(v28);
      v33 = v32;
      v34 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168[0] = v24;
      sub_1002CAE5C(v34, v31, v33, isUniquelyReferenced_nonNull_native);
      v24 = v168[0];
      sub_100378434(v168, v31, v33);

      --v23;
    }

    while (v23);
  }

  else
  {
    v24 = &_swiftEmptyDictionarySingleton;
  }

  v163 = v24;

  v40 = sub_1005082D8();
  v1 = v40;
  if ((v40 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_10059B39C();
    sub_10059B3E8(&qword_10094B2E0, 255, sub_10059B39C);
    Set.Iterator.init(_cocoa:)();
    v1 = v168[0];
    v41 = v168[1];
    v6 = v168[2];
    v14 = v168[3];
    v42 = v168[4];
  }

  else
  {
    v14 = 0;
    v43 = -1 << *(v40 + 32);
    v41 = v40 + 56;
    v6 = ~v43;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v42 = v45 & *(v40 + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v46 = v14;
    v47 = v42;
    v48 = v14;
    if (!v42)
    {
      while (1)
      {
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v48 >= ((v6 + 64) >> 6))
        {
          goto LABEL_31;
        }

        v47 = *(v41 + 8 * v48);
        ++v46;
        if (v47)
        {
          goto LABEL_25;
        }
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_25:
    v49 = (v47 - 1) & v47;
    v50 = *(*(v1 + 48) + ((v48 << 9) | (8 * __clz(__rbit64(v47)))));
    if (!v50)
    {
      break;
    }

    while (1)
    {
      v52 = sub_10059B1B0(v50);
      v54 = v53;
      v2 = v50;
      v55 = v163;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v165 = v55;
      sub_1002CAE5C(v2, v52, v54, v56);
      v163 = v165;
      sub_100378434(&v165, v52, v54);

      v14 = v48;
      v42 = v49;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_27:
      v51 = __CocoaSet.Iterator.next()();
      if (v51)
      {
        v164 = v51;
        sub_10059B39C();
        swift_dynamicCast();
        v50 = v165;
        v48 = v14;
        v49 = v42;
        if (v165)
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

LABEL_31:
  sub_10001B860();
  v2 = v166;
  v6 = v167;
  if (v167[2] <= v166[2] >> 3)
  {
    v165 = v166;

    sub_10019BAF4(v58);

    v1 = v165;
  }

  else
  {

    v1 = sub_10019C4D4(v57, v2);
  }

  if (v2[2] <= *(v6 + 16) >> 3)
  {
    v165 = v6;

    sub_10019BAF4(v2);

    v14 = v165;
  }

  else
  {

    v14 = sub_10019C4D4(v2, v6);
  }

  if (qword_1009365B8 != -1)
  {
    goto LABEL_91;
  }

LABEL_38:
  v147 = type metadata accessor for Logger();
  sub_100006654(v147, qword_10094D320);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  v61 = os_log_type_enabled(v59, v60);
  v159 = v14;
  v162 = v1;
  v144 = v6;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v165 = v14;
    *v62 = 136315138;

    v63 = Set.description.getter();
    v65 = v64;

    v66 = sub_10000668C(v63, v65, &v165);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v59, v60, "reconcileAllGeofences desiredSet = %s", v62, 0xCu);
    sub_10000607C(v14);
  }

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v165 = v14;
    *v69 = 136315138;

    v70 = Set.description.getter();
    v72 = v71;

    v73 = sub_10000668C(v70, v72, &v165);

    *(v69 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v67, v68, "reconcileAllGeofences existingSet = %s", v69, 0xCu);
    sub_10000607C(v14);
  }

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v165 = v14;
    *v76 = 136315138;
    v77 = Set.description.getter();
    v79 = sub_10000668C(v77, v78, &v165);

    *(v76 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v74, v75, "reconcileAllGeofences setToRemove = %s", v76, 0xCu);
    sub_10000607C(v14);
  }

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.debug.getter();

  v82 = os_log_type_enabled(v80, v81);
  v145 = v2;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v165 = v14;
    *v83 = 136315138;
    v84 = Set.description.getter();
    v86 = sub_10000668C(v84, v85, &v165);

    *(v83 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v80, v81, "reconcileAllGeofences setToAdd = %s", v83, 0xCu);
    sub_10000607C(v14);
  }

  v1 = v162;
  v88 = v163;
  v89 = v161;
  v90 = 0;
  v2 = (v162 + 56);
  v91 = 1 << *(v162 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = (v92 & *(v162 + 56));
  v6 = (v91 + 63) >> 6;
  *&v87 = 136315138;
  v143 = v87;
  v146 = v6;
  while (1)
  {
    while (1)
    {
      if (!v93)
      {
        while (1)
        {
          v95 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            __break(1u);
            goto LABEL_83;
          }

          if (v95 >= v6)
          {
            break;
          }

          v94 = v2[v95];
          ++v90;
          if (v94)
          {
            v90 = v95;
            goto LABEL_55;
          }
        }

        v14 = 0;
        v120 = v159;
        v2 = (v159 + 56);
        v121 = 1 << *(v159 + 32);
        v122 = -1;
        if (v121 < 64)
        {
          v122 = ~(-1 << v121);
        }

        v123 = v122 & *(v159 + 56);
        v1 = (v121 + 63) >> 6;
        v124 = v151;
        while (v123)
        {
          v125 = v123;
LABEL_75:
          v123 = (v125 - 1) & v125;
          if (*(v88 + 16))
          {
            v127 = *(v120 + 48);
            v162 = (v125 - 1) & v125;
            v128 = (v127 + ((v14 << 10) | (16 * __clz(__rbit64(v125)))));
            v130 = *v128;
            v129 = v128[1];

            v6 = sub_100005F4C(v130, v129);
            LOBYTE(v130) = v131;

            v123 = v162;
            if (v130)
            {
              v150 = *(*(v88 + 56) + 8 * v6);
              v132 = *&v89[v158];
              v6 = v124;
              v134 = v155;
              v133 = v156;
              *v155 = v132;
              v135 = v154;
              v136 = v153;
              v153(v134, v154, v133);
              v137 = v132;
              v149 = v150;
              LODWORD(v150) = _dispatchPreconditionTest(_:)();
              v138 = v152;
              v152(v134, v133);
              if ((v150 & 1) == 0)
              {
                goto LABEL_89;
              }

              *v134 = v137;
              v136(v134, v135, v133);
              v139 = _dispatchPreconditionTest(_:)();
              v138(v134, v133);
              if ((v139 & 1) == 0)
              {
                goto LABEL_90;
              }

              v89 = v161;
              v140 = *&v161[v157];
              if (!v140)
              {
                goto LABEL_93;
              }

              v124 = v6;
              v141 = v140;
              v142 = v149;
              sub_1005079A0(v141, v89, v149);

              v123 = v162;
              v88 = v163;
              v120 = v159;
            }
          }
        }

        while (1)
        {
          v126 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v126 >= v1)
          {

            return;
          }

          v125 = v2[v126];
          ++v14;
          if (v125)
          {
            v14 = v126;
            goto LABEL_75;
          }
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v94 = v93;
LABEL_55:
      v93 = ((v94 - 1) & v94);
      if (*(v88 + 16))
      {
        v96 = (*(v1 + 48) + ((v90 << 10) | (16 * __clz(__rbit64(v94)))));
        v97 = *v96;
        v98 = v96[1];

        v99 = sub_100005F4C(v97, v98);
        v14 = v100;

        if (v14)
        {
          break;
        }
      }
    }

    v149 = v93;
    v101 = *(*(v88 + 56) + 8 * v99);
    v102 = *&v89[v158];
    v104 = v155;
    v103 = v156;
    *v155 = v102;
    v14 = v154;
    v6 = v160;
    v1 = v153;
    v153(v104, v154, v103);
    v105 = v102;
    v148 = v101;
    LODWORD(v150) = _dispatchPreconditionTest(_:)();
    v106 = v152;
    v152(v104, v103);
    if ((v150 & 1) == 0)
    {
      goto LABEL_87;
    }

    *v104 = v105;
    (v1)(v104, v14, v103);
    v107 = _dispatchPreconditionTest(_:)();
    v106(v104, v103);
    if ((v107 & 1) == 0)
    {
      goto LABEL_88;
    }

    v89 = v161;
    v108 = *&v161[v157];
    if (!v108)
    {
      break;
    }

    v109 = qword_100936368;
    v150 = v108;
    v1 = v162;
    v93 = v149;
    if (v109 != -1)
    {
      swift_once();
    }

    v14 = sub_100006654(v147, qword_10094B210);
    v110 = v148;
    swift_unknownObjectRetain();
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v111, v112))
    {
      v14 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      LODWORD(v148) = v112;
      v114 = v113;
      v165 = v113;
      *v14 = v143;
      v115 = sub_10050992C(v110);
      v117 = v111;
      v118 = sub_10000668C(v115, v116, &v165);

      *(v14 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v117, v148, "stopMonitoring: %s", v14, 0xCu);
      sub_10000607C(v114);

      v1 = v162;
    }

    else
    {
    }

    v88 = v163;
    v6 = v146;
    v119 = v150;
    [v150 stopMonitoringForRegion:{v110, v143}];
  }

  __break(1u);
LABEL_93:
  __break(1u);
}

void sub_10059910C(void *a1, int a2)
{
  v40 = a2;
  v39 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = *sub_10000F61C(&v2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource], *&v2[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource + 24]);

  v13 = sub_10041294C(v12);

  v14 = *(v13 + 16);
  v15 = v2;
  if (v14)
  {
    v36 = v2;
    v49 = _swiftEmptyArrayStorage;
    sub_100253968(0, v14, 0);
    v16 = 0;
    v17 = 0;
    v18 = v49;
    v19 = (v13 + 48);
    v37 = v14;
    v38 = v13;
    while (v16 < *(v13 + 16))
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v42[0] = *(v19 - 2);
      v42[1] = v20;
      v42[2] = v21;
      v22 = v42[0];
      v23 = v20;
      v24 = v21;
      sub_100599CB0(v42, v39, v40 & 1, &v43);
      v41 = v17;

      v25 = v43;
      v26 = v44;
      v27 = v45;
      v28 = v46;
      v29 = v47;
      v30 = v48;
      v49 = v18;
      v32 = v18[2];
      v31 = v18[3];
      if (v32 >= v31 >> 1)
      {
        v35 = v44;
        sub_100253968((v31 > 1), v32 + 1, 1);
        v26 = v35;
        v18 = v49;
      }

      v18[2] = v32 + 1;
      v33 = &v18[5 * v32];
      v33[4] = v25;
      ++v16;
      *(v33 + 5) = v26;
      v33[7] = v27;
      *(v33 + 64) = v28;
      *(v33 + 65) = v29;
      *(v33 + 66) = v30;
      v19 += 3;
      v13 = v38;
      v17 = v41;
      if (v37 == v16)
      {

        v15 = v36;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_10:
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_10029312C(v15, v18, Strong);

  swift_unknownObjectRelease();
}

void sub_10059948C(void (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{
  a1();
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094D320);

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000668C(a3, a4, &v11);
    _os_log_impl(&_mh_execute_header, oslog, v7, "os_transaction RELEASE {name: com.apple.remindd.RDLocationAlarmProducer.%{public}s}", v8, 0xCu);
    sub_10000607C(v9);
  }
}

void sub_100599680()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue];
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v2[13];
  (v9)(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v2[1];
  v11(v6, v1);
  if (v7)
  {
    v32 = v11;
    v33 = v9;
    if (qword_1009365B8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  v13 = sub_100006654(v12, qword_10094D320);
  v14 = v0;
  v31 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v29) = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v18 = 136315138;
    v34 = 60;
    v35 = 0xE100000000000000;
    v36 = v19;
    v20._countAndFlagsBits = sub_100597C80(v14);
    v30 = v14;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 62;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = sub_10000668C(v34, v35, &v36);

    *(v18 + 4) = v22;
    v14 = v30;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting location alarm producer {producer: %s}", v18, 0xCu);
    sub_10000607C(v19);

    v8 = HIDWORD(v29);
  }

  v23 = *&v14[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_locationManager];
  v24 = *(v23 + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  *v6 = v24;
  v33(v6, v8, v1);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v32(v6, v1);
  if (v24)
  {
    if (*(v23 + OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager))
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "locationManager started, reconciling all geofences", v28, 2u);
      }

      sub_100597F7C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100599A00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_1009365B8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10094D320);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "alarmDatabaseDidChange, reconciling all geofences", v13, 2u);
  }

  sub_100597F7C();
}

void sub_100599CB0(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v91 = a4;
  v94 = type metadata accessor for Date();
  v98 = *(v94 - 8);
  v7 = *(v98 + 64);
  v8 = __chkstk_darwin(v94);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v89 = (&v85 - v12);
  v13 = __chkstk_darwin(v11);
  v15 = &v85 - v14;
  __chkstk_darwin(v13);
  v97 = &v85 - v16;
  v17 = type metadata accessor for Calendar();
  v92 = *(v17 - 8);
  v93 = v17;
  v18 = *(v92 + 64);
  __chkstk_darwin(v17);
  v96 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v95 = *a1;
  v90 = v20;
  v99 = v21;
  v22 = [v99 identifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (!a2)
  {

    goto LABEL_17;
  }

  v26 = [a2 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v23 != v27 || v25 != v29)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_7;
    }

LABEL_17:
    v33 = v95;
    v54 = v95;
    v55 = v96;
    static Calendar.current.getter();
    v36 = v97;
    Date.init()();
    v56 = 1;
    goto LABEL_33;
  }

LABEL_7:
  v31 = &selRef_notifyOnEntry;
  if ((a3 & 1) == 0)
  {
    v31 = &selRef_notifyOnExit;
  }

  v32 = [v99 *v31];
  v33 = v95;
  v34 = v95;
  v35 = v96;
  static Calendar.current.getter();
  v36 = v97;
  Date.init()();
  if (v32)
  {
    v37 = [v34 displayDate];
    v38 = v98;
    if (v37)
    {
      v88 = v37;
      v39 = [v37 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = v15;
      v41 = Calendar.isDate(_:inSameDayAs:)();
      v42 = v94;
      if ((v41 & 1) != 0 || (sub_10059B3E8(&qword_1009464D0, 255, &type metadata accessor for Date), (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0))
      {
        if (qword_1009365B8 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_100006654(v57, qword_10094D320);
        (*(v38 + 16))(v10, v15, v42);
        v58 = Logger.logObject.getter();
        v59 = v42;
        v60 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v60))
        {
          v61 = swift_slowAlloc();
          v87 = v15;
          v62 = v61;
          v89 = swift_slowAlloc();
          v100 = v89;
          *v62 = 136315138;
          sub_10059B3E8(&qword_100937010, 255, &type metadata accessor for Date);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = v64;
          v66 = *(v38 + 8);
          v66(v10, v59);
          v67 = sub_10000668C(v63, v65, &v100);

          *(v62 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v58, v60, "Reminder has displayDate that's in the past or same day, firing geofence as active as usual {displayDate.date: %s}", v62, 0xCu);
          sub_10000607C(v89);

          v66(v87, v59);
        }

        else
        {

          v73 = *(v38 + 8);
          v73(v10, v59);
          v73(v15, v59);
        }

        v56 = 0;
      }

      else
      {
        if (qword_1009365B8 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_100006654(v43, qword_10094D320);
        v44 = v89;
        (*(v38 + 16))(v89, v40, v42);
        v45 = v40;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v100 = v86;
          *v48 = 136315138;
          sub_10059B3E8(&qword_100937010, 255, &type metadata accessor for Date);
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v87 = v45;
          v51 = v50;
          v52 = *(v38 + 8);
          v52(v44, v42);
          v53 = sub_10000668C(v49, v51, &v100);

          *(v48 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v46, v47, "Reminder has displayDate that's in the future, firing geofence as passive instead of active. {displayDate.date: %s}", v48, 0xCu);
          sub_10000607C(v86);

          v52(v87, v42);
        }

        else
        {

          v74 = *(v38 + 8);
          v74(v44, v42);
          v74(v45, v42);
        }

        v56 = 1;
      }

      v55 = v96;
      v36 = v97;
      v33 = v95;
    }

    else
    {
      if (qword_1009365B8 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_100006654(v68, qword_10094D320);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      v71 = os_log_type_enabled(v69, v70);
      v33 = v95;
      if (v71)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Reminder has no displayDate, firing geofence as active", v72, 2u);
      }

      v56 = 0;
      v55 = v96;
      v36 = v97;
    }
  }

  else
  {
    v56 = 1;
    v55 = v35;
  }

LABEL_33:
  v75 = v33;
  v76 = v90;
  v77 = sub_1007467B8(v76);
  v79 = v78;
  v81 = v80;
  v83 = v82;

  (*(v98 + 8))(v36, v94);
  (*(v92 + 8))(v55, v93);

  v84 = v91;
  *v91 = v75;
  v84[1] = v77;
  v84[2] = v79;
  v84[3] = v81;
  *(v84 + 32) = v83;
  *(v84 + 33) = v56;
  *(v84 + 34) = 0;
}

void sub_10059A5D8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 structuredLocation];
  v45 = REMStructuredLocation.clCircularRegion.getter();

  v11 = [a1 objectID];
  v12 = [v11 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v9, v4);
  v46 = v13;
  v47 = v15;

  v17._countAndFlagsBits = 47;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  v18 = v46;
  v19 = v47;
  v20 = [v2 objectID];
  v21 = [v20 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v16(v9, v4);
  v46 = v18;
  v47 = v19;
  v25 = v45;

  v26._countAndFlagsBits = v22;
  v26._object = v24;
  String.append(_:)(v26);

  [v25 center];
  v28 = v27;
  v30 = v29;
  [v25 radius];
  v32 = v31;
  v33 = objc_allocWithZone(CLCircularRegion);
  v34 = String._bridgeToObjectiveC()();
  v35 = [v33 initWithCenter:v34 radius:v28 identifier:{v30, v32}];

  [v35 setGeoReferenceFrame:{objc_msgSend(v25, "geoReferenceFrame")}];
  v36 = [v2 proximity];
  if (!v36)
  {

    goto LABEL_13;
  }

  if (v36 == 2)
  {

    v37 = v35;
    [v37 setNotifyOnEntry:0];
    [v37 setNotifyOnExit:1];
    [v37 setConservativeEntry:0];

LABEL_13:
    return;
  }

  if (v36 == 1)
  {

    v38 = v35;
    [v38 setNotifyOnEntry:1];
    [v38 setNotifyOnExit:0];
    v39 = [v2 structuredLocation];
    v40 = [v39 contactLabel];

    if (v40 || (v41 = [v2 structuredLocation], v40 = objc_msgSend(v41, "title"), v41, v40))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (String.containsNameOfHomeLocation.getter())
      {

LABEL_11:
        [v38 setConservativeEntry:1];

        goto LABEL_13;
      }

      v42 = String.containsNameOfWorkLocation.getter();

      if (v42)
      {
        goto LABEL_11;
      }
    }

    v25 = v38;
    goto LABEL_13;
  }

  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100006654(v43, qword_10094D320);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("unknown proximity", 17, 2);
  __break(1u);
}

uint64_t sub_10059AB04(uint64_t a1, uint64_t a2)
{
  result = sub_10059B3E8(&qword_10094D380, a2, type metadata accessor for RDLocationAlarmProducer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10059AB5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v36 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009365B8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094D320);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_10000668C(a2, a3, &aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd.RDLocationAlarmProducer.%{public}s}", v18, 0xCu);
    sub_10000607C(v19);
  }

  aBlock = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  aBlock = 0xD00000000000002ALL;
  v42 = 0x80000001007FD120;
  v20._countAndFlagsBits = a2;
  v20._object = a3;
  String.append(_:)(v20);
  String.utf8CString.getter();

  v21 = os_transaction_create();

  if (v21)
  {
    v22 = swift_allocObject();
    v23 = v35;
    v22[2] = v34;
    v22[3] = v23;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = v21;
    v45 = sub_10059B430;
    v46 = v22;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100019200;
    v44 = &unk_1008F84D8;
    v24 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_10059B3E8(&qword_100936E90, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    swift_unknownObjectRelease();
  }

  else
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_10000668C(a2, a3, &aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "RDLocationAlarmProducer: Couldn't create os_transaction_t for %{public}s", v27, 0xCu);
      sub_10000607C(v28);
    }

    v29 = swift_allocObject();
    v30 = v35;
    *(v29 + 16) = v34;
    *(v29 + 24) = v30;
    v45 = sub_100008D30;
    v46 = v29;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100019200;
    v44 = &unk_1008F8488;
    v31 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_10059B3E8(&qword_100936E90, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);
  }

  (*(v39 + 8))(v10, v7);
  (*(v37 + 8))(v14, v38);
}

uint64_t sub_10059B1B0(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    [v5 center];
    Double.write<A>(to:)();
    v7._countAndFlagsBits = 44;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    [v5 center];
    Double.write<A>(to:)();
    [v5 radius];
    Double.write<A>(to:)();
    [v5 geoReferenceFrame];
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v11._countAndFlagsBits = 95;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 95;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 95;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = v8;
    v16._object = v10;
    String.append(_:)(v16);
  }

  return v3;
}

unint64_t sub_10059B39C()
{
  result = qword_100946540;
  if (!qword_100946540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100946540);
  }

  return result;
}

uint64_t sub_10059B3E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10059B448@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_10059B61C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  v23 = type metadata accessor for RDPermanentlyHiddenReminder();
  v26 = *(v23 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1001A3A2C(*(a2 + 48) + *(v26 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v10);
      sub_1001A3A90(v10, v7);
      v18 = v25(v7);
      if (v3)
      {
        sub_1001A3AF4(v7);
      }

      if (v18)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_1001A3AF4(v7);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v21 = v24;
    sub_1001A3A90(v7, v24);
    v20 = v21;
    v19 = 0;
    return (*(v26 + 56))(v20, v19, 1, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v19 = 1;
        v20 = v24;
        return (*(v26 + 56))(v20, v19, 1, v23);
      }

      v13 = *(a2 + 56 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10059B844(uint64_t a1)
{
  v2 = v1;
  v97 = *v1;
  v4 = sub_1000F5104(&unk_10094D440, &qword_1007B2C60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v99 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = &v93 - v8;
  v101 = type metadata accessor for RDPermanentlyHiddenReminder();
  v109 = *(v101 - 8);
  v9 = *(v109 + 64);
  __chkstk_darwin(v101);
  v107 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v93 - v12;
  __chkstk_darwin(v13);
  v105 = &v93 - v14;
  __chkstk_darwin(v15);
  v98 = &v93 - v16;
  __chkstk_darwin(v17);
  v104 = &v93 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v94 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v96 = &v93 - v24;
  v25 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v93 - v28;
  v30 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v95 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v93 - v34;
  __chkstk_darwin(v36);
  v102 = &v93 - v37;
  __chkstk_darwin(v38);
  v40 = &v93 - v39;
  __chkstk_darwin(v41);
  v100 = &v93 - v42;
  v43 = OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate;
  v44 = *(v26 + 56);
  v103 = v2;
  sub_10012F78C(v2 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, v29);
  v108 = a1;
  sub_10012F78C(a1 + v43, &v29[v44]);
  v45 = *(v20 + 48);
  LODWORD(v26) = v45(&v29[v44], 1, v19);
  v46 = v45(v29, 1, v19);
  if (v26 != 1)
  {
    if (v46 != 1)
    {
      sub_10012F7FC(v29, v40);
      v51 = v102;
      sub_10012F7FC(&v29[v44], v102);
      sub_10012F78C(v40, v35);
      if (v45(v35, 1, v19) == 1)
      {
        sub_1000050A4(v40, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v35, &unk_100938850, qword_100795AE0);
        v48 = v101;
        v49 = v103;
      }

      else
      {
        v52 = *(v20 + 32);
        v53 = v51;
        v54 = v96;
        v52(v96, v35, v19);
        v55 = v53;
        v56 = v95;
        sub_10012F78C(v55, v95);
        if (v45(v56, 1, v19) == 1)
        {
          (*(v20 + 8))(v54, v19);
          sub_1000050A4(v40, &unk_100938850, qword_100795AE0);
          sub_1000050A4(v56, &unk_100938850, qword_100795AE0);
          v48 = v101;
        }

        else
        {
          v57 = v94;
          v52(v94, v56, v19);
          v58 = static Date.> infix(_:_:)();
          v59 = *(v20 + 8);
          v59(v57, v19);
          sub_1000050A4(v40, &unk_100938850, qword_100795AE0);
          v60 = v54;
          v61 = v20;
          v48 = v101;
          if (v58)
          {
            sub_1000050A4(v102, &unk_100938850, qword_100795AE0);
            v62 = v100;
            v52(v100, v60, v19);
            (*(v61 + 56))(v62, 0, 1, v19);
            goto LABEL_9;
          }

          v59(v60, v19);
        }

        v51 = v102;
        v49 = v103;
      }

      v50 = v108;
      sub_10012F7FC(v51, v100);
      goto LABEL_19;
    }

    v47 = &v29[v44];
    goto LABEL_7;
  }

  if (v46 != 1)
  {
    v47 = v29;
LABEL_7:
    sub_10012F7FC(v47, v100);
    goto LABEL_8;
  }

  (*(v20 + 56))(v100, 1, 1, v19);
LABEL_8:
  v48 = v101;
LABEL_9:
  v49 = v103;
  v50 = v108;
LABEL_19:
  v63 = *(v50 + 16);
  v64 = *(v49 + 16);
  v66 = v64 + 56;
  v65 = *(v64 + 56);
  v111 = v63;
  v112 = _swiftEmptySetSingleton;
  v67 = 1 << *(v64 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v65;
  v70 = (v67 + 63) >> 6;
  v102 = v109 + 48;
  v103 = v63;

  v108 = v64;

  v72 = 0;
  for (i = v98; ; result = sub_1001A3AF4(i))
  {
    v77 = v48;
    if (!v69)
    {
      break;
    }

LABEL_30:
    v79 = v109;
    v80 = v104;
    sub_1001A3A2C(*(v108 + 48) + *(v109 + 72) * (__clz(__rbit64(v69)) | (v72 << 6)), v104);
    v81 = sub_1001A3A90(v80, i);
    __chkstk_darwin(v81);
    *(&v93 - 2) = i;
    v82 = v110;
    sub_10059B61C(sub_10026017C, v103, v110);
    if ((*(v79 + 48))(v82, 1, v77) == 1)
    {
      sub_1000050A4(v110, &unk_10094D440, &qword_1007B2C60);
LABEL_23:
      v74 = v107;
      sub_1001A3A2C(i, v107);
      v75 = v106;
      sub_10037E7F4(v106, v74);
      v76 = v75;
      v48 = v77;
      goto LABEL_24;
    }

    v83 = v105;
    sub_1001A3A90(v110, v105);
    v84 = *(v77 + 20);
    if ((static Date.> infix(_:_:)() & 1) == 0)
    {
      sub_1001A3AF4(v83);
      goto LABEL_23;
    }

    v85 = v107;
    sub_1001A3A2C(v83, v107);
    v86 = v106;
    sub_10037E7F4(v106, v85);
    sub_1001A3AF4(v86);
    v87 = v99;
    sub_10019F22C(v99);
    v88 = v87;
    v48 = v101;
    sub_1000050A4(v88, &unk_10094D440, &qword_1007B2C60);
    v76 = v105;
LABEL_24:
    v69 &= v69 - 1;
    sub_1001A3AF4(v76);
  }

  while (1)
  {
    v78 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v78 >= v70)
    {

      sub_1003562D4(v111);
      v89 = v112;
      v90 = *(v97 + 48);
      v91 = *(v97 + 52);
      v92 = swift_allocObject();
      *(v92 + 16) = v89;
      sub_10012F7FC(v100, v92 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate);
      return v92;
    }

    v69 = *(v66 + 8 * v78);
    ++v72;
    if (v69)
    {
      v72 = v78;
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10059C178()
{
  v1 = v0[2];

  sub_1000050A4(v0 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, &unk_100938850, qword_100795AE0);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDRecentlyDeletedInfo()
{
  result = qword_10094D3B0;
  if (!qword_10094D3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10059C248()
{
  sub_100140DD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10059C2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  sub_1005A4F78(*(a1 + 16), *(a2 + 16));
  if ((v17 & 1) == 0)
  {
    v21 = 0;
    return v21 & 1;
  }

  v18 = OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate;
  v19 = *(v13 + 48);
  sub_10012F78C(a1 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, v16);
  sub_10012F78C(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_10012F78C(v16, v12);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v19], v4);
      sub_1002D81D8();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_8;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
LABEL_8:
    sub_1000050A4(v16, &qword_100938C18, &qword_1007957A0);
    v21 = 0;
    return v21 & 1;
  }

  sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
  v21 = 1;
  return v21 & 1;
}

void sub_10059C6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1001BF6C0;
    v11[3] = a7;
    v10 = _Block_copy(v11);
  }

  else
  {
    v10 = 0;
  }

  [v7 updateCloudContextStateWithSyncOption:a1 syncReason:a2 withCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_10059C7C8()
{

  return swift_deallocClassInstance();
}

void sub_10059C9F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(NSError);
  v6 = @"com.apple.remindd.RDAccountPropertiesErrorDomain";
  v7 = [v5 initWithDomain:v6 code:a2 userInfo:0];

  *a3 = v7;
}

char *sub_10059CA8C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v107 = a7;
  v108 = a3;
  v94 = a2;
  ObjectType = swift_getObjectType();
  v104 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v102 = *(v104 - 8);
  v15 = *(v102 + 64);
  __chkstk_darwin(v104);
  v99 = &v79 - v16;
  v97 = type metadata accessor for NSNotificationCenter.Publisher();
  v96 = *(v97 - 1);
  v17 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v100 = *(v101 - 8);
  v19 = *(v100 + 64);
  __chkstk_darwin(v101);
  v98 = &v79 - v20;
  v21 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v105 = *(v21 - 8);
  v106 = v21;
  v22 = *(v105 + 64);
  __chkstk_darwin(v21);
  v103 = &v79 - v23;
  v24 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v90 = &v79 - v26;
  v85 = sub_1000F5104(&qword_10094D5B8, &qword_1007B2DE0);
  v84 = *(v85 - 8);
  v27 = *(v84 + 64);
  __chkstk_darwin(v85);
  v81 = &v79 - v28;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = &v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_propertyName];
  *v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34[1] = v35;
  UUID.init()();
  v36 = v29;
  v37 = v108;
  (*(v30 + 32))(&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid], v33, v36);
  type metadata accessor for RDAccountPersonIDSaltObserver.AccountInfo();
  v38 = swift_allocObject();
  v39 = v94;
  *(v38 + 16) = a1;
  *(v38 + 24) = v39;
  *&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_account] = v38;
  v40 = &v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_successHandler];
  v92 = a5;
  *v40 = a5;
  v40[1] = a6;
  v41 = &v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_errorHandler];
  *v41 = v107;
  *(v41 + 1) = a8;
  *&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_callbackQueue] = a4;
  v89 = a1;
  v109 = a6;

  v110 = a8;

  v42 = a4;
  if (v37)
  {
    v43 = v37;
    v44 = NSData.startIndex.getter();
    if (v44 != NSData.endIndex.getter())
    {
      v46 = v43;
      v45 = 0;
      goto LABEL_6;
    }

    v37 = 1;
  }

  v45 = 1;
LABEL_6:
  v93 = v45;
  v94 = v37;
  v111 = v37;
  v112 = v45;
  v47 = sub_1000F5104(&qword_10094D5C0, &qword_1007B2DE8);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_currentValueSubject] = CurrentValueSubject.init(_:)();
  *&v9[OBJC_IVAR___RDAccountPersonIDSaltObserver_cancellables] = _swiftEmptyArrayStorage;
  v50 = ObjectType;
  v114.receiver = v9;
  v114.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v114, "init");
  v111 = *&v51[OBJC_IVAR___RDAccountPersonIDSaltObserver_currentValueSubject];
  v113 = v42;
  v88 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v52 = *(v88 - 8);
  v87 = *(v52 + 56);
  v86 = v52 + 56;
  v53 = v90;
  v87(v90, 1, 1, v88);
  v83 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_10094D5C8, &qword_10094D5C0, &qword_1007B2DE8);
  v82 = sub_100006CA4();
  v80 = v51;

  v54 = v81;
  Publisher.receive<A>(on:options:)();
  v55 = v53;
  sub_1000050A4(v53, &qword_100939980, &unk_10079ADA0);

  v56 = swift_allocObject();
  v57 = v92;
  v56[2] = v42;
  v56[3] = v57;
  v58 = v110;
  v59 = v107;
  v56[4] = v109;
  v56[5] = v59;
  v56[6] = v58;
  v56[7] = v50;
  v107 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000CB48(&qword_10094D5D0, &qword_10094D5B8, &qword_1007B2DE0);

  ObjectType = v42;
  v60 = v85;
  Publisher<>.sink(receiveValue:)();

  (*(v84 + 8))(v54, v60);
  v61 = v80;
  swift_beginAccess();
  sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
  v92 = sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v62 = [objc_opt_self() defaultCenter];
  v63 = v95;
  NSNotificationCenter.publisher(for:object:)();

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = sub_100440048(v64, v65, 0xD00000000000001DLL, 0x80000001007B2C80, 0);

  (*(v96 + 8))(v63, v97);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  v68 = v89;
  *(inited + 32) = v89;
  v97 = v68;
  v69 = sub_1001A577C(inited);
  swift_setDeallocating();
  v70 = *(inited + 16);
  swift_arrayDestroy();
  v111 = v66;
  *(swift_allocObject() + 16) = v69;
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
  v71 = v99;
  Publisher.map<A>(_:)();

  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40);
  v72 = v98;
  v73 = v104;
  Publisher.filter(_:)();

  (*(v102 + 8))(v71, v73);
  v74 = ObjectType;
  v111 = ObjectType;
  v87(v55, 1, 1, v88);
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0);
  v75 = v103;
  v76 = v101;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v55, &qword_100939980, &unk_10079ADA0);
  (*(v100 + 8))(v72, v76);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50);
  v77 = v106;
  Publisher<>.sink(receiveValue:)();

  (*(v105 + 8))(v75, v77);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
  sub_10059E4CC(v94, v93);

  return v61;
}

uint64_t sub_10059D738(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = *(a1 + 8);
  *v14 = a2;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9, v12);
  v17 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v9);
  if ((a2 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  if ((v16 & 1) == 0)
  {
    return a3(v15);
  }

  if (v15 > 1u)
  {
    if (v15 == 2)
    {
      if (qword_1009365C8 != -1)
      {
        swift_once();
      }

      v18 = qword_100975260;
    }

    else
    {
      if (qword_1009365D8 != -1)
      {
        swift_once();
      }

      v18 = qword_100975270;
    }

    return a5(v18);
  }

  if (v15)
  {
    if (qword_1009365D0 != -1)
    {
      swift_once();
    }

    v18 = qword_100975268;
    return a5(v18);
  }

  if (qword_1009365C0 != -1)
  {
    goto LABEL_20;
  }

LABEL_6:
  v18 = qword_100975258;
  return a5(v18);
}

uint64_t sub_10059D990()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___RDAccountPersonIDSaltObserver_currentValueSubject);
    v2 = result;

    CurrentValueSubject.send(_:)();
  }

  return result;
}

void sub_10059DBB4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR___RDAccountPersonIDSaltObserver_callbackQueue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_10014F5CC(a1, &v17);
  if (!v19)
  {
    sub_1000050A4(&v17, &qword_100939ED0, &qword_100791B10);
    goto LABEL_8;
  }

  sub_1000060C8(0, &qword_100947440, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v15 = *(v1 + OBJC_IVAR___RDAccountPersonIDSaltObserver_currentValueSubject);
    v17 = 2;
    v18 = 1;
    CurrentValueSubject.send(_:)();
    return;
  }

  v11 = v16[1];
  v12 = NSData.startIndex.getter();
  v13 = NSData.endIndex.getter();
  v14 = *(v1 + OBJC_IVAR___RDAccountPersonIDSaltObserver_currentValueSubject);
  if (v12 == v13)
  {
    v17 = 1;
    v18 = 1;
    CurrentValueSubject.send(_:)();
  }

  else
  {
    v17 = v11;
    v18 = 0;
    v11 = v11;
    CurrentValueSubject.send(_:)();
  }
}

uint64_t sub_10059DEAC()
{
  _StringGuts.grow(_:)(52);
  v1._object = 0x80000001007FD440;
  v1._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v1);
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x746E756F63636120;
  v3._object = 0xEB000000003A4449;
  String.append(_:)(v3);
  v4 = [*(v0 + OBJC_IVAR___RDAccountPersonIDSaltObserver_account) objectID];
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

id sub_10059DFDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR___RDAccountPersonIDSaltObserver_currentValueSubject];
  v6 = 1;

  CurrentValueSubject.send(completion:)();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for RDAccountPersonIDSaltObserver()
{
  result = qword_10094D4F8;
  if (!qword_10094D4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10059E244()
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

unint64_t sub_10059E358()
{
  result = qword_10094D5B0;
  if (!qword_10094D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D5B0);
  }

  return result;
}

uint64_t sub_10059E3AC(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return sub_10059D738(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

unint64_t *sub_10059E3BC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10059E4D8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_10059E458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;

  v7 = sub_10059E758(v6, a2);

  *a3 = v7;
  return result;
}

void sub_10059E4CC(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

void sub_10059E4D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v34 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v36 = a4 & 0xC000000000000001;
  v37 = a4 + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v35 = v14 | (v5 << 6);
    v17 = *(v4 + 48) + 24 * v35;
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
    if (v36)
    {
      v11 = v19;
      v12 = v18;
      v13 = __CocoaSet.contains(_:)();

      if (v13)
      {
LABEL_21:
        *(a1 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_24:

          sub_1001A0644(a1, a2, v34, v4);
          return;
        }
      }
    }

    else if (*(a4 + 16))
    {
      v30 = v9;
      v31 = v4;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v20 = *(a4 + 40);
      v29 = v19;
      v21 = v18;
      v22 = NSObject._rawHashValue(seed:)(v20);
      v23 = -1 << *(a4 + 32);
      v24 = v22 & ~v23;
      if ((*(v37 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = *(*(a4 + 48) + 8 * v24);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v37 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v9 = v30;
        v4 = v31;
        goto LABEL_21;
      }

LABEL_19:

      v9 = v30;
      v4 = v31;
    }
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_24;
    }

    v16 = *(v6 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10059E758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v43 = v8;
    v44 = v3;
    v42 = &v39;
    __chkstk_darwin(v10);
    v45 = &v39 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v45, v9);
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v49 = a2 & 0xC000000000000001;
    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v16 = a2;
    }

    v46 = 0;
    v47 = v16;
    v51 = a2 + 56;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v23 = v20 | (v11 << 6);
      v24 = *(v5 + 48);
      v48 = v23;
      v25 = v24 + 24 * v23;
      v3 = *(v25 + 8);
      v26 = *(v25 + 16);
      if (v49)
      {
        v9 = v3;
        v17 = v26;
        v18 = v5;
        v19 = v17;
        v3 = __CocoaSet.contains(_:)();

        v5 = v18;
        if (v3)
        {
LABEL_24:
          *&v45[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
          if (__OFADD__(v46++, 1))
          {
            __break(1u);
LABEL_27:
            v35 = sub_1001A0644(v45, v43, v46, v5);

            return v35;
          }
        }
      }

      else if (*(a2 + 16))
      {
        v40 = v14;
        v41 = v5;
        v50 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v27 = *(a2 + 40);
        v39 = v3;
        v3 = v26;
        v28 = NSObject._rawHashValue(seed:)(v27);
        v29 = -1 << *(a2 + 32);
        v30 = v28 & ~v29;
        if ((*(v51 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
        {
          v31 = ~v29;
          while (1)
          {
            v9 = a2;
            v32 = *(*(a2 + 48) + 8 * v30);
            v33 = static NSObject.== infix(_:_:)();

            if (v33)
            {
              break;
            }

            v30 = (v30 + 1) & v31;
            a2 = v9;
            if (((*(v51 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          a2 = v9;
          v14 = v40;
          v5 = v41;
          goto LABEL_24;
        }

LABEL_22:

        v14 = v40;
        v5 = v41;
      }
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_27;
      }

      v22 = *(v8 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v37 = v5;
  v38 = swift_slowAlloc();

  v35 = sub_10059E3BC(v38, v8, v37, a2);

  return v35;
}

double sub_10059EB10@<D0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() daemonUserDefaults];
  v4 = [v3 enableHashingUserIdentifiablesWithPersonIDSalt];

  if (!v4)
  {
LABEL_15:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v5 = [v1 accountTypeHost];
  v6 = [v5 isCloudKit];

  if (!v6)
  {
    if (qword_1009365E0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094D5D8);
    v16 = v1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136446210;
      v21 = [v16 remObjectID];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 description];

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      v28 = sub_10000668C(v24, v26, &v29);

      *(v19 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "We don't currently support providing hash key other than cloudkit accounts. This log indicates there's some programming errors to pass on an incorrect account object {account: %{public}s}", v19, 0xCu);
      sub_10000607C(v20);
    }

    goto LABEL_15;
  }

  v7 = type metadata accessor for _RDManualSortIDPrimaryCloudKitAccountHashKeyProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007A5D40;
  v9 = v1;
  v10 = [v9 personIDSalt];
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {

    v12 = 0;
    v14 = 0xF000000000000000;
  }

  *(v8 + 16) = v12;
  *(v8 + 24) = v14;
  sub_100031A14(0, 0xF000000000000000);
  *(a1 + 24) = v7;
  *(a1 + 32) = &off_1008F86E0;
  *a1 = v8;
  return result;
}

uint64_t sub_10059EDD8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D5D8);
  v1 = sub_100006654(v0, qword_10094D5D8);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10059EEA0()
{
  sub_100031A14(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_10059EEFC()
{
  v1 = *(*v0 + 24);
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = *(*v0 + 16);
  sub_100029344(v3, v1);
  v4 = String.base64EncodedHMACString(using:)();
  sub_100031A14(v3, v1);
  return v4;
}

id sub_10059EF88()
{
  result = [*(v0 + 16) personIDSalt];
  if (result)
  {
    v2 = result;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    sub_10001BBA0(v3, v5);
    v6 = String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    return v6;
  }

  return result;
}

uint64_t sub_10059F0B0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D730);
  v1 = sub_100006654(v0, qword_10094D730);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10059F18C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10059F264()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10059F328()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10059F3FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005A1388(*a1);
  *a2 = result;
  return result;
}

void sub_10059F42C(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6E6F697461657263;
  v4 = 0xED0000656D614E6CLL;
  v5 = 0x6163696E6F6E6163;
  if (*v1 != 2)
  {
    v5 = 1953720684;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x4E79616C70736964;
    v2 = 0xEB00000000656D61;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}