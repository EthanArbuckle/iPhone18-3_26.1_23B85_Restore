uint64_t sub_1006BE63C@<X0>(void **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v68 = 0;
  v7 = [v6 fetchRemindersWithError:&v68];
  v8 = v68;
  if (!v7)
  {
    v35 = v68;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v9 = v7;
  v64 = a3;
  v67 = v3;
  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v8;

  v70 = _swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v62 = v6;
    v63 = v5;
    v13 = 0;
    v65 = v10;
    v66 = v10 & 0xC000000000000001;
    v6 = (v10 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v66)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= v6[2])
        {
          goto LABEL_33;
        }

        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v17 = [v14 titleAsString];
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v20;

        v68 = v19;
        v69 = v5;
        __chkstk_darwin(v21);
        v60 = &v68;
        v22 = v67;
        LOBYTE(v18) = sub_100040A74(sub_1002CB9B8, v59, &off_1008DCAE0);
        v67 = v22;

        if (v18)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v23 = v70[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v10 = v65;
      }

      else
      {
      }

      ++v13;
    }

    while (v16 != i);
    v24 = 0;
    v61 = v70;
    v70 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v66)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= v6[2])
        {
          goto LABEL_35;
        }

        v25 = *(v10 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = [v25 titleAsString];
      if (v28)
      {
        v29 = v28;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v68 = v5;
        v69 = v31;
        __chkstk_darwin(v32);
        v60 = &v68;
        v33 = v67;
        LOBYTE(v29) = sub_100040A74(sub_1002CB9B8, v59, &off_1008DCD30);
        v67 = v33;

        if (v29)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v34 = v70[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v10 = v65;
      }

      else
      {
      }

      ++v24;
      if (v27 == i)
      {
        v37 = v70;
        v6 = v62;
        v5 = v63;
        v38 = v61;
        goto LABEL_38;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v38 = _swiftEmptyArrayStorage;
  v37 = _swiftEmptyArrayStorage;
LABEL_38:

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = [v6 objectID];
  v68 = v5;

  sub_100271578(inited);
  v40 = v68;
  v41 = v38;
  if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
    v41 = v38;
    if (v42)
    {
      goto LABEL_41;
    }

LABEL_49:

    v50 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  v42 = *(v38 + 16);
  if (!v42)
  {
    goto LABEL_49;
  }

LABEL_41:
  v43 = v41;
  v68 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v42 < 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v66 = v40;
  v44 = 0;
  v45 = v43;
  do
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v46 = *(v45 + 8 * v44 + 32);
    }

    v47 = v46;
    ++v44;
    v48 = [v46 objectID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v49 = v68[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v45 = v43;
  }

  while (v42 != v44);

  v50 = v68;
  v40 = v66;
LABEL_50:
  v68 = v40;
  sub_100271578(v50);
  v51 = v68;
  if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
    if (v52)
    {
LABEL_53:
      v68 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v52 & 0x8000000000000000) == 0)
      {
        v53 = 0;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v54 = *(v37 + 8 * v53 + 32);
          }

          v55 = v54;
          ++v53;
          v56 = [v54 objectID];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v57 = v68[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v52 != v53);

        v58 = v68;
        goto LABEL_62;
      }

LABEL_64:
      __break(1u);
    }
  }

  else
  {
    v52 = *(v37 + 16);
    if (v52)
    {
      goto LABEL_53;
    }
  }

  v58 = _swiftEmptyArrayStorage;
LABEL_62:
  v68 = v51;
  result = sub_100271578(v58);
  *v64 = v68;
  return result;
}

void sub_1006BECA8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [objc_opt_self() localAccountID];
  v42 = 0;
  v5 = [v3 fetchAccountWithObjectID:v4 error:&v42];

  if (!v5)
  {
    v9 = v42;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v6 = v42;
  v7 = REMAccount.isConsideredEmpty()();
  if (v8)
  {

    return;
  }

  if (v7)
  {
    sub_1006C0694();
LABEL_12:
    swift_allocError();
    swift_willThrow();

    return;
  }

  v10 = sub_1006BFECC(a1, v3);
  if (!v10)
  {
    sub_1006C05EC();
    goto LABEL_12;
  }

  v11 = v10;
  v12 = REMAccount.isConsideredEmpty()();
  if (v13)
  {
    goto LABEL_14;
  }

  if (!v12)
  {
    v15 = [v11 objectID];
    sub_1006C0640();
    swift_allocError();
    *v16 = v15;
    swift_willThrow();
LABEL_14:

    return;
  }

  type metadata accessor for RDAccountDataMover();
  swift_initStackObject();
  v14 = sub_1004ED328(v3);
  sub_1004ED92C(v5, v11);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10094FB70);
  v18 = v11;
  v19 = a1;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v41 = v18;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v22 = 138543874;
    v24 = [v18 objectID];
    *(v22 + 4) = v24;
    *v23 = v24;
    *(v22 + 12) = 2114;
    v25 = [v19 identifier];
    *(v22 + 14) = v25;
    v23[1] = v25;
    *(v22 + 22) = 2082;
    v26 = *(v14 + 48);
    v27 = *(v14 + 56);
    v28 = sub_1004ED21C();
    v30 = sub_10000668C(v28, v29, &v42);

    *(v22 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "RDAccountUtils.LocalDataToICloudMover: Completed moving data from local to iCloud {target: %{public}@, acAccountIdentifier: %{public}@, stats: %{public}s}", v22, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v40);
  }

  sub_1004EEEE8(v5);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136446210;
    v35 = *(v14 + 48);
    v36 = *(v14 + 56);
    v37 = sub_1004ED21C();
    v39 = sub_10000668C(v37, v38, &v42);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "RDAccountUtils.LocalDataToICloudMover: Local account emptied {stats: %{public}s}.", v33, 0xCu);
    sub_10000607C(v34);
  }

  else
  {
  }
}

uint64_t sub_1006BF200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a2;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v12 - 8);
  v13 = *(v24 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v16 = *(v23 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v23);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  aBlock[4] = a6;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = a7;
  v21 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v24 + 8))(v15, v12);
  (*(v16 + 8))(v19, v23);
}

id sub_1006BF4D4(void *a1)
{
  v2 = [a1 displayAccount];
  if (!v2)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094FB70);
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = [v15 identifier];
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDAccountUtils.fetchAccountWithAppleAccount: Failed to get the display account {accountIdentifier: %{public}@}.", v18, 0xCu);
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_29;
  }

  v3 = v2;
  result = [v2 accountType];
  if (result)
  {
    v5 = result;
    v6 = [result identifier];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v9)
      {
        if (v7 == v10 && v9 == v11)
        {

          goto LABEL_23;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
LABEL_23:
          if ([v3 isEnabledForDataclass:ACAccountDataclassReminders])
          {
            return v3;
          }

          if (qword_1009366E8 != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          sub_100006654(v28, qword_10094FB70);
          v16 = v3;
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            *v24 = 138543362;
            v29 = [v16 identifier];
            *(v24 + 4) = v29;
            *v25 = v29;
            v27 = "RDAccountUtils.fetchAccountWithAppleAccount: Reminders is not enabled for the given ACAccount {accountIdentifier: %{public}@}.";
            goto LABEL_21;
          }

          goto LABEL_28;
        }

LABEL_17:
        if (qword_1009366E8 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100006654(v21, qword_10094FB70);
        v16 = v3;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138543362;
          v26 = [v16 identifier];
          *(v24 + 4) = v26;
          *v25 = v26;
          v27 = "RDAccountUtils.fetchAccountWithAppleAccount: Given ACAccount is not Apple account {accountIdentifier: %{public}@}.";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v22, v23, v27, v24, 0xCu);
          sub_1000050A4(v25, &unk_100938E70, &unk_100797230);

LABEL_29:
          return 0;
        }

LABEL_28:

        v16 = v22;
        goto LABEL_29;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1006BF940(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100939D90, "8\n\r");
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10094FB70);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_10000668C(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v14, v15, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v19 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v21 = [v19 objectIDWithUUID:isa];

    (*(v9 + 8))(v12, v8);
    return v21;
  }
}

uint64_t sub_1006BFC1C(void *a1)
{
  v2 = [a1 displayAccount];
  if (v2)
  {
    v3 = v2;
    v4 = ACAccount.rem_childCalDAVAccountEnabledForReminders.getter();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 identifier];

      if (v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v7;
      }
    }
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094FB70);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = [v10 identifier];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "childCalDAVIdentifierEnabledForReminders: Can't get display account from input {input: %{public}@}", v13, 0xCu);
      sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
    }
  }

  return 0;
}

id sub_1006BFDE8(void *a1, void *a2)
{
  v3 = sub_1006BFC1C(a1);
  if (v4)
  {
    v5 = sub_1006BF940(v3, v4);

    if (v5)
    {
      v10 = 0;
      v6 = [a2 fetchAccountWithObjectID:v5 error:&v10];
      v7 = v10;
      if (v6)
      {

        return v6;
      }

      v9 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return 0;
}

id sub_1006BFECC(void *a1, void *a2)
{
  v3 = sub_1006BF4D4(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  result = [v3 identifier];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = sub_1006BF940(v7, v9);

    if (!v10)
    {

      return 0;
    }

    v51 = 0;
    v11 = [a2 fetchAccountWithObjectID:v10 error:&v51];
    if (v11)
    {
      v12 = v11;
      v13 = v51;
      if (([v12 inactive] & 1) == 0)
      {
        v27 = qword_1009366E8;
        v28 = v12;
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100006654(v29, qword_10094FB70);
        v30 = v28;
        v31 = v4;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v32, v33))
        {

          return v12;
        }

        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138543618;
        v36 = [v30 objectID];

        *(v34 + 4) = v36;
        *v35 = v36;
        *(v34 + 12) = 2114;
        v37 = [v31 identifier];
        *(v34 + 14) = v37;
        v35[1] = v37;
        _os_log_impl(&_mh_execute_header, v32, v33, "RDAccountUtils.fetchAccountWithAppleAccount: Found an active CloudKit REMAccount {objectID: %{public}@, accountIdentifier: %{public}@}.", v34, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

LABEL_27:

        return v12;
      }
    }

    else
    {
      v14 = v51;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v15 = sub_1006BFDE8(v4, a2);
    if (!v15)
    {
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100006654(v38, qword_10094FB70);
      v20 = v4;
      v21 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v21, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138543362;
        v42 = [v20 identifier];
        *(v40 + 4) = v42;
        *v41 = v42;
        _os_log_impl(&_mh_execute_header, v21, v39, "RDAccountUtils.fetchAccountWithAppleAccount: No .calDav iCloud REMAccount found at all {accountIdentifier: %{public}@}", v40, 0xCu);
        sub_1000050A4(v41, &unk_100938E70, &unk_100797230);

        return 0;
      }

      goto LABEL_30;
    }

    v12 = v15;
    v16 = [v15 inactive];
    v17 = qword_1009366E8;
    if (v16)
    {
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006654(v18, qword_10094FB70);
      v19 = v4;
      v20 = v12;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543618;
        v25 = [v20 objectID];
        *(v23 + 4) = v25;
        *v24 = v25;
        *(v23 + 12) = 2114;
        v26 = [v19 identifier];
        *(v23 + 14) = v26;
        v24[1] = v26;
        _os_log_impl(&_mh_execute_header, v21, v22, "RDAccountUtils.fetchAccountWithAppleAccount: Found a .calDav iCloud REMAccount but it is inactive {objectID: %{public}@, accountIdentifier: %{public}@}", v23, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        return 0;
      }

LABEL_30:
      return 0;
    }

    v43 = v12;
    if (v17 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_10094FB70);
    v31 = v4;
    v45 = v43;
    v32 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v32, v46))
    {

      return v12;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138543618;
    v49 = [v45 objectID];

    *(v47 + 4) = v49;
    *v48 = v49;
    *(v47 + 12) = 2114;
    v50 = [v31 identifier];
    *(v47 + 14) = v50;
    v48[1] = v50;
    _os_log_impl(&_mh_execute_header, v32, v46, "RDAccountUtils.fetchAccountWithAppleAccount: Found an active .calDav iCloud REMAccount {objectID: %{public}@, accountIdentifier: %{public}@}.", v47, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

unint64_t sub_1006C05EC()
{
  result = qword_10094FE20;
  if (!qword_10094FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE20);
  }

  return result;
}

unint64_t sub_1006C0640()
{
  result = qword_10094FE28;
  if (!qword_10094FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE28);
  }

  return result;
}

unint64_t sub_1006C0694()
{
  result = qword_10094FE30;
  if (!qword_10094FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE30);
  }

  return result;
}

unint64_t sub_1006C06E8()
{
  result = qword_10094FE38;
  if (!qword_10094FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE38);
  }

  return result;
}

unint64_t sub_1006C073C()
{
  result = qword_10094FE40;
  if (!qword_10094FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE40);
  }

  return result;
}

id sub_1006C0790(void *a1, void *a2)
{
  result = sub_1006BF4D4(a1);
  if (!result)
  {
    return result;
  }

  v4 = result;
  result = [result identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_1006BFDE8(v4, a2);
  if (!v9)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_10094FB70);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136446210;
      v22 = sub_10000668C(v6, v8, &v29);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDAccountUtils.fetchInactiveCalDavAccount: Didn't find any .calDav iCloud REMAccount {appleACAccountID: %{public}s}", v20, 0xCu);
      sub_10000607C(v21);
    }

    else
    {
    }

    return 0;
  }

  v10 = v9;
  if (![v9 inactive])
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094FB70);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v26 = 136446210;
      v28 = sub_10000668C(v6, v8, &v29);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "RDAccountUtils.fetchInactiveCalDavAccount: Didn't find an inactve .calDav iCloud REMAccount but found an active one {appleACAccountID: %{public}s}", v26, 0xCu);
      sub_10000607C(v27);
    }

    else
    {
    }

    return 0;
  }

  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094FB70);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136446210;
    v16 = sub_10000668C(v6, v8, &v29);

    *(v14 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDAccountUtils.fetchInactiveCalDavAccount: Found an inactive .calDav iCloud REMAccount {appleACAccountID: %{public}s}", v14, 0xCu);
    sub_10000607C(v15);
  }

  else
  {
  }

  return v10;
}

unint64_t sub_1006C0BB0()
{
  result = qword_10094FE48;
  if (!qword_10094FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE48);
  }

  return result;
}

uint64_t sub_1006C0C18(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_100936870 != -1)
  {
    swift_once();
  }

  if (byte_1009753A9 == 1 && byte_1009753A8 == 1 && gDADOperationQueue)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v21 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a2;
    v15[4] = a3;
    v29 = sub_1006D19D8;
    v30 = v15;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100019200;
    v28 = &unk_1008FBB08;
    v16 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v23 + 8))(v9, v6);
    (*(v10 + 8))(v13, v22);
  }

  else
  {
LABEL_8:
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    v29 = sub_1006D19A8;
    v30 = v18;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100019200;
    v28 = &unk_1008FBA90;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v23 + 8))(v9, v6);
    (*(v10 + 8))(v13, v22);
  }
}

id sub_1006C1180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10094FB70);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Purge ACAccount migration state cache", v16, 2u);
  }

  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 accountStore];

  v53 = dispatch_group_create();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = String._bridgeToObjectiveC()();
  v54 = v18;
  v21 = [v18 accountWithIdentifier:v20];

  v22 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  if (!v21)
  {
    goto LABEL_28;
  }

  result = [v21 accountType];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result identifier];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v28)
    {
      if (v26 == v29 && v28 == v30)
      {
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if ([v21 isActive])
      {
        *&v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v55 + 1) = v32;
        *&v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v56 + 1) = v33;
        aBlock = v55;
        swift_bridgeObjectRetain_n();
        v34 = [v21 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v34)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
          v35 = String._bridgeToObjectiveC()();

          [v21 setAccountProperty:0 forKey:v35];

          goto LABEL_19;
        }

        v48 = 0;

        aBlock = 0u;
        v59 = 0u;
        sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
        aBlock = v56;
        swift_bridgeObjectRetain_n();
        v38 = [v21 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v38)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
          v39 = String._bridgeToObjectiveC()();

          [v21 setAccountProperty:0 forKey:v39];

          if (!v48)
          {
LABEL_25:
            swift_arrayDestroy();
            v40 = v53;
            dispatch_group_enter(v53);
            v41 = swift_allocObject();
            *(v41 + 16) = v19;
            *(v41 + 24) = v40;
            v60 = sub_1006D4C2C;
            v61 = v41;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v59 = sub_100007688;
            *(&v59 + 1) = &unk_1008FC6C0;
            v42 = _Block_copy(&aBlock);
            v43 = v21;

            v44 = v40;
            v22 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;

            [v54 saveAccount:v43 withCompletionHandler:v42];

            _Block_release(v42);
            goto LABEL_28;
          }

LABEL_19:
          aBlock = v56;
          swift_bridgeObjectRetain_n();
          v36 = [v21 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v36)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
            v37 = String._bridgeToObjectiveC()();

            [v21 setAccountProperty:0 forKey:v37];
          }

          else
          {

            aBlock = 0u;
            v59 = 0u;
            sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
          }

          goto LABEL_25;
        }

        aBlock = 0u;
        v59 = 0u;
        sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
        swift_arrayDestroy();
      }

LABEL_27:

      v22 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
      goto LABEL_28;
    }

    v22 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_28:
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v45 = swift_allocObject();
  v45[2] = v49;
  v45[3] = a4;
  v45[4] = v19;
  v60 = sub_1006D4C20;
  v61 = v45;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = v22[87];
  *&v59 = sub_100019200;
  *(&v59 + 1) = &unk_1008FC670;
  v46 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v57 = _swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v53;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v46);

  (*(v52 + 8))(v8, v5);
  (*(v50 + 8))(v12, v51);
}

uint64_t sub_1006C1AFC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = String.count.getter();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  String.index(_:offsetBy:limitedBy:)();

  return String.subscript.getter();
}

uint64_t sub_1006C1BC8(uint64_t a1, void *a2, uint64_t a3, Swift::Int a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v182 = a6;
  v185 = a5;
  v191 = a2;
  v202 = a1;
  v186 = 0;
  v16 = a12;
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v197 = &v168 - v19;
  v198 = type metadata accessor for UUID();
  v20 = *(v198 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v198);
  v194 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  *(v23 + 24) = a8;
  v173 = a9;
  *(v23 + 32) = a9;
  v174 = a10;
  v24 = v185;
  v25 = v182;
  *(v23 + 40) = a10 & 1;
  v175 = a11;
  *(v23 + 48) = a11;
  *(v23 + 56) = a12;
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v172 = a4;
  v26[4] = v24;
  v26[5] = v25;
  v26[6] = sub_1006D5470;
  v26[7] = v23;
  v178 = v26;
  v27 = objc_allocWithZone(REMSaveRequest);

  v181 = a8;

  v179 = v23;

  v189 = [v27 initWithStore:v191];
  v29 = *(v202 + 16);
  v180 = a3;
  v177 = a7;
  v176 = a12;
  if (!v29)
  {
    v135 = 0;
    v136 = 0;
    v137 = a7;
    goto LABEL_79;
  }

  LODWORD(v188) = 0;
  v187 = 0;
  v190 = 0;
  v30 = (v202 + 32);
  v196 = (v20 + 48);
  v193 = (v20 + 32);
  v192 = (v20 + 8);
  v169 = 20250728;
  v31 = 1 - v29;
  *&v28 = 136446210;
  v199 = v28;
  *&v28 = 136315650;
  v183 = v28;
  *&v28 = 136446722;
  v170 = v28;
  *&v28 = 136315906;
  v171 = v28;
  v32 = v198;
  while (1)
  {
    *&v206[13] = *(v30 + 29);
    v33 = v30[1];
    v205 = *v30;
    *v206 = v33;
    LODWORD(v200) = v206[24];
    v34 = *(&v33 + 1);
    v201 = *&v206[16];
    v35 = *(&v205 + 1);
    v36 = v33;
    v37 = v205;
    sub_1006D18E0(&v205, aBlock);
    v38 = qword_1009366E8;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = sub_100006654(v39, qword_10094FB70);

    v202 = v40;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = v199;
      *(v43 + 4) = sub_10000668C(v37, v35, aBlock);
      _os_log_impl(&_mh_execute_header, v41, v42, "UpdateAccountsWithAccountInfos: Updating account object {accountID: %{public}s}", v43, 0xCu);
      sub_10000607C(v44);
      v32 = v198;
    }

    v45 = v197;
    UUID.init(uuidString:)();
    if ((*v196)(v45, 1, v32) == 1)
    {
      break;
    }

    v50 = v194;
    (*v193)(v194, v45, v32);
    v51 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v53 = [v51 objectIDWithUUID:isa];

    (*v192)(v50, v32);
    if (!v53)
    {
      goto LABEL_19;
    }

    aBlock[0] = 0;
    v54 = [v191 fetchAccountWithObjectID:v53 error:aBlock];
    v195 = v53;
    if (v54)
    {
      v55 = aBlock[0];
      if (v206[25])
      {
        sub_1006D1918(&v205);

        v56 = v54;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          aBlock[0] = v201;
          *v59 = v183;
          v60 = sub_10000668C(v36, v34, aBlock);

          *(v59 + 4) = v60;
          *(v59 + 12) = 2082;
          v61 = sub_10000668C(v37, v35, aBlock);

          *(v59 + 14) = v61;
          *(v59 + 22) = 2048;
          *(v59 + 24) = [v56 type];

          _os_log_impl(&_mh_execute_header, v57, v58, "UpdateAccountsWithAccountInfos is going to delete account {accountName: %s, accountID: %{public}s, type: %ld}.", v59, 0x20u);
          swift_arrayDestroy();

          v32 = v198;
        }

        else
        {
        }

        v84 = [v189 updateAccount:v56];
        [v84 removeFromStore];

        v85 = 1;
        if (!v31)
        {
          LODWORD(v188) = 1;
          v126 = &v207 + 4;
          goto LABEL_72;
        }

        v190 = 1;
        v187 = 1;
        LODWORD(v188) = 1;
        goto LABEL_5;
      }

      v67 = v54;
      v68 = [v67 type];
      if (v68 == v201)
      {

        v188 = v67;
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v184 = v54;
          v168 = v72;
          aBlock[0] = v72;
          *v71 = v183;
          *(v71 + 4) = sub_10000668C(v36, v34, aBlock);
          *(v71 + 12) = 2082;
          *(v71 + 14) = sub_10000668C(v37, v35, aBlock);
          *(v71 + 22) = 2048;
          v73 = v188;
          *(v71 + 24) = [v188 type];

          _os_log_impl(&_mh_execute_header, v69, v70, "UpdateAccountsWithAccountInfos is updating existing account object {name: %s, accountID: %{public}s, type: %ld}", v71, 0x20u);
          swift_arrayDestroy();
          v54 = v184;

          v32 = v198;
        }

        else
        {
        }

        v92 = v188;
        v93 = [v189 updateAccount:v188];
        v94 = String._bridgeToObjectiveC()();

        [v93 setName:v94];

LABEL_45:
        LODWORD(v57) = [v93 inactive];

        if (v200 == v57)
        {
          v102 = v200;
          v184 = v54;
          v103 = v93;
          [v103 setInactive:v102 ^ 1u];

          v57 = Logger.logObject.getter();
          v104 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v57, v104))
          {
            v105 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            aBlock[0] = v200;
            *v105 = v170;
            [v103 inactive];
            v106 = Bool.yesno.getter();
            v108 = sub_10000668C(v106, v107, aBlock);

            *(v105 + 4) = v108;
            v32 = v198;
            *(v105 + 12) = 2082;
            v109 = sub_10000668C(v37, v35, aBlock);

            *(v105 + 14) = v109;
            *(v105 + 22) = 2082;
            v110 = REMAccountType.loggableDescription.getter();
            v112 = sub_10000668C(v110, v111, aBlock);

            *(v105 + 24) = v112;
            swift_arrayDestroy();
          }

          else
          {
          }

          v54 = v184;
        }

        else
        {
        }

        v113 = v206[26];
        if (v206[26] != 2)
        {
          if ([v93 didChooseToMigrateLocally])
          {
            v114 = [v93 didChooseToMigrate];
            if ((v113 & 1) == 0)
            {
              if (v114)
              {
                [v93 setDidChooseToMigrateLocally:0];
              }
            }
          }

          [v93 setDidChooseToMigrate:v113 & 1];
        }

        v115 = v206[28];
        if (v206[27] != 2)
        {
          [v93 setDidFinishMigration:v206[27] & 1];
        }

        sub_1006D1918(&v205);
        if (v115 != 2)
        {
          [v93 setDebugSyncDisabled:v115 & 1];
        }

        if (v190)
        {

          LODWORD(v188) = 1;
          v190 = 1;
          if (!v31)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v116 = [v93 changedKeys];
          v57 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v117 = *(v57 + 16);

          LODWORD(v188) = v117 != 0;
          v190 = v188;
          if (!v31)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v205);

      v86 = v67;
      v57 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v87))
      {
        v88 = swift_slowAlloc();
        v200 = v57;
        v57 = v88;
        aBlock[0] = swift_slowAlloc();
        *v57 = v171;
        v89 = sub_10000668C(v36, v34, aBlock);

        *(v57 + 4) = v89;
        *(v57 + 12) = 2082;
        v90 = sub_10000668C(v37, v35, aBlock);

        *(v57 + 14) = v90;
        *(v57 + 22) = 2048;
        *(v57 + 24) = [v86 type];

        *(v57 + 32) = 2048;
        v91 = v200;
        *(v57 + 34) = v201;
        _os_log_impl(&_mh_execute_header, v91, v87, "UpdateAccountsWithAccountInfos: Unexpected account type, account ignored. {accountName: %s, accountID: %{public}s, expectedType: %ld, actualType: %ld}", v57, 0x2Au);
        swift_arrayDestroy();
        v32 = v198;

        goto LABEL_69;
      }

      if (!v31)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v66 = aBlock[0];
      LOBYTE(v57) = _convertNSErrorToError(_:)();

      swift_willThrow();
      v186 = 0;

      if (v206[25] != 1)
      {
        if ((v200 & 1) != 0 || (v74 = objc_allocWithZone(REMAccountTypeHost), v75 = [v74 initWithType:v201], v76 = objc_msgSend(v75, "isCloudKit"), v75, v76))
        {

          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v188 = swift_slowAlloc();
            aBlock[0] = v188;
            *v79 = v183;
            *(v79 + 4) = sub_10000668C(v36, v34, aBlock);
            v187 = v78;
            *(v79 + 12) = 2082;
            *(v79 + 14) = sub_10000668C(v37, v35, aBlock);
            *(v79 + 22) = 2082;
            v80 = REMAccountType.loggableDescription.getter();
            v184 = v77;
            v82 = sub_10000668C(v80, v81, aBlock);

            *(v79 + 24) = v82;
            v83 = v184;
            _os_log_impl(&_mh_execute_header, v184, v187, "UpdateAccountsWithAccountInfos is creating account object {name: %s, accountID: %{public}s, type: %{public}s}", v79, 0x20u);
            swift_arrayDestroy();

            v32 = v198;
          }

          else
          {
          }

          v95 = String._bridgeToObjectiveC()();

          v96 = v201;
          v97 = [v189 __addAccountWithType:v201 name:v95];

          [v97 setObjectID:v195];
          v98 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v96];
          v99 = [v98 isCloudKit];

          v100 = v97;
          v93 = v100;
          if (v99)
          {
            [v100 setPersistenceCloudSchemaVersion:v169];
          }

          else
          {
            v101 = String._bridgeToObjectiveC()();
            [v93 setExternalIdentifier:v101];
          }

          v187 = 1;
          goto LABEL_45;
        }

        sub_1006D1918(&v205);

        v57 = Logger.logObject.getter();
        v118 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v57, v118))
        {
          v119 = swift_slowAlloc();
          v200 = v57;
          v57 = v119;
          aBlock[0] = swift_slowAlloc();
          *v57 = v183;
          v120 = sub_10000668C(v36, v34, aBlock);

          *(v57 + 4) = v120;
          *(v57 + 12) = 2082;
          v121 = sub_10000668C(v37, v35, aBlock);

          *(v57 + 14) = v121;
          *(v57 + 22) = 2082;
          v122 = REMAccountType.loggableDescription.getter();
          v124 = sub_10000668C(v122, v123, aBlock);

          *(v57 + 24) = v124;
          v125 = v200;
          _os_log_impl(&_mh_execute_header, v200, v118, "UpdateAccountsWithAccountInfos won't create inactive accounts unless it is CloudKit {name: %s, accountID: %{public}s, type: %{public}s}", v57, 0x20u);
          swift_arrayDestroy();
          v32 = v198;
        }

        else
        {
        }

