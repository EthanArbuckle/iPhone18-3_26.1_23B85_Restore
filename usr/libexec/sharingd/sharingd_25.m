uint64_t sub_100401844()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropContentHandleriCloudDrive_iCloudDriveFolder, &unk_100974E00, &qword_1007F8940);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropContentHandleriCloudDrive()
{
  result = qword_10097C430;
  if (!qword_10097C430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040190C()
{
  sub_1002A512C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10040199C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SDAirDropContentHandleriCloudDrive();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropContentHandleriCloudDrive_iCloudDriveFolder;
  v7 = type metadata accessor for URL();
  result = (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *a1 = v5;
  return result;
}

uint64_t sub_100401A28(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100400A0C(a1);
}

uint64_t sub_100401AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100401B60()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C4F8);
  v1 = sub_10000C4AC(v0, qword_10097C4F8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100401C28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.TransferType();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v2[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_100401DC4, v10, 0);
}

void sub_100401DC4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    v10 = 0;
LABEL_5:
    v11 = v0[11];
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[4];

    v15 = v0[1];

    v15(v10);
    return;
  }

  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  v9 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB398(v9, v7);

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_100005508(v0[4], &unk_100974E00, &qword_1007F8940);
    goto LABEL_4;
  }

  v16 = v0[3];
  (*(v0[6] + 32))(v0[8], v0[4], v0[5]);
  sub_100402EB4(v17);
  v18 = *(v16 + 16);
  *(v16 + 16) = v19;

  if (*(v16 + 16))
  {
    v20 = v0[6];
    v21 = v0[2];
    v22 = SFAirDropReceive.AskRequest.urlItems.getter();
    v23 = 0;
    v24 = v22 + 56;
    v25 = -1;
    v26 = -1 << *(v22 + 32);
    if (-v26 < 64)
    {
      v25 = ~(-1 << -v26);
    }

    v27 = v25 & *(v22 + 56);
    v28 = (63 - v26) >> 6;
    v46 = v22;
    while (v27)
    {
      v29 = v23;
LABEL_18:
      v30 = v0[7];
      v31 = v0[5];
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      (*(v20 + 16))(v30, *(v46 + 48) + *(v20 + 72) * (v32 | (v29 << 6)), v31);
      URL._bridgeToObjectiveC()(v33);
      v35 = v34;
      v36 = *(v20 + 8);
      v36(v30, v31);
      LOBYTE(v30) = [v35 isiWorkURL];

      if ((v30 & 1) == 0)
      {
        v37 = v0[8];
        v38 = v0[5];

        v36(v37, v38);
        goto LABEL_4;
      }
    }

    while (1)
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v29 >= v28)
      {
        v39 = v0[8];
        v40 = v0[5];

        (*(v20 + 8))(v39, v40);
        v10 = 1;
        goto LABEL_5;
      }

      v27 = *(v24 + 8 * v29);
      ++v23;
      if (v27)
      {
        v23 = v29;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = v0[3];
    type metadata accessor for SDAirDropContentHandlerWebLinks();
    v42 = swift_allocObject();
    v0[13] = v42;
    v43 = *(v41 + 24);
    *(v41 + 24) = v42;

    v44 = swift_task_alloc();
    v0[14] = v44;
    *v44 = v0;
    v44[1] = sub_100402170;
    v45 = v0[2];

    sub_1002FC674(v45);
  }
}

uint64_t sub_100402170(char a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100402288, v3, 0);
}

void sub_100402288()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  if (v1)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 16);
    v5 = SFAirDropReceive.AskRequest.urlItems.getter();
    v6 = 0;
    v7 = v5 + 56;
    v8 = -1;
    v9 = -1 << *(v5 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & *(v5 + 56);
    v11 = (63 - v9) >> 6;
    v30 = v5;
    while (v10)
    {
      v12 = v6;
LABEL_11:
      v13 = *(v0 + 56);
      v14 = *(v0 + 40);
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      (*(v3 + 16))(v13, *(v30 + 48) + *(v3 + 72) * (v15 | (v12 << 6)), v14);
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      v19 = *(v3 + 8);
      v19(v13, v14);
      LOBYTE(v13) = [v18 isiWorkURL];

      if ((v13 & 1) == 0)
      {
        v20 = *(v0 + 64);
        v21 = *(v0 + 40);

        v19(v20, v21);
        goto LABEL_14;
      }
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        v23 = *(v0 + 64);
        v24 = *(v0 + 40);

        (*(v3 + 8))(v23, v24);
        v22 = 1;
        goto LABEL_16;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
LABEL_14:
    v22 = 0;
LABEL_16:
    v25 = *(v0 + 88);
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v28 = *(v0 + 32);

    v29 = *(v0 + 8);

    v29(v22);
  }
}

void sub_1004024C4(uint64_t a1, char a2)
{
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 40);
  if (v13)
  {
    v14 = *(v2 + 32);
    v15 = *(v2 + 40);

    v16 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    v17 = SFAirDropReceive.AskRequest.urlItems.getter();
    sub_1002FB398(v17, v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100005508(v7, &unk_100974E00, &qword_1007F8940);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      v25 = [v23 iWorkDocumentName];

      if (v25)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        (*(v9 + 8))(v12, v8);
        if (v16 == 1)
        {
          sub_1003D8D18(&off_1008D6B10, a2 & 1);
          sub_100005508(&unk_1008D6B30, &qword_100981D40, &unk_1007FA6C0);
          v29 = String._bridgeToObjectiveC()();
          v30 = SFLocalizedStringForKey();

          if (v30)
          {

            static String._unconditionallyBridgeFromObjectiveC(_:)();

            sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1007F8A70;
            *(v31 + 56) = &type metadata for String;
            v32 = sub_100026764();
            *(v31 + 32) = v14;
            *(v31 + 40) = v13;
            *(v31 + 96) = &type metadata for String;
            *(v31 + 104) = v32;
            *(v31 + 64) = v32;
            *(v31 + 72) = v26;
            *(v31 + 80) = v28;
            static String.localizedStringWithFormat(_:_:)();

LABEL_17:

            return;
          }

          goto LABEL_19;
        }
      }

      else
      {
        (*(v9 + 8))(v12, v8);
      }
    }

    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x494C5F4B524F5749;
    v34 = inited + 32;
    *(inited + 40) = 0xEA00000000004B4ELL;
    *(inited + 48) = v16;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v34, &qword_100981D40, &unk_1007FA6C0);
    v35 = String._bridgeToObjectiveC()();
    v36 = SFLocalizedStringForKey();

    if (v36)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1007F8A70;
      *(v37 + 56) = &type metadata for Int;
      *(v37 + 64) = &protocol witness table for Int;
      *(v37 + 32) = v16;
      *(v37 + 96) = &type metadata for String;
      *(v37 + 104) = sub_100026764();
      *(v37 + 72) = v14;
      *(v37 + 80) = v13;
      static String.localizedStringWithFormat(_:_:)();

      goto LABEL_17;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (qword_100973800 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000C4AC(v18, qword_10097C4F8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Called localizedDescription on SDAirDropContentHandleriWorkLinks without an appName", v21, 2u);
  }
}

uint64_t sub_100402A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  if (*(v2 + 24))
  {
    v12 = *(v2 + 24);

    sub_1002FB6E8(a1, a2);
  }

  else
  {
    v46 = v9;
    v14 = *(a1 + 16);
    v40 = *(v2 + 16);
    v41 = a2;
    v15 = v40;
    v38 = a1;
    v39 = v14;
    if (v14)
    {
      v18 = *(v6 + 16);
      v17 = v6 + 16;
      v16 = v18;
      v44 = (*(v17 + 64) + 32) & ~*(v17 + 64);
      v19 = a1 + v44;
      v20 = *(v17 + 56);
      v47 = (v17 + 16);
      v42 = (v17 - 8);
      v21 = _swiftEmptyArrayStorage;
      v45 = v17;
      v22 = v46;
      v43 = v20;
      v18(v11, v19, v5);
      while (1)
      {
        if (URL.isFileURL.getter())
        {
          (*v42)(v11, v5);
        }

        else
        {
          v23 = *v47;
          (*v47)(v22, v11, v5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FAB4(0, v21[2] + 1, 1);
            v21 = v48;
          }

          v26 = v21[2];
          v25 = v21[3];
          if (v26 >= v25 >> 1)
          {
            sub_10028FAB4(v25 > 1, v26 + 1, 1);
            v21 = v48;
          }

          v21[2] = v26 + 1;
          v27 = v43;
          v28 = v21 + v44 + v26 * v43;
          v22 = v46;
          v23(v28, v46, v5);
          v20 = v27;
        }

        v19 += v20;
        if (!--v14)
        {
          break;
        }

        v16(v11, v19, v5);
      }
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v29 = v21[2];
    if (v29)
    {
      if (v29 != v39)
      {
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000C4AC(v30, qword_10097B528);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Asked to view mixed files and links, only viewing links", v33, 2u);
        }
      }

      v48 = 0;
      v34 = swift_allocObject();
      v35 = v40;
      *(v34 + 16) = v21;
      *(v34 + 24) = v35;
    }

    else
    {

      v48 = 0;
      v36 = swift_allocObject();
      *(v36 + 16) = v40;
      *(v36 + 24) = 1;
      *(v36 + 32) = v38;
    }

    return SFProgressTask.init(_:initialProgress:operation:file:line:)();
  }
}

void sub_100402EB4(NSURL *a1@<X8>)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = [v3 isiWorkURL];

  if (v5)
  {
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    v9 = [v7 iWorkApplicationName];

    if (!v9)
    {
      __break(1u);
      return;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001229C();
    v10 = StringProtocol.capitalized.getter();
    v12 = v11;

    if (v10 == 0x7365676150 && v12 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = objc_allocWithZone(LSApplicationRecord);
      v14 = 0x6C7070612E6D6F63;
      v15 = 0xEF73656761502E65;
    }

    else
    {
      if (v10 == 0x737265626D754ELL && v12 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = "com.apple.Numbers";
      }

      else
      {
        if ((v10 != 0x65746F6E79654BLL || v12 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_17:
          v25 = *(v2 + 40);
          *(v2 + 32) = v10;
          *(v2 + 40) = v12;

          return;
        }

        v16 = "com.apple.Keynote";
      }

      v17 = v16 - 32;
      v18 = objc_allocWithZone(LSApplicationRecord);
      v15 = v17 | 0x8000000000000000;
      v14 = 0xD000000000000011;
    }

    v19 = sub_10066F3F8(v14, v15, 1);
    if (v19)
    {
      v20 = v19;
      v21 = [v20 applicationState];
      v22 = [v21 isInstalled];

      if (v22)
      {

        v23 = [v20 localizedName];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v24;
      }

      else
      {
      }
    }

    goto LABEL_17;
  }
}

uint64_t sub_1004032E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

double sub_10040334C@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriWorkLinks();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *a1 = v2;
  return result;
}

uint64_t sub_100403388(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100401C28(a1);
}

uint64_t sub_100403468(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10028E5A4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100403584(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100027A84(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10040367C(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10028E4A4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1004037BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100027A84(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10040641C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1004038D8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100403A1C(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_10028E1C8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100403B10(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_10028EFE0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100403C08(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Data.Iterator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_36;
  }

  v12 = HIDWORD(a1) - a1;
LABEL_10:
  v15 = *v2;
  v16 = *(*v2 + 2);
  v17 = v16 + v12;
  if (__OFADD__(v16, v12))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v27 = v2;
    v28 = *(v15 + 2);
    sub_1004068BC(&unk_100975020, &type metadata accessor for Data.Iterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v33)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v29 = *(v15 + 3);
      v30 = v29 >> 1;
      if ((v29 >> 1) >= v28 + 1)
      {
        break;
      }

      v15 = sub_10028E4A4((v29 > 1), v28 + 1, 1, v15);
      v31 = v33;
      v30 = *(v15 + 3) >> 1;
      if ((v33 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      *(v15 + 2) = v28;
      v2 = v27;
      if (v31)
      {
        goto LABEL_22;
      }
    }

    v31 = 0;
    do
    {
LABEL_30:
      if (v28 >= v30)
      {
        break;
      }

      v15[v28++ + 32] = v32[14];
      dispatch thunk of IteratorProtocol.next()();
      v31 = v33;
    }

    while ((v33 & 1) == 0);
    goto LABEL_27;
  }

  v18 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v15 + 3) >> 1, v20 < v17))
  {
    if (v16 <= v17)
    {
      v21 = v16 + v12;
    }

    else
    {
      v21 = v16;
    }

    v15 = sub_10028E4A4(isUniquelyReferenced_nonNull_native, v21, 1, v15);
    v20 = *(v15 + 3) >> 1;
  }

  v22 = v20 - *(v15 + 2);
  v23 = Data._copyContents(initializing:)();
  result = sub_100026AC0(a1, a2);
  if (v23 < v12)
  {
    goto LABEL_24;
  }

  if (v23 < 1)
  {
    goto LABEL_21;
  }

  v24 = *(v15 + 2);
  v25 = __OFADD__(v24, v23);
  v26 = v24 + v23;
  if (!v25)
  {
    *(v15 + 2) = v26;
LABEL_21:
    if (v23 != v22)
    {
LABEL_22:
      result = (*(v6 + 8))(v10, v5);
      *v2 = v15;
      return result;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t SFAirDropTransfer.init(incomingTransfer:)(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.AskRequest();
  v205 = *(v2 - 8);
  v206 = v2;
  v3 = *(v205 + 64);
  __chkstk_darwin(v2);
  v204 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v202 = *(v5 - 8);
  v203 = v5;
  v6 = *(v202 + 64);
  __chkstk_darwin(v5);
  v201 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for CodableError();
  v188 = *(v189 - 8);
  v8 = *(v188 + 64);
  __chkstk_darwin(v189);
  v187 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDropReceive.Failure();
  v198 = *(v10 - 8);
  v199 = v10;
  v11 = *(v198 + 8);
  v12 = __chkstk_darwin(v10);
  v190 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v191 = &v184 - v14;
  v200 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v197 = *(v200 - 8);
  v15 = *(v197 + 64);
  v16 = __chkstk_darwin(v200);
  v18 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v192 = &v184 - v19;
  v20 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v207 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v193 = &v184 - v30;
  __chkstk_darwin(v29);
  v32 = &v184 - v31;
  v33 = type metadata accessor for SFAirDropReceive.Transfer();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000276B4(0, &qword_10097C638, SFAirDropTransferMetaData_ptr);
  v195 = v34;
  v38 = *(v34 + 16);
  v196 = v33;
  v38(v37, a1, v33);
  v194 = SFAirDropTransferMetaData.init(transfer:)(v37);
  v39 = type metadata accessor for URL();
  v208 = *(v39 - 8);
  v209 = v32;
  v40 = *(v208 + 56);
  v41 = v32;
  v42 = v24;
  v40(v41, 1, 1, v39);
  v210 = a1;
  SFAirDropReceive.Transfer.state.getter();
  v43 = (*(v21 + 88))(v24, v20);
  if (v43 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v21 + 96))(v24, v20);
    v44 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v44 - 8) + 8))(v24, v44);
    v199 = 0;
    v200 = 0;
    v45 = 0;
    v46 = 0;
    v197 = 1;
    v198 = _swiftEmptyArrayStorage;
LABEL_8:
    v50 = v207;
    goto LABEL_9;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v21 + 96))(v24, v20);
    v47 = *(sub_10028088C(&qword_10097C688, &unk_1008042A0) + 48);
    v48 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v48 - 8) + 8))(v24 + v47, v48);
    v49 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_7:
    (*(*(v49 - 8) + 8))(v24, v49);
    v200 = 0;
    v45 = 0;
    v46 = 0;
    v197 = 1;
    v198 = _swiftEmptyArrayStorage;
    v199 = 1;
    goto LABEL_8;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
  {
    (*(v21 + 96))(v24, v20);
    v49 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    goto LABEL_7;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    (*(v21 + 96))(v24, v20);
    v71 = v40;
    v72 = sub_10028088C(&qword_10097C680, &unk_100808F80);
    v198 = v72[12];
    v73 = *(v24 + v72[16] + 8);

    v74 = v72[20];
    v75 = v197;
    v76 = v192;
    v77 = v200;
    (*(v197 + 32))(v192, v42, v200);
    v78 = v193;
    SFAirDropReceive.ItemDestination.url.getter();
    v79 = v209;
    sub_100406854(v209);
    v199 = 1;
    v71(v78, 0, 1, v39);
    sub_1003332E8(v78, v79);
    (*(v75 + 8))(v76, v77);
    v80 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v80 - 8) + 8))(v42 + v74, v80);
    v81 = type metadata accessor for SFAirDrop.Progress();
    (*(*(v81 - 8) + 8))(&v198[v42], v81);
    v200 = 0;
    v45 = 0;
    v46 = 0;
    v197 = 2;
    v198 = _swiftEmptyArrayStorage;
    goto LABEL_8;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    (*(v21 + 96))(v24, v20);
    v82 = sub_10028088C(&qword_100974E88, &unk_100808F30);
    v198 = *(v24 + *(v82 + 48));
    v83 = v40;
    v84 = *(v82 + 80);
    v85 = v197;
    v86 = v192;
    v87 = v200;
    (*(v197 + 32))(v192, v24, v200);
    v88 = v193;
    SFAirDropReceive.ItemDestination.url.getter();
    v89 = v209;
    sub_100406854(v209);
    v199 = 1;
    v83(v88, 0, 1, v39);
    sub_1003332E8(v88, v89);
    (*(v85 + 8))(v86, v87);
    v90 = type metadata accessor for SFAirDrop.DeclineAction();
