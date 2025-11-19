uint64_t sub_1009EDC88(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  v11 = type metadata accessor for OwnedBeaconRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100D5E184(a1, v14);
  v15 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v16 = *(a3 + 168);
  sub_1009F15D4(v14);
  sub_100A8306C(8);
  sub_100A1B358(v14, v10, type metadata accessor for OwnedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  a4(v10);
  sub_10000B3A8(v10, &unk_1016B15A0, &qword_1013A0900);
  sub_100A8375C();
  return sub_100A1B3C0(v14, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_1009EDFAC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = type metadata accessor for LostModeRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100E7815C(a1, v14);
  v15 = *(a3 + 168);
  sub_1009F0274(v14);
  sub_100A8306C(8);
  sub_100A1B358(v14, v10, type metadata accessor for LostModeRecord);
  swift_storeEnumTagMultiPayload();
  a4(v10);
  sub_10000B3A8(v10, &qword_1016B1840, &qword_1013B68F0);
  sub_100A8375C();
  return sub_100A1B3C0(v14, type metadata accessor for LostModeRecord);
}

uint64_t sub_1009EE29C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  v11 = type metadata accessor for BeaconNamingRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100DE08D0(a1, v14);
  v15 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v16 = *(a3 + 168);
  sub_1009F0C24(v14);
  sub_100A8306C(8);
  sub_100A1B358(v14, v10, type metadata accessor for BeaconNamingRecord);
  swift_storeEnumTagMultiPayload();
  a4(v10);
  sub_10000B3A8(v10, &qword_1016A7808, &qword_1013D6750);
  sub_100A8375C();
  return sub_100A1B3C0(v14, type metadata accessor for BeaconNamingRecord);
}

uint64_t sub_1009EE5C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = type metadata accessor for ShareRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001547CC(a1, v14);
  v15 = *(a3 + 168);
  sub_1009F0E90(v14);
  sub_100A8306C(8);
  sub_100A1B358(v14, v10, type metadata accessor for ShareRecord);
  swift_storeEnumTagMultiPayload();
  a4(v10);
  sub_10000B3A8(v10, &unk_1016B1650, &unk_1013B1110);
  sub_100A8375C();
  return sub_100A1B3C0(v14, type metadata accessor for ShareRecord);
}

uint64_t sub_1009EE8B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = type metadata accessor for KeyAlignmentRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100150FC8(a1, v14);
  v15 = *(a3 + 168);
  sub_1009F0008(v14);
  sub_100A8306C(8);
  sub_100A1B358(v14, v10, type metadata accessor for KeyAlignmentRecord);
  swift_storeEnumTagMultiPayload();
  a4(v10);
  sub_10000B3A8(v10, &unk_1016B1690, &qword_1013D6800);
  sub_100A8375C();
  return sub_100A1B3C0(v14, type metadata accessor for KeyAlignmentRecord);
}

uint64_t sub_1009EEBA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = type metadata accessor for LeashRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_101251FDC(a1, v14);
  v15 = *(a3 + 168);
  sub_1009F074C(v14);
  sub_100A8306C(8);
  sub_100A1B358(v14, v10, type metadata accessor for LeashRecord);
  swift_storeEnumTagMultiPayload();
  a4(v10);
  sub_10000B3A8(v10, &qword_1016A78E0, &qword_1013B6888);
  sub_100A8375C();
  return sub_100A1B3C0(v14, type metadata accessor for LeashRecord);
}

uint64_t sub_1009EEE90(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = type metadata accessor for SafeLocation();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100EE51B8(a1, v14);
  v15 = *(a3 + 168);
  sub_1009F04E0(v14);
  sub_100A8306C(8);
  sub_100A1B358(v14, v10, type metadata accessor for SafeLocation);
  swift_storeEnumTagMultiPayload();
  a4(v10);
  sub_10000B3A8(v10, &unk_1016B1480, &qword_1013B6890);
  sub_100A8375C();
  return sub_100A1B3C0(v14, type metadata accessor for SafeLocation);
}

uint64_t sub_1009EF180(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for SharingCircleSecret();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for SharingCircleSecret);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B1640, type metadata accessor for SharingCircleSecret);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for SharingCircleSecret);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for SharingCircleSecret);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009EF3EC(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MemberSharingCircle();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for MemberSharingCircle);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_1016B1620, type metadata accessor for MemberSharingCircle);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for MemberSharingCircle);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for MemberSharingCircle);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009EF658(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for OwnerSharingCircle();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for OwnerSharingCircle);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B1600, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for OwnerSharingCircle);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for OwnerSharingCircle);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009EF8C4(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MemberPeerTrust();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for MemberPeerTrust);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B15F0, type metadata accessor for MemberPeerTrust);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for MemberPeerTrust);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for MemberPeerTrust);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009EFB30(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for OwnerPeerTrust();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for OwnerPeerTrust);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_10169D950, type metadata accessor for OwnerPeerTrust);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for OwnerPeerTrust);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for OwnerPeerTrust);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009EFD9C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for OwnedDeviceKeyRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for OwnedDeviceKeyRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_1016C8630, type metadata accessor for OwnedDeviceKeyRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for OwnedDeviceKeyRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for OwnedDeviceKeyRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F0008(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for KeyAlignmentRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for KeyAlignmentRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_101697F10, type metadata accessor for KeyAlignmentRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for KeyAlignmentRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for KeyAlignmentRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F0274(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for LostModeRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for LostModeRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B15E0, type metadata accessor for LostModeRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for LostModeRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for LostModeRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F04E0(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for SafeLocation();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for SafeLocation);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_1016B14C0, type metadata accessor for SafeLocation);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for SafeLocation);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for SafeLocation);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F074C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for LeashRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for LeashRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B1510, type metadata accessor for LeashRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for LeashRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for LeashRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F09B8(uint64_t a1)
{
  v3 = v1;
  found = type metadata accessor for NotifyWhenFoundRecord();
  v6 = *(*(found - 8) + 64);
  v7 = __chkstk_darwin(found);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for NotifyWhenFoundRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = found;
    v23[4] = sub_100003F64(&unk_1016A27A0, type metadata accessor for NotifyWhenFoundRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for NotifyWhenFoundRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for NotifyWhenFoundRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F0C24(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for BeaconNamingRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for BeaconNamingRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B1520, type metadata accessor for BeaconNamingRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for BeaconNamingRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for BeaconNamingRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F0E90(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for ShareRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for ShareRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_1016B15D0, type metadata accessor for ShareRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for ShareRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for ShareRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F10FC(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for OwnedBeaconGroup);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_1016A4140, type metadata accessor for OwnedBeaconGroup);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for OwnedBeaconGroup);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for OwnedBeaconGroup);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F1368(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for SharedBeaconRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_1016B15B0, type metadata accessor for SharedBeaconRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for SharedBeaconRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for SharedBeaconRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F15D4(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for OwnedBeaconRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B1530, type metadata accessor for OwnedBeaconRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for OwnedBeaconRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for OwnedBeaconRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F1840(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for BeaconProductInfoRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for BeaconProductInfoRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B1540, type metadata accessor for BeaconProductInfoRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for BeaconProductInfoRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for BeaconProductInfoRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F1AAC(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for PairingErrorRecord(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for PairingErrorRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B1848, type metadata accessor for PairingErrorRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for PairingErrorRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for PairingErrorRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F1D18(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for WildModeAssociationRecord(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for WildModeAssociationRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_1016B1590, type metadata accessor for WildModeAssociationRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for WildModeAssociationRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for WildModeAssociationRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F1F84(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for AccessoryMetadataRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for AccessoryMetadataRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&qword_1016B1730, type metadata accessor for AccessoryMetadataRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for AccessoryMetadataRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for AccessoryMetadataRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F21F0(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for SessionTokenRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for SessionTokenRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_1016B1720, type metadata accessor for SessionTokenRecord);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for SessionTokenRecord);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for SessionTokenRecord);
    return sub_100007BAC(v23);
  }

  return result;
}

uint64_t sub_1009F245C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for BeaconEstimatedLocation();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(v1 + 16);
  v21 = v3;
  v22 = a1;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v23[6] = 0;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A1B358(a1, v9, type metadata accessor for BeaconEstimatedLocation);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = *(v3 + 48);
    v23[3] = v5;
    v23[4] = sub_100003F64(&unk_1016B1710, type metadata accessor for BeaconEstimatedLocation);
    v19 = sub_1000280DC(v23);
    sub_100A1B358(v11, v19, type metadata accessor for BeaconEstimatedLocation);
    PassthroughSubject.send(_:)();
    sub_100A1B3C0(v11, type metadata accessor for BeaconEstimatedLocation);
    return sub_100007BAC(v23);
  }

  return result;
}

void sub_1009F26C8(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  __chkstk_darwin(v4);
  v76 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v80 = *(v7 - 8);
  *&v81 = v7;
  v8 = *(v80 + 64);
  __chkstk_darwin(v7);
  v79 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v10 = *(v84 + 64);
  v11 = __chkstk_darwin(v82);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v75 = v71 - v15;
  __chkstk_darwin(v14);
  v17 = v71 - v16;
  v18 = type metadata accessor for SystemInfo.DeviceLockState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v71 - v24;
  static SystemInfo.lockState.getter();
  (*(v19 + 104))(v23, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v18);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v19 + 8);
  v26(v23, v18);
  v26(v25, v18);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = type metadata accessor for PropertyListEncoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v32 = type metadata accessor for SharingCircleSecret();
    sub_100003F64(&qword_1016B1648, type metadata accessor for SharingCircleSecret);
    v33 = isa;
    v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v33)
    {

      objc_autoreleasePoolPop(v28);
    }

    else
    {
      v36 = v34;
      v37 = v35;

      objc_autoreleasePoolPop(v28);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v36, v37, 0);
      v73 = v36;
      v83 = v37;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      v72 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v43 = *(v32 + 24);
      if (qword_101694E90 != -1)
      {
        swift_once();
      }

      v44 = v82;
      v71[2] = sub_1000076D4(v82, qword_10177C090);
      v71[1] = v43;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v46 = v84 + 8;
      v45 = *(v84 + 8);
      v45(v17, v44);
      (*(v80 + 16))(v79, a2 + *(v32 + 20), v81);
      v71[0] = a2;
      v47 = v44;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v75;
      URL.appendingPathExtension(_:)();
      v45(v13, v47);
      objc_autoreleasePoolPop(v48);
      v84 = v46;
      v72 = v45;
      v45(v17, v47);
      v50 = v49;
      (*(v80 + 8))(v79, v81);
      v51 = v76;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v73, v83);

        (*(v77 + 8))(v51, v78);
        v72(v50, v57);
        sub_100A1B358(v71[0], v74, type metadata accessor for SharingCircleSecret);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v73, v83);

        (*(v77 + 8))(v51, v78);
        v72(v50, v57);
      }
    }
  }
}

void sub_1009F31BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v76 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for MemberSharingCircle();
    sub_100003F64(&qword_10169DFD0, type metadata accessor for MemberSharingCircle);
    v32 = isa;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v32)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v35 = v34;
      v36 = a2;
      v37 = v33;

      objc_autoreleasePoolPop(v27);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v37, v35, 0);
      v83 = v36;
      v72 = v37;
      v73 = v35;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694680 != -1)
      {
        swift_once();
      }

      v43 = v82;
      v44 = sub_1000076D4(v82, qword_10177AC60);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v45 = *(v31 + 20);
      v46 = v75;
      (*(v75 + 16))();
      v47 = v84;
      (*(v84 + 16))(v15, v44, v43);
      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v76;
      URL.appendingPathExtension(_:)();
      v50 = *(v47 + 8);
      v50(v12, v43);
      objc_autoreleasePoolPop(v48);
      v84 = v47 + 8;
      v71 = v50;
      v50(v15, v43);
      (*(v46 + 8))(v80, v81);
      v51 = v77;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v82);
        sub_100A1B358(v83, v74, type metadata accessor for MemberSharingCircle);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v57);
      }
    }
  }
}

void sub_1009F3C68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v76 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for OwnerSharingCircle();
    sub_100003F64(&qword_1016B1608, type metadata accessor for OwnerSharingCircle);
    v32 = isa;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v32)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v35 = v34;
      v36 = a2;
      v37 = v33;

      objc_autoreleasePoolPop(v27);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v37, v35, 0);
      v83 = v36;
      v72 = v37;
      v73 = v35;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694EB8 != -1)
      {
        swift_once();
      }

      v43 = v82;
      v44 = sub_1000076D4(v82, qword_10177C0D8);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v45 = *(v31 + 20);
      v46 = v75;
      (*(v75 + 16))();
      v47 = v84;
      (*(v84 + 16))(v15, v44, v43);
      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v76;
      URL.appendingPathExtension(_:)();
      v50 = *(v47 + 8);
      v50(v12, v43);
      objc_autoreleasePoolPop(v48);
      v84 = v47 + 8;
      v71 = v50;
      v50(v15, v43);
      (*(v46 + 8))(v80, v81);
      v51 = v77;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v82);
        sub_100A1B358(v83, v74, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v57);
      }
    }
  }
}

void sub_1009F4714(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v76 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for MemberPeerTrust();
    sub_100003F64(&qword_1016B15F8, type metadata accessor for MemberPeerTrust);
    v32 = isa;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v32)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v35 = v34;
      v36 = a2;
      v37 = v33;

      objc_autoreleasePoolPop(v27);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v37, v35, 0);
      v83 = v36;
      v72 = v37;
      v73 = v35;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694F30 != -1)
      {
        swift_once();
      }

      v43 = v82;
      v44 = sub_1000076D4(v82, qword_10177C1D0);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v45 = *(v31 + 20);
      v46 = v75;
      (*(v75 + 16))();
      v47 = v84;
      (*(v84 + 16))(v15, v44, v43);
      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v76;
      URL.appendingPathExtension(_:)();
      v50 = *(v47 + 8);
      v50(v12, v43);
      objc_autoreleasePoolPop(v48);
      v84 = v47 + 8;
      v71 = v50;
      v50(v15, v43);
      (*(v46 + 8))(v80, v81);
      v51 = v77;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v82);
        sub_100A1B358(v83, v74, type metadata accessor for MemberPeerTrust);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v57);
      }
    }
  }
}