LABEL_69:

        if (!v31)
        {
          goto LABEL_70;
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v205);

      if (!v31)
      {
        goto LABEL_70;
      }
    }

LABEL_5:
    ++v31;
    v30 += 3;
    if (v31 == 1)
    {
      __break(1u);
      goto LABEL_104;
    }
  }

  sub_1000050A4(v45, &unk_100939D90, "8\n\r");

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = v199;
    *(v48 + 4) = sub_10000668C(v37, v35, aBlock);
    _os_log_impl(&_mh_execute_header, v46, v47, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v48, 0xCu);
    sub_10000607C(v49);
  }

LABEL_19:
  sub_1006D1918(&v205);

  v57 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v63 = v199;
    v65 = sub_10000668C(v37, v35, aBlock);

    *(v63 + 4) = v65;
    v32 = v198;
    _os_log_impl(&_mh_execute_header, v57, v62, "UpdateAccountsWithAccountInfos: Failed to create UUID object, account ignored {accountID: %{public}s}", v63, 0xCu);
    sub_10000607C(v64);
  }

  else
  {
  }

  if (v31)
  {
    goto LABEL_5;
  }

LABEL_70:
  if (v188)
  {
    v85 = v190;
    v126 = &v208;
LABEL_72:
    *(v126 - 64) = v85;
LABEL_73:
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "UpdateAccountsWithAccountInfos: Saving account object changes", v129, 2u);
    }

    LOBYTE(v57) = v187;
    if (qword_100935D30 == -1)
    {
LABEL_76:
      v130 = qword_100974CC8;
      v131 = swift_allocObject();
      v132 = v178;
      *(v131 + 16) = sub_1006D546C;
      *(v131 + 24) = v132;
      *(v131 + 32) = v57 & 1;
      *(v131 + 33) = v188 & 1;
      aBlock[4] = sub_1006D5468;
      aBlock[5] = v131;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008FC080;
      v133 = _Block_copy(aBlock);

      v134 = v189;
      [v189 saveWithQueue:v130 completion:v133];

      _Block_release(v133);

      goto LABEL_102;
    }

LABEL_104:
    swift_once();
    goto LABEL_76;
  }

  v24 = v185;
  v25 = v182;
  a3 = v180;
  v137 = v177;
  v16 = v176;
  v135 = v190;
  v136 = v187;
  if (v187)
  {
LABEL_80:
    swift_beginAccess();
    if (*(a3 + 16) != 1)
    {
      goto LABEL_83;
    }

    v190 = v135;
    v138 = objc_opt_self();

    v139 = v181;

    v140 = [v138 daemonUserDefaults];
    v141 = [v140 acAccountIdentifiersToMigrateInactivatedCalDavData];

    if (v141)
    {
      v142 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v142 = _swiftEmptyArrayStorage;
    }

    v144 = sub_1001A5660(v142);

    v203 = v144;

    sub_100378434(aBlock, v172, v24);

    v145 = [v138 daemonUserDefaults];
    v146 = v203;
    v147 = *(v203 + 16);
    if (v147)
    {
      v148 = sub_1003689CC(*(v203 + 16), 0);
      v149 = sub_1002791DC(aBlock, v148 + 4, v147, v146);
      sub_10001B860();
      if (v149 == v147)
      {
LABEL_90:
        v150 = Array._bridgeToObjectiveC()().super.isa;

        [v145 setAcAccountIdentifiersToMigrateInactivatedCalDavData:v150];

        if (qword_1009366E8 != -1)
        {
          swift_once();
        }

        v151 = type metadata accessor for Logger();
        sub_100006654(v151, qword_10094FB70);

        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          aBlock[0] = v155;
          *v154 = 136446210;
          *(v154 + 4) = sub_10000668C(v172, v24, aBlock);
          _os_log_impl(&_mh_execute_header, v152, v153, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v154, 0xCu);
          sub_10000607C(v155);
        }

        v135 = v190;
        goto LABEL_95;
      }

      __break(1u);
    }

    goto LABEL_90;
  }

LABEL_79:
  if (v135)
  {
    goto LABEL_80;
  }

LABEL_83:

  v143 = v181;

LABEL_95:
  v156 = *(v25 + 16);
  if (v156)
  {
    v187 = v136;
    v190 = v135;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v156, 0);
    v157 = aBlock[0];
    v158 = (v25 + 40);
    do
    {
      v160 = *(v158 - 1);
      v159 = *v158;
      aBlock[0] = v157;
      v162 = v157[2];
      v161 = v157[3];

      if (v162 >= v161 >> 1)
      {
        sub_100026EF4((v161 > 1), v162 + 1, 1);
        v157 = aBlock[0];
      }

      v157[2] = v162 + 1;
      v163 = &v157[2 * v162];
      v163[4] = v160;
      v163[5] = v159;
      v158 += 6;
      --v156;
    }

    while (v156);
    v137 = v177;
    v16 = v176;
    LOBYTE(v135) = v190;
    LOBYTE(v136) = v187;
  }

  v164 = swift_allocObject();
  v165 = v173;
  *(v164 + 16) = v137;
  *(v164 + 24) = v165;
  *(v164 + 32) = v174 & 1;
  *(v164 + 40) = v175;
  *(v164 + 48) = v16;
  *(v164 + 56) = v136 & 1;
  *(v164 + 57) = v135 & 1;
  *(v164 + 64) = 0;

  v166 = v181;
  sub_1006B9D6C(v181, sub_1006D5484, v164);

LABEL_102:
}

uint64_t sub_1006C3788(void *a1)
{
  v1 = [a1 identifier];
  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v5 == v4)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v8 == v4)
        {
          goto LABEL_27;
        }

        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v10)
        {
          goto LABEL_28;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v22 == v4)
        {
          goto LABEL_27;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_28;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v24 == v4)
        {
LABEL_27:

LABEL_28:

          return 3;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v25)
        {
          goto LABEL_28;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v2 || v26 != v4)
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_38;
          }

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v2 || v28 != v4)
          {
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v29 & 1) == 0)
            {
              if (qword_1009366E8 != -1)
              {
                swift_once();
              }

              v30 = type metadata accessor for Logger();
              sub_100006654(v30, qword_10094FB70);

              v31 = Logger.logObject.getter();
              v32 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v31, v32))
              {
                v33 = swift_slowAlloc();
                v34 = swift_slowAlloc();
                v36 = v34;
                *v33 = 136315138;
                v35 = sub_10000668C(v2, v4, &v36);

                *(v33 + 4) = v35;
                _os_log_impl(&_mh_execute_header, v31, v32, "ACAccount type not allowlisted, assume it's CalDAV {typeIdentifier: %s}", v33, 0xCu);
                sub_10000607C(v34);
              }

              else
              {
              }

              return 3;
            }

            goto LABEL_38;
          }
        }

LABEL_38:

        return 4;
      }
    }

    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094FB70);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136446210;
      v21 = sub_10000668C(v2, v4, &v36);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "RDAccountUtils: Unexpected call to remAccountType(from:) with ACAccountTypeIdentifierAppleAccount {AC-identifier: %{public}s}", v19, 0xCu);
      sub_10000607C(v20);
    }

    else
    {
    }

    return _auto_REMAccountTypeForPrimaryCloudKit();
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10094FB70);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Found ACAccount without identifier", v14, 2u);
    }

    return 0;
  }
}

id sub_1006C3CF4(void *a1)
{
  v2 = [a1 displayAccount];
  if (!v2)
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094FB70);
    v15 = a1;
    v3 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      v19 = [v15 identifier];
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v3, v16, "nonCloudKitAccountIdentifierEnabledForReminders: Can't get display account from input {input: %{public}@}", v17, 0xCu);
      sub_1000050A4(v18, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_23;
  }

  v3 = v2;
  result = [v2 accountType];
  if (result)
  {
    v5 = result;
    v6 = [result identifier];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v9)
      {
        if (v7 == v10 && v9 == v11)
        {

          goto LABEL_20;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
LABEL_20:
          if ([v3 isEnabledForDataclass:ACAccountDataclassReminders])
          {
            result = [v3 identifier];
            if (result)
            {
              v23 = result;
              v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();

              return v24;
            }

            goto LABEL_25;
          }

LABEL_23:

          return 0;
        }

LABEL_17:
        v20 = sub_1006BFC1C(v3);
        if (v21)
        {
          v22 = v20;

          return v22;
        }

        goto LABEL_20;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1006C3FCC(void *a1, id a2, id a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, unsigned __int8 a9, uint64_t a10, void *a11)
{
  LODWORD(v273) = a4;
  v17 = a11;
  v18 = a9;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v285 = a8;
  *(v19 + 32) = a8;
  *(v19 + 40) = a9 & 1;
  *(v19 + 48) = a10;
  *(v19 + 56) = a11;
  v287 = v19;
  swift_retain_n();
  v20 = a7;
  swift_retain_n();
  v21 = v20;
  v22 = [a1 displayAccount];
  if (!v22)
  {
    v22 = a1;
  }

  v23 = &selRef_hack_willSaveHandled;
  v24 = [v22 identifier];
  if (!v24)
  {

    __break(1u);
    goto LABEL_177;
  }

  v25 = v24;
  v284 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v288 = v26;

  v27 = [v22 accountType];
  if (!v27)
  {
LABEL_177:

    __break(1u);
    goto LABEL_178;
  }

  v28 = v27;
  v29 = [v27 identifier];

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_12:
    v23 = v288;

    if (([v22 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v32)
  {
    goto LABEL_12;
  }

  v23 = v288;
  if (v30 == v33 && v32 == v34)
  {

    if (([v22 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
LABEL_24:
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100006654(v49, qword_10094FB70);
      v18 = a1;
      a3 = v22;

      v50 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v50, v11))
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_32;
      }

      v276 = a6;
      v268 = v21;
      v51 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v51 = 136446722;
      v52 = v23;
      v23 = [v18 identifier];

      if (v23)
      {
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v54;

        v55 = sub_10000668C(v53, v18, &aBlock);

        *(v51 + 4) = v55;
        v23 = 2082;
        *(v51 + 12) = 2082;
        v21 = sub_10000668C(v284, v52, &aBlock);

        *(v51 + 14) = v21;
        *(v51 + 22) = 2082;
        v56 = [a3 accountType];
        if (v56)
        {
          v18 = v56;
          v23 = [v56 identifier];

          if (v23)
          {
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v58;

            v60 = sub_10000668C(v57, v59, &aBlock);

            *(v51 + 24) = v60;
            _os_log_impl(&_mh_execute_header, v50, v11, "UpdateAccountWithACAccount: ACAccount type is not supported or reminders dataclass is not enabled {accountID: %{public}s, displayAccountID: %{public}s, accountType: %{public}s}", v51, 0x20u);
            swift_arrayDestroy();

            v21 = v268;
            a6 = v276;
LABEL_32:
            v61 = swift_allocObject();
            *(v61 + 16) = a6;
            *(v61 + 24) = v285;
            *(v61 + 32) = a9 & 1;
            *(v61 + 40) = a10;
            *(v61 + 48) = a11;
            *(v61 + 56) = 0;
            *(v61 + 64) = 0;

            sub_1006B9D6C(v21, sub_1006D4838, v61);

LABEL_50:

LABEL_165:

            return;
          }

          goto LABEL_180;
        }

LABEL_179:

        __break(1u);
LABEL_180:

        v17 = v268;

        __break(1u);
        goto LABEL_181;
      }

LABEL_178:

      __break(1u);
      goto LABEL_179;
    }

LABEL_23:
    v11 = v21;
    v21 = 1;
    goto LABEL_34;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (([v22 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v48)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ([a1 accountPropertyForKey:REMDA_kCalDAVMobileAccountDelegatePrincipalPath])
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_10094FB70);
    v18 = a1;
    v23 = v22;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v17 = v21;
      v38 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v38 = 136446466;
      v39 = [v18 identifier];

      if (!v39)
      {
LABEL_182:

        __break(1u);
        goto LABEL_183;
      }

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v41;

      v18 = sub_10000668C(v40, v21, &aBlock);

      *(v38 + 4) = v18;
      *(v38 + 12) = 2082;
      v42 = [v23 accountType];
      if (!v42)
      {
LABEL_183:

        __break(1u);
        goto LABEL_184;
      }

      v43 = v42;
      v18 = [v42 identifier];

      if (!v18)
      {
LABEL_184:

        __break(1u);
        goto LABEL_185;
      }

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10000668C(v44, v46, &aBlock);

      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "UpdateAccountWithACAccount: Skip handling CalDAV delegate account {accountID: %{public}s, displayAccountType: %{public}s}", v38, 0x16u);
      swift_arrayDestroy();

      v21 = v17;
      v17 = a11;
    }

    else
    {
    }

    v85 = swift_allocObject();
    *(v85 + 16) = a6;
    *(v85 + 24) = v285;
    *(v85 + 32) = a9 & 1;
    *(v85 + 40) = a10;
    *(v85 + 48) = v17;
    *(v85 + 56) = 0;
    *(v85 + 64) = 0;

    sub_1006B9D6C(v21, sub_1006D5484, v85);

    goto LABEL_50;
  }

  v11 = v21;
  aBlock = 0u;
  v292 = 0u;
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v21 = 0;
LABEL_34:
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100006654(v62, qword_10094FB70);

  v63 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v18))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&aBlock = v65;
    *v64 = 136446210;
    *(v64 + 4) = sub_10000668C(v284, v288, &aBlock);
    _os_log_impl(&_mh_execute_header, v63, v18, "UpdateAccountWithACAccount: Try to update account object {accountID: %{public}s}", v64, 0xCu);
    sub_10000607C(v65);
    v23 = v288;
  }

  v270 = swift_allocObject();
  *(v270 + 16) = 0;
  v66 = [v22 rem_isEligibleForCloudKitReminders];
  if (!v21)
  {
    v69 = [v22 accountType];
    if (!v69)
    {
LABEL_181:

      __break(1u);
      goto LABEL_182;
    }

    v70 = v69;
    v71 = sub_1006C3788(v69);
    v73 = v72;

    v21 = v11;
    if (v73)
    {
      v18 = v22;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v280 = swift_slowAlloc();
        *&aBlock = v280;
        *v76 = 136446210;
        v77 = [v18 accountType];
        if (!v77)
        {
LABEL_185:

          __break(1u);
          goto LABEL_186;
        }

        v78 = v77;
        v79 = [v77 identifier];

        if (!v79)
        {
LABEL_186:

          __break(1u);
          goto LABEL_187;
        }

        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = sub_10000668C(v80, v82, &aBlock);

        *(v76 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v74, v75, "UpdateAccountWithACAccount: Can't figure out REMAccountType for ACAccountType {acAccountType: %{public}s}", v76, 0xCu);
        sub_10000607C(v280);

        v84 = _swiftEmptyArrayStorage;
        goto LABEL_163;
      }
    }

    else
    {

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();

      v281 = v71;
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v107 = 136446466;
        *(v107 + 4) = sub_10000668C(v284, v23, &aBlock);
        *(v107 + 12) = 2082;
        v108 = REMAccountType.loggableDescription.getter();
        v110 = sub_10000668C(v108, v109, &aBlock);

        *(v107 + 14) = v110;
        v23 = v288;
        _os_log_impl(&_mh_execute_header, v105, v106, "UpdateAccountWithACAccount: Will process non-Apple account {displayAccountID: %{public}s, accountType: %{public}s}", v107, 0x16u);
        swift_arrayDestroy();
      }

      v111 = sub_1006C3CF4(v22);
      if (v112)
      {
        v113 = v111;
        v114 = v112;
        v115 = v22;

        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();

        v274 = v113;
        if (os_log_type_enabled(v116, v117))
        {
          v271 = v115;
          v118 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          v266 = swift_slowAlloc();
          *&aBlock = v266;
          *v118 = 136446466;
          *(v118 + 4) = sub_10000668C(v113, v114, &aBlock);
          *(v118 + 12) = 2114;
          v119 = [v271 identifier];
          *(v118 + 14) = v119;
          *v263 = v119;
          _os_log_impl(&_mh_execute_header, v116, v117, "UpdateAccountWithACAccount: Resolved non-Apple account identifier enabled for Reminders from displayACAccount: {resolved: %{public}s, displayACAccount: %{public}@}.", v118, 0x16u);
          sub_1000050A4(v263, &unk_100938E70, &unk_100797230);

          sub_10000607C(v266);

          v115 = v271;
        }

        v120 = [objc_opt_self() accountDescriptionWithACAccount:v115];
        if (v120)
        {
          v121 = v120;
          v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v123;

          v23 = v288;
        }

        else
        {
          v122 = 0;
          v124 = 0xE000000000000000;
        }

        v84 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
        v170 = *(v84 + 2);
        v169 = *(v84 + 3);
        if (v170 >= v169 >> 1)
        {
          v84 = sub_1003685B8((v169 > 1), v170 + 1, 1, v84);
        }

        *(v84 + 2) = v170 + 1;
        v171 = &v84[48 * v170];
        *(v171 + 4) = v274;
        *(v171 + 5) = v114;
        *(v171 + 6) = v122;
        *(v171 + 7) = v124;
        *(v171 + 8) = v281;
        *(v171 + 18) = 33685505;
        v171[76] = 2;
        v17 = a11;
        goto LABEL_164;
      }
    }

LABEL_66:
    v84 = _swiftEmptyArrayStorage;