LABEL_30:
    (*(*(v90 - 8) + 8))(v42 + v84, v90);
    v200 = 0;
    v45 = 0;
    v46 = 0;
    v197 = 5;
    goto LABEL_8;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:) || v43 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:))
  {
    (*(v21 + 96))(v24, v20);
    v91 = sub_10028088C(&qword_100974E80, &qword_100808F40);
    v198 = *(v24 + *(v91 + 48));
    v92 = v40;
    v84 = *(v91 + 64);
    v93 = v197;
    v94 = v192;
    v95 = v200;
    (*(v197 + 32))(v192, v24, v200);
    v96 = v193;
    SFAirDropReceive.ItemDestination.url.getter();
    v97 = v209;
    sub_100406854(v209);
    v199 = 1;
    v92(v96, 0, 1, v39);
    sub_1003332E8(v96, v97);
    (*(v93 + 8))(v94, v95);
    v90 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    goto LABEL_30;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
  {
    (*(v21 + 96))(v24, v20);
    v198 = *(v24 + *(sub_10028088C(&qword_100974E78, &qword_1007F82D8) + 48));
    v98 = v197;
    v99 = v192;
    v100 = v200;
    (*(v197 + 32))(v192, v24, v200);
    v101 = v193;
    SFAirDropReceive.ItemDestination.url.getter();
    v102 = v40;
    v103 = v209;
    sub_100406854(v209);
    v199 = 1;
    v102(v101, 0, 1, v39);
    sub_1003332E8(v101, v103);
    (*(v98 + 8))(v99, v100);
    v200 = 0;
    v45 = 0;
    v46 = 0;
    v197 = 6;
    goto LABEL_8;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v21 + 96))(v24, v20);
    v104 = v40;
    v105 = sub_10028088C(&unk_10097C670, &qword_100805110);
    v106 = *(v24 + v105[12]);

    v198 = *(v24 + v105[16]);
    v107 = v105[20];
    v108 = v197;
    v109 = v192;
    v110 = v200;
    (*(v197 + 32))(v192, v24, v200);
    v111 = v193;
    SFAirDropReceive.ItemDestination.url.getter();
    v112 = v209;
    sub_100406854(v209);
    v199 = 1;
    v104(v111, 0, 1, v39);
    sub_1003332E8(v111, v112);
    (*(v108 + 8))(v109, v110);
    v113 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v113 - 8) + 8))(v42 + v107, v113);
    v200 = 0;
    v45 = 0;
    v46 = 0;
    v197 = 7;
    goto LABEL_8;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
  {
    (*(v21 + 96))(v24, v20);
    v114 = v40;
    v115 = sub_10028088C(&unk_10097C670, &qword_100805110);
    v116 = *(v24 + v115[12]);

    v198 = *(v24 + v115[16]);
    v117 = v197;
    (*(v197 + 32))(v18, v24, v200);
    v118 = v193;
    SFAirDropReceive.ItemDestination.url.getter();
    v119 = v209;
    sub_100406854(v209);
    v114(v118, 0, 1, v39);
    sub_1003332E8(v118, v119);
    v120 = String._bridgeToObjectiveC()();
    v121 = SFLocalizedStringForKey();

    if (v121)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v122;
    }

    else
    {
      v45 = 0;
    }

    v50 = v207;
    v138 = v115[20];
    (*(v117 + 8))(v18, v200);
    v139 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v139 - 8) + 8))(v42 + v138, v139);
    v46 = 0;
    v199 = 1;
    v200 = 0;
    v197 = 7;
LABEL_9:
    v51 = v201;
    SFAirDropReceive.Transfer.id.getter();
    SFAirDrop.TransferIdentifier.stringValue.getter();
    (*(v202 + 8))(v51, v203);
    v52 = String._bridgeToObjectiveC()();

    if (v46)
    {
      v53 = _convertErrorToNSError(_:)();
    }

    else
    {
      v53 = 0;
    }

    v54 = v208;
    sub_100333278(v209, v50);
    v56 = v39;
    if ((*(v54 + 48))(v50, 1, v39) == 1)
    {
      v57 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v55);
      v57 = v58;
      (*(v54 + 8))(v50, v56);
    }

    v59 = String._bridgeToObjectiveC()();

    if (v45)
    {
      v60 = String._bridgeToObjectiveC()();
    }

    else
    {
      v60 = 0;
    }

    v61 = v204;
    SFAirDropReceive.Transfer.askRequest.getter();
    v62 = SFAirDropReceive.AskRequest.urlItems.getter();
    (*(v205 + 8))(v61, v206);
    v63 = *(v62 + 16);
    if (v63)
    {
      v64 = sub_10028F660(*(v62 + 16), 0);
      v65 = sub_100291948(&v213, &v64[(*(v208 + 80) + 32) & ~*(v208 + 80)], v63, v62);
      sub_100027D64();
      if (v65 == v63)
      {
LABEL_22:
        v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v213 = v198;
        sub_1004038D8(v64, sub_10028E2D4, &type metadata accessor for URL);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v68 = v194;
        v69 = [v66 initWithIdentifier:v52 metaData:v194 userResponse:v199 transferState:v197 failureReason:v200 error:v53 customDestinationURL:v57 contentsTitle:v59 contentsDescription:v60 selectedAction:0 possibleActions:0 cancelAction:0 completedURLs:isa];

        (*(v195 + 8))(v210, v196);
        sub_100406854(v209);
        return v69;
      }

      __break(1u);
    }

    v64 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.opening(_:))
  {
    (*(v21 + 96))(v24, v20);
    v123 = v40;
    v124 = sub_10028088C(&unk_100974E60, &qword_100808EC0);
    v125 = *(v24 + *(v124 + 48));

    v198 = *(v24 + *(v124 + 64));
    v126 = v197;
    v127 = v192;
    v128 = v200;
    (*(v197 + 32))(v192, v24, v200);
    v129 = v193;
    SFAirDropReceive.ItemDestination.url.getter();
    v130 = v209;
    sub_100406854(v209);
    v199 = 1;
    v123(v129, 0, 1, v39);
    sub_1003332E8(v129, v130);
    (*(v126 + 8))(v127, v128);
LABEL_40:
    v200 = 0;
    v45 = 0;
    v46 = 0;
LABEL_50:
    v197 = 8;
    goto LABEL_8;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
  {
    v131 = v209;
    sub_100406854(v209);
    (*(v21 + 96))(v24, v20);
    v132 = sub_10028088C(&unk_10097E9C0, &unk_100808DC0);
    v133 = v40;
    v134 = *(v132 + 48);
    v199 = 1;
    v133(v131, 1, 1, v39);
    v135 = &qword_100974E70;
    v136 = &qword_1007FE3F0;
LABEL_43:
    v137 = sub_10028088C(v135, v136);
    (*(*(v137 - 8) + 8))(v24 + v134, v137);
LABEL_48:
    v142 = type metadata accessor for SFAirDrop.ContactInfo();
    (*(*(v142 - 8) + 8))(v24, v142);
LABEL_49:
    v200 = 0;
    v45 = 0;
    v46 = 0;
    v198 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.importingReceivedContact(_:))
  {
    v140 = v40;
    v141 = v209;
    sub_100406854(v209);
    (*(v21 + 96))(v24, v20);
    v199 = 1;
    v140(v141, 1, 1, v39);
    goto LABEL_48;
  }

  v186 = v40;
  if (v43 == enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
  {
    v143 = v209;
    sub_100406854(v209);
    (*(v21 + 96))(v24, v20);
    v134 = *(sub_10028088C(&qword_10097C658, &unk_1008042B0) + 48);
    v199 = 1;
    v186(v143, 1, 1, v39);
    v135 = &unk_10097C660;
    v136 = &unk_10080D3E0;
    goto LABEL_43;
  }

  v185 = v39;
  if (v43 == enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:))
  {
    v144 = v209;
    sub_100406854(v209);
    (*(v21 + 96))(v24, v20);
    v145 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
    v199 = 1;
    v39 = v185;
    v186(v144, 1, 1, v185);
    v146 = type metadata accessor for SFAirDrop.ContactRequest();
    v147 = *(*(v146 - 8) + 8);
    v147(v24 + v145, v146);
    v147(v24, v146);
    goto LABEL_49;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    (*(v21 + 96))(v24, v20);
    v148 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
    v149 = v148[12];
    v150 = *(v24 + v148[16] + 8);

    v151 = *(v24 + v148[20]);

    v198 = *(v24 + v148[24]);
    v152 = *(v24 + v148[28]);

    v153 = v197;
    v154 = v24 + v149;
    v155 = v192;
    v156 = v200;
    (*(v197 + 32))(v192, v154, v200);
    v157 = v193;
    SFAirDropReceive.ItemDestination.url.getter();
    v158 = v209;
    sub_100406854(v209);
    v199 = 1;
    v39 = v185;
    v186(v157, 0, 1, v185);
    sub_1003332E8(v157, v158);
    (*(v153 + 8))(v155, v156);
    v159 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    (*(*(v159 - 8) + 8))(v24, v159);
    goto LABEL_40;
  }

  if (v43 == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    (*(v21 + 96))(v24, v20);
    v160 = sub_10028088C(&qword_10097A670, &unk_100804290);
    v162 = v198;
    v161 = v199;
    v163 = v191;
    (*(v198 + 4))(v191, v24 + *(v160 + 48), v199);
    sub_1004068BC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    v46 = swift_allocError();
    v164 = *(v162 + 2);
    v164(v165, v163, v161);
    v200 = SFAirDropReceive.Failure.legacyFailureReason.getter();
    v166 = v190;
    v164(v190, v163, v161);
    v167 = (*(v162 + 11))(v166, v161);
    if (v167 == enum case for SFAirDropReceive.Failure.unsupportedType(_:))
    {
      v168 = v198;
      v169 = v199;
      v170 = v190;
      (*(v198 + 12))(v190, v199);
      v171 = *(v170 + 1);

      v172 = *(sub_10028088C(&unk_10097C640, &unk_1008012A8) + 48);
      v45 = 0x800000010078FB40;
      (*(v168 + 1))(v191, v169);
      (*(v208 + 8))(&v170[v172], v185);
LABEL_60:
      v199 = 2;
      v173 = 9;
LABEL_76:
      v197 = v173;
LABEL_77:
      v183 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      (*(*(v183 - 8) + 8))(v42, v183);
      goto LABEL_78;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.unexpected(_:))
    {
      v174 = v198;
      v175 = v190;
      (*(v198 + 12))(v190, v199);
      v176 = v188;
      v177 = v187;
      v178 = v189;
      (*(v188 + 32))(v187, v175, v189);
      v213 = 0;
      v214 = 0xE000000000000000;
      v179._countAndFlagsBits = 0x203A64656C696146;
      v179._object = 0xE800000000000000;
      String.append(_:)(v179);
      v211 = CodableError.localizedDescription.getter();
      v212 = v180;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();

      v45 = v214;
      (*(v176 + 8))(v177, v178);
      (*(v174 + 1))(v191, v199);
      v199 = 0;
      v173 = 9;
      goto LABEL_76;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.declined(_:))
    {
      goto LABEL_71;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.askDismissed(_:))
    {
      (*(v198 + 1))(v191, v199);
      v45 = 0xED00006465737369;
      v182 = 3;
      goto LABEL_74;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.senderCancelled(_:))
    {
      (*(v198 + 1))(v191, v199);
      v199 = 0;
      v45 = 0xEF64656C65636E61;
      v173 = 3;
      goto LABEL_76;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:))
    {
LABEL_71:
      (*(v198 + 1))(v191, v199);
      v45 = 0xE800000000000000;
      v182 = 2;
LABEL_74:
      v199 = v182;
LABEL_75:
      v173 = 8;
      goto LABEL_76;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.mixedTypes(_:))
    {
      (*(v198 + 1))(v191, v199);
      v45 = 0xEB00000000736570;
      goto LABEL_60;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:))
    {
      v45 = 0x800000010078FB20;
      (*(v198 + 1))(v191, v199);
      v199 = 0;
      v197 = 9;
      goto LABEL_77;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.missingOwnContact(_:))
    {
      v45 = 0x800000010078FB00;
      (*(v198 + 1))(v191, v199);
      v199 = 0;
      v173 = 9;
      goto LABEL_76;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.streamError(_:))
    {
      (*(v198 + 1))(v191, v199);
      v199 = 0;
      v45 = 0xEC000000726F7272;
      v173 = 9;
      goto LABEL_76;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {
      (*(v198 + 1))(v191, v199);
      v45 = 0xEF64656C646E6168;
      goto LABEL_60;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.incompleteTransfer(_:))
    {
      v45 = 0x800000010078FB60;
      (*(v198 + 1))(v191, v199);
      goto LABEL_60;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.badRequest(_:))
    {
      (*(v198 + 1))(v191, v199);
      v199 = 0;
      v45 = 0xEB00000000747365;
      v173 = 9;
      goto LABEL_76;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.moveToAppFailed(_:))
    {
      v45 = 0x800000010078FAD0;
      (*(v198 + 1))(v191, v199);
      v199 = 0;
      goto LABEL_75;
    }

    if (v167 == enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
    {
      v45 = 0x800000010078FAB0;
      (*(v198 + 1))(v191, v199);
      v199 = 0;
      goto LABEL_75;
    }
  }

  else
  {
    if (v43 == enum case for SFAirDropReceive.Transfer.State.legacyTransferState(_:))
    {
      (*(v21 + 96))(v24, v20);
      v199 = 0;
      v200 = 0;
      v45 = 0;
      v46 = 0;
      v197 = *v24;
LABEL_78:
      v198 = _swiftEmptyArrayStorage;
LABEL_79:
      v39 = v185;
      goto LABEL_8;
    }

    v200 = 0;
    v197 = 1;
    v198 = _swiftEmptyArrayStorage;
    if (v43 == enum case for SFAirDropReceive.Transfer.State.created(_:) || v43 == enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:))
    {
      v46 = v200;
      v199 = v200;
      v45 = v200;
      goto LABEL_79;
    }

    v46 = v200;
    v199 = v200;
    v45 = v200;
    v39 = v185;
    v50 = v207;
    if (v43 == enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
    {
      goto LABEL_9;
    }

    if (v43 == enum case for SFAirDropReceive.Transfer.State.waitingForContactExchangeRequest(_:))
    {
      v181 = v209;
      sub_100406854(v209);
      v199 = 1;
      v39 = v185;
      v186(v181, 1, 1, v185);
      goto LABEL_49;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100405F44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100406904(&unk_10097C6A0, &qword_10097C698, &qword_1008012C0);
          for (i = 0; i != v6; ++i)
          {
            sub_10028088C(&qword_10097C698, &qword_1008012C0);
            v9 = sub_1004065BC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10028088C(&qword_10097C690, &qword_1008012B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004060E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100406904(&qword_10097C6F8, &qword_10097C6F0, &qword_1008012D8);
          for (i = 0; i != v6; ++i)
          {
            sub_10028088C(&qword_10097C6F0, &qword_1008012D8);
            v9 = sub_100406644(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000276B4(0, &unk_100977380, SFDevice_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100406280(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100406904(&unk_10097C6C0, &qword_10097C6B8, &qword_1008012C8);
          for (i = 0; i != v6; ++i)
          {
            sub_10028088C(&qword_10097C6B8, &qword_1008012C8);
            v9 = sub_1004066C4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10028088C(&unk_10097A940, &unk_100807F40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10040641C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100406904(&unk_10097C6E0, &qword_10097C6D8, &qword_1008012D0);
          for (i = 0; i != v6; ++i)
          {
            sub_10028088C(&qword_10097C6D8, &qword_1008012D0);
            v9 = sub_100406744(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000276B4(0, &qword_10097C6D0, PHMediaFormatConversionDestination_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004065BC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_10040663C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100406644(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10040695C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004066C4(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_100406958;
  }

  __break(1u);
  return result;
}

void (*sub_100406744(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1004067C4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004067CC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_10040684C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100406854(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004068BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100406904(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100406964()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C700);
  v1 = sub_10000C4AC(v0, qword_10097C700);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100406A2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_allEndpoints) = _swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_bonjourEndpoints) = _swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_applicationServiceEndpoints) = _swiftEmptySetSingleton;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  (*(v16 + 56))(v14, 1, 1, v15);

  sub_10062E9D8(v14, a1, a2, v19);
  v20 = v14;
  v21 = v15;
  sub_100005508(v20, &unk_100976120, &qword_1007F9260);
  (*(v16 + 16))(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_connectableUUID, v19, v15);
  *v10 = nw_endpoint_create_application_service();
  (*(v7 + 104))(v10, enum case for NWEndpoint.opaque(_:), v6);
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_displayEndpoint, v10, v6);
  v22 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_contactID);
  *v22 = a1;
  v22[1] = a2;

  sub_10054141C(8);

  v23 = static String._fromSubstring(_:)();
  v25 = v24;

  v26 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier);
  *v26 = v23;
  v26[1] = v25;
  if (qword_100973808 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_10097C700);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v30 = 136315138;
    v32 = *(v3 + 16);
    v33 = *(v3 + 24);

    v34 = sub_10000C4E4(v32, v33, &v36);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Creating Person %s", v30, 0xCu);
    sub_10000C60C(v31);
  }

  (*(v16 + 8))(v19, v21);
  return v3;
}

uint64_t sub_100406EAC()
{
  v1 = v0;
  _StringGuts.grow(_:)(48);

  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier);
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier + 8);

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6F6A6E6F42202D20;
  v5._object = 0xEC000000203A7275;
  String.append(_:)(v5);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_bonjourEndpoints;
  swift_beginAccess();
  v14 = *(*(v1 + v6) + 16);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._object = 0x800000010078FC60;
  v8._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v8);
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_applicationServiceEndpoints;
  swift_beginAccess();
  v13 = *(*(v1 + v9) + 16);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0x286E6F73726550;
}

uint64_t sub_100407048()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDrop.TXTRecord();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v50 - v14;
  v50 = sub_100406EAC();
  v17 = v16;
  result = NWEndpoint.nw.getter();
  v53 = result;
  if (result)
  {
    v52 = v7;
    v19 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_allEndpoints;
    swift_beginAccess();
    v20 = *(v1 + v19);

    sub_1002FB3B4(v21, v15);

    v22 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_100005508(v15, &qword_1009763E0, &qword_1007F95D0);
    }

    else
    {
      sub_10032EA74();
      v24 = v23;
      sub_1002F96B0(v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (v24)
      {
        String.utf8CString.getter();

        nw_endpoint_set_contact_id();
      }
    }

    (*(v3 + 104))(v6, enum case for SFAirDrop.DeviceRelationship.contact(_:), v2);
    SFAirDrop.TXTRecord.init(deviceRelationship:)();
    SFAirDrop.TXTRecord.addToEndpoint(_:)();
    v25 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_contactID);
    v26 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_contactID + 8);

    sub_10054141C(8);

    v27 = static String._fromSubstring(_:)();
    v29 = v28;

    v55 = v27;
    v56 = v29;
    v30._countAndFlagsBits = 58;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v57 = v55;
    v58 = v56;
    v31 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_applicationServiceEndpoints;
    swift_beginAccess();
    if (*(*(v1 + v31) + 16))
    {
      v32._countAndFlagsBits = 97;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
    }

    v51 = v8;
    v33 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_bonjourEndpoints;
    swift_beginAccess();
    if (*(*(v1 + v33) + 16))
    {
      v34._countAndFlagsBits = 98;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
    }

    v35._countAndFlagsBits = 99;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v37 = v57;
    v36 = v58;
    v38 = (v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier);
    v39 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier + 8);
    *v38 = v57;
    v38[1] = v36;

    v40 = sub_100406EAC();
    v42 = v41;
    if (qword_100973808 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000C4AC(v43, qword_10097C700);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v46 = 136315651;
      v47 = sub_10000C4E4(v37, v36, &v54);

      *(v46 + 4) = v47;
      *(v46 + 12) = 2081;
      v48 = sub_10000C4E4(v50, v17, &v54);

      *(v46 + 14) = v48;
      *(v46 + 22) = 2081;
      v49 = sub_10000C4E4(v40, v42, &v54);

      *(v46 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v44, v45, "DiscoveredPerson Updated %s [%{private}s] -> [%{private}s]", v46, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (*(v51 + 8))(v11, v52);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100407640()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_connectableUUID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_displayEndpoint;
  v5 = type metadata accessor for NWEndpoint();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_contactID + 8);

  v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_allEndpoints);

  v8 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_bonjourEndpoints);

  v9 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_applicationServiceEndpoints);

  v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_debugIdentifier + 8);

  return v0;
}