void sub_1009F51C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v76 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for OwnerPeerTrust();
    sub_100003F64(&qword_10169D948, type metadata accessor for OwnerPeerTrust);
    v32 = isa;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v32)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v35 = v34;
      v36 = a2;
      v37 = v33;

      objc_autoreleasePoolPop(v27);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v37, v35, 0);
      v83 = v36;
      v72 = v37;
      v73 = v35;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694568 != -1)
      {
        swift_once();
      }

      v43 = v82;
      v44 = sub_1000076D4(v82, qword_10177A918);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v45 = *(v31 + 20);
      v46 = v75;
      (*(v75 + 16))();
      v47 = v84;
      (*(v84 + 16))(v15, v44, v43);
      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v76;
      URL.appendingPathExtension(_:)();
      v50 = *(v47 + 8);
      v50(v12, v43);
      objc_autoreleasePoolPop(v48);
      v84 = v47 + 8;
      v71 = v50;
      v50(v15, v43);
      (*(v46 + 8))(v80, v81);
      v51 = v77;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v82);
        sub_100A1B358(v83, v74, type metadata accessor for OwnerPeerTrust);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v57);
      }
    }
  }
}

void sub_1009F5C6C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  __chkstk_darwin(v4);
  v76 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v80 = *(v7 - 8);
  *&v81 = v7;
  v8 = *(v80 + 64);
  __chkstk_darwin(v7);
  v79 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v10 = *(v84 + 64);
  v11 = __chkstk_darwin(v82);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v75 = v71 - v15;
  __chkstk_darwin(v14);
  v17 = v71 - v16;
  v18 = type metadata accessor for SystemInfo.DeviceLockState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v71 - v24;
  static SystemInfo.lockState.getter();
  (*(v19 + 104))(v23, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v18);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v19 + 8);
  v26(v23, v18);
  v26(v25, v18);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = type metadata accessor for PropertyListEncoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v32 = type metadata accessor for OwnedDeviceKeyRecord();
    sub_100003F64(&unk_1016B1570, type metadata accessor for OwnedDeviceKeyRecord);
    v33 = isa;
    v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v33)
    {

      objc_autoreleasePoolPop(v28);
    }

    else
    {
      v36 = v34;
      v37 = v35;

      objc_autoreleasePoolPop(v28);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v36, v37, 0);
      v73 = v36;
      v83 = v37;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      v72 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v43 = *(v32 + 24);
      if (qword_101695268 != -1)
      {
        swift_once();
      }

      v44 = v82;
      v71[2] = sub_1000076D4(v82, qword_10177C680);
      v71[1] = v43;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v46 = v84 + 8;
      v45 = *(v84 + 8);
      v45(v17, v44);
      (*(v80 + 16))(v79, a2 + *(v32 + 20), v81);
      v71[0] = a2;
      v47 = v44;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v75;
      URL.appendingPathExtension(_:)();
      v45(v13, v47);
      objc_autoreleasePoolPop(v48);
      v84 = v46;
      v72 = v45;
      v45(v17, v47);
      v50 = v49;
      (*(v80 + 8))(v79, v81);
      v51 = v76;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v73, v83);

        (*(v77 + 8))(v51, v78);
        v72(v50, v57);
        sub_100A1B358(v71[0], v74, type metadata accessor for OwnedDeviceKeyRecord);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v73, v83);

        (*(v77 + 8))(v51, v78);
        v72(v50, v57);
      }
    }
  }
}

void sub_1009F6760(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  isa = a1;
  v76 = a3;
  v5 = type metadata accessor for URLResourceValues();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  __chkstk_darwin(v5);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v84 = type metadata accessor for UUID();
  v78 = *(v84 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v84);
  v83 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for URL();
  v87 = *(v85 - 8);
  v10 = *(v87 + 8);
  v11 = __chkstk_darwin(v85);
  v77 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v79 = &v70 - v14;
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v89 == v88)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for KeyAlignmentRecord();
    sub_100003F64(&qword_1016B1580, type metadata accessor for KeyAlignmentRecord);
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v34 = v32;
      v35 = v33;

      objc_autoreleasePoolPop(v27);
      v36 = *(isa + 3);
      v37 = sub_1010B6FB0(v34, v35, 0);
      v74 = v34;
      v75 = v35;
      v38 = v37;
      v40 = v39;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v38, v40);
      v73 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v41 = *(v31 + 24);
      v71 = objc_autoreleasePoolPush();
      if (qword_101694460 != -1)
      {
        swift_once();
      }

      v42 = v85;
      v72 = sub_1000076D4(v85, qword_10177A500);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v71);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v44 = v87 + 8;
      v43 = *(v87 + 1);
      v43(v16, v42);
      v45 = v78;
      (*(v78 + 16))(v83, a2 + *(v31 + 20), v84);
      v87 = objc_autoreleasePoolPush();
      v73 = a2;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v87);
      v87 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      v46 = v77;
      URL.appendingPathComponent(_:)();

      v47 = v79;
      URL.appendingPathExtension(_:)();
      v48 = v46;
      v49 = v85;
      v43(v48, v85);
      objc_autoreleasePoolPop(v87);
      v87 = v44;
      v77 = v43;
      v43(v16, v49);
      v50 = v47;
      (*(v45 + 8))(v83, v84);
      v51 = v80;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v84 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v57;
      *(v56 + 40) = v59;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v84;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v61 = NSFileProtectionKey;
      v62 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v63 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v64 = [objc_opt_self() defaultManager];
      sub_100695108(v63);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v65 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v66 = String._bridgeToObjectiveC()();

      v89 = 0;
      LODWORD(v57) = [v64 setAttributes:v65 ofItemAtPath:v66 error:&v89];

      if (v57)
      {
        v67 = v89;
        URL.setResourceValues(_:)();
        v68 = isa;
        sub_100016590(v74, v75);

        (*(v81 + 8))(v51, v82);
        (v77)(v50, v49);
        sub_100A1B358(v73, v76, type metadata accessor for KeyAlignmentRecord);
      }

      else
      {
        v69 = v89;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v74, v75);

        (*(v81 + 8))(v51, v82);
        (v77)(v50, v49);
      }
    }
  }
}

void sub_1009F727C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a1;
  v78 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  __chkstk_darwin(v4);
  v82 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v85 = *(v7 - 8);
  *&v86 = v7;
  v8 = *(v85 + 64);
  __chkstk_darwin(v7);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for URL();
  v88 = *(v81 - 8);
  v10 = *(v88 + 64);
  v11 = __chkstk_darwin(v81);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v80 = &v72 - v15;
  __chkstk_darwin(v14);
  v17 = &v72 - v16;
  v18 = type metadata accessor for SystemInfo.DeviceLockState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v72 - v24;
  static SystemInfo.lockState.getter();
  (*(v19 + 104))(v23, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v18);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v19 + 8);
  v26(v23, v18);
  v26(v25, v18);
  if (v91 == v90)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = type metadata accessor for PropertyListEncoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v32 = type metadata accessor for LostModeRecord();
    sub_100003F64(&qword_1016B15E8, type metadata accessor for LostModeRecord);
    v33 = isa;
    v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v33)
    {

      objc_autoreleasePoolPop(v28);
    }

    else
    {
      v36 = v34;
      v37 = v35;

      objc_autoreleasePoolPop(v28);
      v38 = *(v87 + 24);
      v39 = sub_1010B6FB0(v36, v37, 0);
      v76 = v36;
      v77 = v37;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      v87 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v43 = v81;
      v75 = sub_1000076D4(v81, qword_10177C140);
      v74 = *(v32 + 24);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v44 = v88 + 8;
      v87 = *(v88 + 8);
      (v87)(v17, v43);
      v45 = a2 + *(v32 + 20);
      v46 = v79;
      (*(v85 + 16))(v79, v45, v86);
      v73 = a2;
      v47 = v43;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v48 = objc_autoreleasePoolPush();
      v49 = v46;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v50 = v80;
      URL.appendingPathExtension(_:)();
      v51 = v87;
      (v87)(v13, v47);
      objc_autoreleasePoolPop(v48);
      v88 = v44;
      v51(v17, v47);
      v52 = v50;
      (*(v85 + 8))(v49, v86);
      v53 = v82;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v54 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v55);
      v57 = v56;
      [(objc_class *)isa writeToURL:v56 atomically:1];

      objc_autoreleasePoolPop(v54);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v58 = swift_allocObject();
      v86 = xmmword_101385D80;
      *(v58 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      *(v58 + 56) = &type metadata for String;
      *(v58 + 64) = sub_100008C00();
      *(v58 + 32) = v59;
      *(v58 + 40) = v61;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v86;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v63 = NSFileProtectionKey;
      v64 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v65 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v66 = [objc_opt_self() defaultManager];
      sub_100695108(v65);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v67 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v68 = String._bridgeToObjectiveC()();

      v91 = 0;
      LODWORD(v59) = [v66 setAttributes:v67 ofItemAtPath:v68 error:&v91];

      if (v59)
      {
        v69 = v91;
        URL.setResourceValues(_:)();
        v70 = isa;
        sub_100016590(v76, v77);

        (*(v83 + 8))(v53, v84);
        (v87)(v52, v47);
        sub_100A1B358(v73, v78, type metadata accessor for LostModeRecord);
      }

      else
      {
        v71 = v91;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v76, v77);

        (*(v83 + 8))(v53, v84);
        (v87)(v52, v47);
      }
    }
  }
}

void sub_1009F7D6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v76 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for SafeLocation();
    sub_100003F64(&unk_1016B14D0, type metadata accessor for SafeLocation);
    v32 = isa;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v32)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v35 = v34;
      v36 = a2;
      v37 = v33;

      objc_autoreleasePoolPop(v27);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v37, v35, 0);
      v83 = v36;
      v72 = v37;
      v73 = v35;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v43 = v82;
      v44 = sub_1000076D4(v82, qword_10177C268);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v45 = *(v31 + 20);
      v46 = v75;
      (*(v75 + 16))();
      v47 = v84;
      (*(v84 + 16))(v15, v44, v43);
      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v76;
      URL.appendingPathExtension(_:)();
      v50 = *(v47 + 8);
      v50(v12, v43);
      objc_autoreleasePoolPop(v48);
      v84 = v47 + 8;
      v71 = v50;
      v50(v15, v43);
      (*(v46 + 8))(v80, v81);
      v51 = v77;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v82);
        sub_100A1B358(v83, v74, type metadata accessor for SafeLocation);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v57);
      }
    }
  }
}

void sub_1009F8818(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v76 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for LeashRecord();
    sub_100003F64(&qword_1016B1518, type metadata accessor for LeashRecord);
    v32 = isa;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v32)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v35 = v34;
      v36 = a2;
      v37 = v33;

      objc_autoreleasePoolPop(v27);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v37, v35, 0);
      v83 = v36;
      v72 = v37;
      v73 = v35;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_1016954B8 != -1)
      {
        swift_once();
      }

      v43 = v82;
      v44 = sub_1000076D4(v82, qword_10177CDB8);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v45 = *(v31 + 20);
      v46 = v75;
      (*(v75 + 16))();
      v47 = v84;
      (*(v84 + 16))(v15, v44, v43);
      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v76;
      URL.appendingPathExtension(_:)();
      v50 = *(v47 + 8);
      v50(v12, v43);
      objc_autoreleasePoolPop(v48);
      v84 = v47 + 8;
      v71 = v50;
      v50(v15, v43);
      (*(v46 + 8))(v80, v81);
      v51 = v77;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v82);
        sub_100A1B358(v83, v74, type metadata accessor for LeashRecord);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v57);
      }
    }
  }
}

void sub_1009F92C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a1;
  v78 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  __chkstk_darwin(v4);
  v82 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v85 = *(v7 - 8);
  *&v86 = v7;
  v8 = *(v85 + 64);
  __chkstk_darwin(v7);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for URL();
  v88 = *(v81 - 8);
  v10 = *(v88 + 64);
  v11 = __chkstk_darwin(v81);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v80 = &v72 - v15;
  __chkstk_darwin(v14);
  v17 = &v72 - v16;
  v18 = type metadata accessor for SystemInfo.DeviceLockState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v72 - v24;
  static SystemInfo.lockState.getter();
  (*(v19 + 104))(v23, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v18);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v19 + 8);
  v26(v23, v18);
  v26(v25, v18);
  if (v91 == v90)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = type metadata accessor for PropertyListEncoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    found = type metadata accessor for NotifyWhenFoundRecord();
    sub_100003F64(&qword_1016A2798, type metadata accessor for NotifyWhenFoundRecord);
    v33 = isa;
    v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v33)
    {

      objc_autoreleasePoolPop(v28);
    }

    else
    {
      v36 = v34;
      v37 = v35;

      objc_autoreleasePoolPop(v28);
      v38 = *(v87 + 24);
      v39 = sub_1010B6FB0(v36, v37, 0);
      v76 = v36;
      v77 = v37;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      v87 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_1016947A0 != -1)
      {
        swift_once();
      }

      v43 = v81;
      v75 = sub_1000076D4(v81, qword_10177AEC8);
      v74 = *(found + 24);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v44 = v88 + 8;
      v87 = *(v88 + 8);
      (v87)(v17, v43);
      v45 = a2 + *(found + 20);
      v46 = v79;
      (*(v85 + 16))(v79, v45, v86);
      v73 = a2;
      v47 = v43;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v48 = objc_autoreleasePoolPush();
      v49 = v46;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v50 = v80;
      URL.appendingPathExtension(_:)();
      v51 = v87;
      (v87)(v13, v47);
      objc_autoreleasePoolPop(v48);
      v88 = v44;
      v51(v17, v47);
      v52 = v50;
      (*(v85 + 8))(v49, v86);
      v53 = v82;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v54 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v55);
      v57 = v56;
      [(objc_class *)isa writeToURL:v56 atomically:1];

      objc_autoreleasePoolPop(v54);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v58 = swift_allocObject();
      v86 = xmmword_101385D80;
      *(v58 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      *(v58 + 56) = &type metadata for String;
      *(v58 + 64) = sub_100008C00();
      *(v58 + 32) = v59;
      *(v58 + 40) = v61;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v86;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v63 = NSFileProtectionKey;
      v64 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v65 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v66 = [objc_opt_self() defaultManager];
      sub_100695108(v65);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v67 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v68 = String._bridgeToObjectiveC()();

      v91 = 0;
      LODWORD(v59) = [v66 setAttributes:v67 ofItemAtPath:v68 error:&v91];

      if (v59)
      {
        v69 = v91;
        URL.setResourceValues(_:)();
        v70 = isa;
        sub_100016590(v76, v77);

        (*(v83 + 8))(v53, v84);
        (v87)(v52, v47);
        sub_100A1B358(v73, v78, type metadata accessor for NotifyWhenFoundRecord);
      }

      else
      {
        v71 = v91;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v76, v77);

        (*(v83 + 8))(v53, v84);
        (v87)(v52, v47);
      }
    }
  }
}