LABEL_164:
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v235 = v21;

    sub_1006C1BC8(v84, a2, v270, v284, v23, v84, a6, v235, v285, a9 & 1, a10, v17);

    swift_bridgeObjectRelease_n();

    goto LABEL_165;
  }

  if ((v66 & 1) == 0)
  {

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    v21 = v11;
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&aBlock = v89;
      *v88 = 136446210;
      *(v88 + 4) = sub_10000668C(v284, v288, &aBlock);
      _os_log_impl(&_mh_execute_header, v86, v87, "UpdateAccountWithACAccount: Got an Apple ID, not eligible for CloudKit reminders. Will only process iCloud CalDAV account for it {accountID: %{public}s}", v88, 0xCu);
      sub_10000607C(v89);
      v23 = v288;
    }

    v90 = sub_1006BFC1C(v22);
    if (v91)
    {
      v92 = v90;
      v93 = v91;

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&aBlock = v97;
        *v96 = 136446210;
        *(v96 + 4) = sub_10000668C(v92, v93, &aBlock);
        _os_log_impl(&_mh_execute_header, v94, v95, "UpdateAccountWithACAccount: AppleAccount {accountID: %{public}s} is ineligible for CloudKit Reminders, will process it as iCloud CalDAV", v96, 0xCu);
        sub_10000607C(v97);
      }

      v278 = a6;
      v98 = [objc_opt_self() accountDescriptionWithACAccount:v22];
      v99 = v92;
      v100 = v21;
      if (v98)
      {
        v101 = v98;
        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;
      }

      else
      {
        v102 = 0;
        v104 = 0;
      }

      v23 = v288;
      if (v104)
      {
        v165 = v102;
      }

      else
      {
        v165 = 0x64756F6C4369;
      }

      if (!v104)
      {
        v104 = 0xE600000000000000;
      }

      v84 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
      v167 = *(v84 + 2);
      v166 = *(v84 + 3);
      if (v167 >= v166 >> 1)
      {
        v84 = sub_1003685B8((v166 > 1), v167 + 1, 1, v84);
      }

      *(v84 + 2) = v167 + 1;
      v168 = &v84[48 * v167];
      *(v168 + 4) = v99;
      *(v168 + 5) = v93;
      *(v168 + 6) = v165;
      *(v168 + 7) = v104;
      *(v168 + 8) = 3;
      *(v168 + 18) = 33685505;
      v168[76] = 2;
      v21 = v100;
      v17 = a11;
      a6 = v278;
      goto LABEL_164;
    }

    goto LABEL_66;
  }

  v277 = a6;
  *&v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v295 + 1) = v67;
  v68 = [v22 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v21 = v11;
  if (v68)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v295 = 0u;
    v296 = 0u;
  }

  v125 = a3;
  aBlock = v295;
  v292 = v296;
  if (*(&v296 + 1))
  {
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v125 = [v290 BOOLValue];

      goto LABEL_82;
    }
  }

  else
  {
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  }

  if (a3 != 2)
  {
LABEL_82:
    *&aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&aBlock + 1) = v152;
    v153 = [v22 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v153)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v295 = 0u;
      v296 = 0u;
    }

    aBlock = v295;
    v292 = v296;
    if (*(&v296 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v154 = v290;
      }

      else
      {
        v154 = 0;
      }

      if (v125)
      {
        goto LABEL_90;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v154 = 0;
      if (v125)
      {
LABEL_90:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {

          v180 = Logger.logObject.getter();
          v181 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v180, v181))
          {
            v182 = swift_slowAlloc();
            *v182 = 0;
            _os_log_impl(&_mh_execute_header, v180, v181, "Store controller missing for checking whether migration has failed", v182, 2u);
          }

          goto LABEL_165;
        }

        v156 = Strong;
        v157 = sub_1006BF940(v284, v23);
        if (!v157)
        {

          v236 = Logger.logObject.getter();
          v237 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v236, v237))
          {
            v238 = v23;
            v239 = swift_slowAlloc();
            v240 = swift_slowAlloc();
            *&aBlock = v240;
            *v239 = 136315138;
            v289 = v154;
            v241 = sub_10000668C(v284, v238, &aBlock);

            *(v239 + 4) = v241;
            _os_log_impl(&_mh_execute_header, v236, v237, "Display ACAccount ID is not an UUID {displayACAccountID: %s}", v239, 0xCu);
            sub_10000607C(v240);
          }

          else
          {
          }

          goto LABEL_165;
        }

        v158 = v157;
        sub_10031C72C(v157, v156);
        v160 = v159;

        LODWORD(v158) = *(v160 + 88);

        v282 = v158 ^ 1;
        goto LABEL_95;
      }
    }

    v282 = 0;
LABEL_95:
    if (v154 && (v282 & [v154 BOOLValue] & 1) != 0)
    {
      *(v270 + 16) = 1;

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&aBlock = v164;
        *v163 = 136446210;
        *(v163 + 4) = sub_10000668C(v284, v288, &aBlock);
        _os_log_impl(&_mh_execute_header, v161, v162, "UpdateAccountWithACAccount: setting shouldMigrateInactivatedICloudCalDavData to true {displayAccountID: %{public}s}", v163, 0xCu);
        sub_10000607C(v164);
        v23 = v288;
      }
    }

    if ([v22 aa_isAccountClass:AAAccountClassPrimary])
    {
      v267 = _auto_REMAccountTypeForPrimaryCloudKit();
    }

    else
    {
      v267 = 6;
    }

    v172 = v154;

    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.default.getter();
    v275 = v172;

    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v175 = 136447234;
      *(v175 + 4) = sub_10000668C(v284, v23, &aBlock);
      *(v175 + 12) = 2082;
      v176 = REMAccountType.loggableDescription.getter();
      v178 = sub_10000668C(v176, v177, &aBlock);

      *(v175 + 14) = v178;
      *(v175 + 22) = 1024;
      *(v175 + 24) = v125 & 1;
      *(v175 + 28) = 1024;
      *(v175 + 30) = v282 & 1;
      *(v175 + 34) = 2082;
      if (v154)
      {
        v179 = [v275 BOOLValue];
      }

      else
      {
        v179 = 2;
      }

      LOBYTE(v295) = v179;
      sub_1000F5104(&qword_100939340, &qword_1007A3950);
      v201 = String.init<A>(describing:)();
      v203 = sub_10000668C(v201, v202, &aBlock);

      *(v175 + 36) = v203;
      _os_log_impl(&_mh_execute_header, v173, v174, "UpdateAccountWithACAccount: Will process CloudKit account {accountID: %{public}s, type: %{public}s, didChooseToMigrate: %{BOOL}d, shouldShowCloudKitAccount: %{BOOL}d, didFinishMigration: %{public}s}", v175, 0x2Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    v262 = objc_opt_self();
    v204 = [v262 accountDescriptionWithACAccount:v22];
    if (v204)
    {
      v205 = v204;
      v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v208 = v207;
    }

    else
    {
      v206 = 0;
      v208 = 0;
    }

    v264 = v125;
    v269 = v21;
    if (v154)
    {
      v209 = [v275 BOOLValue];
    }

    else
    {
      v209 = 2;
    }

    v210 = [v22 aa_isAccountClass:AAAccountClassBasic];
    if (v208)
    {
      v211 = v206;
    }

    else
    {
      v211 = 0x64756F6C4369;
    }

    if (v208)
    {
      v212 = v208;
    }

    else
    {
      v212 = 0xE600000000000000;
    }

    v84 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
    v214 = *(v84 + 2);
    v213 = *(v84 + 3);
    if (v214 >= v213 >> 1)
    {
      v84 = sub_1003685B8((v213 > 1), v214 + 1, 1, v84);
    }

    *(v84 + 2) = v214 + 1;
    v215 = &v84[48 * v214];
    *(v215 + 4) = v284;
    *(v215 + 5) = v288;
    *(v215 + 6) = v211;
    *(v215 + 7) = v212;
    *(v215 + 8) = v267;
    v215[72] = v282 & 1;
    v215[73] = 0;
    v215[74] = v264 & 1;
    v215[75] = v209;
    v215[76] = v210;
    v216 = sub_1006BFC1C(v22);
    if (v217)
    {
      v218 = v216;
      v219 = v217;

      v220 = Logger.logObject.getter();
      v221 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        *&aBlock = v223;
        *v222 = 136446466;
        *(v222 + 4) = sub_10000668C(v218, v219, &aBlock);
        *(v222 + 12) = 1024;
        *(v222 + 14) = v264 & 1;
        _os_log_impl(&_mh_execute_header, v220, v221, "UpdateAccountWithACAccount: Will process iCloud CalDAV account {accountID: %{public}s, didChooseToMigrate: %{BOOL}d}", v222, 0x12u);
        sub_10000607C(v223);
      }

      v224 = [v262 accountDescriptionWithACAccount:v22];
      v225 = v219;
      if (v224)
      {
        v226 = v224;
        v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v229 = v228;
      }

      else
      {
        v227 = 0;
        v229 = 0;
      }

      if (v229)
      {
        v230 = v227;
      }

      else
      {
        v230 = 0x64756F6C4369;
      }

      if (v229)
      {
        v231 = v229;
      }

      else
      {
        v231 = 0xE600000000000000;
      }

      v233 = *(v84 + 2);
      v232 = *(v84 + 3);
      if (v233 >= v232 >> 1)
      {
        v84 = sub_1003685B8((v232 > 1), v233 + 1, 1, v84);
      }

      *(v84 + 2) = v233 + 1;
      v234 = &v84[48 * v233];
      *(v234 + 4) = v218;
      *(v234 + 5) = v225;
      *(v234 + 6) = v230;
      *(v234 + 7) = v231;
      *(v234 + 8) = 3;
      v234[72] = (v282 & 1) == 0;
      *(v234 + 73) = 33686016;
    }

    else
    {
    }

    v17 = a11;
    v21 = v269;
    a6 = v277;
LABEL_163:
    v23 = v288;
    goto LABEL_164;
  }

  v126 = swift_unknownObjectWeakLoadStrong();
  if (!v126)
  {
    goto LABEL_126;
  }

  v127 = v126;
  if (![v126 hasPassedBuddyAndSystemDataMigrator])
  {

    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *&aBlock = v186;
      *v185 = 136446210;
      *(v185 + 4) = sub_10000668C(v284, v288, &aBlock);
      _os_log_impl(&_mh_execute_header, v183, v184, "UpdateAccountWithACAccount: hasPassedBuddyAndSystemDataMigrator != true, setting shouldFetchMigrationState to false {accountID: %{public}s}", v185, 0xCu);
      sub_10000607C(v186);
      v23 = v288;
    }

    goto LABEL_126;
  }

  if ((v273 & 1) == 0)
  {
LABEL_126:

    v187 = Logger.logObject.getter();
    v188 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v187, v188))
    {
      v189 = v23;
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&aBlock = v191;
      *v190 = 136446210;
      v192 = sub_10000668C(v284, v189, &aBlock);

      *(v190 + 4) = v192;
      _os_log_impl(&_mh_execute_header, v187, v188, "UpdateAccountWithACAccount: Will not fetch migration state {accountID: %{public}s}", v190, 0xCu);
      sub_10000607C(v191);
    }

    else
    {
    }

    v193 = objc_opt_self();
    v194 = [v193 sharedInstance];
    v195 = [v194 accountStore];

    v196 = [v193 sharedInstance];
    v197 = swift_allocObject();
    *(v197 + 16) = v22;
    *(v197 + 24) = a5;
    *(v197 + 32) = a2;
    *(v197 + 40) = v273 & 1;
    *(v197 + 48) = sub_1006D4820;
    *(v197 + 56) = v287;
    v293 = sub_1006D5518;
    v294 = v197;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v292 = sub_100007688;
    *(&v292 + 1) = &unk_1008FBEF0;
    v198 = _Block_copy(&aBlock);
    v199 = v22;

    v200 = a2;

    [v196 saveDidChooseToMigrate:0 didFinishMigration:0 toACAccount:v199 inStore:v195 completionHandler:v198];

    _Block_release(v198);

    goto LABEL_165;
  }

  v128 = swift_allocObject();
  *(v128 + 16) = v277;
  *(v128 + 24) = v11;
  *(v128 + 32) = v285;
  *(v128 + 40) = a9 & 1;
  *(v128 + 48) = a10;
  *(v128 + 56) = a11;
  v129 = swift_allocObject();
  *(v129 + 16) = v284;
  *(v129 + 24) = v23;
  *(v129 + 32) = a5;
  *(v129 + 40) = v22;
  *(v129 + 48) = a2;
  *(v129 + 56) = 1;
  *(v129 + 64) = sub_1006D5470;
  *(v129 + 72) = v128;
  swift_retain_n();
  v130 = v21;
  swift_retain_n();
  v131 = v22;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v132 = a2;
  a2 = v130;
  v133 = v131;

  v265 = v132;

  v273 = v133;
  v134 = [v133 identifier];
  if (v134)
  {
    v135 = v134;
    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v137;
    v139 = swift_unknownObjectWeakLoadStrong();
    if (v139 && (v140 = v139, v141 = [v139 cloudContext], v140, v141))
    {
      v286 = v141;
      v142 = v136;

      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *&aBlock = v146;
        *v145 = 136446210;
        *(v145 + 4) = sub_10000668C(v142, v138, &aBlock);
        _os_log_impl(&_mh_execute_header, v143, v144, "Fetch migration state from user record {accountID: %{public}s}", v145, 0xCu);
        sub_10000607C(v146);
      }

      v147 = swift_allocObject();
      v147[2] = v142;
      v147[3] = v138;
      v147[4] = sub_1006D551C;
      v147[5] = v129;
      v148 = v273;
      v147[6] = v273;
      v293 = sub_1006D5520;
      v294 = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v292 = sub_10016AC08;
      *(&v292 + 1) = &unk_1008FBF90;
      v149 = _Block_copy(&aBlock);
      v150 = v273;

      [v286 fetchUserRecordWithAccountID:v135 completionHandler:v149];
      _Block_release(v149);

      v151 = v265;
    }

    else
    {
      v242 = v136;

      v243 = Logger.logObject.getter();
      v244 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v243, v244))
      {
        v245 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        *&aBlock = v246;
        *v245 = 136446210;
        v247 = sub_10000668C(v242, v138, &aBlock);

        *(v245 + 4) = v247;
        _os_log_impl(&_mh_execute_header, v243, v244, "Missing cloud context for fetching migration state {accountID: %{public}s}", v245, 0xCu);
        sub_10000607C(v246);
      }

      else
      {
      }

      v248 = objc_opt_self();
      v249 = String._bridgeToObjectiveC()();
      v250 = [v248 internalErrorWithDebugDescription:v249];

      v251 = v277;
      swift_retain_n();
      v252 = a2;
      swift_retain_n();
      v253 = v252;

      v254 = v250;
      v255 = Logger.logObject.getter();
      v256 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v255, v256))
      {
        v272 = v253;
        v257 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v257 = 136315394;
        swift_getErrorValue();
        v258 = Error.localizedDescription.getter();
        v260 = sub_10000668C(v258, v259, &aBlock);

        *(v257 + 4) = v260;
        *(v257 + 12) = 2082;
        *(v257 + 14) = sub_10000668C(v284, v288, &aBlock);
        _os_log_impl(&_mh_execute_header, v255, v256, "UpdateAccountWithACAccount: Failed to fetch migration status. Assume the account is un-migrated {error: %s, accountID: %{public}s}", v257, 0x16u);
        swift_arrayDestroy();
        v251 = v277;

        v253 = v272;
      }

      v261 = v253;

      v148 = v273;
      v151 = v265;
      sub_1006C3FCC(v273, v265, 0, 1, a5, v251, v261, v285, a9 & 1, a10, a11);
    }

    goto LABEL_165;
  }

LABEL_187:

  __break(1u);
}

void sub_1006C6898(char a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8)
{
  v39 = a6;
  v40 = a7;
  v38 = a5;
  v46 = a2;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = *(v44 + 64);
  __chkstk_darwin(v12);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  v15 = *(v41 + 64);
  __chkstk_darwin(v43);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10094FB70);
  v19 = a4;
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v37 = a8;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v22 = 138544130;
    v25 = [v19 identifier];
    *(v22 + 4) = v25;
    *v23 = v25;
    *(v22 + 12) = 1024;
    *(v22 + 14) = a1 & 1;
    *(v22 + 18) = 1024;
    *(v22 + 20) = v46 & 1;
    *(v22 + 24) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v26 = Error.rem_errorDescription.getter();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_10000668C(v26, v28, aBlock);

    *(v22 + 26) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "RDAccountUtils: Finished updating account {accountID: %{public}@, didAddAccount: %{BOOL}d, didUpdateAccount: %{BOOL}d, error: %s}", v22, 0x22u);
    sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

    sub_10000607C(v24);

    a8 = v37;
    if (a1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (a1)
    {
      goto LABEL_13;
    }
  }

  if ((v46 & 1) == 0 && !a3)
  {
    dispatch_group_leave(a8);
    return;
  }

LABEL_13:
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v30 = swift_allocObject();
  v32 = v38;
  v31 = v39;
  *(v30 + 16) = a3;
  *(v30 + 24) = v32;
  *(v30 + 32) = v31;
  *(v30 + 40) = a1 & 1;
  *(v30 + 48) = v40;
  *(v30 + 56) = v46 & 1;
  *(v30 + 64) = a8;
  aBlock[4] = sub_1006D5488;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FC4B8;
  v33 = _Block_copy(aBlock);
  swift_errorRetain();

  v34 = a8;
  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v35 = v42;
  v36 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v44 + 8))(v35, v36);
  (*(v41 + 8))(v17, v43);
}

uint64_t sub_1006C6E08(__int128 *a1, void *a2, uint64_t a3, Swift::Int a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char *a10, void *a11)
{
  v213 = a5;
  v223 = a2;
  v234 = a1;
  v217 = 0;
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v229 = &v195 - v19;
  v20 = type metadata accessor for UUID();
  v232 = *(v20 - 8);
  v233 = v20;
  v21 = *(v232 + 8);
  __chkstk_darwin(v20);
  v226 = &v195 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for DispatchWorkItemFlags();
  v204 = *(v205 - 8);
  v23 = *(v204 + 64);
  __chkstk_darwin(v205);
  v202 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for DispatchQoS();
  v201 = *(v203 - 8);
  v25 = *(v201 + 64);
  __chkstk_darwin(v203);
  v200 = &v195 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v27[2] = a7;
  v27[3] = a8;
  v27[4] = a9;
  v27[5] = a10;
  v27[6] = a11;
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = a4;
  v199 = a4;
  v28[4] = a5;
  v28[5] = a6;
  v28[6] = sub_1006D5474;
  v28[7] = v27;
  v207 = v28;
  v29 = objc_allocWithZone(REMSaveRequest);
  v209 = a7;
  v212 = a8;
  v30 = a10;

  v211 = a9;

  v210 = a11;
  v214 = a3;

  v208 = v27;

  v221 = [v29 initWithStore:v223];
  v32 = *(v234 + 2);
  v215 = a6;
  v206 = a10;
  if (!v32)
  {
    v144 = 0;
LABEL_83:
    v222 = v32;
    v219 = v144;
    LOBYTE(v34) = v144 | v32;
    if (((v144 | v32) & 1) == 0 || (v145 = v214, swift_beginAccess(), *(v145 + 16) != 1))
    {
      v152 = v209;

      v153 = v210;
LABEL_99:
      v168 = *(a6 + 16);
      if (v168)
      {
        v169 = v30;
        aBlock = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v168, 0);
        v170 = aBlock;
        v171 = (a6 + 40);
        do
        {
          v173 = *(v171 - 1);
          v172 = *v171;
          aBlock = v170;
          v175 = v170[2];
          v174 = v170[3];

          if (v175 >= v174 >> 1)
          {
            sub_100026EF4((v174 > 1), v175 + 1, 1);
            v170 = aBlock;
          }

          v170[2] = v175 + 1;
          v176 = &v170[2 * v175];
          v176[4] = v173;
          v176[5] = v172;
          v171 += 6;
          --v168;
        }

        while (v168);
        v30 = v169;
      }

      if (qword_1009366E8 != -1)
      {
LABEL_115:
        swift_once();
      }

      v177 = type metadata accessor for Logger();
      sub_100006654(v177, qword_10094FB70);
      v178 = v209;
      v179 = Logger.logObject.getter();
      v180 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        aBlock = v183;
        *v181 = 138544130;
        v184 = [v178 identifier];
        *(v181 + 4) = v184;
        *v182 = v184;
        *(v181 + 12) = 1024;
        *(v181 + 14) = v219 & 1;
        *(v181 + 18) = 1024;
        *(v181 + 20) = v222 & 1;
        *(v181 + 24) = 2080;
        *(v181 + 26) = sub_10000668C(7104878, 0xE300000000000000, &aBlock);
        _os_log_impl(&_mh_execute_header, v179, v180, "RDAccountUtils: Finished updating account {accountID: %{public}@, didAddAccount: %{BOOL}d, didUpdateAccount: %{BOOL}d, error: %s}", v181, 0x22u);
        sub_1000050A4(v182, &unk_100938E70, &unk_100797230);

        sub_10000607C(v183);
      }

      if (v34)
      {
        v234 = v178;
        v185 = v30;
        if (qword_100935D30 != -1)
        {
          swift_once();
        }

        v233 = qword_100974CC8;
        v186 = swift_allocObject();
        v187 = v212;
        *(v186 + 16) = 0;
        *(v186 + 24) = v187;
        *(v186 + 32) = v211;
        *(v186 + 40) = v219 & 1;
        *(v186 + 48) = v185;
        *(v186 + 56) = v222 & 1;
        v188 = v210;
        *(v186 + 64) = v210;
        v240 = sub_1006D4A80;
        v241 = v186;
        aBlock = _NSConcreteStackBlock;
        v237 = 1107296256;
        v238 = sub_100019200;
        v239 = &unk_1008FC418;
        v189 = _Block_copy(&aBlock);

        v232 = v188;
        v190 = v200;
        static DispatchQoS.unspecified.getter();
        v235 = _swiftEmptyArrayStorage;
        sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000F5104(&unk_100939E50, &unk_100791AD0);
        sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
        v191 = v202;
        v192 = v205;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v189);
        (*(v204 + 8))(v191, v192);
        (*(v201 + 8))(v190, v203);
      }

      else
      {
        v193 = v210;
        dispatch_group_leave(v210);
      }

      goto LABEL_114;
    }

    v146 = objc_opt_self();
    v147 = v209;

    v148 = v210;
    v149 = [v146 daemonUserDefaults];
    v150 = [v149 acAccountIdentifiersToMigrateInactivatedCalDavData];

    if (v150)
    {
      v151 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v151 = _swiftEmptyArrayStorage;
    }

    v154 = sub_1001A5660(v151);

    v235 = v154;
    v155 = v213;

    sub_100378434(&aBlock, v199, v155);

    v156 = [v146 daemonUserDefaults];
    v157 = v235;
    v158 = v235[2];
    if (v158)
    {
      v159 = sub_1003689CC(v235[2], 0);
      v160 = sub_1002791DC(&aBlock, v159 + 4, v158, v157);
      sub_10001B860();
      if (v160 == v158)
      {
LABEL_94:
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v156 setAcAccountIdentifiersToMigrateInactivatedCalDavData:isa];

        if (qword_1009366E8 != -1)
        {
          swift_once();
        }

        v162 = type metadata accessor for Logger();
        sub_100006654(v162, qword_10094FB70);
        v163 = v213;

        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          aBlock = v167;
          *v166 = 136446210;
          *(v166 + 4) = sub_10000668C(v199, v163, &aBlock);
          _os_log_impl(&_mh_execute_header, v164, v165, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v166, 0xCu);
          sub_10000607C(v167);
        }

        goto LABEL_99;
      }

      __break(1u);
    }

    goto LABEL_94;
  }

  LODWORD(v220) = 0;
  v219 = 0;
  v222 = 0;
  v33 = v234 + 2;
  v228 = (v232 + 48);
  v225 = (v232 + 32);
  v224 = (v232 + 8);
  v196 = 20250728;
  v34 = 1 - v32;
  *&v31 = 136446210;
  v230 = v31;
  *&v31 = 136315650;
  v216 = v31;
  *&v31 = 136446722;
  v197 = v31;
  *&v31 = 136315906;
  v198 = v31;
  v35 = v233;
  while (1)
  {
    *&v243[13] = *(v33 + 29);
    v36 = v33[1];
    v242 = *v33;
    *v243 = v36;
    v37 = v243[24];
    v30 = *(&v36 + 1);
    v38 = *(&v242 + 1);
    v231 = v36;
    v232 = *&v243[16];
    v39 = v242;
    sub_1006D18E0(&v242, &aBlock);
    v40 = qword_1009366E8;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = sub_100006654(v41, qword_10094FB70);

    v234 = v42;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v45 = v230;
      *(v45 + 4) = sub_10000668C(v39, v38, &aBlock);
      _os_log_impl(&_mh_execute_header, v43, v44, "UpdateAccountsWithAccountInfos: Updating account object {accountID: %{public}s}", v45, 0xCu);
      sub_10000607C(v46);
      v35 = v233;
    }

    v47 = v229;
    UUID.init(uuidString:)();
    if ((*v228)(v47, 1, v35) == 1)
    {
      sub_1000050A4(v47, &unk_100939D90, "8\n\r");

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock = v51;
        *v50 = v230;
        *(v50 + 4) = sub_10000668C(v39, v38, &aBlock);
        _os_log_impl(&_mh_execute_header, v48, v49, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v50, 0xCu);
        sub_10000607C(v51);
        v35 = v233;
      }

      sub_1006D1918(&v242);