uint64_t sub_100407740()
{
  sub_100407640();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropDiscoveredPerson()
{
  result = qword_10097C760;
  if (!qword_10097C760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004077EC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NWEndpoint();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1004078D8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_10040792C()
{
  v1 = v0;
  v40 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v2 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_allEndpoints;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 56);
  v20 = (v17 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v22 = 0;
  LOBYTE(v23) = 0;
  v41 = v12;
  while (v19)
  {
    v26 = v22;
LABEL_11:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    sub_1004096A8(*(v16 + 48) + *(v8 + 72) * (v27 | (v26 << 6)), v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (v23)
    {
      v24 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v25 = v14;
      goto LABEL_5;
    }

    sub_1004096A8(v14, v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v25 = v12;
      }

      else
      {
        sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v25 = v12;
        v24 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

LABEL_5:
      result = sub_1002F96B0(v25, v24);
      LOBYTE(v23) = 1;
      v22 = v26;
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v32 = v12;
      v33 = v8;
      v34 = v7;
      v35 = v39;
      sub_100409620(v32, v39, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      LOBYTE(v23) = *(v35 + *(v40 + 60));
      v36 = v35;
      v7 = v34;
      v8 = v33;
      v12 = v41;
      result = sub_1002F96B0(v36, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v22 = v26;
    }

    else
    {
      v29 = v12;
      v30 = v38;
      sub_100409620(v29, v38, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if ((sub_10032C7CC() & 0x4000000000) != 0)
      {
        sub_1002F96B0(v30, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
        LOBYTE(v23) = 1;
      }

      else
      {
        v31 = sub_10032C7CC();
        sub_1002F96B0(v30, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v23 = (v31 >> 39) & 1;
      }

      v22 = v26;
      v12 = v41;
    }
  }

  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v20)
    {

      return v23 & 1;
    }

    v19 = *(v16 + 56 + 8 * v26);
    ++v22;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100407D98(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v7 = *(*(sub_10028088C(&qword_10097C830, &qword_1008013F8) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v2[27] = v8;
  v9 = *(v8 - 8);
  v2[28] = v9;
  v10 = *(v9 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[34] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;

  return _swift_task_switch(sub_100407FEC, v13, 0);
}

uint64_t sub_100407FEC()
{
  v78 = v0;
  v1 = v0[34];
  sub_1004096A8(v0[17], v0[37], type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100409620(v0[37], v0[21], type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (qword_100973808 != -1)
      {
        swift_once();
      }

      v17 = v0[18];
      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_10097C700);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = v0[18];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v77[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_10000C4E4(*(v21 + 16), *(v21 + 24), v77);
        _os_log_impl(&_mh_execute_header, v19, v20, "Person: %s adding bonjour endpoint", v22, 0xCu);
        sub_10000C60C(v23);
      }

      v25 = v0[20];
      v24 = v0[21];
      v26 = v0[19];
      sub_1004096A8(v24, v26, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      swift_beginAccess();
      sub_10046F45C(v25, v26);
      swift_endAccess();
      v27 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v3 = v0[33];
      v4 = v0[27];
      v5 = v0[28];
      v6 = v0[26];
      v7 = v0[18];
      sub_100409620(v0[37], v3, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_applicationServiceEndpoints;
      swift_beginAccess();
      v9 = *(v7 + v8);
      *(swift_task_alloc() + 16) = v3;

      sub_1002CC86C(sub_100409688, v9, v6);

      if ((*(v5 + 48))(v6, 1, v4) == 1)
      {
        sub_100005508(v0[26], &qword_10097C830, &qword_1008013F8);
      }

      else
      {
        sub_100409620(v0[26], v0[32], type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        if (qword_100973808 != -1)
        {
          swift_once();
        }

        v32 = v0[31];
        v33 = v0[32];
        v34 = type metadata accessor for Logger();
        sub_10000C4AC(v34, qword_10097C700);
        sub_1004096A8(v33, v32, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        v37 = os_log_type_enabled(v35, v36);
        v38 = v0[31];
        if (v37)
        {
          v39 = v0[23];
          v40 = v0[24];
          v41 = v0[22];
          v42 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v77[0] = v74;
          *v42 = 136315138;
          v72 = v36;
          sub_10032C0AC();
          sub_100409710(&qword_100978CE0, &type metadata accessor for UUID);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v44;
          (*(v39 + 8))(v40, v41);
          sub_1002F96B0(v38, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          v46 = sub_10000C4E4(v43, v45, v77);

          *(v42 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v35, v72, "Removing duplicate/stale endpoint %s", v42, 0xCu);
          sub_10000C60C(v74);
        }

        else
        {

          sub_1002F96B0(v38, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        }

        v47 = v0[32];
        v48 = v0[25];
        swift_beginAccess();
        sub_10036E504(v48);
        swift_endAccess();
        sub_100005508(v48, &qword_10097C830, &qword_1008013F8);
        sub_1002F96B0(v47, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      }

      if (qword_100973808 != -1)
      {
        swift_once();
      }

      v49 = v0[18];
      v50 = type metadata accessor for Logger();
      sub_10000C4AC(v50, qword_10097C700);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = v0[18];
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v77[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_10000C4E4(*(v53 + 16), *(v53 + 24), v77);
        _os_log_impl(&_mh_execute_header, v51, v52, "Person: %s adding application service endpoint", v54, 0xCu);
        sub_10000C60C(v55);
      }

      v24 = v0[33];
      v56 = v0[29];
      v25 = v0[30];
      sub_1004096A8(v24, v56, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      swift_beginAccess();
      sub_10046F69C(v25, v56);
      swift_endAccess();
      v27 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    v57 = v27;
    sub_1002F96B0(v25, v27);
    v16 = v24;
    v15 = v57;
LABEL_33:
    sub_1002F96B0(v16, v15);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (qword_100973808 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_10097C700);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "NearField endpoints not applicable for SDAirDropDiscoveredPerson", v13, 2u);
    }

    v14 = v0[37];

    v15 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v16 = v14;
    goto LABEL_33;
  }

  sub_1002F96B0(v0[37], type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (qword_100973808 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_10097C700);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Classroom endpoints not applicable for SDAirDropDiscoveredPerson", v31, 2u);
  }

LABEL_34:
  v58 = v0[36];
  v59 = v0[37];
  v60 = v0[35];
  v61 = v0[32];
  v62 = v0[33];
  v64 = v0[30];
  v63 = v0[31];
  v68 = v0[29];
  v69 = v0[26];
  v70 = v0[25];
  v71 = v0[24];
  v73 = v0[21];
  v75 = v0[20];
  v65 = v0[18];
  v76 = v0[19];
  sub_1004096A8(v0[17], v60, type metadata accessor for SDAirDropDiscoveredEndpoint);
  swift_beginAccess();
  sub_10046DE64(v58, v60);
  swift_endAccess();
  sub_1002F96B0(v58, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_100407048();

  v66 = v0[1];

  return v66();
}

uint64_t sub_100408A08()
{
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_id = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (device_id)
    {
      v2 = String.init(cString:)();
      device_id = v3;
    }

    else
    {
      v2 = 0;
    }

    result = NWEndpoint.nw.getter();
    if (result)
    {
      v4 = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = String.init(cString:)();
        if (device_id)
        {
          if (v6)
          {
            if (v2 == v5 && device_id == v6)
            {

              v7 = 1;
            }

            else
            {
              v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            goto LABEL_18;
          }

          goto LABEL_13;
        }

        if (v6)
        {
          v7 = 0;
          goto LABEL_18;
        }
      }

      else if (device_id)
      {
LABEL_13:
        v7 = 0;
LABEL_18:

        return v7 & 1;
      }

      v7 = 1;
      return v7 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100408B30(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = *(*(sub_10028088C(&qword_10097C828, &qword_1008013F0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_10097C830, &qword_1008013F8) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[18] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;

  return _swift_task_switch(sub_100408CFC, v10, 0);
}

uint64_t sub_100408CFC()
{
  v1 = v0[18];
  sub_1004096A8(v0[11], v0[19], type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100409620(v0[19], v0[15], type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (qword_100973808 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_10097C700);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Person: Removing bonjour endpoint", v18, 2u);
      }

      v19 = v0[14];
      v7 = v0[15];
      v20 = v0[12];

      swift_beginAccess();
      sub_10036E9BC(v7, v19);
      swift_endAccess();
      sub_100005508(v19, &qword_10097C828, &qword_1008013F0);
      v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      sub_100409620(v0[19], v0[17], type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (qword_100973808 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000C4AC(v3, qword_10097C700);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Person: Removing application service endpoint", v6, 2u);
      }

      v8 = v0[16];
      v7 = v0[17];
      v9 = v0[12];

      swift_beginAccess();
      sub_10036E504(v8);
      swift_endAccess();
      sub_100005508(v8, &qword_10097C830, &qword_1008013F8);
      v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

LABEL_19:
    sub_1002F96B0(v7, v10);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (qword_100973808 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097C700);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "NearField endpoints not applicable for SDAirDropDiscoveredPerson", v14, 2u);
    }

    v7 = v0[19];

    v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    goto LABEL_19;
  }

  sub_1002F96B0(v0[19], type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (qword_100973808 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_10097C700);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Classroom endpoints not applicable for SDAirDropDiscoveredPerson", v24, 2u);
  }

LABEL_25:
  v25 = v0[19];
  v27 = v0[16];
  v26 = v0[17];
  v29 = v0[14];
  v28 = v0[15];
  v31 = v0[12];
  v30 = v0[13];
  v32 = v0[11];
  swift_beginAccess();
  sub_10036E788(v32, v30);
  swift_endAccess();
  sub_100005508(v30, &qword_1009763E0, &qword_1007F95D0);
  sub_100407048();

  v33 = v0[1];

  return v33();
}

uint64_t sub_100409270()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1004092EC@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t sub_100409368()
{
  *(v1 + 40) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_100409404, v2, 0);
}

uint64_t sub_100409404()
{
  v1 = **(v0 + 40);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_allEndpoints;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_100409498(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_100407D98(a1);
}

uint64_t sub_100409530(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_100408B30(a1);
}

uint64_t sub_1004095C8(uint64_t a1)
{
  result = sub_100409710(&qword_10097C820, type metadata accessor for SDAirDropDiscoveredPerson);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100409620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004096A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100409710(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100409758()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener;
  if (!*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener])
  {
    v2 = v0;
    if (qword_100973810 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097C838);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting AirDrop Application Service Server", v6, 2u);
    }

    type metadata accessor for NWListener();
    sub_100636164(0);
    v7 = NWListener.__allocating_init(applicationService:using:)();
    v8 = *&v2[v1];
    *&v2[v1] = v7;

    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = v7;

    v10 = v2;
    NWListener.stateUpdateHandler.setter();
    *(swift_allocObject() + 16) = v10;
    v11 = v10;
    NWListener.newConnectionHandler.setter();
    v12 = *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_queue];
    NWListener.start(queue:)();
  }
}

uint64_t sub_1004099C4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C838);
  v1 = sub_10000C4AC(v0, qword_10097C838);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100409A8C(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v10;
  (*(v3 + 32))(&v13[v12], &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *&v13[(v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v11;
  sub_1002B3398(0, 0, v8, &unk_100801478, v13);
}

uint64_t sub_100409CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  return _swift_task_switch(sub_100409CEC, 0, 0);
}

uint64_t sub_100409CEC()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 88);
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    *(v0 + 104) = v4;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_1003731E0;
    v6 = *(v0 + 80);

    return sub_100409E14(v6, v4);
  }

  else
  {
    **(v0 + 64) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100409E14(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for NWError();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for NWListener.State();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v3[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_100409F94, v10, 0);
}

uint64_t sub_100409F94()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 16))(v1, v0[5], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for NWListener.State.waiting(_:))
  {
    v5 = v0[16];
    v6 = v0[13];
    v7 = v0[8];
    v8 = v0[9];
    (*(v0[15] + 96))(v5, v0[14]);
    (*(v8 + 32))(v6, v5, v7);
    if (qword_100973810 != -1)
    {
      swift_once();
    }

    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[8];
    v12 = v0[9];
    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097C838);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[8];
    v21 = v0[9];
    if (v17)
    {
      v84 = v14;
      v22 = swift_slowAlloc();
      v85 = v18;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_10040BC64(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v84(v24, v19, v20);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v21 + 8);
      v26(v19, v20);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "AirDrop Application Service server waiting with error %@", v22, 0xCu);
      sub_10028924C(v23);

      v26(v85, v20);
    }

    else
    {

      v47 = *(v21 + 8);
      v47(v19, v20);
      v47(v18, v20);
    }

    goto LABEL_44;
  }

  if (v4 != enum case for NWListener.State.failed(_:))
  {
    if (v4 == enum case for NWListener.State.setup(_:))
    {
      if (qword_100973810 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000C4AC(v48, qword_10097C838);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_18;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "AirDrop Application Service server setting up";
    }

    else
    {
      if (v4 == enum case for NWListener.State.ready(_:))
      {
        if (qword_100973810 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_10000C4AC(v58, qword_10097C838);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "AirDrop Application Service server ready", v61, 2u);
        }

        v62 = v0[7];

        v63 = String._bridgeToObjectiveC()();
        v64 = getpid();
        sub_100086D20(@"ApplicationServiceAdvertise", @"Start", v63, v64);

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v66 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors;
          v67 = Strong;
          swift_beginAccess();
          v68 = *(v67 + v66);
          *(v67 + v66) = &_swiftEmptySetSingleton;

          swift_unknownObjectRelease();
        }

        goto LABEL_44;
      }

      if (v4 != enum case for NWListener.State.cancelled(_:))
      {
        if (qword_100973810 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_10000C4AC(v71, qword_10097C838);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "Unknown AirDrop server state", v74, 2u);
        }

        v76 = v0[15];
        v75 = v0[16];
        v77 = v0[14];

        (*(v76 + 8))(v75, v77);
        goto LABEL_44;
      }

      if (qword_100973810 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_10000C4AC(v70, qword_10097C838);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_18;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "AirDrop Application Service server stopped";
    }

    _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

LABEL_18:

LABEL_44:
    v78 = v0[16];
    v79 = v0[12];
    v80 = v0[13];
    v82 = v0[10];
    v81 = v0[11];

    v83 = v0[1];

    return v83();
  }

  v27 = v0[16];
  v28 = v0[11];
  v29 = v0[8];
  v30 = v0[9];
  (*(v0[15] + 96))(v27, v0[14]);
  (*(v30 + 32))(v28, v27, v29);
  if (qword_100973810 != -1)
  {
    swift_once();
  }

  v31 = v0[10];
  v32 = v0[11];
  v33 = v0[8];
  v34 = v0[9];
  v35 = type metadata accessor for Logger();
  sub_10000C4AC(v35, qword_10097C838);
  v36 = *(v34 + 16);
  v36(v31, v32, v33);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v39 = os_log_type_enabled(v37, v38);
  v41 = v0[9];
  v40 = v0[10];
  v42 = v0[8];
  if (v39)
  {
    v43 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v43 = 138412290;
    sub_10040BC64(&qword_100977BF8, &type metadata accessor for NWError);
    swift_allocError();
    v36(v44, v40, v42);
    v45 = _swift_stdlib_bridgeErrorToNSError();
    v46 = *(v41 + 8);
    v46(v40, v42);
    *(v43 + 4) = v45;
    *v86 = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop Application Service server failed with error %@", v43, 0xCu);
    sub_10028924C(v86);
  }

  else
  {

    v46 = *(v41 + 8);
    v46(v40, v42);
  }

  v0[18] = v46;
  if (v0[6])
  {
    NWListener.cancel()();
  }

  v53 = v0[7];
  v54 = swift_unknownObjectWeakLoadStrong();
  v0[19] = v54;
  if (!v54)
  {
    v69 = v0[9] + 8;
    (v0[18])(v0[11], v0[8]);
    goto LABEL_44;
  }

  v55 = swift_task_alloc();
  v0[20] = v55;
  *v55 = v0;
  v55[1] = sub_10040A960;
  v56 = v0[11];

  return sub_10035E6D4(0, v56);
}

uint64_t sub_10040A960()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10040AA8C, v3, 0);
}

uint64_t sub_10040AA8C()
{
  v1 = *(v0 + 72) + 8;
  (*(v0 + 144))(*(v0 + 88), *(v0 + 64));
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10040AB38(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;

  sub_1002B3398(0, 0, v5, &unk_100801458, v8);
}

uint64_t sub_10040AC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_10040AC90, 0, 0);
}

uint64_t sub_10040AC90()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v3 = static AirDropActor.shared;

    return _swift_task_switch(sub_10040AD8C, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10040AD8C()
{
  v1 = *(v0 + 64);
  sub_10040ADF8(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_10040ADF8(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  sub_100501820();
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_connections;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = qword_1009735E0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v12 = sub_10040BC64(&qword_100977C00, type metadata accessor for AirDropActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v9;
  v13[5] = a1;

  sub_1002B3398(0, 0, v6, &unk_100801468, v13);
}

void sub_10040B044()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener))
  {
    v2 = v0;
    v3 = qword_100973810;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097C838);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Stopping AirDrop Application Service Server", v7, 2u);
    }

    NWListener.cancel()();
    v8 = String._bridgeToObjectiveC()();
    v9 = getpid();
    sub_100086D20(@"ApplicationServiceAdvertise", @"Stop", v8, v9);

    sub_100374AB4();

    v10 = *(v2 + v1);
    *(v2 + v1) = 0;
  }
}

uint64_t sub_10040B1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = type metadata accessor for SDAirDropServerConnection(0);
  v5[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_10040B2AC, v8, 0);
}

uint64_t sub_10040B2AC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = swift_unknownObjectWeakLoadStrong(), *(v0 + 88) = v4, v3, v4))
  {
    v5 = *(v0 + 64);
    **(v0 + 72) = *(v0 + 56);
    swift_storeEnumTagMultiPayload();

    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_10040B3F8;
    v7 = *(v0 + 72);

    return sub_100359E00(v7);
  }

  else
  {
    v9 = *(v0 + 72);
    **(v0 + 40) = 1;

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10040B3F8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  swift_unknownObjectRelease();
  sub_100375730(v4);

  return _swift_task_switch(sub_10040B548, v3, 0);
}

uint64_t sub_10040B548()
{
  v1 = *(v0 + 72);
  **(v0 + 40) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10040B6B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100409A8C(a1);
}

uint64_t sub_10040B6C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10040AC6C(a1, v4, v5, v7, v6);
}

uint64_t sub_10040B784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_10040B1D8(a1, v4, v5, v7, v6);
}

uint64_t sub_10040B844(uint64_t a1)
{
  v4 = *(type metadata accessor for NWListener.State() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_100409CC8(a1, v6, v7, v8, v1 + v5, v9);
}

id sub_10040B974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a4;
  v26 = a3;
  v22 = a1;
  v23 = a2;
  ObjectType = swift_getObjectType();
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v21);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_listener] = 0;
  v4[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_serverType] = 0;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_connections] = _swiftEmptyArrayStorage;
  v14 = &v4[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_delegate];
  *(v14 + 1) = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_queue;
  v19[1] = sub_1002DDC10();
  static DispatchQoS.default.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10040BC64(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_1002808D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v21);
  *&v4[v20] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = v22;
  v15 = v23;
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_deviceStatus] = v22;
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropApplicationServiceServer_sessionLogger] = v15;
  *(v14 + 1) = v25;
  swift_unknownObjectWeakAssign();
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v17 = v16;

  return objc_msgSendSuper2(&v27, "init");
}

