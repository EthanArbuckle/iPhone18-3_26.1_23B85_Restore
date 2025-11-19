uint64_t sub_1002C7410()
{
  v1 = v0 + qword_100594B08;
  swift_beginAccess();
  sub_100012400(v1 + 136, v8, &unk_1005974B0, &qword_1004AFCF0);
  v2 = v9;
  if (v9 == 255)
  {
    sub_100016290(v8, &unk_1005974B0, &qword_1004AFCF0);
  }

  else
  {
    sub_10020C758(v8);
    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + qword_100594B00);
      swift_unownedRetainStrong();
      v4 = 480;
      goto LABEL_7;
    }
  }

  v5 = *(v1 + 72);
  v3 = *(v0 + qword_100594B00);
  swift_unownedRetainStrong();
  if (v5 != 2)
  {
    return v3;
  }

  v4 = 472;
LABEL_7:
  v6 = *(v3 + *(*v3 + v4));

  result = v6;
  if (!v6)
  {
    return swift_unownedRetainStrong();
  }

  return result;
}

void sub_1002C753C(void **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = (a4 + qword_100594B18);
  v10 = *(a4 + qword_100594B18 + 8);
  if (v10 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v15 = *v9;
    sub_10000AB0C(*v9, *(a4 + qword_100594B18 + 8));
    v11 = InterfaceIdentifier.ipv6Address.getter(v15, v10);
    v12 = v16;
    v13 = v17;
    v14 = v18;
    sub_100017554(v15, v10);
  }

  v19 = WiFiAddress.apiAddress(with:)(v11, v12, v13, v14, (a2 >> 8) & 0xFFFFFFFFFFFFLL);
  sub_10011AF40(v11, v12, v13, v14);
  v20 = [objc_allocWithZone(WiFiAwarePublisherDataSessionHandle) initWithDatapathID:a2 initiatorDataAddress:v19];

  [v8 publishDataConfirmedForHandle:v20 localInterfaceIndex:a5 serviceSpecificInfo:a6];
}

uint64_t sub_1002C7670(void **a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v49 = a2;
  v11 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v41 - v14;
  v16 = type metadata accessor for NANPeer(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin();
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  result = [v20 respondsToSelector:"publishDataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:pairingKeyStoreID:"];
  if (result)
  {
    v44 = v20;
    v45 = v15;
    v46 = a5;
    v47 = a6;
    v48 = v6;
    v42 = v13;
    v43 = a4;
    v22 = a4 + qword_100594B18;
    v23 = *(a4 + qword_100594B18 + 8);
    if (v23 >> 60 == 15)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 1;
    }

    else
    {
      v28 = *v22;
      sub_10000AB0C(*v22, *(v22 + 8));
      v24 = InterfaceIdentifier.ipv6Address.getter(v28, v23);
      v25 = v29;
      v26 = v30;
      v27 = v31;
      sub_100017554(v28, v23);
    }

    v32 = v49;
    v33 = WiFiAddress.apiAddress(with:)(v24, v25, v26, v27, (v49 >> 8) & 0xFFFFFFFFFFFFLL);
    sub_10011AF40(v24, v25, v26, v27);
    v34 = [objc_allocWithZone(WiFiAwarePublisherDataSessionHandle) initWithDatapathID:v32 initiatorDataAddress:v33];

    v35 = *(v43 + qword_100594B00);
    swift_unownedRetainStrong();
    sub_10040CD68((v32 >> 8) & 0xFFFFFFFFFFFFLL, v19);

    v36 = v45;
    sub_100012400(&v19[*(v16 + 88)], v45, &qword_10058F4D0, &qword_100491AB0);
    sub_1002CB5A0(v19, type metadata accessor for NANPeer);
    v37 = v42;
    sub_100012400(v36, v42, &qword_10058F4D0, &qword_100491AB0);
    v38 = type metadata accessor for UUID();
    v39 = *(v38 - 8);
    isa = 0;
    if ((*(v39 + 48))(v37, 1, v38) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v39 + 8))(v37, v38);
    }

    [v44 publishDataConfirmedForHandle:v34 localInterfaceIndex:v46 serviceSpecificInfo:v47 pairingKeyStoreID:isa];

    return sub_100016290(v36, &qword_10058F4D0, &qword_100491AB0);
  }

  return result;
}

uint64_t sub_1002C79D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v16;
  v8[9] = a6;
  v8[10] = a7;
  v8[8] = a4;
  v9 = swift_isaMask & *a6;
  v8[13] = *(*(v9 + 0x58) + 8);
  v8[14] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[16] = v11;
  v12 = *(v11 + 64) + 15;
  v8[17] = swift_task_alloc();
  v13 = *(*(sub_10005DC58(&unk_10058F4C0, &unk_100492870) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_projectBox();

  return _swift_task_switch(sub_1002C7B44, 0, 0);
}

uint64_t sub_1002C7B44()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
  v7 = *(v6 + qword_100594B00);
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v7 + *(*v7 + 112), v4);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 136))(v4, AssociatedConformanceWitness);
  v0[20] = v9;
  (*(v2 + 8))(v1, v4);
  v10 = v6 + qword_100594B08;
  swift_beginAccess();
  if (*(v10 + 208))
  {
    v11 = *(v10 + 232);
  }

  else
  {
    v11 = 1;
  }

  v0[21] = v11;
  v12 = *v9 + 392;
  v0[22] = *v12;
  v0[23] = v12 & 0xFFFFFFFFFFFFLL | 0xD6F0000000000000;

  return _swift_task_switch(sub_1002C7CD8, v9, 0);
}

uint64_t sub_1002C7CD8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  *(v0 + 192) = (*(v0 + 176))(*(v0 + 80), *(v0 + 88), *(v0 + 168), 0);
  *(v0 + 200) = 0;
  v3 = *(v0 + 160);

  return _swift_task_switch(sub_1002C7D78, 0, 0);
}

uint64_t sub_1002C7D78()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[12];
  *(swift_task_alloc() + 16) = v5;
  sub_10019BF58(sub_1001AC51C, v1, v4);

  swift_beginAccess();
  sub_1000B1B78(v4, v3, &unk_10058F4C0, &unk_100492870);
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[8];
  OS_dispatch_semaphore.signal()();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002C7E84()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[9];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get paired device from WiFiAwarePairedDevicesStore: %@", v8, 0xCu);
    sub_100016290(v9, &qword_10058B780, &qword_100480AC0);
  }

  else
  {
  }

  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[8];
  OS_dispatch_semaphore.signal()();

  v14 = v0[1];

  return v14();
}

void *sub_1002C8014(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_1002C8128(void **a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v18 = &v41 - v17;
  v19 = *a1;
  if ([v19 respondsToSelector:"publishDataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:pairingKeyStoreID:deviceID:"])
  {
    v42 = a7;
    v43 = v19;
    v44 = a5;
    v46 = v8;
    v20 = (a4 + qword_100594B18);
    v21 = *(a4 + qword_100594B18 + 8);
    v45 = a6;
    if (v21 >> 60 == 15)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v26 = *v20;
      sub_10000AB0C(*v20, v21);
      v22 = InterfaceIdentifier.ipv6Address.getter(v26, v21);
      v23 = v27;
      v24 = v28;
      v25 = v29;
      sub_100017554(v26, v21);
    }

    v30 = WiFiAddress.apiAddress(with:)(v22, v23, v24, v25, (a2 >> 8) & 0xFFFFFFFFFFFFLL);
    sub_10011AF40(v22, v23, v24, v25);
    v31 = [objc_allocWithZone(WiFiAwarePublisherDataSessionHandle) initWithDatapathID:a2 initiatorDataAddress:v30];

    swift_beginAccess();
    v32 = type metadata accessor for WiFiAwarePairedDevice();
    v33 = (*(*(v32 - 8) + 48))(a8, 1, v32);
    v34 = 0;
    v35 = v44;
    if (!v33)
    {
      v34 = *(a8 + *(v32 + 20));
    }

    sub_100012400(v42, v18, &qword_10058F4D0, &qword_100491AB0);
    v36 = type metadata accessor for UUID();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v18, 1, v36);
    isa = 0;
    v40 = v45;
    if (v38 != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v37 + 8))(v18, v36);
    }

    [v43 publishDataConfirmedForHandle:v31 localInterfaceIndex:v35 serviceSpecificInfo:v40 pairingKeyStoreID:isa deviceID:v34];
  }
}

void sub_1002C8404(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1002BE8E4();
    }
  }
}

uint64_t sub_1002C8468()
{
  v1 = v0;
  v2 = *(*((swift_isaMask & *v0) + 0x58) + 8);
  v3 = *((swift_isaMask & *v0) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for Preferences();
  v114 = *(v4 - 1);
  v115 = v4;
  v5 = v114[8];
  __chkstk_darwin();
  v113 = &v109 - v6;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v109 - v12;
  v14 = type metadata accessor for DispatchTimeInterval();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v111 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v110 = &v109 - v18;
  __chkstk_darwin();
  v112 = &v109 - v19;
  __chkstk_darwin();
  v116 = (&v109 - v20);
  __chkstk_darwin();
  v109 = &v109 - v21;
  __chkstk_darwin();
  v23 = &v109 - v22;
  __chkstk_darwin();
  v25 = &v109 - v24;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v26 = qword_100594B30;
  swift_beginAccess();
  (*(v8 + 16))(v11, &v1[v26], v7);
  v119 = v25;
  DispatchTime.distance(to:)();
  v27 = *(v8 + 8);
  v28 = v11;
  v29 = v14;
  v27(v28, v7);
  v27(v13, v7);
  *v23 = 10;
  v30 = enum case for DispatchTimeInterval.seconds(_:);
  v117 = v15;
  v118 = v23;
  v31 = *(v15 + 104);
  v31(v23, enum case for DispatchTimeInterval.seconds(_:), v14);
  v33 = *&v1[qword_100594B38];
  v32 = *&v1[qword_100594B38 + 8];
  if (v32 >> 62)
  {
    if (v32 >> 62 == 1)
    {
      v34 = v1;
      v35 = *&v1[qword_100594B00];
      swift_unownedRetainStrong();
      v36 = v113;
      WiFiInterface.preferences.getter();

      v37 = v115;
      v38 = Preferences.enableUserspaceP2POptions.getter(v115);
      (v114[1])(v36, v37);
      v39 = *PreferenceDefaults.EnableUserspaceP2POptions.keepAliveTermination.unsafeMutableAddressor();
      v40 = v117;
      v41 = v119;
      if ((v39 & ~v38) == 0)
      {
        v42 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
        v43 = *(v40 + 16);
        v44 = v116;
        v43(v116, v42, v14);
        v45 = static DispatchTimeInterval.< infix(_:_:)();
        v46 = *(v40 + 8);
        v46(v44, v14);
        if (v45)
        {
          v47 = v111;
          v43(v111, v41, v14);
          v48 = v34;
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v115 = v52;
            v116 = swift_slowAlloc();
            v120 = v116;
            *v51 = 138412546;
            *(v51 + 4) = v48;
            *v52 = v34;
            *(v51 + 12) = 2080;
            v53 = v48;
            v54 = DispatchTimeInterval.description.getter();
            v56 = v55;
            v46(v47, v14);
            v57 = sub_100002320(v54, v56, &v120);

            *(v51 + 14) = v57;
            _os_log_impl(&_mh_execute_header, v49, v50, "%@ will be terminated because no keep alive was received for %s", v51, 0x16u);
            sub_100016290(v115, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v116);

            v40 = v117;
          }

          else
          {

            v46(v47, v14);
          }

          v29 = v14;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v40 = v117;
      if (__PAIR128__(0x8000000000000000, 1) < __PAIR128__(v32, v33))
      {
        if (v32 == 0x8000000000000000 && v33 == 2)
        {
          v41 = v119;
          if (static DispatchTimeInterval.< infix(_:_:)())
          {
            v120 = 0;
            v121 = 0xE000000000000000;
            _StringGuts.grow(_:)(40);

            v120 = 0xD000000000000026;
            v121 = 0x80000001004BE550;
            v90._countAndFlagsBits = DispatchTimeInterval.description.getter();
            String.append(_:)(v90);

            sub_1002C057C(1, v120, v121, 31);
          }
        }

        else
        {
          v104 = NANConstants.serviceTerminateEventTimeout.unsafeMutableAddressor();
          v105 = v116;
          (*(v40 + 16))(v116, v104, v14);
          v41 = v119;
          v106 = static DispatchTimeInterval.< infix(_:_:)();
          (*(v40 + 8))(v105, v14);
          if (v106)
          {
            sub_1002C057C(2, 0xD000000000000026, 0x80000001004BE520, 41);
          }
        }
      }

      else if (v33 | v32 ^ 0x8000000000000000)
      {
        v41 = v119;
        if (static DispatchTimeInterval.< infix(_:_:)())
        {
          v91 = v110;
          (*(v40 + 16))(v110, v41, v14);
          v92 = v1;
          v93 = v1;
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v120 = v98;
            *v96 = 138412546;
            *(v96 + 4) = v93;
            *v97 = v92;
            *(v96 + 12) = 2080;
            v99 = v93;
            v100 = DispatchTimeInterval.description.getter();
            v102 = v101;
            (*(v117 + 8))(v91, v14);
            v103 = sub_100002320(v100, v102, &v120);

            *(v96 + 14) = v103;
            _os_log_impl(&_mh_execute_header, v94, v95, "%@ will be terminated because waiting after responding for %s", v96, 0x16u);
            sub_100016290(v97, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v98);

            v40 = v117;
          }

          else
          {

            (*(v40 + 8))(v91, v14);
          }

          v29 = v14;
          goto LABEL_34;
        }
      }

      else
      {
        v41 = v119;
        if (static DispatchTimeInterval.< infix(_:_:)())
        {
          v75 = v109;
          (*(v40 + 16))(v109, v41, v14);
          v76 = v1;
          v77 = v1;
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = v14;
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v120 = v83;
            *v81 = 138412546;
            *(v81 + 4) = v77;
            *v82 = v76;
            *(v81 + 12) = 2080;
            v84 = v77;
            v85 = DispatchTimeInterval.description.getter();
            v87 = v86;
            (*(v117 + 8))(v75, v80);
            v88 = sub_100002320(v85, v87, &v120);

            *(v81 + 14) = v88;
            _os_log_impl(&_mh_execute_header, v78, v79, "%@ will be terminated because waiting after request received for %s", v81, 0x16u);
            sub_100016290(v82, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v83);

            v29 = v80;
            v40 = v117;
          }

          else
          {

            (*(v40 + 8))(v75, v14);
          }

LABEL_34:
          sub_1002C1BE0();
LABEL_35:
          v41 = v119;
        }
      }
    }
  }

  else
  {
    v58 = v112;
    v59 = v116;
    *v116 = 15;
    v31(v59, v30, v29);
    v41 = v119;
    v60 = static DispatchTimeInterval.< infix(_:_:)();
    v40 = v117;
    v61 = *(v117 + 8);
    (v61)(v59, v29);
    if (v60)
    {
      v116 = v61;
      v62 = v58;
      (*(v40 + 16))(v58, v41, v29);
      v63 = v1;
      v64 = v1;
      v65 = Logger.logObject.getter();
      v66 = v29;
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v65, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v114 = v69;
        v115 = swift_slowAlloc();
        v120 = v115;
        *v68 = 138412802;
        *(v68 + 4) = v64;
        *v69 = v63;
        *(v68 + 12) = 2080;
        v70 = v64;
        v71 = DispatchTimeInterval.description.getter();
        v73 = v72;
        (v116)(v62, v66);
        v74 = sub_100002320(v71, v73, &v120);

        *(v68 + 14) = v74;
        *(v68 + 22) = 2048;
        *(v68 + 24) = v33;
        _os_log_impl(&_mh_execute_header, v65, v67, "%@ did not get the datapath response acknowledgement for %s, retry #%ld", v68, 0x20u);
        sub_100016290(v114, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v115);

        v40 = v117;
      }

      else
      {

        (v116)(v62, v66);
      }

      v29 = v66;
      sub_1002C161C();
      goto LABEL_35;
    }
  }

  v107 = *(v40 + 8);
  v107(v118, v29);
  return v107(v41, v29);
}