LABEL_19:

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        aBlock = v68;
        *v67 = v230;
        v69 = sub_10000668C(v39, v38, &aBlock);

        *(v67 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v65, v66, "UpdateAccountsWithAccountInfos: Failed to create UUID object, account ignored {accountID: %{public}s}", v67, 0xCu);
        sub_10000607C(v68);
        v35 = v233;

        if (!v34)
        {
          goto LABEL_73;
        }
      }

      else
      {

        if (!v34)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_71;
    }

    v52 = v226;
    (*v225)(v226, v47, v35);
    v53 = objc_opt_self();
    v54 = UUID._bridgeToObjectiveC()().super.isa;
    v55 = [v53 objectIDWithUUID:v54];

    (*v224)(v52, v35);
    if (!v55)
    {
      sub_1006D1918(&v242);

      goto LABEL_19;
    }

    aBlock = 0;
    v56 = [v223 fetchAccountWithObjectID:v55 error:&aBlock];
    v227 = v55;
    if (!v56)
    {
      break;
    }

    v57 = aBlock;
    if (v243[25])
    {
      sub_1006D1918(&v242);

      v58 = v56;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        aBlock = v232;
        *v61 = v216;
        v62 = v58;
        v63 = sub_10000668C(v231, v30, &aBlock);

        *(v61 + 4) = v63;
        v58 = v62;
        *(v61 + 12) = 2082;
        v64 = sub_10000668C(v39, v38, &aBlock);

        *(v61 + 14) = v64;
        *(v61 + 22) = 2048;
        *(v61 + 24) = [v62 type];

        _os_log_impl(&_mh_execute_header, v59, v60, "UpdateAccountsWithAccountInfos is going to delete account {accountName: %s, accountID: %{public}s, type: %ld}.", v61, 0x20u);
        swift_arrayDestroy();

        v35 = v233;
      }

      else
      {
      }

      v88 = [v221 updateAccount:v58];
      [v88 removeFromStore];

      v89 = 1;
      if (!v34)
      {
        LODWORD(v220) = 1;
        v135 = &v244;
        goto LABEL_75;
      }

      v222 = 1;
      v219 = 1;
      LODWORD(v220) = 1;
      goto LABEL_71;
    }

    v71 = v56;
    v72 = [v71 type];
    if (v72 == v232)
    {

      v220 = v71;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();

      v75 = os_log_type_enabled(v73, v74);
      v218 = v56;
      if (v75)
      {
        v76 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        aBlock = v195;
        *v76 = v216;
        *(v76 + 4) = sub_10000668C(v231, v30, &aBlock);
        *(v76 + 12) = 2082;
        *(v76 + 14) = sub_10000668C(v39, v38, &aBlock);
        *(v76 + 22) = 2048;
        v77 = v220;
        *(v76 + 24) = [v220 type];

        _os_log_impl(&_mh_execute_header, v73, v74, "UpdateAccountsWithAccountInfos is updating existing account object {name: %s, accountID: %{public}s, type: %ld}", v76, 0x20u);
        swift_arrayDestroy();

        v35 = v233;
      }

      else
      {
      }

      v100 = v220;
      v101 = [v221 updateAccount:v220];
      v102 = String._bridgeToObjectiveC()();

      [v101 setName:v102];

      goto LABEL_45;
    }

    sub_1006D1918(&v242);

    v90 = v71;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v218 = v91;
      v94 = v93;
      aBlock = swift_slowAlloc();
      *v94 = v198;
      v95 = sub_10000668C(v231, v30, &aBlock);
      v231 = v90;
      v96 = v95;

      *(v94 + 4) = v96;
      *(v94 + 12) = 2082;
      v97 = sub_10000668C(v39, v38, &aBlock);

      *(v94 + 14) = v97;
      *(v94 + 22) = 2048;
      v98 = v231;
      *(v94 + 24) = [v231 type];

      *(v94 + 32) = 2048;
      *(v94 + 34) = v232;
      v99 = v218;
      _os_log_impl(&_mh_execute_header, v218, v92, "UpdateAccountsWithAccountInfos: Unexpected account type, account ignored. {accountName: %s, accountID: %{public}s, expectedType: %ld, actualType: %ld}", v94, 0x2Au);
      swift_arrayDestroy();
      v35 = v233;

      goto LABEL_69;
    }

    if (!v34)
    {
      goto LABEL_73;
    }

LABEL_71:
    ++v34;
    v33 += 3;
    if (v34 == 1)
    {
      __break(1u);
      goto LABEL_115;
    }
  }

  v70 = aBlock;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v217 = 0;

  if (v243[25] == 1)
  {
    sub_1006D1918(&v242);

    if (!v34)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  if ((v37 & 1) != 0 || (v78 = objc_allocWithZone(REMAccountTypeHost), v79 = [v78 initWithType:v232], v80 = objc_msgSend(v79, "isCloudKit"), v79, v80))
  {

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    v83 = os_log_type_enabled(v81, v82);
    v218 = 0;
    if (v83)
    {
      v84 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      aBlock = &v220->isa;
      *v84 = v216;
      *(v84 + 4) = sub_10000668C(v231, v30, &aBlock);
      v219 = v82;
      *(v84 + 12) = 2082;
      *(v84 + 14) = sub_10000668C(v39, v38, &aBlock);
      *(v84 + 22) = 2082;
      v85 = REMAccountType.loggableDescription.getter();
      v87 = sub_10000668C(v85, v86, &aBlock);

      *(v84 + 24) = v87;
      _os_log_impl(&_mh_execute_header, v81, v219, "UpdateAccountsWithAccountInfos is creating account object {name: %s, accountID: %{public}s, type: %{public}s}", v84, 0x20u);
      swift_arrayDestroy();

      v35 = v233;
    }

    v103 = String._bridgeToObjectiveC()();

    v30 = v232;
    v104 = [v221 __addAccountWithType:v232 name:v103];

    [v104 setObjectID:v227];
    v105 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v30];
    v106 = [v105 isCloudKit];

    v107 = v104;
    v101 = v107;
    if (v106)
    {
      [v107 setPersistenceCloudSchemaVersion:v196];
    }

    else
    {
      v108 = String._bridgeToObjectiveC()();
      [v101 setExternalIdentifier:v108];
    }

    v219 = 1;
LABEL_45:
    v109 = [v101 inactive];

    if (v37 == v109)
    {
      v110 = v101;
      [v110 setInactive:v37 ^ 1u];

      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v30 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        aBlock = &v231->isa;
        *v30 = v197;
        [v110 inactive];
        v113 = Bool.yesno.getter();
        v115 = sub_10000668C(v113, v114, &aBlock);

        *(v30 + 4) = v115;
        v35 = v233;
        *(v30 + 6) = 2082;
        v116 = sub_10000668C(v39, v38, &aBlock);

        *(v30 + 14) = v116;
        *(v30 + 11) = 2082;
        v117 = REMAccountType.loggableDescription.getter();
        v119 = sub_10000668C(v117, v118, &aBlock);

        *(v30 + 3) = v119;
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
    }

    v120 = v243[26];
    if (v243[26] != 2)
    {
      if ([v101 didChooseToMigrateLocally])
      {
        v121 = [v101 didChooseToMigrate];
        if ((v120 & 1) == 0)
        {
          if (v121)
          {
            [v101 setDidChooseToMigrateLocally:0];
          }
        }
      }

      [v101 setDidChooseToMigrate:v120 & 1];
    }

    v122 = v243[28];
    if (v243[27] != 2)
    {
      [v101 setDidFinishMigration:v243[27] & 1];
    }

    sub_1006D1918(&v242);
    if (v122 != 2)
    {
      [v101 setDebugSyncDisabled:v122 & 1];
    }

    if (v222)
    {

      LODWORD(v220) = 1;
      v222 = 1;
      if (!v34)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v123 = [v101 changedKeys];
      v124 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = *(v124 + 16);

      LODWORD(v220) = v125 != 0;
      v222 = v220;
      if (!v34)
      {
        goto LABEL_73;
      }
    }

    goto LABEL_71;
  }

  sub_1006D1918(&v242);

  v98 = Logger.logObject.getter();
  v126 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v98, v126))
  {
    v127 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v127 = v216;
    v128 = sub_10000668C(v231, v30, &aBlock);
    v231 = v98;
    v129 = v128;

    *(v127 + 4) = v129;
    *(v127 + 12) = 2082;
    v130 = sub_10000668C(v39, v38, &aBlock);

    *(v127 + 14) = v130;
    *(v127 + 22) = 2082;
    v131 = REMAccountType.loggableDescription.getter();
    v133 = sub_10000668C(v131, v132, &aBlock);

    *(v127 + 24) = v133;
    v134 = v231;
    _os_log_impl(&_mh_execute_header, v231, v126, "UpdateAccountsWithAccountInfos won't create inactive accounts unless it is CloudKit {name: %s, accountID: %{public}s, type: %{public}s}", v127, 0x20u);
    swift_arrayDestroy();
    v35 = v233;

    goto LABEL_70;
  }

LABEL_69:

LABEL_70:
  if (v34)
  {
    goto LABEL_71;
  }

LABEL_73:
  if ((v220 & 1) == 0)
  {
    a6 = v215;
    v30 = v206;
    LODWORD(v32) = v222;
    v144 = v219;
    goto LABEL_83;
  }

  v89 = v222;
  v135 = &v245;
LABEL_75:
  *(v135 - 64) = v89;
LABEL_76:
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    *v138 = 0;
    _os_log_impl(&_mh_execute_header, v136, v137, "UpdateAccountsWithAccountInfos: Saving account object changes", v138, 2u);
  }

  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v139 = qword_100974CC8;
  v140 = swift_allocObject();
  v141 = v207;
  *(v140 + 16) = sub_1006D546C;
  *(v140 + 24) = v141;
  *(v140 + 32) = v219 & 1;
  *(v140 + 33) = v220 & 1;
  v240 = sub_1006D5468;
  v241 = v140;
  aBlock = _NSConcreteStackBlock;
  v237 = 1107296256;
  v238 = sub_100042968;
  v239 = &unk_1008FC468;
  v142 = _Block_copy(&aBlock);

  v143 = v221;
  [v221 saveWithQueue:v139 completion:v142];

  _Block_release(v142);

LABEL_114:
}

void sub_1006C8E98(void *a1, NSObject *a2, unsigned __int8 a3, char a4, uint64_t a5, void *a6, NSObject *a7, uint64_t a8, char *a9, void *a10)
{
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v303 = v17;
  v17[6] = a10;
  v18 = a6;
  swift_retain_n();
  v305 = a8;
  swift_retain_n();
  swift_retain_n();
  v19 = a10;
  v20 = v18;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = [a1 displayAccount];
  if (!v24)
  {
    v24 = a1;
  }

  v297 = a5;
  v304 = v22;
  v25 = &selRef_hack_willSaveHandled;
  v26 = [v24 identifier];
  if (!v26)
  {

    __break(1u);
    goto LABEL_182;
  }

  v27 = v26;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [v24 accountType];
  if (!v30)
  {
LABEL_182:

    __break(1u);
    goto LABEL_183;
  }

  v31 = v30;
  v306 = v23;
  v32 = [v30 identifier];

  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_12:

    if (([v24 isEnabledForDataclass:ACAccountDataclassReminders]& 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v35)
  {
    goto LABEL_12;
  }

  if (v33 == v36 && v35 == v37)
  {

    if (([v24 isEnabledForDataclass:ACAccountDataclassReminders]& 1) == 0)
    {
LABEL_24:
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100006654(v55, qword_10094FB70);
      v25 = a1;
      v39 = v24;

      v56 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v56, v24))
      {

        swift_bridgeObjectRelease_n();
        v24 = v304;
LABEL_32:
        v69 = v24;
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v70, v71))
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      a2 = v39;
      v57 = v10;
      v10 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      LODWORD(v10->isa) = 136446722;
      v58 = [v25 identifier];

      if (v58)
      {
        a7 = v29;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = sub_10000668C(v59, v61, &aBlock);

        *(&v10->isa + 4) = v62;
        WORD2(v10[1].isa) = 2082;
        v25 = sub_10000668C(v57, a7, &aBlock);

        *(&v10[1].isa + 6) = v25;
        HIWORD(v10[2].isa) = 2082;
        v39 = a2;
        v63 = [a2 accountType];
        if (v63)
        {
          v64 = v63;
          v25 = [v63 identifier];

          a7 = v304;
          if (v25)
          {
            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;

            v68 = sub_10000668C(v65, v67, &aBlock);

            v10[3].isa = v68;
            _os_log_impl(&_mh_execute_header, v56, v24, "UpdateAccountWithACAccount: ACAccount type is not supported or reminders dataclass is not enabled {accountID: %{public}s, displayAccountID: %{public}s, accountType: %{public}s}", v10, 0x20u);
            swift_arrayDestroy();

            v24 = v304;
            goto LABEL_32;
          }

          goto LABEL_185;
        }

LABEL_184:

        __break(1u);
LABEL_185:

        __break(1u);
        goto LABEL_186;
      }

LABEL_183:

      v39 = v304;

      __break(1u);
      goto LABEL_184;
    }

LABEL_23:
    v293 = v10;
    v53 = v29;
    v54 = 1;
    goto LABEL_35;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (([v24 isEnabledForDataclass:ACAccountDataclassReminders]& 1) == 0)
  {
    goto LABEL_24;
  }

  if (v52)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ([a1 accountPropertyForKey:REMDA_kCalDAVMobileAccountDelegatePrincipalPath])
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_10094FB70);
    v25 = a1;
    v39 = v24;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&aBlock = v10;
      *v42 = 136446466;
      v43 = [v25 identifier];

      if (!v43)
      {
LABEL_187:

        v39 = v304;

        __break(1u);
        goto LABEL_188;
      }

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v45;

      v25 = sub_10000668C(v44, v24, &aBlock);

      *(v42 + 4) = v25;
      *(v42 + 12) = 2082;
      v46 = [v39 accountType];
      if (!v46)
      {
LABEL_188:

        __break(1u);
        goto LABEL_189;
      }

      v47 = v46;
      v25 = [v46 identifier];

      a7 = v304;
      if (!v25)
      {
LABEL_189:

        __break(1u);
        goto LABEL_190;
      }

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_10000668C(v48, v50, &aBlock);

      *(v42 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v40, v41, "UpdateAccountWithACAccount: Skip handling CalDAV delegate account {accountID: %{public}s, displayAccountType: %{public}s}", v42, 0x16u);
      swift_arrayDestroy();

      v24 = v304;
    }

    else
    {

      v24 = v304;
    }

    v69 = v24;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
LABEL_51:
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&aBlock = v98;
      *v96 = 138544130;
      v99 = [v69 identifier];
      *(v96 + 4) = v99;
      *v97 = v99;
      *(v96 + 12) = 1024;
      *(v96 + 14) = 0;
      *(v96 + 18) = 1024;
      *(v96 + 20) = 0;
      *(v96 + 24) = 2080;
      *(v96 + 26) = sub_10000668C(7104878, 0xE300000000000000, &aBlock);
      _os_log_impl(&_mh_execute_header, v70, v71, "RDAccountUtils: Finished updating account {accountID: %{public}@, didAddAccount: %{BOOL}d, didUpdateAccount: %{BOOL}d, error: %s}", v96, 0x22u);
      sub_1000050A4(v97, &unk_100938E70, &unk_100797230);

      sub_10000607C(v98);
    }

LABEL_52:

    v100 = v306;
    dispatch_group_leave(v306);

LABEL_169:

    return;
  }

  v293 = v10;
  v53 = v29;
  aBlock = 0u;
  v309 = 0u;
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v54 = 0;
LABEL_35:
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_100006654(v72, qword_10094FB70);

  v73 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v294 = v53;
  if (os_log_type_enabled(v73, v25))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&aBlock = v75;
    *v74 = 136446210;
    *(v74 + 4) = sub_10000668C(v293, v53, &aBlock);
    _os_log_impl(&_mh_execute_header, v73, v25, "UpdateAccountWithACAccount: Try to update account object {accountID: %{public}s}", v74, 0xCu);
    sub_10000607C(v75);
  }

  v10 = swift_allocObject();
  LOBYTE(v10[2].isa) = 0;
  v76 = [v24 rem_isEligibleForCloudKitReminders];
  v292 = v10;
  if (!v54)
  {
    v79 = [v24 accountType];
    if (!v79)
    {
LABEL_186:

      v39 = v304;

      __break(1u);
      goto LABEL_187;
    }

    v80 = v79;
    v81 = sub_1006C3788(v79);
    v83 = v82;

    v290 = v24;
    if (v83)
    {
      v10 = v24;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      v86 = v306;
      if (os_log_type_enabled(v84, v85))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&aBlock = v88;
        *v87 = 136446210;
        v89 = [v10 accountType];
        if (!v89)
        {
LABEL_190:

          __break(1u);
          goto LABEL_191;
        }

        v90 = v89;
        v25 = [v89 identifier];

        v24 = v304;
        if (!v25)
        {
LABEL_191:

          __break(1u);
          goto LABEL_192;
        }

        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_10000668C(v91, v93, &aBlock);

        *(v87 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v84, v85, "UpdateAccountWithACAccount: Can't figure out REMAccountType for ACAccountType {acAccountType: %{public}s}", v87, 0xCu);
        sub_10000607C(v88);

        v95 = _swiftEmptyArrayStorage;
LABEL_157:
        v124 = v305;
        v86 = v306;
        goto LABEL_168;
      }

      v95 = _swiftEmptyArrayStorage;
      v24 = v304;
      v124 = v305;
    }

    else
    {

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();

      v298 = v81;
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v120 = 136446466;
        *(v120 + 4) = sub_10000668C(v293, v294, &aBlock);
        *(v120 + 12) = 2082;
        v121 = REMAccountType.loggableDescription.getter();
        v123 = sub_10000668C(v121, v122, &aBlock);

        *(v120 + 14) = v123;
        _os_log_impl(&_mh_execute_header, v118, v119, "UpdateAccountWithACAccount: Will process non-Apple account {displayAccountID: %{public}s, accountType: %{public}s}", v120, 0x16u);
        swift_arrayDestroy();
      }

      v124 = v305;
      v86 = v306;
      v125 = sub_1006C3CF4(v24);
      if (v126)
      {
        v127 = v125;
        v128 = v126;
        v129 = v24;

        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          *&aBlock = v134;
          *v132 = 136446466;
          *(v132 + 4) = sub_10000668C(v127, v128, &aBlock);
          *(v132 + 12) = 2114;
          v135 = [v129 identifier];
          *(v132 + 14) = v135;
          *v133 = v135;
          _os_log_impl(&_mh_execute_header, v130, v131, "UpdateAccountWithACAccount: Resolved non-Apple account identifier enabled for Reminders from displayACAccount: {resolved: %{public}s, displayACAccount: %{public}@}.", v132, 0x16u);
          sub_1000050A4(v133, &unk_100938E70, &unk_100797230);

          sub_10000607C(v134);
        }

        v136 = [objc_opt_self() accountDescriptionWithACAccount:v129];
        v124 = v305;
        v137 = v127;
        if (v136)
        {
          v138 = v136;
          v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v141 = v140;
        }

        else
        {
          v139 = 0;
          v141 = 0xE000000000000000;
        }

        v95 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
        v191 = *(v95 + 2);
        v190 = *(v95 + 3);
        if (v191 >= v190 >> 1)
        {
          v95 = sub_1003685B8((v190 > 1), v191 + 1, 1, v95);
        }

        *(v95 + 2) = v191 + 1;
        v192 = &v95[48 * v191];
        *(v192 + 4) = v137;
        *(v192 + 5) = v128;
        *(v192 + 6) = v139;
        *(v192 + 7) = v141;
        *(v192 + 8) = v298;
        *(v192 + 18) = 33685505;
        v192[76] = 2;
        goto LABEL_119;
      }

      v95 = _swiftEmptyArrayStorage;
      v24 = v304;
    }

LABEL_168:
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v255 = v24;

    v256 = v86;

    sub_1006C6E08(v95, a2, v292, v293, v294, v95, v255, a7, v124, a9, v256);

    swift_bridgeObjectRelease_n();
    v100 = v306;

    goto LABEL_169;
  }

  if ((v76 & 1) == 0)
  {

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&aBlock = v104;
      *v103 = 136446210;
      *(v103 + 4) = sub_10000668C(v293, v294, &aBlock);
      _os_log_impl(&_mh_execute_header, v101, v102, "UpdateAccountWithACAccount: Got an Apple ID, not eligible for CloudKit reminders. Will only process iCloud CalDAV account for it {accountID: %{public}s}", v103, 0xCu);
      sub_10000607C(v104);
    }

    v86 = v306;
    v105 = sub_1006BFC1C(v24);
    v290 = v24;
    if (v106)
    {
      v107 = v105;
      v108 = v106;

      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *&aBlock = v112;
        *v111 = 136446210;
        *(v111 + 4) = sub_10000668C(v107, v108, &aBlock);
        _os_log_impl(&_mh_execute_header, v109, v110, "UpdateAccountWithACAccount: AppleAccount {accountID: %{public}s} is ineligible for CloudKit Reminders, will process it as iCloud CalDAV", v111, 0xCu);
        sub_10000607C(v112);
      }

      v113 = [objc_opt_self() accountDescriptionWithACAccount:v24];
      if (v113)
      {
        v114 = v113;
        v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v116;
      }

      else
      {
        v115 = 0;
        v117 = 0;
      }

      if (v117)
      {
        v185 = v115;
      }

      else
      {
        v185 = 0x64756F6C4369;
      }

      if (v117)
      {
        v186 = v117;
      }

      else
      {
        v186 = 0xE600000000000000;
      }

      v95 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
      v188 = *(v95 + 2);
      v187 = *(v95 + 3);
      if (v188 >= v187 >> 1)
      {
        v95 = sub_1003685B8((v187 > 1), v188 + 1, 1, v95);
      }

      *(v95 + 2) = v188 + 1;
      v189 = &v95[48 * v188];
      *(v189 + 4) = v107;
      *(v189 + 5) = v108;
      *(v189 + 6) = v185;
      *(v189 + 7) = v186;
      *(v189 + 8) = 3;
      *(v189 + 18) = 33685505;
      v189[76] = 2;
      v124 = v305;