void sub_1009F9DB4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a1;
  v85 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v91 = *(v4 - 8);
  v92 = v4;
  v5 = *(v91 + 64);
  __chkstk_darwin(v4);
  v90 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v93 = type metadata accessor for UUID();
  v88 = *(v93 - 8);
  v7 = *(v88 + 64);
  __chkstk_darwin(v93);
  v87 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v86 = (&v81 - v15);
  v16 = __chkstk_darwin(v14);
  v89 = &v81 - v17;
  __chkstk_darwin(v16);
  v19 = &v81 - v18;
  v20 = type metadata accessor for SystemInfo.DeviceLockState();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v81 - v26;
  static SystemInfo.lockState.getter();
  (*(v21 + 104))(v25, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v20);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v28 = *(v21 + 8);
  v28(v25, v20);
  v28(v27, v20);
  if (v99 == v98)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = type metadata accessor for PropertyListEncoder();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v34 = type metadata accessor for BeaconNamingRecord();
    sub_100003F64(&qword_1016B1528, type metadata accessor for BeaconNamingRecord);
    v35 = isa;
    v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v35)
    {

      objc_autoreleasePoolPop(v30);
    }

    else
    {
      v38 = v36;
      v39 = v37;

      objc_autoreleasePoolPop(v30);
      v40 = *(v94 + 24);
      v41 = sub_1010B6FB0(v38, v39, 0);
      v84 = v38;
      v94 = v39;
      v42 = v41;
      v44 = v43;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v42, v44);
      v45 = *(v34 + 24);
      v46 = objc_autoreleasePoolPush();
      sub_100DE1148(v19);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      objc_autoreleasePoolPop(v46);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v48 = v95 + 8;
      v47 = *(v95 + 8);
      v47(v19, v96);
      v49 = *(v34 + 20);
      v50 = v87;
      v51 = v88;
      (*(v88 + 16))(v87, a2 + v49, v93);
      v52 = objc_autoreleasePoolPush();
      v53 = v86;
      sub_100DE1148(v86);
      v83 = 0;
      v82 = a2;
      objc_autoreleasePoolPop(v52);
      v54 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      v55 = v50;
      URL.appendingPathComponent(_:)();

      v56 = v89;
      URL.appendingPathExtension(_:)();
      v57 = v96;
      v47(v13, v96);
      v58 = v54;
      v59 = v56;
      objc_autoreleasePoolPop(v58);
      v86 = v47;
      v47(v53, v57);
      (*(v51 + 8))(v55, v93);
      v60 = v90;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v61 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v62);
      v64 = v63;
      [(objc_class *)isa writeToURL:v63 atomically:1];

      objc_autoreleasePoolPop(v61);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v95 = v48;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v65 = swift_allocObject();
      v93 = xmmword_101385D80;
      *(v65 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v66 = v96;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      *(v65 + 56) = &type metadata for String;
      *(v65 + 64) = sub_100008C00();
      *(v65 + 32) = v67;
      *(v65 + 40) = v69;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v93;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v71 = NSFileProtectionKey;
      v72 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v73 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v74 = [objc_opt_self() defaultManager];
      sub_100695108(v73);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v75 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v76 = String._bridgeToObjectiveC()();

      v99 = 0;
      LODWORD(v67) = [v74 setAttributes:v75 ofItemAtPath:v76 error:&v99];

      if (v67)
      {
        v77 = v99;
        v78 = v83;
        URL.setResourceValues(_:)();
        v79 = v86;
        sub_100016590(v84, v94);

        (*(v91 + 8))(v60, v92);
        v79(v59, v96);
        if (!v78)
        {
          sub_100A1B358(v82, v85, type metadata accessor for BeaconNamingRecord);
        }
      }

      else
      {
        v80 = v99;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v84, v94);

        (*(v91 + 8))(v60, v92);
        v86(v59, v66);
      }
    }
  }
}

void sub_1009FA8B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a1;
  v78 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  __chkstk_darwin(v4);
  v82 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v85 = *(v7 - 8);
  *&v86 = v7;
  v8 = *(v85 + 64);
  __chkstk_darwin(v7);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for URL();
  v88 = *(v81 - 8);
  v10 = *(v88 + 64);
  v11 = __chkstk_darwin(v81);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v80 = &v72 - v15;
  __chkstk_darwin(v14);
  v17 = &v72 - v16;
  v18 = type metadata accessor for SystemInfo.DeviceLockState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v72 - v24;
  static SystemInfo.lockState.getter();
  (*(v19 + 104))(v23, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v18);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v19 + 8);
  v26(v23, v18);
  v26(v25, v18);
  if (v91 == v90)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = type metadata accessor for PropertyListEncoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v32 = type metadata accessor for ShareRecord();
    sub_100003F64(&unk_101698240, type metadata accessor for ShareRecord);
    v33 = isa;
    v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v33)
    {

      objc_autoreleasePoolPop(v28);
    }

    else
    {
      v36 = v34;
      v37 = v35;

      objc_autoreleasePoolPop(v28);
      v38 = *(v87 + 24);
      v39 = sub_1010B6FB0(v36, v37, 0);
      v76 = v36;
      v77 = v37;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      v87 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v43 = v81;
      v75 = sub_1000076D4(v81, qword_10177A518);
      v74 = *(v32 + 24);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v44 = v88 + 8;
      v87 = *(v88 + 8);
      (v87)(v17, v43);
      v45 = a2 + *(v32 + 20);
      v46 = v79;
      (*(v85 + 16))(v79, v45, v86);
      v73 = a2;
      v47 = v43;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v48 = objc_autoreleasePoolPush();
      v49 = v46;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v50 = v80;
      URL.appendingPathExtension(_:)();
      v51 = v87;
      (v87)(v13, v47);
      objc_autoreleasePoolPop(v48);
      v88 = v44;
      v51(v17, v47);
      v52 = v50;
      (*(v85 + 8))(v49, v86);
      v53 = v82;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v54 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v55);
      v57 = v56;
      [(objc_class *)isa writeToURL:v56 atomically:1];

      objc_autoreleasePoolPop(v54);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v58 = swift_allocObject();
      v86 = xmmword_101385D80;
      *(v58 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      *(v58 + 56) = &type metadata for String;
      *(v58 + 64) = sub_100008C00();
      *(v58 + 32) = v59;
      *(v58 + 40) = v61;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v86;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v63 = NSFileProtectionKey;
      v64 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v65 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v66 = [objc_opt_self() defaultManager];
      sub_100695108(v65);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v67 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v68 = String._bridgeToObjectiveC()();

      v91 = 0;
      LODWORD(v59) = [v66 setAttributes:v67 ofItemAtPath:v68 error:&v91];

      if (v59)
      {
        v69 = v91;
        URL.setResourceValues(_:)();
        v70 = isa;
        sub_100016590(v76, v77);

        (*(v83 + 8))(v53, v84);
        (v87)(v52, v47);
        sub_100A1B358(v73, v78, type metadata accessor for ShareRecord);
      }

      else
      {
        v71 = v91;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v76, v77);

        (*(v83 + 8))(v53, v84);
        (v87)(v52, v47);
      }
    }
  }
}

void sub_1009FB3A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v76 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for OwnedBeaconGroup(0);
    sub_100003F64(&qword_1016A4138, type metadata accessor for OwnedBeaconGroup);
    v32 = isa;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v32)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v35 = v34;
      v36 = a2;
      v37 = v33;

      objc_autoreleasePoolPop(v27);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v37, v35, 0);
      v83 = v36;
      v72 = v37;
      v73 = v35;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v43 = v82;
      v44 = sub_1000076D4(v82, qword_10177AEF8);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v45 = *(v31 + 24);
      v46 = v75;
      (*(v75 + 16))();
      v47 = v84;
      (*(v84 + 16))(v15, v44, v43);
      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v76;
      URL.appendingPathExtension(_:)();
      v50 = *(v47 + 8);
      v50(v12, v43);
      objc_autoreleasePoolPop(v48);
      v84 = v47 + 8;
      v71 = v50;
      v50(v15, v43);
      (*(v46 + 8))(v80, v81);
      v51 = v77;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v82);
        sub_100A1B358(v83, v74, type metadata accessor for OwnedBeaconGroup);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v57);
      }
    }
  }
}

void sub_1009FBE54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v76 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for SharedBeaconRecord(0);
    sub_100003F64(&qword_1016A4918, type metadata accessor for SharedBeaconRecord);
    v32 = isa;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v32)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v35 = v34;
      v36 = a2;
      v37 = v33;

      objc_autoreleasePoolPop(v27);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v37, v35, 0);
      v83 = v36;
      v72 = v37;
      v73 = v35;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v43 = v82;
      v44 = sub_1000076D4(v82, qword_10177CD50);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v45 = *(v31 + 20);
      v46 = v75;
      (*(v75 + 16))();
      v47 = v84;
      (*(v84 + 16))(v15, v44, v43);
      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v76;
      URL.appendingPathExtension(_:)();
      v50 = *(v47 + 8);
      v50(v12, v43);
      objc_autoreleasePoolPop(v48);
      v84 = v47 + 8;
      v71 = v50;
      v50(v15, v43);
      (*(v46 + 8))(v80, v81);
      v51 = v77;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v82);
        sub_100A1B358(v83, v74, type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v57);
      }
    }
  }
}

void sub_1009FC900(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v76 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for OwnedBeaconRecord();
    sub_100003F64(&qword_1016B1538, type metadata accessor for OwnedBeaconRecord);
    v32 = isa;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v32)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v35 = v34;
      v36 = a2;
      v37 = v33;

      objc_autoreleasePoolPop(v27);
      v38 = *(v83 + 24);
      v39 = sub_1010B6FB0(v37, v35, 0);
      v83 = v36;
      v72 = v37;
      v73 = v35;
      v40 = v39;
      v42 = v41;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v40, v42);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v43 = v82;
      v44 = sub_1000076D4(v82, qword_10177C070);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v45 = *(v31 + 20);
      v46 = v75;
      (*(v75 + 16))();
      v47 = v84;
      (*(v84 + 16))(v15, v44, v43);
      v48 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v49 = v76;
      URL.appendingPathExtension(_:)();
      v50 = *(v47 + 8);
      v50(v12, v43);
      objc_autoreleasePoolPop(v48);
      v84 = v47 + 8;
      v71 = v50;
      v50(v15, v43);
      (*(v46 + 8))(v80, v81);
      v51 = v77;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v52 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      [(objc_class *)isa writeToURL:v54 atomically:1];

      objc_autoreleasePoolPop(v52);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      v81 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v57 = v82;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = NSFileProtectionKey;
      v63 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v64 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v65 = [objc_opt_self() defaultManager];
      sub_100695108(v64);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v66 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v67 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v65 setAttributes:v66 ofItemAtPath:v67 error:&v87];

      if (v58)
      {
        v68 = v87;
        URL.setResourceValues(_:)();
        v69 = isa;
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v82);
        sub_100A1B358(v83, v74, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v72, v73);

        (*(v78 + 8))(v51, v79);
        v71(v49, v57);
      }
    }
  }
}

void sub_1009FD3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a1;
  v71 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78 = type metadata accessor for UUID();
  v72 = *(v78 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v78);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for URL();
  v81 = *(v79 - 8);
  v9 = *(v81 + 64);
  v10 = __chkstk_darwin(v79);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v68 - v14;
  __chkstk_darwin(v13);
  v73 = &v68 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v68 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v84 == v83)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for BeaconProductInfoRecord();
    sub_100003F64(&qword_1016AAC20, type metadata accessor for BeaconProductInfoRecord);
    v31 = isa;
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v31)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v34 = v32;
      v35 = v33;

      objc_autoreleasePoolPop(v27);
      v36 = *(v80 + 24);
      v37 = sub_1010B6FB0(v34, v35, 0);
      v80 = a2;
      v69 = v34;
      v70 = v35;
      v38 = v37;
      v40 = v39;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v38, v40);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694970 != -1)
      {
        swift_once();
      }

      v41 = v79;
      v42 = sub_1000076D4(v79, qword_10177B398);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v43 = v72;
      (*(v72 + 16))();
      v44 = v81;
      (*(v81 + 16))(v15, v42, v41);
      v45 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v46 = v73;
      URL.appendingPathExtension(_:)();
      v47 = *(v44 + 8);
      v47(v12, v41);
      objc_autoreleasePoolPop(v45);
      v81 = v44 + 8;
      v68 = v47;
      v47(v15, v41);
      (*(v43 + 8))(v77, v78);
      v48 = v74;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v49 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      [(objc_class *)isa writeToURL:v51 atomically:1];

      objc_autoreleasePoolPop(v49);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v53 = swift_allocObject();
      v78 = xmmword_101385D80;
      *(v53 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v54 = v79;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = sub_100008C00();
      *(v53 + 32) = v55;
      *(v53 + 40) = v57;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v78;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = NSFileProtectionKey;
      v60 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v61 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v62 = [objc_opt_self() defaultManager];
      sub_100695108(v61);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v63 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v64 = String._bridgeToObjectiveC()();

      v84 = 0;
      LODWORD(v55) = [v62 setAttributes:v63 ofItemAtPath:v64 error:&v84];

      if (v55)
      {
        v65 = v84;
        URL.setResourceValues(_:)();
        v66 = isa;
        sub_100016590(v69, v70);

        (*(v75 + 8))(v48, v76);
        v68(v46, v79);
        sub_100A1B358(v80, v71, type metadata accessor for BeaconProductInfoRecord);
      }

      else
      {
        v67 = v84;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v69, v70);

        (*(v75 + 8))(v48, v76);
        v68(v46, v54);
      }
    }
  }
}