uint64_t sub_1002C9248(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v9)
  {
    v12 = qword_100594B08;
    swift_beginAccess();
    sub_1002CB474(a1, v1 + v12);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002C938C(uint64_t a1, unint64_t a2)
{
  v5 = v2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    *(v8 + 14) = sub_100002320(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ will terminate because of unsatisfiable policy: %s", v8, 0x16u);
    sub_100016290(v9, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v10);
  }

  sub_1002C1BE0();
}

uint64_t sub_1002C9500(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v3 = *(*(sub_10005DC58(&unk_100596870, &unk_1004B0F60) - 8) + 64);
  __chkstk_darwin();
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v31 - v6;
  v8 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = __chkstk_darwin();
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_100594B38 + 8) >> 62 == 1)
  {
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    v19 = qword_100594B30;
    swift_beginAccess();
    (*(v14 + 40))(v2 + v19, v18, v13);
    swift_endAccess();
    v20 = v2 + qword_100594B08;
    swift_beginAccess();
    sub_100012400(v20 + 136, v34, &unk_1005974B0, &qword_1004AFCF0);
    v21 = v35;
    if (v35 == 255)
    {
      return sub_100016290(v34, &unk_1005974B0, &qword_1004AFCF0);
    }

    else
    {
      result = sub_10020C758(v34);
      if ((v21 & 1) == 0)
      {
        v22 = v33 + *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);
        v23 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
        sub_100012400(v22 + *(v23 + 48), v7, &unk_100596870, &unk_1004B0F60);
        v24 = v9;
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          return sub_100016290(v7, &unk_100596870, &unk_1004B0F60);
        }

        else
        {
          sub_1002CB4D0(v7, v12, type metadata accessor for NANInternetSharingStatistics.Requester);
          v25 = *(v2 + qword_100594B00);
          swift_unownedRetainStrong();
          v26 = v25 + *(*v25 + 760);
          swift_beginAccess();
          if (*(v26 + 8))
          {
            v27 = ObjectType;
            WitnessTable = swift_getWitnessTable();
            v29 = sub_10036DB68(v27, WitnessTable);
            sub_1002CB538(v12, v5, type metadata accessor for NANInternetSharingStatistics.Requester);
            (*(v24 + 56))(v5, 0, 1, v8);
            sub_100337D4C(v5, v29 & 0xFFFFFFFFFFFFFFLL);
          }

          swift_endAccess();

          swift_unownedRetainStrong();
          sub_1002CB5A0(v12, type metadata accessor for NANInternetSharingStatistics.Requester);
          v30 = v25 + *(*v25 + 760);
          swift_beginAccess();
          if (*(v30 + 8))
          {
            *v30 = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002C997C()
{
  v1 = v0;
  v2 = *(*((swift_isaMask & *v0) + 0x58) + 8);
  v3 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = *(v0 + qword_100594B38 + 8);
  if (v10 < 0 && (v11 = *(v0 + qword_100594B38), __PAIR128__(v10 & 0x7FFFFFFFFFFFFFFFLL, v11) >= 2))
  {
    if (!(v11 ^ 2 | v10 & 0x7FFFFFFFFFFFFFFFLL))
    {

      return sub_1002C057C(1, 0xD000000000000030, 0x80000001004BE490, 34);
    }
  }

  else
  {
    v12 = *(v0 + qword_100594B00);
    v13 = *(v1 + qword_100594B00);
    swift_unownedRetainStrong();
    sub_10040CBA8();

    swift_unownedRetainStrong();
    v14 = *(*v12 + 96);
    swift_beginAccess();
    (*(v5 + 16))(v9, v12 + v14, AssociatedTypeWitness);

    v15 = v1 + qword_100594B08;
    swift_beginAccess();
    v22 = *(v15 + 10);
    v16 = *(v15 + 4);
    v17 = *v15;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 240))(v17, v16 | (v22 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v9, AssociatedTypeWitness);
    result = sub_1002CA7EC(2, 0x8000000000000000);
    v19 = qword_100594B48;
    if (*(v1 + qword_100594B48) == 1)
    {
      sub_100012400((v15 + 136), v23, &unk_1005974B0, &qword_1004AFCF0);
      if (v24 == 255)
      {
        return sub_100016290(v23, &unk_1005974B0, &qword_1004AFCF0);
      }

      else if (v24)
      {
        sub_100029954(v23, v25);
        v20 = v26;
        v21 = v27;
        sub_100029B34(v25, v26);
        (*(v21 + 16))(*(v15 + 1) | (*(v15 + 1) << 16), v20, v21);
        *(v1 + v19) = 0;
        return sub_100002A00(v25);
      }

      else
      {
        return sub_10020C758(v23);
      }
    }
  }

  return result;
}

void sub_1002C9DA8(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_1002CAF78();
  v4 = (a2 + qword_100594B08);
  swift_beginAccess();
  v5 = WiFiAwarePublisherDataSessionHandle.init(_:)(*v4 | (v4[8] << 8) | (v4[9] << 16) | (*(v4 + 10) << 24));
  [v3 publishDataTerminatedForHandle:v5 reason:2];
}

id sub_1002C9E54(void *a1)
{
  v1 = a1;
  sub_1002C9EBC();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_1002C9EBC()
{
  _StringGuts.grow(_:)(28);

  v1 = (v0 + qword_100594B08);
  swift_beginAccess();
  v13 = *v1;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A6F543C205DLL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = WiFiAddress.description.getter(*(v1 + 4) | (*(v1 + 10) << 16));
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8254;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v7 = *(v1 + 7);
  v6 = *(v1 + 8);

  v8 = NANServiceName.description.getter(v7, v6);
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return 0xD000000000000016;
}

void sub_1002CA00C(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_1002CAEB4();
}

void sub_1002CA064()
{
  if (!qword_100596670[0])
  {
    type metadata accessor for DispatchTime();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_100596670);
    }
  }
}

uint64_t sub_1002CA0BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1002CA0F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1002CA114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002CA170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002CA1D0(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1002CA230()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002CA2BC;

  return sub_1002CA3B8();
}

uint64_t sub_1002CA2BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1002CA3D8()
{
  v1 = v0[5];
  if (*&v1[qword_100594B38 + 8] >> 62 == 1)
  {
    v2 = *&v1[qword_100594B80];
    v0[6] = v2;
    if (v2)
    {

      return _swift_task_switch(sub_1002CA578, v2, 0);
    }
  }

  else
  {
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[5];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 16777472;
      v9 = qword_100594B08;
      swift_beginAccess();
      v8[4] = v7[v9];

      _os_log_impl(&_mh_execute_header, v4, v5, "Datapath Initiator ID: %hhu is not established yet.", v8, 5u);
    }

    else
    {
    }
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1002CA578()
{
  v1 = *(v0 + 48);
  v2 = sub_10038B2F4();

  v3 = *(v0 + 8);

  return v3(v2);
}

char *sub_1002CA5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v6 = sub_1002CAE30(a1, a2, a3, a4, a5 | ((HIDWORD(a5) & 1) << 32), a6);

  return v6;
}

uint64_t sub_1002CA6BC(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1002CA71C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002CA75C()
{
  result = qword_100594CD0;
  if (!qword_100594CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100594CD0);
  }

  return result;
}

uint64_t sub_1002CA7B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002CA7EC(void *a1, unint64_t a2)
{
  v3 = (v2 + qword_100594B38);
  v4 = *(v2 + qword_100594B38);
  v5 = *(v2 + qword_100594B38 + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_1002CAEE4(a1, a2);
  sub_1002CAF2C(v4, v5);

  return sub_1002BE3EC();
}

char *sub_1002CA844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v58 = a6;
  v54 = a5;
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v10 = *v6;
  v11 = swift_isaMask;
  v12 = type metadata accessor for Logger();
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = v61[8];
  __chkstk_darwin();
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v54 - v15;
  *(v6 + qword_100594B10) = 0;
  Logger.init(subsystem:category:)();
  *(v6 + qword_100594B18) = xmmword_100483C50;
  *(v6 + qword_100594B20) = 0;
  v17 = (v6 + qword_10059B820);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v6 + qword_10059B828);
  *v18 = 0;
  v18[1] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v6 + qword_100594B38) = xmmword_1004AE950;
  *(v6 + qword_100594B40) = 0;
  *(v6 + qword_100594B48) = 0;
  v19 = (v6 + qword_100594B58);
  *v19 = 0;
  v19[1] = 0;
  v20 = v6 + qword_100594B60;
  *v20 = 0;
  v20[4] = 1;
  *(v6 + qword_100594B68) = 0;
  v21 = qword_10059B838;
  NANWiFiAwareStatistics.init()(&v64);
  memcpy(v6 + v21, &v64, 0x120uLL);
  *(v6 + qword_100594B70) = 0;
  *(v6 + qword_100594B78) = 0;
  *(v6 + qword_100594B80) = 0;
  *(v6 + qword_10059B840) = 1;
  v22 = qword_10059B848;
  v23 = type metadata accessor for DispatchTime();
  (*(*(v23 - 8) + 56))(&v7[v22], 1, 1, v23);
  v7[qword_10059B850] = 0;
  *&v7[qword_100594B00] = a1;
  v60 = a2;
  sub_1002CB130(a2, &v7[qword_100594B08]);
  v24 = *((v11 & v10) + 0x50);
  v25 = *((v11 & v10) + 0x58);
  type metadata accessor for LowLatencyInternetRequesterPolicy();
  swift_unownedRetain();

  v27 = sub_100408C58(v26);

  *&v7[qword_100594B50] = v27;
  v63.receiver = v7;
  v63.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v63, "init");
  v29 = &v28[qword_100594B58];
  v30 = *&v28[qword_100594B58 + 8];
  v31 = v57;
  *v29 = v56;
  *(v29 + 1) = v31;
  v32 = v28;

  v33 = &v32[qword_100594B60];
  v34 = BYTE4(v54);
  *v33 = v54;
  v33[4] = v34 & 1;
  v32[qword_100594B68] = v58;
  v35 = qword_10059B818;
  v36 = v61[2];
  v36(v16, &v32[qword_10059B818], v62);
  v37 = v16;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v32;
    *v41 = v32;
    v42 = v32;
    _os_log_impl(&_mh_execute_header, v38, v39, "Created %@", v40, 0xCu);
    sub_100016290(v41, &qword_10058B780, &qword_100480AC0);
  }

  v43 = v62;
  v44 = v61[1];
  v44(v37, v62);
  v45 = &v32[v35];
  v46 = v59;
  v36(v59, v45, v43);
  v47 = v32;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v51 = v47;
    v52 = v47;
    _os_log_impl(&_mh_execute_header, v48, v49, "%@ was started", v50, 0xCu);
    sub_100016290(v51, &qword_10058B780, &qword_100480AC0);
  }

  sub_1002CB18C(v60);
  v44(v46, v62);
  return v47;
}

void *sub_1002CAEE4(void *result, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
    v3 = result;
  }

  return result;
}

void sub_1002CAF2C(void *a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }
}

unint64_t sub_1002CAF78()
{
  result = qword_100595C90;
  if (!qword_100595C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100595C90);
  }

  return result;
}

unint64_t sub_1002CAFC4()
{
  result = qword_100596860;
  if (!qword_100596860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100596860);
  }

  return result;
}

uint64_t sub_1002CB018(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

void sub_1002CB1E0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1002C8404(a1, a2);
}