uint64_t sub_10040BC64(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10040BCAC()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v6 = *(*(v66 - 1) + 64);
  v7 = __chkstk_darwin(v66);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v64 - v10;
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v65 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v18 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = (&v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v20);
  v25 = &v64 - v24;
  __chkstk_darwin(v23);
  v27 = &v64 - v26;
  sub_1002940CC(v1, &v64 - v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v39 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v40 = v27;
LABEL_19:
      sub_10040C3C0(v40, v39);
      goto LABEL_20;
    }

    sub_10040C358(v27, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v34 = &v5[*(v2 + 28)];
    v31 = *v34;
    v33 = v34[1];

    sub_10040C3C0(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    if (!v33)
    {
      goto LABEL_20;
    }

LABEL_10:
    sub_1002940CC(v1, v25);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10040C358(v25, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v36 = &v9[v66[12]];
      v37 = *v36;
      v38 = v36[1];

      sub_10040C3C0(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v38)
      {

        return v37;
      }
    }

    else
    {
      sub_10040C3C0(v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    type metadata accessor for SDContactStore();
    inited = swift_initStackObject();
    v42 = CNContactStoreMeContactDidChangeNotification;
    v43 = objc_allocWithZone(CNContactStore);
    v64 = v18;
    v44 = v22;
    v45 = v11;
    v46 = v1;
    v47 = v31;
    v48 = v43;
    v49 = CNContactStoreDidChangeNotification;
    v50 = v42;
    v51 = [v48 init];
    *(inited + 32) = v51;
    v52 = v47;
    v1 = v46;
    v11 = v45;
    v22 = v44;
    v53 = sub_1005A09A0(v52, v33);

    if (v53)
    {
      v54 = [v53 displayName];
      if (v54)
      {
        v55 = v54;
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v37;
      }

      v62 = [objc_allocWithZone(CNContactFormatter) init];
      v63 = [v62 stringFromContact:v53];

      if (v63)
      {
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v37;
      }

      return 0;
    }

    goto LABEL_20;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_10040C358(v27, v17, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    result = NWEndpoint.nw.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_34;
    }

    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    if (contact_id)
    {
      v31 = String.init(cString:)();
      v33 = v32;
      sub_10040C3C0(v17, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      goto LABEL_10;
    }

    v39 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v40 = v17;
    goto LABEL_19;
  }

  sub_10040C358(v27, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  v35 = &v11[v66[11]];
  v31 = *v35;
  v33 = v35[1];

  sub_10040C3C0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  if (v33)
  {
    goto LABEL_10;
  }

LABEL_20:
  sub_1002940CC(v1, v22);
  v56 = swift_getEnumCaseMultiPayload();
  if (v56 <= 1)
  {
    if (v56)
    {
      sub_10040C358(v22, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v58 = &v11[v66[9]];
      v37 = *v58;
      v59 = v58[1];

      sub_10040C3C0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    }

    else
    {
      v57 = v65;
      sub_10040C358(v22, v65, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v37 = sub_10032C610();
      sub_10040C3C0(v57, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    }

    return v37;
  }

  if (v56 == 2)
  {
    sub_10040C3C0(v22, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    return 0;
  }

  v60 = *v22;
  result = [*v22 displayName];
  if (result)
  {
    v61 = result;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v37;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_10040C358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10040C3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10040C420()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097C8B0);
  v1 = sub_10000C4AC(v0, qword_10097C8B0);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10040C4E8()
{
  v50 = type metadata accessor for SDTempPairingEndpoint(0);
  v1 = *(v50 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v50);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v50 - v6;
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  v10 = [objc_opt_self() sharedNearbyAgent];
  v11 = [v10 adHocPairedDeviceIdentities];

  if (v11)
  {
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v55 = _swiftEmptyArrayStorage;
  }

  v12 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints);
  v13 = *(v12 + 16);

  v14 = _swiftEmptyArrayStorage;
  v53 = v13;
  if (v13)
  {
    v15 = 0;
    v16 = 0;
    v51 = v7;
    v52 = v1;
    do
    {
      if (v15 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v17 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v18 = *(v1 + 72);
      v19 = sub_100413394(v12 + v17 + v18 * v15, v9);
      __chkstk_darwin(v19);
      *(&v50 - 2) = v9;
      if (sub_100391384(sub_1004133F8, (&v50 - 4), v55))
      {
        sub_10041347C(v9);
      }

      else
      {
        sub_100413418(v9, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FE4C(0, v14[2] + 1, 1);
          v14 = v56;
        }

        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FE4C(v21 > 1, v22 + 1, 1);
          v14 = v56;
        }

        v14[2] = v22 + 1;
        v7 = v51;
        sub_100413418(v51, v14 + v17 + v22 * v18);
        v1 = v52;
      }

      ++v15;
    }

    while (v53 != v15);
  }

  v52 = 0;

  v23 = v14[2];
  if (v23)
  {
    v56 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v23, 0);
    v7 = v56;
    v24 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v25 = *(v1 + 72);
    v26 = v50;
    do
    {
      v27 = v54;
      sub_100413394(v24, v54);
      v28 = (v27 + *(v26 + 20));
      v29 = *v28;
      v30 = v28[1];

      sub_10041347C(v27);
      v56 = v7;
      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_10028FBDC((v31 > 1), v32 + 1, 1);
        v26 = v50;
        v7 = v56;
      }

      *(v7 + 2) = v32 + 1;
      v33 = &v7[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v30;
      v24 += v25;
      --v23;
    }

    while (v23);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v16 = v55;
  v12 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v55 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v35 = 0;
    v36 = v16 & 0xC000000000000001;
    v54 = _swiftEmptyArrayStorage;
LABEL_25:
    v37 = v35;
    while (1)
    {
      if (v36)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v12 + 16))
        {
          goto LABEL_42;
        }

        v38 = *(v16 + 8 * v37 + 32);
      }

      v39 = v38;
      v35 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v40 = [v38 name];
      if (v40)
      {
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v43;

        v44 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_10028E1C8(0, *(v44 + 2) + 1, 1, v44);
        }

        v46 = *(v44 + 2);
        v45 = *(v44 + 3);
        if (v46 >= v45 >> 1)
        {
          v44 = sub_10028E1C8((v45 > 1), v46 + 1, 1, v44);
        }

        *(v44 + 2) = v46 + 1;
        v54 = v44;
        v47 = &v44[16 * v46];
        v48 = v53;
        *(v47 + 4) = v42;
        *(v47 + 5) = v48;
        v16 = v55;
        if (v35 != i)
        {
          goto LABEL_25;
        }

        goto LABEL_45;
      }

      ++v37;
      if (v35 == i)
      {
        goto LABEL_45;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_45:

  v56 = v7;
  sub_100403A1C(v54);
  return v56;
}

uint64_t sub_10040CA24(id *a1, uint64_t a2)
{
  v3 = [*a1 edPKData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = a2 + *(type metadata accessor for SDTempPairingEndpoint(0) + 20);
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_100294008(v10, v9);
      sub_10028BCC0(v5, v7);
      return 1;
    }

    goto LABEL_8;
  }

  if (v9 >> 60 == 15)
  {
LABEL_8:
    sub_100294008(v10, v9);
    sub_10028BCC0(v5, v7);
    sub_10028BCC0(v10, v9);
    return 0;
  }

  sub_100294008(v10, v9);
  sub_100294008(v10, v9);
  sub_1002A9924(v5, v7);
  v12 = sub_100331508(v5, v7, v10, v9);
  sub_10028BCC0(v10, v9);
  sub_100026AC0(v10, v9);
  sub_10028BCC0(v5, v7);
  sub_10028BCC0(v5, v7);
  return v12 & 1;
}

uint64_t sub_10040CB8C()
{
  v1 = type metadata accessor for SDTempPairingEndpoint(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = [objc_opt_self() sharedNearbyAgent];
  v10 = [v9 adHocPairedDeviceIdentities];

  if (v10)
  {
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v11 >> 62))
    {
      goto LABEL_3;
    }

LABEL_16:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_17:

    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 0;
    v25 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
    if (v25)
    {
      v26 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

      v25(v27);

      return sub_100015D04(v25);
    }

    return result;
  }

  v11 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_4:
  v38 = v11;
  v35 = v0;
  v12 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints);
  v13 = *(v12 + 16);

  v37 = v13;
  if (!v13)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_22:

    v28 = v16[2];

    if (v28)
    {
      v29 = v35;
      *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 0;
      v30 = v29 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged;
      v31 = *(v29 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      if (!v31)
      {
        return result;
      }
    }

    else
    {
      v34 = v35;
      *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 2;
      v30 = v34 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged;
      v31 = *(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      if (!v31)
      {
        return result;
      }
    }

    v32 = *(v30 + 8);

    v31(v33);
    return sub_100015D04(v31);
  }

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v36 = v6;
  while (v15 < *(v12 + 16))
  {
    v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v18 = *(v2 + 72);
    v19 = sub_100413394(v12 + v17 + v18 * v15, v8);
    __chkstk_darwin(v19);
    *(&v35 - 2) = v8;
    v20 = sub_1002CCB1C(sub_10041359C, (&v35 - 4), v38);
    if (v20)
    {

      result = sub_10041347C(v8);
    }

    else
    {
      sub_100413418(v8, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10028FE4C(0, v16[2] + 1, 1);
        v16 = v39;
      }

      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_10028FE4C(v22 > 1, v23 + 1, 1);
        v16 = v39;
      }

      v16[2] = v23 + 1;
      v24 = v16 + v17 + v23 * v18;
      v6 = v36;
      result = sub_100413418(v36, v24);
    }

    if (v37 == ++v15)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

id sub_10040CF68(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for NWBrowser.Descriptor();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v30.receiver - v11);
  v13 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged];
  *v13 = 0;
  v13[1] = 0;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState] = 0;
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController;
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  v15 = qword_1009A0CA0;
  *&v2[v14] = qword_1009A0CA0;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_foundDevices] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults] = &_swiftEmptySetSingleton;
  v16 = v15;
  UUID.init()();
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_activeConnections] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier] = &_swiftEmptyDictionarySingleton;
  v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing] = 0;
  v17 = [objc_allocWithZone(RPClient) init];
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_rpClient] = v17;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_queue] = a1;
  *v12 = 0xD000000000000019;
  v12[1] = 0x800000010078FF90;
  (*(v6 + 104))(v12, enum case for NWBrowser.Descriptor.applicationService(_:), v5);
  type metadata accessor for NWParameters();
  v18 = a1;
  static NWParameters.applicationService.getter();
  NWParameters.requiredNetworkAgents.setter();
  (*(v6 + 16))(v10, v12, v5);
  v19 = type metadata accessor for NWBrowser();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = NWBrowser.init(for:using:)();
  (*(v6 + 8))(v12, v5);
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_browser] = v22;
  type metadata accessor for SDTempPairingStatusItemController();
  v23 = swift_allocObject();
  *(v23 + 16) = [objc_allocWithZone(STStatusItemsStatusDomainPublisher) init];
  *(v23 + 24) = 0;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_statusItemController] = v23;
  v30.receiver = v2;
  v30.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v30, "init");
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 defaultCenter];
  [v27 addObserver:v26 selector:"handleRapportIdentitiesChanged" name:off_1009731D0 object:0];

  v28 = [v25 defaultCenter];
  [v28 addObserver:v26 selector:"handleDiscoverableModeChanged" name:@"com.apple.sharingd.DiscoverableModeChanged" object:0];

  return v26;
}