void sub_1009FDE4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a1;
  v71 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78 = type metadata accessor for UUID();
  v72 = *(v78 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v78);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for URL();
  v81 = *(v79 - 8);
  v9 = *(v81 + 64);
  v10 = __chkstk_darwin(v79);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v68 - v14;
  __chkstk_darwin(v13);
  v73 = &v68 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v68 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v84 == v83)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for PairingErrorRecord(0);
    sub_100003F64(&unk_1016B1850, type metadata accessor for PairingErrorRecord);
    v31 = isa;
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v31)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v34 = v32;
      v35 = v33;

      objc_autoreleasePoolPop(v27);
      v36 = *(v80 + 24);
      v37 = sub_1010B6FB0(v34, v35, 0);
      v80 = a2;
      v69 = v34;
      v70 = v35;
      v38 = v37;
      v40 = v39;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v38, v40);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694E68 != -1)
      {
        swift_once();
      }

      v41 = v79;
      v42 = sub_1000076D4(v79, qword_10177C048);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v43 = v72;
      (*(v72 + 16))();
      v44 = v81;
      (*(v81 + 16))(v15, v42, v41);
      v45 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v46 = v73;
      URL.appendingPathExtension(_:)();
      v47 = *(v44 + 8);
      v47(v12, v41);
      objc_autoreleasePoolPop(v45);
      v81 = v44 + 8;
      v68 = v47;
      v47(v15, v41);
      (*(v43 + 8))(v77, v78);
      v48 = v74;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v49 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      [(objc_class *)isa writeToURL:v51 atomically:1];

      objc_autoreleasePoolPop(v49);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v53 = swift_allocObject();
      v78 = xmmword_101385D80;
      *(v53 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v54 = v79;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = sub_100008C00();
      *(v53 + 32) = v55;
      *(v53 + 40) = v57;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v78;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = NSFileProtectionKey;
      v60 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v61 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v62 = [objc_opt_self() defaultManager];
      sub_100695108(v61);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v63 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v64 = String._bridgeToObjectiveC()();

      v84 = 0;
      LODWORD(v55) = [v62 setAttributes:v63 ofItemAtPath:v64 error:&v84];

      if (v55)
      {
        v65 = v84;
        URL.setResourceValues(_:)();
        v66 = isa;
        sub_100016590(v69, v70);

        (*(v75 + 8))(v48, v76);
        v68(v46, v79);
        sub_100A1B358(v80, v71, type metadata accessor for PairingErrorRecord);
      }

      else
      {
        v67 = v84;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v69, v70);

        (*(v75 + 8))(v48, v76);
        v68(v46, v54);
      }
    }
  }
}

void sub_1009FE8EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a1;
  v71 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78 = type metadata accessor for UUID();
  v72 = *(v78 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v78);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for URL();
  v81 = *(v79 - 8);
  v9 = *(v81 + 64);
  v10 = __chkstk_darwin(v79);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v68 - v14;
  __chkstk_darwin(v13);
  v73 = &v68 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v68 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v84 == v83)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for WildModeAssociationRecord(0);
    sub_100003F64(&qword_10169D478, type metadata accessor for WildModeAssociationRecord);
    v31 = isa;
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v31)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v34 = v32;
      v35 = v33;

      objc_autoreleasePoolPop(v27);
      v36 = *(v80 + 24);
      v37 = sub_1010B6FB0(v34, v35, 0);
      v80 = a2;
      v69 = v34;
      v70 = v35;
      v38 = v37;
      v40 = v39;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v38, v40);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v41 = v79;
      v42 = sub_1000076D4(v79, qword_10177A8D0);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v43 = v72;
      (*(v72 + 16))();
      v44 = v81;
      (*(v81 + 16))(v15, v42, v41);
      v45 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v46 = v73;
      URL.appendingPathExtension(_:)();
      v47 = *(v44 + 8);
      v47(v12, v41);
      objc_autoreleasePoolPop(v45);
      v81 = v44 + 8;
      v68 = v47;
      v47(v15, v41);
      (*(v43 + 8))(v77, v78);
      v48 = v74;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v49 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      [(objc_class *)isa writeToURL:v51 atomically:1];

      objc_autoreleasePoolPop(v49);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v53 = swift_allocObject();
      v78 = xmmword_101385D80;
      *(v53 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v54 = v79;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = sub_100008C00();
      *(v53 + 32) = v55;
      *(v53 + 40) = v57;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v78;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = NSFileProtectionKey;
      v60 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v61 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v62 = [objc_opt_self() defaultManager];
      sub_100695108(v61);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v63 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v64 = String._bridgeToObjectiveC()();

      v84 = 0;
      LODWORD(v55) = [v62 setAttributes:v63 ofItemAtPath:v64 error:&v84];

      if (v55)
      {
        v65 = v84;
        URL.setResourceValues(_:)();
        v66 = isa;
        sub_100016590(v69, v70);

        (*(v75 + 8))(v48, v76);
        v68(v46, v79);
        sub_100A1B358(v80, v71, type metadata accessor for WildModeAssociationRecord);
      }

      else
      {
        v67 = v84;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v69, v70);

        (*(v75 + 8))(v48, v76);
        v68(v46, v54);
      }
    }
  }
}

void sub_1009FF38C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  __chkstk_darwin(v4);
  v81 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UUID();
  *&v79 = *(v75 - 8);
  v7 = *(v79 + 64);
  __chkstk_darwin(v75);
  v78 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v80 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for AccessoryMetadataRecord();
    sub_100003F64(&qword_1016B1738, type metadata accessor for AccessoryMetadataRecord);
    v31 = isa;
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v31)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v34 = v32;
      v35 = v33;

      objc_autoreleasePoolPop(v27);
      v36 = *(v83 + 24);
      v37 = sub_1010B6FB0(v34, v35, 0);
      v73 = v34;
      v83 = v35;
      v38 = v37;
      v40 = v39;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v38, v40);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_1016951F0 != -1)
      {
        swift_once();
      }

      v41 = v82;
      v42 = sub_1000076D4(v82, qword_10177C590);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v43 = *(v79 + 16);
      v72 = a2;
      v44 = v75;
      v43();
      v45 = v84;
      (*(v84 + 16))(v15, v42, v41);
      v46 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      URL.appendingPathExtension(_:)();
      v47 = *(v45 + 8);
      v47(v12, v41);
      objc_autoreleasePoolPop(v46);
      v48 = v41;
      v49 = v47;
      v84 = v45 + 8;
      v47(v15, v48);
      (*(v79 + 8))(v78, v44);
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v50 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v51);
      v53 = v52;
      [(objc_class *)isa writeToURL:v52 atomically:1];

      objc_autoreleasePoolPop(v50);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      v79 = xmmword_101385D80;
      *(v54 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v55 = v82;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = sub_100008C00();
      *(v54 + 32) = v56;
      *(v54 + 40) = v58;
      v59 = v80;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v79;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v61 = NSFileProtectionKey;
      v62 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v63 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v64 = [objc_opt_self() defaultManager];
      sub_100695108(v63);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v65 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v66 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v64 setAttributes:v65 ofItemAtPath:v66 error:&v87];

      if (v58)
      {
        v67 = v87;
        v68 = v81;
        URL.setResourceValues(_:)();
        v69 = isa;
        (*(v76 + 8))(v68, v77);

        sub_100016590(v73, v83);
        sub_100A1B358(v72, v74, type metadata accessor for AccessoryMetadataRecord);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v73, v83);

        (*(v76 + 8))(v81, v77);
      }

      v49(v59, v55);
    }
  }
}

void sub_1009FFDFC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v74 = a3;
  v4 = type metadata accessor for URLResourceValues();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  __chkstk_darwin(v4);
  v81 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UUID();
  *&v79 = *(v75 - 8);
  v7 = *(v79 + 64);
  __chkstk_darwin(v75);
  v78 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v84 = *(v82 - 8);
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v82);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v80 = &v71 - v16;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v87 == v86)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for SessionTokenRecord();
    sub_100003F64(&qword_1016ADBF0, type metadata accessor for SessionTokenRecord);
    v31 = isa;
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v31)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v34 = v32;
      v35 = v33;

      objc_autoreleasePoolPop(v27);
      v36 = *(v83 + 24);
      v37 = sub_1010B6FB0(v34, v35, 0);
      v73 = v34;
      v83 = v35;
      v38 = v37;
      v40 = v39;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v38, v40);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      if (qword_101694A68 != -1)
      {
        swift_once();
      }

      v41 = v82;
      v42 = sub_1000076D4(v82, qword_10177B608);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v43 = *(v79 + 16);
      v72 = a2;
      v44 = v75;
      v43();
      v45 = v84;
      (*(v84 + 16))(v15, v42, v41);
      v46 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      URL.appendingPathExtension(_:)();
      v47 = *(v45 + 8);
      v47(v12, v41);
      objc_autoreleasePoolPop(v46);
      v48 = v41;
      v49 = v47;
      v84 = v45 + 8;
      v47(v15, v48);
      (*(v79 + 8))(v78, v44);
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v50 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v51);
      v53 = v52;
      [(objc_class *)isa writeToURL:v52 atomically:1];

      objc_autoreleasePoolPop(v50);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      v79 = xmmword_101385D80;
      *(v54 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v55 = v82;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = sub_100008C00();
      *(v54 + 32) = v56;
      *(v54 + 40) = v58;
      v59 = v80;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v79;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v61 = NSFileProtectionKey;
      v62 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v63 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v64 = [objc_opt_self() defaultManager];
      sub_100695108(v63);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v65 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v66 = String._bridgeToObjectiveC()();

      v87 = 0;
      LODWORD(v58) = [v64 setAttributes:v65 ofItemAtPath:v66 error:&v87];

      if (v58)
      {
        v67 = v87;
        v68 = v81;
        URL.setResourceValues(_:)();
        v69 = isa;
        (*(v76 + 8))(v68, v77);

        sub_100016590(v73, v83);
        sub_100A1B358(v72, v74, type metadata accessor for SessionTokenRecord);
      }

      else
      {
        v70 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v73, v83);

        (*(v76 + 8))(v81, v77);
      }

      v49(v59, v55);
    }
  }
}

void sub_100A0086C(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  isa = a1;
  v76 = a3;
  v5 = type metadata accessor for URLResourceValues();
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  __chkstk_darwin(v5);
  v79 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v83 = type metadata accessor for UUID();
  v78 = *(v83 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v83);
  v82 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for URL();
  v87 = *(v85 - 8);
  v10 = *(v87 + 8);
  v11 = __chkstk_darwin(v85);
  v77 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v84 = v72 - v14;
  __chkstk_darwin(v13);
  v16 = v72 - v15;
  v17 = type metadata accessor for SystemInfo.DeviceLockState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v72 - v23;
  static SystemInfo.lockState.getter();
  (*(v18 + 104))(v22, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v17);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v18 + 8);
  v25(v22, v17);
  v25(v24, v17);
  if (v89 == v88)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = type metadata accessor for PropertyListEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v31 = type metadata accessor for BeaconEstimatedLocation();
    sub_100003F64(&qword_1016BA0B0, type metadata accessor for BeaconEstimatedLocation);
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v34 = v32;
      v35 = v33;

      objc_autoreleasePoolPop(v27);
      v36 = *(isa + 3);
      v37 = sub_1010B6FB0(v34, v35, 0);
      v74 = v34;
      v75 = v35;
      v38 = v37;
      v40 = v39;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v38, v40);
      v73 = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v41 = *(v31 + 24);
      v72[0] = objc_autoreleasePoolPush();
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v42 = v85;
      v72[1] = sub_1000076D4(v85, qword_10177BF38);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v72[0]);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v44 = v87 + 8;
      v43 = *(v87 + 1);
      v43(v16, v42);
      v45 = *(v31 + 20);
      v46 = v78;
      (*(v78 + 16))(v82, a2 + v45, v83);
      v47 = objc_autoreleasePoolPush();
      v73 = a2;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v47);
      v87 = objc_autoreleasePoolPush();
      v48 = v82;
      UUID.uuidString.getter();
      v49 = v77;
      URL.appendingPathComponent(_:)();

      URL.appendingPathExtension(_:)();
      v50 = v49;
      v51 = v85;
      v43(v50, v85);
      objc_autoreleasePoolPop(v87);
      v77 = v43;
      v87 = v44;
      v43(v16, v51);
      (*(v46 + 8))(v48, v83);
      v52 = v79;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v53 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v54);
      v56 = v55;
      [(objc_class *)isa writeToURL:v55 atomically:1];

      objc_autoreleasePoolPop(v53);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v57 = swift_allocObject();
      v83 = xmmword_101385D80;
      *(v57 + 16) = xmmword_101385D80;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v57 + 56) = &type metadata for String;
      *(v57 + 64) = sub_100008C00();
      *(v57 + 32) = v58;
      *(v57 + 40) = v60;
      v61 = v84;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v83;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v63 = NSFileProtectionKey;
      v64 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v65 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v66 = [objc_opt_self() defaultManager];
      sub_100695108(v65);

      type metadata accessor for FileAttributeKey(0);
      sub_100003F64(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v67 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v68 = String._bridgeToObjectiveC()();

      v89 = 0;
      LODWORD(v60) = [v66 setAttributes:v67 ofItemAtPath:v68 error:&v89];

      if (v60)
      {
        v69 = v89;
        URL.setResourceValues(_:)();
        v70 = isa;
        (*(v80 + 8))(v52, v81);

        sub_100016590(v74, v75);
        sub_100A1B358(v73, v76, type metadata accessor for BeaconEstimatedLocation);
      }

      else
      {
        v71 = v89;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v74, v75);

        (*(v80 + 8))(v52, v81);
      }

      (v77)(v61, v51);
    }
  }
}