void sub_1002CB1EC(void **a1)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 23))
  {
    v2 = 0;
  }

  sub_1002C8128(a1, *(v1 + 16) | (*(v1 + 20) << 32) | (*(v1 + 21) << 40) | (*(v1 + 22) << 48) | v2, *(v1 + 24) | (*(v1 + 28) << 32) | (*(v1 + 29) << 40), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_1002CB258(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1 + ((*(v4 + 80) + 88) & ~*(v4 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1002CB380;

  return sub_1002C79D8(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1002CB380()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1002CB4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CB538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CB5A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002CB600(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1002CE600;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100573810;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1002CB884(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = v23;
  aBlock[4] = sub_1002CE5E0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005737C0;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v24);
}

uint64_t sub_1002CBB20(const void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  memcpy((v11 + 16), a1, 0x120uLL);
  sub_1002CB02C(a1, v20);
  v12 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v1;
  v20[4] = sub_1002CE5D8;
  v20[5] = v13;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_10000C8B8;
  v20[3] = &unk_100573770;
  v14 = _Block_copy(v20);
  v15 = v12;

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v6, v3);
  (*(v7 + 8))(v10, v17);
}

void sub_1002CBDF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = AWDLTrafficRegistrationServiceRemoteCamera;

  LOBYTE(v5) = sub_1004479A4(v5, v4);

  swift_beginAccess();
  *(a1 + 85) = v5 & 1;
  v6 = *(a2 + 56);
  v7 = AWDLTrafficRegistrationServiceRemoteScreen;

  LOBYTE(v7) = sub_1004479A4(v7, v6);

  swift_beginAccess();
  *(a1 + 86) = v7 & 1;
  v8 = *(a2 + 56);
  v9 = AWDLTrafficRegistrationServiceTVRemoteCamera;

  LOBYTE(v9) = sub_1004479A4(v9, v8);

  swift_beginAccess();
  *(a1 + 87) = v9 & 1;
  v10 = *(a2 + 56);
  v11 = AWDLTrafficRegistrationServiceUniversalControl;

  LOBYTE(v11) = sub_1004479A4(v11, v10);

  swift_beginAccess();
  *(a1 + 88) = v11 & 1;
  v12 = *(a2 + 56);
  v13 = AWDLTrafficRegistrationServiceSidecar;

  LOBYTE(v13) = sub_1004479A4(v13, v12);

  swift_beginAccess();
  *(a1 + 89) = v13 & 1;
  v14 = *(a2 + 56);
  v15 = AWDLTrafficRegistrationServiceAirPlay;

  LOBYTE(v15) = sub_1004479A4(v15, v14);

  swift_beginAccess();
  *(a1 + 90) = v15 & 1;
  LOBYTE(v14) = *(a2 + 17);
  swift_beginAccess();
  *(a1 + 144) = v14;
  v16 = *(a2 + 24);
  swift_beginAccess();
  *(a1 + 128) = v16;
  v17 = *(a2 + 32);
  swift_beginAccess();
  *(a1 + 136) = v17;
  v18 = *(a2 + 40);
  swift_beginAccess();
  *(a1 + 168) = v18;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    if (v16 + v17 > 1 || v18 >= 1)
    {
      swift_beginAccess();
      *(a1 + 123) = 1;
    }

    v19 = String._bridgeToObjectiveC()();
    IsEventUsed = AnalyticsIsEventUsed();

    if (IsEventUsed)
    {
      v21 = String._bridgeToObjectiveC()();
      swift_beginAccess();
      memcpy(__dst, (a1 + 16), sizeof(__dst));
      sub_1002CB02C(__dst, &v23);
      NANWiFiAwareStatistics.eventPayload.getter();
      sub_1002CB088(__dst);
      sub_1000840B4();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      AnalyticsSendEvent();
    }
  }
}

uint64_t sub_1002CC168(_OWORD *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v14 = swift_allocObject();
  v15 = a1[3];
  *(v14 + 48) = a1[2];
  *(v14 + 64) = v15;
  *(v14 + 80) = a1[4];
  v16 = a1[1];
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  *(v14 + 96) = v1;
  aBlock[4] = sub_1002CE520;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005736F8;
  v17 = _Block_copy(aBlock);
  v18 = v13;
  sub_1002CE52C(a1, v20);

  static DispatchQoS.unspecified.getter();
  v20[0] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void sub_1002CC40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v63 = *a1;
  sub_1002CE52C(a1, &v66);
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10005E2E4();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  sub_1002CB0DC(a1);
  swift_beginAccess();
  v12 = *(a2 + 48);
  v13 = *(v12 + 16);
  v53 = v9;
  v55 = v11;
  if (v13 && (v14 = sub_1000102E8(v9, v11), (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 80 * v14;
    v18 = *(v16 + 48);
    v17 = *(v16 + 64);
    v19 = *(v16 + 16);
    v68 = *(v16 + 32);
    v69 = v18;
    v67 = v19;
    v66 = *v16;
    v70 = v17;
    v58 = HIWORD(v19);
    v59 = WORD6(v19);
    v60 = WORD5(v19);
    v61 = WORD4(v19);
    v20 = WORD3(v19);
    v21 = *(&v18 + 1);
    v62 = v18;
    v22 = WORD2(v19);
    v23 = WORD1(v19);
    v25 = *(&v68 + 1);
    v24 = v68;
    v26 = v19;
    v27 = *(&v66 + 1);
    v54 = v66;
    v56 = v17;
    v28 = *(v16 + 65);
    *&v65[3] = *(v16 + 68);
    *v65 = v28;
    v57 = *(&v17 + 1);
    sub_1002CE52C(&v66, v63);
  }

  else
  {

    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v21 = 0;
    v20 = 0;
    v62 = 0;
    v22 = 0;
    v25 = 0;
    v29 = v11;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v54 = v9;
    v27 = v29;
  }

  swift_endAccess();
  LODWORD(v30) = *(a1 + 64);
  if (v30 <= 2)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_33;
    }

    v31 = v21;
    if (v30 != 1)
    {
LABEL_23:
      ++v23;
      v21 = v62;
      if ((v23 & 0x10000) == 0)
      {
        v36 = *(a1 + 72);
        v32 = __CFADD__(v25, v36);
        v25 += v36;
        if (!v32)
        {
          goto LABEL_25;
        }

LABEL_43:
        __break(1u);
        return;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    ++v26;
    v21 = v62;
    if ((v26 & 0x10000) != 0)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v30 = *(a1 + 72);
    v32 = __CFADD__(v24, v30);
    v24 += v30;
    if (!v32)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  if (v30 != 3)
  {
    v33 = v21;
    if (v30 != 4)
    {
      goto LABEL_33;
    }

    ++v20;
    v21 = v62;
    if ((v20 & 0x10000) == 0)
    {
      v34 = *(a1 + 72);
      v32 = __CFADD__(v33, v34);
      v31 = v33 + v34;
      if (!v32)
      {
        goto LABEL_25;
      }

      __break(1u);
LABEL_33:
      *&v66 = v54;
      *(&v66 + 1) = v27;
      LOWORD(v67) = v26;
      WORD1(v67) = v23;
      WORD2(v67) = v22;
      WORD3(v67) = v20;
      WORD4(v67) = v61;
      WORD5(v67) = v60;
      WORD6(v67) = v59;
      HIWORD(v67) = v58;
      *&v68 = v24;
      *(&v68 + 1) = v25;
      *&v69 = v62;
      *(&v69 + 1) = v21;
      LOBYTE(v70) = v56;
      *(&v70 + 1) = *v65;
      DWORD1(v70) = *&v65[3];
      *(&v70 + 1) = v57;
      sub_1002CB0DC(&v66);

      return;
    }

    goto LABEL_41;
  }

  if ((++v22 & 0x10000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v31 = v21;
  v35 = *(a1 + 72);
  v21 = v62 + v35;
  if (__CFADD__(v62, v35))
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  v37 = v61 + *(a1 + 24);
  if ((v37 & 0x10000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v38 = v60 + *(a1 + 26);
  if ((v38 & 0x10000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v39 = v59 + *(a1 + 28);
  if ((v39 & 0x10000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v40 = v58 + *(a1 + 30);
  if ((v40 & 0x10000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *&v66 = v54;
  *(&v66 + 1) = v27;
  LOWORD(v67) = v26;
  WORD1(v67) = v23;
  WORD2(v67) = v22;
  WORD3(v67) = v20;
  WORD4(v67) = v37;
  WORD5(v67) = v38;
  WORD6(v67) = v39;
  HIWORD(v67) = v40;
  *&v68 = v24;
  *(&v68 + 1) = v25;
  *&v69 = v21;
  *(&v69 + 1) = v31;
  LOBYTE(v70) = v56;
  *(&v70 + 1) = *v65;
  DWORD1(v70) = *&v65[3];
  *(&v70 + 1) = v57;
  swift_beginAccess();
  v41 = *(a2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(a2 + 48);
  *(a2 + 48) = 0x8000000000000000;
  sub_1003E1820(&v66, v53, v55, isUniquelyReferenced_nonNull_native);

  *(a2 + 48) = v64;
  swift_endAccess();
  if (qword_1005943E0 != -1)
  {
LABEL_38:
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100037644(v43, qword_10059B950);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v63[0] = v47;
    *v46 = 136315138;
    v48 = *(a2 + 48);

    v49 = Dictionary.description.getter();
    v51 = v50;

    v52 = sub_100002320(v49, v51, v63);

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v44, v45, "Praveen : updateAppSessionInformation : %s", v46, 0xCu);
    sub_100002A00(v47);
  }
}

void sub_1002CCB08(uint64_t a1)
{
  swift_beginAccess();
  v10 = *(a1 + 48);
  v11 = *(v10 + 16);
  if (!v11)
  {
    if (qword_1005943E0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100037644(v27, qword_10059B950);
    isa = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(isa, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, isa, v29, "Praveen : No app usage data available. Skipping system statistics submission.", v30, 2u);
    }

    goto LABEL_30;
  }

  if (v11 >> 16)
  {
    goto LABEL_41;
  }

  LOWORD(v1) = 0;
  v8 = 0;
  LOWORD(v7) = 0;
  LOWORD(v4) = 0;
  LOWORD(v2) = 0;
  v3 = 0;
  LOWORD(v6) = 0;
  LOWORD(v5) = 0;
  v12 = 0;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  if (v15)
  {
    while (1)
    {
      v16 = v12;
LABEL_10:
      v17 = (*(v10 + 56) + 80 * (__clz(__rbit64(v15)) | (v16 << 6)));
      v5 = v17[8] + v5;
      if ((v5 & 0x10000) != 0)
      {
        break;
      }

      v6 = v17[9] + v6;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_34;
      }

      v3 = v17[10] + v3;
      if ((v3 & 0x10000) != 0)
      {
        goto LABEL_35;
      }

      v2 = v17[11] + v2;
      if ((v2 & 0x10000) != 0)
      {
        goto LABEL_36;
      }

      v4 = v17[12] + v4;
      if ((v4 & 0x10000) != 0)
      {
        goto LABEL_37;
      }

      v7 = v17[13] + v7;
      if ((v7 & 0x10000) != 0)
      {
        goto LABEL_38;
      }

      v8 = v17[14] + v8;
      if ((v8 & 0x10000) != 0)
      {
        goto LABEL_39;
      }

      v1 = v17[15] + v1;
      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_40;
      }

      v15 &= v15 - 1;
      v12 = v16;
      if (!v15)
      {
        goto LABEL_7;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_21;
  }

  while (1)
  {
LABEL_7:
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v16 >= ((v13 + 63) >> 6))
    {
      break;
    }

    v15 = *(v10 + 64 + 8 * v16);
    ++v12;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  v39 = *(v10 + 16);
  if (qword_1005943E0 != -1)
  {
    goto LABEL_42;
  }

LABEL_21:
  v18 = type metadata accessor for Logger();
  sub_100037644(v18, qword_10059B950);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = a1;
  v22 = v20;
  v36 = v21;

  v38 = v22;
  log = v19;
  if (os_log_type_enabled(v19, v22))
  {
    buf = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *buf = 136315138;
    v23 = *(v36 + 48);

    v37 = Dictionary.description.getter();
    v25 = v24;

    v26 = sub_100002320(v37, v25, &v41);

    *(buf + 4) = v26;
    _os_log_impl(&_mh_execute_header, log, v38, "Praveen : submitSystemStatistics : %s", buf, 0xCu);
    sub_100002A00(v34);
  }

  else
  {
  }

  v31 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v33 = String._bridgeToObjectiveC()();
    NANWiFiAwareSystemStatistics.eventPayload.getter((v6 << 32) | (v5 << 16) | (v3 << 48) | v39, v2 | (v4 << 16) | (v7 << 32) | (v8 << 48), v1);
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();

LABEL_30:
  }
}

uint64_t sub_1002CCFCC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  aBlock[4] = a1;
  v21 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a2;
  v16 = _Block_copy(aBlock);
  v17 = v15;

  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void sub_1002CD220(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 48);
  if (*(v2 + 16))
  {
    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;
    v7 = *(a1 + 48);

    v8 = 0;
    while (v5)
    {
LABEL_10:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(v2 + 56) + 80 * (v10 | (v8 << 6)));
      v23 = v11[1];
      v21 = v11[3];
      v22 = v11[2];
      v12 = String._bridgeToObjectiveC()();
      IsEventUsed = AnalyticsIsEventUsed();

      if (IsEventUsed)
      {
        v14 = String._bridgeToObjectiveC()();
        NANWiFiAwareAppStatistics.eventPayload.getter();
        sub_1000840B4();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        AnalyticsSendEvent();
      }
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

        v16 = *(a1 + 48);
        *(a1 + 48) = &_swiftEmptyDictionarySingleton;

        return;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_1005943E0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100037644(v17, qword_10059B950);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Praveen : No app usage data available. Skipping system statistics submission.", v20, 2u);
  }
}

uint64_t sub_1002CD498(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = type metadata accessor for DispatchQoS();
  v8 = *(v19[0] - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v12 = swift_allocBox();
  sub_1002CE448(a1, v13);
  v14 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v1;
  aBlock[4] = sub_1002CE4AC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100573658;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v19[0]);
}

void sub_1002CD744(uint64_t a1, uint64_t a2)
{
  v3 = *(*(type metadata accessor for AWDLStatistics.LowLatencyStatistics(0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = swift_projectBox();
  LOBYTE(a2) = *(a2 + 16);
  swift_beginAccess();
  *(v6 + *(type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0) + 132)) = a2;
  v7 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v9 = String._bridgeToObjectiveC()();
    swift_beginAccess();
    sub_1002CE448(v6, v5);
    AWDLStatistics.LowLatencyStatistics.eventPayload.getter();
    sub_1002CE4B4(v5);
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

uint64_t sub_1002CD8AC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = type metadata accessor for DispatchQoS();
  v7 = *(v17[0] - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1002CE440;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100573608;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v17[0]);
}

uint64_t sub_1002CDB68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 56);
    *(result + 56) = a2;
  }

  return result;
}

uint64_t sub_1002CDBE0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void sub_1002CDC8C()
{
  v0 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v2 = String._bridgeToObjectiveC()();
    NANCoreAnalyticsMetrics.eventPayload.getter();
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CDE38()
{
  v0 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v2 = String._bridgeToObjectiveC()();
    AWDLStatistics.ServiceRejection.eventPayload.getter();
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CDF34(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v8 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v10 = String._bridgeToObjectiveC()();
    AWDLStatistics.TrafficRegistrationStart.eventPayload.getter(a1, a2 & 0xFFFFFFFFFFFFLL, a3 & 0x101FFFFFFFFFFFFLL, a4);
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CE050()
{
  v0 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v2 = String._bridgeToObjectiveC()();
    AWDLStatistics.TrafficRegistrationStop.eventPayload.getter();
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CE134(uint64_t a1, char a2)
{
  v4 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v6 = String._bridgeToObjectiveC()();
    AWDLStatistics.Failure.eventPayload.getter(a1, a2);
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CE254()
{
  v0 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v2 = String._bridgeToObjectiveC()();
    AWDLStatistics.AirPlayStatistics.eventPayload.getter();
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CE338()
{
  v0 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v2 = String._bridgeToObjectiveC()();
    AWDLStatistics.RtgStatistics.eventPayload.getter();
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

uint64_t sub_1002CE448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CE4B4(uint64_t a1)
{
  v2 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002CE588(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

__n128 sub_1002CE5E0()
{
  v1 = v0[1].n128_u64[0];
  v2 = v0[3].n128_u64[0];
  result = v0[2];
  *(v1 + 17) = v0[1].n128_u8[8];
  *(v1 + 24) = result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1002CE648()
{
  result = type metadata accessor for Logger();
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

void sub_1002CE718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C0464(0, v1, 0);
    v3 = a1 + 64;
    v4 = -1 << *(a1 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v7 = *(a1 + 36);
    v25 = v1;
    v26 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v27 = v6;
      v10 = *(*(a1 + 56) + 8 * v5);
      v11 = *(*(a1 + 48) + 8 * v5);

      v12 = [v11 uniqueIdentifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000C0464((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v28;
      v17[5] = v14;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v7 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 72 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_10002BEB8(v5, v26, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_10002BEB8(v5, v26, 0);
      }

LABEL_4:
      v6 = v27 + 1;
      v5 = v8;
      if (v27 + 1 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void *sub_1002CE998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000C0464(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v26 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v25 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v26 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v11 = *(*(a1 + 48) + 8 * v5);
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_1000C0464((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = result;
    v15[5] = v12;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v16 = *(v26 + 8 * v9);
    if ((v16 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v5 & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v25;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v8 = v25;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_10002BEB8(v5, v10, 0);
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_10002BEB8(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1002CEBBC(uint64_t a1, void (*a2)(id *), uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    swift_getErrorValue();
    v9 = Error.apiError.getter(v8);
    a2(&v9);
    return;
  }

  v12 = a1;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  if (swift_dynamicCast())
  {
    if (v11 == 1)
    {
      v6 = [objc_opt_self() convertError:v9];
      goto LABEL_11;
    }

    sub_1000B2594(v9, v10, v11);
  }

  v12 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (!v11)
    {
      v6 = [objc_allocWithZone(NSError) initWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
      goto LABEL_11;
    }

    sub_1000B2594(v9, v10, v11);
  }

  v6 = _convertErrorToNSError(_:)();
LABEL_11:
  v7 = v6;
  v9 = v6;
  a2(&v9);
}

BOOL sub_1002CED58(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  return static AWDLPeer.Reachability.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_1002CED74(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return AWDLPeer.Reachability.hashValue.getter(*v1);
}

void sub_1002CED88(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  AWDLPeer.Reachability.hash(into:)(a1, *v2);
}

Swift::Int sub_1002CED9C(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  AWDLPeer.Reachability.hash(into:)(v10, *v2);
  return Hasher._finalize()();
}

uint64_t sub_1002CEDEC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + a2);
    v9 = type metadata accessor for NANPeer.Service(0);
    sub_1002DF9C0(v7 + *(*(v9 - 8) + 72) * a2, v6, type metadata accessor for NANPeer.Service);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002CEEA4(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a6 + 36) == a4)
  {
    v8 = *(a6 + 56);
    v9 = *(a6 + 48) - a3 + 8 * a3;
    v10 = *(v9 + 4);
    v11 = *(v9 + 6);
    *result = *v9;
    *(result + 4) = v10;
    *(result + 6) = v11;
    v12 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    return sub_1002DF9C0(v8 + *(*(v12 - 8) + 72) * a3, a2, type metadata accessor for NANPeer.Service.AuthenticationStatus);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002CEF74(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v60 = a2;
  v7 = type metadata accessor for Logger();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  __chkstk_darwin();
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 8);
  v12 = *v4;
  v13 = *(v4 + 24);
  v14 = *(v4 + 32);
  v62 = *(v4 + 16);
  v63 = v14;
  LODWORD(v64) = *(v4 + 40);
  v15 = v13 >> 62;
  v16 = a1;
  if ((v13 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v59 = v16;

      return 0;
    }

    v65 = v11;
    v66 = v12;
    v33 = v16;
    result = sub_1002DDEBC(&v66, v33);
    v19 = v66;
    v34 = v66[2];
    if (result <= v34)
    {
      v35 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        v36 = result;
        if (!__OFADD__(v34, result - v34))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v36 > v19[3] >> 1)
          {
            if (v34 <= v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = v34;
            }

            v19 = sub_1003A72D4(isUniquelyReferenced_nonNull_native, v38, 1, v19);
            v66 = v19;
          }

          sub_10033302C(v35, v34, 0);
          v39 = v33;
          result = sub_1002DDEBC(&v65, v39);
          v26 = v65;
          v40 = v65[2];
          if (result <= v40)
          {
            v41 = result;
            if ((result & 0x8000000000000000) == 0)
            {
              v42 = result;
              if (!__OFADD__(v40, result - v40))
              {
                v43 = swift_isUniquelyReferenced_nonNull_native();
                if (!v43 || v42 > (v26[3] >> 1))
                {
                  if (v40 <= v42)
                  {
                    v44 = v42;
                  }

                  else
                  {
                    v44 = v40;
                  }

                  v26 = sub_1003A72D4(v43, v44, 1, v26);
                  v65 = v26;
                }

                sub_10033302C(v41, v40, 0);

                result = 0;
                v32 = v13 | 0x8000000000000000;
                goto LABEL_42;
              }

              goto LABEL_63;
            }

            goto LABEL_61;
          }

          goto LABEL_59;
        }

        goto LABEL_57;
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!v15)
  {
    v65 = v11;
    v66 = v12;
    v17 = v16;
    result = sub_1002DDEBC(&v66, v17);
    v19 = v66;
    v20 = v66[2];
    if (result <= v20)
    {
      v21 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        v22 = result;
        if (!__OFADD__(v20, result - v20))
        {
          v23 = swift_isUniquelyReferenced_nonNull_native();
          if (!v23 || v22 > v19[3] >> 1)
          {
            if (v20 <= v22)
            {
              v24 = v22;
            }

            else
            {
              v24 = v20;
            }

            v19 = sub_1003A72D4(v23, v24, 1, v19);
            v66 = v19;
          }

          sub_10033302C(v21, v20, 0);
          v25 = v17;
          result = sub_1002DDEBC(&v65, v25);
          v26 = v65;
          v27 = v65[2];
          if (result <= v27)
          {
            v28 = result;
            if ((result & 0x8000000000000000) == 0)
            {
              v29 = result;
              if (!__OFADD__(v27, result - v27))
              {
                v30 = swift_isUniquelyReferenced_nonNull_native();
                if (!v30 || v29 > (v26[3] >> 1))
                {
                  if (v27 <= v29)
                  {
                    v31 = v29;
                  }

                  else
                  {
                    v31 = v27;
                  }

                  v26 = sub_1003A72D4(v30, v31, 1, v26);
                  v65 = v26;
                }

                sub_10033302C(v28, v27, 0);

                result = 0;
                v32 = v13;
LABEL_42:
                *v4 = v19;
                *(v4 + 8) = v26;
                *(v4 + 16) = v62;
                *(v4 + 24) = v32;
                *(v4 + 32) = v63;
                *(v4 + 40) = v64;
                return result;
              }

              goto LABEL_62;
            }

            goto LABEL_60;
          }

          goto LABEL_58;
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
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
LABEL_63:
    __break(1u);
    return result;
  }

  v66 = v12;
  v45 = v16;
  v46 = sub_10042097C(v45);
  if ((v47 & 1) == 0)
  {
    v48 = v46;
    Logger.init(subsystem:category:)();
    v49 = v45;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v63 = v48;
      v53 = v52;
      v54 = swift_slowAlloc();
      LODWORD(v62) = v51;
      v55 = v54;
      v64 = swift_slowAlloc();
      v65 = v64;
      *v53 = 138412802;
      *(v53 + 4) = v49;
      *v55 = v49;
      *(v53 + 12) = 2080;
      v56 = v49;
      *(v53 + 14) = sub_100002320(v60, a3, &v65);
      *(v53 + 22) = 2048;
      *(v53 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v50, v62, "%@ invalidated with %s active count: %ld", v53, 0x20u);
      sub_10000BB28(v55);

      sub_100002A00(v64);
    }

    (*(v61 + 8))(v10, v7);
  }

  v57 = v66;
  v58 = v66[2];

  if (v58)
  {
    result = 0;
    *v4 = v57;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = xmmword_1004AECA0;
    *(v4 + 40) = 0;
  }

  else
  {

    *v4 = _swiftEmptyArrayStorage;
    *(v4 + 8) = _swiftEmptyArrayStorage;
    *(v4 + 16) = xmmword_1004AECB0;
    *(v4 + 32) = 0;
    *(v4 + 40) = -1;
    return 2;
  }

  return result;
}

uint64_t sub_1002CF55C()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return 0;
    }

    v31 = *(v0 + 24);
    v32 = *(v0 + 8);
    v33 = *(v0 + 40);
    v34 = *(v0 + 32);
    v35 = *(v0 + 16);
    v16 = *(v1 + 16);

    if (v16)
    {
      v17 = 0;
      v18 = (v1 + 56);
      while (v17 < *(v1 + 16))
      {
        ++v17;
        v19 = *v18;
        v21 = *(v18 - 2);
        v20 = *(v18 - 1);
        v22 = *(v18 - 3);
        sub_10000B02C();
        v23 = swift_allocError();
        *v24 = xmmword_10049C490;
        *(v24 + 16) = 1;
        v25 = v22;
        sub_10000C060();
        sub_1002CEBBC(v23, v21, v20, v19);

        result = sub_100010500();
        v18 += 32;
        if (v16 == v17)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_19;
    }

LABEL_13:
    swift_bridgeObjectRelease_n();
    result = 0;
    v15 = v31 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (v3)
  {
    sub_10000BCEC(*v0, *(v0 + 8), *(v0 + 16), v2, *(v0 + 32), *(v0 + 40));
    v26 = 0;
    v27 = 0;
    result = 2;
    v28 = -1;
    v15 = 0x80000000000000FFLL;
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v30 = *(v0 + 24);
  v32 = *(v0 + 8);
  v33 = *(v0 + 40);
  v34 = *(v0 + 32);
  v35 = *(v0 + 16);
  v4 = *(v1 + 16);

  if (!v4)
  {
LABEL_7:
    swift_bridgeObjectRelease_n();
    result = 0;
    v15 = v30;
LABEL_14:
    v27 = v34;
    v26 = v35;
    v28 = v33;
    v29 = v32;
LABEL_16:
    *v0 = _swiftEmptyArrayStorage;
    *(v0 + 8) = v29;
    *(v0 + 16) = v26;
    *(v0 + 24) = v15;
    *(v0 + 32) = v27;
    *(v0 + 40) = v28;
    return result;
  }

  v6 = 0;
  v7 = (v1 + 56);
  while (v6 < *(v1 + 16))
  {
    ++v6;
    v8 = *v7;
    v9 = *(v7 - 2);
    v10 = *(v7 - 1);
    v11 = *(v7 - 3);
    sub_10000B02C();
    v12 = swift_allocError();
    *v13 = xmmword_10049C490;
    *(v13 + 16) = 1;
    v14 = v11;
    sub_10000C060();
    sub_1002CEBBC(v12, v9, v10, v8);

    result = sub_100010500();
    v7 += 32;
    if (v4 == v6)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1002CF7FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s16P2PActivityStateOMa();
  return sub_10000ECAC(v1, v2, v3, v4);
}

uint64_t sub_1002CF878@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  v10 = _s16P2PActivityStateOMa();
  result = a4(v6, v7, v8, v9, v10);
  if (v5)
  {
    if (v5 == 1)
    {
      if (result < 2u)
      {
        result = 1;
        goto LABEL_8;
      }
    }

    else if (result != 1)
    {
      result = 2;
      goto LABEL_8;
    }

    result = 0;
  }

LABEL_8:
  *a3 = result;
  return result;
}

uint64_t sub_1002CF94C()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v11 = qword_100594E38;
    swift_beginAccess();
    v12 = *(v0 + v11);
    __chkstk_darwin();
    v13 = v1[10];
    v14 = v1[11];
    v19[-6] = v13;
    v19[-5] = v14;
    v15 = v1[12];
    v16 = v1[13];
    v19[-4] = v15;
    v19[-3] = v16;
    v17 = v1[14];
    v19[-2] = v17;
    sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

    v19[1] = v13;
    v19[2] = v14;
    v19[3] = v15;
    v19[4] = v16;
    v19[5] = v17;
    _s16P2PActivityStateOMa();
    sub_10005DC58(&qword_100595328, &qword_1004AF228);
    sub_1000472EC(&qword_100595238);
    v18 = Dictionary.compactMapValues<A>(_:)();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002CFBB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = String._bridgeToObjectiveC()();
    [v1 configureNotificationsWithBundleIdentifier:v2];
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_1002CFC5C(char a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v4 = v3;
  if ((a1 & 4) != 0)
  {
    v10 = *v4;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = *(v10 + 80);
    *(v12 + 24) = *(v10 + 88);
    *(v12 + 32) = *(v10 + 96);
    *(v12 + 48) = *(v10 + 112);
    *(v12 + 56) = v11;
    *(v12 + 64) = a2;
    v8 = (v12 + 72);
    v9 = sub_1002DFBC0;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = (v7 + 24);
    v9 = sub_1002E01F4;
  }

  v13 = v9;
  *v8 = a3;

  return v13;
}

uint64_t sub_1002CFD84(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a5;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (v20)
  {
    v54 = a6;
    aBlock[0] = v20;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    sub_100018AB4(0, &unk_100595360, NSError_ptr);
    if (swift_dynamicCast())
    {
      v51 = a7;
      v52 = a8;
      v21 = v57;
      v22 = [v57 localizedFailureReason];
      if (v22)
      {
        v23 = v22;
        v53 = a2;
        v24 = [v21 localizedRecoverySuggestion];
        if (v24)
        {
          v25 = v24;
          swift_beginAccess();
          if (swift_weakLoadStrong() && (v49 = v16, v26 = swift_unknownObjectWeakLoadStrong(), , (v50 = v26) != 0))
          {
            v48 = v21;
            v27 = [v21 localizedDescription];
            if (!v27)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = String._bridgeToObjectiveC()();
            }

            v28 = [objc_allocWithZone(UNMutableNotificationContent) init];
            [v28 setTitle:v27];

            [v28 setSubtitle:v23];
            [v28 setBody:v25];

            v29 = [objc_opt_self() defaultSound];
            [v28 setSound:v29];

            [v28 setShouldIgnoreDoNotDisturb:1];
            [v28 setShouldIgnoreDowntime:1];
            [v28 setShouldHideDate:1];
            [v28 setShouldHideTime:1];
            v30 = String._bridgeToObjectiveC()();
            v31 = [objc_opt_self() iconNamed:v30];

            [v28 setIcon:v31];
            UUID.init()();
            v32 = UUID.uuidString.getter();
            v34 = v33;
            (*(v49 + 8))(v19, v15);
            v35 = v28;
            v36 = String._bridgeToObjectiveC()();
            v37 = [objc_opt_self() requestWithIdentifier:v36 content:v35 trigger:0];

            swift_beginAccess();
            Strong = swift_weakLoadStrong();
            if (Strong && (v39 = *(Strong + qword_10059B880), , v39 == 1))
            {
              v40 = swift_allocObject();
              v41 = v54;
              v40[2] = v55;
              v40[3] = v41;
              v42 = v52;
              v40[4] = v51;
              v40[5] = v42;
              v43 = v53;
              v40[6] = a9;
              v40[7] = v43;
              v40[8] = v32;
              v40[9] = v34;
              aBlock[4] = sub_1002DFC44;
              aBlock[5] = v40;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1004484C8;
              aBlock[3] = &unk_1005743A8;
              v44 = _Block_copy(aBlock);

              [v50 addNotificationRequest:v37 completionHandler:v44];
              swift_unknownObjectRelease();

              _Block_release(v44);
            }

            else
            {

              swift_beginAccess();
              v45 = swift_weakLoadStrong();
              swift_unknownObjectRelease();

              if (v45)
              {
                *(v45 + qword_10059B880) = 1;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  return a3(v20);
}

uint64_t sub_1002D031C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v57 = a7;
  v58 = a8;
  v55 = a5;
  v56 = a6;
  v60 = a2;
  v61 = a4;
  v59 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  __chkstk_darwin();
  v64 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  v13 = *(v63 + 64);
  __chkstk_darwin();
  v62 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchTime();
  v15 = *(v67 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v49 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v49 - v25;
  Logger.init(subsystem:category:)();
  if (a1)
  {
    v27 = v21;
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to add notification request: %@", v30, 0xCu);
      sub_10000BB28(v31);
    }

    else
    {
    }

    v47 = v27;
  }

  else
  {
    v50 = a9;
    sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
    v51 = v10;
    v52 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v33 = *(v15 + 8);
    v53 = v15 + 8;
    v54 = v33;
    v33(v18, v67);
    (*(v22 + 16))(v24, v26, v21);
    v34 = (*(v22 + 80) + 56) & ~*(v22 + 80);
    v35 = (v23 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v56;
    *(v36 + 2) = v55;
    *(v36 + 3) = v37;
    v38 = v58;
    *(v36 + 4) = v57;
    *(v36 + 5) = v38;
    *(v36 + 6) = v50;
    (*(v22 + 32))(&v36[v34], v24, v21);
    v39 = v59;
    *&v36[v35] = v60;
    v40 = &v36[(v35 + 15) & 0xFFFFFFFFFFFFFFF8];
    v41 = v61;
    *v40 = v39;
    *(v40 + 1) = v41;
    aBlock[4] = sub_1002DFC78;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_1005743F8;
    v42 = _Block_copy(aBlock);

    v43 = v62;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
    v44 = v64;
    v45 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v46 = v52;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v42);

    (*(v66 + 8))(v44, v45);
    (*(v63 + 8))(v43, v65);
    v54(v20, v67);
    v47 = v21;
  }

  return (*(v22 + 8))(v26, v47);
}

uint64_t sub_1002D099C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removing notification request in 5 seconds...", v8, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_10005DC58(&qword_100595370, &qword_1004AF240);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100480F40;
      *(v11 + 32) = a3;
      *(v11 + 40) = a4;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [Strong removeNotificationsWithIdentifiers:isa];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1002D0B08()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1002D0B40();
  return v3;
}

void *sub_1002D0B40()
{
  v1 = *v0;
  Logger.init(subsystem:category:)();
  *(v0 + qword_10059B860) = &_swiftEmptySetSingleton;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v2 = qword_10059B878;
  type metadata accessor for XPCSession(0);
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  _s22P2PActivityCoordinatorC25AirPlayActivityTranslatorVMa();
  sub_10000B48C(&unk_1005953A0, type metadata accessor for XPCSession);
  *(v0 + v2) = Dictionary.init()();
  *(v0 + qword_10059B880) = 1;
  *(v0 + qword_10059B888) = 0;
  v8 = qword_100594E30;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  _s16P2PActivityStateOMa();
  sub_1000472EC(&qword_100595238);
  *(v0 + v8) = Dictionary.init()();
  v9 = qword_100594E38;
  *(v0 + v9) = Dictionary.init()();
  v10 = v0 + qword_100594E40;
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 24) = xmmword_1004AECC0;
  v10[40] = 0;
  v11 = qword_100594E48;
  type metadata accessor for WiFiP2PSPITransactionType(0);
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType);
  *(v0 + v11) = Dictionary.init()();
  return v0;
}

uint64_t sub_1002D0E10(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v107 = a4;
  v108 = a3;
  v109 = a1;
  v110 = a2;
  v5 = *v4;
  v6 = (*v4 + 88);
  v7 = *(*v4 + 96);
  v8 = *(*v4 + 80);
  v9 = (*v4 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Preferences();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v100 - v13;
  v106 = v4;
  v15 = *(v5 + 112);
  *&v16 = v8;
  *(&v16 + 1) = *v6;
  v17 = v110;
  *&v18 = v7;
  *(&v18 + 1) = *v9;
  v104 = v16;
  v105 = v18;
  v112 = v18;
  v111 = v16;
  v113 = v15;
  v19 = type metadata accessor for P2PController.Components();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v23 = &v100 - v22;
  v24 = *(*(type metadata accessor for DispatchPredicate() - 8) + 64);
  v25 = __chkstk_darwin();
  v28 = (&v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v17 <= 2)
  {
    if (v17 < 2)
    {
      v29 = v26;
      v30 = v25;
      v31 = v15;
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v32 = v109;
      v33 = *&v109[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v34 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
      v35 = *v34;
      v36 = static NSObject.== infix(_:_:)();

      if (v36)
      {
        v37 = *v34;
        *v28 = v37;
        (*(v29 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v30);
        v38 = v37;
        LOBYTE(v37) = _dispatchPreconditionTest(_:)();
        result = (*(v29 + 8))(v28, v30);
        if (v37)
        {
          v40 = v106;
          v111 = v104;
          v112 = v105;
          v113 = v31;
          if (v110)
          {
            v41 = _s25P2PTrafficPolicyResponderCMa();
            v42 = v32;

            v43 = objc_allocWithZone(v41);
            v44 = sub_1002DF3D4(v42, v40);
          }

          else
          {
            v95 = _s23P2PTransactionResponderCMa();
            v96 = v32;

            v97 = objc_allocWithZone(v95);
            v44 = sub_1002DF1E0(v96, v40);
          }

          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_28:
      v92 = 2;
      return v108(v92);
    }

    v61 = v109;
    if (v17 == 2)
    {
      v62 = v26;
      v63 = v25;
      v64 = v15;
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v65 = *&v61[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v66 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
      v67 = *v66;
      v68 = static NSObject.== infix(_:_:)();

      if ((v68 & 1) == 0)
      {
        goto LABEL_28;
      }

      v69 = *v66;
      *v28 = v69;
      (*(v62 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v63);
      v70 = v69;
      LOBYTE(v69) = _dispatchPreconditionTest(_:)();
      result = (*(v62 + 8))(v28, v63);
      if ((v69 & 1) == 0)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v71 = sub_10000EC3C(sub_10000DFFC);
      if (v71)
      {
        v72 = v71;
        v111 = v104;
        v112 = v105;
        v113 = v64;
        type metadata accessor for P2PController();
        swift_getWitnessTable();
        type metadata accessor for AWDLBonjourOffload();
        v73 = v61;
        v74 = sub_1003076B0(v72, v73);
LABEL_24:

        v108(0);
      }

      v98 = objc_allocWithZone(type metadata accessor for EmptyBonjourOffload());
      v94 = v61;
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (v17 == 3)
  {
    v75 = v11;
    v102 = v20;
    v103 = v26;
    v110 = v25;
    v101 = v15;
    sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
    v76 = *&v109[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
    v77 = OS_dispatch_queue.nan.unsafeMutableAddressor();
    v78 = *v77;
    v79 = static NSObject.== infix(_:_:)();

    if ((v79 & 1) == 0)
    {
      goto LABEL_28;
    }

    v80 = *v77;
    *v28 = *v77;
    v81 = v103;
    v82 = v110;
    (*(v103 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v110);
    v83 = v80;
    LOBYTE(v80) = _dispatchPreconditionTest(_:)();
    result = (*(v81 + 8))(v28, v82);
    if ((v80 & 1) == 0)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    Strong = swift_weakLoadStrong();
    v85 = v102;
    if (Strong)
    {
      (*(v102 + 16))(v23, Strong + *(*Strong + 136), v19);

      (*(v75 + 16))(v14, v23, v10);
      (*(v85 + 8))(v23, v19);
      v86 = Preferences.enableUserspaceP2POptions.getter(v10);
      (*(v75 + 8))(v14, v10);
      if ((*PreferenceDefaults.EnableUserspaceP2POptions.awdlToWiFiAwareMigration.unsafeMutableAddressor() & ~v86) == 0)
      {
        v87 = sub_10000EC3C(sub_10001BDD0);
        if (v87)
        {
          v88 = v87;
          v111 = v104;
          v112 = v105;
          v113 = v101;
          type metadata accessor for P2PController();
          swift_getWitnessTable();
          type metadata accessor for WiFiAwareBonjourOffload();
          v73 = v109;
          v74 = sub_1003071A0(v88, v73);
          goto LABEL_24;
        }
      }
    }

    v93 = objc_allocWithZone(type metadata accessor for EmptyBonjourOffload());
    v94 = v109;
LABEL_33:
    v99 = v94;

LABEL_34:
    v92 = 0;
    return v108(v92);
  }

  v45 = v109;
  if (v17 != 4)
  {
LABEL_25:
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 134217984;
      *(v91 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v89, v90, "Unhandled XPC responder type: %lu", v91, 0xCu);
    }

    goto LABEL_28;
  }

  v46 = v26;
  v47 = v25;
  v48 = v15;
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v49 = *&v45[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
  v50 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v51 = *v50;
  v52 = static NSObject.== infix(_:_:)();

  if ((v52 & 1) == 0)
  {
    goto LABEL_28;
  }

  v53 = *v50;
  *v28 = v53;
  (*(v46 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v47);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  result = (*(v46 + 8))(v28, v47);
  if (v53)
  {
    v111 = v104;
    v112 = v105;
    v113 = v48;
    v55 = _s16UIAgentResponderCMa();
    v56 = v45;
    v57 = objc_allocWithZone(v55);
    v58 = sub_1002DC9F8(v56);
    if (v58)
    {
      v59 = v58;
      v108(0);
      v60 = *&v59[qword_1005950A8];
      swift_unknownObjectRetain();
      swift_unknownObjectWeakAssign();
      sub_1002CFBB0();

      return swift_unknownObjectRelease();
    }

    goto LABEL_28;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1002D18E4(void *a1, unsigned int a2)
{
  v3 = v2;
  v6 = a2;
  v7 = *v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  v14 = __chkstk_darwin();
  v17 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v73 = a2;
    v75 = v17;
    v76 = v15;
    v77 = v12;
    v78 = v14;
    v79 = v9;
    v80 = v8;
    v18 = swift_allocObject();
    sub_10000B02C();
    v19 = v7[10];
    v18[2] = v19;
    v20 = v7[11];
    v18[3] = v20;
    v21 = v7[12];
    v18[4] = v21;
    v22 = v7[13];
    v18[5] = v22;
    v23 = v7[14];
    v18[6] = v23;
    v72 = swift_allocError();
    *v24 = xmmword_100481800;
    *(v24 + 16) = 1;
    v25 = qword_100594E30;
    swift_beginAccess();
    v26 = swift_allocObject();
    *&v27 = v19;
    *(&v27 + 1) = v20;
    v28 = v23;
    *&v29 = v21;
    *(&v29 + 1) = v22;
    v81 = v29;
    v82 = v27;
    *(v26 + 16) = v27;
    *(v26 + 32) = v29;
    *(v26 + 48) = v23;
    *(v26 + 56) = sub_10000EC8C;
    v74 = v18;
    *(v26 + 64) = v18;
    v30 = *(v3 + v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = *(v3 + v25);
    v32 = v88;
    *(v3 + v25) = 0x8000000000000000;
    v83 = a1;
    v33 = sub_1003E09E8(a1);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      __break(1u);
    }

    else
    {
      v38 = v33;
      v39 = v34;
      v40 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v90 = v81;
      aBlock = v82;
      v71 = v28;
      v91 = v28;
      v41 = _s16P2PActivityStateOMa();
      sub_1000472EC(&qword_100595238);
      v70[1] = v40;
      type metadata accessor for _NativeDictionary();
      v42 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v37);
      v43 = v88;
      if (!v42)
      {
LABEL_6:
        *(v3 + v25) = v43;
        if ((v39 & 1) == 0)
        {
          v46 = *(v26 + 64);
          (*(v26 + 56))(&aBlock);
          v88 = v83;
          v47 = v83;
          _NativeDictionary._insert(at:key:value:)();
        }

        v48 = v43[7] + 48 * v38;
        v49 = v73;
        v50 = sub_10000FEC8(v73, v72, 1, v41);
        swift_endAccess();

        v51 = v83;
        sub_1002D18E4(v83, v50);
        v52 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
        v53 = swift_allocObject();
        swift_weakInit();
        v54 = swift_allocObject();
        v55 = v81;
        *(v54 + 16) = v82;
        *(v54 + 32) = v55;
        *(v54 + 48) = v71;
        *(v54 + 56) = v53;
        *(v54 + 64) = v49;
        *(v54 + 72) = v51;
        v91 = sub_1002DF79C;
        v92 = v54;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v90 = sub_10000C8B8;
        *(&v90 + 1) = &unk_1005740B0;
        v56 = _Block_copy(&aBlock);
        v57 = v51;
        v58 = v52;

        v59 = v75;
        static DispatchQoS.unspecified.getter();
        *&v84 = _swiftEmptyArrayStorage;
        sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
        v60 = v77;
        v61 = v80;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v56);

        (*(v79 + 8))(v60, v61);
        (*(v76 + 8))(v59, v78);

        return;
      }

      v44 = sub_1003E09E8(v83);
      if ((v39 & 1) == (v45 & 1))
      {
        v38 = v44;
        goto LABEL_6;
      }
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v62 = qword_100594E30;
  swift_beginAccess();
  v63 = *(v3 + v62);
  if (*(v63 + 16))
  {
    v64 = *(v3 + v62);

    sub_1003E09E8(a1);
    if (v65)
    {
      v66 = *(v63 + 36);

      v67 = *(v3 + v62);
      sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v68 = v7[14];

      v69 = *(v7 + 6);
      v84 = *(v7 + 5);
      v85 = v69;
      v86 = v68;
      _s16P2PActivityStateOMa();
      sub_1000472EC(&qword_100595238);
      Dictionary.subscript.getter();

      if (*(&v90 + 1) >> 62 != 3 || v92 || *(&v90 + 1) != 0xC000000000000000 || *(&aBlock + 1) | aBlock | v90 | v91)
      {
        sub_10000BCEC(aBlock, *(&aBlock + 1), v90, *(&v90 + 1), v91, v92);
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for Dictionary();
        Dictionary.remove(at:)();
        swift_endAccess();
        sub_10000BCEC(aBlock, *(&aBlock + 1), v90, *(&v90 + 1), v91, v92);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1002D210C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = a7;
  v63 = a5;
  v64 = a6;
  v62 = a4;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v65 = a1;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v23 = result;
  v58 = v13;
  v59 = v12;
  v60 = a2;
  v24 = sub_10000EC3C(sub_10000DFFC);
  v57 = v17;
  v56 = v18;
  v61 = v23;
  v55 = v16;
  v54 = a8;
  if (a2 == 1)
  {
    if (v24)
    {
      sub_100448534(a3);
LABEL_7:
    }
  }

  else if (v24)
  {
    sub_100448628(a3);
    goto LABEL_7;
  }

  v25 = a3;
  v26 = a3;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v60;
    v30 = v60;
    v31 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v31 = 136315394;
    if (v30 == 1)
    {
      v32 = 0x6465767265736572;
    }

    else
    {
      v32 = 0x7672657365726E75;
    }

    if (v30 == 1)
    {
      v33 = 0xE800000000000000;
    }

    else
    {
      v33 = 0xEA00000000006465;
    }

    v34 = sub_100002320(v32, v33, aBlock);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    v35 = [v26 uniqueIdentifier];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_100002320(v36, v38, aBlock);

    *(v31 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v27, v28, "Successfully %s traffic registrations for %s", v31, 0x16u);
    swift_arrayDestroy();

    v40 = v25;
  }

  else
  {

    v40 = v25;
    v29 = v60;
  }

  v41 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v42 = swift_allocObject();
  v43 = v63;
  *(v42 + 16) = v62;
  *(v42 + 24) = v43;
  v44 = v65;
  v45 = v66;
  *(v42 + 32) = v64;
  *(v42 + 40) = v45;
  *(v42 + 48) = v54;
  *(v42 + 56) = v44;
  *(v42 + 64) = v40;
  *(v42 + 72) = v29;
  *(v42 + 80) = 0;
  *(v42 + 88) = 0;
  aBlock[4] = sub_1002DF800;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100574100;
  v46 = _Block_copy(aBlock);
  v47 = v40;
  v48 = v46;
  v49 = v47;
  v50 = v41;

  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  v51 = v55;
  v52 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v48);

  sub_10000EBB8(0, 0);

  (*(v58 + 8))(v51, v52);
  (*(v56 + 8))(v21, v57);
}

uint64_t sub_1002D28B8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v45 = a3;
    v46 = a5;
    v47 = a4;
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = a8;
    v19[5] = a9;
    v19[6] = a10;
    v20 = qword_100594E30;
    swift_beginAccess();
    v21 = swift_allocObject();
    v22 = a8;
    v23 = v21;
    v21[2] = a6;
    v21[3] = a7;
    v44 = v22;
    v21[4] = v22;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = sub_10000EC8C;
    v21[8] = v19;
    v24 = *(v18 + v20);
    isUnique = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v18 + v20);
    v25 = v50;
    *(v18 + v20) = 0x8000000000000000;
    v48 = a2;
    v41 = sub_1003E09E8(a2);
    v27 = v25[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
    }

    else
    {
      v42 = v26;
      sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v49[0] = a6;
      v49[1] = a7;
      v49[2] = v44;
      v49[3] = a9;
      v49[4] = a10;
      v30 = _s16P2PActivityStateOMa();
      sub_1000472EC(&qword_100595238);
      type metadata accessor for _NativeDictionary();
      v31 = v50;
      if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v29))
      {
        v32 = v48;
        v35 = v41;
        *(v18 + v20) = v50;
        if (v42)
        {
LABEL_9:
          v39 = v31[7] + 48 * v35;
          v40 = sub_100010434(v45, v47, v46 & 1, v30);
          swift_endAccess();
          sub_1002D18E4(v32, v40);
        }

LABEL_8:
        v36 = v35;
        v37 = v23[8];
        (v23[7])(v49);
        v35 = v36;
        v50 = v32;
        v38 = v32;
        _NativeDictionary._insert(at:key:value:)();
        goto LABEL_9;
      }

      v32 = v48;
      v33 = sub_1003E09E8(v48);
      if ((v42 & 1) == (v34 & 1))
      {
        v35 = v33;
        *(v18 + v20) = v50;
        if (v42)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D2B90(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_1002CFC5C([a1 options], a3, a4);
  v44 = v8;
  v45 = v7;
  v43 = v9;
  v10 = swift_allocObject();
  v11 = qword_100594E30;
  v12 = v6[10];
  v10[2] = v12;
  v13 = v6[11];
  v10[3] = v13;
  v14 = v6[12];
  v10[4] = v14;
  v15 = v6[13];
  v10[5] = v15;
  v16 = v6[14];
  v10[6] = v16;
  swift_beginAccess();
  v17 = swift_allocObject();
  *&v18 = v12;
  *(&v18 + 1) = v13;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v40 = v19;
  v41 = v18;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  *(v17 + 56) = sub_10000EC8C;
  *(v17 + 64) = v10;
  v20 = v11;
  v21 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v5 + v11);
  v23 = v49;
  *(v5 + v11) = 0x8000000000000000;
  v39 = sub_1003E09E8(a1);
  v25 = v23[2];
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
  }

  else
  {
    v28 = v24;
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v47[1] = v40;
    v47[0] = v41;
    v48 = v16;
    _s16P2PActivityStateOMa();
    sub_1000472EC(&qword_100595238);
    type metadata accessor for _NativeDictionary();
    v29 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27);
    v30 = v49;
    if (!v29)
    {
      v31 = a1;
      v34 = v39;
      *(v5 + v20) = v49;
      if (v28)
      {
LABEL_8:
        v37 = v30[7] + 48 * v34;
        LODWORD(v37) = sub_10000ECAC(a2, v45, v44, v43 & 1);
        swift_endAccess();
        sub_1002D18E4(v31, v37);
        sub_100010500();
      }

LABEL_7:
      v35 = *(v17 + 64);
      (*(v17 + 56))(v47);
      v49 = v31;
      v36 = v31;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v31 = a1;
    v32 = sub_1003E09E8(a1);
    if ((v28 & 1) == (v33 & 1))
    {
      v34 = v32;
      *(v5 + v20) = v49;
      if (v28)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002D2ED0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v10 = qword_100594E30;
  v11 = v7[10];
  v8[2] = v11;
  v12 = v7[11];
  v8[3] = v12;
  v13 = v7[12];
  v8[4] = v13;
  v14 = v7[13];
  v8[5] = v14;
  v15 = v7[14];
  v8[6] = v15;
  v41 = v9;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  swift_beginAccess();
  v16 = swift_allocObject();
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v39 = v18;
  v40 = v17;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  *(v16 + 48) = v15;
  *(v16 + 56) = sub_10000EC8C;
  *(v16 + 64) = v8;

  v19 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v5 + v10);
  v21 = v48;
  *(v5 + v10) = 0x8000000000000000;
  v44 = sub_1003E09E8(a1);
  v23 = v21[2];
  v24 = (v22 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v22;
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v46[0] = v40;
    v46[1] = v39;
    v47 = v15;
    _s16P2PActivityStateOMa();
    sub_1000472EC(&qword_100595238);
    type metadata accessor for _NativeDictionary();
    v27 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25);
    v28 = v48;
    if (!v27)
    {
      v32 = v44;
      v29 = a1;
      *(v5 + v10) = v48;
      if (v26)
      {
LABEL_8:
        v36 = v28[7] + 48 * v32;
        sub_10000B08C(a2, sub_1002E01F4, v41, 1);
        LODWORD(v36) = v37;
        swift_endAccess();

        sub_1002D18E4(v29, v36);
      }

LABEL_7:
      v33 = v32;
      v34 = *(v16 + 64);
      (*(v16 + 56))(v46);
      v32 = v33;
      v48 = v29;
      v35 = v29;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v29 = a1;
    v30 = sub_1003E09E8(a1);
    if ((v26 & 1) == (v31 & 1))
    {
      v32 = v30;
      *(v5 + v10) = v48;
      if (v26)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002D3208(void *a1, void *a2, void *a3)
{
  v4 = *a2;
  v5 = *a1;
  v6 = swift_allocObject();
  *&v41[0] = 0;
  *(&v41[0] + 1) = 0xE000000000000000;
  v40 = v4[10];
  v6[2] = v40;
  v39 = v4[11];
  v6[3] = v39;
  v7 = v4[12];
  v6[4] = v7;
  v8 = v4[13];
  v6[5] = v8;
  v9 = v4[14];
  v6[6] = v9;
  _StringGuts.grow(_:)(40);
  v10._object = 0x80000001004BEC10;
  v10._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v10);
  v43 = v5;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  sub_1000472EC(&qword_1005953B0);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v37 = v41[0];
  v11 = qword_100594E30;
  swift_beginAccess();
  v12 = swift_allocObject();
  *&v13 = v40;
  *(&v13 + 1) = v39;
  *&v14 = v7;
  *(&v14 + 1) = v8;
  v15 = v5;
  v35 = v14;
  v36 = v13;
  *(v12 + 16) = v13;
  *(v12 + 32) = v14;
  v16 = v9;
  *(v12 + 48) = v9;
  *(v12 + 56) = sub_10000EC8C;
  *(v12 + 64) = v6;
  v17 = *(a2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(a2 + v11);
  v19 = v44;
  *(a2 + v11) = 0x8000000000000000;
  v34 = sub_1003E09E8(v15);
  v21 = v19[2];
  v22 = (v20 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
  }

  else
  {
    v24 = v20;
    v41[0] = v36;
    v41[1] = v35;
    v42 = v16;
    _s16P2PActivityStateOMa();
    sub_1000472EC(&qword_100595238);
    type metadata accessor for _NativeDictionary();
    v25 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23);
    v26 = v44;
    if (!v25)
    {
      v29 = v34;
      *(a2 + v11) = v44;
      if (v24)
      {
LABEL_8:
        v32 = v26[7] + 48 * v29;
        LODWORD(v32) = sub_1002CEF74(a3, v37, *(&v37 + 1));
        swift_endAccess();

        sub_1002D18E4(v15, v32);
      }

LABEL_7:
      v30 = *(v12 + 64);
      (*(v12 + 56))(v41);
      v44 = v15;
      v31 = v15;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v27 = sub_1003E09E8(v15);
    if ((v24 & 1) == (v28 & 1))
    {
      v29 = v27;
      *(a2 + v11) = v44;
      if (v24)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002D3598(void *a1, unsigned int a2, int a3)
{
  v4 = v3;
  v8 = a2;
  v9 = *v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  v16 = __chkstk_darwin();
  v19 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v75 = a3;
    v76 = a2;
    v78 = v19;
    v79 = v17;
    v80 = v14;
    v81 = v16;
    v82 = v11;
    v83 = v10;
    v20 = swift_allocObject();
    sub_10000B02C();
    v21 = v9[10];
    v20[2] = v21;
    v22 = v9[11];
    v20[3] = v22;
    v23 = v9[12];
    v20[4] = v23;
    v24 = v9[13];
    v20[5] = v24;
    v25 = v9[14];
    v20[6] = v25;
    v74 = swift_allocError();
    *v26 = xmmword_100481800;
    *(v26 + 16) = 1;
    v27 = qword_100594E38;
    swift_beginAccess();
    v28 = swift_allocObject();
    *&v29 = v21;
    *(&v29 + 1) = v22;
    v30 = v25;
    *&v31 = v23;
    *(&v31 + 1) = v24;
    v84 = v31;
    v85 = v29;
    *(v28 + 16) = v29;
    *(v28 + 32) = v31;
    *(v28 + 48) = v25;
    *(v28 + 56) = sub_10000EC8C;
    v77 = v20;
    *(v28 + 64) = v20;
    v32 = *(v4 + v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v4 + v27);
    v34 = v91;
    *(v4 + v27) = 0x8000000000000000;
    v86 = a1;
    v35 = sub_1003E09E8(a1);
    v37 = v34[2];
    v38 = (v36 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      __break(1u);
    }

    else
    {
      v40 = v35;
      v41 = v36;
      v42 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v93 = v84;
      aBlock = v85;
      v73 = v30;
      v94 = v30;
      v43 = _s16P2PActivityStateOMa();
      sub_1000472EC(&qword_100595238);
      v72[1] = v42;
      type metadata accessor for _NativeDictionary();
      v44 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
      v45 = v91;
      if (!v44)
      {
LABEL_6:
        *(v4 + v27) = v45;
        if ((v41 & 1) == 0)
        {
          v48 = *(v28 + 64);
          (*(v28 + 56))(&aBlock);
          v91 = v86;
          v49 = v86;
          _NativeDictionary._insert(at:key:value:)();
        }

        v50 = v45[7] + 48 * v40;
        v51 = v76;
        v52 = sub_10000FEC8(v76, v74, 1, v43);
        swift_endAccess();

        v53 = v86;
        sub_1002D3598(v86, v52, 0);
        v54 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
        v55 = swift_allocObject();
        swift_weakInit();
        v56 = swift_allocObject();
        v57 = v84;
        *(v56 + 16) = v85;
        *(v56 + 32) = v57;
        *(v56 + 48) = v73;
        *(v56 + 56) = v55;
        *(v56 + 64) = v75 & 1;
        *(v56 + 65) = v51;
        *(v56 + 72) = v53;
        v94 = sub_1002DF6C0;
        v95 = v56;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v93 = sub_10000C8B8;
        *(&v93 + 1) = &unk_100573F20;
        v58 = _Block_copy(&aBlock);
        v59 = v53;
        v60 = v54;

        v61 = v78;
        static DispatchQoS.unspecified.getter();
        *&v87 = _swiftEmptyArrayStorage;
        sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
        v62 = v80;
        v63 = v83;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v58);

        (*(v82 + 8))(v62, v63);
        (*(v79 + 8))(v61, v81);

        return;
      }

      v46 = sub_1003E09E8(v86);
      if ((v41 & 1) == (v47 & 1))
      {
        v40 = v46;
        goto LABEL_6;
      }
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v64 = qword_100594E38;
  swift_beginAccess();
  v65 = *(v4 + v64);
  if (*(v65 + 16))
  {
    v66 = *(v4 + v64);

    sub_1003E09E8(a1);
    if (v67)
    {
      v68 = *(v65 + 36);

      v69 = *(v4 + v64);
      sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v70 = v9[14];

      v71 = *(v9 + 6);
      v87 = *(v9 + 5);
      v88 = v71;
      v89 = v70;
      _s16P2PActivityStateOMa();
      sub_1000472EC(&qword_100595238);
      Dictionary.subscript.getter();

      if (*(&v93 + 1) >> 62 != 3 || v95 || *(&v93 + 1) != 0xC000000000000000 || *(&aBlock + 1) | aBlock | v93 | v94)
      {
        sub_10000BCEC(aBlock, *(&aBlock + 1), v93, *(&v93 + 1), v94, v95);
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for Dictionary();
        Dictionary.remove(at:)();
        swift_endAccess();
        sub_10000BCEC(aBlock, *(&aBlock + 1), v93, *(&v93 + 1), v94, v95);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1002D3DE0(uint64_t a1, char a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v80 = a7;
  v81 = a8;
  v78 = a5;
  v79 = a6;
  v83 = a3;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v69[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v72 = a9;
    v76 = v13;
    v77 = v12;
    v74 = v18;
    v75 = v17;
    v82 = result;
    v73 = v21;
    v71 = v16;
    if (a2)
    {
      if (sub_10000EC3C(sub_10000DFFC))
      {
        sub_1004486F8(a4);
      }

      v23 = a4;
      v24 = a4;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v27 = 136315394;
        v28 = [v24 uniqueIdentifier];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = sub_100002320(v29, v31, aBlock);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        v33 = [v24 peerAddress];
        v34 = WiFiMACAddress.wifiAddress.getter();

        v35 = WiFiAddress.description.getter(v34 & 0xFFFFFFFFFFFFLL);
        v37 = sub_100002320(v35, v36, aBlock);

        *(v27 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v25, v26, "Successfully updated traffic registration options for %s to %s", v27, 0x16u);
        swift_arrayDestroy();
      }

      v38 = v23;
LABEL_23:
      v59 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
      v60 = swift_allocObject();
      v61 = v79;
      *(v60 + 16) = v78;
      *(v60 + 24) = v61;
      v62 = v81;
      *(v60 + 32) = v80;
      *(v60 + 40) = v62;
      *(v60 + 48) = v72;
      *(v60 + 56) = a1;
      *(v60 + 64) = v38;
      *(v60 + 72) = v83;
      *(v60 + 80) = 0;
      *(v60 + 88) = 0;
      aBlock[4] = sub_1002DF6FC;
      aBlock[5] = v60;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000C8B8;
      aBlock[3] = &unk_100573F70;
      v63 = _Block_copy(aBlock);
      v64 = v38;
      v65 = v59;

      v66 = v73;
      static DispatchQoS.unspecified.getter();
      v84 = _swiftEmptyArrayStorage;
      sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10005DC58(&unk_100595270, &unk_1004AEC80);
      sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
      v67 = v71;
      v68 = v77;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v63);

      sub_10000EBB8(0, 0);

      (*(v76 + 8))(v67, v68);
      (*(v74 + 8))(v66, v75);
    }

    v39 = v83;
    v40 = sub_10000EC3C(sub_10000DFFC);
    if (v39 == 1)
    {
      if (v40)
      {
        sub_100449054(a4);
LABEL_13:
      }
    }

    else if (v40)
    {
      sub_10044AB28(a4);
      goto LABEL_13;
    }

    v70 = a4;
    v41 = a4;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v83;
      v45 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v45 = 136315650;
      if (v44 == 1)
      {
        v46 = 7628147;
      }

      else
      {
        v46 = 0x64657261656C63;
      }

      if (v44 == 1)
      {
        v47 = 0xE300000000000000;
      }

      else
      {
        v47 = 0xE700000000000000;
      }

      v48 = sub_100002320(v46, v47, aBlock);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = [v41 uniqueIdentifier];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_100002320(v50, v52, aBlock);

      *(v45 + 14) = v53;
      *(v45 + 22) = 2080;
      v54 = [v41 peerAddress];
      v55 = WiFiMACAddress.wifiAddress.getter();

      v56 = WiFiAddress.description.getter(v55 & 0xFFFFFFFFFFFFLL);
      v58 = sub_100002320(v56, v57, aBlock);

      *(v45 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v42, v43, "Successfully %s traffic registration for %s to %s", v45, 0x20u);
      swift_arrayDestroy();
    }

    v38 = v70;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1002D47C0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v45 = a3;
    v46 = a5;
    v47 = a4;
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = a8;
    v19[5] = a9;
    v19[6] = a10;
    v20 = qword_100594E38;
    swift_beginAccess();
    v21 = swift_allocObject();
    v22 = a8;
    v23 = v21;
    v21[2] = a6;
    v21[3] = a7;
    v44 = v22;
    v21[4] = v22;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = sub_10000EC8C;
    v21[8] = v19;
    v24 = *(v18 + v20);
    isUnique = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v18 + v20);
    v25 = v50;
    *(v18 + v20) = 0x8000000000000000;
    v48 = a2;
    v41 = sub_1003E09E8(a2);
    v27 = v25[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
    }

    else
    {
      v42 = v26;
      sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v49[0] = a6;
      v49[1] = a7;
      v49[2] = v44;
      v49[3] = a9;
      v49[4] = a10;
      v30 = _s16P2PActivityStateOMa();
      sub_1000472EC(&qword_100595238);
      type metadata accessor for _NativeDictionary();
      v31 = v50;
      if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v29))
      {
        v32 = v48;
        v35 = v41;
        *(v18 + v20) = v50;
        if (v42)
        {
LABEL_9:
          v39 = v31[7] + 48 * v35;
          v40 = sub_100010434(v45, v47, v46 & 1, v30);
          swift_endAccess();
          sub_1002D3598(v32, v40, 0);
        }

LABEL_8:
        v36 = v35;
        v37 = v23[8];
        (v23[7])(v49);
        v35 = v36;
        v50 = v32;
        v38 = v32;
        _NativeDictionary._insert(at:key:value:)();
        goto LABEL_9;
      }

      v32 = v48;
      v33 = sub_1003E09E8(v48);
      if ((v42 & 1) == (v34 & 1))
      {
        v35 = v33;
        *(v18 + v20) = v50;
        if (v42)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D4A9C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1;
  v8 = *v4;
  v9 = sub_1002CFC5C([a1 options], a3, a4);
  v11 = v10;
  v81 = v12;
  v13 = [v7 uniqueIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v20 = [v7 peerAddress];
  v21 = WiFiMACAddress.wifiAddress.getter();

  v22 = WiFiAddress.zero.unsafeMutableAddressor();
  if (static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v21 & 0xFFFFFFFFFFFFLL, *v22 | (*(v22 + 1) << 16)))
  {
    *&v87 = 0;
    v9(&v87);
    return sub_100010500();
  }

LABEL_10:
  v24 = qword_100594E38;
  swift_beginAccess();
  v25 = *(v5 + v24);
  v26 = *(v25 + 16);
  v82 = v7;
  v77 = v9;
  v80 = v5;
  v78 = a2;
  v79 = v24;
  if (!v26)
  {
    goto LABEL_18;
  }

  sub_1003E09E8(v7);
  if ((v27 & 1) == 0)
  {

    v7 = v82;
    goto LABEL_18;
  }

  v28 = *(v25 + 36);

  v29 = *(v5 + v24);
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v30 = *(v8 + 112);

  v31 = *(v8 + 96);
  v84 = *(v8 + 80);
  v85 = v31;
  v86 = v30;
  _s16P2PActivityStateOMa();
  sub_1000472EC(&qword_100595238);
  v76 = v28;
  Dictionary.subscript.getter();

  if (*(&v88 + 1) >> 62 != 1)
  {
    sub_10000BCEC(v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90);
    goto LABEL_17;
  }

  v72 = v87;
  v73 = v88;
  *&v74 = v89;
  LODWORD(v75) = v90;
  v32 = *(v5 + v79);

  Dictionary.subscript.getter();

  sub_10000BCEC(v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90);
  v33 = [v84 hasSimilarOptionsTo:v82];

  if (v33)
  {
    sub_10000BCEC(v72, *(&v72 + 1), v73, *(&v73 + 1), v74, v75);
LABEL_17:
    v7 = v82;
    v24 = v79;
LABEL_18:
    v76 = v11;
    v34 = swift_allocObject();
    v35 = *(v8 + 80);
    v34[2] = v35;
    v36 = *(v8 + 88);
    v34[3] = v36;
    v37 = *(v8 + 96);
    v34[4] = v37;
    v38 = *(v8 + 104);
    v34[5] = v38;
    v39 = *(v8 + 112);
    v34[6] = v39;
    swift_beginAccess();
    v40 = swift_allocObject();
    *&v41 = v35;
    *(&v41 + 1) = v36;
    *&v42 = v37;
    *(&v42 + 1) = v38;
    v74 = v42;
    *(v40 + 16) = v41;
    *(v40 + 32) = v42;
    v75 = v41;
    *(v40 + 48) = v39;
    *(v40 + 56) = sub_10000EC8C;
    *(v40 + 64) = v34;
    v43 = *(v5 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v5 + v24);
    v45 = v91;
    *(v5 + v24) = 0x8000000000000000;
    v46 = sub_1003E09E8(v7);
    v48 = v45[2];
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      __break(1u);
    }

    else
    {
      v51 = v46;
      v52 = v47;
      v53 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v88 = v74;
      v87 = v75;
      v89 = v39;
      _s16P2PActivityStateOMa();
      sub_1000472EC(&qword_100595238);
      *&v75 = v53;
      type metadata accessor for _NativeDictionary();
      v54 = v91;
      if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v50))
      {
        v57 = v77;
        goto LABEL_23;
      }

      v55 = sub_1003E09E8(v82);
      v57 = v77;
      if ((v52 & 1) == (v56 & 1))
      {
        v51 = v55;
LABEL_23:
        *(v80 + v79) = v91;
        if ((v52 & 1) == 0)
        {
          v58 = *(v40 + 64);
          (*(v40 + 56))(&v87);
          v91 = v82;
          v59 = v82;
          _NativeDictionary._insert(at:key:value:)();
        }

        v60 = v54[7] + 48 * v51;
        v61 = sub_10000ECAC(v78, v57, v76, v81 & 1);
        swift_endAccess();
        sub_1002D3598(v82, v61, 0);
        sub_100010500();
      }
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v76 = type metadata accessor for Dictionary();
  Dictionary.remove(at:)();
  swift_endAccess();
  sub_10000BCEC(v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90);

  v71[1] = v71;
  v83 = 0;
  v62 = v72;
  *&v87 = v72;
  __chkstk_darwin();
  v63 = v81 & 1;
  sub_10005DC58(&qword_100595328, &qword_1004AF228);
  sub_10005DC58(&qword_100595288, &qword_1004AF190);
  sub_10000CADC(&unk_100595330, &qword_100595328, &qword_1004AF228);
  sub_10000CADC(&unk_100595290, &qword_100595288, &qword_1004AF190);
  v64 = v77;
  Sequence.flatMap<A>(_:)();
  sub_10000BCEC(v62, *(&v72 + 1), v73, *(&v73 + 1), v74, v75);
  if ((v83 & 1) == 0)
  {
    sub_10005DC58(&unk_100598780, &qword_1004AF198);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_100480F40;
    v66 = v78;
    *(v65 + 32) = v78;
    *(v65 + 40) = v64;
    *(v65 + 48) = v11;
    *(v65 + 56) = v63;
    v67 = v66;
    sub_10000C060();
  }

  sub_10005DC58(&unk_1005968C0, &qword_1004AF230);
  v68 = static Array.+ infix(_:_:)();

  *&v87 = v68;
  *(&v87 + 1) = _swiftEmptyArrayStorage;
  v88 = xmmword_1004AEC90;
  v89 = 0;
  v90 = -1;
  v69 = v82;
  v91 = v82;
  swift_beginAccess();
  v70 = v69;
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_1002D3598(v70, 1u, 1);
  return sub_100010500();
}

void sub_1002D547C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *a1;
    v19 = 0;
    v20 = v3;
    __chkstk_darwin();
    v17[2] = v5;
    v17[3] = v6;
    v17[4] = v7;
    v17[5] = v8;
    v17[6] = v9;
    v18 = v10 & 1;
    v11 = v6;
    v12 = sub_10005DC58(&qword_100595340, &qword_1004AF238);
    v13 = sub_10005DC58(&unk_1005968C0, &qword_1004AF230);
    v14 = sub_1002DFAE0();
    v16 = sub_10002B84C(sub_1002DFAB4, v17, v12, v13, &type metadata for Never, v14, &protocol witness table for Never, v15);

    *a2 = v16;
  }
}

char *sub_1002D55A0@<X0>(char *a1@<X1>, char *a2@<X2>, _BYTE *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X8>)
{
  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  v14 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  v15 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && (*a3 & 1) == 0)
  {
    *a3 = 1;
    *a7 = a1;
    *(a7 + 8) = a4;
    *(a7 + 16) = a5;
    *(a7 + 24) = a6 & 1;
    v17 = a1;
    return sub_10000C060();
  }

  else
  {
    *a7 = a2;
    *(a7 + 8) = NANBitmap.Channel.operatingClass.getter;
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    return a2;
  }
}

void sub_1002D5690(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = swift_allocObject();
  v92 = a3;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = qword_100594E38;
  swift_beginAccess();
  v12 = *(v4 + v11);
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v13 = *(v9 + 112);
  swift_retain_n();
  v14 = a1;
  v96 = *(v9 + 80);
  v97 = *(v9 + 96);
  _s16P2PActivityStateOMa();
  sub_1000472EC(&qword_100595238);
  v15 = v14;
  Dictionary.subscript.getter();

  if (v101 >> 8 != 0xFFFFFFFF)
  {
    v105 = v100;
    v106 = v101;
    swift_endAccess();

    sub_10000B08C(a2, sub_1002DFA28, v10, 1);
    v94 = v25;
    swift_beginAccess();
    v26 = v14;
    sub_1002DF8EC(v98, v99, v100, v101, v102, v103);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    sub_1002D3598(v26, v94, 0);

    sub_10000BCEC(v98, v99, v100, v101, v102, v103);
    return;
  }

  v91 = v5;
  swift_endAccess();
  v16 = [v14 peerAddress];
  v17 = WiFiMACAddress.wifiAddress.getter();

  v18 = WiFiAddress.zero.unsafeMutableAddressor();
  if (!static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v17 & 0xFFFFFFFFFFFFLL, *v18 | (*(v18 + 1) << 16)))
  {

    v27 = v15;
    v28 = a2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v104 = swift_slowAlloc();
      *v31 = 138412802;
      *(v31 + 4) = v28;
      *v32 = v28;
      *(v31 + 12) = 2080;
      v33 = v28;
      v34 = [v27 uniqueIdentifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_100002320(v35, v37, &v104);

      *(v31 + 14) = v38;
      *(v31 + 22) = 2080;
      v39 = [v27 peerAddress];
      v40 = WiFiMACAddress.wifiAddress.getter();

      v41 = WiFiAddress.description.getter(v40 & 0xFFFFFFFFFFFFLL);
      v43 = sub_100002320(v41, v42, &v104);

      *(v31 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v29, v30, "%@ failed to clear traffic registration for %s to %s because invalid peer address", v31, 0x20u);
      sub_10000BB28(v32);

      swift_arrayDestroy();
    }

    sub_10000B02C();
    v44 = swift_allocError();
    *v45 = xmmword_100481800;
    *(v45 + 16) = 1;
    sub_1002CEBBC(v44, sub_1002DFA28, v10, 1);

    goto LABEL_25;
  }

  v19 = v15;
  v20 = [v15 uniqueIdentifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v46 & 1) == 0)
    {
      v77 = v19;
      v78 = a2;
      v51 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v104 = v82;
        *v80 = 138412546;
        *(v80 + 4) = v78;
        *v81 = v78;
        *(v80 + 12) = 2080;
        v83 = v78;
        v84 = [v77 uniqueIdentifier];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = sub_100002320(v85, v87, &v104);

        *(v80 + 14) = v88;
        _os_log_impl(&_mh_execute_header, v51, v79, "%@ failed to clear traffic registration for %s because the peer address was empty; return success to maintain compatibility", v80, 0x16u);
        sub_10000BB28(v81);

        sub_100002A00(v82);
      }

      goto LABEL_14;
    }
  }

  NANBitmap.Channel.operatingClass.getter(*(v91 + v11));
  __chkstk_darwin();
  v47 = v19;
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  v48 = Sequence.filter(_:)();
  *&v104 = v48;
  sub_10005DC58(&unk_100595240, &qword_1004AF178);
  sub_10000CADC(&qword_100595320, &unk_100595240, &qword_1004AF178);
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    v62 = v47;

    v63 = a2;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v95 = v65;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v104 = v68;
      *v66 = 134218498;
      v69 = v92;
      v90 = v68;
      v89 = v67;
      if (v48 >> 62)
      {
        v70 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v70 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v66 + 4) = v70;

      *(v66 + 12) = 2080;
      v71 = [v62 uniqueIdentifier];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = sub_100002320(v72, v74, &v104);

      *(v66 + 14) = v75;
      *(v66 + 22) = 2112;
      *(v66 + 24) = v63;
      *v89 = v63;
      v76 = v63;
      _os_log_impl(&_mh_execute_header, v64, v95, "Clearing all (%ld total) traffic registrations for %s because %@ cleared with empty peer address", v66, 0x20u);
      sub_10000BB28(v89);

      sub_100002A00(v90);
    }

    else
    {

      v69 = v92;
    }

    *&v104 = v48;
    sub_10000CADC(&unk_10059B180, &unk_100595240, &qword_1004AF178);
    Sequence.forEach(_:)();

    v69(0);
    goto LABEL_24;
  }

  v49 = v47;
  v50 = a2;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v104 = v55;
    *v53 = 136315394;
    v56 = [v49 uniqueIdentifier];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = sub_100002320(v57, v59, &v104);

    *(v53 + 4) = v60;
    *(v53 + 12) = 2112;
    *(v53 + 14) = v50;
    *v54 = v50;
    v61 = v50;
    _os_log_impl(&_mh_execute_header, v51, v52, "Ignoring request to clear all traffic registrations for %s from %@ because none were previously registered", v53, 0x16u);
    sub_10000BB28(v54);

    sub_100002A00(v55);
  }

LABEL_14:

  v92(0);
LABEL_24:

LABEL_25:
}

uint64_t sub_1002D6374(id *a1, void *a2)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = [a2 uniqueIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1002D6448(void **a1, void *a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = qword_100594E38;
  swift_beginAccess();
  v54 = v5;
  v55 = *(a2 + v5);
  v64 = v4;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v6 = v3[10];
  v7 = v3[11];
  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[14];
  v11 = v4;
  v52 = v9;
  v53 = v8;
  v51 = v10;
  _s16P2PActivityStateOMa();
  sub_1000472EC(&qword_100595238);
  Dictionary.subscript.getter();
  v56 = v11;

  if (v60 >> 8 != 0xFFFFFFFF)
  {
    v12 = v57;
    if (v60 >> 62 == 1)
    {
      v50 = v7;
      swift_endAccess();
      v13 = 1 << *(v57 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v57 + 64);
      sub_1002DF8EC(v57, v58, v59, v60, v61, v62);
      v16 = 0;
      v17 = (v13 + 63) >> 6;
      v18 = v54;
      while (v15)
      {
        v19 = v16;
LABEL_12:
        v20 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v21 = v12;
        v22 = *(*(v12 + 48) + ((v19 << 9) | (8 * v20)));
        v23 = *&v22[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
        v24 = v22;
        v25 = [v23 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10005DC58(&qword_1005952D0, &qword_1004AF1D8);
        if (swift_dynamicCast())
        {
          [v6 invalidatedActiveTrafficRegistration:v56];
          swift_unknownObjectRelease();
        }

        v16 = v19;
        v12 = v21;
      }

      while (1)
      {
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v19 >= v17)
        {

          sub_1002DF9AC(v12, v58, v59, v60, v61, v62);
          v7 = v50;
          v27 = v52;
          v26 = v53;
          goto LABEL_17;
        }

        v15 = *(v57 + 64 + 8 * v19);
        ++v16;
        if (v15)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    sub_1002DF9AC(v57, v58, v59, v60, v61, v62);
  }

  swift_endAccess();
  v27 = v9;
  v26 = v8;
  v18 = v54;
LABEL_17:
  v28 = swift_allocObject();
  v28[2] = v6;
  v28[3] = v7;
  v28[4] = v26;
  v28[5] = v27;
  v28[6] = v51;
  swift_beginAccess();
  v29 = swift_allocObject();
  v30 = v7;
  v31 = v29;
  v29[2] = v6;
  v29[3] = v30;
  v29[4] = v26;
  v29[5] = v27;
  v29[6] = v51;
  v29[7] = sub_10000EC8C;
  v29[8] = v28;
  v32 = *(a2 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(a2 + v18);
  v34 = v57;
  *(a2 + v18) = 0x8000000000000000;
  v35 = sub_1003E09E8(v56);
  v37 = *(v34 + 16);
  v38 = (v36 & 1) == 0;
  v39 = v37 + v38;
  if (__OFADD__(v37, v38))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v35;
  v41 = v36;
  type metadata accessor for _NativeDictionary();
  v42 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
  v43 = v57;
  if (v42)
  {
    v44 = sub_1003E09E8(v56);
    if ((v41 & 1) != (v45 & 1))
    {
LABEL_26:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v40 = v44;
  }

  *(a2 + v18) = v57;
  if ((v41 & 1) == 0)
  {
    v46 = v31[8];
    (v31[7])(&v57);
    v63 = v56;
    v47 = v56;
    _NativeDictionary._insert(at:key:value:)();
  }

  v48 = *(v43 + 56) + 48 * v40;
  LODWORD(v48) = sub_1002CF55C();
  swift_endAccess();
  sub_1002D3598(v56, v48, 0);
}

uint64_t sub_1002D6940(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v2 + v5);
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v8 = *(v4 + 80);
  v9 = *(v4 + 96);
  v10 = *(v3 + 112);
  _s16P2PActivityStateOMa();
  sub_1000472EC(&qword_100595238);
  NANBitmap.Channel.operatingClass.getter(v6);
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  Array.init<A>(_:)();
  sub_10005DC58(&unk_100595240, &qword_1004AF178);
  sub_10000CADC(&unk_10059B180, &unk_100595240, &qword_1004AF178);
  Sequence.forEach(_:)();
}

uint64_t sub_1002D6B20(void **a1, void *a2, void *a3)
{
  v4 = *a2;
  v5 = *a1;
  v6 = swift_allocObject();
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  v45 = v4[10];
  v6[2] = v45;
  v44 = v4[11];
  v6[3] = v44;
  v42 = v4[12];
  v6[4] = v42;
  v40 = v4[13];
  v6[5] = v40;
  v7 = v4[14];
  v6[6] = v7;
  _StringGuts.grow(_:)(33);

  *&v47[0] = 0xD000000000000019;
  *(&v47[0] + 1) = 0x80000001004BEC40;
  v8 = [v5 uniqueIdentifier];
  v9._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 544175136;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11 = [v5 peerAddress];
  v12 = WiFiMACAddress.wifiAddress.getter();

  v13._countAndFlagsBits = WiFiAddress.description.getter(v12 & 0xFFFFFFFFFFFFLL);
  String.append(_:)(v13);

  v14 = qword_100594E38;
  swift_beginAccess();
  v15 = swift_allocObject();
  *&v16 = v45;
  *(&v16 + 1) = v44;
  *&v17 = v42;
  *(&v17 + 1) = v40;
  v41 = v17;
  v43 = v16;
  *(v15 + 16) = v16;
  *(v15 + 32) = v17;
  *(v15 + 48) = v7;
  *(v15 + 56) = sub_10000EC8C;
  *(v15 + 64) = v6;
  v18 = *(a2 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(a2 + v14);
  v20 = v49;
  *(a2 + v14) = 0x8000000000000000;
  v46 = v5;
  v38 = sub_1003E09E8(v5);
  v22 = v20[2];
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v21;
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v47[0] = v43;
    v47[1] = v41;
    v48 = v7;
    _s16P2PActivityStateOMa();
    sub_1000472EC(&qword_100595238);
    type metadata accessor for _NativeDictionary();
    v26 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24);
    v27 = v49;
    if (!v26)
    {
      v28 = v46;
      v31 = v38;
      *(a2 + v14) = v49;
      if (v25)
      {
LABEL_8:
        v35 = v27[7] + 48 * v31;
        v36 = sub_1002CEF74(a3, 0xD000000000000019, 0x80000001004BEC40);
        swift_endAccess();

        sub_1002D3598(v28, v36, 0);
      }

LABEL_7:
      v32 = v31;
      v33 = *(v15 + 64);
      (*(v15 + 56))(v47);
      v31 = v32;
      v49 = v28;
      v34 = v28;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v28 = v46;
    v29 = sub_1003E09E8(v46);
    if ((v25 & 1) == (v30 & 1))
    {
      v31 = v29;
      *(a2 + v14) = v49;
      if (v25)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002D6F18(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v36 = a1;
  swift_beginAccess();
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v12 = *(v3 + 112);
  v13 = *(v3 + 96);
  v41 = *(v3 + 80);
  v42 = v13;
  v43 = v12;
  _s16P2PActivityStateOMa();
  sub_1000472EC(&qword_100595238);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  v14 = *(&v38 + 1);
  if (*(&v38 + 1) >> 8 != 0xFFFFFFFFLL)
  {
    v15 = v37;
    v16 = v38;
    v17 = v39;
    v18 = v40;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = v40;
    if (*(&v38 + 1) >> 62 == 1)
    {
      v34 = a1;
      v19 = 1 << *(v37 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v37 + 64);
      v22 = *(&v37 + 1);
      sub_1002DF8D8(v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40);
      v32 = v16;
      v33 = v22;
      v31 = v17;
      sub_1002DF8EC(v15, v22, v16, v14, v17, v18);
      v23 = 0;
      v24 = (v19 + 63) >> 6;
      while (v21)
      {
        v25 = v23;
LABEL_13:
        v26 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v27 = *(*(v15 + 48) + ((v25 << 9) | (8 * v26)));
        v28 = *&v27[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
        v29 = v27;
        v30 = [v28 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10005DC58(&qword_1005952D0, &qword_1004AF1D8);
        if (swift_dynamicCast())
        {
          [v35 invalidatedActiveTrafficRegistration:v34];
          swift_unknownObjectRelease();
        }

        v23 = v25;
      }

      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v24)
        {

          sub_1002DF9AC(v15, v33, v32, v14, v31, v18);
          goto LABEL_16;
        }

        v21 = *(v15 + 64 + 8 * v25);
        ++v23;
        if (v21)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_16:
    sub_1002CF55C();
    sub_10000BCEC(v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44);
  }
}

uint64_t sub_1002D72FC(uint64_t a1)
{
  v3 = a1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  result = __chkstk_darwin();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3)
  {
    v36 = v12;
    v37 = result;
    v32 = v14;
    sub_10000B02C();
    v15 = swift_allocError();
    *v16 = xmmword_100481800;
    *(v16 + 16) = 1;
    swift_beginAccess();
    v34 = v5;
    v35 = v6;
    v18 = v4[10];
    v17 = v4[11];
    v19 = v4[13];
    v31 = v4[12];
    v33 = v9;
    v20 = v4[14];
    aBlock = v18;
    v39 = v17;
    v40 = v31;
    v41 = v19;
    v42 = v20;
    v21 = _s16P2PActivityStateOMa();
    v22 = sub_10000FEC8(a1, v15, 1, v21);
    swift_endAccess();

    sub_1002D72FC(v22);
    v23 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    *(v25 + 24) = v17;
    *(v25 + 32) = v31;
    *(v25 + 40) = v19;
    *(v25 + 48) = v20;
    *(v25 + 56) = v24;
    *(v25 + 64) = a1;
    v42 = sub_1002DF818;
    v43 = v25;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_10000C8B8;
    v41 = &unk_1005741A0;
    v26 = _Block_copy(&aBlock);
    v27 = v23;

    v28 = v32;
    static DispatchQoS.unspecified.getter();
    v44 = _swiftEmptyArrayStorage;
    sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
    v29 = v33;
    v30 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v35 + 8))(v29, v30);
    (*(v36 + 8))(v28, v37);
  }

  return result;
}

uint64_t sub_1002D771C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a5;
  v50 = a7;
  v47 = a3;
  v48 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v43 = v15;
  v44 = v11;
  v45 = v10;
  v46 = a2;
  v21 = sub_10000EC3C(sub_10000DFFC);
  v41 = v16;
  v42 = v14;
  v40 = a6;
  if (a2 == 1)
  {
    if (v21)
    {
      sub_10044B904();
LABEL_7:
    }
  }

  else if (v21)
  {
    sub_10044BB18();
    goto LABEL_7;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v46;
    v25 = v46;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    if (v25 == 1)
    {
      v28 = 0x65646E6570737573;
    }

    else
    {
      v28 = 0x64656D75736572;
    }

    if (v25 == 1)
    {
      v29 = 0xE900000000000064;
    }

    else
    {
      v29 = 0xE700000000000000;
    }

    v30 = sub_100002320(v28, v29, aBlock);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Successfully %s P2P activity", v26, 0xCu);
    sub_100002A00(v27);
  }

  else
  {

    v24 = v46;
  }

  v31 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v32 = swift_allocObject();
  v33 = v48;
  *(v32 + 16) = v47;
  *(v32 + 24) = v33;
  v34 = v40;
  *(v32 + 32) = v49;
  *(v32 + 40) = v34;
  *(v32 + 48) = v50;
  *(v32 + 56) = a1;
  *(v32 + 64) = v24;
  *(v32 + 72) = 0;
  *(v32 + 80) = 0;
  aBlock[4] = sub_1002DF82C;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005741F0;
  v35 = _Block_copy(aBlock);
  v36 = v31;

  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  v37 = v42;
  v38 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  sub_10000EBB8(0, 0);

  (*(v44 + 8))(v37, v38);
  (*(v41 + 8))(v19, v43);
}

uint64_t sub_1002D7D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v8 = _s16P2PActivityStateOMa();
    v9 = sub_100010434(a2, a3, a4 & 1, v8);
    swift_endAccess();
    sub_1002D72FC(v9);
  }

  return result;
}

uint64_t sub_1002D7E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v9;
  v14 = *v9;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  swift_beginAccess();
  v16 = *(v13 + 112);

  v20 = *(v14 + 80);
  v21 = *(v14 + 96);
  v17 = _s16P2PActivityStateOMa();
  v18 = a6(a1, a5, v15, 1, v17);
  swift_endAccess();

  return sub_1002D72FC(v18);
}

uint64_t sub_1002D7FAC(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v6 = *(v3 + 80);
  v7 = *(v3 + 96);
  v8 = *(v3 + 112);
  _s16P2PActivityStateOMa();
  v4 = sub_1002CEF74(a1, 0x69736E6570737573, 0xEA00000000006E6FLL);
  swift_endAccess();
  return sub_1002D72FC(v4);
}

uint64_t sub_1002D809C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = qword_100594E48;
  swift_beginAccess();
  v4 = *(v0 + v3);
  type metadata accessor for WiFiP2PSPITransactionType(0);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  v8 = *(v1 + 112);
  _s16P2PActivityStateOMa();
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType);
  NANBitmap.Channel.operatingClass.getter(v4);
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  Array.init<A>(_:)();
  sub_10005DC58(&qword_100595258, &unk_1004AF180);
  sub_10000CADC(&unk_100595260, &qword_100595258, &unk_1004AF180);
  Sequence.forEach(_:)();
}

uint64_t sub_1002D8288(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a2;
  v5 = *a1;
  v38 = *a1;
  v6 = swift_allocObject();
  *&v39[0] = 0;
  *(&v39[0] + 1) = 0xE000000000000000;
  v37 = v4[10];
  v6[2] = v37;
  v7 = v4[11];
  v6[3] = v7;
  v8 = v4[12];
  v6[4] = v8;
  v9 = v4[13];
  v6[5] = v9;
  v10 = v4[14];
  v6[6] = v10;
  v11._countAndFlagsBits = 0x746361736E617274;
  v11._object = 0xEC000000206E6F69;
  String.append(_:)(v11);
  v41 = v5;
  type metadata accessor for WiFiP2PSPITransactionType(0);
  sub_10000B48C(&qword_1005953B8, type metadata accessor for WiFiP2PSPITransactionType);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v35 = v39[0];
  v12 = qword_100594E48;
  swift_beginAccess();
  v13 = swift_allocObject();
  *&v14 = v37;
  *(&v14 + 1) = v7;
  *&v15 = v8;
  *(&v15 + 1) = v9;
  v33 = v15;
  v34 = v14;
  *(v13 + 16) = v14;
  *(v13 + 32) = v15;
  *(v13 + 48) = v10;
  *(v13 + 56) = sub_10000EC8C;
  *(v13 + 64) = v6;
  v16 = *(a2 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a2 + v12);
  v18 = v42;
  *(a2 + v12) = 0x8000000000000000;
  v32 = sub_10000B8DC(v38);
  v20 = *(v18 + 16);
  v21 = (v19 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
  }

  else
  {
    v23 = v19;
    v39[0] = v34;
    v39[1] = v33;
    v40 = v10;
    _s16P2PActivityStateOMa();
    sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType);
    type metadata accessor for _NativeDictionary();
    v24 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
    v25 = v42;
    if (!v24)
    {
      v28 = v32;
      *(a2 + v12) = v42;
      if (v23)
      {
LABEL_8:
        v30 = *(v25 + 56) + 48 * v28;
        LODWORD(v30) = sub_1002CEF74(a3, v35, *(&v35 + 1));
        swift_endAccess();

        sub_10000C068(v38, v30);
      }

LABEL_7:
      v29 = *(v13 + 64);
      (*(v13 + 56))(v39);
      v42 = v38;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v26 = sub_10000B8DC(v38);
    if ((v23 & 1) == (v27 & 1))
    {
      v28 = v26;
      *(a2 + v12) = v42;
      if (v23)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002D860C()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v10 = *(v2 + 80);
  v11 = *(v2 + 96);
  v12 = *(v2 + 112);
  _s16P2PActivityStateOMa();
  v3 = sub_1002CF55C();
  swift_endAccess();
  sub_1002D72FC(v3);
  v4 = qword_100594E30;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  sub_1000472EC(&qword_100595238);
  NANBitmap.Channel.operatingClass.getter(v5);
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  Array.init<A>(_:)();
  sub_10005DC58(&unk_100595240, &qword_1004AF178);
  sub_10000CADC(&unk_10059B180, &unk_100595240, &qword_1004AF178);
  Sequence.forEach(_:)();

  v6 = qword_100594E38;
  swift_beginAccess();
  NANBitmap.Channel.operatingClass.getter(*(v1 + v6));

  Array.init<A>(_:)();
  Sequence.forEach(_:)();

  v7 = qword_100594E48;
  swift_beginAccess();
  v8 = *(v1 + v7);
  type metadata accessor for WiFiP2PSPITransactionType(0);
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType);
  NANBitmap.Channel.operatingClass.getter(v8);
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  Array.init<A>(_:)();
  sub_10005DC58(&qword_100595258, &unk_1004AF180);
  sub_10000CADC(&unk_100595260, &qword_100595258, &unk_1004AF180);
  Sequence.forEach(_:)();
}

uint64_t sub_1002D8A00(void **a1, void *a2)
{
  v3 = *a2;
  v36 = *a1;
  v4 = swift_allocObject();
  v5 = qword_100594E30;
  v6 = v3[10];
  v4[2] = v6;
  v7 = v3[11];
  v4[3] = v7;
  v8 = v3[12];
  v4[4] = v8;
  v9 = v3[13];
  v4[5] = v9;
  v10 = v3[14];
  v4[6] = v10;
  swift_beginAccess();
  v11 = swift_allocObject();
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v33 = v13;
  v34 = v12;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  *(v11 + 56) = sub_10000EC8C;
  *(v11 + 64) = v4;
  v14 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(a2 + v5);
  v16 = v39;
  v35 = v5;
  *(a2 + v5) = 0x8000000000000000;
  v32 = sub_1003E09E8(v36);
  v18 = v16[2];
  v19 = (v17 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = v17;
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v37[1] = v33;
  v37[0] = v34;
  v38 = v10;
  _s16P2PActivityStateOMa();
  sub_1000472EC(&qword_100595238);
  type metadata accessor for _NativeDictionary();
  v22 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20);
  v23 = v39;
  if (!v22)
  {
    v26 = v32;
    goto LABEL_6;
  }

  v24 = sub_1003E09E8(v36);
  if ((v21 & 1) != (v25 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v26 = v24;
LABEL_6:
  *(a2 + v35) = v39;
  if ((v21 & 1) == 0)
  {
    v27 = *(v11 + 64);
    (*(v11 + 56))(v37);
    v39 = v36;
    v28 = v36;
    _NativeDictionary._insert(at:key:value:)();
  }

  v29 = v23[7] + 48 * v26;
  v30 = sub_1002CF55C();
  swift_endAccess();
  sub_1002D18E4(v36, v30);
}

uint64_t sub_1002D8CE8(void **a1, void *a2)
{
  v3 = *a2;
  v36 = *a1;
  v4 = swift_allocObject();
  v5 = qword_100594E38;
  v6 = v3[10];
  v4[2] = v6;
  v7 = v3[11];
  v4[3] = v7;
  v8 = v3[12];
  v4[4] = v8;
  v9 = v3[13];
  v4[5] = v9;
  v10 = v3[14];
  v4[6] = v10;
  swift_beginAccess();
  v11 = swift_allocObject();
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v33 = v13;
  v34 = v12;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  *(v11 + 56) = sub_10000EC8C;
  *(v11 + 64) = v4;
  v14 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(a2 + v5);
  v16 = v39;
  v35 = v5;
  *(a2 + v5) = 0x8000000000000000;
  v32 = sub_1003E09E8(v36);
  v18 = v16[2];
  v19 = (v17 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = v17;
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v37[1] = v33;
  v37[0] = v34;
  v38 = v10;
  _s16P2PActivityStateOMa();
  sub_1000472EC(&qword_100595238);
  type metadata accessor for _NativeDictionary();
  v22 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20);
  v23 = v39;
  if (!v22)
  {
    v26 = v32;
    goto LABEL_6;
  }

  v24 = sub_1003E09E8(v36);
  if ((v21 & 1) != (v25 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v26 = v24;
LABEL_6:
  *(a2 + v35) = v39;
  if ((v21 & 1) == 0)
  {
    v27 = *(v11 + 64);
    (*(v11 + 56))(v37);
    v39 = v36;
    v28 = v36;
    _NativeDictionary._insert(at:key:value:)();
  }

  v29 = v23[7] + 48 * v26;
  v30 = sub_1002CF55C();
  swift_endAccess();
  sub_1002D3598(v36, v30, 0);
}

uint64_t sub_1002D8FD4(uint64_t *a1, void *a2)
{
  v3 = *a2;
  v35 = *a1;
  v4 = swift_allocObject();
  v5 = qword_100594E48;
  v6 = v3[10];
  v4[2] = v6;
  v7 = v3[11];
  v4[3] = v7;
  v8 = v3[12];
  v4[4] = v8;
  v9 = v3[13];
  v4[5] = v9;
  v10 = v3[14];
  v4[6] = v10;
  swift_beginAccess();
  v11 = swift_allocObject();
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v32 = v13;
  v33 = v12;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  *(v11 + 56) = sub_10000EC8C;
  *(v11 + 64) = v4;
  v14 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a2 + v5);
  v16 = v38;
  v34 = v5;
  *(a2 + v5) = 0x8000000000000000;
  v31 = sub_10000B8DC(v35);
  v18 = *(v16 + 16);
  v19 = (v17 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = v17;
  type metadata accessor for WiFiP2PSPITransactionType(255);
  v36[1] = v32;
  v36[0] = v33;
  v37 = v10;
  _s16P2PActivityStateOMa();
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType);
  type metadata accessor for _NativeDictionary();
  v22 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20);
  v23 = v38;
  if (!v22)
  {
    v26 = v31;
    goto LABEL_6;
  }

  v24 = sub_10000B8DC(v35);
  if ((v21 & 1) != (v25 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v26 = v24;
LABEL_6:
  *(a2 + v34) = v38;
  if ((v21 & 1) == 0)
  {
    v27 = *(v11 + 64);
    (*(v11 + 56))(v36);
    v38 = v35;
    _NativeDictionary._insert(at:key:value:)();
  }

  v28 = *(v23 + 56) + 48 * v26;
  v29 = sub_1002CF55C();
  swift_endAccess();
  sub_10000C068(v35, v29);
}

uint64_t sub_1002D92C0()
{
  v1 = qword_10059B858;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10059B860);

  swift_weakDestroy();
  sub_1002E000C(v0 + qword_10059B870);
  v4 = *(v0 + qword_10059B878);

  v5 = *(v0 + qword_10059B888);

  v6 = *(v0 + qword_100594E30);

  v7 = *(v0 + qword_100594E38);

  sub_10000BCEC(*(v0 + qword_100594E40), *(v0 + qword_100594E40 + 8), *(v0 + qword_100594E40 + 16), *(v0 + qword_100594E40 + 24), *(v0 + qword_100594E40 + 32), *(v0 + qword_100594E40 + 40));
  v8 = *(v0 + qword_100594E48);

  return v0;
}

uint64_t sub_1002D93C0()
{
  sub_1002D92C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1002D94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6))(uint64_t a1)
{
  swift_unownedRetainStrong();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a3;
  v12[7] = a4;
  v13 = a6;

  sub_10001F89C(a3);
  return sub_1002DFEB8;
}

uint64_t sub_1002D9574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  v14 = *(v32 + 64);
  __chkstk_darwin();
  v28 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v30 = *(v16 - 8);
  v31 = v16;
  v17 = *(v30 + 64);
  __chkstk_darwin();
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = a6;
  v21[8] = a7;
  aBlock[4] = sub_1002DFEC8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100574790;
  v22 = _Block_copy(aBlock);
  v23 = v20;
  swift_errorRetain();

  v24 = a5;
  sub_10001F89C(a6);
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  v26 = v28;
  v25 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v32 + 8))(v26, v25);
  (*(v30 + 8))(v19, v31);
}

uint64_t sub_1002D98A0(uint64_t a1, void (*a2)(unint64_t), uint64_t a3, void *a4, void *a5, void (*a6)(void))
{
  if (a1)
  {
    v6 = 0;
    v7 = 0;
    if (!a6)
    {
LABEL_4:
      sub_100010520(v6);
      return sub_100010520(v7);
    }

LABEL_3:
    a6();
    goto LABEL_4;
  }

  v11 = *a4;
  v35 = a6;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v13 = qword_10059B878;
  swift_beginAccess();
  v14 = swift_allocObject();
  v14[2] = v11[10];
  v14[3] = v11[11];
  v14[4] = v11[12];
  v14[5] = v11[13];
  v14[6] = v11[14];
  v14[7] = sub_1002DFEDC;
  v14[8] = v12;
  v15 = v13;

  v16 = a5;
  v17 = *(a4 + v15);
  isUnique = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a4 + v15);
  v36 = v18;
  *(a4 + v15) = 0x8000000000000000;
  v33 = v16;
  v30 = sub_10000B448(v16);
  v20 = *(v18 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v24 = v19;
    capacity = v23;
    type metadata accessor for XPCSession(255);
    _s22P2PActivityCoordinatorC25AirPlayActivityTranslatorVMa();
    sub_10000B48C(&unk_1005953A0, type metadata accessor for XPCSession);
    type metadata accessor for _NativeDictionary();
    if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, capacity))
    {
      v27 = v30;
      *(a4 + v15) = v18;
      if (v24)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v25 = sub_10000B448(v33);
    if ((v24 & 1) == (v26 & 1))
    {
      v27 = v25;
      *(a4 + v15) = v18;
      if (v24)
      {
LABEL_12:
        a2(*(v36 + 56) + 32 * v27);
        swift_endAccess();
        v7 = sub_1002DFF28;
        v6 = sub_1002DFEDC;
        a6 = v35;
        if (!v35)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }

LABEL_11:
      v28 = v14[8];
      (v14[7])();
      v29 = v33;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_12;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002D9BCC(void *a1, char a2, void (*a3)(void), NSObject *a4, void *a5)
{
  v6 = v5;
  v157 = a3;
  v158 = a4;
  v10 = type metadata accessor for Logger();
  v155 = *(v10 - 8);
  v156 = v10;
  v11 = *(v155 + 64);
  __chkstk_darwin();
  v13 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v145 - v14;
  __chkstk_darwin();
  v154 = &v145 - v16;
  sub_100018AB4(0, &unk_100599030, WiFiMACAddress_ptr);
  v17 = [a1 peerAddress];
  v18 = [objc_opt_self() zeroAddress];
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    v34 = [a1 peerAddress];
    v35 = WiFiMACAddress.wifiAddress.getter();

    v36 = *(v6 + 24);
    v37 = *(v36 + 16);
    if (a2)
    {
      if (v37)
      {
        v38 = *(v6 + 24);
        v39 = sub_100041DE8(v35 & 0xFFFFFFFFFFFFLL);
        if (v40)
        {
          v41 = *(*(v36 + 56) + 8 * v39);
          if ([a1 options] == v41)
          {
            v43 = *v6;
            v42 = *(v6 + 8);
            swift_unownedRetainStrong();
            v44 = v155;
            v45 = v156;
            (*(v155 + 16))(v15, v43 + qword_10059B858, v156);

            v46 = a1;
            swift_unownedRetain();
            v47 = v42;

            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.default.getter();
            swift_unownedRelease();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v159 = swift_slowAlloc();
              *v50 = 138412802;
              *(v50 + 4) = v47;
              *v51 = v47;
              *(v50 + 12) = 2080;
              v52 = v47;
              v53 = [v46 uniqueIdentifier];
              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              LODWORD(v154) = v49;
              v56 = v55;

              v57 = sub_100002320(v54, v56, &v159);

              *(v50 + 14) = v57;
              *(v50 + 22) = 2080;
              v58 = WiFiAddress.description.getter(v35 & 0xFFFFFFFFFFFFLL);
              v60 = sub_100002320(v58, v59, &v159);

              *(v50 + 24) = v60;
              _os_log_impl(&_mh_execute_header, v48, v154, "%@ setting traffic registration for %s to %s but already exists, returning success", v50, 0x20u);
              sub_10000BB28(v51);

              swift_arrayDestroy();

              (*(v44 + 8))(v15, v156);
            }

            else
            {

              (*(v44 + 8))(v15, v45);
            }

            goto LABEL_24;
          }
        }
      }

      v154 = HIDWORD(v35);
      v155 = v35 >> 40;
      v75 = *v6;
      swift_unownedRetainStrong();
      v76 = *(v6 + 8);
      LODWORD(v156) = *(v6 + 16);
      v77 = swift_allocObject();
      v78 = a5[2];
      v79 = a5[3];
      *(v77 + 16) = v78;
      *(v77 + 24) = v79;
      v80 = a5[4];
      v81 = a5[5];
      *(v77 + 32) = v80;
      *(v77 + 40) = v81;
      v82 = a5[6];
      *(v77 + 48) = v82;
      *(v77 + 56) = v35;
      *(v77 + 58) = BYTE2(v35);
      *(v77 + 59) = BYTE3(v35);
      v83 = v155;
      *(v77 + 60) = v154;
      *(v77 + 61) = v83;
      *(v77 + 64) = a1;
      v142 = v81;
      v143 = v82;
      v140 = v79;
      v141 = v80;
      v139 = v78;
      v84 = sub_1002D94CC(sub_1002DFDA4, v77, v157, v158, v75, v76);
      v86 = v85;
      v87 = a1;

      sub_1002D4A9C(v87, v76, v84, v86);
    }

    else
    {
      if (!v37 || (v61 = *(v6 + 24), sub_100041DE8(v35 & 0xFFFFFFFFFFFFLL), (v62 & 1) == 0))
      {
        v154 = v35;
        v89 = *v6;
        v88 = *(v6 + 8);
        swift_unownedRetainStrong();
        v91 = v155;
        v90 = v156;
        (*(v155 + 16))(v13, v89 + qword_10059B858, v156);

        v92 = a1;
        swift_unownedRetain();
        v93 = v88;

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        swift_unownedRelease();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          *v96 = 138412802;
          *(v96 + 4) = v93;
          *v97 = v93;
          *(v96 + 12) = 2080;
          v98 = v93;
          v99 = [v92 uniqueIdentifier];
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;

          v103 = sub_100002320(v100, v102, &v159);

          *(v96 + 14) = v103;
          *(v96 + 22) = 2080;
          v104 = WiFiAddress.description.getter(v154 & 0xFFFFFFFFFFFFLL);
          v106 = sub_100002320(v104, v105, &v159);

          *(v96 + 24) = v106;
          _os_log_impl(&_mh_execute_header, v94, v95, "%@ clearing traffic registration for %s to %s but does not exist, returning success", v96, 0x20u);
          sub_10000BB28(v97);

          swift_arrayDestroy();

          (*(v155 + 8))(v13, v156);
        }

        else
        {

          (*(v91 + 8))(v13, v90);
        }

        goto LABEL_24;
      }

      v154 = HIDWORD(v35);
      v155 = v35 >> 40;
      v63 = *v6;
      swift_unownedRetainStrong();
      v64 = *(v6 + 8);
      LODWORD(v156) = *(v6 + 16);
      v65 = swift_allocObject();
      v66 = a5[2];
      v67 = a5[3];
      *(v65 + 16) = v66;
      *(v65 + 24) = v67;
      v68 = a5[4];
      v69 = a5[5];
      *(v65 + 32) = v68;
      *(v65 + 40) = v69;
      v70 = a5[6];
      *(v65 + 48) = v70;
      *(v65 + 56) = v35;
      *(v65 + 58) = BYTE2(v35);
      *(v65 + 59) = BYTE3(v35);
      v71 = v155;
      *(v65 + 60) = v154;
      *(v65 + 61) = v71;
      v142 = v69;
      v143 = v70;
      v140 = v67;
      v141 = v68;
      v139 = v66;
      v72 = sub_1002D94CC(sub_1002E01F8, v65, v157, v158, v63, v64);
      v74 = v73;

      sub_1002D5690(a1, v64, v72, v74);
    }

    goto LABEL_16;
  }

  v20 = [a1 options];
  if (*(v6 + 16) == (v20 & 1))
  {
LABEL_24:
    v157(0);
    return;
  }

  v21 = *v6;
  v22 = *(v6 + 8);
  v23 = *(v6 + 24);
  if (v20)
  {
    v24 = swift_allocObject();
    v25 = a5[2];
    v26 = a5[3];
    *(v24 + 16) = v25;
    *(v24 + 24) = v26;
    v27 = a5[4];
    v28 = a5[5];
    *(v24 + 32) = v27;
    *(v24 + 40) = v28;
    v29 = a5[6];
    *(v24 + 48) = v29;
    *(v24 + 56) = 1;
    v142 = v28;
    v143 = v29;
    v140 = v26;
    v141 = v27;
    v139 = v25;
    v30 = sub_1002D94CC(sub_1002DFE5C, v24, v157, v158, v21, v22);
    v32 = v31;

    swift_unownedRetainStrong();
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    *(v33 + 24) = v32;

    sub_10000DC44(17, v22, sub_1002DFE68, v33);

LABEL_16:

    return;
  }

  v107 = swift_allocObject();
  v109 = a5[2];
  v108 = a5[3];
  *(v107 + 16) = v109;
  *(v107 + 24) = v108;
  v110 = a5[4];
  v111 = a5[5];
  *(v107 + 32) = v110;
  *(v107 + 40) = v111;
  v112 = a5[6];
  *(v107 + 48) = v112;
  *(v107 + 56) = 0;
  *(v107 + 64) = a1;
  v150 = v112;
  v143 = v112;
  v151 = v111;
  v142 = v111;
  v152 = v110;
  v141 = v110;
  v153 = v108;
  v139 = v109;
  v140 = v108;
  v113 = sub_1002D94CC(sub_1002DFE20, v107, v157, v158, v21, v22);
  v115 = v114;
  v116 = a1;

  swift_unownedRetainStrong();
  v117 = swift_allocObject();
  *(v117 + 16) = v113;
  *(v117 + 24) = v115;

  sub_10000B598(17, v22, sub_1002E01FC, v117);

  if (a2)
  {
    goto LABEL_16;
  }

  v149 = v115;
  v157 = v109;
  swift_unownedRetainStrong();
  v118 = v154;
  v119 = v155;
  v120 = v156;
  (*(v155 + 16))(v154, v21 + qword_10059B858, v156);
  swift_bridgeObjectRetain_n();
  swift_unownedRetain();
  v121 = v22;

  swift_unownedRetain();
  v122 = v121;

  swift_unownedRetain();
  v123 = v122;
  v124 = v116;

  swift_unownedRetain();
  v125 = v123;
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();
  swift_unownedRelease();

  v158 = v126;
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v147 = v127;
    v129 = v128;
    v130 = swift_slowAlloc();
    v146 = v130;
    v148 = swift_slowAlloc();
    v159 = v148;
    *v129 = 138412802;
    *(v129 + 4) = v125;
    *v130 = v125;
    *(v129 + 12) = 2080;
    v131 = v125;
    v132 = [v124 uniqueIdentifier];
    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v135 = v134;

    v136 = sub_100002320(v133, v135, &v159);

    *(v129 + 14) = v136;
    *(v129 + 22) = 2048;
    v137 = *(v23 + 16);
    swift_unownedRelease();

    *(v129 + 24) = v137;
    swift_unownedRelease();

    v138 = v158;
    _os_log_impl(&_mh_execute_header, v158, v147, "%@ cleared %s with empty peer address, will clear all (%ld) registrations", v129, 0x20u);
    sub_10000BB28(v146);

    sub_100002A00(v148);

    (*(v119 + 8))(v154, v156);
  }

  else
  {
    swift_unownedRelease();

    swift_unownedRelease();

    (*(v119 + 8))(v118, v120);
  }

  __chkstk_darwin();
  v139 = v157;
  v140 = v153;
  v141 = v152;
  v142 = v151;
  v143 = v150;
  v144 = v6;
  sub_1004482A8(sub_1002DFE38, (&v145 - 8), v23);
  swift_unownedRelease();

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1002DA98C(uint64_t a1, char a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  v4 = [*(*(a1 + 8) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&qword_1005952D0, &qword_1004AF1D8);
  result = swift_dynamicCast();
  if (result)
  {
    [v6 invalidatedActiveTrafficRegistration:a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002DAA4C(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_opt_self() convertError:a1];
  a2();
}

uint64_t sub_1002DAAC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = *(a1 + 1);
  v12 = AWDLTrafficRegistrationServiceAirPlay;
  v30 = a1[1];
  v31 = *a1;
  v29 = a1[2];
  v13 = WiFiAddress.apiAddress.getter(v31 | (v30 << 8) | (v29 << 16) | (v8 << 24) | (v9 << 32) | (v10 << 40));
  v14 = [objc_allocWithZone(AWDLTrafficRegistrationConfiguration) initWithUniqueIdentifier:v12 peerAddress:v13];

  v15 = *(a2 + 8);
  v16 = *&v15[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  v17 = v15;
  v18 = [v16 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_10005DC58(&qword_1005952D0, &qword_1004AF1D8);
  if (swift_dynamicCast())
  {
    [v37 invalidatedActiveTrafficRegistration:v14];
    swift_unknownObjectRelease();
  }

  [v14 setOptions:v11];
  v19 = *a2;
  swift_unownedRetainStrong();
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  v22 = *(a2 + 24);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  *(v23 + 48) = a7;
  *(v23 + 56) = v31;
  *(v23 + 57) = v30;
  *(v23 + 58) = v29;
  *(v23 + 59) = v8;
  *(v23 + 60) = v9;
  *(v23 + 61) = v10;
  v24 = sub_1002D94CC(sub_1002DFE84, v23, 0, 0, v19, v20);
  v26 = v25;
  v27 = v20;
  swift_unownedRetain();

  swift_unownedRelease();

  sub_1002D5690(v14, v27, v24, v26);
}

unint64_t sub_1002DAD60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  result = sub_100041DE8(a2 & 0xFFFFFFFFFFFFLL);
  if (v5)
  {
    v6 = result;
    v7 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a1 + 24);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046B8B8();
    }

    result = sub_10046840C(v6, v9);
    *(a1 + 24) = v9;
  }

  return result;
}

uint64_t sub_1002DADD8()
{
  v1 = *(v0 + qword_100594ED0);

  v2 = *(v0 + qword_100594ED8);
}

id sub_1002DAE18()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v11 = *&v0[qword_100594ED0];
    v12 = *&v0[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];

    v13 = v0;
    v14 = v12;
    sub_1002D809C();

    v15.receiver = v13;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DAFBC(uint64_t a1)
{
  v2 = *(a1 + qword_100594ED0);

  v3 = *(a1 + qword_100594ED8);
}

id sub_1002DB040()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v13 = qword_100594FC0;
    v14 = *&v1[qword_100594FC0];
    v15 = OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session;
    v16 = *&v1[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];

    v17 = v1;
    v18 = v16;
    sub_1002D6940(v18, &qword_100594E38);

    v19 = *&v1[v13];
    v20 = *&v1[v15];

    v21 = v20;
    sub_1002D7FAC(v21);

    v22 = *&v1[v13];
    v23 = *&v1[v15];

    v24 = v23;
    sub_1002D6940(v24, &qword_100594E30);

    v25 = *&v1[v13];
    v26 = *&v1[v15];
    v34 = v26;
    swift_beginAccess();
    type metadata accessor for XPCSession(255);
    v27 = *(v3 + 136);

    v28 = v26;
    v29 = *(v3 + 120);
    v31 = *(v3 + 104);
    v32 = v29;
    v33 = v27;
    _s22P2PActivityCoordinatorC25AirPlayActivityTranslatorVMa();
    sub_10000B48C(&unk_1005953A0, type metadata accessor for XPCSession);
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    sub_1002DFF64(v31, *(&v31 + 1));

    v30.receiver = v17;
    v30.super_class = ObjectType;
    return objc_msgSendSuper2(&v30, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002DB3A0(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v8) = a2;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v16 = *v15;
  *v14 = *v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v18)
  {
    v19 = [a1 peerAddress];
    v20 = WiFiMACAddress.wifiAddress.getter();

    v21 = WiFiAddress.zero.unsafeMutableAddressor();
    v22 = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v20 & 0xFFFFFFFFFFFFLL, *v21 | (*(v21 + 1) << 16));
    v23 = v5;
    v24 = a1;
    v25 = Logger.logObject.getter();
    if (v22)
    {
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v64 = a3;
        v29 = v28;
        v30 = swift_slowAlloc();
        v65 = a4;
        v67 = v30;
        *v27 = 138412802;
        v31 = *&v23[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
        *(v27 + 4) = v31;
        *v29 = v31;
        *(v27 + 12) = 2080;
        if (v8)
        {
          v32 = 0x6E69767265736572;
        }

        else
        {
          v32 = 0x7672657365726E75;
        }

        v66 = v8;
        if (v8)
        {
          v33 = 0xE900000000000067;
        }

        else
        {
          v33 = 0xEB00000000676E69;
        }

        v34 = v31;
        v35 = sub_100002320(v32, v33, &v67);

        *(v27 + 14) = v35;
        *(v27 + 22) = 2080;
        v36 = [v24 uniqueIdentifier];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = v8;
        LOBYTE(v8) = v66;
        v40 = sub_100002320(v39, v38, &v67);

        *(v27 + 24) = v40;
        _os_log_impl(&_mh_execute_header, v25, v26, "%@ %s traffic registrations for %s", v27, 0x20u);
        sub_10000BB28(v29);
        a3 = v64;

        swift_arrayDestroy();
        a4 = v65;
      }

      v41 = *&v23[qword_100594FC0];
      v42 = *&v23[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
      if (v8)
      {
        sub_1002D2B90(v24, v42, a3, a4);
      }

      else
      {
        sub_1002D2ED0(v24, v42, a3, a4);
      }
    }

    else
    {
      v43 = v8;
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v45 = 138413058;
        v48 = *&v23[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
        v67 = v47;
        *(v45 + 4) = v48;
        *v46 = v48;
        *(v45 + 12) = 2080;
        v49 = (v43 & 1) == 0;
        if (v43)
        {
          v50 = 0x65767265736572;
        }

        else
        {
          v50 = 0x7672657365726E75;
        }

        if (v49)
        {
          v51 = 0xE900000000000065;
        }

        else
        {
          v51 = 0xE700000000000000;
        }

        v52 = v48;
        v53 = sub_100002320(v50, v51, &v67);

        *(v45 + 14) = v53;
        *(v45 + 22) = 2080;
        v54 = [v24 uniqueIdentifier];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_100002320(v55, v57, &v67);

        *(v45 + 24) = v58;
        *(v45 + 32) = 2080;
        v59 = [v24 peerAddress];
        v60 = WiFiMACAddress.wifiAddress.getter();

        v61 = WiFiAddress.description.getter(v60 & 0xFFFFFFFFFFFFLL);
        v63 = sub_100002320(v61, v62, &v67);

        *(v45 + 34) = v63;
        _os_log_impl(&_mh_execute_header, v25, v44, "%@ incorrectly trying to %s traffic registrations for %s to a specific peer: %s", v45, 0x2Au);
        sub_10000BB28(v46);

        swift_arrayDestroy();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002DB974(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1002DB9D8(void *a1, int a2, void (*a3)(void), NSObject *a4)
{
  v88 = a2;
  v8 = (swift_isaMask & *v4);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = (&v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v85 = v8;
  v87 = a3;
  v17 = a1;
  v18 = v4;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v86 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v89 = v84;
    *v22 = 138413058;
    v24 = *(v18 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session);
    *(v22 + 4) = v24;
    *v23 = v24;
    *(v22 + 12) = 2080;
    if (v88)
    {
      v25 = 0x676E697472617473;
    }

    else
    {
      v25 = 0x676E6970706F7473;
    }

    v26 = v24;
    v27 = sub_100002320(v25, 0xE800000000000000, &v89);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2080;
    v28 = [v17 uniqueIdentifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v17;
    v32 = v31;

    v33 = sub_100002320(v29, v32, &v89);
    v17 = v30;

    *(v22 + 24) = v33;
    *(v22 + 32) = 2080;
    v34 = [v30 peerAddress];
    v35 = WiFiMACAddress.wifiAddress.getter();

    v36 = WiFiAddress.description.getter(v35 & 0xFFFFFFFFFFFFLL);
    v38 = sub_100002320(v36, v37, &v89);

    *(v22 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v19, v20, "%@ %s traffic registration for %s to %s", v22, 0x2Au);
    sub_10000BB28(v23);

    swift_arrayDestroy();

    a4 = v86;
  }

  v39 = [v17 uniqueIdentifier];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (([v17 legacyUpgradeRequired] & 1) == 0)
  {
LABEL_16:
    v72 = *(v18 + qword_100594FC0);
    v73 = *(v18 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session);
    if (v88)
    {
      sub_1002D4A9C(v17, v73, v87, a4);
    }

    else
    {
      sub_1002D5690(v17, v73, v87, a4);
    }

    return;
  }

  v86 = a4;
  v45 = *(v18 + qword_100594FC0);
  v46 = *(v18 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session);
  v83 = v17;
  v84 = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v18;
  v48 = qword_10059B878;
  swift_beginAccess();
  v49 = swift_allocObject();
  v50 = v85;
  v51 = v85[13];
  v49[2] = v51;
  v52 = v50[14];
  v49[3] = v52;
  v53 = v50[15];
  v49[4] = v53;
  v54 = v50[16];
  v49[5] = v54;
  v55 = v50[17];
  v49[6] = v55;
  v49[7] = sub_1002DFD9C;
  v85 = v47;
  v49[8] = v47;
  v56 = v18;
  v57 = *(v45 + v48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = *(v45 + v48);
  v58 = v92;
  v82 = v45;
  *(v45 + v48) = 0x8000000000000000;
  v80 = sub_10000B448(v84);
  v60 = v58[2];
  v61 = (v59 & 1) == 0;
  v62 = v60 + v61;
  if (__OFADD__(v60, v61))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v63 = v59;
  type metadata accessor for XPCSession(255);
  *&v64 = v51;
  *(&v64 + 1) = v52;
  *&v65 = v53;
  *(&v65 + 1) = v54;
  v90 = v65;
  v89 = v64;
  v91 = v55;
  v66 = _s22P2PActivityCoordinatorC25AirPlayActivityTranslatorVMa();
  sub_10000B48C(&unk_1005953A0, type metadata accessor for XPCSession);
  type metadata accessor for _NativeDictionary();
  v67 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v62);
  v68 = v92;
  if (!v67)
  {
    v71 = v80;
    goto LABEL_20;
  }

  v69 = sub_10000B448(v84);
  if ((v63 & 1) != (v70 & 1))
  {
LABEL_26:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v71 = v69;
LABEL_20:
  *(v82 + v48) = v68;
  if ((v63 & 1) == 0)
  {
    v74 = v49[8];
    *&v89 = (v49[7])();
    *(&v89 + 1) = v75;
    LOBYTE(v90) = v76 & 1;
    *(&v90 + 1) = v77;
    v92 = v84;
    v78 = v84;
    _NativeDictionary._insert(at:key:value:)();
  }

  v79 = v68[7] + 32 * v71;
  sub_1002D9BCC(v83, v88 & 1, v87, v86, v66);
  swift_endAccess();
}

uint64_t sub_1002DC0D0(uint64_t a1)
{
  v1 = *(a1 + qword_100594FC0);
  v2 = *(a1 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session);
  swift_unownedRetain();
  v3 = v2;
  return v1;
}

uint64_t sub_1002DC168(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a1;
  a8(v15, a4, a7, v14);
}

uint64_t sub_1002DC220(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v13 = *v12;
  *v11 = *v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v15)
  {
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = a2;
      v22 = v21;
      v23 = swift_slowAlloc();
      v37 = a3;
      v38 = v23;
      v24 = v23;
      *v20 = 138412546;
      v25 = *&v17[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
      *(v20 + 4) = v25;
      *v22 = v25;
      *(v20 + 12) = 2080;
      v26 = (a1 & 1) == 0;
      v27 = a1;
      if (a1)
      {
        v28 = 0x69646E6570737573;
      }

      else
      {
        v28 = 0x676E696D75736572;
      }

      if (v26)
      {
        v29 = 0xE800000000000000;
      }

      else
      {
        v29 = 0xEA0000000000676ELL;
      }

      v30 = v25;
      v31 = sub_100002320(v28, v29, &v38);

      *(v20 + 14) = v31;
      a1 = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "%@ %s AWDL", v20, 0x16u);
      sub_10000BB28(v22);
      a2 = v36;

      sub_100002A00(v24);
      a3 = v37;
    }

    v32 = *&v17[qword_100594FC0];
    if (a1)
    {
      v33 = &unk_100574480;
      v34 = sub_10000ECAC;
    }

    else
    {
      v33 = &unk_1005744A8;
      v34 = sub_10000B08C;
    }

    return sub_1002D7E7C(*&v17[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session], a2, a3, v33, sub_1002E01F4, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DC544(void *a1, int a2, char a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a1;
  sub_1002DC220(a3, sub_1002DFD94, v7);
}

uint64_t sub_1002DC5D8(void (*a1)(uint64_t, void))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v9)
  {
    v12 = *(v1 + qword_100594FC0);
    v13 = sub_1002CF94C();
    sub_1002CE718(v13);
    v15 = v14;

    v16 = sub_100474CEC(v15);

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = sub_100367684(*(v16 + 16), 0);
      v19 = sub_100315B74(&v27, v18 + 4, v17, v16);
      sub_1000E290C();
      if (v19 == v17)
      {
LABEL_6:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = &_swiftEmptyDictionarySingleton;
        sub_1003E1E24(v18, 0xD000000000000023, 0x80000001004BEBB0, isUniquelyReferenced_nonNull_native);
        v21 = v27;
        v22 = *(v12 + qword_10059B860);

        v24 = sub_1002CE998(v23);

        v25 = swift_isUniquelyReferenced_nonNull_native();
        v27 = v21;
        sub_1003E1E24(v24, 0xD000000000000023, 0x80000001004BEBE0, v25);
        v26 = sub_10031D544(v27);

        a1(v26, 0);
      }

      __break(1u);
    }

    v18 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DC860(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v4;
  v5 = a1;
  sub_1002DC5D8(sub_1002DFD48);
}

void sub_1002DC94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

char *sub_1002DC9F8(char *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v29 - v9;
  v11 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
  v12 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = 0x80000001004BEB90;
  if (NSXPCConnection.has(entitlement:)(v13) && (v14 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PUIAgentXPCDelegate], objc_msgSend(*&a1[v11], "setRemoteObjectInterface:", v14), v14, v15 = objc_msgSend(*&a1[v11], "remoteObjectProxy"), _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_10005DC58(&qword_100595398, &qword_1004AF268), (swift_dynamicCast() & 1) != 0))
  {
    *(v2 + qword_1005950A8) = v29[1];
    swift_unknownObjectRetain();
    v16 = a1;
    Logger.init(subsystem:category:)();
    v17 = &OBJC_PROTOCOL___NSObject;
    v18 = sub_100303CDC(v16, v10, v17);

    (*(v5 + 16))(v8, &v18[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_logger], v4);
    v19 = v16;
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v19;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v21, v22, "%@ is now the current UI agent", v23, 0xCu);
      sub_10000BB28(v24);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v26 = *((swift_isaMask & *v2) + 0x30);
    v27 = *((swift_isaMask & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v20;
}

id sub_1002DCDDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_logger, v3);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *&v8[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
    *(v11 + 4) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ is no longer the UI agent", v11, 0xCu);
    sub_10000BB28(v12);
  }

  (*(v4 + 8))(v7, v3);
  v16.receiver = v8;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_1002DD014()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002DD050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 25);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1002DD09C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = -a2 << 8;
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002DD108(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) | (a2 << 62);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 3);
    *(result + 24) = xmmword_1004AECC0;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t sub_1002DD13C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002DD178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1002DD1C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002DD218(uint64_t a1, char *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *(a1 + 16);
  v19 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
  v20 = a2;
  v5 = a2;
  v6 = v5;
  v18 = v4;
  if (v4)
  {
    v17 = v5;
    sub_100018AB4(0, &qword_100599470, NSObject_ptr);
    v7 = 0;
    v8 = (a1 + 56);
    while (1)
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      v13 = *&v9[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
      v14 = *&v20[v19];
      v15 = v9;
      sub_10000C060();
      LOBYTE(v13) = static NSObject.== infix(_:_:)();

      sub_100010500();
      if (v13)
      {
        break;
      }

      ++v7;
      v8 += 32;
      if (v18 == v7)
      {
        v7 = 0;
        v6 = v17;
        goto LABEL_8;
      }
    }

    v6 = v17;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

unint64_t sub_1002DD3A0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 6 * result;
  *v4 = a2;
  *(v4 + 2) = BYTE2(a2);
  *(v4 + 3) = BYTE3(a2);
  *(v4 + 4) = BYTE4(a2);
  *(v4 + 5) = BYTE5(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t sub_1002DD414(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 6 * result;
  *v6 = a2;
  *(v6 + 2) = BYTE2(a2);
  *(v6 + 3) = BYTE3(a2);
  *(v6 + 4) = BYTE4(a2);
  *(v6 + 5) = BYTE5(a2);
  v7 = (a6[7] + 24 * result);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1002DD4C0(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 80 * result);
  v7 = a4[4];
  v6[3] = a4[3];
  v6[4] = v7;
  v8 = a4[2];
  v6[1] = a4[1];
  v6[2] = v8;
  *v6 = *a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_1002DD524(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1002DD568(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1002DD680(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1002E0034(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
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

uint64_t sub_1002DD780(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6] - a1 + 8 * a1;
  *v10 = a2;
  *(v10 + 2) = BYTE2(a2);
  *(v10 + 3) = BYTE3(a2);
  *(v10 + 4) = BYTE4(a2);
  *(v10 + 5) = BYTE5(a2);
  *(v10 + 6) = BYTE6(a2);
  v11 = a4[7];
  v12 = a5(0);
  result = sub_1002E0034(a3, v11 + *(*(v12 - 8) + 72) * a1, a6);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1002DD860(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100029954(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1002DD924(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 6 * a1;
  *v7 = a2;
  *(v7 + 2) = BYTE2(a2);
  *(v7 + 3) = BYTE3(a2);
  *(v7 + 4) = BYTE4(a2);
  *(v7 + 5) = BYTE5(a2);
  v8 = a4[7];
  v9 = sub_10005DC58(&qword_100597400, &unk_1004B4D20);
  result = sub_1002DF868(a3, v8 + *(*(v9 - 8) + 72) * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1002DD9F4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
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

uint64_t sub_1002DDA3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for BrowseEndpoints(0);
  result = sub_1002E0034(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for BrowseEndpoints);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1002DDAE4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1002DDB9C(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3 & 1;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1002DDC3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_1002E0034(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_1002DDD88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6] + 6 * a1;
  *v10 = a2;
  *(v10 + 2) = BYTE2(a2);
  *(v10 + 3) = BYTE3(a2);
  *(v10 + 4) = BYTE4(a2);
  *(v10 + 5) = BYTE5(a2);
  v11 = a4[7];
  v12 = a5(0);
  result = sub_1002E0034(a3, v11 + *(*(v12 - 8) + 72) * a1, a6);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1002DDE60(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(v6 + 17) = HIBYTE(a4);
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_1002DDEBC(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v5 = *a1;
  v6 = a2;
  result = sub_1002DD218(v5, v6);
  if (v2)
  {
  }

  if (v8)
  {
    v9 = *(v5 + 16);

    return v9;
  }

  v48 = a1;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = (v5 + 16);
    v11 = *(v5 + 16);
    v55 = result;
    if (v10 == v11)
    {
LABEL_7:

      return v55;
    }

    v53 = v6;
    v54 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
    v13 = 32 * result + 88;
    while (v10 < v11)
    {
      v58 = v10;
      v56 = v5;
      v57 = v13;
      v16 = (v5 + v13);
      v18 = *(v5 + v13 - 24);
      v17 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      sub_100018AB4(0, &qword_100599470, NSObject_ptr);
      v21 = *&v18[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
      v22 = *&v6[v54];
      v23 = v18;
      sub_10000C060();
      v24 = static NSObject.== infix(_:_:)();

      result = sub_100010500();
      if (v24)
      {
        v6 = v53;
        v5 = v56;
        v14 = v57;
        v15 = v58;
      }

      else
      {
        v25 = v55;
        v15 = v58;
        if (v58 == v55)
        {
          v6 = v53;
          v5 = v56;
          v14 = v57;
        }

        else
        {
          v26 = v56;
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          if (v55 >= *v12)
          {
            goto LABEL_25;
          }

          if (v58 >= *v12)
          {
            goto LABEL_26;
          }

          v52 = 4 * v55;
          v27 = &v56[4 * v55 + 4];
          v28 = *(v27 + 8);
          v29 = *(v27 + 16);
          v30 = *(v27 + 24);
          v32 = *(v16 - 3);
          v31 = *(v16 - 2);
          v33 = *(v16 - 1);
          v34 = *(v56 + v57);
          v49 = *v27;
          v50 = v30;
          sub_10000C060();
          v35 = v32;
          sub_10000C060();
          v51 = v29;
          v36 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_10046EC34(v56);
          }

          v37 = &v26[v52];
          v38 = v26[v52 + 4];
          v39 = v26[v52 + 5];
          v40 = v26[v52 + 6];
          v41 = v26;
          v42 = LOBYTE(v26[v52 + 7]);
          v37[4] = v35;
          v37[5] = v31;
          v37[6] = v33;
          *(v37 + 56) = v34;

          v5 = v41;
          result = sub_100010500();
          v15 = v58;
          if (v58 >= v41[2])
          {
            goto LABEL_27;
          }

          v14 = v57;
          v43 = v41 + v57;
          v44 = *(v41 + v57 - 24);
          v45 = *(v41 + v57 - 16);
          v46 = *(v41 + v57 - 8);
          v47 = *(v41 + v57);
          *(v43 - 3) = v49;
          *(v43 - 2) = v36;
          *(v43 - 1) = v51;
          *v43 = v50;

          result = sub_100010500();
          *v48 = v41;
          v25 = v55;
          v6 = v53;
        }

        v55 = v25 + 1;
      }

      v10 = v15 + 1;
      v12 = (v5 + 16);
      v11 = *(v5 + 16);
      v13 = v14 + 32;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002DE25C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_1005952D8, &unk_1004AF1E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    while (1)
    {
      v18 = v1;
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = v4[3];
      v9 = v4[4];
      v10 = v4[5];
      v11 = *(v4 + 1);

      result = sub_100041DE8(v5 | (v6 << 8) | (v7 << 16) | (v8 << 24) | (v9 << 32) | (v10 << 40));
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 6 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v14[4] = v9;
      v14[5] = v10;
      *(v3[7] + 8 * result) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 16;
      v1 = v18 - 1;
      if (v18 == 1)
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

unint64_t sub_1002DE3B4(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_1005952C0, qword_1004AF1C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10005DC58(&qword_1005952C8, &unk_1004B4D40);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v10, v6, &qword_1005952C0, qword_1004AF1C0);
      result = sub_10002A440(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002DE59C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_100595390, &qword_1004AF260);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10000B8DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1002DE67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_1005952A0, &qword_1004AF1A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10000B448(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_1002DE7CC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10005DC58(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_100085268(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 7);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_100085268(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}