uint64_t sub_10040D338()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097C8B0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting to scan over bluetooth", v10, 2u);
  }

  v11 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_scanningIdentifier, v2);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1005C1F1C(v6, sub_1004135BC, v12);

  (*(v3 + 8))(v6, v2);

  return sub_10040CB8C();
}

void sub_10040D550(void *a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v4 = Strong;
    sub_10040D5DC(a1);
  }

  else
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v4 = v5;
    sub_10040E9A4(a1);
  }
}

void sub_10040D5DC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v160 = &v149[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v161 = type metadata accessor for DispatchQoS();
  v159 = *(v161 - 8);
  v8 = *(v159 + 64);
  __chkstk_darwin(v161);
  v10 = &v149[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchTimeInterval();
  v158 = *(v11 - 8);
  v12 = *(v158 + 64);
  __chkstk_darwin(v11);
  v14 = &v149[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for DispatchTime();
  v162 = *(v15 - 8);
  v16 = *(v162 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v149[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v149[-v20];
  if ([a1 airdropConfigData])
  {
    v22 = [a1 identifier];
    if (!v22)
    {
      return;
    }

    v152 = v10;
    v155 = v5;
    v156 = v4;
    v163 = a1;
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_foundDevices;
    swift_beginAccess();
    v157 = v2;
    v28 = *(v2 + v27);

    v153 = v24;
    v29 = sub_100569230(v24, v26, v28);

    if (v29)
    {
      goto LABEL_4;
    }

    v151 = v26;
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_10097C8B0);
    v31 = v163;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v154 = v15;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v166[0] = v31;
      sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
      v150 = v33;
      v37 = v31;
      v38 = String.init<A>(describing:)();
      v40 = sub_10000C4E4(v38, v39, aBlock);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v150, "Found new PIN pairing device %s", v35, 0xCu);
      sub_10000C60C(v36);
    }

    v41 = v151;
    v2 = v157;
    swift_beginAccess();

    v42 = v153;
    sub_10046DAAC(v166, v153, v41);
    swift_endAccess();

    sub_10040FDA4();
    v43 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_statusItemController);
    sub_1004EA84C(1);
    v151 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_queue);
    static DispatchTime.now()();
    *v14 = 30;
    v44 = v158;
    (*(v158 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v11);
    + infix(_:_:)();
    (*(v44 + 8))(v14, v11);
    v45 = *(v162 + 8);
    v162 += 8;
    v45(v19, v154);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = v42;
    v47[4] = v41;
    aBlock[4] = sub_1004135C4;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DFED0;
    v48 = _Block_copy(aBlock);

    v49 = v152;
    static DispatchQoS.unspecified.getter();
    v166[0] = _swiftEmptyArrayStorage;
    sub_100014374(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    v50 = v160;
    v51 = v156;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v48);
    (*(v155 + 8))(v50, v51);
    (*(v159 + 8))(v49, v161);
    v45(v21, v154);

    a1 = v163;
  }

  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v52 = static NSUserDefaults.airdrop.getter();
  v53 = SFAirDropUserDefaults.askToAirDropEnabled.getter();

  if ((v53 & 1) == 0)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000C4AC(v65, qword_10097C8B0);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_42;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "Ask to AirDrop not enabled";
    goto LABEL_41;
  }

  v54 = [a1 identifier];
  if (!v54)
  {
    return;
  }

  v163 = a1;
  v55 = v54;
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
  swift_beginAccess();
  v60 = *(*(v2 + v59) + 16);
  v162 = v59;
  if (v60)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10000C4AC(v61, qword_10097C8B0);
    v62 = v163;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
  }

  else
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000C4AC(v70, qword_10097C8B0);
    v62 = v163;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
  }

  v71 = v64;

  if (os_log_type_enabled(v63, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v165 = v62;
    v166[0] = v73;
    *v72 = 136315138;
    sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
    v74 = v62;
    v75 = String.init<A>(describing:)();
    v77 = sub_10000C4E4(v75, v76, v166);

    *(v72 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v63, v71, "Found AirDrop device: %s", v72, 0xCu);
    sub_10000C60C(v73);
  }

  v78 = [v163 airdropTempAuthTagData];
  if (v78)
  {
    v79 = v58;
    v80 = v78;
    v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    v84 = [v163 btAddressData];
    if (v84)
    {
      v160 = v56;
      v85 = v79;
      v157 = v2;
      v86 = v84;
      v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = [objc_opt_self() sharedNearbyAgent];
      v91 = v81;
      v161 = v83;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v93 = Data._bridgeToObjectiveC()().super.isa;
      v94 = [v90 isTempAuthTagKnown:isa bluetoothAddressData:v93];

      if (v94)
      {
        v163 = v87;

        if (qword_100973818 != -1)
        {
          swift_once();
        }

        v95 = type metadata accessor for Logger();
        sub_10000C4AC(v95, qword_10097C8B0);
        v96 = v161;
        sub_100294008(v91, v161);
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();
        sub_100026AC0(v91, v96);
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v165 = v100;
          *v99 = 136315138;
          v166[0] = sub_100467BE4(v91, v96);
          sub_10028088C(&unk_100976C20, &unk_1007F9D80);
          sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
          v101 = BidirectionalCollection<>.joined(separator:)();
          v103 = v102;

          v166[0] = v101;
          v166[1] = v103;
          v104 = String.init<A>(describing:)();
          v106 = sub_10000C4E4(v104, v105, &v165);

          *(v99 + 4) = v106;
          v96 = v161;
          _os_log_impl(&_mh_execute_header, v97, v98, "Recognized temp auth tag: %s", v99, 0xCu);
          sub_10000C60C(v100);
        }

        v107 = v163;
        v108 = *(v157 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController);
        sub_1005C2354();
        sub_100026AC0(v107, v89);
        sub_100026AC0(v91, v96);
        return;
      }

      sub_100026AC0(v87, v89);
      v2 = v157;
      v79 = v85;
      v56 = v160;
      v83 = v161;
      v81 = v91;
    }

    sub_100026AC0(v81, v83);
    v58 = v79;
  }

  v109 = [objc_opt_self() sharedMonitor];
  if (!v109)
  {
    __break(1u);
    return;
  }

  v110 = v109;
  v111 = [objc_opt_self() sharedNearbyAgent];
  v112 = v163;
  v113 = sub_100549664(v110, v111);

  if (v113)
  {

    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    sub_10000C4AC(v114, qword_10097C8B0);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_42;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "Device is already known";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v66, v67, v69, v68, 2u);

LABEL_42:

    return;
  }

  if ([v112 airdropConfigData])
  {
    v124 = v162;
    swift_beginAccess();
    if (*(*(v2 + v124) + 16) && (sub_100012854(v56, v58), (v125 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v126 = [objc_opt_self() sharedController];
      v127 = [v126 checkDeviceRegion:v163];

      if (v127 != 4)
      {
        v128 = static NSUserDefaults.airdrop.getter();
        v129 = SFAirDropUserDefaults.a2aRangingAssumeClose.getter();

        if (v129)
        {
          v130 = v56;
          if (qword_100973818 != -1)
          {
            swift_once();
          }

          v131 = type metadata accessor for Logger();
          sub_10000C4AC(v131, qword_10097C8B0);
          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.default.getter();
          v134 = os_log_type_enabled(v132, v133);
          v135 = v163;
          if (v134)
          {
            v136 = swift_slowAlloc();
            *v136 = 0;
            _os_log_impl(&_mh_execute_header, v132, v133, "Assuming device is in range", v136, 2u);
          }

          sub_1004112A4(v130, v58);

          goto LABEL_73;
        }

        if (qword_100973818 != -1)
        {
          swift_once();
        }

        v137 = type metadata accessor for Logger();
        sub_10000C4AC(v137, qword_10097C8B0);

        v138 = Logger.logObject.getter();
        v139 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          v141 = v2;
          v142 = swift_slowAlloc();
          v166[0] = v142;
          *v140 = 136315138;
          *(v140 + 4) = sub_10000C4E4(v56, v58, v166);
          _os_log_impl(&_mh_execute_header, v138, v139, "Starting to measure RSSI for Ask to AirDrop for %s", v140, 0xCu);
          sub_10000C60C(v142);
          v2 = v141;
        }

        swift_beginAccess();
        v143 = *(v2 + v124);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v165 = *(v2 + v124);
        *(v2 + v124) = 0x8000000000000000;
        sub_10057B284(0, v56, v58, isUniquelyReferenced_nonNull_native);

        *(v2 + v124) = v165;
        swift_endAccess();
        v145 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
        if (v145)
        {
          v146 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

          v145(v147);
          sub_100015D04(v145);
        }

        v148 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController);
        sub_1005C2674();
LABEL_72:
        v135 = v163;
LABEL_73:
        if ((*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing) & 1) == 0)
        {
          sub_10040FDA4();
        }

        v66 = [objc_opt_self() sharedController];
        [v66 sender:v2 notifyBluetoothSample:v135 forType:3];
        goto LABEL_42;
      }

      sub_1004112A4(v56, v58);
    }

    goto LABEL_72;
  }

  v115 = v162;
  swift_beginAccess();
  if (!*(*(v2 + v115) + 16))
  {
    swift_endAccess();
    goto LABEL_4;
  }

  sub_100012854(v56, v58);
  v117 = v116;
  swift_endAccess();
  if ((v117 & 1) == 0)
  {
LABEL_4:

    return;
  }

  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v118 = type metadata accessor for Logger();
  sub_10000C4AC(v118, qword_10097C8B0);

  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v166[0] = v122;
    *v121 = 136315138;
    v123 = sub_10000C4E4(v56, v58, v166);

    *(v121 + 4) = v123;
    _os_log_impl(&_mh_execute_header, v119, v120, "Device (%s) no longer advertising Ask to AirDrop", v121, 0xCu);
    sub_10000C60C(v122);
  }

  else
  {
  }

  sub_100411934(v163, 0);
}

id sub_10040E9A4(void *a1)
{
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097C8B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
    v8 = v3;
    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Lost AirDrop device: %s", v6, 0xCu);
    sub_10000C60C(v7);
  }

  sub_100411934(v3, 1);
  result = [v3 identifier];
  if (result)
  {
    v13 = result;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    swift_beginAccess();
    sub_10036DB18(v14, v16);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10040EBB0()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Descriptor();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v43 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_10097C8B0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v3;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Stopping browsing over Bonjour for available endpoints", v18, 2u);
    v3 = v43;
  }

  v19 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController);
  (*(v11 + 16))(v14, v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_scanningIdentifier, v10);
  sub_1005C1F6C(v14);
  (*(v11 + 8))(v14, v10);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing) = 0;
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_browser;
  v21 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_browser);

  NWBrowser.cancel()();

  v22 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults) = &_swiftEmptySetSingleton;

  *v9 = 0xD000000000000019;
  v9[1] = 0x800000010078FF90;
  (*(v3 + 104))(v9, enum case for NWBrowser.Descriptor.applicationService(_:), v2);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  NWParameters.requiredNetworkAgents.setter();
  (*(v3 + 16))(v7, v9, v2);
  v23 = type metadata accessor for NWBrowser();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = NWBrowser.init(for:using:)();
  (*(v3 + 8))(v9, v2);
  v27 = *(v1 + v20);
  *(v1 + v20) = v26;

  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 0;
  v28 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged;
  v29 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
  if (v29)
  {
    v30 = *(v28 + 8);

    v29(v31);
    sub_100015D04(v29);
  }

  v32 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints) = _swiftEmptyArrayStorage;

  sub_10040CB8C();
  v33 = *v28;
  if (*v28)
  {
    v34 = *(v28 + 8);

    v33(v35);
    sub_100015D04(v33);
  }

  v36 = sub_1002820C0(_swiftEmptyArrayStorage);
  v37 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
  swift_beginAccess();
  v38 = *(v1 + v37);
  *(v1 + v37) = v36;

  v40 = *v28;
  if (*v28)
  {
    v41 = *(v28 + 8);

    v40(v42);
    return sub_100015D04(v40);
  }

  return result;
}