LABEL_119:
      v86 = v306;
      v24 = v304;
      goto LABEL_168;
    }

    v95 = _swiftEmptyArrayStorage;
    v124 = v305;
    v24 = v304;
    goto LABEL_168;
  }

  *&v312 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v312 + 1) = v77;
  v78 = [v24 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v78)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v312 = 0u;
    v313 = 0u;
  }

  v100 = v306;
  v142 = a3;
  aBlock = v312;
  v309 = v313;
  if (*(&v313 + 1))
  {
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v142 = [v307 BOOLValue];

      goto LABEL_84;
    }
  }

  else
  {
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  }

  if (a3 != 2)
  {
LABEL_84:
    *&aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&aBlock + 1) = v170;
    v171 = [v24 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v171)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v312 = 0u;
      v313 = 0u;
    }

    aBlock = v312;
    v309 = v313;
    if (*(&v313 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v172 = v307;
      }

      else
      {
        v172 = 0;
      }

      if (v142)
      {
        goto LABEL_93;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v172 = 0;
      if (v142)
      {
LABEL_93:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {

          v201 = Logger.logObject.getter();
          v202 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v201, v202))
          {
            v203 = swift_slowAlloc();
            *v203 = 0;
            _os_log_impl(&_mh_execute_header, v201, v202, "Store controller missing for checking whether migration has failed", v203, 2u);
          }

          v24 = v304;
          goto LABEL_169;
        }

        v174 = Strong;
        v175 = sub_1006BF940(v293, v294);
        if (!v175)
        {
          v286 = v172;

          v257 = Logger.logObject.getter();
          v258 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            *&aBlock = v260;
            *v259 = 136315138;
            v261 = sub_10000668C(v293, v294, &aBlock);

            *(v259 + 4) = v261;
            _os_log_impl(&_mh_execute_header, v257, v258, "Display ACAccount ID is not an UUID {displayACAccountID: %s}", v259, 0xCu);
            sub_10000607C(v260);
            v100 = v306;
          }

          else
          {
          }

          v24 = v304;
          goto LABEL_169;
        }

        v176 = v175;
        sub_10031C72C(v175, v174);
        v178 = v177;

        LODWORD(v176) = *(v178 + 88);

        v179 = v176 ^ 1;
        goto LABEL_98;
      }
    }

    v179 = 0;
LABEL_98:
    v299 = v179;
    if (v172 && (v179 & [v172 BOOLValue] & 1) != 0)
    {
      LOBYTE(v10[2].isa) = 1;

      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = v172;
        v184 = swift_slowAlloc();
        *&aBlock = v184;
        *v182 = 136446210;
        *(v182 + 4) = sub_10000668C(v293, v294, &aBlock);
        _os_log_impl(&_mh_execute_header, v180, v181, "UpdateAccountWithACAccount: setting shouldMigrateInactivatedICloudCalDavData to true {displayAccountID: %{public}s}", v182, 0xCu);
        sub_10000607C(v184);
        v172 = v183;
      }
    }

    if ([v24 aa_isAccountClass:AAAccountClassPrimary])
    {
      v289 = _auto_REMAccountTypeForPrimaryCloudKit();
    }

    else
    {
      v289 = 6;
    }

    v193 = v172;

    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.default.getter();
    v296 = v193;

    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v196 = 136447234;
      *(v196 + 4) = sub_10000668C(v293, v294, &aBlock);
      *(v196 + 12) = 2082;
      v197 = REMAccountType.loggableDescription.getter();
      v285 = v172;
      v199 = sub_10000668C(v197, v198, &aBlock);

      *(v196 + 14) = v199;
      *(v196 + 22) = 1024;
      *(v196 + 24) = v142 & 1;
      *(v196 + 28) = 1024;
      *(v196 + 30) = v299 & 1;
      *(v196 + 34) = 2082;
      if (v285)
      {
        v200 = [v296 BOOLValue];
      }

      else
      {
        v200 = 2;
      }

      LOBYTE(v312) = v200;
      sub_1000F5104(&qword_100939340, &qword_1007A3950);
      v221 = String.init<A>(describing:)();
      v223 = sub_10000668C(v221, v222, &aBlock);

      *(v196 + 36) = v223;
      _os_log_impl(&_mh_execute_header, v194, v195, "UpdateAccountWithACAccount: Will process CloudKit account {accountID: %{public}s, type: %{public}s, didChooseToMigrate: %{BOOL}d, shouldShowCloudKitAccount: %{BOOL}d, didFinishMigration: %{public}s}", v196, 0x2Cu);
      swift_arrayDestroy();

      v172 = v285;
    }

    else
    {
    }

    v283 = objc_opt_self();
    v224 = [v283 accountDescriptionWithACAccount:v24];
    if (v224)
    {
      v225 = v224;
      v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v228 = v227;
    }

    else
    {
      v226 = 0;
      v228 = 0;
    }

    v302 = a7;
    if (v172)
    {
      v229 = [v296 BOOLValue];
    }

    else
    {
      v229 = 2;
    }

    v282 = v142;
    v230 = [v24 aa_isAccountClass:AAAccountClassBasic];
    if (v228)
    {
      v231 = v226;
    }

    else
    {
      v231 = 0x64756F6C4369;
    }

    if (v228)
    {
      v232 = v228;
    }

    else
    {
      v232 = 0xE600000000000000;
    }

    v233 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
    v235 = *(v233 + 2);
    v234 = *(v233 + 3);
    v95 = v233;
    if (v235 >= v234 >> 1)
    {
      v95 = sub_1003685B8((v234 > 1), v235 + 1, 1, v233);
    }

    *(v95 + 2) = v235 + 1;
    v236 = &v95[48 * v235];
    *(v236 + 4) = v293;
    *(v236 + 5) = v294;
    *(v236 + 6) = v231;
    *(v236 + 7) = v232;
    *(v236 + 8) = v289;
    v236[72] = v299 & 1;
    v236[73] = 0;
    v236[74] = v142 & 1;
    v236[75] = v229;
    v236[76] = v230;
    v237 = sub_1006BFC1C(v24);
    v290 = v24;
    if (v238)
    {
      v239 = v237;
      v240 = v238;

      v241 = Logger.logObject.getter();
      v242 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        v244 = swift_slowAlloc();
        *&aBlock = v244;
        *v243 = 136446466;
        *(v243 + 4) = sub_10000668C(v239, v240, &aBlock);
        *(v243 + 12) = 1024;
        *(v243 + 14) = v282 & 1;
        _os_log_impl(&_mh_execute_header, v241, v242, "UpdateAccountWithACAccount: Will process iCloud CalDAV account {accountID: %{public}s, didChooseToMigrate: %{BOOL}d}", v243, 0x12u);
        sub_10000607C(v244);
      }

      v245 = [v283 accountDescriptionWithACAccount:v24];
      v124 = v305;
      if (v245)
      {
        v246 = v245;
        v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v249 = v248;
      }

      else
      {
        v247 = 0;
        v249 = 0;
      }

      if (v249)
      {
        v250 = v247;
      }

      else
      {
        v250 = 0x64756F6C4369;
      }

      if (v249)
      {
        v251 = v249;
      }

      else
      {
        v251 = 0xE600000000000000;
      }

      v253 = *(v95 + 2);
      v252 = *(v95 + 3);
      if (v253 >= v252 >> 1)
      {
        v95 = sub_1003685B8((v252 > 1), v253 + 1, 1, v95);
      }

      *(v95 + 2) = v253 + 1;
      v254 = &v95[48 * v253];
      *(v254 + 4) = v239;
      *(v254 + 5) = v240;
      *(v254 + 6) = v250;
      *(v254 + 7) = v251;
      *(v254 + 8) = 3;
      v254[72] = (v299 & 1) == 0;
      *(v254 + 73) = 33686016;
      v86 = v306;
      a7 = v302;
      v24 = v304;
      goto LABEL_168;
    }

    v24 = v304;
    a7 = v302;
    goto LABEL_157;
  }

  v143 = v297;
  v144 = swift_unknownObjectWeakLoadStrong();
  if (!v144)
  {
    goto LABEL_131;
  }

  v145 = v144;
  if (![v144 hasPassedBuddyAndSystemDataMigrator])
  {

    v204 = Logger.logObject.getter();
    v205 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *&aBlock = v207;
      *v206 = 136446210;
      *(v206 + 4) = sub_10000668C(v293, v294, &aBlock);
      _os_log_impl(&_mh_execute_header, v204, v205, "UpdateAccountWithACAccount: hasPassedBuddyAndSystemDataMigrator != true, setting shouldFetchMigrationState to false {accountID: %{public}s}", v206, 0xCu);
      sub_10000607C(v207);
      v143 = v297;
    }

    goto LABEL_131;
  }

  if ((a4 & 1) == 0)
  {
LABEL_131:

    v208 = Logger.logObject.getter();
    v209 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      *&aBlock = v211;
      *v210 = 136446210;
      v212 = sub_10000668C(v293, v294, &aBlock);

      *(v210 + 4) = v212;
      _os_log_impl(&_mh_execute_header, v208, v209, "UpdateAccountWithACAccount: Will not fetch migration state {accountID: %{public}s}", v210, 0xCu);
      sub_10000607C(v211);
    }

    else
    {
    }

    v213 = objc_opt_self();
    v214 = [v213 sharedInstance];
    v215 = [v214 accountStore];

    v216 = [v213 sharedInstance];
    v217 = swift_allocObject();
    *(v217 + 16) = v24;
    *(v217 + 24) = v143;
    *(v217 + 32) = a2;
    *(v217 + 40) = a4 & 1;
    *(v217 + 48) = sub_1006D4A10;
    *(v217 + 56) = v303;
    v310 = sub_1006D5518;
    v311 = v217;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v309 = sub_100007688;
    *(&v309 + 1) = &unk_1008FC2D8;
    v218 = _Block_copy(&aBlock);
    v219 = v24;

    v220 = a2;

    [v216 saveDidChooseToMigrate:0 didFinishMigration:0 toACAccount:v219 inStore:v215 completionHandler:v218];

    _Block_release(v218);

    v24 = v304;

    v100 = v306;
    goto LABEL_169;
  }

  v146 = swift_allocObject();
  v146[2] = v304;
  v146[3] = a7;
  v146[4] = v305;
  v146[5] = a9;
  v146[6] = v306;
  v147 = swift_allocObject();
  *(v147 + 16) = v293;
  *(v147 + 24) = v294;
  *(v147 + 32) = v297;
  *(v147 + 40) = v24;
  *(v147 + 48) = a2;
  *(v147 + 56) = 1;
  *(v147 + 64) = sub_1006D5474;
  *(v147 + 72) = v146;
  v288 = v147;
  v148 = v304;
  v301 = a7;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v149 = v306;
  v150 = v24;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v151 = a2;
  a2 = v148;
  v24 = v149;
  a7 = v150;

  v25 = v151;

  v152 = [a7 identifier];
  if (v152)
  {
    v153 = v152;
    v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v156 = v155;
    v157 = swift_unknownObjectWeakLoadStrong();
    v291 = v24;
    if (v157 && (v158 = v157, v159 = [v157 cloudContext], v158, v159))
    {
      v160 = v159;
      v161 = v25;

      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *&aBlock = v165;
        *v164 = 136446210;
        *(v164 + 4) = sub_10000668C(v154, v156, &aBlock);
        _os_log_impl(&_mh_execute_header, v162, v163, "Fetch migration state from user record {accountID: %{public}s}", v164, 0xCu);
        sub_10000607C(v165);
      }

      v100 = v306;
      v166 = swift_allocObject();
      v166[2] = v154;
      v166[3] = v156;
      v166[4] = sub_1006D551C;
      v166[5] = v288;
      v166[6] = a7;
      v310 = sub_1006D5520;
      v311 = v166;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v309 = sub_10016AC08;
      *(&v309 + 1) = &unk_1008FC378;
      v167 = _Block_copy(&aBlock);
      v168 = a7;

      v169 = v160;
      [v160 fetchUserRecordWithAccountID:v153 completionHandler:v167];
      _Block_release(v167);
    }

    else
    {
      v284 = v25;

      v262 = Logger.logObject.getter();
      v263 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v262, v263))
      {
        v264 = swift_slowAlloc();
        v265 = swift_slowAlloc();
        *&aBlock = v265;
        *v264 = 136446210;
        v266 = v24;
        v267 = sub_10000668C(v154, v156, &aBlock);

        *(v264 + 4) = v267;
        v24 = v266;
        _os_log_impl(&_mh_execute_header, v262, v263, "Missing cloud context for fetching migration state {accountID: %{public}s}", v264, 0xCu);
        sub_10000607C(v265);
      }

      else
      {
      }

      v268 = objc_opt_self();
      v269 = String._bridgeToObjectiveC()();
      v270 = [v268 internalErrorWithDebugDescription:v269];

      v271 = a2;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v272 = v24;
      v273 = v271;
      v287 = v272;

      v274 = v270;
      v275 = Logger.logObject.getter();
      v276 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v277 = 136315394;
        swift_getErrorValue();
        v278 = Error.localizedDescription.getter();
        v280 = sub_10000668C(v278, v279, &aBlock);

        *(v277 + 4) = v280;
        *(v277 + 12) = 2082;
        *(v277 + 14) = sub_10000668C(v293, v294, &aBlock);
        _os_log_impl(&_mh_execute_header, v275, v276, "UpdateAccountWithACAccount: Failed to fetch migration status. Assume the account is un-migrated {error: %s, accountID: %{public}s}", v277, 0x16u);
        swift_arrayDestroy();
      }

      v100 = v306;
      v281 = v273;

      v153 = v287;
      v161 = v284;
      sub_1006C8E98(a7, v284, 0, 1, v297, v281, v301, v305, a9, v153);

      v169 = v153;
    }

    v24 = v304;
    goto LABEL_169;
  }

LABEL_192:

  __break(1u);
}

uint64_t sub_1006CBAE4(uint64_t a1, void *a2, uint64_t a3, Swift::Int a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v189 = a6;
  v197 = a2;
  v208 = a1;
  v192 = 0;
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v203 = v174 - v19;
  v204 = type metadata accessor for UUID();
  v207 = *(v204 - 8);
  v20 = v207[8];
  __chkstk_darwin(v204);
  v200 = v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  v180 = a9;
  *(v22 + 32) = a9;
  v23 = v189;
  v181 = a10;
  *(v22 + 40) = a10 & 1;
  v182 = a11;
  *(v22 + 48) = a11;
  *(v22 + 56) = a12;
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v176 = a4;
  v24[4] = a5;
  v24[5] = v23;
  v24[6] = sub_1006D5478;
  v24[7] = v22;
  v184 = v24;
  v25 = objc_allocWithZone(REMSaveRequest);
  v188 = a7;

  v186 = a8;
  v187 = a12;

  v183 = v22;

  v195 = [v25 initWithStore:v197];
  v27 = *(v208 + 16);
  v185 = a3;
  if (!v27)
  {
    goto LABEL_82;
  }

  v179 = a5;
  LODWORD(v194) = 0;
  v193 = 0;
  v196 = 0;
  v28 = (v208 + 32);
  v202 = (v207 + 6);
  v199 = (v207 + 4);
  v198 = (v207 + 1);
  v175 = 20250728;
  v29 = 1 - v27;
  *&v26 = 136446210;
  v205 = v26;
  *&v26 = 136315650;
  v190 = v26;
  *&v26 = 136446722;
  v177 = v26;
  *&v26 = 136315906;
  v178 = v26;
  v30 = v204;
  while (1)
  {
    *&v211[13] = *(v28 + 29);
    v31 = v28[1];
    v210 = *v28;
    *v211 = v31;
    LODWORD(v206) = v211[24];
    v32 = *(&v31 + 1);
    v207 = *&v211[16];
    v33 = *(&v210 + 1);
    v34 = v31;
    v35 = v210;
    sub_1006D18E0(&v210, aBlock);
    v36 = qword_1009366E8;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    v38 = sub_100006654(v37, qword_10094FB70);

    v208 = v38;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = v205;
      *(v41 + 4) = sub_10000668C(v35, v33, aBlock);
      _os_log_impl(&_mh_execute_header, v39, v40, "UpdateAccountsWithAccountInfos: Updating account object {accountID: %{public}s}", v41, 0xCu);
      sub_10000607C(v42);
      v30 = v204;
    }

    v43 = v203;
    UUID.init(uuidString:)();
    if ((*v202)(v43, 1, v30) == 1)
    {
      break;
    }

    v48 = v200;
    (*v199)(v200, v43, v30);
    v49 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v51 = [v49 objectIDWithUUID:isa];

    (*v198)(v48, v30);
    if (!v51)
    {
      goto LABEL_19;
    }

    aBlock[0] = 0;
    v52 = [v197 fetchAccountWithObjectID:v51 error:aBlock];
    v201 = v51;
    if (v52)
    {
      v53 = aBlock[0];
      if (v211[25])
      {
        sub_1006D1918(&v210);

        v54 = v52;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v207 = swift_slowAlloc();
          aBlock[0] = v207;
          *v57 = v190;
          v58 = sub_10000668C(v34, v32, aBlock);

          *(v57 + 4) = v58;
          *(v57 + 12) = 2082;
          v59 = sub_10000668C(v35, v33, aBlock);

          *(v57 + 14) = v59;
          *(v57 + 22) = 2048;
          *(v57 + 24) = [v54 type];

          _os_log_impl(&_mh_execute_header, v55, v56, "UpdateAccountsWithAccountInfos is going to delete account {accountName: %s, accountID: %{public}s, type: %ld}.", v57, 0x20u);
          swift_arrayDestroy();

          v30 = v204;
        }

        else
        {
        }

        v83 = [v195 updateAccount:v54];
        [v83 removeFromStore];

        v84 = 1;
        if (!v29)
        {
          LODWORD(v194) = 1;
          v132 = &v213 + 4;
          goto LABEL_72;
        }

        v196 = 1;
        v193 = 1;
        LODWORD(v194) = 1;
        goto LABEL_5;
      }

      v66 = v52;
      v67 = [v66 type];
      if (v67 == v207)
      {

        v194 = v66;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v191 = v52;
          v174[1] = v71;
          aBlock[0] = v71;
          *v70 = v190;
          *(v70 + 4) = sub_10000668C(v34, v32, aBlock);
          *(v70 + 12) = 2082;
          *(v70 + 14) = sub_10000668C(v35, v33, aBlock);
          *(v70 + 22) = 2048;
          v72 = v194;
          *(v70 + 24) = [v194 type];

          _os_log_impl(&_mh_execute_header, v68, v69, "UpdateAccountsWithAccountInfos is updating existing account object {name: %s, accountID: %{public}s, type: %ld}", v70, 0x20u);
          swift_arrayDestroy();
          v52 = v191;

          v30 = v204;
        }

        else
        {
        }

        v93 = v194;
        v94 = [v195 updateAccount:v194];
        v95 = String._bridgeToObjectiveC()();

        [v94 setName:v95];

LABEL_45:
        v103 = [v94 inactive];

        if (v206 == v103)
        {
          v104 = v206;
          v191 = v52;
          v105 = v94;
          [v105 setInactive:v104 ^ 1u];

          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v206 = swift_slowAlloc();
            aBlock[0] = v206;
            *v108 = v177;
            [v105 inactive];
            v109 = Bool.yesno.getter();
            v111 = sub_10000668C(v109, v110, aBlock);

            *(v108 + 4) = v111;
            v30 = v204;
            *(v108 + 12) = 2082;
            v112 = sub_10000668C(v35, v33, aBlock);

            *(v108 + 14) = v112;
            *(v108 + 22) = 2082;
            v113 = REMAccountType.loggableDescription.getter();
            v115 = sub_10000668C(v113, v114, aBlock);

            *(v108 + 24) = v115;
            swift_arrayDestroy();
          }

          else
          {
          }

          v52 = v191;
        }

        else
        {
        }

        v116 = v211[26];
        if (v211[26] != 2)
        {
          if ([v94 didChooseToMigrateLocally])
          {
            v117 = [v94 didChooseToMigrate];
            if ((v116 & 1) == 0)
            {
              if (v117)
              {
                [v94 setDidChooseToMigrateLocally:0];
              }
            }
          }

          [v94 setDidChooseToMigrate:v116 & 1];
        }

        v118 = v211[28];
        if (v211[27] != 2)
        {
          [v94 setDidFinishMigration:v211[27] & 1];
        }

        sub_1006D1918(&v210);
        if (v118 != 2)
        {
          [v94 setDebugSyncDisabled:v118 & 1];
        }

        if (v196)
        {

          LODWORD(v194) = 1;
          v196 = 1;
          if (!v29)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v119 = [v94 changedKeys];
          v120 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v121 = *(v120 + 16);

          LODWORD(v194) = v121 != 0;
          v196 = v194;
          if (!v29)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v210);

      v85 = v66;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v206 = v86;
        v89 = v88;
        aBlock[0] = swift_slowAlloc();
        *v89 = v178;
        v90 = sub_10000668C(v34, v32, aBlock);

        *(v89 + 4) = v90;
        *(v89 + 12) = 2082;
        v91 = sub_10000668C(v35, v33, aBlock);

        *(v89 + 14) = v91;
        *(v89 + 22) = 2048;
        *(v89 + 24) = [v85 type];

        *(v89 + 32) = 2048;
        *(v89 + 34) = v207;
        v92 = v206;
        _os_log_impl(&_mh_execute_header, v206, v87, "UpdateAccountsWithAccountInfos: Unexpected account type, account ignored. {accountName: %s, accountID: %{public}s, expectedType: %ld, actualType: %ld}", v89, 0x2Au);
        swift_arrayDestroy();
        v30 = v204;

        goto LABEL_69;
      }

      if (!v29)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v65 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v192 = 0;

      if (v211[25] != 1)
      {
        if ((v206 & 1) != 0 || (v73 = objc_allocWithZone(REMAccountTypeHost), v74 = [v73 initWithType:v207], v75 = objc_msgSend(v74, "isCloudKit"), v74, v75))
        {

          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v194 = swift_slowAlloc();
            aBlock[0] = v194;
            *v78 = v190;
            *(v78 + 4) = sub_10000668C(v34, v32, aBlock);
            v193 = v77;
            *(v78 + 12) = 2082;
            *(v78 + 14) = sub_10000668C(v35, v33, aBlock);
            *(v78 + 22) = 2082;
            v79 = REMAccountType.loggableDescription.getter();
            v191 = v76;
            v81 = sub_10000668C(v79, v80, aBlock);

            *(v78 + 24) = v81;
            v82 = v191;
            _os_log_impl(&_mh_execute_header, v191, v193, "UpdateAccountsWithAccountInfos is creating account object {name: %s, accountID: %{public}s, type: %{public}s}", v78, 0x20u);
            swift_arrayDestroy();

            v30 = v204;
          }

          else
          {
          }

          v96 = String._bridgeToObjectiveC()();

          v97 = v207;
          v98 = [v195 __addAccountWithType:v207 name:v96];

          [v98 setObjectID:v201];
          v99 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v97];
          v100 = [v99 isCloudKit];

          v101 = v98;
          v94 = v101;
          if (v100)
          {
            [v101 setPersistenceCloudSchemaVersion:v175];
          }

          else
          {
            v102 = String._bridgeToObjectiveC()();
            [v94 setExternalIdentifier:v102];
          }

          v193 = 1;
          goto LABEL_45;
        }

        sub_1006D1918(&v210);

        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v206 = v122;
          v125 = v124;
          aBlock[0] = swift_slowAlloc();
          *v125 = v190;
          v126 = sub_10000668C(v34, v32, aBlock);

          *(v125 + 4) = v126;
          *(v125 + 12) = 2082;
          v127 = sub_10000668C(v35, v33, aBlock);

          *(v125 + 14) = v127;
          *(v125 + 22) = 2082;
          v128 = REMAccountType.loggableDescription.getter();
          v130 = sub_10000668C(v128, v129, aBlock);

          *(v125 + 24) = v130;
          v131 = v206;
          _os_log_impl(&_mh_execute_header, v206, v123, "UpdateAccountsWithAccountInfos won't create inactive accounts unless it is CloudKit {name: %s, accountID: %{public}s, type: %{public}s}", v125, 0x20u);
          swift_arrayDestroy();
          v30 = v204;
        }

        else
        {
        }