uint64_t sub_100A0137C(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v125 = *(v5 - 8);
  v6 = *(v125 + 64);
  __chkstk_darwin(v5);
  v121 = &v119[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v123 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v124 = &v119[-v12];
  v13 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v119[-v15];
  v17 = type metadata accessor for OwnedBeaconRecord();
  v18 = *(*(v17 - 1) + 64);
  __chkstk_darwin(v17);
  v20 = &v119[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100A1B358(a2, v20, type metadata accessor for OwnedBeaconRecord);
  v21 = *a1;
  v128 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v126 = v2;
  v127 = ObjectType;
  if ((sub_1010DF484(v2 + v17[6], &v20[v17[6]]) & 1) == 0)
  {
    v23 = sub_1010DA578();
    *(&v130 + 1) = &type metadata for String;
    v131 = &protocol witness table for String;
    *&v129 = v23;
    *(&v129 + 1) = v24;
    sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v122 = v21;
  v25 = v17[7];
  v26 = *(v13 + 48);
  sub_1000D2A70(v126 + v25, v16, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(&v20[v25], &v16[v26], &qword_1016980D0, &unk_10138F3B0);
  v27 = *(v125 + 48);
  if (v27(v16, 1, v5) == 1)
  {
    if (v27(&v16[v26], 1, v5) == 1)
    {
      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_13;
    }
  }

  else
  {
    v28 = v124;
    sub_1000D2A70(v16, v124, &qword_1016980D0, &unk_10138F3B0);
    if (v27(&v16[v26], 1, v5) != 1)
    {
      v101 = v121;
      (*(v125 + 32))(v121, &v16[v26], v5);
      sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
      v120 = dispatch thunk of static Equatable.== infix(_:_:)();
      v102 = *(v125 + 8);
      v102(v101, v5);
      v102(v124, v5);
      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      if (v120)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    (*(v125 + 8))(v28, v5);
  }

  sub_10000B3A8(v16, &qword_1016AF880, &unk_10138CE20);
LABEL_9:
  v29 = v123;
  sub_1000D2A70(&v20[v25], v123, &qword_1016980D0, &unk_10138F3B0);
  if (v27(v29, 1, v5) == 1)
  {
    sub_10000B3A8(v29, &qword_1016980D0, &unk_10138F3B0);
    v129 = 0u;
    v130 = 0u;
    v131 = 0;
  }

  else
  {
    v30 = UUID.uuidString.getter();
    *(&v130 + 1) = &type metadata for String;
    v131 = &protocol witness table for String;
    *&v129 = v30;
    *(&v129 + 1) = v31;
    (*(v125 + 8))(v29, v5);
  }

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.setter();
LABEL_13:
  v32 = v17[8];
  v33 = type metadata accessor for Date();
  sub_100003F64(&qword_101698290, &type metadata accessor for Date);
  v34 = v126;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    *(&v130 + 1) = v33;
    v131 = &protocol witness table for Date;
    v35 = sub_1000280DC(&v129);
    (*(*(v33 - 8) + 16))(v35, &v20[v32], v33);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v36 = v17[9];
  v37 = *(v34 + v36);
  v38 = *(v34 + v36 + 8);
  v39 = &v20[v36];
  v40 = *&v20[v36];
  v41 = *&v20[v36 + 8];
  sub_100017D5C(v37, v38);
  sub_100017D5C(v40, v41);
  v42 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v37, v38, v40, v41);
  sub_100016590(v40, v41);
  sub_100016590(v37, v38);
  if ((v42 & 1) == 0)
  {
    v43 = *v39;
    v44 = v39[1];
    *(&v130 + 1) = &type metadata for Data;
    v131 = &protocol witness table for Data;
    *&v129 = v43;
    *(&v129 + 1) = v44;
    sub_100017D5C(v43, v44);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v45 = v17[12];
  v46 = *(v34 + v45);
  v47 = *(v34 + v45 + 8);
  v48 = &v20[v45];
  v49 = *&v20[v45];
  v50 = *&v20[v45 + 8];
  sub_100017D5C(v46, v47);
  sub_100017D5C(v49, v50);
  v51 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v46, v47, v49, v50);
  sub_100016590(v49, v50);
  sub_100016590(v46, v47);
  if ((v51 & 1) == 0)
  {
    v52 = *v48;
    v53 = v48[1];
    *(&v130 + 1) = &type metadata for Data;
    v131 = &protocol witness table for Data;
    *&v129 = v52;
    *(&v129 + 1) = v53;
    sub_100017D5C(v52, v53);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v54 = v17[13];
  v55 = *(v34 + v54);
  v56 = *(v34 + v54 + 8);
  v57 = &v20[v54];
  v58 = *&v20[v54];
  v59 = *&v20[v54 + 8];
  sub_100017D5C(v55, v56);
  sub_100017D5C(v58, v59);
  v60 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v55, v56, v58, v59);
  sub_100016590(v58, v59);
  sub_100016590(v55, v56);
  if ((v60 & 1) == 0)
  {
    v61 = *v57;
    v62 = v57[1];
    *(&v130 + 1) = &type metadata for Data;
    v131 = &protocol witness table for Data;
    *&v129 = v61;
    *(&v129 + 1) = v62;
    sub_100017D5C(v61, v62);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v63 = v17[14];
  v64 = v126;
  v65 = *(v126 + v63);
  v66 = *(v126 + v63 + 8);
  v67 = &v20[v63];
  v69 = *v67;
  v68 = v67[1];
  if (v65 != *v67 || v66 != v68)
  {
    v70 = *v67;
    v71 = v67[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(&v130 + 1) = &type metadata for String;
      v131 = &protocol witness table for String;
      *&v129 = v69;
      *(&v129 + 1) = v68;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v72 = v17[15];
  v73 = *(v64 + v72);
  v74 = *(v64 + v72 + 8);
  v75 = &v20[v72];
  v77 = *v75;
  v76 = v75[1];
  if (v73 != *v75 || v74 != v76)
  {
    v78 = *v75;
    v79 = v75[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(&v130 + 1) = &type metadata for String;
      v131 = &protocol witness table for String;
      *&v129 = v77;
      *(&v129 + 1) = v76;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v80 = v17[16];
  v81 = *(v64 + v80);
  v82 = *&v20[v80];
  if (v81 != v82)
  {
    *(&v130 + 1) = &type metadata for Int;
    v131 = &protocol witness table for Int;
    *&v129 = v82;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v83 = v17[17];
  v84 = *(v64 + v83);
  v85 = *&v20[v83];
  if (v84 != v85)
  {
    *(&v130 + 1) = &type metadata for Int;
    v131 = &protocol witness table for Int;
    *&v129 = v85;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v86 = v17[18];
  v87 = *(v64 + v86);
  v88 = v20[v86];
  if (v87 != 3)
  {
    if (v87 == v88)
    {
      goto LABEL_41;
    }

    if (v88 == 3)
    {
      v131 = 0;
      v129 = 0u;
      v130 = 0u;
LABEL_40:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_41;
    }

LABEL_39:
    *(&v130 + 1) = &type metadata for Int;
    v131 = &protocol witness table for Int;
    *&v129 = v88;
    goto LABEL_40;
  }

  if (v88 != 3)
  {
    goto LABEL_39;
  }

LABEL_41:
  v89 = v17[19];
  v90 = *(v64 + v89);
  v91 = v20[v89];
  if (v90 != v91)
  {
    *(&v130 + 1) = &type metadata for Int;
    v131 = &protocol witness table for Int;
    *&v129 = v91;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v92 = v17[10];
  v94 = *(v64 + v92);
  v93 = *(v64 + v92 + 8);
  v95 = &v20[v92];
  v97 = *&v20[v92];
  v96 = *&v20[v92 + 8];
  if (v93 >> 60 == 15)
  {
    if (v96 >> 60 == 15)
    {
      sub_10002E98C(v94, v93);
      sub_10002E98C(v97, v96);
      sub_100006654(v94, v93);
      goto LABEL_54;
    }
  }

  else if (v96 >> 60 != 15)
  {
    sub_10002E98C(v94, v93);
    sub_10002E98C(v97, v96);
    sub_10002E98C(v94, v93);
    sub_10002E98C(v97, v96);
    v103 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v94, v93, v97, v96);
    sub_100006654(v97, v96);
    sub_100006654(v97, v96);
    sub_100006654(v94, v93);
    sub_100006654(v94, v93);
    if (v103)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

  sub_10002E98C(v94, v93);
  sub_10002E98C(v97, v96);
  sub_100006654(v94, v93);
  sub_100006654(v97, v96);
LABEL_48:
  v98 = v95[1];
  if (v98 >> 60 == 15)
  {
    v99 = String._bridgeToObjectiveC()();
    [v128 setObject:0 forKeyedSubscript:v99];
  }

  else
  {
    v100 = *v95;
    *(&v130 + 1) = &type metadata for Data;
    v131 = &protocol witness table for Data;
    *&v129 = v100;
    *(&v129 + 1) = v98;
    sub_10002E98C(v100, v98);
    sub_100017D5C(v100, v98);
    CKRecordKeyValueSetting.subscript.setter();
    sub_100006654(v100, v98);
  }

LABEL_54:
  v104 = v17[11];
  v106 = *(v64 + v104);
  v105 = *(v64 + v104 + 8);
  v107 = &v20[v104];
  v109 = *&v20[v104];
  v108 = *&v20[v104 + 8];
  if (v105 >> 60 == 15)
  {
    if (v108 >> 60 == 15)
    {
      sub_10002E98C(v106, v105);
      sub_10002E98C(v109, v108);
      sub_100006654(v106, v105);
      v110 = v126;
      goto LABEL_63;
    }
  }

  else if (v108 >> 60 != 15)
  {
    sub_10002E98C(v106, v105);
    sub_10002E98C(v109, v108);
    sub_10002E98C(v106, v105);
    sub_10002E98C(v109, v108);
    v114 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v106, v105, v109, v108);
    sub_100006654(v109, v108);
    sub_100006654(v109, v108);
    sub_100006654(v106, v105);
    sub_100006654(v106, v105);
    v110 = v126;
    if (v114)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  sub_10002E98C(v106, v105);
  sub_10002E98C(v109, v108);
  sub_100006654(v106, v105);
  sub_100006654(v109, v108);
  v110 = v126;
LABEL_59:
  v111 = v107[1];
  if (v111 >> 60 == 15)
  {
    v112 = String._bridgeToObjectiveC()();
    [v128 setObject:0 forKeyedSubscript:v112];
  }

  else
  {
    v113 = *v107;
    *(&v130 + 1) = &type metadata for Data;
    v131 = &protocol witness table for Data;
    *&v129 = v113;
    *(&v129 + 1) = v111;
    sub_10002E98C(v113, v111);
    sub_100017D5C(v113, v111);
    CKRecordKeyValueSetting.subscript.setter();
    sub_100006654(v113, v111);
  }

LABEL_63:
  v115 = v17[20];
  v116 = *(v110 + v115);
  v117 = v20[v115];
  if (v116 != v117)
  {
    *(&v130 + 1) = &type metadata for Bool;
    v131 = &protocol witness table for Bool;
    LOBYTE(v129) = v117;
    CKRecordKeyValueSetting.subscript.setter();
  }

  swift_unknownObjectRelease();
  return sub_100A1B3C0(v20, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_100A021F0(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for LostModeRecord();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1B358(a2, v9, type metadata accessor for LostModeRecord);
  [*a1 encryptedValues];
  swift_getObjectType();
  v10 = v6[6];
  type metadata accessor for UUID();
  sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v11 = UUID.uuidString.getter();
    *(&v42 + 1) = &type metadata for String;
    v43 = &protocol witness table for String;
    *&v41 = v11;
    *(&v41 + 1) = v12;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v13 = v6[7];
  v14 = (v3 + v13);
  v15 = *(v3 + v13 + 8);
  v16 = &v9[v13];
  v18 = *v16;
  v17 = *(v16 + 1);
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v17)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_14;
  }

  if (*v14 != v18 || v15 != v17)
  {
    v20 = *v16;
    v21 = *(v16 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_12:
      *(&v42 + 1) = &type metadata for String;
      v43 = &protocol witness table for String;
      *&v41 = v18;
      *(&v41 + 1) = v17;
LABEL_14:

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

LABEL_15:
  v22 = v6[8];
  v23 = (v3 + v22);
  v24 = *(v3 + v22 + 8);
  v25 = &v9[v22];
  v27 = *v25;
  v26 = *(v25 + 1);
  if (!v24)
  {
    if (!v26)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!v26)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_26;
  }

  if (*v23 != v27 || v24 != v26)
  {
    v29 = *v25;
    v30 = *(v25 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_24:
      *(&v42 + 1) = &type metadata for String;
      v43 = &protocol witness table for String;
      *&v41 = v27;
      *(&v41 + 1) = v26;
LABEL_26:

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

LABEL_27:
  v31 = v6[9];
  v32 = (v3 + v31);
  v33 = *(v3 + v31 + 8);
  v34 = &v9[v31];
  v36 = *v34;
  v35 = *(v34 + 1);
  if (!v33)
  {
    if (!v35)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (!v35)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_38;
  }

  if (*v32 != v36 || v33 != v35)
  {
    v38 = *v34;
    v39 = *(v34 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_36:
      *(&v42 + 1) = &type metadata for String;
      v43 = &protocol witness table for String;
      *&v41 = v36;
      *(&v41 + 1) = v35;
LABEL_38:

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

LABEL_39:
  swift_unknownObjectRelease();
  return sub_100A1B3C0(v9, type metadata accessor for LostModeRecord);
}

uint64_t sub_100A02568(id *a1, uint64_t a2)
{
  v3 = v2;
  v63 = type metadata accessor for UUID();
  v6 = *(v63 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v63);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SafeLocation();
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1B358(a2, v12, type metadata accessor for SafeLocation);
  v13 = [*a1 encryptedValues];
  swift_getObjectType();
  v14 = v9[7];
  v15 = *(v3 + v14);
  v16 = *(v3 + v14 + 8);
  v17 = &v12[v14];
  v19 = *v17;
  v18 = *(v17 + 1);
  if (v15 != *v17 || v16 != v18)
  {
    v21 = *v17;
    v22 = *(v17 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v66 = &type metadata for String;
      v67 = &protocol witness table for String;
      v64 = *&v19;
      v65 = v18;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v23 = v9[8];
  v24 = *&v12[v23];
  if (*(v3 + v23) != v24)
  {
    v66 = &type metadata for Double;
    v67 = &protocol witness table for Double;
    v64 = v24;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v25 = v9[9];
  v26 = *&v12[v25];
  if (*(v3 + v25) != v26)
  {
    v66 = &type metadata for Double;
    v67 = &protocol witness table for Double;
    v64 = v26;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v27 = v9[10];
  v28 = *&v12[v27];
  if (*(v3 + v27) != v28)
  {
    v66 = &type metadata for Double;
    v67 = &protocol witness table for Double;
    v64 = v28;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v29 = v9[11];
  v30 = *(v3 + v29);
  *&v31 = v12[v29];
  if (v30 != LODWORD(v31))
  {
    v66 = &type metadata for Int;
    v67 = &protocol witness table for Int;
    v64 = v31;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v32 = v9[6];
  v33 = *(v3 + v32);
  *&v34 = v12[v32];
  if (v33 != LODWORD(v34))
  {
    v66 = &type metadata for Int;
    v67 = &protocol witness table for Int;
    v64 = v34;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v35 = v9[12];
  v36 = *(v3 + v35);
  *&v37 = v12[v35];
  if (v36 != LODWORD(v37))
  {
    v66 = &type metadata for Int;
    v67 = &protocol witness table for Int;
    v64 = v37;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v38 = v9[13];
  v39 = *&v12[v38];
  if (sub_1003902F4(*(v3 + v38), v39))
  {
    sub_100A1B3C0(v12, type metadata accessor for SafeLocation);
    return swift_unknownObjectRelease();
  }

  else
  {
    v41 = *(v39 + 16);
    if (v41)
    {
      v58 = v13;
      v59 = v12;
      v64 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
      sub_101123BB8(0, v41, 0);
      v42 = v64;
      v44 = *(v6 + 16);
      v43 = v6 + 16;
      v45 = v39 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
      v60 = *(v43 + 56);
      v61 = v44;
      v46 = (v43 - 8);
      do
      {
        v48 = v62;
        v47 = v63;
        v61(v62, v45, v63);
        v49 = UUID.uuidString.getter();
        v51 = v50;
        (*v46)(v48, v47);
        v64 = v42;
        v53 = *(*&v42 + 16);
        v52 = *(*&v42 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_101123BB8((v52 > 1), v53 + 1, 1);
          v42 = v64;
        }

        *(*&v42 + 16) = v53 + 1;
        v54 = (*&v42 + 16 * v53);
        v54[4] = v49;
        v54[5] = v51;
        v45 += v60;
        --v41;
      }

      while (v41);
      v13 = v58;
      v12 = v59;
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v56 = String._bridgeToObjectiveC()();
    [v13 setObject:isa forKeyedSubscript:v56];
    swift_unknownObjectRelease();

    return sub_100A1B3C0(v12, type metadata accessor for SafeLocation);
  }
}

void sub_100A02AB4(id *a1, uint64_t a2)
{
  v31 = type metadata accessor for UUID();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v31);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 encryptedValues];
  v10 = *(type metadata accessor for LeashRecord() + 24);
  v11 = *(a2 + v10);
  if (sub_1003902F4(*(v2 + v10), v11))
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v27 = v9;
      v32 = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v12, 0);
      v13 = v32;
      v15 = *(v5 + 16);
      v14 = v5 + 16;
      v16 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v28 = *(v14 + 56);
      v29 = v15;
      v30 = v14;
      v17 = (v14 - 8);
      do
      {
        v18 = v31;
        v29(v8, v16, v31);
        v19 = UUID.uuidString.getter();
        v21 = v20;
        (*v17)(v8, v18);
        v32 = v13;
        v23 = v13[2];
        v22 = v13[3];
        if (v23 >= v22 >> 1)
        {
          sub_101123BB8((v22 > 1), v23 + 1, 1);
          v13 = v32;
        }

        v13[2] = v23 + 1;
        v24 = &v13[2 * v23];
        v24[4] = v19;
        v24[5] = v21;
        v16 += v28;
        --v12;
      }

      while (v12);
      v9 = v27;
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = String._bridgeToObjectiveC()();
    [v9 setObject:isa forKeyedSubscript:v26];
    swift_unknownObjectRelease();
  }
}

unint64_t sub_100A02D40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1007731BC(a1, a2, v6);
}

Swift::Int sub_100A02DC0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100A03154(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100A02F04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100A02F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
  v8 = *(*(v37 - 8) + 64);
  v9 = __chkstk_darwin(v37);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    while (1)
    {
      sub_1000D2A70(v24, v18, &qword_1016B1780, &unk_1013B36E0);
      sub_1000D2A70(v21, v14, &qword_1016B1780, &unk_1013B36E0);
      v26 = *v18;
      v27 = *v14;
      sub_10000B3A8(v14, &qword_1016B1780, &unk_1013B36E0);
      result = sub_10000B3A8(v18, &qword_1016B1780, &unk_1013B36E0);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_1000D2AD8(v24, v11, &qword_1016B1780, &unk_1013B36E0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000D2AD8(v11, v21, &qword_1016B1780, &unk_1013B36E0);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100A03154(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v100 = a1;
  v113 = sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
  v108 = *(v113 - 8);
  v6 = *(v108 + 64);
  v7 = __chkstk_darwin(v113);
  v103 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v112 = &v98 - v10;
  v11 = __chkstk_darwin(v9);
  v114 = (&v98 - v12);
  result = __chkstk_darwin(v11);
  v15 = (&v98 - v14);
  v110 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_96:
    a3 = *v100;
    if (!*v100)
    {
      goto LABEL_135;
    }

    a4 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v111;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_100B31E68(a4);
    }

    v115 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v110)
      {
        v94 = *(result + 16 * a4);
        v95 = result;
        v96 = *(result + 16 * (a4 - 1) + 40);
        sub_100A03A44(*v110 + *(v108 + 72) * v94, *v110 + *(v108 + 72) * *(result + 16 * (a4 - 1) + 32), *v110 + *(v108 + 72) * v96, a3);
        if (v17)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_100B31E68(v95);
        }

        if (a4 - 2 >= *(v95 + 2))
        {
          goto LABEL_123;
        }

        v97 = &v95[16 * a4];
        *v97 = v94;
        *(v97 + 1) = v96;
        v115 = v95;
        sub_100B31DDC(a4 - 1);
        result = v115;
        a4 = *(v115 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v98 = a4;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v19 = &qword_1016B1780;
  v20 = &unk_1013B36E0;
  while (1)
  {
    v21 = v17;
    v104 = v18;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v22 = *v110;
      v23 = *(v108 + 72);
      a3 = *v110 + v23 * (v17 + 1);
      sub_1000D2A70(a3, v15, v19, v20);
      v24 = v114;
      sub_1000D2A70(v22 + v23 * v17, v114, v19, v20);
      v25 = *v15;
      v26 = *v24;
      sub_10000B3A8(v24, v19, v20);
      result = sub_10000B3A8(v15, v19, v20);
      v99 = v17;
      a4 = v17 + 2;
      v109 = v23;
      v27 = v22 + v23 * (v17 + 2);
      while (v16 != a4)
      {
        sub_1000D2A70(v27, v15, v19, v20);
        v17 = v114;
        sub_1000D2A70(a3, v114, v19, v20);
        v28 = *v15;
        v29 = *v17;
        sub_10000B3A8(v17, v19, v20);
        result = sub_10000B3A8(v15, v19, v20);
        ++a4;
        v27 += v109;
        a3 += v109;
        if (v26 < v25 == v29 >= v28)
        {
          v16 = a4 - 1;
          break;
        }
      }

      v21 = v99;
      if (v26 < v25)
      {
        if (v16 < v99)
        {
          goto LABEL_126;
        }

        if (v99 < v16)
        {
          a4 = v109 * (v16 - 1);
          v30 = v16 * v109;
          v31 = v16;
          v32 = v99;
          a3 = v99 * v109;
          v107 = v16;
          do
          {
            if (v32 != --v31)
            {
              v106 = v31;
              v33 = *v110;
              if (!*v110)
              {
                goto LABEL_132;
              }

              v17 = v33 + a3;
              sub_1000D2AD8(v33 + a3, v103, v19, v20);
              if (a3 < a4 || v17 >= v33 + v30)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1000D2AD8(v103, v33 + a4, v19, v20);
              v31 = v106;
              v16 = v107;
            }

            ++v32;
            a4 -= v109;
            v30 -= v109;
            a3 += v109;
          }

          while (v32 < v31);
          v21 = v99;
        }
      }
    }

    v34 = v110[1];
    if (v16 < v34)
    {
      if (__OFSUB__(v16, v21))
      {
        goto LABEL_125;
      }

      if (v16 - v21 < v98)
      {
        if (__OFADD__(v21, v98))
        {
          goto LABEL_127;
        }

        if (v21 + v98 >= v34)
        {
          v17 = v110[1];
        }

        else
        {
          v17 = v21 + v98;
        }

        if (v17 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v16 != v17)
        {
          break;
        }
      }
    }

    v17 = v16;
    if (v16 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v104;
    }

    else
    {
      result = sub_100A5B430(0, *(v104 + 2) + 1, 1, v104);
      v18 = result;
    }

    a4 = *(v18 + 2);
    v35 = *(v18 + 3);
    a3 = a4 + 1;
    if (a4 >= v35 >> 1)
    {
      result = sub_100A5B430((v35 > 1), a4 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a3;
    v36 = &v18[16 * a4];
    *(v36 + 4) = v21;
    *(v36 + 5) = v17;
    v109 = *v100;
    if (!v109)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v37 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v38 = *(v18 + 4);
          v39 = *(v18 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_52:
          if (v41)
          {
            goto LABEL_113;
          }

          v54 = &v18[16 * a3];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_116;
          }

          v60 = &v18[16 * v37 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_120;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = a3 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v64 = &v18[16 * a3];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_66:
        if (v59)
        {
          goto LABEL_115;
        }

        v67 = &v18[16 * v37];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v37 - 1;
        if (v37 - 1 >= a3)
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

        if (!*v110)
        {
          goto LABEL_131;
        }

        v75 = v18;
        a3 = *&v18[16 * a4 + 32];
        v76 = *&v18[16 * v37 + 40];
        v77 = v111;
        sub_100A03A44(*v110 + *(v108 + 72) * a3, *v110 + *(v108 + 72) * *&v18[16 * v37 + 32], *v110 + *(v108 + 72) * v76, v109);
        v111 = v77;
        if (v77)
        {
        }

        if (v76 < a3)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_100B31E68(v75);
        }

        if (a4 >= *(v75 + 2))
        {
          goto LABEL_110;
        }

        v78 = &v75[16 * a4];
        *(v78 + 4) = a3;
        *(v78 + 5) = v76;
        v115 = v75;
        a4 = &v115;
        result = sub_100B31DDC(v37);
        v18 = v115;
        a3 = *(v115 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v42 = &v18[16 * a3 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_111;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_112;
      }

      v49 = &v18[16 * a3];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_114;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_117;
      }

      if (v53 >= v45)
      {
        v71 = &v18[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_121;
        }

        if (v40 < v74)
        {
          v37 = a3 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v16 = v110[1];
    if (v17 >= v16)
    {
      goto LABEL_96;
    }
  }

  v79 = *v110;
  v80 = *(v108 + 72);
  v81 = *v110 + v80 * (v16 - 1);
  v82 = v16;
  v83 = -v80;
  v99 = v21;
  a4 = v21 - v82;
  v107 = v82;
  v101 = v80;
  v102 = v17;
  a3 = v79 + v82 * v80;
LABEL_85:
  v105 = a3;
  v106 = a4;
  v109 = v81;
  v84 = v81;
  while (1)
  {
    sub_1000D2A70(a3, v15, v19, v20);
    v85 = v114;
    sub_1000D2A70(v84, v114, v19, v20);
    v86 = *v15;
    v87 = *v85;
    sub_10000B3A8(v85, v19, v20);
    result = sub_10000B3A8(v15, v19, v20);
    if (v87 >= v86)
    {
LABEL_84:
      v17 = v102;
      v81 = v109 + v101;
      a4 = v106 - 1;
      a3 = v105 + v101;
      if (++v107 != v102)
      {
        goto LABEL_85;
      }

      v21 = v99;
      if (v102 < v99)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v79)
    {
      break;
    }

    v88 = v20;
    v89 = v19;
    v90 = v112;
    sub_1000D2AD8(a3, v112, v89, v88);
    swift_arrayInitWithTakeFrontToBack();
    v91 = v90;
    v19 = v89;
    v20 = v88;
    sub_1000D2AD8(v91, v84, v19, v88);
    v84 += v83;
    a3 += v83;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_84;
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

uint64_t sub_100A03A44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v45 = sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
  v7 = *(*(v45 - 8) + 64);
  v8 = __chkstk_darwin(v45);
  v46 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v50 = a1;
  v49 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v44 = v27;
        while (1)
        {
          v30 = v47;
          if (v27 <= a1)
          {
            v50 = v27;
            v48 = v40;
            goto LABEL_58;
          }

          v41 = v24;
          v47 += v25;
          v31 = v26 + v25;
          sub_1000D2A70(v31, v12, &qword_1016B1780, &unk_1013B36E0);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v46;
          sub_1000D2A70(v33, v46, &qword_1016B1780, &unk_1013B36E0);
          v36 = *v34;
          v37 = *v35;
          v38 = v35;
          v12 = v34;
          sub_10000B3A8(v38, &qword_1016B1780, &unk_1013B36E0);
          sub_10000B3A8(v34, &qword_1016B1780, &unk_1013B36E0);
          if (v37 < v36)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v31;
            }
          }

          v26 = v24;
          v27 = v44;
          v29 = v31 > v43;
          v25 = v42;
          if (!v29)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v30 < v44 || v47 >= v44)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v25 = v42;
          a2 = v32;
          if (v30 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_57:
    v50 = a2;
    v48 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v48 = a4 + v17;
    if (v17 >= 1 && a2 < v47)
    {
      do
      {
        sub_1000D2A70(a2, v12, &qword_1016B1780, &unk_1013B36E0);
        v21 = v46;
        sub_1000D2A70(a4, v46, &qword_1016B1780, &unk_1013B36E0);
        v22 = *v12;
        v23 = *v21;
        sub_10000B3A8(v21, &qword_1016B1780, &unk_1013B36E0);
        sub_10000B3A8(v12, &qword_1016B1780, &unk_1013B36E0);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v50 = a1;
      }

      while (a4 < v19 && a2 < v47);
    }
  }

LABEL_58:
  sub_10060ABEC(&v50, &v49, &v48);
  return 1;
}

void *sub_100A03F44(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
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

void *sub_100A03FDC(uint64_t a1, uint64_t a2)
{

  return sub_100A0405C(a1, a2, sub_100A042B8, sub_100A042B8);
}

void *sub_100A0405C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
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

    v13 = sub_100A03F44(v15, v10, a2, a1, a4);
  }

  return v13;
}

void *sub_100A04238(uint64_t a1, uint64_t a2)
{

  return sub_100A0405C(a1, a2, sub_100A04DC8, sub_100A04DC8);
}

uint64_t sub_100A042B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v54 = result;
  v58 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_26:
    v57 = 0;
    v28 = 0;
    v29 = v4 + 56;
    v30 = 1 << *(v4 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v4 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
    v53 = v33;
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v61 = (v32 - 1) & v32;
LABEL_38:
      v56 = v35 | (v28 << 6);
      v38 = (*(a3 + 48) + 24 * v56);
      v39 = *v38;
      v41 = *(v38 + 1);
      v40 = *(v38 + 2);
      v42 = *(v58 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v39);

      String.hash(into:)();
      v43 = Hasher._finalize()();
      v44 = -1 << *(v58 + 32);
      v45 = v43 & ~v44;
      if ((*(v34 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        v47 = *(v58 + 48);
        while (1)
        {
          v48 = (v47 + 24 * v45);
          if (*v48 == v39)
          {
            v49 = *(v48 + 1) == v41 && *(v48 + 2) == v40;
            if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          v45 = (v45 + 1) & v46;
          if (((*(v34 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        *(v54 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        v27 = __OFADD__(v57++, 1);
        v33 = v53;
        v32 = v61;
        if (v27)
        {
          __break(1u);
LABEL_50:
          v4 = a3;
          goto LABEL_51;
        }
      }

      else
      {
LABEL_30:

        v33 = v53;
        v32 = v61;
      }
    }

    v36 = v28;
    while (1)
    {
      v28 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v28 >= v33)
      {
        goto LABEL_50;
      }

      v37 = *(v29 + 8 * v28);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v61 = (v37 - 1) & v37;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v57 = 0;
    v5 = 0;
    v50 = a4 + 56;
    v6 = 1 << *(a4 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(a4 + 56);
    v9 = (v6 + 63) >> 6;
    v60 = a3 + 56;
    v52 = v9;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v55 = (v8 - 1) & v8;
LABEL_14:
      v13 = (*(a4 + 48) + 24 * (v10 | (v5 << 6)));
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      v17 = *(v4 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v60 + 8 * (v20 >> 6))) != 0)
      {
        v23 = ~v19;
        v24 = *(a3 + 48);
        while (1)
        {
          v25 = (v24 + 24 * v20);
          if (*v25 == v14)
          {
            v26 = *(v25 + 1) == v15 && *(v25 + 2) == v16;
            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          v20 = (v20 + 1) & v23;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if ((*(v60 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
          {
            goto LABEL_6;
          }
        }

        v9 = v52;
        v54[v21] |= v22;
        a4 = v58;
        v27 = __OFADD__(v57++, 1);
        v4 = a3;
        v8 = v55;
        if (v27)
        {
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
LABEL_6:

        a4 = v58;
        v4 = a3;
        v9 = v52;
        v8 = v55;
      }
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
LABEL_51:

        return sub_10060C86C(v54, a2, v57, v4);
      }

      v12 = *(v50 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v55 = (v12 - 1) & v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100A046E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
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

        return sub_10060AF64(v69, v65, v71, a3);
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
          v56(v78, v54 + v55 * v53, v6);
          v57 = *(a4 + 40);
          sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
          v58 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              v56(v13, *(v76 + 48) + v60 * v55, v6);
              sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
              v62 = dispatch thunk of static Equatable.== infix(_:_:)();
              v63 = *v79;
              (*v79)(v13, v6);
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

            result = (v63)(v78, v6);
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
            result = (v63)(v78, v6);
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
          i(v68, v33, v6);
          (*(v7 + 32))(v79, v34, v6);
          v35 = *(a3 + 40);
          sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
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
              i(v13, *(v77 + 48) + v38 * v75, v6);
              sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
              v42 = dispatch thunk of static Equatable.== infix(_:_:)();
              v43 = *v78;
              (*v78)(v13, v6);
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

            result = (v43)(v79, v6);
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
            result = (v43)(v79, v6);
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

Swift::Int sub_100A04DC8(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v53 = result;
  v55 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v30 = 0;
    v31 = a3 + 56;
    v32 = 1 << *(a3 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(a3 + 56);
    v35 = (v32 + 63) >> 6;
    v36 = a4 + 56;
    v54 = 0;
LABEL_28:
    while (v34)
    {
      v37 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_35:
      v40 = v37 | (v30 << 6);
      v41 = (*(v4 + 48) + 8 * v40);
      v42 = *v41;
      v43 = v41[1];
      v44 = *(a4 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v42);
      Hasher._combine(_:)(v43);
      result = Hasher._finalize()();
      a4 = v55;
      v4 = a3;
      v45 = -1 << *(v55 + 32);
      v46 = result & ~v45;
      if ((*(v36 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
      {
        v47 = ~v45;
        while (1)
        {
          v48 = (*(v55 + 48) + 8 * v46);
          v50 = *v48;
          v49 = v48[1];
          if (v50 == v42 && v49 == v43)
          {
            break;
          }

          v46 = (v46 + 1) & v47;
          if (((*(v36 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        *(v53 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_48;
        }

        ++v54;
      }
    }

    v38 = v30;
    while (1)
    {
      v30 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v30 >= v35)
      {
LABEL_45:

        return sub_10060D788(v53, a2, v54, v4);
      }

      v39 = *(v31 + 8 * v30);
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v34 = (v39 - 1) & v39;
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
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
    v11 = a3 + 56;
    v54 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = (*(a4 + 48) + 8 * (v12 | (v5 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v4 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      a4 = v55;
      v4 = a3;
      v19 = -1 << *(a3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
      {
        v23 = *(a3 + 48);
        v24 = (v23 + 8 * v20);
        v26 = *v24;
        v25 = v24[1];
        if (v26 == v16 && v25 == v17)
        {
LABEL_22:
          v53[v21] |= v22;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_49;
          }

          ++v54;
        }

        else
        {
          v28 = ~v19;
          while (1)
          {
            v20 = (v20 + 1) & v28;
            v21 = v20 >> 6;
            v22 = 1 << v20;
            if ((*(v11 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
            {
              break;
            }

            v29 = (v23 + 8 * v20);
            if (*v29 == v16 && v29[1] == v17)
            {
              goto LABEL_22;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_45;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

unint64_t sub_100A05120(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100A5C0F0(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_100A05540(v7, a2, 1, a3, &unk_1016B1630, &qword_10138CA48, &qword_101697948, &qword_10138CA40);
  *v3 = v5;
  return result;
}

unint64_t sub_100A05214(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100A5C114(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_100A05540(v7, a2, 1, a3, &unk_1016B1610, &qword_10138CA38, &qword_101697940, &qword_10138CA30);
  *v3 = v5;
  return result;
}

unint64_t sub_100A05308(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100A5C138(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_100A05540(v7, a2, 1, a3, &unk_1016B15C0, &unk_1013D7870, &qword_101697938, &qword_10138CA28);
  *v3 = v5;
  return result;
}

uint64_t sub_100A05454(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v17 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, 1, a3);
  *v5 = v7;
  return result;
}

unint64_t sub_100A05540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = sub_1000BC4D4(a5, a6);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000B3A8(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_10000B3A8(a4, v31, v32);
  }

  result = sub_1000D2A70(a4, v21, a5, a6);
  if (v18 >= v23)
  {
    return sub_10000B3A8(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_100A056D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for UUID();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000B3A8(v25, &qword_101698D18, &qword_1013908A8);
  }

  if (v18 < 1)
  {
    return sub_10000B3A8(v25, &qword_101698D18, &qword_1013908A8);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_10000B3A8(v25, &qword_101698D18, &qword_1013908A8);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_100A05874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000B3A8(a4, &qword_1016ABF38, &qword_1013BFE10);
  }

  if (v17 < 1)
  {
    return sub_10000B3A8(a4, &qword_1016ABF38, &qword_1013BFE10);
  }

  result = sub_100A1B358(a4, v15, type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
  if (v12 >= v17)
  {
    return sub_10000B3A8(a4, &qword_1016ABF38, &qword_1013BFE10);
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_100A05A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v164 = &v156 - v10;
  v165 = type metadata accessor for OwnedBeaconRecord();
  v163 = *(v165 - 8);
  v11 = *(v163 + 64);
  __chkstk_darwin(v165);
  v162 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v159 = &v156 - v15;
  v158 = type metadata accessor for OwnedBeaconGroup(0);
  v157 = *(v158 - 8);
  v16 = *(v157 + 64);
  __chkstk_darwin(v158);
  v166 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v161 = &v156 - v20;
  v21 = type metadata accessor for UUID();
  v177 = *(v21 - 8);
  v22 = *(v177 + 64);
  v23 = __chkstk_darwin(v21);
  v160 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v156 - v25;
  v27 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v156 - v29;
  v31 = type metadata accessor for BeaconProductInfoRecord();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v167 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181[3] = a3;
  v181[4] = a4;
  v35 = sub_1000280DC(v181);
  v36 = a1;
  v37 = a3;
  (*(*(a3 - 8) + 16))(v35, v36, a3);
  v175 = a2;
  v176 = a3;
  v38 = *(a2 + 280);
  v39 = *(*(a4 + 8) + 8);
  v40 = *(v39 + 32);
  v168 = v39;
  v169 = v40;
  v170 = v39 + 32;
  (v40)(v37);
  v156 = v38;
  sub_100AC1584(v26, v30);
  v41 = *(v177 + 8);
  v171 = v26;
  v172 = v41;
  v173 = v177 + 8;
  v174 = v21;
  v41(v26, v21);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_10000B3A8(v30, &unk_1016AF8C0, &unk_1013A07A0);
    v42 = v176;
    if ((*(a4 + 112))(v176, a4))
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177B780);
      sub_10001F280(v181, v179);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v178 = v47;
        *v46 = 141558275;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2081;
        sub_1000035D0(v179, v180);
        v48 = v171;
        (v169)(v42, v168);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v49 = v174;
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        v172(v48, v49);
        sub_100007BAC(v179);
        v53 = sub_1000136BC(v50, v52, &v178);

        *(v46 + 14) = v53;
        v54 = "Can't monitor beacon: %{private,mask.hash}s due to: accessory beacon but missing product info!";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v44, v45, v54, v46, 0x16u);
        sub_100007BAC(v47);

        goto LABEL_60;
      }

      goto LABEL_58;
    }
  }

  else
  {
    v55 = v167;
    sub_100A18C9C(v30, v167, type metadata accessor for BeaconProductInfoRecord);
    v42 = v176;
    if (((*(a4 + 112))(v176, a4) & 1) != 0 && *(v55 + *(v31 + 36)) == 1)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_1000076D4(v56, qword_10177B780);
      sub_10001F280(v181, v179);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v178 = v60;
        *v59 = 141558275;
        *(v59 + 4) = 1752392040;
        *(v59 + 12) = 2081;
        sub_1000035D0(v179, v180);
        v61 = v171;
        (v169)(v42, v168);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v62 = v174;
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        v172(v61, v62);
        sub_100007BAC(v179);
        v66 = sub_1000136BC(v63, v65, &v178);

        *(v59 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v57, v58, "Can't monitor beacon: %{private,mask.hash}s due to: hidden accessory.", v59, 0x16u);
        sub_100007BAC(v60);

        v67 = type metadata accessor for BeaconProductInfoRecord;
        v68 = v55;
LABEL_13:
        sub_100A1B3C0(v68, v67);
LABEL_60:
        v124 = 0;
        goto LABEL_61;
      }

      v100 = type metadata accessor for BeaconProductInfoRecord;
      v101 = v55;
LABEL_37:
      sub_100A1B3C0(v101, v100);
LABEL_59:
      sub_100007BAC(v179);
      goto LABEL_60;
    }

    sub_100A1B3C0(v55, type metadata accessor for BeaconProductInfoRecord);
  }

  v69 = v175;
  if ((sub_100A072EC(v35, v175, v42, a4) & 1) == 0)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_1000076D4(v77, qword_10177B780);
    sub_10001F280(v181, v179);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v178 = v47;
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_1000035D0(v179, v180);
      v78 = v171;
      (v169)(v42, v168);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v79 = v174;
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v172(v78, v79);
      sub_100007BAC(v179);
      v83 = sub_1000136BC(v80, v82, &v178);

      *(v46 + 14) = v83;
      v54 = "Can't monitor beacon: %{private,mask.hash}s due to: unsupported beacon.";
      goto LABEL_25;
    }

    goto LABEL_58;
  }

  if (sub_1012BD9FC(v42, a4))
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_1000076D4(v70, qword_10177B780);
    sub_10001F280(v181, v179);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v178 = v47;
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_1000035D0(v179, v180);
      v71 = v171;
      (v169)(v42, v168);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v72 = v174;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v172(v71, v72);
      sub_100007BAC(v179);
      v76 = sub_1000136BC(v73, v75, &v178);

      *(v46 + 14) = v76;
      v54 = "Can't monitor beacon: %{private,mask.hash}s due to: this device.";
      goto LABEL_25;
    }

    goto LABEL_58;
  }

  v84 = *(*(v69 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_bluetoothCommunicatorCoordinator) + 64);

  CurrentValueSubject.value.getter();

  v176 = v179[0];
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v85 = qword_10177C218;
  v86 = objc_opt_self();
  v87 = [v86 sharedInstance];
  v88 = [v87 isInternalBuild];

  if (v88)
  {
    v89 = String._bridgeToObjectiveC()();
    v90 = [v85 BOOLForKey:v89];

    if (v90)
    {
      v91 = [v86 sharedInstance];
      LOBYTE(v90) = [v91 isInternalBuild];
    }
  }

  else
  {
    LOBYTE(v90) = 0;
  }

  v92 = v177;
  v93 = (*(a4 + 120))(v42, a4);
  v94 = v166;
  if (v93)
  {
    if (!((v176 > 1) | v90 & 1))
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      sub_1000076D4(v102, qword_10177B780);
      sub_10001F280(v181, v179);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v178 = v47;
        *v46 = 141558275;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2081;
        sub_1000035D0(v179, v180);
        v103 = v171;
        (v169)(v42, v168);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v104 = v174;
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v107 = v106;
        v172(v103, v104);
        sub_100007BAC(v179);
        v108 = sub_1000136BC(v105, v107, &v178);

        *(v46 + 14) = v108;
        v54 = "Can't monitor beacon: %{private,mask.hash}s due to: airpods beacon but less than 2 adv buffers.";
        goto LABEL_25;
      }

      goto LABEL_58;
    }

    v95 = v161;
    (*(a4 + 200))(v42, a4);
    v96 = v174;
    if ((*(v92 + 48))(v95, 1, v174) == 1)
    {
      v97 = &qword_1016980D0;
      v98 = &unk_10138F3B0;
      v99 = v95;
LABEL_44:
      sub_10000B3A8(v99, v97, v98);
      goto LABEL_45;
    }

    v109 = v160;
    (*(v92 + 32))(v160, v95, v96);
    v110 = v159;
    sub_100AC53EC(v109, v159);
    if ((*(v157 + 48))(v110, 1, v158) == 1)
    {
      v172(v109, v96);
      v97 = &unk_1016AF8B0;
      v98 = &unk_1013A0700;
      v99 = v110;
      goto LABEL_44;
    }

    sub_100A18C9C(v110, v94, type metadata accessor for OwnedBeaconGroup);
    if ((sub_100518118() & 1) == 0)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v143 = type metadata accessor for Logger();
      sub_1000076D4(v143, qword_10177B780);
      sub_10001F280(v181, v179);
      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.default.getter();
      v146 = os_log_type_enabled(v144, v145);
      v147 = v160;
      if (v146)
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v178 = v149;
        *v148 = 141558275;
        *(v148 + 4) = 1752392040;
        *(v148 + 12) = 2081;
        sub_1000035D0(v179, v180);
        v150 = v171;
        (v169)(v42, v168);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v151 = dispatch thunk of CustomStringConvertible.description.getter();
        v153 = v152;
        v154 = v172;
        v172(v150, v96);
        sub_100007BAC(v179);
        v155 = sub_1000136BC(v151, v153, &v178);

        *(v148 + 14) = v155;
        _os_log_impl(&_mh_execute_header, v144, v145, "Can't monitor beacon: %{private,mask.hash}s due to: group pairing incomplete.", v148, 0x16u);
        sub_100007BAC(v149);

        sub_100A1B3C0(v94, type metadata accessor for OwnedBeaconGroup);
        v154(v160, v96);
        goto LABEL_60;
      }

      sub_100A1B3C0(v94, type metadata accessor for OwnedBeaconGroup);
      v172(v147, v96);
      goto LABEL_59;
    }

    sub_100A1B3C0(v94, type metadata accessor for OwnedBeaconGroup);
    v172(v160, v96);
  }

LABEL_45:
  v111 = v164;
  sub_1009D762C(v164);
  v112 = v165;
  if ((*(v163 + 48))(v111, 1, v165) == 1)
  {
    sub_10000B3A8(v111, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_51;
  }

  v113 = v162;
  sub_100A18C9C(v111, v162, type metadata accessor for OwnedBeaconRecord);
  (*(a4 + 16))(v42, a4);
  v114 = sub_1006DCF58();

  if (v114)
  {
    v115 = v42;
    v116 = v171;
    v117 = v115;
    v169();
    v118 = *(v112 + 20);
    sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
    v119 = v174;
    LOBYTE(v118) = dispatch thunk of static Equatable.== infix(_:_:)();
    v172(v116, v119);
    if (v118)
    {
      sub_100A1B3C0(v113, type metadata accessor for OwnedBeaconRecord);
      v42 = v117;
      goto LABEL_51;
    }

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    sub_1000076D4(v132, qword_10177B780);
    sub_10001F280(v181, v179);
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = v117;
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v178 = v137;
      *v136 = 141558275;
      *(v136 + 4) = 1752392040;
      *(v136 + 12) = 2081;
      sub_1000035D0(v179, v180);
      v138 = v171;
      (v169)(v135, v168);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v141 = v140;
      v172(v138, v119);
      sub_100007BAC(v179);
      v142 = sub_1000136BC(v139, v141, &v178);

      *(v136 + 14) = v142;
      _os_log_impl(&_mh_execute_header, v133, v134, "Can't monitor beacon: %{private,mask.hash}s due to: watch beacon, but not actively paired.", v136, 0x16u);
      sub_100007BAC(v137);

      v67 = type metadata accessor for OwnedBeaconRecord;
      v68 = v162;
      goto LABEL_13;
    }

    v100 = type metadata accessor for OwnedBeaconRecord;
    v101 = v162;
    goto LABEL_37;
  }

  sub_100A1B3C0(v113, type metadata accessor for OwnedBeaconRecord);
LABEL_51:
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v121 = result;
    v122 = String._bridgeToObjectiveC()();
    v123 = [v121 applicationIsInstalled:v122];

    if (v123)
    {
      v124 = 1;
LABEL_61:
      sub_100007BAC(v181);
      return v124;
    }

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    sub_1000076D4(v125, qword_10177B780);
    sub_10001F280(v181, v179);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v178 = v47;
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_1000035D0(v179, v180);
      v126 = v171;
      (v169)(v42, v168);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v127 = v174;
      v128 = dispatch thunk of CustomStringConvertible.description.getter();
      v130 = v129;
      v172(v126, v127);
      sub_100007BAC(v179);
      v131 = sub_1000136BC(v128, v130, &v178);

      *(v46 + 14) = v131;
      v54 = "Can't monitor beacon: %{private,mask.hash}s due to: no Find My app installed.";
      goto LABEL_25;
    }

LABEL_58:

    goto LABEL_59;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A072EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = (*(a4 + 184))(a3, a4);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    goto LABEL_9;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v18 = 0;
  if ((v17 & 1) == 0)
  {
    v19 = sub_1009C5A54(v10, *(a2 + 280), a3, a4);
    if (sub_10111F67C(8, v19))
    {
      v18 = sub_10111F67C(9, v19);
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

LABEL_11:
  (*(v7 + 8))(v10, a3);
  return v18 & 1;
}

unint64_t sub_100A07658(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_100A1A174(v6, a2, 0, &type metadata accessor for UUID);
  *v2 = v4;
  return result;
}

unint64_t sub_100A0772C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100A077EC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100A5B734(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_100A0772C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_100A078AC(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v1[49] = v3;
  v4 = *(v3 - 8);
  v1[50] = v4;
  v5 = *(v4 + 64) + 15;
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v6 = type metadata accessor for BeaconIdentifier();
  v1[54] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v8 = type metadata accessor for StableIdentifier();
  v1[56] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[57] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v1[58] = swift_task_alloc();
  v11 = type metadata accessor for OwnedBeaconRecord();
  v1[59] = v11;
  v12 = *(v11 - 8);
  v1[60] = v12;
  v13 = *(v12 + 64) + 15;
  v1[61] = swift_task_alloc();
  v14 = type metadata accessor for ObservedAdvertisement(0);
  v1[62] = v14;
  v15 = *(v14 - 8);
  v1[63] = v15;
  v16 = *(v15 + 64) + 15;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[73] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v1[74] = v19;
  v20 = *(v19 - 8);
  v1[75] = v20;
  v1[76] = *(v20 + 64);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v21 = type metadata accessor for SystemInfo.DeviceLockState();
  v1[81] = v21;
  v22 = *(v21 - 8);
  v1[82] = v22;
  v23 = *(v22 + 64) + 15;
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[5] = v11;
  v1[6] = sub_100003F64(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v24 = sub_1000280DC(v1 + 2);
  v1[85] = v24;
  sub_100A1B358(a1, v24, type metadata accessor for OwnedBeaconRecord);

  return _swift_task_switch(sub_100A07D00, 0, 0);
}

uint64_t sub_100A07D00()
{
  v49 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v2, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v4);
  sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);
  if (v5)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 42));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[80];
      v11 = v0[75];
      v12 = v0[74];
      v13 = v0[59];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v48 = v15;
      *v14 = 136315138;
      v16 = sub_1000035D0(v0 + 42, v0[45]);
      (*(v11 + 16))(v10, &v16[*(v13 + 20)], v12);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v11 + 8))(v10, v12);
      sub_100007BAC(v0 + 42);
      v20 = sub_1000136BC(v17, v19, &v48);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "Can't monitor beacon: %s before first unlock.", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {

      sub_100007BAC(v0 + 42);
    }

    v23 = v0[84];
    v24 = v0[83];
    v25 = v0[80];
    v26 = v0[79];
    v27 = v0[78];
    v28 = v0[77];
    v29 = v0[73];
    v30 = v0[72];
    v31 = v0[71];
    v34 = v0[70];
    v35 = v0[69];
    v36 = v0[68];
    v37 = v0[67];
    v38 = v0[66];
    v39 = v0[65];
    v40 = v0[64];
    v41 = v0[61];
    v42 = v0[58];
    v43 = v0[57];
    v44 = v0[55];
    v45 = v0[53];
    v46 = v0[52];
    v47 = v0[51];
    sub_100007BAC(v0 + 2);

    v32 = v0[1];

    return v32(1);
  }

  else
  {
    v21 = async function pointer to daemon.getter[1];
    v22 = swift_task_alloc();
    v0[86] = v22;
    *v22 = v0;
    v22[1] = sub_100A081B0;

    return daemon.getter();
  }
}

uint64_t sub_100A081B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 688);
  v12 = *v1;
  v3[87] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[88] = v6;
  v7 = type metadata accessor for Daemon();
  v3[89] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100003F64(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[90] = v9;
  v10 = sub_100003F64(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100A08390;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A08390(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 704);
  v6 = *v2;
  *(*v2 + 728) = a1;

  v7 = *(v3 + 696);
  if (v1)
  {

    return _swift_task_switch(sub_100A08844, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 736) = v9;
    *v9 = v6;
    v9[1] = sub_100A0853C;

    return daemon.getter();
  }
}

uint64_t sub_100A0853C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 736);
  v5 = *v1;
  v3[93] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[94] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003F64(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_100A086F0;
  v10 = v3[90];
  v11 = v3[89];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100A086F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 752);
  v6 = *v2;
  *(v4 + 760) = a1;
  *(v4 + 768) = v1;

  v7 = *(v3 + 744);
  if (v1)
  {

    v8 = sub_100A09360;
  }

  else
  {

    v8 = sub_100A08BC0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100A08844()
{
  v41 = v0;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B780);
  sub_10001F280((v0 + 2), (v0 + 7));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[80];
    v5 = v0[75];
    v6 = v0[74];
    v7 = v0[59];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315138;
    v10 = sub_1000035D0(v0 + 7, v0[10]);
    (*(v5 + 16))(v4, &v10[*(v7 + 20)], v6);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v40);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't monitor beacon: %s due to: missing services BeaconStoreActor / ObservationStoreService.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v15 = v0[84];
  v16 = v0[83];
  v17 = v0[80];
  v18 = v0[79];
  v19 = v0[78];
  v20 = v0[77];
  v21 = v0[73];
  v22 = v0[72];
  v23 = v0[71];
  v26 = v0[70];
  v27 = v0[69];
  v28 = v0[68];
  v29 = v0[67];
  v30 = v0[66];
  v31 = v0[65];
  v32 = v0[64];
  v33 = v0[61];
  v34 = v0[58];
  v35 = v0[57];
  v36 = v0[55];
  v37 = v0[53];
  v38 = v0[52];
  v39 = v0[51];
  sub_100007BAC(v0 + 2);

  v24 = v0[1];

  return v24(1);
}

uint64_t sub_100A08BC0()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 776) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 784) = v3;
  *v3 = v0;
  v3[1] = sub_100A08CC0;

  return unsafeBlocking<A>(_:)(v0 + 376, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100A08CC0()
{
  v1 = *(*v0 + 784);
  v2 = *(*v0 + 776);
  v4 = *v0;

  return _swift_task_switch(sub_100A08DD8, 0, 0);
}

uint64_t sub_100A08DD8()
{
  v70 = v0;
  v1 = v0[85];
  v2 = v0[59];
  v3 = v0[47];
  v0[99] = v3;
  v4 = sub_10107497C(v3);
  if (!sub_100E0EA64(*(v1 + *(v2 + 64)), *(v1 + *(v2 + 68))))
  {
    goto LABEL_13;
  }

  v5 = v0[85];
  v6 = sub_100D60CD0();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v9 != v10)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12 & v4)
    {
      goto LABEL_7;
    }

LABEL_13:
    v34 = v0[95];
    v35 = v0[91];

    v68 = 0;
LABEL_14:
    v36 = v0[84];
    v37 = v0[83];
    v38 = v0[80];
    v39 = v0[79];
    v40 = v0[78];
    v41 = v0[77];
    v42 = v0[73];
    v43 = v0[72];
    v44 = v0[71];
    v54 = v0[70];
    v55 = v0[69];
    v56 = v0[68];
    v57 = v0[67];
    v58 = v0[66];
    v59 = v0[65];
    v60 = v0[64];
    v61 = v0[61];
    v62 = v0[58];
    v63 = v0[57];
    v64 = v0[55];
    v65 = v0[53];
    v66 = v0[52];
    v67 = v0[51];
    sub_100007BAC(v0 + 2);

    v45 = v0[1];

    return v45(v68);
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v13 = v0[75];
  v14 = v0[74];
  v15 = v0[73];
  sub_1000D2A70(v0[85] + *(v0[59] + 28), v15, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    v16 = v0[73];

    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 12));
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[95];
    v22 = v0[91];
    if (v20)
    {
      v23 = v0[80];
      v24 = v0[75];
      v25 = v0[74];
      v26 = v0[59];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v69 = v28;
      *v27 = 136315138;
      v29 = sub_1000035D0(v0 + 12, v0[15]);
      (*(v24 + 16))(v23, &v29[*(v26 + 20)], v25);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v24 + 8))(v23, v25);
      sub_100007BAC(v0 + 12);
      v33 = sub_1000136BC(v30, v32, &v69);

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v18, v19, "Can't monitor beacon: %s due to: airpods but missing beacon group.", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {
      v53 = v0[91];

      sub_100007BAC(v0 + 12);
    }

    v68 = 1;
    goto LABEL_14;
  }

  v47 = v0[95];
  v48 = v0[79];
  v49 = v0[75];
  v50 = v0[74];
  v51 = v0[73];
  v52 = *(v49 + 32);
  v0[100] = v52;
  v0[101] = (v49 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v52(v48, v51, v50);

  return _swift_task_switch(sub_100A096E4, v47, 0);
}