void sub_10040F030(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v40 = type metadata accessor for SDTempPairingConnection.Role(0);
  v3 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedNearbyAgent];
  v43 = [v6 temporarySelfIdentity];

  if (v43)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097C8B0);
    v8 = v2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = (*(&v8->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints))[2];

      _os_log_impl(&_mh_execute_header, v9, v10, "Pairing to %ld available endpoints", v11, 0xCu);
    }

    else
    {

      v9 = v8;
    }

    *(&v8->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 1;
    v15 = *(&v8->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
    if (v15)
    {
      v16 = *(&v8[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);

      v15(v17);
      sub_100015D04(v15);
    }

    v18 = *(&v8->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_availableEndpoints);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_activeConnections;
      v39 = *(&v8->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_queue);
      v21 = *(type metadata accessor for SDTempPairingEndpoint(0) - 8);
      v22 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      v23 = *(v21 + 72);
      v37 = v18;
      v38 = v23;

      do
      {
        v24 = &v5[*(sub_10028088C(&unk_10097CA30, &unk_100801610) + 48)];
        sub_100413394(v22, v5);
        v25 = v42;
        *v24 = v41;
        *(v24 + 1) = v25;
        swift_storeEnumTagMultiPayload();
        v26 = type metadata accessor for SDTempPairingConnection(0);
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();

        v29 = v43;
        v30 = v39;
        v31 = sub_1004C21D4(v5, v29, v30);

        v32 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        *(v33 + 24) = v31;
        v35 = v31[3];
        v34 = v31[4];
        v31[3] = sub_10041403C;
        v31[4] = v33;

        sub_100015D04(v35);

        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(&v8->isa + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v8->isa + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        v22 += v38;
        --v19;
      }

      while (v19);

      return;
    }
  }

  else
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097C8B0);
    v43 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v43, v13, "No temporary identity", v14, 2u);
    }
  }

  v36 = v43;
}

void sub_10040F548(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10040F5B8(a1, a3);
  }
}

uint64_t sub_10040F5B8(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097C8B0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v12 = v7;
    v13 = String.init<A>(describing:)();
    v15 = sub_10000C4E4(v13, v14, &v29);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Adding remote identity: %s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  v16 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_rpClient);
  [v16 addOrUpdateIdentity:v7 completion:0];
  v17 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection);
  NWConnection.cancel()();
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_activeConnections;
  swift_beginAccess();

  v19 = sub_100413768((v3 + v18));

  v20 = *(v3 + v18);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21 >= v19)
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v20 < 0)
  {
    v28 = *(v3 + v18);
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (v21 < v19)
  {
    goto LABEL_16;
  }

LABEL_7:
  sub_10057EFC0(v19, v21);
  swift_endAccess();
  v22 = *(v3 + v18);
  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_9:
    [v16 invalidate];
  }

LABEL_10:
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 2;
  v23 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
  if (v23)
  {
    v24 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

    v23(v25);
    sub_100015D04(v23);
  }

  v26 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController);
  return sub_1005C2354();
}

void sub_10040F8B4()
{
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState) = 3;
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

    v1(v3);
    sub_100015D04(v1);
  }

  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097C8B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unpairing and regenerating temporary self identity", v7, 2u);
  }

  v8 = [objc_allocWithZone(RPClient) init];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v13[4] = sub_100413594;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1005CC610;
  v13[3] = &unk_1008DFE80;
  v11 = _Block_copy(v13);
  v12 = v8;

  sub_1001BC7E4(v12, v11);
  _Block_release(v11);
}

void sub_10040FAC4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097C8B0);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, v13, "Successfully regenerated temporary self identity", v14, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097C8B0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = a1;
    v21 = v8;
    *v7 = 136315138;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to regenerate temporary self identity: %s", v7, 0xCu);
    sub_10000C60C(v8);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  [a2 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState] = 0;
    v17 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged];
    if (v17)
    {
      v18 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8];

      v17(v19);

      sub_100015D04(v17);
    }

    else
    {
    }
  }
}

void sub_10040FDA4()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing))
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097C8B0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Already browsing over Bonjour for temp pairing", v4, 2u);
    }
  }

  else
  {
    v5 = v0;
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_browser;
    v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_browser);

    NWBrowser.stateUpdateHandler.setter();

    v8 = *(v5 + v6);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    NWBrowser.browseResultsChangedHandler.setter();

    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097C8B0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Starting to browse over Bonjour for available endpoints", v12, 2u);
    }

    *(v5 + v1) = 1;
    v13 = *(v5 + v6);
    sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);

    oslog = static OS_dispatch_queue.main.getter();
    NWBrowser.start(queue:)();
  }
}

void sub_10041004C(uint64_t a1)
{
  v2 = type metadata accessor for NWBrowser.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097C8B0);
  v11 = *(v3 + 16);
  v11(v9, a1, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v11(v7, v9, v2);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    (*(v3 + 8))(v9, v2);
    v19 = sub_10000C4E4(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Pairing client state changed to %s", v14, 0xCu);
    sub_10000C60C(v15);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }
}

void sub_1004102BC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097C8B0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(a1 + 16);

      _os_log_impl(&_mh_execute_header, v9, v10, "Pairing client found %ld devices", v11, 0xCu);
    }

    else
    {
    }

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = qword_1009735E0;

    v14 = v7;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = static AirDropActor.shared;
    v16 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = v14;
    v17[5] = a1;

    sub_1002B3098(0, 0, v5, &unk_1008015E8, v17);
  }
}

uint64_t sub_100410568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_100410604, v6, 0);
}

uint64_t sub_100410604()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults) = v2;

  if (*(v2 + 16))
  {
    v4 = v0[2];
    sub_1004106A8();
  }

  v5 = v0[1];

  return v5();
}

void sub_1004106A8()
{
  v0 = [objc_allocWithZone(SFUserAlert) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setDefaultButtonTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [v0 setMessage:v3];

  [v0 setTextInput:1];
  v4 = String._bridgeToObjectiveC()();
  [v0 setTextInputTitle:v4];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_100413760;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1004120A4;
  v7[3] = &unk_1008DFF48;
  v6 = _Block_copy(v7);

  [v0 setTextResponseHandler:v6];
  _Block_release(v6);
  [v0 present];
}

void sub_100410888()
{
  v1 = v0;
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097C8B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Rapport identities changed, updating connection state", v5, 2u);
  }

  sub_10040CB8C();
  v6 = [objc_opt_self() sharedNearbyAgent];
  v7 = [v6 adHocPairedDeviceIdentities];

  if (v7)
  {
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v9)
    {
      v10 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController);
      sub_1005C2374();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100410A6C()
{
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097C8B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "AirDrop discoverable mode changed", v3, 2u);
  }

  v4 = [objc_opt_self() sharedMonitor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 discoverableLevel];

    if (v6)
    {

      sub_10040D338();
    }

    else
    {
      sub_10040EBB0();

      sub_10040F8B4();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100410C0C(id *a1, uint64_t a2)
{
  v3 = [*a1 edPKData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = (a2 + *(type metadata accessor for SDTempPairingEndpoint(0) + 20));
  v9 = v8[2];
  v10 = v8[3];
  if (v7 >> 60 != 15)
  {
    if (v10 >> 60 != 15)
    {
      sub_100294008(v8[2], v8[3]);
      sub_100294008(v9, v10);
      sub_1002A9924(v5, v7);
      v12 = sub_100331508(v5, v7, v9, v10);
      sub_10028BCC0(v9, v10);
      sub_100026AC0(v9, v10);
      sub_10028BCC0(v5, v7);
      sub_10028BCC0(v5, v7);
      if (v12)
      {
        goto LABEL_11;
      }

      return 0;
    }

LABEL_8:
    sub_100294008(v8[2], v8[3]);
    sub_10028BCC0(v5, v7);
    sub_10028BCC0(v9, v10);
    return 0;
  }

  if (v10 >> 60 != 15)
  {
    goto LABEL_8;
  }

  sub_100294008(v8[2], v8[3]);
  sub_10028BCC0(v5, v7);
LABEL_11:
  v13 = v8[4];
  v14 = v8[5];
  return sub_100410D90() & 1;
}

id sub_100410D90()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = Data._bridgeToObjectiveC()().super.isa;
  v7 = 0;
  v3 = [v0 verifyAuthTag:isa data:v2 type:1 error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

void sub_100410E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = qword_1009735E0;
    v13 = v10;

    if (v12 != -1)
    {
      swift_once();
    }

    v14 = static AirDropActor.shared;
    v15 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v13;
    v16[5] = a2;
    v16[6] = a3;

    sub_1002B3098(0, 0, v8, &unk_1008015D8, v16);
  }
}

uint64_t sub_10041104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004110EC, v7, 0);
}

uint64_t sub_1004110EC()
{
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097C8B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Nearby device is close timer fired", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_statusItemController);
  sub_1004EA84C(0);
  swift_beginAccess();
  sub_10036DB18(v6, v5);
  swift_endAccess();

  *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing) = 0;
  v9 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_browser);

  NWBrowser.cancel()();

  v10 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults);
  *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults) = &_swiftEmptySetSingleton;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004112A4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  __chkstk_darwin(v6);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for DispatchTime();
  v46 = *(v53 - 8);
  v16 = *(v46 + 64);
  v17 = __chkstk_darwin(v53);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v43 - v20;
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_10097C8B0);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v11;
    v26 = a1;
    v27 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10000C4E4(v26, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v22, v23, "Ask to AirDrop device (%s) within bubble", v24, 0xCu);
    sub_10000C60C(v27);
    a1 = v26;
    v11 = v44;
  }

  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
  swift_beginAccess();
  v29 = *(v3 + v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v3 + v28);
  *(v3 + v28) = 0x8000000000000000;
  sub_10057B284(1, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + v28) = v55;
  swift_endAccess();
  v31 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
  if (v31)
  {
    v32 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

    v31(v33);
    sub_100015D04(v31);
  }

  v34 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_statusItemController);
  sub_1004EA84C(1);
  v35 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController);
  sub_1005C2694();
  v44 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_queue);
  static DispatchTime.now()();
  *v15 = 30;
  (*(v12 + 104))(v15, enum case for DispatchTimeInterval.seconds(_:), v11);
  v36 = v45;
  + infix(_:_:)();
  (*(v12 + 8))(v15, v11);
  v46 = *(v46 + 8);
  (v46)(v19, v53);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004134D8;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DFE08;
  v38 = _Block_copy(aBlock);

  v39 = v47;
  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  sub_100014374(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  v40 = v49;
  v41 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v38);
  (*(v51 + 8))(v40, v41);
  (*(v48 + 8))(v39, v50);
  (v46)(v36, v53);
}

void sub_100411934(void *a1, char a2)
{
  v3 = v2;
  v6 = [a1 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
    swift_beginAccess();
    sub_1002B1940(2, v8, v10);
    swift_endAccess();
    v12 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
    if (v12)
    {
      v13 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

      v12(v14);
      sub_100015D04(v12);
    }

    if (a2)
    {
      v15 = [objc_opt_self() sharedController];
      [v15 notifyDeviceLost:a1];
    }

    if (!*(*(v3 + v11) + 16))
    {
      v16 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_bluetoothController);
      sub_1005C2694();
      v17 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_statusItemController);
      sub_1004EA84C(0);
    }
  }
}

void sub_100411A80()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = qword_1009735E0;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = static AirDropActor.shared;
    v10 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = v8;

    sub_1002B3098(0, 0, v3, &unk_1008015C8, v11);
  }
}

uint64_t sub_100411C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100411CD8, v5, 0);
}

uint64_t sub_100411CD8()
{
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097C8B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Nearby device is close timer fired", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_statusItemController);
  sub_1004EA84C(0);
  v7 = *(v0 + 8);

  return v7();
}

void sub_100411E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097C8B0);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v14 = os_log_type_enabled(v12, v13);
    v24[1] = a1;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v24[0] = v5;
      v16 = v15;
      v17 = swift_slowAlloc();
      v24[3] = a2;
      v25 = v17;
      *v16 = 136315138;
      v24[2] = a1;

      sub_10028088C(&qword_100975100, &qword_1007FBA10);
      v18 = String.init<A>(describing:)();
      v20 = sub_10000C4E4(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "User entered PIN: %s", v16, 0xCu);
      sub_10000C60C(v17);

      v5 = v24[0];
    }

    if (a2)
    {
      static String.Encoding.utf8.getter();
      v21 = String.data(using:allowLossyConversion:)();
      v23 = v22;
      (*(v5 + 8))(v8, v4);
      if (v23 >> 60 == 15)
      {
        __break(1u);
        return;
      }

      sub_1004139E8();
      sub_10028BCC0(v21, v23);
    }
  }
}

uint64_t sub_1004120A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

void sub_100412120(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v57 - v7;
  v9 = type metadata accessor for NWConnection.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v63 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v57 - v15;
  __chkstk_darwin(v14);
  v18 = v57 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v61 = Strong;
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v21 = sub_10000C4AC(v20, qword_10097C8B0);
    v22 = *(v10 + 16);
    v60 = a1;
    v62 = v22;
    v22(v18, a1, v9);
    v59 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v57[1] = a3;
      v26 = v25;
      v27 = swift_slowAlloc();
      v58 = v10;
      v28 = v27;
      v64 = v27;
      *v26 = 136315138;
      v62(v16, v18, v9);
      v29 = String.init<A>(describing:)();
      v57[0] = v8;
      v31 = v30;
      v32 = *(v58 + 8);
      v32(v18, v9);
      v33 = sub_10000C4E4(v29, v31, &v64);
      v8 = v57[0];

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Pairing connection state changed to %s", v26, 0xCu);
      sub_10000C60C(v28);
      v10 = v58;
    }

    else
    {

      v32 = *(v10 + 8);
      v32(v18, v9);
    }

    v34 = v63;
    v62(v63, v60, v9);
    v35 = (*(v10 + 88))(v34, v9);
    if (v35 == enum case for NWConnection.State.waiting(_:))
    {
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Pairing failed", v38, 2u);
      }

      v39 = type metadata accessor for TaskPriority();
      (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
      v40 = qword_1009735E0;
      v41 = v61;
      if (v40 != -1)
      {
        swift_once();
      }

      v42 = static AirDropActor.shared;
      v43 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor);
      v44 = swift_allocObject();
      v44[2] = v42;
      v44[3] = v43;
      v44[4] = v41;

      sub_1002B3098(0, 0, v8, &unk_100801608, v44);

      NWConnection.cancel()();

      goto LABEL_15;
    }

    if (v35 == enum case for NWConnection.State.failed(_:))
    {

LABEL_15:
      v45 = v34;
LABEL_16:
      v32(v45, v9);
      return;
    }

    if (v35 == enum case for NWConnection.State.setup(_:) || v35 == enum case for NWConnection.State.preparing(_:))
    {

      return;
    }

    if (v35 == enum case for NWConnection.State.ready(_:))
    {
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Pairing success", v48, 2u);
      }

      v49 = type metadata accessor for TaskPriority();
      (*(*(v49 - 8) + 56))(v8, 1, 1, v49);
      v50 = qword_1009735E0;
      v51 = v61;
      if (v50 != -1)
      {
        swift_once();
      }

      v52 = static AirDropActor.shared;
      v53 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor);
      v54 = swift_allocObject();
      v54[2] = v52;
      v54[3] = v53;
      v54[4] = v51;

      sub_1002B3098(0, 0, v8, &unk_1008015F8, v54);

      NWConnection.cancel()();
    }

    else
    {
      v55 = enum case for NWConnection.State.cancelled(_:);
      v56 = v35;

      if (v56 != v55)
      {
        v45 = v63;
        goto LABEL_16;
      }
    }
  }
}

uint64_t sub_100412880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10041291C, v5, 0);
}

uint64_t sub_10041291C()
{
  v1 = *(v0 + 16);
  sub_1004106A8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100412994()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_100412A2C, v0, 0);
}

uint64_t sub_100412A2C()
{
  sub_100413F08();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100412C18()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100412D0C()
{
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v0 = static NSUserDefaults.airdrop.getter();
  v1 = SFAirDropUserDefaults.a2aRangingAssumeFar.getter();

  if (v1)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097C8B0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Assuming device is not in range", v4, 2u);
    }
  }

  else
  {
    v5 = UUID.uuidString.getter();
    sub_1004112A4(v5, v6);
  }
}

uint64_t sub_100412FB4()
{
  result = type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10041302C()
{
  result = qword_10097CA08;
  if (!qword_10097CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097CA08);
  }

  return result;
}