LABEL_69:

        if (!v29)
        {
          goto LABEL_70;
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v210);

      if (!v29)
      {
        goto LABEL_70;
      }
    }

LABEL_5:
    ++v29;
    v28 += 3;
    if (v29 == 1)
    {
      __break(1u);
      goto LABEL_100;
    }
  }

  sub_1000050A4(v43, &unk_100939D90, "8\n\r");

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = v205;
    *(v46 + 4) = sub_10000668C(v35, v33, aBlock);
    _os_log_impl(&_mh_execute_header, v44, v45, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v46, 0xCu);
    sub_10000607C(v47);
  }

LABEL_19:
  sub_1006D1918(&v210);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = v205;
    v64 = sub_10000668C(v35, v33, aBlock);

    *(v62 + 4) = v64;
    v30 = v204;
    _os_log_impl(&_mh_execute_header, v60, v61, "UpdateAccountsWithAccountInfos: Failed to create UUID object, account ignored {accountID: %{public}s}", v62, 0xCu);
    sub_10000607C(v63);
  }

  else
  {
  }

  if (v29)
  {
    goto LABEL_5;
  }

LABEL_70:
  if (v194)
  {
    v84 = v196;
    v132 = &v214;
LABEL_72:
    *(v132 - 64) = v84;
LABEL_73:
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "UpdateAccountsWithAccountInfos: Saving account object changes", v135, 2u);
    }

    if (qword_100935D30 == -1)
    {
LABEL_76:
      v136 = qword_100974CC8;
      v137 = swift_allocObject();
      v138 = v184;
      *(v137 + 16) = sub_1006D546C;
      *(v137 + 24) = v138;
      *(v137 + 32) = v193 & 1;
      *(v137 + 33) = v194 & 1;
      aBlock[4] = sub_1006D5468;
      v213 = v137;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008FC940;
      v139 = _Block_copy(aBlock);

      v140 = v195;
      [v195 saveWithQueue:v136 completion:v139];

      _Block_release(v139);

      goto LABEL_89;
    }

LABEL_100:
    swift_once();
    goto LABEL_76;
  }

  if (((v193 | v196) & 1) == 0)
  {
    v23 = v189;
    goto LABEL_82;
  }

  v141 = v185;
  swift_beginAccess();
  v142 = v179;
  v23 = v189;
  if (*(v141 + 16) != 1)
  {
LABEL_82:

    v148 = v186;

    goto LABEL_83;
  }

  v143 = objc_opt_self();

  v144 = v186;

  v145 = [v143 daemonUserDefaults];
  v146 = [v145 acAccountIdentifiersToMigrateInactivatedCalDavData];

  if (v146)
  {
    v147 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v147 = _swiftEmptyArrayStorage;
  }

  v162 = v176;
  v163 = sub_1001A5660(v147);

  v209 = v163;

  sub_100378434(aBlock, v162, v142);

  v164 = [v143 daemonUserDefaults];
  v165 = v209;
  v166 = *(v209 + 16);
  if (v166)
  {
    v167 = sub_1003689CC(*(v209 + 16), 0);
    v168 = sub_1002791DC(aBlock, v167 + 4, v166, v165);
    sub_10001B860();
    if (v168 != v166)
    {
      __break(1u);
      goto LABEL_95;
    }
  }

  else
  {
LABEL_95:
  }

  v169 = Array._bridgeToObjectiveC()().super.isa;

  [v164 setAcAccountIdentifiersToMigrateInactivatedCalDavData:v169];

  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    aBlock[0] = v173;
    *v172 = v205;
    *(v172 + 4) = sub_10000668C(v162, v142, aBlock);
    _os_log_impl(&_mh_execute_header, v170, v171, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v172, 0xCu);
    sub_10000607C(v173);
  }

LABEL_83:
  v149 = *(v23 + 16);
  if (v149)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v149, 0);
    v150 = aBlock[0];
    v151 = (v23 + 40);
    do
    {
      v153 = *(v151 - 1);
      v152 = *v151;
      aBlock[0] = v150;
      v155 = v150[2];
      v154 = v150[3];

      if (v155 >= v154 >> 1)
      {
        sub_100026EF4((v154 > 1), v155 + 1, 1);
        v150 = aBlock[0];
      }

      v150[2] = v155 + 1;
      v156 = &v150[2 * v155];
      v156[4] = v153;
      v156[5] = v152;
      v151 += 6;
      --v149;
    }

    while (v149);
  }

  v157 = swift_allocObject();
  v158 = v180;
  *(v157 + 16) = v188;
  *(v157 + 24) = v158;
  *(v157 + 32) = v181 & 1;
  v159 = v187;
  *(v157 + 40) = v182;
  *(v157 + 48) = v159;
  *(v157 + 56) = 0;

  v160 = v186;
  sub_1006B9D6C(v186, sub_1006D5490, v157);

LABEL_89:
}

void sub_1006CD654(void *a1, id a2, id a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, unsigned __int8 a9, uint64_t a10, void *a11)
{
  LODWORD(v273) = a4;
  v17 = a11;
  v18 = a9;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v285 = a8;
  *(v19 + 32) = a8;
  *(v19 + 40) = a9 & 1;
  *(v19 + 48) = a10;
  *(v19 + 56) = a11;
  v287 = v19;
  swift_retain_n();
  v20 = a7;
  swift_retain_n();
  v21 = v20;
  v22 = [a1 displayAccount];
  if (!v22)
  {
    v22 = a1;
  }

  v23 = &selRef_hack_willSaveHandled;
  v24 = [v22 identifier];
  if (!v24)
  {

    __break(1u);
    goto LABEL_177;
  }

  v25 = v24;
  v284 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v288 = v26;

  v27 = [v22 accountType];
  if (!v27)
  {
LABEL_177:

    __break(1u);
    goto LABEL_178;
  }

  v28 = v27;
  v29 = [v27 identifier];

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_12:
    v23 = v288;

    if (([v22 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v32)
  {
    goto LABEL_12;
  }

  v23 = v288;
  if (v30 == v33 && v32 == v34)
  {

    if (([v22 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
    {
LABEL_24:
      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100006654(v49, qword_10094FB70);
      v18 = a1;
      a3 = v22;

      v50 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v50, v11))
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_32;
      }

      v276 = a6;
      v268 = v21;
      v51 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v51 = 136446722;
      v52 = v23;
      v23 = [v18 identifier];

      if (v23)
      {
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v54;

        v55 = sub_10000668C(v53, v18, &aBlock);

        *(v51 + 4) = v55;
        v23 = 2082;
        *(v51 + 12) = 2082;
        v21 = sub_10000668C(v284, v52, &aBlock);

        *(v51 + 14) = v21;
        *(v51 + 22) = 2082;
        v56 = [a3 accountType];
        if (v56)
        {
          v18 = v56;
          v23 = [v56 identifier];

          if (v23)
          {
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v58;

            v60 = sub_10000668C(v57, v59, &aBlock);

            *(v51 + 24) = v60;
            _os_log_impl(&_mh_execute_header, v50, v11, "UpdateAccountWithACAccount: ACAccount type is not supported or reminders dataclass is not enabled {accountID: %{public}s, displayAccountID: %{public}s, accountType: %{public}s}", v51, 0x20u);
            swift_arrayDestroy();

            v21 = v268;
            a6 = v276;
LABEL_32:
            v61 = swift_allocObject();
            *(v61 + 16) = a6;
            *(v61 + 24) = v285;
            *(v61 + 32) = a9 & 1;
            *(v61 + 40) = a10;
            *(v61 + 48) = a11;
            *(v61 + 56) = 0;

            sub_1006B9D6C(v21, sub_1006D4DA0, v61);

LABEL_50:

LABEL_165:

            return;
          }

          goto LABEL_180;
        }

LABEL_179:

        __break(1u);
LABEL_180:

        v17 = v268;

        __break(1u);
        goto LABEL_181;
      }

LABEL_178:

      __break(1u);
      goto LABEL_179;
    }

LABEL_23:
    v11 = v21;
    v21 = 1;
    goto LABEL_34;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (([v22 isEnabledForDataclass:ACAccountDataclassReminders] & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v48)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ([a1 accountPropertyForKey:REMDA_kCalDAVMobileAccountDelegatePrincipalPath])
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_10094FB70);
    v18 = a1;
    v23 = v22;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v17 = v21;
      v38 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v38 = 136446466;
      v39 = [v18 identifier];

      if (!v39)
      {
LABEL_182:

        __break(1u);
        goto LABEL_183;
      }

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v41;

      v18 = sub_10000668C(v40, v21, &aBlock);

      *(v38 + 4) = v18;
      *(v38 + 12) = 2082;
      v42 = [v23 accountType];
      if (!v42)
      {
LABEL_183:

        __break(1u);
        goto LABEL_184;
      }

      v43 = v42;
      v18 = [v42 identifier];

      if (!v18)
      {
LABEL_184:

        __break(1u);
        goto LABEL_185;
      }

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10000668C(v44, v46, &aBlock);

      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "UpdateAccountWithACAccount: Skip handling CalDAV delegate account {accountID: %{public}s, displayAccountType: %{public}s}", v38, 0x16u);
      swift_arrayDestroy();

      v21 = v17;
      v17 = a11;
    }

    else
    {
    }

    v85 = swift_allocObject();
    *(v85 + 16) = a6;
    *(v85 + 24) = v285;
    *(v85 + 32) = a9 & 1;
    *(v85 + 40) = a10;
    *(v85 + 48) = v17;
    *(v85 + 56) = 0;

    sub_1006B9D6C(v21, sub_1006D5490, v85);

    goto LABEL_50;
  }

  v11 = v21;
  aBlock = 0u;
  v292 = 0u;
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v21 = 0;
LABEL_34:
  if (qword_1009366E8 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100006654(v62, qword_10094FB70);

  v63 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v18))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&aBlock = v65;
    *v64 = 136446210;
    *(v64 + 4) = sub_10000668C(v284, v288, &aBlock);
    _os_log_impl(&_mh_execute_header, v63, v18, "UpdateAccountWithACAccount: Try to update account object {accountID: %{public}s}", v64, 0xCu);
    sub_10000607C(v65);
    v23 = v288;
  }

  v270 = swift_allocObject();
  *(v270 + 16) = 0;
  v66 = [v22 rem_isEligibleForCloudKitReminders];
  if (!v21)
  {
    v69 = [v22 accountType];
    if (!v69)
    {
LABEL_181:

      __break(1u);
      goto LABEL_182;
    }

    v70 = v69;
    v71 = sub_1006C3788(v69);
    v73 = v72;

    v21 = v11;
    if (v73)
    {
      v18 = v22;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v280 = swift_slowAlloc();
        *&aBlock = v280;
        *v76 = 136446210;
        v77 = [v18 accountType];
        if (!v77)
        {
LABEL_185:

          __break(1u);
          goto LABEL_186;
        }

        v78 = v77;
        v79 = [v77 identifier];

        if (!v79)
        {
LABEL_186:

          __break(1u);
          goto LABEL_187;
        }

        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = sub_10000668C(v80, v82, &aBlock);

        *(v76 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v74, v75, "UpdateAccountWithACAccount: Can't figure out REMAccountType for ACAccountType {acAccountType: %{public}s}", v76, 0xCu);
        sub_10000607C(v280);

        v84 = _swiftEmptyArrayStorage;
        goto LABEL_163;
      }
    }

    else
    {

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();

      v281 = v71;
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v107 = 136446466;
        *(v107 + 4) = sub_10000668C(v284, v23, &aBlock);
        *(v107 + 12) = 2082;
        v108 = REMAccountType.loggableDescription.getter();
        v110 = sub_10000668C(v108, v109, &aBlock);

        *(v107 + 14) = v110;
        v23 = v288;
        _os_log_impl(&_mh_execute_header, v105, v106, "UpdateAccountWithACAccount: Will process non-Apple account {displayAccountID: %{public}s, accountType: %{public}s}", v107, 0x16u);
        swift_arrayDestroy();
      }

      v111 = sub_1006C3CF4(v22);
      if (v112)
      {
        v113 = v111;
        v114 = v112;
        v115 = v22;

        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();

        v274 = v113;
        if (os_log_type_enabled(v116, v117))
        {
          v271 = v115;
          v118 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          v266 = swift_slowAlloc();
          *&aBlock = v266;
          *v118 = 136446466;
          *(v118 + 4) = sub_10000668C(v113, v114, &aBlock);
          *(v118 + 12) = 2114;
          v119 = [v271 identifier];
          *(v118 + 14) = v119;
          *v263 = v119;
          _os_log_impl(&_mh_execute_header, v116, v117, "UpdateAccountWithACAccount: Resolved non-Apple account identifier enabled for Reminders from displayACAccount: {resolved: %{public}s, displayACAccount: %{public}@}.", v118, 0x16u);
          sub_1000050A4(v263, &unk_100938E70, &unk_100797230);

          sub_10000607C(v266);

          v115 = v271;
        }

        v120 = [objc_opt_self() accountDescriptionWithACAccount:v115];
        if (v120)
        {
          v121 = v120;
          v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v123;

          v23 = v288;
        }

        else
        {
          v122 = 0;
          v124 = 0xE000000000000000;
        }

        v84 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
        v170 = *(v84 + 2);
        v169 = *(v84 + 3);
        if (v170 >= v169 >> 1)
        {
          v84 = sub_1003685B8((v169 > 1), v170 + 1, 1, v84);
        }

        *(v84 + 2) = v170 + 1;
        v171 = &v84[48 * v170];
        *(v171 + 4) = v274;
        *(v171 + 5) = v114;
        *(v171 + 6) = v122;
        *(v171 + 7) = v124;
        *(v171 + 8) = v281;
        *(v171 + 18) = 33685505;
        v171[76] = 2;
        v17 = a11;
        goto LABEL_164;
      }
    }

LABEL_66:
    v84 = _swiftEmptyArrayStorage;
LABEL_164:
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v235 = v21;

    sub_1006CBAE4(v84, a2, v270, v284, v23, v84, a6, v235, v285, a9 & 1, a10, v17);

    swift_bridgeObjectRelease_n();

    goto LABEL_165;
  }

  if ((v66 & 1) == 0)
  {

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    v21 = v11;
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&aBlock = v89;
      *v88 = 136446210;
      *(v88 + 4) = sub_10000668C(v284, v288, &aBlock);
      _os_log_impl(&_mh_execute_header, v86, v87, "UpdateAccountWithACAccount: Got an Apple ID, not eligible for CloudKit reminders. Will only process iCloud CalDAV account for it {accountID: %{public}s}", v88, 0xCu);
      sub_10000607C(v89);
      v23 = v288;
    }

    v90 = sub_1006BFC1C(v22);
    if (v91)
    {
      v92 = v90;
      v93 = v91;

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&aBlock = v97;
        *v96 = 136446210;
        *(v96 + 4) = sub_10000668C(v92, v93, &aBlock);
        _os_log_impl(&_mh_execute_header, v94, v95, "UpdateAccountWithACAccount: AppleAccount {accountID: %{public}s} is ineligible for CloudKit Reminders, will process it as iCloud CalDAV", v96, 0xCu);
        sub_10000607C(v97);
      }

      v278 = a6;
      v98 = [objc_opt_self() accountDescriptionWithACAccount:v22];
      v99 = v92;
      v100 = v21;
      if (v98)
      {
        v101 = v98;
        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;
      }

      else
      {
        v102 = 0;
        v104 = 0;
      }

      v23 = v288;
      if (v104)
      {
        v165 = v102;
      }

      else
      {
        v165 = 0x64756F6C4369;
      }

      if (!v104)
      {
        v104 = 0xE600000000000000;
      }

      v84 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
      v167 = *(v84 + 2);
      v166 = *(v84 + 3);
      if (v167 >= v166 >> 1)
      {
        v84 = sub_1003685B8((v166 > 1), v167 + 1, 1, v84);
      }

      *(v84 + 2) = v167 + 1;
      v168 = &v84[48 * v167];
      *(v168 + 4) = v99;
      *(v168 + 5) = v93;
      *(v168 + 6) = v165;
      *(v168 + 7) = v104;
      *(v168 + 8) = 3;
      *(v168 + 18) = 33685505;
      v168[76] = 2;
      v21 = v100;
      v17 = a11;
      a6 = v278;
      goto LABEL_164;
    }

    goto LABEL_66;
  }

  v277 = a6;
  *&v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v295 + 1) = v67;
  v68 = [v22 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v21 = v11;
  if (v68)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v295 = 0u;
    v296 = 0u;
  }

  v125 = a3;
  aBlock = v295;
  v292 = v296;
  if (*(&v296 + 1))
  {
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v125 = [v290 BOOLValue];

      goto LABEL_82;
    }
  }

  else
  {
    sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  }

  if (a3 != 2)
  {
LABEL_82:
    *&aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&aBlock + 1) = v152;
    v153 = [v22 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v153)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v295 = 0u;
      v296 = 0u;
    }

    aBlock = v295;
    v292 = v296;
    if (*(&v296 + 1))
    {
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v154 = v290;
      }

      else
      {
        v154 = 0;
      }

      if (v125)
      {
        goto LABEL_90;
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
      v154 = 0;
      if (v125)
      {
LABEL_90:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {

          v180 = Logger.logObject.getter();
          v181 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v180, v181))
          {
            v182 = swift_slowAlloc();
            *v182 = 0;
            _os_log_impl(&_mh_execute_header, v180, v181, "Store controller missing for checking whether migration has failed", v182, 2u);
          }

          goto LABEL_165;
        }

        v156 = Strong;
        v157 = sub_1006BF940(v284, v23);
        if (!v157)
        {

          v236 = Logger.logObject.getter();
          v237 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v236, v237))
          {
            v238 = v23;
            v239 = swift_slowAlloc();
            v240 = swift_slowAlloc();
            *&aBlock = v240;
            *v239 = 136315138;
            v289 = v154;
            v241 = sub_10000668C(v284, v238, &aBlock);

            *(v239 + 4) = v241;
            _os_log_impl(&_mh_execute_header, v236, v237, "Display ACAccount ID is not an UUID {displayACAccountID: %s}", v239, 0xCu);
            sub_10000607C(v240);
          }

          else
          {
          }

          goto LABEL_165;
        }

        v158 = v157;
        sub_10031C72C(v157, v156);
        v160 = v159;

        LODWORD(v158) = *(v160 + 88);

        v282 = v158 ^ 1;
        goto LABEL_95;
      }
    }

    v282 = 0;
LABEL_95:
    if (v154 && (v282 & [v154 BOOLValue] & 1) != 0)
    {
      *(v270 + 16) = 1;

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&aBlock = v164;
        *v163 = 136446210;
        *(v163 + 4) = sub_10000668C(v284, v288, &aBlock);
        _os_log_impl(&_mh_execute_header, v161, v162, "UpdateAccountWithACAccount: setting shouldMigrateInactivatedICloudCalDavData to true {displayAccountID: %{public}s}", v163, 0xCu);
        sub_10000607C(v164);
        v23 = v288;
      }
    }

    if ([v22 aa_isAccountClass:AAAccountClassPrimary])
    {
      v267 = _auto_REMAccountTypeForPrimaryCloudKit();
    }

    else
    {
      v267 = 6;
    }

    v172 = v154;

    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.default.getter();
    v275 = v172;

    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v175 = 136447234;
      *(v175 + 4) = sub_10000668C(v284, v23, &aBlock);
      *(v175 + 12) = 2082;
      v176 = REMAccountType.loggableDescription.getter();
      v178 = sub_10000668C(v176, v177, &aBlock);

      *(v175 + 14) = v178;
      *(v175 + 22) = 1024;
      *(v175 + 24) = v125 & 1;
      *(v175 + 28) = 1024;
      *(v175 + 30) = v282 & 1;
      *(v175 + 34) = 2082;
      if (v154)
      {
        v179 = [v275 BOOLValue];
      }

      else
      {
        v179 = 2;
      }

      LOBYTE(v295) = v179;
      sub_1000F5104(&qword_100939340, &qword_1007A3950);
      v201 = String.init<A>(describing:)();
      v203 = sub_10000668C(v201, v202, &aBlock);

      *(v175 + 36) = v203;
      _os_log_impl(&_mh_execute_header, v173, v174, "UpdateAccountWithACAccount: Will process CloudKit account {accountID: %{public}s, type: %{public}s, didChooseToMigrate: %{BOOL}d, shouldShowCloudKitAccount: %{BOOL}d, didFinishMigration: %{public}s}", v175, 0x2Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    v262 = objc_opt_self();
    v204 = [v262 accountDescriptionWithACAccount:v22];
    if (v204)
    {
      v205 = v204;
      v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v208 = v207;
    }

    else
    {
      v206 = 0;
      v208 = 0;
    }

    v264 = v125;
    v269 = v21;
    if (v154)
    {
      v209 = [v275 BOOLValue];
    }

    else
    {
      v209 = 2;
    }

    v210 = [v22 aa_isAccountClass:AAAccountClassBasic];
    if (v208)
    {
      v211 = v206;
    }

    else
    {
      v211 = 0x64756F6C4369;
    }

    if (v208)
    {
      v212 = v208;
    }

    else
    {
      v212 = 0xE600000000000000;
    }

    v84 = sub_1003685B8(0, 1, 1, _swiftEmptyArrayStorage);
    v214 = *(v84 + 2);
    v213 = *(v84 + 3);
    if (v214 >= v213 >> 1)
    {
      v84 = sub_1003685B8((v213 > 1), v214 + 1, 1, v84);
    }

    *(v84 + 2) = v214 + 1;
    v215 = &v84[48 * v214];
    *(v215 + 4) = v284;
    *(v215 + 5) = v288;
    *(v215 + 6) = v211;
    *(v215 + 7) = v212;
    *(v215 + 8) = v267;
    v215[72] = v282 & 1;
    v215[73] = 0;
    v215[74] = v264 & 1;
    v215[75] = v209;
    v215[76] = v210;
    v216 = sub_1006BFC1C(v22);
    if (v217)
    {
      v218 = v216;
      v219 = v217;

      v220 = Logger.logObject.getter();
      v221 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        *&aBlock = v223;
        *v222 = 136446466;
        *(v222 + 4) = sub_10000668C(v218, v219, &aBlock);
        *(v222 + 12) = 1024;
        *(v222 + 14) = v264 & 1;
        _os_log_impl(&_mh_execute_header, v220, v221, "UpdateAccountWithACAccount: Will process iCloud CalDAV account {accountID: %{public}s, didChooseToMigrate: %{BOOL}d}", v222, 0x12u);
        sub_10000607C(v223);
      }

      v224 = [v262 accountDescriptionWithACAccount:v22];
      v225 = v219;
      if (v224)
      {
        v226 = v224;
        v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v229 = v228;
      }

      else
      {
        v227 = 0;
        v229 = 0;
      }

      if (v229)
      {
        v230 = v227;
      }

      else
      {
        v230 = 0x64756F6C4369;
      }

      if (v229)
      {
        v231 = v229;
      }

      else
      {
        v231 = 0xE600000000000000;
      }

      v233 = *(v84 + 2);
      v232 = *(v84 + 3);
      if (v233 >= v232 >> 1)
      {
        v84 = sub_1003685B8((v232 > 1), v233 + 1, 1, v84);
      }

      *(v84 + 2) = v233 + 1;
      v234 = &v84[48 * v233];
      *(v234 + 4) = v218;
      *(v234 + 5) = v225;
      *(v234 + 6) = v230;
      *(v234 + 7) = v231;
      *(v234 + 8) = 3;
      v234[72] = (v282 & 1) == 0;
      *(v234 + 73) = 33686016;
    }

    else
    {
    }

    v17 = a11;
    v21 = v269;
    a6 = v277;