unint64_t sub_100413080(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = static UUID.== infix(_:_:)();

    if (v6)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_10041318C()
{
  v0 = [objc_opt_self() sharedNearbyAgent];
  v1 = [v0 adHocPairedDeviceIdentities];

  if (v1)
  {
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v2 >> 62)
    {
LABEL_22:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (v3)
      {
LABEL_4:
        v4 = 0;
        v5 = _swiftEmptyArrayStorage;
        do
        {
          v6 = v4;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v7 = *(v2 + 8 * v6 + 32);
            }

            v8 = v7;
            v4 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            v9 = [v7 name];
            if (v9)
            {
              break;
            }

            ++v6;
            if (v4 == v3)
            {
              goto LABEL_23;
            }
          }

          v10 = v9;
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v12;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10028E1C8(0, *(v5 + 2) + 1, 1, v5);
          }

          v14 = *(v5 + 2);
          v13 = *(v5 + 3);
          if (v14 >= v13 >> 1)
          {
            v5 = sub_10028E1C8((v13 > 1), v14 + 1, 1, v5);
          }

          *(v5 + 2) = v14 + 1;
          v15 = &v5[16 * v14];
          *(v15 + 4) = v11;
          *(v15 + 5) = v16;
        }

        while (v4 != v3);
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_4;
      }
    }

LABEL_23:

    return;
  }

  __break(1u);
}

uint64_t sub_100413394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDTempPairingEndpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100413418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDTempPairingEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10041347C(uint64_t a1)
{
  v2 = type metadata accessor for SDTempPairingEndpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004134E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100411C3C(a1, v4, v5, v6);
}

uint64_t sub_1004135D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_10041104C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004136A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100410568(a1, v4, v5, v7, v6);
}

unint64_t sub_100413768(unint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  result = sub_100413080(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &unk_100980000;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);

LABEL_15:
    v11 = v10 + v8[130];
    v12 = static UUID.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v13 = *(v3 + 32 + 8 * v6);
          v14 = *(v3 + 32 + 8 * v7);
        }

        v16 = v2;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1002D8B8C(v3);
          v17 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

        if ((v3 & 0x8000000000000000) != 0 || v17)
        {
          v3 = sub_1002D8B8C(v3);
          v18 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v18 + 16))
        {
          goto LABEL_43;
        }

        v2 = v16;
        v20 = v18 + 8 * v7;
        v21 = *(v20 + 32);
        *(v20 + 32) = v13;

        *v16 = v3;
        v8 = &unk_100980000;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1004139E8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults);

  sub_1002FB4EC(v18, v5);

  v19 = type metadata accessor for NWBrowser.Result();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    return sub_100413D30(v5);
  }

  NWBrowser.Result.endpoint.getter();
  (*(v20 + 8))(v5, v19);
  (*(v7 + 32))(v16, v14, v6);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  (*(v7 + 16))(v11, v16, v6);
  v22 = type metadata accessor for NWConnection();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = NWConnection.init(to:using:)();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;

  NWConnection.stateUpdateHandler.setter();

  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  NWConnection.start(queue:)();

  return (*(v7 + 8))(v16, v6);
}

uint64_t sub_100413D30(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100413DA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_100412994();
}

uint64_t sub_100413E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100412880(a1, v4, v5, v6);
}

void sub_100413F08()
{
  v3 = [objc_allocWithZone(SFUserAlert) init];
  v0 = String._bridgeToObjectiveC()();
  [v3 setTitle:v0];

  v1 = String._bridgeToObjectiveC()();
  [v3 setDefaultButtonTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v3 setMessage:v2];

  [v3 present];
}

uint64_t sub_100413FFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10041405C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097CA40);
  v1 = sub_10000C4AC(v0, qword_10097CA40);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100414124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007F8830;
  if (qword_100973828 != -1)
  {
    v12 = v4;
    swift_once();
    v4 = v12;
  }

  *(v4 + 56) = &type metadata for SDAuthentication.Operation.UnpairRemoteLTK;
  *(v4 + 64) = &off_10097BB48;
  *(v4 + 96) = &type metadata for SDAuthentication.Operation.RecordFeaturePreviouslyPaired;
  *(v4 + 104) = &off_10097BB30;
  *(v4 + 136) = &type metadata for SDAuthentication.Operation.BuildPairingDisableMessage;
  *(v4 + 144) = &off_10097BB18;
  *a2 = v4;
  v5 = _s6UnpairV23InitialInitiatorContextVMa(0);
  v6 = (a2 + v5[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5[7]) = 0;
  *(a2 + v5[8]) = 8;
  if (qword_100973820 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097CA40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Start Key initiated pairing disable flow", v10, 2u);
  }

  return sub_1004153C0(a1, a2 + v5[5], type metadata accessor for SDAuthenticationSessionMetrics);
}

uint64_t sub_100414324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

id sub_1004143CC(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
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

uint64_t sub_10041444C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973828 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.ProcessUnpairRequest;
  *(v6 + 64) = &off_10097C288;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordFeaturePreviouslyPaired;
  *(v6 + 104) = &off_10097BB30;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *a3 = v6;
  v7 = _s6UnpairV27HandlePairingDisableContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 2;
  v8 = _s6UnpairV23InitialResponderContextVMa(0);
  v9 = v7[5];
  sub_100415428(a2 + *(v8 + 20), a3 + v9, type metadata accessor for SDAuthenticationSessionMetrics);
  if ([a1 hasPairingID] && (v10 = objc_msgSend(a1, "pairingID")) != 0)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    result = sub_100415490(a2, _s6UnpairV23InitialResponderContextVMa);
    v16 = (a3 + v7[6]);
    *v16 = v12;
    v16[1] = v14;
  }

  else
  {
    v17 = sub_100010F88(1, 0xD000000000000011, 0x8000000100790120);
    v19 = v18;
    sub_1000115C8();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    swift_willThrow();

    sub_100415490(a2, _s6UnpairV23InitialResponderContextVMa);

    return sub_100415490(a3 + v9, type metadata accessor for SDAuthenticationSessionMetrics);
  }

  return result;
}

uint64_t sub_1004146FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1004143CC(a3, a4);
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

uint64_t sub_1004147D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_100973828 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s6UnpairV23InitialInitiatorContextVMa(0) + 20);
    v8 = _s6UnpairV25HandleConfirmationContextVMa(0);
    sub_100415428(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_100415490(a2, _s6UnpairV23InitialInitiatorContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_100415490(a2, _s6UnpairV23InitialInitiatorContextVMa);
  }

  return result;
}

void sub_10041499C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v74 = a2;
  v70 = a3;
  v65 = _s6UnpairV25HandleConfirmationContextVMa(0);
  v4 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v69 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_10097CC30, &qword_100801740);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v64 - v8;
  v10 = _s6UnpairV23InitialInitiatorContextVMa(0);
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  v12 = __chkstk_darwin(v10);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v64 - v14;
  v66 = _s6UnpairV27HandlePairingDisableContextVMa(0);
  v15 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v17 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10028088C(&qword_10097CC38, &qword_100801748);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v64 - v20;
  v22 = _s6UnpairV23InitialResponderContextVMa(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v64 - v28;
  sub_1002A9938(a1, v75);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_10097CBF0, off_1008C8D20);
  if (swift_dynamicCast())
  {
    v30 = v76;
    sub_1002A9938(v74, v75);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v31 = swift_dynamicCast();
    v32 = *(v23 + 56);
    if (!v31)
    {
      v32(v21, 1, 1, v22);
      sub_100005508(v21, &qword_10097CC38, &qword_100801748);
      v46 = sub_100010F88(10, 0xD00000000000004CLL, 0x80000001007900D0);
      v48 = v47;
      sub_1000115C8();
      swift_allocError();
      *v49 = v46;
      *(v49 + 8) = v48;
      swift_willThrow();

      return;
    }

    v32(v21, 0, 1, v22);
    sub_1004153C0(v21, v29, _s6UnpairV23InitialResponderContextVMa);
    sub_100415428(v29, v27, _s6UnpairV23InitialResponderContextVMa);
    v33 = v30;
    v34 = v73;
    sub_10041444C(v33, v27, v17);
    if (v34)
    {
      v35 = _s6UnpairV23InitialResponderContextVMa;
      v36 = v29;
LABEL_9:
      sub_100415490(v36, v35);

      return;
    }

    v58 = v70;
    v70[3] = v66;
    v58[4] = &off_1008E0280;
    v59 = sub_10002F604(v58);
    sub_1004153C0(v17, v59, _s6UnpairV27HandlePairingDisableContextVMa);

    v60 = _s6UnpairV23InitialResponderContextVMa;
    v61 = v29;
  }

  else
  {
    v37 = v74;
    sub_1002A9938(a1, v75);
    sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
    if (!swift_dynamicCast())
    {
      v50 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
      v52 = v51;
      sub_1000115C8();
      swift_allocError();
      *v53 = v50;
      *(v53 + 8) = v52;
      swift_willThrow();
      return;
    }

    v38 = v76;
    sub_1002A9938(v37, v75);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v39 = v72;
    v40 = swift_dynamicCast();
    v41 = *(v71 + 56);
    if (!v40)
    {
      v41(v9, 1, 1, v39);
      sub_100005508(v9, &qword_10097CC30, &qword_100801740);
      v54 = sub_100010F88(10, 0xD00000000000004CLL, 0x8000000100790080);
      v56 = v55;
      sub_1000115C8();
      swift_allocError();
      *v57 = v54;
      *(v57 + 8) = v56;
      swift_willThrow();

      return;
    }

    v41(v9, 0, 1, v39);
    v42 = v68;
    sub_1004153C0(v9, v68, _s6UnpairV23InitialInitiatorContextVMa);
    v43 = v67;
    sub_100415428(v42, v67, _s6UnpairV23InitialInitiatorContextVMa);
    v33 = v38;
    v44 = v69;
    v45 = v73;
    sub_1004147D4(v33, v43, v69);
    if (v45)
    {
      v35 = _s6UnpairV23InitialInitiatorContextVMa;
      v36 = v42;
      goto LABEL_9;
    }

    v62 = v70;
    v70[3] = v65;
    v62[4] = &off_1008E0298;
    v63 = sub_10002F604(v62);
    sub_1004153C0(v44, v63, _s6UnpairV25HandleConfirmationContextVMa);

    v60 = _s6UnpairV23InitialInitiatorContextVMa;
    v61 = v42;
  }

  sub_100415490(v61, v60);
}

void sub_1004151DC()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100415288()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002F9C34(319, qword_1009771F0, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &qword_10097CBE8, &unk_10097CBF0, off_1008C8D20);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1004153C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100415428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100415490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100415518()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100415618(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v2[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100415770, v9, 0);
}

void sub_100415770()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = objc_allocWithZone(LSApplicationRecord);
    v6 = sub_10066F3F8(0xD000000000000011, 0x800000010078FA70, 1);
    v7 = v0[3];
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    if (*(v7 + 16))
    {
      v9 = v0[5];
      v10 = v0[2];
      v11 = SFAirDropReceive.AskRequest.urlItems.getter();
      v12 = v11;
      v13 = 0;
      v14 = v11 + 56;
      v15 = -1;
      v16 = -1 << *(v11 + 32);
      if (-v16 < 64)
      {
        v15 = ~(-1 << -v16);
      }

      v17 = v15 & *(v11 + 56);
      v18 = (63 - v16) >> 6;
      while (v17)
      {
        v19 = v13;
LABEL_12:
        v20 = v0[6];
        v21 = v0[4];
        v22 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        (*(v9 + 16))(v20, *(v12 + 48) + *(v9 + 72) * (v22 | (v19 << 6)), v21);
        URL._bridgeToObjectiveC()(v23);
        v25 = v24;
        (*(v9 + 8))(v20, v21);
        LOBYTE(v20) = SFIsKeynoteLiveLink();

        if ((v20 & 1) == 0)
        {
          v26 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v19 >= v18)
        {
          v26 = 1;
          goto LABEL_16;
        }

        v17 = *(v14 + 8 * v19);
        ++v13;
        if (v17)
        {
          v13 = v19;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      v30 = v0[3];
      type metadata accessor for SDAirDropContentHandlerWebLinks();
      v31 = swift_allocObject();
      v0[11] = v31;
      v32 = *(v30 + 24);
      *(v30 + 24) = v31;

      v33 = swift_task_alloc();
      v0[12] = v33;
      *v33 = v0;
      v33[1] = sub_100415A74;
      v34 = v0[2];

      sub_1002FC674(v34);
    }
  }

  else
  {
    v26 = 0;
LABEL_17:
    v27 = v0[9];
    v28 = v0[6];

    v29 = v0[1];

    v29(v26);
  }
}

uint64_t sub_100415A74(char a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100415B8C, v3, 0);
}

void sub_100415B8C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (v1 == 1)
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 16);
    v5 = SFAirDropReceive.AskRequest.urlItems.getter();
    v6 = v5;
    v7 = 0;
    v8 = v5 + 56;
    v9 = -1;
    v10 = -1 << *(v5 + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & *(v5 + 56);
    v12 = (63 - v10) >> 6;
    while (v11)
    {
      v13 = v7;
LABEL_11:
      v14 = *(v0 + 48);
      v15 = *(v0 + 32);
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v3 + 16))(v14, *(v6 + 48) + *(v3 + 72) * (v16 | (v13 << 6)), v15);
      URL._bridgeToObjectiveC()(v17);
      v19 = v18;
      (*(v3 + 8))(v14, v15);
      LOBYTE(v14) = SFIsKeynoteLiveLink();

      if ((v14 & 1) == 0)
      {
        v20 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        v20 = 1;
        goto LABEL_15;
      }

      v11 = *(v8 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = 0;
LABEL_16:
    v21 = *(v0 + 72);
    v22 = *(v0 + 48);

    v23 = *(v0 + 8);

    v23(v20);
  }
}

uint64_t sub_100415D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  if (*(v2 + 24))
  {
    v12 = *(v2 + 24);

    sub_1002FB6E8(a1, a2);
  }

  else
  {
    v46 = v9;
    v14 = *(a1 + 16);
    v40 = *(v2 + 16);
    v41 = a2;
    v15 = v40;
    v38 = a1;
    v39 = v14;
    if (v14)
    {
      v18 = *(v6 + 16);
      v17 = v6 + 16;
      v16 = v18;
      v44 = (*(v17 + 64) + 32) & ~*(v17 + 64);
      v19 = a1 + v44;
      v20 = *(v17 + 56);
      v47 = (v17 + 16);
      v42 = (v17 - 8);
      v21 = _swiftEmptyArrayStorage;
      v45 = v17;
      v22 = v46;
      v43 = v20;
      v18(v11, v19, v5);
      while (1)
      {
        if (URL.isFileURL.getter())
        {
          (*v42)(v11, v5);
        }

        else
        {
          v23 = *v47;
          (*v47)(v22, v11, v5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FAB4(0, v21[2] + 1, 1);
            v21 = v48;
          }

          v26 = v21[2];
          v25 = v21[3];
          if (v26 >= v25 >> 1)
          {
            sub_10028FAB4(v25 > 1, v26 + 1, 1);
            v21 = v48;
          }

          v21[2] = v26 + 1;
          v27 = v43;
          v28 = v21 + v44 + v26 * v43;
          v22 = v46;
          v23(v28, v46, v5);
          v20 = v27;
        }

        v19 += v20;
        if (!--v14)
        {
          break;
        }

        v16(v11, v19, v5);
      }
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v29 = v21[2];
    if (v29)
    {
      if (v29 != v39)
      {
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000C4AC(v30, qword_10097B528);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Asked to view mixed files and links, only viewing links", v33, 2u);
        }
      }

      v48 = 0;
      v34 = swift_allocObject();
      v35 = v40;
      *(v34 + 16) = v21;
      *(v34 + 24) = v35;
    }

    else
    {

      v48 = 0;
      v36 = swift_allocObject();
      *(v36 + 16) = v40;
      *(v36 + 24) = 1;
      *(v36 + 32) = v38;
    }

    return SFProgressTask.init(_:initialProgress:operation:file:line:)();
  }
}

uint64_t sub_1004161FC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100416260@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerKeynoteLiveLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100416298(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100415618(a1);
}

void sub_100416358(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0xD00000000000001ALL;
  v5 = inited + 32;
  *(inited + 40) = 0x8000000100790190;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_1003470A0(v5);
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

uint64_t sub_1004164D0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097CE70);
  v1 = sub_10000C4AC(v0, qword_10097CE70);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100416598@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1008018C0;
  if (qword_100973838 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  *(v4 + 56) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(v4 + 64) = &off_10097BDB8;
  *(v4 + 96) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(v4 + 104) = &off_10097BDA0;
  *(v4 + 136) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(v4 + 144) = &off_10097BE00;
  *(v4 + 176) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeerDevice;
  *(v4 + 184) = &off_10097BC20;
  *(v4 + 216) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(v4 + 224) = &off_10097BD70;
  *(v4 + 256) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v4 + 264) = &off_10097BD58;
  *(v4 + 296) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(v4 + 304) = &off_10097BC08;
  *(v4 + 336) = &type metadata for SDAuthentication.Operation.IncludeRegistrationIDInMessage;
  *(v4 + 344) = &off_10097BBF0;
  *(v4 + 376) = &type metadata for SDAuthentication.Operation.IncludeSessionStartDateInMessage;
  *(v4 + 384) = &off_10097BCB0;
  *(v4 + 416) = &type metadata for SDAuthentication.Operation.IncludeFirstAKSTokenWithLTKSessionInMessage;
  *(v4 + 424) = &off_10097BBD8;
  *(v4 + 456) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(v4 + 464) = &off_10097BCF8;
  *a2 = v4;
  v5 = _s15GuestModeUnlockV17InitialKeyContextVMa(0);
  v6 = v5[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *(a2 + v5[7]) = 0;
  *(a2 + v5[8]) = 0;
  return sub_100418D2C(a1, a2 + v5[5], type metadata accessor for SDAuthenticationSessionMetrics);
}

void sub_1004167F8()
{
  type metadata accessor for SDAuthenticationCommonOperationInput();
  if (v0 <= 0x3F)
  {
    sub_100349E3C();
    if (v1 <= 0x3F)
    {
      sub_100416894();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100416894()
{
  if (!qword_1009756D8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1009756D8);
    }
  }
}

void sub_10041692C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6BEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1004169DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100416B20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100416C50()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6BEC();
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_100416D9C()
{
  v1 = *(_s15GuestModeUnlockV20HandleRequestContextVMa(0) + 40);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
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

uint64_t sub_100416E0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007FA7D0;
  if (qword_100973838 != -1)
  {
    swift_once();
  }

  *(v12 + 56) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(v12 + 64) = &off_10097BDE8;
  *(v12 + 96) = &type metadata for SDAuthentication.Operation.RecordRemoteUnlockDate;
  *(v12 + 104) = &off_10097BF40;
  *(v12 + 136) = &type metadata for SDAuthentication.Operation.RecordDiscoveryEnd;
  *(v12 + 144) = &off_10097BB90;
  *(v12 + 176) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(v12 + 184) = &off_10097BDD0;
  *(v12 + 216) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v12 + 224) = &off_10097C1F8;
  *(v12 + 256) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeerDevice;
  *(v12 + 264) = &off_10097BC20;
  *(v12 + 296) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v12 + 304) = &off_10097BD58;
  *(v12 + 336) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(v12 + 344) = &off_10097BDA0;
  *(v12 + 376) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(v12 + 384) = &off_10097BC08;
  *(v12 + 416) = &type metadata for SDAuthentication.Operation.VerifyRegistrationIDsInSync;
  *(v12 + 424) = &off_10097C240;
  *(v12 + 456) = &type metadata for SDAuthentication.Operation.UseReceivedTokenForIncludingFirstAKSTokenWithLTKSessionInMessage;
  *(v12 + 464) = &off_10097C120;
  *(v12 + 496) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v12 + 504) = &off_10097C1B0;
  *a3 = v12;
  v13 = _s15GuestModeUnlockV20HandleRequestContextVMa(0);
  v14 = v13[7];
  v54 = v6;
  (*(v6 + 56))(a3 + v14, 1, 1, v5);
  *(a3 + v13[10]) = 0;
  *(a3 + v13[11]) = 1;
  if (![a1 hasAksToken] || (v15 = objc_msgSend(a1, "aksToken")) == 0)
  {
    v39 = sub_100010F88(1, 0xD000000000000011, 0x80000001007901B0);
    v41 = v40;
    sub_1000115C8();
    swift_allocError();
    *v42 = v39;
    *(v42 + 8) = v41;
    swift_willThrow();
LABEL_16:

    sub_100418DFC(v55, _s15GuestModeUnlockV18InitialLockContextVMa);

    return sub_100005508(a3 + v14, &qword_10097A7F0, &unk_1007FB600);
  }

  v16 = v15;
  v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v17;

  if (![a1 hasRegistrationID] || (v18 = objc_msgSend(a1, "registrationID")) == 0)
  {
    v43 = sub_100010F88(11, 0xD000000000000016, 0x80000001007901D0);
    v45 = v44;
    sub_1000115C8();
    swift_allocError();
    *v46 = v43;
    *(v46 + 8) = v45;
    swift_willThrow();
    sub_100026AC0(v51, v52);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v21;
  v50 = v20;

  v22 = _s15GuestModeUnlockV18InitialLockContextVMa(0);
  v23 = v55;
  sub_100418D94(v55 + *(v22 + 20), a3 + v13[5], type metadata accessor for SDAuthenticationSessionMetrics);
  sub_1000168F4(v23 + *(v22 + 24), a3 + v14);
  v24 = (a3 + v13[9]);
  v25 = v49;
  *v24 = v50;
  v24[1] = v25;
  if ([a1 hasUnlockDate] && (objc_msgSend(a1, "unlockDate"), v26 != 0.0))
  {
    [a1 unlockDate];
    Date.init(timeIntervalSince1970:)();
  }

  else
  {
    Date.init()();
  }

  (*(v54 + 32))(a3 + v13[8], v11, v5);
  v27 = (a3 + v13[6]);
  v28 = v52;
  *v27 = v51;
  v27[1] = v28;
  if (qword_100973830 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000C4AC(v29, qword_10097CE70);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v56 = v52;
    *v33 = 136315138;
    [v30 unlockDate];
    v34 = v53;
    Date.init(timeIntervalSince1970:)();
    sub_100418E5C();
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v54 + 8))(v34, v5);
    v38 = sub_10000C4E4(v35, v37, &v56);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "got remote unlock date: %s", v33, 0xCu);
    sub_10000C60C(v52);
  }

  else
  {
  }

  return sub_100418DFC(v55, _s15GuestModeUnlockV18InitialLockContextVMa);
}

uint64_t sub_100417494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_100417538()
{
  v1 = *(_s15GuestModeUnlockV21HandleResponseContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationToken) init];
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

id sub_1004175A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973838 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenWithLTKSessionInMessage;
  *(v6 + 64) = &off_10097C198;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v6 + 104) = &off_10097C180;
  *a3 = v6;
  v7 = _s15GuestModeUnlockV21HandleResponseContextVMa(0);
  *(a3 + v7[6]) = 34;
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 7;
  if ([a1 hasAksToken])
  {
    v8 = _s15GuestModeUnlockV17InitialKeyContextVMa(0);
    sub_100418D94(a2 + *(v8 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_100418DFC(a2, _s15GuestModeUnlockV17InitialKeyContextVMa);
      v14 = (a3 + v7[7]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_100418DFC(a2, _s15GuestModeUnlockV17InitialKeyContextVMa);
  }

  return result;
}

uint64_t sub_10041780C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

id sub_1004178E0(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
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

id sub_100417960@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973838 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.ConsumeAKSTokenWithLTKSession;
  *(v6 + 64) = &off_10097C150;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 104) = &off_10097C270;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  v7 = _s15GuestModeUnlockV18HandleTokenContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 2;
  if ([a1 hasAksToken])
  {
    v8 = _s15GuestModeUnlockV20HandleRequestContextVMa(0);
    sub_100418D94(a2 + *(v8 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_100418DFC(a2, _s15GuestModeUnlockV20HandleRequestContextVMa);
      v14 = (a3 + v7[6]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_100418DFC(a2, _s15GuestModeUnlockV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_100417B90(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_100417C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1004178E0(a3, a4);
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

uint64_t sub_100417D0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973838 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.ConfirmAKSSessionWithLTKSession;
  *(v6 + 104) = &off_10097C090;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s15GuestModeUnlockV21HandleResponseContextVMa(0) + 20);
    v8 = _s15GuestModeUnlockV25HandleConfirmationContextVMa(0);
    sub_100418D94(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_100418DFC(a2, _s15GuestModeUnlockV21HandleResponseContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_100418DFC(a2, _s15GuestModeUnlockV21HandleResponseContextVMa);
  }

  return result;
}

void sub_100417EFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v126 = a2;
  v121 = a3;
  v105 = _s15GuestModeUnlockV25HandleConfirmationContextVMa(0);
  v4 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v109 = (&v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_10097D058, &qword_100801A18);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v114 = &v105 - v8;
  v106 = _s15GuestModeUnlockV18HandleTokenContextVMa(0);
  v9 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v113 = (&v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&qword_10097D060, &qword_100801A20);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v120 = &v105 - v13;
  v115 = _s15GuestModeUnlockV21HandleResponseContextVMa(0);
  v112 = *(v115 - 8);
  v14 = *(v112 + 64);
  v15 = __chkstk_darwin(v115);
  v107 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v108 = &v105 - v18;
  __chkstk_darwin(v17);
  v119 = (&v105 - v19);
  v20 = sub_10028088C(&qword_10097D068, &qword_100801A28);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v105 - v22;
  v24 = _s15GuestModeUnlockV17InitialKeyContextVMa(0);
  v123 = *(v24 - 8);
  v124 = v24;
  v25 = *(v123 + 64);
  v26 = __chkstk_darwin(v24);
  v117 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v118 = &v105 - v28;
  v122 = _s15GuestModeUnlockV20HandleRequestContextVMa(0);
  v116 = *(v122 - 8);
  v29 = *(v116 + 64);
  v30 = __chkstk_darwin(v122);
  v110 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v111 = &v105 - v33;
  __chkstk_darwin(v32);
  v35 = (&v105 - v34);
  v36 = sub_10028088C(&qword_10097D070, &unk_100801A30);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v105 - v38;
  v40 = _s15GuestModeUnlockV18InitialLockContextVMa(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v45 = &v105 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v105 - v46;
  sub_1002A9938(a1, v127);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
  if (swift_dynamicCast())
  {
    v48 = v128;
    sub_1002A9938(v126, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v49 = swift_dynamicCast();
    v50 = *(v41 + 56);
    if (v49)
    {
      v50(v39, 0, 1, v40);
      sub_100418D2C(v39, v47, _s15GuestModeUnlockV18InitialLockContextVMa);
      sub_100418D94(v47, v45, _s15GuestModeUnlockV18InitialLockContextVMa);
      v51 = v48;
      v52 = v125;
      sub_100416E0C(v51, v45, v35);
      if (v52)
      {
        v53 = _s15GuestModeUnlockV18InitialLockContextVMa;
        v54 = v47;
LABEL_21:
        sub_100418DFC(v54, v53);

        return;
      }

      v90 = v121;
      v121[3] = v122;
      v90[4] = &off_1008E07B0;
      v91 = sub_10002F604(v90);
      sub_100418D2C(v35, v91, _s15GuestModeUnlockV20HandleRequestContextVMa);

      v92 = _s15GuestModeUnlockV18InitialLockContextVMa;
      v93 = v47;
      goto LABEL_30;
    }

    v50(v39, 1, 1, v40);
    sub_100005508(v39, &qword_10097D070, &unk_100801A30);
    v64 = "sult, message may be replayed";
    v65 = 0xD000000000000047;
LABEL_10:
    v66 = sub_100010F88(10, v65, v64 | 0x8000000000000000);
    v68 = v67;
    sub_1000115C8();
    swift_allocError();
    *v69 = v66;
    *(v69 + 8) = v68;
    swift_willThrow();

    return;
  }

  v55 = v126;
  sub_1002A9938(a1, v127);
  sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
  if (swift_dynamicCast())
  {
    v56 = v128;
    sub_1002A9938(v55, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v57 = v124;
    v58 = swift_dynamicCast();
    v59 = *(v123 + 56);
    if (!v58)
    {
      v59(v23, 1, 1, v57);
      sub_100005508(v23, &qword_10097D068, &qword_100801A28);
      v79 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v81 = v80;
      sub_1000115C8();
      swift_allocError();
      *v82 = v79;
      *(v82 + 8) = v81;
      swift_willThrow();

      return;
    }

    v59(v23, 0, 1, v57);
    v60 = v118;
    sub_100418D2C(v23, v118, _s15GuestModeUnlockV17InitialKeyContextVMa);
    v61 = v117;
    sub_100418D94(v60, v117, _s15GuestModeUnlockV17InitialKeyContextVMa);
    v51 = v56;
    v62 = v119;
    v63 = v125;
    sub_1004175A8(v51, v61, v119);
    if (v63)
    {
      v53 = _s15GuestModeUnlockV17InitialKeyContextVMa;
      v54 = v60;
      goto LABEL_21;
    }

    v98 = v121;
    v121[3] = v115;
    v98[4] = &off_1008E07C8;
    v99 = sub_10002F604(v98);
    sub_100418D2C(v62, v99, _s15GuestModeUnlockV21HandleResponseContextVMa);

    v92 = _s15GuestModeUnlockV17InitialKeyContextVMa;
    v93 = v60;
    goto LABEL_30;
  }

  sub_1002A9938(a1, v127);
  sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
  if (swift_dynamicCast())
  {
    v48 = v128;
    sub_1002A9938(v55, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v70 = v120;
    v71 = v122;
    v72 = swift_dynamicCast();
    v73 = *(v116 + 56);
    if (!v72)
    {
      v73(v70, 1, 1, v71);
      sub_100005508(v70, &qword_10097D060, &qword_100801A20);
      v64 = "t, message may be replayed";
      v65 = 0xD000000000000049;
      goto LABEL_10;
    }

    v73(v70, 0, 1, v71);
    v74 = v111;
    sub_100418D2C(v70, v111, _s15GuestModeUnlockV20HandleRequestContextVMa);
    v75 = v110;
    sub_100418D94(v74, v110, _s15GuestModeUnlockV20HandleRequestContextVMa);
    v51 = v48;
    v76 = v113;
    v77 = v125;
    sub_100417960(v51, v75, v113);
    if (v77)
    {
      v78 = _s15GuestModeUnlockV20HandleRequestContextVMa;
LABEL_20:
      v53 = v78;
      v54 = v74;
      goto LABEL_21;
    }

    v100 = v121;
    v121[3] = v106;
    v100[4] = &off_1008E07E0;
    v101 = sub_10002F604(v100);
    sub_100418D2C(v76, v101, _s15GuestModeUnlockV18HandleTokenContextVMa);

    v102 = _s15GuestModeUnlockV20HandleRequestContextVMa;
  }

  else
  {
    sub_1002A9938(a1, v127);
    sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
    if (!swift_dynamicCast())
    {
      v94 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
      v96 = v95;
      sub_1000115C8();
      swift_allocError();
      *v97 = v94;
      *(v97 + 8) = v96;
      swift_willThrow();
      return;
    }

    v48 = v128;
    sub_1002A9938(v55, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v84 = v114;
    v83 = v115;
    v85 = swift_dynamicCast();
    v86 = *(v112 + 56);
    if (!v85)
    {
      v86(v84, 1, 1, v83);
      sub_100005508(v84, &qword_10097D058, &qword_100801A18);
      v64 = "Invalid message object received";
      v65 = 0xD00000000000004ALL;
      goto LABEL_10;
    }

    v86(v84, 0, 1, v83);
    v74 = v108;
    sub_100418D2C(v84, v108, _s15GuestModeUnlockV21HandleResponseContextVMa);
    v87 = v107;
    sub_100418D94(v74, v107, _s15GuestModeUnlockV21HandleResponseContextVMa);
    v51 = v48;
    v88 = v109;
    v89 = v125;
    sub_100417D0C(v51, v87, v109);
    if (v89)
    {
      v78 = _s15GuestModeUnlockV21HandleResponseContextVMa;
      goto LABEL_20;
    }

    v103 = v121;
    v121[3] = v105;
    v103[4] = &off_1008E07F8;
    v104 = sub_10002F604(v103);
    sub_100418D2C(v88, v104, _s15GuestModeUnlockV25HandleConfirmationContextVMa);

    v102 = _s15GuestModeUnlockV21HandleResponseContextVMa;
  }

  v92 = v102;
  v93 = v74;
LABEL_30:
  sub_100418DFC(v93, v92);
}

uint64_t sub_100418D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100418D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100418DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100418E5C()
{
  result = qword_100983290;
  if (!qword_100983290)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983290);
  }

  return result;
}

void sub_100418EDC()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6BEC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100419000()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1004190FC()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SFAuthenticationErrorCode(319);
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975BE8, &qword_1009758C8, off_1008C8D58);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}