LABEL_163:
    v23 = v288;
    goto LABEL_164;
  }

  v126 = swift_unknownObjectWeakLoadStrong();
  if (!v126)
  {
    goto LABEL_126;
  }

  v127 = v126;
  if (![v126 hasPassedBuddyAndSystemDataMigrator])
  {

    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *&aBlock = v186;
      *v185 = 136446210;
      *(v185 + 4) = sub_10000668C(v284, v288, &aBlock);
      _os_log_impl(&_mh_execute_header, v183, v184, "UpdateAccountWithACAccount: hasPassedBuddyAndSystemDataMigrator != true, setting shouldFetchMigrationState to false {accountID: %{public}s}", v185, 0xCu);
      sub_10000607C(v186);
      v23 = v288;
    }

    goto LABEL_126;
  }

  if ((v273 & 1) == 0)
  {
LABEL_126:

    v187 = Logger.logObject.getter();
    v188 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v187, v188))
    {
      v189 = v23;
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&aBlock = v191;
      *v190 = 136446210;
      v192 = sub_10000668C(v284, v189, &aBlock);

      *(v190 + 4) = v192;
      _os_log_impl(&_mh_execute_header, v187, v188, "UpdateAccountWithACAccount: Will not fetch migration state {accountID: %{public}s}", v190, 0xCu);
      sub_10000607C(v191);
    }

    else
    {
    }

    v193 = objc_opt_self();
    v194 = [v193 sharedInstance];
    v195 = [v194 accountStore];

    v196 = [v193 sharedInstance];
    v197 = swift_allocObject();
    *(v197 + 16) = v22;
    *(v197 + 24) = a5;
    *(v197 + 32) = a2;
    *(v197 + 40) = v273 & 1;
    *(v197 + 48) = sub_1006D4D88;
    *(v197 + 56) = v287;
    v293 = sub_1006D5518;
    v294 = v197;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v292 = sub_100007688;
    *(&v292 + 1) = &unk_1008FC7B0;
    v198 = _Block_copy(&aBlock);
    v199 = v22;

    v200 = a2;

    [v196 saveDidChooseToMigrate:0 didFinishMigration:0 toACAccount:v199 inStore:v195 completionHandler:v198];

    _Block_release(v198);

    goto LABEL_165;
  }

  v128 = swift_allocObject();
  *(v128 + 16) = v277;
  *(v128 + 24) = v11;
  *(v128 + 32) = v285;
  *(v128 + 40) = a9 & 1;
  *(v128 + 48) = a10;
  *(v128 + 56) = a11;
  v129 = swift_allocObject();
  *(v129 + 16) = v284;
  *(v129 + 24) = v23;
  *(v129 + 32) = a5;
  *(v129 + 40) = v22;
  *(v129 + 48) = a2;
  *(v129 + 56) = 1;
  *(v129 + 64) = sub_1006D5478;
  *(v129 + 72) = v128;
  swift_retain_n();
  v130 = v21;
  swift_retain_n();
  v131 = v22;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v132 = a2;
  a2 = v130;
  v133 = v131;

  v265 = v132;

  v273 = v133;
  v134 = [v133 identifier];
  if (v134)
  {
    v135 = v134;
    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v137;
    v139 = swift_unknownObjectWeakLoadStrong();
    if (v139 && (v140 = v139, v141 = [v139 cloudContext], v140, v141))
    {
      v286 = v141;
      v142 = v136;

      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *&aBlock = v146;
        *v145 = 136446210;
        *(v145 + 4) = sub_10000668C(v142, v138, &aBlock);
        _os_log_impl(&_mh_execute_header, v143, v144, "Fetch migration state from user record {accountID: %{public}s}", v145, 0xCu);
        sub_10000607C(v146);
      }

      v147 = swift_allocObject();
      v147[2] = v142;
      v147[3] = v138;
      v147[4] = sub_1006D551C;
      v147[5] = v129;
      v148 = v273;
      v147[6] = v273;
      v293 = sub_1006D5520;
      v294 = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v292 = sub_10016AC08;
      *(&v292 + 1) = &unk_1008FC850;
      v149 = _Block_copy(&aBlock);
      v150 = v273;

      [v286 fetchUserRecordWithAccountID:v135 completionHandler:v149];
      _Block_release(v149);

      v151 = v265;
    }

    else
    {
      v242 = v136;

      v243 = Logger.logObject.getter();
      v244 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v243, v244))
      {
        v245 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        *&aBlock = v246;
        *v245 = 136446210;
        v247 = sub_10000668C(v242, v138, &aBlock);

        *(v245 + 4) = v247;
        _os_log_impl(&_mh_execute_header, v243, v244, "Missing cloud context for fetching migration state {accountID: %{public}s}", v245, 0xCu);
        sub_10000607C(v246);
      }

      else
      {
      }

      v248 = objc_opt_self();
      v249 = String._bridgeToObjectiveC()();
      v250 = [v248 internalErrorWithDebugDescription:v249];

      v251 = v277;
      swift_retain_n();
      v252 = a2;
      swift_retain_n();
      v253 = v252;

      v254 = v250;
      v255 = Logger.logObject.getter();
      v256 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v255, v256))
      {
        v272 = v253;
        v257 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v257 = 136315394;
        swift_getErrorValue();
        v258 = Error.localizedDescription.getter();
        v260 = sub_10000668C(v258, v259, &aBlock);

        *(v257 + 4) = v260;
        *(v257 + 12) = 2082;
        *(v257 + 14) = sub_10000668C(v284, v288, &aBlock);
        _os_log_impl(&_mh_execute_header, v255, v256, "UpdateAccountWithACAccount: Failed to fetch migration status. Assume the account is un-migrated {error: %s, accountID: %{public}s}", v257, 0x16u);
        swift_arrayDestroy();
        v251 = v277;

        v253 = v272;
      }

      v261 = v253;

      v148 = v273;
      v151 = v265;
      sub_1006CD654(v273, v265, 0, 1, a5, v251, v261, v285, a9 & 1, a10, a11);
    }

    goto LABEL_165;
  }

LABEL_187:

  __break(1u);
}

uint64_t sub_1006CFF18(uint64_t a1, void *a2, uint64_t a3, Swift::Int a4, Swift::Int a5, uint64_t a6, void (*a7)(void, void, void, void), uint64_t a8)
{
  v187 = 0;
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v200 = &v174 - v18;
  v199 = type metadata accessor for UUID();
  v19 = *(v199 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v199);
  v196 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 2) = a3;
  *(v22 + 3) = a4;
  v180 = a4;
  *(v22 + 4) = a5;
  *(v22 + 5) = a6;
  *(v22 + 6) = a7;
  *(v22 + 7) = a8;
  v23 = objc_allocWithZone(REMSaveRequest);
  v183 = a3;

  v182 = a5;

  v185 = a6;

  v184 = a8;

  v192 = a2;
  v191 = [v23 initWithStore:a2];
  v25 = *(a1 + 16);
  if (!v25)
  {
    v193 = 0;
    goto LABEL_77;
  }

  v175 = a7;
  v181 = v22;
  LODWORD(v190) = 0;
  v189 = 0;
  v193 = 0;
  v26 = (a1 + 32);
  v198 = (v19 + 48);
  v195 = (v19 + 32);
  v194 = (v19 + 8);
  v177 = 20250728;
  v27 = 1 - v25;
  *&v24 = 136446210;
  v201 = v24;
  *&v24 = 136315650;
  v186 = v24;
  *&v24 = 136446722;
  v178 = v24;
  *&v24 = 136315906;
  v179 = v24;
  while (1)
  {
    *&v208[13] = *(v26 + 29);
    v28 = v26[1];
    v207 = *v26;
    *v208 = v28;
    LODWORD(v202) = v208[24];
    v30 = *(&v28 + 1);
    v29 = *&v208[16];
    v32 = *(&v207 + 1);
    v31 = v28;
    v33 = v207;
    sub_1006D18E0(&v207, aBlock);
    v34 = qword_1009366E8;

    if (v34 != -1)
    {
      swift_once();
    }

    v203 = v29;
    v35 = type metadata accessor for Logger();
    v36 = sub_100006654(v35, qword_10094FB70);

    v204 = v36;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = v201;
      *(v39 + 4) = sub_10000668C(v33, v32, aBlock);
      _os_log_impl(&_mh_execute_header, v37, v38, "UpdateAccountsWithAccountInfos: Updating account object {accountID: %{public}s}", v39, 0xCu);
      sub_10000607C(v40);
    }

    v41 = v199;
    v42 = v200;
    UUID.init(uuidString:)();
    if ((*v198)(v42, 1, v41) == 1)
    {
      sub_1000050A4(v42, &unk_100939D90, "8\n\r");

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v45 = v201;
        *(v45 + 4) = sub_10000668C(v33, v32, aBlock);
        _os_log_impl(&_mh_execute_header, v43, v44, "RDAccountUtils: Not an UUID {uuidString: %{public}s}", v45, 0xCu);
        sub_10000607C(v46);
      }

LABEL_19:
      sub_1006D1918(&v207);

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock[0] = v62;
        *v61 = v201;
        v63 = sub_10000668C(v33, v32, aBlock);

        *(v61 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v59, v60, "UpdateAccountsWithAccountInfos: Failed to create UUID object, account ignored {accountID: %{public}s}", v61, 0xCu);
        sub_10000607C(v62);
      }

      else
      {
      }

LABEL_4:

      if (!v27)
      {
        break;
      }

      goto LABEL_5;
    }

    v47 = v196;
    (*v195)(v196, v42, v41);
    v48 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v50 = [v48 objectIDWithUUID:isa];

    (*v194)(v47, v41);
    if (!v50)
    {
      goto LABEL_19;
    }

    aBlock[0] = 0;
    v197 = v50;
    v51 = [v192 fetchAccountWithObjectID:v50 error:aBlock];
    if (v51)
    {
      v52 = aBlock[0];
      if (v208[25])
      {
        sub_1006D1918(&v207);

        v53 = v51;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          aBlock[0] = v203;
          *v56 = v186;
          v57 = sub_10000668C(v31, v30, aBlock);

          *(v56 + 4) = v57;
          *(v56 + 12) = 2082;
          v58 = sub_10000668C(v33, v32, aBlock);

          *(v56 + 14) = v58;
          *(v56 + 22) = 2048;
          *(v56 + 24) = [v53 type];

          _os_log_impl(&_mh_execute_header, v54, v55, "UpdateAccountsWithAccountInfos is going to delete account {accountName: %s, accountID: %{public}s, type: %ld}.", v56, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v89 = [v191 updateAccount:v53];
        [v89 removeFromStore];

        v90 = 1;
        if (!v27)
        {
          LODWORD(v190) = 1;
          v135 = &v209 + 4;
          goto LABEL_70;
        }

        v193 = 1;
        v189 = 1;
        LODWORD(v190) = 1;
        goto LABEL_5;
      }

      v65 = v51;
      v66 = [v65 type];
      if (v66 == v203)
      {

        v190 = v65;
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v188 = v51;
          v176 = v70;
          aBlock[0] = v70;
          *v69 = v186;
          *(v69 + 4) = sub_10000668C(v31, v30, aBlock);
          *(v69 + 12) = 2082;
          *(v69 + 14) = sub_10000668C(v33, v32, aBlock);
          *(v69 + 22) = 2048;
          v71 = v190;
          *(v69 + 24) = [v190 type];

          _os_log_impl(&_mh_execute_header, v67, v68, "UpdateAccountsWithAccountInfos is updating existing account object {name: %s, accountID: %{public}s, type: %ld}", v69, 0x20u);
          swift_arrayDestroy();
          v51 = v188;
        }

        else
        {
        }

        v101 = v190;
        v88 = [v191 updateAccount:v190];
        v102 = String._bridgeToObjectiveC()();

        [v88 setName:v102];

        goto LABEL_43;
      }

      sub_1006D1918(&v207);

      v59 = v65;
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v91, v92))
      {

        goto LABEL_4;
      }

      v93 = swift_slowAlloc();
      v202 = v91;
      v94 = v93;
      v95 = swift_slowAlloc();
      v188 = v59;
      aBlock[0] = v95;
      *v94 = v179;
      v96 = sub_10000668C(v31, v30, aBlock);

      *(v94 + 4) = v96;
      *(v94 + 12) = 2082;
      v97 = sub_10000668C(v33, v32, aBlock);

      *(v94 + 14) = v97;
      *(v94 + 22) = 2048;
      v98 = v188;
      *(v94 + 24) = [v188 type];

      *(v94 + 32) = 2048;
      *(v94 + 34) = v203;
      v99 = v92;
      v100 = v202;
      _os_log_impl(&_mh_execute_header, v202, v99, "UpdateAccountsWithAccountInfos: Unexpected account type, account ignored. {accountName: %s, accountID: %{public}s, expectedType: %ld, actualType: %ld}", v94, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v64 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v187 = 0;

      if (v208[25] == 1)
      {
        sub_1006D1918(&v207);

        if (!v27)
        {
          break;
        }

        goto LABEL_5;
      }

      v72 = v203;
      if ((v202 & 1) != 0 || (v73 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v203], v74 = objc_msgSend(v73, "isCloudKit"), v73, v74))
      {

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();

        v77 = os_log_type_enabled(v75, v76);
        v188 = 0;
        if (v77)
        {
          v78 = swift_slowAlloc();
          v189 = v76;
          v79 = v78;
          v190 = swift_slowAlloc();
          aBlock[0] = v190;
          *v79 = v186;
          *(v79 + 4) = sub_10000668C(v31, v30, aBlock);
          *(v79 + 12) = 2082;
          *(v79 + 14) = sub_10000668C(v33, v32, aBlock);
          *(v79 + 22) = 2082;
          v80 = REMAccountType.loggableDescription.getter();
          v82 = sub_10000668C(v80, v81, aBlock);

          *(v79 + 24) = v82;
          v72 = v203;
          _os_log_impl(&_mh_execute_header, v75, v189, "UpdateAccountsWithAccountInfos is creating account object {name: %s, accountID: %{public}s, type: %{public}s}", v79, 0x20u);
          swift_arrayDestroy();
        }

        v83 = String._bridgeToObjectiveC()();

        v84 = [v191 __addAccountWithType:v72 name:v83];

        [v84 setObjectID:v197];
        v85 = [objc_allocWithZone(REMAccountTypeHost) initWithType:v72];
        v86 = [v85 isCloudKit];

        v87 = v84;
        v88 = v87;
        if (v86)
        {
          [v87 setPersistenceCloudSchemaVersion:v177];
        }

        else
        {
          v103 = String._bridgeToObjectiveC()();
          [v88 setExternalIdentifier:v103];
        }

        v189 = 1;
        v51 = v188;
LABEL_43:
        v104 = v202;
        v105 = [v88 inactive];

        if (v104 == v105)
        {
          v106 = v88;
          [v106 setInactive:v104 ^ 1u];

          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v202 = swift_slowAlloc();
            aBlock[0] = v202;
            *v109 = v178;
            [v106 inactive];
            v110 = Bool.yesno.getter();
            v112 = sub_10000668C(v110, v111, aBlock);
            v188 = v51;
            v113 = v112;

            *(v109 + 4) = v113;
            *(v109 + 12) = 2082;
            v114 = sub_10000668C(v33, v32, aBlock);

            *(v109 + 14) = v114;
            *(v109 + 22) = 2082;
            v115 = REMAccountType.loggableDescription.getter();
            v117 = sub_10000668C(v115, v116, aBlock);

            *(v109 + 24) = v117;
            v51 = v188;
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
        }

        v118 = v208[26];
        if (v208[26] != 2)
        {
          if ([v88 didChooseToMigrateLocally])
          {
            v119 = [v88 didChooseToMigrate];
            if ((v118 & 1) == 0)
            {
              if (v119)
              {
                [v88 setDidChooseToMigrateLocally:0];
              }
            }
          }

          [v88 setDidChooseToMigrate:v118 & 1];
        }

        v120 = v208[28];
        if (v208[27] != 2)
        {
          [v88 setDidFinishMigration:v208[27] & 1];
        }

        sub_1006D1918(&v207);
        if (v120 != 2)
        {
          [v88 setDebugSyncDisabled:v120 & 1];
        }

        if (v193)
        {

          LODWORD(v190) = 1;
          v193 = 1;
          if (!v27)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v121 = [v88 changedKeys];
          v122 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v123 = *(v122 + 16);

          LODWORD(v190) = v123 != 0;
          v193 = v190;
          if (!v27)
          {
            break;
          }
        }

        goto LABEL_5;
      }

      sub_1006D1918(&v207);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v202 = v124;
        aBlock[0] = v127;
        *v126 = v186;
        v128 = sub_10000668C(v31, v30, aBlock);

        *(v126 + 4) = v128;
        *(v126 + 12) = 2082;
        v129 = sub_10000668C(v33, v32, aBlock);

        *(v126 + 14) = v129;
        *(v126 + 22) = 2082;
        v130 = REMAccountType.loggableDescription.getter();
        v132 = sub_10000668C(v130, v131, aBlock);

        *(v126 + 24) = v132;
        v133 = v125;
        v134 = v202;
        _os_log_impl(&_mh_execute_header, v202, v133, "UpdateAccountsWithAccountInfos won't create inactive accounts unless it is CloudKit {name: %s, accountID: %{public}s, type: %{public}s}", v126, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    if (!v27)
    {
      break;
    }

LABEL_5:
    ++v27;
    v26 += 3;
    if (v27 == 1)
    {
      __break(1u);
      goto LABEL_100;
    }
  }

  if (v190)
  {
    v90 = v193;
    v135 = &v210;
LABEL_70:
    *(v135 - 64) = v90;
LABEL_71:
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&_mh_execute_header, v136, v137, "UpdateAccountsWithAccountInfos: Saving account object changes", v138, 2u);
    }

    v26 = v181;
    if (qword_100935D30 == -1)
    {
LABEL_74:
      v139 = qword_100974CC8;
      v140 = swift_allocObject();
      *(v140 + 16) = sub_1006D18DC;
      *(v140 + 24) = v26;
      *(v140 + 32) = v189 & 1;
      *(v140 + 33) = v190 & 1;
      aBlock[4] = sub_1006D194C;
      aBlock[5] = v140;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008FB950;
      v141 = _Block_copy(aBlock);

      v142 = v191;
      [v191 saveWithQueue:v139 completion:v141];

      _Block_release(v141);
    }

LABEL_100:
    swift_once();
    goto LABEL_74;
  }

  a7 = v175;
  LODWORD(v25) = v189;
LABEL_77:
  v144 = v185;
  v189 = v25;
  if (v25 & 1) != 0 || (v193)
  {
    v145 = v183;
    swift_beginAccess();
    if (*(v145 + 16) == 1)
    {
      v146 = objc_opt_self();
      v147 = [v146 daemonUserDefaults];
      v148 = [v147 acAccountIdentifiersToMigrateInactivatedCalDavData];

      if (v148)
      {
        v149 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v149 = _swiftEmptyArrayStorage;
      }

      v150 = sub_1001A5660(v149);

      v205 = v150;
      v151 = v182;

      sub_100378434(aBlock, v180, v151);

      v152 = [v146 daemonUserDefaults];
      v153 = v205;
      v154 = *(v205 + 16);
      if (v154)
      {
        v155 = sub_1003689CC(*(v205 + 16), 0);
        v156 = sub_1002791DC(aBlock, v155 + 4, v154, v153);
        sub_10001B860();
        if (v156 != v154)
        {
          __break(1u);
          goto LABEL_87;
        }
      }

      else
      {
LABEL_87:
      }

      v157 = v182;
      v158 = Array._bridgeToObjectiveC()().super.isa;

      [v152 setAcAccountIdentifiersToMigrateInactivatedCalDavData:v158];

      if (qword_1009366E8 != -1)
      {
        swift_once();
      }

      v159 = type metadata accessor for Logger();
      sub_100006654(v159, qword_10094FB70);

      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v164 = v157;
        v165 = v163;
        aBlock[0] = v163;
        *v162 = 136446210;
        *(v162 + 4) = sub_10000668C(v180, v164, aBlock);
        _os_log_impl(&_mh_execute_header, v160, v161, "UpdateAccountWithACAccount: inserting to daemonUserDefaults.acAccountIdentifiersToMigrateInactivatedCalDavData {displayAccountID: %{public}s}", v162, 0xCu);
        sub_10000607C(v165);
      }

      v144 = v185;
    }
  }

  v166 = *(v144 + 16);
  v167 = _swiftEmptyArrayStorage;
  if (v166)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v166, 0);
    v167 = aBlock[0];
    v168 = (v144 + 40);
    do
    {
      v170 = *(v168 - 1);
      v169 = *v168;
      aBlock[0] = v167;
      v172 = v167[2];
      v171 = v167[3];

      if (v172 >= v171 >> 1)
      {
        sub_100026EF4((v171 > 1), v172 + 1, 1);
        v167 = aBlock[0];
      }

      v167[2] = v172 + 1;
      v173 = &v167[2 * v172];
      v173[4] = v170;
      v173[5] = v169;
      v168 += 6;
      --v166;
    }

    while (v166);
  }

  a7(v189 & 1, v193 & 1, v167, 0);
}

uint64_t sub_1006D1918(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);

  return a1;
}

uint64_t sub_1006D19A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 1);
}

uint64_t sub_1006D19E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  return v2(*(v3 + 16), *(v3 + 24));
}

void sub_1006D1A54(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, unint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v177 = a1;
  v17 = a10;
  v183 = type metadata accessor for UUID();
  v170 = *(v183 - 8);
  v18 = *(v170 + 64);
  __chkstk_darwin(v183);
  v182 = (&v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v172 = a7;
  v173 = a8;
  *(v20 + 64) = a8 & 1;
  v174 = a9;
  *(v20 + 72) = a9;
  *(v20 + 80) = a10;
  v179 = v20;
  v180 = a2;

  v181 = a3;

  v175 = a4;
  swift_errorRetain();
  v21 = qword_1009366E8;

  v176 = a6;

  if (v21 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    v23 = sub_100006654(v22, qword_10094FB70);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "RDAccountUtils: Trying to remove orphaned accounts", v26, 2u);
    }

    v27 = [objc_opt_self() sharedInstance];
    v28 = [v27 accountStore];

    v178 = v28;
    v29 = [v28 aa_accountsEnabledForDataclass:kAccountDataclassReminders];
    if (!v29)
    {
      v45 = v17;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "RDAccountUtils: Couldn't fetch accounts from ACAccountStore. Not able to determine orphaned accounts.", v48, 2u);
      }

      v49 = objc_opt_self();
      v50 = String._bridgeToObjectiveC()();
      v51 = [v49 internalErrorWithDebugDescription:v50];

      v52 = v180;
      swift_beginAccess();
      LOBYTE(v50) = *(v52 + 16);
      swift_beginAccess();
      *(v52 + 16) = v50;
      v53 = v181;
      swift_beginAccess();
      LOBYTE(v50) = *(v53 + 16);
      swift_beginAccess();
      *(v53 + 16) = v50;
      v54 = swift_allocObject();
      *(v54 + 16) = v51;
      v55 = v175;
      if (v175)
      {
        sub_1000F5104(&qword_10094FE58, &unk_1007B5980);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_100791340;
        *(v56 + 32) = v55;
        *(v56 + 40) = v51;
        v57 = a5;
        v58 = v51;
        swift_errorRetain();
        v59 = v58;
        swift_errorRetain();
        v60 = v59;
        sub_1000F5104(&unk_1009399E0, &qword_100795D00);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v62 = [v49 errorFromErrors:isa];

        *(v54 + 16) = v62;
        a5 = v57;
      }

      else
      {
        swift_errorRetain();
      }

      v116 = swift_allocObject();
      v117 = v172;
      *(v116 + 16) = a5;
      *(v116 + 24) = v117;
      *(v116 + 32) = v173 & 1;
      v118 = v181;
      *(v116 + 40) = v180;
      *(v116 + 48) = v118;
      v119 = v174;
      *(v116 + 56) = v54;
      *(v116 + 64) = v119;
      *(v116 + 72) = v45;

      sub_1006B9D6C(v176, sub_1006D4B34, v116);

      goto LABEL_97;
    }

    v30 = v29;
    v167 = v17;
    sub_1000060C8(0, &qword_100947960, ACAccount_ptr);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v196 = _swiftEmptySetSingleton;
    if (v31 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v168 = a5;
    v169 = v23;
    if (v32)
    {
      a5 = 0;
      v17 = v31 & 0xC000000000000001;
      v33 = v31 & 0xFFFFFFFFFFFFFF8;
      v34 = &selRef_attachmentRepresentationAndReturnError_;
      v186 = v31 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v17)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a5 >= *(v33 + 16))
          {
            goto LABEL_69;
          }

          v35 = *(v31 + 8 * a5 + 32);
        }

        a7 = v35;
        v36 = (a5 + 1);
        if (__OFADD__(a5, 1))
        {
          break;
        }

        if ([v35 v34[271]])
        {
          v37 = v32;
          v38 = [a7 identifier];
          if (!v38)
          {
            goto LABEL_117;
          }

          v39 = v38;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          sub_100378434(&aBlock, v40, v42);

          v43 = sub_1006BFC1C(a7);
          if (v44)
          {
            sub_100378434(&aBlock, v43, v44);
          }

          else
          {
          }

          v32 = v37;
          v33 = v186;
          v34 = &selRef_attachmentRepresentationAndReturnError_;
        }

        else
        {
        }

        ++a5;
        if (v36 == v32)
        {
          a5 = v196;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    a5 = _swiftEmptySetSingleton;
LABEL_28:

    aBlock = 0;
    v63 = [v177 fetchAccountsIncludingInactive:1 error:&aBlock];
    v64 = aBlock;
    if (!v63)
    {
      v95 = aBlock;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock = v99;
        *v98 = 136315138;
        swift_getErrorValue();
        v100 = Error.localizedDescription.getter();
        v102 = sub_10000668C(v100, v101, &aBlock);

        *(v98 + 4) = v102;
        _os_log_impl(&_mh_execute_header, v96, v97, "Failed to fetch accounts which are no longer signed-in {error: %s}", v98, 0xCu);
        sub_10000607C(v99);
      }

      v103 = objc_opt_self();
      v104 = String._bridgeToObjectiveC()();
      v105 = [v103 internalErrorWithDebugDescription:v104];

      v106 = v180;
      swift_beginAccess();
      LOBYTE(v104) = *(v106 + 16);
      swift_beginAccess();
      *(v106 + 16) = v104;
      v107 = v181;
      swift_beginAccess();
      LOBYTE(v104) = *(v107 + 16);
      swift_beginAccess();
      *(v107 + 16) = v104;
      v108 = swift_allocObject();
      *(v108 + 16) = v105;
      v109 = v175;
      if (v175)
      {
        sub_1000F5104(&qword_10094FE58, &unk_1007B5980);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_100791340;
        *(v110 + 32) = v109;
        *(v110 + 40) = v105;
        v111 = v105;
        swift_errorRetain();
        v112 = v111;
        swift_errorRetain();
        v113 = v112;
        sub_1000F5104(&unk_1009399E0, &qword_100795D00);
        v114 = Array._bridgeToObjectiveC()().super.isa;

        v115 = [v103 errorFromErrors:v114];

        *(v108 + 16) = v115;
      }

      else
      {
        swift_errorRetain();
      }

      v120 = swift_allocObject();
      v121 = v172;
      *(v120 + 16) = v168;
      *(v120 + 24) = v121;
      *(v120 + 32) = v173 & 1;
      v122 = v181;
      *(v120 + 40) = v180;
      *(v120 + 48) = v122;
      v123 = v174;
      *(v120 + 56) = v108;
      *(v120 + 64) = v123;
      *(v120 + 72) = v167;

      sub_1006B9D6C(v176, sub_1006D548C, v120);

      goto LABEL_97;
    }

    v65 = v63;
    sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v64;

    v187 = _swiftEmptyArrayStorage;
    if (!(v17 >> 62))
    {
      v67 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        break;
      }

      goto LABEL_31;
    }

    v67 = _CocoaArrayWrapper.endIndex.getter();
    if (!v67)
    {
      break;
    }

LABEL_31:
    v68 = 0;
    v31 = v17 & 0xC000000000000001;
    v185 = v17 & 0xFFFFFFFFFFFFFF8;
    v184 = v17 + 32;
    v170 += 8;
    v69 = (a5 + 56);
    v186 = _swiftEmptyArrayStorage;
    v171 = v17;
    while (1)
    {
      if (v31)
      {
        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v68 >= *(v185 + 16))
        {
          goto LABEL_71;
        }

        v70 = *(v184 + 8 * v68);
      }

      a7 = v70;
      if (__OFADD__(v68++, 1))
      {
        break;
      }

      if (qword_1009366F0 != -1)
      {
        swift_once();
      }

      v72 = off_10094FB88;
      v73 = [a7 type];
      if (v72[2] && (v74 = v73, v75 = v72[5], Hasher.init(_seed:)(), Hasher._combine(_:)(v74), v76 = Hasher._finalize()(), v77 = -1 << *(v72 + 32), v78 = v76 & ~v77, ((*(v72 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v78) & 1) != 0))
      {
        v79 = ~v77;
        while (*(v72[6] + 8 * v78) != v74)
        {
          v78 = (v78 + 1) & v79;
          if (((*(v72 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v78) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v80 = [a7 objectID];
        v81 = [v80 uuid];

        v82 = v182;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v83 = UUID.uuidString.getter();
        v85 = v84;
        (*v170)(v82, v183);
        if (*(a5 + 16) && (v86 = *(a5 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v87 = Hasher._finalize()(), v88 = -1 << *(a5 + 32), v89 = v87 & ~v88, ((*(v69 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) != 0))
        {
          v90 = ~v88;
          while (1)
          {
            v91 = (*(a5 + 48) + 16 * v89);
            v92 = *v91 == v83 && v91[1] == v85;
            if (v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v89 = (v89 + 1) & v90;
            if (((*(v69 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          v17 = v171;
        }

        else
        {
LABEL_56:

          v93 = a7;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v17 = v171;
          if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v94 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v17 = v171;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v186 = v187;
        }
      }

      else
      {
LABEL_32:
      }

      if (v68 == v67)
      {
        goto LABEL_76;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
  }

  v186 = _swiftEmptyArrayStorage;
LABEL_76:

  v124 = v186;
  if (v186 >> 62)
  {
    goto LABEL_109;
  }

  v125 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_78:
  v126 = v168;
  if (!v125)
  {

    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&_mh_execute_header, v141, v142, "No orphaned accounts to remove.", v143, 2u);
    }

    v144 = v180;
    swift_beginAccess();
    v145 = *(v144 + 16);
    swift_beginAccess();
    *(v144 + 16) = v145;
    v146 = v181;
    swift_beginAccess();
    v147 = *(v146 + 16);
    swift_beginAccess();
    *(v146 + 16) = v147;
    v148 = swift_allocObject();
    *(v148 + 16) = v175;
    v149 = swift_allocObject();
    v150 = v172;
    *(v149 + 16) = v126;
    *(v149 + 24) = v150;
    *(v149 + 32) = v173 & 1;
    *(v149 + 40) = v144;
    *(v149 + 48) = v146;
    v151 = v174;
    *(v149 + 56) = v148;
    *(v149 + 64) = v151;
    *(v149 + 72) = v167;

    swift_errorRetain();

    sub_1006B9D6C(v176, sub_1006D548C, v149);

LABEL_97:

    return;
  }

  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.default.getter();
  v129 = v124 >> 62;
  if (!os_log_type_enabled(v127, v128))
  {
    goto LABEL_99;
  }

  v31 = swift_slowAlloc();
  a7 = swift_slowAlloc();
  v196 = a7;
  *v31 = 136315138;
  if (!v129)
  {
    v130 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_82;
  }

  while (2)
  {
    v130 = _CocoaArrayWrapper.endIndex.getter();
LABEL_82:
    v131 = _swiftEmptyArrayStorage;
    if (!v130)
    {
      goto LABEL_98;
    }

    v176 = a7;
    v180 = v31;
    LODWORD(v181) = v128;
    v182 = v127;
    v183 = v129;
    v195 = _swiftEmptyArrayStorage;
    v184 = v130;
    sub_100026EF4(0, v130 & ~(v130 >> 63), 0);
    v132 = v184;
    if (v184 < 0)
    {
      __break(1u);
LABEL_117:

      __break(1u);
    }

    a7 = 0;
    v131 = v195;
    v133 = v124 & 0xC000000000000001;
    v185 = v124 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v134 = a7 + 1;
      if (__OFADD__(a7, 1))
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        v125 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_78;
      }

      if (v133)
      {
        v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a7 >= *(v185 + 16))
        {
          goto LABEL_108;
        }

        v135 = *(v124 + 8 * a7 + 32);
      }

      v136 = v135;
      v194 = v135;
      sub_1006B99DC(&v194, &aBlock);

      v137 = aBlock;
      v31 = v189;
      v195 = v131;
      v139 = v131[2];
      v138 = v131[3];
      if (v139 >= v138 >> 1)
      {
        sub_100026EF4((v138 > 1), v139 + 1, 1);
        v132 = v184;
        v131 = v195;
      }

      v131[2] = v139 + 1;
      v140 = &v131[2 * v139];
      v140[4] = v137;
      v140[5] = v31;
      ++a7;
      v124 = v186;
    }

    while (v134 != v132);
    v129 = v183;
    v127 = v182;
    v128 = v181;
    v31 = v180;
    a7 = v176;
LABEL_98:
    aBlock = v131;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v152 = BidirectionalCollection<>.joined(separator:)();
    v154 = v153;

    v155 = sub_10000668C(v152, v154, &v196);

    *(v31 + 4) = v155;
    _os_log_impl(&_mh_execute_header, v127, v128, "Removing orphaned accounts {accounts: %s}", v31, 0xCu);
    sub_10000607C(a7);

LABEL_99:

    v156 = objc_allocWithZone(REMSaveRequest);
    v157 = [v156 initWithStore:v177];

    if (v129)
    {
      v158 = _CocoaArrayWrapper.endIndex.getter();
      if (!v158)
      {
        goto LABEL_111;
      }

LABEL_101:
      if (v158 >= 1)
      {
        v159 = 0;
        do
        {
          if ((v124 & 0xC000000000000001) != 0)
          {
            v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v160 = *(v124 + 8 * v159 + 32);
          }

          v161 = v160;
          ++v159;
          v162 = [v157 updateAccount:v160];
          [v162 removeFromStore];
        }

        while (v158 != v159);
        goto LABEL_111;
      }

      __break(1u);
      continue;
    }

    break;
  }

  v158 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v158)
  {
    goto LABEL_101;
  }

LABEL_111:

  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v163 = qword_100974CC8;
  v164 = swift_allocObject();
  v165 = v179;
  *(v164 + 16) = sub_1006D4AF8;
  *(v164 + 24) = v165;
  v192 = sub_1006D5524;
  v193 = v164;
  aBlock = _NSConcreteStackBlock;
  v189 = 1107296256;
  v190 = sub_100042968;
  v191 = &unk_1008FC580;
  v166 = _Block_copy(&aBlock);

  [v157 saveWithQueue:v163 completion:v166];

  _Block_release(v166);
}

void sub_1006D30BC(void *a1, char **a2, void *a3, uint64_t *a4, int a5, uint64_t *a6, void *a7)
{
  LODWORD(v9) = a5;
  v142 = a1;
  v148 = type metadata accessor for UUID();
  v143 = *(v148 - 8);
  v13 = v143[8];
  __chkstk_darwin(v148);
  v147 = (&v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v141 = a4;
  *(v15 + 32) = a4;
  *(v15 + 40) = v9 & 1;
  *(v15 + 48) = a6;
  *(v15 + 56) = a7;
  v145 = v15;
  v16 = qword_1009366E8;

  v17 = a3;

  if (v16 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    v146 = sub_100006654(v18, qword_10094FB70);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "RDAccountUtils: Trying to remove orphaned accounts", v21, 2u);
    }

    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 accountStore];

    v144 = v23;
    v24 = [v23 aa_accountsEnabledForDataclass:kAccountDataclassReminders];
    if (!v24)
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "RDAccountUtils: Couldn't fetch accounts from ACAccountStore. Not able to determine orphaned accounts.", v41, 2u);
      }

      v42 = objc_opt_self();
      v43 = String._bridgeToObjectiveC()();
      v44 = [v42 internalErrorWithDebugDescription:v43];

      v45 = swift_allocObject();
      v46 = v141;
      *(v45 + 16) = a2;
      *(v45 + 24) = v46;
      *(v45 + 32) = v9 & 1;
      *(v45 + 40) = a6;
      *(v45 + 48) = a7;
      *(v45 + 56) = 0;
      *(v45 + 64) = v44;

      v47 = v44;
      sub_1006B9D6C(v17, sub_1006D42FC, v45);

      goto LABEL_27;
    }

    v25 = v24;
    v135 = v17;
    v136 = a7;
    v137 = a2;
    sub_1000060C8(0, &qword_100947960, ACAccount_ptr);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v154 = _swiftEmptySetSingleton;
    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v138 = v9;
    v139 = a6;
    if (v27)
    {
      v9 = 0;
      v17 = (v26 & 0xC000000000000001);
      v28 = v26 & 0xFFFFFFFFFFFFFF8;
      a2 = &selRef_attachmentRepresentationAndReturnError_;
      v151 = v26 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v17)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v28 + 16))
          {
            goto LABEL_65;
          }

          v29 = *(v26 + 8 * v9 + 32);
        }

        v30 = v29;
        a7 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ([v29 a2[271]])
        {
          a6 = v27;
          v31 = [v30 identifier];
          if (!v31)
          {
            goto LABEL_112;
          }

          v32 = v31;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          sub_100378434(&aBlock, v33, v35);

          v36 = sub_1006BFC1C(v30);
          if (v37)
          {
            sub_100378434(&aBlock, v36, v37);
          }

          else
          {
          }

          v27 = a6;
          v28 = v151;
          a2 = &selRef_attachmentRepresentationAndReturnError_;
        }

        else
        {
        }

        ++v9;
        if (a7 == v27)
        {
          v38 = v154;
          a6 = v139;
          LOBYTE(v9) = v138;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v38 = _swiftEmptySetSingleton;
LABEL_29:

    aBlock = 0;
    v48 = [v142 fetchAccountsIncludingInactive:1 error:&aBlock];
    v49 = aBlock;
    if (!v48)
    {
      v79 = aBlock;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        aBlock = v83;
        *v82 = 136315138;
        swift_getErrorValue();
        v84 = Error.localizedDescription.getter();
        v9 = sub_10000668C(v84, v85, &aBlock);

        *(v82 + 4) = v9;
        LOBYTE(v9) = v138;
        _os_log_impl(&_mh_execute_header, v80, v81, "Failed to fetch accounts which are no longer signed-in {error: %s}", v82, 0xCu);
        sub_10000607C(v83);
      }

      v86 = v137;
      v87 = v136;
      v88 = objc_opt_self();
      v89 = String._bridgeToObjectiveC()();
      v90 = [v88 internalErrorWithDebugDescription:v89];

      v91 = swift_allocObject();
      v92 = v141;
      *(v91 + 16) = v86;
      *(v91 + 24) = v92;
      *(v91 + 32) = v9 & 1;
      *(v91 + 40) = a6;
      *(v91 + 48) = v87;
      *(v91 + 56) = 0;
      *(v91 + 64) = v90;

      v93 = v90;
      sub_1006B9D6C(v135, sub_1006D547C, v91);

      goto LABEL_27;
    }

    v50 = v48;
    sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v49;

    v154 = _swiftEmptyArrayStorage;
    if (!(v51 >> 62))
    {
      v17 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v151 = v51;
      if (!v17)
      {
        break;
      }

      goto LABEL_32;
    }

    v17 = _CocoaArrayWrapper.endIndex.getter();
    v151 = v51;
    if (!v17)
    {
      break;
    }

LABEL_32:
    v9 = 0;
    a2 = (v51 & 0xC000000000000001);
    v150 = v51 & 0xFFFFFFFFFFFFFF8;
    v149 = v51 + 32;
    v140 = (v143 + 1);
    a6 = v38 + 7;
    v53 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (a2)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v150 + 16))
        {
          goto LABEL_67;
        }

        v54 = *(v149 + 8 * v9);
      }

      a7 = v54;
      if (__OFADD__(v9++, 1))
      {
        break;
      }

      if (qword_1009366F0 != -1)
      {
        swift_once();
      }

      v56 = off_10094FB88;
      v57 = [a7 type];
      if (v56[2] && (v58 = v57, v59 = v56[5], Hasher.init(_seed:)(), Hasher._combine(_:)(v58), v60 = Hasher._finalize()(), v61 = -1 << *(v56 + 32), v62 = v60 & ~v61, ((*(v56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v62) & 1) != 0))
      {
        v63 = ~v61;
        while (*(v56[6] + 8 * v62) != v58)
        {
          v62 = (v62 + 1) & v63;
          if (((*(v56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v62) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v143 = v53;
        v64 = [a7 objectID];
        v65 = [v64 uuid];

        v66 = v147;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = UUID.uuidString.getter();
        v69 = v68;
        (*v140)(v66, v148);
        if (v38[2] && (v70 = v38[5], Hasher.init(_seed:)(), String.hash(into:)(), v71 = Hasher._finalize()(), v72 = -1 << *(v38 + 32), v73 = v71 & ~v72, ((*(a6 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) != 0))
        {
          v74 = ~v72;
          while (1)
          {
            v75 = (v38[6] + 16 * v73);
            v76 = *v75 == v67 && v75[1] == v69;
            if (v76 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v73 = (v73 + 1) & v74;
            if (((*(a6 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v53 = v143;
        }

        else
        {
LABEL_57:

          v77 = a7;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v78 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v53 = v154;
        }
      }

      else
      {
LABEL_33:
      }

      if (v9 == v17)
      {
        goto LABEL_72;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_72:

  if (v53 >> 62)
  {
    goto LABEL_104;
  }

  v94 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_74:
  v95 = v137;
  v96 = v136;
  v97 = v135;
  v98 = v139;
  if (!v94)
  {

    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "No orphaned accounts to remove.", v116, 2u);
    }

    v117 = swift_allocObject();
    v118 = v141;
    *(v117 + 16) = v95;
    *(v117 + 24) = v118;
    *(v117 + 32) = v138 & 1;
    *(v117 + 40) = v98;
    *(v117 + 48) = v96;
    *(v117 + 56) = 0;
    *(v117 + 64) = 0;

    sub_1006B9D6C(v97, sub_1006D547C, v117);

LABEL_27:

    return;
  }

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();
  v101 = v53 >> 62;
  if (!os_log_type_enabled(v99, v100))
  {
    goto LABEL_94;
  }

  v98 = swift_slowAlloc();
  a6 = swift_slowAlloc();
  v155 = a6;
  *v98 = 136315138;
  if (!v101)
  {
    v102 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_78;
  }

  while (2)
  {
    v102 = _CocoaArrayWrapper.endIndex.getter();
LABEL_78:
    v103 = _swiftEmptyArrayStorage;
    if (!v102)
    {
      goto LABEL_93;
    }

    v141 = a6;
    v143 = v98;
    LODWORD(v146) = v100;
    v147 = v99;
    v148 = v101;
    v153 = _swiftEmptyArrayStorage;
    v149 = v102;
    sub_100026EF4(0, v102 & ~(v102 >> 63), 0);
    v104 = v149;
    if (v149 < 0)
    {
      __break(1u);
LABEL_112:

      __break(1u);
    }

    v105 = 0;
    v103 = v153;
    v150 = v53 & 0xFFFFFFFFFFFFFF8;
    v151 = v53 & 0xC000000000000001;
    a6 = v53;
    do
    {
      v106 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        v94 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_74;
      }

      if (v151)
      {
        v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v105 >= *(v150 + 16))
        {
          goto LABEL_103;
        }

        v107 = *(v53 + 8 * v105 + 32);
      }

      v108 = v107;
      v152 = v107;
      sub_1006B99DC(&v152, &aBlock);

      v109 = aBlock;
      v110 = v157;
      v153 = v103;
      v112 = v103[2];
      v111 = v103[3];
      if (v112 >= v111 >> 1)
      {
        sub_100026EF4((v111 > 1), v112 + 1, 1);
        v104 = v149;
        v103 = v153;
      }

      v103[2] = v112 + 1;
      v113 = &v103[2 * v112];
      v113[4] = v109;
      v113[5] = v110;
      ++v105;
      v53 = a6;
    }

    while (v106 != v104);
    v101 = v148;
    v99 = v147;
    v100 = v146;
    v98 = v143;
    a6 = v141;
LABEL_93:
    aBlock = v103;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v119 = BidirectionalCollection<>.joined(separator:)();
    v121 = v120;

    v122 = sub_10000668C(v119, v121, &v155);

    *(v98 + 4) = v122;
    _os_log_impl(&_mh_execute_header, v99, v100, "Removing orphaned accounts {accounts: %s}", v98, 0xCu);
    sub_10000607C(a6);

LABEL_94:

    v123 = objc_allocWithZone(REMSaveRequest);
    v124 = [v123 initWithStore:v142];

    if (v101)
    {
      v125 = _CocoaArrayWrapper.endIndex.getter();
      if (!v125)
      {
        goto LABEL_106;
      }

LABEL_96:
      if (v125 >= 1)
      {
        v126 = 0;
        do
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v127 = *(v53 + 8 * v126 + 32);
          }

          v128 = v127;
          ++v126;
          v129 = [v124 updateAccount:v127];
          [v129 removeFromStore];
        }

        while (v125 != v126);
        goto LABEL_106;
      }

      __break(1u);
      continue;
    }

    break;
  }

  v125 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v125)
  {
    goto LABEL_96;
  }

LABEL_106:

  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v130 = qword_100974CC8;
  v131 = swift_allocObject();
  v132 = v145;
  *(v131 + 16) = sub_1006D42E8;
  *(v131 + 24) = v132;
  v160 = sub_1006D4300;
  v161 = v131;
  aBlock = _NSConcreteStackBlock;
  v157 = 1107296256;
  v158 = sub_100042968;
  v159 = &unk_1008FBC48;
  v133 = _Block_copy(&aBlock);

  [v124 saveWithQueue:v130 completion:v133];

  _Block_release(v133);
}